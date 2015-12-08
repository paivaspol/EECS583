; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/mg.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%union.any = type { i8* }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@PL_Sv = external global %struct.sv*
@PL_savestack = external global %union.any*
@PL_curcop = external global %struct.cop*
@.str = private unnamed_addr constant [27 x i8] c"Size magic not implemented\00", align 1
@PL_curpm = external global %struct.pmop*
@PL_no_modify = external constant [0 x i8]
@.str1 = private unnamed_addr constant [22 x i8] c"panic: magic_len: %ld\00", align 1
@PL_dowarn = external global i8
@PL_bodytarget = external global %struct.sv*
@PL_minus_c = external global i8
@PL_debug = external global i32
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@PL_encoding = external global %struct.sv*
@PL_maxsysfd = external global i32
@PL_hints = external global i32
@PL_inplace = external global i8*
@PL_sv_undef = external global %struct.sv
@PL_osname = external global i8*
@PL_tainting = external global i8
@.str4 = private unnamed_addr constant [5 x i8] c"\0FPEN\00", align 1
@PL_compiling = external global %struct.cop
@PL_perldb = external global i32
@PL_lex_state = external global i32
@PL_in_eval = external global i32
@PL_basetime = external global i64
@.str5 = private unnamed_addr constant [6 x i8] c"\14AINT\00", align 1
@PL_taint_warn = external global i8
@PL_unsafe = external global i8
@.str6 = private unnamed_addr constant [8 x i8] c"\15NICODE\00", align 1
@PL_unicode = external global i32
@.str7 = private unnamed_addr constant [11 x i8] c"\15TF8LOCALE\00", align 1
@PL_utf8locale = external global i8
@.str8 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] zeroinitializer, align 1
@.str10 = private unnamed_addr constant [15 x i8] c"warnings::Bits\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"UUUUUUUUUUUU\00", align 1
@PL_tainted = external global i8
@PL_last_in_gv = external global %struct.gv*
@PL_statusvalue = external global i32
@PL_defoutgv = external global %struct.gv*
@.str13 = private unnamed_addr constant [5 x i8] c"_TOP\00", align 1
@PL_ors_sv = external global %struct.sv*
@PL_ofmt = external global i8*
@PL_uid = external global i32
@PL_euid = external global i32
@PL_gid = external global i32
@PL_egid = external global i32
@.str14 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_localizing = external global i32
@PL_use_safe_putenv = external global i32
@environ = external global i8**
@PL_origenviron = external global i8**
@PL_psig_ptr = external global %struct.sv**
@.str15 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"__DIE__\00", align 1
@PL_diehook = external global %struct.sv*
@.str17 = private unnamed_addr constant [9 x i8] c"__WARN__\00", align 1
@PL_warnhook = external global %struct.sv*
@.str18 = private unnamed_addr constant [17 x i8] c"No such hook: %s\00", align 1
@PL_sig_pending = external global i32
@PL_psig_name = external global %struct.sv**
@PL_psig_pend = external global i32*
@PL_signals = external global i32
@PL_sighandlerp = external global void (i32)*
@.str19 = private unnamed_addr constant [22 x i8] c"No such signal: SIG%s\00", align 1
@PL_csighandlerp = external global void (i32)*
@.str20 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_sub_generation = external global i32
@PL_amagic_generation = external global i64
@.str22 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_curstackinfo = external global %struct.stackinfo*
@PL_stack_base = external global %struct.sv**
@PL_curstack = external global %struct.av*
@PL_stack_max = external global %struct.sv**
@.str23 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@PL_stderrgv = external global %struct.gv*
@.str24 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@.str26 = private unnamed_addr constant [10 x i8] c"FETCHSIZE\00", align 1
@PL_markstack_ptr = external global i32*
@PL_markstack_max = external global i32*
@.str27 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"NEXTKEY\00", align 1
@.str29 = private unnamed_addr constant [9 x i8] c"FIRSTKEY\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@PL_DBline = external global %struct.gv*
@PL_Xpv = external global %struct.xpv*
@.str32 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@PL_no_helem = external constant [0 x i8]
@PL_no_aelem = external constant [0 x i8]
@.str33 = private unnamed_addr constant [26 x i8] c"panic: magic_killbackrefs\00", align 1
@PL_regfree = external global void (%struct.regexp*)*
@.str34 = private unnamed_addr constant [17 x i8] c"assigning to $^O\00", align 1
@PL_DBsingle = external global %struct.sv*
@PL_multiline = external global i32
@PL_rs = external global %struct.sv*
@PL_ofs_sv = external global %struct.sv*
@PL_delaymagic = external global i32
@.str35 = private unnamed_addr constant [26 x i8] c"setruid() not implemented\00", align 1
@.str36 = private unnamed_addr constant [26 x i8] c"seteuid() not implemented\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"setrgid() not implemented\00", align 1
@.str38 = private unnamed_addr constant [26 x i8] c"setegid() not implemented\00", align 1
@PL_chopset = external global i8*
@PL_origalen = external global i32
@PL_origargv = external global i8**
@PL_origargc = external global i32
@PL_sig_name = external global [0 x i8*]
@PL_sig_num = external global [0 x i32]
@.str39 = private unnamed_addr constant [5 x i8] c"CHLD\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"CLD\00", align 1
@PL_op = external global %struct.op*
@PL_savestack_ix = external global i32
@PL_savestack_max = external global i32
@PL_retstack_ix = external global i32
@PL_retstack_max = external global i32
@PL_scopestack_ix = external global i32
@PL_scopestack_max = external global i32
@.str41 = private unnamed_addr constant [51 x i8] c"Signal SIG%s received, but no signal handler set.\0A\00", align 1
@PL_retstack = external global %struct.op**
@.str42 = private unnamed_addr constant [33 x i8] c"SIG%s handler \22%s\22 not defined.\0A\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"__ANON__\00", align 1
@sig_sv = internal unnamed_addr global %struct.sv* null, align 8
@PL_errgv = external global %struct.gv*

; Function Attrs: nounwind optsize uwtable
define void @Perl_mg_magical(%struct.sv* nocapture %sv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %mg.029 = load %struct.magic** %1, align 8
  %tobool30 = icmp eq %struct.magic* %mg.029, null
  br i1 %tobool30, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sv_flags10 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %mg.031 = phi %struct.magic* [ %mg.029, %for.body.lr.ph ], [ %mg.0, %for.inc ]
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.031, i64 0, i32 1
  %2 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.mgvtbl* %2, null
  br i1 %tobool1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %svt_get = getelementptr inbounds %struct.mgvtbl* %2, i64 0, i32 0
  %3 = load i32 (%struct.sv*, %struct.magic*)** %svt_get, align 8, !tbaa !0
  %tobool2 = icmp eq i32 (%struct.sv*, %struct.magic*)* %3, null
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %mg_flags = getelementptr inbounds %struct.magic* %mg.031, i64 0, i32 4
  %4 = load i8* %mg_flags, align 1, !tbaa !1
  %and = and i8 %4, 4
  %tobool3 = icmp eq i8 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %5 = load i32* %sv_flags10, align 4, !tbaa !3
  %or = or i32 %5, 8192
  store i32 %or, i32* %sv_flags10, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then4
  %svt_set = getelementptr inbounds %struct.mgvtbl* %2, i64 0, i32 1
  %6 = load i32 (%struct.sv*, %struct.magic*)** %svt_set, align 8, !tbaa !0
  %tobool5 = icmp eq i32 (%struct.sv*, %struct.magic*)* %6, null
  %.pre = load i32* %sv_flags10, align 4, !tbaa !3
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %or8 = or i32 %.pre, 16384
  store i32 %or8, i32* %sv_flags10, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %7 = phi i32 [ %or8, %if.then6 ], [ %.pre, %if.end ]
  %and11 = and i32 %7, 24576
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %svt_clear = getelementptr inbounds %struct.mgvtbl* %2, i64 0, i32 3
  %8 = load i32 (%struct.sv*, %struct.magic*)** %svt_clear, align 8, !tbaa !0
  %tobool13 = icmp eq i32 (%struct.sv*, %struct.magic*)* %8, null
  br i1 %tobool13, label %for.inc, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.end9
  %or16 = or i32 %7, 32768
  store i32 %or16, i32* %sv_flags10, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %if.then14
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.031, i64 0, i32 0
  %mg.0 = load %struct.magic** %mg_moremagic, align 8
  %tobool = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_get(%struct.sv* %sv) #0 {
entry:
  %call = tail call i32 @Perl_save_alloc(i32 16, i32 0) #7
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 2048
  store %struct.sv* %sv, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %sv, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %sv_refcnt = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %1 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %1, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %call2 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %sv) #7
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and5 = and i32 %2, -2049
  store i32 %and5, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  tail call fastcc void @S_save_magic(i32 %call, %struct.sv* %sv) #8
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %3, i64 40
  %4 = bitcast i8* %xmg_magic to %struct.magic**
  %5 = load %struct.magic** %4, align 8, !tbaa !0
  %idx.ext = sext i32 %call to i64
  %add.ptr.sum = add i64 %idx.ext, 8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %land.lhs.true34, %if.end
  %6 = phi i8* [ %3, %if.end ], [ %18, %land.lhs.true34 ]
  %cur.0.ph = phi %struct.magic* [ %5, %if.end ], [ %cur.0.mg.1, %land.lhs.true34 ]
  %mg.0.ph = phi %struct.magic* [ %5, %if.end ], [ %mg.1., %land.lhs.true34 ]
  %head.0.ph = phi %struct.magic* [ %5, %if.end ], [ %head.1, %land.lhs.true34 ]
  %newmg.0.ph = phi %struct.magic* [ %5, %if.end ], [ %21, %land.lhs.true34 ]
  %have_new.0.ph = phi i32 [ 0, %if.end ], [ %have_new.1., %land.lhs.true34 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end26
  %7 = phi i8* [ %18, %if.end26 ], [ %6, %while.cond.outer ]
  %mg.0 = phi %struct.magic* [ %mg.1, %if.end26 ], [ %mg.0.ph, %while.cond.outer ]
  %head.0 = phi %struct.magic* [ %head.1, %if.end26 ], [ %head.0.ph, %while.cond.outer ]
  %have_new.0 = phi i32 [ %have_new.1, %if.end26 ], [ %have_new.0.ph, %while.cond.outer ]
  %tobool6 = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool6, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 1
  %8 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %mg_flags = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 4
  %9 = load i8* %mg_flags, align 1, !tbaa !1
  %and7 = and i8 %9, 4
  %tobool8 = icmp ne i8 %and7, 0
  %tobool9 = icmp eq %struct.mgvtbl* %8, null
  %or.cond = or i1 %tobool8, %tobool9
  br i1 %or.cond, label %if.end26, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %while.body
  %svt_get = getelementptr inbounds %struct.mgvtbl* %8, i64 0, i32 0
  %10 = load i32 (%struct.sv*, %struct.magic*)** %svt_get, align 8, !tbaa !0
  %tobool11 = icmp eq i32 (%struct.sv*, %struct.magic*)* %10, null
  br i1 %tobool11, label %if.end26, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10
  %call14 = tail call i32 %10(%struct.sv* %sv, %struct.magic* %mg.0) #7
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic16 = getelementptr inbounds i8* %11, i64 40
  %12 = bitcast i8* %xmg_magic16 to %struct.magic**
  %13 = load %struct.magic** %12, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.magic* %13, null
  br i1 %tobool17, label %while.end, label %if.end19

if.end19:                                         ; preds = %if.then12
  %14 = load i8* %mg_flags, align 1, !tbaa !1
  %and22 = and i8 %14, 4
  %tobool23 = icmp eq i8 %and22, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end19
  %15 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %16 = bitcast %union.any* %15 to i8*
  %mgs_flags = getelementptr inbounds i8* %16, i64 %add.ptr.sum
  %17 = bitcast i8* %mgs_flags to i32*
  store i32 0, i32* %17, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %while.body, %if.end19, %land.lhs.true10, %if.then24
  %18 = phi i8* [ %7, %while.body ], [ %11, %if.end19 ], [ %7, %land.lhs.true10 ], [ %11, %if.then24 ]
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 0
  %19 = load %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %tobool27 = icmp ne i32 %have_new.0, 0
  %cmp = icmp eq %struct.magic* %19, %head.0
  %or.cond82 = and i1 %tobool27, %cmp
  %mg.1 = select i1 %or.cond82, %struct.magic* %cur.0.ph, %struct.magic* %19
  %head.1 = select i1 %or.cond82, %struct.magic* %newmg.0.ph, %struct.magic* %head.0
  %have_new.1 = select i1 %or.cond82, i32 0, i32 %have_new.0
  %tobool33 = icmp eq i32 %have_new.1, 0
  br i1 %tobool33, label %land.lhs.true34, label %while.cond

land.lhs.true34:                                  ; preds = %if.end26
  %xmg_magic36 = getelementptr inbounds i8* %18, i64 40
  %20 = bitcast i8* %xmg_magic36 to %struct.magic**
  %21 = load %struct.magic** %20, align 8, !tbaa !0
  %cmp37 = icmp eq %struct.magic* %21, %head.1
  %cur.0.mg.1 = select i1 %cmp37, %struct.magic* %cur.0.ph, %struct.magic* %mg.1
  %mg.1. = select i1 %cmp37, %struct.magic* %mg.1, %struct.magic* %21
  %22 = zext i1 %cmp37 to i32
  %have_new.1. = xor i32 %22, 1
  br label %while.cond.outer

while.end:                                        ; preds = %if.then12, %while.cond
  %23 = inttoptr i64 %idx.ext to i8*
  tail call void @restore_magic(i8* %23) #8
  %sv_refcnt42 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %24 = load i32* %sv_refcnt42, align 4, !tbaa !3
  %cmp43 = icmp eq i32 %24, 1
  br i1 %cmp43, label %if.then45, label %if.end56

if.then45:                                        ; preds = %while.end
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %and47 = and i32 %25, 1223753727
  store i32 %and47, i32* %sv_flags, align 4, !tbaa !3
  %and49 = and i32 %25, 2097152
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.end56, label %land.rhs51

land.rhs51:                                       ; preds = %if.then45
  %call52 = tail call i32 @Perl_sv_backoff(%struct.sv* %sv) #7
  br label %if.end56

if.end56:                                         ; preds = %land.rhs51, %if.then45, %while.end
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Perl_save_alloc(i32, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_save_magic(i32 %mgs_ix, %struct.sv* %sv) #0 {
entry:
  %conv = sext i32 %mgs_ix to i64
  %0 = inttoptr i64 %conv to i8*
  tail call void @Perl_save_destructor_x(void (i8*)* @restore_magic, i8* %0) #7
  %1 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %2 = bitcast %union.any* %1 to i8*
  %add.ptr = getelementptr inbounds i8* %2, i64 %conv
  %mgs_sv = bitcast i8* %add.ptr to %struct.sv**
  store %struct.sv* %sv, %struct.sv** %mgs_sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %or = and i32 %3, 8445952
  %add.ptr.sum = add i64 %conv, 8
  %mgs_flags = getelementptr inbounds i8* %2, i64 %add.ptr.sum
  %4 = bitcast i8* %mgs_flags to i32*
  store i32 %or, i32* %4, align 4, !tbaa !3
  %5 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add.ptr.sum20 = add i64 %conv, 12
  %mgs_ss_ix = getelementptr inbounds i8* %2, i64 %add.ptr.sum20
  %6 = bitcast i8* %mgs_ss_ix to i32*
  store i32 %5, i32* %6, align 4, !tbaa !3
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and6 = and i32 %7, -8445953
  %and8 = lshr i32 %7, 8
  %shr = and i32 %and8, 393216
  %or10 = or i32 %shr, %and6
  store i32 %or10, i32* %sv_flags, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @restore_magic(i8* %p) #0 {
entry:
  %0 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %1 = bitcast %union.any* %0 to i8*
  %2 = ptrtoint i8* %p to i64
  %add.ptr = getelementptr inbounds i8* %1, i64 %2
  %mgs_sv = bitcast i8* %add.ptr to %struct.sv**
  %3 = load %struct.sv** %mgs_sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %3, null
  br i1 %tobool, label %if.end28, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %4, 255
  %cmp = icmp ugt i32 %and, 6
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %5, i64 40
  %6 = bitcast i8* %xmg_magic to %struct.magic**
  %7 = load %struct.magic** %6, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.magic* %7, null
  br i1 %tobool1, label %if.end15, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %add.ptr.sum39 = add i64 %2, 8
  %mgs_flags = getelementptr inbounds i8* %1, i64 %add.ptr.sum39
  %8 = bitcast i8* %mgs_flags to i32*
  %9 = load i32* %8, align 4, !tbaa !3
  %tobool3 = icmp eq i32 %9, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %or = or i32 %9, %4
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end7

if.else:                                          ; preds = %if.then2
  tail call void @Perl_mg_magical(%struct.sv* %3) #8
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %10 = phi i32 [ %.pre, %if.else ], [ %or, %if.then4 ]
  %and9 = and i32 %10, 8192
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end7
  %and13 = and i32 %10, -458753
  store i32 %and13, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %if.end7, %land.lhs.true, %if.then11, %if.end
  store %struct.sv* null, %struct.sv** %mgs_sv, align 8, !tbaa !0
  %11 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add.ptr.sum = add i64 %2, 12
  %mgs_ss_ix = getelementptr inbounds i8* %1, i64 %add.ptr.sum
  %12 = bitcast i8* %mgs_ss_ix to i32*
  %13 = load i32* %12, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %11, %13
  br i1 %cmp17, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end15
  %dec23 = add nsw i32 %11, -5
  store i32 %dec23, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom24 = sext i32 %dec23 to i64
  %14 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds %union.any* %14, i64 %idxprom24
  %any_i3226 = bitcast %union.any* %arrayidx25 to i32*
  %15 = load i32* %any_i3226, align 4, !tbaa !3
  %sub27 = sub nsw i32 %dec23, %15
  store i32 %sub27, i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %entry, %if.then18, %if.end15
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_set(%struct.sv* %sv) #0 {
entry:
  %call = tail call i32 @Perl_save_alloc(i32 16, i32 0) #7
  tail call fastcc void @S_save_magic(i32 %call, %struct.sv* %sv) #8
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %2 = load %struct.magic** %1, align 8, !tbaa !0
  %tobool24 = icmp eq %struct.magic* %2, null
  %conv12.pre = sext i32 %call to i64
  br i1 %tobool24, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.sum = add i64 %conv12.pre, 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %mg.025 = phi %struct.magic* [ %2, %for.body.lr.ph ], [ %4, %for.cond.backedge ]
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.025, i64 0, i32 1
  %3 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.025, i64 0, i32 0
  %4 = load %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %mg_flags = getelementptr inbounds %struct.magic* %mg.025, i64 0, i32 4
  %5 = load i8* %mg_flags, align 1, !tbaa !1
  %and = and i8 %5, 4
  %tobool1 = icmp eq i8 %and, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %and4 = and i8 %5, -5
  store i8 %and4, i8* %mg_flags, align 1, !tbaa !1
  %6 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %7 = bitcast %union.any* %6 to i8*
  %mgs_flags = getelementptr inbounds i8* %7, i64 %add.ptr.sum
  %8 = bitcast i8* %mgs_flags to i32*
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %tobool6 = icmp eq %struct.mgvtbl* %3, null
  br i1 %tobool6, label %for.cond.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %svt_set = getelementptr inbounds %struct.mgvtbl* %3, i64 0, i32 1
  %9 = load i32 (%struct.sv*, %struct.magic*)** %svt_set, align 8, !tbaa !0
  %tobool7 = icmp eq i32 (%struct.sv*, %struct.magic*)* %9, null
  br i1 %tobool7, label %for.cond.backedge, label %if.then8

for.cond.backedge:                                ; preds = %land.lhs.true, %if.end, %if.then8
  %tobool = icmp eq %struct.magic* %4, null
  br i1 %tobool, label %for.end, label %for.body

if.then8:                                         ; preds = %land.lhs.true
  %call10 = tail call i32 %9(%struct.sv* %sv, %struct.magic* %mg.025) #7
  br label %for.cond.backedge

for.end:                                          ; preds = %entry, %for.cond.backedge
  %10 = inttoptr i64 %conv12.pre to i8*
  tail call void @restore_magic(i8* %10) #8
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_length(%struct.sv* %sv) #0 {
entry:
  %len = alloca i64, align 8
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %mg.052 = load %struct.magic** %1, align 8
  %tobool53 = icmp eq %struct.magic* %mg.052, null
  br i1 %tobool53, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mg.054 = phi %struct.magic* [ %mg.0, %for.inc ], [ %mg.052, %entry ]
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.054, i64 0, i32 1
  %2 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.mgvtbl* %2, null
  br i1 %tobool1, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %svt_len = getelementptr inbounds %struct.mgvtbl* %2, i64 0, i32 2
  %3 = load i32 (%struct.sv*, %struct.magic*)** %svt_len, align 8, !tbaa !0
  %tobool2 = icmp eq i32 (%struct.sv*, %struct.magic*)* %3, null
  br i1 %tobool2, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @Perl_save_alloc(i32 16, i32 0) #7
  call fastcc void @S_save_magic(i32 %call, %struct.sv* %sv) #8
  %4 = load i32 (%struct.sv*, %struct.magic*)** %svt_len, align 8, !tbaa !0
  %call4 = call i32 %4(%struct.sv* %sv, %struct.magic* %mg.054) #7
  %conv = zext i32 %call4 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !4
  %conv5 = sext i32 %call to i64
  %5 = inttoptr i64 %conv5 to i8*
  call void @restore_magic(i8* %5) #8
  br label %return

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.054, i64 0, i32 0
  %mg.0 = load %struct.magic** %mg_moremagic, align 8
  %tobool = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 536870912
  %tobool7 = icmp eq i32 %and, 0
  br i1 %tobool7, label %if.else, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %for.end
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and10 = and i8 %8, 8
  %tobool11 = icmp eq i8 %and10, 0
  br i1 %tobool11, label %if.then12, label %land.lhs.true8.if.else_crit_edge

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  %.pre56 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true8
  %and14 = and i32 %6, 262144
  %cmp = icmp eq i32 %and14, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then12
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  store i64 %11, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  %call18 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %13 = phi i64 [ %11, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %12, %cond.true ], [ %call18, %cond.false ]
  %add.ptr = getelementptr inbounds i8* %cond, i64 %13
  %call19 = call i64 @Perl_utf8_length(i8* %cond, i8* %add.ptr) #7
  store i64 %call19, i64* %len, align 8, !tbaa !4
  br label %return

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %for.end
  %14 = phi i32 [ %.pre56, %land.lhs.true8.if.else_crit_edge ], [ %6, %for.end ]
  %and21 = and i32 %14, 262144
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %cond.false29, label %cond.true24

cond.true24:                                      ; preds = %if.else
  %15 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur26 = getelementptr inbounds i8* %15, i64 8
  %16 = bitcast i8* %xpv_cur26 to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  store i64 %17, i64* %len, align 8, !tbaa !4
  br label %return

cond.false29:                                     ; preds = %if.else
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  br label %return

return:                                           ; preds = %cond.end, %cond.false29, %cond.true24, %if.then
  %retval.0.in = load i64* %len, align 8
  %retval.0 = trunc i64 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i64 @Perl_utf8_length(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_size(%struct.sv* %sv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %mg.020 = load %struct.magic** %1, align 8
  %tobool21 = icmp eq %struct.magic* %mg.020, null
  br i1 %tobool21, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mg.022 = phi %struct.magic* [ %mg.0, %for.inc ], [ %mg.020, %entry ]
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.022, i64 0, i32 1
  %2 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.mgvtbl* %2, null
  br i1 %tobool1, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %svt_len = getelementptr inbounds %struct.mgvtbl* %2, i64 0, i32 2
  %3 = load i32 (%struct.sv*, %struct.magic*)** %svt_len, align 8, !tbaa !0
  %tobool2 = icmp eq i32 (%struct.sv*, %struct.magic*)* %3, null
  br i1 %tobool2, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @Perl_save_alloc(i32 16, i32 0) #7
  tail call fastcc void @S_save_magic(i32 %call, %struct.sv* %sv) #8
  %4 = load i32 (%struct.sv*, %struct.magic*)** %svt_len, align 8, !tbaa !0
  %call4 = tail call i32 %4(%struct.sv* %sv, %struct.magic* %mg.022) #7
  %conv = sext i32 %call to i64
  %5 = inttoptr i64 %conv to i8*
  tail call void @restore_magic(i8* %5) #8
  br label %return

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.022, i64 0, i32 0
  %mg.0 = load %struct.magic** %mg_moremagic, align 8
  %tobool = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 255
  %cond = icmp eq i32 %and, 10
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.end
  %xav_fill = getelementptr inbounds i8* %0, i64 8
  %7 = bitcast i8* %xav_fill to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  %conv6 = trunc i64 %8 to i32
  br label %return

sw.default:                                       ; preds = %for.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0)) #7
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %conv6, %sw.bb ], [ 0, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_clear(%struct.sv* %sv) #0 {
entry:
  %call = tail call i32 @Perl_save_alloc(i32 16, i32 0) #7
  tail call fastcc void @S_save_magic(i32 %call, %struct.sv* %sv) #8
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %mg.013 = load %struct.magic** %1, align 8
  %tobool14 = icmp eq %struct.magic* %mg.013, null
  br i1 %tobool14, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mg.015 = phi %struct.magic* [ %mg.0, %for.inc ], [ %mg.013, %entry ]
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.015, i64 0, i32 1
  %2 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.mgvtbl* %2, null
  br i1 %tobool1, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %svt_clear = getelementptr inbounds %struct.mgvtbl* %2, i64 0, i32 3
  %3 = load i32 (%struct.sv*, %struct.magic*)** %svt_clear, align 8, !tbaa !0
  %tobool2 = icmp eq i32 (%struct.sv*, %struct.magic*)* %3, null
  br i1 %tobool2, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 %3(%struct.sv* %sv, %struct.magic* %mg.015) #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.015, i64 0, i32 0
  %mg.0 = load %struct.magic** %mg_moremagic, align 8
  %tobool = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %conv = sext i32 %call to i64
  %4 = inttoptr i64 %conv to i8*
  tail call void @restore_magic(i8* %4) #8
  ret i32 0
}

; Function Attrs: nounwind optsize readonly uwtable
define %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 %type) #2 {
entry:
  %tobool = icmp eq %struct.sv* %sv, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %mg.08 = load %struct.magic** %1, align 8
  %tobool19 = icmp eq %struct.magic* %mg.08, null
  br i1 %tobool19, label %return, label %for.body

for.cond:                                         ; preds = %for.body
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.010, i64 0, i32 0
  %mg.0 = load %struct.magic** %mg_moremagic, align 8
  %tobool1 = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool1, label %return, label %for.body

for.body:                                         ; preds = %if.end, %for.cond
  %mg.010 = phi %struct.magic* [ %mg.0, %for.cond ], [ %mg.08, %if.end ]
  %mg_type = getelementptr inbounds %struct.magic* %mg.010, i64 0, i32 3
  %2 = load i8* %mg_type, align 1, !tbaa !1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %type
  br i1 %cmp, label %return, label %for.cond

return:                                           ; preds = %if.end, %for.body, %for.cond, %entry
  %retval.0 = phi %struct.magic* [ null, %entry ], [ null, %if.end ], [ %mg.010, %for.body ], [ null, %for.cond ]
  ret %struct.magic* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_copy(%struct.sv* %sv, %struct.sv* %nsv, i8* %key, i32 %klen) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %mg.081 = load %struct.magic** %1, align 8
  %tobool82 = icmp eq %struct.magic* %mg.081, null
  br i1 %tobool82, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mg.084 = phi %struct.magic* [ %mg.0, %for.inc ], [ %mg.081, %entry ]
  %count.083 = phi i32 [ %count.1, %for.inc ], [ 0, %entry ]
  %mg_flags = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 4
  %2 = load i8* %mg_flags, align 1, !tbaa !1
  %and = and i8 %2, 8
  %tobool1 = icmp eq i8 %and, 0
  br i1 %tobool1, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 1
  %3 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %svt_copy = getelementptr inbounds %struct.mgvtbl* %3, i64 0, i32 5
  %4 = load i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)** %svt_copy, align 8, !tbaa !0
  %tobool2 = icmp eq i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* %4, null
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %4(%struct.sv* %sv, %struct.magic* %mg.084, %struct.sv* %nsv, i8* %key, i32 %klen) #7
  %add = add nsw i32 %call, %count.083
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  %mg_type = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 3
  %5 = load i8* %mg_type, align 1, !tbaa !1
  %.off = add i8 %5, -65
  %6 = icmp ult i8 %.off, 26
  br i1 %6, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.else
  switch i8 %5, label %if.then11.cond.false30_crit_edge [
    i8 80, label %cond.true
    i8 68, label %land.lhs.true26
  ]

if.then11.cond.false30_crit_edge:                 ; preds = %if.then11
  %mg_obj31.phi.trans.insert = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 5
  %.pre85 = load %struct.sv** %mg_obj31.phi.trans.insert, align 8, !tbaa !0
  br label %cond.false30

cond.true:                                        ; preds = %if.then11
  %mg_obj = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 5
  %7 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.sv* %7, null
  br i1 %tobool16, label %cond.false, label %cond.end34

cond.false:                                       ; preds = %cond.true
  %call19 = tail call %struct.sv* @Perl_newRV(%struct.sv* %sv) #7
  %call20 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call19) #7
  %.pre = load i8* %mg_type, align 1, !tbaa !1
  br label %cond.end34

land.lhs.true26:                                  ; preds = %if.then11
  %mg_obj27 = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 5
  %8 = load %struct.sv** %mg_obj27, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.sv* %8, null
  br i1 %tobool28, label %cond.false30, label %cond.end34

cond.false30:                                     ; preds = %if.then11.cond.false30_crit_edge, %land.lhs.true26
  %9 = phi %struct.sv* [ %.pre85, %if.then11.cond.false30_crit_edge ], [ null, %land.lhs.true26 ]
  br label %cond.end34

cond.end34:                                       ; preds = %land.lhs.true26, %cond.true, %cond.false30, %cond.false
  %10 = phi i8 [ %.pre, %cond.false ], [ %5, %cond.false30 ], [ 80, %cond.true ], [ 68, %land.lhs.true26 ]
  %cond35 = phi %struct.sv* [ %call20, %cond.false ], [ %9, %cond.false30 ], [ %7, %cond.true ], [ %sv, %land.lhs.true26 ]
  %conv37 = sext i8 %10 to i32
  %.off80 = add i8 %10, -65
  %11 = icmp ult i8 %.off80, 26
  %add48 = add nsw i32 %conv37, 32
  %add48.conv37 = select i1 %11, i32 %add48, i32 %conv37
  tail call void @Perl_sv_magic(%struct.sv* %nsv, %struct.sv* %cond35, i32 %add48.conv37, i8* %key, i32 %klen) #7
  %inc = add nsw i32 %count.083, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %cond.end34, %if.else
  %count.1 = phi i32 [ %add, %if.then ], [ %inc, %cond.end34 ], [ %count.083, %if.else ]
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.084, i64 0, i32 0
  %mg.0 = load %struct.magic** %mg_moremagic, align 8
  %tobool = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %count.1, %for.inc ]
  ret i32 %count.0.lcssa
}

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_mg_free(%struct.sv* %sv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %0, i64 40
  %1 = bitcast i8* %xmg_magic to %struct.magic**
  %2 = load %struct.magic** %1, align 8, !tbaa !0
  %tobool47 = icmp eq %struct.magic* %2, null
  br i1 %tobool47, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end27
  %mg.048 = phi %struct.magic* [ %4, %if.end27 ], [ %2, %entry ]
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 1
  %3 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 0
  %4 = load %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.mgvtbl* %3, null
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %svt_free = getelementptr inbounds %struct.mgvtbl* %3, i64 0, i32 4
  %5 = load i32 (%struct.sv*, %struct.magic*)** %svt_free, align 8, !tbaa !0
  %tobool2 = icmp eq i32 (%struct.sv*, %struct.magic*)* %5, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %5(%struct.sv* %sv, %struct.magic* %mg.048) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body, %if.then
  %mg_ptr = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 6
  %6 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool4 = icmp eq i8* %6, null
  br i1 %tobool4, label %if.end23, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %mg_type = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 3
  %7 = load i8* %mg_type, align 1, !tbaa !1
  %cmp = icmp eq i8 %7, 103
  br i1 %cmp, label %if.end23, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  %mg_len = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 7
  %8 = load i32* %mg_len, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %8, 0
  %cmp12 = icmp eq i8 %7, 119
  %or.cond = or i1 %cmp8, %cmp12
  br i1 %or.cond, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then7
  tail call void @Perl_safesysfree(i8* %6) #7
  br label %if.end23

if.else:                                          ; preds = %if.then7
  %cmp17 = icmp eq i32 %8, -2
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.else
  %9 = bitcast i8* %6 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %9) #7
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true5, %if.end, %if.then14, %if.then19, %if.else
  %mg_flags = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 4
  %10 = load i8* %mg_flags, align 1, !tbaa !1
  %and = and i8 %10, 2
  %tobool25 = icmp eq i8 %and, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  %mg_obj = getelementptr inbounds %struct.magic* %mg.048, i64 0, i32 5
  %11 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %11) #7
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.then26
  %12 = bitcast %struct.magic* %mg.048 to i8*
  tail call void @Perl_safesysfree(i8* %12) #7
  %tobool = icmp eq %struct.magic* %4, null
  br i1 %tobool, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %if.end27
  %.pre = load i8** %sv_any, align 8, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %13 = phi i8* [ %.pre, %for.cond.for.end_crit_edge ], [ %0, %entry ]
  %xmg_magic29 = getelementptr inbounds i8* %13, i64 40
  %14 = bitcast i8* %xmg_magic29 to %struct.magic**
  store %struct.magic* null, %struct.magic** %14, align 8, !tbaa !0
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Perl_magic_regdata_cnt(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #2 {
entry:
  %0 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool = icmp eq %struct.pmop* %0, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %op_pmregexp = getelementptr inbounds %struct.pmop* %0, i64 0, i32 13
  %1 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.regexp* %1, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %2 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.sv* %2, null
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %nparens = getelementptr inbounds %struct.regexp* %1, i64 0, i32 12
  %3 = load i32* %nparens, align 4, !tbaa !3
  br label %return

if.else:                                          ; preds = %if.then
  %lastparen = getelementptr inbounds %struct.regexp* %1, i64 0, i32 13
  %4 = load i32* %lastparen, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.else, %if.then3
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %4, %if.else ], [ -1, %land.lhs.true ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_regdatum_get(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool = icmp eq %struct.pmop* %0, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %op_pmregexp = getelementptr inbounds %struct.pmop* %0, i64 0, i32 13
  %1 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.regexp* %1, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %2 = load i32* %mg_len, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %nparens = getelementptr inbounds %struct.regexp* %1, i64 0, i32 12
  %3 = load i32* %nparens, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %2, %3
  br i1 %cmp3, label %return, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %idxprom = sext i32 %2 to i64
  %startp = getelementptr inbounds %struct.regexp* %1, i64 0, i32 0
  %4 = load i32** %startp, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %5, -1
  br i1 %cmp5, label %return, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %endp = getelementptr inbounds %struct.regexp* %1, i64 0, i32 1
  %6 = load i32** %endp, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %7, -1
  br i1 %cmp9, label %return, label %if.then10

if.then10:                                        ; preds = %land.lhs.true6
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %8 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.sv* %8, null
  %. = select i1 %tobool11, i32 %5, i32 %7
  %cmp14 = icmp sgt i32 %., 0
  br i1 %cmp14, label %land.lhs.true15, label %if.end21

land.lhs.true15:                                  ; preds = %if.then10
  %reganch = getelementptr inbounds %struct.regexp* %1, i64 0, i32 15
  %9 = load i32* %reganch, align 4, !tbaa !3
  %and = and i32 %9, 268435456
  %tobool16 = icmp eq i32 %and, 0
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true15
  %subbeg = getelementptr inbounds %struct.regexp* %1, i64 0, i32 6
  %10 = load i8** %subbeg, align 8, !tbaa !0
  %tobool18 = icmp eq i8* %10, null
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then17
  %idx.ext = sext i32 %. to i64
  %add.ptr = getelementptr inbounds i8* %10, i64 %idx.ext
  %call = tail call i64 @Perl_utf8_length(i8* %10, i8* %add.ptr) #7
  %conv = trunc i64 %call to i32
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true15, %if.then19, %if.then10
  %i.1 = phi i32 [ %conv, %if.then19 ], [ %., %if.then17 ], [ %., %land.lhs.true15 ], [ %., %if.then10 ]
  %conv22 = sext i32 %i.1 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv22) #7
  br label %return

return:                                           ; preds = %if.end21, %entry, %land.lhs.true, %if.end, %land.lhs.true4, %land.lhs.true6, %if.then
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_regdatum_set(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_len(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 38, label %sw.bb
    i32 43, label %sw.bb91
    i32 14, label %sw.bb101
    i32 96, label %sw.bb111
    i32 39, label %sw.bb130
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool = icmp eq %struct.pmop* %2, null
  br i1 %tobool, label %if.else60, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %op_pmregexp = getelementptr inbounds %struct.pmop* %2, i64 0, i32 13
  %3 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.regexp* %3, null
  br i1 %tobool1, label %if.else60, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @atoi(i8* %0) #7
  br label %getparen

getparen:                                         ; preds = %if.then96, %if.then106, %if.then
  %rx.0 = phi %struct.regexp* [ %43, %if.then106 ], [ %40, %if.then96 ], [ %3, %if.then ]
  %paren.0 = phi i32 [ %44, %if.then106 ], [ %41, %if.then96 ], [ %call, %if.then ]
  %nparens = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 12
  %4 = load i32* %nparens, align 4, !tbaa !3
  %cmp = icmp sgt i32 %paren.0, %4
  br i1 %cmp, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %getparen
  %idxprom = sext i32 %paren.0 to i64
  %startp = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 0
  %5 = load i32** %startp, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %6, -1
  br i1 %cmp5, label %if.else, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %endp = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 1
  %7 = load i32** %endp, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i32* %7, i64 %idxprom
  %8 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %8, -1
  br i1 %cmp10, label %if.else, label %getlen

getlen:                                           ; preds = %land.lhs.true7
  %sub = sub nsw i32 %8, %6
  %cmp13 = icmp sgt i32 %sub, 0
  br i1 %cmp13, label %land.lhs.true15, label %if.end28

land.lhs.true15:                                  ; preds = %if.then116, %if.then140, %getlen
  %t1.0214 = phi i32 [ %8, %getlen ], [ %53, %if.then140 ], [ %48, %if.then116 ]
  %s1.0213 = phi i32 [ %6, %getlen ], [ %52, %if.then140 ], [ 0, %if.then116 ]
  %rx.1212 = phi %struct.regexp* [ %rx.0, %getlen ], [ %50, %if.then140 ], [ %46, %if.then116 ]
  %i.0211 = phi i32 [ %sub, %getlen ], [ %sub143, %if.then140 ], [ %48, %if.then116 ]
  %reganch = getelementptr inbounds %struct.regexp* %rx.1212, i64 0, i32 15
  %9 = load i32* %reganch, align 4, !tbaa !3
  %and = and i32 %9, 268435456
  %tobool16 = icmp eq i32 %and, 0
  br i1 %tobool16, label %if.end28, label %if.then17

if.then17:                                        ; preds = %land.lhs.true15
  %subbeg = getelementptr inbounds %struct.regexp* %rx.1212, i64 0, i32 6
  %10 = load i8** %subbeg, align 8, !tbaa !0
  %idx.ext = sext i32 %s1.0213 to i64
  %add.ptr = getelementptr inbounds i8* %10, i64 %idx.ext
  %sub21 = sub nsw i32 %t1.0214, %s1.0213
  %conv22 = sext i32 %sub21 to i64
  %call23 = call signext i8 @Perl_is_utf8_string(i8* %add.ptr, i64 %conv22) #7
  %tobool24 = icmp eq i8 %call23, 0
  br i1 %tobool24, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.then17
  %idx.ext19 = sext i32 %t1.0214 to i64
  %add.ptr20 = getelementptr inbounds i8* %10, i64 %idx.ext19
  %call26 = call i64 @Perl_utf8_length(i8* %add.ptr, i8* %add.ptr20) #7
  %conv27 = trunc i64 %call26 to i32
  br label %if.end28

if.end28:                                         ; preds = %if.then17, %land.lhs.true15, %if.then25, %getlen
  %i.1 = phi i32 [ %conv27, %if.then25 ], [ %sub21, %if.then17 ], [ %i.0211, %land.lhs.true15 ], [ %sub, %getlen ]
  %cmp29 = icmp slt i32 %i.1, 0
  br i1 %cmp29, label %if.then31, label %return

if.then31:                                        ; preds = %if.end28
  %conv32 = sext i32 %i.1 to i64
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i64 %conv32) #7
  br label %return

if.else:                                          ; preds = %land.lhs.true7, %land.lhs.true4, %getparen
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp34 = icmp eq %struct.sv* %12, null
  br i1 %cmp34, label %lor.lhs.false49, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.else
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings37 = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings37, align 8, !tbaa !0
  %cmp38 = icmp eq %struct.sv* %14, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp38, label %lor.lhs.false49, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings41 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings41, align 8, !tbaa !0
  %cmp42 = icmp eq %struct.sv* %16, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp42, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true40
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings44 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings44, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %18, i64 0, i32 0
  %19 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %19 to i8**
  %20 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i8* %20, i64 10
  %21 = load i8* %arrayidx45, align 1, !tbaa !1
  %and47 = and i8 %21, 4
  %tobool48 = icmp eq i8 %and47, 0
  br i1 %tobool48, label %lor.lhs.false49, label %if.then57

lor.lhs.false49:                                  ; preds = %lor.lhs.false, %land.lhs.true36, %if.else
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings50 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings50, align 8, !tbaa !0
  %cmp51 = icmp eq %struct.sv* %23, null
  br i1 %cmp51, label %land.lhs.true53, label %return

land.lhs.true53:                                  ; preds = %lor.lhs.false49
  %24 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and55 = and i8 %24, 1
  %tobool56 = icmp eq i8 %and55, 0
  br i1 %tobool56, label %return, label %if.then57

if.then57:                                        ; preds = %lor.lhs.false, %land.lhs.true53, %land.lhs.true40
  call void @Perl_report_uninit() #7
  br label %return

if.else60:                                        ; preds = %land.lhs.true, %sw.bb
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings61 = getelementptr inbounds %struct.cop* %25, i64 0, i32 14
  %26 = load %struct.sv** %cop_warnings61, align 8, !tbaa !0
  %cmp62 = icmp eq %struct.sv* %26, null
  br i1 %cmp62, label %lor.lhs.false80, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.else60
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings65 = getelementptr inbounds %struct.cop* %27, i64 0, i32 14
  %28 = load %struct.sv** %cop_warnings65, align 8, !tbaa !0
  %cmp66 = icmp eq %struct.sv* %28, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp66, label %lor.lhs.false80, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings69 = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings69, align 8, !tbaa !0
  %cmp70 = icmp eq %struct.sv* %30, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp70, label %if.then88, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %land.lhs.true68
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings73 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings73, align 8, !tbaa !0
  %sv_any74 = getelementptr inbounds %struct.sv* %32, i64 0, i32 0
  %33 = load i8** %sv_any74, align 8, !tbaa !0
  %xpv_pv75 = bitcast i8* %33 to i8**
  %34 = load i8** %xpv_pv75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i8* %34, i64 10
  %35 = load i8* %arrayidx76, align 1, !tbaa !1
  %and78 = and i8 %35, 4
  %tobool79 = icmp eq i8 %and78, 0
  br i1 %tobool79, label %lor.lhs.false80, label %if.then88

lor.lhs.false80:                                  ; preds = %lor.lhs.false72, %land.lhs.true64, %if.else60
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings81 = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings81, align 8, !tbaa !0
  %cmp82 = icmp eq %struct.sv* %37, null
  br i1 %cmp82, label %land.lhs.true84, label %return

land.lhs.true84:                                  ; preds = %lor.lhs.false80
  %38 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and86 = and i8 %38, 1
  %tobool87 = icmp eq i8 %and86, 0
  br i1 %tobool87, label %return, label %if.then88

if.then88:                                        ; preds = %lor.lhs.false72, %land.lhs.true84, %land.lhs.true68
  call void @Perl_report_uninit() #7
  br label %return

sw.bb91:                                          ; preds = %entry
  %39 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool92 = icmp eq %struct.pmop* %39, null
  br i1 %tobool92, label %return, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %sw.bb91
  %op_pmregexp94 = getelementptr inbounds %struct.pmop* %39, i64 0, i32 13
  %40 = load %struct.regexp** %op_pmregexp94, align 8, !tbaa !0
  %tobool95 = icmp eq %struct.regexp* %40, null
  br i1 %tobool95, label %return, label %if.then96

if.then96:                                        ; preds = %land.lhs.true93
  %lastparen = getelementptr inbounds %struct.regexp* %40, i64 0, i32 13
  %41 = load i32* %lastparen, align 4, !tbaa !3
  %tobool97 = icmp eq i32 %41, 0
  br i1 %tobool97, label %return, label %getparen

sw.bb101:                                         ; preds = %entry
  %42 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool102 = icmp eq %struct.pmop* %42, null
  br i1 %tobool102, label %return, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %sw.bb101
  %op_pmregexp104 = getelementptr inbounds %struct.pmop* %42, i64 0, i32 13
  %43 = load %struct.regexp** %op_pmregexp104, align 8, !tbaa !0
  %tobool105 = icmp eq %struct.regexp* %43, null
  br i1 %tobool105, label %return, label %if.then106

if.then106:                                       ; preds = %land.lhs.true103
  %lastcloseparen = getelementptr inbounds %struct.regexp* %43, i64 0, i32 14
  %44 = load i32* %lastcloseparen, align 4, !tbaa !3
  %tobool107 = icmp eq i32 %44, 0
  br i1 %tobool107, label %return, label %getparen

sw.bb111:                                         ; preds = %entry
  %45 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool112 = icmp eq %struct.pmop* %45, null
  br i1 %tobool112, label %return, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %sw.bb111
  %op_pmregexp114 = getelementptr inbounds %struct.pmop* %45, i64 0, i32 13
  %46 = load %struct.regexp** %op_pmregexp114, align 8, !tbaa !0
  %tobool115 = icmp eq %struct.regexp* %46, null
  br i1 %tobool115, label %return, label %if.then116

if.then116:                                       ; preds = %land.lhs.true113
  %startp117 = getelementptr inbounds %struct.regexp* %46, i64 0, i32 0
  %47 = load i32** %startp117, align 8, !tbaa !0
  %48 = load i32* %47, align 4, !tbaa !3
  %cmp124 = icmp sgt i32 %48, 0
  br i1 %cmp124, label %land.lhs.true15, label %return

sw.bb130:                                         ; preds = %entry
  %49 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool131 = icmp eq %struct.pmop* %49, null
  br i1 %tobool131, label %return, label %land.lhs.true132

land.lhs.true132:                                 ; preds = %sw.bb130
  %op_pmregexp133 = getelementptr inbounds %struct.pmop* %49, i64 0, i32 13
  %50 = load %struct.regexp** %op_pmregexp133, align 8, !tbaa !0
  %tobool134 = icmp eq %struct.regexp* %50, null
  br i1 %tobool134, label %return, label %if.then135

if.then135:                                       ; preds = %land.lhs.true132
  %endp136 = getelementptr inbounds %struct.regexp* %50, i64 0, i32 1
  %51 = load i32** %endp136, align 8, !tbaa !0
  %52 = load i32* %51, align 4, !tbaa !3
  %cmp138 = icmp eq i32 %52, -1
  br i1 %cmp138, label %return, label %if.then140

if.then140:                                       ; preds = %if.then135
  %sublen = getelementptr inbounds %struct.regexp* %50, i64 0, i32 8
  %53 = load i32* %sublen, align 4, !tbaa !3
  %sub143 = sub nsw i32 %53, %52
  %cmp144 = icmp sgt i32 %sub143, 0
  br i1 %cmp144, label %land.lhs.true15, label %return

sw.epilog:                                        ; preds = %entry
  %call153 = call i32 @Perl_magic_get(%struct.sv* %sv, %struct.magic* %mg) #8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %54 = load i32* %sv_flags, align 4, !tbaa !3
  %and154 = and i32 %54, 262144
  %tobool155 = icmp ne i32 %and154, 0
  %and158 = and i32 %54, 196608
  %tobool159 = icmp eq i32 %and158, 0
  %or.cond209 = or i1 %tobool155, %tobool159
  br i1 %or.cond209, label %if.end162, label %if.then160

if.then160:                                       ; preds = %sw.epilog
  %call161 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %n_a, i32 2) #7
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end162

if.end162:                                        ; preds = %sw.epilog, %if.then160
  %55 = phi i32 [ %54, %sw.epilog ], [ %.pre, %if.then160 ]
  %and164 = and i32 %55, 262144
  %tobool165 = icmp eq i32 %and164, 0
  br i1 %tobool165, label %return, label %if.then166

if.then166:                                       ; preds = %if.end162
  %sv_any167 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %56 = load i8** %sv_any167, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %56, i64 8
  %57 = bitcast i8* %xpv_cur to i64*
  %58 = load i64* %57, align 8, !tbaa !4
  %conv168 = trunc i64 %58 to i32
  br label %return

return:                                           ; preds = %if.end162, %if.then140, %sw.bb130, %land.lhs.true132, %if.then135, %sw.bb111, %land.lhs.true113, %if.then116, %sw.bb101, %land.lhs.true103, %if.then106, %sw.bb91, %land.lhs.true93, %if.then96, %lor.lhs.false49, %if.then57, %if.then88, %lor.lhs.false80, %land.lhs.true53, %land.lhs.true84, %if.end28, %if.then31, %if.then166
  %retval.0 = phi i32 [ %conv168, %if.then166 ], [ %i.1, %if.then31 ], [ %i.1, %if.end28 ], [ 0, %land.lhs.true84 ], [ 0, %land.lhs.true53 ], [ 0, %lor.lhs.false80 ], [ 0, %if.then88 ], [ 0, %if.then57 ], [ 0, %lor.lhs.false49 ], [ 0, %if.then96 ], [ 0, %land.lhs.true93 ], [ 0, %sw.bb91 ], [ 0, %if.then106 ], [ 0, %land.lhs.true103 ], [ 0, %sw.bb101 ], [ 0, %if.then116 ], [ 0, %land.lhs.true113 ], [ 0, %sw.bb111 ], [ 0, %if.then135 ], [ 0, %land.lhs.true132 ], [ 0, %sw.bb130 ], [ 0, %if.then140 ], [ 0, %if.end162 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_report_uninit() #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_get(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 5, label %sw.bb5
    i32 6, label %sw.bb21
    i32 8, label %sw.bb23
    i32 9, label %sw.bb25
    i32 15, label %sw.bb30
    i32 16, label %sw.bb51
    i32 19, label %sw.bb53
    i32 20, label %sw.bb79
    i32 21, label %sw.bb105
    i32 23, label %sw.bb119
    i32 49, label %sw.bb162
    i32 50, label %sw.bb162
    i32 51, label %sw.bb162
    i32 52, label %sw.bb162
    i32 53, label %sw.bb162
    i32 54, label %sw.bb162
    i32 55, label %sw.bb162
    i32 56, label %sw.bb162
    i32 57, label %sw.bb162
    i32 38, label %sw.bb162
    i32 43, label %sw.bb238
    i32 14, label %sw.bb248
    i32 96, label %sw.bb258
    i32 39, label %sw.bb276
    i32 46, label %sw.bb300
    i32 63, label %sw.bb321
    i32 94, label %sw.bb323
    i32 126, label %sw.bb349
    i32 61, label %sw.bb376
    i32 45, label %sw.bb387
    i32 37, label %sw.bb398
    i32 41, label %sw.bb455
    i32 40, label %sw.bb453
    i32 91, label %sw.bb409
    i32 124, label %sw.bb411
    i32 62, label %sw.bb451
    i32 92, label %sw.bb428
    i32 35, label %sw.bb432
    i32 33, label %sw.bb433
    i32 60, label %sw.bb449
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %2, i32 2) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load i8* @PL_minus_c, align 1, !tbaa !1
  %conv2 = sext i8 %3 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv2) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load volatile i32* @PL_debug, align 4, !tbaa !3
  %and = and i32 %4, 2093055
  %conv4 = zext i32 %and to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv4) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %0, i64 1
  %5 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb5
  %call = tail call i32* @__errno_location() #7
  %6 = load i32* %call, align 4, !tbaa !3
  %call9 = tail call i32* @__errno_location() #7
  %7 = load i32* %call9, align 4, !tbaa !3
  %conv10 = sitofp i32 %7 to double
  tail call void @Perl_sv_setnv(%struct.sv* %sv, double %conv10) #7
  %call11 = tail call i32* @__errno_location() #7
  %8 = load i32* %call11, align 4, !tbaa !3
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call12 = tail call i32* @__errno_location() #7
  %9 = load i32* %call12, align 4, !tbaa !3
  %call13 = tail call i8* @strerror(i32 %9) #7
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i8* [ %call13, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), %if.then ]
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %cond) #7
  %call14 = tail call i32* @__errno_location() #7
  store i32 %6, i32* %call14, align 4, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %10, 33685504
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  %call17 = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #7
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %sw.epilog

if.then19:                                        ; preds = %if.else
  %11 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %11, i32 2) #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %12 = load i32* @PL_maxsysfd, align 4, !tbaa !3
  %conv22 = sext i32 %12 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv22) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %13 = load i32* @PL_hints, align 4, !tbaa !3
  %conv24 = zext i32 %13 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv24) #7
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %14 = load i8** @PL_inplace, align 8, !tbaa !0
  %tobool26 = icmp eq i8* %14, null
  br i1 %tobool26, label %if.else28, label %if.then27

if.then27:                                        ; preds = %sw.bb25
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %14) #7
  br label %sw.epilog

if.else28:                                        ; preds = %sw.bb25
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %add.ptr32 = getelementptr inbounds i8* %0, i64 1
  %15 = load i8* %add.ptr32, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %15, 0
  br i1 %cmp34, label %if.then36, label %if.else40

if.then36:                                        ; preds = %sw.bb30
  %16 = load i8** @PL_osname, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %16) #7
  %17 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool37 = icmp eq i8 %17, 0
  br i1 %tobool37, label %sw.epilog, label %if.then38

if.then38:                                        ; preds = %if.then36
  tail call void @Perl_sv_untaint(%struct.sv* %sv) #7
  br label %sw.epilog

if.else40:                                        ; preds = %sw.bb30
  %call42 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #7
  %tobool43 = icmp eq i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %sw.epilog

if.then44:                                        ; preds = %if.else40
  %18 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  %tobool45 = icmp eq %struct.sv* %18, null
  br i1 %tobool45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.then44
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

if.else47:                                        ; preds = %if.then44
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %18, i32 2) #7
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  %19 = load i32* @PL_perldb, align 4, !tbaa !3
  %conv52 = zext i32 %19 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv52) #7
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  %add.ptr55 = getelementptr inbounds i8* %0, i64 1
  %20 = load i8* %add.ptr55, align 1, !tbaa !1
  %cmp57 = icmp eq i8 %20, 0
  br i1 %cmp57, label %if.then59, label %sw.epilog

if.then59:                                        ; preds = %sw.bb53
  %21 = load i32* @PL_lex_state, align 4, !tbaa !3
  %cmp60 = icmp eq i32 %21, 11
  br i1 %cmp60, label %if.else70, label %if.then62

if.then62:                                        ; preds = %if.then59
  %sv_flags63 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %22 = load i32* %sv_flags63, align 4, !tbaa !3
  %and64 = and i32 %22, 1223753727
  store i32 %and64, i32* %sv_flags63, align 4, !tbaa !3
  %and66 = and i32 %22, 2097152
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %sw.epilog, label %land.rhs

land.rhs:                                         ; preds = %if.then62
  %call68 = tail call i32 @Perl_sv_backoff(%struct.sv* %sv) #7
  br label %sw.epilog

if.else70:                                        ; preds = %if.then59
  %23 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %tobool71 = icmp eq i32 %23, 0
  br i1 %tobool71, label %if.else75, label %if.then72

if.then72:                                        ; preds = %if.else70
  %24 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %and73 = and i32 %24, -9
  %conv74 = sext i32 %and73 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv74) #7
  br label %sw.epilog

if.else75:                                        ; preds = %if.else70
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 0) #7
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry
  %add.ptr81 = getelementptr inbounds i8* %0, i64 1
  %25 = load i8* %add.ptr81, align 1, !tbaa !1
  %cmp83 = icmp eq i8 %25, 0
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %sw.bb79
  %26 = load i64* @PL_basetime, align 8, !tbaa !4
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %26) #7
  br label %sw.epilog

if.else86:                                        ; preds = %sw.bb79
  %call88 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7
  %tobool89 = icmp eq i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %sw.epilog

if.then90:                                        ; preds = %if.else86
  %27 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool92 = icmp eq i8 %27, 0
  br i1 %tobool92, label %cond.end100, label %cond.true93

cond.true93:                                      ; preds = %if.then90
  %28 = load i8* @PL_taint_warn, align 1, !tbaa !1
  %tobool95 = icmp eq i8 %28, 0
  br i1 %tobool95, label %lor.rhs, label %cond.end100

lor.rhs:                                          ; preds = %cond.true93
  %29 = load i8* @PL_unsafe, align 1, !tbaa !1
  %tobool97 = icmp ne i8 %29, 0
  %phitmp579 = select i1 %tobool97, i64 -1, i64 1
  br label %cond.end100

cond.end100:                                      ; preds = %lor.rhs, %cond.true93, %if.then90
  %cond101 = phi i64 [ 0, %if.then90 ], [ -1, %cond.true93 ], [ %phitmp579, %lor.rhs ]
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %cond101) #7
  br label %sw.epilog

sw.bb105:                                         ; preds = %entry
  %call107 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #7
  %tobool108 = icmp eq i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.else111

if.then109:                                       ; preds = %sw.bb105
  %30 = load i32* @PL_unicode, align 4, !tbaa !3
  %conv110 = zext i32 %30 to i64
  tail call void @Perl_sv_setuv(%struct.sv* %sv, i64 %conv110) #7
  br label %sw.epilog

if.else111:                                       ; preds = %sw.bb105
  %call113 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #7
  %tobool114 = icmp eq i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %sw.epilog

if.then115:                                       ; preds = %if.else111
  %31 = load i8* @PL_utf8locale, align 1, !tbaa !1
  %conv116 = sext i8 %31 to i64
  tail call void @Perl_sv_setuv(%struct.sv* %sv, i64 %conv116) #7
  br label %sw.epilog

sw.bb119:                                         ; preds = %entry
  %add.ptr121 = getelementptr inbounds i8* %0, i64 1
  %32 = load i8* %add.ptr121, align 1, !tbaa !1
  %cmp123 = icmp eq i8 %32, 0
  br i1 %cmp123, label %if.then125, label %if.else131

if.then125:                                       ; preds = %sw.bb119
  %33 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and127 = and i8 %33, 1
  %conv130 = zext i8 %and127 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv130) #7
  br label %sw.epilog

if.else131:                                       ; preds = %sw.bb119
  %call134 = tail call i32 @strcmp(i8* %add.ptr121, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #7
  %tobool135 = icmp eq i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %sw.epilog

if.then136:                                       ; preds = %if.else131
  %34 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %magicptr580 = ptrtoint %struct.sv* %34 to i64
  switch i64 %magicptr580, label %if.else153 [
    i64 32, label %if.then141
    i64 0, label %if.then141
    i64 16, label %if.then145
  ]

if.then141:                                       ; preds = %if.then136, %if.then136
  tail call void @Perl_sv_setpvn(%struct.sv* %sv, i8* getelementptr inbounds ([13 x i8]* @.str9, i64 0, i64 0), i64 12) #7
  br label %if.end155

if.then145:                                       ; preds = %if.then136
  %call146 = tail call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0), i32 0) #7
  %tobool147 = icmp eq %struct.hv* %call146, null
  br i1 %tobool147, label %if.else151, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then145
  %call148 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %call146, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 3, i32 0) #7
  %tobool149 = icmp eq %struct.sv** %call148, null
  br i1 %tobool149, label %if.else151, label %if.then150

if.then150:                                       ; preds = %land.lhs.true
  %35 = load %struct.sv** %call148, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %35, i32 2) #7
  br label %if.end155

if.else151:                                       ; preds = %land.lhs.true, %if.then145
  tail call void @Perl_sv_setpvn(%struct.sv* %sv, i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0), i64 12) #7
  br label %if.end155

if.else153:                                       ; preds = %if.then136
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %34, i32 2) #7
  br label %if.end155

if.end155:                                        ; preds = %if.else153, %if.else151, %if.then150, %if.then141
  %sv_flags156 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %36 = load i32* %sv_flags156, align 4, !tbaa !3
  %and157 = and i32 %36, 1223753727
  %or159 = or i32 %and157, 67371008
  store i32 %or159, i32* %sv_flags156, align 4, !tbaa !3
  br label %sw.epilog

sw.bb162:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %37 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool163 = icmp eq %struct.pmop* %37, null
  br i1 %tobool163, label %if.end237, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %sw.bb162
  %op_pmregexp = getelementptr inbounds %struct.pmop* %37, i64 0, i32 13
  %38 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !0
  %tobool165 = icmp eq %struct.regexp* %38, null
  br i1 %tobool165, label %if.end237, label %if.then166

if.then166:                                       ; preds = %land.lhs.true164
  %call168 = tail call i32 @atoi(i8* %0) #7
  br label %getparen

getparen:                                         ; preds = %if.then243, %if.then253, %if.then166
  %rx.0 = phi %struct.regexp* [ %67, %if.then253 ], [ %64, %if.then243 ], [ %38, %if.then166 ]
  %paren.0 = phi i32 [ %68, %if.then253 ], [ %65, %if.then243 ], [ %call168, %if.then166 ]
  %nparens = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 12
  %39 = load i32* %nparens, align 4, !tbaa !3
  %cmp169 = icmp sgt i32 %paren.0, %39
  br i1 %cmp169, label %if.end237, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %getparen
  %idxprom = sext i32 %paren.0 to i64
  %startp = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 0
  %40 = load i32** %startp, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %40, i64 %idxprom
  %41 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp172 = icmp eq i32 %41, -1
  br i1 %cmp172, label %if.end237, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %land.lhs.true171
  %endp = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 1
  %42 = load i32** %endp, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %42, i64 %idxprom
  %43 = load i32* %arrayidx176, align 4, !tbaa !3
  %cmp177 = icmp eq i32 %43, -1
  br i1 %cmp177, label %if.end237, label %if.then179

if.then179:                                       ; preds = %land.lhs.true174
  %sub = sub nsw i32 %43, %41
  %subbeg = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 6
  %44 = load i8** %subbeg, align 8, !tbaa !0
  %idx.ext = sext i32 %41 to i64
  %add.ptr180 = getelementptr inbounds i8* %44, i64 %idx.ext
  %tobool182 = icmp eq i8* %44, null
  br i1 %tobool182, label %sw.epilog, label %getrx

getrx:                                            ; preds = %land.lhs.true266, %if.then179, %if.then289
  %rx.1 = phi %struct.regexp* [ %75, %if.then289 ], [ %rx.0, %if.then179 ], [ %70, %land.lhs.true266 ]
  %i.0 = phi i32 [ %sub297, %if.then289 ], [ %sub, %if.then179 ], [ %73, %land.lhs.true266 ]
  %s.0 = phi i8* [ %add.ptr294, %if.then289 ], [ %add.ptr180, %if.then179 ], [ %71, %land.lhs.true266 ]
  %cmp185 = icmp sgt i32 %i.0, -1
  br i1 %cmp185, label %if.then187, label %if.end237

if.then187:                                       ; preds = %getrx
  %conv188 = sext i32 %i.0 to i64
  tail call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %s.0, i64 %conv188) #7
  %reganch = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 15
  %45 = load i32* %reganch, align 4, !tbaa !3
  %and189 = and i32 %45, 268435456
  %tobool190 = icmp eq i32 %and189, 0
  br i1 %tobool190, label %if.else199, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %if.then187
  %call193 = tail call signext i8 @Perl_is_utf8_string(i8* %s.0, i64 %conv188) #7
  %tobool195 = icmp eq i8 %call193, 0
  br i1 %tobool195, label %if.else199, label %if.then196

if.then196:                                       ; preds = %land.lhs.true191
  %sv_flags197 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %46 = load i32* %sv_flags197, align 4, !tbaa !3
  %or198 = or i32 %46, 536870912
  store i32 %or198, i32* %sv_flags197, align 4, !tbaa !3
  br label %if.end202

if.else199:                                       ; preds = %land.lhs.true191, %if.then187
  %sv_flags200 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %47 = load i32* %sv_flags200, align 4, !tbaa !3
  %and201 = and i32 %47, -536870913
  store i32 %and201, i32* %sv_flags200, align 4, !tbaa !3
  br label %if.end202

if.end202:                                        ; preds = %if.else199, %if.then196
  %48 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool203 = icmp eq i8 %48, 0
  br i1 %tobool203, label %sw.epilog, label %if.then204

if.then204:                                       ; preds = %if.end202
  %49 = load i32* %reganch, align 4, !tbaa !3
  %and206 = and i32 %49, 524288
  %tobool207 = icmp eq i32 %and206, 0
  br i1 %tobool207, label %if.then231, label %if.then208

if.then208:                                       ; preds = %if.then204
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %50 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %50, i64 40
  %51 = bitcast i8* %xmg_magic to %struct.magic**
  %52 = load %struct.magic** %51, align 8, !tbaa !0
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  %mg_moremagic = getelementptr inbounds %struct.magic* %52, i64 0, i32 0
  %53 = load %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %54 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic211 = getelementptr inbounds i8* %54, i64 40
  %55 = bitcast i8* %xmg_magic211 to %struct.magic**
  store %struct.magic* %53, %struct.magic** %55, align 8, !tbaa !0
  %56 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool212 = icmp ne i8 %56, 0
  %57 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool214 = icmp ne i8 %57, 0
  %or.cond467 = and i1 %tobool212, %tobool214
  br i1 %or.cond467, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.then208
  tail call void @Perl_sv_taint(%struct.sv* %sv) #7
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.then208
  %58 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic222 = getelementptr inbounds i8* %58, i64 40
  %59 = bitcast i8* %xmg_magic222 to %struct.magic**
  %60 = load %struct.magic** %59, align 8, !tbaa !0
  %tobool223 = icmp eq %struct.magic* %60, null
  br i1 %tobool223, label %sw.epilog, label %if.then224

if.then224:                                       ; preds = %if.end220
  store %struct.magic* %60, %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %61 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_magic227 = getelementptr inbounds i8* %61, i64 40
  %62 = bitcast i8* %xmg_magic227 to %struct.magic**
  store %struct.magic* %52, %struct.magic** %62, align 8, !tbaa !0
  br label %sw.epilog

if.then231:                                       ; preds = %if.then204
  tail call void @Perl_sv_untaint(%struct.sv* %sv) #7
  br label %sw.epilog

if.end237:                                        ; preds = %land.lhs.true164, %sw.bb162, %land.lhs.true174, %land.lhs.true171, %getparen, %getrx
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

sw.bb238:                                         ; preds = %entry
  %63 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool239 = icmp eq %struct.pmop* %63, null
  br i1 %tobool239, label %if.end247, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %sw.bb238
  %op_pmregexp241 = getelementptr inbounds %struct.pmop* %63, i64 0, i32 13
  %64 = load %struct.regexp** %op_pmregexp241, align 8, !tbaa !0
  %tobool242 = icmp eq %struct.regexp* %64, null
  br i1 %tobool242, label %if.end247, label %if.then243

if.then243:                                       ; preds = %land.lhs.true240
  %lastparen = getelementptr inbounds %struct.regexp* %64, i64 0, i32 13
  %65 = load i32* %lastparen, align 4, !tbaa !3
  %tobool244 = icmp eq i32 %65, 0
  br i1 %tobool244, label %if.end247, label %getparen

if.end247:                                        ; preds = %if.then243, %land.lhs.true240, %sw.bb238
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

sw.bb248:                                         ; preds = %entry
  %66 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool249 = icmp eq %struct.pmop* %66, null
  br i1 %tobool249, label %if.end257, label %land.lhs.true250

land.lhs.true250:                                 ; preds = %sw.bb248
  %op_pmregexp251 = getelementptr inbounds %struct.pmop* %66, i64 0, i32 13
  %67 = load %struct.regexp** %op_pmregexp251, align 8, !tbaa !0
  %tobool252 = icmp eq %struct.regexp* %67, null
  br i1 %tobool252, label %if.end257, label %if.then253

if.then253:                                       ; preds = %land.lhs.true250
  %lastcloseparen = getelementptr inbounds %struct.regexp* %67, i64 0, i32 14
  %68 = load i32* %lastcloseparen, align 4, !tbaa !3
  %tobool254 = icmp eq i32 %68, 0
  br i1 %tobool254, label %if.end257, label %getparen

if.end257:                                        ; preds = %if.then253, %land.lhs.true250, %sw.bb248
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

sw.bb258:                                         ; preds = %entry
  %69 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool259 = icmp eq %struct.pmop* %69, null
  br i1 %tobool259, label %if.end275, label %land.lhs.true260

land.lhs.true260:                                 ; preds = %sw.bb258
  %op_pmregexp261 = getelementptr inbounds %struct.pmop* %69, i64 0, i32 13
  %70 = load %struct.regexp** %op_pmregexp261, align 8, !tbaa !0
  %tobool262 = icmp eq %struct.regexp* %70, null
  br i1 %tobool262, label %if.end275, label %if.then263

if.then263:                                       ; preds = %land.lhs.true260
  %subbeg264 = getelementptr inbounds %struct.regexp* %70, i64 0, i32 6
  %71 = load i8** %subbeg264, align 8, !tbaa !0
  %tobool265 = icmp eq i8* %71, null
  br i1 %tobool265, label %if.end275, label %land.lhs.true266

land.lhs.true266:                                 ; preds = %if.then263
  %startp267 = getelementptr inbounds %struct.regexp* %70, i64 0, i32 0
  %72 = load i32** %startp267, align 8, !tbaa !0
  %73 = load i32* %72, align 4, !tbaa !3
  %cmp269 = icmp eq i32 %73, -1
  br i1 %cmp269, label %if.end275, label %getrx

if.end275:                                        ; preds = %land.lhs.true266, %if.then263, %land.lhs.true260, %sw.bb258
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

sw.bb276:                                         ; preds = %entry
  %74 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool277 = icmp eq %struct.pmop* %74, null
  br i1 %tobool277, label %if.end299, label %land.lhs.true278

land.lhs.true278:                                 ; preds = %sw.bb276
  %op_pmregexp279 = getelementptr inbounds %struct.pmop* %74, i64 0, i32 13
  %75 = load %struct.regexp** %op_pmregexp279, align 8, !tbaa !0
  %tobool280 = icmp eq %struct.regexp* %75, null
  br i1 %tobool280, label %if.end299, label %if.then281

if.then281:                                       ; preds = %land.lhs.true278
  %subbeg282 = getelementptr inbounds %struct.regexp* %75, i64 0, i32 6
  %76 = load i8** %subbeg282, align 8, !tbaa !0
  %tobool283 = icmp eq i8* %76, null
  br i1 %tobool283, label %if.end299, label %land.lhs.true284

land.lhs.true284:                                 ; preds = %if.then281
  %endp285 = getelementptr inbounds %struct.regexp* %75, i64 0, i32 1
  %77 = load i32** %endp285, align 8, !tbaa !0
  %78 = load i32* %77, align 4, !tbaa !3
  %cmp287 = icmp eq i32 %78, -1
  br i1 %cmp287, label %if.end299, label %if.then289

if.then289:                                       ; preds = %land.lhs.true284
  %idx.ext293 = sext i32 %78 to i64
  %add.ptr294 = getelementptr inbounds i8* %76, i64 %idx.ext293
  %sublen = getelementptr inbounds %struct.regexp* %75, i64 0, i32 8
  %79 = load i32* %sublen, align 4, !tbaa !3
  %sub297 = sub nsw i32 %79, %78
  br label %getrx

if.end299:                                        ; preds = %land.lhs.true284, %if.then281, %land.lhs.true278, %sw.bb276
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %sw.epilog

sw.bb300:                                         ; preds = %entry
  %80 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool301 = icmp eq %struct.gv* %80, null
  br i1 %tobool301, label %sw.epilog, label %land.lhs.true302

land.lhs.true302:                                 ; preds = %sw.bb300
  %81 = getelementptr inbounds %struct.gv* %80, i64 0, i32 2
  %82 = load i32* %81, align 4, !tbaa !3
  %and304 = and i32 %82, 255
  %cmp305 = icmp eq i32 %and304, 13
  br i1 %cmp305, label %land.lhs.true307, label %sw.epilog

land.lhs.true307:                                 ; preds = %land.lhs.true302
  %sv_any308 = getelementptr inbounds %struct.gv* %80, i64 0, i32 0
  %83 = load %struct.xpvgv** %sv_any308, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %83, i64 0, i32 7
  %84 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool309 = icmp eq %struct.gp* %84, null
  br i1 %tobool309, label %sw.epilog, label %cond.true310

cond.true310:                                     ; preds = %land.lhs.true307
  %gp_io = getelementptr inbounds %struct.gp* %84, i64 0, i32 2
  %85 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool313 = icmp eq %struct.io* %85, null
  br i1 %tobool313, label %sw.epilog, label %if.then315

if.then315:                                       ; preds = %cond.true310
  %sv_any319 = getelementptr inbounds %struct.io* %85, i64 0, i32 0
  %86 = load %struct.xpvio** %sv_any319, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds %struct.xpvio* %86, i64 0, i32 10
  %87 = load i64* %xio_lines, align 8, !tbaa !4
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %87) #7
  br label %sw.epilog

sw.bb321:                                         ; preds = %entry
  %88 = load i32* @PL_statusvalue, align 4, !tbaa !3
  %conv322 = sext i32 %88 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv322) #7
  br label %sw.epilog

sw.bb323:                                         ; preds = %entry
  %89 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any324 = getelementptr inbounds %struct.gv* %89, i64 0, i32 0
  %90 = load %struct.xpvgv** %sv_any324, align 8, !tbaa !0
  %xgv_gp325 = getelementptr inbounds %struct.xpvgv* %90, i64 0, i32 7
  %91 = load %struct.gp** %xgv_gp325, align 8, !tbaa !0
  %gp_io326 = getelementptr inbounds %struct.gp* %91, i64 0, i32 2
  %92 = load %struct.io** %gp_io326, align 8, !tbaa !0
  %tobool327 = icmp eq %struct.io* %92, null
  br i1 %tobool327, label %if.else336, label %if.end333

if.end333:                                        ; preds = %sw.bb323
  %sv_any332 = getelementptr inbounds %struct.io* %92, i64 0, i32 0
  %93 = load %struct.xpvio** %sv_any332, align 8, !tbaa !0
  %xio_top_name = getelementptr inbounds %struct.xpvio* %93, i64 0, i32 14
  %94 = load i8** %xio_top_name, align 8, !tbaa !0
  %tobool334 = icmp eq i8* %94, null
  br i1 %tobool334, label %if.else336, label %if.then335

if.then335:                                       ; preds = %if.end333
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %94) #7
  br label %sw.epilog

if.else336:                                       ; preds = %sw.bb323, %if.end333
  %gp_egv = getelementptr inbounds %struct.gp* %91, i64 0, i32 6
  %95 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  %tobool339 = icmp eq %struct.gv* %95, null
  %. = select i1 %tobool339, %struct.gv* %89, %struct.gv* %95
  %sv_any347 = getelementptr inbounds %struct.gv* %., i64 0, i32 0
  %96 = load %struct.xpvgv** %sv_any347, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %96, i64 0, i32 8
  %97 = load i8** %xgv_name, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %97) #7
  tail call void @Perl_sv_catpv(%struct.sv* %sv, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #7
  br label %sw.epilog

sw.bb349:                                         ; preds = %entry
  %98 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any350 = getelementptr inbounds %struct.gv* %98, i64 0, i32 0
  %99 = load %struct.xpvgv** %sv_any350, align 8, !tbaa !0
  %xgv_gp351 = getelementptr inbounds %struct.xpvgv* %99, i64 0, i32 7
  %100 = load %struct.gp** %xgv_gp351, align 8, !tbaa !0
  %gp_io352 = getelementptr inbounds %struct.gp* %100, i64 0, i32 2
  %101 = load %struct.io** %gp_io352, align 8, !tbaa !0
  %tobool353 = icmp eq %struct.io* %101, null
  br i1 %tobool353, label %if.then361, label %if.end359

if.end359:                                        ; preds = %sw.bb349
  %sv_any358 = getelementptr inbounds %struct.io* %101, i64 0, i32 0
  %102 = load %struct.xpvio** %sv_any358, align 8, !tbaa !0
  %xio_fmt_name = getelementptr inbounds %struct.xpvio* %102, i64 0, i32 16
  %103 = load i8** %xio_fmt_name, align 8, !tbaa !0
  %tobool360 = icmp eq i8* %103, null
  br i1 %tobool360, label %if.then361, label %if.end375

if.then361:                                       ; preds = %sw.bb349, %if.end359
  %gp_egv364 = getelementptr inbounds %struct.gp* %100, i64 0, i32 6
  %104 = load %struct.gv** %gp_egv364, align 8, !tbaa !0
  %tobool365 = icmp eq %struct.gv* %104, null
  %.581 = select i1 %tobool365, %struct.gv* %98, %struct.gv* %104
  %sv_any373 = getelementptr inbounds %struct.gv* %.581, i64 0, i32 0
  %105 = load %struct.xpvgv** %sv_any373, align 8, !tbaa !0
  %xgv_name374 = getelementptr inbounds %struct.xpvgv* %105, i64 0, i32 8
  %106 = load i8** %xgv_name374, align 8, !tbaa !0
  br label %if.end375

if.end375:                                        ; preds = %if.end359, %if.then361
  %s.3 = phi i8* [ %103, %if.end359 ], [ %106, %if.then361 ]
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %s.3) #7
  br label %sw.epilog

sw.bb376:                                         ; preds = %entry
  %107 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any377 = getelementptr inbounds %struct.gv* %107, i64 0, i32 0
  %108 = load %struct.xpvgv** %sv_any377, align 8, !tbaa !0
  %xgv_gp378 = getelementptr inbounds %struct.xpvgv* %108, i64 0, i32 7
  %109 = load %struct.gp** %xgv_gp378, align 8, !tbaa !0
  %gp_io379 = getelementptr inbounds %struct.gp* %109, i64 0, i32 2
  %110 = load %struct.io** %gp_io379, align 8, !tbaa !0
  %tobool380 = icmp eq %struct.io* %110, null
  br i1 %tobool380, label %sw.epilog, label %if.then381

if.then381:                                       ; preds = %sw.bb376
  %sv_any385 = getelementptr inbounds %struct.io* %110, i64 0, i32 0
  %111 = load %struct.xpvio** %sv_any385, align 8, !tbaa !0
  %xio_page_len = getelementptr inbounds %struct.xpvio* %111, i64 0, i32 12
  %112 = load i64* %xio_page_len, align 8, !tbaa !4
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %112) #7
  br label %sw.epilog

sw.bb387:                                         ; preds = %entry
  %113 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any388 = getelementptr inbounds %struct.gv* %113, i64 0, i32 0
  %114 = load %struct.xpvgv** %sv_any388, align 8, !tbaa !0
  %xgv_gp389 = getelementptr inbounds %struct.xpvgv* %114, i64 0, i32 7
  %115 = load %struct.gp** %xgv_gp389, align 8, !tbaa !0
  %gp_io390 = getelementptr inbounds %struct.gp* %115, i64 0, i32 2
  %116 = load %struct.io** %gp_io390, align 8, !tbaa !0
  %tobool391 = icmp eq %struct.io* %116, null
  br i1 %tobool391, label %sw.epilog, label %if.then392

if.then392:                                       ; preds = %sw.bb387
  %sv_any396 = getelementptr inbounds %struct.io* %116, i64 0, i32 0
  %117 = load %struct.xpvio** %sv_any396, align 8, !tbaa !0
  %xio_lines_left = getelementptr inbounds %struct.xpvio* %117, i64 0, i32 13
  %118 = load i64* %xio_lines_left, align 8, !tbaa !4
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %118) #7
  br label %sw.epilog

sw.bb398:                                         ; preds = %entry
  %119 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any399 = getelementptr inbounds %struct.gv* %119, i64 0, i32 0
  %120 = load %struct.xpvgv** %sv_any399, align 8, !tbaa !0
  %xgv_gp400 = getelementptr inbounds %struct.xpvgv* %120, i64 0, i32 7
  %121 = load %struct.gp** %xgv_gp400, align 8, !tbaa !0
  %gp_io401 = getelementptr inbounds %struct.gp* %121, i64 0, i32 2
  %122 = load %struct.io** %gp_io401, align 8, !tbaa !0
  %tobool402 = icmp eq %struct.io* %122, null
  br i1 %tobool402, label %sw.epilog, label %if.then403

if.then403:                                       ; preds = %sw.bb398
  %sv_any407 = getelementptr inbounds %struct.io* %122, i64 0, i32 0
  %123 = load %struct.xpvio** %sv_any407, align 8, !tbaa !0
  %xio_page = getelementptr inbounds %struct.xpvio* %123, i64 0, i32 11
  %124 = load i64* %xio_page, align 8, !tbaa !4
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %124) #7
  br label %sw.epilog

sw.bb409:                                         ; preds = %entry
  %125 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %125, i64 0, i32 12
  %126 = load i32* %cop_arybase, align 4, !tbaa !3
  %conv410 = sext i32 %126 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv410) #7
  br label %sw.epilog

sw.bb411:                                         ; preds = %entry
  %127 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any412 = getelementptr inbounds %struct.gv* %127, i64 0, i32 0
  %128 = load %struct.xpvgv** %sv_any412, align 8, !tbaa !0
  %xgv_gp413 = getelementptr inbounds %struct.xpvgv* %128, i64 0, i32 7
  %129 = load %struct.gp** %xgv_gp413, align 8, !tbaa !0
  %gp_io414 = getelementptr inbounds %struct.gp* %129, i64 0, i32 2
  %130 = load %struct.io** %gp_io414, align 8, !tbaa !0
  %tobool415 = icmp eq %struct.io* %130, null
  br i1 %tobool415, label %sw.epilog, label %if.then416

if.then416:                                       ; preds = %sw.bb411
  %sv_any420 = getelementptr inbounds %struct.io* %130, i64 0, i32 0
  %131 = load %struct.xpvio** %sv_any420, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %131, i64 0, i32 22
  %132 = load i8* %xio_flags, align 1, !tbaa !1
  %and422 = lshr i8 %132, 2
  %and422.lobit = and i8 %and422, 1
  %conv426 = zext i8 %and422.lobit to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv426) #7
  br label %sw.epilog

sw.bb428:                                         ; preds = %entry
  %133 = load %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %tobool429 = icmp eq %struct.sv* %133, null
  br i1 %tobool429, label %sw.epilog, label %if.then430

if.then430:                                       ; preds = %sw.bb428
  tail call void @Perl_sv_copypv(%struct.sv* %sv, %struct.sv* %133) #7
  br label %sw.epilog

sw.bb432:                                         ; preds = %entry
  %134 = load i8** @PL_ofmt, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %134) #7
  br label %sw.epilog

sw.bb433:                                         ; preds = %entry
  %call435 = tail call i32* @__errno_location() #7
  %135 = load i32* %call435, align 4, !tbaa !3
  %call436 = tail call i32* @__errno_location() #7
  %136 = load i32* %call436, align 4, !tbaa !3
  %conv437 = sitofp i32 %136 to double
  tail call void @Perl_sv_setnv(%struct.sv* %sv, double %conv437) #7
  %call438 = tail call i32* @__errno_location() #7
  %137 = load i32* %call438, align 4, !tbaa !3
  %tobool439 = icmp eq i32 %137, 0
  br i1 %tobool439, label %cond.end444, label %cond.true440

cond.true440:                                     ; preds = %sw.bb433
  %call441 = tail call i32* @__errno_location() #7
  %138 = load i32* %call441, align 4, !tbaa !3
  %call442 = tail call i8* @strerror(i32 %138) #7
  br label %cond.end444

cond.end444:                                      ; preds = %sw.bb433, %cond.true440
  %cond445 = phi i8* [ %call442, %cond.true440 ], [ getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), %sw.bb433 ]
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %cond445) #7
  %call446 = tail call i32* @__errno_location() #7
  store i32 %135, i32* %call446, align 4, !tbaa !3
  %sv_flags447 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %139 = load i32* %sv_flags447, align 4, !tbaa !3
  %or448 = or i32 %139, 33685504
  store i32 %or448, i32* %sv_flags447, align 4, !tbaa !3
  br label %sw.epilog

sw.bb449:                                         ; preds = %entry
  %140 = load i32* @PL_uid, align 4, !tbaa !3
  %conv450 = zext i32 %140 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv450) #7
  br label %sw.epilog

sw.bb451:                                         ; preds = %entry
  %141 = load i32* @PL_euid, align 4, !tbaa !3
  %conv452 = zext i32 %141 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv452) #7
  br label %sw.epilog

sw.bb453:                                         ; preds = %entry
  %142 = load i32* @PL_gid, align 4, !tbaa !3
  %conv454 = zext i32 %142 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv454) #7
  br label %add_groups

sw.bb455:                                         ; preds = %entry
  %143 = load i32* @PL_egid, align 4, !tbaa !3
  %conv456 = zext i32 %143 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv456) #7
  br label %add_groups

add_groups:                                       ; preds = %sw.bb455, %sw.bb453
  %sv_flags457 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %144 = load i32* %sv_flags457, align 4, !tbaa !3
  %and458 = and i32 %144, 2097152
  %tobool459 = icmp eq i32 %and458, 0
  br i1 %tobool459, label %land.end463, label %land.rhs460

land.rhs460:                                      ; preds = %add_groups
  %call461 = tail call i32 @Perl_sv_backoff(%struct.sv* %sv) #7
  %.pre = load i32* %sv_flags457, align 4, !tbaa !3
  br label %land.end463

land.end463:                                      ; preds = %add_groups, %land.rhs460
  %145 = phi i32 [ %144, %add_groups ], [ %.pre, %land.rhs460 ]
  %or466 = or i32 %145, 16842752
  store i32 %or466, i32* %sv_flags457, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end202, %land.rhs, %if.then62, %if.else, %if.then36, %if.else40, %if.else86, %if.else111, %if.else131, %if.then179, %if.end220, %cond.true310, %land.lhs.true307, %sw.bb300, %sw.bb376, %sw.bb387, %sw.bb398, %sw.bb411, %sw.bb428, %if.then430, %if.then416, %if.then403, %if.then392, %if.then381, %if.then335, %if.else336, %if.then315, %land.lhs.true302, %if.then231, %if.then224, %if.then125, %if.end155, %if.then109, %if.then115, %if.then85, %cond.end100, %sw.bb53, %if.then72, %if.else75, %if.then38, %if.then46, %if.else47, %if.then27, %if.else28, %cond.end, %if.then19, %entry, %land.end463, %sw.bb451, %sw.bb449, %cond.end444, %sw.bb432, %sw.bb409, %if.end375, %sw.bb321, %if.end299, %if.end275, %if.end257, %if.end247, %if.end237, %sw.bb51, %sw.bb23, %sw.bb21, %sw.bb3, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: optsize
declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare i8* @strerror(i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare void @Perl_sv_untaint(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setuv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_get_hv(i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_copypv(%struct.sv*, %struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getuvar(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %uf_val = bitcast i8* %0 to i32 (i64, %struct.sv*)**
  %1 = load i32 (i64, %struct.sv*)** %uf_val, align 8, !tbaa !0
  %tobool1 = icmp eq i32 (i64, %struct.sv*)* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %uf_index = getelementptr inbounds i8* %0, i64 16
  %2 = bitcast i8* %uf_index to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  %call = tail call i32 %1(i64 %3, %struct.sv* %sv) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setenv(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %len = alloca i64, align 8
  %klen = alloca i64, align 8
  %tmpbuf = alloca [256 x i8], align 16
  %st = alloca %struct.stat, align 8
  %i = alloca i32, align 4
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %5 = load i32* %mg_len, align 4, !tbaa !3
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %klen, align 8, !tbaa !4
  %cmp3 = icmp eq i32 %5, -2
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %6 = load i8** %mg_ptr, align 8, !tbaa !0
  br i1 %cmp3, label %cond.true5, label %cond.end24

cond.true5:                                       ; preds = %cond.end
  %sv_flags6 = getelementptr inbounds i8* %6, i64 12
  %7 = bitcast i8* %sv_flags6 to i32*
  %8 = load i32* %7, align 4, !tbaa !3
  %and7 = and i32 %8, 262144
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %cond.false17, label %cond.true10

cond.true10:                                      ; preds = %cond.true5
  %sv_any12 = bitcast i8* %6 to i8**
  %9 = load i8** %sv_any12, align 8, !tbaa !0
  %xpv_cur13 = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur13 to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  store i64 %11, i64* %klen, align 8, !tbaa !4
  %xpv_pv16 = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv16, align 8, !tbaa !0
  br label %cond.end24

cond.false17:                                     ; preds = %cond.true5
  %13 = bitcast i8* %6 to %struct.sv*
  %call19 = call i8* @Perl_sv_2pv_flags(%struct.sv* %13, i64* %klen, i32 2) #7
  br label %cond.end24

cond.end24:                                       ; preds = %cond.end, %cond.true10, %cond.false17
  %cond25 = phi i8* [ %12, %cond.true10 ], [ %call19, %cond.false17 ], [ %6, %cond.end ]
  call void @Perl_my_setenv(i8* %cond25, i8* %cond) #7
  %14 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool = icmp eq i8 %14, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %cond.end24
  %mg_flags = getelementptr inbounds %struct.magic* %mg, i64 0, i32 4
  %15 = load i8* %mg_flags, align 1, !tbaa !1
  %and27 = and i8 %15, -2
  store i8 %and27, i8* %mg_flags, align 1, !tbaa !1
  %tobool29 = icmp eq i8* %cond, null
  br i1 %tobool29, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %16 = load i64* %klen, align 8, !tbaa !4
  %cmp30 = icmp eq i64 %16, 4
  br i1 %cmp30, label %land.lhs.true32, label %return

land.lhs.true32:                                  ; preds = %land.lhs.true
  %call33 = call i32 @strcmp(i8* %cond25, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0)) #7
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %return

if.then35:                                        ; preds = %land.lhs.true32
  %17 = load i64* %len, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %cond, i64 %17
  %cmp3679 = icmp sgt i64 %17, 0
  br i1 %cmp3679, label %while.body.lr.ph, label %return

while.body.lr.ph:                                 ; preds = %if.then35
  %18 = getelementptr inbounds [256 x i8]* %tmpbuf, i64 0, i64 0
  %19 = bitcast %struct.stat* %st to i8*
  %add.ptr39 = getelementptr inbounds [256 x i8]* %tmpbuf, i64 0, i64 256
  %st_mode = getelementptr inbounds %struct.stat* %st, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %s.080 = phi i8* [ %cond, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge ]
  call void @llvm.lifetime.start(i64 256, i8* %18) #4
  call void @llvm.lifetime.start(i64 144, i8* %19) #4
  %call40 = call i8* @Perl_delimcpy(i8* %18, i8* %add.ptr39, i8* %s.080, i8* %add.ptr, i32 58, i32* %i) #7
  %incdec.ptr = getelementptr inbounds i8* %call40, i64 1
  %20 = load i32* %i, align 4, !tbaa !3
  %cmp42 = icmp ugt i32 %20, 255
  br i1 %cmp42, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %21 = load i8* %18, align 16, !tbaa !1
  %cmp46 = icmp eq i8 %21, 47
  br i1 %cmp46, label %lor.lhs.false48, label %if.then56

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %call50 = call i32 @stat(i8* %18, %struct.stat* %st) #7
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %land.lhs.true53, label %while.cond.backedge

while.cond.backedge:                              ; preds = %lor.lhs.false48, %land.lhs.true53
  %cmp36 = icmp ult i8* %incdec.ptr, %add.ptr
  br i1 %cmp36, label %while.body, label %return

land.lhs.true53:                                  ; preds = %lor.lhs.false48
  %22 = load i32* %st_mode, align 8, !tbaa !3
  %and54 = and i32 %22, 2
  %tobool55 = icmp eq i32 %and54, 0
  br i1 %tobool55, label %while.cond.backedge, label %if.then56

if.then56:                                        ; preds = %land.lhs.true53, %lor.lhs.false, %while.body
  %23 = load i8* %mg_flags, align 1, !tbaa !1
  %or = or i8 %23, 1
  store i8 %or, i8* %mg_flags, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 144, i8* %19) #4
  call void @llvm.lifetime.end(i64 256, i8* %18) #4
  br label %return

return:                                           ; preds = %if.then35, %while.cond.backedge, %land.lhs.true, %cond.end24, %if.then, %land.lhs.true32, %if.then56
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_my_setenv(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @Perl_delimcpy(i8*, i8*, i8*, i8*, i32, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_clearenv(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %0 = load i32* %mg_len, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %n_a, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, -2
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %1 = load i8** %mg_ptr, align 8, !tbaa !0
  br i1 %cmp, label %cond.true, label %cond.end12

cond.true:                                        ; preds = %entry
  %sv_flags = getelementptr inbounds i8* %1, i64 12
  %2 = bitcast i8* %sv_flags to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  %and = and i32 %3, 262144
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cond.false, label %cond.true5

cond.true5:                                       ; preds = %cond.true
  %sv_any = bitcast i8* %1 to i8**
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end12

cond.false:                                       ; preds = %cond.true
  %8 = bitcast i8* %1 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %n_a, i32 2) #7
  br label %cond.end12

cond.end12:                                       ; preds = %entry, %cond.true5, %cond.false
  %cond13 = phi i8* [ %7, %cond.true5 ], [ %call, %cond.false ], [ %1, %entry ]
  call void @Perl_my_setenv(i8* %cond13, i8* null) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_set_all_env(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %keylen = alloca i32, align 4
  %0 = load i32* @PL_localizing, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @Perl_magic_clear_all_env(%struct.sv* undef, %struct.magic* undef) #8
  %1 = bitcast %struct.sv* %sv to %struct.hv*
  %call2 = call i32 @Perl_hv_iterinit(%struct.hv* %1) #7
  %call320 = call %struct.he* @Perl_hv_iternext(%struct.hv* %1) #7
  %tobool421 = icmp eq %struct.he* %call320, null
  br i1 %tobool421, label %if.end, label %while.body

while.body:                                       ; preds = %if.then, %cond.end
  %call322 = phi %struct.he* [ %call3, %cond.end ], [ %call320, %if.then ]
  %call5 = call i8* @Perl_hv_iterkey(%struct.he* %call322, i32* %keylen) #7
  %call6 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %1, %struct.he* %call322) #7
  %sv_flags = getelementptr inbounds %struct.sv* %call6, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %cmp = icmp eq i32 %and, 0
  %call7 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %1, %struct.he* %call322) #7
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %sv_any = getelementptr inbounds %struct.sv* %call7, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  store i64 %5, i64* %n_a, align 8, !tbaa !4
  %call8 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %1, %struct.he* %call322) #7
  %sv_any9 = getelementptr inbounds %struct.sv* %call8, i64 0, i32 0
  %6 = load i8** %sv_any9, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %6 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call7, i64* %n_a, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %call11, %cond.false ]
  call void @Perl_my_setenv(i8* %call5, i8* %cond) #7
  %call3 = call %struct.he* @Perl_hv_iternext(%struct.hv* %1) #7
  %tobool4 = icmp eq %struct.he* %call3, null
  br i1 %tobool4, label %if.end, label %while.body

if.end:                                           ; preds = %if.then, %cond.end, %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_clear_all_env(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load i32* @PL_use_safe_putenv, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  %1 = load i8*** @environ, align 8, !tbaa !0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load i8*** @PL_origenviron, align 8, !tbaa !0
  %cmp = icmp eq i8** %1, %2
  br i1 %cmp, label %if.then1, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %3 = load i8** %1, align 8, !tbaa !0
  %tobool29 = icmp eq i8* %3, null
  br i1 %tobool29, label %if.end5, label %for.body

if.then1:                                         ; preds = %if.then
  %call = tail call i8* @Perl_safesysmalloc(i64 8) #7
  %4 = bitcast i8* %call to i8**
  store i8** %4, i8*** @environ, align 8, !tbaa !0
  br label %if.end5

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %5 = phi i8* [ %7, %for.body ], [ %3, %for.cond.preheader ]
  tail call void @Perl_safesysfree(i8* %5) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = load i8*** @environ, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv.next
  %7 = load i8** %arrayidx, align 8, !tbaa !0
  %tobool2 = icmp eq i8* %7, null
  br i1 %tobool2, label %if.end5, label %for.body

if.end5:                                          ; preds = %entry, %for.cond.preheader, %for.body, %if.then1
  %8 = phi i8** [ %4, %if.then1 ], [ %1, %for.cond.preheader ], [ %6, %for.body ], [ %1, %entry ]
  store i8* null, i8** %8, align 8, !tbaa !0
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

; Function Attrs: optsize
declare i8* @Perl_hv_iterkey(%struct.he*, i32*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getsig(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %0 = load i32* %mg_len, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %n_a, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, -2
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %1 = load i8** %mg_ptr, align 8, !tbaa !0
  br i1 %cmp, label %cond.true, label %cond.end12

cond.true:                                        ; preds = %entry
  %sv_flags = getelementptr inbounds i8* %1, i64 12
  %2 = bitcast i8* %sv_flags to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  %and = and i32 %3, 262144
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cond.false, label %cond.true5

cond.true5:                                       ; preds = %cond.true
  %sv_any = bitcast i8* %1 to i8**
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end12

cond.false:                                       ; preds = %cond.true
  %8 = bitcast i8* %1 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %n_a, i32 2) #7
  br label %cond.end12

cond.end12:                                       ; preds = %entry, %cond.true5, %cond.false
  %cond13 = phi i8* [ %7, %cond.true5 ], [ %call, %cond.false ], [ %1, %entry ]
  %call14 = call i32 @Perl_whichsig(i8* %cond13) #8
  %cmp15 = icmp sgt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %if.end32

if.then:                                          ; preds = %cond.end12
  %idxprom = sext i32 %call14 to i64
  %9 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %10, null
  br i1 %tobool, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %10, i32 2) #7
  br label %if.end32

if.else:                                          ; preds = %if.then
  %call20 = call void (i32)* (i32)* @Perl_rsignal_state(i32 %call14) #7
  %cmp21 = icmp eq void (i32)* %call20, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else
  call void @Perl_sv_setpv(%struct.sv* %sv, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #7
  br label %if.end

if.else24:                                        ; preds = %if.else
  call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* @PL_sv_undef, i32 2) #7
  br label %if.end

if.end:                                           ; preds = %if.else24, %if.then23
  store %struct.sv* %sv, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.sv* %sv, null
  br i1 %tobool25, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %sv_refcnt = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %11 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %11, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %12 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv* %sv, %struct.sv** %arrayidx28, align 8, !tbaa !0
  %sv_flags29 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %13 = load i32* %sv_flags29, align 4, !tbaa !3
  %and30 = and i32 %13, -2049
  store i32 %and30, i32* %sv_flags29, align 4, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %if.then17, %land.end, %cond.end12
  ret i32 0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Perl_whichsig(i8* nocapture %sig) #2 {
entry:
  %0 = load i8** getelementptr inbounds ([0 x i8*]* @PL_sig_name, i64 0, i64 0), align 8, !tbaa !0
  %tobool14 = icmp eq i8* %0, null
  br i1 %tobool14, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %1 = load i8** %incdec.ptr, align 8, !tbaa !0
  %tobool = icmp eq i8* %1, null
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %2 = phi i8* [ %1, %for.cond ], [ %0, %entry ]
  %sigv.015 = phi i8** [ %incdec.ptr, %for.cond ], [ getelementptr inbounds ([0 x i8*]* @PL_sig_name, i64 0, i64 0), %entry ]
  %call = tail call i32 @strcmp(i8* %sig, i8* %2) #7
  %tobool1 = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds i8** %sigv.015, i64 1
  br i1 %tobool1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8** %sigv.015 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x i8*]* @PL_sig_name to i64)
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %arrayidx = getelementptr inbounds [0 x i32]* @PL_sig_num, i64 0, i64 %sub.ptr.div
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  %call2 = tail call i32 @strcmp(i8* %sig, i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0)) #7
  %tobool3 = icmp eq i32 %call2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %for.end
  %call6 = tail call i32 @strcmp(i8* %sig, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0)) #7
  %tobool7 = icmp eq i32 %call6, 0
  %. = select i1 %tobool7, i32 17, i32 -1
  br label %return

return:                                           ; preds = %if.end5, %for.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 17, %for.end ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void (i32)* @Perl_rsignal_state(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_clearsig(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %0 = load i32* %mg_len, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %n_a, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, -2
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %1 = load i8** %mg_ptr, align 8, !tbaa !0
  br i1 %cmp, label %cond.true, label %cond.end12

cond.true:                                        ; preds = %entry
  %sv_flags = getelementptr inbounds i8* %1, i64 12
  %2 = bitcast i8* %sv_flags to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  %and = and i32 %3, 262144
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cond.false, label %cond.true5

cond.true5:                                       ; preds = %cond.true
  %sv_any = bitcast i8* %1 to i8**
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end12

cond.false:                                       ; preds = %cond.true
  %8 = bitcast i8* %1 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %n_a, i32 2) #7
  br label %cond.end12

cond.end12:                                       ; preds = %entry, %cond.true5, %cond.false
  %cond13 = phi i8* [ %7, %cond.true5 ], [ %call, %cond.false ], [ %1, %entry ]
  %9 = load i8* %cond13, align 1, !tbaa !1
  %cmp15 = icmp eq i8 %9, 95
  br i1 %cmp15, label %if.then, label %if.else27

if.then:                                          ; preds = %cond.end12
  %call17 = call i32 @strcmp(i8* %cond13, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #7
  %tobool = icmp eq i32 %call17, 0
  br i1 %tobool, label %if.end23, label %if.else

if.else:                                          ; preds = %if.then
  %call19 = call i32 @strcmp(i8* %cond13, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #7
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %if.end23, label %if.else22

if.else22:                                        ; preds = %if.else
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* %cond13) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then, %if.else22
  %svp.0 = phi %struct.sv** [ undef, %if.else22 ], [ @PL_diehook, %if.then ], [ @PL_warnhook, %if.else ]
  %10 = load %struct.sv** %svp.0, align 8, !tbaa !0
  %tobool24 = icmp eq %struct.sv* %10, null
  br i1 %tobool24, label %if.end54, label %if.then25

if.then25:                                        ; preds = %if.end23
  store %struct.sv* null, %struct.sv** %svp.0, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %10) #7
  br label %if.end54

if.else27:                                        ; preds = %cond.end12
  %call28 = call i32 @Perl_whichsig(i8* %cond13) #8
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end54

if.then31:                                        ; preds = %if.else27
  %11 = load i32* @PL_sig_pending, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %11, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then31
  call void @Perl_despatch_signals() #8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then33
  %call35 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %call28, void (i32)* null) #7
  %idxprom = sext i32 %call28 to i64
  %12 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %tobool36 = icmp eq %struct.sv* %13, null
  br i1 %tobool36, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @Perl_sv_free(%struct.sv* %13) #7
  %14 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* null, %struct.sv** %arrayidx41, align 8, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %if.end34, %if.then37
  %15 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  %16 = load %struct.sv** %arrayidx44, align 8, !tbaa !0
  %tobool45 = icmp eq %struct.sv* %16, null
  br i1 %tobool45, label %if.else51, label %if.then46

if.then46:                                        ; preds = %if.end42
  store %struct.sv* null, %struct.sv** %arrayidx44, align 8, !tbaa !0
  call void @Perl_pop_scope() #7
  call void @Perl_sv_free(%struct.sv* %16) #7
  br label %if.end54

if.else51:                                        ; preds = %if.end42
  call void @Perl_pop_scope() #7
  br label %if.end54

if.end54:                                         ; preds = %if.end23, %if.else27, %if.else51, %if.then46, %if.then25
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_despatch_signals() #0 {
entry:
  store i32 0, i32* @PL_sig_pending, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = load i32** @PL_psig_pend, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %2 = load void (i32)** @PL_sighandlerp, align 8, !tbaa !0
  %3 = trunc i64 %indvars.iv to i32
  tail call void %2(i32 %3) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: optsize
declare void (i32)* @Perl_rsignal(i32, void (i32)*) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_raise_signal(i32 %sig) #0 {
entry:
  %idxprom = sext i32 %sig to i64
  %0 = load i32** @PL_psig_pend, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !3
  store i32 1, i32* @PL_sig_pending, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_csighandler(i32 %sig) #0 {
entry:
  %0 = load i32* @PL_signals, align 4, !tbaa !3
  %and = and i32 %0, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load void (i32)** @PL_sighandlerp, align 8, !tbaa !0
  tail call void %1(i32 %sig) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %idxprom.i = sext i32 %sig to i64
  %2 = load i32** @PL_psig_pend, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i32* %2, i64 %idxprom.i
  %3 = load i32* %arrayidx.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %3, 1
  store i32 %inc.i, i32* %arrayidx.i, align 4, !tbaa !3
  store i32 1, i32* @PL_sig_pending, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setsig(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %len = alloca i64, align 8
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %0 = load i32* %mg_len, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, -2
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %1 = load i8** %mg_ptr, align 8, !tbaa !0
  br i1 %cmp, label %cond.true, label %cond.end12

cond.true:                                        ; preds = %entry
  %sv_flags = getelementptr inbounds i8* %1, i64 12
  %2 = bitcast i8* %sv_flags to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  %and = and i32 %3, 262144
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cond.false, label %cond.true5

cond.true5:                                       ; preds = %cond.true
  %sv_any = bitcast i8* %1 to i8**
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end12

cond.false:                                       ; preds = %cond.true
  %8 = bitcast i8* %1 to %struct.sv*
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %len, i32 2) #7
  br label %cond.end12

cond.end12:                                       ; preds = %entry, %cond.true5, %cond.false
  %cond13 = phi i8* [ %7, %cond.true5 ], [ %call, %cond.false ], [ %1, %entry ]
  %9 = load i8* %cond13, align 1, !tbaa !1
  %cmp15 = icmp eq i8 %9, 95
  br i1 %cmp15, label %if.then, label %if.else27

if.then:                                          ; preds = %cond.end12
  %call17 = call i32 @strcmp(i8* %cond13, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #7
  %tobool = icmp eq i32 %call17, 0
  br i1 %tobool, label %if.end23, label %if.else

if.else:                                          ; preds = %if.then
  %call19 = call i32 @strcmp(i8* %cond13, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #7
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %if.end23, label %if.else22

if.else22:                                        ; preds = %if.else
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* %cond13) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then, %if.else22
  %svp.0 = phi %struct.sv** [ null, %if.else22 ], [ @PL_diehook, %if.then ], [ @PL_warnhook, %if.else ]
  %10 = load %struct.sv** %svp.0, align 8, !tbaa !0
  %tobool24 = icmp eq %struct.sv* %10, null
  br i1 %tobool24, label %if.end76, label %if.then25

if.then25:                                        ; preds = %if.end23
  store %struct.sv* null, %struct.sv** %svp.0, align 8, !tbaa !0
  br label %if.end76

if.else27:                                        ; preds = %cond.end12
  %call28 = call i32 @Perl_whichsig(i8* %cond13) #8
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end57

if.then31:                                        ; preds = %if.else27
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp32 = icmp eq %struct.sv* %12, null
  br i1 %cmp32, label %lor.lhs.false47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings34 = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings34, align 8, !tbaa !0
  %cmp35 = icmp eq %struct.sv* %14, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp35, label %lor.lhs.false47, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings38 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings38, align 8, !tbaa !0
  %cmp39 = icmp eq %struct.sv* %16, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp39, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true37
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings41 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings41, align 8, !tbaa !0
  %sv_any42 = getelementptr inbounds %struct.sv* %18, i64 0, i32 0
  %19 = load i8** %sv_any42, align 8, !tbaa !0
  %xpv_pv43 = bitcast i8* %19 to i8**
  %20 = load i8** %xpv_pv43, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %20, i64 6
  %21 = load i8* %arrayidx, align 1, !tbaa !1
  %and45 = and i8 %21, 16
  %tobool46 = icmp eq i8 %and45, 0
  br i1 %tobool46, label %lor.lhs.false47, label %if.then55

lor.lhs.false47:                                  ; preds = %lor.lhs.false, %land.lhs.true, %if.then31
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings48 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings48, align 8, !tbaa !0
  %cmp49 = icmp eq %struct.sv* %23, null
  br i1 %cmp49, label %land.lhs.true51, label %return

land.lhs.true51:                                  ; preds = %lor.lhs.false47
  %24 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and53 = and i8 %24, 1
  %tobool54 = icmp eq i8 %and53, 0
  br i1 %tobool54, label %return, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false, %land.lhs.true51, %land.lhs.true37
  call void (i32, i8*, ...)* @Perl_warner(i32 26, i8* getelementptr inbounds ([22 x i8]* @.str19, i64 0, i64 0), i8* %cond13) #7
  br label %return

if.end57:                                         ; preds = %if.else27
  %25 = load i32* @PL_sig_pending, align 4, !tbaa !3
  %tobool58 = icmp eq i32 %25, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @Perl_despatch_signals() #8
  br label %if.end60

if.end60:                                         ; preds = %if.end57, %if.then59
  %idxprom = sext i32 %call28 to i64
  %26 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds %struct.sv** %26, i64 %idxprom
  %27 = load %struct.sv** %arrayidx61, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %27) #7
  %28 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds %struct.sv** %28, i64 %idxprom
  %29 = load %struct.sv** %arrayidx63, align 8, !tbaa !0
  store %struct.sv* %sv, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool64 = icmp eq %struct.sv* %sv, null
  br i1 %tobool64, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end60
  %sv_refcnt = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %30 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %30, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end60, %land.rhs
  store %struct.sv* %sv, %struct.sv** %arrayidx63, align 8, !tbaa !0
  %sv_flags68 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %31 = load i32* %sv_flags68, align 4, !tbaa !3
  %and69 = and i32 %31, -2049
  store i32 %and69, i32* %sv_flags68, align 4, !tbaa !3
  %32 = load i64* %len, align 8, !tbaa !4
  %call70 = call %struct.sv* @Perl_newSVpvn(i8* %cond13, i64 %32) #7
  %33 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds %struct.sv** %33, i64 %idxprom
  store %struct.sv* %call70, %struct.sv** %arrayidx72, align 8, !tbaa !0
  %34 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds %struct.sv** %34, i64 %idxprom
  %35 = load %struct.sv** %arrayidx74, align 8, !tbaa !0
  %sv_flags75 = getelementptr inbounds %struct.sv* %35, i64 0, i32 2
  %36 = load i32* %sv_flags75, align 4, !tbaa !3
  %or = or i32 %36, 8388608
  store i32 %or, i32* %sv_flags75, align 4, !tbaa !3
  br label %if.end76

if.end76:                                         ; preds = %if.end23, %if.then25, %land.end
  %i.0 = phi i32 [ 0, %if.then25 ], [ 0, %if.end23 ], [ %call28, %land.end ]
  %svp.1 = phi %struct.sv** [ %svp.0, %if.then25 ], [ %svp.0, %if.end23 ], [ null, %land.end ]
  %to_dec.0 = phi %struct.sv* [ %10, %if.then25 ], [ null, %if.end23 ], [ %29, %land.end ]
  %sv_flags77 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %37 = load i32* %sv_flags77, align 4, !tbaa !3
  %and78 = and i32 %37, 255
  %cmp79 = icmp ne i32 %and78, 13
  %and83 = and i32 %37, 524288
  %tobool84 = icmp eq i32 %and83, 0
  %or.cond = and i1 %cmp79, %tobool84
  br i1 %or.cond, label %if.end101, label %if.then85

if.then85:                                        ; preds = %if.end76
  %tobool86 = icmp eq i32 %i.0, 0
  br i1 %tobool86, label %if.else89, label %if.then87

if.then87:                                        ; preds = %if.then85
  %38 = load void (i32)** @PL_csighandlerp, align 8, !tbaa !0
  %call88 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %i.0, void (i32)* %38) #7
  br label %if.end97

if.else89:                                        ; preds = %if.then85
  store %struct.sv* %sv, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool90 = icmp eq %struct.sv* %sv, null
  br i1 %tobool90, label %land.end95, label %land.rhs91

land.rhs91:                                       ; preds = %if.else89
  %sv_refcnt92 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %39 = load i32* %sv_refcnt92, align 4, !tbaa !3
  %inc93 = add i32 %39, 1
  store i32 %inc93, i32* %sv_refcnt92, align 4, !tbaa !3
  br label %land.end95

land.end95:                                       ; preds = %if.else89, %land.rhs91
  store %struct.sv* %sv, %struct.sv** %svp.1, align 8, !tbaa !0
  br label %if.end97

if.end97:                                         ; preds = %land.end95, %if.then87
  %tobool98 = icmp eq %struct.sv* %to_dec.0, null
  br i1 %tobool98, label %return, label %if.then99

if.then99:                                        ; preds = %if.end97
  call void @Perl_sv_free(%struct.sv* %to_dec.0) #7
  br label %return

if.end101:                                        ; preds = %if.end76
  %and103 = and i32 %37, 10223616
  %cmp104 = icmp eq i32 %and103, 262144
  br i1 %cmp104, label %cond.true106, label %cond.false111

cond.true106:                                     ; preds = %if.end101
  %sv_any107 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %40 = load i8** %sv_any107, align 8, !tbaa !0
  %xpv_cur108 = getelementptr inbounds i8* %40, i64 8
  %41 = bitcast i8* %xpv_cur108 to i64*
  %42 = load i64* %41, align 8, !tbaa !4
  store i64 %42, i64* %len, align 8, !tbaa !4
  %xpv_pv110 = bitcast i8* %40 to i8**
  %43 = load i8** %xpv_pv110, align 8, !tbaa !0
  br label %cond.end113

cond.false111:                                    ; preds = %if.end101
  %call112 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true106
  %cond114 = phi i8* [ %43, %cond.true106 ], [ %call112, %cond.false111 ]
  %call115 = call i32 @strcmp(i8* %cond114, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #7
  %tobool116 = icmp eq i32 %call115, 0
  br i1 %tobool116, label %if.then117, label %if.else122

if.then117:                                       ; preds = %cond.end113
  %tobool118 = icmp eq i32 %i.0, 0
  br i1 %tobool118, label %if.end153, label %if.then119

if.then119:                                       ; preds = %if.then117
  %call120 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %i.0, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  br label %if.end153

if.else122:                                       ; preds = %cond.end113
  %call123 = call i32 @strcmp(i8* %cond114, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #7
  %tobool124 = icmp eq i32 %call123, 0
  br i1 %tobool124, label %if.then127, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %if.else122
  %44 = load i8* %cond114, align 1, !tbaa !1
  %tobool126 = icmp eq i8 %44, 0
  br i1 %tobool126, label %if.then127, label %if.else132

if.then127:                                       ; preds = %lor.lhs.false125, %if.else122
  %tobool128 = icmp eq i32 %i.0, 0
  br i1 %tobool128, label %if.end153, label %if.then129

if.then129:                                       ; preds = %if.then127
  %call130 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %i.0, void (i32)* null) #7
  br label %if.end153

if.else132:                                       ; preds = %lor.lhs.false125
  %call133 = call i8* @strchr(i8* %cond114, i32 58) #7
  %tobool134 = icmp eq i8* %call133, null
  br i1 %tobool134, label %land.lhs.true135, label %if.end139

land.lhs.true135:                                 ; preds = %if.else132
  %call136 = call i8* @strchr(i8* %cond114, i32 39) #7
  %tobool137 = icmp eq i8* %call136, null
  br i1 %tobool137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %land.lhs.true135
  call void @Perl_sv_insert(%struct.sv* %sv, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0), i64 6) #7
  br label %if.end139

if.end139:                                        ; preds = %land.lhs.true135, %if.else132, %if.then138
  %tobool140 = icmp eq i32 %i.0, 0
  br i1 %tobool140, label %if.else143, label %if.then141

if.then141:                                       ; preds = %if.end139
  %45 = load void (i32)** @PL_csighandlerp, align 8, !tbaa !0
  %call142 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %i.0, void (i32)* %45) #7
  br label %if.end153

if.else143:                                       ; preds = %if.end139
  store %struct.sv* %sv, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool144 = icmp eq %struct.sv* %sv, null
  br i1 %tobool144, label %land.end149, label %land.rhs145

land.rhs145:                                      ; preds = %if.else143
  %sv_refcnt146 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %46 = load i32* %sv_refcnt146, align 4, !tbaa !3
  %inc147 = add i32 %46, 1
  store i32 %inc147, i32* %sv_refcnt146, align 4, !tbaa !3
  br label %land.end149

land.end149:                                      ; preds = %if.else143, %land.rhs145
  store %struct.sv* %sv, %struct.sv** %svp.1, align 8, !tbaa !0
  br label %if.end153

if.end153:                                        ; preds = %if.then127, %if.then117, %if.then129, %land.end149, %if.then141, %if.then119
  %tobool154 = icmp eq %struct.sv* %to_dec.0, null
  br i1 %tobool154, label %return, label %if.then155

if.then155:                                       ; preds = %if.end153
  call void @Perl_sv_free(%struct.sv* %to_dec.0) #7
  br label %return

return:                                           ; preds = %if.then155, %if.end153, %if.then99, %if.end97, %lor.lhs.false47, %if.then55, %land.lhs.true51
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: optsize
declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setisa(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load i32* @PL_sub_generation, align 4, !tbaa !3
  %inc = add i32 %0, 1
  store i32 %inc, i32* @PL_sub_generation, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setamagic(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %inc = add nsw i64 %0, 1
  store i64 %inc, i64* @PL_amagic_generation, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getnkeys(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %3 = bitcast %struct.sv* %2 to %struct.hv*
  %tobool = icmp eq %struct.sv* %2, null
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_hv_iterinit(%struct.hv* %3) #7
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %4, 32768
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.then.if.then4_crit_edge, label %if.end.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  %sv_any5.phi.trans.insert = bitcast %struct.sv* %2 to %struct.xpvhv**
  %.pre = load %struct.xpvhv** %sv_any5.phi.trans.insert, align 8, !tbaa !0
  br label %if.then4

if.end.i:                                         ; preds = %if.then
  %sv_any.i = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %5 = load i8** %sv_any.i, align 8, !tbaa !0
  %xmg_magic.i = getelementptr inbounds i8* %5, i64 40
  %6 = bitcast i8* %xmg_magic.i to %struct.magic**
  %mg.08.i = load %struct.magic** %6, align 8
  %tobool19.i = icmp eq %struct.magic* %mg.08.i, null
  %7 = bitcast i8* %5 to %struct.xpvhv*
  br i1 %tobool19.i, label %if.then4, label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %mg_moremagic.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 0
  %mg.0.i = load %struct.magic** %mg_moremagic.i, align 8
  %tobool1.i = icmp eq %struct.magic* %mg.0.i, null
  br i1 %tobool1.i, label %if.then4, label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %for.cond.i
  %mg.010.i = phi %struct.magic* [ %mg.0.i, %for.cond.i ], [ %mg.08.i, %if.end.i ]
  %mg_type.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 3
  %8 = load i8* %mg_type.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %8, 80
  br i1 %cmp.i, label %while.cond, label %for.cond.i

if.then4:                                         ; preds = %for.cond.i, %if.then.if.then4_crit_edge, %if.end.i
  %9 = phi %struct.xpvhv* [ %.pre, %if.then.if.then4_crit_edge ], [ %7, %if.end.i ], [ %7, %for.cond.i ]
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %9, i64 0, i32 3
  %10 = load i64* %xhv_keys, align 8, !tbaa !4
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %9, i64 0, i32 4
  %11 = load double* %xnv_nv, align 8, !tbaa !5
  %conv = fptosi double %11 to i64
  %sub = sub nsw i64 %10, %conv
  %conv7 = trunc i64 %sub to i32
  br label %if.end10

while.cond:                                       ; preds = %for.body.i, %while.cond
  %i.0 = phi i32 [ %inc, %while.cond ], [ 0, %for.body.i ]
  %call8 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %3) #7
  %tobool9 = icmp eq %struct.he* %call8, null
  %inc = add nsw i32 %i.0, 1
  br i1 %tobool9, label %if.end10, label %while.cond

if.end10:                                         ; preds = %while.cond, %entry, %if.then4
  %i.1 = phi i32 [ %conv7, %if.then4 ], [ 0, %entry ], [ %i.0, %while.cond ]
  %conv11 = sext i32 %i.1 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv11) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setnkeys(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.sv* %2 to %struct.hv*
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %4, 65536
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %xiv_iv = getelementptr inbounds i8* %0, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %call, %cond.false ]
  tail call void @Perl_hv_ksplit(%struct.hv* %3, i64 %cond) #7
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_hv_ksplit(%struct.hv*, i64) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getpack(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mg_flags = getelementptr inbounds %struct.magic* %mg, i64 0, i32 4
  %1 = load i8* %mg_flags, align 1, !tbaa !1
  %or = or i8 %1, 4
  store i8 %or, i8* %mg_flags, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @S_magic_methpack(%struct.sv* %sv, %struct.magic* %mg, i8* getelementptr inbounds ([6 x i8]* @.str22, i64 0, i64 0)) #8
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_magic_methpack(%struct.sv* %sv, %struct.magic* nocapture %mg, i8* %meth) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %1 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %1, i32* @PL_tmps_floor, align 4, !tbaa !3
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 6
  %3 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool = icmp eq %struct.stackinfo* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #7
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call, i64 0, i32 5
  store %struct.stackinfo* %4, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %5 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next1 = getelementptr inbounds %struct.stackinfo* %5, i64 0, i32 6
  store %struct.stackinfo* %call, %struct.stackinfo** %si_next1, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %next.0 = phi %struct.stackinfo* [ %3, %entry ], [ %call, %if.then ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %6 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %6, i64 0, i32 0
  %7 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %9 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.av* %9, i64 0, i32 0
  %10 = load %struct.xpvav** %sv_any2, align 8, !tbaa !0
  %xav_fill3 = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 0
  %11 = load i8** %xav_array, align 8, !tbaa !0
  %12 = bitcast i8* %11 to %struct.sv**
  store %struct.sv** %12, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %13 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any7 = getelementptr inbounds %struct.av* %13, i64 0, i32 0
  %14 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %14, i64 0, i32 2
  %15 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %12, i64 %15
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %16 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any9 = getelementptr inbounds %struct.av* %16, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any9, align 8, !tbaa !0
  %xav_fill10 = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 1
  %18 = load i64* %xav_fill10, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds %struct.sv** %12, i64 %18
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %19, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %call13 = tail call fastcc i32 @S_magic_methcall(%struct.sv* %sv, %struct.magic* %mg, i8* %meth, i32 0, i32 2, %struct.sv* null) #8
  %tobool14 = icmp eq i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  %20 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %20, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.sv** %20, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %21, i32 2) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then15
  %22 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %23 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev18 = getelementptr inbounds %struct.stackinfo* %23, i64 0, i32 5
  %24 = load %struct.stackinfo** %si_prev18, align 8, !tbaa !0
  %tobool19 = icmp eq %struct.stackinfo* %24, null
  br i1 %tobool19, label %if.then20, label %if.end38

if.then20:                                        ; preds = %if.end16
  %25 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.gv* %25, null
  br i1 %tobool21, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20
  %sv_flags = getelementptr inbounds %struct.gv* %25, i64 0, i32 2
  %26 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %26, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true22, label %cond.false

land.lhs.true22:                                  ; preds = %land.lhs.true
  %sv_any23 = getelementptr inbounds %struct.gv* %25, i64 0, i32 0
  %27 = load %struct.xpvgv** %sv_any23, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %28, i64 0, i32 2
  %29 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool24 = icmp eq %struct.io* %29, null
  br i1 %tobool24, label %cond.false, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %sv_any29 = getelementptr inbounds %struct.io* %29, i64 0, i32 0
  %30 = load %struct.xpvio** %sv_any29, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %30, i64 0, i32 8
  %31 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool30 = icmp eq %struct._PerlIO** %31, null
  br i1 %tobool30, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true25, %land.lhs.true22, %if.then20, %land.lhs.true
  %call36 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true25, %cond.false
  %cond = phi %struct._PerlIO** [ %call36, %cond.false ], [ %31, %land.lhs.true25 ]
  %call37 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  tail call void @Perl_my_exit(i32 1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.end16, %cond.end
  %32 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast39 = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.rhs.cast40 = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = ashr exact i64 %sub.ptr.sub41, 3
  %33 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any43 = getelementptr inbounds %struct.av* %33, i64 0, i32 0
  %34 = load %struct.xpvav** %sv_any43, align 8, !tbaa !0
  %xav_fill44 = getelementptr inbounds %struct.xpvav* %34, i64 0, i32 1
  store i64 %sub.ptr.div42, i64* %xav_fill44, align 8, !tbaa !4
  %si_stack45 = getelementptr inbounds %struct.stackinfo* %24, i64 0, i32 0
  %35 = load %struct.av** %si_stack45, align 8, !tbaa !0
  %sv_any46 = getelementptr inbounds %struct.av* %35, i64 0, i32 0
  %36 = load %struct.xpvav** %sv_any46, align 8, !tbaa !0
  %xav_array47 = getelementptr inbounds %struct.xpvav* %36, i64 0, i32 0
  %37 = load i8** %xav_array47, align 8, !tbaa !0
  %38 = bitcast i8* %37 to %struct.sv**
  store %struct.sv** %38, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %39 = load %struct.av** %si_stack45, align 8, !tbaa !0
  %sv_any49 = getelementptr inbounds %struct.av* %39, i64 0, i32 0
  %40 = load %struct.xpvav** %sv_any49, align 8, !tbaa !0
  %xav_max50 = getelementptr inbounds %struct.xpvav* %40, i64 0, i32 2
  %41 = load i64* %xav_max50, align 8, !tbaa !4
  %add.ptr51 = getelementptr inbounds %struct.sv** %38, i64 %41
  store %struct.sv** %add.ptr51, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %42 = load %struct.av** %si_stack45, align 8, !tbaa !0
  %sv_any53 = getelementptr inbounds %struct.av* %42, i64 0, i32 0
  %43 = load %struct.xpvav** %sv_any53, align 8, !tbaa !0
  %xav_fill54 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 1
  %44 = load i64* %xav_fill54, align 8, !tbaa !4
  %add.ptr55 = getelementptr inbounds %struct.sv** %38, i64 %44
  store %struct.sv** %add.ptr55, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %45 = load %struct.av** %si_stack45, align 8, !tbaa !0
  store %struct.av* %45, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %24, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %46 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %47 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp57 = icmp sgt i32 %46, %47
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end38
  tail call void @Perl_free_tmps() #7
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end38
  tail call void @Perl_pop_scope() #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setpack(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #7
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
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %5 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %5, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %8 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any2, align 8, !tbaa !0
  %xav_fill3 = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %10 = load i8** %xav_array, align 8, !tbaa !0
  %11 = bitcast i8* %10 to %struct.sv**
  store %struct.sv** %11, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %12 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any7 = getelementptr inbounds %struct.av* %12, i64 0, i32 0
  %13 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 2
  %14 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %11, i64 %14
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any9 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any9, align 8, !tbaa !0
  %xav_fill10 = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 1
  %17 = load i64* %xav_fill10, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds %struct.sv** %11, i64 %17
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %18, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %call13 = tail call fastcc i32 @S_magic_methcall(%struct.sv* %sv, %struct.magic* %mg, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i32 2, i32 3, %struct.sv* %sv) #8
  %19 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev15 = getelementptr inbounds %struct.stackinfo* %20, i64 0, i32 5
  %21 = load %struct.stackinfo** %si_prev15, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.stackinfo* %21, null
  br i1 %tobool16, label %if.then17, label %if.end35

if.then17:                                        ; preds = %if.end
  %22 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.gv* %22, null
  br i1 %tobool18, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then17
  %sv_flags = getelementptr inbounds %struct.gv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %23, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true19, label %cond.false

land.lhs.true19:                                  ; preds = %land.lhs.true
  %sv_any20 = getelementptr inbounds %struct.gv* %22, i64 0, i32 0
  %24 = load %struct.xpvgv** %sv_any20, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %25, i64 0, i32 2
  %26 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.io* %26, null
  br i1 %tobool21, label %cond.false, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %sv_any26 = getelementptr inbounds %struct.io* %26, i64 0, i32 0
  %27 = load %struct.xpvio** %sv_any26, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %27, i64 0, i32 8
  %28 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool27 = icmp eq %struct._PerlIO** %28, null
  br i1 %tobool27, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true22, %land.lhs.true19, %if.then17, %land.lhs.true
  %call33 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true22, %cond.false
  %cond = phi %struct._PerlIO** [ %call33, %cond.false ], [ %28, %land.lhs.true22 ]
  %call34 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  tail call void @Perl_my_exit(i32 1) #7
  br label %if.end35

if.end35:                                         ; preds = %if.end, %cond.end
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast36 = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.rhs.cast37 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %sub.ptr.div39 = ashr exact i64 %sub.ptr.sub38, 3
  %30 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any40 = getelementptr inbounds %struct.av* %30, i64 0, i32 0
  %31 = load %struct.xpvav** %sv_any40, align 8, !tbaa !0
  %xav_fill41 = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 1
  store i64 %sub.ptr.div39, i64* %xav_fill41, align 8, !tbaa !4
  %si_stack42 = getelementptr inbounds %struct.stackinfo* %21, i64 0, i32 0
  %32 = load %struct.av** %si_stack42, align 8, !tbaa !0
  %sv_any43 = getelementptr inbounds %struct.av* %32, i64 0, i32 0
  %33 = load %struct.xpvav** %sv_any43, align 8, !tbaa !0
  %xav_array44 = getelementptr inbounds %struct.xpvav* %33, i64 0, i32 0
  %34 = load i8** %xav_array44, align 8, !tbaa !0
  %35 = bitcast i8* %34 to %struct.sv**
  store %struct.sv** %35, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %36 = load %struct.av** %si_stack42, align 8, !tbaa !0
  %sv_any46 = getelementptr inbounds %struct.av* %36, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any46, align 8, !tbaa !0
  %xav_max47 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 2
  %38 = load i64* %xav_max47, align 8, !tbaa !4
  %add.ptr48 = getelementptr inbounds %struct.sv** %35, i64 %38
  store %struct.sv** %add.ptr48, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %39 = load %struct.av** %si_stack42, align 8, !tbaa !0
  %sv_any50 = getelementptr inbounds %struct.av* %39, i64 0, i32 0
  %40 = load %struct.xpvav** %sv_any50, align 8, !tbaa !0
  %xav_fill51 = getelementptr inbounds %struct.xpvav* %40, i64 0, i32 1
  %41 = load i64* %xav_fill51, align 8, !tbaa !4
  %add.ptr52 = getelementptr inbounds %struct.sv** %35, i64 %41
  store %struct.sv** %add.ptr52, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %42 = load %struct.av** %si_stack42, align 8, !tbaa !0
  store %struct.av* %42, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %21, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_magic_methcall(%struct.sv* %sv, %struct.magic* nocapture %mg, i8* %meth, i32 %flags, i32 %n, %struct.sv* %val) #0 {
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
  %sub.ptr.div74 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div74 to i32
  store i32 %conv, i32* %3, align 4, !tbaa !3
  %5 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4 = ashr exact i64 %sub.ptr.sub3, 3
  %conv5 = sext i32 %n to i64
  %cmp6 = icmp slt i64 %sub.ptr.div4, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 %n) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %sp.0 = phi %struct.sv** [ %call, %if.then8 ], [ %0, %if.end ]
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %6 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %6, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end9
  %call11 = tail call %struct.sv* @Perl_newRV(%struct.sv* %sv) #7
  %call12 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11) #7
  br label %cond.end

cond.end:                                         ; preds = %if.end9, %cond.false
  %cond = phi %struct.sv* [ %call12, %cond.false ], [ %6, %if.end9 ]
  %incdec.ptr13 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond, %struct.sv** %incdec.ptr13, align 8, !tbaa !0
  %cmp14 = icmp sgt i32 %n, 1
  br i1 %cmp14, label %if.then16, label %if.end53

if.then16:                                        ; preds = %cond.end
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %7 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool17 = icmp eq i8* %7, null
  br i1 %tobool17, label %if.else36, label %if.then18

if.then18:                                        ; preds = %if.then16
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %8 = load i32* %mg_len, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %8, -1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %conv24 = sext i32 %8 to i64
  %call25 = tail call %struct.sv* @Perl_newSVpvn(i8* %7, i64 %conv24) #7
  %call26 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call25) #7
  %incdec.ptr27 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call26, %struct.sv** %incdec.ptr27, align 8, !tbaa !0
  br label %if.end48

if.else:                                          ; preds = %if.then18
  %cmp29 = icmp eq i32 %8, -2
  br i1 %cmp29, label %if.then31, label %if.end48

if.then31:                                        ; preds = %if.else
  %9 = bitcast i8* %7 to %struct.sv*
  %incdec.ptr33 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %9, %struct.sv** %incdec.ptr33, align 8, !tbaa !0
  br label %if.end48

if.else36:                                        ; preds = %if.then16
  %mg_type = getelementptr inbounds %struct.magic* %mg, i64 0, i32 3
  %10 = load i8* %mg_type, align 1, !tbaa !1
  %cmp38 = icmp eq i8 %10, 112
  br i1 %cmp38, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.else36
  %mg_len41 = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %11 = load i32* %mg_len41, align 4, !tbaa !3
  %conv42 = sext i32 %11 to i64
  %call43 = tail call %struct.sv* @Perl_newSViv(i64 %conv42) #7
  %call44 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43) #7
  %incdec.ptr45 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call44, %struct.sv** %incdec.ptr45, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then31, %if.then21, %if.then40, %if.else36
  %sp.1 = phi %struct.sv** [ %incdec.ptr27, %if.then21 ], [ %incdec.ptr33, %if.then31 ], [ %incdec.ptr13, %if.else ], [ %incdec.ptr45, %if.then40 ], [ %incdec.ptr13, %if.else36 ]
  %cmp49 = icmp sgt i32 %n, 2
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %incdec.ptr52 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %val, %struct.sv** %incdec.ptr52, align 8, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %cond.end, %if.then51, %if.end48
  %sp.2 = phi %struct.sv** [ %incdec.ptr52, %if.then51 ], [ %sp.1, %if.end48 ], [ %incdec.ptr13, %cond.end ]
  store %struct.sv** %sp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call54 = tail call i32 @Perl_call_method(i8* %meth, i32 %flags) #7
  ret i32 %call54
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_clearpack(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  tail call fastcc void @S_magic_methpack(%struct.sv* %sv, %struct.magic* %mg, i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0)) #8
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_sizepack(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %1 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %1, i32* @PL_tmps_floor, align 4, !tbaa !3
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 6
  %3 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool = icmp eq %struct.stackinfo* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #7
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call, i64 0, i32 5
  store %struct.stackinfo* %4, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %5 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next2 = getelementptr inbounds %struct.stackinfo* %5, i64 0, i32 6
  store %struct.stackinfo* %call, %struct.stackinfo** %si_next2, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %next.0 = phi %struct.stackinfo* [ %3, %entry ], [ %call, %if.then ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %6 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %6, i64 0, i32 0
  %7 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %9 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any3 = getelementptr inbounds %struct.av* %9, i64 0, i32 0
  %10 = load %struct.xpvav** %sv_any3, align 8, !tbaa !0
  %xav_fill4 = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill4, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %7, i64 0, i32 0
  %11 = load i8** %xav_array, align 8, !tbaa !0
  %12 = bitcast i8* %11 to %struct.sv**
  store %struct.sv** %12, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %13 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.av* %13, i64 0, i32 0
  %14 = load %struct.xpvav** %sv_any8, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %14, i64 0, i32 2
  %15 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %12, i64 %15
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %16 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.av* %16, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any10, align 8, !tbaa !0
  %xav_fill11 = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 1
  %18 = load i64* %xav_fill11, align 8, !tbaa !4
  %add.ptr12 = getelementptr inbounds %struct.sv** %12, i64 %18
  store %struct.sv** %add.ptr12, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %19, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %call14 = tail call fastcc i32 @S_magic_methcall(%struct.sv* %sv, %struct.magic* %mg, i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i32 0, i32 2, %struct.sv* null) #8
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end
  %20 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %20, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.sv** %20, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %22, 65536
  %tobool17 = icmp eq i32 %and, 0
  br i1 %tobool17, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then16
  %sv_any18 = getelementptr inbounds %struct.sv* %21, i64 0, i32 0
  %23 = load i8** %sv_any18, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %23, i64 24
  %24 = bitcast i8* %xiv_iv to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  %call19 = tail call i64 @Perl_sv_2iv(%struct.sv* %21) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %call19, %cond.false ]
  %conv = trunc i64 %cond to i32
  %sub = add i32 %conv, -1
  br label %if.end20

if.end20:                                         ; preds = %if.end, %cond.end
  %retval1.0 = phi i32 [ %sub, %cond.end ], [ 0, %if.end ]
  %26 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %27 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev22 = getelementptr inbounds %struct.stackinfo* %27, i64 0, i32 5
  %28 = load %struct.stackinfo** %si_prev22, align 8, !tbaa !0
  %tobool23 = icmp eq %struct.stackinfo* %28, null
  br i1 %tobool23, label %if.then24, label %if.end49

if.then24:                                        ; preds = %if.end20
  %29 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.gv* %29, null
  br i1 %tobool25, label %cond.false44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24
  %sv_flags26 = getelementptr inbounds %struct.gv* %29, i64 0, i32 2
  %30 = load i32* %sv_flags26, align 4, !tbaa !3
  %and27 = and i32 %30, 255
  %cmp = icmp eq i32 %and27, 13
  br i1 %cmp, label %land.lhs.true29, label %cond.false44

land.lhs.true29:                                  ; preds = %land.lhs.true
  %sv_any30 = getelementptr inbounds %struct.gv* %29, i64 0, i32 0
  %31 = load %struct.xpvgv** %sv_any30, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %31, i64 0, i32 7
  %32 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %32, i64 0, i32 2
  %33 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.io* %33, null
  br i1 %tobool31, label %cond.false44, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %sv_any36 = getelementptr inbounds %struct.io* %33, i64 0, i32 0
  %34 = load %struct.xpvio** %sv_any36, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %34, i64 0, i32 8
  %35 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool37 = icmp eq %struct._PerlIO** %35, null
  br i1 %tobool37, label %cond.false44, label %cond.end46

cond.false44:                                     ; preds = %land.lhs.true32, %land.lhs.true29, %if.then24, %land.lhs.true
  %call45 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end46

cond.end46:                                       ; preds = %land.lhs.true32, %cond.false44
  %cond47 = phi %struct._PerlIO** [ %call45, %cond.false44 ], [ %35, %land.lhs.true32 ]
  %call48 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond47, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  tail call void @Perl_my_exit(i32 1) #7
  br label %if.end49

if.end49:                                         ; preds = %if.end20, %cond.end46
  %36 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast50 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.rhs.cast51 = ptrtoint %struct.sv** %36 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %sub.ptr.div53 = ashr exact i64 %sub.ptr.sub52, 3
  %37 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any54 = getelementptr inbounds %struct.av* %37, i64 0, i32 0
  %38 = load %struct.xpvav** %sv_any54, align 8, !tbaa !0
  %xav_fill55 = getelementptr inbounds %struct.xpvav* %38, i64 0, i32 1
  store i64 %sub.ptr.div53, i64* %xav_fill55, align 8, !tbaa !4
  %si_stack56 = getelementptr inbounds %struct.stackinfo* %28, i64 0, i32 0
  %39 = load %struct.av** %si_stack56, align 8, !tbaa !0
  %sv_any57 = getelementptr inbounds %struct.av* %39, i64 0, i32 0
  %40 = load %struct.xpvav** %sv_any57, align 8, !tbaa !0
  %xav_array58 = getelementptr inbounds %struct.xpvav* %40, i64 0, i32 0
  %41 = load i8** %xav_array58, align 8, !tbaa !0
  %42 = bitcast i8* %41 to %struct.sv**
  store %struct.sv** %42, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %43 = load %struct.av** %si_stack56, align 8, !tbaa !0
  %sv_any60 = getelementptr inbounds %struct.av* %43, i64 0, i32 0
  %44 = load %struct.xpvav** %sv_any60, align 8, !tbaa !0
  %xav_max61 = getelementptr inbounds %struct.xpvav* %44, i64 0, i32 2
  %45 = load i64* %xav_max61, align 8, !tbaa !4
  %add.ptr62 = getelementptr inbounds %struct.sv** %42, i64 %45
  store %struct.sv** %add.ptr62, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %46 = load %struct.av** %si_stack56, align 8, !tbaa !0
  %sv_any64 = getelementptr inbounds %struct.av* %46, i64 0, i32 0
  %47 = load %struct.xpvav** %sv_any64, align 8, !tbaa !0
  %xav_fill65 = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 1
  %48 = load i64* %xav_fill65, align 8, !tbaa !4
  %add.ptr66 = getelementptr inbounds %struct.sv** %42, i64 %48
  store %struct.sv** %add.ptr66, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %49 = load %struct.av** %si_stack56, align 8, !tbaa !0
  store %struct.av* %49, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %28, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %50 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %51 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp68 = icmp sgt i32 %50, %51
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end49
  tail call void @Perl_free_tmps() #7
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end49
  tail call void @Perl_pop_scope() #7
  ret i32 %retval1.0
}

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_wipepack(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #7
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
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %5 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %5, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %8 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any2, align 8, !tbaa !0
  %xav_fill3 = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %10 = load i8** %xav_array, align 8, !tbaa !0
  %11 = bitcast i8* %10 to %struct.sv**
  store %struct.sv** %11, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %12 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any7 = getelementptr inbounds %struct.av* %12, i64 0, i32 0
  %13 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 2
  %14 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %11, i64 %14
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any9 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any9, align 8, !tbaa !0
  %xav_fill10 = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 1
  %17 = load i64* %xav_fill10, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds %struct.sv** %11, i64 %17
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %18, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %19 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %19, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %20 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %20
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  tail call void @Perl_markstack_grow() #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre103 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre104 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  %21 = phi %struct.sv** [ %.pre104, %if.then13 ], [ %add.ptr, %if.end ]
  %22 = phi i32* [ %.pre103, %if.then13 ], [ %incdec.ptr, %if.end ]
  %23 = phi %struct.sv** [ %.pre, %if.then13 ], [ %11, %if.end ]
  %sub.ptr.lhs.cast15 = ptrtoint %struct.sv** %add.ptr11 to i64
  %sub.ptr.rhs.cast16 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18102 = lshr exact i64 %sub.ptr.sub17, 3
  %conv = trunc i64 %sub.ptr.div18102 to i32
  store i32 %conv, i32* %22, align 4, !tbaa !3
  %sub.ptr.lhs.cast19 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.lhs.cast15
  %cmp23 = icmp slt i64 %sub.ptr.sub21, 8
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end14
  %call26 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr11, %struct.sv** %add.ptr11, i32 1) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end14
  %sp.0 = phi %struct.sv** [ %call26, %if.then25 ], [ %add.ptr11, %if.end14 ]
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %24 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool28 = icmp eq %struct.sv* %24, null
  br i1 %tobool28, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end27
  %call30 = tail call %struct.sv* @Perl_newRV(%struct.sv* %sv) #7
  %call31 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call30) #7
  br label %cond.end

cond.end:                                         ; preds = %if.end27, %cond.false
  %cond = phi %struct.sv* [ %call31, %cond.false ], [ %24, %if.end27 ]
  %incdec.ptr32 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond, %struct.sv** %incdec.ptr32, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr32, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call33 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0), i32 2) #7
  %25 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev35 = getelementptr inbounds %struct.stackinfo* %26, i64 0, i32 5
  %27 = load %struct.stackinfo** %si_prev35, align 8, !tbaa !0
  %tobool36 = icmp eq %struct.stackinfo* %27, null
  br i1 %tobool36, label %if.then37, label %if.end61

if.then37:                                        ; preds = %cond.end
  %28 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool38 = icmp eq %struct.gv* %28, null
  br i1 %tobool38, label %cond.false56, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then37
  %sv_flags = getelementptr inbounds %struct.gv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %29, 255
  %cmp39 = icmp eq i32 %and, 13
  br i1 %cmp39, label %land.lhs.true41, label %cond.false56

land.lhs.true41:                                  ; preds = %land.lhs.true
  %sv_any42 = getelementptr inbounds %struct.gv* %28, i64 0, i32 0
  %30 = load %struct.xpvgv** %sv_any42, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %30, i64 0, i32 7
  %31 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %31, i64 0, i32 2
  %32 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool43 = icmp eq %struct.io* %32, null
  br i1 %tobool43, label %cond.false56, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %sv_any48 = getelementptr inbounds %struct.io* %32, i64 0, i32 0
  %33 = load %struct.xpvio** %sv_any48, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %33, i64 0, i32 8
  %34 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool49 = icmp eq %struct._PerlIO** %34, null
  br i1 %tobool49, label %cond.false56, label %cond.end58

cond.false56:                                     ; preds = %land.lhs.true44, %land.lhs.true41, %if.then37, %land.lhs.true
  %call57 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end58

cond.end58:                                       ; preds = %land.lhs.true44, %cond.false56
  %cond59 = phi %struct._PerlIO** [ %call57, %cond.false56 ], [ %34, %land.lhs.true44 ]
  %call60 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond59, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  tail call void @Perl_my_exit(i32 1) #7
  br label %if.end61

if.end61:                                         ; preds = %cond.end, %cond.end58
  %35 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast62 = ptrtoint %struct.sv** %25 to i64
  %sub.ptr.rhs.cast63 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %sub.ptr.div65 = ashr exact i64 %sub.ptr.sub64, 3
  %36 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any66 = getelementptr inbounds %struct.av* %36, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any66, align 8, !tbaa !0
  %xav_fill67 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 1
  store i64 %sub.ptr.div65, i64* %xav_fill67, align 8, !tbaa !4
  %si_stack68 = getelementptr inbounds %struct.stackinfo* %27, i64 0, i32 0
  %38 = load %struct.av** %si_stack68, align 8, !tbaa !0
  %sv_any69 = getelementptr inbounds %struct.av* %38, i64 0, i32 0
  %39 = load %struct.xpvav** %sv_any69, align 8, !tbaa !0
  %xav_array70 = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 0
  %40 = load i8** %xav_array70, align 8, !tbaa !0
  %41 = bitcast i8* %40 to %struct.sv**
  store %struct.sv** %41, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %42 = load %struct.av** %si_stack68, align 8, !tbaa !0
  %sv_any72 = getelementptr inbounds %struct.av* %42, i64 0, i32 0
  %43 = load %struct.xpvav** %sv_any72, align 8, !tbaa !0
  %xav_max73 = getelementptr inbounds %struct.xpvav* %43, i64 0, i32 2
  %44 = load i64* %xav_max73, align 8, !tbaa !4
  %add.ptr74 = getelementptr inbounds %struct.sv** %41, i64 %44
  store %struct.sv** %add.ptr74, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %45 = load %struct.av** %si_stack68, align 8, !tbaa !0
  %sv_any76 = getelementptr inbounds %struct.av* %45, i64 0, i32 0
  %46 = load %struct.xpvav** %sv_any76, align 8, !tbaa !0
  %xav_fill77 = getelementptr inbounds %struct.xpvav* %46, i64 0, i32 1
  %47 = load i64* %xav_fill77, align 8, !tbaa !4
  %add.ptr78 = getelementptr inbounds %struct.sv** %41, i64 %47
  store %struct.sv** %add.ptr78, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %48 = load %struct.av** %si_stack68, align 8, !tbaa !0
  store %struct.av* %48, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %27, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_nextpack(%struct.sv* %sv, %struct.magic* nocapture %mg, %struct.sv* %key) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %key, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 118423552
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str29, i64 0, i64 0)
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %2 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %2, i32* @PL_tmps_floor, align 4, !tbaa !3
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 6
  %4 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.stackinfo* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #7
  %5 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call, i64 0, i32 5
  store %struct.stackinfo* %5, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next2 = getelementptr inbounds %struct.stackinfo* %6, i64 0, i32 6
  store %struct.stackinfo* %call, %struct.stackinfo** %si_next2, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %next.0 = phi %struct.stackinfo* [ %4, %entry ], [ %call, %if.then ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %7 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %7, i64 0, i32 0
  %8 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %8, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %10 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any3 = getelementptr inbounds %struct.av* %10, i64 0, i32 0
  %11 = load %struct.xpvav** %sv_any3, align 8, !tbaa !0
  %xav_fill4 = getelementptr inbounds %struct.xpvav* %11, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill4, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %8, i64 0, i32 0
  %12 = load i8** %xav_array, align 8, !tbaa !0
  %13 = bitcast i8* %12 to %struct.sv**
  store %struct.sv** %13, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %14 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.av* %14, i64 0, i32 0
  %15 = load %struct.xpvav** %sv_any8, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 2
  %16 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %13, i64 %16
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %17 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.av* %17, i64 0, i32 0
  %18 = load %struct.xpvav** %sv_any10, align 8, !tbaa !0
  %xav_fill11 = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 1
  %19 = load i64* %xav_fill11, align 8, !tbaa !4
  %add.ptr12 = getelementptr inbounds %struct.sv** %13, i64 %19
  store %struct.sv** %add.ptr12, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %20, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %21 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %21, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %22
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  tail call void @Perl_markstack_grow() #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre125 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre126 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %23 = phi %struct.sv** [ %.pre126, %if.then14 ], [ %add.ptr, %if.end ]
  %24 = phi i32* [ %.pre125, %if.then14 ], [ %incdec.ptr, %if.end ]
  %25 = phi %struct.sv** [ %.pre, %if.then14 ], [ %13, %if.end ]
  %sub.ptr.lhs.cast16 = ptrtoint %struct.sv** %add.ptr12 to i64
  %sub.ptr.rhs.cast17 = ptrtoint %struct.sv** %25 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19124 = lshr exact i64 %sub.ptr.sub18, 3
  %conv = trunc i64 %sub.ptr.div19124 to i32
  store i32 %conv, i32* %24, align 4, !tbaa !3
  %sub.ptr.lhs.cast20 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.lhs.cast16
  %cmp24 = icmp slt i64 %sub.ptr.sub22, 16
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end15
  %call27 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr12, %struct.sv** %add.ptr12, i32 2) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end15
  %sp.0 = phi %struct.sv** [ %call27, %if.then26 ], [ %add.ptr12, %if.end15 ]
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %26 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool29 = icmp eq %struct.sv* %26, null
  br i1 %tobool29, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end28
  %call31 = tail call %struct.sv* @Perl_newRV(%struct.sv* %sv) #7
  %call32 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call31) #7
  br label %cond.end

cond.end:                                         ; preds = %if.end28, %cond.false
  %cond33 = phi %struct.sv* [ %call32, %cond.false ], [ %26, %if.end28 ]
  %incdec.ptr34 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond33, %struct.sv** %incdec.ptr34, align 8, !tbaa !0
  %27 = load i32* %sv_flags, align 4, !tbaa !3
  %and36 = and i32 %27, 118423552
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %if.end40, label %if.then38

if.then38:                                        ; preds = %cond.end
  %incdec.ptr39 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %key, %struct.sv** %incdec.ptr39, align 8, !tbaa !0
  br label %if.end40

if.end40:                                         ; preds = %cond.end, %if.then38
  %sp.1 = phi %struct.sv** [ %incdec.ptr39, %if.then38 ], [ %incdec.ptr34, %cond.end ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call41 = tail call i32 @Perl_call_method(i8* %cond, i32 0) #7
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end40
  %28 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %28, i64 -1
  store %struct.sv** %incdec.ptr44, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %29 = load %struct.sv** %28, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %key, %struct.sv* %29, i32 2) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.then43
  %30 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev47 = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 5
  %32 = load %struct.stackinfo** %si_prev47, align 8, !tbaa !0
  %tobool48 = icmp eq %struct.stackinfo* %32, null
  br i1 %tobool48, label %if.then49, label %if.end75

if.then49:                                        ; preds = %if.end45
  %33 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool50 = icmp eq %struct.gv* %33, null
  br i1 %tobool50, label %cond.false70, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then49
  %sv_flags51 = getelementptr inbounds %struct.gv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags51, align 4, !tbaa !3
  %and52 = and i32 %34, 255
  %cmp53 = icmp eq i32 %and52, 13
  br i1 %cmp53, label %land.lhs.true55, label %cond.false70

land.lhs.true55:                                  ; preds = %land.lhs.true
  %sv_any56 = getelementptr inbounds %struct.gv* %33, i64 0, i32 0
  %35 = load %struct.xpvgv** %sv_any56, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %35, i64 0, i32 7
  %36 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %36, i64 0, i32 2
  %37 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.io* %37, null
  br i1 %tobool57, label %cond.false70, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %sv_any62 = getelementptr inbounds %struct.io* %37, i64 0, i32 0
  %38 = load %struct.xpvio** %sv_any62, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %38, i64 0, i32 8
  %39 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool63 = icmp eq %struct._PerlIO** %39, null
  br i1 %tobool63, label %cond.false70, label %cond.end72

cond.false70:                                     ; preds = %land.lhs.true58, %land.lhs.true55, %if.then49, %land.lhs.true
  %call71 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end72

cond.end72:                                       ; preds = %land.lhs.true58, %cond.false70
  %cond73 = phi %struct._PerlIO** [ %call71, %cond.false70 ], [ %39, %land.lhs.true58 ]
  %call74 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond73, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  tail call void @Perl_my_exit(i32 1) #7
  br label %if.end75

if.end75:                                         ; preds = %if.end45, %cond.end72
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast76 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast77 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %sub.ptr.div79 = ashr exact i64 %sub.ptr.sub78, 3
  %41 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any80 = getelementptr inbounds %struct.av* %41, i64 0, i32 0
  %42 = load %struct.xpvav** %sv_any80, align 8, !tbaa !0
  %xav_fill81 = getelementptr inbounds %struct.xpvav* %42, i64 0, i32 1
  store i64 %sub.ptr.div79, i64* %xav_fill81, align 8, !tbaa !4
  %si_stack82 = getelementptr inbounds %struct.stackinfo* %32, i64 0, i32 0
  %43 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any83 = getelementptr inbounds %struct.av* %43, i64 0, i32 0
  %44 = load %struct.xpvav** %sv_any83, align 8, !tbaa !0
  %xav_array84 = getelementptr inbounds %struct.xpvav* %44, i64 0, i32 0
  %45 = load i8** %xav_array84, align 8, !tbaa !0
  %46 = bitcast i8* %45 to %struct.sv**
  store %struct.sv** %46, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %47 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any86 = getelementptr inbounds %struct.av* %47, i64 0, i32 0
  %48 = load %struct.xpvav** %sv_any86, align 8, !tbaa !0
  %xav_max87 = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 2
  %49 = load i64* %xav_max87, align 8, !tbaa !4
  %add.ptr88 = getelementptr inbounds %struct.sv** %46, i64 %49
  store %struct.sv** %add.ptr88, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %50 = load %struct.av** %si_stack82, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any90, align 8, !tbaa !0
  %xav_fill91 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 1
  %52 = load i64* %xav_fill91, align 8, !tbaa !4
  %add.ptr92 = getelementptr inbounds %struct.sv** %46, i64 %52
  store %struct.sv** %add.ptr92, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %53 = load %struct.av** %si_stack82, align 8, !tbaa !0
  store %struct.av* %53, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %32, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %54 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %55 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp94 = icmp sgt i32 %54, %55
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end75
  tail call void @Perl_free_tmps() #7
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end75
  tail call void @Perl_pop_scope() #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_existspack(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  tail call fastcc void @S_magic_methpack(%struct.sv* %sv, %struct.magic* %mg, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0)) #8
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_magic_scalarpack(%struct.hv* %hv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %1 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %2 = bitcast %struct.hv* %hv to %struct.sv*
  %call = tail call %struct.sv* @Perl_newRV(%struct.sv* %2) #7
  %call3 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #7
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.sv* [ %call3, %cond.false ], [ %1, %entry ]
  %sv_any = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  %4 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any4 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any4, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %5, i64 48
  %6 = bitcast i8* %xmg_stash to %struct.hv**
  %7 = load %struct.hv** %6, align 8, !tbaa !0
  %call5 = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %7, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0), i32 0) #7
  %tobool6 = icmp eq %struct.gv* %call5, null
  br i1 %tobool6, label %if.then, label %if.end16

if.then:                                          ; preds = %cond.end
  %sv_any7 = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %8 = load %struct.xpvhv** %sv_any7, align 8, !tbaa !0
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %8, i64 0, i32 8
  %9 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.he* %9, null
  br i1 %tobool8, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %call10 = tail call %struct.sv* @Perl_sv_newmortal() #7
  %10 = bitcast %struct.hv* %hv to %struct.sv*
  %call11 = tail call i32 @Perl_magic_nextpack(%struct.sv* %10, %struct.magic* %mg, %struct.sv* %call10) #8
  %11 = load %struct.xpvhv** %sv_any7, align 8, !tbaa !0
  %xhv_eiter13 = getelementptr inbounds %struct.xpvhv* %11, i64 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter13, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %call10, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %12, 118423552
  %tobool14 = icmp ne i32 %and, 0
  %cond15 = select i1 %tobool14, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  br label %return

if.end16:                                         ; preds = %cond.end
  tail call void @Perl_push_scope() #7
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 6
  %14 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.stackinfo* %14, null
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  %call19 = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #7
  %15 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call19, i64 0, i32 5
  store %struct.stackinfo* %15, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %16 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next20 = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 6
  store %struct.stackinfo* %call19, %struct.stackinfo** %si_next20, align 8, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %if.then18
  %next.0 = phi %struct.stackinfo* [ %14, %if.end16 ], [ %call19, %if.then18 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %17 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any22 = getelementptr inbounds %struct.av* %17, i64 0, i32 0
  %18 = load %struct.xpvav** %sv_any22, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %19 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %20 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any23 = getelementptr inbounds %struct.av* %20, i64 0, i32 0
  %21 = load %struct.xpvav** %sv_any23, align 8, !tbaa !0
  %xav_fill24 = getelementptr inbounds %struct.xpvav* %21, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill24, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %18, i64 0, i32 0
  %22 = load i8** %xav_array, align 8, !tbaa !0
  %23 = bitcast i8* %22 to %struct.sv**
  store %struct.sv** %23, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %24 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any28 = getelementptr inbounds %struct.av* %24, i64 0, i32 0
  %25 = load %struct.xpvav** %sv_any28, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %25, i64 0, i32 2
  %26 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %23, i64 %26
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %27 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any30 = getelementptr inbounds %struct.av* %27, i64 0, i32 0
  %28 = load %struct.xpvav** %sv_any30, align 8, !tbaa !0
  %xav_fill31 = getelementptr inbounds %struct.xpvav* %28, i64 0, i32 1
  %29 = load i64* %xav_fill31, align 8, !tbaa !4
  %add.ptr32 = getelementptr inbounds %struct.sv** %23, i64 %29
  store %struct.sv** %add.ptr32, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %30, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %31 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %31, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %32 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %32
  br i1 %cmp, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end21
  tail call void @Perl_markstack_grow() #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre132 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre133 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end21
  %33 = phi %struct.sv** [ %.pre133, %if.then34 ], [ %add.ptr, %if.end21 ]
  %34 = phi i32* [ %.pre132, %if.then34 ], [ %incdec.ptr, %if.end21 ]
  %35 = phi %struct.sv** [ %.pre, %if.then34 ], [ %23, %if.end21 ]
  %sub.ptr.lhs.cast36 = ptrtoint %struct.sv** %add.ptr32 to i64
  %sub.ptr.rhs.cast37 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %sub.ptr.div39131 = lshr exact i64 %sub.ptr.sub38, 3
  %conv = trunc i64 %sub.ptr.div39131 to i32
  store i32 %conv, i32* %34, align 4, !tbaa !3
  %sub.ptr.lhs.cast40 = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.lhs.cast36
  %cmp44 = icmp slt i64 %sub.ptr.sub42, 8
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end35
  %call47 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr32, %struct.sv** %add.ptr32, i32 1) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end35
  %sp.0 = phi %struct.sv** [ %call47, %if.then46 ], [ %add.ptr32, %if.end35 ]
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond, %struct.sv** %incdec.ptr49, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr49, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call50 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0), i32 0) #7
  %tobool51 = icmp eq i32 %call50, 0
  %.pre134 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end48
  %incdec.ptr53 = getelementptr inbounds %struct.sv** %.pre134, i64 -1
  store %struct.sv** %incdec.ptr53, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %36 = load %struct.sv** %.pre134, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %if.then52
  %37 = phi %struct.sv** [ %incdec.ptr53, %if.then52 ], [ %.pre134, %if.end48 ]
  %retval1.0 = phi %struct.sv* [ %36, %if.then52 ], [ @PL_sv_undef, %if.end48 ]
  %38 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev56 = getelementptr inbounds %struct.stackinfo* %38, i64 0, i32 5
  %39 = load %struct.stackinfo** %si_prev56, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.stackinfo* %39, null
  br i1 %tobool57, label %if.then58, label %if.end84

if.then58:                                        ; preds = %if.end54
  %40 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool59 = icmp eq %struct.gv* %40, null
  br i1 %tobool59, label %cond.false79, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then58
  %sv_flags60 = getelementptr inbounds %struct.gv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags60, align 4, !tbaa !3
  %and61 = and i32 %41, 255
  %cmp62 = icmp eq i32 %and61, 13
  br i1 %cmp62, label %land.lhs.true64, label %cond.false79

land.lhs.true64:                                  ; preds = %land.lhs.true
  %sv_any65 = getelementptr inbounds %struct.gv* %40, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any65, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %43, i64 0, i32 2
  %44 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool66 = icmp eq %struct.io* %44, null
  br i1 %tobool66, label %cond.false79, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %sv_any71 = getelementptr inbounds %struct.io* %44, i64 0, i32 0
  %45 = load %struct.xpvio** %sv_any71, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %45, i64 0, i32 8
  %46 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool72 = icmp eq %struct._PerlIO** %46, null
  br i1 %tobool72, label %cond.false79, label %cond.end81

cond.false79:                                     ; preds = %land.lhs.true67, %land.lhs.true64, %if.then58, %land.lhs.true
  %call80 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end81

cond.end81:                                       ; preds = %land.lhs.true67, %cond.false79
  %cond82 = phi %struct._PerlIO** [ %call80, %cond.false79 ], [ %46, %land.lhs.true67 ]
  %call83 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond82, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  tail call void @Perl_my_exit(i32 1) #7
  br label %if.end84

if.end84:                                         ; preds = %if.end54, %cond.end81
  %47 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast85 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.rhs.cast86 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %sub.ptr.div88 = ashr exact i64 %sub.ptr.sub87, 3
  %48 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any89 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any89, align 8, !tbaa !0
  %xav_fill90 = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 1
  store i64 %sub.ptr.div88, i64* %xav_fill90, align 8, !tbaa !4
  %si_stack91 = getelementptr inbounds %struct.stackinfo* %39, i64 0, i32 0
  %50 = load %struct.av** %si_stack91, align 8, !tbaa !0
  %sv_any92 = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any92, align 8, !tbaa !0
  %xav_array93 = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 0
  %52 = load i8** %xav_array93, align 8, !tbaa !0
  %53 = bitcast i8* %52 to %struct.sv**
  store %struct.sv** %53, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %54 = load %struct.av** %si_stack91, align 8, !tbaa !0
  %sv_any95 = getelementptr inbounds %struct.av* %54, i64 0, i32 0
  %55 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_max96 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 2
  %56 = load i64* %xav_max96, align 8, !tbaa !4
  %add.ptr97 = getelementptr inbounds %struct.sv** %53, i64 %56
  store %struct.sv** %add.ptr97, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %57 = load %struct.av** %si_stack91, align 8, !tbaa !0
  %sv_any99 = getelementptr inbounds %struct.av* %57, i64 0, i32 0
  %58 = load %struct.xpvav** %sv_any99, align 8, !tbaa !0
  %xav_fill100 = getelementptr inbounds %struct.xpvav* %58, i64 0, i32 1
  %59 = load i64* %xav_fill100, align 8, !tbaa !4
  %add.ptr101 = getelementptr inbounds %struct.sv** %53, i64 %59
  store %struct.sv** %add.ptr101, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %60 = load %struct.av** %si_stack91, align 8, !tbaa !0
  store %struct.av* %60, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %39, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  br label %return

return:                                           ; preds = %if.then, %if.end84, %if.end
  %retval.0 = phi %struct.sv* [ %retval1.0, %if.end84 ], [ %cond15, %if.end ], [ @PL_sv_yes, %if.then ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setdbline(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.gv** @PL_DBline, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %sv, null
  br i1 %tobool, label %cond.end33, label %cond.false

cond.false:                                       ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false10, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %3 = bitcast i8* %2 to %struct.xpv*
  store %struct.xpv* %3, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %2, null
  br i1 %tobool3, label %land.end9, label %land.rhs

land.rhs:                                         ; preds = %cond.true2
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  %cmp = icmp ugt i64 %5, 1
  br i1 %cmp, label %land.end9, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool5 = icmp eq i64 %5, 0
  br i1 %tobool5, label %land.end9, label %land.rhs6

land.rhs6:                                        ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %2 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !0
  %7 = load i8* %6, align 1, !tbaa !1
  %cmp7 = icmp ne i8 %7, 48
  br label %land.end9

land.end9:                                        ; preds = %lor.rhs, %cond.true2, %land.rhs, %land.rhs6
  %8 = phi i1 [ false, %cond.true2 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp7, %land.rhs6 ]
  %cond = zext i1 %8 to i32
  br label %cond.end33

cond.false10:                                     ; preds = %cond.false
  %and12 = and i32 %1, 65536
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %cond.false18, label %cond.true14

cond.true14:                                      ; preds = %cond.false10
  %sv_any15 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %9 = load i8** %sv_any15, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  %cmp16 = icmp ne i64 %11, 0
  %conv17 = zext i1 %cmp16 to i32
  br label %cond.end33

cond.false18:                                     ; preds = %cond.false10
  %and20 = and i32 %1, 131072
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %cond.false26, label %cond.true22

cond.true22:                                      ; preds = %cond.false18
  %sv_any23 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %12 = load i8** %sv_any23, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %12, i64 32
  %13 = bitcast i8* %xnv_nv to double*
  %14 = load double* %13, align 8, !tbaa !5
  %cmp24 = fcmp une double %14, 0.000000e+00
  %conv25 = zext i1 %cmp24 to i32
  br label %cond.end33

cond.false26:                                     ; preds = %cond.false18
  %call = call signext i8 @Perl_sv_2bool(%struct.sv* %sv) #7
  %conv27 = sext i8 %call to i32
  br label %cond.end33

cond.end33:                                       ; preds = %entry, %land.end9, %cond.true22, %cond.false26, %cond.true14
  %cond34 = phi i32 [ 0, %entry ], [ %cond, %land.end9 ], [ %conv17, %cond.true14 ], [ %conv25, %cond.true22 ], [ %conv27, %cond.false26 ]
  %sv_any35 = getelementptr inbounds %struct.gv* %0, i64 0, i32 0
  %15 = load %struct.xpvgv** %sv_any35, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %16, i64 0, i32 4
  %17 = load %struct.av** %gp_av, align 8, !tbaa !0
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %18 = load i32* %mg_len, align 4, !tbaa !3
  %conv36 = sext i32 %18 to i64
  store i64 %conv36, i64* %n_a, align 8, !tbaa !4
  %cmp38 = icmp eq i32 %18, -2
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %19 = load i8** %mg_ptr, align 8, !tbaa !0
  br i1 %cmp38, label %cond.true40, label %cond.end59

cond.true40:                                      ; preds = %cond.end33
  %sv_flags41 = getelementptr inbounds i8* %19, i64 12
  %20 = bitcast i8* %sv_flags41 to i32*
  %21 = load i32* %20, align 4, !tbaa !3
  %and42 = and i32 %21, 262144
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %cond.false52, label %cond.true45

cond.true45:                                      ; preds = %cond.true40
  %sv_any47 = bitcast i8* %19 to i8**
  %22 = load i8** %sv_any47, align 8, !tbaa !0
  %xpv_cur48 = getelementptr inbounds i8* %22, i64 8
  %23 = bitcast i8* %xpv_cur48 to i64*
  %24 = load i64* %23, align 8, !tbaa !4
  store i64 %24, i64* %n_a, align 8, !tbaa !4
  %xpv_pv51 = bitcast i8* %22 to i8**
  %25 = load i8** %xpv_pv51, align 8, !tbaa !0
  br label %cond.end59

cond.false52:                                     ; preds = %cond.true40
  %26 = bitcast i8* %19 to %struct.sv*
  %call54 = call i8* @Perl_sv_2pv_flags(%struct.sv* %26, i64* %n_a, i32 2) #7
  br label %cond.end59

cond.end59:                                       ; preds = %cond.end33, %cond.true45, %cond.false52
  %cond60 = phi i8* [ %25, %cond.true45 ], [ %call54, %cond.false52 ], [ %19, %cond.end33 ]
  %call61 = call i32 @atoi(i8* %cond60) #7
  %call62 = call %struct.sv** @Perl_av_fetch(%struct.av* %17, i32 %call61, i32 0) #7
  %tobool63 = icmp eq %struct.sv** %call62, null
  br i1 %tobool63, label %if.end79, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end59
  %27 = load %struct.sv** %call62, align 8, !tbaa !0
  %sv_flags64 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags64, align 4, !tbaa !3
  %and65 = and i32 %28, 16777216
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.end79, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true
  %sv_any68 = getelementptr inbounds %struct.sv* %27, i64 0, i32 0
  %29 = load i8** %sv_any68, align 8, !tbaa !0
  %xiv_iv69 = getelementptr inbounds i8* %29, i64 24
  %30 = bitcast i8* %xiv_iv69 to i64*
  %31 = load i64* %30, align 8, !tbaa !4
  %tobool70 = icmp eq i64 %31, 0
  br i1 %tobool70, label %if.end79, label %if.then

if.then:                                          ; preds = %land.lhs.true67
  %32 = inttoptr i64 %31 to %struct.op*
  %tobool71 = icmp eq i32 %cond34, 0
  %op_flags = getelementptr inbounds %struct.op* %32, i64 0, i32 6
  %33 = load i8* %op_flags, align 1, !tbaa !1
  br i1 %tobool71, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.then
  %or = or i8 %33, -128
  store i8 %or, i8* %op_flags, align 1, !tbaa !1
  br label %if.end79

if.else:                                          ; preds = %if.then
  %and77 = and i8 %33, 127
  store i8 %and77, i8* %op_flags, align 1, !tbaa !1
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true67, %land.lhs.true, %cond.end59, %if.then72, %if.else
  ret i32 0
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getarylen(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %0 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i32 @Perl_mg_size(%struct.sv* %0) #8
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %sv_any = bitcast %struct.sv* %0 to %struct.xpvav**
  %2 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %2, i64 0, i32 1
  %3 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %3, %cond.false ]
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %4, i64 0, i32 12
  %5 = load i32* %cop_arybase, align 4, !tbaa !3
  %conv3 = sext i32 %5 to i64
  %add = add nsw i64 %conv3, %cond
  tail call void @Perl_sv_setiv(%struct.sv* %sv, i64 %add) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setarylen(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %0 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %1 = bitcast %struct.sv* %0 to %struct.av*
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %6, i64 0, i32 12
  %7 = load i32* %cop_arybase, align 4, !tbaa !3
  %conv3 = zext i32 %7 to i64
  %sub = sub nsw i64 %cond, %conv3
  %conv1 = trunc i64 %sub to i32
  tail call void @Perl_av_fill(%struct.av* %1, i32 %conv1) #7
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_av_fill(%struct.av*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getpos(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %i = alloca i32, align 4
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 255
  %cmp = icmp ugt i32 %and, 6
  br i1 %cmp, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %sv_any1 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any1, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %4, i64 40
  %5 = bitcast i8* %xmg_magic to %struct.magic**
  %6 = load %struct.magic** %5, align 8, !tbaa !0
  %tobool = icmp eq %struct.magic* %6, null
  %tobool.i = icmp eq %struct.sv* %2, null
  %or.cond = or i1 %tobool, %tobool.i
  br i1 %or.cond, label %if.end16, label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %mg_moremagic.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 0
  %mg.0.i = load %struct.magic** %mg_moremagic.i, align 8
  %tobool1.i = icmp eq %struct.magic* %mg.0.i, null
  br i1 %tobool1.i, label %if.end16, label %for.body.i

for.body.i:                                       ; preds = %land.lhs.true, %for.cond.i
  %mg.010.i = phi %struct.magic* [ %mg.0.i, %for.cond.i ], [ %6, %land.lhs.true ]
  %mg_type.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 3
  %7 = load i8* %mg_type.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %7, 103
  br i1 %cmp.i, label %land.lhs.true3, label %for.cond.i

land.lhs.true3:                                   ; preds = %for.body.i
  %mg_len = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 7
  %8 = load i32* %mg_len, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %8, -1
  br i1 %cmp4, label %if.then5, label %if.end16

if.then5:                                         ; preds = %land.lhs.true3
  store i32 %8, i32* %i, align 4, !tbaa !3
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and8 = and i32 %9, 536870912
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then5
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %10, i64 0, i32 7
  %11 = load i8* %op_private, align 1, !tbaa !1
  %and11 = and i8 %11, 8
  %tobool12 = icmp eq i8 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true10
  call void @Perl_sv_pos_b2u(%struct.sv* %2, i32* %i) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true10, %if.then5, %if.then13
  %12 = load i32* %i, align 4, !tbaa !3
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %13, i64 0, i32 12
  %14 = load i32* %cop_arybase, align 4, !tbaa !3
  %add = add nsw i32 %14, %12
  %conv14 = sext i32 %add to i64
  call void @Perl_sv_setiv(%struct.sv* %sv, i64 %conv14) #7
  br label %return

if.end16:                                         ; preds = %for.cond.i, %land.lhs.true, %land.lhs.true3, %entry
  %sv_flags17 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %15 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %15, 1223753727
  store i32 %and18, i32* %sv_flags17, align 4, !tbaa !3
  %and20 = and i32 %15, 2097152
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end16
  %call22 = call i32 @Perl_sv_backoff(%struct.sv* %sv) #7
  br label %return

return:                                           ; preds = %land.rhs, %if.end16, %if.end
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_sv_pos_b2u(%struct.sv*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setpos(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %p = alloca i32, align 4
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 255
  %cmp = icmp ugt i32 %and, 6
  br i1 %cmp, label %land.lhs.true, label %if.then3

land.lhs.true:                                    ; preds = %entry
  %sv_any1 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any1, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %4, i64 40
  %5 = bitcast i8* %xmg_magic to %struct.magic**
  %6 = load %struct.magic** %5, align 8, !tbaa !0
  %tobool = icmp eq %struct.magic* %6, null
  %tobool.i = icmp eq %struct.sv* %2, null
  %or.cond = or i1 %tobool, %tobool.i
  br i1 %or.cond, label %if.then3, label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %mg_moremagic.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 0
  %mg.0.i = load %struct.magic** %mg_moremagic.i, align 8
  %tobool1.i = icmp eq %struct.magic* %mg.0.i, null
  br i1 %tobool1.i, label %if.then3, label %for.body.i

for.body.i:                                       ; preds = %land.lhs.true, %for.cond.i
  %mg.010.i = phi %struct.magic* [ %mg.0.i, %for.cond.i ], [ %6, %land.lhs.true ]
  %mg_type.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 3
  %7 = load i8* %mg_type.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %7, 103
  br i1 %cmp.i, label %if.else, label %for.cond.i

if.then3:                                         ; preds = %for.cond.i, %land.lhs.true, %entry
  %sv_flags10108 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %8 = load i32* %sv_flags10108, align 4, !tbaa !3
  %and11109 = and i32 %8, 118423552
  %tobool12110 = icmp eq i32 %and11109, 0
  br i1 %tobool12110, label %return, label %if.end8

if.end8:                                          ; preds = %if.then3
  call void @Perl_sv_magic(%struct.sv* %2, %struct.sv* null, i32 103, i8* null, i32 0) #7
  %tobool.i90 = icmp eq %struct.sv* %2, null
  br i1 %tobool.i90, label %if.end15, label %if.end.i95

if.end.i95:                                       ; preds = %if.end8
  %sv_any.i91 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %9 = load i8** %sv_any.i91, align 8, !tbaa !0
  %xmg_magic.i92 = getelementptr inbounds i8* %9, i64 40
  %10 = bitcast i8* %xmg_magic.i92 to %struct.magic**
  %mg.08.i93 = load %struct.magic** %10, align 8
  %tobool19.i94 = icmp eq %struct.magic* %mg.08.i93, null
  br i1 %tobool19.i94, label %if.end15, label %for.body.i104

for.cond.i99:                                     ; preds = %for.body.i104
  %mg_moremagic.i96 = getelementptr inbounds %struct.magic* %mg.010.i100, i64 0, i32 0
  %mg.0.i97 = load %struct.magic** %mg_moremagic.i96, align 8
  %tobool1.i98 = icmp eq %struct.magic* %mg.0.i97, null
  br i1 %tobool1.i98, label %if.end15, label %for.body.i104

for.body.i104:                                    ; preds = %if.end.i95, %for.cond.i99
  %mg.010.i100 = phi %struct.magic* [ %mg.0.i97, %for.cond.i99 ], [ %mg.08.i93, %if.end.i95 ]
  %mg_type.i101 = getelementptr inbounds %struct.magic* %mg.010.i100, i64 0, i32 3
  %11 = load i8* %mg_type.i101, align 1, !tbaa !1
  %cmp.i103 = icmp eq i8 %11, 103
  br i1 %cmp.i103, label %if.end15, label %for.cond.i99

if.else:                                          ; preds = %for.body.i
  %sv_flags10116 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %12 = load i32* %sv_flags10116, align 4, !tbaa !3
  %and11117 = and i32 %12, 118423552
  %tobool12118 = icmp eq i32 %and11117, 0
  br i1 %tobool12118, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  %mg_len = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 7
  store i32 -1, i32* %mg_len, align 4, !tbaa !3
  br label %return

if.end15:                                         ; preds = %for.body.i104, %for.cond.i99, %if.end.i95, %if.end8, %if.else
  %sv_flags10111 = phi i32* [ %sv_flags10116, %if.else ], [ %sv_flags10108, %if.end8 ], [ %sv_flags10108, %if.end.i95 ], [ %sv_flags10108, %for.cond.i99 ], [ %sv_flags10108, %for.body.i104 ]
  %mg.addr.1 = phi %struct.magic* [ %mg.010.i, %if.else ], [ null, %if.end8 ], [ null, %if.end.i95 ], [ null, %for.cond.i99 ], [ %mg.010.i100, %for.body.i104 ]
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and17 = and i32 %13, 262144
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end15
  %sv_any19 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %14 = load i8** %sv_any19, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %call20 = call i64 @Perl_sv_len(%struct.sv* %2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %call20, %cond.false ]
  %17 = load i32* %sv_flags10111, align 4, !tbaa !3
  %and22 = and i32 %17, 65536
  %tobool23 = icmp eq i32 %and22, 0
  br i1 %tobool23, label %cond.false26, label %cond.true24

cond.true24:                                      ; preds = %cond.end
  %18 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %18, i64 24
  %19 = bitcast i8* %xiv_iv to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  br label %cond.end28

cond.false26:                                     ; preds = %cond.end
  %call27 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %cond29 = phi i64 [ %20, %cond.true24 ], [ %call27, %cond.false26 ]
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %21, i64 0, i32 12
  %22 = load i32* %cop_arybase, align 4, !tbaa !3
  %conv = sext i32 %22 to i64
  %sub = sub nsw i64 %cond29, %conv
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %and31 = and i32 %23, 536870912
  %tobool32 = icmp eq i32 %and31, 0
  br i1 %tobool32, label %if.end42, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %cond.end28
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %24, i64 0, i32 7
  %25 = load i8* %op_private, align 1, !tbaa !1
  %and35 = and i8 %25, 8
  %tobool36 = icmp eq i8 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %land.lhs.true33
  %call38 = call i64 @Perl_sv_len_utf8(%struct.sv* %2) #7
  %tobool39 = icmp eq i64 %call38, 0
  %cond.call38 = select i1 %tobool39, i64 %cond, i64 %call38
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %land.lhs.true33, %cond.end28
  %len.0 = phi i64 [ %cond, %land.lhs.true33 ], [ %cond, %cond.end28 ], [ %cond.call38, %if.then37 ]
  %ulen.0 = phi i64 [ 0, %land.lhs.true33 ], [ 0, %cond.end28 ], [ %call38, %if.then37 ]
  %cmp43 = icmp slt i64 %sub, 0
  br i1 %cmp43, label %if.then45, label %if.else50

if.then45:                                        ; preds = %if.end42
  %add = add i64 %len.0, %sub
  %cmp46 = icmp slt i64 %add, 0
  %.add = select i1 %cmp46, i64 0, i64 %add
  br label %if.end55

if.else50:                                        ; preds = %if.end42
  %cmp51 = icmp sgt i64 %sub, %len.0
  %len.0.sub = select i1 %cmp51, i64 %len.0, i64 %sub
  br label %if.end55

if.end55:                                         ; preds = %if.else50, %if.then45
  %pos.0 = phi i64 [ %.add, %if.then45 ], [ %len.0.sub, %if.else50 ]
  %tobool56 = icmp eq i64 %ulen.0, 0
  br i1 %tobool56, label %if.end60, label %if.then57

if.then57:                                        ; preds = %if.end55
  %conv58 = trunc i64 %pos.0 to i32
  store i32 %conv58, i32* %p, align 4, !tbaa !3
  call void @Perl_sv_pos_u2b(%struct.sv* %2, i32* %p, i32* null) #7
  %26 = load i32* %p, align 4, !tbaa !3
  %conv59 = sext i32 %26 to i64
  br label %if.end60

if.end60:                                         ; preds = %if.end55, %if.then57
  %pos.1 = phi i64 [ %conv59, %if.then57 ], [ %pos.0, %if.end55 ]
  %conv61 = trunc i64 %pos.1 to i32
  %mg_len62 = getelementptr inbounds %struct.magic* %mg.addr.1, i64 0, i32 7
  store i32 %conv61, i32* %mg_len62, align 4, !tbaa !3
  %mg_flags = getelementptr inbounds %struct.magic* %mg.addr.1, i64 0, i32 4
  %27 = load i8* %mg_flags, align 1, !tbaa !1
  %and64 = and i8 %27, -2
  store i8 %and64, i8* %mg_flags, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then3, %if.end60, %if.then13
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_sv_len(%struct.sv*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_pos_u2b(%struct.sv*, i32*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getglob(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 1048576
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %0, -1048577
  store i32 %and2, i32* %sv_flags, align 4, !tbaa !3
  %1 = bitcast %struct.sv* %sv to %struct.gv*
  tail call void @Perl_gv_efullname4(%struct.sv* %sv, %struct.gv* %1, i8* getelementptr inbounds ([2 x i8]* @.str32, i64 0, i64 0), i8 signext 1) #7
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %2, 1048576
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = bitcast %struct.sv* %sv to %struct.gv*
  tail call void @Perl_gv_efullname4(%struct.sv* %sv, %struct.gv* %3, i8* getelementptr inbounds ([2 x i8]* @.str32, i64 0, i64 0), i8 signext 1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setglob(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %n_a = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 118423552
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 262144
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %n_a, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %5 = load i8* %cond, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %5, 42
  br i1 %cmp4, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %cond.end
  %arrayidx = getelementptr inbounds i8* %cond, i64 1
  %6 = load i8* %arrayidx, align 1, !tbaa !1
  %tobool7 = icmp eq i8 %6, 0
  %cond.incdec.ptr = select i1 %tobool7, i8* %cond, i8* %arrayidx
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %cond.end
  %s.0 = phi i8* [ %cond, %cond.end ], [ %cond.incdec.ptr, %land.lhs.true ]
  %call10 = call %struct.gv* @Perl_gv_fetchpv(i8* %s.0, i32 1, i32 13) #7
  %7 = bitcast %struct.gv* %call10 to %struct.sv*
  %cmp11 = icmp eq %struct.sv* %7, %sv
  br i1 %cmp11, label %return, label %if.end14

if.end14:                                         ; preds = %if.end9
  %sv_any15 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %8 = load i8** %sv_any15, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds i8* %8, i64 56
  %9 = bitcast i8* %xgv_gp to %struct.gp**
  %10 = load %struct.gp** %9, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.gp* %10, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  %11 = bitcast %struct.sv* %sv to %struct.gv*
  call void @Perl_gp_free(%struct.gv* %11) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.then17
  %sv_any19 = getelementptr inbounds %struct.gv* %call10, i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any19, align 8, !tbaa !0
  %xgv_gp20 = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp20, align 8, !tbaa !0
  %call21 = call %struct.gp* @Perl_gp_ref(%struct.gp* %13) #7
  %14 = load i8** %sv_any15, align 8, !tbaa !0
  %xgv_gp23 = getelementptr inbounds i8* %14, i64 56
  %15 = bitcast i8* %xgv_gp23 to %struct.gp**
  store %struct.gp* %call21, %struct.gp** %15, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end9, %entry, %if.end18
  ret i32 0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_gp_free(%struct.gv*) #1

; Function Attrs: optsize
declare %struct.gp* @Perl_gp_ref(%struct.gp*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getsubstr(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %len = alloca i64, align 8
  %offs = alloca i32, align 4
  %rem = alloca i32, align 4
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any1 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any1, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %2, i64* %len, i32 2) #7
  %.pre = load i8** %sv_any, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %8 = phi i8* [ %0, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %7, %cond.true ], [ %call, %cond.false ]
  %xlv_targoff = getelementptr inbounds i8* %8, i64 56
  %9 = bitcast i8* %xlv_targoff to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %offs, align 4, !tbaa !3
  %xlv_targlen = getelementptr inbounds i8* %8, i64 64
  %11 = bitcast i8* %xlv_targlen to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %conv5 = trunc i64 %12 to i32
  store i32 %conv5, i32* %rem, align 4, !tbaa !3
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and7 = and i32 %13, 536870912
  %tobool = icmp eq i32 %and7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @Perl_sv_pos_u2b(%struct.sv* %2, i32* %offs, i32* %rem) #7
  %.pre38 = load i32* %offs, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %14 = phi i32 [ %.pre38, %if.then ], [ %conv, %cond.end ]
  %15 = load i64* %len, align 8, !tbaa !4
  %conv8 = trunc i64 %15 to i32
  %cmp9 = icmp sgt i32 %14, %conv8
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  store i32 %conv8, i32* %offs, align 4, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then11
  %16 = phi i32 [ %conv8, %if.then11 ], [ %14, %if.end ]
  %17 = load i32* %rem, align 4, !tbaa !3
  %add = add nsw i32 %16, %17
  %cmp15 = icmp sgt i32 %add, %conv8
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  %conv1837 = zext i32 %16 to i64
  %sub = sub i64 %15, %conv1837
  %conv19 = trunc i64 %sub to i32
  store i32 %conv19, i32* %rem, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13
  %18 = phi i32 [ %conv19, %if.then17 ], [ %17, %if.end13 ]
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8* %cond, i64 %idx.ext
  %conv21 = sext i32 %18 to i64
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %add.ptr, i64 %conv21) #7
  %19 = load i32* %sv_flags, align 4, !tbaa !3
  %and23 = and i32 %19, 536870912
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end20
  %sv_flags26 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %20 = load i32* %sv_flags26, align 4, !tbaa !3
  %or = or i32 %20, 536870912
  store i32 %or, i32* %sv_flags26, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then25
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setsubstr(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %len = alloca i64, align 8
  %lvoff = alloca i32, align 4
  %lvlen = alloca i32, align 4
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  %sv_any2.phi.trans.insert = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %.pre = load i8** %sv_any2.phi.trans.insert, align 8, !tbaa !0
  %.pre48 = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i32 [ %0, %cond.true ], [ %.pre48, %cond.false ]
  %6 = phi i8* [ %1, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %xlv_targ = getelementptr inbounds i8* %6, i64 72
  %7 = bitcast i8* %xlv_targ to %struct.sv**
  %8 = load %struct.sv** %7, align 8, !tbaa !0
  %xlv_targoff = getelementptr inbounds i8* %6, i64 56
  %9 = bitcast i8* %xlv_targoff to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %lvoff, align 4, !tbaa !3
  %xlv_targlen = getelementptr inbounds i8* %6, i64 64
  %11 = bitcast i8* %xlv_targlen to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %conv5 = trunc i64 %12 to i32
  store i32 %conv5, i32* %lvlen, align 4, !tbaa !3
  %and7 = and i32 %5, 536870912
  %tobool = icmp eq i32 %and7, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %13, i64 0, i32 7
  %14 = load i8* %op_private, align 1, !tbaa !1
  %and9 = and i8 %14, 8
  %tobool10 = icmp eq i8 %and9, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call11 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %8, i32 2) #7
  call void @Perl_sv_pos_u2b(%struct.sv* %8, i32* %lvoff, i32* %lvlen) #7
  %15 = load i32* %lvoff, align 4, !tbaa !3
  %conv12 = sext i32 %15 to i64
  %16 = load i32* %lvlen, align 4, !tbaa !3
  %conv13 = sext i32 %16 to i64
  %17 = load i64* %len, align 8, !tbaa !4
  call void @Perl_sv_insert(%struct.sv* %8, i64 %conv12, i64 %conv13, i8* %cond, i64 %17) #7
  %sv_flags14 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %18 = load i32* %sv_flags14, align 4, !tbaa !3
  %or = or i32 %18, 536870912
  store i32 %or, i32* %sv_flags14, align 4, !tbaa !3
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %tobool15 = icmp eq %struct.sv* %8, null
  br i1 %tobool15, label %if.else24, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.else
  %sv_flags17 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %19 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %19, 536870912
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.else24, label %if.then20

if.then20:                                        ; preds = %land.lhs.true16
  call void @Perl_sv_pos_u2b(%struct.sv* %8, i32* %lvoff, i32* %lvlen) #7
  %call21 = call i8* @Perl_bytes_to_utf8(i8* %cond, i64* %len) #7
  %20 = load i32* %lvoff, align 4, !tbaa !3
  %conv22 = sext i32 %20 to i64
  %21 = load i32* %lvlen, align 4, !tbaa !3
  %conv23 = sext i32 %21 to i64
  %22 = load i64* %len, align 8, !tbaa !4
  call void @Perl_sv_insert(%struct.sv* %8, i64 %conv22, i64 %conv23, i8* %call21, i64 %22) #7
  call void @Perl_safesysfree(i8* %call21) #7
  br label %if.end27

if.else24:                                        ; preds = %land.lhs.true16, %if.else
  %23 = load i32* %lvoff, align 4, !tbaa !3
  %conv25 = sext i32 %23 to i64
  %24 = load i32* %lvlen, align 4, !tbaa !3
  %conv26 = sext i32 %24 to i64
  %25 = load i64* %len, align 8, !tbaa !4
  call void @Perl_sv_insert(%struct.sv* %8, i64 %conv25, i64 %conv26, i8* %cond, i64 %25) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.else24, %if.then
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_gettaint(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %0 = load i32* %mg_len, align 4, !tbaa !3
  %and = and i32 %0, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %and2 = and i32 %0, 2
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %1 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %1, %sv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then, %land.lhs.true
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_settaint(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %0 = load i32* @PL_localizing, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i32 %0, 1
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %1 = load i32* %mg_len, align 4, !tbaa !3
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %mg_len, align 4, !tbaa !3
  br label %if.end10

if.else:                                          ; preds = %if.then
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* %mg_len, align 4, !tbaa !3
  br label %if.end10

if.else3:                                         ; preds = %entry
  %2 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool4 = icmp eq i8 %2, 0
  %mg_len6 = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  %3 = load i32* %mg_len6, align 4, !tbaa !3
  br i1 %tobool4, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else3
  %or = or i32 %3, 1
  store i32 %or, i32* %mg_len6, align 4, !tbaa !3
  br label %if.end10

if.else7:                                         ; preds = %if.else3
  %and = and i32 %3, -2
  store i32 %and, i32* %mg_len6, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else7, %if.then1, %if.else
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getvec(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 1223753727
  store i32 %and, i32* %sv_flags, align 4, !tbaa !3
  %and2 = and i32 %3, 2097152
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %call = tail call i32 @Perl_sv_backoff(%struct.sv* %sv) #7
  br label %return

if.end:                                           ; preds = %entry
  %xlv_targoff = getelementptr inbounds i8* %0, i64 56
  %4 = bitcast i8* %xlv_targoff to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  %conv = trunc i64 %5 to i32
  %xlv_targlen = getelementptr inbounds i8* %0, i64 64
  %6 = bitcast i8* %xlv_targlen to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  %conv7 = trunc i64 %7 to i32
  %call8 = tail call i64 @Perl_do_vecget(%struct.sv* %2, i32 %conv, i32 %conv7) #7
  tail call void @Perl_sv_setuv(%struct.sv* %sv, i64 %call8) #7
  br label %return

return:                                           ; preds = %land.rhs, %if.then, %if.end
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_do_vecget(%struct.sv*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setvec(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  tail call void @Perl_do_vecset(%struct.sv* %sv) #7
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_do_vecset(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_getdefelem(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targlen = getelementptr inbounds i8* %0, i64 64
  %1 = bitcast i8* %xlv_targlen to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %tobool = icmp eq i64 %2, 0
  br i1 %tobool, label %if.else51, label %if.then

if.then:                                          ; preds = %entry
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %3 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %3, null
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %4 = bitcast i8* %xlv_targ to %struct.sv**
  %5 = load %struct.sv** %4, align 8, !tbaa !0
  br i1 %tobool1, label %if.else14, label %if.then2

if.then2:                                         ; preds = %if.then
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %7 = bitcast %struct.sv* %5 to %struct.hv*
  %call = tail call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %7, %struct.sv* %3, i32 0, i32 0) #7
  %tobool6 = icmp eq %struct.he* %call, null
  br i1 %tobool6, label %if.end54, label %if.then7

if.then7:                                         ; preds = %if.then4
  %hent_val = getelementptr inbounds %struct.he* %call, i64 0, i32 2
  br label %if.end32

if.else:                                          ; preds = %if.then2
  %8 = bitcast %struct.sv* %5 to %struct.av*
  %call9 = tail call %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %8, %struct.sv* %3, i32 0, i32 0) #7
  %tobool10 = icmp eq %struct.sv** %call9, null
  br i1 %tobool10, label %if.end54, label %if.end32

if.else14:                                        ; preds = %if.then
  %xlv_targoff = getelementptr inbounds i8* %0, i64 56
  %9 = bitcast i8* %xlv_targoff to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  %sext = shl i64 %10, 32
  %conv18 = ashr exact i64 %sext, 32
  %sv_flags19 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %11 = load i32* %sv_flags19, align 4, !tbaa !3
  %and20 = and i32 %11, 32768
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else14
  %call22 = tail call i32 @Perl_mg_size(%struct.sv* %5) #8
  %conv23 = sext i32 %call22 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.else14
  %sv_any24 = bitcast %struct.sv* %5 to %struct.xpvav**
  %12 = load %struct.xpvav** %sv_any24, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %12, i64 0, i32 1
  %13 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv23, %cond.true ], [ %13, %cond.false ]
  %cmp25 = icmp sgt i64 %conv18, %cond
  br i1 %cmp25, label %if.end54, label %if.then27

if.then27:                                        ; preds = %cond.end
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targoff29 = getelementptr inbounds i8* %14, i64 56
  %15 = bitcast i8* %xlv_targoff29 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %sv_any30 = bitcast %struct.sv* %5 to %struct.xpvav**
  %17 = load %struct.xpvav** %sv_any30, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 0
  %18 = load i8** %xav_array, align 8, !tbaa !0
  %19 = bitcast i8* %18 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %19, i64 %16
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then27, %if.then7
  %targ.0.in = phi %struct.sv** [ %hent_val, %if.then7 ], [ %arrayidx, %if.then27 ], [ %call9, %if.else ]
  %targ.0 = load %struct.sv** %targ.0.in, align 8
  %tobool33 = icmp ne %struct.sv* %targ.0, null
  %cmp34 = icmp ne %struct.sv* %targ.0, @PL_sv_undef
  %or.cond = and i1 %tobool33, %cmp34
  br i1 %or.cond, label %land.end, label %if.end54

land.end:                                         ; preds = %if.end32
  %20 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ38 = getelementptr inbounds i8* %20, i64 72
  %21 = bitcast i8* %xlv_targ38 to %struct.sv**
  %22 = load %struct.sv** %21, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %22) #7
  store %struct.sv* %targ.0, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 1
  %23 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %23, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  %24 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ42 = getelementptr inbounds i8* %24, i64 72
  %25 = bitcast i8* %xlv_targ42 to %struct.sv**
  store %struct.sv* %targ.0, %struct.sv** %25, align 8, !tbaa !0
  %26 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targlen44 = getelementptr inbounds i8* %26, i64 64
  %27 = bitcast i8* %xlv_targlen44 to i64*
  store i64 0, i64* %27, align 8, !tbaa !4
  %28 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %28) #7
  store %struct.sv* null, %struct.sv** %mg_obj, align 8, !tbaa !0
  %mg_flags = getelementptr inbounds %struct.magic* %mg, i64 0, i32 4
  %29 = load i8* %mg_flags, align 1, !tbaa !1
  %and48 = and i8 %29, -3
  store i8 %and48, i8* %mg_flags, align 1, !tbaa !1
  br label %if.end54

if.else51:                                        ; preds = %entry
  %xlv_targ53 = getelementptr inbounds i8* %0, i64 72
  %30 = bitcast i8* %xlv_targ53 to %struct.sv**
  %31 = load %struct.sv** %30, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %cond.end, %if.else, %if.then4, %if.end32, %land.end, %if.else51
  %targ.1 = phi %struct.sv* [ %targ.0, %land.end ], [ %targ.0, %if.end32 ], [ %31, %if.else51 ], [ null, %if.then4 ], [ null, %if.else ], [ null, %cond.end ]
  %tobool55 = icmp ne %struct.sv* %targ.1, null
  %cond59 = select i1 %tobool55, %struct.sv* %targ.1, %struct.sv* @PL_sv_undef
  tail call void @Perl_sv_setsv_flags(%struct.sv* %sv, %struct.sv* %cond59, i32 2) #7
  ret i32 0
}

; Function Attrs: optsize
declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_avhv_fetch_ent(%struct.av*, %struct.sv*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setdefelem(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targlen = getelementptr inbounds i8* %0, i64 64
  %1 = bitcast i8* %xlv_targlen to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %tobool = icmp eq i64 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @Perl_vivify_defelem(%struct.sv* %sv) #8
  %.pre = load i8** %sv_any, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i8* [ %0, %entry ], [ %.pre, %if.then ]
  %xlv_targ = getelementptr inbounds i8* %3, i64 72
  %4 = bitcast i8* %xlv_targ to %struct.sv**
  %5 = load %struct.sv** %4, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.sv* %5, null
  br i1 %tobool2, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @Perl_sv_setsv_flags(%struct.sv* %5, %struct.sv* %sv, i32 2) #7
  %6 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ7 = getelementptr inbounds i8* %6, i64 72
  %7 = bitcast i8* %xlv_targ7 to %struct.sv**
  %8 = load %struct.sv** %7, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %9, 16384
  %tobool8 = icmp eq i32 %and, 0
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.then3
  %call = tail call i32 @Perl_mg_set(%struct.sv* %8) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end, %if.then9
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_vivify_defelem(%struct.sv* %sv) #0 {
entry:
  %n_a = alloca i64, align 8
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targlen = getelementptr inbounds i8* %0, i64 64
  %1 = bitcast i8* %xlv_targlen to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %tobool = icmp eq i64 %2, 0
  br i1 %tobool, label %return, label %if.end.i

if.end.i:                                         ; preds = %entry
  %xmg_magic.i = getelementptr inbounds i8* %0, i64 40
  %3 = bitcast i8* %xmg_magic.i to %struct.magic**
  %mg.08.i = load %struct.magic** %3, align 8
  %tobool19.i = icmp eq %struct.magic* %mg.08.i, null
  br i1 %tobool19.i, label %return, label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %mg_moremagic.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 0
  %mg.0.i = load %struct.magic** %mg_moremagic.i, align 8
  %tobool1.i = icmp eq %struct.magic* %mg.0.i, null
  br i1 %tobool1.i, label %return, label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %for.cond.i
  %mg.010.i = phi %struct.magic* [ %mg.0.i, %for.cond.i ], [ %mg.08.i, %if.end.i ]
  %mg_type.i = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 3
  %4 = load i8* %mg_type.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %4, 121
  br i1 %cmp.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %mg_obj = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 5
  %5 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.sv* %5, null
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %6 = bitcast i8* %xlv_targ to %struct.sv**
  %7 = load %struct.sv** %6, align 8, !tbaa !0
  br i1 %tobool2, label %if.else32, label %if.then3

if.then3:                                         ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %9 = bitcast %struct.sv* %7 to %struct.hv*
  %call7 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %9, %struct.sv* %5, i32 1, i32 0) #7
  %tobool8 = icmp eq %struct.he* %call7, null
  br i1 %tobool8, label %if.then20, label %if.then9

if.then9:                                         ; preds = %if.then5
  %hent_val = getelementptr inbounds %struct.he* %call7, i64 0, i32 2
  br label %if.end16

if.else:                                          ; preds = %if.then3
  %10 = bitcast %struct.sv* %7 to %struct.av*
  %call12 = call %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %10, %struct.sv* %5, i32 1, i32 0) #7
  %tobool13 = icmp eq %struct.sv** %call12, null
  br i1 %tobool13, label %if.then20, label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %value.0.in = phi %struct.sv** [ %hent_val, %if.then9 ], [ %call12, %if.else ]
  %value.0 = load %struct.sv** %value.0.in, align 8
  %tobool17 = icmp eq %struct.sv* %value.0, null
  %cmp19 = icmp eq %struct.sv* %value.0, @PL_sv_undef
  %or.cond = or i1 %tobool17, %cmp19
  br i1 %or.cond, label %if.then20, label %if.end73

if.then20:                                        ; preds = %if.else, %if.then5, %if.end16
  %value.0121 = phi %struct.sv* [ %value.0, %if.end16 ], [ null, %if.then5 ], [ null, %if.else ]
  %11 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %sv_flags22 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags22, align 4, !tbaa !3
  %and23 = and i32 %12, 262144
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then20
  %sv_any26 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any26, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  store i64 %15, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %11, i64* %n_a, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call30, %cond.false ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_helem, i64 0, i64 0), i8* %cond) #7
  br label %if.end73

if.else32:                                        ; preds = %if.end
  %17 = bitcast %struct.sv* %7 to %struct.av*
  %conv = trunc i64 %2 to i32
  %cmp37 = icmp slt i32 %conv, 0
  br i1 %cmp37, label %land.lhs.true, label %if.else57

land.lhs.true:                                    ; preds = %if.else32
  %xlv_targoff = getelementptr inbounds i8* %0, i64 56
  %18 = bitcast i8* %xlv_targoff to i64*
  %19 = load i64* %18, align 8, !tbaa !4
  %sext = shl i64 %19, 32
  %conv41 = ashr exact i64 %sext, 32
  %sv_flags42 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %20 = load i32* %sv_flags42, align 4, !tbaa !3
  %and43 = and i32 %20, 32768
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %cond.false48, label %cond.true45

cond.true45:                                      ; preds = %land.lhs.true
  %call46 = call i32 @Perl_mg_size(%struct.sv* %7) #8
  %conv47 = sext i32 %call46 to i64
  br label %cond.end50

cond.false48:                                     ; preds = %land.lhs.true
  %sv_any49 = bitcast %struct.sv* %7 to %struct.xpvav**
  %21 = load %struct.xpvav** %sv_any49, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %21, i64 0, i32 1
  %22 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false48, %cond.true45
  %cond51 = phi i64 [ %conv47, %cond.true45 ], [ %22, %cond.false48 ]
  %cmp52 = icmp sgt i64 %conv41, %cond51
  %23 = load i8** %sv_any, align 8, !tbaa !0
  br i1 %cmp52, label %if.end73.thread, label %if.else57

if.end73.thread:                                  ; preds = %cond.end50
  %xlv_targ56 = getelementptr inbounds i8* %23, i64 72
  %24 = bitcast i8* %xlv_targ56 to %struct.sv**
  store %struct.sv* null, %struct.sv** %24, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_Sv, align 8, !tbaa !0
  br label %land.end

if.else57:                                        ; preds = %cond.end50, %if.else32
  %25 = phi i8* [ %0, %if.else32 ], [ %23, %cond.end50 ]
  %xlv_targoff60 = getelementptr inbounds i8* %25, i64 56
  %26 = bitcast i8* %xlv_targoff60 to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %conv61 = trunc i64 %27 to i32
  %call62 = call %struct.sv** @Perl_av_fetch(%struct.av* %17, i32 %conv61, i32 1) #7
  %tobool63 = icmp eq %struct.sv** %call62, null
  br i1 %tobool63, label %if.then67, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.else57
  %28 = load %struct.sv** %call62, align 8, !tbaa !0
  %cmp65 = icmp eq %struct.sv* %28, @PL_sv_undef
  br i1 %cmp65, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.else57, %lor.lhs.false64
  %value.1 = phi %struct.sv* [ @PL_sv_undef, %lor.lhs.false64 ], [ null, %if.else57 ]
  %29 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targoff69 = getelementptr inbounds i8* %29, i64 56
  %30 = bitcast i8* %xlv_targoff69 to i64*
  %31 = load i64* %30, align 8, !tbaa !4
  %conv70 = trunc i64 %31 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_aelem, i64 0, i64 0), i32 %conv70) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %lor.lhs.false64, %cond.end, %if.end16
  %value.2 = phi %struct.sv* [ %value.0121, %cond.end ], [ %value.0, %if.end16 ], [ %value.1, %if.then67 ], [ %28, %lor.lhs.false64 ]
  store %struct.sv* %value.2, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool74 = icmp eq %struct.sv* %value.2, null
  br i1 %tobool74, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end73
  %sv_refcnt = getelementptr inbounds %struct.sv* %value.2, i64 0, i32 1
  %32 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %32, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end73.thread, %if.end73, %land.rhs
  %value.2123 = phi %struct.sv* [ null, %if.end73.thread ], [ null, %if.end73 ], [ %value.2, %land.rhs ]
  %33 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ77 = getelementptr inbounds i8* %33, i64 72
  %34 = bitcast i8* %xlv_targ77 to %struct.sv**
  %35 = load %struct.sv** %34, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %35) #7
  %36 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ79 = getelementptr inbounds i8* %36, i64 72
  %37 = bitcast i8* %xlv_targ79 to %struct.sv**
  store %struct.sv* %value.2123, %struct.sv** %37, align 8, !tbaa !0
  %38 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targlen81 = getelementptr inbounds i8* %38, i64 64
  %39 = bitcast i8* %xlv_targlen81 to i64*
  store i64 0, i64* %39, align 8, !tbaa !4
  %40 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %40) #7
  store %struct.sv* null, %struct.sv** %mg_obj, align 8, !tbaa !0
  %mg_flags = getelementptr inbounds %struct.magic* %mg.010.i, i64 0, i32 4
  %41 = load i8* %mg_flags, align 1, !tbaa !1
  %and85 = and i8 %41, -3
  store i8 %and85, i8* %mg_flags, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %for.cond.i, %if.end.i, %entry, %land.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_killbackrefs(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %0 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %sv_any = bitcast %struct.sv* %0 to %struct.xpvav**
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !0
  %3 = bitcast i8* %2 to %struct.sv**
  %xav_fill = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 1
  %4 = load i64* %xav_fill, align 8, !tbaa !4
  %conv = trunc i64 %4 to i32
  %cmp48 = icmp sgt i32 %conv, -1
  br i1 %cmp48, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sext = shl i64 %4, 32
  %5 = ashr exact i64 %sext, 32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end29
  %indvars.iv = phi i64 [ %5, %while.body.lr.ph ], [ %indvars.iv.next, %if.end29 ]
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %indvars.iv
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %6, null
  br i1 %tobool, label %if.end29, label %if.then

if.then:                                          ; preds = %while.body
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, -2146959360
  %cmp5 = icmp eq i32 %and, -2146959360
  br i1 %cmp5, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str33, i64 0, i64 0)) #7
  %.pre = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %8 = phi %struct.sv* [ %.pre, %if.then7 ], [ %6, %if.then ]
  %sv_any10 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any10, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %9 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  %10 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags13 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags13, align 4, !tbaa !3
  %and14 = and i32 %11, 1223753727
  store i32 %and14, i32* %sv_flags13, align 4, !tbaa !3
  %and18 = and i32 %11, 2097152
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call = tail call i32 @Perl_sv_backoff(%struct.sv* %10) #7
  %.pre50 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags25.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre50, i64 0, i32 2
  %.pre51 = load i32* %sv_flags25.phi.trans.insert, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %12 = phi i32 [ %and14, %if.end ], [ %.pre51, %land.rhs ]
  %13 = phi %struct.sv* [ %10, %if.end ], [ %.pre50, %land.rhs ]
  %sv_flags25 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %and26 = and i32 %12, 2146959359
  store i32 %and26, i32* %sv_flags25, align 4, !tbaa !3
  store %struct.sv* null, %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %while.body, %land.end
  %indvars.iv.next = add i64 %indvars.iv, -1
  %14 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end29, %entry
  tail call void @Perl_sv_free(%struct.sv* %0) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setmglob(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  store i32 -1, i32* %mg_len, align 4, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, -134217729
  store i32 %and, i32* %sv_flags, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setbm(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %call = tail call i32 @Perl_sv_unmagic(%struct.sv* %sv, i32 66) #7
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 2147483647
  store i32 %and, i32* %sv_flags, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setfm(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %call = tail call i32 @Perl_sv_unmagic(%struct.sv* %sv, i32 102) #7
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 2147483647
  store i32 %and, i32* %sv_flags, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setuvar(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %uf_set = getelementptr inbounds i8* %0, i64 8
  %1 = bitcast i8* %uf_set to i32 (i64, %struct.sv*)**
  %2 = load i32 (i64, %struct.sv*)** %1, align 8, !tbaa !0
  %tobool1 = icmp eq i32 (i64, %struct.sv*)* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %uf_index = getelementptr inbounds i8* %0, i64 16
  %3 = bitcast i8* %uf_index to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  %call = tail call i32 %2(i64 %4, %struct.sv* %sv) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setregexp(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %call = tail call i32 @Perl_sv_unmagic(%struct.sv* %sv, i32 114) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_freeregexp(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_obj = getelementptr inbounds %struct.magic* %mg, i64 0, i32 5
  %0 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %1 = bitcast %struct.sv* %0 to %struct.regexp*
  %2 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  tail call void %2(%struct.regexp* %1) #7
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_setutf8(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %0) #7
  store i8* null, i8** %mg_ptr, align 8, !tbaa !0
  %mg_len = getelementptr inbounds %struct.magic* %mg, i64 0, i32 7
  store i32 -1, i32* %mg_len, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_set(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %len = alloca i64, align 8
  %len189 = alloca i64, align 8
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 5, label %sw.bb15
    i32 6, label %sw.bb50
    i32 8, label %sw.bb62
    i32 9, label %sw.bb74
    i32 15, label %sw.bb85
    i32 16, label %sw.bb116
    i32 20, label %sw.bb132
    i32 23, label %sw.bb143
    i32 46, label %sw.bb254
    i32 94, label %sw.bb297
    i32 126, label %sw.bb313
    i32 61, label %sw.bb329
    i32 45, label %sw.bb344
    i32 37, label %sw.bb373
    i32 124, label %sw.bb388
    i32 42, label %sw.bb431
    i32 47, label %sw.bb445
    i32 92, label %sw.bb447
    i32 44, label %sw.bb462
    i32 35, label %sw.bb477
    i32 91, label %sw.bb482
    i32 63, label %sw.bb494
    i32 33, label %sw.bb511
    i32 60, label %sw.bb531
    i32 62, label %sw.bb563
    i32 40, label %sw.bb600
    i32 41, label %sw.bb637
    i32 58, label %sw.bb674
    i32 48, label %sw.bb688
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %2, %struct.sv* %sv, i32 2) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb1
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb1
  %call = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %call, %cond.false ]
  %conv2 = trunc i64 %cond to i8
  store i8 %conv2, i8* @PL_minus_c, align 1, !tbaa !1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %sv_flags4 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %7 = load i32* %sv_flags4, align 4, !tbaa !3
  %and5 = and i32 %7, 65536
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %cond.false10, label %cond.true7

cond.true7:                                       ; preds = %sw.bb3
  %sv_any8 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %8 = load i8** %sv_any8, align 8, !tbaa !0
  %xiv_iv9 = getelementptr inbounds i8* %8, i64 24
  %9 = bitcast i8* %xiv_iv9 to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  br label %cond.end12

cond.false10:                                     ; preds = %sw.bb3
  %call11 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.true7
  %cond13 = phi i64 [ %10, %cond.true7 ], [ %call11, %cond.false10 ]
  %or = or i64 %cond13, 2147483648
  %conv14 = trunc i64 %or to i32
  store volatile i32 %conv14, i32* @PL_debug, align 4, !tbaa !3
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %0, i64 1
  %11 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb15
  %sv_flags19 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %12 = load i32* %sv_flags19, align 4, !tbaa !3
  %and20 = and i32 %12, 65536
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %cond.false25, label %cond.true22

cond.true22:                                      ; preds = %if.then
  %sv_any23 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %13 = load i8** %sv_any23, align 8, !tbaa !0
  %xiv_iv24 = getelementptr inbounds i8* %13, i64 24
  %14 = bitcast i8* %xiv_iv24 to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  br label %cond.end27

cond.false25:                                     ; preds = %if.then
  %call26 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true22
  %cond28 = phi i64 [ %15, %cond.true22 ], [ %call26, %cond.false25 ]
  %conv29 = trunc i64 %cond28 to i32
  %call30 = call i32* @__errno_location() #7
  store i32 %conv29, i32* %call30, align 4, !tbaa !3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb15
  %call33 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #7
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %sw.epilog

if.then35:                                        ; preds = %if.else
  %16 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %tobool36 = icmp eq %struct.sv* %16, null
  br i1 %tobool36, label %if.end, label %if.then37

if.then37:                                        ; preds = %if.then35
  call void @Perl_sv_free(%struct.sv* %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then35, %if.then37
  %sv_flags38 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %17 = load i32* %sv_flags38, align 4, !tbaa !3
  %18 = and i32 %17, 118431744
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.end
  %call45 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv) #7
  store %struct.sv* %call45, %struct.sv** @PL_encoding, align 8, !tbaa !0
  br label %sw.epilog

if.else46:                                        ; preds = %if.end
  store %struct.sv* null, %struct.sv** @PL_encoding, align 8, !tbaa !0
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  %sv_flags51 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %20 = load i32* %sv_flags51, align 4, !tbaa !3
  %and52 = and i32 %20, 65536
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %cond.false57, label %cond.true54

cond.true54:                                      ; preds = %sw.bb50
  %sv_any55 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %21 = load i8** %sv_any55, align 8, !tbaa !0
  %xiv_iv56 = getelementptr inbounds i8* %21, i64 24
  %22 = bitcast i8* %xiv_iv56 to i64*
  %23 = load i64* %22, align 8, !tbaa !4
  br label %cond.end59

cond.false57:                                     ; preds = %sw.bb50
  %call58 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false57, %cond.true54
  %cond60 = phi i64 [ %23, %cond.true54 ], [ %call58, %cond.false57 ]
  %conv61 = trunc i64 %cond60 to i32
  store i32 %conv61, i32* @PL_maxsysfd, align 4, !tbaa !3
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %sv_flags63 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %24 = load i32* %sv_flags63, align 4, !tbaa !3
  %and64 = and i32 %24, 65536
  %tobool65 = icmp eq i32 %and64, 0
  br i1 %tobool65, label %cond.false69, label %cond.true66

cond.true66:                                      ; preds = %sw.bb62
  %sv_any67 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %25 = load i8** %sv_any67, align 8, !tbaa !0
  %xiv_iv68 = getelementptr inbounds i8* %25, i64 24
  %26 = bitcast i8* %xiv_iv68 to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  br label %cond.end71

cond.false69:                                     ; preds = %sw.bb62
  %call70 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true66
  %cond72 = phi i64 [ %27, %cond.true66 ], [ %call70, %cond.false69 ]
  %conv73 = trunc i64 %cond72 to i32
  store i32 %conv73, i32* @PL_hints, align 4, !tbaa !3
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  %28 = load i8** @PL_inplace, align 8, !tbaa !0
  %tobool75 = icmp eq i8* %28, null
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %sw.bb74
  call void @Perl_safesysfree(i8* %28) #7
  br label %if.end77

if.end77:                                         ; preds = %sw.bb74, %if.then76
  %sv_flags78 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %29 = load i32* %sv_flags78, align 4, !tbaa !3
  %and79 = and i32 %29, 118423552
  %tobool80 = icmp eq i32 %and79, 0
  br i1 %tobool80, label %if.else83, label %if.then81

if.then81:                                        ; preds = %if.end77
  %call82 = call i8* @Perl_savesvpv(%struct.sv* %sv) #7
  store i8* %call82, i8** @PL_inplace, align 8, !tbaa !0
  br label %sw.epilog

if.else83:                                        ; preds = %if.end77
  store i8* null, i8** @PL_inplace, align 8, !tbaa !0
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  %add.ptr87 = getelementptr inbounds i8* %0, i64 1
  %30 = load i8* %add.ptr87, align 1, !tbaa !1
  %cmp89 = icmp eq i8 %30, 0
  br i1 %cmp89, label %if.then91, label %if.else104

if.then91:                                        ; preds = %sw.bb85
  %31 = load i8** @PL_osname, align 8, !tbaa !0
  %tobool92 = icmp eq i8* %31, null
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.then91
  call void @Perl_safesysfree(i8* %31) #7
  store i8* null, i8** @PL_osname, align 8, !tbaa !0
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then93
  %sv_flags95 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %32 = load i32* %sv_flags95, align 4, !tbaa !3
  %and96 = and i32 %32, 118423552
  %tobool97 = icmp eq i32 %and96, 0
  br i1 %tobool97, label %sw.epilog, label %if.then98

if.then98:                                        ; preds = %if.end94
  %33 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool99 = icmp eq i8 %33, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then98
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #7
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.then100
  %call102 = call i8* @Perl_savesvpv(%struct.sv* %sv) #7
  store i8* %call102, i8** @PL_osname, align 8, !tbaa !0
  br label %sw.epilog

if.else104:                                       ; preds = %sw.bb85
  %call106 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #7
  %tobool107 = icmp eq i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %sw.epilog

if.then108:                                       ; preds = %if.else104
  %34 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  %tobool109 = icmp eq %struct.sv* %34, null
  br i1 %tobool109, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.then108
  %call111 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv) #7
  store %struct.sv* %call111, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  br label %sw.epilog

if.else112:                                       ; preds = %if.then108
  call void @Perl_sv_setsv_flags(%struct.sv* %34, %struct.sv* %sv, i32 2) #7
  br label %sw.epilog

sw.bb116:                                         ; preds = %entry
  %sv_flags117 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %35 = load i32* %sv_flags117, align 4, !tbaa !3
  %and118 = and i32 %35, 65536
  %tobool119 = icmp eq i32 %and118, 0
  br i1 %tobool119, label %cond.false123, label %cond.true120

cond.true120:                                     ; preds = %sw.bb116
  %sv_any121 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %36 = load i8** %sv_any121, align 8, !tbaa !0
  %xiv_iv122 = getelementptr inbounds i8* %36, i64 24
  %37 = bitcast i8* %xiv_iv122 to i64*
  %38 = load i64* %37, align 8, !tbaa !4
  br label %cond.end125

cond.false123:                                    ; preds = %sw.bb116
  %call124 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false123, %cond.true120
  %cond126 = phi i64 [ %38, %cond.true120 ], [ %call124, %cond.false123 ]
  %conv127 = trunc i64 %cond126 to i32
  store i32 %conv127, i32* @PL_perldb, align 4, !tbaa !3
  %tobool128 = icmp eq i32 %conv127, 0
  %39 = load %struct.sv** @PL_DBsingle, align 8, !tbaa !0
  %tobool129 = icmp ne %struct.sv* %39, null
  %or.cond = or i1 %tobool128, %tobool129
  br i1 %or.cond, label %sw.epilog, label %if.then130

if.then130:                                       ; preds = %cond.end125
  call void @Perl_init_debugger() #7
  br label %sw.epilog

sw.bb132:                                         ; preds = %entry
  %sv_flags133 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %40 = load i32* %sv_flags133, align 4, !tbaa !3
  %and134 = and i32 %40, 65536
  %tobool135 = icmp eq i32 %and134, 0
  br i1 %tobool135, label %cond.false139, label %cond.true136

cond.true136:                                     ; preds = %sw.bb132
  %sv_any137 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %41 = load i8** %sv_any137, align 8, !tbaa !0
  %xiv_iv138 = getelementptr inbounds i8* %41, i64 24
  %42 = bitcast i8* %xiv_iv138 to i64*
  %43 = load i64* %42, align 8, !tbaa !4
  br label %cond.end141

cond.false139:                                    ; preds = %sw.bb132
  %call140 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false139, %cond.true136
  %cond142 = phi i64 [ %43, %cond.true136 ], [ %call140, %cond.false139 ]
  store i64 %cond142, i64* @PL_basetime, align 8, !tbaa !4
  br label %sw.epilog

sw.bb143:                                         ; preds = %entry
  %add.ptr145 = getelementptr inbounds i8* %0, i64 1
  %44 = load i8* %add.ptr145, align 1, !tbaa !1
  %cmp147 = icmp eq i8 %44, 0
  br i1 %cmp147, label %if.then149, label %if.else172

if.then149:                                       ; preds = %sw.bb143
  %45 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and151 = and i8 %45, 6
  %tobool152 = icmp eq i8 %and151, 0
  br i1 %tobool152, label %if.then153, label %sw.epilog

if.then153:                                       ; preds = %if.then149
  %sv_flags154 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %46 = load i32* %sv_flags154, align 4, !tbaa !3
  %and155 = and i32 %46, 65536
  %tobool156 = icmp eq i32 %and155, 0
  br i1 %tobool156, label %cond.false160, label %cond.true157

cond.true157:                                     ; preds = %if.then153
  %sv_any158 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %47 = load i8** %sv_any158, align 8, !tbaa !0
  %xiv_iv159 = getelementptr inbounds i8* %47, i64 24
  %48 = bitcast i8* %xiv_iv159 to i64*
  %49 = load i64* %48, align 8, !tbaa !4
  br label %cond.end162

cond.false160:                                    ; preds = %if.then153
  %call161 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  %.pre = load i8* @PL_dowarn, align 1, !tbaa !1
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false160, %cond.true157
  %50 = phi i8 [ %45, %cond.true157 ], [ %.pre, %cond.false160 ]
  %cond163 = phi i64 [ %49, %cond.true157 ], [ %call161, %cond.false160 ]
  %conv164 = trunc i64 %cond163 to i32
  %and166 = and i8 %50, -2
  %tobool167 = icmp ne i32 %conv164, 0
  %cond168 = zext i1 %tobool167 to i8
  %or169 = or i8 %cond168, %and166
  store i8 %or169, i8* @PL_dowarn, align 1, !tbaa !1
  br label %sw.epilog

if.else172:                                       ; preds = %sw.bb143
  %call175 = call i32 @strcmp(i8* %add.ptr145, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #7
  %tobool176 = icmp eq i32 %call175, 0
  br i1 %tobool176, label %if.then177, label %sw.epilog

if.then177:                                       ; preds = %if.else172
  %51 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and179 = and i8 %51, 6
  %tobool180 = icmp eq i8 %and179, 0
  br i1 %tobool180, label %if.then181, label %sw.epilog

if.then181:                                       ; preds = %if.then177
  %sv_flags182 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %52 = load i32* %sv_flags182, align 4, !tbaa !3
  %and183 = and i32 %52, 262144
  %tobool184 = icmp eq i32 %and183, 0
  %53 = load i32* @PL_localizing, align 4, !tbaa !3
  %tobool186 = icmp ne i32 %53, 0
  %or.cond731 = and i1 %tobool184, %tobool186
  br i1 %or.cond731, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.then181
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* getelementptr inbounds ([13 x i8]* @.str9, i64 0, i64 0), i64 12) #7
  store %struct.sv* inttoptr (i64 32 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %sw.epilog

if.end188:                                        ; preds = %if.then181
  br i1 %tobool184, label %cond.false198, label %cond.true195

cond.true195:                                     ; preds = %if.end188
  %sv_any196 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %54 = load i8** %sv_any196, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %54, i64 8
  %55 = bitcast i8* %xpv_cur to i64*
  %56 = load i64* %55, align 8, !tbaa !4
  store i64 %56, i64* %len189, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %54 to i8**
  %57 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end200

cond.false198:                                    ; preds = %if.end188
  %call199 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len189, i32 2) #7
  %.pre853 = load i64* %len189, align 8, !tbaa !4
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true195
  %58 = phi i64 [ %56, %cond.true195 ], [ %.pre853, %cond.false198 ]
  %cond201 = phi i8* [ %57, %cond.true195 ], [ %call199, %cond.false198 ]
  %cmp202846 = icmp eq i64 %58, 0
  br i1 %cmp202846, label %if.then211, label %for.body

for.body:                                         ; preds = %cond.end200, %for.body
  %i190.0849 = phi i64 [ %inc, %for.body ], [ 0, %cond.end200 ]
  %any_fatals.0848 = phi i32 [ %or209, %for.body ], [ 0, %cond.end200 ]
  %accumulate.0847 = phi i32 [ %or205, %for.body ], [ 0, %cond.end200 ]
  %arrayidx = getelementptr inbounds i8* %cond201, i64 %i190.0849
  %59 = load i8* %arrayidx, align 1, !tbaa !1
  %conv204 = sext i8 %59 to i32
  %or205 = or i32 %conv204, %accumulate.0847
  %and208 = and i32 %conv204, 170
  %or209 = or i32 %and208, %any_fatals.0848
  %inc = add i64 %i190.0849, 1
  %cmp202 = icmp ult i64 %inc, %58
  br i1 %cmp202, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %phitmp = icmp eq i32 %or205, 0
  br i1 %phitmp, label %if.then211, label %if.else212

if.then211:                                       ; preds = %cond.end200, %for.end
  store %struct.sv* inttoptr (i64 32 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %sw.epilog

if.else212:                                       ; preds = %for.end
  %sv_any213 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %60 = load i8** %sv_any213, align 8, !tbaa !0
  %xpv_pv214 = bitcast i8* %60 to i8**
  %61 = load i8** %xpv_pv214, align 8, !tbaa !0
  %62 = load i8* %61, align 1, !tbaa !1
  %and217 = and i8 %62, 1
  %tobool218 = icmp ne i8 %and217, 0
  %tobool220 = icmp eq i32 %or209, 0
  %or.cond843 = and i1 %tobool218, %tobool220
  br i1 %or.cond843, label %if.then221, label %if.else225

if.then221:                                       ; preds = %if.else212
  store %struct.sv* inttoptr (i64 16 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %63 = load i8* @PL_dowarn, align 1, !tbaa !1
  %or223 = or i8 %63, 8
  store i8 %or223, i8* @PL_dowarn, align 1, !tbaa !1
  br label %sw.epilog

if.else225:                                       ; preds = %if.else212
  %64 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %magicptr = ptrtoint %struct.sv* %64 to i64
  switch i64 %magicptr, label %if.else236 [
    i64 32, label %if.then234
    i64 16, label %if.then234
    i64 0, label %if.then234
  ]

if.then234:                                       ; preds = %if.else225, %if.else225, %if.else225
  %call235 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv) #7
  store %struct.sv* %call235, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end237

if.else236:                                       ; preds = %if.else225
  call void @Perl_sv_setsv_flags(%struct.sv* %64, %struct.sv* %sv, i32 2) #7
  %.pre854 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end237

if.end237:                                        ; preds = %if.else236, %if.then234
  %65 = phi %struct.sv* [ %.pre854, %if.else236 ], [ %call235, %if.then234 ]
  %sv_any238 = getelementptr inbounds %struct.sv* %65, i64 0, i32 0
  %66 = load i8** %sv_any238, align 8, !tbaa !0
  %xpv_pv239 = bitcast i8* %66 to i8**
  %67 = load i8** %xpv_pv239, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds i8* %67, i64 3
  %68 = load i8* %arrayidx240, align 1, !tbaa !1
  %and242 = and i8 %68, 16
  %tobool243 = icmp eq i8 %and242, 0
  br i1 %tobool243, label %sw.epilog, label %if.then244

if.then244:                                       ; preds = %if.end237
  %69 = load i8* @PL_dowarn, align 1, !tbaa !1
  %or246 = or i8 %69, 8
  store i8 %or246, i8* @PL_dowarn, align 1, !tbaa !1
  br label %sw.epilog

sw.bb254:                                         ; preds = %entry
  %70 = load i32* @PL_localizing, align 4, !tbaa !3
  switch i32 %70, label %sw.epilog [
    i32 0, label %if.else261
    i32 1, label %if.then259
  ]

if.then259:                                       ; preds = %sw.bb254
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_last_in_gv to %struct.sv**)) #7
  br label %sw.epilog

if.else261:                                       ; preds = %sw.bb254
  %sv_flags262 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %71 = load i32* %sv_flags262, align 4, !tbaa !3
  %and263 = and i32 %71, 118423552
  %tobool264 = icmp ne i32 %and263, 0
  %72 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool266 = icmp ne %struct.gv* %72, null
  %or.cond734 = and i1 %tobool264, %tobool266
  br i1 %or.cond734, label %land.lhs.true267, label %sw.epilog

land.lhs.true267:                                 ; preds = %if.else261
  %73 = getelementptr inbounds %struct.gv* %72, i64 0, i32 2
  %74 = load i32* %73, align 4, !tbaa !3
  %and269 = and i32 %74, 255
  %cmp270 = icmp eq i32 %and269, 13
  br i1 %cmp270, label %land.lhs.true272, label %sw.epilog

land.lhs.true272:                                 ; preds = %land.lhs.true267
  %sv_any273 = getelementptr inbounds %struct.gv* %72, i64 0, i32 0
  %75 = load %struct.xpvgv** %sv_any273, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %75, i64 0, i32 7
  %76 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool274 = icmp eq %struct.gp* %76, null
  br i1 %tobool274, label %sw.epilog, label %cond.true275

cond.true275:                                     ; preds = %land.lhs.true272
  %gp_io = getelementptr inbounds %struct.gp* %76, i64 0, i32 2
  %77 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool278 = icmp eq %struct.io* %77, null
  br i1 %tobool278, label %sw.epilog, label %if.then280

if.then280:                                       ; preds = %cond.true275
  %and282 = and i32 %71, 65536
  %tobool283 = icmp eq i32 %and282, 0
  br i1 %tobool283, label %cond.false287, label %cond.true284

cond.true284:                                     ; preds = %if.then280
  %sv_any285 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %78 = load i8** %sv_any285, align 8, !tbaa !0
  %xiv_iv286 = getelementptr inbounds i8* %78, i64 24
  %79 = bitcast i8* %xiv_iv286 to i64*
  %80 = load i64* %79, align 8, !tbaa !4
  br label %cond.end289

cond.false287:                                    ; preds = %if.then280
  %call288 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  %.pre855 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %sv_any291.phi.trans.insert = getelementptr inbounds %struct.gv* %.pre855, i64 0, i32 0
  %.pre856 = load %struct.xpvgv** %sv_any291.phi.trans.insert, align 8, !tbaa !0
  %xgv_gp292.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre856, i64 0, i32 7
  %.pre857 = load %struct.gp** %xgv_gp292.phi.trans.insert, align 8, !tbaa !0
  %gp_io293.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre857, i64 0, i32 2
  %.pre858 = load %struct.io** %gp_io293.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end289

cond.end289:                                      ; preds = %cond.false287, %cond.true284
  %81 = phi %struct.io* [ %77, %cond.true284 ], [ %.pre858, %cond.false287 ]
  %cond290 = phi i64 [ %80, %cond.true284 ], [ %call288, %cond.false287 ]
  %sv_any294 = getelementptr inbounds %struct.io* %81, i64 0, i32 0
  %82 = load %struct.xpvio** %sv_any294, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds %struct.xpvio* %82, i64 0, i32 10
  store i64 %cond290, i64* %xio_lines, align 8, !tbaa !4
  br label %sw.epilog

sw.bb297:                                         ; preds = %entry
  %83 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any298 = getelementptr inbounds %struct.gv* %83, i64 0, i32 0
  %84 = load %struct.xpvgv** %sv_any298, align 8, !tbaa !0
  %xgv_gp299 = getelementptr inbounds %struct.xpvgv* %84, i64 0, i32 7
  %85 = load %struct.gp** %xgv_gp299, align 8, !tbaa !0
  %gp_io300 = getelementptr inbounds %struct.gp* %85, i64 0, i32 2
  %86 = load %struct.io** %gp_io300, align 8, !tbaa !0
  %sv_any301 = getelementptr inbounds %struct.io* %86, i64 0, i32 0
  %87 = load %struct.xpvio** %sv_any301, align 8, !tbaa !0
  %xio_top_name = getelementptr inbounds %struct.xpvio* %87, i64 0, i32 14
  %88 = load i8** %xio_top_name, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %88) #7
  %call302 = call i8* @Perl_savesvpv(%struct.sv* %sv) #7
  %89 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any303 = getelementptr inbounds %struct.gv* %89, i64 0, i32 0
  %90 = load %struct.xpvgv** %sv_any303, align 8, !tbaa !0
  %xgv_gp304 = getelementptr inbounds %struct.xpvgv* %90, i64 0, i32 7
  %91 = load %struct.gp** %xgv_gp304, align 8, !tbaa !0
  %gp_io305 = getelementptr inbounds %struct.gp* %91, i64 0, i32 2
  %92 = load %struct.io** %gp_io305, align 8, !tbaa !0
  %sv_any306 = getelementptr inbounds %struct.io* %92, i64 0, i32 0
  %93 = load %struct.xpvio** %sv_any306, align 8, !tbaa !0
  %xio_top_name307 = getelementptr inbounds %struct.xpvio* %93, i64 0, i32 14
  store i8* %call302, i8** %xio_top_name307, align 8, !tbaa !0
  %call308 = call %struct.gv* @Perl_gv_fetchpv(i8* %call302, i32 1, i32 15) #7
  %94 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any309 = getelementptr inbounds %struct.gv* %94, i64 0, i32 0
  %95 = load %struct.xpvgv** %sv_any309, align 8, !tbaa !0
  %xgv_gp310 = getelementptr inbounds %struct.xpvgv* %95, i64 0, i32 7
  %96 = load %struct.gp** %xgv_gp310, align 8, !tbaa !0
  %gp_io311 = getelementptr inbounds %struct.gp* %96, i64 0, i32 2
  %97 = load %struct.io** %gp_io311, align 8, !tbaa !0
  %sv_any312 = getelementptr inbounds %struct.io* %97, i64 0, i32 0
  %98 = load %struct.xpvio** %sv_any312, align 8, !tbaa !0
  %xio_top_gv = getelementptr inbounds %struct.xpvio* %98, i64 0, i32 15
  store %struct.gv* %call308, %struct.gv** %xio_top_gv, align 8, !tbaa !0
  br label %sw.epilog

sw.bb313:                                         ; preds = %entry
  %99 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any314 = getelementptr inbounds %struct.gv* %99, i64 0, i32 0
  %100 = load %struct.xpvgv** %sv_any314, align 8, !tbaa !0
  %xgv_gp315 = getelementptr inbounds %struct.xpvgv* %100, i64 0, i32 7
  %101 = load %struct.gp** %xgv_gp315, align 8, !tbaa !0
  %gp_io316 = getelementptr inbounds %struct.gp* %101, i64 0, i32 2
  %102 = load %struct.io** %gp_io316, align 8, !tbaa !0
  %sv_any317 = getelementptr inbounds %struct.io* %102, i64 0, i32 0
  %103 = load %struct.xpvio** %sv_any317, align 8, !tbaa !0
  %xio_fmt_name = getelementptr inbounds %struct.xpvio* %103, i64 0, i32 16
  %104 = load i8** %xio_fmt_name, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %104) #7
  %call318 = call i8* @Perl_savesvpv(%struct.sv* %sv) #7
  %105 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any319 = getelementptr inbounds %struct.gv* %105, i64 0, i32 0
  %106 = load %struct.xpvgv** %sv_any319, align 8, !tbaa !0
  %xgv_gp320 = getelementptr inbounds %struct.xpvgv* %106, i64 0, i32 7
  %107 = load %struct.gp** %xgv_gp320, align 8, !tbaa !0
  %gp_io321 = getelementptr inbounds %struct.gp* %107, i64 0, i32 2
  %108 = load %struct.io** %gp_io321, align 8, !tbaa !0
  %sv_any322 = getelementptr inbounds %struct.io* %108, i64 0, i32 0
  %109 = load %struct.xpvio** %sv_any322, align 8, !tbaa !0
  %xio_fmt_name323 = getelementptr inbounds %struct.xpvio* %109, i64 0, i32 16
  store i8* %call318, i8** %xio_fmt_name323, align 8, !tbaa !0
  %call324 = call %struct.gv* @Perl_gv_fetchpv(i8* %call318, i32 1, i32 15) #7
  %110 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any325 = getelementptr inbounds %struct.gv* %110, i64 0, i32 0
  %111 = load %struct.xpvgv** %sv_any325, align 8, !tbaa !0
  %xgv_gp326 = getelementptr inbounds %struct.xpvgv* %111, i64 0, i32 7
  %112 = load %struct.gp** %xgv_gp326, align 8, !tbaa !0
  %gp_io327 = getelementptr inbounds %struct.gp* %112, i64 0, i32 2
  %113 = load %struct.io** %gp_io327, align 8, !tbaa !0
  %sv_any328 = getelementptr inbounds %struct.io* %113, i64 0, i32 0
  %114 = load %struct.xpvio** %sv_any328, align 8, !tbaa !0
  %xio_fmt_gv = getelementptr inbounds %struct.xpvio* %114, i64 0, i32 17
  store %struct.gv* %call324, %struct.gv** %xio_fmt_gv, align 8, !tbaa !0
  br label %sw.epilog

sw.bb329:                                         ; preds = %entry
  %sv_flags330 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %115 = load i32* %sv_flags330, align 4, !tbaa !3
  %and331 = and i32 %115, 65536
  %tobool332 = icmp eq i32 %and331, 0
  br i1 %tobool332, label %cond.false336, label %cond.true333

cond.true333:                                     ; preds = %sw.bb329
  %sv_any334 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %116 = load i8** %sv_any334, align 8, !tbaa !0
  %xiv_iv335 = getelementptr inbounds i8* %116, i64 24
  %117 = bitcast i8* %xiv_iv335 to i64*
  %118 = load i64* %117, align 8, !tbaa !4
  br label %cond.end338

cond.false336:                                    ; preds = %sw.bb329
  %call337 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end338

cond.end338:                                      ; preds = %cond.false336, %cond.true333
  %cond339 = phi i64 [ %118, %cond.true333 ], [ %call337, %cond.false336 ]
  %119 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any340 = getelementptr inbounds %struct.gv* %119, i64 0, i32 0
  %120 = load %struct.xpvgv** %sv_any340, align 8, !tbaa !0
  %xgv_gp341 = getelementptr inbounds %struct.xpvgv* %120, i64 0, i32 7
  %121 = load %struct.gp** %xgv_gp341, align 8, !tbaa !0
  %gp_io342 = getelementptr inbounds %struct.gp* %121, i64 0, i32 2
  %122 = load %struct.io** %gp_io342, align 8, !tbaa !0
  %sv_any343 = getelementptr inbounds %struct.io* %122, i64 0, i32 0
  %123 = load %struct.xpvio** %sv_any343, align 8, !tbaa !0
  %xio_page_len = getelementptr inbounds %struct.xpvio* %123, i64 0, i32 12
  store i64 %cond339, i64* %xio_page_len, align 8, !tbaa !4
  br label %sw.epilog

sw.bb344:                                         ; preds = %entry
  %sv_flags345 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %124 = load i32* %sv_flags345, align 4, !tbaa !3
  %and346 = and i32 %124, 65536
  %tobool347 = icmp eq i32 %and346, 0
  br i1 %tobool347, label %cond.false351, label %cond.true348

cond.true348:                                     ; preds = %sw.bb344
  %sv_any349 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %125 = load i8** %sv_any349, align 8, !tbaa !0
  %xiv_iv350 = getelementptr inbounds i8* %125, i64 24
  %126 = bitcast i8* %xiv_iv350 to i64*
  %127 = load i64* %126, align 8, !tbaa !4
  br label %cond.end353

cond.false351:                                    ; preds = %sw.bb344
  %call352 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end353

cond.end353:                                      ; preds = %cond.false351, %cond.true348
  %cond354 = phi i64 [ %127, %cond.true348 ], [ %call352, %cond.false351 ]
  %128 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any355 = getelementptr inbounds %struct.gv* %128, i64 0, i32 0
  %129 = load %struct.xpvgv** %sv_any355, align 8, !tbaa !0
  %xgv_gp356 = getelementptr inbounds %struct.xpvgv* %129, i64 0, i32 7
  %130 = load %struct.gp** %xgv_gp356, align 8, !tbaa !0
  %gp_io357 = getelementptr inbounds %struct.gp* %130, i64 0, i32 2
  %131 = load %struct.io** %gp_io357, align 8, !tbaa !0
  %sv_any358 = getelementptr inbounds %struct.io* %131, i64 0, i32 0
  %132 = load %struct.xpvio** %sv_any358, align 8, !tbaa !0
  %xio_lines_left = getelementptr inbounds %struct.xpvio* %132, i64 0, i32 13
  %cmp364 = icmp slt i64 %cond354, 0
  %.cond354 = select i1 %cmp364, i64 0, i64 %cond354
  store i64 %.cond354, i64* %xio_lines_left, align 8, !tbaa !4
  ret i32 0

sw.bb373:                                         ; preds = %entry
  %sv_flags374 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %133 = load i32* %sv_flags374, align 4, !tbaa !3
  %and375 = and i32 %133, 65536
  %tobool376 = icmp eq i32 %and375, 0
  br i1 %tobool376, label %cond.false380, label %cond.true377

cond.true377:                                     ; preds = %sw.bb373
  %sv_any378 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %134 = load i8** %sv_any378, align 8, !tbaa !0
  %xiv_iv379 = getelementptr inbounds i8* %134, i64 24
  %135 = bitcast i8* %xiv_iv379 to i64*
  %136 = load i64* %135, align 8, !tbaa !4
  br label %cond.end382

cond.false380:                                    ; preds = %sw.bb373
  %call381 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end382

cond.end382:                                      ; preds = %cond.false380, %cond.true377
  %cond383 = phi i64 [ %136, %cond.true377 ], [ %call381, %cond.false380 ]
  %137 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any384 = getelementptr inbounds %struct.gv* %137, i64 0, i32 0
  %138 = load %struct.xpvgv** %sv_any384, align 8, !tbaa !0
  %xgv_gp385 = getelementptr inbounds %struct.xpvgv* %138, i64 0, i32 7
  %139 = load %struct.gp** %xgv_gp385, align 8, !tbaa !0
  %gp_io386 = getelementptr inbounds %struct.gp* %139, i64 0, i32 2
  %140 = load %struct.io** %gp_io386, align 8, !tbaa !0
  %sv_any387 = getelementptr inbounds %struct.io* %140, i64 0, i32 0
  %141 = load %struct.xpvio** %sv_any387, align 8, !tbaa !0
  %xio_page = getelementptr inbounds %struct.xpvio* %141, i64 0, i32 11
  store i64 %cond383, i64* %xio_page, align 8, !tbaa !4
  br label %sw.epilog

sw.bb388:                                         ; preds = %entry
  %142 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %sv_any389 = getelementptr inbounds %struct.gv* %142, i64 0, i32 0
  %143 = load %struct.xpvgv** %sv_any389, align 8, !tbaa !0
  %xgv_gp390 = getelementptr inbounds %struct.xpvgv* %143, i64 0, i32 7
  %144 = load %struct.gp** %xgv_gp390, align 8, !tbaa !0
  %gp_io391 = getelementptr inbounds %struct.gp* %144, i64 0, i32 2
  %145 = load %struct.io** %gp_io391, align 8, !tbaa !0
  %tobool392 = icmp eq %struct.io* %145, null
  br i1 %tobool392, label %sw.epilog, label %if.end394

if.end394:                                        ; preds = %sw.bb388
  %sv_flags395 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %146 = load i32* %sv_flags395, align 4, !tbaa !3
  %and396 = and i32 %146, 65536
  %tobool397 = icmp eq i32 %and396, 0
  br i1 %tobool397, label %cond.false401, label %cond.true398

cond.true398:                                     ; preds = %if.end394
  %sv_any399 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %147 = load i8** %sv_any399, align 8, !tbaa !0
  %xiv_iv400 = getelementptr inbounds i8* %147, i64 24
  %148 = bitcast i8* %xiv_iv400 to i64*
  %149 = load i64* %148, align 8, !tbaa !4
  br label %cond.end403

cond.false401:                                    ; preds = %if.end394
  %call402 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end403

cond.end403:                                      ; preds = %cond.false401, %cond.true398
  %cond404 = phi i64 [ %149, %cond.true398 ], [ %call402, %cond.false401 ]
  %cmp405 = icmp eq i64 %cond404, 0
  %sv_any408 = getelementptr inbounds %struct.io* %145, i64 0, i32 0
  %150 = load %struct.xpvio** %sv_any408, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %150, i64 0, i32 22
  %151 = load i8* %xio_flags, align 1, !tbaa !1
  br i1 %cmp405, label %if.then407, label %if.else412

if.then407:                                       ; preds = %cond.end403
  %and410 = and i8 %151, -5
  store i8 %and410, i8* %xio_flags, align 1, !tbaa !1
  br label %sw.epilog

if.else412:                                       ; preds = %cond.end403
  %and416 = and i8 %151, 4
  %tobool417 = icmp eq i8 %and416, 0
  br i1 %tobool417, label %if.then418, label %sw.epilog

if.then418:                                       ; preds = %if.else412
  %xio_ofp = getelementptr inbounds %struct.xpvio* %150, i64 0, i32 8
  %152 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool420 = icmp eq %struct._PerlIO** %152, null
  br i1 %tobool420, label %if.end423, label %if.then421

if.then421:                                       ; preds = %if.then418
  %call422 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %152) #7
  %.pre859 = load %struct.xpvio** %sv_any408, align 8, !tbaa !0
  %xio_flags425.phi.trans.insert = getelementptr inbounds %struct.xpvio* %.pre859, i64 0, i32 22
  %.pre860 = load i8* %xio_flags425.phi.trans.insert, align 1, !tbaa !1
  br label %if.end423

if.end423:                                        ; preds = %if.then418, %if.then421
  %153 = phi i8 [ %151, %if.then418 ], [ %.pre860, %if.then421 ]
  %154 = phi %struct.xpvio* [ %150, %if.then418 ], [ %.pre859, %if.then421 ]
  %xio_flags425 = getelementptr inbounds %struct.xpvio* %154, i64 0, i32 22
  %or427 = or i8 %153, 4
  store i8 %or427, i8* %xio_flags425, align 1, !tbaa !1
  br label %sw.epilog

sw.bb431:                                         ; preds = %entry
  %sv_flags432 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %155 = load i32* %sv_flags432, align 4, !tbaa !3
  %and433 = and i32 %155, 65536
  %tobool434 = icmp eq i32 %and433, 0
  br i1 %tobool434, label %cond.false438, label %cond.true435

cond.true435:                                     ; preds = %sw.bb431
  %sv_any436 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %156 = load i8** %sv_any436, align 8, !tbaa !0
  %xiv_iv437 = getelementptr inbounds i8* %156, i64 24
  %157 = bitcast i8* %xiv_iv437 to i64*
  %158 = load i64* %157, align 8, !tbaa !4
  br label %cond.end440

cond.false438:                                    ; preds = %sw.bb431
  %call439 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end440

cond.end440:                                      ; preds = %cond.false438, %cond.true435
  %cond441 = phi i64 [ %158, %cond.true435 ], [ %call439, %cond.false438 ]
  %conv442 = trunc i64 %cond441 to i32
  %cmp443 = icmp ne i32 %conv442, 0
  %conv444 = zext i1 %cmp443 to i32
  store i32 %conv444, i32* @PL_multiline, align 4, !tbaa !3
  br label %sw.epilog

sw.bb445:                                         ; preds = %entry
  %159 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %159) #7
  %call446 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv) #7
  store %struct.sv* %call446, %struct.sv** @PL_rs, align 8, !tbaa !0
  br label %sw.epilog

sw.bb447:                                         ; preds = %entry
  %160 = load %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %tobool448 = icmp eq %struct.sv* %160, null
  br i1 %tobool448, label %if.end450, label %if.then449

if.then449:                                       ; preds = %sw.bb447
  call void @Perl_sv_free(%struct.sv* %160) #7
  br label %if.end450

if.end450:                                        ; preds = %sw.bb447, %if.then449
  %sv_flags451 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %161 = load i32* %sv_flags451, align 4, !tbaa !3
  %162 = and i32 %161, 118431744
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %if.else460, label %if.then458

if.then458:                                       ; preds = %if.end450
  %call459 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv) #7
  store %struct.sv* %call459, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  br label %sw.epilog

if.else460:                                       ; preds = %if.end450
  store %struct.sv* null, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  br label %sw.epilog

sw.bb462:                                         ; preds = %entry
  %164 = load %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  %tobool463 = icmp eq %struct.sv* %164, null
  br i1 %tobool463, label %if.end465, label %if.then464

if.then464:                                       ; preds = %sw.bb462
  call void @Perl_sv_free(%struct.sv* %164) #7
  br label %if.end465

if.end465:                                        ; preds = %sw.bb462, %if.then464
  %sv_flags466 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %165 = load i32* %sv_flags466, align 4, !tbaa !3
  %166 = and i32 %165, 118431744
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %if.else475, label %if.then473

if.then473:                                       ; preds = %if.end465
  %call474 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv) #7
  store %struct.sv* %call474, %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  br label %sw.epilog

if.else475:                                       ; preds = %if.end465
  store %struct.sv* null, %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  br label %sw.epilog

sw.bb477:                                         ; preds = %entry
  %168 = load i8** @PL_ofmt, align 8, !tbaa !0
  %tobool478 = icmp eq i8* %168, null
  br i1 %tobool478, label %if.end480, label %if.then479

if.then479:                                       ; preds = %sw.bb477
  call void @Perl_safesysfree(i8* %168) #7
  br label %if.end480

if.end480:                                        ; preds = %sw.bb477, %if.then479
  %call481 = call i8* @Perl_savesvpv(%struct.sv* %sv) #7
  store i8* %call481, i8** @PL_ofmt, align 8, !tbaa !0
  br label %sw.epilog

sw.bb482:                                         ; preds = %entry
  %sv_flags483 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %169 = load i32* %sv_flags483, align 4, !tbaa !3
  %and484 = and i32 %169, 65536
  %tobool485 = icmp eq i32 %and484, 0
  br i1 %tobool485, label %cond.false489, label %cond.true486

cond.true486:                                     ; preds = %sw.bb482
  %sv_any487 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %170 = load i8** %sv_any487, align 8, !tbaa !0
  %xiv_iv488 = getelementptr inbounds i8* %170, i64 24
  %171 = bitcast i8* %xiv_iv488 to i64*
  %172 = load i64* %171, align 8, !tbaa !4
  br label %cond.end491

cond.false489:                                    ; preds = %sw.bb482
  %call490 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end491

cond.end491:                                      ; preds = %cond.false489, %cond.true486
  %cond492 = phi i64 [ %172, %cond.true486 ], [ %call490, %cond.false489 ]
  %conv493 = trunc i64 %cond492 to i32
  store i32 %conv493, i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 12), align 4, !tbaa !3
  br label %sw.epilog

sw.bb494:                                         ; preds = %entry
  %sv_flags495 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %173 = load i32* %sv_flags495, align 4, !tbaa !3
  %and496 = and i32 %173, 65536
  %tobool497 = icmp eq i32 %and496, 0
  br i1 %tobool497, label %cond.false501, label %cond.true498

cond.true498:                                     ; preds = %sw.bb494
  %sv_any499 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %174 = load i8** %sv_any499, align 8, !tbaa !0
  %xiv_iv500 = getelementptr inbounds i8* %174, i64 24
  %175 = bitcast i8* %xiv_iv500 to i64*
  %176 = load i64* %175, align 8, !tbaa !4
  br label %cond.end503

cond.false501:                                    ; preds = %sw.bb494
  %call502 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end503

cond.end503:                                      ; preds = %cond.false501, %cond.true498
  %cond504 = phi i64 [ %176, %cond.true498 ], [ %call502, %cond.false501 ]
  %conv505 = trunc i64 %cond504 to i32
  store i32 %conv505, i32* @PL_statusvalue, align 4, !tbaa !3
  %cmp506 = icmp eq i32 %conv505, -1
  br i1 %cmp506, label %sw.epilog, label %if.then508

if.then508:                                       ; preds = %cond.end503
  %and509 = and i32 %conv505, 65535
  store i32 %and509, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.epilog

sw.bb511:                                         ; preds = %entry
  %sv_flags512 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %177 = load i32* %sv_flags512, align 4, !tbaa !3
  %and513 = and i32 %177, 65536
  %tobool514 = icmp eq i32 %and513, 0
  br i1 %tobool514, label %cond.false518, label %cond.true515

cond.true515:                                     ; preds = %sw.bb511
  %sv_any516 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %178 = load i8** %sv_any516, align 8, !tbaa !0
  %xiv_iv517 = getelementptr inbounds i8* %178, i64 24
  %179 = bitcast i8* %xiv_iv517 to i64*
  %180 = load i64* %179, align 8, !tbaa !4
  br label %cond.end527

cond.false518:                                    ; preds = %sw.bb511
  %and520 = and i32 %177, 118423552
  %tobool521 = icmp eq i32 %and520, 0
  br i1 %tobool521, label %cond.end527, label %cond.true522

cond.true522:                                     ; preds = %cond.false518
  %call523 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end527

cond.end527:                                      ; preds = %cond.false518, %cond.true522, %cond.true515
  %cond528 = phi i64 [ %180, %cond.true515 ], [ %call523, %cond.true522 ], [ 0, %cond.false518 ]
  %conv529 = trunc i64 %cond528 to i32
  %call530 = call i32* @__errno_location() #7
  store i32 %conv529, i32* %call530, align 4, !tbaa !3
  br label %sw.epilog

sw.bb531:                                         ; preds = %entry
  %sv_flags532 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %181 = load i32* %sv_flags532, align 4, !tbaa !3
  %and533 = and i32 %181, 65536
  %tobool534 = icmp eq i32 %and533, 0
  br i1 %tobool534, label %cond.false538, label %cond.true535

cond.true535:                                     ; preds = %sw.bb531
  %sv_any536 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %182 = load i8** %sv_any536, align 8, !tbaa !0
  %xiv_iv537 = getelementptr inbounds i8* %182, i64 24
  %183 = bitcast i8* %xiv_iv537 to i64*
  %184 = load i64* %183, align 8, !tbaa !4
  br label %cond.end540

cond.false538:                                    ; preds = %sw.bb531
  %call539 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end540

cond.end540:                                      ; preds = %cond.false538, %cond.true535
  %cond541 = phi i64 [ %184, %cond.true535 ], [ %call539, %cond.false538 ]
  %conv542 = trunc i64 %cond541 to i32
  store i32 %conv542, i32* @PL_uid, align 4, !tbaa !3
  %185 = load i32* @PL_delaymagic, align 4, !tbaa !3
  %tobool543 = icmp eq i32 %185, 0
  br i1 %tobool543, label %if.end546, label %if.then544

if.then544:                                       ; preds = %cond.end540
  %or545 = or i32 %185, 1
  store i32 %or545, i32* @PL_delaymagic, align 4, !tbaa !3
  br label %sw.epilog

if.end546:                                        ; preds = %cond.end540
  %186 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp547 = icmp eq i32 %conv542, %186
  br i1 %cmp547, label %if.then549, label %if.else551

if.then549:                                       ; preds = %if.end546
  %call550 = call i32 @setuid(i32 %conv542) #7
  br label %if.end553

if.else551:                                       ; preds = %if.end546
  %call552 = call i32 @getuid() #7
  store i32 %call552, i32* @PL_uid, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str35, i64 0, i64 0)) #7
  br label %if.end553

if.end553:                                        ; preds = %if.else551, %if.then549
  %call554 = call i32 @getuid() #7
  store i32 %call554, i32* @PL_uid, align 4, !tbaa !3
  %tobool555 = icmp eq i32 %call554, 0
  br i1 %tobool555, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end553
  %187 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp556 = icmp eq i32 %187, %call554
  br i1 %cmp556, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %188 = load i32* @PL_egid, align 4, !tbaa !3
  %189 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp558 = icmp ne i32 %188, %189
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end553, %lor.rhs
  %190 = phi i1 [ false, %if.end553 ], [ true, %land.rhs ], [ %cmp558, %lor.rhs ]
  %land.ext = zext i1 %190 to i8
  %191 = load i8* @PL_tainting, align 1, !tbaa !1
  %or561 = or i8 %191, %land.ext
  store i8 %or561, i8* @PL_tainting, align 1, !tbaa !1
  br label %sw.epilog

sw.bb563:                                         ; preds = %entry
  %sv_flags564 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %192 = load i32* %sv_flags564, align 4, !tbaa !3
  %and565 = and i32 %192, 65536
  %tobool566 = icmp eq i32 %and565, 0
  br i1 %tobool566, label %cond.false570, label %cond.true567

cond.true567:                                     ; preds = %sw.bb563
  %sv_any568 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %193 = load i8** %sv_any568, align 8, !tbaa !0
  %xiv_iv569 = getelementptr inbounds i8* %193, i64 24
  %194 = bitcast i8* %xiv_iv569 to i64*
  %195 = load i64* %194, align 8, !tbaa !4
  br label %cond.end572

cond.false570:                                    ; preds = %sw.bb563
  %call571 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end572

cond.end572:                                      ; preds = %cond.false570, %cond.true567
  %cond573 = phi i64 [ %195, %cond.true567 ], [ %call571, %cond.false570 ]
  %conv574 = trunc i64 %cond573 to i32
  store i32 %conv574, i32* @PL_euid, align 4, !tbaa !3
  %196 = load i32* @PL_delaymagic, align 4, !tbaa !3
  %tobool575 = icmp eq i32 %196, 0
  br i1 %tobool575, label %if.end578, label %if.then576

if.then576:                                       ; preds = %cond.end572
  %or577 = or i32 %196, 2
  store i32 %or577, i32* @PL_delaymagic, align 4, !tbaa !3
  br label %sw.epilog

if.end578:                                        ; preds = %cond.end572
  %197 = load i32* @PL_uid, align 4, !tbaa !3
  %cmp579 = icmp eq i32 %conv574, %197
  br i1 %cmp579, label %if.then581, label %if.else583

if.then581:                                       ; preds = %if.end578
  %call582 = call i32 @setuid(i32 %conv574) #7
  br label %if.end585

if.else583:                                       ; preds = %if.end578
  %call584 = call i32 @geteuid() #7
  store i32 %call584, i32* @PL_euid, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str36, i64 0, i64 0)) #7
  br label %if.end585

if.end585:                                        ; preds = %if.else583, %if.then581
  %call586 = call i32 @geteuid() #7
  store i32 %call586, i32* @PL_euid, align 4, !tbaa !3
  %198 = load i32* @PL_uid, align 4, !tbaa !3
  %tobool587 = icmp eq i32 %198, 0
  br i1 %tobool587, label %land.end595, label %land.rhs588

land.rhs588:                                      ; preds = %if.end585
  %cmp589 = icmp eq i32 %call586, %198
  br i1 %cmp589, label %lor.rhs591, label %land.end595

lor.rhs591:                                       ; preds = %land.rhs588
  %199 = load i32* @PL_egid, align 4, !tbaa !3
  %200 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp592 = icmp ne i32 %199, %200
  br label %land.end595

land.end595:                                      ; preds = %land.rhs588, %if.end585, %lor.rhs591
  %201 = phi i1 [ false, %if.end585 ], [ true, %land.rhs588 ], [ %cmp592, %lor.rhs591 ]
  %land.ext596 = zext i1 %201 to i8
  %202 = load i8* @PL_tainting, align 1, !tbaa !1
  %or598 = or i8 %202, %land.ext596
  store i8 %or598, i8* @PL_tainting, align 1, !tbaa !1
  br label %sw.epilog

sw.bb600:                                         ; preds = %entry
  %sv_flags601 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %203 = load i32* %sv_flags601, align 4, !tbaa !3
  %and602 = and i32 %203, 65536
  %tobool603 = icmp eq i32 %and602, 0
  br i1 %tobool603, label %cond.false607, label %cond.true604

cond.true604:                                     ; preds = %sw.bb600
  %sv_any605 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %204 = load i8** %sv_any605, align 8, !tbaa !0
  %xiv_iv606 = getelementptr inbounds i8* %204, i64 24
  %205 = bitcast i8* %xiv_iv606 to i64*
  %206 = load i64* %205, align 8, !tbaa !4
  br label %cond.end609

cond.false607:                                    ; preds = %sw.bb600
  %call608 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end609

cond.end609:                                      ; preds = %cond.false607, %cond.true604
  %cond610 = phi i64 [ %206, %cond.true604 ], [ %call608, %cond.false607 ]
  %conv611 = trunc i64 %cond610 to i32
  store i32 %conv611, i32* @PL_gid, align 4, !tbaa !3
  %207 = load i32* @PL_delaymagic, align 4, !tbaa !3
  %tobool612 = icmp eq i32 %207, 0
  br i1 %tobool612, label %if.end615, label %if.then613

if.then613:                                       ; preds = %cond.end609
  %or614 = or i32 %207, 16
  store i32 %or614, i32* @PL_delaymagic, align 4, !tbaa !3
  br label %sw.epilog

if.end615:                                        ; preds = %cond.end609
  %208 = load i32* @PL_egid, align 4, !tbaa !3
  %cmp616 = icmp eq i32 %conv611, %208
  br i1 %cmp616, label %if.then618, label %if.else620

if.then618:                                       ; preds = %if.end615
  %call619 = call i32 @setgid(i32 %conv611) #7
  br label %if.end622

if.else620:                                       ; preds = %if.end615
  %call621 = call i32 @getgid() #7
  store i32 %call621, i32* @PL_gid, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str37, i64 0, i64 0)) #7
  br label %if.end622

if.end622:                                        ; preds = %if.else620, %if.then618
  %call623 = call i32 @getgid() #7
  store i32 %call623, i32* @PL_gid, align 4, !tbaa !3
  %209 = load i32* @PL_uid, align 4, !tbaa !3
  %tobool624 = icmp eq i32 %209, 0
  br i1 %tobool624, label %land.end632, label %land.rhs625

land.rhs625:                                      ; preds = %if.end622
  %210 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp626 = icmp eq i32 %210, %209
  br i1 %cmp626, label %lor.rhs628, label %land.end632

lor.rhs628:                                       ; preds = %land.rhs625
  %211 = load i32* @PL_egid, align 4, !tbaa !3
  %cmp629 = icmp ne i32 %211, %call623
  br label %land.end632

land.end632:                                      ; preds = %land.rhs625, %if.end622, %lor.rhs628
  %212 = phi i1 [ false, %if.end622 ], [ true, %land.rhs625 ], [ %cmp629, %lor.rhs628 ]
  %land.ext633 = zext i1 %212 to i8
  %213 = load i8* @PL_tainting, align 1, !tbaa !1
  %or635 = or i8 %213, %land.ext633
  store i8 %or635, i8* @PL_tainting, align 1, !tbaa !1
  br label %sw.epilog

sw.bb637:                                         ; preds = %entry
  %sv_flags638 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %214 = load i32* %sv_flags638, align 4, !tbaa !3
  %and639 = and i32 %214, 65536
  %tobool640 = icmp eq i32 %and639, 0
  br i1 %tobool640, label %cond.false644, label %cond.true641

cond.true641:                                     ; preds = %sw.bb637
  %sv_any642 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %215 = load i8** %sv_any642, align 8, !tbaa !0
  %xiv_iv643 = getelementptr inbounds i8* %215, i64 24
  %216 = bitcast i8* %xiv_iv643 to i64*
  %217 = load i64* %216, align 8, !tbaa !4
  br label %cond.end646

cond.false644:                                    ; preds = %sw.bb637
  %call645 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %cond.end646

cond.end646:                                      ; preds = %cond.false644, %cond.true641
  %cond647 = phi i64 [ %217, %cond.true641 ], [ %call645, %cond.false644 ]
  %conv648 = trunc i64 %cond647 to i32
  store i32 %conv648, i32* @PL_egid, align 4, !tbaa !3
  %218 = load i32* @PL_delaymagic, align 4, !tbaa !3
  %tobool649 = icmp eq i32 %218, 0
  br i1 %tobool649, label %if.end652, label %if.then650

if.then650:                                       ; preds = %cond.end646
  %or651 = or i32 %218, 32
  store i32 %or651, i32* @PL_delaymagic, align 4, !tbaa !3
  br label %sw.epilog

if.end652:                                        ; preds = %cond.end646
  %219 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp653 = icmp eq i32 %conv648, %219
  br i1 %cmp653, label %if.then655, label %if.else657

if.then655:                                       ; preds = %if.end652
  %call656 = call i32 @setgid(i32 %conv648) #7
  br label %if.end659

if.else657:                                       ; preds = %if.end652
  %call658 = call i32 @getegid() #7
  store i32 %call658, i32* @PL_egid, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str38, i64 0, i64 0)) #7
  br label %if.end659

if.end659:                                        ; preds = %if.else657, %if.then655
  %call660 = call i32 @getegid() #7
  store i32 %call660, i32* @PL_egid, align 4, !tbaa !3
  %220 = load i32* @PL_uid, align 4, !tbaa !3
  %tobool661 = icmp eq i32 %220, 0
  br i1 %tobool661, label %land.end669, label %land.rhs662

land.rhs662:                                      ; preds = %if.end659
  %221 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp663 = icmp eq i32 %221, %220
  br i1 %cmp663, label %lor.rhs665, label %land.end669

lor.rhs665:                                       ; preds = %land.rhs662
  %222 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp666 = icmp ne i32 %call660, %222
  br label %land.end669

land.end669:                                      ; preds = %land.rhs662, %if.end659, %lor.rhs665
  %223 = phi i1 [ false, %if.end659 ], [ true, %land.rhs662 ], [ %cmp666, %lor.rhs665 ]
  %land.ext670 = zext i1 %223 to i8
  %224 = load i8* @PL_tainting, align 1, !tbaa !1
  %or672 = or i8 %224, %land.ext670
  store i8 %or672, i8* @PL_tainting, align 1, !tbaa !1
  br label %sw.epilog

sw.bb674:                                         ; preds = %entry
  %sv_flags675 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %225 = load i32* %sv_flags675, align 4, !tbaa !3
  %and676 = and i32 %225, 10223616
  %cmp677 = icmp eq i32 %and676, 262144
  br i1 %cmp677, label %cond.true679, label %cond.false684

cond.true679:                                     ; preds = %sw.bb674
  %sv_any680 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %226 = load i8** %sv_any680, align 8, !tbaa !0
  %xpv_cur681 = getelementptr inbounds i8* %226, i64 8
  %227 = bitcast i8* %xpv_cur681 to i64*
  %228 = load i64* %227, align 8, !tbaa !4
  store i64 %228, i64* %len, align 8, !tbaa !4
  %xpv_pv683 = bitcast i8* %226 to i8**
  %229 = load i8** %xpv_pv683, align 8, !tbaa !0
  br label %cond.end686

cond.false684:                                    ; preds = %sw.bb674
  %call685 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  br label %cond.end686

cond.end686:                                      ; preds = %cond.false684, %cond.true679
  %cond687 = phi i8* [ %229, %cond.true679 ], [ %call685, %cond.false684 ]
  store i8* %cond687, i8** @PL_chopset, align 8, !tbaa !0
  br label %sw.epilog

sw.bb688:                                         ; preds = %entry
  %sv_flags689 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %230 = load i32* %sv_flags689, align 4, !tbaa !3
  %and690 = and i32 %230, 10223616
  %cmp691 = icmp eq i32 %and690, 262144
  br i1 %cmp691, label %cond.true693, label %cond.false698

cond.true693:                                     ; preds = %sw.bb688
  %sv_any694 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %231 = load i8** %sv_any694, align 8, !tbaa !0
  %xpv_cur695 = getelementptr inbounds i8* %231, i64 8
  %232 = bitcast i8* %xpv_cur695 to i64*
  %233 = load i64* %232, align 8, !tbaa !4
  store i64 %233, i64* %len, align 8, !tbaa !4
  %xpv_pv697 = bitcast i8* %231 to i8**
  %234 = load i8** %xpv_pv697, align 8, !tbaa !0
  br label %cond.end700

cond.false698:                                    ; preds = %sw.bb688
  %call699 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  %.pre861 = load i64* %len, align 8, !tbaa !4
  br label %cond.end700

cond.end700:                                      ; preds = %cond.false698, %cond.true693
  %235 = phi i64 [ %233, %cond.true693 ], [ %.pre861, %cond.false698 ]
  %cond701 = phi i8* [ %234, %cond.true693 ], [ %call699, %cond.false698 ]
  %236 = load i32* @PL_origalen, align 4, !tbaa !3
  %conv702 = zext i32 %236 to i64
  %cmp703 = icmp ult i64 %235, %conv702
  %237 = load i8*** @PL_origargv, align 8, !tbaa !0
  %238 = load i8** %237, align 8, !tbaa !0
  br i1 %cmp703, label %if.else710, label %if.then705

if.then705:                                       ; preds = %cond.end700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %cond701, i64 %conv702, i32 1, i1 false)
  %239 = load i32* @PL_origalen, align 4, !tbaa !3
  %sub = add i32 %239, -1
  %idxprom = zext i32 %sub to i64
  %240 = load i8*** @PL_origargv, align 8, !tbaa !0
  %241 = load i8** %240, align 8, !tbaa !0
  %arrayidx709 = getelementptr inbounds i8* %241, i64 %idxprom
  store i8 0, i8* %arrayidx709, align 1, !tbaa !1
  br label %sw.epilog

if.else710:                                       ; preds = %cond.end700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %cond701, i64 %235, i32 1, i1 false)
  %242 = load i64* %len, align 8, !tbaa !4
  %243 = load i8*** @PL_origargv, align 8, !tbaa !0
  %244 = load i8** %243, align 8, !tbaa !0
  %arrayidx714 = getelementptr inbounds i8* %244, i64 %242
  store i8 0, i8* %arrayidx714, align 1, !tbaa !1
  %245 = load i8*** @PL_origargv, align 8, !tbaa !0
  %246 = load i8** %245, align 8, !tbaa !0
  %247 = load i64* %len, align 8, !tbaa !4
  %add.ptr716.sum = add i64 %247, 1
  %add.ptr717 = getelementptr inbounds i8* %246, i64 %add.ptr716.sum
  %248 = load i32* @PL_origalen, align 4, !tbaa !3
  %conv718 = zext i32 %248 to i64
  %sub719 = xor i64 %247, -1
  %sub720 = add i64 %conv718, %sub719
  call void @llvm.memset.p0i8.i64(i8* %add.ptr717, i8 32, i64 %sub720, i32 1, i1 false)
  %249 = load i32* @PL_origargc, align 4, !tbaa !3
  %cmp722851 = icmp sgt i32 %249, 1
  br i1 %cmp722851, label %for.body724, label %sw.epilog

for.body724:                                      ; preds = %if.else710, %for.body724
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body724 ], [ 1, %if.else710 ]
  %250 = load i8*** @PL_origargv, align 8, !tbaa !0
  %arrayidx726 = getelementptr inbounds i8** %250, i64 %indvars.iv
  store i8* null, i8** %arrayidx726, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %251 = trunc i64 %indvars.iv.next to i32
  %cmp722 = icmp slt i32 %251, %249
  br i1 %cmp722, label %for.body724, label %sw.epilog

sw.epilog:                                        ; preds = %if.else710, %for.body724, %sw.bb254, %if.else, %if.end94, %if.else104, %if.then149, %if.end237, %if.then177, %if.else172, %cond.true275, %land.lhs.true272, %if.else412, %sw.bb388, %cond.end503, %if.then705, %if.then508, %if.then473, %if.else475, %if.then458, %if.else460, %if.then407, %if.end423, %if.then259, %land.lhs.true267, %cond.end289, %if.else261, %cond.end162, %if.then221, %if.then244, %if.then211, %if.then130, %cond.end125, %if.end101, %if.then110, %if.else112, %if.then81, %if.else83, %cond.end27, %if.then44, %if.else46, %entry, %cond.end686, %land.end669, %if.then650, %land.end632, %if.then613, %land.end595, %if.then576, %land.end, %if.then544, %cond.end527, %cond.end491, %if.end480, %sw.bb445, %cond.end440, %cond.end382, %cond.end338, %sw.bb313, %sw.bb297, %if.then187, %cond.end141, %cond.end71, %cond.end59, %cond.end12, %cond.end, %sw.bb
  ret i32 0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_savesvpv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_taint_proper(i8*, i8*) #1

; Function Attrs: optsize
declare void @Perl_init_debugger() #1

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @setuid(i32) #1

; Function Attrs: optsize
declare i32 @getuid() #1

; Function Attrs: optsize
declare i32 @geteuid() #1

; Function Attrs: optsize
declare i32 @setgid(i32) #1

; Function Attrs: optsize
declare i32 @getgid() #1

; Function Attrs: optsize
declare i32 @getegid() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define void @Perl_sighandler(i32 %sig) #0 {
entry:
  %gv = alloca %struct.gv*, align 8
  %st = alloca %struct.hv*, align 8
  %flags = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** %gv, align 8, !tbaa !0
  %1 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %3 = load %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %4 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add = add nsw i32 %4, 15
  %5 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %not.cmp = icmp sle i32 %add, %5
  %. = zext i1 %not.cmp to i32
  store i32 %., i32* %flags, align 4, !tbaa !3
  %6 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %7 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i32* %7, i64 -2
  %cmp1 = icmp ult i32* %6, %add.ptr
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %or3 = or i32 %., 4
  store i32 %or3, i32* %flags, align 4, !tbaa !3
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry
  %8 = phi i32 [ %or3, %if.then2 ], [ %., %entry ]
  %9 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %10 = load i32* @PL_retstack_max, align 4, !tbaa !3
  %sub = add nsw i32 %10, -2
  %cmp5 = icmp slt i32 %9, %sub
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %or7 = or i32 %8, 8
  store i32 %or7, i32* %flags, align 4, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %11 = phi i32 [ %or7, %if.then6 ], [ %8, %if.end4 ]
  %12 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %13 = load i32* @PL_scopestack_max, align 4, !tbaa !3
  %sub9 = add nsw i32 %13, -3
  %cmp10 = icmp slt i32 %12, %sub9
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %or12 = or i32 %11, 16
  store i32 %or12, i32* %flags, align 4, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %14 = phi i32 [ %or12, %if.then11 ], [ %11, %if.end8 ]
  %idxprom = sext i32 %sig to i64
  %15 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  %16 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %16, null
  br i1 %tobool, label %if.then14, label %if.end33

if.then14:                                        ; preds = %if.end13
  %17 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool15 = icmp eq %struct.gv* %17, null
  br i1 %tobool15, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then14
  %sv_flags = getelementptr inbounds %struct.gv* %17, i64 0, i32 2
  %18 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %18, 255
  %cmp16 = icmp eq i32 %and, 13
  br i1 %cmp16, label %land.lhs.true17, label %cond.false

land.lhs.true17:                                  ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %17, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %20, i64 0, i32 2
  %21 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.io* %21, null
  br i1 %tobool18, label %cond.false, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %sv_any23 = getelementptr inbounds %struct.io* %21, i64 0, i32 0
  %22 = load %struct.xpvio** %sv_any23, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %22, i64 0, i32 8
  %23 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool24 = icmp eq %struct._PerlIO** %23, null
  br i1 %tobool24, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true19, %land.lhs.true17, %if.then14, %land.lhs.true
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true19, %cond.false
  %cond = phi %struct._PerlIO** [ %call, %cond.false ], [ %23, %land.lhs.true19 ]
  %arrayidx31 = getelementptr inbounds [0 x i8*]* @PL_sig_name, i64 0, i64 %idxprom
  %24 = load i8** %arrayidx31, align 8, !tbaa !0
  %call32 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([51 x i8]* @.str41, i64 0, i64 0), i8* %24) #7
  call void @exit(i32 %sig) #9
  unreachable

if.end33:                                         ; preds = %if.end13
  %and34 = and i32 %14, 1
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end33
  %add37 = add nsw i32 %4, 5
  store i32 %add37, i32* @PL_savestack_ix, align 4, !tbaa !3
  %25 = bitcast i32* %flags to i8*
  call void @Perl_save_destructor_x(void (i8*)* @unwind_handler_stack, i8* %25) #7
  %.pre = load i32* %flags, align 4, !tbaa !3
  br label %if.end38

if.end38:                                         ; preds = %if.end33, %if.then36
  %26 = phi i32 [ %14, %if.end33 ], [ %.pre, %if.then36 ]
  %and39 = and i32 %26, 4
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  %27 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %27, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %if.end38, %if.then41
  %and43 = and i32 %26, 8
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end42
  %28 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @PL_retstack_ix, align 4, !tbaa !3
  %idxprom46 = sext i32 %inc to i64
  %29 = load %struct.op*** @PL_retstack, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds %struct.op** %29, i64 %idxprom46
  store %struct.op* null, %struct.op** %arrayidx47, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.then45
  %and49 = and i32 %26, 16
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end48
  %30 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %add52 = add nsw i32 %30, 1
  store i32 %add52, i32* @PL_scopestack_ix, align 4, !tbaa !3
  br label %if.end53

if.end53:                                         ; preds = %if.end48, %if.then51
  %31 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds %struct.sv** %31, i64 %idxprom
  %32 = load %struct.sv** %arrayidx55, align 8, !tbaa !0
  %sv_flags56 = getelementptr inbounds %struct.sv* %32, i64 0, i32 2
  %33 = load i32* %sv_flags56, align 4, !tbaa !3
  %and57 = and i32 %33, 524288
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53
  %sv_any61 = getelementptr inbounds %struct.sv* %32, i64 0, i32 0
  %34 = load i8** %sv_any61, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %34 to %struct.sv**
  %35 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool62 = icmp eq %struct.sv* %35, null
  br i1 %tobool62, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false
  %36 = bitcast %struct.sv* %35 to %struct.cv*
  %37 = getelementptr inbounds %struct.sv* %35, i64 0, i32 2
  %38 = load i32* %37, align 4, !tbaa !3
  %and65 = and i32 %38, 255
  %cmp66 = icmp eq i32 %and65, 12
  br i1 %cmp66, label %if.end71, label %if.then67

if.then67:                                        ; preds = %lor.lhs.false63, %lor.lhs.false, %if.end53
  %call70 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %32, %struct.hv** %st, %struct.gv** %gv, i32 1) #7
  br label %if.end71

if.end71:                                         ; preds = %lor.lhs.false63, %if.then67
  %cv.0 = phi %struct.cv* [ %call70, %if.then67 ], [ %36, %lor.lhs.false63 ]
  %tobool72 = icmp ne %struct.cv* %cv.0, null
  br i1 %tobool72, label %lor.lhs.false73, label %if.then76

lor.lhs.false73:                                  ; preds = %if.end71
  %sv_any74 = getelementptr inbounds %struct.cv* %cv.0, i64 0, i32 0
  %39 = load %struct.xpvcv** %sv_any74, align 8, !tbaa !0
  %xcv_root = getelementptr inbounds %struct.xpvcv* %39, i64 0, i32 9
  %40 = load %struct.op** %xcv_root, align 8, !tbaa !0
  %tobool75 = icmp eq %struct.op* %40, null
  br i1 %tobool75, label %if.then76, label %if.end145

if.then76:                                        ; preds = %lor.lhs.false73, %if.end71
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp77 = icmp eq %struct.sv* %42, null
  br i1 %cmp77, label %lor.lhs.false90, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then76
  %43 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings79 = getelementptr inbounds %struct.cop* %43, i64 0, i32 14
  %44 = load %struct.sv** %cop_warnings79, align 8, !tbaa !0
  %cmp80 = icmp eq %struct.sv* %44, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp80, label %lor.lhs.false90, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings82 = getelementptr inbounds %struct.cop* %45, i64 0, i32 14
  %46 = load %struct.sv** %cop_warnings82, align 8, !tbaa !0
  %cmp83 = icmp eq %struct.sv* %46, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp83, label %if.then98, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %land.lhs.true81
  %47 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings85 = getelementptr inbounds %struct.cop* %47, i64 0, i32 14
  %48 = load %struct.sv** %cop_warnings85, align 8, !tbaa !0
  %sv_any86 = getelementptr inbounds %struct.sv* %48, i64 0, i32 0
  %49 = load i8** %sv_any86, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %49 to i8**
  %50 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i8* %50, i64 6
  %51 = load i8* %arrayidx87, align 1, !tbaa !1
  %and88 = and i8 %51, 16
  %tobool89 = icmp eq i8 %and88, 0
  br i1 %tobool89, label %lor.lhs.false90, label %if.then98

lor.lhs.false90:                                  ; preds = %lor.lhs.false84, %land.lhs.true78, %if.then76
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings91 = getelementptr inbounds %struct.cop* %52, i64 0, i32 14
  %53 = load %struct.sv** %cop_warnings91, align 8, !tbaa !0
  %cmp92 = icmp eq %struct.sv* %53, null
  br i1 %cmp92, label %land.lhs.true94, label %cleanup

land.lhs.true94:                                  ; preds = %lor.lhs.false90
  %54 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and96 = and i8 %54, 1
  %tobool97 = icmp eq i8 %and96, 0
  br i1 %tobool97, label %cleanup, label %if.then98

if.then98:                                        ; preds = %lor.lhs.false84, %land.lhs.true94, %land.lhs.true81
  %arrayidx100 = getelementptr inbounds [0 x i8*]* @PL_sig_name, i64 0, i64 %idxprom
  %55 = load i8** %arrayidx100, align 8, !tbaa !0
  %56 = load %struct.gv** %gv, align 8, !tbaa !0
  %tobool101 = icmp eq %struct.gv* %56, null
  br i1 %tobool101, label %cond.false114, label %cond.true102

cond.true102:                                     ; preds = %if.then98
  %sv_any103 = getelementptr inbounds %struct.gv* %56, i64 0, i32 0
  %57 = load %struct.xpvgv** %sv_any103, align 8, !tbaa !0
  %xgv_gp104 = getelementptr inbounds %struct.xpvgv* %57, i64 0, i32 7
  %58 = load %struct.gp** %xgv_gp104, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %58, i64 0, i32 6
  %59 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  %tobool105 = icmp eq %struct.gv* %59, null
  %.376 = select i1 %tobool105, %struct.gv* %56, %struct.gv* %59
  %sv_any113 = getelementptr inbounds %struct.gv* %.376, i64 0, i32 0
  %60 = load %struct.xpvgv** %sv_any113, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %60, i64 0, i32 8
  %61 = load i8** %xgv_name, align 8, !tbaa !0
  br label %cond.end142

cond.false114:                                    ; preds = %if.then98
  br i1 %tobool72, label %land.lhs.true116, label %cond.end142

land.lhs.true116:                                 ; preds = %cond.false114
  %sv_any117 = getelementptr inbounds %struct.cv* %cv.0, i64 0, i32 0
  %62 = load %struct.xpvcv** %sv_any117, align 8, !tbaa !0
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %62, i64 0, i32 12
  %63 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %tobool118 = icmp eq %struct.gv* %63, null
  br i1 %tobool118, label %cond.end142, label %cond.true119

cond.true119:                                     ; preds = %land.lhs.true116
  %sv_any122 = getelementptr inbounds %struct.gv* %63, i64 0, i32 0
  %64 = load %struct.xpvgv** %sv_any122, align 8, !tbaa !0
  %xgv_gp123 = getelementptr inbounds %struct.xpvgv* %64, i64 0, i32 7
  %65 = load %struct.gp** %xgv_gp123, align 8, !tbaa !0
  %gp_egv124 = getelementptr inbounds %struct.gp* %65, i64 0, i32 6
  %66 = load %struct.gv** %gp_egv124, align 8, !tbaa !0
  %tobool125 = icmp eq %struct.gv* %66, null
  %.377 = select i1 %tobool125, %struct.gv* %63, %struct.gv* %66
  %sv_any137 = getelementptr inbounds %struct.gv* %.377, i64 0, i32 0
  %67 = load %struct.xpvgv** %sv_any137, align 8, !tbaa !0
  %xgv_name138 = getelementptr inbounds %struct.xpvgv* %67, i64 0, i32 8
  %68 = load i8** %xgv_name138, align 8, !tbaa !0
  br label %cond.end142

cond.end142:                                      ; preds = %land.lhs.true116, %cond.true119, %cond.false114, %cond.true102
  %cond143 = phi i8* [ %61, %cond.true102 ], [ %68, %cond.true119 ], [ getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), %land.lhs.true116 ], [ getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), %cond.false114 ]
  call void (i32, i8*, ...)* @Perl_warner(i32 26, i8* getelementptr inbounds ([33 x i8]* @.str42, i64 0, i64 0), i8* %55, i8* %cond143) #7
  br label %cleanup

if.end145:                                        ; preds = %lor.lhs.false73
  %69 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds %struct.sv** %69, i64 %idxprom
  %70 = load %struct.sv** %arrayidx147, align 8, !tbaa !0
  %tobool148 = icmp eq %struct.sv* %70, null
  br i1 %tobool148, label %if.else, label %if.then149

if.then149:                                       ; preds = %if.end145
  store %struct.sv* %70, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %70, i64 0, i32 1
  %71 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc153 = add i32 %71, 1
  store i32 %inc153, i32* %sv_refcnt, align 4, !tbaa !3
  %72 = load i32* %flags, align 4, !tbaa !3
  %or155 = or i32 %72, 64
  store i32 %or155, i32* %flags, align 4, !tbaa !3
  store %struct.sv* %70, %struct.sv** @sig_sv, align 8, !tbaa !0
  br label %if.end159

if.else:                                          ; preds = %if.end145
  %call156 = call %struct.sv* @Perl_sv_newmortal() #7
  %arrayidx158 = getelementptr inbounds [0 x i8*]* @PL_sig_name, i64 0, i64 %idxprom
  %73 = load i8** %arrayidx158, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %call156, i8* %73) #7
  br label %if.end159

if.end159:                                        ; preds = %if.else, %if.then149
  %sv.0 = phi %struct.sv* [ %70, %if.then149 ], [ %call156, %if.else ]
  %74 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %74, i64 0, i32 6
  %75 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool160 = icmp eq %struct.stackinfo* %75, null
  br i1 %tobool160, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end159
  %call162 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #7
  %76 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call162, i64 0, i32 5
  store %struct.stackinfo* %76, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %77 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next163 = getelementptr inbounds %struct.stackinfo* %77, i64 0, i32 6
  store %struct.stackinfo* %call162, %struct.stackinfo** %si_next163, align 8, !tbaa !0
  br label %if.end164

if.end164:                                        ; preds = %if.end159, %if.then161
  %next.0 = phi %struct.stackinfo* [ %call162, %if.then161 ], [ %75, %if.end159 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 4, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %78 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any165 = getelementptr inbounds %struct.av* %78, i64 0, i32 0
  %79 = load %struct.xpvav** %sv_any165, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %79, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %80 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %81 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any166 = getelementptr inbounds %struct.av* %81, i64 0, i32 0
  %82 = load %struct.xpvav** %sv_any166, align 8, !tbaa !0
  %xav_fill167 = getelementptr inbounds %struct.xpvav* %82, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill167, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %79, i64 0, i32 0
  %83 = load i8** %xav_array, align 8, !tbaa !0
  %84 = bitcast i8* %83 to %struct.sv**
  store %struct.sv** %84, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %85 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any171 = getelementptr inbounds %struct.av* %85, i64 0, i32 0
  %86 = load %struct.xpvav** %sv_any171, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %86, i64 0, i32 2
  %87 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr172 = getelementptr inbounds %struct.sv** %84, i64 %87
  store %struct.sv** %add.ptr172, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %88 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any174 = getelementptr inbounds %struct.av* %88, i64 0, i32 0
  %89 = load %struct.xpvav** %sv_any174, align 8, !tbaa !0
  %xav_fill175 = getelementptr inbounds %struct.xpvav* %89, i64 0, i32 1
  %90 = load i64* %xav_fill175, align 8, !tbaa !4
  %add.ptr176 = getelementptr inbounds %struct.sv** %84, i64 %90
  store %struct.sv** %add.ptr176, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %91 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %91, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %92 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr178 = getelementptr inbounds i32* %92, i64 1
  store i32* %incdec.ptr178, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %93 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp179 = icmp eq i32* %incdec.ptr178, %93
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end164
  call void @Perl_markstack_grow() #7
  %.pre378 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre379 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end164
  %94 = phi i32* [ %.pre379, %if.then181 ], [ %incdec.ptr178, %if.end164 ]
  %95 = phi %struct.sv** [ %.pre378, %if.then181 ], [ %84, %if.end164 ]
  %sub.ptr.lhs.cast183 = ptrtoint %struct.sv** %add.ptr176 to i64
  %sub.ptr.rhs.cast184 = ptrtoint %struct.sv** %95 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %sub.ptr.div186375 = lshr exact i64 %sub.ptr.sub185, 3
  %conv187 = trunc i64 %sub.ptr.div186375 to i32
  store i32 %conv187, i32* %94, align 4, !tbaa !3
  %add.ptr176.sum = add i64 %90, 1
  %incdec.ptr188 = getelementptr inbounds %struct.sv** %84, i64 %add.ptr176.sum
  store %struct.sv* %sv.0, %struct.sv** %incdec.ptr188, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr188, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %96 = bitcast %struct.cv* %cv.0 to %struct.sv*
  %call189 = call i32 @Perl_call_sv(%struct.sv* %96, i32 6) #7
  %97 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %98 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev191 = getelementptr inbounds %struct.stackinfo* %98, i64 0, i32 5
  %99 = load %struct.stackinfo** %si_prev191, align 8, !tbaa !0
  %tobool192 = icmp eq %struct.stackinfo* %99, null
  br i1 %tobool192, label %if.then193, label %if.end223

if.then193:                                       ; preds = %if.end182
  %100 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool194 = icmp eq %struct.gv* %100, null
  br i1 %tobool194, label %cond.false218, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %if.then193
  %sv_flags196 = getelementptr inbounds %struct.gv* %100, i64 0, i32 2
  %101 = load i32* %sv_flags196, align 4, !tbaa !3
  %and197 = and i32 %101, 255
  %cmp198 = icmp eq i32 %and197, 13
  br i1 %cmp198, label %land.lhs.true200, label %cond.false218

land.lhs.true200:                                 ; preds = %land.lhs.true195
  %sv_any201 = getelementptr inbounds %struct.gv* %100, i64 0, i32 0
  %102 = load %struct.xpvgv** %sv_any201, align 8, !tbaa !0
  %xgv_gp202 = getelementptr inbounds %struct.xpvgv* %102, i64 0, i32 7
  %103 = load %struct.gp** %xgv_gp202, align 8, !tbaa !0
  %gp_io203 = getelementptr inbounds %struct.gp* %103, i64 0, i32 2
  %104 = load %struct.io** %gp_io203, align 8, !tbaa !0
  %tobool204 = icmp eq %struct.io* %104, null
  br i1 %tobool204, label %cond.false218, label %land.lhs.true205

land.lhs.true205:                                 ; preds = %land.lhs.true200
  %sv_any209 = getelementptr inbounds %struct.io* %104, i64 0, i32 0
  %105 = load %struct.xpvio** %sv_any209, align 8, !tbaa !0
  %xio_ofp210 = getelementptr inbounds %struct.xpvio* %105, i64 0, i32 8
  %106 = load %struct._PerlIO*** %xio_ofp210, align 8, !tbaa !0
  %tobool211 = icmp eq %struct._PerlIO** %106, null
  br i1 %tobool211, label %cond.false218, label %cond.end220

cond.false218:                                    ; preds = %land.lhs.true205, %land.lhs.true200, %if.then193, %land.lhs.true195
  %call219 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end220

cond.end220:                                      ; preds = %land.lhs.true205, %cond.false218
  %cond221 = phi %struct._PerlIO** [ %call219, %cond.false218 ], [ %106, %land.lhs.true205 ]
  %call222 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond221, i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0)) #7
  call void @Perl_my_exit(i32 1) #7
  br label %if.end223

if.end223:                                        ; preds = %if.end182, %cond.end220
  %107 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast224 = ptrtoint %struct.sv** %97 to i64
  %sub.ptr.rhs.cast225 = ptrtoint %struct.sv** %107 to i64
  %sub.ptr.sub226 = sub i64 %sub.ptr.lhs.cast224, %sub.ptr.rhs.cast225
  %sub.ptr.div227 = ashr exact i64 %sub.ptr.sub226, 3
  %108 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any228 = getelementptr inbounds %struct.av* %108, i64 0, i32 0
  %109 = load %struct.xpvav** %sv_any228, align 8, !tbaa !0
  %xav_fill229 = getelementptr inbounds %struct.xpvav* %109, i64 0, i32 1
  store i64 %sub.ptr.div227, i64* %xav_fill229, align 8, !tbaa !4
  %si_stack230 = getelementptr inbounds %struct.stackinfo* %99, i64 0, i32 0
  %110 = load %struct.av** %si_stack230, align 8, !tbaa !0
  %sv_any231 = getelementptr inbounds %struct.av* %110, i64 0, i32 0
  %111 = load %struct.xpvav** %sv_any231, align 8, !tbaa !0
  %xav_array232 = getelementptr inbounds %struct.xpvav* %111, i64 0, i32 0
  %112 = load i8** %xav_array232, align 8, !tbaa !0
  %113 = bitcast i8* %112 to %struct.sv**
  store %struct.sv** %113, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %114 = load %struct.av** %si_stack230, align 8, !tbaa !0
  %sv_any234 = getelementptr inbounds %struct.av* %114, i64 0, i32 0
  %115 = load %struct.xpvav** %sv_any234, align 8, !tbaa !0
  %xav_max235 = getelementptr inbounds %struct.xpvav* %115, i64 0, i32 2
  %116 = load i64* %xav_max235, align 8, !tbaa !4
  %add.ptr236 = getelementptr inbounds %struct.sv** %113, i64 %116
  store %struct.sv** %add.ptr236, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %117 = load %struct.av** %si_stack230, align 8, !tbaa !0
  %sv_any238 = getelementptr inbounds %struct.av* %117, i64 0, i32 0
  %118 = load %struct.xpvav** %sv_any238, align 8, !tbaa !0
  %xav_fill239 = getelementptr inbounds %struct.xpvav* %118, i64 0, i32 1
  %119 = load i64* %xav_fill239, align 8, !tbaa !4
  %add.ptr240 = getelementptr inbounds %struct.sv** %113, i64 %119
  store %struct.sv** %add.ptr240, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %120 = load %struct.av** %si_stack230, align 8, !tbaa !0
  store %struct.av* %120, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %99, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %121 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any242 = getelementptr inbounds %struct.gv* %121, i64 0, i32 0
  %122 = load %struct.xpvgv** %sv_any242, align 8, !tbaa !0
  %xgv_gp243 = getelementptr inbounds %struct.xpvgv* %122, i64 0, i32 7
  %123 = load %struct.gp** %xgv_gp243, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %123, i64 0, i32 0
  %124 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool244 = icmp eq %struct.sv* %124, null
  br i1 %tobool244, label %cleanup, label %cond.false246

cond.false246:                                    ; preds = %if.end223
  %sv_flags250 = getelementptr inbounds %struct.sv* %124, i64 0, i32 2
  %125 = load i32* %sv_flags250, align 4, !tbaa !3
  %and251 = and i32 %125, 262144
  %tobool252 = icmp eq i32 %and251, 0
  br i1 %tobool252, label %cond.false272, label %cond.true253

cond.true253:                                     ; preds = %cond.false246
  %sv_any257 = getelementptr inbounds %struct.sv* %124, i64 0, i32 0
  %126 = load i8** %sv_any257, align 8, !tbaa !0
  %127 = bitcast i8* %126 to %struct.xpv*
  store %struct.xpv* %127, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool258 = icmp eq i8* %126, null
  br i1 %tobool258, label %cleanup, label %land.lhs.true259

land.lhs.true259:                                 ; preds = %cond.true253
  %xpv_cur = getelementptr inbounds i8* %126, i64 8
  %128 = bitcast i8* %xpv_cur to i64*
  %129 = load i64* %128, align 8, !tbaa !4
  %cmp260 = icmp ugt i64 %129, 1
  br i1 %cmp260, label %if.then307, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %land.lhs.true259
  %tobool264 = icmp eq i64 %129, 0
  br i1 %tobool264, label %cleanup, label %land.lhs.true265

land.lhs.true265:                                 ; preds = %lor.lhs.false262
  %xpv_pv266 = bitcast i8* %126 to i8**
  %130 = load i8** %xpv_pv266, align 8, !tbaa !0
  %131 = load i8* %130, align 1, !tbaa !1
  %cmp268 = icmp eq i8 %131, 48
  br i1 %cmp268, label %cleanup, label %if.then307

cond.false272:                                    ; preds = %cond.false246
  %and277 = and i32 %125, 65536
  %tobool278 = icmp eq i32 %and277, 0
  br i1 %tobool278, label %cond.false286, label %cond.true279

cond.true279:                                     ; preds = %cond.false272
  %sv_any283 = getelementptr inbounds %struct.sv* %124, i64 0, i32 0
  %132 = load i8** %sv_any283, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %132, i64 24
  %133 = bitcast i8* %xiv_iv to i64*
  %134 = load i64* %133, align 8, !tbaa !4
  %cmp284 = icmp eq i64 %134, 0
  br i1 %cmp284, label %cleanup, label %if.then307

cond.false286:                                    ; preds = %cond.false272
  %and291 = and i32 %125, 131072
  %tobool292 = icmp eq i32 %and291, 0
  br i1 %tobool292, label %cond.false300, label %cond.true293

cond.true293:                                     ; preds = %cond.false286
  %sv_any297 = getelementptr inbounds %struct.sv* %124, i64 0, i32 0
  %135 = load i8** %sv_any297, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %135, i64 32
  %136 = bitcast i8* %xnv_nv to double*
  %137 = load double* %136, align 8, !tbaa !5
  %cmp298 = fcmp une double %137, 0.000000e+00
  br i1 %cmp298, label %if.then307, label %cleanup

cond.false300:                                    ; preds = %cond.false286
  %call304 = call signext i8 @Perl_sv_2bool(%struct.sv* %124) #7
  %tobool306 = icmp eq i8 %call304, 0
  br i1 %tobool306, label %cleanup, label %if.then307

if.then307:                                       ; preds = %land.lhs.true265, %cond.true279, %cond.false300, %land.lhs.true259, %cond.true293
  %call308 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %sig, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  %138 = load void (i32)** @PL_csighandlerp, align 8, !tbaa !0
  %call309 = call void (i32)* (i32, void (i32)*)* @Perl_rsignal(i32 %sig, void (i32)* %138) #7
  %call310 = call %struct.op* (i8*, ...)* @Perl_die(i8* null) #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true265, %lor.lhs.false262, %cond.true253, %cond.true279, %cond.false300, %if.end223, %land.lhs.true94, %cond.true293, %if.then307, %lor.lhs.false90, %cond.end142
  %sv.1 = phi %struct.sv* [ %sv.0, %if.then307 ], [ %sv.0, %land.lhs.true265 ], [ %sv.0, %lor.lhs.false262 ], [ %sv.0, %cond.true253 ], [ %sv.0, %cond.true279 ], [ %sv.0, %cond.true293 ], [ %sv.0, %cond.false300 ], [ %sv.0, %if.end223 ], [ null, %cond.end142 ], [ null, %land.lhs.true94 ], [ null, %lor.lhs.false90 ]
  %139 = load i32* %flags, align 4, !tbaa !3
  %and312 = and i32 %139, 1
  %tobool313 = icmp eq i32 %and312, 0
  br i1 %tobool313, label %if.end316, label %if.then314

if.then314:                                       ; preds = %cleanup
  %140 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %sub315 = add nsw i32 %140, -8
  store i32 %sub315, i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end316

if.end316:                                        ; preds = %cleanup, %if.then314
  %and317 = and i32 %139, 4
  %tobool318 = icmp eq i32 %and317, 0
  br i1 %tobool318, label %if.end321, label %if.then319

if.then319:                                       ; preds = %if.end316
  %141 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr320 = getelementptr inbounds i32* %141, i64 -1
  store i32* %incdec.ptr320, i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end321

if.end321:                                        ; preds = %if.end316, %if.then319
  %and322 = and i32 %139, 8
  %tobool323 = icmp eq i32 %and322, 0
  br i1 %tobool323, label %if.end325, label %if.then324

if.then324:                                       ; preds = %if.end321
  %142 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %dec = add nsw i32 %142, -1
  store i32 %dec, i32* @PL_retstack_ix, align 4, !tbaa !3
  br label %if.end325

if.end325:                                        ; preds = %if.end321, %if.then324
  %and326 = and i32 %139, 16
  %tobool327 = icmp eq i32 %and326, 0
  br i1 %tobool327, label %if.end330, label %if.then328

if.then328:                                       ; preds = %if.end325
  %143 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %sub329 = add nsw i32 %143, -1
  store i32 %sub329, i32* @PL_scopestack_ix, align 4, !tbaa !3
  br label %if.end330

if.end330:                                        ; preds = %if.end325, %if.then328
  %and331 = and i32 %139, 64
  %tobool332 = icmp eq i32 %and331, 0
  br i1 %tobool332, label %if.end334, label %if.then333

if.then333:                                       ; preds = %if.end330
  call void @Perl_sv_free(%struct.sv* %sv.1) #7
  br label %if.end334

if.end334:                                        ; preds = %if.end330, %if.then333
  store %struct.op* %2, %struct.op** @PL_op, align 8, !tbaa !0
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !0
  store %struct.xpv* %3, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  ret void
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare void @Perl_save_destructor_x(void (i8*)*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal void @unwind_handler_stack(i8* nocapture %p) #0 {
entry:
  %0 = bitcast i8* %p to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %and = and i32 %1, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %sub = add nsw i32 %2, -5
  store i32 %sub, i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %and1 = and i32 %1, 64
  %tobool2 = icmp eq i32 %and1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load %struct.sv** @sig_sv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %3) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #1

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.op* @Perl_die(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
