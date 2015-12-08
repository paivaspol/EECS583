; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/globals.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, {}*, i64, i16, i16, i8, i8 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
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
%struct.exitlistentry = type { void (i8*)*, i8* }
%struct.PerlIO_list_s = type opaque
%struct.re_scream_pos_data_s = type opaque
%struct._sublex_info = type { i32, i32, %struct.op*, i8*, i8* }
%struct.xpv = type { i8*, i64, i64 }
%struct.xrv = type { %struct.sv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpvlv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i64, i64, %struct.sv*, i8 }
%struct.xpvbm = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, i16, i8 }
%union.YYSTYPE = type { i8* }
%struct.perl_debug_pad = type { [3 x %struct.sv] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.curcur = type { i32, i32, i32, i32, i32, %struct.regnode*, %struct.regnode*, i8*, %struct.curcur* }
%struct.re_cc_state = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PL_utf8skip = constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\07\0D", align 16
@PL_warn_uninit = constant [31 x i8] c"Use of uninitialized value%s%s\00", align 16
@PL_warn_nosemi = constant [30 x i8] c"Semicolon seems to be missing\00", align 16
@PL_warn_reserved = constant [57 x i8] c"Unquoted string \22%s\22 may clash with future reserved word\00", align 16
@PL_warn_nl = constant [47 x i8] c"Unsuccessful %s on filename containing newline\00", align 16
@PL_no_wrongref = constant [27 x i8] c"Can't use %s ref as %s ref\00", align 16
@PL_no_symref = constant [64 x i8] c"Can't use string (\22%.32s\22) as %s ref while \22strict refs\22 in use\00", align 16
@PL_no_usym = constant [45 x i8] c"Can't use an undefined value as %s reference\00", align 16
@PL_no_aelem = constant [66 x i8] c"Modification of non-creatable array value attempted, subscript %d\00", align 16
@PL_no_helem = constant [67 x i8] c"Modification of non-creatable hash value attempted, subscript \22%s\22\00", align 16
@PL_no_modify = constant [44 x i8] c"Modification of a read-only value attempted\00", align 16
@PL_no_mem = constant [16 x i8] c"Out of memory!\0A\00", align 16
@PL_no_security = constant [28 x i8] c"Insecure dependency in %s%s\00", align 16
@PL_no_sock_func = constant [40 x i8] c"Unsupported socket function \22%s\22 called\00", align 16
@PL_no_dir_func = constant [43 x i8] c"Unsupported directory function \22%s\22 called\00", align 16
@PL_no_func = constant [33 x i8] c"The %s function is unimplemented\00", align 16
@PL_no_myglob = constant [39 x i8] c"\22my\22 variable %s can't be in a package\00", align 16
@PL_no_localize_ref = constant [35 x i8] c"Can't localize through a reference\00", align 16
@PL_uuemap = constant [65 x i8] c"`!\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\5C]^_\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"HUP\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"ILL\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"ABRT\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"FPE\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"USR1\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"SEGV\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"USR2\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"ALRM\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@PL_sig_name = global [17 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* null], align 16
@PL_sig_num = global [17 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0], align 16
@PL_fold = constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5C]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@PL_fold_locale = global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5C]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@PL_freq = constant [256 x i8] c"\01\02T\97\9A\9B\9C\9D\A5\F6\FA\03\9E\07\12\1D(3>IU`kv\81\8C\93\94\95\96\98\99\FF\B6\E0\CD\AE\B0\B4\D9\E9\E8\EC\BB\EB\E4\EA\E2\DE\DB\D3\C3\BC\C1\B9\B8\BF\B7\C9\E5\B5\DC\C2\A2\A3\D0\BA\CA\C8\DA\C6\B3\B2\D6\A6\AA\CF\C7\D1\CE\CC\A0\D4\D8\D7\C0\AF\AD\F3\AC\A1\BE\CB\BD\A4\E6\A7\F8\E3\F4\F2\FF\F1\E7\F0\FD\A9\D2\F5\ED\F9\F7\EF\A8\FC\FB\FE\EE\DF\DD\D5\E1\B1\C5\AB\C4\9F\04\05\06\08\09\0A\0B\0C\0D\0E\0F\10\11\13\14\15\16\17\18\19\1A\1B\1C\1E\1F !\22#$%&')*+,-./012456789:;<=?@ABCDEFGHJKLMNOPQRSVWXYZ[\5C]^_abcdefghijlmnopqrstuwxyz{|}~\7F\80\82\83\84\85\86\87\88\89\8A\8B\8D\8E\8F\90\91\92", align 16
@.str16 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"stub\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"pushmark\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"wantarray\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"gvsv\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"gv\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"gelem\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"padsv\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"padav\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"padhv\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"padany\00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c"pushre\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"rv2gv\00", align 1
@.str31 = private unnamed_addr constant [6 x i8] c"rv2sv\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"av2arylen\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"rv2cv\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"anoncode\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c"refgen\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"srefgen\00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"backtick\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"rcatline\00", align 1
@.str44 = private unnamed_addr constant [10 x i8] c"regcmaybe\00", align 1
@.str45 = private unnamed_addr constant [10 x i8] c"regcreset\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"regcomp\00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"subst\00", align 1
@.str50 = private unnamed_addr constant [10 x i8] c"substcont\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"sassign\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"aassign\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"chop\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"schop\00", align 1
@.str56 = private unnamed_addr constant [6 x i8] c"chomp\00", align 1
@.str57 = private unnamed_addr constant [7 x i8] c"schomp\00", align 1
@.str58 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"study\00", align 1
@.str61 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"preinc\00", align 1
@.str63 = private unnamed_addr constant [9 x i8] c"i_preinc\00", align 1
@.str64 = private unnamed_addr constant [7 x i8] c"predec\00", align 1
@.str65 = private unnamed_addr constant [9 x i8] c"i_predec\00", align 1
@.str66 = private unnamed_addr constant [8 x i8] c"postinc\00", align 1
@.str67 = private unnamed_addr constant [10 x i8] c"i_postinc\00", align 1
@.str68 = private unnamed_addr constant [8 x i8] c"postdec\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c"i_postdec\00", align 1
@.str70 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str71 = private unnamed_addr constant [9 x i8] c"multiply\00", align 1
@.str72 = private unnamed_addr constant [11 x i8] c"i_multiply\00", align 1
@.str73 = private unnamed_addr constant [7 x i8] c"divide\00", align 1
@.str74 = private unnamed_addr constant [9 x i8] c"i_divide\00", align 1
@.str75 = private unnamed_addr constant [7 x i8] c"modulo\00", align 1
@.str76 = private unnamed_addr constant [9 x i8] c"i_modulo\00", align 1
@.str77 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str78 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c"i_add\00", align 1
@.str80 = private unnamed_addr constant [9 x i8] c"subtract\00", align 1
@.str81 = private unnamed_addr constant [11 x i8] c"i_subtract\00", align 1
@.str82 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str83 = private unnamed_addr constant [10 x i8] c"stringify\00", align 1
@.str84 = private unnamed_addr constant [11 x i8] c"left_shift\00", align 1
@.str85 = private unnamed_addr constant [12 x i8] c"right_shift\00", align 1
@.str86 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str87 = private unnamed_addr constant [5 x i8] c"i_lt\00", align 1
@.str88 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str89 = private unnamed_addr constant [5 x i8] c"i_gt\00", align 1
@.str90 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str91 = private unnamed_addr constant [5 x i8] c"i_le\00", align 1
@.str92 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str93 = private unnamed_addr constant [5 x i8] c"i_ge\00", align 1
@.str94 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str95 = private unnamed_addr constant [5 x i8] c"i_eq\00", align 1
@.str96 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str97 = private unnamed_addr constant [5 x i8] c"i_ne\00", align 1
@.str98 = private unnamed_addr constant [5 x i8] c"ncmp\00", align 1
@.str99 = private unnamed_addr constant [7 x i8] c"i_ncmp\00", align 1
@.str100 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str101 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@.str102 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@.str103 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@.str104 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str105 = private unnamed_addr constant [4 x i8] c"sne\00", align 1
@.str106 = private unnamed_addr constant [5 x i8] c"scmp\00", align 1
@.str107 = private unnamed_addr constant [8 x i8] c"bit_and\00", align 1
@.str108 = private unnamed_addr constant [8 x i8] c"bit_xor\00", align 1
@.str109 = private unnamed_addr constant [7 x i8] c"bit_or\00", align 1
@.str110 = private unnamed_addr constant [7 x i8] c"negate\00", align 1
@.str111 = private unnamed_addr constant [9 x i8] c"i_negate\00", align 1
@.str112 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str113 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str114 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str115 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str116 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str117 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str118 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@.str119 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str120 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str121 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str122 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str123 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str124 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str125 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str126 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str127 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str128 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str129 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str130 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@.str131 = private unnamed_addr constant [8 x i8] c"sprintf\00", align 1
@.str132 = private unnamed_addr constant [9 x i8] c"formline\00", align 1
@.str133 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str134 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@.str135 = private unnamed_addr constant [6 x i8] c"crypt\00", align 1
@.str136 = private unnamed_addr constant [8 x i8] c"ucfirst\00", align 1
@.str137 = private unnamed_addr constant [8 x i8] c"lcfirst\00", align 1
@.str138 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@.str139 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str140 = private unnamed_addr constant [10 x i8] c"quotemeta\00", align 1
@.str141 = private unnamed_addr constant [6 x i8] c"rv2av\00", align 1
@.str142 = private unnamed_addr constant [10 x i8] c"aelemfast\00", align 1
@.str143 = private unnamed_addr constant [6 x i8] c"aelem\00", align 1
@.str144 = private unnamed_addr constant [7 x i8] c"aslice\00", align 1
@.str145 = private unnamed_addr constant [5 x i8] c"each\00", align 1
@.str146 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str147 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str148 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str149 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str150 = private unnamed_addr constant [6 x i8] c"rv2hv\00", align 1
@.str151 = private unnamed_addr constant [6 x i8] c"helem\00", align 1
@.str152 = private unnamed_addr constant [7 x i8] c"hslice\00", align 1
@.str153 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str154 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str155 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str156 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str157 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str158 = private unnamed_addr constant [7 x i8] c"lslice\00", align 1
@.str159 = private unnamed_addr constant [9 x i8] c"anonlist\00", align 1
@.str160 = private unnamed_addr constant [9 x i8] c"anonhash\00", align 1
@.str161 = private unnamed_addr constant [7 x i8] c"splice\00", align 1
@.str162 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str163 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str164 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str165 = private unnamed_addr constant [8 x i8] c"unshift\00", align 1
@.str166 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str167 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str168 = private unnamed_addr constant [10 x i8] c"grepstart\00", align 1
@.str169 = private unnamed_addr constant [10 x i8] c"grepwhile\00", align 1
@.str170 = private unnamed_addr constant [9 x i8] c"mapstart\00", align 1
@.str171 = private unnamed_addr constant [9 x i8] c"mapwhile\00", align 1
@.str172 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str173 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@.str174 = private unnamed_addr constant [5 x i8] c"flop\00", align 1
@.str175 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str176 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str177 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str178 = private unnamed_addr constant [10 x i8] c"cond_expr\00", align 1
@.str179 = private unnamed_addr constant [10 x i8] c"andassign\00", align 1
@.str180 = private unnamed_addr constant [9 x i8] c"orassign\00", align 1
@.str181 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str182 = private unnamed_addr constant [9 x i8] c"entersub\00", align 1
@.str183 = private unnamed_addr constant [9 x i8] c"leavesub\00", align 1
@.str184 = private unnamed_addr constant [11 x i8] c"leavesublv\00", align 1
@.str185 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str186 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str187 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@.str188 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str189 = private unnamed_addr constant [8 x i8] c"lineseq\00", align 1
@.str190 = private unnamed_addr constant [10 x i8] c"nextstate\00", align 1
@.str191 = private unnamed_addr constant [8 x i8] c"dbstate\00", align 1
@.str192 = private unnamed_addr constant [8 x i8] c"unstack\00", align 1
@.str193 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str194 = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@.str195 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str196 = private unnamed_addr constant [10 x i8] c"enteriter\00", align 1
@.str197 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str198 = private unnamed_addr constant [10 x i8] c"enterloop\00", align 1
@.str199 = private unnamed_addr constant [10 x i8] c"leaveloop\00", align 1
@.str200 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str201 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str202 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str203 = private unnamed_addr constant [5 x i8] c"redo\00", align 1
@.str204 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str205 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str206 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str207 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str208 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str209 = private unnamed_addr constant [8 x i8] c"pipe_op\00", align 1
@.str210 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str211 = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@.str212 = private unnamed_addr constant [8 x i8] c"binmode\00", align 1
@.str213 = private unnamed_addr constant [4 x i8] c"tie\00", align 1
@.str214 = private unnamed_addr constant [6 x i8] c"untie\00", align 1
@.str215 = private unnamed_addr constant [5 x i8] c"tied\00", align 1
@.str216 = private unnamed_addr constant [8 x i8] c"dbmopen\00", align 1
@.str217 = private unnamed_addr constant [9 x i8] c"dbmclose\00", align 1
@.str218 = private unnamed_addr constant [8 x i8] c"sselect\00", align 1
@.str219 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str220 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str221 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str222 = private unnamed_addr constant [11 x i8] c"enterwrite\00", align 1
@.str223 = private unnamed_addr constant [11 x i8] c"leavewrite\00", align 1
@.str224 = private unnamed_addr constant [5 x i8] c"prtf\00", align 1
@.str225 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str226 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@.str227 = private unnamed_addr constant [8 x i8] c"sysseek\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"sysread\00", align 1
@.str229 = private unnamed_addr constant [9 x i8] c"syswrite\00", align 1
@.str230 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str231 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str232 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str233 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str234 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str235 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str236 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str237 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str238 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@.str239 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str240 = private unnamed_addr constant [9 x i8] c"sockpair\00", align 1
@.str241 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str242 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str243 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str244 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str245 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str246 = private unnamed_addr constant [9 x i8] c"gsockopt\00", align 1
@.str247 = private unnamed_addr constant [9 x i8] c"ssockopt\00", align 1
@.str248 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str249 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@.str250 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str251 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str252 = private unnamed_addr constant [8 x i8] c"ftrread\00", align 1
@.str253 = private unnamed_addr constant [9 x i8] c"ftrwrite\00", align 1
@.str254 = private unnamed_addr constant [8 x i8] c"ftrexec\00", align 1
@.str255 = private unnamed_addr constant [8 x i8] c"fteread\00", align 1
@.str256 = private unnamed_addr constant [9 x i8] c"ftewrite\00", align 1
@.str257 = private unnamed_addr constant [8 x i8] c"fteexec\00", align 1
@.str258 = private unnamed_addr constant [5 x i8] c"ftis\00", align 1
@.str259 = private unnamed_addr constant [9 x i8] c"fteowned\00", align 1
@.str260 = private unnamed_addr constant [9 x i8] c"ftrowned\00", align 1
@.str261 = private unnamed_addr constant [7 x i8] c"ftzero\00", align 1
@.str262 = private unnamed_addr constant [7 x i8] c"ftsize\00", align 1
@.str263 = private unnamed_addr constant [8 x i8] c"ftmtime\00", align 1
@.str264 = private unnamed_addr constant [8 x i8] c"ftatime\00", align 1
@.str265 = private unnamed_addr constant [8 x i8] c"ftctime\00", align 1
@.str266 = private unnamed_addr constant [7 x i8] c"ftsock\00", align 1
@.str267 = private unnamed_addr constant [6 x i8] c"ftchr\00", align 1
@.str268 = private unnamed_addr constant [6 x i8] c"ftblk\00", align 1
@.str269 = private unnamed_addr constant [7 x i8] c"ftfile\00", align 1
@.str270 = private unnamed_addr constant [6 x i8] c"ftdir\00", align 1
@.str271 = private unnamed_addr constant [7 x i8] c"ftpipe\00", align 1
@.str272 = private unnamed_addr constant [7 x i8] c"ftlink\00", align 1
@.str273 = private unnamed_addr constant [7 x i8] c"ftsuid\00", align 1
@.str274 = private unnamed_addr constant [7 x i8] c"ftsgid\00", align 1
@.str275 = private unnamed_addr constant [7 x i8] c"ftsvtx\00", align 1
@.str276 = private unnamed_addr constant [6 x i8] c"fttty\00", align 1
@.str277 = private unnamed_addr constant [7 x i8] c"fttext\00", align 1
@.str278 = private unnamed_addr constant [9 x i8] c"ftbinary\00", align 1
@.str279 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str280 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str281 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str282 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str283 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str284 = private unnamed_addr constant [6 x i8] c"utime\00", align 1
@.str285 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str286 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str287 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str288 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str289 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str290 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str291 = private unnamed_addr constant [9 x i8] c"open_dir\00", align 1
@.str292 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str293 = private unnamed_addr constant [8 x i8] c"telldir\00", align 1
@.str294 = private unnamed_addr constant [8 x i8] c"seekdir\00", align 1
@.str295 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str296 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str297 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str298 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str299 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str300 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str301 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str302 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str303 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str304 = private unnamed_addr constant [8 x i8] c"getpgrp\00", align 1
@.str305 = private unnamed_addr constant [8 x i8] c"setpgrp\00", align 1
@.str306 = private unnamed_addr constant [12 x i8] c"getpriority\00", align 1
@.str307 = private unnamed_addr constant [12 x i8] c"setpriority\00", align 1
@.str308 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str309 = private unnamed_addr constant [4 x i8] c"tms\00", align 1
@.str310 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str311 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@.str312 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str313 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str314 = private unnamed_addr constant [7 x i8] c"shmget\00", align 1
@.str315 = private unnamed_addr constant [7 x i8] c"shmctl\00", align 1
@.str316 = private unnamed_addr constant [8 x i8] c"shmread\00", align 1
@.str317 = private unnamed_addr constant [9 x i8] c"shmwrite\00", align 1
@.str318 = private unnamed_addr constant [7 x i8] c"msgget\00", align 1
@.str319 = private unnamed_addr constant [7 x i8] c"msgctl\00", align 1
@.str320 = private unnamed_addr constant [7 x i8] c"msgsnd\00", align 1
@.str321 = private unnamed_addr constant [7 x i8] c"msgrcv\00", align 1
@.str322 = private unnamed_addr constant [7 x i8] c"semget\00", align 1
@.str323 = private unnamed_addr constant [7 x i8] c"semctl\00", align 1
@.str324 = private unnamed_addr constant [6 x i8] c"semop\00", align 1
@.str325 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str326 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str327 = private unnamed_addr constant [10 x i8] c"entereval\00", align 1
@.str328 = private unnamed_addr constant [10 x i8] c"leaveeval\00", align 1
@.str329 = private unnamed_addr constant [9 x i8] c"entertry\00", align 1
@.str330 = private unnamed_addr constant [9 x i8] c"leavetry\00", align 1
@.str331 = private unnamed_addr constant [9 x i8] c"ghbyname\00", align 1
@.str332 = private unnamed_addr constant [9 x i8] c"ghbyaddr\00", align 1
@.str333 = private unnamed_addr constant [9 x i8] c"ghostent\00", align 1
@.str334 = private unnamed_addr constant [9 x i8] c"gnbyname\00", align 1
@.str335 = private unnamed_addr constant [9 x i8] c"gnbyaddr\00", align 1
@.str336 = private unnamed_addr constant [8 x i8] c"gnetent\00", align 1
@.str337 = private unnamed_addr constant [9 x i8] c"gpbyname\00", align 1
@.str338 = private unnamed_addr constant [11 x i8] c"gpbynumber\00", align 1
@.str339 = private unnamed_addr constant [10 x i8] c"gprotoent\00", align 1
@.str340 = private unnamed_addr constant [9 x i8] c"gsbyname\00", align 1
@.str341 = private unnamed_addr constant [9 x i8] c"gsbyport\00", align 1
@.str342 = private unnamed_addr constant [9 x i8] c"gservent\00", align 1
@.str343 = private unnamed_addr constant [9 x i8] c"shostent\00", align 1
@.str344 = private unnamed_addr constant [8 x i8] c"snetent\00", align 1
@.str345 = private unnamed_addr constant [10 x i8] c"sprotoent\00", align 1
@.str346 = private unnamed_addr constant [9 x i8] c"sservent\00", align 1
@.str347 = private unnamed_addr constant [9 x i8] c"ehostent\00", align 1
@.str348 = private unnamed_addr constant [8 x i8] c"enetent\00", align 1
@.str349 = private unnamed_addr constant [10 x i8] c"eprotoent\00", align 1
@.str350 = private unnamed_addr constant [9 x i8] c"eservent\00", align 1
@.str351 = private unnamed_addr constant [7 x i8] c"gpwnam\00", align 1
@.str352 = private unnamed_addr constant [7 x i8] c"gpwuid\00", align 1
@.str353 = private unnamed_addr constant [7 x i8] c"gpwent\00", align 1
@.str354 = private unnamed_addr constant [7 x i8] c"spwent\00", align 1
@.str355 = private unnamed_addr constant [7 x i8] c"epwent\00", align 1
@.str356 = private unnamed_addr constant [7 x i8] c"ggrnam\00", align 1
@.str357 = private unnamed_addr constant [7 x i8] c"ggrgid\00", align 1
@.str358 = private unnamed_addr constant [7 x i8] c"ggrent\00", align 1
@.str359 = private unnamed_addr constant [7 x i8] c"sgrent\00", align 1
@.str360 = private unnamed_addr constant [7 x i8] c"egrent\00", align 1
@.str361 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str362 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str363 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str364 = private unnamed_addr constant [9 x i8] c"threadsv\00", align 1
@.str365 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@.str366 = private unnamed_addr constant [13 x i8] c"method_named\00", align 1
@.str367 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@PL_op_name = global [352 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str103, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str110, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str119, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str121, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str123, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str124, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str134, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str142, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str144, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str149, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str150, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str151, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str152, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str153, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str156, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str157, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str158, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str159, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str161, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str162, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str165, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str166, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str167, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str168, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str169, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str170, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str171, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str172, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str173, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str174, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str175, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str176, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str178, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str179, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str180, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str182, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str183, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str184, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str185, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str186, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str188, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str189, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str191, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str194, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str195, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str196, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str197, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str198, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str199, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str200, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str201, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str202, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str203, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str204, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str205, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str206, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str207, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str208, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str209, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str211, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str214, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str215, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str216, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str217, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str218, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str219, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str220, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str221, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str222, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str223, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str225, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str226, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str227, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str228, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str229, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str230, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str231, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str232, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str233, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str234, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str236, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str237, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str238, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str240, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str241, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str242, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str243, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str244, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str245, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str246, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str247, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str248, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str250, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str251, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str252, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str253, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str255, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str256, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str257, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str258, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str259, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str260, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str261, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str262, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str264, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str265, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str266, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str267, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str268, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str269, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str270, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str271, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str272, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str273, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str274, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str275, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str276, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str277, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str278, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str279, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str280, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str281, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str282, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str283, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str284, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str285, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str286, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str287, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str288, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str289, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str290, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str291, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str292, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str293, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str294, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str295, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str296, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str297, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str298, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str299, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str300, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str301, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str302, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str303, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str304, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str305, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str306, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str307, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str308, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str309, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str310, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str311, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str312, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str313, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str314, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str315, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str316, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str317, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str318, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str319, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str320, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str321, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str322, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str323, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str324, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str325, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str326, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str327, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str328, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str329, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str330, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str331, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str332, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str333, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str334, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str335, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str336, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str337, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str338, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str339, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str340, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str341, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str342, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str343, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str344, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str345, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str346, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str347, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str348, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str349, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str350, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str351, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str352, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str353, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str354, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str355, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str356, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str357, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str358, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str359, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str360, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str361, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str362, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str363, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str364, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str365, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str366, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str367, i32 0, i32 0)], align 16
@.str368 = private unnamed_addr constant [15 x i8] c"null operation\00", align 1
@.str369 = private unnamed_addr constant [14 x i8] c"constant item\00", align 1
@.str370 = private unnamed_addr constant [16 x i8] c"scalar variable\00", align 1
@.str371 = private unnamed_addr constant [11 x i8] c"glob value\00", align 1
@.str372 = private unnamed_addr constant [10 x i8] c"glob elem\00", align 1
@.str373 = private unnamed_addr constant [17 x i8] c"private variable\00", align 1
@.str374 = private unnamed_addr constant [14 x i8] c"private array\00", align 1
@.str375 = private unnamed_addr constant [13 x i8] c"private hash\00", align 1
@.str376 = private unnamed_addr constant [14 x i8] c"private value\00", align 1
@.str377 = private unnamed_addr constant [12 x i8] c"push regexp\00", align 1
@.str378 = private unnamed_addr constant [17 x i8] c"ref-to-glob cast\00", align 1
@.str379 = private unnamed_addr constant [19 x i8] c"scalar dereference\00", align 1
@.str380 = private unnamed_addr constant [13 x i8] c"array length\00", align 1
@.str381 = private unnamed_addr constant [23 x i8] c"subroutine dereference\00", align 1
@.str382 = private unnamed_addr constant [21 x i8] c"anonymous subroutine\00", align 1
@.str383 = private unnamed_addr constant [21 x i8] c"subroutine prototype\00", align 1
@.str384 = private unnamed_addr constant [22 x i8] c"reference constructor\00", align 1
@.str385 = private unnamed_addr constant [23 x i8] c"single ref constructor\00", align 1
@.str386 = private unnamed_addr constant [24 x i8] c"reference-type operator\00", align 1
@.str387 = private unnamed_addr constant [26 x i8] c"quoted execution (``, qx)\00", align 1
@.str388 = private unnamed_addr constant [9 x i8] c"<HANDLE>\00", align 1
@.str389 = private unnamed_addr constant [20 x i8] c"append I/O operator\00", align 1
@.str390 = private unnamed_addr constant [22 x i8] c"regexp internal guard\00", align 1
@.str391 = private unnamed_addr constant [22 x i8] c"regexp internal reset\00", align 1
@.str392 = private unnamed_addr constant [19 x i8] c"regexp compilation\00", align 1
@.str393 = private unnamed_addr constant [20 x i8] c"pattern match (m//)\00", align 1
@.str394 = private unnamed_addr constant [21 x i8] c"pattern quote (qr//)\00", align 1
@.str395 = private unnamed_addr constant [20 x i8] c"substitution (s///)\00", align 1
@.str396 = private unnamed_addr constant [22 x i8] c"substitution iterator\00", align 1
@.str397 = private unnamed_addr constant [24 x i8] c"transliteration (tr///)\00", align 1
@.str398 = private unnamed_addr constant [18 x i8] c"scalar assignment\00", align 1
@.str399 = private unnamed_addr constant [16 x i8] c"list assignment\00", align 1
@.str400 = private unnamed_addr constant [12 x i8] c"scalar chop\00", align 1
@.str401 = private unnamed_addr constant [13 x i8] c"scalar chomp\00", align 1
@.str402 = private unnamed_addr constant [17 x i8] c"defined operator\00", align 1
@.str403 = private unnamed_addr constant [15 x i8] c"undef operator\00", align 1
@.str404 = private unnamed_addr constant [15 x i8] c"match position\00", align 1
@.str405 = private unnamed_addr constant [18 x i8] c"preincrement (++)\00", align 1
@.str406 = private unnamed_addr constant [26 x i8] c"integer preincrement (++)\00", align 1
@.str407 = private unnamed_addr constant [18 x i8] c"predecrement (--)\00", align 1
@.str408 = private unnamed_addr constant [26 x i8] c"integer predecrement (--)\00", align 1
@.str409 = private unnamed_addr constant [19 x i8] c"postincrement (++)\00", align 1
@.str410 = private unnamed_addr constant [27 x i8] c"integer postincrement (++)\00", align 1
@.str411 = private unnamed_addr constant [19 x i8] c"postdecrement (--)\00", align 1
@.str412 = private unnamed_addr constant [27 x i8] c"integer postdecrement (--)\00", align 1
@.str413 = private unnamed_addr constant [20 x i8] c"exponentiation (**)\00", align 1
@.str414 = private unnamed_addr constant [19 x i8] c"multiplication (*)\00", align 1
@.str415 = private unnamed_addr constant [27 x i8] c"integer multiplication (*)\00", align 1
@.str416 = private unnamed_addr constant [13 x i8] c"division (/)\00", align 1
@.str417 = private unnamed_addr constant [21 x i8] c"integer division (/)\00", align 1
@.str418 = private unnamed_addr constant [12 x i8] c"modulus (%)\00", align 1
@.str419 = private unnamed_addr constant [20 x i8] c"integer modulus (%)\00", align 1
@.str420 = private unnamed_addr constant [11 x i8] c"repeat (x)\00", align 1
@.str421 = private unnamed_addr constant [13 x i8] c"addition (+)\00", align 1
@.str422 = private unnamed_addr constant [21 x i8] c"integer addition (+)\00", align 1
@.str423 = private unnamed_addr constant [16 x i8] c"subtraction (-)\00", align 1
@.str424 = private unnamed_addr constant [24 x i8] c"integer subtraction (-)\00", align 1
@.str425 = private unnamed_addr constant [28 x i8] c"concatenation (.) or string\00", align 1
@.str426 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str427 = private unnamed_addr constant [19 x i8] c"left bitshift (<<)\00", align 1
@.str428 = private unnamed_addr constant [20 x i8] c"right bitshift (>>)\00", align 1
@.str429 = private unnamed_addr constant [15 x i8] c"numeric lt (<)\00", align 1
@.str430 = private unnamed_addr constant [15 x i8] c"integer lt (<)\00", align 1
@.str431 = private unnamed_addr constant [15 x i8] c"numeric gt (>)\00", align 1
@.str432 = private unnamed_addr constant [15 x i8] c"integer gt (>)\00", align 1
@.str433 = private unnamed_addr constant [16 x i8] c"numeric le (<=)\00", align 1
@.str434 = private unnamed_addr constant [16 x i8] c"integer le (<=)\00", align 1
@.str435 = private unnamed_addr constant [16 x i8] c"numeric ge (>=)\00", align 1
@.str436 = private unnamed_addr constant [16 x i8] c"integer ge (>=)\00", align 1
@.str437 = private unnamed_addr constant [16 x i8] c"numeric eq (==)\00", align 1
@.str438 = private unnamed_addr constant [16 x i8] c"integer eq (==)\00", align 1
@.str439 = private unnamed_addr constant [16 x i8] c"numeric ne (!=)\00", align 1
@.str440 = private unnamed_addr constant [16 x i8] c"integer ne (!=)\00", align 1
@.str441 = private unnamed_addr constant [25 x i8] c"numeric comparison (<=>)\00", align 1
@.str442 = private unnamed_addr constant [25 x i8] c"integer comparison (<=>)\00", align 1
@.str443 = private unnamed_addr constant [10 x i8] c"string lt\00", align 1
@.str444 = private unnamed_addr constant [10 x i8] c"string gt\00", align 1
@.str445 = private unnamed_addr constant [10 x i8] c"string le\00", align 1
@.str446 = private unnamed_addr constant [10 x i8] c"string ge\00", align 1
@.str447 = private unnamed_addr constant [10 x i8] c"string eq\00", align 1
@.str448 = private unnamed_addr constant [10 x i8] c"string ne\00", align 1
@.str449 = private unnamed_addr constant [24 x i8] c"string comparison (cmp)\00", align 1
@.str450 = private unnamed_addr constant [16 x i8] c"bitwise and (&)\00", align 1
@.str451 = private unnamed_addr constant [16 x i8] c"bitwise xor (^)\00", align 1
@.str452 = private unnamed_addr constant [15 x i8] c"bitwise or (|)\00", align 1
@.str453 = private unnamed_addr constant [13 x i8] c"negation (-)\00", align 1
@.str454 = private unnamed_addr constant [21 x i8] c"integer negation (-)\00", align 1
@.str455 = private unnamed_addr constant [19 x i8] c"1's complement (~)\00", align 1
@.str456 = private unnamed_addr constant [18 x i8] c"array dereference\00", align 1
@.str457 = private unnamed_addr constant [23 x i8] c"constant array element\00", align 1
@.str458 = private unnamed_addr constant [14 x i8] c"array element\00", align 1
@.str459 = private unnamed_addr constant [12 x i8] c"array slice\00", align 1
@.str460 = private unnamed_addr constant [17 x i8] c"hash dereference\00", align 1
@.str461 = private unnamed_addr constant [13 x i8] c"hash element\00", align 1
@.str462 = private unnamed_addr constant [11 x i8] c"hash slice\00", align 1
@.str463 = private unnamed_addr constant [15 x i8] c"join or string\00", align 1
@.str464 = private unnamed_addr constant [11 x i8] c"list slice\00", align 1
@.str465 = private unnamed_addr constant [20 x i8] c"anonymous list ([])\00", align 1
@.str466 = private unnamed_addr constant [20 x i8] c"anonymous hash ({})\00", align 1
@.str467 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@.str468 = private unnamed_addr constant [14 x i8] c"grep iterator\00", align 1
@.str469 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str470 = private unnamed_addr constant [13 x i8] c"map iterator\00", align 1
@.str471 = private unnamed_addr constant [9 x i8] c"flipflop\00", align 1
@.str472 = private unnamed_addr constant [16 x i8] c"range (or flip)\00", align 1
@.str473 = private unnamed_addr constant [16 x i8] c"range (or flop)\00", align 1
@.str474 = private unnamed_addr constant [17 x i8] c"logical and (&&)\00", align 1
@.str475 = private unnamed_addr constant [16 x i8] c"logical or (||)\00", align 1
@.str476 = private unnamed_addr constant [12 x i8] c"logical xor\00", align 1
@.str477 = private unnamed_addr constant [23 x i8] c"conditional expression\00", align 1
@.str478 = private unnamed_addr constant [29 x i8] c"logical and assignment (&&=)\00", align 1
@.str479 = private unnamed_addr constant [28 x i8] c"logical or assignment (||=)\00", align 1
@.str480 = private unnamed_addr constant [14 x i8] c"method lookup\00", align 1
@.str481 = private unnamed_addr constant [17 x i8] c"subroutine entry\00", align 1
@.str482 = private unnamed_addr constant [16 x i8] c"subroutine exit\00", align 1
@.str483 = private unnamed_addr constant [25 x i8] c"lvalue subroutine return\00", align 1
@.str484 = private unnamed_addr constant [13 x i8] c"symbol reset\00", align 1
@.str485 = private unnamed_addr constant [14 x i8] c"line sequence\00", align 1
@.str486 = private unnamed_addr constant [15 x i8] c"next statement\00", align 1
@.str487 = private unnamed_addr constant [21 x i8] c"debug next statement\00", align 1
@.str488 = private unnamed_addr constant [20 x i8] c"iteration finalizer\00", align 1
@.str489 = private unnamed_addr constant [12 x i8] c"block entry\00", align 1
@.str490 = private unnamed_addr constant [11 x i8] c"block exit\00", align 1
@.str491 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str492 = private unnamed_addr constant [19 x i8] c"foreach loop entry\00", align 1
@.str493 = private unnamed_addr constant [22 x i8] c"foreach loop iterator\00", align 1
@.str494 = private unnamed_addr constant [11 x i8] c"loop entry\00", align 1
@.str495 = private unnamed_addr constant [10 x i8] c"loop exit\00", align 1
@.str496 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str497 = private unnamed_addr constant [19 x i8] c"select system call\00", align 1
@.str498 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str499 = private unnamed_addr constant [11 x i8] c"write exit\00", align 1
@.str500 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str501 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str502 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str503 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str504 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str505 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str506 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str507 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str508 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str509 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str510 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str511 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str512 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str513 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str514 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str515 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str516 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str517 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str518 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str519 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str520 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str521 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str522 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str523 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str524 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str525 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str526 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str527 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str528 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str529 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str530 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str531 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str532 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str533 = private unnamed_addr constant [10 x i8] c"do \22file\22\00", align 1
@.str534 = private unnamed_addr constant [14 x i8] c"eval \22string\22\00", align 1
@.str535 = private unnamed_addr constant [19 x i8] c"eval \22string\22 exit\00", align 1
@.str536 = private unnamed_addr constant [13 x i8] c"eval {block}\00", align 1
@.str537 = private unnamed_addr constant [18 x i8] c"eval {block} exit\00", align 1
@.str538 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str539 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@.str540 = private unnamed_addr constant [11 x i8] c"gethostent\00", align 1
@.str541 = private unnamed_addr constant [13 x i8] c"getnetbyname\00", align 1
@.str542 = private unnamed_addr constant [13 x i8] c"getnetbyaddr\00", align 1
@.str543 = private unnamed_addr constant [10 x i8] c"getnetent\00", align 1
@.str544 = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@.str545 = private unnamed_addr constant [17 x i8] c"getprotobynumber\00", align 1
@.str546 = private unnamed_addr constant [12 x i8] c"getprotoent\00", align 1
@.str547 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@.str548 = private unnamed_addr constant [14 x i8] c"getservbyport\00", align 1
@.str549 = private unnamed_addr constant [11 x i8] c"getservent\00", align 1
@.str550 = private unnamed_addr constant [11 x i8] c"sethostent\00", align 1
@.str551 = private unnamed_addr constant [10 x i8] c"setnetent\00", align 1
@.str552 = private unnamed_addr constant [12 x i8] c"setprotoent\00", align 1
@.str553 = private unnamed_addr constant [11 x i8] c"setservent\00", align 1
@.str554 = private unnamed_addr constant [11 x i8] c"endhostent\00", align 1
@.str555 = private unnamed_addr constant [10 x i8] c"endnetent\00", align 1
@.str556 = private unnamed_addr constant [12 x i8] c"endprotoent\00", align 1
@.str557 = private unnamed_addr constant [11 x i8] c"endservent\00", align 1
@.str558 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str559 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str560 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str561 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str562 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str563 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str564 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str565 = private unnamed_addr constant [9 x i8] c"getgrent\00", align 1
@.str566 = private unnamed_addr constant [9 x i8] c"setgrent\00", align 1
@.str567 = private unnamed_addr constant [9 x i8] c"endgrent\00", align 1
@.str568 = private unnamed_addr constant [17 x i8] c"per-thread value\00", align 1
@.str569 = private unnamed_addr constant [19 x i8] c"set statement info\00", align 1
@.str570 = private unnamed_addr constant [23 x i8] c"method with known name\00", align 1
@.str571 = private unnamed_addr constant [24 x i8] c"unknown custom operator\00", align 1
@PL_op_desc = global [352 x i8*] [i8* getelementptr inbounds ([15 x i8]* @.str368, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str369, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str370, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str371, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str372, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str373, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str374, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str375, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str376, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str377, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str378, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str379, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str380, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str381, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str382, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str383, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str384, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str385, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str386, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str387, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str388, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str389, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str390, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str391, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str392, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str393, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str394, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str395, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str396, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str397, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str398, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str399, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str400, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str401, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str402, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str403, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str404, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str405, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str406, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str407, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str408, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str409, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str410, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str411, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str412, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str413, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str414, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str415, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str416, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str417, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str418, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str419, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str420, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str421, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str422, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str423, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str424, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str425, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str426, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str427, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str428, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str429, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str430, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str431, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str432, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str433, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str434, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str435, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str436, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str437, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str438, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str439, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str440, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str441, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str442, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str443, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str444, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str445, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str446, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str447, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str448, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str449, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str450, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str451, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str452, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str453, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str454, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str455, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str119, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str121, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str123, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str124, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str134, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str140, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str456, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str457, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str458, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str459, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str149, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str460, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str461, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str462, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str153, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str154, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str463, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str157, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str464, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str465, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str466, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str161, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str162, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str165, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str166, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str167, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str467, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str468, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str469, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str470, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str471, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str472, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str473, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str474, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str475, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str476, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str477, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str478, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str479, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str480, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str481, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str482, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str483, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str185, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str186, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str187, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str484, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str485, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str486, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str487, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str488, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str489, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str490, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str491, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str492, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str493, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str494, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str495, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str200, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str201, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str202, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str203, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str204, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str205, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str206, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str207, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str208, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str496, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str211, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str213, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str214, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str215, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str216, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str217, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str497, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str219, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str220, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str221, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str498, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str499, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str500, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str225, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str226, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str227, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str228, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str229, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str230, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str231, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str232, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str233, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str234, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str236, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str237, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str238, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str501, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str241, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str242, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str243, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str244, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str245, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str502, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str503, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str248, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str250, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str251, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str504, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str505, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str506, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str507, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str508, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str509, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str510, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str511, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str512, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str513, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str514, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str515, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str516, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str517, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str518, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str519, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str520, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str521, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str522, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str523, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str524, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str525, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str526, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str527, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str528, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str529, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str530, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str279, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str280, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str281, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str282, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str283, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str284, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str285, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str286, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str287, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str288, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str289, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str290, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str531, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str292, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str293, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str294, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str295, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str296, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str297, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str298, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str299, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str300, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str301, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str302, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str303, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str304, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str305, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str306, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str307, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str308, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str532, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str310, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str311, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str312, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str313, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str314, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str315, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str316, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str317, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str318, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str319, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str320, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str321, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str322, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str323, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str324, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str325, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str533, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str534, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str535, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str536, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str537, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str538, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str539, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str540, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str541, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str542, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str543, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str544, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str545, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str546, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str547, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str548, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str549, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str550, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str551, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str552, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str553, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str554, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str555, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str556, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str557, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str558, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str559, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str560, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str561, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str562, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str563, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str564, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str565, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str566, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str567, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str361, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str362, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str363, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str568, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str569, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str570, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str571, i32 0, i32 0)], align 16
@PL_ppaddr = global [351 x %struct.op* ()*] [%struct.op* ()* @Perl_pp_null, %struct.op* ()* @Perl_pp_stub, %struct.op* ()* @Perl_pp_scalar, %struct.op* ()* @Perl_pp_pushmark, %struct.op* ()* @Perl_pp_wantarray, %struct.op* ()* @Perl_pp_const, %struct.op* ()* @Perl_pp_gvsv, %struct.op* ()* @Perl_pp_gv, %struct.op* ()* @Perl_pp_gelem, %struct.op* ()* @Perl_pp_padsv, %struct.op* ()* @Perl_pp_padav, %struct.op* ()* @Perl_pp_padhv, %struct.op* ()* @Perl_pp_padany, %struct.op* ()* @Perl_pp_pushre, %struct.op* ()* @Perl_pp_rv2gv, %struct.op* ()* @Perl_pp_rv2sv, %struct.op* ()* @Perl_pp_av2arylen, %struct.op* ()* @Perl_pp_rv2cv, %struct.op* ()* @Perl_pp_anoncode, %struct.op* ()* @Perl_pp_prototype, %struct.op* ()* @Perl_pp_refgen, %struct.op* ()* @Perl_pp_srefgen, %struct.op* ()* @Perl_pp_ref, %struct.op* ()* @Perl_pp_bless, %struct.op* ()* @Perl_pp_backtick, %struct.op* ()* @Perl_pp_glob, %struct.op* ()* @Perl_pp_readline, %struct.op* ()* @Perl_pp_rcatline, %struct.op* ()* @Perl_pp_regcmaybe, %struct.op* ()* @Perl_pp_regcreset, %struct.op* ()* @Perl_pp_regcomp, %struct.op* ()* @Perl_pp_match, %struct.op* ()* @Perl_pp_qr, %struct.op* ()* @Perl_pp_subst, %struct.op* ()* @Perl_pp_substcont, %struct.op* ()* @Perl_pp_trans, %struct.op* ()* @Perl_pp_sassign, %struct.op* ()* @Perl_pp_aassign, %struct.op* ()* @Perl_pp_chop, %struct.op* ()* @Perl_pp_schop, %struct.op* ()* @Perl_pp_chomp, %struct.op* ()* @Perl_pp_schomp, %struct.op* ()* @Perl_pp_defined, %struct.op* ()* @Perl_pp_undef, %struct.op* ()* @Perl_pp_study, %struct.op* ()* @Perl_pp_pos, %struct.op* ()* @Perl_pp_preinc, %struct.op* ()* @Perl_pp_preinc, %struct.op* ()* @Perl_pp_predec, %struct.op* ()* @Perl_pp_predec, %struct.op* ()* @Perl_pp_postinc, %struct.op* ()* @Perl_pp_postinc, %struct.op* ()* @Perl_pp_postdec, %struct.op* ()* @Perl_pp_postdec, %struct.op* ()* @Perl_pp_pow, %struct.op* ()* @Perl_pp_multiply, %struct.op* ()* @Perl_pp_i_multiply, %struct.op* ()* @Perl_pp_divide, %struct.op* ()* @Perl_pp_i_divide, %struct.op* ()* @Perl_pp_modulo, %struct.op* ()* @Perl_pp_i_modulo, %struct.op* ()* @Perl_pp_repeat, %struct.op* ()* @Perl_pp_add, %struct.op* ()* @Perl_pp_i_add, %struct.op* ()* @Perl_pp_subtract, %struct.op* ()* @Perl_pp_i_subtract, %struct.op* ()* @Perl_pp_concat, %struct.op* ()* @Perl_pp_stringify, %struct.op* ()* @Perl_pp_left_shift, %struct.op* ()* @Perl_pp_right_shift, %struct.op* ()* @Perl_pp_lt, %struct.op* ()* @Perl_pp_i_lt, %struct.op* ()* @Perl_pp_gt, %struct.op* ()* @Perl_pp_i_gt, %struct.op* ()* @Perl_pp_le, %struct.op* ()* @Perl_pp_i_le, %struct.op* ()* @Perl_pp_ge, %struct.op* ()* @Perl_pp_i_ge, %struct.op* ()* @Perl_pp_eq, %struct.op* ()* @Perl_pp_i_eq, %struct.op* ()* @Perl_pp_ne, %struct.op* ()* @Perl_pp_i_ne, %struct.op* ()* @Perl_pp_ncmp, %struct.op* ()* @Perl_pp_i_ncmp, %struct.op* ()* @Perl_pp_slt, %struct.op* ()* @Perl_pp_sgt, %struct.op* ()* @Perl_pp_sle, %struct.op* ()* @Perl_pp_sge, %struct.op* ()* @Perl_pp_seq, %struct.op* ()* @Perl_pp_sne, %struct.op* ()* @Perl_pp_scmp, %struct.op* ()* @Perl_pp_bit_and, %struct.op* ()* @Perl_pp_bit_xor, %struct.op* ()* @Perl_pp_bit_or, %struct.op* ()* @Perl_pp_negate, %struct.op* ()* @Perl_pp_i_negate, %struct.op* ()* @Perl_pp_not, %struct.op* ()* @Perl_pp_complement, %struct.op* ()* @Perl_pp_atan2, %struct.op* ()* @Perl_pp_sin, %struct.op* ()* @Perl_pp_cos, %struct.op* ()* @Perl_pp_rand, %struct.op* ()* @Perl_pp_srand, %struct.op* ()* @Perl_pp_exp, %struct.op* ()* @Perl_pp_log, %struct.op* ()* @Perl_pp_sqrt, %struct.op* ()* @Perl_pp_int, %struct.op* ()* @Perl_pp_hex, %struct.op* ()* @Perl_pp_oct, %struct.op* ()* @Perl_pp_abs, %struct.op* ()* @Perl_pp_length, %struct.op* ()* @Perl_pp_substr, %struct.op* ()* @Perl_pp_vec, %struct.op* ()* @Perl_pp_index, %struct.op* ()* @Perl_pp_rindex, %struct.op* ()* @Perl_pp_sprintf, %struct.op* ()* @Perl_pp_formline, %struct.op* ()* @Perl_pp_ord, %struct.op* ()* @Perl_pp_chr, %struct.op* ()* @Perl_pp_crypt, %struct.op* ()* @Perl_pp_ucfirst, %struct.op* ()* @Perl_pp_lcfirst, %struct.op* ()* @Perl_pp_uc, %struct.op* ()* @Perl_pp_lc, %struct.op* ()* @Perl_pp_quotemeta, %struct.op* ()* @Perl_pp_rv2av, %struct.op* ()* @Perl_pp_aelemfast, %struct.op* ()* @Perl_pp_aelem, %struct.op* ()* @Perl_pp_aslice, %struct.op* ()* @Perl_pp_each, %struct.op* ()* @Perl_pp_values, %struct.op* ()* @Perl_pp_keys, %struct.op* ()* @Perl_pp_delete, %struct.op* ()* @Perl_pp_exists, %struct.op* ()* @Perl_pp_rv2hv, %struct.op* ()* @Perl_pp_helem, %struct.op* ()* @Perl_pp_hslice, %struct.op* ()* @Perl_pp_unpack, %struct.op* ()* @Perl_pp_pack, %struct.op* ()* @Perl_pp_split, %struct.op* ()* @Perl_pp_join, %struct.op* ()* @Perl_pp_list, %struct.op* ()* @Perl_pp_lslice, %struct.op* ()* @Perl_pp_anonlist, %struct.op* ()* @Perl_pp_anonhash, %struct.op* ()* @Perl_pp_splice, %struct.op* ()* @Perl_pp_push, %struct.op* ()* @Perl_pp_pop, %struct.op* ()* @Perl_pp_shift, %struct.op* ()* @Perl_pp_unshift, %struct.op* ()* @Perl_pp_sort, %struct.op* ()* @Perl_pp_reverse, %struct.op* ()* @Perl_pp_grepstart, %struct.op* ()* @Perl_pp_grepwhile, %struct.op* ()* @Perl_pp_mapstart, %struct.op* ()* @Perl_pp_mapwhile, %struct.op* ()* @Perl_pp_range, %struct.op* ()* @Perl_pp_flip, %struct.op* ()* @Perl_pp_flop, %struct.op* ()* @Perl_pp_and, %struct.op* ()* @Perl_pp_or, %struct.op* ()* @Perl_pp_xor, %struct.op* ()* @Perl_pp_cond_expr, %struct.op* ()* @Perl_pp_andassign, %struct.op* ()* @Perl_pp_orassign, %struct.op* ()* @Perl_pp_method, %struct.op* ()* @Perl_pp_entersub, %struct.op* ()* @Perl_pp_leavesub, %struct.op* ()* @Perl_pp_leavesublv, %struct.op* ()* @Perl_pp_caller, %struct.op* ()* @Perl_pp_warn, %struct.op* ()* @Perl_pp_die, %struct.op* ()* @Perl_pp_reset, %struct.op* ()* @Perl_pp_lineseq, %struct.op* ()* @Perl_pp_nextstate, %struct.op* ()* @Perl_pp_dbstate, %struct.op* ()* @Perl_pp_unstack, %struct.op* ()* @Perl_pp_enter, %struct.op* ()* @Perl_pp_leave, %struct.op* ()* @Perl_pp_scope, %struct.op* ()* @Perl_pp_enteriter, %struct.op* ()* @Perl_pp_iter, %struct.op* ()* @Perl_pp_enterloop, %struct.op* ()* @Perl_pp_leaveloop, %struct.op* ()* @Perl_pp_return, %struct.op* ()* @Perl_pp_last, %struct.op* ()* @Perl_pp_next, %struct.op* ()* @Perl_pp_redo, %struct.op* ()* @Perl_pp_dump, %struct.op* ()* @Perl_pp_goto, %struct.op* ()* @Perl_pp_exit, %struct.op* ()* @Perl_pp_open, %struct.op* ()* @Perl_pp_close, %struct.op* ()* @Perl_pp_pipe_op, %struct.op* ()* @Perl_pp_fileno, %struct.op* ()* @Perl_pp_umask, %struct.op* ()* @Perl_pp_binmode, %struct.op* ()* @Perl_pp_tie, %struct.op* ()* @Perl_pp_untie, %struct.op* ()* @Perl_pp_tied, %struct.op* ()* @Perl_pp_dbmopen, %struct.op* ()* @Perl_pp_dbmclose, %struct.op* ()* @Perl_pp_sselect, %struct.op* ()* @Perl_pp_select, %struct.op* ()* @Perl_pp_getc, %struct.op* ()* @Perl_pp_read, %struct.op* ()* @Perl_pp_enterwrite, %struct.op* ()* @Perl_pp_leavewrite, %struct.op* ()* @Perl_pp_prtf, %struct.op* ()* @Perl_pp_print, %struct.op* ()* @Perl_pp_sysopen, %struct.op* ()* @Perl_pp_sysseek, %struct.op* ()* @Perl_pp_sysread, %struct.op* ()* @Perl_pp_syswrite, %struct.op* ()* @Perl_pp_send, %struct.op* ()* @Perl_pp_recv, %struct.op* ()* @Perl_pp_eof, %struct.op* ()* @Perl_pp_tell, %struct.op* ()* @Perl_pp_seek, %struct.op* ()* @Perl_pp_truncate, %struct.op* ()* @Perl_pp_fcntl, %struct.op* ()* @Perl_pp_ioctl, %struct.op* ()* @Perl_pp_flock, %struct.op* ()* @Perl_pp_socket, %struct.op* ()* @Perl_pp_sockpair, %struct.op* ()* @Perl_pp_bind, %struct.op* ()* @Perl_pp_connect, %struct.op* ()* @Perl_pp_listen, %struct.op* ()* @Perl_pp_accept, %struct.op* ()* @Perl_pp_shutdown, %struct.op* ()* @Perl_pp_gsockopt, %struct.op* ()* @Perl_pp_ssockopt, %struct.op* ()* @Perl_pp_getsockname, %struct.op* ()* @Perl_pp_getpeername, %struct.op* ()* @Perl_pp_lstat, %struct.op* ()* @Perl_pp_stat, %struct.op* ()* @Perl_pp_ftrread, %struct.op* ()* @Perl_pp_ftrwrite, %struct.op* ()* @Perl_pp_ftrexec, %struct.op* ()* @Perl_pp_fteread, %struct.op* ()* @Perl_pp_ftewrite, %struct.op* ()* @Perl_pp_fteexec, %struct.op* ()* @Perl_pp_ftis, %struct.op* ()* @Perl_pp_fteowned, %struct.op* ()* @Perl_pp_ftrowned, %struct.op* ()* @Perl_pp_ftzero, %struct.op* ()* @Perl_pp_ftsize, %struct.op* ()* @Perl_pp_ftmtime, %struct.op* ()* @Perl_pp_ftatime, %struct.op* ()* @Perl_pp_ftctime, %struct.op* ()* @Perl_pp_ftsock, %struct.op* ()* @Perl_pp_ftchr, %struct.op* ()* @Perl_pp_ftblk, %struct.op* ()* @Perl_pp_ftfile, %struct.op* ()* @Perl_pp_ftdir, %struct.op* ()* @Perl_pp_ftpipe, %struct.op* ()* @Perl_pp_ftlink, %struct.op* ()* @Perl_pp_ftsuid, %struct.op* ()* @Perl_pp_ftsgid, %struct.op* ()* @Perl_pp_ftsvtx, %struct.op* ()* @Perl_pp_fttty, %struct.op* ()* @Perl_pp_fttext, %struct.op* ()* @Perl_pp_ftbinary, %struct.op* ()* @Perl_pp_chdir, %struct.op* ()* @Perl_pp_chown, %struct.op* ()* @Perl_pp_chroot, %struct.op* ()* @Perl_pp_unlink, %struct.op* ()* @Perl_pp_chmod, %struct.op* ()* @Perl_pp_utime, %struct.op* ()* @Perl_pp_rename, %struct.op* ()* @Perl_pp_link, %struct.op* ()* @Perl_pp_symlink, %struct.op* ()* @Perl_pp_readlink, %struct.op* ()* @Perl_pp_mkdir, %struct.op* ()* @Perl_pp_rmdir, %struct.op* ()* @Perl_pp_open_dir, %struct.op* ()* @Perl_pp_readdir, %struct.op* ()* @Perl_pp_telldir, %struct.op* ()* @Perl_pp_seekdir, %struct.op* ()* @Perl_pp_rewinddir, %struct.op* ()* @Perl_pp_closedir, %struct.op* ()* @Perl_pp_fork, %struct.op* ()* @Perl_pp_wait, %struct.op* ()* @Perl_pp_waitpid, %struct.op* ()* @Perl_pp_system, %struct.op* ()* @Perl_pp_exec, %struct.op* ()* @Perl_pp_kill, %struct.op* ()* @Perl_pp_getppid, %struct.op* ()* @Perl_pp_getpgrp, %struct.op* ()* @Perl_pp_setpgrp, %struct.op* ()* @Perl_pp_getpriority, %struct.op* ()* @Perl_pp_setpriority, %struct.op* ()* @Perl_pp_time, %struct.op* ()* @Perl_pp_tms, %struct.op* ()* @Perl_pp_localtime, %struct.op* ()* @Perl_pp_gmtime, %struct.op* ()* @Perl_pp_alarm, %struct.op* ()* @Perl_pp_sleep, %struct.op* ()* @Perl_pp_shmget, %struct.op* ()* @Perl_pp_shmctl, %struct.op* ()* @Perl_pp_shmread, %struct.op* ()* @Perl_pp_shmwrite, %struct.op* ()* @Perl_pp_msgget, %struct.op* ()* @Perl_pp_msgctl, %struct.op* ()* @Perl_pp_msgsnd, %struct.op* ()* @Perl_pp_msgrcv, %struct.op* ()* @Perl_pp_semget, %struct.op* ()* @Perl_pp_semctl, %struct.op* ()* @Perl_pp_semop, %struct.op* ()* @Perl_pp_require, %struct.op* ()* @Perl_pp_dofile, %struct.op* ()* @Perl_pp_entereval, %struct.op* ()* @Perl_pp_leaveeval, %struct.op* ()* @Perl_pp_entertry, %struct.op* ()* @Perl_pp_leavetry, %struct.op* ()* @Perl_pp_ghbyname, %struct.op* ()* @Perl_pp_ghbyaddr, %struct.op* ()* @Perl_pp_ghostent, %struct.op* ()* @Perl_pp_gnbyname, %struct.op* ()* @Perl_pp_gnbyaddr, %struct.op* ()* @Perl_pp_gnetent, %struct.op* ()* @Perl_pp_gpbyname, %struct.op* ()* @Perl_pp_gpbynumber, %struct.op* ()* @Perl_pp_gprotoent, %struct.op* ()* @Perl_pp_gsbyname, %struct.op* ()* @Perl_pp_gsbyport, %struct.op* ()* @Perl_pp_gservent, %struct.op* ()* @Perl_pp_shostent, %struct.op* ()* @Perl_pp_snetent, %struct.op* ()* @Perl_pp_sprotoent, %struct.op* ()* @Perl_pp_sservent, %struct.op* ()* @Perl_pp_ehostent, %struct.op* ()* @Perl_pp_enetent, %struct.op* ()* @Perl_pp_eprotoent, %struct.op* ()* @Perl_pp_eservent, %struct.op* ()* @Perl_pp_gpwnam, %struct.op* ()* @Perl_pp_gpwuid, %struct.op* ()* @Perl_pp_gpwent, %struct.op* ()* @Perl_pp_spwent, %struct.op* ()* @Perl_pp_epwent, %struct.op* ()* @Perl_pp_ggrnam, %struct.op* ()* @Perl_pp_ggrgid, %struct.op* ()* @Perl_pp_ggrent, %struct.op* ()* @Perl_pp_sgrent, %struct.op* ()* @Perl_pp_egrent, %struct.op* ()* @Perl_pp_getlogin, %struct.op* ()* @Perl_pp_syscall, %struct.op* ()* @Perl_pp_lock, %struct.op* ()* @Perl_pp_threadsv, %struct.op* ()* @Perl_pp_setstate, %struct.op* ()* @Perl_pp_method_named], align 16
@PL_check = global [352 x %struct.op* (%struct.op*)*] [%struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_svconst, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_rvconst, %struct.op* (%struct.op*)* @Perl_ck_rvconst, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_rvconst, %struct.op* (%struct.op*)* @Perl_ck_anoncode, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_spair, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_open, %struct.op* (%struct.op*)* @Perl_ck_glob, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_match, %struct.op* (%struct.op*)* @Perl_ck_match, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_sassign, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_spair, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_spair, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_defined, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_lfun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_repeat, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_concat, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_bitop, %struct.op* (%struct.op*)* @Perl_ck_bitop, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_bitop, %struct.op* (%struct.op*)* @Perl_ck_bitop, %struct.op* (%struct.op*)* @Perl_ck_bitop, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_bitop, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_lengthconst, %struct.op* (%struct.op*)* @Perl_ck_substr, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_index, %struct.op* (%struct.op*)* @Perl_ck_index, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_rvconst, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_delete, %struct.op* (%struct.op*)* @Perl_ck_exists, %struct.op* (%struct.op*)* @Perl_ck_rvconst, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_split, %struct.op* (%struct.op*)* @Perl_ck_join, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_shift, %struct.op* (%struct.op*)* @Perl_ck_shift, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_sort, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_grep, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_grep, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_method, %struct.op* (%struct.op*)* @Perl_ck_subr, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_die, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_return, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_exit, %struct.op* (%struct.op*)* @Perl_ck_open, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_select, %struct.op* (%struct.op*)* @Perl_ck_select, %struct.op* (%struct.op*)* @Perl_ck_eof, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_listiob, %struct.op* (%struct.op*)* @Perl_ck_listiob, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_eof, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_trunc, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_ftst, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_exec, %struct.op* (%struct.op*)* @Perl_ck_exec, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_require, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_eval, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_fun, %struct.op* (%struct.op*)* @Perl_ck_rfun, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null, %struct.op* (%struct.op*)* @Perl_ck_null], align 16
@PL_opargs = global [352 x i32] [i32 0, i32 0, i32 13828, i32 4, i32 20, i32 3076, i32 3140, i32 3140, i32 140352, i32 68, i32 64, i32 64, i32 64, i32 2624, i32 580, i32 580, i32 532, i32 576, i32 3072, i32 13828, i32 16897, i32 8710, i32 79500, i32 1189892, i32 5640, i32 75784, i32 120328, i32 3080, i32 8708, i32 8708, i32 9732, i32 2624, i32 2564, i32 10836, i32 1620, i32 12308, i32 4, i32 279560, i32 22029, i32 79500, i32 22285, i32 79756, i32 79508, i32 79364, i32 79492, i32 79500, i32 8804, i32 8788, i32 8804, i32 8788, i32 8812, i32 9052, i32 8812, i32 9052, i32 140558, i32 140590, i32 140574, i32 140590, i32 140574, i32 140606, i32 140574, i32 148489, i32 140590, i32 140574, i32 140590, i32 140574, i32 140558, i32 10510, i32 140558, i32 140558, i32 140342, i32 140310, i32 140342, i32 140310, i32 140342, i32 140310, i32 140342, i32 140310, i32 140342, i32 140310, i32 140342, i32 140310, i32 140350, i32 140318, i32 140310, i32 140310, i32 140310, i32 140310, i32 140310, i32 140310, i32 140318, i32 140302, i32 140302, i32 140302, i32 8750, i32 8990, i32 8726, i32 8718, i32 141582, i32 79758, i32 79758, i32 79628, i32 79364, i32 79758, i32 79758, i32 79758, i32 79758, i32 79758, i32 79758, i32 79758, i32 79772, i32 321005580, i32 2238492, i32 19015964, i32 19015964, i32 272399, i32 272389, i32 79774, i32 79758, i32 141582, i32 79502, i32 79502, i32 79502, i32 79502, i32 79502, i32 584, i32 158724, i32 156676, i32 288769, i32 38400, i32 38408, i32 38408, i32 13824, i32 13844, i32 584, i32 164868, i32 296961, i32 141312, i32 272397, i32 2238472, i32 272397, i32 18433, i32 4490240, i32 18437, i32 18437, i32 87189505, i32 289053, i32 95748, i32 95748, i32 289053, i32 370689, i32 18441, i32 305217, i32 1608, i32 305217, i32 1608, i32 140800, i32 139776, i32 512, i32 1536, i32 1536, i32 140294, i32 1600, i32 1540, i32 1540, i32 576, i32 16969, i32 512, i32 512, i32 79368, i32 18461, i32 18525, i32 79380, i32 2048, i32 5124, i32 5124, i32 4, i32 0, i32 2048, i32 2048, i32 4672, i32 0, i32 4672, i32 1024, i32 18497, i32 6724, i32 6724, i32 6724, i32 6724, i32 6724, i32 79428, i32 5425181, i32 120340, i32 837652, i32 54812, i32 79388, i32 1230852, i32 4384853, i32 62996, i32 62980, i32 2263060, i32 38420, i32 35792904, i32 116748, i32 120332, i32 305055773, i32 120404, i32 512, i32 378901, i32 378901, i32 304269316, i32 2279428, i32 305055773, i32 321046557, i32 304269341, i32 36620317, i32 120340, i32 120332, i32 2279428, i32 141332, i32 2279436, i32 2279436, i32 182556, i32 35833876, i32 573360148, i32 182292, i32 182292, i32 182292, i32 837660, i32 182300, i32 2279444, i32 35833876, i32 54804, i32 54804, i32 55424, i32 55424, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55452, i32 55436, i32 55436, i32 55436, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55444, i32 55316, i32 55444, i32 55444, i32 79644, i32 18717, i32 79772, i32 18845, i32 18717, i32 18717, i32 141596, i32 141596, i32 141596, i32 79500, i32 1190172, i32 79772, i32 182292, i32 54784, i32 54796, i32 182276, i32 54788, i32 54804, i32 28, i32 284, i32 141596, i32 338205, i32 338269, i32 18781, i32 284, i32 79644, i32 1255708, i32 141596, i32 2238748, i32 284, i32 0, i32 79368, i32 79368, i32 79516, i32 79644, i32 2238493, i32 2238493, i32 35792925, i32 35792925, i32 141341, i32 2238493, i32 2238493, i32 572663837, i32 2238493, i32 35792925, i32 141341, i32 79552, i32 8768, i32 13888, i32 8704, i32 1536, i32 2048, i32 13824, i32 141312, i32 0, i32 13824, i32 141312, i32 0, i32 13824, i32 10240, i32 0, i32 141312, i32 141312, i32 0, i32 13844, i32 13844, i32 13844, i32 13844, i32 20, i32 20, i32 20, i32 20, i32 13824, i32 13824, i32 0, i32 20, i32 20, i32 13824, i32 13824, i32 0, i32 20, i32 20, i32 12, i32 272413, i32 62980, i32 68, i32 5124, i32 3136, i32 0], align 16
@.str572 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_splitstr = global i8* getelementptr inbounds ([2 x i8]* @.str572, i64 0, i64 0), align 8
@PL_perl_destruct_level = global i32 0, align 4
@PL_maxsysfd = global i32 2, align 4
@PL_sub_generation = global i32 1, align 4
@PL_op_mask = global i8* null, align 8
@PL_curcopdb = global %struct.cop* null, align 8
@PL_copline = global i32 -1, align 4
@PL_gensym = global i32 0, align 4
@PL_laststatval = global i32 -1, align 4
@PL_laststype = global i32 235, align 4
@PL_exitlist = global %struct.exitlistentry* null, align 8
@PL_exitlistlen = global i32 0, align 4
@PL_profiledata = global i32* null, align 8
@PL_rsfp = global %struct._PerlIO** null, align 8
@PL_rsfp_filters = global %struct.av* null, align 8
@PL_generation = global i32 100, align 4
@PL_in_clean_objs = global i8 0, align 1
@PL_in_clean_all = global i8 0, align 1
@PL_an = global i32 0, align 4
@PL_cop_seqmax = global i32 0, align 4
@PL_op_seqmax = global i16 0, align 2
@PL_evalseq = global i32 0, align 4
@PL_maxo = global i32 352, align 4
@.str573 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@PL_sh_path_compat = global i8* getelementptr inbounds ([8 x i8]* @.str573, i64 0, i64 0), align 8
@PL_runops = global i32 ()* @Perl_runops_standard, align 8
@.str574 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_cshname = global i8* getelementptr inbounds ([1 x i8]* @.str574, i64 0, i64 0), align 8
@PL_cshlen = global i32 0, align 4
@PL_expect = global i32 3, align 4
@PL_amagic_generation = global i64 0, align 8
@PL_glob_index = global i32 0, align 4
@PL_beginav_save = global %struct.av* null, align 8
@PL_sig_pending = global i32 0, align 4
@PL_savebegin = global i8 0, align 1
@PL_perlio = global %struct._PerlIO** null, align 8
@PL_known_layers = global %struct.PerlIO_list_s* null, align 8
@PL_def_layerlist = global %struct.PerlIO_list_s* null, align 8
@PL_encoding = global %struct.sv* null, align 8
@PL_checkav_save = global %struct.av* null, align 8
@PL_clocktick = global i64 0, align 8
@PL_in_load_module = global i32 0, align 4
@PL_sharehook = global void (%struct.sv*)* @Perl_sv_nosharing, align 8
@PL_lockhook = global void (%struct.sv*)* @Perl_sv_nolocking, align 8
@PL_unlockhook = global void (%struct.sv*)* @Perl_sv_nounlocking, align 8
@PL_threadhook = global i32 ()* @Perl_nothreadhook, align 8
@PL_runops_std = global i32 ()* @Perl_runops_standard, align 8
@PL_runops_dbg = global i32 ()* @Perl_runops_debug, align 8
@PL_hash_seed = global i64 0, align 8
@PL_hash_seed_set = global i8 0, align 1
@PL_rehash_seed = global i64 0, align 8
@PL_rehash_seed_set = global i8 0, align 1
@PL_fdscript = global i32 -1, align 4
@PL_suidscript = global i32 -1, align 4
@PL_tmps_ix = global i32 -1, align 4
@PL_tmps_floor = global i32 -1, align 4
@PL_statname = global %struct.sv* null, align 8
@.str575 = private unnamed_addr constant [4 x i8] c" \0A-\00", align 1
@PL_chopset = global i8* getelementptr inbounds ([4 x i8]* @.str575, i64 0, i64 0), align 8
@PL_compiling = common global %struct.cop zeroinitializer, align 8
@PL_curcop = global %struct.cop* @PL_compiling, align 8
@PL_dirty = global i8 0, align 1
@PL_errors = global %struct.sv* null, align 8
@PL_dumpindent = global i32 4, align 4
@PL_maxscream = global i32 -1, align 4
@PL_regindent = global i32 0, align 4
@PL_reg_oldcurpm = global %struct.pmop* null, align 8
@PL_reg_curpm = global %struct.pmop* null, align 8
@PL_reg_poscache = global i8* null, align 8
@PL_peepp = global void (%struct.op*)* @Perl_peep, align 8
@PL_regcompp = global %struct.regexp* (i8*, i8*, %struct.pmop*)* @Perl_pregcomp, align 8
@PL_regexecp = global i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)* @Perl_regexec_flags, align 8
@PL_regint_start = global i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)* @Perl_re_intuit_start, align 8
@PL_regint_string = global %struct.sv* (%struct.regexp*)* @Perl_re_intuit_string, align 8
@PL_regfree = global void (%struct.regexp*)* @Perl_pregfree, align 8
@PL_reginterp_cnt = global i32 0, align 4
@PL_reg_starttry = global i8* null, align 8
@PL_watchaddr = global i8** null, align 8
@.str576 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@PL_Yes = global i8* getelementptr inbounds ([2 x i8]* @.str576, i64 0, i64 0), align 8
@PL_No = global i8* getelementptr inbounds ([1 x i8]* @.str574, i64 0, i64 0), align 8
@.str577 = private unnamed_addr constant [33 x i8] c"0123456789abcdef0123456789ABCDEF\00", align 1
@PL_hexdigit = global i8* getelementptr inbounds ([33 x i8]* @.str577, i64 0, i64 0), align 8
@.str578 = private unnamed_addr constant [43 x i8] c"\5C.^$@dDwWsSbB+*?|()-nrtfeaxc0123456789[{]}\00", align 1
@PL_patleave = global i8* getelementptr inbounds ([43 x i8]* @.str578, i64 0, i64 0), align 8
@PL_do_undump = global i8 0, align 1
@PL_sh_path = global i8* getelementptr inbounds ([8 x i8]* @.str573, i64 0, i64 0), align 8
@PL_csighandlerp = global void (i32)* @Perl_csighandler, align 8
@PL_use_safe_putenv = global i32 1, align 4
@PL_vtbl_sv = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_get, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_set, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_len, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_env = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_set_all_env, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_clear_all_env, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_envelem = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setenv, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_clearenv, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_sig = global %struct.mgvtbl zeroinitializer, align 8
@PL_vtbl_sigelem = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getsig, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setsig, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_clearsig, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_pack = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_sizepack, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_wipepack, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_packelem = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getpack, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setpack, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_clearpack, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_dbline = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setdbline, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_isa = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setisa, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setisa, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_isaelem = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setisa, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_arylen = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getarylen, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setarylen, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_glob = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getglob, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setglob, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_mglob = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setmglob, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_nkeys = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getnkeys, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setnkeys, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_taint = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_gettaint, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_settaint, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_substr = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getsubstr, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setsubstr, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_vec = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getvec, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setvec, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_pos = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getpos, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setpos, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_bm = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setbm, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_fm = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setfm, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_uvar = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getuvar, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setuvar, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_defelem = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_getdefelem, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setdefelem, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_regexp = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setregexp, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_freeregexp, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_regdata = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_regdata_cnt, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_regdatum = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* @Perl_magic_regdatum_get, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_regdatum_set, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_amagic = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setamagic, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setamagic, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_amagicelem = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setamagic, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setamagic, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_backref = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_killbackrefs, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_ovrld = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_freeovrld, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_vtbl_utf8 = global %struct.mgvtbl { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @Perl_magic_setutf8, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@.str579 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str580 = private unnamed_addr constant [5 x i8] c"(abs\00", align 1
@.str581 = private unnamed_addr constant [6 x i8] c"(bool\00", align 1
@.str582 = private unnamed_addr constant [10 x i8] c"(nomethod\00", align 1
@.str583 = private unnamed_addr constant [4 x i8] c"(\22\22\00", align 1
@.str584 = private unnamed_addr constant [4 x i8] c"(0+\00", align 1
@.str585 = private unnamed_addr constant [3 x i8] c"(+\00", align 1
@.str586 = private unnamed_addr constant [4 x i8] c"(+=\00", align 1
@.str587 = private unnamed_addr constant [3 x i8] c"(-\00", align 1
@.str588 = private unnamed_addr constant [4 x i8] c"(-=\00", align 1
@.str589 = private unnamed_addr constant [3 x i8] c"(*\00", align 1
@.str590 = private unnamed_addr constant [4 x i8] c"(*=\00", align 1
@.str591 = private unnamed_addr constant [3 x i8] c"(/\00", align 1
@.str592 = private unnamed_addr constant [4 x i8] c"(/=\00", align 1
@.str593 = private unnamed_addr constant [3 x i8] c"(%\00", align 1
@.str594 = private unnamed_addr constant [4 x i8] c"(%=\00", align 1
@.str595 = private unnamed_addr constant [4 x i8] c"(**\00", align 1
@.str596 = private unnamed_addr constant [5 x i8] c"(**=\00", align 1
@.str597 = private unnamed_addr constant [4 x i8] c"(<<\00", align 1
@.str598 = private unnamed_addr constant [5 x i8] c"(<<=\00", align 1
@.str599 = private unnamed_addr constant [4 x i8] c"(>>\00", align 1
@.str600 = private unnamed_addr constant [5 x i8] c"(>>=\00", align 1
@.str601 = private unnamed_addr constant [3 x i8] c"(&\00", align 1
@.str602 = private unnamed_addr constant [4 x i8] c"(&=\00", align 1
@.str603 = private unnamed_addr constant [3 x i8] c"(|\00", align 1
@.str604 = private unnamed_addr constant [4 x i8] c"(|=\00", align 1
@.str605 = private unnamed_addr constant [3 x i8] c"(^\00", align 1
@.str606 = private unnamed_addr constant [4 x i8] c"(^=\00", align 1
@.str607 = private unnamed_addr constant [3 x i8] c"(<\00", align 1
@.str608 = private unnamed_addr constant [4 x i8] c"(<=\00", align 1
@.str609 = private unnamed_addr constant [3 x i8] c"(>\00", align 1
@.str610 = private unnamed_addr constant [4 x i8] c"(>=\00", align 1
@.str611 = private unnamed_addr constant [4 x i8] c"(==\00", align 1
@.str612 = private unnamed_addr constant [4 x i8] c"(!=\00", align 1
@.str613 = private unnamed_addr constant [5 x i8] c"(<=>\00", align 1
@.str614 = private unnamed_addr constant [5 x i8] c"(cmp\00", align 1
@.str615 = private unnamed_addr constant [4 x i8] c"(lt\00", align 1
@.str616 = private unnamed_addr constant [4 x i8] c"(le\00", align 1
@.str617 = private unnamed_addr constant [4 x i8] c"(gt\00", align 1
@.str618 = private unnamed_addr constant [4 x i8] c"(ge\00", align 1
@.str619 = private unnamed_addr constant [4 x i8] c"(eq\00", align 1
@.str620 = private unnamed_addr constant [4 x i8] c"(ne\00", align 1
@.str621 = private unnamed_addr constant [3 x i8] c"(!\00", align 1
@.str622 = private unnamed_addr constant [3 x i8] c"(~\00", align 1
@.str623 = private unnamed_addr constant [4 x i8] c"(++\00", align 1
@.str624 = private unnamed_addr constant [4 x i8] c"(--\00", align 1
@.str625 = private unnamed_addr constant [7 x i8] c"(atan2\00", align 1
@.str626 = private unnamed_addr constant [5 x i8] c"(cos\00", align 1
@.str627 = private unnamed_addr constant [5 x i8] c"(sin\00", align 1
@.str628 = private unnamed_addr constant [5 x i8] c"(exp\00", align 1
@.str629 = private unnamed_addr constant [5 x i8] c"(log\00", align 1
@.str630 = private unnamed_addr constant [6 x i8] c"(sqrt\00", align 1
@.str631 = private unnamed_addr constant [3 x i8] c"(x\00", align 1
@.str632 = private unnamed_addr constant [4 x i8] c"(x=\00", align 1
@.str633 = private unnamed_addr constant [3 x i8] c"(.\00", align 1
@.str634 = private unnamed_addr constant [4 x i8] c"(.=\00", align 1
@.str635 = private unnamed_addr constant [3 x i8] c"(=\00", align 1
@.str636 = private unnamed_addr constant [5 x i8] c"(neg\00", align 1
@.str637 = private unnamed_addr constant [5 x i8] c"(${}\00", align 1
@.str638 = private unnamed_addr constant [5 x i8] c"(@{}\00", align 1
@.str639 = private unnamed_addr constant [5 x i8] c"(%{}\00", align 1
@.str640 = private unnamed_addr constant [5 x i8] c"(*{}\00", align 1
@.str641 = private unnamed_addr constant [5 x i8] c"(&{}\00", align 1
@.str642 = private unnamed_addr constant [4 x i8] c"(<>\00", align 1
@.str643 = private unnamed_addr constant [5 x i8] c"(int\00", align 1
@.str644 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@PL_AMG_names = global [66 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str579, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str580, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str581, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str582, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str583, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str584, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str585, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str586, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str587, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str588, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str589, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str590, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str591, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str592, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str593, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str594, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str595, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str596, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str597, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str598, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str599, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str600, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str601, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str602, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str603, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str604, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str605, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str606, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str607, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str608, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str609, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str610, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str611, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str612, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str613, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str614, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str615, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str616, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str617, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str618, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str619, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str620, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str621, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str622, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str623, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str624, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str625, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str626, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str627, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str628, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str629, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str630, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str631, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str632, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str633, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str634, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str635, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str636, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str637, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str638, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str639, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str640, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str641, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str642, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str643, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str644, i32 0, i32 0)], align 16
@PL_origargc = common global i32 0, align 4
@PL_origargv = common global i8** null, align 8
@PL_envgv = common global %struct.gv* null, align 8
@PL_incgv = common global %struct.gv* null, align 8
@PL_hintgv = common global %struct.gv* null, align 8
@PL_origfilename = common global i8* null, align 8
@PL_diehook = common global %struct.sv* null, align 8
@PL_warnhook = common global %struct.sv* null, align 8
@PL_minus_c = common global i8 0, align 1
@PL_patchlevel = common global %struct.sv* null, align 8
@PL_localpatches = common global i8** null, align 8
@PL_preprocess = common global i8 0, align 1
@PL_minus_n = common global i8 0, align 1
@PL_minus_p = common global i8 0, align 1
@PL_minus_l = common global i8 0, align 1
@PL_minus_a = common global i8 0, align 1
@PL_minus_F = common global i8 0, align 1
@PL_doswitches = common global i8 0, align 1
@PL_dowarn = common global i8 0, align 1
@PL_widesyscalls = common global i8 0, align 1
@PL_doextract = common global i8 0, align 1
@PL_sawampersand = common global i8 0, align 1
@PL_unsafe = common global i8 0, align 1
@PL_inplace = common global i8* null, align 8
@PL_e_script = common global %struct.sv* null, align 8
@PL_perldb = common global i32 0, align 4
@PL_basetime = common global i64 0, align 8
@PL_formfeed = common global %struct.sv* null, align 8
@PL_multiline = common global i32 0, align 4
@PL_statusvalue = common global i32 0, align 4
@PL_exit_flags = common global i8 0, align 1
@PL_stdingv = common global %struct.gv* null, align 8
@PL_stderrgv = common global %struct.gv* null, align 8
@PL_defgv = common global %struct.gv* null, align 8
@PL_argvgv = common global %struct.gv* null, align 8
@PL_argvoutgv = common global %struct.gv* null, align 8
@PL_argvout_stack = common global %struct.av* null, align 8
@PL_replgv = common global %struct.gv* null, align 8
@PL_errgv = common global %struct.gv* null, align 8
@PL_DBgv = common global %struct.gv* null, align 8
@PL_DBline = common global %struct.gv* null, align 8
@PL_DBsub = common global %struct.gv* null, align 8
@PL_DBsingle = common global %struct.sv* null, align 8
@PL_DBtrace = common global %struct.sv* null, align 8
@PL_DBsignal = common global %struct.sv* null, align 8
@PL_lineary = common global %struct.av* null, align 8
@PL_dbargs = common global %struct.av* null, align 8
@PL_debstash = common global %struct.hv* null, align 8
@PL_globalstash = common global %struct.hv* null, align 8
@PL_curstname = common global %struct.sv* null, align 8
@PL_beginav = common global %struct.av* null, align 8
@PL_endav = common global %struct.av* null, align 8
@PL_checkav = common global %struct.av* null, align 8
@PL_initav = common global %struct.av* null, align 8
@PL_strtab = common global %struct.hv* null, align 8
@PL_sv_count = common global i32 0, align 4
@PL_sv_objcount = common global i32 0, align 4
@PL_sv_root = common global %struct.sv* null, align 8
@PL_sv_arenaroot = common global %struct.sv* null, align 8
@PL_forkprocess = common global i32 0, align 4
@PL_fdpid = common global %struct.av* null, align 8
@PL_tainting = common global i8 0, align 1
@PL_main_cv = common global %struct.cv* null, align 8
@PL_main_root = common global %struct.op* null, align 8
@PL_main_start = common global %struct.op* null, align 8
@PL_eval_root = common global %struct.op* null, align 8
@PL_eval_start = common global %struct.op* null, align 8
@PL_filemode = common global i32 0, align 4
@PL_lastfd = common global i32 0, align 4
@PL_oldname = common global i8* null, align 8
@PL_Argv = common global i8** null, align 8
@PL_Cmd = common global i8* null, align 8
@PL_preambled = common global i8 0, align 1
@PL_preambleav = common global %struct.av* null, align 8
@PL_mess_sv = common global %struct.sv* null, align 8
@PL_ors_sv = common global %struct.sv* null, align 8
@PL_ofmt = common global i8* null, align 8
@PL_modglobal = common global %struct.hv* null, align 8
@PL_compcv = common global %struct.cv* null, align 8
@PL_BINCOMPAT0 = common global %struct.av* null, align 8
@PL_comppad_name = common global %struct.av* null, align 8
@PL_comppad_name_fill = common global i32 0, align 4
@PL_comppad_name_floor = common global i32 0, align 4
@PL_DBcv = common global %struct.cv* null, align 8
@PL_linestart = common global i8* null, align 8
@PL_pending_ident = common global i8 0, align 1
@PL_sublex_info = common global %struct._sublex_info zeroinitializer, align 8
@PL_uid = common global i32 0, align 4
@PL_euid = common global i32 0, align 4
@PL_gid = common global i32 0, align 4
@PL_egid = common global i32 0, align 4
@PL_nomemok = common global i8 0, align 1
@PL_origenviron = common global i8** null, align 8
@PL_origalen = common global i32 0, align 4
@PL_pidstatus = common global %struct.hv* null, align 8
@PL_osname = common global i8* null, align 8
@PL_sighandlerp = common global void (i32)* null, align 8
@PL_xiv_arenaroot = common global %struct.xpv* null, align 8
@PL_xiv_root = common global i64* null, align 8
@PL_xnv_root = common global double* null, align 8
@PL_xrv_root = common global %struct.xrv* null, align 8
@PL_xpv_root = common global %struct.xpv* null, align 8
@PL_xpviv_root = common global %struct.xpviv* null, align 8
@PL_xpvnv_root = common global %struct.xpvnv* null, align 8
@PL_xpvcv_root = common global %struct.xpvcv* null, align 8
@PL_xpvav_root = common global %struct.xpvav* null, align 8
@PL_xpvhv_root = common global %struct.xpvhv* null, align 8
@PL_xpvmg_root = common global %struct.xpvmg* null, align 8
@PL_xpvlv_root = common global %struct.xpvlv* null, align 8
@PL_xpvbm_root = common global %struct.xpvbm* null, align 8
@PL_he_root = common global %struct.he* null, align 8
@PL_nice_chunk = common global i8* null, align 8
@PL_nice_chunk_size = common global i32 0, align 4
@PL_tokenbuf = common global [256 x i8] zeroinitializer, align 16
@PL_sv_undef = common global %struct.sv zeroinitializer, align 8
@PL_sv_no = common global %struct.sv zeroinitializer, align 8
@PL_sv_yes = common global %struct.sv zeroinitializer, align 8
@PL_lex_state = common global i32 0, align 4
@PL_lex_defer = common global i32 0, align 4
@PL_lex_expect = common global i32 0, align 4
@PL_lex_brackets = common global i32 0, align 4
@PL_lex_formbrack = common global i32 0, align 4
@PL_lex_casemods = common global i32 0, align 4
@PL_lex_dojoin = common global i32 0, align 4
@PL_lex_starts = common global i32 0, align 4
@PL_lex_stuff = common global %struct.sv* null, align 8
@PL_lex_repl = common global %struct.sv* null, align 8
@PL_lex_op = common global %struct.op* null, align 8
@PL_lex_inpat = common global %struct.op* null, align 8
@PL_lex_inwhat = common global i32 0, align 4
@PL_lex_brackstack = common global i8* null, align 8
@PL_lex_casestack = common global i8* null, align 8
@PL_nextval = common global [5 x %union.YYSTYPE] zeroinitializer, align 16
@PL_nexttype = common global [5 x i32] zeroinitializer, align 16
@PL_nexttoke = common global i32 0, align 4
@PL_linestr = common global %struct.sv* null, align 8
@PL_bufptr = common global i8* null, align 8
@PL_oldbufptr = common global i8* null, align 8
@PL_oldoldbufptr = common global i8* null, align 8
@PL_bufend = common global i8* null, align 8
@PL_multi_start = common global i32 0, align 4
@PL_multi_end = common global i32 0, align 4
@PL_multi_open = common global i32 0, align 4
@PL_multi_close = common global i32 0, align 4
@PL_error_count = common global i32 0, align 4
@PL_subline = common global i32 0, align 4
@PL_subname = common global %struct.sv* null, align 8
@PL_min_intro_pending = common global i32 0, align 4
@PL_max_intro_pending = common global i32 0, align 4
@PL_padix = common global i32 0, align 4
@PL_padix_floor = common global i32 0, align 4
@PL_pad_reset_pending = common global i32 0, align 4
@PL_last_uni = common global i8* null, align 8
@PL_last_lop = common global i8* null, align 8
@PL_last_lop_op = common global i16 0, align 2
@PL_in_my = common global i32 0, align 4
@PL_in_my_stash = common global %struct.hv* null, align 8
@PL_hints = common global i32 0, align 4
@PL_debug = common global i32 0, align 4
@PL_utf8_alnum = common global %struct.sv* null, align 8
@PL_utf8_alnumc = common global %struct.sv* null, align 8
@PL_utf8_ascii = common global %struct.sv* null, align 8
@PL_utf8_alpha = common global %struct.sv* null, align 8
@PL_utf8_space = common global %struct.sv* null, align 8
@PL_utf8_cntrl = common global %struct.sv* null, align 8
@PL_utf8_graph = common global %struct.sv* null, align 8
@PL_utf8_digit = common global %struct.sv* null, align 8
@PL_utf8_upper = common global %struct.sv* null, align 8
@PL_utf8_lower = common global %struct.sv* null, align 8
@PL_utf8_print = common global %struct.sv* null, align 8
@PL_utf8_punct = common global %struct.sv* null, align 8
@PL_utf8_xdigit = common global %struct.sv* null, align 8
@PL_utf8_mark = common global %struct.sv* null, align 8
@PL_utf8_toupper = common global %struct.sv* null, align 8
@PL_utf8_totitle = common global %struct.sv* null, align 8
@PL_utf8_tolower = common global %struct.sv* null, align 8
@PL_utf8_tofold = common global %struct.sv* null, align 8
@PL_last_swash_hv = common global %struct.hv* null, align 8
@PL_last_swash_klen = common global i32 0, align 4
@PL_last_swash_key = common global [10 x i8] zeroinitializer, align 1
@PL_last_swash_tmps = common global i8* null, align 8
@PL_last_swash_slen = common global i64 0, align 8
@PL_yydebug = common global i32 0, align 4
@PL_yynerrs = common global i32 0, align 4
@PL_yyerrflag = common global i32 0, align 4
@PL_yychar = common global i32 0, align 4
@PL_yyval = common global %union.YYSTYPE zeroinitializer, align 8
@PL_yylval = common global %union.YYSTYPE zeroinitializer, align 8
@PL_srand_called = common global i8 0, align 1
@PL_uudmap = common global [256 x i8] zeroinitializer, align 16
@PL_bitcount = common global i8* null, align 8
@PL_psig_ptr = common global %struct.sv** null, align 8
@PL_psig_name = common global %struct.sv** null, align 8
@PL_nullstash = common global %struct.hv* null, align 8
@PL_xnv_arenaroot = common global %struct.xpv* null, align 8
@PL_xrv_arenaroot = common global %struct.xpv* null, align 8
@PL_xpv_arenaroot = common global %struct.xpv* null, align 8
@PL_xpviv_arenaroot = common global %struct.xpviv* null, align 8
@PL_xpvnv_arenaroot = common global %struct.xpvnv* null, align 8
@PL_xpvcv_arenaroot = common global %struct.xpvcv* null, align 8
@PL_xpvav_arenaroot = common global %struct.xpvav* null, align 8
@PL_xpvhv_arenaroot = common global %struct.xpvhv* null, align 8
@PL_xpvmg_arenaroot = common global %struct.xpvmg* null, align 8
@PL_xpvlv_arenaroot = common global %struct.xpvlv* null, align 8
@PL_xpvbm_arenaroot = common global %struct.xpvbm* null, align 8
@PL_he_arenaroot = common global %struct.xpv* null, align 8
@PL_psig_pend = common global i32* null, align 8
@PL_custom_op_names = common global %struct.hv* null, align 8
@PL_custom_op_descs = common global %struct.hv* null, align 8
@PL_debug_pad = common global %struct.perl_debug_pad zeroinitializer, align 8
@PL_taint_warn = common global i8 0, align 1
@PL_utf8locale = common global i8 0, align 1
@PL_utf8_idstart = common global %struct.sv* null, align 8
@PL_utf8_idcont = common global %struct.sv* null, align 8
@PL_sort_RealCmp = common global i32 (%struct.sv*, %struct.sv*)* null, align 8
@PL_unicode = common global i32 0, align 4
@PL_signals = common global i32 0, align 4
@PL_stashcache = common global %struct.hv* null, align 8
@PL_reentrant_retint = common global i32 0, align 4
@PL_stack_sp = common global %struct.sv** null, align 8
@PL_op = common global %struct.op* null, align 8
@PL_curpad = common global %struct.sv** null, align 8
@PL_stack_base = common global %struct.sv** null, align 8
@PL_stack_max = common global %struct.sv** null, align 8
@PL_scopestack = common global i32* null, align 8
@PL_scopestack_ix = common global i32 0, align 4
@PL_scopestack_max = common global i32 0, align 4
@PL_savestack = common global %union.any* null, align 8
@PL_savestack_ix = common global i32 0, align 4
@PL_savestack_max = common global i32 0, align 4
@PL_tmps_stack = common global %struct.sv** null, align 8
@PL_tmps_max = common global i32 0, align 4
@PL_markstack = common global i32* null, align 8
@PL_markstack_ptr = common global i32* null, align 8
@PL_markstack_max = common global i32* null, align 8
@PL_retstack = common global %struct.op** null, align 8
@PL_retstack_ix = common global i32 0, align 4
@PL_retstack_max = common global i32 0, align 4
@PL_Sv = common global %struct.sv* null, align 8
@PL_Xpv = common global %struct.xpv* null, align 8
@PL_na = common global i64 0, align 8
@PL_statbuf = common global %struct.stat zeroinitializer, align 8
@PL_statcache = common global %struct.stat zeroinitializer, align 8
@PL_statgv = common global %struct.gv* null, align 8
@PL_tainted = common global i8 0, align 1
@PL_curpm = common global %struct.pmop* null, align 8
@PL_nrs = common global %struct.sv* null, align 8
@PL_rs = common global %struct.sv* null, align 8
@PL_last_in_gv = common global %struct.gv* null, align 8
@PL_ofs_sv = common global %struct.sv* null, align 8
@PL_defoutgv = common global %struct.gv* null, align 8
@PL_formtarget = common global %struct.sv* null, align 8
@PL_bodytarget = common global %struct.sv* null, align 8
@PL_toptarget = common global %struct.sv* null, align 8
@PL_defstash = common global %struct.hv* null, align 8
@PL_curstash = common global %struct.hv* null, align 8
@PL_restartop = common global %struct.op* null, align 8
@PL_in_eval = common global i32 0, align 4
@PL_delaymagic = common global i32 0, align 4
@PL_localizing = common global i32 0, align 4
@PL_curstack = common global %struct.av* null, align 8
@PL_curstackinfo = common global %struct.stackinfo* null, align 8
@PL_mainstack = common global %struct.av* null, align 8
@PL_top_env = common global %struct.jmpenv* null, align 8
@PL_start_env = common global %struct.jmpenv zeroinitializer, align 8
@PL_av_fetch_sv = common global %struct.sv* null, align 8
@PL_hv_fetch_sv = common global %struct.sv* null, align 8
@PL_hv_fetch_ent_mh = common global %struct.he* null, align 8
@PL_modcount = common global i32 0, align 4
@PL_lastgotoprobe = common global %struct.op* null, align 8
@PL_sortcop = common global %struct.op* null, align 8
@PL_sortstash = common global %struct.hv* null, align 8
@PL_firstgv = common global %struct.gv* null, align 8
@PL_secondgv = common global %struct.gv* null, align 8
@PL_sortcxix = common global i32 0, align 4
@PL_efloatbuf = common global i8* null, align 8
@PL_efloatsize = common global i64 0, align 8
@PL_screamfirst = common global i32* null, align 8
@PL_screamnext = common global i32* null, align 8
@PL_lastscream = common global %struct.sv* null, align 8
@PL_regdummy = common global %struct.regnode zeroinitializer, align 2
@PL_regcomp_parse = common global i8* null, align 8
@PL_regxend = common global i8* null, align 8
@PL_regcode = common global %struct.regnode* null, align 8
@PL_regnaughty = common global i32 0, align 4
@PL_regsawback = common global i32 0, align 4
@PL_regprecomp = common global i8* null, align 8
@PL_regnpar = common global i32 0, align 4
@PL_regsize = common global i32 0, align 4
@PL_regflags = common global i32 0, align 4
@PL_regseen = common global i32 0, align 4
@PL_seen_zerolen = common global i32 0, align 4
@PL_seen_evals = common global i32 0, align 4
@PL_regcomp_rx = common global %struct.regexp* null, align 8
@PL_extralen = common global i32 0, align 4
@PL_colorset = common global i32 0, align 4
@PL_colors = common global [6 x i8*] zeroinitializer, align 16
@PL_reg_whilem_seen = common global i32 0, align 4
@PL_reginput = common global i8* null, align 8
@PL_regbol = common global i8* null, align 8
@PL_regeol = common global i8* null, align 8
@PL_regstartp = common global i32* null, align 8
@PL_regendp = common global i32* null, align 8
@PL_reglastparen = common global i32* null, align 8
@PL_reglastcloseparen = common global i32* null, align 8
@PL_regtill = common global i8* null, align 8
@PL_regcompat1 = common global i8 0, align 1
@PL_reg_start_tmp = common global i8** null, align 8
@PL_reg_start_tmpl = common global i32 0, align 4
@PL_regdata = common global %struct.reg_data* null, align 8
@PL_bostr = common global i8* null, align 8
@PL_reg_flags = common global i32 0, align 4
@PL_reg_eval_set = common global i32 0, align 4
@PL_regnarrate = common global i32 0, align 4
@PL_regprogram = common global %struct.regnode* null, align 8
@PL_regcc = common global %struct.curcur* null, align 8
@PL_reg_call_cc = common global %struct.re_cc_state* null, align 8
@PL_reg_re = common global %struct.regexp* null, align 8
@PL_reg_ganch = common global i8* null, align 8
@PL_reg_sv = common global %struct.sv* null, align 8
@PL_reg_magic = common global %struct.magic* null, align 8
@PL_reg_oldpos = common global i32 0, align 4
@PL_reg_oldsaved = common global i8* null, align 8
@PL_reg_oldsavedlen = common global i64 0, align 8
@PL_reg_maxiter = common global i32 0, align 4
@PL_reg_leftiter = common global i32 0, align 4
@PL_reg_poscache_size = common global i64 0, align 8
@PL_watchok = common global i8* null, align 8
@PL_reg_match_utf8 = common global i8 0, align 1
@PL_comppad = common global %struct.av* null, align 8
@PL_curinterp = common global %struct.interpreter* null, align 8
@PL_sigfpe_saved = common global void (i32)* null, align 8
@PL_sv_placeholder = common global %struct.sv zeroinitializer, align 8

; Function Attrs: optsize
declare %struct.op* @Perl_pp_null() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_stub() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_scalar() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pushmark() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_wantarray() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_const() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gvsv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gelem() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_padsv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_padav() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_padhv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_padany() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pushre() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rv2gv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rv2sv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_av2arylen() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rv2cv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_anoncode() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_prototype() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_refgen() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_srefgen() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ref() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_bless() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_backtick() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_glob() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_readline() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rcatline() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_regcmaybe() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_regcreset() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_regcomp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_match() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_qr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_subst() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_substcont() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_trans() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sassign() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_aassign() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_schop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chomp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_schomp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_defined() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_undef() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_study() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pos() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_preinc() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_predec() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_postinc() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_postdec() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pow() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_multiply() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_multiply() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_divide() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_divide() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_modulo() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_modulo() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_repeat() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_add() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_add() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_subtract() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_subtract() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_concat() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_stringify() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_left_shift() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_right_shift() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_lt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_gt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_le() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_le() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ge() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_ge() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_eq() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_eq() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ne() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_ne() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ncmp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_ncmp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_slt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sgt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sle() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sge() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_seq() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sne() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_scmp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_bit_and() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_bit_xor() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_bit_or() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_negate() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_i_negate() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_not() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_complement() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_atan2() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sin() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_cos() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rand() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_srand() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_exp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_log() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sqrt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_int() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_hex() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_oct() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_abs() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_length() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_substr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_vec() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_index() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rindex() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sprintf() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_formline() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ord() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_crypt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ucfirst() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lcfirst() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_uc() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lc() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_quotemeta() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rv2av() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_aelemfast() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_aelem() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_aslice() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_each() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_values() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_keys() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_delete() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_exists() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rv2hv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_helem() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_hslice() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_unpack() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pack() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_split() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_join() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_list() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lslice() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_anonlist() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_anonhash() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_splice() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_push() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shift() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_unshift() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sort() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_reverse() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_grepstart() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_grepwhile() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_mapstart() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_mapwhile() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_range() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_flip() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_flop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_and() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_or() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_xor() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_cond_expr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_andassign() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_orassign() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_method() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_entersub() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leavesub() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leavesublv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_caller() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_warn() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_die() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_reset() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lineseq() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_nextstate() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_dbstate() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_unstack() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_enter() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leave() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_scope() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_enteriter() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_iter() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_enterloop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leaveloop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_return() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_last() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_next() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_redo() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_dump() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_goto() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_exit() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_open() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_close() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pipe_op() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fileno() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_umask() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_binmode() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_tie() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_untie() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_tied() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_dbmopen() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_dbmclose() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sselect() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_select() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getc() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_read() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_enterwrite() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leavewrite() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_prtf() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_print() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sysopen() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sysseek() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sysread() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_syswrite() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_send() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_recv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_eof() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_tell() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_seek() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_truncate() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fcntl() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ioctl() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_flock() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_socket() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sockpair() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_bind() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_connect() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_listen() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_accept() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shutdown() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gsockopt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ssockopt() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getsockname() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getpeername() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lstat() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_stat() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftrread() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftrwrite() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftrexec() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fteread() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftewrite() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fteexec() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftis() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fteowned() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftrowned() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftzero() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftsize() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftmtime() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftatime() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftctime() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftsock() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftchr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftblk() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftfile() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftdir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftpipe() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftlink() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftsuid() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftsgid() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftsvtx() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fttty() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fttext() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ftbinary() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chdir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chown() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chroot() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_unlink() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_chmod() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_utime() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rename() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_link() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_symlink() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_readlink() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_mkdir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rmdir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_open_dir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_readdir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_telldir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_seekdir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rewinddir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_closedir() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_fork() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_wait() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_waitpid() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_system() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_exec() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_kill() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getppid() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getpgrp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_setpgrp() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getpriority() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_setpriority() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_time() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_tms() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_localtime() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gmtime() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_alarm() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sleep() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shmget() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shmctl() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shmread() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shmwrite() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_msgget() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_msgctl() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_msgsnd() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_msgrcv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_semget() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_semctl() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_semop() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_require() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_dofile() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_entereval() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leaveeval() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_entertry() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_leavetry() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ghbyname() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ghbyaddr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ghostent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gnbyname() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gnbyaddr() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gnetent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gpbyname() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gpbynumber() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gprotoent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gsbyname() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gsbyport() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gservent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_shostent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_snetent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sprotoent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sservent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ehostent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_enetent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_eprotoent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_eservent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gpwnam() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gpwuid() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_gpwent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_spwent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_epwent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ggrnam() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ggrgid() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_ggrent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_sgrent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_egrent() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_getlogin() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_syscall() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_lock() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_threadsv() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_setstate() #0

; Function Attrs: optsize
declare %struct.op* @Perl_pp_method_named() #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_null(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_fun(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_svconst(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_rvconst(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_anoncode(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_spair(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_open(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_glob(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_match(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_sassign(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_defined(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_lfun(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_repeat(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_concat(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_bitop(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_lengthconst(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_substr(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_index(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_delete(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_exists(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_split(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_join(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_shift(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_sort(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_grep(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_method(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_subr(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_die(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_return(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_exit(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_select(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_eof(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_listiob(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_trunc(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_ftst(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_exec(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_require(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_eval(%struct.op*) #0

; Function Attrs: optsize
declare %struct.op* @Perl_ck_rfun(%struct.op*) #0

; Function Attrs: optsize
declare i32 @Perl_runops_standard() #0

; Function Attrs: optsize
declare void @Perl_sv_nosharing(%struct.sv*) #0

; Function Attrs: optsize
declare void @Perl_sv_nolocking(%struct.sv*) #0

; Function Attrs: optsize
declare void @Perl_sv_nounlocking(%struct.sv*) #0

; Function Attrs: optsize
declare i32 @Perl_nothreadhook() #0

; Function Attrs: optsize
declare i32 @Perl_runops_debug() #0

; Function Attrs: optsize
declare void @Perl_peep(%struct.op*) #0

; Function Attrs: optsize
declare %struct.regexp* @Perl_pregcomp(i8*, i8*, %struct.pmop*) #0

; Function Attrs: optsize
declare i32 @Perl_regexec_flags(%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32) #0

; Function Attrs: optsize
declare i8* @Perl_re_intuit_start(%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*) #0

; Function Attrs: optsize
declare %struct.sv* @Perl_re_intuit_string(%struct.regexp*) #0

; Function Attrs: optsize
declare void @Perl_pregfree(%struct.regexp*) #0

; Function Attrs: optsize
declare void @Perl_csighandler(i32) #0

; Function Attrs: optsize
declare i32 @Perl_magic_get(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_set(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_len(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_set_all_env(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clear_all_env(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setenv(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearenv(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getsig(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setsig(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearsig(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_sizepack(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_wipepack(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getpack(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setpack(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearpack(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setdbline(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setisa(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getarylen(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setarylen(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getglob(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setglob(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setmglob(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getnkeys(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setnkeys(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_gettaint(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_settaint(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getsubstr(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setsubstr(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getvec(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setvec(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getpos(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setpos(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setbm(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setfm(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getuvar(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setuvar(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getdefelem(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setdefelem(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setregexp(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_freeregexp(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_regdata_cnt(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_regdatum_get(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_regdatum_set(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setamagic(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_killbackrefs(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_freeovrld(%struct.sv*, %struct.magic*) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setutf8(%struct.sv*, %struct.magic*) #0

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_fprintf_nocontext(%struct._PerlIO** %stream, i8* %format, ...) #1 {
entry:
  %arglist = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %arglist, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %arglist to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i32 @PerlIO_vprintf(%struct._PerlIO** %stream, i8* %format, %struct.__va_list_tag* %arraydecay) #3
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: optsize
declare i32 @PerlIO_vprintf(%struct._PerlIO**, i8*, %struct.__va_list_tag*) #0

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_printf_nocontext(i8* %format, ...) #1 {
entry:
  %arglist = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %arglist, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %arglist to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call %struct._PerlIO** @Perl_PerlIO_stdout() #3
  %call3 = call i32 @PerlIO_vprintf(%struct._PerlIO** %call, i8* %format, %struct.__va_list_tag* %arraydecay) #3
  ret i32 %call3
}

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stdout() #0

attributes #0 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }
