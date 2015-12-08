; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/doio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.interpreter = type { i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@PL_forkprocess = external global i32
@PL_op = external global %struct.op*
@PL_maxsysfd = external global i32
@PL_stderrgv = external global %struct.gv*
@.str = private unnamed_addr constant [50 x i8] c"Warning: unable to close filehandle %s properly.\0A\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"panic: sysopen with multiple args\00", align 1
@PL_tainting = external global i8
@.str2 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str5 = private unnamed_addr constant [27 x i8] c"Unknown open() mode '%.*s'\00", align 1
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@.str6 = private unnamed_addr constant [30 x i8] c"Missing command in piped open\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"piped open\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"Can't open bidirectional pipe\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c"More than one argument to '%c&' open\00", align 1
@.str12 = private unnamed_addr constant [37 x i8] c"More than one argument to '>%c' open\00", align 1
@.str13 = private unnamed_addr constant [37 x i8] c"More than one argument to '<%c' open\00", align 1
@PL_warn_nl = external constant [0 x i8]
@.str14 = private unnamed_addr constant [47 x i8] c"Filehandle STD%s reopened as %s only for input\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str17 = private unnamed_addr constant [48 x i8] c"Filehandle STDIN reopened as %s only for output\00", align 1
@PL_statbuf = external global %struct.stat
@PL_fdpid = external global %struct.av*
@PL_argvoutgv = external global %struct.gv*
@.str18 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@PL_inplace = external global i8*
@PL_argvout_stack = external global %struct.av*
@PL_defoutgv = external global %struct.gv*
@PL_Sv = external global %struct.sv*
@PL_filemode = external global i32
@PL_oldname = external global i8*
@PL_lastfd = external global i32
@.str19 = private unnamed_addr constant [13 x i8] c"inplace open\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str21 = private unnamed_addr constant [48 x i8] c"Can't do inplace edit: %s is not a regular file\00", align 1
@.str22 = private unnamed_addr constant [41 x i8] c"Can't rename %s to %_: %s, skipping file\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"Can't remove %s: %s, skipping file\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str25 = private unnamed_addr constant [32 x i8] c"Can't do inplace edit on %s: %s\00", align 1
@.str26 = private unnamed_addr constant [18 x i8] c"Can't open %s: %s\00", align 1
@PL_argvgv = external global %struct.gv*
@PL_statusvalue = external global i32
@.str27 = private unnamed_addr constant [5 x i8] c":raw\00", align 1
@PL_ofmt = external global i8*
@.str28 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str30 = private unnamed_addr constant [24 x i8] c"Wide character in print\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_stack_max = external global %struct.sv**
@PL_statgv = external global %struct.gv*
@PL_statname = external global %struct.sv*
@PL_laststype = external global i32
@PL_statcache = external global %struct.stat
@PL_laststatval = external global i32
@PL_defgv = external global %struct.gv*
@.str31 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str32 = private unnamed_addr constant [40 x i8] c"The stat preceding -l _ wasn't an lstat\00", align 1
@.str33 = private unnamed_addr constant [27 x i8] c"Use of -l on filehandle %s\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@PL_Argv = external global i8**
@.str35 = private unnamed_addr constant [20 x i8] c"Can't exec \22%s\22: %s\00", align 1
@PL_Cmd = external global i8*
@PL_cshname = external global i8*
@PL_cshlen = external global i32
@.str36 = private unnamed_addr constant [4 x i8] c" -c\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str41 = private unnamed_addr constant [21 x i8] c"$&*(){}[]'\22;\5C|?<>~`\0A\00", align 1
@PL_sh_path = external global i8*
@.str42 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@PL_tainted = external global i8
@.str43 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@PL_euid = external global i32
@PL_unsafe = external global i8
@PL_uid = external global i32
@PL_egid = external global i32
@PL_gid = external global i32
@.str45 = private unnamed_addr constant [27 x i8] c" -cf 'set nonomatch; glob \00", align 1
@.str46 = private unnamed_addr constant [16 x i8] c"' 2>/dev/null |\00", align 1
@PL_last_in_gv = external global %struct.gv*

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_open(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp) #0 {
entry:
  %call = tail call signext i8 @Perl_do_openn(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp, %struct.sv** null, i32 0) #7
  ret i8 %call
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_openn(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp, %struct.sv** %svp, i32 %num_svs) #0 {
entry:
  %writing = alloca i32, align 4
  %mode = alloca i64, align 8
  %tmpcast = bitcast i64* %mode to [8 x i8]*
  %namesv = alloca %struct.sv*, align 8
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %cond.false10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true1, label %cond.false10

land.lhs.true1:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool2 = icmp eq %struct.gp* %3, null
  br i1 %tobool2, label %cond.false10, label %cond.true

cond.true:                                        ; preds = %land.lhs.true1
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool5 = icmp eq %struct.io* %4, null
  br i1 %tobool5, label %cond.false10, label %cond.end

cond.false10:                                     ; preds = %cond.true, %land.lhs.true1, %entry, %land.lhs.true
  %call = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %gv) #8
  %sv_any11 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %5 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !3
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp12, align 8, !tbaa !3
  %gp_io13 = getelementptr inbounds %struct.gp* %6, i64 0, i32 2
  %7 = load %struct.io** %gp_io13, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cond.false10
  %cond = phi %struct.io* [ %7, %cond.false10 ], [ %4, %cond.true ]
  store i32 0, i32* %writing, align 4, !tbaa !0
  %arraydecay = bitcast i64* %mode to i8*
  store i64 0, i64* %mode, align 8
  store i32 1, i32* @PL_forkprocess, align 4, !tbaa !0
  %8 = load %struct.op** @PL_op, align 8, !tbaa !3
  %tobool14 = icmp eq %struct.op* %8, null
  br i1 %tobool14, label %if.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %cond.end
  %op_type = getelementptr inbounds %struct.op* %8, i64 0, i32 4
  %9 = load i16* %op_type, align 2, !tbaa !4
  %cmp16 = icmp eq i16 %9, 191
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true15
  %op_private = getelementptr inbounds %struct.op* %8, i64 0, i32 7
  %10 = load i8* %op_private, align 1, !tbaa !1
  %and19 = and i8 %10, 16
  %and22 = and i8 %10, 32
  %and25 = and i8 %10, 64
  %and28 = and i8 %10, -128
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then, %land.lhs.true15
  %in_raw.0 = phi i8 [ %and19, %if.then ], [ 0, %land.lhs.true15 ], [ 0, %cond.end ]
  %in_crlf.0 = phi i8 [ %and22, %if.then ], [ 0, %land.lhs.true15 ], [ 0, %cond.end ]
  %out_raw.0 = phi i8 [ %and25, %if.then ], [ 0, %land.lhs.true15 ], [ 0, %cond.end ]
  %out_crlf.0 = phi i8 [ %and28, %if.then ], [ 0, %land.lhs.true15 ], [ 0, %cond.end ]
  %sv_any30 = getelementptr inbounds %struct.io* %cond, i64 0, i32 0
  %11 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %11, i64 0, i32 7
  %12 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool31 = icmp eq %struct._PerlIO** %12, null
  br i1 %tobool31, label %if.end144, label %if.then32

if.then32:                                        ; preds = %if.end
  %call35 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %12) #8
  %13 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 21
  %14 = load i8* %xio_type, align 1, !tbaa !1
  %cmp38 = icmp eq i8 %14, 45
  br i1 %cmp38, label %if.end139, label %if.else

if.else:                                          ; preds = %if.then32
  %cmp41 = icmp slt i32 %call35, 0
  %15 = load i32* @PL_maxsysfd, align 4, !tbaa !0
  %cmp44 = icmp sgt i32 %call35, %15
  %or.cond1892 = or i1 %cmp41, %cmp44
  br i1 %or.cond1892, label %if.else52, label %if.then46

if.then46:                                        ; preds = %if.else
  %xio_ifp48 = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 7
  %16 = load %struct._PerlIO*** %xio_ifp48, align 8, !tbaa !3
  %xio_ofp = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 8
  %17 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !3
  br label %if.end139

if.else52:                                        ; preds = %if.else
  %cmp56 = icmp eq i8 %14, 124
  %xio_ifp60 = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 7
  %18 = load %struct._PerlIO*** %xio_ifp60, align 8, !tbaa !3
  br i1 %cmp56, label %if.then58, label %if.else62

if.then58:                                        ; preds = %if.else52
  %call61 = call i32 @Perl_my_pclose(%struct._PerlIO** %18) #8
  br label %if.end92

if.else62:                                        ; preds = %if.else52
  %xio_ofp66 = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 8
  %19 = load %struct._PerlIO*** %xio_ofp66, align 8, !tbaa !3
  %cmp67 = icmp eq %struct._PerlIO** %18, %19
  br i1 %cmp67, label %if.else85, label %if.then69

if.then69:                                        ; preds = %if.else62
  %tobool72 = icmp eq %struct._PerlIO** %19, null
  br i1 %tobool72, label %if.else80, label %if.then73

if.then73:                                        ; preds = %if.then69
  %call76 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %19) #8
  %20 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ifp78 = getelementptr inbounds %struct.xpvio* %20, i64 0, i32 7
  %21 = load %struct._PerlIO*** %xio_ifp78, align 8, !tbaa !3
  %call79 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %21) #8
  br label %if.end92

if.else80:                                        ; preds = %if.then69
  %call83 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %18) #8
  br label %if.end92

if.else85:                                        ; preds = %if.else62
  %call88 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %18) #8
  br label %if.end92

if.end92:                                         ; preds = %if.else85, %if.else80, %if.then73, %if.then58
  %result.0 = phi i32 [ %call61, %if.then58 ], [ %call76, %if.then73 ], [ %call83, %if.else80 ], [ %call88, %if.else85 ]
  %cmp93 = icmp eq i32 %result.0, -1
  %22 = load i32* @PL_maxsysfd, align 4, !tbaa !0
  %cmp96 = icmp sgt i32 %call35, %22
  %or.cond1894 = and i1 %cmp93, %cmp96
  br i1 %or.cond1894, label %if.then98, label %if.end139

if.then98:                                        ; preds = %if.end92
  %23 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !3
  %tobool99 = icmp eq %struct.gv* %23, null
  br i1 %tobool99, label %cond.false123, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.then98
  %sv_flags101 = getelementptr inbounds %struct.gv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags101, align 4, !tbaa !0
  %and102 = and i32 %24, 255
  %cmp103 = icmp eq i32 %and102, 13
  br i1 %cmp103, label %land.lhs.true105, label %cond.false123

land.lhs.true105:                                 ; preds = %land.lhs.true100
  %sv_any106 = getelementptr inbounds %struct.gv* %23, i64 0, i32 0
  %25 = load %struct.xpvgv** %sv_any106, align 8, !tbaa !3
  %xgv_gp107 = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 7
  %26 = load %struct.gp** %xgv_gp107, align 8, !tbaa !3
  %gp_io108 = getelementptr inbounds %struct.gp* %26, i64 0, i32 2
  %27 = load %struct.io** %gp_io108, align 8, !tbaa !3
  %tobool109 = icmp eq %struct.io* %27, null
  br i1 %tobool109, label %cond.false123, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %land.lhs.true105
  %sv_any114 = getelementptr inbounds %struct.io* %27, i64 0, i32 0
  %28 = load %struct.xpvio** %sv_any114, align 8, !tbaa !3
  %xio_ofp115 = getelementptr inbounds %struct.xpvio* %28, i64 0, i32 8
  %29 = load %struct._PerlIO*** %xio_ofp115, align 8, !tbaa !3
  %tobool116 = icmp eq %struct._PerlIO** %29, null
  br i1 %tobool116, label %cond.false123, label %cond.end125

cond.false123:                                    ; preds = %land.lhs.true110, %land.lhs.true105, %if.then98, %land.lhs.true100
  %call124 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end125

cond.end125:                                      ; preds = %land.lhs.true110, %cond.false123
  %cond126 = phi %struct._PerlIO** [ %call124, %cond.false123 ], [ %29, %land.lhs.true110 ]
  %sv_any127 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %30 = load %struct.xpvgv** %sv_any127, align 8, !tbaa !3
  %xgv_gp128 = getelementptr inbounds %struct.xpvgv* %30, i64 0, i32 7
  %31 = load %struct.gp** %xgv_gp128, align 8, !tbaa !3
  %gp_egv = getelementptr inbounds %struct.gp* %31, i64 0, i32 6
  %32 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  %tobool129 = icmp eq %struct.gv* %32, null
  %gv. = select i1 %tobool129, %struct.gv* %gv, %struct.gv* %32
  %sv_any137 = getelementptr inbounds %struct.gv* %gv., i64 0, i32 0
  %33 = load %struct.xpvgv** %sv_any137, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 8
  %34 = load i8** %xgv_name, align 8, !tbaa !3
  %call138 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond126, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i8* %34) #8
  br label %if.end139

if.end139:                                        ; preds = %if.end92, %if.then32, %if.then46, %cond.end125
  %saveifp.01914 = phi %struct._PerlIO** [ null, %cond.end125 ], [ %16, %if.then46 ], [ null, %if.then32 ], [ null, %if.end92 ]
  %saveofp.01913 = phi %struct._PerlIO** [ null, %cond.end125 ], [ %17, %if.then46 ], [ null, %if.then32 ], [ null, %if.end92 ]
  %savefd.01912 = phi i32 [ -1, %cond.end125 ], [ %call35, %if.then46 ], [ -1, %if.then32 ], [ -1, %if.end92 ]
  %savetype.01911 = phi i8 [ 32, %cond.end125 ], [ %14, %if.then46 ], [ 32, %if.then32 ], [ 32, %if.end92 ]
  %35 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ifp141 = getelementptr inbounds %struct.xpvio* %35, i64 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp141, align 8, !tbaa !3
  %36 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ofp143 = getelementptr inbounds %struct.xpvio* %36, i64 0, i32 8
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ofp143, align 8, !tbaa !3
  br label %if.end144

if.end144:                                        ; preds = %if.end, %if.end139
  %savetype.1 = phi i8 [ %savetype.01911, %if.end139 ], [ 32, %if.end ]
  %savefd.1 = phi i32 [ %savefd.01912, %if.end139 ], [ -1, %if.end ]
  %saveofp.1 = phi %struct._PerlIO** [ %saveofp.01913, %if.end139 ], [ null, %if.end ]
  %saveifp.1 = phi %struct._PerlIO** [ %saveifp.01914, %if.end139 ], [ null, %if.end ]
  %tobool145 = icmp eq i32 %as_raw, 0
  br i1 %tobool145, label %if.else180, label %if.then146

if.then146:                                       ; preds = %if.end144
  %cmp147 = icmp eq i32 %num_svs, 0
  br i1 %cmp147, label %if.end150, label %if.then149

if.then149:                                       ; preds = %if.then146
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0)) #8
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %if.then149
  %and151 = and i32 %rawmode, 1603
  %tobool152 = icmp eq i32 %and151, 0
  br i1 %tobool152, label %if.end169, label %if.then153

if.then153:                                       ; preds = %if.end150
  %37 = and i32 %rawmode, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %lor.lhs.false160, label %if.then164

lor.lhs.false160:                                 ; preds = %if.then153
  %and162 = and i32 %rawmode, 1600
  %tobool163 = icmp ne i32 %and162, 0
  %39 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool165 = icmp ne i8 %39, 0
  %or.cond = and i1 %tobool163, %tobool165
  br i1 %or.cond, label %if.then166, label %if.end169

if.then164:                                       ; preds = %if.then153
  %.old = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool165.old = icmp eq i8 %.old, 0
  br i1 %tobool165.old, label %if.end169, label %if.then166

if.then166:                                       ; preds = %if.then164, %lor.lhs.false160
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #8
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.end150, %lor.lhs.false160, %if.then166
  store i8 35, i8* %arraydecay, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds [8 x i8]* %tmpcast, i64 0, i64 1
  %call171 = call i32 @PerlIO_intmode2str(i32 %rawmode, i8* %arrayidx170, i32* %writing) #8
  %conv172 = trunc i32 %call171 to i8
  %40 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type174 = getelementptr inbounds %struct.xpvio* %40, i64 0, i32 21
  store i8 %conv172, i8* %xio_type174, align 1, !tbaa !1
  %call175 = call i64 @strlen(i8* %name) #8
  %call176 = call %struct.sv* @Perl_newSVpvn(i8* %name, i64 %call175) #8
  %call177 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call176) #8
  store %struct.sv* %call177, %struct.sv** %namesv, align 8, !tbaa !3
  %call179 = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %arraydecay, i32 -1, i32 %rawmode, i32 %rawperm, %struct._PerlIO** null, i32 1, %struct.sv** %namesv) #8
  br label %if.end1174

if.else180:                                       ; preds = %if.end144
  %call182 = call i8* @Perl_savepvn(i8* %name, i32 %len) #8
  call void @Perl_save_freepv(i8* %call182) #8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else180
  %type.0 = phi i8* [ %call182, %if.else180 ], [ %incdec.ptr, %for.inc ]
  %41 = load i8* %type.0, align 1, !tbaa !1
  switch i8 %41, label %while.cond.preheader [
    i8 32, label %for.inc
    i8 9, label %for.inc
    i8 10, label %for.inc
    i8 13, label %for.inc
    i8 12, label %for.inc
  ]

while.cond.preheader:                             ; preds = %for.cond
  %conv181 = sext i32 %len to i64
  %add.ptr = getelementptr inbounds i8* %call182, i64 %conv181
  %cmp2011976 = icmp ugt i8* %add.ptr, %type.0
  br i1 %cmp2011976, label %land.rhs, label %while.end

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %incdec.ptr = getelementptr inbounds i8* %type.0, i64 1
  br label %for.cond

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %tend.01977 = phi i8* [ %arrayidx203, %while.body ], [ %add.ptr, %while.cond.preheader ]
  %arrayidx203 = getelementptr inbounds i8* %tend.01977, i64 -1
  %42 = load i8* %arrayidx203, align 1, !tbaa !1
  switch i8 %42, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
    i8 10, label %while.body
    i8 13, label %while.body
    i8 12, label %while.body
  ]

while.body:                                       ; preds = %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs
  store i8 0, i8* %arrayidx203, align 1, !tbaa !1
  %cmp201 = icmp ugt i8* %arrayidx203, %type.0
  br i1 %cmp201, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs, %while.cond.preheader
  %tend.0.lcssa = phi i8* [ %add.ptr, %while.cond.preheader ], [ %tend.01977, %land.rhs ], [ %arrayidx203, %while.body ]
  %tobool229 = icmp ne i32 %num_svs, 0
  br i1 %tobool229, label %if.then230, label %if.else240

if.then230:                                       ; preds = %while.end
  %43 = load %struct.sv** %svp, align 8, !tbaa !3
  %sv_flags231 = getelementptr inbounds %struct.sv* %43, i64 0, i32 2
  %44 = load i32* %sv_flags231, align 4, !tbaa !0
  %and232 = and i32 %44, 118423552
  %tobool233 = icmp eq i32 %and232, 0
  br i1 %tobool233, label %cond.false236, label %cond.true234

cond.true234:                                     ; preds = %if.then230
  %call235 = call i8* @Perl_savesvpv(%struct.sv* %43) #8
  br label %cond.end238

cond.false236:                                    ; preds = %if.then230
  %call237 = call i8* @Perl_savepvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i32 0) #8
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false236, %cond.true234
  %cond239 = phi i8* [ %call235, %cond.true234 ], [ %call237, %cond.false236 ]
  call void @Perl_save_freepv(i8* %cond239) #8
  br label %if.end242

if.else240:                                       ; preds = %while.end
  %sub.ptr.lhs.cast = ptrtoint i8* %tend.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %type.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv241 = trunc i64 %sub.ptr.sub to i32
  br label %if.end242

if.end242:                                        ; preds = %if.else240, %cond.end238
  %len.addr.0 = phi i32 [ %len, %cond.end238 ], [ %conv241, %if.else240 ]
  %name.addr.0 = phi i8* [ %cond239, %cond.end238 ], [ %type.0, %if.else240 ]
  %45 = load i8* %type.0, align 1, !tbaa !1
  %46 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type244 = getelementptr inbounds %struct.xpvio* %46, i64 0, i32 21
  store i8 %45, i8* %xio_type244, align 1, !tbaa !1
  %47 = load i8* %type.0, align 1, !tbaa !1
  %cmp246 = icmp eq i8 %47, 43
  br i1 %cmp246, label %land.lhs.true248, label %if.end275

land.lhs.true248:                                 ; preds = %if.end242
  %add.ptr249 = getelementptr inbounds i8* %type.0, i64 1
  %48 = load i8* %add.ptr249, align 1, !tbaa !1
  switch i8 %48, label %lor.lhs.false912 [
    i8 60, label %land.lhs.true258
    i8 62, label %land.lhs.true258
  ]

land.lhs.true258:                                 ; preds = %land.lhs.true248, %land.lhs.true248
  br i1 %tobool229, label %lor.lhs.false260, label %if.then269

lor.lhs.false260:                                 ; preds = %land.lhs.true258
  %cmp262 = icmp ugt i8* %tend.0.lcssa, %add.ptr249
  br i1 %cmp262, label %land.lhs.true264, label %unknown_open_mode

land.lhs.true264:                                 ; preds = %lor.lhs.false260
  %arrayidx265 = getelementptr inbounds i8* %tend.0.lcssa, i64 -1
  %49 = load i8* %arrayidx265, align 1, !tbaa !1
  %cmp267 = icmp eq i8 %49, 124
  br i1 %cmp267, label %lor.lhs.false912, label %if.then269

if.then269:                                       ; preds = %land.lhs.true264, %land.lhs.true258
  %50 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool270 = icmp eq i8 %50, 0
  br i1 %tobool270, label %if.end272, label %if.then271

if.then271:                                       ; preds = %if.then269
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #8
  %.pre = load i8* %type.0, align 1, !tbaa !1
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.then271
  %51 = phi i8 [ 43, %if.then269 ], [ %.pre, %if.then271 ]
  %arrayidx274 = getelementptr inbounds [8 x i8]* %tmpcast, i64 0, i64 1
  store i8 %51, i8* %arrayidx274, align 1, !tbaa !1
  store i32 1, i32* %writing, align 4, !tbaa !0
  %.pre1983 = load i8* %add.ptr249, align 1, !tbaa !1
  br label %if.end275

if.end275:                                        ; preds = %if.end272, %if.end242
  %52 = phi i8 [ %.pre1983, %if.end272 ], [ %47, %if.end242 ]
  %type.1 = phi i8* [ %add.ptr249, %if.end272 ], [ %type.0, %if.end242 ]
  switch i8 %52, label %if.else900 [
    i8 124, label %if.then279
    i8 62, label %if.then451
    i8 60, label %for.cond771
  ]

if.then279:                                       ; preds = %if.end275
  br i1 %tobool229, label %if.then281, label %if.end290

if.then281:                                       ; preds = %if.then279
  %arrayidx282 = getelementptr inbounds i8* %type.1, i64 1
  %53 = load i8* %arrayidx282, align 1, !tbaa !1
  %cmp284 = icmp eq i8 %53, 45
  br i1 %cmp284, label %if.end288, label %unknown_open_mode

unknown_open_mode:                                ; preds = %lor.lhs.false260, %lor.lhs.false886, %lor.lhs.false751, %lor.lhs.false912, %if.then281
  %was_fdopen.0 = phi i8 [ 0, %if.then281 ], [ 0, %lor.lhs.false912 ], [ %was_fdopen.4, %lor.lhs.false751 ], [ 0, %lor.lhs.false886 ], [ 0, %lor.lhs.false260 ]
  %type.2 = phi i8* [ %type.1, %if.then281 ], [ %type.119911996, %lor.lhs.false912 ], [ %type.13, %lor.lhs.false751 ], [ %type.16, %lor.lhs.false886 ], [ %type.0, %lor.lhs.false260 ]
  %num_svs.addr.0 = phi i32 [ %num_svs, %if.then281 ], [ %num_svs, %lor.lhs.false912 ], [ %num_svs.addr.5, %lor.lhs.false751 ], [ %num_svs.addr.7, %lor.lhs.false886 ], [ %num_svs, %lor.lhs.false260 ]
  %svp.addr.0 = phi %struct.sv** [ %svp, %if.then281 ], [ %svp, %lor.lhs.false912 ], [ %svp.addr.4, %lor.lhs.false751 ], [ %svp.addr.6, %lor.lhs.false886 ], [ %svp, %lor.lhs.false260 ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([27 x i8]* @.str5, i64 0, i64 0), i32 %len, i8* %name) #8
  br label %if.end288

if.end288:                                        ; preds = %if.then281, %unknown_open_mode
  %was_fdopen.1 = phi i8 [ %was_fdopen.0, %unknown_open_mode ], [ 0, %if.then281 ]
  %type.3 = phi i8* [ %type.2, %unknown_open_mode ], [ %type.1, %if.then281 ]
  %num_svs.addr.1 = phi i32 [ %num_svs.addr.0, %unknown_open_mode ], [ %num_svs, %if.then281 ]
  %svp.addr.1 = phi %struct.sv** [ %svp.addr.0, %unknown_open_mode ], [ %svp, %if.then281 ]
  %incdec.ptr289 = getelementptr inbounds i8* %type.3, i64 1
  br label %if.end290

if.end290:                                        ; preds = %if.end288, %if.then279
  %was_fdopen.2 = phi i8 [ %was_fdopen.1, %if.end288 ], [ 0, %if.then279 ]
  %type.4 = phi i8* [ %incdec.ptr289, %if.end288 ], [ %type.1, %if.then279 ]
  %num_svs.addr.2 = phi i32 [ %num_svs.addr.1, %if.end288 ], [ 0, %if.then279 ]
  %svp.addr.2 = phi %struct.sv** [ %svp.addr.1, %if.end288 ], [ %svp, %if.then279 ]
  br label %for.cond292

for.cond292:                                      ; preds = %for.cond292, %for.cond292, %for.cond292, %for.cond292, %for.cond292, %if.end290
  %type.4.pn = phi i8* [ %type.4, %if.end290 ], [ %type.5, %for.cond292 ], [ %type.5, %for.cond292 ], [ %type.5, %for.cond292 ], [ %type.5, %for.cond292 ], [ %type.5, %for.cond292 ]
  %type.5 = getelementptr inbounds i8* %type.4.pn, i64 1
  %54 = load i8* %type.5, align 1, !tbaa !1
  switch i8 %54, label %for.end316 [
    i8 32, label %for.cond292
    i8 9, label %for.cond292
    i8 10, label %for.cond292
    i8 13, label %for.cond292
    i8 12, label %for.cond292
  ]

for.end316:                                       ; preds = %for.cond292
  %tobool317 = icmp ne i32 %num_svs.addr.2, 0
  br i1 %tobool317, label %if.end323, label %if.then318

if.then318:                                       ; preds = %for.end316
  %sub.ptr.lhs.cast319 = ptrtoint i8* %tend.0.lcssa to i64
  %sub.ptr.rhs.cast320 = ptrtoint i8* %type.5 to i64
  %sub.ptr.sub321 = sub i64 %sub.ptr.lhs.cast319, %sub.ptr.rhs.cast320
  %conv322 = trunc i64 %sub.ptr.sub321 to i32
  br label %if.end323

if.end323:                                        ; preds = %if.then318, %for.end316
  %len.addr.1 = phi i32 [ %len.addr.0, %for.end316 ], [ %conv322, %if.then318 ]
  %name.addr.1 = phi i8* [ %name.addr.0, %for.end316 ], [ %type.5, %if.then318 ]
  %55 = load i8* %name.addr.1, align 1, !tbaa !1
  switch i8 %55, label %lor.lhs.false365 [
    i8 0, label %if.then327
    i8 45, label %land.lhs.true360
  ]

if.then327:                                       ; preds = %if.end323
  %56 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %56, i64 0, i32 14
  %57 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp328 = icmp eq %struct.sv* %57, null
  br i1 %cmp328, label %lor.lhs.false345, label %land.lhs.true330

land.lhs.true330:                                 ; preds = %if.then327
  %58 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings331 = getelementptr inbounds %struct.cop* %58, i64 0, i32 14
  %59 = load %struct.sv** %cop_warnings331, align 8, !tbaa !3
  %cmp332 = icmp eq %struct.sv* %59, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp332, label %lor.lhs.false345, label %land.lhs.true334

land.lhs.true334:                                 ; preds = %land.lhs.true330
  %60 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings335 = getelementptr inbounds %struct.cop* %60, i64 0, i32 14
  %61 = load %struct.sv** %cop_warnings335, align 8, !tbaa !3
  %cmp336 = icmp eq %struct.sv* %61, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp336, label %if.then353, label %lor.lhs.false338

lor.lhs.false338:                                 ; preds = %land.lhs.true334
  %62 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings339 = getelementptr inbounds %struct.cop* %62, i64 0, i32 14
  %63 = load %struct.sv** %cop_warnings339, align 8, !tbaa !3
  %sv_any340 = getelementptr inbounds %struct.sv* %63, i64 0, i32 0
  %64 = load i8** %sv_any340, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %64 to i8**
  %65 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx341 = getelementptr inbounds i8* %65, i64 2
  %66 = load i8* %arrayidx341, align 1, !tbaa !1
  %and343 = and i8 %66, 16
  %tobool344 = icmp eq i8 %and343, 0
  br i1 %tobool344, label %lor.lhs.false345, label %if.then353

lor.lhs.false345:                                 ; preds = %lor.lhs.false338, %land.lhs.true330, %if.then327
  %67 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings346 = getelementptr inbounds %struct.cop* %67, i64 0, i32 14
  %68 = load %struct.sv** %cop_warnings346, align 8, !tbaa !3
  %cmp347 = icmp eq %struct.sv* %68, null
  br i1 %cmp347, label %land.lhs.true349, label %if.end354

land.lhs.true349:                                 ; preds = %lor.lhs.false345
  %69 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and351 = and i8 %69, 1
  %tobool352 = icmp eq i8 %and351, 0
  br i1 %tobool352, label %if.end354, label %if.then353

if.then353:                                       ; preds = %lor.lhs.false338, %land.lhs.true349, %land.lhs.true334
  call void (i32, i8*, ...)* @Perl_warner(i32 10, i8* getelementptr inbounds ([30 x i8]* @.str6, i64 0, i64 0)) #8
  br label %if.end354

if.end354:                                        ; preds = %land.lhs.true349, %if.then353, %lor.lhs.false345
  %call355 = call i32* @__errno_location() #8
  store i32 32, i32* %call355, align 4, !tbaa !0
  br label %say_false

land.lhs.true360:                                 ; preds = %if.end323
  %arrayidx361 = getelementptr inbounds i8* %name.addr.1, i64 1
  %70 = load i8* %arrayidx361, align 1, !tbaa !1
  %cmp363 = icmp eq i8 %70, 0
  br i1 %cmp363, label %if.then367, label %lor.lhs.false365

lor.lhs.false365:                                 ; preds = %land.lhs.true360, %if.end323
  %71 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool368 = icmp ne i8 %71, 0
  %or.cond1498 = and i1 %tobool317, %tobool368
  br i1 %or.cond1498, label %if.then369, label %if.end371

if.then367:                                       ; preds = %land.lhs.true360
  %.old1497 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool368.old = icmp eq i8 %.old1497, 0
  br i1 %tobool368.old, label %if.end374, label %if.then369

if.then369:                                       ; preds = %if.then367, %lor.lhs.false365
  call void @Perl_taint_env() #8
  %.pr = load i8* @PL_tainting, align 1, !tbaa !1
  br label %if.end371

if.end371:                                        ; preds = %if.then369, %lor.lhs.false365
  %72 = phi i8 [ %.pr, %if.then369 ], [ %71, %lor.lhs.false365 ]
  %tobool372 = icmp eq i8 %72, 0
  br i1 %tobool372, label %if.end374, label %if.then373

if.then373:                                       ; preds = %if.end371
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #8
  br label %if.end374

if.end374:                                        ; preds = %if.then367, %if.end371, %if.then373
  br i1 %tobool317, label %if.end413, label %land.lhs.true376

land.lhs.true376:                                 ; preds = %if.end374
  %sub = add nsw i32 %len.addr.1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx377 = getelementptr inbounds i8* %name.addr.1, i64 %idxprom
  %73 = load i8* %arrayidx377, align 1, !tbaa !1
  %cmp379 = icmp eq i8 %73, 124
  br i1 %cmp379, label %if.then381, label %if.end413

if.then381:                                       ; preds = %land.lhs.true376
  store i8 0, i8* %arrayidx377, align 1, !tbaa !1
  %74 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings384 = getelementptr inbounds %struct.cop* %74, i64 0, i32 14
  %75 = load %struct.sv** %cop_warnings384, align 8, !tbaa !3
  %cmp385 = icmp eq %struct.sv* %75, null
  br i1 %cmp385, label %lor.lhs.false403, label %land.lhs.true387

land.lhs.true387:                                 ; preds = %if.then381
  %76 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings388 = getelementptr inbounds %struct.cop* %76, i64 0, i32 14
  %77 = load %struct.sv** %cop_warnings388, align 8, !tbaa !3
  %cmp389 = icmp eq %struct.sv* %77, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp389, label %lor.lhs.false403, label %land.lhs.true391

land.lhs.true391:                                 ; preds = %land.lhs.true387
  %78 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings392 = getelementptr inbounds %struct.cop* %78, i64 0, i32 14
  %79 = load %struct.sv** %cop_warnings392, align 8, !tbaa !3
  %cmp393 = icmp eq %struct.sv* %79, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp393, label %if.then411, label %lor.lhs.false395

lor.lhs.false395:                                 ; preds = %land.lhs.true391
  %80 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings396 = getelementptr inbounds %struct.cop* %80, i64 0, i32 14
  %81 = load %struct.sv** %cop_warnings396, align 8, !tbaa !3
  %sv_any397 = getelementptr inbounds %struct.sv* %81, i64 0, i32 0
  %82 = load i8** %sv_any397, align 8, !tbaa !3
  %xpv_pv398 = bitcast i8* %82 to i8**
  %83 = load i8** %xpv_pv398, align 8, !tbaa !3
  %arrayidx399 = getelementptr inbounds i8* %83, i64 2
  %84 = load i8* %arrayidx399, align 1, !tbaa !1
  %and401 = and i8 %84, 16
  %tobool402 = icmp eq i8 %and401, 0
  br i1 %tobool402, label %lor.lhs.false403, label %if.then411

lor.lhs.false403:                                 ; preds = %lor.lhs.false395, %land.lhs.true387, %if.then381
  %85 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings404 = getelementptr inbounds %struct.cop* %85, i64 0, i32 14
  %86 = load %struct.sv** %cop_warnings404, align 8, !tbaa !3
  %cmp405 = icmp eq %struct.sv* %86, null
  br i1 %cmp405, label %land.lhs.true407, label %if.end413

land.lhs.true407:                                 ; preds = %lor.lhs.false403
  %87 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and409 = and i8 %87, 1
  %tobool410 = icmp eq i8 %and409, 0
  br i1 %tobool410, label %if.end413, label %if.then411

if.then411:                                       ; preds = %lor.lhs.false395, %land.lhs.true407, %land.lhs.true391
  call void (i32, i8*, ...)* @Perl_warner(i32 10, i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0)) #8
  br label %if.end413

if.end413:                                        ; preds = %land.lhs.true407, %lor.lhs.false403, %if.then411, %land.lhs.true376, %if.end374
  store i8 119, i8* %arraydecay, align 8, !tbaa !1
  store i32 1, i32* %writing, align 4, !tbaa !0
  %tobool415 = icmp eq i8 %out_raw.0, 0
  br i1 %tobool415, label %if.else419, label %if.then416

if.then416:                                       ; preds = %if.end413
  %strlen1874 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1875 = getelementptr i8* %arraydecay, i64 %strlen1874
  %88 = bitcast i8* %endptr1875 to i16*
  store i16 98, i16* %88, align 1
  br label %if.end425

if.else419:                                       ; preds = %if.end413
  %tobool420 = icmp eq i8 %out_crlf.0, 0
  br i1 %tobool420, label %if.end425, label %if.then421

if.then421:                                       ; preds = %if.else419
  %strlen1872 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1873 = getelementptr i8* %arraydecay, i64 %strlen1872
  %89 = bitcast i8* %endptr1873 to i16*
  store i16 116, i16* %89, align 1
  br label %if.end425

if.end425:                                        ; preds = %if.else419, %if.then421, %if.then416
  %cmp426 = icmp sgt i32 %num_svs.addr.2, 1
  br i1 %cmp426, label %if.then428, label %if.else431

if.then428:                                       ; preds = %if.end425
  %call430 = call %struct._PerlIO** @Perl_my_popen_list(i8* %arraydecay, i32 %num_svs.addr.2, %struct.sv** %svp.addr.2) #8
  br label %if.end434

if.else431:                                       ; preds = %if.end425
  %call433 = call %struct._PerlIO** @Perl_my_popen(i8* %name.addr.1, i8* %arraydecay) #8
  br label %if.end434

if.end434:                                        ; preds = %if.else431, %if.then428
  %fp.0 = phi %struct._PerlIO** [ %call430, %if.then428 ], [ %call433, %if.else431 ]
  br i1 %tobool317, label %if.then436, label %if.end1174

if.then436:                                       ; preds = %if.end434
  %90 = load i8* %type.5, align 1, !tbaa !1
  %tobool437 = icmp eq i8 %90, 0
  br i1 %tobool437, label %if.end1174, label %if.then438

if.then438:                                       ; preds = %if.then436
  %call440 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %fp.0, i8* %arraydecay, i8* %type.5) #8
  %cmp441 = icmp eq i32 %call440, 0
  br i1 %cmp441, label %if.end1174, label %say_false

if.then451:                                       ; preds = %if.end275
  %91 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool452 = icmp eq i8 %91, 0
  br i1 %tobool452, label %if.end454, label %if.then453

if.then453:                                       ; preds = %if.then451
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #8
  br label %if.end454

if.end454:                                        ; preds = %if.then451, %if.then453
  %incdec.ptr455 = getelementptr inbounds i8* %type.1, i64 1
  %92 = load i8* %incdec.ptr455, align 1, !tbaa !1
  %cmp457 = icmp eq i8 %92, 62
  br i1 %cmp457, label %if.then459, label %if.else464

if.then459:                                       ; preds = %if.end454
  %93 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type461 = getelementptr inbounds %struct.xpvio* %93, i64 0, i32 21
  store i8 97, i8* %xio_type461, align 1, !tbaa !1
  store i8 97, i8* %arraydecay, align 8, !tbaa !1
  %incdec.ptr463 = getelementptr inbounds i8* %type.1, i64 2
  br label %if.end466

if.else464:                                       ; preds = %if.end454
  store i8 119, i8* %arraydecay, align 8, !tbaa !1
  br label %if.end466

if.end466:                                        ; preds = %if.else464, %if.then459
  %type.6 = phi i8* [ %incdec.ptr463, %if.then459 ], [ %incdec.ptr455, %if.else464 ]
  store i32 1, i32* %writing, align 4, !tbaa !0
  %tobool467 = icmp eq i8 %out_raw.0, 0
  br i1 %tobool467, label %if.else471, label %if.then468

if.then468:                                       ; preds = %if.end466
  %strlen1889 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1890 = getelementptr i8* %arraydecay, i64 %strlen1889
  %94 = bitcast i8* %endptr1890 to i16*
  store i16 98, i16* %94, align 1
  br label %if.end477

if.else471:                                       ; preds = %if.end466
  %tobool472 = icmp eq i8 %out_crlf.0, 0
  br i1 %tobool472, label %if.end477, label %if.then473

if.then473:                                       ; preds = %if.else471
  %strlen1887 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1888 = getelementptr i8* %arraydecay, i64 %strlen1887
  %95 = bitcast i8* %endptr1888 to i16*
  store i16 116, i16* %95, align 1
  br label %if.end477

if.end477:                                        ; preds = %if.else471, %if.then473, %if.then468
  %96 = load i8* %type.6, align 1, !tbaa !1
  %cmp479 = icmp eq i8 %96, 38
  br i1 %cmp479, label %duplicity, label %for.cond652

duplicity:                                        ; preds = %if.end807, %if.end477
  %type.7 = phi i8* [ %type.6, %if.end477 ], [ %type.14, %if.end807 ]
  %incdec.ptr482 = getelementptr inbounds i8* %type.7, i64 1
  %97 = load i8* %incdec.ptr482, align 1, !tbaa !1
  %cmp484 = icmp eq i8 %97, 61
  %incdec.ptr487 = getelementptr inbounds i8* %type.7, i64 2
  %incdec.ptr487.incdec.ptr482 = select i1 %cmp484, i8* %incdec.ptr487, i8* %incdec.ptr482
  %. = select i1 %cmp484, i32 0, i32 2
  br i1 %tobool229, label %if.else495, label %land.lhs.true490

land.lhs.true490:                                 ; preds = %duplicity
  %98 = load i8* %incdec.ptr487.incdec.ptr482, align 1, !tbaa !1
  %tobool491 = icmp ne i8 %98, 0
  %tobool493 = icmp eq %struct._PerlIO** %supplied_fp, null
  %or.cond1897 = or i1 %tobool491, %tobool493
  br i1 %or.cond1897, label %for.cond503, label %if.end732

if.else495:                                       ; preds = %duplicity
  %cmp496 = icmp sgt i32 %num_svs, 1
  br i1 %cmp496, label %if.then498, label %for.cond503

if.then498:                                       ; preds = %if.else495
  %99 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type500 = getelementptr inbounds %struct.xpvio* %99, i64 0, i32 21
  %100 = load i8* %xio_type500, align 1, !tbaa !1
  %conv501 = sext i8 %100 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str11, i64 0, i64 0), i32 %conv501) #8
  br label %for.cond503

for.cond503:                                      ; preds = %land.lhs.true490, %if.else495, %if.then498, %for.inc525
  %type.9 = phi i8* [ %incdec.ptr526, %for.inc525 ], [ %incdec.ptr487.incdec.ptr482, %if.then498 ], [ %incdec.ptr487.incdec.ptr482, %if.else495 ], [ %incdec.ptr487.incdec.ptr482, %land.lhs.true490 ]
  %101 = load i8* %type.9, align 1, !tbaa !1
  switch i8 %101, label %for.end527 [
    i8 32, label %for.inc525
    i8 9, label %for.inc525
    i8 10, label %for.inc525
    i8 13, label %for.inc525
    i8 12, label %for.inc525
  ]

for.inc525:                                       ; preds = %for.cond503, %for.cond503, %for.cond503, %for.cond503, %for.cond503
  %incdec.ptr526 = getelementptr inbounds i8* %type.9, i64 1
  br label %for.cond503

for.end527:                                       ; preds = %for.cond503
  br i1 %tobool229, label %land.lhs.true529, label %if.else551

land.lhs.true529:                                 ; preds = %for.end527
  %102 = load %struct.sv** %svp, align 8, !tbaa !3
  %sv_flags530 = getelementptr inbounds %struct.sv* %102, i64 0, i32 2
  %103 = load i32* %sv_flags530, align 4, !tbaa !0
  %and531 = and i32 %103, 65536
  %tobool532 = icmp eq i32 %and531, 0
  br i1 %tobool532, label %lor.lhs.false533, label %if.then540

lor.lhs.false533:                                 ; preds = %land.lhs.true529
  %and535 = and i32 %103, 262144
  %tobool536 = icmp eq i32 %and535, 0
  br i1 %tobool536, label %if.else551, label %land.lhs.true537

land.lhs.true537:                                 ; preds = %lor.lhs.false533
  %call538 = call i32 @Perl_looks_like_number(%struct.sv* %102) #8
  %tobool539 = icmp eq i32 %call538, 0
  br i1 %tobool539, label %land.lhs.true537.if.else551_crit_edge, label %land.lhs.true537.if.then540_crit_edge

land.lhs.true537.if.then540_crit_edge:            ; preds = %land.lhs.true537
  %.pre1986 = load %struct.sv** %svp, align 8, !tbaa !3
  %sv_flags541.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1986, i64 0, i32 2
  %.pre1987 = load i32* %sv_flags541.phi.trans.insert, align 4, !tbaa !0
  br label %if.then540

land.lhs.true537.if.else551_crit_edge:            ; preds = %land.lhs.true537
  %.pre1988 = load i8* %type.9, align 1, !tbaa !1
  br label %if.else551

if.then540:                                       ; preds = %land.lhs.true537.if.then540_crit_edge, %land.lhs.true529
  %104 = phi i32 [ %.pre1987, %land.lhs.true537.if.then540_crit_edge ], [ %103, %land.lhs.true529 ]
  %105 = phi %struct.sv* [ %.pre1986, %land.lhs.true537.if.then540_crit_edge ], [ %102, %land.lhs.true529 ]
  %and542 = and i32 %104, 65536
  %tobool543 = icmp eq i32 %and542, 0
  br i1 %tobool543, label %cond.false546, label %cond.true544

cond.true544:                                     ; preds = %if.then540
  %sv_any545 = getelementptr inbounds %struct.sv* %105, i64 0, i32 0
  %106 = load i8** %sv_any545, align 8, !tbaa !3
  %xuv_uv = getelementptr inbounds i8* %106, i64 24
  %107 = bitcast i8* %xuv_uv to i64*
  %108 = load i64* %107, align 8, !tbaa !5
  br label %cond.end548

cond.false546:                                    ; preds = %if.then540
  %call547 = call i64 @Perl_sv_2uv(%struct.sv* %105) #8
  br label %cond.end548

cond.end548:                                      ; preds = %cond.false546, %cond.true544
  %cond549 = phi i64 [ %108, %cond.true544 ], [ %call547, %cond.false546 ]
  %conv550 = trunc i64 %cond549 to i32
  br label %if.else634

if.else551:                                       ; preds = %land.lhs.true537.if.else551_crit_edge, %lor.lhs.false533, %for.end527
  %109 = phi i8 [ %.pre1988, %land.lhs.true537.if.else551_crit_edge ], [ %101, %lor.lhs.false533 ], [ %101, %for.end527 ]
  %.off1965 = add i8 %109, -48
  %110 = icmp ult i8 %.off1965, 10
  br i1 %110, label %if.then559, label %if.else561

if.then559:                                       ; preds = %if.else551
  %call560 = call i32 @atoi(i8* %type.9) #8
  br label %if.else634

if.else561:                                       ; preds = %if.else551
  br i1 %tobool229, label %if.then563, label %if.else565

if.then563:                                       ; preds = %if.else561
  %111 = load %struct.sv** %svp, align 8, !tbaa !3
  %call564 = call %struct.io* @Perl_sv_2io(%struct.sv* %111) #8
  br label %if.end584

if.else565:                                       ; preds = %if.else561
  %call566 = call %struct.gv* @Perl_gv_fetchpv(i8* %type.9, i32 0, i32 15) #8
  %tobool567 = icmp eq %struct.gv* %call566, null
  br i1 %tobool567, label %if.then586, label %land.lhs.true568

land.lhs.true568:                                 ; preds = %if.else565
  %112 = getelementptr inbounds %struct.gv* %call566, i64 0, i32 2
  %113 = load i32* %112, align 4, !tbaa !0
  %and570 = and i32 %113, 255
  %cmp571 = icmp eq i32 %and570, 13
  br i1 %cmp571, label %land.lhs.true573, label %if.then586

land.lhs.true573:                                 ; preds = %land.lhs.true568
  %sv_any574 = getelementptr inbounds %struct.gv* %call566, i64 0, i32 0
  %114 = load %struct.xpvgv** %sv_any574, align 8, !tbaa !3
  %xgv_gp575 = getelementptr inbounds %struct.xpvgv* %114, i64 0, i32 7
  %115 = load %struct.gp** %xgv_gp575, align 8, !tbaa !3
  %tobool576 = icmp eq %struct.gp* %115, null
  br i1 %tobool576, label %if.then586, label %cond.true577

cond.true577:                                     ; preds = %land.lhs.true573
  %gp_io580 = getelementptr inbounds %struct.gp* %115, i64 0, i32 2
  %116 = load %struct.io** %gp_io580, align 8, !tbaa !3
  br label %if.end584

if.end584:                                        ; preds = %cond.true577, %if.then563
  %thatio.0 = phi %struct.io* [ %call564, %if.then563 ], [ %116, %cond.true577 ]
  %tobool585 = icmp eq %struct.io* %thatio.0, null
  br i1 %tobool585, label %if.then586, label %if.end588

if.then586:                                       ; preds = %if.else565, %land.lhs.true568, %land.lhs.true573, %if.end584
  %call587 = call i32* @__errno_location() #8
  store i32 22, i32* %call587, align 4, !tbaa !0
  br label %say_false

if.end588:                                        ; preds = %if.end584
  %sv_any589 = getelementptr inbounds %struct.io* %thatio.0, i64 0, i32 0
  %117 = load %struct.xpvio** %sv_any589, align 8, !tbaa !3
  %xio_ifp590 = getelementptr inbounds %struct.xpvio* %117, i64 0, i32 7
  %118 = load %struct._PerlIO*** %xio_ifp590, align 8, !tbaa !3
  %tobool591 = icmp eq %struct._PerlIO** %118, null
  br i1 %tobool591, label %if.else634, label %if.then592

if.then592:                                       ; preds = %if.end588
  %call593 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %118) #8
  %call594 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %118) #8
  %call595 = call %struct._PerlIO** @Perl_PerlIO_stdout() #8
  %cmp596 = icmp eq %struct._PerlIO** %118, %call595
  br i1 %cmp596, label %if.then602, label %lor.lhs.false598

lor.lhs.false598:                                 ; preds = %if.then592
  %call599 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  %cmp600 = icmp eq %struct._PerlIO** %118, %call599
  br i1 %cmp600, label %if.then602, label %if.else605

if.then602:                                       ; preds = %lor.lhs.false598, %if.then592
  %119 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type604 = getelementptr inbounds %struct.xpvio* %119, i64 0, i32 21
  store i8 62, i8* %xio_type604, align 1, !tbaa !1
  br label %if.then632

if.else605:                                       ; preds = %lor.lhs.false598
  %call606 = call %struct._PerlIO** @Perl_PerlIO_stdin() #8
  %cmp607 = icmp eq %struct._PerlIO** %118, %call606
  br i1 %cmp607, label %if.then609, label %if.else612

if.then609:                                       ; preds = %if.else605
  %120 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type611 = getelementptr inbounds %struct.xpvio* %120, i64 0, i32 21
  store i8 60, i8* %xio_type611, align 1, !tbaa !1
  br label %if.then632

if.else612:                                       ; preds = %if.else605
  %121 = load %struct.xpvio** %sv_any589, align 8, !tbaa !3
  %xio_type614 = getelementptr inbounds %struct.xpvio* %121, i64 0, i32 21
  %122 = load i8* %xio_type614, align 1, !tbaa !1
  %cmp616 = icmp eq i8 %122, 115
  br i1 %cmp616, label %if.then618, label %if.then632

if.then618:                                       ; preds = %if.else612
  %123 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type620 = getelementptr inbounds %struct.xpvio* %123, i64 0, i32 21
  store i8 115, i8* %xio_type620, align 1, !tbaa !1
  br label %if.then632

if.then632:                                       ; preds = %if.else612, %if.then609, %if.then618, %if.then602
  %tobool6281925 = icmp eq i32 %num_svs, 0
  %.type.91926 = select i1 %tobool6281925, i8* null, i8* %type.9
  %call633 = call %struct._PerlIO** @PerlIO_fdupopen(%struct._PerlIO** %118, %struct.clone_params* null, i32 %.) #8
  br label %if.end732

if.else634:                                       ; preds = %if.end588, %if.then559, %cond.end548
  %fd.0.ph = phi i32 [ %conv550, %cond.end548 ], [ %call560, %if.then559 ], [ -1, %if.end588 ]
  %num_svs.addr.3.ph = phi i32 [ 0, %cond.end548 ], [ %num_svs, %if.then559 ], [ %num_svs, %if.end588 ]
  %tobool6281918 = icmp eq i32 %num_svs.addr.3.ph, 0
  %.type.91919 = select i1 %tobool6281918, i8* null, i8* %type.9
  br i1 %cmp484, label %if.end639, label %if.then636

if.then636:                                       ; preds = %if.else634
  %call637 = call i32 @dup(i32 %fd.0.ph) #8
  br label %if.end639

if.end639:                                        ; preds = %if.else634, %if.then636
  %was_fdopen.3 = phi i8 [ 0, %if.then636 ], [ 1, %if.else634 ]
  %fd.1 = phi i32 [ %call637, %if.then636 ], [ %fd.0.ph, %if.else634 ]
  %call641 = call %struct._PerlIO** @PerlIO_openn(i8* %.type.91919, i8* %arraydecay, i32 %fd.1, i32 0, i32 0, %struct._PerlIO** null, i32 %num_svs.addr.3.ph, %struct.sv** %svp) #8
  %tobool642 = icmp eq %struct._PerlIO** %call641, null
  br i1 %tobool642, label %if.then643, label %if.end1174.thread

if.end1174.thread:                                ; preds = %if.end639
  %124 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings12161937 = getelementptr inbounds %struct.cop* %124, i64 0, i32 14
  %125 = load %struct.sv** %cop_warnings12161937, align 8, !tbaa !3
  %cmp12171938 = icmp eq %struct.sv* %125, null
  br i1 %cmp12171938, label %lor.lhs.false1235, label %land.lhs.true1219

if.then643:                                       ; preds = %if.end639
  br i1 %cmp484, label %if.end732, label %if.then645

if.then645:                                       ; preds = %if.then643
  %call646 = call i32 @close(i32 %fd.1) #8
  br label %if.end732

for.cond652:                                      ; preds = %if.end477, %for.inc674
  %126 = phi i8 [ %.pre1985, %for.inc674 ], [ %96, %if.end477 ]
  %type.11 = phi i8* [ %incdec.ptr675, %for.inc674 ], [ %type.6, %if.end477 ]
  switch i8 %126, label %if.else722 [
    i8 32, label %for.inc674
    i8 9, label %for.inc674
    i8 10, label %for.inc674
    i8 13, label %for.inc674
    i8 12, label %for.inc674
    i8 45, label %land.lhs.true680
  ]

for.inc674:                                       ; preds = %for.cond652, %for.cond652, %for.cond652, %for.cond652, %for.cond652
  %incdec.ptr675 = getelementptr inbounds i8* %type.11, i64 1
  %.pre1985 = load i8* %incdec.ptr675, align 1, !tbaa !1
  br label %for.cond652

land.lhs.true680:                                 ; preds = %for.cond652
  %arrayidx681 = getelementptr inbounds i8* %type.11, i64 1
  %127 = load i8* %arrayidx681, align 1, !tbaa !1
  switch i8 %127, label %if.else722 [
    i8 0, label %if.then713
    i8 32, label %if.then713
    i8 9, label %if.then713
    i8 10, label %if.then713
    i8 13, label %if.then713
    i8 12, label %if.then713
    i8 58, label %if.then713
  ]

if.then713:                                       ; preds = %land.lhs.true680, %land.lhs.true680, %land.lhs.true680, %land.lhs.true680, %land.lhs.true680, %land.lhs.true680, %land.lhs.true680
  %call715 = call %struct._PerlIO** @Perl_PerlIO_stdout() #8
  %128 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type717 = getelementptr inbounds %struct.xpvio* %128, i64 0, i32 21
  store i8 45, i8* %xio_type717, align 1, !tbaa !1
  %cmp718 = icmp sgt i32 %num_svs, 1
  br i1 %cmp718, label %if.then720, label %if.end732

if.then720:                                       ; preds = %if.then713
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str12, i64 0, i64 0), i32 45) #8
  br label %if.end732

if.else722:                                       ; preds = %for.cond652, %land.lhs.true680
  br i1 %tobool229, label %if.end728, label %if.then724

if.then724:                                       ; preds = %if.else722
  %call725 = call i64 @strlen(i8* %type.11) #8
  %call726 = call %struct.sv* @Perl_newSVpvn(i8* %type.11, i64 %call725) #8
  %call727 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call726) #8
  store %struct.sv* %call727, %struct.sv** %namesv, align 8, !tbaa !3
  br label %if.end728

if.end728:                                        ; preds = %if.then724, %if.else722
  %type.12 = phi i8* [ %type.11, %if.else722 ], [ null, %if.then724 ]
  %num_svs.addr.4 = phi i32 [ %num_svs, %if.else722 ], [ 1, %if.then724 ]
  %svp.addr.3 = phi %struct.sv** [ %svp, %if.else722 ], [ %namesv, %if.then724 ]
  %call730 = call %struct._PerlIO** @PerlIO_openn(i8* %type.12, i8* %arraydecay, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 %num_svs.addr.4, %struct.sv** %svp.addr.3) #8
  br label %if.end732

if.end732:                                        ; preds = %if.then643, %land.lhs.true490, %if.end728, %if.then720, %if.then713, %if.then645, %if.then632
  %was_fdopen.4 = phi i8 [ 0, %if.then632 ], [ %was_fdopen.3, %if.then645 ], [ %was_fdopen.3, %if.then643 ], [ 0, %if.then720 ], [ 0, %if.then713 ], [ 0, %if.end728 ], [ 0, %land.lhs.true490 ]
  %type.13 = phi i8* [ %.type.91926, %if.then632 ], [ %.type.91919, %if.then645 ], [ %.type.91919, %if.then643 ], [ %arrayidx681, %if.then720 ], [ %arrayidx681, %if.then713 ], [ %type.12, %if.end728 ], [ %incdec.ptr487.incdec.ptr482, %land.lhs.true490 ]
  %fp.1 = phi %struct._PerlIO** [ %call633, %if.then632 ], [ null, %if.then645 ], [ null, %if.then643 ], [ %call715, %if.then720 ], [ %call715, %if.then713 ], [ %call730, %if.end728 ], [ %supplied_fp, %land.lhs.true490 ]
  %num_svs.addr.5 = phi i32 [ %num_svs, %if.then632 ], [ %num_svs.addr.3.ph, %if.then645 ], [ %num_svs.addr.3.ph, %if.then643 ], [ %num_svs, %if.then720 ], [ %num_svs, %if.then713 ], [ %num_svs.addr.4, %if.end728 ], [ 0, %land.lhs.true490 ]
  %svp.addr.4 = phi %struct.sv** [ %svp, %if.then632 ], [ %svp, %if.then645 ], [ %svp, %if.then643 ], [ %svp, %if.then720 ], [ %svp, %if.then713 ], [ %svp.addr.3, %if.end728 ], [ %svp, %land.lhs.true490 ]
  %tobool733 = icmp ne %struct._PerlIO** %fp.1, null
  %tobool735 = icmp eq i8* %type.13, null
  %or.cond1899 = or i1 %tobool733, %tobool735
  br i1 %or.cond1899, label %if.end1174, label %land.lhs.true736

land.lhs.true736:                                 ; preds = %if.end732
  %129 = load i8* %type.13, align 1, !tbaa !1
  switch i8 %129, label %land.lhs.true743 [
    i8 0, label %if.end1174.thread1997
    i8 58, label %if.end1174.thread1997
  ]

land.lhs.true743:                                 ; preds = %land.lhs.true736
  %.off1963 = add i8 %129, -65
  %130 = icmp ult i8 %.off1963, 26
  br i1 %130, label %if.end1174.thread1997, label %lor.lhs.false751

lor.lhs.false751:                                 ; preds = %land.lhs.true743
  %.off1964 = add i8 %129, -97
  %131 = icmp ult i8 %.off1964, 26
  %cmp761 = icmp eq i8 %129, 95
  %or.cond1960 = or i1 %131, %cmp761
  br i1 %or.cond1960, label %if.end1174.thread1997, label %unknown_open_mode

for.cond771:                                      ; preds = %for.cond771, %for.cond771, %for.cond771, %for.cond771, %for.cond771, %if.end275
  %type.1.pn = phi i8* [ %type.1, %if.end275 ], [ %type.14, %for.cond771 ], [ %type.14, %for.cond771 ], [ %type.14, %for.cond771 ], [ %type.14, %for.cond771 ], [ %type.14, %for.cond771 ]
  %type.14 = getelementptr inbounds i8* %type.1.pn, i64 1
  %132 = load i8* %type.14, align 1, !tbaa !1
  switch i8 %132, label %for.end795 [
    i8 32, label %for.cond771
    i8 9, label %for.cond771
    i8 10, label %for.cond771
    i8 13, label %for.cond771
    i8 12, label %for.cond771
  ]

for.end795:                                       ; preds = %for.cond771
  store i8 114, i8* %arraydecay, align 8, !tbaa !1
  %tobool797 = icmp eq i8 %in_raw.0, 0
  br i1 %tobool797, label %if.else801, label %if.then798

if.then798:                                       ; preds = %for.end795
  %strlen1885 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1886 = getelementptr i8* %arraydecay, i64 %strlen1885
  %133 = bitcast i8* %endptr1886 to i16*
  store i16 98, i16* %133, align 1
  br label %if.end807

if.else801:                                       ; preds = %for.end795
  %tobool802 = icmp eq i8 %in_crlf.0, 0
  br i1 %tobool802, label %if.end807, label %if.then803

if.then803:                                       ; preds = %if.else801
  %strlen1883 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1884 = getelementptr i8* %arraydecay, i64 %strlen1883
  %134 = bitcast i8* %endptr1884 to i16*
  store i16 116, i16* %134, align 1
  br label %if.end807

if.end807:                                        ; preds = %if.else801, %if.then803, %if.then798
  %135 = load i8* %type.14, align 1, !tbaa !1
  switch i8 %135, label %if.else858 [
    i8 38, label %duplicity
    i8 45, label %land.lhs.true816
  ]

land.lhs.true816:                                 ; preds = %if.end807
  %arrayidx817 = getelementptr inbounds i8* %type.1.pn, i64 2
  %136 = load i8* %arrayidx817, align 1, !tbaa !1
  switch i8 %136, label %if.else858 [
    i8 0, label %if.then849
    i8 32, label %if.then849
    i8 9, label %if.then849
    i8 10, label %if.then849
    i8 13, label %if.then849
    i8 12, label %if.then849
    i8 58, label %if.then849
  ]

if.then849:                                       ; preds = %land.lhs.true816, %land.lhs.true816, %land.lhs.true816, %land.lhs.true816, %land.lhs.true816, %land.lhs.true816, %land.lhs.true816
  %call851 = call %struct._PerlIO** @Perl_PerlIO_stdin() #8
  %137 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type853 = getelementptr inbounds %struct.xpvio* %137, i64 0, i32 21
  store i8 45, i8* %xio_type853, align 1, !tbaa !1
  %cmp854 = icmp sgt i32 %num_svs, 1
  br i1 %cmp854, label %if.then856, label %if.end867

if.then856:                                       ; preds = %if.then849
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str13, i64 0, i64 0), i32 45) #8
  br label %if.end867

if.else858:                                       ; preds = %land.lhs.true816, %if.end807
  br i1 %tobool229, label %if.end864, label %if.then860

if.then860:                                       ; preds = %if.else858
  %call861 = call i64 @strlen(i8* %type.14) #8
  %call862 = call %struct.sv* @Perl_newSVpvn(i8* %type.14, i64 %call861) #8
  %call863 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call862) #8
  store %struct.sv* %call863, %struct.sv** %namesv, align 8, !tbaa !3
  br label %if.end864

if.end864:                                        ; preds = %if.then860, %if.else858
  %type.15 = phi i8* [ %type.14, %if.else858 ], [ null, %if.then860 ]
  %num_svs.addr.6 = phi i32 [ %num_svs, %if.else858 ], [ 1, %if.then860 ]
  %svp.addr.5 = phi %struct.sv** [ %svp, %if.else858 ], [ %namesv, %if.then860 ]
  %call866 = call %struct._PerlIO** @PerlIO_openn(i8* %type.15, i8* %arraydecay, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 %num_svs.addr.6, %struct.sv** %svp.addr.5) #8
  br label %if.end867

if.end867:                                        ; preds = %if.then849, %if.then856, %if.end864
  %type.16 = phi i8* [ %arrayidx817, %if.then856 ], [ %arrayidx817, %if.then849 ], [ %type.15, %if.end864 ]
  %fp.2 = phi %struct._PerlIO** [ %call851, %if.then856 ], [ %call851, %if.then849 ], [ %call866, %if.end864 ]
  %num_svs.addr.7 = phi i32 [ %num_svs, %if.then856 ], [ %num_svs, %if.then849 ], [ %num_svs.addr.6, %if.end864 ]
  %svp.addr.6 = phi %struct.sv** [ %svp, %if.then856 ], [ %svp, %if.then849 ], [ %svp.addr.5, %if.end864 ]
  %tobool868 = icmp ne %struct._PerlIO** %fp.2, null
  %tobool870 = icmp eq i8* %type.16, null
  %or.cond1902 = or i1 %tobool868, %tobool870
  br i1 %or.cond1902, label %if.end1174, label %land.lhs.true871

land.lhs.true871:                                 ; preds = %if.end867
  %138 = load i8* %type.16, align 1, !tbaa !1
  switch i8 %138, label %land.lhs.true878 [
    i8 0, label %if.end1174.thread1997
    i8 58, label %if.end1174.thread1997
  ]

land.lhs.true878:                                 ; preds = %land.lhs.true871
  %.off = add i8 %138, -65
  %139 = icmp ult i8 %.off, 26
  br i1 %139, label %if.end1174.thread1997, label %lor.lhs.false886

lor.lhs.false886:                                 ; preds = %land.lhs.true878
  %.off1962 = add i8 %138, -97
  %140 = icmp ult i8 %.off1962, 26
  %cmp896 = icmp eq i8 %138, 95
  %or.cond1961 = or i1 %140, %cmp896
  br i1 %or.cond1961, label %if.end1174.thread1997, label %unknown_open_mode

if.else900:                                       ; preds = %if.end275
  %cmp905 = icmp eq i8 %52, 45
  %or.cond1905 = and i1 %tobool229, %cmp905
  br i1 %or.cond1905, label %land.lhs.true907, label %lor.lhs.false912

land.lhs.true907:                                 ; preds = %if.else900
  %arrayidx908 = getelementptr inbounds i8* %type.1, i64 1
  %141 = load i8* %arrayidx908, align 1, !tbaa !1
  %cmp910 = icmp eq i8 %141, 124
  br i1 %cmp910, label %if.then923, label %lor.lhs.false912

lor.lhs.false912:                                 ; preds = %land.lhs.true264, %land.lhs.true248, %land.lhs.true907, %if.else900
  %type.119911996 = phi i8* [ %type.1, %land.lhs.true907 ], [ %type.1, %if.else900 ], [ %type.0, %land.lhs.true248 ], [ %type.0, %land.lhs.true264 ]
  br i1 %tobool229, label %unknown_open_mode, label %land.lhs.true914

land.lhs.true914:                                 ; preds = %lor.lhs.false912
  %add.ptr915 = getelementptr inbounds i8* %type.119911996, i64 1
  %cmp916 = icmp ugt i8* %tend.0.lcssa, %add.ptr915
  br i1 %cmp916, label %land.lhs.true918, label %if.end1108

land.lhs.true918:                                 ; preds = %land.lhs.true914
  %arrayidx919 = getelementptr inbounds i8* %tend.0.lcssa, i64 -1
  %142 = load i8* %arrayidx919, align 1, !tbaa !1
  %cmp921 = icmp eq i8 %142, 124
  br i1 %cmp921, label %if.then923, label %if.end1108

if.then923:                                       ; preds = %land.lhs.true918, %land.lhs.true907
  %type.119911995 = phi i8* [ %type.119911996, %land.lhs.true918 ], [ %type.1, %land.lhs.true907 ]
  br i1 %tobool229, label %if.then925, label %if.else927

if.then925:                                       ; preds = %if.then923
  %add.ptr926 = getelementptr inbounds i8* %type.119911995, i64 2
  %.pre1984 = load i8* %name.addr.0, align 1, !tbaa !1
  br label %if.end991

if.else927:                                       ; preds = %if.then923
  %incdec.ptr928 = getelementptr inbounds i8* %tend.0.lcssa, i64 -1
  store i8 0, i8* %incdec.ptr928, align 1, !tbaa !1
  %cmp9301967 = icmp ugt i8* %incdec.ptr928, %type.119911995
  br i1 %cmp9301967, label %land.rhs932, label %for.cond962

land.rhs932:                                      ; preds = %if.else927, %while.body959
  %tend.11968 = phi i8* [ %arrayidx933, %while.body959 ], [ %incdec.ptr928, %if.else927 ]
  %arrayidx933 = getelementptr inbounds i8* %tend.11968, i64 -1
  %143 = load i8* %arrayidx933, align 1, !tbaa !1
  switch i8 %143, label %for.cond962 [
    i8 32, label %while.body959
    i8 9, label %while.body959
    i8 10, label %while.body959
    i8 13, label %while.body959
    i8 12, label %while.body959
  ]

while.body959:                                    ; preds = %land.rhs932, %land.rhs932, %land.rhs932, %land.rhs932, %land.rhs932
  store i8 0, i8* %arrayidx933, align 1, !tbaa !1
  %cmp930 = icmp ugt i8* %arrayidx933, %type.119911995
  br i1 %cmp930, label %land.rhs932, label %for.cond962

for.cond962:                                      ; preds = %if.else927, %land.rhs932, %while.body959, %for.inc984
  %type.17 = phi i8* [ %incdec.ptr985, %for.inc984 ], [ %type.119911995, %if.else927 ], [ %type.119911995, %land.rhs932 ], [ %type.119911995, %while.body959 ]
  %144 = load i8* %type.17, align 1, !tbaa !1
  switch i8 %144, label %if.end991 [
    i8 32, label %for.inc984
    i8 9, label %for.inc984
    i8 10, label %for.inc984
    i8 13, label %for.inc984
    i8 12, label %for.inc984
  ]

for.inc984:                                       ; preds = %for.cond962, %for.cond962, %for.cond962, %for.cond962, %for.cond962
  %incdec.ptr985 = getelementptr inbounds i8* %type.17, i64 1
  br label %for.cond962

if.end991:                                        ; preds = %for.cond962, %if.then925
  %145 = phi i8 [ %.pre1984, %if.then925 ], [ %144, %for.cond962 ]
  %type.18 = phi i8* [ %add.ptr926, %if.then925 ], [ %type.17, %for.cond962 ]
  %name.addr.2 = phi i8* [ %name.addr.0, %if.then925 ], [ %type.17, %for.cond962 ]
  switch i8 %145, label %if.then1037 [
    i8 0, label %if.then995
    i8 45, label %land.lhs.true1030
  ]

if.then995:                                       ; preds = %if.end991
  %146 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings996 = getelementptr inbounds %struct.cop* %146, i64 0, i32 14
  %147 = load %struct.sv** %cop_warnings996, align 8, !tbaa !3
  %cmp997 = icmp eq %struct.sv* %147, null
  br i1 %cmp997, label %lor.lhs.false1015, label %land.lhs.true999

land.lhs.true999:                                 ; preds = %if.then995
  %148 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1000 = getelementptr inbounds %struct.cop* %148, i64 0, i32 14
  %149 = load %struct.sv** %cop_warnings1000, align 8, !tbaa !3
  %cmp1001 = icmp eq %struct.sv* %149, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp1001, label %lor.lhs.false1015, label %land.lhs.true1003

land.lhs.true1003:                                ; preds = %land.lhs.true999
  %150 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1004 = getelementptr inbounds %struct.cop* %150, i64 0, i32 14
  %151 = load %struct.sv** %cop_warnings1004, align 8, !tbaa !3
  %cmp1005 = icmp eq %struct.sv* %151, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp1005, label %if.then1023, label %lor.lhs.false1007

lor.lhs.false1007:                                ; preds = %land.lhs.true1003
  %152 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1008 = getelementptr inbounds %struct.cop* %152, i64 0, i32 14
  %153 = load %struct.sv** %cop_warnings1008, align 8, !tbaa !3
  %sv_any1009 = getelementptr inbounds %struct.sv* %153, i64 0, i32 0
  %154 = load i8** %sv_any1009, align 8, !tbaa !3
  %xpv_pv1010 = bitcast i8* %154 to i8**
  %155 = load i8** %xpv_pv1010, align 8, !tbaa !3
  %arrayidx1011 = getelementptr inbounds i8* %155, i64 2
  %156 = load i8* %arrayidx1011, align 1, !tbaa !1
  %and1013 = and i8 %156, 16
  %tobool1014 = icmp eq i8 %and1013, 0
  br i1 %tobool1014, label %lor.lhs.false1015, label %if.then1023

lor.lhs.false1015:                                ; preds = %lor.lhs.false1007, %land.lhs.true999, %if.then995
  %157 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1016 = getelementptr inbounds %struct.cop* %157, i64 0, i32 14
  %158 = load %struct.sv** %cop_warnings1016, align 8, !tbaa !3
  %cmp1017 = icmp eq %struct.sv* %158, null
  br i1 %cmp1017, label %land.lhs.true1019, label %if.end1024

land.lhs.true1019:                                ; preds = %lor.lhs.false1015
  %159 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and1021 = and i8 %159, 1
  %tobool1022 = icmp eq i8 %and1021, 0
  br i1 %tobool1022, label %if.end1024, label %if.then1023

if.then1023:                                      ; preds = %lor.lhs.false1007, %land.lhs.true1019, %land.lhs.true1003
  call void (i32, i8*, ...)* @Perl_warner(i32 10, i8* getelementptr inbounds ([30 x i8]* @.str6, i64 0, i64 0)) #8
  br label %if.end1024

if.end1024:                                       ; preds = %land.lhs.true1019, %if.then1023, %lor.lhs.false1015
  %call1025 = call i32* @__errno_location() #8
  store i32 32, i32* %call1025, align 4, !tbaa !0
  br label %say_false

land.lhs.true1030:                                ; preds = %if.end991
  %arrayidx1031 = getelementptr inbounds i8* %name.addr.2, i64 1
  %160 = load i8* %arrayidx1031, align 1, !tbaa !1
  %cmp1033 = icmp eq i8 %160, 0
  br i1 %cmp1033, label %lor.lhs.false1035, label %if.then1037

lor.lhs.false1035:                                ; preds = %land.lhs.true1030
  %161 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool1038 = icmp ne i8 %161, 0
  %or.cond1500 = and i1 %tobool229, %tobool1038
  br i1 %or.cond1500, label %if.then1039, label %if.end1041

if.then1037:                                      ; preds = %land.lhs.true1030, %if.end991
  %.old1499 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool1038.old = icmp eq i8 %.old1499, 0
  br i1 %tobool1038.old, label %if.end1044, label %if.then1039

if.then1039:                                      ; preds = %if.then1037, %lor.lhs.false1035
  call void @Perl_taint_env() #8
  %.pr1934 = load i8* @PL_tainting, align 1, !tbaa !1
  br label %if.end1041

if.end1041:                                       ; preds = %if.then1039, %lor.lhs.false1035
  %162 = phi i8 [ %.pr1934, %if.then1039 ], [ %161, %lor.lhs.false1035 ]
  %tobool1042 = icmp eq i8 %162, 0
  br i1 %tobool1042, label %if.end1044, label %if.then1043

if.then1043:                                      ; preds = %if.end1041
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #8
  br label %if.end1044

if.end1044:                                       ; preds = %if.then1037, %if.end1041, %if.then1043
  store i8 114, i8* %arraydecay, align 8, !tbaa !1
  %tobool1046 = icmp eq i8 %in_raw.0, 0
  br i1 %tobool1046, label %if.else1050, label %if.then1047

if.then1047:                                      ; preds = %if.end1044
  %strlen1880 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1881 = getelementptr i8* %arraydecay, i64 %strlen1880
  %163 = bitcast i8* %endptr1881 to i16*
  store i16 98, i16* %163, align 1
  br label %if.end1056

if.else1050:                                      ; preds = %if.end1044
  %tobool1051 = icmp eq i8 %in_crlf.0, 0
  br i1 %tobool1051, label %if.end1056, label %if.then1052

if.then1052:                                      ; preds = %if.else1050
  %strlen1878 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1879 = getelementptr i8* %arraydecay, i64 %strlen1878
  %164 = bitcast i8* %endptr1879 to i16*
  store i16 116, i16* %164, align 1
  br label %if.end1056

if.end1056:                                       ; preds = %if.else1050, %if.then1052, %if.then1047
  %cmp1057 = icmp sgt i32 %num_svs, 1
  br i1 %cmp1057, label %if.then1059, label %if.else1062

if.then1059:                                      ; preds = %if.end1056
  %call1061 = call %struct._PerlIO** @Perl_my_popen_list(i8* %arraydecay, i32 %num_svs, %struct.sv** %svp) #8
  br label %if.end1065

if.else1062:                                      ; preds = %if.end1056
  %call1064 = call %struct._PerlIO** @Perl_my_popen(i8* %name.addr.2, i8* %arraydecay) #8
  br label %if.end1065

if.end1065:                                       ; preds = %if.else1062, %if.then1059
  %fp.3 = phi %struct._PerlIO** [ %call1061, %if.then1059 ], [ %call1064, %if.else1062 ]
  %165 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1067 = getelementptr inbounds %struct.xpvio* %165, i64 0, i32 21
  store i8 124, i8* %xio_type1067, align 1, !tbaa !1
  br i1 %tobool229, label %for.cond1070, label %if.end1174

for.cond1070:                                     ; preds = %if.end1065, %for.inc1092
  %type.19 = phi i8* [ %incdec.ptr1093, %for.inc1092 ], [ %type.18, %if.end1065 ]
  %166 = load i8* %type.19, align 1, !tbaa !1
  switch i8 %166, label %if.then1096 [
    i8 32, label %for.inc1092
    i8 9, label %for.inc1092
    i8 10, label %for.inc1092
    i8 13, label %for.inc1092
    i8 12, label %for.inc1092
    i8 0, label %if.end1174
  ]

for.inc1092:                                      ; preds = %for.cond1070, %for.cond1070, %for.cond1070, %for.cond1070, %for.cond1070
  %incdec.ptr1093 = getelementptr inbounds i8* %type.19, i64 1
  br label %for.cond1070

if.then1096:                                      ; preds = %for.cond1070
  %call1098 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %fp.3, i8* %arraydecay, i8* %type.19) #8
  %cmp1099 = icmp eq i32 %call1098, 0
  br i1 %cmp1099, label %if.end1174, label %say_false

if.end1108:                                       ; preds = %land.lhs.true918, %land.lhs.true914
  %167 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1110 = getelementptr inbounds %struct.xpvio* %167, i64 0, i32 21
  store i8 60, i8* %xio_type1110, align 1, !tbaa !1
  br label %for.cond1111

for.cond1111:                                     ; preds = %for.inc1133, %if.end1108
  %name.addr.3 = phi i8* [ %type.119911996, %if.end1108 ], [ %incdec.ptr1134, %for.inc1133 ]
  %168 = load i8* %name.addr.3, align 1, !tbaa !1
  switch i8 %168, label %for.end1135 [
    i8 32, label %for.inc1133
    i8 9, label %for.inc1133
    i8 10, label %for.inc1133
    i8 13, label %for.inc1133
    i8 12, label %for.inc1133
  ]

for.inc1133:                                      ; preds = %for.cond1111, %for.cond1111, %for.cond1111, %for.cond1111, %for.cond1111
  %incdec.ptr1134 = getelementptr inbounds i8* %name.addr.3, i64 1
  br label %for.cond1111

for.end1135:                                      ; preds = %for.cond1111
  store i8 114, i8* %arraydecay, align 8, !tbaa !1
  %tobool1137 = icmp eq i8 %in_raw.0, 0
  br i1 %tobool1137, label %if.else1141, label %if.then1138

if.then1138:                                      ; preds = %for.end1135
  %strlen1870 = call i64 @strlen(i8* %arraydecay) #2
  %endptr1871 = getelementptr i8* %arraydecay, i64 %strlen1870
  %169 = bitcast i8* %endptr1871 to i16*
  store i16 98, i16* %169, align 1
  br label %if.end1147

if.else1141:                                      ; preds = %for.end1135
  %tobool1142 = icmp eq i8 %in_crlf.0, 0
  br i1 %tobool1142, label %if.end1147, label %if.then1143

if.then1143:                                      ; preds = %if.else1141
  %strlen = call i64 @strlen(i8* %arraydecay) #2
  %endptr = getelementptr i8* %arraydecay, i64 %strlen
  %170 = bitcast i8* %endptr to i16*
  store i16 116, i16* %170, align 1
  br label %if.end1147

if.end1147:                                       ; preds = %if.else1141, %if.then1143, %if.then1138
  %171 = load i8* %name.addr.3, align 1, !tbaa !1
  %cmp1149 = icmp eq i8 %171, 45
  br i1 %cmp1149, label %land.lhs.true1151, label %if.end1166

land.lhs.true1151:                                ; preds = %if.end1147
  %arrayidx1152 = getelementptr inbounds i8* %name.addr.3, i64 1
  %172 = load i8* %arrayidx1152, align 1, !tbaa !1
  %cmp1154 = icmp eq i8 %172, 0
  br i1 %cmp1154, label %if.then1156, label %if.end1166

if.then1156:                                      ; preds = %land.lhs.true1151
  %call1157 = call %struct._PerlIO** @Perl_PerlIO_stdin() #8
  %173 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1159 = getelementptr inbounds %struct.xpvio* %173, i64 0, i32 21
  store i8 45, i8* %xio_type1159, align 1, !tbaa !1
  br label %if.end1174

if.end1166:                                       ; preds = %land.lhs.true1151, %if.end1147
  %call1163 = call i64 @strlen(i8* %type.119911996) #8
  %call1164 = call %struct.sv* @Perl_newSVpvn(i8* %type.119911996, i64 %call1163) #8
  %call1165 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1164) #8
  store %struct.sv* %call1165, %struct.sv** %namesv, align 8, !tbaa !3
  %call1168 = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %arraydecay, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 1, %struct.sv** %namesv) #8
  br label %if.end1174

if.end1174.thread1997:                            ; preds = %land.lhs.true736, %land.lhs.true736, %land.lhs.true871, %land.lhs.true871, %land.lhs.true743, %lor.lhs.false751, %land.lhs.true878, %lor.lhs.false886
  %174 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings12161999 = getelementptr inbounds %struct.cop* %174, i64 0, i32 14
  %175 = load %struct.sv** %cop_warnings12161999, align 8, !tbaa !3
  %cmp12172000 = icmp eq %struct.sv* %175, null
  br i1 %cmp12172000, label %lor.lhs.false1196, label %land.lhs.true1180

if.end1174:                                       ; preds = %for.cond1070, %if.end867, %if.end732, %if.then1096, %if.then438, %if.then436, %if.end434, %if.then1156, %if.end1166, %if.end1065, %if.end169
  %was_fdopen.5 = phi i8 [ 0, %if.end169 ], [ %was_fdopen.2, %if.then438 ], [ %was_fdopen.2, %if.then436 ], [ %was_fdopen.2, %if.end434 ], [ %was_fdopen.4, %if.end732 ], [ 0, %if.end867 ], [ 0, %if.then1096 ], [ 0, %if.end1065 ], [ 0, %if.then1156 ], [ 0, %if.end1166 ], [ 0, %for.cond1070 ]
  %type.21 = phi i8* [ null, %if.end169 ], [ %type.5, %if.then438 ], [ %type.5, %if.then436 ], [ %type.5, %if.end434 ], [ %type.13, %if.end732 ], [ %type.16, %if.end867 ], [ %type.19, %if.then1096 ], [ %type.18, %if.end1065 ], [ %type.119911996, %if.then1156 ], [ null, %if.end1166 ], [ %type.19, %for.cond1070 ]
  %fp.4 = phi %struct._PerlIO** [ %call179, %if.end169 ], [ %fp.0, %if.then438 ], [ %fp.0, %if.then436 ], [ %fp.0, %if.end434 ], [ %fp.1, %if.end732 ], [ %fp.2, %if.end867 ], [ %fp.3, %if.then1096 ], [ %fp.3, %if.end1065 ], [ %call1157, %if.then1156 ], [ %call1168, %if.end1166 ], [ %fp.3, %for.cond1070 ]
  %svp.addr.8 = phi %struct.sv** [ %namesv, %if.end169 ], [ %svp.addr.2, %if.then438 ], [ %svp.addr.2, %if.then436 ], [ %svp.addr.2, %if.end434 ], [ %svp.addr.4, %if.end732 ], [ %svp.addr.6, %if.end867 ], [ %svp, %if.then1096 ], [ %svp, %if.end1065 ], [ %svp, %if.then1156 ], [ %namesv, %if.end1166 ], [ %svp, %for.cond1070 ]
  %name.addr.4 = phi i8* [ %name, %if.end169 ], [ %name.addr.1, %if.then438 ], [ %name.addr.1, %if.then436 ], [ %name.addr.1, %if.end434 ], [ %name.addr.0, %if.end732 ], [ %name.addr.0, %if.end867 ], [ %name.addr.2, %if.then1096 ], [ %name.addr.2, %if.end1065 ], [ %name.addr.3, %if.then1156 ], [ %name.addr.3, %if.end1166 ], [ %name.addr.2, %for.cond1070 ]
  %tobool1175 = icmp eq %struct._PerlIO** %fp.4, null
  %176 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1216 = getelementptr inbounds %struct.cop* %176, i64 0, i32 14
  %177 = load %struct.sv** %cop_warnings1216, align 8, !tbaa !3
  %cmp1217 = icmp ne %struct.sv* %177, null
  br i1 %tobool1175, label %if.then1176, label %if.end1215

if.then1176:                                      ; preds = %if.end1174
  br i1 %cmp1217, label %land.lhs.true1180, label %lor.lhs.false1196

land.lhs.true1180:                                ; preds = %if.end1174.thread1997, %if.then1176
  %name.addr.420012005 = phi i8* [ %name.addr.0, %if.end1174.thread1997 ], [ %name.addr.4, %if.then1176 ]
  %178 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1181 = getelementptr inbounds %struct.cop* %178, i64 0, i32 14
  %179 = load %struct.sv** %cop_warnings1181, align 8, !tbaa !3
  %cmp1182 = icmp eq %struct.sv* %179, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp1182, label %lor.lhs.false1196, label %land.lhs.true1184

land.lhs.true1184:                                ; preds = %land.lhs.true1180
  %180 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1185 = getelementptr inbounds %struct.cop* %180, i64 0, i32 14
  %181 = load %struct.sv** %cop_warnings1185, align 8, !tbaa !3
  %cmp1186 = icmp eq %struct.sv* %181, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp1186, label %land.lhs.true1204, label %lor.lhs.false1188

lor.lhs.false1188:                                ; preds = %land.lhs.true1184
  %182 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1189 = getelementptr inbounds %struct.cop* %182, i64 0, i32 14
  %183 = load %struct.sv** %cop_warnings1189, align 8, !tbaa !3
  %sv_any1190 = getelementptr inbounds %struct.sv* %183, i64 0, i32 0
  %184 = load i8** %sv_any1190, align 8, !tbaa !3
  %xpv_pv1191 = bitcast i8* %184 to i8**
  %185 = load i8** %xpv_pv1191, align 8, !tbaa !3
  %arrayidx1192 = getelementptr inbounds i8* %185, i64 2
  %186 = load i8* %arrayidx1192, align 1, !tbaa !1
  %and1194 = and i8 %186, 4
  %tobool1195 = icmp eq i8 %and1194, 0
  br i1 %tobool1195, label %lor.lhs.false1196, label %land.lhs.true1204

lor.lhs.false1196:                                ; preds = %if.end1174.thread1997, %lor.lhs.false1188, %land.lhs.true1180, %if.then1176
  %name.addr.420012004 = phi i8* [ %name.addr.0, %if.end1174.thread1997 ], [ %name.addr.420012005, %lor.lhs.false1188 ], [ %name.addr.420012005, %land.lhs.true1180 ], [ %name.addr.4, %if.then1176 ]
  %187 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1197 = getelementptr inbounds %struct.cop* %187, i64 0, i32 14
  %188 = load %struct.sv** %cop_warnings1197, align 8, !tbaa !3
  %cmp1198 = icmp eq %struct.sv* %188, null
  br i1 %cmp1198, label %land.lhs.true1200, label %say_false

land.lhs.true1200:                                ; preds = %lor.lhs.false1196
  %189 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and1202 = and i8 %189, 1
  %tobool1203 = icmp eq i8 %and1202, 0
  br i1 %tobool1203, label %say_false, label %land.lhs.true1204

land.lhs.true1204:                                ; preds = %lor.lhs.false1188, %land.lhs.true1200, %land.lhs.true1184
  %name.addr.420012003 = phi i8* [ %name.addr.420012005, %lor.lhs.false1188 ], [ %name.addr.420012004, %land.lhs.true1200 ], [ %name.addr.420012005, %land.lhs.true1184 ]
  %190 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1206 = getelementptr inbounds %struct.xpvio* %190, i64 0, i32 21
  %191 = load i8* %xio_type1206, align 1, !tbaa !1
  %cmp1208 = icmp eq i8 %191, 60
  br i1 %cmp1208, label %land.lhs.true1210, label %say_false

land.lhs.true1210:                                ; preds = %land.lhs.true1204
  %call1211 = call i8* @strchr(i8* %name.addr.420012003, i32 10) #8
  %tobool1212 = icmp eq i8* %call1211, null
  br i1 %tobool1212, label %say_false, label %if.then1213

if.then1213:                                      ; preds = %land.lhs.true1210
  call void (i32, i8*, ...)* @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8]* @PL_warn_nl, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #8
  br label %say_false

if.end1215:                                       ; preds = %if.end1174
  br i1 %cmp1217, label %land.lhs.true1219, label %lor.lhs.false1235

land.lhs.true1219:                                ; preds = %if.end1174.thread, %if.end1215
  %was_fdopen.519391959 = phi i8 [ %was_fdopen.3, %if.end1174.thread ], [ %was_fdopen.5, %if.end1215 ]
  %type.2119401955 = phi i8* [ %.type.91919, %if.end1174.thread ], [ %type.21, %if.end1215 ]
  %fp.419411951 = phi %struct._PerlIO** [ %call641, %if.end1174.thread ], [ %fp.4, %if.end1215 ]
  %svp.addr.819431948 = phi %struct.sv** [ %svp, %if.end1174.thread ], [ %svp.addr.8, %if.end1215 ]
  %192 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1220 = getelementptr inbounds %struct.cop* %192, i64 0, i32 14
  %193 = load %struct.sv** %cop_warnings1220, align 8, !tbaa !3
  %cmp1221 = icmp eq %struct.sv* %193, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp1221, label %lor.lhs.false1235, label %land.lhs.true1223

land.lhs.true1223:                                ; preds = %land.lhs.true1219
  %194 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1224 = getelementptr inbounds %struct.cop* %194, i64 0, i32 14
  %195 = load %struct.sv** %cop_warnings1224, align 8, !tbaa !3
  %cmp1225 = icmp eq %struct.sv* %195, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp1225, label %if.then1243, label %lor.lhs.false1227

lor.lhs.false1227:                                ; preds = %land.lhs.true1223
  %196 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1228 = getelementptr inbounds %struct.cop* %196, i64 0, i32 14
  %197 = load %struct.sv** %cop_warnings1228, align 8, !tbaa !3
  %sv_any1229 = getelementptr inbounds %struct.sv* %197, i64 0, i32 0
  %198 = load i8** %sv_any1229, align 8, !tbaa !3
  %xpv_pv1230 = bitcast i8* %198 to i8**
  %199 = load i8** %xpv_pv1230, align 8, !tbaa !3
  %arrayidx1231 = getelementptr inbounds i8* %199, i64 1
  %200 = load i8* %arrayidx1231, align 1, !tbaa !1
  %and1233 = and i8 %200, 4
  %tobool1234 = icmp eq i8 %and1233, 0
  br i1 %tobool1234, label %lor.lhs.false1235, label %if.then1243

lor.lhs.false1235:                                ; preds = %if.end1174.thread, %lor.lhs.false1227, %land.lhs.true1219, %if.end1215
  %was_fdopen.519391958 = phi i8 [ %was_fdopen.3, %if.end1174.thread ], [ %was_fdopen.519391959, %lor.lhs.false1227 ], [ %was_fdopen.519391959, %land.lhs.true1219 ], [ %was_fdopen.5, %if.end1215 ]
  %type.2119401954 = phi i8* [ %.type.91919, %if.end1174.thread ], [ %type.2119401955, %lor.lhs.false1227 ], [ %type.2119401955, %land.lhs.true1219 ], [ %type.21, %if.end1215 ]
  %fp.419411950 = phi %struct._PerlIO** [ %call641, %if.end1174.thread ], [ %fp.419411951, %lor.lhs.false1227 ], [ %fp.419411951, %land.lhs.true1219 ], [ %fp.4, %if.end1215 ]
  %svp.addr.819431947 = phi %struct.sv** [ %svp, %if.end1174.thread ], [ %svp.addr.819431948, %lor.lhs.false1227 ], [ %svp.addr.819431948, %land.lhs.true1219 ], [ %svp.addr.8, %if.end1215 ]
  %201 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1236 = getelementptr inbounds %struct.cop* %201, i64 0, i32 14
  %202 = load %struct.sv** %cop_warnings1236, align 8, !tbaa !3
  %cmp1237 = icmp eq %struct.sv* %202, null
  br i1 %cmp1237, label %land.lhs.true1239, label %if.end1301

land.lhs.true1239:                                ; preds = %lor.lhs.false1235
  %203 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and1241 = and i8 %203, 1
  %tobool1242 = icmp eq i8 %and1241, 0
  br i1 %tobool1242, label %if.end1301, label %if.then1243

if.then1243:                                      ; preds = %lor.lhs.false1227, %land.lhs.true1239, %land.lhs.true1223
  %was_fdopen.519391957 = phi i8 [ %was_fdopen.519391959, %lor.lhs.false1227 ], [ %was_fdopen.519391958, %land.lhs.true1239 ], [ %was_fdopen.519391959, %land.lhs.true1223 ]
  %type.2119401953 = phi i8* [ %type.2119401955, %lor.lhs.false1227 ], [ %type.2119401954, %land.lhs.true1239 ], [ %type.2119401955, %land.lhs.true1223 ]
  %fp.419411949 = phi %struct._PerlIO** [ %fp.419411951, %lor.lhs.false1227 ], [ %fp.419411950, %land.lhs.true1239 ], [ %fp.419411951, %land.lhs.true1223 ]
  %svp.addr.819431946 = phi %struct.sv** [ %svp.addr.819431948, %lor.lhs.false1227 ], [ %svp.addr.819431947, %land.lhs.true1239 ], [ %svp.addr.819431948, %land.lhs.true1223 ]
  %204 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1245 = getelementptr inbounds %struct.xpvio* %204, i64 0, i32 21
  %205 = load i8* %xio_type1245, align 1, !tbaa !1
  %cmp1247 = icmp eq i8 %205, 60
  br i1 %cmp1247, label %land.lhs.true1249, label %if.else1275

land.lhs.true1249:                                ; preds = %if.then1243
  %call1250 = call %struct._PerlIO** @Perl_PerlIO_stdout() #8
  %cmp1251 = icmp eq %struct._PerlIO** %fp.419411949, %call1250
  br i1 %cmp1251, label %if.then1257, label %lor.lhs.false1253

lor.lhs.false1253:                                ; preds = %land.lhs.true1249
  %call1254 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  %cmp1255 = icmp eq %struct._PerlIO** %fp.419411949, %call1254
  br i1 %cmp1255, label %if.then1257, label %lor.lhs.false1253.if.else1275_crit_edge

lor.lhs.false1253.if.else1275_crit_edge:          ; preds = %lor.lhs.false1253
  %.pre1989 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1277.phi.trans.insert = getelementptr inbounds %struct.xpvio* %.pre1989, i64 0, i32 21
  %.pre1990 = load i8* %xio_type1277.phi.trans.insert, align 1, !tbaa !1
  br label %if.else1275

if.then1257:                                      ; preds = %lor.lhs.false1253, %land.lhs.true1249
  %call1258 = call %struct._PerlIO** @Perl_PerlIO_stdout() #8
  %cmp1259 = icmp eq %struct._PerlIO** %fp.419411949, %call1258
  %cond1261 = select i1 %cmp1259, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)
  %sv_any1262 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %206 = load %struct.xpvgv** %sv_any1262, align 8, !tbaa !3
  %xgv_gp1263 = getelementptr inbounds %struct.xpvgv* %206, i64 0, i32 7
  %207 = load %struct.gp** %xgv_gp1263, align 8, !tbaa !3
  %gp_egv1264 = getelementptr inbounds %struct.gp* %207, i64 0, i32 6
  %208 = load %struct.gv** %gp_egv1264, align 8, !tbaa !3
  %tobool1265 = icmp eq %struct.gv* %208, null
  %gv.1906 = select i1 %tobool1265, %struct.gv* %gv, %struct.gv* %208
  %sv_any1273 = getelementptr inbounds %struct.gv* %gv.1906, i64 0, i32 0
  %209 = load %struct.xpvgv** %sv_any1273, align 8, !tbaa !3
  %xgv_name1274 = getelementptr inbounds %struct.xpvgv* %209, i64 0, i32 8
  %210 = load i8** %xgv_name1274, align 8, !tbaa !3
  call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([47 x i8]* @.str14, i64 0, i64 0), i8* %cond1261, i8* %210) #8
  br label %if.end1301

if.else1275:                                      ; preds = %lor.lhs.false1253.if.else1275_crit_edge, %if.then1243
  %211 = phi i8 [ %.pre1990, %lor.lhs.false1253.if.else1275_crit_edge ], [ %205, %if.then1243 ]
  %cmp1279 = icmp eq i8 %211, 62
  br i1 %cmp1279, label %land.lhs.true1281, label %if.end1301

land.lhs.true1281:                                ; preds = %if.else1275
  %call1282 = call %struct._PerlIO** @Perl_PerlIO_stdin() #8
  %cmp1283 = icmp eq %struct._PerlIO** %fp.419411949, %call1282
  br i1 %cmp1283, label %if.then1285, label %if.end1301

if.then1285:                                      ; preds = %land.lhs.true1281
  %sv_any1286 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %212 = load %struct.xpvgv** %sv_any1286, align 8, !tbaa !3
  %xgv_gp1287 = getelementptr inbounds %struct.xpvgv* %212, i64 0, i32 7
  %213 = load %struct.gp** %xgv_gp1287, align 8, !tbaa !3
  %gp_egv1288 = getelementptr inbounds %struct.gp* %213, i64 0, i32 6
  %214 = load %struct.gv** %gp_egv1288, align 8, !tbaa !3
  %tobool1289 = icmp eq %struct.gv* %214, null
  %gv.1907 = select i1 %tobool1289, %struct.gv* %gv, %struct.gv* %214
  %sv_any1297 = getelementptr inbounds %struct.gv* %gv.1907, i64 0, i32 0
  %215 = load %struct.xpvgv** %sv_any1297, align 8, !tbaa !3
  %xgv_name1298 = getelementptr inbounds %struct.xpvgv* %215, i64 0, i32 8
  %216 = load i8** %xgv_name1298, align 8, !tbaa !3
  call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([48 x i8]* @.str17, i64 0, i64 0), i8* %216) #8
  br label %if.end1301

if.end1301:                                       ; preds = %land.lhs.true1239, %if.then1257, %if.then1285, %land.lhs.true1281, %if.else1275, %lor.lhs.false1235
  %was_fdopen.519391956 = phi i8 [ %was_fdopen.519391958, %land.lhs.true1239 ], [ %was_fdopen.519391957, %if.then1257 ], [ %was_fdopen.519391957, %if.then1285 ], [ %was_fdopen.519391957, %land.lhs.true1281 ], [ %was_fdopen.519391957, %if.else1275 ], [ %was_fdopen.519391958, %lor.lhs.false1235 ]
  %type.2119401952 = phi i8* [ %type.2119401954, %land.lhs.true1239 ], [ %type.2119401953, %if.then1257 ], [ %type.2119401953, %if.then1285 ], [ %type.2119401953, %land.lhs.true1281 ], [ %type.2119401953, %if.else1275 ], [ %type.2119401954, %lor.lhs.false1235 ]
  %svp.addr.819431945 = phi %struct.sv** [ %svp.addr.819431947, %land.lhs.true1239 ], [ %svp.addr.819431946, %if.then1257 ], [ %svp.addr.819431946, %if.then1285 ], [ %svp.addr.819431946, %land.lhs.true1281 ], [ %svp.addr.819431946, %if.else1275 ], [ %svp.addr.819431947, %lor.lhs.false1235 ]
  %fp.41942 = phi %struct._PerlIO** [ %fp.419411950, %land.lhs.true1239 ], [ %fp.419411949, %if.then1257 ], [ %fp.419411949, %if.then1285 ], [ %fp.419411949, %land.lhs.true1281 ], [ %fp.419411949, %if.else1275 ], [ %fp.419411950, %lor.lhs.false1235 ]
  %call1302 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %fp.41942) #8
  %217 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1304 = getelementptr inbounds %struct.xpvio* %217, i64 0, i32 21
  %218 = load i8* %xio_type1304, align 1, !tbaa !1
  switch i8 %218, label %land.lhs.true1319 [
    i8 0, label %if.end1336
    i8 124, label %if.end1336
    i8 45, label %if.end1336
  ]

land.lhs.true1319:                                ; preds = %if.end1301
  %cmp1320 = icmp sgt i32 %call1302, -1
  br i1 %cmp1320, label %if.then1322, label %if.end1336

if.then1322:                                      ; preds = %land.lhs.true1319
  %call1323 = call i32 @fstat(i32 %call1302, %struct.stat* @PL_statbuf) #8
  %cmp1324 = icmp slt i32 %call1323, 0
  br i1 %cmp1324, label %if.then1326, label %if.end1328

if.then1326:                                      ; preds = %if.then1322
  %call1327 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %fp.41942) #8
  br label %say_false

if.end1328:                                       ; preds = %if.then1322
  %219 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !0
  %and1329 = and i32 %219, 61440
  %cmp1330 = icmp eq i32 %and1329, 49152
  br i1 %cmp1330, label %if.then1332, label %if.end1336

if.then1332:                                      ; preds = %if.end1328
  %220 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1334 = getelementptr inbounds %struct.xpvio* %220, i64 0, i32 21
  store i8 115, i8* %xio_type1334, align 1, !tbaa !1
  br label %if.end1336

if.end1336:                                       ; preds = %if.end1301, %if.end1301, %if.end1301, %if.end1328, %if.then1332, %land.lhs.true1319
  %tobool1337 = icmp eq %struct._PerlIO** %saveifp.1, null
  br i1 %tobool1337, label %if.end1399, label %if.then1338

if.then1338:                                      ; preds = %if.end1336
  %tobool1339 = icmp eq %struct._PerlIO** %saveofp.1, null
  br i1 %tobool1339, label %if.end1347, label %if.then1340

if.then1340:                                      ; preds = %if.then1338
  %call1341 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %saveofp.1) #8
  %cmp1342 = icmp eq %struct._PerlIO** %saveofp.1, %saveifp.1
  br i1 %cmp1342, label %if.end1347, label %if.then1344

if.then1344:                                      ; preds = %if.then1340
  %call1345 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %saveofp.1) #8
  br label %if.end1347

if.end1347:                                       ; preds = %if.then1340, %if.then1338, %if.then1344
  %cmp1348 = icmp eq i32 %savefd.1, %call1302
  br i1 %cmp1348, label %if.end1397, label %if.then1350

if.then1350:                                      ; preds = %if.end1347
  %call1351 = call i32 @dup2(i32 %call1302, i32 %savefd.1) #8
  %cmp1352 = icmp slt i32 %call1351, 0
  br i1 %cmp1352, label %if.then1354, label %if.end1356

if.then1354:                                      ; preds = %if.then1350
  %call1355 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %fp.41942) #8
  br label %say_false

if.end1356:                                       ; preds = %if.then1350
  %221 = load %struct.av** @PL_fdpid, align 8, !tbaa !3
  %call1357 = call %struct.sv** @Perl_av_fetch(%struct.av* %221, i32 %call1302, i32 1) #8
  %222 = load %struct.sv** %call1357, align 8, !tbaa !3
  %sv_flags1358 = getelementptr inbounds %struct.sv* %222, i64 0, i32 2
  %223 = load i32* %sv_flags1358, align 4, !tbaa !0
  %and1359 = and i32 %223, 255
  %cmp1360 = icmp eq i32 %and1359, 0
  br i1 %cmp1360, label %lor.rhs1362, label %lor.end1366

lor.rhs1362:                                      ; preds = %if.end1356
  %call1363 = call signext i8 @Perl_sv_upgrade(%struct.sv* %222, i32 1) #8
  br label %lor.end1366

lor.end1366:                                      ; preds = %if.end1356, %lor.rhs1362
  %sv_any1367 = getelementptr inbounds %struct.sv* %222, i64 0, i32 0
  %224 = load i8** %sv_any1367, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %224, i64 24
  %225 = bitcast i8* %xiv_iv to i64*
  %226 = load i64* %225, align 8, !tbaa !5
  store i64 0, i64* %225, align 8, !tbaa !5
  %227 = load %struct.av** @PL_fdpid, align 8, !tbaa !3
  %call1371 = call %struct.sv** @Perl_av_fetch(%struct.av* %227, i32 %savefd.1, i32 1) #8
  %228 = load %struct.sv** %call1371, align 8, !tbaa !3
  %sv_flags1372 = getelementptr inbounds %struct.sv* %228, i64 0, i32 2
  %229 = load i32* %sv_flags1372, align 4, !tbaa !0
  %and1373 = and i32 %229, 255
  %cmp1374 = icmp eq i32 %and1373, 0
  br i1 %cmp1374, label %lor.rhs1376, label %lor.end1380

lor.rhs1376:                                      ; preds = %lor.end1366
  %call1377 = call signext i8 @Perl_sv_upgrade(%struct.sv* %228, i32 1) #8
  br label %lor.end1380

lor.end1380:                                      ; preds = %lor.end1366, %lor.rhs1376
  %sext = shl i64 %226, 32
  %conv1382 = ashr exact i64 %sext, 32
  %sv_any1383 = getelementptr inbounds %struct.sv* %228, i64 0, i32 0
  %230 = load i8** %sv_any1383, align 8, !tbaa !3
  %xiv_iv1384 = getelementptr inbounds i8* %230, i64 24
  %231 = bitcast i8* %xiv_iv1384 to i64*
  store i64 %conv1382, i64* %231, align 8, !tbaa !5
  %tobool1385 = icmp eq i8 %was_fdopen.519391956, 0
  br i1 %tobool1385, label %if.else1394, label %if.then1386

if.then1386:                                      ; preds = %lor.end1380
  %call1387 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %fp.41942) #8
  %call1388 = call i32 @dup(i32 %call1387) #8
  %call1389 = call i32 (i32, i32, ...)* @fcntl(i32 %call1387, i32 1) #8
  %call1390 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %fp.41942) #8
  %call1391 = call i32 @dup2(i32 %call1388, i32 %call1387) #8
  %call1392 = call i32 (i32, i32, ...)* @fcntl(i32 %call1387, i32 2, i32 %call1389) #8
  %call1393 = call i32 @close(i32 %call1388) #8
  br label %if.end1397

if.else1394:                                      ; preds = %lor.end1380
  %call1395 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %fp.41942) #8
  br label %if.end1397

if.end1397:                                       ; preds = %if.end1347, %if.then1386, %if.else1394
  call void @Perl_PerlIO_clearerr(%struct._PerlIO** %saveifp.1) #8
  %call1398 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %saveifp.1) #8
  br label %if.end1399

if.end1399:                                       ; preds = %if.end1336, %if.end1397
  %fd.2 = phi i32 [ %call1398, %if.end1397 ], [ %call1302, %if.end1336 ]
  %fp.5 = phi %struct._PerlIO** [ %saveifp.1, %if.end1397 ], [ %fp.41942, %if.end1336 ]
  %cmp1400 = icmp sgt i32 %fd.2, -1
  br i1 %cmp1400, label %if.then1402, label %if.end1408

if.then1402:                                      ; preds = %if.end1399
  %call1403 = call i32* @__errno_location() #8
  %232 = load i32* %call1403, align 4, !tbaa !0
  %233 = load i32* @PL_maxsysfd, align 4, !tbaa !0
  %cmp1404 = icmp sgt i32 %fd.2, %233
  %conv1405 = zext i1 %cmp1404 to i32
  %call1406 = call i32 (i32, i32, ...)* @fcntl(i32 %fd.2, i32 2, i32 %conv1405) #8
  %call1407 = call i32* @__errno_location() #8
  store i32 %232, i32* %call1407, align 4, !tbaa !0
  br label %if.end1408

if.end1408:                                       ; preds = %if.end1399, %if.then1402
  %234 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ifp1410 = getelementptr inbounds %struct.xpvio* %234, i64 0, i32 7
  store %struct._PerlIO** %fp.5, %struct._PerlIO*** %xio_ifp1410, align 8, !tbaa !3
  %235 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_flags = getelementptr inbounds %struct.xpvio* %235, i64 0, i32 22
  %236 = load i8* %xio_flags, align 1, !tbaa !1
  %and1413 = and i8 %236, -33
  store i8 %and1413, i8* %xio_flags, align 1, !tbaa !1
  %237 = load i32* %writing, align 4, !tbaa !0
  %tobool1415 = icmp eq i32 %237, 0
  br i1 %tobool1415, label %return, label %if.then1416

if.then1416:                                      ; preds = %if.end1408
  %238 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1418 = getelementptr inbounds %struct.xpvio* %238, i64 0, i32 21
  %239 = load i8* %xio_type1418, align 1, !tbaa !1
  switch i8 %239, label %if.else1456 [
    i8 115, label %if.then1435
    i8 62, label %land.lhs.true1428
  ]

land.lhs.true1428:                                ; preds = %if.then1416
  br i1 %cmp1400, label %land.lhs.true1431, label %if.else1456

land.lhs.true1431:                                ; preds = %land.lhs.true1428
  %240 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !0
  %and1432 = and i32 %240, 61440
  %cmp1433 = icmp eq i32 %and1432, 8192
  br i1 %cmp1433, label %if.then1435, label %if.else1456

if.then1435:                                      ; preds = %if.then1416, %land.lhs.true1431
  %241 = load i8* %arraydecay, align 8, !tbaa !1
  switch i8 %241, label %if.end1446 [
    i8 73, label %if.then1444
    i8 35, label %if.then1444
  ]

if.then1444:                                      ; preds = %if.then1435, %if.then1435
  %incdec.ptr1445 = getelementptr inbounds i8* %arraydecay, i64 1
  br label %if.end1446

if.end1446:                                       ; preds = %if.then1435, %if.then1444
  %s.0 = phi i8* [ %incdec.ptr1445, %if.then1444 ], [ %arraydecay, %if.then1435 ]
  store i8 119, i8* %s.0, align 1, !tbaa !1
  %call1447 = call %struct._PerlIO** @PerlIO_openn(i8* %type.2119401952, i8* %s.0, i32 %fd.2, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** %svp.addr.819431945) #8
  %242 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ofp1449 = getelementptr inbounds %struct.xpvio* %242, i64 0, i32 8
  store %struct._PerlIO** %call1447, %struct._PerlIO*** %xio_ofp1449, align 8, !tbaa !3
  %tobool1450 = icmp eq %struct._PerlIO** %call1447, null
  br i1 %tobool1450, label %if.then1451, label %return

if.then1451:                                      ; preds = %if.end1446
  %call1452 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %fp.5) #8
  %243 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ifp1454 = getelementptr inbounds %struct.xpvio* %243, i64 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp1454, align 8, !tbaa !3
  br label %say_false

if.else1456:                                      ; preds = %if.then1416, %land.lhs.true1431, %land.lhs.true1428
  %xio_ofp1458 = getelementptr inbounds %struct.xpvio* %238, i64 0, i32 8
  store %struct._PerlIO** %fp.5, %struct._PerlIO*** %xio_ofp1458, align 8, !tbaa !3
  br label %return

say_false:                                        ; preds = %land.lhs.true1200, %lor.lhs.false1196, %if.then1096, %if.then438, %land.lhs.true1210, %land.lhs.true1204, %if.then1213, %if.then1451, %if.then1354, %if.then1326, %if.end1024, %if.then586, %if.end354
  %244 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ifp1462 = getelementptr inbounds %struct.xpvio* %244, i64 0, i32 7
  store %struct._PerlIO** %saveifp.1, %struct._PerlIO*** %xio_ifp1462, align 8, !tbaa !3
  %245 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_ofp1464 = getelementptr inbounds %struct.xpvio* %245, i64 0, i32 8
  store %struct._PerlIO** %saveofp.1, %struct._PerlIO*** %xio_ofp1464, align 8, !tbaa !3
  %246 = load %struct.xpvio** %sv_any30, align 8, !tbaa !3
  %xio_type1466 = getelementptr inbounds %struct.xpvio* %246, i64 0, i32 21
  store i8 %savetype.1, i8* %xio_type1466, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.else1456, %if.end1408, %if.end1446, %say_false
  %retval.0 = phi i8 [ 0, %say_false ], [ 1, %if.end1446 ], [ 1, %if.end1408 ], [ 1, %if.else1456 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_open9(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp, %struct.sv* %svs, i32 %num_svs) #0 {
entry:
  %svs.addr = alloca %struct.sv*, align 8
  store %struct.sv* %svs, %struct.sv** %svs.addr, align 8, !tbaa !3
  %call = call signext i8 @Perl_do_openn(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp, %struct.sv** %svs.addr, i32 1) #7
  ret i8 %call
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_IOadd(%struct.gv*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @Perl_my_pclose(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_taint_proper(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @PerlIO_intmode2str(i32, i8*, i32*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_openn(i8*, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**) #1

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_save_freepv(i8*) #1

; Function Attrs: optsize
declare i8* @Perl_savesvpv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: optsize
declare void @Perl_taint_env() #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_my_popen_list(i8*, i32, %struct.sv**) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_my_popen(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @PerlIO_apply_layers(%struct._PerlIO**, i8*, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_looks_like_number(%struct.sv*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2uv(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.io* @Perl_sv_2io(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stdout() #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stdin() #1

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_fdupopen(%struct._PerlIO**, %struct.clone_params*, i32) #1

; Function Attrs: optsize
declare i32 @dup(i32) #1

; Function Attrs: optsize
declare i32 @close(i32) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fstat(i32, %struct.stat* nocapture) #4

; Function Attrs: optsize
declare i32 @dup2(i32, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: optsize
declare void @Perl_PerlIO_clearerr(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_nextargv(%struct.gv* %gv) #0 {
entry:
  %oldlen = alloca i64, align 8
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_io = getelementptr inbounds %struct.gp* %1, i64 0, i32 2
  %2 = load %struct.io** %gp_io, align 8, !tbaa !3
  %3 = load %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  %tobool = icmp eq %struct.gv* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i32 1, i32 15) #8
  store %struct.gv* %call, %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp ne %struct.io* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %sv_any2 = getelementptr inbounds %struct.io* %2, i64 0, i32 0
  %4 = load %struct.xpvio** %sv_any2, align 8, !tbaa !3
  %xio_flags = getelementptr inbounds %struct.xpvio* %4, i64 0, i32 22
  %5 = load i8* %xio_flags, align 1, !tbaa !1
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %if.then10, label %if.end25

if.then10:                                        ; preds = %land.lhs.true
  %and14 = and i8 %5, -3
  store i8 %and14, i8* %xio_flags, align 1, !tbaa !1
  %8 = load i8** @PL_inplace, align 8, !tbaa !3
  %tobool16 = icmp eq i8* %8, null
  br i1 %tobool16, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.then10
  %9 = load %struct.av** @PL_argvout_stack, align 8, !tbaa !3
  %tobool18 = icmp eq %struct.av* %9, null
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then17
  %call20 = call %struct.av* @Perl_newAV() #8
  store %struct.av* %call20, %struct.av** @PL_argvout_stack, align 8, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then19
  %10 = phi %struct.av* [ %9, %if.then17 ], [ %call20, %if.then19 ]
  %11 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !3
  %12 = bitcast %struct.gv* %11 to %struct.sv*
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool22 = icmp eq %struct.gv* %11, null
  br i1 %tobool22, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end21
  %13 = getelementptr inbounds %struct.gv* %11, i64 0, i32 1
  %14 = load i32* %13, align 4, !tbaa !0
  %inc = add i32 %14, 1
  store i32 %inc, i32* %13, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %if.end21, %land.rhs
  call void @Perl_av_push(%struct.av* %10, %struct.sv* %12) #8
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %if.then10, %land.end, %if.end
  %15 = load i32* @PL_filemode, align 4, !tbaa !0
  %and26 = and i32 %15, 3072
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %if.end53, label %if.then28

if.then28:                                        ; preds = %if.end25
  %16 = load %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  %tobool29 = icmp eq %struct.gv* %16, null
  br i1 %tobool29, label %cond.false45, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.then28
  %17 = getelementptr inbounds %struct.gv* %16, i64 0, i32 2
  %18 = load i32* %17, align 4, !tbaa !0
  %and31 = and i32 %18, 255
  %cmp = icmp eq i32 %and31, 13
  br i1 %cmp, label %land.lhs.true33, label %cond.false45

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %sv_any34 = getelementptr inbounds %struct.gv* %16, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any34, align 8, !tbaa !3
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp35, align 8, !tbaa !3
  %tobool36 = icmp eq %struct.gp* %20, null
  br i1 %tobool36, label %cond.false45, label %cond.true

cond.true:                                        ; preds = %land.lhs.true33
  %gp_io39 = getelementptr inbounds %struct.gp* %20, i64 0, i32 2
  %21 = load %struct.io** %gp_io39, align 8, !tbaa !3
  %tobool40 = icmp eq %struct.io* %21, null
  br i1 %tobool40, label %cond.false45, label %cond.end

cond.false45:                                     ; preds = %cond.true, %land.lhs.true33, %if.then28, %land.lhs.true30
  %call46 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %16) #8
  %sv_any47 = getelementptr inbounds %struct.gv* %call46, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any47, align 8, !tbaa !3
  %xgv_gp48 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp48, align 8, !tbaa !3
  %gp_io49 = getelementptr inbounds %struct.gp* %23, i64 0, i32 2
  %24 = load %struct.io** %gp_io49, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cond.false45
  %cond = phi %struct.io* [ %24, %cond.false45 ], [ %21, %cond.true ]
  %sv_any50 = getelementptr inbounds %struct.io* %cond, i64 0, i32 0
  %25 = load %struct.xpvio** %sv_any50, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %25, i64 0, i32 7
  %26 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %call51 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %26) #8
  %27 = load i8** @PL_oldname, align 8, !tbaa !3
  %28 = load i32* @PL_filemode, align 4, !tbaa !0
  %call52 = call i32 @chmod(i8* %27, i32 %28) #8
  br label %if.end53

if.end53:                                         ; preds = %if.end25, %cond.end
  store i32 -1, i32* @PL_lastfd, align 4, !tbaa !0
  store i32 0, i32* @PL_filemode, align 4, !tbaa !0
  %29 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp55 = getelementptr inbounds %struct.xpvgv* %29, i64 0, i32 7
  %30 = load %struct.gp** %xgv_gp55, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %30, i64 0, i32 4
  %31 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool56 = icmp eq %struct.av* %31, null
  br i1 %tobool56, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end53
  %call62405 = call i32 @Perl_av_len(%struct.av* %31) #8
  %cmp63406 = icmp sgt i32 %call62405, -1
  br i1 %cmp63406, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %32 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 7
  %33 = load %struct.gp** %xgv_gp66, align 8, !tbaa !3
  %gp_av67 = getelementptr inbounds %struct.gp* %33, i64 0, i32 4
  %34 = load %struct.av** %gp_av67, align 8, !tbaa !3
  %call68 = call %struct.sv* @Perl_av_shift(%struct.av* %34) #8
  call void @Perl_save_freesv(%struct.sv* %call68) #8
  %35 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp70 = getelementptr inbounds %struct.xpvgv* %35, i64 0, i32 7
  %36 = load %struct.gp** %xgv_gp70, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %36, i64 0, i32 0
  %37 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  call void @Perl_sv_setsv_flags(%struct.sv* %37, %struct.sv* %call68, i32 2) #8
  %38 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp72 = getelementptr inbounds %struct.xpvgv* %38, i64 0, i32 7
  %39 = load %struct.gp** %xgv_gp72, align 8, !tbaa !3
  %gp_sv73 = getelementptr inbounds %struct.gp* %39, i64 0, i32 0
  %40 = load %struct.sv** %gp_sv73, align 8, !tbaa !3
  %sv_flags74 = getelementptr inbounds %struct.sv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags74, align 4, !tbaa !0
  %and75 = and i32 %41, 16384
  %tobool76 = icmp eq i32 %and75, 0
  br i1 %tobool76, label %if.end82, label %if.then77

if.then77:                                        ; preds = %while.body
  %call81 = call i32 @Perl_mg_set(%struct.sv* %40) #8
  %.pre = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp84.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre407 = load %struct.gp** %xgv_gp84.phi.trans.insert, align 8, !tbaa !3
  %gp_sv85.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre407, i64 0, i32 0
  %.pre408 = load %struct.sv** %gp_sv85.phi.trans.insert, align 8, !tbaa !3
  %sv_flags86.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre408, i64 0, i32 2
  %.pre409 = load i32* %sv_flags86.phi.trans.insert, align 4, !tbaa !0
  br label %if.end82

if.end82:                                         ; preds = %while.body, %if.then77
  %42 = phi i32 [ %41, %while.body ], [ %.pre409, %if.then77 ]
  %43 = phi %struct.sv* [ %40, %while.body ], [ %.pre408, %if.then77 ]
  store %struct.sv* %43, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %and87 = and i32 %42, 262144
  %cmp88 = icmp eq i32 %and87, 0
  br i1 %cmp88, label %cond.false93, label %cond.true90

cond.true90:                                      ; preds = %if.end82
  %sv_any91 = getelementptr inbounds %struct.sv* %43, i64 0, i32 0
  %44 = load i8** %sv_any91, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %44, i64 8
  %45 = bitcast i8* %xpv_cur to i64*
  %46 = load i64* %45, align 8, !tbaa !5
  store i64 %46, i64* %oldlen, align 8, !tbaa !5
  %xpv_pv = bitcast i8* %44 to i8**
  %47 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end95

cond.false93:                                     ; preds = %if.end82
  %call94 = call i8* @Perl_sv_2pv_flags(%struct.sv* %43, i64* %oldlen, i32 2) #8
  %.pre410 = load i64* %oldlen, align 8, !tbaa !5
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false93, %cond.true90
  %48 = phi i64 [ %46, %cond.true90 ], [ %.pre410, %cond.false93 ]
  %cond96 = phi i8* [ %47, %cond.true90 ], [ %call94, %cond.false93 ]
  store i8* %cond96, i8** @PL_oldname, align 8, !tbaa !3
  %conv97 = trunc i64 %48 to i32
  %49 = load i8** @PL_inplace, align 8, !tbaa !3
  %cmp98 = icmp ne i8* %49, null
  %conv99 = zext i1 %cmp98 to i32
  %call.i = call signext i8 @Perl_do_openn(%struct.gv* %gv, i8* %cond96, i32 %conv97, i32 %conv99, i32 0, i32 0, %struct._PerlIO** null, %struct.sv** null, i32 0) #8
  %tobool101 = icmp eq i8 %call.i, 0
  br i1 %tobool101, label %if.else282, label %if.then102

if.then102:                                       ; preds = %cond.end95
  %50 = load i8** @PL_inplace, align 8, !tbaa !3
  %tobool103 = icmp eq i8* %50, null
  br i1 %tobool103, label %if.end276, label %if.then104

if.then104:                                       ; preds = %if.then102
  %51 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool105 = icmp eq i8 %51, 0
  br i1 %tobool105, label %if.end107, label %if.then106

if.then106:                                       ; preds = %if.then104
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0)) #8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.then106
  %52 = load i64* %oldlen, align 8, !tbaa !5
  %cmp108 = icmp eq i64 %52, 1
  br i1 %cmp108, label %land.lhs.true110, label %if.end121

land.lhs.true110:                                 ; preds = %if.end107
  %53 = load i8** @PL_oldname, align 8, !tbaa !3
  %54 = load i8* %53, align 1, !tbaa !1
  %cmp112 = icmp eq i8 %54, 45
  br i1 %cmp112, label %if.then114, label %if.end121

if.then114:                                       ; preds = %land.lhs.true110
  %call115 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i32 1, i32 15) #8
  call void @Perl_setdefout(%struct.gv* %call115) #8
  %55 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp117 = getelementptr inbounds %struct.xpvgv* %55, i64 0, i32 7
  %56 = load %struct.gp** %xgv_gp117, align 8, !tbaa !3
  %gp_io118 = getelementptr inbounds %struct.gp* %56, i64 0, i32 2
  %57 = load %struct.io** %gp_io118, align 8, !tbaa !3
  %sv_any119 = getelementptr inbounds %struct.io* %57, i64 0, i32 0
  %58 = load %struct.xpvio** %sv_any119, align 8, !tbaa !3
  %xio_ifp120 = getelementptr inbounds %struct.xpvio* %58, i64 0, i32 7
  %59 = load %struct._PerlIO*** %xio_ifp120, align 8, !tbaa !3
  br label %return

if.end121:                                        ; preds = %land.lhs.true110, %if.end107
  %60 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !0
  store i32 %60, i32* @PL_filemode, align 4, !tbaa !0
  %and122 = and i32 %60, 61440
  %cmp123 = icmp eq i32 %and122, 32768
  br i1 %cmp123, label %if.end145, label %if.then125

if.then125:                                       ; preds = %if.end121
  %61 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %61, i64 0, i32 14
  %62 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp126 = icmp eq %struct.sv* %62, null
  br i1 %cmp126, label %if.then142, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then125
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings128 = getelementptr inbounds %struct.cop* %63, i64 0, i32 14
  %64 = load %struct.sv** %cop_warnings128, align 8, !tbaa !3
  %cmp129 = icmp eq %struct.sv* %64, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp129, label %if.then142, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false
  %65 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings132 = getelementptr inbounds %struct.cop* %65, i64 0, i32 14
  %66 = load %struct.sv** %cop_warnings132, align 8, !tbaa !3
  %cmp133 = icmp eq %struct.sv* %66, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp133, label %if.end143, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %lor.lhs.false131
  %67 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings136 = getelementptr inbounds %struct.cop* %67, i64 0, i32 14
  %68 = load %struct.sv** %cop_warnings136, align 8, !tbaa !3
  %sv_any137 = getelementptr inbounds %struct.sv* %68, i64 0, i32 0
  %69 = load i8** %sv_any137, align 8, !tbaa !3
  %xpv_pv138 = bitcast i8* %69 to i8**
  %70 = load i8** %xpv_pv138, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %70, i64 5
  %71 = load i8* %arrayidx, align 1, !tbaa !1
  %and140 = and i8 %71, 64
  %tobool141 = icmp eq i8 %and140, 0
  br i1 %tobool141, label %if.end143, label %if.then142

if.then142:                                       ; preds = %land.lhs.true135, %lor.lhs.false, %if.then125
  %72 = load i8** @PL_oldname, align 8, !tbaa !3
  call void (i32, i8*, ...)* @Perl_warner(i32 23, i8* getelementptr inbounds ([48 x i8]* @.str21, i64 0, i64 0), i8* %72) #8
  br label %if.end143

if.end143:                                        ; preds = %land.lhs.true135, %lor.lhs.false131, %if.then142
  %call144 = call signext i8 @Perl_do_close(%struct.gv* %gv, i8 signext 0) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end143, %if.end188, %if.end219, %if.end258, %if.else312, %if.then311, %lor.lhs.false290, %land.lhs.true294
  %73 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv* %73, i64 0, i32 7
  %74 = load %struct.gp** %xgv_gp60, align 8, !tbaa !3
  %gp_av61 = getelementptr inbounds %struct.gp* %74, i64 0, i32 4
  %75 = load %struct.av** %gp_av61, align 8, !tbaa !3
  %call62 = call i32 @Perl_av_len(%struct.av* %75) #8
  %cmp63 = icmp sgt i32 %call62, -1
  br i1 %cmp63, label %while.body, label %while.end

if.end145:                                        ; preds = %if.end121
  %76 = load i8** @PL_inplace, align 8, !tbaa !3
  %77 = load i8* %76, align 1, !tbaa !1
  %tobool146 = icmp eq i8 %77, 0
  br i1 %tobool146, label %if.else192, label %if.then147

if.then147:                                       ; preds = %if.end145
  %call148 = call i8* @strchr(i8* %76, i32 42) #8
  %tobool149 = icmp eq i8* %call148, null
  br i1 %tobool149, label %if.else, label %if.then150

if.then150:                                       ; preds = %if.then147
  call void @Perl_sv_setpvn(%struct.sv* %call68, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then150
  %begin.0 = phi i8* [ %76, %if.then150 ], [ %incdec.ptr, %do.body ]
  %star.0 = phi i8* [ %call148, %if.then150 ], [ %call151, %do.body ]
  %sub.ptr.lhs.cast = ptrtoint i8* %star.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %begin.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_catpvn_flags(%struct.sv* %call68, i8* %begin.0, i64 %sub.ptr.sub, i32 2) #8
  %78 = load i8** @PL_oldname, align 8, !tbaa !3
  %79 = load i64* %oldlen, align 8, !tbaa !5
  call void @Perl_sv_catpvn_flags(%struct.sv* %call68, i8* %78, i64 %79, i32 2) #8
  %incdec.ptr = getelementptr inbounds i8* %star.0, i64 1
  %call151 = call i8* @strchr(i8* %incdec.ptr, i32 42) #8
  %tobool152 = icmp eq i8* %call151, null
  br i1 %tobool152, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %80 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool153 = icmp eq i8 %80, 0
  br i1 %tobool153, label %if.end156, label %if.then154

if.then154:                                       ; preds = %do.end
  call void @Perl_sv_catpv(%struct.sv* %call68, i8* %incdec.ptr) #8
  br label %if.end156

if.else:                                          ; preds = %if.then147
  call void @Perl_sv_catpv(%struct.sv* %call68, i8* %76) #8
  br label %if.end156

if.end156:                                        ; preds = %do.end, %if.then154, %if.else
  %sv_any157 = getelementptr inbounds %struct.sv* %call68, i64 0, i32 0
  %81 = load i8** %sv_any157, align 8, !tbaa !3
  %xpv_pv158 = bitcast i8* %81 to i8**
  %82 = load i8** %xpv_pv158, align 8, !tbaa !3
  %call159 = call i32 @unlink(i8* %82) #8
  %83 = load i8** @PL_oldname, align 8, !tbaa !3
  %84 = load i8** %sv_any157, align 8, !tbaa !3
  %xpv_pv161 = bitcast i8* %84 to i8**
  %85 = load i8** %xpv_pv161, align 8, !tbaa !3
  %call162 = call i32 @link(i8* %83, i8* %85) #8
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %if.then165, label %if.end190

if.then165:                                       ; preds = %if.end156
  %86 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings166 = getelementptr inbounds %struct.cop* %86, i64 0, i32 14
  %87 = load %struct.sv** %cop_warnings166, align 8, !tbaa !3
  %cmp167 = icmp eq %struct.sv* %87, null
  br i1 %cmp167, label %if.then185, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %if.then165
  %88 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings170 = getelementptr inbounds %struct.cop* %88, i64 0, i32 14
  %89 = load %struct.sv** %cop_warnings170, align 8, !tbaa !3
  %cmp171 = icmp eq %struct.sv* %89, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp171, label %if.then185, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false169
  %90 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings174 = getelementptr inbounds %struct.cop* %90, i64 0, i32 14
  %91 = load %struct.sv** %cop_warnings174, align 8, !tbaa !3
  %cmp175 = icmp eq %struct.sv* %91, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp175, label %if.end188, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %lor.lhs.false173
  %92 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings178 = getelementptr inbounds %struct.cop* %92, i64 0, i32 14
  %93 = load %struct.sv** %cop_warnings178, align 8, !tbaa !3
  %sv_any179 = getelementptr inbounds %struct.sv* %93, i64 0, i32 0
  %94 = load i8** %sv_any179, align 8, !tbaa !3
  %xpv_pv180 = bitcast i8* %94 to i8**
  %95 = load i8** %xpv_pv180, align 8, !tbaa !3
  %arrayidx181 = getelementptr inbounds i8* %95, i64 5
  %96 = load i8* %arrayidx181, align 1, !tbaa !1
  %and183 = and i8 %96, 64
  %tobool184 = icmp eq i8 %and183, 0
  br i1 %tobool184, label %if.end188, label %if.then185

if.then185:                                       ; preds = %land.lhs.true177, %lor.lhs.false169, %if.then165
  %97 = load i8** @PL_oldname, align 8, !tbaa !3
  %call186 = call i32* @__errno_location() #8
  %98 = load i32* %call186, align 4, !tbaa !0
  %call187 = call i8* @strerror(i32 %98) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 23, i8* getelementptr inbounds ([41 x i8]* @.str22, i64 0, i64 0), i8* %97, %struct.sv* %call68, i8* %call187) #8
  br label %if.end188

if.end188:                                        ; preds = %land.lhs.true177, %lor.lhs.false173, %if.then185
  %call189 = call signext i8 @Perl_do_close(%struct.gv* %gv, i8 signext 0) #7
  br label %while.cond.backedge

if.end190:                                        ; preds = %if.end156
  %99 = load i8** @PL_oldname, align 8, !tbaa !3
  %call191 = call i32 @unlink(i8* %99) #8
  br label %if.end222

if.else192:                                       ; preds = %if.end145
  %100 = load i8** @PL_oldname, align 8, !tbaa !3
  %call193 = call i32 @unlink(i8* %100) #8
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.else192.if.end222_crit_edge

if.else192.if.end222_crit_edge:                   ; preds = %if.else192
  %sv_any226.pre = getelementptr inbounds %struct.sv* %call68, i64 0, i32 0
  br label %if.end222

if.then196:                                       ; preds = %if.else192
  %101 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings197 = getelementptr inbounds %struct.cop* %101, i64 0, i32 14
  %102 = load %struct.sv** %cop_warnings197, align 8, !tbaa !3
  %cmp198 = icmp eq %struct.sv* %102, null
  br i1 %cmp198, label %if.then216, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %if.then196
  %103 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings201 = getelementptr inbounds %struct.cop* %103, i64 0, i32 14
  %104 = load %struct.sv** %cop_warnings201, align 8, !tbaa !3
  %cmp202 = icmp eq %struct.sv* %104, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp202, label %if.then216, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %lor.lhs.false200
  %105 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings205 = getelementptr inbounds %struct.cop* %105, i64 0, i32 14
  %106 = load %struct.sv** %cop_warnings205, align 8, !tbaa !3
  %cmp206 = icmp eq %struct.sv* %106, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp206, label %if.end219, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %lor.lhs.false204
  %107 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings209 = getelementptr inbounds %struct.cop* %107, i64 0, i32 14
  %108 = load %struct.sv** %cop_warnings209, align 8, !tbaa !3
  %sv_any210 = getelementptr inbounds %struct.sv* %108, i64 0, i32 0
  %109 = load i8** %sv_any210, align 8, !tbaa !3
  %xpv_pv211 = bitcast i8* %109 to i8**
  %110 = load i8** %xpv_pv211, align 8, !tbaa !3
  %arrayidx212 = getelementptr inbounds i8* %110, i64 5
  %111 = load i8* %arrayidx212, align 1, !tbaa !1
  %and214 = and i8 %111, 64
  %tobool215 = icmp eq i8 %and214, 0
  br i1 %tobool215, label %if.end219, label %if.then216

if.then216:                                       ; preds = %land.lhs.true208, %lor.lhs.false200, %if.then196
  %112 = load i8** @PL_oldname, align 8, !tbaa !3
  %call217 = call i32* @__errno_location() #8
  %113 = load i32* %call217, align 4, !tbaa !0
  %call218 = call i8* @strerror(i32 %113) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 23, i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0), i8* %112, i8* %call218) #8
  br label %if.end219

if.end219:                                        ; preds = %land.lhs.true208, %lor.lhs.false204, %if.then216
  %call220 = call signext i8 @Perl_do_close(%struct.gv* %gv, i8 signext 0) #7
  br label %while.cond.backedge

if.end222:                                        ; preds = %if.else192.if.end222_crit_edge, %if.end190
  %sv_any226.pre-phi = phi i8** [ %sv_any226.pre, %if.else192.if.end222_crit_edge ], [ %sv_any157, %if.end190 ]
  %114 = load i8** @PL_inplace, align 8, !tbaa !3
  %lnot = icmp eq i8* %114, null
  %conv224 = zext i1 %lnot to i64
  call void @Perl_sv_setpvn(%struct.sv* %call68, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0), i64 %conv224) #8
  %115 = load i8** @PL_oldname, align 8, !tbaa !3
  %116 = load i64* %oldlen, align 8, !tbaa !5
  call void @Perl_sv_catpvn_flags(%struct.sv* %call68, i8* %115, i64 %116, i32 2) #8
  %call225 = call i32* @__errno_location() #8
  store i32 0, i32* %call225, align 4, !tbaa !0
  %117 = load %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  %118 = load i8** %sv_any226.pre-phi, align 8, !tbaa !3
  %xpv_pv227 = bitcast i8* %118 to i8**
  %119 = load i8** %xpv_pv227, align 8, !tbaa !3
  %xpv_cur229 = getelementptr inbounds i8* %118, i64 8
  %120 = bitcast i8* %xpv_cur229 to i64*
  %121 = load i64* %120, align 8, !tbaa !5
  %conv230 = trunc i64 %121 to i32
  %122 = load i8** @PL_inplace, align 8, !tbaa !3
  %cmp231 = icmp ne i8* %122, null
  %conv232 = zext i1 %cmp231 to i32
  %call.i401 = call signext i8 @Perl_do_openn(%struct.gv* %117, i8* %119, i32 %conv230, i32 %conv232, i32 193, i32 438, %struct._PerlIO** null, %struct.sv** null, i32 0) #8
  %tobool234 = icmp eq i8 %call.i401, 0
  br i1 %tobool234, label %if.then235, label %if.end260

if.then235:                                       ; preds = %if.end222
  %123 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings236 = getelementptr inbounds %struct.cop* %123, i64 0, i32 14
  %124 = load %struct.sv** %cop_warnings236, align 8, !tbaa !3
  %cmp237 = icmp eq %struct.sv* %124, null
  br i1 %cmp237, label %if.then255, label %lor.lhs.false239

lor.lhs.false239:                                 ; preds = %if.then235
  %125 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings240 = getelementptr inbounds %struct.cop* %125, i64 0, i32 14
  %126 = load %struct.sv** %cop_warnings240, align 8, !tbaa !3
  %cmp241 = icmp eq %struct.sv* %126, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp241, label %if.then255, label %lor.lhs.false243

lor.lhs.false243:                                 ; preds = %lor.lhs.false239
  %127 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings244 = getelementptr inbounds %struct.cop* %127, i64 0, i32 14
  %128 = load %struct.sv** %cop_warnings244, align 8, !tbaa !3
  %cmp245 = icmp eq %struct.sv* %128, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp245, label %if.end258, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %lor.lhs.false243
  %129 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings248 = getelementptr inbounds %struct.cop* %129, i64 0, i32 14
  %130 = load %struct.sv** %cop_warnings248, align 8, !tbaa !3
  %sv_any249 = getelementptr inbounds %struct.sv* %130, i64 0, i32 0
  %131 = load i8** %sv_any249, align 8, !tbaa !3
  %xpv_pv250 = bitcast i8* %131 to i8**
  %132 = load i8** %xpv_pv250, align 8, !tbaa !3
  %arrayidx251 = getelementptr inbounds i8* %132, i64 5
  %133 = load i8* %arrayidx251, align 1, !tbaa !1
  %and253 = and i8 %133, 64
  %tobool254 = icmp eq i8 %and253, 0
  br i1 %tobool254, label %if.end258, label %if.then255

if.then255:                                       ; preds = %land.lhs.true247, %lor.lhs.false239, %if.then235
  %134 = load i8** @PL_oldname, align 8, !tbaa !3
  %call256 = call i32* @__errno_location() #8
  %135 = load i32* %call256, align 4, !tbaa !0
  %call257 = call i8* @strerror(i32 %135) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 23, i8* getelementptr inbounds ([32 x i8]* @.str25, i64 0, i64 0), i8* %134, i8* %call257) #8
  br label %if.end258

if.end258:                                        ; preds = %land.lhs.true247, %lor.lhs.false243, %if.then255
  %call259 = call signext i8 @Perl_do_close(%struct.gv* %gv, i8 signext 0) #7
  br label %while.cond.backedge

if.end260:                                        ; preds = %if.end222
  %136 = load %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  call void @Perl_setdefout(%struct.gv* %136) #8
  %137 = load %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  %sv_any261 = getelementptr inbounds %struct.gv* %137, i64 0, i32 0
  %138 = load %struct.xpvgv** %sv_any261, align 8, !tbaa !3
  %xgv_gp262 = getelementptr inbounds %struct.xpvgv* %138, i64 0, i32 7
  %139 = load %struct.gp** %xgv_gp262, align 8, !tbaa !3
  %gp_io263 = getelementptr inbounds %struct.gp* %139, i64 0, i32 2
  %140 = load %struct.io** %gp_io263, align 8, !tbaa !3
  %sv_any264 = getelementptr inbounds %struct.io* %140, i64 0, i32 0
  %141 = load %struct.xpvio** %sv_any264, align 8, !tbaa !3
  %xio_ifp265 = getelementptr inbounds %struct.xpvio* %141, i64 0, i32 7
  %142 = load %struct._PerlIO*** %xio_ifp265, align 8, !tbaa !3
  %call266 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %142) #8
  store i32 %call266, i32* @PL_lastfd, align 4, !tbaa !0
  %call267 = call i32 @fstat(i32 %call266, %struct.stat* @PL_statbuf) #8
  %143 = load i8** @PL_oldname, align 8, !tbaa !3
  %144 = load i32* @PL_filemode, align 4, !tbaa !0
  %call268 = call i32 @chmod(i8* %143, i32 %144) #8
  br label %if.end276

if.end276:                                        ; preds = %if.then102, %if.end260
  %145 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp278 = getelementptr inbounds %struct.xpvgv* %145, i64 0, i32 7
  %146 = load %struct.gp** %xgv_gp278, align 8, !tbaa !3
  %gp_io279 = getelementptr inbounds %struct.gp* %146, i64 0, i32 2
  %147 = load %struct.io** %gp_io279, align 8, !tbaa !3
  %sv_any280 = getelementptr inbounds %struct.io* %147, i64 0, i32 0
  %148 = load %struct.xpvio** %sv_any280, align 8, !tbaa !3
  %xio_ifp281 = getelementptr inbounds %struct.xpvio* %148, i64 0, i32 7
  %149 = load %struct._PerlIO*** %xio_ifp281, align 8, !tbaa !3
  br label %return

if.else282:                                       ; preds = %cond.end95
  %150 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings283 = getelementptr inbounds %struct.cop* %150, i64 0, i32 14
  %151 = load %struct.sv** %cop_warnings283, align 8, !tbaa !3
  %cmp284 = icmp eq %struct.sv* %151, null
  br i1 %cmp284, label %if.then302, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %if.else282
  %152 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings287 = getelementptr inbounds %struct.cop* %152, i64 0, i32 14
  %153 = load %struct.sv** %cop_warnings287, align 8, !tbaa !3
  %cmp288 = icmp eq %struct.sv* %153, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp288, label %if.then302, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %lor.lhs.false286
  %154 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings291 = getelementptr inbounds %struct.cop* %154, i64 0, i32 14
  %155 = load %struct.sv** %cop_warnings291, align 8, !tbaa !3
  %cmp292 = icmp eq %struct.sv* %155, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp292, label %while.cond.backedge, label %land.lhs.true294

land.lhs.true294:                                 ; preds = %lor.lhs.false290
  %156 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings295 = getelementptr inbounds %struct.cop* %156, i64 0, i32 14
  %157 = load %struct.sv** %cop_warnings295, align 8, !tbaa !3
  %sv_any296 = getelementptr inbounds %struct.sv* %157, i64 0, i32 0
  %158 = load i8** %sv_any296, align 8, !tbaa !3
  %xpv_pv297 = bitcast i8* %158 to i8**
  %159 = load i8** %xpv_pv297, align 8, !tbaa !3
  %arrayidx298 = getelementptr inbounds i8* %159, i64 5
  %160 = load i8* %arrayidx298, align 1, !tbaa !1
  %and300 = and i8 %160, 64
  %tobool301 = icmp eq i8 %and300, 0
  br i1 %tobool301, label %while.cond.backedge, label %if.then302

if.then302:                                       ; preds = %land.lhs.true294, %lor.lhs.false286, %if.else282
  %call303 = call i32* @__errno_location() #8
  %161 = load i32* %call303, align 4, !tbaa !0
  %162 = load i8** @PL_oldname, align 8, !tbaa !3
  %call304 = call i32 @stat(i8* %162, %struct.stat* @PL_statbuf) #8
  %cmp305 = icmp sgt i32 %call304, -1
  br i1 %cmp305, label %land.lhs.true307, label %if.else312

land.lhs.true307:                                 ; preds = %if.then302
  %163 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !0
  %and308 = and i32 %163, 61440
  %cmp309 = icmp eq i32 %and308, 32768
  br i1 %cmp309, label %if.else312, label %if.then311

if.then311:                                       ; preds = %land.lhs.true307
  %164 = load i8** @PL_oldname, align 8, !tbaa !3
  call void (i32, i8*, ...)* @Perl_warner(i32 23, i8* getelementptr inbounds ([48 x i8]* @.str21, i64 0, i64 0), i8* %164) #8
  br label %while.cond.backedge

if.else312:                                       ; preds = %land.lhs.true307, %if.then302
  %165 = load i8** @PL_oldname, align 8, !tbaa !3
  %call313 = call i8* @strerror(i32 %161) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 23, i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* %165, i8* %call313) #8
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  br i1 %tobool1, label %land.lhs.true318, label %if.end329

land.lhs.true318:                                 ; preds = %while.end
  %sv_any319 = getelementptr inbounds %struct.io* %2, i64 0, i32 0
  %166 = load %struct.xpvio** %sv_any319, align 8, !tbaa !3
  %xio_flags320 = getelementptr inbounds %struct.xpvio* %166, i64 0, i32 22
  %167 = load i8* %xio_flags320, align 1, !tbaa !1
  %and322 = and i8 %167, 1
  %tobool323 = icmp eq i8 %and322, 0
  br i1 %tobool323, label %if.end329, label %if.then324

if.then324:                                       ; preds = %land.lhs.true318
  %or = or i8 %167, 2
  store i8 %or, i8* %xio_flags320, align 1, !tbaa !1
  br label %if.end329

if.end329:                                        ; preds = %land.lhs.true318, %if.then324, %while.end
  %168 = load i8** @PL_inplace, align 8, !tbaa !3
  %tobool330 = icmp eq i8* %168, null
  br i1 %tobool330, label %return, label %if.then331

if.then331:                                       ; preds = %if.end329
  %169 = load %struct.gv** @PL_argvoutgv, align 8, !tbaa !3
  %call332 = call signext i8 @Perl_do_close(%struct.gv* %169, i8 signext 0) #7
  br i1 %tobool1, label %land.lhs.true334, label %if.end348

land.lhs.true334:                                 ; preds = %if.then331
  %sv_any335 = getelementptr inbounds %struct.io* %2, i64 0, i32 0
  %170 = load %struct.xpvio** %sv_any335, align 8, !tbaa !3
  %xio_flags336 = getelementptr inbounds %struct.xpvio* %170, i64 0, i32 22
  %171 = load i8* %xio_flags336, align 1, !tbaa !1
  %and338 = and i8 %171, 1
  %tobool339 = icmp ne i8 %and338, 0
  %172 = load %struct.av** @PL_argvout_stack, align 8, !tbaa !3
  %tobool341 = icmp ne %struct.av* %172, null
  %or.cond = and i1 %tobool339, %tobool341
  br i1 %or.cond, label %land.lhs.true342, label %if.end348

land.lhs.true342:                                 ; preds = %land.lhs.true334
  %sv_any343 = getelementptr inbounds %struct.av* %172, i64 0, i32 0
  %173 = load %struct.xpvav** %sv_any343, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %173, i64 0, i32 1
  %174 = load i64* %xav_fill, align 8, !tbaa !5
  %cmp344 = icmp sgt i64 %174, -1
  br i1 %cmp344, label %if.then346, label %if.end348

if.then346:                                       ; preds = %land.lhs.true342
  %call347 = call %struct.sv* @Perl_av_pop(%struct.av* %172) #8
  %175 = bitcast %struct.sv* %call347 to %struct.gv*
  call void @Perl_setdefout(%struct.gv* %175) #8
  call void @Perl_sv_free(%struct.sv* %call347) #8
  br label %return

if.end348:                                        ; preds = %land.lhs.true342, %land.lhs.true334, %if.then331
  %call349 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i32 1, i32 15) #8
  call void @Perl_setdefout(%struct.gv* %call349) #8
  br label %return

return:                                           ; preds = %if.end348, %if.end329, %if.end53, %if.then346, %if.end276, %if.then114
  %retval.0 = phi %struct._PerlIO** [ %59, %if.then114 ], [ %149, %if.end276 ], [ null, %if.then346 ], [ null, %if.end53 ], [ null, %if.end329 ], [ null, %if.end348 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

; Function Attrs: nounwind optsize
declare i32 @chmod(i8* nocapture, i32) #4

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_av_shift(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_save_freesv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare void @Perl_setdefout(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_close(%struct.gv* %gv, i8 signext %not_implicit) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  %0 = load %struct.gv** @PL_argvgv, align 8, !tbaa !3
  %.gv = select i1 %tobool, %struct.gv* %0, %struct.gv* %gv
  %tobool2 = icmp eq %struct.gv* %.gv, null
  br i1 %tobool2, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.gv* %.gv, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true12, label %if.then3

if.then3:                                         ; preds = %entry, %lor.lhs.false
  %tobool4 = icmp eq i8 %not_implicit, 0
  br i1 %tobool4, label %return, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call = tail call i32* @__errno_location() #8
  store i32 9, i32* %call, align 4, !tbaa !0
  br label %return

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %sv_any = getelementptr inbounds %struct.gv* %.gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool13 = icmp eq %struct.gp* %3, null
  br i1 %tobool13, label %if.then17, label %cond.end

cond.end:                                         ; preds = %land.lhs.true12
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool16 = icmp eq %struct.io* %4, null
  br i1 %tobool16, label %if.then17, label %if.end45

if.then17:                                        ; preds = %land.lhs.true12, %cond.end
  %tobool18 = icmp eq i8 %not_implicit, 0
  br i1 %tobool18, label %return, label %if.then19

if.then19:                                        ; preds = %if.then17
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp20 = icmp eq %struct.sv* %6, null
  br i1 %cmp20, label %lor.lhs.false32, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.then19
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings22 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings22, align 8, !tbaa !3
  %cmp23 = icmp eq %struct.sv* %8, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp23, label %lor.lhs.false32, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings25 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings25, align 8, !tbaa !3
  %cmp26 = icmp eq %struct.sv* %10, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp26, label %if.then40, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true24
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings28 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings28, align 8, !tbaa !3
  %sv_any29 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %13 = load i8** %sv_any29, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %13 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %14, i64 2
  %15 = load i8* %arrayidx, align 1, !tbaa !1
  %and30 = and i8 %15, 64
  %tobool31 = icmp eq i8 %and30, 0
  br i1 %tobool31, label %lor.lhs.false32, label %if.then40

lor.lhs.false32:                                  ; preds = %lor.lhs.false27, %land.lhs.true21, %if.then19
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings33 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings33, align 8, !tbaa !3
  %cmp34 = icmp eq %struct.sv* %17, null
  br i1 %cmp34, label %land.lhs.true36, label %if.end42

land.lhs.true36:                                  ; preds = %lor.lhs.false32
  %18 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and38 = and i8 %18, 1
  %tobool39 = icmp eq i8 %and38, 0
  br i1 %tobool39, label %if.end42, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false27, %land.lhs.true36, %land.lhs.true24
  %19 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_type = getelementptr inbounds %struct.op* %19, i64 0, i32 4
  %20 = load i16* %op_type, align 2, !tbaa !4
  %conv41 = zext i16 %20 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %.gv, %struct.io* null, i32 %conv41) #8
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true36, %if.then40, %lor.lhs.false32
  %call43 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call43, align 4, !tbaa !0
  br label %return

if.end45:                                         ; preds = %cond.end
  %call46 = tail call signext i8 @Perl_io_close(%struct.io* %4, i8 signext %not_implicit) #7
  %tobool47 = icmp eq i8 %not_implicit, 0
  %sv_any54.phi.trans.insert = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %.pre = load %struct.xpvio** %sv_any54.phi.trans.insert, align 8, !tbaa !3
  br i1 %tobool47, label %if.end53, label %if.then48

if.then48:                                        ; preds = %if.end45
  %xio_lines = getelementptr inbounds %struct.xpvio* %.pre, i64 0, i32 10
  %xio_page_len = getelementptr inbounds %struct.xpvio* %.pre, i64 0, i32 12
  %21 = bitcast i64* %xio_lines to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 16, i32 8, i1 false)
  %22 = load i64* %xio_page_len, align 8, !tbaa !5
  %xio_lines_left = getelementptr inbounds %struct.xpvio* %.pre, i64 0, i32 13
  store i64 %22, i64* %xio_lines_left, align 8, !tbaa !5
  br label %if.end53

if.end53:                                         ; preds = %if.end45, %if.then48
  %xio_type = getelementptr inbounds %struct.xpvio* %.pre, i64 0, i32 21
  store i8 32, i8* %xio_type, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.end42, %if.then17, %if.then5, %if.then3, %if.end53
  %retval.0 = phi i8 [ %call46, %if.end53 ], [ 0, %if.then3 ], [ 0, %if.then5 ], [ 0, %if.then17 ], [ 0, %if.end42 ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @unlink(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @link(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @strerror(i32) #1

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #4

; Function Attrs: optsize
declare %struct.sv* @Perl_av_pop(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_report_evil_fh(%struct.gv*, %struct.io*, i32) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_io_close(%struct.io* nocapture %io, i8 signext %not_implicit) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.io* %io, i64 0, i32 0
  %0 = load %struct.xpvio** %sv_any, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %0, i64 0, i32 7
  %1 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %1, null
  br i1 %tobool, label %if.else74, label %if.then

if.then:                                          ; preds = %entry
  %xio_type = getelementptr inbounds %struct.xpvio* %0, i64 0, i32 21
  %2 = load i8* %xio_type, align 1, !tbaa !1
  switch i8 %2, label %if.else26 [
    i8 124, label %if.then4
    i8 45, label %if.end69
  ]

if.then4:                                         ; preds = %if.then
  %call = tail call i32 @Perl_my_pclose(%struct._PerlIO** %1) #8
  %tobool7 = icmp eq i8 %not_implicit, 0
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then4
  %cmp9 = icmp eq i32 %call, -1
  %and = and i32 %call, 65535
  %call.and = select i1 %cmp9, i32 -1, i32 %and
  store i32 %call.and, i32* @PL_statusvalue, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %call.and, 0
  %conv14 = zext i1 %cmp12 to i8
  br label %if.end69

if.else:                                          ; preds = %if.then4
  %cmp15 = icmp ne i32 %call, -1
  %conv17 = zext i1 %cmp15 to i8
  br label %if.end69

if.else26:                                        ; preds = %if.then
  %xio_ofp = getelementptr inbounds %struct.xpvio* %0, i64 0, i32 8
  %3 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !3
  %tobool28 = icmp eq %struct._PerlIO** %3, null
  %cmp33 = icmp eq %struct._PerlIO** %3, %1
  %or.cond = or i1 %tobool28, %cmp33
  br i1 %or.cond, label %if.else50, label %if.then35

if.then35:                                        ; preds = %if.else26
  %call38 = tail call i32 @Perl_PerlIO_error(%struct._PerlIO** %3) #8
  %4 = load %struct.xpvio** %sv_any, align 8, !tbaa !3
  %xio_ofp41 = getelementptr inbounds %struct.xpvio* %4, i64 0, i32 8
  %5 = load %struct._PerlIO*** %xio_ofp41, align 8, !tbaa !3
  %call42 = tail call i32 @Perl_PerlIO_close(%struct._PerlIO** %5) #8
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then35
  %conv39 = trunc i32 %call38 to i8
  %lnot = icmp eq i8 %conv39, 0
  br label %land.end

land.end:                                         ; preds = %if.then35, %land.rhs
  %6 = phi i1 [ false, %if.then35 ], [ %lnot, %land.rhs ]
  %conv46 = zext i1 %6 to i8
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !3
  %xio_ifp48 = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp48, align 8, !tbaa !3
  %call49 = tail call i32 @Perl_PerlIO_close(%struct._PerlIO** %8) #8
  br label %if.end69

if.else50:                                        ; preds = %if.else26
  %call54 = tail call i32 @Perl_PerlIO_error(%struct._PerlIO** %1) #8
  %9 = load %struct.xpvio** %sv_any, align 8, !tbaa !3
  %xio_ifp57 = getelementptr inbounds %struct.xpvio* %9, i64 0, i32 7
  %10 = load %struct._PerlIO*** %xio_ifp57, align 8, !tbaa !3
  %call58 = tail call i32 @Perl_PerlIO_close(%struct._PerlIO** %10) #8
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %land.end64, label %land.rhs61

land.rhs61:                                       ; preds = %if.else50
  %conv55 = trunc i32 %call54 to i8
  %lnot63 = icmp eq i8 %conv55, 0
  br label %land.end64

land.end64:                                       ; preds = %if.else50, %land.rhs61
  %11 = phi i1 [ false, %if.else50 ], [ %lnot63, %land.rhs61 ]
  %conv66 = zext i1 %11 to i8
  br label %if.end69

if.end69:                                         ; preds = %if.then, %land.end64, %land.end, %if.then8, %if.else
  %retval1.0 = phi i8 [ %conv14, %if.then8 ], [ %conv17, %if.else ], [ %conv46, %land.end ], [ %conv66, %land.end64 ], [ 1, %if.then ]
  %12 = load %struct.xpvio** %sv_any, align 8, !tbaa !3
  %xio_ifp71 = getelementptr inbounds %struct.xpvio* %12, i64 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp71, align 8, !tbaa !3
  %13 = load %struct.xpvio** %sv_any, align 8, !tbaa !3
  %xio_ofp73 = getelementptr inbounds %struct.xpvio* %13, i64 0, i32 8
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ofp73, align 8, !tbaa !3
  br label %if.end79

if.else74:                                        ; preds = %entry
  %tobool75 = icmp eq i8 %not_implicit, 0
  br i1 %tobool75, label %if.end79, label %if.then76

if.then76:                                        ; preds = %if.else74
  %call77 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call77, align 4, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.then76, %if.end69
  %retval1.1 = phi i8 [ %retval1.0, %if.end69 ], [ 0, %if.then76 ], [ 0, %if.else74 ]
  ret i8 %retval1.1
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_eof(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true1, label %return

land.lhs.true1:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool2 = icmp eq %struct.gp* %3, null
  br i1 %tobool2, label %return, label %cond.end

cond.end:                                         ; preds = %land.lhs.true1
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool5 = icmp eq %struct.io* %4, null
  br i1 %tobool5, label %return, label %if.else

if.else:                                          ; preds = %cond.end
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp6 = icmp eq %struct.sv* %6, null
  br i1 %cmp6, label %lor.lhs.false17, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.else
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings8 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings8, align 8, !tbaa !3
  %cmp9 = icmp eq %struct.sv* %8, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp9, label %lor.lhs.false17, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings11 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings11, align 8, !tbaa !3
  %cmp12 = icmp eq %struct.sv* %10, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp12, label %land.lhs.true25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings13 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings13, align 8, !tbaa !3
  %sv_any14 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %13 = load i8** %sv_any14, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %13 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %14, i64 1
  %15 = load i8* %arrayidx, align 1, !tbaa !1
  %and15 = and i8 %15, 4
  %tobool16 = icmp eq i8 %and15, 0
  br i1 %tobool16, label %lor.lhs.false17, label %land.lhs.true25

lor.lhs.false17:                                  ; preds = %lor.lhs.false, %land.lhs.true7, %if.else
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings18 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings18, align 8, !tbaa !3
  %cmp19 = icmp eq %struct.sv* %17, null
  br i1 %cmp19, label %land.lhs.true21, label %while.cond.preheader

land.lhs.true21:                                  ; preds = %lor.lhs.false17
  %18 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and23 = and i8 %18, 1
  %tobool24 = icmp eq i8 %and23, 0
  br i1 %tobool24, label %while.cond.preheader, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false, %land.lhs.true21, %land.lhs.true10
  %sv_any26 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %19 = load %struct.xpvio** %sv_any26, align 8, !tbaa !3
  %xio_type = getelementptr inbounds %struct.xpvio* %19, i64 0, i32 21
  %20 = load i8* %xio_type, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %20, 62
  br i1 %cmp28, label %if.then30, label %while.cond.preheader

if.then30:                                        ; preds = %land.lhs.true25
  tail call void @Perl_report_evil_fh(%struct.gv* %gv, %struct.io* %4, i32 -2) #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false17, %land.lhs.true25, %if.then30, %land.lhs.true21
  %sv_any32 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false85, %while.cond.preheader
  %21 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %21, i64 0, i32 7
  %22 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool33 = icmp eq %struct._PerlIO** %22, null
  br i1 %tobool33, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call = tail call i32 @PerlIO_has_cntptr(%struct._PerlIO** %22) #8
  %tobool36 = icmp eq i32 %call, 0
  br i1 %tobool36, label %if.end45, label %if.then37

if.then37:                                        ; preds = %while.body
  %23 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp39 = getelementptr inbounds %struct.xpvio* %23, i64 0, i32 7
  %24 = load %struct._PerlIO*** %xio_ifp39, align 8, !tbaa !3
  %call40 = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %24) #8
  %cmp41 = icmp sgt i32 %call40, 0
  br i1 %cmp41, label %return, label %if.end45

if.end45:                                         ; preds = %while.body, %if.then37
  %call46 = tail call i32* @__errno_location() #8
  %25 = load i32* %call46, align 4, !tbaa !0
  %26 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp48 = getelementptr inbounds %struct.xpvio* %26, i64 0, i32 7
  %27 = load %struct._PerlIO*** %xio_ifp48, align 8, !tbaa !3
  %call49 = tail call i32 @PerlIO_getc(%struct._PerlIO** %27) #8
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.end57, label %if.then52

if.then52:                                        ; preds = %if.end45
  %28 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp54 = getelementptr inbounds %struct.xpvio* %28, i64 0, i32 7
  %29 = load %struct._PerlIO*** %xio_ifp54, align 8, !tbaa !3
  %call55 = tail call i32 @PerlIO_ungetc(%struct._PerlIO** %29, i32 %call49) #8
  %call56 = tail call i32* @__errno_location() #8
  store i32 %25, i32* %call56, align 4, !tbaa !0
  br label %return

if.end57:                                         ; preds = %if.end45
  %call58 = tail call i32* @__errno_location() #8
  store i32 %25, i32* %call58, align 4, !tbaa !0
  %30 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp60 = getelementptr inbounds %struct.xpvio* %30, i64 0, i32 7
  %31 = load %struct._PerlIO*** %xio_ifp60, align 8, !tbaa !3
  %call61 = tail call i32 @PerlIO_has_cntptr(%struct._PerlIO** %31) #8
  %tobool62 = icmp eq i32 %call61, 0
  br i1 %tobool62, label %if.end78, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end57
  %32 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp65 = getelementptr inbounds %struct.xpvio* %32, i64 0, i32 7
  %33 = load %struct._PerlIO*** %xio_ifp65, align 8, !tbaa !3
  %call66 = tail call i32 @PerlIO_canset_cnt(%struct._PerlIO** %33) #8
  %tobool67 = icmp eq i32 %call66, 0
  br i1 %tobool67, label %if.end78, label %if.then68

if.then68:                                        ; preds = %land.lhs.true63
  %34 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp70 = getelementptr inbounds %struct.xpvio* %34, i64 0, i32 7
  %35 = load %struct._PerlIO*** %xio_ifp70, align 8, !tbaa !3
  %call71 = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %35) #8
  %cmp72 = icmp slt i32 %call71, -1
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.then68
  %36 = load %struct.xpvio** %sv_any32, align 8, !tbaa !3
  %xio_ifp76 = getelementptr inbounds %struct.xpvio* %36, i64 0, i32 7
  %37 = load %struct._PerlIO*** %xio_ifp76, align 8, !tbaa !3
  tail call void @Perl_PerlIO_set_cnt(%struct._PerlIO** %37, i32 -1) #8
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true63, %if.end57, %if.then68, %if.then74
  %38 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_flags = getelementptr inbounds %struct.op* %38, i64 0, i32 6
  %39 = load i8* %op_flags, align 1, !tbaa !1
  %tobool81 = icmp slt i8 %39, 0
  %40 = load %struct.gv** @PL_argvgv, align 8, !tbaa !3
  %cmp83 = icmp eq %struct.gv* %40, %gv
  %or.cond = and i1 %tobool81, %cmp83
  br i1 %or.cond, label %lor.lhs.false85, label %return

lor.lhs.false85:                                  ; preds = %if.end78
  %call86 = tail call %struct._PerlIO** @Perl_nextargv(%struct.gv* %gv) #7
  %tobool87 = icmp eq %struct._PerlIO** %call86, null
  br i1 %tobool87, label %return, label %while.cond

return:                                           ; preds = %while.cond, %if.end78, %lor.lhs.false85, %if.then37, %entry, %land.lhs.true, %land.lhs.true1, %cond.end, %if.then52
  %retval.0 = phi i8 [ 0, %if.then52 ], [ 1, %cond.end ], [ 1, %land.lhs.true1 ], [ 1, %land.lhs.true ], [ 1, %entry ], [ 1, %while.cond ], [ 1, %if.end78 ], [ 1, %lor.lhs.false85 ], [ 0, %if.then37 ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @PerlIO_has_cntptr(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_get_cnt(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @PerlIO_getc(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

; Function Attrs: optsize
declare i32 @PerlIO_canset_cnt(%struct._PerlIO**) #1

; Function Attrs: optsize
declare void @Perl_PerlIO_set_cnt(%struct._PerlIO**, i32) #1

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_do_tell(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.gp* %3, null
  br i1 %tobool4, label %if.end, label %cond.end

cond.end:                                         ; preds = %land.lhs.true3
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool7 = icmp eq %struct.io* %4, null
  br i1 %tobool7, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %cond.end
  %sv_any9 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %5 = load %struct.xpvio** %sv_any9, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %5, i64 0, i32 7
  %6 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool10 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true8
  %call = tail call i64 @Perl_PerlIO_tell(%struct._PerlIO** %6) #8
  br label %return

if.end:                                           ; preds = %entry, %land.lhs.true2, %land.lhs.true3, %land.lhs.true8, %cond.end
  %io.0 = phi %struct.io* [ %4, %land.lhs.true8 ], [ null, %cond.end ], [ null, %entry ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true2 ]
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp11 = icmp eq %struct.sv* %8, null
  br i1 %cmp11, label %lor.lhs.false30, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings13 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings13, align 8, !tbaa !3
  %cmp14 = icmp eq %struct.sv* %10, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp14, label %lor.lhs.false30, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings16 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings16, align 8, !tbaa !3
  %cmp17 = icmp eq %struct.sv* %12, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp17, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings18 = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings18, align 8, !tbaa !3
  %sv_any19 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %15 = load i8** %sv_any19, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %15 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %16, i64 2
  %17 = load i8* %arrayidx, align 1, !tbaa !1
  %and20 = and i8 %17, 64
  %tobool21 = icmp eq i8 %and20, 0
  br i1 %tobool21, label %lor.lhs.false22, label %if.then38

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings23 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings23, align 8, !tbaa !3
  %sv_any24 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %20 = load i8** %sv_any24, align 8, !tbaa !3
  %xpv_pv25 = bitcast i8* %20 to i8**
  %21 = load i8** %xpv_pv25, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i8* %21, i64 1
  %22 = load i8* %arrayidx26, align 1, !tbaa !1
  %and28 = and i8 %22, 16
  %tobool29 = icmp eq i8 %and28, 0
  br i1 %tobool29, label %lor.lhs.false30, label %if.then38

lor.lhs.false30:                                  ; preds = %lor.lhs.false22, %land.lhs.true12, %if.end
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings31 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings31, align 8, !tbaa !3
  %cmp32 = icmp eq %struct.sv* %24, null
  br i1 %cmp32, label %land.lhs.true34, label %if.end40

land.lhs.true34:                                  ; preds = %lor.lhs.false30
  %25 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and36 = and i8 %25, 1
  %tobool37 = icmp eq i8 %and36, 0
  br i1 %tobool37, label %if.end40, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %land.lhs.true34, %land.lhs.true15
  %26 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_type = getelementptr inbounds %struct.op* %26, i64 0, i32 4
  %27 = load i16* %op_type, align 2, !tbaa !4
  %conv39 = zext i16 %27 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv, %struct.io* %io.0, i32 %conv39) #8
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true34, %if.then38, %lor.lhs.false30
  %call41 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call41, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end40, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ -1, %if.end40 ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_PerlIO_tell(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_seek(%struct.gv* %gv, i64 %pos, i32 %whence) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.gp* %3, null
  br i1 %tobool4, label %if.end, label %cond.end

cond.end:                                         ; preds = %land.lhs.true3
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool7 = icmp eq %struct.io* %4, null
  br i1 %tobool7, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %cond.end
  %sv_any9 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %5 = load %struct.xpvio** %sv_any9, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %5, i64 0, i32 7
  %6 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool10 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true8
  %call = tail call i32 @Perl_PerlIO_seek(%struct._PerlIO** %6, i64 %pos, i32 %whence) #8
  %call.lobit = lshr i32 %call, 31
  %7 = trunc i32 %call.lobit to i8
  %.not = xor i8 %7, 1
  br label %return

if.end:                                           ; preds = %entry, %land.lhs.true2, %land.lhs.true3, %land.lhs.true8, %cond.end
  %io.0 = phi %struct.io* [ %4, %land.lhs.true8 ], [ null, %cond.end ], [ null, %entry ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true2 ]
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp13 = icmp eq %struct.sv* %9, null
  br i1 %cmp13, label %lor.lhs.false36, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings16 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings16, align 8, !tbaa !3
  %cmp17 = icmp eq %struct.sv* %11, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp17, label %lor.lhs.false36, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings20 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings20, align 8, !tbaa !3
  %cmp21 = icmp eq %struct.sv* %13, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp21, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true19
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings23 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings23, align 8, !tbaa !3
  %sv_any24 = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %16 = load i8** %sv_any24, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %16 to i8**
  %17 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %17, i64 2
  %18 = load i8* %arrayidx, align 1, !tbaa !1
  %and26 = and i8 %18, 64
  %tobool27 = icmp eq i8 %and26, 0
  br i1 %tobool27, label %lor.lhs.false28, label %if.then44

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings29 = getelementptr inbounds %struct.cop* %19, i64 0, i32 14
  %20 = load %struct.sv** %cop_warnings29, align 8, !tbaa !3
  %sv_any30 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %21 = load i8** %sv_any30, align 8, !tbaa !3
  %xpv_pv31 = bitcast i8* %21 to i8**
  %22 = load i8** %xpv_pv31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i8* %22, i64 1
  %23 = load i8* %arrayidx32, align 1, !tbaa !1
  %and34 = and i8 %23, 16
  %tobool35 = icmp eq i8 %and34, 0
  br i1 %tobool35, label %lor.lhs.false36, label %if.then44

lor.lhs.false36:                                  ; preds = %lor.lhs.false28, %land.lhs.true15, %if.end
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings37 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings37, align 8, !tbaa !3
  %cmp38 = icmp eq %struct.sv* %25, null
  br i1 %cmp38, label %land.lhs.true40, label %if.end46

land.lhs.true40:                                  ; preds = %lor.lhs.false36
  %26 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and42 = and i8 %26, 1
  %tobool43 = icmp eq i8 %and42, 0
  br i1 %tobool43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %land.lhs.true40, %land.lhs.true19
  %27 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_type = getelementptr inbounds %struct.op* %27, i64 0, i32 4
  %28 = load i16* %op_type, align 2, !tbaa !4
  %conv45 = zext i16 %28 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv, %struct.io* %io.0, i32 %conv45) #8
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true40, %if.then44, %lor.lhs.false36
  %call47 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call47, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end46, %if.then
  %retval.0 = phi i8 [ %.not, %if.then ], [ 0, %if.end46 ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_seek(%struct._PerlIO**, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_do_sysseek(%struct.gv* %gv, i64 %pos, i32 %whence) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.gp* %3, null
  br i1 %tobool4, label %if.end, label %cond.end

cond.end:                                         ; preds = %land.lhs.true3
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool7 = icmp eq %struct.io* %4, null
  br i1 %tobool7, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %cond.end
  %sv_any9 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %5 = load %struct.xpvio** %sv_any9, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %5, i64 0, i32 7
  %6 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool10 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true8
  %call = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %6) #8
  %call11 = tail call i64 @lseek(i32 %call, i64 %pos, i32 %whence) #8
  br label %return

if.end:                                           ; preds = %entry, %land.lhs.true2, %land.lhs.true3, %land.lhs.true8, %cond.end
  %io.0 = phi %struct.io* [ %4, %land.lhs.true8 ], [ null, %cond.end ], [ null, %entry ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true2 ]
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp12 = icmp eq %struct.sv* %8, null
  br i1 %cmp12, label %lor.lhs.false31, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings14 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings14, align 8, !tbaa !3
  %cmp15 = icmp eq %struct.sv* %10, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp15, label %lor.lhs.false31, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings17 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings17, align 8, !tbaa !3
  %cmp18 = icmp eq %struct.sv* %12, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp18, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true16
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings19 = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings19, align 8, !tbaa !3
  %sv_any20 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %15 = load i8** %sv_any20, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %15 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %16, i64 2
  %17 = load i8* %arrayidx, align 1, !tbaa !1
  %and21 = and i8 %17, 64
  %tobool22 = icmp eq i8 %and21, 0
  br i1 %tobool22, label %lor.lhs.false23, label %if.then39

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings24 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings24, align 8, !tbaa !3
  %sv_any25 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %20 = load i8** %sv_any25, align 8, !tbaa !3
  %xpv_pv26 = bitcast i8* %20 to i8**
  %21 = load i8** %xpv_pv26, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i8* %21, i64 1
  %22 = load i8* %arrayidx27, align 1, !tbaa !1
  %and29 = and i8 %22, 16
  %tobool30 = icmp eq i8 %and29, 0
  br i1 %tobool30, label %lor.lhs.false31, label %if.then39

lor.lhs.false31:                                  ; preds = %lor.lhs.false23, %land.lhs.true13, %if.end
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings32 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings32, align 8, !tbaa !3
  %cmp33 = icmp eq %struct.sv* %24, null
  br i1 %cmp33, label %land.lhs.true35, label %if.end41

land.lhs.true35:                                  ; preds = %lor.lhs.false31
  %25 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and37 = and i8 %25, 1
  %tobool38 = icmp eq i8 %and37, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %lor.lhs.false23, %lor.lhs.false, %land.lhs.true35, %land.lhs.true16
  %26 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_type = getelementptr inbounds %struct.op* %26, i64 0, i32 4
  %27 = load i16* %op_type, align 2, !tbaa !4
  %conv40 = zext i16 %27 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv, %struct.io* %io.0, i32 %conv40) #8
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true35, %if.then39, %lor.lhs.false31
  %call42 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call42, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %retval.0 = phi i64 [ %call11, %if.then ], [ -1, %if.end41 ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare i64 @lseek(i32, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mode_from_discipline(%struct.sv* %discp) #0 {
entry:
  %len = alloca i64, align 8
  %tobool = icmp eq %struct.sv* %discp, null
  br i1 %tobool, label %if.end130, label %if.then

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %discp, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %discp, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !5
  store i64 %3, i64* %len, align 8, !tbaa !5
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %while.cond

cond.false:                                       ; preds = %if.then
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %discp, i64* %len, i32 2) #8
  br label %while.cond

while.cond:                                       ; preds = %if.then96, %if.then47, %if.end126, %if.then119, %cond.true, %cond.false
  %s.0 = phi i8* [ %4, %cond.true ], [ %call, %cond.false ], [ %end.0, %if.end126 ], [ %arrayidx64, %if.then96 ], [ %arrayidx16, %if.then47 ], [ %incdec.ptr, %if.then119 ]
  %5 = load i8* %s.0, align 1, !tbaa !1
  switch i8 %5, label %while.cond.fail_discipline_crit_edge [
    i8 0, label %if.end130
    i8 58, label %if.then5
    i8 32, label %if.then119
    i8 9, label %if.then119
    i8 10, label %if.then119
    i8 13, label %if.then119
    i8 12, label %if.then119
  ]

while.cond.fail_discipline_crit_edge:             ; preds = %while.cond
  %add.ptr121.pre = getelementptr inbounds i8* %s.0, i64 1
  br label %fail_discipline

if.then5:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8* %s.0, i64 1
  %6 = load i8* %arrayidx, align 1, !tbaa !1
  %conv6 = sext i8 %6 to i32
  switch i32 %conv6, label %fail_discipline [
    i32 114, label %sw.bb
    i32 99, label %if.then5.sw.bb48_crit_edge
  ]

if.then5.sw.bb48_crit_edge:                       ; preds = %if.then5
  %arrayidx49.phi.trans.insert = getelementptr inbounds i8* %s.0, i64 2
  %.pre168 = load i8* %arrayidx49.phi.trans.insert, align 1, !tbaa !1
  br label %sw.bb48

sw.bb:                                            ; preds = %if.then5
  %arrayidx7 = getelementptr inbounds i8* %s.0, i64 2
  %7 = load i8* %arrayidx7, align 1, !tbaa !1
  %cmp9 = icmp eq i8 %7, 97
  br i1 %cmp9, label %land.lhs.true, label %sw.bb48

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx11 = getelementptr inbounds i8* %s.0, i64 3
  %8 = load i8* %arrayidx11, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %8, 119
  br i1 %cmp13, label %land.lhs.true15, label %fail_discipline

land.lhs.true15:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds i8* %s.0, i64 4
  %9 = load i8* %arrayidx16, align 1, !tbaa !1
  switch i8 %9, label %fail_discipline [
    i8 0, label %if.then47
    i8 58, label %if.then47
    i8 32, label %if.then47
    i8 9, label %if.then47
    i8 10, label %if.then47
    i8 13, label %if.then47
    i8 12, label %if.then47
  ]

if.then47:                                        ; preds = %land.lhs.true15, %land.lhs.true15, %land.lhs.true15, %land.lhs.true15, %land.lhs.true15, %land.lhs.true15, %land.lhs.true15
  %10 = load i64* %len, align 8, !tbaa !5
  %sub = add i64 %10, -4
  store i64 %sub, i64* %len, align 8, !tbaa !5
  br label %while.cond

sw.bb48:                                          ; preds = %if.then5.sw.bb48_crit_edge, %sw.bb
  %11 = phi i8 [ %.pre168, %if.then5.sw.bb48_crit_edge ], [ %7, %sw.bb ]
  %cmp51 = icmp eq i8 %11, 114
  br i1 %cmp51, label %land.lhs.true53, label %fail_discipline

land.lhs.true53:                                  ; preds = %sw.bb48
  %arrayidx54 = getelementptr inbounds i8* %s.0, i64 3
  %12 = load i8* %arrayidx54, align 1, !tbaa !1
  %cmp56 = icmp eq i8 %12, 108
  br i1 %cmp56, label %land.lhs.true58, label %fail_discipline

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %arrayidx59 = getelementptr inbounds i8* %s.0, i64 4
  %13 = load i8* %arrayidx59, align 1, !tbaa !1
  %cmp61 = icmp eq i8 %13, 102
  br i1 %cmp61, label %land.lhs.true63, label %fail_discipline

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %arrayidx64 = getelementptr inbounds i8* %s.0, i64 5
  %14 = load i8* %arrayidx64, align 1, !tbaa !1
  switch i8 %14, label %fail_discipline [
    i8 0, label %if.then96
    i8 58, label %if.then96
    i8 32, label %if.then96
    i8 9, label %if.then96
    i8 10, label %if.then96
    i8 13, label %if.then96
    i8 12, label %if.then96
  ]

if.then96:                                        ; preds = %land.lhs.true63, %land.lhs.true63, %land.lhs.true63, %land.lhs.true63, %land.lhs.true63, %land.lhs.true63, %land.lhs.true63
  %15 = load i64* %len, align 8, !tbaa !5
  %sub98 = add i64 %15, -5
  store i64 %sub98, i64* %len, align 8, !tbaa !5
  br label %while.cond

if.then119:                                       ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8* %s.0, i64 1
  %16 = load i64* %len, align 8, !tbaa !5
  %dec = add i64 %16, -1
  store i64 %dec, i64* %len, align 8, !tbaa !5
  br label %while.cond

fail_discipline:                                  ; preds = %land.lhs.true, %land.lhs.true15, %while.cond.fail_discipline_crit_edge, %land.lhs.true63, %if.then5, %land.lhs.true58, %land.lhs.true53, %sw.bb48
  %add.ptr121.pre-phi = phi i8* [ %add.ptr121.pre, %while.cond.fail_discipline_crit_edge ], [ %arrayidx, %land.lhs.true63 ], [ %arrayidx, %if.then5 ], [ %arrayidx, %land.lhs.true58 ], [ %arrayidx, %land.lhs.true53 ], [ %arrayidx, %sw.bb48 ], [ %arrayidx, %land.lhs.true15 ], [ %arrayidx, %land.lhs.true ]
  %call122 = call i8* @strchr(i8* %add.ptr121.pre-phi, i32 58) #8
  %tobool123 = icmp eq i8* %call122, null
  %17 = load i64* %len, align 8, !tbaa !5
  br i1 %tobool123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %fail_discipline
  %add.ptr125 = getelementptr inbounds i8* %s.0, i64 %17
  br label %if.end126

if.end126:                                        ; preds = %fail_discipline, %if.then124
  %end.0 = phi i8* [ %add.ptr125, %if.then124 ], [ %call122, %fail_discipline ]
  %sub.ptr.lhs.cast = ptrtoint i8* %end.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s.0 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub127 = add i64 %sub.ptr.sub167, %17
  store i64 %sub127, i64* %len, align 8, !tbaa !5
  br label %while.cond

if.end130:                                        ; preds = %while.cond, %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_do_binmode(%struct._PerlIO** %fp, i32 %iotype, i32 %mode) #0 {
entry:
  %call = tail call i32 @PerlIO_binmode(%struct._PerlIO** %fp, i32 %iotype, i32 %mode, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0)) #8
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @PerlIO_binmode(%struct._PerlIO**, i32, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_print(%struct.sv* %sv, %struct._PerlIO** %fp) #0 {
entry:
  %len = alloca i64, align 8
  %tobool = icmp eq %struct.sv* %sv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8** @PL_ofmt, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %0, null
  %sv_flags41.pre = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  br i1 %tobool1, label %if.end40, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load i32* %sv_flags41.pre, align 4, !tbaa !0
  %and = and i32 %1, 8192
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then2
  %call = call i32 @Perl_mg_get(%struct.sv* %sv) #8
  %.pre194 = load i32* %sv_flags41.pre, align 4, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then4
  %2 = phi i32 [ %1, %if.then2 ], [ %.pre194, %if.then4 ]
  %and7 = and i32 %2, 65536
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  %5 = load i64* %4, align 8, !tbaa !5
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.end16, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %6 = load i8** @PL_ofmt, align 8, !tbaa !3
  %conv = sitofp i64 %5 to double
  %call12 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %fp, i8* %6, double %conv) #8
  %call13 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %fp) #8
  %lnot = icmp eq i32 %call13, 0
  %conv15 = zext i1 %lnot to i8
  br label %return

if.end16:                                         ; preds = %land.lhs.true, %if.end5
  %and18 = and i32 %2, 131072
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %lor.lhs.false, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end16
  %sv_any21 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %7 = load i8** %sv_any21, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %7, i64 32
  %8 = bitcast i8* %xnv_nv to double*
  %9 = load double* %8, align 8, !tbaa !6
  %cmp22 = fcmp une double %9, 0.000000e+00
  br i1 %cmp22, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16, %land.lhs.true20
  %call24 = call i32 @Perl_looks_like_number(%struct.sv* %sv) #8
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %if.end40, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %call27 = call double @Perl_sv_2nv(%struct.sv* %sv) #8
  %cmp28 = fcmp une double %call27, 0.000000e+00
  br i1 %cmp28, label %land.lhs.true26.if.then30_crit_edge, label %if.end40

land.lhs.true26.if.then30_crit_edge:              ; preds = %land.lhs.true26
  %sv_any31.phi.trans.insert = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %.pre195 = load i8** %sv_any31.phi.trans.insert, align 8, !tbaa !3
  %xnv_nv32.phi.trans.insert = getelementptr inbounds i8* %.pre195, i64 32
  %.phi.trans.insert = bitcast i8* %xnv_nv32.phi.trans.insert to double*
  %.pre196 = load double* %.phi.trans.insert, align 8, !tbaa !6
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true20, %land.lhs.true26.if.then30_crit_edge
  %10 = phi double [ %.pre196, %land.lhs.true26.if.then30_crit_edge ], [ %9, %land.lhs.true20 ]
  %11 = load i8** @PL_ofmt, align 8, !tbaa !3
  %call33 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %fp, i8* %11, double %10) #8
  %call34 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %fp) #8
  %lnot36 = icmp eq i32 %call34, 0
  %conv38 = zext i1 %lnot36 to i8
  br label %return

if.end40:                                         ; preds = %if.end, %lor.lhs.false, %land.lhs.true26
  %12 = load i32* %sv_flags41.pre, align 4, !tbaa !0
  %and42 = and i32 %12, 255
  switch i32 %and42, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.end40
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp43 = icmp eq %struct.sv* %14, null
  br i1 %cmp43, label %lor.lhs.false59, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %sw.bb
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings46 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings46, align 8, !tbaa !3
  %cmp47 = icmp eq %struct.sv* %16, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp47, label %lor.lhs.false59, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings50 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings50, align 8, !tbaa !3
  %cmp51 = icmp eq %struct.sv* %18, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp51, label %if.then67, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %land.lhs.true49
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings54 = getelementptr inbounds %struct.cop* %19, i64 0, i32 14
  %20 = load %struct.sv** %cop_warnings54, align 8, !tbaa !3
  %sv_any55 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %21 = load i8** %sv_any55, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %21 to i8**
  %22 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %22, i64 10
  %23 = load i8* %arrayidx, align 1, !tbaa !1
  %and57 = and i8 %23, 4
  %tobool58 = icmp eq i8 %and57, 0
  br i1 %tobool58, label %lor.lhs.false59, label %if.then67

lor.lhs.false59:                                  ; preds = %lor.lhs.false53, %land.lhs.true45, %sw.bb
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings60 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings60, align 8, !tbaa !3
  %cmp61 = icmp eq %struct.sv* %25, null
  br i1 %cmp61, label %land.lhs.true63, label %return

land.lhs.true63:                                  ; preds = %lor.lhs.false59
  %26 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and65 = and i8 %26, 1
  %tobool66 = icmp eq i8 %and65, 0
  br i1 %tobool66, label %return, label %if.then67

if.then67:                                        ; preds = %lor.lhs.false53, %land.lhs.true63, %land.lhs.true49
  call void @Perl_report_uninit() #8
  br label %return

sw.bb69:                                          ; preds = %if.end40
  %and71 = and i32 %12, 65536
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %sw.default, label %if.then73

if.then73:                                        ; preds = %sw.bb69
  %and75 = and i32 %12, 8192
  %tobool76 = icmp eq i32 %and75, 0
  br i1 %tobool76, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.then73
  %call78 = call i32 @Perl_mg_get(%struct.sv* %sv) #8
  %.pre = load i32* %sv_flags41.pre, align 4, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %if.then77
  %27 = phi i32 [ %12, %if.then73 ], [ %.pre, %if.then77 ]
  %tobool82 = icmp slt i32 %27, 0
  %sv_any84 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %28 = load i8** %sv_any84, align 8, !tbaa !3
  %xuv_uv = getelementptr inbounds i8* %28, i64 24
  %29 = bitcast i8* %xuv_uv to i64*
  %30 = load i64* %29, align 8, !tbaa !5
  br i1 %tobool82, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end79
  %call85 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %fp, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i64 %30) #8
  br label %if.end89

if.else:                                          ; preds = %if.end79
  %call88 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %fp, i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), i64 %30) #8
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then83
  %call90 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %fp) #8
  %lnot92 = icmp eq i32 %call90, 0
  %conv94 = zext i1 %lnot92 to i8
  br label %return

sw.default:                                       ; preds = %sw.bb69, %if.end40
  %call96 = call i32 @PerlIO_isutf8(%struct._PerlIO** %fp) #8
  %tobool97 = icmp eq i32 %call96, 0
  %31 = load i32* %sv_flags41.pre, align 4, !tbaa !0
  %and100 = and i32 %31, 536870912
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool97, label %if.else106, label %if.then98

if.then98:                                        ; preds = %sw.default
  br i1 %tobool101, label %if.end141, label %if.then102

if.then102:                                       ; preds = %if.then98
  %call103 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %sv) #8
  %call104 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call103, i32 10) #8
  br label %if.end141

if.else106:                                       ; preds = %sw.default
  br i1 %tobool101, label %land.lhs.true110, label %if.end141

land.lhs.true110:                                 ; preds = %if.else106
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.cop* %32, i64 0, i32 7
  %33 = load i8* %op_private, align 1, !tbaa !1
  %and112 = and i8 %33, 8
  %tobool113 = icmp eq i8 %and112, 0
  br i1 %tobool113, label %if.then114, label %if.end141

if.then114:                                       ; preds = %land.lhs.true110
  %call115 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %sv) #8
  %call116 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %call115, i8 signext 1) #8
  %tobool117 = icmp eq i8 %call116, 0
  br i1 %tobool117, label %land.lhs.true118, label %if.end141

land.lhs.true118:                                 ; preds = %if.then114
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings119 = getelementptr inbounds %struct.cop* %34, i64 0, i32 14
  %35 = load %struct.sv** %cop_warnings119, align 8, !tbaa !3
  %cmp120 = icmp eq %struct.sv* %35, null
  br i1 %cmp120, label %if.then138, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %land.lhs.true118
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings123 = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings123, align 8, !tbaa !3
  %cmp124 = icmp eq %struct.sv* %37, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp124, label %if.then138, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false122
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings127 = getelementptr inbounds %struct.cop* %38, i64 0, i32 14
  %39 = load %struct.sv** %cop_warnings127, align 8, !tbaa !3
  %cmp128 = icmp eq %struct.sv* %39, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp128, label %if.end141, label %land.lhs.true130

land.lhs.true130:                                 ; preds = %lor.lhs.false126
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings131 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings131, align 8, !tbaa !3
  %sv_any132 = getelementptr inbounds %struct.sv* %41, i64 0, i32 0
  %42 = load i8** %sv_any132, align 8, !tbaa !3
  %xpv_pv133 = bitcast i8* %42 to i8**
  %43 = load i8** %xpv_pv133, align 8, !tbaa !3
  %arrayidx134 = getelementptr inbounds i8* %43, i64 11
  %44 = load i8* %arrayidx134, align 1, !tbaa !1
  %and136 = and i8 %44, 1
  %tobool137 = icmp eq i8 %and136, 0
  br i1 %tobool137, label %if.end141, label %if.then138

if.then138:                                       ; preds = %land.lhs.true130, %lor.lhs.false122, %land.lhs.true118
  call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([24 x i8]* @.str30, i64 0, i64 0)) #8
  br label %if.end141

if.end141:                                        ; preds = %land.lhs.true130, %lor.lhs.false126, %if.then114, %land.lhs.true110, %if.else106, %if.then138, %if.then98, %if.then102
  %sv.addr.0 = phi %struct.sv* [ %sv, %if.then98 ], [ %call103, %if.then102 ], [ %call115, %if.then138 ], [ %sv, %if.else106 ], [ %sv, %land.lhs.true110 ], [ %call115, %if.then114 ], [ %call115, %lor.lhs.false126 ], [ %call115, %land.lhs.true130 ]
  %sv_flags142 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 2
  %45 = load i32* %sv_flags142, align 4, !tbaa !0
  %and143 = and i32 %45, 262144
  %cmp144 = icmp eq i32 %and143, 0
  br i1 %cmp144, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end141
  %sv_any146 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %46 = load i8** %sv_any146, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %46, i64 8
  %47 = bitcast i8* %xpv_cur to i64*
  %48 = load i64* %47, align 8, !tbaa !5
  store i64 %48, i64* %len, align 8, !tbaa !5
  %xpv_pv148 = bitcast i8* %46 to i8**
  %49 = load i8** %xpv_pv148, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end141
  %call149 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.addr.0, i64* %len, i32 2) #8
  %.pr = load i64* %len, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %50 = phi i64 [ %.pr, %cond.false ], [ %48, %cond.true ]
  %cond = phi i8* [ %call149, %cond.false ], [ %49, %cond.true ]
  %tobool150 = icmp eq i64 %50, 0
  br i1 %tobool150, label %if.end156, label %land.lhs.true151

land.lhs.true151:                                 ; preds = %cond.end
  %call152 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %fp, i8* %cond, i64 %50) #8
  %cmp153 = icmp eq i64 %call152, 0
  br i1 %cmp153, label %return, label %if.end156

if.end156:                                        ; preds = %cond.end, %land.lhs.true151
  %call157 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %fp) #8
  %lnot159 = icmp eq i32 %call157, 0
  %conv161 = zext i1 %lnot159 to i8
  br label %return

return:                                           ; preds = %land.lhs.true151, %lor.lhs.false59, %if.then67, %land.lhs.true63, %entry, %if.end156, %if.end89, %if.then30, %if.then9
  %retval.0 = phi i8 [ %conv15, %if.then9 ], [ %conv38, %if.then30 ], [ %conv161, %if.end156 ], [ %conv94, %if.end89 ], [ 1, %entry ], [ 1, %land.lhs.true63 ], [ 1, %if.then67 ], [ 1, %lor.lhs.false59 ], [ 0, %land.lhs.true151 ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_report_uninit() #1

; Function Attrs: optsize
declare i32 @PerlIO_isutf8(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(%struct._PerlIO**, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_my_stat() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 16
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.else58, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  %.pre155 = load %struct.op** @PL_op, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = phi %struct.op* [ %.pre155, %if.then2 ], [ %1, %if.then ]
  %op_sv = getelementptr inbounds %struct.op* %4, i64 1
  %5 = bitcast %struct.op* %op_sv to %struct.sv**
  %6 = load %struct.sv** %5, align 8, !tbaa !3
  br label %do_fstat

do_fstat:                                         ; preds = %land.lhs.true68, %if.else58, %if.end
  %gv.0.in = phi %struct.sv* [ %6, %if.end ], [ %40, %if.else58 ], [ %43, %land.lhs.true68 ]
  %gv.0 = bitcast %struct.sv* %gv.0.in to %struct.gv*
  %tobool3 = icmp eq %struct.sv* %gv.0.in, null
  br i1 %tobool3, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do_fstat
  %sv_flags = getelementptr inbounds %struct.sv* %gv.0.in, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and4 = and i32 %7, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sv_any = bitcast %struct.sv* %gv.0.in to %struct.xpvgv**
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool8 = icmp eq %struct.gp* %9, null
  br i1 %tobool8, label %if.else, label %cond.end

cond.end:                                         ; preds = %land.lhs.true7
  %gp_io = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool11 = icmp eq %struct.io* %10, null
  br i1 %tobool11, label %if.else, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %cond.end
  %sv_any13 = getelementptr inbounds %struct.io* %10, i64 0, i32 0
  %11 = load %struct.xpvio** %sv_any13, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %11, i64 0, i32 7
  %12 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  %tobool14 = icmp eq %struct._PerlIO** %12, null
  br i1 %tobool14, label %if.else, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  store %struct.gv* %gv.0, %struct.gv** @PL_statgv, align 8, !tbaa !3
  %13 = load %struct.sv** @PL_statname, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0)) #8
  store i32 235, i32* @PL_laststype, align 4, !tbaa !0
  %14 = load %struct.xpvio** %sv_any13, align 8, !tbaa !3
  %xio_ifp17 = getelementptr inbounds %struct.xpvio* %14, i64 0, i32 7
  %15 = load %struct._PerlIO*** %xio_ifp17, align 8, !tbaa !3
  %call18 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %15) #8
  %call19 = call i32 @fstat(i32 %call18, %struct.stat* @PL_statcache) #8
  store i32 %call19, i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %do_fstat, %land.lhs.true, %land.lhs.true7, %land.lhs.true12, %cond.end
  %cond154 = phi %struct.io* [ %10, %land.lhs.true12 ], [ null, %cond.end ], [ null, %land.lhs.true7 ], [ null, %land.lhs.true ], [ null, %do_fstat ]
  %16 = load %struct.gv** @PL_defgv, align 8, !tbaa !3
  %cmp20 = icmp eq %struct.gv* %gv.0, %16
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  %17 = load i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

if.end23:                                         ; preds = %if.else
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp24 = icmp eq %struct.sv* %19, null
  br i1 %cmp24, label %lor.lhs.false47, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end23
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings27 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings27, align 8, !tbaa !3
  %cmp28 = icmp eq %struct.sv* %21, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp28, label %lor.lhs.false47, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings31 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings31, align 8, !tbaa !3
  %cmp32 = icmp eq %struct.sv* %23, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp32, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true30
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings34 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings34, align 8, !tbaa !3
  %sv_any35 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %26 = load i8** %sv_any35, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %27, i64 2
  %28 = load i8* %arrayidx, align 1, !tbaa !1
  %and37 = and i8 %28, 64
  %tobool38 = icmp eq i8 %and37, 0
  br i1 %tobool38, label %lor.lhs.false39, label %if.then55

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings40 = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings40, align 8, !tbaa !3
  %sv_any41 = getelementptr inbounds %struct.sv* %30, i64 0, i32 0
  %31 = load i8** %sv_any41, align 8, !tbaa !3
  %xpv_pv42 = bitcast i8* %31 to i8**
  %32 = load i8** %xpv_pv42, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds i8* %32, i64 1
  %33 = load i8* %arrayidx43, align 1, !tbaa !1
  %and45 = and i8 %33, 16
  %tobool46 = icmp eq i8 %and45, 0
  br i1 %tobool46, label %lor.lhs.false47, label %if.then55

lor.lhs.false47:                                  ; preds = %lor.lhs.false39, %land.lhs.true26, %if.end23
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings48 = getelementptr inbounds %struct.cop* %34, i64 0, i32 14
  %35 = load %struct.sv** %cop_warnings48, align 8, !tbaa !3
  %cmp49 = icmp eq %struct.sv* %35, null
  br i1 %cmp49, label %land.lhs.true51, label %if.end57

land.lhs.true51:                                  ; preds = %lor.lhs.false47
  %36 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and53 = and i8 %36, 1
  %tobool54 = icmp eq i8 %and53, 0
  br i1 %tobool54, label %if.end57, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false39, %lor.lhs.false, %land.lhs.true51, %land.lhs.true30
  %37 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_type = getelementptr inbounds %struct.op* %37, i64 0, i32 4
  %38 = load i16* %op_type, align 2, !tbaa !4
  %conv56 = zext i16 %38 to i32
  call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %cond154, i32 %conv56) #8
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true51, %if.then55, %lor.lhs.false47
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8, !tbaa !3
  %39 = load %struct.sv** @PL_statname, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %39, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0)) #8
  store i32 -1, i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

if.else58:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %40 = load %struct.sv** %0, align 8, !tbaa !3
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %sv_flags59 = getelementptr inbounds %struct.sv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags59, align 4, !tbaa !0
  %and60 = and i32 %41, 255
  %cmp61 = icmp eq i32 %and60, 13
  br i1 %cmp61, label %do_fstat, label %if.else64

if.else64:                                        ; preds = %if.else58
  %and66 = and i32 %41, 524288
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %if.end78, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.else64
  %sv_any69 = getelementptr inbounds %struct.sv* %40, i64 0, i32 0
  %42 = load i8** %sv_any69, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %42 to %struct.sv**
  %43 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags70 = getelementptr inbounds %struct.sv* %43, i64 0, i32 2
  %44 = load i32* %sv_flags70, align 4, !tbaa !0
  %and71 = and i32 %44, 255
  %cmp72 = icmp eq i32 %and71, 13
  br i1 %cmp72, label %do_fstat, label %if.end78

if.end78:                                         ; preds = %if.else64, %land.lhs.true68
  %and80 = and i32 %41, 262144
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %cond.false87, label %cond.true83

cond.true83:                                      ; preds = %if.end78
  %sv_any84 = getelementptr inbounds %struct.sv* %40, i64 0, i32 0
  %45 = load i8** %sv_any84, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur to i64*
  %47 = load i64* %46, align 8, !tbaa !5
  store i64 %47, i64* %len, align 8, !tbaa !5
  %xpv_pv86 = bitcast i8* %45 to i8**
  %48 = load i8** %xpv_pv86, align 8, !tbaa !3
  br label %cond.end89

cond.false87:                                     ; preds = %if.end78
  %call88 = call i8* @Perl_sv_2pv_flags(%struct.sv* %40, i64* %len, i32 2) #8
  %.pre = load i64* %len, align 8, !tbaa !5
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false87, %cond.true83
  %49 = phi i64 [ %47, %cond.true83 ], [ %.pre, %cond.false87 ]
  %cond90 = phi i8* [ %48, %cond.true83 ], [ %call88, %cond.false87 ]
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8, !tbaa !3
  %50 = load %struct.sv** @PL_statname, align 8, !tbaa !3
  call void @Perl_sv_setpvn(%struct.sv* %50, i8* %cond90, i64 %49) #8
  %51 = load %struct.sv** @PL_statname, align 8, !tbaa !3
  %sv_any91 = getelementptr inbounds %struct.sv* %51, i64 0, i32 0
  %52 = load i8** %sv_any91, align 8, !tbaa !3
  %xpv_pv92 = bitcast i8* %52 to i8**
  %53 = load i8** %xpv_pv92, align 8, !tbaa !3
  store i32 235, i32* @PL_laststype, align 4, !tbaa !0
  %call93 = call i32 @stat(i8* %53, %struct.stat* @PL_statcache) #8
  store i32 %call93, i32* @PL_laststatval, align 4, !tbaa !0
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %land.lhs.true96, label %if.end128

land.lhs.true96:                                  ; preds = %cond.end89
  %54 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings97 = getelementptr inbounds %struct.cop* %54, i64 0, i32 14
  %55 = load %struct.sv** %cop_warnings97, align 8, !tbaa !3
  %cmp98 = icmp eq %struct.sv* %55, null
  br i1 %cmp98, label %lor.lhs.false116, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %land.lhs.true96
  %56 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings101 = getelementptr inbounds %struct.cop* %56, i64 0, i32 14
  %57 = load %struct.sv** %cop_warnings101, align 8, !tbaa !3
  %cmp102 = icmp eq %struct.sv* %57, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp102, label %lor.lhs.false116, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %land.lhs.true100
  %58 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings105 = getelementptr inbounds %struct.cop* %58, i64 0, i32 14
  %59 = load %struct.sv** %cop_warnings105, align 8, !tbaa !3
  %cmp106 = icmp eq %struct.sv* %59, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp106, label %land.lhs.true124, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %land.lhs.true104
  %60 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings109 = getelementptr inbounds %struct.cop* %60, i64 0, i32 14
  %61 = load %struct.sv** %cop_warnings109, align 8, !tbaa !3
  %sv_any110 = getelementptr inbounds %struct.sv* %61, i64 0, i32 0
  %62 = load i8** %sv_any110, align 8, !tbaa !3
  %xpv_pv111 = bitcast i8* %62 to i8**
  %63 = load i8** %xpv_pv111, align 8, !tbaa !3
  %arrayidx112 = getelementptr inbounds i8* %63, i64 2
  %64 = load i8* %arrayidx112, align 1, !tbaa !1
  %and114 = and i8 %64, 4
  %tobool115 = icmp eq i8 %and114, 0
  br i1 %tobool115, label %lor.lhs.false116, label %land.lhs.true124

lor.lhs.false116:                                 ; preds = %lor.lhs.false108, %land.lhs.true100, %land.lhs.true96
  %65 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings117 = getelementptr inbounds %struct.cop* %65, i64 0, i32 14
  %66 = load %struct.sv** %cop_warnings117, align 8, !tbaa !3
  %cmp118 = icmp eq %struct.sv* %66, null
  br i1 %cmp118, label %land.lhs.true120, label %if.end128

land.lhs.true120:                                 ; preds = %lor.lhs.false116
  %67 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and122 = and i8 %67, 1
  %tobool123 = icmp eq i8 %and122, 0
  br i1 %tobool123, label %if.end128, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %lor.lhs.false108, %land.lhs.true120, %land.lhs.true104
  %call125 = call i8* @strchr(i8* %53, i32 10) #8
  %tobool126 = icmp eq i8* %call125, null
  br i1 %tobool126, label %if.end128, label %if.then127

if.then127:                                       ; preds = %land.lhs.true124
  call void (i32, i8*, ...)* @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8]* @PL_warn_nl, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0)) #8
  br label %if.end128

if.end128:                                        ; preds = %land.lhs.true124, %land.lhs.true120, %lor.lhs.false116, %if.then127, %cond.end89
  %68 = load i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end128, %if.end57, %if.then22, %if.then15
  %retval.0 = phi i32 [ %call19, %if.then15 ], [ %17, %if.then22 ], [ -1, %if.end57 ], [ %68, %if.end128 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_my_lstat() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 16
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.end43, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = phi %struct.op* [ %.pre, %if.then2 ], [ %1, %if.then ]
  %sp.0 = phi %struct.sv** [ %call, %if.then2 ], [ %0, %if.then ]
  %op_sv = getelementptr inbounds %struct.op* %4, i64 1
  %5 = bitcast %struct.op* %op_sv to %struct.sv**
  %6 = load %struct.sv** %5, align 8, !tbaa !3
  %7 = bitcast %struct.sv* %6 to %struct.gv*
  %8 = load %struct.gv** @PL_defgv, align 8, !tbaa !3
  %cmp3 = icmp eq %struct.gv* %7, %8
  br i1 %cmp3, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %9 = load i32* @PL_laststype, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %9, 234
  br i1 %cmp6, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str32, i64 0, i64 0)) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then8
  %10 = load i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

if.end10:                                         ; preds = %if.end
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp11 = icmp eq %struct.sv* %12, null
  br i1 %cmp11, label %lor.lhs.false24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings13 = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings13, align 8, !tbaa !3
  %cmp14 = icmp eq %struct.sv* %14, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp14, label %lor.lhs.false24, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings17 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings17, align 8, !tbaa !3
  %cmp18 = icmp eq %struct.sv* %16, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp18, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true16
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings20 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings20, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %18, i64 0, i32 0
  %19 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %19 to i8**
  %20 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %20, i64 1
  %21 = load i8* %arrayidx, align 1, !tbaa !1
  %and22 = and i8 %21, 4
  %tobool23 = icmp eq i8 %and22, 0
  br i1 %tobool23, label %lor.lhs.false24, label %if.then32

lor.lhs.false24:                                  ; preds = %lor.lhs.false, %land.lhs.true, %if.end10
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings25 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings25, align 8, !tbaa !3
  %cmp26 = icmp eq %struct.sv* %23, null
  br i1 %cmp26, label %land.lhs.true28, label %if.end43

land.lhs.true28:                                  ; preds = %lor.lhs.false24
  %24 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and30 = and i8 %24, 1
  %tobool31 = icmp eq i8 %and30, 0
  br i1 %tobool31, label %if.end43, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true28, %land.lhs.true16
  %25 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_sv33 = getelementptr inbounds %struct.op* %25, i64 1
  %26 = bitcast %struct.op* %op_sv33 to %struct.sv**
  %27 = load %struct.sv** %26, align 8, !tbaa !3
  %28 = bitcast %struct.sv* %27 to %struct.gv*
  %sv_any34 = bitcast %struct.sv* %27 to %struct.xpvgv**
  %29 = load %struct.xpvgv** %sv_any34, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %29, i64 0, i32 7
  %30 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_egv = getelementptr inbounds %struct.gp* %30, i64 0, i32 6
  %31 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  %tobool35 = icmp eq %struct.gv* %31, null
  %. = select i1 %tobool35, %struct.gv* %28, %struct.gv* %31
  %sv_any41 = getelementptr inbounds %struct.gv* %., i64 0, i32 0
  %32 = load %struct.xpvgv** %sv_any41, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 8
  %33 = load i8** %xgv_name, align 8, !tbaa !3
  call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([27 x i8]* @.str33, i64 0, i64 0), i8* %33) #8
  store i32 -1, i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

if.end43:                                         ; preds = %land.lhs.true28, %entry, %lor.lhs.false24
  %sp.1 = phi %struct.sv** [ %sp.0, %land.lhs.true28 ], [ %sp.0, %lor.lhs.false24 ], [ %0, %entry ]
  store i32 234, i32* @PL_laststype, align 4, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.1, i64 -1
  %34 = load %struct.sv** %sp.1, align 8, !tbaa !3
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %34, i64 0, i32 2
  %35 = load i32* %sv_flags, align 4, !tbaa !0
  %and44 = and i32 %35, 524288
  %tobool45 = icmp eq i32 %and44, 0
  br i1 %tobool45, label %if.end100, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end43
  %sv_any47 = getelementptr inbounds %struct.sv* %34, i64 0, i32 0
  %36 = load i8** %sv_any47, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %36 to %struct.sv**
  %37 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags48 = getelementptr inbounds %struct.sv* %37, i64 0, i32 2
  %38 = load i32* %sv_flags48, align 4, !tbaa !0
  %and49 = and i32 %38, 255
  %cmp50 = icmp eq i32 %and49, 13
  br i1 %cmp50, label %land.lhs.true52, label %if.end100

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings53 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings53, align 8, !tbaa !3
  %cmp54 = icmp eq %struct.sv* %40, null
  br i1 %cmp54, label %lor.lhs.false72, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings57 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings57, align 8, !tbaa !3
  %cmp58 = icmp eq %struct.sv* %42, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp58, label %lor.lhs.false72, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true56
  %43 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings61 = getelementptr inbounds %struct.cop* %43, i64 0, i32 14
  %44 = load %struct.sv** %cop_warnings61, align 8, !tbaa !3
  %cmp62 = icmp eq %struct.sv* %44, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp62, label %if.then80, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %land.lhs.true60
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings65 = getelementptr inbounds %struct.cop* %45, i64 0, i32 14
  %46 = load %struct.sv** %cop_warnings65, align 8, !tbaa !3
  %sv_any66 = getelementptr inbounds %struct.sv* %46, i64 0, i32 0
  %47 = load i8** %sv_any66, align 8, !tbaa !3
  %xpv_pv67 = bitcast i8* %47 to i8**
  %48 = load i8** %xpv_pv67, align 8, !tbaa !3
  %arrayidx68 = getelementptr inbounds i8* %48, i64 1
  %49 = load i8* %arrayidx68, align 1, !tbaa !1
  %and70 = and i8 %49, 4
  %tobool71 = icmp eq i8 %and70, 0
  br i1 %tobool71, label %lor.lhs.false72, label %if.then80

lor.lhs.false72:                                  ; preds = %lor.lhs.false64, %land.lhs.true56, %land.lhs.true52
  %50 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings73 = getelementptr inbounds %struct.cop* %50, i64 0, i32 14
  %51 = load %struct.sv** %cop_warnings73, align 8, !tbaa !3
  %cmp74 = icmp eq %struct.sv* %51, null
  br i1 %cmp74, label %land.lhs.true76, label %if.end100

land.lhs.true76:                                  ; preds = %lor.lhs.false72
  %52 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and78 = and i8 %52, 1
  %tobool79 = icmp eq i8 %and78, 0
  br i1 %tobool79, label %if.end100, label %if.then80

if.then80:                                        ; preds = %lor.lhs.false64, %land.lhs.true76, %land.lhs.true60
  %53 = load i8** %sv_any47, align 8, !tbaa !3
  %xrv_rv82 = bitcast i8* %53 to %struct.sv**
  %54 = load %struct.sv** %xrv_rv82, align 8, !tbaa !3
  %55 = bitcast %struct.sv* %54 to %struct.gv*
  %sv_any83 = bitcast %struct.sv* %54 to %struct.xpvgv**
  %56 = load %struct.xpvgv** %sv_any83, align 8, !tbaa !3
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv* %56, i64 0, i32 7
  %57 = load %struct.gp** %xgv_gp84, align 8, !tbaa !3
  %gp_egv85 = getelementptr inbounds %struct.gp* %57, i64 0, i32 6
  %58 = load %struct.gv** %gp_egv85, align 8, !tbaa !3
  %tobool86 = icmp eq %struct.gv* %58, null
  %.194 = select i1 %tobool86, %struct.gv* %55, %struct.gv* %58
  %sv_any98 = getelementptr inbounds %struct.gv* %.194, i64 0, i32 0
  %59 = load %struct.xpvgv** %sv_any98, align 8, !tbaa !3
  %xgv_name99 = getelementptr inbounds %struct.xpvgv* %59, i64 0, i32 8
  %60 = load i8** %xgv_name99, align 8, !tbaa !3
  call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([27 x i8]* @.str33, i64 0, i64 0), i8* %60) #8
  store i32 -1, i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

if.end100:                                        ; preds = %land.lhs.true76, %lor.lhs.false72, %if.end43, %land.lhs.true46
  %61 = load %struct.sv** @PL_statname, align 8, !tbaa !3
  %62 = load i32* %sv_flags, align 4, !tbaa !0
  %and102 = and i32 %62, 262144
  %cmp103 = icmp eq i32 %and102, 0
  br i1 %cmp103, label %cond.false109, label %cond.true105

cond.true105:                                     ; preds = %if.end100
  %sv_any106 = getelementptr inbounds %struct.sv* %34, i64 0, i32 0
  %63 = load i8** %sv_any106, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %63, i64 8
  %64 = bitcast i8* %xpv_cur to i64*
  %65 = load i64* %64, align 8, !tbaa !5
  store i64 %65, i64* %n_a, align 8, !tbaa !5
  %xpv_pv108 = bitcast i8* %63 to i8**
  %66 = load i8** %xpv_pv108, align 8, !tbaa !3
  br label %cond.end111

cond.false109:                                    ; preds = %if.end100
  %call110 = call i8* @Perl_sv_2pv_flags(%struct.sv* %34, i64* %n_a, i32 2) #8
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false109, %cond.true105
  %cond112 = phi i8* [ %66, %cond.true105 ], [ %call110, %cond.false109 ]
  call void @Perl_sv_setpv(%struct.sv* %61, i8* %cond112) #8
  %67 = load i32* %sv_flags, align 4, !tbaa !0
  %and114 = and i32 %67, 262144
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %cond.false122, label %cond.true117

cond.true117:                                     ; preds = %cond.end111
  %sv_any118 = getelementptr inbounds %struct.sv* %34, i64 0, i32 0
  %68 = load i8** %sv_any118, align 8, !tbaa !3
  %xpv_cur119 = getelementptr inbounds i8* %68, i64 8
  %69 = bitcast i8* %xpv_cur119 to i64*
  %70 = load i64* %69, align 8, !tbaa !5
  store i64 %70, i64* %n_a, align 8, !tbaa !5
  %xpv_pv121 = bitcast i8* %68 to i8**
  %71 = load i8** %xpv_pv121, align 8, !tbaa !3
  br label %cond.end124

cond.false122:                                    ; preds = %cond.end111
  %call123 = call i8* @Perl_sv_2pv_flags(%struct.sv* %34, i64* %n_a, i32 2) #8
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false122, %cond.true117
  %cond125 = phi i8* [ %71, %cond.true117 ], [ %call123, %cond.false122 ]
  %call126 = call i32 @stat(i8* %cond125, %struct.stat* @PL_statcache) #8
  store i32 %call126, i32* @PL_laststatval, align 4, !tbaa !0
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %land.lhs.true129, label %if.end174

land.lhs.true129:                                 ; preds = %cond.end124
  %72 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings130 = getelementptr inbounds %struct.cop* %72, i64 0, i32 14
  %73 = load %struct.sv** %cop_warnings130, align 8, !tbaa !3
  %cmp131 = icmp eq %struct.sv* %73, null
  br i1 %cmp131, label %lor.lhs.false149, label %land.lhs.true133

land.lhs.true133:                                 ; preds = %land.lhs.true129
  %74 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings134 = getelementptr inbounds %struct.cop* %74, i64 0, i32 14
  %75 = load %struct.sv** %cop_warnings134, align 8, !tbaa !3
  %cmp135 = icmp eq %struct.sv* %75, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp135, label %lor.lhs.false149, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %land.lhs.true133
  %76 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings138 = getelementptr inbounds %struct.cop* %76, i64 0, i32 14
  %77 = load %struct.sv** %cop_warnings138, align 8, !tbaa !3
  %cmp139 = icmp eq %struct.sv* %77, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp139, label %land.lhs.true157, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %land.lhs.true137
  %78 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings142 = getelementptr inbounds %struct.cop* %78, i64 0, i32 14
  %79 = load %struct.sv** %cop_warnings142, align 8, !tbaa !3
  %sv_any143 = getelementptr inbounds %struct.sv* %79, i64 0, i32 0
  %80 = load i8** %sv_any143, align 8, !tbaa !3
  %xpv_pv144 = bitcast i8* %80 to i8**
  %81 = load i8** %xpv_pv144, align 8, !tbaa !3
  %arrayidx145 = getelementptr inbounds i8* %81, i64 2
  %82 = load i8* %arrayidx145, align 1, !tbaa !1
  %and147 = and i8 %82, 4
  %tobool148 = icmp eq i8 %and147, 0
  br i1 %tobool148, label %lor.lhs.false149, label %land.lhs.true157

lor.lhs.false149:                                 ; preds = %lor.lhs.false141, %land.lhs.true133, %land.lhs.true129
  %83 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings150 = getelementptr inbounds %struct.cop* %83, i64 0, i32 14
  %84 = load %struct.sv** %cop_warnings150, align 8, !tbaa !3
  %cmp151 = icmp eq %struct.sv* %84, null
  br i1 %cmp151, label %land.lhs.true153, label %if.end174

land.lhs.true153:                                 ; preds = %lor.lhs.false149
  %85 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and155 = and i8 %85, 1
  %tobool156 = icmp eq i8 %and155, 0
  br i1 %tobool156, label %if.end174, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %lor.lhs.false141, %land.lhs.true153, %land.lhs.true137
  %86 = load i32* %sv_flags, align 4, !tbaa !0
  %and159 = and i32 %86, 262144
  %cmp160 = icmp eq i32 %and159, 0
  br i1 %cmp160, label %cond.false167, label %cond.true162

cond.true162:                                     ; preds = %land.lhs.true157
  %sv_any163 = getelementptr inbounds %struct.sv* %34, i64 0, i32 0
  %87 = load i8** %sv_any163, align 8, !tbaa !3
  %xpv_cur164 = getelementptr inbounds i8* %87, i64 8
  %88 = bitcast i8* %xpv_cur164 to i64*
  %89 = load i64* %88, align 8, !tbaa !5
  store i64 %89, i64* %n_a, align 8, !tbaa !5
  %xpv_pv166 = bitcast i8* %87 to i8**
  %90 = load i8** %xpv_pv166, align 8, !tbaa !3
  br label %cond.end169

cond.false167:                                    ; preds = %land.lhs.true157
  %call168 = call i8* @Perl_sv_2pv_flags(%struct.sv* %34, i64* %n_a, i32 2) #8
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false167, %cond.true162
  %cond170 = phi i8* [ %90, %cond.true162 ], [ %call168, %cond.false167 ]
  %call171 = call i8* @strchr(i8* %cond170, i32 10) #8
  %tobool172 = icmp eq i8* %call171, null
  br i1 %tobool172, label %if.end174, label %if.then173

if.then173:                                       ; preds = %cond.end169
  call void (i32, i8*, ...)* @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8]* @PL_warn_nl, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0)) #8
  br label %if.end174

if.end174:                                        ; preds = %cond.end169, %land.lhs.true153, %lor.lhs.false149, %if.then173, %cond.end124
  %91 = load i32* @PL_laststatval, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end174, %if.then80, %if.then32, %if.end9
  %retval.0 = phi i32 [ %10, %if.end9 ], [ -1, %if.then32 ], [ -1, %if.then80 ], [ %91, %if.end174 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_aexec(%struct.sv* %really, %struct.sv** %mark, %struct.sv** %sp) #0 {
entry:
  %call = tail call signext i8 @Perl_do_aexec5(%struct.sv* %really, %struct.sv** %mark, %struct.sv** %sp, i32 0, i32 0) #7
  ret i8 0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_aexec5(%struct.sv* %really, %struct.sv** %mark, %struct.sv** %sp, i32 %fd, i32 %do_report) #0 {
entry:
  %n_a = alloca i64, align 8
  %e = alloca i32, align 4
  %cmp = icmp ugt %struct.sv** %sp, %mark
  br i1 %cmp, label %if.then, label %if.end88

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %mark to i64
  %sub.ptr.sub = sub i64 8, %sub.ptr.rhs.cast
  %sub.ptr.div108109 = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast
  %mul = and i64 %sub.ptr.div108109, -8
  %call = call i8* @Perl_safesysmalloc(i64 %mul) #8
  %0 = bitcast i8* %call to i8**
  store i8** %0, i8*** @PL_Argv, align 8, !tbaa !3
  %incdec.ptr118 = getelementptr inbounds %struct.sv** %mark, i64 1
  %cmp1119 = icmp ugt %struct.sv** %incdec.ptr118, %sp
  br i1 %cmp1119, label %while.end, label %while.body

while.body:                                       ; preds = %if.then, %while.cond.backedge
  %incdec.ptr121 = phi %struct.sv** [ %incdec.ptr, %while.cond.backedge ], [ %incdec.ptr118, %if.then ]
  %a.0120 = phi i8** [ %a.0.be, %while.cond.backedge ], [ %0, %if.then ]
  %1 = load %struct.sv** %incdec.ptr121, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %while.cond.backedge, label %if.then2

if.then2:                                         ; preds = %while.body
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %2, 262144
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then2
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !5
  store i64 %5, i64* %n_a, align 8, !tbaa !5
  %xpv_pv = bitcast i8* %3 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %while.cond.backedge

cond.false:                                       ; preds = %if.then2
  %call5 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %n_a, i32 2) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %cond.true, %cond.false
  %storemerge = phi i8* [ %6, %cond.true ], [ %call5, %cond.false ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %while.body ]
  %a.0.be = getelementptr inbounds i8** %a.0120, i64 1
  store i8* %storemerge, i8** %a.0120, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds %struct.sv** %incdec.ptr121, i64 1
  %cmp1 = icmp ugt %struct.sv** %incdec.ptr, %sp
  br i1 %cmp1, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %if.then
  %a.0.lcssa = phi i8** [ %0, %if.then ], [ %a.0.be, %while.cond.backedge ]
  store i8* null, i8** %a.0.lcssa, align 8, !tbaa !3
  %tobool8 = icmp ne %struct.sv* %really, null
  br i1 %tobool8, label %if.then9, label %land.lhs.true

if.then9:                                         ; preds = %while.end
  %sv_flags10 = getelementptr inbounds %struct.sv* %really, i64 0, i32 2
  %7 = load i32* %sv_flags10, align 4, !tbaa !0
  %and11 = and i32 %7, 262144
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.end22.thread, label %if.end22

if.end22.thread:                                  ; preds = %if.then9
  %call19 = call i8* @Perl_sv_2pv_flags(%struct.sv* %really, i64* %n_a, i32 2) #8
  br label %land.lhs.true27

if.end22:                                         ; preds = %if.then9
  %sv_any14 = getelementptr inbounds %struct.sv* %really, i64 0, i32 0
  %8 = load i8** %sv_any14, align 8, !tbaa !3
  %xpv_cur15 = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur15 to i64*
  %10 = load i64* %9, align 8, !tbaa !5
  store i64 %10, i64* %n_a, align 8, !tbaa !5
  %xpv_pv17 = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv17, align 8, !tbaa !3
  br label %land.lhs.true27

land.lhs.true:                                    ; preds = %while.end
  %12 = load i8*** @PL_Argv, align 8, !tbaa !3
  %13 = load i8** %12, align 8, !tbaa !3
  %14 = load i8* %13, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %14, 47
  br i1 %cmp24, label %if.else42, label %if.then31

land.lhs.true27:                                  ; preds = %if.end22, %if.end22.thread
  %tmps.0111 = phi i8* [ %call19, %if.end22.thread ], [ %11, %if.end22 ]
  %15 = load i8* %tmps.0111, align 1, !tbaa !1
  %cmp29 = icmp ne i8 %15, 47
  %16 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool32 = icmp ne i8 %16, 0
  %or.cond = and i1 %cmp29, %tobool32
  br i1 %or.cond, label %if.then33, label %if.end35

if.then31:                                        ; preds = %land.lhs.true
  %.old = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool32.old = icmp eq i8 %.old, 0
  br i1 %tobool32.old, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.then31, %land.lhs.true27
  %tmps.0113 = phi i8* [ null, %if.then31 ], [ %tmps.0111, %land.lhs.true27 ]
  call void @Perl_taint_env() #8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then33, %land.lhs.true27
  %tmps.0112 = phi i8* [ null, %if.then31 ], [ %tmps.0113, %if.then33 ], [ %tmps.0111, %land.lhs.true27 ]
  br i1 %tobool8, label %land.lhs.true37, label %if.else42

land.lhs.true37:                                  ; preds = %if.end35
  %17 = load i8* %tmps.0112, align 1, !tbaa !1
  %tobool39 = icmp eq i8 %17, 0
  br i1 %tobool39, label %if.else42, label %if.then40

if.then40:                                        ; preds = %land.lhs.true37
  %18 = load i8*** @PL_Argv, align 8, !tbaa !3
  %call41 = call i32 @execvp(i8* %tmps.0112, i8** %18) #8
  br label %if.end45

if.else42:                                        ; preds = %land.lhs.true37, %if.end35, %land.lhs.true
  %tmps.0115 = phi i8* [ null, %land.lhs.true ], [ %tmps.0112, %if.end35 ], [ %tmps.0112, %land.lhs.true37 ]
  %19 = load i8*** @PL_Argv, align 8, !tbaa !3
  %20 = load i8** %19, align 8, !tbaa !3
  %call44 = call i32 @execvp(i8* %20, i8** %19) #8
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40
  %tmps.0114 = phi i8* [ %tmps.0115, %if.else42 ], [ %tmps.0112, %if.then40 ]
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %21, i64 0, i32 14
  %22 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp46 = icmp eq %struct.sv* %22, null
  br i1 %cmp46, label %lor.lhs.false64, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end45
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings49 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings49, align 8, !tbaa !3
  %cmp50 = icmp eq %struct.sv* %24, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp50, label %lor.lhs.false64, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings53 = getelementptr inbounds %struct.cop* %25, i64 0, i32 14
  %26 = load %struct.sv** %cop_warnings53, align 8, !tbaa !3
  %cmp54 = icmp eq %struct.sv* %26, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp54, label %if.then72, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %land.lhs.true52
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings57 = getelementptr inbounds %struct.cop* %27, i64 0, i32 14
  %28 = load %struct.sv** %cop_warnings57, align 8, !tbaa !3
  %sv_any58 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %29 = load i8** %sv_any58, align 8, !tbaa !3
  %xpv_pv59 = bitcast i8* %29 to i8**
  %30 = load i8** %xpv_pv59, align 8, !tbaa !3
  %arrayidx60 = getelementptr inbounds i8* %30, i64 1
  %31 = load i8* %arrayidx60, align 1, !tbaa !1
  %and62 = and i8 %31, 64
  %tobool63 = icmp eq i8 %and62, 0
  br i1 %tobool63, label %lor.lhs.false64, label %if.then72

lor.lhs.false64:                                  ; preds = %lor.lhs.false56, %land.lhs.true48, %if.end45
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings65 = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings65, align 8, !tbaa !3
  %cmp66 = icmp eq %struct.sv* %33, null
  br i1 %cmp66, label %land.lhs.true68, label %if.end81

land.lhs.true68:                                  ; preds = %lor.lhs.false64
  %34 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and70 = and i8 %34, 1
  %tobool71 = icmp eq i8 %and70, 0
  br i1 %tobool71, label %if.end81, label %if.then72

if.then72:                                        ; preds = %lor.lhs.false56, %land.lhs.true68, %land.lhs.true52
  br i1 %tobool8, label %cond.end77, label %cond.false75

cond.false75:                                     ; preds = %if.then72
  %35 = load i8*** @PL_Argv, align 8, !tbaa !3
  %36 = load i8** %35, align 8, !tbaa !3
  br label %cond.end77

cond.end77:                                       ; preds = %if.then72, %cond.false75
  %cond78 = phi i8* [ %36, %cond.false75 ], [ %tmps.0114, %if.then72 ]
  %call79 = call i32* @__errno_location() #8
  %37 = load i32* %call79, align 4, !tbaa !0
  %call80 = call i8* @strerror(i32 %37) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 7, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* %cond78, i8* %call80) #8
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true68, %cond.end77, %lor.lhs.false64
  %tobool82 = icmp eq i32 %do_report, 0
  br i1 %tobool82, label %if.end88, label %if.then83

if.then83:                                        ; preds = %if.end81
  %call84 = call i32* @__errno_location() #8
  %38 = load i32* %call84, align 4, !tbaa !0
  store i32 %38, i32* %e, align 4, !tbaa !0
  %39 = bitcast i32* %e to i8*
  %call85 = call i64 @write(i32 %fd, i8* %39, i64 4) #8
  %call86 = call i32 @close(i32 %fd) #8
  br label %if.end88

if.end88:                                         ; preds = %if.end81, %if.then83, %entry
  call void @Perl_do_execfree() #7
  ret i8 0
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: optsize
declare i32 @execvp(i8*, i8**) #1

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_execfree() #0 {
entry:
  %0 = load i8*** @PL_Argv, align 8, !tbaa !3
  %tobool = icmp eq i8** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %0 to i8*
  tail call void @Perl_safesysfree(i8* %1) #8
  store i8** null, i8*** @PL_Argv, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i8** @PL_Cmd, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @Perl_safesysfree(i8* %2) #8
  store i8* null, i8** @PL_Cmd, align 8, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_exec(i8* %cmd) #0 {
entry:
  %call = tail call signext i8 @Perl_do_exec3(i8* %cmd, i32 0, i32 0) #7
  ret i8 0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_do_exec3(i8* %cmd, i32 %fd, i32 %do_report) #0 {
entry:
  %flags = alloca [10 x i8], align 1
  %e = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %cmd.addr.0 = phi i8* [ %cmd, %entry ], [ %incdec.ptr, %while.body ]
  %0 = load i8* %cmd.addr.0, align 1, !tbaa !1
  switch i8 %0, label %while.end [
    i8 12, label %while.body
    i8 32, label %while.body
    i8 9, label %while.body
    i8 10, label %while.body
    i8 13, label %while.body
  ]

while.body:                                       ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8* %cmd.addr.0, i64 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load i8** @PL_cshname, align 8, !tbaa !3
  %2 = load i32* @PL_cshlen, align 4, !tbaa !0
  %conv17 = sext i32 %2 to i64
  %call = call i32 @strncmp(i8* %cmd.addr.0, i8* %1, i64 %conv17) #8
  %tobool18 = icmp eq i32 %call, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %while.end
  %add.ptr = getelementptr inbounds i8* %cmd.addr.0, i64 %conv17
  %call19 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i64 3) #8
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.end64

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [10 x i8]* %flags, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str37, i64 0, i64 0), i64 3, i32 1, i1 false)
  %add.ptr23.sum = add i64 %conv17, 3
  %add.ptr24 = getelementptr inbounds i8* %cmd.addr.0, i64 %add.ptr23.sum
  %3 = load i8* %add.ptr24, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %3, 102
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then
  %add.ptr24.sum = add i64 %conv17, 4
  %incdec.ptr29 = getelementptr inbounds i8* %cmd.addr.0, i64 %add.ptr24.sum
  %strlen = call i64 @strlen(i8* %arraydecay) #2
  %endptr = getelementptr [10 x i8]* %flags, i64 0, i64 %strlen
  %4 = bitcast i8* %endptr to i16*
  store i16 102, i16* %4, align 1
  %.pre = load i8* %incdec.ptr29, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then
  %5 = phi i8 [ %.pre, %if.then28 ], [ %3, %if.then ]
  %s.0 = phi i8* [ %incdec.ptr29, %if.then28 ], [ %add.ptr24, %if.then ]
  %cmp33 = icmp eq i8 %5, 32
  %incdec.ptr36 = getelementptr inbounds i8* %s.0, i64 1
  %incdec.ptr36.s.0 = select i1 %cmp33, i8* %incdec.ptr36, i8* %s.0
  %incdec.ptr38 = getelementptr inbounds i8* %incdec.ptr36.s.0, i64 1
  %6 = load i8* %incdec.ptr36.s.0, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %6, 39
  br i1 %cmp40, label %while.cond43, label %if.end64

while.cond43:                                     ; preds = %if.end, %while.cond43
  %s.2 = phi i8* [ %incdec.ptr46, %while.cond43 ], [ %incdec.ptr38, %if.end ]
  %7 = load i8* %s.2, align 1, !tbaa !1
  %tobool44 = icmp eq i8 %7, 0
  %incdec.ptr46 = getelementptr inbounds i8* %s.2, i64 1
  br i1 %tobool44, label %while.end47, label %while.cond43

while.end47:                                      ; preds = %while.cond43
  %arrayidx = getelementptr inbounds i8* %s.2, i64 -1
  %8 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp49 = icmp eq i8 %8, 10
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %while.end47
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %arrayidx54.phi.trans.insert = getelementptr inbounds i8* %s.2, i64 -2
  %.pre580 = load i8* %arrayidx54.phi.trans.insert, align 1, !tbaa !1
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %while.end47
  %9 = phi i8 [ %.pre580, %if.then51 ], [ %8, %while.end47 ]
  %s.3 = phi i8* [ %arrayidx, %if.then51 ], [ %s.2, %while.end47 ]
  %arrayidx54 = getelementptr inbounds i8* %s.3, i64 -1
  %cmp56 = icmp eq i8 %9, 39
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end53
  store i8 0, i8* %arrayidx54, align 1, !tbaa !1
  %10 = load i8** @PL_cshname, align 8, !tbaa !3
  %call61 = call i32 (i8*, i8*, ...)* @execl(i8* %10, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* %arraydecay, i8* %incdec.ptr38, i8* null) #8
  store i8 39, i8* %arrayidx54, align 1, !tbaa !1
  br label %return

if.end64:                                         ; preds = %if.end53, %if.end, %land.lhs.true, %while.end
  %11 = load i8* %cmd.addr.0, align 1, !tbaa !1
  %cmp66 = icmp eq i8 %11, 46
  br i1 %cmp66, label %land.lhs.true68, label %if.end94

land.lhs.true68:                                  ; preds = %if.end64
  %arrayidx69 = getelementptr inbounds i8* %cmd.addr.0, i64 1
  %12 = load i8* %arrayidx69, align 1, !tbaa !1
  switch i8 %12, label %if.end94 [
    i8 32, label %doshell
    i8 9, label %doshell
    i8 10, label %doshell
    i8 13, label %doshell
    i8 12, label %doshell
  ]

if.end94:                                         ; preds = %land.lhs.true68, %if.end64
  %call95 = call i32 @strncmp(i8* %cmd.addr.0, i8* getelementptr inbounds ([5 x i8]* @.str40, i64 0, i64 0), i64 4) #8
  %tobool96 = icmp eq i32 %call95, 0
  br i1 %tobool96, label %land.lhs.true97, label %for.cond.preheader

land.lhs.true97:                                  ; preds = %if.end94
  %arrayidx98 = getelementptr inbounds i8* %cmd.addr.0, i64 4
  %13 = load i8* %arrayidx98, align 1, !tbaa !1
  switch i8 %13, label %for.cond.preheader [
    i8 32, label %doshell
    i8 9, label %doshell
    i8 10, label %doshell
    i8 13, label %doshell
    i8 12, label %doshell
  ]

for.cond.preheader:                               ; preds = %land.lhs.true97, %if.end94
  %tobool125570 = icmp eq i8 %11, 0
  br i1 %tobool125570, label %for.cond162, label %land.rhs126

land.rhs126:                                      ; preds = %for.cond.preheader, %for.inc
  %.pr = phi i8 [ %17, %for.inc ], [ %11, %for.cond.preheader ]
  %s.4571 = phi i8* [ %incdec.ptr156, %for.inc ], [ %cmd.addr.0, %for.cond.preheader ]
  %.off = add i8 %.pr, -65
  %14 = icmp ult i8 %.off, 26
  %.off554 = add i8 %.pr, -97
  %15 = icmp ult i8 %.off554, 26
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %for.inc, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %land.rhs126
  %.off555 = add i8 %.pr, -48
  %16 = icmp ult i8 %.off555, 10
  %cmp152 = icmp eq i8 %.pr, 95
  %or.cond553 = or i1 %16, %cmp152
  br i1 %or.cond553, label %for.inc, label %for.end

for.inc:                                          ; preds = %lor.lhs.false142, %land.rhs126
  %incdec.ptr156 = getelementptr inbounds i8* %s.4571, i64 1
  %17 = load i8* %incdec.ptr156, align 1, !tbaa !1
  %tobool125 = icmp eq i8 %17, 0
  br i1 %tobool125, label %for.cond162, label %land.rhs126

for.end:                                          ; preds = %lor.lhs.false142
  %cmp158 = icmp eq i8 %.pr, 61
  br i1 %cmp158, label %doshell, label %for.cond162

for.cond162:                                      ; preds = %for.end, %for.inc, %for.cond.preheader, %for.inc313
  %18 = phi i8 [ %.pre581, %for.inc313 ], [ 0, %for.cond.preheader ], [ %11, %for.inc ], [ %11, %for.end ]
  %s.5 = phi i8* [ %incdec.ptr314, %for.inc313 ], [ %cmd.addr.0, %for.cond.preheader ], [ %cmd.addr.0, %for.inc ], [ %cmd.addr.0, %for.end ]
  switch i8 %18, label %land.lhs.true168 [
    i8 0, label %for.end315
    i8 32, label %for.inc313
  ]

land.lhs.true168:                                 ; preds = %for.cond162
  %.off556 = add i8 %18, -65
  %19 = icmp ult i8 %.off556, 26
  %.off557 = add i8 %18, -97
  %20 = icmp ult i8 %.off557, 26
  %or.cond560 = or i1 %19, %20
  br i1 %or.cond560, label %for.inc313, label %land.lhs.true184

land.lhs.true184:                                 ; preds = %land.lhs.true168
  %conv185 = sext i8 %18 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([21 x i8]* @.str41, i64 0, i64 0), i32 %conv185, i64 21)
  %tobool187 = icmp eq i8* %memchr, null
  br i1 %tobool187, label %for.inc313, label %if.then188

if.then188:                                       ; preds = %land.lhs.true184
  switch i8 %18, label %doshell [
    i8 10, label %land.lhs.true192
    i8 62, label %land.lhs.true200
  ]

land.lhs.true192:                                 ; preds = %if.then188
  %arrayidx193 = getelementptr inbounds i8* %s.5, i64 1
  %21 = load i8* %arrayidx193, align 1, !tbaa !1
  %tobool194 = icmp eq i8 %21, 0
  br i1 %tobool194, label %if.then195, label %doshell

if.then195:                                       ; preds = %land.lhs.true192
  store i8 0, i8* %s.5, align 1, !tbaa !1
  br label %for.end315

land.lhs.true200:                                 ; preds = %if.then188
  %arrayidx201 = getelementptr inbounds i8* %s.5, i64 1
  %22 = load i8* %arrayidx201, align 1, !tbaa !1
  %cmp203 = icmp eq i8 %22, 38
  br i1 %cmp203, label %land.lhs.true205, label %doshell

land.lhs.true205:                                 ; preds = %land.lhs.true200
  %arrayidx206 = getelementptr inbounds i8* %s.5, i64 2
  %23 = load i8* %arrayidx206, align 1, !tbaa !1
  %cmp208 = icmp eq i8 %23, 49
  br i1 %cmp208, label %land.lhs.true210, label %doshell

land.lhs.true210:                                 ; preds = %land.lhs.true205
  %add.ptr211 = getelementptr inbounds i8* %cmd.addr.0, i64 1
  %cmp212 = icmp ugt i8* %s.5, %add.ptr211
  br i1 %cmp212, label %land.lhs.true214, label %doshell

land.lhs.true214:                                 ; preds = %land.lhs.true210
  %arrayidx215 = getelementptr inbounds i8* %s.5, i64 -1
  %24 = load i8* %arrayidx215, align 1, !tbaa !1
  %cmp217 = icmp eq i8 %24, 50
  br i1 %cmp217, label %land.lhs.true219, label %doshell

land.lhs.true219:                                 ; preds = %land.lhs.true214
  %arrayidx220 = getelementptr inbounds i8* %s.5, i64 -2
  %25 = load i8* %arrayidx220, align 1, !tbaa !1
  switch i8 %25, label %doshell [
    i8 32, label %land.lhs.true244
    i8 9, label %land.lhs.true244
    i8 10, label %land.lhs.true244
    i8 13, label %land.lhs.true244
    i8 12, label %land.lhs.true244
  ]

land.lhs.true244:                                 ; preds = %land.lhs.true219, %land.lhs.true219, %land.lhs.true219, %land.lhs.true219, %land.lhs.true219
  %arrayidx245 = getelementptr inbounds i8* %s.5, i64 3
  %26 = load i8* %arrayidx245, align 1, !tbaa !1
  switch i8 %26, label %doshell [
    i8 0, label %while.cond274
    i8 32, label %while.cond274
    i8 9, label %while.cond274
    i8 10, label %while.cond274
    i8 13, label %while.cond274
    i8 12, label %while.cond274
  ]

while.cond274:                                    ; preds = %land.lhs.true244, %land.lhs.true244, %land.lhs.true244, %land.lhs.true244, %land.lhs.true244, %land.lhs.true244, %while.body299
  %27 = phi i8 [ %.pre582, %while.body299 ], [ %26, %land.lhs.true244 ], [ %26, %land.lhs.true244 ], [ %26, %land.lhs.true244 ], [ %26, %land.lhs.true244 ], [ %26, %land.lhs.true244 ], [ %26, %land.lhs.true244 ]
  %t.0 = phi i8* [ %incdec.ptr300, %while.body299 ], [ %arrayidx245, %land.lhs.true244 ], [ %arrayidx245, %land.lhs.true244 ], [ %arrayidx245, %land.lhs.true244 ], [ %arrayidx245, %land.lhs.true244 ], [ %arrayidx245, %land.lhs.true244 ], [ %arrayidx245, %land.lhs.true244 ]
  switch i8 %27, label %doshell [
    i8 12, label %while.body299
    i8 32, label %while.body299
    i8 9, label %while.body299
    i8 10, label %while.body299
    i8 13, label %while.body299
    i8 0, label %land.lhs.true303
  ]

while.body299:                                    ; preds = %while.cond274, %while.cond274, %while.cond274, %while.cond274, %while.cond274
  %incdec.ptr300 = getelementptr inbounds i8* %t.0, i64 1
  %.pre582 = load i8* %incdec.ptr300, align 1, !tbaa !1
  br label %while.cond274

land.lhs.true303:                                 ; preds = %while.cond274
  %call304 = call i32 @dup2(i32 1, i32 2) #8
  %cmp305 = icmp eq i32 %call304, -1
  br i1 %cmp305, label %doshell, label %if.then307

if.then307:                                       ; preds = %land.lhs.true303
  store i8 0, i8* %arrayidx220, align 1, !tbaa !1
  br label %for.end315

doshell:                                          ; preds = %if.then188, %land.lhs.true192, %while.cond274, %land.lhs.true244, %land.lhs.true219, %land.lhs.true97, %land.lhs.true97, %land.lhs.true97, %land.lhs.true97, %land.lhs.true97, %land.lhs.true68, %land.lhs.true68, %land.lhs.true68, %land.lhs.true68, %land.lhs.true68, %land.lhs.true303, %land.lhs.true200, %land.lhs.true205, %land.lhs.true210, %land.lhs.true214, %for.end, %if.then398
  %28 = load i8** @PL_sh_path, align 8, !tbaa !3
  %call311 = call i32 (i8*, i8*, ...)* @execl(i8* %28, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str37, i64 0, i64 0), i8* %cmd.addr.0, i8* null) #8
  br label %return

for.inc313:                                       ; preds = %land.lhs.true184, %land.lhs.true168, %for.cond162
  %incdec.ptr314 = getelementptr inbounds i8* %s.5, i64 1
  %.pre581 = load i8* %incdec.ptr314, align 1, !tbaa !1
  br label %for.cond162

for.end315:                                       ; preds = %for.cond162, %if.then307, %if.then195
  %sub.ptr.lhs.cast = ptrtoint i8* %s.5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cmd.addr.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i64 %sub.ptr.sub, 2
  %add = shl i64 %div, 3
  %mul = add i64 %add, 16
  %call316 = call i8* @Perl_safesysmalloc(i64 %mul) #8
  %29 = bitcast i8* %call316 to i8**
  store i8** %29, i8*** @PL_Argv, align 8, !tbaa !3
  %conv320 = trunc i64 %sub.ptr.sub to i32
  %call321 = call i8* @Perl_savepvn(i8* %cmd.addr.0, i32 %conv320) #8
  store i8* %call321, i8** @PL_Cmd, align 8, !tbaa !3
  %30 = load i8*** @PL_Argv, align 8, !tbaa !3
  %31 = load i8* %call321, align 1, !tbaa !1
  %tobool323563 = icmp eq i8 %31, 0
  br i1 %tobool323563, label %for.end389, label %while.cond325.preheader

while.cond325.preheader:                          ; preds = %for.end315, %for.cond322.backedge
  %32 = phi i8 [ %35, %for.cond322.backedge ], [ %31, %for.end315 ]
  %s.6565 = phi i8* [ %s.6.be, %for.cond322.backedge ], [ %call321, %for.end315 ]
  %a.0564 = phi i8** [ %a.1.ph, %for.cond322.backedge ], [ %30, %for.end315 ]
  br label %while.cond325

while.cond325:                                    ; preds = %while.cond325.preheader, %while.body350
  %33 = phi i8 [ %.pre583, %while.body350 ], [ %32, %while.cond325.preheader ]
  %s.7 = phi i8* [ %incdec.ptr351, %while.body350 ], [ %s.6565, %while.cond325.preheader ]
  switch i8 %33, label %if.then354 [
    i8 12, label %while.body350
    i8 32, label %while.body350
    i8 9, label %while.body350
    i8 10, label %while.body350
    i8 13, label %while.body350
    i8 0, label %while.cond357.preheader
  ]

while.body350:                                    ; preds = %while.cond325, %while.cond325, %while.cond325, %while.cond325, %while.cond325
  %incdec.ptr351 = getelementptr inbounds i8* %s.7, i64 1
  %.pre583 = load i8* %incdec.ptr351, align 1, !tbaa !1
  br label %while.cond325

if.then354:                                       ; preds = %while.cond325
  %incdec.ptr355 = getelementptr inbounds i8** %a.0564, i64 1
  store i8* %s.7, i8** %a.0564, align 8, !tbaa !3
  br label %while.cond357.preheader

while.cond357.preheader:                          ; preds = %while.cond325, %if.then354
  %a.1.ph = phi i8** [ %incdec.ptr355, %if.then354 ], [ %a.0564, %while.cond325 ]
  br label %while.cond357

while.cond357:                                    ; preds = %while.cond357.preheader, %while.body382.critedge
  %s.8 = phi i8* [ %incdec.ptr383, %while.body382.critedge ], [ %s.7, %while.cond357.preheader ]
  %34 = load i8* %s.8, align 1, !tbaa !1
  switch i8 %34, label %while.body382.critedge [
    i8 0, label %for.cond322.backedge
    i8 9, label %if.then386
    i8 10, label %if.then386
    i8 12, label %if.then386
    i8 13, label %if.then386
    i8 32, label %if.then386
  ]

while.body382.critedge:                           ; preds = %while.cond357
  %incdec.ptr383 = getelementptr inbounds i8* %s.8, i64 1
  br label %while.cond357

if.then386:                                       ; preds = %while.cond357, %while.cond357, %while.cond357, %while.cond357, %while.cond357
  %incdec.ptr387 = getelementptr inbounds i8* %s.8, i64 1
  store i8 0, i8* %s.8, align 1, !tbaa !1
  br label %for.cond322.backedge

for.cond322.backedge:                             ; preds = %while.cond357, %if.then386
  %s.6.be = phi i8* [ %incdec.ptr387, %if.then386 ], [ %s.8, %while.cond357 ]
  %35 = load i8* %s.6.be, align 1, !tbaa !1
  %tobool323 = icmp eq i8 %35, 0
  br i1 %tobool323, label %for.end389, label %while.cond325.preheader

for.end389:                                       ; preds = %for.cond322.backedge, %for.end315
  %a.0.lcssa = phi i8** [ %30, %for.end315 ], [ %a.1.ph, %for.cond322.backedge ]
  store i8* null, i8** %a.0.lcssa, align 8, !tbaa !3
  %36 = load i8*** @PL_Argv, align 8, !tbaa !3
  %37 = load i8** %36, align 8, !tbaa !3
  %tobool391 = icmp eq i8* %37, null
  br i1 %tobool391, label %if.end434, label %if.then392

if.then392:                                       ; preds = %for.end389
  %call394 = call i32 @execvp(i8* %37, i8** %36) #8
  %call395 = call i32* @__errno_location() #8
  %38 = load i32* %call395, align 4, !tbaa !0
  %cmp396 = icmp eq i32 %38, 8
  br i1 %cmp396, label %if.then398, label %if.end399

if.then398:                                       ; preds = %if.then392
  call void @Perl_do_execfree() #7
  br label %doshell

if.end399:                                        ; preds = %if.then392
  %call400 = call i32* @__errno_location() #8
  %39 = load i32* %call400, align 4, !tbaa !0
  store i32 %39, i32* %e, align 4, !tbaa !0
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp401 = icmp eq %struct.sv* %41, null
  br i1 %cmp401, label %lor.lhs.false416, label %land.lhs.true403

land.lhs.true403:                                 ; preds = %if.end399
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings404 = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings404, align 8, !tbaa !3
  %cmp405 = icmp eq %struct.sv* %43, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp405, label %lor.lhs.false416, label %land.lhs.true407

land.lhs.true407:                                 ; preds = %land.lhs.true403
  %44 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings408 = getelementptr inbounds %struct.cop* %44, i64 0, i32 14
  %45 = load %struct.sv** %cop_warnings408, align 8, !tbaa !3
  %cmp409 = icmp eq %struct.sv* %45, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp409, label %if.then424, label %lor.lhs.false411

lor.lhs.false411:                                 ; preds = %land.lhs.true407
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings412 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings412, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %48 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %48 to i8**
  %49 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx413 = getelementptr inbounds i8* %49, i64 1
  %50 = load i8* %arrayidx413, align 1, !tbaa !1
  %and = and i8 %50, 64
  %tobool415 = icmp eq i8 %and, 0
  br i1 %tobool415, label %lor.lhs.false416, label %if.then424

lor.lhs.false416:                                 ; preds = %lor.lhs.false411, %land.lhs.true403, %if.end399
  %51 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings417 = getelementptr inbounds %struct.cop* %51, i64 0, i32 14
  %52 = load %struct.sv** %cop_warnings417, align 8, !tbaa !3
  %cmp418 = icmp eq %struct.sv* %52, null
  br i1 %cmp418, label %land.lhs.true420, label %if.end428

land.lhs.true420:                                 ; preds = %lor.lhs.false416
  %53 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and422 = and i8 %53, 1
  %tobool423 = icmp eq i8 %and422, 0
  br i1 %tobool423, label %if.end428, label %if.then424

if.then424:                                       ; preds = %lor.lhs.false411, %land.lhs.true420, %land.lhs.true407
  %54 = load i8*** @PL_Argv, align 8, !tbaa !3
  %55 = load i8** %54, align 8, !tbaa !3
  %call426 = call i32* @__errno_location() #8
  %56 = load i32* %call426, align 4, !tbaa !0
  %call427 = call i8* @strerror(i32 %56) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 7, i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* %55, i8* %call427) #8
  br label %if.end428

if.end428:                                        ; preds = %land.lhs.true420, %if.then424, %lor.lhs.false416
  %tobool429 = icmp eq i32 %do_report, 0
  br i1 %tobool429, label %if.end434, label %if.then430

if.then430:                                       ; preds = %if.end428
  %57 = bitcast i32* %e to i8*
  %call431 = call i64 @write(i32 %fd, i8* %57, i64 4) #8
  %call432 = call i32 @close(i32 %fd) #8
  br label %if.end434

if.end434:                                        ; preds = %if.end428, %for.end389, %if.then430
  call void @Perl_do_execfree() #7
  br label %return

return:                                           ; preds = %if.end434, %doshell, %if.then58
  ret i8 0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare i32 @execl(i8*, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_apply(i32 %type, %struct.sv** %mark, %struct.sv** %sp) #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %incdec.ptr161 = getelementptr inbounds %struct.sv** %mark, i64 1
  %cmp162 = icmp ugt %struct.sv** %incdec.ptr161, %sp
  br i1 %cmp162, label %if.end4, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %incdec.ptr163 = phi %struct.sv** [ %incdec.ptr, %while.cond.backedge ], [ %incdec.ptr161, %while.cond.preheader ]
  %1 = load %struct.sv** %incdec.ptr163, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %2, 57344
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %while.cond.backedge, label %land.lhs.true

while.cond.backedge:                              ; preds = %while.body, %land.lhs.true
  %incdec.ptr = getelementptr inbounds %struct.sv** %incdec.ptr163, i64 1
  %cmp = icmp ugt %struct.sv** %incdec.ptr, %sp
  br i1 %cmp, label %if.end4, label %while.body

land.lhs.true:                                    ; preds = %while.body
  %call = call signext i8 @Perl_sv_tainted(%struct.sv* %1) #8
  %tobool2 = icmp eq i8 %call, 0
  br i1 %tobool2, label %while.cond.backedge, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end4

if.end4:                                          ; preds = %while.cond.preheader, %while.cond.backedge, %if.then3, %entry
  switch i32 %type, label %sw.epilog [
    i32 267, label %sw.bb
    i32 266, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end4
  %3 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool5 = icmp ne i8 %3, 0
  %4 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool7 = icmp ne i8 %4, 0
  %or.cond = and i1 %tobool5, %tobool7
  br i1 %or.cond, label %if.then8, label %if.end10

if.then8:                                         ; preds = %sw.bb
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0)) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb
  %incdec.ptr11 = getelementptr inbounds %struct.sv** %mark, i64 1
  %cmp12 = icmp ugt %struct.sv** %incdec.ptr11, %sp
  br i1 %cmp12, label %sw.epilog, label %if.then14

if.then14:                                        ; preds = %if.end10
  %5 = load %struct.sv** %incdec.ptr11, align 8, !tbaa !3
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %sv_flags15 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags15, align 4, !tbaa !0
  %and16 = and i32 %6, 65536
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then14
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %7, i64 24
  %8 = bitcast i8* %xiv_iv to i64*
  %9 = load i64* %8, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  %call18 = call i64 @Perl_sv_2iv(%struct.sv* %5) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %call18, %cond.false ]
  %conv19 = trunc i64 %cond to i32
  %10 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool20 = icmp ne i8 %10, 0
  %11 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool22 = icmp ne i8 %11, 0
  %or.cond118 = and i1 %tobool20, %tobool22
  br i1 %or.cond118, label %if.then23, label %if.end25

if.then23:                                        ; preds = %cond.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0)) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %cond.end
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div149 = lshr exact i64 %sub.ptr.sub, 3
  %conv26 = trunc i64 %sub.ptr.div149 to i32
  %incdec.ptr28151 = getelementptr inbounds %struct.sv** %mark, i64 2
  %cmp29152 = icmp ugt %struct.sv** %incdec.ptr28151, %sp
  br i1 %cmp29152, label %sw.epilog, label %while.body31

while.body31:                                     ; preds = %if.end25, %if.end48
  %incdec.ptr28154 = phi %struct.sv** [ %incdec.ptr28, %if.end48 ], [ %incdec.ptr28151, %if.end25 ]
  %tot.0153 = phi i32 [ %tot.0.dec, %if.end48 ], [ %conv26, %if.end25 ]
  %12 = load %struct.sv** %incdec.ptr28154, align 8, !tbaa !3
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %sv_flags32 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags32, align 4, !tbaa !0
  %and33 = and i32 %13, 262144
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %cond.false39, label %cond.true36

cond.true36:                                      ; preds = %while.body31
  %sv_any37 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %14 = load i8** %sv_any37, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur to i64*
  %16 = load i64* %15, align 8, !tbaa !5
  store i64 %16, i64* %n_a, align 8, !tbaa !5
  %xpv_pv = bitcast i8* %14 to i8**
  %17 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end41

cond.false39:                                     ; preds = %while.body31
  %call40 = call i8* @Perl_sv_2pv_flags(%struct.sv* %12, i64* %n_a, i32 2) #8
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false39, %cond.true36
  %cond42 = phi i8* [ %17, %cond.true36 ], [ %call40, %cond.false39 ]
  %18 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool43 = icmp ne i8 %18, 0
  %19 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool45 = icmp ne i8 %19, 0
  %or.cond119 = and i1 %tobool43, %tobool45
  br i1 %or.cond119, label %if.then46, label %if.end48

if.then46:                                        ; preds = %cond.end41
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0)) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %cond.end41
  %call49 = call i32 @chmod(i8* %cond42, i32 %conv19) #8
  %not.tobool50 = icmp ne i32 %call49, 0
  %dec = sext i1 %not.tobool50 to i32
  %tot.0.dec = add nsw i32 %dec, %tot.0153
  %incdec.ptr28 = getelementptr inbounds %struct.sv** %incdec.ptr28154, i64 1
  %cmp29 = icmp ugt %struct.sv** %incdec.ptr28, %sp
  br i1 %cmp29, label %sw.epilog, label %while.body31

sw.bb55:                                          ; preds = %if.end4
  %20 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool56 = icmp ne i8 %20, 0
  %21 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool58 = icmp ne i8 %21, 0
  %or.cond120 = and i1 %tobool56, %tobool58
  br i1 %or.cond120, label %if.then59, label %if.end61

if.then59:                                        ; preds = %sw.bb55
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0)) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %sw.bb55
  %sub.ptr.lhs.cast62 = ptrtoint %struct.sv** %sp to i64
  %sub.ptr.rhs.cast63 = ptrtoint %struct.sv** %mark to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %sub.ptr.div65148 = lshr exact i64 %sub.ptr.sub64, 3
  %conv66 = trunc i64 %sub.ptr.div65148 to i32
  %incdec.ptr68156 = getelementptr inbounds %struct.sv** %mark, i64 1
  %cmp69157 = icmp ugt %struct.sv** %incdec.ptr68156, %sp
  br i1 %cmp69157, label %sw.epilog, label %while.body71

while.body71:                                     ; preds = %if.end61, %while.cond67.backedge
  %incdec.ptr68159 = phi %struct.sv** [ %incdec.ptr68, %while.cond67.backedge ], [ %incdec.ptr68156, %if.end61 ]
  %tot.1158 = phi i32 [ %tot.1.be, %while.cond67.backedge ], [ %conv66, %if.end61 ]
  %22 = load %struct.sv** %incdec.ptr68159, align 8, !tbaa !3
  store %struct.sv* %22, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %sv_flags72 = getelementptr inbounds %struct.sv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags72, align 4, !tbaa !0
  %and73 = and i32 %23, 262144
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %cond.false81, label %cond.true76

cond.true76:                                      ; preds = %while.body71
  %sv_any77 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %24 = load i8** %sv_any77, align 8, !tbaa !3
  %xpv_cur78 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur78 to i64*
  %26 = load i64* %25, align 8, !tbaa !5
  store i64 %26, i64* %n_a, align 8, !tbaa !5
  %xpv_pv80 = bitcast i8* %24 to i8**
  %27 = load i8** %xpv_pv80, align 8, !tbaa !3
  br label %cond.end83

cond.false81:                                     ; preds = %while.body71
  %call82 = call i8* @Perl_sv_2pv_flags(%struct.sv* %22, i64* %n_a, i32 2) #8
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false81, %cond.true76
  %cond84 = phi i8* [ %27, %cond.true76 ], [ %call82, %cond.false81 ]
  %28 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool85 = icmp ne i8 %28, 0
  %29 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool87 = icmp ne i8 %29, 0
  %or.cond121 = and i1 %tobool85, %tobool87
  br i1 %or.cond121, label %if.then88, label %if.end90

if.then88:                                        ; preds = %cond.end83
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0)) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %cond.end83
  %30 = load i32* @PL_euid, align 4, !tbaa !0
  %tobool91 = icmp eq i32 %30, 0
  %31 = load i8* @PL_unsafe, align 1, !tbaa !1
  %tobool93 = icmp eq i8 %31, 0
  %or.cond150 = and i1 %tobool91, %tobool93
  br i1 %or.cond150, label %if.else, label %if.then94

if.then94:                                        ; preds = %if.end90
  %call95 = call i32 @unlink(i8* %cond84) #8
  %not.tobool96 = icmp ne i32 %call95, 0
  %dec98 = sext i1 %not.tobool96 to i32
  %tot.1.dec98 = add nsw i32 %dec98, %tot.1158
  br label %while.cond67.backedge

if.else:                                          ; preds = %if.end90
  %call100 = call i32 @stat(i8* %cond84, %struct.stat* @PL_statbuf) #8
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then107, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.else
  %32 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !0
  %and104 = and i32 %32, 61440
  %cmp105 = icmp eq i32 %and104, 16384
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %lor.lhs.false103, %if.else
  %dec108 = add nsw i32 %tot.1158, -1
  br label %while.cond67.backedge

while.cond67.backedge:                            ; preds = %if.then107, %if.then94, %if.else109
  %tot.1.be = phi i32 [ %dec108, %if.then107 ], [ %tot.1.dec98, %if.then94 ], [ %tot.1.dec113, %if.else109 ]
  %incdec.ptr68 = getelementptr inbounds %struct.sv** %incdec.ptr68159, i64 1
  %cmp69 = icmp ugt %struct.sv** %incdec.ptr68, %sp
  br i1 %cmp69, label %sw.epilog, label %while.body71

if.else109:                                       ; preds = %lor.lhs.false103
  %call110 = call i32 @unlink(i8* %cond84) #8
  %not.tobool111 = icmp ne i32 %call110, 0
  %dec113 = sext i1 %not.tobool111 to i32
  %tot.1.dec113 = add nsw i32 %dec113, %tot.1158
  br label %while.cond67.backedge

sw.epilog:                                        ; preds = %if.end61, %while.cond67.backedge, %if.end25, %if.end48, %if.end10, %if.end4
  %tot.2 = phi i32 [ 0, %if.end4 ], [ 0, %if.end10 ], [ %conv26, %if.end25 ], [ %tot.0.dec, %if.end48 ], [ %conv66, %if.end61 ], [ %tot.1.be, %while.cond67.backedge ]
  ret i32 %tot.2
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly uwtable
define signext i8 @Perl_cando(i32 %mode, i32 %effective, %struct.stat* nocapture %statbufp) #5 {
entry:
  %tobool = icmp ne i32 %effective, 0
  %0 = load i32* @PL_euid, align 4, !tbaa !0
  %1 = load i32* @PL_uid, align 4, !tbaa !0
  %cond = select i1 %tobool, i32 %0, i32 %1
  %cmp = icmp eq i32 %cond, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 64
  br i1 %cmp1, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat* %statbufp, i64 0, i32 3
  %2 = load i32* %st_mode, align 4, !tbaa !0
  %and = and i32 %2, 73
  %tobool3 = icmp ne i32 %and, 0
  %and5 = and i32 %2, 61440
  %cmp6 = icmp eq i32 %and5, 16384
  %or.cond = or i1 %tobool3, %cmp6
  %. = zext i1 %or.cond to i8
  ret i8 %.

if.end9:                                          ; preds = %entry
  %st_uid = getelementptr inbounds %struct.stat* %statbufp, i64 0, i32 4
  %3 = load i32* %st_uid, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %3, %cond
  br i1 %cmp15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.end9
  %st_mode17 = getelementptr inbounds %struct.stat* %statbufp, i64 0, i32 3
  %4 = load i32* %st_mode17, align 4, !tbaa !0
  %and18 = and i32 %4, %mode
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.end38, label %return

if.else22:                                        ; preds = %if.end9
  %st_gid = getelementptr inbounds %struct.stat* %statbufp, i64 0, i32 5
  %5 = load i32* %st_gid, align 4, !tbaa !0
  %6 = load i32* @PL_egid, align 4, !tbaa !0
  %7 = load i32* @PL_gid, align 4, !tbaa !0
  %cond.i = select i1 %tobool, i32 %6, i32 %7
  %cmp.i = icmp eq i32 %cond.i, %5
  %st_mode25 = getelementptr inbounds %struct.stat* %statbufp, i64 0, i32 3
  %8 = load i32* %st_mode25, align 4, !tbaa !0
  br i1 %cmp.i, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.else22
  %shr = lshr i32 %mode, 3
  %and26 = and i32 %8, %shr
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %if.end38, label %return

if.else30:                                        ; preds = %if.else22
  %shr32 = lshr i32 %mode, 6
  %and33 = and i32 %8, %shr32
  %tobool34 = icmp eq i32 %and33, 0
  br i1 %tobool34, label %if.end38, label %return

if.end38:                                         ; preds = %if.then16, %if.then24, %if.else30
  br label %return

return:                                           ; preds = %if.else30, %if.then24, %if.then16, %if.then, %if.end38
  %retval.0 = phi i8 [ 0, %if.end38 ], [ 1, %if.then ], [ 1, %if.then16 ], [ 1, %if.then24 ], [ 1, %if.else30 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define signext i8 @Perl_ingroup(i32 %testgid, i32 %effective) #5 {
entry:
  %tobool = icmp ne i32 %effective, 0
  %0 = load i32* @PL_egid, align 4, !tbaa !0
  %1 = load i32* @PL_gid, align 4, !tbaa !0
  %cond = select i1 %tobool, i32 %0, i32 %1
  %cmp = icmp eq i32 %cond, %testgid
  %. = zext i1 %cmp to i8
  ret i8 %.
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_start_glob(%struct.sv* %tmpglob, %struct.io* nocapture %io) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #8
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_freesv(%struct.sv* %call) #8
  %0 = load i8** @PL_cshname, align 8, !tbaa !3
  %1 = load i32* @PL_cshlen, align 4, !tbaa !0
  %conv = sext i32 %1 to i64
  tail call void @Perl_sv_setpvn(%struct.sv* %call, i8* %0, i64 %conv) #8
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0)) #8
  tail call void @Perl_sv_catsv_flags(%struct.sv* %call, %struct.sv* %tmpglob, i32 2) #8
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([16 x i8]* @.str46, i64 0, i64 0)) #8
  %2 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %3 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !5
  %conv2 = trunc i64 %6 to i32
  %call.i = tail call signext i8 @Perl_do_openn(%struct.gv* %2, i8* %4, i32 %conv2, i32 0, i32 0, i32 0, %struct._PerlIO** null, %struct.sv** null, i32 0) #8
  %sv_any4 = getelementptr inbounds %struct.io* %io, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any4, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !3
  tail call void @Perl_pop_scope() #8
  ret %struct._PerlIO** %8
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
