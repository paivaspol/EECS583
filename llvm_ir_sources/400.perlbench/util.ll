; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.anon.4 = type { i16 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i16 }
%union.anon.7 = type { i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@PL_nomemok = external global i8
@PL_stderrgv = external global %struct.gv*
@PL_no_mem = external constant [0 x i8]
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_freq = external constant [0 x i8]
@PL_screamfirst = external global i32*
@PL_screamnext = external global i32*
@PL_fold = external constant [0 x i8]
@PL_fold_locale = external global [0 x i8]
@Perl_vmess.dgd = internal global [29 x i8] c" during global destruction.\0A\00", align 16
@PL_curcop = external global %struct.cop*
@.str1 = private unnamed_addr constant [16 x i8] c" at %s line %ld\00", align 1
@PL_last_in_gv = external global %struct.gv*
@PL_rs = external global %struct.sv*
@.str2 = private unnamed_addr constant [14 x i8] c", <%s> %s %ld\00", align 1
@PL_argvgv = external global %struct.gv*
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str4 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@PL_dirty = external global i8
@.str6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@PL_curstackinfo = external global %struct.stackinfo*
@PL_stack_base = external global %struct.sv**
@PL_curstack = external global %struct.av*
@PL_stack_max = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@PL_markstack_max = external global i32*
@.str7 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_errors = external global %struct.sv*
@PL_diehook = external global %struct.sv*
@PL_errgv = external global %struct.gv*
@PL_in_eval = external global i32
@PL_restartop = external global %struct.op*
@PL_top_env = external global %struct.jmpenv*
@.str9 = private unnamed_addr constant [16 x i8] c"panic: top_env\0A\00", align 1
@PL_Sv = external global %struct.sv*
@PL_warnhook = external global %struct.sv*
@PL_use_safe_putenv = external global i32
@environ = external global i8**
@PL_origenviron = external global i8**
@PL_tainting = external global i8
@.str10 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@PL_fdpid = external global %struct.av*
@PL_forkprocess = external global i32
@.str12 = private unnamed_addr constant [28 x i8] c"panic: kid popen errno read\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"Can't fork\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_pidstatus = external global %struct.hv*
@sig_trapped = internal unnamed_addr global i32 0, align 4
@PL_sv_undef = external global %struct.sv
@PL_sig_pending = external global i32
@.str15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PL_op_name = external global [0 x i8*]
@PL_op_desc = external global [0 x i8*]
@PL_no_modify = external constant [0 x i8]
@PL_opargs = external global [0 x i32]
@PL_ppaddr = external global [0 x %struct.op* ()*]
@PL_vtbl_sv = external global %struct.mgvtbl
@PL_vtbl_env = external global %struct.mgvtbl
@PL_vtbl_envelem = external global %struct.mgvtbl
@PL_vtbl_sig = external global %struct.mgvtbl
@PL_vtbl_sigelem = external global %struct.mgvtbl
@PL_vtbl_pack = external global %struct.mgvtbl
@PL_vtbl_packelem = external global %struct.mgvtbl
@PL_vtbl_dbline = external global %struct.mgvtbl
@PL_vtbl_isa = external global %struct.mgvtbl
@PL_vtbl_isaelem = external global %struct.mgvtbl
@PL_vtbl_arylen = external global %struct.mgvtbl
@PL_vtbl_glob = external global %struct.mgvtbl
@PL_vtbl_mglob = external global %struct.mgvtbl
@PL_vtbl_nkeys = external global %struct.mgvtbl
@PL_vtbl_taint = external global %struct.mgvtbl
@PL_vtbl_substr = external global %struct.mgvtbl
@PL_vtbl_vec = external global %struct.mgvtbl
@PL_vtbl_pos = external global %struct.mgvtbl
@PL_vtbl_bm = external global %struct.mgvtbl
@PL_vtbl_fm = external global %struct.mgvtbl
@PL_vtbl_uvar = external global %struct.mgvtbl
@PL_vtbl_defelem = external global %struct.mgvtbl
@PL_vtbl_regexp = external global %struct.mgvtbl
@PL_vtbl_regdata = external global %struct.mgvtbl
@PL_vtbl_regdatum = external global %struct.mgvtbl
@PL_vtbl_amagic = external global %struct.mgvtbl
@PL_vtbl_amagicelem = external global %struct.mgvtbl
@PL_vtbl_backref = external global %struct.mgvtbl
@PL_vtbl_utf8 = external global %struct.mgvtbl
@.str23 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str26 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@PL_dowarn = external global i8
@.str28 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str30 = private unnamed_addr constant [36 x i8] c"Filehandle %s opened only for %sput\00", align 1
@.str31 = private unnamed_addr constant [33 x i8] c"Filehandle opened only for %sput\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str33 = private unnamed_addr constant [9 x i8] c"unopened\00", align 1
@.str34 = private unnamed_addr constant [17 x i8] c"%s%s on %s %s %s\00", align 1
@.str35 = private unnamed_addr constant [49 x i8] c"\09(Are you trying to call %s%s on dirhandle %s?)\0A\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"%s%s on %s %s\00", align 1
@.str37 = private unnamed_addr constant [46 x i8] c"\09(Are you trying to call %s%s on dirhandle?)\0A\00", align 1
@.str38 = private unnamed_addr constant [19 x i8] c"panic: no strftime\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str40 = private unnamed_addr constant [64 x i8] c"Unstable directory path, current directory changed unexpectedly\00", align 1
@.str41 = private unnamed_addr constant [35 x i8] c"Unknown Unicode option letter '%c'\00", align 1
@.str42 = private unnamed_addr constant [33 x i8] c"Unknown Unicode option value %lu\00", align 1
@PL_op = external global %struct.op*
@PL_mess_sv = external global %struct.sv*
@switch.table = private unnamed_addr constant [30 x %struct.mgvtbl*] [%struct.mgvtbl* @PL_vtbl_sv, %struct.mgvtbl* @PL_vtbl_env, %struct.mgvtbl* @PL_vtbl_envelem, %struct.mgvtbl* @PL_vtbl_sig, %struct.mgvtbl* @PL_vtbl_sigelem, %struct.mgvtbl* @PL_vtbl_pack, %struct.mgvtbl* @PL_vtbl_packelem, %struct.mgvtbl* @PL_vtbl_dbline, %struct.mgvtbl* @PL_vtbl_isa, %struct.mgvtbl* @PL_vtbl_isaelem, %struct.mgvtbl* @PL_vtbl_arylen, %struct.mgvtbl* @PL_vtbl_glob, %struct.mgvtbl* @PL_vtbl_mglob, %struct.mgvtbl* @PL_vtbl_nkeys, %struct.mgvtbl* @PL_vtbl_taint, %struct.mgvtbl* @PL_vtbl_substr, %struct.mgvtbl* @PL_vtbl_vec, %struct.mgvtbl* @PL_vtbl_pos, %struct.mgvtbl* @PL_vtbl_bm, %struct.mgvtbl* @PL_vtbl_fm, %struct.mgvtbl* @PL_vtbl_uvar, %struct.mgvtbl* @PL_vtbl_defelem, %struct.mgvtbl* @PL_vtbl_regexp, %struct.mgvtbl* null, %struct.mgvtbl* @PL_vtbl_amagic, %struct.mgvtbl* @PL_vtbl_amagicelem, %struct.mgvtbl* @PL_vtbl_regdata, %struct.mgvtbl* @PL_vtbl_regdatum, %struct.mgvtbl* @PL_vtbl_backref, %struct.mgvtbl* @PL_vtbl_utf8]

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_safesysmalloc(i64 %size) #0 {
entry:
  %tobool = icmp ne i64 %size, 0
  %cond = select i1 %tobool, i64 %size, i64 1
  %call = tail call i8* @malloc(i64 %cond) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %entry
  %0 = load i8* @PL_nomemok, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %if.else3, label %return

if.else3:                                         ; preds = %if.else
  %1 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool4 = icmp eq %struct.gv* %1, null
  br i1 %tobool4, label %cond.false20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else3
  %sv_flags = getelementptr inbounds %struct.gv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %cmp5 = icmp eq i32 %and, 13
  br i1 %cmp5, label %land.lhs.true6, label %cond.false20

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %1, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_io = getelementptr inbounds %struct.gp* %4, i64 0, i32 2
  %5 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool7 = icmp eq %struct.io* %5, null
  br i1 %tobool7, label %cond.false20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %sv_any12 = getelementptr inbounds %struct.io* %5, i64 0, i32 0
  %6 = load %struct.xpvio** %sv_any12, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %6, i64 0, i32 8
  %7 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool13 = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool13, label %cond.false20, label %cond.end22

cond.false20:                                     ; preds = %land.lhs.true8, %land.lhs.true6, %if.else3, %land.lhs.true
  %call21 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end22

cond.end22:                                       ; preds = %land.lhs.true8, %cond.false20
  %cond23 = phi %struct._PerlIO** [ %call21, %cond.false20 ], [ %7, %land.lhs.true8 ]
  %call24 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond23) #8
  %call25 = tail call i64 @strlen(i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0)) #8
  %call26 = tail call i64 @write(i32 %call24, i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0), i64 %call25) #8
  tail call void @Perl_my_exit(i32 1) #8
  br label %return

return:                                           ; preds = %if.else, %entry, %cond.end22
  %retval.0 = phi i8* [ null, %cond.end22 ], [ %call, %entry ], [ null, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #2

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_safesysrealloc(i8* %where, i64 %size) #0 {
entry:
  %tobool = icmp eq i64 %size, 0
  %tobool.i = icmp eq i8* %where, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %tobool.i, label %return, label %if.then.i

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* %where) #8
  br label %return

if.end:                                           ; preds = %entry
  br i1 %tobool.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call i8* @Perl_safesysmalloc(i64 %size) #9
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = tail call i8* @realloc(i8* %where, i64 %size) #8
  %cmp = icmp eq i8* %call4, null
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %if.end3
  %0 = load i8* @PL_nomemok, align 1, !tbaa !0
  %tobool6 = icmp eq i8 %0, 0
  br i1 %tobool6, label %if.else8, label %return

if.else8:                                         ; preds = %if.else
  %1 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool9 = icmp eq %struct.gv* %1, null
  br i1 %tobool9, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else8
  %sv_flags = getelementptr inbounds %struct.gv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %cmp10 = icmp eq i32 %and, 13
  br i1 %cmp10, label %land.lhs.true11, label %cond.false

land.lhs.true11:                                  ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %1, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_io = getelementptr inbounds %struct.gp* %4, i64 0, i32 2
  %5 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool12 = icmp eq %struct.io* %5, null
  br i1 %tobool12, label %cond.false, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %sv_any17 = getelementptr inbounds %struct.io* %5, i64 0, i32 0
  %6 = load %struct.xpvio** %sv_any17, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %6, i64 0, i32 8
  %7 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool18 = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool18, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true13, %land.lhs.true11, %if.else8, %land.lhs.true
  %call24 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true13, %cond.false
  %cond = phi %struct._PerlIO** [ %call24, %cond.false ], [ %7, %land.lhs.true13 ]
  %call25 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond) #8
  %call26 = tail call i64 @strlen(i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0)) #8
  %call27 = tail call i64 @write(i32 %call25, i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0), i64 %call26) #8
  tail call void @Perl_my_exit(i32 1) #8
  br label %return

return:                                           ; preds = %if.then.i, %if.then, %if.else, %if.end3, %cond.end, %if.then2
  %retval.0 = phi i8* [ null, %cond.end ], [ %call, %if.then2 ], [ %call4, %if.end3 ], [ null, %if.else ], [ null, %if.then ], [ null, %if.then.i ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_safesysfree(i8* %where) #0 {
entry:
  %tobool = icmp eq i8* %where, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %where) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_safesyscalloc(i64 %count, i64 %size) #0 {
entry:
  %mul = mul i64 %size, %count
  %tobool = icmp ne i64 %mul, 0
  %cond = select i1 %tobool, i64 %mul, i64 1
  %call = tail call i8* @malloc(i64 %cond) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %mul, i32 1, i1 false)
  br label %return

if.else:                                          ; preds = %entry
  %0 = load i8* @PL_nomemok, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %if.else3, label %return

if.else3:                                         ; preds = %if.else
  %1 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool4 = icmp eq %struct.gv* %1, null
  br i1 %tobool4, label %cond.false20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else3
  %sv_flags = getelementptr inbounds %struct.gv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %cmp5 = icmp eq i32 %and, 13
  br i1 %cmp5, label %land.lhs.true6, label %cond.false20

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %1, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_io = getelementptr inbounds %struct.gp* %4, i64 0, i32 2
  %5 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool7 = icmp eq %struct.io* %5, null
  br i1 %tobool7, label %cond.false20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %sv_any12 = getelementptr inbounds %struct.io* %5, i64 0, i32 0
  %6 = load %struct.xpvio** %sv_any12, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %6, i64 0, i32 8
  %7 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool13 = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool13, label %cond.false20, label %cond.end22

cond.false20:                                     ; preds = %land.lhs.true8, %land.lhs.true6, %if.else3, %land.lhs.true
  %call21 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end22

cond.end22:                                       ; preds = %land.lhs.true8, %cond.false20
  %cond23 = phi %struct._PerlIO** [ %call21, %cond.false20 ], [ %7, %land.lhs.true8 ]
  %call24 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond23) #8
  %call25 = tail call i64 @strlen(i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0)) #8
  %call26 = tail call i64 @write(i32 %call24, i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0), i64 %call25) #8
  tail call void @Perl_my_exit(i32 1) #8
  br label %return

return:                                           ; preds = %if.else, %cond.end22, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %cond.end22 ], [ null, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_malloc(i64 %nbytes) #0 {
entry:
  %call = tail call i8* @malloc(i64 %nbytes) #8
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_calloc(i64 %elements, i64 %size) #0 {
entry:
  %call = tail call i8* @calloc(i64 %elements, i64 %size) #8
  ret i8* %call
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_realloc(i8* nocapture %where, i64 %nbytes) #0 {
entry:
  %call = tail call i8* @realloc(i8* %where, i64 %nbytes) #8
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_mfree(i8* nocapture %where) #0 {
entry:
  tail call void @free(i8* %where) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_delimcpy(i8* %to, i8* %toend, i8* %from, i8* %fromend, i32 %delim, i32* nocapture %retlen) #0 {
entry:
  %cmp49 = icmp ult i8* %from, %fromend
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %tolen.052 = phi i32 [ %inc26, %for.inc ], [ 0, %entry ]
  %to.addr.051 = phi i8* [ %to.addr.3, %for.inc ], [ %to, %entry ]
  %from.addr.050 = phi i8* [ %incdec.ptr25, %for.inc ], [ %from, %entry ]
  %0 = load i8* %from.addr.050, align 1, !tbaa !0
  %cmp1 = icmp eq i8 %0, 92
  br i1 %cmp1, label %if.then, label %if.else13

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i8* %from.addr.050, i64 1
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %conv3 = sext i8 %1 to i32
  %cmp4 = icmp eq i32 %conv3, %delim
  br i1 %cmp4, label %if.end19, label %if.else

if.else:                                          ; preds = %if.then
  %cmp7 = icmp ult i8* %to.addr.051, %toend
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %incdec.ptr10 = getelementptr inbounds i8* %to.addr.051, i64 1
  store i8 92, i8* %to.addr.051, align 1, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  %to.addr.1 = phi i8* [ %incdec.ptr10, %if.then9 ], [ %to.addr.051, %if.else ]
  %inc = add nsw i32 %tolen.052, 1
  br label %if.end19

if.else13:                                        ; preds = %for.body
  %conv = sext i8 %0 to i32
  %cmp15 = icmp eq i32 %conv, %delim
  br i1 %cmp15, label %for.end, label %if.end19

if.end19:                                         ; preds = %if.then, %if.else13, %if.end
  %from.addr.1 = phi i8* [ %arrayidx, %if.end ], [ %from.addr.050, %if.else13 ], [ %arrayidx, %if.then ]
  %to.addr.2 = phi i8* [ %to.addr.1, %if.end ], [ %to.addr.051, %if.else13 ], [ %to.addr.051, %if.then ]
  %tolen.1 = phi i32 [ %inc, %if.end ], [ %tolen.052, %if.else13 ], [ %tolen.052, %if.then ]
  %cmp20 = icmp ult i8* %to.addr.2, %toend
  br i1 %cmp20, label %if.then22, label %for.inc

if.then22:                                        ; preds = %if.end19
  %2 = load i8* %from.addr.1, align 1, !tbaa !0
  %incdec.ptr23 = getelementptr inbounds i8* %to.addr.2, i64 1
  store i8 %2, i8* %to.addr.2, align 1, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then22
  %to.addr.3 = phi i8* [ %incdec.ptr23, %if.then22 ], [ %to.addr.2, %if.end19 ]
  %incdec.ptr25 = getelementptr inbounds i8* %from.addr.1, i64 1
  %inc26 = add nsw i32 %tolen.1, 1
  %cmp = icmp ult i8* %incdec.ptr25, %fromend
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.else13, %entry
  %tolen.0.lcssa = phi i32 [ 0, %entry ], [ %tolen.052, %if.else13 ], [ %inc26, %for.inc ]
  %to.addr.0.lcssa = phi i8* [ %to, %entry ], [ %to.addr.051, %if.else13 ], [ %to.addr.3, %for.inc ]
  %from.addr.0.lcssa = phi i8* [ %from, %entry ], [ %from.addr.050, %if.else13 ], [ %incdec.ptr25, %for.inc ]
  %cmp27 = icmp ult i8* %to.addr.0.lcssa, %toend
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end
  store i8 0, i8* %to.addr.0.lcssa, align 1, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end
  store i32 %tolen.0.lcssa, i32* %retlen, align 4, !tbaa !3
  ret i8* %from.addr.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Perl_instr(i8* %big, i8* %little) #5 {
entry:
  %tobool = icmp eq i8* %little, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8* %little, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %1 = load i8* %big, align 1, !tbaa !0
  %tobool442 = icmp eq i8 %1, 0
  br i1 %tobool442, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %2 = phi i8 [ %3, %while.cond.backedge ], [ %1, %while.cond.preheader ]
  %big.addr.043 = phi i8* [ %incdec.ptr5, %while.cond.backedge ], [ %big, %while.cond.preheader ]
  %incdec.ptr5 = getelementptr inbounds i8* %big.addr.043, i64 1
  %cmp = icmp eq i8 %2, %0
  br i1 %cmp, label %for.cond, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end13, %while.body
  %3 = load i8* %incdec.ptr5, align 1, !tbaa !0
  %tobool4 = icmp eq i8 %3, 0
  br i1 %tobool4, label %return, label %while.body

for.cond:                                         ; preds = %while.body, %if.end13
  %little.pn = phi i8* [ %s.0, %if.end13 ], [ %little, %while.body ]
  %x.0 = phi i8* [ %incdec.ptr16, %if.end13 ], [ %incdec.ptr5, %while.body ]
  %s.0 = getelementptr inbounds i8* %little.pn, i64 1
  %4 = load i8* %s.0, align 1, !tbaa !0
  %tobool10 = icmp eq i8 %4, 0
  br i1 %tobool10, label %return, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load i8* %x.0, align 1, !tbaa !0
  %tobool11 = icmp eq i8 %5, 0
  br i1 %tobool11, label %return, label %if.end13

if.end13:                                         ; preds = %for.body
  %incdec.ptr16 = getelementptr inbounds i8* %x.0, i64 1
  %cmp18 = icmp eq i8 %4, %5
  br i1 %cmp18, label %for.cond, label %while.cond.backedge

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %for.cond, %for.body, %if.end, %entry
  %retval.0 = phi i8* [ %big, %entry ], [ %big, %if.end ], [ %big.addr.043, %for.cond ], [ null, %for.body ], [ null, %while.cond.backedge ], [ null, %while.cond.preheader ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Perl_ninstr(i8* %big, i8* %bigend, i8* %little, i8* %lend) #5 {
entry:
  %0 = load i8* %little, align 1, !tbaa !0
  %tobool = icmp ne i8 %0, 0
  %cmp = icmp ult i8* %little, %lend
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %bigend to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %big to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.lhs.cast2 = ptrtoint i8* %lend to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %little to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %cmp5 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub4
  br i1 %cmp5, label %return, label %if.end8

if.end8:                                          ; preds = %if.end
  %idx.neg = sub i64 0, %sub.ptr.sub4
  %add.ptr = getelementptr inbounds i8* %bigend, i64 %idx.neg
  %cmp1258 = icmp ult i8* %add.ptr, %big
  br i1 %cmp1258, label %return, label %while.body

while.body:                                       ; preds = %if.end8, %while.cond.backedge
  %big.addr.059 = phi i8* [ %incdec.ptr14, %while.cond.backedge ], [ %big, %if.end8 ]
  %incdec.ptr14 = getelementptr inbounds i8* %big.addr.059, i64 1
  %1 = load i8* %big.addr.059, align 1, !tbaa !0
  %cmp16 = icmp eq i8 %1, %0
  br i1 %cmp16, label %for.cond, label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.body, %while.body
  %cmp12 = icmp ugt i8* %incdec.ptr14, %add.ptr
  br i1 %cmp12, label %return, label %while.body

for.cond:                                         ; preds = %while.body, %for.body
  %little.pn = phi i8* [ %s.0, %for.body ], [ %little, %while.body ]
  %x.0 = phi i8* [ %incdec.ptr24, %for.body ], [ %incdec.ptr14, %while.body ]
  %s.0 = getelementptr inbounds i8* %little.pn, i64 1
  %cmp20 = icmp ult i8* %s.0, %lend
  br i1 %cmp20, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %2 = load i8* %s.0, align 1, !tbaa !0
  %incdec.ptr24 = getelementptr inbounds i8* %x.0, i64 1
  %3 = load i8* %x.0, align 1, !tbaa !0
  %cmp26 = icmp eq i8 %2, %3
  br i1 %cmp26, label %for.cond, label %while.cond.backedge

return:                                           ; preds = %if.end8, %while.cond.backedge, %for.cond, %if.end, %entry
  %retval.0 = phi i8* [ %big, %entry ], [ null, %if.end ], [ %big.addr.059, %for.cond ], [ null, %while.cond.backedge ], [ null, %if.end8 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Perl_rninstr(i8* %big, i8* %bigend, i8* %little, i8* %lend) #5 {
entry:
  %0 = load i8* %little, align 1, !tbaa !0
  %tobool = icmp ne i8 %0, 0
  %cmp = icmp ult i8* %little, %lend
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %lend to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %little to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %add.ptr = getelementptr inbounds i8* %bigend, i64 %sub.ptr.sub42
  %cmp246 = icmp ult i8* %add.ptr, %big
  br i1 %cmp246, label %return, label %while.body

while.body:                                       ; preds = %if.end, %while.cond.backedge
  %big.addr.047 = phi i8* [ %incdec.ptr4, %while.cond.backedge ], [ %add.ptr, %if.end ]
  %incdec.ptr4 = getelementptr inbounds i8* %big.addr.047, i64 -1
  %1 = load i8* %big.addr.047, align 1, !tbaa !0
  %cmp6 = icmp eq i8 %1, %0
  br i1 %cmp6, label %for.cond, label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.body, %while.body
  %cmp2 = icmp ult i8* %incdec.ptr4, %big
  br i1 %cmp2, label %return, label %while.body

for.cond:                                         ; preds = %while.body, %for.body
  %little.pn = phi i8* [ %s.0, %for.body ], [ %little, %while.body ]
  %big.addr.0.pn = phi i8* [ %x.0, %for.body ], [ %big.addr.047, %while.body ]
  %s.0 = getelementptr inbounds i8* %little.pn, i64 1
  %x.0 = getelementptr inbounds i8* %big.addr.0.pn, i64 1
  %cmp11 = icmp ult i8* %s.0, %lend
  br i1 %cmp11, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %2 = load i8* %s.0, align 1, !tbaa !0
  %3 = load i8* %x.0, align 1, !tbaa !0
  %cmp17 = icmp eq i8 %2, %3
  br i1 %cmp17, label %for.cond, label %while.cond.backedge

return:                                           ; preds = %if.end, %while.cond.backedge, %for.cond, %entry
  %retval.0 = phi i8* [ %bigend, %entry ], [ %big.addr.047, %for.cond ], [ null, %while.cond.backedge ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_fbm_compile(%struct.sv* %sv, i32 %flags) #0 {
entry:
  %len = alloca i64, align 8
  %and = and i32 %flags, 15
  %tobool = icmp ne i32 %and, 0
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and1 = and i32 %0, 536870912
  %tobool2 = icmp eq i32 %and1, 0
  %and4 = and i32 %0, 57344
  %tobool5 = icmp eq i32 %and4, 0
  %or.cond = or i1 %tobool2, %tobool5
  br i1 %or.cond, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.then
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i64 1, i32 2) #8
  br label %if.end10

cond.end:                                         ; preds = %if.then
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 119) #8
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i64 1, i32 2) #8
  %tobool6 = icmp eq %struct.magic* %call, null
  br i1 %tobool6, label %if.end10, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %cond.end
  %mg_len = getelementptr inbounds %struct.magic* %call, i64 0, i32 7
  %1 = load i32* %mg_len, align 4, !tbaa !3
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true7
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %mg_len, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %entry, %cond.end.thread, %cond.end, %land.lhs.true7, %if.then8
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and12 = and i32 %2, 10223616
  %cmp13 = icmp eq i32 %and12, 262144
  br i1 %cmp13, label %cond.true14, label %cond.false16

cond.true14:                                      ; preds = %if.end10
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  store i64 %5, i64* %len, align 8, !tbaa !4
  br label %cond.end18

cond.false16:                                     ; preds = %if.end10
  %call17 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #8
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false16, %cond.true14
  %6 = phi i32 [ %.pre, %cond.false16 ], [ %2, %cond.true14 ]
  %and21 = and i32 %6, 248
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end18
  %call23 = call signext i8 @Perl_sv_upgrade(%struct.sv* %sv, i32 8) #8
  br label %lor.end

lor.end:                                          ; preds = %cond.end18, %lor.rhs
  %7 = load i64* %len, align 8, !tbaa !4
  %cmp25 = icmp eq i64 %7, 0
  br i1 %cmp25, label %if.end95, label %if.end28

if.end28:                                         ; preds = %lor.end
  %cmp29 = icmp ugt i64 %7, 2
  br i1 %cmp29, label %if.then31, label %if.end28.if.end62_crit_edge

if.end28.if.end62_crit_edge:                      ; preds = %if.end28
  %sv_any64.pre = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  br label %if.end62

if.then31:                                        ; preds = %if.end28
  %cmp32 = icmp ugt i64 %7, 255
  br i1 %cmp32, label %if.end36, label %if.else

if.else:                                          ; preds = %if.then31
  %conv35 = trunc i64 %7 to i32
  %phitmp = and i32 %conv35, 255
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.else
  %mlen.0 = phi i32 [ %phitmp, %if.else ], [ 255, %if.then31 ]
  %add37 = add i64 %7, 258
  %call38 = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add37) #8
  %sv_any39 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %8 = load i8** %sv_any39, align 8, !tbaa !2
  %xpv_pv40 = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv40, align 8, !tbaa !2
  %10 = load i64* %len, align 8, !tbaa !4
  %add.ptr.sum = add i64 %10, 2
  %add.ptr41 = getelementptr inbounds i8* %9, i64 %add.ptr.sum
  %add.ptr41.sum = add i64 %10, 1
  %add.ptr42 = getelementptr inbounds i8* %9, i64 %add.ptr41.sum
  %add.ptr42.sum = add i64 %10, -1
  %11 = trunc i32 %mlen.0 to i8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr41, i8 %11, i64 256, i32 1, i1 false)
  %conv45 = trunc i32 %flags to i8
  store i8 %conv45, i8* %add.ptr42, align 1, !tbaa !0
  %idx.ext137 = zext i32 %mlen.0 to i64
  %add.ptr43.sum = sub i64 1, %idx.ext137
  %add.ptr47.sum = add i64 %add.ptr43.sum, %add.ptr42.sum
  %add.ptr48 = getelementptr inbounds i8* %9, i64 %add.ptr47.sum
  %cmp49145 = icmp slt i64 %add.ptr42.sum, %add.ptr47.sum
  br i1 %cmp49145, label %if.end62, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end36
  %add.ptr43 = getelementptr inbounds i8* %9, i64 %add.ptr42.sum
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end60
  %s.0147 = phi i8* [ %add.ptr43, %while.body.lr.ph ], [ %incdec.ptr, %if.end60 ]
  %i.0146 = phi i32 [ 0, %while.body.lr.ph ], [ %inc61, %if.end60 ]
  %12 = load i8* %s.0147, align 1, !tbaa !0
  %idxprom = zext i8 %12 to i64
  %add.ptr41.sum138 = add i64 %idxprom, %add.ptr.sum
  %arrayidx51 = getelementptr inbounds i8* %9, i64 %add.ptr41.sum138
  %13 = load i8* %arrayidx51, align 1, !tbaa !0
  %conv52 = zext i8 %13 to i32
  %cmp54 = icmp eq i32 %conv52, %mlen.0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %while.body
  %conv57 = trunc i32 %i.0146 to i8
  store i8 %conv57, i8* %arrayidx51, align 1, !tbaa !0
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %while.body
  %incdec.ptr = getelementptr inbounds i8* %s.0147, i64 -1
  %inc61 = add i32 %i.0146, 1
  %cmp49 = icmp ult i8* %incdec.ptr, %add.ptr48
  br i1 %cmp49, label %if.end62, label %while.body

if.end62:                                         ; preds = %if.end36, %if.end60, %if.end28.if.end62_crit_edge
  %sv_any64.pre-phi = phi i8** [ %sv_any64.pre, %if.end28.if.end62_crit_edge ], [ %sv_any39, %if.end60 ], [ %sv_any39, %if.end36 ]
  call void @Perl_sv_magic(%struct.sv* %sv, %struct.sv* null, i32 66, i8* null, i32 0) #8
  %14 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %14, -2147483648
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %15 = load i8** %sv_any64.pre-phi, align 8, !tbaa !2
  %xpv_pv65 = bitcast i8* %15 to i8**
  %16 = load i8** %xpv_pv65, align 8, !tbaa !2
  %17 = load i64* %len, align 8, !tbaa !4
  %cmp67140 = icmp eq i64 %17, 0
  br i1 %cmp67140, label %for.end, label %for.body

for.body:                                         ; preds = %if.end62, %for.body
  %conv66144 = phi i64 [ %conv66, %for.body ], [ 0, %if.end62 ]
  %i.1143 = phi i32 [ %inc83, %for.body ], [ 0, %if.end62 ]
  %frequency.0142 = phi i32 [ %conv73.frequency.0, %for.body ], [ 256, %if.end62 ]
  %rarest.0141 = phi i32 [ %i.1.rarest.0, %for.body ], [ 0, %if.end62 ]
  %arrayidx70 = getelementptr inbounds i8* %16, i64 %conv66144
  %18 = load i8* %arrayidx70, align 1, !tbaa !0
  %idxprom71 = zext i8 %18 to i64
  %arrayidx72 = getelementptr inbounds [0 x i8]* @PL_freq, i64 0, i64 %idxprom71
  %19 = load i8* %arrayidx72, align 1, !tbaa !0
  %conv73 = zext i8 %19 to i32
  %cmp74 = icmp ult i32 %conv73, %frequency.0142
  %i.1.rarest.0 = select i1 %cmp74, i32 %i.1143, i32 %rarest.0141
  %conv73.frequency.0 = select i1 %cmp74, i32 %conv73, i32 %frequency.0142
  %inc83 = add i32 %i.1143, 1
  %conv66 = zext i32 %inc83 to i64
  %cmp67 = icmp ult i64 %conv66, %17
  br i1 %cmp67, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end62
  %rarest.0.lcssa = phi i32 [ 0, %if.end62 ], [ %i.1.rarest.0, %for.body ]
  %idxprom84 = sext i32 %rarest.0.lcssa to i64
  %arrayidx85 = getelementptr inbounds i8* %16, i64 %idxprom84
  %20 = load i8* %arrayidx85, align 1, !tbaa !0
  %21 = getelementptr inbounds i8* %15, i64 62
  store i8 %20, i8* %21, align 1, !tbaa !0
  %conv87 = trunc i32 %rarest.0.lcssa to i16
  %22 = load i8** %sv_any64.pre-phi, align 8, !tbaa !2
  %xbm_previous = getelementptr inbounds i8* %22, i64 60
  %23 = bitcast i8* %xbm_previous to i16*
  store i16 %conv87, i16* %23, align 2, !tbaa !5
  %xbm_useful = getelementptr inbounds i8* %22, i64 56
  %24 = bitcast i8* %xbm_useful to i32*
  store i32 100, i32* %24, align 4, !tbaa !3
  br i1 %tobool, label %if.then92, label %if.end95

if.then92:                                        ; preds = %for.end
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %or94 = or i32 %25, 1073741824
  store i32 %or94, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end95

if.end95:                                         ; preds = %lor.end, %if.then92, %for.end
  ret void
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #2

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #2

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #2

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_fbm_instr(i8* %big, i8* %bigend, %struct.sv* %littlestr, i32 %flags) #0 {
entry:
  %l = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %littlestr, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %littlestr, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %l, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %littlestr, i64* %l, i32 2) #8
  %.pr = load i64* %l, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i64 [ %.pr, %cond.false ], [ %3, %cond.true ]
  %cond = phi i8* [ %call, %cond.false ], [ %4, %cond.true ]
  %and2 = and i32 %flags, 1
  %sub.ptr.lhs.cast = ptrtoint i8* %bigend to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %big to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp ult i64 %sub.ptr.sub, %5
  br i1 %cmp3, label %if.then, label %if.end20

if.then:                                          ; preds = %cond.end
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and5 = and i32 %6, 1073741824
  %tobool = icmp eq i32 %and5, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %sub = add i64 %5, -1
  %cmp9 = icmp eq i64 %sub.ptr.sub, %sub
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %cmp11 = icmp eq i64 %5, 1
  br i1 %cmp11, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %7 = load i8* %big, align 1, !tbaa !0
  %8 = load i8* %cond, align 1, !tbaa !0
  %cmp13 = icmp eq i8 %7, %8
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %call17 = call i32 @memcmp(i8* %big, i8* %cond, i64 %sub.ptr.sub) #8
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true15, %if.then, %lor.lhs.false, %land.lhs.true
  br label %return

if.end20:                                         ; preds = %cond.end
  %cmp21 = icmp ult i64 %5, 3
  br i1 %cmp21, label %if.then23, label %if.end179

if.then23:                                        ; preds = %if.end20
  switch i64 %5, label %if.end55 [
    i64 1, label %if.then26
    i64 0, label %return
  ]

if.then26:                                        ; preds = %if.then23
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and28 = and i32 %9, 1073741824
  %tobool29 = icmp ne i32 %and28, 0
  %tobool31 = icmp eq i32 %and2, 0
  %or.cond = and i1 %tobool29, %tobool31
  br i1 %or.cond, label %if.then32, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then26
  %cmp39474 = icmp ult i8* %big, %bigend
  br i1 %cmp39474, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %10 = load i8* %cond, align 1, !tbaa !0
  br label %while.body

if.then32:                                        ; preds = %if.then26
  %arrayidx = getelementptr inbounds i8* %bigend, i64 -1
  %11 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp34 = icmp eq i8 %11, 10
  %arrayidx.bigend = select i1 %cmp34, i8* %arrayidx, i8* %bigend
  br label %return

while.cond:                                       ; preds = %while.body
  %cmp39 = icmp ult i8* %incdec.ptr, %bigend
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %s.0475 = phi i8* [ %big, %while.body.lr.ph ], [ %incdec.ptr, %while.cond ]
  %12 = load i8* %s.0475, align 1, !tbaa !0
  %cmp43 = icmp eq i8 %12, %10
  %incdec.ptr = getelementptr inbounds i8* %s.0475, i64 1
  br i1 %cmp43, label %return, label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond.preheader
  %tobool49 = icmp eq i32 %and28, 0
  %.bigend = select i1 %tobool49, i8* null, i8* %bigend
  br label %return

if.end55:                                         ; preds = %if.then23
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and57 = and i32 %13, 1073741824
  %tobool58 = icmp ne i32 %and57, 0
  %tobool60 = icmp eq i32 %and2, 0
  %or.cond459 = and i1 %tobool58, %tobool60
  br i1 %or.cond459, label %if.then61, label %if.end83

if.then61:                                        ; preds = %if.end55
  %arrayidx62 = getelementptr inbounds i8* %bigend, i64 -1
  %14 = load i8* %arrayidx62, align 1, !tbaa !0
  %cmp64 = icmp eq i8 %14, 10
  br i1 %cmp64, label %land.lhs.true66, label %if.then61.if.end74_crit_edge

if.then61.if.end74_crit_edge:                     ; preds = %if.then61
  %.pre = load i8* %cond, align 1, !tbaa !0
  br label %if.end74

land.lhs.true66:                                  ; preds = %if.then61
  %arrayidx67 = getelementptr inbounds i8* %bigend, i64 -2
  %15 = load i8* %arrayidx67, align 1, !tbaa !0
  %16 = load i8* %cond, align 1, !tbaa !0
  %cmp70 = icmp eq i8 %15, %16
  br i1 %cmp70, label %return, label %if.end74

if.end74:                                         ; preds = %if.then61.if.end74_crit_edge, %land.lhs.true66
  %17 = phi i8 [ %.pre, %if.then61.if.end74_crit_edge ], [ %16, %land.lhs.true66 ]
  %cmp78 = icmp eq i8 %14, %17
  %arrayidx62. = select i1 %cmp78, i8* %arrayidx62, i8* null
  br label %return

if.end83:                                         ; preds = %if.end55
  %18 = load i8* %cond, align 1, !tbaa !0
  %arrayidx85 = getelementptr inbounds i8* %cond, i64 1
  %19 = load i8* %arrayidx85, align 1, !tbaa !0
  %add.ptr86 = getelementptr inbounds i8* %big, i64 1
  %incdec.ptr87 = getelementptr inbounds i8* %bigend, i64 -1
  %cmp90 = icmp eq i8 %18, %19
  %cmp136462 = icmp ugt i8* %add.ptr86, %incdec.ptr87
  br i1 %cmp90, label %while.cond135.preheader, label %while.cond93.preheader

while.cond93.preheader:                           ; preds = %if.end83
  br i1 %cmp136462, label %check_1char_anchor, label %while.body96

while.cond135.preheader:                          ; preds = %if.end83
  br i1 %cmp136462, label %check_1char_anchor, label %while.body138

while.body96:                                     ; preds = %while.cond93.preheader, %while.cond93.backedge
  %s.1471 = phi i8* [ %s.1.be, %while.cond93.backedge ], [ %add.ptr86, %while.cond93.preheader ]
  %20 = load i8* %s.1471, align 1, !tbaa !0
  %cmp100 = icmp eq i8 %20, %19
  br i1 %cmp100, label %if.then102, label %next_chars

if.then102:                                       ; preds = %while.body96
  %arrayidx103 = getelementptr inbounds i8* %s.1471, i64 -1
  %21 = load i8* %arrayidx103, align 1, !tbaa !0
  %cmp106 = icmp eq i8 %21, %18
  br i1 %cmp106, label %return, label %while.cond93.backedge

while.cond93.backedge:                            ; preds = %next_chars, %if.then102
  %s.1471.pn = phi i8* [ %s.1471, %if.then102 ], [ %s.2, %next_chars ]
  %s.1.be = getelementptr inbounds i8* %s.1471.pn, i64 2
  %cmp94 = icmp ugt i8* %s.1.be, %incdec.ptr87
  br i1 %cmp94, label %check_1char_anchor, label %while.body96

next_chars:                                       ; preds = %while.body96, %if.end122
  %22 = phi i8 [ %23, %if.end122 ], [ %20, %while.body96 ]
  %s.2 = phi i8* [ %arrayidx123, %if.end122 ], [ %s.1471, %while.body96 ]
  %cmp116 = icmp eq i8 %22, %18
  br i1 %cmp116, label %if.then118, label %while.cond93.backedge

if.then118:                                       ; preds = %next_chars
  %cmp119 = icmp eq i8* %s.2, %incdec.ptr87
  br i1 %cmp119, label %check_1char_anchor, label %if.end122

if.end122:                                        ; preds = %if.then118
  %arrayidx123 = getelementptr inbounds i8* %s.2, i64 1
  %23 = load i8* %arrayidx123, align 1, !tbaa !0
  %cmp126 = icmp eq i8 %23, %19
  br i1 %cmp126, label %return, label %next_chars

while.body138:                                    ; preds = %while.cond135.preheader, %while.cond135.backedge
  %s.3463 = phi i8* [ %s.3.be, %while.cond135.backedge ], [ %add.ptr86, %while.cond135.preheader ]
  %24 = load i8* %s.3463, align 1, !tbaa !0
  %cmp142 = icmp eq i8 %24, %18
  br i1 %cmp142, label %if.then144, label %if.else165

if.then144:                                       ; preds = %while.body138
  %arrayidx145 = getelementptr inbounds i8* %s.3463, i64 -1
  %25 = load i8* %arrayidx145, align 1, !tbaa !0
  %cmp148 = icmp eq i8 %25, %18
  br i1 %cmp148, label %return, label %if.end152

if.end152:                                        ; preds = %if.then144
  %cmp153 = icmp eq i8* %s.3463, %incdec.ptr87
  br i1 %cmp153, label %check_1char_anchor, label %if.end156

if.end156:                                        ; preds = %if.end152
  %arrayidx157 = getelementptr inbounds i8* %s.3463, i64 1
  %26 = load i8* %arrayidx157, align 1, !tbaa !0
  %cmp160 = icmp eq i8 %26, %18
  br i1 %cmp160, label %return, label %if.end163

if.end163:                                        ; preds = %if.end156
  %add.ptr164 = getelementptr inbounds i8* %s.3463, i64 3
  br label %while.cond135.backedge

if.else165:                                       ; preds = %while.body138
  %add.ptr166 = getelementptr inbounds i8* %s.3463, i64 2
  br label %while.cond135.backedge

while.cond135.backedge:                           ; preds = %if.else165, %if.end163
  %s.3.be = phi i8* [ %add.ptr164, %if.end163 ], [ %add.ptr166, %if.else165 ]
  %cmp136 = icmp ugt i8* %s.3.be, %incdec.ptr87
  br i1 %cmp136, label %check_1char_anchor, label %while.body138

check_1char_anchor:                               ; preds = %while.cond93.preheader, %while.cond93.backedge, %if.then118, %while.cond135.preheader, %if.end152, %while.cond135.backedge
  %tobool171 = icmp eq i32 %and57, 0
  br i1 %tobool171, label %if.end178, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %check_1char_anchor
  %27 = load i8* %incdec.ptr87, align 1, !tbaa !0
  %cmp175 = icmp eq i8 %27, %18
  br i1 %cmp175, label %return, label %if.end178

if.end178:                                        ; preds = %check_1char_anchor, %land.lhs.true172
  br label %return

if.end179:                                        ; preds = %if.end20
  %28 = load i32* %sv_flags, align 4, !tbaa !3
  %and181 = and i32 %28, 1073741824
  %tobool182 = icmp ne i32 %and181, 0
  %tobool184 = icmp eq i32 %and2, 0
  %or.cond460 = and i1 %tobool182, %tobool184
  br i1 %or.cond460, label %if.then185, label %if.end221

if.then185:                                       ; preds = %if.end179
  %idx.neg = sub i64 0, %5
  %add.ptr186 = getelementptr inbounds i8* %bigend, i64 %idx.neg
  %cmp187 = icmp ult i8* %add.ptr186, %big
  br i1 %cmp187, label %if.end206, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %if.then185
  %arrayidx190 = getelementptr inbounds i8* %bigend, i64 -1
  %29 = load i8* %arrayidx190, align 1, !tbaa !0
  %cmp192 = icmp eq i8 %29, 10
  br i1 %cmp192, label %land.lhs.true194, label %if.end206

land.lhs.true194:                                 ; preds = %land.lhs.true189
  %30 = load i8* %add.ptr186, align 1, !tbaa !0
  %31 = load i8* %cond, align 1, !tbaa !0
  %cmp197 = icmp eq i8 %30, %31
  br i1 %cmp197, label %land.lhs.true199, label %if.end206

land.lhs.true199:                                 ; preds = %land.lhs.true194
  %add.ptr186.sum458 = sub i64 1, %5
  %add.ptr200 = getelementptr inbounds i8* %bigend, i64 %add.ptr186.sum458
  %add.ptr201 = getelementptr inbounds i8* %cond, i64 1
  %sub202 = add i64 %5, -2
  %call203 = call i32 @memcmp(i8* %add.ptr200, i8* %add.ptr201, i64 %sub202) #8
  %tobool204 = icmp eq i32 %call203, 0
  br i1 %tobool204, label %return, label %if.end206

if.end206:                                        ; preds = %land.lhs.true189, %if.then185, %land.lhs.true199, %land.lhs.true194
  %add.ptr186.sum = sub i64 1, %5
  %arrayidx207 = getelementptr inbounds i8* %bigend, i64 %add.ptr186.sum
  %32 = load i8* %arrayidx207, align 1, !tbaa !0
  %33 = load i8* %cond, align 1, !tbaa !0
  %cmp210 = icmp eq i8 %32, %33
  br i1 %cmp210, label %land.lhs.true212, label %if.end220

land.lhs.true212:                                 ; preds = %if.end206
  %add.ptr186.sum457 = sub i64 2, %5
  %add.ptr213 = getelementptr inbounds i8* %bigend, i64 %add.ptr186.sum457
  %add.ptr214 = getelementptr inbounds i8* %cond, i64 1
  %sub215 = add i64 %5, -2
  %call216 = call i32 @memcmp(i8* %add.ptr213, i8* %add.ptr214, i64 %sub215) #8
  %tobool217 = icmp eq i32 %call216, 0
  br i1 %tobool217, label %return, label %if.end220

if.end220:                                        ; preds = %land.lhs.true212, %if.end206
  br label %return

if.end221:                                        ; preds = %if.end179
  %34 = and i32 %28, -2147483393
  %35 = icmp eq i32 %34, -2147483640
  br i1 %35, label %if.end264, label %if.then230

if.then230:                                       ; preds = %if.end221
  %add.ptr231 = getelementptr inbounds i8* %cond, i64 %5
  %call232 = call i8* @Perl_ninstr(i8* %big, i8* %bigend, i8* %cond, i8* %add.ptr231) #9
  %tobool233 = icmp eq i8* %call232, null
  br i1 %tobool233, label %land.lhs.true234, label %return

land.lhs.true234:                                 ; preds = %if.then230
  %tobool237 = icmp eq i32 %and181, 0
  br i1 %tobool237, label %return, label %if.then238

if.then238:                                       ; preds = %land.lhs.true234
  %add.ptr240.sum = sub i64 1, %5
  %add.ptr241 = getelementptr inbounds i8* %bigend, i64 %add.ptr240.sum
  %36 = load i8* %add.ptr241, align 1, !tbaa !0
  %37 = load i8* %cond, align 1, !tbaa !0
  %cmp244 = icmp eq i8 %36, %37
  br i1 %cmp244, label %land.lhs.true246, label %if.end253

land.lhs.true246:                                 ; preds = %if.then238
  %add.ptr241.sum = add i64 %add.ptr240.sum, 1
  %add.ptr247 = getelementptr inbounds i8* %bigend, i64 %add.ptr241.sum
  %add.ptr248 = getelementptr inbounds i8* %cond, i64 1
  %sub249 = add i64 %5, -2
  %call250 = call i32 @memcmp(i8* %add.ptr247, i8* %add.ptr248, i64 %sub249) #8
  %tobool251 = icmp eq i32 %call250, 0
  br i1 %tobool251, label %return, label %if.end253

if.end253:                                        ; preds = %land.lhs.true246, %if.then238
  br label %return

if.end264:                                        ; preds = %if.end221
  %add.ptr256.sum = add i64 %5, 2
  %dec = add i64 %5, -1
  %add.ptr265 = getelementptr inbounds i8* %big, i64 %dec
  %add.ptr266 = getelementptr inbounds i8* %cond, i64 %dec
  %cmp267 = icmp ult i8* %add.ptr265, %bigend
  br i1 %cmp267, label %top2.preheader, label %check_end

top2.preheader:                                   ; preds = %if.end264
  %conv281 = trunc i64 %dec to i32
  br label %top2

top2:                                             ; preds = %if.end293, %if.then273, %top2.preheader
  %s.4 = phi i8* [ %add.ptr265, %top2.preheader ], [ %add.ptr274, %if.then273 ], [ %add.ptr294, %if.end293 ]
  %38 = load i8* %s.4, align 1, !tbaa !0
  %idxprom = zext i8 %38 to i64
  %add.ptr257.sum456 = add i64 %add.ptr256.sum, %idxprom
  %arrayidx270 = getelementptr inbounds i8* %cond, i64 %add.ptr257.sum456
  %39 = load i8* %arrayidx270, align 1, !tbaa !0
  %tobool272 = icmp eq i8 %39, 0
  br i1 %tobool272, label %while.cond282, label %if.then273

if.then273:                                       ; preds = %top2
  %idx.ext = zext i8 %39 to i64
  %add.ptr274 = getelementptr inbounds i8* %s.4, i64 %idx.ext
  %cmp275 = icmp ult i8* %add.ptr274, %bigend
  br i1 %cmp275, label %top2, label %check_end

while.cond282:                                    ; preds = %top2, %while.body285
  %little.1 = phi i8* [ %incdec.ptr288, %while.body285 ], [ %add.ptr266, %top2 ]
  %s.5 = phi i8* [ %incdec.ptr286, %while.body285 ], [ %s.4, %top2 ]
  %tmp.0 = phi i32 [ %dec283, %while.body285 ], [ %conv281, %top2 ]
  %tobool284 = icmp eq i32 %tmp.0, 0
  br i1 %tobool284, label %return, label %while.body285

while.body285:                                    ; preds = %while.cond282
  %dec283 = add nsw i32 %tmp.0, -1
  %incdec.ptr286 = getelementptr inbounds i8* %s.5, i64 -1
  %40 = load i8* %incdec.ptr286, align 1, !tbaa !0
  %incdec.ptr288 = getelementptr inbounds i8* %little.1, i64 -1
  %41 = load i8* %incdec.ptr288, align 1, !tbaa !0
  %cmp290 = icmp eq i8 %40, %41
  br i1 %cmp290, label %while.cond282, label %if.end293

if.end293:                                        ; preds = %while.body285
  %add.ptr294 = getelementptr inbounds i8* %s.4, i64 1
  %cmp295 = icmp ult i8* %add.ptr294, %bigend
  br i1 %cmp295, label %top2, label %check_end

check_end:                                        ; preds = %if.end293, %if.then273, %if.end264
  %s.6 = phi i8* [ %add.ptr265, %if.end264 ], [ %add.ptr294, %if.end293 ], [ %add.ptr274, %if.then273 ]
  %cmp301 = icmp eq i8* %s.6, %bigend
  br i1 %cmp301, label %land.lhs.true303, label %if.end318

land.lhs.true303:                                 ; preds = %check_end
  %add.ptr257.sum = add i64 %5, 1
  %arrayidx304 = getelementptr inbounds i8* %cond, i64 %add.ptr257.sum
  %42 = load i8* %arrayidx304, align 1, !tbaa !0
  %and306 = and i8 %42, 15
  %tobool307 = icmp eq i8 %and306, 0
  br i1 %tobool307, label %if.end318, label %land.lhs.true308

land.lhs.true308:                                 ; preds = %land.lhs.true303
  %idx.neg309 = sub i64 1, %5
  %add.ptr310 = getelementptr inbounds i8* %bigend, i64 %idx.neg309
  %call313 = call i32 @memcmp(i8* %add.ptr310, i8* %cond, i64 %dec) #8
  %tobool314 = icmp eq i32 %call313, 0
  br i1 %tobool314, label %return, label %if.end318

if.end318:                                        ; preds = %land.lhs.true308, %land.lhs.true303, %check_end
  br label %return

return:                                           ; preds = %while.cond282, %while.body, %if.then102, %if.end122, %if.end156, %if.then144, %land.lhs.true308, %if.then230, %land.lhs.true234, %land.lhs.true246, %land.lhs.true212, %land.lhs.true199, %land.lhs.true172, %if.end74, %land.lhs.true66, %if.then23, %while.end, %if.then32, %land.lhs.true10, %land.lhs.true15, %if.end318, %if.end253, %if.end220, %if.end178, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ null, %if.end178 ], [ null, %if.end253 ], [ null, %if.end318 ], [ null, %if.end220 ], [ %big, %land.lhs.true15 ], [ %big, %land.lhs.true10 ], [ %arrayidx.bigend, %if.then32 ], [ %.bigend, %while.end ], [ %big, %if.then23 ], [ %arrayidx67, %land.lhs.true66 ], [ %arrayidx62., %if.end74 ], [ %incdec.ptr87, %land.lhs.true172 ], [ %add.ptr186, %land.lhs.true199 ], [ %arrayidx207, %land.lhs.true212 ], [ %add.ptr241, %land.lhs.true246 ], [ null, %land.lhs.true234 ], [ %call232, %if.then230 ], [ %add.ptr310, %land.lhs.true308 ], [ %s.3463, %if.end156 ], [ %arrayidx145, %if.then144 ], [ %s.2, %if.end122 ], [ %arrayidx103, %if.then102 ], [ %s.0475, %while.body ], [ %s.5, %while.cond282 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_screaminstr(%struct.sv* nocapture %bigstr, %struct.sv* nocapture %littlestr, i32 %start_shift, i32 %end_shift, i32* nocapture %old_posp, i32 %last) #0 {
entry:
  %0 = load i32* %old_posp, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %littlestr, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !2
  %2 = getelementptr inbounds i8* %1, i64 62
  %3 = load i8* %2, align 1, !tbaa !0
  %idxprom = zext i8 %3 to i64
  %4 = load i32** @PL_screamfirst, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %cant_find, label %if.end19

cond.false:                                       ; preds = %entry
  %idxprom2 = sext i32 %0 to i64
  %6 = load i32** @PL_screamnext, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i32* %6, i64 %idxprom2
  %7 = load i32* %arrayidx3, align 4, !tbaa !3
  %add = add nsw i32 %7, %0
  %cmp4 = icmp eq i32 %add, 0
  %sv_any5.phi.trans.insert = getelementptr inbounds %struct.sv* %littlestr, i64 0, i32 0
  %.pre = load i8** %sv_any5.phi.trans.insert, align 8, !tbaa !2
  br i1 %cmp4, label %cant_find, label %if.end19

cant_find:                                        ; preds = %cond.false, %while.body, %cond.true
  %8 = phi i8* [ %1, %cond.true ], [ %17, %while.body ], [ %.pre, %cond.false ]
  %9 = getelementptr inbounds i8* %8, i64 62
  %10 = load i8* %9, align 1, !tbaa !0
  %cmp7 = icmp eq i8 %10, 10
  br i1 %cmp7, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %cant_find
  %xbm_previous = getelementptr inbounds i8* %8, i64 60
  %11 = bitcast i8* %xbm_previous to i16*
  %12 = load i16* %11, align 2, !tbaa !5
  %conv10 = zext i16 %12 to i64
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %13 = bitcast i8* %xpv_cur to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  %sub = add i64 %14, -1
  %cmp12 = icmp eq i64 %conv10, %sub
  br i1 %cmp12, label %if.then14, label %return

if.then14:                                        ; preds = %land.lhs.true
  %xpv_pv = bitcast i8* %8 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8* %15, i64 %14
  %incdec.ptr = getelementptr inbounds i8* %15, i64 1
  %16 = load i8* %15, align 1, !tbaa !0
  br label %check_tail

if.end19:                                         ; preds = %cond.false, %cond.true
  %17 = phi i8* [ %1, %cond.true ], [ %.pre, %cond.false ]
  %pos.0 = phi i32 [ %5, %cond.true ], [ %add, %cond.false ]
  %xpv_pv21 = bitcast i8* %17 to i8**
  %18 = load i8** %xpv_pv21, align 8, !tbaa !2
  %xpv_cur23 = getelementptr inbounds i8* %17, i64 8
  %19 = bitcast i8* %xpv_cur23 to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  %add.ptr24 = getelementptr inbounds i8* %18, i64 %20
  %incdec.ptr25 = getelementptr inbounds i8* %18, i64 1
  %21 = load i8* %18, align 1, !tbaa !0
  %xbm_previous28 = getelementptr inbounds i8* %17, i64 60
  %22 = bitcast i8* %xbm_previous28 to i16*
  %23 = load i16* %22, align 2, !tbaa !5
  %conv29 = zext i16 %23 to i32
  %sv_any30 = getelementptr inbounds %struct.sv* %bigstr, i64 0, i32 0
  %24 = load i8** %sv_any30, align 8, !tbaa !2
  %xpv_pv31 = bitcast i8* %24 to i8**
  %25 = load i8** %xpv_pv31, align 8, !tbaa !2
  %xpv_cur33 = getelementptr inbounds i8* %24, i64 8
  %26 = bitcast i8* %xpv_cur33 to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %conv34193 = zext i32 %end_shift to i64
  %conv39 = zext i16 %23 to i64
  %sub38.neg = sub i64 -4294967295, %conv34193
  %sub40192 = sub i64 %sub38.neg, %20
  %sub35 = add i64 %sub40192, %conv39
  %sub41 = add i64 %sub35, %27
  %conv42 = trunc i64 %sub41 to i32
  %add43 = add nsw i32 %conv29, %start_shift
  %cmp44 = icmp sgt i32 %add43, %conv42
  br i1 %cmp44, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end19
  %28 = load i32** @PL_screamnext, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %pos.1 = phi i32 [ %add53, %while.body ], [ %pos.0, %while.cond.preheader ]
  %cmp49 = icmp slt i32 %pos.1, %add43
  br i1 %cmp49, label %while.body, label %do.body.preheader

do.body.preheader:                                ; preds = %while.cond
  %tobool85 = icmp eq i32 %last, 0
  br label %do.body

while.body:                                       ; preds = %while.cond
  %idxprom51 = sext i32 %pos.1 to i64
  %arrayidx52 = getelementptr inbounds i32* %28, i64 %idxprom51
  %29 = load i32* %arrayidx52, align 4, !tbaa !3
  %add53 = add nsw i32 %29, %pos.1
  %tobool = icmp eq i32 %add53, 0
  br i1 %tobool, label %cant_find, label %while.cond

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %30 = phi i32 [ %34, %do.cond ], [ %0, %do.body.preheader ]
  %pos.2 = phi i32 [ %add93, %do.cond ], [ %pos.1, %do.body.preheader ]
  %found.0 = phi i32 [ %found.1, %do.cond ], [ 0, %do.body.preheader ]
  %cmp57 = icmp slt i32 %pos.2, %conv42
  br i1 %cmp57, label %if.end60, label %do.end

if.end60:                                         ; preds = %do.body
  %idxprom61 = sext i32 %pos.2 to i64
  %add.ptr56.sum = sub i64 %idxprom61, %conv39
  %arrayidx62 = getelementptr inbounds i8* %25, i64 %add.ptr56.sum
  %31 = load i8* %arrayidx62, align 1, !tbaa !0
  %cmp64 = icmp eq i8 %31, %21
  br i1 %cmp64, label %if.end67, label %do.cond

if.end67:                                         ; preds = %if.end60
  %arrayidx62.sum = add i64 %add.ptr56.sum, 1
  %add.ptr70 = getelementptr inbounds i8* %25, i64 %arrayidx62.sum
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end67
  %s.0 = phi i8* [ %incdec.ptr25, %if.end67 ], [ %incdec.ptr73, %for.body ]
  %x.0 = phi i8* [ %add.ptr70, %if.end67 ], [ %incdec.ptr75, %for.body ]
  %cmp71 = icmp ult i8* %s.0, %add.ptr24
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %incdec.ptr73 = getelementptr inbounds i8* %s.0, i64 1
  %32 = load i8* %s.0, align 1, !tbaa !0
  %incdec.ptr75 = getelementptr inbounds i8* %x.0, i64 1
  %33 = load i8* %x.0, align 1, !tbaa !0
  %cmp77 = icmp eq i8 %32, %33
  br i1 %cmp77, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  %cmp82 = icmp eq i8* %s.0, %add.ptr24
  br i1 %cmp82, label %if.then84, label %do.cond

if.then84:                                        ; preds = %for.end
  store i32 %pos.2, i32* %old_posp, align 4, !tbaa !3
  br i1 %tobool85, label %return, label %do.cond

do.cond:                                          ; preds = %if.then84, %if.end60, %for.end
  %34 = phi i32 [ %30, %if.end60 ], [ %30, %for.end ], [ %pos.2, %if.then84 ]
  %found.1 = phi i32 [ %found.0, %if.end60 ], [ %found.0, %for.end ], [ 1, %if.then84 ]
  %arrayidx92 = getelementptr inbounds i32* %28, i64 %idxprom61
  %35 = load i32* %arrayidx92, align 4, !tbaa !3
  %add93 = add nsw i32 %35, %pos.2
  %tobool94 = icmp eq i32 %add93, 0
  br i1 %tobool94, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond, %do.body
  %36 = phi i32 [ %30, %do.body ], [ %34, %do.cond ]
  %found.2 = phi i32 [ %found.0, %do.body ], [ %found.1, %do.cond ]
  %tobool97 = icmp eq i32 %found.2, 0
  %or.cond = or i1 %tobool85, %tobool97
  br i1 %or.cond, label %check_tail, label %if.then98

if.then98:                                        ; preds = %do.end
  %idx.ext99 = sext i32 %36 to i64
  %add.ptr56.sum195 = sub i64 %idx.ext99, %conv39
  %add.ptr100 = getelementptr inbounds i8* %25, i64 %add.ptr56.sum195
  br label %return

check_tail:                                       ; preds = %do.end, %if.then14
  %first.0.in = phi i8 [ %16, %if.then14 ], [ %21, %do.end ]
  %little.0 = phi i8* [ %incdec.ptr, %if.then14 ], [ %incdec.ptr25, %do.end ]
  %littleend.0 = phi i8* [ %add.ptr, %if.then14 ], [ %add.ptr24, %do.end ]
  %sv_flags = getelementptr inbounds %struct.sv* %littlestr, i64 0, i32 2
  %37 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %37, 1073741824
  %tobool102 = icmp eq i32 %and, 0
  %cmp103 = icmp sgt i32 %end_shift, 0
  %or.cond196 = or i1 %tobool102, %cmp103
  br i1 %or.cond196, label %return, label %if.end106

if.end106:                                        ; preds = %check_tail
  %sv_any107 = getelementptr inbounds %struct.sv* %bigstr, i64 0, i32 0
  %38 = load i8** %sv_any107, align 8, !tbaa !2
  %xpv_pv108 = bitcast i8* %38 to i8**
  %39 = load i8** %xpv_pv108, align 8, !tbaa !2
  %xpv_cur110 = getelementptr inbounds i8* %38, i64 8
  %40 = bitcast i8* %xpv_cur110 to i64*
  %41 = load i64* %40, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %littleend.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %little.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv112 = trunc i64 %sub.ptr.sub to i32
  %cmp113 = icmp eq i32 %conv112, 0
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end106
  %add.ptr111 = getelementptr inbounds i8* %39, i64 %41
  br label %return

if.end116:                                        ; preds = %if.end106
  %sext = shl i64 %sub.ptr.sub, 32
  %idx.ext117 = ashr exact i64 %sext, 32
  %add.ptr111.sum = sub i64 %41, %idx.ext117
  %add.ptr119 = getelementptr inbounds i8* %39, i64 %add.ptr111.sum
  %42 = load i8* %add.ptr119, align 1, !tbaa !0
  %cmp121 = icmp eq i8 %42, %first.0.in
  br i1 %cmp121, label %land.lhs.true123, label %if.end132

land.lhs.true123:                                 ; preds = %if.end116
  %cmp124 = icmp eq i32 %conv112, 1
  br i1 %cmp124, label %return, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %land.lhs.true123
  %add.ptr119.sum = add i64 %add.ptr111.sum, 1
  %add.ptr127 = getelementptr inbounds i8* %39, i64 %add.ptr119.sum
  %sext194 = add i64 %sext, -4294967296
  %conv129 = ashr exact i64 %sext194, 32
  %call = tail call i32 @memcmp(i8* %add.ptr127, i8* %little.0, i64 %conv129) #8
  %tobool130 = icmp eq i32 %call, 0
  br i1 %tobool130, label %return, label %if.end132

if.end132:                                        ; preds = %lor.lhs.false126, %if.end116
  br label %return

return:                                           ; preds = %if.then84, %land.lhs.true123, %lor.lhs.false126, %check_tail, %if.end19, %cant_find, %land.lhs.true, %if.end132, %if.then115, %if.then98
  %retval.0 = phi i8* [ %add.ptr111, %if.then115 ], [ null, %if.end132 ], [ %add.ptr100, %if.then98 ], [ null, %land.lhs.true ], [ null, %cant_find ], [ null, %if.end19 ], [ null, %check_tail ], [ %add.ptr119, %lor.lhs.false126 ], [ %add.ptr119, %land.lhs.true123 ], [ %arrayidx62, %if.then84 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Perl_ibcmp(i8* nocapture %s1, i8* nocapture %s2, i32 %len) #5 {
entry:
  %tobool13 = icmp eq i32 %len, 0
  br i1 %tobool13, label %return, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %dec16.in = phi i32 [ %dec16, %if.end ], [ %len, %entry ]
  %b.015 = phi i8* [ %incdec.ptr7, %if.end ], [ %s2, %entry ]
  %a.014 = phi i8* [ %incdec.ptr, %if.end ], [ %s1, %entry ]
  %dec16 = add nsw i32 %dec16.in, -1
  %0 = load i8* %a.014, align 1, !tbaa !0
  %1 = load i8* %b.015, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, %1
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp5 = icmp eq i8 %0, %2
  br i1 %cmp5, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %incdec.ptr = getelementptr inbounds i8* %a.014, i64 1
  %incdec.ptr7 = getelementptr inbounds i8* %b.015, i64 1
  %tobool = icmp eq i32 %dec16, 0
  br i1 %tobool, label %return, label %while.body

return:                                           ; preds = %if.end, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Perl_ibcmp_locale(i8* nocapture %s1, i8* nocapture %s2, i32 %len) #5 {
entry:
  %tobool13 = icmp eq i32 %len, 0
  br i1 %tobool13, label %return, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %dec16.in = phi i32 [ %dec16, %if.end ], [ %len, %entry ]
  %b.015 = phi i8* [ %incdec.ptr7, %if.end ], [ %s2, %entry ]
  %a.014 = phi i8* [ %incdec.ptr, %if.end ], [ %s1, %entry ]
  %dec16 = add nsw i32 %dec16.in, -1
  %0 = load i8* %a.014, align 1, !tbaa !0
  %1 = load i8* %b.015, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, %1
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_fold_locale, i64 0, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp5 = icmp eq i8 %0, %2
  br i1 %cmp5, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %incdec.ptr = getelementptr inbounds i8* %a.014, i64 1
  %incdec.ptr7 = getelementptr inbounds i8* %b.015, i64 1
  %tobool = icmp eq i32 %dec16, 0
  br i1 %tobool, label %return, label %while.body

return:                                           ; preds = %if.end, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_savepv(i8* %pv) #0 {
entry:
  %tobool = icmp eq i8* %pv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %pv) #8
  %add = add i64 %call, 1
  %call1 = tail call i8* @Perl_safesysmalloc(i64 %add) #9
  %call2 = tail call i8* @strcpy(i8* %call1, i8* %pv) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call2, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_savepvn(i8* %pv, i32 %len) #0 {
entry:
  %add = add nsw i32 %len, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @Perl_safesysmalloc(i64 %conv) #9
  %tobool = icmp eq i8* %pv, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %len to i64
  %arrayidx = getelementptr inbounds i8* %call, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %pv, i64 %idxprom, i32 1, i1 false)
  br label %return

if.else:                                          ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %conv, i32 1, i1 false)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_savesharedpv(i8* %pv) #0 {
entry:
  %tobool = icmp eq i8* %pv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %pv) #8
  %add = add i64 %call, 1
  %call1 = tail call i8* @malloc(i64 %add) #8
  %tobool2 = icmp eq i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.end22

if.then3:                                         ; preds = %if.end
  %0 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool4 = icmp eq %struct.gv* %0, null
  br i1 %tobool4, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %sv_flags = getelementptr inbounds %struct.gv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true5, label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %0, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool6 = icmp eq %struct.io* %4, null
  br i1 %tobool6, label %cond.false, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %sv_any11 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %5 = load %struct.xpvio** %sv_any11, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %5, i64 0, i32 8
  %6 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool12 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool12, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true5, %if.then3, %land.lhs.true
  %call18 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true7, %cond.false
  %cond = phi %struct._PerlIO** [ %call18, %cond.false ], [ %6, %land.lhs.true7 ]
  %call19 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %cond) #8
  %call20 = tail call i64 @strlen(i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0)) #8
  %call21 = tail call i64 @write(i32 %call19, i8* getelementptr inbounds ([0 x i8]* @PL_no_mem, i64 0, i64 0), i64 %call20) #8
  tail call void @Perl_my_exit(i32 1) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end, %cond.end
  %call23 = tail call i8* @strcpy(i8* %call1, i8* %pv) #8
  br label %return

return:                                           ; preds = %entry, %if.end22
  %retval.0 = phi i8* [ %call23, %if.end22 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_savesvpv(%struct.sv* %sv) #0 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #8
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i64 [ %3, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %inc = add i64 %5, 1
  store i64 %inc, i64* %len, align 8, !tbaa !4
  %call2 = call i8* @Perl_safesysmalloc(i64 %inc) #9
  %6 = load i64* %len, align 8, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call2, i8* %cond, i64 %6, i32 1, i1 false)
  ret i8* %call2
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_form(i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %call = call i8* @Perl_vform(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  call void @llvm.va_end(i8* %arraydecay2)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_vform(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %call = tail call fastcc %struct.sv* @S_mess_alloc() #9
  %call1 = tail call i64 @strlen(i8* %pat) #8
  tail call void @Perl_sv_vsetpvfn(%struct.sv* %call, i8* %pat, i64 %call1, [1 x %struct.__va_list_tag]* %args, %struct.sv** null, i32 0, i8* null) #8
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !2
  ret i8* %1
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_mess_alloc() #0 {
entry:
  %0 = load i8* @PL_dirty, align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #8
  %call1 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv** @PL_mess_sv, align 8, !tbaa !2
  %tobool2 = icmp eq %struct.sv* %1, null
  br i1 %tobool2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @Perl_safesysmalloc(i64 16) #9
  %2 = bitcast i8* %call5 to %struct.sv*
  %call6 = tail call i8* @Perl_safesysmalloc(i64 56) #9
  tail call void @llvm.memset.p0i8.i64(i8* %call6, i8 0, i64 56, i32 1, i1 false)
  %sv_flags = getelementptr inbounds i8* %call5, i64 12
  %3 = bitcast i8* %sv_flags to i32*
  store i32 7, i32* %3, align 4, !tbaa !3
  %sv_any = bitcast i8* %call5 to i8**
  store i8* %call6, i8** %sv_any, align 8, !tbaa !2
  %sv_refcnt = getelementptr inbounds i8* %call5, i64 8
  %4 = bitcast i8* %sv_refcnt to i32*
  store i32 1073741824, i32* %4, align 4, !tbaa !3
  store %struct.sv* %2, %struct.sv** @PL_mess_sv, align 8, !tbaa !2
  br label %return

return:                                           ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi %struct.sv* [ %2, %if.end4 ], [ %call1, %if.then ], [ %1, %if.end ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_vsetpvfn(%struct.sv*, i8*, i64, [1 x %struct.__va_list_tag]*, %struct.sv**, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_mess(i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %call = call %struct.sv* @Perl_vmess(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  call void @llvm.va_end(i8* %arraydecay2)
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_vmess(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %call = tail call fastcc %struct.sv* @S_mess_alloc() #9
  %call1 = tail call i64 @strlen(i8* %pat) #8
  tail call void @Perl_sv_vsetpvfn(%struct.sv* %call, i8* %pat, i64 %call1, [1 x %struct.__va_list_tag]* %args, %struct.sv** null, i32 0, i8* null) #8
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %0, i64 8
  %1 = bitcast i8* %xpv_cur to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %tobool = icmp eq i64 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %xpv_pv = bitcast i8* %0 to i8**
  %3 = load i8** %xpv_pv, align 8, !tbaa !2
  %add.ptr.sum = add i64 %2, -1
  %add.ptr5 = getelementptr inbounds i8* %3, i64 %add.ptr.sum
  %4 = load i8* %add.ptr5, align 1, !tbaa !0
  %cmp = icmp eq i8 %4, 10
  br i1 %cmp, label %if.end93, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %op_sibling = getelementptr inbounds %struct.cop* %6, i64 0, i32 1
  %7 = load %struct.op** %op_sibling, align 8, !tbaa !2
  %call7 = tail call fastcc %struct.cop* @S_closest_cop(%struct.cop* %5, %struct.op* %7) #9
  %tobool8 = icmp eq %struct.cop* %call7, null
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then9
  %cop.0 = phi %struct.cop* [ %call7, %if.then ], [ %8, %if.then9 ]
  %cop_line = getelementptr inbounds %struct.cop* %cop.0, i64 0, i32 13
  %9 = load i32* %cop_line, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %9, 0
  br i1 %tobool10, label %if.end32, label %if.then11

if.then11:                                        ; preds = %if.end
  %cop_filegv = getelementptr inbounds %struct.cop* %cop.0, i64 0, i32 10
  %10 = load %struct.gv** %cop_filegv, align 8, !tbaa !2
  %tobool12 = icmp eq %struct.gv* %10, null
  br i1 %tobool12, label %cond.end28, label %cond.true

cond.true:                                        ; preds = %if.then11
  %sv_any14 = getelementptr inbounds %struct.gv* %10, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any14, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_sv = getelementptr inbounds %struct.gp* %12, i64 0, i32 0
  %13 = load %struct.sv** %gp_sv, align 8, !tbaa !2
  %tobool15 = icmp eq %struct.sv* %13, null
  br i1 %tobool15, label %cond.end28, label %cond.true16

cond.true16:                                      ; preds = %cond.true
  %sv_any25 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any25, align 8, !tbaa !2
  %xpv_pv26 = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv26, align 8, !tbaa !2
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true, %if.then11, %cond.true16
  %cond29 = phi i8* [ %15, %cond.true16 ], [ null, %if.then11 ], [ null, %cond.true ]
  %conv31 = zext i32 %9 to i64
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i8* %cond29, i64 %conv31) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end, %cond.end28
  %16 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !2
  %tobool33 = icmp eq %struct.gv* %16, null
  br i1 %tobool33, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32
  %17 = getelementptr inbounds %struct.gv* %16, i64 0, i32 2
  %18 = load i32* %17, align 4, !tbaa !3
  %and = and i32 %18, 255
  %cmp34 = icmp eq i32 %and, 13
  br i1 %cmp34, label %land.lhs.true36, label %if.end89

land.lhs.true36:                                  ; preds = %land.lhs.true
  %sv_any37 = getelementptr inbounds %struct.gv* %16, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any37, align 8, !tbaa !2
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp38, align 8, !tbaa !2
  %tobool39 = icmp eq %struct.gp* %20, null
  br i1 %tobool39, label %if.end89, label %cond.true40

cond.true40:                                      ; preds = %land.lhs.true36
  %gp_io = getelementptr inbounds %struct.gp* %20, i64 0, i32 2
  %21 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool43 = icmp eq %struct.io* %21, null
  br i1 %tobool43, label %if.end89, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %cond.true40
  %sv_any49 = getelementptr inbounds %struct.io* %21, i64 0, i32 0
  %22 = load %struct.xpvio** %sv_any49, align 8, !tbaa !2
  %xio_lines = getelementptr inbounds %struct.xpvio* %22, i64 0, i32 10
  %23 = load i64* %xio_lines, align 8, !tbaa !4
  %tobool50 = icmp eq i64 %23, 0
  br i1 %tobool50, label %if.end89, label %if.then51

if.then51:                                        ; preds = %land.lhs.true45
  %24 = load %struct.sv** @PL_rs, align 8, !tbaa !2
  %sv_flags52 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags52, align 4, !tbaa !3
  %and53 = and i32 %25, 118423552
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %land.end, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.then51
  %and57 = and i32 %25, 262144
  %sv_any64.phi.trans.insert = getelementptr inbounds %struct.sv* %24, i64 0, i32 0
  %.pre = load i8** %sv_any64.phi.trans.insert, align 8, !tbaa !2
  %xpv_cur65.phi.trans.insert = getelementptr inbounds i8* %.pre, i64 8
  %.phi.trans.insert = bitcast i8* %xpv_cur65.phi.trans.insert to i64*
  %.pre111 = load i64* %.phi.trans.insert, align 8, !tbaa !4
  %notlhs = icmp eq i32 %and57, 0
  %notrhs = icmp ne i64 %.pre111, 0
  %or.cond.not = or i1 %notrhs, %notlhs
  %cmp66 = icmp eq i64 %.pre111, 1
  %or.cond112 = and i1 %or.cond.not, %cmp66
  br i1 %or.cond112, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true55
  %xpv_pv69 = bitcast i8* %.pre to i8**
  %26 = load i8** %xpv_pv69, align 8, !tbaa !2
  %27 = load i8* %26, align 1, !tbaa !0
  %cmp71 = icmp eq i8 %27, 10
  %phitmp = select i1 %cmp71, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)
  br label %land.end

land.end:                                         ; preds = %land.lhs.true55, %if.then51, %land.rhs
  %28 = phi i8* [ getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), %if.then51 ], [ %phitmp, %land.rhs ], [ getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), %land.lhs.true55 ]
  %29 = load %struct.gv** @PL_argvgv, align 8, !tbaa !2
  %cmp74 = icmp eq %struct.gv* %16, %29
  br i1 %cmp74, label %cond.end79, label %cond.false77

cond.false77:                                     ; preds = %land.end
  %xgv_name = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 8
  %30 = load i8** %xgv_name, align 8, !tbaa !2
  br label %cond.end79

cond.end79:                                       ; preds = %land.end, %cond.false77
  %cond80 = phi i8* [ %30, %cond.false77 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %land.end ]
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* %cond80, i8* %28, i64 %23) #8
  br label %if.end89

if.end89:                                         ; preds = %land.lhs.true45, %cond.true40, %land.lhs.true36, %if.end32, %land.lhs.true, %cond.end79
  %31 = load i8* @PL_dirty, align 1, !tbaa !0
  %tobool91 = icmp ne i8 %31, 0
  %cond92 = select i1 %tobool91, i8* getelementptr inbounds ([29 x i8]* @Perl_vmess.dgd, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* %cond92) #8
  br label %if.end93

if.end93:                                         ; preds = %lor.lhs.false, %if.end89
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc %struct.cop* @S_closest_cop(%struct.cop* %cop, %struct.op* %o) #5 {
entry:
  %tobool = icmp eq %struct.op* %o, null
  %0 = load %struct.op** @PL_op, align 8, !tbaa !2
  %cmp = icmp eq %struct.op* %0, %o
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %op_flags = getelementptr inbounds %struct.op* %o, i64 0, i32 6
  %1 = load i8* %op_flags, align 1, !tbaa !0
  %and = and i8 %1, 4
  %tobool1 = icmp eq i8 %and, 0
  br i1 %tobool1, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.op* %o, i64 1, i32 0
  %kid.025 = load %struct.op** %2, align 8
  %tobool326 = icmp eq %struct.op* %kid.025, null
  br i1 %tobool326, label %return, label %for.body

for.cond:                                         ; preds = %if.end10
  %op_sibling = getelementptr inbounds %struct.op* %kid.028, i64 0, i32 1
  %kid.0 = load %struct.op** %op_sibling, align 8
  %tobool3 = icmp eq %struct.op* %kid.0, null
  br i1 %tobool3, label %return, label %for.body

for.body:                                         ; preds = %if.then2, %for.cond
  %kid.028 = phi %struct.op* [ %kid.0, %for.cond ], [ %kid.025, %if.then2 ]
  %cop.addr.027 = phi %struct.cop* [ %cop.addr.1, %for.cond ], [ %cop, %if.then2 ]
  %op_type = getelementptr inbounds %struct.op* %kid.028, i64 0, i32 4
  %3 = load i16* %op_type, align 2, !tbaa !5
  %cmp5 = icmp eq i16 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %op_targ = getelementptr inbounds %struct.op* %kid.028, i64 0, i32 3
  %4 = load i64* %op_targ, align 8, !tbaa !4
  %cmp7 = icmp eq i64 %4, 174
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %5 = bitcast %struct.op* %kid.028 to %struct.cop*
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %for.body
  %cop.addr.1 = phi %struct.cop* [ %5, %if.then9 ], [ %cop.addr.027, %land.lhs.true ], [ %cop.addr.027, %for.body ]
  %call = tail call fastcc %struct.cop* @S_closest_cop(%struct.cop* %cop.addr.1, %struct.op* %kid.028) #9
  %tobool11 = icmp eq %struct.cop* %call, null
  br i1 %tobool11, label %for.cond, label %return

return:                                           ; preds = %if.then2, %if.end10, %for.cond, %if.end, %entry
  %retval.0 = phi %struct.cop* [ %cop, %entry ], [ null, %if.end ], [ null, %if.then2 ], [ %call, %if.end10 ], [ null, %for.cond ]
  ret %struct.cop* %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_write_to_stderr(i8* %message, i32 %msglen) #0 {
entry:
  %0 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool = icmp eq %struct.gv* %0, null
  br i1 %tobool, label %cond.false144, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_refcnt = getelementptr inbounds %struct.gv* %0, i64 0, i32 1
  %1 = load i32* %sv_refcnt, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %land.lhs.true121, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.gv* %0, i64 0, i32 2
  %3 = load i32* %2, align 4, !tbaa !3
  %and = and i32 %3, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true4
  %sv_any = getelementptr inbounds %struct.gv* %0, i64 0, i32 0
  %4 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 7
  %5 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %tobool6 = icmp eq %struct.gp* %5, null
  br i1 %tobool6, label %if.else, label %cond.end

cond.end:                                         ; preds = %land.lhs.true5
  %gp_io = getelementptr inbounds %struct.gp* %5, i64 0, i32 2
  %6 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool9 = icmp eq %struct.io* %6, null
  br i1 %tobool9, label %if.else, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %cond.end
  %7 = bitcast %struct.io* %6 to %struct.sv*
  %8 = getelementptr inbounds %struct.io* %6, i64 0, i32 2
  %9 = load i32* %8, align 4, !tbaa !3
  %and12 = and i32 %9, 32768
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %if.else, label %cond.end16

cond.end16:                                       ; preds = %land.lhs.true10
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 113) #8
  %tobool18 = icmp eq %struct.magic* %call, null
  br i1 %tobool18, label %cond.end16.if.else_crit_edge, label %if.then

cond.end16.if.else_crit_edge:                     ; preds = %cond.end16
  %.pr.pre = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  br label %if.else

if.then:                                          ; preds = %cond.end16
  %10 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #8
  %11 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %11, i32* @PL_tmps_floor, align 4, !tbaa !3
  tail call void @Perl_save_re_context() #8
  tail call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_stderrgv to %struct.sv**)) #8
  store %struct.gv* null, %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %12 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_next = getelementptr inbounds %struct.stackinfo* %12, i64 0, i32 6
  %13 = load %struct.stackinfo** %si_next, align 8, !tbaa !2
  %tobool19 = icmp eq %struct.stackinfo* %13, null
  br i1 %tobool19, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then
  %call21 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #8
  %14 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_prev = getelementptr inbounds %struct.stackinfo* %call21, i64 0, i32 5
  store %struct.stackinfo* %14, %struct.stackinfo** %si_prev, align 8, !tbaa !2
  %15 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_next22 = getelementptr inbounds %struct.stackinfo* %15, i64 0, i32 6
  store %struct.stackinfo* %call21, %struct.stackinfo** %si_next22, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then20
  %next.0 = phi %struct.stackinfo* [ %13, %if.then ], [ %call21, %if.then20 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %16 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any23 = getelementptr inbounds %struct.av* %16, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any23, align 8, !tbaa !2
  %xav_fill = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %19 = load %struct.av** @PL_curstack, align 8, !tbaa !2
  %sv_any24 = getelementptr inbounds %struct.av* %19, i64 0, i32 0
  %20 = load %struct.xpvav** %sv_any24, align 8, !tbaa !2
  %xav_fill25 = getelementptr inbounds %struct.xpvav* %20, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill25, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 0
  %21 = load i8** %xav_array, align 8, !tbaa !2
  %22 = bitcast i8* %21 to %struct.sv**
  store %struct.sv** %22, %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %23 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any29 = getelementptr inbounds %struct.av* %23, i64 0, i32 0
  %24 = load %struct.xpvav** %sv_any29, align 8, !tbaa !2
  %xav_max = getelementptr inbounds %struct.xpvav* %24, i64 0, i32 2
  %25 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %22, i64 %25
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  %26 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any31 = getelementptr inbounds %struct.av* %26, i64 0, i32 0
  %27 = load %struct.xpvav** %sv_any31, align 8, !tbaa !2
  %xav_fill32 = getelementptr inbounds %struct.xpvav* %27, i64 0, i32 1
  %28 = load i64* %xav_fill32, align 8, !tbaa !4
  %add.ptr33 = getelementptr inbounds %struct.sv** %22, i64 %28
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %29 = load %struct.av** %si_stack, align 8, !tbaa !2
  store %struct.av* %29, %struct.av** @PL_curstack, align 8, !tbaa !2
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %30 = load i32** @PL_markstack_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32* %30, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !2
  %31 = load i32** @PL_markstack_max, align 8, !tbaa !2
  %cmp35 = icmp eq i32* %incdec.ptr, %31
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end
  tail call void @Perl_markstack_grow() #8
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %.pre184 = load i32** @PL_markstack_ptr, align 8, !tbaa !2
  %.pre185 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end
  %32 = phi %struct.sv** [ %.pre185, %if.then36 ], [ %add.ptr, %if.end ]
  %33 = phi i32* [ %.pre184, %if.then36 ], [ %incdec.ptr, %if.end ]
  %34 = phi %struct.sv** [ %.pre, %if.then36 ], [ %22, %if.end ]
  %sub.ptr.lhs.cast38 = ptrtoint %struct.sv** %add.ptr33 to i64
  %sub.ptr.rhs.cast39 = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41180 = lshr exact i64 %sub.ptr.sub40, 3
  %conv = trunc i64 %sub.ptr.div41180 to i32
  store i32 %conv, i32* %33, align 4, !tbaa !3
  %sub.ptr.lhs.cast42 = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.lhs.cast38
  %cmp46 = icmp slt i64 %sub.ptr.sub44, 16
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end37
  %call49 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr33, %struct.sv** %add.ptr33, i32 2) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end37
  %sp.0 = phi %struct.sv** [ %call49, %if.then48 ], [ %add.ptr33, %if.end37 ]
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %35 = load %struct.sv** %mg_obj, align 8, !tbaa !2
  %tobool51 = icmp eq %struct.sv* %35, null
  br i1 %tobool51, label %cond.false54, label %cond.end57

cond.false54:                                     ; preds = %if.end50
  %call55 = tail call %struct.sv* @Perl_newRV(%struct.sv* %7) #8
  %call56 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call55) #8
  br label %cond.end57

cond.end57:                                       ; preds = %if.end50, %cond.false54
  %cond58 = phi %struct.sv* [ %call56, %cond.false54 ], [ %35, %if.end50 ]
  %incdec.ptr59 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond58, %struct.sv** %incdec.ptr59, align 8, !tbaa !2
  %conv60 = sext i32 %msglen to i64
  %call61 = tail call %struct.sv* @Perl_newSVpvn(i8* %message, i64 %conv60) #8
  %call62 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call61) #8
  %incdec.ptr63 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call62, %struct.sv** %incdec.ptr63, align 8, !tbaa !2
  store %struct.sv** %incdec.ptr63, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %call64 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i32 0) #8
  %36 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %37 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_prev66 = getelementptr inbounds %struct.stackinfo* %37, i64 0, i32 5
  %38 = load %struct.stackinfo** %si_prev66, align 8, !tbaa !2
  %tobool67 = icmp eq %struct.stackinfo* %38, null
  br i1 %tobool67, label %if.then68, label %if.end97

if.then68:                                        ; preds = %cond.end57
  %39 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool69 = icmp eq %struct.gv* %39, null
  br i1 %tobool69, label %cond.false92, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.then68
  %sv_flags71 = getelementptr inbounds %struct.gv* %39, i64 0, i32 2
  %40 = load i32* %sv_flags71, align 4, !tbaa !3
  %and72 = and i32 %40, 255
  %cmp73 = icmp eq i32 %and72, 13
  br i1 %cmp73, label %land.lhs.true75, label %cond.false92

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %sv_any76 = getelementptr inbounds %struct.gv* %39, i64 0, i32 0
  %41 = load %struct.xpvgv** %sv_any76, align 8, !tbaa !2
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv* %41, i64 0, i32 7
  %42 = load %struct.gp** %xgv_gp77, align 8, !tbaa !2
  %gp_io78 = getelementptr inbounds %struct.gp* %42, i64 0, i32 2
  %43 = load %struct.io** %gp_io78, align 8, !tbaa !2
  %tobool79 = icmp eq %struct.io* %43, null
  br i1 %tobool79, label %cond.false92, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true75
  %sv_any84 = getelementptr inbounds %struct.io* %43, i64 0, i32 0
  %44 = load %struct.xpvio** %sv_any84, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %44, i64 0, i32 8
  %45 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool85 = icmp eq %struct._PerlIO** %45, null
  br i1 %tobool85, label %cond.false92, label %cond.end94

cond.false92:                                     ; preds = %land.lhs.true80, %land.lhs.true75, %if.then68, %land.lhs.true70
  %call93 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end94

cond.end94:                                       ; preds = %land.lhs.true80, %cond.false92
  %cond95 = phi %struct._PerlIO** [ %call93, %cond.false92 ], [ %45, %land.lhs.true80 ]
  %call96 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond95, i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #8
  tail call void @Perl_my_exit(i32 1) #8
  br label %if.end97

if.end97:                                         ; preds = %cond.end57, %cond.end94
  %46 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %sub.ptr.lhs.cast98 = ptrtoint %struct.sv** %36 to i64
  %sub.ptr.rhs.cast99 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %sub.ptr.div101 = ashr exact i64 %sub.ptr.sub100, 3
  %47 = load %struct.av** @PL_curstack, align 8, !tbaa !2
  %sv_any102 = getelementptr inbounds %struct.av* %47, i64 0, i32 0
  %48 = load %struct.xpvav** %sv_any102, align 8, !tbaa !2
  %xav_fill103 = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 1
  store i64 %sub.ptr.div101, i64* %xav_fill103, align 8, !tbaa !4
  %si_stack104 = getelementptr inbounds %struct.stackinfo* %38, i64 0, i32 0
  %49 = load %struct.av** %si_stack104, align 8, !tbaa !2
  %sv_any105 = getelementptr inbounds %struct.av* %49, i64 0, i32 0
  %50 = load %struct.xpvav** %sv_any105, align 8, !tbaa !2
  %xav_array106 = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 0
  %51 = load i8** %xav_array106, align 8, !tbaa !2
  %52 = bitcast i8* %51 to %struct.sv**
  store %struct.sv** %52, %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %53 = load %struct.av** %si_stack104, align 8, !tbaa !2
  %sv_any108 = getelementptr inbounds %struct.av* %53, i64 0, i32 0
  %54 = load %struct.xpvav** %sv_any108, align 8, !tbaa !2
  %xav_max109 = getelementptr inbounds %struct.xpvav* %54, i64 0, i32 2
  %55 = load i64* %xav_max109, align 8, !tbaa !4
  %add.ptr110 = getelementptr inbounds %struct.sv** %52, i64 %55
  store %struct.sv** %add.ptr110, %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  %56 = load %struct.av** %si_stack104, align 8, !tbaa !2
  %sv_any112 = getelementptr inbounds %struct.av* %56, i64 0, i32 0
  %57 = load %struct.xpvav** %sv_any112, align 8, !tbaa !2
  %xav_fill113 = getelementptr inbounds %struct.xpvav* %57, i64 0, i32 1
  %58 = load i64* %xav_fill113, align 8, !tbaa !4
  %add.ptr114 = getelementptr inbounds %struct.sv** %52, i64 %58
  store %struct.sv** %add.ptr114, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %59 = load %struct.av** %si_stack104, align 8, !tbaa !2
  store %struct.av* %59, %struct.av** @PL_curstack, align 8, !tbaa !2
  store %struct.stackinfo* %38, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %60 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %61 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp116 = icmp sgt i32 %60, %61
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end97
  tail call void @Perl_free_tmps() #8
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end97
  tail call void @Perl_pop_scope() #8
  br label %if.end151

if.else:                                          ; preds = %cond.end16.if.else_crit_edge, %land.lhs.true10, %land.lhs.true4, %land.lhs.true5, %cond.end
  %.pr = phi %struct.gv* [ %.pr.pre, %cond.end16.if.else_crit_edge ], [ %0, %land.lhs.true10 ], [ %0, %land.lhs.true4 ], [ %0, %land.lhs.true5 ], [ %0, %cond.end ]
  %tobool120 = icmp eq %struct.gv* %.pr, null
  br i1 %tobool120, label %cond.false144, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %land.lhs.true, %if.else
  %.pr188 = phi %struct.gv* [ %.pr, %if.else ], [ %0, %land.lhs.true ]
  %sv_flags122 = getelementptr inbounds %struct.gv* %.pr188, i64 0, i32 2
  %62 = load i32* %sv_flags122, align 4, !tbaa !3
  %and123 = and i32 %62, 255
  %cmp124 = icmp eq i32 %and123, 13
  br i1 %cmp124, label %land.lhs.true126, label %cond.false144

land.lhs.true126:                                 ; preds = %land.lhs.true121
  %sv_any127 = getelementptr inbounds %struct.gv* %.pr188, i64 0, i32 0
  %63 = load %struct.xpvgv** %sv_any127, align 8, !tbaa !2
  %xgv_gp128 = getelementptr inbounds %struct.xpvgv* %63, i64 0, i32 7
  %64 = load %struct.gp** %xgv_gp128, align 8, !tbaa !2
  %gp_io129 = getelementptr inbounds %struct.gp* %64, i64 0, i32 2
  %65 = load %struct.io** %gp_io129, align 8, !tbaa !2
  %tobool130 = icmp eq %struct.io* %65, null
  br i1 %tobool130, label %cond.false144, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %land.lhs.true126
  %sv_any135 = getelementptr inbounds %struct.io* %65, i64 0, i32 0
  %66 = load %struct.xpvio** %sv_any135, align 8, !tbaa !2
  %xio_ofp136 = getelementptr inbounds %struct.xpvio* %66, i64 0, i32 8
  %67 = load %struct._PerlIO*** %xio_ofp136, align 8, !tbaa !2
  %tobool137 = icmp eq %struct._PerlIO** %67, null
  br i1 %tobool137, label %cond.false144, label %cond.end146

cond.false144:                                    ; preds = %entry, %land.lhs.true131, %land.lhs.true126, %if.else, %land.lhs.true121
  %call145 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end146

cond.end146:                                      ; preds = %land.lhs.true131, %cond.false144
  %cond147 = phi %struct._PerlIO** [ %call145, %cond.false144 ], [ %67, %land.lhs.true131 ]
  %conv148 = sext i32 %msglen to i64
  %call149 = tail call i64 @Perl_PerlIO_write(%struct._PerlIO** %cond147, i8* %message, i64 %conv148) #8
  %call150 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %cond147) #8
  br label %if.end151

if.end151:                                        ; preds = %cond.end146, %if.end119
  ret void
}

; Function Attrs: optsize
declare void @Perl_push_scope() #2

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #2

; Function Attrs: optsize
declare void @Perl_save_re_context() #2

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #2

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #2

; Function Attrs: optsize
declare void @Perl_markstack_grow() #2

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #2

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_free_tmps() #2

; Function Attrs: optsize
declare void @Perl_pop_scope() #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(%struct._PerlIO**, i8*, i64) #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #2

; Function Attrs: nounwind optsize uwtable
define i8* @S_vdie_croak_common(i8* %pat, [1 x %struct.__va_list_tag]* %args, i64* %msglen, i32* nocapture %utf8) #0 {
entry:
  %tobool = icmp eq i8* %pat, null
  br i1 %tobool, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv* @Perl_vmess(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  %0 = load %struct.sv** @PL_errors, align 8, !tbaa !2
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  %tobool2 = icmp eq i64 %3, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  tail call void @Perl_sv_catsv_flags(%struct.sv* %0, %struct.sv* %call, i32 2) #8
  %4 = load %struct.sv** @PL_errors, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %5, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then3
  %sv_any4 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any4, align 8, !tbaa !2
  %xpv_cur5 = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur5 to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  store i64 %8, i64* %msglen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %6 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %call7 = tail call i8* @Perl_sv_2pv_flags(%struct.sv* %4, i64* %msglen, i32 2) #8
  %.pre = load %struct.sv** @PL_errors, align 8, !tbaa !2
  %sv_any8.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre, i64 0, i32 0
  %.pre40 = load i8** %sv_any8.phi.trans.insert, align 8, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = phi i8* [ %6, %cond.true ], [ %.pre40, %cond.false ]
  %cond = phi i8* [ %9, %cond.true ], [ %call7, %cond.false ]
  %xpv_cur9 = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur9 to i64*
  store i64 0, i64* %11, align 8, !tbaa !4
  %sv_flags22.pre = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %sv_flags10 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %12 = load i32* %sv_flags10, align 4, !tbaa !3
  %and11 = and i32 %12, 262144
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %cond.false18, label %cond.true13

cond.true13:                                      ; preds = %if.else
  %sv_any14 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %13 = load i8** %sv_any14, align 8, !tbaa !2
  %xpv_cur15 = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur15 to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  store i64 %15, i64* %msglen, align 8, !tbaa !4
  %xpv_pv17 = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv17, align 8, !tbaa !2
  br label %if.end

cond.false18:                                     ; preds = %if.else
  %call19 = tail call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %msglen, i32 2) #8
  br label %if.end

if.end:                                           ; preds = %cond.true13, %cond.false18, %cond.end
  %sv_flags22.pre-phi = phi i32* [ %sv_flags10, %cond.true13 ], [ %sv_flags10, %cond.false18 ], [ %sv_flags22.pre, %cond.end ]
  %message.0 = phi i8* [ %16, %cond.true13 ], [ %call19, %cond.false18 ], [ %cond, %cond.end ]
  %17 = load i32* %sv_flags22.pre-phi, align 4, !tbaa !3
  %and23 = and i32 %17, 536870912
  store i32 %and23, i32* %utf8, align 4, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %entry, %if.end
  %message.1 = phi i8* [ %message.0, %if.end ], [ null, %entry ]
  %18 = load %struct.sv** @PL_diehook, align 8, !tbaa !2
  %tobool26 = icmp eq %struct.sv* %18, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  %19 = load i64* %msglen, align 8, !tbaa !4
  %20 = load i32* %utf8, align 4, !tbaa !3
  tail call void @S_vdie_common(i8* %message.1, i64 %19, i32 %20) #9
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.then27
  ret i8* %message.1
}

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @S_vdie_common(i8* %message, i64 %msglen, i32 %utf8) #0 {
entry:
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %0 = load %struct.sv** @PL_diehook, align 8, !tbaa !2
  call void @Perl_push_scope() #8
  call void @Perl_save_sptr(%struct.sv** @PL_diehook) #8
  store %struct.sv* null, %struct.sv** @PL_diehook, align 8, !tbaa !2
  %call = call %struct.cv* @Perl_sv_2cv(%struct.sv* %0, %struct.hv** %stash, %struct.gv** %gv, i32 0) #8
  call void @Perl_pop_scope() #8
  %tobool = icmp eq %struct.cv* %call, null
  br i1 %tobool, label %if.end92, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.cv* %call, i64 0, i32 0
  %1 = load %struct.xpvcv** %sv_any, align 8, !tbaa !2
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %1, i64 0, i32 14
  %2 = load i64* %xcv_depth, align 8, !tbaa !4
  %tobool1 = icmp eq i64 %2, 0
  br i1 %tobool1, label %land.lhs.true2, label %if.end92

land.lhs.true2:                                   ; preds = %land.lhs.true
  %xcv_root = getelementptr inbounds %struct.xpvcv* %1, i64 0, i32 9
  %3 = load %struct.op** %xcv_root, align 8, !tbaa !2
  %tobool4 = icmp eq %struct.op* %3, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %1, i64 0, i32 10
  %4 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !2
  %tobool6 = icmp eq void (%struct.cv*)* %4, null
  br i1 %tobool6, label %if.end92, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true2
  %5 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  call void @Perl_push_scope() #8
  call void @Perl_save_re_context() #8
  %tobool7 = icmp eq i8* %message, null
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  %call9 = call %struct.sv* @Perl_newSVpvn(i8* %message, i64 %msglen) #8
  %sv_flags = getelementptr inbounds %struct.sv* %call9, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %6, %utf8
  %or11 = or i32 %or, 8388608
  store i32 %or11, i32* %sv_flags, align 4, !tbaa !3
  call void @Perl_save_freesv(%struct.sv* %call9) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct.gv** @PL_errgv, align 8, !tbaa !2
  %sv_any12 = getelementptr inbounds %struct.gv* %7, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any12, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_sv = getelementptr inbounds %struct.gp* %9, i64 0, i32 0
  %10 = load %struct.sv** %gp_sv, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %msg.0 = phi %struct.sv* [ %call9, %if.then8 ], [ %10, %if.else ]
  %11 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_next = getelementptr inbounds %struct.stackinfo* %11, i64 0, i32 6
  %12 = load %struct.stackinfo** %si_next, align 8, !tbaa !2
  %tobool13 = icmp eq %struct.stackinfo* %12, null
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  %call15 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #8
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_prev = getelementptr inbounds %struct.stackinfo* %call15, i64 0, i32 5
  store %struct.stackinfo* %13, %struct.stackinfo** %si_prev, align 8, !tbaa !2
  %14 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_next16 = getelementptr inbounds %struct.stackinfo* %14, i64 0, i32 6
  store %struct.stackinfo* %call15, %struct.stackinfo** %si_next16, align 8, !tbaa !2
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then14
  %next.0 = phi %struct.stackinfo* [ %12, %if.end ], [ %call15, %if.then14 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 8, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any18 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any18, align 8, !tbaa !2
  %xav_fill = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %18 = load %struct.av** @PL_curstack, align 8, !tbaa !2
  %sv_any19 = getelementptr inbounds %struct.av* %18, i64 0, i32 0
  %19 = load %struct.xpvav** %sv_any19, align 8, !tbaa !2
  %xav_fill20 = getelementptr inbounds %struct.xpvav* %19, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill20, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 0
  %20 = load i8** %xav_array, align 8, !tbaa !2
  %21 = bitcast i8* %20 to %struct.sv**
  store %struct.sv** %21, %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %22 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any24 = getelementptr inbounds %struct.av* %22, i64 0, i32 0
  %23 = load %struct.xpvav** %sv_any24, align 8, !tbaa !2
  %xav_max = getelementptr inbounds %struct.xpvav* %23, i64 0, i32 2
  %24 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %21, i64 %24
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  %25 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any26 = getelementptr inbounds %struct.av* %25, i64 0, i32 0
  %26 = load %struct.xpvav** %sv_any26, align 8, !tbaa !2
  %xav_fill27 = getelementptr inbounds %struct.xpvav* %26, i64 0, i32 1
  %27 = load i64* %xav_fill27, align 8, !tbaa !4
  %add.ptr28 = getelementptr inbounds %struct.sv** %21, i64 %27
  store %struct.sv** %add.ptr28, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %28 = load %struct.av** %si_stack, align 8, !tbaa !2
  store %struct.av* %28, %struct.av** @PL_curstack, align 8, !tbaa !2
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %29 = load i32** @PL_markstack_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32* %29, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !2
  %30 = load i32** @PL_markstack_max, align 8, !tbaa !2
  %cmp = icmp eq i32* %incdec.ptr, %30
  br i1 %cmp, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end17
  call void @Perl_markstack_grow() #8
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %.pre123 = load i32** @PL_markstack_ptr, align 8, !tbaa !2
  %.pre124 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end17
  %31 = phi %struct.sv** [ %.pre124, %if.then30 ], [ %add.ptr, %if.end17 ]
  %32 = phi i32* [ %.pre123, %if.then30 ], [ %incdec.ptr, %if.end17 ]
  %33 = phi %struct.sv** [ %.pre, %if.then30 ], [ %21, %if.end17 ]
  %sub.ptr.lhs.cast32 = ptrtoint %struct.sv** %add.ptr28 to i64
  %sub.ptr.rhs.cast33 = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %sub.ptr.div35122 = lshr exact i64 %sub.ptr.sub34, 3
  %conv = trunc i64 %sub.ptr.div35122 to i32
  store i32 %conv, i32* %32, align 4, !tbaa !3
  %sub.ptr.lhs.cast36 = ptrtoint %struct.sv** %31 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.lhs.cast32
  %cmp40 = icmp slt i64 %sub.ptr.sub38, 8
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end31
  %call43 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr28, %struct.sv** %add.ptr28, i32 1) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end31
  %sp.0 = phi %struct.sv** [ %call43, %if.then42 ], [ %add.ptr28, %if.end31 ]
  %incdec.ptr45 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %msg.0, %struct.sv** %incdec.ptr45, align 8, !tbaa !2
  store %struct.sv** %incdec.ptr45, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %34 = bitcast %struct.cv* %call to %struct.sv*
  %call46 = call i32 @Perl_call_sv(%struct.sv* %34, i32 2) #8
  %35 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %36 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_prev48 = getelementptr inbounds %struct.stackinfo* %36, i64 0, i32 5
  %37 = load %struct.stackinfo** %si_prev48, align 8, !tbaa !2
  %tobool49 = icmp eq %struct.stackinfo* %37, null
  br i1 %tobool49, label %if.then50, label %if.end73

if.then50:                                        ; preds = %if.end44
  %38 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool51 = icmp eq %struct.gv* %38, null
  br i1 %tobool51, label %cond.false, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.then50
  %sv_flags53 = getelementptr inbounds %struct.gv* %38, i64 0, i32 2
  %39 = load i32* %sv_flags53, align 4, !tbaa !3
  %and = and i32 %39, 255
  %cmp54 = icmp eq i32 %and, 13
  br i1 %cmp54, label %land.lhs.true56, label %cond.false

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %sv_any57 = getelementptr inbounds %struct.gv* %38, i64 0, i32 0
  %40 = load %struct.xpvgv** %sv_any57, align 8, !tbaa !2
  %xgv_gp58 = getelementptr inbounds %struct.xpvgv* %40, i64 0, i32 7
  %41 = load %struct.gp** %xgv_gp58, align 8, !tbaa !2
  %gp_io = getelementptr inbounds %struct.gp* %41, i64 0, i32 2
  %42 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool59 = icmp eq %struct.io* %42, null
  br i1 %tobool59, label %cond.false, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true56
  %sv_any64 = getelementptr inbounds %struct.io* %42, i64 0, i32 0
  %43 = load %struct.xpvio** %sv_any64, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %43, i64 0, i32 8
  %44 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool65 = icmp eq %struct._PerlIO** %44, null
  br i1 %tobool65, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true60, %land.lhs.true56, %if.then50, %land.lhs.true52
  %call71 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true60, %cond.false
  %cond = phi %struct._PerlIO** [ %call71, %cond.false ], [ %44, %land.lhs.true60 ]
  %call72 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #8
  call void @Perl_my_exit(i32 1) #8
  br label %if.end73

if.end73:                                         ; preds = %if.end44, %cond.end
  %45 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %sub.ptr.lhs.cast74 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.rhs.cast75 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  %sub.ptr.div77 = ashr exact i64 %sub.ptr.sub76, 3
  %46 = load %struct.av** @PL_curstack, align 8, !tbaa !2
  %sv_any78 = getelementptr inbounds %struct.av* %46, i64 0, i32 0
  %47 = load %struct.xpvav** %sv_any78, align 8, !tbaa !2
  %xav_fill79 = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 1
  store i64 %sub.ptr.div77, i64* %xav_fill79, align 8, !tbaa !4
  %si_stack80 = getelementptr inbounds %struct.stackinfo* %37, i64 0, i32 0
  %48 = load %struct.av** %si_stack80, align 8, !tbaa !2
  %sv_any81 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any81, align 8, !tbaa !2
  %xav_array82 = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 0
  %50 = load i8** %xav_array82, align 8, !tbaa !2
  %51 = bitcast i8* %50 to %struct.sv**
  store %struct.sv** %51, %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %52 = load %struct.av** %si_stack80, align 8, !tbaa !2
  %sv_any84 = getelementptr inbounds %struct.av* %52, i64 0, i32 0
  %53 = load %struct.xpvav** %sv_any84, align 8, !tbaa !2
  %xav_max85 = getelementptr inbounds %struct.xpvav* %53, i64 0, i32 2
  %54 = load i64* %xav_max85, align 8, !tbaa !4
  %add.ptr86 = getelementptr inbounds %struct.sv** %51, i64 %54
  store %struct.sv** %add.ptr86, %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  %55 = load %struct.av** %si_stack80, align 8, !tbaa !2
  %sv_any88 = getelementptr inbounds %struct.av* %55, i64 0, i32 0
  %56 = load %struct.xpvav** %sv_any88, align 8, !tbaa !2
  %xav_fill89 = getelementptr inbounds %struct.xpvav* %56, i64 0, i32 1
  %57 = load i64* %xav_fill89, align 8, !tbaa !4
  %add.ptr90 = getelementptr inbounds %struct.sv** %51, i64 %57
  store %struct.sv** %add.ptr90, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %58 = load %struct.av** %si_stack80, align 8, !tbaa !2
  store %struct.av* %58, %struct.av** @PL_curstack, align 8, !tbaa !2
  store %struct.stackinfo* %37, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  call void @Perl_pop_scope() #8
  br label %if.end92

if.end92:                                         ; preds = %lor.lhs.false, %land.lhs.true, %entry, %if.end73
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #2

; Function Attrs: optsize
declare void @Perl_save_freesv(%struct.sv*) #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #2

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_vdie(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %msglen = alloca i64, align 8
  %utf8 = alloca i32, align 4
  %0 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  store i32 0, i32* %utf8, align 4, !tbaa !3
  %call = call i8* @S_vdie_croak_common(i8* %pat, [1 x %struct.__va_list_tag]* %args, i64* %msglen, i32* %utf8) #9
  %1 = load i64* %msglen, align 8, !tbaa !4
  %call1 = call %struct.op* @Perl_die_where(i8* %call, i64 %1) #8
  store %struct.op* %call1, %struct.op** @PL_restartop, align 8, !tbaa !2
  %2 = load i32* %utf8, align 4, !tbaa !3
  %3 = load %struct.gv** @PL_errgv, align 8, !tbaa !2
  %sv_any = getelementptr inbounds %struct.gv* %3, i64 0, i32 0
  %4 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 7
  %5 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_sv = getelementptr inbounds %struct.gp* %5, i64 0, i32 0
  %6 = load %struct.sv** %gp_sv, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %7, %2
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %tobool = icmp ne %struct.op* %call1, null
  %tobool2 = icmp eq i32 %0, 0
  %or.cond = or i1 %tobool, %tobool2
  %8 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !2
  %je_prev = getelementptr inbounds %struct.jmpenv* %8, i64 0, i32 1
  %9 = load %struct.jmpenv** %je_prev, align 8, !tbaa !2
  %tobool3 = icmp eq %struct.jmpenv* %9, null
  br i1 %or.cond, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  br i1 %tobool3, label %if.end9, label %if.then6

if.then:                                          ; preds = %entry
  br i1 %tobool3, label %if.end, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  %arraydecay = getelementptr inbounds %struct.jmpenv* %8, i64 0, i32 0, i64 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 3) #10
  unreachable

if.end:                                           ; preds = %if.then
  %call7 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  %call8 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call7, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #8
  call void @exit(i32 1) #10
  unreachable

if.end9:                                          ; preds = %lor.lhs.false
  ret %struct.op* %call1
}

; Function Attrs: optsize
declare %struct.op* @Perl_die_where(i8*, i64) #2

; Function Attrs: noreturn optsize
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #6

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_die(i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call %struct.op* @Perl_vdie(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  call void @llvm.va_end(i8* %arraydecay1)
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_vcroak(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %msglen = alloca i64, align 8
  %utf8 = alloca i32, align 4
  store i32 0, i32* %utf8, align 4, !tbaa !3
  %call = call i8* @S_vdie_croak_common(i8* %pat, [1 x %struct.__va_list_tag]* %args, i64* %msglen, i32* %utf8) #9
  %0 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64* %msglen, align 8, !tbaa !4
  %call1 = call %struct.op* @Perl_die_where(i8* %call, i64 %1) #8
  store %struct.op* %call1, %struct.op** @PL_restartop, align 8, !tbaa !2
  %2 = load i32* %utf8, align 4, !tbaa !3
  %3 = load %struct.gv** @PL_errgv, align 8, !tbaa !2
  %sv_any = getelementptr inbounds %struct.gv* %3, i64 0, i32 0
  %4 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 7
  %5 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_sv = getelementptr inbounds %struct.gp* %5, i64 0, i32 0
  %6 = load %struct.sv** %gp_sv, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %7, %2
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %8 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !2
  %je_prev = getelementptr inbounds %struct.jmpenv* %8, i64 0, i32 1
  %9 = load %struct.jmpenv** %je_prev, align 8, !tbaa !2
  %tobool2 = icmp eq %struct.jmpenv* %9, null
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.jmpenv* %8, i64 0, i32 0, i64 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 3) #10
  unreachable

if.end:                                           ; preds = %if.then
  %call4 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  %call5 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call4, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #8
  call void @exit(i32 1) #10
  unreachable

if.else:                                          ; preds = %entry
  %tobool6 = icmp eq i8* %call, null
  br i1 %tobool6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.else
  %10 = load %struct.gv** @PL_errgv, align 8, !tbaa !2
  %sv_any8 = getelementptr inbounds %struct.gv* %10, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !2
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp9, align 8, !tbaa !2
  %gp_sv10 = getelementptr inbounds %struct.gp* %12, i64 0, i32 0
  %13 = load %struct.sv** %gp_sv10, align 8, !tbaa !2
  store %struct.sv* %13, %struct.sv** @PL_Sv, align 8, !tbaa !2
  %sv_flags11 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags11, align 4, !tbaa !3
  %and = and i32 %14, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then7
  %sv_any12 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %15 = load i8** %sv_any12, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %15, i64 8
  %16 = bitcast i8* %xpv_cur to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  store i64 %17, i64* %msglen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %15 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !2
  br label %if.end16

cond.false:                                       ; preds = %if.then7
  %call14 = call i8* @Perl_sv_2pv_flags(%struct.sv* %13, i64* %msglen, i32 2) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %cond.true, %cond.false
  %message.0 = phi i8* [ %18, %cond.true ], [ %call14, %cond.false ], [ %call, %if.else ]
  %19 = load i64* %msglen, align 8, !tbaa !4
  %conv = trunc i64 %19 to i32
  call void @Perl_write_to_stderr(i8* %message.0, i32 %conv) #9
  call void @Perl_my_failure_exit() #8
  ret void
}

; Function Attrs: optsize
declare void @Perl_my_failure_exit() #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_croak(i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  call void @Perl_vcroak(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_vwarn(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %msglen = alloca i64, align 8
  %call = call %struct.sv* @Perl_vmess(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 536870912
  %and2 = and i32 %0, 262144
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %msglen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %msglen, i32 2) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call4, %cond.false ]
  %5 = load %struct.sv** @PL_warnhook, align 8, !tbaa !2
  %tobool = icmp eq %struct.sv* %5, null
  br i1 %tobool, label %if.end103, label %if.then

if.then:                                          ; preds = %cond.end
  call void @Perl_push_scope() #8
  call void @Perl_save_sptr(%struct.sv** @PL_warnhook) #8
  store %struct.sv* null, %struct.sv** @PL_warnhook, align 8, !tbaa !2
  %call5 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %5, %struct.hv** %stash, %struct.gv** %gv, i32 0) #8
  call void @Perl_pop_scope() #8
  %tobool6 = icmp eq %struct.cv* %call5, null
  br i1 %tobool6, label %if.end103, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %sv_any7 = getelementptr inbounds %struct.cv* %call5, i64 0, i32 0
  %6 = load %struct.xpvcv** %sv_any7, align 8, !tbaa !2
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 14
  %7 = load i64* %xcv_depth, align 8, !tbaa !4
  %tobool8 = icmp eq i64 %7, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.end103

land.lhs.true9:                                   ; preds = %land.lhs.true
  %xcv_root = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 9
  %8 = load %struct.op** %xcv_root, align 8, !tbaa !2
  %tobool11 = icmp eq %struct.op* %8, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 10
  %9 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !2
  %tobool13 = icmp eq void (%struct.cv*)* %9, null
  br i1 %tobool13, label %if.end103, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  %10 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  call void @Perl_push_scope() #8
  call void @Perl_save_re_context() #8
  %11 = load i64* %msglen, align 8, !tbaa !4
  %call15 = call %struct.sv* @Perl_newSVpvn(i8* %cond, i64 %11) #8
  %sv_flags16 = getelementptr inbounds %struct.sv* %call15, i64 0, i32 2
  %12 = load i32* %sv_flags16, align 4, !tbaa !3
  %or = or i32 %and, %12
  %or18 = or i32 %or, 8388608
  store i32 %or18, i32* %sv_flags16, align 4, !tbaa !3
  call void @Perl_save_freesv(%struct.sv* %call15) #8
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_next = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 6
  %14 = load %struct.stackinfo** %si_next, align 8, !tbaa !2
  %tobool19 = icmp eq %struct.stackinfo* %14, null
  br i1 %tobool19, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then14
  %call21 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #8
  %15 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_prev = getelementptr inbounds %struct.stackinfo* %call21, i64 0, i32 5
  store %struct.stackinfo* %15, %struct.stackinfo** %si_prev, align 8, !tbaa !2
  %16 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_next22 = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 6
  store %struct.stackinfo* %call21, %struct.stackinfo** %si_next22, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then20
  %next.0 = phi %struct.stackinfo* [ %14, %if.then14 ], [ %call21, %if.then20 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 7, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %17 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any23 = getelementptr inbounds %struct.av* %17, i64 0, i32 0
  %18 = load %struct.xpvav** %sv_any23, align 8, !tbaa !2
  %xav_fill = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %19 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %20 = load %struct.av** @PL_curstack, align 8, !tbaa !2
  %sv_any24 = getelementptr inbounds %struct.av* %20, i64 0, i32 0
  %21 = load %struct.xpvav** %sv_any24, align 8, !tbaa !2
  %xav_fill25 = getelementptr inbounds %struct.xpvav* %21, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill25, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 0
  %22 = load i8** %xav_array, align 8, !tbaa !2
  %23 = bitcast i8* %22 to %struct.sv**
  store %struct.sv** %23, %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %24 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any29 = getelementptr inbounds %struct.av* %24, i64 0, i32 0
  %25 = load %struct.xpvav** %sv_any29, align 8, !tbaa !2
  %xav_max = getelementptr inbounds %struct.xpvav* %25, i64 0, i32 2
  %26 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %23, i64 %26
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  %27 = load %struct.av** %si_stack, align 8, !tbaa !2
  %sv_any31 = getelementptr inbounds %struct.av* %27, i64 0, i32 0
  %28 = load %struct.xpvav** %sv_any31, align 8, !tbaa !2
  %xav_fill32 = getelementptr inbounds %struct.xpvav* %28, i64 0, i32 1
  %29 = load i64* %xav_fill32, align 8, !tbaa !4
  %add.ptr33 = getelementptr inbounds %struct.sv** %23, i64 %29
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %30 = load %struct.av** %si_stack, align 8, !tbaa !2
  store %struct.av* %30, %struct.av** @PL_curstack, align 8, !tbaa !2
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %31 = load i32** @PL_markstack_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32* %31, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !2
  %32 = load i32** @PL_markstack_max, align 8, !tbaa !2
  %cmp35 = icmp eq i32* %incdec.ptr, %32
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end
  call void @Perl_markstack_grow() #8
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %.pre138 = load i32** @PL_markstack_ptr, align 8, !tbaa !2
  %.pre139 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end
  %33 = phi %struct.sv** [ %.pre139, %if.then36 ], [ %add.ptr, %if.end ]
  %34 = phi i32* [ %.pre138, %if.then36 ], [ %incdec.ptr, %if.end ]
  %35 = phi %struct.sv** [ %.pre, %if.then36 ], [ %23, %if.end ]
  %sub.ptr.lhs.cast38 = ptrtoint %struct.sv** %add.ptr33 to i64
  %sub.ptr.rhs.cast39 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41137 = lshr exact i64 %sub.ptr.sub40, 3
  %conv = trunc i64 %sub.ptr.div41137 to i32
  store i32 %conv, i32* %34, align 4, !tbaa !3
  %sub.ptr.lhs.cast42 = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.lhs.cast38
  %cmp46 = icmp slt i64 %sub.ptr.sub44, 8
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end37
  %call49 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr33, %struct.sv** %add.ptr33, i32 1) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end37
  %sp.0 = phi %struct.sv** [ %call49, %if.then48 ], [ %add.ptr33, %if.end37 ]
  %incdec.ptr51 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call15, %struct.sv** %incdec.ptr51, align 8, !tbaa !2
  store %struct.sv** %incdec.ptr51, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %36 = bitcast %struct.cv* %call5 to %struct.sv*
  %call52 = call i32 @Perl_call_sv(%struct.sv* %36, i32 2) #8
  %37 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %38 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  %si_prev54 = getelementptr inbounds %struct.stackinfo* %38, i64 0, i32 5
  %39 = load %struct.stackinfo** %si_prev54, align 8, !tbaa !2
  %tobool55 = icmp eq %struct.stackinfo* %39, null
  br i1 %tobool55, label %if.then56, label %if.end83

if.then56:                                        ; preds = %if.end50
  %40 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !2
  %tobool57 = icmp eq %struct.gv* %40, null
  br i1 %tobool57, label %cond.false78, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.then56
  %sv_flags59 = getelementptr inbounds %struct.gv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags59, align 4, !tbaa !3
  %and60 = and i32 %41, 255
  %cmp61 = icmp eq i32 %and60, 13
  br i1 %cmp61, label %land.lhs.true63, label %cond.false78

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %sv_any64 = getelementptr inbounds %struct.gv* %40, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any64, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_io = getelementptr inbounds %struct.gp* %43, i64 0, i32 2
  %44 = load %struct.io** %gp_io, align 8, !tbaa !2
  %tobool65 = icmp eq %struct.io* %44, null
  br i1 %tobool65, label %cond.false78, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %sv_any70 = getelementptr inbounds %struct.io* %44, i64 0, i32 0
  %45 = load %struct.xpvio** %sv_any70, align 8, !tbaa !2
  %xio_ofp = getelementptr inbounds %struct.xpvio* %45, i64 0, i32 8
  %46 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !2
  %tobool71 = icmp eq %struct._PerlIO** %46, null
  br i1 %tobool71, label %cond.false78, label %cond.end80

cond.false78:                                     ; preds = %land.lhs.true66, %land.lhs.true63, %if.then56, %land.lhs.true58
  %call79 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  br label %cond.end80

cond.end80:                                       ; preds = %land.lhs.true66, %cond.false78
  %cond81 = phi %struct._PerlIO** [ %call79, %cond.false78 ], [ %46, %land.lhs.true66 ]
  %call82 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond81, i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #8
  call void @Perl_my_exit(i32 1) #8
  br label %if.end83

if.end83:                                         ; preds = %if.end50, %cond.end80
  %47 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %sub.ptr.lhs.cast84 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.rhs.cast85 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %sub.ptr.div87 = ashr exact i64 %sub.ptr.sub86, 3
  %48 = load %struct.av** @PL_curstack, align 8, !tbaa !2
  %sv_any88 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any88, align 8, !tbaa !2
  %xav_fill89 = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 1
  store i64 %sub.ptr.div87, i64* %xav_fill89, align 8, !tbaa !4
  %si_stack90 = getelementptr inbounds %struct.stackinfo* %39, i64 0, i32 0
  %50 = load %struct.av** %si_stack90, align 8, !tbaa !2
  %sv_any91 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any91, align 8, !tbaa !2
  %xav_array92 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 0
  %52 = load i8** %xav_array92, align 8, !tbaa !2
  %53 = bitcast i8* %52 to %struct.sv**
  store %struct.sv** %53, %struct.sv*** @PL_stack_base, align 8, !tbaa !2
  %54 = load %struct.av** %si_stack90, align 8, !tbaa !2
  %sv_any94 = getelementptr inbounds %struct.av* %54, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any94, align 8, !tbaa !2
  %xav_max95 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 2
  %56 = load i64* %xav_max95, align 8, !tbaa !4
  %add.ptr96 = getelementptr inbounds %struct.sv** %53, i64 %56
  store %struct.sv** %add.ptr96, %struct.sv*** @PL_stack_max, align 8, !tbaa !2
  %57 = load %struct.av** %si_stack90, align 8, !tbaa !2
  %sv_any98 = getelementptr inbounds %struct.av* %57, i64 0, i32 0
  %58 = load %struct.xpvav** %sv_any98, align 8, !tbaa !2
  %xav_fill99 = getelementptr inbounds %struct.xpvav* %58, i64 0, i32 1
  %59 = load i64* %xav_fill99, align 8, !tbaa !4
  %add.ptr100 = getelementptr inbounds %struct.sv** %53, i64 %59
  store %struct.sv** %add.ptr100, %struct.sv*** @PL_stack_sp, align 8, !tbaa !2
  %60 = load %struct.av** %si_stack90, align 8, !tbaa !2
  store %struct.av* %60, %struct.av** @PL_curstack, align 8, !tbaa !2
  store %struct.stackinfo* %39, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !2
  call void @Perl_pop_scope() #8
  br label %return

if.end103:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.then, %cond.end
  %61 = load i64* %msglen, align 8, !tbaa !4
  %conv104 = trunc i64 %61 to i32
  call void @Perl_write_to_stderr(i8* %cond, i32 %conv104) #9
  br label %return

return:                                           ; preds = %if.end103, %if.end83
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_warn(i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  call void @Perl_vwarn(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_warner(i32 %err, i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  call void @Perl_vwarner(i32 %err, i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_vwarner(i32 %err, i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %msglen = alloca i64, align 8
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings = getelementptr inbounds %struct.cop* %0, i64 0, i32 14
  %1 = load %struct.sv** %cop_warnings, align 8, !tbaa !2
  %cmp = icmp eq %struct.sv* %1, null
  br i1 %cmp, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings1 = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings1, align 8, !tbaa !2
  %cmp2 = icmp eq %struct.sv* %3, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp2, label %if.else, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings4 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings4, align 8, !tbaa !2
  %cmp5 = icmp eq %struct.sv* %5, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp5, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings6 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings6, align 8, !tbaa !2
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !2
  %10 = load i8* %9, align 1, !tbaa !0
  %and = and i8 %10, 2
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %land.lhs.true
  %and8 = shl i32 %err, 1
  %11 = lshr i32 %err, 2
  %div = and i32 %11, 63
  %idxprom = zext i32 %div to i64
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings9 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings9, align 8, !tbaa !2
  %sv_any10 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any10, align 8, !tbaa !2
  %xpv_pv11 = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv11, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8* %15, i64 %idxprom
  %16 = load i8* %arrayidx12, align 1, !tbaa !0
  %conv13 = sext i8 %16 to i32
  %add117 = and i32 %and8, 6
  %rem = or i32 %add117, 1
  %shl = shl i32 1, %rem
  %and17 = and i32 %conv13, %shl
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %lor.lhs.false19, label %if.then

lor.lhs.false19:                                  ; preds = %lor.lhs.false7
  %17 = lshr i32 %err, 7
  %mul21 = lshr i32 %err, 10
  %div23 = and i32 %mul21, 63
  %idxprom24 = zext i32 %div23 to i64
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings25 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings25, align 8, !tbaa !2
  %sv_any26 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %20 = load i8** %sv_any26, align 8, !tbaa !2
  %xpv_pv27 = bitcast i8* %20 to i8**
  %21 = load i8** %xpv_pv27, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i8* %21, i64 %idxprom24
  %22 = load i8* %arrayidx28, align 1, !tbaa !0
  %conv29 = sext i8 %22 to i32
  %add22118 = and i32 %17, 6
  %rem34 = or i32 %add22118, 1
  %shl35 = shl i32 1, %rem34
  %and36 = and i32 %conv29, %shl35
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %lor.lhs.false38, label %if.then

lor.lhs.false38:                                  ; preds = %lor.lhs.false19
  %23 = lshr i32 %err, 15
  %mul41 = lshr i32 %err, 18
  %div43 = and i32 %mul41, 63
  %idxprom44 = zext i32 %div43 to i64
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings45 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings45, align 8, !tbaa !2
  %sv_any46 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %26 = load i8** %sv_any46, align 8, !tbaa !2
  %xpv_pv47 = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv47, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i8* %27, i64 %idxprom44
  %28 = load i8* %arrayidx48, align 1, !tbaa !0
  %conv49 = sext i8 %28 to i32
  %add42119 = and i32 %23, 6
  %rem54 = or i32 %add42119, 1
  %shl55 = shl i32 1, %rem54
  %and56 = and i32 %conv49, %shl55
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %lor.lhs.false58, label %if.then

lor.lhs.false58:                                  ; preds = %lor.lhs.false38
  %29 = lshr i32 %err, 23
  %div63 = lshr i32 %err, 26
  %idxprom64 = zext i32 %div63 to i64
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings65 = getelementptr inbounds %struct.cop* %30, i64 0, i32 14
  %31 = load %struct.sv** %cop_warnings65, align 8, !tbaa !2
  %sv_any66 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %32 = load i8** %sv_any66, align 8, !tbaa !2
  %xpv_pv67 = bitcast i8* %32 to i8**
  %33 = load i8** %xpv_pv67, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds i8* %33, i64 %idxprom64
  %34 = load i8* %arrayidx68, align 1, !tbaa !0
  %conv69 = sext i8 %34 to i32
  %add62120 = and i32 %29, 6
  %rem74 = or i32 %add62120, 1
  %shl75 = shl i32 1, %rem74
  %and76 = and i32 %conv69, %shl75
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false58, %lor.lhs.false38, %lor.lhs.false19, %lor.lhs.false7, %land.lhs.true
  %call = call %struct.sv* @Perl_vmess(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %35 = load i32* %sv_flags, align 4, !tbaa !3
  %and78 = and i32 %35, 262144
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any81 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %36 = load i8** %sv_any81, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %36, i64 8
  %37 = bitcast i8* %xpv_cur to i64*
  %38 = load i64* %37, align 8, !tbaa !4
  store i64 %38, i64* %msglen, align 8, !tbaa !4
  %xpv_pv83 = bitcast i8* %36 to i8**
  %39 = load i8** %xpv_pv83, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call84 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %msglen, i32 2) #8
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %40 = phi i32 [ %35, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %39, %cond.true ], [ %call84, %cond.false ]
  %and86 = and i32 %40, 536870912
  %41 = load %struct.sv** @PL_diehook, align 8, !tbaa !2
  %tobool87 = icmp eq %struct.sv* %41, null
  br i1 %tobool87, label %if.end, label %if.then88

if.then88:                                        ; preds = %cond.end
  %42 = load i64* %msglen, align 8, !tbaa !4
  call void @S_vdie_common(i8* %cond, i64 %42, i32 %and86) #9
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then88
  %43 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %tobool89 = icmp eq i32 %43, 0
  %44 = load i64* %msglen, align 8, !tbaa !4
  br i1 %tobool89, label %if.end99, label %if.then90

if.then90:                                        ; preds = %if.end
  %call91 = call %struct.op* @Perl_die_where(i8* %cond, i64 %44) #8
  store %struct.op* %call91, %struct.op** @PL_restartop, align 8, !tbaa !2
  %45 = load %struct.gv** @PL_errgv, align 8, !tbaa !2
  %sv_any92 = getelementptr inbounds %struct.gv* %45, i64 0, i32 0
  %46 = load %struct.xpvgv** %sv_any92, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %46, i64 0, i32 7
  %47 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_sv = getelementptr inbounds %struct.gp* %47, i64 0, i32 0
  %48 = load %struct.sv** %gp_sv, align 8, !tbaa !2
  %sv_flags93 = getelementptr inbounds %struct.sv* %48, i64 0, i32 2
  %49 = load i32* %sv_flags93, align 4, !tbaa !3
  %or = or i32 %49, %and86
  store i32 %or, i32* %sv_flags93, align 4, !tbaa !3
  %50 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !2
  %je_prev = getelementptr inbounds %struct.jmpenv* %50, i64 0, i32 1
  %51 = load %struct.jmpenv** %je_prev, align 8, !tbaa !2
  %tobool94 = icmp eq %struct.jmpenv* %51, null
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.then90
  %arraydecay = getelementptr inbounds %struct.jmpenv* %50, i64 0, i32 0, i64 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 3) #10
  unreachable

if.end96:                                         ; preds = %if.then90
  %call97 = call %struct._PerlIO** @Perl_PerlIO_stderr() #8
  %call98 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call97, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #8
  call void @exit(i32 1) #10
  unreachable

if.end99:                                         ; preds = %if.end
  %conv100 = trunc i64 %44 to i32
  call void @Perl_write_to_stderr(i8* %cond, i32 %conv100) #9
  call void @Perl_my_failure_exit() #8
  br label %if.end101

if.else:                                          ; preds = %lor.lhs.false58, %lor.lhs.false3, %lor.lhs.false, %entry
  call void @Perl_vwarn(i8* %pat, [1 x %struct.__va_list_tag]* %args) #9
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.end99
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_my_setenv(i8* nocapture %nam, i8* %val) #0 {
entry:
  %0 = load i32* @PL_use_safe_putenv, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else88

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_setenv_getix(i8* %nam) #9
  %1 = load i8*** @environ, align 8, !tbaa !2
  %2 = load i8*** @PL_origenviron, align 8, !tbaa !2
  %cmp = icmp eq i8** %1, %2
  %3 = sext i32 %call to i64
  br i1 %cmp, label %for.cond, label %if.end

for.cond:                                         ; preds = %if.then, %for.cond
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %for.cond ], [ %3, %if.then ]
  %indvars.iv185 = phi i32 [ %indvars.iv.next186, %for.cond ], [ %call, %if.then ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv187
  %4 = load i8** %arrayidx, align 8, !tbaa !2
  %tobool2 = icmp eq i8* %4, null
  %indvars.iv.next188 = add i64 %indvars.iv187, 1
  %indvars.iv.next186 = add i32 %indvars.iv185, 1
  br i1 %tobool2, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %add = add nsw i32 %indvars.iv185, 2
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call3 = tail call i8* @Perl_safesysmalloc(i64 %mul) #9
  %5 = bitcast i8* %call3 to i8**
  %cmp5181 = icmp sgt i32 %indvars.iv185, 0
  br i1 %cmp5181, label %for.body7.lr.ph, label %for.end27

for.body7.lr.ph:                                  ; preds = %for.end
  %.pre190 = load i8*** @environ, align 8, !tbaa !2
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %6 = phi i8** [ %.pre190, %for.body7.lr.ph ], [ %8, %for.body7 ]
  %indvars.iv183 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next184, %for.body7 ]
  %arrayidx9 = getelementptr inbounds i8** %6, i64 %indvars.iv183
  %7 = load i8** %arrayidx9, align 8, !tbaa !2
  %call10 = tail call i64 @strlen(i8* %7) #8
  %add12 = shl i64 %call10, 32
  %sext169 = add i64 %add12, 4294967296
  %conv13 = ashr exact i64 %sext169, 32
  %call15 = tail call i8* @Perl_safesysmalloc(i64 %conv13) #9
  %arrayidx17 = getelementptr inbounds i8** %5, i64 %indvars.iv183
  store i8* %call15, i8** %arrayidx17, align 8, !tbaa !2
  %8 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8** %8, i64 %indvars.iv183
  %9 = load i8** %arrayidx21, align 8, !tbaa !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call15, i8* %9, i64 %conv13, i32 1, i1 false)
  %indvars.iv.next184 = add i64 %indvars.iv183, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next184 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv185
  br i1 %exitcond, label %for.end27, label %for.body7

for.end27:                                        ; preds = %for.body7, %for.end
  %arrayidx29 = getelementptr inbounds i8** %5, i64 %indvars.iv187
  store i8* null, i8** %arrayidx29, align 8, !tbaa !2
  store i8** %5, i8*** @environ, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end27
  %10 = phi i8** [ %5, %for.end27 ], [ %1, %if.then ]
  %tobool30 = icmp eq i8* %val, null
  %arrayidx45 = getelementptr inbounds i8** %10, i64 %3
  %11 = load i8** %arrayidx45, align 8, !tbaa !2
  %tobool.i = icmp eq i8* %11, null
  br i1 %tobool30, label %if.then31, label %if.end43

if.then31:                                        ; preds = %if.end
  br i1 %tobool.i, label %if.end117, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then31
  tail call void @free(i8* %11) #8
  %.pre = load i8*** @environ, align 8, !tbaa !2
  %arrayidx35177.phi.trans.insert = getelementptr inbounds i8** %.pre, i64 %3
  %.pre189 = load i8** %arrayidx35177.phi.trans.insert, align 8, !tbaa !2
  %phitmp = icmp eq i8* %.pre189, null
  br i1 %phitmp, label %if.end117, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx35177 = getelementptr inbounds i8** %.pre, i64 %3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %3, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %arrayidx35180 = phi i8** [ %arrayidx35177, %while.body.lr.ph ], [ %arrayidx35, %while.body ]
  %12 = phi i8** [ %.pre, %while.body.lr.ph ], [ %14, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx39 = getelementptr inbounds i8** %12, i64 %indvars.iv.next
  %13 = load i8** %arrayidx39, align 8, !tbaa !2
  store i8* %13, i8** %arrayidx35180, align 8, !tbaa !2
  %14 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8** %14, i64 %indvars.iv.next
  %15 = load i8** %arrayidx35, align 8, !tbaa !2
  %tobool36 = icmp eq i8* %15, null
  br i1 %tobool36, label %if.end117, label %while.body

if.end43:                                         ; preds = %if.end
  br i1 %tobool.i, label %if.then47, label %Perl_safesysfree.exit175

if.then47:                                        ; preds = %if.end43
  %16 = bitcast i8** %10 to i8*
  %add48 = add nsw i32 %call, 2
  %conv49 = sext i32 %add48 to i64
  %mul50 = shl nsw i64 %conv49, 3
  %call51 = tail call i8* @Perl_safesysrealloc(i8* %16, i64 %mul50) #9
  %17 = bitcast i8* %call51 to i8**
  store i8** %17, i8*** @environ, align 8, !tbaa !2
  %add52 = add nsw i32 %call, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8** %17, i64 %idxprom53
  store i8* null, i8** %arrayidx54, align 8, !tbaa !2
  br label %if.end57

Perl_safesysfree.exit175:                         ; preds = %if.end43
  tail call void @free(i8* %11) #8
  br label %if.end57

if.end57:                                         ; preds = %Perl_safesysfree.exit175, %if.then47
  %call58 = tail call i64 @strlen(i8* %nam) #8
  %conv59 = trunc i64 %call58 to i32
  %call60 = tail call i64 @strlen(i8* %val) #8
  %conv61 = trunc i64 %call60 to i32
  %add62 = add i64 %call60, %call58
  %add63 = shl i64 %add62, 32
  %sext = add i64 %add63, 8589934592
  %conv64 = ashr exact i64 %sext, 32
  %call66 = tail call i8* @Perl_safesysmalloc(i64 %conv64) #9
  %18 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds i8** %18, i64 %3
  store i8* %call66, i8** %arrayidx68, align 8, !tbaa !2
  %19 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds i8** %19, i64 %3
  %20 = load i8** %arrayidx70, align 8, !tbaa !2
  %sext167 = shl i64 %call58, 32
  %conv71 = ashr exact i64 %sext167, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %nam, i64 %conv71, i32 1, i1 false)
  %21 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds i8** %21, i64 %3
  %22 = load i8** %arrayidx74, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8* %22, i64 %conv71
  store i8 61, i8* %add.ptr, align 1, !tbaa !0
  %23 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds i8** %23, i64 %3
  %24 = load i8** %arrayidx76, align 8, !tbaa !2
  %add77 = add nsw i32 %conv59, 1
  %idx.ext78 = sext i32 %add77 to i64
  %add.ptr79 = getelementptr inbounds i8* %24, i64 %idx.ext78
  %sext168 = shl i64 %call60, 32
  %conv80 = ashr exact i64 %sext168, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr79, i8* %val, i64 %conv80, i32 1, i1 false)
  %25 = load i8*** @environ, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds i8** %25, i64 %3
  %26 = load i8** %arrayidx83, align 8, !tbaa !2
  %add85 = add nsw i32 %add77, %conv61
  %idx.ext86 = sext i32 %add85 to i64
  %add.ptr87 = getelementptr inbounds i8* %26, i64 %idx.ext86
  store i8 0, i8* %add.ptr87, align 1, !tbaa !0
  br label %if.end117

if.else88:                                        ; preds = %entry
  %call90 = tail call i64 @strlen(i8* %nam) #8
  %conv91 = trunc i64 %call90 to i32
  %tobool93 = icmp eq i8* %val, null
  %.val = select i1 %tobool93, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %val
  %call96 = tail call i64 @strlen(i8* %.val) #8
  %conv97 = trunc i64 %call96 to i32
  %add98 = add i64 %call96, %call90
  %add99 = shl i64 %add98, 32
  %sext170 = add i64 %add99, 8589934592
  %conv100 = ashr exact i64 %sext170, 32
  %call102 = tail call i8* @Perl_safesysmalloc(i64 %conv100) #9
  %sext171 = shl i64 %call90, 32
  %conv103 = ashr exact i64 %sext171, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call102, i8* %nam, i64 %conv103, i32 1, i1 false)
  %add.ptr106 = getelementptr inbounds i8* %call102, i64 %conv103
  store i8 61, i8* %add.ptr106, align 1, !tbaa !0
  %add107 = add nsw i32 %conv91, 1
  %idx.ext108 = sext i32 %add107 to i64
  %add.ptr109 = getelementptr inbounds i8* %call102, i64 %idx.ext108
  %sext172 = shl i64 %call96, 32
  %conv110 = ashr exact i64 %sext172, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr109, i8* %.val, i64 %conv110, i32 1, i1 false)
  %add113 = add nsw i32 %add107, %conv97
  %idx.ext114 = sext i32 %add113 to i64
  %add.ptr115 = getelementptr inbounds i8* %call102, i64 %idx.ext114
  store i8 0, i8* %add.ptr115, align 1, !tbaa !0
  %call116 = tail call i32 @putenv(i8* %call102) #8
  br label %if.end117

if.end117:                                        ; preds = %if.then31, %while.cond.preheader, %while.body, %if.else88, %if.end57
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Perl_setenv_getix(i8* nocapture %nam) #5 {
entry:
  %0 = load i8*** @environ, align 8, !tbaa !2
  %1 = load i8** %0, align 8, !tbaa !2
  %tobool18 = icmp eq i8* %1, null
  br i1 %tobool18, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call = tail call i64 @strlen(i8* %nam) #8
  %sext = shl i64 %call, 32
  %conv3 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = phi i8* [ %1, %for.body.lr.ph ], [ %4, %for.inc ]
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call4 = tail call i32 @strncmp(i8* %2, i8* %nam, i64 %conv3) #8
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx9 = getelementptr inbounds i8* %2, i64 %conv3
  %3 = load i8* %arrayidx9, align 1, !tbaa !0
  %cmp = icmp eq i8 %3, 61
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.019, 1
  %arrayidx = getelementptr inbounds i8** %0, i64 %indvars.iv.next
  %4 = load i8** %arrayidx, align 8, !tbaa !2
  %tobool = icmp eq i8* %4, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %land.lhs.true, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.019, %land.lhs.true ], [ %inc, %for.inc ]
  ret i32 %i.0.lcssa
}

; Function Attrs: optsize
declare i32 @putenv(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize readnone uwtable
define signext i16 @Perl_my_swap(i16 signext %s) #7 {
entry:
  %conv = sext i16 %s to i32
  %and = shl nsw i32 %conv, 8
  %shr5 = lshr i32 %conv, 8
  %and2 = and i32 %shr5, 255
  %add = or i32 %and2, %and
  %conv3 = trunc i32 %add to i16
  ret i16 %conv3
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @Perl_my_htonl(i64 %l) #7 {
entry:
  %shr18 = lshr i64 %l, 24
  %u.sroa.3.3.insert.ext = shl i64 %l, 24
  %0 = shl i64 %l, 8
  %u.sroa.2.2.insert.shift = and i64 %0, 16711680
  %u.sroa.2.2.insert.mask = and i64 %u.sroa.3.3.insert.ext, 4278190080
  %u.sroa.2.2.insert.insert = or i64 %u.sroa.2.2.insert.mask, %u.sroa.2.2.insert.shift
  %1 = lshr i64 %l, 8
  %u.sroa.1.1.insert.shift = and i64 %1, 65280
  %u.sroa.1.1.insert.insert = or i64 %u.sroa.2.2.insert.insert, %u.sroa.1.1.insert.shift
  %u.sroa.0.0.insert.ext = and i64 %shr18, 255
  %u.sroa.0.0.insert.insert = or i64 %u.sroa.1.1.insert.insert, %u.sroa.0.0.insert.ext
  ret i64 %u.sroa.0.0.insert.insert
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @Perl_my_ntohl(i64 %l) #7 {
entry:
  %shr19 = lshr i64 %l, 24
  %u.sroa.3.3.insert.ext = shl i64 %l, 24
  %0 = shl i64 %l, 8
  %u.sroa.2.2.insert.shift = and i64 %0, 16711680
  %u.sroa.2.2.insert.mask = and i64 %u.sroa.3.3.insert.ext, 4278190080
  %u.sroa.2.2.insert.insert = or i64 %u.sroa.2.2.insert.mask, %u.sroa.2.2.insert.shift
  %1 = lshr i64 %l, 8
  %u.sroa.1.1.insert.shift = and i64 %1, 65280
  %u.sroa.1.1.insert.insert = or i64 %u.sroa.2.2.insert.insert, %u.sroa.1.1.insert.shift
  %u.sroa.0.0.insert.ext = and i64 %shr19, 255
  %u.sroa.0.0.insert.insert = or i64 %u.sroa.1.1.insert.insert, %u.sroa.0.0.insert.ext
  ret i64 %u.sroa.0.0.insert.insert
}

; Function Attrs: nounwind optsize readnone uwtable
define signext i16 @htovs(i16 signext %n) #7 {
entry:
  %u = alloca %union.anon.4, align 2
  %conv2 = sext i16 %n to i32
  %c = bitcast %union.anon.4* %u to [2 x i8]*
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %s.08 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %shr = ashr i32 %conv2, %s.08
  %conv3 = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [2 x i8]* %c, i64 0, i64 %indvars.iv
  store i8 %conv3, i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add = add nsw i32 %s.08, 8
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %value = getelementptr inbounds %union.anon.4* %u, i64 0, i32 0
  %0 = load i16* %value, align 2, !tbaa !5
  ret i16 %0
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @htovl(i64 %n) #7 {
entry:
  %u = alloca %union.anon.5, align 8
  %c = bitcast %union.anon.5* %u to [8 x i8]*
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv8 = phi i64 [ 0, %entry ], [ %indvars.iv.next9, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %shr = ashr i64 %n, %indvars.iv
  %conv2 = trunc i64 %shr to i8
  %arrayidx = getelementptr inbounds [8 x i8]* %c, i64 0, i64 %indvars.iv8
  store i8 %conv2, i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next9 = add i64 %indvars.iv8, 1
  %indvars.iv.next = add i64 %indvars.iv, 8
  %lftr.wideiv = trunc i64 %indvars.iv.next9 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %value = getelementptr inbounds %union.anon.5* %u, i64 0, i32 0
  %0 = load i64* %value, align 8, !tbaa !4
  ret i64 %0
}

; Function Attrs: nounwind optsize readnone uwtable
define signext i16 @vtohs(i16 signext %n) #7 {
entry:
  %u = alloca %union.anon.6, align 2
  %value = getelementptr inbounds %union.anon.6* %u, i64 0, i32 0
  store i16 %n, i16* %value, align 2, !tbaa !5
  %c = bitcast %union.anon.6* %u to [2 x i8]*
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %s.016 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %n.addr.014 = phi i32 [ 0, %entry ], [ %or, %for.body ]
  %arrayidx = getelementptr inbounds [2 x i8]* %c, i64 0, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !0
  %conv4 = zext i8 %0 to i32
  %shl = shl i32 %conv4, %s.016
  %conv513 = and i32 %n.addr.014, 65535
  %or = or i32 %shl, %conv513
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add = add nsw i32 %s.016, 8
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv6 = trunc i32 %or to i16
  ret i16 %conv6
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @vtohl(i64 %n) #7 {
entry:
  %u = alloca %union.anon.7, align 8
  %value = getelementptr inbounds %union.anon.7* %u, i64 0, i32 0
  store i64 %n, i64* %value, align 8, !tbaa !4
  %c = bitcast %union.anon.7* %u to [8 x i8]*
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %n.addr.010 = phi i64 [ 0, %entry ], [ %or, %for.body ]
  %arrayidx = getelementptr inbounds [8 x i8]* %c, i64 0, i64 %indvars.iv13
  %0 = load i8* %arrayidx, align 1, !tbaa !0
  %conv3 = zext i8 %0 to i64
  %shl = shl i64 %conv3, %indvars.iv
  %or = or i64 %shl, %n.addr.010
  %indvars.iv.next14 = add i64 %indvars.iv13, 1
  %indvars.iv.next = add i64 %indvars.iv, 8
  %lftr.wideiv = trunc i64 %indvars.iv.next14 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i64 %or
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_my_swabn(i8* nocapture %ptr, i32 %n) #0 {
entry:
  %cmp10 = icmp sgt i32 %n, 1
  br i1 %cmp10, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %n, -1
  %idx.ext = sext i32 %sub to i64
  %div = sdiv i32 %n, 2
  %add.ptr = getelementptr inbounds i8* %ptr, i64 %idx.ext
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %n.addr.013 = phi i32 [ %div, %for.body.lr.ph ], [ %dec, %for.body ]
  %e.012 = phi i8* [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr1, %for.body ]
  %s.011 = phi i8* [ %ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %0 = load i8* %s.011, align 1, !tbaa !0
  %1 = load i8* %e.012, align 1, !tbaa !0
  store i8 %1, i8* %s.011, align 1, !tbaa !0
  store i8 %0, i8* %e.012, align 1, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %s.011, i64 1
  %incdec.ptr1 = getelementptr inbounds i8* %e.012, i64 -1
  %dec = add nsw i32 %n.addr.013, -1
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_my_popen_list(i8* %mode, i32 %n, %struct.sv** %args) #0 {
entry:
  %p = alloca [2 x i32], align 4
  %pp = alloca [2 x i32], align 4
  %errkid = alloca i32, align 4
  %status = alloca i32, align 4
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null) #8
  %0 = load i8* %mode, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, 119
  %1 = zext i1 %cmp to i32
  %lnot.ext = xor i32 %1, 1
  %2 = load i8* @PL_tainting, align 1, !tbaa !0
  %tobool2 = icmp eq i8 %2, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @Perl_taint_env() #8
  call void @Perl_taint_proper(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %arraydecay = getelementptr inbounds [2 x i32]* %p, i64 0, i64 0
  %call3 = call i32 @pipe(i32* %arraydecay) #8
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %call9 = call i32 @pipe(i32* %arraydecay8) #8
  %cmp10 = icmp sgt i32 %call9, -1
  %call9.lobit = lshr i32 %call9, 31
  %call9.lobit.not = xor i32 %call9.lobit, 1
  %call.i222 = call i32 @fork() #8
  %cmp15223 = icmp slt i32 %call.i222, 0
  br i1 %cmp15223, label %while.body, label %while.end

while.body:                                       ; preds = %if.end7, %if.end32
  %call17 = call i32* @__errno_location() #8
  %3 = load i32* %call17, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %3, 11
  br i1 %cmp18, label %if.end32, label %if.then20

if.then20:                                        ; preds = %while.body
  %idxprom = zext i1 %cmp to i64
  %arrayidx = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %call21 = call i32 @close(i32 %4) #8
  %idxprom22212 = zext i32 %lnot.ext to i64
  %arrayidx23 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom22212
  %5 = load i32* %arrayidx23, align 4, !tbaa !3
  %call24 = call i32 @close(i32 %5) #8
  %tobool25 = icmp eq i32 %call9.lobit, 1
  br i1 %tobool25, label %return, label %if.then26

if.then26:                                        ; preds = %if.then20
  %6 = load i32* %arraydecay8, align 4, !tbaa !3
  %call28 = call i32 @close(i32 %6) #8
  %arrayidx29 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %7 = load i32* %arrayidx29, align 4, !tbaa !3
  %call30 = call i32 @close(i32 %7) #8
  br label %return

if.end32:                                         ; preds = %while.body
  %call33 = call i32 @sleep(i32 5) #8
  %call.i = call i32 @fork() #8
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %while.body, label %while.end

while.end:                                        ; preds = %if.end32, %if.end7
  %call.i.lcssa = phi i32 [ %call.i222, %if.end7 ], [ %call.i, %if.end32 ]
  %cmp34 = icmp eq i32 %call.i.lcssa, 0
  br i1 %cmp34, label %if.then36, label %if.end81

if.then36:                                        ; preds = %while.end
  %tobool37 = icmp eq i32 %call9.lobit, 1
  br i1 %tobool37, label %if.end43, label %if.then38

if.then38:                                        ; preds = %if.then36
  %8 = load i32* %arraydecay8, align 4, !tbaa !3
  %call40 = call i32 @close(i32 %8) #8
  %arrayidx41 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %9 = load i32* %arrayidx41, align 4, !tbaa !3
  %call42 = call i32 (i32, i32, ...)* @fcntl(i32 %9, i32 2, i32 1) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.then38
  %idxprom44211 = zext i32 %lnot.ext to i64
  %arrayidx45 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom44211
  %10 = load i32* %arrayidx45, align 4, !tbaa !3
  %11 = load i8* %mode, align 1, !tbaa !0
  %cmp47 = icmp eq i8 %11, 114
  %conv48 = zext i1 %cmp47 to i32
  %cmp49 = icmp eq i32 %10, %conv48
  br i1 %cmp49, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end43
  %call57 = call i32 @dup2(i32 %10, i32 %conv48) #9
  %12 = load i32* %arrayidx45, align 4, !tbaa !3
  %call60 = call i32 @close(i32 %12) #8
  %idxprom61 = zext i1 %cmp to i64
  %arrayidx62 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom61
  %13 = load i32* %arrayidx62, align 4, !tbaa !3
  %14 = load i8* %mode, align 1, !tbaa !0
  %cmp64 = icmp eq i8 %14, 114
  %conv65 = zext i1 %cmp64 to i32
  %cmp66 = icmp eq i32 %13, %conv65
  br i1 %cmp66, label %if.end76, label %if.then68

if.then68:                                        ; preds = %if.then51
  %call71 = call i32 @close(i32 %13) #8
  br label %if.end76

if.else:                                          ; preds = %if.end43
  %idxprom73 = zext i1 %cmp to i64
  %arrayidx74 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom73
  %15 = load i32* %arrayidx74, align 4, !tbaa !3
  %call75 = call i32 @close(i32 %15) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then51, %if.then68, %if.else
  %add.ptr = getelementptr inbounds %struct.sv** %args, i64 -1
  %idx.ext = sext i32 %n to i64
  %add.ptr.sum = add i64 %idx.ext, -1
  %add.ptr78 = getelementptr inbounds %struct.sv** %args, i64 %add.ptr.sum
  %arrayidx79 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %16 = load i32* %arrayidx79, align 4, !tbaa !3
  %call80 = call signext i8 @Perl_do_aexec5(%struct.sv* null, %struct.sv** %add.ptr, %struct.sv** %add.ptr78, i32 %16, i32 %call9.lobit.not) #8
  call void @_exit(i32 1) #10
  unreachable

if.end81:                                         ; preds = %while.end
  call void @Perl_do_execfree() #8
  br i1 %cmp10, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end81
  %arrayidx84 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %17 = load i32* %arrayidx84, align 4, !tbaa !3
  %call85 = call i32 @close(i32 %17) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end81
  %idxprom87210 = zext i32 %lnot.ext to i64
  %arrayidx88 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom87210
  %18 = load i32* %arrayidx88, align 4, !tbaa !3
  %idxprom89 = zext i1 %cmp to i64
  %arrayidx90 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom89
  %19 = load i32* %arrayidx90, align 4, !tbaa !3
  %cmp91 = icmp slt i32 %18, %19
  br i1 %cmp91, label %if.then93, label %if.else106

if.then93:                                        ; preds = %if.end86
  %call98 = call i32 @dup2(i32 %19, i32 %18) #9
  %20 = load i32* %arrayidx90, align 4, !tbaa !3
  %call101 = call i32 @close(i32 %20) #8
  %21 = load i32* %arrayidx88, align 4, !tbaa !3
  store i32 %21, i32* %arrayidx90, align 4, !tbaa !3
  br label %if.end110

if.else106:                                       ; preds = %if.end86
  %call109 = call i32 @close(i32 %18) #8
  %.pre = load i32* %arrayidx90, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %if.else106, %if.then93
  %22 = phi i32 [ %.pre, %if.else106 ], [ %21, %if.then93 ]
  %23 = load %struct.av** @PL_fdpid, align 8, !tbaa !2
  %call113 = call %struct.sv** @Perl_av_fetch(%struct.av* %23, i32 %22, i32 1) #8
  %24 = load %struct.sv** %call113, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %25, 255
  %cmp114 = icmp eq i32 %and, 0
  br i1 %cmp114, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end110
  %call116 = call signext i8 @Perl_sv_upgrade(%struct.sv* %24, i32 1) #8
  br label %lor.end

lor.end:                                          ; preds = %if.end110, %lor.rhs
  %conv119 = sext i32 %call.i.lcssa to i64
  %sv_any = getelementptr inbounds %struct.sv* %24, i64 0, i32 0
  %26 = load i8** %sv_any, align 8, !tbaa !2
  %xiv_iv = getelementptr inbounds i8* %26, i64 24
  %27 = bitcast i8* %xiv_iv to i64*
  store i64 %conv119, i64* %27, align 8, !tbaa !4
  store i32 %call.i.lcssa, i32* @PL_forkprocess, align 4, !tbaa !3
  %cmp121 = icmp sgt i32 %call.i.lcssa, 0
  %or.cond = and i1 %cmp10, %cmp121
  br i1 %or.cond, label %while.cond125.preheader, label %if.end161

while.cond125.preheader:                          ; preds = %lor.end
  %28 = load i32* %arraydecay8, align 4, !tbaa !3
  %29 = bitcast i32* %errkid to i8*
  br label %while.body129

while.cond125:                                    ; preds = %while.body129
  %conv126 = sext i32 %add to i64
  %cmp127 = icmp ult i32 %add, 4
  %30 = load i32* %arraydecay8, align 4, !tbaa !3
  br i1 %cmp127, label %while.body129, label %while.end140.thread

while.end140.thread:                              ; preds = %while.cond125
  %call142213 = call i32 @close(i32 %30) #8
  br label %if.then144

while.body129:                                    ; preds = %while.cond125.preheader, %while.cond125
  %31 = phi i32 [ %28, %while.cond125.preheader ], [ %30, %while.cond125 ]
  %conv126220 = phi i64 [ 0, %while.cond125.preheader ], [ %conv126, %while.cond125 ]
  %n124.0219 = phi i32 [ 0, %while.cond125.preheader ], [ %add, %while.cond125 ]
  %add.ptr132 = getelementptr inbounds i8* %29, i64 %conv126220
  %sub = sub i64 4, %conv126220
  %call134 = call i64 @read(i32 %31, i8* %add.ptr132, i64 %sub) #8
  %conv135 = trunc i64 %call134 to i32
  %cmp136 = icmp slt i32 %conv135, 1
  %add = add nsw i32 %conv135, %n124.0219
  br i1 %cmp136, label %while.end140, label %while.cond125

while.end140:                                     ; preds = %while.body129
  %32 = load i32* %arraydecay8, align 4, !tbaa !3
  %call142 = call i32 @close(i32 %32) #8
  %tobool143 = icmp eq i32 %n124.0219, 0
  br i1 %tobool143, label %if.end166, label %if.then144

if.then144:                                       ; preds = %while.end140.thread, %while.end140
  %n124.0217 = phi i32 [ %add, %while.end140.thread ], [ %n124.0219, %while.end140 ]
  %33 = load i32* %arrayidx90, align 4, !tbaa !3
  %call147 = call i32 @close(i32 %33) #8
  %cmp149 = icmp eq i32 %n124.0217, 4
  br i1 %cmp149, label %do.body, label %if.then151

if.then151:                                       ; preds = %if.then144
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0)) #9
  br label %do.body

do.body:                                          ; preds = %if.then144, %if.then151, %land.rhs
  %call153 = call i32 @Perl_wait4pid(i32 %call.i.lcssa, i32* %status, i32 0) #9
  %cmp154 = icmp eq i32 %call153, -1
  br i1 %cmp154, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %call156 = call i32* @__errno_location() #8
  %34 = load i32* %call156, align 4, !tbaa !3
  %cmp157 = icmp eq i32 %34, 4
  br i1 %cmp157, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %land.rhs
  %35 = load i32* %errkid, align 4, !tbaa !3
  %call159 = call i32* @__errno_location() #8
  store i32 %35, i32* %call159, align 4, !tbaa !3
  br label %return

if.end161:                                        ; preds = %lor.end
  %tobool162 = icmp eq i32 %call9.lobit, 1
  br i1 %tobool162, label %if.end166, label %if.then163

if.then163:                                       ; preds = %if.end161
  %36 = load i32* %arraydecay8, align 4, !tbaa !3
  %call165 = call i32 @close(i32 %36) #8
  br label %if.end166

if.end166:                                        ; preds = %while.end140, %if.end161, %if.then163
  %37 = load i32* %arrayidx90, align 4, !tbaa !3
  %call169 = call %struct._PerlIO** @PerlIO_fdopen(i32 %37, i8* %mode) #8
  br label %return

return:                                           ; preds = %if.then26, %if.then20, %if.end, %if.end166, %do.end
  %retval.0 = phi %struct._PerlIO** [ null, %do.end ], [ %call169, %if.end166 ], [ null, %if.end ], [ null, %if.then20 ], [ null, %if.then26 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare void @Perl_taint_env() #2

; Function Attrs: optsize
declare void @Perl_taint_proper(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @pipe(i32*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_my_fork() #0 {
entry:
  %call = tail call i32 @fork() #8
  ret i32 %call
}

; Function Attrs: optsize
declare i32* @__errno_location() #2

; Function Attrs: optsize
declare i32 @close(i32) #2

; Function Attrs: optsize
declare i32 @sleep(i32) #2

; Function Attrs: optsize
declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @dup2(i32 %oldfd, i32 %newfd) #0 {
entry:
  %cmp = icmp eq i32 %oldfd, %newfd
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @close(i32 %newfd) #8
  %call1 = tail call i32 (i32, i32, ...)* @fcntl(i32 %oldfd, i32 0, i32 %newfd) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %oldfd, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_do_aexec5(%struct.sv*, %struct.sv**, %struct.sv**, i32, i32) #2

; Function Attrs: noreturn optsize
declare void @_exit(i32) #6

; Function Attrs: optsize
declare void @Perl_do_execfree() #2

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #2

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_wait4pid(i32 %pid, i32* %statusp, i32 %flags) #0 {
entry:
  %tobool = icmp eq i32 %pid, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @waitpid(i32 %pid, i32* %statusp, i32 %flags) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32* @__errno_location() #8
  %0 = load i32* %call1, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %0, 4
  %1 = load i32* @PL_sig_pending, align 4, !tbaa !3
  %tobool4 = icmp ne i32 %1, 0
  %or.cond = and i1 %cmp2, %tobool4
  br i1 %or.cond, label %if.then5, label %return

if.then5:                                         ; preds = %land.lhs.true
  tail call void @Perl_despatch_signals() #8
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %if.then5, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call, %if.then5 ], [ %call, %land.lhs.true ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_fdopen(i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_my_popen(i8* %cmd, i8* %mode) #0 {
entry:
  %p = alloca [2 x i32], align 4
  %pp = alloca [2 x i32], align 4
  %errkid = alloca i32, align 4
  %status = alloca i32, align 4
  %0 = load i8* %cmd, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, 45
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %cmd, i64 1
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %phitmp = icmp ne i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %phitmp, %land.rhs ]
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null) #8
  %3 = load i8* %mode, align 1, !tbaa !0
  %cmp6 = icmp eq i8 %3, 119
  %4 = zext i1 %cmp6 to i32
  %lnot.ext9 = xor i32 %4, 1
  %.not = xor i1 %2, true
  %5 = load i8* @PL_tainting, align 1, !tbaa !0
  %tobool12 = icmp eq i8 %5, 0
  %or.cond = or i1 %tobool12, %.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  call void @Perl_taint_env() #8
  call void @Perl_taint_proper(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  %arraydecay = getelementptr inbounds [2 x i32]* %p, i64 0, i64 0
  %call13 = call i32 @pipe(i32* %arraydecay) #8
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %return, label %if.end17

if.end17:                                         ; preds = %if.end
  br i1 %2, label %land.lhs.true19, label %while.cond.preheader

land.lhs.true19:                                  ; preds = %if.end17
  %arraydecay20 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %call21 = call i32 @pipe(i32* %arraydecay20) #8
  %call21.lobit = lshr i32 %call21, 31
  %call21.lobit.not = xor i32 %call21.lobit, 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end17, %land.lhs.true19
  %did_pipes.0.ph = phi i32 [ %call21.lobit.not, %land.lhs.true19 ], [ 0, %if.end17 ]
  %call.i257 = call i32 @fork() #8
  %cmp27258 = icmp slt i32 %call.i257, 0
  br i1 %cmp27258, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %if.end48
  %call29 = call i32* @__errno_location() #8
  %6 = load i32* %call29, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %6, 11
  br i1 %cmp30, label %if.end48, label %if.then32

if.then32:                                        ; preds = %while.body
  %idxprom = zext i1 %cmp6 to i64
  %arrayidx33 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom
  %7 = load i32* %arrayidx33, align 4, !tbaa !3
  %call34 = call i32 @close(i32 %7) #8
  %idxprom35251 = zext i32 %lnot.ext9 to i64
  %arrayidx36 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom35251
  %8 = load i32* %arrayidx36, align 4, !tbaa !3
  %call37 = call i32 @close(i32 %8) #8
  %tobool38 = icmp eq i32 %did_pipes.0.ph, 0
  br i1 %tobool38, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.then32
  %arrayidx40 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %9 = load i32* %arrayidx40, align 4, !tbaa !3
  %call41 = call i32 @close(i32 %9) #8
  %arrayidx42 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %10 = load i32* %arrayidx42, align 4, !tbaa !3
  %call43 = call i32 @close(i32 %10) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.then39
  br i1 %2, label %return, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0)) #9
  br label %return

if.end48:                                         ; preds = %while.body
  %call49 = call i32 @sleep(i32 5) #8
  %call.i = call i32 @fork() #8
  %cmp27 = icmp slt i32 %call.i, 0
  br i1 %cmp27, label %while.body, label %while.end

while.end:                                        ; preds = %if.end48, %while.cond.preheader
  %call.i.lcssa = phi i32 [ %call.i257, %while.cond.preheader ], [ %call.i, %if.end48 ]
  %cmp50 = icmp eq i32 %call.i.lcssa, 0
  br i1 %cmp50, label %if.then52, label %if.end111

if.then52:                                        ; preds = %while.end
  %tobool53 = icmp eq i32 %did_pipes.0.ph, 0
  br i1 %tobool53, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.then52
  %arrayidx55 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %11 = load i32* %arrayidx55, align 4, !tbaa !3
  %call56 = call i32 @close(i32 %11) #8
  %arrayidx57 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %12 = load i32* %arrayidx57, align 4, !tbaa !3
  %call58 = call i32 (i32, i32, ...)* @fcntl(i32 %12, i32 2, i32 1) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.then54
  %idxprom60250 = zext i32 %lnot.ext9 to i64
  %arrayidx61 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom60250
  %13 = load i32* %arrayidx61, align 4, !tbaa !3
  %14 = load i8* %mode, align 1, !tbaa !0
  %cmp63 = icmp eq i8 %14, 114
  %conv64 = zext i1 %cmp63 to i32
  %cmp65 = icmp eq i32 %13, %conv64
  br i1 %cmp65, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end59
  %call73 = call i32 @dup2(i32 %13, i32 %conv64) #9
  %15 = load i32* %arrayidx61, align 4, !tbaa !3
  %call76 = call i32 @close(i32 %15) #8
  %idxprom77 = zext i1 %cmp6 to i64
  %arrayidx78 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom77
  %16 = load i32* %arrayidx78, align 4, !tbaa !3
  %17 = load i8* %mode, align 1, !tbaa !0
  %cmp80 = icmp eq i8 %17, 114
  %conv81 = zext i1 %cmp80 to i32
  %cmp82 = icmp eq i32 %16, %conv81
  br i1 %cmp82, label %if.end92, label %if.then84

if.then84:                                        ; preds = %if.then67
  %call87 = call i32 @close(i32 %16) #8
  br label %if.end92

if.else:                                          ; preds = %if.end59
  %idxprom89 = zext i1 %cmp6 to i64
  %arrayidx90 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom89
  %18 = load i32* %arrayidx90, align 4, !tbaa !3
  %call91 = call i32 @close(i32 %18) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then67, %if.then84, %if.else
  br i1 %2, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end92
  %arrayidx95 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %19 = load i32* %arrayidx95, align 4, !tbaa !3
  %call96 = call signext i8 @Perl_do_exec3(i8* %cmd, i32 %19, i32 %did_pipes.0.ph) #8
  call void @_exit(i32 1) #10
  unreachable

if.end97:                                         ; preds = %if.end92
  %call98 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0), i32 1, i32 4) #8
  %tobool99 = icmp eq %struct.gv* %call98, null
  br i1 %tobool99, label %if.end110, label %if.then100

if.then100:                                       ; preds = %if.end97
  %sv_any = getelementptr inbounds %struct.gv* %call98, i64 0, i32 0
  %20 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %20, i64 0, i32 7
  %21 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_sv = getelementptr inbounds %struct.gp* %21, i64 0, i32 0
  %22 = load %struct.sv** %gp_sv, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %23, -8388609
  store i32 %and, i32* %sv_flags, align 4, !tbaa !3
  %call104 = call i32 @getpid() #8
  %conv105 = sext i32 %call104 to i64
  call void @Perl_sv_setiv(%struct.sv* %22, i64 %conv105) #8
  %24 = load %struct.xpvgv** %sv_any, align 8, !tbaa !2
  %xgv_gp107 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp107, align 8, !tbaa !2
  %gp_sv108 = getelementptr inbounds %struct.gp* %25, i64 0, i32 0
  %26 = load %struct.sv** %gp_sv108, align 8, !tbaa !2
  %sv_flags109 = getelementptr inbounds %struct.sv* %26, i64 0, i32 2
  %27 = load i32* %sv_flags109, align 4, !tbaa !3
  %or = or i32 %27, 8388608
  store i32 %or, i32* %sv_flags109, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %if.end97, %if.then100
  store i32 0, i32* @PL_forkprocess, align 4, !tbaa !3
  %28 = load %struct.hv** @PL_pidstatus, align 8, !tbaa !2
  call void @Perl_hv_clear(%struct.hv* %28) #8
  br label %return

if.end111:                                        ; preds = %while.end
  call void @Perl_do_execfree() #8
  %tobool112 = icmp ne i32 %did_pipes.0.ph, 0
  br i1 %tobool112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end111
  %arrayidx114 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 1
  %29 = load i32* %arrayidx114, align 4, !tbaa !3
  %call115 = call i32 @close(i32 %29) #8
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end111
  %idxprom117249 = zext i32 %lnot.ext9 to i64
  %arrayidx118 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom117249
  %30 = load i32* %arrayidx118, align 4, !tbaa !3
  %idxprom119 = zext i1 %cmp6 to i64
  %arrayidx120 = getelementptr inbounds [2 x i32]* %p, i64 0, i64 %idxprom119
  %31 = load i32* %arrayidx120, align 4, !tbaa !3
  %cmp121 = icmp slt i32 %30, %31
  br i1 %cmp121, label %if.then123, label %if.else136

if.then123:                                       ; preds = %if.end116
  %call128 = call i32 @dup2(i32 %31, i32 %30) #9
  %32 = load i32* %arrayidx120, align 4, !tbaa !3
  %call131 = call i32 @close(i32 %32) #8
  %33 = load i32* %arrayidx118, align 4, !tbaa !3
  store i32 %33, i32* %arrayidx120, align 4, !tbaa !3
  br label %if.end140

if.else136:                                       ; preds = %if.end116
  %call139 = call i32 @close(i32 %30) #8
  %.pre = load i32* %arrayidx120, align 4, !tbaa !3
  br label %if.end140

if.end140:                                        ; preds = %if.else136, %if.then123
  %34 = phi i32 [ %.pre, %if.else136 ], [ %33, %if.then123 ]
  %35 = load %struct.av** @PL_fdpid, align 8, !tbaa !2
  %call143 = call %struct.sv** @Perl_av_fetch(%struct.av* %35, i32 %34, i32 1) #8
  %36 = load %struct.sv** %call143, align 8, !tbaa !2
  %sv_flags144 = getelementptr inbounds %struct.sv* %36, i64 0, i32 2
  %37 = load i32* %sv_flags144, align 4, !tbaa !3
  %and145 = and i32 %37, 255
  %cmp146 = icmp eq i32 %and145, 0
  br i1 %cmp146, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end140
  %call148 = call signext i8 @Perl_sv_upgrade(%struct.sv* %36, i32 1) #8
  br label %lor.end

lor.end:                                          ; preds = %if.end140, %lor.rhs
  %conv151 = sext i32 %call.i.lcssa to i64
  %sv_any152 = getelementptr inbounds %struct.sv* %36, i64 0, i32 0
  %38 = load i8** %sv_any152, align 8, !tbaa !2
  %xiv_iv = getelementptr inbounds i8* %38, i64 24
  %39 = bitcast i8* %xiv_iv to i64*
  store i64 %conv151, i64* %39, align 8, !tbaa !4
  store i32 %call.i.lcssa, i32* @PL_forkprocess, align 4, !tbaa !3
  %cmp155 = icmp sgt i32 %call.i.lcssa, 0
  %or.cond252 = and i1 %tobool112, %cmp155
  br i1 %or.cond252, label %while.cond158.preheader, label %if.end194

while.cond158.preheader:                          ; preds = %lor.end
  %arrayidx163 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %40 = bitcast i32* %errkid to i8*
  br label %while.body162

while.cond158:                                    ; preds = %while.body162
  %conv159 = sext i32 %add to i64
  %cmp160 = icmp ult i32 %add, 4
  br i1 %cmp160, label %while.body162, label %while.end171.thread

while.end171.thread:                              ; preds = %while.cond158
  %41 = load i32* %arrayidx163, align 4, !tbaa !3
  %call173260 = call i32 @close(i32 %41) #8
  br label %if.then175

while.body162:                                    ; preds = %while.cond158.preheader, %while.cond158
  %conv159255 = phi i64 [ 0, %while.cond158.preheader ], [ %conv159, %while.cond158 ]
  %n.0254 = phi i32 [ 0, %while.cond158.preheader ], [ %add, %while.cond158 ]
  %42 = load i32* %arrayidx163, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %40, i64 %conv159255
  %sub = sub i64 4, %conv159255
  %call165 = call i64 @read(i32 %42, i8* %add.ptr, i64 %sub) #8
  %conv166 = trunc i64 %call165 to i32
  %cmp167 = icmp slt i32 %conv166, 1
  %add = add nsw i32 %conv166, %n.0254
  br i1 %cmp167, label %while.end171, label %while.cond158

while.end171:                                     ; preds = %while.body162
  %43 = load i32* %arrayidx163, align 4, !tbaa !3
  %call173 = call i32 @close(i32 %43) #8
  %tobool174 = icmp eq i32 %n.0254, 0
  br i1 %tobool174, label %if.end199, label %if.then175

if.then175:                                       ; preds = %while.end171.thread, %while.end171
  %n.0.lcssa262 = phi i32 [ %add, %while.end171.thread ], [ %n.0254, %while.end171 ]
  %44 = load i32* %arrayidx120, align 4, !tbaa !3
  %call178 = call i32 @close(i32 %44) #8
  %cmp180 = icmp eq i32 %n.0.lcssa262, 4
  br i1 %cmp180, label %do.body, label %if.then182

if.then182:                                       ; preds = %if.then175
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0)) #9
  br label %do.body

do.body:                                          ; preds = %if.then175, %if.then182, %land.rhs187
  %call184 = call i32 @Perl_wait4pid(i32 %call.i.lcssa, i32* %status, i32 0) #9
  %cmp185 = icmp eq i32 %call184, -1
  br i1 %cmp185, label %land.rhs187, label %do.end

land.rhs187:                                      ; preds = %do.body
  %call188 = call i32* @__errno_location() #8
  %45 = load i32* %call188, align 4, !tbaa !3
  %cmp189 = icmp eq i32 %45, 4
  br i1 %cmp189, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %land.rhs187
  %46 = load i32* %errkid, align 4, !tbaa !3
  %call192 = call i32* @__errno_location() #8
  store i32 %46, i32* %call192, align 4, !tbaa !3
  br label %return

if.end194:                                        ; preds = %lor.end
  %tobool195 = icmp eq i32 %did_pipes.0.ph, 0
  br i1 %tobool195, label %if.end199, label %if.then196

if.then196:                                       ; preds = %if.end194
  %arrayidx197 = getelementptr inbounds [2 x i32]* %pp, i64 0, i64 0
  %47 = load i32* %arrayidx197, align 4, !tbaa !3
  %call198 = call i32 @close(i32 %47) #8
  br label %if.end199

if.end199:                                        ; preds = %while.end171, %if.end194, %if.then196
  %48 = load i32* %arrayidx120, align 4, !tbaa !3
  %call202 = call %struct._PerlIO** @PerlIO_fdopen(i32 %48, i8* %mode) #8
  br label %return

return:                                           ; preds = %if.end44, %if.then46, %if.end, %if.end199, %do.end, %if.end110
  %retval.0 = phi %struct._PerlIO** [ null, %if.end110 ], [ null, %do.end ], [ %call202, %if.end199 ], [ null, %if.end ], [ null, %if.then46 ], [ null, %if.end44 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_do_exec3(i8*, i32, i32) #2

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #2

; Function Attrs: optsize
declare i32 @getpid() #2

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #2

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_atfork_lock() #7 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_atfork_unlock() #7 {
entry:
  ret void
}

; Function Attrs: optsize
declare i32 @fork() #2

; Function Attrs: nounwind optsize uwtable
define void (i32)* @Perl_rsignal(i32 %signo, void (i32)* %handler) #0 {
entry:
  %call = tail call void (i32)* (i32, void (i32)*)* @signal(i32 %signo, void (i32)* %handler) #8
  ret void (i32)* %call
}

; Function Attrs: optsize
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind optsize uwtable
define void (i32)* @Perl_rsignal_state(i32 %signo) #0 {
entry:
  store i32 0, i32* @sig_trapped, align 4, !tbaa !3
  %call = tail call void (i32)* (i32, void (i32)*)* @signal(i32 %signo, void (i32)* @sig_trap) #8
  %call1 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 %signo, void (i32)* %call) #8
  %0 = load i32* @sig_trapped, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @getpid() #8
  %call3 = tail call i32 @kill(i32 %call2, i32 %signo) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void (i32)* %call
}

; Function Attrs: nounwind optsize uwtable
define internal void @sig_trap(i32 %signo) #0 {
entry:
  %0 = load i32* @sig_trapped, align 4, !tbaa !3
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @sig_trapped, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @kill(i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_rsignal_save(i32 %signo, void (i32)* %handler, void (i32)** nocapture %save) #0 {
entry:
  %call = tail call void (i32)* (i32, void (i32)*)* @signal(i32 %signo, void (i32)* %handler) #8
  store void (i32)* %call, void (i32)** %save, align 8, !tbaa !2
  %cmp = icmp eq void (i32)* %call, inttoptr (i64 -1 to void (i32)*)
  %cond = sext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_rsignal_restore(i32 %signo, void (i32)** nocapture %save) #0 {
entry:
  %0 = load void (i32)** %save, align 8, !tbaa !2
  %call = tail call void (i32)* (i32, void (i32)*)* @signal(i32 %signo, void (i32)* %0) #8
  %cmp = icmp eq void (i32)* %call, inttoptr (i64 -1 to void (i32)*)
  %cond = sext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_my_pclose(%struct._PerlIO** %ptr) #0 {
entry:
  %status = alloca i32, align 4
  %0 = load %struct.av** @PL_fdpid, align 8, !tbaa !2
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %ptr) #8
  %call1 = call %struct.sv** @Perl_av_fetch(%struct.av* %0, i32 %call, i32 1) #8
  %1 = load %struct.sv** %call1, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !2
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  %phitmp = trunc i64 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ -1, %entry ]
  call void @Perl_sv_free(%struct.sv* %1) #8
  store %struct.sv* @PL_sv_undef, %struct.sv** %call1, align 8, !tbaa !2
  %call2 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %ptr) #8
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call6 = call i32* @__errno_location() #8
  %6 = load i32* %call6, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %saved_errno.0 = phi i32 [ %6, %if.then ], [ 0, %cond.end ]
  %call.i = call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %call.i42 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  %call.i45 = call void (i32)* (i32, void (i32)*)* @signal(i32 3, void (i32)* inttoptr (i64 1 to void (i32)*)) #8
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end
  %call10 = call i32 @Perl_wait4pid(i32 %cond, i32* %status, i32 0) #9
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %call13 = call i32* @__errno_location() #8
  %7 = load i32* %call13, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %7, 4
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %land.rhs
  %call10.lcssa = phi i32 [ %call10, %do.body ], [ -1, %land.rhs ]
  %call.i48 = call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* %call.i) #8
  %call.i51 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* %call.i42) #8
  %call.i54 = call void (i32)* (i32, void (i32)*)* @signal(i32 3, void (i32)* %call.i45) #8
  br i1 %cmp3, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.end
  %call21 = call i32* @__errno_location() #8
  store i32 %saved_errno.0, i32* %call21, align 4, !tbaa !3
  br label %return

if.end22:                                         ; preds = %do.end
  %cmp23 = icmp slt i32 %call10.lcssa, 0
  br i1 %cmp23, label %return, label %cond.false26

cond.false26:                                     ; preds = %if.end22
  %8 = load i32* %status, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %8, 0
  br i1 %cmp27, label %return, label %cond.false30

cond.false30:                                     ; preds = %cond.false26
  %call31 = call i32* @__errno_location() #8
  store i32 0, i32* %call31, align 4, !tbaa !3
  %9 = load i32* %status, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cond.false26, %cond.false30, %if.end22, %if.then20
  %retval.0 = phi i32 [ -1, %if.then20 ], [ %9, %cond.false30 ], [ 0, %cond.false26 ], [ %call10.lcssa, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #2

; Function Attrs: optsize
declare i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: optsize
declare void @Perl_despatch_signals() #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_pidgone(i32 %pid, i32 %status) #0 {
entry:
  %spid = alloca [22 x i8], align 16
  %arraydecay = getelementptr inbounds [22 x i8]* %spid, i64 0, i64 0
  %conv = sext i32 %pid to i64
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i64 %conv) #8
  %0 = load %struct.hv** @PL_pidstatus, align 8, !tbaa !2
  %call3 = call i64 @strlen(i8* %arraydecay) #8
  %conv4 = trunc i64 %call3 to i32
  %call5 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %0, i8* %arraydecay, i32 %conv4, i32 1) #8
  %1 = load %struct.sv** %call5, align 8, !tbaa !2
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call7 = call signext i8 @Perl_sv_upgrade(%struct.sv* %1, i32 1) #8
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %conv9 = sext i32 %status to i64
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !2
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  store i64 %conv9, i64* %4, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_repeatcpy(i8* nocapture %to, i8* nocapture %from, i32 %len, i32 %count) #0 {
entry:
  %cmp = icmp eq i32 %len, 1
  %cmp117 = icmp sgt i32 %count, 0
  br i1 %cmp, label %if.then, label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %entry
  br i1 %cmp117, label %for.cond.preheader.lr.ph, label %while.end10

for.cond.preheader.lr.ph:                         ; preds = %while.cond2.preheader
  %cmp620 = icmp sgt i32 %len, 0
  %0 = add i32 %len, -1
  %1 = zext i32 %0 to i64
  %2 = add i64 %1, 1
  br label %for.cond.preheader

if.then:                                          ; preds = %entry
  br i1 %cmp117, label %while.body.lr.ph, label %while.end10

while.body.lr.ph:                                 ; preds = %if.then
  %3 = load i8* %from, align 1, !tbaa !0
  %4 = add i32 %count, -1
  %5 = zext i32 %4 to i64
  %6 = add i64 %5, 1
  call void @llvm.memset.p0i8.i64(i8* %to, i8 %3, i64 %6, i32 1, i1 false)
  br label %while.end10

for.cond.while.cond2.loopexit_crit_edge:          ; preds = %for.body
  %scevgep = getelementptr i8* %to.addr.127, i64 %2
  br label %while.cond2.loopexit

while.cond2.loopexit:                             ; preds = %for.cond.while.cond2.loopexit_crit_edge, %for.cond.preheader
  %to.addr.2.lcssa = phi i8* [ %scevgep, %for.cond.while.cond2.loopexit_crit_edge ], [ %to.addr.127, %for.cond.preheader ]
  %cmp4 = icmp sgt i32 %dec328, 0
  br i1 %cmp4, label %for.cond.preheader, label %while.end10

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %while.cond2.loopexit
  %dec328.in = phi i32 [ %count, %for.cond.preheader.lr.ph ], [ %dec328, %while.cond2.loopexit ]
  %to.addr.127 = phi i8* [ %to, %for.cond.preheader.lr.ph ], [ %to.addr.2.lcssa, %while.cond2.loopexit ]
  %dec328 = add nsw i32 %dec328.in, -1
  br i1 %cmp620, label %for.body, label %while.cond2.loopexit

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %to.addr.223 = phi i8* [ %incdec.ptr8, %for.body ], [ %to.addr.127, %for.cond.preheader ]
  %from.addr.122 = phi i8* [ %incdec.ptr7, %for.body ], [ %from, %for.cond.preheader ]
  %todo.021 = phi i32 [ %dec9, %for.body ], [ %len, %for.cond.preheader ]
  %incdec.ptr7 = getelementptr inbounds i8* %from.addr.122, i64 1
  %7 = load i8* %from.addr.122, align 1, !tbaa !0
  %incdec.ptr8 = getelementptr inbounds i8* %to.addr.223, i64 1
  store i8 %7, i8* %to.addr.223, align 1, !tbaa !0
  %dec9 = add nsw i32 %todo.021, -1
  %cmp6 = icmp sgt i32 %dec9, 0
  br i1 %cmp6, label %for.body, label %for.cond.while.cond2.loopexit_crit_edge

while.end10:                                      ; preds = %while.cond2.preheader, %while.cond2.loopexit, %if.then, %while.body.lr.ph
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_same_dirent(i8* %a, i8* %b) #0 {
entry:
  %tmpstatbuf1 = alloca %struct.stat, align 8
  %tmpstatbuf2 = alloca %struct.stat, align 8
  %call = call i8* @strrchr(i8* %a, i32 47) #8
  %call1 = call i8* @strrchr(i8* %b, i32 47) #8
  %0 = bitcast %struct.stat* %tmpstatbuf1 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #4
  %1 = bitcast %struct.stat* %tmpstatbuf2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #4
  %call2 = call %struct.sv* @Perl_sv_newmortal() #8
  %tobool = icmp eq i8* %call, null
  %incdec.ptr = getelementptr inbounds i8* %call, i64 1
  %fa.0 = select i1 %tobool, i8* %a, i8* %incdec.ptr
  %tobool3 = icmp eq i8* %call1, null
  %incdec.ptr5 = getelementptr inbounds i8* %call1, i64 1
  %fb.0 = select i1 %tobool3, i8* %b, i8* %incdec.ptr5
  %call8 = call i32 @strcmp(i8* %a, i8* %b) #8
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %cleanup

if.end11:                                         ; preds = %entry
  %cmp = icmp eq i8* %fa.0, %a
  br i1 %cmp, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end11
  call void @Perl_sv_setpv(%struct.sv* %call2, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #8
  br label %if.end14

if.else13:                                        ; preds = %if.end11
  %sub.ptr.lhs.cast = ptrtoint i8* %fa.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %a to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %call2, i8* %a, i64 %sub.ptr.sub) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  %sv_any = getelementptr inbounds %struct.sv* %call2, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv = bitcast i8* %2 to i8**
  %3 = load i8** %xpv_pv, align 8, !tbaa !2
  %call15 = call i32 @stat(i8* %3, %struct.stat* %tmpstatbuf1) #8
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end14
  %cmp19 = icmp eq i8* %fb.0, %b
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end18
  call void @Perl_sv_setpv(%struct.sv* %call2, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #8
  br label %if.end25

if.else21:                                        ; preds = %if.end18
  %sub.ptr.lhs.cast22 = ptrtoint i8* %fb.0 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %b to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  call void @Perl_sv_setpvn(%struct.sv* %call2, i8* %b, i64 %sub.ptr.sub24) #8
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then20
  %4 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv27 = bitcast i8* %4 to i8**
  %5 = load i8** %xpv_pv27, align 8, !tbaa !2
  %call28 = call i32 @stat(i8* %5, %struct.stat* %tmpstatbuf2) #8
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end25
  %st_dev = getelementptr inbounds %struct.stat* %tmpstatbuf1, i64 0, i32 0
  %6 = load i64* %st_dev, align 8, !tbaa !4
  %st_dev32 = getelementptr inbounds %struct.stat* %tmpstatbuf2, i64 0, i32 0
  %7 = load i64* %st_dev32, align 8, !tbaa !4
  %cmp33 = icmp eq i64 %6, %7
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end31
  %st_ino = getelementptr inbounds %struct.stat* %tmpstatbuf1, i64 0, i32 1
  %8 = load i64* %st_ino, align 8, !tbaa !4
  %st_ino34 = getelementptr inbounds %struct.stat* %tmpstatbuf2, i64 0, i32 1
  %9 = load i64* %st_ino34, align 8, !tbaa !4
  %cmp35 = icmp eq i64 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end31
  %10 = phi i1 [ false, %if.end31 ], [ %cmp35, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end14, %entry, %land.end
  %retval.0 = phi i32 [ %land.ext, %land.end ], [ 0, %entry ], [ 0, %if.end14 ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end(i64 144, i8* %1) #4
  call void @llvm.lifetime.end(i64 144, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #2

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_find_script(i8* %scriptname, i8 signext %dosearch, i8** nocapture %search_ext, i32 %flags) #0 {
entry:
  %tobool101 = icmp eq i8* %scriptname, null
  br i1 %tobool101, label %cond.end105, label %cond.true102

cond.true102:                                     ; preds = %entry
  %call103 = tail call i8* @Perl_savepv(i8* %scriptname) #9
  br label %cond.end105

cond.end105:                                      ; preds = %entry, %cond.true102
  %cond106 = phi i8* [ %call103, %cond.true102 ], [ null, %entry ]
  ret i8* %cond106
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define noalias i8* @Perl_get_context() #7 {
entry:
  ret i8* null
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_set_context(i8* nocapture %t) #7 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i8** @Perl_get_op_names() #7 {
entry:
  ret i8** getelementptr inbounds ([0 x i8*]* @PL_op_name, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone uwtable
define i8** @Perl_get_op_descs() #7 {
entry:
  ret i8** getelementptr inbounds ([0 x i8*]* @PL_op_desc, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @Perl_get_no_modify() #7 {
entry:
  ret i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone uwtable
define i32* @Perl_get_opargs() #7 {
entry:
  ret i32* getelementptr inbounds ([0 x i32]* @PL_opargs, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone uwtable
define [0 x %struct.op* ()*]* @Perl_get_ppaddr() #7 {
entry:
  ret [0 x %struct.op* ()*]* @PL_ppaddr
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_getenv_len(i8* nocapture %env_elem, i64* nocapture %len) #0 {
entry:
  %call = tail call i8* @getenv(i8* %env_elem) #8
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %call) #8
  store i64 %call1, i64* %len, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret i8* %call
}

; Function Attrs: nounwind optsize readnone uwtable
define %struct.mgvtbl* @Perl_get_vtbl(i32 %vtbl_id) #7 {
entry:
  %0 = icmp ult i32 %vtbl_id, 30
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %vtbl_id to i64
  %switch.gep = getelementptr inbounds [30 x %struct.mgvtbl*]* @switch.table, i64 0, i64 %1
  %switch.load = load %struct.mgvtbl** %switch.gep, align 8
  ret %struct.mgvtbl* %switch.load

sw.epilog:                                        ; preds = %entry
  ret %struct.mgvtbl* null
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_my_fflush_all() #0 {
entry:
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** null) #8
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_report_evil_fh(%struct.gv* %gv, %struct.io* %io, i32 %op) #0 {
entry:
  %cmp = icmp eq i32 %op, 26
  br i1 %cmp, label %lor.rhs, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp1 = icmp eq i32 %op, 207
  br i1 %cmp1, label %lor.rhs, label %cond.end4

cond.end4:                                        ; preds = %cond.false
  %idxprom = sext i32 %op to i64
  %arrayidx = getelementptr inbounds [0 x i8*]* @PL_op_desc, i64 0, i64 %idxprom
  %0 = load i8** %arrayidx, align 8, !tbaa !2
  switch i32 %op, label %lor.rhs [
    i32 262, label %lor.end
    i32 261, label %lor.end
    i32 260, label %lor.end
    i32 259, label %lor.end
    i32 258, label %lor.end
    i32 257, label %lor.end
    i32 256, label %lor.end
    i32 255, label %lor.end
    i32 254, label %lor.end
    i32 253, label %lor.end
    i32 252, label %lor.end
    i32 251, label %lor.end
    i32 250, label %lor.end
    i32 249, label %lor.end
    i32 248, label %lor.end
    i32 247, label %lor.end
    i32 246, label %lor.end
    i32 244, label %lor.end
    i32 243, label %lor.end
    i32 242, label %lor.end
    i32 241, label %lor.end
    i32 240, label %lor.end
    i32 239, label %lor.end
    i32 238, label %lor.end
    i32 237, label %lor.end
    i32 236, label %lor.end
  ]

lor.rhs:                                          ; preds = %entry, %cond.false, %cond.end4
  %cond5350 = phi i8* [ %0, %cond.end4 ], [ getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), %cond.false ], [ getelementptr inbounds ([9 x i8]* @.str23, i64 0, i64 0), %entry ]
  %cmp56 = icmp eq i32 %op, 245
  %phitmp = select i1 %cmp56, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0)
  br label %lor.end

lor.end:                                          ; preds = %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %cond.end4, %lor.rhs
  %cond5349 = phi i8* [ %0, %cond.end4 ], [ %cond5350, %lor.rhs ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ], [ %0, %cond.end4 ]
  %1 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ %phitmp, %lor.rhs ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end4 ]
  switch i32 %op, label %lor.rhs83 [
    i32 233, label %lor.end87
    i32 232, label %lor.end87
    i32 231, label %lor.end87
    i32 230, label %lor.end87
    i32 229, label %lor.end87
    i32 228, label %lor.end87
    i32 227, label %lor.end87
    i32 226, label %lor.end87
    i32 225, label %lor.end87
    i32 224, label %lor.end87
    i32 223, label %lor.end87
    i32 215, label %lor.end87
    i32 214, label %lor.end87
  ]

lor.rhs83:                                        ; preds = %lor.end
  %tobool = icmp eq %struct.gv* %gv, null
  %tobool84 = icmp eq %struct.io* %io, null
  %or.cond = or i1 %tobool, %tobool84
  br i1 %or.cond, label %lor.end87, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs83
  %sv_any = getelementptr inbounds %struct.io* %io, i64 0, i32 0
  %2 = load %struct.xpvio** %sv_any, align 8, !tbaa !2
  %xio_type = getelementptr inbounds %struct.xpvio* %2, i64 0, i32 21
  %3 = load i8* %xio_type, align 1, !tbaa !0
  %cmp85 = icmp eq i8 %3, 115
  %phitmp341 = select i1 %cmp85, i8* getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0)
  br label %lor.end87

lor.end87:                                        ; preds = %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.end, %lor.rhs83, %land.rhs
  %4 = phi i8* [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), %lor.rhs83 ], [ %phitmp341, %land.rhs ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ], [ getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), %lor.end ]
  %tobool89 = icmp ne %struct.gv* %gv, null
  br i1 %tobool89, label %land.lhs.true90, label %if.end

land.lhs.true90:                                  ; preds = %lor.end87
  %sv_flags = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %5, 255
  %cmp91 = icmp eq i32 %and, 13
  br i1 %cmp91, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true90
  %sv_any93 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any93, align 8, !tbaa !2
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp, align 8, !tbaa !2
  %gp_egv = getelementptr inbounds %struct.gp* %7, i64 0, i32 6
  %8 = load %struct.gv** %gp_egv, align 8, !tbaa !2
  %tobool94 = icmp eq %struct.gv* %8, null
  %gv. = select i1 %tobool94, %struct.gv* %gv, %struct.gv* %8
  %sv_any102 = getelementptr inbounds %struct.gv* %gv., i64 0, i32 0
  %9 = load %struct.xpvgv** %sv_any102, align 8, !tbaa !2
  %xgv_name = getelementptr inbounds %struct.xpvgv* %9, i64 0, i32 8
  %10 = load i8** %xgv_name, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true90, %lor.end87
  %name.0 = phi i8* [ %10, %if.then ], [ null, %land.lhs.true90 ], [ null, %lor.end87 ]
  %cmp106 = icmp eq i32 %op, -1
  %11 = and i32 %op, -2
  %12 = icmp eq i32 %11, -2
  br i1 %12, label %if.then108, label %if.else145

if.then108:                                       ; preds = %if.end
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings, align 8, !tbaa !2
  %cmp109 = icmp eq %struct.sv* %14, null
  br i1 %cmp109, label %lor.lhs.false126, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.then108
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings112 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings112, align 8, !tbaa !2
  %cmp113 = icmp eq %struct.sv* %16, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp113, label %lor.lhs.false126, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true111
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings116 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings116, align 8, !tbaa !2
  %cmp117 = icmp eq %struct.sv* %18, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp117, label %if.then134, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %land.lhs.true115
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings120 = getelementptr inbounds %struct.cop* %19, i64 0, i32 14
  %20 = load %struct.sv** %cop_warnings120, align 8, !tbaa !2
  %sv_any121 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %21 = load i8** %sv_any121, align 8, !tbaa !2
  %xpv_pv = bitcast i8* %21 to i8**
  %22 = load i8** %xpv_pv, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i8* %22, i64 1
  %23 = load i8* %arrayidx122, align 1, !tbaa !0
  %and124 = and i8 %23, 4
  %tobool125 = icmp eq i8 %and124, 0
  br i1 %tobool125, label %lor.lhs.false126, label %if.then134

lor.lhs.false126:                                 ; preds = %lor.lhs.false119, %land.lhs.true111, %if.then108
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings127 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings127, align 8, !tbaa !2
  %cmp128 = icmp eq %struct.sv* %25, null
  br i1 %cmp128, label %land.lhs.true130, label %if.end223

land.lhs.true130:                                 ; preds = %lor.lhs.false126
  %26 = load i8* @PL_dowarn, align 1, !tbaa !0
  %and132 = and i8 %26, 1
  %tobool133 = icmp eq i8 %and132, 0
  br i1 %tobool133, label %if.end223, label %if.then134

if.then134:                                       ; preds = %lor.lhs.false119, %land.lhs.true130, %land.lhs.true115
  %cond137 = select i1 %cmp106, i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0)
  %tobool138 = icmp eq i8* %name.0, null
  br i1 %tobool138, label %if.else, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.then134
  %27 = load i8* %name.0, align 1, !tbaa !0
  %tobool141 = icmp eq i8 %27, 0
  br i1 %tobool141, label %if.else, label %if.then142

if.then142:                                       ; preds = %land.lhs.true139
  tail call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([36 x i8]* @.str30, i64 0, i64 0), i8* %name.0, i8* %cond137) #9
  br label %if.end223

if.else:                                          ; preds = %land.lhs.true139, %if.then134
  tail call void (i32, i8*, ...)* @Perl_warner(i32 5, i8* getelementptr inbounds ([33 x i8]* @.str31, i64 0, i64 0), i8* %cond137) #9
  br label %if.end223

if.else145:                                       ; preds = %if.end
  %tobool89.not = xor i1 %tobool89, true
  %tobool148 = icmp eq %struct.io* %io, null
  %or.cond346 = or i1 %tobool148, %tobool89.not
  br i1 %or.cond346, label %if.else156, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %if.else145
  %sv_any150 = getelementptr inbounds %struct.io* %io, i64 0, i32 0
  %28 = load %struct.xpvio** %sv_any150, align 8, !tbaa !2
  %xio_type151 = getelementptr inbounds %struct.xpvio* %28, i64 0, i32 21
  %29 = load i8* %xio_type151, align 1, !tbaa !0
  %cmp153 = icmp eq i8 %29, 32
  br i1 %cmp153, label %if.end157, label %if.else156

if.else156:                                       ; preds = %if.else145, %land.lhs.true149
  br label %if.end157

if.end157:                                        ; preds = %land.lhs.true149, %if.else156
  %vile.0 = phi i8* [ getelementptr inbounds ([9 x i8]* @.str33, i64 0, i64 0), %if.else156 ], [ getelementptr inbounds ([7 x i8]* @.str32, i64 0, i64 0), %land.lhs.true149 ]
  %warn_type.0 = phi i32 [ 11, %if.else156 ], [ 6, %land.lhs.true149 ]
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings158 = getelementptr inbounds %struct.cop* %30, i64 0, i32 14
  %31 = load %struct.sv** %cop_warnings158, align 8, !tbaa !2
  %cmp159 = icmp eq %struct.sv* %31, null
  br i1 %cmp159, label %lor.lhs.false179, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %if.end157
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings162 = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings162, align 8, !tbaa !2
  %cmp163 = icmp eq %struct.sv* %33, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp163, label %lor.lhs.false179, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %land.lhs.true161
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings166 = getelementptr inbounds %struct.cop* %34, i64 0, i32 14
  %35 = load %struct.sv** %cop_warnings166, align 8, !tbaa !2
  %cmp167 = icmp eq %struct.sv* %35, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp167, label %if.then187, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %land.lhs.true165
  %mul = shl nuw nsw i32 %warn_type.0, 1
  %div = lshr i32 %warn_type.0, 2
  %idxprom170344 = zext i32 %div to i64
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings171 = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings171, align 8, !tbaa !2
  %sv_any172 = getelementptr inbounds %struct.sv* %37, i64 0, i32 0
  %38 = load i8** %sv_any172, align 8, !tbaa !2
  %xpv_pv173 = bitcast i8* %38 to i8**
  %39 = load i8** %xpv_pv173, align 8, !tbaa !2
  %arrayidx174 = getelementptr inbounds i8* %39, i64 %idxprom170344
  %40 = load i8* %arrayidx174, align 1, !tbaa !0
  %conv175 = sext i8 %40 to i32
  %rem = and i32 %mul, 6
  %shl = shl i32 1, %rem
  %and177 = and i32 %conv175, %shl
  %tobool178 = icmp eq i32 %and177, 0
  br i1 %tobool178, label %lor.lhs.false179, label %if.then187

lor.lhs.false179:                                 ; preds = %lor.lhs.false169, %land.lhs.true161, %if.end157
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !2
  %cop_warnings180 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings180, align 8, !tbaa !2
  %cmp181 = icmp eq %struct.sv* %42, null
  br i1 %cmp181, label %land.lhs.true183, label %if.end223

land.lhs.true183:                                 ; preds = %lor.lhs.false179
  %43 = load i8* @PL_dowarn, align 1, !tbaa !0
  %and185 = and i8 %43, 1
  %tobool186 = icmp eq i8 %and185, 0
  br i1 %tobool186, label %if.end223, label %if.then187

if.then187:                                       ; preds = %lor.lhs.false169, %land.lhs.true183, %land.lhs.true165
  %tobool188 = icmp eq i8* %name.0, null
  br i1 %tobool188, label %if.else204, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %if.then187
  %44 = load i8* %name.0, align 1, !tbaa !0
  %tobool191 = icmp eq i8 %44, 0
  br i1 %tobool191, label %if.else204, label %if.then192

if.then192:                                       ; preds = %land.lhs.true189
  tail call void (i32, i8*, ...)* @Perl_warner(i32 %warn_type.0, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0), i8* %cond5349, i8* %1, i8* %vile.0, i8* %4, i8* %name.0) #9
  br i1 %tobool148, label %if.end223, label %land.lhs.true194

land.lhs.true194:                                 ; preds = %if.then192
  %sv_any195 = getelementptr inbounds %struct.io* %io, i64 0, i32 0
  %45 = load %struct.xpvio** %sv_any195, align 8, !tbaa !2
  %xiou_dirp = getelementptr inbounds %struct.xpvio* %45, i64 0, i32 9, i32 0
  %46 = load %struct.__dirstream** %xiou_dirp, align 8, !tbaa !2
  %tobool196 = icmp eq %struct.__dirstream* %46, null
  br i1 %tobool196, label %if.end223, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %land.lhs.true194
  %xio_flags = getelementptr inbounds %struct.xpvio* %45, i64 0, i32 22
  %47 = load i8* %xio_flags, align 1, !tbaa !0
  %and200 = and i8 %47, 64
  %tobool201 = icmp eq i8 %and200, 0
  br i1 %tobool201, label %if.then202, label %if.end223

if.then202:                                       ; preds = %land.lhs.true197
  tail call void (i32, i8*, ...)* @Perl_warner(i32 %warn_type.0, i8* getelementptr inbounds ([49 x i8]* @.str35, i64 0, i64 0), i8* %cond5349, i8* %1, i8* %name.0) #9
  br label %if.end223

if.else204:                                       ; preds = %land.lhs.true189, %if.then187
  tail call void (i32, i8*, ...)* @Perl_warner(i32 %warn_type.0, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0), i8* %cond5349, i8* %1, i8* %vile.0, i8* %4) #9
  br i1 %or.cond346, label %if.end223, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %if.else204
  %sv_any209 = getelementptr inbounds %struct.io* %io, i64 0, i32 0
  %48 = load %struct.xpvio** %sv_any209, align 8, !tbaa !2
  %xiou_dirp211 = getelementptr inbounds %struct.xpvio* %48, i64 0, i32 9, i32 0
  %49 = load %struct.__dirstream** %xiou_dirp211, align 8, !tbaa !2
  %tobool212 = icmp eq %struct.__dirstream* %49, null
  br i1 %tobool212, label %if.end223, label %land.lhs.true213

land.lhs.true213:                                 ; preds = %land.lhs.true208
  %xio_flags215 = getelementptr inbounds %struct.xpvio* %48, i64 0, i32 22
  %50 = load i8* %xio_flags215, align 1, !tbaa !0
  %and217 = and i8 %50, 64
  %tobool218 = icmp eq i8 %and217, 0
  br i1 %tobool218, label %if.then219, label %if.end223

if.then219:                                       ; preds = %land.lhs.true213
  tail call void (i32, i8*, ...)* @Perl_warner(i32 %warn_type.0, i8* getelementptr inbounds ([46 x i8]* @.str37, i64 0, i64 0), i8* %cond5349, i8* %1) #9
  br label %if.end223

if.end223:                                        ; preds = %if.else204, %land.lhs.true130, %land.lhs.true197, %land.lhs.true194, %if.then192, %land.lhs.true213, %land.lhs.true208, %land.lhs.true183, %lor.lhs.false179, %if.then219, %if.then202, %lor.lhs.false126, %if.else, %if.then142
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_init_tm(%struct.tm* nocapture %ptm) #7 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_mini_mktime(%struct.tm* nocapture %ptm) #0 {
entry:
  %tm_year = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 5
  %0 = load i32* %tm_year, align 4, !tbaa !3
  %tm_mon = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 4
  %1 = load i32* %tm_mon, align 4, !tbaa !3
  %tm_mday = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 3
  %2 = load i32* %tm_mday, align 4, !tbaa !3
  %tm_yday = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 7
  %3 = load i32* %tm_yday, align 4, !tbaa !3
  %cmp = icmp sgt i32 %3, -1
  %cmp1 = icmp slt i32 %2, 1
  %or.cond = and i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %1, 1
  %or.cond212 = and i1 %or.cond, %cmp3
  %add5 = add nsw i32 %3, 1
  %month.0 = select i1 %or.cond212, i32 0, i32 %1
  %mday.0 = select i1 %or.cond212, i32 0, i32 %2
  %jday.0 = select i1 %or.cond212, i32 %add5, i32 0
  %cmp6 = icmp sgt i32 %month.0, 1
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %entry
  %add = add nsw i32 %0, 1900
  %add8 = add nsw i32 %month.0, 2
  br label %if.end11

if.else9:                                         ; preds = %entry
  %add10 = add nsw i32 %month.0, 14
  %dec = add nsw i32 %0, 1899
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %month.1 = phi i32 [ %add8, %if.then7 ], [ %add10, %if.else9 ]
  %year.0 = phi i32 [ %add, %if.then7 ], [ %dec, %if.else9 ]
  %mul = mul nsw i32 %year.0, 365
  %div = sdiv i32 %year.0, 4
  %div13.neg = sdiv i32 %year.0, -100
  %div14 = sdiv i32 %year.0, 400
  %mul16 = mul nsw i32 %month.1, 153
  %div17 = sdiv i32 %mul16, 5
  %add18 = add i32 %jday.0, %mday.0
  %add19 = add i32 %add18, %div
  %add12 = add i32 %add19, %mul
  %sub = add i32 %add12, %div13.neg
  %add15 = add i32 %sub, %div14
  %add20 = add i32 %add15, %div17
  %tm_sec = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 0
  %4 = load i32* %tm_sec, align 4, !tbaa !3
  %cmp21 = icmp ult i32 %4, 61
  br i1 %cmp21, label %if.end26, label %if.else23

if.else23:                                        ; preds = %if.end11
  store i32 0, i32* %tm_sec, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.end11, %if.else23
  %5 = phi i32 [ 0, %if.else23 ], [ %4, %if.end11 ]
  %secs.0 = phi i32 [ %4, %if.else23 ], [ 0, %if.end11 ]
  %tm_min = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 1
  %6 = load i32* %tm_min, align 4, !tbaa !3
  %mul27 = mul nsw i32 %6, 60
  %add28 = add nsw i32 %mul27, %secs.0
  %tm_hour = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 2
  %7 = load i32* %tm_hour, align 4, !tbaa !3
  %mul29 = mul nsw i32 %7, 3600
  %add30 = add nsw i32 %add28, %mul29
  %cmp31 = icmp slt i32 %add30, 0
  br i1 %cmp31, label %if.then32, label %if.else52

if.then32:                                        ; preds = %if.end26
  %div33 = sdiv i32 %add30, 86400
  %8 = mul i32 %div33, -86400
  %sub35 = add i32 %8, %add30
  %cmp36 = icmp slt i32 %sub35, 0
  br i1 %cmp36, label %if.then37, label %if.else45

if.then37:                                        ; preds = %if.then32
  %sub39 = add nsw i32 %div33, -1
  %add40 = add nsw i32 %sub39, %add20
  %9 = mul i32 %sub39, -86400
  %sub44 = add i32 %9, %add30
  br label %if.end58

if.else45:                                        ; preds = %if.then32
  %add47 = add nsw i32 %div33, %add20
  br label %if.end58

if.else52:                                        ; preds = %if.end26
  %cmp53 = icmp sgt i32 %add30, 86399
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.else52
  %div55 = sdiv i32 %add30, 86400
  %add56 = add nsw i32 %div55, %add20
  %rem = srem i32 %add30, 86400
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then54, %if.then37, %if.else45
  %secs.1 = phi i32 [ %sub44, %if.then37 ], [ %sub35, %if.else45 ], [ %rem, %if.then54 ], [ %add30, %if.else52 ]
  %yearday.0 = phi i32 [ %add40, %if.then37 ], [ %add47, %if.else45 ], [ %add56, %if.then54 ], [ %add20, %if.else52 ]
  %div59 = sdiv i32 %secs.1, 3600
  store i32 %div59, i32* %tm_hour, align 4, !tbaa !3
  %rem61 = srem i32 %secs.1, 3600
  %div62 = sdiv i32 %rem61, 60
  store i32 %div62, i32* %tm_min, align 4, !tbaa !3
  %rem64 = srem i32 %rem61, 60
  %add66 = add nsw i32 %5, %rem64
  store i32 %add66, i32* %tm_sec, align 4, !tbaa !3
  %sub67 = add nsw i32 %yearday.0, -123
  %div68 = sdiv i32 %sub67, 146097
  %mul69 = mul nsw i32 %div68, 400
  %rem70 = srem i32 %sub67, 146097
  %div71 = sdiv i32 %rem70, 36524
  %mul72 = mul nsw i32 %div71, 100
  %add73 = add nsw i32 %mul72, %mul69
  %rem74 = srem i32 %rem70, 36524
  %div75 = sdiv i32 %rem74, 1461
  %mul76 = shl i32 %div75, 2
  %add77 = add nsw i32 %add73, %mul76
  %rem78 = srem i32 %rem74, 1461
  %div79 = sdiv i32 %rem78, 365
  %add80 = add nsw i32 %add77, %div79
  %rem81 = srem i32 %rem78, 365
  %tobool = icmp eq i32 %rem81, 0
  br i1 %tobool, label %land.lhs.true82, label %if.else86

land.lhs.true82:                                  ; preds = %if.end58
  %rem70.off = add i32 %rem70, -146096
  %10 = icmp ult i32 %rem70.off, 36524
  br i1 %10, label %if.end99.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true82
  %rem78.off = add i32 %rem78, -1460
  %11 = icmp ult i32 %rem78.off, 365
  br i1 %11, label %if.end99.thread, label %if.else86

if.else86:                                        ; preds = %if.end58, %lor.lhs.false
  %add87 = add nsw i32 %rem81, 123
  %mul88 = mul nsw i32 %add87, 5
  %div89 = sdiv i32 %mul88, 153
  %mul90 = mul nsw i32 %div89, 153
  %div91 = sdiv i32 %mul90, 5
  %sub92 = sub nsw i32 %add87, %div91
  %cmp93 = icmp sgt i32 %mul88, 2141
  br i1 %cmp93, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.else86
  %sub95 = add nsw i32 %div89, -14
  %inc = add nsw i32 %add80, 1
  br label %if.end99

if.else96:                                        ; preds = %if.else86
  %sub97 = add nsw i32 %div89, -2
  br label %if.end99

if.end99.thread:                                  ; preds = %lor.lhs.false, %land.lhs.true82
  %sub100213 = add nsw i32 %add80, -1900
  store i32 %sub100213, i32* %tm_year, align 4, !tbaa !3
  br label %if.then103

if.end99:                                         ; preds = %if.then94, %if.else96
  %month.2 = phi i32 [ %sub95, %if.then94 ], [ %sub97, %if.else96 ]
  %year.1 = phi i32 [ %inc, %if.then94 ], [ %add80, %if.else96 ]
  %sub100 = add nsw i32 %year.1, -1900
  store i32 %sub100, i32* %tm_year, align 4, !tbaa !3
  %tobool102 = icmp eq i32 %add87, %div91
  br i1 %tobool102, label %if.else106, label %if.then103

if.then103:                                       ; preds = %if.end99.thread, %if.end99
  %yearday.1218 = phi i32 [ 29, %if.end99.thread ], [ %sub92, %if.end99 ]
  %year.1217 = phi i32 [ %add80, %if.end99.thread ], [ %year.1, %if.end99 ]
  %month.2215 = phi i32 [ 1, %if.end99.thread ], [ %month.2, %if.end99 ]
  store i32 %yearday.1218, i32* %tm_mday, align 4, !tbaa !3
  br label %if.end110

if.else106:                                       ; preds = %if.end99
  store i32 31, i32* %tm_mday, align 4, !tbaa !3
  %sub108 = add nsw i32 %month.2, -1
  br label %if.end110

if.end110:                                        ; preds = %if.else106, %if.then103
  %year.1216 = phi i32 [ %year.1, %if.else106 ], [ %year.1217, %if.then103 ]
  %storemerge = phi i32 [ %sub108, %if.else106 ], [ %month.2215, %if.then103 ]
  store i32 %storemerge, i32* %tm_mon, align 4, !tbaa !3
  %dec111 = add nsw i32 %year.1216, -1
  %12 = mul i32 %dec111, -365
  %div113.neg = sdiv i32 %dec111, -4
  %div115.neg.neg = sdiv i32 %dec111, 100
  %div117.neg = sdiv i32 %dec111, -400
  %add114.neg = add i32 %yearday.0, -429
  %sub116.neg = add i32 %add114.neg, %div113.neg
  %add118.neg = add i32 %sub116.neg, %12
  %add119.neg = add i32 %add118.neg, %div115.neg.neg
  %sub120 = add i32 %add119.neg, %div117.neg
  store i32 %sub120, i32* %tm_yday, align 4, !tbaa !3
  %tm_wday = getelementptr inbounds %struct.tm* %ptm, i64 0, i32 6
  %13 = load i32* %tm_wday, align 4, !tbaa !3
  %cmp122 = icmp ugt i32 %13, 6
  br i1 %cmp122, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end110
  %add124 = add nsw i32 %yearday.0, 6
  %rem125 = srem i32 %add124, 7
  store i32 %rem125, i32* %tm_wday, align 4, !tbaa !3
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end110
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Perl_my_strftime(i8* nocapture %fmt, i32 %sec, i32 %min, i32 %hour, i32 %mday, i32 %mon, i32 %year, i32 %wday, i32 %yday, i32 %isdst) #0 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([19 x i8]* @.str38, i64 0, i64 0)) #9
  ret i8* undef
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_getcwd_sv(%struct.sv* %sv) #0 {
entry:
  %statbuf = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #4
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 252
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call = call signext i8 @Perl_sv_upgrade(%struct.sv* %sv, i32 4) #8
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %call1 = call i32 @stat(i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), %struct.stat* %statbuf) #8
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %st_dev = getelementptr inbounds %struct.stat* %statbuf, i64 0, i32 0
  %2 = load i64* %st_dev, align 8, !tbaa !4
  %conv4 = trunc i64 %2 to i32
  %st_ino = getelementptr inbounds %struct.stat* %statbuf, i64 0, i32 1
  %3 = load i64* %st_ino, align 8, !tbaa !4
  %conv5 = trunc i64 %3 to i32
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %if.end102, %if.end
  %cino.0 = phi i32 [ %conv5, %if.end ], [ %conv19, %if.end102 ]
  %pathlen.0 = phi i32 [ 0, %if.end ], [ %add113, %if.end102 ]
  %cdev.0 = phi i32 [ %conv4, %if.end ], [ %conv17, %if.end102 ]
  %call6 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0)) #8
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.cond
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end10:                                         ; preds = %for.cond
  %call11 = call i32 @stat(i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), %struct.stat* %statbuf) #8
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %4 = load i64* %st_dev, align 8, !tbaa !4
  %conv17 = trunc i64 %4 to i32
  %5 = load i64* %st_ino, align 8, !tbaa !4
  %conv19 = trunc i64 %5 to i32
  %cmp20 = icmp eq i32 %cdev.0, %conv17
  %cmp22 = icmp eq i32 %cino.0, %conv19
  %or.cond = and i1 %cmp20, %cmp22
  br i1 %or.cond, label %for.end, label %if.end25

if.end25:                                         ; preds = %if.end15
  %call26 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #8
  %tobool27 = icmp eq %struct.__dirstream* %call26, null
  br i1 %tobool27, label %if.then28, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end25
  %call30212 = call %struct.dirent* @readdir(%struct.__dirstream* %call26) #8
  %cmp31213 = icmp eq %struct.dirent* %call30212, null
  br i1 %cmp31213, label %if.then77, label %while.body

if.then28:                                        ; preds = %if.end25
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %call30214 = phi %struct.dirent* [ %call30, %while.cond.backedge ], [ %call30212, %while.cond.preheader ]
  %arraydecay = getelementptr inbounds %struct.dirent* %call30214, i64 0, i32 4, i64 0
  %call33 = call i64 @strlen(i8* %arraydecay) #8
  %conv34 = trunc i64 %call33 to i32
  %6 = load i8* %arraydecay, align 1, !tbaa !0
  %cmp37 = icmp eq i8 %6, 46
  br i1 %cmp37, label %land.lhs.true39, label %if.end57

land.lhs.true39:                                  ; preds = %while.body
  %arrayidx41 = getelementptr inbounds %struct.dirent* %call30214, i64 0, i32 4, i64 1
  %7 = load i8* %arrayidx41, align 1, !tbaa !0
  switch i8 %7, label %if.end57 [
    i8 0, label %while.cond.backedge
    i8 46, label %land.lhs.true50
  ]

land.lhs.true50:                                  ; preds = %land.lhs.true39
  %arrayidx52 = getelementptr inbounds %struct.dirent* %call30214, i64 0, i32 4, i64 2
  %8 = load i8* %arrayidx52, align 1, !tbaa !0
  %cmp54 = icmp eq i8 %8, 0
  br i1 %cmp54, label %while.cond.backedge, label %if.end57

while.cond.backedge:                              ; preds = %land.lhs.true50, %land.lhs.true71, %if.end64, %land.lhs.true39
  %call30 = call %struct.dirent* @readdir(%struct.__dirstream* %call26) #8
  %cmp31 = icmp eq %struct.dirent* %call30, null
  br i1 %cmp31, label %if.then77, label %while.body

if.end57:                                         ; preds = %land.lhs.true39, %land.lhs.true50, %while.body
  %call60 = call i32 @stat(i8* %arraydecay, %struct.stat* %statbuf) #8
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end57
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %9 = load i64* %st_ino, align 8, !tbaa !4
  %conv68 = trunc i64 %9 to i32
  %cmp69 = icmp eq i32 %conv68, %cino.0
  br i1 %cmp69, label %land.lhs.true71, label %while.cond.backedge

land.lhs.true71:                                  ; preds = %if.end64
  %10 = load i64* %st_dev, align 8, !tbaa !4
  %conv66 = trunc i64 %10 to i32
  %cmp72 = icmp eq i32 %conv66, %cdev.0
  br i1 %cmp72, label %if.end78, label %while.cond.backedge

if.then77:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end78:                                         ; preds = %land.lhs.true71
  %add = add nsw i32 %conv34, %pathlen.0
  %cmp80 = icmp sgt i32 %add, 4094
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end78
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %add79 = add nsw i32 %add, 1
  %11 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_len = getelementptr inbounds i8* %11, i64 16
  %12 = bitcast i8* %xpv_len to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  %conv86 = sext i32 %add79 to i64
  %cmp87 = icmp ult i64 %13, %conv86
  br i1 %cmp87, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end83
  %call92 = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %conv86) #8
  br label %cond.end

cond.end:                                         ; preds = %if.end83, %cond.true
  %tobool94 = icmp eq i32 %pathlen.0, 0
  br i1 %tobool94, label %cond.end.if.end102_crit_edge, label %if.then95

cond.end.if.end102_crit_edge:                     ; preds = %cond.end
  %sext205.pre = shl i64 %call33, 32
  %conv110.pre = ashr exact i64 %sext205.pre, 32
  br label %if.end102

if.then95:                                        ; preds = %cond.end
  %14 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv97 = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv97, align 8, !tbaa !2
  %sext = shl i64 %call33, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr98 = getelementptr inbounds i8* %15, i64 %add.ptr.sum
  %conv101 = sext i32 %pathlen.0 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr98, i8* %15, i64 %conv101, i32 1, i1 false)
  br label %if.end102

if.end102:                                        ; preds = %cond.end.if.end102_crit_edge, %if.then95
  %conv110.pre-phi = phi i64 [ %conv110.pre, %cond.end.if.end102_crit_edge ], [ %idx.ext, %if.then95 ]
  %16 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv104 = bitcast i8* %16 to i8**
  %17 = load i8** %xpv_pv104, align 8, !tbaa !2
  store i8 47, i8* %17, align 1, !tbaa !0
  %18 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv106 = bitcast i8* %18 to i8**
  %19 = load i8** %xpv_pv106, align 8, !tbaa !2
  %add.ptr107 = getelementptr inbounds i8* %19, i64 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr107, i8* %arraydecay, i64 %conv110.pre-phi, i32 1, i1 false)
  %add112 = add i32 %pathlen.0, 1
  %add113 = add i32 %add112, %conv34
  %call114 = call i32 @closedir(%struct.__dirstream* %call26) #8
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then117, label %for.cond

if.then117:                                       ; preds = %if.end102
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

for.end:                                          ; preds = %if.end15
  %tobool119 = icmp eq i32 %pathlen.0, 0
  br i1 %tobool119, label %if.end138, label %if.then120

if.then120:                                       ; preds = %for.end
  %conv121 = sext i32 %pathlen.0 to i64
  %20 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_cur = getelementptr inbounds i8* %20, i64 8
  %21 = bitcast i8* %xpv_cur to i64*
  store i64 %conv121, i64* %21, align 8, !tbaa !4
  %xpv_pv124 = bitcast i8* %20 to i8**
  %22 = load i8** %xpv_pv124, align 8, !tbaa !2
  %add.ptr127 = getelementptr inbounds i8* %22, i64 %conv121
  store i8 0, i8* %add.ptr127, align 1, !tbaa !0
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %and129 = and i32 %23, 1223753727
  %or = or i32 %and129, 67371008
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %24 = load i8** %sv_any, align 8, !tbaa !2
  %xpv_pv132 = bitcast i8* %24 to i8**
  %25 = load i8** %xpv_pv132, align 8, !tbaa !2
  %call133 = call i32 @chdir(i8* %25) #8
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.then120
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end138:                                        ; preds = %for.end, %if.then120
  %call139 = call i32 @stat(i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), %struct.stat* %statbuf) #8
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.end138
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %cleanup

if.end143:                                        ; preds = %if.end138
  %26 = load i64* %st_dev, align 8, !tbaa !4
  %conv145 = trunc i64 %26 to i32
  %cmp148 = icmp eq i32 %conv145, %conv4
  br i1 %cmp148, label %lor.lhs.false150, label %if.then153

lor.lhs.false150:                                 ; preds = %if.end143
  %27 = load i64* %st_ino, align 8, !tbaa !4
  %conv147 = trunc i64 %27 to i32
  %cmp151 = icmp eq i32 %conv147, %conv5
  br i1 %cmp151, label %cleanup, label %if.then153

if.then153:                                       ; preds = %lor.lhs.false150, %if.end143
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([64 x i8]* @.str40, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then153, %lor.lhs.false150, %if.then142, %if.then136, %if.then117, %if.then82, %if.then77, %if.then63, %if.then28, %if.then14, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then14 ], [ 0, %if.then136 ], [ 0, %if.then142 ], [ 0, %if.then63 ], [ 0, %if.then82 ], [ 0, %if.then117 ], [ 0, %if.then77 ], [ 0, %if.then28 ], [ 1, %lor.lhs.false150 ], [ 1, %if.then153 ]
  call void @llvm.lifetime.end(i64 144, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #2

; Function Attrs: optsize
declare i32 @chdir(i8*) #2

; Function Attrs: nounwind optsize
declare noalias %struct.__dirstream* @opendir(i8* nocapture) #1

; Function Attrs: optsize
declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i32 @closedir(%struct.__dirstream* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Perl_my_socketpair(i32 %family, i32 %type, i32 %protocol, i32* nocapture %fd) #7 {
entry:
  ret i32 -1
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_sv_nosharing(%struct.sv* nocapture %sv) #7 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_sv_nolocking(%struct.sv* nocapture %sv) #7 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_sv_nounlocking(%struct.sv* nocapture %sv) #7 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_parse_unicode_opts(i8** nocapture %popt) #0 {
entry:
  %0 = load i8** %popt, align 8, !tbaa !2
  %1 = load i8* %0, align 1, !tbaa !0
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.end60, label %if.then

if.then:                                          ; preds = %entry
  %.off = add i8 %1, -48
  %2 = icmp ult i8 %.off, 10
  br i1 %2, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %call = tail call i32 @atoi(i8* %0) #8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then5
  %3 = phi i8 [ %1, %if.then5 ], [ %.pre, %while.cond.while.cond_crit_edge ]
  %p.0 = phi i8* [ %0, %if.then5 ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %.off93 = add i8 %3, -48
  %4 = icmp ult i8 %.off93, 10
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1
  br i1 %4, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %while.cond
  switch i8 %3, label %if.then22 [
    i8 0, label %if.end55
    i8 10, label %if.end55
    i8 13, label %if.end55
  ]

if.then22:                                        ; preds = %while.end
  %conv12 = sext i8 %3 to i32
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str41, i64 0, i64 0), i32 %conv12) #9
  br label %if.end55

for.body:                                         ; preds = %if.then, %for.inc
  %5 = phi i8 [ %6, %for.inc ], [ %1, %if.then ]
  %opt.096 = phi i32 [ %opt.1, %for.inc ], [ 0, %if.then ]
  %p.195 = phi i8* [ %incdec.ptr52, %for.inc ], [ %0, %if.then ]
  %conv25 = sext i8 %5 to i32
  switch i32 %conv25, label %sw.default [
    i32 73, label %sw.bb
    i32 79, label %sw.bb26
    i32 69, label %sw.bb28
    i32 83, label %sw.bb30
    i32 105, label %sw.bb32
    i32 111, label %sw.bb34
    i32 68, label %sw.bb36
    i32 76, label %sw.bb38
    i32 65, label %sw.bb40
  ]

sw.bb:                                            ; preds = %for.body
  %or = or i32 %opt.096, 1
  br label %for.inc

sw.bb26:                                          ; preds = %for.body
  %or27 = or i32 %opt.096, 2
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  %or29 = or i32 %opt.096, 4
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  %or31 = or i32 %opt.096, 7
  br label %for.inc

sw.bb32:                                          ; preds = %for.body
  %or33 = or i32 %opt.096, 8
  br label %for.inc

sw.bb34:                                          ; preds = %for.body
  %or35 = or i32 %opt.096, 16
  br label %for.inc

sw.bb36:                                          ; preds = %for.body
  %or37 = or i32 %opt.096, 24
  br label %for.inc

sw.bb38:                                          ; preds = %for.body
  %or39 = or i32 %opt.096, 64
  br label %for.inc

sw.bb40:                                          ; preds = %for.body
  %or41 = or i32 %opt.096, 32
  br label %for.inc

sw.default:                                       ; preds = %for.body
  switch i8 %5, label %if.then49 [
    i8 10, label %for.inc
    i8 13, label %for.inc
  ]

if.then49:                                        ; preds = %sw.default
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str41, i64 0, i64 0), i32 %conv25) #9
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %sw.default, %sw.bb, %sw.bb26, %sw.bb28, %sw.bb30, %sw.bb32, %sw.bb34, %sw.bb36, %sw.bb38, %sw.bb40, %if.then49
  %opt.1 = phi i32 [ %opt.096, %if.then49 ], [ %opt.096, %sw.default ], [ %or41, %sw.bb40 ], [ %or39, %sw.bb38 ], [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ %or29, %sw.bb28 ], [ %or27, %sw.bb26 ], [ %or, %sw.bb ], [ %opt.096, %sw.default ]
  %incdec.ptr52 = getelementptr inbounds i8* %p.195, i64 1
  %6 = load i8* %incdec.ptr52, align 1, !tbaa !0
  %tobool24 = icmp eq i8 %6, 0
  br i1 %tobool24, label %if.end55, label %for.body

if.end55:                                         ; preds = %for.inc, %while.end, %while.end, %while.end, %if.then22
  %p.2 = phi i8* [ %p.0, %if.then22 ], [ %p.0, %while.end ], [ %p.0, %while.end ], [ %p.0, %while.end ], [ %incdec.ptr52, %for.inc ]
  %opt.2 = phi i32 [ %call, %if.then22 ], [ %call, %while.end ], [ %call, %while.end ], [ %call, %while.end ], [ %opt.1, %for.inc ]
  %and = and i32 %opt.2, -256
  %tobool56 = icmp eq i32 %and, 0
  br i1 %tobool56, label %if.end60, label %if.then57

if.then57:                                        ; preds = %if.end55
  %conv59 = zext i32 %and to i64
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str42, i64 0, i64 0), i64 %conv59) #9
  br label %if.end60

if.end60:                                         ; preds = %entry, %if.end55, %if.then57
  %opt.292 = phi i32 [ %opt.2, %if.end55 ], [ %opt.2, %if.then57 ], [ 95, %entry ]
  %p.291 = phi i8* [ %p.2, %if.end55 ], [ %p.2, %if.then57 ], [ %0, %entry ]
  store i8* %p.291, i8** %popt, align 8, !tbaa !2
  ret i32 %opt.292
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Perl_seed() #7 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @Perl_get_hash_seed() #7 {
entry:
  ret i64 0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"int", metadata !0}
!4 = metadata !{metadata !"long", metadata !0}
!5 = metadata !{metadata !"short", metadata !0}
