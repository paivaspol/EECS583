; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/pp_sys.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, {}*, i64, i16, i16, i8, i8 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@PL_stack_sp = external global %struct.sv**
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@PL_Sv = external global %struct.sv*
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PL_tainting = external global i8
@.str1 = private unnamed_addr constant [3 x i8] c"``\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@PL_curcop = external global %struct.cop*
@PL_rs = external global %struct.sv*
@PL_sv_undef = external global %struct.sv
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_stack_max = external global %struct.sv**
@PL_statusvalue = external global i32
@PL_tainted = external global i8
@PL_amagic_generation = external global i64
@PL_no_security = external constant [0 x i8]
@.str5 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@PL_last_in_gv = external global %struct.gv*
@.str6 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@PL_sv_no = external global %struct.sv
@PL_errgv = external global %struct.gv*
@.str7 = private unnamed_addr constant [11 x i8] c"\09...caught\00", align 1
@.str8 = private unnamed_addr constant [27 x i8] c"Warning: something's wrong\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PL_sv_yes = external global %struct.sv
@.str10 = private unnamed_addr constant [10 x i8] c"PROPAGATE\00", align 1
@PL_markstack_max = external global i32*
@.str11 = private unnamed_addr constant [15 x i8] c"\09...propagated\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"Died\00", align 1
@PL_no_usym = external constant [0 x i8]
@.str13 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@PL_forkprocess = external global i32
@PL_defoutgv = external global %struct.gv*
@.str15 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@PL_no_func = external constant [0 x i8]
@.str16 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"FILENO\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"umask not implemented\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"BINMODE\00", align 1
@PL_dowarn = external global i8
@.str20 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"TIEARRAY\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"TIEHANDLE\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"TIESCALAR\00", align 1
@PL_curstackinfo = external global %struct.stackinfo*
@PL_curstack = external global %struct.av*
@.str24 = private unnamed_addr constant [49 x i8] c"Can't locate object method \22%s\22 via package \22%_\22\00", align 1
@PL_stderrgv = external global %struct.gv*
@.str25 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str26 = private unnamed_addr constant [49 x i8] c"Self-ties of arrays and hashes are not supported\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"UNTIE\00", align 1
@.str28 = private unnamed_addr constant [55 x i8] c"untie attempted while %lu inner references still exist\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"AnyDBM_File\00", align 1
@.str30 = private unnamed_addr constant [15 x i8] c"AnyDBM_File.pm\00", align 1
@.str31 = private unnamed_addr constant [23 x i8] c"No dbm on this machine\00", align 1
@PL_stdingv = external global %struct.gv*
@.str32 = private unnamed_addr constant [5 x i8] c"GETC\00", align 1
@.str33 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_utf8skip = external constant [0 x i8]
@.str34 = private unnamed_addr constant [29 x i8] c"Undefined format \22%s\22 called\00", align 1
@.str35 = private unnamed_addr constant [23 x i8] c"Not a format reference\00", align 1
@PL_formtarget = external global %struct.sv*
@PL_toptarget = external global %struct.sv*
@.str36 = private unnamed_addr constant [7 x i8] c"%s_TOP\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@PL_formfeed = external global %struct.sv*
@.str38 = private unnamed_addr constant [25 x i8] c"bad top format reference\00", align 1
@.str39 = private unnamed_addr constant [33 x i8] c"Undefined top format \22%s\22 called\00", align 1
@PL_markstack = external global i32*
@PL_scopestack_ix = external global i32
@PL_retstack_ix = external global i32
@PL_curpm = external global %struct.pmop*
@.str40 = private unnamed_addr constant [14 x i8] c"page overflow\00", align 1
@PL_bodytarget = external global %struct.sv*
@.str41 = private unnamed_addr constant [7 x i8] c"PRINTF\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str43 = private unnamed_addr constant [16 x i8] c"Negative length\00", align 1
@PL_no_sock_func = external constant [0 x i8]
@.str44 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str45 = private unnamed_addr constant [22 x i8] c"Offset outside string\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@PL_argvgv = external global %struct.gv*
@.str48 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str49 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"TELL\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@zero_but_true = internal global [11 x i8] c"0 but true\00", align 1
@.str52 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str55 = private unnamed_addr constant [55 x i8] c"Possible memory corruption: %s overflowed 3rd argument\00", align 1
@PL_op_name = external global [0 x i8*]
@.str56 = private unnamed_addr constant [8 x i8] c"flock()\00", align 1
@.str57 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str58 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str60 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str63 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str64 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str65 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str66 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str67 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@PL_defgv = external global %struct.gv*
@.str68 = private unnamed_addr constant [25 x i8] c"lstat() on filehandle %s\00", align 1
@PL_laststype = external global i32
@.str69 = private unnamed_addr constant [43 x i8] c"The stat preceding lstat() wasn't an lstat\00", align 1
@PL_statgv = external global %struct.gv*
@PL_statname = external global %struct.sv*
@PL_statcache = external global %struct.stat
@PL_laststatval = external global i32
@PL_warn_nl = external constant [0 x i8]
@.str70 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@PL_tmps_ix = external global i32
@PL_tmps_max = external global i32
@PL_euid = external global i32
@PL_uid = external global i32
@PL_basetime = external global i64
@.str71 = private unnamed_addr constant [41 x i8] c"-T and -B not implemented on filehandles\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PL_envgv = external global %struct.gv*
@.str73 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str74 = private unnamed_addr constant [7 x i8] c"LOGDIR\00", align 1
@.str75 = private unnamed_addr constant [37 x i8] c"chdir('') or chdir(undef) as chdir()\00", align 1
@.str76 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str77 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str78 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str79 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@PL_statbuf = external global %struct.stat
@.str80 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str81 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str82 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str83 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@PL_no_dir_func = external constant [0 x i8]
@.str84 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str85 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str86 = private unnamed_addr constant [8 x i8] c"telldir\00", align 1
@.str87 = private unnamed_addr constant [8 x i8] c"seekdir\00", align 1
@.str88 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str89 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str90 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_pidstatus = external global %struct.hv*
@PL_signals = external global i32
@PL_sig_pending = external global i32
@.str91 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str92 = private unnamed_addr constant [28 x i8] c"panic: kid popen errno read\00", align 1
@.str93 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str94 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str95 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str96 = private unnamed_addr constant [10 x i8] c"getpgrp()\00", align 1
@.str97 = private unnamed_addr constant [10 x i8] c"setpgrp()\00", align 1
@.str98 = private unnamed_addr constant [14 x i8] c"getpriority()\00", align 1
@.str99 = private unnamed_addr constant [14 x i8] c"setpriority()\00", align 1
@.str100 = private unnamed_addr constant [22 x i8] c"times not implemented\00", align 1
@Perl_pp_gmtime.dayname = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str103, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str106, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str107, i32 0, i32 0)], align 16
@.str101 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str102 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str103 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str104 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str105 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str106 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str107 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@Perl_pp_gmtime.monname = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str119, i32 0, i32 0)], align 16
@.str108 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str109 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str110 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str111 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str112 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str113 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str114 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str115 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str116 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str117 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str118 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str119 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str120 = private unnamed_addr constant [28 x i8] c"%s %s %2d %02d:%02d:%02d %d\00", align 1
@.str121 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str122 = private unnamed_addr constant [48 x i8] c"System V IPC is not implemented on this machine\00", align 1
@.str123 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str124 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@.str125 = private unnamed_addr constant [11 x i8] c"gethostent\00", align 1
@.str126 = private unnamed_addr constant [13 x i8] c"getnetbyname\00", align 1
@.str127 = private unnamed_addr constant [13 x i8] c"getnetbyaddr\00", align 1
@.str128 = private unnamed_addr constant [10 x i8] c"getnetent\00", align 1
@.str129 = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@.str130 = private unnamed_addr constant [17 x i8] c"getprotobynumber\00", align 1
@.str131 = private unnamed_addr constant [12 x i8] c"getprotoent\00", align 1
@.str132 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@.str133 = private unnamed_addr constant [14 x i8] c"getservbyport\00", align 1
@.str134 = private unnamed_addr constant [11 x i8] c"getservent\00", align 1
@.str135 = private unnamed_addr constant [11 x i8] c"sethostent\00", align 1
@.str136 = private unnamed_addr constant [10 x i8] c"setnetent\00", align 1
@.str137 = private unnamed_addr constant [12 x i8] c"setprotoent\00", align 1
@.str138 = private unnamed_addr constant [11 x i8] c"setservent\00", align 1
@.str139 = private unnamed_addr constant [11 x i8] c"endhostent\00", align 1
@.str140 = private unnamed_addr constant [10 x i8] c"endnetent\00", align 1
@.str141 = private unnamed_addr constant [12 x i8] c"endprotoent\00", align 1
@.str142 = private unnamed_addr constant [11 x i8] c"endservent\00", align 1
@.str143 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str144 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str145 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str146 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str147 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str148 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str149 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str150 = private unnamed_addr constant [9 x i8] c"getgrent\00", align 1
@.str151 = private unnamed_addr constant [9 x i8] c"setgrent\00", align 1
@.str152 = private unnamed_addr constant [9 x i8] c"endgrent\00", align 1
@.str153 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str154 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@PL_tmps_floor = external global i32
@PL_savestack_ix = external global i32
@PL_savestack_max = external global i32
@PL_comppad = external global %struct.av*
@PL_savestack = external global %union.any*

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_backtick() #0 {
entry:
  %n_a = alloca i64, align 8
  %tmpbuf = alloca [256 x i8], align 16
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !3
  store i64 %9, i64* %n_a, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %n_a, i32 2) #6
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = phi %struct.op* [ %1, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %10, %cond.true ], [ %call, %cond.false ]
  %op_flags = getelementptr inbounds %struct.op* %11, i64 0, i32 6
  %12 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %12 to i32
  %and2 = and i32 %conv, 3
  %cmp3 = icmp eq i32 %and2, 1
  br i1 %cmp3, label %cond.end26, label %cond.false6

cond.false6:                                      ; preds = %cond.end
  %cmp10 = icmp eq i32 %and2, 2
  br i1 %cmp10, label %cond.end26, label %cond.false13

cond.false13:                                     ; preds = %cond.false6
  %cmp17 = icmp eq i32 %and2, 3
  br i1 %cmp17, label %cond.end26, label %cond.false20

cond.false20:                                     ; preds = %cond.false13
  %call21 = call i32 @Perl_block_gimme() #6
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false6, %cond.false13, %cond.false20, %cond.end
  %cond27 = phi i32 [ 128, %cond.end ], [ 0, %cond.false6 ], [ %call21, %cond.false20 ], [ 1, %cond.false13 ]
  %13 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end26
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %cond.end26, %if.then
  %14 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %14, i64 0, i32 7
  %15 = load i8* %op_private, align 1, !tbaa !1
  %conv28 = zext i8 %15 to i32
  %and29 = and i32 %conv28, 16
  %tobool30 = icmp eq i32 %and29, 0
  br i1 %tobool30, label %if.else, label %if.end38

if.else:                                          ; preds = %if.end
  %and34 = and i32 %conv28, 32
  %tobool35 = icmp eq i32 %and34, 0
  %. = select i1 %tobool35, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end
  %mode.0 = phi i8* [ getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), %if.end ], [ %., %if.else ]
  %call39 = call %struct._PerlIO** @Perl_my_popen(i8* %cond, i8* %mode.0) #6
  %tobool40 = icmp eq %struct._PerlIO** %call39, null
  br i1 %tobool40, label %if.else140, label %if.then41

if.then41:                                        ; preds = %if.end38
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_io = getelementptr inbounds %struct.cop* %16, i64 0, i32 15
  %17 = load %struct.sv** %cop_io, align 8, !tbaa !0
  %tobool42 = icmp eq %struct.sv* %17, null
  br i1 %tobool42, label %if.end64, label %if.then43

if.then43:                                        ; preds = %if.then41
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_io44 = getelementptr inbounds %struct.cop* %18, i64 0, i32 15
  %19 = load %struct.sv** %cop_io44, align 8, !tbaa !0
  %sv_flags45 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags45, align 4, !tbaa !4
  %and46 = and i32 %20, 262144
  %cmp47 = icmp eq i32 %and46, 0
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_io50 = getelementptr inbounds %struct.cop* %21, i64 0, i32 15
  %22 = load %struct.sv** %cop_io50, align 8, !tbaa !0
  br i1 %cmp47, label %cond.false53, label %cond.true49

cond.true49:                                      ; preds = %if.then43
  %sv_any51 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %23 = load i8** %sv_any51, align 8, !tbaa !0
  %xpv_pv52 = bitcast i8* %23 to i8**
  %24 = load i8** %xpv_pv52, align 8, !tbaa !0
  br label %if.end58

cond.false53:                                     ; preds = %if.then43
  %call55 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %22) #6
  br label %if.end58

if.end58:                                         ; preds = %cond.true49, %cond.false53
  %type.0 = phi i8* [ %24, %cond.true49 ], [ %call55, %cond.false53 ]
  %tobool59 = icmp eq i8* %type.0, null
  br i1 %tobool59, label %if.end64, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end58
  %25 = load i8* %type.0, align 1, !tbaa !1
  %tobool61 = icmp eq i8 %25, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %land.lhs.true
  %call63 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %call39, i8* %mode.0, i8* %type.0) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then41, %land.lhs.true, %if.end58, %if.then62
  switch i32 %cond27, label %for.cond.preheader [
    i32 128, label %if.then67
    i32 0, label %if.then74
  ]

for.cond.preheader:                               ; preds = %if.end64
  %call94190 = call %struct.sv* @Perl_newSV(i64 79) #6
  %call95191 = call i8* @Perl_sv_gets(%struct.sv* %call94190, %struct._PerlIO** %call39, i32 0) #6
  %cmp96192 = icmp eq i8* %call95191, null
  br i1 %cmp96192, label %if.then98, label %if.end99

if.then67:                                        ; preds = %if.end64
  %26 = getelementptr inbounds [256 x i8]* %tmpbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %26) #2
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then67
  %call68 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %call39, i8* %26, i64 256) #6
  %cmp69 = icmp sgt i64 %call68, 0
  br i1 %cmp69, label %while.cond, label %if.end133

if.then74:                                        ; preds = %if.end64
  call void @Perl_push_scope() #6
  call void @Perl_save_sptr(%struct.sv** @PL_rs) #6
  store %struct.sv* @PL_sv_undef, %struct.sv** @PL_rs, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #6
  %sv_any76 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  br label %while.cond75

while.cond75:                                     ; preds = %while.cond75, %if.then74
  %27 = load i8** %sv_any76, align 8, !tbaa !0
  %xpv_cur77 = getelementptr inbounds i8* %27, i64 8
  %28 = bitcast i8* %xpv_cur77 to i64*
  %29 = load i64* %28, align 8, !tbaa !3
  %conv78 = trunc i64 %29 to i32
  %call79 = call i8* @Perl_sv_gets(%struct.sv* %4, %struct._PerlIO** %call39, i32 %conv78) #6
  %cmp80 = icmp eq i8* %call79, null
  br i1 %cmp80, label %while.end83, label %while.cond75

while.end83:                                      ; preds = %while.cond75
  call void @Perl_pop_scope() #6
  %30 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp84 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %while.end83
  %call87 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr, %struct.sv** %incdec.ptr, i32 1) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %while.end83
  %sp.0 = phi %struct.sv** [ %call87, %if.then86 ], [ %incdec.ptr, %while.end83 ]
  %incdec.ptr89 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr89, align 8, !tbaa !0
  %31 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool90 = icmp eq i8 %31, 0
  br i1 %tobool90, label %if.end133, label %if.then91

if.then91:                                        ; preds = %if.end88
  call void @Perl_sv_taint(%struct.sv* %4) #6
  br label %if.end133

if.then98:                                        ; preds = %for.cond.backedge, %for.cond.preheader
  %call94.lcssa = phi %struct.sv* [ %call94190, %for.cond.preheader ], [ %call94, %for.cond.backedge ]
  %sp.1.lcssa = phi %struct.sv** [ %incdec.ptr, %for.cond.preheader ], [ %incdec.ptr110, %for.cond.backedge ]
  call void @Perl_sv_free(%struct.sv* %call94.lcssa) #6
  br label %if.end133

if.end99:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %call94194 = phi %struct.sv* [ %call94, %for.cond.backedge ], [ %call94190, %for.cond.preheader ]
  %sp.1193 = phi %struct.sv** [ %incdec.ptr110, %for.cond.backedge ], [ %incdec.ptr, %for.cond.preheader ]
  %32 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast100 = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.rhs.cast101 = ptrtoint %struct.sv** %sp.1193 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %cmp104 = icmp slt i64 %sub.ptr.sub102, 8
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end99
  %call107 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1193, %struct.sv** %sp.1193, i32 1) #6
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end99
  %sp.2 = phi %struct.sv** [ %call107, %if.then106 ], [ %sp.1193, %if.end99 ]
  %call109 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call94194) #6
  %incdec.ptr110 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call109, %struct.sv** %incdec.ptr110, align 8, !tbaa !0
  %sv_any111 = getelementptr inbounds %struct.sv* %call94194, i64 0, i32 0
  %33 = load i8** %sv_any111, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %33, i64 16
  %34 = bitcast i8* %xpv_len to i64*
  %35 = load i64* %34, align 8, !tbaa !3
  %xpv_cur113 = getelementptr inbounds i8* %33, i64 8
  %36 = bitcast i8* %xpv_cur113 to i64*
  %37 = load i64* %36, align 8, !tbaa !3
  %sub = sub i64 %35, %37
  %cmp114 = icmp ugt i64 %sub, 20
  br i1 %cmp114, label %if.then116, label %if.end128

if.then116:                                       ; preds = %if.end108
  %add = add i64 %37, 1
  store i64 %add, i64* %34, align 8, !tbaa !3
  %xpv_pv122 = bitcast i8* %33 to i8**
  %38 = load i8** %xpv_pv122, align 8, !tbaa !0
  %call125 = call i8* @Perl_safesysrealloc(i8* %38, i64 %add) #6
  %39 = load i8** %sv_any111, align 8, !tbaa !0
  %xpv_pv127 = bitcast i8* %39 to i8**
  store i8* %call125, i8** %xpv_pv127, align 8, !tbaa !0
  br label %if.end128

if.end128:                                        ; preds = %if.then116, %if.end108
  %40 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool129 = icmp eq i8 %40, 0
  br i1 %tobool129, label %for.cond.backedge, label %if.then130

if.then130:                                       ; preds = %if.end128
  call void @Perl_sv_taint(%struct.sv* %call94194) #6
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then130, %if.end128
  %call94 = call %struct.sv* @Perl_newSV(i64 79) #6
  %call95 = call i8* @Perl_sv_gets(%struct.sv* %call94, %struct._PerlIO** %call39, i32 0) #6
  %cmp96 = icmp eq i8* %call95, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.end133:                                        ; preds = %while.cond, %if.end88, %if.then98, %if.then91
  %sp.3 = phi %struct.sv** [ %incdec.ptr89, %if.then91 ], [ %incdec.ptr89, %if.end88 ], [ %sp.1.lcssa, %if.then98 ], [ %incdec.ptr, %while.cond ]
  %call134 = call i32 @Perl_my_pclose(%struct._PerlIO** %call39) #6
  %cmp135 = icmp eq i32 %call134, -1
  %and138 = and i32 %call134, 65535
  %call134.and138 = select i1 %cmp135, i32 -1, i32 %and138
  store i32 %call134.and138, i32* @PL_statusvalue, align 4, !tbaa !4
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %return

if.else140:                                       ; preds = %if.end38
  store i32 -1, i32* @PL_statusvalue, align 4, !tbaa !4
  %cmp146 = icmp eq i32 %cond27, 0
  br i1 %cmp146, label %if.then148, label %return

if.then148:                                       ; preds = %if.else140
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end133, %if.else140, %if.then148
  %storemerge188 = phi %struct.sv** [ %0, %if.then148 ], [ %sp.3, %if.end133 ], [ %incdec.ptr, %if.else140 ]
  store %struct.sv** %storemerge188, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_block_gimme() #1

; Function Attrs: optsize
declare void @Perl_taint_proper(i8*, i8*) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_my_popen(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @PerlIO_apply_layers(%struct._PerlIO**, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_read(%struct._PerlIO**, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_gets(%struct.sv*, %struct._PerlIO**, i32) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_my_pclose(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_glob() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %0, i64 0, i32 6
  %1 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %1, 64
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %2, i64 -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %0, i64 0, i32 3
  %3 = load i64* %op_targ, align 8, !tbaa !3
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.sv** [ %incdec.ptr, %cond.true ], [ %arrayidx, %cond.false ]
  %cond = load %struct.sv** %cond.in, align 8
  %5 = load i64* @PL_amagic_generation, align 8, !tbaa !3
  %tobool3 = icmp eq i64 %5, 0
  br i1 %tobool3, label %if.end15, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.sv** %6, i64 -1
  %7 = load %struct.sv** %arrayidx4, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !4
  %and5 = and i32 %8, 268435456
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %7, %struct.sv* @PL_sv_undef, i32 63, i32 9) #6
  %tobool7 = icmp eq %struct.sv* %call, null
  br i1 %tobool7, label %if.end15, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %9 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %9, i64 -1
  tail call void @Perl_sv_setsv_flags(%struct.sv* %cond, %struct.sv* %call, i32 2) #6
  %sv_flags9 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %10 = load i32* %sv_flags9, align 4, !tbaa !4
  %and10 = and i32 %10, 16384
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then8
  %call13 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #6
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then12
  store %struct.sv* %cond, %struct.sv** %add.ptr, align 8, !tbaa !0
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %11, i64 0, i32 0
  %12 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.then, %cond.end
  tail call void @Perl_push_scope() #6
  %13 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool16 = icmp eq i8 %13, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  tail call void @Perl_taint_proper(i8* getelementptr inbounds ([0 x i8]* @PL_no_security, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.then17
  tail call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_last_in_gv to %struct.sv**)) #6
  %14 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr19 = getelementptr inbounds %struct.sv** %14, i64 -1
  store %struct.sv** %incdec.ptr19, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.sv** %14, align 8, !tbaa !0
  %16 = bitcast %struct.sv* %15 to %struct.gv*
  store %struct.gv* %16, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  tail call void @Perl_save_sptr(%struct.sv** @PL_rs) #6
  %call20 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i64 1) #6
  %call21 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20) #6
  store %struct.sv* %call21, %struct.sv** @PL_rs, align 8, !tbaa !0
  %call22 = tail call %struct.op* @Perl_do_readline() #6
  tail call void @Perl_pop_scope() #6
  br label %return

return:                                           ; preds = %if.end18, %if.end
  %retval.0 = phi %struct.op* [ %12, %if.end ], [ %call22, %if.end18 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_amagic_call(%struct.sv*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare %struct.op* @Perl_do_readline() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_rcatline() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_sv = getelementptr inbounds %struct.op* %0, i64 1
  %1 = bitcast %struct.op* %op_sv to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %3 = bitcast %struct.sv* %2 to %struct.gv*
  store %struct.gv* %3, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call = tail call %struct.op* @Perl_do_readline() #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_warn() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp eq i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  call void @Perl_do_join(%struct.sv* %7, %struct.sv* @PL_sv_no, %struct.sv** %add.ptr, %struct.sv** %0) #6
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.sv** %0, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmpsv.0 = phi %struct.sv* [ %7, %if.then ], [ %8, %if.else ]
  %sp.0 = phi %struct.sv** [ %add.ptr1, %if.then ], [ %0, %if.else ]
  %sv_flags = getelementptr inbounds %struct.sv* %tmpsv.0, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %9, 262144
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %tmpsv.0, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur to i64*
  %12 = load i64* %11, align 8, !tbaa !3
  store i64 %12, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %10 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %tmpsv.0, i64* %len, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  %tobool = icmp eq i8* %cond, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %14 = load i64* %len, align 8, !tbaa !3
  %tobool4 = icmp eq i64 %14, 0
  %15 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %tobool5 = icmp ne %struct.gv* %15, null
  %or.cond = and i1 %tobool4, %tobool5
  br i1 %or.cond, label %if.then6, label %if.end35

land.lhs.true:                                    ; preds = %cond.end
  %.old = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %tobool5.old = icmp eq %struct.gv* %.old, null
  br i1 %tobool5.old, label %if.then39, label %if.then6

if.then6:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %16 = phi %struct.gv* [ %.old, %land.lhs.true ], [ %15, %lor.lhs.false ]
  %sv_any7 = getelementptr inbounds %struct.gv* %16, i64 0, i32 0
  %17 = load %struct.xpvgv** %sv_any7, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %17, i64 0, i32 7
  %18 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %18, i64 0, i32 0
  %19 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags8 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags8, align 4, !tbaa !4
  %and9 = and i32 %20, 252
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then6
  %call11 = call signext i8 @Perl_sv_upgrade(%struct.sv* %19, i32 4) #6
  %.pre = load i32* %sv_flags8, align 4, !tbaa !4
  br label %lor.end

lor.end:                                          ; preds = %if.then6, %lor.rhs
  %21 = phi i32 [ %20, %if.then6 ], [ %.pre, %lor.rhs ]
  %and14 = and i32 %21, 262144
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end21, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %lor.end
  %sv_any17 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %22 = load i8** %sv_any17, align 8, !tbaa !0
  %xpv_cur18 = getelementptr inbounds i8* %22, i64 8
  %23 = bitcast i8* %xpv_cur18 to i64*
  %24 = load i64* %23, align 8, !tbaa !3
  %tobool19 = icmp eq i64 %24, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true16
  call void @Perl_sv_catpv(%struct.sv* %19, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #6
  %.pre67 = load i32* %sv_flags8, align 4, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true16, %lor.end, %if.then20
  %25 = phi i32 [ %21, %land.lhs.true16 ], [ %21, %lor.end ], [ %.pre67, %if.then20 ]
  %and23 = and i32 %25, 262144
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %cond.false31, label %cond.true26

cond.true26:                                      ; preds = %if.end21
  %sv_any27 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %26 = load i8** %sv_any27, align 8, !tbaa !0
  %xpv_cur28 = getelementptr inbounds i8* %26, i64 8
  %27 = bitcast i8* %xpv_cur28 to i64*
  %28 = load i64* %27, align 8, !tbaa !3
  store i64 %28, i64* %len, align 8, !tbaa !3
  %xpv_pv30 = bitcast i8* %26 to i8**
  %29 = load i8** %xpv_pv30, align 8, !tbaa !0
  br label %if.end35

cond.false31:                                     ; preds = %if.end21
  %call32 = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %len, i32 2) #6
  %.pre68 = load i64* %len, align 8, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %cond.true26, %cond.false31, %lor.lhs.false
  %30 = phi i64 [ %14, %lor.lhs.false ], [ %28, %cond.true26 ], [ %.pre68, %cond.false31 ]
  %tmps.0 = phi i8* [ %cond, %lor.lhs.false ], [ %29, %cond.true26 ], [ %call32, %cond.false31 ]
  %tmpsv.1 = phi %struct.sv* [ %tmpsv.0, %lor.lhs.false ], [ %19, %cond.true26 ], [ %19, %cond.false31 ]
  %tobool36 = icmp eq i8* %tmps.0, null
  %tobool38 = icmp eq i64 %30, 0
  %or.cond63 = or i1 %tobool36, %tobool38
  br i1 %or.cond63, label %if.then39, label %if.end42

if.then39:                                        ; preds = %land.lhs.true, %if.end35
  %call40 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([27 x i8]* @.str8, i64 0, i64 0), i64 26) #6
  %call41 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call40) #6
  br label %if.end42

if.end42:                                         ; preds = %if.end35, %if.then39
  %tmpsv.2 = phi %struct.sv* [ %call41, %if.then39 ], [ %tmpsv.1, %if.end35 ]
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), %struct.sv* %tmpsv.2) #6
  store %struct.sv* @PL_sv_yes, %struct.sv** %sp.0, align 8, !tbaa !0
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %31, i64 0, i32 0
  %32 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %32
}

; Function Attrs: optsize
declare void @Perl_do_join(%struct.sv*, %struct.sv*, %struct.sv**, %struct.sv**) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_die() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp eq i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  call void @Perl_do_join(%struct.sv* %7, %struct.sv* @PL_sv_no, %struct.sv** %add.ptr, %struct.sv** %0) #6
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %8, 262144
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !3
  store i64 %11, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %7, i64* %len, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call, %cond.false ]
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr3 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags4 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags4, align 4, !tbaa !4
  %and5 = and i32 %14, 524288
  %tobool = icmp eq i32 %and5, 0
  br i1 %tobool, label %cond.false7, label %if.then24

cond.false7:                                      ; preds = %if.else
  %and9 = and i32 %14, 262144
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %cond.false16, label %cond.true11

cond.true11:                                      ; preds = %cond.false7
  %sv_any12 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %15 = load i8** %sv_any12, align 8, !tbaa !0
  %xpv_cur13 = getelementptr inbounds i8* %15, i64 8
  %16 = bitcast i8* %xpv_cur13 to i64*
  %17 = load i64* %16, align 8, !tbaa !3
  store i64 %17, i64* %len, align 8, !tbaa !3
  %xpv_pv15 = bitcast i8* %15 to i8**
  %18 = load i8** %xpv_pv15, align 8, !tbaa !0
  br label %if.end

cond.false16:                                     ; preds = %cond.false7
  %call17 = call i8* @Perl_sv_2pv_flags(%struct.sv* %13, i64* %len, i32 2) #6
  br label %if.end

if.end:                                           ; preds = %cond.false16, %cond.true11, %cond.end
  %multiarg.0 = phi i8 [ 1, %cond.end ], [ 0, %cond.true11 ], [ 0, %cond.false16 ]
  %tmpsv.0 = phi %struct.sv* [ %7, %cond.end ], [ %13, %cond.true11 ], [ %13, %cond.false16 ]
  %tmps.0 = phi i8* [ %cond, %cond.end ], [ %18, %cond.true11 ], [ %call17, %cond.false16 ]
  %sp.0 = phi %struct.sv** [ %add.ptr3, %cond.end ], [ %0, %cond.true11 ], [ %0, %cond.false16 ]
  %tobool22 = icmp eq i8* %tmps.0, null
  %19 = load i64* %len, align 8, !tbaa !3
  %tobool23 = icmp eq i64 %19, 0
  %or.cond = or i1 %tobool22, %tobool23
  br i1 %or.cond, label %if.then24, label %if.end139

if.then24:                                        ; preds = %if.else, %if.end
  %sp.0196 = phi %struct.sv** [ %sp.0, %if.end ], [ %0, %if.else ]
  %tmpsv.0195 = phi %struct.sv* [ %tmpsv.0, %if.end ], [ %13, %if.else ]
  %multiarg.0194 = phi i8 [ %multiarg.0, %if.end ], [ 0, %if.else ]
  %20 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any25 = getelementptr inbounds %struct.gv* %20, i64 0, i32 0
  %21 = load %struct.xpvgv** %sv_any25, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %21, i64 0, i32 7
  %22 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %22, i64 0, i32 0
  %23 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags26 = getelementptr inbounds %struct.sv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags26, align 4, !tbaa !4
  %and27 = and i32 %24, 252
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then24
  %call29 = call signext i8 @Perl_sv_upgrade(%struct.sv* %23, i32 4) #6
  br label %lor.end

lor.end:                                          ; preds = %if.then24, %lor.rhs
  %tobool32 = icmp eq i8 %multiarg.0194, 0
  br i1 %tobool32, label %cond.false37, label %cond.true33

cond.true33:                                      ; preds = %lor.end
  %25 = load i32* %sv_flags26, align 4, !tbaa !4
  %and35 = and i32 %25, 524288
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %if.else116, label %if.else48

cond.false37:                                     ; preds = %lor.end
  %sv_flags38 = getelementptr inbounds %struct.sv* %tmpsv.0195, i64 0, i32 2
  %26 = load i32* %sv_flags38, align 4, !tbaa !4
  %and39 = and i32 %26, 524288
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %cond.false37.if.else116_crit_edge, label %if.then43

cond.false37.if.else116_crit_edge:                ; preds = %cond.false37
  %.pre200 = load i32* %sv_flags26, align 4, !tbaa !4
  br label %if.else116

if.then43:                                        ; preds = %cond.false37
  %cmp44 = icmp eq %struct.sv* %23, %tmpsv.0195
  br i1 %cmp44, label %if.end114, label %if.then46

if.then46:                                        ; preds = %if.then43
  call void @Perl_sv_setsv_flags(%struct.sv* %23, %struct.sv* %tmpsv.0195, i32 2) #6
  br label %if.end114

if.else48:                                        ; preds = %cond.true33
  %call49 = call i32 @Perl_sv_isobject(%struct.sv* %23) #6
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %if.end114, label %if.then51

if.then51:                                        ; preds = %if.else48
  %sv_any52 = getelementptr inbounds %struct.sv* %23, i64 0, i32 0
  %27 = load i8** %sv_any52, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %27 to %struct.sv**
  %28 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any53 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %29 = load i8** %sv_any53, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %29, i64 48
  %30 = bitcast i8* %xmg_stash to %struct.hv**
  %31 = load %struct.hv** %30, align 8, !tbaa !0
  %call54 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %31, i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0)) #6
  %tobool55 = icmp eq %struct.gv* %call54, null
  br i1 %tobool55, label %if.end114, label %if.then56

if.then56:                                        ; preds = %if.then51
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv = getelementptr inbounds %struct.cop* %32, i64 0, i32 10
  %33 = load %struct.gv** %cop_filegv, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.gv* %33, null
  br i1 %tobool57, label %cond.end79, label %cond.true58

cond.true58:                                      ; preds = %if.then56
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv59 = getelementptr inbounds %struct.cop* %34, i64 0, i32 10
  %35 = load %struct.gv** %cop_filegv59, align 8, !tbaa !0
  %sv_any60 = getelementptr inbounds %struct.gv* %35, i64 0, i32 0
  %36 = load %struct.xpvgv** %sv_any60, align 8, !tbaa !0
  %xgv_gp61 = getelementptr inbounds %struct.xpvgv* %36, i64 0, i32 7
  %37 = load %struct.gp** %xgv_gp61, align 8, !tbaa !0
  %gp_sv62 = getelementptr inbounds %struct.gp* %37, i64 0, i32 0
  %38 = load %struct.sv** %gp_sv62, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.sv* %38, null
  br i1 %tobool63, label %cond.end79, label %cond.true65

cond.true65:                                      ; preds = %cond.true58
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv69 = getelementptr inbounds %struct.cop* %40, i64 0, i32 10
  %41 = load %struct.gv** %cop_filegv69, align 8, !tbaa !0
  %sv_any70 = getelementptr inbounds %struct.gv* %41, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any70, align 8, !tbaa !0
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp71, align 8, !tbaa !0
  %gp_sv72 = getelementptr inbounds %struct.gp* %43, i64 0, i32 0
  %44 = load %struct.sv** %gp_sv72, align 8, !tbaa !0
  %sv_any76 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %45 = load i8** %sv_any76, align 8, !tbaa !0
  %xpv_pv77 = bitcast i8* %45 to i8**
  %46 = load i8** %xpv_pv77, align 8, !tbaa !0
  br label %cond.end79

cond.end79:                                       ; preds = %cond.true58, %if.then56, %cond.true65
  %cond80 = phi i8* [ %46, %cond.true65 ], [ null, %if.then56 ], [ null, %cond.true58 ]
  %call81 = call %struct.sv* @Perl_newSVpv(i8* %cond80, i64 0) #6
  %call82 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call81) #6
  %47 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line = getelementptr inbounds %struct.cop* %47, i64 0, i32 13
  %48 = load i32* %cop_line, align 4, !tbaa !4
  %conv83 = zext i32 %48 to i64
  %call84 = call %struct.sv* @Perl_newSVuv(i64 %conv83) #6
  %call85 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call84) #6
  %49 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast86 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast87 = ptrtoint %struct.sv** %sp.0196 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %cmp90 = icmp slt i64 %sub.ptr.sub88, 24
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %cond.end79
  %call93 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0196, %struct.sv** %sp.0196, i32 3) #6
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %cond.end79
  %sp.1 = phi %struct.sv** [ %call93, %if.then92 ], [ %sp.0196, %cond.end79 ]
  %50 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr95 = getelementptr inbounds i32* %50, i64 1
  store i32* %incdec.ptr95, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %51 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp96 = icmp eq i32* %incdec.ptr95, %51
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end94
  call void @Perl_markstack_grow() #6
  %.pre198 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end94
  %52 = phi i32* [ %.pre198, %if.then98 ], [ %incdec.ptr95, %if.end94 ]
  %53 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast100 = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.rhs.cast101 = ptrtoint %struct.sv** %53 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %sub.ptr.div103189 = lshr exact i64 %sub.ptr.sub102, 3
  %conv104 = trunc i64 %sub.ptr.div103189 to i32
  store i32 %conv104, i32* %52, align 4, !tbaa !4
  %incdec.ptr105 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %23, %struct.sv** %incdec.ptr105, align 8, !tbaa !0
  %incdec.ptr106 = getelementptr inbounds %struct.sv** %sp.1, i64 2
  store %struct.sv* %call82, %struct.sv** %incdec.ptr106, align 8, !tbaa !0
  %incdec.ptr107 = getelementptr inbounds %struct.sv** %sp.1, i64 3
  store %struct.sv* %call85, %struct.sv** %incdec.ptr107, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr107, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_any108 = getelementptr inbounds %struct.gv* %call54, i64 0, i32 0
  %54 = load %struct.xpvgv** %sv_any108, align 8, !tbaa !0
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv* %54, i64 0, i32 7
  %55 = load %struct.gp** %xgv_gp109, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %55, i64 0, i32 7
  %56 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %57 = bitcast %struct.cv* %56 to %struct.sv*
  %call110 = call i32 @Perl_call_sv(%struct.sv* %57, i32 20) #6
  %58 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr111 = getelementptr inbounds %struct.sv** %58, i64 -1
  store %struct.sv** %incdec.ptr111, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %59 = load %struct.sv** %58, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %23, %struct.sv* %59, i32 2) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then51, %if.else48, %if.then43, %if.end99, %if.then46
  %call115 = call %struct.op* (i8*, ...)* @Perl_die(i8* null) #6
  br label %return

if.else116:                                       ; preds = %cond.false37.if.else116_crit_edge, %cond.true33
  %60 = phi i32 [ %.pre200, %cond.false37.if.else116_crit_edge ], [ %25, %cond.true33 ]
  %and118 = and i32 %60, 262144
  %tobool119 = icmp eq i32 %and118, 0
  br i1 %tobool119, label %if.end124, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else116
  %sv_any120 = getelementptr inbounds %struct.sv* %23, i64 0, i32 0
  %61 = load i8** %sv_any120, align 8, !tbaa !0
  %xpv_cur121 = getelementptr inbounds i8* %61, i64 8
  %62 = bitcast i8* %xpv_cur121 to i64*
  %63 = load i64* %62, align 8, !tbaa !3
  %tobool122 = icmp eq i64 %63, 0
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %land.lhs.true
  call void @Perl_sv_catpv(%struct.sv* %23, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0)) #6
  %.pre = load i32* %sv_flags26, align 4, !tbaa !4
  br label %if.end124

if.end124:                                        ; preds = %land.lhs.true, %if.else116, %if.then123
  %64 = phi i32 [ %60, %land.lhs.true ], [ %60, %if.else116 ], [ %.pre, %if.then123 ]
  %and126 = and i32 %64, 262144
  %cmp127 = icmp eq i32 %and126, 0
  br i1 %cmp127, label %cond.false134, label %cond.true129

cond.true129:                                     ; preds = %if.end124
  %sv_any130 = getelementptr inbounds %struct.sv* %23, i64 0, i32 0
  %65 = load i8** %sv_any130, align 8, !tbaa !0
  %xpv_cur131 = getelementptr inbounds i8* %65, i64 8
  %66 = bitcast i8* %xpv_cur131 to i64*
  %67 = load i64* %66, align 8, !tbaa !3
  store i64 %67, i64* %len, align 8, !tbaa !3
  %xpv_pv133 = bitcast i8* %65 to i8**
  %68 = load i8** %xpv_pv133, align 8, !tbaa !0
  br label %if.end139

cond.false134:                                    ; preds = %if.end124
  %call135 = call i8* @Perl_sv_2pv_flags(%struct.sv* %23, i64* %len, i32 2) #6
  %.pre199 = load i64* %len, align 8, !tbaa !3
  br label %if.end139

if.end139:                                        ; preds = %cond.true129, %cond.false134, %if.end
  %69 = phi i64 [ %19, %if.end ], [ %.pre199, %cond.false134 ], [ %67, %cond.true129 ]
  %tmpsv.1 = phi %struct.sv* [ %tmpsv.0, %if.end ], [ %23, %cond.false134 ], [ %23, %cond.true129 ]
  %tmps.1 = phi i8* [ %tmps.0, %if.end ], [ %call135, %cond.false134 ], [ %68, %cond.true129 ]
  %tobool140 = icmp eq i8* %tmps.1, null
  %tobool142 = icmp eq i64 %69, 0
  %or.cond190 = or i1 %tobool140, %tobool142
  br i1 %or.cond190, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.end139
  %call144 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i64 4) #6
  %call145 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call144) #6
  br label %if.end146

if.end146:                                        ; preds = %if.end139, %if.then143
  %tmpsv.2 = phi %struct.sv* [ %call145, %if.then143 ], [ %tmpsv.1, %if.end139 ]
  %call147 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), %struct.sv* %tmpsv.2) #6
  br label %return

return:                                           ; preds = %if.end146, %if.end114
  %retval.0 = phi %struct.op* [ %call147, %if.end146 ], [ %call115, %if.end114 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod(%struct.hv*, i8*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVuv(i64) #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.op* @Perl_die(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_open() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %8 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %9 = bitcast %struct.sv* %8 to %struct.gv*
  %10 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !4
  %and = and i32 %11, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_usym, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0)) #6
  br label %return

if.end:                                           ; preds = %entry
  %sv_any = bitcast %struct.sv* %8 to %struct.xpvgv**
  %12 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %13, i64 0, i32 2
  %14 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool = icmp eq %struct.io* %14, null
  br i1 %tobool, label %if.end39, label %if.then3

if.then3:                                         ; preds = %if.end
  %sv_any7 = getelementptr inbounds %struct.io* %14, i64 0, i32 0
  %15 = load %struct.xpvio** %sv_any7, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %15, i64 0, i32 22
  %16 = load i8* %xio_flags, align 1, !tbaa !1
  %and9 = and i8 %16, -17
  store i8 %and9, i8* %xio_flags, align 1, !tbaa !1
  %17 = bitcast %struct.io* %14 to %struct.sv*
  %18 = getelementptr inbounds %struct.io* %14, i64 0, i32 2
  %19 = load i32* %18, align 4, !tbaa !4
  %and14 = and i32 %19, 32768
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end39, label %cond.end

cond.end:                                         ; preds = %if.then3
  %call16 = call %struct.magic* @Perl_mg_find(%struct.sv* %17, i32 113) #6
  %tobool17 = icmp eq %struct.magic* %call16, null
  br i1 %tobool17, label %if.end39, label %if.then18

if.then18:                                        ; preds = %cond.end
  %mg_obj = getelementptr inbounds %struct.magic* %call16, i64 0, i32 5
  %20 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool19 = icmp eq %struct.sv* %20, null
  br i1 %tobool19, label %cond.false22, label %cond.end25

cond.false22:                                     ; preds = %if.then18
  %call23 = call %struct.sv* @Perl_newRV(%struct.sv* %17) #6
  %call24 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call23) #6
  br label %cond.end25

cond.end25:                                       ; preds = %if.then18, %cond.false22
  %cond26 = phi %struct.sv* [ %call24, %cond.false22 ], [ %20, %if.then18 ]
  store %struct.sv* %cond26, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %21 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr28 = getelementptr inbounds i32* %21, i64 1
  store i32* %incdec.ptr28, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp29 = icmp eq i32* %incdec.ptr28, %22
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %cond.end25
  call void @Perl_markstack_grow() #6
  %.pre135 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %cond.end25
  %23 = phi i32* [ %.pre135, %if.then31 ], [ %incdec.ptr28, %cond.end25 ]
  %24 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast34
  %sub.ptr.div36132 = lshr exact i64 %sub.ptr.sub35, 3
  %conv37 = trunc i64 %sub.ptr.div36132 to i32
  store i32 %conv37, i32* %23, align 4, !tbaa !4
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_push_scope() #6
  %call38 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), i32 0) #6
  call void @Perl_pop_scope() #6
  %25 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %25, i64 0, i32 0
  %26 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end39:                                         ; preds = %if.end, %if.then3, %cond.end
  %cmp40 = icmp ult %struct.sv** %incdec.ptr1, %0
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end39
  %incdec.ptr1.sum = add i64 %idx.ext, 2
  %incdec.ptr43 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr1.sum
  br label %if.end46

if.else:                                          ; preds = %if.end39
  %27 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp45 = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp45, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %28, i64 0, i32 0
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then42
  %sv.0.in = phi %struct.sv** [ %incdec.ptr43, %if.then42 ], [ %gp_sv, %if.else ]
  %mark.0 = phi %struct.sv** [ %incdec.ptr43, %if.then42 ], [ %incdec.ptr1, %if.else ]
  %sv.0 = load %struct.sv** %sv.0.in, align 8
  %sv_flags47 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %29 = load i32* %sv_flags47, align 4, !tbaa !4
  %and48 = and i32 %29, 262144
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %cond.false54, label %cond.true51

cond.true51:                                      ; preds = %if.end46
  %sv_any52 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %30 = load i8** %sv_any52, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %30, i64 8
  %31 = bitcast i8* %xpv_cur to i64*
  %32 = load i64* %31, align 8, !tbaa !3
  store i64 %32, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %30 to i8**
  %33 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end56

cond.false54:                                     ; preds = %if.end46
  %call55 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.0, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !3
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true51
  %34 = phi i64 [ %32, %cond.true51 ], [ %.pre, %cond.false54 ]
  %cond57 = phi i8* [ %33, %cond.true51 ], [ %call55, %cond.false54 ]
  %conv58 = trunc i64 %34 to i32
  %add.ptr59 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  %sub.ptr.lhs.cast60 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast61 = ptrtoint %struct.sv** %mark.0 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %sub.ptr.div63128 = lshr exact i64 %sub.ptr.sub62, 3
  %conv64 = trunc i64 %sub.ptr.div63128 to i32
  %call65 = call signext i8 @Perl_do_openn(%struct.gv* %9, i8* %cond57, i32 %conv58, i32 0, i32 0, i32 0, %struct._PerlIO** null, %struct.sv** %add.ptr59, i32 %conv64) #6
  %35 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %tobool68 = icmp eq i8 %call65, 0
  %36 = load i32* @PL_forkprocess, align 4, !tbaa !4
  br i1 %tobool68, label %if.else78, label %if.then69

if.then69:                                        ; preds = %cond.end56
  %conv70 = sext i32 %36 to i64
  call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv70) #6
  %sv_flags71 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %37 = load i32* %sv_flags71, align 4, !tbaa !4
  %and72 = and i32 %37, 16384
  %tobool73 = icmp eq i32 %and72, 0
  br i1 %tobool73, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.then69
  %call75 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.then74
  %add.ptr67.sum130 = add i64 %idx.ext, 1
  %incdec.ptr77 = getelementptr inbounds %struct.sv** %35, i64 %add.ptr67.sum130
  store %struct.sv* %7, %struct.sv** %incdec.ptr77, align 8, !tbaa !0
  br label %if.end93

if.else78:                                        ; preds = %cond.end56
  %cmp79 = icmp eq i32 %36, 0
  br i1 %cmp79, label %if.then81, label %if.else89

if.then81:                                        ; preds = %if.else78
  call void @Perl_sv_setiv(%struct.sv* %7, i64 0) #6
  %sv_flags82 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %38 = load i32* %sv_flags82, align 4, !tbaa !4
  %and83 = and i32 %38, 16384
  %tobool84 = icmp eq i32 %and83, 0
  br i1 %tobool84, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.then81
  %call86 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %if.then85
  %add.ptr67.sum129 = add i64 %idx.ext, 1
  %incdec.ptr88 = getelementptr inbounds %struct.sv** %35, i64 %add.ptr67.sum129
  store %struct.sv* %7, %struct.sv** %incdec.ptr88, align 8, !tbaa !0
  br label %if.end93

if.else89:                                        ; preds = %if.else78
  %add.ptr67.sum = add i64 %idx.ext, 1
  %incdec.ptr90 = getelementptr inbounds %struct.sv** %35, i64 %add.ptr67.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr90, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr90, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %39 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next91 = getelementptr inbounds %struct.op* %39, i64 0, i32 0
  %40 = load %struct.op** %op_next91, align 8, !tbaa !0
  br label %return

if.end93:                                         ; preds = %if.end87, %if.end76
  %sp.0 = phi %struct.sv** [ %incdec.ptr77, %if.end76 ], [ %incdec.ptr88, %if.end87 ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %41 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next94 = getelementptr inbounds %struct.op* %41, i64 0, i32 0
  %42 = load %struct.op** %op_next94, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end93, %if.else89, %if.end32, %if.then
  %retval.0 = phi %struct.op* [ %26, %if.end32 ], [ %42, %if.end93 ], [ %40, %if.else89 ], [ %call, %if.then ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_do_openn(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_close() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %4 = load %struct.sv** %0, align 8, !tbaa !0
  %5 = bitcast %struct.sv* %4 to %struct.gv*
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gv.0 = phi %struct.gv* [ %3, %if.then ], [ %5, %if.else ]
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %if.else ]
  %tobool = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool, label %if.end47, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %6 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !4
  %and4 = and i32 %7, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true7, label %if.end47

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %sv_any = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.gp* %9, null
  br i1 %tobool8, label %if.end47, label %cond.end

cond.end:                                         ; preds = %land.lhs.true7
  %gp_io = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.io* %10, null
  br i1 %tobool11, label %if.end47, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %cond.end
  %11 = bitcast %struct.io* %10 to %struct.sv*
  %12 = getelementptr inbounds %struct.io* %10, i64 0, i32 2
  %13 = load i32* %12, align 4, !tbaa !4
  %and14 = and i32 %13, 32768
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end47, label %cond.end18

cond.end18:                                       ; preds = %land.lhs.true12
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %11, i32 113) #6
  %tobool20 = icmp eq %struct.magic* %call, null
  br i1 %tobool20, label %if.end47, label %if.then21

if.then21:                                        ; preds = %cond.end18
  %14 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr22 = getelementptr inbounds i32* %14, i64 1
  store i32* %incdec.ptr22, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %15 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp23 = icmp eq i32* %incdec.ptr22, %15
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then21
  %16 = phi i32* [ %.pre, %if.then25 ], [ %incdec.ptr22, %if.then21 ]
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div83 = lshr exact i64 %sub.ptr.sub, 3
  %conv27 = trunc i64 %sub.ptr.div83 to i32
  store i32 %conv27, i32* %16, align 4, !tbaa !4
  %18 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.lhs.cast
  %cmp32 = icmp slt i64 %sub.ptr.sub30, 8
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end26
  %call35 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end26
  %sp.1 = phi %struct.sv** [ %call35, %if.then34 ], [ %sp.0, %if.end26 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %19 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool37 = icmp eq %struct.sv* %19, null
  br i1 %tobool37, label %cond.false40, label %cond.end43

cond.false40:                                     ; preds = %if.end36
  %call41 = tail call %struct.sv* @Perl_newRV(%struct.sv* %11) #6
  %call42 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call41) #6
  br label %cond.end43

cond.end43:                                       ; preds = %if.end36, %cond.false40
  %cond44 = phi %struct.sv* [ %call42, %cond.false40 ], [ %19, %if.end36 ]
  %incdec.ptr45 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %cond44, %struct.sv** %incdec.ptr45, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr45, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call46 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  br label %return

if.end47:                                         ; preds = %if.end, %land.lhs.true12, %land.lhs.true3, %land.lhs.true7, %cond.end18, %cond.end
  %20 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast48 = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.rhs.cast49 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %cmp52 = icmp slt i64 %sub.ptr.sub50, 8
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end47
  %call55 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end47
  %sp.2 = phi %struct.sv** [ %call55, %if.then54 ], [ %sp.0, %if.end47 ]
  %call57 = tail call signext i8 @Perl_do_close(%struct.gv* %gv.0, i8 signext 1) #6
  %tobool59 = icmp ne i8 %call57, 0
  %cond60 = select i1 %tobool59, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %incdec.ptr61 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %cond60, %struct.sv** %incdec.ptr61, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr61, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end56, %cond.end43
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_do_close(%struct.gv*, i8 signext) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_pipe_op() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fileno() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %6 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %6, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %0, i64 -1
  %7 = load %struct.sv** %0, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %7, null
  br i1 %tobool, label %if.then72, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !4
  %and5 = and i32 %8, 255
  %cmp6 = icmp eq i32 %and5, 13
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true52

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %sv_any = bitcast %struct.sv* %7 to %struct.xpvgv**
  %9 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %9, i64 0, i32 7
  %10 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.gp* %10, null
  br i1 %tobool9, label %if.end49.land.lhs.true52_crit_edge, label %cond.end

cond.end:                                         ; preds = %land.lhs.true8
  %gp_io = getelementptr inbounds %struct.gp* %10, i64 0, i32 2
  %11 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.io* %11, null
  br i1 %tobool12, label %if.end49.land.lhs.true52_crit_edge, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.end
  %12 = bitcast %struct.io* %11 to %struct.sv*
  %13 = getelementptr inbounds %struct.io* %11, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !4
  %and15 = and i32 %14, 32768
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end49.land.lhs.true52_crit_edge, label %cond.end19

cond.end19:                                       ; preds = %land.lhs.true13
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %12, i32 113) #6
  %tobool21 = icmp eq %struct.magic* %call, null
  br i1 %tobool21, label %if.end49.land.lhs.true52_crit_edge, label %if.then22

if.then22:                                        ; preds = %cond.end19
  %15 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr23 = getelementptr inbounds i32* %15, i64 1
  store i32* %incdec.ptr23, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %16 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp24 = icmp eq i32* %incdec.ptr23, %16
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then22
  %17 = phi i32* [ %.pre, %if.then26 ], [ %incdec.ptr23, %if.then22 ]
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %incdec.ptr2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div114 = lshr exact i64 %sub.ptr.sub, 3
  %conv28 = trunc i64 %sub.ptr.div114 to i32
  store i32 %conv28, i32* %17, align 4, !tbaa !4
  %19 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.lhs.cast
  %cmp33 = icmp slt i64 %sub.ptr.sub31, 8
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end27
  %call36 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr2, %struct.sv** %incdec.ptr2, i32 1) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end27
  %sp.0 = phi %struct.sv** [ %call36, %if.then35 ], [ %incdec.ptr2, %if.end27 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %20 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool38 = icmp eq %struct.sv* %20, null
  br i1 %tobool38, label %cond.false41, label %cond.end44

cond.false41:                                     ; preds = %if.end37
  %call42 = tail call %struct.sv* @Perl_newRV(%struct.sv* %12) #6
  %call43 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42) #6
  br label %cond.end44

cond.end44:                                       ; preds = %if.end37, %cond.false41
  %cond45 = phi %struct.sv* [ %call43, %cond.false41 ], [ %20, %if.end37 ]
  %incdec.ptr46 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond45, %struct.sv** %incdec.ptr46, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr46, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call47 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next48 = getelementptr inbounds %struct.op* %21, i64 0, i32 0
  br label %return

if.end49.land.lhs.true52_crit_edge:               ; preds = %cond.end, %cond.end19, %land.lhs.true8, %land.lhs.true13
  %.pre118 = load i32* %sv_flags, align 4, !tbaa !4
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.end49.land.lhs.true52_crit_edge, %land.lhs.true4
  %22 = phi i32 [ %.pre118, %if.end49.land.lhs.true52_crit_edge ], [ %8, %land.lhs.true4 ]
  %and54 = and i32 %22, 255
  %cmp55 = icmp eq i32 %and54, 13
  br i1 %cmp55, label %land.lhs.true57, label %if.then72

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %sv_any58 = bitcast %struct.sv* %7 to %struct.xpvgv**
  %23 = load %struct.xpvgv** %sv_any58, align 8, !tbaa !0
  %xgv_gp59 = getelementptr inbounds %struct.xpvgv* %23, i64 0, i32 7
  %24 = load %struct.gp** %xgv_gp59, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.gp* %24, null
  br i1 %tobool60, label %if.then72, label %cond.end66

cond.end66:                                       ; preds = %land.lhs.true57
  %gp_io64 = getelementptr inbounds %struct.gp* %24, i64 0, i32 2
  %25 = load %struct.io** %gp_io64, align 8, !tbaa !0
  %tobool68 = icmp eq %struct.io* %25, null
  br i1 %tobool68, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %cond.end66
  %sv_any70 = getelementptr inbounds %struct.io* %25, i64 0, i32 0
  %26 = load %struct.xpvio** %sv_any70, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %26, i64 0, i32 7
  %27 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool71 = icmp eq %struct._PerlIO** %27, null
  br i1 %tobool71, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end, %land.lhs.true52, %land.lhs.true57, %lor.lhs.false69, %cond.end66
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next74 = getelementptr inbounds %struct.op* %28, i64 0, i32 0
  br label %return

if.end75:                                         ; preds = %lor.lhs.false69
  %call76 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %27) #6
  %conv77 = sext i32 %call76 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv77) #6
  %sv_flags78 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %29 = load i32* %sv_flags78, align 4, !tbaa !4
  %and79 = and i32 %29, 16384
  %tobool80 = icmp eq i32 %and79, 0
  br i1 %tobool80, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.end75
  %call82 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end83

if.end83:                                         ; preds = %if.end75, %if.then81
  store %struct.sv* %4, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next85 = getelementptr inbounds %struct.op* %30, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end83, %if.then72, %cond.end44, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next48, %cond.end44 ], [ %op_next85, %if.end83 ], [ %op_next74, %if.then72 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_umask() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !4
  %and2 = and i32 %4, 65536
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv to i64*
  %7 = load i64* %6, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %3) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call, %cond.false ]
  %and3 = and i64 %cond, 448
  %tobool4 = icmp eq i64 %and3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call5 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0)) #6
  br label %return

if.end:                                           ; preds = %cond.end, %entry
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.end ], [ %0, %entry ]
  %8 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp6 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %sp.1 = phi %struct.sv** [ %call9, %if.then8 ], [ %sp.0, %if.end ]
  %incdec.ptr11 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr11, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %retval.0 = phi %struct.op* [ %call5, %if.then ], [ %10, %if.end10 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_binmode() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %cmp5 = icmp ugt i32 %and, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %incdec.ptr8 = getelementptr inbounds %struct.sv** %0, i64 -1
  %4 = load %struct.sv** %0, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %sp.0 = phi %struct.sv** [ %incdec.ptr8, %if.then7 ], [ %0, %if.end ]
  %discp.0 = phi %struct.sv* [ %4, %if.then7 ], [ null, %if.end ]
  %incdec.ptr10 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  %5 = load %struct.sv** %sp.0, align 8, !tbaa !0
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  %tobool = icmp ne %struct.sv* %5, null
  br i1 %tobool, label %land.lhs.true12, label %if.end70

land.lhs.true12:                                  ; preds = %if.end9
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and13 = and i32 %7, 255
  %cmp14 = icmp eq i32 %and13, 13
  br i1 %cmp14, label %land.lhs.true16, label %if.end70

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %sv_any = bitcast %struct.sv* %5 to %struct.xpvgv**
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.gp* %9, null
  br i1 %tobool17, label %if.end70, label %cond.end

cond.end:                                         ; preds = %land.lhs.true16
  %gp_io = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool20 = icmp eq %struct.io* %10, null
  br i1 %tobool20, label %if.end70, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %cond.end
  %11 = bitcast %struct.io* %10 to %struct.sv*
  %12 = getelementptr inbounds %struct.io* %10, i64 0, i32 2
  %13 = load i32* %12, align 4, !tbaa !4
  %and23 = and i32 %13, 32768
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end70, label %cond.end27

cond.end27:                                       ; preds = %land.lhs.true21
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %11, i32 113) #6
  %tobool29 = icmp eq %struct.magic* %call, null
  br i1 %tobool29, label %if.end70, label %if.then30

if.then30:                                        ; preds = %cond.end27
  %14 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr31 = getelementptr inbounds i32* %14, i64 1
  store i32* %incdec.ptr31, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %15 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp32 = icmp eq i32* %incdec.ptr31, %15
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then30
  %16 = phi i32* [ %.pre, %if.then34 ], [ %incdec.ptr31, %if.then30 ]
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %incdec.ptr10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div262 = lshr exact i64 %sub.ptr.sub, 3
  %conv36 = trunc i64 %sub.ptr.div262 to i32
  store i32 %conv36, i32* %16, align 4, !tbaa !4
  %18 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast37 = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.lhs.cast
  %cmp41 = icmp slt i64 %sub.ptr.sub39, 8
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end35
  %call44 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr10, %struct.sv** %incdec.ptr10, i32 1) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end35
  %sp.1 = phi %struct.sv** [ %call44, %if.then43 ], [ %incdec.ptr10, %if.end35 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %19 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool46 = icmp eq %struct.sv* %19, null
  br i1 %tobool46, label %cond.false49, label %cond.end52

cond.false49:                                     ; preds = %if.end45
  %call50 = tail call %struct.sv* @Perl_newRV(%struct.sv* %11) #6
  %call51 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call50) #6
  br label %cond.end52

cond.end52:                                       ; preds = %if.end45, %cond.false49
  %cond53 = phi %struct.sv* [ %call51, %cond.false49 ], [ %19, %if.end45 ]
  %incdec.ptr54 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %cond53, %struct.sv** %incdec.ptr54, align 8, !tbaa !0
  %tobool55 = icmp eq %struct.sv* %discp.0, null
  br i1 %tobool55, label %if.end67, label %if.then56

if.then56:                                        ; preds = %cond.end52
  %20 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast57 = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.rhs.cast58 = ptrtoint %struct.sv** %incdec.ptr54 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %cmp61 = icmp slt i64 %sub.ptr.sub59, 8
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then56
  %call64 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr54, %struct.sv** %incdec.ptr54, i32 1) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then56
  %sp.2 = phi %struct.sv** [ %call64, %if.then63 ], [ %incdec.ptr54, %if.then56 ]
  %incdec.ptr66 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %discp.0, %struct.sv** %incdec.ptr66, align 8, !tbaa !0
  br label %if.end67

if.end67:                                         ; preds = %cond.end52, %if.end65
  %sp.3 = phi %struct.sv** [ %incdec.ptr66, %if.end65 ], [ %incdec.ptr54, %cond.end52 ]
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call68 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next69 = getelementptr inbounds %struct.op* %21, i64 0, i32 0
  br label %return

if.end70:                                         ; preds = %land.lhs.true21, %land.lhs.true12, %land.lhs.true16, %cond.end27, %cond.end, %if.end9
  %22 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast71 = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.rhs.cast72 = ptrtoint %struct.sv** %incdec.ptr10 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %cmp75 = icmp slt i64 %sub.ptr.sub73, 8
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end70
  %call78 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr10, %struct.sv** %incdec.ptr10, i32 1) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end70
  %sp.4 = phi %struct.sv** [ %call78, %if.then77 ], [ %incdec.ptr10, %if.end70 ]
  br i1 %tobool, label %land.lhs.true81, label %if.then100

land.lhs.true81:                                  ; preds = %if.end79
  %sv_flags82 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %23 = load i32* %sv_flags82, align 4, !tbaa !4
  %and83 = and i32 %23, 255
  %cmp84 = icmp eq i32 %and83, 13
  br i1 %cmp84, label %land.lhs.true86, label %if.then100

land.lhs.true86:                                  ; preds = %land.lhs.true81
  %sv_any87 = bitcast %struct.sv* %5 to %struct.xpvgv**
  %24 = load %struct.xpvgv** %sv_any87, align 8, !tbaa !0
  %xgv_gp88 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp88, align 8, !tbaa !0
  %tobool89 = icmp eq %struct.gp* %25, null
  br i1 %tobool89, label %if.then100, label %cond.end95

cond.end95:                                       ; preds = %land.lhs.true86
  %gp_io93 = getelementptr inbounds %struct.gp* %25, i64 0, i32 2
  %26 = load %struct.io** %gp_io93, align 8, !tbaa !0
  %tobool97 = icmp eq %struct.io* %26, null
  br i1 %tobool97, label %if.then100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end95
  %sv_any98 = getelementptr inbounds %struct.io* %26, i64 0, i32 0
  %27 = load %struct.xpvio** %sv_any98, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %27, i64 0, i32 7
  %28 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool99 = icmp eq %struct._PerlIO** %28, null
  br i1 %tobool99, label %if.then100, label %if.end139

if.then100:                                       ; preds = %if.end79, %land.lhs.true81, %land.lhs.true86, %lor.lhs.false, %cond.end95
  %cond96266 = phi %struct.io* [ %26, %lor.lhs.false ], [ null, %cond.end95 ], [ null, %land.lhs.true86 ], [ null, %land.lhs.true81 ], [ null, %if.end79 ]
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp101 = icmp eq %struct.sv* %30, null
  br i1 %cmp101, label %lor.lhs.false125, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %if.then100
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings104 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings104, align 8, !tbaa !0
  %cmp105 = icmp eq %struct.sv* %32, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp105, label %lor.lhs.false125, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings108 = getelementptr inbounds %struct.cop* %33, i64 0, i32 14
  %34 = load %struct.sv** %cop_warnings108, align 8, !tbaa !0
  %cmp109 = icmp eq %struct.sv* %34, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp109, label %if.then133, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %land.lhs.true107
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings112 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings112, align 8, !tbaa !0
  %sv_any113 = getelementptr inbounds %struct.sv* %36, i64 0, i32 0
  %37 = load i8** %sv_any113, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %37 to i8**
  %38 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %38, i64 2
  %39 = load i8* %arrayidx, align 1, !tbaa !1
  %and115 = and i8 %39, 64
  %tobool116 = icmp eq i8 %and115, 0
  br i1 %tobool116, label %lor.lhs.false117, label %if.then133

lor.lhs.false117:                                 ; preds = %lor.lhs.false111
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings118 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings118, align 8, !tbaa !0
  %sv_any119 = getelementptr inbounds %struct.sv* %41, i64 0, i32 0
  %42 = load i8** %sv_any119, align 8, !tbaa !0
  %xpv_pv120 = bitcast i8* %42 to i8**
  %43 = load i8** %xpv_pv120, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i8* %43, i64 1
  %44 = load i8* %arrayidx121, align 1, !tbaa !1
  %and123 = and i8 %44, 16
  %tobool124 = icmp eq i8 %and123, 0
  br i1 %tobool124, label %lor.lhs.false125, label %if.then133

lor.lhs.false125:                                 ; preds = %lor.lhs.false117, %land.lhs.true103, %if.then100
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings126 = getelementptr inbounds %struct.cop* %45, i64 0, i32 14
  %46 = load %struct.sv** %cop_warnings126, align 8, !tbaa !0
  %cmp127 = icmp eq %struct.sv* %46, null
  br i1 %cmp127, label %land.lhs.true129, label %if.end135

land.lhs.true129:                                 ; preds = %lor.lhs.false125
  %47 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and131 = and i8 %47, 1
  %tobool132 = icmp eq i8 %and131, 0
  br i1 %tobool132, label %if.end135, label %if.then133

if.then133:                                       ; preds = %lor.lhs.false117, %lor.lhs.false111, %land.lhs.true129, %land.lhs.true107
  %48 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %48, i64 0, i32 4
  %49 = load i16* %op_type, align 2, !tbaa !5
  %conv134 = zext i16 %49 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %6, %struct.io* %cond96266, i32 %conv134) #6
  br label %if.end135

if.end135:                                        ; preds = %land.lhs.true129, %if.then133, %lor.lhs.false125
  %call136 = tail call i32* @__errno_location() #6
  store i32 9, i32* %call136, align 4, !tbaa !4
  %incdec.ptr137 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr137, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr137, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %50 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next138 = getelementptr inbounds %struct.op* %50, i64 0, i32 0
  br label %return

if.end139:                                        ; preds = %lor.lhs.false
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %51 = load %struct.xpvio** %sv_any98, align 8, !tbaa !0
  %xio_type = getelementptr inbounds %struct.xpvio* %51, i64 0, i32 21
  %52 = load i8* %xio_type, align 1, !tbaa !1
  %conv141 = sext i8 %52 to i32
  %call142 = tail call i32 @Perl_mode_from_discipline(%struct.sv* %discp.0) #6
  %tobool143 = icmp ne %struct.sv* %discp.0, null
  br i1 %tobool143, label %cond.true144, label %cond.end157

cond.true144:                                     ; preds = %if.end139
  %sv_flags145 = getelementptr inbounds %struct.sv* %discp.0, i64 0, i32 2
  %53 = load i32* %sv_flags145, align 4, !tbaa !4
  %and146 = and i32 %53, 262144
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %cond.false152, label %cond.true149

cond.true149:                                     ; preds = %cond.true144
  %sv_any150 = getelementptr inbounds %struct.sv* %discp.0, i64 0, i32 0
  %54 = load i8** %sv_any150, align 8, !tbaa !0
  %xpv_pv151 = bitcast i8* %54 to i8**
  %55 = load i8** %xpv_pv151, align 8, !tbaa !0
  br label %cond.end157

cond.false152:                                    ; preds = %cond.true144
  %call153 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %discp.0) #6
  br label %cond.end157

cond.end157:                                      ; preds = %if.end139, %cond.true149, %cond.false152
  %cond158 = phi i8* [ %55, %cond.true149 ], [ %call153, %cond.false152 ], [ null, %if.end139 ]
  %call159 = tail call i32 @PerlIO_binmode(%struct._PerlIO** %28, i32 %conv141, i32 %call142, i8* %cond158) #6
  %tobool160 = icmp eq i32 %call159, 0
  br i1 %tobool160, label %if.else, label %if.then161

if.then161:                                       ; preds = %cond.end157
  %56 = load %struct.xpvio** %sv_any98, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %56, i64 0, i32 8
  %57 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool163 = icmp eq %struct._PerlIO** %57, null
  br i1 %tobool163, label %if.end200, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %if.then161
  %xio_ifp168 = getelementptr inbounds %struct.xpvio* %56, i64 0, i32 7
  %58 = load %struct._PerlIO*** %xio_ifp168, align 8, !tbaa !0
  %cmp169 = icmp eq %struct._PerlIO** %57, %58
  br i1 %cmp169, label %if.end200, label %if.then171

if.then171:                                       ; preds = %land.lhs.true164
  %xio_type175 = getelementptr inbounds %struct.xpvio* %56, i64 0, i32 21
  %59 = load i8* %xio_type175, align 1, !tbaa !1
  %conv176 = sext i8 %59 to i32
  %call177 = tail call i32 @Perl_mode_from_discipline(%struct.sv* %discp.0) #6
  br i1 %tobool143, label %cond.true179, label %cond.end192

cond.true179:                                     ; preds = %if.then171
  %sv_flags180 = getelementptr inbounds %struct.sv* %discp.0, i64 0, i32 2
  %60 = load i32* %sv_flags180, align 4, !tbaa !4
  %and181 = and i32 %60, 262144
  %cmp182 = icmp eq i32 %and181, 0
  br i1 %cmp182, label %cond.false187, label %cond.true184

cond.true184:                                     ; preds = %cond.true179
  %sv_any185 = getelementptr inbounds %struct.sv* %discp.0, i64 0, i32 0
  %61 = load i8** %sv_any185, align 8, !tbaa !0
  %xpv_pv186 = bitcast i8* %61 to i8**
  %62 = load i8** %xpv_pv186, align 8, !tbaa !0
  br label %cond.end192

cond.false187:                                    ; preds = %cond.true179
  %call188 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %discp.0) #6
  br label %cond.end192

cond.end192:                                      ; preds = %if.then171, %cond.true184, %cond.false187
  %cond193 = phi i8* [ %62, %cond.true184 ], [ %call188, %cond.false187 ], [ null, %if.then171 ]
  %call194 = tail call i32 @PerlIO_binmode(%struct._PerlIO** %57, i32 %conv176, i32 %call177, i8* %cond193) #6
  %tobool195 = icmp eq i32 %call194, 0
  br i1 %tobool195, label %if.then196, label %if.end200

if.then196:                                       ; preds = %cond.end192
  %63 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr197 = getelementptr inbounds %struct.sv** %63, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr197, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr197, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %64 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next198 = getelementptr inbounds %struct.op* %64, i64 0, i32 0
  br label %return

if.end200:                                        ; preds = %cond.end192, %land.lhs.true164, %if.then161
  %65 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr201 = getelementptr inbounds %struct.sv** %65, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr201, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr201, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %66 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next202 = getelementptr inbounds %struct.op* %66, i64 0, i32 0
  br label %return

if.else:                                          ; preds = %cond.end157
  %67 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr203 = getelementptr inbounds %struct.sv** %67, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr203, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr203, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %68 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next204 = getelementptr inbounds %struct.op* %68, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.else, %if.end200, %if.then196, %if.end135, %if.end67, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next69, %if.end67 ], [ %op_next202, %if.end200 ], [ %op_next198, %if.then196 ], [ %op_next204, %if.else ], [ %op_next138, %if.end135 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_report_evil_fh(%struct.gv*, %struct.io*, i32) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: optsize
declare i32 @PerlIO_binmode(%struct._PerlIO**, i32, i32, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_mode_from_discipline(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_tie() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %4 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %5, 255
  switch i32 %and, label %sw.default [
    i32 11, label %sw.bb
    i32 10, label %sw.epilog
    i32 13, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %sv_any = bitcast %struct.sv* %4 to %struct.xpvhv**
  %6 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %6, i64 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter, align 8, !tbaa !0
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %sv_any4 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %7 = load i8** %sv_any4, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %7, i64 56
  %8 = bitcast i8* %xgv_gp to %struct.gp**
  %9 = load %struct.gp** %8, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool = icmp eq %struct.io* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  %call = tail call %struct.io* @Perl_newIO() #6
  %11 = load i8** %sv_any4, align 8, !tbaa !0
  %xgv_gp6 = getelementptr inbounds i8* %11, i64 56
  %12 = bitcast i8* %xgv_gp6 to %struct.gp**
  %13 = load %struct.gp** %12, align 8, !tbaa !0
  %gp_io7 = getelementptr inbounds %struct.gp* %13, i64 0, i32 2
  store %struct.io* %call, %struct.io** %gp_io7, align 8, !tbaa !0
  %.pre310 = load i8** %sv_any4, align 8, !tbaa !0
  %xgv_gp9.phi.trans.insert = getelementptr inbounds i8* %.pre310, i64 56
  %.phi.trans.insert = bitcast i8* %xgv_gp9.phi.trans.insert to %struct.gp**
  %.pre311 = load %struct.gp** %.phi.trans.insert, align 8, !tbaa !0
  %gp_io10.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre311, i64 0, i32 2
  %.pre312 = load %struct.io** %gp_io10.phi.trans.insert, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %sw.bb3, %if.then
  %14 = phi %struct.io* [ %10, %sw.bb3 ], [ %.pre312, %if.then ]
  %15 = bitcast %struct.io* %14 to %struct.sv*
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %if.end, %sw.bb
  %varsv.0 = phi %struct.sv* [ %4, %sw.default ], [ %15, %if.end ], [ %4, %sw.bb ], [ %4, %entry ]
  %methname.0 = phi i8* [ getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), %sw.bb ], [ getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), %entry ]
  %how.0 = phi i32 [ 113, %sw.default ], [ 113, %if.end ], [ 80, %sw.bb ], [ 80, %entry ]
  %incdec.ptr1.sum = add i64 %idx.ext, 2
  %incdec.ptr11 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr1.sum
  %sub.ptr.lhs.cast12 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast13 = ptrtoint %struct.sv** %incdec.ptr1 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %sub.ptr.div15284 = lshr exact i64 %sub.ptr.sub14, 3
  %conv16 = trunc i64 %sub.ptr.div15284 to i32
  %16 = load %struct.sv** %incdec.ptr11, align 8, !tbaa !0
  %call17 = tail call i32 @Perl_sv_isobject(%struct.sv* %16) #6
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %sw.epilog
  tail call void @Perl_push_scope() #6
  %17 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %17, i64 0, i32 6
  %18 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool20 = icmp eq %struct.stackinfo* %18, null
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then19
  %call22 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #6
  %19 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call22, i64 0, i32 5
  store %struct.stackinfo* %19, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %20 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next23 = getelementptr inbounds %struct.stackinfo* %20, i64 0, i32 6
  store %struct.stackinfo* %call22, %struct.stackinfo** %si_next23, align 8, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then21
  %next.0 = phi %struct.stackinfo* [ %18, %if.then19 ], [ %call22, %if.then21 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !4
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %21 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any25 = getelementptr inbounds %struct.av* %21, i64 0, i32 0
  %22 = load %struct.xpvav** %sv_any25, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %23 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast27 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast27
  %sub.ptr.div29 = ashr exact i64 %sub.ptr.sub28, 3
  %24 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any30 = getelementptr inbounds %struct.av* %24, i64 0, i32 0
  %25 = load %struct.xpvav** %sv_any30, align 8, !tbaa !0
  %xav_fill31 = getelementptr inbounds %struct.xpvav* %25, i64 0, i32 1
  store i64 %sub.ptr.div29, i64* %xav_fill31, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 0
  %26 = load i8** %xav_array, align 8, !tbaa !0
  %27 = bitcast i8* %26 to %struct.sv**
  store %struct.sv** %27, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %28 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any35 = getelementptr inbounds %struct.av* %28, i64 0, i32 0
  %29 = load %struct.xpvav** %sv_any35, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %29, i64 0, i32 2
  %30 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr36 = getelementptr inbounds %struct.sv** %27, i64 %30
  store %struct.sv** %add.ptr36, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %31 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any38 = getelementptr inbounds %struct.av* %31, i64 0, i32 0
  %32 = load %struct.xpvav** %sv_any38, align 8, !tbaa !0
  %xav_fill39 = getelementptr inbounds %struct.xpvav* %32, i64 0, i32 1
  %33 = load i64* %xav_fill39, align 8, !tbaa !3
  %add.ptr40 = getelementptr inbounds %struct.sv** %27, i64 %33
  store %struct.sv** %add.ptr40, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %34 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %34, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %35 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr42 = getelementptr inbounds i32* %35, i64 1
  store i32* %incdec.ptr42, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %36 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr42, %36
  br i1 %cmp, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end24
  tail call void @Perl_markstack_grow() #6
  %.pre307 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre308 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre309 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end24
  %37 = phi %struct.sv** [ %.pre309, %if.then44 ], [ %add.ptr36, %if.end24 ]
  %38 = phi i32* [ %.pre308, %if.then44 ], [ %incdec.ptr42, %if.end24 ]
  %39 = phi %struct.sv** [ %.pre307, %if.then44 ], [ %27, %if.end24 ]
  %sub.ptr.lhs.cast46 = ptrtoint %struct.sv** %add.ptr40 to i64
  %sub.ptr.rhs.cast47 = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49287 = lshr exact i64 %sub.ptr.sub48, 3
  %conv50 = trunc i64 %sub.ptr.div49287 to i32
  store i32 %conv50, i32* %38, align 4, !tbaa !4
  %sub.ptr.lhs.cast51 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.lhs.cast46
  %sub.ptr.div54 = ashr exact i64 %sub.ptr.sub53, 3
  %sext288 = shl i64 %sub.ptr.sub14, 29
  %conv55 = ashr exact i64 %sext288, 32
  %cmp56 = icmp slt i64 %sub.ptr.div54, %conv55
  br i1 %cmp56, label %if.then58, label %while.cond.preheader

if.then58:                                        ; preds = %if.end45
  %call59 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr40, %struct.sv** %add.ptr40, i32 %conv16) #6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then58, %if.end45
  %sp.0.ph = phi %struct.sv** [ %add.ptr40, %if.end45 ], [ %call59, %if.then58 ]
  %tobool61293 = icmp eq i32 %conv16, 0
  br i1 %tobool61293, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %40 = add i64 %sub.ptr.div15284, 4294967295
  %41 = and i64 %40, 4294967295
  %42 = add i64 %41, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %items.0296 = phi i32 [ %conv16, %while.body.lr.ph ], [ %dec, %while.body ]
  %sp.0295 = phi %struct.sv** [ %sp.0.ph, %while.body.lr.ph ], [ %incdec.ptr63, %while.body ]
  %mark.0294 = phi %struct.sv** [ %incdec.ptr11, %while.body.lr.ph ], [ %incdec.ptr62, %while.body ]
  %dec = add i32 %items.0296, -1
  %incdec.ptr62 = getelementptr inbounds %struct.sv** %mark.0294, i64 1
  %43 = load %struct.sv** %mark.0294, align 8, !tbaa !0
  %incdec.ptr63 = getelementptr inbounds %struct.sv** %sp.0295, i64 1
  store %struct.sv* %43, %struct.sv** %incdec.ptr63, align 8, !tbaa !0
  %tobool61 = icmp eq i32 %dec, 0
  br i1 %tobool61, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %scevgep300 = getelementptr %struct.sv** %sp.0.ph, i64 %42
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %sp.0.lcssa = phi %struct.sv** [ %scevgep300, %while.cond.while.end_crit_edge ], [ %sp.0.ph, %while.cond.preheader ]
  store %struct.sv** %sp.0.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call64 = tail call i32 @Perl_call_method(i8* %methname.0, i32 0) #6
  br label %if.end133

if.else:                                          ; preds = %sw.epilog
  %44 = load %struct.sv** %incdec.ptr11, align 8, !tbaa !0
  %call65 = tail call %struct.hv* @Perl_gv_stashsv(%struct.sv* %44, i32 0) #6
  %tobool66 = icmp eq %struct.hv* %call65, null
  br i1 %tobool66, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call67 = tail call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %call65, i8* %methname.0) #6
  %tobool68 = icmp eq %struct.gv* %call67, null
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %lor.lhs.false, %if.else
  %45 = load %struct.sv** %incdec.ptr11, align 8, !tbaa !0
  %call70 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([49 x i8]* @.str24, i64 0, i64 0), i8* %methname.0, %struct.sv* %45) #6
  br label %return

if.end71:                                         ; preds = %lor.lhs.false
  tail call void @Perl_push_scope() #6
  %46 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next73 = getelementptr inbounds %struct.stackinfo* %46, i64 0, i32 6
  %47 = load %struct.stackinfo** %si_next73, align 8, !tbaa !0
  %tobool74 = icmp eq %struct.stackinfo* %47, null
  br i1 %tobool74, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  %call76 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #6
  %48 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev77 = getelementptr inbounds %struct.stackinfo* %call76, i64 0, i32 5
  store %struct.stackinfo* %48, %struct.stackinfo** %si_prev77, align 8, !tbaa !0
  %49 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next78 = getelementptr inbounds %struct.stackinfo* %49, i64 0, i32 6
  store %struct.stackinfo* %call76, %struct.stackinfo** %si_next78, align 8, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %if.end71, %if.then75
  %next72.0 = phi %struct.stackinfo* [ %47, %if.end71 ], [ %call76, %if.then75 ]
  %si_type80 = getelementptr inbounds %struct.stackinfo* %next72.0, i64 0, i32 4
  store i32 2, i32* %si_type80, align 4, !tbaa !4
  %si_cxix81 = getelementptr inbounds %struct.stackinfo* %next72.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix81, align 4, !tbaa !4
  %si_stack82 = getelementptr inbounds %struct.stackinfo* %next72.0, i64 0, i32 0
  %50 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any83 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any83, align 8, !tbaa !0
  %xav_fill84 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 1
  store i64 0, i64* %xav_fill84, align 8, !tbaa !3
  %52 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast86 = ptrtoint %struct.sv** %52 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast86
  %sub.ptr.div88 = ashr exact i64 %sub.ptr.sub87, 3
  %53 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any89 = getelementptr inbounds %struct.av* %53, i64 0, i32 0
  %54 = load %struct.xpvav** %sv_any89, align 8, !tbaa !0
  %xav_fill90 = getelementptr inbounds %struct.xpvav* %54, i64 0, i32 1
  store i64 %sub.ptr.div88, i64* %xav_fill90, align 8, !tbaa !3
  %xav_array93 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 0
  %55 = load i8** %xav_array93, align 8, !tbaa !0
  %56 = bitcast i8* %55 to %struct.sv**
  store %struct.sv** %56, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %57 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any95 = getelementptr inbounds %struct.av* %57, i64 0, i32 0
  %58 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_max96 = getelementptr inbounds %struct.xpvav* %58, i64 0, i32 2
  %59 = load i64* %xav_max96, align 8, !tbaa !3
  %add.ptr97 = getelementptr inbounds %struct.sv** %56, i64 %59
  store %struct.sv** %add.ptr97, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %60 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any99 = getelementptr inbounds %struct.av* %60, i64 0, i32 0
  %61 = load %struct.xpvav** %sv_any99, align 8, !tbaa !0
  %xav_fill100 = getelementptr inbounds %struct.xpvav* %61, i64 0, i32 1
  %62 = load i64* %xav_fill100, align 8, !tbaa !3
  %add.ptr101 = getelementptr inbounds %struct.sv** %56, i64 %62
  store %struct.sv** %add.ptr101, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %63 = load %struct.av** %si_stack82, align 8, !tbaa !0
  store %struct.av* %63, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next72.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %64 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr103 = getelementptr inbounds i32* %64, i64 1
  store i32* %incdec.ptr103, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %65 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp104 = icmp eq i32* %incdec.ptr103, %65
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end79
  tail call void @Perl_markstack_grow() #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre303 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre304 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end79
  %66 = phi %struct.sv** [ %.pre304, %if.then106 ], [ %add.ptr97, %if.end79 ]
  %67 = phi i32* [ %.pre303, %if.then106 ], [ %incdec.ptr103, %if.end79 ]
  %68 = phi %struct.sv** [ %.pre, %if.then106 ], [ %56, %if.end79 ]
  %sub.ptr.lhs.cast108 = ptrtoint %struct.sv** %add.ptr101 to i64
  %sub.ptr.rhs.cast109 = ptrtoint %struct.sv** %68 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  %sub.ptr.div111285 = lshr exact i64 %sub.ptr.sub110, 3
  %conv112 = trunc i64 %sub.ptr.div111285 to i32
  store i32 %conv112, i32* %67, align 4, !tbaa !4
  %sub.ptr.lhs.cast113 = ptrtoint %struct.sv** %66 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.lhs.cast108
  %sub.ptr.div116 = ashr exact i64 %sub.ptr.sub115, 3
  %sext = shl i64 %sub.ptr.sub14, 29
  %conv117 = ashr exact i64 %sext, 32
  %cmp118 = icmp slt i64 %sub.ptr.div116, %conv117
  br i1 %cmp118, label %if.then120, label %while.cond123.preheader

if.then120:                                       ; preds = %if.end107
  %call121 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr101, %struct.sv** %add.ptr101, i32 %conv16) #6
  br label %while.cond123.preheader

while.cond123.preheader:                          ; preds = %if.then120, %if.end107
  %sp.1.ph = phi %struct.sv** [ %add.ptr101, %if.end107 ], [ %call121, %if.then120 ]
  %tobool125289 = icmp eq i32 %conv16, 0
  br i1 %tobool125289, label %while.end129, label %while.body126.lr.ph

while.body126.lr.ph:                              ; preds = %while.cond123.preheader
  %69 = add i64 %sub.ptr.div15284, 4294967295
  %70 = and i64 %69, 4294967295
  %71 = add i64 %70, 1
  br label %while.body126

while.body126:                                    ; preds = %while.body126.lr.ph, %while.body126
  %items.1292 = phi i32 [ %conv16, %while.body126.lr.ph ], [ %dec124, %while.body126 ]
  %sp.1291 = phi %struct.sv** [ %sp.1.ph, %while.body126.lr.ph ], [ %incdec.ptr128, %while.body126 ]
  %mark.1290 = phi %struct.sv** [ %incdec.ptr11, %while.body126.lr.ph ], [ %incdec.ptr127, %while.body126 ]
  %dec124 = add i32 %items.1292, -1
  %incdec.ptr127 = getelementptr inbounds %struct.sv** %mark.1290, i64 1
  %72 = load %struct.sv** %mark.1290, align 8, !tbaa !0
  %incdec.ptr128 = getelementptr inbounds %struct.sv** %sp.1291, i64 1
  store %struct.sv* %72, %struct.sv** %incdec.ptr128, align 8, !tbaa !0
  %tobool125 = icmp eq i32 %dec124, 0
  br i1 %tobool125, label %while.cond123.while.end129_crit_edge, label %while.body126

while.cond123.while.end129_crit_edge:             ; preds = %while.body126
  %scevgep = getelementptr %struct.sv** %sp.1.ph, i64 %71
  br label %while.end129

while.end129:                                     ; preds = %while.cond123.while.end129_crit_edge, %while.cond123.preheader
  %sp.1.lcssa = phi %struct.sv** [ %scevgep, %while.cond123.while.end129_crit_edge ], [ %sp.1.ph, %while.cond123.preheader ]
  store %struct.sv** %sp.1.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_any130 = getelementptr inbounds %struct.gv* %call67, i64 0, i32 0
  %73 = load %struct.xpvgv** %sv_any130, align 8, !tbaa !0
  %xgv_gp131 = getelementptr inbounds %struct.xpvgv* %73, i64 0, i32 7
  %74 = load %struct.gp** %xgv_gp131, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %74, i64 0, i32 7
  %75 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %76 = bitcast %struct.cv* %75 to %struct.sv*
  %call132 = tail call i32 @Perl_call_sv(%struct.sv* %76, i32 0) #6
  br label %if.end133

if.end133:                                        ; preds = %while.end129, %while.end
  %77 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %78 = load %struct.sv** %77, align 8, !tbaa !0
  %79 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev135 = getelementptr inbounds %struct.stackinfo* %79, i64 0, i32 5
  %80 = load %struct.stackinfo** %si_prev135, align 8, !tbaa !0
  %tobool136 = icmp eq %struct.stackinfo* %80, null
  br i1 %tobool136, label %if.then137, label %if.end161

if.then137:                                       ; preds = %if.end133
  %81 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool138 = icmp eq %struct.gv* %81, null
  br i1 %tobool138, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then137
  %sv_flags139 = getelementptr inbounds %struct.gv* %81, i64 0, i32 2
  %82 = load i32* %sv_flags139, align 4, !tbaa !4
  %and140 = and i32 %82, 255
  %cmp141 = icmp eq i32 %and140, 13
  br i1 %cmp141, label %land.lhs.true143, label %cond.false

land.lhs.true143:                                 ; preds = %land.lhs.true
  %sv_any144 = getelementptr inbounds %struct.gv* %81, i64 0, i32 0
  %83 = load %struct.xpvgv** %sv_any144, align 8, !tbaa !0
  %xgv_gp145 = getelementptr inbounds %struct.xpvgv* %83, i64 0, i32 7
  %84 = load %struct.gp** %xgv_gp145, align 8, !tbaa !0
  %gp_io146 = getelementptr inbounds %struct.gp* %84, i64 0, i32 2
  %85 = load %struct.io** %gp_io146, align 8, !tbaa !0
  %tobool147 = icmp eq %struct.io* %85, null
  br i1 %tobool147, label %cond.false, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true143
  %sv_any152 = getelementptr inbounds %struct.io* %85, i64 0, i32 0
  %86 = load %struct.xpvio** %sv_any152, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %86, i64 0, i32 8
  %87 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool153 = icmp eq %struct._PerlIO** %87, null
  br i1 %tobool153, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true148, %land.lhs.true143, %if.then137, %land.lhs.true
  %call159 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #6
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true148, %cond.false
  %cond = phi %struct._PerlIO** [ %call159, %cond.false ], [ %87, %land.lhs.true148 ]
  %call160 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0)) #6
  tail call void @Perl_my_exit(i32 1) #6
  br label %if.end161

if.end161:                                        ; preds = %if.end133, %cond.end
  %88 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast162 = ptrtoint %struct.sv** %77 to i64
  %sub.ptr.rhs.cast163 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163
  %sub.ptr.div165 = ashr exact i64 %sub.ptr.sub164, 3
  %89 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any166 = getelementptr inbounds %struct.av* %89, i64 0, i32 0
  %90 = load %struct.xpvav** %sv_any166, align 8, !tbaa !0
  %xav_fill167 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 1
  store i64 %sub.ptr.div165, i64* %xav_fill167, align 8, !tbaa !3
  %si_stack168 = getelementptr inbounds %struct.stackinfo* %80, i64 0, i32 0
  %91 = load %struct.av** %si_stack168, align 8, !tbaa !0
  %sv_any169 = getelementptr inbounds %struct.av* %91, i64 0, i32 0
  %92 = load %struct.xpvav** %sv_any169, align 8, !tbaa !0
  %xav_array170 = getelementptr inbounds %struct.xpvav* %92, i64 0, i32 0
  %93 = load i8** %xav_array170, align 8, !tbaa !0
  %94 = bitcast i8* %93 to %struct.sv**
  store %struct.sv** %94, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %95 = load %struct.av** %si_stack168, align 8, !tbaa !0
  %sv_any172 = getelementptr inbounds %struct.av* %95, i64 0, i32 0
  %96 = load %struct.xpvav** %sv_any172, align 8, !tbaa !0
  %xav_max173 = getelementptr inbounds %struct.xpvav* %96, i64 0, i32 2
  %97 = load i64* %xav_max173, align 8, !tbaa !3
  %add.ptr174 = getelementptr inbounds %struct.sv** %94, i64 %97
  store %struct.sv** %add.ptr174, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %98 = load %struct.av** %si_stack168, align 8, !tbaa !0
  %sv_any176 = getelementptr inbounds %struct.av* %98, i64 0, i32 0
  %99 = load %struct.xpvav** %sv_any176, align 8, !tbaa !0
  %xav_fill177 = getelementptr inbounds %struct.xpvav* %99, i64 0, i32 1
  %100 = load i64* %xav_fill177, align 8, !tbaa !3
  %add.ptr178 = getelementptr inbounds %struct.sv** %94, i64 %100
  store %struct.sv** %add.ptr178, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %101 = load %struct.av** %si_stack168, align 8, !tbaa !0
  store %struct.av* %101, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %80, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %call180 = tail call i32 @Perl_sv_isobject(%struct.sv* %78) #6
  %tobool181 = icmp eq i32 %call180, 0
  br i1 %tobool181, label %if.end207, label %if.then182

if.then182:                                       ; preds = %if.end161
  %call183 = tail call i32 @Perl_sv_unmagic(%struct.sv* %varsv.0, i32 %how.0) #6
  %sv_any184 = getelementptr inbounds %struct.sv* %78, i64 0, i32 0
  %102 = load i8** %sv_any184, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %102 to %struct.sv**
  %103 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %cmp185 = icmp eq %struct.sv* %varsv.0, %103
  br i1 %cmp185, label %land.lhs.true187, label %if.end198

land.lhs.true187:                                 ; preds = %if.then182
  %sv_flags188 = getelementptr inbounds %struct.sv* %varsv.0, i64 0, i32 2
  %104 = load i32* %sv_flags188, align 4, !tbaa !4
  %and189 = and i32 %104, 255
  %and189.off = add i32 %and189, -10
  %switch = icmp ult i32 %and189.off, 2
  br i1 %switch, label %if.then197, label %if.end198

if.then197:                                       ; preds = %land.lhs.true187
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([49 x i8]* @.str26, i64 0, i64 0)) #6
  %.pre305 = load i8** %sv_any184, align 8, !tbaa !0
  %xrv_rv200.phi.trans.insert = bitcast i8* %.pre305 to %struct.sv**
  %.pre306 = load %struct.sv** %xrv_rv200.phi.trans.insert, align 8, !tbaa !0
  br label %if.end198

if.end198:                                        ; preds = %land.lhs.true187, %if.then197, %if.then182
  %105 = phi %struct.sv* [ %varsv.0, %land.lhs.true187 ], [ %.pre306, %if.then197 ], [ %103, %if.then182 ]
  %cmp201 = icmp eq %struct.sv* %105, %varsv.0
  %cond206 = select i1 %cmp201, %struct.sv* null, %struct.sv* %78
  tail call void @Perl_sv_magic(%struct.sv* %varsv.0, %struct.sv* %cond206, i32 %how.0, i8* null, i32 0) #6
  br label %if.end207

if.end207:                                        ; preds = %if.end161, %if.end198
  tail call void @Perl_pop_scope() #6
  %106 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr209.sum = add i64 %idx.ext, 1
  %incdec.ptr210 = getelementptr inbounds %struct.sv** %106, i64 %add.ptr209.sum
  store %struct.sv* %78, %struct.sv** %incdec.ptr210, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr210, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %107 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %107, i64 0, i32 0
  %108 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end207, %if.then69
  %retval.0 = phi %struct.op* [ %108, %if.end207 ], [ %call70, %if.then69 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.io* @Perl_newIO() #1

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashsv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_untie() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.end, label %lor.end

lor.end:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %and, 10
  %phitmp = select i1 %cmp3, i32 80, i32 113
  %cmp6 = icmp eq i32 %and, 13
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %3, i64 56
  %4 = bitcast i8* %xgv_gp to %struct.gp**
  %5 = load %struct.gp** %4, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %5, i64 0, i32 2
  %6 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool = icmp eq %struct.io* %6, null
  br i1 %tobool, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %7 = bitcast %struct.io* %6 to %struct.sv*
  %8 = getelementptr inbounds %struct.io* %6, i64 0, i32 2
  %.pre157 = load i32* %8, align 4, !tbaa !4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.sv* @PL_sv_yes, %struct.sv** %0, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry, %land.lhs.true.if.end_crit_edge, %lor.end
  %9 = phi i32 [ %phitmp, %land.lhs.true.if.end_crit_edge ], [ %phitmp, %lor.end ], [ 80, %entry ]
  %10 = phi i32 [ %.pre157, %land.lhs.true.if.end_crit_edge ], [ %2, %lor.end ], [ %2, %entry ]
  %sv.0 = phi %struct.sv* [ %7, %land.lhs.true.if.end_crit_edge ], [ %1, %lor.end ], [ %1, %entry ]
  %and10 = and i32 %10, 32768
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end116, label %cond.end

cond.end:                                         ; preds = %if.end
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv.0, i32 %9) #6
  %tobool14 = icmp eq %struct.magic* %call, null
  br i1 %tobool14, label %if.end116, label %if.then15

if.then15:                                        ; preds = %cond.end
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %11 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.sv* %11, null
  br i1 %tobool16, label %cond.false19, label %cond.end22

cond.false19:                                     ; preds = %if.then15
  %call20 = tail call %struct.sv* @Perl_newRV(%struct.sv* %sv.0) #6
  %call21 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20) #6
  br label %cond.end22

cond.end22:                                       ; preds = %if.then15, %cond.false19
  %cond23 = phi %struct.sv* [ %call21, %cond.false19 ], [ %11, %if.then15 ]
  %sv_any24 = getelementptr inbounds %struct.sv* %cond23, i64 0, i32 0
  %12 = load i8** %sv_any24, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %12 to %struct.sv**
  %13 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.sv* %13, null
  br i1 %tobool25, label %if.end116, label %if.then26

if.then26:                                        ; preds = %cond.end22
  %sv_any27 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any27, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %14, i64 48
  %15 = bitcast i8* %xmg_stash to %struct.hv**
  %16 = load %struct.hv** %15, align 8, !tbaa !0
  %call28 = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %16, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0), i32 0) #6
  %tobool29 = icmp eq %struct.gv* %call28, null
  br i1 %tobool29, label %if.else, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.then26
  %sv_flags31 = getelementptr inbounds %struct.gv* %call28, i64 0, i32 2
  %17 = load i32* %sv_flags31, align 4, !tbaa !4
  %and32 = and i32 %17, 255
  %cmp33 = icmp eq i32 %and32, 13
  br i1 %cmp33, label %land.lhs.true35, label %if.else

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sv_any36 = getelementptr inbounds %struct.gv* %call28, i64 0, i32 0
  %18 = load %struct.xpvgv** %sv_any36, align 8, !tbaa !0
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp37, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %19, i64 0, i32 7
  %20 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool38 = icmp eq %struct.cv* %20, null
  br i1 %tobool38, label %if.else, label %if.then39

if.then39:                                        ; preds = %land.lhs.true35
  %21 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr40 = getelementptr inbounds i32* %21, i64 1
  store i32* %incdec.ptr40, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp41 = icmp eq i32* %incdec.ptr40, %22
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then39
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then39
  %23 = phi i32* [ %.pre, %if.then43 ], [ %incdec.ptr40, %if.then39 ]
  %24 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div155 = lshr exact i64 %sub.ptr.sub, 3
  %conv45 = trunc i64 %sub.ptr.div155 to i32
  store i32 %conv45, i32* %23, align 4, !tbaa !4
  %25 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast46 = ptrtoint %struct.sv** %25 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.lhs.cast
  %cmp50 = icmp slt i64 %sub.ptr.sub48, 8
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end44
  %call53 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr, %struct.sv** %incdec.ptr, i32 1) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end44
  %sp.0 = phi %struct.sv** [ %call53, %if.then52 ], [ %incdec.ptr, %if.end44 ]
  %26 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool56 = icmp eq %struct.sv* %26, null
  br i1 %tobool56, label %cond.false59, label %cond.end62

cond.false59:                                     ; preds = %if.end54
  %27 = bitcast %struct.gv* %call28 to %struct.sv*
  %call60 = tail call %struct.sv* @Perl_newRV(%struct.sv* %27) #6
  %call61 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call60) #6
  br label %cond.end62

cond.end62:                                       ; preds = %if.end54, %cond.false59
  %cond63 = phi %struct.sv* [ %call61, %cond.false59 ], [ %26, %if.end54 ]
  %incdec.ptr64 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond63, %struct.sv** %incdec.ptr64, align 8, !tbaa !0
  %28 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast65 = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.rhs.cast66 = ptrtoint %struct.sv** %incdec.ptr64 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %cmp69 = icmp slt i64 %sub.ptr.sub67, 8
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %cond.end62
  %call72 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr64, %struct.sv** %incdec.ptr64, i32 1) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %cond.end62
  %sp.1 = phi %struct.sv** [ %call72, %if.then71 ], [ %incdec.ptr64, %cond.end62 ]
  %sv_refcnt = getelementptr inbounds %struct.sv* %13, i64 0, i32 1
  %29 = load i32* %sv_refcnt, align 4, !tbaa !4
  %sub = add i32 %29, -1
  %conv74 = zext i32 %sub to i64
  %call75 = tail call %struct.sv* @Perl_newSViv(i64 %conv74) #6
  %call76 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call75) #6
  %incdec.ptr77 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call76, %struct.sv** %incdec.ptr77, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr77, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %30 = bitcast %struct.cv* %20 to %struct.sv*
  %call78 = tail call i32 @Perl_call_sv(%struct.sv* %30, i32 128) #6
  tail call void @Perl_pop_scope() #6
  %31 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end116

if.else:                                          ; preds = %land.lhs.true35, %if.then26, %land.lhs.true30
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp79 = icmp eq %struct.sv* %33, null
  br i1 %cmp79, label %lor.lhs.false94, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.else
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings82 = getelementptr inbounds %struct.cop* %34, i64 0, i32 14
  %35 = load %struct.sv** %cop_warnings82, align 8, !tbaa !0
  %cmp83 = icmp eq %struct.sv* %35, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp83, label %lor.lhs.false94, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %land.lhs.true81
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings86 = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings86, align 8, !tbaa !0
  %cmp87 = icmp eq %struct.sv* %37, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp87, label %land.lhs.true104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true85
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings89 = getelementptr inbounds %struct.cop* %38, i64 0, i32 14
  %39 = load %struct.sv** %cop_warnings89, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.sv* %39, i64 0, i32 0
  %40 = load i8** %sv_any90, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %40 to i8**
  %41 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %41, i64 10
  %42 = load i8* %arrayidx, align 1, !tbaa !1
  %and92 = and i8 %42, 64
  %tobool93 = icmp eq i8 %and92, 0
  br i1 %tobool93, label %lor.lhs.false94, label %land.lhs.true104

lor.lhs.false94:                                  ; preds = %lor.lhs.false, %land.lhs.true81, %if.else
  %43 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings95 = getelementptr inbounds %struct.cop* %43, i64 0, i32 14
  %44 = load %struct.sv** %cop_warnings95, align 8, !tbaa !0
  %cmp96 = icmp eq %struct.sv* %44, null
  br i1 %cmp96, label %land.lhs.true98, label %if.end116

land.lhs.true98:                                  ; preds = %lor.lhs.false94
  %45 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and100 = and i8 %45, 1
  %tobool101 = icmp eq i8 %and100, 0
  br i1 %tobool101, label %if.end116, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %land.lhs.true85, %lor.lhs.false, %land.lhs.true98
  %sv_refcnt105 = getelementptr inbounds %struct.sv* %13, i64 0, i32 1
  %46 = load i32* %sv_refcnt105, align 4, !tbaa !4
  %cmp106 = icmp ugt i32 %46, 1
  br i1 %cmp106, label %if.then108, label %if.end116

if.then108:                                       ; preds = %land.lhs.true104
  %conv110 = zext i32 %46 to i64
  %sub111 = add i64 %conv110, -1
  tail call void (i32, i8*, ...)* @Perl_warner(i32 43, i8* getelementptr inbounds ([55 x i8]* @.str28, i64 0, i64 0), i64 %sub111) #6
  br label %if.end116

if.end116:                                        ; preds = %cond.end, %if.end, %land.lhs.true98, %cond.end22, %lor.lhs.false94, %if.then108, %land.lhs.true104, %if.end73
  %sp.2 = phi %struct.sv** [ %31, %if.end73 ], [ %incdec.ptr, %if.then108 ], [ %incdec.ptr, %land.lhs.true104 ], [ %incdec.ptr, %land.lhs.true98 ], [ %incdec.ptr, %lor.lhs.false94 ], [ %incdec.ptr, %cond.end22 ], [ %incdec.ptr, %cond.end ], [ %incdec.ptr, %if.end ]
  %call118 = tail call i32 @Perl_sv_unmagic(%struct.sv* %sv.0, i32 %9) #6
  %incdec.ptr119 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr119, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end116, %if.then
  %storemerge = phi %struct.sv** [ %incdec.ptr119, %if.end116 ], [ %0, %if.then ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_tied() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.end, label %lor.end

lor.end:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %and, 10
  %phitmp = select i1 %cmp3, i32 80, i32 113
  %cmp6 = icmp eq i32 %and, 13
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %3, i64 56
  %4 = bitcast i8* %xgv_gp to %struct.gp**
  %5 = load %struct.gp** %4, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %5, i64 0, i32 2
  %6 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool = icmp eq %struct.io* %6, null
  br i1 %tobool, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %7 = bitcast %struct.io* %6 to %struct.sv*
  %8 = getelementptr inbounds %struct.io* %6, i64 0, i32 2
  %.pre53 = load i32* %8, align 4, !tbaa !4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry, %land.lhs.true.if.end_crit_edge, %lor.end
  %10 = phi i32 [ %phitmp, %land.lhs.true.if.end_crit_edge ], [ %phitmp, %lor.end ], [ 80, %entry ]
  %11 = phi i32 [ %.pre53, %land.lhs.true.if.end_crit_edge ], [ %2, %lor.end ], [ %2, %entry ]
  %sv.0 = phi %struct.sv* [ %7, %land.lhs.true.if.end_crit_edge ], [ %1, %lor.end ], [ %1, %entry ]
  %and10 = and i32 %11, 32768
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end32, label %cond.end

cond.end:                                         ; preds = %if.end
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv.0, i32 %10) #6
  %tobool14 = icmp eq %struct.magic* %call, null
  br i1 %tobool14, label %if.end32, label %if.then15

if.then15:                                        ; preds = %cond.end
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %12 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.sv* %12, null
  br i1 %tobool16, label %cond.end22, label %if.then27

cond.end22:                                       ; preds = %if.then15
  %call20 = tail call %struct.sv* @Perl_newRV(%struct.sv* %sv.0) #6
  %call21 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20) #6
  %.pre = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %cmp25 = icmp eq %struct.sv* %call21, %.pre
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then15, %cond.end22
  %13 = phi %struct.sv* [ %.pre, %cond.end22 ], [ %12, %if.then15 ]
  %call28 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %13) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %cond.end22
  %osv.0 = phi %struct.sv* [ %call28, %if.then27 ], [ %call21, %cond.end22 ]
  store %struct.sv* %osv.0, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %14 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next31 = getelementptr inbounds %struct.op* %14, i64 0, i32 0
  br label %return

if.end32:                                         ; preds = %if.end, %cond.end
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next34 = getelementptr inbounds %struct.op* %15, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end32, %if.end29, %if.then
  %retval.0.in = phi %struct.op** [ %op_next31, %if.end29 ], [ %op_next34, %if.end32 ], [ %op_next, %if.then ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_dbmopen() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %0, i64 -2
  %2 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %0, i64 -3
  %3 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %call = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_no) #6
  tail call void @Perl_sv_setpv(%struct.sv* %call, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #6
  %call3 = tail call %struct.hv* @Perl_gv_stashsv(%struct.sv* %call, i32 0) #6
  %tobool = icmp eq %struct.hv* %call3, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %call3, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #6
  %tobool5 = icmp eq %struct.gv* %call4, null
  br i1 %tobool5, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_require_pv(i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0)) #6
  %4 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call6 = tail call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %call3, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #6
  %tobool7 = icmp eq %struct.gv* %call6, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then
  %call9 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([23 x i8]* @.str31, i64 0, i64 0)) #6
  br label %return

if.end10:                                         ; preds = %lor.lhs.false, %if.then
  %sp.0 = phi %struct.sv** [ %incdec.ptr2, %lor.lhs.false ], [ %4, %if.then ]
  %gv.0 = phi %struct.gv* [ %call4, %lor.lhs.false ], [ %call6, %if.then ]
  tail call void @Perl_push_scope() #6
  %5 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr11 = getelementptr inbounds i32* %5, i64 1
  store i32* %incdec.ptr11, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %6 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr11, %6
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %7 = phi i32* [ %.pre, %if.then12 ], [ %incdec.ptr11, %if.end10 ]
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div105 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div105 to i32
  store i32 %conv, i32* %7, align 4, !tbaa !4
  %9 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast14 = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.lhs.cast
  %cmp18 = icmp slt i64 %sub.ptr.sub16, 40
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end13
  %call21 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 5) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end13
  %sp.1 = phi %struct.sv** [ %call21, %if.then20 ], [ %sp.0, %if.end13 ]
  %incdec.ptr23 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call, %struct.sv** %incdec.ptr23, align 8, !tbaa !0
  %incdec.ptr24 = getelementptr inbounds %struct.sv** %sp.1, i64 2
  store %struct.sv* %2, %struct.sv** %incdec.ptr24, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %10, 65536
  %tobool25 = icmp eq i32 %and, 0
  br i1 %tobool25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end22
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %11, i64 24
  %12 = bitcast i8* %xiv_iv to i64*
  %13 = load i64* %12, align 8, !tbaa !3
  %tobool26 = icmp eq i64 %13, 0
  br i1 %tobool26, label %if.else, label %if.then29

cond.false:                                       ; preds = %if.end22
  %call27 = tail call i64 @Perl_sv_2iv(%struct.sv* %1) #6
  %tobool28 = icmp eq i64 %call27, 0
  br i1 %tobool28, label %if.else, label %if.then29

if.then29:                                        ; preds = %cond.true, %cond.false
  %call30 = tail call %struct.sv* @Perl_newSVuv(i64 66) #6
  %call31 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call30) #6
  %incdec.ptr32 = getelementptr inbounds %struct.sv** %sp.1, i64 3
  store %struct.sv* %call31, %struct.sv** %incdec.ptr32, align 8, !tbaa !0
  br label %if.end36

if.else:                                          ; preds = %cond.true, %cond.false
  %call33 = tail call %struct.sv* @Perl_newSVuv(i64 2) #6
  %call34 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call33) #6
  %incdec.ptr35 = getelementptr inbounds %struct.sv** %sp.1, i64 3
  store %struct.sv* %call34, %struct.sv** %incdec.ptr35, align 8, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then29
  %sp.2 = phi %struct.sv** [ %incdec.ptr32, %if.then29 ], [ %incdec.ptr35, %if.else ]
  %incdec.ptr37 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %1, %struct.sv** %incdec.ptr37, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr37, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_any38 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %14 = load %struct.xpvgv** %sv_any38, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %14, i64 0, i32 7
  %15 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %15, i64 0, i32 7
  %16 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %17 = bitcast %struct.cv* %16 to %struct.sv*
  %call39 = tail call i32 @Perl_call_sv(%struct.sv* %17, i32 0) #6
  %18 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.sv** %18, align 8, !tbaa !0
  %call40 = tail call i32 @Perl_sv_isobject(%struct.sv* %19) #6
  %tobool41 = icmp eq i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end64

if.then42:                                        ; preds = %if.end36
  %incdec.ptr43 = getelementptr inbounds %struct.sv** %18, i64 -1
  %20 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr44 = getelementptr inbounds i32* %20, i64 1
  store i32* %incdec.ptr44, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %21 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp45 = icmp eq i32* %incdec.ptr44, %21
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then42
  tail call void @Perl_markstack_grow() #6
  %.pre107 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then42
  %22 = phi i32* [ %.pre107, %if.then47 ], [ %incdec.ptr44, %if.then42 ]
  %23 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast49 = ptrtoint %struct.sv** %incdec.ptr43 to i64
  %sub.ptr.rhs.cast50 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %sub.ptr.div52106 = lshr exact i64 %sub.ptr.sub51, 3
  %conv53 = trunc i64 %sub.ptr.div52106 to i32
  store i32 %conv53, i32* %22, align 4, !tbaa !4
  store %struct.sv* %call, %struct.sv** %18, align 8, !tbaa !0
  %incdec.ptr55 = getelementptr inbounds %struct.sv** %18, i64 1
  store %struct.sv* %2, %struct.sv** %incdec.ptr55, align 8, !tbaa !0
  %call56 = tail call %struct.sv* @Perl_newSVuv(i64 0) #6
  %call57 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call56) #6
  %incdec.ptr58 = getelementptr inbounds %struct.sv** %18, i64 2
  store %struct.sv* %call57, %struct.sv** %incdec.ptr58, align 8, !tbaa !0
  %incdec.ptr59 = getelementptr inbounds %struct.sv** %18, i64 3
  store %struct.sv* %1, %struct.sv** %incdec.ptr59, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr59, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load %struct.xpvgv** %sv_any38, align 8, !tbaa !0
  %xgv_gp61 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp61, align 8, !tbaa !0
  %gp_cv62 = getelementptr inbounds %struct.gp* %25, i64 0, i32 7
  %26 = load %struct.cv** %gp_cv62, align 8, !tbaa !0
  %27 = bitcast %struct.cv* %26 to %struct.sv*
  %call63 = tail call i32 @Perl_call_sv(%struct.sv* %27, i32 0) #6
  %28 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end64

if.end64:                                         ; preds = %if.end36, %if.end48
  %sp.3 = phi %struct.sv** [ %18, %if.end36 ], [ %28, %if.end48 ]
  %29 = load %struct.sv** %sp.3, align 8, !tbaa !0
  %call65 = tail call i32 @Perl_sv_isobject(%struct.sv* %29) #6
  %tobool66 = icmp eq i32 %call65, 0
  br i1 %tobool66, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end64
  %call68 = tail call i32 @Perl_sv_unmagic(%struct.sv* %3, i32 80) #6
  %30 = load %struct.sv** %sp.3, align 8, !tbaa !0
  tail call void @Perl_sv_magic(%struct.sv* %3, %struct.sv* %30, i32 80, i8* null, i32 0) #6
  br label %if.end69

if.end69:                                         ; preds = %if.end64, %if.then67
  tail call void @Perl_pop_scope() #6
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %31, i64 0, i32 0
  %32 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end69, %if.then8
  %retval.0 = phi %struct.op* [ %32, %if.end69 ], [ %call9, %if.then8 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_require_pv(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_dbmclose() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_untie() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sselect() #0 {
entry:
  %timebuf = alloca %struct.timeval, align 8
  %fd_sets = alloca [4 x i8*], align 16
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv207 = phi i64 [ 1, %entry ], [ %indvars.iv.next208, %for.inc ]
  %maxlen.0200 = phi i32 [ 0, %entry ], [ %maxlen.1, %for.inc ]
  %add.ptr.sum194 = add i64 %indvars.iv207, -4
  %arrayidx1 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr.sum194
  %5 = load %struct.sv** %arrayidx1, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 262144
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !3
  %conv = trunc i64 %9 to i32
  %cmp4 = icmp slt i32 %maxlen.0200, %conv
  %conv.maxlen.0 = select i1 %cmp4, i32 %conv, i32 %maxlen.0200
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %maxlen.1 = phi i32 [ %maxlen.0200, %for.body ], [ %conv.maxlen.0, %if.end ]
  %indvars.iv.next208 = add i64 %indvars.iv207, 1
  %lftr.wideiv209 = trunc i64 %indvars.iv.next208 to i32
  %exitcond210 = icmp eq i32 %lftr.wideiv209, 4
  br i1 %exitcond210, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %rem = srem i32 %maxlen.1, 128
  %sub = sub i32 128, %rem
  %add = add i32 %sub, %maxlen.1
  %10 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags9 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags9, align 4, !tbaa !4
  %and10 = and i32 %11, 118423552
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end26, label %if.then12

if.then12:                                        ; preds = %for.end
  %and14 = and i32 %11, 131072
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then12
  %sv_any16 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any16, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %12, i64 32
  %13 = bitcast i8* %xnv_nv to double*
  %14 = load double* %13, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  %call = call double @Perl_sv_2nv(%struct.sv* %10) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %14, %cond.true ], [ %call, %cond.false ]
  %cmp17 = fcmp olt double %cond, 0.000000e+00
  %value.0 = select i1 %cmp17, double 0.000000e+00, double %cond
  %conv21 = fptosi double %value.0 to i64
  %tv_sec = getelementptr inbounds %struct.timeval* %timebuf, i64 0, i32 0
  store i64 %conv21, i64* %tv_sec, align 8, !tbaa !3
  %conv23 = sitofp i64 %conv21 to double
  %sub24 = fsub double %value.0, %conv23
  %mul = fmul double %sub24, 1.000000e+06
  %conv25 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval* %timebuf, i64 0, i32 1
  store i64 %conv25, i64* %tv_usec, align 8, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %for.end, %cond.end
  %tbuf.0 = phi %struct.timeval* [ %timebuf, %cond.end ], [ null, %for.end ]
  %conv63 = sext i32 %add to i64
  %15 = sub i32 127, %rem
  %16 = add i32 %15, %maxlen.1
  br label %for.body30

for.body30:                                       ; preds = %for.inc79, %if.end26
  %indvars.iv203 = phi i64 [ 1, %if.end26 ], [ %indvars.iv.next204, %for.inc79 ]
  %add.ptr.sum193 = add i64 %indvars.iv203, -4
  %arrayidx32 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr.sum193
  %17 = load %struct.sv** %arrayidx32, align 8, !tbaa !0
  %sv_flags33 = getelementptr inbounds %struct.sv* %17, i64 0, i32 2
  %18 = load i32* %sv_flags33, align 4, !tbaa !4
  %and34 = and i32 %18, 118423552
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %for.body30
  %arrayidx38 = getelementptr inbounds [4 x i8*]* %fd_sets, i64 0, i64 %indvars.iv203
  store i8* null, i8** %arrayidx38, align 8, !tbaa !0
  br label %for.inc79

if.else39:                                        ; preds = %for.body30
  %and41 = and i32 %18, 262144
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end57

if.then43:                                        ; preds = %if.else39
  %and45 = and i32 %18, 10223616
  %cmp46 = icmp eq i32 %and45, 262144
  br i1 %cmp46, label %cond.true48, label %cond.false52

cond.true48:                                      ; preds = %if.then43
  %sv_any49 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %19 = load i8** %sv_any49, align 8, !tbaa !0
  %xpv_cur50 = getelementptr inbounds i8* %19, i64 8
  %20 = bitcast i8* %xpv_cur50 to i64*
  %21 = load i64* %20, align 8, !tbaa !3
  store i64 %21, i64* %n_a, align 8, !tbaa !3
  br label %if.end57

cond.false52:                                     ; preds = %if.then43
  %call53 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %17, i64* %n_a, i32 2) #6
  br label %if.end57

if.end57:                                         ; preds = %if.else39, %cond.false52, %cond.true48
  %sv_any58 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %22 = load i8** %sv_any58, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %22, i64 16
  %23 = bitcast i8* %xpv_len to i64*
  %24 = load i64* %23, align 8, !tbaa !3
  %conv59 = trunc i64 %24 to i32
  %cmp60 = icmp slt i32 %conv59, %add
  br i1 %cmp60, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end57
  %call64 = call i8* @Perl_sv_grow(%struct.sv* %17, i64 %conv63) #6
  %.pre = load i8** %sv_any58, align 8, !tbaa !0
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end57
  %25 = phi i8* [ %.pre, %if.then62 ], [ %22, %if.end57 ]
  %xpv_cur67 = getelementptr inbounds i8* %25, i64 8
  %26 = bitcast i8* %xpv_cur67 to i64*
  %27 = load i64* %26, align 8, !tbaa !3
  %conv68 = trunc i64 %27 to i32
  %cmp73196 = icmp slt i32 %conv68, %add
  br i1 %cmp73196, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end65
  %xpv_pv70 = bitcast i8* %25 to i8**
  %28 = load i8** %xpv_pv70, align 8, !tbaa !0
  %sext = shl i64 %27, 32
  %29 = ashr exact i64 %sext, 32
  %scevgep = getelementptr i8* %28, i64 %29
  %30 = sub i32 %16, %conv68
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %32, i32 1, i1 false)
  %.pre211 = load i8** %sv_any58, align 8, !tbaa !0
  br label %while.end

while.end:                                        ; preds = %while.body.lr.ph, %if.end65
  %33 = phi i8* [ %.pre211, %while.body.lr.ph ], [ %25, %if.end65 ]
  %xpv_pv76 = bitcast i8* %33 to i8**
  %34 = load i8** %xpv_pv76, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds [4 x i8*]* %fd_sets, i64 0, i64 %indvars.iv203
  store i8* %34, i8** %arrayidx78, align 8, !tbaa !0
  br label %for.inc79

for.inc79:                                        ; preds = %while.end, %if.then36
  %indvars.iv.next204 = add i64 %indvars.iv203, 1
  %lftr.wideiv205 = trunc i64 %indvars.iv.next204 to i32
  %exitcond206 = icmp eq i32 %lftr.wideiv205, 4
  br i1 %exitcond206, label %for.end81, label %for.body30

for.end81:                                        ; preds = %for.inc79
  %mul82 = shl nsw i32 %maxlen.1, 3
  %arrayidx83 = getelementptr inbounds [4 x i8*]* %fd_sets, i64 0, i64 1
  %35 = load i8** %arrayidx83, align 8, !tbaa !0
  %36 = bitcast i8* %35 to %struct.fd_set*
  %arrayidx84 = getelementptr inbounds [4 x i8*]* %fd_sets, i64 0, i64 2
  %37 = load i8** %arrayidx84, align 16, !tbaa !0
  %38 = bitcast i8* %37 to %struct.fd_set*
  %arrayidx85 = getelementptr inbounds [4 x i8*]* %fd_sets, i64 0, i64 3
  %39 = load i8** %arrayidx85, align 8, !tbaa !0
  %40 = bitcast i8* %39 to %struct.fd_set*
  %call86 = call i32 @select(i32 %mul82, %struct.fd_set* %36, %struct.fd_set* %38, %struct.fd_set* %40, %struct.timeval* %tbuf.0) #6
  br label %for.body90

for.body90:                                       ; preds = %for.inc104.for.body90_crit_edge, %for.end81
  %41 = phi i8* [ %35, %for.end81 ], [ %.pre212, %for.inc104.for.body90_crit_edge ]
  %indvars.iv = phi i64 [ 1, %for.end81 ], [ %indvars.iv.next, %for.inc104.for.body90_crit_edge ]
  %tobool93 = icmp eq i8* %41, null
  br i1 %tobool93, label %for.inc104, label %if.then94

if.then94:                                        ; preds = %for.body90
  %add.ptr.sum = add i64 %indvars.iv, -4
  %arrayidx96 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr.sum
  %42 = load %struct.sv** %arrayidx96, align 8, !tbaa !0
  %sv_flags97 = getelementptr inbounds %struct.sv* %42, i64 0, i32 2
  %43 = load i32* %sv_flags97, align 4, !tbaa !4
  %and98 = and i32 %43, 16384
  %tobool99 = icmp eq i32 %and98, 0
  br i1 %tobool99, label %for.inc104, label %if.then100

if.then100:                                       ; preds = %if.then94
  %call101 = call i32 @Perl_mg_set(%struct.sv* %42) #6
  br label %for.inc104

for.inc104:                                       ; preds = %if.then94, %for.body90, %if.then100
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end106, label %for.inc104.for.body90_crit_edge

for.inc104.for.body90_crit_edge:                  ; preds = %for.inc104
  %arrayidx92.phi.trans.insert = getelementptr inbounds [4 x i8*]* %fd_sets, i64 0, i64 %indvars.iv.next
  %.pre212 = load i8** %arrayidx92.phi.trans.insert, align 8, !tbaa !0
  br label %for.body90

for.end106:                                       ; preds = %for.inc104
  %conv107 = sext i32 %call86 to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv107) #6
  %sv_flags108 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %44 = load i32* %sv_flags108, align 4, !tbaa !4
  %and109 = and i32 %44, 16384
  %tobool110 = icmp eq i32 %and109, 0
  br i1 %tobool110, label %if.end113, label %if.then111

if.then111:                                       ; preds = %for.end106
  %call112 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end113

if.end113:                                        ; preds = %for.end106, %if.then111
  %incdec.ptr114 = getelementptr inbounds %struct.sv** %0, i64 -3
  store %struct.sv* %4, %struct.sv** %incdec.ptr114, align 8, !tbaa !0
  %45 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %45, i64 0, i32 6
  %46 = load i8* %op_flags, align 1, !tbaa !1
  %conv115 = zext i8 %46 to i32
  %and116 = and i32 %conv115, 3
  %tobool117 = icmp eq i32 %and116, 0
  br i1 %tobool117, label %cond.false125, label %cond.true118

cond.true118:                                     ; preds = %if.end113
  %cmp122 = icmp eq i32 %and116, 3
  %cond124 = zext i1 %cmp122 to i32
  br label %cond.end127

cond.false125:                                    ; preds = %if.end113
  %call126 = call i32 @Perl_dowantarray() #6
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false125, %cond.true118
  %cond128 = phi i32 [ %cond124, %cond.true118 ], [ %call126, %cond.false125 ]
  %cmp129 = icmp ne i32 %cond128, 1
  %tobool131 = icmp eq %struct.timeval* %tbuf.0, null
  %or.cond = or i1 %cmp129, %tobool131
  br i1 %or.cond, label %if.end140, label %if.then132

if.then132:                                       ; preds = %cond.end127
  %tv_sec133 = getelementptr inbounds %struct.timeval* %timebuf, i64 0, i32 0
  %47 = load i64* %tv_sec133, align 8, !tbaa !3
  %conv134 = sitofp i64 %47 to double
  %tv_usec135 = getelementptr inbounds %struct.timeval* %timebuf, i64 0, i32 1
  %48 = load i64* %tv_usec135, align 8, !tbaa !3
  %conv136 = sitofp i64 %48 to double
  %div = fdiv double %conv136, 1.000000e+06
  %add137 = fadd double %conv134, %div
  %call138 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_no) #6
  %incdec.ptr139 = getelementptr inbounds %struct.sv** %0, i64 -2
  store %struct.sv* %call138, %struct.sv** %incdec.ptr139, align 8, !tbaa !0
  call void @Perl_sv_setnv(%struct.sv* %call138, double %add137) #6
  br label %if.end140

if.end140:                                        ; preds = %cond.end127, %if.then132
  %sp.0 = phi %struct.sv** [ %incdec.ptr139, %if.then132 ], [ %incdec.ptr114, %cond.end127 ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %49 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %49, i64 0, i32 0
  %50 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %50
}

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: optsize
declare i32 @Perl_dowantarray() #1

; Function Attrs: optsize
declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_setdefout(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.gv* %gv to %struct.sv*
  store %struct.sv* %0, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %1 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %1, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %tobool3 = icmp eq %struct.gv* %3, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = bitcast %struct.gv* %3 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %4) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  store %struct.gv* %gv, %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_select() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  %7 = bitcast %struct.sv* %6 to %struct.gv*
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.true ], [ %0, %entry ]
  %cond = phi %struct.gv* [ %7, %cond.true ], [ null, %entry ]
  %8 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %8, i64 0, i32 0
  %9 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %9, i64 0, i32 7
  %10 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %10, i64 0, i32 6
  %11 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  %tobool = icmp eq %struct.gv* %11, null
  %. = select i1 %tobool, %struct.gv* %8, %struct.gv* %11
  %sv_any2 = getelementptr inbounds %struct.gv* %., i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any2, align 8, !tbaa !0
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 10
  %13 = load %struct.hv** %xgv_stash, align 8, !tbaa !0
  %tobool3 = icmp eq %struct.hv* %13, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %cond.end
  %14 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  %sp.1 = phi %struct.sv** [ %call, %if.then7 ], [ %sp.0, %if.then4 ]
  %incdec.ptr9 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr9, align 8, !tbaa !0
  br label %if.end46

if.else:                                          ; preds = %cond.end
  %xgv_name = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 8
  %15 = load i8** %xgv_name, align 8, !tbaa !0
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 9
  %16 = load i64* %xgv_namelen, align 8, !tbaa !3
  %conv12 = trunc i64 %16 to i32
  %call13 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %13, i8* %15, i32 %conv12, i32 0) #6
  %tobool14 = icmp eq %struct.sv** %call13, null
  br i1 %tobool14, label %if.else32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.sv** %call13, align 8
  %18 = bitcast %struct.sv* %17 to %struct.gv*
  %cmp15 = icmp eq %struct.gv* %18, %.
  br i1 %cmp15, label %if.then17, label %if.else32

if.then17:                                        ; preds = %land.lhs.true
  %19 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  tail call void @Perl_gv_efullname4(%struct.sv* %4, %struct.gv* %19, i8* null, i8 signext 1) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %20 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %20, 16384
  %tobool18 = icmp eq i32 %and, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then17
  %call20 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then19
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast22 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast23 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %cmp26 = icmp slt i64 %sub.ptr.sub24, 8
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end21
  %call29 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end21
  %sp.2 = phi %struct.sv** [ %call29, %if.then28 ], [ %sp.0, %if.end21 ]
  %incdec.ptr31 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr31, align 8, !tbaa !0
  br label %if.end46

if.else32:                                        ; preds = %if.else, %land.lhs.true
  %22 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %cmp37 = icmp slt i64 %sub.ptr.sub35, 8
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.else32
  %call40 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.else32
  %sp.3 = phi %struct.sv** [ %call40, %if.then39 ], [ %sp.0, %if.else32 ]
  %23 = bitcast %struct.gv* %. to %struct.sv*
  %call42 = tail call %struct.sv* @Perl_newRV(%struct.sv* %23) #6
  %call43 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42) #6
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %sp.3, i64 1
  store %struct.sv* %call43, %struct.sv** %incdec.ptr44, align 8, !tbaa !0
  br label %if.end46

if.end46:                                         ; preds = %if.end30, %if.end41, %if.end8
  %sp.4 = phi %struct.sv** [ %incdec.ptr31, %if.end30 ], [ %incdec.ptr44, %if.end41 ], [ %incdec.ptr9, %if.end8 ]
  %tobool47 = icmp eq %struct.gv* %cond, null
  br i1 %tobool47, label %if.end67, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.end46
  %24 = getelementptr inbounds %struct.gv* %cond, i64 0, i32 2
  %25 = load i32* %24, align 4, !tbaa !4
  %and52 = and i32 %25, 255
  %cmp53 = icmp eq i32 %and52, 13
  br i1 %cmp53, label %land.lhs.true55, label %if.then64

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %sv_any56 = getelementptr inbounds %struct.gv* %cond, i64 0, i32 0
  %26 = load %struct.xpvgv** %sv_any56, align 8, !tbaa !0
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv* %26, i64 0, i32 7
  %27 = load %struct.gp** %xgv_gp57, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.gp* %27, null
  br i1 %tobool58, label %if.then64, label %cond.true59

cond.true59:                                      ; preds = %land.lhs.true55
  %gp_io = getelementptr inbounds %struct.gp* %27, i64 0, i32 2
  %28 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool62 = icmp eq %struct.io* %28, null
  br i1 %tobool62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %cond.true59, %land.lhs.true55, %land.lhs.true50
  %call65 = tail call %struct.gv* @Perl_gv_IOadd(%struct.gv* %cond) #6
  br label %if.end66

if.end66:                                         ; preds = %cond.true59, %if.then64
  tail call void @Perl_setdefout(%struct.gv* %cond) #7
  br label %if.end67

if.end67:                                         ; preds = %if.end46, %if.end66
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %29, i64 0, i32 0
  %30 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %30
}

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_IOadd(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getc() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gv** @PL_stdingv, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %7 = load %struct.sv** %0, align 8, !tbaa !0
  %8 = bitcast %struct.sv* %7 to %struct.gv*
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gv.0 = phi %struct.gv* [ %6, %if.then ], [ %8, %if.else ]
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %if.else ]
  %tobool = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool, label %if.then93, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %9 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !4
  %and4 = and i32 %10, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true7, label %lor.lhs.false

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %sv_any = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.gp* %12, null
  br i1 %tobool8, label %lor.lhs.false, label %cond.end

cond.end:                                         ; preds = %land.lhs.true7
  %gp_io = getelementptr inbounds %struct.gp* %12, i64 0, i32 2
  %13 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.io* %13, null
  br i1 %tobool11, label %lor.lhs.false, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %cond.end
  %14 = bitcast %struct.io* %13 to %struct.sv*
  %15 = getelementptr inbounds %struct.io* %13, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !4
  %and14 = and i32 %16, 32768
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %lor.lhs.false, label %cond.end18

cond.end18:                                       ; preds = %land.lhs.true12
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %14, i32 113) #6
  %tobool20 = icmp eq %struct.magic* %call, null
  br i1 %tobool20, label %lor.lhs.false, label %if.then21

if.then21:                                        ; preds = %cond.end18
  %17 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %17, i64 0, i32 6
  %18 = load i8* %op_flags, align 1, !tbaa !1
  %conv22 = zext i8 %18 to i32
  %and23 = and i32 %conv22, 3
  %cmp24 = icmp eq i32 %and23, 1
  br i1 %cmp24, label %cond.end47, label %cond.false27

cond.false27:                                     ; preds = %if.then21
  %cmp31 = icmp eq i32 %and23, 2
  br i1 %cmp31, label %cond.end47, label %cond.false34

cond.false34:                                     ; preds = %cond.false27
  %cmp38 = icmp eq i32 %and23, 3
  br i1 %cmp38, label %cond.end47, label %cond.false41

cond.false41:                                     ; preds = %cond.false34
  %call42 = tail call i32 @Perl_block_gimme() #6
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false27, %cond.false34, %cond.false41, %if.then21
  %cond48 = phi i32 [ 128, %if.then21 ], [ 0, %cond.false27 ], [ %call42, %cond.false41 ], [ 1, %cond.false34 ]
  %19 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr49 = getelementptr inbounds i32* %19, i64 1
  store i32* %incdec.ptr49, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %20 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp50 = icmp eq i32* %incdec.ptr49, %20
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %cond.end47
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %cond.end47
  %21 = phi i32* [ %.pre, %if.then52 ], [ %incdec.ptr49, %cond.end47 ]
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div251 = lshr exact i64 %sub.ptr.sub, 3
  %conv54 = trunc i64 %sub.ptr.div251 to i32
  store i32 %conv54, i32* %21, align 4, !tbaa !4
  %23 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast55 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.lhs.cast
  %cmp59 = icmp slt i64 %sub.ptr.sub57, 8
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end53
  %call62 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end53
  %sp.1 = phi %struct.sv** [ %call62, %if.then61 ], [ %sp.0, %if.end53 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %24 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool64 = icmp eq %struct.sv* %24, null
  br i1 %tobool64, label %cond.false67, label %cond.end70

cond.false67:                                     ; preds = %if.end63
  %call68 = tail call %struct.sv* @Perl_newRV(%struct.sv* %14) #6
  %call69 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call68) #6
  br label %cond.end70

cond.end70:                                       ; preds = %if.end63, %cond.false67
  %cond71 = phi %struct.sv* [ %call69, %cond.false67 ], [ %24, %if.end63 ]
  %incdec.ptr72 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %cond71, %struct.sv** %incdec.ptr72, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr72, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call73 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0), i32 %cond48) #6
  tail call void @Perl_pop_scope() #6
  %25 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp74 = icmp eq i32 %cond48, 0
  br i1 %cmp74, label %if.then76, label %if.end87

if.then76:                                        ; preds = %cond.end70
  %26 = load %struct.sv** %25, align 8, !tbaa !0
  %cmp77 = icmp eq %struct.sv* %4, %26
  br i1 %cmp77, label %if.end87, label %if.then79

if.then79:                                        ; preds = %if.then76
  tail call void @Perl_sv_setsv_flags(%struct.sv* %4, %struct.sv* %26, i32 18) #6
  %sv_flags80 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %27 = load i32* %sv_flags80, align 4, !tbaa !4
  %and81 = and i32 %27, 16384
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %if.end87, label %if.then83

if.then83:                                        ; preds = %if.then79
  %call84 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %if.then76, %if.then83, %cond.end70
  store %struct.sv** %25, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %28, i64 0, i32 0
  br label %return

lor.lhs.false:                                    ; preds = %cond.end, %cond.end18, %land.lhs.true7, %land.lhs.true12, %land.lhs.true3
  %io.0255 = phi %struct.io* [ null, %land.lhs.true3 ], [ %13, %cond.end18 ], [ null, %cond.end ], [ null, %land.lhs.true7 ], [ %13, %land.lhs.true12 ]
  %call90 = tail call signext i8 @Perl_do_eof(%struct.gv* %gv.0) #6
  %tobool92 = icmp eq i8 %call90, 0
  br i1 %tobool92, label %if.end143, label %if.then93

if.then93:                                        ; preds = %if.end, %lor.lhs.false
  %io.0254 = phi %struct.io* [ %io.0255, %lor.lhs.false ], [ null, %if.end ]
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp94 = icmp eq %struct.sv* %30, null
  br i1 %cmp94, label %lor.lhs.false119, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.then93
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings97 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings97, align 8, !tbaa !0
  %cmp98 = icmp eq %struct.sv* %32, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp98, label %lor.lhs.false119, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %land.lhs.true96
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings101 = getelementptr inbounds %struct.cop* %33, i64 0, i32 14
  %34 = load %struct.sv** %cop_warnings101, align 8, !tbaa !0
  %cmp102 = icmp eq %struct.sv* %34, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp102, label %land.lhs.true127, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %land.lhs.true100
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings105 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings105, align 8, !tbaa !0
  %sv_any106 = getelementptr inbounds %struct.sv* %36, i64 0, i32 0
  %37 = load i8** %sv_any106, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %37 to i8**
  %38 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i8* %38, i64 2
  %39 = load i8* %arrayidx107, align 1, !tbaa !1
  %and109 = and i8 %39, 64
  %tobool110 = icmp eq i8 %and109, 0
  br i1 %tobool110, label %lor.lhs.false111, label %land.lhs.true127

lor.lhs.false111:                                 ; preds = %lor.lhs.false104
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings112 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings112, align 8, !tbaa !0
  %sv_any113 = getelementptr inbounds %struct.sv* %41, i64 0, i32 0
  %42 = load i8** %sv_any113, align 8, !tbaa !0
  %xpv_pv114 = bitcast i8* %42 to i8**
  %43 = load i8** %xpv_pv114, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i8* %43, i64 1
  %44 = load i8* %arrayidx115, align 1, !tbaa !1
  %and117 = and i8 %44, 16
  %tobool118 = icmp eq i8 %and117, 0
  br i1 %tobool118, label %lor.lhs.false119, label %land.lhs.true127

lor.lhs.false119:                                 ; preds = %lor.lhs.false111, %land.lhs.true96, %if.then93
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings120 = getelementptr inbounds %struct.cop* %45, i64 0, i32 14
  %46 = load %struct.sv** %cop_warnings120, align 8, !tbaa !0
  %cmp121 = icmp eq %struct.sv* %46, null
  br i1 %cmp121, label %land.lhs.true123, label %if.end139

land.lhs.true123:                                 ; preds = %lor.lhs.false119
  %47 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and125 = and i8 %47, 1
  %tobool126 = icmp eq i8 %and125, 0
  br i1 %tobool126, label %if.end139, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %lor.lhs.false111, %lor.lhs.false104, %land.lhs.true123, %land.lhs.true100
  %tobool128 = icmp eq %struct.io* %io.0254, null
  br i1 %tobool128, label %if.then137, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %land.lhs.true127
  %sv_any130 = getelementptr inbounds %struct.io* %io.0254, i64 0, i32 0
  %48 = load %struct.xpvio** %sv_any130, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %48, i64 0, i32 7
  %49 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool131 = icmp eq %struct._PerlIO** %49, null
  br i1 %tobool131, label %land.lhs.true132, label %if.end139

land.lhs.true132:                                 ; preds = %lor.lhs.false129
  %xio_type = getelementptr inbounds %struct.xpvio* %48, i64 0, i32 21
  %50 = load i8* %xio_type, align 1, !tbaa !1
  %cmp135 = icmp eq i8 %50, 62
  br i1 %cmp135, label %if.end139, label %if.then137

if.then137:                                       ; preds = %land.lhs.true132, %land.lhs.true127
  %51 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %51, i64 0, i32 4
  %52 = load i16* %op_type, align 2, !tbaa !5
  %conv138 = zext i16 %52 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %io.0254, i32 %conv138) #6
  br label %if.end139

if.end139:                                        ; preds = %land.lhs.true132, %lor.lhs.false129, %land.lhs.true123, %if.then137, %lor.lhs.false119
  %call140 = tail call i32* @__errno_location() #6
  store i32 9, i32* %call140, align 4, !tbaa !4
  %incdec.ptr141 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr141, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr141, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %53 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next142 = getelementptr inbounds %struct.op* %53, i64 0, i32 0
  br label %return

if.end143:                                        ; preds = %lor.lhs.false
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([2 x i8]* @.str33, i64 0, i64 0)) #6
  %sv_any144 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %54 = load %struct.xpvgv** %sv_any144, align 8, !tbaa !0
  %xgv_gp145 = getelementptr inbounds %struct.xpvgv* %54, i64 0, i32 7
  %55 = load %struct.gp** %xgv_gp145, align 8, !tbaa !0
  %gp_io146 = getelementptr inbounds %struct.gp* %55, i64 0, i32 2
  %56 = load %struct.io** %gp_io146, align 8, !tbaa !0
  %sv_any147 = getelementptr inbounds %struct.io* %56, i64 0, i32 0
  %57 = load %struct.xpvio** %sv_any147, align 8, !tbaa !0
  %xio_ifp148 = getelementptr inbounds %struct.xpvio* %57, i64 0, i32 7
  %58 = load %struct._PerlIO*** %xio_ifp148, align 8, !tbaa !0
  %call149 = tail call i32 @PerlIO_getc(%struct._PerlIO** %58) #6
  %conv150 = trunc i32 %call149 to i8
  %sv_any151 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %59 = load i8** %sv_any151, align 8, !tbaa !0
  %xpv_pv152 = bitcast i8* %59 to i8**
  %60 = load i8** %xpv_pv152, align 8, !tbaa !0
  store i8 %conv150, i8* %60, align 1, !tbaa !1
  %61 = load %struct.xpvgv** %sv_any144, align 8, !tbaa !0
  %xgv_gp154 = getelementptr inbounds %struct.xpvgv* %61, i64 0, i32 7
  %62 = load %struct.gp** %xgv_gp154, align 8, !tbaa !0
  %gp_io155 = getelementptr inbounds %struct.gp* %62, i64 0, i32 2
  %63 = load %struct.io** %gp_io155, align 8, !tbaa !0
  %sv_any156 = getelementptr inbounds %struct.io* %63, i64 0, i32 0
  %64 = load %struct.xpvio** %sv_any156, align 8, !tbaa !0
  %xio_ifp157 = getelementptr inbounds %struct.xpvio* %64, i64 0, i32 7
  %65 = load %struct._PerlIO*** %xio_ifp157, align 8, !tbaa !0
  %call158 = tail call i32 @PerlIO_isutf8(%struct._PerlIO** %65) #6
  %tobool159 = icmp eq i32 %call158, 0
  br i1 %tobool159, label %if.end143.if.end191_crit_edge, label %if.then160

if.end143.if.end191_crit_edge:                    ; preds = %if.end143
  %sv_flags192.phi.trans.insert = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %.pre258 = load i32* %sv_flags192.phi.trans.insert, align 4, !tbaa !4
  br label %if.end191

if.then160:                                       ; preds = %if.end143
  %66 = load i8** %sv_any151, align 8, !tbaa !0
  %xpv_pv162 = bitcast i8* %66 to i8**
  %67 = load i8** %xpv_pv162, align 8, !tbaa !0
  %68 = load i8* %67, align 1, !tbaa !1
  %idxprom = zext i8 %68 to i64
  %arrayidx163 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %69 = load i8* %arrayidx163, align 1, !tbaa !1
  %conv164 = zext i8 %69 to i64
  %cmp165 = icmp ugt i8 %69, 1
  br i1 %cmp165, label %if.then167, label %if.end189

if.then167:                                       ; preds = %if.then160
  %xpv_len = getelementptr inbounds i8* %66, i64 16
  %70 = bitcast i8* %xpv_len to i64*
  %71 = load i64* %70, align 8, !tbaa !3
  %add = add i64 %conv164, 1
  %cmp169 = icmp ult i64 %71, %add
  br i1 %cmp169, label %cond.true171, label %cond.end177

cond.true171:                                     ; preds = %if.then167
  %call173 = tail call i8* @Perl_sv_grow(%struct.sv* %4, i64 %add) #6
  %.pre256 = load i8** %sv_any151, align 8, !tbaa !0
  %xpv_pv185.phi.trans.insert = bitcast i8* %.pre256 to i8**
  %.pre257 = load i8** %xpv_pv185.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end177

cond.end177:                                      ; preds = %if.then167, %cond.true171
  %72 = phi i8* [ %67, %if.then167 ], [ %.pre257, %cond.true171 ]
  %73 = load %struct.xpvgv** %sv_any144, align 8, !tbaa !0
  %xgv_gp180 = getelementptr inbounds %struct.xpvgv* %73, i64 0, i32 7
  %74 = load %struct.gp** %xgv_gp180, align 8, !tbaa !0
  %gp_io181 = getelementptr inbounds %struct.gp* %74, i64 0, i32 2
  %75 = load %struct.io** %gp_io181, align 8, !tbaa !0
  %sv_any182 = getelementptr inbounds %struct.io* %75, i64 0, i32 0
  %76 = load %struct.xpvio** %sv_any182, align 8, !tbaa !0
  %xio_ifp183 = getelementptr inbounds %struct.xpvio* %76, i64 0, i32 7
  %77 = load %struct._PerlIO*** %xio_ifp183, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %72, i64 1
  %sub = add i64 %conv164, -1
  %call186 = tail call i64 @Perl_PerlIO_read(%struct._PerlIO** %77, i8* %add.ptr, i64 %sub) #6
  %add187 = add i64 %call186, 1
  %78 = load i8** %sv_any151, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %78, i64 8
  %79 = bitcast i8* %xpv_cur to i64*
  store i64 %add187, i64* %79, align 8, !tbaa !3
  br label %if.end189

if.end189:                                        ; preds = %cond.end177, %if.then160
  %sv_flags190 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %80 = load i32* %sv_flags190, align 4, !tbaa !4
  %or = or i32 %80, 536870912
  store i32 %or, i32* %sv_flags190, align 4, !tbaa !4
  br label %if.end191

if.end191:                                        ; preds = %if.end143.if.end191_crit_edge, %if.end189
  %81 = phi i32 [ %.pre258, %if.end143.if.end191_crit_edge ], [ %or, %if.end189 ]
  %and193 = and i32 %81, 16384
  %tobool194 = icmp eq i32 %and193, 0
  br i1 %tobool194, label %if.end197, label %if.then195

if.then195:                                       ; preds = %if.end191
  %call196 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end197

if.end197:                                        ; preds = %if.end191, %if.then195
  %incdec.ptr198 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr198, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr198, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %82 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next199 = getelementptr inbounds %struct.op* %82, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end197, %if.end139, %if.end87
  %retval.0.in = phi %struct.op** [ %op_next, %if.end87 ], [ %op_next142, %if.end139 ], [ %op_next199, %if.end197 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_do_eof(%struct.gv*) #1

; Function Attrs: optsize
declare i32 @PerlIO_getc(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @PerlIO_isutf8(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_read() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_sysread() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sysread() #0 {
entry:
  %blen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %8 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %9 = bitcast %struct.sv* %8 to %struct.gv*
  %op_type = getelementptr inbounds %struct.op* %4, i64 0, i32 4
  %10 = load i16* %op_type, align 2, !tbaa !5
  switch i16 %10, label %if.end50 [
    i16 205, label %land.lhs.true
    i16 212, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %entry, %entry
  %tobool = icmp eq %struct.sv* %8, null
  br i1 %tobool, label %say_undef, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %11, 255
  %cmp11 = icmp eq i32 %and, 13
  br i1 %cmp11, label %land.lhs.true13, label %if.end53

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %sv_any = bitcast %struct.sv* %8 to %struct.xpvgv**
  %12 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool14 = icmp eq %struct.gp* %13, null
  br i1 %tobool14, label %if.end50, label %cond.end

cond.end:                                         ; preds = %land.lhs.true13
  %gp_io = getelementptr inbounds %struct.gp* %13, i64 0, i32 2
  %14 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.io* %14, null
  br i1 %tobool17, label %if.end50, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %cond.end
  %15 = bitcast %struct.io* %14 to %struct.sv*
  %16 = getelementptr inbounds %struct.io* %14, i64 0, i32 2
  %17 = load i32* %16, align 4, !tbaa !4
  %and20 = and i32 %17, 32768
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.end50, label %cond.end24

cond.end24:                                       ; preds = %land.lhs.true18
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %15, i32 113) #6
  %tobool26 = icmp eq %struct.magic* %call, null
  br i1 %tobool26, label %if.end50, label %if.then

if.then:                                          ; preds = %cond.end24
  %18 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr27 = getelementptr inbounds i32* %18, i64 1
  store i32* %incdec.ptr27, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %19 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp28 = icmp eq i32* %incdec.ptr27, %19
  br i1 %cmp28, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.then
  call void @Perl_markstack_grow() #6
  %.pre649 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.then
  %20 = phi i32* [ %.pre649, %if.then30 ], [ %incdec.ptr27, %if.then ]
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast33 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast33
  %sub.ptr.div35611 = lshr exact i64 %sub.ptr.sub34, 3
  %conv36 = trunc i64 %sub.ptr.div35611 to i32
  store i32 %conv36, i32* %20, align 4, !tbaa !4
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %22 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool37 = icmp eq %struct.sv* %22, null
  br i1 %tobool37, label %cond.false40, label %cond.end43

cond.false40:                                     ; preds = %if.end
  %call41 = call %struct.sv* @Perl_newRV(%struct.sv* %15) #6
  %call42 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call41) #6
  br label %cond.end43

cond.end43:                                       ; preds = %if.end, %cond.false40
  %cond44 = phi %struct.sv* [ %call42, %cond.false40 ], [ %22, %if.end ]
  store %struct.sv* %cond44, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  call void @Perl_push_scope() #6
  %call45 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i32 0) #6
  call void @Perl_pop_scope() #6
  %23 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load %struct.sv** %23, align 8, !tbaa !0
  %25 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr48.sum = add i64 %idx.ext, 1
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %25, i64 %add.ptr48.sum
  store %struct.sv* %24, %struct.sv** %incdec.ptr49, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr49, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %26, i64 0, i32 0
  %27 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end50:                                         ; preds = %land.lhs.true18, %land.lhs.true13, %entry, %cond.end24, %cond.end
  %tobool51 = icmp eq %struct.sv* %8, null
  br i1 %tobool51, label %say_undef, label %if.end53

if.end53:                                         ; preds = %if.end50, %land.lhs.true10
  %incdec.ptr1.sum = add i64 %idx.ext, 2
  %incdec.ptr54 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr1.sum
  %28 = load %struct.sv** %incdec.ptr54, align 8, !tbaa !0
  %sv_flags55 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags55, align 4, !tbaa !4
  %and56 = and i32 %29, 118423552
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end53
  call void @Perl_sv_setpvn(%struct.sv* %28, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i64 0) #6
  br label %if.end59

if.end59:                                         ; preds = %if.end53, %if.then58
  %incdec.ptr54.sum = add i64 %idx.ext, 3
  %incdec.ptr60 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr54.sum
  %30 = load %struct.sv** %incdec.ptr60, align 8, !tbaa !0
  store %struct.sv* %30, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags61 = getelementptr inbounds %struct.sv* %30, i64 0, i32 2
  %31 = load i32* %sv_flags61, align 4, !tbaa !4
  %and62 = and i32 %31, 65536
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %cond.false66, label %cond.true64

cond.true64:                                      ; preds = %if.end59
  %sv_any65 = getelementptr inbounds %struct.sv* %30, i64 0, i32 0
  %32 = load i8** %sv_any65, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %32, i64 24
  %33 = bitcast i8* %xiv_iv to i64*
  %34 = load i64* %33, align 8, !tbaa !3
  br label %cond.end68

cond.false66:                                     ; preds = %if.end59
  %call67 = call i64 @Perl_sv_2iv(%struct.sv* %30) #6
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true64
  %cond69 = phi i64 [ %34, %cond.true64 ], [ %call67, %cond.false66 ]
  %call70 = call i32* @__errno_location() #6
  store i32 0, i32* %call70, align 4, !tbaa !4
  %cmp71 = icmp ult %struct.sv** %incdec.ptr60, %0
  br i1 %cmp71, label %if.then73, label %land.lhs.true88

if.then73:                                        ; preds = %cond.end68
  %incdec.ptr60.sum = add i64 %idx.ext, 4
  %incdec.ptr74 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr60.sum
  %35 = load %struct.sv** %incdec.ptr74, align 8, !tbaa !0
  store %struct.sv* %35, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags75 = getelementptr inbounds %struct.sv* %35, i64 0, i32 2
  %36 = load i32* %sv_flags75, align 4, !tbaa !4
  %and76 = and i32 %36, 65536
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %cond.false81, label %cond.true78

cond.true78:                                      ; preds = %if.then73
  %sv_any79 = getelementptr inbounds %struct.sv* %35, i64 0, i32 0
  %37 = load i8** %sv_any79, align 8, !tbaa !0
  %xiv_iv80 = getelementptr inbounds i8* %37, i64 24
  %38 = bitcast i8* %xiv_iv80 to i64*
  %39 = load i64* %38, align 8, !tbaa !3
  br label %cond.end83

cond.false81:                                     ; preds = %if.then73
  %call82 = call i64 @Perl_sv_2iv(%struct.sv* %35) #6
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false81, %cond.true78
  %cond84 = phi i64 [ %39, %cond.true78 ], [ %call82, %cond.false81 ]
  %conv85 = trunc i64 %cond84 to i32
  br label %land.lhs.true88

land.lhs.true88:                                  ; preds = %cond.end83, %cond.end68
  %offset.0 = phi i32 [ %conv85, %cond.end83 ], [ 0, %cond.end68 ]
  %sv_flags89 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %40 = load i32* %sv_flags89, align 4, !tbaa !4
  %and90 = and i32 %40, 255
  %cmp91 = icmp eq i32 %and90, 13
  br i1 %cmp91, label %land.lhs.true93, label %if.then108

land.lhs.true93:                                  ; preds = %land.lhs.true88
  %sv_any94 = bitcast %struct.sv* %8 to %struct.xpvgv**
  %41 = load %struct.xpvgv** %sv_any94, align 8, !tbaa !0
  %xgv_gp95 = getelementptr inbounds %struct.xpvgv* %41, i64 0, i32 7
  %42 = load %struct.gp** %xgv_gp95, align 8, !tbaa !0
  %tobool96 = icmp eq %struct.gp* %42, null
  br i1 %tobool96, label %if.then108, label %cond.end102

cond.end102:                                      ; preds = %land.lhs.true93
  %gp_io100 = getelementptr inbounds %struct.gp* %42, i64 0, i32 2
  %43 = load %struct.io** %gp_io100, align 8, !tbaa !0
  %tobool104 = icmp eq %struct.io* %43, null
  br i1 %tobool104, label %if.then108, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %cond.end102
  %sv_any106 = getelementptr inbounds %struct.io* %43, i64 0, i32 0
  %44 = load %struct.xpvio** %sv_any106, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %44, i64 0, i32 7
  %45 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool107 = icmp eq %struct._PerlIO** %45, null
  br i1 %tobool107, label %if.then108, label %if.end147

if.then108:                                       ; preds = %land.lhs.true88, %land.lhs.true93, %lor.lhs.false105, %cond.end102
  %cond103618 = phi %struct.io* [ %43, %lor.lhs.false105 ], [ null, %cond.end102 ], [ null, %land.lhs.true93 ], [ null, %land.lhs.true88 ]
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp109 = icmp eq %struct.sv* %47, null
  br i1 %cmp109, label %lor.lhs.false134, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.then108
  %48 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings112 = getelementptr inbounds %struct.cop* %48, i64 0, i32 14
  %49 = load %struct.sv** %cop_warnings112, align 8, !tbaa !0
  %cmp113 = icmp eq %struct.sv* %49, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp113, label %lor.lhs.false134, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true111
  %50 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings116 = getelementptr inbounds %struct.cop* %50, i64 0, i32 14
  %51 = load %struct.sv** %cop_warnings116, align 8, !tbaa !0
  %cmp117 = icmp eq %struct.sv* %51, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp117, label %if.then142, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %land.lhs.true115
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings120 = getelementptr inbounds %struct.cop* %52, i64 0, i32 14
  %53 = load %struct.sv** %cop_warnings120, align 8, !tbaa !0
  %sv_any121 = getelementptr inbounds %struct.sv* %53, i64 0, i32 0
  %54 = load i8** %sv_any121, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %54 to i8**
  %55 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i8* %55, i64 2
  %56 = load i8* %arrayidx122, align 1, !tbaa !1
  %and124 = and i8 %56, 64
  %tobool125 = icmp eq i8 %and124, 0
  br i1 %tobool125, label %lor.lhs.false126, label %if.then142

lor.lhs.false126:                                 ; preds = %lor.lhs.false119
  %57 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings127 = getelementptr inbounds %struct.cop* %57, i64 0, i32 14
  %58 = load %struct.sv** %cop_warnings127, align 8, !tbaa !0
  %sv_any128 = getelementptr inbounds %struct.sv* %58, i64 0, i32 0
  %59 = load i8** %sv_any128, align 8, !tbaa !0
  %xpv_pv129 = bitcast i8* %59 to i8**
  %60 = load i8** %xpv_pv129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i8* %60, i64 1
  %61 = load i8* %arrayidx130, align 1, !tbaa !1
  %and132 = and i8 %61, 16
  %tobool133 = icmp eq i8 %and132, 0
  br i1 %tobool133, label %lor.lhs.false134, label %if.then142

lor.lhs.false134:                                 ; preds = %lor.lhs.false126, %land.lhs.true111, %if.then108
  %62 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings135 = getelementptr inbounds %struct.cop* %62, i64 0, i32 14
  %63 = load %struct.sv** %cop_warnings135, align 8, !tbaa !0
  %cmp136 = icmp eq %struct.sv* %63, null
  br i1 %cmp136, label %land.lhs.true138, label %if.end145

land.lhs.true138:                                 ; preds = %lor.lhs.false134
  %64 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and140 = and i8 %64, 1
  %tobool141 = icmp eq i8 %and140, 0
  br i1 %tobool141, label %if.end145, label %if.then142

if.then142:                                       ; preds = %lor.lhs.false126, %lor.lhs.false119, %land.lhs.true138, %land.lhs.true115
  %65 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type143 = getelementptr inbounds %struct.op* %65, i64 0, i32 4
  %66 = load i16* %op_type143, align 2, !tbaa !5
  %conv144 = zext i16 %66 to i32
  call void @Perl_report_evil_fh(%struct.gv* %9, %struct.io* %cond103618, i32 %conv144) #6
  br label %if.end145

if.end145:                                        ; preds = %land.lhs.true138, %if.then142, %lor.lhs.false134
  %call146 = call i32* @__errno_location() #6
  store i32 9, i32* %call146, align 4, !tbaa !4
  br label %say_undef

if.end147:                                        ; preds = %lor.lhs.false105
  %call150 = call i32 @PerlIO_isutf8(%struct._PerlIO** %45) #6
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %land.lhs.true152, label %if.else170

land.lhs.true152:                                 ; preds = %if.end147
  %67 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %67, i64 0, i32 7
  %68 = load i8* %op_private, align 1, !tbaa !1
  %and154 = and i8 %68, 8
  %tobool155 = icmp eq i8 %and154, 0
  br i1 %tobool155, label %cond.false165, label %if.else170

cond.false165:                                    ; preds = %land.lhs.true152
  %call166 = call i8* @Perl_sv_pvutf8n_force(%struct.sv* %28, i64* %blen) #6
  %69 = load i32* %sv_flags55, align 4, !tbaa !4
  %or = or i32 %69, 536870912
  store i32 %or, i32* %sv_flags55, align 4, !tbaa !4
  br label %if.end191

if.else170:                                       ; preds = %land.lhs.true152, %if.end147
  %70 = load i32* %sv_flags55, align 4, !tbaa !4
  %and172 = and i32 %70, 10223616
  %cmp173 = icmp eq i32 %and172, 262144
  br i1 %cmp173, label %cond.true175, label %cond.false180

cond.true175:                                     ; preds = %if.else170
  %sv_any176 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %71 = load i8** %sv_any176, align 8, !tbaa !0
  %xpv_cur177 = getelementptr inbounds i8* %71, i64 8
  %72 = bitcast i8* %xpv_cur177 to i64*
  %73 = load i64* %72, align 8, !tbaa !3
  store i64 %73, i64* %blen, align 8, !tbaa !3
  %xpv_pv179 = bitcast i8* %71 to i8**
  %74 = load i8** %xpv_pv179, align 8, !tbaa !0
  br label %cond.end182

cond.false180:                                    ; preds = %if.else170
  %call181 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %28, i64* %blen, i32 2) #6
  br label %cond.end182

cond.end182:                                      ; preds = %cond.false180, %cond.true175
  %cond183 = phi i8* [ %74, %cond.true175 ], [ %call181, %cond.false180 ]
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private184 = getelementptr inbounds %struct.cop* %75, i64 0, i32 7
  %76 = load i8* %op_private184, align 1, !tbaa !1
  %and186 = and i8 %76, 8
  %tobool187 = icmp eq i8 %and186, 0
  br i1 %tobool187, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end182
  %77 = load i32* %sv_flags55, align 4, !tbaa !4
  %and189 = and i32 %77, 536870912
  %tobool190 = icmp ne i32 %and189, 0
  br label %land.end

land.end:                                         ; preds = %cond.end182, %land.rhs
  %78 = phi i1 [ false, %cond.end182 ], [ %tobool190, %land.rhs ]
  %land.ext = zext i1 %78 to i32
  br label %if.end191

if.end191:                                        ; preds = %land.end, %cond.false165
  %buffer.0 = phi i8* [ %cond183, %land.end ], [ %call166, %cond.false165 ]
  %buffer_utf8.0 = phi i32 [ %land.ext, %land.end ], [ 0, %cond.false165 ]
  %cmp192 = icmp slt i64 %cond69, 0
  br i1 %cmp192, label %if.then194, label %if.end196

if.then194:                                       ; preds = %if.end191
  %call195 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([16 x i8]* @.str43, i64 0, i64 0)) #6
  br label %return

if.end196:                                        ; preds = %if.end191
  %79 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type197 = getelementptr inbounds %struct.op* %79, i64 0, i32 4
  %80 = load i16* %op_type197, align 2, !tbaa !5
  %cmp199 = icmp eq i16 %80, 215
  br i1 %cmp199, label %if.then201, label %if.end203

if.then201:                                       ; preds = %if.end196
  %call202 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0)) #6
  br label %return

if.end203:                                        ; preds = %if.end196
  %81 = load i32* %sv_flags55, align 4, !tbaa !4
  %and205 = and i32 %81, 536870912
  %tobool206 = icmp eq i32 %and205, 0
  br i1 %tobool206, label %if.end214, label %land.lhs.true207

land.lhs.true207:                                 ; preds = %if.end203
  %82 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private208 = getelementptr inbounds %struct.cop* %82, i64 0, i32 7
  %83 = load i8* %op_private208, align 1, !tbaa !1
  %and210 = and i8 %83, 8
  %tobool211 = icmp eq i8 %and210, 0
  br i1 %tobool211, label %if.then212, label %if.end214

if.then212:                                       ; preds = %land.lhs.true207
  %call213 = call i64 @Perl_sv_len_utf8(%struct.sv* %28) #6
  store i64 %call213, i64* %blen, align 8, !tbaa !3
  br label %if.end214

if.end214:                                        ; preds = %land.lhs.true207, %if.end203, %if.then212
  %cmp215 = icmp slt i32 %offset.0, 0
  br i1 %cmp215, label %if.then217, label %if.end226

if.then217:                                       ; preds = %if.end214
  %sub = sub nsw i32 0, %offset.0
  %84 = load i64* %blen, align 8, !tbaa !3
  %conv218 = trunc i64 %84 to i32
  %cmp219 = icmp slt i32 %conv218, %sub
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.then217
  %call222 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str45, i64 0, i64 0)) #6
  br label %return

if.end223:                                        ; preds = %if.then217
  %conv224609 = zext i32 %offset.0 to i64
  %add = add i64 %84, %conv224609
  %conv225 = trunc i64 %add to i32
  br label %if.end226

if.end226:                                        ; preds = %if.end214, %if.end223
  %offset.1 = phi i32 [ %conv225, %if.end223 ], [ %offset.0, %if.end214 ]
  %85 = load i32* %sv_flags55, align 4, !tbaa !4
  %and228 = and i32 %85, 536870912
  %tobool229 = icmp eq i32 %and228, 0
  br i1 %tobool229, label %more_bytes.preheader, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %if.end226
  %86 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private231 = getelementptr inbounds %struct.cop* %86, i64 0, i32 7
  %87 = load i8* %op_private231, align 1, !tbaa !1
  %and233 = and i8 %87, 8
  %tobool234 = icmp eq i8 %and233, 0
  br i1 %tobool234, label %if.then235, label %more_bytes.preheader

if.then235:                                       ; preds = %land.lhs.true230
  %88 = load i64* %blen, align 8, !tbaa !3
  %conv236 = trunc i64 %88 to i32
  %cmp237 = icmp slt i32 %offset.1, %conv236
  br i1 %cmp237, label %if.else246, label %if.then239

if.then239:                                       ; preds = %if.then235
  %sv_any240 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %89 = load i8** %sv_any240, align 8, !tbaa !0
  %xpv_cur241 = getelementptr inbounds i8* %89, i64 8
  %90 = bitcast i8* %xpv_cur241 to i64*
  %91 = load i64* %90, align 8, !tbaa !3
  %conv243608 = zext i32 %offset.1 to i64
  %sub242 = sub i64 %conv243608, %88
  %add244 = add i64 %sub242, %91
  %conv245 = trunc i64 %add244 to i32
  br label %more_bytes.preheader

if.else246:                                       ; preds = %if.then235
  %call247 = call i8* @Perl_utf8_hop(i8* %buffer.0, i32 %offset.1) #6
  %sub.ptr.lhs.cast248 = ptrtoint i8* %call247 to i64
  %sub.ptr.rhs.cast249 = ptrtoint i8* %buffer.0 to i64
  %sub.ptr.sub250 = sub i64 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  %conv251 = trunc i64 %sub.ptr.sub250 to i32
  br label %more_bytes.preheader

more_bytes.preheader:                             ; preds = %land.lhs.true230, %if.end226, %if.then239, %if.else246
  %offset.2.ph = phi i32 [ %conv251, %if.else246 ], [ %conv245, %if.then239 ], [ %offset.1, %if.end226 ], [ %offset.1, %land.lhs.true230 ]
  %sv_any254 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %tobool283 = icmp ne i32 %buffer_utf8.0, 0
  %.pre = load i8** %sv_any254, align 8, !tbaa !0
  br label %more_bytes

more_bytes:                                       ; preds = %more_bytes.backedge, %more_bytes.preheader
  %92 = phi i8* [ %.pre, %more_bytes.preheader ], [ %137, %more_bytes.backedge ]
  %length.0 = phi i64 [ %cond69, %more_bytes.preheader ], [ %length.0.be, %more_bytes.backedge ]
  %offset.2 = phi i32 [ %offset.2.ph, %more_bytes.preheader ], [ %offset.2.be, %more_bytes.backedge ]
  %got.0 = phi i64 [ 0, %more_bytes.preheader ], [ %got.0.be, %more_bytes.backedge ]
  %charstart.0 = phi i8 [ 1, %more_bytes.preheader ], [ %charstart.0.be, %more_bytes.backedge ]
  %charskip.0 = phi i64 [ 0, %more_bytes.preheader ], [ %charskip.0.be, %more_bytes.backedge ]
  %skip.0 = phi i64 [ 0, %more_bytes.preheader ], [ %skip.0.be, %more_bytes.backedge ]
  %xpv_cur255 = getelementptr inbounds i8* %92, i64 8
  %93 = bitcast i8* %xpv_cur255 to i64*
  %94 = load i64* %93, align 8, !tbaa !3
  %conv256 = trunc i64 %94 to i32
  %xpv_len = getelementptr inbounds i8* %92, i64 16
  %95 = bitcast i8* %xpv_len to i64*
  %96 = load i64* %95, align 8, !tbaa !3
  %conv258 = sext i32 %offset.2 to i64
  %add259 = add i64 %length.0, 1
  %add260 = add i64 %add259, %conv258
  %cmp261 = icmp ult i64 %96, %add260
  br i1 %cmp261, label %cond.true263, label %cond.false268

cond.true263:                                     ; preds = %more_bytes
  %call267 = call i8* @Perl_sv_grow(%struct.sv* %28, i64 %add260) #6
  br label %cond.end271

cond.false268:                                    ; preds = %more_bytes
  %xpv_pv270 = bitcast i8* %92 to i8**
  %97 = load i8** %xpv_pv270, align 8, !tbaa !0
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false268, %cond.true263
  %cond272 = phi i8* [ %call267, %cond.true263 ], [ %97, %cond.false268 ]
  %cmp273 = icmp ugt i32 %offset.2, %conv256
  br i1 %cmp273, label %if.then275, label %if.end280

if.then275:                                       ; preds = %cond.end271
  %idx.ext276 = and i64 %94, 4294967295
  %add.ptr277 = getelementptr inbounds i8* %cond272, i64 %idx.ext276
  %sub278 = sub i32 %offset.2, %conv256
  %conv279 = zext i32 %sub278 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr277, i8 0, i64 %conv279, i32 1, i1 false)
  br label %if.end280

if.end280:                                        ; preds = %if.then275, %cond.end271
  br i1 %tobool283, label %if.else285, label %if.then284

if.then284:                                       ; preds = %if.end280
  %add.ptr282 = getelementptr inbounds i8* %cond272, i64 %conv258
  br label %if.end310

if.else285:                                       ; preds = %if.end280
  %98 = load i8** %sv_any254, align 8, !tbaa !0
  %xpv_cur288 = getelementptr inbounds i8* %98, i64 8
  %99 = bitcast i8* %xpv_cur288 to i64*
  store i64 %conv258, i64* %99, align 8, !tbaa !3
  %call289 = call %struct.sv* @Perl_sv_newmortal() #6
  %sv_flags290 = getelementptr inbounds %struct.sv* %call289, i64 0, i32 2
  %100 = load i32* %sv_flags290, align 4, !tbaa !4
  %and291 = and i32 %100, 252
  %cmp292 = icmp eq i32 %and291, 0
  br i1 %cmp292, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.else285
  %call294 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call289, i32 4) #6
  br label %lor.end

lor.end:                                          ; preds = %if.else285, %lor.rhs
  %sv_any297 = getelementptr inbounds %struct.sv* %call289, i64 0, i32 0
  %101 = load i8** %sv_any297, align 8, !tbaa !0
  %xpv_len298 = getelementptr inbounds i8* %101, i64 16
  %102 = bitcast i8* %xpv_len298 to i64*
  %103 = load i64* %102, align 8, !tbaa !3
  %cmp300 = icmp ult i64 %103, %add259
  br i1 %cmp300, label %cond.true302, label %cond.false305

cond.true302:                                     ; preds = %lor.end
  %call304 = call i8* @Perl_sv_grow(%struct.sv* %call289, i64 %add259) #6
  br label %if.end310

cond.false305:                                    ; preds = %lor.end
  %xpv_pv307 = bitcast i8* %101 to i8**
  %104 = load i8** %xpv_pv307, align 8, !tbaa !0
  br label %if.end310

if.end310:                                        ; preds = %cond.true302, %cond.false305, %if.then284
  %buffer.1 = phi i8* [ %add.ptr282, %if.then284 ], [ %call304, %cond.true302 ], [ %104, %cond.false305 ]
  %read_target.0 = phi %struct.sv* [ %28, %if.then284 ], [ %call289, %cond.true302 ], [ %call289, %cond.false305 ]
  %105 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type311 = getelementptr inbounds %struct.op* %105, i64 0, i32 4
  %106 = load i16* %op_type311, align 2, !tbaa !5
  %cmp313 = icmp eq i16 %106, 212
  %107 = load %struct.xpvio** %sv_any106, align 8, !tbaa !0
  %xio_ifp317 = getelementptr inbounds %struct.xpvio* %107, i64 0, i32 7
  %108 = load %struct._PerlIO*** %xio_ifp317, align 8, !tbaa !0
  br i1 %cmp313, label %if.then315, label %if.else320

if.then315:                                       ; preds = %if.end310
  %call318 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %108) #6
  %call319 = call i64 @read(i32 %call318, i8* %buffer.1, i64 %length.0) #6
  br label %if.end333

if.else320:                                       ; preds = %if.end310
  %call323 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %108, i8* %buffer.1, i64 %length.0) #6
  %cmp324 = icmp eq i64 %call323, 0
  br i1 %cmp324, label %land.lhs.true326, label %if.end333

land.lhs.true326:                                 ; preds = %if.else320
  %109 = load %struct.xpvio** %sv_any106, align 8, !tbaa !0
  %xio_ifp328 = getelementptr inbounds %struct.xpvio* %109, i64 0, i32 7
  %110 = load %struct._PerlIO*** %xio_ifp328, align 8, !tbaa !0
  %call329 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %110) #6
  %not.tobool330 = icmp ne i32 %call329, 0
  %call323. = sext i1 %not.tobool330 to i64
  br label %if.end333

if.end333:                                        ; preds = %land.lhs.true326, %if.else320, %if.then315
  %count.0 = phi i64 [ %call319, %if.then315 ], [ %call323, %if.else320 ], [ %call323., %land.lhs.true326 ]
  %cmp334 = icmp slt i64 %count.0, 0
  br i1 %cmp334, label %if.then336, label %if.end371

if.then336:                                       ; preds = %if.end333
  %111 = load %struct.xpvio** %sv_any106, align 8, !tbaa !0
  %xio_type = getelementptr inbounds %struct.xpvio* %111, i64 0, i32 21
  %112 = load i8* %xio_type, align 1, !tbaa !1
  %cmp339 = icmp eq i8 %112, 62
  br i1 %cmp339, label %land.lhs.true341, label %say_undef

land.lhs.true341:                                 ; preds = %if.then336
  %113 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings342 = getelementptr inbounds %struct.cop* %113, i64 0, i32 14
  %114 = load %struct.sv** %cop_warnings342, align 8, !tbaa !0
  %cmp343 = icmp eq %struct.sv* %114, null
  br i1 %cmp343, label %lor.lhs.false361, label %land.lhs.true345

land.lhs.true345:                                 ; preds = %land.lhs.true341
  %115 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings346 = getelementptr inbounds %struct.cop* %115, i64 0, i32 14
  %116 = load %struct.sv** %cop_warnings346, align 8, !tbaa !0
  %cmp347 = icmp eq %struct.sv* %116, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp347, label %lor.lhs.false361, label %land.lhs.true349

land.lhs.true349:                                 ; preds = %land.lhs.true345
  %117 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings350 = getelementptr inbounds %struct.cop* %117, i64 0, i32 14
  %118 = load %struct.sv** %cop_warnings350, align 8, !tbaa !0
  %cmp351 = icmp eq %struct.sv* %118, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp351, label %if.then369, label %lor.lhs.false353

lor.lhs.false353:                                 ; preds = %land.lhs.true349
  %119 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings354 = getelementptr inbounds %struct.cop* %119, i64 0, i32 14
  %120 = load %struct.sv** %cop_warnings354, align 8, !tbaa !0
  %sv_any355 = getelementptr inbounds %struct.sv* %120, i64 0, i32 0
  %121 = load i8** %sv_any355, align 8, !tbaa !0
  %xpv_pv356 = bitcast i8* %121 to i8**
  %122 = load i8** %xpv_pv356, align 8, !tbaa !0
  %arrayidx357 = getelementptr inbounds i8* %122, i64 1
  %123 = load i8* %arrayidx357, align 1, !tbaa !1
  %and359 = and i8 %123, 4
  %tobool360 = icmp eq i8 %and359, 0
  br i1 %tobool360, label %lor.lhs.false361, label %if.then369

lor.lhs.false361:                                 ; preds = %lor.lhs.false353, %land.lhs.true345, %land.lhs.true341
  %124 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings362 = getelementptr inbounds %struct.cop* %124, i64 0, i32 14
  %125 = load %struct.sv** %cop_warnings362, align 8, !tbaa !0
  %cmp363 = icmp eq %struct.sv* %125, null
  br i1 %cmp363, label %land.lhs.true365, label %say_undef

land.lhs.true365:                                 ; preds = %lor.lhs.false361
  %126 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and367 = and i8 %126, 1
  %tobool368 = icmp eq i8 %and367, 0
  br i1 %tobool368, label %say_undef, label %if.then369

if.then369:                                       ; preds = %lor.lhs.false353, %land.lhs.true365, %land.lhs.true349
  call void @Perl_report_evil_fh(%struct.gv* %9, %struct.io* %43, i32 -2) #6
  br label %say_undef

if.end371:                                        ; preds = %if.end333
  %sv_any372 = getelementptr inbounds %struct.sv* %read_target.0, i64 0, i32 0
  %127 = load i8** %sv_any372, align 8, !tbaa !0
  %xpv_pv373 = bitcast i8* %127 to i8**
  %128 = load i8** %xpv_pv373, align 8, !tbaa !0
  %sub.ptr.lhs.cast374 = ptrtoint i8* %buffer.1 to i64
  %sub.ptr.rhs.cast375 = ptrtoint i8* %128 to i64
  %sub.ptr.sub376 = add i64 %count.0, %sub.ptr.lhs.cast374
  %add377 = sub i64 %sub.ptr.sub376, %sub.ptr.rhs.cast375
  %xpv_cur379 = getelementptr inbounds i8* %127, i64 8
  %129 = bitcast i8* %xpv_cur379 to i64*
  store i64 %add377, i64* %129, align 8, !tbaa !3
  %add.ptr384 = getelementptr inbounds i8* %128, i64 %add377
  store i8 0, i8* %add.ptr384, align 1, !tbaa !1
  %sv_flags385 = getelementptr inbounds %struct.sv* %read_target.0, i64 0, i32 2
  %130 = load i32* %sv_flags385, align 4, !tbaa !4
  %and386 = and i32 %130, 1223753727
  %or388 = or i32 %and386, 67371008
  store i32 %or388, i32* %sv_flags385, align 4, !tbaa !4
  br i1 %tobool151, label %land.lhs.true390, label %if.else439

land.lhs.true390:                                 ; preds = %if.end371
  %131 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private391 = getelementptr inbounds %struct.cop* %131, i64 0, i32 7
  %132 = load i8* %op_private391, align 1, !tbaa !1
  %and393 = and i8 %132, 8
  %tobool394 = icmp eq i8 %and393, 0
  br i1 %tobool394, label %if.then395, label %if.else439

if.then395:                                       ; preds = %land.lhs.true390
  %add.ptr396 = getelementptr inbounds i8* %buffer.1, i64 %count.0
  %cmp397626 = icmp sgt i64 %count.0, 0
  br i1 %cmp397626, label %while.body, label %while.end

while.body:                                       ; preds = %if.then395, %if.else420
  %skip.1631 = phi i64 [ %skip.2, %if.else420 ], [ %skip.0, %if.then395 ]
  %charskip.1630 = phi i64 [ 0, %if.else420 ], [ %charskip.0, %if.then395 ]
  %charstart.1629 = phi i8 [ 1, %if.else420 ], [ %charstart.0, %if.then395 ]
  %got.1628 = phi i64 [ %inc, %if.else420 ], [ %got.0, %if.then395 ]
  %buffer.2627 = phi i8* [ %add.ptr421, %if.else420 ], [ %buffer.1, %if.then395 ]
  %tobool399 = icmp eq i8 %charstart.1629, 0
  br i1 %tobool399, label %if.end403, label %if.then400

if.then400:                                       ; preds = %while.body
  %133 = load i8* %buffer.2627, align 1, !tbaa !1
  %idxprom = zext i8 %133 to i64
  %arrayidx401 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %134 = load i8* %arrayidx401, align 1, !tbaa !1
  %conv402 = zext i8 %134 to i64
  br label %if.end403

if.end403:                                        ; preds = %while.body, %if.then400
  %charskip.2 = phi i64 [ 0, %if.then400 ], [ %charskip.1630, %while.body ]
  %skip.2 = phi i64 [ %conv402, %if.then400 ], [ %skip.1631, %while.body ]
  %add.ptr404.sum = sub i64 %skip.2, %charskip.2
  %add.ptr405 = getelementptr inbounds i8* %buffer.2627, i64 %add.ptr404.sum
  %cmp406 = icmp ugt i8* %add.ptr405, %add.ptr396
  br i1 %cmp406, label %if.then408, label %if.else420

if.then408:                                       ; preds = %if.end403
  %sub.ptr.lhs.cast409 = ptrtoint i8* %add.ptr396 to i64
  %sub.ptr.rhs.cast410 = ptrtoint i8* %buffer.2627 to i64
  %sub.ptr.sub411606 = sub i64 %sub.ptr.rhs.cast410, %sub.ptr.lhs.cast409
  %sub412 = add i64 %sub.ptr.sub411606, %skip.2
  %135 = load i8** %sv_any254, align 8, !tbaa !0
  %xpv_pv414 = bitcast i8* %135 to i8**
  %136 = load i8** %xpv_pv414, align 8, !tbaa !0
  %sub.ptr.rhs.cast416 = ptrtoint i8* %136 to i64
  %sub.ptr.sub417 = sub i64 %sub.ptr.lhs.cast409, %sub.ptr.rhs.cast416
  %add419 = add i64 %charskip.2, %count.0
  br label %more_bytes.backedge

more_bytes.backedge:                              ; preds = %if.then408, %if.then428
  %137 = phi i8* [ %135, %if.then408 ], [ %138, %if.then428 ]
  %length.0.be = phi i64 [ %sub412, %if.then408 ], [ %sub429, %if.then428 ]
  %offset.2.be.in = phi i64 [ %sub.ptr.sub417, %if.then408 ], [ %sub.ptr.sub434, %if.then428 ]
  %got.0.be = phi i64 [ %got.1628, %if.then408 ], [ %got.1.lcssa, %if.then428 ]
  %charstart.0.be = phi i8 [ 0, %if.then408 ], [ %charstart.1.lcssa, %if.then428 ]
  %charskip.0.be = phi i64 [ %add419, %if.then408 ], [ %charskip.1.lcssa, %if.then428 ]
  %skip.0.be = phi i64 [ %skip.2, %if.then408 ], [ %skip.1.lcssa, %if.then428 ]
  %offset.2.be = trunc i64 %offset.2.be.in to i32
  br label %more_bytes

if.else420:                                       ; preds = %if.end403
  %inc = add i64 %got.1628, 1
  %add.ptr421 = getelementptr inbounds i8* %buffer.2627, i64 %skip.2
  %cmp397 = icmp ult i8* %add.ptr421, %add.ptr396
  br i1 %cmp397, label %while.body, label %while.end

while.end:                                        ; preds = %if.else420, %if.then395
  %skip.1.lcssa = phi i64 [ %skip.0, %if.then395 ], [ %skip.2, %if.else420 ]
  %charskip.1.lcssa = phi i64 [ %charskip.0, %if.then395 ], [ 0, %if.else420 ]
  %charstart.1.lcssa = phi i8 [ %charstart.0, %if.then395 ], [ 1, %if.else420 ]
  %got.1.lcssa = phi i64 [ %got.0, %if.then395 ], [ %inc, %if.else420 ]
  %cmp423 = icmp ult i64 %got.1.lcssa, %cond69
  %cmp426 = icmp eq i64 %count.0, %length.0
  %or.cond613 = and i1 %cmp423, %cmp426
  br i1 %or.cond613, label %if.then428, label %if.end436

if.then428:                                       ; preds = %while.end
  %sub429 = sub i64 %cond69, %got.1.lcssa
  %138 = load i8** %sv_any254, align 8, !tbaa !0
  %xpv_pv431 = bitcast i8* %138 to i8**
  %139 = load i8** %xpv_pv431, align 8, !tbaa !0
  %sub.ptr.lhs.cast432 = ptrtoint i8* %add.ptr396 to i64
  %sub.ptr.rhs.cast433 = ptrtoint i8* %139 to i64
  %sub.ptr.sub434 = sub i64 %sub.ptr.lhs.cast432, %sub.ptr.rhs.cast433
  br label %more_bytes.backedge

if.end436:                                        ; preds = %while.end
  %140 = load i32* %sv_flags55, align 4, !tbaa !4
  %or438 = or i32 %140, 536870912
  store i32 %or438, i32* %sv_flags55, align 4, !tbaa !4
  br label %if.end443

if.else439:                                       ; preds = %land.lhs.true390, %if.end371
  br i1 %tobool283, label %if.then441, label %if.end443

if.then441:                                       ; preds = %if.else439
  call void @Perl_sv_catsv_flags(%struct.sv* %28, %struct.sv* %read_target.0, i32 0) #6
  br label %if.end443

if.end443:                                        ; preds = %if.else439, %if.then441, %if.end436
  %count.1 = phi i64 [ %count.0, %if.then441 ], [ %got.1.lcssa, %if.end436 ], [ %count.0, %if.else439 ]
  %141 = load i32* %sv_flags55, align 4, !tbaa !4
  %and445 = and i32 %141, 16384
  %tobool446 = icmp eq i32 %and445, 0
  br i1 %tobool446, label %if.end449, label %if.then447

if.then447:                                       ; preds = %if.end443
  %call448 = call i32 @Perl_mg_set(%struct.sv* %28) #6
  br label %if.end449

if.end449:                                        ; preds = %if.end443, %if.then447
  %142 = load %struct.xpvio** %sv_any106, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %142, i64 0, i32 22
  %143 = load i8* %xio_flags, align 1, !tbaa !1
  %and452 = and i8 %143, 16
  %tobool453 = icmp eq i8 %and452, 0
  %144 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool455 = icmp ne i8 %144, 0
  %or.cond = and i1 %tobool453, %tobool455
  br i1 %or.cond, label %if.then456, label %if.end458

if.then456:                                       ; preds = %if.end449
  call void @Perl_sv_taint(%struct.sv* %28) #6
  br label %if.end458

if.end458:                                        ; preds = %if.end449, %if.then456
  %145 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  call void @Perl_sv_setiv(%struct.sv* %7, i64 %count.1) #6
  %sv_flags461 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %146 = load i32* %sv_flags461, align 4, !tbaa !4
  %and462 = and i32 %146, 16384
  %tobool463 = icmp eq i32 %and462, 0
  br i1 %tobool463, label %if.end466, label %if.then464

if.then464:                                       ; preds = %if.end458
  %call465 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end466

if.end466:                                        ; preds = %if.end458, %if.then464
  %add.ptr460.sum = add i64 %idx.ext, 1
  %incdec.ptr467 = getelementptr inbounds %struct.sv** %145, i64 %add.ptr460.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr467, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr467, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %147 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next468 = getelementptr inbounds %struct.op* %147, i64 0, i32 0
  %148 = load %struct.op** %op_next468, align 8, !tbaa !0
  br label %return

say_undef:                                        ; preds = %land.lhs.true365, %lor.lhs.false361, %if.then336, %if.end50, %land.lhs.true, %if.then369, %if.end145
  %149 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr470.sum = add i64 %idx.ext, 1
  %incdec.ptr471 = getelementptr inbounds %struct.sv** %149, i64 %add.ptr470.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr471, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr471, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %150 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next472 = getelementptr inbounds %struct.op* %150, i64 0, i32 0
  %151 = load %struct.op** %op_next472, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %say_undef, %if.end466, %if.then221, %if.then201, %if.then194, %cond.end43
  %retval.0 = phi %struct.op* [ %27, %cond.end43 ], [ %call195, %if.then194 ], [ %call202, %if.then201 ], [ %call222, %if.then221 ], [ %151, %say_undef ], [ %148, %if.end466 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_enterwrite() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  br label %if.end3

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %4 = load %struct.sv** %0, align 8, !tbaa !0
  %5 = bitcast %struct.sv* %4 to %struct.gv*
  %tobool = icmp eq %struct.sv* %4, null
  %6 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %. = select i1 %tobool, %struct.gv* %6, %struct.gv* %5
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then
  %gv.0 = phi %struct.gv* [ %3, %if.then ], [ %., %if.else ]
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %if.else ]
  %7 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp4 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %sp.1 = phi %struct.sv** [ %call, %if.then6 ], [ %sp.0, %if.end3 ]
  %tobool8 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool8, label %if.then17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %8 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %9 = load i32* %8, align 4, !tbaa !4
  %and9 = and i32 %9, 255
  %cmp10 = icmp eq i32 %and9, 13
  br i1 %cmp10, label %land.lhs.true12, label %if.then17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %10 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 7
  %11 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.gp* %11, null
  br i1 %tobool13, label %if.then17, label %cond.end

cond.end:                                         ; preds = %land.lhs.true12
  %gp_io = getelementptr inbounds %struct.gp* %11, i64 0, i32 2
  %12 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.io* %12, null
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end7, %land.lhs.true, %land.lhs.true12, %cond.end
  %incdec.ptr18 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr18, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr18, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %13 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %13, i64 0, i32 0
  %14 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end19:                                         ; preds = %cond.end
  %sv_any20 = getelementptr inbounds %struct.io* %12, i64 0, i32 0
  %15 = load %struct.xpvio** %sv_any20, align 8, !tbaa !0
  %xio_fmt_gv = getelementptr inbounds %struct.xpvio* %15, i64 0, i32 17
  %16 = load %struct.gv** %xio_fmt_gv, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.gv* %16, null
  %gv.0. = select i1 %tobool21, %struct.gv* %gv.0, %struct.gv* %16
  %sv_any27 = getelementptr inbounds %struct.gv* %gv.0., i64 0, i32 0
  %17 = load %struct.xpvgv** %sv_any27, align 8, !tbaa !0
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv* %17, i64 0, i32 7
  %18 = load %struct.gp** %xgv_gp28, align 8, !tbaa !0
  %gp_form = getelementptr inbounds %struct.gp* %18, i64 0, i32 3
  %19 = load %struct.cv** %gp_form, align 8, !tbaa !0
  %tobool29 = icmp eq %struct.cv* %19, null
  br i1 %tobool29, label %if.then30, label %if.end53

if.then30:                                        ; preds = %if.end19
  %tobool31 = icmp eq %struct.gv* %gv.0., null
  br i1 %tobool31, label %if.end51, label %if.then32

if.then32:                                        ; preds = %if.then30
  %call33 = tail call %struct.sv* @Perl_sv_newmortal() #6
  tail call void @Perl_gv_efullname4(%struct.sv* %call33, %struct.gv* %gv.0., i8* null, i8 signext 0) #6
  %sv_flags34 = getelementptr inbounds %struct.sv* %call33, i64 0, i32 2
  %20 = load i32* %sv_flags34, align 4, !tbaa !4
  %and35 = and i32 %20, 262144
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %cond.false40, label %cond.true38

cond.true38:                                      ; preds = %if.then32
  %sv_any39 = getelementptr inbounds %struct.sv* %call33, i64 0, i32 0
  %21 = load i8** %sv_any39, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %21 to i8**
  %22 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end44

cond.false40:                                     ; preds = %if.then32
  %call41 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call33) #6
  br label %if.end44

if.end44:                                         ; preds = %cond.true38, %cond.false40
  %name.0 = phi i8* [ %22, %cond.true38 ], [ %call41, %cond.false40 ]
  %tobool45 = icmp eq i8* %name.0, null
  br i1 %tobool45, label %if.end51, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end44
  %23 = load i8* %name.0, align 1, !tbaa !1
  %tobool48 = icmp eq i8 %23, 0
  br i1 %tobool48, label %if.end51, label %if.then49

if.then49:                                        ; preds = %land.lhs.true46
  %call50 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([29 x i8]* @.str34, i64 0, i64 0), i8* %name.0) #6
  br label %return

if.end51:                                         ; preds = %if.then30, %land.lhs.true46, %if.end44
  %call52 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([23 x i8]* @.str35, i64 0, i64 0)) #6
  br label %return

if.end53:                                         ; preds = %if.end19
  %sv_any54 = getelementptr inbounds %struct.cv* %19, i64 0, i32 0
  %24 = load %struct.xpvcv** %sv_any54, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %24, i64 0, i32 17
  %25 = load i16* %xcv_flags, align 2, !tbaa !5
  %and56 = and i16 %25, 1
  %tobool57 = icmp eq i16 %and56, 0
  br i1 %tobool57, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end53
  %call59 = tail call %struct.cv* @Perl_cv_clone(%struct.cv* %19) #6
  %26 = bitcast %struct.cv* %call59 to %struct.sv*
  %call60 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %26) #6
  %27 = bitcast %struct.sv* %call60 to %struct.cv*
  %.pre = load %struct.xpvio** %sv_any20, align 8, !tbaa !0
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %if.then58
  %28 = phi %struct.xpvio* [ %.pre, %if.then58 ], [ %15, %if.end53 ]
  %cv.0 = phi %struct.cv* [ %27, %if.then58 ], [ %19, %if.end53 ]
  %xio_flags = getelementptr inbounds %struct.xpvio* %28, i64 0, i32 22
  %29 = load i8* %xio_flags, align 1, !tbaa !1
  %and64 = and i8 %29, -9
  store i8 %and64, i8* %xio_flags, align 1, !tbaa !1
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next66 = getelementptr inbounds %struct.op* %30, i64 0, i32 0
  %31 = load %struct.op** %op_next66, align 8, !tbaa !0
  %call67 = tail call fastcc %struct.op* @S_doform(%struct.cv* %cv.0, %struct.gv* %gv.0, %struct.op* %31) #7
  br label %return

return:                                           ; preds = %if.end61, %if.end51, %if.then49, %if.then17
  %retval.0 = phi %struct.op* [ %call67, %if.end61 ], [ %call50, %if.then49 ], [ %call52, %if.end51 ], [ %14, %if.then17 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare %struct.cv* @Perl_cv_clone(%struct.cv*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.op* @S_doform(%struct.cv* %cv, %struct.gv* %gv, %struct.op* %retop) #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %0, i64 0, i32 6
  %1 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.end18, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i32 %and, 2
  br i1 %cmp5, label %cond.end18, label %cond.false8

cond.false8:                                      ; preds = %cond.false
  %cmp12 = icmp eq i32 %and, 3
  br i1 %cmp12, label %cond.end18, label %cond.false15

cond.false15:                                     ; preds = %cond.false8
  %call = tail call i32 @Perl_block_gimme() #6
  %phitmp = trunc i32 %call to i8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i8 [ -128, %entry ], [ 0, %cond.false ], [ %phitmp, %cond.false15 ], [ 1, %cond.false8 ]
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #6
  %2 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  store i32 %2, i32* @PL_tmps_floor, align 4, !tbaa !4
  tail call void @Perl_push_return(%struct.op* %retop) #6
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  %4 = load i32* %si_cxix, align 4, !tbaa !4
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 3
  %5 = load i32* %si_cxmax, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %4, %5
  br i1 %cmp20, label %cond.true22, label %cond.false24

cond.true22:                                      ; preds = %cond.end18
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %si_cxix, align 4, !tbaa !4
  br label %cond.end27

cond.false24:                                     ; preds = %cond.end18
  %call25 = tail call i32 @Perl_cxinc() #6
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix26 = getelementptr inbounds %struct.stackinfo* %6, i64 0, i32 2
  store i32 %call25, i32* %si_cxix26, align 4, !tbaa !4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false24, %cond.true22
  %7 = phi i32 [ %call25, %cond.false24 ], [ %inc, %cond.true22 ]
  %8 = phi %struct.stackinfo* [ %6, %cond.false24 ], [ %3, %cond.true22 ]
  %idxprom = sext i32 %7 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 1
  %9 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 0
  store i32 6, i32* %cx_type, align 4, !tbaa !4
  %10 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div100 = lshr exact i64 %sub.ptr.sub, 3
  %conv30 = trunc i64 %sub.ptr.div100 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 0
  store i32 %conv30, i32* %blku_oldsp, align 4, !tbaa !4
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 1
  store %struct.cop* %12, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %13 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %14 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast33 = ptrtoint i32* %13 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i32* %14 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36101 = lshr exact i64 %sub.ptr.sub35, 2
  %conv37 = trunc i64 %sub.ptr.div36101 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 3
  store i32 %conv37, i32* %blku_oldmarksp, align 4, !tbaa !4
  %15 = load i32* @PL_scopestack_ix, align 4, !tbaa !4
  %blku_oldscopesp = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 4
  store i32 %15, i32* %blku_oldscopesp, align 4, !tbaa !4
  %16 = load i32* @PL_retstack_ix, align 4, !tbaa !4
  %blku_oldretsp = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 2
  store i32 %16, i32* %blku_oldretsp, align 4, !tbaa !4
  %17 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %17, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 6
  store i8 %cond19, i8* %blku_gimme, align 1, !tbaa !1
  %18 = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 0
  %cv.c = bitcast %struct.cv* %cv to i8*
  store i8* %cv.c, i8** %18, align 8, !tbaa !0
  %gv56 = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %19 = bitcast i32* %gv56 to %struct.gv**
  store %struct.gv* %gv, %struct.gv** %19, align 8, !tbaa !0
  %hasargs = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %20 = bitcast %struct.sv** %hasargs to i8*
  store i8 0, i8* %20, align 1, !tbaa !1
  %21 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %dfoutgv = getelementptr inbounds %struct.context* %9, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %.c = bitcast %struct.gv* %21 to %struct.op*
  store %struct.op* %.c, %struct.op** %dfoutgv, align 8, !tbaa !0
  %22 = bitcast %struct.gv* %21 to %struct.sv*
  store %struct.sv* %22, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.gv* %21, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end27
  %23 = getelementptr inbounds %struct.gv* %21, i64 0, i32 1
  %24 = load i32* %23, align 4, !tbaa !4
  %inc70 = add i32 %24, 1
  store i32 %inc70, i32* %23, align 4, !tbaa !4
  br label %land.end

land.end:                                         ; preds = %cond.end27, %land.rhs
  %25 = load i32* @PL_savestack_ix, align 4, !tbaa !4
  %add = add nsw i32 %25, 2
  %26 = load i32* @PL_savestack_max, align 4, !tbaa !4
  %cmp72 = icmp sgt i32 %add, %26
  br i1 %cmp72, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  tail call void @Perl_savestack_grow() #6
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %27 = phi i32 [ %.pre, %if.then ], [ %25, %land.end ]
  %28 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %29 = bitcast %struct.av* %28 to i8*
  %inc74 = add nsw i32 %27, 1
  %idxprom75 = sext i32 %27 to i64
  %30 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %30, i64 %idxprom75, i32 0
  store i8* %29, i8** %any_ptr, align 8, !tbaa !0
  %inc77 = add nsw i32 %27, 2
  store i32 %inc77, i32* @PL_savestack_ix, align 4, !tbaa !4
  %idxprom78 = sext i32 %inc74 to i64
  %31 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds %union.any* %31, i64 %idxprom78
  %any_i32 = bitcast %union.any* %arrayidx79 to i32*
  store i32 33, i32* %any_i32, align 4, !tbaa !4
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %32 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %32, i64 0, i32 15
  %33 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %sv_any80 = getelementptr inbounds %struct.av* %33, i64 0, i32 0
  %34 = load %struct.xpvav** %sv_any80, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %34, i64 0, i32 0
  %35 = load i8** %xav_array, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i8* %35, i64 8
  %36 = bitcast i8* %arrayidx81 to %struct.sv**
  %37 = load %struct.sv** %36, align 8, !tbaa !0
  %38 = bitcast %struct.sv* %37 to %struct.av*
  store %struct.av* %38, %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_any82 = bitcast %struct.sv* %37 to %struct.xpvav**
  %39 = load %struct.xpvav** %sv_any82, align 8, !tbaa !0
  %xav_array83 = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 0
  %40 = load i8** %xav_array83, align 8, !tbaa !0
  %41 = bitcast i8* %40 to %struct.sv**
  store %struct.sv** %41, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  tail call void @Perl_setdefout(%struct.gv* %gv) #7
  %42 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_start = getelementptr inbounds %struct.xpvcv* %42, i64 0, i32 8
  %43 = load %struct.op** %xcv_start, align 8, !tbaa !0
  ret %struct.op* %43
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leavewrite() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 2
  %2 = load i32* %si_cxix, align 4, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 1
  %3 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %gv1 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %4 = bitcast i32* %gv1 to %struct.gv**
  %5 = load %struct.gv** %4, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %5, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %7, i64 0, i32 2
  %8 = load %struct.io** %gp_io, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.io* %8, i64 0, i32 0
  %9 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %9, i64 0, i32 8
  %10 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool = icmp eq %struct.io* %8, null
  %tobool3 = icmp eq %struct._PerlIO** %10, null
  %or.cond = or i1 %tobool, %tobool3
  br i1 %or.cond, label %forget_top, label %if.end

if.end:                                           ; preds = %entry
  %xio_lines_left = getelementptr inbounds %struct.xpvio* %9, i64 0, i32 13
  %11 = load i64* %xio_lines_left, align 8, !tbaa !3
  %12 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any5 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %13 = load i8** %sv_any5, align 8, !tbaa !0
  %xfm_lines = getelementptr inbounds i8* %13, i64 144
  %14 = bitcast i8* %xfm_lines to i64*
  %15 = load i64* %14, align 8, !tbaa !3
  %cmp = icmp sge i64 %11, %15
  %16 = load %struct.sv** @PL_toptarget, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.sv* %12, %16
  %or.cond399 = or i1 %cmp, %cmp6
  br i1 %or.cond399, label %forget_top, label %if.then7

if.then7:                                         ; preds = %if.end
  %xio_top_gv = getelementptr inbounds %struct.xpvio* %9, i64 0, i32 15
  %17 = load %struct.gv** %xio_top_gv, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.gv* %17, null
  br i1 %tobool9, label %if.then10, label %if.end60

if.then10:                                        ; preds = %if.then7
  %xio_top_name = getelementptr inbounds %struct.xpvio* %9, i64 0, i32 14
  %18 = load i8** %xio_top_name, align 8, !tbaa !0
  %tobool12 = icmp eq i8* %18, null
  br i1 %tobool12, label %if.then13, label %if.end43

if.then13:                                        ; preds = %if.then10
  %xio_fmt_name = getelementptr inbounds %struct.xpvio* %9, i64 0, i32 16
  %19 = load i8** %xio_fmt_name, align 8, !tbaa !0
  %tobool15 = icmp eq i8* %19, null
  br i1 %tobool15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.then13
  %xgv_name = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 8
  %20 = load i8** %xgv_name, align 8, !tbaa !0
  %call = tail call i8* @Perl_savepv(i8* %20) #6
  %21 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_fmt_name19 = getelementptr inbounds %struct.xpvio* %21, i64 0, i32 16
  store i8* %call, i8** %xio_fmt_name19, align 8, !tbaa !0
  %.pre = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.then16
  %22 = phi %struct.xpvgv* [ %6, %if.then13 ], [ %.pre, %if.then16 ]
  %xgv_name22 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 8
  %23 = load i8** %xgv_name22, align 8, !tbaa !0
  %call23 = tail call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0), i8* %23) #6
  %call24 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call23) #6
  %sv_any25 = getelementptr inbounds %struct.sv* %call24, i64 0, i32 0
  %24 = load i8** %sv_any25, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %24 to i8**
  %25 = load i8** %xpv_pv, align 8, !tbaa !0
  %call26 = tail call %struct.gv* @Perl_gv_fetchpv(i8* %25, i32 0, i32 14) #6
  %tobool27 = icmp eq %struct.gv* %call26, null
  br i1 %tobool27, label %lor.lhs.false32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end20
  %sv_any29 = getelementptr inbounds %struct.gv* %call26, i64 0, i32 0
  %26 = load %struct.xpvgv** %sv_any29, align 8, !tbaa !0
  %xgv_gp30 = getelementptr inbounds %struct.xpvgv* %26, i64 0, i32 7
  %27 = load %struct.gp** %xgv_gp30, align 8, !tbaa !0
  %gp_form = getelementptr inbounds %struct.gp* %27, i64 0, i32 3
  %28 = load %struct.cv** %gp_form, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.cv* %28, null
  br i1 %tobool31, label %lor.lhs.false32, label %if.then35

lor.lhs.false32:                                  ; preds = %land.lhs.true28, %if.end20
  %call33 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i32 0, i32 14) #6
  %tobool34 = icmp eq %struct.gv* %call33, null
  br i1 %tobool34, label %if.then35, label %if.else

if.then35:                                        ; preds = %land.lhs.true28, %lor.lhs.false32
  %call36 = tail call i8* @Perl_savesvpv(%struct.sv* %call24) #6
  %29 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_top_name38 = getelementptr inbounds %struct.xpvio* %29, i64 0, i32 14
  store i8* %call36, i8** %xio_top_name38, align 8, !tbaa !0
  br label %if.end43

if.else:                                          ; preds = %lor.lhs.false32
  %call39 = tail call i8* @Perl_savepv(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0)) #6
  %30 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_top_name41 = getelementptr inbounds %struct.xpvio* %30, i64 0, i32 14
  store i8* %call39, i8** %xio_top_name41, align 8, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.then10, %if.then35, %if.else
  %31 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_top_name45 = getelementptr inbounds %struct.xpvio* %31, i64 0, i32 14
  %32 = load i8** %xio_top_name45, align 8, !tbaa !0
  %call46 = tail call %struct.gv* @Perl_gv_fetchpv(i8* %32, i32 0, i32 14) #6
  %tobool47 = icmp eq %struct.gv* %call46, null
  br i1 %tobool47, label %if.then53, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end43
  %sv_any49 = getelementptr inbounds %struct.gv* %call46, i64 0, i32 0
  %33 = load %struct.xpvgv** %sv_any49, align 8, !tbaa !0
  %xgv_gp50 = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 7
  %34 = load %struct.gp** %xgv_gp50, align 8, !tbaa !0
  %gp_form51 = getelementptr inbounds %struct.gp* %34, i64 0, i32 3
  %35 = load %struct.cv** %gp_form51, align 8, !tbaa !0
  %tobool52 = icmp eq %struct.cv* %35, null
  br i1 %tobool52, label %if.then53, label %if.end57

if.then53:                                        ; preds = %lor.lhs.false48, %if.end43
  %36 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_page_len = getelementptr inbounds %struct.xpvio* %36, i64 0, i32 12
  %37 = load i64* %xio_page_len, align 8, !tbaa !3
  %xio_lines_left56 = getelementptr inbounds %struct.xpvio* %36, i64 0, i32 13
  store i64 %37, i64* %xio_lines_left56, align 8, !tbaa !3
  br label %forget_top

if.end57:                                         ; preds = %lor.lhs.false48
  %38 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_top_gv59 = getelementptr inbounds %struct.xpvio* %38, i64 0, i32 15
  store %struct.gv* %call46, %struct.gv** %xio_top_gv59, align 8, !tbaa !0
  %.pre408 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  br label %if.end60

if.end60:                                         ; preds = %if.then7, %if.end57
  %39 = phi %struct.xpvio* [ %9, %if.then7 ], [ %.pre408, %if.end57 ]
  %xio_flags = getelementptr inbounds %struct.xpvio* %39, i64 0, i32 22
  %40 = load i8* %xio_flags, align 1, !tbaa !1
  %and = and i8 %40, 8
  %tobool62 = icmp eq i8 %and, 0
  br i1 %tobool62, label %if.end94, label %if.then63

if.then63:                                        ; preds = %if.end60
  %xio_lines_left65 = getelementptr inbounds %struct.xpvio* %39, i64 0, i32 13
  %41 = load i64* %xio_lines_left65, align 8, !tbaa !3
  %conv66 = trunc i64 %41 to i32
  %42 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any67 = getelementptr inbounds %struct.sv* %42, i64 0, i32 0
  %43 = load i8** %sv_any67, align 8, !tbaa !0
  %xpv_pv68 = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv68, align 8, !tbaa !0
  %cmp69 = icmp slt i32 %conv66, 1
  br i1 %cmp69, label %forget_top, label %while.body

while.cond:                                       ; preds = %while.body
  %cmp73 = icmp sgt i32 %dec406, 0
  br i1 %cmp73, label %while.body, label %if.then80

while.body:                                       ; preds = %if.then63, %while.cond
  %dec406.in = phi i32 [ %dec406, %while.cond ], [ %conv66, %if.then63 ]
  %s.0405 = phi i8* [ %incdec.ptr, %while.cond ], [ %44, %if.then63 ]
  %dec406 = add nsw i32 %dec406.in, -1
  %call75 = tail call i8* @strchr(i8* %s.0405, i32 10) #6
  %tobool76 = icmp eq i8* %call75, null
  %incdec.ptr = getelementptr inbounds i8* %call75, i64 1
  br i1 %tobool76, label %if.end94, label %while.cond

if.then80:                                        ; preds = %while.cond
  %xpv_cur = getelementptr inbounds i8* %43, i64 8
  %45 = bitcast i8* %xpv_cur to i64*
  %46 = load i64* %45, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %45, align 8, !tbaa !3
  %call86 = tail call signext i8 @Perl_do_print(%struct.sv* %42, %struct._PerlIO** %10) #6
  %47 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any87 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %48 = load i8** %sv_any87, align 8, !tbaa !0
  %xpv_cur88 = getelementptr inbounds i8* %48, i64 8
  %49 = bitcast i8* %xpv_cur88 to i64*
  store i64 %46, i64* %49, align 8, !tbaa !3
  tail call void @Perl_sv_chop(%struct.sv* %47, i8* %incdec.ptr) #6
  %50 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_lines_left90 = getelementptr inbounds %struct.xpvio* %50, i64 0, i32 13
  %51 = load i64* %xio_lines_left90, align 8, !tbaa !3
  %52 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any91 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %53 = load i8** %sv_any91, align 8, !tbaa !0
  %xfm_lines92 = getelementptr inbounds i8* %53, i64 144
  %54 = bitcast i8* %xfm_lines92 to i64*
  %55 = load i64* %54, align 8, !tbaa !3
  %sub = sub nsw i64 %55, %51
  store i64 %sub, i64* %54, align 8, !tbaa !3
  br label %if.end94

if.end94:                                         ; preds = %while.body, %if.end60, %if.then80
  %56 = phi %struct.xpvio* [ %50, %if.then80 ], [ %39, %if.end60 ], [ %39, %while.body ]
  %xio_lines_left96 = getelementptr inbounds %struct.xpvio* %56, i64 0, i32 13
  %57 = load i64* %xio_lines_left96, align 8, !tbaa !3
  %cmp97 = icmp sgt i64 %57, -1
  br i1 %cmp97, label %land.lhs.true99, label %if.end105

land.lhs.true99:                                  ; preds = %if.end94
  %xio_page = getelementptr inbounds %struct.xpvio* %56, i64 0, i32 11
  %58 = load i64* %xio_page, align 8, !tbaa !3
  %cmp101 = icmp sgt i64 %58, 0
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %land.lhs.true99
  %59 = load %struct.sv** @PL_formfeed, align 8, !tbaa !0
  %call104 = tail call signext i8 @Perl_do_print(%struct.sv* %59, %struct._PerlIO** %10) #6
  %.pre409 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  br label %if.end105

if.end105:                                        ; preds = %land.lhs.true99, %if.end94, %if.then103
  %60 = phi %struct.xpvio* [ %.pre409, %if.then103 ], [ %56, %if.end94 ], [ %56, %land.lhs.true99 ]
  %xio_page_len107 = getelementptr inbounds %struct.xpvio* %60, i64 0, i32 12
  %61 = load i64* %xio_page_len107, align 8, !tbaa !3
  %xio_lines_left109 = getelementptr inbounds %struct.xpvio* %60, i64 0, i32 13
  store i64 %61, i64* %xio_lines_left109, align 8, !tbaa !3
  %xio_page111 = getelementptr inbounds %struct.xpvio* %60, i64 0, i32 11
  %62 = load i64* %xio_page111, align 8, !tbaa !3
  %inc = add nsw i64 %62, 1
  store i64 %inc, i64* %xio_page111, align 8, !tbaa !3
  %63 = load %struct.sv** @PL_toptarget, align 8, !tbaa !0
  store %struct.sv* %63, %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %64 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_flags113 = getelementptr inbounds %struct.xpvio* %64, i64 0, i32 22
  %65 = load i8* %xio_flags113, align 1, !tbaa !1
  %or = or i8 %65, 8
  store i8 %or, i8* %xio_flags113, align 1, !tbaa !1
  %66 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_top_gv117 = getelementptr inbounds %struct.xpvio* %66, i64 0, i32 15
  %67 = load %struct.gv** %xio_top_gv117, align 8, !tbaa !0
  %tobool118 = icmp eq %struct.gv* %67, null
  br i1 %tobool118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end105
  %call120 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #6
  br label %return

if.end121:                                        ; preds = %if.end105
  %sv_any122 = getelementptr inbounds %struct.gv* %67, i64 0, i32 0
  %68 = load %struct.xpvgv** %sv_any122, align 8, !tbaa !0
  %xgv_gp123 = getelementptr inbounds %struct.xpvgv* %68, i64 0, i32 7
  %69 = load %struct.gp** %xgv_gp123, align 8, !tbaa !0
  %gp_form124 = getelementptr inbounds %struct.gp* %69, i64 0, i32 3
  %70 = load %struct.cv** %gp_form124, align 8, !tbaa !0
  %tobool125 = icmp eq %struct.cv* %70, null
  br i1 %tobool125, label %if.then126, label %if.end141

if.then126:                                       ; preds = %if.end121
  %call127 = tail call %struct.sv* @Perl_sv_newmortal() #6
  tail call void @Perl_gv_efullname4(%struct.sv* %call127, %struct.gv* %67, i8* null, i8 signext 0) #6
  %sv_flags = getelementptr inbounds %struct.sv* %call127, i64 0, i32 2
  %71 = load i32* %sv_flags, align 4, !tbaa !4
  %and128 = and i32 %71, 262144
  %cmp129 = icmp eq i32 %and128, 0
  br i1 %cmp129, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then126
  %sv_any131 = getelementptr inbounds %struct.sv* %call127, i64 0, i32 0
  %72 = load i8** %sv_any131, align 8, !tbaa !0
  %xpv_pv132 = bitcast i8* %72 to i8**
  %73 = load i8** %xpv_pv132, align 8, !tbaa !0
  br label %if.end134

cond.false:                                       ; preds = %if.then126
  %call133 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call127) #6
  br label %if.end134

if.end134:                                        ; preds = %cond.true, %cond.false
  %name.0 = phi i8* [ %73, %cond.true ], [ %call133, %cond.false ]
  %tobool135 = icmp eq i8* %name.0, null
  br i1 %tobool135, label %if.end141, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end134
  %74 = load i8* %name.0, align 1, !tbaa !1
  %tobool138 = icmp eq i8 %74, 0
  br i1 %tobool138, label %if.end141, label %if.then139

if.then139:                                       ; preds = %land.lhs.true136
  %call140 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([33 x i8]* @.str39, i64 0, i64 0), i8* %name.0) #6
  br label %return

if.end141:                                        ; preds = %if.end121, %land.lhs.true136, %if.end134
  %sv_any142 = getelementptr inbounds %struct.cv* %70, i64 0, i32 0
  %75 = load %struct.xpvcv** %sv_any142, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %75, i64 0, i32 17
  %76 = load i16* %xcv_flags, align 2, !tbaa !5
  %and144 = and i16 %76, 1
  %tobool145 = icmp eq i16 %and144, 0
  br i1 %tobool145, label %if.end149, label %if.then146

if.then146:                                       ; preds = %if.end141
  %call147 = tail call %struct.cv* @Perl_cv_clone(%struct.cv* %70) #6
  %77 = bitcast %struct.cv* %call147 to %struct.sv*
  %call148 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %77) #6
  %78 = bitcast %struct.sv* %call148 to %struct.cv*
  br label %if.end149

if.end149:                                        ; preds = %if.end141, %if.then146
  %cv.0 = phi %struct.cv* [ %78, %if.then146 ], [ %70, %if.end141 ]
  %79 = load %struct.op** @PL_op, align 8, !tbaa !0
  %call150 = tail call fastcc %struct.op* @S_doform(%struct.cv* %cv.0, %struct.gv* %5, %struct.op* %79) #7
  br label %return

forget_top:                                       ; preds = %if.then63, %if.end, %entry, %if.then53
  %80 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix152 = getelementptr inbounds %struct.stackinfo* %80, i64 0, i32 2
  %81 = load i32* %si_cxix152, align 4, !tbaa !4
  %dec153 = add nsw i32 %81, -1
  store i32 %dec153, i32* %si_cxix152, align 4, !tbaa !4
  %idxprom154 = sext i32 %81 to i64
  %si_cxstack155 = getelementptr inbounds %struct.stackinfo* %80, i64 0, i32 1
  %82 = load %struct.context** %si_cxstack155, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %82, i64 %idxprom154, i32 1, i32 0, i32 1
  %83 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %83, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %84 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %82, i64 %idxprom154, i32 1, i32 0, i32 3
  %85 = load i32* %blku_oldmarksp, align 4, !tbaa !4
  %idx.ext163 = sext i32 %85 to i64
  %add.ptr164 = getelementptr inbounds i32* %84, i64 %idx.ext163
  store i32* %add.ptr164, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %82, i64 %idxprom154, i32 1, i32 0, i32 4
  %86 = load i32* %blku_oldscopesp, align 4, !tbaa !4
  store i32 %86, i32* @PL_scopestack_ix, align 4, !tbaa !4
  %blku_oldretsp = getelementptr inbounds %struct.context* %82, i64 %idxprom154, i32 1, i32 0, i32 2
  %87 = load i32* %blku_oldretsp, align 4, !tbaa !4
  store i32 %87, i32* @PL_retstack_ix, align 4, !tbaa !4
  %blku_oldpm = getelementptr inbounds %struct.context* %82, i64 %idxprom154, i32 1, i32 0, i32 5
  %88 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %88, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %dfoutgv = getelementptr inbounds %struct.context* %82, i64 %idxprom154, i32 1, i32 0, i32 7, i32 0, i32 2
  %89 = load %struct.op** %dfoutgv, align 8
  %90 = bitcast %struct.op* %89 to %struct.gv*
  tail call void @Perl_setdefout(%struct.gv* %90) #7
  %91 = load %struct.op** %dfoutgv, align 8
  %92 = bitcast %struct.op* %91 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %92) #6
  tail call void @Perl_pop_scope() #6
  %93 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_ofp184 = getelementptr inbounds %struct.xpvio* %93, i64 0, i32 8
  %94 = load %struct._PerlIO*** %xio_ofp184, align 8, !tbaa !0
  %tobool185 = icmp eq %struct._PerlIO** %94, null
  br i1 %tobool185, label %if.then186, label %if.else259

if.then186:                                       ; preds = %forget_top
  %95 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %95, i64 0, i32 14
  %96 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp187 = icmp eq %struct.sv* %96, null
  br i1 %cmp187, label %lor.lhs.false213, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %if.then186
  %97 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings190 = getelementptr inbounds %struct.cop* %97, i64 0, i32 14
  %98 = load %struct.sv** %cop_warnings190, align 8, !tbaa !0
  %cmp191 = icmp eq %struct.sv* %98, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp191, label %lor.lhs.false213, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %land.lhs.true189
  %99 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings194 = getelementptr inbounds %struct.cop* %99, i64 0, i32 14
  %100 = load %struct.sv** %cop_warnings194, align 8, !tbaa !0
  %cmp195 = icmp eq %struct.sv* %100, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp195, label %if.then221, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %land.lhs.true193
  %101 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings198 = getelementptr inbounds %struct.cop* %101, i64 0, i32 14
  %102 = load %struct.sv** %cop_warnings198, align 8, !tbaa !0
  %sv_any199 = getelementptr inbounds %struct.sv* %102, i64 0, i32 0
  %103 = load i8** %sv_any199, align 8, !tbaa !0
  %xpv_pv200 = bitcast i8* %103 to i8**
  %104 = load i8** %xpv_pv200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i8* %104, i64 1
  %105 = load i8* %arrayidx201, align 1, !tbaa !1
  %and203 = and i8 %105, 16
  %tobool204 = icmp eq i8 %and203, 0
  br i1 %tobool204, label %lor.lhs.false205, label %if.then221

lor.lhs.false205:                                 ; preds = %lor.lhs.false197
  %106 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings206 = getelementptr inbounds %struct.cop* %106, i64 0, i32 14
  %107 = load %struct.sv** %cop_warnings206, align 8, !tbaa !0
  %sv_any207 = getelementptr inbounds %struct.sv* %107, i64 0, i32 0
  %108 = load i8** %sv_any207, align 8, !tbaa !0
  %xpv_pv208 = bitcast i8* %108 to i8**
  %109 = load i8** %xpv_pv208, align 8, !tbaa !0
  %arrayidx209 = getelementptr inbounds i8* %109, i64 1
  %110 = load i8* %arrayidx209, align 1, !tbaa !1
  %and211 = and i8 %110, 4
  %tobool212 = icmp eq i8 %and211, 0
  br i1 %tobool212, label %lor.lhs.false213, label %if.then221

lor.lhs.false213:                                 ; preds = %lor.lhs.false205, %land.lhs.true189, %if.then186
  %111 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings214 = getelementptr inbounds %struct.cop* %111, i64 0, i32 14
  %112 = load %struct.sv** %cop_warnings214, align 8, !tbaa !0
  %cmp215 = icmp eq %struct.sv* %112, null
  br i1 %cmp215, label %land.lhs.true217, label %if.end257

land.lhs.true217:                                 ; preds = %lor.lhs.false213
  %113 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and219 = and i8 %113, 1
  %tobool220 = icmp eq i8 %and219, 0
  br i1 %tobool220, label %if.end257, label %if.then221

if.then221:                                       ; preds = %lor.lhs.false205, %lor.lhs.false197, %land.lhs.true217, %land.lhs.true193
  %114 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %114, i64 0, i32 7
  %115 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool223 = icmp eq %struct._PerlIO** %115, null
  br i1 %tobool223, label %if.else225, label %if.then224

if.then224:                                       ; preds = %if.then221
  tail call void @Perl_report_evil_fh(%struct.gv* %5, %struct.io* %8, i32 -1) #6
  br label %if.end257

if.else225:                                       ; preds = %if.then221
  %116 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings226 = getelementptr inbounds %struct.cop* %116, i64 0, i32 14
  %117 = load %struct.sv** %cop_warnings226, align 8, !tbaa !0
  %cmp227 = icmp eq %struct.sv* %117, null
  br i1 %cmp227, label %lor.lhs.false245, label %land.lhs.true229

land.lhs.true229:                                 ; preds = %if.else225
  %118 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings230 = getelementptr inbounds %struct.cop* %118, i64 0, i32 14
  %119 = load %struct.sv** %cop_warnings230, align 8, !tbaa !0
  %cmp231 = icmp eq %struct.sv* %119, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp231, label %lor.lhs.false245, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %land.lhs.true229
  %120 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings234 = getelementptr inbounds %struct.cop* %120, i64 0, i32 14
  %121 = load %struct.sv** %cop_warnings234, align 8, !tbaa !0
  %cmp235 = icmp eq %struct.sv* %121, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp235, label %if.then253, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %land.lhs.true233
  %122 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings238 = getelementptr inbounds %struct.cop* %122, i64 0, i32 14
  %123 = load %struct.sv** %cop_warnings238, align 8, !tbaa !0
  %sv_any239 = getelementptr inbounds %struct.sv* %123, i64 0, i32 0
  %124 = load i8** %sv_any239, align 8, !tbaa !0
  %xpv_pv240 = bitcast i8* %124 to i8**
  %125 = load i8** %xpv_pv240, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds i8* %125, i64 1
  %126 = load i8* %arrayidx241, align 1, !tbaa !1
  %and243 = and i8 %126, 16
  %tobool244 = icmp eq i8 %and243, 0
  br i1 %tobool244, label %lor.lhs.false245, label %if.then253

lor.lhs.false245:                                 ; preds = %lor.lhs.false237, %land.lhs.true229, %if.else225
  %127 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings246 = getelementptr inbounds %struct.cop* %127, i64 0, i32 14
  %128 = load %struct.sv** %cop_warnings246, align 8, !tbaa !0
  %cmp247 = icmp eq %struct.sv* %128, null
  br i1 %cmp247, label %land.lhs.true249, label %if.end257

land.lhs.true249:                                 ; preds = %lor.lhs.false245
  %129 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and251 = and i8 %129, 1
  %tobool252 = icmp eq i8 %and251, 0
  br i1 %tobool252, label %if.end257, label %if.then253

if.then253:                                       ; preds = %lor.lhs.false237, %land.lhs.true249, %land.lhs.true233
  %130 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %130, i64 0, i32 4
  %131 = load i16* %op_type, align 2, !tbaa !5
  %conv254 = zext i16 %131 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %5, %struct.io* %8, i32 %conv254) #6
  br label %if.end257

if.end257:                                        ; preds = %land.lhs.true249, %land.lhs.true217, %if.then224, %if.then253, %lor.lhs.false245, %lor.lhs.false213
  %incdec.ptr258 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr258, align 8, !tbaa !0
  br label %if.end322

if.else259:                                       ; preds = %forget_top
  %132 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any260 = getelementptr inbounds %struct.sv* %132, i64 0, i32 0
  %133 = load i8** %sv_any260, align 8, !tbaa !0
  %xfm_lines261 = getelementptr inbounds i8* %133, i64 144
  %134 = bitcast i8* %xfm_lines261 to i64*
  %135 = load i64* %134, align 8, !tbaa !3
  %xio_lines_left263 = getelementptr inbounds %struct.xpvio* %93, i64 0, i32 13
  %136 = load i64* %xio_lines_left263, align 8, !tbaa !3
  %sub264 = sub nsw i64 %136, %135
  store i64 %sub264, i64* %xio_lines_left263, align 8, !tbaa !3
  %cmp265 = icmp slt i64 %sub264, 0
  br i1 %cmp265, label %if.then267, label %if.end297

if.then267:                                       ; preds = %if.else259
  %137 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings268 = getelementptr inbounds %struct.cop* %137, i64 0, i32 14
  %138 = load %struct.sv** %cop_warnings268, align 8, !tbaa !0
  %cmp269 = icmp eq %struct.sv* %138, null
  br i1 %cmp269, label %lor.lhs.false287, label %land.lhs.true271

land.lhs.true271:                                 ; preds = %if.then267
  %139 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings272 = getelementptr inbounds %struct.cop* %139, i64 0, i32 14
  %140 = load %struct.sv** %cop_warnings272, align 8, !tbaa !0
  %cmp273 = icmp eq %struct.sv* %140, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp273, label %lor.lhs.false287, label %land.lhs.true275

land.lhs.true275:                                 ; preds = %land.lhs.true271
  %141 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings276 = getelementptr inbounds %struct.cop* %141, i64 0, i32 14
  %142 = load %struct.sv** %cop_warnings276, align 8, !tbaa !0
  %cmp277 = icmp eq %struct.sv* %142, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp277, label %if.then295, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %land.lhs.true275
  %143 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings280 = getelementptr inbounds %struct.cop* %143, i64 0, i32 14
  %144 = load %struct.sv** %cop_warnings280, align 8, !tbaa !0
  %sv_any281 = getelementptr inbounds %struct.sv* %144, i64 0, i32 0
  %145 = load i8** %sv_any281, align 8, !tbaa !0
  %xpv_pv282 = bitcast i8* %145 to i8**
  %146 = load i8** %xpv_pv282, align 8, !tbaa !0
  %arrayidx283 = getelementptr inbounds i8* %146, i64 1
  %147 = load i8* %arrayidx283, align 1, !tbaa !1
  %and285 = and i8 %147, 4
  %tobool286 = icmp eq i8 %and285, 0
  br i1 %tobool286, label %lor.lhs.false287, label %if.then295

lor.lhs.false287:                                 ; preds = %lor.lhs.false279, %land.lhs.true271, %if.then267
  %148 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings288 = getelementptr inbounds %struct.cop* %148, i64 0, i32 14
  %149 = load %struct.sv** %cop_warnings288, align 8, !tbaa !0
  %cmp289 = icmp eq %struct.sv* %149, null
  br i1 %cmp289, label %land.lhs.true291, label %if.end297

land.lhs.true291:                                 ; preds = %lor.lhs.false287
  %150 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and293 = and i8 %150, 1
  %tobool294 = icmp eq i8 %and293, 0
  br i1 %tobool294, label %if.end297, label %if.then295

if.then295:                                       ; preds = %lor.lhs.false279, %land.lhs.true291, %land.lhs.true275
  tail call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0)) #6
  br label %if.end297

if.end297:                                        ; preds = %land.lhs.true291, %lor.lhs.false287, %if.then295, %if.else259
  %151 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %call298 = tail call signext i8 @Perl_do_print(%struct.sv* %151, %struct._PerlIO** %94) #6
  %tobool299 = icmp eq i8 %call298, 0
  br i1 %tobool299, label %if.then300, label %if.else302

if.then300:                                       ; preds = %if.end297
  %incdec.ptr301 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr301, align 8, !tbaa !0
  br label %if.end322

if.else302:                                       ; preds = %if.end297
  %152 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any303 = getelementptr inbounds %struct.sv* %152, i64 0, i32 0
  %153 = load i8** %sv_any303, align 8, !tbaa !0
  %xfm_lines304 = getelementptr inbounds i8* %153, i64 144
  %154 = bitcast i8* %xfm_lines304 to i64*
  store i64 0, i64* %154, align 8, !tbaa !3
  %xpv_cur306 = getelementptr inbounds i8* %153, i64 8
  %155 = bitcast i8* %xpv_cur306 to i64*
  store i64 0, i64* %155, align 8, !tbaa !3
  %xpv_pv308 = bitcast i8* %153 to i8**
  %156 = load i8** %xpv_pv308, align 8, !tbaa !0
  store i8 0, i8* %156, align 1, !tbaa !1
  %157 = load %struct.xpvio** %sv_any2, align 8, !tbaa !0
  %xio_flags313 = getelementptr inbounds %struct.xpvio* %157, i64 0, i32 22
  %158 = load i8* %xio_flags313, align 1, !tbaa !1
  %and315 = and i8 %158, 4
  %tobool316 = icmp eq i8 %and315, 0
  br i1 %tobool316, label %if.end319, label %if.then317

if.then317:                                       ; preds = %if.else302
  %call318 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %94) #6
  br label %if.end319

if.end319:                                        ; preds = %if.else302, %if.then317
  %incdec.ptr320 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr320, align 8, !tbaa !0
  br label %if.end322

if.end322:                                        ; preds = %if.then300, %if.end319, %if.end257
  %sp.0 = phi %struct.sv** [ %incdec.ptr320, %if.end319 ], [ %incdec.ptr301, %if.then300 ], [ %incdec.ptr258, %if.end257 ]
  %159 = load %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  store %struct.sv* %159, %struct.sv** @PL_formtarget, align 8, !tbaa !0
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call323 = tail call %struct.op* @Perl_pop_return() #6
  br label %return

return:                                           ; preds = %if.end322, %if.end149, %if.then139, %if.then119
  %retval.0 = phi %struct.op* [ %call323, %if.end322 ], [ %call140, %if.then139 ], [ %call150, %if.end149 ], [ %call120, %if.then119 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_savepv(i8*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare i8* @Perl_savesvpv(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: optsize
declare signext i8 @Perl_do_print(%struct.sv*, %struct._PerlIO**) #1

; Function Attrs: optsize
declare void @Perl_sv_chop(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: optsize
declare %struct.op* @Perl_pop_return() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_prtf() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %4, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %5, 64
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %6 = load %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  %7 = bitcast %struct.sv* %6 to %struct.gv*
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %8 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gv.0 = phi %struct.gv* [ %7, %if.then ], [ %8, %if.else ]
  %mark.0 = phi %struct.sv** [ %incdec.ptr2, %if.then ], [ %add.ptr, %if.else ]
  %tobool3 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool3, label %if.end75.thread, label %land.lhs.true5

if.end75.thread:                                  ; preds = %if.end
  %call76310 = tail call %struct.sv* @Perl_newSV(i64 0) #6
  br label %if.then95

land.lhs.true5:                                   ; preds = %if.end
  %9 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !4
  %and6 = and i32 %10, 255
  %cmp = icmp eq i32 %and6, 13
  br i1 %cmp, label %land.lhs.true8, label %if.end75.thread316

if.end75.thread316:                               ; preds = %land.lhs.true5
  %call76317 = tail call %struct.sv* @Perl_newSV(i64 0) #6
  br label %land.lhs.true78

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %sv_any = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.gp* %12, null
  br i1 %tobool9, label %if.end75, label %cond.end

cond.end:                                         ; preds = %land.lhs.true8
  %gp_io = getelementptr inbounds %struct.gp* %12, i64 0, i32 2
  %13 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.io* %13, null
  br i1 %tobool12, label %if.end75, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.end
  %14 = bitcast %struct.io* %13 to %struct.sv*
  %15 = getelementptr inbounds %struct.io* %13, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !4
  %and15 = and i32 %16, 32768
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end75, label %cond.end19

cond.end19:                                       ; preds = %land.lhs.true13
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %14, i32 113) #6
  %tobool21 = icmp eq %struct.magic* %call, null
  br i1 %tobool21, label %if.end75, label %if.then22

if.then22:                                        ; preds = %cond.end19
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr24 = getelementptr inbounds %struct.sv** %17, i64 %idx.ext
  %cmp25 = icmp eq %struct.sv** %mark.0, %add.ptr24
  br i1 %cmp25, label %if.then27, label %if.end51

if.then27:                                        ; preds = %if.then22
  %18 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %cmp32 = icmp slt i64 %sub.ptr.sub30, 8
  br i1 %cmp32, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.then27
  %sub.ptr.lhs.cast35 = ptrtoint %struct.sv** %mark.0 to i64
  %sub.ptr.rhs.cast36 = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %call40 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #6
  %19 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %20 = shl i64 %sub.ptr.sub37, 29
  %idx.ext41 = ashr i64 %20, 32
  %add.ptr42 = getelementptr inbounds %struct.sv** %19, i64 %idx.ext41
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.then27
  %mark.1 = phi %struct.sv** [ %add.ptr42, %if.then34 ], [ %mark.0, %if.then27 ]
  %sp.0 = phi %struct.sv** [ %call40, %if.then34 ], [ %0, %if.then27 ]
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %mark.1, i64 1
  %add.ptr45 = getelementptr inbounds %struct.sv** %mark.1, i64 2
  %21 = bitcast %struct.sv** %add.ptr45 to i8*
  %22 = bitcast %struct.sv** %incdec.ptr44 to i8*
  %sub.ptr.lhs.cast46 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast47 = ptrtoint %struct.sv** %incdec.ptr44 to i64
  %sub.ptr.sub48 = sub i64 8, %sub.ptr.rhs.cast47
  %sub.ptr.div49304305 = add i64 %sub.ptr.sub48, %sub.ptr.lhs.cast46
  %mul = and i64 %sub.ptr.div49304305, -8
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %21, i8* %22, i64 %mul, i32 1, i1 false)
  %incdec.ptr50 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  br label %if.end51

if.end51:                                         ; preds = %if.end43, %if.then22
  %mark.2 = phi %struct.sv** [ %incdec.ptr44, %if.end43 ], [ %mark.0, %if.then22 ]
  %sp.1 = phi %struct.sv** [ %incdec.ptr50, %if.end43 ], [ %0, %if.then22 ]
  %23 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr52 = getelementptr inbounds i32* %23, i64 1
  store i32* %incdec.ptr52, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %24 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp53 = icmp eq i32* %incdec.ptr52, %24
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end56

if.end56:                                         ; preds = %if.end51, %if.then55
  %25 = phi i32* [ %.pre, %if.then55 ], [ %incdec.ptr52, %if.end51 ]
  %add.ptr57 = getelementptr inbounds %struct.sv** %mark.2, i64 -1
  %26 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast58 = ptrtoint %struct.sv** %add.ptr57 to i64
  %sub.ptr.rhs.cast59 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %sub.ptr.div61303 = lshr exact i64 %sub.ptr.sub60, 3
  %conv62 = trunc i64 %sub.ptr.div61303 to i32
  store i32 %conv62, i32* %25, align 4, !tbaa !4
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %27 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.sv* %27, null
  br i1 %tobool63, label %cond.false66, label %cond.end69

cond.false66:                                     ; preds = %if.end56
  %call67 = tail call %struct.sv* @Perl_newRV(%struct.sv* %14) #6
  %call68 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67) #6
  br label %cond.end69

cond.end69:                                       ; preds = %if.end56, %cond.false66
  %cond70 = phi %struct.sv* [ %call68, %cond.false66 ], [ %27, %if.end56 ]
  store %struct.sv* %cond70, %struct.sv** %mark.2, align 8, !tbaa !0
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call71 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  %28 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr73.sum = add i64 %idx.ext, 1
  %add.ptr74 = getelementptr inbounds %struct.sv** %29, i64 %add.ptr73.sum
  %30 = load %struct.sv** %28, align 8, !tbaa !0
  store %struct.sv* %30, %struct.sv** %add.ptr74, align 8, !tbaa !0
  store %struct.sv** %add.ptr74, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %31, i64 0, i32 0
  br label %return

if.end75:                                         ; preds = %land.lhs.true13, %land.lhs.true8, %cond.end19, %cond.end
  %call76 = tail call %struct.sv* @Perl_newSV(i64 0) #6
  br label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.end75, %if.end75.thread316
  %call76318 = phi %struct.sv* [ %call76317, %if.end75.thread316 ], [ %call76, %if.end75 ]
  %32 = load i32* %9, align 4, !tbaa !4
  %and80 = and i32 %32, 255
  %cmp81 = icmp eq i32 %and80, 13
  br i1 %cmp81, label %land.lhs.true83, label %if.then95

land.lhs.true83:                                  ; preds = %land.lhs.true78
  %sv_any84 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %33 = load %struct.xpvgv** %sv_any84, align 8, !tbaa !0
  %xgv_gp85 = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 7
  %34 = load %struct.gp** %xgv_gp85, align 8, !tbaa !0
  %tobool86 = icmp eq %struct.gp* %34, null
  br i1 %tobool86, label %if.then95, label %cond.end92

cond.end92:                                       ; preds = %land.lhs.true83
  %gp_io90 = getelementptr inbounds %struct.gp* %34, i64 0, i32 2
  %35 = load %struct.io** %gp_io90, align 8, !tbaa !0
  %tobool94 = icmp eq %struct.io* %35, null
  br i1 %tobool94, label %if.then95, label %if.else131

if.then95:                                        ; preds = %if.end75.thread, %land.lhs.true78, %land.lhs.true83, %cond.end92
  %call76311314 = phi %struct.sv* [ %call76318, %cond.end92 ], [ %call76318, %land.lhs.true83 ], [ %call76318, %land.lhs.true78 ], [ %call76310, %if.end75.thread ]
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp96 = icmp eq %struct.sv* %37, null
  br i1 %cmp96, label %lor.lhs.false119, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.then95
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings99 = getelementptr inbounds %struct.cop* %38, i64 0, i32 14
  %39 = load %struct.sv** %cop_warnings99, align 8, !tbaa !0
  %cmp100 = icmp eq %struct.sv* %39, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp100, label %lor.lhs.false119, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %land.lhs.true98
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings103 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings103, align 8, !tbaa !0
  %cmp104 = icmp eq %struct.sv* %41, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp104, label %if.then127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true102
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings106 = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings106, align 8, !tbaa !0
  %sv_any107 = getelementptr inbounds %struct.sv* %43, i64 0, i32 0
  %44 = load i8** %sv_any107, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %44 to i8**
  %45 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %45, i64 2
  %46 = load i8* %arrayidx, align 1, !tbaa !1
  %and109 = and i8 %46, 64
  %tobool110 = icmp eq i8 %and109, 0
  br i1 %tobool110, label %lor.lhs.false111, label %if.then127

lor.lhs.false111:                                 ; preds = %lor.lhs.false
  %47 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings112 = getelementptr inbounds %struct.cop* %47, i64 0, i32 14
  %48 = load %struct.sv** %cop_warnings112, align 8, !tbaa !0
  %sv_any113 = getelementptr inbounds %struct.sv* %48, i64 0, i32 0
  %49 = load i8** %sv_any113, align 8, !tbaa !0
  %xpv_pv114 = bitcast i8* %49 to i8**
  %50 = load i8** %xpv_pv114, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i8* %50, i64 1
  %51 = load i8* %arrayidx115, align 1, !tbaa !1
  %and117 = and i8 %51, 16
  %tobool118 = icmp eq i8 %and117, 0
  br i1 %tobool118, label %lor.lhs.false119, label %if.then127

lor.lhs.false119:                                 ; preds = %lor.lhs.false111, %land.lhs.true98, %if.then95
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings120 = getelementptr inbounds %struct.cop* %52, i64 0, i32 14
  %53 = load %struct.sv** %cop_warnings120, align 8, !tbaa !0
  %cmp121 = icmp eq %struct.sv* %53, null
  br i1 %cmp121, label %land.lhs.true123, label %if.end129

land.lhs.true123:                                 ; preds = %lor.lhs.false119
  %54 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and125 = and i8 %54, 1
  %tobool126 = icmp eq i8 %and125, 0
  br i1 %tobool126, label %if.end129, label %if.then127

if.then127:                                       ; preds = %lor.lhs.false111, %lor.lhs.false, %land.lhs.true123, %land.lhs.true102
  %55 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %55, i64 0, i32 4
  %56 = load i16* %op_type, align 2, !tbaa !5
  %conv128 = zext i16 %56 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* null, i32 %conv128) #6
  br label %if.end129

if.end129:                                        ; preds = %land.lhs.true123, %if.then127, %lor.lhs.false119
  %call130 = tail call i32* @__errno_location() #6
  store i32 9, i32* %call130, align 4, !tbaa !4
  br label %just_say_no

if.else131:                                       ; preds = %cond.end92
  %sv_any132 = getelementptr inbounds %struct.io* %35, i64 0, i32 0
  %57 = load %struct.xpvio** %sv_any132, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %57, i64 0, i32 8
  %58 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool133 = icmp eq %struct._PerlIO** %58, null
  br i1 %tobool133, label %if.then134, label %if.else209

if.then134:                                       ; preds = %if.else131
  %59 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings135 = getelementptr inbounds %struct.cop* %59, i64 0, i32 14
  %60 = load %struct.sv** %cop_warnings135, align 8, !tbaa !0
  %cmp136 = icmp eq %struct.sv* %60, null
  br i1 %cmp136, label %lor.lhs.false162, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %if.then134
  %61 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings139 = getelementptr inbounds %struct.cop* %61, i64 0, i32 14
  %62 = load %struct.sv** %cop_warnings139, align 8, !tbaa !0
  %cmp140 = icmp eq %struct.sv* %62, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp140, label %lor.lhs.false162, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %land.lhs.true138
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings143 = getelementptr inbounds %struct.cop* %63, i64 0, i32 14
  %64 = load %struct.sv** %cop_warnings143, align 8, !tbaa !0
  %cmp144 = icmp eq %struct.sv* %64, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp144, label %if.then170, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %land.lhs.true142
  %65 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings147 = getelementptr inbounds %struct.cop* %65, i64 0, i32 14
  %66 = load %struct.sv** %cop_warnings147, align 8, !tbaa !0
  %sv_any148 = getelementptr inbounds %struct.sv* %66, i64 0, i32 0
  %67 = load i8** %sv_any148, align 8, !tbaa !0
  %xpv_pv149 = bitcast i8* %67 to i8**
  %68 = load i8** %xpv_pv149, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i8* %68, i64 1
  %69 = load i8* %arrayidx150, align 1, !tbaa !1
  %and152 = and i8 %69, 16
  %tobool153 = icmp eq i8 %and152, 0
  br i1 %tobool153, label %lor.lhs.false154, label %if.then170

lor.lhs.false154:                                 ; preds = %lor.lhs.false146
  %70 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings155 = getelementptr inbounds %struct.cop* %70, i64 0, i32 14
  %71 = load %struct.sv** %cop_warnings155, align 8, !tbaa !0
  %sv_any156 = getelementptr inbounds %struct.sv* %71, i64 0, i32 0
  %72 = load i8** %sv_any156, align 8, !tbaa !0
  %xpv_pv157 = bitcast i8* %72 to i8**
  %73 = load i8** %xpv_pv157, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i8* %73, i64 1
  %74 = load i8* %arrayidx158, align 1, !tbaa !1
  %and160 = and i8 %74, 4
  %tobool161 = icmp eq i8 %and160, 0
  br i1 %tobool161, label %lor.lhs.false162, label %if.then170

lor.lhs.false162:                                 ; preds = %lor.lhs.false154, %land.lhs.true138, %if.then134
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings163 = getelementptr inbounds %struct.cop* %75, i64 0, i32 14
  %76 = load %struct.sv** %cop_warnings163, align 8, !tbaa !0
  %cmp164 = icmp eq %struct.sv* %76, null
  br i1 %cmp164, label %land.lhs.true166, label %if.end207

land.lhs.true166:                                 ; preds = %lor.lhs.false162
  %77 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and168 = and i8 %77, 1
  %tobool169 = icmp eq i8 %and168, 0
  br i1 %tobool169, label %if.end207, label %if.then170

if.then170:                                       ; preds = %lor.lhs.false154, %lor.lhs.false146, %land.lhs.true166, %land.lhs.true142
  %78 = load %struct.xpvio** %sv_any132, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %78, i64 0, i32 7
  %79 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool172 = icmp eq %struct._PerlIO** %79, null
  br i1 %tobool172, label %if.else174, label %if.then173

if.then173:                                       ; preds = %if.then170
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %35, i32 -1) #6
  br label %if.end207

if.else174:                                       ; preds = %if.then170
  %80 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings175 = getelementptr inbounds %struct.cop* %80, i64 0, i32 14
  %81 = load %struct.sv** %cop_warnings175, align 8, !tbaa !0
  %cmp176 = icmp eq %struct.sv* %81, null
  br i1 %cmp176, label %lor.lhs.false194, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %if.else174
  %82 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings179 = getelementptr inbounds %struct.cop* %82, i64 0, i32 14
  %83 = load %struct.sv** %cop_warnings179, align 8, !tbaa !0
  %cmp180 = icmp eq %struct.sv* %83, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp180, label %lor.lhs.false194, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %84 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings183 = getelementptr inbounds %struct.cop* %84, i64 0, i32 14
  %85 = load %struct.sv** %cop_warnings183, align 8, !tbaa !0
  %cmp184 = icmp eq %struct.sv* %85, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp184, label %if.then202, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %land.lhs.true182
  %86 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings187 = getelementptr inbounds %struct.cop* %86, i64 0, i32 14
  %87 = load %struct.sv** %cop_warnings187, align 8, !tbaa !0
  %sv_any188 = getelementptr inbounds %struct.sv* %87, i64 0, i32 0
  %88 = load i8** %sv_any188, align 8, !tbaa !0
  %xpv_pv189 = bitcast i8* %88 to i8**
  %89 = load i8** %xpv_pv189, align 8, !tbaa !0
  %arrayidx190 = getelementptr inbounds i8* %89, i64 1
  %90 = load i8* %arrayidx190, align 1, !tbaa !1
  %and192 = and i8 %90, 16
  %tobool193 = icmp eq i8 %and192, 0
  br i1 %tobool193, label %lor.lhs.false194, label %if.then202

lor.lhs.false194:                                 ; preds = %lor.lhs.false186, %land.lhs.true178, %if.else174
  %91 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings195 = getelementptr inbounds %struct.cop* %91, i64 0, i32 14
  %92 = load %struct.sv** %cop_warnings195, align 8, !tbaa !0
  %cmp196 = icmp eq %struct.sv* %92, null
  br i1 %cmp196, label %land.lhs.true198, label %if.end207

land.lhs.true198:                                 ; preds = %lor.lhs.false194
  %93 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and200 = and i8 %93, 1
  %tobool201 = icmp eq i8 %and200, 0
  br i1 %tobool201, label %if.end207, label %if.then202

if.then202:                                       ; preds = %lor.lhs.false186, %land.lhs.true198, %land.lhs.true182
  %94 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type203 = getelementptr inbounds %struct.op* %94, i64 0, i32 4
  %95 = load i16* %op_type203, align 2, !tbaa !5
  %conv204 = zext i16 %95 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %35, i32 %conv204) #6
  br label %if.end207

if.end207:                                        ; preds = %land.lhs.true198, %land.lhs.true166, %if.then173, %if.then202, %lor.lhs.false194, %lor.lhs.false162
  %call208 = tail call i32* @__errno_location() #6
  store i32 9, i32* %call208, align 4, !tbaa !4
  br label %just_say_no

if.else209:                                       ; preds = %if.else131
  %sub.ptr.lhs.cast210 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast211 = ptrtoint %struct.sv** %mark.0 to i64
  %sub.ptr.sub212 = sub i64 %sub.ptr.lhs.cast210, %sub.ptr.rhs.cast211
  %sub.ptr.div213299 = lshr exact i64 %sub.ptr.sub212, 3
  %conv214 = trunc i64 %sub.ptr.div213299 to i32
  %add.ptr215 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  tail call void @Perl_do_sprintf(%struct.sv* %call76318, i32 %conv214, %struct.sv** %add.ptr215) #6
  %call216 = tail call signext i8 @Perl_do_print(%struct.sv* %call76318, %struct._PerlIO** %58) #6
  %tobool217 = icmp eq i8 %call216, 0
  br i1 %tobool217, label %just_say_no, label %if.end219

if.end219:                                        ; preds = %if.else209
  %96 = load %struct.xpvio** %sv_any132, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %96, i64 0, i32 22
  %97 = load i8* %xio_flags, align 1, !tbaa !1
  %and222 = and i8 %97, 4
  %tobool223 = icmp eq i8 %and222, 0
  br i1 %tobool223, label %if.end232, label %if.then224

if.then224:                                       ; preds = %if.end219
  %call225 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %58) #6
  %cmp226 = icmp eq i32 %call225, -1
  br i1 %cmp226, label %just_say_no, label %if.end232

if.end232:                                        ; preds = %if.end219, %if.then224
  tail call void @Perl_sv_free(%struct.sv* %call76318) #6
  %98 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr234.sum = add i64 %idx.ext, 1
  %incdec.ptr235 = getelementptr inbounds %struct.sv** %98, i64 %add.ptr234.sum
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr235, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr235, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %99 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next236 = getelementptr inbounds %struct.op* %99, i64 0, i32 0
  br label %return

just_say_no:                                      ; preds = %if.else209, %if.then224, %if.end207, %if.end129
  %call76311313 = phi %struct.sv* [ %call76318, %if.else209 ], [ %call76318, %if.then224 ], [ %call76318, %if.end207 ], [ %call76311314, %if.end129 ]
  tail call void @Perl_sv_free(%struct.sv* %call76311313) #6
  %100 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr238.sum = add i64 %idx.ext, 1
  %incdec.ptr239 = getelementptr inbounds %struct.sv** %100, i64 %add.ptr238.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr239, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr239, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %101 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next240 = getelementptr inbounds %struct.op* %101, i64 0, i32 0
  br label %return

return:                                           ; preds = %just_say_no, %if.end232, %cond.end69
  %retval.0.in = phi %struct.op** [ %op_next, %cond.end69 ], [ %op_next240, %just_say_no ], [ %op_next236, %if.end232 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare void @Perl_do_sprintf(%struct.sv*, i32, %struct.sv**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sysopen() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 12
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !4
  %and2 = and i32 %4, 65536
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv to i64*
  %7 = load i64* %6, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i64 @Perl_sv_2iv(%struct.sv* %3) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.end ], [ %0, %entry ]
  %perm.0 = phi i32 [ %conv3, %cond.end ], [ 438, %entry ]
  %incdec.ptr4 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  %8 = load %struct.sv** %sp.0, align 8, !tbaa !0
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags5 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags5, align 4, !tbaa !4
  %and6 = and i32 %9, 65536
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %cond.false11, label %cond.true8

cond.true8:                                       ; preds = %if.end
  %sv_any9 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %10 = load i8** %sv_any9, align 8, !tbaa !0
  %xiv_iv10 = getelementptr inbounds i8* %10, i64 24
  %11 = bitcast i8* %xiv_iv10 to i64*
  %12 = load i64* %11, align 8, !tbaa !3
  br label %cond.end13

cond.false11:                                     ; preds = %if.end
  %call12 = call i64 @Perl_sv_2iv(%struct.sv* %8) #6
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false11, %cond.true8
  %cond14 = phi i64 [ %12, %cond.true8 ], [ %call12, %cond.false11 ]
  %conv15 = trunc i64 %cond14 to i32
  %incdec.ptr16 = getelementptr inbounds %struct.sv** %sp.0, i64 -2
  %13 = load %struct.sv** %incdec.ptr4, align 8, !tbaa !0
  %14 = load %struct.sv** %incdec.ptr16, align 8, !tbaa !0
  %15 = bitcast %struct.sv* %14 to %struct.gv*
  %sv_flags18 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %16 = load i32* %sv_flags18, align 4, !tbaa !4
  %and19 = and i32 %16, 262144
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %cond.false25, label %cond.true22

cond.true22:                                      ; preds = %cond.end13
  %sv_any23 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %17 = load i8** %sv_any23, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %17, i64 8
  %18 = bitcast i8* %xpv_cur to i64*
  %19 = load i64* %18, align 8, !tbaa !3
  store i64 %19, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %17 to i8**
  %20 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end27

cond.false25:                                     ; preds = %cond.end13
  %call26 = call i8* @Perl_sv_2pv_flags(%struct.sv* %13, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !3
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true22
  %21 = phi i64 [ %19, %cond.true22 ], [ %.pre, %cond.false25 ]
  %cond28 = phi i8* [ %20, %cond.true22 ], [ %call26, %cond.false25 ]
  %conv29 = trunc i64 %21 to i32
  %call30 = call signext i8 @Perl_do_open(%struct.gv* %15, i8* %cond28, i32 %conv29, i32 1, i32 %conv15, i32 %perm.0, %struct._PerlIO** null) #6
  %tobool31 = icmp eq i8 %call30, 0
  br i1 %tobool31, label %if.end38, label %if.then32

if.then32:                                        ; preds = %cond.end27
  %sv_any33 = bitcast %struct.sv* %14 to %struct.xpvgv**
  %22 = load %struct.xpvgv** %sv_any33, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %23, i64 0, i32 2
  %24 = load %struct.io** %gp_io, align 8, !tbaa !0
  %sv_any34 = getelementptr inbounds %struct.io* %24, i64 0, i32 0
  %25 = load %struct.xpvio** %sv_any34, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds %struct.xpvio* %25, i64 0, i32 10
  store i64 0, i64* %xio_lines, align 8, !tbaa !3
  br label %if.end38

if.end38:                                         ; preds = %cond.end27, %if.then32
  %storemerge = phi %struct.sv* [ @PL_sv_yes, %if.then32 ], [ @PL_sv_undef, %cond.end27 ]
  store %struct.sv* %storemerge, %struct.sv** %incdec.ptr16, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %26, i64 0, i32 0
  %27 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %27
}

; Function Attrs: optsize
declare signext i8 @Perl_do_open(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare i8* @Perl_sv_pvutf8n_force(%struct.sv*, i64*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_utf8_hop(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_syswrite() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div21 = lshr exact i64 %sub.ptr.sub, 3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %conv22 = zext i32 %3 to i64
  %sub = sub nsw i64 %sub.ptr.div21, %conv22
  %conv1 = trunc i64 %sub to i32
  %cmp = icmp eq i32 %conv1, 2
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %4 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast3 = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.lhs.cast
  %cmp7 = icmp slt i64 %sub.ptr.sub5, 8
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %sp.0 = phi %struct.sv** [ %call, %if.then9 ], [ %0, %if.then ]
  %5 = load %struct.sv** %sp.0, align 8, !tbaa !0
  %call10 = tail call i64 @Perl_sv_len(%struct.sv* %5) #6
  %call11 = tail call %struct.sv* @Perl_newSViv(i64 %call10) #6
  %call12 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11) #6
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call12, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %call14 = tail call %struct.op* @Perl_pp_send() #7
  ret %struct.op* %call14
}

; Function Attrs: optsize
declare i64 @Perl_sv_len(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_send() #0 {
entry:
  %blen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %8 = load %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  %9 = bitcast %struct.sv* %8 to %struct.gv*
  %op_type = getelementptr inbounds %struct.op* %4, i64 0, i32 4
  %10 = load i16* %op_type, align 2, !tbaa !5
  %cmp = icmp eq i16 %10, 213
  %tobool = icmp ne %struct.sv* %8, null
  %or.cond357 = and i1 %cmp, %tobool
  br i1 %or.cond357, label %land.lhs.true7, label %if.end47

land.lhs.true7:                                   ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %11, 255
  %cmp8 = icmp eq i32 %and, 13
  br i1 %cmp8, label %land.lhs.true10, label %if.end47

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %sv_any = bitcast %struct.sv* %8 to %struct.xpvgv**
  %12 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.gp* %13, null
  br i1 %tobool11, label %if.end47, label %cond.end

cond.end:                                         ; preds = %land.lhs.true10
  %gp_io = getelementptr inbounds %struct.gp* %13, i64 0, i32 2
  %14 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool14 = icmp eq %struct.io* %14, null
  br i1 %tobool14, label %if.end47, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %cond.end
  %15 = bitcast %struct.io* %14 to %struct.sv*
  %16 = getelementptr inbounds %struct.io* %14, i64 0, i32 2
  %17 = load i32* %16, align 4, !tbaa !4
  %and17 = and i32 %17, 32768
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %if.end47, label %cond.end21

cond.end21:                                       ; preds = %land.lhs.true15
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %15, i32 113) #6
  %tobool23 = icmp eq %struct.magic* %call, null
  br i1 %tobool23, label %if.end47, label %if.then

if.then:                                          ; preds = %cond.end21
  %18 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr24 = getelementptr inbounds i32* %18, i64 1
  store i32* %incdec.ptr24, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %19 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp25 = icmp eq i32* %incdec.ptr24, %19
  br i1 %cmp25, label %if.then27, label %if.end

if.then27:                                        ; preds = %if.then
  call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then27, %if.then
  %20 = phi i32* [ %.pre, %if.then27 ], [ %incdec.ptr24, %if.then ]
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast30
  %sub.ptr.div32355 = lshr exact i64 %sub.ptr.sub31, 3
  %conv33 = trunc i64 %sub.ptr.div32355 to i32
  store i32 %conv33, i32* %20, align 4, !tbaa !4
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %22 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool34 = icmp eq %struct.sv* %22, null
  br i1 %tobool34, label %cond.false37, label %cond.end40

cond.false37:                                     ; preds = %if.end
  %call38 = call %struct.sv* @Perl_newRV(%struct.sv* %15) #6
  %call39 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call38) #6
  br label %cond.end40

cond.end40:                                       ; preds = %if.end, %cond.false37
  %cond41 = phi %struct.sv* [ %call39, %cond.false37 ], [ %22, %if.end ]
  store %struct.sv* %cond41, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  call void @Perl_push_scope() #6
  %call42 = call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i32 0) #6
  call void @Perl_pop_scope() #6
  %23 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load %struct.sv** %23, align 8, !tbaa !0
  %25 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr45.sum = add i64 %idx.ext, 1
  %incdec.ptr46 = getelementptr inbounds %struct.sv** %25, i64 %add.ptr45.sum
  store %struct.sv* %24, %struct.sv** %incdec.ptr46, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr46, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %26, i64 0, i32 0
  %27 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end47:                                         ; preds = %land.lhs.true15, %land.lhs.true7, %land.lhs.true10, %cond.end21, %cond.end, %entry
  br i1 %tobool, label %if.end50, label %say_undef

if.end50:                                         ; preds = %if.end47
  %incdec.ptr2.sum = add i64 %idx.ext, 2
  %incdec.ptr51 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr2.sum
  %28 = load %struct.sv** %incdec.ptr51, align 8, !tbaa !0
  %incdec.ptr51.sum = add i64 %idx.ext, 3
  %incdec.ptr52 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr51.sum
  %29 = load %struct.sv** %incdec.ptr52, align 8, !tbaa !0
  store %struct.sv* %29, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags53 = getelementptr inbounds %struct.sv* %29, i64 0, i32 2
  %30 = load i32* %sv_flags53, align 4, !tbaa !4
  %and54 = and i32 %30, 65536
  %tobool55 = icmp eq i32 %and54, 0
  br i1 %tobool55, label %cond.false58, label %cond.true56

cond.true56:                                      ; preds = %if.end50
  %sv_any57 = getelementptr inbounds %struct.sv* %29, i64 0, i32 0
  %31 = load i8** %sv_any57, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %31, i64 24
  %32 = bitcast i8* %xiv_iv to i64*
  %33 = load i64* %32, align 8, !tbaa !3
  br label %cond.end60

cond.false58:                                     ; preds = %if.end50
  %call59 = call i64 @Perl_sv_2iv(%struct.sv* %29) #6
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false58, %cond.true56
  %cond61 = phi i64 [ %33, %cond.true56 ], [ %call59, %cond.false58 ]
  %cmp62 = icmp slt i64 %cond61, 0
  br i1 %cmp62, label %if.then64, label %land.lhs.true69

if.then64:                                        ; preds = %cond.end60
  %call65 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([16 x i8]* @.str43, i64 0, i64 0)) #6
  br label %return

land.lhs.true69:                                  ; preds = %cond.end60
  %call67 = call i32* @__errno_location() #6
  store i32 0, i32* %call67, align 4, !tbaa !4
  %sv_flags70 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %34 = load i32* %sv_flags70, align 4, !tbaa !4
  %and71 = and i32 %34, 255
  %cmp72 = icmp eq i32 %and71, 13
  br i1 %cmp72, label %land.lhs.true74, label %if.then88

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %sv_any75 = bitcast %struct.sv* %8 to %struct.xpvgv**
  %35 = load %struct.xpvgv** %sv_any75, align 8, !tbaa !0
  %xgv_gp76 = getelementptr inbounds %struct.xpvgv* %35, i64 0, i32 7
  %36 = load %struct.gp** %xgv_gp76, align 8, !tbaa !0
  %tobool77 = icmp eq %struct.gp* %36, null
  br i1 %tobool77, label %if.then88, label %cond.end83

cond.end83:                                       ; preds = %land.lhs.true74
  %gp_io81 = getelementptr inbounds %struct.gp* %36, i64 0, i32 2
  %37 = load %struct.io** %gp_io81, align 8, !tbaa !0
  %tobool85 = icmp eq %struct.io* %37, null
  br i1 %tobool85, label %if.then88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end83
  %sv_any86 = getelementptr inbounds %struct.io* %37, i64 0, i32 0
  %38 = load %struct.xpvio** %sv_any86, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %38, i64 0, i32 7
  %39 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool87 = icmp eq %struct._PerlIO** %39, null
  br i1 %tobool87, label %if.then88, label %if.end119

if.then88:                                        ; preds = %land.lhs.true69, %land.lhs.true74, %lor.lhs.false, %cond.end83
  %cond84361 = phi %struct.io* [ %37, %lor.lhs.false ], [ null, %cond.end83 ], [ null, %land.lhs.true74 ], [ null, %land.lhs.true69 ]
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp89 = icmp eq %struct.sv* %41, null
  br i1 %cmp89, label %lor.lhs.false106, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then88
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings92 = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings92, align 8, !tbaa !0
  %cmp93 = icmp eq %struct.sv* %43, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp93, label %lor.lhs.false106, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %land.lhs.true91
  %44 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings96 = getelementptr inbounds %struct.cop* %44, i64 0, i32 14
  %45 = load %struct.sv** %cop_warnings96, align 8, !tbaa !0
  %cmp97 = icmp eq %struct.sv* %45, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp97, label %if.then114, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %land.lhs.true95
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings100 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings100, align 8, !tbaa !0
  %sv_any101 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %48 = load i8** %sv_any101, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %48 to i8**
  %49 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i8* %49, i64 1
  %50 = load i8* %arrayidx102, align 1, !tbaa !1
  %and104 = and i8 %50, 16
  %tobool105 = icmp eq i8 %and104, 0
  br i1 %tobool105, label %lor.lhs.false106, label %if.then114

lor.lhs.false106:                                 ; preds = %lor.lhs.false99, %land.lhs.true91, %if.then88
  %51 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings107 = getelementptr inbounds %struct.cop* %51, i64 0, i32 14
  %52 = load %struct.sv** %cop_warnings107, align 8, !tbaa !0
  %cmp108 = icmp eq %struct.sv* %52, null
  br i1 %cmp108, label %land.lhs.true110, label %if.end117

land.lhs.true110:                                 ; preds = %lor.lhs.false106
  %53 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and112 = and i8 %53, 1
  %tobool113 = icmp eq i8 %and112, 0
  br i1 %tobool113, label %if.end117, label %if.then114

if.then114:                                       ; preds = %lor.lhs.false99, %land.lhs.true110, %land.lhs.true95
  %54 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type115 = getelementptr inbounds %struct.op* %54, i64 0, i32 4
  %55 = load i16* %op_type115, align 2, !tbaa !5
  %conv116 = zext i16 %55 to i32
  call void @Perl_report_evil_fh(%struct.gv* %9, %struct.io* %cond84361, i32 %conv116) #6
  br label %if.end117

if.end117:                                        ; preds = %land.lhs.true110, %if.then114, %lor.lhs.false106
  %call118 = call i32* @__errno_location() #6
  store i32 9, i32* %call118, align 4, !tbaa !4
  br label %say_undef

if.end119:                                        ; preds = %lor.lhs.false
  %call122 = call i32 @PerlIO_isutf8(%struct._PerlIO** %39) #6
  %tobool123 = icmp eq i32 %call122, 0
  %sv_flags125 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %56 = load i32* %sv_flags125, align 4, !tbaa !4
  %and126 = and i32 %56, 536870912
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool123, label %if.else145, label %if.then124

if.then124:                                       ; preds = %if.end119
  br i1 %tobool127, label %if.else, label %if.then128

if.then128:                                       ; preds = %if.then124
  %call129 = call %struct.sv* @Perl_newSVsv(%struct.sv* %28) #6
  %call130 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call129) #6
  %call131 = call i8* @Perl_sv_2pvutf8(%struct.sv* %call130, i64* %blen) #6
  br label %if.end171

if.else:                                          ; preds = %if.then124
  %and133 = and i32 %56, 262144
  %cmp134 = icmp eq i32 %and133, 0
  br i1 %cmp134, label %cond.false140, label %cond.true136

cond.true136:                                     ; preds = %if.else
  %sv_any137 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %57 = load i8** %sv_any137, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %57, i64 8
  %58 = bitcast i8* %xpv_cur to i64*
  %59 = load i64* %58, align 8, !tbaa !3
  store i64 %59, i64* %blen, align 8, !tbaa !3
  %xpv_pv139 = bitcast i8* %57 to i8**
  %60 = load i8** %xpv_pv139, align 8, !tbaa !0
  br label %if.end171

cond.false140:                                    ; preds = %if.else
  %call141 = call i8* @Perl_sv_2pv_flags(%struct.sv* %28, i64* %blen, i32 2) #6
  br label %if.end171

if.else145:                                       ; preds = %if.end119
  br i1 %tobool127, label %land.lhs.true149, label %if.end157

land.lhs.true149:                                 ; preds = %if.else145
  %61 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %61, i64 0, i32 7
  %62 = load i8* %op_private, align 1, !tbaa !1
  %and151 = and i8 %62, 8
  %tobool152 = icmp eq i8 %and151, 0
  br i1 %tobool152, label %if.then153, label %if.end157

if.then153:                                       ; preds = %land.lhs.true149
  %call154 = call %struct.sv* @Perl_newSVsv(%struct.sv* %28) #6
  %call155 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call154) #6
  %call156 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %call155, i8 signext 0) #6
  br label %if.end157

if.end157:                                        ; preds = %land.lhs.true149, %if.then153, %if.else145
  %bufsv.0 = phi %struct.sv* [ %call155, %if.then153 ], [ %28, %if.else145 ], [ %28, %land.lhs.true149 ]
  %sv_flags158 = getelementptr inbounds %struct.sv* %bufsv.0, i64 0, i32 2
  %63 = load i32* %sv_flags158, align 4, !tbaa !4
  %and159 = and i32 %63, 262144
  %cmp160 = icmp eq i32 %and159, 0
  br i1 %cmp160, label %cond.false167, label %cond.true162

cond.true162:                                     ; preds = %if.end157
  %sv_any163 = getelementptr inbounds %struct.sv* %bufsv.0, i64 0, i32 0
  %64 = load i8** %sv_any163, align 8, !tbaa !0
  %xpv_cur164 = getelementptr inbounds i8* %64, i64 8
  %65 = bitcast i8* %xpv_cur164 to i64*
  %66 = load i64* %65, align 8, !tbaa !3
  store i64 %66, i64* %blen, align 8, !tbaa !3
  %xpv_pv166 = bitcast i8* %64 to i8**
  %67 = load i8** %xpv_pv166, align 8, !tbaa !0
  br label %if.end171

cond.false167:                                    ; preds = %if.end157
  %call168 = call i8* @Perl_sv_2pv_flags(%struct.sv* %bufsv.0, i64* %blen, i32 2) #6
  br label %if.end171

if.end171:                                        ; preds = %cond.true162, %cond.false167, %cond.true136, %cond.false140, %if.then128
  %bufsv.1 = phi %struct.sv* [ %call130, %if.then128 ], [ %28, %cond.false140 ], [ %28, %cond.true136 ], [ %bufsv.0, %cond.false167 ], [ %bufsv.0, %cond.true162 ]
  %buffer.0 = phi i8* [ %call131, %if.then128 ], [ %call141, %cond.false140 ], [ %60, %cond.true136 ], [ %call168, %cond.false167 ], [ %67, %cond.true162 ]
  %68 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type172 = getelementptr inbounds %struct.op* %68, i64 0, i32 4
  %69 = load i16* %op_type172, align 2, !tbaa !5
  %cmp174 = icmp eq i16 %69, 213
  br i1 %cmp174, label %if.then176, label %if.else251

if.then176:                                       ; preds = %if.end171
  %sv_flags177 = getelementptr inbounds %struct.sv* %bufsv.1, i64 0, i32 2
  %70 = load i32* %sv_flags177, align 4, !tbaa !4
  %and178 = and i32 %70, 536870912
  %tobool179 = icmp eq i32 %and178, 0
  br i1 %tobool179, label %if.end187, label %land.lhs.true180

land.lhs.true180:                                 ; preds = %if.then176
  %71 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private181 = getelementptr inbounds %struct.cop* %71, i64 0, i32 7
  %72 = load i8* %op_private181, align 1, !tbaa !1
  %and183 = and i8 %72, 8
  %tobool184 = icmp eq i8 %and183, 0
  br i1 %tobool184, label %if.then185, label %if.end187

if.then185:                                       ; preds = %land.lhs.true180
  %call186 = call i64 @Perl_sv_len_utf8(%struct.sv* %bufsv.1) #6
  store i64 %call186, i64* %blen, align 8, !tbaa !3
  br label %if.end187

if.end187:                                        ; preds = %land.lhs.true180, %if.then176, %if.then185
  %cmp188 = icmp ult %struct.sv** %incdec.ptr52, %0
  br i1 %cmp188, label %if.then190, label %if.end187.if.end221_crit_edge

if.end187.if.end221_crit_edge:                    ; preds = %if.end187
  %.pre362 = load i64* %blen, align 8, !tbaa !3
  br label %if.end221

if.then190:                                       ; preds = %if.end187
  %incdec.ptr52.sum = add i64 %idx.ext, 4
  %incdec.ptr191 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr52.sum
  %73 = load %struct.sv** %incdec.ptr191, align 8, !tbaa !0
  store %struct.sv* %73, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags192 = getelementptr inbounds %struct.sv* %73, i64 0, i32 2
  %74 = load i32* %sv_flags192, align 4, !tbaa !4
  %and193 = and i32 %74, 65536
  %tobool194 = icmp eq i32 %and193, 0
  br i1 %tobool194, label %cond.false198, label %cond.true195

cond.true195:                                     ; preds = %if.then190
  %sv_any196 = getelementptr inbounds %struct.sv* %73, i64 0, i32 0
  %75 = load i8** %sv_any196, align 8, !tbaa !0
  %xiv_iv197 = getelementptr inbounds i8* %75, i64 24
  %76 = bitcast i8* %xiv_iv197 to i64*
  %77 = load i64* %76, align 8, !tbaa !3
  br label %cond.end200

cond.false198:                                    ; preds = %if.then190
  %call199 = call i64 @Perl_sv_2iv(%struct.sv* %73) #6
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true195
  %cond201 = phi i64 [ %77, %cond.true195 ], [ %call199, %cond.false198 ]
  %cmp202 = icmp slt i64 %cond201, 0
  br i1 %cmp202, label %if.then204, label %if.else210

if.then204:                                       ; preds = %cond.end200
  %sub = sub nsw i64 0, %cond201
  %78 = load i64* %blen, align 8, !tbaa !3
  %cmp205 = icmp slt i64 %78, %sub
  br i1 %cmp205, label %if.then207, label %if.end209

if.then207:                                       ; preds = %if.then204
  %call208 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str45, i64 0, i64 0)) #6
  br label %return

if.end209:                                        ; preds = %if.then204
  %add = add i64 %78, %cond201
  br label %if.end221

if.else210:                                       ; preds = %cond.end200
  %79 = load i64* %blen, align 8, !tbaa !3
  %cmp211 = icmp sge i64 %cond201, %79
  %cmp214 = icmp ne i64 %79, 0
  %or.cond = and i1 %cmp211, %cmp214
  br i1 %or.cond, label %if.then216, label %if.end221

if.then216:                                       ; preds = %if.else210
  %call217 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str45, i64 0, i64 0)) #6
  br label %return

if.end221:                                        ; preds = %if.else210, %if.end187.if.end221_crit_edge, %if.end209
  %80 = phi i64 [ %78, %if.end209 ], [ %.pre362, %if.end187.if.end221_crit_edge ], [ %79, %if.else210 ]
  %offset.0 = phi i64 [ %add, %if.end209 ], [ 0, %if.end187.if.end221_crit_edge ], [ %cond201, %if.else210 ]
  %sub222 = sub i64 %80, %offset.0
  %cmp223 = icmp ugt i64 %cond61, %sub222
  %sub222.cond61 = select i1 %cmp223, i64 %sub222, i64 %cond61
  %81 = load i32* %sv_flags177, align 4, !tbaa !4
  %and229 = and i32 %81, 536870912
  %tobool230 = icmp eq i32 %and229, 0
  br i1 %tobool230, label %if.else244, label %land.lhs.true231

land.lhs.true231:                                 ; preds = %if.end221
  %82 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private232 = getelementptr inbounds %struct.cop* %82, i64 0, i32 7
  %83 = load i8* %op_private232, align 1, !tbaa !1
  %and234 = and i8 %83, 8
  %tobool235 = icmp eq i8 %and234, 0
  br i1 %tobool235, label %if.then236, label %if.else244

if.then236:                                       ; preds = %land.lhs.true231
  %conv237 = trunc i64 %offset.0 to i32
  %call238 = call i8* @Perl_utf8_hop(i8* %buffer.0, i32 %conv237) #6
  %conv239 = trunc i64 %sub222.cond61 to i32
  %call240 = call i8* @Perl_utf8_hop(i8* %call238, i32 %conv239) #6
  %sub.ptr.lhs.cast241 = ptrtoint i8* %call240 to i64
  %sub.ptr.rhs.cast242 = ptrtoint i8* %call238 to i64
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
  br label %if.end246

if.else244:                                       ; preds = %land.lhs.true231, %if.end221
  %add.ptr245 = getelementptr inbounds i8* %buffer.0, i64 %offset.0
  br label %if.end246

if.end246:                                        ; preds = %if.else244, %if.then236
  %buffer.1 = phi i8* [ %add.ptr245, %if.else244 ], [ %call238, %if.then236 ]
  %length.1 = phi i64 [ %sub222.cond61, %if.else244 ], [ %sub.ptr.sub243, %if.then236 ]
  %84 = load %struct.xpvio** %sv_any86, align 8, !tbaa !0
  %xio_ifp248 = getelementptr inbounds %struct.xpvio* %84, i64 0, i32 7
  %85 = load %struct._PerlIO*** %xio_ifp248, align 8, !tbaa !0
  %call249 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %85) #6
  %call250 = call i64 @write(i32 %call249, i8* %buffer.1, i64 %length.1) #6
  %cmp254 = icmp slt i64 %call250, 0
  br i1 %cmp254, label %say_undef, label %if.end257

if.else251:                                       ; preds = %if.end171
  %call252 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0)) #6
  br label %return

if.end257:                                        ; preds = %if.end246
  %86 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %87 = load i32* %sv_flags177, align 4, !tbaa !4
  %and261 = and i32 %87, 536870912
  %tobool262 = icmp eq i32 %and261, 0
  br i1 %tobool262, label %if.end271, label %land.lhs.true263

land.lhs.true263:                                 ; preds = %if.end257
  %88 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private264 = getelementptr inbounds %struct.cop* %88, i64 0, i32 7
  %89 = load i8* %op_private264, align 1, !tbaa !1
  %and266 = and i8 %89, 8
  %tobool267 = icmp eq i8 %and266, 0
  br i1 %tobool267, label %if.then268, label %if.end271

if.then268:                                       ; preds = %land.lhs.true263
  %add.ptr269 = getelementptr inbounds i8* %buffer.1, i64 %call250
  %call270 = call i64 @Perl_utf8_length(i8* %buffer.1, i8* %add.ptr269) #6
  br label %if.end271

if.end271:                                        ; preds = %land.lhs.true263, %if.end257, %if.then268
  %retval1.0 = phi i64 [ %call250, %land.lhs.true263 ], [ %call270, %if.then268 ], [ %call250, %if.end257 ]
  call void @Perl_sv_setiv(%struct.sv* %7, i64 %retval1.0) #6
  %sv_flags272 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %90 = load i32* %sv_flags272, align 4, !tbaa !4
  %and273 = and i32 %90, 16384
  %tobool274 = icmp eq i32 %and273, 0
  br i1 %tobool274, label %if.end277, label %if.then275

if.then275:                                       ; preds = %if.end271
  %call276 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end277

if.end277:                                        ; preds = %if.end271, %if.then275
  %add.ptr259.sum = add i64 %idx.ext, 1
  %incdec.ptr278 = getelementptr inbounds %struct.sv** %86, i64 %add.ptr259.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr278, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr278, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %91 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next279 = getelementptr inbounds %struct.op* %91, i64 0, i32 0
  %92 = load %struct.op** %op_next279, align 8, !tbaa !0
  br label %return

say_undef:                                        ; preds = %if.end246, %if.end47, %if.end117
  %93 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr281.sum = add i64 %idx.ext, 1
  %incdec.ptr282 = getelementptr inbounds %struct.sv** %93, i64 %add.ptr281.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr282, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr282, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %94 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next283 = getelementptr inbounds %struct.op* %94, i64 0, i32 0
  %95 = load %struct.op** %op_next283, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %say_undef, %if.end277, %if.else251, %if.then216, %if.then207, %if.then64, %cond.end40
  %retval.0 = phi %struct.op* [ %27, %cond.end40 ], [ %call65, %if.then64 ], [ %call208, %if.then207 ], [ %95, %say_undef ], [ %92, %if.end277 ], [ %call217, %if.then216 ], [ %call252, %if.else251 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pvutf8(%struct.sv*, i64*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #1

; Function Attrs: optsize
declare i64 @Perl_utf8_length(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_recv() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_sysread() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_eof() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else71

if.then:                                          ; preds = %entry
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %3 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %3, 0
  br i1 %tobool, label %if.then4, label %if.else69

if.then4:                                         ; preds = %if.then
  %4 = load %struct.gv** @PL_argvgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %4, i64 0, i32 0
  %5 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %6, i64 0, i32 6
  %7 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  store %struct.gv* %7, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.gv* %7, null
  br i1 %tobool6, label %lor.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then4
  %8 = getelementptr inbounds %struct.gv* %7, i64 0, i32 2
  %9 = load i32* %8, align 4, !tbaa !4
  %and7 = and i32 %9, 255
  %cmp8 = icmp eq i32 %and7, 13
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true77

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sv_any11 = getelementptr inbounds %struct.gv* %7, i64 0, i32 0
  %10 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !0
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 7
  %11 = load %struct.gp** %xgv_gp12, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.gp* %11, null
  br i1 %tobool13, label %if.end73, label %cond.end

cond.end:                                         ; preds = %land.lhs.true10
  %gp_io = getelementptr inbounds %struct.gp* %11, i64 0, i32 2
  %12 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.io* %12, null
  br i1 %tobool16, label %if.end73, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %cond.end
  %sv_any18 = getelementptr inbounds %struct.io* %12, i64 0, i32 0
  %13 = load %struct.xpvio** %sv_any18, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 7
  %14 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool19 = icmp eq %struct._PerlIO** %14, null
  br i1 %tobool19, label %if.then20, label %if.end73

if.then20:                                        ; preds = %land.lhs.true17
  %xio_flags = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 22
  %15 = load i8* %xio_flags, align 1, !tbaa !1
  %and23 = and i8 %15, 2
  %tobool24 = icmp eq i8 %and23, 0
  br i1 %tobool24, label %if.else, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.then20
  %gp_av = getelementptr inbounds %struct.gp* %11, i64 0, i32 4
  %16 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.av* %16, null
  br i1 %tobool28, label %cond.false33, label %cond.end37

cond.false33:                                     ; preds = %land.lhs.true25
  %call = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %7) #6
  %sv_any34 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %17 = load %struct.xpvgv** %sv_any34, align 8, !tbaa !0
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv* %17, i64 0, i32 7
  %18 = load %struct.gp** %xgv_gp35, align 8, !tbaa !0
  %gp_av36 = getelementptr inbounds %struct.gp* %18, i64 0, i32 4
  %19 = load %struct.av** %gp_av36, align 8, !tbaa !0
  br label %cond.end37

cond.end37:                                       ; preds = %land.lhs.true25, %cond.false33
  %cond38 = phi %struct.av* [ %19, %cond.false33 ], [ %16, %land.lhs.true25 ]
  %call39 = tail call i32 @Perl_av_len(%struct.av* %cond38) #6
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %cond.end37
  %20 = load %struct.xpvio** %sv_any18, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds %struct.xpvio* %20, i64 0, i32 10
  store i64 0, i64* %xio_lines, align 8, !tbaa !3
  %xio_flags45 = getelementptr inbounds %struct.xpvio* %20, i64 0, i32 22
  %21 = load i8* %xio_flags45, align 1, !tbaa !1
  %and47 = and i8 %21, -3
  store i8 %and47, i8* %xio_flags45, align 1, !tbaa !1
  %call49 = tail call signext i8 @Perl_do_open(%struct.gv* %7, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0), i32 1, i32 0, i32 0, i32 0, %struct._PerlIO** null) #6
  %22 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !0
  %xgv_gp51 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp51, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %23, i64 0, i32 0
  %24 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_setpvn(%struct.sv* %24, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0), i64 1) #6
  %25 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !0
  %xgv_gp53 = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 7
  %26 = load %struct.gp** %xgv_gp53, align 8, !tbaa !0
  %gp_sv54 = getelementptr inbounds %struct.gp* %26, i64 0, i32 0
  %27 = load %struct.sv** %gp_sv54, align 8, !tbaa !0
  %sv_flags55 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags55, align 4, !tbaa !4
  %and56 = and i32 %28, 16384
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %if.end73, label %if.then58

if.then58:                                        ; preds = %if.then42
  %call62 = tail call i32 @Perl_mg_set(%struct.sv* %27) #6
  br label %if.end73

if.else:                                          ; preds = %if.then20, %cond.end37
  %call63 = tail call %struct._PerlIO** @Perl_nextargv(%struct.gv* %7) #6
  %tobool64 = icmp eq %struct._PerlIO** %call63, null
  br i1 %tobool64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %if.else
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %29, i64 0, i32 0
  br label %return

if.else69:                                        ; preds = %if.then
  %30 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end73

if.else71:                                        ; preds = %entry
  %incdec.ptr72 = getelementptr inbounds %struct.sv** %0, i64 -1
  %31 = load %struct.sv** %0, align 8, !tbaa !0
  %32 = bitcast %struct.sv* %31 to %struct.gv*
  store %struct.gv* %32, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true10, %if.then42, %if.else, %land.lhs.true17, %cond.end, %if.else69, %if.then58, %if.else71
  %gv.0 = phi %struct.gv* [ %7, %land.lhs.true17 ], [ %7, %if.then58 ], [ %7, %if.then42 ], [ %7, %if.else ], [ %7, %cond.end ], [ %30, %if.else69 ], [ %32, %if.else71 ], [ %7, %land.lhs.true10 ]
  %sp.0 = phi %struct.sv** [ %0, %land.lhs.true17 ], [ %0, %if.then58 ], [ %0, %if.then42 ], [ %0, %if.else ], [ %0, %cond.end ], [ %0, %if.else69 ], [ %incdec.ptr72, %if.else71 ], [ %0, %land.lhs.true10 ]
  %tobool74 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool74, label %lor.end, label %if.end73.land.lhs.true77_crit_edge

if.end73.land.lhs.true77_crit_edge:               ; preds = %if.end73
  %.phi.trans.insert = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %.pre187 = load i32* %.phi.trans.insert, align 4, !tbaa !4
  br label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.end73.land.lhs.true77_crit_edge, %land.lhs.true
  %33 = phi i32 [ %.pre187, %if.end73.land.lhs.true77_crit_edge ], [ %9, %land.lhs.true ]
  %sp.0182 = phi %struct.sv** [ %sp.0, %if.end73.land.lhs.true77_crit_edge ], [ %0, %land.lhs.true ]
  %gv.0181 = phi %struct.gv* [ %gv.0, %if.end73.land.lhs.true77_crit_edge ], [ %7, %land.lhs.true ]
  %and79 = and i32 %33, 255
  %cmp80 = icmp eq i32 %and79, 13
  br i1 %cmp80, label %land.lhs.true82, label %lor.rhs

land.lhs.true82:                                  ; preds = %land.lhs.true77
  %sv_any83 = getelementptr inbounds %struct.gv* %gv.0181, i64 0, i32 0
  %34 = load %struct.xpvgv** %sv_any83, align 8, !tbaa !0
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  %35 = load %struct.gp** %xgv_gp84, align 8, !tbaa !0
  %tobool85 = icmp eq %struct.gp* %35, null
  br i1 %tobool85, label %lor.rhs, label %cond.end91

cond.end91:                                       ; preds = %land.lhs.true82
  %gp_io89 = getelementptr inbounds %struct.gp* %35, i64 0, i32 2
  %36 = load %struct.io** %gp_io89, align 8, !tbaa !0
  %tobool93 = icmp eq %struct.io* %36, null
  br i1 %tobool93, label %lor.rhs, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %cond.end91
  %37 = bitcast %struct.io* %36 to %struct.sv*
  %38 = getelementptr inbounds %struct.io* %36, i64 0, i32 2
  %39 = load i32* %38, align 4, !tbaa !4
  %and96 = and i32 %39, 32768
  %tobool97 = icmp eq i32 %and96, 0
  br i1 %tobool97, label %lor.rhs, label %cond.end101

cond.end101:                                      ; preds = %land.lhs.true94
  %call99 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %37, i32 113) #6
  %tobool103 = icmp eq %struct.magic* %call99, null
  br i1 %tobool103, label %lor.rhs, label %if.then104

if.then104:                                       ; preds = %cond.end101
  %40 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr105 = getelementptr inbounds i32* %40, i64 1
  store i32* %incdec.ptr105, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %41 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp106 = icmp eq i32* %incdec.ptr105, %41
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.then104
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.then104
  %42 = phi i32* [ %.pre, %if.then108 ], [ %incdec.ptr105, %if.then104 ]
  %43 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0182 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div174 = lshr exact i64 %sub.ptr.sub, 3
  %conv110 = trunc i64 %sub.ptr.div174 to i32
  store i32 %conv110, i32* %42, align 4, !tbaa !4
  %44 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast111 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.lhs.cast
  %cmp115 = icmp slt i64 %sub.ptr.sub113, 8
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end109
  %call118 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0182, %struct.sv** %sp.0182, i32 1) #6
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end109
  %sp.1 = phi %struct.sv** [ %call118, %if.then117 ], [ %sp.0182, %if.end109 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call99, i64 0, i32 5
  %45 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool120 = icmp eq %struct.sv* %45, null
  br i1 %tobool120, label %cond.false123, label %cond.end126

cond.false123:                                    ; preds = %if.end119
  %call124 = tail call %struct.sv* @Perl_newRV(%struct.sv* %37) #6
  %call125 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call124) #6
  br label %cond.end126

cond.end126:                                      ; preds = %if.end119, %cond.false123
  %cond127 = phi %struct.sv* [ %call125, %cond.false123 ], [ %45, %if.end119 ]
  %incdec.ptr128 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %cond127, %struct.sv** %incdec.ptr128, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr128, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call129 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8]* @.str49, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  %46 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next130 = getelementptr inbounds %struct.op* %46, i64 0, i32 0
  br label %return

lor.rhs:                                          ; preds = %cond.end91, %cond.end101, %land.lhs.true82, %land.lhs.true77, %land.lhs.true94
  %call133 = tail call signext i8 @Perl_do_eof(%struct.gv* %gv.0181) #6
  %tobool135 = icmp ne i8 %call133, 0
  %phitmp = select i1 %tobool135, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  br label %lor.end

lor.end:                                          ; preds = %if.end73, %if.then4, %lor.rhs
  %sp.0183 = phi %struct.sv** [ %sp.0182, %lor.rhs ], [ %sp.0, %if.end73 ], [ %0, %if.then4 ]
  %47 = phi %struct.sv* [ %phitmp, %lor.rhs ], [ @PL_sv_yes, %if.end73 ], [ @PL_sv_yes, %if.then4 ]
  %incdec.ptr137 = getelementptr inbounds %struct.sv** %sp.0183, i64 1
  store %struct.sv* %47, %struct.sv** %incdec.ptr137, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr137, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %48 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next138 = getelementptr inbounds %struct.op* %48, i64 0, i32 0
  br label %return

return:                                           ; preds = %lor.end, %cond.end126, %if.then65
  %retval.0.in = phi %struct.op** [ %op_next130, %cond.end126 ], [ %op_next138, %lor.end ], [ %op_next, %if.then65 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_nextargv(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_tell() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %7 = load %struct.sv** %0, align 8, !tbaa !0
  %8 = bitcast %struct.sv* %7 to %struct.gv*
  store %struct.gv* %8, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gv.0 = phi %struct.gv* [ %6, %if.then ], [ %8, %if.else ]
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %if.else ]
  %tobool = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool, label %if.end47, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %9 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !4
  %and4 = and i32 %10, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true7, label %if.end47

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %sv_any = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.gp* %12, null
  br i1 %tobool8, label %if.end47, label %cond.end

cond.end:                                         ; preds = %land.lhs.true7
  %gp_io = getelementptr inbounds %struct.gp* %12, i64 0, i32 2
  %13 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.io* %13, null
  br i1 %tobool11, label %if.end47, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %cond.end
  %14 = bitcast %struct.io* %13 to %struct.sv*
  %15 = getelementptr inbounds %struct.io* %13, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !4
  %and14 = and i32 %16, 32768
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end47, label %cond.end18

cond.end18:                                       ; preds = %land.lhs.true12
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %14, i32 113) #6
  %tobool20 = icmp eq %struct.magic* %call, null
  br i1 %tobool20, label %if.end47, label %if.then21

if.then21:                                        ; preds = %cond.end18
  %17 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr22 = getelementptr inbounds i32* %17, i64 1
  store i32* %incdec.ptr22, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %18 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp23 = icmp eq i32* %incdec.ptr22, %18
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then21
  %19 = phi i32* [ %.pre, %if.then25 ], [ %incdec.ptr22, %if.then21 ]
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div77 = lshr exact i64 %sub.ptr.sub, 3
  %conv27 = trunc i64 %sub.ptr.div77 to i32
  store i32 %conv27, i32* %19, align 4, !tbaa !4
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.lhs.cast
  %cmp32 = icmp slt i64 %sub.ptr.sub30, 8
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end26
  %call35 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end26
  %sp.1 = phi %struct.sv** [ %call35, %if.then34 ], [ %sp.0, %if.end26 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %22 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool37 = icmp eq %struct.sv* %22, null
  br i1 %tobool37, label %cond.false40, label %cond.end43

cond.false40:                                     ; preds = %if.end36
  %call41 = tail call %struct.sv* @Perl_newRV(%struct.sv* %14) #6
  %call42 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call41) #6
  br label %cond.end43

cond.end43:                                       ; preds = %if.end36, %cond.false40
  %cond44 = phi %struct.sv* [ %call42, %cond.false40 ], [ %22, %if.end36 ]
  %incdec.ptr45 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %cond44, %struct.sv** %incdec.ptr45, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr45, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call46 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  br label %return

if.end47:                                         ; preds = %if.end, %land.lhs.true12, %land.lhs.true3, %land.lhs.true7, %cond.end18, %cond.end
  %call48 = tail call i64 @Perl_do_tell(%struct.gv* %gv.0) #6
  tail call void @Perl_sv_setiv(%struct.sv* %4, i64 %call48) #6
  %sv_flags49 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %23 = load i32* %sv_flags49, align 4, !tbaa !4
  %and50 = and i32 %23, 16384
  %tobool51 = icmp eq i32 %and50, 0
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end47
  %call53 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end54

if.end54:                                         ; preds = %if.end47, %if.then52
  %incdec.ptr55 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr55, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr55, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end54, %cond.end43
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_do_tell(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_seek() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_sysseek() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sysseek() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %2, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  %5 = load i64* %4, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %1) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %0, i64 -2
  %6 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags2 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags2, align 4, !tbaa !4
  %and3 = and i32 %7, 65536
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %cond.false8, label %cond.true5

cond.true5:                                       ; preds = %cond.end
  %sv_any6 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any6, align 8, !tbaa !0
  %xiv_iv7 = getelementptr inbounds i8* %8, i64 24
  %9 = bitcast i8* %xiv_iv7 to i64*
  %10 = load i64* %9, align 8, !tbaa !3
  br label %cond.end10

cond.false8:                                      ; preds = %cond.end
  %call9 = tail call i64 @Perl_sv_2iv(%struct.sv* %6) #6
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true5
  %cond11 = phi i64 [ %10, %cond.true5 ], [ %call9, %cond.false8 ]
  %incdec.ptr12 = getelementptr inbounds %struct.sv** %0, i64 -3
  %11 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  store %struct.gv* %12, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.sv* %11, null
  br i1 %tobool13, label %if.end88, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %cond.end10
  %sv_flags16 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %13 = load i32* %sv_flags16, align 4, !tbaa !4
  %and17 = and i32 %13, 255
  %cmp = icmp eq i32 %and17, 13
  br i1 %cmp, label %land.lhs.true19, label %if.end88

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %sv_any20 = bitcast %struct.sv* %11 to %struct.xpvgv**
  %14 = load %struct.xpvgv** %sv_any20, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %14, i64 0, i32 7
  %15 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.gp* %15, null
  br i1 %tobool21, label %if.end88, label %cond.end26

cond.end26:                                       ; preds = %land.lhs.true19
  %gp_io = getelementptr inbounds %struct.gp* %15, i64 0, i32 2
  %16 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.io* %16, null
  br i1 %tobool28, label %if.end88, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %cond.end26
  %17 = bitcast %struct.io* %16 to %struct.sv*
  %18 = getelementptr inbounds %struct.io* %16, i64 0, i32 2
  %19 = load i32* %18, align 4, !tbaa !4
  %and31 = and i32 %19, 32768
  %tobool32 = icmp eq i32 %and31, 0
  br i1 %tobool32, label %if.end88, label %cond.end36

cond.end36:                                       ; preds = %land.lhs.true29
  %call34 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %17, i32 113) #6
  %tobool38 = icmp eq %struct.magic* %call34, null
  br i1 %tobool38, label %if.end88, label %if.then

if.then:                                          ; preds = %cond.end36
  %20 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr39 = getelementptr inbounds i32* %20, i64 1
  store i32* %incdec.ptr39, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %21 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp40 = icmp eq i32* %incdec.ptr39, %21
  br i1 %cmp40, label %if.then42, label %if.end

if.then42:                                        ; preds = %if.then
  tail call void @Perl_markstack_grow() #6
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then42, %if.then
  %22 = phi i32* [ %.pre, %if.then42 ], [ %incdec.ptr39, %if.then ]
  %23 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %incdec.ptr12 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div149 = lshr exact i64 %sub.ptr.sub, 3
  %conv43 = trunc i64 %sub.ptr.div149 to i32
  store i32 %conv43, i32* %22, align 4, !tbaa !4
  %24 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast44 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.lhs.cast
  %cmp48 = icmp slt i64 %sub.ptr.sub46, 8
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end
  %call51 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr12, %struct.sv** %incdec.ptr12, i32 1) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end
  %sp.0 = phi %struct.sv** [ %call51, %if.then50 ], [ %incdec.ptr12, %if.end ]
  %mg_obj = getelementptr inbounds %struct.magic* %call34, i64 0, i32 5
  %25 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool53 = icmp eq %struct.sv* %25, null
  br i1 %tobool53, label %cond.false56, label %cond.end59

cond.false56:                                     ; preds = %if.end52
  %call57 = tail call %struct.sv* @Perl_newRV(%struct.sv* %17) #6
  %call58 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call57) #6
  br label %cond.end59

cond.end59:                                       ; preds = %if.end52, %cond.false56
  %cond60 = phi %struct.sv* [ %call58, %cond.false56 ], [ %25, %if.end52 ]
  %incdec.ptr61 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond60, %struct.sv** %incdec.ptr61, align 8, !tbaa !0
  %26 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast62 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.rhs.cast63 = ptrtoint %struct.sv** %incdec.ptr61 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %cmp66 = icmp slt i64 %sub.ptr.sub64, 8
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %cond.end59
  %call69 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr61, %struct.sv** %incdec.ptr61, i32 1) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %cond.end59
  %sp.1 = phi %struct.sv** [ %call69, %if.then68 ], [ %incdec.ptr61, %cond.end59 ]
  %call71 = tail call %struct.sv* @Perl_newSViv(i64 %cond11) #6
  %call72 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call71) #6
  %incdec.ptr73 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call72, %struct.sv** %incdec.ptr73, align 8, !tbaa !0
  %27 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast74 = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.rhs.cast75 = ptrtoint %struct.sv** %incdec.ptr73 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  %cmp78 = icmp slt i64 %sub.ptr.sub76, 8
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end70
  %call81 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr73, %struct.sv** %incdec.ptr73, i32 1) #6
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end70
  %sp.2 = phi %struct.sv** [ %call81, %if.then80 ], [ %incdec.ptr73, %if.end70 ]
  %sext = shl i64 %cond, 32
  %conv83 = ashr exact i64 %sext, 32
  %call84 = tail call %struct.sv* @Perl_newSViv(i64 %conv83) #6
  %call85 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call84) #6
  %incdec.ptr86 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call85, %struct.sv** %incdec.ptr86, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr86, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call87 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i32 0) #6
  tail call void @Perl_pop_scope() #6
  br label %return

if.end88:                                         ; preds = %cond.end10, %land.lhs.true29, %land.lhs.true15, %land.lhs.true19, %cond.end36, %cond.end26
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %28, i64 0, i32 4
  %29 = load i16* %op_type, align 2, !tbaa !5
  %cmp90 = icmp eq i16 %29, 218
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end88
  %call93 = tail call signext i8 @Perl_do_seek(%struct.gv* %12, i64 %cond11, i32 %conv) #6
  %tobool95 = icmp ne i8 %call93, 0
  %cond96 = select i1 %tobool95, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond96, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  br label %if.end114

if.else:                                          ; preds = %if.end88
  %call98 = tail call i64 @Perl_do_sysseek(%struct.gv* %12, i64 %cond11, i32 %conv) #6
  %cmp99 = icmp slt i64 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.else
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  br label %if.end114

if.else103:                                       ; preds = %if.else
  %tobool104 = icmp eq i64 %call98, 0
  br i1 %tobool104, label %cond.false107, label %cond.true105

cond.true105:                                     ; preds = %if.else103
  %call106 = tail call %struct.sv* @Perl_newSViv(i64 %call98) #6
  br label %cond.end109

cond.false107:                                    ; preds = %if.else103
  %call108 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8]* @zero_but_true, i64 0, i64 0), i64 10) #6
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false107, %cond.true105
  %cond110 = phi %struct.sv* [ %call106, %cond.true105 ], [ %call108, %cond.false107 ]
  %call111 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %cond110) #6
  store %struct.sv* %call111, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  br label %if.end114

if.end114:                                        ; preds = %if.then101, %cond.end109, %if.then92
  store %struct.sv** %incdec.ptr1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end114, %if.end82
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_do_seek(%struct.gv*, i64, i32) #1

; Function Attrs: optsize
declare i64 @Perl_do_sysseek(%struct.gv*, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_truncate() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %2, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  %5 = load i64* %4, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @Perl_sv_2iv(%struct.sv* %1) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  %call1 = call i32* @__errno_location() #6
  store i32 0, i32* %call1, align 4, !tbaa !4
  %6 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %6, i64 0, i32 6
  %7 = load i8* %op_flags, align 1, !tbaa !1
  %tobool3 = icmp slt i8 %7, 0
  %8 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br i1 %tobool3, label %if.then, label %if.else48

if.then:                                          ; preds = %cond.end
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags5 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags5, align 4, !tbaa !4
  %and6 = and i32 %9, 262144
  %cmp = icmp eq i32 %and6, 0
  br i1 %cmp, label %cond.false11, label %cond.true8

cond.true8:                                       ; preds = %if.then
  %sv_any9 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %10 = load i8** %sv_any9, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur to i64*
  %12 = load i64* %11, align 8, !tbaa !3
  store i64 %12, i64* %n_a, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %10 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end13

cond.false11:                                     ; preds = %if.then
  %call12 = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %n_a, i32 2) #6
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false11, %cond.true8
  %cond14 = phi i8* [ %13, %cond.true8 ], [ %call12, %cond.false11 ]
  %call15 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond14, i32 0, i32 15) #6
  br label %do_ftruncate_gv

do_ftruncate_gv:                                  ; preds = %if.then65, %if.then54, %cond.end13
  %tmpgv.0 = phi %struct.gv* [ %call15, %cond.end13 ], [ %23, %if.then54 ], [ %27, %if.then65 ]
  %tobool16 = icmp eq %struct.gv* %tmpgv.0, null
  br i1 %tobool16, label %if.end110, label %land.lhs.true

land.lhs.true:                                    ; preds = %do_ftruncate_gv
  %14 = getelementptr inbounds %struct.gv* %tmpgv.0, i64 0, i32 2
  %15 = load i32* %14, align 4, !tbaa !4
  %and18 = and i32 %15, 255
  %cmp19 = icmp eq i32 %and18, 13
  br i1 %cmp19, label %land.lhs.true21, label %if.end110

land.lhs.true21:                                  ; preds = %land.lhs.true
  %sv_any22 = getelementptr inbounds %struct.gv* %tmpgv.0, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any22, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool23 = icmp eq %struct.gp* %17, null
  br i1 %tobool23, label %if.end110, label %cond.true24

cond.true24:                                      ; preds = %land.lhs.true21
  %gp_io = getelementptr inbounds %struct.gp* %17, i64 0, i32 2
  %18 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool27 = icmp eq %struct.io* %18, null
  br i1 %tobool27, label %if.end110, label %do_ftruncate_io

do_ftruncate_io:                                  ; preds = %cond.true24, %if.then79
  %io.0 = phi %struct.io* [ %31, %if.then79 ], [ %18, %cond.true24 ]
  %19 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool33 = icmp eq i8 %19, 0
  br i1 %tobool33, label %if.end, label %if.then34

if.then34:                                        ; preds = %do_ftruncate_io
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([9 x i8]* @.str52, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %do_ftruncate_io, %if.then34
  %sv_any35 = getelementptr inbounds %struct.io* %io.0, i64 0, i32 0
  %20 = load %struct.xpvio** %sv_any35, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %20, i64 0, i32 7
  %21 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool36 = icmp eq %struct._PerlIO** %21, null
  br i1 %tobool36, label %if.end110, label %if.else38

if.else38:                                        ; preds = %if.end
  %call39 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %21) #6
  %call40 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %21) #6
  %call41 = call i32 @ftruncate(i32 %call40, i64 %cond) #6
  br label %if.end106

if.else48:                                        ; preds = %cond.end
  %sv_flags50 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %22 = load i32* %sv_flags50, align 4, !tbaa !4
  %and51 = and i32 %22, 255
  %cmp52 = icmp eq i32 %and51, 13
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else48
  %23 = bitcast %struct.sv* %8 to %struct.gv*
  br label %do_ftruncate_gv

if.else55:                                        ; preds = %if.else48
  %and57 = and i32 %22, 524288
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %if.end84, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.else55
  %sv_any60 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %24 = load i8** %sv_any60, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %24 to %struct.sv**
  %25 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags61 = getelementptr inbounds %struct.sv* %25, i64 0, i32 2
  %26 = load i32* %sv_flags61, align 4, !tbaa !4
  %and62 = and i32 %26, 255
  %cmp63 = icmp eq i32 %and62, 13
  br i1 %cmp63, label %if.then65, label %land.lhs.true72

if.then65:                                        ; preds = %land.lhs.true59
  %27 = bitcast %struct.sv* %25 to %struct.gv*
  br label %do_ftruncate_gv

land.lhs.true72:                                  ; preds = %land.lhs.true59
  %sv_any73 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %28 = load i8** %sv_any73, align 8, !tbaa !0
  %xrv_rv74 = bitcast i8* %28 to %struct.sv**
  %29 = load %struct.sv** %xrv_rv74, align 8, !tbaa !0
  %sv_flags75 = getelementptr inbounds %struct.sv* %29, i64 0, i32 2
  %30 = load i32* %sv_flags75, align 4, !tbaa !4
  %and76 = and i32 %30, 255
  %cmp77 = icmp eq i32 %and76, 15
  br i1 %cmp77, label %if.then79, label %if.end84

if.then79:                                        ; preds = %land.lhs.true72
  %31 = bitcast %struct.sv* %29 to %struct.io*
  br label %do_ftruncate_io

if.end84:                                         ; preds = %if.else55, %land.lhs.true72
  %and86 = and i32 %22, 262144
  %cmp87 = icmp eq i32 %and86, 0
  br i1 %cmp87, label %cond.false94, label %cond.true89

cond.true89:                                      ; preds = %if.end84
  %sv_any90 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %32 = load i8** %sv_any90, align 8, !tbaa !0
  %xpv_cur91 = getelementptr inbounds i8* %32, i64 8
  %33 = bitcast i8* %xpv_cur91 to i64*
  %34 = load i64* %33, align 8, !tbaa !3
  store i64 %34, i64* %n_a, align 8, !tbaa !3
  %xpv_pv93 = bitcast i8* %32 to i8**
  %35 = load i8** %xpv_pv93, align 8, !tbaa !0
  br label %cond.end96

cond.false94:                                     ; preds = %if.end84
  %call95 = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %n_a, i32 2) #6
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false94, %cond.true89
  %cond97 = phi i8* [ %35, %cond.true89 ], [ %call95, %cond.false94 ]
  %36 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool98 = icmp eq i8 %36, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %cond.end96
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([9 x i8]* @.str52, i64 0, i64 0)) #6
  br label %if.end100

if.end100:                                        ; preds = %cond.end96, %if.then99
  %call101 = call i32 @truncate(i8* %cond97, i64 %cond) #6
  br label %if.end106

if.end106:                                        ; preds = %if.end100, %if.else38
  %call101.sink = phi i32 [ %call101, %if.end100 ], [ %call41, %if.else38 ]
  %not.cmp102 = icmp sgt i32 %call101.sink, -1
  br i1 %not.cmp102, label %return, label %if.end110

if.end110:                                        ; preds = %if.end, %land.lhs.true, %do_ftruncate_gv, %land.lhs.true21, %cond.true24, %if.end106
  %call111 = call i32* @__errno_location() #6
  %37 = load i32* %call111, align 4, !tbaa !4
  %tobool112 = icmp eq i32 %37, 0
  br i1 %tobool112, label %if.then113, label %return

if.then113:                                       ; preds = %if.end110
  %call114 = call i32* @__errno_location() #6
  store i32 9, i32* %call114, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.then113, %if.end110, %if.end106
  %storemerge = phi %struct.sv* [ @PL_sv_yes, %if.end106 ], [ @PL_sv_undef, %if.end110 ], [ @PL_sv_undef, %if.then113 ]
  store %struct.sv* %storemerge, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @ftruncate(i32, i64) #1

; Function Attrs: optsize
declare i32 @truncate(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fcntl() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_ioctl() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ioctl() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %0, i64 -2
  %6 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %7, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %8, i64 24
  %9 = bitcast i8* %xuv_uv to i64*
  %10 = load i64* %9, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @Perl_sv_2uv(%struct.sv* %6) #6
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = phi %struct.op* [ %1, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i64 [ %10, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  %op_type = getelementptr inbounds %struct.op* %11, i64 0, i32 4
  %12 = load i16* %op_type, align 2, !tbaa !5
  %13 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  %14 = bitcast %struct.sv* %13 to %struct.gv*
  %tobool5 = icmp eq %struct.sv* %13, null
  br i1 %tobool5, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %sv_flags8 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %15 = load i32* %sv_flags8, align 4, !tbaa !4
  %and9 = and i32 %15, 255
  %cmp = icmp eq i32 %and9, 13
  br i1 %cmp, label %land.lhs.true11, label %cond.false23

land.lhs.true11:                                  ; preds = %land.lhs.true
  %sv_any12 = bitcast %struct.sv* %13 to %struct.xpvgv**
  %16 = load %struct.xpvgv** %sv_any12, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.gp* %17, null
  br i1 %tobool13, label %cond.false23, label %cond.true14

cond.true14:                                      ; preds = %land.lhs.true11
  %gp_io = getelementptr inbounds %struct.gp* %17, i64 0, i32 2
  %18 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.io* %18, null
  br i1 %tobool17, label %cond.false23, label %cond.end31

cond.false23:                                     ; preds = %cond.true14, %land.lhs.true11, %land.lhs.true
  %call24 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %14) #6
  %sv_any25 = getelementptr inbounds %struct.gv* %call24, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any25, align 8, !tbaa !0
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp26, align 8, !tbaa !0
  %gp_io27 = getelementptr inbounds %struct.gp* %20, i64 0, i32 2
  %21 = load %struct.io** %gp_io27, align 8, !tbaa !0
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true14, %cond.false23
  %cond32 = phi %struct.io* [ %21, %cond.false23 ], [ %18, %cond.true14 ]
  %tobool33 = icmp eq %struct.io* %cond32, null
  %tobool34 = icmp eq %struct.sv* %5, null
  %or.cond = or i1 %tobool33, %tobool34
  br i1 %or.cond, label %if.then, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %cond.end31
  %sv_any36 = getelementptr inbounds %struct.io* %cond32, i64 0, i32 0
  %22 = load %struct.xpvio** %sv_any36, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %22, i64 0, i32 7
  %23 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool37 = icmp eq %struct._PerlIO** %23, null
  br i1 %tobool37, label %if.then, label %if.end76

if.then:                                          ; preds = %cond.end, %lor.lhs.false35, %cond.end31
  %cond32255 = phi %struct.io* [ %cond32, %lor.lhs.false35 ], [ %cond32, %cond.end31 ], [ null, %cond.end ]
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp38 = icmp eq %struct.sv* %25, null
  br i1 %cmp38, label %lor.lhs.false63, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.then
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings41 = getelementptr inbounds %struct.cop* %26, i64 0, i32 14
  %27 = load %struct.sv** %cop_warnings41, align 8, !tbaa !0
  %cmp42 = icmp eq %struct.sv* %27, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp42, label %lor.lhs.false63, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %28 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings45 = getelementptr inbounds %struct.cop* %28, i64 0, i32 14
  %29 = load %struct.sv** %cop_warnings45, align 8, !tbaa !0
  %cmp46 = icmp eq %struct.sv* %29, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp46, label %if.then71, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %land.lhs.true44
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings49 = getelementptr inbounds %struct.cop* %30, i64 0, i32 14
  %31 = load %struct.sv** %cop_warnings49, align 8, !tbaa !0
  %sv_any50 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %32 = load i8** %sv_any50, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %32 to i8**
  %33 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8* %33, i64 2
  %34 = load i8* %arrayidx51, align 1, !tbaa !1
  %and53 = and i8 %34, 64
  %tobool54 = icmp eq i8 %and53, 0
  br i1 %tobool54, label %lor.lhs.false55, label %if.then71

lor.lhs.false55:                                  ; preds = %lor.lhs.false48
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings56 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings56, align 8, !tbaa !0
  %sv_any57 = getelementptr inbounds %struct.sv* %36, i64 0, i32 0
  %37 = load i8** %sv_any57, align 8, !tbaa !0
  %xpv_pv58 = bitcast i8* %37 to i8**
  %38 = load i8** %xpv_pv58, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i8* %38, i64 1
  %39 = load i8* %arrayidx59, align 1, !tbaa !1
  %and61 = and i8 %39, 16
  %tobool62 = icmp eq i8 %and61, 0
  br i1 %tobool62, label %lor.lhs.false63, label %if.then71

lor.lhs.false63:                                  ; preds = %lor.lhs.false55, %land.lhs.true40, %if.then
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings64 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings64, align 8, !tbaa !0
  %cmp65 = icmp eq %struct.sv* %41, null
  br i1 %cmp65, label %land.lhs.true67, label %if.end

land.lhs.true67:                                  ; preds = %lor.lhs.false63
  %42 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and69 = and i8 %42, 1
  %tobool70 = icmp eq i8 %and69, 0
  br i1 %tobool70, label %if.end, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false55, %lor.lhs.false48, %land.lhs.true67, %land.lhs.true44
  %43 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type72 = getelementptr inbounds %struct.op* %43, i64 0, i32 4
  %44 = load i16* %op_type72, align 2, !tbaa !5
  %conv73 = zext i16 %44 to i32
  call void @Perl_report_evil_fh(%struct.gv* %14, %struct.io* %cond32255, i32 %conv73) #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true67, %if.then71, %lor.lhs.false63
  %call74 = call i32* @__errno_location() #6
  store i32 9, i32* %call74, align 4, !tbaa !4
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %45 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %45, i64 0, i32 0
  %46 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end76:                                         ; preds = %lor.lhs.false35
  %sv_flags77 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %47 = load i32* %sv_flags77, align 4, !tbaa !4
  %and78 = and i32 %47, 262144
  %tobool79 = icmp ne i32 %and78, 0
  %and82 = and i32 %47, 196608
  %tobool83 = icmp eq i32 %and82, 0
  %or.cond251 = or i1 %tobool79, %tobool83
  br i1 %or.cond251, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end76
  %and86 = and i32 %47, 10223616
  %cmp87 = icmp eq i32 %and86, 262144
  br i1 %cmp87, label %cond.true89, label %cond.false93

cond.true89:                                      ; preds = %if.then84
  %sv_any90 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %48 = load i8** %sv_any90, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %48, i64 8
  %49 = bitcast i8* %xpv_cur to i64*
  %50 = load i64* %49, align 8, !tbaa !3
  store i64 %50, i64* %len, align 8, !tbaa !3
  %xpv_pv92 = bitcast i8* %48 to i8**
  %51 = load i8** %xpv_pv92, align 8, !tbaa !0
  br label %cond.end95

cond.false93:                                     ; preds = %if.then84
  %call94 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %5, i64* %len, i32 2) #6
  %.pr = load i64* %len, align 8, !tbaa !3
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false93, %cond.true89
  %52 = phi i64 [ %.pr, %cond.false93 ], [ %50, %cond.true89 ]
  %cond96 = phi i8* [ %call94, %cond.false93 ], [ %51, %cond.true89 ]
  %cmp97 = icmp ult i64 %52, 256
  br i1 %cmp97, label %if.then99, label %cond.end95.if.end103_crit_edge

cond.end95.if.end103_crit_edge:                   ; preds = %cond.end95
  %sv_any104.phi.trans.insert = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %.pre256 = load i8** %sv_any104.phi.trans.insert, align 8, !tbaa !0
  %xpv_cur105.phi.trans.insert = getelementptr inbounds i8* %.pre256, i64 8
  %.phi.trans.insert = bitcast i8* %xpv_cur105.phi.trans.insert to i64*
  %.pre257 = load i64* %.phi.trans.insert, align 8, !tbaa !3
  br label %if.end103

if.then99:                                        ; preds = %cond.end95
  %call100 = call i8* @Perl_sv_grow(%struct.sv* %5, i64 257) #6
  %sv_any101 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %53 = load i8** %sv_any101, align 8, !tbaa !0
  %xpv_cur102 = getelementptr inbounds i8* %53, i64 8
  %54 = bitcast i8* %xpv_cur102 to i64*
  store i64 256, i64* %54, align 8, !tbaa !3
  br label %if.end103

if.end103:                                        ; preds = %cond.end95.if.end103_crit_edge, %if.then99
  %55 = phi i64 [ 256, %if.then99 ], [ %.pre257, %cond.end95.if.end103_crit_edge ]
  %s.0 = phi i8* [ %call100, %if.then99 ], [ %cond96, %cond.end95.if.end103_crit_edge ]
  %arrayidx106 = getelementptr inbounds i8* %s.0, i64 %55
  store i8 17, i8* %arrayidx106, align 1, !tbaa !1
  br label %if.end116

if.else:                                          ; preds = %if.end76
  %and108 = and i32 %47, 65536
  %tobool109 = icmp eq i32 %and108, 0
  br i1 %tobool109, label %cond.false112, label %cond.true110

cond.true110:                                     ; preds = %if.else
  %sv_any111 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %56 = load i8** %sv_any111, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %56, i64 24
  %57 = bitcast i8* %xiv_iv to i64*
  %58 = load i64* %57, align 8, !tbaa !3
  br label %cond.end114

cond.false112:                                    ; preds = %if.else
  %call113 = call i64 @Perl_sv_2iv(%struct.sv* %5) #6
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false112, %cond.true110
  %cond115 = phi i64 [ %58, %cond.true110 ], [ %call113, %cond.false112 ]
  %59 = inttoptr i64 %cond115 to i8*
  br label %if.end116

if.end116:                                        ; preds = %cond.end114, %if.end103
  %s.1 = phi i8* [ %s.0, %if.end103 ], [ %59, %cond.end114 ]
  %60 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool117 = icmp eq i8 %60, 0
  br i1 %tobool117, label %if.end122, label %if.then118

if.then118:                                       ; preds = %if.end116
  %cmp119 = icmp eq i16 %12, 221
  %cond121 = select i1 %cmp119, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0)
  call void @Perl_taint_proper(i8* null, i8* %cond121) #6
  br label %if.end122

if.end122:                                        ; preds = %if.end116, %if.then118
  %cmp123 = icmp eq i16 %12, 221
  %61 = load %struct.xpvio** %sv_any36, align 8, !tbaa !0
  %xio_ifp127 = getelementptr inbounds %struct.xpvio* %61, i64 0, i32 7
  %62 = load %struct._PerlIO*** %xio_ifp127, align 8, !tbaa !0
  %call128 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %62) #6
  br i1 %cmp123, label %if.then125, label %if.else132

if.then125:                                       ; preds = %if.end122
  %conv129 = and i64 %cond, 4294967295
  %call130 = call i32 (i32, i64, ...)* @ioctl(i32 %call128, i64 %conv129, i8* %s.1) #6
  br label %if.end138

if.else132:                                       ; preds = %if.end122
  %call136 = call i32 (i32, i32, ...)* @fcntl(i32 %call128, i32 %conv, i8* %s.1) #6
  br label %if.end138

if.end138:                                        ; preds = %if.else132, %if.then125
  %retval3.0.in = phi i32 [ %call130, %if.then125 ], [ %call136, %if.else132 ]
  %retval3.0 = sext i32 %retval3.0.in to i64
  %63 = load i32* %sv_flags77, align 4, !tbaa !4
  %and140 = and i32 %63, 262144
  %tobool141 = icmp eq i32 %and140, 0
  br i1 %tobool141, label %if.end172, label %if.then142

if.then142:                                       ; preds = %if.end138
  %sv_any143 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %64 = load i8** %sv_any143, align 8, !tbaa !0
  %xpv_cur144 = getelementptr inbounds i8* %64, i64 8
  %65 = bitcast i8* %xpv_cur144 to i64*
  %66 = load i64* %65, align 8, !tbaa !3
  %arrayidx145 = getelementptr inbounds i8* %s.1, i64 %66
  %67 = load i8* %arrayidx145, align 1, !tbaa !1
  %cmp147 = icmp eq i8 %67, 17
  br i1 %cmp147, label %if.end162, label %if.then149

if.then149:                                       ; preds = %if.then142
  %68 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type150 = getelementptr inbounds %struct.op* %68, i64 0, i32 4
  %69 = load i16* %op_type150, align 2, !tbaa !5
  %cmp152 = icmp eq i16 %69, 351
  br i1 %cmp152, label %cond.true154, label %cond.false156

cond.true154:                                     ; preds = %if.then149
  %call155 = call i8* @Perl_custom_op_name(%struct.op* %68) #6
  br label %cond.end159

cond.false156:                                    ; preds = %if.then149
  %idxprom = zext i16 %69 to i64
  %arrayidx158 = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %idxprom
  %70 = load i8** %arrayidx158, align 8, !tbaa !0
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false156, %cond.true154
  %cond160 = phi i8* [ %call155, %cond.true154 ], [ %70, %cond.false156 ]
  %call161 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([55 x i8]* @.str55, i64 0, i64 0), i8* %cond160) #6
  br label %return

if.end162:                                        ; preds = %if.then142
  store i8 0, i8* %arrayidx145, align 1, !tbaa !1
  %71 = load i32* %sv_flags77, align 4, !tbaa !4
  %and167 = and i32 %71, 16384
  %tobool168 = icmp eq i32 %and167, 0
  br i1 %tobool168, label %if.end172, label %if.then169

if.then169:                                       ; preds = %if.end162
  %call170 = call i32 @Perl_mg_set(%struct.sv* %5) #6
  br label %if.end172

if.end172:                                        ; preds = %if.end162, %if.end138, %if.then169
  switch i32 %retval3.0.in, label %if.then181 [
    i32 -1, label %if.then175
    i32 0, label %if.else189
  ]

if.then175:                                       ; preds = %if.end172
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %72 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next177 = getelementptr inbounds %struct.op* %72, i64 0, i32 0
  %73 = load %struct.op** %op_next177, align 8, !tbaa !0
  br label %return

if.then181:                                       ; preds = %if.end172
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %retval3.0) #6
  %sv_flags182 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %74 = load i32* %sv_flags182, align 4, !tbaa !4
  %and183 = and i32 %74, 16384
  %tobool184 = icmp eq i32 %and183, 0
  br i1 %tobool184, label %if.end197, label %if.then185

if.then185:                                       ; preds = %if.then181
  %call186 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end197

if.else189:                                       ; preds = %if.end172
  call void @Perl_sv_setpvn(%struct.sv* %4, i8* getelementptr inbounds ([11 x i8]* @zero_but_true, i64 0, i64 0), i64 10) #6
  %sv_flags190 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %75 = load i32* %sv_flags190, align 4, !tbaa !4
  %and191 = and i32 %75, 16384
  %tobool192 = icmp eq i32 %and191, 0
  br i1 %tobool192, label %if.end197, label %if.then193

if.then193:                                       ; preds = %if.else189
  %call194 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end197

if.end197:                                        ; preds = %if.then193, %if.else189, %if.then185, %if.then181
  store %struct.sv* %4, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %76 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next198 = getelementptr inbounds %struct.op* %76, i64 0, i32 0
  %77 = load %struct.op** %op_next198, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end197, %if.then175, %cond.end159, %if.end
  %retval.0 = phi %struct.op* [ %call161, %cond.end159 ], [ %73, %if.then175 ], [ %77, %if.end197 ], [ %46, %if.end ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_sv_2uv(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: optsize
declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: optsize
declare i8* @Perl_custom_op_name(%struct.op*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_flock() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str56, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_socket() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str57, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sockpair() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_bind() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_connect() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_listen() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str61, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_accept() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_shutdown() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str63, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gsockopt() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str64, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ssockopt() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str65, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getsockname() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str66, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getpeername() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str67, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_lstat() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_stat() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_stat() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 16
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.else159, label %if.then

if.then:                                          ; preds = %entry
  %op_sv = getelementptr inbounds %struct.op* %1, i64 1
  %3 = bitcast %struct.op* %op_sv to %struct.sv**
  %4 = load %struct.sv** %3, align 8, !tbaa !0
  %5 = bitcast %struct.sv* %4 to %struct.gv*
  %op_type = getelementptr inbounds %struct.op* %1, i64 0, i32 4
  %6 = load i16* %op_type, align 2, !tbaa !5
  %cmp = icmp eq i16 %6, 234
  br i1 %cmp, label %if.then3, label %do_fstat

if.then3:                                         ; preds = %if.then
  %7 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %cmp4 = icmp eq %struct.gv* %5, %7
  br i1 %cmp4, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp7 = icmp eq %struct.sv* %9, null
  br i1 %cmp7, label %lor.lhs.false20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings9 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings9, align 8, !tbaa !0
  %cmp10 = icmp eq %struct.sv* %11, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp10, label %lor.lhs.false20, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings13 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings13, align 8, !tbaa !0
  %cmp14 = icmp eq %struct.sv* %13, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp14, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings16 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings16, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %16 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %16 to i8**
  %17 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %17, i64 1
  %18 = load i8* %arrayidx, align 1, !tbaa !1
  %and18 = and i8 %18, 4
  %tobool19 = icmp eq i8 %and18, 0
  br i1 %tobool19, label %lor.lhs.false20, label %if.then28

lor.lhs.false20:                                  ; preds = %lor.lhs.false, %land.lhs.true, %if.then6
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings21 = getelementptr inbounds %struct.cop* %19, i64 0, i32 14
  %20 = load %struct.sv** %cop_warnings21, align 8, !tbaa !0
  %cmp22 = icmp eq %struct.sv* %20, null
  br i1 %cmp22, label %land.lhs.true24, label %do_fstat

land.lhs.true24:                                  ; preds = %lor.lhs.false20
  %21 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and26 = and i8 %21, 1
  %tobool27 = icmp eq i8 %and26, 0
  br i1 %tobool27, label %do_fstat, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false, %land.lhs.true24, %land.lhs.true12
  %sv_any29 = bitcast %struct.sv* %4 to %struct.xpvgv**
  %22 = load %struct.xpvgv** %sv_any29, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %23, i64 0, i32 6
  %24 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  %tobool30 = icmp eq %struct.gv* %24, null
  %. = select i1 %tobool30, %struct.gv* %5, %struct.gv* %24
  %sv_any34 = getelementptr inbounds %struct.gv* %., i64 0, i32 0
  %25 = load %struct.xpvgv** %sv_any34, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 8
  %26 = load i8** %xgv_name, align 8, !tbaa !0
  call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([25 x i8]* @.str68, i64 0, i64 0), i8* %26) #6
  br label %do_fstat

if.else:                                          ; preds = %if.then3
  %27 = load i32* @PL_laststype, align 4, !tbaa !4
  %cmp35 = icmp eq i32 %27, 234
  br i1 %cmp35, label %do_fstat, label %if.then37

if.then37:                                        ; preds = %if.else
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str69, i64 0, i64 0)) #6
  br label %do_fstat

do_fstat:                                         ; preds = %land.lhs.true206, %lor.lhs.false202, %if.then175, %land.lhs.true24, %lor.lhs.false20, %if.then, %if.else, %if.then210, %if.then37, %if.then28, %if.then164
  %gv.0 = phi %struct.gv* [ %5, %if.then28 ], [ %5, %if.then37 ], [ %5, %if.else ], [ %66, %if.then164 ], [ %70, %if.then210 ], [ %5, %if.then ], [ %5, %lor.lhs.false20 ], [ %5, %land.lhs.true24 ], [ %70, %if.then175 ], [ %70, %lor.lhs.false202 ], [ %70, %land.lhs.true206 ]
  %sp.0 = phi %struct.sv** [ %0, %if.then28 ], [ %0, %if.then37 ], [ %0, %if.else ], [ %incdec.ptr, %if.then164 ], [ %incdec.ptr, %if.then210 ], [ %0, %if.then ], [ %0, %lor.lhs.false20 ], [ %0, %land.lhs.true24 ], [ %incdec.ptr, %if.then175 ], [ %incdec.ptr, %lor.lhs.false202 ], [ %incdec.ptr, %land.lhs.true206 ]
  %28 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %cmp41 = icmp eq %struct.gv* %gv.0, %28
  br i1 %cmp41, label %if.end98thread-pre-split, label %if.then43

if.then43:                                        ; preds = %do_fstat
  store i32 235, i32* @PL_laststype, align 4, !tbaa !4
  store %struct.gv* %gv.0, %struct.gv** @PL_statgv, align 8, !tbaa !0
  %29 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %29, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #6
  %tobool44 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool44, label %cond.end96, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.then43
  %30 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %31 = load i32* %30, align 4, !tbaa !4
  %and46 = and i32 %31, 255
  %cmp47 = icmp eq i32 %and46, 13
  br i1 %cmp47, label %land.lhs.true49, label %cond.end96

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %sv_any50 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %32 = load %struct.xpvgv** %sv_any50, align 8, !tbaa !0
  %xgv_gp51 = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 7
  %33 = load %struct.gp** %xgv_gp51, align 8, !tbaa !0
  %tobool52 = icmp eq %struct.gp* %33, null
  br i1 %tobool52, label %cond.end96, label %cond.true53

cond.true53:                                      ; preds = %land.lhs.true49
  %gp_io = getelementptr inbounds %struct.gp* %33, i64 0, i32 2
  %34 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool56 = icmp eq %struct.io* %34, null
  br i1 %tobool56, label %cond.end96, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %cond.true53
  %sv_any62 = getelementptr inbounds %struct.io* %34, i64 0, i32 0
  %35 = load %struct.xpvio** %sv_any62, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %35, i64 0, i32 7
  %36 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool63 = icmp eq %struct._PerlIO** %36, null
  br i1 %tobool63, label %cond.end96, label %cond.end89

cond.end89:                                       ; preds = %land.lhs.true58
  %call93 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %36) #6
  %call94 = call i32 @fstat(i32 %call93, %struct.stat* @PL_statcache) #6
  br label %cond.end96

cond.end96:                                       ; preds = %cond.true53, %land.lhs.true49, %if.then43, %land.lhs.true58, %land.lhs.true45, %cond.end89
  %cond97 = phi i32 [ %call94, %cond.end89 ], [ -1, %if.then43 ], [ -1, %land.lhs.true45 ], [ -1, %land.lhs.true49 ], [ -1, %land.lhs.true58 ], [ -1, %cond.true53 ]
  store i32 %cond97, i32* @PL_laststatval, align 4, !tbaa !4
  br label %if.end98

if.end98thread-pre-split:                         ; preds = %do_fstat
  %.pr = load i32* @PL_laststatval, align 4, !tbaa !4
  br label %if.end98

if.end98:                                         ; preds = %if.end98thread-pre-split, %cond.end96
  %37 = phi i32 [ %.pr, %if.end98thread-pre-split ], [ %cond97, %cond.end96 ]
  %cmp99 = icmp slt i32 %37, 0
  br i1 %cmp99, label %if.then101, label %if.end325

if.then101:                                       ; preds = %if.end98
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings102 = getelementptr inbounds %struct.cop* %38, i64 0, i32 14
  %39 = load %struct.sv** %cop_warnings102, align 8, !tbaa !0
  %cmp103 = icmp eq %struct.sv* %39, null
  br i1 %cmp103, label %lor.lhs.false129, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.then101
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings106 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings106, align 8, !tbaa !0
  %cmp107 = icmp eq %struct.sv* %41, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp107, label %lor.lhs.false129, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %land.lhs.true105
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings110 = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings110, align 8, !tbaa !0
  %cmp111 = icmp eq %struct.sv* %43, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp111, label %if.then137, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %land.lhs.true109
  %44 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings114 = getelementptr inbounds %struct.cop* %44, i64 0, i32 14
  %45 = load %struct.sv** %cop_warnings114, align 8, !tbaa !0
  %sv_any115 = getelementptr inbounds %struct.sv* %45, i64 0, i32 0
  %46 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_pv116 = bitcast i8* %46 to i8**
  %47 = load i8** %xpv_pv116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i8* %47, i64 2
  %48 = load i8* %arrayidx117, align 1, !tbaa !1
  %and119 = and i8 %48, 64
  %tobool120 = icmp eq i8 %and119, 0
  br i1 %tobool120, label %lor.lhs.false121, label %if.then137

lor.lhs.false121:                                 ; preds = %lor.lhs.false113
  %49 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings122 = getelementptr inbounds %struct.cop* %49, i64 0, i32 14
  %50 = load %struct.sv** %cop_warnings122, align 8, !tbaa !0
  %sv_any123 = getelementptr inbounds %struct.sv* %50, i64 0, i32 0
  %51 = load i8** %sv_any123, align 8, !tbaa !0
  %xpv_pv124 = bitcast i8* %51 to i8**
  %52 = load i8** %xpv_pv124, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i8* %52, i64 1
  %53 = load i8* %arrayidx125, align 1, !tbaa !1
  %and127 = and i8 %53, 16
  %tobool128 = icmp eq i8 %and127, 0
  br i1 %tobool128, label %lor.lhs.false129, label %if.then137

lor.lhs.false129:                                 ; preds = %lor.lhs.false121, %land.lhs.true105, %if.then101
  %54 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings130 = getelementptr inbounds %struct.cop* %54, i64 0, i32 14
  %55 = load %struct.sv** %cop_warnings130, align 8, !tbaa !0
  %cmp131 = icmp eq %struct.sv* %55, null
  br i1 %cmp131, label %land.lhs.true133, label %if.end325

land.lhs.true133:                                 ; preds = %lor.lhs.false129
  %56 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and135 = and i8 %56, 1
  %tobool136 = icmp eq i8 %and135, 0
  br i1 %tobool136, label %if.end325, label %if.then137

if.then137:                                       ; preds = %lor.lhs.false121, %lor.lhs.false113, %land.lhs.true133, %land.lhs.true109
  %tobool138 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool138, label %cond.end153, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.then137
  %57 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %58 = load i32* %57, align 4, !tbaa !4
  %and141 = and i32 %58, 255
  %cmp142 = icmp eq i32 %and141, 13
  br i1 %cmp142, label %land.lhs.true144, label %cond.end153

land.lhs.true144:                                 ; preds = %land.lhs.true139
  %sv_any145 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %59 = load %struct.xpvgv** %sv_any145, align 8, !tbaa !0
  %xgv_gp146 = getelementptr inbounds %struct.xpvgv* %59, i64 0, i32 7
  %60 = load %struct.gp** %xgv_gp146, align 8, !tbaa !0
  %tobool147 = icmp eq %struct.gp* %60, null
  br i1 %tobool147, label %cond.end153, label %cond.true148

cond.true148:                                     ; preds = %land.lhs.true144
  %gp_io151 = getelementptr inbounds %struct.gp* %60, i64 0, i32 2
  %61 = load %struct.io** %gp_io151, align 8, !tbaa !0
  br label %cond.end153

cond.end153:                                      ; preds = %land.lhs.true144, %if.then137, %land.lhs.true139, %cond.true148
  %cond154 = phi %struct.io* [ %61, %cond.true148 ], [ null, %land.lhs.true144 ], [ null, %land.lhs.true139 ], [ null, %if.then137 ]
  %62 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type155 = getelementptr inbounds %struct.op* %62, i64 0, i32 4
  %63 = load i16* %op_type155, align 2, !tbaa !5
  %conv156 = zext i16 %63 to i32
  call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %cond154, i32 %conv156) #6
  br label %if.end325

if.else159:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %64 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags160 = getelementptr inbounds %struct.sv* %64, i64 0, i32 2
  %65 = load i32* %sv_flags160, align 4, !tbaa !4
  %and161 = and i32 %65, 255
  %cmp162 = icmp eq i32 %and161, 13
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else159
  %66 = bitcast %struct.sv* %64 to %struct.gv*
  br label %do_fstat

if.else165:                                       ; preds = %if.else159
  %and167 = and i32 %65, 524288
  %tobool168 = icmp eq i32 %and167, 0
  br i1 %tobool168, label %if.end226, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %if.else165
  %sv_any170 = getelementptr inbounds %struct.sv* %64, i64 0, i32 0
  %67 = load i8** %sv_any170, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %67 to %struct.sv**
  %68 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags171 = getelementptr inbounds %struct.sv* %68, i64 0, i32 2
  %69 = load i32* %sv_flags171, align 4, !tbaa !4
  %and172 = and i32 %69, 255
  %cmp173 = icmp eq i32 %and172, 13
  br i1 %cmp173, label %if.then175, label %if.end226

if.then175:                                       ; preds = %land.lhs.true169
  %70 = bitcast %struct.sv* %68 to %struct.gv*
  %op_type178 = getelementptr inbounds %struct.op* %1, i64 0, i32 4
  %71 = load i16* %op_type178, align 2, !tbaa !5
  %cmp180 = icmp eq i16 %71, 234
  br i1 %cmp180, label %land.lhs.true182, label %do_fstat

land.lhs.true182:                                 ; preds = %if.then175
  %72 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings183 = getelementptr inbounds %struct.cop* %72, i64 0, i32 14
  %73 = load %struct.sv** %cop_warnings183, align 8, !tbaa !0
  %cmp184 = icmp eq %struct.sv* %73, null
  br i1 %cmp184, label %lor.lhs.false202, label %land.lhs.true186

land.lhs.true186:                                 ; preds = %land.lhs.true182
  %74 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings187 = getelementptr inbounds %struct.cop* %74, i64 0, i32 14
  %75 = load %struct.sv** %cop_warnings187, align 8, !tbaa !0
  %cmp188 = icmp eq %struct.sv* %75, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp188, label %lor.lhs.false202, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %land.lhs.true186
  %76 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings191 = getelementptr inbounds %struct.cop* %76, i64 0, i32 14
  %77 = load %struct.sv** %cop_warnings191, align 8, !tbaa !0
  %cmp192 = icmp eq %struct.sv* %77, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp192, label %if.then210, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %land.lhs.true190
  %78 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings195 = getelementptr inbounds %struct.cop* %78, i64 0, i32 14
  %79 = load %struct.sv** %cop_warnings195, align 8, !tbaa !0
  %sv_any196 = getelementptr inbounds %struct.sv* %79, i64 0, i32 0
  %80 = load i8** %sv_any196, align 8, !tbaa !0
  %xpv_pv197 = bitcast i8* %80 to i8**
  %81 = load i8** %xpv_pv197, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds i8* %81, i64 1
  %82 = load i8* %arrayidx198, align 1, !tbaa !1
  %and200 = and i8 %82, 4
  %tobool201 = icmp eq i8 %and200, 0
  br i1 %tobool201, label %lor.lhs.false202, label %if.then210

lor.lhs.false202:                                 ; preds = %lor.lhs.false194, %land.lhs.true186, %land.lhs.true182
  %83 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings203 = getelementptr inbounds %struct.cop* %83, i64 0, i32 14
  %84 = load %struct.sv** %cop_warnings203, align 8, !tbaa !0
  %cmp204 = icmp eq %struct.sv* %84, null
  br i1 %cmp204, label %land.lhs.true206, label %do_fstat

land.lhs.true206:                                 ; preds = %lor.lhs.false202
  %85 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and208 = and i8 %85, 1
  %tobool209 = icmp eq i8 %and208, 0
  br i1 %tobool209, label %do_fstat, label %if.then210

if.then210:                                       ; preds = %lor.lhs.false194, %land.lhs.true206, %land.lhs.true190
  %sv_any211 = bitcast %struct.sv* %68 to %struct.xpvgv**
  %86 = load %struct.xpvgv** %sv_any211, align 8, !tbaa !0
  %xgv_gp212 = getelementptr inbounds %struct.xpvgv* %86, i64 0, i32 7
  %87 = load %struct.gp** %xgv_gp212, align 8, !tbaa !0
  %gp_egv213 = getelementptr inbounds %struct.gp* %87, i64 0, i32 6
  %88 = load %struct.gv** %gp_egv213, align 8, !tbaa !0
  %tobool214 = icmp eq %struct.gv* %88, null
  %.495 = select i1 %tobool214, %struct.gv* %70, %struct.gv* %88
  %sv_any222 = getelementptr inbounds %struct.gv* %.495, i64 0, i32 0
  %89 = load %struct.xpvgv** %sv_any222, align 8, !tbaa !0
  %xgv_name223 = getelementptr inbounds %struct.xpvgv* %89, i64 0, i32 8
  %90 = load i8** %xgv_name223, align 8, !tbaa !0
  call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([25 x i8]* @.str68, i64 0, i64 0), i8* %90) #6
  br label %do_fstat

if.end226:                                        ; preds = %if.else165, %land.lhs.true169
  %91 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  %and228 = and i32 %65, 262144
  %cmp229 = icmp eq i32 %and228, 0
  br i1 %cmp229, label %cond.false235, label %cond.true231

cond.true231:                                     ; preds = %if.end226
  %sv_any232 = getelementptr inbounds %struct.sv* %64, i64 0, i32 0
  %92 = load i8** %sv_any232, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %92, i64 8
  %93 = bitcast i8* %xpv_cur to i64*
  %94 = load i64* %93, align 8, !tbaa !3
  store i64 %94, i64* %n_a, align 8, !tbaa !3
  %xpv_pv234 = bitcast i8* %92 to i8**
  %95 = load i8** %xpv_pv234, align 8, !tbaa !0
  br label %cond.end237

cond.false235:                                    ; preds = %if.end226
  %call236 = call i8* @Perl_sv_2pv_flags(%struct.sv* %64, i64* %n_a, i32 2) #6
  br label %cond.end237

cond.end237:                                      ; preds = %cond.false235, %cond.true231
  %cond238 = phi i8* [ %95, %cond.true231 ], [ %call236, %cond.false235 ]
  call void @Perl_sv_setpv(%struct.sv* %91, i8* %cond238) #6
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8, !tbaa !0
  %96 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type239 = getelementptr inbounds %struct.op* %96, i64 0, i32 4
  %97 = load i16* %op_type239, align 2, !tbaa !5
  %conv240 = zext i16 %97 to i32
  store i32 %conv240, i32* @PL_laststype, align 4, !tbaa !4
  %cmp243 = icmp eq i16 %97, 234
  %98 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  %sv_flags246 = getelementptr inbounds %struct.sv* %98, i64 0, i32 2
  %99 = load i32* %sv_flags246, align 4, !tbaa !4
  %and247 = and i32 %99, 262144
  %cmp248 = icmp ne i32 %and247, 0
  br i1 %cmp243, label %if.then245, label %if.else260

if.then245:                                       ; preds = %cond.end237
  br i1 %cmp248, label %cond.true250, label %cond.false255

cond.true250:                                     ; preds = %if.then245
  %sv_any251 = getelementptr inbounds %struct.sv* %98, i64 0, i32 0
  %100 = load i8** %sv_any251, align 8, !tbaa !0
  %xpv_cur252 = getelementptr inbounds i8* %100, i64 8
  %101 = bitcast i8* %xpv_cur252 to i64*
  %102 = load i64* %101, align 8, !tbaa !3
  store i64 %102, i64* %n_a, align 8, !tbaa !3
  %xpv_pv254 = bitcast i8* %100 to i8**
  %103 = load i8** %xpv_pv254, align 8, !tbaa !0
  br label %cond.end257

cond.false255:                                    ; preds = %if.then245
  %call256 = call i8* @Perl_sv_2pv_flags(%struct.sv* %98, i64* %n_a, i32 2) #6
  br label %cond.end257

cond.end257:                                      ; preds = %cond.false255, %cond.true250
  %cond258 = phi i8* [ %103, %cond.true250 ], [ %call256, %cond.false255 ]
  %call259 = call i32 @stat(i8* %cond258, %struct.stat* @PL_statcache) #6
  br label %if.end275

if.else260:                                       ; preds = %cond.end237
  br i1 %cmp248, label %cond.true265, label %cond.false270

cond.true265:                                     ; preds = %if.else260
  %sv_any266 = getelementptr inbounds %struct.sv* %98, i64 0, i32 0
  %104 = load i8** %sv_any266, align 8, !tbaa !0
  %xpv_cur267 = getelementptr inbounds i8* %104, i64 8
  %105 = bitcast i8* %xpv_cur267 to i64*
  %106 = load i64* %105, align 8, !tbaa !3
  store i64 %106, i64* %n_a, align 8, !tbaa !3
  %xpv_pv269 = bitcast i8* %104 to i8**
  %107 = load i8** %xpv_pv269, align 8, !tbaa !0
  br label %cond.end272

cond.false270:                                    ; preds = %if.else260
  %call271 = call i8* @Perl_sv_2pv_flags(%struct.sv* %98, i64* %n_a, i32 2) #6
  br label %cond.end272

cond.end272:                                      ; preds = %cond.false270, %cond.true265
  %cond273 = phi i8* [ %107, %cond.true265 ], [ %call271, %cond.false270 ]
  %call274 = call i32 @stat(i8* %cond273, %struct.stat* @PL_statcache) #6
  br label %if.end275

if.end275:                                        ; preds = %cond.end272, %cond.end257
  %storemerge = phi i32 [ %call274, %cond.end272 ], [ %call259, %cond.end257 ]
  store i32 %storemerge, i32* @PL_laststatval, align 4, !tbaa !4
  %cmp276 = icmp slt i32 %storemerge, 0
  br i1 %cmp276, label %if.then278, label %if.end325

if.then278:                                       ; preds = %if.end275
  %108 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings279 = getelementptr inbounds %struct.cop* %108, i64 0, i32 14
  %109 = load %struct.sv** %cop_warnings279, align 8, !tbaa !0
  %cmp280 = icmp eq %struct.sv* %109, null
  br i1 %cmp280, label %lor.lhs.false298, label %land.lhs.true282

land.lhs.true282:                                 ; preds = %if.then278
  %110 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings283 = getelementptr inbounds %struct.cop* %110, i64 0, i32 14
  %111 = load %struct.sv** %cop_warnings283, align 8, !tbaa !0
  %cmp284 = icmp eq %struct.sv* %111, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp284, label %lor.lhs.false298, label %land.lhs.true286

land.lhs.true286:                                 ; preds = %land.lhs.true282
  %112 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings287 = getelementptr inbounds %struct.cop* %112, i64 0, i32 14
  %113 = load %struct.sv** %cop_warnings287, align 8, !tbaa !0
  %cmp288 = icmp eq %struct.sv* %113, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp288, label %land.lhs.true306, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %land.lhs.true286
  %114 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings291 = getelementptr inbounds %struct.cop* %114, i64 0, i32 14
  %115 = load %struct.sv** %cop_warnings291, align 8, !tbaa !0
  %sv_any292 = getelementptr inbounds %struct.sv* %115, i64 0, i32 0
  %116 = load i8** %sv_any292, align 8, !tbaa !0
  %xpv_pv293 = bitcast i8* %116 to i8**
  %117 = load i8** %xpv_pv293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i8* %117, i64 2
  %118 = load i8* %arrayidx294, align 1, !tbaa !1
  %and296 = and i8 %118, 4
  %tobool297 = icmp eq i8 %and296, 0
  br i1 %tobool297, label %lor.lhs.false298, label %land.lhs.true306

lor.lhs.false298:                                 ; preds = %lor.lhs.false290, %land.lhs.true282, %if.then278
  %119 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings299 = getelementptr inbounds %struct.cop* %119, i64 0, i32 14
  %120 = load %struct.sv** %cop_warnings299, align 8, !tbaa !0
  %cmp300 = icmp eq %struct.sv* %120, null
  br i1 %cmp300, label %land.lhs.true302, label %if.end325

land.lhs.true302:                                 ; preds = %lor.lhs.false298
  %121 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and304 = and i8 %121, 1
  %tobool305 = icmp eq i8 %and304, 0
  br i1 %tobool305, label %if.end325, label %land.lhs.true306

land.lhs.true306:                                 ; preds = %lor.lhs.false290, %land.lhs.true302, %land.lhs.true286
  %122 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  %sv_flags307 = getelementptr inbounds %struct.sv* %122, i64 0, i32 2
  %123 = load i32* %sv_flags307, align 4, !tbaa !4
  %and308 = and i32 %123, 262144
  %cmp309 = icmp eq i32 %and308, 0
  br i1 %cmp309, label %cond.false316, label %cond.true311

cond.true311:                                     ; preds = %land.lhs.true306
  %sv_any312 = getelementptr inbounds %struct.sv* %122, i64 0, i32 0
  %124 = load i8** %sv_any312, align 8, !tbaa !0
  %xpv_cur313 = getelementptr inbounds i8* %124, i64 8
  %125 = bitcast i8* %xpv_cur313 to i64*
  %126 = load i64* %125, align 8, !tbaa !3
  store i64 %126, i64* %n_a, align 8, !tbaa !3
  %xpv_pv315 = bitcast i8* %124 to i8**
  %127 = load i8** %xpv_pv315, align 8, !tbaa !0
  br label %cond.end318

cond.false316:                                    ; preds = %land.lhs.true306
  %call317 = call i8* @Perl_sv_2pv_flags(%struct.sv* %122, i64* %n_a, i32 2) #6
  br label %cond.end318

cond.end318:                                      ; preds = %cond.false316, %cond.true311
  %cond319 = phi i8* [ %127, %cond.true311 ], [ %call317, %cond.false316 ]
  %call320 = call i8* @strchr(i8* %cond319, i32 10) #6
  %tobool321 = icmp eq i8* %call320, null
  br i1 %tobool321, label %if.end325, label %if.then322

if.then322:                                       ; preds = %cond.end318
  call void (i32, i8*, ...)* @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8]* @PL_warn_nl, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str70, i64 0, i64 0)) #6
  br label %if.end325

if.end325:                                        ; preds = %cond.end318, %land.lhs.true302, %lor.lhs.false298, %if.end275, %land.lhs.true133, %lor.lhs.false129, %if.end98, %if.then322, %cond.end153
  %sp.1 = phi %struct.sv** [ %sp.0, %cond.end153 ], [ %incdec.ptr, %if.then322 ], [ %sp.0, %if.end98 ], [ %sp.0, %lor.lhs.false129 ], [ %sp.0, %land.lhs.true133 ], [ %incdec.ptr, %if.end275 ], [ %incdec.ptr, %lor.lhs.false298 ], [ %incdec.ptr, %land.lhs.true302 ], [ %incdec.ptr, %cond.end318 ]
  %max.0 = phi i32 [ 0, %cond.end153 ], [ 0, %if.then322 ], [ 13, %if.end98 ], [ 0, %lor.lhs.false129 ], [ 0, %land.lhs.true133 ], [ 13, %if.end275 ], [ 0, %lor.lhs.false298 ], [ 0, %land.lhs.true302 ], [ 0, %cond.end318 ]
  %128 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags326 = getelementptr inbounds %struct.op* %128, i64 0, i32 6
  %129 = load i8* %op_flags326, align 1, !tbaa !1
  %conv327 = zext i8 %129 to i32
  %and328 = and i32 %conv327, 3
  switch i32 %and328, label %cond.end352 [
    i32 1, label %return
    i32 2, label %if.then359
    i32 3, label %if.end369
  ]

cond.end352:                                      ; preds = %if.end325
  %call347 = call i32 @Perl_block_gimme() #6
  switch i32 %call347, label %if.then359 [
    i32 1, label %if.end369
    i32 128, label %return
  ]

if.then359:                                       ; preds = %if.end325, %cond.end352
  %130 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %130 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp360 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp360, label %if.then362, label %if.end364

if.then362:                                       ; preds = %if.then359
  %call363 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1, %struct.sv** %sp.1, i32 1) #6
  br label %if.end364

if.end364:                                        ; preds = %if.then362, %if.then359
  %sp.2 = phi %struct.sv** [ %call363, %if.then362 ], [ %sp.1, %if.then359 ]
  %tobool365 = icmp ne i32 %max.0, 0
  %cond366 = select i1 %tobool365, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %incdec.ptr367 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %cond366, %struct.sv** %incdec.ptr367, align 8, !tbaa !0
  br label %return

if.end369:                                        ; preds = %if.end325, %cond.end352
  %tobool370 = icmp eq i32 %max.0, 0
  br i1 %tobool370, label %return, label %if.then371

if.then371:                                       ; preds = %if.end369
  %131 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast372 = ptrtoint %struct.sv** %131 to i64
  %sub.ptr.rhs.cast373 = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.sub374 = sub i64 %sub.ptr.lhs.cast372, %sub.ptr.rhs.cast373
  %sub.ptr.div375 = ashr exact i64 %sub.ptr.sub374, 3
  %conv376486 = zext i32 %max.0 to i64
  %cmp377 = icmp slt i64 %sub.ptr.div375, %conv376486
  br i1 %cmp377, label %if.then379, label %if.end381

if.then379:                                       ; preds = %if.then371
  %call380 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1, %struct.sv** %sp.1, i32 %max.0) #6
  br label %if.end381

if.end381:                                        ; preds = %if.then379, %if.then371
  %sp.4 = phi %struct.sv** [ %call380, %if.then379 ], [ %sp.1, %if.then371 ]
  %132 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %add = add nsw i32 %132, %max.0
  %133 = load i32* @PL_tmps_max, align 4, !tbaa !4
  %cmp382 = icmp slt i32 %add, %133
  br i1 %cmp382, label %if.end385, label %if.then384

if.then384:                                       ; preds = %if.end381
  call void @Perl_tmps_grow(i32 %max.0) #6
  br label %if.end385

if.end385:                                        ; preds = %if.end381, %if.then384
  %134 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 0), align 8, !tbaa !3
  %call386 = call %struct.sv* @Perl_newSViv(i64 %134) #6
  %call387 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call386) #6
  %incdec.ptr388 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %call387, %struct.sv** %incdec.ptr388, align 8, !tbaa !0
  %135 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 1), align 8, !tbaa !3
  %call389 = call %struct.sv* @Perl_newSViv(i64 %135) #6
  %call390 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call389) #6
  %incdec.ptr391 = getelementptr inbounds %struct.sv** %sp.4, i64 2
  store %struct.sv* %call390, %struct.sv** %incdec.ptr391, align 8, !tbaa !0
  %136 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %conv392 = zext i32 %136 to i64
  %call393 = call %struct.sv* @Perl_newSVuv(i64 %conv392) #6
  %call394 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call393) #6
  %incdec.ptr395 = getelementptr inbounds %struct.sv** %sp.4, i64 3
  store %struct.sv* %call394, %struct.sv** %incdec.ptr395, align 8, !tbaa !0
  %137 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 2), align 8, !tbaa !3
  %call396 = call %struct.sv* @Perl_newSVuv(i64 %137) #6
  %call397 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call396) #6
  %incdec.ptr398 = getelementptr inbounds %struct.sv** %sp.4, i64 4
  store %struct.sv* %call397, %struct.sv** %incdec.ptr398, align 8, !tbaa !0
  %138 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 4), align 4, !tbaa !4
  %conv399 = zext i32 %138 to i64
  %call400 = call %struct.sv* @Perl_newSVuv(i64 %conv399) #6
  %call401 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call400) #6
  %incdec.ptr402 = getelementptr inbounds %struct.sv** %sp.4, i64 5
  store %struct.sv* %call401, %struct.sv** %incdec.ptr402, align 8, !tbaa !0
  %139 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 5), align 8, !tbaa !4
  %conv403 = zext i32 %139 to i64
  %call404 = call %struct.sv* @Perl_newSVuv(i64 %conv403) #6
  %call405 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call404) #6
  %incdec.ptr406 = getelementptr inbounds %struct.sv** %sp.4, i64 6
  store %struct.sv* %call405, %struct.sv** %incdec.ptr406, align 8, !tbaa !0
  %call407 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i64 0) #6
  %call408 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call407) #6
  %incdec.ptr409 = getelementptr inbounds %struct.sv** %sp.4, i64 7
  store %struct.sv* %call408, %struct.sv** %incdec.ptr409, align 8, !tbaa !0
  %140 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 8), align 8, !tbaa !3
  %call410 = call %struct.sv* @Perl_newSViv(i64 %140) #6
  %call411 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call410) #6
  %incdec.ptr412 = getelementptr inbounds %struct.sv** %sp.4, i64 8
  store %struct.sv* %call411, %struct.sv** %incdec.ptr412, align 8, !tbaa !0
  %141 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 11, i32 0), align 8, !tbaa !3
  %call413 = call %struct.sv* @Perl_newSViv(i64 %141) #6
  %call414 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call413) #6
  %incdec.ptr415 = getelementptr inbounds %struct.sv** %sp.4, i64 9
  store %struct.sv* %call414, %struct.sv** %incdec.ptr415, align 8, !tbaa !0
  %142 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 12, i32 0), align 8, !tbaa !3
  %call416 = call %struct.sv* @Perl_newSViv(i64 %142) #6
  %call417 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call416) #6
  %incdec.ptr418 = getelementptr inbounds %struct.sv** %sp.4, i64 10
  store %struct.sv* %call417, %struct.sv** %incdec.ptr418, align 8, !tbaa !0
  %143 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 13, i32 0), align 8, !tbaa !3
  %call419 = call %struct.sv* @Perl_newSViv(i64 %143) #6
  %call420 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call419) #6
  %incdec.ptr421 = getelementptr inbounds %struct.sv** %sp.4, i64 11
  store %struct.sv* %call420, %struct.sv** %incdec.ptr421, align 8, !tbaa !0
  %call422 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i64 0) #6
  %call423 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call422) #6
  %incdec.ptr424 = getelementptr inbounds %struct.sv** %sp.4, i64 12
  store %struct.sv* %call423, %struct.sv** %incdec.ptr424, align 8, !tbaa !0
  %call425 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i64 0) #6
  %call426 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call425) #6
  %incdec.ptr427 = getelementptr inbounds %struct.sv** %sp.4, i64 13
  store %struct.sv* %call426, %struct.sv** %incdec.ptr427, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end369, %cond.end352, %if.end325, %if.end385, %if.end364
  %storemerge492 = phi %struct.sv** [ %incdec.ptr367, %if.end364 ], [ %incdec.ptr427, %if.end385 ], [ %sp.1, %if.end325 ], [ %sp.1, %cond.end352 ], [ %sp.1, %if.end369 ]
  store %struct.sv** %storemerge492, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fstat(i32, %struct.stat* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #4

; Function Attrs: optsize
declare void @Perl_tmps_grow(i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftrread() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call signext i8 @Perl_cando(i32 256, i32 0, %struct.stat* @PL_statcache) #6
  %tobool = icmp eq i8 %call1, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_my_stat() #1

; Function Attrs: optsize
declare signext i8 @Perl_cando(i32, i32, %struct.stat*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftrwrite() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call signext i8 @Perl_cando(i32 128, i32 0, %struct.stat* @PL_statcache) #6
  %tobool = icmp eq i8 %call1, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftrexec() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call signext i8 @Perl_cando(i32 64, i32 0, %struct.stat* @PL_statcache) #6
  %tobool = icmp eq i8 %call1, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fteread() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call signext i8 @Perl_cando(i32 256, i32 1, %struct.stat* @PL_statcache) #6
  %tobool = icmp eq i8 %call1, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftewrite() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call signext i8 @Perl_cando(i32 128, i32 1, %struct.stat* @PL_statcache) #6
  %tobool = icmp eq i8 %call1, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fteexec() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call signext i8 @Perl_cando(i32 64, i32 1, %struct.stat* @PL_statcache) #6
  %tobool = icmp eq i8 %call1, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftis() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  %PL_sv_undef.PL_sv_yes = select i1 %cmp, %struct.sv* @PL_sv_undef, %struct.sv* @PL_sv_yes
  store %struct.sv* %PL_sv_undef.PL_sv_yes, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fteowned() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_ftrowned() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftrowned() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 4), align 4, !tbaa !4
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %3, i64 0, i32 4
  %4 = load i16* %op_type, align 2, !tbaa !5
  %cmp1 = icmp eq i16 %4, 243
  %5 = load i32* @PL_euid, align 4, !tbaa !4
  %6 = load i32* @PL_uid, align 4, !tbaa !4
  %cond = select i1 %cmp1, i32 %5, i32 %6
  %cmp3 = icmp eq i32 %2, %cond
  %incdec.ptr6 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr6, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr6, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %7, i64 0, i32 0
  br label %return

if.end8:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr6, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %8 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next10 = getelementptr inbounds %struct.op* %8, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next7, %if.then5 ], [ %op_next10, %if.end8 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftzero() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 8), align 8, !tbaa !3
  %cmp1 = icmp eq i64 %2, 0
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftsize() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 8), align 8, !tbaa !3
  tail call void @Perl_sv_setiv(%struct.sv* %4, i64 %5) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then1
  %incdec.ptr4 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr4, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %storemerge = phi %struct.sv** [ %incdec.ptr4, %if.end3 ], [ %incdec.ptr, %if.then ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftmtime() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64* @PL_basetime, align 8, !tbaa !3
  %conv = sitofp i64 %5 to double
  %6 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 12, i32 0), align 8, !tbaa !3
  %conv1 = sitofp i64 %6 to double
  %sub = fsub double %conv, %conv1
  %div = fdiv double %sub, 8.640000e+04
  tail call void @Perl_sv_setnv(%struct.sv* %4, double %div) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %7, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %incdec.ptr5 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr5, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %storemerge = phi %struct.sv** [ %incdec.ptr5, %if.end4 ], [ %incdec.ptr, %if.then ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftatime() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64* @PL_basetime, align 8, !tbaa !3
  %conv = sitofp i64 %5 to double
  %6 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 11, i32 0), align 8, !tbaa !3
  %conv1 = sitofp i64 %6 to double
  %sub = fsub double %conv, %conv1
  %div = fdiv double %sub, 8.640000e+04
  tail call void @Perl_sv_setnv(%struct.sv* %4, double %div) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %7, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %incdec.ptr5 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr5, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %storemerge = phi %struct.sv** [ %incdec.ptr5, %if.end4 ], [ %incdec.ptr, %if.then ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftctime() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64* @PL_basetime, align 8, !tbaa !3
  %conv = sitofp i64 %5 to double
  %6 = load i64* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 13, i32 0), align 8, !tbaa !3
  %conv1 = sitofp i64 %6 to double
  %sub = fsub double %conv, %conv1
  %div = fdiv double %sub, 8.640000e+04
  tail call void @Perl_sv_setnv(%struct.sv* %4, double %div) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %7, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %incdec.ptr5 = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr5, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %storemerge = phi %struct.sv** [ %incdec.ptr5, %if.end4 ], [ %incdec.ptr, %if.then ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftsock() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 49152
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftchr() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 8192
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftblk() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 24576
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftfile() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 32768
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftdir() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 16384
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftpipe() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 4096
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftlink() #0 {
entry:
  %call = tail call i32 @Perl_my_lstat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 40960
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next4 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next7 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next4, %if.then2 ], [ %op_next7, %if.end5 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_my_lstat() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftsuid() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 2048
  %tobool = icmp eq i32 %and, 0
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next3 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end4:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next6 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end4, %if.then1, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next3, %if.then1 ], [ %op_next6, %if.end4 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftsgid() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 1024
  %tobool = icmp eq i32 %and, 0
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next3 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end4:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next6 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end4, %if.then1, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next3, %if.then1 ], [ %op_next6, %if.end4 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftsvtx() #0 {
entry:
  %call = tail call i32 @Perl_my_stat() #6
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %1, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and = and i32 %2, 512
  %tobool = icmp eq i32 %and, 0
  %incdec.ptr2 = getelementptr inbounds %struct.sv** %0, i64 1
  br i1 %tobool, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next3 = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  br label %return

if.end4:                                          ; preds = %if.end
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr2, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next6 = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end4, %if.then1, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %op_next3, %if.then1 ], [ %op_next6, %if.end4 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fttty() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 16
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %op_sv = getelementptr inbounds %struct.op* %1, i64 1
  %3 = bitcast %struct.op* %op_sv to %struct.sv**
  %4 = load %struct.sv** %3, align 8, !tbaa !0
  %5 = bitcast %struct.sv* %4 to %struct.gv*
  br label %if.end26

if.else:                                          ; preds = %entry
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and1 = and i32 %7, 255
  %cmp = icmp eq i32 %and1, 13
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %8 = bitcast %struct.sv* %6 to %struct.gv*
  br label %if.end26

if.else4:                                         ; preds = %if.else
  %and6 = and i32 %7, 524288
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.else16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else4
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %9 to %struct.sv**
  %10 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags8 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags8, align 4, !tbaa !4
  %and9 = and i32 %11, 255
  %cmp10 = icmp eq i32 %and9, 13
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %land.lhs.true
  %incdec.ptr13 = getelementptr inbounds %struct.sv** %0, i64 -1
  %12 = bitcast %struct.sv* %10 to %struct.gv*
  br label %if.end26

if.else16:                                        ; preds = %if.else4, %land.lhs.true
  %incdec.ptr17 = getelementptr inbounds %struct.sv** %0, i64 -1
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %and19 = and i32 %7, 262144
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else16
  %sv_any22 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %13 = load i8** %sv_any22, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !3
  store i64 %15, i64* %n_a, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.else16
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %n_a, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call, %cond.false ]
  %call24 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond, i32 0, i32 15) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then3, %cond.end, %if.then12, %if.then
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %if.then3 ], [ %incdec.ptr13, %if.then12 ], [ %incdec.ptr17, %cond.end ]
  %gv.0 = phi %struct.gv* [ %5, %if.then ], [ %8, %if.then3 ], [ %12, %if.then12 ], [ %call24, %cond.end ]
  %tmps.0 = phi i8* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.then12 ], [ %cond, %cond.end ]
  %tobool27 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool27, label %if.else54, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end26
  %17 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %18 = load i32* %17, align 4, !tbaa !4
  %and30 = and i32 %18, 255
  %cmp31 = icmp eq i32 %and30, 13
  br i1 %cmp31, label %land.lhs.true33, label %if.else54

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %sv_any34 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any34, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool35 = icmp eq %struct.gp* %20, null
  br i1 %tobool35, label %if.else54, label %cond.true36

cond.true36:                                      ; preds = %land.lhs.true33
  %gp_io = getelementptr inbounds %struct.gp* %20, i64 0, i32 2
  %21 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool39 = icmp eq %struct.io* %21, null
  br i1 %tobool39, label %if.else54, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %cond.true36
  %sv_any45 = getelementptr inbounds %struct.io* %21, i64 0, i32 0
  %22 = load %struct.xpvio** %sv_any45, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %22, i64 0, i32 7
  %23 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool46 = icmp eq %struct._PerlIO** %23, null
  br i1 %tobool46, label %if.else54, label %if.then47

if.then47:                                        ; preds = %land.lhs.true41
  %call53 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %23) #6
  br label %if.end69

if.else54:                                        ; preds = %land.lhs.true41, %cond.true36, %land.lhs.true33, %if.end26, %land.lhs.true28
  %tobool55 = icmp eq i8* %tmps.0, null
  br i1 %tobool55, label %if.else66, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.else54
  %24 = load i8* %tmps.0, align 1, !tbaa !1
  %.off = add i8 %24, -48
  %25 = icmp ult i8 %.off, 10
  br i1 %25, label %if.then64, label %if.else66

if.then64:                                        ; preds = %land.lhs.true56
  %call65 = call i32 @atoi(i8* %tmps.0) #6
  br label %if.end69

if.else66:                                        ; preds = %if.else54, %land.lhs.true56
  %incdec.ptr67 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr67, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr67, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %26, i64 0, i32 0
  br label %return

if.end69:                                         ; preds = %if.then64, %if.then47
  %fd.0 = phi i32 [ %call53, %if.then47 ], [ %call65, %if.then64 ]
  %call70 = call i32 @isatty(i32 %fd.0) #6
  %tobool71 = icmp eq i32 %call70, 0
  %incdec.ptr73 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  br i1 %tobool71, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.end69
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr73, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr73, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %27 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next74 = getelementptr inbounds %struct.op* %27, i64 0, i32 0
  br label %return

if.end75:                                         ; preds = %if.end69
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr73, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr73, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next77 = getelementptr inbounds %struct.op* %28, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end75, %if.then72, %if.else66
  %retval.0.in = phi %struct.op** [ %op_next74, %if.then72 ], [ %op_next77, %if.end75 ], [ %op_next, %if.else66 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @isatty(i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fttext() #0 {
entry:
  %tbuf = alloca [512 x i8], align 16
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = getelementptr inbounds [512 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %1) #2
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %2, i64 0, i32 6
  %3 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %3, 16
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %op_sv = getelementptr inbounds %struct.op* %2, i64 1
  %4 = bitcast %struct.op* %op_sv to %struct.sv**
  %5 = load %struct.sv** %4, align 8, !tbaa !0
  br label %if.end18

if.else:                                          ; preds = %entry
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and1 = and i32 %7, 255
  %cmp = icmp eq i32 %and1, 13
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %if.end18

if.else4:                                         ; preds = %if.else
  %and6 = and i32 %7, 524288
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.else191, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else4
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %8 to %struct.sv**
  %9 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags8 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags8, align 4, !tbaa !4
  %and9 = and i32 %10, 255
  %cmp10 = icmp eq i32 %and9, 13
  br i1 %cmp10, label %if.then12, label %if.else191

if.then12:                                        ; preds = %land.lhs.true
  %incdec.ptr13 = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %if.end18

if.end18:                                         ; preds = %if.then3, %if.then12, %if.then
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %if.then3 ], [ %incdec.ptr13, %if.then12 ]
  %gv.0.in = phi %struct.sv* [ %5, %if.then ], [ %6, %if.then3 ], [ %9, %if.then12 ]
  %gv.0 = bitcast %struct.sv* %gv.0.in to %struct.gv*
  %tobool19 = icmp eq %struct.sv* %gv.0.in, null
  br i1 %tobool19, label %if.else191, label %if.then20

if.then20:                                        ; preds = %if.end18
  %11 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp21 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20
  %sp.1 = phi %struct.sv** [ %call, %if.then23 ], [ %sp.0, %if.then20 ]
  %12 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %cmp25 = icmp eq %struct.gv* %gv.0, %12
  br i1 %cmp25, label %if.then27, label %if.else43

if.then27:                                        ; preds = %if.end24
  %13 = load %struct.gv** @PL_statgv, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.gv* %13, null
  br i1 %tobool28, label %really_filename, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.then27
  %14 = getelementptr inbounds %struct.gv* %13, i64 0, i32 2
  %15 = load i32* %14, align 4, !tbaa !4
  %and33 = and i32 %15, 255
  %cmp34 = icmp eq i32 %and33, 13
  br i1 %cmp34, label %land.lhs.true36, label %if.else133

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %sv_any37 = getelementptr inbounds %struct.gv* %13, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any37, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool38 = icmp eq %struct.gp* %17, null
  br i1 %tobool38, label %if.else133, label %if.end61

if.else43:                                        ; preds = %if.end24
  store %struct.gv* %gv.0, %struct.gv** @PL_statgv, align 8, !tbaa !0
  store i32 -1, i32* @PL_laststatval, align 4, !tbaa !4
  %18 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %18, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) #6
  %19 = load %struct.gv** @PL_statgv, align 8, !tbaa !0
  %tobool44 = icmp eq %struct.gv* %19, null
  br i1 %tobool44, label %if.else133, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.else43
  %20 = getelementptr inbounds %struct.gv* %19, i64 0, i32 2
  %21 = load i32* %20, align 4, !tbaa !4
  %and47 = and i32 %21, 255
  %cmp48 = icmp eq i32 %and47, 13
  br i1 %cmp48, label %land.lhs.true50, label %if.else133

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %sv_any51 = getelementptr inbounds %struct.gv* %19, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any51, align 8, !tbaa !0
  %xgv_gp52 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp52, align 8, !tbaa !0
  %tobool53 = icmp eq %struct.gp* %23, null
  br i1 %tobool53, label %if.else133, label %if.end61

if.end61:                                         ; preds = %land.lhs.true50, %land.lhs.true36
  %.pn = phi %struct.gp* [ %17, %land.lhs.true36 ], [ %23, %land.lhs.true50 ]
  %io.0.in = getelementptr inbounds %struct.gp* %.pn, i64 0, i32 2
  %io.0 = load %struct.io** %io.0.in, align 8
  %tobool62 = icmp eq %struct.io* %io.0, null
  br i1 %tobool62, label %if.else133, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end61
  %sv_any64 = getelementptr inbounds %struct.io* %io.0, i64 0, i32 0
  %24 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %24, i64 0, i32 7
  %25 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool65 = icmp eq %struct._PerlIO** %25, null
  br i1 %tobool65, label %if.else133, label %if.then66

if.then66:                                        ; preds = %land.lhs.true63
  %call69 = call i32 @PerlIO_has_base(%struct._PerlIO** %25) #6
  %tobool70 = icmp eq i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.then66
  %call72 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([41 x i8]* @.str71, i64 0, i64 0)) #6
  br label %cleanup

if.end73:                                         ; preds = %if.then66
  %26 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp75 = getelementptr inbounds %struct.xpvio* %26, i64 0, i32 7
  %27 = load %struct._PerlIO*** %xio_ifp75, align 8, !tbaa !0
  %call76 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %27) #6
  %call77 = call i32 @fstat(i32 %call76, %struct.stat* @PL_statcache) #6
  store i32 %call77, i32* @PL_laststatval, align 4, !tbaa !4
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end73
  %incdec.ptr81 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr81, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr81, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %28, i64 0, i32 0
  %29 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  %30 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and83 = and i32 %30, 61440
  %cmp84 = icmp eq i32 %and83, 16384
  br i1 %cmp84, label %if.then86, label %if.end96

if.then86:                                        ; preds = %if.end82
  %31 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %31, i64 0, i32 4
  %32 = load i16* %op_type, align 2, !tbaa !5
  %cmp88 = icmp eq i16 %32, 261
  %incdec.ptr91 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.then86
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr91, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr91, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %33 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next92 = getelementptr inbounds %struct.op* %33, i64 0, i32 0
  %34 = load %struct.op** %op_next92, align 8, !tbaa !0
  br label %cleanup

if.else93:                                        ; preds = %if.then86
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr91, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr91, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %35 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next95 = getelementptr inbounds %struct.op* %35, i64 0, i32 0
  %36 = load %struct.op** %op_next95, align 8, !tbaa !0
  br label %cleanup

if.end96:                                         ; preds = %if.end82
  %37 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp98 = getelementptr inbounds %struct.xpvio* %37, i64 0, i32 7
  %38 = load %struct._PerlIO*** %xio_ifp98, align 8, !tbaa !0
  %call99 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %38) #6
  %cmp100 = icmp slt i32 %call99, 1
  br i1 %cmp100, label %if.then102, label %if.end113

if.then102:                                       ; preds = %if.end96
  %39 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp104 = getelementptr inbounds %struct.xpvio* %39, i64 0, i32 7
  %40 = load %struct._PerlIO*** %xio_ifp104, align 8, !tbaa !0
  %call105 = call i32 @PerlIO_getc(%struct._PerlIO** %40) #6
  %cmp106 = icmp eq i32 %call105, -1
  br i1 %cmp106, label %if.end113, label %if.then108

if.then108:                                       ; preds = %if.then102
  %41 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp110 = getelementptr inbounds %struct.xpvio* %41, i64 0, i32 7
  %42 = load %struct._PerlIO*** %xio_ifp110, align 8, !tbaa !0
  %call111 = call i32 @PerlIO_ungetc(%struct._PerlIO** %42, i32 %call105) #6
  br label %if.end113

if.end113:                                        ; preds = %if.then102, %if.then108, %if.end96
  %43 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp115 = getelementptr inbounds %struct.xpvio* %43, i64 0, i32 7
  %44 = load %struct._PerlIO*** %xio_ifp115, align 8, !tbaa !0
  %call116 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %44) #6
  %cmp117 = icmp slt i32 %call116, 1
  br i1 %cmp117, label %if.then119, label %if.end290

if.then119:                                       ; preds = %if.end113
  %incdec.ptr120 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr120, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr120, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %45 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next121 = getelementptr inbounds %struct.op* %45, i64 0, i32 0
  %46 = load %struct.op** %op_next121, align 8, !tbaa !0
  br label %cleanup

if.else133:                                       ; preds = %if.else43, %land.lhs.true45, %land.lhs.true50, %land.lhs.true31, %land.lhs.true36, %land.lhs.true63, %if.end61
  %47 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %47, i64 0, i32 14
  %48 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp134 = icmp eq %struct.sv* %48, null
  br i1 %cmp134, label %lor.lhs.false157, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.else133
  %49 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings137 = getelementptr inbounds %struct.cop* %49, i64 0, i32 14
  %50 = load %struct.sv** %cop_warnings137, align 8, !tbaa !0
  %cmp138 = icmp eq %struct.sv* %50, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp138, label %lor.lhs.false157, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %land.lhs.true136
  %51 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings141 = getelementptr inbounds %struct.cop* %51, i64 0, i32 14
  %52 = load %struct.sv** %cop_warnings141, align 8, !tbaa !0
  %cmp142 = icmp eq %struct.sv* %52, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp142, label %if.then165, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true140
  %53 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings144 = getelementptr inbounds %struct.cop* %53, i64 0, i32 14
  %54 = load %struct.sv** %cop_warnings144, align 8, !tbaa !0
  %sv_any145 = getelementptr inbounds %struct.sv* %54, i64 0, i32 0
  %55 = load i8** %sv_any145, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %55 to i8**
  %56 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %56, i64 2
  %57 = load i8* %arrayidx, align 1, !tbaa !1
  %and147 = and i8 %57, 64
  %tobool148 = icmp eq i8 %and147, 0
  br i1 %tobool148, label %lor.lhs.false149, label %if.then165

lor.lhs.false149:                                 ; preds = %lor.lhs.false
  %58 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings150 = getelementptr inbounds %struct.cop* %58, i64 0, i32 14
  %59 = load %struct.sv** %cop_warnings150, align 8, !tbaa !0
  %sv_any151 = getelementptr inbounds %struct.sv* %59, i64 0, i32 0
  %60 = load i8** %sv_any151, align 8, !tbaa !0
  %xpv_pv152 = bitcast i8* %60 to i8**
  %61 = load i8** %xpv_pv152, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds i8* %61, i64 1
  %62 = load i8* %arrayidx153, align 1, !tbaa !1
  %and155 = and i8 %62, 16
  %tobool156 = icmp eq i8 %and155, 0
  br i1 %tobool156, label %lor.lhs.false157, label %if.then165

lor.lhs.false157:                                 ; preds = %lor.lhs.false149, %land.lhs.true136, %if.else133
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings158 = getelementptr inbounds %struct.cop* %63, i64 0, i32 14
  %64 = load %struct.sv** %cop_warnings158, align 8, !tbaa !0
  %cmp159 = icmp eq %struct.sv* %64, null
  br i1 %cmp159, label %land.lhs.true161, label %if.end186

land.lhs.true161:                                 ; preds = %lor.lhs.false157
  %65 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and163 = and i8 %65, 1
  %tobool164 = icmp eq i8 %and163, 0
  br i1 %tobool164, label %if.end186, label %if.then165

if.then165:                                       ; preds = %lor.lhs.false149, %lor.lhs.false, %land.lhs.true161, %land.lhs.true140
  %66 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_sv166 = getelementptr inbounds %struct.op* %66, i64 1
  %67 = bitcast %struct.op* %op_sv166 to %struct.sv**
  %68 = load %struct.sv** %67, align 8, !tbaa !0
  %69 = bitcast %struct.sv* %68 to %struct.gv*
  %tobool167 = icmp eq %struct.sv* %68, null
  br i1 %tobool167, label %cond.end182, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %if.then165
  %sv_flags169 = getelementptr inbounds %struct.sv* %68, i64 0, i32 2
  %70 = load i32* %sv_flags169, align 4, !tbaa !4
  %and170 = and i32 %70, 255
  %cmp171 = icmp eq i32 %and170, 13
  br i1 %cmp171, label %land.lhs.true173, label %cond.end182

land.lhs.true173:                                 ; preds = %land.lhs.true168
  %sv_any174 = bitcast %struct.sv* %68 to %struct.xpvgv**
  %71 = load %struct.xpvgv** %sv_any174, align 8, !tbaa !0
  %xgv_gp175 = getelementptr inbounds %struct.xpvgv* %71, i64 0, i32 7
  %72 = load %struct.gp** %xgv_gp175, align 8, !tbaa !0
  %tobool176 = icmp eq %struct.gp* %72, null
  br i1 %tobool176, label %cond.end182, label %cond.true177

cond.true177:                                     ; preds = %land.lhs.true173
  %gp_io180 = getelementptr inbounds %struct.gp* %72, i64 0, i32 2
  %73 = load %struct.io** %gp_io180, align 8, !tbaa !0
  br label %cond.end182

cond.end182:                                      ; preds = %land.lhs.true173, %if.then165, %land.lhs.true168, %cond.true177
  %cond183 = phi %struct.io* [ %73, %cond.true177 ], [ null, %land.lhs.true173 ], [ null, %land.lhs.true168 ], [ null, %if.then165 ]
  %op_type184 = getelementptr inbounds %struct.op* %66, i64 0, i32 4
  %74 = load i16* %op_type184, align 2, !tbaa !5
  %conv185 = zext i16 %74 to i32
  call void @Perl_report_evil_fh(%struct.gv* %69, %struct.io* %cond183, i32 %conv185) #6
  br label %if.end186

if.end186:                                        ; preds = %land.lhs.true161, %cond.end182, %lor.lhs.false157
  %call187 = call i32* @__errno_location() #6
  store i32 9, i32* %call187, align 4, !tbaa !4
  %incdec.ptr188 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr188, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr188, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %75 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next189 = getelementptr inbounds %struct.op* %75, i64 0, i32 0
  %76 = load %struct.op** %op_next189, align 8, !tbaa !0
  br label %cleanup

if.else191:                                       ; preds = %land.lhs.true, %if.else4, %if.end18
  %sp.0479 = phi %struct.sv** [ %sp.0, %if.end18 ], [ %0, %if.else4 ], [ %0, %land.lhs.true ]
  %incdec.ptr192 = getelementptr inbounds %struct.sv** %sp.0479, i64 -1
  br label %really_filename

really_filename:                                  ; preds = %if.then27, %if.else191
  %sp.2 = phi %struct.sv** [ %incdec.ptr192, %if.else191 ], [ %sp.1, %if.then27 ]
  %sv.0.in = phi %struct.sv** [ %sp.0479, %if.else191 ], [ @PL_statname, %if.then27 ]
  %sv.0 = load %struct.sv** %sv.0.in, align 8
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8, !tbaa !0
  store i32 235, i32* @PL_laststype, align 4, !tbaa !4
  %77 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  %sv_flags193 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %78 = load i32* %sv_flags193, align 4, !tbaa !4
  %and194 = and i32 %78, 262144
  %cmp195 = icmp eq i32 %and194, 0
  br i1 %cmp195, label %cond.false201, label %cond.true197

cond.true197:                                     ; preds = %really_filename
  %sv_any198 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %79 = load i8** %sv_any198, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %79, i64 8
  %80 = bitcast i8* %xpv_cur to i64*
  %81 = load i64* %80, align 8, !tbaa !3
  store i64 %81, i64* %n_a, align 8, !tbaa !3
  %xpv_pv200 = bitcast i8* %79 to i8**
  %82 = load i8** %xpv_pv200, align 8, !tbaa !0
  br label %cond.end203

cond.false201:                                    ; preds = %really_filename
  %call202 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.0, i64* %n_a, i32 2) #6
  br label %cond.end203

cond.end203:                                      ; preds = %cond.false201, %cond.true197
  %cond204 = phi i8* [ %82, %cond.true197 ], [ %call202, %cond.false201 ]
  call void @Perl_sv_setpv(%struct.sv* %77, i8* %cond204) #6
  %83 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  %sv_any205 = getelementptr inbounds %struct.sv* %83, i64 0, i32 0
  %84 = load i8** %sv_any205, align 8, !tbaa !0
  %xpv_pv206 = bitcast i8* %84 to i8**
  %85 = load i8** %xpv_pv206, align 8, !tbaa !0
  %call207 = call %struct._PerlIO** @PerlIO_open(i8* %85, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #6
  %tobool208 = icmp eq %struct._PerlIO** %call207, null
  br i1 %tobool208, label %if.then209, label %if.end257

if.then209:                                       ; preds = %cond.end203
  %86 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings210 = getelementptr inbounds %struct.cop* %86, i64 0, i32 14
  %87 = load %struct.sv** %cop_warnings210, align 8, !tbaa !0
  %cmp211 = icmp eq %struct.sv* %87, null
  br i1 %cmp211, label %lor.lhs.false229, label %land.lhs.true213

land.lhs.true213:                                 ; preds = %if.then209
  %88 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings214 = getelementptr inbounds %struct.cop* %88, i64 0, i32 14
  %89 = load %struct.sv** %cop_warnings214, align 8, !tbaa !0
  %cmp215 = icmp eq %struct.sv* %89, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp215, label %lor.lhs.false229, label %land.lhs.true217

land.lhs.true217:                                 ; preds = %land.lhs.true213
  %90 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings218 = getelementptr inbounds %struct.cop* %90, i64 0, i32 14
  %91 = load %struct.sv** %cop_warnings218, align 8, !tbaa !0
  %cmp219 = icmp eq %struct.sv* %91, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp219, label %land.lhs.true237, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %land.lhs.true217
  %92 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings222 = getelementptr inbounds %struct.cop* %92, i64 0, i32 14
  %93 = load %struct.sv** %cop_warnings222, align 8, !tbaa !0
  %sv_any223 = getelementptr inbounds %struct.sv* %93, i64 0, i32 0
  %94 = load i8** %sv_any223, align 8, !tbaa !0
  %xpv_pv224 = bitcast i8* %94 to i8**
  %95 = load i8** %xpv_pv224, align 8, !tbaa !0
  %arrayidx225 = getelementptr inbounds i8* %95, i64 2
  %96 = load i8* %arrayidx225, align 1, !tbaa !1
  %and227 = and i8 %96, 4
  %tobool228 = icmp eq i8 %and227, 0
  br i1 %tobool228, label %lor.lhs.false229, label %land.lhs.true237

lor.lhs.false229:                                 ; preds = %lor.lhs.false221, %land.lhs.true213, %if.then209
  %97 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings230 = getelementptr inbounds %struct.cop* %97, i64 0, i32 14
  %98 = load %struct.sv** %cop_warnings230, align 8, !tbaa !0
  %cmp231 = icmp eq %struct.sv* %98, null
  br i1 %cmp231, label %land.lhs.true233, label %if.end254

land.lhs.true233:                                 ; preds = %lor.lhs.false229
  %99 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and235 = and i8 %99, 1
  %tobool236 = icmp eq i8 %and235, 0
  br i1 %tobool236, label %if.end254, label %land.lhs.true237

land.lhs.true237:                                 ; preds = %lor.lhs.false221, %land.lhs.true233, %land.lhs.true217
  %100 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  %sv_flags238 = getelementptr inbounds %struct.sv* %100, i64 0, i32 2
  %101 = load i32* %sv_flags238, align 4, !tbaa !4
  %and239 = and i32 %101, 262144
  %cmp240 = icmp eq i32 %and239, 0
  br i1 %cmp240, label %cond.false247, label %cond.true242

cond.true242:                                     ; preds = %land.lhs.true237
  %sv_any243 = getelementptr inbounds %struct.sv* %100, i64 0, i32 0
  %102 = load i8** %sv_any243, align 8, !tbaa !0
  %xpv_cur244 = getelementptr inbounds i8* %102, i64 8
  %103 = bitcast i8* %xpv_cur244 to i64*
  %104 = load i64* %103, align 8, !tbaa !3
  store i64 %104, i64* %n_a, align 8, !tbaa !3
  %xpv_pv246 = bitcast i8* %102 to i8**
  %105 = load i8** %xpv_pv246, align 8, !tbaa !0
  br label %cond.end249

cond.false247:                                    ; preds = %land.lhs.true237
  %call248 = call i8* @Perl_sv_2pv_flags(%struct.sv* %100, i64* %n_a, i32 2) #6
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false247, %cond.true242
  %cond250 = phi i8* [ %105, %cond.true242 ], [ %call248, %cond.false247 ]
  %call251 = call i8* @strchr(i8* %cond250, i32 10) #6
  %tobool252 = icmp eq i8* %call251, null
  br i1 %tobool252, label %if.end254, label %if.then253

if.then253:                                       ; preds = %cond.end249
  call void (i32, i8*, ...)* @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8]* @PL_warn_nl, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0)) #6
  br label %if.end254

if.end254:                                        ; preds = %cond.end249, %land.lhs.true233, %if.then253, %lor.lhs.false229
  %incdec.ptr255 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr255, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr255, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %106 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next256 = getelementptr inbounds %struct.op* %106, i64 0, i32 0
  %107 = load %struct.op** %op_next256, align 8, !tbaa !0
  br label %cleanup

if.end257:                                        ; preds = %cond.end203
  %call258 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %call207) #6
  %call259 = call i32 @fstat(i32 %call258, %struct.stat* @PL_statcache) #6
  store i32 %call259, i32* @PL_laststatval, align 4, !tbaa !4
  %cmp260 = icmp slt i32 %call259, 0
  br i1 %cmp260, label %if.then262, label %if.end266

if.then262:                                       ; preds = %if.end257
  %call263 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %call207) #6
  %incdec.ptr264 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr264, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr264, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %108 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next265 = getelementptr inbounds %struct.op* %108, i64 0, i32 0
  %109 = load %struct.op** %op_next265, align 8, !tbaa !0
  br label %cleanup

if.end266:                                        ; preds = %if.end257
  %call267 = call i32 @PerlIO_binmode(%struct._PerlIO** %call207, i32 60, i32 0, i8* null) #6
  %call268 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %call207, i8* %1, i64 512) #6
  %conv269 = trunc i64 %call268 to i32
  %call270 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %call207) #6
  %cmp271 = icmp slt i32 %conv269, 1
  br i1 %cmp271, label %if.then273, label %for.body.lr.ph

if.then273:                                       ; preds = %if.end266
  %110 = load i32* getelementptr inbounds (%struct.stat* @PL_statcache, i64 0, i32 3), align 8, !tbaa !4
  %and274 = and i32 %110, 61440
  %cmp275 = icmp eq i32 %and274, 16384
  br i1 %cmp275, label %land.lhs.true277, label %if.end285

land.lhs.true277:                                 ; preds = %if.then273
  %111 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type278 = getelementptr inbounds %struct.op* %111, i64 0, i32 4
  %112 = load i16* %op_type278, align 2, !tbaa !5
  %cmp280 = icmp eq i16 %112, 261
  br i1 %cmp280, label %if.then282, label %if.end285

if.then282:                                       ; preds = %land.lhs.true277
  %incdec.ptr283 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr283, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr283, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %113 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next284 = getelementptr inbounds %struct.op* %113, i64 0, i32 0
  %114 = load %struct.op** %op_next284, align 8, !tbaa !0
  br label %cleanup

if.end285:                                        ; preds = %land.lhs.true277, %if.then273
  %incdec.ptr286 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr286, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr286, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %115 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next287 = getelementptr inbounds %struct.op* %115, i64 0, i32 0
  %116 = load %struct.op** %op_next287, align 8, !tbaa !0
  br label %cleanup

if.end290:                                        ; preds = %if.end113
  %117 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp124 = getelementptr inbounds %struct.xpvio* %117, i64 0, i32 7
  %118 = load %struct._PerlIO*** %xio_ifp124, align 8, !tbaa !0
  %call125 = call i32 @Perl_PerlIO_get_bufsiz(%struct._PerlIO** %118) #6
  %119 = load %struct.xpvio** %sv_any64, align 8, !tbaa !0
  %xio_ifp127 = getelementptr inbounds %struct.xpvio* %119, i64 0, i32 7
  %120 = load %struct._PerlIO*** %xio_ifp127, align 8, !tbaa !0
  %call128 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %120) #6
  %cmp129 = icmp sgt i32 %call125, 512
  %.call125 = select i1 %cmp129, i32 512, i32 %call125
  %cmp291484 = icmp sgt i32 %.call125, 0
  br i1 %cmp291484, label %for.body.lr.ph, label %for.end370

for.body.lr.ph:                                   ; preds = %if.end266, %if.end290
  %s.0499 = phi i8* [ %call128, %if.end290 ], [ %1, %if.end266 ]
  %len.0496 = phi i32 [ %.call125, %if.end290 ], [ %conv269, %if.end266 ]
  %sp.3495 = phi %struct.sv** [ %sp.1, %if.end290 ], [ %sp.2, %if.end266 ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc367
  %s.1489 = phi i8* [ %s.0499, %for.body.lr.ph ], [ %incdec.ptr369, %for.inc367 ]
  %odd.0487 = phi i32 [ 0, %for.body.lr.ph ], [ %odd.1, %for.inc367 ]
  %i.0485 = phi i32 [ 0, %for.body.lr.ph ], [ %inc368, %for.inc367 ]
  %121 = load i8* %s.1489, align 1, !tbaa !1
  %tobool293 = icmp eq i8 %121, 0
  br i1 %tobool293, label %if.then294, label %if.else295

if.then294:                                       ; preds = %for.body
  %add = add nsw i32 %odd.0487, %len.0496
  br label %for.end370

if.else295:                                       ; preds = %for.body
  %tobool298 = icmp sgt i8 %121, -1
  br i1 %tobool298, label %if.else334, label %if.then299

if.then299:                                       ; preds = %if.else295
  %.off = add i8 %121, 64
  %122 = icmp ult i8 %.off, 62
  br i1 %122, label %if.then307, label %not_utf8

if.then307:                                       ; preds = %if.then299
  %idxprom = zext i8 %121 to i64
  %arrayidx308 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %123 = load i8* %arrayidx308, align 1, !tbaa !1
  %conv309 = zext i8 %123 to i32
  %sub = sub nsw i32 %len.0496, %i.0485
  %cmp310 = icmp slt i32 %conv309, %sub
  br i1 %cmp310, label %for.cond313.preheader, label %not_utf8

for.cond313.preheader:                            ; preds = %if.then307
  %cmp314481 = icmp ugt i8 %123, 1
  br i1 %cmp314481, label %for.body316, label %for.end

for.cond313:                                      ; preds = %for.body316
  %124 = trunc i64 %indvars.iv.next to i32
  %cmp314 = icmp slt i32 %124, %conv309
  br i1 %cmp314, label %for.body316, label %for.end

for.body316:                                      ; preds = %for.cond313.preheader, %for.cond313
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond313 ], [ 1, %for.cond313.preheader ]
  %arrayidx318 = getelementptr inbounds i8* %s.1489, i64 %indvars.iv
  %125 = load i8* %arrayidx318, align 1, !tbaa !1
  %cmp320 = icmp slt i8 %125, 0
  %cmp326 = icmp ult i8 %125, -64
  %or.cond471 = and i1 %cmp320, %cmp326
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %or.cond471, label %for.cond313, label %not_utf8

for.end:                                          ; preds = %for.cond313, %for.cond313.preheader
  %dec = add nsw i32 %conv309, -1
  %idx.ext = sext i32 %dec to i64
  %add.ptr = getelementptr inbounds i8* %s.1489, i64 %idx.ext
  %add330 = add nsw i32 %dec, %i.0485
  br label %for.inc367

not_utf8:                                         ; preds = %for.body316, %if.then299, %if.then307
  %inc333 = add nsw i32 %odd.0487, 1
  br label %for.inc367

if.else334:                                       ; preds = %if.else295
  %cmp336 = icmp sgt i8 %121, 31
  br i1 %cmp336, label %for.inc367, label %switch.early.test

switch.early.test:                                ; preds = %if.else334
  switch i8 %121, label %if.then362 [
    i8 27, label %for.inc367
    i8 13, label %for.inc367
    i8 12, label %for.inc367
    i8 10, label %for.inc367
    i8 9, label %for.inc367
    i8 8, label %for.inc367
  ]

if.then362:                                       ; preds = %switch.early.test
  %inc363 = add nsw i32 %odd.0487, 1
  br label %for.inc367

for.inc367:                                       ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %if.else334, %if.then362, %not_utf8, %for.end
  %i.1 = phi i32 [ %i.0485, %not_utf8 ], [ %add330, %for.end ], [ %i.0485, %if.then362 ], [ %i.0485, %switch.early.test ], [ %i.0485, %if.else334 ], [ %i.0485, %switch.early.test ], [ %i.0485, %switch.early.test ], [ %i.0485, %switch.early.test ], [ %i.0485, %switch.early.test ], [ %i.0485, %switch.early.test ]
  %odd.1 = phi i32 [ %inc333, %not_utf8 ], [ %odd.0487, %for.end ], [ %inc363, %if.then362 ], [ %odd.0487, %switch.early.test ], [ %odd.0487, %if.else334 ], [ %odd.0487, %switch.early.test ], [ %odd.0487, %switch.early.test ], [ %odd.0487, %switch.early.test ], [ %odd.0487, %switch.early.test ], [ %odd.0487, %switch.early.test ]
  %s.2 = phi i8* [ %s.1489, %not_utf8 ], [ %add.ptr, %for.end ], [ %s.1489, %if.then362 ], [ %s.1489, %switch.early.test ], [ %s.1489, %if.else334 ], [ %s.1489, %switch.early.test ], [ %s.1489, %switch.early.test ], [ %s.1489, %switch.early.test ], [ %s.1489, %switch.early.test ], [ %s.1489, %switch.early.test ]
  %inc368 = add nsw i32 %i.1, 1
  %incdec.ptr369 = getelementptr inbounds i8* %s.2, i64 1
  %cmp291 = icmp slt i32 %inc368, %len.0496
  br i1 %cmp291, label %for.body, label %for.end370

for.end370:                                       ; preds = %if.end290, %for.inc367, %if.then294
  %len.0497 = phi i32 [ %len.0496, %if.then294 ], [ %.call125, %if.end290 ], [ %len.0496, %for.inc367 ]
  %sp.3493 = phi %struct.sv** [ %sp.3495, %if.then294 ], [ %sp.1, %if.end290 ], [ %sp.3495, %for.inc367 ]
  %odd.2 = phi i32 [ %add, %if.then294 ], [ 0, %if.end290 ], [ %odd.1, %for.inc367 ]
  %mul = mul nsw i32 %odd.2, 3
  %cmp371 = icmp sgt i32 %mul, %len.0497
  %126 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type373 = getelementptr inbounds %struct.op* %126, i64 0, i32 4
  %127 = load i16* %op_type373, align 2, !tbaa !5
  %cmp375 = icmp eq i16 %127, 261
  %cmp377tmp = xor i1 %cmp371, %cmp375
  %incdec.ptr380 = getelementptr inbounds %struct.sv** %sp.3493, i64 1
  br i1 %cmp377tmp, label %if.else382, label %if.then379

if.then379:                                       ; preds = %for.end370
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr380, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr380, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %128 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next381 = getelementptr inbounds %struct.op* %128, i64 0, i32 0
  %129 = load %struct.op** %op_next381, align 8, !tbaa !0
  br label %cleanup

if.else382:                                       ; preds = %for.end370
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr380, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr380, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %130 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next384 = getelementptr inbounds %struct.op* %130, i64 0, i32 0
  %131 = load %struct.op** %op_next384, align 8, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.else382, %if.then379, %if.end285, %if.then282, %if.then262, %if.end254, %if.end186, %if.then119, %if.else93, %if.then90, %if.then80, %if.then71
  %retval.0 = phi %struct.op* [ %29, %if.then80 ], [ %34, %if.then90 ], [ %36, %if.else93 ], [ %46, %if.then119 ], [ %129, %if.then379 ], [ %131, %if.else382 ], [ %call72, %if.then71 ], [ %76, %if.end186 ], [ %109, %if.then262 ], [ %114, %if.then282 ], [ %116, %if.end285 ], [ %107, %if.end254 ]
  call void @llvm.lifetime.end(i64 512, i8* %1) #2
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @PerlIO_has_base(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_get_cnt(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_get_bufsiz(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i8* @Perl_PerlIO_get_base(%struct._PerlIO**) #1

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_open(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ftbinary() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_fttext() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_chdir() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 15
  %cmp = icmp eq i8 %and, 1
  br i1 %cmp, label %if.then, label %if.then7

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and2 = and i32 %7, 262144
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !3
  store i64 %10, i64* %n_a, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %n_a, i32 2) #6
  br label %if.end

if.end:                                           ; preds = %cond.true, %cond.false
  %tmps.0 = phi i8* [ %11, %cond.true ], [ %call, %cond.false ]
  %tobool = icmp eq i8* %tmps.0, null
  br i1 %tobool, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i8* %tmps.0, align 1, !tbaa !1
  %tobool6 = icmp eq i8 %12, 0
  br i1 %tobool6, label %if.then7, label %if.end74

if.then7:                                         ; preds = %entry, %lor.lhs.false, %if.end
  %sp.0108 = phi %struct.sv** [ %incdec.ptr, %lor.lhs.false ], [ %incdec.ptr, %if.end ], [ %0, %entry ]
  %13 = load %struct.gv** @PL_envgv, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %13, i64 0, i32 0
  %14 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %14, i64 0, i32 7
  %15 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %15, i64 0, i32 5
  %16 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.hv* %16, null
  br i1 %tobool9, label %cond.false14, label %cond.end19

cond.false14:                                     ; preds = %if.then7
  %call15 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %13) #6
  %sv_any16 = getelementptr inbounds %struct.gv* %call15, i64 0, i32 0
  %17 = load %struct.xpvgv** %sv_any16, align 8, !tbaa !0
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv* %17, i64 0, i32 7
  %18 = load %struct.gp** %xgv_gp17, align 8, !tbaa !0
  %gp_hv18 = getelementptr inbounds %struct.gp* %18, i64 0, i32 5
  %19 = load %struct.hv** %gp_hv18, align 8, !tbaa !0
  br label %cond.end19

cond.end19:                                       ; preds = %if.then7, %cond.false14
  %cond20 = phi %struct.hv* [ %19, %cond.false14 ], [ %16, %if.then7 ]
  %call21 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond20, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 4, i32 0) #6
  %tobool22 = icmp eq %struct.sv** %call21, null
  br i1 %tobool22, label %lor.lhs.false23, label %if.then41

lor.lhs.false23:                                  ; preds = %cond.end19
  %20 = load %struct.gv** @PL_envgv, align 8, !tbaa !0
  %sv_any24 = getelementptr inbounds %struct.gv* %20, i64 0, i32 0
  %21 = load %struct.xpvgv** %sv_any24, align 8, !tbaa !0
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv* %21, i64 0, i32 7
  %22 = load %struct.gp** %xgv_gp25, align 8, !tbaa !0
  %gp_hv26 = getelementptr inbounds %struct.gp* %22, i64 0, i32 5
  %23 = load %struct.hv** %gp_hv26, align 8, !tbaa !0
  %tobool27 = icmp eq %struct.hv* %23, null
  br i1 %tobool27, label %cond.false32, label %cond.end37

cond.false32:                                     ; preds = %lor.lhs.false23
  %call33 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %20) #6
  %sv_any34 = getelementptr inbounds %struct.gv* %call33, i64 0, i32 0
  %24 = load %struct.xpvgv** %sv_any34, align 8, !tbaa !0
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp35, align 8, !tbaa !0
  %gp_hv36 = getelementptr inbounds %struct.gp* %25, i64 0, i32 5
  %26 = load %struct.hv** %gp_hv36, align 8, !tbaa !0
  br label %cond.end37

cond.end37:                                       ; preds = %lor.lhs.false23, %cond.false32
  %cond38 = phi %struct.hv* [ %26, %cond.false32 ], [ %23, %lor.lhs.false23 ]
  %call39 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond38, i8* getelementptr inbounds ([7 x i8]* @.str74, i64 0, i64 0), i32 6, i32 0) #6
  %tobool40 = icmp eq %struct.sv** %call39, null
  br i1 %tobool40, label %if.else62, label %if.then41

if.then41:                                        ; preds = %cond.end37, %cond.end19
  %svp.0 = phi %struct.sv** [ %call21, %cond.end19 ], [ %call39, %cond.end37 ]
  %27 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private42 = getelementptr inbounds %struct.op* %27, i64 0, i32 7
  %28 = load i8* %op_private42, align 1, !tbaa !1
  %and44 = and i8 %28, 15
  %cmp45 = icmp eq i8 %and44, 1
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then41
  call void @Perl_deprecate(i8* getelementptr inbounds ([37 x i8]* @.str75, i64 0, i64 0)) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then41
  %29 = load %struct.sv** %svp.0, align 8, !tbaa !0
  %sv_flags49 = getelementptr inbounds %struct.sv* %29, i64 0, i32 2
  %30 = load i32* %sv_flags49, align 4, !tbaa !4
  %and50 = and i32 %30, 262144
  %cmp51 = icmp eq i32 %and50, 0
  br i1 %cmp51, label %cond.false58, label %cond.true53

cond.true53:                                      ; preds = %if.end48
  %sv_any54 = getelementptr inbounds %struct.sv* %29, i64 0, i32 0
  %31 = load i8** %sv_any54, align 8, !tbaa !0
  %xpv_cur55 = getelementptr inbounds i8* %31, i64 8
  %32 = bitcast i8* %xpv_cur55 to i64*
  %33 = load i64* %32, align 8, !tbaa !3
  store i64 %33, i64* %n_a, align 8, !tbaa !3
  %xpv_pv57 = bitcast i8* %31 to i8**
  %34 = load i8** %xpv_pv57, align 8, !tbaa !0
  br label %if.end74

cond.false58:                                     ; preds = %if.end48
  %call59 = call i8* @Perl_sv_2pv_flags(%struct.sv* %29, i64* %n_a, i32 2) #6
  br label %if.end74

if.else62:                                        ; preds = %cond.end37
  call void @Perl_sv_setiv(%struct.sv* %4, i64 0) #6
  %sv_flags63 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %35 = load i32* %sv_flags63, align 4, !tbaa !4
  %and64 = and i32 %35, 16384
  %tobool65 = icmp eq i32 %and64, 0
  br i1 %tobool65, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.else62
  %call67 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end68

if.end68:                                         ; preds = %if.else62, %if.then66
  %incdec.ptr69 = getelementptr inbounds %struct.sv** %sp.0108, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr69, align 8, !tbaa !0
  %36 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool70 = icmp eq i8 %36, 0
  br i1 %tobool70, label %return, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str76, i64 0, i64 0)) #6
  br label %return

if.end74:                                         ; preds = %cond.true53, %cond.false58, %lor.lhs.false
  %sp.0107 = phi %struct.sv** [ %incdec.ptr, %lor.lhs.false ], [ %sp.0108, %cond.true53 ], [ %sp.0108, %cond.false58 ]
  %tmps.1 = phi i8* [ %tmps.0, %lor.lhs.false ], [ %34, %cond.true53 ], [ %call59, %cond.false58 ]
  %37 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool75 = icmp eq i8 %37, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end74
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str76, i64 0, i64 0)) #6
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.then76
  %call78 = call i32 @chdir(i8* %tmps.1) #6
  %call78.lobit = lshr i32 %call78, 31
  %call78.lobit.not = xor i32 %call78.lobit, 1
  %conv81105 = zext i32 %call78.lobit.not to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv81105) #6
  %sv_flags82 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %38 = load i32* %sv_flags82, align 4, !tbaa !4
  %and83 = and i32 %38, 16384
  %tobool84 = icmp eq i32 %and83, 0
  br i1 %tobool84, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end77
  %call86 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end87

if.end87:                                         ; preds = %if.end77, %if.then85
  %incdec.ptr88 = getelementptr inbounds %struct.sv** %sp.0107, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr88, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.then71, %if.end68, %if.end87
  %storemerge = phi %struct.sv** [ %incdec.ptr88, %if.end87 ], [ %incdec.ptr69, %if.end68 ], [ %incdec.ptr69, %if.then71 ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: optsize
declare void @Perl_deprecate(i8*) #1

; Function Attrs: optsize
declare i32 @chdir(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_chown() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_chroot() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str78, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_unlink() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %4, i64 0, i32 4
  %8 = load i16* %op_type, align 2, !tbaa !5
  %conv = zext i16 %8 to i32
  %call = tail call i32 @Perl_apply(i32 %conv, %struct.sv** %add.ptr, %struct.sv** %0) #6
  %conv1 = sext i32 %call to i64
  tail call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv1) #6
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %9, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  %11 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %11
}

; Function Attrs: optsize
declare i32 @Perl_apply(i32, %struct.sv**, %struct.sv**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_chmod() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %4, i64 0, i32 4
  %8 = load i16* %op_type, align 2, !tbaa !5
  %conv = zext i16 %8 to i32
  %call = tail call i32 @Perl_apply(i32 %conv, %struct.sv** %add.ptr, %struct.sv** %0) #6
  %conv1 = sext i32 %call to i64
  tail call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv1) #6
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %9, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  %11 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %11
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_utime() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %4, i64 0, i32 4
  %8 = load i16* %op_type, align 2, !tbaa !5
  %conv = zext i16 %8 to i32
  %call = tail call i32 @Perl_apply(i32 %conv, %struct.sv** %add.ptr, %struct.sv** %0) #6
  %conv1 = sext i32 %call to i64
  tail call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv1) #6
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %9, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  %11 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %11
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_rename() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !3
  store i64 %9, i64* %n_a, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %n_a, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %sv_flags2 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags2, align 4, !tbaa !4
  %and3 = and i32 %12, 262144
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %cond.false10, label %cond.true5

cond.true5:                                       ; preds = %cond.end
  %sv_any6 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any6, align 8, !tbaa !0
  %xpv_cur7 = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur7 to i64*
  %15 = load i64* %14, align 8, !tbaa !3
  store i64 %15, i64* %n_a, align 8, !tbaa !3
  %xpv_pv9 = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv9, align 8, !tbaa !0
  br label %cond.end12

cond.false10:                                     ; preds = %cond.end
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %11, i64* %n_a, i32 2) #6
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.true5
  %cond13 = phi i8* [ %16, %cond.true5 ], [ %call11, %cond.false10 ]
  %17 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end12
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([7 x i8]* @.str79, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %cond.end12, %if.then
  %call14 = call i32 @stat(i8* %cond13, %struct.stat* @PL_statbuf) #6
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end35

if.then16:                                        ; preds = %if.end
  %call17 = call i32 @Perl_same_dirent(i8* %cond, i8* %cond13) #6
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.else, label %if.end35

if.else:                                          ; preds = %if.then16
  %18 = load i32* @PL_euid, align 4, !tbaa !4
  %tobool20 = icmp eq i32 %18, 0
  br i1 %tobool20, label %lor.lhs.false, label %if.then26

lor.lhs.false:                                    ; preds = %if.else
  %call21 = call i32 @stat(i8* %cond, %struct.stat* @PL_statbuf) #6
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %19 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !4
  %and24 = and i32 %19, 61440
  %cmp25 = icmp eq i32 %and24, 16384
  br i1 %cmp25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.else, %lor.lhs.false23, %lor.lhs.false
  %call27 = call i32 @unlink(i8* %cond) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %lor.lhs.false23
  %call29 = call i32 @link(i8* %cond13, i8* %cond) #6
  %tobool30 = icmp eq i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end28
  %call32 = call i32 @unlink(i8* %cond13) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then16, %if.end28, %if.end, %if.then31
  %anum.0 = phi i32 [ %call14, %if.end ], [ %call29, %if.end28 ], [ %call32, %if.then31 ], [ 1, %if.then16 ]
  %anum.0.lobit = lshr i32 %anum.0, 31
  %anum.0.lobit.not = xor i32 %anum.0.lobit, 1
  %conv3758 = zext i32 %anum.0.lobit.not to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv3758) #6
  %sv_flags38 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %20 = load i32* %sv_flags38, align 4, !tbaa !4
  %and39 = and i32 %20, 16384
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end35
  %call42 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end35, %if.then41
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %21, i64 0, i32 0
  %22 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %22
}

; Function Attrs: optsize
declare i32 @Perl_same_dirent(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @unlink(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @link(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_link() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str80, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_symlink() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str81, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_readlink() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  store %struct.sv* @PL_sv_undef, %struct.sv** %sp.0, align 8, !tbaa !0
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  %3 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %3
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_mkdir() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 14
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !4
  %and2 = and i32 %7, 65536
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %8, i64 24
  %9 = bitcast i8* %xiv_iv to i64*
  %10 = load i64* %9, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i64 @Perl_sv_2iv(%struct.sv* %6) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %call, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.end ], [ %0, %entry ]
  %mode.0 = phi i32 [ %conv3, %cond.end ], [ 511, %entry ]
  %11 = load %struct.sv** %sp.0, align 8, !tbaa !0
  %sv_flags4 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags4, align 4, !tbaa !4
  %and5 = and i32 %12, 262144
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %cond.false11, label %cond.true8

cond.true8:                                       ; preds = %if.end
  %sv_any9 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any9, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !3
  store i64 %15, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end13

cond.false11:                                     ; preds = %if.end
  %call12 = call i8* @Perl_sv_2pv_flags(%struct.sv* %11, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !3
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false11, %cond.true8
  %17 = phi i64 [ %15, %cond.true8 ], [ %.pre, %cond.false11 ]
  %cond14 = phi i8* [ %16, %cond.true8 ], [ %call12, %cond.false11 ]
  %cmp15 = icmp ugt i64 %17, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %cond.end13
  %sub = add i64 %17, -1
  %arrayidx17 = getelementptr inbounds i8* %cond14, i64 %sub
  %18 = load i8* %arrayidx17, align 1, !tbaa !1
  %cmp19 = icmp eq i8 %18, 47
  br i1 %cmp19, label %do.body, label %if.end31

do.body:                                          ; preds = %land.lhs.true, %land.rhs
  %19 = phi i64 [ %dec, %land.rhs ], [ %17, %land.lhs.true ]
  %dec = add i64 %19, -1
  store i64 %dec, i64* %len, align 8, !tbaa !3
  %cmp22 = icmp ugt i64 %dec, 1
  br i1 %cmp22, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %sub24 = add i64 %19, -2
  %arrayidx25 = getelementptr inbounds i8* %cond14, i64 %sub24
  %20 = load i8* %arrayidx25, align 1, !tbaa !1
  %cmp27 = icmp eq i8 %20, 47
  br i1 %cmp27, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %land.rhs
  %conv29 = trunc i64 %dec to i32
  %call30 = call i8* @Perl_savepvn(i8* %cond14, i32 %conv29) #6
  br label %if.end31

if.end31:                                         ; preds = %do.end, %land.lhs.true, %cond.end13
  %tmps.0 = phi i8* [ %call30, %do.end ], [ %cond14, %land.lhs.true ], [ %cond14, %cond.end13 ]
  %copy.0 = phi i8 [ 1, %do.end ], [ 0, %land.lhs.true ], [ 0, %cond.end13 ]
  %21 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool32 = icmp eq i8 %21, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str82, i64 0, i64 0)) #6
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then33
  %call35 = call i32 @mkdir(i8* %tmps.0, i32 %mode.0) #6
  %call35.lobit = lshr i32 %call35, 31
  %call35.lobit.not = xor i32 %call35.lobit, 1
  %conv3860 = zext i32 %call35.lobit.not to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv3860) #6
  %sv_flags39 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %22 = load i32* %sv_flags39, align 4, !tbaa !4
  %and40 = and i32 %22, 16384
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end34
  %call43 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end44

if.end44:                                         ; preds = %if.end34, %if.then42
  store %struct.sv* %4, %struct.sv** %sp.0, align 8, !tbaa !0
  %tobool45 = icmp eq i8 %copy.0, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void @Perl_safesysfree(i8* %tmps.0) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %if.then46
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %23 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %23, i64 0, i32 0
  %24 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %24
}

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @mkdir(i8* nocapture, i32) #4

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_rmdir() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !3
  store i64 %9, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = phi i64 [ %9, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %10, %cond.true ], [ %call, %cond.false ]
  %cmp2 = icmp ugt i64 %11, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %sub = add i64 %11, -1
  %arrayidx3 = getelementptr inbounds i8* %cond, i64 %sub
  %12 = load i8* %arrayidx3, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %12, 47
  br i1 %cmp4, label %do.body, label %if.end

do.body:                                          ; preds = %land.lhs.true, %land.rhs
  %13 = phi i64 [ %dec, %land.rhs ], [ %11, %land.lhs.true ]
  %dec = add i64 %13, -1
  store i64 %dec, i64* %len, align 8, !tbaa !3
  %cmp6 = icmp ugt i64 %dec, 1
  br i1 %cmp6, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %sub8 = add i64 %13, -2
  %arrayidx9 = getelementptr inbounds i8* %cond, i64 %sub8
  %14 = load i8* %arrayidx9, align 1, !tbaa !1
  %cmp11 = icmp eq i8 %14, 47
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %land.rhs
  %conv13 = trunc i64 %dec to i32
  %call14 = call i8* @Perl_savepvn(i8* %cond, i32 %conv13) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %cond.end
  %tmps.0 = phi i8* [ %call14, %do.end ], [ %cond, %land.lhs.true ], [ %cond, %cond.end ]
  %copy.0 = phi i8 [ 1, %do.end ], [ 0, %land.lhs.true ], [ 0, %cond.end ]
  %15 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %15, 0
  br i1 %tobool, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str83, i64 0, i64 0)) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then15
  %call17 = call i32 @rmdir(i8* %tmps.0) #6
  %call17.lobit = lshr i32 %call17, 31
  %call17.lobit.not = xor i32 %call17.lobit, 1
  %conv2041 = zext i32 %call17.lobit.not to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv2041) #6
  %sv_flags21 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %16 = load i32* %sv_flags21, align 4, !tbaa !4
  %and22 = and i32 %16, 16384
  %tobool23 = icmp eq i32 %and22, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end16
  %call25 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end26

if.end26:                                         ; preds = %if.end16, %if.then24
  store %struct.sv* %4, %struct.sv** %0, align 8, !tbaa !0
  %tobool27 = icmp eq i8 %copy.0, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @Perl_safesysfree(i8* %tmps.0) #6
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.then28
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %17 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %17, i64 0, i32 0
  %18 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %18
}

; Function Attrs: nounwind optsize
declare i32 @rmdir(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_open_dir() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_dir_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str84, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_readdir() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_dir_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str85, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_telldir() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_dir_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str86, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_seekdir() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_dir_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_rewinddir() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_dir_func, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str88, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_closedir() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_dir_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str89, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_fork() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %call1 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** null) #6
  %call2 = tail call i32 @Perl_my_fork() #6
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store %struct.sv* @PL_sv_undef, %struct.sv** %sp.0, align 8, !tbaa !0
  br label %return

if.end5:                                          ; preds = %if.end
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.then6, label %if.end19

if.then6:                                         ; preds = %if.end5
  %call7 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str90, i64 0, i64 0), i32 1, i32 4) #6
  %tobool8 = icmp eq %struct.gv* %call7, null
  br i1 %tobool8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.then6
  %sv_any = getelementptr inbounds %struct.gv* %call7, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %7, i64 0, i32 0
  %8 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %9, -8388609
  store i32 %and, i32* %sv_flags, align 4, !tbaa !4
  %call13 = tail call i32 @getpid() #6
  %conv = sext i32 %call13 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %8, i64 %conv) #6
  %10 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 7
  %11 = load %struct.gp** %xgv_gp15, align 8, !tbaa !0
  %gp_sv16 = getelementptr inbounds %struct.gp* %11, i64 0, i32 0
  %12 = load %struct.sv** %gp_sv16, align 8, !tbaa !0
  %sv_flags17 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags17, align 4, !tbaa !4
  %or = or i32 %13, 8388608
  store i32 %or, i32* %sv_flags17, align 4, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %if.then9
  %14 = load %struct.hv** @PL_pidstatus, align 8, !tbaa !0
  tail call void @Perl_hv_clear(%struct.hv* %14) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end5, %if.end18
  %conv20 = sext i32 %call2 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv20) #6
  %sv_flags21 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %15 = load i32* %sv_flags21, align 4, !tbaa !4
  %and22 = and i32 %15, 16384
  %tobool23 = icmp eq i32 %and22, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end19
  %call25 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end26

if.end26:                                         ; preds = %if.end19, %if.then24
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end26, %if.then4
  %storemerge = phi %struct.sv** [ %incdec.ptr, %if.end26 ], [ %sp.0, %if.then4 ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_my_fork() #1

; Function Attrs: optsize
declare i32 @getpid() #1

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_wait() #0 {
entry:
  %argflags = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load i32* @PL_signals, align 4, !tbaa !4
  %and = and i32 %5, 1
  %tobool = icmp eq i32 %and, 0
  %call130 = call i32 @Perl_wait4pid(i32 -1, i32* %argflags, i32 0) #6
  %cmp31 = icmp eq i32 %call130, -1
  %or.cond = and i1 %tobool, %cmp31
  br i1 %or.cond, label %land.rhs, label %if.end6

land.rhs:                                         ; preds = %entry, %while.cond.backedge
  %call2 = call i32* @__errno_location() #6
  %6 = load i32* %call2, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %6, 4
  br i1 %cmp3, label %while.body, label %if.end6

while.body:                                       ; preds = %land.rhs
  %7 = load i32* @PL_sig_pending, align 4, !tbaa !4
  %tobool4 = icmp eq i32 %7, 0
  br i1 %tobool4, label %while.cond.backedge, label %if.then5

if.then5:                                         ; preds = %while.body
  call void @Perl_despatch_signals() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then5, %while.body
  %call1 = call i32 @Perl_wait4pid(i32 -1, i32* %argflags, i32 0) #6
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %land.rhs, label %if.end6

if.end6:                                          ; preds = %entry, %land.rhs, %while.cond.backedge
  %childpid.0 = phi i32 [ -1, %land.rhs ], [ %call1, %while.cond.backedge ], [ %call130, %entry ]
  %cmp7 = icmp sgt i32 %childpid.0, 0
  %8 = load i32* %argflags, align 4, !tbaa !4
  %cond = select i1 %cmp7, i32 %8, i32 -1
  %cmp8 = icmp eq i32 %cond, -1
  %and10 = and i32 %cond, 65535
  %cond.and10 = select i1 %cmp8, i32 -1, i32 %and10
  store i32 %cond.and10, i32* @PL_statusvalue, align 4, !tbaa !4
  %conv = sext i32 %childpid.0 to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !4
  %and12 = and i32 %9, 16384
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end6
  %call15 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end6, %if.then14
  %10 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp17 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %sp.0 = phi %struct.sv** [ %call20, %if.then19 ], [ %0, %if.end16 ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %11, i64 0, i32 0
  %12 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %12
}

; Function Attrs: optsize
declare i32 @Perl_wait4pid(i32, i32*, i32) #1

; Function Attrs: optsize
declare void @Perl_despatch_signals() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_waitpid() #0 {
entry:
  %argflags = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %7, i64 24
  %8 = bitcast i8* %xiv_iv to i64*
  %9 = load i64* %8, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @Perl_sv_2iv(%struct.sv* %5) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  %10 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %sv_flags1 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags1, align 4, !tbaa !4
  %and2 = and i32 %11, 65536
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %cond.false7, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  %sv_any5 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any5, align 8, !tbaa !0
  %xiv_iv6 = getelementptr inbounds i8* %12, i64 24
  %13 = bitcast i8* %xiv_iv6 to i64*
  %14 = load i64* %13, align 8, !tbaa !3
  br label %cond.end9

cond.false7:                                      ; preds = %cond.end
  %call8 = call i64 @Perl_sv_2iv(%struct.sv* %10) #6
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.true4
  %cond10 = phi i64 [ %14, %cond.true4 ], [ %call8, %cond.false7 ]
  %conv11 = trunc i64 %cond10 to i32
  %15 = load i32* @PL_signals, align 4, !tbaa !4
  %and12 = and i32 %15, 1
  %tobool13 = icmp eq i32 %and12, 0
  %call1551 = call i32 @Perl_wait4pid(i32 %conv11, i32* %argflags, i32 %conv) #6
  %cmp52 = icmp eq i32 %call1551, -1
  %or.cond = and i1 %tobool13, %cmp52
  br i1 %or.cond, label %land.rhs, label %if.end22

land.rhs:                                         ; preds = %cond.end9, %while.cond.backedge
  %call17 = call i32* @__errno_location() #6
  %16 = load i32* %call17, align 4, !tbaa !4
  %cmp18 = icmp eq i32 %16, 4
  br i1 %cmp18, label %while.body, label %if.end22

while.body:                                       ; preds = %land.rhs
  %17 = load i32* @PL_sig_pending, align 4, !tbaa !4
  %tobool20 = icmp eq i32 %17, 0
  br i1 %tobool20, label %while.cond.backedge, label %if.then21

if.then21:                                        ; preds = %while.body
  call void @Perl_despatch_signals() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then21, %while.body
  %call15 = call i32 @Perl_wait4pid(i32 %conv11, i32* %argflags, i32 %conv) #6
  %cmp = icmp eq i32 %call15, -1
  br i1 %cmp, label %land.rhs, label %if.end22

if.end22:                                         ; preds = %cond.end9, %land.rhs, %while.cond.backedge
  %result.0 = phi i32 [ -1, %land.rhs ], [ %call15, %while.cond.backedge ], [ %call1551, %cond.end9 ]
  %cmp23 = icmp sgt i32 %result.0, 0
  %18 = load i32* %argflags, align 4, !tbaa !4
  %cond28 = select i1 %cmp23, i32 %18, i32 -1
  %cmp29 = icmp eq i32 %cond28, -1
  %and32 = and i32 %cond28, 65535
  %cond28.and32 = select i1 %cmp29, i32 -1, i32 %and32
  store i32 %cond28.and32, i32* @PL_statusvalue, align 4, !tbaa !4
  %conv34 = sext i32 %result.0 to i64
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %conv34) #6
  %sv_flags35 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %19 = load i32* %sv_flags35, align 4, !tbaa !4
  %and36 = and i32 %19, 16384
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end22
  %call39 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end40

if.end40:                                         ; preds = %if.end22, %if.then38
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %20, i64 0, i32 0
  %21 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %21
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_system() #0 {
entry:
  %n_a = alloca i64, align 8
  %pp = alloca [2 x i32], align 4
  %status = alloca i32, align 4
  %errkid = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %8 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %8, 0
  br i1 %tobool, label %if.end15, label %if.then2

if.then2:                                         ; preds = %entry
  call void @Perl_taint_env() #6
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then2
  %mark.0 = phi %struct.sv** [ %add.ptr, %if.then2 ], [ %incdec.ptr3, %cond.end ]
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  %cmp = icmp ugt %struct.sv** %incdec.ptr3, %0
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %10, 262144
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %cond.false, label %cond.end

cond.false:                                       ; preds = %while.body
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %9) #6
  br label %cond.end

cond.end:                                         ; preds = %while.body, %cond.false
  %11 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool7 = icmp eq i8 %11, 0
  br i1 %tobool7, label %while.cond, label %while.end

while.end:                                        ; preds = %cond.end, %while.cond
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr11 = getelementptr inbounds %struct.sv** %12, i64 %idx.ext
  %13 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool12 = icmp eq i8 %13, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %while.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([7 x i8]* @.str91, i64 0, i64 0)) #6
  br label %if.end15

if.end15:                                         ; preds = %entry, %while.end, %if.then13
  %mark.1 = phi %struct.sv** [ %add.ptr11, %if.then13 ], [ %add.ptr11, %while.end ], [ %add.ptr, %entry ]
  %call16 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null) #6
  %arraydecay = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %call17 = call i32 @pipe(i32* %arraydecay) #6
  %cmp18 = icmp sgt i32 %call17, -1
  %call17.lobit = lshr i32 %call17, 31
  %call17.lobit.not = xor i32 %call17.lobit, 1
  %call23206 = call i32 @Perl_my_fork() #6
  %cmp24207 = icmp eq i32 %call23206, -1
  br i1 %cmp24207, label %while.body26, label %while.end50

while.body26:                                     ; preds = %if.end15, %if.end48
  %call27 = call i32* @__errno_location() #6
  %14 = load i32* %call27, align 4, !tbaa !4
  %cmp28 = icmp eq i32 %14, 11
  br i1 %cmp28, label %if.end48, label %if.then30

if.then30:                                        ; preds = %while.body26
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  call void @Perl_sv_setiv(%struct.sv* %7, i64 -1) #6
  %sv_flags34 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %16 = load i32* %sv_flags34, align 4, !tbaa !4
  %and35 = and i32 %16, 16384
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then30
  %call38 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.then37
  %add.ptr32.sum = add i64 %idx.ext, 1
  %incdec.ptr40 = getelementptr inbounds %struct.sv** %15, i64 %add.ptr32.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr40, align 8, !tbaa !0
  %tobool41 = icmp eq i32 %call17.lobit, 1
  br i1 %tobool41, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end39
  %17 = load i32* %arraydecay, align 4, !tbaa !4
  %call44 = call i32 @close(i32 %17) #6
  %arrayidx45 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %18 = load i32* %arrayidx45, align 4, !tbaa !4
  %call46 = call i32 @close(i32 %18) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %if.then42
  store %struct.sv** %incdec.ptr40, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %19, i64 0, i32 0
  %20 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end48:                                         ; preds = %while.body26
  %call49 = call i32 @sleep(i32 5) #6
  %call23 = call i32 @Perl_my_fork() #6
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %while.body26, label %while.end50

while.end50:                                      ; preds = %if.end48, %if.end15
  %call23.lcssa = phi i32 [ %call23206, %if.end15 ], [ %call23, %if.end48 ]
  %cmp51 = icmp sgt i32 %call23.lcssa, 0
  br i1 %cmp51, label %if.then53, label %if.end118

if.then53:                                        ; preds = %while.end50
  br i1 %cmp18, label %if.then55, label %do.body

if.then55:                                        ; preds = %if.then53
  %arrayidx56 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %21 = load i32* %arrayidx56, align 4, !tbaa !4
  %call57 = call i32 @close(i32 %21) #6
  br label %do.body

do.body:                                          ; preds = %if.then53, %if.then55, %land.rhs
  %call59 = call i32 @Perl_wait4pid(i32 %call23.lcssa, i32* %status, i32 0) #6
  %cmp60 = icmp eq i32 %call59, -1
  br i1 %cmp60, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %call62 = call i32* @__errno_location() #6
  %22 = load i32* %call62, align 4, !tbaa !4
  %cmp63 = icmp eq i32 %22, 4
  br i1 %cmp63, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %land.rhs
  %cmp60.lcssa = phi i1 [ false, %do.body ], [ true, %land.rhs ]
  %23 = load i32* %status, align 4, !tbaa !4
  %cond70 = select i1 %cmp60.lcssa, i32 -1, i32 %23
  %cmp71 = icmp eq i32 %cond70, -1
  %and74 = and i32 %cond70, 65535
  %cond70.and74 = select i1 %cmp71, i32 -1, i32 %and74
  store i32 %cond70.and74, i32* @PL_statusvalue, align 4, !tbaa !4
  call void @Perl_do_execfree() #6
  %24 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br i1 %cmp18, label %while.cond80.preheader, label %if.end108

while.cond80.preheader:                           ; preds = %do.end
  %25 = bitcast i32* %errkid to i8*
  br label %while.body84

while.cond80:                                     ; preds = %while.body84
  %conv81 = sext i32 %add to i64
  %cmp82 = icmp ult i32 %add, 4
  br i1 %cmp82, label %while.body84, label %while.end95

while.body84:                                     ; preds = %while.cond80.preheader, %while.cond80
  %conv81204 = phi i64 [ 0, %while.cond80.preheader ], [ %conv81, %while.cond80 ]
  %n.0203 = phi i32 [ 0, %while.cond80.preheader ], [ %add, %while.cond80 ]
  %26 = load i32* %arraydecay, align 4, !tbaa !4
  %add.ptr87 = getelementptr inbounds i8* %25, i64 %conv81204
  %sub = sub i64 4, %conv81204
  %call89 = call i64 @read(i32 %26, i8* %add.ptr87, i64 %sub) #6
  %conv90 = trunc i64 %call89 to i32
  %cmp91 = icmp slt i32 %conv90, 1
  %add = add nsw i32 %conv90, %n.0203
  br i1 %cmp91, label %while.end95, label %while.cond80

while.end95:                                      ; preds = %while.body84, %while.cond80
  %n.0.lcssa = phi i32 [ %n.0203, %while.body84 ], [ %add, %while.cond80 ]
  %27 = load i32* %arraydecay, align 4, !tbaa !4
  %call97 = call i32 @close(i32 %27) #6
  switch i32 %n.0.lcssa, label %if.then103 [
    i32 0, label %if.end108
    i32 4, label %if.end105
  ]

if.then103:                                       ; preds = %while.end95
  %call104 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([28 x i8]* @.str92, i64 0, i64 0)) #6
  br label %return

if.end105:                                        ; preds = %while.end95
  %28 = load i32* %errkid, align 4, !tbaa !4
  %call106 = call i32* @__errno_location() #6
  store i32 %28, i32* %call106, align 4, !tbaa !4
  store i32 -1, i32* @PL_statusvalue, align 4, !tbaa !4
  br label %if.end108

if.end108:                                        ; preds = %while.end95, %do.end, %if.end105
  %29 = load i32* @PL_statusvalue, align 4, !tbaa !4
  %conv109 = sext i32 %29 to i64
  call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv109) #6
  %sv_flags110 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %30 = load i32* %sv_flags110, align 4, !tbaa !4
  %and111 = and i32 %30, 16384
  %tobool112 = icmp eq i32 %and111, 0
  br i1 %tobool112, label %if.end115, label %if.then113

if.then113:                                       ; preds = %if.end108
  %call114 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end115

if.end115:                                        ; preds = %if.end108, %if.then113
  %add.ptr77.sum = add i64 %idx.ext, 1
  %incdec.ptr116 = getelementptr inbounds %struct.sv** %24, i64 %add.ptr77.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr116, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr116, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next117 = getelementptr inbounds %struct.op* %31, i64 0, i32 0
  %32 = load %struct.op** %op_next117, align 8, !tbaa !0
  br label %return

if.end118:                                        ; preds = %while.end50
  br i1 %cmp18, label %if.then120, label %if.end125

if.then120:                                       ; preds = %if.end118
  %33 = load i32* %arraydecay, align 4, !tbaa !4
  %call122 = call i32 @close(i32 %33) #6
  %arrayidx123 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %34 = load i32* %arrayidx123, align 4, !tbaa !4
  %call124 = call i32 (i32, i32, ...)* @fcntl(i32 %34, i32 2, i32 1) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end118
  %35 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %35, i64 0, i32 6
  %36 = load i8* %op_flags, align 1, !tbaa !1
  %and127 = and i8 %36, 64
  %tobool128 = icmp eq i8 %and127, 0
  br i1 %tobool128, label %if.else, label %if.then129

if.then129:                                       ; preds = %if.end125
  %incdec.ptr130 = getelementptr inbounds %struct.sv** %mark.1, i64 1
  %37 = load %struct.sv** %incdec.ptr130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %38 = load i32* %arrayidx131, align 4, !tbaa !4
  %call132 = call signext i8 @Perl_do_aexec5(%struct.sv* %37, %struct.sv** %incdec.ptr130, %struct.sv** %0, i32 %38, i32 %call17.lobit.not) #6
  br label %if.end162

if.else:                                          ; preds = %if.end125
  %sub.ptr.lhs.cast134 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast135 = ptrtoint %struct.sv** %mark.1 to i64
  %sub.ptr.sub136 = sub i64 %sub.ptr.lhs.cast134, %sub.ptr.rhs.cast135
  %cmp138 = icmp eq i64 %sub.ptr.sub136, 8
  br i1 %cmp138, label %if.else144, label %if.then140

if.then140:                                       ; preds = %if.else
  %arrayidx141 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %39 = load i32* %arrayidx141, align 4, !tbaa !4
  %call142 = call signext i8 @Perl_do_aexec5(%struct.sv* null, %struct.sv** %mark.1, %struct.sv** %0, i32 %39, i32 %call17.lobit.not) #6
  br label %if.end162

if.else144:                                       ; preds = %if.else
  %40 = load %struct.sv** %0, align 8, !tbaa !0
  %call145 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %40) #6
  store %struct.sv* %call145, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags146 = getelementptr inbounds %struct.sv* %call145, i64 0, i32 2
  %41 = load i32* %sv_flags146, align 4, !tbaa !4
  %and147 = and i32 %41, 262144
  %cmp148 = icmp eq i32 %and147, 0
  br i1 %cmp148, label %cond.false154, label %cond.true150

cond.true150:                                     ; preds = %if.else144
  %sv_any151 = getelementptr inbounds %struct.sv* %call145, i64 0, i32 0
  %42 = load i8** %sv_any151, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %42, i64 8
  %43 = bitcast i8* %xpv_cur to i64*
  %44 = load i64* %43, align 8, !tbaa !3
  store i64 %44, i64* %n_a, align 8, !tbaa !3
  %xpv_pv153 = bitcast i8* %42 to i8**
  %45 = load i8** %xpv_pv153, align 8, !tbaa !0
  br label %cond.end156

cond.false154:                                    ; preds = %if.else144
  %call155 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call145, i64* %n_a, i32 2) #6
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false154, %cond.true150
  %cond157 = phi i8* [ %45, %cond.true150 ], [ %call155, %cond.false154 ]
  %arrayidx158 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %46 = load i32* %arrayidx158, align 4, !tbaa !4
  %call159 = call signext i8 @Perl_do_exec3(i8* %cond157, i32 %46, i32 %call17.lobit.not) #6
  br label %if.end162

if.end162:                                        ; preds = %if.then140, %cond.end156, %if.then129
  call void @_exit(i32 -1) #8
  unreachable

return:                                           ; preds = %if.end115, %if.then103, %if.end47
  %retval.0 = phi %struct.op* [ %20, %if.end47 ], [ %call104, %if.then103 ], [ %32, %if.end115 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_taint_env() #1

; Function Attrs: optsize
declare i32 @pipe(i32*) #1

; Function Attrs: optsize
declare i32 @close(i32) #1

; Function Attrs: optsize
declare i32 @sleep(i32) #1

; Function Attrs: optsize
declare void @Perl_do_execfree() #1

; Function Attrs: optsize
declare signext i8 @Perl_do_aexec5(%struct.sv*, %struct.sv**, %struct.sv**, i32, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_do_exec3(i8*, i32, i32) #1

; Function Attrs: noreturn optsize
declare void @_exit(i32) #5

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_exec() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %8 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %8, 0
  br i1 %tobool, label %if.end15, label %if.then2

if.then2:                                         ; preds = %entry
  call void @Perl_taint_env() #6
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then2
  %mark.0 = phi %struct.sv** [ %add.ptr, %if.then2 ], [ %incdec.ptr3, %cond.end ]
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  %cmp = icmp ugt %struct.sv** %incdec.ptr3, %0
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load %struct.sv** %incdec.ptr3, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %10, 262144
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %cond.false, label %cond.end

cond.false:                                       ; preds = %while.body
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %9) #6
  br label %cond.end

cond.end:                                         ; preds = %while.body, %cond.false
  %11 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool7 = icmp eq i8 %11, 0
  br i1 %tobool7, label %while.cond, label %while.end

while.end:                                        ; preds = %cond.end, %while.cond
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr11 = getelementptr inbounds %struct.sv** %12, i64 %idx.ext
  %13 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool12 = icmp eq i8 %13, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %while.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str93, i64 0, i64 0)) #6
  br label %if.end15

if.end15:                                         ; preds = %entry, %while.end, %if.then13
  %mark.1 = phi %struct.sv** [ %add.ptr11, %if.then13 ], [ %add.ptr11, %while.end ], [ %add.ptr, %entry ]
  %call16 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null) #6
  %14 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %14, i64 0, i32 6
  %15 = load i8* %op_flags, align 1, !tbaa !1
  %and18 = and i8 %15, 64
  %tobool19 = icmp eq i8 %and18, 0
  br i1 %tobool19, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  %incdec.ptr21 = getelementptr inbounds %struct.sv** %mark.1, i64 1
  %16 = load %struct.sv** %incdec.ptr21, align 8, !tbaa !0
  %call22 = call signext i8 @Perl_do_aexec(%struct.sv* %16, %struct.sv** %incdec.ptr21, %struct.sv** %0) #6
  br label %if.end50

if.else:                                          ; preds = %if.end15
  %sub.ptr.lhs.cast24 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast25 = ptrtoint %struct.sv** %mark.1 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp28 = icmp eq i64 %sub.ptr.sub26, 8
  br i1 %cmp28, label %if.else33, label %if.then30

if.then30:                                        ; preds = %if.else
  %call31 = call signext i8 @Perl_do_aexec(%struct.sv* null, %struct.sv** %mark.1, %struct.sv** %0) #6
  br label %if.end50

if.else33:                                        ; preds = %if.else
  %17 = load %struct.sv** %0, align 8, !tbaa !0
  %call34 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %17) #6
  store %struct.sv* %call34, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags35 = getelementptr inbounds %struct.sv* %call34, i64 0, i32 2
  %18 = load i32* %sv_flags35, align 4, !tbaa !4
  %and36 = and i32 %18, 262144
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %cond.false43, label %cond.true39

cond.true39:                                      ; preds = %if.else33
  %sv_any40 = getelementptr inbounds %struct.sv* %call34, i64 0, i32 0
  %19 = load i8** %sv_any40, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %19, i64 8
  %20 = bitcast i8* %xpv_cur to i64*
  %21 = load i64* %20, align 8, !tbaa !3
  store i64 %21, i64* %n_a, align 8, !tbaa !3
  %xpv_pv42 = bitcast i8* %19 to i8**
  %22 = load i8** %xpv_pv42, align 8, !tbaa !0
  br label %cond.end45

cond.false43:                                     ; preds = %if.else33
  %call44 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call34, i64* %n_a, i32 2) #6
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false43, %cond.true39
  %cond46 = phi i8* [ %22, %cond.true39 ], [ %call44, %cond.false43 ]
  %call47 = call signext i8 @Perl_do_exec(i8* %cond46) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then30, %cond.end45, %if.then20
  %value.0.in = phi i8 [ %call22, %if.then20 ], [ %call31, %if.then30 ], [ %call47, %cond.end45 ]
  %23 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %conv53 = sext i8 %value.0.in to i64
  call void @Perl_sv_setiv(%struct.sv* %7, i64 %conv53) #6
  %sv_flags54 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %24 = load i32* %sv_flags54, align 4, !tbaa !4
  %and55 = and i32 %24, 16384
  %tobool56 = icmp eq i32 %and55, 0
  br i1 %tobool56, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end50
  %call58 = call i32 @Perl_mg_set(%struct.sv* %7) #6
  br label %if.end59

if.end59:                                         ; preds = %if.end50, %if.then57
  %add.ptr52.sum = add i64 %idx.ext, 1
  %incdec.ptr60 = getelementptr inbounds %struct.sv** %23, i64 %add.ptr52.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr60, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr60, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %25 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %25, i64 0, i32 0
  %26 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %26
}

; Function Attrs: optsize
declare signext i8 @Perl_do_aexec(%struct.sv*, %struct.sv**, %struct.sv**) #1

; Function Attrs: optsize
declare signext i8 @Perl_do_exec(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_kill() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str94, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getppid() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str95, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getpgrp() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str96, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_setpgrp() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str97, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getpriority() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str98, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_setpriority() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str99, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_time() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call i64 @time(i64* null) #6
  tail call void @Perl_sv_setiv(%struct.sv* %4, i64 %call) #6
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %5, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %6 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %sp.0 = phi %struct.sv** [ %call3, %if.then2 ], [ %0, %if.end ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %7, i64 0, i32 0
  %8 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %8
}

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_tms() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str100, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_localtime() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_gmtime() #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gmtime() #0 {
entry:
  %when = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @time(i64* %when) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !4
  %and2 = and i32 %4, 65536
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv to i64*
  %7 = load i64* %6, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call3 = call i64 @Perl_sv_2iv(%struct.sv* %3) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call3, %cond.false ]
  store i64 %cond, i64* %when, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %cond.end ]
  %8 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %8, i64 0, i32 4
  %9 = load i16* %op_type, align 2, !tbaa !5
  %cmp5 = icmp eq i16 %9, 294
  br i1 %cmp5, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %call8 = call %struct.tm* @localtime(i64* %when) #6
  br label %if.end11

if.else9:                                         ; preds = %if.end
  %call10 = call %struct.tm* @gmtime(i64* %when) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %tmbuf.0 = phi %struct.tm* [ %call8, %if.then7 ], [ %call10, %if.else9 ]
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %10, i64 0, i32 6
  %11 = load i8* %op_flags, align 1, !tbaa !1
  %conv12 = zext i8 %11 to i32
  %and13 = and i32 %conv12, 3
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %cond.false22, label %cond.true15

cond.true15:                                      ; preds = %if.end11
  %cmp19 = icmp eq i32 %and13, 3
  %cond21 = zext i1 %cmp19 to i32
  br label %cond.end24

cond.false22:                                     ; preds = %if.end11
  %call23 = call i32 @Perl_dowantarray() #6
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false22, %cond.true15
  %cond25 = phi i32 [ %cond21, %cond.true15 ], [ %call23, %cond.false22 ]
  %cmp26 = icmp eq i32 %cond25, 1
  br i1 %cmp26, label %if.else48, label %if.then28

if.then28:                                        ; preds = %cond.end24
  %12 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %12 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp29 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then28
  %call32 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28
  %sp.1 = phi %struct.sv** [ %call32, %if.then31 ], [ %sp.0, %if.then28 ]
  %13 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %add = add nsw i32 %13, 1
  %14 = load i32* @PL_tmps_max, align 4, !tbaa !4
  %cmp34 = icmp slt i32 %add, %14
  br i1 %cmp34, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @Perl_tmps_grow(i32 1) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.then36
  %tobool38 = icmp eq %struct.tm* %tmbuf.0, null
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %incdec.ptr40 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr40, align 8, !tbaa !0
  br label %return

if.end41:                                         ; preds = %if.end37
  %tm_wday = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 6
  %15 = load i32* %tm_wday, align 4, !tbaa !4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [7 x i8*]* @Perl_pp_gmtime.dayname, i64 0, i64 %idxprom
  %16 = load i8** %arrayidx, align 8, !tbaa !0
  %tm_mon = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 4
  %17 = load i32* %tm_mon, align 4, !tbaa !4
  %idxprom42 = sext i32 %17 to i64
  %arrayidx43 = getelementptr inbounds [12 x i8*]* @Perl_pp_gmtime.monname, i64 0, i64 %idxprom42
  %18 = load i8** %arrayidx43, align 8, !tbaa !0
  %tm_mday = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 3
  %19 = load i32* %tm_mday, align 4, !tbaa !4
  %tm_hour = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 2
  %20 = load i32* %tm_hour, align 4, !tbaa !4
  %tm_min = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 1
  %21 = load i32* %tm_min, align 4, !tbaa !4
  %tm_sec = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 0
  %22 = load i32* %tm_sec, align 4, !tbaa !4
  %tm_year = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 5
  %23 = load i32* %tm_year, align 4, !tbaa !4
  %add44 = add nsw i32 %23, 1900
  %call45 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([28 x i8]* @.str120, i64 0, i64 0), i8* %16, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %add44) #6
  %call46 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call45) #6
  %incdec.ptr47 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call46, %struct.sv** %incdec.ptr47, align 8, !tbaa !0
  br label %return

if.else48:                                        ; preds = %cond.end24
  %tobool49 = icmp eq %struct.tm* %tmbuf.0, null
  br i1 %tobool49, label %return, label %if.then50

if.then50:                                        ; preds = %if.else48
  %24 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast51 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.rhs.cast52 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %cmp55 = icmp slt i64 %sub.ptr.sub53, 72
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then50
  %call58 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 9) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then50
  %sp.2 = phi %struct.sv** [ %call58, %if.then57 ], [ %sp.0, %if.then50 ]
  %25 = load i32* @PL_tmps_ix, align 4, !tbaa !4
  %add60 = add nsw i32 %25, 9
  %26 = load i32* @PL_tmps_max, align 4, !tbaa !4
  %cmp61 = icmp slt i32 %add60, %26
  br i1 %cmp61, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @Perl_tmps_grow(i32 9) #6
  br label %if.end64

if.end64:                                         ; preds = %if.end59, %if.then63
  %tm_sec65 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 0
  %27 = load i32* %tm_sec65, align 4, !tbaa !4
  %conv66 = sext i32 %27 to i64
  %call67 = call %struct.sv* @Perl_newSViv(i64 %conv66) #6
  %call68 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67) #6
  %incdec.ptr69 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call68, %struct.sv** %incdec.ptr69, align 8, !tbaa !0
  %tm_min70 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 1
  %28 = load i32* %tm_min70, align 4, !tbaa !4
  %conv71 = sext i32 %28 to i64
  %call72 = call %struct.sv* @Perl_newSViv(i64 %conv71) #6
  %call73 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call72) #6
  %incdec.ptr74 = getelementptr inbounds %struct.sv** %sp.2, i64 2
  store %struct.sv* %call73, %struct.sv** %incdec.ptr74, align 8, !tbaa !0
  %tm_hour75 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 2
  %29 = load i32* %tm_hour75, align 4, !tbaa !4
  %conv76 = sext i32 %29 to i64
  %call77 = call %struct.sv* @Perl_newSViv(i64 %conv76) #6
  %call78 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call77) #6
  %incdec.ptr79 = getelementptr inbounds %struct.sv** %sp.2, i64 3
  store %struct.sv* %call78, %struct.sv** %incdec.ptr79, align 8, !tbaa !0
  %tm_mday80 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 3
  %30 = load i32* %tm_mday80, align 4, !tbaa !4
  %conv81 = sext i32 %30 to i64
  %call82 = call %struct.sv* @Perl_newSViv(i64 %conv81) #6
  %call83 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call82) #6
  %incdec.ptr84 = getelementptr inbounds %struct.sv** %sp.2, i64 4
  store %struct.sv* %call83, %struct.sv** %incdec.ptr84, align 8, !tbaa !0
  %tm_mon85 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 4
  %31 = load i32* %tm_mon85, align 4, !tbaa !4
  %conv86 = sext i32 %31 to i64
  %call87 = call %struct.sv* @Perl_newSViv(i64 %conv86) #6
  %call88 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call87) #6
  %incdec.ptr89 = getelementptr inbounds %struct.sv** %sp.2, i64 5
  store %struct.sv* %call88, %struct.sv** %incdec.ptr89, align 8, !tbaa !0
  %tm_year90 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 5
  %32 = load i32* %tm_year90, align 4, !tbaa !4
  %conv91 = sext i32 %32 to i64
  %call92 = call %struct.sv* @Perl_newSViv(i64 %conv91) #6
  %call93 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call92) #6
  %incdec.ptr94 = getelementptr inbounds %struct.sv** %sp.2, i64 6
  store %struct.sv* %call93, %struct.sv** %incdec.ptr94, align 8, !tbaa !0
  %tm_wday95 = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 6
  %33 = load i32* %tm_wday95, align 4, !tbaa !4
  %conv96 = sext i32 %33 to i64
  %call97 = call %struct.sv* @Perl_newSViv(i64 %conv96) #6
  %call98 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call97) #6
  %incdec.ptr99 = getelementptr inbounds %struct.sv** %sp.2, i64 7
  store %struct.sv* %call98, %struct.sv** %incdec.ptr99, align 8, !tbaa !0
  %tm_yday = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 7
  %34 = load i32* %tm_yday, align 4, !tbaa !4
  %conv100 = sext i32 %34 to i64
  %call101 = call %struct.sv* @Perl_newSViv(i64 %conv100) #6
  %call102 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call101) #6
  %incdec.ptr103 = getelementptr inbounds %struct.sv** %sp.2, i64 8
  store %struct.sv* %call102, %struct.sv** %incdec.ptr103, align 8, !tbaa !0
  %tm_isdst = getelementptr inbounds %struct.tm* %tmbuf.0, i64 0, i32 8
  %35 = load i32* %tm_isdst, align 4, !tbaa !4
  %conv104 = sext i32 %35 to i64
  %call105 = call %struct.sv* @Perl_newSViv(i64 %conv104) #6
  %call106 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call105) #6
  %incdec.ptr107 = getelementptr inbounds %struct.sv** %sp.2, i64 9
  store %struct.sv* %call106, %struct.sv** %incdec.ptr107, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else48, %if.end41, %if.end64, %if.then39
  %storemerge = phi %struct.sv** [ %incdec.ptr40, %if.then39 ], [ %incdec.ptr47, %if.end41 ], [ %incdec.ptr107, %if.end64 ], [ %sp.0, %if.else48 ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: optsize
declare %struct.tm* @gmtime(i64*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_alarm() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sleep() #0 {
entry:
  %lasttime = alloca i64, align 8
  %when = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call i64 @time(i64* %lasttime) #6
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @sleep(i32 2147450879) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %7 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %7, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !4
  %and3 = and i32 %8, 65536
  %tobool = icmp eq i32 %and3, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call4 = call i64 @Perl_sv_2iv(%struct.sv* %7) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %call4, %cond.false ]
  %conv5 = trunc i64 %cond to i32
  %call6 = call i32 @sleep(i32 %conv5) #6
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr, %cond.end ]
  %call7 = call i64 @time(i64* %when) #6
  %12 = load i64* %when, align 8, !tbaa !3
  %13 = load i64* %lasttime, align 8, !tbaa !3
  %sub = sub nsw i64 %12, %13
  call void @Perl_sv_setiv(%struct.sv* %4, i64 %sub) #6
  %sv_flags8 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %14 = load i32* %sv_flags8, align 4, !tbaa !4
  %and9 = and i32 %14, 16384
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  %call12 = call i32 @Perl_mg_set(%struct.sv* %4) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then11
  %15 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp14 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  %sp.1 = phi %struct.sv** [ %call17, %if.then16 ], [ %sp.0, %if.end13 ]
  %incdec.ptr19 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr19, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr19, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %16, i64 0, i32 0
  %17 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %17
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_shmget() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_semget() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_shmctl() #0 {
entry:
  %call.i.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_semctl() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_shmread() #0 {
entry:
  %call.i.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_shmwrite() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_msgget() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_msgctl() #0 {
entry:
  %call.i.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_msgsnd() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_msgrcv() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_semop() #0 {
entry:
  %call.i = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([48 x i8]* @.str122, i64 0, i64 0)) #6
  ret %struct.op* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ghbyname() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str123, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ghbyaddr() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str124, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ghostent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str125, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gnbyname() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str126, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gnbyaddr() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str127, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gnetent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str128, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gpbyname() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str129, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gpbynumber() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str130, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gprotoent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str131, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gsbyname() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str132, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gsbyport() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str133, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gservent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str134, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_shostent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str135, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_snetent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str136, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sprotoent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str137, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sservent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str138, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ehostent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str139, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_enetent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str140, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_eprotoent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str141, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_eservent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_sock_func, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str142, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gpwnam() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str143, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gpwuid() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str144, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gpwent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str145, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_spwent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str146, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_epwent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str147, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ggrnam() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str148, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ggrgid() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str149, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_ggrent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str150, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sgrent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str151, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_egrent() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str152, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_getlogin() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str153, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_syscall() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_func, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str154, i64 0, i64 0)) #6
  ret %struct.op* %call
}

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare void @Perl_push_return(%struct.op*) #1

; Function Attrs: optsize
declare i32 @Perl_cxinc() #1

; Function Attrs: optsize
declare void @Perl_savestack_grow() #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
