; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/regexec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
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
%struct.reg_substr_data = type { [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i32, i32, %struct.sv*, %struct.sv* }
%struct.reg_data = type { i32, i8*, [1 x i8*] }
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
%struct.curcur = type { i32, i32, i32, i32, i32, %struct.regnode*, %struct.regnode*, i8*, %struct.curcur* }
%struct.re_cc_state = type { i32, %struct.regnode*, %struct.re_cc_state*, %struct.curcur*, %struct.regexp* }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.re_scream_pos_data_s = type { i8**, i32* }

@PL_reg_match_utf8 = external global i8
@PL_reg_flags = external global i32
@PL_regeol = external global i8*
@PL_sv_undef = external global %struct.sv
@PL_multiline = external global i32
@PL_screamfirst = external global i32*
@PL_regkind = external constant [0 x i8]
@PL_replgv = external global %struct.gv*
@PL_curcop = external global %struct.cop*
@PL_regcc = external global %struct.curcur*
@.str = private unnamed_addr constant [22 x i8] c"NULL regexp parameter\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"corrupted regexp program\00", align 1
@PL_reg_eval_set = external global i32
@PL_reg_maxiter = external global i32
@PL_regbol = external global i8*
@PL_bostr = external global i8*
@PL_reg_sv = external global %struct.sv*
@PL_regtill = external global i8*
@PL_reg_call_cc = external global %struct.re_cc_state*
@PL_reg_ganch = external global i8*
@PL_utf8skip = external constant [0 x i8]
@PL_regdata = external global %struct.reg_data*
@.str2 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_reg_oldsaved = external global i8*
@PL_reg_re = external global %struct.regexp*
@PL_reg_oldsavedlen = external global i64
@PL_reg_oldpos = external global i32
@PL_reg_magic = external global %struct.magic*
@PL_reg_oldcurpm = external global %struct.pmop*
@PL_curpm = external global %struct.pmop*
@PL_curstackinfo = external global %struct.stackinfo*
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@PL_defgv = external global %struct.gv*
@PL_reg_curpm = external global %struct.pmop*
@PL_reginput = external global i8*
@PL_regstartp = external global i32*
@PL_regendp = external global i32*
@PL_reglastparen = external global i32*
@PL_reglastcloseparen = external global i32*
@PL_regsize = external global i32
@PL_reg_start_tmpl = external global i32
@PL_reg_start_tmp = external global i8**
@PL_savestack_ix = external global i32
@PL_dowarn = external global i8
@PL_fold = external constant [0 x i8]
@PL_fold_locale = external global [0 x i8]
@PL_utf8_alnum = external global %struct.sv*
@.str4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@PL_utf8_space = external global %struct.sv*
@.str5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_utf8_digit = external global %struct.sv*
@.str6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@PL_utf8_mark = external global %struct.sv*
@.str7 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@PL_reg_leftiter = external global i32
@PL_op = external global %struct.op*
@PL_comppad = external global %struct.av*
@PL_curpad = external global %struct.sv**
@PL_runops = external global i32 ()*
@PL_regprecomp = external global i8*
@PL_regnpar = external global i32
@PL_regcompp = external global %struct.regexp* (i8*, i8*, %struct.pmop*)*
@PL_regfree = external global void (%struct.regexp*)*
@PL_Xpv = external global %struct.xpv*
@PL_reg_poscache = external global i8*
@PL_reg_poscache_size = external global i64
@.str8 = private unnamed_addr constant [23 x i8] c"%s limit (%d) exceeded\00", align 1
@.str9 = private unnamed_addr constant [40 x i8] c"Complex regular subexpression recursion\00", align 1
@PL_savestack = external global %union.any*
@PL_stderrgv = external global %struct.gv*
@.str10 = private unnamed_addr constant [8 x i8] c"%lx %d\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"regexp memory corruption\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"corrupted regexp pointers\00", align 1
@.str13 = private unnamed_addr constant [32 x i8] c"regexp unwind memory corruption\00", align 1
@.str14 = private unnamed_addr constant [31 x i8] c"panic: paren_elems_to_push < 0\00", align 1
@PL_savestack_max = external global i32
@.str15 = private unnamed_addr constant [29 x i8] c"panic: unknown regstclass %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_pregexec(%struct.regexp* %prog, i8* %stringarg, i8* %strend, i8* %strbeg, i32 %minend, %struct.sv* %screamer, i32 %nosave) #0 {
entry:
  %not.tobool = icmp eq i32 %nosave, 0
  %cond = zext i1 %not.tobool to i32
  %call = tail call i32 @Perl_regexec_flags(%struct.regexp* %prog, i8* %stringarg, i8* %strend, i8* %strbeg, i32 %minend, %struct.sv* %screamer, i8* undef, i32 %cond) #5
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_regexec_flags(%struct.regexp* %prog, i8* %stringarg, i8* %strend, i8* %strbeg, i32 %minend, %struct.sv* %sv, i8* nocapture %data, i32 %flags) #0 {
entry:
  %scream_pos = alloca i32, align 4
  %scream_olds = alloca i8*, align 8
  %d = alloca %struct.re_scream_pos_data_s, align 8
  %len = alloca i64, align 8
  store i32 -1, i32* %scream_pos, align 4, !tbaa !0
  %0 = load %struct.gv** @PL_replgv, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.gv* %0, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 7
  %2 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %2, i64 0, i32 0
  %3 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %4, 536870912
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.cop* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and1 = and i8 %6, 8
  %lnot = icmp eq i8 %and1, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %7 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %reganch = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 15
  %8 = load i32* %reganch, align 4, !tbaa !0
  %or = or i32 %8, 268435456
  %and7 = and i32 %8, -268435457
  %storemerge1213 = select i1 %7, i32 %or, i32 %and7
  %storemerge = zext i1 %7 to i8
  store i32 %storemerge1213, i32* %reganch, align 4, !tbaa !0
  store i8 %storemerge, i8* @PL_reg_match_utf8, align 1, !tbaa !1
  store %struct.curcur* null, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %precomp.i = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 4
  %9 = load i8** %precomp.i, align 8, !tbaa !3
  store i8* %9, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 12
  %10 = load i32* %nparens.i, align 4, !tbaa !0
  store i32 %10, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 5
  %11 = load %struct.reg_data** %data.i, align 8, !tbaa !3
  store %struct.reg_data* %11, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %prog, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %cmp = icmp eq %struct.regexp* %prog, null
  %cmp9 = icmp eq i8* %stringarg, null
  %or.cond = or i1 %cmp, %cmp9
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #6
  br label %return

if.end:                                           ; preds = %land.end
  %minlen11 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 10
  %12 = load i32* %minlen11, align 4, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %strend to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %stringarg to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = sext i32 %12 to i64
  %cmp13 = icmp slt i64 %sub.ptr.sub, %conv12
  br i1 %cmp13, label %phooey, label %if.end16

if.end16:                                         ; preds = %if.end
  %13 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 16, i64 0, i32 0
  %14 = load i8* %13, align 1, !tbaa !1
  %cmp18 = icmp eq i8 %14, -100
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %if.then20
  store i32 0, i32* @PL_reg_flags, align 4, !tbaa !0
  store i32 0, i32* @PL_reg_eval_set, align 4, !tbaa !0
  store i32 0, i32* @PL_reg_maxiter, align 4, !tbaa !0
  %15 = load i32* %reganch, align 4, !tbaa !0
  %and23 = and i32 %15, 65536
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  store i32 8, i32* @PL_reg_flags, align 4, !tbaa !0
  %.pre = load i32* %reganch, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end21, %if.then25
  %16 = phi i32 [ %15, %if.end21 ], [ %.pre, %if.then25 ]
  store i8* %stringarg, i8** @PL_regbol, align 8, !tbaa !3
  store i8* %strbeg, i8** @PL_bostr, align 8, !tbaa !3
  store %struct.sv* %sv, %struct.sv** @PL_reg_sv, align 8, !tbaa !3
  store i8* %strend, i8** @PL_regeol, align 8, !tbaa !3
  %idx.ext = sext i32 %minend to i64
  %add.ptr = getelementptr inbounds i8* %stringarg, i64 %idx.ext
  store i8* %add.ptr, i8** @PL_regtill, align 8, !tbaa !3
  store %struct.re_cc_state* null, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %and29 = and i32 %16, 128
  %tobool30 = icmp eq i32 %and29, 0
  br i1 %tobool30, label %if.end64, label %if.then31

if.then31:                                        ; preds = %if.end27
  %and32 = and i32 %flags, 8
  %tobool33 = icmp eq i32 %and32, 0
  br i1 %tobool33, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then31
  store i8* %stringarg, i8** @PL_reg_ganch, align 8, !tbaa !3
  br label %if.end64

if.else:                                          ; preds = %if.then31
  %tobool35 = icmp eq %struct.sv* %sv, null
  br i1 %tobool35, label %if.else61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %17 = load i32* %sv_flags, align 4, !tbaa !0
  %and37 = and i32 %17, 255
  %cmp38 = icmp ugt i32 %and37, 6
  br i1 %cmp38, label %land.lhs.true40, label %if.else61

land.lhs.true40:                                  ; preds = %land.lhs.true
  %sv_any41 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %18 = load i8** %sv_any41, align 8, !tbaa !3
  %xmg_magic = getelementptr inbounds i8* %18, i64 40
  %19 = bitcast i8* %xmg_magic to %struct.magic**
  %20 = load %struct.magic** %19, align 8, !tbaa !3
  %tobool42 = icmp eq %struct.magic* %20, null
  br i1 %tobool42, label %if.else61, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 103) #6
  %tobool44 = icmp eq %struct.magic* %call, null
  br i1 %tobool44, label %if.else61, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %mg_len = getelementptr inbounds %struct.magic* %call, i64 0, i32 7
  %21 = load i32* %mg_len, align 4, !tbaa !0
  %cmp46 = icmp sgt i32 %21, -1
  br i1 %cmp46, label %if.then48, label %if.else61

if.then48:                                        ; preds = %land.lhs.true45
  %idx.ext50 = sext i32 %21 to i64
  %add.ptr51 = getelementptr inbounds i8* %strbeg, i64 %idx.ext50
  store i8* %add.ptr51, i8** @PL_reg_ganch, align 8, !tbaa !3
  %22 = load i32* %reganch, align 4, !tbaa !0
  %and53 = and i32 %22, 8
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %if.end64, label %if.then55

if.then55:                                        ; preds = %if.then48
  %cmp56 = icmp ult i8* %add.ptr51, %stringarg
  br i1 %cmp56, label %phooey, label %if.end64

if.else61:                                        ; preds = %land.lhs.true43, %land.lhs.true40, %if.else, %land.lhs.true45, %land.lhs.true
  store i8* %strbeg, i8** @PL_reg_ganch, align 8, !tbaa !3
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %if.then48, %if.end27, %if.then34, %if.else61
  %s.0 = phi i8* [ %stringarg, %if.then34 ], [ %stringarg, %if.then48 ], [ %stringarg, %if.else61 ], [ %stringarg, %if.end27 ], [ %add.ptr51, %if.then55 ]
  %and65 = and i32 %flags, 2
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %land.lhs.true67, label %if.end84

land.lhs.true67:                                  ; preds = %if.end64
  %substrs = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %23 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr = getelementptr inbounds %struct.reg_substr_data* %23, i64 0, i32 0, i64 2, i32 2
  %24 = load %struct.sv** %substr, align 8, !tbaa !3
  %cmp69 = icmp eq %struct.sv* %24, null
  br i1 %cmp69, label %lor.lhs.false71, label %if.then77

lor.lhs.false71:                                  ; preds = %land.lhs.true67
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %23, i64 0, i32 0, i64 2, i32 3
  %25 = load %struct.sv** %utf8_substr, align 8, !tbaa !3
  %cmp75 = icmp eq %struct.sv* %25, null
  br i1 %cmp75, label %if.end84, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false71, %land.lhs.true67
  %scream_olds78 = getelementptr inbounds %struct.re_scream_pos_data_s* %d, i64 0, i32 0
  store i8** %scream_olds, i8*** %scream_olds78, align 8, !tbaa !3
  %scream_pos79 = getelementptr inbounds %struct.re_scream_pos_data_s* %d, i64 0, i32 1
  store i32* %scream_pos, i32** %scream_pos79, align 8, !tbaa !3
  %call80 = call i8* @Perl_re_intuit_start(%struct.regexp* %prog, %struct.sv* %sv, i8* %s.0, i8* %strend, i32 %flags, %struct.re_scream_pos_data_s* %d) #5
  %tobool81 = icmp eq i8* %call80, null
  br i1 %tobool81, label %phooey, label %if.end84

if.end84:                                         ; preds = %if.then77, %lor.lhs.false71, %if.end64
  %s.1 = phi i8* [ %s.0, %if.end64 ], [ %s.0, %lor.lhs.false71 ], [ %call80, %if.then77 ]
  %26 = load i32* %reganch, align 4, !tbaa !0
  %and86 = and i32 %26, 7
  %tobool87 = icmp eq i32 %and86, 0
  br i1 %tobool87, label %if.else178, label %if.then88

if.then88:                                        ; preds = %if.end84
  %cmp89 = icmp eq i8* %s.1, %stringarg
  br i1 %cmp89, label %land.lhs.true91, label %if.else95

land.lhs.true91:                                  ; preds = %if.then88
  %call92 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %stringarg) #5
  %tobool93 = icmp eq i32 %call92, 0
  br i1 %tobool93, label %if.else95, label %got_it

if.else95:                                        ; preds = %land.lhs.true91, %if.then88
  %27 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool96 = icmp eq i32 %27, 0
  br i1 %tobool96, label %lor.lhs.false97, label %if.then105

lor.lhs.false97:                                  ; preds = %if.else95
  %28 = load i32* %reganch, align 4, !tbaa !0
  %29 = and i32 %28, 34
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %phooey, label %if.then105

if.then105:                                       ; preds = %lor.lhs.false97, %if.else95
  %tobool106 = icmp eq i32 %12, 0
  %31 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool110 = icmp eq i8 %31, 0
  %sub.op = sub i32 1, %12
  %sub112 = select i1 %tobool106, i32 0, i32 %sub.op
  br i1 %tobool110, label %cond.false114, label %cond.true111

cond.true111:                                     ; preds = %if.then105
  %call113 = call fastcc i8* @S_reghop3(i8* %strend, i32 %sub112, i8* %strbeg) #5
  br label %cond.end118

cond.false114:                                    ; preds = %if.then105
  %idx.ext116 = sext i32 %sub112 to i64
  %add.ptr117 = getelementptr inbounds i8* %strend, i64 %idx.ext116
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false114, %cond.true111
  %cond119 = phi i8* [ %call113, %cond.true111 ], [ %add.ptr117, %cond.false114 ]
  %add.ptr120 = getelementptr inbounds i8* %cond119, i64 -1
  %substrs121 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %32 = load %struct.reg_substr_data** %substrs121, align 8, !tbaa !3
  %substr124 = getelementptr inbounds %struct.reg_substr_data* %32, i64 0, i32 0, i64 2, i32 2
  %33 = load %struct.sv** %substr124, align 8, !tbaa !3
  %tobool125 = icmp eq %struct.sv* %33, null
  br i1 %tobool125, label %lor.lhs.false126, label %if.then132

lor.lhs.false126:                                 ; preds = %cond.end118
  %utf8_substr130 = getelementptr inbounds %struct.reg_substr_data* %32, i64 0, i32 0, i64 2, i32 3
  %34 = load %struct.sv** %utf8_substr130, align 8, !tbaa !3
  %tobool131 = icmp eq %struct.sv* %34, null
  br i1 %tobool131, label %if.else156, label %if.then132

if.then132:                                       ; preds = %lor.lhs.false126, %cond.end118
  br i1 %cmp89, label %after_try, label %while.body

while.body:                                       ; preds = %if.end144, %if.then148, %if.then132
  %s.2 = phi i8* [ %call150, %if.then148 ], [ %s.1, %if.then132 ], [ %incdec.ptr, %if.end144 ]
  %call137 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.2) #5
  %tobool138 = icmp eq i32 %call137, 0
  br i1 %tobool138, label %after_try, label %got_it

after_try:                                        ; preds = %while.body, %if.then132
  %s.3 = phi i8* [ %stringarg, %if.then132 ], [ %s.2, %while.body ]
  %cmp141 = icmp ult i8* %s.3, %add.ptr120
  br i1 %cmp141, label %if.end144, label %phooey

if.end144:                                        ; preds = %after_try
  %35 = load i32* %reganch, align 4, !tbaa !0
  %and146 = and i32 %35, 3145728
  %tobool147 = icmp eq i32 %and146, 0
  %incdec.ptr = getelementptr inbounds i8* %s.3, i64 1
  br i1 %tobool147, label %while.body, label %if.then148

if.then148:                                       ; preds = %if.end144
  %call150 = call i8* @Perl_re_intuit_start(%struct.regexp* %prog, %struct.sv* %sv, i8* %incdec.ptr, i8* %strend, i32 %flags, %struct.re_scream_pos_data_s* null) #5
  %tobool151 = icmp eq i8* %call150, null
  br i1 %tobool151, label %phooey, label %while.body

if.else156:                                       ; preds = %lor.lhs.false126
  %cmp157 = icmp ugt i8* %s.1, %stringarg
  %incdec.ptr160 = getelementptr inbounds i8* %s.1, i64 -1
  %incdec.ptr160.s.1 = select i1 %cmp157, i8* %incdec.ptr160, i8* %s.1
  %cmp1621274 = icmp ult i8* %incdec.ptr160.s.1, %add.ptr120
  br i1 %cmp1621274, label %while.body164, label %phooey

while.body164:                                    ; preds = %if.else156, %while.cond.backedge
  %s.41275 = phi i8* [ %incdec.ptr165, %while.cond.backedge ], [ %incdec.ptr160.s.1, %if.else156 ]
  %incdec.ptr165 = getelementptr inbounds i8* %s.41275, i64 1
  %36 = load i8* %s.41275, align 1, !tbaa !1
  %cmp167 = icmp eq i8 %36, 10
  br i1 %cmp167, label %if.then169, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body164, %if.then169
  %cmp162 = icmp ult i8* %incdec.ptr165, %add.ptr120
  br i1 %cmp162, label %while.body164, label %phooey

if.then169:                                       ; preds = %while.body164
  %call170 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %incdec.ptr165) #5
  %tobool171 = icmp eq i32 %call170, 0
  br i1 %tobool171, label %while.cond.backedge, label %got_it

if.else178:                                       ; preds = %if.end84
  %and180 = and i32 %26, 8
  %tobool181 = icmp eq i32 %and180, 0
  br i1 %tobool181, label %if.end188, label %if.then182

if.then182:                                       ; preds = %if.else178
  %37 = load i8** @PL_reg_ganch, align 8, !tbaa !3
  %call183 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %37) #5
  %tobool184 = icmp eq i32 %call183, 0
  br i1 %tobool184, label %phooey, label %got_it

if.end188:                                        ; preds = %if.else178
  %substrs189 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %38 = load %struct.reg_substr_data** %substrs189, align 8, !tbaa !3
  %substr192 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 0, i32 2
  %39 = load %struct.sv** %substr192, align 8, !tbaa !3
  %tobool193 = icmp eq %struct.sv* %39, null
  br i1 %tobool193, label %lor.lhs.false194, label %land.lhs.true200

lor.lhs.false194:                                 ; preds = %if.end188
  %utf8_substr198 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 0, i32 3
  %40 = load %struct.sv** %utf8_substr198, align 8, !tbaa !3
  %tobool199 = icmp eq %struct.sv* %40, null
  br i1 %tobool199, label %lor.lhs.false324, label %land.lhs.true200

land.lhs.true200:                                 ; preds = %lor.lhs.false194, %if.end188
  %and202 = and i32 %26, 16
  %tobool203 = icmp eq i32 %and202, 0
  br i1 %tobool203, label %if.else317, label %if.then204

if.then204:                                       ; preds = %land.lhs.true200
  br i1 %7, label %cond.true207, label %cond.false213

cond.true207:                                     ; preds = %if.then204
  %utf8_substr211 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 0, i32 3
  %41 = load %struct.sv** %utf8_substr211, align 8, !tbaa !3
  %tobool212 = icmp eq %struct.sv* %41, null
  br i1 %tobool212, label %cond.true222, label %if.end225

cond.false213:                                    ; preds = %if.then204
  br i1 %tobool193, label %cond.false223, label %if.end225

cond.true222:                                     ; preds = %cond.true207
  call fastcc void @S_to_utf8_substr(%struct.regexp* %prog) #5
  br label %if.end225

cond.false223:                                    ; preds = %cond.false213
  call fastcc void @S_to_byte_substr(%struct.regexp* %prog) #5
  br label %if.end225

if.end225:                                        ; preds = %cond.true207, %cond.false213, %cond.true222, %cond.false223
  %42 = load %struct.reg_substr_data** %substrs189, align 8, !tbaa !3
  %utf8_substr232 = getelementptr inbounds %struct.reg_substr_data* %42, i64 0, i32 0, i64 0, i32 3
  %substr237 = getelementptr inbounds %struct.reg_substr_data* %42, i64 0, i32 0, i64 0, i32 2
  %cond239.in = select i1 %7, %struct.sv** %utf8_substr232, %struct.sv** %substr237
  %cond239 = load %struct.sv** %cond239.in, align 8
  %sv_any240 = getelementptr inbounds %struct.sv* %cond239, i64 0, i32 0
  %43 = load i8** %sv_any240, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv, align 8, !tbaa !3
  %45 = load i8* %44, align 1, !tbaa !1
  %cmp2451266 = icmp ult i8* %s.1, %strend
  br i1 %7, label %while.cond244.preheader, label %while.cond286.preheader

while.cond286.preheader:                          ; preds = %if.end225
  br i1 %cmp2451266, label %while.body289, label %phooey

while.cond244.preheader:                          ; preds = %if.end225
  br i1 %cmp2451266, label %while.body247, label %phooey

while.body247:                                    ; preds = %while.cond244.preheader, %if.end278
  %s.51267 = phi i8* [ %add.ptr283, %if.end278 ], [ %s.1, %while.cond244.preheader ]
  %46 = load i8* %s.51267, align 1, !tbaa !1
  %cmp250 = icmp eq i8 %46, %45
  br i1 %cmp250, label %if.then252, label %if.end278

if.then252:                                       ; preds = %while.body247
  %call253 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.51267) #5
  %tobool254 = icmp eq i32 %call253, 0
  br i1 %tobool254, label %if.end256, label %got_it

if.end256:                                        ; preds = %if.then252
  %47 = load i8* %s.51267, align 1, !tbaa !1
  %idxprom = zext i8 %47 to i64
  %arrayidx257 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %48 = load i8* %arrayidx257, align 1, !tbaa !1
  %idx.ext259 = zext i8 %48 to i64
  %add.ptr260 = getelementptr inbounds i8* %s.51267, i64 %idx.ext259
  %cmp2621261 = icmp ult i8* %add.ptr260, %strend
  br i1 %cmp2621261, label %land.rhs264, label %if.end278.loopexit

land.rhs264:                                      ; preds = %if.end256, %while.body271
  %s.61262 = phi i8* [ %add.ptr276, %while.body271 ], [ %add.ptr260, %if.end256 ]
  %49 = load i8* %s.61262, align 1, !tbaa !1
  %cmp267 = icmp eq i8 %49, %45
  br i1 %cmp267, label %while.body271, label %if.end278.loopexit

while.body271:                                    ; preds = %land.rhs264
  %idxprom272 = zext i8 %45 to i64
  %arrayidx273 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom272
  %50 = load i8* %arrayidx273, align 1, !tbaa !1
  %idx.ext275 = zext i8 %50 to i64
  %add.ptr276 = getelementptr inbounds i8* %s.61262, i64 %idx.ext275
  %cmp262 = icmp ult i8* %add.ptr276, %strend
  br i1 %cmp262, label %land.rhs264, label %if.end278.loopexit

if.end278.loopexit:                               ; preds = %while.body271, %land.rhs264, %if.end256
  %s.6.lcssa = phi i8* [ %add.ptr260, %if.end256 ], [ %s.61262, %land.rhs264 ], [ %add.ptr276, %while.body271 ]
  %.pre1279 = load i8* %s.6.lcssa, align 1, !tbaa !1
  br label %if.end278

if.end278:                                        ; preds = %if.end278.loopexit, %while.body247
  %51 = phi i8 [ %46, %while.body247 ], [ %.pre1279, %if.end278.loopexit ]
  %s.7 = phi i8* [ %s.51267, %while.body247 ], [ %s.6.lcssa, %if.end278.loopexit ]
  %idxprom279 = zext i8 %51 to i64
  %arrayidx280 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom279
  %52 = load i8* %arrayidx280, align 1, !tbaa !1
  %idx.ext282 = zext i8 %52 to i64
  %add.ptr283 = getelementptr inbounds i8* %s.7, i64 %idx.ext282
  %cmp245 = icmp ult i8* %add.ptr283, %strend
  br i1 %cmp245, label %while.body247, label %phooey

while.body289:                                    ; preds = %while.cond286.preheader, %if.end313
  %s.81271 = phi i8* [ %incdec.ptr314, %if.end313 ], [ %s.1, %while.cond286.preheader ]
  %53 = load i8* %s.81271, align 1, !tbaa !1
  %cmp292 = icmp eq i8 %53, %45
  br i1 %cmp292, label %if.then294, label %if.end313

if.then294:                                       ; preds = %while.body289
  %call295 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.81271) #5
  %tobool296 = icmp eq i32 %call295, 0
  br i1 %tobool296, label %while.cond300, label %got_it

while.cond300:                                    ; preds = %if.then294, %land.rhs303
  %s.8.pn = phi i8* [ %s.9, %land.rhs303 ], [ %s.81271, %if.then294 ]
  %s.9 = getelementptr inbounds i8* %s.8.pn, i64 1
  %cmp301 = icmp ult i8* %s.9, %strend
  br i1 %cmp301, label %land.rhs303, label %if.end313

land.rhs303:                                      ; preds = %while.cond300
  %54 = load i8* %s.9, align 1, !tbaa !1
  %cmp306 = icmp eq i8 %54, %45
  br i1 %cmp306, label %while.cond300, label %if.end313

if.end313:                                        ; preds = %land.rhs303, %while.cond300, %while.body289
  %s.10 = phi i8* [ %s.81271, %while.body289 ], [ %s.9, %while.cond300 ], [ %s.9, %land.rhs303 ]
  %incdec.ptr314 = getelementptr inbounds i8* %s.10, i64 1
  %cmp287 = icmp ult i8* %incdec.ptr314, %strend
  br i1 %cmp287, label %while.body289, label %phooey

if.else317:                                       ; preds = %land.lhs.true200
  br i1 %tobool193, label %lor.lhs.false324, label %if.then367

lor.lhs.false324:                                 ; preds = %lor.lhs.false194, %if.else317
  %utf8_substr328 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 0, i32 3
  %55 = load %struct.sv** %utf8_substr328, align 8, !tbaa !3
  %cmp329 = icmp eq %struct.sv* %55, null
  br i1 %cmp329, label %lor.lhs.false331, label %if.then355

lor.lhs.false331:                                 ; preds = %lor.lhs.false324
  %substr335 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 2
  %56 = load %struct.sv** %substr335, align 8, !tbaa !3
  %cmp336 = icmp eq %struct.sv* %56, null
  br i1 %cmp336, label %lor.lhs.false338, label %land.lhs.true345

lor.lhs.false338:                                 ; preds = %lor.lhs.false331
  %utf8_substr342 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 3
  %57 = load %struct.sv** %utf8_substr342, align 8, !tbaa !3
  %cmp343 = icmp eq %struct.sv* %57, null
  br i1 %cmp343, label %if.else672, label %land.lhs.true345

land.lhs.true345:                                 ; preds = %lor.lhs.false338, %lor.lhs.false331
  %max_offset = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 1
  %58 = load i32* %max_offset, align 4, !tbaa !0
  %conv349 = sext i32 %58 to i64
  %sub.ptr.rhs.cast351 = ptrtoint i8* %s.1 to i64
  %sub.ptr.sub352 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast351
  %cmp353 = icmp slt i64 %conv349, %sub.ptr.sub352
  br i1 %cmp353, label %if.then355, label %if.else672

if.then355:                                       ; preds = %lor.lhs.false324, %land.lhs.true345
  br i1 %tobool193, label %lor.lhs.false361, label %if.then367

lor.lhs.false361:                                 ; preds = %if.then355
  %utf8_substr365 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 0, i32 3
  %59 = load %struct.sv** %utf8_substr365, align 8, !tbaa !3
  %tobool366 = icmp eq %struct.sv* %59, null
  br i1 %tobool366, label %if.else406, label %if.then367

if.then367:                                       ; preds = %if.else317, %lor.lhs.false361, %if.then355
  br i1 %7, label %cond.true370, label %cond.false376

cond.true370:                                     ; preds = %if.then367
  %utf8_substr374 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 0, i32 3
  %60 = load %struct.sv** %utf8_substr374, align 8, !tbaa !3
  %tobool375 = icmp eq %struct.sv* %60, null
  br i1 %tobool375, label %cond.true385, label %if.end388

cond.false376:                                    ; preds = %if.then367
  br i1 %tobool193, label %cond.false386, label %if.end388

cond.true385:                                     ; preds = %cond.true370
  call fastcc void @S_to_utf8_substr(%struct.regexp* %prog) #5
  br label %if.end388

cond.false386:                                    ; preds = %cond.false376
  call fastcc void @S_to_byte_substr(%struct.regexp* %prog) #5
  br label %if.end388

if.end388:                                        ; preds = %cond.true370, %cond.false376, %cond.true385, %cond.false386
  %61 = load %struct.reg_substr_data** %substrs189, align 8, !tbaa !3
  %utf8_substr395 = getelementptr inbounds %struct.reg_substr_data* %61, i64 0, i32 0, i64 0, i32 3
  %substr400 = getelementptr inbounds %struct.reg_substr_data* %61, i64 0, i32 0, i64 0, i32 2
  %cond402.in = select i1 %7, %struct.sv** %utf8_substr395, %struct.sv** %substr400
  %min_offset = getelementptr inbounds %struct.reg_substr_data* %61, i64 0, i32 0, i64 0, i32 0
  %62 = load i32* %min_offset, align 4, !tbaa !0
  br label %if.end450

if.else406:                                       ; preds = %lor.lhs.false361
  br i1 %7, label %cond.true409, label %cond.false415

cond.true409:                                     ; preds = %if.else406
  %utf8_substr413 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 3
  %63 = load %struct.sv** %utf8_substr413, align 8, !tbaa !3
  %tobool414 = icmp eq %struct.sv* %63, null
  br i1 %tobool414, label %cond.true424, label %if.end427

cond.false415:                                    ; preds = %if.else406
  %substr419 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 2
  %64 = load %struct.sv** %substr419, align 8, !tbaa !3
  %tobool420 = icmp eq %struct.sv* %64, null
  br i1 %tobool420, label %cond.false425, label %if.end427

cond.true424:                                     ; preds = %cond.true409
  call fastcc void @S_to_utf8_substr(%struct.regexp* %prog) #5
  br label %if.end427

cond.false425:                                    ; preds = %cond.false415
  call fastcc void @S_to_byte_substr(%struct.regexp* %prog) #5
  br label %if.end427

if.end427:                                        ; preds = %cond.true409, %cond.false415, %cond.true424, %cond.false425
  %65 = load %struct.reg_substr_data** %substrs189, align 8, !tbaa !3
  %utf8_substr434 = getelementptr inbounds %struct.reg_substr_data* %65, i64 0, i32 0, i64 1, i32 3
  %substr439 = getelementptr inbounds %struct.reg_substr_data* %65, i64 0, i32 0, i64 1, i32 2
  %cond441.in = select i1 %7, %struct.sv** %utf8_substr434, %struct.sv** %substr439
  %max_offset445 = getelementptr inbounds %struct.reg_substr_data* %65, i64 0, i32 0, i64 1, i32 1
  %66 = load i32* %max_offset445, align 4, !tbaa !0
  %min_offset449 = getelementptr inbounds %struct.reg_substr_data* %65, i64 0, i32 0, i64 1, i32 0
  %67 = load i32* %min_offset449, align 4, !tbaa !0
  br label %if.end450

if.end450:                                        ; preds = %if.end427, %if.end388
  %back_min.0 = phi i32 [ %62, %if.end388 ], [ %67, %if.end427 ]
  %back_max.0 = phi i32 [ %62, %if.end388 ], [ %66, %if.end427 ]
  %must.0.in = phi %struct.sv** [ %cond402.in, %if.end388 ], [ %cond441.in, %if.end427 ]
  %must.0 = load %struct.sv** %must.0.in, align 8
  %cmp451 = icmp eq %struct.sv* %must.0, @PL_sv_undef
  br i1 %cmp451, label %phooey, label %if.end454

if.end454:                                        ; preds = %if.end450
  %68 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool456 = icmp eq i8 %68, 0
  br i1 %tobool456, label %cond.false476, label %cond.true457

cond.true457:                                     ; preds = %if.end454
  br i1 %7, label %cond.true460, label %cond.false462

cond.true460:                                     ; preds = %cond.true457
  %call461 = call i64 @Perl_sv_len_utf8(%struct.sv* %must.0) #6
  br label %cond.end464

cond.false462:                                    ; preds = %cond.true457
  %sv_any463 = getelementptr inbounds %struct.sv* %must.0, i64 0, i32 0
  %69 = load i8** %sv_any463, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %69, i64 8
  %70 = bitcast i8* %xpv_cur to i64*
  %71 = load i64* %70, align 8, !tbaa !4
  br label %cond.end464

cond.end464:                                      ; preds = %cond.false462, %cond.true460
  %cond465 = phi i64 [ %call461, %cond.true460 ], [ %71, %cond.false462 ]
  %sv_flags466 = getelementptr inbounds %struct.sv* %must.0, i64 0, i32 2
  %72 = load i32* %sv_flags466, align 4, !tbaa !0
  %and467 = lshr i32 %72, 30
  %and467.lobit = and i32 %and467, 1
  %conv4701211 = zext i32 %and467.lobit to i64
  %conv4721212 = zext i32 %back_min.0 to i64
  %sub471 = add i64 %cond465, %conv4721212
  %add = sub i64 %sub471, %conv4701211
  %conv473 = trunc i64 %add to i32
  %sub474 = sub nsw i32 0, %conv473
  %call475 = call fastcc i8* @S_reghop3(i8* %strend, i32 %sub474, i8* %strbeg) #5
  br label %cond.end498

cond.false476:                                    ; preds = %if.end454
  br i1 %7, label %cond.true479, label %cond.false481

cond.true479:                                     ; preds = %cond.false476
  %call480 = call i64 @Perl_sv_len_utf8(%struct.sv* %must.0) #6
  br label %cond.end484

cond.false481:                                    ; preds = %cond.false476
  %sv_any482 = getelementptr inbounds %struct.sv* %must.0, i64 0, i32 0
  %73 = load i8** %sv_any482, align 8, !tbaa !3
  %xpv_cur483 = getelementptr inbounds i8* %73, i64 8
  %74 = bitcast i8* %xpv_cur483 to i64*
  %75 = load i64* %74, align 8, !tbaa !4
  br label %cond.end484

cond.end484:                                      ; preds = %cond.false481, %cond.true479
  %cond485 = phi i64 [ %call480, %cond.true479 ], [ %75, %cond.false481 ]
  %sv_flags486 = getelementptr inbounds %struct.sv* %must.0, i64 0, i32 2
  %76 = load i32* %sv_flags486, align 4, !tbaa !0
  %and487 = lshr i32 %76, 30
  %and487.lobit = and i32 %and487, 1
  %conv4901209 = zext i32 %and487.lobit to i64
  %sub491 = sub i64 %cond485, %conv4901209
  %conv4921210 = zext i32 %back_min.0 to i64
  %add493 = add i64 %sub491, %conv4921210
  %sub495 = sub i64 0, %add493
  %sext = shl i64 %sub495, 32
  %idx.ext496 = ashr exact i64 %sext, 32
  %add.ptr497 = getelementptr inbounds i8* %strend, i64 %idx.ext496
  br label %cond.end498

cond.end498:                                      ; preds = %cond.end484, %cond.end464
  %cond499 = phi i8* [ %call475, %cond.end464 ], [ %add.ptr497, %cond.end484 ]
  %77 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp500 = icmp ugt i8* %s.1, %77
  br i1 %cmp500, label %if.then502, label %if.else511

if.then502:                                       ; preds = %cond.end498
  %78 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool504 = icmp eq i8 %78, 0
  br i1 %tobool504, label %cond.false507, label %cond.true505

cond.true505:                                     ; preds = %if.then502
  %call.i = call fastcc i8* @S_reghop3(i8* %s.1, i32 -1, i8* %77) #6
  br label %if.end513

cond.false507:                                    ; preds = %if.then502
  %add.ptr508 = getelementptr inbounds i8* %s.1, i64 -1
  br label %if.end513

if.else511:                                       ; preds = %cond.end498
  %add.ptr512 = getelementptr inbounds i8* %s.1, i64 -1
  br label %if.end513

if.end513:                                        ; preds = %cond.true505, %cond.false507, %if.else511
  %last1.0 = phi i8* [ %add.ptr512, %if.else511 ], [ %call.i, %cond.true505 ], [ %add.ptr508, %cond.false507 ]
  store i32 -1, i32* %scream_pos, align 4, !tbaa !0
  %cmp5261258 = icmp ugt i8* %s.1, %cond499
  br i1 %cmp5261258, label %phooey, label %land.rhs528.lr.ph

land.rhs528.lr.ph:                                ; preds = %if.end513
  %and529 = and i32 %flags, 4
  %tobool530 = icmp ne i32 %and529, 0
  %idx.ext537 = sext i32 %back_min.0 to i64
  %sub.ptr.rhs.cast542 = ptrtoint i8* %strbeg to i64
  %sv_any572 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %sub582 = sub nsw i32 0, %back_max.0
  %idx.ext586 = sext i32 %sub582 to i64
  %sub596 = sub nsw i32 0, %back_min.0
  %idx.ext600 = sext i32 %sub596 to i64
  %cmp.i1222 = icmp sgt i32 %sub582, -1
  %cmp.i1219 = icmp sgt i32 %sub596, -1
  br label %land.rhs528

while.cond525.backedge:                           ; preds = %while.cond645.preheader, %if.end652, %while.cond660.preheader, %while.cond660
  %s.11.be = phi i8* [ %s.14, %while.cond660.preheader ], [ %incdec.ptr668, %while.cond660 ], [ %s.14, %while.cond645.preheader ], [ %add.ptr657, %if.end652 ]
  %cmp526 = icmp ugt i8* %s.11.be, %cond499
  br i1 %cmp526, label %phooey, label %land.rhs528

land.rhs528:                                      ; preds = %while.cond525.backedge, %land.rhs528.lr.ph
  %s.111260 = phi i8* [ %s.1, %land.rhs528.lr.ph ], [ %s.11.be, %while.cond525.backedge ]
  %last1.11259 = phi i8* [ %last1.0, %land.rhs528.lr.ph ], [ %last1.2, %while.cond525.backedge ]
  %79 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool533 = icmp eq i8 %79, 0
  br i1 %tobool530, label %cond.true531, label %cond.false546

cond.true531:                                     ; preds = %land.rhs528
  br i1 %tobool533, label %cond.false536, label %cond.true534

cond.true534:                                     ; preds = %cond.true531
  %call535 = call fastcc i8* @S_reghop3(i8* %s.111260, i32 %back_min.0, i8* %strend) #5
  br label %cond.end539

cond.false536:                                    ; preds = %cond.true531
  %add.ptr538 = getelementptr inbounds i8* %s.111260, i64 %idx.ext537
  br label %cond.end539

cond.end539:                                      ; preds = %cond.false536, %cond.true534
  %cond540 = phi i8* [ %call535, %cond.true534 ], [ %add.ptr538, %cond.false536 ]
  %sub.ptr.lhs.cast541 = ptrtoint i8* %cond540 to i64
  %sub.ptr.sub543 = sub i64 %sub.ptr.lhs.cast541, %sub.ptr.rhs.cast542
  %conv544 = trunc i64 %sub.ptr.sub543 to i32
  %call545 = call i8* @Perl_screaminstr(%struct.sv* %sv, %struct.sv* %must.0, i32 %conv544, i32 0, i32* %scream_pos, i32 0) #6
  br label %cond.end559

cond.false546:                                    ; preds = %land.rhs528
  br i1 %tobool533, label %cond.false551, label %cond.true549

cond.true549:                                     ; preds = %cond.false546
  %call550 = call fastcc i8* @S_reghop3(i8* %s.111260, i32 %back_min.0, i8* %strend) #5
  br label %cond.end554

cond.false551:                                    ; preds = %cond.false546
  %add.ptr553 = getelementptr inbounds i8* %s.111260, i64 %idx.ext537
  br label %cond.end554

cond.end554:                                      ; preds = %cond.false551, %cond.true549
  %cond555 = phi i8* [ %call550, %cond.true549 ], [ %add.ptr553, %cond.false551 ]
  %80 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool556 = icmp ne i32 %80, 0
  %cond557 = zext i1 %tobool556 to i32
  %call558 = call i8* @Perl_fbm_instr(i8* %cond555, i8* %strend, %struct.sv* %must.0, i32 %cond557) #6
  br label %cond.end559

cond.end559:                                      ; preds = %cond.end554, %cond.end539
  %s.12 = phi i8* [ %call545, %cond.end539 ], [ %call558, %cond.end554 ]
  %tobool561 = icmp eq i8* %s.12, null
  br i1 %tobool561, label %phooey, label %while.body564

while.body564:                                    ; preds = %cond.end559
  br i1 %tobool530, label %land.lhs.true567, label %if.end578

land.lhs.true567:                                 ; preds = %while.body564
  %81 = load i32* %reganch, align 4, !tbaa !0
  %and569 = and i32 %81, 262144
  %tobool570 = icmp eq i32 %and569, 0
  br i1 %tobool570, label %if.end578, label %if.then571

if.then571:                                       ; preds = %land.lhs.true567
  %82 = load i8** %sv_any572, align 8, !tbaa !3
  %xpv_pv573 = bitcast i8* %82 to i8**
  %83 = load i8** %xpv_pv573, align 8, !tbaa !3
  %sub.ptr.lhs.cast574 = ptrtoint i8* %s.12 to i64
  %sub.ptr.rhs.cast575 = ptrtoint i8* %83 to i64
  %sub.ptr.sub576 = sub i64 %sub.ptr.lhs.cast574, %sub.ptr.rhs.cast575
  %add.ptr577 = getelementptr inbounds i8* %strbeg, i64 %sub.ptr.sub576
  br label %if.end578

if.end578:                                        ; preds = %land.lhs.true567, %if.then571, %while.body564
  %s.13 = phi i8* [ %add.ptr577, %if.then571 ], [ %s.12, %land.lhs.true567 ], [ %s.12, %while.body564 ]
  %84 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool580 = icmp eq i8 %84, 0
  br i1 %tobool580, label %cond.false584, label %cond.true581

cond.true581:                                     ; preds = %if.end578
  %85 = load i8** @PL_regeol, align 8, !tbaa !3
  %86 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i = select i1 %cmp.i1222, i8* %85, i8* %86
  %call.i1218 = call fastcc i8* @S_reghop3(i8* %s.13, i32 %sub582, i8* %cond.i) #6
  br label %cond.end588

cond.false584:                                    ; preds = %if.end578
  %add.ptr587 = getelementptr inbounds i8* %s.13, i64 %idx.ext586
  br label %cond.end588

cond.end588:                                      ; preds = %cond.false584, %cond.true581
  %cond589 = phi i8* [ %call.i1218, %cond.true581 ], [ %add.ptr587, %cond.false584 ]
  %cmp590 = icmp ugt i8* %cond589, %last1.11259
  br i1 %cmp590, label %if.then592, label %if.else615

if.then592:                                       ; preds = %cond.end588
  br i1 %tobool580, label %cond.false609, label %cond.true606

cond.true606:                                     ; preds = %if.then592
  %87 = load i8** @PL_regeol, align 8, !tbaa !3
  %88 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i1220 = select i1 %cmp.i1219, i8* %87, i8* %88
  %call.i1221 = call fastcc i8* @S_reghop3(i8* %s.13, i32 %sub596, i8* %cond.i1220) #6
  %cond.i1223 = select i1 %cmp.i1222, i8* %87, i8* %88
  %call.i1224 = call fastcc i8* @S_reghop3(i8* %s.13, i32 %sub582, i8* %cond.i1223) #6
  br label %if.end642

cond.false609:                                    ; preds = %if.then592
  %add.ptr601 = getelementptr inbounds i8* %s.13, i64 %idx.ext600
  %add.ptr612 = getelementptr inbounds i8* %s.13, i64 %idx.ext586
  br label %if.end642

if.else615:                                       ; preds = %cond.end588
  %89 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp616 = icmp ult i8* %last1.11259, %89
  br i1 %cmp616, label %cond.false627, label %cond.true618

cond.true618:                                     ; preds = %if.else615
  br i1 %tobool580, label %cond.end629.thread, label %cond.true621

cond.true621:                                     ; preds = %cond.true618
  %90 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp147.i1226 = icmp ult i8* %last1.11259, %90
  br i1 %cmp147.i1226, label %cond.end629.loopexit, label %cond.end629

cond.end629.thread:                               ; preds = %cond.true618
  %add.ptr624 = getelementptr inbounds i8* %last1.11259, i64 1
  br label %cond.false636

cond.false627:                                    ; preds = %if.else615
  %add.ptr628 = getelementptr inbounds i8* %last1.11259, i64 1
  br label %cond.end629

cond.end629.loopexit:                             ; preds = %cond.true621
  %91 = load i8* %last1.11259, align 1, !tbaa !1
  %idxprom.i = zext i8 %91 to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i
  %92 = load i8* %arrayidx.i, align 1, !tbaa !1
  %idx.ext.i = zext i8 %92 to i64
  %add.ptr.i = getelementptr inbounds i8* %last1.11259, i64 %idx.ext.i
  br label %cond.end629

cond.end629:                                      ; preds = %cond.end629.loopexit, %cond.true621, %cond.false627
  %cond630 = phi i8* [ %add.ptr628, %cond.false627 ], [ %last1.11259, %cond.true621 ], [ %add.ptr.i, %cond.end629.loopexit ]
  %tobool632 = icmp eq i8 %84, 0
  br i1 %tobool632, label %cond.false636, label %cond.true633

cond.true633:                                     ; preds = %cond.end629
  %93 = load i8** @PL_regeol, align 8, !tbaa !3
  %cond.i1228 = select i1 %cmp.i1219, i8* %93, i8* %89
  %call.i1229 = call fastcc i8* @S_reghop3(i8* %s.13, i32 %sub596, i8* %cond.i1228) #6
  br label %if.end642

cond.false636:                                    ; preds = %cond.end629.thread, %cond.end629
  %cond6301283 = phi i8* [ %add.ptr624, %cond.end629.thread ], [ %cond630, %cond.end629 ]
  %add.ptr639 = getelementptr inbounds i8* %s.13, i64 %idx.ext600
  br label %if.end642

if.end642:                                        ; preds = %cond.true633, %cond.false636, %cond.true606, %cond.false609
  %last1.2 = phi i8* [ %add.ptr601, %cond.false609 ], [ %call.i1221, %cond.true606 ], [ %call.i1229, %cond.true633 ], [ %add.ptr639, %cond.false636 ]
  %s.14 = phi i8* [ %add.ptr612, %cond.false609 ], [ %call.i1224, %cond.true606 ], [ %cond630, %cond.true633 ], [ %cond6301283, %cond.false636 ]
  %cmp6461254 = icmp ugt i8* %s.14, %last1.2
  br i1 %7, label %while.cond645.preheader, label %while.cond660.preheader

while.cond645.preheader:                          ; preds = %if.end642
  br i1 %cmp6461254, label %while.cond525.backedge, label %while.body648

while.cond660.preheader:                          ; preds = %if.end642
  br i1 %cmp6461254, label %while.cond525.backedge, label %while.body663

while.body648:                                    ; preds = %while.cond645.preheader, %if.end652
  %s.151255 = phi i8* [ %add.ptr657, %if.end652 ], [ %s.14, %while.cond645.preheader ]
  %call649 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.151255) #5
  %tobool650 = icmp eq i32 %call649, 0
  br i1 %tobool650, label %if.end652, label %got_it

if.end652:                                        ; preds = %while.body648
  %94 = load i8* %s.151255, align 1, !tbaa !1
  %idxprom653 = zext i8 %94 to i64
  %arrayidx654 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom653
  %95 = load i8* %arrayidx654, align 1, !tbaa !1
  %idx.ext656 = zext i8 %95 to i64
  %add.ptr657 = getelementptr inbounds i8* %s.151255, i64 %idx.ext656
  %cmp646 = icmp ugt i8* %add.ptr657, %last1.2
  br i1 %cmp646, label %while.cond525.backedge, label %while.body648

while.cond660:                                    ; preds = %while.body663
  %cmp661 = icmp ugt i8* %incdec.ptr668, %last1.2
  br i1 %cmp661, label %while.cond525.backedge, label %while.body663

while.body663:                                    ; preds = %while.cond660.preheader, %while.cond660
  %s.161250 = phi i8* [ %incdec.ptr668, %while.cond660 ], [ %s.14, %while.cond660.preheader ]
  %call664 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.161250) #5
  %tobool665 = icmp eq i32 %call664, 0
  %incdec.ptr668 = getelementptr inbounds i8* %s.161250, i64 1
  br i1 %tobool665, label %while.cond660, label %got_it

if.else672:                                       ; preds = %lor.lhs.false338, %land.lhs.true345
  %regstclass = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 2
  %96 = load %struct.regnode** %regstclass, align 8, !tbaa !3
  %tobool673 = icmp eq %struct.regnode* %96, null
  br i1 %tobool673, label %if.else707, label %if.then674

if.then674:                                       ; preds = %if.else672
  %tobool675 = icmp eq i32 %12, 0
  br i1 %tobool675, label %if.end702, label %if.then676

if.then676:                                       ; preds = %if.then674
  %type = getelementptr inbounds %struct.regnode* %96, i64 0, i32 1
  %97 = load i8* %type, align 1, !tbaa !1
  %idxprom679 = zext i8 %97 to i64
  %arrayidx680 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom679
  %98 = load i8* %arrayidx680, align 1, !tbaa !1
  %cmp682 = icmp eq i8 %98, 33
  %cmp685 = icmp eq i8 %97, 16
  %or.cond1215 = or i1 %cmp682, %cmp685
  br i1 %or.cond1215, label %if.end702, label %if.then687

if.then687:                                       ; preds = %if.then676
  %99 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool689 = icmp eq i8 %99, 0
  %sub692 = sub i32 1, %12
  br i1 %tobool689, label %cond.false694, label %cond.true690

cond.true690:                                     ; preds = %if.then687
  %cmp.i1230 = icmp sgt i32 %sub692, -1
  %100 = load i8** @PL_regeol, align 8, !tbaa !3
  %101 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i1231 = select i1 %cmp.i1230, i8* %100, i8* %101
  %call.i1232 = call fastcc i8* @S_reghop3(i8* %strend, i32 %sub692, i8* %cond.i1231) #6
  br label %if.end702

cond.false694:                                    ; preds = %if.then687
  %idx.ext697 = sext i32 %sub692 to i64
  %add.ptr698 = getelementptr inbounds i8* %strend, i64 %idx.ext697
  br label %if.end702

if.end702:                                        ; preds = %cond.true690, %cond.false694, %if.then676, %if.then674
  %strend.addr.0 = phi i8* [ %strend, %if.then676 ], [ %strend, %if.then674 ], [ %call.i1232, %cond.true690 ], [ %add.ptr698, %cond.false694 ]
  %call703 = call fastcc i8* @S_find_byclass(%struct.regexp* %prog, %struct.regnode* %96, i8* %s.1, i8* %strend.addr.0, i32 0) #5
  %tobool704 = icmp eq i8* %call703, null
  br i1 %tobool704, label %phooey, label %got_it

if.else707:                                       ; preds = %if.else672
  br i1 %cmp336, label %lor.lhs.false714, label %if.then721

lor.lhs.false714:                                 ; preds = %if.else707
  %utf8_substr718 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 3
  %102 = load %struct.sv** %utf8_substr718, align 8, !tbaa !3
  %cmp719 = icmp eq %struct.sv* %102, null
  br i1 %cmp719, label %if.end847, label %if.then721

if.then721:                                       ; preds = %lor.lhs.false714, %if.else707
  br i1 %7, label %cond.true725, label %cond.false731

cond.true725:                                     ; preds = %if.then721
  %utf8_substr729 = getelementptr inbounds %struct.reg_substr_data* %38, i64 0, i32 0, i64 1, i32 3
  %103 = load %struct.sv** %utf8_substr729, align 8, !tbaa !3
  %tobool730 = icmp eq %struct.sv* %103, null
  br i1 %tobool730, label %cond.true740, label %if.end743

cond.false731:                                    ; preds = %if.then721
  br i1 %cmp336, label %cond.false741, label %if.end743

cond.true740:                                     ; preds = %cond.true725
  call fastcc void @S_to_utf8_substr(%struct.regexp* %prog) #5
  br label %if.end743

cond.false741:                                    ; preds = %cond.false731
  call fastcc void @S_to_byte_substr(%struct.regexp* %prog) #5
  br label %if.end743

if.end743:                                        ; preds = %cond.true725, %cond.false731, %cond.true740, %cond.false741
  %104 = load %struct.reg_substr_data** %substrs189, align 8, !tbaa !3
  %utf8_substr750 = getelementptr inbounds %struct.reg_substr_data* %104, i64 0, i32 0, i64 1, i32 3
  %substr755 = getelementptr inbounds %struct.reg_substr_data* %104, i64 0, i32 0, i64 1, i32 2
  %cond757.in = select i1 %7, %struct.sv** %utf8_substr750, %struct.sv** %substr755
  %cond757 = load %struct.sv** %cond757.in, align 8
  %and758 = and i32 %flags, 4
  %tobool759 = icmp eq i32 %and758, 0
  br i1 %tobool759, label %if.else781, label %if.then760

if.then760:                                       ; preds = %if.end743
  %sub.ptr.lhs.cast761 = ptrtoint i8* %s.1 to i64
  %sub.ptr.rhs.cast762 = ptrtoint i8* %strbeg to i64
  %sub.ptr.sub763 = sub i64 %sub.ptr.lhs.cast761, %sub.ptr.rhs.cast762
  %conv764 = trunc i64 %sub.ptr.sub763 to i32
  %call765 = call i8* @Perl_screaminstr(%struct.sv* %sv, %struct.sv* %cond757, i32 %conv764, i32 0, i32* %scream_pos, i32 1) #6
  %tobool766 = icmp eq i8* %call765, null
  br i1 %tobool766, label %if.then767, label %if.else768

if.then767:                                       ; preds = %if.then760
  %105 = load i8** %scream_olds, align 8, !tbaa !3
  br label %if.end832

if.else768:                                       ; preds = %if.then760
  %106 = load i32* %reganch, align 4, !tbaa !0
  %and770 = and i32 %106, 262144
  %tobool771 = icmp eq i32 %and770, 0
  br i1 %tobool771, label %if.end836, label %if.then772

if.then772:                                       ; preds = %if.else768
  %sv_any773 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %107 = load i8** %sv_any773, align 8, !tbaa !3
  %xpv_pv774 = bitcast i8* %107 to i8**
  %108 = load i8** %xpv_pv774, align 8, !tbaa !3
  %sub.ptr.rhs.cast776 = ptrtoint i8* %108 to i64
  %sub.ptr.sub777 = sub i64 %sub.ptr.lhs.cast761, %sub.ptr.rhs.cast776
  %add.ptr778 = getelementptr inbounds i8* %strbeg, i64 %sub.ptr.sub777
  br label %if.end832

if.else781:                                       ; preds = %if.end743
  %sv_flags782 = getelementptr inbounds %struct.sv* %cond757, i64 0, i32 2
  %109 = load i32* %sv_flags782, align 4, !tbaa !0
  %and783 = and i32 %109, 262144
  %cmp784 = icmp eq i32 %and783, 0
  br i1 %cmp784, label %cond.false791, label %cond.true786

cond.true786:                                     ; preds = %if.else781
  %sv_any787 = getelementptr inbounds %struct.sv* %cond757, i64 0, i32 0
  %110 = load i8** %sv_any787, align 8, !tbaa !3
  %xpv_cur788 = getelementptr inbounds i8* %110, i64 8
  %111 = bitcast i8* %xpv_cur788 to i64*
  %112 = load i64* %111, align 8, !tbaa !4
  store i64 %112, i64* %len, align 8, !tbaa !4
  %xpv_pv790 = bitcast i8* %110 to i8**
  %113 = load i8** %xpv_pv790, align 8, !tbaa !3
  br label %cond.end793

cond.false791:                                    ; preds = %if.else781
  %call792 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond757, i64* %len, i32 2) #6
  %.pre1278 = load i32* %sv_flags782, align 4, !tbaa !0
  br label %cond.end793

cond.end793:                                      ; preds = %cond.false791, %cond.true786
  %114 = phi i32 [ %109, %cond.true786 ], [ %.pre1278, %cond.false791 ]
  %cond794 = phi i8* [ %113, %cond.true786 ], [ %call792, %cond.false791 ]
  %and796 = and i32 %114, 1073741824
  %tobool797 = icmp eq i32 %and796, 0
  %.pre1280 = load i64* %len, align 8, !tbaa !4
  br i1 %tobool797, label %find_last, label %if.then798

if.then798:                                       ; preds = %cond.end793
  %add.ptr799.sum = sub i64 1, %.pre1280
  %add.ptr800 = getelementptr inbounds i8* %strend, i64 %add.ptr799.sum
  %sub801 = add i64 %.pre1280, -1
  %call802 = call i32 @memcmp(i8* %add.ptr800, i8* %cond794, i64 %sub801) #6
  %tobool803 = icmp eq i32 %call802, 0
  br i1 %tobool803, label %if.end832, label %if.else808

if.else808:                                       ; preds = %if.then798
  %115 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool809 = icmp eq i32 %115, 0
  br i1 %tobool809, label %if.then810, label %find_last

if.then810:                                       ; preds = %if.else808
  %idx.neg811 = sub i64 0, %.pre1280
  %add.ptr812 = getelementptr inbounds i8* %strend, i64 %idx.neg811
  %call813 = call i32 @memcmp(i8* %add.ptr812, i8* %cond794, i64 %.pre1280) #6
  %tobool814 = icmp eq i32 %call813, 0
  br i1 %tobool814, label %if.end832, label %phooey

find_last:                                        ; preds = %cond.end793, %if.else808
  %tobool825 = icmp eq i64 %.pre1280, 0
  br i1 %tobool825, label %if.end832, label %if.then826

if.then826:                                       ; preds = %find_last
  %add.ptr827 = getelementptr inbounds i8* %cond794, i64 %.pre1280
  %call828 = call i8* @Perl_rninstr(i8* %s.1, i8* %strend, i8* %cond794, i8* %add.ptr827) #6
  br label %if.end832

if.end832:                                        ; preds = %if.then810, %if.then798, %find_last, %if.then826, %if.then767, %if.then772
  %last722.0 = phi i8* [ %call765, %if.then772 ], [ %105, %if.then767 ], [ %call828, %if.then826 ], [ %strend, %find_last ], [ %add.ptr800, %if.then798 ], [ %add.ptr812, %if.then810 ]
  %s.17 = phi i8* [ %add.ptr778, %if.then772 ], [ %s.1, %if.then767 ], [ %s.1, %if.then826 ], [ %s.1, %find_last ], [ %s.1, %if.then798 ], [ %s.1, %if.then810 ]
  %cmp833 = icmp eq i8* %last722.0, null
  br i1 %cmp833, label %phooey, label %if.end836

if.end836:                                        ; preds = %if.end832, %if.else768
  %s.171241 = phi i8* [ %s.1, %if.else768 ], [ %s.17, %if.end832 ]
  %last722.01240 = phi i8* [ %call765, %if.else768 ], [ %last722.0, %if.end832 ]
  %sub.ptr.rhs.cast838 = ptrtoint i8* %last722.01240 to i64
  %sub.ptr.sub839 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast838
  %116 = load %struct.reg_substr_data** %substrs189, align 8, !tbaa !3
  %min_offset843 = getelementptr inbounds %struct.reg_substr_data* %116, i64 0, i32 0, i64 1, i32 0
  %117 = load i32* %min_offset843, align 4, !tbaa !0
  %conv8441208 = zext i32 %117 to i64
  %add845 = add nsw i64 %sub.ptr.sub839, %conv8441208
  %conv846 = trunc i64 %add845 to i32
  br label %if.end847

if.end847:                                        ; preds = %lor.lhs.false714, %if.end836
  %dontbother.1 = phi i32 [ %conv846, %if.end836 ], [ 0, %lor.lhs.false714 ]
  %s.18 = phi i8* [ %s.171241, %if.end836 ], [ %s.1, %lor.lhs.false714 ]
  %tobool848 = icmp ne i32 %12, 0
  %cmp850 = icmp slt i32 %dontbother.1, %12
  %or.cond1216 = and i1 %tobool848, %cmp850
  %sub853 = add nsw i32 %12, -1
  %dontbother.2 = select i1 %or.cond1216, i32 %sub853, i32 %dontbother.1
  %idx.ext855 = sext i32 %dontbother.2 to i64
  %idx.neg856 = sub i64 0, %idx.ext855
  %add.ptr857 = getelementptr inbounds i8* %strend, i64 %idx.neg856
  br i1 %7, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %if.end847
  %call8601242 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.18) #5
  %tobool8611243 = icmp eq i32 %call8601242, 0
  br i1 %tobool8611243, label %if.end863, label %got_it

if.end863:                                        ; preds = %for.cond.preheader, %if.end867
  %s.191244 = phi i8* [ %add.ptr872, %if.end867 ], [ %s.18, %for.cond.preheader ]
  %cmp864 = icmp ult i8* %s.191244, %add.ptr857
  br i1 %cmp864, label %if.end867, label %phooey

if.end867:                                        ; preds = %if.end863
  %118 = load i8* %s.191244, align 1, !tbaa !1
  %idxprom868 = zext i8 %118 to i64
  %arrayidx869 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom868
  %119 = load i8* %arrayidx869, align 1, !tbaa !1
  %idx.ext871 = zext i8 %119 to i64
  %add.ptr872 = getelementptr inbounds i8* %s.191244, i64 %idx.ext871
  %call860 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %add.ptr872) #5
  %tobool861 = icmp eq i32 %call860, 0
  br i1 %tobool861, label %if.end863, label %got_it

do.body:                                          ; preds = %if.end847, %do.cond
  %s.20 = phi i8* [ %incdec.ptr878, %do.cond ], [ %s.18, %if.end847 ]
  %call874 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.20) #5
  %tobool875 = icmp eq i32 %call874, 0
  br i1 %tobool875, label %do.cond, label %got_it

do.cond:                                          ; preds = %do.body
  %incdec.ptr878 = getelementptr inbounds i8* %s.20, i64 1
  %cmp879 = icmp ult i8* %s.20, %add.ptr857
  br i1 %cmp879, label %do.body, label %phooey

got_it:                                           ; preds = %if.then169, %if.then294, %if.then252, %while.body648, %while.body663, %do.body, %for.cond.preheader, %if.end867, %land.lhs.true91, %while.body, %if.then182, %if.end702
  %120 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and885 = and i32 %120, 1
  %tobool886 = icmp eq i32 %and885, 0
  %121 = load i32* %reganch, align 4, !tbaa !0
  %and892 = and i32 %121, -524289
  %or889 = or i32 %121, 524288
  %storemerge1207 = select i1 %tobool886, i32 %and892, i32 %or889
  store i32 %storemerge1207, i32* %reganch, align 4, !tbaa !0
  %122 = load i32* @PL_reg_eval_set, align 4, !tbaa !0
  %tobool895 = icmp eq i32 %122, 0
  br i1 %tobool895, label %if.end907, label %if.then896

if.then896:                                       ; preds = %got_it
  %123 = load %struct.gv** @PL_replgv, align 8, !tbaa !3
  %sv_any897 = getelementptr inbounds %struct.gv* %123, i64 0, i32 0
  %124 = load %struct.xpvgv** %sv_any897, align 8, !tbaa !3
  %xgv_gp898 = getelementptr inbounds %struct.xpvgv* %124, i64 0, i32 7
  %125 = load %struct.gp** %xgv_gp898, align 8, !tbaa !3
  %gp_sv899 = getelementptr inbounds %struct.gp* %125, i64 0, i32 0
  %126 = load %struct.sv** %gp_sv899, align 8, !tbaa !3
  %cmp900 = icmp eq %struct.sv* %3, %126
  br i1 %cmp900, label %if.end906, label %if.then902

if.then902:                                       ; preds = %if.then896
  call void @Perl_sv_setsv_flags(%struct.sv* %3, %struct.sv* %126, i32 2) #6
  br label %if.end906

if.end906:                                        ; preds = %if.then896, %if.then902
  call void @restore_pos(i8* null) #5
  br label %if.end907

if.end907:                                        ; preds = %got_it, %if.end906
  %and908 = and i32 %flags, 16
  %tobool909 = icmp eq i32 %and908, 0
  br i1 %tobool909, label %if.then910, label %return

if.then910:                                       ; preds = %if.end907
  %127 = load i32* %reganch, align 4, !tbaa !0
  %and912 = and i32 %127, 262144
  %tobool913 = icmp eq i32 %and912, 0
  br i1 %tobool913, label %if.end917, label %if.then914

if.then914:                                       ; preds = %if.then910
  %subbeg = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 6
  %128 = load i8** %subbeg, align 8, !tbaa !3
  call void @Perl_safesysfree(i8* %128) #6
  %129 = load i32* %reganch, align 4, !tbaa !0
  %and916 = and i32 %129, -262145
  store i32 %and916, i32* %reganch, align 4, !tbaa !0
  br label %if.end917

if.end917:                                        ; preds = %if.then910, %if.then914
  %and918 = and i32 %flags, 1
  %tobool919 = icmp eq i32 %and918, 0
  br i1 %tobool919, label %if.else933, label %if.then920

if.then920:                                       ; preds = %if.end917
  %130 = load i8** @PL_regeol, align 8, !tbaa !3
  %sub.ptr.lhs.cast921 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast925 = ptrtoint i8* %strbeg to i64
  %add927 = sub i64 %sub.ptr.lhs.cast921, %sub.ptr.rhs.cast925
  %conv928 = trunc i64 %add927 to i32
  %call929 = call i8* @Perl_savepvn(i8* %strbeg, i32 %conv928) #6
  %subbeg930 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 6
  store i8* %call929, i8** %subbeg930, align 8, !tbaa !3
  %sublen = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 8
  store i32 %conv928, i32* %sublen, align 4, !tbaa !0
  %131 = load i32* %reganch, align 4, !tbaa !0
  %or932 = or i32 %131, 262144
  store i32 %or932, i32* %reganch, align 4, !tbaa !0
  br label %return

if.else933:                                       ; preds = %if.end917
  %subbeg934 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 6
  store i8* %strbeg, i8** %subbeg934, align 8, !tbaa !3
  %132 = load i8** @PL_regeol, align 8, !tbaa !3
  %sub.ptr.lhs.cast935 = ptrtoint i8* %132 to i64
  %sub.ptr.rhs.cast936 = ptrtoint i8* %strbeg to i64
  %sub.ptr.sub937 = sub i64 %sub.ptr.lhs.cast935, %sub.ptr.rhs.cast936
  %conv938 = trunc i64 %sub.ptr.sub937 to i32
  %sublen939 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 8
  store i32 %conv938, i32* %sublen939, align 4, !tbaa !0
  br label %return

phooey:                                           ; preds = %if.else156, %while.cond.backedge, %while.cond286.preheader, %if.end313, %while.cond244.preheader, %if.end278, %if.end513, %cond.end559, %while.cond525.backedge, %do.cond, %if.end863, %if.end832, %if.then810, %if.end702, %if.end450, %if.then182, %if.then148, %after_try, %lor.lhs.false97, %if.then77, %if.then55, %if.end
  %133 = load i32* @PL_reg_eval_set, align 4, !tbaa !0
  %tobool942 = icmp eq i32 %133, 0
  br i1 %tobool942, label %return, label %if.then943

if.then943:                                       ; preds = %phooey
  call void @restore_pos(i8* null) #5
  br label %return

return:                                           ; preds = %if.then943, %phooey, %if.else933, %if.then920, %if.end907, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end907 ], [ 1, %if.then920 ], [ 1, %if.else933 ], [ 0, %phooey ], [ 0, %if.then943 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_re_intuit_start(%struct.regexp* %prog, %struct.sv* %sv, i8* %strpos, i8* %strend, i32 %flags, %struct.re_scream_pos_data_s* %data) #0 {
entry:
  %p = alloca i32, align 4
  %tobool = icmp ne %struct.sv* %sv, null
  br i1 %tobool, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 536870912
  %phitmp = icmp ne i32 %and, 0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i1 [ %phitmp, %cond.true ], [ false, %entry ]
  %reganch = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 15
  %1 = load i32* %reganch, align 4, !tbaa !0
  %or = or i32 %1, 268435456
  %and5 = and i32 %1, -268435457
  %storemerge1622 = select i1 %cond, i32 %or, i32 %and5
  %storemerge = zext i1 %cond to i8
  store i32 %storemerge1622, i32* %reganch, align 4, !tbaa !0
  store i8 %storemerge, i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %2 = load i32* %reganch, align 4, !tbaa !0
  %and9 = and i32 %2, 65536
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or11 = or i32 %3, 8
  store i32 %or11, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %minlen = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 10
  %4 = load i32* %minlen, align 4, !tbaa !0
  %conv = sext i32 %4 to i64
  %sub.ptr.lhs.cast = ptrtoint i8* %strend to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %strpos to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %conv, %sub.ptr.sub
  br i1 %cmp, label %return, label %if.end14

if.end14:                                         ; preds = %if.end
  br i1 %tobool, label %land.lhs.true, label %cond.end21

land.lhs.true:                                    ; preds = %if.end14
  %sv_flags16 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %5 = load i32* %sv_flags16, align 4, !tbaa !0
  %and17 = and i32 %5, 262144
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %cond.end21, label %cond.true19

cond.true19:                                      ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  %idx.neg = sub i64 0, %8
  %add.ptr = getelementptr inbounds i8* %strend, i64 %idx.neg
  br label %cond.end21

cond.end21:                                       ; preds = %if.end14, %land.lhs.true, %cond.true19
  %cond22 = phi i8* [ %add.ptr, %cond.true19 ], [ %strpos, %land.lhs.true ], [ %strpos, %if.end14 ]
  store i8* %strend, i8** @PL_regeol, align 8, !tbaa !3
  %substrs = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %9 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br i1 %cond, label %if.then24, label %if.else

if.then24:                                        ; preds = %cond.end21
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %9, i64 0, i32 0, i64 2, i32 3
  %10 = load %struct.sv** %utf8_substr, align 8, !tbaa !3
  %tobool26 = icmp eq %struct.sv* %10, null
  br i1 %tobool26, label %land.lhs.true27, label %if.end33

land.lhs.true27:                                  ; preds = %if.then24
  %substr = getelementptr inbounds %struct.reg_substr_data* %9, i64 0, i32 0, i64 2, i32 2
  %11 = load %struct.sv** %substr, align 8, !tbaa !3
  %tobool31 = icmp eq %struct.sv* %11, null
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %land.lhs.true27
  call fastcc void @S_to_utf8_substr(%struct.regexp* %prog) #5
  %.pre = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true27, %if.then24, %if.then32
  %12 = phi %struct.reg_substr_data* [ %9, %land.lhs.true27 ], [ %9, %if.then24 ], [ %.pre, %if.then32 ]
  %utf8_substr37 = getelementptr inbounds %struct.reg_substr_data* %12, i64 0, i32 0, i64 2, i32 3
  br label %if.end55

if.else:                                          ; preds = %cond.end21
  %substr41 = getelementptr inbounds %struct.reg_substr_data* %9, i64 0, i32 0, i64 2, i32 2
  %13 = load %struct.sv** %substr41, align 8, !tbaa !3
  %tobool42 = icmp eq %struct.sv* %13, null
  br i1 %tobool42, label %land.lhs.true43, label %if.end50

land.lhs.true43:                                  ; preds = %if.else
  %utf8_substr47 = getelementptr inbounds %struct.reg_substr_data* %9, i64 0, i32 0, i64 2, i32 3
  %14 = load %struct.sv** %utf8_substr47, align 8, !tbaa !3
  %tobool48 = icmp eq %struct.sv* %14, null
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %land.lhs.true43
  call fastcc void @S_to_byte_substr(%struct.regexp* %prog) #5
  %.pre1702 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true43, %if.else, %if.then49
  %15 = phi %struct.reg_substr_data* [ %9, %land.lhs.true43 ], [ %9, %if.else ], [ %.pre1702, %if.then49 ]
  %substr54 = getelementptr inbounds %struct.reg_substr_data* %15, i64 0, i32 0, i64 2, i32 2
  br label %if.end55

if.end55:                                         ; preds = %if.end50, %if.end33
  %16 = phi %struct.reg_substr_data* [ %12, %if.end33 ], [ %15, %if.end50 ]
  %check.0.in = phi %struct.sv** [ %utf8_substr37, %if.end33 ], [ %substr54, %if.end50 ]
  %check.0 = load %struct.sv** %check.0.in, align 8
  %cmp56 = icmp eq %struct.sv* %check.0, @PL_sv_undef
  br i1 %cmp56, label %return, label %if.end59

if.end59:                                         ; preds = %if.end55
  %17 = load i32* %reganch, align 4, !tbaa !0
  %and61 = and i32 %17, 15
  %tobool62 = icmp eq i32 %and61, 0
  br i1 %tobool62, label %if.else254, label %if.then63

if.then63:                                        ; preds = %if.end59
  %and65 = and i32 %17, 12
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %lor.rhs, label %if.then73

lor.rhs:                                          ; preds = %if.then63
  %and68 = and i32 %17, 1
  %tobool69 = icmp eq i32 %and68, 0
  br i1 %tobool69, label %if.end190, label %lor.end

lor.end:                                          ; preds = %lor.rhs
  %18 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool70 = icmp ne i32 %18, 0
  %lnot.ext = zext i1 %tobool70 to i32
  br i1 %tobool70, label %if.end190, label %if.then73

if.then73:                                        ; preds = %if.then63, %lor.end
  %lnot.ext1675 = phi i32 [ %lnot.ext, %lor.end ], [ 0, %if.then63 ]
  %and75 = and i32 %17, 40
  %tobool76.not = icmp ne i32 %and75, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool76.not, %tobool.not
  br i1 %brmerge, label %if.end87, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %if.then73
  %sv_flags80 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %19 = load i32* %sv_flags80, align 4, !tbaa !0
  %and81 = and i32 %19, 524288
  %tobool82 = icmp ne i32 %and81, 0
  %cmp84 = icmp eq i8* %cond22, %strpos
  %or.cond = or i1 %tobool82, %cmp84
  br i1 %or.cond, label %if.end87, label %return

if.end87:                                         ; preds = %land.lhs.true79, %if.then73
  %min_offset = getelementptr inbounds %struct.reg_substr_data* %16, i64 0, i32 0, i64 2, i32 0
  %20 = load i32* %min_offset, align 4, !tbaa !0
  %max_offset = getelementptr inbounds %struct.reg_substr_data* %16, i64 0, i32 0, i64 2, i32 1
  %21 = load i32* %max_offset, align 4, !tbaa !0
  %cmp94 = icmp eq i32 %20, %21
  br i1 %cmp94, label %land.lhs.true96, label %if.end190

land.lhs.true96:                                  ; preds = %if.end87
  %and98 = and i32 %17, 2048
  %tobool99 = icmp eq i32 %and98, 0
  br i1 %tobool99, label %if.then100, label %if.end190

if.then100:                                       ; preds = %land.lhs.true96
  %22 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool102 = icmp eq i8 %22, 0
  br i1 %tobool102, label %cond.false108, label %cond.true103

cond.true103:                                     ; preds = %if.then100
  %call = call fastcc i8* @S_reghop3(i8* %strpos, i32 %20, i8* %strend) #5
  br label %cond.end114

cond.false108:                                    ; preds = %if.then100
  %idx.ext = sext i32 %20 to i64
  %add.ptr113 = getelementptr inbounds i8* %strpos, i64 %idx.ext
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false108, %cond.true103
  %cond115 = phi i8* [ %call, %cond.true103 ], [ %add.ptr113, %cond.false108 ]
  %sv_flags116 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 2
  %23 = load i32* %sv_flags116, align 4, !tbaa !0
  %and117 = and i32 %23, 1073741824
  %tobool118 = icmp eq i32 %and117, 0
  %sv_any120 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 0
  %24 = load i8** %sv_any120, align 8, !tbaa !3
  br i1 %tobool118, label %if.else167, label %if.then119

if.then119:                                       ; preds = %cond.end114
  %xpv_cur121 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur121 to i64*
  %26 = load i64* %25, align 8, !tbaa !4
  %conv122 = trunc i64 %26 to i32
  %sub.ptr.rhs.cast124 = ptrtoint i8* %cond115 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast124
  %sext1620 = shl i64 %26, 32
  %conv126 = ashr exact i64 %sext1620, 32
  %cmp127 = icmp sgt i64 %sub.ptr.sub125, %conv126
  br i1 %cmp127, label %fail_finish, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then119
  %sext1621 = add i64 %sext1620, -4294967296
  %conv132 = ashr exact i64 %sext1621, 32
  %cmp133 = icmp slt i64 %sub.ptr.sub125, %conv132
  br i1 %cmp133, label %fail_finish, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false
  %cmp140 = icmp eq i64 %sub.ptr.sub125, %conv126
  br i1 %cmp140, label %land.lhs.true142, label %if.end148

land.lhs.true142:                                 ; preds = %lor.lhs.false135
  %arrayidx143 = getelementptr inbounds i8* %strend, i64 -1
  %27 = load i8* %arrayidx143, align 1, !tbaa !1
  %cmp145 = icmp eq i8 %27, 10
  br i1 %cmp145, label %if.end148, label %fail_finish

if.end148:                                        ; preds = %land.lhs.true142, %lor.lhs.false135
  %dec = add nsw i32 %conv122, -1
  %tobool149 = icmp eq i32 %dec, 0
  br i1 %tobool149, label %success_at_start, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %if.end148
  %xpv_pv = bitcast i8* %24 to i8**
  %28 = load i8** %xpv_pv, align 8, !tbaa !3
  %29 = load i8* %28, align 1, !tbaa !1
  %30 = load i8* %cond115, align 1, !tbaa !1
  %cmp154 = icmp eq i8 %29, %30
  br i1 %cmp154, label %lor.lhs.false156, label %fail_finish

lor.lhs.false156:                                 ; preds = %land.lhs.true150
  %cmp157 = icmp sgt i32 %dec, 1
  br i1 %cmp157, label %land.lhs.true159, label %success_at_start

land.lhs.true159:                                 ; preds = %lor.lhs.false156
  %conv162 = sext i32 %dec to i64
  %call163 = call i32 @memcmp(i8* %28, i8* %cond115, i64 %conv162) #6
  %tobool164 = icmp eq i32 %call163, 0
  br i1 %tobool164, label %success_at_start, label %fail_finish

if.else167:                                       ; preds = %cond.end114
  %xpv_pv169 = bitcast i8* %24 to i8**
  %31 = load i8** %xpv_pv169, align 8, !tbaa !3
  %32 = load i8* %31, align 1, !tbaa !1
  %33 = load i8* %cond115, align 1, !tbaa !1
  %cmp172 = icmp eq i8 %32, %33
  br i1 %cmp172, label %lor.lhs.false174, label %fail_finish

lor.lhs.false174:                                 ; preds = %if.else167
  %xpv_cur176 = getelementptr inbounds i8* %24, i64 8
  %34 = bitcast i8* %xpv_cur176 to i64*
  %35 = load i64* %34, align 8, !tbaa !4
  %conv177 = trunc i64 %35 to i32
  %cmp178 = icmp sgt i32 %conv177, 1
  br i1 %cmp178, label %land.lhs.true180, label %success_at_start

land.lhs.true180:                                 ; preds = %lor.lhs.false174
  %sext1619 = shl i64 %35, 32
  %conv183 = ashr exact i64 %sext1619, 32
  %call184 = call i32 @memcmp(i8* %31, i8* %cond115, i64 %conv183) #6
  %tobool185 = icmp eq i32 %call184, 0
  br i1 %tobool185, label %success_at_start, label %fail_finish

if.end190:                                        ; preds = %land.lhs.true96, %if.end87, %lor.end, %lor.rhs
  %lnot.ext1672 = phi i32 [ 1, %lor.rhs ], [ %lnot.ext, %lor.end ], [ %lnot.ext1675, %if.end87 ], [ %lnot.ext1675, %land.lhs.true96 ]
  %36 = phi i1 [ true, %lor.rhs ], [ true, %lor.end ], [ false, %if.end87 ], [ false, %land.lhs.true96 ]
  %min_offset194 = getelementptr inbounds %struct.reg_substr_data* %16, i64 0, i32 0, i64 2, i32 0
  %37 = load i32* %min_offset194, align 4, !tbaa !0
  %38 = load i32* %minlen, align 4, !tbaa !0
  %sub196 = sub nsw i32 %38, %37
  %conv1971614 = zext i32 %sub196 to i64
  br i1 %cond, label %cond.true199, label %cond.false201

cond.true199:                                     ; preds = %if.end190
  %call200 = call i64 @Perl_sv_len_utf8(%struct.sv* %check.0) #6
  br label %cond.end204

cond.false201:                                    ; preds = %if.end190
  %sv_any202 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 0
  %39 = load i8** %sv_any202, align 8, !tbaa !3
  %xpv_cur203 = getelementptr inbounds i8* %39, i64 8
  %40 = bitcast i8* %xpv_cur203 to i64*
  %41 = load i64* %40, align 8, !tbaa !4
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false201, %cond.true199
  %cond205 = phi i64 [ %call200, %cond.true199 ], [ %41, %cond.false201 ]
  %sub206 = sub i64 %conv1971614, %cond205
  %sv_flags207 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 2
  %42 = load i32* %sv_flags207, align 4, !tbaa !0
  %and208 = lshr i32 %42, 30
  %and208.lobit = and i32 %and208, 1
  %conv2111613 = zext i32 %and208.lobit to i64
  %add = add i64 %sub206, %conv2111613
  %conv212 = trunc i64 %add to i32
  br i1 %36, label %restart.preheader, label %if.then214

if.then214:                                       ; preds = %cond.end204
  %43 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %max_offset218 = getelementptr inbounds %struct.reg_substr_data* %43, i64 0, i32 0, i64 2, i32 1
  %44 = load i32* %max_offset218, align 4, !tbaa !0
  %conv2191616 = zext i32 %44 to i64
  br i1 %cond, label %cond.true221, label %cond.false223

cond.true221:                                     ; preds = %if.then214
  %call222 = call i64 @Perl_sv_len_utf8(%struct.sv* %check.0) #6
  %.pre1700 = load i32* %sv_flags207, align 4, !tbaa !0
  br label %cond.end226

cond.false223:                                    ; preds = %if.then214
  %sv_any224 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 0
  %45 = load i8** %sv_any224, align 8, !tbaa !3
  %xpv_cur225 = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur225 to i64*
  %47 = load i64* %46, align 8, !tbaa !4
  br label %cond.end226

cond.end226:                                      ; preds = %cond.false223, %cond.true221
  %48 = phi i32 [ %.pre1700, %cond.true221 ], [ %42, %cond.false223 ]
  %cond227 = phi i64 [ %call222, %cond.true221 ], [ %47, %cond.false223 ]
  %and230 = lshr i32 %48, 30
  %and230.lobit = and i32 %and230, 1
  %conv2331615 = zext i32 %and230.lobit to i64
  %49 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool237 = icmp eq i8 %49, 0
  br i1 %tobool237, label %cond.end244, label %cond.true238

cond.true238:                                     ; preds = %cond.end226
  %call239 = call i64 @Perl_utf8_distance(i8* %strend, i8* %strpos) #6
  br label %cond.end244

cond.end244:                                      ; preds = %cond.end226, %cond.true238
  %cond245 = phi i64 [ %call239, %cond.true238 ], [ %sub.ptr.sub, %cond.end226 ]
  %sum = add i64 %cond227, %conv2191616
  %sub2341623 = sub i64 %conv2331615, %sum
  %sub247 = add i64 %sub2341623, %cond245
  %conv248 = trunc i64 %sub247 to i32
  %cmp249 = icmp slt i32 %conv212, %conv248
  %conv248.conv212 = select i1 %cmp249, i32 %conv248, i32 %conv212
  br label %restart.preheader

if.else254:                                       ; preds = %if.end59
  %min_offset258 = getelementptr inbounds %struct.reg_substr_data* %16, i64 0, i32 0, i64 2, i32 0
  %50 = load i32* %min_offset258, align 4, !tbaa !0
  %51 = load i32* %minlen, align 4, !tbaa !0
  %sub260 = sub nsw i32 %51, %50
  %conv2611609 = zext i32 %sub260 to i64
  br i1 %cond, label %cond.true263, label %cond.false265

cond.true263:                                     ; preds = %if.else254
  %call264 = call i64 @Perl_sv_len_utf8(%struct.sv* %check.0) #6
  br label %cond.end268

cond.false265:                                    ; preds = %if.else254
  %sv_any266 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 0
  %52 = load i8** %sv_any266, align 8, !tbaa !3
  %xpv_cur267 = getelementptr inbounds i8* %52, i64 8
  %53 = bitcast i8* %xpv_cur267 to i64*
  %54 = load i64* %53, align 8, !tbaa !4
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false265, %cond.true263
  %cond269 = phi i64 [ %call264, %cond.true263 ], [ %54, %cond.false265 ]
  %sub270 = sub i64 %conv2611609, %cond269
  %sv_flags271 = getelementptr inbounds %struct.sv* %check.0, i64 0, i32 2
  %55 = load i32* %sv_flags271, align 4, !tbaa !0
  %and272 = lshr i32 %55, 30
  %and272.lobit = and i32 %and272, 1
  %conv2751608 = zext i32 %and272.lobit to i64
  %add276 = add i64 %sub270, %conv2751608
  %conv277 = trunc i64 %add276 to i32
  br label %restart.preheader

restart.preheader:                                ; preds = %if.then844, %while.body.i, %cond.end204, %cond.end268, %if.end1210, %cond.false613, %cond.end244, %cond.true611
  %other_last.0.ph = phi i8* [ %call598, %cond.true611 ], [ null, %cond.end244 ], [ %add.ptr606, %cond.false613 ], [ %other_last.8, %if.end1210 ], [ null, %cond.end268 ], [ null, %cond.end204 ], [ %call598, %while.body.i ], [ %incdec.ptr, %if.then844 ]
  %ml_anch.0.ph = phi i32 [ %ml_anch.1, %cond.true611 ], [ %lnot.ext1672, %cond.end244 ], [ %ml_anch.1, %cond.false613 ], [ %ml_anch.7, %if.end1210 ], [ 0, %cond.end268 ], [ %lnot.ext1672, %cond.end204 ], [ %ml_anch.1, %while.body.i ], [ %ml_anch.3.ph, %if.then844 ]
  %check.1.ph = phi %struct.sv* [ %check.2, %cond.true611 ], [ %check.0, %cond.end244 ], [ %check.2, %cond.false613 ], [ %check.8, %if.end1210 ], [ %check.0, %cond.end268 ], [ %check.0, %cond.end204 ], [ %check.2, %while.body.i ], [ %check.4.ph, %if.then844 ]
  %s.0.ph = phi i8* [ %cond432, %cond.true611 ], [ %strpos, %cond.end244 ], [ %add.ptr614, %cond.false613 ], [ %cond1202, %if.end1210 ], [ %strpos, %cond.end268 ], [ %strpos, %cond.end204 ], [ %add.ptr.i, %while.body.i ], [ %incdec.ptr, %if.then844 ]
  %end_shift.0.ph = phi i32 [ %end_shift.1, %cond.true611 ], [ %conv248.conv212, %cond.end244 ], [ %end_shift.1, %cond.false613 ], [ %end_shift.7, %if.end1210 ], [ %conv277, %cond.end268 ], [ %conv212, %cond.end204 ], [ %end_shift.1, %while.body.i ], [ %end_shift.3.ph, %if.then844 ]
  %start_shift.0.ph = phi i32 [ %start_shift.1, %cond.true611 ], [ %37, %cond.end244 ], [ %start_shift.1, %cond.false613 ], [ %start_shift.7, %if.end1210 ], [ %50, %cond.end268 ], [ %37, %cond.end204 ], [ %start_shift.1, %while.body.i ], [ %start_shift.3.ph, %if.then844 ]
  %strpos.addr.0.ph = phi i8* [ %strpos.addr.1, %cond.true611 ], [ %strpos, %cond.end244 ], [ %strpos.addr.1, %cond.false613 ], [ %strpos.addr.7, %if.end1210 ], [ %strpos, %cond.end268 ], [ %strpos, %cond.end204 ], [ %strpos.addr.1, %while.body.i ], [ %incdec.ptr, %if.then844 ]
  %and279 = and i32 %flags, 4
  %tobool280 = icmp eq i32 %and279, 0
  %idx.ext354 = sext i32 %start_shift.0.ph to i64
  %sub361 = sub nsw i32 0, %end_shift.0.ph
  %idx.ext365 = sext i32 %sub361 to i64
  %add.ptr366 = getelementptr inbounds i8* %strend, i64 %idx.ext365
  %idx.ext342 = sext i32 %end_shift.0.ph to i64
  %idx.neg343 = sub i64 0, %idx.ext342
  %add.ptr344 = getelementptr inbounds i8* %strend, i64 %idx.neg343
  %sub657 = sub nsw i32 0, %start_shift.0.ph
  %idx.ext661 = sext i32 %sub657 to i64
  %tobool282 = icmp ne %struct.re_scream_pos_data_s* %data, null
  %scream_pos = getelementptr inbounds %struct.re_scream_pos_data_s* %data, i64 0, i32 1
  %sv_any287 = getelementptr inbounds %struct.sv* %check.1.ph, i64 0, i32 0
  %conv3101611 = zext i32 %start_shift.0.ph to i64
  %sub.ptr.rhs.cast312 = ptrtoint i8* %cond22 to i64
  %scream_olds = getelementptr inbounds %struct.re_scream_pos_data_s* %data, i64 0, i32 0
  %sv_any325 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %sv_flags306 = getelementptr inbounds %struct.sv* %check.1.ph, i64 0, i32 2
  br label %restart

restart:                                          ; preds = %cond.true785, %cond.false787, %while.body.i1668, %restart.preheader
  %other_last.0 = phi i8* [ %other_last.0.ph, %restart.preheader ], [ %last650.01723, %while.body.i1668 ], [ %last650.01723, %cond.false787 ], [ %last650.01723, %cond.true785 ]
  %s.0 = phi i8* [ %s.0.ph, %restart.preheader ], [ %add.ptr.i1664, %while.body.i1668 ], [ %add.ptr788, %cond.false787 ], [ %cond66417151718, %cond.true785 ]
  br i1 %tobool280, label %if.else335, label %if.then281

if.then281:                                       ; preds = %restart
  store i32 -1, i32* %p, align 4, !tbaa !0
  br i1 %tobool282, label %cond.true283, label %cond.end285

cond.true283:                                     ; preds = %if.then281
  %56 = load i32** %scream_pos, align 8, !tbaa !3
  br label %cond.end285

cond.end285:                                      ; preds = %if.then281, %cond.true283
  %cond286 = phi i32* [ %56, %cond.true283 ], [ %p, %if.then281 ]
  %57 = load i8** %sv_any287, align 8, !tbaa !3
  %58 = getelementptr inbounds i8* %57, i64 62
  %59 = load i8* %58, align 1, !tbaa !1
  %idxprom = zext i8 %59 to i64
  %60 = load i32** @PL_screamfirst, align 8, !tbaa !3
  %arrayidx288 = getelementptr inbounds i32* %60, i64 %idxprom
  %61 = load i32* %arrayidx288, align 4, !tbaa !0
  %cmp289 = icmp sgt i32 %61, -1
  br i1 %cmp289, label %if.then309, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %cond.end285
  %cmp295 = icmp eq i8 %59, 10
  br i1 %cmp295, label %land.lhs.true297, label %fail_finish

land.lhs.true297:                                 ; preds = %lor.lhs.false291
  %xbm_previous = getelementptr inbounds i8* %57, i64 60
  %62 = bitcast i8* %xbm_previous to i16*
  %63 = load i16* %62, align 2, !tbaa !5
  %conv299 = zext i16 %63 to i64
  %xpv_cur301 = getelementptr inbounds i8* %57, i64 8
  %64 = bitcast i8* %xpv_cur301 to i64*
  %65 = load i64* %64, align 8, !tbaa !4
  %sub302 = add i64 %65, -1
  %cmp303 = icmp eq i64 %conv299, %sub302
  br i1 %cmp303, label %land.lhs.true305, label %fail_finish

land.lhs.true305:                                 ; preds = %land.lhs.true297
  %66 = load i32* %sv_flags306, align 4, !tbaa !0
  %and307 = and i32 %66, 1073741824
  %tobool308 = icmp eq i32 %and307, 0
  br i1 %tobool308, label %fail_finish, label %if.then309

if.then309:                                       ; preds = %land.lhs.true305, %cond.end285
  %sub.ptr.lhs.cast311 = ptrtoint i8* %s.0 to i64
  %sub.ptr.sub313 = sub i64 %sub.ptr.lhs.cast311, %sub.ptr.rhs.cast312
  %add314 = add nsw i64 %sub.ptr.sub313, %conv3101611
  %conv315 = trunc i64 %add314 to i32
  %call316 = call i8* @Perl_screaminstr(%struct.sv* %sv, %struct.sv* %check.1.ph, i32 %conv315, i32 %end_shift.0.ph, i32* %cond286, i32 0) #6
  %tobool319 = icmp eq i8* %call316, null
  br i1 %tobool319, label %if.end331, label %land.lhs.true320

land.lhs.true320:                                 ; preds = %if.then309
  %67 = load i32* %reganch, align 4, !tbaa !0
  %and322 = and i32 %67, 262144
  %tobool323 = icmp eq i32 %and322, 0
  br i1 %tobool323, label %if.end331, label %if.then324

if.then324:                                       ; preds = %land.lhs.true320
  %68 = load i8** %sv_any325, align 8, !tbaa !3
  %xpv_pv326 = bitcast i8* %68 to i8**
  %69 = load i8** %xpv_pv326, align 8, !tbaa !3
  %sub.ptr.lhs.cast327 = ptrtoint i8* %call316 to i64
  %sub.ptr.rhs.cast328 = ptrtoint i8* %69 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %add.ptr330 = getelementptr inbounds i8* %cond22, i64 %sub.ptr.sub329
  br label %if.end331

if.end331:                                        ; preds = %land.lhs.true320, %if.then309, %if.then324
  %s.1 = phi i8* [ %add.ptr330, %if.then324 ], [ %call316, %land.lhs.true320 ], [ null, %if.then309 ]
  br i1 %tobool282, label %if.then333, label %if.end373

if.then333:                                       ; preds = %if.end331
  %70 = load i8*** %scream_olds, align 8, !tbaa !3
  store i8* %s.1, i8** %70, align 8, !tbaa !3
  br label %if.end373

if.else335:                                       ; preds = %restart
  %71 = load i32* %reganch, align 4, !tbaa !0
  %and337 = and i32 %71, 2048
  %tobool338 = icmp eq i32 %and337, 0
  br i1 %tobool338, label %if.else348, label %if.then339

if.then339:                                       ; preds = %if.else335
  %add.ptr341 = getelementptr inbounds i8* %s.0, i64 %idx.ext354
  %72 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool345 = icmp ne i32 %72, 0
  %cond346 = zext i1 %tobool345 to i32
  %call347 = call i8* @Perl_fbm_instr(i8* %add.ptr341, i8* %add.ptr344, %struct.sv* %check.1.ph, i32 %cond346) #6
  br label %if.end373

if.else348:                                       ; preds = %if.else335
  %73 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool350 = icmp eq i8 %73, 0
  br i1 %tobool350, label %cond.false363, label %cond.true360

cond.true360:                                     ; preds = %if.else348
  %call352 = call fastcc i8* @S_reghop3(i8* %s.0, i32 %start_shift.0.ph, i8* %strend) #5
  %call362 = call fastcc i8* @S_reghop3(i8* %strend, i32 %sub361, i8* %cond22) #5
  br label %cond.end367

cond.false363:                                    ; preds = %if.else348
  %add.ptr355 = getelementptr inbounds i8* %s.0, i64 %idx.ext354
  br label %cond.end367

cond.end367:                                      ; preds = %cond.false363, %cond.true360
  %cond3571704 = phi i8* [ %call352, %cond.true360 ], [ %add.ptr355, %cond.false363 ]
  %cond368 = phi i8* [ %call362, %cond.true360 ], [ %add.ptr366, %cond.false363 ]
  %74 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool369 = icmp ne i32 %74, 0
  %cond370 = zext i1 %tobool369 to i32
  %call371 = call i8* @Perl_fbm_instr(i8* %cond3571704, i8* %cond368, %struct.sv* %check.1.ph, i32 %cond370) #6
  br label %if.end373

if.end373:                                        ; preds = %if.then339, %cond.end367, %if.end331, %if.then333
  %s.2 = phi i8* [ %s.1, %if.then333 ], [ %s.1, %if.end331 ], [ %call347, %if.then339 ], [ %call371, %cond.end367 ]
  %tobool374 = icmp eq i8* %s.2, null
  br i1 %tobool374, label %fail_finish, label %if.end376

if.end376:                                        ; preds = %if.end373
  %75 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br i1 %cond, label %cond.true378, label %cond.false390

cond.true378:                                     ; preds = %if.end376
  %utf8_substr382 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 1, i32 3
  %76 = load %struct.sv** %utf8_substr382, align 8, !tbaa !3
  %tobool383 = icmp eq %struct.sv* %76, null
  br i1 %tobool383, label %if.end796, label %land.lhs.true384

land.lhs.true384:                                 ; preds = %cond.true378
  %utf8_substr388 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 0, i32 3
  %77 = load %struct.sv** %utf8_substr388, align 8, !tbaa !3
  %tobool389 = icmp eq %struct.sv* %77, null
  br i1 %tobool389, label %if.end796, label %land.lhs.true384.if.then402_crit_edge

land.lhs.true384.if.then402_crit_edge:            ; preds = %land.lhs.true384
  %substr416.pre = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 1, i32 2
  br label %if.then402

cond.false390:                                    ; preds = %if.end376
  %substr394 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 1, i32 2
  %78 = load %struct.sv** %substr394, align 8, !tbaa !3
  %tobool395 = icmp eq %struct.sv* %78, null
  br i1 %tobool395, label %if.end796, label %land.lhs.true396

land.lhs.true396:                                 ; preds = %cond.false390
  %substr400 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 0, i32 2
  %79 = load %struct.sv** %substr400, align 8, !tbaa !3
  %tobool401 = icmp eq %struct.sv* %79, null
  br i1 %tobool401, label %if.end796, label %land.lhs.true396.if.then402_crit_edge

land.lhs.true396.if.then402_crit_edge:            ; preds = %land.lhs.true396
  %utf8_substr411.pre = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 1, i32 3
  br label %if.then402

if.then402:                                       ; preds = %land.lhs.true396.if.then402_crit_edge, %land.lhs.true384.if.then402_crit_edge
  %substr416.pre-phi = phi %struct.sv** [ %substr394, %land.lhs.true396.if.then402_crit_edge ], [ %substr416.pre, %land.lhs.true384.if.then402_crit_edge ]
  %utf8_substr411.pre-phi = phi %struct.sv** [ %utf8_substr411.pre, %land.lhs.true396.if.then402_crit_edge ], [ %utf8_substr382, %land.lhs.true384.if.then402_crit_edge ]
  %tobool403 = icmp eq i8* %other_last.0, null
  %strpos.addr.0.other_last.0 = select i1 %tobool403, i8* %strpos.addr.0.ph, i8* %other_last.0
  %cond418.in = select i1 %cond, %struct.sv** %utf8_substr411.pre-phi, %struct.sv** %substr416.pre-phi
  %cond418 = load %struct.sv** %cond418.in, align 8
  %cmp419 = icmp eq %struct.sv* %check.1.ph, %cond418
  br i1 %cmp419, label %do_other_anchored, label %if.else649

do_other_anchored:                                ; preds = %if.end1220, %cond.false862, %cond.true856, %if.then402
  %80 = phi %struct.reg_substr_data* [ %75, %if.then402 ], [ %130, %cond.true856 ], [ %130, %cond.false862 ], [ %179, %if.end1220 ]
  %check_at.0 = phi i8* [ %s.2, %if.then402 ], [ %check_at.2.ph, %cond.true856 ], [ %check_at.2.ph, %cond.false862 ], [ %check_at.6, %if.end1220 ]
  %other_last.2 = phi i8* [ %strpos.addr.0.other_last.0, %if.then402 ], [ %other_last.4.ph, %cond.true856 ], [ %other_last.4.ph, %cond.false862 ], [ %other_last.8, %if.end1220 ]
  %ml_anch.1 = phi i32 [ %ml_anch.0.ph, %if.then402 ], [ %ml_anch.3.ph, %cond.true856 ], [ %ml_anch.3.ph, %cond.false862 ], [ %ml_anch.7, %if.end1220 ]
  %check.2 = phi %struct.sv* [ %check.1.ph, %if.then402 ], [ %check.4.ph, %cond.true856 ], [ %check.4.ph, %cond.false862 ], [ %check.8, %if.end1220 ]
  %s.3 = phi i8* [ %s.2, %if.then402 ], [ %s.8.ph, %cond.true856 ], [ %s.8.ph, %cond.false862 ], [ %check_at.6, %if.end1220 ]
  %end_shift.1 = phi i32 [ %end_shift.0.ph, %if.then402 ], [ %end_shift.3.ph, %cond.true856 ], [ %end_shift.3.ph, %cond.false862 ], [ %end_shift.7, %if.end1220 ]
  %start_shift.1 = phi i32 [ %start_shift.0.ph, %if.then402 ], [ %start_shift.3.ph, %cond.true856 ], [ %start_shift.3.ph, %cond.false862 ], [ %start_shift.7, %if.end1220 ]
  %strpos.addr.1 = phi i8* [ %strpos.addr.0.ph, %if.then402 ], [ %incdec.ptr, %cond.true856 ], [ %incdec.ptr, %cond.false862 ], [ %strpos.addr.7, %if.end1220 ]
  %81 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool423 = icmp eq i8 %81, 0
  %sub425 = sub nsw i32 0, %start_shift.1
  br i1 %tobool423, label %cond.false427, label %cond.true424

cond.true424:                                     ; preds = %do_other_anchored
  %call426 = call fastcc i8* @S_reghop3(i8* %s.3, i32 %sub425, i8* %cond22) #5
  br label %cond.end431

cond.false427:                                    ; preds = %do_other_anchored
  %idx.ext429 = sext i32 %sub425 to i64
  %add.ptr430 = getelementptr inbounds i8* %s.3, i64 %idx.ext429
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false427, %cond.true424
  %cond432 = phi i8* [ %call426, %cond.true424 ], [ %add.ptr430, %cond.false427 ]
  %max_offset436 = getelementptr inbounds %struct.reg_substr_data* %80, i64 0, i32 0, i64 2, i32 1
  %82 = load i32* %max_offset436, align 4, !tbaa !0
  %idx.ext437 = sext i32 %82 to i64
  %sub.ptr.lhs.cast440 = ptrtoint i8* %s.3 to i64
  %sub.ptr.rhs.cast441 = ptrtoint i8* %strpos.addr.1 to i64
  %sub.ptr.sub442 = sub i64 %sub.ptr.lhs.cast440, %sub.ptr.rhs.cast441
  %cmp448 = icmp sgt i64 %sub.ptr.sub442, %idx.ext437
  br i1 %cmp448, label %land.lhs.true450, label %if.else464

land.lhs.true450:                                 ; preds = %cond.end431
  %idx.neg438 = sub i64 0, %idx.ext437
  %add.ptr439 = getelementptr inbounds i8* %s.3, i64 %idx.neg438
  br i1 %cond, label %lor.lhs.false452, label %if.end465

lor.lhs.false452:                                 ; preds = %land.lhs.true450
  %sub457 = sub nsw i32 0, %82
  %call458 = call fastcc i8* @S_reghopmaybe3(i8* %s.3, i32 %sub457, i8* %strpos.addr.1) #5
  %tobool459 = icmp ne i8* %call458, null
  %cmp461 = icmp ugt i8* %call458, %strpos.addr.1
  %or.cond1624 = and i1 %tobool459, %cmp461
  br i1 %or.cond1624, label %if.end465, label %if.else464

if.else464:                                       ; preds = %lor.lhs.false452, %cond.end431
  br label %if.end465

if.end465:                                        ; preds = %lor.lhs.false452, %land.lhs.true450, %if.else464
  %t.0 = phi i8* [ %strpos.addr.1, %if.else464 ], [ %add.ptr439, %land.lhs.true450 ], [ %call458, %lor.lhs.false452 ]
  %min_offset472 = getelementptr inbounds %struct.reg_substr_data* %80, i64 0, i32 0, i64 0, i32 0
  %83 = load i32* %min_offset472, align 4, !tbaa !0
  br i1 %tobool423, label %cond.false493, label %cond.true489

cond.true489:                                     ; preds = %if.end465
  %call473 = call fastcc i8* @S_reghop3(i8* %t.0, i32 %83, i8* %strend) #5
  %cmp483 = icmp ult i8* %call473, %other_last.2
  %other_last.2.cond482 = select i1 %cmp483, i8* %other_last.2, i8* %call473
  %84 = load i32* %minlen, align 4, !tbaa !0
  %sub491 = sub nsw i32 0, %84
  %call492 = call fastcc i8* @S_reghop3(i8* %strend, i32 %sub491, i8* %cond22) #5
  br label %cond.end498

cond.false493:                                    ; preds = %if.end465
  %idx.ext479 = sext i32 %83 to i64
  %add.ptr480 = getelementptr inbounds i8* %t.0, i64 %idx.ext479
  %cmp4831706 = icmp ult i8* %add.ptr480, %other_last.2
  %other_last.2.cond4821707 = select i1 %cmp4831706, i8* %other_last.2, i8* %add.ptr480
  %85 = load i32* %minlen, align 4, !tbaa !0
  %sub4911708 = sub nsw i32 0, %85
  %idx.ext496 = sext i32 %sub4911708 to i64
  %add.ptr497 = getelementptr inbounds i8* %strend, i64 %idx.ext496
  br label %cond.end498

cond.end498:                                      ; preds = %cond.false493, %cond.true489
  %other_last.2.cond4821709 = phi i8* [ %other_last.2.cond482, %cond.true489 ], [ %other_last.2.cond4821707, %cond.false493 ]
  %cond499 = phi i8* [ %call492, %cond.true489 ], [ %add.ptr497, %cond.false493 ]
  %cmp500 = icmp ult i8* %cond432, %cond499
  %cond432.cond499 = select i1 %cmp500, i8* %cond432, i8* %cond499
  %utf8_substr509 = getelementptr inbounds %struct.reg_substr_data* %80, i64 0, i32 0, i64 0, i32 3
  %substr514 = getelementptr inbounds %struct.reg_substr_data* %80, i64 0, i32 0, i64 0, i32 2
  %cond516.in = select i1 %cond, %struct.sv** %utf8_substr509, %struct.sv** %substr514
  %cond516 = load %struct.sv** %cond516.in, align 8
  %cmp517 = icmp eq %struct.sv* %cond516, @PL_sv_undef
  br i1 %cmp517, label %if.then585, label %if.else520

if.else520:                                       ; preds = %cond.end498
  br i1 %tobool423, label %cond.false559, label %cond.true526

cond.true526:                                     ; preds = %if.else520
  %call531 = call fastcc i8* @S_reghop3(i8* %cond432.cond499, i32 %83, i8* %strend) #5
  %sv_any541 = getelementptr inbounds %struct.sv* %cond516, i64 0, i32 0
  %86 = load i8** %sv_any541, align 8, !tbaa !3
  %xpv_cur542 = getelementptr inbounds i8* %86, i64 8
  %87 = bitcast i8* %xpv_cur542 to i64*
  %88 = load i64* %87, align 8, !tbaa !4
  %add.ptr543 = getelementptr inbounds i8* %call531, i64 %88
  %sv_flags544 = getelementptr inbounds %struct.sv* %cond516, i64 0, i32 2
  %89 = load i32* %sv_flags544, align 4, !tbaa !0
  %and545 = lshr i32 %89, 30
  %and545.lobit = and i32 %and545, 1
  %sub548 = sub nsw i32 0, %and545.lobit
  %call549 = call fastcc i8* @S_reghop3(i8* %add.ptr543, i32 %sub548, i8* %cond22) #5
  br label %if.end583

cond.false559:                                    ; preds = %if.else520
  %idx.ext564 = sext i32 %83 to i64
  %sv_any568 = getelementptr inbounds %struct.sv* %cond516, i64 0, i32 0
  %90 = load i8** %sv_any568, align 8, !tbaa !3
  %xpv_cur569 = getelementptr inbounds i8* %90, i64 8
  %91 = bitcast i8* %xpv_cur569 to i64*
  %92 = load i64* %91, align 8, !tbaa !4
  %sv_flags571 = getelementptr inbounds %struct.sv* %cond516, i64 0, i32 2
  %93 = load i32* %sv_flags571, align 4, !tbaa !0
  %and572 = lshr i32 %93, 30
  %and572.lobit = and i32 %and572, 1
  %sub575 = sub nsw i32 0, %and572.lobit
  %idx.ext576 = sext i32 %sub575 to i64
  %add.ptr570.sum = add i64 %92, %idx.ext564
  %add.ptr565.sum = add i64 %add.ptr570.sum, %idx.ext576
  %add.ptr577 = getelementptr inbounds i8* %cond432.cond499, i64 %add.ptr565.sum
  br label %if.end583

if.end583:                                        ; preds = %cond.true526, %cond.false559
  %cond579 = phi i8* [ %call549, %cond.true526 ], [ %add.ptr577, %cond.false559 ]
  %94 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool580 = icmp ne i32 %94, 0
  %cond581 = zext i1 %tobool580 to i32
  %call582 = call i8* @Perl_fbm_instr(i8* %other_last.2.cond4821709, i8* %cond579, %struct.sv* %cond516, i32 %cond581) #6
  %tobool584 = icmp eq i8* %call582, null
  br i1 %tobool584, label %if.then585, label %if.else617

if.then585:                                       ; preds = %cond.end498, %if.end583
  br i1 %cmp500, label %if.end589, label %fail_finish

if.end589:                                        ; preds = %if.then585
  %95 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool591 = icmp eq i8 %95, 0
  %96 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %min_offset596 = getelementptr inbounds %struct.reg_substr_data* %96, i64 0, i32 0, i64 0, i32 0
  %97 = load i32* %min_offset596, align 4, !tbaa !0
  br i1 %tobool591, label %cond.false613, label %cond.true611

cond.true611:                                     ; preds = %if.end589
  %add597 = add nsw i32 %97, 1
  %call598 = call fastcc i8* @S_reghop3(i8* %cond432.cond499, i32 %add597, i8* %strend) #5
  %cmp147.i = icmp ult i8* %cond432, %strend
  br i1 %cmp147.i, label %while.body.i, label %restart.preheader

while.body.i:                                     ; preds = %cond.true611
  %98 = load i8* %cond432, align 1, !tbaa !1
  %idxprom.i = zext i8 %98 to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i
  %99 = load i8* %arrayidx.i, align 1, !tbaa !1
  %idx.ext.i = zext i8 %99 to i64
  %add.ptr.i = getelementptr inbounds i8* %cond432, i64 %idx.ext.i
  br label %restart.preheader

cond.false613:                                    ; preds = %if.end589
  %idx.ext604 = sext i32 %97 to i64
  %add.ptr605.sum = add i64 %idx.ext604, 1
  %add.ptr606 = getelementptr inbounds i8* %cond432.cond499, i64 %add.ptr605.sum
  %add.ptr614 = getelementptr inbounds i8* %cond432, i64 1
  br label %restart.preheader

if.else617:                                       ; preds = %if.end583
  %100 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool619 = icmp eq i8 %100, 0
  %101 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %min_offset624 = getelementptr inbounds %struct.reg_substr_data* %101, i64 0, i32 0, i64 0, i32 0
  %102 = load i32* %min_offset624, align 4, !tbaa !0
  %sub625 = sub nsw i32 0, %102
  br i1 %tobool619, label %cond.false641, label %cond.true639

cond.true639:                                     ; preds = %if.else617
  %call626 = call fastcc i8* @S_reghop3(i8* %call582, i32 %sub625, i8* %cond22) #5
  %cmp147.i1643 = icmp ult i8* %call582, %strend
  br i1 %cmp147.i1643, label %cond.end643.loopexit, label %cond.end643

cond.false641:                                    ; preds = %if.else617
  %idx.ext633 = sext i32 %sub625 to i64
  %add.ptr634 = getelementptr inbounds i8* %call582, i64 %idx.ext633
  %add.ptr642 = getelementptr inbounds i8* %call582, i64 1
  br label %cond.end643

cond.end643.loopexit:                             ; preds = %cond.true639
  %103 = load i8* %call582, align 1, !tbaa !1
  %idxprom.i1647 = zext i8 %103 to i64
  %arrayidx.i1648 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i1647
  %104 = load i8* %arrayidx.i1648, align 1, !tbaa !1
  %idx.ext.i1649 = zext i8 %104 to i64
  %add.ptr.i1650 = getelementptr inbounds i8* %call582, i64 %idx.ext.i1649
  br label %cond.end643

cond.end643:                                      ; preds = %cond.end643.loopexit, %cond.true639, %cond.false641
  %cond6361713 = phi i8* [ %add.ptr634, %cond.false641 ], [ %call626, %cond.true639 ], [ %call626, %cond.end643.loopexit ]
  %cond644 = phi i8* [ %add.ptr642, %cond.false641 ], [ %call582, %cond.true639 ], [ %add.ptr.i1650, %cond.end643.loopexit ]
  %cmp645 = icmp eq i8* %cond6361713, %strpos.addr.1
  br i1 %cmp645, label %try_at_start, label %try_at_offset

if.else649:                                       ; preds = %if.then402
  %105 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool655 = icmp eq i8 %105, 0
  br i1 %tobool655, label %cond.false693, label %cond.true691

cond.true691:                                     ; preds = %if.else649
  %call658 = call fastcc i8* @S_reghop3(i8* %s.2, i32 %sub657, i8* %cond22) #5
  %106 = load i32* %minlen, align 4, !tbaa !0
  %min_offset673 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 1, i32 0
  %107 = load i32* %min_offset673, align 4, !tbaa !0
  %add674 = sub i32 %107, %106
  %call675 = call fastcc i8* @S_reghop3(i8* %strend, i32 %add674, i8* %cond22) #5
  %call692 = call i64 @Perl_utf8_distance(i8* %call675, i8* %call658) #6
  %.pre1701 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br label %cond.end697

cond.false693:                                    ; preds = %if.else649
  %add.ptr662 = getelementptr inbounds i8* %s.2, i64 %idx.ext661
  %108 = load i32* %minlen, align 4, !tbaa !0
  %sub669 = sub nsw i32 0, %108
  %idx.ext679 = sext i32 %sub669 to i64
  %min_offset684 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 1, i32 0
  %109 = load i32* %min_offset684, align 4, !tbaa !0
  %idx.ext685 = sext i32 %109 to i64
  %add.ptr680.sum = add i64 %idx.ext685, %idx.ext679
  %add.ptr686 = getelementptr inbounds i8* %strend, i64 %add.ptr680.sum
  %sub.ptr.lhs.cast694 = ptrtoint i8* %add.ptr686 to i64
  %sub.ptr.rhs.cast695 = ptrtoint i8* %add.ptr662 to i64
  %sub.ptr.sub696 = sub i64 %sub.ptr.lhs.cast694, %sub.ptr.rhs.cast695
  br label %cond.end697

cond.end697:                                      ; preds = %cond.false693, %cond.true691
  %cond6881719 = phi i8* [ %call675, %cond.true691 ], [ %add.ptr686, %cond.false693 ]
  %cond66417151718 = phi i8* [ %call658, %cond.true691 ], [ %add.ptr662, %cond.false693 ]
  %110 = phi %struct.reg_substr_data* [ %.pre1701, %cond.true691 ], [ %75, %cond.false693 ]
  %cond698 = phi i64 [ %call692, %cond.true691 ], [ %sub.ptr.sub696, %cond.false693 ]
  %max_offset702 = getelementptr inbounds %struct.reg_substr_data* %110, i64 0, i32 0, i64 1, i32 1
  %111 = load i32* %max_offset702, align 4, !tbaa !0
  %conv703 = sext i32 %111 to i64
  %cmp704 = icmp sgt i64 %cond698, %conv703
  %112 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool708 = icmp eq i8 %112, 0
  br i1 %cmp704, label %if.then706, label %if.end724

if.then706:                                       ; preds = %cond.end697
  br i1 %tobool708, label %if.end724.thread, label %if.end724.thread1725

if.end724.thread1725:                             ; preds = %if.then706
  %call714 = call fastcc i8* @S_reghop3(i8* %cond66417151718, i32 %111, i8* %strend) #5
  %min_offset7311727 = getelementptr inbounds %struct.reg_substr_data* %110, i64 0, i32 0, i64 1, i32 0
  %113 = load i32* %min_offset7311727, align 4, !tbaa !0
  br label %cond.true727

if.end724.thread:                                 ; preds = %if.then706
  %add.ptr721 = getelementptr inbounds i8* %cond66417151718, i64 %conv703
  %min_offset7311722 = getelementptr inbounds %struct.reg_substr_data* %110, i64 0, i32 0, i64 1, i32 0
  %114 = load i32* %min_offset7311722, align 4, !tbaa !0
  br label %cond.false733

if.end724:                                        ; preds = %cond.end697
  %min_offset731 = getelementptr inbounds %struct.reg_substr_data* %110, i64 0, i32 0, i64 1, i32 0
  %115 = load i32* %min_offset731, align 4, !tbaa !0
  br i1 %tobool708, label %cond.false733, label %cond.true727

cond.true727:                                     ; preds = %if.end724.thread1725, %if.end724
  %116 = phi i32 [ %113, %if.end724.thread1725 ], [ %115, %if.end724 ]
  %last650.01728 = phi i8* [ %call714, %if.end724.thread1725 ], [ %cond6881719, %if.end724 ]
  %call732 = call fastcc i8* @S_reghop3(i8* %cond66417151718, i32 %116, i8* %strend) #5
  br label %cond.end740

cond.false733:                                    ; preds = %if.end724.thread, %if.end724
  %117 = phi i32 [ %114, %if.end724.thread ], [ %115, %if.end724 ]
  %last650.01724 = phi i8* [ %add.ptr721, %if.end724.thread ], [ %cond6881719, %if.end724 ]
  %idx.ext738 = sext i32 %117 to i64
  %add.ptr739 = getelementptr inbounds i8* %cond66417151718, i64 %idx.ext738
  br label %cond.end740

cond.end740:                                      ; preds = %cond.false733, %cond.true727
  %last650.01723 = phi i8* [ %last650.01728, %cond.true727 ], [ %last650.01724, %cond.false733 ]
  %cond741 = phi i8* [ %call732, %cond.true727 ], [ %add.ptr739, %cond.false733 ]
  %utf8_substr751 = getelementptr inbounds %struct.reg_substr_data* %110, i64 0, i32 0, i64 1, i32 3
  %substr756 = getelementptr inbounds %struct.reg_substr_data* %110, i64 0, i32 0, i64 1, i32 2
  %cond758.in = select i1 %cond, %struct.sv** %utf8_substr751, %struct.sv** %substr756
  %cond758 = load %struct.sv** %cond758.in, align 8
  %cmp759 = icmp eq %struct.sv* %cond758, @PL_sv_undef
  br i1 %cmp759, label %if.then778, label %if.end776

if.end776:                                        ; preds = %cond.end740
  %cmp742 = icmp ult i8* %cond741, %strpos.addr.0.other_last.0
  %strpos.addr.0.other_last.0.cond741 = select i1 %cmp742, i8* %strpos.addr.0.other_last.0, i8* %cond741
  %sv_any763 = getelementptr inbounds %struct.sv* %cond758, i64 0, i32 0
  %118 = load i8** %sv_any763, align 8, !tbaa !3
  %xpv_cur764 = getelementptr inbounds i8* %118, i64 8
  %119 = bitcast i8* %xpv_cur764 to i64*
  %120 = load i64* %119, align 8, !tbaa !4
  %sv_flags766 = getelementptr inbounds %struct.sv* %cond758, i64 0, i32 2
  %121 = load i32* %sv_flags766, align 4, !tbaa !0
  %and767 = lshr i32 %121, 30
  %and767.lobit = and i32 %and767, 1
  %idx.ext7701610 = zext i32 %and767.lobit to i64
  %add.ptr765.sum = sub i64 %120, %idx.ext7701610
  %add.ptr772 = getelementptr inbounds i8* %last650.01723, i64 %add.ptr765.sum
  %122 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool773 = icmp ne i32 %122, 0
  %cond774 = zext i1 %tobool773 to i32
  %call775 = call i8* @Perl_fbm_instr(i8* %strpos.addr.0.other_last.0.cond741, i8* %add.ptr772, %struct.sv* %cond758, i32 %cond774) #6
  %tobool777 = icmp eq i8* %call775, null
  br i1 %tobool777, label %if.then778, label %if.else791

if.then778:                                       ; preds = %cond.end740, %if.end776
  %cmp779 = icmp eq i8* %cond6881719, %last650.01723
  br i1 %cmp779, label %fail_finish, label %if.end782

if.end782:                                        ; preds = %if.then778
  %123 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool784 = icmp eq i8 %123, 0
  br i1 %tobool784, label %cond.false787, label %cond.true785

cond.true785:                                     ; preds = %if.end782
  %cmp147.i1657 = icmp ult i8* %cond66417151718, %strend
  br i1 %cmp147.i1657, label %while.body.i1668, label %restart

while.body.i1668:                                 ; preds = %cond.true785
  %124 = load i8* %cond66417151718, align 1, !tbaa !1
  %idxprom.i1661 = zext i8 %124 to i64
  %arrayidx.i1662 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i1661
  %125 = load i8* %arrayidx.i1662, align 1, !tbaa !1
  %idx.ext.i1663 = zext i8 %125 to i64
  %add.ptr.i1664 = getelementptr inbounds i8* %cond66417151718, i64 %idx.ext.i1663
  br label %restart

cond.false787:                                    ; preds = %if.end782
  %add.ptr788 = getelementptr inbounds i8* %cond66417151718, i64 1
  br label %restart

if.else791:                                       ; preds = %if.end776
  %cmp792 = icmp eq i8* %cond66417151718, %strpos.addr.0.ph
  br i1 %cmp792, label %try_at_start, label %try_at_offset

if.end796:                                        ; preds = %land.lhs.true384, %cond.true378, %land.lhs.true396, %cond.false390
  %max_offset800 = getelementptr inbounds %struct.reg_substr_data* %75, i64 0, i32 0, i64 2, i32 1
  %126 = load i32* %max_offset800, align 4, !tbaa !0
  %idx.ext801 = sext i32 %126 to i64
  %sub.ptr.lhs.cast804 = ptrtoint i8* %s.2 to i64
  %sub.ptr.rhs.cast805 = ptrtoint i8* %strpos.addr.0.ph to i64
  %sub.ptr.sub806 = sub i64 %sub.ptr.lhs.cast804, %sub.ptr.rhs.cast805
  %cmp812 = icmp sgt i64 %sub.ptr.sub806, %idx.ext801
  br i1 %cmp812, label %land.lhs.true814, label %try_at_start

land.lhs.true814:                                 ; preds = %if.end796
  %idx.neg802 = sub i64 0, %idx.ext801
  %add.ptr803 = getelementptr inbounds i8* %s.2, i64 %idx.neg802
  br i1 %cond, label %lor.lhs.false816, label %try_at_offset

lor.lhs.false816:                                 ; preds = %land.lhs.true814
  %sub821 = sub nsw i32 0, %126
  %call822 = call fastcc i8* @S_reghopmaybe3(i8* %s.2, i32 %sub821, i8* %strpos.addr.0.ph) #5
  %tobool823 = icmp ne i8* %call822, null
  %cmp825 = icmp ugt i8* %call822, %strpos.addr.0.ph
  %or.cond1625 = and i1 %tobool823, %cmp825
  br i1 %or.cond1625, label %try_at_offset, label %try_at_start

try_at_offset:                                    ; preds = %lor.lhs.false816, %if.then1226, %land.lhs.true814, %if.else791, %cond.end643
  %check_at.1 = phi i8* [ %check_at.6, %if.then1226 ], [ %check_at.0, %cond.end643 ], [ %s.2, %if.else791 ], [ %s.2, %land.lhs.true814 ], [ %s.2, %lor.lhs.false816 ]
  %other_last.3 = phi i8* [ %other_last.8, %if.then1226 ], [ %cond644, %cond.end643 ], [ %call775, %if.else791 ], [ %other_last.0, %land.lhs.true814 ], [ %other_last.0, %lor.lhs.false816 ]
  %ml_anch.2 = phi i32 [ %ml_anch.7, %if.then1226 ], [ %ml_anch.1, %cond.end643 ], [ %ml_anch.0.ph, %if.else791 ], [ %ml_anch.0.ph, %land.lhs.true814 ], [ %ml_anch.0.ph, %lor.lhs.false816 ]
  %t.2 = phi i8* [ %add.ptr1227, %if.then1226 ], [ %cond6361713, %cond.end643 ], [ %cond66417151718, %if.else791 ], [ %add.ptr803, %land.lhs.true814 ], [ %call822, %lor.lhs.false816 ]
  %check.3 = phi %struct.sv* [ %check.8, %if.then1226 ], [ %check.2, %cond.end643 ], [ %check.1.ph, %if.else791 ], [ %check.1.ph, %land.lhs.true814 ], [ %check.1.ph, %lor.lhs.false816 ]
  %s.7 = phi i8* [ %add.ptr1227, %if.then1226 ], [ %s.3, %cond.end643 ], [ %s.2, %if.else791 ], [ %s.2, %land.lhs.true814 ], [ %s.2, %lor.lhs.false816 ]
  %end_shift.2 = phi i32 [ %end_shift.7, %if.then1226 ], [ %end_shift.1, %cond.end643 ], [ %end_shift.0.ph, %if.else791 ], [ %end_shift.0.ph, %land.lhs.true814 ], [ %end_shift.0.ph, %lor.lhs.false816 ]
  %start_shift.2 = phi i32 [ %start_shift.7, %if.then1226 ], [ %start_shift.1, %cond.end643 ], [ %start_shift.0.ph, %if.else791 ], [ %start_shift.0.ph, %land.lhs.true814 ], [ %start_shift.0.ph, %lor.lhs.false816 ]
  %strpos.addr.2 = phi i8* [ %strpos.addr.7, %if.then1226 ], [ %strpos.addr.1, %cond.end643 ], [ %strpos.addr.0.ph, %if.else791 ], [ %strpos.addr.0.ph, %land.lhs.true814 ], [ %strpos.addr.0.ph, %lor.lhs.false816 ]
  %tobool828 = icmp eq i32 %ml_anch.2, 0
  br i1 %tobool828, label %set_useful, label %land.lhs.true829

land.lhs.true829:                                 ; preds = %try_at_offset
  %arrayidx830 = getelementptr inbounds i8* %t.2, i64 -1
  %127 = load i8* %arrayidx830, align 1, !tbaa !1
  %cmp832 = icmp eq i8 %127, 10
  br i1 %cmp832, label %set_useful, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true829, %land.lhs.true907
  %check_at.2.ph = phi i8* [ %check_at.4, %land.lhs.true907 ], [ %check_at.1, %land.lhs.true829 ]
  %other_last.4.ph = phi i8* [ %other_last.6, %land.lhs.true907 ], [ %other_last.3, %land.lhs.true829 ]
  %ml_anch.3.ph = phi i32 [ %ml_anch.5, %land.lhs.true907 ], [ %ml_anch.2, %land.lhs.true829 ]
  %t.3.ph = phi i8* [ %strpos.addr.5, %land.lhs.true907 ], [ %t.2, %land.lhs.true829 ]
  %check.4.ph = phi %struct.sv* [ %check.6, %land.lhs.true907 ], [ %check.3, %land.lhs.true829 ]
  %s.8.ph = phi i8* [ %s.10, %land.lhs.true907 ], [ %s.7, %land.lhs.true829 ]
  %end_shift.3.ph = phi i32 [ %end_shift.5, %land.lhs.true907 ], [ %end_shift.2, %land.lhs.true829 ]
  %start_shift.3.ph = phi i32 [ %start_shift.5, %land.lhs.true907 ], [ %start_shift.2, %land.lhs.true829 ]
  %strpos.addr.3.ph = phi i8* [ %strpos.addr.5, %land.lhs.true907 ], [ %strpos.addr.2, %land.lhs.true829 ]
  %128 = load i32* %minlen, align 4, !tbaa !0
  %idx.ext8361679 = sext i32 %128 to i64
  %idx.neg8371680 = sub i64 0, %idx.ext8361679
  %add.ptr8381681 = getelementptr inbounds i8* %strend, i64 %idx.neg8371680
  %cmp8391682 = icmp ult i8* %t.3.ph, %add.ptr8381681
  br i1 %cmp8391682, label %while.body, label %fail_finish

while.cond:                                       ; preds = %while.body
  %cmp839 = icmp ult i8* %incdec.ptr, %add.ptr8381681
  br i1 %cmp839, label %while.body, label %fail_finish

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %t.31683 = phi i8* [ %incdec.ptr, %while.cond ], [ %t.3.ph, %while.cond.preheader ]
  %129 = load i8* %t.31683, align 1, !tbaa !1
  %cmp842 = icmp eq i8 %129, 10
  %incdec.ptr = getelementptr inbounds i8* %t.31683, i64 1
  br i1 %cmp842, label %if.then844, label %while.cond

if.then844:                                       ; preds = %while.body
  %130 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %min_offset848 = getelementptr inbounds %struct.reg_substr_data* %130, i64 0, i32 0, i64 2, i32 0
  %131 = load i32* %min_offset848, align 4, !tbaa !0
  %idx.ext849 = sext i32 %131 to i64
  %idx.neg850 = sub i64 0, %idx.ext849
  %add.ptr851 = getelementptr inbounds i8* %check_at.2.ph, i64 %idx.neg850
  %cmp852 = icmp ult i8* %t.31683, %add.ptr851
  br i1 %cmp852, label %if.then854, label %restart.preheader

if.then854:                                       ; preds = %if.then844
  br i1 %cond, label %cond.true856, label %cond.false862

cond.true856:                                     ; preds = %if.then854
  %utf8_substr860 = getelementptr inbounds %struct.reg_substr_data* %130, i64 0, i32 0, i64 0, i32 3
  %132 = load %struct.sv** %utf8_substr860, align 8, !tbaa !3
  %tobool861 = icmp eq %struct.sv* %132, null
  br i1 %tobool861, label %set_useful, label %do_other_anchored

cond.false862:                                    ; preds = %if.then854
  %substr866 = getelementptr inbounds %struct.reg_substr_data* %130, i64 0, i32 0, i64 0, i32 2
  %133 = load %struct.sv** %substr866, align 8, !tbaa !3
  %tobool867 = icmp eq %struct.sv* %133, null
  br i1 %tobool867, label %set_useful, label %do_other_anchored

set_useful:                                       ; preds = %cond.false862, %cond.true856, %land.lhs.true829, %try_at_offset
  %check_at.3 = phi i8* [ %check_at.1, %try_at_offset ], [ %check_at.1, %land.lhs.true829 ], [ %check_at.2.ph, %cond.true856 ], [ %check_at.2.ph, %cond.false862 ]
  %other_last.5 = phi i8* [ %other_last.3, %try_at_offset ], [ %other_last.3, %land.lhs.true829 ], [ %other_last.4.ph, %cond.true856 ], [ %other_last.4.ph, %cond.false862 ]
  %ml_anch.4 = phi i32 [ 0, %try_at_offset ], [ %ml_anch.2, %land.lhs.true829 ], [ %ml_anch.3.ph, %cond.true856 ], [ %ml_anch.3.ph, %cond.false862 ]
  %check.5 = phi %struct.sv* [ %check.3, %try_at_offset ], [ %check.3, %land.lhs.true829 ], [ %check.4.ph, %cond.true856 ], [ %check.4.ph, %cond.false862 ]
  %s.9 = phi i8* [ %t.2, %try_at_offset ], [ %t.2, %land.lhs.true829 ], [ %incdec.ptr, %cond.true856 ], [ %incdec.ptr, %cond.false862 ]
  %end_shift.4 = phi i32 [ %end_shift.2, %try_at_offset ], [ %end_shift.2, %land.lhs.true829 ], [ %end_shift.3.ph, %cond.true856 ], [ %end_shift.3.ph, %cond.false862 ]
  %start_shift.4 = phi i32 [ %start_shift.2, %try_at_offset ], [ %start_shift.2, %land.lhs.true829 ], [ %start_shift.3.ph, %cond.true856 ], [ %start_shift.3.ph, %cond.false862 ]
  %strpos.addr.4 = phi i8* [ %strpos.addr.2, %try_at_offset ], [ %strpos.addr.2, %land.lhs.true829 ], [ %strpos.addr.3.ph, %cond.true856 ], [ %strpos.addr.3.ph, %cond.false862 ]
  %134 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr882 = getelementptr inbounds %struct.reg_substr_data* %134, i64 0, i32 0, i64 2, i32 3
  %substr887 = getelementptr inbounds %struct.reg_substr_data* %134, i64 0, i32 0, i64 2, i32 2
  %cond889.in = select i1 %cond, %struct.sv** %utf8_substr882, %struct.sv** %substr887
  %cond889 = load %struct.sv** %cond889.in, align 8
  %sv_any890 = getelementptr inbounds %struct.sv* %cond889, i64 0, i32 0
  %135 = load i8** %sv_any890, align 8, !tbaa !3
  %xbm_useful = getelementptr inbounds i8* %135, i64 56
  %136 = bitcast i8* %xbm_useful to i32*
  %137 = load i32* %136, align 4, !tbaa !0
  %inc = add nsw i32 %137, 1
  store i32 %inc, i32* %136, align 4, !tbaa !0
  br label %if.end1034

try_at_start:                                     ; preds = %lor.lhs.false816, %if.end796, %if.else791, %cond.end643
  %check_at.4 = phi i8* [ %check_at.0, %cond.end643 ], [ %s.2, %if.else791 ], [ %s.2, %lor.lhs.false816 ], [ %s.2, %if.end796 ]
  %other_last.6 = phi i8* [ %cond644, %cond.end643 ], [ %call775, %if.else791 ], [ %other_last.0, %lor.lhs.false816 ], [ %other_last.0, %if.end796 ]
  %ml_anch.5 = phi i32 [ %ml_anch.1, %cond.end643 ], [ %ml_anch.0.ph, %if.else791 ], [ %ml_anch.0.ph, %lor.lhs.false816 ], [ %ml_anch.0.ph, %if.end796 ]
  %check.6 = phi %struct.sv* [ %check.2, %cond.end643 ], [ %check.1.ph, %if.else791 ], [ %check.1.ph, %lor.lhs.false816 ], [ %check.1.ph, %if.end796 ]
  %s.10 = phi i8* [ %s.3, %cond.end643 ], [ %s.2, %if.else791 ], [ %s.2, %lor.lhs.false816 ], [ %s.2, %if.end796 ]
  %end_shift.5 = phi i32 [ %end_shift.1, %cond.end643 ], [ %end_shift.0.ph, %if.else791 ], [ %end_shift.0.ph, %lor.lhs.false816 ], [ %end_shift.0.ph, %if.end796 ]
  %start_shift.5 = phi i32 [ %start_shift.1, %cond.end643 ], [ %start_shift.0.ph, %if.else791 ], [ %start_shift.0.ph, %lor.lhs.false816 ], [ %start_shift.0.ph, %if.end796 ]
  %strpos.addr.5 = phi i8* [ %strpos.addr.1, %cond.end643 ], [ %strpos.addr.0.ph, %if.else791 ], [ %strpos.addr.0.ph, %lor.lhs.false816 ], [ %strpos.addr.0.ph, %if.end796 ]
  %tobool892 = icmp eq i32 %ml_anch.5, 0
  br i1 %tobool892, label %success_at_start, label %land.lhs.true893

land.lhs.true893:                                 ; preds = %try_at_start
  br i1 %tobool, label %land.lhs.true895, label %success_at_start

land.lhs.true895:                                 ; preds = %land.lhs.true893
  %sv_flags896 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %138 = load i32* %sv_flags896, align 4, !tbaa !0
  %and897 = and i32 %138, 524288
  %tobool898 = icmp ne i32 %and897, 0
  %cmp900 = icmp eq i8* %strpos.addr.5, %cond22
  %or.cond1626 = or i1 %tobool898, %cmp900
  br i1 %or.cond1626, label %success_at_start, label %land.lhs.true902

land.lhs.true902:                                 ; preds = %land.lhs.true895
  %arrayidx903 = getelementptr inbounds i8* %strpos.addr.5, i64 -1
  %139 = load i8* %arrayidx903, align 1, !tbaa !1
  %cmp905 = icmp eq i8 %139, 10
  br i1 %cmp905, label %success_at_start, label %land.lhs.true907

land.lhs.true907:                                 ; preds = %land.lhs.true902
  %140 = load i32* %reganch, align 4, !tbaa !0
  %and909 = and i32 %140, 32
  %tobool910 = icmp eq i32 %and909, 0
  br i1 %tobool910, label %while.cond.preheader, label %success_at_start

success_at_start:                                 ; preds = %land.lhs.true902, %land.lhs.true895, %land.lhs.true893, %try_at_start, %land.lhs.true159, %if.end148, %land.lhs.true180, %land.lhs.true907, %lor.lhs.false156, %lor.lhs.false174
  %check_at.5 = phi i8* [ %check_at.4, %land.lhs.true907 ], [ null, %land.lhs.true159 ], [ null, %lor.lhs.false156 ], [ null, %if.end148 ], [ null, %land.lhs.true180 ], [ null, %lor.lhs.false174 ], [ %check_at.4, %try_at_start ], [ %check_at.4, %land.lhs.true893 ], [ %check_at.4, %land.lhs.true895 ], [ %check_at.4, %land.lhs.true902 ]
  %other_last.7 = phi i8* [ %other_last.6, %land.lhs.true907 ], [ null, %land.lhs.true159 ], [ null, %lor.lhs.false156 ], [ null, %if.end148 ], [ null, %land.lhs.true180 ], [ null, %lor.lhs.false174 ], [ %other_last.6, %try_at_start ], [ %other_last.6, %land.lhs.true893 ], [ %other_last.6, %land.lhs.true895 ], [ %other_last.6, %land.lhs.true902 ]
  %ml_anch.6 = phi i32 [ %ml_anch.5, %land.lhs.true907 ], [ %lnot.ext1675, %land.lhs.true159 ], [ %lnot.ext1675, %lor.lhs.false156 ], [ %lnot.ext1675, %if.end148 ], [ %lnot.ext1675, %land.lhs.true180 ], [ %lnot.ext1675, %lor.lhs.false174 ], [ 0, %try_at_start ], [ %ml_anch.5, %land.lhs.true893 ], [ %ml_anch.5, %land.lhs.true895 ], [ %ml_anch.5, %land.lhs.true902 ]
  %check.7 = phi %struct.sv* [ %check.6, %land.lhs.true907 ], [ %check.0, %land.lhs.true159 ], [ %check.0, %lor.lhs.false156 ], [ %check.0, %if.end148 ], [ %check.0, %land.lhs.true180 ], [ %check.0, %lor.lhs.false174 ], [ %check.6, %try_at_start ], [ %check.6, %land.lhs.true893 ], [ %check.6, %land.lhs.true895 ], [ %check.6, %land.lhs.true902 ]
  %end_shift.6 = phi i32 [ %end_shift.5, %land.lhs.true907 ], [ 0, %land.lhs.true159 ], [ 0, %lor.lhs.false156 ], [ 0, %if.end148 ], [ 0, %land.lhs.true180 ], [ 0, %lor.lhs.false174 ], [ %end_shift.5, %try_at_start ], [ %end_shift.5, %land.lhs.true893 ], [ %end_shift.5, %land.lhs.true895 ], [ %end_shift.5, %land.lhs.true902 ]
  %start_shift.6 = phi i32 [ %start_shift.5, %land.lhs.true907 ], [ 0, %land.lhs.true159 ], [ 0, %lor.lhs.false156 ], [ 0, %if.end148 ], [ 0, %land.lhs.true180 ], [ 0, %lor.lhs.false174 ], [ %start_shift.5, %try_at_start ], [ %start_shift.5, %land.lhs.true893 ], [ %start_shift.5, %land.lhs.true895 ], [ %start_shift.5, %land.lhs.true902 ]
  %strpos.addr.6 = phi i8* [ %strpos.addr.5, %land.lhs.true907 ], [ %strpos, %land.lhs.true159 ], [ %strpos, %lor.lhs.false156 ], [ %strpos, %if.end148 ], [ %strpos, %land.lhs.true180 ], [ %strpos, %lor.lhs.false174 ], [ %strpos.addr.5, %try_at_start ], [ %strpos.addr.5, %land.lhs.true893 ], [ %strpos.addr.5, %land.lhs.true895 ], [ %strpos.addr.5, %land.lhs.true902 ]
  %141 = load i32* %reganch, align 4, !tbaa !0
  %and914 = and i32 %141, 131072
  %tobool915 = icmp eq i32 %and914, 0
  br i1 %tobool915, label %land.lhs.true916, label %if.end1034

land.lhs.true916:                                 ; preds = %success_at_start
  %142 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br i1 %cond, label %cond.true918, label %cond.false945

cond.true918:                                     ; preds = %land.lhs.true916
  %utf8_substr922 = getelementptr inbounds %struct.reg_substr_data* %142, i64 0, i32 0, i64 2, i32 3
  %143 = load %struct.sv** %utf8_substr922, align 8, !tbaa !3
  %tobool923 = icmp eq %struct.sv* %143, null
  br i1 %tobool923, label %if.end1034, label %land.lhs.true924

land.lhs.true924:                                 ; preds = %cond.true918
  %sv_any929 = getelementptr inbounds %struct.sv* %143, i64 0, i32 0
  %144 = load i8** %sv_any929, align 8, !tbaa !3
  %xbm_useful930 = getelementptr inbounds i8* %144, i64 56
  %145 = bitcast i8* %xbm_useful930 to i32*
  %146 = load i32* %145, align 4, !tbaa !0
  %dec931 = add nsw i32 %146, -1
  store i32 %dec931, i32* %145, align 4, !tbaa !0
  %cmp932 = icmp slt i32 %146, 1
  br i1 %cmp932, label %land.lhs.true934, label %if.end1034

land.lhs.true934:                                 ; preds = %land.lhs.true924
  %utf8_substr942 = getelementptr inbounds %struct.reg_substr_data* %142, i64 0, i32 0, i64 1, i32 3
  %147 = load %struct.sv** %utf8_substr942, align 8, !tbaa !3
  %cmp943 = icmp eq %struct.sv* %143, %147
  br i1 %cmp943, label %land.lhs.true934.if.then972_crit_edge, label %if.end1034

land.lhs.true934.if.then972_crit_edge:            ; preds = %land.lhs.true934
  %substr983.pre = getelementptr inbounds %struct.reg_substr_data* %142, i64 0, i32 0, i64 2, i32 2
  br label %if.then972

cond.false945:                                    ; preds = %land.lhs.true916
  %substr949 = getelementptr inbounds %struct.reg_substr_data* %142, i64 0, i32 0, i64 2, i32 2
  %148 = load %struct.sv** %substr949, align 8, !tbaa !3
  %tobool950 = icmp eq %struct.sv* %148, null
  br i1 %tobool950, label %if.end1034, label %land.lhs.true951

land.lhs.true951:                                 ; preds = %cond.false945
  %sv_any956 = getelementptr inbounds %struct.sv* %148, i64 0, i32 0
  %149 = load i8** %sv_any956, align 8, !tbaa !3
  %xbm_useful957 = getelementptr inbounds i8* %149, i64 56
  %150 = bitcast i8* %xbm_useful957 to i32*
  %151 = load i32* %150, align 4, !tbaa !0
  %dec958 = add nsw i32 %151, -1
  store i32 %dec958, i32* %150, align 4, !tbaa !0
  %cmp959 = icmp slt i32 %151, 1
  br i1 %cmp959, label %land.lhs.true961, label %if.end1034

land.lhs.true961:                                 ; preds = %land.lhs.true951
  %substr969 = getelementptr inbounds %struct.reg_substr_data* %142, i64 0, i32 0, i64 1, i32 2
  %152 = load %struct.sv** %substr969, align 8, !tbaa !3
  %cmp970 = icmp eq %struct.sv* %148, %152
  br i1 %cmp970, label %land.lhs.true961.if.then972_crit_edge, label %if.end1034

land.lhs.true961.if.then972_crit_edge:            ; preds = %land.lhs.true961
  %utf8_substr978.pre = getelementptr inbounds %struct.reg_substr_data* %142, i64 0, i32 0, i64 2, i32 3
  br label %if.then972

if.then972:                                       ; preds = %land.lhs.true961.if.then972_crit_edge, %land.lhs.true934.if.then972_crit_edge
  %substr983.pre-phi = phi %struct.sv** [ %substr949, %land.lhs.true961.if.then972_crit_edge ], [ %substr983.pre, %land.lhs.true934.if.then972_crit_edge ]
  %utf8_substr978.pre-phi = phi %struct.sv** [ %utf8_substr978.pre, %land.lhs.true961.if.then972_crit_edge ], [ %utf8_substr922, %land.lhs.true934.if.then972_crit_edge ]
  %cond985.in = select i1 %cond, %struct.sv** %utf8_substr978.pre-phi, %struct.sv** %substr983.pre-phi
  %cond985 = load %struct.sv** %cond985.in, align 8
  call void @Perl_sv_free(%struct.sv* %cond985) #6
  %153 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br i1 %cond, label %cond.true987, label %cond.false993

cond.true987:                                     ; preds = %if.then972
  %substr991 = getelementptr inbounds %struct.reg_substr_data* %153, i64 0, i32 0, i64 2, i32 2
  %154 = load %struct.sv** %substr991, align 8, !tbaa !3
  %tobool992 = icmp eq %struct.sv* %154, null
  br i1 %tobool992, label %if.end1013, label %cond.true987.if.then999_crit_edge

cond.true987.if.then999_crit_edge:                ; preds = %cond.true987
  %utf8_substr1010.pre = getelementptr inbounds %struct.reg_substr_data* %153, i64 0, i32 0, i64 2, i32 3
  br label %if.then999

cond.false993:                                    ; preds = %if.then972
  %utf8_substr997 = getelementptr inbounds %struct.reg_substr_data* %153, i64 0, i32 0, i64 2, i32 3
  %155 = load %struct.sv** %utf8_substr997, align 8, !tbaa !3
  %tobool998 = icmp eq %struct.sv* %155, null
  br i1 %tobool998, label %if.end1013, label %cond.false993.if.then999_crit_edge

cond.false993.if.then999_crit_edge:               ; preds = %cond.false993
  %substr1005.pre = getelementptr inbounds %struct.reg_substr_data* %153, i64 0, i32 0, i64 2, i32 2
  br label %if.then999

if.then999:                                       ; preds = %cond.false993.if.then999_crit_edge, %cond.true987.if.then999_crit_edge
  %utf8_substr1010.pre-phi = phi %struct.sv** [ %utf8_substr997, %cond.false993.if.then999_crit_edge ], [ %utf8_substr1010.pre, %cond.true987.if.then999_crit_edge ]
  %substr1005.pre-phi = phi %struct.sv** [ %substr1005.pre, %cond.false993.if.then999_crit_edge ], [ %substr991, %cond.true987.if.then999_crit_edge ]
  %cond1012.in = select i1 %cond, %struct.sv** %substr1005.pre-phi, %struct.sv** %utf8_substr1010.pre-phi
  %cond1012 = load %struct.sv** %cond1012.in, align 8
  call void @Perl_sv_free(%struct.sv* %cond1012) #6
  %.pre1699 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br label %if.end1013

if.end1013:                                       ; preds = %cond.true987, %cond.false993, %if.then999
  %156 = phi %struct.reg_substr_data* [ %153, %cond.true987 ], [ %153, %cond.false993 ], [ %.pre1699, %if.then999 ]
  %utf8_substr1017 = getelementptr inbounds %struct.reg_substr_data* %156, i64 0, i32 0, i64 2, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr1017, align 8, !tbaa !3
  %157 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr1021 = getelementptr inbounds %struct.reg_substr_data* %157, i64 0, i32 0, i64 2, i32 2
  store %struct.sv* null, %struct.sv** %substr1021, align 8, !tbaa !3
  %158 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr1025 = getelementptr inbounds %struct.reg_substr_data* %158, i64 0, i32 0, i64 1, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr1025, align 8, !tbaa !3
  %159 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr1029 = getelementptr inbounds %struct.reg_substr_data* %159, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* null, %struct.sv** %substr1029, align 8, !tbaa !3
  %160 = load i32* %reganch, align 4, !tbaa !0
  %and1031 = and i32 %160, -3145729
  store i32 %and1031, i32* %reganch, align 4, !tbaa !0
  br label %if.end1034

if.end1034:                                       ; preds = %land.lhs.true924, %land.lhs.true934, %land.lhs.true951, %land.lhs.true961, %success_at_start, %cond.false945, %cond.true918, %if.end1013, %set_useful
  %check_at.6 = phi i8* [ %check_at.3, %set_useful ], [ %check_at.5, %if.end1013 ], [ %check_at.5, %cond.true918 ], [ %check_at.5, %cond.false945 ], [ %check_at.5, %success_at_start ], [ %check_at.5, %land.lhs.true961 ], [ %check_at.5, %land.lhs.true951 ], [ %check_at.5, %land.lhs.true934 ], [ %check_at.5, %land.lhs.true924 ]
  %other_last.8 = phi i8* [ %other_last.5, %set_useful ], [ %other_last.7, %if.end1013 ], [ %other_last.7, %cond.true918 ], [ %other_last.7, %cond.false945 ], [ %other_last.7, %success_at_start ], [ %other_last.7, %land.lhs.true961 ], [ %other_last.7, %land.lhs.true951 ], [ %other_last.7, %land.lhs.true934 ], [ %other_last.7, %land.lhs.true924 ]
  %ml_anch.7 = phi i32 [ %ml_anch.4, %set_useful ], [ %ml_anch.6, %if.end1013 ], [ %ml_anch.6, %cond.true918 ], [ %ml_anch.6, %cond.false945 ], [ %ml_anch.6, %success_at_start ], [ %ml_anch.6, %land.lhs.true961 ], [ %ml_anch.6, %land.lhs.true951 ], [ %ml_anch.6, %land.lhs.true934 ], [ %ml_anch.6, %land.lhs.true924 ]
  %check.8 = phi %struct.sv* [ %check.5, %set_useful ], [ null, %if.end1013 ], [ %check.7, %cond.true918 ], [ %check.7, %cond.false945 ], [ %check.7, %success_at_start ], [ %check.7, %land.lhs.true961 ], [ %check.7, %land.lhs.true951 ], [ %check.7, %land.lhs.true934 ], [ %check.7, %land.lhs.true924 ]
  %s.11 = phi i8* [ %s.9, %set_useful ], [ %strpos.addr.6, %if.end1013 ], [ %strpos.addr.6, %cond.true918 ], [ %strpos.addr.6, %cond.false945 ], [ %strpos.addr.6, %success_at_start ], [ %strpos.addr.6, %land.lhs.true961 ], [ %strpos.addr.6, %land.lhs.true951 ], [ %strpos.addr.6, %land.lhs.true934 ], [ %strpos.addr.6, %land.lhs.true924 ]
  %end_shift.7 = phi i32 [ %end_shift.4, %set_useful ], [ %end_shift.6, %if.end1013 ], [ %end_shift.6, %cond.true918 ], [ %end_shift.6, %cond.false945 ], [ %end_shift.6, %success_at_start ], [ %end_shift.6, %land.lhs.true961 ], [ %end_shift.6, %land.lhs.true951 ], [ %end_shift.6, %land.lhs.true934 ], [ %end_shift.6, %land.lhs.true924 ]
  %start_shift.7 = phi i32 [ %start_shift.4, %set_useful ], [ %start_shift.6, %if.end1013 ], [ %start_shift.6, %cond.true918 ], [ %start_shift.6, %cond.false945 ], [ %start_shift.6, %success_at_start ], [ %start_shift.6, %land.lhs.true961 ], [ %start_shift.6, %land.lhs.true951 ], [ %start_shift.6, %land.lhs.true934 ], [ %start_shift.6, %land.lhs.true924 ]
  %strpos.addr.7 = phi i8* [ %strpos.addr.4, %set_useful ], [ %strpos.addr.6, %if.end1013 ], [ %strpos.addr.6, %cond.true918 ], [ %strpos.addr.6, %cond.false945 ], [ %strpos.addr.6, %success_at_start ], [ %strpos.addr.6, %land.lhs.true961 ], [ %strpos.addr.6, %land.lhs.true951 ], [ %strpos.addr.6, %land.lhs.true934 ], [ %strpos.addr.6, %land.lhs.true924 ]
  %regstclass = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 2
  %161 = load %struct.regnode** %regstclass, align 8, !tbaa !3
  %tobool1035 = icmp eq %struct.regnode* %161, null
  br i1 %tobool1035, label %return, label %if.then1036

if.then1036:                                      ; preds = %if.end1034
  %arraydecay = getelementptr inbounds %struct.regnode* %161, i64 1, i32 0
  %type = getelementptr inbounds %struct.regnode* %161, i64 0, i32 1
  %162 = load i8* %type, align 1, !tbaa !1
  %idxprom1039 = zext i8 %162 to i64
  %arrayidx1040 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom1039
  %163 = load i8* %arrayidx1040, align 1, !tbaa !1
  %cmp1042 = icmp eq i8 %163, 33
  br i1 %cmp1042, label %cond.true1044, label %cond.end1065

cond.true1044:                                    ; preds = %if.then1036
  %164 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool1046 = icmp eq i8 %164, 0
  %str_len = getelementptr inbounds %struct.regnode* %161, i64 0, i32 0
  %165 = load i8* %str_len, align 1, !tbaa !1
  %idx.ext1050 = zext i8 %165 to i64
  br i1 %tobool1046, label %cond.end1065, label %cond.true1047

cond.true1047:                                    ; preds = %cond.true1044
  %add.ptr1051 = getelementptr inbounds i8* %arraydecay, i64 %idx.ext1050
  %call1052 = call i64 @Perl_utf8_distance(i8* %add.ptr1051, i8* %arraydecay) #6
  br label %cond.end1065

cond.end1065:                                     ; preds = %cond.true1044, %if.then1036, %cond.true1047
  %cond1066 = phi i64 [ %call1052, %cond.true1047 ], [ 1, %if.then1036 ], [ %idx.ext1050, %cond.true1044 ]
  %conv1067 = trunc i64 %cond1066 to i32
  %166 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr1071 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 0, i32 2
  %167 = load %struct.sv** %substr1071, align 8, !tbaa !3
  %tobool1072 = icmp eq %struct.sv* %167, null
  br i1 %tobool1072, label %lor.lhs.false1073, label %cond.true1081

lor.lhs.false1073:                                ; preds = %cond.end1065
  %utf8_substr1077 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 0, i32 3
  %168 = load %struct.sv** %utf8_substr1077, align 8, !tbaa !3
  %tobool1078 = icmp eq %struct.sv* %168, null
  %tobool1080 = icmp eq i32 %ml_anch.7, 0
  %or.cond1627 = and i1 %tobool1078, %tobool1080
  br i1 %or.cond1627, label %cond.false1103, label %cond.true1081

cond.true1081:                                    ; preds = %lor.lhs.false1073, %cond.end1065
  %169 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool1083 = icmp eq i8 %169, 0
  %170 = load i32* %minlen, align 4, !tbaa !0
  %tobool1086 = icmp ne i32 %170, 0
  %cond1090 = select i1 %tobool1086, i32 %conv1067, i32 0
  br i1 %tobool1083, label %cond.end1097, label %cond.end1089

cond.end1089:                                     ; preds = %cond.true1081
  %call1091 = call fastcc i8* @S_reghop3(i8* %s.11, i32 %cond1090, i8* %strend) #5
  br label %cond.end1150

cond.end1097:                                     ; preds = %cond.true1081
  %idx.ext1099 = sext i32 %cond1090 to i64
  %add.ptr1100 = getelementptr inbounds i8* %s.11, i64 %idx.ext1099
  br label %cond.end1150

cond.false1103:                                   ; preds = %lor.lhs.false1073
  %substr1107 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 1, i32 2
  %171 = load %struct.sv** %substr1107, align 8, !tbaa !3
  %tobool1108 = icmp eq %struct.sv* %171, null
  br i1 %tobool1108, label %lor.lhs.false1109, label %cond.true1115

lor.lhs.false1109:                                ; preds = %cond.false1103
  %utf8_substr1113 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 1, i32 3
  %172 = load %struct.sv** %utf8_substr1113, align 8, !tbaa !3
  %tobool1114 = icmp eq %struct.sv* %172, null
  br i1 %tobool1114, label %cond.end1150, label %cond.true1115

cond.true1115:                                    ; preds = %lor.lhs.false1109, %cond.false1103
  %173 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool1117 = icmp eq i8 %173, 0
  %sub1122 = sub nsw i32 0, %start_shift.7
  br i1 %tobool1117, label %cond.false1137, label %cond.true1121

cond.true1121:                                    ; preds = %cond.true1115
  %call1123 = call fastcc i8* @S_reghop3(i8* %check_at.6, i32 %sub1122, i8* %cond22) #5
  %call1130 = call fastcc i8* @S_reghop3(i8* %call1123, i32 %conv1067, i8* %strend) #5
  br label %cond.end1150

cond.false1137:                                   ; preds = %cond.true1115
  %idx.ext1139 = sext i32 %sub1122 to i64
  %sext = shl i64 %cond1066, 32
  %idx.ext1143 = ashr exact i64 %sext, 32
  %add.ptr1140.sum = add i64 %idx.ext1143, %idx.ext1139
  %add.ptr1144 = getelementptr inbounds i8* %check_at.6, i64 %add.ptr1140.sum
  br label %cond.end1150

cond.end1150:                                     ; preds = %lor.lhs.false1109, %cond.false1137, %cond.true1121, %cond.end1089, %cond.end1097
  %cond1151 = phi i8* [ %call1091, %cond.end1089 ], [ %add.ptr1100, %cond.end1097 ], [ %call1130, %cond.true1121 ], [ %add.ptr1144, %cond.false1137 ], [ %strend, %lor.lhs.false1109 ]
  %precomp.i = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 4
  %174 = load i8** %precomp.i, align 8, !tbaa !3
  store i8* %174, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 12
  %175 = load i32* %nparens.i, align 4, !tbaa !0
  store i32 %175, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 5
  %176 = load %struct.reg_data** %data.i, align 8, !tbaa !3
  store %struct.reg_data* %176, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %prog, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %177 = load %struct.regnode** %regstclass, align 8, !tbaa !3
  %call1153 = call fastcc i8* @S_find_byclass(%struct.regexp* %prog, %struct.regnode* %177, i8* %s.11, i8* %cond1151, i32 1) #5
  %tobool1154 = icmp eq i8* %call1153, null
  br i1 %tobool1154, label %if.then1155, label %return

if.then1155:                                      ; preds = %cond.end1150
  %cmp1156 = icmp eq i8* %cond1151, %strend
  br i1 %cmp1156, label %return, label %if.end1159

if.end1159:                                       ; preds = %if.then1155
  %178 = load i32* %reganch, align 4, !tbaa !0
  %and1161 = and i32 %178, 15
  %tobool1162 = icmp ne i32 %and1161, 0
  %tobool1164 = icmp eq i32 %ml_anch.7, 0
  %or.cond1628 = and i1 %tobool1162, %tobool1164
  br i1 %or.cond1628, label %return, label %if.end1166

if.end1166:                                       ; preds = %if.end1159
  %179 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr1170 = getelementptr inbounds %struct.reg_substr_data* %179, i64 0, i32 0, i64 0, i32 2
  %180 = load %struct.sv** %substr1170, align 8, !tbaa !3
  %tobool1171 = icmp eq %struct.sv* %180, null
  %utf8_substr1176 = getelementptr inbounds %struct.reg_substr_data* %179, i64 0, i32 0, i64 0, i32 3
  br i1 %tobool1171, label %lor.lhs.false1172, label %if.then1178

lor.lhs.false1172:                                ; preds = %if.end1166
  %181 = load %struct.sv** %utf8_substr1176, align 8, !tbaa !3
  %tobool1177 = icmp eq %struct.sv* %181, null
  br i1 %tobool1177, label %if.end1224, label %if.then1178

if.then1178:                                      ; preds = %if.end1166, %lor.lhs.false1172
  %cond1191.in = select i1 %cond, %struct.sv** %utf8_substr1176, %struct.sv** %substr1170
  %cond1191 = load %struct.sv** %cond1191.in, align 8
  %cmp1192 = icmp eq %struct.sv* %cond1191, %check.8
  br i1 %cmp1192, label %hop_and_restart, label %if.end1214

hop_and_restart:                                  ; preds = %if.then1178, %retry_floating_check
  %t.4 = phi i8* [ %s.11, %if.then1178 ], [ %add.ptr1249, %retry_floating_check ]
  %182 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool1196 = icmp eq i8 %182, 0
  br i1 %tobool1196, label %cond.false1199, label %cond.true1197

cond.true1197:                                    ; preds = %hop_and_restart
  %cmp147.i1629 = icmp ult i8* %t.4, %strend
  br i1 %cmp147.i1629, label %cond.end1201.loopexit, label %cond.end1201

cond.false1199:                                   ; preds = %hop_and_restart
  %add.ptr1200 = getelementptr inbounds i8* %t.4, i64 1
  br label %cond.end1201

cond.end1201.loopexit:                            ; preds = %cond.true1197
  %183 = load i8* %t.4, align 1, !tbaa !1
  %idxprom.i1633 = zext i8 %183 to i64
  %arrayidx.i1634 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i1633
  %184 = load i8* %arrayidx.i1634, align 1, !tbaa !1
  %idx.ext.i1635 = zext i8 %184 to i64
  %add.ptr.i1636 = getelementptr inbounds i8* %t.4, i64 %idx.ext.i1635
  br label %cond.end1201

cond.end1201:                                     ; preds = %cond.end1201.loopexit, %cond.true1197, %cond.false1199
  %cond1202 = phi i8* [ %add.ptr1200, %cond.false1199 ], [ %t.4, %cond.true1197 ], [ %add.ptr.i1636, %cond.end1201.loopexit ]
  %idx.ext1203 = sext i32 %start_shift.7 to i64
  %idx.ext1205 = sext i32 %end_shift.7 to i64
  %add.ptr1204.sum = add i64 %idx.ext1203, %idx.ext1205
  %add.ptr1206 = getelementptr inbounds i8* %cond1202, i64 %add.ptr1204.sum
  %cmp1207 = icmp ugt i8* %add.ptr1206, %strend
  br i1 %cmp1207, label %return, label %if.end1210

if.end1210:                                       ; preds = %cond.end1201
  %tobool1211 = icmp eq %struct.sv* %check.8, null
  br i1 %tobool1211, label %return, label %restart.preheader

if.end1214:                                       ; preds = %if.then1178
  %idx.ext1215 = sext i32 %start_shift.7 to i64
  %add.ptr1216 = getelementptr inbounds i8* %s.11, i64 %idx.ext1215
  %cmp1217 = icmp ult i8* %add.ptr1216, %check_at.6
  br i1 %cmp1217, label %if.end1220, label %retry_floating_check

if.end1220:                                       ; preds = %if.end1214
  %tobool1221 = icmp eq %struct.sv* %check.8, null
  br i1 %tobool1221, label %return, label %do_other_anchored

if.end1224:                                       ; preds = %lor.lhs.false1172
  br i1 %tobool1164, label %if.end1231, label %if.then1226

if.then1226:                                      ; preds = %if.end1224
  %add.ptr1227 = getelementptr inbounds i8* %s.11, i64 1
  %tobool1228 = icmp eq %struct.sv* %check.8, null
  br i1 %tobool1228, label %return, label %try_at_offset

if.end1231:                                       ; preds = %if.end1224
  br i1 %cond, label %cond.true1233, label %cond.false1239

cond.true1233:                                    ; preds = %if.end1231
  %utf8_substr1237 = getelementptr inbounds %struct.reg_substr_data* %179, i64 0, i32 0, i64 1, i32 3
  %185 = load %struct.sv** %utf8_substr1237, align 8, !tbaa !3
  %tobool1238 = icmp eq %struct.sv* %185, null
  br i1 %tobool1238, label %return, label %retry_floating_check

cond.false1239:                                   ; preds = %if.end1231
  %substr1243 = getelementptr inbounds %struct.reg_substr_data* %179, i64 0, i32 0, i64 1, i32 2
  %186 = load %struct.sv** %substr1243, align 8, !tbaa !3
  %tobool1244 = icmp eq %struct.sv* %186, null
  br i1 %tobool1244, label %return, label %retry_floating_check

retry_floating_check:                             ; preds = %if.end1214, %cond.true1233, %cond.false1239
  %idx.ext1247 = sext i32 %start_shift.7 to i64
  %idx.neg1248 = sub i64 0, %idx.ext1247
  %add.ptr1249 = getelementptr inbounds i8* %check_at.6, i64 %idx.neg1248
  br label %hop_and_restart

fail_finish:                                      ; preds = %land.lhs.true305, %if.end373, %if.then778, %lor.lhs.false291, %land.lhs.true297, %while.cond.preheader, %while.cond, %if.then585, %land.lhs.true142, %land.lhs.true159, %land.lhs.true150, %land.lhs.true180, %if.else167, %if.then119, %lor.lhs.false
  %187 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr1260 = getelementptr inbounds %struct.reg_substr_data* %187, i64 0, i32 0, i64 2, i32 2
  %188 = load %struct.sv** %substr1260, align 8, !tbaa !3
  %tobool1261 = icmp eq %struct.sv* %188, null
  %utf8_substr1266 = getelementptr inbounds %struct.reg_substr_data* %187, i64 0, i32 0, i64 2, i32 3
  br i1 %tobool1261, label %lor.lhs.false1262, label %if.then1268

lor.lhs.false1262:                                ; preds = %fail_finish
  %189 = load %struct.sv** %utf8_substr1266, align 8, !tbaa !3
  %tobool1267 = icmp eq %struct.sv* %189, null
  br i1 %tobool1267, label %return, label %if.then1268

if.then1268:                                      ; preds = %fail_finish, %lor.lhs.false1262
  %cond1281.in = select i1 %cond, %struct.sv** %utf8_substr1266, %struct.sv** %substr1260
  %cond1281 = load %struct.sv** %cond1281.in, align 8
  %sv_any1282 = getelementptr inbounds %struct.sv* %cond1281, i64 0, i32 0
  %190 = load i8** %sv_any1282, align 8, !tbaa !3
  %xbm_useful1283 = getelementptr inbounds i8* %190, i64 56
  %191 = bitcast i8* %xbm_useful1283 to i32*
  %192 = load i32* %191, align 4, !tbaa !0
  %add1284 = add nsw i32 %192, 5
  store i32 %add1284, i32* %191, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.end55, %if.then1155, %cond.end1201, %if.then1268, %lor.lhs.false1262, %cond.false1239, %cond.true1233, %land.lhs.true79, %if.end1159, %if.end1034, %cond.end1150, %if.end1210, %if.then1226, %if.end1220
  %retval.0 = phi i8* [ %call1153, %cond.end1150 ], [ %cond1202, %if.end1210 ], [ %check_at.6, %if.end1220 ], [ %add.ptr1227, %if.then1226 ], [ %s.11, %if.end1034 ], [ null, %if.end1159 ], [ null, %land.lhs.true79 ], [ null, %cond.true1233 ], [ null, %cond.false1239 ], [ null, %lor.lhs.false1262 ], [ null, %if.then1268 ], [ null, %cond.end1201 ], [ null, %if.then1155 ], [ null, %if.end55 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_to_utf8_substr(%struct.regexp* nocapture %prog) #0 {
entry:
  %substrs = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %0 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr = getelementptr inbounds %struct.reg_substr_data* %0, i64 0, i32 0, i64 1, i32 2
  %1 = load %struct.sv** %substr, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %0, i64 0, i32 0, i64 1, i32 3
  %2 = load %struct.sv** %utf8_substr, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.sv* %2, null
  br i1 %tobool4, label %if.then, label %if.end35

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %1) #6
  %3 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr12 = getelementptr inbounds %struct.reg_substr_data* %3, i64 0, i32 0, i64 1, i32 3
  store %struct.sv* %call, %struct.sv** %utf8_substr12, align 8, !tbaa !3
  %call13 = tail call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call, i32 2) #6
  %4 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr17 = getelementptr inbounds %struct.reg_substr_data* %4, i64 0, i32 0, i64 1, i32 2
  %5 = load %struct.sv** %substr17, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %6, 1073741824
  %tobool18 = icmp eq i32 %and, 0
  br i1 %tobool18, label %if.end, label %if.then19

if.then19:                                        ; preds = %if.then
  %sv_flags20 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %7 = load i32* %sv_flags20, align 4, !tbaa !0
  %or = or i32 %7, 1073741824
  store i32 %or, i32* %sv_flags20, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then19
  %substr28 = getelementptr inbounds %struct.reg_substr_data* %4, i64 0, i32 0, i64 2, i32 2
  %8 = load %struct.sv** %substr28, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv* %5, %8
  br i1 %cmp, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end
  %utf8_substr33 = getelementptr inbounds %struct.reg_substr_data* %4, i64 0, i32 0, i64 2, i32 3
  store %struct.sv* %call, %struct.sv** %utf8_substr33, align 8, !tbaa !3
  %.pre = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %entry, %if.end, %if.then29
  %9 = phi %struct.reg_substr_data* [ %0, %land.lhs.true ], [ %0, %entry ], [ %4, %if.end ], [ %.pre, %if.then29 ]
  %substr39 = getelementptr inbounds %struct.reg_substr_data* %9, i64 0, i32 0, i64 0, i32 2
  %10 = load %struct.sv** %substr39, align 8, !tbaa !3
  %tobool40 = icmp eq %struct.sv* %10, null
  br i1 %tobool40, label %if.end84, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end35
  %utf8_substr45 = getelementptr inbounds %struct.reg_substr_data* %9, i64 0, i32 0, i64 0, i32 3
  %11 = load %struct.sv** %utf8_substr45, align 8, !tbaa !3
  %tobool46 = icmp eq %struct.sv* %11, null
  br i1 %tobool46, label %if.then47, label %if.end84

if.then47:                                        ; preds = %land.lhs.true41
  %call52 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %10) #6
  %12 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr56 = getelementptr inbounds %struct.reg_substr_data* %12, i64 0, i32 0, i64 0, i32 3
  store %struct.sv* %call52, %struct.sv** %utf8_substr56, align 8, !tbaa !3
  %call57 = tail call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call52, i32 2) #6
  %13 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr61 = getelementptr inbounds %struct.reg_substr_data* %13, i64 0, i32 0, i64 0, i32 2
  %14 = load %struct.sv** %substr61, align 8, !tbaa !3
  %sv_flags62 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags62, align 4, !tbaa !0
  %and63 = and i32 %15, 1073741824
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.then47
  %sv_flags66 = getelementptr inbounds %struct.sv* %call52, i64 0, i32 2
  %16 = load i32* %sv_flags66, align 4, !tbaa !0
  %or67 = or i32 %16, 1073741824
  store i32 %or67, i32* %sv_flags66, align 4, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %if.then47, %if.then65
  %substr76 = getelementptr inbounds %struct.reg_substr_data* %13, i64 0, i32 0, i64 2, i32 2
  %17 = load %struct.sv** %substr76, align 8, !tbaa !3
  %cmp77 = icmp eq %struct.sv* %14, %17
  br i1 %cmp77, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end68
  %utf8_substr82 = getelementptr inbounds %struct.reg_substr_data* %13, i64 0, i32 0, i64 2, i32 3
  store %struct.sv* %call52, %struct.sv** %utf8_substr82, align 8, !tbaa !3
  br label %if.end84

if.end84:                                         ; preds = %land.lhs.true41, %if.end35, %if.end68, %if.then78
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_to_byte_substr(%struct.regexp* nocapture %prog) #0 {
entry:
  %substrs = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %0 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %0, i64 0, i32 0, i64 1, i32 3
  %1 = load %struct.sv** %utf8_substr, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %substr = getelementptr inbounds %struct.reg_substr_data* %0, i64 0, i32 0, i64 1, i32 2
  %2 = load %struct.sv** %substr, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.sv* %2, null
  br i1 %tobool4, label %if.then, label %if.end42

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %1) #6
  %3 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr12 = getelementptr inbounds %struct.reg_substr_data* %3, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* %call, %struct.sv** %substr12, align 8, !tbaa !3
  %call13 = tail call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %call, i8 signext 1) #6
  %tobool14 = icmp eq i8 %call13, 0
  br i1 %tobool14, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  %4 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr19 = getelementptr inbounds %struct.reg_substr_data* %4, i64 0, i32 0, i64 1, i32 3
  %5 = load %struct.sv** %utf8_substr19, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %6, 1073741824
  %tobool20 = icmp eq i32 %and, 0
  br i1 %tobool20, label %if.end27, label %if.then21

if.then21:                                        ; preds = %if.then15
  %sv_flags22 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %7 = load i32* %sv_flags22, align 4, !tbaa !0
  %or = or i32 %7, 1073741824
  store i32 %or, i32* %sv_flags22, align 4, !tbaa !0
  br label %if.end27

if.else:                                          ; preds = %if.then
  tail call void @Perl_sv_free(%struct.sv* %call) #6
  %8 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr26 = getelementptr inbounds %struct.reg_substr_data* %8, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* @PL_sv_undef, %struct.sv** %substr26, align 8, !tbaa !3
  %.pre126 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr31.phi.trans.insert = getelementptr inbounds %struct.reg_substr_data* %.pre126, i64 0, i32 0, i64 1, i32 3
  %.pre127 = load %struct.sv** %utf8_substr31.phi.trans.insert, align 8, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then15, %if.then21, %if.else
  %9 = phi %struct.sv* [ %5, %if.then21 ], [ %5, %if.then15 ], [ %.pre127, %if.else ]
  %10 = phi %struct.reg_substr_data* [ %4, %if.then21 ], [ %4, %if.then15 ], [ %.pre126, %if.else ]
  %sv.0 = phi %struct.sv* [ %call, %if.then21 ], [ %call, %if.then15 ], [ @PL_sv_undef, %if.else ]
  %utf8_substr35 = getelementptr inbounds %struct.reg_substr_data* %10, i64 0, i32 0, i64 2, i32 3
  %11 = load %struct.sv** %utf8_substr35, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv* %9, %11
  br i1 %cmp, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end27
  %substr40 = getelementptr inbounds %struct.reg_substr_data* %10, i64 0, i32 0, i64 2, i32 2
  store %struct.sv* %sv.0, %struct.sv** %substr40, align 8, !tbaa !3
  %.pre = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %entry, %if.end27, %if.then36
  %12 = phi %struct.reg_substr_data* [ %0, %land.lhs.true ], [ %0, %entry ], [ %10, %if.end27 ], [ %.pre, %if.then36 ]
  %utf8_substr46 = getelementptr inbounds %struct.reg_substr_data* %12, i64 0, i32 0, i64 0, i32 3
  %13 = load %struct.sv** %utf8_substr46, align 8, !tbaa !3
  %tobool47 = icmp eq %struct.sv* %13, null
  br i1 %tobool47, label %if.end99, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end42
  %substr52 = getelementptr inbounds %struct.reg_substr_data* %12, i64 0, i32 0, i64 0, i32 2
  %14 = load %struct.sv** %substr52, align 8, !tbaa !3
  %tobool53 = icmp eq %struct.sv* %14, null
  br i1 %tobool53, label %if.then54, label %if.end99

if.then54:                                        ; preds = %land.lhs.true48
  %call59 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %13) #6
  %15 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr63 = getelementptr inbounds %struct.reg_substr_data* %15, i64 0, i32 0, i64 0, i32 2
  store %struct.sv* %call59, %struct.sv** %substr63, align 8, !tbaa !3
  %call64 = tail call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %call59, i8 signext 1) #6
  %tobool65 = icmp eq i8 %call64, 0
  br i1 %tobool65, label %if.else78, label %if.then66

if.then66:                                        ; preds = %if.then54
  %16 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr70 = getelementptr inbounds %struct.reg_substr_data* %16, i64 0, i32 0, i64 0, i32 3
  %17 = load %struct.sv** %utf8_substr70, align 8, !tbaa !3
  %sv_flags71 = getelementptr inbounds %struct.sv* %17, i64 0, i32 2
  %18 = load i32* %sv_flags71, align 4, !tbaa !0
  %and72 = and i32 %18, 1073741824
  %tobool73 = icmp eq i32 %and72, 0
  br i1 %tobool73, label %if.end83, label %if.then74

if.then74:                                        ; preds = %if.then66
  %sv_flags75 = getelementptr inbounds %struct.sv* %call59, i64 0, i32 2
  %19 = load i32* %sv_flags75, align 4, !tbaa !0
  %or76 = or i32 %19, 1073741824
  store i32 %or76, i32* %sv_flags75, align 4, !tbaa !0
  br label %if.end83

if.else78:                                        ; preds = %if.then54
  tail call void @Perl_sv_free(%struct.sv* %call59) #6
  %20 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr82 = getelementptr inbounds %struct.reg_substr_data* %20, i64 0, i32 0, i64 0, i32 2
  store %struct.sv* @PL_sv_undef, %struct.sv** %substr82, align 8, !tbaa !3
  %.pre124 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %utf8_substr87.phi.trans.insert = getelementptr inbounds %struct.reg_substr_data* %.pre124, i64 0, i32 0, i64 0, i32 3
  %.pre125 = load %struct.sv** %utf8_substr87.phi.trans.insert, align 8, !tbaa !3
  br label %if.end83

if.end83:                                         ; preds = %if.then66, %if.then74, %if.else78
  %21 = phi %struct.sv* [ %17, %if.then74 ], [ %17, %if.then66 ], [ %.pre125, %if.else78 ]
  %22 = phi %struct.reg_substr_data* [ %16, %if.then74 ], [ %16, %if.then66 ], [ %.pre124, %if.else78 ]
  %sv.1 = phi %struct.sv* [ %call59, %if.then74 ], [ %call59, %if.then66 ], [ @PL_sv_undef, %if.else78 ]
  %utf8_substr91 = getelementptr inbounds %struct.reg_substr_data* %22, i64 0, i32 0, i64 2, i32 3
  %23 = load %struct.sv** %utf8_substr91, align 8, !tbaa !3
  %cmp92 = icmp eq %struct.sv* %21, %23
  br i1 %cmp92, label %if.then93, label %if.end99

if.then93:                                        ; preds = %if.end83
  %substr97 = getelementptr inbounds %struct.reg_substr_data* %22, i64 0, i32 0, i64 2, i32 2
  store %struct.sv* %sv.1, %struct.sv** %substr97, align 8, !tbaa !3
  br label %if.end99

if.end99:                                         ; preds = %land.lhs.true48, %if.end42, %if.end83, %if.then93
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i8* @S_reghop3(i8* %s, i32 %off, i8* %lim) #1 {
entry:
  %cmp = icmp sgt i32 %off, -1
  br i1 %cmp, label %while.cond.preheader, label %while.cond2.outer

while.cond.preheader:                             ; preds = %entry
  %tobool46 = icmp ne i32 %off, 0
  %cmp147 = icmp ult i8* %s, %lim
  %or.cond48 = and i1 %tobool46, %cmp147
  br i1 %or.cond48, label %while.body, label %if.end29

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %s.addr.050 = phi i8* [ %add.ptr, %while.body ], [ %s, %while.cond.preheader ]
  %off.addr.049 = phi i32 [ %dec, %while.body ], [ %off, %while.cond.preheader ]
  %dec = add nsw i32 %off.addr.049, -1
  %0 = load i8* %s.addr.050, align 1, !tbaa !1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext = zext i8 %1 to i64
  %add.ptr = getelementptr inbounds i8* %s.addr.050, i64 %idx.ext
  %tobool = icmp ne i32 %dec, 0
  %cmp1 = icmp ult i8* %add.ptr, %lim
  %or.cond = and i1 %tobool, %cmp1
  br i1 %or.cond, label %while.body, label %if.end29

while.cond2.outer:                                ; preds = %if.then7, %while.cond11, %land.rhs14, %entry
  %off.addr.1.ph = phi i32 [ %off, %entry ], [ %inc, %land.rhs14 ], [ %inc, %while.cond11 ], [ %inc, %if.then7 ]
  %s.addr.1.ph = phi i8* [ %s, %entry ], [ %s.addr.252, %land.rhs14 ], [ %incdec.ptr25, %while.cond11 ], [ %incdec.ptr, %if.then7 ]
  %cmp5 = icmp ugt i8* %s.addr.1.ph, %lim
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.outer, %while.body4
  %off.addr.1 = phi i32 [ %inc, %while.body4 ], [ %off.addr.1.ph, %while.cond2.outer ]
  %inc = add nsw i32 %off.addr.1, 1
  %tobool3 = icmp eq i32 %off.addr.1, 0
  br i1 %tobool3, label %if.end29, label %while.body4

while.body4:                                      ; preds = %while.cond2
  br i1 %cmp5, label %if.then7, label %while.cond2

if.then7:                                         ; preds = %while.body4
  %incdec.ptr = getelementptr inbounds i8* %s.addr.1.ph, i64 -1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool9 = icmp slt i8 %2, 0
  %cmp1251 = icmp ugt i8* %incdec.ptr, %lim
  %or.cond59 = and i1 %tobool9, %cmp1251
  br i1 %or.cond59, label %land.rhs14, label %while.cond2.outer

while.cond11:                                     ; preds = %land.rhs14
  %cmp12 = icmp ugt i8* %incdec.ptr25, %lim
  br i1 %cmp12, label %while.cond11.land.rhs14_crit_edge, label %while.cond2.outer

while.cond11.land.rhs14_crit_edge:                ; preds = %while.cond11
  %.pre = load i8* %incdec.ptr25, align 1, !tbaa !1
  br label %land.rhs14

land.rhs14:                                       ; preds = %if.then7, %while.cond11.land.rhs14_crit_edge
  %3 = phi i8 [ %.pre, %while.cond11.land.rhs14_crit_edge ], [ %2, %if.then7 ]
  %s.addr.252 = phi i8* [ %incdec.ptr25, %while.cond11.land.rhs14_crit_edge ], [ %incdec.ptr, %if.then7 ]
  %cmp16 = icmp slt i8 %3, 0
  %cmp20 = icmp ult i8 %3, -64
  %or.cond45 = and i1 %cmp16, %cmp20
  %incdec.ptr25 = getelementptr inbounds i8* %s.addr.252, i64 -1
  br i1 %or.cond45, label %while.cond11, label %while.cond2.outer

if.end29:                                         ; preds = %while.cond2, %while.cond.preheader, %while.body
  %s.addr.3 = phi i8* [ %s, %while.cond.preheader ], [ %add.ptr, %while.body ], [ %s.addr.1.ph, %while.cond2 ]
  ret i8* %s.addr.3
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #3

; Function Attrs: optsize
declare i64 @Perl_utf8_distance(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @Perl_screaminstr(%struct.sv*, %struct.sv*, i32, i32, i32*, i32) #3

; Function Attrs: optsize
declare i8* @Perl_fbm_instr(i8*, i8*, %struct.sv*, i32) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i8* @S_reghopmaybe3(i8* %s, i32 %off, i8* %lim) #1 {
entry:
  %cmp = icmp sgt i32 %off, -1
  br i1 %cmp, label %while.cond.preheader, label %while.cond5.preheader

while.cond5.preheader:                            ; preds = %entry
  %cmp869 = icmp ugt i8* %s, %lim
  br i1 %cmp869, label %if.then10, label %return

while.cond.preheader:                             ; preds = %entry
  %tobool58 = icmp ne i32 %off, 0
  %cmp159 = icmp ult i8* %s, %lim
  %or.cond60 = and i1 %tobool58, %cmp159
  br i1 %or.cond60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %off.addr.062 = phi i32 [ %dec, %while.body ], [ %off, %while.cond.preheader ]
  %s.addr.061 = phi i8* [ %add.ptr, %while.body ], [ %s, %while.cond.preheader ]
  %dec = add nsw i32 %off.addr.062, -1
  %0 = load i8* %s.addr.061, align 1, !tbaa !1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext = zext i8 %1 to i64
  %add.ptr = getelementptr inbounds i8* %s.addr.061, i64 %idx.ext
  %tobool = icmp ne i32 %dec, 0
  %cmp1 = icmp ult i8* %add.ptr, %lim
  %or.cond = and i1 %tobool, %cmp1
  br i1 %or.cond, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %off.addr.0.lcssa = phi i32 [ %off, %while.cond.preheader ], [ %dec, %while.body ]
  %s.addr.0.lcssa = phi i8* [ %s, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %cmp2 = icmp sgt i32 %off.addr.0.lcssa, 0
  br i1 %cmp2, label %return, label %if.end38

if.then10:                                        ; preds = %while.cond5.preheader, %while.cond5.backedge
  %inc72.in = phi i32 [ %inc72, %while.cond5.backedge ], [ %off, %while.cond5.preheader ]
  %s.addr.171 = phi i8* [ %s.addr.1.be, %while.cond5.backedge ], [ %s, %while.cond5.preheader ]
  %inc72 = add nsw i32 %inc72.in, 1
  %incdec.ptr = getelementptr inbounds i8* %s.addr.171, i64 -1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool12 = icmp slt i8 %2, 0
  %cmp1564 = icmp ugt i8* %incdec.ptr, %lim
  %or.cond78 = and i1 %tobool12, %cmp1564
  br i1 %or.cond78, label %land.rhs17, label %while.cond5.backedge

while.cond5.backedge:                             ; preds = %land.rhs17, %while.cond14, %if.then10
  %s.addr.1.be = phi i8* [ %incdec.ptr, %if.then10 ], [ %s.addr.265, %land.rhs17 ], [ %incdec.ptr28, %while.cond14 ]
  %tobool6 = icmp ne i32 %inc72, 0
  %cmp8 = icmp ugt i8* %s.addr.1.be, %lim
  %or.cond56 = and i1 %tobool6, %cmp8
  br i1 %or.cond56, label %if.then10, label %while.end33

while.cond14:                                     ; preds = %land.rhs17
  %cmp15 = icmp ugt i8* %incdec.ptr28, %lim
  br i1 %cmp15, label %while.cond14.land.rhs17_crit_edge, label %while.cond5.backedge

while.cond14.land.rhs17_crit_edge:                ; preds = %while.cond14
  %.pre = load i8* %incdec.ptr28, align 1, !tbaa !1
  br label %land.rhs17

land.rhs17:                                       ; preds = %if.then10, %while.cond14.land.rhs17_crit_edge
  %3 = phi i8 [ %.pre, %while.cond14.land.rhs17_crit_edge ], [ %2, %if.then10 ]
  %s.addr.265 = phi i8* [ %incdec.ptr28, %while.cond14.land.rhs17_crit_edge ], [ %incdec.ptr, %if.then10 ]
  %cmp19 = icmp slt i8 %3, 0
  %cmp23 = icmp ult i8 %3, -64
  %or.cond57 = and i1 %cmp19, %cmp23
  %incdec.ptr28 = getelementptr inbounds i8* %s.addr.265, i64 -1
  br i1 %or.cond57, label %while.cond14, label %while.cond5.backedge

while.end33:                                      ; preds = %while.cond5.backedge
  %cmp34 = icmp slt i32 %inc72, 0
  br i1 %cmp34, label %return, label %if.end38

if.end38:                                         ; preds = %while.end33, %while.end
  %s.addr.3 = phi i8* [ %s.addr.0.lcssa, %while.end ], [ %s.addr.1.be, %while.end33 ]
  br label %return

return:                                           ; preds = %while.cond5.preheader, %while.end33, %while.end, %if.end38
  %retval.0 = phi i8* [ %s.addr.3, %if.end38 ], [ null, %while.end ], [ null, %while.end33 ], [ null, %while.cond5.preheader ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @S_find_byclass(%struct.regexp* %prog, %struct.regnode* %c, i8* %s, i8* %strend, i32 %norun) #0 {
entry:
  %ulen1 = alloca i64, align 8
  %ulen2 = alloca i64, align 8
  %tmpbuf1 = alloca [7 x i8], align 1
  %tmpbuf2 = alloca [7 x i8], align 1
  %tmpbuf = alloca [14 x i8], align 1
  %foldbuf = alloca [7 x i8], align 1
  %len = alloca i64, align 8
  %foldlen = alloca i64, align 8
  %reganch = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 15
  %0 = load i32* %reganch, align 4, !tbaa !0
  %and = lshr i32 %0, 4
  %and.lobit = and i32 %and, 1
  %1 = xor i32 %and.lobit, 1
  %2 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %type = getelementptr inbounds %struct.regnode* %c, i64 0, i32 1
  %3 = load i8* %type, align 1, !tbaa !1
  %conv2 = zext i8 %3 to i32
  switch i32 %conv2, label %sw.default [
    i32 17, label %sw.bb
    i32 16, label %while.cond144.preheader
    i32 34, label %sw.bb158
    i32 35, label %sw.bb250
    i32 10, label %sw.bb561
    i32 9, label %sw.bb562
    i32 12, label %sw.bb829
    i32 11, label %sw.bb831
    i32 18, label %sw.bb1108
    i32 19, label %sw.bb1186
    i32 20, label %sw.bb1274
    i32 21, label %sw.bb1352
    i32 22, label %sw.bb1440
    i32 23, label %sw.bb1514
    i32 24, label %sw.bb1598
    i32 25, label %sw.bb1672
    i32 26, label %sw.bb1756
    i32 27, label %sw.bb1814
    i32 28, label %sw.bb1894
    i32 29, label %sw.bb1952
  ]

while.cond144.preheader:                          ; preds = %entry
  %cmp145108 = icmp ult i8* %s, %strend
  br i1 %cmp145108, label %while.body147.lr.ph, label %return

while.body147.lr.ph:                              ; preds = %while.cond144.preheader
  %tobool150 = icmp eq i32 %norun, 0
  br label %while.body147

sw.bb:                                            ; preds = %entry
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %while.cond43.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %sw.bb
  %4 = load i8* %s, align 1, !tbaa !1
  %idxprom97 = zext i8 %4 to i64
  %arrayidx98 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom97
  %5 = load i8* %arrayidx98, align 1, !tbaa !1
  %conv399 = zext i8 %5 to i64
  %add.ptr100 = getelementptr inbounds i8* %s, i64 %conv399
  %cmp4101 = icmp ugt i8* %add.ptr100, %strend
  br i1 %cmp4101, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags = getelementptr inbounds %struct.regnode* %c, i64 0, i32 0
  %bitmap = getelementptr inbounds %struct.regnode* %c, i64 2
  %6 = bitcast %struct.regnode* %bitmap to [32 x i8]*
  %tobool34 = icmp eq i32 %norun, 0
  br label %while.body

while.cond43.preheader:                           ; preds = %sw.bb
  %cmp4490 = icmp ult i8* %s, %strend
  br i1 %cmp4490, label %while.body46.lr.ph, label %return

while.body46.lr.ph:                               ; preds = %while.cond43.preheader
  %flags48 = getelementptr inbounds %struct.regnode* %c, i64 0, i32 0
  %bitmap60 = getelementptr inbounds %struct.regnode* %c, i64 2
  %7 = bitcast %struct.regnode* %bitmap60 to [32 x i8]*
  %arrayidx70 = getelementptr inbounds [32 x i8]* %7, i64 0, i64 27
  %tobool131 = icmp eq i32 %norun, 0
  br label %while.body46

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %add.ptr104 = phi i8* [ %add.ptr100, %while.body.lr.ph ], [ %add.ptr, %while.cond.backedge ]
  %8 = phi i8 [ %4, %while.body.lr.ph ], [ %10, %while.cond.backedge ]
  %s.addr.0103 = phi i8* [ %s, %while.body.lr.ph ], [ %add.ptr104, %while.cond.backedge ]
  %tmp.0102 = phi i32 [ 1, %while.body.lr.ph ], [ %tmp.0.be, %while.cond.backedge ]
  %9 = load i8* %flags, align 1, !tbaa !1
  %and7 = and i8 %9, 32
  %tobool8 = icmp eq i8 %and7, 0
  %cmp11 = icmp sgt i8 %8, -1
  %or.cond34 = and i1 %tobool8, %cmp11
  br i1 %or.cond34, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %call = call fastcc signext i8 @S_reginclass(%struct.regnode* %c, i8* %s.addr.0103, i64* null, i8 signext %2) #5
  %tobool14 = icmp eq i8 %call, 0
  br i1 %tobool14, label %while.cond.backedge, label %if.then32

while.cond.backedge:                              ; preds = %cond.true, %cond.false22, %cond.true18, %if.then32, %lor.lhs.false35
  %tmp.0.be = phi i32 [ %1, %lor.lhs.false35 ], [ %1, %if.then32 ], [ 1, %cond.true18 ], [ 1, %cond.false22 ], [ 1, %cond.true ]
  %10 = load i8* %add.ptr104, align 1, !tbaa !1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %11 = load i8* %arrayidx, align 1, !tbaa !1
  %conv3 = zext i8 %11 to i64
  %add.ptr = getelementptr inbounds i8* %add.ptr104, i64 %conv3
  %cmp4 = icmp ugt i8* %add.ptr, %strend
  br i1 %cmp4, label %return, label %while.body

cond.false:                                       ; preds = %while.body
  %tobool17 = icmp eq i8 %9, 0
  br i1 %tobool17, label %cond.false22, label %cond.true18

cond.true18:                                      ; preds = %cond.false
  %call19 = call fastcc signext i8 @S_reginclass(%struct.regnode* %c, i8* %s.addr.0103, i64* null, i8 signext 0) #5
  %tobool21 = icmp eq i8 %call19, 0
  br i1 %tobool21, label %while.cond.backedge, label %if.then32

cond.false22:                                     ; preds = %cond.false
  %conv23 = zext i8 %8 to i32
  %shr32 = lshr i32 %conv23, 3
  %idxprom2533 = zext i32 %shr32 to i64
  %arrayidx26 = getelementptr inbounds [32 x i8]* %6, i64 0, i64 %idxprom2533
  %12 = load i8* %arrayidx26, align 1, !tbaa !1
  %conv27 = sext i8 %12 to i32
  %and29 = and i32 %conv23, 7
  %shl = shl i32 1, %and29
  %and30 = and i32 %conv27, %shl
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %while.cond.backedge, label %if.then32

if.then32:                                        ; preds = %cond.true18, %cond.false22, %cond.true
  %tobool33 = icmp eq i32 %tmp.0102, 0
  br i1 %tobool33, label %while.cond.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then32
  br i1 %tobool34, label %lor.lhs.false35, label %got_it

lor.lhs.false35:                                  ; preds = %land.lhs.true
  %call36 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.0103) #5
  %tobool37 = icmp eq i32 %call36, 0
  br i1 %tobool37, label %while.cond.backedge, label %got_it

while.body46:                                     ; preds = %if.end139, %while.body46.lr.ph
  %s.addr.192 = phi i8* [ %s, %while.body46.lr.ph ], [ %add.ptr140, %if.end139 ]
  %tmp.291 = phi i32 [ 1, %while.body46.lr.ph ], [ %tmp.3, %if.end139 ]
  %13 = load i8* %flags48, align 1, !tbaa !1
  %tobool50 = icmp eq i8 %13, 0
  br i1 %tobool50, label %cond.false55, label %cond.true51

cond.true51:                                      ; preds = %while.body46
  %call52 = call fastcc signext i8 @S_reginclass(%struct.regnode* %c, i8* %s.addr.192, i64* null, i8 signext 0) #5
  %tobool54 = icmp eq i8 %call52, 0
  br i1 %tobool54, label %lor.lhs.false68, label %if.then128

cond.false55:                                     ; preds = %while.body46
  %14 = load i8* %s.addr.192, align 1, !tbaa !1
  %conv56 = zext i8 %14 to i32
  %shr5729 = lshr i32 %conv56, 3
  %idxprom5930 = zext i32 %shr5729 to i64
  %arrayidx61 = getelementptr inbounds [32 x i8]* %7, i64 0, i64 %idxprom5930
  %15 = load i8* %arrayidx61, align 1, !tbaa !1
  %conv62 = sext i8 %15 to i32
  %and64 = and i32 %conv56, 7
  %shl65 = shl i32 1, %and64
  %and66 = and i32 %shl65, %conv62
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %lor.lhs.false68, label %if.then128

lor.lhs.false68:                                  ; preds = %cond.false55, %cond.true51
  %16 = load i8* %arrayidx70, align 1, !tbaa !1
  %tobool73 = icmp slt i8 %16, 0
  br i1 %tobool73, label %land.lhs.true74, label %if.end139

land.lhs.true74:                                  ; preds = %lor.lhs.false68
  %17 = load i8* %flags48, align 1, !tbaa !1
  %18 = and i8 %17, 34
  %19 = icmp eq i8 %18, 34
  br i1 %19, label %land.lhs.true84, label %if.end139

land.lhs.true84:                                  ; preds = %land.lhs.true74
  %add.ptr85 = getelementptr inbounds i8* %s.addr.192, i64 1
  %cmp86 = icmp ult i8* %add.ptr85, %strend
  br i1 %cmp86, label %land.lhs.true88, label %if.end139

land.lhs.true88:                                  ; preds = %land.lhs.true84
  %20 = load i8* %s.addr.192, align 1, !tbaa !1
  %conv90 = sext i8 %20 to i32
  %.off79 = add i8 %20, -65
  %21 = icmp ult i8 %.off79, 26
  %add = add nsw i32 %conv90, 32
  %add.conv90 = select i1 %21, i32 %add, i32 %conv90
  %cmp104 = icmp eq i32 %add.conv90, 115
  br i1 %cmp104, label %land.lhs.true106, label %if.end139

land.lhs.true106:                                 ; preds = %land.lhs.true88
  %22 = load i8* %add.ptr85, align 1, !tbaa !1
  %conv108 = sext i8 %22 to i32
  %.off80 = add i8 %22, -65
  %23 = icmp ult i8 %.off80, 26
  %add119 = add nsw i32 %conv108, 32
  %add119.conv108 = select i1 %23, i32 %add119, i32 %conv108
  %cmp125 = icmp eq i32 %add119.conv108, 115
  br i1 %cmp125, label %if.then128, label %if.end139

if.then128:                                       ; preds = %land.lhs.true106, %cond.true51, %cond.false55
  %skip.0 = phi i64 [ 1, %cond.true51 ], [ 1, %cond.false55 ], [ 2, %land.lhs.true106 ]
  %tobool129 = icmp eq i32 %tmp.291, 0
  br i1 %tobool129, label %if.end139, label %land.lhs.true130

land.lhs.true130:                                 ; preds = %if.then128
  br i1 %tobool131, label %lor.lhs.false132, label %got_it

lor.lhs.false132:                                 ; preds = %land.lhs.true130
  %call133 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.192) #5
  %tobool134 = icmp eq i32 %call133, 0
  br i1 %tobool134, label %if.end139, label %got_it

if.end139:                                        ; preds = %land.lhs.true74, %lor.lhs.false68, %land.lhs.true84, %land.lhs.true88, %land.lhs.true106, %if.then128, %lor.lhs.false132
  %tmp.3 = phi i32 [ %1, %lor.lhs.false132 ], [ %1, %if.then128 ], [ 1, %land.lhs.true74 ], [ 1, %land.lhs.true106 ], [ 1, %land.lhs.true88 ], [ 1, %land.lhs.true84 ], [ 1, %lor.lhs.false68 ]
  %skip.1 = phi i64 [ %skip.0, %lor.lhs.false132 ], [ %skip.0, %if.then128 ], [ 1, %land.lhs.true74 ], [ 1, %land.lhs.true106 ], [ 1, %land.lhs.true88 ], [ 1, %land.lhs.true84 ], [ 1, %lor.lhs.false68 ]
  %add.ptr140 = getelementptr inbounds i8* %s.addr.192, i64 %skip.1
  %cmp44 = icmp ult i8* %add.ptr140, %strend
  br i1 %cmp44, label %while.body46, label %return

while.body147:                                    ; preds = %while.body147.lr.ph, %if.else155
  %s.addr.2110 = phi i8* [ %s, %while.body147.lr.ph ], [ %incdec.ptr, %if.else155 ]
  %tmp.4109 = phi i32 [ 1, %while.body147.lr.ph ], [ %1, %if.else155 ]
  %tobool148 = icmp eq i32 %tmp.4109, 0
  br i1 %tobool148, label %if.else155, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %while.body147
  br i1 %tobool150, label %lor.lhs.false151, label %got_it

lor.lhs.false151:                                 ; preds = %land.lhs.true149
  %call152 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.2110) #5
  %tobool153 = icmp eq i32 %call152, 0
  br i1 %tobool153, label %if.else155, label %got_it

if.else155:                                       ; preds = %lor.lhs.false151, %while.body147
  %incdec.ptr = getelementptr inbounds i8* %s.addr.2110, i64 1
  %cmp145 = icmp ult i8* %incdec.ptr, %strend
  br i1 %cmp145, label %while.body147, label %return

sw.bb158:                                         ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.regnode* %c, i64 1, i32 0
  %str_len = getelementptr inbounds %struct.regnode* %c, i64 0, i32 0
  %24 = load i8* %str_len, align 1, !tbaa !1
  %conv159 = zext i8 %24 to i64
  %25 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and162 = and i32 %25, 8
  %cmp163 = icmp eq i32 %and162, 0
  br i1 %cmp163, label %if.else244, label %if.then165

if.then165:                                       ; preds = %sw.bb158
  %arraydecay171 = getelementptr inbounds [7 x i8]* %tmpbuf1, i64 0, i64 0
  %call172 = call i64 @Perl_to_utf8_lower(i8* %arraydecay, i8* %arraydecay171, i64* %ulen1) #6
  %arraydecay173 = getelementptr inbounds [7 x i8]* %tmpbuf2, i64 0, i64 0
  %call174 = call i64 @Perl_to_utf8_upper(i8* %arraydecay, i8* %arraydecay173, i64* %ulen2) #6
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %26, i64 0, i32 14
  %27 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp176 = icmp eq %struct.sv* %27, null
  br i1 %cmp176, label %lor.rhs, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %if.then165
  %28 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings179 = getelementptr inbounds %struct.cop* %28, i64 0, i32 14
  %29 = load %struct.sv** %cop_warnings179, align 8, !tbaa !3
  %cmp180 = icmp eq %struct.sv* %29, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp180, label %lor.rhs, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings183 = getelementptr inbounds %struct.cop* %30, i64 0, i32 14
  %31 = load %struct.sv** %cop_warnings183, align 8, !tbaa !3
  %cmp184 = icmp eq %struct.sv* %31, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp184, label %lor.end, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %land.lhs.true182
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings187 = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings187, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %33, i64 0, i32 0
  %34 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %34 to i8**
  %35 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx188 = getelementptr inbounds i8* %35, i64 11
  %36 = load i8* %arrayidx188, align 1, !tbaa !1
  %and190 = and i8 %36, 1
  %tobool191 = icmp eq i8 %and190, 0
  br i1 %tobool191, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false186, %land.lhs.true178, %if.then165
  %37 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings192 = getelementptr inbounds %struct.cop* %37, i64 0, i32 14
  %38 = load %struct.sv** %cop_warnings192, align 8, !tbaa !3
  %cmp193 = icmp eq %struct.sv* %38, null
  br i1 %cmp193, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %39 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and196 = and i8 %39, 1
  %tobool197 = icmp ne i8 %and196, 0
  %phitmp25 = select i1 %tobool197, i32 0, i32 255
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false186, %lor.rhs, %land.rhs, %land.lhs.true182
  %40 = phi i32 [ 0, %lor.lhs.false186 ], [ 0, %land.lhs.true182 ], [ 255, %lor.rhs ], [ %phitmp25, %land.rhs ]
  %call199 = call i64 @Perl_utf8n_to_uvuni(i8* %arraydecay171, i64 6, i64* null, i32 %40) #6
  %conv200 = trunc i64 %call199 to i32
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings202 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings202, align 8, !tbaa !3
  %cmp203 = icmp eq %struct.sv* %42, null
  br i1 %cmp203, label %lor.rhs221, label %land.lhs.true205

land.lhs.true205:                                 ; preds = %lor.end
  %43 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings206 = getelementptr inbounds %struct.cop* %43, i64 0, i32 14
  %44 = load %struct.sv** %cop_warnings206, align 8, !tbaa !3
  %cmp207 = icmp eq %struct.sv* %44, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp207, label %lor.rhs221, label %land.lhs.true209

land.lhs.true209:                                 ; preds = %land.lhs.true205
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings210 = getelementptr inbounds %struct.cop* %45, i64 0, i32 14
  %46 = load %struct.sv** %cop_warnings210, align 8, !tbaa !3
  %cmp211 = icmp eq %struct.sv* %46, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp211, label %lor.end230, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %land.lhs.true209
  %47 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings214 = getelementptr inbounds %struct.cop* %47, i64 0, i32 14
  %48 = load %struct.sv** %cop_warnings214, align 8, !tbaa !3
  %sv_any215 = getelementptr inbounds %struct.sv* %48, i64 0, i32 0
  %49 = load i8** %sv_any215, align 8, !tbaa !3
  %xpv_pv216 = bitcast i8* %49 to i8**
  %50 = load i8** %xpv_pv216, align 8, !tbaa !3
  %arrayidx217 = getelementptr inbounds i8* %50, i64 11
  %51 = load i8* %arrayidx217, align 1, !tbaa !1
  %and219 = and i8 %51, 1
  %tobool220 = icmp eq i8 %and219, 0
  br i1 %tobool220, label %lor.rhs221, label %lor.end230

lor.rhs221:                                       ; preds = %lor.lhs.false213, %land.lhs.true205, %lor.end
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings222 = getelementptr inbounds %struct.cop* %52, i64 0, i32 14
  %53 = load %struct.sv** %cop_warnings222, align 8, !tbaa !3
  %cmp223 = icmp eq %struct.sv* %53, null
  br i1 %cmp223, label %land.rhs225, label %lor.end230

land.rhs225:                                      ; preds = %lor.rhs221
  %54 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and227 = and i8 %54, 1
  %tobool228 = icmp ne i8 %and227, 0
  %phitmp26 = select i1 %tobool228, i32 0, i32 255
  br label %lor.end230

lor.end230:                                       ; preds = %lor.lhs.false213, %lor.rhs221, %land.rhs225, %land.lhs.true209
  %55 = phi i32 [ 0, %lor.lhs.false213 ], [ 0, %land.lhs.true209 ], [ 255, %lor.rhs221 ], [ %phitmp26, %land.rhs225 ]
  %call232 = call i64 @Perl_utf8n_to_uvuni(i8* %arraydecay173, i64 6, i64* null, i32 %55) #6
  %conv233 = trunc i64 %call232 to i32
  %add.ptr235 = getelementptr inbounds i8* %arraydecay, i64 %conv159
  %cmp236137 = icmp eq i8 %24, 0
  br i1 %cmp236137, label %do_exactf.loopexit, label %while.body238

while.body238:                                    ; preds = %lor.end230, %while.body238
  %sm.0139 = phi i8* [ %add.ptr242, %while.body238 ], [ %arraydecay, %lor.end230 ]
  %lnc.0138 = phi i64 [ %inc, %while.body238 ], [ 0, %lor.end230 ]
  %inc = add i64 %lnc.0138, 1
  %56 = load i8* %sm.0139, align 1, !tbaa !1
  %idxprom239 = zext i8 %56 to i64
  %arrayidx240 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom239
  %57 = load i8* %arrayidx240, align 1, !tbaa !1
  %idx.ext = zext i8 %57 to i64
  %add.ptr242 = getelementptr inbounds i8* %sm.0139, i64 %idx.ext
  %cmp236 = icmp ult i8* %add.ptr242, %add.ptr235
  br i1 %cmp236, label %while.body238, label %do_exactf.loopexit

if.else244:                                       ; preds = %sw.bb158
  %58 = load i8* %arraydecay, align 1, !tbaa !1
  %conv245 = zext i8 %58 to i32
  %idxprom246 = zext i8 %58 to i64
  %arrayidx247 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %idxprom246
  %59 = load i8* %arrayidx247, align 1, !tbaa !1
  %conv248 = zext i8 %59 to i32
  br label %do_exactf

sw.bb250:                                         ; preds = %entry
  %arraydecay252 = getelementptr inbounds %struct.regnode* %c, i64 1, i32 0
  %str_len253 = getelementptr inbounds %struct.regnode* %c, i64 0, i32 0
  %60 = load i8* %str_len253, align 1, !tbaa !1
  %conv254 = zext i8 %60 to i64
  %61 = load i8* %arraydecay252, align 1, !tbaa !1
  %conv257 = zext i8 %61 to i32
  %idxprom258 = zext i8 %61 to i64
  %arrayidx259 = getelementptr inbounds [0 x i8]* @PL_fold_locale, i64 0, i64 %idxprom258
  %62 = load i8* %arrayidx259, align 1, !tbaa !1
  %conv260 = zext i8 %62 to i32
  br label %do_exactf

do_exactf.loopexit:                               ; preds = %while.body238, %lor.end230
  %lnc.0.lcssa = phi i64 [ 0, %lor.end230 ], [ %inc, %while.body238 ]
  %.pre = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  br label %do_exactf

do_exactf:                                        ; preds = %do_exactf.loopexit, %if.else244, %sw.bb250
  %63 = phi i8 [ %2, %sw.bb250 ], [ %2, %if.else244 ], [ %.pre, %do_exactf.loopexit ]
  %ln.0 = phi i64 [ %conv254, %sw.bb250 ], [ %conv159, %if.else244 ], [ %conv159, %do_exactf.loopexit ]
  %lnc.1 = phi i64 [ %conv254, %sw.bb250 ], [ %conv159, %if.else244 ], [ %lnc.0.lcssa, %do_exactf.loopexit ]
  %c1.0 = phi i32 [ %conv257, %sw.bb250 ], [ %conv245, %if.else244 ], [ %conv200, %do_exactf.loopexit ]
  %c2.0 = phi i32 [ %conv260, %sw.bb250 ], [ %conv248, %if.else244 ], [ %conv233, %do_exactf.loopexit ]
  %m.0 = phi i8* [ %arraydecay252, %sw.bb250 ], [ %arraydecay, %if.else244 ], [ %arraydecay, %do_exactf.loopexit ]
  %tobool262 = icmp eq i8 %63, 0
  %conv264 = trunc i64 %lnc.1 to i32
  %sub = sub nsw i32 0, %conv264
  br i1 %tobool262, label %cond.false266, label %cond.true263

cond.true263:                                     ; preds = %do_exactf
  %call265 = call fastcc i8* @S_reghop3(i8* %strend, i32 %sub, i8* %s) #5
  br label %cond.end271

cond.false266:                                    ; preds = %do_exactf
  %idx.ext269 = sext i32 %sub to i64
  %add.ptr270 = getelementptr inbounds i8* %strend, i64 %idx.ext269
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false266, %cond.true263
  %cond272 = phi i8* [ %call265, %cond.true263 ], [ %add.ptr270, %cond.false266 ]
  %tobool273 = icmp ne i32 %norun, 0
  %cmp275 = icmp ult i8* %cond272, %s
  %or.cond38 = and i1 %tobool273, %cmp275
  %e.0 = select i1 %or.cond38, i8* %s, i8* %cond272
  %tobool279 = icmp eq i8 %2, 0
  %cmp288 = icmp eq i32 %c1.0, %c2.0
  %cmp491114 = icmp ult i8* %e.0, %s
  br i1 %tobool279, label %if.else486, label %if.then280

if.then280:                                       ; preds = %cond.end271
  br i1 %cmp288, label %while.cond291.preheader, label %while.cond383.preheader

while.cond383.preheader:                          ; preds = %if.then280
  br i1 %cmp491114, label %return, label %while.body386.lr.ph

while.body386.lr.ph:                              ; preds = %while.cond383.preheader
  %conv425 = zext i32 %c1.0 to i64
  %arraydecay449 = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %arraydecay452 = getelementptr inbounds [7 x i8]* %foldbuf, i64 0, i64 0
  %conv461 = zext i32 %c2.0 to i64
  br label %while.body386

while.cond291.preheader:                          ; preds = %if.then280
  br i1 %cmp491114, label %return, label %while.body294.lr.ph

while.body294.lr.ph:                              ; preds = %while.cond291.preheader
  %conv326 = zext i32 %c1.0 to i64
  %arraydecay346 = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %arraydecay349 = getelementptr inbounds [7 x i8]* %foldbuf, i64 0, i64 0
  br label %while.body294

while.body294:                                    ; preds = %while.body294.lr.ph, %if.end379
  %s.addr.3127 = phi i8* [ %s, %while.body294.lr.ph ], [ %add.ptr380, %if.end379 ]
  %64 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings295 = getelementptr inbounds %struct.cop* %64, i64 0, i32 14
  %65 = load %struct.sv** %cop_warnings295, align 8, !tbaa !3
  %cmp296 = icmp eq %struct.sv* %65, null
  br i1 %cmp296, label %lor.rhs314, label %land.lhs.true298

land.lhs.true298:                                 ; preds = %while.body294
  %66 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings299 = getelementptr inbounds %struct.cop* %66, i64 0, i32 14
  %67 = load %struct.sv** %cop_warnings299, align 8, !tbaa !3
  %cmp300 = icmp eq %struct.sv* %67, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp300, label %lor.rhs314, label %land.lhs.true302

land.lhs.true302:                                 ; preds = %land.lhs.true298
  %68 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings303 = getelementptr inbounds %struct.cop* %68, i64 0, i32 14
  %69 = load %struct.sv** %cop_warnings303, align 8, !tbaa !3
  %cmp304 = icmp eq %struct.sv* %69, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp304, label %lor.end323, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %land.lhs.true302
  %70 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings307 = getelementptr inbounds %struct.cop* %70, i64 0, i32 14
  %71 = load %struct.sv** %cop_warnings307, align 8, !tbaa !3
  %sv_any308 = getelementptr inbounds %struct.sv* %71, i64 0, i32 0
  %72 = load i8** %sv_any308, align 8, !tbaa !3
  %xpv_pv309 = bitcast i8* %72 to i8**
  %73 = load i8** %xpv_pv309, align 8, !tbaa !3
  %arrayidx310 = getelementptr inbounds i8* %73, i64 11
  %74 = load i8* %arrayidx310, align 1, !tbaa !1
  %and312 = and i8 %74, 1
  %tobool313 = icmp eq i8 %and312, 0
  br i1 %tobool313, label %lor.rhs314, label %lor.end323

lor.rhs314:                                       ; preds = %lor.lhs.false306, %land.lhs.true298, %while.body294
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings315 = getelementptr inbounds %struct.cop* %75, i64 0, i32 14
  %76 = load %struct.sv** %cop_warnings315, align 8, !tbaa !3
  %cmp316 = icmp eq %struct.sv* %76, null
  br i1 %cmp316, label %land.rhs318, label %lor.end323

land.rhs318:                                      ; preds = %lor.rhs314
  %77 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and320 = and i8 %77, 1
  %tobool321 = icmp ne i8 %and320, 0
  %phitmp23 = select i1 %tobool321, i32 0, i32 255
  br label %lor.end323

lor.end323:                                       ; preds = %lor.lhs.false306, %lor.rhs314, %land.rhs318, %land.lhs.true302
  %78 = phi i32 [ 0, %lor.lhs.false306 ], [ 0, %land.lhs.true302 ], [ 255, %lor.rhs314 ], [ %phitmp23, %land.rhs318 ]
  %call325 = call i64 @Perl_utf8n_to_uvuni(i8* %s.addr.3127, i64 13, i64* %len, i32 %78) #6
  %cmp327 = icmp eq i64 %call325, %conv326
  br i1 %cmp327, label %land.lhs.true329, label %if.else345

land.lhs.true329:                                 ; preds = %lor.end323
  %79 = load i64* %len, align 8, !tbaa !4
  %cmp330 = icmp eq i64 %ln.0, %79
  br i1 %cmp330, label %land.lhs.true339, label %lor.lhs.false332

lor.lhs.false332:                                 ; preds = %land.lhs.true329
  %80 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and333 = lshr i32 %80, 3
  %and333.tr = trunc i32 %and333 to i8
  %conv336 = and i8 %and333.tr, 1
  %call337 = call i32 @Perl_ibcmp_utf8(i8* %s.addr.3127, i8** null, i64 0, i8 signext %2, i8* %m.0, i8** null, i64 %ln.0, i8 signext %conv336) #6
  %tobool338 = icmp eq i32 %call337, 0
  br i1 %tobool338, label %if.else345, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %lor.lhs.false332, %land.lhs.true329
  br i1 %tobool273, label %got_it, label %lor.lhs.false341

lor.lhs.false341:                                 ; preds = %land.lhs.true339
  %call342 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.3127) #5
  %tobool343 = icmp eq i32 %call342, 0
  br i1 %tobool343, label %if.else345, label %got_it

if.else345:                                       ; preds = %lor.lhs.false341, %lor.lhs.false332, %lor.end323
  %call347 = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay346, i64 %call325) #6
  %call350 = call i64 @Perl_to_utf8_fold(i8* %arraydecay346, i8* %arraydecay349, i64* %foldlen) #6
  %cmp351 = icmp ne i64 %call350, %call325
  %cmp355 = icmp eq i64 %call350, %conv326
  %or.cond419 = and i1 %cmp351, %cmp355
  br i1 %or.cond419, label %land.lhs.true361, label %if.end379

land.lhs.true361:                                 ; preds = %if.else345
  %81 = load i64* %foldlen, align 8, !tbaa !4
  %cmp362 = icmp eq i64 %ln.0, %81
  br i1 %cmp362, label %land.lhs.true372, label %lor.lhs.false364

lor.lhs.false364:                                 ; preds = %land.lhs.true361
  %82 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and366 = lshr i32 %82, 3
  %and366.tr = trunc i32 %and366 to i8
  %conv369 = and i8 %and366.tr, 1
  %call370 = call i32 @Perl_ibcmp_utf8(i8* %arraydecay349, i8** null, i64 %81, i8 signext %2, i8* %m.0, i8** null, i64 %ln.0, i8 signext %conv369) #6
  %tobool371 = icmp eq i32 %call370, 0
  br i1 %tobool371, label %land.lhs.true372, label %if.end379

land.lhs.true372:                                 ; preds = %lor.lhs.false364, %land.lhs.true361
  br i1 %tobool273, label %got_it, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %land.lhs.true372
  %call375 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.3127) #5
  %tobool376 = icmp eq i32 %call375, 0
  br i1 %tobool376, label %if.end379, label %got_it

if.end379:                                        ; preds = %if.else345, %lor.lhs.false374, %lor.lhs.false364
  %83 = load i64* %len, align 8, !tbaa !4
  %add.ptr380 = getelementptr inbounds i8* %s.addr.3127, i64 %83
  %cmp292 = icmp ugt i8* %add.ptr380, %e.0
  br i1 %cmp292, label %return, label %while.body294

while.body386:                                    ; preds = %while.body386.lr.ph, %if.end482
  %s.addr.4134 = phi i8* [ %s, %while.body386.lr.ph ], [ %add.ptr483, %if.end482 ]
  %84 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings387 = getelementptr inbounds %struct.cop* %84, i64 0, i32 14
  %85 = load %struct.sv** %cop_warnings387, align 8, !tbaa !3
  %cmp388 = icmp eq %struct.sv* %85, null
  br i1 %cmp388, label %lor.rhs406, label %land.lhs.true390

land.lhs.true390:                                 ; preds = %while.body386
  %86 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings391 = getelementptr inbounds %struct.cop* %86, i64 0, i32 14
  %87 = load %struct.sv** %cop_warnings391, align 8, !tbaa !3
  %cmp392 = icmp eq %struct.sv* %87, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp392, label %lor.rhs406, label %land.lhs.true394

land.lhs.true394:                                 ; preds = %land.lhs.true390
  %88 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings395 = getelementptr inbounds %struct.cop* %88, i64 0, i32 14
  %89 = load %struct.sv** %cop_warnings395, align 8, !tbaa !3
  %cmp396 = icmp eq %struct.sv* %89, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp396, label %lor.end415, label %lor.lhs.false398

lor.lhs.false398:                                 ; preds = %land.lhs.true394
  %90 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings399 = getelementptr inbounds %struct.cop* %90, i64 0, i32 14
  %91 = load %struct.sv** %cop_warnings399, align 8, !tbaa !3
  %sv_any400 = getelementptr inbounds %struct.sv* %91, i64 0, i32 0
  %92 = load i8** %sv_any400, align 8, !tbaa !3
  %xpv_pv401 = bitcast i8* %92 to i8**
  %93 = load i8** %xpv_pv401, align 8, !tbaa !3
  %arrayidx402 = getelementptr inbounds i8* %93, i64 11
  %94 = load i8* %arrayidx402, align 1, !tbaa !1
  %and404 = and i8 %94, 1
  %tobool405 = icmp eq i8 %and404, 0
  br i1 %tobool405, label %lor.rhs406, label %lor.end415

lor.rhs406:                                       ; preds = %lor.lhs.false398, %land.lhs.true390, %while.body386
  %95 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings407 = getelementptr inbounds %struct.cop* %95, i64 0, i32 14
  %96 = load %struct.sv** %cop_warnings407, align 8, !tbaa !3
  %cmp408 = icmp eq %struct.sv* %96, null
  br i1 %cmp408, label %land.rhs410, label %lor.end415

land.rhs410:                                      ; preds = %lor.rhs406
  %97 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and412 = and i8 %97, 1
  %tobool413 = icmp ne i8 %and412, 0
  %phitmp = select i1 %tobool413, i32 0, i32 255
  br label %lor.end415

lor.end415:                                       ; preds = %lor.lhs.false398, %lor.rhs406, %land.rhs410, %land.lhs.true394
  %98 = phi i32 [ 0, %lor.lhs.false398 ], [ 0, %land.lhs.true394 ], [ 255, %lor.rhs406 ], [ %phitmp, %land.rhs410 ]
  %call417 = call i64 @Perl_utf8n_to_uvuni(i8* %s.addr.4134, i64 13, i64* %len, i32 %98) #6
  %cmp418 = icmp eq i64 %call417, 931
  %cmp421 = icmp eq i64 %call417, 962
  %or.cond = or i1 %cmp418, %cmp421
  %.call417 = select i1 %or.cond, i64 963, i64 %call417
  %cmp426 = icmp eq i64 %.call417, %conv425
  %cmp430 = icmp eq i64 %.call417, %conv461
  %or.cond420 = or i1 %cmp426, %cmp430
  br i1 %or.cond420, label %land.lhs.true432, label %if.else448

land.lhs.true432:                                 ; preds = %lor.end415
  %99 = load i64* %len, align 8, !tbaa !4
  %cmp433 = icmp eq i64 %ln.0, %99
  br i1 %cmp433, label %land.lhs.true442, label %lor.lhs.false435

lor.lhs.false435:                                 ; preds = %land.lhs.true432
  %100 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and436 = lshr i32 %100, 3
  %and436.tr = trunc i32 %and436 to i8
  %conv439 = and i8 %and436.tr, 1
  %call440 = call i32 @Perl_ibcmp_utf8(i8* %s.addr.4134, i8** null, i64 0, i8 signext %2, i8* %m.0, i8** null, i64 %ln.0, i8 signext %conv439) #6
  %tobool441 = icmp eq i32 %call440, 0
  br i1 %tobool441, label %if.else448, label %land.lhs.true442

land.lhs.true442:                                 ; preds = %lor.lhs.false435, %land.lhs.true432
  br i1 %tobool273, label %got_it, label %lor.lhs.false444

lor.lhs.false444:                                 ; preds = %land.lhs.true442
  %call445 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.4134) #5
  %tobool446 = icmp eq i32 %call445, 0
  br i1 %tobool446, label %if.else448, label %got_it

if.else448:                                       ; preds = %lor.end415, %lor.lhs.false444, %lor.lhs.false435
  %call450 = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay449, i64 %.call417) #6
  %call453 = call i64 @Perl_to_utf8_fold(i8* %arraydecay449, i8* %arraydecay452, i64* %foldlen) #6
  %cmp454 = icmp eq i64 %call453, %.call417
  br i1 %cmp454, label %if.end482, label %land.lhs.true456

land.lhs.true456:                                 ; preds = %if.else448
  %cmp458 = icmp eq i64 %call453, %conv425
  %cmp462 = icmp eq i64 %call453, %conv461
  %or.cond421 = or i1 %cmp458, %cmp462
  br i1 %or.cond421, label %land.lhs.true464, label %if.end482

land.lhs.true464:                                 ; preds = %land.lhs.true456
  %101 = load i64* %foldlen, align 8, !tbaa !4
  %cmp465 = icmp eq i64 %ln.0, %101
  br i1 %cmp465, label %land.lhs.true475, label %lor.lhs.false467

lor.lhs.false467:                                 ; preds = %land.lhs.true464
  %102 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and469 = lshr i32 %102, 3
  %and469.tr = trunc i32 %and469 to i8
  %conv472 = and i8 %and469.tr, 1
  %call473 = call i32 @Perl_ibcmp_utf8(i8* %arraydecay452, i8** null, i64 %101, i8 signext %2, i8* %m.0, i8** null, i64 %ln.0, i8 signext %conv472) #6
  %tobool474 = icmp eq i32 %call473, 0
  br i1 %tobool474, label %land.lhs.true475, label %if.end482

land.lhs.true475:                                 ; preds = %lor.lhs.false467, %land.lhs.true464
  br i1 %tobool273, label %got_it, label %lor.lhs.false477

lor.lhs.false477:                                 ; preds = %land.lhs.true475
  %call478 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.4134) #5
  %tobool479 = icmp eq i32 %call478, 0
  br i1 %tobool479, label %if.end482, label %got_it

if.end482:                                        ; preds = %land.lhs.true456, %lor.lhs.false477, %lor.lhs.false467, %if.else448
  %103 = load i64* %len, align 8, !tbaa !4
  %add.ptr483 = getelementptr inbounds i8* %s.addr.4134, i64 %103
  %cmp384 = icmp ugt i8* %add.ptr483, %e.0
  br i1 %cmp384, label %return, label %while.body386

if.else486:                                       ; preds = %cond.end271
  br i1 %cmp288, label %while.cond490.preheader, label %while.cond523.preheader

while.cond523.preheader:                          ; preds = %if.else486
  br i1 %cmp491114, label %return, label %while.body526.lr.ph

while.body526.lr.ph:                              ; preds = %while.cond523.preheader
  %cmp535 = icmp eq i64 %ln.0, 1
  %conv543 = trunc i64 %ln.0 to i32
  br label %while.body526

while.cond490.preheader:                          ; preds = %if.else486
  br i1 %cmp491114, label %return, label %while.body493.lr.ph

while.body493.lr.ph:                              ; preds = %while.cond490.preheader
  %cmp498 = icmp eq i64 %ln.0, 1
  %conv506 = trunc i64 %ln.0 to i32
  br label %while.body493

while.body493:                                    ; preds = %while.body493.lr.ph, %if.end519
  %s.addr.5115 = phi i8* [ %s, %while.body493.lr.ph ], [ %incdec.ptr520, %if.end519 ]
  %104 = load i8* %s.addr.5115, align 1, !tbaa !1
  %conv494 = zext i8 %104 to i32
  %cmp495 = icmp eq i32 %conv494, %c1.0
  br i1 %cmp495, label %land.lhs.true497, label %if.end519

land.lhs.true497:                                 ; preds = %while.body493
  br i1 %cmp498, label %land.lhs.true513, label %lor.lhs.false500

lor.lhs.false500:                                 ; preds = %land.lhs.true497
  %105 = load i8* %type, align 1, !tbaa !1
  %cmp503 = icmp eq i8 %105, 34
  br i1 %cmp503, label %cond.true505, label %cond.false509

cond.true505:                                     ; preds = %lor.lhs.false500
  %call507 = call i32 @Perl_ibcmp(i8* %s.addr.5115, i8* %m.0, i32 %conv506) #6
  %tobool508 = icmp eq i32 %call507, 0
  br i1 %tobool508, label %land.lhs.true513, label %if.end519

cond.false509:                                    ; preds = %lor.lhs.false500
  %call511 = call i32 @Perl_ibcmp_locale(i8* %s.addr.5115, i8* %m.0, i32 %conv506) #6
  %tobool512 = icmp eq i32 %call511, 0
  br i1 %tobool512, label %land.lhs.true513, label %if.end519

land.lhs.true513:                                 ; preds = %cond.true505, %cond.false509, %land.lhs.true497
  br i1 %tobool273, label %got_it, label %lor.lhs.false515

lor.lhs.false515:                                 ; preds = %land.lhs.true513
  %call516 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.5115) #5
  %tobool517 = icmp eq i32 %call516, 0
  br i1 %tobool517, label %if.end519, label %got_it

if.end519:                                        ; preds = %cond.true505, %lor.lhs.false515, %cond.false509, %while.body493
  %incdec.ptr520 = getelementptr inbounds i8* %s.addr.5115, i64 1
  %cmp491 = icmp ugt i8* %incdec.ptr520, %e.0
  br i1 %cmp491, label %return, label %while.body493

while.body526:                                    ; preds = %while.body526.lr.ph, %if.end556
  %s.addr.6121 = phi i8* [ %s, %while.body526.lr.ph ], [ %incdec.ptr557, %if.end556 ]
  %106 = load i8* %s.addr.6121, align 1, !tbaa !1
  %conv527 = zext i8 %106 to i32
  %cmp528 = icmp eq i32 %conv527, %c1.0
  %cmp532 = icmp eq i32 %conv527, %c2.0
  %or.cond39 = or i1 %cmp528, %cmp532
  br i1 %or.cond39, label %land.lhs.true534, label %if.end556

land.lhs.true534:                                 ; preds = %while.body526
  br i1 %cmp535, label %land.lhs.true550, label %lor.lhs.false537

lor.lhs.false537:                                 ; preds = %land.lhs.true534
  %107 = load i8* %type, align 1, !tbaa !1
  %cmp540 = icmp eq i8 %107, 34
  br i1 %cmp540, label %cond.true542, label %cond.false546

cond.true542:                                     ; preds = %lor.lhs.false537
  %call544 = call i32 @Perl_ibcmp(i8* %s.addr.6121, i8* %m.0, i32 %conv543) #6
  %tobool545 = icmp eq i32 %call544, 0
  br i1 %tobool545, label %land.lhs.true550, label %if.end556

cond.false546:                                    ; preds = %lor.lhs.false537
  %call548 = call i32 @Perl_ibcmp_locale(i8* %s.addr.6121, i8* %m.0, i32 %conv543) #6
  %tobool549 = icmp eq i32 %call548, 0
  br i1 %tobool549, label %land.lhs.true550, label %if.end556

land.lhs.true550:                                 ; preds = %cond.true542, %cond.false546, %land.lhs.true534
  br i1 %tobool273, label %got_it, label %lor.lhs.false552

lor.lhs.false552:                                 ; preds = %land.lhs.true550
  %call553 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.6121) #5
  %tobool554 = icmp eq i32 %call553, 0
  br i1 %tobool554, label %if.end556, label %got_it

if.end556:                                        ; preds = %while.body526, %cond.true542, %lor.lhs.false552, %cond.false546
  %incdec.ptr557 = getelementptr inbounds i8* %s.addr.6121, i64 1
  %cmp524 = icmp ugt i8* %incdec.ptr557, %e.0
  br i1 %cmp524, label %return, label %while.body526

sw.bb561:                                         ; preds = %entry
  %108 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or = or i32 %108, 1
  store i32 %or, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb562

sw.bb562:                                         ; preds = %entry, %sw.bb561
  %tobool563 = icmp eq i8 %2, 0
  %109 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp683 = icmp eq i8* %109, %s
  br i1 %tobool563, label %if.else682, label %if.then564

if.then564:                                       ; preds = %sw.bb562
  br i1 %cmp683, label %if.end576, label %if.else568

if.else568:                                       ; preds = %if.then564
  %call570 = call fastcc i8* @S_reghop3(i8* %s, i32 -1, i8* %109) #5
  %110 = load i8* %call570, align 1, !tbaa !1
  %idxprom571 = zext i8 %110 to i64
  %arrayidx572 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom571
  %111 = load i8* %arrayidx572, align 1, !tbaa !1
  %conv573 = zext i8 %111 to i64
  %call574 = call i64 @Perl_utf8n_to_uvuni(i8* %call570, i64 %conv573, i64* null, i32 0) #6
  %conv575 = trunc i64 %call574 to i32
  br label %if.end576

if.end576:                                        ; preds = %if.then564, %if.else568
  %tmp.5 = phi i32 [ %conv575, %if.else568 ], [ 10, %if.then564 ]
  %112 = load i8* %type, align 1, !tbaa !1
  %cmp579 = icmp eq i8 %112, 9
  br i1 %cmp579, label %cond.true581, label %cond.false585

cond.true581:                                     ; preds = %if.end576
  %conv582 = sext i32 %tmp.5 to i64
  %call583 = call signext i8 @Perl_is_uni_alnum(i64 %conv582) #6
  %conv584 = sext i8 %call583 to i32
  br label %cond.end610

cond.false585:                                    ; preds = %if.end576
  %cmp586 = icmp slt i32 %tmp.5, 256
  br i1 %cmp586, label %cond.true588, label %cond.false604

cond.true588:                                     ; preds = %cond.false585
  %cmp590 = icmp ult i32 %tmp.5, 128
  br i1 %cmp590, label %land.rhs592, label %land.end603

land.rhs592:                                      ; preds = %cond.true588
  %idxprom593 = sext i32 %tmp.5 to i64
  %call594 = call i16** @__ctype_b_loc() #6
  %113 = load i16** %call594, align 8, !tbaa !3
  %arrayidx595 = getelementptr inbounds i16* %113, i64 %idxprom593
  %114 = load i16* %arrayidx595, align 2, !tbaa !5
  %and597 = and i16 %114, 8
  %cmp600 = icmp eq i32 %tmp.5, 95
  %not.tobool598 = icmp ne i16 %and597, 0
  %cmp600. = or i1 %cmp600, %not.tobool598
  br label %land.end603

land.end603:                                      ; preds = %land.rhs592, %cond.true588
  %115 = phi i1 [ false, %cond.true588 ], [ %cmp600., %land.rhs592 ]
  %land.ext = zext i1 %115 to i32
  br label %cond.end610

cond.false604:                                    ; preds = %cond.false585
  %conv605 = sext i32 %tmp.5 to i64
  %call606 = call signext i8 @Perl_is_uni_alnum_lc(i64 %conv605) #6
  %conv607 = sext i8 %call606 to i32
  br label %cond.end610

cond.end610:                                      ; preds = %land.end603, %cond.false604, %cond.true581
  %cond611 = phi i32 [ %conv584, %cond.true581 ], [ %land.ext, %land.end603 ], [ %conv607, %cond.false604 ]
  %cmp612 = icmp ne i32 %cond611, 0
  %conv613 = zext i1 %cmp612 to i32
  %116 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool614 = icmp eq %struct.sv* %116, null
  br i1 %tobool614, label %if.then615, label %while.cond618.preheader

if.then615:                                       ; preds = %cond.end610
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call616 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond618.preheader

while.cond618.preheader:                          ; preds = %if.then615, %cond.end610
  %tobool673 = icmp eq i32 %norun, 0
  br label %while.cond618.outer

while.cond618.outer:                              ; preds = %while.cond618.preheader, %lor.lhs.false674
  %tmp.6.ph = phi i32 [ %124, %lor.lhs.false674 ], [ %conv613, %while.cond618.preheader ]
  %s.addr.7.ph = phi i8* [ %add.ptr622, %lor.lhs.false674 ], [ %s, %while.cond618.preheader ]
  br label %while.cond618

while.cond618:                                    ; preds = %while.cond618.outer, %cond.end664
  %s.addr.7 = phi i8* [ %add.ptr622, %cond.end664 ], [ %s.addr.7.ph, %while.cond618.outer ]
  %117 = load i8* %s.addr.7, align 1, !tbaa !1
  %idxprom619 = zext i8 %117 to i64
  %arrayidx620 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom619
  %118 = load i8* %arrayidx620, align 1, !tbaa !1
  %conv621 = zext i8 %118 to i64
  %add.ptr622 = getelementptr inbounds i8* %s.addr.7, i64 %conv621
  %cmp623 = icmp ugt i8* %add.ptr622, %strend
  br i1 %cmp623, label %if.end818, label %while.body625

while.body625:                                    ; preds = %while.cond618
  %119 = load i8* %type, align 1, !tbaa !1
  %cmp628 = icmp eq i8 %119, 9
  br i1 %cmp628, label %cond.true630, label %cond.false632

cond.true630:                                     ; preds = %while.body625
  %120 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call631 = call i64 @Perl_swash_fetch(%struct.sv* %120, i8* %s.addr.7, i8 signext %2) #6
  br label %cond.end664

cond.false632:                                    ; preds = %while.body625
  %call633 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.7, i64* null) #6
  %cmp634 = icmp ult i64 %call633, 256
  %call637 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.7, i64* null) #6
  br i1 %cmp634, label %cond.true636, label %cond.false657

cond.true636:                                     ; preds = %cond.false632
  %cmp639 = icmp ult i64 %call637, 128
  br i1 %cmp639, label %land.rhs641, label %land.end655

land.rhs641:                                      ; preds = %cond.true636
  %call642 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.7, i64* null) #6
  %sext21 = shl i64 %call642, 32
  %idxprom644 = ashr exact i64 %sext21, 32
  %call645 = call i16** @__ctype_b_loc() #6
  %121 = load i16** %call645, align 8, !tbaa !3
  %arrayidx646 = getelementptr inbounds i16* %121, i64 %idxprom644
  %122 = load i16* %arrayidx646, align 2, !tbaa !5
  %and648 = and i16 %122, 8
  %tobool649 = icmp eq i16 %and648, 0
  br i1 %tobool649, label %lor.rhs650, label %land.end655

lor.rhs650:                                       ; preds = %land.rhs641
  %call651 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.7, i64* null) #6
  %cmp652 = icmp eq i64 %call651, 95
  br label %land.end655

land.end655:                                      ; preds = %land.rhs641, %lor.rhs650, %cond.true636
  %123 = phi i1 [ false, %cond.true636 ], [ true, %land.rhs641 ], [ %cmp652, %lor.rhs650 ]
  %land.ext656 = zext i1 %123 to i64
  br label %cond.end664

cond.false657:                                    ; preds = %cond.false632
  %call659 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call637) #6
  %conv660 = sext i8 %call659 to i64
  br label %cond.end664

cond.end664:                                      ; preds = %land.end655, %cond.false657, %cond.true630
  %cond665 = phi i64 [ %call631, %cond.true630 ], [ %land.ext656, %land.end655 ], [ %conv660, %cond.false657 ]
  %lnot = icmp eq i64 %cond665, 0
  %lnot.ext = zext i1 %lnot to i32
  %cmp667 = icmp eq i32 %tmp.6.ph, %lnot.ext
  br i1 %cmp667, label %if.then669, label %while.cond618

if.then669:                                       ; preds = %cond.end664
  br i1 %tobool673, label %lor.lhs.false674, label %got_it

lor.lhs.false674:                                 ; preds = %if.then669
  %124 = xor i32 %tmp.6.ph, 1
  %call675 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.7) #5
  %tobool676 = icmp eq i32 %call675, 0
  br i1 %tobool676, label %while.cond618.outer, label %got_it

if.else682:                                       ; preds = %sw.bb562
  br i1 %cmp683, label %cond.end689, label %cond.true685

cond.true685:                                     ; preds = %if.else682
  %add.ptr686 = getelementptr inbounds i8* %s, i64 -1
  %125 = load i8* %add.ptr686, align 1, !tbaa !1
  %conv687 = zext i8 %125 to i32
  br label %cond.end689

cond.end689:                                      ; preds = %if.else682, %cond.true685
  %cond690 = phi i32 [ %conv687, %cond.true685 ], [ 10, %if.else682 ]
  %126 = load i8* %type, align 1, !tbaa !1
  %cmp693 = icmp eq i8 %126, 9
  br i1 %cmp693, label %cond.true695, label %cond.false717

cond.true695:                                     ; preds = %cond.end689
  %cond690.off = add i32 %cond690, -65
  %127 = icmp ult i32 %cond690.off, 26
  %cond690.off19 = add i32 %cond690, -97
  %128 = icmp ult i32 %cond690.off19, 26
  %or.cond41 = or i1 %127, %128
  %cond690.off20 = add i32 %cond690, -48
  %129 = icmp ult i32 %cond690.off20, 10
  %or.cond43 = or i1 %or.cond41, %129
  %cmp714 = icmp eq i32 %cond690, 95
  %.cmp714 = or i1 %or.cond43, %cmp714
  br label %cond.end735

cond.false717:                                    ; preds = %cond.end689
  %and718 = and i32 %cond690, 128
  %cmp719 = icmp eq i32 %and718, 0
  br i1 %cmp719, label %land.rhs721, label %cond.end735

land.rhs721:                                      ; preds = %cond.false717
  %idxprom72218 = zext i32 %cond690 to i64
  %call723 = call i16** @__ctype_b_loc() #6
  %130 = load i16** %call723, align 8, !tbaa !3
  %arrayidx724 = getelementptr inbounds i16* %130, i64 %idxprom72218
  %131 = load i16* %arrayidx724, align 2, !tbaa !5
  %and726 = and i16 %131, 8
  %cmp729 = icmp eq i32 %cond690, 95
  %not.tobool727 = icmp ne i16 %and726, 0
  %cmp729. = or i1 %cmp729, %not.tobool727
  br label %cond.end735

cond.end735:                                      ; preds = %cond.true695, %land.rhs721, %cond.false717
  %.sink = phi i1 [ false, %cond.false717 ], [ %cmp729., %land.rhs721 ], [ %.cmp714, %cond.true695 ]
  %lor.ext = zext i1 %.sink to i32
  %cmp740143 = icmp ult i8* %s, %strend
  br i1 %cmp740143, label %while.body742.lr.ph, label %if.end818

while.body742.lr.ph:                              ; preds = %cond.end735
  %tobool809 = icmp eq i32 %norun, 0
  br label %while.body742

while.body742:                                    ; preds = %if.end815, %while.body742.lr.ph
  %s.addr.8145 = phi i8* [ %s, %while.body742.lr.ph ], [ %incdec.ptr816, %if.end815 ]
  %tmp.8144 = phi i32 [ %lor.ext, %while.body742.lr.ph ], [ %tmp.9, %if.end815 ]
  %132 = load i8* %type, align 1, !tbaa !1
  %cmp745 = icmp eq i8 %132, 9
  %133 = load i8* %s.addr.8145, align 1, !tbaa !1
  br i1 %cmp745, label %cond.true747, label %cond.false777

cond.true747:                                     ; preds = %while.body742
  %.off76 = add i8 %133, -65
  %134 = icmp ult i8 %.off76, 26
  %.off77 = add i8 %133, -97
  %135 = icmp ult i8 %.off77, 26
  %or.cond82 = or i1 %134, %135
  br i1 %or.cond82, label %cond.end798, label %lor.lhs.false763

lor.lhs.false763:                                 ; preds = %cond.true747
  %.off78 = add i8 %133, -48
  %136 = icmp ult i8 %.off78, 10
  %cmp773 = icmp eq i8 %133, 95
  %.cmp773 = or i1 %136, %cmp773
  br label %cond.end798

cond.false777:                                    ; preds = %while.body742
  %cmp78017 = icmp sgt i8 %133, -1
  br i1 %cmp78017, label %land.rhs782, label %cond.end798

land.rhs782:                                      ; preds = %cond.false777
  %idxprom784 = sext i8 %133 to i64
  %call785 = call i16** @__ctype_b_loc() #6
  %137 = load i16** %call785, align 8, !tbaa !3
  %arrayidx786 = getelementptr inbounds i16* %137, i64 %idxprom784
  %138 = load i16* %arrayidx786, align 2, !tbaa !5
  %and788 = and i16 %138, 8
  %tobool789 = icmp eq i16 %and788, 0
  br i1 %tobool789, label %lor.rhs790, label %cond.end798

lor.rhs790:                                       ; preds = %land.rhs782
  %139 = load i8* %s.addr.8145, align 1, !tbaa !1
  %cmp792 = icmp eq i8 %139, 95
  br label %cond.end798

cond.end798:                                      ; preds = %lor.lhs.false763, %cond.true747, %land.rhs782, %cond.false777, %lor.rhs790
  %.sink2037 = phi i1 [ false, %cond.false777 ], [ true, %land.rhs782 ], [ %cmp792, %lor.rhs790 ], [ true, %cond.true747 ], [ %.cmp773, %lor.lhs.false763 ]
  %140 = zext i1 %.sink2037 to i32
  %lnot.ext802 = xor i32 %140, 1
  %cmp803 = icmp eq i32 %tmp.8144, %lnot.ext802
  br i1 %cmp803, label %if.then805, label %if.end815

if.then805:                                       ; preds = %cond.end798
  br i1 %tobool809, label %lor.lhs.false810, label %got_it

lor.lhs.false810:                                 ; preds = %if.then805
  %lnot807 = icmp eq i32 %tmp.8144, 0
  %lnot.ext808 = zext i1 %lnot807 to i32
  %call811 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.8145) #5
  %tobool812 = icmp eq i32 %call811, 0
  br i1 %tobool812, label %if.end815, label %got_it

if.end815:                                        ; preds = %lor.lhs.false810, %cond.end798
  %tmp.9 = phi i32 [ %lnot.ext808, %lor.lhs.false810 ], [ %tmp.8144, %cond.end798 ]
  %incdec.ptr816 = getelementptr inbounds i8* %s.addr.8145, i64 1
  %cmp740 = icmp ult i8* %incdec.ptr816, %strend
  br i1 %cmp740, label %while.body742, label %if.end818

if.end818:                                        ; preds = %while.cond618, %cond.end735, %if.end815
  %tmp.10 = phi i32 [ %lor.ext, %cond.end735 ], [ %tmp.9, %if.end815 ], [ %tmp.6.ph, %while.cond618 ]
  %s.addr.9 = phi i8* [ %s, %cond.end735 ], [ %incdec.ptr816, %if.end815 ], [ %s.addr.7, %while.cond618 ]
  %minlen = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 10
  %141 = load i32* %minlen, align 4, !tbaa !0
  %tobool819 = icmp ne i32 %141, 0
  %tobool821 = icmp eq i32 %tmp.10, 0
  %or.cond47 = or i1 %tobool819, %tobool821
  br i1 %or.cond47, label %return, label %land.lhs.true822

land.lhs.true822:                                 ; preds = %if.end818
  %tobool823 = icmp eq i32 %norun, 0
  br i1 %tobool823, label %lor.lhs.false824, label %got_it

lor.lhs.false824:                                 ; preds = %land.lhs.true822
  %call825 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.9) #5
  %tobool826 = icmp eq i32 %call825, 0
  br i1 %tobool826, label %return, label %got_it

sw.bb829:                                         ; preds = %entry
  %142 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or830 = or i32 %142, 1
  store i32 %or830, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb831

sw.bb831:                                         ; preds = %entry, %sw.bb829
  %tobool832 = icmp eq i8 %2, 0
  %143 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp959 = icmp eq i8* %143, %s
  br i1 %tobool832, label %if.else958, label %if.then833

if.then833:                                       ; preds = %sw.bb831
  br i1 %cmp959, label %if.end846, label %if.else837

if.else837:                                       ; preds = %if.then833
  %call840 = call fastcc i8* @S_reghop3(i8* %s, i32 -1, i8* %143) #5
  %144 = load i8* %call840, align 1, !tbaa !1
  %idxprom841 = zext i8 %144 to i64
  %arrayidx842 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom841
  %145 = load i8* %arrayidx842, align 1, !tbaa !1
  %conv843 = zext i8 %145 to i64
  %call844 = call i64 @Perl_utf8n_to_uvuni(i8* %call840, i64 %conv843, i64* null, i32 0) #6
  %conv845 = trunc i64 %call844 to i32
  br label %if.end846

if.end846:                                        ; preds = %if.then833, %if.else837
  %tmp.11 = phi i32 [ %conv845, %if.else837 ], [ 10, %if.then833 ]
  %146 = load i8* %type, align 1, !tbaa !1
  %cmp849 = icmp eq i8 %146, 11
  br i1 %cmp849, label %cond.true851, label %cond.false855

cond.true851:                                     ; preds = %if.end846
  %conv852 = sext i32 %tmp.11 to i64
  %call853 = call signext i8 @Perl_is_uni_alnum(i64 %conv852) #6
  %conv854 = sext i8 %call853 to i32
  br label %cond.end882

cond.false855:                                    ; preds = %if.end846
  %cmp856 = icmp slt i32 %tmp.11, 256
  br i1 %cmp856, label %cond.true858, label %cond.false876

cond.true858:                                     ; preds = %cond.false855
  %cmp860 = icmp ult i32 %tmp.11, 128
  br i1 %cmp860, label %land.rhs862, label %land.end874

land.rhs862:                                      ; preds = %cond.true858
  %idxprom863 = sext i32 %tmp.11 to i64
  %call864 = call i16** @__ctype_b_loc() #6
  %147 = load i16** %call864, align 8, !tbaa !3
  %arrayidx865 = getelementptr inbounds i16* %147, i64 %idxprom863
  %148 = load i16* %arrayidx865, align 2, !tbaa !5
  %and867 = and i16 %148, 8
  %cmp870 = icmp eq i32 %tmp.11, 95
  %not.tobool868 = icmp ne i16 %and867, 0
  %cmp870. = or i1 %cmp870, %not.tobool868
  br label %land.end874

land.end874:                                      ; preds = %land.rhs862, %cond.true858
  %149 = phi i1 [ false, %cond.true858 ], [ %cmp870., %land.rhs862 ]
  %land.ext875 = zext i1 %149 to i32
  br label %cond.end882

cond.false876:                                    ; preds = %cond.false855
  %conv877 = sext i32 %tmp.11 to i64
  %call878 = call signext i8 @Perl_is_uni_alnum_lc(i64 %conv877) #6
  %conv879 = sext i8 %call878 to i32
  br label %cond.end882

cond.end882:                                      ; preds = %land.end874, %cond.false876, %cond.true851
  %cond883 = phi i32 [ %conv854, %cond.true851 ], [ %land.ext875, %land.end874 ], [ %conv879, %cond.false876 ]
  %cmp884 = icmp ne i32 %cond883, 0
  %conv885 = zext i1 %cmp884 to i32
  %150 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool886 = icmp eq %struct.sv* %150, null
  br i1 %tobool886, label %if.then887, label %while.cond890.preheader

if.then887:                                       ; preds = %cond.end882
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call888 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond890.preheader

while.cond890.preheader:                          ; preds = %if.then887, %cond.end882
  %tobool949 = icmp eq i32 %norun, 0
  br label %while.cond890.outer

while.cond890.outer:                              ; preds = %while.cond890.preheader, %if.then944
  %tmp.12.ph = phi i32 [ %158, %if.then944 ], [ %conv885, %while.cond890.preheader ]
  %s.addr.10.ph = phi i8* [ %add.ptr894, %if.then944 ], [ %s, %while.cond890.preheader ]
  br label %while.cond890

while.cond890:                                    ; preds = %while.cond890.outer, %lor.lhs.false950
  %s.addr.10 = phi i8* [ %add.ptr894, %lor.lhs.false950 ], [ %s.addr.10.ph, %while.cond890.outer ]
  %151 = load i8* %s.addr.10, align 1, !tbaa !1
  %idxprom891 = zext i8 %151 to i64
  %arrayidx892 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom891
  %152 = load i8* %arrayidx892, align 1, !tbaa !1
  %conv893 = zext i8 %152 to i64
  %add.ptr894 = getelementptr inbounds i8* %s.addr.10, i64 %conv893
  %cmp895 = icmp ugt i8* %add.ptr894, %strend
  br i1 %cmp895, label %if.end1096, label %while.body897

while.body897:                                    ; preds = %while.cond890
  %153 = load i8* %type, align 1, !tbaa !1
  %cmp900 = icmp eq i8 %153, 11
  br i1 %cmp900, label %cond.true902, label %cond.false904

cond.true902:                                     ; preds = %while.body897
  %154 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call903 = call i64 @Perl_swash_fetch(%struct.sv* %154, i8* %s.addr.10, i8 signext %2) #6
  br label %cond.end937

cond.false904:                                    ; preds = %while.body897
  %call905 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.10, i64* null) #6
  %cmp906 = icmp ult i64 %call905, 256
  %call909 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.10, i64* null) #6
  br i1 %cmp906, label %cond.true908, label %cond.false930

cond.true908:                                     ; preds = %cond.false904
  %cmp911 = icmp ult i64 %call909, 128
  br i1 %cmp911, label %land.rhs913, label %land.end928

land.rhs913:                                      ; preds = %cond.true908
  %call914 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.10, i64* null) #6
  %sext16 = shl i64 %call914, 32
  %idxprom916 = ashr exact i64 %sext16, 32
  %call917 = call i16** @__ctype_b_loc() #6
  %155 = load i16** %call917, align 8, !tbaa !3
  %arrayidx918 = getelementptr inbounds i16* %155, i64 %idxprom916
  %156 = load i16* %arrayidx918, align 2, !tbaa !5
  %and920 = and i16 %156, 8
  %tobool921 = icmp eq i16 %and920, 0
  br i1 %tobool921, label %lor.rhs922, label %land.end928

lor.rhs922:                                       ; preds = %land.rhs913
  %call923 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.10, i64* null) #6
  %cmp924 = icmp eq i64 %call923, 95
  br label %land.end928

land.end928:                                      ; preds = %land.rhs913, %lor.rhs922, %cond.true908
  %157 = phi i1 [ false, %cond.true908 ], [ true, %land.rhs913 ], [ %cmp924, %lor.rhs922 ]
  %land.ext929 = zext i1 %157 to i64
  br label %cond.end937

cond.false930:                                    ; preds = %cond.false904
  %call932 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call909) #6
  %conv933 = sext i8 %call932 to i64
  br label %cond.end937

cond.end937:                                      ; preds = %land.end928, %cond.false930, %cond.true902
  %cond938 = phi i64 [ %call903, %cond.true902 ], [ %land.ext929, %land.end928 ], [ %conv933, %cond.false930 ]
  %lnot940 = icmp eq i64 %cond938, 0
  %lnot.ext941 = zext i1 %lnot940 to i32
  %cmp942 = icmp eq i32 %tmp.12.ph, %lnot.ext941
  br i1 %cmp942, label %if.then944, label %if.else948

if.then944:                                       ; preds = %cond.end937
  %158 = xor i32 %tmp.12.ph, 1
  br label %while.cond890.outer

if.else948:                                       ; preds = %cond.end937
  br i1 %tobool949, label %lor.lhs.false950, label %got_it

lor.lhs.false950:                                 ; preds = %if.else948
  %call951 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.10) #5
  %tobool952 = icmp eq i32 %call951, 0
  br i1 %tobool952, label %while.cond890, label %got_it

if.else958:                                       ; preds = %sw.bb831
  br i1 %cmp959, label %cond.end965, label %cond.true961

cond.true961:                                     ; preds = %if.else958
  %add.ptr962 = getelementptr inbounds i8* %s, i64 -1
  %159 = load i8* %add.ptr962, align 1, !tbaa !1
  %conv963 = zext i8 %159 to i32
  br label %cond.end965

cond.end965:                                      ; preds = %if.else958, %cond.true961
  %cond966 = phi i32 [ %conv963, %cond.true961 ], [ 10, %if.else958 ]
  %160 = load i8* %type, align 1, !tbaa !1
  %cmp969 = icmp eq i8 %160, 11
  br i1 %cmp969, label %cond.true971, label %cond.false994

cond.true971:                                     ; preds = %cond.end965
  %cond966.off = add i32 %cond966, -65
  %161 = icmp ult i32 %cond966.off, 26
  %cond966.off14 = add i32 %cond966, -97
  %162 = icmp ult i32 %cond966.off14, 26
  %or.cond49 = or i1 %161, %162
  %cond966.off15 = add i32 %cond966, -48
  %163 = icmp ult i32 %cond966.off15, 10
  %or.cond51 = or i1 %or.cond49, %163
  %cmp990 = icmp eq i32 %cond966, 95
  %.cmp990 = or i1 %or.cond51, %cmp990
  br label %cond.end1012

cond.false994:                                    ; preds = %cond.end965
  %and995 = and i32 %cond966, 128
  %cmp996 = icmp eq i32 %and995, 0
  br i1 %cmp996, label %land.rhs998, label %cond.end1012

land.rhs998:                                      ; preds = %cond.false994
  %idxprom99913 = zext i32 %cond966 to i64
  %call1000 = call i16** @__ctype_b_loc() #6
  %164 = load i16** %call1000, align 8, !tbaa !3
  %arrayidx1001 = getelementptr inbounds i16* %164, i64 %idxprom99913
  %165 = load i16* %arrayidx1001, align 2, !tbaa !5
  %and1003 = and i16 %165, 8
  %cmp1006 = icmp eq i32 %cond966, 95
  %not.tobool1004 = icmp ne i16 %and1003, 0
  %cmp1006. = or i1 %cmp1006, %not.tobool1004
  br label %cond.end1012

cond.end1012:                                     ; preds = %cond.true971, %land.rhs998, %cond.false994
  %.sink2041 = phi i1 [ false, %cond.false994 ], [ %cmp1006., %land.rhs998 ], [ %.cmp990, %cond.true971 ]
  %lor.ext993 = zext i1 %.sink2041 to i32
  %cmp1017155 = icmp ult i8* %s, %strend
  br i1 %cmp1017155, label %while.body1019.lr.ph, label %if.end1096

while.body1019.lr.ph:                             ; preds = %cond.end1012
  %tobool1087 = icmp eq i32 %norun, 0
  br label %while.body1019

while.body1019:                                   ; preds = %if.end1093, %while.body1019.lr.ph
  %s.addr.11157 = phi i8* [ %s, %while.body1019.lr.ph ], [ %incdec.ptr1094, %if.end1093 ]
  %tmp.14156 = phi i32 [ %lor.ext993, %while.body1019.lr.ph ], [ %tmp.15, %if.end1093 ]
  %166 = load i8* %type, align 1, !tbaa !1
  %cmp1022 = icmp eq i8 %166, 11
  %167 = load i8* %s.addr.11157, align 1, !tbaa !1
  br i1 %cmp1022, label %cond.true1024, label %cond.false1054

cond.true1024:                                    ; preds = %while.body1019
  %.off73 = add i8 %167, -65
  %168 = icmp ult i8 %.off73, 26
  %.off74 = add i8 %167, -97
  %169 = icmp ult i8 %.off74, 26
  %or.cond84 = or i1 %168, %169
  br i1 %or.cond84, label %cond.end1075, label %lor.lhs.false1040

lor.lhs.false1040:                                ; preds = %cond.true1024
  %.off75 = add i8 %167, -48
  %170 = icmp ult i8 %.off75, 10
  %cmp1050 = icmp eq i8 %167, 95
  %.cmp1050 = or i1 %170, %cmp1050
  br label %cond.end1075

cond.false1054:                                   ; preds = %while.body1019
  %cmp105712 = icmp sgt i8 %167, -1
  br i1 %cmp105712, label %land.rhs1059, label %cond.end1075

land.rhs1059:                                     ; preds = %cond.false1054
  %idxprom1061 = sext i8 %167 to i64
  %call1062 = call i16** @__ctype_b_loc() #6
  %171 = load i16** %call1062, align 8, !tbaa !3
  %arrayidx1063 = getelementptr inbounds i16* %171, i64 %idxprom1061
  %172 = load i16* %arrayidx1063, align 2, !tbaa !5
  %and1065 = and i16 %172, 8
  %tobool1066 = icmp eq i16 %and1065, 0
  br i1 %tobool1066, label %lor.rhs1067, label %cond.end1075

lor.rhs1067:                                      ; preds = %land.rhs1059
  %173 = load i8* %s.addr.11157, align 1, !tbaa !1
  %cmp1069 = icmp eq i8 %173, 95
  br label %cond.end1075

cond.end1075:                                     ; preds = %lor.lhs.false1040, %cond.true1024, %land.rhs1059, %cond.false1054, %lor.rhs1067
  %.sink2042 = phi i1 [ false, %cond.false1054 ], [ true, %land.rhs1059 ], [ %cmp1069, %lor.rhs1067 ], [ true, %cond.true1024 ], [ %.cmp1050, %lor.lhs.false1040 ]
  %174 = zext i1 %.sink2042 to i32
  %lnot.ext1079 = xor i32 %174, 1
  %cmp1080 = icmp eq i32 %tmp.14156, %lnot.ext1079
  br i1 %cmp1080, label %if.then1082, label %if.else1086

if.then1082:                                      ; preds = %cond.end1075
  %lnot1084 = icmp eq i32 %tmp.14156, 0
  %lnot.ext1085 = zext i1 %lnot1084 to i32
  br label %if.end1093

if.else1086:                                      ; preds = %cond.end1075
  br i1 %tobool1087, label %lor.lhs.false1088, label %got_it

lor.lhs.false1088:                                ; preds = %if.else1086
  %call1089 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.11157) #5
  %tobool1090 = icmp eq i32 %call1089, 0
  br i1 %tobool1090, label %if.end1093, label %got_it

if.end1093:                                       ; preds = %lor.lhs.false1088, %if.then1082
  %tmp.15 = phi i32 [ %lnot.ext1085, %if.then1082 ], [ %tmp.14156, %lor.lhs.false1088 ]
  %incdec.ptr1094 = getelementptr inbounds i8* %s.addr.11157, i64 1
  %cmp1017 = icmp ult i8* %incdec.ptr1094, %strend
  br i1 %cmp1017, label %while.body1019, label %if.end1096

if.end1096:                                       ; preds = %while.cond890, %cond.end1012, %if.end1093
  %tmp.16 = phi i32 [ %lor.ext993, %cond.end1012 ], [ %tmp.15, %if.end1093 ], [ %tmp.12.ph, %while.cond890 ]
  %s.addr.12 = phi i8* [ %s, %cond.end1012 ], [ %incdec.ptr1094, %if.end1093 ], [ %s.addr.10, %while.cond890 ]
  %minlen1097 = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 10
  %175 = load i32* %minlen1097, align 4, !tbaa !0
  %176 = or i32 %175, %tmp.16
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %land.lhs.true1101, label %return

land.lhs.true1101:                                ; preds = %if.end1096
  %tobool1102 = icmp eq i32 %norun, 0
  br i1 %tobool1102, label %lor.lhs.false1103, label %got_it

lor.lhs.false1103:                                ; preds = %land.lhs.true1101
  %call1104 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.12) #5
  %tobool1105 = icmp eq i32 %call1104, 0
  br i1 %tobool1105, label %return, label %got_it

sw.bb1108:                                        ; preds = %entry
  %tobool1109 = icmp eq i8 %2, 0
  br i1 %tobool1109, label %while.cond1140.preheader, label %if.then1110

while.cond1140.preheader:                         ; preds = %sw.bb1108
  %cmp1141169 = icmp ult i8* %s, %strend
  br i1 %cmp1141169, label %while.body1143.lr.ph, label %return

while.body1143.lr.ph:                             ; preds = %while.cond1140.preheader
  %tobool1174 = icmp eq i32 %norun, 0
  br label %while.body1143

if.then1110:                                      ; preds = %sw.bb1108
  %178 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool1111 = icmp eq %struct.sv* %178, null
  br i1 %tobool1111, label %if.then1112, label %while.cond1115.preheader

if.then1112:                                      ; preds = %if.then1110
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1113 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond1115.preheader

while.cond1115.preheader:                         ; preds = %if.then1112, %if.then1110
  %179 = load i8* %s, align 1, !tbaa !1
  %idxprom1116176 = zext i8 %179 to i64
  %arrayidx1117177 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1116176
  %180 = load i8* %arrayidx1117177, align 1, !tbaa !1
  %conv1118178 = zext i8 %180 to i64
  %add.ptr1119179 = getelementptr inbounds i8* %s, i64 %conv1118178
  %cmp1120180 = icmp ugt i8* %add.ptr1119179, %strend
  br i1 %cmp1120180, label %return, label %while.body1122.lr.ph

while.body1122.lr.ph:                             ; preds = %while.cond1115.preheader
  %tobool1128 = icmp eq i32 %norun, 0
  br label %while.body1122

while.body1122:                                   ; preds = %while.cond1115.backedge, %while.body1122.lr.ph
  %add.ptr1119183 = phi i8* [ %add.ptr1119179, %while.body1122.lr.ph ], [ %add.ptr1119, %while.cond1115.backedge ]
  %s.addr.13182 = phi i8* [ %s, %while.body1122.lr.ph ], [ %add.ptr1119183, %while.cond1115.backedge ]
  %tmp.17181 = phi i32 [ 1, %while.body1122.lr.ph ], [ %tmp.17.be, %while.cond1115.backedge ]
  %181 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call1123 = call i64 @Perl_swash_fetch(%struct.sv* %181, i8* %s.addr.13182, i8 signext %2) #6
  %tobool1124 = icmp eq i64 %call1123, 0
  br i1 %tobool1124, label %while.cond1115.backedge, label %if.then1125

while.cond1115.backedge:                          ; preds = %while.body1122, %if.then1125, %lor.lhs.false1129
  %tmp.17.be = phi i32 [ %1, %lor.lhs.false1129 ], [ %1, %if.then1125 ], [ 1, %while.body1122 ]
  %182 = load i8* %add.ptr1119183, align 1, !tbaa !1
  %idxprom1116 = zext i8 %182 to i64
  %arrayidx1117 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1116
  %183 = load i8* %arrayidx1117, align 1, !tbaa !1
  %conv1118 = zext i8 %183 to i64
  %add.ptr1119 = getelementptr inbounds i8* %add.ptr1119183, i64 %conv1118
  %cmp1120 = icmp ugt i8* %add.ptr1119, %strend
  br i1 %cmp1120, label %return, label %while.body1122

if.then1125:                                      ; preds = %while.body1122
  %tobool1126 = icmp eq i32 %tmp.17181, 0
  br i1 %tobool1126, label %while.cond1115.backedge, label %land.lhs.true1127

land.lhs.true1127:                                ; preds = %if.then1125
  br i1 %tobool1128, label %lor.lhs.false1129, label %got_it

lor.lhs.false1129:                                ; preds = %land.lhs.true1127
  %call1130 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.13182) #5
  %tobool1131 = icmp eq i32 %call1130, 0
  br i1 %tobool1131, label %while.cond1115.backedge, label %got_it

while.body1143:                                   ; preds = %while.body1143.lr.ph, %if.end1182
  %s.addr.14171 = phi i8* [ %s, %while.body1143.lr.ph ], [ %incdec.ptr1183, %if.end1182 ]
  %tmp.19170 = phi i32 [ 1, %while.body1143.lr.ph ], [ %tmp.20, %if.end1182 ]
  %184 = load i8* %s.addr.14171, align 1, !tbaa !1
  %.off70 = add i8 %184, -65
  %185 = icmp ult i8 %.off70, 26
  %.off71 = add i8 %184, -97
  %186 = icmp ult i8 %.off71, 26
  %or.cond86 = or i1 %185, %186
  br i1 %or.cond86, label %if.then1171, label %lor.lhs.false1159

lor.lhs.false1159:                                ; preds = %while.body1143
  %.off72 = add i8 %184, -48
  %187 = icmp ult i8 %.off72, 10
  %cmp1169 = icmp eq i8 %184, 95
  %or.cond64 = or i1 %187, %cmp1169
  br i1 %or.cond64, label %if.then1171, label %if.end1182

if.then1171:                                      ; preds = %lor.lhs.false1159, %while.body1143
  %tobool1172 = icmp eq i32 %tmp.19170, 0
  br i1 %tobool1172, label %if.end1182, label %land.lhs.true1173

land.lhs.true1173:                                ; preds = %if.then1171
  br i1 %tobool1174, label %lor.lhs.false1175, label %got_it

lor.lhs.false1175:                                ; preds = %land.lhs.true1173
  %call1176 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.14171) #5
  %tobool1177 = icmp eq i32 %call1176, 0
  br i1 %tobool1177, label %if.end1182, label %got_it

if.end1182:                                       ; preds = %lor.lhs.false1159, %if.then1171, %lor.lhs.false1175
  %tmp.20 = phi i32 [ %1, %lor.lhs.false1175 ], [ %1, %if.then1171 ], [ 1, %lor.lhs.false1159 ]
  %incdec.ptr1183 = getelementptr inbounds i8* %s.addr.14171, i64 1
  %cmp1141 = icmp ult i8* %incdec.ptr1183, %strend
  br i1 %cmp1141, label %while.body1143, label %return

sw.bb1186:                                        ; preds = %entry
  %188 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1187 = or i32 %188, 1
  store i32 %or1187, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool1188 = icmp eq i8 %2, 0
  br i1 %tobool1188, label %while.cond1239.preheader, label %while.cond1190.preheader

while.cond1190.preheader:                         ; preds = %sw.bb1186
  %189 = load i8* %s, align 1, !tbaa !1
  %idxprom1191194 = zext i8 %189 to i64
  %arrayidx1192195 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1191194
  %190 = load i8* %arrayidx1192195, align 1, !tbaa !1
  %conv1193196 = zext i8 %190 to i64
  %add.ptr1194197 = getelementptr inbounds i8* %s, i64 %conv1193196
  %cmp1195198 = icmp ugt i8* %add.ptr1194197, %strend
  br i1 %cmp1195198, label %return, label %while.body1197.lr.ph

while.body1197.lr.ph:                             ; preds = %while.cond1190.preheader
  %tobool1227 = icmp eq i32 %norun, 0
  br label %while.body1197

while.cond1239.preheader:                         ; preds = %sw.bb1186
  %cmp1240187 = icmp ult i8* %s, %strend
  br i1 %cmp1240187, label %while.body1242.lr.ph, label %return

while.body1242.lr.ph:                             ; preds = %while.cond1239.preheader
  %tobool1262 = icmp eq i32 %norun, 0
  br label %while.body1242

while.body1197:                                   ; preds = %while.body1197.lr.ph, %while.cond1190.backedge
  %add.ptr1194201 = phi i8* [ %add.ptr1194197, %while.body1197.lr.ph ], [ %add.ptr1194, %while.cond1190.backedge ]
  %s.addr.15200 = phi i8* [ %s, %while.body1197.lr.ph ], [ %add.ptr1194201, %while.cond1190.backedge ]
  %tmp.21199 = phi i32 [ 1, %while.body1197.lr.ph ], [ %tmp.21.be, %while.cond1190.backedge ]
  %call1198 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.15200, i64* null) #6
  %cmp1199 = icmp ult i64 %call1198, 256
  %call1202 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.15200, i64* null) #6
  br i1 %cmp1199, label %cond.true1201, label %cond.false1219

cond.true1201:                                    ; preds = %while.body1197
  %cmp1204 = icmp ult i64 %call1202, 128
  br i1 %cmp1204, label %land.lhs.true1206, label %while.cond1190.backedge

while.cond1190.backedge:                          ; preds = %cond.true1201, %lor.lhs.false1215, %cond.false1219, %if.then1224, %lor.lhs.false1228
  %tmp.21.be = phi i32 [ %1, %lor.lhs.false1228 ], [ %1, %if.then1224 ], [ 1, %cond.false1219 ], [ 1, %lor.lhs.false1215 ], [ 1, %cond.true1201 ]
  %191 = load i8* %add.ptr1194201, align 1, !tbaa !1
  %idxprom1191 = zext i8 %191 to i64
  %arrayidx1192 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1191
  %192 = load i8* %arrayidx1192, align 1, !tbaa !1
  %conv1193 = zext i8 %192 to i64
  %add.ptr1194 = getelementptr inbounds i8* %add.ptr1194201, i64 %conv1193
  %cmp1195 = icmp ugt i8* %add.ptr1194, %strend
  br i1 %cmp1195, label %return, label %while.body1197

land.lhs.true1206:                                ; preds = %cond.true1201
  %call1207 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.15200, i64* null) #6
  %sext11 = shl i64 %call1207, 32
  %idxprom1209 = ashr exact i64 %sext11, 32
  %call1210 = call i16** @__ctype_b_loc() #6
  %193 = load i16** %call1210, align 8, !tbaa !3
  %arrayidx1211 = getelementptr inbounds i16* %193, i64 %idxprom1209
  %194 = load i16* %arrayidx1211, align 2, !tbaa !5
  %and1213 = and i16 %194, 8
  %tobool1214 = icmp eq i16 %and1213, 0
  br i1 %tobool1214, label %lor.lhs.false1215, label %if.then1224

lor.lhs.false1215:                                ; preds = %land.lhs.true1206
  %call1216 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.15200, i64* null) #6
  %cmp1217 = icmp eq i64 %call1216, 95
  br i1 %cmp1217, label %if.then1224, label %while.cond1190.backedge

cond.false1219:                                   ; preds = %while.body1197
  %call1221 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call1202) #6
  %tobool1223 = icmp eq i8 %call1221, 0
  br i1 %tobool1223, label %while.cond1190.backedge, label %if.then1224

if.then1224:                                      ; preds = %land.lhs.true1206, %cond.false1219, %lor.lhs.false1215
  %tobool1225 = icmp eq i32 %tmp.21199, 0
  br i1 %tobool1225, label %while.cond1190.backedge, label %land.lhs.true1226

land.lhs.true1226:                                ; preds = %if.then1224
  br i1 %tobool1227, label %lor.lhs.false1228, label %got_it

lor.lhs.false1228:                                ; preds = %land.lhs.true1226
  %call1229 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.15200) #5
  %tobool1230 = icmp eq i32 %call1229, 0
  br i1 %tobool1230, label %while.cond1190.backedge, label %got_it

while.body1242:                                   ; preds = %while.body1242.lr.ph, %if.end1270
  %s.addr.16189 = phi i8* [ %s, %while.body1242.lr.ph ], [ %incdec.ptr1271, %if.end1270 ]
  %tmp.23188 = phi i32 [ 1, %while.body1242.lr.ph ], [ %tmp.24, %if.end1270 ]
  %195 = load i8* %s.addr.16189, align 1, !tbaa !1
  %cmp124510 = icmp sgt i8 %195, -1
  br i1 %cmp124510, label %land.lhs.true1247, label %if.end1270

land.lhs.true1247:                                ; preds = %while.body1242
  %idxprom1249 = sext i8 %195 to i64
  %call1250 = call i16** @__ctype_b_loc() #6
  %196 = load i16** %call1250, align 8, !tbaa !3
  %arrayidx1251 = getelementptr inbounds i16* %196, i64 %idxprom1249
  %197 = load i16* %arrayidx1251, align 2, !tbaa !5
  %and1253 = and i16 %197, 8
  %tobool1254 = icmp eq i16 %and1253, 0
  br i1 %tobool1254, label %lor.lhs.false1255, label %if.then1259

lor.lhs.false1255:                                ; preds = %land.lhs.true1247
  %198 = load i8* %s.addr.16189, align 1, !tbaa !1
  %cmp1257 = icmp eq i8 %198, 95
  br i1 %cmp1257, label %if.then1259, label %if.end1270

if.then1259:                                      ; preds = %land.lhs.true1247, %lor.lhs.false1255
  %tobool1260 = icmp eq i32 %tmp.23188, 0
  br i1 %tobool1260, label %if.end1270, label %land.lhs.true1261

land.lhs.true1261:                                ; preds = %if.then1259
  br i1 %tobool1262, label %lor.lhs.false1263, label %got_it

lor.lhs.false1263:                                ; preds = %land.lhs.true1261
  %call1264 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.16189) #5
  %tobool1265 = icmp eq i32 %call1264, 0
  br i1 %tobool1265, label %if.end1270, label %got_it

if.end1270:                                       ; preds = %while.body1242, %lor.lhs.false1255, %if.then1259, %lor.lhs.false1263
  %tmp.24 = phi i32 [ %1, %lor.lhs.false1263 ], [ %1, %if.then1259 ], [ 1, %lor.lhs.false1255 ], [ 1, %while.body1242 ]
  %incdec.ptr1271 = getelementptr inbounds i8* %s.addr.16189, i64 1
  %cmp1240 = icmp ult i8* %incdec.ptr1271, %strend
  br i1 %cmp1240, label %while.body1242, label %return

sw.bb1274:                                        ; preds = %entry
  %tobool1275 = icmp eq i8 %2, 0
  br i1 %tobool1275, label %while.cond1306.preheader, label %if.then1276

while.cond1306.preheader:                         ; preds = %sw.bb1274
  %cmp1307205 = icmp ult i8* %s, %strend
  br i1 %cmp1307205, label %while.body1309.lr.ph, label %return

while.body1309.lr.ph:                             ; preds = %while.cond1306.preheader
  %tobool1340 = icmp eq i32 %norun, 0
  br label %while.body1309

if.then1276:                                      ; preds = %sw.bb1274
  %199 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool1277 = icmp eq %struct.sv* %199, null
  br i1 %tobool1277, label %if.then1278, label %while.cond1281.preheader

if.then1278:                                      ; preds = %if.then1276
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1279 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond1281.preheader

while.cond1281.preheader:                         ; preds = %if.then1278, %if.then1276
  %200 = load i8* %s, align 1, !tbaa !1
  %idxprom1282211 = zext i8 %200 to i64
  %arrayidx1283212 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1282211
  %201 = load i8* %arrayidx1283212, align 1, !tbaa !1
  %conv1284213 = zext i8 %201 to i64
  %add.ptr1285214 = getelementptr inbounds i8* %s, i64 %conv1284213
  %cmp1286215 = icmp ugt i8* %add.ptr1285214, %strend
  br i1 %cmp1286215, label %return, label %while.body1288.lr.ph

while.body1288.lr.ph:                             ; preds = %while.cond1281.preheader
  %tobool1294 = icmp eq i32 %norun, 0
  br label %while.body1288

while.body1288:                                   ; preds = %while.cond1281.backedge, %while.body1288.lr.ph
  %add.ptr1285218 = phi i8* [ %add.ptr1285214, %while.body1288.lr.ph ], [ %add.ptr1285, %while.cond1281.backedge ]
  %s.addr.17217 = phi i8* [ %s, %while.body1288.lr.ph ], [ %add.ptr1285218, %while.cond1281.backedge ]
  %tmp.25216 = phi i32 [ 1, %while.body1288.lr.ph ], [ %tmp.25.be, %while.cond1281.backedge ]
  %202 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call1289 = call i64 @Perl_swash_fetch(%struct.sv* %202, i8* %s.addr.17217, i8 signext %2) #6
  %tobool1290 = icmp eq i64 %call1289, 0
  br i1 %tobool1290, label %if.then1291, label %while.cond1281.backedge

while.cond1281.backedge:                          ; preds = %while.body1288, %if.then1291, %lor.lhs.false1295
  %tmp.25.be = phi i32 [ %1, %lor.lhs.false1295 ], [ %1, %if.then1291 ], [ 1, %while.body1288 ]
  %203 = load i8* %add.ptr1285218, align 1, !tbaa !1
  %idxprom1282 = zext i8 %203 to i64
  %arrayidx1283 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1282
  %204 = load i8* %arrayidx1283, align 1, !tbaa !1
  %conv1284 = zext i8 %204 to i64
  %add.ptr1285 = getelementptr inbounds i8* %add.ptr1285218, i64 %conv1284
  %cmp1286 = icmp ugt i8* %add.ptr1285, %strend
  br i1 %cmp1286, label %return, label %while.body1288

if.then1291:                                      ; preds = %while.body1288
  %tobool1292 = icmp eq i32 %tmp.25216, 0
  br i1 %tobool1292, label %while.cond1281.backedge, label %land.lhs.true1293

land.lhs.true1293:                                ; preds = %if.then1291
  br i1 %tobool1294, label %lor.lhs.false1295, label %got_it

lor.lhs.false1295:                                ; preds = %land.lhs.true1293
  %call1296 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.17217) #5
  %tobool1297 = icmp eq i32 %call1296, 0
  br i1 %tobool1297, label %while.cond1281.backedge, label %got_it

while.body1309:                                   ; preds = %while.body1309.lr.ph, %if.end1348
  %s.addr.18207 = phi i8* [ %s, %while.body1309.lr.ph ], [ %incdec.ptr1349, %if.end1348 ]
  %tmp.27206 = phi i32 [ 1, %while.body1309.lr.ph ], [ %tmp.28, %if.end1348 ]
  %205 = load i8* %s.addr.18207, align 1, !tbaa !1
  %.off67 = add i8 %205, -65
  %206 = icmp ult i8 %.off67, 26
  %.off68 = add i8 %205, -97
  %207 = icmp ult i8 %.off68, 26
  %or.cond88 = or i1 %206, %207
  br i1 %or.cond88, label %if.end1348, label %lor.lhs.false1325

lor.lhs.false1325:                                ; preds = %while.body1309
  %.off69 = add i8 %205, -48
  %208 = icmp ult i8 %.off69, 10
  %cmp1335 = icmp eq i8 %205, 95
  %or.cond65 = or i1 %208, %cmp1335
  br i1 %or.cond65, label %if.end1348, label %if.then1337

if.then1337:                                      ; preds = %lor.lhs.false1325
  %tobool1338 = icmp eq i32 %tmp.27206, 0
  br i1 %tobool1338, label %if.end1348, label %land.lhs.true1339

land.lhs.true1339:                                ; preds = %if.then1337
  br i1 %tobool1340, label %lor.lhs.false1341, label %got_it

lor.lhs.false1341:                                ; preds = %land.lhs.true1339
  %call1342 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.18207) #5
  %tobool1343 = icmp eq i32 %call1342, 0
  br i1 %tobool1343, label %if.end1348, label %got_it

if.end1348:                                       ; preds = %while.body1309, %lor.lhs.false1325, %if.then1337, %lor.lhs.false1341
  %tmp.28 = phi i32 [ %1, %lor.lhs.false1341 ], [ %1, %if.then1337 ], [ 1, %lor.lhs.false1325 ], [ 1, %while.body1309 ]
  %incdec.ptr1349 = getelementptr inbounds i8* %s.addr.18207, i64 1
  %cmp1307 = icmp ult i8* %incdec.ptr1349, %strend
  br i1 %cmp1307, label %while.body1309, label %return

sw.bb1352:                                        ; preds = %entry
  %209 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1353 = or i32 %209, 1
  store i32 %or1353, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool1354 = icmp eq i8 %2, 0
  br i1 %tobool1354, label %while.cond1405.preheader, label %while.cond1356.preheader

while.cond1356.preheader:                         ; preds = %sw.bb1352
  %210 = load i8* %s, align 1, !tbaa !1
  %idxprom1357229 = zext i8 %210 to i64
  %arrayidx1358230 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1357229
  %211 = load i8* %arrayidx1358230, align 1, !tbaa !1
  %conv1359231 = zext i8 %211 to i64
  %add.ptr1360232 = getelementptr inbounds i8* %s, i64 %conv1359231
  %cmp1361233 = icmp ugt i8* %add.ptr1360232, %strend
  br i1 %cmp1361233, label %return, label %while.body1363.lr.ph

while.body1363.lr.ph:                             ; preds = %while.cond1356.preheader
  %tobool1393 = icmp eq i32 %norun, 0
  br label %while.body1363

while.cond1405.preheader:                         ; preds = %sw.bb1352
  %cmp1406222 = icmp ult i8* %s, %strend
  br i1 %cmp1406222, label %while.body1408.lr.ph, label %return

while.body1408.lr.ph:                             ; preds = %while.cond1405.preheader
  %tobool1428 = icmp eq i32 %norun, 0
  br label %while.body1408

while.body1363:                                   ; preds = %while.body1363.lr.ph, %while.cond1356.backedge
  %add.ptr1360236 = phi i8* [ %add.ptr1360232, %while.body1363.lr.ph ], [ %add.ptr1360, %while.cond1356.backedge ]
  %s.addr.19235 = phi i8* [ %s, %while.body1363.lr.ph ], [ %add.ptr1360236, %while.cond1356.backedge ]
  %tmp.29234 = phi i32 [ 1, %while.body1363.lr.ph ], [ %tmp.29.be, %while.cond1356.backedge ]
  %call1364 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.19235, i64* null) #6
  %cmp1365 = icmp ult i64 %call1364, 256
  %call1368 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.19235, i64* null) #6
  br i1 %cmp1365, label %cond.true1367, label %cond.false1385

cond.true1367:                                    ; preds = %while.body1363
  %cmp1370 = icmp ult i64 %call1368, 128
  br i1 %cmp1370, label %land.lhs.true1372, label %if.then1390

land.lhs.true1372:                                ; preds = %cond.true1367
  %call1373 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.19235, i64* null) #6
  %sext9 = shl i64 %call1373, 32
  %idxprom1375 = ashr exact i64 %sext9, 32
  %call1376 = call i16** @__ctype_b_loc() #6
  %212 = load i16** %call1376, align 8, !tbaa !3
  %arrayidx1377 = getelementptr inbounds i16* %212, i64 %idxprom1375
  %213 = load i16* %arrayidx1377, align 2, !tbaa !5
  %and1379 = and i16 %213, 8
  %tobool1380 = icmp eq i16 %and1379, 0
  br i1 %tobool1380, label %lor.lhs.false1381, label %while.cond1356.backedge

lor.lhs.false1381:                                ; preds = %land.lhs.true1372
  %call1382 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.19235, i64* null) #6
  %cmp1383 = icmp eq i64 %call1382, 95
  br i1 %cmp1383, label %while.cond1356.backedge, label %if.then1390

while.cond1356.backedge:                          ; preds = %lor.lhs.false1381, %cond.false1385, %land.lhs.true1372, %if.then1390, %lor.lhs.false1394
  %tmp.29.be = phi i32 [ %1, %lor.lhs.false1394 ], [ %1, %if.then1390 ], [ 1, %land.lhs.true1372 ], [ 1, %cond.false1385 ], [ 1, %lor.lhs.false1381 ]
  %214 = load i8* %add.ptr1360236, align 1, !tbaa !1
  %idxprom1357 = zext i8 %214 to i64
  %arrayidx1358 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1357
  %215 = load i8* %arrayidx1358, align 1, !tbaa !1
  %conv1359 = zext i8 %215 to i64
  %add.ptr1360 = getelementptr inbounds i8* %add.ptr1360236, i64 %conv1359
  %cmp1361 = icmp ugt i8* %add.ptr1360, %strend
  br i1 %cmp1361, label %return, label %while.body1363

cond.false1385:                                   ; preds = %while.body1363
  %call1387 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call1368) #6
  %tobool1389 = icmp eq i8 %call1387, 0
  br i1 %tobool1389, label %if.then1390, label %while.cond1356.backedge

if.then1390:                                      ; preds = %cond.false1385, %lor.lhs.false1381, %cond.true1367
  %tobool1391 = icmp eq i32 %tmp.29234, 0
  br i1 %tobool1391, label %while.cond1356.backedge, label %land.lhs.true1392

land.lhs.true1392:                                ; preds = %if.then1390
  br i1 %tobool1393, label %lor.lhs.false1394, label %got_it

lor.lhs.false1394:                                ; preds = %land.lhs.true1392
  %call1395 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.19235) #5
  %tobool1396 = icmp eq i32 %call1395, 0
  br i1 %tobool1396, label %while.cond1356.backedge, label %got_it

while.body1408:                                   ; preds = %while.body1408.lr.ph, %if.end1436
  %s.addr.20224 = phi i8* [ %s, %while.body1408.lr.ph ], [ %incdec.ptr1437, %if.end1436 ]
  %tmp.31223 = phi i32 [ 1, %while.body1408.lr.ph ], [ %tmp.32, %if.end1436 ]
  %216 = load i8* %s.addr.20224, align 1, !tbaa !1
  %cmp14118 = icmp sgt i8 %216, -1
  br i1 %cmp14118, label %land.lhs.true1413, label %if.then1425

land.lhs.true1413:                                ; preds = %while.body1408
  %idxprom1415 = sext i8 %216 to i64
  %call1416 = call i16** @__ctype_b_loc() #6
  %217 = load i16** %call1416, align 8, !tbaa !3
  %arrayidx1417 = getelementptr inbounds i16* %217, i64 %idxprom1415
  %218 = load i16* %arrayidx1417, align 2, !tbaa !5
  %and1419 = and i16 %218, 8
  %tobool1420 = icmp eq i16 %and1419, 0
  br i1 %tobool1420, label %lor.lhs.false1421, label %if.end1436

lor.lhs.false1421:                                ; preds = %land.lhs.true1413
  %219 = load i8* %s.addr.20224, align 1, !tbaa !1
  %cmp1423 = icmp eq i8 %219, 95
  br i1 %cmp1423, label %if.end1436, label %if.then1425

if.then1425:                                      ; preds = %lor.lhs.false1421, %while.body1408
  %tobool1426 = icmp eq i32 %tmp.31223, 0
  br i1 %tobool1426, label %if.end1436, label %land.lhs.true1427

land.lhs.true1427:                                ; preds = %if.then1425
  br i1 %tobool1428, label %lor.lhs.false1429, label %got_it

lor.lhs.false1429:                                ; preds = %land.lhs.true1427
  %call1430 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.20224) #5
  %tobool1431 = icmp eq i32 %call1430, 0
  br i1 %tobool1431, label %if.end1436, label %got_it

if.end1436:                                       ; preds = %lor.lhs.false1421, %land.lhs.true1413, %if.then1425, %lor.lhs.false1429
  %tmp.32 = phi i32 [ %1, %lor.lhs.false1429 ], [ %1, %if.then1425 ], [ 1, %land.lhs.true1413 ], [ 1, %lor.lhs.false1421 ]
  %incdec.ptr1437 = getelementptr inbounds i8* %s.addr.20224, i64 1
  %cmp1406 = icmp ult i8* %incdec.ptr1437, %strend
  br i1 %cmp1406, label %while.body1408, label %return

sw.bb1440:                                        ; preds = %entry
  %tobool1441 = icmp eq i8 %2, 0
  br i1 %tobool1441, label %while.cond1476.preheader, label %if.then1442

while.cond1476.preheader:                         ; preds = %sw.bb1440
  %cmp1477240 = icmp ult i8* %s, %strend
  br i1 %cmp1477240, label %while.body1479.lr.ph, label %return

while.body1479.lr.ph:                             ; preds = %while.cond1476.preheader
  %tobool1502 = icmp eq i32 %norun, 0
  br label %while.body1479

if.then1442:                                      ; preds = %sw.bb1440
  %220 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %tobool1443 = icmp eq %struct.sv* %220, null
  br i1 %tobool1443, label %if.then1444, label %while.cond1447.preheader

if.then1444:                                      ; preds = %if.then1442
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1445 = call signext i8 @Perl_is_utf8_space(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond1447.preheader

while.cond1447.preheader:                         ; preds = %if.then1444, %if.then1442
  %221 = load i8* %s, align 1, !tbaa !1
  %idxprom1448247 = zext i8 %221 to i64
  %arrayidx1449248 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1448247
  %222 = load i8* %arrayidx1449248, align 1, !tbaa !1
  %conv1450249 = zext i8 %222 to i64
  %add.ptr1451250 = getelementptr inbounds i8* %s, i64 %conv1450249
  %cmp1452251 = icmp ugt i8* %add.ptr1451250, %strend
  br i1 %cmp1452251, label %return, label %while.body1454.lr.ph

while.body1454.lr.ph:                             ; preds = %while.cond1447.preheader
  %tobool1464 = icmp eq i32 %norun, 0
  br label %while.body1454

while.body1454:                                   ; preds = %while.body1454.lr.ph, %while.cond1447.backedge
  %add.ptr1451254 = phi i8* [ %add.ptr1451250, %while.body1454.lr.ph ], [ %add.ptr1451, %while.cond1447.backedge ]
  %223 = phi i8 [ %221, %while.body1454.lr.ph ], [ %225, %while.cond1447.backedge ]
  %s.addr.21253 = phi i8* [ %s, %while.body1454.lr.ph ], [ %add.ptr1451254, %while.cond1447.backedge ]
  %tmp.33252 = phi i32 [ 1, %while.body1454.lr.ph ], [ %tmp.33.be, %while.cond1447.backedge ]
  %cmp1456 = icmp eq i8 %223, 32
  br i1 %cmp1456, label %if.then1461, label %lor.lhs.false1458

lor.lhs.false1458:                                ; preds = %while.body1454
  %224 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %call1459 = call i64 @Perl_swash_fetch(%struct.sv* %224, i8* %s.addr.21253, i8 signext %2) #6
  %tobool1460 = icmp eq i64 %call1459, 0
  br i1 %tobool1460, label %while.cond1447.backedge, label %if.then1461

while.cond1447.backedge:                          ; preds = %lor.lhs.false1458, %if.then1461, %lor.lhs.false1465
  %tmp.33.be = phi i32 [ %1, %lor.lhs.false1465 ], [ %1, %if.then1461 ], [ 1, %lor.lhs.false1458 ]
  %225 = load i8* %add.ptr1451254, align 1, !tbaa !1
  %idxprom1448 = zext i8 %225 to i64
  %arrayidx1449 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1448
  %226 = load i8* %arrayidx1449, align 1, !tbaa !1
  %conv1450 = zext i8 %226 to i64
  %add.ptr1451 = getelementptr inbounds i8* %add.ptr1451254, i64 %conv1450
  %cmp1452 = icmp ugt i8* %add.ptr1451, %strend
  br i1 %cmp1452, label %return, label %while.body1454

if.then1461:                                      ; preds = %lor.lhs.false1458, %while.body1454
  %tobool1462 = icmp eq i32 %tmp.33252, 0
  br i1 %tobool1462, label %while.cond1447.backedge, label %land.lhs.true1463

land.lhs.true1463:                                ; preds = %if.then1461
  br i1 %tobool1464, label %lor.lhs.false1465, label %got_it

lor.lhs.false1465:                                ; preds = %land.lhs.true1463
  %call1466 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.21253) #5
  %tobool1467 = icmp eq i32 %call1466, 0
  br i1 %tobool1467, label %while.cond1447.backedge, label %got_it

while.body1479:                                   ; preds = %while.body1479.lr.ph, %if.end1510
  %s.addr.22242 = phi i8* [ %s, %while.body1479.lr.ph ], [ %incdec.ptr1511, %if.end1510 ]
  %tmp.35241 = phi i32 [ 1, %while.body1479.lr.ph ], [ %tmp.36, %if.end1510 ]
  %227 = load i8* %s.addr.22242, align 1, !tbaa !1
  switch i8 %227, label %if.end1510 [
    i8 32, label %if.then1499
    i8 9, label %if.then1499
    i8 10, label %if.then1499
    i8 13, label %if.then1499
    i8 12, label %if.then1499
  ]

if.then1499:                                      ; preds = %while.body1479, %while.body1479, %while.body1479, %while.body1479, %while.body1479
  %tobool1500 = icmp eq i32 %tmp.35241, 0
  br i1 %tobool1500, label %if.end1510, label %land.lhs.true1501

land.lhs.true1501:                                ; preds = %if.then1499
  br i1 %tobool1502, label %lor.lhs.false1503, label %got_it

lor.lhs.false1503:                                ; preds = %land.lhs.true1501
  %call1504 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.22242) #5
  %tobool1505 = icmp eq i32 %call1504, 0
  br i1 %tobool1505, label %if.end1510, label %got_it

if.end1510:                                       ; preds = %while.body1479, %if.then1499, %lor.lhs.false1503
  %tmp.36 = phi i32 [ %1, %lor.lhs.false1503 ], [ %1, %if.then1499 ], [ 1, %while.body1479 ]
  %incdec.ptr1511 = getelementptr inbounds i8* %s.addr.22242, i64 1
  %cmp1477 = icmp ult i8* %incdec.ptr1511, %strend
  br i1 %cmp1477, label %while.body1479, label %return

sw.bb1514:                                        ; preds = %entry
  %228 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1515 = or i32 %228, 1
  store i32 %or1515, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool1516 = icmp eq i8 %2, 0
  br i1 %tobool1516, label %while.cond1567.preheader, label %while.cond1518.preheader

while.cond1518.preheader:                         ; preds = %sw.bb1514
  %229 = load i8* %s, align 1, !tbaa !1
  %idxprom1519264 = zext i8 %229 to i64
  %arrayidx1520265 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1519264
  %230 = load i8* %arrayidx1520265, align 1, !tbaa !1
  %conv1521266 = zext i8 %230 to i64
  %add.ptr1522267 = getelementptr inbounds i8* %s, i64 %conv1521266
  %cmp1523268 = icmp ugt i8* %add.ptr1522267, %strend
  br i1 %cmp1523268, label %return, label %while.body1525.lr.ph

while.body1525.lr.ph:                             ; preds = %while.cond1518.preheader
  %tobool1555 = icmp eq i32 %norun, 0
  br label %while.body1525

while.cond1567.preheader:                         ; preds = %sw.bb1514
  %cmp1568258 = icmp ult i8* %s, %strend
  br i1 %cmp1568258, label %while.body1570.lr.ph, label %return

while.body1570.lr.ph:                             ; preds = %while.cond1567.preheader
  %tobool1586 = icmp eq i32 %norun, 0
  br label %while.body1570

while.body1525:                                   ; preds = %while.body1525.lr.ph, %while.cond1518.backedge
  %add.ptr1522271 = phi i8* [ %add.ptr1522267, %while.body1525.lr.ph ], [ %add.ptr1522, %while.cond1518.backedge ]
  %231 = phi i8 [ %229, %while.body1525.lr.ph ], [ %232, %while.cond1518.backedge ]
  %s.addr.23270 = phi i8* [ %s, %while.body1525.lr.ph ], [ %add.ptr1522271, %while.cond1518.backedge ]
  %tmp.37269 = phi i32 [ 1, %while.body1525.lr.ph ], [ %tmp.37.be, %while.cond1518.backedge ]
  %cmp1527 = icmp eq i8 %231, 32
  br i1 %cmp1527, label %if.then1552, label %lor.lhs.false1529

lor.lhs.false1529:                                ; preds = %while.body1525
  %call1530 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.23270, i64* null) #6
  %cmp1531 = icmp ult i64 %call1530, 256
  %call1534 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.23270, i64* null) #6
  br i1 %cmp1531, label %cond.true1533, label %cond.false1547

cond.true1533:                                    ; preds = %lor.lhs.false1529
  %cmp1536 = icmp ult i64 %call1534, 128
  br i1 %cmp1536, label %land.lhs.true1538, label %while.cond1518.backedge

while.cond1518.backedge:                          ; preds = %cond.true1533, %cond.false1547, %land.lhs.true1538, %if.then1552, %lor.lhs.false1556
  %tmp.37.be = phi i32 [ %1, %lor.lhs.false1556 ], [ %1, %if.then1552 ], [ 1, %land.lhs.true1538 ], [ 1, %cond.false1547 ], [ 1, %cond.true1533 ]
  %232 = load i8* %add.ptr1522271, align 1, !tbaa !1
  %idxprom1519 = zext i8 %232 to i64
  %arrayidx1520 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1519
  %233 = load i8* %arrayidx1520, align 1, !tbaa !1
  %conv1521 = zext i8 %233 to i64
  %add.ptr1522 = getelementptr inbounds i8* %add.ptr1522271, i64 %conv1521
  %cmp1523 = icmp ugt i8* %add.ptr1522, %strend
  br i1 %cmp1523, label %return, label %while.body1525

land.lhs.true1538:                                ; preds = %cond.true1533
  %call1539 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.23270, i64* null) #6
  %sext7 = shl i64 %call1539, 32
  %idxprom1541 = ashr exact i64 %sext7, 32
  %call1542 = call i16** @__ctype_b_loc() #6
  %234 = load i16** %call1542, align 8, !tbaa !3
  %arrayidx1543 = getelementptr inbounds i16* %234, i64 %idxprom1541
  %235 = load i16* %arrayidx1543, align 2, !tbaa !5
  %and1545 = and i16 %235, 8192
  %tobool1546 = icmp eq i16 %and1545, 0
  br i1 %tobool1546, label %while.cond1518.backedge, label %if.then1552

cond.false1547:                                   ; preds = %lor.lhs.false1529
  %call1549 = call signext i8 @Perl_is_uni_space_lc(i64 %call1534) #6
  %tobool1551 = icmp eq i8 %call1549, 0
  br i1 %tobool1551, label %while.cond1518.backedge, label %if.then1552

if.then1552:                                      ; preds = %land.lhs.true1538, %cond.false1547, %while.body1525
  %tobool1553 = icmp eq i32 %tmp.37269, 0
  br i1 %tobool1553, label %while.cond1518.backedge, label %land.lhs.true1554

land.lhs.true1554:                                ; preds = %if.then1552
  br i1 %tobool1555, label %lor.lhs.false1556, label %got_it

lor.lhs.false1556:                                ; preds = %land.lhs.true1554
  %call1557 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.23270) #5
  %tobool1558 = icmp eq i32 %call1557, 0
  br i1 %tobool1558, label %while.cond1518.backedge, label %got_it

while.body1570:                                   ; preds = %while.body1570.lr.ph, %if.end1594
  %s.addr.24260 = phi i8* [ %s, %while.body1570.lr.ph ], [ %incdec.ptr1595, %if.end1594 ]
  %tmp.39259 = phi i32 [ 1, %while.body1570.lr.ph ], [ %tmp.40, %if.end1594 ]
  %236 = load i8* %s.addr.24260, align 1, !tbaa !1
  %cmp15736 = icmp sgt i8 %236, -1
  br i1 %cmp15736, label %land.lhs.true1575, label %if.end1594

land.lhs.true1575:                                ; preds = %while.body1570
  %idxprom1577 = sext i8 %236 to i64
  %call1578 = call i16** @__ctype_b_loc() #6
  %237 = load i16** %call1578, align 8, !tbaa !3
  %arrayidx1579 = getelementptr inbounds i16* %237, i64 %idxprom1577
  %238 = load i16* %arrayidx1579, align 2, !tbaa !5
  %and1581 = and i16 %238, 8192
  %tobool1582 = icmp eq i16 %and1581, 0
  br i1 %tobool1582, label %if.end1594, label %if.then1583

if.then1583:                                      ; preds = %land.lhs.true1575
  %tobool1584 = icmp eq i32 %tmp.39259, 0
  br i1 %tobool1584, label %if.end1594, label %land.lhs.true1585

land.lhs.true1585:                                ; preds = %if.then1583
  br i1 %tobool1586, label %lor.lhs.false1587, label %got_it

lor.lhs.false1587:                                ; preds = %land.lhs.true1585
  %call1588 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.24260) #5
  %tobool1589 = icmp eq i32 %call1588, 0
  br i1 %tobool1589, label %if.end1594, label %got_it

if.end1594:                                       ; preds = %while.body1570, %land.lhs.true1575, %if.then1583, %lor.lhs.false1587
  %tmp.40 = phi i32 [ %1, %lor.lhs.false1587 ], [ %1, %if.then1583 ], [ 1, %land.lhs.true1575 ], [ 1, %while.body1570 ]
  %incdec.ptr1595 = getelementptr inbounds i8* %s.addr.24260, i64 1
  %cmp1568 = icmp ult i8* %incdec.ptr1595, %strend
  br i1 %cmp1568, label %while.body1570, label %return

sw.bb1598:                                        ; preds = %entry
  %tobool1599 = icmp eq i8 %2, 0
  br i1 %tobool1599, label %while.cond1634.preheader, label %if.then1600

while.cond1634.preheader:                         ; preds = %sw.bb1598
  %cmp1635275 = icmp ult i8* %s, %strend
  br i1 %cmp1635275, label %while.body1637.lr.ph, label %return

while.body1637.lr.ph:                             ; preds = %while.cond1634.preheader
  %tobool1660 = icmp eq i32 %norun, 0
  br label %while.body1637

if.then1600:                                      ; preds = %sw.bb1598
  %239 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %tobool1601 = icmp eq %struct.sv* %239, null
  br i1 %tobool1601, label %if.then1602, label %while.cond1605.preheader

if.then1602:                                      ; preds = %if.then1600
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1603 = call signext i8 @Perl_is_utf8_space(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond1605.preheader

while.cond1605.preheader:                         ; preds = %if.then1602, %if.then1600
  %240 = load i8* %s, align 1, !tbaa !1
  %idxprom1606281 = zext i8 %240 to i64
  %arrayidx1607282 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1606281
  %241 = load i8* %arrayidx1607282, align 1, !tbaa !1
  %conv1608283 = zext i8 %241 to i64
  %add.ptr1609284 = getelementptr inbounds i8* %s, i64 %conv1608283
  %cmp1610285 = icmp ugt i8* %add.ptr1609284, %strend
  br i1 %cmp1610285, label %return, label %while.body1612.lr.ph

while.body1612.lr.ph:                             ; preds = %while.cond1605.preheader
  %tobool1622 = icmp eq i32 %norun, 0
  br label %while.body1612

while.body1612:                                   ; preds = %while.body1612.lr.ph, %while.cond1605.backedge
  %add.ptr1609288 = phi i8* [ %add.ptr1609284, %while.body1612.lr.ph ], [ %add.ptr1609, %while.cond1605.backedge ]
  %242 = phi i8 [ %240, %while.body1612.lr.ph ], [ %243, %while.cond1605.backedge ]
  %s.addr.25287 = phi i8* [ %s, %while.body1612.lr.ph ], [ %add.ptr1609288, %while.cond1605.backedge ]
  %tmp.41286 = phi i32 [ 1, %while.body1612.lr.ph ], [ %tmp.41.be, %while.cond1605.backedge ]
  %cmp1614 = icmp eq i8 %242, 32
  br i1 %cmp1614, label %while.cond1605.backedge, label %lor.lhs.false1616

while.cond1605.backedge:                          ; preds = %while.body1612, %lor.lhs.false1616, %if.then1619, %lor.lhs.false1623
  %tmp.41.be = phi i32 [ %1, %lor.lhs.false1623 ], [ %1, %if.then1619 ], [ 1, %lor.lhs.false1616 ], [ 1, %while.body1612 ]
  %243 = load i8* %add.ptr1609288, align 1, !tbaa !1
  %idxprom1606 = zext i8 %243 to i64
  %arrayidx1607 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1606
  %244 = load i8* %arrayidx1607, align 1, !tbaa !1
  %conv1608 = zext i8 %244 to i64
  %add.ptr1609 = getelementptr inbounds i8* %add.ptr1609288, i64 %conv1608
  %cmp1610 = icmp ugt i8* %add.ptr1609, %strend
  br i1 %cmp1610, label %return, label %while.body1612

lor.lhs.false1616:                                ; preds = %while.body1612
  %245 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %call1617 = call i64 @Perl_swash_fetch(%struct.sv* %245, i8* %s.addr.25287, i8 signext %2) #6
  %tobool1618 = icmp eq i64 %call1617, 0
  br i1 %tobool1618, label %if.then1619, label %while.cond1605.backedge

if.then1619:                                      ; preds = %lor.lhs.false1616
  %tobool1620 = icmp eq i32 %tmp.41286, 0
  br i1 %tobool1620, label %while.cond1605.backedge, label %land.lhs.true1621

land.lhs.true1621:                                ; preds = %if.then1619
  br i1 %tobool1622, label %lor.lhs.false1623, label %got_it

lor.lhs.false1623:                                ; preds = %land.lhs.true1621
  %call1624 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.25287) #5
  %tobool1625 = icmp eq i32 %call1624, 0
  br i1 %tobool1625, label %while.cond1605.backedge, label %got_it

while.body1637:                                   ; preds = %while.body1637.lr.ph, %if.end1668
  %s.addr.26277 = phi i8* [ %s, %while.body1637.lr.ph ], [ %incdec.ptr1669, %if.end1668 ]
  %tmp.43276 = phi i32 [ 1, %while.body1637.lr.ph ], [ %tmp.44, %if.end1668 ]
  %246 = load i8* %s.addr.26277, align 1, !tbaa !1
  switch i8 %246, label %if.then1657 [
    i8 32, label %if.end1668
    i8 9, label %if.end1668
    i8 10, label %if.end1668
    i8 13, label %if.end1668
    i8 12, label %if.end1668
  ]

if.then1657:                                      ; preds = %while.body1637
  %tobool1658 = icmp eq i32 %tmp.43276, 0
  br i1 %tobool1658, label %if.end1668, label %land.lhs.true1659

land.lhs.true1659:                                ; preds = %if.then1657
  br i1 %tobool1660, label %lor.lhs.false1661, label %got_it

lor.lhs.false1661:                                ; preds = %land.lhs.true1659
  %call1662 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.26277) #5
  %tobool1663 = icmp eq i32 %call1662, 0
  br i1 %tobool1663, label %if.end1668, label %got_it

if.end1668:                                       ; preds = %while.body1637, %while.body1637, %while.body1637, %while.body1637, %while.body1637, %if.then1657, %lor.lhs.false1661
  %tmp.44 = phi i32 [ %1, %lor.lhs.false1661 ], [ %1, %if.then1657 ], [ 1, %while.body1637 ], [ 1, %while.body1637 ], [ 1, %while.body1637 ], [ 1, %while.body1637 ], [ 1, %while.body1637 ]
  %incdec.ptr1669 = getelementptr inbounds i8* %s.addr.26277, i64 1
  %cmp1635 = icmp ult i8* %incdec.ptr1669, %strend
  br i1 %cmp1635, label %while.body1637, label %return

sw.bb1672:                                        ; preds = %entry
  %247 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1673 = or i32 %247, 1
  store i32 %or1673, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool1674 = icmp eq i8 %2, 0
  br i1 %tobool1674, label %while.cond1725.preheader, label %while.cond1676.preheader

while.cond1676.preheader:                         ; preds = %sw.bb1672
  %248 = load i8* %s, align 1, !tbaa !1
  %idxprom1677299 = zext i8 %248 to i64
  %arrayidx1678300 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1677299
  %249 = load i8* %arrayidx1678300, align 1, !tbaa !1
  %conv1679301 = zext i8 %249 to i64
  %add.ptr1680302 = getelementptr inbounds i8* %s, i64 %conv1679301
  %cmp1681303 = icmp ugt i8* %add.ptr1680302, %strend
  br i1 %cmp1681303, label %return, label %while.body1683.lr.ph

while.body1683.lr.ph:                             ; preds = %while.cond1676.preheader
  %tobool1713 = icmp eq i32 %norun, 0
  br label %while.body1683

while.cond1725.preheader:                         ; preds = %sw.bb1672
  %cmp1726292 = icmp ult i8* %s, %strend
  br i1 %cmp1726292, label %while.body1728.lr.ph, label %return

while.body1728.lr.ph:                             ; preds = %while.cond1725.preheader
  %tobool1744 = icmp eq i32 %norun, 0
  br label %while.body1728

while.body1683:                                   ; preds = %while.body1683.lr.ph, %while.cond1676.backedge
  %add.ptr1680306 = phi i8* [ %add.ptr1680302, %while.body1683.lr.ph ], [ %add.ptr1680, %while.cond1676.backedge ]
  %250 = phi i8 [ %248, %while.body1683.lr.ph ], [ %251, %while.cond1676.backedge ]
  %s.addr.27305 = phi i8* [ %s, %while.body1683.lr.ph ], [ %add.ptr1680306, %while.cond1676.backedge ]
  %tmp.45304 = phi i32 [ 1, %while.body1683.lr.ph ], [ %tmp.45.be, %while.cond1676.backedge ]
  %cmp1685 = icmp eq i8 %250, 32
  br i1 %cmp1685, label %while.cond1676.backedge, label %lor.lhs.false1687

while.cond1676.backedge:                          ; preds = %while.body1683, %cond.false1705, %land.lhs.true1696, %if.then1710, %lor.lhs.false1714
  %tmp.45.be = phi i32 [ %1, %lor.lhs.false1714 ], [ %1, %if.then1710 ], [ 1, %land.lhs.true1696 ], [ 1, %cond.false1705 ], [ 1, %while.body1683 ]
  %251 = load i8* %add.ptr1680306, align 1, !tbaa !1
  %idxprom1677 = zext i8 %251 to i64
  %arrayidx1678 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1677
  %252 = load i8* %arrayidx1678, align 1, !tbaa !1
  %conv1679 = zext i8 %252 to i64
  %add.ptr1680 = getelementptr inbounds i8* %add.ptr1680306, i64 %conv1679
  %cmp1681 = icmp ugt i8* %add.ptr1680, %strend
  br i1 %cmp1681, label %return, label %while.body1683

lor.lhs.false1687:                                ; preds = %while.body1683
  %call1688 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.27305, i64* null) #6
  %cmp1689 = icmp ult i64 %call1688, 256
  %call1692 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.27305, i64* null) #6
  br i1 %cmp1689, label %cond.true1691, label %cond.false1705

cond.true1691:                                    ; preds = %lor.lhs.false1687
  %cmp1694 = icmp ult i64 %call1692, 128
  br i1 %cmp1694, label %land.lhs.true1696, label %if.then1710

land.lhs.true1696:                                ; preds = %cond.true1691
  %call1697 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.27305, i64* null) #6
  %sext5 = shl i64 %call1697, 32
  %idxprom1699 = ashr exact i64 %sext5, 32
  %call1700 = call i16** @__ctype_b_loc() #6
  %253 = load i16** %call1700, align 8, !tbaa !3
  %arrayidx1701 = getelementptr inbounds i16* %253, i64 %idxprom1699
  %254 = load i16* %arrayidx1701, align 2, !tbaa !5
  %and1703 = and i16 %254, 8192
  %tobool1704 = icmp eq i16 %and1703, 0
  br i1 %tobool1704, label %if.then1710, label %while.cond1676.backedge

cond.false1705:                                   ; preds = %lor.lhs.false1687
  %call1707 = call signext i8 @Perl_is_uni_space_lc(i64 %call1692) #6
  %tobool1709 = icmp eq i8 %call1707, 0
  br i1 %tobool1709, label %if.then1710, label %while.cond1676.backedge

if.then1710:                                      ; preds = %land.lhs.true1696, %cond.false1705, %cond.true1691
  %tobool1711 = icmp eq i32 %tmp.45304, 0
  br i1 %tobool1711, label %while.cond1676.backedge, label %land.lhs.true1712

land.lhs.true1712:                                ; preds = %if.then1710
  br i1 %tobool1713, label %lor.lhs.false1714, label %got_it

lor.lhs.false1714:                                ; preds = %land.lhs.true1712
  %call1715 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.27305) #5
  %tobool1716 = icmp eq i32 %call1715, 0
  br i1 %tobool1716, label %while.cond1676.backedge, label %got_it

while.body1728:                                   ; preds = %while.body1728.lr.ph, %if.end1752
  %s.addr.28294 = phi i8* [ %s, %while.body1728.lr.ph ], [ %incdec.ptr1753, %if.end1752 ]
  %tmp.47293 = phi i32 [ 1, %while.body1728.lr.ph ], [ %tmp.48, %if.end1752 ]
  %255 = load i8* %s.addr.28294, align 1, !tbaa !1
  %cmp17314 = icmp sgt i8 %255, -1
  br i1 %cmp17314, label %land.lhs.true1733, label %if.then1741

land.lhs.true1733:                                ; preds = %while.body1728
  %idxprom1735 = sext i8 %255 to i64
  %call1736 = call i16** @__ctype_b_loc() #6
  %256 = load i16** %call1736, align 8, !tbaa !3
  %arrayidx1737 = getelementptr inbounds i16* %256, i64 %idxprom1735
  %257 = load i16* %arrayidx1737, align 2, !tbaa !5
  %and1739 = and i16 %257, 8192
  %tobool1740 = icmp eq i16 %and1739, 0
  br i1 %tobool1740, label %if.then1741, label %if.end1752

if.then1741:                                      ; preds = %land.lhs.true1733, %while.body1728
  %tobool1742 = icmp eq i32 %tmp.47293, 0
  br i1 %tobool1742, label %if.end1752, label %land.lhs.true1743

land.lhs.true1743:                                ; preds = %if.then1741
  br i1 %tobool1744, label %lor.lhs.false1745, label %got_it

lor.lhs.false1745:                                ; preds = %land.lhs.true1743
  %call1746 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.28294) #5
  %tobool1747 = icmp eq i32 %call1746, 0
  br i1 %tobool1747, label %if.end1752, label %got_it

if.end1752:                                       ; preds = %land.lhs.true1733, %if.then1741, %lor.lhs.false1745
  %tmp.48 = phi i32 [ %1, %lor.lhs.false1745 ], [ %1, %if.then1741 ], [ 1, %land.lhs.true1733 ]
  %incdec.ptr1753 = getelementptr inbounds i8* %s.addr.28294, i64 1
  %cmp1726 = icmp ult i8* %incdec.ptr1753, %strend
  br i1 %cmp1726, label %while.body1728, label %return

sw.bb1756:                                        ; preds = %entry
  %tobool1757 = icmp eq i8 %2, 0
  br i1 %tobool1757, label %while.cond1788.preheader, label %if.then1758

while.cond1788.preheader:                         ; preds = %sw.bb1756
  %cmp1789310 = icmp ult i8* %s, %strend
  br i1 %cmp1789310, label %while.body1791.lr.ph, label %return

while.body1791.lr.ph:                             ; preds = %while.cond1788.preheader
  %tobool1802 = icmp eq i32 %norun, 0
  br label %while.body1791

if.then1758:                                      ; preds = %sw.bb1756
  %258 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %tobool1759 = icmp eq %struct.sv* %258, null
  br i1 %tobool1759, label %if.then1760, label %while.cond1763.preheader

if.then1760:                                      ; preds = %if.then1758
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1761 = call signext i8 @Perl_is_utf8_digit(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond1763.preheader

while.cond1763.preheader:                         ; preds = %if.then1760, %if.then1758
  %259 = load i8* %s, align 1, !tbaa !1
  %idxprom1764316 = zext i8 %259 to i64
  %arrayidx1765317 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1764316
  %260 = load i8* %arrayidx1765317, align 1, !tbaa !1
  %conv1766318 = zext i8 %260 to i64
  %add.ptr1767319 = getelementptr inbounds i8* %s, i64 %conv1766318
  %cmp1768320 = icmp ugt i8* %add.ptr1767319, %strend
  br i1 %cmp1768320, label %return, label %while.body1770.lr.ph

while.body1770.lr.ph:                             ; preds = %while.cond1763.preheader
  %tobool1776 = icmp eq i32 %norun, 0
  br label %while.body1770

while.body1770:                                   ; preds = %while.cond1763.backedge, %while.body1770.lr.ph
  %add.ptr1767323 = phi i8* [ %add.ptr1767319, %while.body1770.lr.ph ], [ %add.ptr1767, %while.cond1763.backedge ]
  %s.addr.29322 = phi i8* [ %s, %while.body1770.lr.ph ], [ %add.ptr1767323, %while.cond1763.backedge ]
  %tmp.49321 = phi i32 [ 1, %while.body1770.lr.ph ], [ %tmp.49.be, %while.cond1763.backedge ]
  %261 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %call1771 = call i64 @Perl_swash_fetch(%struct.sv* %261, i8* %s.addr.29322, i8 signext %2) #6
  %tobool1772 = icmp eq i64 %call1771, 0
  br i1 %tobool1772, label %while.cond1763.backedge, label %if.then1773

while.cond1763.backedge:                          ; preds = %while.body1770, %if.then1773, %lor.lhs.false1777
  %tmp.49.be = phi i32 [ %1, %lor.lhs.false1777 ], [ %1, %if.then1773 ], [ 1, %while.body1770 ]
  %262 = load i8* %add.ptr1767323, align 1, !tbaa !1
  %idxprom1764 = zext i8 %262 to i64
  %arrayidx1765 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1764
  %263 = load i8* %arrayidx1765, align 1, !tbaa !1
  %conv1766 = zext i8 %263 to i64
  %add.ptr1767 = getelementptr inbounds i8* %add.ptr1767323, i64 %conv1766
  %cmp1768 = icmp ugt i8* %add.ptr1767, %strend
  br i1 %cmp1768, label %return, label %while.body1770

if.then1773:                                      ; preds = %while.body1770
  %tobool1774 = icmp eq i32 %tmp.49321, 0
  br i1 %tobool1774, label %while.cond1763.backedge, label %land.lhs.true1775

land.lhs.true1775:                                ; preds = %if.then1773
  br i1 %tobool1776, label %lor.lhs.false1777, label %got_it

lor.lhs.false1777:                                ; preds = %land.lhs.true1775
  %call1778 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.29322) #5
  %tobool1779 = icmp eq i32 %call1778, 0
  br i1 %tobool1779, label %while.cond1763.backedge, label %got_it

while.body1791:                                   ; preds = %while.body1791.lr.ph, %if.end1810
  %s.addr.30312 = phi i8* [ %s, %while.body1791.lr.ph ], [ %incdec.ptr1811, %if.end1810 ]
  %tmp.51311 = phi i32 [ 1, %while.body1791.lr.ph ], [ %tmp.52, %if.end1810 ]
  %264 = load i8* %s.addr.30312, align 1, !tbaa !1
  %.off66 = add i8 %264, -48
  %265 = icmp ult i8 %.off66, 10
  br i1 %265, label %if.then1799, label %if.end1810

if.then1799:                                      ; preds = %while.body1791
  %tobool1800 = icmp eq i32 %tmp.51311, 0
  br i1 %tobool1800, label %if.end1810, label %land.lhs.true1801

land.lhs.true1801:                                ; preds = %if.then1799
  br i1 %tobool1802, label %lor.lhs.false1803, label %got_it

lor.lhs.false1803:                                ; preds = %land.lhs.true1801
  %call1804 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.30312) #5
  %tobool1805 = icmp eq i32 %call1804, 0
  br i1 %tobool1805, label %if.end1810, label %got_it

if.end1810:                                       ; preds = %while.body1791, %if.then1799, %lor.lhs.false1803
  %tmp.52 = phi i32 [ %1, %lor.lhs.false1803 ], [ %1, %if.then1799 ], [ 1, %while.body1791 ]
  %incdec.ptr1811 = getelementptr inbounds i8* %s.addr.30312, i64 1
  %cmp1789 = icmp ult i8* %incdec.ptr1811, %strend
  br i1 %cmp1789, label %while.body1791, label %return

sw.bb1814:                                        ; preds = %entry
  %266 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1815 = or i32 %266, 1
  store i32 %or1815, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool1816 = icmp eq i8 %2, 0
  br i1 %tobool1816, label %while.cond1863.preheader, label %while.cond1818.preheader

while.cond1818.preheader:                         ; preds = %sw.bb1814
  %267 = load i8* %s, align 1, !tbaa !1
  %idxprom1819333 = zext i8 %267 to i64
  %arrayidx1820334 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1819333
  %268 = load i8* %arrayidx1820334, align 1, !tbaa !1
  %conv1821335 = zext i8 %268 to i64
  %add.ptr1822336 = getelementptr inbounds i8* %s, i64 %conv1821335
  %cmp1823337 = icmp ugt i8* %add.ptr1822336, %strend
  br i1 %cmp1823337, label %return, label %while.body1825.lr.ph

while.body1825.lr.ph:                             ; preds = %while.cond1818.preheader
  %tobool1851 = icmp eq i32 %norun, 0
  br label %while.body1825

while.cond1863.preheader:                         ; preds = %sw.bb1814
  %cmp1864327 = icmp ult i8* %s, %strend
  br i1 %cmp1864327, label %while.body1866.lr.ph, label %return

while.body1866.lr.ph:                             ; preds = %while.cond1863.preheader
  %tobool1882 = icmp eq i32 %norun, 0
  br label %while.body1866

while.body1825:                                   ; preds = %while.body1825.lr.ph, %while.cond1818.backedge
  %add.ptr1822340 = phi i8* [ %add.ptr1822336, %while.body1825.lr.ph ], [ %add.ptr1822, %while.cond1818.backedge ]
  %s.addr.31339 = phi i8* [ %s, %while.body1825.lr.ph ], [ %add.ptr1822340, %while.cond1818.backedge ]
  %tmp.53338 = phi i32 [ 1, %while.body1825.lr.ph ], [ %tmp.53.be, %while.cond1818.backedge ]
  %call1826 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.31339, i64* null) #6
  %cmp1827 = icmp ult i64 %call1826, 256
  %call1830 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.31339, i64* null) #6
  br i1 %cmp1827, label %cond.true1829, label %cond.false1843

cond.true1829:                                    ; preds = %while.body1825
  %cmp1832 = icmp ult i64 %call1830, 128
  br i1 %cmp1832, label %land.lhs.true1834, label %while.cond1818.backedge

while.cond1818.backedge:                          ; preds = %cond.true1829, %cond.false1843, %land.lhs.true1834, %if.then1848, %lor.lhs.false1852
  %tmp.53.be = phi i32 [ %1, %lor.lhs.false1852 ], [ %1, %if.then1848 ], [ 1, %land.lhs.true1834 ], [ 1, %cond.false1843 ], [ 1, %cond.true1829 ]
  %269 = load i8* %add.ptr1822340, align 1, !tbaa !1
  %idxprom1819 = zext i8 %269 to i64
  %arrayidx1820 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1819
  %270 = load i8* %arrayidx1820, align 1, !tbaa !1
  %conv1821 = zext i8 %270 to i64
  %add.ptr1822 = getelementptr inbounds i8* %add.ptr1822340, i64 %conv1821
  %cmp1823 = icmp ugt i8* %add.ptr1822, %strend
  br i1 %cmp1823, label %return, label %while.body1825

land.lhs.true1834:                                ; preds = %cond.true1829
  %call1835 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.31339, i64* null) #6
  %sext3 = shl i64 %call1835, 32
  %idxprom1837 = ashr exact i64 %sext3, 32
  %call1838 = call i16** @__ctype_b_loc() #6
  %271 = load i16** %call1838, align 8, !tbaa !3
  %arrayidx1839 = getelementptr inbounds i16* %271, i64 %idxprom1837
  %272 = load i16* %arrayidx1839, align 2, !tbaa !5
  %and1841 = and i16 %272, 2048
  %tobool1842 = icmp eq i16 %and1841, 0
  br i1 %tobool1842, label %while.cond1818.backedge, label %if.then1848

cond.false1843:                                   ; preds = %while.body1825
  %call1845 = call signext i8 @Perl_is_uni_digit_lc(i64 %call1830) #6
  %tobool1847 = icmp eq i8 %call1845, 0
  br i1 %tobool1847, label %while.cond1818.backedge, label %if.then1848

if.then1848:                                      ; preds = %land.lhs.true1834, %cond.false1843
  %tobool1849 = icmp eq i32 %tmp.53338, 0
  br i1 %tobool1849, label %while.cond1818.backedge, label %land.lhs.true1850

land.lhs.true1850:                                ; preds = %if.then1848
  br i1 %tobool1851, label %lor.lhs.false1852, label %got_it

lor.lhs.false1852:                                ; preds = %land.lhs.true1850
  %call1853 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.31339) #5
  %tobool1854 = icmp eq i32 %call1853, 0
  br i1 %tobool1854, label %while.cond1818.backedge, label %got_it

while.body1866:                                   ; preds = %while.body1866.lr.ph, %if.end1890
  %s.addr.32329 = phi i8* [ %s, %while.body1866.lr.ph ], [ %incdec.ptr1891, %if.end1890 ]
  %tmp.55328 = phi i32 [ 1, %while.body1866.lr.ph ], [ %tmp.56, %if.end1890 ]
  %273 = load i8* %s.addr.32329, align 1, !tbaa !1
  %cmp18692 = icmp sgt i8 %273, -1
  br i1 %cmp18692, label %land.lhs.true1871, label %if.end1890

land.lhs.true1871:                                ; preds = %while.body1866
  %idxprom1873 = sext i8 %273 to i64
  %call1874 = call i16** @__ctype_b_loc() #6
  %274 = load i16** %call1874, align 8, !tbaa !3
  %arrayidx1875 = getelementptr inbounds i16* %274, i64 %idxprom1873
  %275 = load i16* %arrayidx1875, align 2, !tbaa !5
  %and1877 = and i16 %275, 2048
  %tobool1878 = icmp eq i16 %and1877, 0
  br i1 %tobool1878, label %if.end1890, label %if.then1879

if.then1879:                                      ; preds = %land.lhs.true1871
  %tobool1880 = icmp eq i32 %tmp.55328, 0
  br i1 %tobool1880, label %if.end1890, label %land.lhs.true1881

land.lhs.true1881:                                ; preds = %if.then1879
  br i1 %tobool1882, label %lor.lhs.false1883, label %got_it

lor.lhs.false1883:                                ; preds = %land.lhs.true1881
  %call1884 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.32329) #5
  %tobool1885 = icmp eq i32 %call1884, 0
  br i1 %tobool1885, label %if.end1890, label %got_it

if.end1890:                                       ; preds = %while.body1866, %land.lhs.true1871, %if.then1879, %lor.lhs.false1883
  %tmp.56 = phi i32 [ %1, %lor.lhs.false1883 ], [ %1, %if.then1879 ], [ 1, %land.lhs.true1871 ], [ 1, %while.body1866 ]
  %incdec.ptr1891 = getelementptr inbounds i8* %s.addr.32329, i64 1
  %cmp1864 = icmp ult i8* %incdec.ptr1891, %strend
  br i1 %cmp1864, label %while.body1866, label %return

sw.bb1894:                                        ; preds = %entry
  %tobool1895 = icmp eq i8 %2, 0
  br i1 %tobool1895, label %while.cond1926.preheader, label %if.then1896

while.cond1926.preheader:                         ; preds = %sw.bb1894
  %cmp1927344 = icmp ult i8* %s, %strend
  br i1 %cmp1927344, label %while.body1929.lr.ph, label %return

while.body1929.lr.ph:                             ; preds = %while.cond1926.preheader
  %tobool1940 = icmp eq i32 %norun, 0
  br label %while.body1929

if.then1896:                                      ; preds = %sw.bb1894
  %276 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %tobool1897 = icmp eq %struct.sv* %276, null
  br i1 %tobool1897, label %if.then1898, label %while.cond1901.preheader

if.then1898:                                      ; preds = %if.then1896
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1899 = call signext i8 @Perl_is_utf8_digit(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %while.cond1901.preheader

while.cond1901.preheader:                         ; preds = %if.then1898, %if.then1896
  %277 = load i8* %s, align 1, !tbaa !1
  %idxprom1902350 = zext i8 %277 to i64
  %arrayidx1903351 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1902350
  %278 = load i8* %arrayidx1903351, align 1, !tbaa !1
  %conv1904352 = zext i8 %278 to i64
  %add.ptr1905353 = getelementptr inbounds i8* %s, i64 %conv1904352
  %cmp1906354 = icmp ugt i8* %add.ptr1905353, %strend
  br i1 %cmp1906354, label %return, label %while.body1908.lr.ph

while.body1908.lr.ph:                             ; preds = %while.cond1901.preheader
  %tobool1914 = icmp eq i32 %norun, 0
  br label %while.body1908

while.body1908:                                   ; preds = %while.cond1901.backedge, %while.body1908.lr.ph
  %add.ptr1905357 = phi i8* [ %add.ptr1905353, %while.body1908.lr.ph ], [ %add.ptr1905, %while.cond1901.backedge ]
  %s.addr.33356 = phi i8* [ %s, %while.body1908.lr.ph ], [ %add.ptr1905357, %while.cond1901.backedge ]
  %tmp.57355 = phi i32 [ 1, %while.body1908.lr.ph ], [ %tmp.57.be, %while.cond1901.backedge ]
  %279 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %call1909 = call i64 @Perl_swash_fetch(%struct.sv* %279, i8* %s.addr.33356, i8 signext %2) #6
  %tobool1910 = icmp eq i64 %call1909, 0
  br i1 %tobool1910, label %if.then1911, label %while.cond1901.backedge

while.cond1901.backedge:                          ; preds = %while.body1908, %if.then1911, %lor.lhs.false1915
  %tmp.57.be = phi i32 [ %1, %lor.lhs.false1915 ], [ %1, %if.then1911 ], [ 1, %while.body1908 ]
  %280 = load i8* %add.ptr1905357, align 1, !tbaa !1
  %idxprom1902 = zext i8 %280 to i64
  %arrayidx1903 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1902
  %281 = load i8* %arrayidx1903, align 1, !tbaa !1
  %conv1904 = zext i8 %281 to i64
  %add.ptr1905 = getelementptr inbounds i8* %add.ptr1905357, i64 %conv1904
  %cmp1906 = icmp ugt i8* %add.ptr1905, %strend
  br i1 %cmp1906, label %return, label %while.body1908

if.then1911:                                      ; preds = %while.body1908
  %tobool1912 = icmp eq i32 %tmp.57355, 0
  br i1 %tobool1912, label %while.cond1901.backedge, label %land.lhs.true1913

land.lhs.true1913:                                ; preds = %if.then1911
  br i1 %tobool1914, label %lor.lhs.false1915, label %got_it

lor.lhs.false1915:                                ; preds = %land.lhs.true1913
  %call1916 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.33356) #5
  %tobool1917 = icmp eq i32 %call1916, 0
  br i1 %tobool1917, label %while.cond1901.backedge, label %got_it

while.body1929:                                   ; preds = %while.body1929.lr.ph, %if.end1948
  %s.addr.34346 = phi i8* [ %s, %while.body1929.lr.ph ], [ %incdec.ptr1949, %if.end1948 ]
  %tmp.59345 = phi i32 [ 1, %while.body1929.lr.ph ], [ %tmp.60, %if.end1948 ]
  %282 = load i8* %s.addr.34346, align 1, !tbaa !1
  %.off = add i8 %282, -48
  %283 = icmp ult i8 %.off, 10
  br i1 %283, label %if.end1948, label %if.then1937

if.then1937:                                      ; preds = %while.body1929
  %tobool1938 = icmp eq i32 %tmp.59345, 0
  br i1 %tobool1938, label %if.end1948, label %land.lhs.true1939

land.lhs.true1939:                                ; preds = %if.then1937
  br i1 %tobool1940, label %lor.lhs.false1941, label %got_it

lor.lhs.false1941:                                ; preds = %land.lhs.true1939
  %call1942 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.34346) #5
  %tobool1943 = icmp eq i32 %call1942, 0
  br i1 %tobool1943, label %if.end1948, label %got_it

if.end1948:                                       ; preds = %while.body1929, %if.then1937, %lor.lhs.false1941
  %tmp.60 = phi i32 [ %1, %lor.lhs.false1941 ], [ %1, %if.then1937 ], [ 1, %while.body1929 ]
  %incdec.ptr1949 = getelementptr inbounds i8* %s.addr.34346, i64 1
  %cmp1927 = icmp ult i8* %incdec.ptr1949, %strend
  br i1 %cmp1927, label %while.body1929, label %return

sw.bb1952:                                        ; preds = %entry
  %284 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1953 = or i32 %284, 1
  store i32 %or1953, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool1954 = icmp eq i8 %2, 0
  br i1 %tobool1954, label %while.cond2001.preheader, label %while.cond1956.preheader

while.cond1956.preheader:                         ; preds = %sw.bb1952
  %285 = load i8* %s, align 1, !tbaa !1
  %idxprom1957368 = zext i8 %285 to i64
  %arrayidx1958369 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1957368
  %286 = load i8* %arrayidx1958369, align 1, !tbaa !1
  %conv1959370 = zext i8 %286 to i64
  %add.ptr1960371 = getelementptr inbounds i8* %s, i64 %conv1959370
  %cmp1961372 = icmp ugt i8* %add.ptr1960371, %strend
  br i1 %cmp1961372, label %return, label %while.body1963.lr.ph

while.body1963.lr.ph:                             ; preds = %while.cond1956.preheader
  %tobool1989 = icmp eq i32 %norun, 0
  br label %while.body1963

while.cond2001.preheader:                         ; preds = %sw.bb1952
  %cmp2002361 = icmp ult i8* %s, %strend
  br i1 %cmp2002361, label %while.body2004.lr.ph, label %return

while.body2004.lr.ph:                             ; preds = %while.cond2001.preheader
  %tobool2020 = icmp eq i32 %norun, 0
  br label %while.body2004

while.body1963:                                   ; preds = %while.body1963.lr.ph, %while.cond1956.backedge
  %add.ptr1960375 = phi i8* [ %add.ptr1960371, %while.body1963.lr.ph ], [ %add.ptr1960, %while.cond1956.backedge ]
  %s.addr.35374 = phi i8* [ %s, %while.body1963.lr.ph ], [ %add.ptr1960375, %while.cond1956.backedge ]
  %tmp.61373 = phi i32 [ 1, %while.body1963.lr.ph ], [ %tmp.61.be, %while.cond1956.backedge ]
  %call1964 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.35374, i64* null) #6
  %cmp1965 = icmp ult i64 %call1964, 256
  %call1968 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.35374, i64* null) #6
  br i1 %cmp1965, label %cond.true1967, label %cond.false1981

cond.true1967:                                    ; preds = %while.body1963
  %cmp1970 = icmp ult i64 %call1968, 128
  br i1 %cmp1970, label %land.lhs.true1972, label %if.then1986

land.lhs.true1972:                                ; preds = %cond.true1967
  %call1973 = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.35374, i64* null) #6
  %sext = shl i64 %call1973, 32
  %idxprom1975 = ashr exact i64 %sext, 32
  %call1976 = call i16** @__ctype_b_loc() #6
  %287 = load i16** %call1976, align 8, !tbaa !3
  %arrayidx1977 = getelementptr inbounds i16* %287, i64 %idxprom1975
  %288 = load i16* %arrayidx1977, align 2, !tbaa !5
  %and1979 = and i16 %288, 2048
  %tobool1980 = icmp eq i16 %and1979, 0
  br i1 %tobool1980, label %if.then1986, label %while.cond1956.backedge

cond.false1981:                                   ; preds = %while.body1963
  %call1983 = call signext i8 @Perl_is_uni_digit_lc(i64 %call1968) #6
  %tobool1985 = icmp eq i8 %call1983, 0
  br i1 %tobool1985, label %if.then1986, label %while.cond1956.backedge

while.cond1956.backedge:                          ; preds = %cond.false1981, %land.lhs.true1972, %if.then1986, %lor.lhs.false1990
  %tmp.61.be = phi i32 [ %1, %lor.lhs.false1990 ], [ %1, %if.then1986 ], [ 1, %land.lhs.true1972 ], [ 1, %cond.false1981 ]
  %289 = load i8* %add.ptr1960375, align 1, !tbaa !1
  %idxprom1957 = zext i8 %289 to i64
  %arrayidx1958 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1957
  %290 = load i8* %arrayidx1958, align 1, !tbaa !1
  %conv1959 = zext i8 %290 to i64
  %add.ptr1960 = getelementptr inbounds i8* %add.ptr1960375, i64 %conv1959
  %cmp1961 = icmp ugt i8* %add.ptr1960, %strend
  br i1 %cmp1961, label %return, label %while.body1963

if.then1986:                                      ; preds = %land.lhs.true1972, %cond.false1981, %cond.true1967
  %tobool1987 = icmp eq i32 %tmp.61373, 0
  br i1 %tobool1987, label %while.cond1956.backedge, label %land.lhs.true1988

land.lhs.true1988:                                ; preds = %if.then1986
  br i1 %tobool1989, label %lor.lhs.false1990, label %got_it

lor.lhs.false1990:                                ; preds = %land.lhs.true1988
  %call1991 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.35374) #5
  %tobool1992 = icmp eq i32 %call1991, 0
  br i1 %tobool1992, label %while.cond1956.backedge, label %got_it

while.body2004:                                   ; preds = %while.body2004.lr.ph, %if.end2028
  %s.addr.36363 = phi i8* [ %s, %while.body2004.lr.ph ], [ %incdec.ptr2029, %if.end2028 ]
  %tmp.63362 = phi i32 [ 1, %while.body2004.lr.ph ], [ %tmp.64, %if.end2028 ]
  %291 = load i8* %s.addr.36363, align 1, !tbaa !1
  %cmp20071 = icmp sgt i8 %291, -1
  br i1 %cmp20071, label %land.lhs.true2009, label %if.then2017

land.lhs.true2009:                                ; preds = %while.body2004
  %idxprom2011 = sext i8 %291 to i64
  %call2012 = call i16** @__ctype_b_loc() #6
  %292 = load i16** %call2012, align 8, !tbaa !3
  %arrayidx2013 = getelementptr inbounds i16* %292, i64 %idxprom2011
  %293 = load i16* %arrayidx2013, align 2, !tbaa !5
  %and2015 = and i16 %293, 2048
  %tobool2016 = icmp eq i16 %and2015, 0
  br i1 %tobool2016, label %if.then2017, label %if.end2028

if.then2017:                                      ; preds = %land.lhs.true2009, %while.body2004
  %tobool2018 = icmp eq i32 %tmp.63362, 0
  br i1 %tobool2018, label %if.end2028, label %land.lhs.true2019

land.lhs.true2019:                                ; preds = %if.then2017
  br i1 %tobool2020, label %lor.lhs.false2021, label %got_it

lor.lhs.false2021:                                ; preds = %land.lhs.true2019
  %call2022 = call fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %s.addr.36363) #5
  %tobool2023 = icmp eq i32 %call2022, 0
  br i1 %tobool2023, label %if.end2028, label %got_it

if.end2028:                                       ; preds = %land.lhs.true2009, %if.then2017, %lor.lhs.false2021
  %tmp.64 = phi i32 [ %1, %lor.lhs.false2021 ], [ %1, %if.then2017 ], [ 1, %land.lhs.true2009 ]
  %incdec.ptr2029 = getelementptr inbounds i8* %s.addr.36363, i64 1
  %cmp2002 = icmp ult i8* %incdec.ptr2029, %strend
  br i1 %cmp2002, label %while.body2004, label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), i32 %conv2) #6
  br label %return

got_it:                                           ; preds = %lor.lhs.false1990, %land.lhs.true1988, %lor.lhs.false2021, %land.lhs.true2019, %lor.lhs.false1915, %land.lhs.true1913, %lor.lhs.false1941, %land.lhs.true1939, %lor.lhs.false1852, %land.lhs.true1850, %lor.lhs.false1883, %land.lhs.true1881, %lor.lhs.false1777, %land.lhs.true1775, %lor.lhs.false1803, %land.lhs.true1801, %lor.lhs.false1714, %land.lhs.true1712, %lor.lhs.false1745, %land.lhs.true1743, %lor.lhs.false1623, %land.lhs.true1621, %lor.lhs.false1661, %land.lhs.true1659, %lor.lhs.false1556, %land.lhs.true1554, %lor.lhs.false1587, %land.lhs.true1585, %lor.lhs.false1465, %land.lhs.true1463, %lor.lhs.false1503, %land.lhs.true1501, %lor.lhs.false1394, %land.lhs.true1392, %lor.lhs.false1429, %land.lhs.true1427, %lor.lhs.false1295, %land.lhs.true1293, %lor.lhs.false1341, %land.lhs.true1339, %lor.lhs.false1228, %land.lhs.true1226, %lor.lhs.false1263, %land.lhs.true1261, %lor.lhs.false1129, %land.lhs.true1127, %lor.lhs.false1175, %land.lhs.true1173, %lor.lhs.false950, %if.else948, %lor.lhs.false1088, %if.else1086, %lor.lhs.false674, %if.then669, %lor.lhs.false810, %if.then805, %lor.lhs.false444, %lor.lhs.false477, %land.lhs.true475, %land.lhs.true442, %lor.lhs.false341, %lor.lhs.false374, %land.lhs.true372, %land.lhs.true339, %lor.lhs.false552, %land.lhs.true550, %lor.lhs.false515, %land.lhs.true513, %lor.lhs.false151, %land.lhs.true149, %lor.lhs.false35, %land.lhs.true, %lor.lhs.false132, %land.lhs.true130, %lor.lhs.false824, %land.lhs.true822, %lor.lhs.false1103, %land.lhs.true1101
  %s.addr.37 = phi i8* [ %s.addr.12, %land.lhs.true1101 ], [ %s.addr.12, %lor.lhs.false1103 ], [ %s.addr.9, %land.lhs.true822 ], [ %s.addr.9, %lor.lhs.false824 ], [ %s.addr.192, %land.lhs.true130 ], [ %s.addr.192, %lor.lhs.false132 ], [ %s.addr.0103, %land.lhs.true ], [ %s.addr.0103, %lor.lhs.false35 ], [ %s.addr.2110, %land.lhs.true149 ], [ %s.addr.2110, %lor.lhs.false151 ], [ %s.addr.5115, %land.lhs.true513 ], [ %s.addr.5115, %lor.lhs.false515 ], [ %s.addr.6121, %land.lhs.true550 ], [ %s.addr.6121, %lor.lhs.false552 ], [ %s.addr.3127, %land.lhs.true339 ], [ %s.addr.3127, %land.lhs.true372 ], [ %s.addr.3127, %lor.lhs.false374 ], [ %s.addr.3127, %lor.lhs.false341 ], [ %s.addr.4134, %land.lhs.true442 ], [ %s.addr.4134, %land.lhs.true475 ], [ %s.addr.4134, %lor.lhs.false477 ], [ %s.addr.4134, %lor.lhs.false444 ], [ %s.addr.8145, %if.then805 ], [ %s.addr.8145, %lor.lhs.false810 ], [ %s.addr.7, %if.then669 ], [ %s.addr.7, %lor.lhs.false674 ], [ %s.addr.11157, %if.else1086 ], [ %s.addr.11157, %lor.lhs.false1088 ], [ %s.addr.10, %if.else948 ], [ %s.addr.10, %lor.lhs.false950 ], [ %s.addr.14171, %land.lhs.true1173 ], [ %s.addr.14171, %lor.lhs.false1175 ], [ %s.addr.13182, %land.lhs.true1127 ], [ %s.addr.13182, %lor.lhs.false1129 ], [ %s.addr.16189, %land.lhs.true1261 ], [ %s.addr.16189, %lor.lhs.false1263 ], [ %s.addr.15200, %land.lhs.true1226 ], [ %s.addr.15200, %lor.lhs.false1228 ], [ %s.addr.18207, %land.lhs.true1339 ], [ %s.addr.18207, %lor.lhs.false1341 ], [ %s.addr.17217, %land.lhs.true1293 ], [ %s.addr.17217, %lor.lhs.false1295 ], [ %s.addr.20224, %land.lhs.true1427 ], [ %s.addr.20224, %lor.lhs.false1429 ], [ %s.addr.19235, %land.lhs.true1392 ], [ %s.addr.19235, %lor.lhs.false1394 ], [ %s.addr.22242, %land.lhs.true1501 ], [ %s.addr.22242, %lor.lhs.false1503 ], [ %s.addr.21253, %land.lhs.true1463 ], [ %s.addr.21253, %lor.lhs.false1465 ], [ %s.addr.24260, %land.lhs.true1585 ], [ %s.addr.24260, %lor.lhs.false1587 ], [ %s.addr.23270, %land.lhs.true1554 ], [ %s.addr.23270, %lor.lhs.false1556 ], [ %s.addr.26277, %land.lhs.true1659 ], [ %s.addr.26277, %lor.lhs.false1661 ], [ %s.addr.25287, %land.lhs.true1621 ], [ %s.addr.25287, %lor.lhs.false1623 ], [ %s.addr.28294, %land.lhs.true1743 ], [ %s.addr.28294, %lor.lhs.false1745 ], [ %s.addr.27305, %land.lhs.true1712 ], [ %s.addr.27305, %lor.lhs.false1714 ], [ %s.addr.30312, %land.lhs.true1801 ], [ %s.addr.30312, %lor.lhs.false1803 ], [ %s.addr.29322, %land.lhs.true1775 ], [ %s.addr.29322, %lor.lhs.false1777 ], [ %s.addr.32329, %land.lhs.true1881 ], [ %s.addr.32329, %lor.lhs.false1883 ], [ %s.addr.31339, %land.lhs.true1850 ], [ %s.addr.31339, %lor.lhs.false1852 ], [ %s.addr.34346, %land.lhs.true1939 ], [ %s.addr.34346, %lor.lhs.false1941 ], [ %s.addr.33356, %land.lhs.true1913 ], [ %s.addr.33356, %lor.lhs.false1915 ], [ %s.addr.36363, %land.lhs.true2019 ], [ %s.addr.36363, %lor.lhs.false2021 ], [ %s.addr.35374, %land.lhs.true1988 ], [ %s.addr.35374, %lor.lhs.false1990 ]
  br label %return

return:                                           ; preds = %while.cond1956.preheader, %while.cond1956.backedge, %while.cond2001.preheader, %if.end2028, %while.cond1901.preheader, %while.cond1901.backedge, %while.cond1926.preheader, %if.end1948, %while.cond1818.preheader, %while.cond1818.backedge, %while.cond1863.preheader, %if.end1890, %while.cond1763.preheader, %while.cond1763.backedge, %while.cond1788.preheader, %if.end1810, %while.cond1676.preheader, %while.cond1676.backedge, %while.cond1725.preheader, %if.end1752, %while.cond1605.preheader, %while.cond1605.backedge, %while.cond1634.preheader, %if.end1668, %while.cond1518.preheader, %while.cond1518.backedge, %while.cond1567.preheader, %if.end1594, %while.cond1447.preheader, %while.cond1447.backedge, %while.cond1476.preheader, %if.end1510, %while.cond1356.preheader, %while.cond1356.backedge, %while.cond1405.preheader, %if.end1436, %while.cond1281.preheader, %while.cond1281.backedge, %while.cond1306.preheader, %if.end1348, %while.cond1190.preheader, %while.cond1190.backedge, %while.cond1239.preheader, %if.end1270, %while.cond1115.preheader, %while.cond1115.backedge, %while.cond1140.preheader, %if.end1182, %while.cond383.preheader, %if.end482, %while.cond291.preheader, %if.end379, %while.cond523.preheader, %if.end556, %while.cond490.preheader, %if.end519, %while.cond144.preheader, %if.else155, %while.cond.preheader, %while.cond.backedge, %while.cond43.preheader, %if.end139, %sw.default, %if.end1096, %lor.lhs.false1103, %lor.lhs.false824, %if.end818, %got_it
  %retval.0 = phi i8* [ %s.addr.37, %got_it ], [ null, %if.end818 ], [ null, %lor.lhs.false824 ], [ null, %lor.lhs.false1103 ], [ null, %if.end1096 ], [ null, %sw.default ], [ null, %if.end139 ], [ null, %while.cond43.preheader ], [ null, %while.cond.backedge ], [ null, %while.cond.preheader ], [ null, %if.else155 ], [ null, %while.cond144.preheader ], [ null, %if.end519 ], [ null, %while.cond490.preheader ], [ null, %if.end556 ], [ null, %while.cond523.preheader ], [ null, %if.end379 ], [ null, %while.cond291.preheader ], [ null, %if.end482 ], [ null, %while.cond383.preheader ], [ null, %if.end1182 ], [ null, %while.cond1140.preheader ], [ null, %while.cond1115.backedge ], [ null, %while.cond1115.preheader ], [ null, %if.end1270 ], [ null, %while.cond1239.preheader ], [ null, %while.cond1190.backedge ], [ null, %while.cond1190.preheader ], [ null, %if.end1348 ], [ null, %while.cond1306.preheader ], [ null, %while.cond1281.backedge ], [ null, %while.cond1281.preheader ], [ null, %if.end1436 ], [ null, %while.cond1405.preheader ], [ null, %while.cond1356.backedge ], [ null, %while.cond1356.preheader ], [ null, %if.end1510 ], [ null, %while.cond1476.preheader ], [ null, %while.cond1447.backedge ], [ null, %while.cond1447.preheader ], [ null, %if.end1594 ], [ null, %while.cond1567.preheader ], [ null, %while.cond1518.backedge ], [ null, %while.cond1518.preheader ], [ null, %if.end1668 ], [ null, %while.cond1634.preheader ], [ null, %while.cond1605.backedge ], [ null, %while.cond1605.preheader ], [ null, %if.end1752 ], [ null, %while.cond1725.preheader ], [ null, %while.cond1676.backedge ], [ null, %while.cond1676.preheader ], [ null, %if.end1810 ], [ null, %while.cond1788.preheader ], [ null, %while.cond1763.backedge ], [ null, %while.cond1763.preheader ], [ null, %if.end1890 ], [ null, %while.cond1863.preheader ], [ null, %while.cond1818.backedge ], [ null, %while.cond1818.preheader ], [ null, %if.end1948 ], [ null, %while.cond1926.preheader ], [ null, %while.cond1901.backedge ], [ null, %while.cond1901.preheader ], [ null, %if.end2028 ], [ null, %while.cond2001.preheader ], [ null, %while.cond1956.backedge ], [ null, %while.cond1956.preheader ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #3

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_regtry(%struct.regexp* %prog, i8* %startpos) #0 {
entry:
  %reganch = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 15
  %0 = load i32* %reganch, align 4, !tbaa !0
  %and = and i32 %0, 1024
  %tobool = icmp eq i32 %and, 0
  %1 = load i32* @PL_reg_eval_set, align 4, !tbaa !0
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %entry.if.end50_crit_edge, label %if.then

entry.if.end50_crit_edge:                         ; preds = %entry
  %.pre131 = load i8** @PL_bostr, align 8, !tbaa !3
  br label %if.end50

if.then:                                          ; preds = %entry
  store i32 1, i32* @PL_reg_eval_set, align 4, !tbaa !0
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 2
  %3 = load i32* %si_cxix, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 1
  %4 = load %struct.context** %si_cxstack, align 8, !tbaa !3
  %blku_oldsp = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 0
  tail call void @Perl_save_I32(i32* %blku_oldsp) #6
  %5 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div125 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div125 to i32
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_cxix2 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 2
  %8 = load i32* %si_cxix2, align 4, !tbaa !0
  %idxprom3 = sext i32 %8 to i64
  %si_cxstack4 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 1
  %9 = load %struct.context** %si_cxstack4, align 8, !tbaa !3
  %blku_oldsp8 = getelementptr inbounds %struct.context* %9, i64 %idxprom3, i32 1, i32 0, i32 0
  store i32 %conv, i32* %blku_oldsp8, align 4, !tbaa !0
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #6
  %10 = load i32* @PL_tmps_ix, align 4, !tbaa !0
  store i32 %10, i32* @PL_tmps_floor, align 4, !tbaa !0
  %11 = load %struct.sv** @PL_reg_sv, align 8, !tbaa !3
  %tobool9 = icmp eq %struct.sv* %11, null
  br i1 %tobool9, label %if.end31, label %if.then10

if.then10:                                        ; preds = %if.then
  %12 = load %struct.gv** @PL_defgv, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.gv* %12, i64 0, i32 0
  %13 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 7
  %14 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %14, i64 0, i32 0
  %15 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv* %11, %15
  br i1 %cmp, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then10
  tail call void @Perl_save_sptr(%struct.sv** %gp_sv) #6
  %16 = load %struct.sv** @PL_reg_sv, align 8, !tbaa !3
  %17 = load %struct.gv** @PL_defgv, align 8, !tbaa !3
  %sv_any16 = getelementptr inbounds %struct.gv* %17, i64 0, i32 0
  %18 = load %struct.xpvgv** %sv_any16, align 8, !tbaa !3
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp17, align 8, !tbaa !3
  %gp_sv18 = getelementptr inbounds %struct.gp* %19, i64 0, i32 0
  store %struct.sv* %16, %struct.sv** %gp_sv18, align 8, !tbaa !3
  %.pre130 = load %struct.sv** @PL_reg_sv, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then12
  %20 = phi %struct.sv* [ %11, %if.then10 ], [ %.pre130, %if.then12 ]
  %sv_flags = getelementptr inbounds %struct.sv* %20, i64 0, i32 2
  %21 = load i32* %sv_flags, align 4, !tbaa !0
  %and19 = and i32 %21, 255
  %cmp20 = icmp ugt i32 %and19, 6
  br i1 %cmp20, label %land.lhs.true22, label %if.then27

land.lhs.true22:                                  ; preds = %if.end
  %sv_any23 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %22 = load i8** %sv_any23, align 8, !tbaa !3
  %xmg_magic = getelementptr inbounds i8* %22, i64 40
  %23 = bitcast i8* %xmg_magic to %struct.magic**
  %24 = load %struct.magic** %23, align 8, !tbaa !3
  %tobool24 = icmp eq %struct.magic* %24, null
  br i1 %tobool24, label %if.then27, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %20, i32 103) #6
  %tobool26 = icmp eq %struct.magic* %call, null
  br i1 %tobool26, label %land.lhs.true25.if.then27_crit_edge, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.then27_crit_edge:              ; preds = %land.lhs.true25
  %.pre132 = load %struct.sv** @PL_reg_sv, align 8, !tbaa !3
  br label %if.then27

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  %mg_len30.phi.trans.insert = getelementptr inbounds %struct.magic* %call, i64 0, i32 7
  %.pre133 = load i32* %mg_len30.phi.trans.insert, align 4, !tbaa !0
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true25.if.then27_crit_edge, %land.lhs.true22, %if.end
  %25 = phi %struct.sv* [ %.pre132, %land.lhs.true25.if.then27_crit_edge ], [ %20, %land.lhs.true22 ], [ %20, %if.end ]
  tail call void @Perl_sv_magic(%struct.sv* %25, %struct.sv* null, i32 103, i8* null, i32 0) #6
  %26 = load %struct.sv** @PL_reg_sv, align 8, !tbaa !3
  %call28 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %26, i32 103) #6
  %mg_len = getelementptr inbounds %struct.magic* %call28, i64 0, i32 7
  store i32 -1, i32* %mg_len, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.then27
  %27 = phi i32 [ %.pre133, %land.lhs.true25.if.end29_crit_edge ], [ -1, %if.then27 ]
  %mg.0 = phi %struct.magic* [ %call, %land.lhs.true25.if.end29_crit_edge ], [ %call28, %if.then27 ]
  store %struct.magic* %mg.0, %struct.magic** @PL_reg_magic, align 8, !tbaa !3
  store i32 %27, i32* @PL_reg_oldpos, align 4, !tbaa !0
  tail call void @Perl_save_destructor_x(void (i8*)* @restore_pos, i8* null) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then, %if.end29
  %28 = load %struct.pmop** @PL_reg_curpm, align 8, !tbaa !3
  %tobool32 = icmp eq %struct.pmop* %28, null
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %call34 = tail call i8* @Perl_safesysmalloc(i64 112) #6
  %29 = bitcast i8* %call34 to %struct.pmop*
  store %struct.pmop* %29, %struct.pmop** @PL_reg_curpm, align 8, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* %call34, i8 0, i64 112, i32 1, i1 false)
  %.pre = load %struct.pmop** @PL_reg_curpm, align 8, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %if.end31, %if.then33
  %30 = phi %struct.pmop* [ %28, %if.end31 ], [ %.pre, %if.then33 ]
  %op_pmregexp = getelementptr inbounds %struct.pmop* %30, i64 0, i32 13
  store %struct.regexp* %prog, %struct.regexp** %op_pmregexp, align 8, !tbaa !3
  %31 = load %struct.pmop** @PL_curpm, align 8, !tbaa !3
  store %struct.pmop* %31, %struct.pmop** @PL_reg_oldcurpm, align 8, !tbaa !3
  %32 = load %struct.pmop** @PL_reg_curpm, align 8, !tbaa !3
  store %struct.pmop* %32, %struct.pmop** @PL_curpm, align 8, !tbaa !3
  %33 = load i32* %reganch, align 4, !tbaa !0
  %and37 = and i32 %33, 262144
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end35
  %subbeg = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 6
  %34 = load i8** %subbeg, align 8, !tbaa !3
  store i8* %34, i8** @PL_reg_oldsaved, align 8, !tbaa !3
  %sublen = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 8
  %35 = load i32* %sublen, align 4, !tbaa !0
  %conv40 = sext i32 %35 to i64
  store i64 %conv40, i64* @PL_reg_oldsavedlen, align 8, !tbaa !4
  %and42 = and i32 %33, -262145
  store i32 %and42, i32* %reganch, align 4, !tbaa !0
  br label %if.end43

if.else:                                          ; preds = %if.end35
  store i8* null, i8** @PL_reg_oldsaved, align 8, !tbaa !3
  %subbeg44.pre = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 6
  %sublen49.pre = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 8
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then39
  %sublen49.pre-phi = phi i32* [ %sublen49.pre, %if.else ], [ %sublen, %if.then39 ]
  %subbeg44.pre-phi = phi i8** [ %subbeg44.pre, %if.else ], [ %subbeg, %if.then39 ]
  %36 = load i8** @PL_bostr, align 8, !tbaa !3
  store i8* %36, i8** %subbeg44.pre-phi, align 8, !tbaa !3
  %37 = load i8** @PL_regeol, align 8, !tbaa !3
  %38 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast45 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %38 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %conv48 = trunc i64 %sub.ptr.sub47 to i32
  store i32 %conv48, i32* %sublen49.pre-phi, align 4, !tbaa !0
  br label %if.end50

if.end50:                                         ; preds = %entry.if.end50_crit_edge, %if.end43
  %39 = phi i8* [ %.pre131, %entry.if.end50_crit_edge ], [ %38, %if.end43 ]
  %sub.ptr.lhs.cast51 = ptrtoint i8* %startpos to i64
  %sub.ptr.rhs.cast52 = ptrtoint i8* %39 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %conv54 = trunc i64 %sub.ptr.sub53 to i32
  %startp = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 0
  %40 = load i32** %startp, align 8, !tbaa !3
  store i32 %conv54, i32* %40, align 4, !tbaa !0
  store i8* %startpos, i8** @PL_reginput, align 8, !tbaa !3
  %41 = load i32** %startp, align 8, !tbaa !3
  store i32* %41, i32** @PL_regstartp, align 8, !tbaa !3
  %endp = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 1
  %42 = load i32** %endp, align 8, !tbaa !3
  store i32* %42, i32** @PL_regendp, align 8, !tbaa !3
  %lastparen = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 13
  store i32* %lastparen, i32** @PL_reglastparen, align 8, !tbaa !3
  %lastcloseparen = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 14
  store i32* %lastcloseparen, i32** @PL_reglastcloseparen, align 8, !tbaa !3
  store i32 0, i32* %lastparen, align 4, !tbaa !0
  store i32 0, i32* %lastcloseparen, align 4, !tbaa !0
  store i32 0, i32* @PL_regsize, align 4, !tbaa !0
  %43 = load i32* @PL_reg_start_tmpl, align 4, !tbaa !0
  %nparens = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 12
  %44 = load i32* %nparens, align 4, !tbaa !0
  %cmp59 = icmp ugt i32 %43, %44
  br i1 %cmp59, label %if.end73, label %if.then61

if.then61:                                        ; preds = %if.end50
  %mul = mul i32 %44, 3
  %div = lshr i32 %mul, 1
  %add = add i32 %div, 3
  store i32 %add, i32* @PL_reg_start_tmpl, align 4, !tbaa !0
  %45 = load i8*** @PL_reg_start_tmp, align 8, !tbaa !3
  %tobool63 = icmp eq i8** %45, null
  br i1 %tobool63, label %if.else68, label %if.then64

if.then64:                                        ; preds = %if.then61
  %46 = bitcast i8** %45 to i8*
  %conv65 = zext i32 %add to i64
  %mul66 = shl nuw nsw i64 %conv65, 3
  %call67 = tail call i8* @Perl_safesysrealloc(i8* %46, i64 %mul66) #6
  br label %if.end73thread-pre-split

if.else68:                                        ; preds = %if.then61
  %conv69 = zext i32 %add to i64
  %mul70 = shl nuw nsw i64 %conv69, 3
  %call71 = tail call i8* @Perl_safesysmalloc(i64 %mul70) #6
  br label %if.end73thread-pre-split

if.end73thread-pre-split:                         ; preds = %if.else68, %if.then64
  %storemerge.in = phi i8* [ %call67, %if.then64 ], [ %call71, %if.else68 ]
  %storemerge = bitcast i8* %storemerge.in to i8**
  store i8** %storemerge, i8*** @PL_reg_start_tmp, align 8, !tbaa !3
  %.pr = load i32* %nparens, align 4, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %if.end73thread-pre-split, %if.end50
  %47 = phi i32 [ %.pr, %if.end73thread-pre-split ], [ %44, %if.end50 ]
  %tobool77 = icmp eq i32 %47, 0
  br i1 %tobool77, label %if.end83, label %if.then78

if.then78:                                        ; preds = %if.end73
  %48 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %49 = load i32* %48, align 4, !tbaa !0
  %cmp80126 = icmp sgt i32 %47, %49
  br i1 %cmp80126, label %for.body.lr.ph, label %if.end83

for.body.lr.ph:                                   ; preds = %if.then78
  %50 = load i32** %startp, align 8, !tbaa !3
  %51 = load i32** %endp, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ep.0129 = phi i32* [ %51, %for.body.lr.ph ], [ %incdec.ptr82, %for.body ]
  %sp.0128 = phi i32* [ %50, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %i.0127 = phi i32 [ %47, %for.body.lr.ph ], [ %dec, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %sp.0128, i64 1
  store i32 -1, i32* %incdec.ptr, align 4, !tbaa !0
  %incdec.ptr82 = getelementptr inbounds i32* %ep.0129, i64 1
  store i32 -1, i32* %incdec.ptr82, align 4, !tbaa !0
  %dec = add nsw i32 %i.0127, -1
  %52 = load i32* %48, align 4, !tbaa !0
  %cmp80 = icmp sgt i32 %dec, %52
  br i1 %cmp80, label %for.body, label %if.end83

if.end83:                                         ; preds = %if.then78, %for.body, %if.end73
  %53 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 16, i64 1
  %call84 = tail call fastcc i32 @S_regmatch(%struct.regnode* %add.ptr) #5
  %tobool85 = icmp eq i32 %call84, 0
  br i1 %tobool85, label %if.end93, label %if.then86

if.then86:                                        ; preds = %if.end83
  %54 = load i8** @PL_reginput, align 8, !tbaa !3
  %55 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast87 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %55 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  %56 = load i32** %endp, align 8, !tbaa !3
  store i32 %conv90, i32* %56, align 4, !tbaa !0
  br label %return

if.end93:                                         ; preds = %if.end83
  %57 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp94 = icmp sgt i32 %57, %53
  br i1 %cmp94, label %if.then96, label %return

if.then96:                                        ; preds = %if.end93
  tail call void @Perl_leave_scope(i32 %53) #6
  br label %return

return:                                           ; preds = %if.end93, %if.then96, %if.then86
  %retval.0 = phi i32 [ 1, %if.then86 ], [ 0, %if.then96 ], [ 0, %if.end93 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #3

; Function Attrs: optsize
declare i8* @Perl_rninstr(i8*, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal void @restore_pos(i8* nocapture %arg) #0 {
entry:
  %0 = load i32* @PL_reg_eval_set, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8** @PL_reg_oldsaved, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %subbeg = getelementptr inbounds %struct.regexp* %2, i64 0, i32 6
  store i8* %1, i8** %subbeg, align 8, !tbaa !3
  %3 = load i64* @PL_reg_oldsavedlen, align 8, !tbaa !4
  %conv = trunc i64 %3 to i32
  %4 = load %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %sublen = getelementptr inbounds %struct.regexp* %4, i64 0, i32 8
  store i32 %conv, i32* %sublen, align 4, !tbaa !0
  %reganch = getelementptr inbounds %struct.regexp* %4, i64 0, i32 15
  %5 = load i32* %reganch, align 4, !tbaa !0
  %or = or i32 %5, 262144
  store i32 %or, i32* %reganch, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %6 = load i32* @PL_reg_oldpos, align 4, !tbaa !0
  %7 = load %struct.magic** @PL_reg_magic, align 8, !tbaa !3
  %mg_len = getelementptr inbounds %struct.magic* %7, i64 0, i32 7
  store i32 %6, i32* %mg_len, align 4, !tbaa !0
  store i32 0, i32* @PL_reg_eval_set, align 4, !tbaa !0
  %8 = load %struct.pmop** @PL_reg_oldcurpm, align 8, !tbaa !3
  store %struct.pmop* %8, %struct.pmop** @PL_curpm, align 8, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #3

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_regclass_swash(%struct.regnode* nocapture %node, i8 signext %doinit, %struct.sv** %listsvp, %struct.sv** %altsvp) #0 {
entry:
  %0 = load %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  %tobool = icmp eq %struct.reg_data* %0, null
  br i1 %tobool, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.reg_data* %0, i64 0, i32 0
  %1 = load i32* %count, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %if.end34, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arg1 = getelementptr inbounds %struct.regnode* %node, i64 1
  %2 = bitcast %struct.regnode* %arg1 to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %idxprom = zext i32 %3 to i64
  %what = getelementptr inbounds %struct.reg_data* %0, i64 0, i32 1
  %4 = load i8** %what, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %4, i64 %idxprom
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %5, 115
  br i1 %cmp, label %if.then3, label %if.end34

if.then3:                                         ; preds = %if.then
  %arrayidx5 = getelementptr inbounds %struct.reg_data* %0, i64 0, i32 2, i64 %idxprom
  %6 = load i8** %arrayidx5, align 8, !tbaa !3
  %sv_any = bitcast i8* %6 to i8**
  %7 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %9 = bitcast %struct.sv* %8 to %struct.av*
  %sv_any6 = bitcast %struct.sv* %8 to %struct.xpvav**
  %10 = load %struct.xpvav** %sv_any6, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 0
  %11 = load i8** %xav_array, align 8, !tbaa !3
  %12 = bitcast i8* %11 to %struct.sv**
  %13 = load %struct.sv** %12, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds i8* %11, i64 8
  %14 = bitcast i8* %arrayidx7 to %struct.sv**
  %15 = load %struct.sv** %14, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %16 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %16, 255
  %cmp8 = icmp eq i32 %and, 3
  %. = select i1 %cmp8, %struct.sv** %14, %struct.sv** null
  %arrayidx11 = getelementptr inbounds i8* %11, i64 16
  %17 = bitcast i8* %arrayidx11 to %struct.sv**
  %18 = load %struct.sv** %17, align 8, !tbaa !3
  %sv_flags12 = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags12, align 4, !tbaa !0
  %and13 = and i32 %19, 255
  %cmp14 = icmp eq i32 %and13, 10
  %cond20 = select i1 %cmp14, %struct.sv** %17, %struct.sv** null
  %tobool21 = icmp eq %struct.sv** %., null
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then3
  %20 = load %struct.sv** %., align 8, !tbaa !3
  br label %if.end29

if.else:                                          ; preds = %if.then3
  %tobool23 = icmp eq %struct.sv* %13, null
  %tobool26 = icmp eq i8 %doinit, 0
  %or.cond = or i1 %tobool23, %tobool26
  br i1 %or.cond, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.else
  %call = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %struct.sv* %13, i32 1, i32 0) #6
  %call28 = tail call %struct.sv** @Perl_av_store(%struct.av* %9, i32 1, %struct.sv* %call) #6
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then27, %if.then22
  %sw.0 = phi %struct.sv* [ %20, %if.then22 ], [ %call, %if.then27 ], [ null, %if.else ]
  %tobool30 = icmp eq %struct.sv** %cond20, null
  br i1 %tobool30, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.end29
  %21 = load %struct.sv** %cond20, align 8, !tbaa !3
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %land.lhs.true, %entry, %if.then, %if.then31
  %alt.0 = phi %struct.sv* [ %21, %if.then31 ], [ null, %if.end29 ], [ null, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %si.0 = phi %struct.sv* [ %13, %if.then31 ], [ %13, %if.end29 ], [ null, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %sw.1 = phi %struct.sv* [ %sw.0, %if.then31 ], [ %sw.0, %if.end29 ], [ null, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %tobool35 = icmp eq %struct.sv** %listsvp, null
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end34
  store %struct.sv* %si.0, %struct.sv** %listsvp, align 8, !tbaa !3
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.then36
  %tobool38 = icmp eq %struct.sv** %altsvp, null
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end37
  store %struct.sv* %alt.0, %struct.sv** %altsvp, align 8, !tbaa !3
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %if.then39
  ret %struct.sv* %sw.1
}

; Function Attrs: optsize
declare %struct.sv* @Perl_swash_init(i8*, i8*, %struct.sv*, i32, i32) #3

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #3

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #3

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #3

; Function Attrs: optsize
declare void @Perl_save_I32(i32*) #3

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #3

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #3

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @Perl_save_destructor_x(void (i8*)*, i8*) #3

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_regmatch(%struct.regnode* %prog) #0 {
entry:
  %ulen = alloca i64, align 8
  %e269 = alloca i8*, align 8
  %inclasslen = alloca i64, align 8
  %ulen1 = alloca i64, align 8
  %ulen2 = alloca i64, align 8
  %tmpbuf1 = alloca [7 x i8], align 1
  %tmpbuf2 = alloca [7 x i8], align 1
  %state = alloca %struct.re_cc_state, align 8
  %len = alloca i64, align 8
  %pm = alloca %struct.pmop, align 8
  %cc1755 = alloca %struct.curcur, align 8
  %l2320 = alloca i32, align 4
  %ulen13260 = alloca i64, align 8
  %ulen23261 = alloca i64, align 8
  %tmpbuf13262 = alloca [7 x i8], align 1
  %tmpbuf23263 = alloca [7 x i8], align 1
  %len3488 = alloca i64, align 8
  %0 = load i8** @PL_reginput, align 8, !tbaa !3
  %1 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %2 = load i8* %0, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %tobool82 = icmp eq i8 %1, 0
  %conv133 = sext i8 %1 to i32
  %tobool262 = icmp ne i8 %1, 0
  %arraydecay1408 = getelementptr inbounds [7 x i8]* %tmpbuf1, i64 0, i64 0
  %arraydecay1410 = getelementptr inbounds [7 x i8]* %tmpbuf2, i64 0, i64 0
  %3 = bitcast %struct.re_cc_state* %state to i8*
  %4 = bitcast %struct.pmop* %pm to i8*
  %op_pmdynflags = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 16
  %node = getelementptr inbounds %struct.re_cc_state* %state, i64 0, i32 1
  %prev = getelementptr inbounds %struct.re_cc_state* %state, i64 0, i32 2
  %cc = getelementptr inbounds %struct.re_cc_state* %state, i64 0, i32 3
  %re1594 = getelementptr inbounds %struct.re_cc_state* %state, i64 0, i32 4
  %ss = getelementptr inbounds %struct.re_cc_state* %state, i64 0, i32 0
  %5 = bitcast %struct.curcur* %cc1755 to i8*
  %oldcc = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 8
  %parenfloor1773 = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 0
  %cur = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 1
  %min = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 2
  %max = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 3
  %scan1779 = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 5
  %next1780 = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 6
  %minmod1781 = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 4
  %lastloc = getelementptr inbounds %struct.curcur* %cc1755, i64 0, i32 7
  %arraydecay3264 = getelementptr inbounds [7 x i8]* %tmpbuf13262, i64 0, i64 0
  %arraydecay3266 = getelementptr inbounds [7 x i8]* %tmpbuf23263, i64 0, i64 0
  br label %while.cond

while.cond:                                       ; preds = %if.end4315, %if.else2303, %if.then1735, %if.then1746, %if.else1738, %sw.bb1694, %if.then1700, %if.else1691, %while.body, %while.body, %while.body, %if.end1372, %if.end1021, %if.end1056, %if.end907, %if.end125, %if.else127, %if.end91, %if.else93, %if.end65, %sw.bb38, %sw.bb33, %sw.bb18, %land.lhs.true26, %sw.bb, %land.lhs.true12, %cond.end4256, %do_longjump, %sw.bb2318, %sw.bb1751, %land.end1731, %if.end1721, %if.end1480, %if.end1424, %if.end1359, %if.end1315, %if.end1285, %if.end1231, %if.end1201, %if.end1150, %if.end1111, %if.end982, %if.end714, %if.end666, %if.end607, %if.end559, %if.then502, %if.end438, %cond.end405, %if.end381, %if.end339, %if.end251, %if.end228, %if.end102, %sw.bb70, %meol, %if.end1635, %land.end1661, %cond.true1676, %cond.false1680, %cond.true1668, %do_branch, %entry
  %unwind.0 = phi i32 [ 0, %entry ], [ %unwind.0, %cond.end4256 ], [ %unwind.0, %do_longjump ], [ %unwind.25651, %if.end4315 ], [ %unwind.0, %sw.bb2318 ], [ %call2304, %if.else2303 ], [ %unwind.0, %sw.bb1751 ], [ %unwind.0, %if.then1735 ], [ %unwind.0, %if.then1746 ], [ %unwind.0, %if.else1738 ], [ %unwind.0, %land.end1731 ], [ %unwind.0, %if.end1721 ], [ %unwind.0, %if.then1700 ], [ %unwind.0, %sw.bb1694 ], [ %unwind.0, %if.else1691 ], [ %unwind.0, %while.body ], [ %unwind.0, %while.body ], [ %unwind.0, %while.body ], [ %unwind.0, %if.end1372 ], [ %unwind.0, %if.end1424 ], [ %unwind.0, %if.end1480 ], [ %unwind.0, %if.end1359 ], [ %unwind.0, %if.end1285 ], [ %unwind.0, %if.end1315 ], [ %unwind.0, %if.end1201 ], [ %unwind.0, %if.end1231 ], [ %unwind.0, %if.end1111 ], [ %unwind.0, %if.end1150 ], [ %unwind.0, %if.end982 ], [ %unwind.0, %if.end1021 ], [ %unwind.0, %if.end1056 ], [ %unwind.0, %if.end907 ], [ %unwind.0, %if.end666 ], [ %unwind.0, %if.end714 ], [ %unwind.0, %if.end559 ], [ %unwind.0, %if.end607 ], [ %unwind.0, %cond.end405 ], [ %unwind.0, %if.then502 ], [ %unwind.0, %if.end438 ], [ %unwind.0, %if.end339 ], [ %unwind.0, %if.end381 ], [ %unwind.0, %if.end228 ], [ %unwind.0, %if.end251 ], [ %unwind.0, %if.end125 ], [ %unwind.0, %if.else127 ], [ %unwind.0, %if.end102 ], [ %unwind.0, %if.end91 ], [ %unwind.0, %if.else93 ], [ %unwind.0, %sw.bb70 ], [ %unwind.0, %if.end65 ], [ %unwind.0, %sw.bb38 ], [ %unwind.0, %sw.bb33 ], [ %unwind.0, %sw.bb18 ], [ %unwind.0, %land.lhs.true26 ], [ %unwind.0, %sw.bb ], [ %unwind.0, %land.lhs.true12 ], [ %unwind.0, %meol ], [ %unwind.0, %if.end1635 ], [ %unwind.0, %land.end1661 ], [ %unwind.0, %cond.true1676 ], [ %unwind.0, %cond.false1680 ], [ %unwind.0, %cond.true1668 ], [ %unwind.0, %do_branch ]
  %logical.0 = phi i32 [ 0, %entry ], [ %logical.0, %cond.end4256 ], [ %logical.3, %do_longjump ], [ %logical.5.ph, %if.end4315 ], [ %logical.0, %sw.bb2318 ], [ %logical.0, %if.else2303 ], [ %conv1753, %sw.bb1751 ], [ %logical.0, %if.then1735 ], [ %logical.0, %if.then1746 ], [ %logical.0, %if.else1738 ], [ %logical.0, %land.end1731 ], [ %logical.0, %if.end1721 ], [ %logical.0, %if.then1700 ], [ %logical.0, %sw.bb1694 ], [ 0, %if.else1691 ], [ %logical.0, %while.body ], [ %logical.0, %while.body ], [ %logical.0, %while.body ], [ %logical.0, %if.end1372 ], [ %logical.0, %if.end1424 ], [ %logical.0, %if.end1480 ], [ %logical.0, %if.end1359 ], [ %logical.0, %if.end1285 ], [ %logical.0, %if.end1315 ], [ %logical.0, %if.end1201 ], [ %logical.0, %if.end1231 ], [ %logical.0, %if.end1111 ], [ %logical.0, %if.end1150 ], [ %logical.0, %if.end982 ], [ %logical.0, %if.end1021 ], [ %logical.0, %if.end1056 ], [ %logical.0, %if.end907 ], [ %logical.0, %if.end666 ], [ %logical.0, %if.end714 ], [ %logical.0, %if.end559 ], [ %logical.0, %if.end607 ], [ %logical.0, %cond.end405 ], [ %logical.0, %if.then502 ], [ %logical.0, %if.end438 ], [ %logical.0, %if.end339 ], [ %logical.0, %if.end381 ], [ %logical.0, %if.end228 ], [ %logical.0, %if.end251 ], [ %logical.0, %if.end125 ], [ %logical.0, %if.else127 ], [ %logical.0, %if.end102 ], [ %logical.0, %if.end91 ], [ %logical.0, %if.else93 ], [ %logical.0, %sw.bb70 ], [ %logical.0, %if.end65 ], [ %logical.0, %sw.bb38 ], [ %logical.0, %sw.bb33 ], [ %logical.0, %sw.bb18 ], [ %logical.0, %land.lhs.true26 ], [ %logical.0, %sw.bb ], [ %logical.0, %land.lhs.true12 ], [ %logical.0, %meol ], [ 0, %if.end1635 ], [ 0, %land.end1661 ], [ 0, %cond.true1676 ], [ 0, %cond.false1680 ], [ 0, %cond.true1668 ], [ %logical.0, %do_branch ]
  %sw.0 = phi i32 [ 0, %entry ], [ %sw.0, %cond.end4256 ], [ %sw.2, %do_longjump ], [ %sw.0, %if.end4315 ], [ %sw.0, %sw.bb2318 ], [ %sw.0, %if.else2303 ], [ %sw.0, %sw.bb1751 ], [ %sw.0, %if.then1735 ], [ 0, %if.then1746 ], [ 0, %if.else1738 ], [ %land.ext1732, %land.end1731 ], [ %sw.0, %if.end1721 ], [ %sw.0, %if.then1700 ], [ %sw.0, %sw.bb1694 ], [ %sw.0, %if.else1691 ], [ %sw.0, %while.body ], [ %sw.0, %while.body ], [ %sw.0, %while.body ], [ %sw.0, %if.end1372 ], [ %sw.0, %if.end1424 ], [ %sw.0, %if.end1480 ], [ %sw.0, %if.end1359 ], [ %sw.0, %if.end1285 ], [ %sw.0, %if.end1315 ], [ %sw.0, %if.end1201 ], [ %sw.0, %if.end1231 ], [ %sw.0, %if.end1111 ], [ %sw.0, %if.end1150 ], [ %sw.0, %if.end982 ], [ %sw.0, %if.end1021 ], [ %sw.0, %if.end1056 ], [ %sw.0, %if.end907 ], [ %sw.0, %if.end666 ], [ %sw.0, %if.end714 ], [ %sw.0, %if.end559 ], [ %sw.0, %if.end607 ], [ %sw.0, %cond.end405 ], [ %sw.0, %if.then502 ], [ %sw.0, %if.end438 ], [ %sw.0, %if.end339 ], [ %sw.0, %if.end381 ], [ %sw.0, %if.end228 ], [ %sw.0, %if.end251 ], [ %sw.0, %if.end125 ], [ %sw.0, %if.else127 ], [ %sw.0, %if.end102 ], [ %sw.0, %if.end91 ], [ %sw.0, %if.else93 ], [ %sw.0, %sw.bb70 ], [ %sw.0, %if.end65 ], [ %sw.0, %sw.bb38 ], [ %sw.0, %sw.bb33 ], [ %sw.0, %sw.bb18 ], [ %sw.0, %land.lhs.true26 ], [ %sw.0, %sw.bb ], [ %sw.0, %land.lhs.true12 ], [ %sw.0, %meol ], [ 0, %if.end1635 ], [ %cond1663, %land.end1661 ], [ %conv1679, %cond.true1676 ], [ %conv1682, %cond.false1680 ], [ %conv1671, %cond.true1668 ], [ %sw.0, %do_branch ]
  %minmod.0 = phi i32 [ 0, %entry ], [ %minmod.0, %cond.end4256 ], [ %minmod.0, %do_longjump ], [ %minmod.2.ph, %if.end4315 ], [ 1, %sw.bb2318 ], [ %minmod.0, %if.else2303 ], [ %minmod.0, %sw.bb1751 ], [ %minmod.0, %if.then1735 ], [ %minmod.0, %if.then1746 ], [ %minmod.0, %if.else1738 ], [ %minmod.0, %land.end1731 ], [ %minmod.0, %if.end1721 ], [ %minmod.0, %if.then1700 ], [ %minmod.0, %sw.bb1694 ], [ %minmod.0, %if.else1691 ], [ %minmod.0, %while.body ], [ %minmod.0, %while.body ], [ %minmod.0, %while.body ], [ %minmod.0, %if.end1372 ], [ %minmod.0, %if.end1424 ], [ %minmod.0, %if.end1480 ], [ %minmod.0, %if.end1359 ], [ %minmod.0, %if.end1285 ], [ %minmod.0, %if.end1315 ], [ %minmod.0, %if.end1201 ], [ %minmod.0, %if.end1231 ], [ %minmod.0, %if.end1111 ], [ %minmod.0, %if.end1150 ], [ %minmod.0, %if.end982 ], [ %minmod.0, %if.end1021 ], [ %minmod.0, %if.end1056 ], [ %minmod.0, %if.end907 ], [ %minmod.0, %if.end666 ], [ %minmod.0, %if.end714 ], [ %minmod.0, %if.end559 ], [ %minmod.0, %if.end607 ], [ %minmod.0, %cond.end405 ], [ %minmod.0, %if.then502 ], [ %minmod.0, %if.end438 ], [ %minmod.0, %if.end339 ], [ %minmod.0, %if.end381 ], [ %minmod.0, %if.end228 ], [ %minmod.0, %if.end251 ], [ %minmod.0, %if.end125 ], [ %minmod.0, %if.else127 ], [ %minmod.0, %if.end102 ], [ %minmod.0, %if.end91 ], [ %minmod.0, %if.else93 ], [ %minmod.0, %sw.bb70 ], [ %minmod.0, %if.end65 ], [ %minmod.0, %sw.bb38 ], [ %minmod.0, %sw.bb33 ], [ %minmod.0, %sw.bb18 ], [ %minmod.0, %land.lhs.true26 ], [ %minmod.0, %sw.bb ], [ %minmod.0, %land.lhs.true12 ], [ %minmod.0, %meol ], [ %minmod.0, %if.end1635 ], [ %minmod.0, %land.end1661 ], [ %minmod.0, %cond.true1676 ], [ %minmod.0, %cond.false1680 ], [ %minmod.0, %cond.true1668 ], [ %minmod.0, %do_branch ]
  %locinput.0 = phi i8* [ %0, %entry ], [ %locinput.0, %cond.end4256 ], [ %locinput.16, %do_longjump ], [ %849, %if.end4315 ], [ %locinput.0, %sw.bb2318 ], [ %locinput.0, %if.else2303 ], [ %locinput.0, %sw.bb1751 ], [ %locinput.0, %if.then1735 ], [ %locinput.0, %if.then1746 ], [ %locinput.0, %if.else1738 ], [ %locinput.0, %land.end1731 ], [ %locinput.0, %if.end1721 ], [ %locinput.0, %if.then1700 ], [ %locinput.0, %sw.bb1694 ], [ %locinput.0, %if.else1691 ], [ %locinput.0, %while.body ], [ %locinput.0, %while.body ], [ %locinput.0, %while.body ], [ %locinput.0, %if.end1372 ], [ %l1389.1, %if.end1424 ], [ %add.ptr1452, %if.end1480 ], [ %locinput.2, %if.end1359 ], [ %add.ptr1290, %if.end1285 ], [ %incdec.ptr1316, %if.end1315 ], [ %add.ptr1206, %if.end1201 ], [ %incdec.ptr1232, %if.end1231 ], [ %add.ptr1116, %if.end1111 ], [ %incdec.ptr1151, %if.end1150 ], [ %add.ptr987, %if.end982 ], [ %incdec.ptr1022, %if.end1021 ], [ %incdec.ptr1057, %if.end1056 ], [ %locinput.0, %if.end907 ], [ %add.ptr671, %if.end666 ], [ %incdec.ptr715, %if.end714 ], [ %add.ptr564, %if.end559 ], [ %incdec.ptr608, %if.end607 ], [ %add.ptr407, %cond.end405 ], [ %add.ptr503, %if.then502 ], [ %incdec.ptr439, %if.end438 ], [ %83, %if.end339 ], [ %add.ptr383, %if.end381 ], [ %l.2, %if.end228 ], [ %add.ptr253, %if.end251 ], [ %add.ptr121, %if.end125 ], [ %incdec.ptr128, %if.else127 ], [ %incdec.ptr103, %if.end102 ], [ %add.ptr87, %if.end91 ], [ %incdec.ptr, %if.else93 ], [ %locinput.0, %sw.bb70 ], [ %locinput.0, %if.end65 ], [ %locinput.0, %sw.bb38 ], [ %locinput.0, %sw.bb33 ], [ %locinput.0, %sw.bb18 ], [ %locinput.0, %land.lhs.true26 ], [ %locinput.0, %sw.bb ], [ %locinput.0, %land.lhs.true12 ], [ %locinput.0, %meol ], [ %locinput.0, %if.end1635 ], [ %locinput.0, %land.end1661 ], [ %locinput.0, %cond.true1676 ], [ %locinput.0, %cond.false1680 ], [ %locinput.0, %cond.true1668 ], [ %locinput.0, %do_branch ]
  %ln.0 = phi i32 [ 0, %entry ], [ %ln.0, %cond.end4256 ], [ %ln.0, %do_longjump ], [ %ln.13.ph5642, %if.end4315 ], [ %ln.0, %sw.bb2318 ], [ %ln.0, %if.else2303 ], [ %ln.0, %sw.bb1751 ], [ %ln.0, %if.then1735 ], [ %ln.0, %if.then1746 ], [ %ln.0, %if.else1738 ], [ %ln.0, %land.end1731 ], [ %ln.0, %if.end1721 ], [ %ln.0, %if.then1700 ], [ %ln.0, %sw.bb1694 ], [ %ln.0, %if.else1691 ], [ %ln.0, %while.body ], [ %ln.0, %while.body ], [ %ln.0, %while.body ], [ %253, %if.end1372 ], [ %253, %if.end1424 ], [ %sub, %if.end1480 ], [ %ln.0, %if.end1359 ], [ %ln.0, %if.end1285 ], [ %ln.0, %if.end1315 ], [ %ln.0, %if.end1201 ], [ %ln.0, %if.end1231 ], [ %ln.0, %if.end1111 ], [ %ln.0, %if.end1150 ], [ %ln.0, %if.end982 ], [ %ln.0, %if.end1021 ], [ %ln.0, %if.end1056 ], [ %ln.2, %if.end907 ], [ %ln.0, %if.end666 ], [ %ln.0, %if.end714 ], [ %ln.0, %if.end559 ], [ %ln.0, %if.end607 ], [ %ln.0, %cond.end405 ], [ %ln.0, %if.then502 ], [ %ln.0, %if.end438 ], [ %conv260, %if.end339 ], [ %conv260, %if.end381 ], [ %conv132, %if.end228 ], [ %conv132, %if.end251 ], [ %ln.0, %if.end125 ], [ %ln.0, %if.else127 ], [ %ln.0, %if.end102 ], [ %ln.0, %if.end91 ], [ %ln.0, %if.else93 ], [ %ln.0, %sw.bb70 ], [ %ln.0, %if.end65 ], [ %ln.0, %sw.bb38 ], [ %ln.0, %sw.bb33 ], [ %ln.0, %sw.bb18 ], [ %ln.0, %land.lhs.true26 ], [ %ln.0, %sw.bb ], [ %ln.0, %land.lhs.true12 ], [ %ln.0, %meol ], [ %ln.0, %if.end1635 ], [ %ln.0, %land.end1661 ], [ %ln.0, %cond.true1676 ], [ %ln.0, %cond.false1680 ], [ %ln.0, %cond.true1668 ], [ %ln.0, %do_branch ]
  %nextchr.0 = phi i32 [ %conv, %entry ], [ %nextchr.0, %cond.end4256 ], [ %nextchr.2, %do_longjump ], [ %851, %if.end4315 ], [ %nextchr.0, %sw.bb2318 ], [ %nextchr.0, %if.else2303 ], [ %nextchr.0, %sw.bb1751 ], [ %nextchr.0, %if.then1735 ], [ %nextchr.0, %if.then1746 ], [ %nextchr.0, %if.else1738 ], [ %nextchr.0, %land.end1731 ], [ %nextchr.0, %if.end1721 ], [ %nextchr.0, %if.then1700 ], [ %nextchr.0, %sw.bb1694 ], [ %nextchr.0, %if.else1691 ], [ %nextchr.0, %while.body ], [ %nextchr.0, %while.body ], [ %nextchr.0, %while.body ], [ %nextchr.0, %if.end1372 ], [ %conv1425, %if.end1424 ], [ %conv1483, %if.end1480 ], [ %conv1360, %if.end1359 ], [ %conv1291, %if.end1285 ], [ %conv1317, %if.end1315 ], [ %conv1207, %if.end1201 ], [ %conv1233, %if.end1231 ], [ %conv1117, %if.end1111 ], [ %conv1152, %if.end1150 ], [ %conv988, %if.end982 ], [ %conv1023, %if.end1021 ], [ %conv1058, %if.end1056 ], [ %nextchr.0, %if.end907 ], [ %conv672, %if.end666 ], [ %conv716, %if.end714 ], [ %conv565, %if.end559 ], [ %conv609, %if.end607 ], [ %conv408, %cond.end405 ], [ %conv504, %if.then502 ], [ %conv440, %if.end438 ], [ %conv340, %if.end339 ], [ %conv384, %if.end381 ], [ %conv229, %if.end228 ], [ %conv254, %if.end251 ], [ %conv126, %if.end125 ], [ %conv129, %if.else127 ], [ %conv104, %if.end102 ], [ %conv92, %if.end91 ], [ %conv94, %if.else93 ], [ %nextchr.0, %sw.bb70 ], [ %nextchr.0, %if.end65 ], [ %nextchr.0, %sw.bb38 ], [ %nextchr.0, %sw.bb33 ], [ %nextchr.0, %sw.bb18 ], [ %nextchr.0, %land.lhs.true26 ], [ %nextchr.0, %sw.bb ], [ %nextchr.0, %land.lhs.true12 ], [ %nextchr.0, %meol ], [ %nextchr.0, %if.end1635 ], [ %nextchr.0, %land.end1661 ], [ %nextchr.0, %cond.true1676 ], [ %nextchr.0, %cond.false1680 ], [ %nextchr.0, %cond.true1668 ], [ %nextchr.0, %do_branch ]
  %scan.0 = phi %struct.regnode* [ %prog, %entry ], [ %.add.ptr, %cond.end4256 ], [ %.add.ptr4228, %do_longjump ], [ %add.ptr4322.add.ptr4317, %if.end4315 ], [ %.add.ptr, %sw.bb2318 ], [ %inner.0, %if.else2303 ], [ %.add.ptr, %sw.bb1751 ], [ %add.ptr1737, %if.then1735 ], [ %add.ptr1748, %if.then1746 ], [ %add.ptr1741, %if.else1738 ], [ %.add.ptr, %land.end1731 ], [ %.add.ptr, %if.end1721 ], [ %.add.ptr, %if.then1700 ], [ %.add.ptr, %sw.bb1694 ], [ %.add.ptr, %if.else1691 ], [ %.add.ptr, %while.body ], [ %.add.ptr, %while.body ], [ %.add.ptr, %while.body ], [ %.add.ptr, %if.end1372 ], [ %.add.ptr, %if.end1424 ], [ %.add.ptr, %if.end1480 ], [ %.add.ptr, %if.end1359 ], [ %.add.ptr, %if.end1285 ], [ %.add.ptr, %if.end1315 ], [ %.add.ptr, %if.end1201 ], [ %.add.ptr, %if.end1231 ], [ %.add.ptr, %if.end1111 ], [ %.add.ptr, %if.end1150 ], [ %.add.ptr, %if.end982 ], [ %.add.ptr, %if.end1021 ], [ %.add.ptr, %if.end1056 ], [ %.add.ptr, %if.end907 ], [ %.add.ptr, %if.end666 ], [ %.add.ptr, %if.end714 ], [ %.add.ptr, %if.end559 ], [ %.add.ptr, %if.end607 ], [ %.add.ptr, %cond.end405 ], [ %.add.ptr, %if.then502 ], [ %.add.ptr, %if.end438 ], [ %.add.ptr, %if.end339 ], [ %.add.ptr, %if.end381 ], [ %.add.ptr, %if.end228 ], [ %.add.ptr, %if.end251 ], [ %.add.ptr, %if.end125 ], [ %.add.ptr, %if.else127 ], [ %.add.ptr, %if.end102 ], [ %.add.ptr, %if.end91 ], [ %.add.ptr, %if.else93 ], [ %.add.ptr, %sw.bb70 ], [ %.add.ptr, %if.end65 ], [ %.add.ptr, %sw.bb38 ], [ %.add.ptr, %sw.bb33 ], [ %.add.ptr, %sw.bb18 ], [ %.add.ptr, %land.lhs.true26 ], [ %.add.ptr, %sw.bb ], [ %.add.ptr, %land.lhs.true12 ], [ %.add.ptr, %meol ], [ %.add.ptr, %if.end1635 ], [ %.add.ptr, %land.end1661 ], [ %.add.ptr, %cond.true1676 ], [ %.add.ptr, %cond.false1680 ], [ %.add.ptr, %cond.true1668 ], [ %inner.0, %do_branch ]
  %cmp = icmp eq %struct.regnode* %scan.0, null
  br i1 %cmp, label %while.end4261, label %while.body

while.body:                                       ; preds = %while.cond
  %next_off = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 2
  %6 = load i16* %next_off, align 2, !tbaa !5
  %idx.ext = zext i16 %6 to i64
  %add.ptr = getelementptr inbounds %struct.regnode* %scan.0, i64 %idx.ext
  %cmp3 = icmp eq i16 %6, 0
  %.add.ptr = select i1 %cmp3, %struct.regnode* null, %struct.regnode* %add.ptr
  %type = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 1
  %7 = load i8* %type, align 1, !tbaa !1
  %conv5 = zext i8 %7 to i32
  switch i32 %conv5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb18
    i32 4, label %sw.bb33
    i32 13, label %sw.bb38
    i32 6, label %sw.bb43
    i32 7, label %meol
    i32 8, label %seol
    i32 5, label %sw.bb70
    i32 15, label %sw.bb75
    i32 16, label %sw.bb96
    i32 14, label %sw.bb105
    i32 33, label %sw.bb131
    i32 35, label %sw.bb255
    i32 34, label %sw.bb256
    i32 17, label %sw.bb385
    i32 19, label %sw.bb507
    i32 18, label %sw.bb509
    i32 21, label %sw.bb610
    i32 20, label %sw.bb612
    i32 10, label %sw.bb717
    i32 12, label %sw.bb717
    i32 9, label %sw.bb719
    i32 11, label %sw.bb719
    i32 23, label %sw.bb929
    i32 22, label %sw.bb931
    i32 25, label %sw.bb1060
    i32 24, label %sw.bb1062
    i32 27, label %sw.bb1153
    i32 26, label %sw.bb1155
    i32 29, label %sw.bb1234
    i32 28, label %sw.bb1236
    i32 30, label %sw.bb1318
    i32 49, label %sw.bb1361
    i32 47, label %sw.bb1363
    i32 48, label %sw.bb1363
    i32 36, label %while.cond
    i32 37, label %while.cond
    i32 32, label %while.cond
    i32 57, label %sw.bb1485
    i32 45, label %sw.bb1694
    i32 46, label %sw.bb1702
    i32 54, label %sw.bb1722
    i32 53, label %sw.bb1733
    i32 59, label %sw.bb1751
    i32 43, label %sw.bb1754
    i32 44, label %sw.bb1794
    i32 56, label %sw.bb2284
    i32 31, label %do_branch
    i32 58, label %sw.bb2318
    i32 42, label %sw.bb2319
    i32 41, label %sw.bb2981
    i32 40, label %sw.bb2999
    i32 38, label %sw.bb3006
    i32 39, label %sw.bb3008
    i32 0, label %sw.bb4102
    i32 1, label %sw.bb4133
    i32 52, label %sw.bb4134
    i32 51, label %sw.bb4135
    i32 50, label %sw.bb4170
    i32 55, label %do_longjump
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp6 = icmp eq i8* %locinput.0, %8
  br i1 %cmp6, label %while.cond, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %do_no.preheader, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tobool8 = icmp ne i32 %nextchr.0, 0
  %10 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp10 = icmp ult i8* %locinput.0, %10
  %or.cond = or i1 %tobool8, %cmp10
  br i1 %or.cond, label %land.lhs.true12, label %do_no.preheader

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds i8* %locinput.0, i64 -1
  %11 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %11, 10
  br i1 %cmp14, label %while.cond, label %do_no.preheader

sw.bb18:                                          ; preds = %while.body
  %12 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp19 = icmp eq i8* %locinput.0, %12
  br i1 %cmp19, label %while.cond, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %sw.bb18
  %tobool22 = icmp ne i32 %nextchr.0, 0
  %13 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp24 = icmp ult i8* %locinput.0, %13
  %or.cond5459 = or i1 %tobool22, %cmp24
  br i1 %or.cond5459, label %land.lhs.true26, label %do_no.preheader

land.lhs.true26:                                  ; preds = %lor.lhs.false21
  %arrayidx27 = getelementptr inbounds i8* %locinput.0, i64 -1
  %14 = load i8* %arrayidx27, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %14, 10
  br i1 %cmp29, label %while.cond, label %do_no.preheader

sw.bb33:                                          ; preds = %while.body
  %15 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp34 = icmp eq i8* %locinput.0, %15
  br i1 %cmp34, label %while.cond, label %do_no.preheader

sw.bb38:                                          ; preds = %while.body
  %16 = load i8** @PL_reg_ganch, align 8, !tbaa !3
  %cmp39 = icmp eq i8* %locinput.0, %16
  br i1 %cmp39, label %while.cond, label %do_no.preheader

sw.bb43:                                          ; preds = %while.body
  %17 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool44 = icmp eq i32 %17, 0
  br i1 %tobool44, label %seol, label %meol

meol:                                             ; preds = %sw.bb43, %while.body
  %18 = load i8** @PL_regeol, align 8, !tbaa !3
  %notlhs5567 = icmp eq i32 %nextchr.0, 0
  %notrhs5568 = icmp uge i8* %locinput.0, %18
  %or.cond5460.not = and i1 %notrhs5568, %notlhs5567
  %cmp52 = icmp eq i32 %nextchr.0, 10
  %or.cond5461 = or i1 %or.cond5460.not, %cmp52
  br i1 %or.cond5461, label %while.cond, label %do_no.preheader

seol:                                             ; preds = %sw.bb43, %while.body
  %19 = load i8** @PL_regeol, align 8, !tbaa !3
  %notlhs5565 = icmp eq i32 %nextchr.0, 0
  %notrhs5566 = icmp uge i8* %locinput.0, %19
  %or.cond5462.not = and i1 %notrhs5566, %notlhs5565
  %cmp62 = icmp eq i32 %nextchr.0, 10
  %or.cond5463 = or i1 %or.cond5462.not, %cmp62
  br i1 %or.cond5463, label %if.end65, label %do_no.preheader

if.end65:                                         ; preds = %seol
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp66 = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp66, label %do_no.preheader, label %while.cond

sw.bb70:                                          ; preds = %while.body
  %20 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp71 = icmp eq i8* %20, %locinput.0
  br i1 %cmp71, label %while.cond, label %do_no.preheader

sw.bb75:                                          ; preds = %while.body
  %tobool76 = icmp ne i32 %nextchr.0, 0
  %21 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp78 = icmp ult i8* %locinput.0, %21
  %or.cond5464 = or i1 %tobool76, %cmp78
  br i1 %or.cond5464, label %if.end81, label %do_no.preheader

if.end81:                                         ; preds = %sw.bb75
  br i1 %tobool82, label %if.else93, label %if.then83

if.then83:                                        ; preds = %if.end81
  %idxprom = sext i32 %nextchr.0 to i64
  %arrayidx84 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %22 = load i8* %arrayidx84, align 1, !tbaa !1
  %idx.ext86 = zext i8 %22 to i64
  %add.ptr87 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext86
  %cmp88 = icmp ugt i8* %add.ptr87, %21
  br i1 %cmp88, label %do_no.preheader, label %if.end91

if.end91:                                         ; preds = %if.then83
  %23 = load i8* %add.ptr87, align 1, !tbaa !1
  %conv92 = zext i8 %23 to i32
  br label %while.cond

if.else93:                                        ; preds = %if.end81
  %incdec.ptr = getelementptr inbounds i8* %locinput.0, i64 1
  %24 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv94 = zext i8 %24 to i32
  br label %while.cond

sw.bb96:                                          ; preds = %while.body
  %tobool97 = icmp ne i32 %nextchr.0, 0
  %25 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp99 = icmp ult i8* %locinput.0, %25
  %or.cond5465 = or i1 %tobool97, %cmp99
  br i1 %or.cond5465, label %if.end102, label %do_no.preheader

if.end102:                                        ; preds = %sw.bb96
  %incdec.ptr103 = getelementptr inbounds i8* %locinput.0, i64 1
  %26 = load i8* %incdec.ptr103, align 1, !tbaa !1
  %conv104 = zext i8 %26 to i32
  br label %while.cond

sw.bb105:                                         ; preds = %while.body
  %27 = load i8** @PL_regeol, align 8, !tbaa !3
  %notlhs = icmp eq i32 %nextchr.0, 0
  %notrhs = icmp uge i8* %locinput.0, %27
  %or.cond5466.not = and i1 %notrhs, %notlhs
  %cmp111 = icmp eq i32 %nextchr.0, 10
  %or.cond5467 = or i1 %or.cond5466.not, %cmp111
  br i1 %or.cond5467, label %do_no.preheader, label %if.end114

if.end114:                                        ; preds = %sw.bb105
  br i1 %tobool82, label %if.else127, label %if.then116

if.then116:                                       ; preds = %if.end114
  %idxprom117 = sext i32 %nextchr.0 to i64
  %arrayidx118 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom117
  %28 = load i8* %arrayidx118, align 1, !tbaa !1
  %idx.ext120 = zext i8 %28 to i64
  %add.ptr121 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext120
  %cmp122 = icmp ugt i8* %add.ptr121, %27
  br i1 %cmp122, label %do_no.preheader, label %if.end125

if.end125:                                        ; preds = %if.then116
  %29 = load i8* %add.ptr121, align 1, !tbaa !1
  %conv126 = zext i8 %29 to i32
  br label %while.cond

if.else127:                                       ; preds = %if.end114
  %incdec.ptr128 = getelementptr inbounds i8* %locinput.0, i64 1
  %30 = load i8* %incdec.ptr128, align 1, !tbaa !1
  %conv129 = zext i8 %30 to i32
  br label %while.cond

sw.bb131:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds %struct.regnode* %scan.0, i64 1, i32 0
  %str_len = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %31 = load i8* %str_len, align 1, !tbaa !1
  %conv132 = zext i8 %31 to i32
  %32 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and = lshr i32 %32, 3
  %and.lobit = and i32 %and, 1
  %cmp136 = icmp eq i32 %conv133, %and.lobit
  br i1 %cmp136, label %if.end230, label %if.then138

if.then138:                                       ; preds = %sw.bb131
  %idx.ext139 = zext i8 %31 to i64
  %add.ptr140 = getelementptr inbounds i8* %arraydecay, i64 %idx.ext139
  %cmp1825635 = icmp eq i8 %31, 0
  br i1 %tobool82, label %while.cond181.preheader, label %while.cond143.preheader

while.cond181.preheader:                          ; preds = %if.then138
  br i1 %cmp1825635, label %if.end228, label %while.body184

while.cond143.preheader:                          ; preds = %if.then138
  br i1 %cmp1825635, label %if.end228, label %while.body146

while.body146:                                    ; preds = %if.end177, %while.cond143.preheader
  %s.05630 = phi i8* [ %arraydecay, %while.cond143.preheader ], [ %incdec.ptr179, %if.end177 ]
  %l.05629 = phi i8* [ %locinput.0, %while.cond143.preheader ], [ %add.ptr178, %if.end177 ]
  %33 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp147 = icmp ult i8* %l.05629, %33
  br i1 %cmp147, label %if.end150, label %do_no.preheader

if.end150:                                        ; preds = %while.body146
  %34 = load i8* %s.05630, align 1, !tbaa !1
  %conv151 = zext i8 %34 to i64
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp152 = icmp eq %struct.sv* %36, null
  br i1 %cmp152, label %lor.rhs, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %if.end150
  %37 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings155 = getelementptr inbounds %struct.cop* %37, i64 0, i32 14
  %38 = load %struct.sv** %cop_warnings155, align 8, !tbaa !3
  %cmp156 = icmp eq %struct.sv* %38, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp156, label %lor.rhs, label %land.lhs.true158

land.lhs.true158:                                 ; preds = %land.lhs.true154
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings159 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings159, align 8, !tbaa !3
  %cmp160 = icmp eq %struct.sv* %40, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp160, label %lor.end, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %land.lhs.true158
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings163 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings163, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %42, i64 0, i32 0
  %43 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx164 = getelementptr inbounds i8* %44, i64 11
  %45 = load i8* %arrayidx164, align 1, !tbaa !1
  %and166 = and i8 %45, 1
  %tobool167 = icmp eq i8 %and166, 0
  br i1 %tobool167, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false162, %land.lhs.true154, %if.end150
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings168 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings168, align 8, !tbaa !3
  %cmp169 = icmp eq %struct.sv* %47, null
  br i1 %cmp169, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %48 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and172 = and i8 %48, 1
  %tobool173 = icmp ne i8 %and172, 0
  %phitmp5457 = select i1 %tobool173, i32 0, i32 255
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false162, %lor.rhs, %land.rhs, %land.lhs.true158
  %49 = phi i32 [ 0, %lor.lhs.false162 ], [ 0, %land.lhs.true158 ], [ 255, %lor.rhs ], [ %phitmp5457, %land.rhs ]
  %call = call i64 @Perl_utf8n_to_uvuni(i8* %l.05629, i64 13, i64* %ulen, i32 %49) #6
  %cmp174 = icmp eq i64 %conv151, %call
  br i1 %cmp174, label %if.end177, label %do_no.preheader

if.end177:                                        ; preds = %lor.end
  %50 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr178 = getelementptr inbounds i8* %l.05629, i64 %50
  %incdec.ptr179 = getelementptr inbounds i8* %s.05630, i64 1
  %cmp144 = icmp ult i8* %incdec.ptr179, %add.ptr140
  br i1 %cmp144, label %while.body146, label %if.end228

while.body184:                                    ; preds = %if.end224, %while.cond181.preheader
  %s.15637 = phi i8* [ %arraydecay, %while.cond181.preheader ], [ %add.ptr225, %if.end224 ]
  %l.15636 = phi i8* [ %locinput.0, %while.cond181.preheader ], [ %incdec.ptr226, %if.end224 ]
  %51 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp185 = icmp ult i8* %l.15636, %51
  br i1 %cmp185, label %if.end188, label %do_no.preheader

if.end188:                                        ; preds = %while.body184
  %52 = load i8* %l.15636, align 1, !tbaa !1
  %conv189 = zext i8 %52 to i64
  %53 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings190 = getelementptr inbounds %struct.cop* %53, i64 0, i32 14
  %54 = load %struct.sv** %cop_warnings190, align 8, !tbaa !3
  %cmp191 = icmp eq %struct.sv* %54, null
  br i1 %cmp191, label %lor.rhs209, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %if.end188
  %55 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings194 = getelementptr inbounds %struct.cop* %55, i64 0, i32 14
  %56 = load %struct.sv** %cop_warnings194, align 8, !tbaa !3
  %cmp195 = icmp eq %struct.sv* %56, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp195, label %lor.rhs209, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %land.lhs.true193
  %57 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings198 = getelementptr inbounds %struct.cop* %57, i64 0, i32 14
  %58 = load %struct.sv** %cop_warnings198, align 8, !tbaa !3
  %cmp199 = icmp eq %struct.sv* %58, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp199, label %lor.end218, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %land.lhs.true197
  %59 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings202 = getelementptr inbounds %struct.cop* %59, i64 0, i32 14
  %60 = load %struct.sv** %cop_warnings202, align 8, !tbaa !3
  %sv_any203 = getelementptr inbounds %struct.sv* %60, i64 0, i32 0
  %61 = load i8** %sv_any203, align 8, !tbaa !3
  %xpv_pv204 = bitcast i8* %61 to i8**
  %62 = load i8** %xpv_pv204, align 8, !tbaa !3
  %arrayidx205 = getelementptr inbounds i8* %62, i64 11
  %63 = load i8* %arrayidx205, align 1, !tbaa !1
  %and207 = and i8 %63, 1
  %tobool208 = icmp eq i8 %and207, 0
  br i1 %tobool208, label %lor.rhs209, label %lor.end218

lor.rhs209:                                       ; preds = %lor.lhs.false201, %land.lhs.true193, %if.end188
  %64 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings210 = getelementptr inbounds %struct.cop* %64, i64 0, i32 14
  %65 = load %struct.sv** %cop_warnings210, align 8, !tbaa !3
  %cmp211 = icmp eq %struct.sv* %65, null
  br i1 %cmp211, label %land.rhs213, label %lor.end218

land.rhs213:                                      ; preds = %lor.rhs209
  %66 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and215 = and i8 %66, 1
  %tobool216 = icmp ne i8 %and215, 0
  %phitmp5455 = select i1 %tobool216, i32 0, i32 255
  br label %lor.end218

lor.end218:                                       ; preds = %lor.lhs.false201, %lor.rhs209, %land.rhs213, %land.lhs.true197
  %67 = phi i32 [ 0, %lor.lhs.false201 ], [ 0, %land.lhs.true197 ], [ 255, %lor.rhs209 ], [ %phitmp5455, %land.rhs213 ]
  %call220 = call i64 @Perl_utf8n_to_uvuni(i8* %s.15637, i64 13, i64* %ulen, i32 %67) #6
  %cmp221 = icmp eq i64 %conv189, %call220
  br i1 %cmp221, label %if.end224, label %do_no.preheader

if.end224:                                        ; preds = %lor.end218
  %68 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr225 = getelementptr inbounds i8* %s.15637, i64 %68
  %incdec.ptr226 = getelementptr inbounds i8* %l.15636, i64 1
  %cmp182 = icmp ult i8* %add.ptr225, %add.ptr140
  br i1 %cmp182, label %while.body184, label %if.end228

if.end228:                                        ; preds = %while.cond181.preheader, %if.end224, %while.cond143.preheader, %if.end177
  %l.2 = phi i8* [ %locinput.0, %while.cond143.preheader ], [ %add.ptr178, %if.end177 ], [ %locinput.0, %while.cond181.preheader ], [ %incdec.ptr226, %if.end224 ]
  %69 = load i8* %l.2, align 1, !tbaa !1
  %conv229 = zext i8 %69 to i32
  br label %while.cond

if.end230:                                        ; preds = %sw.bb131
  %70 = load i8* %arraydecay, align 1, !tbaa !1
  %conv231 = zext i8 %70 to i32
  %cmp232 = icmp eq i32 %conv231, %nextchr.0
  br i1 %cmp232, label %if.end235, label %do_no.preheader

if.end235:                                        ; preds = %if.end230
  %71 = load i8** @PL_regeol, align 8, !tbaa !3
  %sub.ptr.lhs.cast236 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast237 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.sub238 = sub i64 %sub.ptr.lhs.cast236, %sub.ptr.rhs.cast237
  %conv239 = zext i8 %31 to i64
  %cmp240 = icmp slt i64 %sub.ptr.sub238, %conv239
  br i1 %cmp240, label %do_no.preheader, label %if.end243

if.end243:                                        ; preds = %if.end235
  %cmp244 = icmp ugt i8 %31, 1
  br i1 %cmp244, label %land.lhs.true246, label %if.end251

land.lhs.true246:                                 ; preds = %if.end243
  %call248 = call i32 @memcmp(i8* %arraydecay, i8* %locinput.0, i64 %conv239) #6
  %tobool249 = icmp eq i32 %call248, 0
  br i1 %tobool249, label %if.end251, label %do_no.preheader

if.end251:                                        ; preds = %land.lhs.true246, %if.end243
  %add.ptr253 = getelementptr inbounds i8* %locinput.0, i64 %conv239
  %72 = load i8* %add.ptr253, align 1, !tbaa !1
  %conv254 = zext i8 %72 to i32
  br label %while.cond

sw.bb255:                                         ; preds = %while.body
  %73 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or = or i32 %73, 1
  store i32 %or, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb256

sw.bb256:                                         ; preds = %while.body, %sw.bb255
  %arraydecay258 = getelementptr inbounds %struct.regnode* %scan.0, i64 1, i32 0
  %str_len259 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %74 = load i8* %str_len259, align 1, !tbaa !1
  %conv260 = zext i8 %74 to i32
  %.pre5753 = load i32* @PL_reg_flags, align 4, !tbaa !0
  br i1 %tobool262, label %if.then267, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %sw.bb256
  %and264 = and i32 %.pre5753, 8
  %cmp265 = icmp eq i32 %and264, 0
  br i1 %cmp265, label %if.end341, label %if.then267

if.then267:                                       ; preds = %sw.bb256, %lor.lhs.false263
  %75 = load i8** @PL_regeol, align 8, !tbaa !3
  store i8* %75, i8** %e269, align 8, !tbaa !3
  %conv270 = zext i8 %74 to i64
  %and271 = lshr i32 %.pre5753, 3
  %and271.tr = trunc i32 %and271 to i8
  %conv274 = and i8 %and271.tr, 1
  %call275 = call i32 @Perl_ibcmp_utf8(i8* %arraydecay258, i8** null, i64 %conv270, i8 signext %conv274, i8* %locinput.0, i8** %e269, i64 0, i8 signext %1) #6
  %tobool276 = icmp eq i32 %call275, 0
  br i1 %tobool276, label %if.then267.if.end339_crit_edge, label %if.then277

if.then267.if.end339_crit_edge:                   ; preds = %if.then267
  %.pre5754 = load i8** %e269, align 8, !tbaa !3
  br label %if.end339

if.then277:                                       ; preds = %if.then267
  br i1 %tobool262, label %land.lhs.true280, label %do_no.preheader

land.lhs.true280:                                 ; preds = %if.then277
  %76 = load i8* %arraydecay258, align 1, !tbaa !1
  %conv282 = sext i8 %76 to i32
  %.off5563 = add i8 %76, -65
  %77 = icmp ult i8 %.off5563, 26
  %add = add nsw i32 %conv282, 32
  %add.conv282 = select i1 %77, i32 %add, i32 %conv282
  %cmp295 = icmp eq i32 %add.conv282, 115
  %cmp298 = icmp ugt i8 %74, 1
  %or.cond5469 = and i1 %cmp295, %cmp298
  br i1 %or.cond5469, label %land.lhs.true300, label %do_no.preheader

land.lhs.true300:                                 ; preds = %land.lhs.true280
  %arrayidx301 = getelementptr inbounds i8* %arraydecay258, i64 1
  %78 = load i8* %arrayidx301, align 1, !tbaa !1
  %conv302 = sext i8 %78 to i32
  %.off5564 = add i8 %78, -65
  %79 = icmp ult i8 %.off5564, 26
  %add313 = add nsw i32 %conv302, 32
  %add313.conv302 = select i1 %79, i32 %add313, i32 %conv302
  %cmp319 = icmp eq i32 %add313.conv302, 115
  br i1 %cmp319, label %land.lhs.true321, label %do_no.preheader

land.lhs.true321:                                 ; preds = %land.lhs.true300
  %80 = load i8* %locinput.0, align 1, !tbaa !1
  %cmp324 = icmp eq i8 %80, -61
  br i1 %cmp324, label %land.lhs.true326, label %do_no.preheader

land.lhs.true326:                                 ; preds = %land.lhs.true321
  %81 = load i8** %e269, align 8, !tbaa !3
  %sub.ptr.lhs.cast327 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast328 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %cmp330 = icmp sgt i64 %sub.ptr.sub329, 1
  br i1 %cmp330, label %land.lhs.true332, label %do_no.preheader

land.lhs.true332:                                 ; preds = %land.lhs.true326
  %arrayidx333 = getelementptr inbounds i8* %locinput.0, i64 1
  %82 = load i8* %arrayidx333, align 1, !tbaa !1
  %cmp335 = icmp eq i8 %82, -97
  br i1 %cmp335, label %if.end339, label %do_no.preheader

if.end339:                                        ; preds = %if.then267.if.end339_crit_edge, %land.lhs.true332
  %83 = phi i8* [ %.pre5754, %if.then267.if.end339_crit_edge ], [ %81, %land.lhs.true332 ]
  %84 = load i8* %83, align 1, !tbaa !1
  %conv340 = zext i8 %84 to i32
  br label %while.cond

if.end341:                                        ; preds = %lor.lhs.false263
  %85 = load i8* %arraydecay258, align 1, !tbaa !1
  %conv342 = zext i8 %85 to i32
  %cmp343 = icmp eq i32 %conv342, %nextchr.0
  br i1 %cmp343, label %if.end358, label %land.lhs.true345

land.lhs.true345:                                 ; preds = %if.end341
  %idxprom347 = sext i32 %nextchr.0 to i64
  %86 = load i8* %type, align 1, !tbaa !1
  %cmp350 = icmp eq i8 %86, 34
  %cond352 = select i1 %cmp350, i8* getelementptr inbounds ([0 x i8]* @PL_fold, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8]* @PL_fold_locale, i64 0, i64 0)
  %arrayidx353 = getelementptr inbounds i8* %cond352, i64 %idxprom347
  %87 = load i8* %arrayidx353, align 1, !tbaa !1
  %cmp355 = icmp eq i8 %85, %87
  br i1 %cmp355, label %if.end358, label %do_no.preheader

if.end358:                                        ; preds = %land.lhs.true345, %if.end341
  %88 = load i8** @PL_regeol, align 8, !tbaa !3
  %sub.ptr.lhs.cast359 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast360 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.sub361 = sub i64 %sub.ptr.lhs.cast359, %sub.ptr.rhs.cast360
  %conv362 = zext i8 %74 to i64
  %cmp363 = icmp slt i64 %sub.ptr.sub361, %conv362
  br i1 %cmp363, label %do_no.preheader, label %if.end366

if.end366:                                        ; preds = %if.end358
  %cmp367 = icmp ugt i8 %74, 1
  br i1 %cmp367, label %land.lhs.true369, label %if.end381

land.lhs.true369:                                 ; preds = %if.end366
  %89 = load i8* %type, align 1, !tbaa !1
  %cmp372 = icmp eq i8 %89, 34
  br i1 %cmp372, label %cond.true374, label %cond.false377

cond.true374:                                     ; preds = %land.lhs.true369
  %call375 = call i32 @Perl_ibcmp(i8* %arraydecay258, i8* %locinput.0, i32 %conv260) #6
  %tobool376 = icmp eq i32 %call375, 0
  br i1 %tobool376, label %if.end381, label %do_no.preheader

cond.false377:                                    ; preds = %land.lhs.true369
  %call378 = call i32 @Perl_ibcmp_locale(i8* %arraydecay258, i8* %locinput.0, i32 %conv260) #6
  %tobool379 = icmp eq i32 %call378, 0
  br i1 %tobool379, label %if.end381, label %do_no.preheader

if.end381:                                        ; preds = %cond.true374, %cond.false377, %if.end366
  %add.ptr383 = getelementptr inbounds i8* %locinput.0, i64 %conv362
  %90 = load i8* %add.ptr383, align 1, !tbaa !1
  %conv384 = zext i8 %90 to i32
  br label %while.cond

sw.bb385:                                         ; preds = %while.body
  br i1 %tobool82, label %if.else409, label %if.then387

if.then387:                                       ; preds = %sw.bb385
  %91 = load i8** @PL_regeol, align 8, !tbaa !3
  %sub.ptr.lhs.cast388 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast389 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.sub390 = sub i64 %sub.ptr.lhs.cast388, %sub.ptr.rhs.cast389
  store i64 %sub.ptr.sub390, i64* %inclasslen, align 8, !tbaa !4
  %call391 = call fastcc signext i8 @S_reginclass(%struct.regnode* %scan.0, i8* %locinput.0, i64* %inclasslen, i8 signext %1) #5
  %tobool392 = icmp eq i8 %call391, 0
  br i1 %tobool392, label %no_anyof, label %if.end394

if.end394:                                        ; preds = %if.then387
  %92 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp395 = icmp ult i8* %locinput.0, %92
  br i1 %cmp395, label %if.end398, label %do_no.preheader

if.end398:                                        ; preds = %if.end394
  %93 = load i64* %inclasslen, align 8, !tbaa !4
  %tobool399 = icmp eq i64 %93, 0
  br i1 %tobool399, label %cond.false401, label %cond.end405

cond.false401:                                    ; preds = %if.end398
  %94 = load i8* %locinput.0, align 1, !tbaa !1
  %idxprom402 = zext i8 %94 to i64
  %arrayidx403 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom402
  %95 = load i8* %arrayidx403, align 1, !tbaa !1
  %conv404 = zext i8 %95 to i64
  br label %cond.end405

cond.end405:                                      ; preds = %if.end398, %cond.false401
  %cond406 = phi i64 [ %conv404, %cond.false401 ], [ %93, %if.end398 ]
  %add.ptr407 = getelementptr inbounds i8* %locinput.0, i64 %cond406
  %96 = load i8* %add.ptr407, align 1, !tbaa !1
  %conv408 = zext i8 %96 to i32
  br label %while.cond

if.else409:                                       ; preds = %sw.bb385
  %cmp410 = icmp slt i32 %nextchr.0, 0
  br i1 %cmp410, label %if.then412, label %if.end414

if.then412:                                       ; preds = %if.else409
  %97 = load i8* %locinput.0, align 1, !tbaa !1
  %conv413 = zext i8 %97 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.then412, %if.else409
  %nextchr.1 = phi i32 [ %conv413, %if.then412 ], [ %nextchr.0, %if.else409 ]
  %flags = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %98 = load i8* %flags, align 1, !tbaa !1
  %tobool416 = icmp eq i8 %98, 0
  br i1 %tobool416, label %cond.false421, label %cond.true417

cond.true417:                                     ; preds = %if.end414
  %call418 = call fastcc signext i8 @S_reginclass(%struct.regnode* %scan.0, i8* %locinput.0, i64* null, i8 signext 0) #5
  %tobool420 = icmp eq i8 %call418, 0
  br i1 %tobool420, label %no_anyof, label %if.end432

cond.false421:                                    ; preds = %if.end414
  %99 = load i8* %locinput.0, align 1, !tbaa !1
  %conv422 = zext i8 %99 to i32
  %shr5452 = lshr i32 %conv422, 3
  %idxprom4245453 = zext i32 %shr5452 to i64
  %bitmap = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  %100 = bitcast %struct.regnode* %bitmap to [32 x i8]*
  %arrayidx425 = getelementptr inbounds [32 x i8]* %100, i64 0, i64 %idxprom4245453
  %101 = load i8* %arrayidx425, align 1, !tbaa !1
  %conv426 = sext i8 %101 to i32
  %and428 = and i32 %conv422, 7
  %shl = shl i32 1, %and428
  %and429 = and i32 %shl, %conv426
  %tobool430 = icmp eq i32 %and429, 0
  br i1 %tobool430, label %no_anyof, label %if.end432

if.end432:                                        ; preds = %cond.false421, %cond.true417
  %tobool433 = icmp ne i32 %nextchr.1, 0
  %102 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp435 = icmp ult i8* %locinput.0, %102
  %or.cond5471 = or i1 %tobool433, %cmp435
  br i1 %or.cond5471, label %if.end438, label %do_no.preheader

if.end438:                                        ; preds = %if.end432
  %incdec.ptr439 = getelementptr inbounds i8* %locinput.0, i64 1
  %103 = load i8* %incdec.ptr439, align 1, !tbaa !1
  %conv440 = zext i8 %103 to i32
  br label %while.cond

no_anyof:                                         ; preds = %if.then387, %cond.true417, %cond.false421
  %bitmap441 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  %104 = bitcast %struct.regnode* %bitmap441 to [32 x i8]*
  %arrayidx442 = getelementptr inbounds [32 x i8]* %104, i64 0, i64 27
  %105 = load i8* %arrayidx442, align 1, !tbaa !1
  %tobool445 = icmp slt i8 %105, 0
  br i1 %tobool445, label %land.lhs.true446, label %do_no.preheader

land.lhs.true446:                                 ; preds = %no_anyof
  %flags447 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %106 = load i8* %flags447, align 1, !tbaa !1
  %107 = and i8 %106, 34
  %108 = icmp eq i8 %107, 34
  br i1 %108, label %land.lhs.true456, label %do_no.preheader

land.lhs.true456:                                 ; preds = %land.lhs.true446
  %109 = load i8** @PL_regeol, align 8, !tbaa !3
  %add.ptr457 = getelementptr inbounds i8* %locinput.0, i64 1
  %cmp458 = icmp ugt i8* %109, %add.ptr457
  br i1 %cmp458, label %land.lhs.true460, label %do_no.preheader

land.lhs.true460:                                 ; preds = %land.lhs.true456
  %110 = load i8* %locinput.0, align 1, !tbaa !1
  %conv462 = sext i8 %110 to i32
  %.off5561 = add i8 %110, -65
  %111 = icmp ult i8 %.off5561, 26
  %add473 = add nsw i32 %conv462, 32
  %add473.conv462 = select i1 %111, i32 %add473, i32 %conv462
  %cmp479 = icmp eq i32 %add473.conv462, 115
  br i1 %cmp479, label %land.lhs.true481, label %do_no.preheader

land.lhs.true481:                                 ; preds = %land.lhs.true460
  %112 = load i8* %add.ptr457, align 1, !tbaa !1
  %conv483 = sext i8 %112 to i32
  %.off5562 = add i8 %112, -65
  %113 = icmp ult i8 %.off5562, 26
  %add494 = add nsw i32 %conv483, 32
  %add494.conv483 = select i1 %113, i32 %add494, i32 %conv483
  %cmp500 = icmp eq i32 %add494.conv483, 115
  br i1 %cmp500, label %if.then502, label %do_no.preheader

if.then502:                                       ; preds = %land.lhs.true481
  %add.ptr503 = getelementptr inbounds i8* %locinput.0, i64 2
  %114 = load i8* %add.ptr503, align 1, !tbaa !1
  %conv504 = zext i8 %114 to i32
  br label %while.cond

sw.bb507:                                         ; preds = %while.body
  %115 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or508 = or i32 %115, 1
  store i32 %or508, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb509

sw.bb509:                                         ; preds = %while.body, %sw.bb507
  %tobool510 = icmp eq i32 %nextchr.0, 0
  br i1 %tobool510, label %do_no.preheader, label %if.end512

if.end512:                                        ; preds = %sw.bb509
  br i1 %tobool82, label %if.end566, label %if.then514

if.then514:                                       ; preds = %if.end512
  %116 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool515 = icmp eq %struct.sv* %116, null
  br i1 %tobool515, label %if.then516, label %if.end518

if.then516:                                       ; preds = %if.then514
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call517 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %if.end518

if.end518:                                        ; preds = %if.then514, %if.then516
  %117 = load i8* %type, align 1, !tbaa !1
  %cmp521 = icmp eq i8 %117, 18
  br i1 %cmp521, label %cond.true523, label %cond.false526

cond.true523:                                     ; preds = %if.end518
  %118 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call524 = call i64 @Perl_swash_fetch(%struct.sv* %118, i8* %locinput.0, i8 signext %1) #6
  %tobool525 = icmp eq i64 %call524, 0
  br i1 %tobool525, label %do_no.preheader, label %if.end559

cond.false526:                                    ; preds = %if.end518
  %call527 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp528 = icmp ult i64 %call527, 256
  %call531 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp528, label %cond.true530, label %cond.false550

cond.true530:                                     ; preds = %cond.false526
  %cmp533 = icmp ult i64 %call531, 128
  br i1 %cmp533, label %land.rhs535, label %land.end549

land.rhs535:                                      ; preds = %cond.true530
  %call536 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext5451 = shl i64 %call536, 32
  %idxprom538 = ashr exact i64 %sext5451, 32
  %call539 = call i16** @__ctype_b_loc() #6
  %119 = load i16** %call539, align 8, !tbaa !3
  %arrayidx540 = getelementptr inbounds i16* %119, i64 %idxprom538
  %120 = load i16* %arrayidx540, align 2, !tbaa !5
  %and542 = and i16 %120, 8
  %tobool543 = icmp eq i16 %and542, 0
  br i1 %tobool543, label %lor.rhs544, label %land.end549

lor.rhs544:                                       ; preds = %land.rhs535
  %call545 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp546 = icmp eq i64 %call545, 95
  br label %land.end549

land.end549:                                      ; preds = %land.rhs535, %lor.rhs544, %cond.true530
  %121 = phi i1 [ false, %cond.true530 ], [ true, %land.rhs535 ], [ %cmp546, %lor.rhs544 ]
  %land.ext = zext i1 %121 to i64
  br label %cond.end554

cond.false550:                                    ; preds = %cond.false526
  %call552 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call531) #6
  %conv553 = sext i8 %call552 to i64
  br label %cond.end554

cond.end554:                                      ; preds = %cond.false550, %land.end549
  %cond555 = phi i64 [ %land.ext, %land.end549 ], [ %conv553, %cond.false550 ]
  %tobool557 = icmp eq i64 %cond555, 0
  br i1 %tobool557, label %do_no.preheader, label %if.end559

if.end559:                                        ; preds = %cond.true523, %cond.end554
  %idxprom560 = sext i32 %nextchr.0 to i64
  %arrayidx561 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom560
  %122 = load i8* %arrayidx561, align 1, !tbaa !1
  %idx.ext563 = zext i8 %122 to i64
  %add.ptr564 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext563
  %123 = load i8* %add.ptr564, align 1, !tbaa !1
  %conv565 = zext i8 %123 to i32
  br label %while.cond

if.end566:                                        ; preds = %if.end512
  %124 = load i8* %type, align 1, !tbaa !1
  %cmp569 = icmp eq i8 %124, 18
  br i1 %cmp569, label %cond.true571, label %cond.false592

cond.true571:                                     ; preds = %if.end566
  %nextchr.0.off5448 = add i32 %nextchr.0, -65
  %125 = icmp ult i32 %nextchr.0.off5448, 26
  %nextchr.0.off5449 = add i32 %nextchr.0, -97
  %126 = icmp ult i32 %nextchr.0.off5449, 26
  %or.cond5476 = or i1 %125, %126
  br i1 %or.cond5476, label %if.end607, label %lor.lhs.false583

lor.lhs.false583:                                 ; preds = %cond.true571
  %nextchr.0.off5450 = add i32 %nextchr.0, -48
  %127 = icmp ult i32 %nextchr.0.off5450, 10
  %cmp590 = icmp eq i32 %nextchr.0, 95
  %or.cond4331 = or i1 %127, %cmp590
  br i1 %or.cond4331, label %if.end607, label %do_no.preheader

cond.false592:                                    ; preds = %if.end566
  %cmp594 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp594, label %land.lhs.true596, label %do_no.preheader

land.lhs.true596:                                 ; preds = %cond.false592
  %idxprom597 = sext i32 %nextchr.0 to i64
  %call598 = call i16** @__ctype_b_loc() #6
  %128 = load i16** %call598, align 8, !tbaa !3
  %arrayidx599 = getelementptr inbounds i16* %128, i64 %idxprom597
  %129 = load i16* %arrayidx599, align 2, !tbaa !5
  %and601 = and i16 %129, 8
  %tobool602 = icmp ne i16 %and601, 0
  %cmp604 = icmp eq i32 %nextchr.0, 95
  %or.cond5477 = or i1 %tobool602, %cmp604
  br i1 %or.cond5477, label %if.end607, label %do_no.preheader

if.end607:                                        ; preds = %land.lhs.true596, %lor.lhs.false583, %cond.true571
  %incdec.ptr608 = getelementptr inbounds i8* %locinput.0, i64 1
  %130 = load i8* %incdec.ptr608, align 1, !tbaa !1
  %conv609 = zext i8 %130 to i32
  br label %while.cond

sw.bb610:                                         ; preds = %while.body
  %131 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or611 = or i32 %131, 1
  store i32 %or611, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb612

sw.bb612:                                         ; preds = %while.body, %sw.bb610
  %tobool613 = icmp ne i32 %nextchr.0, 0
  %132 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp615 = icmp ult i8* %locinput.0, %132
  %or.cond5478 = or i1 %tobool613, %cmp615
  br i1 %or.cond5478, label %if.end618, label %do_no.preheader

if.end618:                                        ; preds = %sw.bb612
  br i1 %tobool82, label %if.end673, label %if.then620

if.then620:                                       ; preds = %if.end618
  %133 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool621 = icmp eq %struct.sv* %133, null
  br i1 %tobool621, label %if.then622, label %if.end624

if.then622:                                       ; preds = %if.then620
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call623 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %if.end624

if.end624:                                        ; preds = %if.then620, %if.then622
  %134 = load i8* %type, align 1, !tbaa !1
  %cmp627 = icmp eq i8 %134, 20
  br i1 %cmp627, label %cond.true629, label %cond.false632

cond.true629:                                     ; preds = %if.end624
  %135 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call630 = call i64 @Perl_swash_fetch(%struct.sv* %135, i8* %locinput.0, i8 signext %1) #6
  %tobool631 = icmp eq i64 %call630, 0
  br i1 %tobool631, label %if.end666, label %do_no.preheader

cond.false632:                                    ; preds = %if.end624
  %call633 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp634 = icmp ult i64 %call633, 256
  %call637 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp634, label %cond.true636, label %cond.false657

cond.true636:                                     ; preds = %cond.false632
  %cmp639 = icmp ult i64 %call637, 128
  br i1 %cmp639, label %land.rhs641, label %land.end655

land.rhs641:                                      ; preds = %cond.true636
  %call642 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext5447 = shl i64 %call642, 32
  %idxprom644 = ashr exact i64 %sext5447, 32
  %call645 = call i16** @__ctype_b_loc() #6
  %136 = load i16** %call645, align 8, !tbaa !3
  %arrayidx646 = getelementptr inbounds i16* %136, i64 %idxprom644
  %137 = load i16* %arrayidx646, align 2, !tbaa !5
  %and648 = and i16 %137, 8
  %tobool649 = icmp eq i16 %and648, 0
  br i1 %tobool649, label %lor.rhs650, label %land.end655

lor.rhs650:                                       ; preds = %land.rhs641
  %call651 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp652 = icmp eq i64 %call651, 95
  br label %land.end655

land.end655:                                      ; preds = %land.rhs641, %lor.rhs650, %cond.true636
  %138 = phi i1 [ false, %cond.true636 ], [ true, %land.rhs641 ], [ %cmp652, %lor.rhs650 ]
  %land.ext656 = zext i1 %138 to i64
  br label %cond.end661

cond.false657:                                    ; preds = %cond.false632
  %call659 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call637) #6
  %conv660 = sext i8 %call659 to i64
  br label %cond.end661

cond.end661:                                      ; preds = %cond.false657, %land.end655
  %cond662 = phi i64 [ %land.ext656, %land.end655 ], [ %conv660, %cond.false657 ]
  %tobool664 = icmp eq i64 %cond662, 0
  br i1 %tobool664, label %if.end666, label %do_no.preheader

if.end666:                                        ; preds = %cond.true629, %cond.end661
  %idxprom667 = sext i32 %nextchr.0 to i64
  %arrayidx668 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom667
  %139 = load i8* %arrayidx668, align 1, !tbaa !1
  %idx.ext670 = zext i8 %139 to i64
  %add.ptr671 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext670
  %140 = load i8* %add.ptr671, align 1, !tbaa !1
  %conv672 = zext i8 %140 to i32
  br label %while.cond

if.end673:                                        ; preds = %if.end618
  %141 = load i8* %type, align 1, !tbaa !1
  %cmp676 = icmp eq i8 %141, 20
  br i1 %cmp676, label %cond.true678, label %cond.false699

cond.true678:                                     ; preds = %if.end673
  %nextchr.0.off5444 = add i32 %nextchr.0, -65
  %142 = icmp ult i32 %nextchr.0.off5444, 26
  %nextchr.0.off5445 = add i32 %nextchr.0, -97
  %143 = icmp ult i32 %nextchr.0.off5445, 26
  %or.cond5480 = or i1 %142, %143
  br i1 %or.cond5480, label %do_no.preheader, label %lor.lhs.false690

lor.lhs.false690:                                 ; preds = %cond.true678
  %nextchr.0.off5446 = add i32 %nextchr.0, -48
  %144 = icmp ult i32 %nextchr.0.off5446, 10
  %cmp697 = icmp eq i32 %nextchr.0, 95
  %or.cond4335 = or i1 %144, %cmp697
  br i1 %or.cond4335, label %do_no.preheader, label %if.end714

cond.false699:                                    ; preds = %if.end673
  %cmp701 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp701, label %land.lhs.true703, label %if.end714

land.lhs.true703:                                 ; preds = %cond.false699
  %idxprom704 = sext i32 %nextchr.0 to i64
  %call705 = call i16** @__ctype_b_loc() #6
  %145 = load i16** %call705, align 8, !tbaa !3
  %arrayidx706 = getelementptr inbounds i16* %145, i64 %idxprom704
  %146 = load i16* %arrayidx706, align 2, !tbaa !5
  %and708 = and i16 %146, 8
  %tobool709 = icmp ne i16 %and708, 0
  %cmp711 = icmp eq i32 %nextchr.0, 95
  %or.cond5481 = or i1 %tobool709, %cmp711
  br i1 %or.cond5481, label %do_no.preheader, label %if.end714

if.end714:                                        ; preds = %land.lhs.true703, %lor.lhs.false690, %cond.false699
  %incdec.ptr715 = getelementptr inbounds i8* %locinput.0, i64 1
  %147 = load i8* %incdec.ptr715, align 1, !tbaa !1
  %conv716 = zext i8 %147 to i32
  br label %while.cond

sw.bb717:                                         ; preds = %while.body, %while.body
  %148 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or718 = or i32 %148, 1
  store i32 %or718, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb719

sw.bb719:                                         ; preds = %while.body, %while.body, %sw.bb717
  %149 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp810 = icmp eq i8* %locinput.0, %149
  br i1 %tobool82, label %if.else809, label %if.then721

if.then721:                                       ; preds = %sw.bb719
  br i1 %cmp810, label %if.end732, label %if.else725

if.else725:                                       ; preds = %if.then721
  %call726 = call fastcc i8* @S_reghop3(i8* %locinput.0, i32 -1, i8* %149) #5
  %150 = load i8* %call726, align 1, !tbaa !1
  %idxprom727 = zext i8 %150 to i64
  %arrayidx728 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom727
  %151 = load i8* %arrayidx728, align 1, !tbaa !1
  %conv729 = zext i8 %151 to i64
  %call730 = call i64 @Perl_utf8n_to_uvuni(i8* %call726, i64 %conv729, i64* null, i32 0) #6
  %conv731 = trunc i64 %call730 to i32
  br label %if.end732

if.end732:                                        ; preds = %if.then721, %if.else725
  %ln.1 = phi i32 [ %conv731, %if.else725 ], [ 10, %if.then721 ]
  %152 = load i8* %type, align 1, !tbaa !1
  switch i8 %152, label %if.else752 [
    i8 9, label %if.then742
    i8 11, label %if.then742
  ]

if.then742:                                       ; preds = %if.end732, %if.end732
  %conv743 = sext i32 %ln.1 to i64
  %call744 = call signext i8 @Perl_is_uni_alnum(i64 %conv743) #6
  %conv745 = sext i8 %call744 to i32
  %153 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool746 = icmp eq %struct.sv* %153, null
  br i1 %tobool746, label %if.then747, label %if.end749

if.then747:                                       ; preds = %if.then742
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call748 = call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  %.pre5737 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  br label %if.end749

if.end749:                                        ; preds = %if.then742, %if.then747
  %154 = phi %struct.sv* [ %153, %if.then742 ], [ %.pre5737, %if.then747 ]
  %call750 = call i64 @Perl_swash_fetch(%struct.sv* %154, i8* %locinput.0, i8 signext %1) #6
  %conv751 = trunc i64 %call750 to i32
  br label %if.end907

if.else752:                                       ; preds = %if.end732
  %cmp753 = icmp slt i32 %ln.1, 256
  br i1 %cmp753, label %cond.true755, label %cond.false772

cond.true755:                                     ; preds = %if.else752
  %cmp757 = icmp ult i32 %ln.1, 128
  br i1 %cmp757, label %land.rhs759, label %land.end770

land.rhs759:                                      ; preds = %cond.true755
  %idxprom760 = sext i32 %ln.1 to i64
  %call761 = call i16** @__ctype_b_loc() #6
  %155 = load i16** %call761, align 8, !tbaa !3
  %arrayidx762 = getelementptr inbounds i16* %155, i64 %idxprom760
  %156 = load i16* %arrayidx762, align 2, !tbaa !5
  %and764 = and i16 %156, 8
  %cmp767 = icmp eq i32 %ln.1, 95
  %not.tobool765 = icmp ne i16 %and764, 0
  %cmp767. = or i1 %cmp767, %not.tobool765
  br label %land.end770

land.end770:                                      ; preds = %land.rhs759, %cond.true755
  %157 = phi i1 [ false, %cond.true755 ], [ %cmp767., %land.rhs759 ]
  %land.ext771 = zext i1 %157 to i32
  br label %cond.end776

cond.false772:                                    ; preds = %if.else752
  %conv773 = sext i32 %ln.1 to i64
  %call774 = call signext i8 @Perl_is_uni_alnum_lc(i64 %conv773) #6
  %conv775 = sext i8 %call774 to i32
  br label %cond.end776

cond.end776:                                      ; preds = %cond.false772, %land.end770
  %cond777 = phi i32 [ %land.ext771, %land.end770 ], [ %conv775, %cond.false772 ]
  %call778 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp779 = icmp ult i64 %call778, 256
  %call782 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp779, label %cond.true781, label %cond.false802

cond.true781:                                     ; preds = %cond.end776
  %cmp784 = icmp ult i64 %call782, 128
  br i1 %cmp784, label %land.rhs786, label %land.end800

land.rhs786:                                      ; preds = %cond.true781
  %call787 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext5443 = shl i64 %call787, 32
  %idxprom789 = ashr exact i64 %sext5443, 32
  %call790 = call i16** @__ctype_b_loc() #6
  %158 = load i16** %call790, align 8, !tbaa !3
  %arrayidx791 = getelementptr inbounds i16* %158, i64 %idxprom789
  %159 = load i16* %arrayidx791, align 2, !tbaa !5
  %and793 = and i16 %159, 8
  %tobool794 = icmp eq i16 %and793, 0
  br i1 %tobool794, label %lor.rhs795, label %land.end800

lor.rhs795:                                       ; preds = %land.rhs786
  %call796 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp797 = icmp eq i64 %call796, 95
  br label %land.end800

land.end800:                                      ; preds = %land.rhs786, %lor.rhs795, %cond.true781
  %160 = phi i1 [ false, %cond.true781 ], [ true, %land.rhs786 ], [ %cmp797, %lor.rhs795 ]
  %land.ext801 = zext i1 %160 to i32
  br label %if.end907

cond.false802:                                    ; preds = %cond.end776
  %call804 = call signext i8 @Perl_is_uni_alnum_lc(i64 %call782) #6
  %conv805 = sext i8 %call804 to i32
  br label %if.end907

if.else809:                                       ; preds = %sw.bb719
  br i1 %cmp810, label %cond.end816, label %cond.true812

cond.true812:                                     ; preds = %if.else809
  %add.ptr813 = getelementptr inbounds i8* %locinput.0, i64 -1
  %161 = load i8* %add.ptr813, align 1, !tbaa !1
  %conv814 = zext i8 %161 to i32
  br label %cond.end816

cond.end816:                                      ; preds = %if.else809, %cond.true812
  %cond817 = phi i32 [ %conv814, %cond.true812 ], [ 10, %if.else809 ]
  %162 = load i8* %type, align 1, !tbaa !1
  switch i8 %162, label %if.else871 [
    i8 9, label %if.then827
    i8 11, label %if.then827
  ]

if.then827:                                       ; preds = %cond.end816, %cond.end816
  %cond817.off = add i32 %cond817, -65
  %163 = icmp ult i32 %cond817.off, 26
  %cond817.off5438 = add i32 %cond817, -97
  %164 = icmp ult i32 %cond817.off5438, 26
  %or.cond5483 = or i1 %163, %164
  %cond817.off5439 = add i32 %cond817, -48
  %165 = icmp ult i32 %cond817.off5439, 10
  %or.cond5485 = or i1 %or.cond5483, %165
  %cmp846 = icmp eq i32 %cond817, 95
  %.cmp846 = or i1 %or.cond5485, %cmp846
  %lor.ext = zext i1 %.cmp846 to i32
  %nextchr.0.off5440 = add i32 %nextchr.0, -65
  %166 = icmp ult i32 %nextchr.0.off5440, 26
  %nextchr.0.off5441 = add i32 %nextchr.0, -97
  %167 = icmp ult i32 %nextchr.0.off5441, 26
  %or.cond5487 = or i1 %166, %167
  %nextchr.0.off5442 = add i32 %nextchr.0, -48
  %168 = icmp ult i32 %nextchr.0.off5442, 10
  %or.cond5489 = or i1 %or.cond5487, %168
  %cmp867 = icmp eq i32 %nextchr.0, 95
  %.cmp867 = or i1 %or.cond5489, %cmp867
  %lor.ext870 = zext i1 %.cmp867 to i32
  br label %if.end907

if.else871:                                       ; preds = %cond.end816
  %and872 = and i32 %cond817, 128
  %cmp873 = icmp eq i32 %and872, 0
  br i1 %cmp873, label %land.rhs875, label %land.end887

land.rhs875:                                      ; preds = %if.else871
  %idxprom8765437 = zext i32 %cond817 to i64
  %call877 = call i16** @__ctype_b_loc() #6
  %169 = load i16** %call877, align 8, !tbaa !3
  %arrayidx878 = getelementptr inbounds i16* %169, i64 %idxprom8765437
  %170 = load i16* %arrayidx878, align 2, !tbaa !5
  %and880 = and i16 %170, 8
  %cmp883 = icmp eq i32 %cond817, 95
  %not.tobool881 = icmp ne i16 %and880, 0
  %cmp883. = or i1 %cmp883, %not.tobool881
  br label %land.end887

land.end887:                                      ; preds = %land.rhs875, %if.else871
  %171 = phi i1 [ false, %if.else871 ], [ %cmp883., %land.rhs875 ]
  %land.ext888 = zext i1 %171 to i32
  %cmp890 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp890, label %land.rhs892, label %land.end904

land.rhs892:                                      ; preds = %land.end887
  %idxprom893 = sext i32 %nextchr.0 to i64
  %call894 = call i16** @__ctype_b_loc() #6
  %172 = load i16** %call894, align 8, !tbaa !3
  %arrayidx895 = getelementptr inbounds i16* %172, i64 %idxprom893
  %173 = load i16* %arrayidx895, align 2, !tbaa !5
  %and897 = and i16 %173, 8
  %cmp900 = icmp eq i32 %nextchr.0, 95
  %not.tobool898 = icmp ne i16 %and897, 0
  %cmp900. = or i1 %cmp900, %not.tobool898
  br label %land.end904

land.end904:                                      ; preds = %land.rhs892, %land.end887
  %174 = phi i1 [ false, %land.end887 ], [ %cmp900., %land.rhs892 ]
  %land.ext905 = zext i1 %174 to i32
  br label %if.end907

if.end907:                                        ; preds = %land.end800, %cond.false802, %if.then827, %land.end904, %if.end749
  %ln.2 = phi i32 [ %conv745, %if.end749 ], [ %lor.ext, %if.then827 ], [ %land.ext888, %land.end904 ], [ %cond777, %cond.false802 ], [ %cond777, %land.end800 ]
  %n.0 = phi i32 [ %conv751, %if.end749 ], [ %lor.ext870, %if.then827 ], [ %land.ext905, %land.end904 ], [ %conv805, %cond.false802 ], [ %land.ext801, %land.end800 ]
  %lnot = icmp eq i32 %ln.2, 0
  %lnot910 = icmp eq i32 %n.0, 0
  %cmp912tmp = xor i1 %lnot, %lnot910
  %175 = zext i1 %cmp912tmp to i32
  %conv913 = xor i32 %175, 1
  %176 = load i8* %type, align 1, !tbaa !1
  %.off5560 = add i8 %176, -9
  %177 = icmp ult i8 %.off5560, 2
  %lor.ext924 = zext i1 %177 to i32
  %cmp925 = icmp eq i32 %conv913, %lor.ext924
  br i1 %cmp925, label %do_no.preheader, label %while.cond

sw.bb929:                                         ; preds = %while.body
  %178 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or930 = or i32 %178, 1
  store i32 %or930, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb931

sw.bb931:                                         ; preds = %while.body, %sw.bb929
  %tobool932 = icmp eq i32 %nextchr.0, 0
  br i1 %tobool932, label %do_no.preheader, label %if.end934

if.end934:                                        ; preds = %sw.bb931
  br i1 %tobool82, label %if.else1024, label %if.then936

if.then936:                                       ; preds = %if.end934
  %and939 = and i32 %nextchr.0, 128
  %tobool940 = icmp eq i32 %and939, 0
  br i1 %tobool940, label %if.end989, label %if.then941

if.then941:                                       ; preds = %if.then936
  %179 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %tobool942 = icmp eq %struct.sv* %179, null
  br i1 %tobool942, label %if.then943, label %if.end945

if.then943:                                       ; preds = %if.then941
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call944 = call signext i8 @Perl_is_utf8_space(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %if.end945

if.end945:                                        ; preds = %if.then941, %if.then943
  %180 = load i8* %type, align 1, !tbaa !1
  %cmp948 = icmp eq i8 %180, 22
  br i1 %cmp948, label %cond.true950, label %cond.false953

cond.true950:                                     ; preds = %if.end945
  %181 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %call951 = call i64 @Perl_swash_fetch(%struct.sv* %181, i8* %locinput.0, i8 signext %1) #6
  %tobool952 = icmp eq i64 %call951, 0
  br i1 %tobool952, label %do_no.preheader, label %if.end982

cond.false953:                                    ; preds = %if.end945
  %call954 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp955 = icmp ult i64 %call954, 256
  %call958 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp955, label %cond.true957, label %cond.false973

cond.true957:                                     ; preds = %cond.false953
  %cmp960 = icmp ult i64 %call958, 128
  br i1 %cmp960, label %land.rhs962, label %land.end971

land.rhs962:                                      ; preds = %cond.true957
  %call963 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext5436 = shl i64 %call963, 32
  %idxprom965 = ashr exact i64 %sext5436, 32
  %call966 = call i16** @__ctype_b_loc() #6
  %182 = load i16** %call966, align 8, !tbaa !3
  %arrayidx967 = getelementptr inbounds i16* %182, i64 %idxprom965
  %183 = load i16* %arrayidx967, align 2, !tbaa !5
  %and969 = and i16 %183, 8192
  %tobool970 = icmp ne i16 %and969, 0
  br label %land.end971

land.end971:                                      ; preds = %land.rhs962, %cond.true957
  %184 = phi i1 [ false, %cond.true957 ], [ %tobool970, %land.rhs962 ]
  %land.ext972 = zext i1 %184 to i64
  br label %cond.end977

cond.false973:                                    ; preds = %cond.false953
  %call975 = call signext i8 @Perl_is_uni_space_lc(i64 %call958) #6
  %conv976 = sext i8 %call975 to i64
  br label %cond.end977

cond.end977:                                      ; preds = %cond.false973, %land.end971
  %cond978 = phi i64 [ %land.ext972, %land.end971 ], [ %conv976, %cond.false973 ]
  %tobool980 = icmp eq i64 %cond978, 0
  br i1 %tobool980, label %do_no.preheader, label %if.end982

if.end982:                                        ; preds = %cond.true950, %cond.end977
  %idxprom983 = sext i32 %nextchr.0 to i64
  %arrayidx984 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom983
  %185 = load i8* %arrayidx984, align 1, !tbaa !1
  %idx.ext986 = zext i8 %185 to i64
  %add.ptr987 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext986
  %186 = load i8* %add.ptr987, align 1, !tbaa !1
  %conv988 = zext i8 %186 to i32
  br label %while.cond

if.end989:                                        ; preds = %if.then936
  %187 = load i8* %type, align 1, !tbaa !1
  %cmp992 = icmp eq i8 %187, 22
  br i1 %cmp992, label %cond.true994, label %cond.false1009

cond.true994:                                     ; preds = %if.end989
  switch i32 %nextchr.0, label %do_no.preheader [
    i32 32, label %if.end1021
    i32 13, label %if.end1021
    i32 12, label %if.end1021
    i32 10, label %if.end1021
    i32 9, label %if.end1021
  ]

cond.false1009:                                   ; preds = %if.end989
  %cmp1011 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp1011, label %land.lhs.true1013, label %do_no.preheader

land.lhs.true1013:                                ; preds = %cond.false1009
  %idxprom1014 = sext i32 %nextchr.0 to i64
  %call1015 = call i16** @__ctype_b_loc() #6
  %188 = load i16** %call1015, align 8, !tbaa !3
  %arrayidx1016 = getelementptr inbounds i16* %188, i64 %idxprom1014
  %189 = load i16* %arrayidx1016, align 2, !tbaa !5
  %and1018 = and i16 %189, 8192
  %tobool1019 = icmp eq i16 %and1018, 0
  br i1 %tobool1019, label %do_no.preheader, label %if.end1021

if.end1021:                                       ; preds = %cond.true994, %cond.true994, %cond.true994, %cond.true994, %cond.true994, %land.lhs.true1013
  %incdec.ptr1022 = getelementptr inbounds i8* %locinput.0, i64 1
  %190 = load i8* %incdec.ptr1022, align 1, !tbaa !1
  %conv1023 = zext i8 %190 to i32
  br label %while.cond

if.else1024:                                      ; preds = %if.end934
  %191 = load i8* %type, align 1, !tbaa !1
  %cmp1027 = icmp eq i8 %191, 22
  br i1 %cmp1027, label %cond.true1029, label %cond.false1044

cond.true1029:                                    ; preds = %if.else1024
  switch i32 %nextchr.0, label %do_no.preheader [
    i32 32, label %if.end1056
    i32 13, label %if.end1056
    i32 12, label %if.end1056
    i32 10, label %if.end1056
    i32 9, label %if.end1056
  ]

cond.false1044:                                   ; preds = %if.else1024
  %cmp1046 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp1046, label %land.lhs.true1048, label %do_no.preheader

land.lhs.true1048:                                ; preds = %cond.false1044
  %idxprom1049 = sext i32 %nextchr.0 to i64
  %call1050 = call i16** @__ctype_b_loc() #6
  %192 = load i16** %call1050, align 8, !tbaa !3
  %arrayidx1051 = getelementptr inbounds i16* %192, i64 %idxprom1049
  %193 = load i16* %arrayidx1051, align 2, !tbaa !5
  %and1053 = and i16 %193, 8192
  %tobool1054 = icmp eq i16 %and1053, 0
  br i1 %tobool1054, label %do_no.preheader, label %if.end1056

if.end1056:                                       ; preds = %cond.true1029, %cond.true1029, %cond.true1029, %cond.true1029, %cond.true1029, %land.lhs.true1048
  %incdec.ptr1057 = getelementptr inbounds i8* %locinput.0, i64 1
  %194 = load i8* %incdec.ptr1057, align 1, !tbaa !1
  %conv1058 = zext i8 %194 to i32
  br label %while.cond

sw.bb1060:                                        ; preds = %while.body
  %195 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1061 = or i32 %195, 1
  store i32 %or1061, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb1062

sw.bb1062:                                        ; preds = %while.body, %sw.bb1060
  %tobool1063 = icmp ne i32 %nextchr.0, 0
  %196 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp1065 = icmp ult i8* %locinput.0, %196
  %or.cond5490 = or i1 %tobool1063, %cmp1065
  br i1 %or.cond5490, label %if.end1068, label %do_no.preheader

if.end1068:                                       ; preds = %sw.bb1062
  br i1 %tobool82, label %if.end1118, label %if.then1070

if.then1070:                                      ; preds = %if.end1068
  %197 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %tobool1071 = icmp eq %struct.sv* %197, null
  br i1 %tobool1071, label %if.then1072, label %if.end1074

if.then1072:                                      ; preds = %if.then1070
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1073 = call signext i8 @Perl_is_utf8_space(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %if.end1074

if.end1074:                                       ; preds = %if.then1070, %if.then1072
  %198 = load i8* %type, align 1, !tbaa !1
  %cmp1077 = icmp eq i8 %198, 24
  br i1 %cmp1077, label %cond.true1079, label %cond.false1082

cond.true1079:                                    ; preds = %if.end1074
  %199 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %call1080 = call i64 @Perl_swash_fetch(%struct.sv* %199, i8* %locinput.0, i8 signext %1) #6
  %tobool1081 = icmp eq i64 %call1080, 0
  br i1 %tobool1081, label %if.end1111, label %do_no.preheader

cond.false1082:                                   ; preds = %if.end1074
  %call1083 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp1084 = icmp ult i64 %call1083, 256
  %call1087 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp1084, label %cond.true1086, label %cond.false1102

cond.true1086:                                    ; preds = %cond.false1082
  %cmp1089 = icmp ult i64 %call1087, 128
  br i1 %cmp1089, label %land.rhs1091, label %land.end1100

land.rhs1091:                                     ; preds = %cond.true1086
  %call1092 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext5435 = shl i64 %call1092, 32
  %idxprom1094 = ashr exact i64 %sext5435, 32
  %call1095 = call i16** @__ctype_b_loc() #6
  %200 = load i16** %call1095, align 8, !tbaa !3
  %arrayidx1096 = getelementptr inbounds i16* %200, i64 %idxprom1094
  %201 = load i16* %arrayidx1096, align 2, !tbaa !5
  %and1098 = and i16 %201, 8192
  %tobool1099 = icmp ne i16 %and1098, 0
  br label %land.end1100

land.end1100:                                     ; preds = %land.rhs1091, %cond.true1086
  %202 = phi i1 [ false, %cond.true1086 ], [ %tobool1099, %land.rhs1091 ]
  %land.ext1101 = zext i1 %202 to i64
  br label %cond.end1106

cond.false1102:                                   ; preds = %cond.false1082
  %call1104 = call signext i8 @Perl_is_uni_space_lc(i64 %call1087) #6
  %conv1105 = sext i8 %call1104 to i64
  br label %cond.end1106

cond.end1106:                                     ; preds = %cond.false1102, %land.end1100
  %cond1107 = phi i64 [ %land.ext1101, %land.end1100 ], [ %conv1105, %cond.false1102 ]
  %tobool1109 = icmp eq i64 %cond1107, 0
  br i1 %tobool1109, label %if.end1111, label %do_no.preheader

if.end1111:                                       ; preds = %cond.true1079, %cond.end1106
  %idxprom1112 = sext i32 %nextchr.0 to i64
  %arrayidx1113 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1112
  %203 = load i8* %arrayidx1113, align 1, !tbaa !1
  %idx.ext1115 = zext i8 %203 to i64
  %add.ptr1116 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext1115
  %204 = load i8* %add.ptr1116, align 1, !tbaa !1
  %conv1117 = zext i8 %204 to i32
  br label %while.cond

if.end1118:                                       ; preds = %if.end1068
  %205 = load i8* %type, align 1, !tbaa !1
  %cmp1121 = icmp eq i8 %205, 24
  br i1 %cmp1121, label %cond.true1123, label %cond.false1138

cond.true1123:                                    ; preds = %if.end1118
  switch i32 %nextchr.0, label %if.end1150 [
    i32 32, label %do_no.preheader
    i32 13, label %do_no.preheader
    i32 12, label %do_no.preheader
    i32 10, label %do_no.preheader
    i32 9, label %do_no.preheader
  ]

cond.false1138:                                   ; preds = %if.end1118
  %cmp1140 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp1140, label %land.lhs.true1142, label %if.end1150

land.lhs.true1142:                                ; preds = %cond.false1138
  %idxprom1143 = sext i32 %nextchr.0 to i64
  %call1144 = call i16** @__ctype_b_loc() #6
  %206 = load i16** %call1144, align 8, !tbaa !3
  %arrayidx1145 = getelementptr inbounds i16* %206, i64 %idxprom1143
  %207 = load i16* %arrayidx1145, align 2, !tbaa !5
  %and1147 = and i16 %207, 8192
  %tobool1148 = icmp eq i16 %and1147, 0
  br i1 %tobool1148, label %if.end1150, label %do_no.preheader

if.end1150:                                       ; preds = %cond.true1123, %land.lhs.true1142, %cond.false1138
  %incdec.ptr1151 = getelementptr inbounds i8* %locinput.0, i64 1
  %208 = load i8* %incdec.ptr1151, align 1, !tbaa !1
  %conv1152 = zext i8 %208 to i32
  br label %while.cond

sw.bb1153:                                        ; preds = %while.body
  %209 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1154 = or i32 %209, 1
  store i32 %or1154, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb1155

sw.bb1155:                                        ; preds = %while.body, %sw.bb1153
  %tobool1156 = icmp eq i32 %nextchr.0, 0
  br i1 %tobool1156, label %do_no.preheader, label %if.end1158

if.end1158:                                       ; preds = %sw.bb1155
  br i1 %tobool82, label %if.end1208, label %if.then1160

if.then1160:                                      ; preds = %if.end1158
  %210 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %tobool1161 = icmp eq %struct.sv* %210, null
  br i1 %tobool1161, label %if.then1162, label %if.end1164

if.then1162:                                      ; preds = %if.then1160
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1163 = call signext i8 @Perl_is_utf8_digit(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %if.end1164

if.end1164:                                       ; preds = %if.then1160, %if.then1162
  %211 = load i8* %type, align 1, !tbaa !1
  %cmp1167 = icmp eq i8 %211, 26
  br i1 %cmp1167, label %cond.true1169, label %cond.false1172

cond.true1169:                                    ; preds = %if.end1164
  %212 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %call1170 = call i64 @Perl_swash_fetch(%struct.sv* %212, i8* %locinput.0, i8 signext %1) #6
  %tobool1171 = icmp eq i64 %call1170, 0
  br i1 %tobool1171, label %do_no.preheader, label %if.end1201

cond.false1172:                                   ; preds = %if.end1164
  %call1173 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp1174 = icmp ult i64 %call1173, 256
  %call1177 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp1174, label %cond.true1176, label %cond.false1192

cond.true1176:                                    ; preds = %cond.false1172
  %cmp1179 = icmp ult i64 %call1177, 128
  br i1 %cmp1179, label %land.rhs1181, label %land.end1190

land.rhs1181:                                     ; preds = %cond.true1176
  %call1182 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext5434 = shl i64 %call1182, 32
  %idxprom1184 = ashr exact i64 %sext5434, 32
  %call1185 = call i16** @__ctype_b_loc() #6
  %213 = load i16** %call1185, align 8, !tbaa !3
  %arrayidx1186 = getelementptr inbounds i16* %213, i64 %idxprom1184
  %214 = load i16* %arrayidx1186, align 2, !tbaa !5
  %and1188 = and i16 %214, 2048
  %tobool1189 = icmp ne i16 %and1188, 0
  br label %land.end1190

land.end1190:                                     ; preds = %land.rhs1181, %cond.true1176
  %215 = phi i1 [ false, %cond.true1176 ], [ %tobool1189, %land.rhs1181 ]
  %land.ext1191 = zext i1 %215 to i64
  br label %cond.end1196

cond.false1192:                                   ; preds = %cond.false1172
  %call1194 = call signext i8 @Perl_is_uni_digit_lc(i64 %call1177) #6
  %conv1195 = sext i8 %call1194 to i64
  br label %cond.end1196

cond.end1196:                                     ; preds = %cond.false1192, %land.end1190
  %cond1197 = phi i64 [ %land.ext1191, %land.end1190 ], [ %conv1195, %cond.false1192 ]
  %tobool1199 = icmp eq i64 %cond1197, 0
  br i1 %tobool1199, label %do_no.preheader, label %if.end1201

if.end1201:                                       ; preds = %cond.true1169, %cond.end1196
  %idxprom1202 = sext i32 %nextchr.0 to i64
  %arrayidx1203 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1202
  %216 = load i8* %arrayidx1203, align 1, !tbaa !1
  %idx.ext1205 = zext i8 %216 to i64
  %add.ptr1206 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext1205
  %217 = load i8* %add.ptr1206, align 1, !tbaa !1
  %conv1207 = zext i8 %217 to i32
  br label %while.cond

if.end1208:                                       ; preds = %if.end1158
  %218 = load i8* %type, align 1, !tbaa !1
  %cmp1211 = icmp eq i8 %218, 26
  br i1 %cmp1211, label %cond.true1213, label %cond.false1219

cond.true1213:                                    ; preds = %if.end1208
  %nextchr.0.off5433 = add i32 %nextchr.0, -48
  %219 = icmp ult i32 %nextchr.0.off5433, 10
  br i1 %219, label %if.end1231, label %do_no.preheader

cond.false1219:                                   ; preds = %if.end1208
  %cmp1221 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp1221, label %land.lhs.true1223, label %do_no.preheader

land.lhs.true1223:                                ; preds = %cond.false1219
  %idxprom1224 = sext i32 %nextchr.0 to i64
  %call1225 = call i16** @__ctype_b_loc() #6
  %220 = load i16** %call1225, align 8, !tbaa !3
  %arrayidx1226 = getelementptr inbounds i16* %220, i64 %idxprom1224
  %221 = load i16* %arrayidx1226, align 2, !tbaa !5
  %and1228 = and i16 %221, 2048
  %tobool1229 = icmp eq i16 %and1228, 0
  br i1 %tobool1229, label %do_no.preheader, label %if.end1231

if.end1231:                                       ; preds = %land.lhs.true1223, %cond.true1213
  %incdec.ptr1232 = getelementptr inbounds i8* %locinput.0, i64 1
  %222 = load i8* %incdec.ptr1232, align 1, !tbaa !1
  %conv1233 = zext i8 %222 to i32
  br label %while.cond

sw.bb1234:                                        ; preds = %while.body
  %223 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1235 = or i32 %223, 1
  store i32 %or1235, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb1236

sw.bb1236:                                        ; preds = %while.body, %sw.bb1234
  %tobool1237 = icmp ne i32 %nextchr.0, 0
  %224 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp1239 = icmp ult i8* %locinput.0, %224
  %or.cond5491 = or i1 %tobool1237, %cmp1239
  br i1 %or.cond5491, label %if.end1242, label %do_no.preheader

if.end1242:                                       ; preds = %sw.bb1236
  br i1 %tobool82, label %if.end1292, label %if.then1244

if.then1244:                                      ; preds = %if.end1242
  %225 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %tobool1245 = icmp eq %struct.sv* %225, null
  br i1 %tobool1245, label %if.then1246, label %if.end1248

if.then1246:                                      ; preds = %if.then1244
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1247 = call signext i8 @Perl_is_utf8_digit(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  br label %if.end1248

if.end1248:                                       ; preds = %if.then1244, %if.then1246
  %226 = load i8* %type, align 1, !tbaa !1
  %cmp1251 = icmp eq i8 %226, 28
  br i1 %cmp1251, label %cond.true1253, label %cond.false1256

cond.true1253:                                    ; preds = %if.end1248
  %227 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %call1254 = call i64 @Perl_swash_fetch(%struct.sv* %227, i8* %locinput.0, i8 signext %1) #6
  %tobool1255 = icmp eq i64 %call1254, 0
  br i1 %tobool1255, label %if.end1285, label %do_no.preheader

cond.false1256:                                   ; preds = %if.end1248
  %call1257 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %cmp1258 = icmp ult i64 %call1257, 256
  %call1261 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  br i1 %cmp1258, label %cond.true1260, label %cond.false1276

cond.true1260:                                    ; preds = %cond.false1256
  %cmp1263 = icmp ult i64 %call1261, 128
  br i1 %cmp1263, label %land.rhs1265, label %land.end1274

land.rhs1265:                                     ; preds = %cond.true1260
  %call1266 = call i64 @Perl_utf8_to_uvchr(i8* %locinput.0, i64* null) #6
  %sext = shl i64 %call1266, 32
  %idxprom1268 = ashr exact i64 %sext, 32
  %call1269 = call i16** @__ctype_b_loc() #6
  %228 = load i16** %call1269, align 8, !tbaa !3
  %arrayidx1270 = getelementptr inbounds i16* %228, i64 %idxprom1268
  %229 = load i16* %arrayidx1270, align 2, !tbaa !5
  %and1272 = and i16 %229, 2048
  %tobool1273 = icmp ne i16 %and1272, 0
  br label %land.end1274

land.end1274:                                     ; preds = %land.rhs1265, %cond.true1260
  %230 = phi i1 [ false, %cond.true1260 ], [ %tobool1273, %land.rhs1265 ]
  %land.ext1275 = zext i1 %230 to i64
  br label %cond.end1280

cond.false1276:                                   ; preds = %cond.false1256
  %call1278 = call signext i8 @Perl_is_uni_digit_lc(i64 %call1261) #6
  %conv1279 = sext i8 %call1278 to i64
  br label %cond.end1280

cond.end1280:                                     ; preds = %cond.false1276, %land.end1274
  %cond1281 = phi i64 [ %land.ext1275, %land.end1274 ], [ %conv1279, %cond.false1276 ]
  %tobool1283 = icmp eq i64 %cond1281, 0
  br i1 %tobool1283, label %if.end1285, label %do_no.preheader

if.end1285:                                       ; preds = %cond.true1253, %cond.end1280
  %idxprom1286 = sext i32 %nextchr.0 to i64
  %arrayidx1287 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1286
  %231 = load i8* %arrayidx1287, align 1, !tbaa !1
  %idx.ext1289 = zext i8 %231 to i64
  %add.ptr1290 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext1289
  %232 = load i8* %add.ptr1290, align 1, !tbaa !1
  %conv1291 = zext i8 %232 to i32
  br label %while.cond

if.end1292:                                       ; preds = %if.end1242
  %233 = load i8* %type, align 1, !tbaa !1
  %cmp1295 = icmp eq i8 %233, 28
  br i1 %cmp1295, label %cond.true1297, label %cond.false1303

cond.true1297:                                    ; preds = %if.end1292
  %nextchr.0.off = add i32 %nextchr.0, -48
  %234 = icmp ult i32 %nextchr.0.off, 10
  br i1 %234, label %do_no.preheader, label %if.end1315

cond.false1303:                                   ; preds = %if.end1292
  %cmp1305 = icmp ult i32 %nextchr.0, 128
  br i1 %cmp1305, label %land.lhs.true1307, label %if.end1315

land.lhs.true1307:                                ; preds = %cond.false1303
  %idxprom1308 = sext i32 %nextchr.0 to i64
  %call1309 = call i16** @__ctype_b_loc() #6
  %235 = load i16** %call1309, align 8, !tbaa !3
  %arrayidx1310 = getelementptr inbounds i16* %235, i64 %idxprom1308
  %236 = load i16* %arrayidx1310, align 2, !tbaa !5
  %and1312 = and i16 %236, 2048
  %tobool1313 = icmp eq i16 %and1312, 0
  br i1 %tobool1313, label %if.end1315, label %do_no.preheader

if.end1315:                                       ; preds = %land.lhs.true1307, %cond.false1303, %cond.true1297
  %incdec.ptr1316 = getelementptr inbounds i8* %locinput.0, i64 1
  %237 = load i8* %incdec.ptr1316, align 1, !tbaa !1
  %conv1317 = zext i8 %237 to i32
  br label %while.cond

sw.bb1318:                                        ; preds = %while.body
  %238 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp1319 = icmp ult i8* %locinput.0, %238
  br i1 %cmp1319, label %if.end1322, label %do_no.preheader

if.end1322:                                       ; preds = %sw.bb1318
  br i1 %tobool82, label %if.else1357, label %if.then1324

if.then1324:                                      ; preds = %if.end1322
  %239 = load %struct.sv** @PL_utf8_mark, align 8, !tbaa !3
  %tobool1325 = icmp eq %struct.sv* %239, null
  br i1 %tobool1325, label %if.then1326, label %if.end1328

if.then1326:                                      ; preds = %if.then1324
  call void @Perl_push_scope() #6
  call void @Perl_save_re_context() #6
  %call1327 = call signext i8 @Perl_is_utf8_mark(i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #6
  call void @Perl_pop_scope() #6
  %.pre5738 = load %struct.sv** @PL_utf8_mark, align 8, !tbaa !3
  br label %if.end1328

if.end1328:                                       ; preds = %if.then1324, %if.then1326
  %240 = phi %struct.sv* [ %239, %if.then1324 ], [ %.pre5738, %if.then1326 ]
  %call1329 = call i64 @Perl_swash_fetch(%struct.sv* %240, i8* %locinput.0, i8 signext %1) #6
  %tobool1330 = icmp eq i64 %call1329, 0
  br i1 %tobool1330, label %if.end1332, label %do_no.preheader

if.end1332:                                       ; preds = %if.end1328
  %idxprom1333 = sext i32 %nextchr.0 to i64
  %arrayidx1334 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1333
  %241 = load i8* %arrayidx1334, align 1, !tbaa !1
  %idx.ext1336 = zext i8 %241 to i64
  %add.ptr1337 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext1336
  %242 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp13395623 = icmp ult i8* %add.ptr1337, %242
  br i1 %cmp13395623, label %land.rhs1341, label %while.end1352

land.rhs1341:                                     ; preds = %if.end1332, %while.body1346
  %locinput.15624 = phi i8* [ %add.ptr1351, %while.body1346 ], [ %add.ptr1337, %if.end1332 ]
  %243 = load %struct.sv** @PL_utf8_mark, align 8, !tbaa !3
  %call1342 = call i64 @Perl_swash_fetch(%struct.sv* %243, i8* %locinput.15624, i8 signext %1) #6
  %tobool1343 = icmp eq i64 %call1342, 0
  br i1 %tobool1343, label %while.end1352split, label %while.body1346

while.body1346:                                   ; preds = %land.rhs1341
  %244 = load i8* %locinput.15624, align 1, !tbaa !1
  %idxprom1347 = zext i8 %244 to i64
  %arrayidx1348 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom1347
  %245 = load i8* %arrayidx1348, align 1, !tbaa !1
  %idx.ext1350 = zext i8 %245 to i64
  %add.ptr1351 = getelementptr inbounds i8* %locinput.15624, i64 %idx.ext1350
  %246 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp1339 = icmp ult i8* %add.ptr1351, %246
  br i1 %cmp1339, label %land.rhs1341, label %while.end1352

while.end1352split:                               ; preds = %land.rhs1341
  %.pre5739 = load i8** @PL_regeol, align 8, !tbaa !3
  br label %while.end1352

while.end1352:                                    ; preds = %while.body1346, %while.end1352split, %if.end1332
  %247 = phi i8* [ %242, %if.end1332 ], [ %.pre5739, %while.end1352split ], [ %246, %while.body1346 ]
  %locinput.1.lcssa = phi i8* [ %add.ptr1337, %if.end1332 ], [ %locinput.15624, %while.end1352split ], [ %add.ptr1351, %while.body1346 ]
  %cmp1353 = icmp ugt i8* %locinput.1.lcssa, %247
  br i1 %cmp1353, label %do_no.preheader, label %if.end1359

if.else1357:                                      ; preds = %if.end1322
  %incdec.ptr1358 = getelementptr inbounds i8* %locinput.0, i64 1
  br label %if.end1359

if.end1359:                                       ; preds = %while.end1352, %if.else1357
  %locinput.2 = phi i8* [ %locinput.1.lcssa, %while.end1352 ], [ %incdec.ptr1358, %if.else1357 ]
  %248 = load i8* %locinput.2, align 1, !tbaa !1
  %conv1360 = zext i8 %248 to i32
  br label %while.cond

sw.bb1361:                                        ; preds = %while.body
  %249 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or1362 = or i32 %249, 1
  store i32 %or1362, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %sw.bb1363

sw.bb1363:                                        ; preds = %while.body, %while.body, %sw.bb1361
  %arg1 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %250 = bitcast %struct.regnode* %arg1 to i32*
  %251 = load i32* %250, align 4, !tbaa !0
  %idxprom1364 = sext i32 %251 to i64
  %252 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx1365 = getelementptr inbounds i32* %252, i64 %idxprom1364
  %253 = load i32* %arrayidx1365, align 4, !tbaa !0
  %254 = load i32* @PL_reg_maxiter, align 4, !tbaa !0
  store i32 %254, i32* @PL_reg_leftiter, align 4, !tbaa !0
  %255 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %256 = load i32* %255, align 4, !tbaa !0
  %cmp1366 = icmp slt i32 %256, %251
  %cmp1369 = icmp eq i32 %253, -1
  %or.cond5492 = or i1 %cmp1366, %cmp1369
  br i1 %or.cond5492, label %do_no.preheader, label %if.end1372

if.end1372:                                       ; preds = %sw.bb1363
  %257 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx1374 = getelementptr inbounds i32* %257, i64 %idxprom1364
  %258 = load i32* %arrayidx1374, align 4, !tbaa !0
  %cmp1375 = icmp eq i32 %253, %258
  br i1 %cmp1375, label %while.cond, label %if.end1378

if.end1378:                                       ; preds = %if.end1372
  %259 = load i8** @PL_bostr, align 8, !tbaa !3
  %idx.ext1379 = sext i32 %253 to i64
  %add.ptr1380 = getelementptr inbounds i8* %259, i64 %idx.ext1379
  br i1 %tobool82, label %if.end1426, label %land.lhs.true1383

land.lhs.true1383:                                ; preds = %if.end1378
  %260 = load i8* %type, align 1, !tbaa !1
  %cmp1386 = icmp eq i8 %260, 47
  br i1 %cmp1386, label %if.end1426, label %if.then1388

if.then1388:                                      ; preds = %land.lhs.true1383
  %idx.ext1393 = sext i32 %258 to i64
  %add.ptr1394 = getelementptr inbounds i8* %259, i64 %idx.ext1393
  %cmp1397 = icmp eq i8 %260, 48
  %cmp14015619 = icmp slt i32 %253, %258
  %or.cond5766 = and i1 %cmp1397, %cmp14015619
  br i1 %or.cond5766, label %while.body1403, label %if.end1424

while.body1403:                                   ; preds = %if.then1388, %if.end1420
  %s.25621 = phi i8* [ %add.ptr1421, %if.end1420 ], [ %add.ptr1380, %if.then1388 ]
  %l1389.05620 = phi i8* [ %add.ptr1422, %if.end1420 ], [ %locinput.0, %if.then1388 ]
  %261 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp1404 = icmp ult i8* %l1389.05620, %261
  br i1 %cmp1404, label %if.end1407, label %do_no.preheader

if.end1407:                                       ; preds = %while.body1403
  %call1409 = call i64 @Perl_to_utf8_lower(i8* %s.25621, i8* %arraydecay1408, i64* %ulen1) #6
  %call1411 = call i64 @Perl_to_utf8_lower(i8* %l1389.05620, i8* %arraydecay1410, i64* %ulen2) #6
  %262 = load i64* %ulen1, align 8, !tbaa !4
  %263 = load i64* %ulen2, align 8, !tbaa !4
  %cmp1412 = icmp eq i64 %262, %263
  br i1 %cmp1412, label %lor.lhs.false1414, label %do_no.preheader

lor.lhs.false1414:                                ; preds = %if.end1407
  %call1417 = call i32 @memcmp(i8* %arraydecay1408, i8* %arraydecay1410, i64 %262) #6
  %tobool1418 = icmp eq i32 %call1417, 0
  br i1 %tobool1418, label %if.end1420, label %do_no.preheader

if.end1420:                                       ; preds = %lor.lhs.false1414
  %add.ptr1421 = getelementptr inbounds i8* %s.25621, i64 %262
  %add.ptr1422 = getelementptr inbounds i8* %l1389.05620, i64 %262
  %cmp1401 = icmp ult i8* %add.ptr1421, %add.ptr1394
  br i1 %cmp1401, label %while.body1403, label %if.end1424

if.end1424:                                       ; preds = %if.end1420, %if.then1388
  %l1389.1 = phi i8* [ %locinput.0, %if.then1388 ], [ %add.ptr1422, %if.end1420 ]
  %264 = load i8* %l1389.1, align 1, !tbaa !1
  %conv1425 = zext i8 %264 to i32
  br label %while.cond

if.end1426:                                       ; preds = %land.lhs.true1383, %if.end1378
  %265 = load i8* %add.ptr1380, align 1, !tbaa !1
  %conv1427 = zext i8 %265 to i32
  %cmp1428 = icmp eq i32 %conv1427, %nextchr.0
  br i1 %cmp1428, label %if.end1448, label %land.lhs.true1430

land.lhs.true1430:                                ; preds = %if.end1426
  %266 = load i8* %type, align 1, !tbaa !1
  %cmp1433 = icmp eq i8 %266, 47
  br i1 %cmp1433, label %do_no.preheader, label %lor.lhs.false1435

lor.lhs.false1435:                                ; preds = %land.lhs.true1430
  %idxprom1437 = sext i32 %nextchr.0 to i64
  %cmp1440 = icmp eq i8 %266, 48
  %cond1442 = select i1 %cmp1440, i8* getelementptr inbounds ([0 x i8]* @PL_fold, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8]* @PL_fold_locale, i64 0, i64 0)
  %arrayidx1443 = getelementptr inbounds i8* %cond1442, i64 %idxprom1437
  %267 = load i8* %arrayidx1443, align 1, !tbaa !1
  %cmp1445 = icmp eq i8 %265, %267
  br i1 %cmp1445, label %if.end1448, label %do_no.preheader

if.end1448:                                       ; preds = %lor.lhs.false1435, %if.end1426
  %sub = sub nsw i32 %258, %253
  %idx.ext1451 = sext i32 %sub to i64
  %add.ptr1452 = getelementptr inbounds i8* %locinput.0, i64 %idx.ext1451
  %268 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp1453 = icmp ugt i8* %add.ptr1452, %268
  br i1 %cmp1453, label %do_no.preheader, label %if.end1456

if.end1456:                                       ; preds = %if.end1448
  %cmp1457 = icmp sgt i32 %sub, 1
  br i1 %cmp1457, label %land.lhs.true1459, label %if.end1480

land.lhs.true1459:                                ; preds = %if.end1456
  %269 = load i8* %type, align 1, !tbaa !1
  switch i8 %269, label %cond.false1476 [
    i8 47, label %cond.true1464
    i8 48, label %cond.true1473
  ]

cond.true1464:                                    ; preds = %land.lhs.true1459
  %call1466 = call i32 @memcmp(i8* %add.ptr1380, i8* %locinput.0, i64 %idx.ext1451) #6
  %tobool1467 = icmp eq i32 %call1466, 0
  br i1 %tobool1467, label %if.end1480, label %do_no.preheader

cond.true1473:                                    ; preds = %land.lhs.true1459
  %call1474 = call i32 @Perl_ibcmp(i8* %add.ptr1380, i8* %locinput.0, i32 %sub) #6
  %tobool1475 = icmp eq i32 %call1474, 0
  br i1 %tobool1475, label %if.end1480, label %do_no.preheader

cond.false1476:                                   ; preds = %land.lhs.true1459
  %call1477 = call i32 @Perl_ibcmp_locale(i8* %add.ptr1380, i8* %locinput.0, i32 %sub) #6
  %tobool1478 = icmp eq i32 %call1477, 0
  br i1 %tobool1478, label %if.end1480, label %do_no.preheader

if.end1480:                                       ; preds = %cond.true1464, %cond.true1473, %cond.false1476, %if.end1456
  %270 = load i8* %add.ptr1452, align 1, !tbaa !1
  %conv1483 = zext i8 %270 to i32
  br label %while.cond

sw.bb1485:                                        ; preds = %while.body
  %271 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %272 = load %struct.op** @PL_op, align 8, !tbaa !3
  %273 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %274 = load %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %arg11486 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %275 = bitcast %struct.regnode* %arg11486 to i32*
  %276 = load i32* %275, align 4, !tbaa !0
  %idxprom1487 = sext i32 %276 to i64
  %277 = load %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  %arrayidx1488 = getelementptr inbounds %struct.reg_data* %277, i64 0, i32 2, i64 %idxprom1487
  %278 = load i8** %arrayidx1488, align 8, !tbaa !3
  %279 = bitcast i8* %278 to %struct.op*
  store %struct.op* %279, %struct.op** @PL_op, align 8, !tbaa !3
  %280 = load %struct.av** @PL_comppad, align 8, !tbaa !3
  %add1489 = add nsw i32 %276, 2
  %idxprom1490 = sext i32 %add1489 to i64
  %arrayidx1492 = getelementptr inbounds %struct.reg_data* %277, i64 0, i32 2, i64 %idxprom1490
  %281 = load i8** %arrayidx1492, align 8, !tbaa !3
  %282 = bitcast i8* %281 to %struct.av*
  store %struct.av* %282, %struct.av** @PL_comppad, align 8, !tbaa !3
  %tobool1493 = icmp eq i8* %281, null
  br i1 %tobool1493, label %cond.end1497, label %cond.true1494

cond.true1494:                                    ; preds = %sw.bb1485
  %sv_any1495 = bitcast i8* %281 to %struct.xpvav**
  %283 = load %struct.xpvav** %sv_any1495, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %283, i64 0, i32 0
  %284 = load i8** %xav_array, align 8, !tbaa !3
  %285 = bitcast i8* %284 to %struct.sv**
  br label %cond.end1497

cond.end1497:                                     ; preds = %sw.bb1485, %cond.true1494
  %cond1498 = phi %struct.sv** [ %285, %cond.true1494 ], [ null, %sw.bb1485 ]
  store %struct.sv** %cond1498, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %286 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast1499 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.rhs.cast1500 = ptrtoint i8* %286 to i64
  %sub.ptr.sub1501 = sub i64 %sub.ptr.lhs.cast1499, %sub.ptr.rhs.cast1500
  %conv1502 = trunc i64 %sub.ptr.sub1501 to i32
  %287 = load %struct.magic** @PL_reg_magic, align 8, !tbaa !3
  %mg_len = getelementptr inbounds %struct.magic* %287, i64 0, i32 7
  store i32 %conv1502, i32* %mg_len, align 4, !tbaa !0
  %288 = load i32** @PL_regendp, align 8, !tbaa !3
  store i32 %conv1502, i32* %288, align 4, !tbaa !0
  %289 = load i32 ()** @PL_runops, align 8, !tbaa !3
  %call1504 = call i32 %289() #6
  %290 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %cmp1505 = icmp eq %struct.sv** %290, %271
  br i1 %cmp1505, label %if.end1510, label %if.else1508

if.else1508:                                      ; preds = %cond.end1497
  %incdec.ptr1509 = getelementptr inbounds %struct.sv** %290, i64 -1
  %291 = load %struct.sv** %290, align 8, !tbaa !3
  store %struct.sv** %incdec.ptr1509, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %if.end1510

if.end1510:                                       ; preds = %cond.end1497, %if.else1508
  %ret.0 = phi %struct.sv* [ %291, %if.else1508 ], [ @PL_sv_undef, %cond.end1497 ]
  store %struct.op* %272, %struct.op** @PL_op, align 8, !tbaa !3
  store %struct.av* %280, %struct.av** @PL_comppad, align 8, !tbaa !3
  %tobool1511 = icmp eq %struct.av* %280, null
  br i1 %tobool1511, label %cond.end1516, label %cond.true1512

cond.true1512:                                    ; preds = %if.end1510
  %sv_any1513 = getelementptr inbounds %struct.av* %280, i64 0, i32 0
  %292 = load %struct.xpvav** %sv_any1513, align 8, !tbaa !3
  %xav_array1514 = getelementptr inbounds %struct.xpvav* %292, i64 0, i32 0
  %293 = load i8** %xav_array1514, align 8, !tbaa !3
  %294 = bitcast i8* %293 to %struct.sv**
  br label %cond.end1516

cond.end1516:                                     ; preds = %if.end1510, %cond.true1512
  %cond1517 = phi %struct.sv** [ %294, %cond.true1512 ], [ null, %if.end1510 ]
  store %struct.sv** %cond1517, %struct.sv*** @PL_curpad, align 8, !tbaa !3
  store volatile %struct.cop* %273, %struct.cop** @PL_curcop, align 8, !tbaa !3
  switch i32 %logical.0, label %if.end1635 [
    i32 0, label %if.else1691
    i32 2, label %if.then1522
  ]

if.then1522:                                      ; preds = %cond.end1516
  call void @llvm.lifetime.start(i64 40, i8* %3) #4
  %sv_flags = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 2
  %295 = load i32* %sv_flags, align 4, !tbaa !0
  %and1523 = and i32 %295, 524288
  %tobool1524 = icmp eq i32 %and1523, 0
  br i1 %tobool1524, label %if.else1532, label %land.lhs.true1525

land.lhs.true1525:                                ; preds = %if.then1522
  %sv_any1526 = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 0
  %296 = load i8** %sv_any1526, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %296 to %struct.sv**
  %297 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags1527 = getelementptr inbounds %struct.sv* %297, i64 0, i32 2
  %298 = load i32* %sv_flags1527, align 4, !tbaa !0
  %and1528 = and i32 %298, 16384
  %tobool1529 = icmp eq i32 %and1528, 0
  br i1 %tobool1529, label %if.else1532, label %if.then1530

if.then1530:                                      ; preds = %land.lhs.true1525
  %call1531 = call %struct.magic* @Perl_mg_find(%struct.sv* %297, i32 114) #6
  br label %if.end1546

if.else1532:                                      ; preds = %land.lhs.true1525, %if.then1522
  %and1534 = and i32 %295, 16384
  %tobool1535 = icmp eq i32 %and1534, 0
  br i1 %tobool1535, label %if.else1554, label %if.then1536

if.then1536:                                      ; preds = %if.else1532
  %and1538 = and i32 %295, 8192
  %tobool1539 = icmp eq i32 %and1538, 0
  br i1 %tobool1539, label %if.else1542, label %if.then1540

if.then1540:                                      ; preds = %if.then1536
  %call1541 = call i32 @Perl_sv_unmagic(%struct.sv* %ret.0, i32 114) #6
  br label %if.else1554

if.else1542:                                      ; preds = %if.then1536
  %call1543 = call %struct.magic* @Perl_mg_find(%struct.sv* %ret.0, i32 114) #6
  br label %if.end1546

if.end1546:                                       ; preds = %if.else1542, %if.then1530
  %mg.0 = phi %struct.magic* [ %call1531, %if.then1530 ], [ %call1543, %if.else1542 ]
  %tobool1547 = icmp eq %struct.magic* %mg.0, null
  br i1 %tobool1547, label %if.else1554, label %if.then1548

if.then1548:                                      ; preds = %if.end1546
  %mg_obj = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 5
  %299 = load %struct.sv** %mg_obj, align 8, !tbaa !3
  %300 = bitcast %struct.sv* %299 to %struct.regexp*
  %tobool1549 = icmp eq %struct.sv* %299, null
  br i1 %tobool1549, label %if.end1593, label %land.rhs1550

land.rhs1550:                                     ; preds = %if.then1548
  %refcnt = getelementptr inbounds %struct.regexp* %300, i64 0, i32 9
  %301 = load i32* %refcnt, align 4, !tbaa !0
  %inc = add nsw i32 %301, 1
  store i32 %inc, i32* %refcnt, align 4, !tbaa !0
  br label %if.end1593

if.else1554:                                      ; preds = %if.end1546, %if.else1532, %if.then1540
  %302 = load i32* %sv_flags, align 4, !tbaa !0
  %and1556 = and i32 %302, 262144
  %cmp1557 = icmp eq i32 %and1556, 0
  br i1 %cmp1557, label %cond.false1563, label %cond.true1559

cond.true1559:                                    ; preds = %if.else1554
  %sv_any1560 = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 0
  %303 = load i8** %sv_any1560, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %303, i64 8
  %304 = bitcast i8* %xpv_cur to i64*
  %305 = load i64* %304, align 8, !tbaa !4
  store i64 %305, i64* %len, align 8, !tbaa !4
  %xpv_pv1562 = bitcast i8* %303 to i8**
  %306 = load i8** %xpv_pv1562, align 8, !tbaa !3
  br label %cond.end1565

cond.false1563:                                   ; preds = %if.else1554
  %call1564 = call i8* @Perl_sv_2pv_flags(%struct.sv* %ret.0, i64* %len, i32 2) #6
  br label %cond.end1565

cond.end1565:                                     ; preds = %cond.false1563, %cond.true1559
  %cond1566 = phi i8* [ %306, %cond.true1559 ], [ %call1564, %cond.false1563 ]
  call void @llvm.lifetime.start(i64 112, i8* %4) #4
  %307 = load i8** @PL_regprecomp, align 8, !tbaa !3
  %308 = load i32* @PL_regsize, align 4, !tbaa !0
  %309 = load i32* @PL_regnpar, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 112, i32 8, i1 false)
  %310 = load i32* %sv_flags, align 4, !tbaa !0
  %and1568 = and i32 %310, 536870912
  %tobool1569 = icmp eq i32 %and1568, 0
  br i1 %tobool1569, label %if.end1578, label %land.lhs.true1570

land.lhs.true1570:                                ; preds = %cond.end1565
  %311 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.cop* %311, i64 0, i32 7
  %312 = load i8* %op_private, align 1, !tbaa !1
  %and1572 = and i8 %312, 8
  %tobool1573 = icmp eq i8 %and1572, 0
  br i1 %tobool1573, label %if.then1574, label %if.end1578

if.then1574:                                      ; preds = %land.lhs.true1570
  %313 = load i8* %op_pmdynflags, align 8, !tbaa !1
  %or1576 = or i8 %313, 8
  store i8 %or1576, i8* %op_pmdynflags, align 8, !tbaa !1
  br label %if.end1578

if.end1578:                                       ; preds = %land.lhs.true1570, %cond.end1565, %if.then1574
  %314 = load %struct.regexp* (i8*, i8*, %struct.pmop*)** @PL_regcompp, align 8, !tbaa !3
  %315 = load i64* %len, align 8, !tbaa !4
  %add.ptr1579 = getelementptr inbounds i8* %cond1566, i64 %315
  %call1580 = call %struct.regexp* %314(i8* %cond1566, i8* %add.ptr1579, %struct.pmop* %pm) #6
  %316 = load i32* %sv_flags, align 4, !tbaa !0
  %and1582 = and i32 %316, 8399360
  %tobool1583 = icmp eq i32 %and1582, 0
  br i1 %tobool1583, label %if.then1584, label %if.end1592

if.then1584:                                      ; preds = %if.end1578
  %tobool1585 = icmp eq %struct.regexp* %call1580, null
  br i1 %tobool1585, label %land.end1590, label %land.rhs1586

land.rhs1586:                                     ; preds = %if.then1584
  %refcnt1587 = getelementptr inbounds %struct.regexp* %call1580, i64 0, i32 9
  %317 = load i32* %refcnt1587, align 4, !tbaa !0
  %inc1588 = add nsw i32 %317, 1
  store i32 %inc1588, i32* %refcnt1587, align 4, !tbaa !0
  br label %land.end1590

land.end1590:                                     ; preds = %if.then1584, %land.rhs1586
  %318 = bitcast %struct.regexp* %call1580 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %ret.0, %struct.sv* %318, i32 114, i8* null, i32 0) #6
  br label %if.end1592

if.end1592:                                       ; preds = %if.end1578, %land.end1590
  store i8* %307, i8** @PL_regprecomp, align 8, !tbaa !3
  store i32 %308, i32* @PL_regsize, align 4, !tbaa !0
  store i32 %309, i32* @PL_regnpar, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 112, i8* %4) #4
  br label %if.end1593

if.end1593:                                       ; preds = %land.rhs1550, %if.then1548, %if.end1592
  %re.0 = phi %struct.regexp* [ %call1580, %if.end1592 ], [ %300, %if.then1548 ], [ %300, %land.rhs1550 ]
  store %struct.regnode* %.add.ptr, %struct.regnode** %node, align 8, !tbaa !3
  %319 = load %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  store %struct.re_cc_state* %319, %struct.re_cc_state** %prev, align 8, !tbaa !3
  %320 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  store %struct.curcur* %320, %struct.curcur** %cc, align 8, !tbaa !3
  %321 = load %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  store %struct.regexp* %321, %struct.regexp** %re1594, align 8, !tbaa !3
  store %struct.curcur* null, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %call1595 = call fastcc i32 @S_regcppush(i32 0) #5
  %322 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %precomp.i = getelementptr inbounds %struct.regexp* %re.0, i64 0, i32 4
  %323 = load i8** %precomp.i, align 8, !tbaa !3
  store i8* %323, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i = getelementptr inbounds %struct.regexp* %re.0, i64 0, i32 12
  %324 = load i32* %nparens.i, align 4, !tbaa !0
  store i32 %324, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i = getelementptr inbounds %struct.regexp* %re.0, i64 0, i32 5
  %325 = load %struct.reg_data** %data.i, align 8, !tbaa !3
  store %struct.reg_data* %325, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %re.0, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  store i32 %322, i32* %ss, align 8, !tbaa !0
  %326 = load i32** @PL_reglastparen, align 8, !tbaa !3
  store i32 0, i32* %326, align 4, !tbaa !0
  %327 = load i32** @PL_reglastcloseparen, align 8, !tbaa !3
  store i32 0, i32* %327, align 4, !tbaa !0
  store %struct.re_cc_state* %state, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  %328 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and1596 = lshr i32 %328, 3
  %reganch = getelementptr inbounds %struct.regexp* %re.0, i64 0, i32 15
  %329 = load i32* %reganch, align 4, !tbaa !0
  %and1599 = lshr i32 %329, 16
  %and1596.lobit5432 = xor i32 %and1599, %and1596
  %xor = and i32 %and1596.lobit5432, 1
  %tobool1602 = icmp ne i32 %xor, 0
  br i1 %tobool1602, label %if.then1603, label %if.end1605

if.then1603:                                      ; preds = %if.end1593
  %xor1604 = xor i32 %328, 8
  store i32 %xor1604, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %if.end1605

if.end1605:                                       ; preds = %if.then1603, %if.end1593
  store i32 0, i32* @PL_reg_maxiter, align 4, !tbaa !0
  %add.ptr1607 = getelementptr inbounds %struct.regexp* %re.0, i64 0, i32 16, i64 1
  %call1608 = call fastcc i32 @S_regmatch(%struct.regnode* %add.ptr1607) #5
  %tobool1609 = icmp eq i32 %call1608, 0
  br i1 %tobool1609, label %if.end1622, label %if.then1610

if.then1610:                                      ; preds = %if.end1605
  %330 = load %struct.re_cc_state** %prev, align 8, !tbaa !3
  store %struct.re_cc_state* %330, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %331 = load %struct.curcur** %cc, align 8, !tbaa !3
  store %struct.curcur* %331, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %332 = load %struct.regexp** %re1594, align 8, !tbaa !3
  store %struct.regexp* %332, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %precomp.i5516 = getelementptr inbounds %struct.regexp* %332, i64 0, i32 4
  %333 = load i8** %precomp.i5516, align 8, !tbaa !3
  store i8* %333, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i5517 = getelementptr inbounds %struct.regexp* %332, i64 0, i32 12
  %334 = load i32* %nparens.i5517, align 4, !tbaa !0
  store i32 %334, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i5518 = getelementptr inbounds %struct.regexp* %332, i64 0, i32 5
  %335 = load %struct.reg_data** %data.i5518, align 8, !tbaa !3
  store %struct.reg_data* %335, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %332, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  br i1 %tobool1602, label %if.then1615, label %if.end1617

if.then1615:                                      ; preds = %if.then1610
  %336 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %xor1616 = xor i32 %336, 8
  store i32 %xor1616, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %if.end1617

if.end1617:                                       ; preds = %if.then1615, %if.then1610
  store i32 0, i32* @PL_reg_maxiter, align 4, !tbaa !0
  %337 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !3
  call void %337(%struct.regexp* %re.0) #6
  %338 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp1618 = icmp sgt i32 %338, %call1595
  br i1 %cmp1618, label %if.then1620, label %return

if.then1620:                                      ; preds = %if.end1617
  call void @Perl_leave_scope(i32 %call1595) #6
  br label %return

if.end1622:                                       ; preds = %if.end1605
  %339 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !3
  call void %339(%struct.regexp* %re.0) #6
  %340 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp1623 = icmp sgt i32 %340, %322
  br i1 %cmp1623, label %if.then1625, label %if.end1626

if.then1625:                                      ; preds = %if.end1622
  call void @Perl_leave_scope(i32 %322) #6
  br label %if.end1626

if.end1626:                                       ; preds = %if.then1625, %if.end1622
  call fastcc void @S_regcppop() #5
  %341 = load %struct.re_cc_state** %prev, align 8, !tbaa !3
  store %struct.re_cc_state* %341, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %342 = load %struct.curcur** %cc, align 8, !tbaa !3
  store %struct.curcur* %342, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %343 = load %struct.regexp** %re1594, align 8, !tbaa !3
  store %struct.regexp* %343, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %precomp.i5519 = getelementptr inbounds %struct.regexp* %343, i64 0, i32 4
  %344 = load i8** %precomp.i5519, align 8, !tbaa !3
  store i8* %344, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i5520 = getelementptr inbounds %struct.regexp* %343, i64 0, i32 12
  %345 = load i32* %nparens.i5520, align 4, !tbaa !0
  store i32 %345, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i5521 = getelementptr inbounds %struct.regexp* %343, i64 0, i32 5
  %346 = load %struct.reg_data** %data.i5521, align 8, !tbaa !3
  store %struct.reg_data* %346, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %343, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  br i1 %tobool1602, label %if.then1632, label %cleanup

if.then1632:                                      ; preds = %if.end1626
  %347 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %xor1633 = xor i32 %347, 8
  store i32 %xor1633, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.end1626, %if.then1632
  store i32 0, i32* @PL_reg_maxiter, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 40, i8* %3) #4
  br label %do_no.preheader

if.end1635:                                       ; preds = %cond.end1516
  %tobool1636 = icmp eq %struct.sv* %ret.0, null
  br i1 %tobool1636, label %while.cond, label %cond.false1638

cond.false1638:                                   ; preds = %if.end1635
  %sv_flags1639 = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 2
  %348 = load i32* %sv_flags1639, align 4, !tbaa !0
  %and1640 = and i32 %348, 262144
  %tobool1641 = icmp eq i32 %and1640, 0
  br i1 %tobool1641, label %cond.false1664, label %cond.true1642

cond.true1642:                                    ; preds = %cond.false1638
  %sv_any1643 = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 0
  %349 = load i8** %sv_any1643, align 8, !tbaa !3
  %350 = bitcast i8* %349 to %struct.xpv*
  store %struct.xpv* %350, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool1644 = icmp eq i8* %349, null
  br i1 %tobool1644, label %land.end1661, label %land.rhs1645

land.rhs1645:                                     ; preds = %cond.true1642
  %xpv_cur1646 = getelementptr inbounds i8* %349, i64 8
  %351 = bitcast i8* %xpv_cur1646 to i64*
  %352 = load i64* %351, align 8, !tbaa !4
  %cmp1647 = icmp ugt i64 %352, 1
  br i1 %cmp1647, label %land.end1661, label %lor.rhs1649

lor.rhs1649:                                      ; preds = %land.rhs1645
  %tobool1651 = icmp eq i64 %352, 0
  br i1 %tobool1651, label %land.end1661, label %land.rhs1652

land.rhs1652:                                     ; preds = %lor.rhs1649
  %xpv_pv1653 = bitcast i8* %349 to i8**
  %353 = load i8** %xpv_pv1653, align 8, !tbaa !3
  %354 = load i8* %353, align 1, !tbaa !1
  %cmp1655 = icmp ne i8 %354, 48
  br label %land.end1661

land.end1661:                                     ; preds = %lor.rhs1649, %cond.true1642, %land.rhs1645, %land.rhs1652
  %355 = phi i1 [ false, %cond.true1642 ], [ true, %land.rhs1645 ], [ false, %lor.rhs1649 ], [ %cmp1655, %land.rhs1652 ]
  %cond1663 = zext i1 %355 to i32
  br label %while.cond

cond.false1664:                                   ; preds = %cond.false1638
  %and1666 = and i32 %348, 65536
  %tobool1667 = icmp eq i32 %and1666, 0
  br i1 %tobool1667, label %cond.false1672, label %cond.true1668

cond.true1668:                                    ; preds = %cond.false1664
  %sv_any1669 = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 0
  %356 = load i8** %sv_any1669, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %356, i64 24
  %357 = bitcast i8* %xiv_iv to i64*
  %358 = load i64* %357, align 8, !tbaa !4
  %cmp1670 = icmp ne i64 %358, 0
  %conv1671 = zext i1 %cmp1670 to i32
  br label %while.cond

cond.false1672:                                   ; preds = %cond.false1664
  %and1674 = and i32 %348, 131072
  %tobool1675 = icmp eq i32 %and1674, 0
  br i1 %tobool1675, label %cond.false1680, label %cond.true1676

cond.true1676:                                    ; preds = %cond.false1672
  %sv_any1677 = getelementptr inbounds %struct.sv* %ret.0, i64 0, i32 0
  %359 = load i8** %sv_any1677, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %359, i64 32
  %360 = bitcast i8* %xnv_nv to double*
  %361 = load double* %360, align 8, !tbaa !6
  %cmp1678 = fcmp une double %361, 0.000000e+00
  %conv1679 = zext i1 %cmp1678 to i32
  br label %while.cond

cond.false1680:                                   ; preds = %cond.false1672
  %call1681 = call signext i8 @Perl_sv_2bool(%struct.sv* %ret.0) #6
  %conv1682 = sext i8 %call1681 to i32
  br label %while.cond

if.else1691:                                      ; preds = %cond.end1516
  %362 = load %struct.gv** @PL_replgv, align 8, !tbaa !3
  %call1692 = call %struct.sv* @Perl_save_scalar(%struct.gv* %362) #6
  call void @Perl_sv_setsv_flags(%struct.sv* %call1692, %struct.sv* %ret.0, i32 2) #6
  %precomp.i5522 = getelementptr inbounds %struct.regexp* %274, i64 0, i32 4
  %363 = load i8** %precomp.i5522, align 8, !tbaa !3
  store i8* %363, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i5523 = getelementptr inbounds %struct.regexp* %274, i64 0, i32 12
  %364 = load i32* %nparens.i5523, align 4, !tbaa !0
  store i32 %364, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i5524 = getelementptr inbounds %struct.regexp* %274, i64 0, i32 5
  %365 = load %struct.reg_data** %data.i5524, align 8, !tbaa !3
  store %struct.reg_data* %365, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %274, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  br label %while.cond

sw.bb1694:                                        ; preds = %while.body
  %arg11695 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %366 = bitcast %struct.regnode* %arg11695 to i32*
  %367 = load i32* %366, align 4, !tbaa !0
  %idxprom1696 = sext i32 %367 to i64
  %368 = load i8*** @PL_reg_start_tmp, align 8, !tbaa !3
  %arrayidx1697 = getelementptr inbounds i8** %368, i64 %idxprom1696
  store i8* %locinput.0, i8** %arrayidx1697, align 8, !tbaa !3
  %369 = load i32* @PL_regsize, align 4, !tbaa !0
  %cmp1698 = icmp sgt i32 %367, %369
  br i1 %cmp1698, label %if.then1700, label %while.cond

if.then1700:                                      ; preds = %sw.bb1694
  store i32 %367, i32* @PL_regsize, align 4, !tbaa !0
  br label %while.cond

sw.bb1702:                                        ; preds = %while.body
  %arg11703 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %370 = bitcast %struct.regnode* %arg11703 to i32*
  %371 = load i32* %370, align 4, !tbaa !0
  %idxprom1704 = sext i32 %371 to i64
  %372 = load i8*** @PL_reg_start_tmp, align 8, !tbaa !3
  %arrayidx1705 = getelementptr inbounds i8** %372, i64 %idxprom1704
  %373 = load i8** %arrayidx1705, align 8, !tbaa !3
  %374 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast1706 = ptrtoint i8* %373 to i64
  %sub.ptr.rhs.cast1707 = ptrtoint i8* %374 to i64
  %sub.ptr.sub1708 = sub i64 %sub.ptr.lhs.cast1706, %sub.ptr.rhs.cast1707
  %conv1709 = trunc i64 %sub.ptr.sub1708 to i32
  %375 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx1711 = getelementptr inbounds i32* %375, i64 %idxprom1704
  store i32 %conv1709, i32* %arrayidx1711, align 4, !tbaa !0
  %sub.ptr.lhs.cast1712 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.sub1714 = sub i64 %sub.ptr.lhs.cast1712, %sub.ptr.rhs.cast1707
  %conv1715 = trunc i64 %sub.ptr.sub1714 to i32
  %376 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx1717 = getelementptr inbounds i32* %376, i64 %idxprom1704
  store i32 %conv1715, i32* %arrayidx1717, align 4, !tbaa !0
  %377 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %378 = load i32* %377, align 4, !tbaa !0
  %cmp1718 = icmp sgt i32 %371, %378
  br i1 %cmp1718, label %if.then1720, label %if.end1721

if.then1720:                                      ; preds = %sw.bb1702
  store i32 %371, i32* %377, align 4, !tbaa !0
  br label %if.end1721

if.end1721:                                       ; preds = %sw.bb1702, %if.then1720
  %379 = load i32** @PL_reglastcloseparen, align 8, !tbaa !3
  store i32 %371, i32* %379, align 4, !tbaa !0
  br label %while.cond

sw.bb1722:                                        ; preds = %while.body
  %arg11723 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %380 = bitcast %struct.regnode* %arg11723 to i32*
  %381 = load i32* %380, align 4, !tbaa !0
  %382 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %383 = load i32* %382, align 4, !tbaa !0
  %cmp1724 = icmp slt i32 %383, %381
  br i1 %cmp1724, label %land.end1731, label %land.rhs1726

land.rhs1726:                                     ; preds = %sw.bb1722
  %idxprom1727 = sext i32 %381 to i64
  %384 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx1728 = getelementptr inbounds i32* %384, i64 %idxprom1727
  %385 = load i32* %arrayidx1728, align 4, !tbaa !0
  %cmp1729 = icmp ne i32 %385, -1
  br label %land.end1731

land.end1731:                                     ; preds = %sw.bb1722, %land.rhs1726
  %386 = phi i1 [ false, %sw.bb1722 ], [ %cmp1729, %land.rhs1726 ]
  %land.ext1732 = zext i1 %386 to i32
  br label %while.cond

sw.bb1733:                                        ; preds = %while.body
  %387 = load i32* @PL_reg_maxiter, align 4, !tbaa !0
  store i32 %387, i32* @PL_reg_leftiter, align 4, !tbaa !0
  %tobool1734 = icmp eq i32 %sw.0, 0
  br i1 %tobool1734, label %if.else1738, label %if.then1735

if.then1735:                                      ; preds = %sw.bb1733
  %add.ptr1737 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  br label %while.cond

if.else1738:                                      ; preds = %sw.bb1733
  %arg11739 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %388 = bitcast %struct.regnode* %arg11739 to i32*
  %389 = load i32* %388, align 4, !tbaa !0
  %idx.ext1740 = zext i32 %389 to i64
  %add.ptr1741 = getelementptr inbounds %struct.regnode* %scan.0, i64 %idx.ext1740
  %type1742 = getelementptr inbounds %struct.regnode* %scan.0, i64 %idx.ext1740, i32 1
  %390 = load i8* %type1742, align 1, !tbaa !1
  %cmp1744 = icmp eq i8 %390, 53
  br i1 %cmp1744, label %if.then1746, label %while.cond

if.then1746:                                      ; preds = %if.else1738
  %add.ptr1747.sum = add i64 %idx.ext1740, 2
  %add.ptr1748 = getelementptr inbounds %struct.regnode* %scan.0, i64 %add.ptr1747.sum
  br label %while.cond

sw.bb1751:                                        ; preds = %while.body
  %flags1752 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %391 = load i8* %flags1752, align 1, !tbaa !1
  %conv1753 = zext i8 %391 to i32
  br label %while.cond

sw.bb1754:                                        ; preds = %while.body
  call void @llvm.lifetime.start(i64 56, i8* %5) #4
  %392 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %flags1757 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %393 = load i8* %flags1757, align 1, !tbaa !1
  %conv1758 = zext i8 %393 to i32
  %type1760 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 -1, i32 1
  %394 = load i8* %type1760, align 1, !tbaa !1
  %cmp1762 = icmp eq i8 %394, 36
  br i1 %cmp1762, label %if.then1764, label %if.end1768

if.then1764:                                      ; preds = %sw.bb1754
  %arg11765 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 1
  %395 = bitcast %struct.regnode* %arg11765 to i32*
  %396 = load i32* %395, align 4, !tbaa !0
  %idx.ext1766 = zext i32 %396 to i64
  %add.ptr1767 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 %idx.ext1766
  br label %if.end1768

if.end1768:                                       ; preds = %sw.bb1754, %if.then1764
  %next.0 = phi %struct.regnode* [ %add.ptr1767, %if.then1764 ], [ %.add.ptr, %sw.bb1754 ]
  %397 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  store %struct.curcur* %397, %struct.curcur** %oldcc, align 8, !tbaa !3
  store %struct.curcur* %cc1755, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %398 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %399 = load i32* %398, align 4, !tbaa !0
  %cmp1769 = icmp sgt i32 %conv1758, %399
  %.conv1758 = select i1 %cmp1769, i32 %399, i32 %conv1758
  store i32 %.conv1758, i32* %parenfloor1773, align 8, !tbaa !0
  store i32 -1, i32* %cur, align 4, !tbaa !0
  %arg11774 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %400 = bitcast %struct.regnode* %arg11774 to i16*
  %401 = load i16* %400, align 2, !tbaa !5
  %conv1775 = zext i16 %401 to i32
  store i32 %conv1775, i32* %min, align 8, !tbaa !0
  %402 = getelementptr inbounds %struct.regnode* %scan.0, i64 1, i32 2
  %403 = load i16* %402, align 2, !tbaa !5
  %conv1776 = zext i16 %403 to i32
  store i32 %conv1776, i32* %max, align 4, !tbaa !0
  %add.ptr1778 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  store %struct.regnode* %add.ptr1778, %struct.regnode** %scan1779, align 8, !tbaa !3
  store %struct.regnode* %next.0, %struct.regnode** %next1780, align 8, !tbaa !3
  store i32 %minmod.0, i32* %minmod1781, align 8, !tbaa !0
  store i8* null, i8** %lastloc, align 8, !tbaa !3
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  %add.ptr1782 = getelementptr inbounds %struct.regnode* %next.0, i64 -1
  %call1783 = call fastcc i32 @S_regmatch(%struct.regnode* %add.ptr1782) #5
  %404 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp1784 = icmp sgt i32 %404, %392
  br i1 %cmp1784, label %if.then1786, label %if.end1787

if.then1786:                                      ; preds = %if.end1768
  call void @Perl_leave_scope(i32 %392) #6
  br label %if.end1787

if.end1787:                                       ; preds = %if.then1786, %if.end1768
  %405 = load %struct.curcur** %oldcc, align 8, !tbaa !3
  store %struct.curcur* %405, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool1789 = icmp eq i32 %call1783, 0
  call void @llvm.lifetime.end(i64 56, i8* %5) #4
  br i1 %tobool1789, label %do_no.preheader, label %return

sw.bb1794:                                        ; preds = %while.body
  %406 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %lastloc1799 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 7
  %407 = load i8** %lastloc1799, align 8, !tbaa !3
  %cur1800 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 1
  %408 = load i32* %cur1800, align 4, !tbaa !0
  %add1801 = add nsw i32 %408, 1
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  %409 = load i8** %lastloc1799, align 8, !tbaa !3
  %cmp1803 = icmp ne i8* %locinput.0, %409
  %min1806 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 2
  %410 = load i32* %min1806, align 4, !tbaa !0
  %cmp1807 = icmp slt i32 %add1801, %410
  %or.cond5767 = or i1 %cmp1803, %cmp1807
  br i1 %or.cond5767, label %if.end1824, label %if.then1809

if.then1809:                                      ; preds = %sw.bb1794
  %oldcc1810 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 8
  %411 = load %struct.curcur** %oldcc1810, align 8, !tbaa !3
  store %struct.curcur* %411, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool1811 = icmp eq %struct.curcur* %411, null
  br i1 %tobool1811, label %if.end1814, label %if.then1812

if.then1812:                                      ; preds = %if.then1809
  %cur1813 = getelementptr inbounds %struct.curcur* %411, i64 0, i32 1
  %412 = load i32* %cur1813, align 4, !tbaa !0
  br label %if.end1814

if.end1814:                                       ; preds = %if.then1809, %if.then1812
  %ln.3 = phi i32 [ %412, %if.then1812 ], [ %ln.0, %if.then1809 ]
  %next1815 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 6
  %413 = load %struct.regnode** %next1815, align 8, !tbaa !3
  %call1816 = call fastcc i32 @S_regmatch(%struct.regnode* %413) #5
  %tobool1817 = icmp eq i32 %call1816, 0
  br i1 %tobool1817, label %if.end1819, label %return

if.end1819:                                       ; preds = %if.end1814
  %414 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool1820 = icmp eq %struct.curcur* %414, null
  br i1 %tobool1820, label %if.end1823, label %if.then1821

if.then1821:                                      ; preds = %if.end1819
  %cur1822 = getelementptr inbounds %struct.curcur* %414, i64 0, i32 1
  store i32 %ln.3, i32* %cur1822, align 4, !tbaa !0
  br label %if.end1823

if.end1823:                                       ; preds = %if.end1819, %if.then1821
  store %struct.curcur* %406, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  br label %do_no.preheader

if.end1824:                                       ; preds = %sw.bb1794
  %cmp1826 = icmp slt i32 %add1801, %410
  br i1 %cmp1826, label %if.then1828, label %if.end1839

if.then1828:                                      ; preds = %if.end1824
  store i32 %add1801, i32* %cur1800, align 4, !tbaa !0
  store i8* %locinput.0, i8** %lastloc1799, align 8, !tbaa !3
  %scan1831 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 5
  %415 = load %struct.regnode** %scan1831, align 8, !tbaa !3
  %call1832 = call fastcc i32 @S_regmatch(%struct.regnode* %415) #5
  %tobool1833 = icmp eq i32 %call1832, 0
  br i1 %tobool1833, label %if.end1835, label %return

if.end1835:                                       ; preds = %if.then1828
  store i32 %408, i32* %cur1800, align 4, !tbaa !0
  store i8* %407, i8** %lastloc1799, align 8, !tbaa !3
  br label %do_no.preheader

if.end1839:                                       ; preds = %if.end1824
  %flags1840 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %416 = load i8* %flags1840, align 1, !tbaa !1
  %tobool1841 = icmp eq i8 %416, 0
  br i1 %tobool1841, label %if.end1921, label %if.then1842

if.then1842:                                      ; preds = %if.end1839
  %417 = load i32* @PL_reg_maxiter, align 4, !tbaa !0
  %tobool1843 = icmp eq i32 %417, 0
  br i1 %tobool1843, label %if.then1844, label %if.end1854thread-pre-split

if.then1844:                                      ; preds = %if.then1842
  %418 = load i8** @PL_regeol, align 8, !tbaa !3
  %419 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast1845 = ptrtoint i8* %418 to i64
  %sub.ptr.rhs.cast1846 = ptrtoint i8* %419 to i64
  %sub.ptr.sub1847 = add i64 %sub.ptr.lhs.cast1845, 1
  %add1848 = sub i64 %sub.ptr.sub1847, %sub.ptr.rhs.cast1846
  %conv1850 = zext i8 %416 to i64
  %shr18515428 = lshr i64 %conv1850, 4
  %mul = mul nsw i64 %add1848, %shr18515428
  %conv1853 = trunc i64 %mul to i32
  store i32 %conv1853, i32* @PL_reg_maxiter, align 4, !tbaa !0
  store i32 %conv1853, i32* @PL_reg_leftiter, align 4, !tbaa !0
  br label %if.end1854

if.end1854thread-pre-split:                       ; preds = %if.then1842
  %.pr = load i32* @PL_reg_leftiter, align 4, !tbaa !0
  br label %if.end1854

if.end1854:                                       ; preds = %if.end1854thread-pre-split, %if.then1844
  %420 = phi i32 [ %417, %if.end1854thread-pre-split ], [ %conv1853, %if.then1844 ]
  %421 = phi i32 [ %.pr, %if.end1854thread-pre-split ], [ %conv1853, %if.then1844 ]
  %dec = add nsw i32 %421, -1
  store i32 %dec, i32* @PL_reg_leftiter, align 4, !tbaa !0
  %cmp1855 = icmp eq i32 %421, 0
  br i1 %cmp1855, label %if.then1857, label %if.end1881

if.then1857:                                      ; preds = %if.end1854
  %add1859 = add nsw i32 %420, 9
  %div = sdiv i32 %add1859, 8
  %422 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %tobool1860 = icmp eq i8* %422, null
  br i1 %tobool1860, label %if.else1873, label %if.then1861

if.then1861:                                      ; preds = %if.then1857
  %423 = load i64* @PL_reg_poscache_size, align 8, !tbaa !4
  %conv1862 = trunc i64 %423 to i32
  %cmp1863 = icmp slt i32 %conv1862, %div
  %conv1866 = sext i32 %div to i64
  br i1 %cmp1863, label %if.then1865, label %if.end1870

if.then1865:                                      ; preds = %if.then1861
  %call1868 = call i8* @Perl_safesysrealloc(i8* %422, i64 %conv1866) #6
  store i8* %call1868, i8** @PL_reg_poscache, align 8, !tbaa !3
  store i64 %conv1866, i64* @PL_reg_poscache_size, align 8, !tbaa !4
  br label %if.end1870

if.end1870:                                       ; preds = %if.then1861, %if.then1865
  %424 = phi i8* [ %call1868, %if.then1865 ], [ %422, %if.then1861 ]
  call void @llvm.memset.p0i8.i64(i8* %424, i8 0, i64 %conv1866, i32 1, i1 false)
  br label %if.end1881thread-pre-split

if.else1873:                                      ; preds = %if.then1857
  %conv1874 = sext i32 %div to i64
  store i64 %conv1874, i64* @PL_reg_poscache_size, align 8, !tbaa !4
  %call1877 = call i8* @Perl_safesysmalloc(i64 %conv1874) #6
  store i8* %call1877, i8** @PL_reg_poscache, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %call1877, i8 0, i64 %conv1874, i32 1, i1 false)
  br label %if.end1881thread-pre-split

if.end1881thread-pre-split:                       ; preds = %if.else1873, %if.end1870
  %.pr5545 = load i32* @PL_reg_leftiter, align 4, !tbaa !0
  br label %if.end1881

if.end1881:                                       ; preds = %if.end1881thread-pre-split, %if.end1854
  %425 = phi i32 [ %.pr5545, %if.end1881thread-pre-split ], [ %dec, %if.end1854 ]
  %cmp1882 = icmp slt i32 %425, 0
  br i1 %cmp1882, label %if.then1884, label %if.end1921

if.then1884:                                      ; preds = %if.end1881
  %426 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast1885 = ptrtoint i8* %locinput.0 to i64
  %sub.ptr.rhs.cast1886 = ptrtoint i8* %426 to i64
  %sub.ptr.sub1887 = sub i64 %sub.ptr.lhs.cast1885, %sub.ptr.rhs.cast1886
  %conv1888 = trunc i64 %sub.ptr.sub1887 to i32
  %427 = load i8* %flags1840, align 1, !tbaa !1
  %conv1890 = zext i8 %427 to i32
  %and1891 = and i32 %conv1890, 15
  %add1893 = add nsw i32 %and1891, 1
  %shr18965430 = lshr i32 %conv1890, 4
  %mul1897 = mul nsw i32 %conv1888, %shr18965430
  %add1898 = add nsw i32 %add1893, %mul1897
  %rem = srem i32 %add1898, 8
  %div1899 = sdiv i32 %add1898, 8
  %idxprom1900 = sext i32 %div1899 to i64
  %428 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %arrayidx1901 = getelementptr inbounds i8* %428, i64 %idxprom1900
  %429 = load i8* %arrayidx1901, align 1, !tbaa !1
  %conv1902 = sext i8 %429 to i32
  %shl1903 = shl i32 1, %rem
  %and1904 = and i32 %conv1902, %shl1903
  %tobool1905 = icmp eq i32 %and1904, 0
  br i1 %tobool1905, label %if.end1913, label %if.then1906

if.then1906:                                      ; preds = %if.then1884
  %430 = load i8* %428, align 1, !tbaa !1
  %and1909 = and i8 %430, 1
  %tobool1910 = icmp eq i8 %and1909, 0
  br i1 %tobool1910, label %do_no.preheader, label %return

if.end1913:                                       ; preds = %if.then1884
  %or1918 = or i32 %conv1902, %shl1903
  %conv1919 = trunc i32 %or1918 to i8
  store i8 %conv1919, i8* %arrayidx1901, align 1, !tbaa !1
  br label %if.end1921

if.end1921:                                       ; preds = %if.end1839, %if.end1881, %if.end1913
  %cache_offset.0 = phi i32 [ %div1899, %if.end1913 ], [ 0, %if.end1881 ], [ 0, %if.end1839 ]
  %cache_bit.0 = phi i32 [ %rem, %if.end1913 ], [ 0, %if.end1881 ], [ 0, %if.end1839 ]
  %minmod1922 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 4
  %431 = load i32* %minmod1922, align 4, !tbaa !0
  %tobool1923 = icmp eq i32 %431, 0
  br i1 %tobool1923, label %if.end2123, label %if.then1924

if.then1924:                                      ; preds = %if.end1921
  %oldcc1925 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 8
  %432 = load %struct.curcur** %oldcc1925, align 8, !tbaa !3
  store %struct.curcur* %432, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool1926 = icmp eq %struct.curcur* %432, null
  br i1 %tobool1926, label %if.end1929, label %if.then1927

if.then1927:                                      ; preds = %if.then1924
  %cur1928 = getelementptr inbounds %struct.curcur* %432, i64 0, i32 1
  %433 = load i32* %cur1928, align 4, !tbaa !0
  br label %if.end1929

if.end1929:                                       ; preds = %if.then1924, %if.then1927
  %ln.4 = phi i32 [ %433, %if.then1927 ], [ %ln.0, %if.then1924 ]
  %parenfloor1930 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 0
  %434 = load i32* %parenfloor1930, align 4, !tbaa !0
  %call1931 = call fastcc i32 @S_regcppush(i32 %434) #5
  %435 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %next1932 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 6
  %436 = load %struct.regnode** %next1932, align 8, !tbaa !3
  %call1933 = call fastcc i32 @S_regmatch(%struct.regnode* %436) #5
  %tobool1934 = icmp eq i32 %call1933, 0
  %437 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br i1 %tobool1934, label %if.end1967, label %if.then1935

if.then1935:                                      ; preds = %if.end1929
  %cmp1936 = icmp sgt i32 %437, %call1931
  br i1 %cmp1936, label %if.then1938, label %if.end1939

if.then1938:                                      ; preds = %if.then1935
  call void @Perl_leave_scope(i32 %call1931) #6
  br label %if.end1939

if.end1939:                                       ; preds = %if.then1938, %if.then1935
  %or1940 = or i32 %cache_bit.0, %cache_offset.0
  %tobool1941 = icmp eq i32 %or1940, 0
  br i1 %tobool1941, label %return, label %if.then1942

if.then1942:                                      ; preds = %if.end1939
  %438 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %439 = load i8* %438, align 1, !tbaa !1
  %conv1944 = sext i8 %439 to i32
  %and1945 = and i32 %conv1944, 2
  %tobool1946 = icmp eq i32 %and1945, 0
  br i1 %tobool1946, label %if.then1947, label %if.else1952

if.then1947:                                      ; preds = %if.then1942
  %or1950 = or i8 %439, 1
  store i8 %or1950, i8* %438, align 1, !tbaa !1
  br label %return

if.else1952:                                      ; preds = %if.then1942
  %and1955 = and i32 %conv1944, 1
  %tobool1956 = icmp eq i32 %and1955, 0
  br i1 %tobool1956, label %if.then1957, label %return

if.then1957:                                      ; preds = %if.else1952
  %shl1958 = shl i32 1, %cache_bit.0
  %neg = xor i32 %shl1958, 255
  %idxprom1959 = sext i32 %cache_offset.0 to i64
  %arrayidx1960 = getelementptr inbounds i8* %438, i64 %idxprom1959
  %440 = load i8* %arrayidx1960, align 1, !tbaa !1
  %conv19615427 = zext i8 %440 to i32
  %and1962 = and i32 %conv19615427, %neg
  %conv1963 = trunc i32 %and1962 to i8
  store i8 %conv1963, i8* %arrayidx1960, align 1, !tbaa !1
  br label %return

if.end1967:                                       ; preds = %if.end1929
  %cmp1968 = icmp sgt i32 %437, %435
  br i1 %cmp1968, label %if.then1970, label %if.end1971

if.then1970:                                      ; preds = %if.end1967
  call void @Perl_leave_scope(i32 %435) #6
  br label %if.end1971

if.end1971:                                       ; preds = %if.then1970, %if.end1967
  call fastcc void @S_regcppop() #5
  %441 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool1973 = icmp eq %struct.curcur* %441, null
  br i1 %tobool1973, label %if.end1976, label %if.then1974

if.then1974:                                      ; preds = %if.end1971
  %cur1975 = getelementptr inbounds %struct.curcur* %441, i64 0, i32 1
  store i32 %ln.4, i32* %cur1975, align 4, !tbaa !0
  br label %if.end1976

if.end1976:                                       ; preds = %if.end1971, %if.then1974
  store %struct.curcur* %406, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %max1977 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 3
  %442 = load i32* %max1977, align 4, !tbaa !0
  %cmp1978 = icmp slt i32 %add1801, %442
  br i1 %cmp1978, label %if.end2045, label %if.then1980

if.then1980:                                      ; preds = %if.end1976
  %443 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1981 = getelementptr inbounds %struct.cop* %443, i64 0, i32 14
  %444 = load %struct.sv** %cop_warnings1981, align 8, !tbaa !3
  %cmp1982 = icmp eq %struct.sv* %444, null
  br i1 %cmp1982, label %lor.lhs.false2000, label %land.lhs.true1984

land.lhs.true1984:                                ; preds = %if.then1980
  %445 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1985 = getelementptr inbounds %struct.cop* %445, i64 0, i32 14
  %446 = load %struct.sv** %cop_warnings1985, align 8, !tbaa !3
  %cmp1986 = icmp eq %struct.sv* %446, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp1986, label %lor.lhs.false2000, label %land.lhs.true1988

land.lhs.true1988:                                ; preds = %land.lhs.true1984
  %447 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1989 = getelementptr inbounds %struct.cop* %447, i64 0, i32 14
  %448 = load %struct.sv** %cop_warnings1989, align 8, !tbaa !3
  %cmp1990 = icmp eq %struct.sv* %448, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp1990, label %land.lhs.true2008, label %lor.lhs.false1992

lor.lhs.false1992:                                ; preds = %land.lhs.true1988
  %449 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1993 = getelementptr inbounds %struct.cop* %449, i64 0, i32 14
  %450 = load %struct.sv** %cop_warnings1993, align 8, !tbaa !3
  %sv_any1994 = getelementptr inbounds %struct.sv* %450, i64 0, i32 0
  %451 = load i8** %sv_any1994, align 8, !tbaa !3
  %xpv_pv1995 = bitcast i8* %451 to i8**
  %452 = load i8** %xpv_pv1995, align 8, !tbaa !3
  %arrayidx1996 = getelementptr inbounds i8* %452, i64 5
  %453 = load i8* %arrayidx1996, align 1, !tbaa !1
  %and1998 = and i8 %453, 1
  %tobool1999 = icmp eq i8 %and1998, 0
  br i1 %tobool1999, label %lor.lhs.false2000, label %land.lhs.true2008

lor.lhs.false2000:                                ; preds = %lor.lhs.false1992, %land.lhs.true1984, %if.then1980
  %454 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings2001 = getelementptr inbounds %struct.cop* %454, i64 0, i32 14
  %455 = load %struct.sv** %cop_warnings2001, align 8, !tbaa !3
  %cmp2002 = icmp eq %struct.sv* %455, null
  br i1 %cmp2002, label %land.lhs.true2004, label %if.end2016

land.lhs.true2004:                                ; preds = %lor.lhs.false2000
  %456 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and2006 = and i8 %456, 1
  %tobool2007 = icmp ne i8 %and2006, 0
  %cmp2009 = icmp sgt i32 %408, 32765
  %or.cond5493 = and i1 %tobool2007, %cmp2009
  br i1 %or.cond5493, label %land.lhs.true2011, label %if.end2016

land.lhs.true2008:                                ; preds = %lor.lhs.false1992, %land.lhs.true1988
  %cmp2009.old = icmp sgt i32 %408, 32765
  br i1 %cmp2009.old, label %land.lhs.true2011, label %if.end2016

land.lhs.true2011:                                ; preds = %land.lhs.true2004, %land.lhs.true2008
  %457 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and2012 = and i32 %457, 2
  %tobool2013 = icmp eq i32 %and2012, 0
  br i1 %tobool2013, label %if.then2014, label %if.end2016

if.then2014:                                      ; preds = %land.lhs.true2011
  %or2015 = or i32 %457, 2
  store i32 %or2015, i32* @PL_reg_flags, align 4, !tbaa !0
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str9, i64 0, i64 0), i32 32766) #6
  br label %if.end2016

if.end2016:                                       ; preds = %land.lhs.true2004, %land.lhs.true2011, %if.then2014, %land.lhs.true2008, %lor.lhs.false2000
  %or2017 = or i32 %cache_bit.0, %cache_offset.0
  %tobool2018 = icmp eq i32 %or2017, 0
  br i1 %tobool2018, label %do_no.preheader, label %if.then2019

if.then2019:                                      ; preds = %if.end2016
  %458 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %459 = load i8* %458, align 1, !tbaa !1
  %conv2021 = sext i8 %459 to i32
  %and2022 = and i32 %conv2021, 2
  %tobool2023 = icmp eq i32 %and2022, 0
  br i1 %tobool2023, label %if.then2024, label %if.else2029

if.then2024:                                      ; preds = %if.then2019
  %or2027 = or i8 %459, 2
  store i8 %or2027, i8* %458, align 1, !tbaa !1
  br label %do_no.preheader

if.else2029:                                      ; preds = %if.then2019
  %and2032 = and i32 %conv2021, 1
  %tobool2033 = icmp eq i32 %and2032, 0
  br i1 %tobool2033, label %do_no.preheader, label %if.then2034

if.then2034:                                      ; preds = %if.else2029
  %shl2035 = shl i32 1, %cache_bit.0
  %neg2036 = xor i32 %shl2035, 255
  %idxprom2037 = sext i32 %cache_offset.0 to i64
  %arrayidx2038 = getelementptr inbounds i8* %458, i64 %idxprom2037
  %460 = load i8* %arrayidx2038, align 1, !tbaa !1
  %conv20395425 = zext i8 %460 to i32
  %and2040 = and i32 %conv20395425, %neg2036
  %conv2041 = trunc i32 %and2040 to i8
  store i8 %conv2041, i8* %arrayidx2038, align 1, !tbaa !1
  br label %do_no.preheader

if.end2045:                                       ; preds = %if.end1976
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  store i32 %add1801, i32* %cur1800, align 4, !tbaa !0
  store i8* %locinput.0, i8** %lastloc1799, align 8, !tbaa !3
  %461 = load i32* %parenfloor1930, align 4, !tbaa !0
  %call2049 = call fastcc i32 @S_regcppush(i32 %461) #5
  %462 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %scan2050 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 5
  %463 = load %struct.regnode** %scan2050, align 8, !tbaa !3
  %call2051 = call fastcc i32 @S_regmatch(%struct.regnode* %463) #5
  %tobool2052 = icmp eq i32 %call2051, 0
  %464 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br i1 %tobool2052, label %if.end2086, label %if.then2053

if.then2053:                                      ; preds = %if.end2045
  %cmp2054 = icmp sgt i32 %464, %call2049
  br i1 %cmp2054, label %if.then2056, label %if.end2057

if.then2056:                                      ; preds = %if.then2053
  call void @Perl_leave_scope(i32 %call2049) #6
  br label %if.end2057

if.end2057:                                       ; preds = %if.then2056, %if.then2053
  %or2058 = or i32 %cache_bit.0, %cache_offset.0
  %tobool2059 = icmp eq i32 %or2058, 0
  br i1 %tobool2059, label %return, label %if.then2060

if.then2060:                                      ; preds = %if.end2057
  %465 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %466 = load i8* %465, align 1, !tbaa !1
  %conv2062 = sext i8 %466 to i32
  %and2063 = and i32 %conv2062, 2
  %tobool2064 = icmp eq i32 %and2063, 0
  br i1 %tobool2064, label %if.then2065, label %if.else2070

if.then2065:                                      ; preds = %if.then2060
  %or2068 = or i8 %466, 1
  store i8 %or2068, i8* %465, align 1, !tbaa !1
  br label %return

if.else2070:                                      ; preds = %if.then2060
  %and2073 = and i32 %conv2062, 1
  %tobool2074 = icmp eq i32 %and2073, 0
  br i1 %tobool2074, label %if.then2075, label %return

if.then2075:                                      ; preds = %if.else2070
  %shl2076 = shl i32 1, %cache_bit.0
  %neg2077 = xor i32 %shl2076, 255
  %idxprom2078 = sext i32 %cache_offset.0 to i64
  %arrayidx2079 = getelementptr inbounds i8* %465, i64 %idxprom2078
  %467 = load i8* %arrayidx2079, align 1, !tbaa !1
  %conv20805424 = zext i8 %467 to i32
  %and2081 = and i32 %conv20805424, %neg2077
  %conv2082 = trunc i32 %and2081 to i8
  store i8 %conv2082, i8* %arrayidx2079, align 1, !tbaa !1
  br label %return

if.end2086:                                       ; preds = %if.end2045
  %cmp2087 = icmp sgt i32 %464, %462
  br i1 %cmp2087, label %if.then2089, label %if.end2090

if.then2089:                                      ; preds = %if.end2086
  call void @Perl_leave_scope(i32 %462) #6
  br label %if.end2090

if.end2090:                                       ; preds = %if.then2089, %if.end2086
  call fastcc void @S_regcppop() #5
  store i32 %408, i32* %cur1800, align 4, !tbaa !0
  store i8* %407, i8** %lastloc1799, align 8, !tbaa !3
  %or2095 = or i32 %cache_bit.0, %cache_offset.0
  %tobool2096 = icmp eq i32 %or2095, 0
  br i1 %tobool2096, label %do_no.preheader, label %if.then2097

if.then2097:                                      ; preds = %if.end2090
  %468 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %469 = load i8* %468, align 1, !tbaa !1
  %conv2099 = sext i8 %469 to i32
  %and2100 = and i32 %conv2099, 2
  %tobool2101 = icmp eq i32 %and2100, 0
  br i1 %tobool2101, label %if.then2102, label %if.else2107

if.then2102:                                      ; preds = %if.then2097
  %or2105 = or i8 %469, 2
  store i8 %or2105, i8* %468, align 1, !tbaa !1
  br label %do_no.preheader

if.else2107:                                      ; preds = %if.then2097
  %and2110 = and i32 %conv2099, 1
  %tobool2111 = icmp eq i32 %and2110, 0
  br i1 %tobool2111, label %do_no.preheader, label %if.then2112

if.then2112:                                      ; preds = %if.else2107
  %shl2113 = shl i32 1, %cache_bit.0
  %neg2114 = xor i32 %shl2113, 255
  %idxprom2115 = sext i32 %cache_offset.0 to i64
  %arrayidx2116 = getelementptr inbounds i8* %468, i64 %idxprom2115
  %470 = load i8* %arrayidx2116, align 1, !tbaa !1
  %conv21175423 = zext i8 %470 to i32
  %and2118 = and i32 %conv21175423, %neg2114
  %conv2119 = trunc i32 %and2118 to i8
  store i8 %conv2119, i8* %arrayidx2116, align 1, !tbaa !1
  br label %do_no.preheader

if.end2123:                                       ; preds = %if.end1921
  %max2124 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 3
  %471 = load i32* %max2124, align 4, !tbaa !0
  %cmp2125 = icmp slt i32 %add1801, %471
  br i1 %cmp2125, label %if.then2127, label %if.end2174

if.then2127:                                      ; preds = %if.end2123
  %parenfloor2128 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 0
  %472 = load i32* %parenfloor2128, align 4, !tbaa !0
  %call2129 = call fastcc i32 @S_regcppush(i32 %472) #5
  store i32 %add1801, i32* %cur1800, align 4, !tbaa !0
  store i8* %locinput.0, i8** %lastloc1799, align 8, !tbaa !3
  %473 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %scan2132 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 5
  %474 = load %struct.regnode** %scan2132, align 8, !tbaa !3
  %call2133 = call fastcc i32 @S_regmatch(%struct.regnode* %474) #5
  %tobool2134 = icmp eq i32 %call2133, 0
  %475 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br i1 %tobool2134, label %if.end2168, label %if.then2135

if.then2135:                                      ; preds = %if.then2127
  %cmp2136 = icmp sgt i32 %475, %call2129
  br i1 %cmp2136, label %if.then2138, label %if.end2139

if.then2138:                                      ; preds = %if.then2135
  call void @Perl_leave_scope(i32 %call2129) #6
  br label %if.end2139

if.end2139:                                       ; preds = %if.then2138, %if.then2135
  %or2140 = or i32 %cache_bit.0, %cache_offset.0
  %tobool2141 = icmp eq i32 %or2140, 0
  br i1 %tobool2141, label %return, label %if.then2142

if.then2142:                                      ; preds = %if.end2139
  %476 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %477 = load i8* %476, align 1, !tbaa !1
  %conv2144 = sext i8 %477 to i32
  %and2145 = and i32 %conv2144, 2
  %tobool2146 = icmp eq i32 %and2145, 0
  br i1 %tobool2146, label %if.then2147, label %if.else2152

if.then2147:                                      ; preds = %if.then2142
  %or2150 = or i8 %477, 1
  store i8 %or2150, i8* %476, align 1, !tbaa !1
  br label %return

if.else2152:                                      ; preds = %if.then2142
  %and2155 = and i32 %conv2144, 1
  %tobool2156 = icmp eq i32 %and2155, 0
  br i1 %tobool2156, label %if.then2157, label %return

if.then2157:                                      ; preds = %if.else2152
  %shl2158 = shl i32 1, %cache_bit.0
  %neg2159 = xor i32 %shl2158, 255
  %idxprom2160 = sext i32 %cache_offset.0 to i64
  %arrayidx2161 = getelementptr inbounds i8* %476, i64 %idxprom2160
  %478 = load i8* %arrayidx2161, align 1, !tbaa !1
  %conv21625422 = zext i8 %478 to i32
  %and2163 = and i32 %conv21625422, %neg2159
  %conv2164 = trunc i32 %and2163 to i8
  store i8 %conv2164, i8* %arrayidx2161, align 1, !tbaa !1
  br label %return

if.end2168:                                       ; preds = %if.then2127
  %cmp2169 = icmp sgt i32 %475, %473
  br i1 %cmp2169, label %if.then2171, label %if.end2172

if.then2171:                                      ; preds = %if.end2168
  call void @Perl_leave_scope(i32 %473) #6
  br label %if.end2172

if.end2172:                                       ; preds = %if.then2171, %if.end2168
  call fastcc void @S_regcppop() #5
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  br label %if.end2174

if.end2174:                                       ; preds = %if.end2172, %if.end2123
  %479 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings2175 = getelementptr inbounds %struct.cop* %479, i64 0, i32 14
  %480 = load %struct.sv** %cop_warnings2175, align 8, !tbaa !3
  %cmp2176 = icmp eq %struct.sv* %480, null
  br i1 %cmp2176, label %lor.lhs.false2194, label %land.lhs.true2178

land.lhs.true2178:                                ; preds = %if.end2174
  %481 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings2179 = getelementptr inbounds %struct.cop* %481, i64 0, i32 14
  %482 = load %struct.sv** %cop_warnings2179, align 8, !tbaa !3
  %cmp2180 = icmp eq %struct.sv* %482, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2180, label %lor.lhs.false2194, label %land.lhs.true2182

land.lhs.true2182:                                ; preds = %land.lhs.true2178
  %483 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings2183 = getelementptr inbounds %struct.cop* %483, i64 0, i32 14
  %484 = load %struct.sv** %cop_warnings2183, align 8, !tbaa !3
  %cmp2184 = icmp eq %struct.sv* %484, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp2184, label %land.lhs.true2202, label %lor.lhs.false2186

lor.lhs.false2186:                                ; preds = %land.lhs.true2182
  %485 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings2187 = getelementptr inbounds %struct.cop* %485, i64 0, i32 14
  %486 = load %struct.sv** %cop_warnings2187, align 8, !tbaa !3
  %sv_any2188 = getelementptr inbounds %struct.sv* %486, i64 0, i32 0
  %487 = load i8** %sv_any2188, align 8, !tbaa !3
  %xpv_pv2189 = bitcast i8* %487 to i8**
  %488 = load i8** %xpv_pv2189, align 8, !tbaa !3
  %arrayidx2190 = getelementptr inbounds i8* %488, i64 5
  %489 = load i8* %arrayidx2190, align 1, !tbaa !1
  %and2192 = and i8 %489, 1
  %tobool2193 = icmp eq i8 %and2192, 0
  br i1 %tobool2193, label %lor.lhs.false2194, label %land.lhs.true2202

lor.lhs.false2194:                                ; preds = %lor.lhs.false2186, %land.lhs.true2178, %if.end2174
  %490 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings2195 = getelementptr inbounds %struct.cop* %490, i64 0, i32 14
  %491 = load %struct.sv** %cop_warnings2195, align 8, !tbaa !3
  %cmp2196 = icmp eq %struct.sv* %491, null
  br i1 %cmp2196, label %land.lhs.true2198, label %if.end2210

land.lhs.true2198:                                ; preds = %lor.lhs.false2194
  %492 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and2200 = and i8 %492, 1
  %tobool2201 = icmp ne i8 %and2200, 0
  %cmp2203 = icmp sgt i32 %408, 32765
  %or.cond5494 = and i1 %tobool2201, %cmp2203
  br i1 %or.cond5494, label %land.lhs.true2205, label %if.end2210

land.lhs.true2202:                                ; preds = %lor.lhs.false2186, %land.lhs.true2182
  %cmp2203.old = icmp sgt i32 %408, 32765
  br i1 %cmp2203.old, label %land.lhs.true2205, label %if.end2210

land.lhs.true2205:                                ; preds = %land.lhs.true2198, %land.lhs.true2202
  %493 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and2206 = and i32 %493, 2
  %tobool2207 = icmp eq i32 %and2206, 0
  br i1 %tobool2207, label %if.then2208, label %if.end2210

if.then2208:                                      ; preds = %land.lhs.true2205
  %or2209 = or i32 %493, 2
  store i32 %or2209, i32* @PL_reg_flags, align 4, !tbaa !0
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str9, i64 0, i64 0), i32 32766) #6
  br label %if.end2210

if.end2210:                                       ; preds = %land.lhs.true2198, %land.lhs.true2205, %if.then2208, %land.lhs.true2202, %lor.lhs.false2194
  %oldcc2211 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 8
  %494 = load %struct.curcur** %oldcc2211, align 8, !tbaa !3
  store %struct.curcur* %494, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool2212 = icmp eq %struct.curcur* %494, null
  br i1 %tobool2212, label %if.end2215, label %if.then2213

if.then2213:                                      ; preds = %if.end2210
  %cur2214 = getelementptr inbounds %struct.curcur* %494, i64 0, i32 1
  %495 = load i32* %cur2214, align 4, !tbaa !0
  br label %if.end2215

if.end2215:                                       ; preds = %if.end2210, %if.then2213
  %ln.5 = phi i32 [ %495, %if.then2213 ], [ %ln.0, %if.end2210 ]
  %next2216 = getelementptr inbounds %struct.curcur* %406, i64 0, i32 6
  %496 = load %struct.regnode** %next2216, align 8, !tbaa !3
  %call2217 = call fastcc i32 @S_regmatch(%struct.regnode* %496) #5
  %tobool2218 = icmp eq i32 %call2217, 0
  br i1 %tobool2218, label %if.end2248, label %if.then2219

if.then2219:                                      ; preds = %if.end2215
  %or2220 = or i32 %cache_bit.0, %cache_offset.0
  %tobool2221 = icmp eq i32 %or2220, 0
  br i1 %tobool2221, label %return, label %if.then2222

if.then2222:                                      ; preds = %if.then2219
  %497 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %498 = load i8* %497, align 1, !tbaa !1
  %conv2224 = sext i8 %498 to i32
  %and2225 = and i32 %conv2224, 2
  %tobool2226 = icmp eq i32 %and2225, 0
  br i1 %tobool2226, label %if.then2227, label %if.else2232

if.then2227:                                      ; preds = %if.then2222
  %or2230 = or i8 %498, 1
  store i8 %or2230, i8* %497, align 1, !tbaa !1
  br label %return

if.else2232:                                      ; preds = %if.then2222
  %and2235 = and i32 %conv2224, 1
  %tobool2236 = icmp eq i32 %and2235, 0
  br i1 %tobool2236, label %if.then2237, label %return

if.then2237:                                      ; preds = %if.else2232
  %shl2238 = shl i32 1, %cache_bit.0
  %neg2239 = xor i32 %shl2238, 255
  %idxprom2240 = sext i32 %cache_offset.0 to i64
  %arrayidx2241 = getelementptr inbounds i8* %497, i64 %idxprom2240
  %499 = load i8* %arrayidx2241, align 1, !tbaa !1
  %conv22425420 = zext i8 %499 to i32
  %and2243 = and i32 %conv22425420, %neg2239
  %conv2244 = trunc i32 %and2243 to i8
  store i8 %conv2244, i8* %arrayidx2241, align 1, !tbaa !1
  br label %return

if.end2248:                                       ; preds = %if.end2215
  %500 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %tobool2249 = icmp eq %struct.curcur* %500, null
  br i1 %tobool2249, label %if.end2252, label %if.then2250

if.then2250:                                      ; preds = %if.end2248
  %cur2251 = getelementptr inbounds %struct.curcur* %500, i64 0, i32 1
  store i32 %ln.5, i32* %cur2251, align 4, !tbaa !0
  br label %if.end2252

if.end2252:                                       ; preds = %if.end2248, %if.then2250
  store %struct.curcur* %406, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  store i32 %408, i32* %cur1800, align 4, !tbaa !0
  store i8* %407, i8** %lastloc1799, align 8, !tbaa !3
  %or2256 = or i32 %cache_bit.0, %cache_offset.0
  %tobool2257 = icmp eq i32 %or2256, 0
  br i1 %tobool2257, label %do_no.preheader, label %if.then2258

if.then2258:                                      ; preds = %if.end2252
  %501 = load i8** @PL_reg_poscache, align 8, !tbaa !3
  %502 = load i8* %501, align 1, !tbaa !1
  %conv2260 = sext i8 %502 to i32
  %and2261 = and i32 %conv2260, 2
  %tobool2262 = icmp eq i32 %and2261, 0
  br i1 %tobool2262, label %if.then2263, label %if.else2268

if.then2263:                                      ; preds = %if.then2258
  %or2266 = or i8 %502, 2
  store i8 %or2266, i8* %501, align 1, !tbaa !1
  br label %do_no.preheader

if.else2268:                                      ; preds = %if.then2258
  %and2271 = and i32 %conv2260, 1
  %tobool2272 = icmp eq i32 %and2271, 0
  br i1 %tobool2272, label %do_no.preheader, label %if.then2273

if.then2273:                                      ; preds = %if.else2268
  %shl2274 = shl i32 1, %cache_bit.0
  %neg2275 = xor i32 %shl2274, 255
  %idxprom2276 = sext i32 %cache_offset.0 to i64
  %arrayidx2277 = getelementptr inbounds i8* %501, i64 %idxprom2276
  %503 = load i8* %arrayidx2277, align 1, !tbaa !1
  %conv22785419 = zext i8 %503 to i32
  %and2279 = and i32 %conv22785419, %neg2275
  %conv2280 = trunc i32 %and2279 to i8
  store i8 %conv2280, i8* %arrayidx2277, align 1, !tbaa !1
  br label %do_no.preheader

sw.bb2284:                                        ; preds = %while.body
  %arg12285 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %504 = bitcast %struct.regnode* %arg12285 to i32*
  %505 = load i32* %504, align 4, !tbaa !0
  %idx.ext2286 = zext i32 %505 to i64
  %add.ptr2287 = getelementptr inbounds %struct.regnode* %scan.0, i64 %idx.ext2286
  %cmp2288 = icmp eq i32 %505, 0
  %.add.ptr2287 = select i1 %cmp2288, %struct.regnode* null, %struct.regnode* %add.ptr2287
  br label %do_branch

do_branch:                                        ; preds = %while.body, %sw.bb2284
  %scan.0.pn = phi %struct.regnode* [ %arg12285, %sw.bb2284 ], [ %scan.0, %while.body ]
  %next.1 = phi %struct.regnode* [ %.add.ptr2287, %sw.bb2284 ], [ %.add.ptr, %while.body ]
  %inner.0 = getelementptr inbounds %struct.regnode* %scan.0.pn, i64 1
  %type2298 = getelementptr inbounds %struct.regnode* %next.1, i64 0, i32 1
  %506 = load i8* %type2298, align 1, !tbaa !1
  %cmp2300 = icmp eq i8 %506, %7
  br i1 %cmp2300, label %if.else2303, label %while.cond

if.else2303:                                      ; preds = %do_branch
  %507 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %508 = load i32* %507, align 4, !tbaa !0
  %call2304 = call i32 @Perl_save_alloc(i32 40, i32 0) #6
  %509 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %510 = bitcast %union.any* %509 to i8*
  %idx.ext2305 = sext i32 %call2304 to i64
  %add.ptr2306 = getelementptr inbounds i8* %510, i64 %idx.ext2305
  %add.ptr2306.sum = add i64 %idx.ext2305, 4
  %prev2307 = getelementptr inbounds i8* %510, i64 %add.ptr2306.sum
  %511 = bitcast i8* %prev2307 to i32*
  store i32 %unwind.0, i32* %511, align 4, !tbaa !0
  %cmp2308 = icmp eq i8 %7, 31
  %cond2310 = select i1 %cmp2308, i32 1, i32 2
  %type2311 = bitcast i8* %add.ptr2306 to i32*
  store i32 %cond2310, i32* %type2311, align 4, !tbaa !0
  %add.ptr2306.sum5414 = add i64 %idx.ext2305, 12
  %lastparen2312 = getelementptr inbounds i8* %510, i64 %add.ptr2306.sum5414
  %512 = bitcast i8* %lastparen2312 to i32*
  store i32 %508, i32* %512, align 4, !tbaa !0
  %add.ptr2306.sum5415 = add i64 %idx.ext2305, 16
  %next2313 = getelementptr inbounds i8* %510, i64 %add.ptr2306.sum5415
  %513 = bitcast i8* %next2313 to %struct.regnode**
  store %struct.regnode* %next.1, %struct.regnode** %513, align 8, !tbaa !3
  %add.ptr2306.sum5416 = add i64 %idx.ext2305, 24
  %locinput2314 = getelementptr inbounds i8* %510, i64 %add.ptr2306.sum5416
  %514 = bitcast i8* %locinput2314 to i8**
  store i8* %locinput.0, i8** %514, align 8, !tbaa !3
  %add.ptr2306.sum5417 = add i64 %idx.ext2305, 32
  %nextchr2315 = getelementptr inbounds i8* %510, i64 %add.ptr2306.sum5417
  %515 = bitcast i8* %nextchr2315 to i32*
  store i32 %nextchr.0, i32* %515, align 4, !tbaa !0
  %516 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %add.ptr2306.sum5418 = add i64 %idx.ext2305, 8
  %lastcp2316 = getelementptr inbounds i8* %510, i64 %add.ptr2306.sum5418
  %517 = bitcast i8* %lastcp2316 to i32*
  store i32 %516, i32* %517, align 4, !tbaa !0
  br label %while.cond

sw.bb2318:                                        ; preds = %while.body
  br label %while.cond

sw.bb2319:                                        ; preds = %while.body
  store i32 0, i32* %l2320, align 4, !tbaa !0
  %arg12322 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %518 = bitcast %struct.regnode* %arg12322 to i16*
  %519 = load i16* %518, align 2, !tbaa !5
  %conv2323 = zext i16 %519 to i32
  %520 = getelementptr inbounds %struct.regnode* %scan.0, i64 1, i32 2
  %521 = load i16* %520, align 2, !tbaa !5
  %conv2325 = zext i16 %521 to i32
  %flags2326 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %522 = load i8* %flags2326, align 1, !tbaa !1
  %conv2327 = zext i8 %522 to i32
  %tobool2328 = icmp ne i8 %522, 0
  br i1 %tobool2328, label %if.then2329, label %if.end2338.thread

if.end2338.thread:                                ; preds = %sw.bb2319
  %add.ptr23405546 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  br label %if.end2347

if.then2329:                                      ; preds = %sw.bb2319
  %523 = load i32* @PL_regsize, align 4, !tbaa !0
  %cmp2330 = icmp sgt i32 %conv2327, %523
  br i1 %cmp2330, label %if.then2332, label %if.end2333

if.then2332:                                      ; preds = %if.then2329
  store i32 %conv2327, i32* @PL_regsize, align 4, !tbaa !0
  br label %if.end2333

if.end2333:                                       ; preds = %if.then2329, %if.then2332
  %524 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %525 = load i32* %524, align 4, !tbaa !0
  %cmp2334 = icmp sgt i32 %conv2327, %525
  br i1 %cmp2334, label %if.then2336, label %if.then2342

if.then2336:                                      ; preds = %if.end2333
  store i32 %conv2327, i32* %524, align 4, !tbaa !0
  br label %if.then2342

if.then2342:                                      ; preds = %if.then2336, %if.end2333
  %next_off2343 = getelementptr inbounds %struct.regnode* %scan.0, i64 2, i32 2
  %526 = load i16* %next_off2343, align 2, !tbaa !5
  %idx.ext2345 = zext i16 %526 to i64
  %add.ptr2340.sum = add i64 %idx.ext2345, 2
  %add.ptr2346 = getelementptr inbounds %struct.regnode* %scan.0, i64 %add.ptr2340.sum
  br label %if.end2347

if.end2347:                                       ; preds = %if.end2338.thread, %if.then2342
  %scan.1 = phi %struct.regnode* [ %add.ptr2346, %if.then2342 ], [ %add.ptr23405546, %if.end2338.thread ]
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  %tobool2348 = icmp eq i32 %minmod.0, 0
  br i1 %tobool2348, label %if.else2667, label %if.then2349

if.then2349:                                      ; preds = %if.end2347
  %tobool2350 = icmp eq i16 %519, 0
  br i1 %tobool2350, label %if.end2356, label %land.lhs.true2351

land.lhs.true2351:                                ; preds = %if.then2349
  %call2352 = call fastcc i32 @S_regrepeat_hard(%struct.regnode* %scan.1, i32 %conv2323, i32* %l2320) #5
  %cmp2353 = icmp slt i32 %call2352, %conv2323
  br i1 %cmp2353, label %do_no.preheader, label %land.lhs.true2351.if.end2356_crit_edge

land.lhs.true2351.if.end2356_crit_edge:           ; preds = %land.lhs.true2351
  %.pre5756 = load i8** @PL_reginput, align 8, !tbaa !3
  br label %if.end2356

if.end2356:                                       ; preds = %land.lhs.true2351.if.end2356_crit_edge, %if.then2349
  %527 = phi i8* [ %.pre5756, %land.lhs.true2351.if.end2356_crit_edge ], [ %locinput.0, %if.then2349 ]
  %type2357 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 0, i32 1
  %528 = load i8* %type2357, align 1, !tbaa !1
  %idxprom2358 = zext i8 %528 to i64
  %arrayidx2359 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom2358
  %529 = load i8* %arrayidx2359, align 1, !tbaa !1
  switch i8 %529, label %lor.lhs.false2370 [
    i8 33, label %if.end2533
    i8 47, label %if.end2533
  ]

lor.lhs.false2370:                                ; preds = %if.end2356
  switch i8 %528, label %lor.lhs.false2405 [
    i8 45, label %if.then2417
    i8 46, label %if.then2417
    i8 57, label %if.then2417
    i8 52, label %if.then2417
    i8 50, label %if.then2417
    i8 39, label %if.then2417
    i8 58, label %if.then2417
  ]

lor.lhs.false2405:                                ; preds = %lor.lhs.false2370
  %cmp2410 = icmp eq i8 %529, 40
  br i1 %cmp2410, label %land.lhs.true2412, label %assume_ok_MM

land.lhs.true2412:                                ; preds = %lor.lhs.false2405
  %arg12413 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 1
  %530 = bitcast %struct.regnode* %arg12413 to i16*
  %531 = load i16* %530, align 2, !tbaa !5
  %cmp2415 = icmp eq i16 %531, 0
  br i1 %cmp2415, label %assume_ok_MM, label %while.cond2432

if.then2417:                                      ; preds = %lor.lhs.false2370, %lor.lhs.false2370, %lor.lhs.false2370, %lor.lhs.false2370, %lor.lhs.false2370, %lor.lhs.false2370, %lor.lhs.false2370
  switch i8 %529, label %while.cond2432 [
    i8 33, label %if.end2533
    i8 47, label %if.end2533
  ]

while.cond2432:                                   ; preds = %land.lhs.true2412, %if.then2417, %while.cond2432.backedge
  %.pre5744 = phi i8 [ %.pre5746, %while.cond2432.backedge ], [ %528, %if.then2417 ], [ %528, %land.lhs.true2412 ]
  %text_node.0 = phi %struct.regnode* [ %text_node.0.be, %while.cond2432.backedge ], [ %.add.ptr, %if.then2417 ], [ %.add.ptr, %land.lhs.true2412 ]
  switch i8 %.pre5744, label %lor.rhs2467 [
    i8 52, label %if.then2495
    i8 39, label %lor.lhs.false2488
    i8 45, label %lor.lhs.false2488
    i8 46, label %lor.lhs.false2488
    i8 50, label %lor.lhs.false2488
    i8 57, label %lor.lhs.false2488
    i8 58, label %lor.lhs.false2488
  ]

lor.rhs2467:                                      ; preds = %while.cond2432
  %idxprom2469 = zext i8 %.pre5744 to i64
  %arrayidx2470 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom2469
  %532 = load i8* %arrayidx2470, align 1, !tbaa !1
  %cmp2472 = icmp eq i8 %532, 40
  br i1 %cmp2472, label %land.rhs2474, label %if.end2533

land.rhs2474:                                     ; preds = %lor.rhs2467
  %arg12475 = getelementptr inbounds %struct.regnode* %text_node.0, i64 1
  %533 = bitcast %struct.regnode* %arg12475 to i16*
  %534 = load i16* %533, align 2, !tbaa !5
  %cmp2477 = icmp eq i16 %534, 0
  br i1 %cmp2477, label %assume_ok_MM, label %while.body2483

while.body2483:                                   ; preds = %land.rhs2474
  %cmp2486 = icmp eq i8 %.pre5744, 52
  br i1 %cmp2486, label %if.then2495, label %lor.lhs.false2488

lor.lhs.false2488:                                ; preds = %while.cond2432, %while.cond2432, %while.cond2432, %while.cond2432, %while.cond2432, %while.cond2432, %while.body2483
  %idxprom2490 = zext i8 %.pre5744 to i64
  %arrayidx2491 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom2490
  %535 = load i8* %arrayidx2491, align 1, !tbaa !1
  %cmp2493 = icmp eq i8 %535, 40
  br i1 %cmp2493, label %if.then2495, label %if.else2498

if.then2495:                                      ; preds = %while.cond2432, %lor.lhs.false2488, %while.body2483
  %add.ptr2497 = getelementptr inbounds %struct.regnode* %text_node.0, i64 2
  br label %while.cond2432.backedge

if.else2498:                                      ; preds = %lor.lhs.false2488
  switch i8 %.pre5744, label %if.else2524 [
    i8 39, label %if.then2503
    i8 50, label %if.then2510
  ]

if.then2503:                                      ; preds = %if.else2498
  %add.ptr2504 = getelementptr inbounds %struct.regnode* %text_node.0, i64 1
  br label %while.cond2432.backedge

while.cond2432.backedge:                          ; preds = %if.then2503, %if.else2524, %if.then2495, %cond.false2518, %cond.true2515
  %text_node.0.be = phi %struct.regnode* [ %add.ptr2497, %if.then2495 ], [ %add.ptr2504, %if.then2503 ], [ %add.ptr2528, %if.else2524 ], [ %add.ptr2517, %cond.true2515 ], [ %add.ptr2521, %cond.false2518 ]
  %type2433.phi.trans.insert = getelementptr inbounds %struct.regnode* %text_node.0.be, i64 0, i32 1
  %.pre5746 = load i8* %type2433.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond2432

if.then2510:                                      ; preds = %if.else2498
  %flags2511 = getelementptr inbounds %struct.regnode* %text_node.0, i64 0, i32 0
  %536 = load i8* %flags2511, align 1, !tbaa !1
  %cmp2513 = icmp eq i8 %536, 0
  br i1 %cmp2513, label %cond.true2515, label %cond.false2518

cond.true2515:                                    ; preds = %if.then2510
  %add.ptr2517 = getelementptr inbounds %struct.regnode* %text_node.0, i64 2
  br label %while.cond2432.backedge

cond.false2518:                                   ; preds = %if.then2510
  %arg12519 = getelementptr inbounds %struct.regnode* %text_node.0, i64 1
  %537 = bitcast %struct.regnode* %arg12519 to i32*
  %538 = load i32* %537, align 4, !tbaa !0
  %idx.ext2520 = zext i32 %538 to i64
  %add.ptr2521 = getelementptr inbounds %struct.regnode* %text_node.0, i64 %idx.ext2520
  br label %while.cond2432.backedge

if.else2524:                                      ; preds = %if.else2498
  %next_off2525 = getelementptr inbounds %struct.regnode* %text_node.0, i64 0, i32 2
  %539 = load i16* %next_off2525, align 2, !tbaa !5
  %idx.ext2527 = zext i16 %539 to i64
  %add.ptr2528 = getelementptr inbounds %struct.regnode* %text_node.0, i64 %idx.ext2527
  br label %while.cond2432.backedge

if.end2533:                                       ; preds = %if.end2356, %if.end2356, %lor.rhs2467, %if.then2417, %if.then2417
  %540 = phi i8 [ %529, %if.then2417 ], [ %529, %if.then2417 ], [ %532, %lor.rhs2467 ], [ %529, %if.end2356 ], [ %529, %if.end2356 ]
  %541 = phi i8 [ %528, %if.then2417 ], [ %528, %if.then2417 ], [ %.pre5744, %lor.rhs2467 ], [ %528, %if.end2356 ], [ %528, %if.end2356 ]
  %text_node.1 = phi %struct.regnode* [ %.add.ptr, %if.then2417 ], [ %.add.ptr, %if.then2417 ], [ %text_node.0, %lor.rhs2467 ], [ %.add.ptr, %if.end2356 ], [ %.add.ptr, %if.end2356 ]
  %cond = icmp eq i8 %540, 33
  br i1 %cond, label %if.else2556, label %assume_ok_MM

if.else2556:                                      ; preds = %if.end2533
  %arraydecay2558 = getelementptr inbounds %struct.regnode* %text_node.1, i64 1, i32 0
  %542 = load i8* %arraydecay2558, align 1, !tbaa !1
  %conv2559 = zext i8 %542 to i32
  switch i8 %541, label %assume_ok_MM [
    i8 34, label %if.then2570
    i8 48, label %if.then2570
    i8 35, label %if.then2584
    i8 49, label %if.then2584
  ]

if.then2570:                                      ; preds = %if.else2556, %if.else2556
  %idxprom2571 = zext i8 %542 to i64
  %arrayidx2572 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %idxprom2571
  %543 = load i8* %arrayidx2572, align 1, !tbaa !1
  %conv2573 = zext i8 %543 to i32
  br label %assume_ok_MM

if.then2584:                                      ; preds = %if.else2556, %if.else2556
  %idxprom2585 = zext i8 %542 to i64
  %arrayidx2586 = getelementptr inbounds [0 x i8]* @PL_fold_locale, i64 0, i64 %idxprom2585
  %544 = load i8* %arrayidx2586, align 1, !tbaa !1
  %conv2587 = zext i8 %544 to i32
  br label %assume_ok_MM

assume_ok_MM:                                     ; preds = %if.end2533, %land.rhs2474, %lor.lhs.false2405, %land.lhs.true2412, %if.else2556, %if.then2570, %if.then2584
  %c2.1 = phi i32 [ %conv2573, %if.then2570 ], [ %conv2587, %if.then2584 ], [ %conv2559, %if.else2556 ], [ -1000, %land.lhs.true2412 ], [ -1000, %lor.lhs.false2405 ], [ -1000, %land.rhs2474 ], [ -1000, %if.end2533 ]
  %c1.1 = phi i32 [ %conv2559, %if.then2570 ], [ %conv2559, %if.then2584 ], [ %conv2559, %if.else2556 ], [ -1000, %land.lhs.true2412 ], [ -1000, %lor.lhs.false2405 ], [ -1000, %land.rhs2474 ], [ -1000, %if.end2533 ]
  %545 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp2598 = icmp eq i16 %521, 32767
  %cmp2608 = icmp eq i32 %c1.1, -1000
  %idxprom2647 = zext i8 %522 to i64
  br label %while.cond2594

while.cond2594:                                   ; preds = %if.then2662, %assume_ok_MM
  %546 = phi i8* [ %527, %assume_ok_MM ], [ %557, %if.then2662 ]
  %ln.6 = phi i32 [ %conv2323, %assume_ok_MM ], [ %inc2663, %if.then2662 ]
  %cmp2595 = icmp sge i32 %conv2325, %ln.6
  %cmp2601 = icmp sgt i32 %ln.6, 0
  %or.cond5495 = and i1 %cmp2598, %cmp2601
  %or.cond5768 = or i1 %cmp2595, %or.cond5495
  br i1 %or.cond5768, label %while.body2607, label %do_no.preheader

while.body2607:                                   ; preds = %while.cond2594
  br i1 %cmp2608, label %if.then2618, label %lor.lhs.false2610

lor.lhs.false2610:                                ; preds = %while.body2607
  %547 = load i8* %546, align 1, !tbaa !1
  %conv2611 = zext i8 %547 to i32
  %cmp2612 = icmp eq i32 %conv2611, %c1.1
  %cmp2616 = icmp eq i32 %conv2611, %c2.1
  %or.cond5496 = or i1 %cmp2612, %cmp2616
  br i1 %or.cond5496, label %if.then2618, label %if.end2659

if.then2618:                                      ; preds = %lor.lhs.false2610, %while.body2607
  br i1 %tobool2328, label %if.then2620, label %if.end2650

if.then2620:                                      ; preds = %if.then2618
  %tobool2621 = icmp eq i32 %ln.6, 0
  br i1 %tobool2621, label %if.else2646, label %if.then2622

if.then2622:                                      ; preds = %if.then2620
  %548 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool2624 = icmp eq i8 %548, 0
  %549 = load i32* %l2320, align 4, !tbaa !0
  %sub2626 = sub nsw i32 0, %549
  br i1 %tobool2624, label %cond.false2628, label %cond.true2625

cond.true2625:                                    ; preds = %if.then2622
  %cmp.i5532 = icmp sgt i32 %sub2626, -1
  %550 = load i8** @PL_regeol, align 8, !tbaa !3
  %551 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i5533 = select i1 %cmp.i5532, i8* %550, i8* %551
  %call.i5534 = call fastcc i8* @S_reghop3(i8* %546, i32 %sub2626, i8* %cond.i5533) #6
  br label %cond.end2632

cond.false2628:                                   ; preds = %if.then2622
  %idx.ext2630 = sext i32 %sub2626 to i64
  %add.ptr2631 = getelementptr inbounds i8* %546, i64 %idx.ext2630
  %.pre5743 = load i8** @PL_bostr, align 8, !tbaa !3
  br label %cond.end2632

cond.end2632:                                     ; preds = %cond.false2628, %cond.true2625
  %552 = phi i8* [ %551, %cond.true2625 ], [ %.pre5743, %cond.false2628 ]
  %cond2633 = phi i8* [ %call.i5534, %cond.true2625 ], [ %add.ptr2631, %cond.false2628 ]
  %sub.ptr.lhs.cast2634 = ptrtoint i8* %cond2633 to i64
  %sub.ptr.rhs.cast2635 = ptrtoint i8* %552 to i64
  %sub.ptr.sub2636 = sub i64 %sub.ptr.lhs.cast2634, %sub.ptr.rhs.cast2635
  %conv2637 = trunc i64 %sub.ptr.sub2636 to i32
  %553 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx2639 = getelementptr inbounds i32* %553, i64 %idxprom2647
  store i32 %conv2637, i32* %arrayidx2639, align 4, !tbaa !0
  %sub.ptr.lhs.cast2640 = ptrtoint i8* %546 to i64
  %sub.ptr.sub2642 = sub i64 %sub.ptr.lhs.cast2640, %sub.ptr.rhs.cast2635
  %conv2643 = trunc i64 %sub.ptr.sub2642 to i32
  %554 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx2645 = getelementptr inbounds i32* %554, i64 %idxprom2647
  store i32 %conv2643, i32* %arrayidx2645, align 4, !tbaa !0
  br label %if.end2650

if.else2646:                                      ; preds = %if.then2620
  %555 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx2648 = getelementptr inbounds i32* %555, i64 %idxprom2647
  store i32 -1, i32* %arrayidx2648, align 4, !tbaa !0
  br label %if.end2650

if.end2650:                                       ; preds = %cond.end2632, %if.else2646, %if.then2618
  %call2651 = call fastcc i32 @S_regmatch(%struct.regnode* %.add.ptr) #5
  %tobool2652 = icmp eq i32 %call2651, 0
  br i1 %tobool2652, label %if.end2654, label %return

if.end2654:                                       ; preds = %if.end2650
  %556 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp2655 = icmp sgt i32 %556, %545
  br i1 %cmp2655, label %if.then2657, label %if.end2659

if.then2657:                                      ; preds = %if.end2654
  call void @Perl_leave_scope(i32 %545) #6
  br label %if.end2659

if.end2659:                                       ; preds = %lor.lhs.false2610, %if.end2654, %if.then2657
  store i8* %546, i8** @PL_reginput, align 8, !tbaa !3
  %call2660 = call fastcc i32 @S_regrepeat_hard(%struct.regnode* %scan.1, i32 1, i32* %l2320) #5
  %tobool2661 = icmp eq i32 %call2660, 0
  br i1 %tobool2661, label %do_no.preheader, label %if.then2662

if.then2662:                                      ; preds = %if.end2659
  %inc2663 = add nsw i32 %ln.6, 1
  %557 = load i8** @PL_reginput, align 8, !tbaa !3
  br label %while.cond2594

if.else2667:                                      ; preds = %if.end2347
  %call2668 = call fastcc i32 @S_regrepeat_hard(%struct.regnode* %scan.1, i32 %conv2325, i32* %l2320) #5
  %558 = load i8** @PL_reginput, align 8, !tbaa !3
  %cmp2669 = icmp slt i32 %call2668, %conv2323
  br i1 %cmp2669, label %do_no.preheader, label %if.then2671

if.then2671:                                      ; preds = %if.else2667
  %type2672 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 0, i32 1
  %559 = load i8* %type2672, align 1, !tbaa !1
  %idxprom2673 = zext i8 %559 to i64
  %arrayidx2674 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom2673
  %560 = load i8* %arrayidx2674, align 1, !tbaa !1
  switch i8 %560, label %lor.lhs.false2685 [
    i8 33, label %if.end2849
    i8 47, label %if.end2849
  ]

lor.lhs.false2685:                                ; preds = %if.then2671
  switch i8 %559, label %lor.lhs.false2720 [
    i8 45, label %if.then2732
    i8 46, label %if.then2732
    i8 57, label %if.then2732
    i8 52, label %if.then2732
    i8 50, label %if.then2732
    i8 39, label %if.then2732
    i8 58, label %if.then2732
  ]

lor.lhs.false2720:                                ; preds = %lor.lhs.false2685
  %cmp2725 = icmp eq i8 %560, 40
  br i1 %cmp2725, label %land.lhs.true2727, label %assume_ok_REG

land.lhs.true2727:                                ; preds = %lor.lhs.false2720
  %arg12728 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 1
  %561 = bitcast %struct.regnode* %arg12728 to i16*
  %562 = load i16* %561, align 2, !tbaa !5
  %cmp2730 = icmp eq i16 %562, 0
  br i1 %cmp2730, label %assume_ok_REG, label %while.cond2748

if.then2732:                                      ; preds = %lor.lhs.false2685, %lor.lhs.false2685, %lor.lhs.false2685, %lor.lhs.false2685, %lor.lhs.false2685, %lor.lhs.false2685, %lor.lhs.false2685
  switch i8 %560, label %while.cond2748 [
    i8 33, label %if.end2849
    i8 47, label %if.end2849
  ]

while.cond2748:                                   ; preds = %land.lhs.true2727, %if.then2732, %while.cond2748.backedge
  %.pre5740 = phi i8 [ %.pre5742, %while.cond2748.backedge ], [ %559, %if.then2732 ], [ %559, %land.lhs.true2727 ]
  %text_node2733.0 = phi %struct.regnode* [ %text_node2733.0.be, %while.cond2748.backedge ], [ %.add.ptr, %if.then2732 ], [ %.add.ptr, %land.lhs.true2727 ]
  switch i8 %.pre5740, label %lor.rhs2783 [
    i8 52, label %if.then2811
    i8 39, label %lor.lhs.false2804
    i8 45, label %lor.lhs.false2804
    i8 46, label %lor.lhs.false2804
    i8 50, label %lor.lhs.false2804
    i8 57, label %lor.lhs.false2804
    i8 58, label %lor.lhs.false2804
  ]

lor.rhs2783:                                      ; preds = %while.cond2748
  %idxprom2785 = zext i8 %.pre5740 to i64
  %arrayidx2786 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom2785
  %563 = load i8* %arrayidx2786, align 1, !tbaa !1
  %cmp2788 = icmp eq i8 %563, 40
  br i1 %cmp2788, label %land.rhs2790, label %if.end2849

land.rhs2790:                                     ; preds = %lor.rhs2783
  %arg12791 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 1
  %564 = bitcast %struct.regnode* %arg12791 to i16*
  %565 = load i16* %564, align 2, !tbaa !5
  %cmp2793 = icmp eq i16 %565, 0
  br i1 %cmp2793, label %assume_ok_REG, label %while.body2799

while.body2799:                                   ; preds = %land.rhs2790
  %cmp2802 = icmp eq i8 %.pre5740, 52
  br i1 %cmp2802, label %if.then2811, label %lor.lhs.false2804

lor.lhs.false2804:                                ; preds = %while.cond2748, %while.cond2748, %while.cond2748, %while.cond2748, %while.cond2748, %while.cond2748, %while.body2799
  %idxprom2806 = zext i8 %.pre5740 to i64
  %arrayidx2807 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom2806
  %566 = load i8* %arrayidx2807, align 1, !tbaa !1
  %cmp2809 = icmp eq i8 %566, 40
  br i1 %cmp2809, label %if.then2811, label %if.else2814

if.then2811:                                      ; preds = %while.cond2748, %lor.lhs.false2804, %while.body2799
  %add.ptr2813 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 2
  br label %while.cond2748.backedge

if.else2814:                                      ; preds = %lor.lhs.false2804
  switch i8 %.pre5740, label %if.else2840 [
    i8 39, label %if.then2819
    i8 50, label %if.then2826
  ]

if.then2819:                                      ; preds = %if.else2814
  %add.ptr2820 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 1
  br label %while.cond2748.backedge

while.cond2748.backedge:                          ; preds = %if.then2819, %if.else2840, %if.then2811, %cond.false2834, %cond.true2831
  %text_node2733.0.be = phi %struct.regnode* [ %add.ptr2813, %if.then2811 ], [ %add.ptr2820, %if.then2819 ], [ %add.ptr2844, %if.else2840 ], [ %add.ptr2833, %cond.true2831 ], [ %add.ptr2837, %cond.false2834 ]
  %type2749.phi.trans.insert = getelementptr inbounds %struct.regnode* %text_node2733.0.be, i64 0, i32 1
  %.pre5742 = load i8* %type2749.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond2748

if.then2826:                                      ; preds = %if.else2814
  %flags2827 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 0, i32 0
  %567 = load i8* %flags2827, align 1, !tbaa !1
  %cmp2829 = icmp eq i8 %567, 0
  br i1 %cmp2829, label %cond.true2831, label %cond.false2834

cond.true2831:                                    ; preds = %if.then2826
  %add.ptr2833 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 2
  br label %while.cond2748.backedge

cond.false2834:                                   ; preds = %if.then2826
  %arg12835 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 1
  %568 = bitcast %struct.regnode* %arg12835 to i32*
  %569 = load i32* %568, align 4, !tbaa !0
  %idx.ext2836 = zext i32 %569 to i64
  %add.ptr2837 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 %idx.ext2836
  br label %while.cond2748.backedge

if.else2840:                                      ; preds = %if.else2814
  %next_off2841 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 0, i32 2
  %570 = load i16* %next_off2841, align 2, !tbaa !5
  %idx.ext2843 = zext i16 %570 to i64
  %add.ptr2844 = getelementptr inbounds %struct.regnode* %text_node2733.0, i64 %idx.ext2843
  br label %while.cond2748.backedge

if.end2849:                                       ; preds = %if.then2671, %if.then2671, %lor.rhs2783, %if.then2732, %if.then2732
  %571 = phi i8 [ %560, %if.then2732 ], [ %560, %if.then2732 ], [ %563, %lor.rhs2783 ], [ %560, %if.then2671 ], [ %560, %if.then2671 ]
  %572 = phi i8 [ %559, %if.then2732 ], [ %559, %if.then2732 ], [ %.pre5740, %lor.rhs2783 ], [ %559, %if.then2671 ], [ %559, %if.then2671 ]
  %text_node2733.1 = phi %struct.regnode* [ %.add.ptr, %if.then2732 ], [ %.add.ptr, %if.then2732 ], [ %text_node2733.0, %lor.rhs2783 ], [ %.add.ptr, %if.then2671 ], [ %.add.ptr, %if.then2671 ]
  %cond5772 = icmp eq i8 %571, 33
  br i1 %cond5772, label %if.else2872, label %assume_ok_REG

if.else2872:                                      ; preds = %if.end2849
  %arraydecay2874 = getelementptr inbounds %struct.regnode* %text_node2733.1, i64 1, i32 0
  %573 = load i8* %arraydecay2874, align 1, !tbaa !1
  %conv2875 = zext i8 %573 to i32
  switch i8 %572, label %assume_ok_REG [
    i8 34, label %if.then2886
    i8 48, label %if.then2886
    i8 35, label %if.then2900
    i8 49, label %if.then2900
  ]

if.then2886:                                      ; preds = %if.else2872, %if.else2872
  %idxprom2887 = zext i8 %573 to i64
  %arrayidx2888 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %idxprom2887
  %574 = load i8* %arrayidx2888, align 1, !tbaa !1
  %conv2889 = zext i8 %574 to i32
  br label %assume_ok_REG

if.then2900:                                      ; preds = %if.else2872, %if.else2872
  %idxprom2901 = zext i8 %573 to i64
  %arrayidx2902 = getelementptr inbounds [0 x i8]* @PL_fold_locale, i64 0, i64 %idxprom2901
  %575 = load i8* %arrayidx2902, align 1, !tbaa !1
  %conv2903 = zext i8 %575 to i32
  br label %assume_ok_REG

assume_ok_REG:                                    ; preds = %if.end2849, %land.rhs2790, %lor.lhs.false2720, %land.lhs.true2727, %if.else2872, %if.then2900, %if.then2886
  %c2.2 = phi i32 [ %conv2889, %if.then2886 ], [ %conv2903, %if.then2900 ], [ %conv2875, %if.else2872 ], [ -1000, %land.lhs.true2727 ], [ -1000, %lor.lhs.false2720 ], [ -1000, %land.rhs2790 ], [ -1000, %if.end2849 ]
  %c1.2 = phi i32 [ %conv2875, %if.then2886 ], [ %conv2875, %if.then2900 ], [ %conv2875, %if.else2872 ], [ -1000, %land.lhs.true2727 ], [ -1000, %lor.lhs.false2720 ], [ -1000, %land.rhs2790 ], [ -1000, %if.end2849 ]
  %576 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br i1 %cmp2669, label %do_no.preheader, label %while.body2914.lr.ph

while.body2914.lr.ph:                             ; preds = %assume_ok_REG
  %cmp2915 = icmp eq i32 %c1.2, -1000
  %idxprom2954 = zext i8 %522 to i64
  %577 = load i32* %l2320, align 4, !tbaa !0
  %sub2933 = sub nsw i32 0, %577
  %idx.ext2937 = sext i32 %sub2933 to i64
  %cmp.i5536 = icmp sgt i32 %sub2933, -1
  br label %while.body2914

while.body2914:                                   ; preds = %cond.end2977, %while.body2914.lr.ph
  %n.15616 = phi i32 [ %call2668, %while.body2914.lr.ph ], [ %dec2967, %cond.end2977 ]
  %578 = phi i8* [ %558, %while.body2914.lr.ph ], [ %cond2978, %cond.end2977 ]
  br i1 %cmp2915, label %if.then2925, label %lor.lhs.false2917

lor.lhs.false2917:                                ; preds = %while.body2914
  %579 = load i8* %578, align 1, !tbaa !1
  %conv2918 = zext i8 %579 to i32
  %cmp2919 = icmp eq i32 %conv2918, %c1.2
  %cmp2923 = icmp eq i32 %conv2918, %c2.2
  %or.cond5497 = or i1 %cmp2919, %cmp2923
  br i1 %or.cond5497, label %if.then2925, label %if.end2966

if.then2925:                                      ; preds = %lor.lhs.false2917, %while.body2914
  br i1 %tobool2328, label %if.then2927, label %if.end2957

if.then2927:                                      ; preds = %if.then2925
  %tobool2928 = icmp eq i32 %n.15616, 0
  br i1 %tobool2928, label %if.else2953, label %if.then2929

if.then2929:                                      ; preds = %if.then2927
  %580 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool2931 = icmp eq i8 %580, 0
  br i1 %tobool2931, label %cond.false2935, label %cond.true2932

cond.true2932:                                    ; preds = %if.then2929
  %581 = load i8** @PL_regeol, align 8, !tbaa !3
  %582 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i5537 = select i1 %cmp.i5536, i8* %581, i8* %582
  %call.i5538 = call fastcc i8* @S_reghop3(i8* %578, i32 %sub2933, i8* %cond.i5537) #6
  br label %cond.end2939

cond.false2935:                                   ; preds = %if.then2929
  %add.ptr2938 = getelementptr inbounds i8* %578, i64 %idx.ext2937
  br label %cond.end2939

cond.end2939:                                     ; preds = %cond.false2935, %cond.true2932
  %cond2940 = phi i8* [ %call.i5538, %cond.true2932 ], [ %add.ptr2938, %cond.false2935 ]
  %583 = load i8** @PL_bostr, align 8, !tbaa !3
  %sub.ptr.lhs.cast2941 = ptrtoint i8* %cond2940 to i64
  %sub.ptr.rhs.cast2942 = ptrtoint i8* %583 to i64
  %sub.ptr.sub2943 = sub i64 %sub.ptr.lhs.cast2941, %sub.ptr.rhs.cast2942
  %conv2944 = trunc i64 %sub.ptr.sub2943 to i32
  %584 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx2946 = getelementptr inbounds i32* %584, i64 %idxprom2954
  store i32 %conv2944, i32* %arrayidx2946, align 4, !tbaa !0
  %sub.ptr.lhs.cast2947 = ptrtoint i8* %578 to i64
  %sub.ptr.sub2949 = sub i64 %sub.ptr.lhs.cast2947, %sub.ptr.rhs.cast2942
  %conv2950 = trunc i64 %sub.ptr.sub2949 to i32
  %585 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx2952 = getelementptr inbounds i32* %585, i64 %idxprom2954
  store i32 %conv2950, i32* %arrayidx2952, align 4, !tbaa !0
  br label %if.end2957

if.else2953:                                      ; preds = %if.then2927
  %586 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx2955 = getelementptr inbounds i32* %586, i64 %idxprom2954
  store i32 -1, i32* %arrayidx2955, align 4, !tbaa !0
  br label %if.end2957

if.end2957:                                       ; preds = %cond.end2939, %if.else2953, %if.then2925
  %call2958 = call fastcc i32 @S_regmatch(%struct.regnode* %.add.ptr) #5
  %tobool2959 = icmp eq i32 %call2958, 0
  br i1 %tobool2959, label %if.end2961, label %return

if.end2961:                                       ; preds = %if.end2957
  %587 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp2962 = icmp sgt i32 %587, %576
  br i1 %cmp2962, label %if.then2964, label %if.end2966

if.then2964:                                      ; preds = %if.end2961
  call void @Perl_leave_scope(i32 %576) #6
  br label %if.end2966

if.end2966:                                       ; preds = %if.end2961, %lor.lhs.false2917, %if.then2964
  %dec2967 = add nsw i32 %n.15616, -1
  %588 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool2969 = icmp eq i8 %588, 0
  br i1 %tobool2969, label %cond.false2973, label %cond.true2970

cond.true2970:                                    ; preds = %if.end2966
  %589 = load i8** @PL_regeol, align 8, !tbaa !3
  %590 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i5541 = select i1 %cmp.i5536, i8* %589, i8* %590
  %call.i5542 = call fastcc i8* @S_reghop3(i8* %578, i32 %sub2933, i8* %cond.i5541) #6
  br label %cond.end2977

cond.false2973:                                   ; preds = %if.end2966
  %add.ptr2976 = getelementptr inbounds i8* %578, i64 %idx.ext2937
  br label %cond.end2977

cond.end2977:                                     ; preds = %cond.false2973, %cond.true2970
  %cond2978 = phi i8* [ %call.i5542, %cond.true2970 ], [ %add.ptr2976, %cond.false2973 ]
  store i8* %cond2978, i8** @PL_reginput, align 8, !tbaa !3
  %cmp2912 = icmp sgt i32 %n.15616, %conv2323
  br i1 %cmp2912, label %while.body2914, label %do_no.preheader

sw.bb2981:                                        ; preds = %while.body
  %flags2982 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %591 = load i8* %flags2982, align 1, !tbaa !1
  %conv2983 = zext i8 %591 to i32
  %592 = load i32* @PL_regsize, align 4, !tbaa !0
  %cmp2984 = icmp sgt i32 %conv2983, %592
  br i1 %cmp2984, label %if.then2986, label %if.end2987

if.then2986:                                      ; preds = %sw.bb2981
  store i32 %conv2983, i32* @PL_regsize, align 4, !tbaa !0
  br label %if.end2987

if.end2987:                                       ; preds = %sw.bb2981, %if.then2986
  %593 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %594 = load i32* %593, align 4, !tbaa !0
  %cmp2988 = icmp sgt i32 %conv2983, %594
  br i1 %cmp2988, label %if.then2990, label %if.end2991

if.then2990:                                      ; preds = %if.end2987
  store i32 %conv2983, i32* %593, align 4, !tbaa !0
  br label %if.end2991

if.end2991:                                       ; preds = %if.then2990, %if.end2987
  %arg12992 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %595 = bitcast %struct.regnode* %arg12992 to i16*
  %596 = load i16* %595, align 2, !tbaa !5
  %conv2993 = zext i16 %596 to i32
  %597 = getelementptr inbounds %struct.regnode* %scan.0, i64 1, i32 2
  %598 = load i16* %597, align 2, !tbaa !5
  %conv2995 = zext i16 %598 to i32
  %add.ptr2997 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  %call2998 = call %struct.regnode* @Perl_regnext(%struct.regnode* %add.ptr2997) #6
  br label %repeat

sw.bb2999:                                        ; preds = %while.body
  %arg13000 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %599 = bitcast %struct.regnode* %arg13000 to i16*
  %600 = load i16* %599, align 2, !tbaa !5
  %conv3001 = zext i16 %600 to i32
  %601 = getelementptr inbounds %struct.regnode* %scan.0, i64 1, i32 2
  %602 = load i16* %601, align 2, !tbaa !5
  %conv3003 = zext i16 %602 to i32
  %add.ptr3005 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  br label %repeat

sw.bb3006:                                        ; preds = %while.body
  %add.ptr3007 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  br label %repeat

sw.bb3008:                                        ; preds = %while.body
  %add.ptr3009 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  br label %repeat

repeat:                                           ; preds = %sw.bb3008, %sw.bb3006, %sw.bb2999, %if.end2991
  %paren.0 = phi i32 [ 0, %sw.bb3008 ], [ 0, %sw.bb3006 ], [ 0, %sw.bb2999 ], [ %conv2983, %if.end2991 ]
  %ln.7 = phi i32 [ 1, %sw.bb3008 ], [ 0, %sw.bb3006 ], [ %conv3001, %sw.bb2999 ], [ %conv2993, %if.end2991 ]
  %n.2 = phi i32 [ 32767, %sw.bb3008 ], [ 32767, %sw.bb3006 ], [ %conv3003, %sw.bb2999 ], [ %conv2995, %if.end2991 ]
  %scan.2 = phi %struct.regnode* [ %add.ptr3009, %sw.bb3008 ], [ %add.ptr3007, %sw.bb3006 ], [ %add.ptr3005, %sw.bb2999 ], [ %call2998, %if.end2991 ]
  %type3010 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 0, i32 1
  %603 = load i8* %type3010, align 1, !tbaa !1
  %idxprom3011 = zext i8 %603 to i64
  %arrayidx3012 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom3011
  %604 = load i8* %arrayidx3012, align 1, !tbaa !1
  switch i8 %604, label %lor.lhs.false3023 [
    i8 33, label %if.end3188
    i8 47, label %if.end3188
  ]

lor.lhs.false3023:                                ; preds = %repeat
  switch i8 %603, label %lor.lhs.false3058 [
    i8 45, label %if.then3070
    i8 46, label %if.then3070
    i8 57, label %if.then3070
    i8 52, label %if.then3070
    i8 50, label %if.then3070
    i8 39, label %if.then3070
    i8 58, label %if.then3070
  ]

lor.lhs.false3058:                                ; preds = %lor.lhs.false3023
  %cmp3063 = icmp eq i8 %604, 40
  br i1 %cmp3063, label %land.lhs.true3065, label %assume_ok_easy

land.lhs.true3065:                                ; preds = %lor.lhs.false3058
  %arg13066 = getelementptr inbounds %struct.regnode* %.add.ptr, i64 1
  %605 = bitcast %struct.regnode* %arg13066 to i16*
  %606 = load i16* %605, align 2, !tbaa !5
  %cmp3068 = icmp eq i16 %606, 0
  br i1 %cmp3068, label %assume_ok_easy, label %while.cond3087

if.then3070:                                      ; preds = %lor.lhs.false3023, %lor.lhs.false3023, %lor.lhs.false3023, %lor.lhs.false3023, %lor.lhs.false3023, %lor.lhs.false3023, %lor.lhs.false3023
  switch i8 %604, label %while.cond3087 [
    i8 33, label %if.end3188
    i8 47, label %if.end3188
  ]

while.cond3087:                                   ; preds = %land.lhs.true3065, %if.then3070, %while.cond3087.backedge
  %.pre5750 = phi i8 [ %.pre5752, %while.cond3087.backedge ], [ %603, %if.then3070 ], [ %603, %land.lhs.true3065 ]
  %text_node3072.0 = phi %struct.regnode* [ %text_node3072.0.be, %while.cond3087.backedge ], [ %.add.ptr, %if.then3070 ], [ %.add.ptr, %land.lhs.true3065 ]
  switch i8 %.pre5750, label %lor.rhs3122 [
    i8 52, label %if.then3150
    i8 39, label %lor.lhs.false3143
    i8 45, label %lor.lhs.false3143
    i8 46, label %lor.lhs.false3143
    i8 50, label %lor.lhs.false3143
    i8 57, label %lor.lhs.false3143
    i8 58, label %lor.lhs.false3143
  ]

lor.rhs3122:                                      ; preds = %while.cond3087
  %idxprom3124 = zext i8 %.pre5750 to i64
  %arrayidx3125 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom3124
  %607 = load i8* %arrayidx3125, align 1, !tbaa !1
  %cmp3127 = icmp eq i8 %607, 40
  br i1 %cmp3127, label %land.rhs3129, label %if.end3188

land.rhs3129:                                     ; preds = %lor.rhs3122
  %arg13130 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 1
  %608 = bitcast %struct.regnode* %arg13130 to i16*
  %609 = load i16* %608, align 2, !tbaa !5
  %cmp3132 = icmp eq i16 %609, 0
  br i1 %cmp3132, label %assume_ok_easy, label %while.body3138

while.body3138:                                   ; preds = %land.rhs3129
  %cmp3141 = icmp eq i8 %.pre5750, 52
  br i1 %cmp3141, label %if.then3150, label %lor.lhs.false3143

lor.lhs.false3143:                                ; preds = %while.cond3087, %while.cond3087, %while.cond3087, %while.cond3087, %while.cond3087, %while.cond3087, %while.body3138
  %idxprom3145 = zext i8 %.pre5750 to i64
  %arrayidx3146 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom3145
  %610 = load i8* %arrayidx3146, align 1, !tbaa !1
  %cmp3148 = icmp eq i8 %610, 40
  br i1 %cmp3148, label %if.then3150, label %if.else3153

if.then3150:                                      ; preds = %while.cond3087, %lor.lhs.false3143, %while.body3138
  %add.ptr3152 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 2
  br label %while.cond3087.backedge

if.else3153:                                      ; preds = %lor.lhs.false3143
  switch i8 %.pre5750, label %if.else3179 [
    i8 39, label %if.then3158
    i8 50, label %if.then3165
  ]

if.then3158:                                      ; preds = %if.else3153
  %add.ptr3159 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 1
  br label %while.cond3087.backedge

while.cond3087.backedge:                          ; preds = %if.then3158, %if.else3179, %if.then3150, %cond.false3173, %cond.true3170
  %text_node3072.0.be = phi %struct.regnode* [ %add.ptr3152, %if.then3150 ], [ %add.ptr3159, %if.then3158 ], [ %add.ptr3183, %if.else3179 ], [ %add.ptr3172, %cond.true3170 ], [ %add.ptr3176, %cond.false3173 ]
  %type3088.phi.trans.insert = getelementptr inbounds %struct.regnode* %text_node3072.0.be, i64 0, i32 1
  %.pre5752 = load i8* %type3088.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond3087

if.then3165:                                      ; preds = %if.else3153
  %flags3166 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 0, i32 0
  %611 = load i8* %flags3166, align 1, !tbaa !1
  %cmp3168 = icmp eq i8 %611, 0
  br i1 %cmp3168, label %cond.true3170, label %cond.false3173

cond.true3170:                                    ; preds = %if.then3165
  %add.ptr3172 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 2
  br label %while.cond3087.backedge

cond.false3173:                                   ; preds = %if.then3165
  %arg13174 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 1
  %612 = bitcast %struct.regnode* %arg13174 to i32*
  %613 = load i32* %612, align 4, !tbaa !0
  %idx.ext3175 = zext i32 %613 to i64
  %add.ptr3176 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 %idx.ext3175
  br label %while.cond3087.backedge

if.else3179:                                      ; preds = %if.else3153
  %next_off3180 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 0, i32 2
  %614 = load i16* %next_off3180, align 2, !tbaa !5
  %idx.ext3182 = zext i16 %614 to i64
  %add.ptr3183 = getelementptr inbounds %struct.regnode* %text_node3072.0, i64 %idx.ext3182
  br label %while.cond3087.backedge

if.end3188:                                       ; preds = %repeat, %repeat, %lor.rhs3122, %if.then3070, %if.then3070
  %615 = phi i8 [ %604, %if.then3070 ], [ %604, %if.then3070 ], [ %607, %lor.rhs3122 ], [ %604, %repeat ], [ %604, %repeat ]
  %616 = phi i8 [ %603, %if.then3070 ], [ %603, %if.then3070 ], [ %.pre5750, %lor.rhs3122 ], [ %603, %repeat ], [ %603, %repeat ]
  %text_node3072.1 = phi %struct.regnode* [ %.add.ptr, %if.then3070 ], [ %.add.ptr, %if.then3070 ], [ %text_node3072.0, %lor.rhs3122 ], [ %.add.ptr, %repeat ], [ %.add.ptr, %repeat ]
  %cond5773 = icmp eq i8 %615, 33
  br i1 %cond5773, label %if.else3211, label %assume_ok_easy

if.else3211:                                      ; preds = %if.end3188
  %arraydecay3213 = getelementptr inbounds %struct.regnode* %text_node3072.1, i64 1, i32 0
  %617 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %and3215 = and i32 %617, 8
  %cmp3216 = icmp eq i32 %and3215, 0
  br i1 %cmp3216, label %if.then3218, label %if.else3249

if.then3218:                                      ; preds = %if.else3211
  %618 = load i8* %arraydecay3213, align 1, !tbaa !1
  %conv3219 = zext i8 %618 to i32
  switch i8 %616, label %assume_ok_easy [
    i8 34, label %if.then3229
    i8 48, label %if.then3229
    i8 35, label %if.then3243
    i8 49, label %if.then3243
  ]

if.then3229:                                      ; preds = %if.then3218, %if.then3218
  %idxprom3230 = zext i8 %618 to i64
  %arrayidx3231 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %idxprom3230
  %619 = load i8* %arrayidx3231, align 1, !tbaa !1
  %conv3232 = zext i8 %619 to i32
  br label %assume_ok_easy

if.then3243:                                      ; preds = %if.then3218, %if.then3218
  %idxprom3244 = zext i8 %618 to i64
  %arrayidx3245 = getelementptr inbounds [0 x i8]* @PL_fold_locale, i64 0, i64 %idxprom3244
  %620 = load i8* %arrayidx3245, align 1, !tbaa !1
  %conv3246 = zext i8 %620 to i32
  br label %assume_ok_easy

if.else3249:                                      ; preds = %if.else3211
  switch i8 %616, label %if.else3338 [
    i8 34, label %if.then3259
    i8 48, label %if.then3259
  ]

if.then3259:                                      ; preds = %if.else3249, %if.else3249
  %call3265 = call i64 @Perl_to_utf8_lower(i8* %arraydecay3213, i8* %arraydecay3264, i64* %ulen13260) #6
  %call3267 = call i64 @Perl_to_utf8_upper(i8* %arraydecay3213, i8* %arraydecay3266, i64* %ulen23261) #6
  %621 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3269 = getelementptr inbounds %struct.cop* %621, i64 0, i32 14
  %622 = load %struct.sv** %cop_warnings3269, align 8, !tbaa !3
  %cmp3270 = icmp eq %struct.sv* %622, null
  br i1 %cmp3270, label %lor.rhs3288, label %land.lhs.true3272

land.lhs.true3272:                                ; preds = %if.then3259
  %623 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3273 = getelementptr inbounds %struct.cop* %623, i64 0, i32 14
  %624 = load %struct.sv** %cop_warnings3273, align 8, !tbaa !3
  %cmp3274 = icmp eq %struct.sv* %624, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3274, label %lor.rhs3288, label %land.lhs.true3276

land.lhs.true3276:                                ; preds = %land.lhs.true3272
  %625 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3277 = getelementptr inbounds %struct.cop* %625, i64 0, i32 14
  %626 = load %struct.sv** %cop_warnings3277, align 8, !tbaa !3
  %cmp3278 = icmp eq %struct.sv* %626, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3278, label %lor.end3298, label %lor.lhs.false3280

lor.lhs.false3280:                                ; preds = %land.lhs.true3276
  %627 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3281 = getelementptr inbounds %struct.cop* %627, i64 0, i32 14
  %628 = load %struct.sv** %cop_warnings3281, align 8, !tbaa !3
  %sv_any3282 = getelementptr inbounds %struct.sv* %628, i64 0, i32 0
  %629 = load i8** %sv_any3282, align 8, !tbaa !3
  %xpv_pv3283 = bitcast i8* %629 to i8**
  %630 = load i8** %xpv_pv3283, align 8, !tbaa !3
  %arrayidx3284 = getelementptr inbounds i8* %630, i64 11
  %631 = load i8* %arrayidx3284, align 1, !tbaa !1
  %and3286 = and i8 %631, 1
  %tobool3287 = icmp eq i8 %and3286, 0
  br i1 %tobool3287, label %lor.rhs3288, label %lor.end3298

lor.rhs3288:                                      ; preds = %lor.lhs.false3280, %land.lhs.true3272, %if.then3259
  %632 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3289 = getelementptr inbounds %struct.cop* %632, i64 0, i32 14
  %633 = load %struct.sv** %cop_warnings3289, align 8, !tbaa !3
  %cmp3290 = icmp eq %struct.sv* %633, null
  br i1 %cmp3290, label %land.rhs3292, label %lor.end3298

land.rhs3292:                                     ; preds = %lor.rhs3288
  %634 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and3294 = and i8 %634, 1
  %tobool3295 = icmp ne i8 %and3294, 0
  %phitmp5410 = select i1 %tobool3295, i32 0, i32 255
  br label %lor.end3298

lor.end3298:                                      ; preds = %lor.lhs.false3280, %lor.rhs3288, %land.rhs3292, %land.lhs.true3276
  %635 = phi i32 [ 0, %lor.lhs.false3280 ], [ 0, %land.lhs.true3276 ], [ 255, %lor.rhs3288 ], [ %phitmp5410, %land.rhs3292 ]
  %call3301 = call i64 @Perl_utf8n_to_uvuni(i8* %arraydecay3264, i64 13, i64* null, i32 %635) #6
  %conv3302 = trunc i64 %call3301 to i32
  %636 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3304 = getelementptr inbounds %struct.cop* %636, i64 0, i32 14
  %637 = load %struct.sv** %cop_warnings3304, align 8, !tbaa !3
  %cmp3305 = icmp eq %struct.sv* %637, null
  br i1 %cmp3305, label %lor.rhs3323, label %land.lhs.true3307

land.lhs.true3307:                                ; preds = %lor.end3298
  %638 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3308 = getelementptr inbounds %struct.cop* %638, i64 0, i32 14
  %639 = load %struct.sv** %cop_warnings3308, align 8, !tbaa !3
  %cmp3309 = icmp eq %struct.sv* %639, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3309, label %lor.rhs3323, label %land.lhs.true3311

land.lhs.true3311:                                ; preds = %land.lhs.true3307
  %640 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3312 = getelementptr inbounds %struct.cop* %640, i64 0, i32 14
  %641 = load %struct.sv** %cop_warnings3312, align 8, !tbaa !3
  %cmp3313 = icmp eq %struct.sv* %641, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3313, label %lor.end3333, label %lor.lhs.false3315

lor.lhs.false3315:                                ; preds = %land.lhs.true3311
  %642 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3316 = getelementptr inbounds %struct.cop* %642, i64 0, i32 14
  %643 = load %struct.sv** %cop_warnings3316, align 8, !tbaa !3
  %sv_any3317 = getelementptr inbounds %struct.sv* %643, i64 0, i32 0
  %644 = load i8** %sv_any3317, align 8, !tbaa !3
  %xpv_pv3318 = bitcast i8* %644 to i8**
  %645 = load i8** %xpv_pv3318, align 8, !tbaa !3
  %arrayidx3319 = getelementptr inbounds i8* %645, i64 11
  %646 = load i8* %arrayidx3319, align 1, !tbaa !1
  %and3321 = and i8 %646, 1
  %tobool3322 = icmp eq i8 %and3321, 0
  br i1 %tobool3322, label %lor.rhs3323, label %lor.end3333

lor.rhs3323:                                      ; preds = %lor.lhs.false3315, %land.lhs.true3307, %lor.end3298
  %647 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3324 = getelementptr inbounds %struct.cop* %647, i64 0, i32 14
  %648 = load %struct.sv** %cop_warnings3324, align 8, !tbaa !3
  %cmp3325 = icmp eq %struct.sv* %648, null
  br i1 %cmp3325, label %land.rhs3327, label %lor.end3333

land.rhs3327:                                     ; preds = %lor.rhs3323
  %649 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and3329 = and i8 %649, 1
  %tobool3330 = icmp ne i8 %and3329, 0
  %phitmp5411 = select i1 %tobool3330, i32 0, i32 255
  br label %lor.end3333

lor.end3333:                                      ; preds = %lor.lhs.false3315, %lor.rhs3323, %land.rhs3327, %land.lhs.true3311
  %650 = phi i32 [ 0, %lor.lhs.false3315 ], [ 0, %land.lhs.true3311 ], [ 255, %lor.rhs3323 ], [ %phitmp5411, %land.rhs3327 ]
  %call3336 = call i64 @Perl_utf8n_to_uvuni(i8* %arraydecay3266, i64 13, i64* null, i32 %650) #6
  %conv3337 = trunc i64 %call3336 to i32
  br label %assume_ok_easy

if.else3338:                                      ; preds = %if.else3249
  %651 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3339 = getelementptr inbounds %struct.cop* %651, i64 0, i32 14
  %652 = load %struct.sv** %cop_warnings3339, align 8, !tbaa !3
  %cmp3340 = icmp eq %struct.sv* %652, null
  br i1 %cmp3340, label %lor.rhs3358, label %land.lhs.true3342

land.lhs.true3342:                                ; preds = %if.else3338
  %653 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3343 = getelementptr inbounds %struct.cop* %653, i64 0, i32 14
  %654 = load %struct.sv** %cop_warnings3343, align 8, !tbaa !3
  %cmp3344 = icmp eq %struct.sv* %654, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3344, label %lor.rhs3358, label %land.lhs.true3346

land.lhs.true3346:                                ; preds = %land.lhs.true3342
  %655 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3347 = getelementptr inbounds %struct.cop* %655, i64 0, i32 14
  %656 = load %struct.sv** %cop_warnings3347, align 8, !tbaa !3
  %cmp3348 = icmp eq %struct.sv* %656, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3348, label %lor.end3368, label %lor.lhs.false3350

lor.lhs.false3350:                                ; preds = %land.lhs.true3346
  %657 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3351 = getelementptr inbounds %struct.cop* %657, i64 0, i32 14
  %658 = load %struct.sv** %cop_warnings3351, align 8, !tbaa !3
  %sv_any3352 = getelementptr inbounds %struct.sv* %658, i64 0, i32 0
  %659 = load i8** %sv_any3352, align 8, !tbaa !3
  %xpv_pv3353 = bitcast i8* %659 to i8**
  %660 = load i8** %xpv_pv3353, align 8, !tbaa !3
  %arrayidx3354 = getelementptr inbounds i8* %660, i64 11
  %661 = load i8* %arrayidx3354, align 1, !tbaa !1
  %and3356 = and i8 %661, 1
  %tobool3357 = icmp eq i8 %and3356, 0
  br i1 %tobool3357, label %lor.rhs3358, label %lor.end3368

lor.rhs3358:                                      ; preds = %lor.lhs.false3350, %land.lhs.true3342, %if.else3338
  %662 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3359 = getelementptr inbounds %struct.cop* %662, i64 0, i32 14
  %663 = load %struct.sv** %cop_warnings3359, align 8, !tbaa !3
  %cmp3360 = icmp eq %struct.sv* %663, null
  br i1 %cmp3360, label %land.rhs3362, label %lor.end3368

land.rhs3362:                                     ; preds = %lor.rhs3358
  %664 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and3364 = and i8 %664, 1
  %tobool3365 = icmp ne i8 %and3364, 0
  %phitmp5408 = select i1 %tobool3365, i32 0, i32 255
  br label %lor.end3368

lor.end3368:                                      ; preds = %lor.lhs.false3350, %lor.rhs3358, %land.rhs3362, %land.lhs.true3346
  %665 = phi i32 [ 0, %lor.lhs.false3350 ], [ 0, %land.lhs.true3346 ], [ 255, %lor.rhs3358 ], [ %phitmp5408, %land.rhs3362 ]
  %call3371 = call i64 @Perl_utf8n_to_uvuni(i8* %arraydecay3213, i64 13, i64* null, i32 %665) #6
  %conv3372 = trunc i64 %call3371 to i32
  br label %assume_ok_easy

assume_ok_easy:                                   ; preds = %if.end3188, %land.rhs3129, %lor.lhs.false3058, %land.lhs.true3065, %if.then3218, %if.then3243, %if.then3229, %lor.end3368, %lor.end3333
  %c2.3 = phi i32 [ %conv3337, %lor.end3333 ], [ %conv3372, %lor.end3368 ], [ %conv3232, %if.then3229 ], [ %conv3246, %if.then3243 ], [ %conv3219, %if.then3218 ], [ -1000, %land.lhs.true3065 ], [ -1000, %lor.lhs.false3058 ], [ -1000, %land.rhs3129 ], [ -1000, %if.end3188 ]
  %c1.3 = phi i32 [ %conv3302, %lor.end3333 ], [ %conv3372, %lor.end3368 ], [ %conv3219, %if.then3229 ], [ %conv3219, %if.then3243 ], [ %conv3219, %if.then3218 ], [ -1000, %land.lhs.true3065 ], [ -1000, %lor.lhs.false3058 ], [ -1000, %land.rhs3129 ], [ -1000, %if.end3188 ]
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  %tobool3378 = icmp eq i32 %minmod.0, 0
  br i1 %tobool3378, label %if.else3826, label %if.then3379

if.then3379:                                      ; preds = %assume_ok_easy
  %tobool3381 = icmp eq i32 %ln.7, 0
  br i1 %tobool3381, label %if.end3387, label %land.lhs.true3382

land.lhs.true3382:                                ; preds = %if.then3379
  %call3383 = call fastcc i32 @S_regrepeat(%struct.regnode* %scan.2, i32 %ln.7) #5
  %cmp3384 = icmp slt i32 %call3383, %ln.7
  br i1 %cmp3384, label %do_no.preheader, label %land.lhs.true3382.if.end3387_crit_edge

land.lhs.true3382.if.end3387_crit_edge:           ; preds = %land.lhs.true3382
  %.pre5757 = load i8** @PL_reginput, align 8, !tbaa !3
  br label %if.end3387

if.end3387:                                       ; preds = %land.lhs.true3382.if.end3387_crit_edge, %if.then3379
  %666 = phi i8* [ %.pre5757, %land.lhs.true3382.if.end3387_crit_edge ], [ %locinput.0, %if.then3379 ]
  %667 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp3388 = icmp eq i32 %c1.3, -1000
  %cmp3662 = icmp eq i32 %n.2, 32767
  br i1 %cmp3388, label %while.cond3658.preheader, label %if.then3390

while.cond3658.preheader:                         ; preds = %if.end3387
  %tobool3723 = icmp ne i32 %paren.0, 0
  %idxprom37485395 = zext i32 %paren.0 to i64
  %tobool3723.not = xor i1 %tobool3723, true
  br label %while.cond3658

if.then3390:                                      ; preds = %if.end3387
  br i1 %cmp3662, label %if.then3394, label %if.else3412

if.then3394:                                      ; preds = %if.then3390
  %668 = load i8** @PL_regeol, align 8, !tbaa !3
  %add.ptr3395 = getelementptr inbounds i8* %668, i64 -1
  br i1 %tobool82, label %while.body3447.preheader, label %while.cond3398

while.cond3398:                                   ; preds = %if.then3394, %while.cond3398
  %e3391.0 = phi i8* [ %incdec.ptr3409, %while.cond3398 ], [ %add.ptr3395, %if.then3394 ]
  %669 = load i8* %e3391.0, align 1, !tbaa !1
  %cmp3400 = icmp slt i8 %669, 0
  %cmp3404 = icmp ult i8 %669, -64
  %or.cond5498 = and i1 %cmp3400, %cmp3404
  %incdec.ptr3409 = getelementptr inbounds i8* %e3391.0, i64 -1
  br i1 %or.cond5498, label %while.cond3398, label %while.body3447.preheader

if.else3412:                                      ; preds = %if.then3390
  br i1 %tobool82, label %if.else3434, label %if.then3414

if.then3414:                                      ; preds = %if.else3412
  %sub3415 = sub nsw i32 %n.2, %ln.7
  %cmp34165570 = icmp sgt i32 %sub3415, 0
  br i1 %cmp34165570, label %land.rhs3418.lr.ph, label %while.body3447.preheader

land.rhs3418.lr.ph:                               ; preds = %if.then3414
  %670 = load i8** @PL_regeol, align 8, !tbaa !3
  br label %land.rhs3418

for.cond:                                         ; preds = %land.rhs3418
  %cmp3416 = icmp sgt i32 %dec3433, 0
  br i1 %cmp3416, label %land.rhs3418, label %while.body3447.preheader

land.rhs3418:                                     ; preds = %land.rhs3418.lr.ph, %for.cond
  %m.05572 = phi i32 [ %sub3415, %land.rhs3418.lr.ph ], [ %dec3433, %for.cond ]
  %e3391.15571 = phi i8* [ %666, %land.rhs3418.lr.ph ], [ %add.ptr3423, %for.cond ]
  %671 = load i8* %e3391.15571, align 1, !tbaa !1
  %idxprom3419 = zext i8 %671 to i64
  %arrayidx3420 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom3419
  %672 = load i8* %arrayidx3420, align 1, !tbaa !1
  %idx.ext3422 = zext i8 %672 to i64
  %add.ptr3423 = getelementptr inbounds i8* %e3391.15571, i64 %idx.ext3422
  %cmp3424 = icmp ugt i8* %add.ptr3423, %670
  %dec3433 = add nsw i32 %m.05572, -1
  br i1 %cmp3424, label %while.body3447.preheader, label %for.cond

if.else3434:                                      ; preds = %if.else3412
  %idx.ext34355399 = zext i32 %n.2 to i64
  %idx.ext34375400 = zext i32 %ln.7 to i64
  %add.ptr3436.sum = sub i64 %idx.ext34355399, %idx.ext34375400
  %add.ptr3438 = getelementptr inbounds i8* %666, i64 %add.ptr3436.sum
  %673 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp3439 = icmp ult i8* %add.ptr3438, %673
  %add.ptr3442 = getelementptr inbounds i8* %673, i64 -1
  %add.ptr3438.add.ptr3442 = select i1 %cmp3439, i8* %add.ptr3438, i8* %add.ptr3442
  br label %while.body3447.preheader

while.body3447.preheader:                         ; preds = %while.cond3398, %if.then3414, %land.rhs3418, %for.cond, %if.then3394, %if.else3434
  %e3391.2.ph = phi i8* [ %add.ptr3438.add.ptr3442, %if.else3434 ], [ %add.ptr3395, %if.then3394 ], [ %666, %if.then3414 ], [ %e3391.15571, %land.rhs3418 ], [ %add.ptr3423, %for.cond ], [ %e3391.0, %while.cond3398 ]
  %cmp3489 = icmp eq i32 %c1.3, %c2.3
  %conv3580 = sext i32 %c2.3 to i64
  %conv3576 = sext i32 %c1.3 to i64
  %tobool3603 = icmp ne i32 %paren.0, 0
  %idxprom36285402 = zext i32 %paren.0 to i64
  %tobool3603.not = xor i1 %tobool3603, true
  br label %while.body3447

while.body3447:                                   ; preds = %if.then3648, %if.else3654, %while.body3447.preheader
  %old.0 = phi i8* [ %666, %while.body3447.preheader ], [ %locinput.11, %if.else3654 ], [ %locinput.11, %if.then3648 ]
  %count.0 = phi i32 [ 0, %while.body3447.preheader ], [ 1, %if.else3654 ], [ 1, %if.then3648 ]
  %locinput.5 = phi i8* [ %666, %while.body3447.preheader ], [ %incdec.ptr3655, %if.else3654 ], [ %add.ptr3653, %if.then3648 ]
  %ln.8 = phi i32 [ %ln.7, %while.body3447.preheader ], [ %ln.9, %if.else3654 ], [ %ln.9, %if.then3648 ]
  %cmp34935588 = icmp ugt i8* %locinput.5, %e3391.2.ph
  br i1 %tobool262, label %if.else3487, label %if.then3449

if.then3449:                                      ; preds = %while.body3447
  br i1 %cmp3489, label %while.cond3453.preheader, label %while.cond3466.preheader

while.cond3453.preheader:                         ; preds = %if.then3449
  br i1 %cmp34935588, label %if.end3482, label %land.rhs3456

while.cond3466.preheader:                         ; preds = %if.then3449
  br i1 %cmp34935588, label %if.end3482, label %land.lhs.true3469

while.cond3453:                                   ; preds = %land.rhs3456
  %cmp3454 = icmp ugt i8* %incdec.ptr3463, %e3391.2.ph
  br i1 %cmp3454, label %if.end3482, label %land.rhs3456

land.rhs3456:                                     ; preds = %while.cond3453.preheader, %while.cond3453
  %locinput.65579 = phi i8* [ %incdec.ptr3463, %while.cond3453 ], [ %locinput.5, %while.cond3453.preheader ]
  %674 = load i8* %locinput.65579, align 1, !tbaa !1
  %conv3457 = zext i8 %674 to i32
  %cmp3458 = icmp eq i32 %conv3457, %c2.3
  %incdec.ptr3463 = getelementptr inbounds i8* %locinput.65579, i64 1
  br i1 %cmp3458, label %if.end3482, label %while.cond3453

while.cond3466:                                   ; preds = %land.lhs.true3469
  %cmp3467 = icmp ugt i8* %incdec.ptr3480, %e3391.2.ph
  br i1 %cmp3467, label %if.end3482, label %land.lhs.true3469

land.lhs.true3469:                                ; preds = %while.cond3466.preheader, %while.cond3466
  %locinput.75575 = phi i8* [ %incdec.ptr3480, %while.cond3466 ], [ %locinput.5, %while.cond3466.preheader ]
  %675 = load i8* %locinput.75575, align 1, !tbaa !1
  %conv3470 = zext i8 %675 to i32
  %cmp3471 = icmp eq i32 %conv3470, %c1.3
  %cmp3475 = icmp eq i32 %conv3470, %c2.3
  %or.cond5499 = or i1 %cmp3471, %cmp3475
  %incdec.ptr3480 = getelementptr inbounds i8* %locinput.75575, i64 1
  br i1 %or.cond5499, label %if.end3482, label %while.cond3466

if.end3482:                                       ; preds = %while.cond3453.preheader, %land.rhs3456, %while.cond3453, %while.cond3466.preheader, %land.lhs.true3469, %while.cond3466
  %locinput.8 = phi i8* [ %locinput.5, %while.cond3466.preheader ], [ %locinput.75575, %land.lhs.true3469 ], [ %incdec.ptr3480, %while.cond3466 ], [ %locinput.5, %while.cond3453.preheader ], [ %locinput.65579, %land.rhs3456 ], [ %incdec.ptr3463, %while.cond3453 ]
  %sub.ptr.lhs.cast3483 = ptrtoint i8* %locinput.8 to i64
  %sub.ptr.rhs.cast3484 = ptrtoint i8* %old.0 to i64
  %sub.ptr.sub3485 = sub i64 %sub.ptr.lhs.cast3483, %sub.ptr.rhs.cast3484
  %conv3486 = trunc i64 %sub.ptr.sub3485 to i32
  br label %if.end3589

if.else3487:                                      ; preds = %while.body3447
  br i1 %cmp3489, label %while.cond3492.preheader, label %while.cond3539.preheader

while.cond3492.preheader:                         ; preds = %if.else3487
  br i1 %cmp34935588, label %if.end3589, label %land.rhs3495

while.cond3539.preheader:                         ; preds = %if.else3487
  br i1 %cmp34935588, label %if.end3589, label %while.body3542

land.rhs3495:                                     ; preds = %while.cond3492.preheader, %while.body3534
  %locinput.95590 = phi i8* [ %add.ptr3535, %while.body3534 ], [ %locinput.5, %while.cond3492.preheader ]
  %count.15589 = phi i32 [ %inc3536, %while.body3534 ], [ %count.0, %while.cond3492.preheader ]
  %676 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3496 = getelementptr inbounds %struct.cop* %676, i64 0, i32 14
  %677 = load %struct.sv** %cop_warnings3496, align 8, !tbaa !3
  %cmp3497 = icmp eq %struct.sv* %677, null
  br i1 %cmp3497, label %lor.rhs3515, label %land.lhs.true3499

land.lhs.true3499:                                ; preds = %land.rhs3495
  %678 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3500 = getelementptr inbounds %struct.cop* %678, i64 0, i32 14
  %679 = load %struct.sv** %cop_warnings3500, align 8, !tbaa !3
  %cmp3501 = icmp eq %struct.sv* %679, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3501, label %lor.rhs3515, label %land.lhs.true3503

land.lhs.true3503:                                ; preds = %land.lhs.true3499
  %680 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3504 = getelementptr inbounds %struct.cop* %680, i64 0, i32 14
  %681 = load %struct.sv** %cop_warnings3504, align 8, !tbaa !3
  %cmp3505 = icmp eq %struct.sv* %681, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3505, label %lor.end3525, label %lor.lhs.false3507

lor.lhs.false3507:                                ; preds = %land.lhs.true3503
  %682 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3508 = getelementptr inbounds %struct.cop* %682, i64 0, i32 14
  %683 = load %struct.sv** %cop_warnings3508, align 8, !tbaa !3
  %sv_any3509 = getelementptr inbounds %struct.sv* %683, i64 0, i32 0
  %684 = load i8** %sv_any3509, align 8, !tbaa !3
  %xpv_pv3510 = bitcast i8* %684 to i8**
  %685 = load i8** %xpv_pv3510, align 8, !tbaa !3
  %arrayidx3511 = getelementptr inbounds i8* %685, i64 11
  %686 = load i8* %arrayidx3511, align 1, !tbaa !1
  %and3513 = and i8 %686, 1
  %tobool3514 = icmp eq i8 %and3513, 0
  br i1 %tobool3514, label %lor.rhs3515, label %lor.end3525

lor.rhs3515:                                      ; preds = %lor.lhs.false3507, %land.lhs.true3499, %land.rhs3495
  %687 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3516 = getelementptr inbounds %struct.cop* %687, i64 0, i32 14
  %688 = load %struct.sv** %cop_warnings3516, align 8, !tbaa !3
  %cmp3517 = icmp eq %struct.sv* %688, null
  br i1 %cmp3517, label %land.rhs3519, label %lor.end3525

land.rhs3519:                                     ; preds = %lor.rhs3515
  %689 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and3521 = and i8 %689, 1
  %tobool3522 = icmp ne i8 %and3521, 0
  %phitmp5406 = select i1 %tobool3522, i32 0, i32 255
  br label %lor.end3525

lor.end3525:                                      ; preds = %lor.lhs.false3507, %lor.rhs3515, %land.rhs3519, %land.lhs.true3503
  %690 = phi i32 [ 0, %lor.lhs.false3507 ], [ 0, %land.lhs.true3503 ], [ 255, %lor.rhs3515 ], [ %phitmp5406, %land.rhs3519 ]
  %call3528 = call i64 @Perl_utf8n_to_uvuni(i8* %locinput.95590, i64 13, i64* %len3488, i32 %690) #6
  %cmp3530 = icmp eq i64 %call3528, %conv3576
  br i1 %cmp3530, label %if.end3589, label %while.body3534

while.body3534:                                   ; preds = %lor.end3525
  %691 = load i64* %len3488, align 8, !tbaa !4
  %add.ptr3535 = getelementptr inbounds i8* %locinput.95590, i64 %691
  %inc3536 = add nsw i32 %count.15589, 1
  %cmp3493 = icmp ugt i8* %add.ptr3535, %e3391.2.ph
  br i1 %cmp3493, label %if.end3589, label %land.rhs3495

while.body3542:                                   ; preds = %while.cond3539.preheader, %if.end3584
  %locinput.105584 = phi i8* [ %add.ptr3585, %if.end3584 ], [ %locinput.5, %while.cond3539.preheader ]
  %count.25583 = phi i32 [ %inc3586, %if.end3584 ], [ %count.0, %while.cond3539.preheader ]
  %692 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3543 = getelementptr inbounds %struct.cop* %692, i64 0, i32 14
  %693 = load %struct.sv** %cop_warnings3543, align 8, !tbaa !3
  %cmp3544 = icmp eq %struct.sv* %693, null
  br i1 %cmp3544, label %lor.rhs3562, label %land.lhs.true3546

land.lhs.true3546:                                ; preds = %while.body3542
  %694 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3547 = getelementptr inbounds %struct.cop* %694, i64 0, i32 14
  %695 = load %struct.sv** %cop_warnings3547, align 8, !tbaa !3
  %cmp3548 = icmp eq %struct.sv* %695, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3548, label %lor.rhs3562, label %land.lhs.true3550

land.lhs.true3550:                                ; preds = %land.lhs.true3546
  %696 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3551 = getelementptr inbounds %struct.cop* %696, i64 0, i32 14
  %697 = load %struct.sv** %cop_warnings3551, align 8, !tbaa !3
  %cmp3552 = icmp eq %struct.sv* %697, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3552, label %lor.end3572, label %lor.lhs.false3554

lor.lhs.false3554:                                ; preds = %land.lhs.true3550
  %698 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3555 = getelementptr inbounds %struct.cop* %698, i64 0, i32 14
  %699 = load %struct.sv** %cop_warnings3555, align 8, !tbaa !3
  %sv_any3556 = getelementptr inbounds %struct.sv* %699, i64 0, i32 0
  %700 = load i8** %sv_any3556, align 8, !tbaa !3
  %xpv_pv3557 = bitcast i8* %700 to i8**
  %701 = load i8** %xpv_pv3557, align 8, !tbaa !3
  %arrayidx3558 = getelementptr inbounds i8* %701, i64 11
  %702 = load i8* %arrayidx3558, align 1, !tbaa !1
  %and3560 = and i8 %702, 1
  %tobool3561 = icmp eq i8 %and3560, 0
  br i1 %tobool3561, label %lor.rhs3562, label %lor.end3572

lor.rhs3562:                                      ; preds = %lor.lhs.false3554, %land.lhs.true3546, %while.body3542
  %703 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3563 = getelementptr inbounds %struct.cop* %703, i64 0, i32 14
  %704 = load %struct.sv** %cop_warnings3563, align 8, !tbaa !3
  %cmp3564 = icmp eq %struct.sv* %704, null
  br i1 %cmp3564, label %land.rhs3566, label %lor.end3572

land.rhs3566:                                     ; preds = %lor.rhs3562
  %705 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and3568 = and i8 %705, 1
  %tobool3569 = icmp ne i8 %and3568, 0
  %phitmp5404 = select i1 %tobool3569, i32 0, i32 255
  br label %lor.end3572

lor.end3572:                                      ; preds = %lor.lhs.false3554, %lor.rhs3562, %land.rhs3566, %land.lhs.true3550
  %706 = phi i32 [ 0, %lor.lhs.false3554 ], [ 0, %land.lhs.true3550 ], [ 255, %lor.rhs3562 ], [ %phitmp5404, %land.rhs3566 ]
  %call3575 = call i64 @Perl_utf8n_to_uvuni(i8* %locinput.105584, i64 13, i64* %len3488, i32 %706) #6
  %cmp3577 = icmp eq i64 %call3575, %conv3576
  %cmp3581 = icmp eq i64 %call3575, %conv3580
  %or.cond5581 = or i1 %cmp3577, %cmp3581
  br i1 %or.cond5581, label %if.end3589, label %if.end3584

if.end3584:                                       ; preds = %lor.end3572
  %707 = load i64* %len3488, align 8, !tbaa !4
  %add.ptr3585 = getelementptr inbounds i8* %locinput.105584, i64 %707
  %inc3586 = add nsw i32 %count.25583, 1
  %cmp3540 = icmp ugt i8* %add.ptr3585, %e3391.2.ph
  br i1 %cmp3540, label %if.end3589, label %while.body3542

if.end3589:                                       ; preds = %while.cond3492.preheader, %lor.end3525, %while.body3534, %while.cond3539.preheader, %lor.end3572, %if.end3584, %if.end3482
  %count.3 = phi i32 [ %conv3486, %if.end3482 ], [ %count.0, %while.cond3539.preheader ], [ %count.25583, %lor.end3572 ], [ %inc3586, %if.end3584 ], [ %count.0, %while.cond3492.preheader ], [ %count.15589, %lor.end3525 ], [ %inc3536, %while.body3534 ]
  %locinput.11 = phi i8* [ %locinput.8, %if.end3482 ], [ %locinput.5, %while.cond3539.preheader ], [ %locinput.105584, %lor.end3572 ], [ %add.ptr3585, %if.end3584 ], [ %locinput.5, %while.cond3492.preheader ], [ %locinput.95590, %lor.end3525 ], [ %add.ptr3535, %while.body3534 ]
  %cmp3590 = icmp ugt i8* %locinput.11, %e3391.2.ph
  br i1 %cmp3590, label %do_no.preheader, label %if.end3593

if.end3593:                                       ; preds = %if.end3589
  %cmp3594 = icmp eq i8* %locinput.11, %old.0
  br i1 %cmp3594, label %if.end3602, label %if.then3596

if.then3596:                                      ; preds = %if.end3593
  %call3597 = call fastcc i32 @S_regrepeat(%struct.regnode* %scan.2, i32 %count.3) #5
  %cmp3598 = icmp slt i32 %call3597, %count.3
  br i1 %cmp3598, label %do_no.preheader, label %if.end3602

if.end3602:                                       ; preds = %if.end3593, %if.then3596
  %ln.9 = phi i32 [ 1, %if.then3596 ], [ %ln.8, %if.end3593 ]
  br i1 %tobool3603, label %if.then3604, label %if.end3631

if.then3604:                                      ; preds = %if.end3602
  %tobool3605 = icmp eq i32 %ln.9, 0
  br i1 %tobool3605, label %if.else3627, label %if.then3606

if.then3606:                                      ; preds = %if.then3604
  %708 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool3608 = icmp eq i8 %708, 0
  br i1 %tobool3608, label %cond.false3611, label %cond.true3609

cond.true3609:                                    ; preds = %if.then3606
  %709 = load i8** @PL_bostr, align 8, !tbaa !3
  %call.i5543 = call fastcc i8* @S_reghop3(i8* %locinput.11, i32 -1, i8* %709) #6
  br label %cond.end3613

cond.false3611:                                   ; preds = %if.then3606
  %add.ptr3612 = getelementptr inbounds i8* %locinput.11, i64 -1
  %.pre5749 = load i8** @PL_bostr, align 8, !tbaa !3
  br label %cond.end3613

cond.end3613:                                     ; preds = %cond.false3611, %cond.true3609
  %710 = phi i8* [ %709, %cond.true3609 ], [ %.pre5749, %cond.false3611 ]
  %cond3614 = phi i8* [ %call.i5543, %cond.true3609 ], [ %add.ptr3612, %cond.false3611 ]
  %sub.ptr.lhs.cast3615 = ptrtoint i8* %cond3614 to i64
  %sub.ptr.rhs.cast3616 = ptrtoint i8* %710 to i64
  %sub.ptr.sub3617 = sub i64 %sub.ptr.lhs.cast3615, %sub.ptr.rhs.cast3616
  %conv3618 = trunc i64 %sub.ptr.sub3617 to i32
  %711 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx3620 = getelementptr inbounds i32* %711, i64 %idxprom36285402
  store i32 %conv3618, i32* %arrayidx3620, align 4, !tbaa !0
  %sub.ptr.lhs.cast3621 = ptrtoint i8* %locinput.11 to i64
  %sub.ptr.sub3623 = sub i64 %sub.ptr.lhs.cast3621, %sub.ptr.rhs.cast3616
  %conv3624 = trunc i64 %sub.ptr.sub3623 to i32
  %712 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3626 = getelementptr inbounds i32* %712, i64 %idxprom36285402
  store i32 %conv3624, i32* %arrayidx3626, align 4, !tbaa !0
  br label %if.end3631

if.else3627:                                      ; preds = %if.then3604
  %713 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3629 = getelementptr inbounds i32* %713, i64 %idxprom36285402
  store i32 -1, i32* %arrayidx3629, align 4, !tbaa !0
  br label %if.end3631

if.end3631:                                       ; preds = %cond.end3613, %if.else3627, %if.end3602
  %call3632 = call fastcc i32 @S_regmatch(%struct.regnode* %.add.ptr) #5
  %tobool3633 = icmp eq i32 %call3632, 0
  br i1 %tobool3633, label %if.end3635, label %return

if.end3635:                                       ; preds = %if.end3631
  %tobool3638 = icmp eq i32 %ln.9, 0
  %or.cond5500 = or i1 %tobool3638, %tobool3603.not
  br i1 %or.cond5500, label %if.end3642, label %if.then3639

if.then3639:                                      ; preds = %if.end3635
  %714 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3641 = getelementptr inbounds i32* %714, i64 %idxprom36285402
  store i32 -1, i32* %arrayidx3641, align 4, !tbaa !0
  br label %if.end3642

if.end3642:                                       ; preds = %if.end3635, %if.then3639
  store i8* %locinput.11, i8** @PL_reginput, align 8, !tbaa !3
  %715 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp3643 = icmp sgt i32 %715, %667
  br i1 %cmp3643, label %if.then3645, label %if.end3646

if.then3645:                                      ; preds = %if.end3642
  call void @Perl_leave_scope(i32 %667) #6
  br label %if.end3646

if.end3646:                                       ; preds = %if.then3645, %if.end3642
  br i1 %tobool262, label %if.then3648, label %if.else3654

if.then3648:                                      ; preds = %if.end3646
  %716 = load i8* %locinput.11, align 1, !tbaa !1
  %idxprom3649 = zext i8 %716 to i64
  %arrayidx3650 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom3649
  %717 = load i8* %arrayidx3650, align 1, !tbaa !1
  %idx.ext3652 = zext i8 %717 to i64
  %add.ptr3653 = getelementptr inbounds i8* %locinput.11, i64 %idx.ext3652
  br label %while.body3447

if.else3654:                                      ; preds = %if.end3646
  %incdec.ptr3655 = getelementptr inbounds i8* %locinput.11, i64 1
  br label %while.body3447

while.cond3658:                                   ; preds = %while.cond3658.preheader, %if.then3820
  %718 = phi i8* [ %727, %if.then3820 ], [ %666, %while.cond3658.preheader ]
  %ln.10 = phi i32 [ %inc3821, %if.then3820 ], [ %ln.7, %while.cond3658.preheader ]
  %cmp3659 = icmp sge i32 %n.2, %ln.10
  %cmp3665 = icmp sgt i32 %ln.10, 0
  %or.cond5501 = and i1 %cmp3662, %cmp3665
  %or.cond5769 = or i1 %cmp3659, %or.cond5501
  br i1 %or.cond5769, label %if.then3771, label %do_no.preheader

if.then3771:                                      ; preds = %while.cond3658
  br i1 %tobool3723, label %if.then3773, label %if.end3800

if.then3773:                                      ; preds = %if.then3771
  %tobool3774 = icmp eq i32 %ln.10, 0
  br i1 %tobool3774, label %if.else3796, label %if.then3775

if.then3775:                                      ; preds = %if.then3773
  %719 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool3777 = icmp eq i8 %719, 0
  br i1 %tobool3777, label %cond.false3780, label %cond.true3778

cond.true3778:                                    ; preds = %if.then3775
  %720 = load i8** @PL_bostr, align 8, !tbaa !3
  %call.i5535 = call fastcc i8* @S_reghop3(i8* %718, i32 -1, i8* %720) #6
  br label %cond.end3782

cond.false3780:                                   ; preds = %if.then3775
  %add.ptr3781 = getelementptr inbounds i8* %718, i64 -1
  %.pre5759 = load i8** @PL_bostr, align 8, !tbaa !3
  br label %cond.end3782

cond.end3782:                                     ; preds = %cond.false3780, %cond.true3778
  %721 = phi i8* [ %720, %cond.true3778 ], [ %.pre5759, %cond.false3780 ]
  %cond3783 = phi i8* [ %call.i5535, %cond.true3778 ], [ %add.ptr3781, %cond.false3780 ]
  %sub.ptr.lhs.cast3784 = ptrtoint i8* %cond3783 to i64
  %sub.ptr.rhs.cast3785 = ptrtoint i8* %721 to i64
  %sub.ptr.sub3786 = sub i64 %sub.ptr.lhs.cast3784, %sub.ptr.rhs.cast3785
  %conv3787 = trunc i64 %sub.ptr.sub3786 to i32
  %722 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx3789 = getelementptr inbounds i32* %722, i64 %idxprom37485395
  store i32 %conv3787, i32* %arrayidx3789, align 4, !tbaa !0
  %sub.ptr.lhs.cast3790 = ptrtoint i8* %718 to i64
  %sub.ptr.sub3792 = sub i64 %sub.ptr.lhs.cast3790, %sub.ptr.rhs.cast3785
  %conv3793 = trunc i64 %sub.ptr.sub3792 to i32
  %723 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3795 = getelementptr inbounds i32* %723, i64 %idxprom37485395
  store i32 %conv3793, i32* %arrayidx3795, align 4, !tbaa !0
  br label %if.end3800

if.else3796:                                      ; preds = %if.then3773
  %724 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3798 = getelementptr inbounds i32* %724, i64 %idxprom37485395
  store i32 -1, i32* %arrayidx3798, align 4, !tbaa !0
  br label %if.end3800

if.end3800:                                       ; preds = %cond.end3782, %if.else3796, %if.then3771
  %call3801 = call fastcc i32 @S_regmatch(%struct.regnode* %.add.ptr) #5
  %tobool3802 = icmp eq i32 %call3801, 0
  br i1 %tobool3802, label %if.end3804, label %return

if.end3804:                                       ; preds = %if.end3800
  %tobool3807 = icmp eq i32 %ln.10, 0
  %or.cond5503 = or i1 %tobool3807, %tobool3723.not
  br i1 %or.cond5503, label %if.end3811, label %if.then3808

if.then3808:                                      ; preds = %if.end3804
  %725 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3810 = getelementptr inbounds i32* %725, i64 %idxprom37485395
  store i32 -1, i32* %arrayidx3810, align 4, !tbaa !0
  br label %if.end3811

if.end3811:                                       ; preds = %if.end3804, %if.then3808
  %726 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp3812 = icmp sgt i32 %726, %667
  br i1 %cmp3812, label %if.then3814, label %if.end3817

if.then3814:                                      ; preds = %if.end3811
  call void @Perl_leave_scope(i32 %667) #6
  br label %if.end3817

if.end3817:                                       ; preds = %if.then3814, %if.end3811
  store i8* %718, i8** @PL_reginput, align 8, !tbaa !3
  %call3818 = call fastcc i32 @S_regrepeat(%struct.regnode* %scan.2, i32 1) #5
  %tobool3819 = icmp eq i32 %call3818, 0
  br i1 %tobool3819, label %do_no.preheader, label %if.then3820

if.then3820:                                      ; preds = %if.end3817
  %inc3821 = add nsw i32 %ln.10, 1
  %727 = load i8** @PL_reginput, align 8, !tbaa !3
  br label %while.cond3658

if.else3826:                                      ; preds = %assume_ok_easy
  %call3828 = call fastcc i32 @S_regrepeat(%struct.regnode* %scan.2, i32 %n.2) #5
  %728 = load i8** @PL_reginput, align 8, !tbaa !3
  %cmp3829 = icmp slt i32 %ln.7, %call3828
  br i1 %cmp3829, label %land.lhs.true3831, label %if.end3868

land.lhs.true3831:                                ; preds = %if.else3826
  %729 = load i8* %type3010, align 1, !tbaa !1
  %idxprom3833 = zext i8 %729 to i64
  %arrayidx3834 = getelementptr inbounds [0 x i8]* @PL_regkind, i64 0, i64 %idxprom3833
  %730 = load i8* %arrayidx3834, align 1, !tbaa !1
  %cmp3836 = icmp eq i8 %730, 6
  br i1 %cmp3836, label %land.lhs.true3838, label %if.end3868

land.lhs.true3838:                                ; preds = %land.lhs.true3831
  %731 = load i32* @PL_multiline, align 4, !tbaa !0
  %tobool3839 = icmp ne i32 %731, 0
  %cmp3843 = icmp eq i8 %729, 7
  %or.cond5504 = or i1 %tobool3839, %cmp3843
  br i1 %or.cond5504, label %lor.lhs.false3845, label %if.then3855

lor.lhs.false3845:                                ; preds = %land.lhs.true3838
  switch i8 %729, label %if.end3868 [
    i8 8, label %if.then3855
    i8 5, label %if.then3855
  ]

if.then3855:                                      ; preds = %lor.lhs.false3845, %lor.lhs.false3845, %land.lhs.true3838
  %add.ptr3856 = getelementptr inbounds i8* %728, i64 -1
  %732 = load i8* %add.ptr3856, align 1, !tbaa !1
  %cmp3858 = icmp eq i8 %732, 10
  br i1 %cmp3858, label %land.lhs.true3860, label %if.end3868

land.lhs.true3860:                                ; preds = %if.then3855
  %not.cmp3863 = icmp ne i8 %729, 5
  %dec3866 = sext i1 %not.cmp3863 to i32
  %call3828.dec3866 = add nsw i32 %dec3866, %call3828
  br label %if.end3868

if.end3868:                                       ; preds = %land.lhs.true3860, %lor.lhs.false3845, %if.then3855, %land.lhs.true3831, %if.else3826
  %ln.11 = phi i32 [ %call3828, %if.then3855 ], [ %ln.7, %land.lhs.true3831 ], [ %ln.7, %if.else3826 ], [ %ln.7, %lor.lhs.false3845 ], [ %call3828.dec3866, %land.lhs.true3860 ]
  %733 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %tobool3869 = icmp eq i32 %paren.0, 0
  %cmp39885597 = icmp slt i32 %call3828, %ln.11
  br i1 %tobool3869, label %while.cond3987.preheader, label %while.cond3872.preheader

while.cond3872.preheader:                         ; preds = %if.end3868
  br i1 %cmp39885597, label %do_no.preheader, label %while.body3875.lr.ph

while.body3875.lr.ph:                             ; preds = %while.cond3872.preheader
  %cmp3876 = icmp eq i32 %c1.3, -1000
  %idxprom39555387 = zext i32 %paren.0 to i64
  %conv3922 = sext i32 %c1.3 to i64
  %conv3926 = sext i32 %c2.3 to i64
  br label %while.body3875

while.cond3987.preheader:                         ; preds = %if.end3868
  br i1 %cmp39885597, label %do_no.preheader, label %while.body3990.lr.ph

while.body3990.lr.ph:                             ; preds = %while.cond3987.preheader
  %cmp3991 = icmp eq i32 %c1.3, -1000
  %conv4037 = sext i32 %c1.3 to i64
  %conv4041 = sext i32 %c2.3 to i64
  br label %while.body3990

while.body3875:                                   ; preds = %cond.end3982, %while.body3875.lr.ph
  %n.35607 = phi i32 [ %call3828, %while.body3875.lr.ph ], [ %dec3975, %cond.end3982 ]
  %734 = phi i8* [ %728, %while.body3875.lr.ph ], [ %cond3983, %cond.end3982 ]
  br i1 %cmp3876, label %if.then3931, label %if.then3878

if.then3878:                                      ; preds = %while.body3875
  br i1 %tobool82, label %if.else3914, label %if.then3880

if.then3880:                                      ; preds = %if.then3878
  %735 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3881 = getelementptr inbounds %struct.cop* %735, i64 0, i32 14
  %736 = load %struct.sv** %cop_warnings3881, align 8, !tbaa !3
  %cmp3882 = icmp eq %struct.sv* %736, null
  br i1 %cmp3882, label %lor.rhs3900, label %land.lhs.true3884

land.lhs.true3884:                                ; preds = %if.then3880
  %737 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3885 = getelementptr inbounds %struct.cop* %737, i64 0, i32 14
  %738 = load %struct.sv** %cop_warnings3885, align 8, !tbaa !3
  %cmp3886 = icmp eq %struct.sv* %738, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3886, label %lor.rhs3900, label %land.lhs.true3888

land.lhs.true3888:                                ; preds = %land.lhs.true3884
  %739 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3889 = getelementptr inbounds %struct.cop* %739, i64 0, i32 14
  %740 = load %struct.sv** %cop_warnings3889, align 8, !tbaa !3
  %cmp3890 = icmp eq %struct.sv* %740, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3890, label %lor.end3910, label %lor.lhs.false3892

lor.lhs.false3892:                                ; preds = %land.lhs.true3888
  %741 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3893 = getelementptr inbounds %struct.cop* %741, i64 0, i32 14
  %742 = load %struct.sv** %cop_warnings3893, align 8, !tbaa !3
  %sv_any3894 = getelementptr inbounds %struct.sv* %742, i64 0, i32 0
  %743 = load i8** %sv_any3894, align 8, !tbaa !3
  %xpv_pv3895 = bitcast i8* %743 to i8**
  %744 = load i8** %xpv_pv3895, align 8, !tbaa !3
  %arrayidx3896 = getelementptr inbounds i8* %744, i64 11
  %745 = load i8* %arrayidx3896, align 1, !tbaa !1
  %and3898 = and i8 %745, 1
  %tobool3899 = icmp eq i8 %and3898, 0
  br i1 %tobool3899, label %lor.rhs3900, label %lor.end3910

lor.rhs3900:                                      ; preds = %lor.lhs.false3892, %land.lhs.true3884, %if.then3880
  %746 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3901 = getelementptr inbounds %struct.cop* %746, i64 0, i32 14
  %747 = load %struct.sv** %cop_warnings3901, align 8, !tbaa !3
  %cmp3902 = icmp eq %struct.sv* %747, null
  br i1 %cmp3902, label %land.rhs3904, label %lor.end3910

land.rhs3904:                                     ; preds = %lor.rhs3900
  %748 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and3906 = and i8 %748, 1
  %tobool3907 = icmp ne i8 %and3906, 0
  %phitmp5389 = select i1 %tobool3907, i32 0, i32 255
  br label %lor.end3910

lor.end3910:                                      ; preds = %lor.lhs.false3892, %lor.rhs3900, %land.rhs3904, %land.lhs.true3888
  %749 = phi i32 [ 0, %lor.lhs.false3892 ], [ 0, %land.lhs.true3888 ], [ 255, %lor.rhs3900 ], [ %phitmp5389, %land.rhs3904 ]
  %call3913 = call i64 @Perl_utf8n_to_uvuni(i8* %734, i64 13, i64* null, i32 %749) #6
  br label %if.end3918

if.else3914:                                      ; preds = %if.then3878
  %750 = load i8* %734, align 1, !tbaa !1
  %conv3916 = zext i8 %750 to i64
  br label %if.end3918

if.end3918:                                       ; preds = %lor.end3910, %if.else3914
  %c3871.1 = phi i64 [ %call3913, %lor.end3910 ], [ %conv3916, %if.else3914 ]
  %cmp3923 = icmp eq i64 %c3871.1, %conv3922
  %cmp3927 = icmp eq i64 %c3871.1, %conv3926
  %or.cond5770 = or i1 %cmp3923, %cmp3927
  br i1 %or.cond5770, label %if.then3931, label %if.end3974

if.then3931:                                      ; preds = %if.end3918, %while.body3875
  %tobool3932 = icmp eq i32 %n.35607, 0
  br i1 %tobool3932, label %if.else3954, label %if.then3933

if.then3933:                                      ; preds = %if.then3931
  %751 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool3935 = icmp eq i8 %751, 0
  %752 = load i8** @PL_reginput, align 8, !tbaa !3
  br i1 %tobool3935, label %cond.false3938, label %cond.true3936

cond.true3936:                                    ; preds = %if.then3933
  %753 = load i8** @PL_bostr, align 8, !tbaa !3
  %call.i5531 = call fastcc i8* @S_reghop3(i8* %752, i32 -1, i8* %753) #6
  br label %cond.end3940

cond.false3938:                                   ; preds = %if.then3933
  %add.ptr3939 = getelementptr inbounds i8* %752, i64 -1
  %.pre5748 = load i8** @PL_bostr, align 8, !tbaa !3
  br label %cond.end3940

cond.end3940:                                     ; preds = %cond.false3938, %cond.true3936
  %754 = phi i8* [ %753, %cond.true3936 ], [ %.pre5748, %cond.false3938 ]
  %cond3941 = phi i8* [ %call.i5531, %cond.true3936 ], [ %add.ptr3939, %cond.false3938 ]
  %sub.ptr.lhs.cast3942 = ptrtoint i8* %cond3941 to i64
  %sub.ptr.rhs.cast3943 = ptrtoint i8* %754 to i64
  %sub.ptr.sub3944 = sub i64 %sub.ptr.lhs.cast3942, %sub.ptr.rhs.cast3943
  %conv3945 = trunc i64 %sub.ptr.sub3944 to i32
  %755 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx3947 = getelementptr inbounds i32* %755, i64 %idxprom39555387
  store i32 %conv3945, i32* %arrayidx3947, align 4, !tbaa !0
  %sub.ptr.lhs.cast3948 = ptrtoint i8* %752 to i64
  %sub.ptr.sub3950 = sub i64 %sub.ptr.lhs.cast3948, %sub.ptr.rhs.cast3943
  %conv3951 = trunc i64 %sub.ptr.sub3950 to i32
  %756 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3953 = getelementptr inbounds i32* %756, i64 %idxprom39555387
  store i32 %conv3951, i32* %arrayidx3953, align 4, !tbaa !0
  br label %if.end3958

if.else3954:                                      ; preds = %if.then3931
  %757 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3956 = getelementptr inbounds i32* %757, i64 %idxprom39555387
  store i32 -1, i32* %arrayidx3956, align 4, !tbaa !0
  br label %if.end3958

if.end3958:                                       ; preds = %cond.end3940, %if.else3954
  %call3959 = call fastcc i32 @S_regmatch(%struct.regnode* %.add.ptr) #5
  %tobool3960 = icmp eq i32 %call3959, 0
  br i1 %tobool3960, label %if.end3962, label %return

if.end3962:                                       ; preds = %if.end3958
  %tobool3965 = icmp eq i32 %n.35607, 0
  br i1 %tobool3965, label %if.end3969, label %if.then3966

if.then3966:                                      ; preds = %if.end3962
  %758 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx3968 = getelementptr inbounds i32* %758, i64 %idxprom39555387
  store i32 -1, i32* %arrayidx3968, align 4, !tbaa !0
  br label %if.end3969

if.end3969:                                       ; preds = %if.end3962, %if.then3966
  %759 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp3970 = icmp sgt i32 %759, %733
  br i1 %cmp3970, label %if.then3972, label %if.end3974

if.then3972:                                      ; preds = %if.end3969
  call void @Perl_leave_scope(i32 %733) #6
  br label %if.end3974

if.end3974:                                       ; preds = %if.end3918, %if.end3969, %if.then3972
  %dec3975 = add nsw i32 %n.35607, -1
  %760 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool3977 = icmp eq i8 %760, 0
  br i1 %tobool3977, label %cond.false3980, label %cond.true3978

cond.true3978:                                    ; preds = %if.end3974
  %761 = load i8** @PL_bostr, align 8, !tbaa !3
  %call.i5530 = call fastcc i8* @S_reghop3(i8* %734, i32 -1, i8* %761) #6
  br label %cond.end3982

cond.false3980:                                   ; preds = %if.end3974
  %add.ptr3981 = getelementptr inbounds i8* %734, i64 -1
  br label %cond.end3982

cond.end3982:                                     ; preds = %cond.false3980, %cond.true3978
  %cond3983 = phi i8* [ %call.i5530, %cond.true3978 ], [ %add.ptr3981, %cond.false3980 ]
  store i8* %cond3983, i8** @PL_reginput, align 8, !tbaa !3
  %cmp3873 = icmp sgt i32 %n.35607, %ln.11
  br i1 %cmp3873, label %while.body3875, label %do_no.preheader

while.body3990:                                   ; preds = %cond.end4097, %while.body3990.lr.ph
  %n.45600 = phi i32 [ %call3828, %while.body3990.lr.ph ], [ %dec4090, %cond.end4097 ]
  %762 = phi i8* [ %728, %while.body3990.lr.ph ], [ %cond4098, %cond.end4097 ]
  br i1 %cmp3991, label %if.end4073, label %if.then3993

if.then3993:                                      ; preds = %while.body3990
  br i1 %tobool82, label %if.else4029, label %if.then3995

if.then3995:                                      ; preds = %if.then3993
  %763 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings3996 = getelementptr inbounds %struct.cop* %763, i64 0, i32 14
  %764 = load %struct.sv** %cop_warnings3996, align 8, !tbaa !3
  %cmp3997 = icmp eq %struct.sv* %764, null
  br i1 %cmp3997, label %lor.rhs4015, label %land.lhs.true3999

land.lhs.true3999:                                ; preds = %if.then3995
  %765 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings4000 = getelementptr inbounds %struct.cop* %765, i64 0, i32 14
  %766 = load %struct.sv** %cop_warnings4000, align 8, !tbaa !3
  %cmp4001 = icmp eq %struct.sv* %766, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp4001, label %lor.rhs4015, label %land.lhs.true4003

land.lhs.true4003:                                ; preds = %land.lhs.true3999
  %767 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings4004 = getelementptr inbounds %struct.cop* %767, i64 0, i32 14
  %768 = load %struct.sv** %cop_warnings4004, align 8, !tbaa !3
  %cmp4005 = icmp eq %struct.sv* %768, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp4005, label %lor.end4025, label %lor.lhs.false4007

lor.lhs.false4007:                                ; preds = %land.lhs.true4003
  %769 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings4008 = getelementptr inbounds %struct.cop* %769, i64 0, i32 14
  %770 = load %struct.sv** %cop_warnings4008, align 8, !tbaa !3
  %sv_any4009 = getelementptr inbounds %struct.sv* %770, i64 0, i32 0
  %771 = load i8** %sv_any4009, align 8, !tbaa !3
  %xpv_pv4010 = bitcast i8* %771 to i8**
  %772 = load i8** %xpv_pv4010, align 8, !tbaa !3
  %arrayidx4011 = getelementptr inbounds i8* %772, i64 11
  %773 = load i8* %arrayidx4011, align 1, !tbaa !1
  %and4013 = and i8 %773, 1
  %tobool4014 = icmp eq i8 %and4013, 0
  br i1 %tobool4014, label %lor.rhs4015, label %lor.end4025

lor.rhs4015:                                      ; preds = %lor.lhs.false4007, %land.lhs.true3999, %if.then3995
  %774 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings4016 = getelementptr inbounds %struct.cop* %774, i64 0, i32 14
  %775 = load %struct.sv** %cop_warnings4016, align 8, !tbaa !3
  %cmp4017 = icmp eq %struct.sv* %775, null
  br i1 %cmp4017, label %land.rhs4019, label %lor.end4025

land.rhs4019:                                     ; preds = %lor.rhs4015
  %776 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and4021 = and i8 %776, 1
  %tobool4022 = icmp ne i8 %and4021, 0
  %phitmp = select i1 %tobool4022, i32 0, i32 255
  br label %lor.end4025

lor.end4025:                                      ; preds = %lor.lhs.false4007, %lor.rhs4015, %land.rhs4019, %land.lhs.true4003
  %777 = phi i32 [ 0, %lor.lhs.false4007 ], [ 0, %land.lhs.true4003 ], [ 255, %lor.rhs4015 ], [ %phitmp, %land.rhs4019 ]
  %call4028 = call i64 @Perl_utf8n_to_uvuni(i8* %762, i64 13, i64* null, i32 %777) #6
  br label %if.end4033

if.else4029:                                      ; preds = %if.then3993
  %778 = load i8* %762, align 1, !tbaa !1
  %conv4031 = zext i8 %778 to i64
  br label %if.end4033

if.end4033:                                       ; preds = %lor.end4025, %if.else4029
  %c3986.1 = phi i64 [ %call4028, %lor.end4025 ], [ %conv4031, %if.else4029 ]
  %cmp4038 = icmp eq i64 %c3986.1, %conv4037
  %cmp4042 = icmp eq i64 %c3986.1, %conv4041
  %or.cond5771 = or i1 %cmp4038, %cmp4042
  br i1 %or.cond5771, label %if.end4073, label %if.end4089

if.end4073:                                       ; preds = %if.end4033, %while.body3990
  %call4074 = call fastcc i32 @S_regmatch(%struct.regnode* %.add.ptr) #5
  %tobool4075 = icmp eq i32 %call4074, 0
  br i1 %tobool4075, label %if.end4084, label %return

if.end4084:                                       ; preds = %if.end4073
  %779 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp4085 = icmp sgt i32 %779, %733
  br i1 %cmp4085, label %if.then4087, label %if.end4089

if.then4087:                                      ; preds = %if.end4084
  call void @Perl_leave_scope(i32 %733) #6
  br label %if.end4089

if.end4089:                                       ; preds = %if.end4033, %if.end4084, %if.then4087
  %dec4090 = add nsw i32 %n.45600, -1
  %780 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool4092 = icmp eq i8 %780, 0
  br i1 %tobool4092, label %cond.false4095, label %cond.true4093

cond.true4093:                                    ; preds = %if.end4089
  %781 = load i8** @PL_bostr, align 8, !tbaa !3
  %call.i5528 = call fastcc i8* @S_reghop3(i8* %762, i32 -1, i8* %781) #6
  br label %cond.end4097

cond.false4095:                                   ; preds = %if.end4089
  %add.ptr4096 = getelementptr inbounds i8* %762, i64 -1
  br label %cond.end4097

cond.end4097:                                     ; preds = %cond.false4095, %cond.true4093
  %cond4098 = phi i8* [ %call.i5528, %cond.true4093 ], [ %add.ptr4096, %cond.false4095 ]
  store i8* %cond4098, i8** @PL_reginput, align 8, !tbaa !3
  %cmp3988 = icmp sgt i32 %n.45600, %ln.11
  br i1 %cmp3988, label %while.body3990, label %do_no.preheader

sw.bb4102:                                        ; preds = %while.body
  %782 = load %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %tobool4103 = icmp eq %struct.re_cc_state* %782, null
  br i1 %tobool4103, label %if.end4128, label %if.then4104

if.then4104:                                      ; preds = %sw.bb4102
  %783 = load %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %784 = load %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %call4108 = call fastcc i32 @S_regcppush(i32 0) #5
  %785 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %786 = load %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %ss4109 = getelementptr inbounds %struct.re_cc_state* %786, i64 0, i32 0
  %787 = load i32* %ss4109, align 4, !tbaa !0
  store i32 %787, i32* @PL_savestack_ix, align 4, !tbaa !0
  call fastcc void @S_regcppop() #6
  store i32 %785, i32* @PL_savestack_ix, align 4, !tbaa !0
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  %788 = load %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %re4111 = getelementptr inbounds %struct.re_cc_state* %788, i64 0, i32 4
  %789 = load %struct.regexp** %re4111, align 8, !tbaa !3
  %precomp.i5525 = getelementptr inbounds %struct.regexp* %789, i64 0, i32 4
  %790 = load i8** %precomp.i5525, align 8, !tbaa !3
  store i8* %790, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i5526 = getelementptr inbounds %struct.regexp* %789, i64 0, i32 12
  %791 = load i32* %nparens.i5526, align 4, !tbaa !0
  store i32 %791, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i5527 = getelementptr inbounds %struct.regexp* %789, i64 0, i32 5
  %792 = load %struct.reg_data** %data.i5527, align 8, !tbaa !3
  store %struct.reg_data* %792, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %789, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %cc4112 = getelementptr inbounds %struct.re_cc_state* %788, i64 0, i32 3
  %793 = load %struct.curcur** %cc4112, align 8, !tbaa !3
  store %struct.curcur* %793, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  %prev4113 = getelementptr inbounds %struct.re_cc_state* %788, i64 0, i32 2
  %794 = load %struct.re_cc_state** %prev4113, align 8, !tbaa !3
  store %struct.re_cc_state* %794, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %node4114 = getelementptr inbounds %struct.re_cc_state* %782, i64 0, i32 1
  %795 = load %struct.regnode** %node4114, align 8, !tbaa !3
  %call4115 = call fastcc i32 @S_regmatch(%struct.regnode* %795) #5
  %tobool4116 = icmp eq i32 %call4115, 0
  br i1 %tobool4116, label %if.end4122, label %if.then4117

if.then4117:                                      ; preds = %if.then4104
  store %struct.re_cc_state* %782, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  %796 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp4118 = icmp sgt i32 %796, %call4108
  br i1 %cmp4118, label %if.then4120, label %return

if.then4120:                                      ; preds = %if.then4117
  call void @Perl_leave_scope(i32 %call4108) #6
  br label %return

if.end4122:                                       ; preds = %if.then4104
  %797 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %cmp4123 = icmp sgt i32 %797, %785
  br i1 %cmp4123, label %if.then4125, label %if.end4126

if.then4125:                                      ; preds = %if.end4122
  call void @Perl_leave_scope(i32 %785) #6
  br label %if.end4126

if.end4126:                                       ; preds = %if.then4125, %if.end4122
  call fastcc void @S_regcppop() #5
  store %struct.re_cc_state* %782, %struct.re_cc_state** @PL_reg_call_cc, align 8, !tbaa !3
  store %struct.curcur* %783, %struct.curcur** @PL_regcc, align 8, !tbaa !3
  store %struct.regexp* %784, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  %precomp.i5513 = getelementptr inbounds %struct.regexp* %784, i64 0, i32 4
  %798 = load i8** %precomp.i5513, align 8, !tbaa !3
  store i8* %798, i8** @PL_regprecomp, align 8, !tbaa !3
  %nparens.i5514 = getelementptr inbounds %struct.regexp* %784, i64 0, i32 12
  %799 = load i32* %nparens.i5514, align 4, !tbaa !0
  store i32 %799, i32* @PL_regnpar, align 4, !tbaa !0
  %data.i5515 = getelementptr inbounds %struct.regexp* %784, i64 0, i32 5
  %800 = load %struct.reg_data** %data.i5515, align 8, !tbaa !3
  store %struct.reg_data* %800, %struct.reg_data** @PL_regdata, align 8, !tbaa !3
  store %struct.regexp* %784, %struct.regexp** @PL_reg_re, align 8, !tbaa !3
  br label %do_no.preheader

if.end4128:                                       ; preds = %sw.bb4102
  %801 = load i8** @PL_regtill, align 8, !tbaa !3
  %cmp4129 = icmp ult i8* %locinput.0, %801
  br i1 %cmp4129, label %do_no.preheader, label %if.end4132

if.end4132:                                       ; preds = %if.end4128
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  br label %return

sw.bb4133:                                        ; preds = %while.body
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  br label %return

sw.bb4134:                                        ; preds = %while.body
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  br label %do_ifmatch

sw.bb4135:                                        ; preds = %while.body
  %flags4136 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %802 = load i8* %flags4136, align 1, !tbaa !1
  %tobool4137 = icmp eq i8 %802, 0
  br i1 %tobool4137, label %if.else4168, label %if.then4138

if.then4138:                                      ; preds = %sw.bb4135
  %803 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool4140 = icmp eq i8 %803, 0
  br i1 %tobool4140, label %cond.false4146, label %cond.true4141

cond.true4141:                                    ; preds = %if.then4138
  %conv4143 = zext i8 %802 to i32
  %sub4144 = sub nsw i32 0, %conv4143
  %cmp.i5510 = icmp sgt i32 %sub4144, -1
  %804 = load i8** @PL_regeol, align 8, !tbaa !3
  %805 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i5511 = select i1 %cmp.i5510, i8* %804, i8* %805
  %call.i5512 = call fastcc i8* @S_reghopmaybe3(i8* %locinput.0, i32 %sub4144, i8* %cond.i5511) #6
  br label %cond.end4163

cond.false4146:                                   ; preds = %if.then4138
  %idx.ext4149 = zext i8 %802 to i64
  %idx.neg4150 = sub i64 0, %idx.ext4149
  %add.ptr4151 = getelementptr inbounds i8* %locinput.0, i64 %idx.neg4150
  %806 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp4152 = icmp ult i8* %add.ptr4151, %806
  %.add.ptr4151 = select i1 %cmp4152, i8* null, i8* %add.ptr4151
  br label %cond.end4163

cond.end4163:                                     ; preds = %cond.false4146, %cond.true4141
  %cond4164 = phi i8* [ %call.i5512, %cond.true4141 ], [ %.add.ptr4151, %cond.false4146 ]
  %tobool4165 = icmp eq i8* %cond4164, null
  br i1 %tobool4165, label %say_yes, label %if.end4167

if.end4167:                                       ; preds = %cond.end4163
  store i8* %cond4164, i8** @PL_reginput, align 8, !tbaa !3
  br label %do_ifmatch

if.else4168:                                      ; preds = %sw.bb4135
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  br label %do_ifmatch

sw.bb4170:                                        ; preds = %while.body
  %flags4171 = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 0
  %807 = load i8* %flags4171, align 1, !tbaa !1
  %tobool4172 = icmp eq i8 %807, 0
  br i1 %tobool4172, label %if.else4203, label %if.then4173

if.then4173:                                      ; preds = %sw.bb4170
  %808 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool4175 = icmp eq i8 %808, 0
  br i1 %tobool4175, label %cond.false4181, label %cond.true4176

cond.true4176:                                    ; preds = %if.then4173
  %conv4178 = zext i8 %807 to i32
  %sub4179 = sub nsw i32 0, %conv4178
  %cmp.i = icmp sgt i32 %sub4179, -1
  %809 = load i8** @PL_regeol, align 8, !tbaa !3
  %810 = load i8** @PL_bostr, align 8, !tbaa !3
  %cond.i = select i1 %cmp.i, i8* %809, i8* %810
  %call.i = call fastcc i8* @S_reghopmaybe3(i8* %locinput.0, i32 %sub4179, i8* %cond.i) #6
  br label %cond.end4198

cond.false4181:                                   ; preds = %if.then4173
  %idx.ext4184 = zext i8 %807 to i64
  %idx.neg4185 = sub i64 0, %idx.ext4184
  %add.ptr4186 = getelementptr inbounds i8* %locinput.0, i64 %idx.neg4185
  %811 = load i8** @PL_bostr, align 8, !tbaa !3
  %cmp4187 = icmp ult i8* %add.ptr4186, %811
  %.add.ptr4186 = select i1 %cmp4187, i8* null, i8* %add.ptr4186
  br label %cond.end4198

cond.end4198:                                     ; preds = %cond.false4181, %cond.true4176
  %cond4199 = phi i8* [ %call.i, %cond.true4176 ], [ %.add.ptr4186, %cond.false4181 ]
  %tobool4200 = icmp eq i8* %cond4199, null
  br i1 %tobool4200, label %say_no, label %if.end4202

if.end4202:                                       ; preds = %cond.end4198
  store i8* %cond4199, i8** @PL_reginput, align 8, !tbaa !3
  br label %do_ifmatch

if.else4203:                                      ; preds = %sw.bb4170
  store i8* %locinput.0, i8** @PL_reginput, align 8, !tbaa !3
  br label %do_ifmatch

do_ifmatch:                                       ; preds = %if.end4202, %if.else4203, %if.end4167, %if.else4168, %sw.bb4134
  %n.5 = phi i32 [ 1, %if.end4202 ], [ 1, %if.else4203 ], [ 0, %if.end4167 ], [ 0, %if.else4168 ], [ 1, %sw.bb4134 ]
  %add.ptr4206 = getelementptr inbounds %struct.regnode* %scan.0, i64 2
  %call4207 = call fastcc i32 @S_regmatch(%struct.regnode* %add.ptr4206) #5
  %cmp4208 = icmp eq i32 %call4207, %n.5
  br i1 %cmp4208, label %do_ifmatch.say_yes_crit_edge, label %say_no

do_ifmatch.say_yes_crit_edge:                     ; preds = %do_ifmatch
  %.pre5760 = load i8* %type, align 1, !tbaa !1
  br label %say_yes

say_no:                                           ; preds = %cond.end4198, %do_ifmatch
  %tobool4211 = icmp eq i32 %logical.0, 0
  br i1 %tobool4211, label %do_no.preheader, label %do_longjump

say_yes:                                          ; preds = %do_ifmatch.say_yes_crit_edge, %cond.end4163
  %812 = phi i8 [ %.pre5760, %do_ifmatch.say_yes_crit_edge ], [ %7, %cond.end4163 ]
  %tobool4215 = icmp eq i32 %logical.0, 0
  %sw.0. = select i1 %tobool4215, i32 %sw.0, i32 1
  %cmp4220 = icmp eq i8 %812, 52
  br i1 %cmp4220, label %if.then4222, label %do_longjump

if.then4222:                                      ; preds = %say_yes
  %813 = load i8** @PL_reginput, align 8, !tbaa !3
  %814 = load i8* %813, align 1, !tbaa !1
  %conv4223 = zext i8 %814 to i32
  br label %do_longjump

do_longjump:                                      ; preds = %say_no, %while.body, %if.then4222, %say_yes
  %logical.3 = phi i32 [ %logical.0, %while.body ], [ 0, %if.then4222 ], [ 0, %say_yes ], [ 0, %say_no ]
  %sw.2 = phi i32 [ %sw.0, %while.body ], [ %sw.0., %if.then4222 ], [ %sw.0., %say_yes ], [ 0, %say_no ]
  %locinput.16 = phi i8* [ %locinput.0, %while.body ], [ %813, %if.then4222 ], [ %locinput.0, %say_yes ], [ %locinput.0, %say_no ]
  %nextchr.2 = phi i32 [ %nextchr.0, %while.body ], [ %conv4223, %if.then4222 ], [ %nextchr.0, %say_yes ], [ %nextchr.0, %say_no ]
  %arg14226 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %815 = bitcast %struct.regnode* %arg14226 to i32*
  %816 = load i32* %815, align 4, !tbaa !0
  %idx.ext4227 = zext i32 %816 to i64
  %add.ptr4228 = getelementptr inbounds %struct.regnode* %scan.0, i64 %idx.ext4227
  %cmp4229 = icmp eq i32 %816, 0
  %.add.ptr4228 = select i1 %cmp4229, %struct.regnode* null, %struct.regnode* %add.ptr4228
  br label %while.cond

sw.default:                                       ; preds = %while.body
  %817 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !3
  %tobool4233 = icmp eq %struct.gv* %817, null
  br i1 %tobool4233, label %cond.false4254, label %land.lhs.true4234

land.lhs.true4234:                                ; preds = %sw.default
  %sv_flags4235 = getelementptr inbounds %struct.gv* %817, i64 0, i32 2
  %818 = load i32* %sv_flags4235, align 4, !tbaa !0
  %and4236 = and i32 %818, 255
  %cmp4237 = icmp eq i32 %and4236, 13
  br i1 %cmp4237, label %land.lhs.true4239, label %cond.false4254

land.lhs.true4239:                                ; preds = %land.lhs.true4234
  %sv_any4240 = getelementptr inbounds %struct.gv* %817, i64 0, i32 0
  %819 = load %struct.xpvgv** %sv_any4240, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %819, i64 0, i32 7
  %820 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_io = getelementptr inbounds %struct.gp* %820, i64 0, i32 2
  %821 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool4241 = icmp eq %struct.io* %821, null
  br i1 %tobool4241, label %cond.false4254, label %land.lhs.true4242

land.lhs.true4242:                                ; preds = %land.lhs.true4239
  %sv_any4246 = getelementptr inbounds %struct.io* %821, i64 0, i32 0
  %822 = load %struct.xpvio** %sv_any4246, align 8, !tbaa !3
  %xio_ofp = getelementptr inbounds %struct.xpvio* %822, i64 0, i32 8
  %823 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !3
  %tobool4247 = icmp eq %struct._PerlIO** %823, null
  br i1 %tobool4247, label %cond.false4254, label %cond.end4256

cond.false4254:                                   ; preds = %land.lhs.true4242, %land.lhs.true4239, %sw.default, %land.lhs.true4234
  %call4255 = call %struct._PerlIO** @Perl_PerlIO_stderr() #6
  %.pre = load i8* %type, align 1, !tbaa !1
  br label %cond.end4256

cond.end4256:                                     ; preds = %land.lhs.true4242, %cond.false4254
  %824 = phi i8 [ %.pre, %cond.false4254 ], [ %7, %land.lhs.true4242 ]
  %cond4257 = phi %struct._PerlIO** [ %call4255, %cond.false4254 ], [ %823, %land.lhs.true4242 ]
  %825 = ptrtoint %struct.regnode* %scan.0 to i64
  %conv4259 = zext i8 %824 to i32
  %call4260 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond4257, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i64 %825, i32 %conv4259) #6
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0)) #6
  br label %while.cond

while.end4261:                                    ; preds = %while.cond
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0)) #6
  br label %do_no.preheader

do_no.preheader:                                  ; preds = %while.cond3658, %while.cond2594, %if.else2667, %lor.end218, %while.body184, %lor.end, %while.body146, %lor.lhs.false1414, %if.end1407, %while.body1403, %assume_ok_REG, %cond.end2977, %if.end2659, %while.cond3872.preheader, %cond.end3982, %while.cond3987.preheader, %cond.end4097, %if.end3589, %if.then3596, %if.end3817, %if.end4126, %land.lhs.true3382, %land.lhs.true2351, %if.then2273, %if.then2263, %if.then2112, %if.then2102, %if.then2034, %if.then2024, %if.end1448, %land.lhs.true1430, %sw.bb1363, %while.end1352, %cond.true1297, %cond.true1213, %cond.false1219, %cond.false1044, %cond.false1009, %if.end907, %cond.true678, %lor.lhs.false690, %cond.false592, %lor.lhs.false583, %no_anyof, %land.lhs.true456, %land.lhs.true460, %land.lhs.true481, %if.end358, %if.then277, %land.lhs.true280, %land.lhs.true300, %land.lhs.true321, %land.lhs.true326, %land.lhs.true332, %if.end235, %if.then116, %if.then83, %if.end65, %sw.bb38, %sw.bb33, %land.lhs.true26, %land.lhs.true12, %while.end4261, %if.end1835, %if.end1823, %if.end4128, %if.end1787, %say_no, %if.end2252, %if.else2268, %if.end2090, %if.else2107, %if.end2016, %if.else2029, %if.then1906, %cond.false1476, %cond.true1473, %cond.true1464, %lor.lhs.false1435, %sw.bb1318, %if.end1328, %land.lhs.true1307, %cond.end1280, %cond.true1253, %sw.bb1155, %land.lhs.true1223, %cond.end1196, %cond.true1169, %land.lhs.true1142, %cond.end1106, %cond.true1079, %sw.bb931, %land.lhs.true1048, %land.lhs.true1013, %cond.end977, %cond.true950, %cond.end661, %cond.true629, %sw.bb509, %cond.end554, %cond.true523, %if.end394, %cond.false377, %cond.true374, %land.lhs.true345, %if.end230, %land.lhs.true246, %sw.bb70, %lor.lhs.false, %land.lhs.true, %lor.lhs.false21, %meol, %seol, %sw.bb75, %sw.bb96, %sw.bb105, %if.end432, %land.lhs.true596, %sw.bb612, %land.lhs.true703, %cond.true994, %cond.true1029, %sw.bb1062, %cond.true1123, %cond.true1123, %cond.true1123, %cond.true1123, %cond.true1123, %sw.bb1236, %cleanup, %land.lhs.true446
  %logical.5.ph = phi i32 [ %logical.0, %land.lhs.true446 ], [ 0, %cleanup ], [ %logical.0, %sw.bb1236 ], [ %logical.0, %cond.true1123 ], [ %logical.0, %cond.true1123 ], [ %logical.0, %cond.true1123 ], [ %logical.0, %cond.true1123 ], [ %logical.0, %cond.true1123 ], [ %logical.0, %sw.bb1062 ], [ %logical.0, %cond.true1029 ], [ %logical.0, %cond.true994 ], [ %logical.0, %land.lhs.true703 ], [ %logical.0, %sw.bb612 ], [ %logical.0, %land.lhs.true596 ], [ %logical.0, %if.end432 ], [ %logical.0, %sw.bb105 ], [ %logical.0, %sw.bb96 ], [ %logical.0, %sw.bb75 ], [ %logical.0, %seol ], [ %logical.0, %meol ], [ %logical.0, %lor.lhs.false21 ], [ %logical.0, %land.lhs.true ], [ %logical.0, %lor.lhs.false ], [ %logical.0, %sw.bb70 ], [ %logical.0, %land.lhs.true246 ], [ %logical.0, %if.end230 ], [ %logical.0, %land.lhs.true345 ], [ %logical.0, %cond.true374 ], [ %logical.0, %cond.false377 ], [ %logical.0, %if.end394 ], [ %logical.0, %cond.true523 ], [ %logical.0, %cond.end554 ], [ %logical.0, %sw.bb509 ], [ %logical.0, %cond.true629 ], [ %logical.0, %cond.end661 ], [ %logical.0, %cond.true950 ], [ %logical.0, %cond.end977 ], [ %logical.0, %land.lhs.true1013 ], [ %logical.0, %land.lhs.true1048 ], [ %logical.0, %sw.bb931 ], [ %logical.0, %cond.true1079 ], [ %logical.0, %cond.end1106 ], [ %logical.0, %land.lhs.true1142 ], [ %logical.0, %cond.true1169 ], [ %logical.0, %cond.end1196 ], [ %logical.0, %land.lhs.true1223 ], [ %logical.0, %sw.bb1155 ], [ %logical.0, %cond.true1253 ], [ %logical.0, %cond.end1280 ], [ %logical.0, %land.lhs.true1307 ], [ %logical.0, %if.end1328 ], [ %logical.0, %sw.bb1318 ], [ %logical.0, %lor.lhs.false1435 ], [ %logical.0, %cond.true1464 ], [ %logical.0, %cond.true1473 ], [ %logical.0, %cond.false1476 ], [ %logical.0, %if.then1906 ], [ %logical.0, %if.else2029 ], [ %logical.0, %if.end2016 ], [ %logical.0, %if.else2107 ], [ %logical.0, %if.end2090 ], [ %logical.0, %if.else2268 ], [ %logical.0, %if.end2252 ], [ 0, %say_no ], [ %logical.0, %if.end1787 ], [ %logical.0, %if.end4128 ], [ %logical.0, %if.end1823 ], [ %logical.0, %if.end1835 ], [ %logical.0, %while.end4261 ], [ %logical.0, %land.lhs.true12 ], [ %logical.0, %land.lhs.true26 ], [ %logical.0, %sw.bb33 ], [ %logical.0, %sw.bb38 ], [ %logical.0, %if.end65 ], [ %logical.0, %if.then83 ], [ %logical.0, %if.then116 ], [ %logical.0, %if.end235 ], [ %logical.0, %land.lhs.true332 ], [ %logical.0, %land.lhs.true326 ], [ %logical.0, %land.lhs.true321 ], [ %logical.0, %land.lhs.true300 ], [ %logical.0, %land.lhs.true280 ], [ %logical.0, %if.then277 ], [ %logical.0, %if.end358 ], [ %logical.0, %land.lhs.true481 ], [ %logical.0, %land.lhs.true460 ], [ %logical.0, %land.lhs.true456 ], [ %logical.0, %no_anyof ], [ %logical.0, %lor.lhs.false583 ], [ %logical.0, %cond.false592 ], [ %logical.0, %lor.lhs.false690 ], [ %logical.0, %cond.true678 ], [ %logical.0, %if.end907 ], [ %logical.0, %cond.false1009 ], [ %logical.0, %cond.false1044 ], [ %logical.0, %cond.false1219 ], [ %logical.0, %cond.true1213 ], [ %logical.0, %cond.true1297 ], [ %logical.0, %while.end1352 ], [ %logical.0, %sw.bb1363 ], [ %logical.0, %land.lhs.true1430 ], [ %logical.0, %if.end1448 ], [ %logical.0, %if.then2024 ], [ %logical.0, %if.then2034 ], [ %logical.0, %if.then2102 ], [ %logical.0, %if.then2112 ], [ %logical.0, %if.then2263 ], [ %logical.0, %if.then2273 ], [ %logical.0, %land.lhs.true2351 ], [ %logical.0, %land.lhs.true3382 ], [ %logical.0, %if.end4126 ], [ %logical.0, %if.end3817 ], [ %logical.0, %if.then3596 ], [ %logical.0, %if.end3589 ], [ %logical.0, %cond.end4097 ], [ %logical.0, %while.cond3987.preheader ], [ %logical.0, %cond.end3982 ], [ %logical.0, %while.cond3872.preheader ], [ %logical.0, %if.end2659 ], [ %logical.0, %cond.end2977 ], [ %logical.0, %assume_ok_REG ], [ %logical.0, %while.body1403 ], [ %logical.0, %if.end1407 ], [ %logical.0, %lor.lhs.false1414 ], [ %logical.0, %while.body146 ], [ %logical.0, %lor.end ], [ %logical.0, %while.body184 ], [ %logical.0, %lor.end218 ], [ %logical.0, %if.else2667 ], [ %logical.0, %while.cond2594 ], [ %logical.0, %while.cond3658 ]
  %minmod.2.ph = phi i32 [ %minmod.0, %land.lhs.true446 ], [ %minmod.0, %cleanup ], [ %minmod.0, %sw.bb1236 ], [ %minmod.0, %cond.true1123 ], [ %minmod.0, %cond.true1123 ], [ %minmod.0, %cond.true1123 ], [ %minmod.0, %cond.true1123 ], [ %minmod.0, %cond.true1123 ], [ %minmod.0, %sw.bb1062 ], [ %minmod.0, %cond.true1029 ], [ %minmod.0, %cond.true994 ], [ %minmod.0, %land.lhs.true703 ], [ %minmod.0, %sw.bb612 ], [ %minmod.0, %land.lhs.true596 ], [ %minmod.0, %if.end432 ], [ %minmod.0, %sw.bb105 ], [ %minmod.0, %sw.bb96 ], [ %minmod.0, %sw.bb75 ], [ %minmod.0, %seol ], [ %minmod.0, %meol ], [ %minmod.0, %lor.lhs.false21 ], [ %minmod.0, %land.lhs.true ], [ %minmod.0, %lor.lhs.false ], [ %minmod.0, %sw.bb70 ], [ %minmod.0, %land.lhs.true246 ], [ %minmod.0, %if.end230 ], [ %minmod.0, %land.lhs.true345 ], [ %minmod.0, %cond.true374 ], [ %minmod.0, %cond.false377 ], [ %minmod.0, %if.end394 ], [ %minmod.0, %cond.true523 ], [ %minmod.0, %cond.end554 ], [ %minmod.0, %sw.bb509 ], [ %minmod.0, %cond.true629 ], [ %minmod.0, %cond.end661 ], [ %minmod.0, %cond.true950 ], [ %minmod.0, %cond.end977 ], [ %minmod.0, %land.lhs.true1013 ], [ %minmod.0, %land.lhs.true1048 ], [ %minmod.0, %sw.bb931 ], [ %minmod.0, %cond.true1079 ], [ %minmod.0, %cond.end1106 ], [ %minmod.0, %land.lhs.true1142 ], [ %minmod.0, %cond.true1169 ], [ %minmod.0, %cond.end1196 ], [ %minmod.0, %land.lhs.true1223 ], [ %minmod.0, %sw.bb1155 ], [ %minmod.0, %cond.true1253 ], [ %minmod.0, %cond.end1280 ], [ %minmod.0, %land.lhs.true1307 ], [ %minmod.0, %if.end1328 ], [ %minmod.0, %sw.bb1318 ], [ %minmod.0, %lor.lhs.false1435 ], [ %minmod.0, %cond.true1464 ], [ %minmod.0, %cond.true1473 ], [ %minmod.0, %cond.false1476 ], [ %minmod.0, %if.then1906 ], [ %minmod.0, %if.else2029 ], [ %minmod.0, %if.end2016 ], [ %minmod.0, %if.else2107 ], [ %minmod.0, %if.end2090 ], [ %minmod.0, %if.else2268 ], [ %minmod.0, %if.end2252 ], [ %minmod.0, %say_no ], [ %minmod.0, %if.end1787 ], [ %minmod.0, %if.end4128 ], [ %minmod.0, %if.end1823 ], [ %minmod.0, %if.end1835 ], [ %minmod.0, %while.end4261 ], [ %minmod.0, %land.lhs.true12 ], [ %minmod.0, %land.lhs.true26 ], [ %minmod.0, %sw.bb33 ], [ %minmod.0, %sw.bb38 ], [ %minmod.0, %if.end65 ], [ %minmod.0, %if.then83 ], [ %minmod.0, %if.then116 ], [ %minmod.0, %if.end235 ], [ %minmod.0, %land.lhs.true332 ], [ %minmod.0, %land.lhs.true326 ], [ %minmod.0, %land.lhs.true321 ], [ %minmod.0, %land.lhs.true300 ], [ %minmod.0, %land.lhs.true280 ], [ %minmod.0, %if.then277 ], [ %minmod.0, %if.end358 ], [ %minmod.0, %land.lhs.true481 ], [ %minmod.0, %land.lhs.true460 ], [ %minmod.0, %land.lhs.true456 ], [ %minmod.0, %no_anyof ], [ %minmod.0, %lor.lhs.false583 ], [ %minmod.0, %cond.false592 ], [ %minmod.0, %lor.lhs.false690 ], [ %minmod.0, %cond.true678 ], [ %minmod.0, %if.end907 ], [ %minmod.0, %cond.false1009 ], [ %minmod.0, %cond.false1044 ], [ %minmod.0, %cond.false1219 ], [ %minmod.0, %cond.true1213 ], [ %minmod.0, %cond.true1297 ], [ %minmod.0, %while.end1352 ], [ %minmod.0, %sw.bb1363 ], [ %minmod.0, %land.lhs.true1430 ], [ %minmod.0, %if.end1448 ], [ %minmod.0, %if.then2024 ], [ %minmod.0, %if.then2034 ], [ %minmod.0, %if.then2102 ], [ %minmod.0, %if.then2112 ], [ %minmod.0, %if.then2263 ], [ %minmod.0, %if.then2273 ], [ 0, %land.lhs.true2351 ], [ 0, %land.lhs.true3382 ], [ %minmod.0, %if.end4126 ], [ 0, %if.end3817 ], [ 0, %if.then3596 ], [ 0, %if.end3589 ], [ 0, %cond.end4097 ], [ 0, %while.cond3987.preheader ], [ 0, %cond.end3982 ], [ 0, %while.cond3872.preheader ], [ 0, %if.end2659 ], [ 0, %cond.end2977 ], [ 0, %assume_ok_REG ], [ %minmod.0, %while.body1403 ], [ %minmod.0, %if.end1407 ], [ %minmod.0, %lor.lhs.false1414 ], [ %minmod.0, %while.body146 ], [ %minmod.0, %lor.end ], [ %minmod.0, %while.body184 ], [ %minmod.0, %lor.end218 ], [ 0, %if.else2667 ], [ 0, %while.cond2594 ], [ 0, %while.cond3658 ]
  %ln.13.ph5642 = phi i32 [ %ln.0, %land.lhs.true446 ], [ %ln.0, %cleanup ], [ %ln.0, %sw.bb1236 ], [ %ln.0, %cond.true1123 ], [ %ln.0, %cond.true1123 ], [ %ln.0, %cond.true1123 ], [ %ln.0, %cond.true1123 ], [ %ln.0, %cond.true1123 ], [ %ln.0, %sw.bb1062 ], [ %ln.0, %cond.true1029 ], [ %ln.0, %cond.true994 ], [ %ln.0, %land.lhs.true703 ], [ %ln.0, %sw.bb612 ], [ %ln.0, %land.lhs.true596 ], [ %ln.0, %if.end432 ], [ %ln.0, %sw.bb105 ], [ %ln.0, %sw.bb96 ], [ %ln.0, %sw.bb75 ], [ %ln.0, %seol ], [ %ln.0, %meol ], [ %ln.0, %lor.lhs.false21 ], [ %ln.0, %land.lhs.true ], [ %ln.0, %lor.lhs.false ], [ %ln.0, %sw.bb70 ], [ %conv132, %land.lhs.true246 ], [ %conv132, %if.end230 ], [ %conv260, %land.lhs.true345 ], [ %conv260, %cond.true374 ], [ %conv260, %cond.false377 ], [ %ln.0, %if.end394 ], [ %ln.0, %cond.true523 ], [ %ln.0, %cond.end554 ], [ %ln.0, %sw.bb509 ], [ %ln.0, %cond.true629 ], [ %ln.0, %cond.end661 ], [ %ln.0, %cond.true950 ], [ %ln.0, %cond.end977 ], [ %ln.0, %land.lhs.true1013 ], [ %ln.0, %land.lhs.true1048 ], [ %ln.0, %sw.bb931 ], [ %ln.0, %cond.true1079 ], [ %ln.0, %cond.end1106 ], [ %ln.0, %land.lhs.true1142 ], [ %ln.0, %cond.true1169 ], [ %ln.0, %cond.end1196 ], [ %ln.0, %land.lhs.true1223 ], [ %ln.0, %sw.bb1155 ], [ %ln.0, %cond.true1253 ], [ %ln.0, %cond.end1280 ], [ %ln.0, %land.lhs.true1307 ], [ %ln.0, %if.end1328 ], [ %ln.0, %sw.bb1318 ], [ %253, %lor.lhs.false1435 ], [ %sub, %cond.true1464 ], [ %sub, %cond.true1473 ], [ %sub, %cond.false1476 ], [ %ln.0, %if.then1906 ], [ %ln.4, %if.else2029 ], [ %ln.4, %if.end2016 ], [ %ln.4, %if.else2107 ], [ %ln.4, %if.end2090 ], [ %ln.5, %if.else2268 ], [ %ln.5, %if.end2252 ], [ %ln.0, %say_no ], [ %ln.0, %if.end1787 ], [ %ln.0, %if.end4128 ], [ %ln.3, %if.end1823 ], [ %ln.0, %if.end1835 ], [ %ln.0, %while.end4261 ], [ %ln.0, %land.lhs.true12 ], [ %ln.0, %land.lhs.true26 ], [ %ln.0, %sw.bb33 ], [ %ln.0, %sw.bb38 ], [ %ln.0, %if.end65 ], [ %ln.0, %if.then83 ], [ %ln.0, %if.then116 ], [ %conv132, %if.end235 ], [ %conv260, %land.lhs.true332 ], [ %conv260, %land.lhs.true326 ], [ %conv260, %land.lhs.true321 ], [ %conv260, %land.lhs.true300 ], [ %conv260, %land.lhs.true280 ], [ %conv260, %if.then277 ], [ %conv260, %if.end358 ], [ %ln.0, %land.lhs.true481 ], [ %ln.0, %land.lhs.true460 ], [ %ln.0, %land.lhs.true456 ], [ %ln.0, %no_anyof ], [ %ln.0, %lor.lhs.false583 ], [ %ln.0, %cond.false592 ], [ %ln.0, %lor.lhs.false690 ], [ %ln.0, %cond.true678 ], [ %ln.2, %if.end907 ], [ %ln.0, %cond.false1009 ], [ %ln.0, %cond.false1044 ], [ %ln.0, %cond.false1219 ], [ %ln.0, %cond.true1213 ], [ %ln.0, %cond.true1297 ], [ %ln.0, %while.end1352 ], [ %253, %sw.bb1363 ], [ %253, %land.lhs.true1430 ], [ %sub, %if.end1448 ], [ %ln.4, %if.then2024 ], [ %ln.4, %if.then2034 ], [ %ln.4, %if.then2102 ], [ %ln.4, %if.then2112 ], [ %ln.5, %if.then2263 ], [ %ln.5, %if.then2273 ], [ %conv2323, %land.lhs.true2351 ], [ %ln.7, %land.lhs.true3382 ], [ %ln.0, %if.end4126 ], [ %ln.10, %if.end3817 ], [ 1, %if.then3596 ], [ %ln.8, %if.end3589 ], [ %ln.11, %cond.end4097 ], [ %ln.11, %while.cond3987.preheader ], [ %ln.11, %cond.end3982 ], [ %ln.11, %while.cond3872.preheader ], [ %ln.6, %if.end2659 ], [ %conv2323, %cond.end2977 ], [ %conv2323, %assume_ok_REG ], [ %253, %while.body1403 ], [ %253, %if.end1407 ], [ %253, %lor.lhs.false1414 ], [ %conv132, %while.body146 ], [ %conv132, %lor.end ], [ %conv132, %while.body184 ], [ %conv132, %lor.end218 ], [ %conv2323, %if.else2667 ], [ %ln.6, %while.cond2594 ], [ %ln.10, %while.cond3658 ]
  %tobool42625650 = icmp eq i32 %unwind.0, 0
  br i1 %tobool42625650, label %return, label %if.then4263

if.then4263:                                      ; preds = %do_no.preheader, %if.then4297
  %unwind.25651 = phi i32 [ %844, %if.then4297 ], [ %unwind.0, %do_no.preheader ]
  %826 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %827 = bitcast %union.any* %826 to i8*
  %idx.ext4265 = sext i32 %unwind.25651 to i64
  %add.ptr4266 = getelementptr inbounds i8* %827, i64 %idx.ext4265
  %type4267 = bitcast i8* %add.ptr4266 to i32*
  %828 = load i32* %type4267, align 4, !tbaa !0
  %.off = add i32 %828, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb4268, label %sw.default4326

sw.bb4268:                                        ; preds = %if.then4263
  %add.ptr4266.sum = add i64 %idx.ext4265, 12
  %lastparen4270 = getelementptr inbounds i8* %827, i64 %add.ptr4266.sum
  %829 = bitcast i8* %lastparen4270 to i32*
  %830 = load i32* %829, align 4, !tbaa !0
  %831 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %add.ptr4266.sum5377 = add i64 %idx.ext4265, 8
  %lastcp4271 = getelementptr inbounds i8* %827, i64 %add.ptr4266.sum5377
  %832 = bitcast i8* %lastcp4271 to i32*
  %833 = load i32* %832, align 4, !tbaa !0
  %cmp4272 = icmp sgt i32 %831, %833
  br i1 %cmp4272, label %if.then4274, label %if.end4276

if.then4274:                                      ; preds = %sw.bb4268
  call void @Perl_leave_scope(i32 %833) #6
  br label %if.end4276

if.end4276:                                       ; preds = %if.then4274, %sw.bb4268
  %834 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %835 = load i32* %834, align 4, !tbaa !0
  %cmp42785639 = icmp sgt i32 %835, %830
  br i1 %cmp42785639, label %for.body4280.lr.ph, label %for.end4285

for.body4280.lr.ph:                               ; preds = %if.end4276
  %836 = load i32** @PL_regendp, align 8, !tbaa !3
  %837 = sext i32 %835 to i64
  br label %for.body4280

for.body4280:                                     ; preds = %for.body4280.lr.ph, %for.body4280
  %indvars.iv = phi i64 [ %837, %for.body4280.lr.ph ], [ %indvars.iv.next, %for.body4280 ]
  %arrayidx4282 = getelementptr inbounds i32* %836, i64 %indvars.iv
  store i32 -1, i32* %arrayidx4282, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %838 = trunc i64 %indvars.iv.next to i32
  %cmp4278 = icmp sgt i32 %838, %830
  br i1 %cmp4278, label %for.body4280, label %for.end4285

for.end4285:                                      ; preds = %for.body4280, %if.end4276
  %n.6.lcssa = phi i32 [ %835, %if.end4276 ], [ %830, %for.body4280 ]
  store i32 %n.6.lcssa, i32* %834, align 4, !tbaa !0
  %add.ptr4266.sum5378 = add i64 %idx.ext4265, 16
  %next4286 = getelementptr inbounds i8* %827, i64 %add.ptr4266.sum5378
  %839 = bitcast i8* %next4286 to %struct.regnode**
  %840 = load %struct.regnode** %839, align 8, !tbaa !3
  %tobool4287 = icmp eq %struct.regnode* %840, null
  br i1 %tobool4287, label %if.then4297, label %lor.lhs.false4288

lor.lhs.false4288:                                ; preds = %for.end4285
  %type4289 = getelementptr inbounds %struct.regnode* %840, i64 0, i32 1
  %841 = load i8* %type4289, align 1, !tbaa !1
  %conv4290 = zext i8 %841 to i32
  %842 = load i32* %type4267, align 4, !tbaa !0
  %cmp4292 = icmp eq i32 %842, 1
  %cond4294 = select i1 %cmp4292, i32 31, i32 56
  %cmp4295 = icmp eq i32 %conv4290, %cond4294
  br i1 %cmp4295, label %if.end4299, label %if.then4297

if.then4297:                                      ; preds = %lor.lhs.false4288, %for.end4285
  %add.ptr4266.sum5379 = add i64 %idx.ext4265, 4
  %prev4298 = getelementptr inbounds i8* %827, i64 %add.ptr4266.sum5379
  %843 = bitcast i8* %prev4298 to i32*
  %844 = load i32* %843, align 4, !tbaa !0
  %tobool4262 = icmp eq i32 %844, 0
  br i1 %tobool4262, label %return, label %if.then4263

if.end4299:                                       ; preds = %lor.lhs.false4288
  br i1 %cmp4292, label %cond.true4303, label %cond.false4306

cond.true4303:                                    ; preds = %if.end4299
  %next_off4304 = getelementptr inbounds %struct.regnode* %840, i64 0, i32 2
  %845 = load i16* %next_off4304, align 2, !tbaa !5
  %conv4305 = zext i16 %845 to i32
  br label %cond.end4308

cond.false4306:                                   ; preds = %if.end4299
  %arg14307 = getelementptr inbounds %struct.regnode* %840, i64 1
  %846 = bitcast %struct.regnode* %arg14307 to i32*
  %847 = load i32* %846, align 4, !tbaa !0
  br label %cond.end4308

cond.end4308:                                     ; preds = %cond.false4306, %cond.true4303
  %cond4309 = phi i32 [ %conv4305, %cond.true4303 ], [ %847, %cond.false4306 ]
  %tobool4310 = icmp eq i32 %cond4309, 0
  br i1 %tobool4310, label %if.end4315, label %if.then4311

if.then4311:                                      ; preds = %cond.end4308
  %idx.ext4312 = sext i32 %cond4309 to i64
  %add.ptr4313 = getelementptr inbounds %struct.regnode* %840, i64 %idx.ext4312
  br label %if.end4315

if.end4315:                                       ; preds = %cond.end4308, %if.then4311
  %next.3 = phi %struct.regnode* [ %add.ptr4313, %if.then4311 ], [ null, %cond.end4308 ]
  store %struct.regnode* %next.3, %struct.regnode** %839, align 8, !tbaa !3
  %add.ptr4317 = getelementptr inbounds %struct.regnode* %840, i64 1
  %cmp4319 = icmp eq i32 %842, 2
  %add.ptr4322 = getelementptr inbounds %struct.regnode* %840, i64 2
  %add.ptr4322.add.ptr4317 = select i1 %cmp4319, %struct.regnode* %add.ptr4322, %struct.regnode* %add.ptr4317
  %add.ptr4266.sum5380 = add i64 %idx.ext4265, 24
  %locinput4324 = getelementptr inbounds i8* %827, i64 %add.ptr4266.sum5380
  %848 = bitcast i8* %locinput4324 to i8**
  %849 = load i8** %848, align 8, !tbaa !3
  %add.ptr4266.sum5381 = add i64 %idx.ext4265, 32
  %nextchr4325 = getelementptr inbounds i8* %827, i64 %add.ptr4266.sum5381
  %850 = bitcast i8* %nextchr4325 to i32*
  %851 = load i32* %850, align 4, !tbaa !0
  br label %while.cond

sw.default4326:                                   ; preds = %if.then4263
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %if.end1787, %if.then1906, %if.then1828, %if.end1814, %if.then4297, %do_no.preheader, %if.end2957, %if.end2650, %if.end3958, %if.end4073, %if.end3631, %if.end3800, %if.end1617, %if.then1620, %sw.default4326, %sw.bb4133, %if.end4132, %if.then1947, %if.then1957, %if.then2065, %if.then2075, %if.then2147, %if.then2157, %if.then2227, %if.then2237, %if.then4120, %if.then4117, %if.then2219, %if.else2232, %if.end2139, %if.else2152, %if.end2057, %if.else2070, %if.end1939, %if.else1952
  %retval.0 = phi i32 [ 1, %if.else1952 ], [ 1, %if.end1939 ], [ 1, %if.else2070 ], [ 1, %if.end2057 ], [ 1, %if.else2152 ], [ 1, %if.end2139 ], [ 1, %if.else2232 ], [ 1, %if.then2219 ], [ 1, %if.then4117 ], [ 1, %if.then4120 ], [ 1, %if.then2237 ], [ 1, %if.then2227 ], [ 1, %if.then2157 ], [ 1, %if.then2147 ], [ 1, %if.then2075 ], [ 1, %if.then2065 ], [ 1, %if.then1957 ], [ 1, %if.then1947 ], [ 1, %if.end4132 ], [ 1, %sw.bb4133 ], [ 0, %sw.default4326 ], [ 1, %if.then1620 ], [ 1, %if.end1617 ], [ 1, %if.end3800 ], [ 1, %if.end3631 ], [ 1, %if.end4073 ], [ 1, %if.end3958 ], [ 1, %if.end2650 ], [ 1, %if.end2957 ], [ 0, %do_no.preheader ], [ 0, %if.then4297 ], [ 1, %if.end1814 ], [ 1, %if.then1828 ], [ 1, %if.then1906 ], [ 1, %if.end1787 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_leave_scope(i32) #3

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #3

; Function Attrs: optsize
declare i32 @Perl_ibcmp_utf8(i8*, i8**, i64, i8 signext, i8*, i8**, i64, i8 signext) #3

; Function Attrs: optsize
declare i32 @Perl_ibcmp(i8*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @Perl_ibcmp_locale(i8*, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc signext i8 @S_reginclass(%struct.regnode* nocapture %n, i8* %p, i64* %lenp, i8 signext %do_utf8) #0 {
entry:
  %len = alloca i64, align 8
  %av = alloca %struct.av*, align 8
  %len133 = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  %tmplen = alloca i64, align 8
  %flags1 = getelementptr inbounds %struct.regnode* %n, i64 0, i32 0
  %0 = load i8* %flags1, align 1, !tbaa !1
  %1 = load i8* %p, align 1, !tbaa !1
  %conv = zext i8 %1 to i64
  store i64 0, i64* %len, align 8, !tbaa !4
  %tobool = icmp ne i8 %do_utf8, 0
  %tobool.not = xor i1 %tobool, true
  %cmp = icmp sgt i8 %1, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp4 = icmp eq %struct.sv* %3, null
  br i1 %cmp4, label %lor.rhs, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.then
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings7 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings7, align 8, !tbaa !3
  %cmp8 = icmp eq %struct.sv* %5, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp8, label %lor.rhs, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings11 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings11, align 8, !tbaa !3
  %cmp12 = icmp eq %struct.sv* %7, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp12, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings14 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings14, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %11, i64 11
  %12 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %12, 1
  %tobool16 = icmp eq i8 %and, 0
  br i1 %tobool16, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true6, %if.then
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings17 = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings17, align 8, !tbaa !3
  %cmp18 = icmp eq %struct.sv* %14, null
  br i1 %cmp18, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %15 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and21 = and i8 %15, 1
  %tobool22 = icmp ne i8 %and21, 0
  %phitmp1078 = select i1 %tobool22, i32 0, i32 255
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %lor.rhs, %land.rhs, %land.lhs.true10
  %16 = phi i32 [ 0, %lor.lhs.false ], [ 0, %land.lhs.true10 ], [ 255, %lor.rhs ], [ %phitmp1078, %land.rhs ]
  %call = call i64 @Perl_utf8n_to_uvuni(i8* %p, i64 13, i64* %len, i32 %16) #6
  br label %if.end

if.end:                                           ; preds = %entry, %lor.end
  %c.0 = phi i64 [ %call, %lor.end ], [ %conv, %entry ]
  %tobool23 = icmp ne i64* %lenp, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i64* %lenp, align 8, !tbaa !4
  br label %cond.end63

cond.false:                                       ; preds = %if.end
  %cmp24 = icmp ult i64 %c.0, 128
  br i1 %cmp24, label %cond.end63, label %cond.false27

cond.false27:                                     ; preds = %cond.false
  %cmp28 = icmp ult i64 %c.0, 2048
  br i1 %cmp28, label %cond.end63, label %cond.false31

cond.false31:                                     ; preds = %cond.false27
  %cmp32 = icmp ult i64 %c.0, 65536
  br i1 %cmp32, label %cond.end63, label %cond.false35

cond.false35:                                     ; preds = %cond.false31
  %cmp36 = icmp ult i64 %c.0, 2097152
  br i1 %cmp36, label %cond.end63, label %cond.false39

cond.false39:                                     ; preds = %cond.false35
  %cmp40 = icmp ult i64 %c.0, 67108864
  br i1 %cmp40, label %cond.end63, label %cond.false43

cond.false43:                                     ; preds = %cond.false39
  %cmp44 = icmp ult i64 %c.0, 2147483648
  br i1 %cmp44, label %cond.end63, label %cond.false47

cond.false47:                                     ; preds = %cond.false43
  %cmp48 = icmp ult i64 %c.0, 68719476736
  %phitmp = select i1 %cmp48, i64 7, i64 13
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false, %cond.false31, %cond.false39, %cond.false43, %cond.false47, %cond.false35, %cond.false27, %cond.true
  %cond64 = phi i64 [ %17, %cond.true ], [ 1, %cond.false ], [ 2, %cond.false27 ], [ 3, %cond.false31 ], [ 4, %cond.false35 ], [ 5, %cond.false39 ], [ %phitmp, %cond.false47 ], [ 6, %cond.false43 ]
  br i1 %tobool, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %cond.end63
  %and69 = and i8 %0, 32
  %tobool70 = icmp eq i8 %and69, 0
  br i1 %tobool70, label %if.end215, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false67, %cond.end63
  br i1 %tobool23, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then71
  store i64 0, i64* %lenp, align 8, !tbaa !4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then71
  br i1 %tobool, label %land.lhs.true77, label %if.end97

land.lhs.true77:                                  ; preds = %if.end74
  %18 = load i8* %flags1, align 1, !tbaa !1
  %and80 = and i8 %18, 15
  %tobool81 = icmp eq i8 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.end97

if.then82:                                        ; preds = %land.lhs.true77
  %19 = load i64* %len, align 8, !tbaa !4
  %cmp83 = icmp ne i64 %19, -1
  %cmp86 = icmp ult i64 %c.0, 256
  %or.cond1080 = and i1 %cmp83, %cmp86
  br i1 %or.cond1080, label %land.lhs.true88, label %if.end97

land.lhs.true88:                                  ; preds = %if.then82
  %shr = lshr i64 %c.0, 3
  %and89 = and i64 %shr, 31
  %bitmap = getelementptr inbounds %struct.regnode* %n, i64 2
  %20 = bitcast %struct.regnode* %bitmap to [32 x i8]*
  %arrayidx90 = getelementptr inbounds [32 x i8]* %20, i64 0, i64 %and89
  %21 = load i8* %arrayidx90, align 1, !tbaa !1
  %conv91 = sext i8 %21 to i32
  %c.0.tr1077 = trunc i64 %c.0 to i32
  %sh_prom = and i32 %c.0.tr1077, 7
  %shl = shl i32 1, %sh_prom
  %and93 = and i32 %conv91, %shl
  %not.tobool94 = icmp ne i32 %and93, 0
  %. = zext i1 %not.tobool94 to i8
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true88, %if.then82, %land.lhs.true77, %if.end74
  %match.0 = phi i8 [ 0, %land.lhs.true77 ], [ 0, %if.then82 ], [ 0, %if.end74 ], [ %., %land.lhs.true88 ]
  %tobool98.not = icmp ne i8 %match.0, 0
  %brmerge = or i1 %tobool98.not, %tobool.not
  br i1 %brmerge, label %if.end110, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %if.end97
  %and104 = and i8 %0, 64
  %tobool105 = icmp ne i8 %and104, 0
  %cmp107 = icmp ugt i64 %c.0, 255
  %or.cond1082 = and i1 %tobool105, %cmp107
  %.match.0 = zext i1 %or.cond1082 to i8
  br label %if.end110

if.end110:                                        ; preds = %land.lhs.true102, %if.end97
  %match.1 = phi i8 [ %match.0, %if.end97 ], [ %.match.0, %land.lhs.true102 ]
  %tobool111 = icmp eq i8 %match.1, 0
  br i1 %tobool111, label %if.then112, label %if.end165

if.then112:                                       ; preds = %if.end110
  %22 = bitcast %struct.av** %av to %struct.sv**
  %call113 = call %struct.sv* @Perl_regclass_swash(%struct.regnode* %n, i8 signext 1, %struct.sv** null, %struct.sv** %22) #5
  %tobool114 = icmp eq %struct.sv* %call113, null
  br i1 %tobool114, label %if.end215, label %if.then115

if.then115:                                       ; preds = %if.then112
  %call116 = call i64 @Perl_swash_fetch(%struct.sv* %call113, i8* %p, i8 signext %do_utf8) #6
  %tobool117 = icmp eq i64 %call116, 0
  br i1 %tobool117, label %if.else, label %if.end165

if.else:                                          ; preds = %if.then115
  %and120 = and i8 %0, 2
  %tobool121 = icmp eq i8 %and120, 0
  br i1 %tobool121, label %if.end215, label %if.then122

if.then122:                                       ; preds = %if.else
  br i1 %tobool23, label %land.lhs.true126, label %if.then154

land.lhs.true126:                                 ; preds = %if.then122
  %23 = load %struct.av** %av, align 8, !tbaa !3
  %tobool127 = icmp eq %struct.av* %23, null
  br i1 %tobool127, label %if.then154, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true126
  %call1291117 = call i32 @Perl_av_len(%struct.av* %23) #6
  %cmp1301118 = icmp slt i32 %call1291117, 0
  br i1 %cmp1301118, label %if.then154, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.01119 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %24 = load %struct.av** %av, align 8, !tbaa !3
  %call132 = call %struct.sv** @Perl_av_fetch(%struct.av* %24, i32 %i.01119, i32 0) #6
  %25 = load %struct.sv** %call132, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %25, i64 0, i32 2
  %26 = load i32* %sv_flags, align 4, !tbaa !0
  %and134 = and i32 %26, 262144
  %cmp135 = icmp eq i32 %and134, 0
  br i1 %cmp135, label %cond.false141, label %cond.true137

cond.true137:                                     ; preds = %for.body
  %sv_any138 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %27 = load i8** %sv_any138, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %27, i64 8
  %28 = bitcast i8* %xpv_cur to i64*
  %29 = load i64* %28, align 8, !tbaa !4
  store i64 %29, i64* %len133, align 8, !tbaa !4
  %xpv_pv140 = bitcast i8* %27 to i8**
  %30 = load i8** %xpv_pv140, align 8, !tbaa !3
  br label %cond.end143

cond.false141:                                    ; preds = %for.body
  %call142 = call i8* @Perl_sv_2pv_flags(%struct.sv* %25, i64* %len133, i32 2) #6
  %.pre = load i64* %len133, align 8, !tbaa !4
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false141, %cond.true137
  %31 = phi i64 [ %29, %cond.true137 ], [ %.pre, %cond.false141 ]
  %cond144 = phi i8* [ %30, %cond.true137 ], [ %call142, %cond.false141 ]
  %cmp145 = icmp ugt i64 %31, %cond64
  br i1 %cmp145, label %for.inc, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %cond.end143
  %call148 = call i32 @memcmp(i8* %cond144, i8* %p, i64 %31) #6
  %tobool149 = icmp eq i32 %call148, 0
  br i1 %tobool149, label %if.end152.thread, label %for.inc

if.end152.thread:                                 ; preds = %land.lhs.true147
  store i64 %31, i64* %lenp, align 8, !tbaa !4
  br label %if.end165

for.inc:                                          ; preds = %land.lhs.true147, %cond.end143
  %inc = add nsw i32 %i.01119, 1
  %32 = load %struct.av** %av, align 8, !tbaa !3
  %call129 = call i32 @Perl_av_len(%struct.av* %32) #6
  %cmp130 = icmp slt i32 %i.01119, %call129
  br i1 %cmp130, label %for.body, label %if.then154

if.then154:                                       ; preds = %land.lhs.true126, %if.then122, %for.inc, %for.cond.preheader
  %arraydecay = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %call155 = call i64 @Perl_to_utf8_fold(i8* %p, i8* %arraydecay, i64* %tmplen) #6
  %call157 = call i64 @Perl_swash_fetch(%struct.sv* %call113, i8* %arraydecay, i8 signext %do_utf8) #6
  %not.tobool158 = icmp ne i64 %call157, 0
  %match.2. = zext i1 %not.tobool158 to i8
  br label %if.end165

if.end165:                                        ; preds = %if.end110, %if.end152.thread, %if.then154, %if.then115
  %match.3 = phi i8 [ %match.1, %if.end110 ], [ 1, %if.then115 ], [ %match.2., %if.then154 ], [ 1, %if.end152.thread ]
  %tobool167 = icmp eq i8 %match.3, 0
  %tobool23.not1084 = xor i1 %tobool23, true
  %brmerge1085 = or i1 %tobool167, %tobool23.not1084
  br i1 %brmerge1085, label %if.end215, label %land.lhs.true170

land.lhs.true170:                                 ; preds = %if.end165
  %33 = load i64* %lenp, align 8, !tbaa !4
  %cmp171 = icmp eq i64 %33, 0
  br i1 %cmp171, label %if.then173, label %if.end215

if.then173:                                       ; preds = %land.lhs.true170
  %cmp174 = icmp ult i64 %c.0, 128
  br i1 %cmp174, label %cond.end211, label %cond.false177

cond.false177:                                    ; preds = %if.then173
  %cmp178 = icmp ult i64 %c.0, 2048
  br i1 %cmp178, label %cond.end211, label %cond.false181

cond.false181:                                    ; preds = %cond.false177
  %cmp182 = icmp ult i64 %c.0, 65536
  br i1 %cmp182, label %cond.end211, label %cond.false185

cond.false185:                                    ; preds = %cond.false181
  %cmp186 = icmp ult i64 %c.0, 2097152
  br i1 %cmp186, label %cond.end211, label %cond.false189

cond.false189:                                    ; preds = %cond.false185
  %cmp190 = icmp ult i64 %c.0, 67108864
  br i1 %cmp190, label %cond.end211, label %cond.false193

cond.false193:                                    ; preds = %cond.false189
  %cmp194 = icmp ult i64 %c.0, 2147483648
  br i1 %cmp194, label %cond.end211, label %cond.false197

cond.false197:                                    ; preds = %cond.false193
  %cmp198 = icmp ult i64 %c.0, 68719476736
  %phitmp1074 = select i1 %cmp198, i64 7, i64 13
  br label %cond.end211

cond.end211:                                      ; preds = %cond.false177, %cond.false185, %cond.false197, %cond.false193, %cond.false189, %cond.false181, %if.then173
  %cond212 = phi i64 [ 1, %if.then173 ], [ 2, %cond.false177 ], [ 3, %cond.false181 ], [ 4, %cond.false185 ], [ 5, %cond.false189 ], [ %phitmp1074, %cond.false197 ], [ 6, %cond.false193 ]
  store i64 %cond212, i64* %lenp, align 8, !tbaa !4
  br label %if.end215

if.end215:                                        ; preds = %if.else, %if.then112, %if.end165, %lor.lhs.false67, %land.lhs.true170, %cond.end211
  %match.4 = phi i8 [ %match.3, %cond.end211 ], [ %match.3, %land.lhs.true170 ], [ %match.3, %if.end165 ], [ 0, %lor.lhs.false67 ], [ 0, %if.then112 ], [ 0, %if.else ]
  %tobool216 = icmp eq i8 %match.4, 0
  %cmp218 = icmp ult i64 %c.0, 256
  %or.cond1086 = and i1 %tobool216, %cmp218
  br i1 %or.cond1086, label %if.then220, label %if.end812

if.then220:                                       ; preds = %if.end215
  %shr221 = lshr i64 %c.0, 3
  %and222 = and i64 %shr221, 31
  %bitmap223 = getelementptr inbounds %struct.regnode* %n, i64 2
  %34 = bitcast %struct.regnode* %bitmap223 to [32 x i8]*
  %arrayidx224 = getelementptr inbounds [32 x i8]* %34, i64 0, i64 %and222
  %35 = load i8* %arrayidx224, align 1, !tbaa !1
  %conv225 = sext i8 %35 to i32
  %c.0.tr = trunc i64 %c.0 to i32
  %sh_prom227 = and i32 %c.0.tr, 7
  %shl228 = shl i32 1, %sh_prom227
  %and229 = and i32 %conv225, %shl228
  %tobool230 = icmp eq i32 %and229, 0
  br i1 %tobool230, label %if.else232, label %if.end812

if.else232:                                       ; preds = %if.then220
  %conv233 = sext i8 %0 to i32
  %and234 = and i32 %conv233, 2
  %tobool235 = icmp eq i32 %and234, 0
  br i1 %tobool235, label %land.lhs.true265, label %if.then236

if.then236:                                       ; preds = %if.else232
  %and238 = and i32 %conv233, 1
  %tobool239 = icmp eq i32 %and238, 0
  br i1 %tobool239, label %if.end244, label %if.then240

if.then240:                                       ; preds = %if.then236
  %36 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or = or i32 %36, 1
  store i32 %or, i32* @PL_reg_flags, align 4, !tbaa !0
  br label %if.end244

if.end244:                                        ; preds = %if.then236, %if.then240
  %PL_fold_locale.pn = phi [0 x i8]* [ @PL_fold_locale, %if.then240 ], [ @PL_fold, %if.then236 ]
  %f.0.in = getelementptr inbounds [0 x i8]* %PL_fold_locale.pn, i64 0, i64 %c.0
  %f.0 = load i8* %f.0.in, align 1
  %conv245 = zext i8 %f.0 to i64
  %cmp246 = icmp eq i64 %conv245, %c.0
  br i1 %cmp246, label %land.lhs.true265, label %if.end263

if.end263:                                        ; preds = %if.end244
  %conv249 = zext i8 %f.0 to i32
  %shr2501072 = lshr i32 %conv249, 3
  %idxprom1073 = zext i32 %shr2501072 to i64
  %arrayidx253 = getelementptr inbounds [32 x i8]* %34, i64 0, i64 %idxprom1073
  %37 = load i8* %arrayidx253, align 1, !tbaa !1
  %conv254 = sext i8 %37 to i32
  %and256 = and i32 %conv249, 7
  %shl257 = shl i32 1, %and256
  %and258 = and i32 %conv254, %shl257
  %not.tobool259 = icmp ne i32 %and258, 0
  %match.4. = zext i1 %not.tobool259 to i8
  br i1 %not.tobool259, label %if.end812, label %land.lhs.true265

land.lhs.true265:                                 ; preds = %if.end263, %if.else232, %if.end244
  %and267 = and i8 %0, 8
  %tobool268 = icmp eq i8 %and267, 0
  br i1 %tobool268, label %if.end812, label %if.then269

if.then269:                                       ; preds = %land.lhs.true265
  %38 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or270 = or i32 %38, 1
  store i32 %or270, i32* @PL_reg_flags, align 4, !tbaa !0
  %classflags = getelementptr inbounds %struct.regnode* %n, i64 10
  %39 = bitcast %struct.regnode* %classflags to [4 x i8]*
  %arrayidx271 = getelementptr inbounds %struct.regnode* %classflags, i64 0, i32 0
  %40 = load i8* %arrayidx271, align 1, !tbaa !1
  %and273 = and i8 %40, 1
  %tobool274 = icmp ne i8 %and273, 0
  %cmp277 = icmp ult i64 %c.0, 128
  %or.cond1087 = and i1 %tobool274, %cmp277
  br i1 %or.cond1087, label %land.lhs.true279, label %lor.lhs.false290

land.lhs.true279:                                 ; preds = %if.then269
  %sext1071 = shl i64 %c.0, 32
  %idxprom281 = ashr exact i64 %sext1071, 32
  %call282 = call i16** @__ctype_b_loc() #6
  %41 = load i16** %call282, align 8, !tbaa !3
  %arrayidx283 = getelementptr inbounds i16* %41, i64 %idxprom281
  %42 = load i16* %arrayidx283, align 2, !tbaa !5
  %and285 = and i16 %42, 8
  %tobool286 = icmp ne i16 %and285, 0
  %cmp288 = icmp eq i64 %c.0, 95
  %or.cond1088 = or i1 %tobool286, %cmp288
  br i1 %or.cond1088, label %if.then809, label %land.lhs.true279.lor.lhs.false290_crit_edge

land.lhs.true279.lor.lhs.false290_crit_edge:      ; preds = %land.lhs.true279
  %.pre1121 = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %land.lhs.true279.lor.lhs.false290_crit_edge, %if.then269
  %43 = phi i8 [ %.pre1121, %land.lhs.true279.lor.lhs.false290_crit_edge ], [ %40, %if.then269 ]
  %and294 = and i8 %43, 2
  %tobool295 = icmp eq i8 %and294, 0
  br i1 %tobool295, label %lor.lhs.false311, label %land.lhs.true296

land.lhs.true296:                                 ; preds = %lor.lhs.false290
  br i1 %cmp277, label %land.lhs.true300, label %if.then809

land.lhs.true300:                                 ; preds = %land.lhs.true296
  %sext1070 = shl i64 %c.0, 32
  %idxprom302 = ashr exact i64 %sext1070, 32
  %call303 = call i16** @__ctype_b_loc() #6
  %44 = load i16** %call303, align 8, !tbaa !3
  %arrayidx304 = getelementptr inbounds i16* %44, i64 %idxprom302
  %45 = load i16* %arrayidx304, align 2, !tbaa !5
  %and306 = and i16 %45, 8
  %tobool307 = icmp ne i16 %and306, 0
  %cmp309 = icmp eq i64 %c.0, 95
  %or.cond1089 = or i1 %tobool307, %cmp309
  br i1 %or.cond1089, label %land.lhs.true300.lor.lhs.false311_crit_edge, label %if.then809

land.lhs.true300.lor.lhs.false311_crit_edge:      ; preds = %land.lhs.true300
  %.pre1122 = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %land.lhs.true300.lor.lhs.false311_crit_edge, %lor.lhs.false290
  %46 = phi i8 [ %.pre1122, %land.lhs.true300.lor.lhs.false311_crit_edge ], [ %43, %lor.lhs.false290 ]
  %and315 = and i8 %46, 4
  %tobool316 = icmp ne i8 %and315, 0
  %or.cond1090 = and i1 %tobool316, %cmp277
  br i1 %or.cond1090, label %land.lhs.true321, label %lor.lhs.false329

land.lhs.true321:                                 ; preds = %lor.lhs.false311
  %sext1069 = shl i64 %c.0, 32
  %idxprom323 = ashr exact i64 %sext1069, 32
  %call324 = call i16** @__ctype_b_loc() #6
  %47 = load i16** %call324, align 8, !tbaa !3
  %arrayidx325 = getelementptr inbounds i16* %47, i64 %idxprom323
  %48 = load i16* %arrayidx325, align 2, !tbaa !5
  %and327 = and i16 %48, 8192
  %tobool328 = icmp eq i16 %and327, 0
  br i1 %tobool328, label %land.lhs.true321.lor.lhs.false329_crit_edge, label %if.then809

land.lhs.true321.lor.lhs.false329_crit_edge:      ; preds = %land.lhs.true321
  %.pre1123 = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false329

lor.lhs.false329:                                 ; preds = %land.lhs.true321.lor.lhs.false329_crit_edge, %lor.lhs.false311
  %49 = phi i8 [ %.pre1123, %land.lhs.true321.lor.lhs.false329_crit_edge ], [ %46, %lor.lhs.false311 ]
  %and333 = and i8 %49, 8
  %tobool334 = icmp eq i8 %and333, 0
  br i1 %tobool334, label %lor.lhs.false347, label %land.lhs.true335

land.lhs.true335:                                 ; preds = %lor.lhs.false329
  br i1 %cmp277, label %land.lhs.true339, label %if.then809

land.lhs.true339:                                 ; preds = %land.lhs.true335
  %sext1068 = shl i64 %c.0, 32
  %idxprom341 = ashr exact i64 %sext1068, 32
  %call342 = call i16** @__ctype_b_loc() #6
  %50 = load i16** %call342, align 8, !tbaa !3
  %arrayidx343 = getelementptr inbounds i16* %50, i64 %idxprom341
  %51 = load i16* %arrayidx343, align 2, !tbaa !5
  %and345 = and i16 %51, 8192
  %tobool346 = icmp eq i16 %and345, 0
  br i1 %tobool346, label %if.then809, label %land.lhs.true339.lor.lhs.false347_crit_edge

land.lhs.true339.lor.lhs.false347_crit_edge:      ; preds = %land.lhs.true339
  %.pre1124 = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false347

lor.lhs.false347:                                 ; preds = %land.lhs.true339.lor.lhs.false347_crit_edge, %lor.lhs.false329
  %52 = phi i8 [ %.pre1124, %land.lhs.true339.lor.lhs.false347_crit_edge ], [ %49, %lor.lhs.false329 ]
  %and351 = and i8 %52, 16
  %tobool352 = icmp ne i8 %and351, 0
  %or.cond1091 = and i1 %tobool352, %cmp277
  br i1 %or.cond1091, label %land.lhs.true357, label %lor.lhs.false365

land.lhs.true357:                                 ; preds = %lor.lhs.false347
  %sext1067 = shl i64 %c.0, 32
  %idxprom359 = ashr exact i64 %sext1067, 32
  %call360 = call i16** @__ctype_b_loc() #6
  %53 = load i16** %call360, align 8, !tbaa !3
  %arrayidx361 = getelementptr inbounds i16* %53, i64 %idxprom359
  %54 = load i16* %arrayidx361, align 2, !tbaa !5
  %and363 = and i16 %54, 2048
  %tobool364 = icmp eq i16 %and363, 0
  br i1 %tobool364, label %land.lhs.true357.lor.lhs.false365_crit_edge, label %if.then809

land.lhs.true357.lor.lhs.false365_crit_edge:      ; preds = %land.lhs.true357
  %.pre1125 = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false365

lor.lhs.false365:                                 ; preds = %land.lhs.true357.lor.lhs.false365_crit_edge, %lor.lhs.false347
  %55 = phi i8 [ %.pre1125, %land.lhs.true357.lor.lhs.false365_crit_edge ], [ %52, %lor.lhs.false347 ]
  %and369 = and i8 %55, 32
  %tobool370 = icmp eq i8 %and369, 0
  br i1 %tobool370, label %lor.lhs.false383, label %land.lhs.true371

land.lhs.true371:                                 ; preds = %lor.lhs.false365
  br i1 %cmp277, label %land.lhs.true375, label %if.then809

land.lhs.true375:                                 ; preds = %land.lhs.true371
  %sext1066 = shl i64 %c.0, 32
  %idxprom377 = ashr exact i64 %sext1066, 32
  %call378 = call i16** @__ctype_b_loc() #6
  %56 = load i16** %call378, align 8, !tbaa !3
  %arrayidx379 = getelementptr inbounds i16* %56, i64 %idxprom377
  %57 = load i16* %arrayidx379, align 2, !tbaa !5
  %and381 = and i16 %57, 2048
  %tobool382 = icmp eq i16 %and381, 0
  br i1 %tobool382, label %if.then809, label %land.lhs.true375.lor.lhs.false383_crit_edge

land.lhs.true375.lor.lhs.false383_crit_edge:      ; preds = %land.lhs.true375
  %.pre1126 = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false383

lor.lhs.false383:                                 ; preds = %land.lhs.true375.lor.lhs.false383_crit_edge, %lor.lhs.false365
  %58 = phi i8 [ %.pre1126, %land.lhs.true375.lor.lhs.false383_crit_edge ], [ %55, %lor.lhs.false365 ]
  %and387 = and i8 %58, 64
  %tobool388 = icmp ne i8 %and387, 0
  %or.cond1092 = and i1 %tobool388, %cmp277
  br i1 %or.cond1092, label %land.lhs.true393, label %lor.lhs.false401

land.lhs.true393:                                 ; preds = %lor.lhs.false383
  %sext1065 = shl i64 %c.0, 32
  %idxprom395 = ashr exact i64 %sext1065, 32
  %call396 = call i16** @__ctype_b_loc() #6
  %59 = load i16** %call396, align 8, !tbaa !3
  %arrayidx397 = getelementptr inbounds i16* %59, i64 %idxprom395
  %60 = load i16* %arrayidx397, align 2, !tbaa !5
  %and399 = and i16 %60, 8
  %tobool400 = icmp eq i16 %and399, 0
  br i1 %tobool400, label %lor.lhs.false401thread-pre-split, label %if.then809

lor.lhs.false401thread-pre-split:                 ; preds = %land.lhs.true393
  %.pr = load i8* %arrayidx271, align 1, !tbaa !1
  br label %lor.lhs.false401

lor.lhs.false401:                                 ; preds = %lor.lhs.false401thread-pre-split, %lor.lhs.false383
  %61 = phi i8 [ %.pr, %lor.lhs.false401thread-pre-split ], [ %58, %lor.lhs.false383 ]
  %tobool406 = icmp slt i8 %61, 0
  br i1 %tobool406, label %land.lhs.true407, label %lor.lhs.false419

land.lhs.true407:                                 ; preds = %lor.lhs.false401
  br i1 %cmp277, label %land.lhs.true411, label %if.then809

land.lhs.true411:                                 ; preds = %land.lhs.true407
  %sext1064 = shl i64 %c.0, 32
  %idxprom413 = ashr exact i64 %sext1064, 32
  %call414 = call i16** @__ctype_b_loc() #6
  %62 = load i16** %call414, align 8, !tbaa !3
  %arrayidx415 = getelementptr inbounds i16* %62, i64 %idxprom413
  %63 = load i16* %arrayidx415, align 2, !tbaa !5
  %and417 = and i16 %63, 8
  %tobool418 = icmp eq i16 %and417, 0
  br i1 %tobool418, label %if.then809, label %lor.lhs.false419

lor.lhs.false419:                                 ; preds = %land.lhs.true411, %lor.lhs.false401
  %64 = getelementptr inbounds %struct.regnode* %n, i64 10, i32 1
  %65 = load i8* %64, align 1, !tbaa !1
  %and423 = and i8 %65, 1
  %tobool424 = icmp ne i8 %and423, 0
  %or.cond1093 = and i1 %tobool424, %cmp277
  br i1 %or.cond1093, label %land.lhs.true429, label %lor.lhs.false437

land.lhs.true429:                                 ; preds = %lor.lhs.false419
  %sext1063 = shl i64 %c.0, 32
  %idxprom431 = ashr exact i64 %sext1063, 32
  %call432 = call i16** @__ctype_b_loc() #6
  %66 = load i16** %call432, align 8, !tbaa !3
  %arrayidx433 = getelementptr inbounds i16* %66, i64 %idxprom431
  %67 = load i16* %arrayidx433, align 2, !tbaa !5
  %and435 = and i16 %67, 1024
  %tobool436 = icmp eq i16 %and435, 0
  br i1 %tobool436, label %land.lhs.true429.lor.lhs.false437_crit_edge, label %if.then809

land.lhs.true429.lor.lhs.false437_crit_edge:      ; preds = %land.lhs.true429
  %.pre1127 = load i8* %64, align 1, !tbaa !1
  br label %lor.lhs.false437

lor.lhs.false437:                                 ; preds = %land.lhs.true429.lor.lhs.false437_crit_edge, %lor.lhs.false419
  %68 = phi i8 [ %.pre1127, %land.lhs.true429.lor.lhs.false437_crit_edge ], [ %65, %lor.lhs.false419 ]
  %and441 = and i8 %68, 2
  %tobool442 = icmp eq i8 %and441, 0
  br i1 %tobool442, label %lor.lhs.false455, label %land.lhs.true443

land.lhs.true443:                                 ; preds = %lor.lhs.false437
  br i1 %cmp277, label %land.lhs.true447, label %if.then809

land.lhs.true447:                                 ; preds = %land.lhs.true443
  %sext1062 = shl i64 %c.0, 32
  %idxprom449 = ashr exact i64 %sext1062, 32
  %call450 = call i16** @__ctype_b_loc() #6
  %69 = load i16** %call450, align 8, !tbaa !3
  %arrayidx451 = getelementptr inbounds i16* %69, i64 %idxprom449
  %70 = load i16* %arrayidx451, align 2, !tbaa !5
  %and453 = and i16 %70, 1024
  %tobool454 = icmp eq i16 %and453, 0
  br i1 %tobool454, label %if.then809, label %land.lhs.true447.lor.lhs.false455_crit_edge

land.lhs.true447.lor.lhs.false455_crit_edge:      ; preds = %land.lhs.true447
  %.pre1128 = load i8* %64, align 1, !tbaa !1
  br label %lor.lhs.false455

lor.lhs.false455:                                 ; preds = %land.lhs.true447.lor.lhs.false455_crit_edge, %lor.lhs.false437
  %71 = phi i8 [ %.pre1128, %land.lhs.true447.lor.lhs.false455_crit_edge ], [ %68, %lor.lhs.false437 ]
  %and459 = and i8 %71, 4
  %tobool460 = icmp ne i8 %and459, 0
  %or.cond1094 = and i1 %tobool460, %cmp277
  br i1 %or.cond1094, label %if.then809, label %lor.lhs.false464

lor.lhs.false464:                                 ; preds = %lor.lhs.false455
  %and468 = and i8 %71, 8
  %tobool469 = icmp eq i8 %and468, 0
  %or.cond1095 = or i1 %tobool469, %cmp277
  br i1 %or.cond1095, label %lor.lhs.false473, label %if.then809

lor.lhs.false473:                                 ; preds = %lor.lhs.false464
  %and477 = and i8 %71, 16
  %tobool478 = icmp ne i8 %and477, 0
  %or.cond1096 = and i1 %tobool478, %cmp277
  br i1 %or.cond1096, label %land.lhs.true483, label %lor.lhs.false491

land.lhs.true483:                                 ; preds = %lor.lhs.false473
  %sext1061 = shl i64 %c.0, 32
  %idxprom485 = ashr exact i64 %sext1061, 32
  %call486 = call i16** @__ctype_b_loc() #6
  %72 = load i16** %call486, align 8, !tbaa !3
  %arrayidx487 = getelementptr inbounds i16* %72, i64 %idxprom485
  %73 = load i16* %arrayidx487, align 2, !tbaa !5
  %and489 = and i16 %73, 2
  %tobool490 = icmp eq i16 %and489, 0
  br i1 %tobool490, label %land.lhs.true483.lor.lhs.false491_crit_edge, label %if.then809

land.lhs.true483.lor.lhs.false491_crit_edge:      ; preds = %land.lhs.true483
  %.pre1129 = load i8* %64, align 1, !tbaa !1
  br label %lor.lhs.false491

lor.lhs.false491:                                 ; preds = %land.lhs.true483.lor.lhs.false491_crit_edge, %lor.lhs.false473
  %74 = phi i8 [ %.pre1129, %land.lhs.true483.lor.lhs.false491_crit_edge ], [ %71, %lor.lhs.false473 ]
  %and495 = and i8 %74, 32
  %tobool496 = icmp eq i8 %and495, 0
  br i1 %tobool496, label %lor.lhs.false509, label %land.lhs.true497

land.lhs.true497:                                 ; preds = %lor.lhs.false491
  br i1 %cmp277, label %land.lhs.true501, label %if.then809

land.lhs.true501:                                 ; preds = %land.lhs.true497
  %sext1060 = shl i64 %c.0, 32
  %idxprom503 = ashr exact i64 %sext1060, 32
  %call504 = call i16** @__ctype_b_loc() #6
  %75 = load i16** %call504, align 8, !tbaa !3
  %arrayidx505 = getelementptr inbounds i16* %75, i64 %idxprom503
  %76 = load i16* %arrayidx505, align 2, !tbaa !5
  %and507 = and i16 %76, 2
  %tobool508 = icmp eq i16 %and507, 0
  br i1 %tobool508, label %if.then809, label %land.lhs.true501.lor.lhs.false509_crit_edge

land.lhs.true501.lor.lhs.false509_crit_edge:      ; preds = %land.lhs.true501
  %.pre1130 = load i8* %64, align 1, !tbaa !1
  br label %lor.lhs.false509

lor.lhs.false509:                                 ; preds = %land.lhs.true501.lor.lhs.false509_crit_edge, %lor.lhs.false491
  %77 = phi i8 [ %.pre1130, %land.lhs.true501.lor.lhs.false509_crit_edge ], [ %74, %lor.lhs.false491 ]
  %and513 = and i8 %77, 64
  %tobool514 = icmp ne i8 %and513, 0
  %or.cond1097 = and i1 %tobool514, %cmp277
  br i1 %or.cond1097, label %land.lhs.true519, label %lor.lhs.false527

land.lhs.true519:                                 ; preds = %lor.lhs.false509
  %sext1059 = shl i64 %c.0, 32
  %idxprom521 = ashr exact i64 %sext1059, 32
  %call522 = call i16** @__ctype_b_loc() #6
  %78 = load i16** %call522, align 8, !tbaa !3
  %arrayidx523 = getelementptr inbounds i16* %78, i64 %idxprom521
  %79 = load i16* %arrayidx523, align 2, !tbaa !5
  %tobool526 = icmp slt i16 %79, 0
  br i1 %tobool526, label %if.then809, label %lor.lhs.false527thread-pre-split

lor.lhs.false527thread-pre-split:                 ; preds = %land.lhs.true519
  %.pr1115 = load i8* %64, align 1, !tbaa !1
  br label %lor.lhs.false527

lor.lhs.false527:                                 ; preds = %lor.lhs.false527thread-pre-split, %lor.lhs.false509
  %80 = phi i8 [ %.pr1115, %lor.lhs.false527thread-pre-split ], [ %77, %lor.lhs.false509 ]
  %tobool532 = icmp slt i8 %80, 0
  br i1 %tobool532, label %land.lhs.true533, label %lor.lhs.false545

land.lhs.true533:                                 ; preds = %lor.lhs.false527
  br i1 %cmp277, label %land.lhs.true537, label %if.then809

land.lhs.true537:                                 ; preds = %land.lhs.true533
  %sext1058 = shl i64 %c.0, 32
  %idxprom539 = ashr exact i64 %sext1058, 32
  %call540 = call i16** @__ctype_b_loc() #6
  %81 = load i16** %call540, align 8, !tbaa !3
  %arrayidx541 = getelementptr inbounds i16* %81, i64 %idxprom539
  %82 = load i16* %arrayidx541, align 2, !tbaa !5
  %tobool544 = icmp slt i16 %82, 0
  br i1 %tobool544, label %lor.lhs.false545, label %if.then809

lor.lhs.false545:                                 ; preds = %land.lhs.true537, %lor.lhs.false527
  %arrayidx547 = getelementptr inbounds %struct.regnode* %n, i64 10, i32 2
  %83 = bitcast i16* %arrayidx547 to i8*
  %84 = load i8* %83, align 1, !tbaa !1
  %and549 = and i8 %84, 1
  %tobool550 = icmp ne i8 %and549, 0
  %or.cond1098 = and i1 %tobool550, %cmp277
  br i1 %or.cond1098, label %land.lhs.true555, label %lor.lhs.false563

land.lhs.true555:                                 ; preds = %lor.lhs.false545
  %sext1057 = shl i64 %c.0, 32
  %idxprom557 = ashr exact i64 %sext1057, 32
  %call558 = call i16** @__ctype_b_loc() #6
  %85 = load i16** %call558, align 8, !tbaa !3
  %arrayidx559 = getelementptr inbounds i16* %85, i64 %idxprom557
  %86 = load i16* %arrayidx559, align 2, !tbaa !5
  %and561 = and i16 %86, 512
  %tobool562 = icmp eq i16 %and561, 0
  br i1 %tobool562, label %land.lhs.true555.lor.lhs.false563_crit_edge, label %if.then809

land.lhs.true555.lor.lhs.false563_crit_edge:      ; preds = %land.lhs.true555
  %.pre1131 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false563

lor.lhs.false563:                                 ; preds = %land.lhs.true555.lor.lhs.false563_crit_edge, %lor.lhs.false545
  %87 = phi i8 [ %.pre1131, %land.lhs.true555.lor.lhs.false563_crit_edge ], [ %84, %lor.lhs.false545 ]
  %and567 = and i8 %87, 2
  %tobool568 = icmp eq i8 %and567, 0
  br i1 %tobool568, label %lor.lhs.false581, label %land.lhs.true569

land.lhs.true569:                                 ; preds = %lor.lhs.false563
  br i1 %cmp277, label %land.lhs.true573, label %if.then809

land.lhs.true573:                                 ; preds = %land.lhs.true569
  %sext1056 = shl i64 %c.0, 32
  %idxprom575 = ashr exact i64 %sext1056, 32
  %call576 = call i16** @__ctype_b_loc() #6
  %88 = load i16** %call576, align 8, !tbaa !3
  %arrayidx577 = getelementptr inbounds i16* %88, i64 %idxprom575
  %89 = load i16* %arrayidx577, align 2, !tbaa !5
  %and579 = and i16 %89, 512
  %tobool580 = icmp eq i16 %and579, 0
  br i1 %tobool580, label %if.then809, label %land.lhs.true573.lor.lhs.false581_crit_edge

land.lhs.true573.lor.lhs.false581_crit_edge:      ; preds = %land.lhs.true573
  %.pre1132 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false581

lor.lhs.false581:                                 ; preds = %land.lhs.true573.lor.lhs.false581_crit_edge, %lor.lhs.false563
  %90 = phi i8 [ %.pre1132, %land.lhs.true573.lor.lhs.false581_crit_edge ], [ %87, %lor.lhs.false563 ]
  %and585 = and i8 %90, 4
  %tobool586 = icmp ne i8 %and585, 0
  %or.cond1099 = and i1 %tobool586, %cmp277
  br i1 %or.cond1099, label %land.lhs.true591, label %lor.lhs.false599

land.lhs.true591:                                 ; preds = %lor.lhs.false581
  %sext1055 = shl i64 %c.0, 32
  %idxprom593 = ashr exact i64 %sext1055, 32
  %call594 = call i16** @__ctype_b_loc() #6
  %91 = load i16** %call594, align 8, !tbaa !3
  %arrayidx595 = getelementptr inbounds i16* %91, i64 %idxprom593
  %92 = load i16* %arrayidx595, align 2, !tbaa !5
  %and597 = and i16 %92, 16384
  %tobool598 = icmp eq i16 %and597, 0
  br i1 %tobool598, label %land.lhs.true591.lor.lhs.false599_crit_edge, label %if.then809

land.lhs.true591.lor.lhs.false599_crit_edge:      ; preds = %land.lhs.true591
  %.pre1133 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false599

lor.lhs.false599:                                 ; preds = %land.lhs.true591.lor.lhs.false599_crit_edge, %lor.lhs.false581
  %93 = phi i8 [ %.pre1133, %land.lhs.true591.lor.lhs.false599_crit_edge ], [ %90, %lor.lhs.false581 ]
  %and603 = and i8 %93, 8
  %tobool604 = icmp eq i8 %and603, 0
  br i1 %tobool604, label %lor.lhs.false617, label %land.lhs.true605

land.lhs.true605:                                 ; preds = %lor.lhs.false599
  br i1 %cmp277, label %land.lhs.true609, label %if.then809

land.lhs.true609:                                 ; preds = %land.lhs.true605
  %sext1054 = shl i64 %c.0, 32
  %idxprom611 = ashr exact i64 %sext1054, 32
  %call612 = call i16** @__ctype_b_loc() #6
  %94 = load i16** %call612, align 8, !tbaa !3
  %arrayidx613 = getelementptr inbounds i16* %94, i64 %idxprom611
  %95 = load i16* %arrayidx613, align 2, !tbaa !5
  %and615 = and i16 %95, 16384
  %tobool616 = icmp eq i16 %and615, 0
  br i1 %tobool616, label %if.then809, label %land.lhs.true609.lor.lhs.false617_crit_edge

land.lhs.true609.lor.lhs.false617_crit_edge:      ; preds = %land.lhs.true609
  %.pre1134 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false617

lor.lhs.false617:                                 ; preds = %land.lhs.true609.lor.lhs.false617_crit_edge, %lor.lhs.false599
  %96 = phi i8 [ %.pre1134, %land.lhs.true609.lor.lhs.false617_crit_edge ], [ %93, %lor.lhs.false599 ]
  %and621 = and i8 %96, 16
  %tobool622 = icmp ne i8 %and621, 0
  %or.cond1100 = and i1 %tobool622, %cmp277
  br i1 %or.cond1100, label %land.lhs.true627, label %lor.lhs.false635

land.lhs.true627:                                 ; preds = %lor.lhs.false617
  %sext1053 = shl i64 %c.0, 32
  %idxprom629 = ashr exact i64 %sext1053, 32
  %call630 = call i16** @__ctype_b_loc() #6
  %97 = load i16** %call630, align 8, !tbaa !3
  %arrayidx631 = getelementptr inbounds i16* %97, i64 %idxprom629
  %98 = load i16* %arrayidx631, align 2, !tbaa !5
  %and633 = and i16 %98, 4
  %tobool634 = icmp eq i16 %and633, 0
  br i1 %tobool634, label %land.lhs.true627.lor.lhs.false635_crit_edge, label %if.then809

land.lhs.true627.lor.lhs.false635_crit_edge:      ; preds = %land.lhs.true627
  %.pre1135 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false635

lor.lhs.false635:                                 ; preds = %land.lhs.true627.lor.lhs.false635_crit_edge, %lor.lhs.false617
  %99 = phi i8 [ %.pre1135, %land.lhs.true627.lor.lhs.false635_crit_edge ], [ %96, %lor.lhs.false617 ]
  %and639 = and i8 %99, 32
  %tobool640 = icmp eq i8 %and639, 0
  br i1 %tobool640, label %lor.lhs.false653, label %land.lhs.true641

land.lhs.true641:                                 ; preds = %lor.lhs.false635
  br i1 %cmp277, label %land.lhs.true645, label %if.then809

land.lhs.true645:                                 ; preds = %land.lhs.true641
  %sext1052 = shl i64 %c.0, 32
  %idxprom647 = ashr exact i64 %sext1052, 32
  %call648 = call i16** @__ctype_b_loc() #6
  %100 = load i16** %call648, align 8, !tbaa !3
  %arrayidx649 = getelementptr inbounds i16* %100, i64 %idxprom647
  %101 = load i16* %arrayidx649, align 2, !tbaa !5
  %and651 = and i16 %101, 4
  %tobool652 = icmp eq i16 %and651, 0
  br i1 %tobool652, label %if.then809, label %land.lhs.true645.lor.lhs.false653_crit_edge

land.lhs.true645.lor.lhs.false653_crit_edge:      ; preds = %land.lhs.true645
  %.pre1136 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false653

lor.lhs.false653:                                 ; preds = %land.lhs.true645.lor.lhs.false653_crit_edge, %lor.lhs.false635
  %102 = phi i8 [ %.pre1136, %land.lhs.true645.lor.lhs.false653_crit_edge ], [ %99, %lor.lhs.false635 ]
  %and657 = and i8 %102, 64
  %tobool658 = icmp ne i8 %and657, 0
  %or.cond1101 = and i1 %tobool658, %cmp277
  br i1 %or.cond1101, label %land.lhs.true663, label %lor.lhs.false671

land.lhs.true663:                                 ; preds = %lor.lhs.false653
  %sext1051 = shl i64 %c.0, 32
  %idxprom665 = ashr exact i64 %sext1051, 32
  %call666 = call i16** @__ctype_b_loc() #6
  %103 = load i16** %call666, align 8, !tbaa !3
  %arrayidx667 = getelementptr inbounds i16* %103, i64 %idxprom665
  %104 = load i16* %arrayidx667, align 2, !tbaa !5
  %and669 = and i16 %104, 256
  %tobool670 = icmp eq i16 %and669, 0
  br i1 %tobool670, label %lor.lhs.false671thread-pre-split, label %if.then809

lor.lhs.false671thread-pre-split:                 ; preds = %land.lhs.true663
  %.pr1116 = load i8* %83, align 1, !tbaa !1
  br label %lor.lhs.false671

lor.lhs.false671:                                 ; preds = %lor.lhs.false671thread-pre-split, %lor.lhs.false653
  %105 = phi i8 [ %.pr1116, %lor.lhs.false671thread-pre-split ], [ %102, %lor.lhs.false653 ]
  %tobool676 = icmp slt i8 %105, 0
  br i1 %tobool676, label %land.lhs.true677, label %lor.lhs.false689

land.lhs.true677:                                 ; preds = %lor.lhs.false671
  br i1 %cmp277, label %land.lhs.true681, label %if.then809

land.lhs.true681:                                 ; preds = %land.lhs.true677
  %sext = shl i64 %c.0, 32
  %idxprom683 = ashr exact i64 %sext, 32
  %call684 = call i16** @__ctype_b_loc() #6
  %106 = load i16** %call684, align 8, !tbaa !3
  %arrayidx685 = getelementptr inbounds i16* %106, i64 %idxprom683
  %107 = load i16* %arrayidx685, align 2, !tbaa !5
  %and687 = and i16 %107, 256
  %tobool688 = icmp eq i16 %and687, 0
  br i1 %tobool688, label %if.then809, label %lor.lhs.false689

lor.lhs.false689:                                 ; preds = %land.lhs.true681, %lor.lhs.false671
  %arrayidx691 = getelementptr inbounds [4 x i8]* %39, i64 0, i64 3
  %108 = load i8* %arrayidx691, align 1, !tbaa !1
  %and693 = and i8 %108, 1
  %tobool694 = icmp eq i8 %and693, 0
  br i1 %tobool694, label %lor.lhs.false713, label %land.lhs.true695

land.lhs.true695:                                 ; preds = %lor.lhs.false689
  %c.0.off1048 = add i64 %c.0, -48
  %109 = icmp ult i64 %c.0.off1048, 10
  %c.0.off1049 = add i64 %c.0, -97
  %110 = icmp ult i64 %c.0.off1049, 6
  %or.cond1103 = or i1 %109, %110
  %c.0.off1050 = add i64 %c.0, -65
  %111 = icmp ult i64 %c.0.off1050, 6
  %or.cond1105 = or i1 %or.cond1103, %111
  br i1 %or.cond1105, label %if.then809, label %lor.lhs.false713

lor.lhs.false713:                                 ; preds = %land.lhs.true695, %lor.lhs.false689
  %and717 = and i8 %108, 2
  %tobool718 = icmp eq i8 %and717, 0
  br i1 %tobool718, label %lor.lhs.false737, label %land.lhs.true719

land.lhs.true719:                                 ; preds = %lor.lhs.false713
  %c.0.off = add i64 %c.0, -48
  %112 = icmp ult i64 %c.0.off, 10
  %c.0.off1046 = add i64 %c.0, -97
  %113 = icmp ult i64 %c.0.off1046, 6
  %or.cond1107 = or i1 %112, %113
  %c.0.off1047 = add i64 %c.0, -65
  %114 = icmp ult i64 %c.0.off1047, 6
  %or.cond1109 = or i1 %or.cond1107, %114
  br i1 %or.cond1109, label %lor.lhs.false737, label %if.then809

lor.lhs.false737:                                 ; preds = %lor.lhs.false713, %land.lhs.true719
  %and741 = and i8 %108, 4
  %tobool742 = icmp eq i8 %and741, 0
  br i1 %tobool742, label %lor.lhs.false761, label %land.lhs.true743

land.lhs.true743:                                 ; preds = %lor.lhs.false737
  switch i64 %c.0, label %lor.lhs.false761 [
    i64 32, label %if.then809
    i64 13, label %if.then809
    i64 12, label %if.then809
    i64 11, label %if.then809
    i64 10, label %if.then809
    i64 9, label %if.then809
  ]

lor.lhs.false761:                                 ; preds = %land.lhs.true743, %lor.lhs.false737
  %and765 = and i8 %108, 8
  %tobool766 = icmp eq i8 %and765, 0
  br i1 %tobool766, label %lor.lhs.false785, label %land.lhs.true767

land.lhs.true767:                                 ; preds = %lor.lhs.false761
  switch i64 %c.0, label %if.then809 [
    i64 32, label %lor.lhs.false785
    i64 13, label %lor.lhs.false785
    i64 12, label %lor.lhs.false785
    i64 11, label %lor.lhs.false785
    i64 10, label %lor.lhs.false785
    i64 9, label %lor.lhs.false785
  ]

lor.lhs.false785:                                 ; preds = %land.lhs.true767, %land.lhs.true767, %land.lhs.true767, %land.lhs.true767, %land.lhs.true767, %land.lhs.true767, %lor.lhs.false761
  %and789 = and i8 %108, 16
  %tobool790 = icmp eq i8 %and789, 0
  br i1 %tobool790, label %lor.lhs.false797, label %land.lhs.true791

land.lhs.true791:                                 ; preds = %lor.lhs.false785
  switch i64 %c.0, label %lor.lhs.false797 [
    i64 32, label %if.then809
    i64 9, label %if.then809
  ]

lor.lhs.false797:                                 ; preds = %land.lhs.true791, %lor.lhs.false785
  %and801 = and i8 %108, 32
  %tobool802 = icmp eq i8 %and801, 0
  br i1 %tobool802, label %if.end812, label %land.lhs.true803

land.lhs.true803:                                 ; preds = %lor.lhs.false797
  switch i64 %c.0, label %if.then809 [
    i64 32, label %if.end812
    i64 9, label %if.end812
  ]

if.then809:                                       ; preds = %land.lhs.true803, %land.lhs.true791, %land.lhs.true791, %land.lhs.true767, %land.lhs.true743, %land.lhs.true743, %land.lhs.true743, %land.lhs.true743, %land.lhs.true743, %land.lhs.true743, %land.lhs.true719, %lor.lhs.false464, %lor.lhs.false455, %land.lhs.true300, %land.lhs.true279, %land.lhs.true321, %land.lhs.true339, %land.lhs.true357, %land.lhs.true375, %land.lhs.true393, %land.lhs.true411, %land.lhs.true429, %land.lhs.true447, %land.lhs.true483, %land.lhs.true501, %land.lhs.true555, %land.lhs.true573, %land.lhs.true591, %land.lhs.true609, %land.lhs.true627, %land.lhs.true645, %land.lhs.true663, %land.lhs.true681, %land.lhs.true695, %land.lhs.true677, %land.lhs.true641, %land.lhs.true605, %land.lhs.true569, %land.lhs.true537, %land.lhs.true533, %land.lhs.true519, %land.lhs.true497, %land.lhs.true443, %land.lhs.true407, %land.lhs.true371, %land.lhs.true335, %land.lhs.true296
  br label %if.end812

if.end812:                                        ; preds = %if.end263, %if.then220, %land.lhs.true803, %land.lhs.true803, %lor.lhs.false797, %land.lhs.true265, %if.end215, %if.then809
  %match.6 = phi i8 [ %match.4, %if.end215 ], [ %match.4., %if.end263 ], [ 1, %if.then809 ], [ 0, %land.lhs.true803 ], [ 0, %lor.lhs.false797 ], [ 0, %land.lhs.true265 ], [ 0, %land.lhs.true803 ], [ 1, %if.then220 ]
  %and814 = and i8 %0, 4
  %tobool815 = icmp eq i8 %and814, 0
  br i1 %tobool815, label %cond.end820, label %cond.true816

cond.true816:                                     ; preds = %if.end812
  %lnot = icmp eq i8 %match.6, 0
  %lnot.ext = zext i1 %lnot to i8
  br label %cond.end820

cond.end820:                                      ; preds = %if.end812, %cond.true816
  %cond821 = phi i8 [ %lnot.ext, %cond.true816 ], [ %match.6, %if.end812 ]
  ret i8 %cond821
}

; Function Attrs: optsize
declare void @Perl_push_scope() #3

; Function Attrs: optsize
declare void @Perl_save_re_context() #3

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_alnum(i8*) #3

; Function Attrs: optsize
declare void @Perl_pop_scope() #3

; Function Attrs: optsize
declare i64 @Perl_swash_fetch(%struct.sv*, i8*, i8 signext) #3

; Function Attrs: optsize
declare i64 @Perl_utf8_to_uvchr(i8*, i64*) #3

; Function Attrs: optsize
declare i16** @__ctype_b_loc() #3

; Function Attrs: optsize
declare signext i8 @Perl_is_uni_alnum_lc(i64) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_uni_alnum(i64) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_space(i8*) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_uni_space_lc(i64) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_digit(i8*) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_uni_digit_lc(i64) #3

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_mark(i8*) #3

; Function Attrs: optsize
declare i64 @Perl_to_utf8_lower(i8*, i8*, i64*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_regcppush(i32 %parenfloor) #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %1 = load i32* @PL_regsize, align 4, !tbaa !0
  %sub = sub nsw i32 %1, %parenfloor
  %mul = shl nsw i32 %sub, 2
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str14, i64 0, i64 0)) #6
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %add = add nsw i32 %mul, 6
  %add2 = add nsw i32 %2, %add
  %3 = load i32* @PL_savestack_max, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %add2, %3
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  tail call void @Perl_savestack_grow_cnt(i32 %add) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then4
  %4 = load i32* @PL_regsize, align 4, !tbaa !0
  %cmp760 = icmp sgt i32 %4, %parenfloor
  br i1 %cmp760, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  %.pre64 = load %union.any** @PL_savestack, align 8, !tbaa !3
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %5 = sext i32 %4 to i64
  %.pre63 = load %union.any** @PL_savestack, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %6 = phi %union.any* [ %.pre63, %for.body.lr.ph ], [ %16, %for.body ]
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %7, i64 %indvars.iv
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %9 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds %union.any* %6, i64 %idxprom8
  %any_i32 = bitcast %union.any* %arrayidx9 to i32*
  store i32 %8, i32* %any_i32, align 4, !tbaa !0
  %10 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %11 = load i32* %arrayidx11, align 4, !tbaa !0
  %12 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds %union.any* %6, i64 %idxprom13
  %any_i3215 = bitcast %union.any* %arrayidx14 to i32*
  store i32 %11, i32* %any_i3215, align 4, !tbaa !0
  %13 = load i8*** @PL_reg_start_tmp, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i8** %13, i64 %indvars.iv
  %14 = load i8** %arrayidx17, align 8, !tbaa !3
  %15 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc18 = add nsw i32 %15, 1
  %idxprom19 = sext i32 %15 to i64
  %any_ptr = getelementptr inbounds %union.any* %6, i64 %idxprom19, i32 0
  store i8* %14, i8** %any_ptr, align 8, !tbaa !3
  %inc21 = add nsw i32 %15, 2
  store i32 %inc21, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom22 = sext i32 %inc18 to i64
  %16 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds %union.any* %16, i64 %idxprom22
  %any_i3224 = bitcast %union.any* %arrayidx23 to i32*
  %17 = trunc i64 %indvars.iv to i32
  store i32 %17, i32* %any_i3224, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp sgt i32 %18, %parenfloor
  br i1 %cmp7, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre62 = load i32* @PL_regsize, align 4, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %for.cond.for.end_crit_edge
  %19 = phi %union.any* [ %16, %for.cond.for.end_crit_edge ], [ %.pre64, %if.end6.for.end_crit_edge ]
  %20 = phi i32 [ %.pre62, %for.cond.for.end_crit_edge ], [ %4, %if.end6.for.end_crit_edge ]
  %21 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds %union.any* %19, i64 %idxprom26
  %any_i3228 = bitcast %union.any* %arrayidx27 to i32*
  store i32 %20, i32* %any_i3228, align 4, !tbaa !0
  %22 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %23 = load i32* %22, align 4, !tbaa !0
  %24 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds %union.any* %19, i64 %idxprom30
  %any_i3232 = bitcast %union.any* %arrayidx31 to i32*
  store i32 %23, i32* %any_i3232, align 4, !tbaa !0
  %25 = load i32** @PL_reglastcloseparen, align 8, !tbaa !3
  %26 = load i32* %25, align 4, !tbaa !0
  %27 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc33 = add nsw i32 %27, 1
  store i32 %inc33, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds %union.any* %19, i64 %idxprom34
  %any_i3236 = bitcast %union.any* %arrayidx35 to i32*
  store i32 %26, i32* %any_i3236, align 4, !tbaa !0
  %28 = load i8** @PL_reginput, align 8, !tbaa !3
  %29 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc37 = add nsw i32 %29, 1
  %idxprom38 = sext i32 %29 to i64
  %any_ptr40 = getelementptr inbounds %union.any* %19, i64 %idxprom38, i32 0
  store i8* %28, i8** %any_ptr40, align 8, !tbaa !3
  %sub42 = add nsw i32 %mul, 4
  %inc43 = add nsw i32 %29, 2
  store i32 %inc43, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom44 = sext i32 %inc37 to i64
  %30 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds %union.any* %30, i64 %idxprom44
  %any_i3246 = bitcast %union.any* %arrayidx45 to i32*
  store i32 %sub42, i32* %any_i3246, align 4, !tbaa !0
  %31 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds %union.any* %30, i64 %idxprom48
  %any_i3250 = bitcast %union.any* %arrayidx49 to i32*
  store i32 21, i32* %any_i3250, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_regcppop() #0 {
entry:
  %0 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %dec1 = add nsw i32 %0, -2
  store i32 %dec1, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom2 = sext i32 %dec1 to i64
  %1 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds %union.any* %1, i64 %idxprom2
  %any_i324 = bitcast %union.any* %arrayidx3 to i32*
  %2 = load i32* %any_i324, align 4, !tbaa !0
  %dec8 = add nsw i32 %0, -4
  store i32 %dec8, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom9 = sext i32 %dec8 to i64
  %arrayidx10 = getelementptr inbounds %union.any* %1, i64 %idxprom9
  %any_i3211 = bitcast %union.any* %arrayidx10 to i32*
  %3 = load i32* %any_i3211, align 4, !tbaa !0
  %4 = load i32** @PL_reglastcloseparen, align 8, !tbaa !3
  store i32 %3, i32* %4, align 4, !tbaa !0
  %5 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %dec12 = add nsw i32 %5, -1
  store i32 %dec12, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom13 = sext i32 %dec12 to i64
  %arrayidx14 = getelementptr inbounds %union.any* %1, i64 %idxprom13
  %any_i3215 = bitcast %union.any* %arrayidx14 to i32*
  %6 = load i32* %any_i3215, align 4, !tbaa !0
  %7 = load i32** @PL_reglastparen, align 8, !tbaa !3
  store i32 %6, i32* %7, align 4, !tbaa !0
  %8 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %dec16 = add nsw i32 %8, -1
  store i32 %dec16, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom17 = sext i32 %dec16 to i64
  %arrayidx18 = getelementptr inbounds %union.any* %1, i64 %idxprom17
  %any_i3219 = bitcast %union.any* %arrayidx18 to i32*
  %9 = load i32* %any_i3219, align 4, !tbaa !0
  store i32 %9, i32* @PL_regsize, align 4, !tbaa !0
  %i.04 = add nsw i32 %2, -4
  %cmp5 = icmp sgt i32 %i.04, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond.backedge.for.body_crit_edge
  %10 = phi i32 [ %.pre, %for.cond.backedge.for.body_crit_edge ], [ %dec16, %entry ]
  %11 = phi %union.any* [ %15, %for.cond.backedge.for.body_crit_edge ], [ %1, %entry ]
  %i.06 = phi i32 [ %i.0, %for.cond.backedge.for.body_crit_edge ], [ %i.04, %entry ]
  %dec20 = add nsw i32 %10, -1
  store i32 %dec20, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom21 = sext i32 %dec20 to i64
  %arrayidx22 = getelementptr inbounds %union.any* %11, i64 %idxprom21
  %any_i3223 = bitcast %union.any* %arrayidx22 to i32*
  %12 = load i32* %any_i3223, align 4, !tbaa !0
  %dec24 = add nsw i32 %10, -2
  %idxprom25 = sext i32 %dec24 to i64
  %any_ptr27 = getelementptr inbounds %union.any* %11, i64 %idxprom25, i32 0
  %13 = load i8** %any_ptr27, align 8, !tbaa !3
  %idxprom28 = zext i32 %12 to i64
  %14 = load i8*** @PL_reg_start_tmp, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i8** %14, i64 %idxprom28
  store i8* %13, i8** %arrayidx29, align 8, !tbaa !3
  %dec30 = add nsw i32 %10, -3
  store i32 %dec30, i32* @PL_savestack_ix, align 4, !tbaa !0
  %idxprom31 = sext i32 %dec30 to i64
  %15 = load %union.any** @PL_savestack, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds %union.any* %15, i64 %idxprom31
  %any_i3233 = bitcast %union.any* %arrayidx32 to i32*
  %16 = load i32* %any_i3233, align 4, !tbaa !0
  %17 = load i32** @PL_regstartp, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %17, i64 %idxprom28
  store i32 %16, i32* %arrayidx35, align 4, !tbaa !0
  %18 = load i32* @PL_savestack_ix, align 4, !tbaa !0
  %dec36 = add nsw i32 %18, -1
  store i32 %dec36, i32* @PL_savestack_ix, align 4, !tbaa !0
  %19 = load i32** @PL_reglastparen, align 8, !tbaa !3
  %20 = load i32* %19, align 4, !tbaa !0
  %cmp40 = icmp ugt i32 %12, %20
  br i1 %cmp40, label %for.cond.backedge, label %if.then

for.cond.backedge:                                ; preds = %for.body, %if.then
  %i.0 = add nsw i32 %i.06, -4
  %cmp = icmp sgt i32 %i.0, 0
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !0
  br label %for.body

if.then:                                          ; preds = %for.body
  %idxprom37 = sext i32 %dec36 to i64
  %arrayidx38 = getelementptr inbounds %union.any* %15, i64 %idxprom37
  %any_i3239 = bitcast %union.any* %arrayidx38 to i32*
  %21 = load i32* %any_i3239, align 4, !tbaa !0
  %22 = load i32** @PL_regendp, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds i32* %22, i64 %idxprom28
  store i32 %21, i32* %arrayidx42, align 4, !tbaa !0
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %entry
  %23 = phi i32* [ %7, %entry ], [ %19, %for.cond.backedge ]
  %24 = load i32* %23, align 4, !tbaa !0
  %paren.01 = add i32 %24, 1
  %25 = load i32* @PL_regnpar, align 4, !tbaa !0
  %cmp452 = icmp sgt i32 %paren.01, %25
  br i1 %cmp452, label %for.end55, label %for.body46.lr.ph

for.body46.lr.ph:                                 ; preds = %for.end
  %26 = load i32** @PL_regstartp, align 8, !tbaa !3
  %27 = load i32** @PL_regendp, align 8, !tbaa !3
  br label %for.body46

for.body46:                                       ; preds = %if.end51, %for.body46.lr.ph
  %paren.03 = phi i32 [ %paren.01, %for.body46.lr.ph ], [ %paren.0, %if.end51 ]
  %28 = load i32* @PL_regsize, align 4, !tbaa !0
  %cmp47 = icmp sgt i32 %paren.03, %28
  %idxprom49 = zext i32 %paren.03 to i64
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %for.body46
  %arrayidx50 = getelementptr inbounds i32* %26, i64 %idxprom49
  store i32 -1, i32* %arrayidx50, align 4, !tbaa !0
  br label %if.end51

if.end51:                                         ; preds = %for.body46, %if.then48
  %arrayidx53 = getelementptr inbounds i32* %27, i64 %idxprom49
  store i32 -1, i32* %arrayidx53, align 4, !tbaa !0
  %paren.0 = add i32 %paren.03, 1
  %29 = load i32* @PL_regnpar, align 4, !tbaa !0
  %cmp45 = icmp sgt i32 %paren.0, %29
  br i1 %cmp45, label %for.end55, label %for.body46

for.end55:                                        ; preds = %if.end51, %for.end
  ret void
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_save_scalar(%struct.gv*) #3

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #3

; Function Attrs: optsize
declare i32 @Perl_save_alloc(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_regrepeat_hard(%struct.regnode* %p, i32 %max, i32* nocapture %lp) #0 {
entry:
  %0 = load i8** @PL_regeol, align 8, !tbaa !3
  %tobool = icmp eq i32 %max, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8** @PL_reginput, align 8, !tbaa !3
  %2 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %2, 0
  br i1 %tobool1, label %while.cond20.preheader, label %while.cond

while.cond20.preheader:                           ; preds = %if.end
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %cmp32 = icmp eq i32 %max, 32767
  br label %while.cond20.outer

while.cond:                                       ; preds = %if.end, %if.end14.while.cond_crit_edge
  %3 = phi i8* [ %.pre122, %if.end14.while.cond_crit_edge ], [ %1, %if.end ]
  %scan.0 = phi i8* [ %3, %if.end14.while.cond_crit_edge ], [ null, %if.end ]
  %start.0 = phi i8* [ %start.2, %if.end14.while.cond_crit_edge ], [ %1, %if.end ]
  %count.0 = phi i32 [ %inc, %if.end14.while.cond_crit_edge ], [ 0, %if.end ]
  %res.0 = phi i32 [ %call, %if.end14.while.cond_crit_edge ], [ 1, %if.end ]
  %cmp = icmp ult i8* %3, %0
  br i1 %cmp, label %land.rhs, label %if.end51

land.rhs:                                         ; preds = %while.cond
  %call = tail call fastcc i32 @S_regmatch(%struct.regnode* %p) #5
  %tobool3 = icmp eq i32 %call, 0
  br i1 %tobool3, label %if.then53, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nsw i32 %count.0, 1
  %tobool4 = icmp eq i32 %count.0, 0
  br i1 %tobool4, label %while.cond6.preheader, label %if.end14

while.cond6.preheader:                            ; preds = %while.body
  %4 = load i8** @PL_reginput, align 8, !tbaa !3
  %cmp790 = icmp ult i8* %start.0, %4
  br i1 %cmp790, label %while.body8, label %while.end.thread

while.end.thread:                                 ; preds = %while.cond6.preheader
  store i32 0, i32* %lp, align 4, !tbaa !0
  br label %return

while.body8:                                      ; preds = %while.cond6.preheader, %while.body8
  %l.092 = phi i32 [ %inc9, %while.body8 ], [ 0, %while.cond6.preheader ]
  %start.191 = phi i8* [ %add.ptr, %while.body8 ], [ %start.0, %while.cond6.preheader ]
  %inc9 = add nsw i32 %l.092, 1
  %5 = load i8* %start.191, align 1, !tbaa !1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %6 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext = zext i8 %6 to i64
  %add.ptr = getelementptr inbounds i8* %start.191, i64 %idx.ext
  %cmp7 = icmp ult i8* %add.ptr, %4
  br i1 %cmp7, label %while.body8, label %while.end

while.end:                                        ; preds = %while.body8
  store i32 %inc9, i32* %lp, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %inc9, 0
  br i1 %cmp10, label %return, label %if.end14

if.end14:                                         ; preds = %while.body, %while.end
  %start.2 = phi i8* [ %start.0, %while.body ], [ %add.ptr, %while.end ]
  %cmp15 = icmp eq i32 %inc, %max
  br i1 %cmp15, label %return, label %if.end14.while.cond_crit_edge

if.end14.while.cond_crit_edge:                    ; preds = %if.end14
  %.pre122 = load i8** @PL_reginput, align 8, !tbaa !3
  br label %while.cond

while.cond20:                                     ; preds = %while.body27, %while.cond20.outer
  %7 = phi i8* [ %9, %while.cond20.outer ], [ %8, %while.body27 ]
  %scan.1 = phi i8* [ %scan.1.ph, %while.cond20.outer ], [ %7, %while.body27 ]
  %count.1 = phi i32 [ %count.1.ph, %while.cond20.outer ], [ %inc28, %while.body27 ]
  %res.1 = phi i32 [ %res.1.ph, %while.cond20.outer ], [ %call24, %while.body27 ]
  %cmp21 = icmp ult i8* %7, %loceol.0.ph
  br i1 %cmp21, label %land.rhs23, label %if.end51

land.rhs23:                                       ; preds = %while.cond20
  %call24 = tail call fastcc i32 @S_regmatch(%struct.regnode* %p) #5
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %if.then53, label %while.body27

while.body27:                                     ; preds = %land.rhs23
  %inc28 = add nsw i32 %count.1, 1
  %tobool29 = icmp eq i32 %count.1, 0
  %8 = load i8** @PL_reginput, align 8, !tbaa !3
  br i1 %tobool29, label %if.then30, label %while.cond20

if.then30:                                        ; preds = %while.body27
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv31 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv31, i32* %lp, align 4, !tbaa !0
  br i1 %cmp32, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then30
  %mul = mul nsw i32 %conv31, %max
  %conv34 = sext i32 %mul to i64
  %sub.ptr.lhs.cast35 = ptrtoint i8* %loceol.0.ph to i64
  %sub.ptr.rhs.cast36 = ptrtoint i8* %7 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %cmp38 = icmp slt i64 %conv34, %sub.ptr.sub37
  br i1 %cmp38, label %if.then40, label %if.end44

if.then40:                                        ; preds = %land.lhs.true
  %add.ptr43 = getelementptr inbounds i8* %7, i64 %conv34
  br label %if.end44

if.end44:                                         ; preds = %if.then30, %if.then40, %land.lhs.true
  %loceol.1 = phi i8* [ %add.ptr43, %if.then40 ], [ %loceol.0.ph, %land.lhs.true ], [ %loceol.0.ph, %if.then30 ]
  %cmp45 = icmp eq i32 %conv31, 0
  br i1 %cmp45, label %return, label %while.cond20.outer

while.cond20.outer:                               ; preds = %while.cond20.preheader, %if.end44
  %9 = phi i8* [ %8, %if.end44 ], [ %1, %while.cond20.preheader ]
  %scan.1.ph = phi i8* [ %7, %if.end44 ], [ null, %while.cond20.preheader ]
  %loceol.0.ph = phi i8* [ %loceol.1, %if.end44 ], [ %0, %while.cond20.preheader ]
  %count.1.ph = phi i32 [ %inc28, %if.end44 ], [ 0, %while.cond20.preheader ]
  %res.1.ph = phi i32 [ %call24, %if.end44 ], [ 1, %while.cond20.preheader ]
  br label %while.cond20

if.end51:                                         ; preds = %while.cond, %while.cond20
  %scan.2 = phi i8* [ %scan.1, %while.cond20 ], [ %scan.0, %while.cond ]
  %count.2 = phi i32 [ %count.1, %while.cond20 ], [ %count.0, %while.cond ]
  %res.2 = phi i32 [ %res.1, %while.cond20 ], [ %res.0, %while.cond ]
  %tobool52 = icmp eq i32 %res.2, 0
  br i1 %tobool52, label %if.then53, label %return

if.then53:                                        ; preds = %land.rhs, %land.rhs23, %if.end51
  %count.280 = phi i32 [ %count.2, %if.end51 ], [ %count.1, %land.rhs23 ], [ %count.0, %land.rhs ]
  %scan.279 = phi i8* [ %scan.2, %if.end51 ], [ %7, %land.rhs23 ], [ %3, %land.rhs ]
  store i8* %scan.279, i8** @PL_reginput, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end14, %while.end, %while.end.thread, %if.end44, %if.then53, %if.end51, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %count.2, %if.end51 ], [ %count.280, %if.then53 ], [ %max, %if.end44 ], [ %max, %while.end.thread ], [ %max, %while.end ], [ %max, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.regnode* @Perl_regnext(%struct.regnode*) #3

; Function Attrs: optsize
declare i64 @Perl_to_utf8_upper(i8*, i8*, i64*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_regrepeat(%struct.regnode* nocapture %p, i32 %max) #0 {
entry:
  %0 = load i8** @PL_regeol, align 8, !tbaa !3
  %1 = load i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %2 = load i8** @PL_reginput, align 8, !tbaa !3
  %cmp = icmp eq i32 %max, 32767
  br i1 %cmp, label %if.end4, label %if.else

if.else:                                          ; preds = %entry
  %conv = sext i32 %max to i64
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i64 %conv, %sub.ptr.sub
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  %add.ptr = getelementptr inbounds i8* %2, i64 %conv
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.else, %if.then3
  %loceol.0 = phi i8* [ %add.ptr, %if.then3 ], [ %0, %if.else ], [ %0, %entry ]
  %max.addr.0 = phi i32 [ %max, %if.then3 ], [ %max, %if.else ], [ 2147483647, %entry ]
  %type = getelementptr inbounds %struct.regnode* %p, i64 0, i32 1
  %3 = load i8* %type, align 1, !tbaa !1
  %conv5 = zext i8 %3 to i32
  switch i32 %conv5, label %if.else821 [
    i32 14, label %sw.bb
    i32 15, label %sw.bb29
    i32 16, label %sw.bb49
    i32 33, label %sw.bb50
    i32 34, label %sw.bb63
    i32 35, label %sw.bb84
    i32 17, label %sw.bb107
    i32 18, label %sw.bb150
    i32 19, label %sw.bb212
    i32 20, label %sw.bb293
    i32 21, label %sw.bb359
    i32 22, label %sw.bb443
    i32 23, label %sw.bb505
    i32 24, label %sw.bb582
    i32 25, label %sw.bb646
    i32 26, label %sw.bb725
    i32 28, label %sw.bb771
  ]

sw.bb:                                            ; preds = %if.end4
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %while.cond18.preheader, label %if.then6

while.cond18.preheader:                           ; preds = %sw.bb
  %cmp191150 = icmp ult i8* %2, %loceol.0
  br i1 %cmp191150, label %land.rhs21, label %if.else821

if.then6:                                         ; preds = %sw.bb
  %cmp71152 = icmp ult i8* %2, %0
  %cmp91153 = icmp sgt i32 %max.addr.0, 0
  %or.cond1154 = and i1 %cmp71152, %cmp91153
  br i1 %or.cond1154, label %land.rhs, label %if.else821

land.rhs:                                         ; preds = %if.then6, %while.body
  %hardcount.01156 = phi i32 [ %inc, %while.body ], [ 0, %if.then6 ]
  %scan.01155 = phi i8* [ %add.ptr16, %while.body ], [ %2, %if.then6 ]
  %4 = load i8* %scan.01155, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %4, 10
  br i1 %cmp12, label %sw.epilog, label %while.body

while.body:                                       ; preds = %land.rhs
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext15 = zext i8 %5 to i64
  %add.ptr16 = getelementptr inbounds i8* %scan.01155, i64 %idx.ext15
  %inc = add nsw i32 %hardcount.01156, 1
  %cmp7 = icmp ult i8* %add.ptr16, %0
  %cmp9 = icmp slt i32 %inc, %max.addr.0
  %or.cond = and i1 %cmp7, %cmp9
  br i1 %or.cond, label %land.rhs, label %sw.epilog

while.cond18:                                     ; preds = %land.rhs21
  %cmp19 = icmp ult i8* %incdec.ptr, %loceol.0
  br i1 %cmp19, label %land.rhs21, label %if.else821

land.rhs21:                                       ; preds = %while.cond18.preheader, %while.cond18
  %scan.11151 = phi i8* [ %incdec.ptr, %while.cond18 ], [ %2, %while.cond18.preheader ]
  %6 = load i8* %scan.11151, align 1, !tbaa !1
  %cmp23 = icmp eq i8 %6, 10
  %incdec.ptr = getelementptr inbounds i8* %scan.11151, i64 1
  br i1 %cmp23, label %if.else821, label %while.cond18

sw.bb29:                                          ; preds = %if.end4
  %tobool30 = icmp eq i8 %1, 0
  br i1 %tobool30, label %if.else821, label %if.then31

if.then31:                                        ; preds = %sw.bb29
  %cmp331160 = icmp ult i8* %2, %0
  %cmp361161 = icmp sgt i32 %max.addr.0, 0
  %or.cond11101162 = and i1 %cmp331160, %cmp361161
  br i1 %or.cond11101162, label %while.body39, label %if.else821

while.body39:                                     ; preds = %if.then31, %while.body39
  %hardcount.11164 = phi i32 [ %inc45, %while.body39 ], [ 0, %if.then31 ]
  %scan.21163 = phi i8* [ %add.ptr44, %while.body39 ], [ %2, %if.then31 ]
  %7 = load i8* %scan.21163, align 1, !tbaa !1
  %idxprom40 = zext i8 %7 to i64
  %arrayidx41 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom40
  %8 = load i8* %arrayidx41, align 1, !tbaa !1
  %idx.ext43 = zext i8 %8 to i64
  %add.ptr44 = getelementptr inbounds i8* %scan.21163, i64 %idx.ext43
  %inc45 = add nsw i32 %hardcount.11164, 1
  %cmp33 = icmp ult i8* %add.ptr44, %0
  %cmp36 = icmp slt i32 %inc45, %max.addr.0
  %or.cond1110 = and i1 %cmp33, %cmp36
  br i1 %or.cond1110, label %while.body39, label %sw.epilog

sw.bb49:                                          ; preds = %if.end4
  br label %if.else821

sw.bb50:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds %struct.regnode* %p, i64 1, i32 0
  %9 = load i8* %arraydecay, align 1, !tbaa !1
  %cmp531168 = icmp ult i8* %2, %loceol.0
  br i1 %cmp531168, label %land.rhs55, label %if.else821

while.cond52:                                     ; preds = %land.rhs55
  %cmp53 = icmp ult i8* %incdec.ptr61, %loceol.0
  br i1 %cmp53, label %land.rhs55, label %if.else821

land.rhs55:                                       ; preds = %sw.bb50, %while.cond52
  %scan.31169 = phi i8* [ %incdec.ptr61, %while.cond52 ], [ %2, %sw.bb50 ]
  %10 = load i8* %scan.31169, align 1, !tbaa !1
  %cmp57 = icmp eq i8 %10, %9
  %incdec.ptr61 = getelementptr inbounds i8* %scan.31169, i64 1
  br i1 %cmp57, label %while.cond52, label %if.else821

sw.bb63:                                          ; preds = %if.end4
  %arraydecay65 = getelementptr inbounds %struct.regnode* %p, i64 1, i32 0
  %11 = load i8* %arraydecay65, align 1, !tbaa !1
  %idxprom75 = zext i8 %11 to i64
  %arrayidx76 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %idxprom75
  %cmp681172 = icmp ult i8* %2, %loceol.0
  br i1 %cmp681172, label %land.rhs70, label %if.else821

land.rhs70:                                       ; preds = %sw.bb63, %while.body81
  %scan.41173 = phi i8* [ %incdec.ptr82, %while.body81 ], [ %2, %sw.bb63 ]
  %12 = load i8* %scan.41173, align 1, !tbaa !1
  %cmp72 = icmp eq i8 %12, %11
  br i1 %cmp72, label %while.body81, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs70
  %13 = load i8* %arrayidx76, align 1, !tbaa !1
  %cmp78 = icmp eq i8 %12, %13
  br i1 %cmp78, label %while.body81, label %if.else821

while.body81:                                     ; preds = %land.rhs70, %lor.rhs
  %incdec.ptr82 = getelementptr inbounds i8* %scan.41173, i64 1
  %cmp68 = icmp ult i8* %incdec.ptr82, %loceol.0
  br i1 %cmp68, label %land.rhs70, label %if.else821

sw.bb84:                                          ; preds = %if.end4
  %14 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or = or i32 %14, 1
  store i32 %or, i32* @PL_reg_flags, align 4, !tbaa !0
  %arraydecay86 = getelementptr inbounds %struct.regnode* %p, i64 1, i32 0
  %15 = load i8* %arraydecay86, align 1, !tbaa !1
  %idxprom97 = zext i8 %15 to i64
  %arrayidx98 = getelementptr inbounds [0 x i8]* @PL_fold_locale, i64 0, i64 %idxprom97
  %cmp891176 = icmp ult i8* %2, %loceol.0
  br i1 %cmp891176, label %land.rhs91, label %if.else821

land.rhs91:                                       ; preds = %sw.bb84, %while.body104
  %scan.51177 = phi i8* [ %incdec.ptr105, %while.body104 ], [ %2, %sw.bb84 ]
  %16 = load i8* %scan.51177, align 1, !tbaa !1
  %cmp93 = icmp eq i8 %16, %15
  br i1 %cmp93, label %while.body104, label %lor.rhs95

lor.rhs95:                                        ; preds = %land.rhs91
  %17 = load i8* %arrayidx98, align 1, !tbaa !1
  %cmp100 = icmp eq i8 %16, %17
  br i1 %cmp100, label %while.body104, label %if.else821

while.body104:                                    ; preds = %land.rhs91, %lor.rhs95
  %incdec.ptr105 = getelementptr inbounds i8* %scan.51177, i64 1
  %cmp89 = icmp ult i8* %incdec.ptr105, %loceol.0
  br i1 %cmp89, label %land.rhs91, label %if.else821

sw.bb107:                                         ; preds = %if.end4
  %tobool108 = icmp eq i8 %1, 0
  br i1 %tobool108, label %while.cond129.preheader, label %if.then109

while.cond129.preheader:                          ; preds = %sw.bb107
  %cmp1301180 = icmp ult i8* %2, %loceol.0
  br i1 %cmp1301180, label %land.rhs132.lr.ph, label %if.else821

land.rhs132.lr.ph:                                ; preds = %while.cond129.preheader
  %flags = getelementptr inbounds %struct.regnode* %p, i64 0, i32 0
  %bitmap = getelementptr inbounds %struct.regnode* %p, i64 2
  %18 = bitcast %struct.regnode* %bitmap to [32 x i8]*
  br label %land.rhs132

if.then109:                                       ; preds = %sw.bb107
  %cmp1111184 = icmp sgt i32 %max.addr.0, 0
  %cmp1141185 = icmp ult i8* %2, %0
  %or.cond11111186 = and i1 %cmp1111184, %cmp1141185
  br i1 %or.cond11111186, label %land.rhs116, label %if.else821

land.rhs116:                                      ; preds = %if.then109, %while.body120
  %hardcount.21188 = phi i32 [ %inc126, %while.body120 ], [ 0, %if.then109 ]
  %scan.61187 = phi i8* [ %add.ptr125, %while.body120 ], [ %2, %if.then109 ]
  %call = tail call fastcc signext i8 @S_reginclass(%struct.regnode* %p, i8* %scan.61187, i64* null, i8 signext %1) #5
  %tobool118 = icmp eq i8 %call, 0
  br i1 %tobool118, label %sw.epilog, label %while.body120

while.body120:                                    ; preds = %land.rhs116
  %19 = load i8* %scan.61187, align 1, !tbaa !1
  %idxprom121 = zext i8 %19 to i64
  %arrayidx122 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom121
  %20 = load i8* %arrayidx122, align 1, !tbaa !1
  %idx.ext124 = zext i8 %20 to i64
  %add.ptr125 = getelementptr inbounds i8* %scan.61187, i64 %idx.ext124
  %inc126 = add nsw i32 %hardcount.21188, 1
  %cmp111 = icmp slt i32 %inc126, %max.addr.0
  %cmp114 = icmp ult i8* %add.ptr125, %0
  %or.cond1111 = and i1 %cmp111, %cmp114
  br i1 %or.cond1111, label %land.rhs116, label %sw.epilog

while.cond129:                                    ; preds = %cond.end
  %cmp130 = icmp ult i8* %incdec.ptr147, %loceol.0
  br i1 %cmp130, label %land.rhs132, label %if.else821

land.rhs132:                                      ; preds = %while.cond129, %land.rhs132.lr.ph
  %scan.71181 = phi i8* [ %2, %land.rhs132.lr.ph ], [ %incdec.ptr147, %while.cond129 ]
  %21 = load i8* %flags, align 1, !tbaa !1
  %tobool134 = icmp eq i8 %21, 0
  br i1 %tobool134, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.rhs132
  %call135 = tail call fastcc signext i8 @S_reginclass(%struct.regnode* %p, i8* %scan.71181, i64* null, i8 signext 0) #5
  %conv136 = sext i8 %call135 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.rhs132
  %22 = load i8* %scan.71181, align 1, !tbaa !1
  %conv137 = zext i8 %22 to i32
  %shr1108 = lshr i32 %conv137, 3
  %idxprom1381109 = zext i32 %shr1108 to i64
  %arrayidx139 = getelementptr inbounds [32 x i8]* %18, i64 0, i64 %idxprom1381109
  %23 = load i8* %arrayidx139, align 1, !tbaa !1
  %conv140 = sext i8 %23 to i32
  %and142 = and i32 %conv137, 7
  %shl = shl i32 1, %and142
  %and143 = and i32 %shl, %conv140
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv136, %cond.true ], [ %and143, %cond.false ]
  %tobool144 = icmp eq i32 %cond, 0
  %incdec.ptr147 = getelementptr inbounds i8* %scan.71181, i64 1
  br i1 %tobool144, label %if.else821, label %while.cond129

sw.bb150:                                         ; preds = %if.end4
  %tobool151 = icmp eq i8 %1, 0
  br i1 %tobool151, label %while.cond176.preheader, label %if.then152

while.cond176.preheader:                          ; preds = %sw.bb150
  %cmp1771192 = icmp ult i8* %2, %loceol.0
  br i1 %cmp1771192, label %land.rhs179, label %if.else821

if.then152:                                       ; preds = %sw.bb150
  %24 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool153 = icmp eq %struct.sv* %24, null
  br i1 %tobool153, label %if.then154, label %while.cond157.preheader

if.then154:                                       ; preds = %if.then152
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_re_context() #6
  %call155 = tail call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void @Perl_pop_scope() #6
  br label %while.cond157.preheader

while.cond157.preheader:                          ; preds = %if.then154, %if.then152
  %cmp1581196 = icmp sgt i32 %max.addr.0, 0
  %cmp1611197 = icmp ult i8* %2, %0
  %or.cond11121198 = and i1 %cmp1581196, %cmp1611197
  br i1 %or.cond11121198, label %land.rhs163, label %if.else821

land.rhs163:                                      ; preds = %while.body167, %while.cond157.preheader
  %hardcount.31200 = phi i32 [ 0, %while.cond157.preheader ], [ %inc173, %while.body167 ]
  %scan.81199 = phi i8* [ %2, %while.cond157.preheader ], [ %add.ptr172, %while.body167 ]
  %25 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call164 = tail call i64 @Perl_swash_fetch(%struct.sv* %25, i8* %scan.81199, i8 signext %1) #6
  %tobool165 = icmp eq i64 %call164, 0
  br i1 %tobool165, label %sw.epilog, label %while.body167

while.body167:                                    ; preds = %land.rhs163
  %26 = load i8* %scan.81199, align 1, !tbaa !1
  %idxprom168 = zext i8 %26 to i64
  %arrayidx169 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom168
  %27 = load i8* %arrayidx169, align 1, !tbaa !1
  %idx.ext171 = zext i8 %27 to i64
  %add.ptr172 = getelementptr inbounds i8* %scan.81199, i64 %idx.ext171
  %inc173 = add nsw i32 %hardcount.31200, 1
  %cmp158 = icmp slt i32 %inc173, %max.addr.0
  %cmp161 = icmp ult i8* %add.ptr172, %0
  %or.cond1112 = and i1 %cmp158, %cmp161
  br i1 %or.cond1112, label %land.rhs163, label %sw.epilog

land.rhs179:                                      ; preds = %while.cond176.preheader, %while.body208
  %scan.91193 = phi i8* [ %incdec.ptr209, %while.body208 ], [ %2, %while.cond176.preheader ]
  %28 = load i8* %scan.91193, align 1, !tbaa !1
  %.off1143 = add i8 %28, -65
  %29 = icmp ult i8 %.off1143, 26
  %.off1144 = add i8 %28, -97
  %30 = icmp ult i8 %.off1144, 26
  %or.cond1147 = or i1 %29, %30
  br i1 %or.cond1147, label %while.body208, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %land.rhs179
  %.off1145 = add i8 %28, -48
  %31 = icmp ult i8 %.off1145, 10
  %cmp204 = icmp eq i8 %28, 95
  %or.cond1137 = or i1 %31, %cmp204
  br i1 %or.cond1137, label %while.body208, label %if.else821

while.body208:                                    ; preds = %lor.lhs.false194, %land.rhs179
  %incdec.ptr209 = getelementptr inbounds i8* %scan.91193, i64 1
  %cmp177 = icmp ult i8* %incdec.ptr209, %loceol.0
  br i1 %cmp177, label %land.rhs179, label %if.else821

sw.bb212:                                         ; preds = %if.end4
  %32 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or213 = or i32 %32, 1
  store i32 %or213, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool214 = icmp eq i8 %1, 0
  br i1 %tobool214, label %while.cond264.preheader, label %if.then215

while.cond264.preheader:                          ; preds = %sw.bb212
  %cmp2651204 = icmp ult i8* %2, %loceol.0
  br i1 %cmp2651204, label %land.rhs267, label %if.else821

if.then215:                                       ; preds = %sw.bb212
  %cmp2171208 = icmp sgt i32 %max.addr.0, 0
  %cmp2201209 = icmp ult i8* %2, %0
  %or.cond11161210 = and i1 %cmp2171208, %cmp2201209
  br i1 %or.cond11161210, label %land.rhs222, label %if.else821

land.rhs222:                                      ; preds = %if.then215, %while.body255
  %hardcount.41212 = phi i32 [ %inc261, %while.body255 ], [ 0, %if.then215 ]
  %scan.101211 = phi i8* [ %add.ptr260, %while.body255 ], [ %2, %if.then215 ]
  %call223 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.101211, i64* null) #6
  %cmp224 = icmp ult i64 %call223, 256
  %call227 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.101211, i64* null) #6
  br i1 %cmp224, label %cond.true226, label %cond.false246

cond.true226:                                     ; preds = %land.rhs222
  %cmp229 = icmp ult i64 %call227, 128
  br i1 %cmp229, label %land.rhs231, label %land.end245

land.rhs231:                                      ; preds = %cond.true226
  %call232 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.101211, i64* null) #6
  %sext1107 = shl i64 %call232, 32
  %idxprom234 = ashr exact i64 %sext1107, 32
  %call235 = tail call i16** @__ctype_b_loc() #6
  %33 = load i16** %call235, align 8, !tbaa !3
  %arrayidx236 = getelementptr inbounds i16* %33, i64 %idxprom234
  %34 = load i16* %arrayidx236, align 2, !tbaa !5
  %and238 = and i16 %34, 8
  %tobool239 = icmp eq i16 %and238, 0
  br i1 %tobool239, label %lor.rhs240, label %land.end245

lor.rhs240:                                       ; preds = %land.rhs231
  %call241 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.101211, i64* null) #6
  %cmp242 = icmp eq i64 %call241, 95
  br label %land.end245

land.end245:                                      ; preds = %land.rhs231, %lor.rhs240, %cond.true226
  %35 = phi i1 [ false, %cond.true226 ], [ true, %land.rhs231 ], [ %cmp242, %lor.rhs240 ]
  %land.ext = zext i1 %35 to i32
  br label %cond.end250

cond.false246:                                    ; preds = %land.rhs222
  %call248 = tail call signext i8 @Perl_is_uni_alnum_lc(i64 %call227) #6
  %conv249 = sext i8 %call248 to i32
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false246, %land.end245
  %cond251 = phi i32 [ %land.ext, %land.end245 ], [ %conv249, %cond.false246 ]
  %tobool252 = icmp eq i32 %cond251, 0
  br i1 %tobool252, label %sw.epilog, label %while.body255

while.body255:                                    ; preds = %cond.end250
  %36 = load i8* %scan.101211, align 1, !tbaa !1
  %idxprom256 = zext i8 %36 to i64
  %arrayidx257 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom256
  %37 = load i8* %arrayidx257, align 1, !tbaa !1
  %idx.ext259 = zext i8 %37 to i64
  %add.ptr260 = getelementptr inbounds i8* %scan.101211, i64 %idx.ext259
  %inc261 = add nsw i32 %hardcount.41212, 1
  %cmp217 = icmp slt i32 %inc261, %max.addr.0
  %cmp220 = icmp ult i8* %add.ptr260, %0
  %or.cond1116 = and i1 %cmp217, %cmp220
  br i1 %or.cond1116, label %land.rhs222, label %sw.epilog

land.rhs267:                                      ; preds = %while.cond264.preheader, %while.body289
  %scan.111205 = phi i8* [ %incdec.ptr290, %while.body289 ], [ %2, %while.cond264.preheader ]
  %38 = load i8* %scan.111205, align 1, !tbaa !1
  %cmp2701106 = icmp sgt i8 %38, -1
  br i1 %cmp2701106, label %land.rhs272, label %if.else821

land.rhs272:                                      ; preds = %land.rhs267
  %idxprom274 = sext i8 %38 to i64
  %call275 = tail call i16** @__ctype_b_loc() #6
  %39 = load i16** %call275, align 8, !tbaa !3
  %arrayidx276 = getelementptr inbounds i16* %39, i64 %idxprom274
  %40 = load i16* %arrayidx276, align 2, !tbaa !5
  %and278 = and i16 %40, 8
  %tobool279 = icmp eq i16 %and278, 0
  br i1 %tobool279, label %lor.rhs280, label %while.body289

lor.rhs280:                                       ; preds = %land.rhs272
  %41 = load i8* %scan.111205, align 1, !tbaa !1
  %cmp282 = icmp eq i8 %41, 95
  br i1 %cmp282, label %while.body289, label %if.else821

while.body289:                                    ; preds = %land.rhs272, %lor.rhs280
  %incdec.ptr290 = getelementptr inbounds i8* %scan.111205, i64 1
  %cmp265 = icmp ult i8* %incdec.ptr290, %loceol.0
  br i1 %cmp265, label %land.rhs267, label %if.else821

sw.bb293:                                         ; preds = %if.end4
  %tobool294 = icmp eq i8 %1, 0
  br i1 %tobool294, label %while.cond320.preheader, label %if.then295

while.cond320.preheader:                          ; preds = %sw.bb293
  %cmp3211216 = icmp ult i8* %2, %loceol.0
  br i1 %cmp3211216, label %land.rhs323, label %if.else821

if.then295:                                       ; preds = %sw.bb293
  %42 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %tobool296 = icmp eq %struct.sv* %42, null
  br i1 %tobool296, label %if.then297, label %while.cond300.preheader

if.then297:                                       ; preds = %if.then295
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_re_context() #6
  %call298 = tail call signext i8 @Perl_is_utf8_alnum(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void @Perl_pop_scope() #6
  br label %while.cond300.preheader

while.cond300.preheader:                          ; preds = %if.then297, %if.then295
  %cmp3011220 = icmp sgt i32 %max.addr.0, 0
  %cmp3041221 = icmp ult i8* %2, %0
  %or.cond11171222 = and i1 %cmp3011220, %cmp3041221
  br i1 %or.cond11171222, label %land.rhs306, label %if.else821

land.rhs306:                                      ; preds = %while.body311, %while.cond300.preheader
  %hardcount.51224 = phi i32 [ 0, %while.cond300.preheader ], [ %inc317, %while.body311 ]
  %scan.121223 = phi i8* [ %2, %while.cond300.preheader ], [ %add.ptr316, %while.body311 ]
  %43 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !3
  %call307 = tail call i64 @Perl_swash_fetch(%struct.sv* %43, i8* %scan.121223, i8 signext %1) #6
  %lnot = icmp eq i64 %call307, 0
  br i1 %lnot, label %while.body311, label %sw.epilog

while.body311:                                    ; preds = %land.rhs306
  %44 = load i8* %scan.121223, align 1, !tbaa !1
  %idxprom312 = zext i8 %44 to i64
  %arrayidx313 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom312
  %45 = load i8* %arrayidx313, align 1, !tbaa !1
  %idx.ext315 = zext i8 %45 to i64
  %add.ptr316 = getelementptr inbounds i8* %scan.121223, i64 %idx.ext315
  %inc317 = add nsw i32 %hardcount.51224, 1
  %cmp301 = icmp slt i32 %inc317, %max.addr.0
  %cmp304 = icmp ult i8* %add.ptr316, %0
  %or.cond1117 = and i1 %cmp301, %cmp304
  br i1 %or.cond1117, label %land.rhs306, label %sw.epilog

while.cond320:                                    ; preds = %lor.lhs.false339
  %cmp321 = icmp ult i8* %incdec.ptr356, %loceol.0
  br i1 %cmp321, label %land.rhs323, label %if.else821

land.rhs323:                                      ; preds = %while.cond320.preheader, %while.cond320
  %scan.131217 = phi i8* [ %incdec.ptr356, %while.cond320 ], [ %2, %while.cond320.preheader ]
  %46 = load i8* %scan.131217, align 1, !tbaa !1
  %.off1140 = add i8 %46, -65
  %47 = icmp ult i8 %.off1140, 26
  %.off1141 = add i8 %46, -97
  %48 = icmp ult i8 %.off1141, 26
  %or.cond1149 = or i1 %47, %48
  br i1 %or.cond1149, label %if.else821, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %land.rhs323
  %.off1142 = add i8 %46, -48
  %or.cond1120.not = icmp ugt i8 %.off1142, 9
  %phitmp1105 = icmp ne i8 %46, 95
  %or.cond1138 = and i1 %or.cond1120.not, %phitmp1105
  %incdec.ptr356 = getelementptr inbounds i8* %scan.131217, i64 1
  br i1 %or.cond1138, label %while.cond320, label %if.else821

sw.bb359:                                         ; preds = %if.end4
  %49 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or360 = or i32 %49, 1
  store i32 %or360, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool361 = icmp eq i8 %1, 0
  br i1 %tobool361, label %while.cond413.preheader, label %if.then362

while.cond413.preheader:                          ; preds = %sw.bb359
  %cmp4141228 = icmp ult i8* %2, %loceol.0
  br i1 %cmp4141228, label %land.rhs416, label %if.else821

if.then362:                                       ; preds = %sw.bb359
  %cmp3641232 = icmp sgt i32 %max.addr.0, 0
  %cmp3671233 = icmp ult i8* %2, %0
  %or.cond11231234 = and i1 %cmp3641232, %cmp3671233
  br i1 %or.cond11231234, label %land.rhs369, label %if.else821

land.rhs369:                                      ; preds = %if.then362, %while.body404
  %hardcount.61236 = phi i32 [ %inc410, %while.body404 ], [ 0, %if.then362 ]
  %scan.141235 = phi i8* [ %add.ptr409, %while.body404 ], [ %2, %if.then362 ]
  %call370 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.141235, i64* null) #6
  %cmp371 = icmp ult i64 %call370, 256
  %call374 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.141235, i64* null) #6
  br i1 %cmp371, label %cond.true373, label %cond.false394

cond.true373:                                     ; preds = %land.rhs369
  %cmp376 = icmp ult i64 %call374, 128
  br i1 %cmp376, label %land.rhs378, label %land.end392

land.rhs378:                                      ; preds = %cond.true373
  %call379 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.141235, i64* null) #6
  %sext1104 = shl i64 %call379, 32
  %idxprom381 = ashr exact i64 %sext1104, 32
  %call382 = tail call i16** @__ctype_b_loc() #6
  %50 = load i16** %call382, align 8, !tbaa !3
  %arrayidx383 = getelementptr inbounds i16* %50, i64 %idxprom381
  %51 = load i16* %arrayidx383, align 2, !tbaa !5
  %and385 = and i16 %51, 8
  %tobool386 = icmp eq i16 %and385, 0
  br i1 %tobool386, label %lor.rhs387, label %land.end392

lor.rhs387:                                       ; preds = %land.rhs378
  %call388 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.141235, i64* null) #6
  %cmp389 = icmp eq i64 %call388, 95
  br label %land.end392

land.end392:                                      ; preds = %land.rhs378, %lor.rhs387, %cond.true373
  %52 = phi i1 [ false, %cond.true373 ], [ true, %land.rhs378 ], [ %cmp389, %lor.rhs387 ]
  %land.ext393 = zext i1 %52 to i32
  br label %cond.end398

cond.false394:                                    ; preds = %land.rhs369
  %call396 = tail call signext i8 @Perl_is_uni_alnum_lc(i64 %call374) #6
  %conv397 = sext i8 %call396 to i32
  br label %cond.end398

cond.end398:                                      ; preds = %cond.false394, %land.end392
  %cond399 = phi i32 [ %land.ext393, %land.end392 ], [ %conv397, %cond.false394 ]
  %lnot401 = icmp eq i32 %cond399, 0
  br i1 %lnot401, label %while.body404, label %sw.epilog

while.body404:                                    ; preds = %cond.end398
  %53 = load i8* %scan.141235, align 1, !tbaa !1
  %idxprom405 = zext i8 %53 to i64
  %arrayidx406 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom405
  %54 = load i8* %arrayidx406, align 1, !tbaa !1
  %idx.ext408 = zext i8 %54 to i64
  %add.ptr409 = getelementptr inbounds i8* %scan.141235, i64 %idx.ext408
  %inc410 = add nsw i32 %hardcount.61236, 1
  %cmp364 = icmp slt i32 %inc410, %max.addr.0
  %cmp367 = icmp ult i8* %add.ptr409, %0
  %or.cond1123 = and i1 %cmp364, %cmp367
  br i1 %or.cond1123, label %land.rhs369, label %sw.epilog

land.rhs416:                                      ; preds = %while.cond413.preheader, %while.body439
  %scan.151229 = phi i8* [ %incdec.ptr440, %while.body439 ], [ %2, %while.cond413.preheader ]
  %55 = load i8* %scan.151229, align 1, !tbaa !1
  %cmp4191102 = icmp sgt i8 %55, -1
  br i1 %cmp4191102, label %land.rhs421, label %while.body439

land.rhs421:                                      ; preds = %land.rhs416
  %idxprom423 = sext i8 %55 to i64
  %call424 = tail call i16** @__ctype_b_loc() #6
  %56 = load i16** %call424, align 8, !tbaa !3
  %arrayidx425 = getelementptr inbounds i16* %56, i64 %idxprom423
  %57 = load i16* %arrayidx425, align 2, !tbaa !5
  %and427 = and i16 %57, 8
  %tobool428 = icmp eq i16 %and427, 0
  br i1 %tobool428, label %lor.rhs429, label %if.else821

lor.rhs429:                                       ; preds = %land.rhs421
  %58 = load i8* %scan.151229, align 1, !tbaa !1
  %phitmp1103 = icmp eq i8 %58, 95
  br i1 %phitmp1103, label %if.else821, label %while.body439

while.body439:                                    ; preds = %lor.rhs429, %land.rhs416
  %incdec.ptr440 = getelementptr inbounds i8* %scan.151229, i64 1
  %cmp414 = icmp ult i8* %incdec.ptr440, %loceol.0
  br i1 %cmp414, label %land.rhs416, label %if.else821

sw.bb443:                                         ; preds = %if.end4
  %tobool444 = icmp eq i8 %1, 0
  br i1 %tobool444, label %while.cond475.preheader, label %if.then445

while.cond475.preheader:                          ; preds = %sw.bb443
  %cmp4761240 = icmp ult i8* %2, %loceol.0
  br i1 %cmp4761240, label %land.rhs478, label %if.else821

if.then445:                                       ; preds = %sw.bb443
  %59 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %tobool446 = icmp eq %struct.sv* %59, null
  br i1 %tobool446, label %if.then447, label %while.cond450.preheader

if.then447:                                       ; preds = %if.then445
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_re_context() #6
  %call448 = tail call signext i8 @Perl_is_utf8_space(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  tail call void @Perl_pop_scope() #6
  br label %while.cond450.preheader

while.cond450.preheader:                          ; preds = %if.then447, %if.then445
  %cmp4511244 = icmp sgt i32 %max.addr.0, 0
  %cmp4541245 = icmp ult i8* %2, %0
  %or.cond11251246 = and i1 %cmp4511244, %cmp4541245
  br i1 %or.cond11251246, label %land.rhs456, label %if.else821

land.rhs456:                                      ; preds = %while.cond450.preheader, %while.body466
  %hardcount.71248 = phi i32 [ %inc472, %while.body466 ], [ 0, %while.cond450.preheader ]
  %scan.161247 = phi i8* [ %add.ptr471, %while.body466 ], [ %2, %while.cond450.preheader ]
  %60 = load i8* %scan.161247, align 1, !tbaa !1
  %cmp458 = icmp eq i8 %60, 32
  br i1 %cmp458, label %while.body466, label %lor.rhs460

lor.rhs460:                                       ; preds = %land.rhs456
  %61 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %call461 = tail call i64 @Perl_swash_fetch(%struct.sv* %61, i8* %scan.161247, i8 signext %1) #6
  %tobool462 = icmp eq i64 %call461, 0
  br i1 %tobool462, label %sw.epilog, label %lor.rhs460.while.body466_crit_edge

lor.rhs460.while.body466_crit_edge:               ; preds = %lor.rhs460
  %.pre = load i8* %scan.161247, align 1, !tbaa !1
  %phitmp1357 = zext i8 %.pre to i64
  br label %while.body466

while.body466:                                    ; preds = %lor.rhs460.while.body466_crit_edge, %land.rhs456
  %62 = phi i64 [ %phitmp1357, %lor.rhs460.while.body466_crit_edge ], [ 32, %land.rhs456 ]
  %arrayidx468 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %62
  %63 = load i8* %arrayidx468, align 1, !tbaa !1
  %idx.ext470 = zext i8 %63 to i64
  %add.ptr471 = getelementptr inbounds i8* %scan.161247, i64 %idx.ext470
  %inc472 = add nsw i32 %hardcount.71248, 1
  %cmp451 = icmp slt i32 %inc472, %max.addr.0
  %cmp454 = icmp ult i8* %add.ptr471, %0
  %or.cond1125 = and i1 %cmp451, %cmp454
  br i1 %or.cond1125, label %land.rhs456, label %sw.epilog

land.rhs478:                                      ; preds = %while.cond475.preheader, %while.body501
  %scan.171241 = phi i8* [ %incdec.ptr502, %while.body501 ], [ %2, %while.cond475.preheader ]
  %64 = load i8* %scan.171241, align 1, !tbaa !1
  switch i8 %64, label %if.else821 [
    i8 32, label %while.body501
    i8 9, label %while.body501
    i8 10, label %while.body501
    i8 13, label %while.body501
    i8 12, label %while.body501
  ]

while.body501:                                    ; preds = %land.rhs478, %land.rhs478, %land.rhs478, %land.rhs478, %land.rhs478
  %incdec.ptr502 = getelementptr inbounds i8* %scan.171241, i64 1
  %cmp476 = icmp ult i8* %incdec.ptr502, %loceol.0
  br i1 %cmp476, label %land.rhs478, label %if.else821

sw.bb505:                                         ; preds = %if.end4
  %65 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or506 = or i32 %65, 1
  store i32 %or506, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool507 = icmp eq i8 %1, 0
  br i1 %tobool507, label %while.cond558.preheader, label %if.then508

while.cond558.preheader:                          ; preds = %sw.bb505
  %cmp5591252 = icmp ult i8* %2, %loceol.0
  br i1 %cmp5591252, label %land.rhs561, label %if.else821

if.then508:                                       ; preds = %sw.bb505
  %cmp5101256 = icmp sgt i32 %max.addr.0, 0
  %cmp5131257 = icmp ult i8* %2, %0
  %or.cond11261258 = and i1 %cmp5101256, %cmp5131257
  br i1 %or.cond11261258, label %land.rhs515, label %if.else821

land.rhs515:                                      ; preds = %if.then508, %while.body549
  %hardcount.81261 = phi i32 [ %inc555, %while.body549 ], [ 0, %if.then508 ]
  %scan.181259 = phi i8* [ %add.ptr554, %while.body549 ], [ %2, %if.then508 ]
  %66 = load i8* %scan.181259, align 1, !tbaa !1
  %cmp517 = icmp eq i8 %66, 32
  br i1 %cmp517, label %while.body549, label %lor.rhs519

lor.rhs519:                                       ; preds = %land.rhs515
  %call520 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.181259, i64* null) #6
  %cmp521 = icmp ult i64 %call520, 256
  %call524 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.181259, i64* null) #6
  br i1 %cmp521, label %cond.true523, label %cond.false539

cond.true523:                                     ; preds = %lor.rhs519
  %cmp526 = icmp ult i64 %call524, 128
  br i1 %cmp526, label %land.rhs528, label %land.end537

land.rhs528:                                      ; preds = %cond.true523
  %call529 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.181259, i64* null) #6
  %sext1101 = shl i64 %call529, 32
  %idxprom531 = ashr exact i64 %sext1101, 32
  %call532 = tail call i16** @__ctype_b_loc() #6
  %67 = load i16** %call532, align 8, !tbaa !3
  %arrayidx533 = getelementptr inbounds i16* %67, i64 %idxprom531
  %68 = load i16* %arrayidx533, align 2, !tbaa !5
  %and535 = and i16 %68, 8192
  %tobool536 = icmp ne i16 %and535, 0
  br label %land.end537

land.end537:                                      ; preds = %land.rhs528, %cond.true523
  %69 = phi i1 [ false, %cond.true523 ], [ %tobool536, %land.rhs528 ]
  %land.ext538 = zext i1 %69 to i32
  br label %cond.end543

cond.false539:                                    ; preds = %lor.rhs519
  %call541 = tail call signext i8 @Perl_is_uni_space_lc(i64 %call524) #6
  %conv542 = sext i8 %call541 to i32
  br label %cond.end543

cond.end543:                                      ; preds = %cond.false539, %land.end537
  %cond544 = phi i32 [ %land.ext538, %land.end537 ], [ %conv542, %cond.false539 ]
  %tobool545 = icmp eq i32 %cond544, 0
  br i1 %tobool545, label %sw.epilog, label %cond.end543.while.body549_crit_edge

cond.end543.while.body549_crit_edge:              ; preds = %cond.end543
  %.pre1356 = load i8* %scan.181259, align 1, !tbaa !1
  %phitmp = zext i8 %.pre1356 to i64
  br label %while.body549

while.body549:                                    ; preds = %cond.end543.while.body549_crit_edge, %land.rhs515
  %70 = phi i64 [ %phitmp, %cond.end543.while.body549_crit_edge ], [ 32, %land.rhs515 ]
  %arrayidx551 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %70
  %71 = load i8* %arrayidx551, align 1, !tbaa !1
  %idx.ext553 = zext i8 %71 to i64
  %add.ptr554 = getelementptr inbounds i8* %scan.181259, i64 %idx.ext553
  %inc555 = add nsw i32 %hardcount.81261, 1
  %cmp510 = icmp slt i32 %inc555, %max.addr.0
  %cmp513 = icmp ult i8* %add.ptr554, %0
  %or.cond1126 = and i1 %cmp510, %cmp513
  br i1 %or.cond1126, label %land.rhs515, label %sw.epilog

while.cond558:                                    ; preds = %land.rhs566
  %cmp559 = icmp ult i8* %incdec.ptr579, %loceol.0
  br i1 %cmp559, label %land.rhs561, label %if.else821

land.rhs561:                                      ; preds = %while.cond558.preheader, %while.cond558
  %scan.191253 = phi i8* [ %incdec.ptr579, %while.cond558 ], [ %2, %while.cond558.preheader ]
  %72 = load i8* %scan.191253, align 1, !tbaa !1
  %cmp5641100 = icmp sgt i8 %72, -1
  br i1 %cmp5641100, label %land.rhs566, label %if.else821

land.rhs566:                                      ; preds = %land.rhs561
  %idxprom568 = sext i8 %72 to i64
  %call569 = tail call i16** @__ctype_b_loc() #6
  %73 = load i16** %call569, align 8, !tbaa !3
  %arrayidx570 = getelementptr inbounds i16* %73, i64 %idxprom568
  %74 = load i16* %arrayidx570, align 2, !tbaa !5
  %and572 = and i16 %74, 8192
  %tobool573 = icmp eq i16 %and572, 0
  %incdec.ptr579 = getelementptr inbounds i8* %scan.191253, i64 1
  br i1 %tobool573, label %if.else821, label %while.cond558

sw.bb582:                                         ; preds = %if.end4
  %tobool583 = icmp eq i8 %1, 0
  br i1 %tobool583, label %while.cond615.preheader, label %if.then584

while.cond615.preheader:                          ; preds = %sw.bb582
  %cmp6161266 = icmp ult i8* %2, %loceol.0
  br i1 %cmp6161266, label %land.rhs618, label %if.else821

if.then584:                                       ; preds = %sw.bb582
  %75 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %tobool585 = icmp eq %struct.sv* %75, null
  br i1 %tobool585, label %if.then586, label %while.cond589.preheader

if.then586:                                       ; preds = %if.then584
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_re_context() #6
  %call587 = tail call signext i8 @Perl_is_utf8_space(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  tail call void @Perl_pop_scope() #6
  br label %while.cond589.preheader

while.cond589.preheader:                          ; preds = %if.then586, %if.then584
  %cmp5901281 = icmp sgt i32 %max.addr.0, 0
  %cmp5931282 = icmp ult i8* %2, %0
  %or.cond11271283 = and i1 %cmp5901281, %cmp5931282
  br i1 %or.cond11271283, label %land.rhs595, label %sw.bb646

land.rhs595:                                      ; preds = %while.cond589.preheader, %while.body606
  %hardcount.91285 = phi i32 [ %inc612, %while.body606 ], [ 0, %while.cond589.preheader ]
  %scan.201284 = phi i8* [ %add.ptr611, %while.body606 ], [ %2, %while.cond589.preheader ]
  %76 = load i8* %scan.201284, align 1, !tbaa !1
  %cmp597 = icmp eq i8 %76, 32
  br i1 %cmp597, label %sw.bb646, label %lor.rhs599

lor.rhs599:                                       ; preds = %land.rhs595
  %77 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !3
  %call600 = tail call i64 @Perl_swash_fetch(%struct.sv* %77, i8* %scan.201284, i8 signext %1) #6
  %phitmp1099 = icmp eq i64 %call600, 0
  br i1 %phitmp1099, label %while.body606, label %sw.bb646

while.body606:                                    ; preds = %lor.rhs599
  %78 = load i8* %scan.201284, align 1, !tbaa !1
  %idxprom607 = zext i8 %78 to i64
  %arrayidx608 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom607
  %79 = load i8* %arrayidx608, align 1, !tbaa !1
  %idx.ext610 = zext i8 %79 to i64
  %add.ptr611 = getelementptr inbounds i8* %scan.201284, i64 %idx.ext610
  %inc612 = add nsw i32 %hardcount.91285, 1
  %cmp590 = icmp slt i32 %inc612, %max.addr.0
  %cmp593 = icmp ult i8* %add.ptr611, %0
  %or.cond1127 = and i1 %cmp590, %cmp593
  br i1 %or.cond1127, label %land.rhs595, label %sw.bb646

land.rhs618:                                      ; preds = %while.cond615.preheader, %while.body642.critedge
  %scan.211267 = phi i8* [ %incdec.ptr643, %while.body642.critedge ], [ %2, %while.cond615.preheader ]
  %80 = load i8* %scan.211267, align 1, !tbaa !1
  switch i8 %80, label %while.body642.critedge [
    i8 32, label %if.else821
    i8 9, label %if.else821
    i8 10, label %if.else821
    i8 13, label %if.else821
    i8 12, label %if.else821
  ]

while.body642.critedge:                           ; preds = %land.rhs618
  %incdec.ptr643 = getelementptr inbounds i8* %scan.211267, i64 1
  %cmp616 = icmp ult i8* %incdec.ptr643, %loceol.0
  br i1 %cmp616, label %land.rhs618, label %if.else821

sw.bb646:                                         ; preds = %while.cond589.preheader, %land.rhs595, %lor.rhs599, %while.body606, %if.end4
  %scan.22 = phi i8* [ %2, %if.end4 ], [ %2, %while.cond589.preheader ], [ %scan.201284, %land.rhs595 ], [ %scan.201284, %lor.rhs599 ], [ %add.ptr611, %while.body606 ]
  %loceol.1 = phi i8* [ %loceol.0, %if.end4 ], [ %0, %while.cond589.preheader ], [ %0, %land.rhs595 ], [ %0, %lor.rhs599 ], [ %0, %while.body606 ]
  %hardcount.10 = phi i32 [ 0, %if.end4 ], [ 0, %while.cond589.preheader ], [ %hardcount.91285, %land.rhs595 ], [ %hardcount.91285, %lor.rhs599 ], [ %inc612, %while.body606 ]
  %81 = load i32* @PL_reg_flags, align 4, !tbaa !0
  %or647 = or i32 %81, 1
  store i32 %or647, i32* @PL_reg_flags, align 4, !tbaa !0
  %tobool648 = icmp eq i8 %1, 0
  br i1 %tobool648, label %while.cond700.preheader, label %if.then649

while.cond700.preheader:                          ; preds = %sw.bb646
  %cmp7011270 = icmp ult i8* %scan.22, %loceol.1
  br i1 %cmp7011270, label %land.rhs703, label %sw.epilog

if.then649:                                       ; preds = %sw.bb646
  %82 = load i8** @PL_regeol, align 8, !tbaa !3
  %cmp6511274 = icmp slt i32 %hardcount.10, %max.addr.0
  %cmp6541275 = icmp ult i8* %scan.22, %82
  %or.cond11291276 = and i1 %cmp6511274, %cmp6541275
  br i1 %or.cond11291276, label %land.rhs656, label %sw.epilog

land.rhs656:                                      ; preds = %if.then649, %while.body691
  %hardcount.111278 = phi i32 [ %inc697, %while.body691 ], [ %hardcount.10, %if.then649 ]
  %scan.231277 = phi i8* [ %add.ptr696, %while.body691 ], [ %scan.22, %if.then649 ]
  %83 = load i8* %scan.231277, align 1, !tbaa !1
  %cmp658 = icmp eq i8 %83, 32
  br i1 %cmp658, label %sw.epilog, label %lor.rhs660

lor.rhs660:                                       ; preds = %land.rhs656
  %call661 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.231277, i64* null) #6
  %cmp662 = icmp ult i64 %call661, 256
  %call665 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.231277, i64* null) #6
  br i1 %cmp662, label %cond.true664, label %cond.false680

cond.true664:                                     ; preds = %lor.rhs660
  %cmp667 = icmp ult i64 %call665, 128
  br i1 %cmp667, label %land.rhs669, label %land.end678

land.rhs669:                                      ; preds = %cond.true664
  %call670 = tail call i64 @Perl_utf8_to_uvchr(i8* %scan.231277, i64* null) #6
  %sext = shl i64 %call670, 32
  %idxprom672 = ashr exact i64 %sext, 32
  %call673 = tail call i16** @__ctype_b_loc() #6
  %84 = load i16** %call673, align 8, !tbaa !3
  %arrayidx674 = getelementptr inbounds i16* %84, i64 %idxprom672
  %85 = load i16* %arrayidx674, align 2, !tbaa !5
  %and676 = and i16 %85, 8192
  %tobool677 = icmp ne i16 %and676, 0
  br label %land.end678

land.end678:                                      ; preds = %land.rhs669, %cond.true664
  %86 = phi i1 [ false, %cond.true664 ], [ %tobool677, %land.rhs669 ]
  %land.ext679 = zext i1 %86 to i32
  br label %cond.end684

cond.false680:                                    ; preds = %lor.rhs660
  %call682 = tail call signext i8 @Perl_is_uni_space_lc(i64 %call665) #6
  %conv683 = sext i8 %call682 to i32
  br label %cond.end684

cond.end684:                                      ; preds = %cond.false680, %land.end678
  %cond685 = phi i32 [ %land.ext679, %land.end678 ], [ %conv683, %cond.false680 ]
  %phitmp1097 = icmp eq i32 %cond685, 0
  br i1 %phitmp1097, label %while.body691, label %sw.epilog

while.body691:                                    ; preds = %cond.end684
  %87 = load i8* %scan.231277, align 1, !tbaa !1
  %idxprom692 = zext i8 %87 to i64
  %arrayidx693 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom692
  %88 = load i8* %arrayidx693, align 1, !tbaa !1
  %idx.ext695 = zext i8 %88 to i64
  %add.ptr696 = getelementptr inbounds i8* %scan.231277, i64 %idx.ext695
  %inc697 = add nsw i32 %hardcount.111278, 1
  %cmp651 = icmp slt i32 %inc697, %max.addr.0
  %cmp654 = icmp ult i8* %add.ptr696, %82
  %or.cond1129 = and i1 %cmp651, %cmp654
  br i1 %or.cond1129, label %land.rhs656, label %sw.epilog

land.rhs703:                                      ; preds = %while.cond700.preheader, %while.body721
  %scan.241271 = phi i8* [ %incdec.ptr722, %while.body721 ], [ %scan.22, %while.cond700.preheader ]
  %89 = load i8* %scan.241271, align 1, !tbaa !1
  %cmp7061095 = icmp sgt i8 %89, -1
  br i1 %cmp7061095, label %land.rhs708, label %while.body721

land.rhs708:                                      ; preds = %land.rhs703
  %idxprom710 = sext i8 %89 to i64
  %call711 = tail call i16** @__ctype_b_loc() #6
  %90 = load i16** %call711, align 8, !tbaa !3
  %arrayidx712 = getelementptr inbounds i16* %90, i64 %idxprom710
  %91 = load i16* %arrayidx712, align 2, !tbaa !5
  %and714 = and i16 %91, 8192
  %phitmp1096 = icmp eq i16 %and714, 0
  br i1 %phitmp1096, label %while.body721, label %sw.epilog

while.body721:                                    ; preds = %land.rhs703, %land.rhs708
  %incdec.ptr722 = getelementptr inbounds i8* %scan.241271, i64 1
  %cmp701 = icmp ult i8* %incdec.ptr722, %loceol.1
  br i1 %cmp701, label %land.rhs703, label %sw.epilog

sw.bb725:                                         ; preds = %if.end4
  %tobool726 = icmp eq i8 %1, 0
  br i1 %tobool726, label %while.cond752.preheader, label %if.then727

while.cond752.preheader:                          ; preds = %sw.bb725
  %cmp7531289 = icmp ult i8* %2, %loceol.0
  br i1 %cmp7531289, label %land.rhs755, label %if.else821

if.then727:                                       ; preds = %sw.bb725
  %92 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %tobool728 = icmp eq %struct.sv* %92, null
  br i1 %tobool728, label %if.then729, label %while.cond732.preheader

if.then729:                                       ; preds = %if.then727
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_re_context() #6
  %call730 = tail call signext i8 @Perl_is_utf8_digit(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  tail call void @Perl_pop_scope() #6
  br label %while.cond732.preheader

while.cond732.preheader:                          ; preds = %if.then729, %if.then727
  %cmp7331293 = icmp sgt i32 %max.addr.0, 0
  %cmp7361294 = icmp ult i8* %2, %0
  %or.cond11311295 = and i1 %cmp7331293, %cmp7361294
  br i1 %or.cond11311295, label %land.rhs738, label %if.else821

land.rhs738:                                      ; preds = %while.body743, %while.cond732.preheader
  %hardcount.121297 = phi i32 [ 0, %while.cond732.preheader ], [ %inc749, %while.body743 ]
  %scan.251296 = phi i8* [ %2, %while.cond732.preheader ], [ %add.ptr748, %while.body743 ]
  %93 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %call739 = tail call i64 @Perl_swash_fetch(%struct.sv* %93, i8* %scan.251296, i8 signext %1) #6
  %tobool740 = icmp eq i64 %call739, 0
  br i1 %tobool740, label %sw.epilog, label %while.body743

while.body743:                                    ; preds = %land.rhs738
  %94 = load i8* %scan.251296, align 1, !tbaa !1
  %idxprom744 = zext i8 %94 to i64
  %arrayidx745 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom744
  %95 = load i8* %arrayidx745, align 1, !tbaa !1
  %idx.ext747 = zext i8 %95 to i64
  %add.ptr748 = getelementptr inbounds i8* %scan.251296, i64 %idx.ext747
  %inc749 = add nsw i32 %hardcount.121297, 1
  %cmp733 = icmp slt i32 %inc749, %max.addr.0
  %cmp736 = icmp ult i8* %add.ptr748, %0
  %or.cond1131 = and i1 %cmp733, %cmp736
  br i1 %or.cond1131, label %land.rhs738, label %sw.epilog

while.cond752:                                    ; preds = %land.rhs755
  %cmp753 = icmp ult i8* %incdec.ptr768, %loceol.0
  br i1 %cmp753, label %land.rhs755, label %if.else821

land.rhs755:                                      ; preds = %while.cond752.preheader, %while.cond752
  %scan.261290 = phi i8* [ %incdec.ptr768, %while.cond752 ], [ %2, %while.cond752.preheader ]
  %96 = load i8* %scan.261290, align 1, !tbaa !1
  %.off1139 = add i8 %96, -48
  %97 = icmp ult i8 %.off1139, 10
  %incdec.ptr768 = getelementptr inbounds i8* %scan.261290, i64 1
  br i1 %97, label %while.cond752, label %if.else821

sw.bb771:                                         ; preds = %if.end4
  %tobool772 = icmp eq i8 %1, 0
  br i1 %tobool772, label %while.cond799.preheader, label %if.then773

while.cond799.preheader:                          ; preds = %sw.bb771
  %cmp8001301 = icmp ult i8* %2, %loceol.0
  br i1 %cmp8001301, label %land.rhs802, label %if.else821

if.then773:                                       ; preds = %sw.bb771
  %98 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %tobool774 = icmp eq %struct.sv* %98, null
  br i1 %tobool774, label %if.then775, label %while.cond778.preheader

if.then775:                                       ; preds = %if.then773
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_re_context() #6
  %call776 = tail call signext i8 @Perl_is_utf8_digit(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  tail call void @Perl_pop_scope() #6
  br label %while.cond778.preheader

while.cond778.preheader:                          ; preds = %if.then775, %if.then773
  %cmp7791305 = icmp sgt i32 %max.addr.0, 0
  %cmp7821306 = icmp ult i8* %2, %0
  %or.cond11331307 = and i1 %cmp7791305, %cmp7821306
  br i1 %or.cond11331307, label %land.rhs784, label %if.else821

land.rhs784:                                      ; preds = %while.body790, %while.cond778.preheader
  %hardcount.131309 = phi i32 [ 0, %while.cond778.preheader ], [ %inc796, %while.body790 ]
  %scan.271308 = phi i8* [ %2, %while.cond778.preheader ], [ %add.ptr795, %while.body790 ]
  %99 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !3
  %call785 = tail call i64 @Perl_swash_fetch(%struct.sv* %99, i8* %scan.271308, i8 signext %1) #6
  %lnot787 = icmp eq i64 %call785, 0
  br i1 %lnot787, label %while.body790, label %sw.epilog

while.body790:                                    ; preds = %land.rhs784
  %100 = load i8* %scan.271308, align 1, !tbaa !1
  %idxprom791 = zext i8 %100 to i64
  %arrayidx792 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom791
  %101 = load i8* %arrayidx792, align 1, !tbaa !1
  %idx.ext794 = zext i8 %101 to i64
  %add.ptr795 = getelementptr inbounds i8* %scan.271308, i64 %idx.ext794
  %inc796 = add nsw i32 %hardcount.131309, 1
  %cmp779 = icmp slt i32 %inc796, %max.addr.0
  %cmp782 = icmp ult i8* %add.ptr795, %0
  %or.cond1133 = and i1 %cmp779, %cmp782
  br i1 %or.cond1133, label %land.rhs784, label %sw.epilog

while.cond799:                                    ; preds = %land.rhs802
  %cmp800 = icmp ult i8* %incdec.ptr816, %loceol.0
  br i1 %cmp800, label %land.rhs802, label %if.else821

land.rhs802:                                      ; preds = %while.cond799.preheader, %while.cond799
  %scan.281302 = phi i8* [ %incdec.ptr816, %while.cond799 ], [ %2, %while.cond799.preheader ]
  %102 = load i8* %scan.281302, align 1, !tbaa !1
  %.off = add i8 %102, -48
  %103 = icmp ugt i8 %.off, 9
  %incdec.ptr816 = getelementptr inbounds i8* %scan.281302, i64 1
  br i1 %103, label %while.cond799, label %if.else821

sw.epilog:                                        ; preds = %land.rhs784, %while.body790, %land.rhs738, %while.body743, %if.then649, %land.rhs656, %cond.end684, %while.body691, %while.cond700.preheader, %land.rhs708, %while.body721, %cond.end543, %while.body549, %lor.rhs460, %while.body466, %cond.end398, %while.body404, %land.rhs306, %while.body311, %cond.end250, %while.body255, %land.rhs163, %while.body167, %land.rhs116, %while.body120, %while.body39, %land.rhs, %while.body
  %scan.29 = phi i8* [ %scan.01155, %land.rhs ], [ %add.ptr16, %while.body ], [ %add.ptr44, %while.body39 ], [ %scan.61187, %land.rhs116 ], [ %add.ptr125, %while.body120 ], [ %scan.81199, %land.rhs163 ], [ %add.ptr172, %while.body167 ], [ %scan.101211, %cond.end250 ], [ %add.ptr260, %while.body255 ], [ %scan.121223, %land.rhs306 ], [ %add.ptr316, %while.body311 ], [ %scan.141235, %cond.end398 ], [ %add.ptr409, %while.body404 ], [ %scan.161247, %lor.rhs460 ], [ %add.ptr471, %while.body466 ], [ %scan.181259, %cond.end543 ], [ %add.ptr554, %while.body549 ], [ %scan.22, %while.cond700.preheader ], [ %scan.241271, %land.rhs708 ], [ %incdec.ptr722, %while.body721 ], [ %scan.22, %if.then649 ], [ %scan.231277, %land.rhs656 ], [ %scan.231277, %cond.end684 ], [ %add.ptr696, %while.body691 ], [ %scan.251296, %land.rhs738 ], [ %add.ptr748, %while.body743 ], [ %scan.271308, %land.rhs784 ], [ %add.ptr795, %while.body790 ]
  %hardcount.14 = phi i32 [ %hardcount.01156, %land.rhs ], [ %inc, %while.body ], [ %inc45, %while.body39 ], [ %hardcount.21188, %land.rhs116 ], [ %inc126, %while.body120 ], [ %hardcount.31200, %land.rhs163 ], [ %inc173, %while.body167 ], [ %hardcount.41212, %cond.end250 ], [ %inc261, %while.body255 ], [ %hardcount.51224, %land.rhs306 ], [ %inc317, %while.body311 ], [ %hardcount.61236, %cond.end398 ], [ %inc410, %while.body404 ], [ %hardcount.71248, %lor.rhs460 ], [ %inc472, %while.body466 ], [ %hardcount.81261, %cond.end543 ], [ %inc555, %while.body549 ], [ %hardcount.10, %while.cond700.preheader ], [ %hardcount.10, %land.rhs708 ], [ %hardcount.10, %while.body721 ], [ %hardcount.10, %if.then649 ], [ %hardcount.111278, %land.rhs656 ], [ %hardcount.111278, %cond.end684 ], [ %inc697, %while.body691 ], [ %hardcount.121297, %land.rhs738 ], [ %inc749, %while.body743 ], [ %hardcount.131309, %land.rhs784 ], [ %inc796, %while.body790 ]
  %tobool819 = icmp eq i32 %hardcount.14, 0
  br i1 %tobool819, label %if.else821, label %if.end826

if.else821:                                       ; preds = %while.cond778.preheader, %while.cond732.preheader, %if.then508, %while.cond450.preheader, %if.then362, %while.cond300.preheader, %if.then215, %while.cond157.preheader, %if.then109, %if.then31, %if.then6, %while.cond799.preheader, %land.rhs802, %while.cond799, %while.cond752.preheader, %land.rhs755, %while.cond752, %while.cond615.preheader, %land.rhs618, %land.rhs618, %land.rhs618, %land.rhs618, %land.rhs618, %while.body642.critedge, %while.cond558.preheader, %land.rhs561, %land.rhs566, %while.cond558, %while.cond475.preheader, %land.rhs478, %while.body501, %while.cond413.preheader, %lor.rhs429, %land.rhs421, %while.body439, %while.cond320.preheader, %lor.lhs.false339, %land.rhs323, %while.cond320, %while.cond264.preheader, %land.rhs267, %lor.rhs280, %while.body289, %while.cond176.preheader, %lor.lhs.false194, %while.body208, %while.cond129.preheader, %cond.end, %while.cond129, %sw.bb84, %lor.rhs95, %while.body104, %sw.bb63, %lor.rhs, %while.body81, %sw.bb50, %land.rhs55, %while.cond52, %while.cond18.preheader, %land.rhs21, %while.cond18, %sw.epilog, %sw.bb29, %sw.bb49, %if.end4
  %scan.291136 = phi i8* [ %2, %if.end4 ], [ %loceol.0, %sw.bb49 ], [ %loceol.0, %sw.bb29 ], [ %scan.29, %sw.epilog ], [ %2, %while.cond18.preheader ], [ %scan.11151, %land.rhs21 ], [ %incdec.ptr, %while.cond18 ], [ %2, %sw.bb50 ], [ %scan.31169, %land.rhs55 ], [ %incdec.ptr61, %while.cond52 ], [ %2, %sw.bb63 ], [ %scan.41173, %lor.rhs ], [ %incdec.ptr82, %while.body81 ], [ %2, %sw.bb84 ], [ %scan.51177, %lor.rhs95 ], [ %incdec.ptr105, %while.body104 ], [ %2, %while.cond129.preheader ], [ %scan.71181, %cond.end ], [ %incdec.ptr147, %while.cond129 ], [ %2, %while.cond176.preheader ], [ %scan.91193, %lor.lhs.false194 ], [ %incdec.ptr209, %while.body208 ], [ %2, %while.cond264.preheader ], [ %scan.111205, %land.rhs267 ], [ %scan.111205, %lor.rhs280 ], [ %incdec.ptr290, %while.body289 ], [ %2, %while.cond320.preheader ], [ %scan.131217, %lor.lhs.false339 ], [ %scan.131217, %land.rhs323 ], [ %incdec.ptr356, %while.cond320 ], [ %2, %while.cond413.preheader ], [ %scan.151229, %lor.rhs429 ], [ %scan.151229, %land.rhs421 ], [ %incdec.ptr440, %while.body439 ], [ %2, %while.cond475.preheader ], [ %scan.171241, %land.rhs478 ], [ %incdec.ptr502, %while.body501 ], [ %2, %while.cond558.preheader ], [ %scan.191253, %land.rhs561 ], [ %scan.191253, %land.rhs566 ], [ %incdec.ptr579, %while.cond558 ], [ %2, %while.cond615.preheader ], [ %scan.211267, %land.rhs618 ], [ %scan.211267, %land.rhs618 ], [ %scan.211267, %land.rhs618 ], [ %scan.211267, %land.rhs618 ], [ %scan.211267, %land.rhs618 ], [ %incdec.ptr643, %while.body642.critedge ], [ %2, %while.cond752.preheader ], [ %scan.261290, %land.rhs755 ], [ %incdec.ptr768, %while.cond752 ], [ %2, %while.cond799.preheader ], [ %scan.281302, %land.rhs802 ], [ %incdec.ptr816, %while.cond799 ], [ %2, %if.then6 ], [ %2, %if.then31 ], [ %2, %if.then109 ], [ %2, %while.cond157.preheader ], [ %2, %if.then215 ], [ %2, %while.cond300.preheader ], [ %2, %if.then362 ], [ %2, %while.cond450.preheader ], [ %2, %if.then508 ], [ %2, %while.cond732.preheader ], [ %2, %while.cond778.preheader ]
  %104 = load i8** @PL_reginput, align 8, !tbaa !3
  %sub.ptr.lhs.cast822 = ptrtoint i8* %scan.291136 to i64
  %sub.ptr.rhs.cast823 = ptrtoint i8* %104 to i64
  %sub.ptr.sub824 = sub i64 %sub.ptr.lhs.cast822, %sub.ptr.rhs.cast823
  %conv825 = trunc i64 %sub.ptr.sub824 to i32
  br label %if.end826

if.end826:                                        ; preds = %sw.epilog, %if.else821
  %scan.291135 = phi i8* [ %scan.291136, %if.else821 ], [ %scan.29, %sw.epilog ]
  %c.0 = phi i32 [ %conv825, %if.else821 ], [ %hardcount.14, %sw.epilog ]
  store i8* %scan.291135, i8** @PL_reginput, align 8, !tbaa !3
  ret i32 %c.0
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #3

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #3

; Function Attrs: optsize
declare void @Perl_savestack_grow_cnt(i32) #3

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #3

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #3

; Function Attrs: optsize
declare i64 @Perl_to_utf8_fold(i8*, i8*, i64*) #3

; Function Attrs: optsize
declare i8* @Perl_uvuni_to_utf8(i8*, i64) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
