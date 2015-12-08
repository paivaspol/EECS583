; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/pp_ctl.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, {}*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.context = type { i32, %union.anon }
%union.anon = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon.0, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon.0 = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.subst = type { i32, i32, i32, i32, i8, i8, i8*, %struct.sv*, %struct.sv*, i8*, i8*, i8*, i8*, %struct.regexp* }
%struct.block_sub = type { %struct.cv*, %struct.gv*, %struct.gv*, %struct.av*, %struct.av*, i64, i8, i8, %struct.av* }
%struct.block_eval = type { i32, i32, %struct.sv*, %struct.op*, %struct.sv*, %struct.cv* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@PL_stack_sp = external global %struct.sv**
@PL_stack_max = external global %struct.sv**
@PL_curstackinfo = external global %struct.stackinfo*
@PL_sv_undef = external global %struct.sv
@PL_op = external global %struct.op*
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@PL_reginterp_cnt = external global i32
@PL_tainted = external global i8
@PL_regfree = external global void (%struct.regexp*)*
@PL_curcop = external global %struct.cop*
@PL_regcompp = external global %struct.regexp* (i8*, i8*, %struct.pmop*)*
@PL_curpm = external global %struct.pmop*
@.str = private unnamed_addr constant [4 x i8] c"\5Cs+\00", align 1
@PL_reg_match_utf8 = external global i8
@.str1 = private unnamed_addr constant [18 x i8] c"Substitution loop\00", align 1
@PL_regexecp = external global i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)*
@PL_tainting = external global i8
@PL_savestack_ix = external global i32
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@PL_chopset = external global i8*
@PL_formtarget = external global %struct.sv*
@PL_dowarn = external global i8
@.str2 = private unnamed_addr constant [28 x i8] c"Not enough format arguments\00", align 1
@PL_utf8skip = external constant [0 x i8]
@.str3 = private unnamed_addr constant [8 x i8] c"%#0*.*f\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"%0*.*f\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"%#*.*f\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%*.*f\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"Runaway format\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@PL_defgv = external global %struct.gv*
@.str9 = private unnamed_addr constant [16 x i8] c"panic: mapstart\00", align 1
@PL_curpad = external global %struct.sv**
@PL_Sv = external global %struct.sv*
@PL_Xpv = external global %struct.xpv*
@PL_last_in_gv = external global %struct.gv*
@.str10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str12 = private unnamed_addr constant [37 x i8] c"Range iterator outside integer range\00", align 1
@PL_tmps_max = external global i32
@.str13 = private unnamed_addr constant [3 x i8] c"E0\00", align 1
@.str14 = private unnamed_addr constant [22 x i8] c"panic: bad gimme: %d\0A\00", align 1
@PL_in_eval = external global i32
@PL_eval_root = external global %struct.op*
@PL_curstack = external global %struct.av*
@PL_errgv = external global %struct.gv*
@PL_errors = external global %struct.sv*
@.str15 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PL_error_count = external global i32
@Perl_die_where.prefix = internal global [15 x i8] c"\09(in cleanup) \00", align 1
@PL_stderrgv = external global %struct.gv*
@.str16 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_markstack = external global i32*
@PL_scopestack_ix = external global i32
@PL_retstack_ix = external global i32
@.str17 = private unnamed_addr constant [12 x i8] c"panic: die \00", align 1
@.str18 = private unnamed_addr constant [32 x i8] c"%sCompilation failed in require\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c"Unknown error\0A\00", align 1
@PL_DBsub = external global %struct.gv*
@.str20 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"(eval)\00", align 1
@PL_debstash = external global %struct.hv*
@PL_dbargs = external global %struct.av*
@.str22 = private unnamed_addr constant [9 x i8] c"DB::args\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] zeroinitializer, align 1
@.str24 = private unnamed_addr constant [15 x i8] c"warnings::Bits\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str26 = private unnamed_addr constant [13 x i8] c"UUUUUUUUUUUU\00", align 1
@PL_DBsingle = external global %struct.sv*
@PL_DBsignal = external global %struct.sv*
@PL_DBtrace = external global %struct.sv*
@PL_DBgv = external global %struct.gv*
@.str27 = private unnamed_addr constant [26 x i8] c"No DB::DB routine defined\00", align 1
@PL_debug = external global i32
@PL_savestack_max = external global i32
@PL_savestack = external global %union.any*
@PL_comppad = external global %struct.av*
@PL_sortcxix = external global i32
@.str28 = private unnamed_addr constant [34 x i8] c"Can't return outside a subroutine\00", align 1
@PL_incgv = external global %struct.gv*
@.str29 = private unnamed_addr constant [31 x i8] c"%_ did not return a true value\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"panic: return\00", align 1
@.str31 = private unnamed_addr constant [34 x i8] c"Can't \22last\22 outside a loop block\00", align 1
@.str32 = private unnamed_addr constant [30 x i8] c"Label not found for \22last %s\22\00", align 1
@.str33 = private unnamed_addr constant [12 x i8] c"panic: last\00", align 1
@.str34 = private unnamed_addr constant [34 x i8] c"Can't \22next\22 outside a loop block\00", align 1
@.str35 = private unnamed_addr constant [30 x i8] c"Label not found for \22next %s\22\00", align 1
@PL_scopestack = external global i32*
@.str36 = private unnamed_addr constant [34 x i8] c"Can't \22redo\22 outside a loop block\00", align 1
@.str37 = private unnamed_addr constant [30 x i8] c"Label not found for \22redo %s\22\00", align 1
@Perl_pp_goto.must_have_label = internal global [21 x i8] c"goto must have label\00", align 16
@.str38 = private unnamed_addr constant [30 x i8] c"Goto undefined subroutine &%_\00", align 1
@.str39 = private unnamed_addr constant [26 x i8] c"Goto undefined subroutine\00", align 1
@.str40 = private unnamed_addr constant [43 x i8] c"Can't goto subroutine outside a subroutine\00", align 1
@.str41 = private unnamed_addr constant [42 x i8] c"Can't goto subroutine from an eval-string\00", align 1
@PL_markstack_max = external global i32*
@PL_perldb = external global i32
@.str42 = private unnamed_addr constant [9 x i8] c"DB::goto\00", align 1
@PL_lastgotoprobe = external global %struct.op*
@PL_main_root = external global %struct.op*
@.str43 = private unnamed_addr constant [35 x i8] c"Can't \22goto\22 out of a pseudo block\00", align 1
@.str44 = private unnamed_addr constant [12 x i8] c"panic: goto\00", align 1
@.str45 = private unnamed_addr constant [20 x i8] c"Can't find label %s\00", align 1
@.str46 = private unnamed_addr constant [47 x i8] c"Can't \22goto\22 into the middle of a foreach loop\00", align 1
@PL_restartop = external global %struct.op*
@PL_do_undump = external global i8
@PL_exit_flags = external global i8
@PL_compiling = external global %struct.cop
@PL_curstash = external global %struct.hv*
@.str47 = private unnamed_addr constant [26 x i8] c"_<(%.10seval %lu)[%s:%ld]\00", align 1
@PL_evalseq = external global i32
@.str48 = private unnamed_addr constant [19 x i8] c"_<(%.10s_eval %lu)\00", align 1
@PL_defstash = external global %struct.hv*
@PL_hints = external global i32
@PL_hintgv = external global %struct.gv*
@PL_linestr = external global %struct.sv*
@PL_compcv = external global %struct.cv*
@PL_cop_seqmax = external global i32
@PL_ppaddr = external global [0 x %struct.op* ()*]
@PL_main_cv = external global %struct.cv*
@.str49 = private unnamed_addr constant [60 x i8] c"Perl v%lu.%lu.%lu required--this is only v%d.%d.%d, stopped\00", align 1
@.str50 = private unnamed_addr constant [87 x i8] c"Perl v%lu.%lu.%lu required (did you mean v%lu.%03lu?)--this is only v%d.%d.%d, stopped\00", align 1
@.str51 = private unnamed_addr constant [19 x i8] c"Null filename used\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str53 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str54 = private unnamed_addr constant [17 x i8] c"/loader/0x%lx/%s\00", align 1
@.str55 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str56 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str58 = private unnamed_addr constant [9 x i8] c" in @INC\00", align 1
@.str59 = private unnamed_addr constant [4 x i8] c".h \00", align 1
@.str60 = private unnamed_addr constant [27 x i8] c" (change .h to .ph maybe?)\00", align 1
@.str61 = private unnamed_addr constant [5 x i8] c".ph \00", align 1
@.str62 = private unnamed_addr constant [21 x i8] c" (did you run h2ph?)\00", align 1
@.str63 = private unnamed_addr constant [17 x i8] c" (@INC contains:\00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str65 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str66 = private unnamed_addr constant [16 x i8] c"Can't locate %s\00", align 1
@PL_rsfp_filters = external global %struct.av*
@PL_rsfp = external global %struct._PerlIO**
@PL_taint_warn = external global i8
@.str67 = private unnamed_addr constant [13 x i8] c"\00\00\00\00\00\00\00\00\00@\00\00\00", align 1
@PL_encoding = external global %struct.sv*
@PL_top_env = external global %struct.jmpenv*
@PL_sub_generation = external global i32
@.str68 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str69 = private unnamed_addr constant [21 x i8] c"_<(eval %lu)[%s:%ld]\00", align 1
@.str70 = private unnamed_addr constant [13 x i8] c"_<(eval %lu)\00", align 1
@.str71 = private unnamed_addr constant [10 x i8] c"_<(eval )\00", align 1
@.str72 = private unnamed_addr constant [25 x i8] c"Null picture in formline\00", align 1
@.str73 = private unnamed_addr constant [54 x i8] c"Repeated format line will never terminate (~~ and @#)\00", align 1
@PL_statusvalue = external global i32
@.str74 = private unnamed_addr constant [16 x i8] c"panic: top_env\0A\00", align 1
@PL_runops = external global i32 ()*
@.str75 = private unnamed_addr constant [4 x i8] c".pm\00", align 1
@.str76 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@PL_beginav = external global %struct.av*
@.str77 = private unnamed_addr constant [31 x i8] c"%sCompilation failed in regexp\00", align 1
@.str78 = private unnamed_addr constant [18 x i8] c"Compilation error\00", align 1
@.str79 = private unnamed_addr constant [14 x i8] c"DB::postponed\00", align 1
@PL_lex_state = external global i32
@PL_eval_start = external global %struct.op*
@S_dofindlabel.too_deep = internal global [36 x i8] c"Target of goto is too deeply nested\00", align 16
@.str80 = private unnamed_addr constant [18 x i8] c"Exiting %s via %s\00", align 1
@context_name = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([13 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str86, i32 0, i32 0)], align 16
@PL_op_name = external global [0 x i8*]
@.str81 = private unnamed_addr constant [13 x i8] c"pseudo-block\00", align 1
@.str82 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str83 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str84 = private unnamed_addr constant [13 x i8] c"substitution\00", align 1
@.str85 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str86 = private unnamed_addr constant [7 x i8] c"format\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_wantarray() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 2
  %3 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 1
  %4 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %cmp4.i.i = icmp sgt i32 %3, -1
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %if.then3

for.body.lr.ph.i.i:                               ; preds = %if.end
  %5 = sext i32 %3 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %5, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %i.05.i.i = phi i32 [ %3, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cx_type.i.i = getelementptr inbounds %struct.context* %4, i64 %indvars.iv.i.i, i32 0
  %6 = load i32* %cx_type.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %6, 255
  switch i32 %and.i.i, label %for.inc.i.i [
    i32 2, label %S_dopoptosub.exit
    i32 1, label %S_dopoptosub.exit
    i32 6, label %S_dopoptosub.exit
  ]

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %dec.i.i = add nsw i32 %i.05.i.i, -1
  %7 = trunc i64 %indvars.iv.i.i to i32
  %cmp.i.i = icmp sgt i32 %7, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %S_dopoptosub.exit

S_dopoptosub.exit:                                ; preds = %for.body.i.i, %for.body.i.i, %for.body.i.i, %for.inc.i.i
  %i.0.lcssa.i.i = phi i32 [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cmp2 = icmp slt i32 %i.0.lcssa.i.i, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end, %S_dopoptosub.exit
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %8 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %8, i64 0, i32 0
  br label %return

if.end4:                                          ; preds = %S_dopoptosub.exit
  %idxprom = sext i32 %i.0.lcssa.i.i to i64
  %blku_gimme = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 6
  %9 = load i8* %blku_gimme, align 1, !tbaa !1
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end4
  %incdec.ptr5 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr5, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr5, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next6 = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  br label %return

sw.bb7:                                           ; preds = %if.end4
  %incdec.ptr8 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr8, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next9 = getelementptr inbounds %struct.op* %11, i64 0, i32 0
  br label %return

sw.default:                                       ; preds = %if.end4
  %incdec.ptr10 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr10, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %12 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next11 = getelementptr inbounds %struct.op* %12, i64 0, i32 0
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb, %if.then3
  %retval.0.in = phi %struct.op** [ %op_next, %if.then3 ], [ %op_next11, %sw.default ], [ %op_next9, %sw.bb7 ], [ %op_next6, %sw.bb ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: nounwind optsize readonly uwtable
define %struct.op* @Perl_pp_regcmaybe() #2 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %0, i64 0, i32 0
  %1 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %1
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_regcreset() #0 {
entry:
  store i32 0, i32* @PL_reginterp_cnt, align 4, !tbaa !3
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %0, i64 0, i32 0
  %1 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %1
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_regcomp() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %2 = getelementptr inbounds %struct.op* %1, i64 1, i32 1
  %3 = load %struct.op** %2, align 8, !tbaa !0
  %4 = bitcast %struct.op* %3 to %struct.pmop*
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags1 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags1, align 4, !tbaa !3
  %and2 = and i32 %9, 57344
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.else, label %if.end5

if.end5:                                          ; preds = %if.then
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %8, i32 114) #7
  %tobool6 = icmp eq %struct.magic* %call, null
  br i1 %tobool6, label %if.end5.if.else_crit_edge, label %if.then7

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  %.pre150 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.else

if.then7:                                         ; preds = %if.end5
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %10 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %11 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  %op_pmregexp = getelementptr inbounds %struct.op* %3, i64 2
  %12 = bitcast %struct.op* %op_pmregexp to %struct.regexp**
  %13 = load %struct.regexp** %12, align 8, !tbaa !0
  call void %11(%struct.regexp* %13) #7
  %tobool8 = icmp eq %struct.sv* %10, null
  br i1 %tobool8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then7
  %14 = bitcast %struct.sv* %10 to %struct.regexp*
  %refcnt = getelementptr inbounds %struct.regexp* %14, i64 0, i32 9
  %15 = load i32* %refcnt, align 4, !tbaa !3
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.then7, %land.rhs
  %16 = getelementptr inbounds %struct.op* %op_pmregexp, i64 0, i32 0
  %.c = bitcast %struct.sv* %10 to %struct.op*
  store %struct.op* %.c, %struct.op** %16, align 8, !tbaa !0
  %17 = bitcast %struct.sv* %10 to %struct.regexp*
  br label %if.end81

if.else:                                          ; preds = %if.end5.if.else_crit_edge, %entry, %if.then
  %18 = phi i32 [ %.pre150, %if.end5.if.else_crit_edge ], [ %6, %entry ], [ %6, %if.then ]
  %and12 = and i32 %18, 262144
  %cmp = icmp eq i32 %and12, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any13 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %19 = load i8** %sv_any13, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %19, i64 8
  %20 = bitcast i8* %xpv_cur to i64*
  %21 = load i64* %20, align 8, !tbaa !4
  store i64 %21, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %19 to i8**
  %22 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call15 = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %len, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ %call15, %cond.false ]
  %op_pmregexp16 = getelementptr inbounds %struct.op* %3, i64 2
  %23 = bitcast %struct.op* %op_pmregexp16 to %struct.regexp**
  %24 = load %struct.regexp** %23, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.regexp* %24, null
  br i1 %tobool17, label %if.end35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %precomp = getelementptr inbounds %struct.regexp* %24, i64 0, i32 4
  %25 = load i8** %precomp, align 8, !tbaa !0
  %tobool19 = icmp eq i8* %25, null
  br i1 %tobool19, label %if.then32, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %prelen = getelementptr inbounds %struct.regexp* %24, i64 0, i32 11
  %26 = load i32* %prelen, align 4, !tbaa !3
  %27 = load i64* %len, align 8, !tbaa !4
  %conv = trunc i64 %27 to i32
  %cmp22 = icmp eq i32 %26, %conv
  br i1 %cmp22, label %lor.lhs.false24, label %if.then32

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call27 = call i32 @memcmp(i8* %25, i8* %cond, i64 %27) #7
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %if.end81, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %lor.lhs.false20, %lor.lhs.false24
  %28 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  call void %28(%struct.regexp* %24) #7
  %29 = getelementptr inbounds %struct.op* %op_pmregexp16, i64 0, i32 0
  store %struct.op* null, %struct.op** %29, align 8, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %cond.end, %if.then32
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %30, i64 0, i32 6
  %31 = load i8* %op_flags, align 1, !tbaa !1
  %tobool38 = icmp slt i8 %31, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  store i32 2147483647, i32* @PL_reginterp_cnt, align 4, !tbaa !3
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35
  %op_pmpermflags = getelementptr inbounds %struct.pmop* %4, i64 0, i32 15
  %32 = load i32* %op_pmpermflags, align 4, !tbaa !3
  %op_pmflags = getelementptr inbounds %struct.op* %3, i64 2, i32 1
  %33 = bitcast %struct.op** %op_pmflags to i32*
  store i32 %32, i32* %33, align 4, !tbaa !3
  %34 = load i32* %sv_flags, align 4, !tbaa !3
  %and42 = and i32 %34, 536870912
  %tobool43 = icmp eq i32 %and42, 0
  br i1 %tobool43, label %if.else50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end40
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %35, i64 0, i32 7
  %36 = load i8* %op_private, align 1, !tbaa !1
  %and45 = and i8 %36, 8
  %tobool46 = icmp eq i8 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %land.lhs.true
  %op_pmdynflags = getelementptr inbounds %struct.op* %3, i64 2, i32 2
  %37 = bitcast {}** %op_pmdynflags to i8*
  %38 = load i8* %37, align 1, !tbaa !1
  %or = or i8 %38, 8
  store i8 %or, i8* %37, align 1, !tbaa !1
  br label %if.end62

if.else50:                                        ; preds = %land.lhs.true, %if.end40
  %op_pmdynflags51 = getelementptr inbounds %struct.op* %3, i64 2, i32 2
  %39 = bitcast {}** %op_pmdynflags51 to i8*
  %40 = load i8* %39, align 1, !tbaa !1
  %and53 = and i8 %40, -9
  store i8 %and53, i8* %39, align 1, !tbaa !1
  %and57 = and i8 %40, 4
  %tobool58 = icmp eq i8 %and57, 0
  br i1 %tobool58, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.else50
  %call60 = call i8* @Perl_bytes_to_utf8(i8* %cond, i64* %len) #7
  br label %if.end62

if.end62:                                         ; preds = %if.else50, %if.then59, %if.then47
  %t.0 = phi i8* [ %call60, %if.then59 ], [ %cond, %if.else50 ], [ %cond, %if.then47 ]
  %41 = load %struct.regexp* (i8*, i8*, %struct.pmop*)** @PL_regcompp, align 8, !tbaa !0
  %42 = load i64* %len, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %t.0, i64 %42
  %call63 = call %struct.regexp* %41(i8* %t.0, i8* %add.ptr, %struct.pmop* %4) #7
  %43 = getelementptr inbounds %struct.op* %op_pmregexp16, i64 0, i32 0
  %call63.c = bitcast %struct.regexp* %call63 to %struct.op*
  store %struct.op* %call63.c, %struct.op** %43, align 8, !tbaa !0
  %44 = load i32* %sv_flags, align 4, !tbaa !3
  %and66 = and i32 %44, 536870912
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true73, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end62
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private69 = getelementptr inbounds %struct.cop* %45, i64 0, i32 7
  %46 = load i8* %op_private69, align 1, !tbaa !1
  %and71 = and i8 %46, 8
  %tobool72 = icmp eq i8 %and71, 0
  br i1 %tobool72, label %if.end79, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.lhs.true68, %if.end62
  %op_pmdynflags74 = getelementptr inbounds %struct.op* %3, i64 2, i32 2
  %47 = bitcast {}** %op_pmdynflags74 to i8*
  %48 = load i8* %47, align 1, !tbaa !1
  %and76 = and i8 %48, 4
  %tobool77 = icmp eq i8 %and76, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %land.lhs.true73
  call void @Perl_safesysfree(i8* %t.0) #7
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true73, %land.lhs.true68, %if.then78
  store i32 0, i32* @PL_reginterp_cnt, align 4, !tbaa !3
  %.pre = load %struct.regexp** %23, align 8, !tbaa !0
  br label %if.end81

if.end81:                                         ; preds = %lor.lhs.false24, %if.end79, %land.end
  %49 = phi %struct.regexp* [ %24, %lor.lhs.false24 ], [ %.pre, %if.end79 ], [ %17, %land.end ]
  %prelen83 = getelementptr inbounds %struct.regexp* %49, i64 0, i32 11
  %50 = load i32* %prelen83, align 4, !tbaa !3
  %tobool84 = icmp eq i32 %50, 0
  %51 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool86 = icmp ne %struct.pmop* %51, null
  %or.cond = and i1 %tobool84, %tobool86
  br i1 %or.cond, label %if.end100, label %if.else88

if.else88:                                        ; preds = %if.end81
  %precomp90 = getelementptr inbounds %struct.regexp* %49, i64 0, i32 4
  %52 = load i8** %precomp90, align 8, !tbaa !0
  %call91 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %52) #7
  %tobool92 = icmp eq i32 %call91, 0
  %op_pmflags97 = getelementptr inbounds %struct.op* %3, i64 2, i32 1
  %53 = bitcast %struct.op** %op_pmflags97 to i32*
  %54 = load i32* %53, align 4, !tbaa !3
  br i1 %tobool92, label %if.then93, label %if.else96

if.then93:                                        ; preds = %if.else88
  %or95 = or i32 %54, 32
  store i32 %or95, i32* %53, align 4, !tbaa !3
  br label %if.end100

if.else96:                                        ; preds = %if.else88
  %and98 = and i32 %54, -33
  store i32 %and98, i32* %53, align 4, !tbaa !3
  br label %if.end100

if.end100:                                        ; preds = %if.end81, %if.then93, %if.else96
  %pm.0 = phi %struct.pmop* [ %4, %if.else96 ], [ %4, %if.then93 ], [ %51, %if.end81 ]
  %op_pmflags101 = getelementptr inbounds %struct.pmop* %pm.0, i64 0, i32 14
  %55 = load i32* %op_pmflags101, align 4, !tbaa !3
  %and102 = and i32 %55, 128
  %tobool103 = icmp eq i32 %and102, 0
  br i1 %tobool103, label %if.end110, label %if.then104

if.then104:                                       ; preds = %if.end100
  %op_private105 = getelementptr inbounds %struct.pmop* %pm.0, i64 0, i32 7
  %56 = load i8* %op_private105, align 1, !tbaa !1
  %and107 = and i8 %56, -65
  store i8 %and107, i8* %op_private105, align 1, !tbaa !1
  %57 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %57, i64 0, i32 0
  %58 = load %struct.op** %op_next, align 8, !tbaa !0
  %59 = getelementptr inbounds %struct.op* %57, i64 1, i32 0
  %60 = load %struct.op** %59, align 8, !tbaa !0
  %op_next109 = getelementptr inbounds %struct.op* %60, i64 0, i32 0
  store %struct.op* %58, %struct.op** %op_next109, align 8, !tbaa !0
  br label %if.end110

if.end110:                                        ; preds = %if.end100, %if.then104
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %61 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next111 = getelementptr inbounds %struct.op* %61, i64 0, i32 0
  %62 = load %struct.op** %op_next111, align 8, !tbaa !0
  ret %struct.op* %62
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_substcont() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %2 = getelementptr inbounds %struct.op* %1, i64 1, i32 1
  %3 = load %struct.op** %2, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 2
  %5 = load i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %5 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 1
  %6 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_u = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1
  %cx_subst = bitcast %union.anon* %cx_u to %struct.subst*
  %sbu_dstr = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 5
  %7 = load %struct.pmop** %sbu_dstr, align 8
  %8 = bitcast %struct.pmop* %7 to %struct.sv*
  %9 = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 0
  %10 = load i8** %9, align 8, !tbaa !0
  %sbu_m = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %11 = bitcast i32* %sbu_m to i8**
  %12 = load i8** %11, align 8, !tbaa !0
  %sbu_orig = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 4
  %13 = bitcast i32* %sbu_orig to i8**
  %14 = load i8** %13, align 8, !tbaa !0
  %sbu_rx = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %15 = load %struct.op** %sbu_rx, align 8
  %16 = bitcast %struct.op* %15 to %struct.regexp*
  %op_pmregexp = getelementptr inbounds %struct.op* %3, i64 2
  %17 = bitcast %struct.op* %op_pmregexp to %struct.regexp**
  %18 = load %struct.regexp** %17, align 8, !tbaa !0
  %cmp = icmp ne %struct.regexp* %18, %16
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %tobool = icmp eq %struct.regexp* %18, null
  br i1 %tobool, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %19 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  call void %19(%struct.regexp* %18) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then9
  %20 = getelementptr inbounds %struct.op* %op_pmregexp, i64 0, i32 0
  store %struct.op* %15, %struct.op** %20, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %sbu_rxres = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %21 = bitcast %struct.op** %sbu_rxres to i8**
  call void @Perl_rxres_restore(i8** %21, %struct.regexp* %16) #8
  %sbu_targ = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 6
  %22 = bitcast i8* %sbu_targ to %struct.sv**
  %23 = load %struct.sv** %22, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %24, 536870912
  %tobool16 = icmp eq i32 %and, 0
  %reganch = getelementptr inbounds %struct.regexp* %16, i64 0, i32 15
  %25 = load i32* %reganch, align 4, !tbaa !3
  %or = or i32 %25, 268435456
  %and18 = and i32 %25, -268435457
  %storemerge495 = select i1 %tobool16, i32 %and18, i32 %or
  %and.lobit = lshr exact i32 %and, 29
  %26 = xor i32 %and.lobit, 1
  %27 = trunc i32 %26 to i8
  %storemerge = xor i8 %27, 1
  store i32 %storemerge495, i32* %reganch, align 4, !tbaa !3
  store i8 %storemerge, i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %sbu_iters = getelementptr inbounds %union.anon* %cx_u, i64 0, i32 0, i32 0
  %28 = load i32* %sbu_iters, align 4, !tbaa !3
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %sbu_iters, align 4, !tbaa !3
  %tobool21 = icmp eq i32 %28, 0
  br i1 %tobool21, label %if.end218, label %if.then22

if.then22:                                        ; preds = %if.end11
  %sbu_maxiters = getelementptr inbounds %struct.subst* %cx_subst, i64 0, i32 1
  %29 = load i32* %sbu_maxiters, align 4, !tbaa !3
  %cmp31 = icmp slt i32 %28, %29
  br i1 %cmp31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.then22
  %call = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0)) #7
  br label %return

if.end33:                                         ; preds = %if.then22
  %sbu_rxtainted = getelementptr inbounds %struct.subst* %cx_subst, i64 0, i32 5
  %30 = load i8* %sbu_rxtainted, align 1, !tbaa !1
  %and36 = and i8 %30, 2
  %tobool37 = icmp eq i8 %and36, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end33
  %31 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags38 = getelementptr inbounds %struct.sv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags38, align 4, !tbaa !3
  %and39 = and i32 %32, 57344
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end52, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true
  %call42 = call signext i8 @Perl_sv_tainted(%struct.sv* %31) #7
  %tobool44 = icmp eq i8 %call42, 0
  br i1 %tobool44, label %if.end52, label %if.then45

if.then45:                                        ; preds = %land.lhs.true41
  %33 = load i8* %sbu_rxtainted, align 1, !tbaa !1
  %or50 = or i8 %33, 2
  store i8 %or50, i8* %sbu_rxtainted, align 1, !tbaa !1
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true41, %if.end33, %land.lhs.true, %if.then45
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %34 = load %struct.sv** %0, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %8, %struct.sv* %34, i32 2) #7
  %sbu_once = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 2
  %35 = bitcast i32* %sbu_once to i8*
  %36 = load i8* %35, align 1, !tbaa !1
  %tobool56 = icmp eq i8 %36, 0
  br i1 %tobool56, label %lor.lhs.false, label %if.end52.if.then71_crit_edge

if.end52.if.then71_crit_edge:                     ; preds = %if.end52
  %sbu_strend77.pre = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.end52
  %37 = load i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  %sbu_strend = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %38 = load %struct.op** %sbu_strend, align 8
  %39 = bitcast %struct.op* %38 to i8*
  %cmp59 = icmp eq i8* %10, %12
  %conv60 = zext i1 %cmp59 to i32
  %40 = load %struct.sv** %22, align 8, !tbaa !0
  %sbu_rflags = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 1
  %41 = bitcast %struct.cop** %sbu_rflags to i32*
  %42 = load i32* %41, align 4, !tbaa !3
  %and66 = and i32 %42, 1
  %43 = xor i32 %and66, 25
  %call69 = call i32 %37(%struct.regexp* %16, i8* %10, i8* %39, i8* %14, i32 %conv60, %struct.sv* %40, i8* null, i32 %43) #7
  %tobool70 = icmp eq i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end214

if.then71:                                        ; preds = %if.end52.if.then71_crit_edge, %lor.lhs.false
  %sbu_strend77.pre-phi = phi %struct.op** [ %sbu_strend77.pre, %if.end52.if.then71_crit_edge ], [ %sbu_strend, %lor.lhs.false ]
  %44 = load %struct.sv** %22, align 8, !tbaa !0
  %45 = load %struct.op** %sbu_strend77.pre-phi, align 8
  %46 = bitcast %struct.op* %45 to i8*
  %cmp78 = icmp ugt i8* %46, %10
  br i1 %cmp78, label %if.then80, label %if.end118

if.then80:                                        ; preds = %if.then71
  %sv_flags81 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %47 = load i32* %sv_flags81, align 4, !tbaa !3
  %and82 = and i32 %47, 536870912
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %if.else110, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.then80
  %48 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %48, i64 0, i32 7
  %49 = load i8* %op_private, align 1, !tbaa !1
  %and86 = and i8 %49, 8
  %tobool87 = icmp eq i8 %and86, 0
  br i1 %tobool87, label %land.lhs.true88, label %if.else110

land.lhs.true88:                                  ; preds = %land.lhs.true84
  %sv_flags89 = getelementptr inbounds %struct.sv* %44, i64 0, i32 2
  %50 = load i32* %sv_flags89, align 4, !tbaa !3
  %and90 = and i32 %50, 536870912
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %if.then94, label %if.else110

if.then94:                                        ; preds = %land.lhs.true88
  %sub.ptr.lhs.cast = ptrtoint %struct.op* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call98 = call %struct.sv* @Perl_newSVpvn(i8* %10, i64 %sub.ptr.sub) #7
  %call99 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call98) #7
  %sv_flags107 = getelementptr inbounds %struct.sv* %call99, i64 0, i32 2
  %51 = load i32* %sv_flags107, align 4, !tbaa !3
  %and108 = and i32 %51, -536870913
  store i32 %and108, i32* %sv_flags107, align 4, !tbaa !3
  %call109 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call99, i32 2) #7
  call void @Perl_sv_catsv_flags(%struct.sv* %8, %struct.sv* %call99, i32 2) #7
  br label %if.end118

if.else110:                                       ; preds = %land.lhs.true88, %land.lhs.true84, %if.then80
  %52 = load %struct.op** %sbu_strend77.pre-phi, align 8
  %sub.ptr.lhs.cast114 = ptrtoint %struct.op* %52 to i64
  %sub.ptr.rhs.cast115 = ptrtoint i8* %10 to i64
  %sub.ptr.sub116 = sub i64 %sub.ptr.lhs.cast114, %sub.ptr.rhs.cast115
  call void @Perl_sv_catpvn_flags(%struct.sv* %8, i8* %10, i64 %sub.ptr.sub116, i32 2) #7
  br label %if.end118

if.end118:                                        ; preds = %if.then94, %if.else110, %if.then71
  %sv_flags127 = getelementptr inbounds %struct.sv* %44, i64 0, i32 2
  %53 = load i32* %sv_flags127, align 4, !tbaa !3
  %and128 = and i32 %53, 2097152
  %tobool129 = icmp eq i32 %and128, 0
  br i1 %tobool129, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end118
  %call130 = call i32 @Perl_sv_backoff(%struct.sv* %44) #7
  br label %land.end

land.end:                                         ; preds = %if.end118, %land.rhs
  %sv_any = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %54 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %54, i64 16
  %55 = bitcast i8* %xpv_len to i64*
  %56 = load i64* %55, align 8, !tbaa !4
  %tobool132 = icmp eq i64 %56, 0
  br i1 %tobool132, label %if.end135, label %if.then133

if.then133:                                       ; preds = %land.end
  %xpv_pv = bitcast i8* %54 to i8**
  %57 = load i8** %xpv_pv, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %57) #7
  %.pre = load i8** %sv_any, align 8, !tbaa !0
  br label %if.end135

if.end135:                                        ; preds = %land.end, %if.then133
  %58 = phi i8* [ %54, %land.end ], [ %.pre, %if.then133 ]
  %sv_any136 = bitcast %struct.pmop* %7 to i8**
  %59 = load i8** %sv_any136, align 8, !tbaa !0
  %xpv_pv137 = bitcast i8* %59 to i8**
  %60 = load i8** %xpv_pv137, align 8, !tbaa !0
  %xpv_pv139 = bitcast i8* %58 to i8**
  store i8* %60, i8** %xpv_pv139, align 8, !tbaa !0
  %61 = load i8** %sv_any136, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %61, i64 8
  %62 = bitcast i8* %xpv_cur to i64*
  %63 = load i64* %62, align 8, !tbaa !4
  %64 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur142 = getelementptr inbounds i8* %64, i64 8
  %65 = bitcast i8* %xpv_cur142 to i64*
  store i64 %63, i64* %65, align 8, !tbaa !4
  %xpv_len144 = getelementptr inbounds i8* %61, i64 16
  %66 = bitcast i8* %xpv_len144 to i64*
  %67 = load i64* %66, align 8, !tbaa !4
  %xpv_len146 = getelementptr inbounds i8* %64, i64 16
  %68 = bitcast i8* %xpv_len146 to i64*
  store i64 %67, i64* %68, align 8, !tbaa !4
  %sv_flags147 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %69 = load i32* %sv_flags147, align 4, !tbaa !3
  %and148 = and i32 %69, 536870912
  %tobool149 = icmp eq i32 %and148, 0
  br i1 %tobool149, label %if.end158, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %if.end135
  %70 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private151 = getelementptr inbounds %struct.cop* %70, i64 0, i32 7
  %71 = load i8* %op_private151, align 1, !tbaa !1
  %and153 = and i8 %71, 8
  %tobool154 = icmp eq i8 %and153, 0
  br i1 %tobool154, label %if.then155, label %if.end158

if.then155:                                       ; preds = %land.lhs.true150
  %72 = load i32* %sv_flags127, align 4, !tbaa !3
  %or157 = or i32 %72, 536870912
  store i32 %or157, i32* %sv_flags127, align 4, !tbaa !3
  br label %if.end158

if.end158:                                        ; preds = %land.lhs.true150, %if.end135, %if.then155
  %73 = load i8** %sv_any136, align 8, !tbaa !0
  %xpv_pv160 = bitcast i8* %73 to i8**
  store i8* null, i8** %xpv_pv160, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %8) #7
  %74 = load i8* %sbu_rxtainted, align 1, !tbaa !1
  %and165 = and i8 %74, 1
  %tobool166 = icmp eq i8 %and165, 0
  br i1 %tobool166, label %if.end168, label %if.then167

if.then167:                                       ; preds = %if.end158
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end168

if.end168:                                        ; preds = %if.end158, %if.then167
  %conv169 = sext i32 %28 to i64
  %call170 = call %struct.sv* @Perl_newSViv(i64 %conv169) #7
  %call171 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call170) #7
  store %struct.sv* %call171, %struct.sv** %0, align 8, !tbaa !0
  %75 = load i32* %sv_flags127, align 4, !tbaa !3
  %and174 = and i32 %75, 1760624639
  %or176 = or i32 %and174, 67371008
  store i32 %or176, i32* %sv_flags127, align 4, !tbaa !3
  %76 = load i8* %sbu_rxtainted, align 1, !tbaa !1
  %tobool180 = icmp eq i8 %76, 0
  br i1 %tobool180, label %if.end182, label %if.then181

if.then181:                                       ; preds = %if.end168
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  %.pre498 = load i32* %sv_flags127, align 4, !tbaa !3
  br label %if.end182

if.end182:                                        ; preds = %if.end168, %if.then181
  %77 = phi i32 [ %or176, %if.end168 ], [ %.pre498, %if.then181 ]
  %and184 = and i32 %77, 16384
  %tobool185 = icmp eq i32 %and184, 0
  br i1 %tobool185, label %if.end188, label %if.then186

if.then186:                                       ; preds = %if.end182
  %call187 = call i32 @Perl_mg_set(%struct.sv* %44) #7
  br label %if.end188

if.end188:                                        ; preds = %if.end182, %if.then186
  %78 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool189 = icmp ne i8 %78, 0
  %79 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool191 = icmp ne i8 %79, 0
  %or.cond = and i1 %tobool189, %tobool191
  br i1 %or.cond, label %if.then194, label %if.end197

if.then194:                                       ; preds = %if.end188
  call void @Perl_sv_taint(%struct.sv* %44) #7
  br label %if.end197

if.end197:                                        ; preds = %if.then194, %if.end188
  %80 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %sbu_oldsave = getelementptr inbounds %struct.subst* %cx_subst, i64 0, i32 3
  %81 = load i32* %sbu_oldsave, align 4, !tbaa !3
  %cmp200 = icmp sgt i32 %80, %81
  br i1 %cmp200, label %if.then202, label %if.end206

if.then202:                                       ; preds = %if.end197
  call void @Perl_leave_scope(i32 %81) #7
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.end197
  %82 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  call void %82(%struct.regexp* %16) #7
  %83 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix207 = getelementptr inbounds %struct.stackinfo* %83, i64 0, i32 2
  %84 = load i32* %si_cxix207, align 4, !tbaa !3
  %dec = add nsw i32 %84, -1
  store i32 %dec, i32* %si_cxix207, align 4, !tbaa !3
  %idxprom208 = sext i32 %84 to i64
  %si_cxstack209 = getelementptr inbounds %struct.stackinfo* %83, i64 0, i32 1
  %85 = load %struct.context** %si_cxstack209, align 8, !tbaa !0
  %sbu_rxres213 = getelementptr inbounds %struct.context* %85, i64 %idxprom208, i32 1, i32 0, i32 7, i32 0, i32 3
  %86 = bitcast %struct.op** %sbu_rxres213 to i8**
  call void @Perl_rxres_free(i8** %86) #8
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %3, i64 0, i32 0
  %87 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end214:                                        ; preds = %lor.lhs.false
  store i32 %inc, i32* %sbu_iters, align 4, !tbaa !3
  br label %if.end218

if.end218:                                        ; preds = %if.end11, %if.end214
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %if.end214 ], [ %0, %if.end11 ]
  %88 = load i32* %reganch, align 4, !tbaa !3
  %and220 = and i32 %88, 262144
  %tobool221 = icmp eq i32 %and220, 0
  br i1 %tobool221, label %if.end243, label %land.lhs.true222

land.lhs.true222:                                 ; preds = %if.end218
  %subbeg = getelementptr inbounds %struct.op* %15, i64 1, i32 1
  %89 = load %struct.op** %subbeg, align 8
  %90 = bitcast %struct.op* %89 to i8*
  %cmp223 = icmp eq i8* %90, %14
  br i1 %cmp223, label %if.end243, label %if.then225

if.then225:                                       ; preds = %land.lhs.true222
  store i8* %90, i8** %13, align 8, !tbaa !0
  %sub.ptr.lhs.cast230 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast231 = ptrtoint i8* %14 to i64
  %sub.ptr.sub232 = sub i64 %sub.ptr.lhs.cast230, %sub.ptr.rhs.cast231
  %add.ptr = getelementptr inbounds i8* %90, i64 %sub.ptr.sub232
  %sbu_strend235 = getelementptr inbounds %struct.context* %6, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %91 = load %struct.op** %sbu_strend235, align 8
  %sub.ptr.lhs.cast236 = ptrtoint %struct.op* %91 to i64
  %add.ptr.sum = sub i64 %sub.ptr.lhs.cast236, %sub.ptr.rhs.cast231
  %add.ptr239 = getelementptr inbounds i8* %90, i64 %add.ptr.sum
  %add.ptr239.c = bitcast i8* %add.ptr239 to %struct.op*
  store %struct.op* %add.ptr239.c, %struct.op** %sbu_strend235, align 8, !tbaa !0
  br label %if.end243

if.end243:                                        ; preds = %land.lhs.true222, %if.end218, %if.then225
  %orig.0 = phi i8* [ %90, %if.then225 ], [ %14, %land.lhs.true222 ], [ %14, %if.end218 ]
  %s.0 = phi i8* [ %add.ptr, %if.then225 ], [ %10, %land.lhs.true222 ], [ %10, %if.end218 ]
  %startp = bitcast %struct.op* %15 to i32**
  %92 = load i32** %startp, align 8, !tbaa !0
  %93 = load i32* %92, align 4, !tbaa !3
  %idx.ext = sext i32 %93 to i64
  %add.ptr245 = getelementptr inbounds i8* %orig.0, i64 %idx.ext
  store i8* %add.ptr245, i8** %11, align 8, !tbaa !0
  %cmp249 = icmp ugt i8* %add.ptr245, %s.0
  br i1 %cmp249, label %if.then251, label %if.end288

if.then251:                                       ; preds = %if.end243
  %sv_flags252 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %94 = load i32* %sv_flags252, align 4, !tbaa !3
  %and253 = and i32 %94, 536870912
  %tobool254 = icmp eq i32 %and253, 0
  br i1 %tobool254, label %if.else283, label %land.lhs.true255

land.lhs.true255:                                 ; preds = %if.then251
  %95 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private256 = getelementptr inbounds %struct.cop* %95, i64 0, i32 7
  %96 = load i8* %op_private256, align 1, !tbaa !1
  %and258 = and i8 %96, 8
  %tobool259 = icmp eq i8 %and258, 0
  br i1 %tobool259, label %land.lhs.true260, label %if.else283

land.lhs.true260:                                 ; preds = %land.lhs.true255
  %97 = load %struct.sv** %22, align 8, !tbaa !0
  %sv_flags264 = getelementptr inbounds %struct.sv* %97, i64 0, i32 2
  %98 = load i32* %sv_flags264, align 4, !tbaa !3
  %and265 = and i32 %98, 536870912
  %tobool266 = icmp eq i32 %and265, 0
  br i1 %tobool266, label %if.then269, label %if.else283

if.then269:                                       ; preds = %land.lhs.true260
  %sub.ptr.lhs.cast270 = ptrtoint i8* %add.ptr245 to i64
  %sub.ptr.rhs.cast271 = ptrtoint i8* %s.0 to i64
  %sub.ptr.sub272 = sub i64 %sub.ptr.lhs.cast270, %sub.ptr.rhs.cast271
  %call273 = call %struct.sv* @Perl_newSVpvn(i8* %s.0, i64 %sub.ptr.sub272) #7
  %call274 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call273) #7
  %sv_flags280 = getelementptr inbounds %struct.sv* %call274, i64 0, i32 2
  %99 = load i32* %sv_flags280, align 4, !tbaa !3
  %and281 = and i32 %99, -536870913
  store i32 %and281, i32* %sv_flags280, align 4, !tbaa !3
  %call282 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call274, i32 2) #7
  call void @Perl_sv_catsv_flags(%struct.sv* %8, %struct.sv* %call274, i32 2) #7
  br label %if.end288

if.else283:                                       ; preds = %land.lhs.true260, %land.lhs.true255, %if.then251
  %sub.ptr.lhs.cast284 = ptrtoint i8* %add.ptr245 to i64
  %sub.ptr.rhs.cast285 = ptrtoint i8* %s.0 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  call void @Perl_sv_catpvn_flags(%struct.sv* %8, i8* %s.0, i64 %sub.ptr.sub286, i32 2) #7
  br label %if.end288

if.end288:                                        ; preds = %if.then269, %if.else283, %if.end243
  %endp = getelementptr inbounds %struct.op* %15, i64 0, i32 1
  %100 = load %struct.op** %endp, align 8
  %101 = bitcast %struct.op* %100 to i32*
  %102 = load i32* %101, align 4, !tbaa !3
  %idx.ext290 = sext i32 %102 to i64
  %add.ptr291 = getelementptr inbounds i8* %orig.0, i64 %idx.ext290
  store i8* %add.ptr291, i8** %9, align 8, !tbaa !0
  %103 = load %struct.sv** %22, align 8, !tbaa !0
  %sv_flags298 = getelementptr inbounds %struct.sv* %103, i64 0, i32 2
  %104 = load i32* %sv_flags298, align 4, !tbaa !3
  %and299 = and i32 %104, 255
  %105 = icmp ugt i32 %and299, 6
  br i1 %105, label %if.end310, label %lor.rhs

lor.rhs:                                          ; preds = %if.end288
  %call307 = call signext i8 @Perl_sv_upgrade(%struct.sv* %103, i32 7) #7
  br label %if.end310

if.end310:                                        ; preds = %if.end288, %lor.rhs
  %call311 = call %struct.magic* @Perl_mg_find(%struct.sv* %103, i32 103) #7
  %tobool312 = icmp eq %struct.magic* %call311, null
  br i1 %tobool312, label %if.then313, label %if.end315

if.then313:                                       ; preds = %if.end310
  call void @Perl_sv_magic(%struct.sv* %103, %struct.sv* null, i32 103, i8* null, i32 0) #7
  %call314 = call %struct.magic* @Perl_mg_find(%struct.sv* %103, i32 103) #7
  br label %if.end315

if.end315:                                        ; preds = %if.end310, %if.then313
  %mg.0 = phi %struct.magic* [ %call311, %if.end310 ], [ %call314, %if.then313 ]
  store i32 %93, i32* %i, align 4, !tbaa !3
  %106 = load i32* %sv_flags298, align 4, !tbaa !3
  %and321 = and i32 %106, 536870912
  %tobool322 = icmp eq i32 %and321, 0
  br i1 %tobool322, label %if.end329, label %land.lhs.true323

land.lhs.true323:                                 ; preds = %if.end315
  %107 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private324 = getelementptr inbounds %struct.cop* %107, i64 0, i32 7
  %108 = load i8* %op_private324, align 1, !tbaa !1
  %and326 = and i8 %108, 8
  %tobool327 = icmp eq i8 %and326, 0
  br i1 %tobool327, label %if.then328, label %if.end329

if.then328:                                       ; preds = %land.lhs.true323
  call void @Perl_sv_pos_b2u(%struct.sv* %103, i32* %i) #7
  br label %if.end329

if.end329:                                        ; preds = %land.lhs.true323, %if.end315, %if.then328
  %109 = load i32* %i, align 4, !tbaa !3
  %mg_len = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 7
  store i32 %109, i32* %mg_len, align 4, !tbaa !3
  %cmp.not = xor i1 %cmp, true
  %tobool333 = icmp eq %struct.op* %15, null
  %or.cond497 = or i1 %tobool333, %cmp.not
  br i1 %or.cond497, label %if.end339, label %land.rhs334

land.rhs334:                                      ; preds = %if.end329
  %refcnt = getelementptr inbounds %struct.regexp* %16, i64 0, i32 9
  %110 = load i32* %refcnt, align 4, !tbaa !3
  %inc335 = add nsw i32 %110, 1
  store i32 %inc335, i32* %refcnt, align 4, !tbaa !3
  br label %if.end339

if.end339:                                        ; preds = %if.end329, %land.rhs334
  call void @Perl_rxres_save(i8** %21, %struct.regexp* %16) #8
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %op_pmreplstart = getelementptr inbounds %struct.op* %3, i64 1, i32 3
  %111 = bitcast i64* %op_pmreplstart to %struct.op**
  %112 = load %struct.op** %111, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end339, %if.end206, %if.then32
  %retval.0 = phi %struct.op* [ %call, %if.then32 ], [ %87, %if.end206 ], [ %112, %if.end339 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_rxres_restore(i8** nocapture %rsp, %struct.regexp* nocapture %rx) #0 {
entry:
  %0 = load i8** %rsp, align 8, !tbaa !0
  %1 = bitcast i8* %0 to i64*
  %reganch = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 15
  %2 = load i32* %reganch, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %tobool = icmp eq i32 %and, 0
  %subbeg7.pre = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 6
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8** %subbeg7.pre, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %3) #7
  %.pre = load i32* %reganch, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %5 = load i64* %1, align 8, !tbaa !4
  %tobool1 = icmp eq i64 %5, 0
  %and4 = and i32 %4, -262145
  %or = or i32 %4, 262144
  %storemerge = select i1 %tobool1, i32 %and4, i32 %or
  store i32 %storemerge, i32* %reganch, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %0, i64 8
  %6 = bitcast i8* %incdec.ptr to i64*
  store i64 0, i64* %1, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8* %0, i64 16
  %7 = bitcast i8* %incdec.ptr5 to i64*
  %8 = load i64* %6, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  %nparens = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 12
  store i32 %conv, i32* %nparens, align 4, !tbaa !3
  %incdec.ptr6 = getelementptr inbounds i8* %0, i64 24
  %9 = bitcast i8* %incdec.ptr6 to i64*
  %10 = load i64* %7, align 8, !tbaa !4
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %subbeg7.pre, align 8, !tbaa !0
  %incdec.ptr8 = getelementptr inbounds i8* %0, i64 32
  %12 = bitcast i8* %incdec.ptr8 to i64*
  %13 = load i64* %9, align 8, !tbaa !4
  %conv9 = trunc i64 %13 to i32
  %sublen = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 8
  store i32 %conv9, i32* %sublen, align 4, !tbaa !3
  %startp = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 0
  %14 = load i32** %startp, align 8, !tbaa !0
  %endp = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 1
  %15 = load i32** %endp, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.036 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  %p.035 = phi i64* [ %12, %if.end ], [ %incdec.ptr14, %for.body ]
  %incdec.ptr12 = getelementptr inbounds i64* %p.035, i64 1
  %16 = load i64* %p.035, align 8, !tbaa !4
  %conv13 = trunc i64 %16 to i32
  %idxprom = zext i32 %i.036 to i64
  %arrayidx = getelementptr inbounds i32* %14, i64 %idxprom
  store i32 %conv13, i32* %arrayidx, align 4, !tbaa !3
  %incdec.ptr14 = getelementptr inbounds i64* %p.035, i64 2
  %17 = load i64* %incdec.ptr12, align 8, !tbaa !4
  %conv15 = trunc i64 %17 to i32
  %arrayidx17 = getelementptr inbounds i32* %15, i64 %idxprom
  store i32 %conv15, i32* %arrayidx17, align 4, !tbaa !3
  %inc = add i32 %i.036, 1
  %18 = load i32* %nparens, align 4, !tbaa !3
  %cmp = icmp ugt i32 %inc, %18
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: optsize
declare %struct.op* @Perl_die(i8*, ...) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_leave_scope(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_rxres_free(i8** nocapture %rsp) #0 {
entry:
  %0 = load i8** %rsp, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %0 to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %3 = inttoptr i64 %2 to i8*
  tail call void @Perl_safesysfree(i8* %3) #7
  tail call void @Perl_safesysfree(i8* %0) #7
  store i8* null, i8** %rsp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_pos_b2u(%struct.sv*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_rxres_save(i8** nocapture %rsp, %struct.regexp* nocapture %rx) #0 {
entry:
  %0 = load i8** %rsp, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %0, i64 8
  %1 = bitcast i8* %arrayidx to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %nparens = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 12
  %3 = load i32* %nparens, align 4, !tbaa !3
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %2, %conv
  br i1 %cmp, label %if.else, label %if.end10

if.then4:                                         ; preds = %entry
  %nparens2 = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 12
  %4 = load i32* %nparens2, align 4, !tbaa !3
  %mul = shl i32 %4, 1
  %add = add i32 %mul, 6
  %conv7 = zext i32 %add to i64
  %mul8 = shl nuw nsw i64 %conv7, 3
  %call = tail call i8* @Perl_safesysmalloc(i64 %mul8) #7
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %mul58 = shl i32 %3, 1
  %add59 = add i32 %mul58, 6
  %conv760 = zext i32 %add59 to i64
  %mul861 = shl nuw nsw i64 %conv760, 3
  %call9 = tail call i8* @Perl_safesysrealloc(i8* %0, i64 %mul861) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %p.0.in = phi i8* [ %call9, %if.else ], [ %call, %if.then4 ]
  store i8* %p.0.in, i8** %rsp, align 8, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.end, %lor.lhs.false
  %p.1.in = phi i8* [ %p.0.in, %if.end ], [ %0, %lor.lhs.false ]
  %p.1 = bitcast i8* %p.1.in to i64*
  %reganch = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 15
  %5 = load i32* %reganch, align 4, !tbaa !3
  %and = and i32 %5, 262144
  %tobool11 = icmp eq i32 %and, 0
  %subbeg17.phi.trans.insert = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 6
  %.pre = load i8** %subbeg17.phi.trans.insert, align 8, !tbaa !0
  br i1 %tobool11, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end10
  %phitmp = ptrtoint i8* %.pre to i64
  br label %cond.end

cond.end:                                         ; preds = %if.end10, %cond.true
  %cond = phi i64 [ %phitmp, %cond.true ], [ 0, %if.end10 ]
  %incdec.ptr = getelementptr inbounds i8* %p.1.in, i64 8
  %6 = bitcast i8* %incdec.ptr to i64*
  store i64 %cond, i64* %p.1, align 8, !tbaa !4
  %and13 = and i32 %5, -262145
  store i32 %and13, i32* %reganch, align 4, !tbaa !3
  %nparens14 = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 12
  %7 = load i32* %nparens14, align 4, !tbaa !3
  %conv15 = zext i32 %7 to i64
  %incdec.ptr16 = getelementptr inbounds i8* %p.1.in, i64 16
  %8 = bitcast i8* %incdec.ptr16 to i64*
  store i64 %conv15, i64* %6, align 8, !tbaa !4
  %9 = ptrtoint i8* %.pre to i64
  %incdec.ptr18 = getelementptr inbounds i8* %p.1.in, i64 24
  %10 = bitcast i8* %incdec.ptr18 to i64*
  store i64 %9, i64* %8, align 8, !tbaa !4
  %sublen = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 8
  %11 = load i32* %sublen, align 4, !tbaa !3
  %conv19 = sext i32 %11 to i64
  %incdec.ptr20 = getelementptr inbounds i8* %p.1.in, i64 32
  %12 = bitcast i8* %incdec.ptr20 to i64*
  store i64 %conv19, i64* %10, align 8, !tbaa !4
  %startp = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 0
  %13 = load i32** %startp, align 8, !tbaa !0
  %endp = getelementptr inbounds %struct.regexp* %rx, i64 0, i32 1
  %14 = load i32** %endp, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body
  %i.064 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ]
  %p.263 = phi i64* [ %12, %cond.end ], [ %incdec.ptr30, %for.body ]
  %idxprom = zext i32 %i.064 to i64
  %arrayidx24 = getelementptr inbounds i32* %13, i64 %idxprom
  %15 = load i32* %arrayidx24, align 4, !tbaa !3
  %conv25 = sext i32 %15 to i64
  %incdec.ptr26 = getelementptr inbounds i64* %p.263, i64 1
  store i64 %conv25, i64* %p.263, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32* %14, i64 %idxprom
  %16 = load i32* %arrayidx28, align 4, !tbaa !3
  %conv29 = sext i32 %16 to i64
  %incdec.ptr30 = getelementptr inbounds i64* %p.263, i64 2
  store i64 %conv29, i64* %incdec.ptr26, align 8, !tbaa !4
  %inc = add i32 %i.064, 1
  %cmp22 = icmp ugt i32 %inc, %7
  br i1 %cmp22, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_formline() #0 {
entry:
  %itemsize = alloca i32, align 4
  %len = alloca i64, align 8
  %itembytes = alloca i32, align 4
  %itembytes322 = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %4 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  store i32 0, i32* %itemsize, align 4, !tbaa !3
  %5 = load i8** @PL_chopset, align 8, !tbaa !0
  %call = call i8* @strchr(i8* %5, i32 32) #7
  %cmp = icmp ne i8* %call, null
  %conv3 = zext i1 %cmp to i8
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 262144
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %10, i64 0, i32 7
  %11 = load i8* %op_private, align 1, !tbaa !1
  %and5 = and i8 %11, 8
  %tobool6 = icmp ne i8 %and5, 0
  %conv7 = select i1 %tobool6, i64 1, i64 3
  %mul = mul i64 %conv7, %9
  %phitmp = add i64 %mul, 2
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %12 = phi i32 [ %.pre, %cond.true ], [ %6, %entry ]
  %cond8 = phi i64 [ %phitmp, %cond.true ], [ 1, %entry ]
  %and10 = and i32 %12, 57344
  %tobool11 = icmp ne i32 %and10, 0
  %tobool14 = icmp slt i32 %12, 0
  %or.cond = and i1 %tobool11, %tobool14
  br i1 %or.cond, label %if.end27, label %if.then

if.then:                                          ; preds = %cond.end
  %and16 = and i32 %12, 8388608
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then
  %and20 = and i32 %12, -8388609
  store i32 %and20, i32* %sv_flags, align 4, !tbaa !3
  %call21 = call fastcc %struct.op* @S_doparseform(%struct.sv* %4) #8
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %13, 8388608
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %if.then
  %call23 = call fastcc %struct.op* @S_doparseform(%struct.sv* %4) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then18
  %parseres.0 = phi %struct.op* [ %call21, %if.then18 ], [ %call23, %if.else ]
  %tobool24 = icmp eq %struct.op* %parseres.0, null
  br i1 %tobool24, label %if.end27, label %return

if.end27:                                         ; preds = %cond.end, %if.end
  %14 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_flags28 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags28, align 4, !tbaa !3
  %and29 = and i32 %15, 10223616
  %cmp30 = icmp eq i32 %and29, 262144
  br i1 %cmp30, label %cond.true32, label %cond.false36

cond.true32:                                      ; preds = %if.end27
  %sv_any33 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %16 = load i8** %sv_any33, align 8, !tbaa !0
  %xpv_cur34 = getelementptr inbounds i8* %16, i64 8
  %17 = bitcast i8* %xpv_cur34 to i64*
  %18 = load i64* %17, align 8, !tbaa !4
  store i64 %18, i64* %len, align 8, !tbaa !4
  br label %cond.end38

cond.false36:                                     ; preds = %if.end27
  %call37 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %14, i64* %len, i32 2) #7
  %.pre1560 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_flags40.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1560, i64 0, i32 2
  %.pre1561 = load i32* %sv_flags40.phi.trans.insert, align 4, !tbaa !3
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false36, %cond.true32
  %19 = phi i32 [ %.pre1561, %cond.false36 ], [ %15, %cond.true32 ]
  %20 = phi %struct.sv* [ %.pre1560, %cond.false36 ], [ %14, %cond.true32 ]
  %and41 = and i32 %19, 536870912
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.end48, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end38
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private43 = getelementptr inbounds %struct.cop* %21, i64 0, i32 7
  %22 = load i8* %op_private43, align 1, !tbaa !1
  %and45 = lshr i8 %22, 3
  %and45.lobit = and i8 %and45, 1
  %23 = xor i8 %and45.lobit, 1
  %.pre1562 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %cond.end38, %land.lhs.true
  %24 = phi %struct.sv* [ %.pre1562, %land.lhs.true ], [ %20, %cond.end38 ]
  %targ_is_utf8.0 = phi i8 [ %23, %land.lhs.true ], [ 0, %cond.end38 ]
  %sv_any49 = getelementptr inbounds %struct.sv* %24, i64 0, i32 0
  %25 = load i8** %sv_any49, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %25, i64 16
  %26 = bitcast i8* %xpv_len to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %28 = load i64* %len, align 8, !tbaa !4
  %add51 = add i64 %cond8, %28
  %cmp52 = icmp ult i64 %27, %add51
  br i1 %cmp52, label %cond.true54, label %cond.false58

cond.true54:                                      ; preds = %if.end48
  %call57 = call i8* @Perl_sv_grow(%struct.sv* %24, i64 %add51) #7
  %.pre1563 = load i64* %len, align 8, !tbaa !4
  br label %cond.end61

cond.false58:                                     ; preds = %if.end48
  %xpv_pv60 = bitcast i8* %25 to i8**
  %29 = load i8** %xpv_pv60, align 8, !tbaa !0
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false58, %cond.true54
  %30 = phi i64 [ %.pre1563, %cond.true54 ], [ %28, %cond.false58 ]
  %cond62 = phi i8* [ %call57, %cond.true54 ], [ %29, %cond.false58 ]
  %add.ptr63 = getelementptr inbounds i8* %cond62, i64 %30
  %31 = load i32* %sv_flags, align 4, !tbaa !3
  %and65 = and i32 %31, 262144
  %cmp66 = icmp eq i32 %and65, 0
  br i1 %cmp66, label %cond.false73, label %cond.true68

cond.true68:                                      ; preds = %cond.end61
  %sv_any69 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %32 = load i8** %sv_any69, align 8, !tbaa !0
  %xpv_cur70 = getelementptr inbounds i8* %32, i64 8
  %33 = bitcast i8* %xpv_cur70 to i64*
  %34 = load i64* %33, align 8, !tbaa !4
  store i64 %34, i64* %len, align 8, !tbaa !4
  %xpv_pv72 = bitcast i8* %32 to i8**
  %35 = load i8** %xpv_pv72, align 8, !tbaa !0
  br label %cond.end75

cond.false73:                                     ; preds = %cond.end61
  %call74 = call i8* @Perl_sv_2pv_flags(%struct.sv* %4, i64* %len, i32 2) #7
  %.pre1564 = load i64* %len, align 8, !tbaa !4
  %sv_any79.phi.trans.insert = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %.pre1565 = load i8** %sv_any79.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false73, %cond.true68
  %36 = phi i8* [ %32, %cond.true68 ], [ %.pre1565, %cond.false73 ]
  %37 = phi i64 [ %34, %cond.true68 ], [ %.pre1564, %cond.false73 ]
  %cond76 = phi i8* [ %35, %cond.true68 ], [ %call74, %cond.false73 ]
  %add.ptr77.sum = add i64 %37, 4
  %xpv_cur80 = getelementptr inbounds i8* %36, i64 8
  %38 = bitcast i8* %xpv_cur80 to i64*
  %39 = load i64* %38, align 8, !tbaa !4
  %rem = and i64 %39, 3
  %add.ptr78.sum = sub i64 %add.ptr77.sum, %rem
  %add.ptr81 = getelementptr inbounds i8* %cond76, i64 %add.ptr78.sum
  %40 = bitcast i8* %add.ptr81 to i32*
  br label %for.cond

while.cond680.for.cond.loopexit1461_crit_edge:    ; preds = %while.body683
  %scevgep1537.sum = add i64 %161, 1
  %scevgep1538 = getelementptr i8* %t.0, i64 %scevgep1537.sum
  br label %for.cond

while.cond.for.cond.loopexit1508_crit_edge:       ; preds = %while.body
  %scevgep1552.sum = add i64 %72, 1
  %scevgep1553 = getelementptr i8* %t.1.ph, i64 %scevgep1552.sum
  %scevgep1554.sum = add i64 %72, 1
  %scevgep1555 = getelementptr i8* %f.0, i64 %scevgep1554.sum
  br label %for.cond

for.cond:                                         ; preds = %cond.end838, %while.end419, %if.then335, %land.lhs.true197, %sw.bb533, %sw.bb545, %if.end724, %if.end761, %if.then915, %sw.bb, %if.end106, %sw.bb163, %while.end258, %while.end287, %if.end891, %while.end909, %for.cond, %lor.lhs.false193, %if.then201, %if.then173, %if.then439, %while.end527, %if.then728, %if.else957, %if.end1051, %if.end995, %while.body869.lr.ph, %while.cond866.preheader, %while.body888.lr.ph, %while.cond885.preheader, %for.inc, %if.end661, %while.cond680.for.cond.loopexit1461_crit_edge, %while.cond680.preheader, %while.cond596.backedge, %while.cond596.preheader, %while.body554.lr.ph, %if.then548, %while.body541.lr.ph, %if.then535, %if.end340, %if.then325, %if.end444, %if.then429, %while.cond.for.cond.loopexit1508_crit_edge, %while.cond.preheader, %cond.end75
  %fpc.0 = phi i32* [ %40, %cond.end75 ], [ %incdec.ptr82, %for.cond ], [ %incdec.ptr82, %if.end1051 ], [ %incdec.ptr82, %if.end995 ], [ %incdec.ptr913, %if.then915 ], [ %incdec.ptr913, %if.else957 ], [ %incdec.ptr82, %while.end909 ], [ %fpc.1, %if.end891 ], [ %incdec.ptr82, %if.end761 ], [ %incdec.ptr82, %if.then728 ], [ %incdec.ptr82, %if.end724 ], [ %incdec.ptr82, %sw.bb545 ], [ %incdec.ptr82, %sw.bb533 ], [ %incdec.ptr82, %if.then439 ], [ %incdec.ptr82, %while.end527 ], [ %incdec.ptr82, %while.end287 ], [ %incdec.ptr82, %while.end258 ], [ %incdec.ptr168, %if.then173 ], [ %incdec.ptr168, %if.then201 ], [ %incdec.ptr168, %land.lhs.true197 ], [ %incdec.ptr168, %lor.lhs.false193 ], [ %incdec.ptr164, %sw.bb163 ], [ %incdec.ptr84, %if.end106 ], [ %incdec.ptr82, %sw.bb ], [ %incdec.ptr82, %if.then335 ], [ %incdec.ptr82, %while.end419 ], [ %incdec.ptr82, %cond.end838 ], [ %fpc.1, %while.body869.lr.ph ], [ %fpc.1, %while.cond866.preheader ], [ %fpc.1, %while.body888.lr.ph ], [ %fpc.1, %while.cond885.preheader ], [ %incdec.ptr82, %for.inc ], [ %incdec.ptr82, %if.end661 ], [ %incdec.ptr82, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %incdec.ptr82, %while.cond680.preheader ], [ %incdec.ptr82, %while.cond596.backedge ], [ %incdec.ptr82, %while.cond596.preheader ], [ %incdec.ptr82, %while.body554.lr.ph ], [ %incdec.ptr82, %if.then548 ], [ %incdec.ptr82, %while.body541.lr.ph ], [ %incdec.ptr82, %if.then535 ], [ %incdec.ptr82, %if.end340 ], [ %incdec.ptr82, %if.then325 ], [ %incdec.ptr82, %if.end444 ], [ %incdec.ptr82, %if.then429 ], [ %incdec.ptr84, %while.cond.for.cond.loopexit1508_crit_edge ], [ %incdec.ptr84, %while.cond.preheader ]
  %t.0 = phi i8* [ %add.ptr63, %cond.end75 ], [ %t.0, %for.cond ], [ %t.17, %if.end1051 ], [ %t.0, %if.end995 ], [ %t.0, %if.then915 ], [ %linemark.0, %if.else957 ], [ %incdec.ptr911, %while.end909 ], [ %add.ptr895, %if.end891 ], [ %t.0, %if.end761 ], [ %t.0, %if.then728 ], [ %t.0, %if.end724 ], [ %t.0, %sw.bb545 ], [ %t.0, %sw.bb533 ], [ %t.0, %if.then439 ], [ %t.0, %while.end527 ], [ %t.0, %while.end287 ], [ %t.0, %while.end258 ], [ %t.0, %if.then173 ], [ %t.0, %if.then201 ], [ %t.0, %land.lhs.true197 ], [ %t.0, %lor.lhs.false193 ], [ %t.0, %sw.bb163 ], [ %add.ptr114, %if.end106 ], [ %t.0, %sw.bb ], [ %t.0, %if.then335 ], [ %t.0, %while.end419 ], [ %add.ptr844, %cond.end838 ], [ %scevgep1529, %while.body869.lr.ph ], [ %t.0, %while.cond866.preheader ], [ %scevgep1531, %while.body888.lr.ph ], [ %t.0, %while.cond885.preheader ], [ %incdec.ptr678, %for.inc ], [ %t.0, %if.end661 ], [ %scevgep1538, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %t.0, %while.cond680.preheader ], [ %t.4.be, %while.cond596.backedge ], [ %t.4.ph, %while.cond596.preheader ], [ %scevgep1540, %while.body554.lr.ph ], [ %t.0, %if.then548 ], [ %scevgep1543, %while.body541.lr.ph ], [ %t.0, %if.then535 ], [ %t.0, %if.end340 ], [ %t.0, %if.then325 ], [ %t.0, %if.end444 ], [ %t.0, %if.then429 ], [ %scevgep1553, %while.cond.for.cond.loopexit1508_crit_edge ], [ %t.1.ph, %while.cond.preheader ]
  %f.0 = phi i8* [ %cond76, %cond.end75 ], [ %f.0, %for.cond ], [ %f.0, %if.end1051 ], [ %f.0, %if.end995 ], [ %f.0, %if.then915 ], [ %f.0, %if.else957 ], [ %incdec.ptr897, %while.end909 ], [ %f.0, %if.end891 ], [ %f.0, %if.end761 ], [ %f.0, %if.then728 ], [ %f.0, %if.end724 ], [ %f.0, %sw.bb545 ], [ %f.0, %sw.bb533 ], [ %f.0, %if.then439 ], [ %f.0, %while.end527 ], [ %f.0, %while.end287 ], [ %f.0, %while.end258 ], [ %add.ptr170, %if.then173 ], [ %add.ptr170, %if.then201 ], [ %add.ptr170, %land.lhs.true197 ], [ %add.ptr170, %lor.lhs.false193 ], [ %add.ptr166, %sw.bb163 ], [ %f.0, %if.end106 ], [ %f.0, %sw.bb ], [ %f.0, %if.then335 ], [ %f.0, %while.end419 ], [ %f.0, %cond.end838 ], [ %f.0, %while.body869.lr.ph ], [ %f.0, %while.cond866.preheader ], [ %f.0, %while.body888.lr.ph ], [ %f.0, %while.cond885.preheader ], [ %f.0, %for.inc ], [ %f.0, %if.end661 ], [ %f.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %f.0, %while.cond680.preheader ], [ %f.0, %while.cond596.backedge ], [ %f.0, %while.cond596.preheader ], [ %f.0, %while.body554.lr.ph ], [ %f.0, %if.then548 ], [ %f.0, %while.body541.lr.ph ], [ %f.0, %if.then535 ], [ %f.0, %if.end340 ], [ %f.0, %if.then325 ], [ %f.0, %if.end444 ], [ %f.0, %if.then429 ], [ %scevgep1555, %while.cond.for.cond.loopexit1508_crit_edge ], [ %f.0, %while.cond.preheader ]
  %sv.0 = phi %struct.sv* [ null, %cond.end75 ], [ %sv.0, %for.cond ], [ %sv.0, %if.end1051 ], [ %sv.0, %if.end995 ], [ %sv.0, %if.then915 ], [ %sv.0, %if.else957 ], [ %sv.0, %while.end909 ], [ %sv.0, %if.end891 ], [ %sv.0, %if.end761 ], [ %sv.0, %if.then728 ], [ %sv.0, %if.end724 ], [ %sv.0, %sw.bb545 ], [ %sv.0, %sw.bb533 ], [ %sv.0, %if.then439 ], [ %sv.0, %while.end527 ], [ %sv.0, %while.end287 ], [ %sv.0, %while.end258 ], [ %76, %if.then173 ], [ @PL_sv_no, %if.then201 ], [ @PL_sv_no, %land.lhs.true197 ], [ @PL_sv_no, %lor.lhs.false193 ], [ %sv.0, %sw.bb163 ], [ %sv.0, %if.end106 ], [ %sv.0, %sw.bb ], [ %sv.0, %if.then335 ], [ %sv.0, %while.end419 ], [ %sv.0, %cond.end838 ], [ %sv.0, %while.body869.lr.ph ], [ %sv.0, %while.cond866.preheader ], [ %sv.0, %while.body888.lr.ph ], [ %sv.0, %while.cond885.preheader ], [ %sv.0, %for.inc ], [ %sv.0, %if.end661 ], [ %sv.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %sv.0, %while.cond680.preheader ], [ %sv.0, %while.cond596.backedge ], [ %sv.0, %while.cond596.preheader ], [ %sv.0, %while.body554.lr.ph ], [ %sv.0, %if.then548 ], [ %sv.0, %while.body541.lr.ph ], [ %sv.0, %if.then535 ], [ %sv.0, %if.end340 ], [ %sv.0, %if.then325 ], [ %sv.0, %if.end444 ], [ %sv.0, %if.then429 ], [ %sv.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %sv.0, %while.cond.preheader ]
  %item.0 = phi i8* [ null, %cond.end75 ], [ %item.0, %for.cond ], [ %item.0, %if.end1051 ], [ %item.0, %if.end995 ], [ %item.0, %if.then915 ], [ %item.0, %if.else957 ], [ %item.0, %while.end909 ], [ %item.0, %if.end891 ], [ %cond745, %if.end761 ], [ %item.0, %if.then728 ], [ %item.0, %if.end724 ], [ %item.0, %sw.bb545 ], [ %item.0, %sw.bb533 ], [ %cond305, %if.then439 ], [ %cond305, %while.end527 ], [ %cond217, %while.end287 ], [ %cond217, %while.end258 ], [ %item.0, %if.then173 ], [ %item.0, %if.then201 ], [ %item.0, %land.lhs.true197 ], [ %item.0, %lor.lhs.false193 ], [ %item.0, %sw.bb163 ], [ %item.0, %if.end106 ], [ %item.0, %sw.bb ], [ %cond305, %if.then335 ], [ %cond305, %while.end419 ], [ %cond745, %cond.end838 ], [ %item.0, %while.body869.lr.ph ], [ %item.0, %while.cond866.preheader ], [ %item.0, %while.body888.lr.ph ], [ %item.0, %while.cond885.preheader ], [ %item.0, %for.inc ], [ %item.0, %if.end661 ], [ %item.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %item.0, %while.cond680.preheader ], [ %item.0, %while.cond596.backedge ], [ %item.0, %while.cond596.preheader ], [ %item.0, %while.body554.lr.ph ], [ %item.0, %if.then548 ], [ %item.0, %while.body541.lr.ph ], [ %item.0, %if.then535 ], [ %cond305, %if.end340 ], [ %cond305, %if.then325 ], [ %cond305, %if.end444 ], [ %cond305, %if.then429 ], [ %item.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %item.0, %while.cond.preheader ]
  %fieldsize.0 = phi i32 [ 0, %cond.end75 ], [ %fieldsize.0, %for.cond ], [ %fieldsize.1, %if.end1051 ], [ %fieldsize.0, %if.end995 ], [ %fieldsize.0, %if.then915 ], [ %fieldsize.0, %if.else957 ], [ %fieldsize.0, %while.end909 ], [ %fieldsize.0, %if.end891 ], [ %fieldsize.0, %if.end761 ], [ %fieldsize.0, %if.then728 ], [ %fieldsize.0, %if.end724 ], [ %fieldsize.0, %sw.bb545 ], [ %fieldsize.0, %sw.bb533 ], [ %fieldsize.0, %if.then439 ], [ %fieldsize.0, %while.end527 ], [ %fieldsize.0, %while.end287 ], [ %fieldsize.0, %while.end258 ], [ %75, %if.then173 ], [ %75, %if.then201 ], [ %75, %land.lhs.true197 ], [ %75, %lor.lhs.false193 ], [ %fieldsize.0, %sw.bb163 ], [ %fieldsize.0, %if.end106 ], [ %fieldsize.0, %sw.bb ], [ %fieldsize.0, %if.then335 ], [ %fieldsize.0, %while.end419 ], [ %fieldsize.0, %cond.end838 ], [ %fieldsize.0, %while.body869.lr.ph ], [ 0, %while.cond866.preheader ], [ %fieldsize.0, %while.body888.lr.ph ], [ 0, %while.cond885.preheader ], [ %fieldsize.0, %for.inc ], [ %fieldsize.0, %if.end661 ], [ %fieldsize.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %fieldsize.0, %while.cond680.preheader ], [ %fieldsize.0, %while.cond596.backedge ], [ %fieldsize.0, %while.cond596.preheader ], [ %sub549, %while.body554.lr.ph ], [ %sub549, %if.then548 ], [ %126, %while.body541.lr.ph ], [ %126, %if.then535 ], [ %fieldsize.0, %if.end340 ], [ %fieldsize.0, %if.then325 ], [ %fieldsize.0, %if.end444 ], [ %fieldsize.0, %if.then429 ], [ %fieldsize.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %fieldsize.0, %while.cond.preheader ]
  %lines.0 = phi i32 [ 0, %cond.end75 ], [ %lines.0, %for.cond ], [ %lines.0, %if.end1051 ], [ %lines.0, %if.end995 ], [ %lines.0, %if.then915 ], [ %dec958, %if.else957 ], [ %lines.0, %while.end909 ], [ %lines.0, %if.end891 ], [ %lines.0, %if.end761 ], [ %lines.0, %if.then728 ], [ %lines.0, %if.end724 ], [ %lines.0, %sw.bb545 ], [ %lines.0, %sw.bb533 ], [ %lines.0, %if.then439 ], [ %lines.0, %while.end527 ], [ %lines.0, %while.end287 ], [ %lines.0, %while.end258 ], [ %lines.0, %if.then173 ], [ %lines.0, %if.then201 ], [ %lines.0, %land.lhs.true197 ], [ %lines.0, %lor.lhs.false193 ], [ %lines.0, %sw.bb163 ], [ %lines.0, %if.end106 ], [ %inc, %sw.bb ], [ %lines.0, %if.then335 ], [ %lines.0, %while.end419 ], [ %lines.1.ph, %cond.end838 ], [ %lines.0, %while.body869.lr.ph ], [ %lines.0, %while.cond866.preheader ], [ %lines.0, %while.body888.lr.ph ], [ %lines.0, %while.cond885.preheader ], [ %lines.0, %for.inc ], [ %lines.0, %if.end661 ], [ %lines.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %lines.0, %while.cond680.preheader ], [ %lines.0, %while.cond596.backedge ], [ %lines.0, %while.cond596.preheader ], [ %lines.0, %while.body554.lr.ph ], [ %lines.0, %if.then548 ], [ %lines.0, %while.body541.lr.ph ], [ %lines.0, %if.then535 ], [ %lines.0, %if.end340 ], [ %lines.0, %if.then325 ], [ %lines.0, %if.end444 ], [ %lines.0, %if.then429 ], [ %lines.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %lines.0, %while.cond.preheader ]
  %chopspace.0 = phi i8 [ %conv3, %cond.end75 ], [ %chopspace.0, %for.cond ], [ %chopspace.0, %if.end1051 ], [ %chopspace.0, %if.end995 ], [ %chopspace.0, %if.then915 ], [ %chopspace.0, %if.else957 ], [ %chopspace.0, %while.end909 ], [ %chopspace.0, %if.end891 ], [ %chopspace.1, %if.end761 ], [ %chopspace.0, %if.then728 ], [ %chopspace.0, %if.end724 ], [ %chopspace.0, %sw.bb545 ], [ %chopspace.0, %sw.bb533 ], [ %chopspace.0, %if.then439 ], [ %chopspace.0, %while.end527 ], [ %chopspace.0, %while.end287 ], [ %chopspace.0, %while.end258 ], [ %chopspace.0, %if.then173 ], [ %chopspace.0, %if.then201 ], [ %chopspace.0, %land.lhs.true197 ], [ %chopspace.0, %lor.lhs.false193 ], [ %chopspace.0, %sw.bb163 ], [ %chopspace.0, %if.end106 ], [ %chopspace.0, %sw.bb ], [ %chopspace.0, %if.then335 ], [ %chopspace.0, %while.end419 ], [ %chopspace.1, %cond.end838 ], [ %chopspace.0, %while.body869.lr.ph ], [ %chopspace.0, %while.cond866.preheader ], [ %chopspace.0, %while.body888.lr.ph ], [ %chopspace.0, %while.cond885.preheader ], [ %chopspace.0, %for.inc ], [ %chopspace.0, %if.end661 ], [ %chopspace.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %chopspace.0, %while.cond680.preheader ], [ %chopspace.0, %while.cond596.backedge ], [ %chopspace.0, %while.cond596.preheader ], [ %chopspace.0, %while.body554.lr.ph ], [ %chopspace.0, %if.then548 ], [ %chopspace.0, %while.body541.lr.ph ], [ %chopspace.0, %if.then535 ], [ %chopspace.0, %if.end340 ], [ %chopspace.0, %if.then325 ], [ %chopspace.0, %if.end444 ], [ %chopspace.0, %if.then429 ], [ %chopspace.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %chopspace.0, %while.cond.preheader ]
  %chophere.0 = phi i8* [ null, %cond.end75 ], [ %chophere.0, %for.cond ], [ %chophere.0, %if.end1051 ], [ %chophere.0, %if.end995 ], [ %chophere.0, %if.then915 ], [ %chophere.0, %if.else957 ], [ %chophere.0, %while.end909 ], [ %chophere.0, %if.end891 ], [ %chophere.0, %if.end761 ], [ %chophere.0, %if.then728 ], [ %chophere.0, %if.end724 ], [ %chophere.0, %sw.bb545 ], [ %chophere.0, %sw.bb533 ], [ %s.41495, %if.then439 ], [ %chophere.9, %while.end527 ], [ %add.ptr270, %while.end287 ], [ %add.ptr241, %while.end258 ], [ %chophere.0, %if.then173 ], [ %chophere.0, %if.then201 ], [ %chophere.0, %land.lhs.true197 ], [ %chophere.0, %lor.lhs.false193 ], [ %chophere.0, %sw.bb163 ], [ %chophere.0, %if.end106 ], [ %chophere.0, %sw.bb ], [ %s.21488, %if.then335 ], [ %chophere.4, %while.end419 ], [ %chophere.10, %cond.end838 ], [ %chophere.0, %while.body869.lr.ph ], [ %chophere.0, %while.cond866.preheader ], [ %chophere.0, %while.body888.lr.ph ], [ %chophere.0, %while.cond885.preheader ], [ %chophere.0, %for.inc ], [ %chophere.0, %if.end661 ], [ %chophere.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %chophere.0, %while.cond680.preheader ], [ %chophere.0, %while.cond596.backedge ], [ %chophere.0, %while.cond596.preheader ], [ %chophere.0, %while.body554.lr.ph ], [ %chophere.0, %if.then548 ], [ %chophere.0, %while.body541.lr.ph ], [ %chophere.0, %if.then535 ], [ %add.ptr327, %if.end340 ], [ %add.ptr327, %if.then325 ], [ %add.ptr431, %if.end444 ], [ %add.ptr431, %if.then429 ], [ %chophere.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %chophere.0, %while.cond.preheader ]
  %linemark.0 = phi i8* [ null, %cond.end75 ], [ %linemark.0, %for.cond ], [ %linemark.0, %if.end1051 ], [ %linemark.0, %if.end995 ], [ %linemark.0, %if.then915 ], [ %linemark.0, %if.else957 ], [ %linemark.0, %while.end909 ], [ %linemark.0, %if.end891 ], [ %linemark.0, %if.end761 ], [ %linemark.0, %if.then728 ], [ %linemark.0, %if.end724 ], [ %linemark.0, %sw.bb545 ], [ %linemark.0, %sw.bb533 ], [ %linemark.0, %if.then439 ], [ %linemark.0, %while.end527 ], [ %linemark.0, %while.end287 ], [ %linemark.0, %while.end258 ], [ %linemark.0, %if.then173 ], [ %linemark.0, %if.then201 ], [ %linemark.0, %land.lhs.true197 ], [ %linemark.0, %lor.lhs.false193 ], [ %linemark.0, %sw.bb163 ], [ %linemark.0, %if.end106 ], [ %t.0, %sw.bb ], [ %linemark.0, %if.then335 ], [ %linemark.0, %while.end419 ], [ %linemark.0, %cond.end838 ], [ %linemark.0, %while.body869.lr.ph ], [ %linemark.0, %while.cond866.preheader ], [ %linemark.0, %while.body888.lr.ph ], [ %linemark.0, %while.cond885.preheader ], [ %linemark.0, %for.inc ], [ %linemark.0, %if.end661 ], [ %linemark.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %linemark.0, %while.cond680.preheader ], [ %linemark.0, %while.cond596.backedge ], [ %linemark.0, %while.cond596.preheader ], [ %linemark.0, %while.body554.lr.ph ], [ %linemark.0, %if.then548 ], [ %linemark.0, %while.body541.lr.ph ], [ %linemark.0, %if.then535 ], [ %linemark.0, %if.end340 ], [ %linemark.0, %if.then325 ], [ %linemark.0, %if.end444 ], [ %linemark.0, %if.then429 ], [ %linemark.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %linemark.0, %while.cond.preheader ]
  %mark.0 = phi %struct.sv** [ %incdec.ptr1, %cond.end75 ], [ %mark.0, %for.cond ], [ %mark.0, %if.end1051 ], [ %mark.0, %if.end995 ], [ %mark.0, %if.then915 ], [ %mark.0, %if.else957 ], [ %mark.0, %while.end909 ], [ %mark.0, %if.end891 ], [ %mark.0, %if.end761 ], [ %mark.0, %if.then728 ], [ %mark.0, %if.end724 ], [ %mark.0, %sw.bb545 ], [ %mark.0, %sw.bb533 ], [ %mark.0, %if.then439 ], [ %mark.0, %while.end527 ], [ %mark.0, %while.end287 ], [ %mark.0, %while.end258 ], [ %incdec.ptr174, %if.then173 ], [ %mark.0, %if.then201 ], [ %mark.0, %land.lhs.true197 ], [ %mark.0, %lor.lhs.false193 ], [ %mark.0, %sw.bb163 ], [ %mark.0, %if.end106 ], [ %mark.0, %sw.bb ], [ %mark.0, %if.then335 ], [ %mark.0, %while.end419 ], [ %mark.0, %cond.end838 ], [ %mark.0, %while.body869.lr.ph ], [ %mark.0, %while.cond866.preheader ], [ %mark.0, %while.body888.lr.ph ], [ %mark.0, %while.cond885.preheader ], [ %mark.0, %for.inc ], [ %mark.0, %if.end661 ], [ %mark.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %mark.0, %while.cond680.preheader ], [ %mark.0, %while.cond596.backedge ], [ %mark.0, %while.cond596.preheader ], [ %mark.0, %while.body554.lr.ph ], [ %mark.0, %if.then548 ], [ %mark.0, %while.body541.lr.ph ], [ %mark.0, %if.then535 ], [ %mark.0, %if.end340 ], [ %mark.0, %if.then325 ], [ %mark.0, %if.end444 ], [ %mark.0, %if.then429 ], [ %mark.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %mark.0, %while.cond.preheader ]
  %gotsome.0 = phi i8 [ 0, %cond.end75 ], [ %gotsome.0, %for.cond ], [ %gotsome.0, %if.end1051 ], [ %gotsome.0, %if.end995 ], [ %gotsome.0, %if.then915 ], [ 0, %if.else957 ], [ %gotsome.0, %while.end909 ], [ 1, %if.end891 ], [ %gotsome.0, %if.end761 ], [ %gotsome.0, %if.then728 ], [ %gotsome.0, %if.end724 ], [ %gotsome.0, %sw.bb545 ], [ %gotsome.0, %sw.bb533 ], [ %gotsome.101496, %if.then439 ], [ %gotsome.11, %while.end527 ], [ %gotsome.3.lcssa, %while.end287 ], [ %gotsome.1.lcssa, %while.end258 ], [ %gotsome.0, %if.then173 ], [ %gotsome.0, %if.then201 ], [ %gotsome.0, %land.lhs.true197 ], [ %gotsome.0, %lor.lhs.false193 ], [ %gotsome.0, %sw.bb163 ], [ %gotsome.0, %if.end106 ], [ 0, %sw.bb ], [ %gotsome.51489, %if.then335 ], [ %gotsome.6, %while.end419 ], [ 1, %cond.end838 ], [ %gotsome.0, %while.body869.lr.ph ], [ %gotsome.0, %while.cond866.preheader ], [ 1, %while.body888.lr.ph ], [ 1, %while.cond885.preheader ], [ %gotsome.0, %for.inc ], [ %gotsome.0, %if.end661 ], [ %gotsome.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %gotsome.0, %while.cond680.preheader ], [ %gotsome.0, %while.cond596.backedge ], [ %gotsome.0, %while.cond596.preheader ], [ %gotsome.0, %while.body554.lr.ph ], [ %gotsome.0, %if.then548 ], [ %gotsome.0, %while.body541.lr.ph ], [ %gotsome.0, %if.then535 ], [ %.gotsome.5, %if.end340 ], [ %gotsome.0, %if.then325 ], [ %.gotsome.10, %if.end444 ], [ %gotsome.0, %if.then429 ], [ %gotsome.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %gotsome.0, %while.cond.preheader ]
  %item_is_utf8.0 = phi i8 [ 0, %cond.end75 ], [ %item_is_utf8.0, %for.cond ], [ %item_is_utf8.0, %if.end1051 ], [ %item_is_utf8.0, %if.end995 ], [ %item_is_utf8.0, %if.then915 ], [ %item_is_utf8.0, %if.else957 ], [ %item_is_utf8.0, %while.end909 ], [ %item_is_utf8.0, %if.end891 ], [ %conv7561427, %if.end761 ], [ %item_is_utf8.0, %if.then728 ], [ %item_is_utf8.0, %if.end724 ], [ %item_is_utf8.0, %sw.bb545 ], [ %item_is_utf8.0, %sw.bb533 ], [ 0, %if.then439 ], [ 0, %while.end527 ], [ 0, %while.end287 ], [ 1, %while.end258 ], [ %item_is_utf8.0, %if.then173 ], [ %item_is_utf8.0, %if.then201 ], [ %item_is_utf8.0, %land.lhs.true197 ], [ %item_is_utf8.0, %lor.lhs.false193 ], [ %item_is_utf8.0, %sw.bb163 ], [ %item_is_utf8.0, %if.end106 ], [ %item_is_utf8.0, %sw.bb ], [ 1, %if.then335 ], [ 1, %while.end419 ], [ %conv7561427, %cond.end838 ], [ %item_is_utf8.0, %while.body869.lr.ph ], [ %item_is_utf8.0, %while.cond866.preheader ], [ %item_is_utf8.0, %while.body888.lr.ph ], [ %item_is_utf8.0, %while.cond885.preheader ], [ 0, %for.inc ], [ 0, %if.end661 ], [ 0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ 0, %while.cond680.preheader ], [ %item_is_utf8.0, %while.cond596.backedge ], [ %item_is_utf8.0, %while.cond596.preheader ], [ %item_is_utf8.0, %while.body554.lr.ph ], [ %item_is_utf8.0, %if.then548 ], [ %item_is_utf8.0, %while.body541.lr.ph ], [ %item_is_utf8.0, %if.then535 ], [ 1, %if.end340 ], [ 1, %if.then325 ], [ 0, %if.end444 ], [ 0, %if.then429 ], [ %item_is_utf8.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %item_is_utf8.0, %while.cond.preheader ]
  %targ_is_utf8.1 = phi i8 [ %targ_is_utf8.0, %cond.end75 ], [ %targ_is_utf8.1, %for.cond ], [ %targ_is_utf8.1, %if.end1051 ], [ %targ_is_utf8.1, %if.end995 ], [ %targ_is_utf8.1, %if.then915 ], [ %targ_is_utf8.1, %if.else957 ], [ %targ_is_utf8.1, %while.end909 ], [ %targ_is_utf8.1, %if.end891 ], [ %targ_is_utf8.1, %if.end761 ], [ %targ_is_utf8.1, %if.then728 ], [ %targ_is_utf8.1, %if.end724 ], [ %targ_is_utf8.1, %sw.bb545 ], [ %targ_is_utf8.1, %sw.bb533 ], [ %targ_is_utf8.1, %if.then439 ], [ %targ_is_utf8.1, %while.end527 ], [ %targ_is_utf8.1, %while.end287 ], [ %targ_is_utf8.1, %while.end258 ], [ %targ_is_utf8.1, %if.then173 ], [ %targ_is_utf8.1, %if.then201 ], [ %targ_is_utf8.1, %land.lhs.true197 ], [ %targ_is_utf8.1, %lor.lhs.false193 ], [ %targ_is_utf8.1, %sw.bb163 ], [ %targ_is_utf8.1, %if.end106 ], [ %targ_is_utf8.1, %sw.bb ], [ %targ_is_utf8.1, %if.then335 ], [ %targ_is_utf8.1, %while.end419 ], [ %.targ_is_utf8.1, %cond.end838 ], [ %targ_is_utf8.1, %while.body869.lr.ph ], [ %targ_is_utf8.1, %while.cond866.preheader ], [ %targ_is_utf8.1, %while.body888.lr.ph ], [ %targ_is_utf8.1, %while.cond885.preheader ], [ %targ_is_utf8.1, %for.inc ], [ %targ_is_utf8.1, %if.end661 ], [ 0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ 0, %while.cond680.preheader ], [ %targ_is_utf8.3.ph, %while.cond596.backedge ], [ %targ_is_utf8.3.ph, %while.cond596.preheader ], [ %targ_is_utf8.1, %while.body554.lr.ph ], [ %targ_is_utf8.1, %if.then548 ], [ %targ_is_utf8.1, %while.body541.lr.ph ], [ %targ_is_utf8.1, %if.then535 ], [ %targ_is_utf8.1, %if.end340 ], [ %targ_is_utf8.1, %if.then325 ], [ %targ_is_utf8.1, %if.end444 ], [ %targ_is_utf8.1, %if.then429 ], [ %targ_is_utf8.2.ph, %while.cond.for.cond.loopexit1508_crit_edge ], [ %targ_is_utf8.2.ph, %while.cond.preheader ]
  %nsv.0 = phi %struct.sv* [ null, %cond.end75 ], [ %nsv.0, %for.cond ], [ %nsv.0, %if.end1051 ], [ %nsv.0, %if.end995 ], [ %nsv.0, %if.then915 ], [ %nsv.0, %if.else957 ], [ %nsv.0, %while.end909 ], [ %nsv.0, %if.end891 ], [ %nsv.0, %if.end761 ], [ %nsv.0, %if.then728 ], [ %nsv.0, %if.end724 ], [ %nsv.0, %sw.bb545 ], [ %nsv.0, %sw.bb533 ], [ %nsv.0, %if.then439 ], [ %nsv.0, %while.end527 ], [ %nsv.0, %while.end287 ], [ %nsv.0, %while.end258 ], [ %nsv.0, %if.then173 ], [ %nsv.0, %if.then201 ], [ %nsv.0, %land.lhs.true197 ], [ %nsv.0, %lor.lhs.false193 ], [ %nsv.0, %sw.bb163 ], [ %nsv.1, %if.end106 ], [ %nsv.0, %sw.bb ], [ %nsv.0, %if.then335 ], [ %nsv.0, %while.end419 ], [ %nsv.0, %cond.end838 ], [ %nsv.0, %while.body869.lr.ph ], [ %nsv.0, %while.cond866.preheader ], [ %nsv.0, %while.body888.lr.ph ], [ %nsv.0, %while.cond885.preheader ], [ %nsv.2, %for.inc ], [ %nsv.2, %if.end661 ], [ %nsv.0, %while.cond680.for.cond.loopexit1461_crit_edge ], [ %nsv.0, %while.cond680.preheader ], [ %nsv.0, %while.cond596.backedge ], [ %nsv.0, %while.cond596.preheader ], [ %nsv.0, %while.body554.lr.ph ], [ %nsv.0, %if.then548 ], [ %nsv.0, %while.body541.lr.ph ], [ %nsv.0, %if.then535 ], [ %nsv.0, %if.end340 ], [ %nsv.0, %if.then325 ], [ %nsv.0, %if.end444 ], [ %nsv.0, %if.then429 ], [ %nsv.0, %while.cond.for.cond.loopexit1508_crit_edge ], [ %nsv.0, %while.cond.preheader ]
  %incdec.ptr82 = getelementptr inbounds i32* %fpc.0, i64 1
  %41 = load i32* %fpc.0, align 4, !tbaa !3
  switch i32 %41, label %for.cond [
    i32 1, label %sw.bb
    i32 2, label %sw.bb83
    i32 3, label %sw.bb163
    i32 4, label %sw.bb167
    i32 5, label %sw.bb204
    i32 6, label %sw.bb292
    i32 7, label %sw.bb533
    i32 8, label %sw.bb545
    i32 9, label %sw.bb558
    i32 10, label %sw.bb693
    i32 17, label %ff_line
    i32 11, label %sw.bb732
    i32 16, label %sw.bb849
    i32 12, label %sw.bb854
    i32 13, label %sw.bb896
    i32 14, label %sw.bb912
    i32 15, label %sw.bb960
    i32 0, label %sw.bb1056
  ]

sw.bb:                                            ; preds = %for.cond
  %inc = add nsw i32 %lines.0, 1
  br label %for.cond

sw.bb83:                                          ; preds = %for.cond
  %incdec.ptr84 = getelementptr inbounds i32* %fpc.0, i64 2
  %42 = load i32* %incdec.ptr82, align 4, !tbaa !3
  %cond = icmp eq i8 %targ_is_utf8.1, 0
  %43 = load i32* %sv_flags, align 4, !tbaa !3
  %and119 = and i32 %43, 536870912
  %tobool120 = icmp eq i32 %and119, 0
  br i1 %cond, label %land.lhs.true117, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %sw.bb83
  br i1 %tobool120, label %if.then91, label %while.cond.preheader

if.then91:                                        ; preds = %land.lhs.true87
  %44 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any92 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %45 = load i8** %sv_any92, align 8, !tbaa !0
  %xpv_pv93 = bitcast i8* %45 to i8**
  %46 = load i8** %xpv_pv93, align 8, !tbaa !0
  %sub.ptr.lhs.cast94 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %46 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %xpv_cur98 = getelementptr inbounds i8* %45, i64 8
  %47 = bitcast i8* %xpv_cur98 to i64*
  store i64 %sub.ptr.sub96, i64* %47, align 8, !tbaa !4
  store i8 0, i8* %t.0, align 1, !tbaa !1
  %tobool99 = icmp eq %struct.sv* %nsv.0, null
  %conv101 = sext i32 %42 to i64
  br i1 %tobool99, label %if.then100, label %if.else104

if.then100:                                       ; preds = %if.then91
  %call102 = call %struct.sv* @Perl_newSVpvn(i8* %f.0, i64 %conv101) #7
  %call103 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call102) #7
  br label %if.end106

if.else104:                                       ; preds = %if.then91
  call void @Perl_sv_setpvn(%struct.sv* %nsv.0, i8* %f.0, i64 %conv101) #7
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then100
  %nsv.1 = phi %struct.sv* [ %nsv.0, %if.else104 ], [ %call103, %if.then100 ]
  %sv_flags107 = getelementptr inbounds %struct.sv* %nsv.1, i64 0, i32 2
  %48 = load i32* %sv_flags107, align 4, !tbaa !3
  %and108 = and i32 %48, -536870913
  store i32 %and108, i32* %sv_flags107, align 4, !tbaa !3
  %call109 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %nsv.1, i32 2) #7
  %49 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %49, %struct.sv* %nsv.1, i32 2) #7
  %50 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any110 = getelementptr inbounds %struct.sv* %50, i64 0, i32 0
  %51 = load i8** %sv_any110, align 8, !tbaa !0
  %xpv_pv111 = bitcast i8* %51 to i8**
  %52 = load i8** %xpv_pv111, align 8, !tbaa !0
  %xpv_cur113 = getelementptr inbounds i8* %51, i64 8
  %53 = bitcast i8* %xpv_cur113 to i64*
  %54 = load i64* %53, align 8, !tbaa !4
  %add.ptr114 = getelementptr inbounds i8* %52, i64 %54
  br label %for.cond

land.lhs.true117:                                 ; preds = %sw.bb83
  br i1 %tobool120, label %while.cond.preheader, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %land.lhs.true117
  %55 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private122 = getelementptr inbounds %struct.cop* %55, i64 0, i32 7
  %56 = load i8* %op_private122, align 1, !tbaa !1
  %and124 = and i8 %56, 8
  %tobool125 = icmp eq i8 %and124, 0
  br i1 %tobool125, label %if.then126, label %while.cond.preheader

if.then126:                                       ; preds = %land.lhs.true121
  %57 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any127 = getelementptr inbounds %struct.sv* %57, i64 0, i32 0
  %58 = load i8** %sv_any127, align 8, !tbaa !0
  %xpv_pv128 = bitcast i8* %58 to i8**
  %59 = load i8** %xpv_pv128, align 8, !tbaa !0
  %sub.ptr.lhs.cast129 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast130 = ptrtoint i8* %59 to i64
  %sub.ptr.sub131 = sub i64 %sub.ptr.lhs.cast129, %sub.ptr.rhs.cast130
  %xpv_cur133 = getelementptr inbounds i8* %58, i64 8
  %60 = bitcast i8* %xpv_cur133 to i64*
  store i64 %sub.ptr.sub131, i64* %60, align 8, !tbaa !4
  store i8 0, i8* %t.0, align 1, !tbaa !1
  %61 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %call134 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %61, i32 2) #7
  %62 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any135 = getelementptr inbounds %struct.sv* %62, i64 0, i32 0
  %63 = load i8** %sv_any135, align 8, !tbaa !0
  %xpv_len136 = getelementptr inbounds i8* %63, i64 16
  %64 = bitcast i8* %xpv_len136 to i64*
  %65 = load i64* %64, align 8, !tbaa !4
  %xpv_cur138 = getelementptr inbounds i8* %63, i64 8
  %66 = bitcast i8* %xpv_cur138 to i64*
  %67 = load i64* %66, align 8, !tbaa !4
  %add140 = add i64 %cond8, %67
  %cmp141 = icmp ult i64 %65, %add140
  br i1 %cmp141, label %cond.true143, label %cond.end152

cond.true143:                                     ; preds = %if.then126
  %call148 = call i8* @Perl_sv_grow(%struct.sv* %62, i64 %add140) #7
  %.pre1566 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any154.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1566, i64 0, i32 0
  %.pre1567 = load i8** %sv_any154.phi.trans.insert, align 8, !tbaa !0
  %xpv_cur157.phi.trans.insert = getelementptr inbounds i8* %.pre1567, i64 8
  %.phi.trans.insert = bitcast i8* %xpv_cur157.phi.trans.insert to i64*
  %.pre1568 = load i64* %.phi.trans.insert, align 8, !tbaa !4
  br label %cond.end152

cond.end152:                                      ; preds = %if.then126, %cond.true143
  %68 = phi i64 [ %67, %if.then126 ], [ %.pre1568, %cond.true143 ]
  %69 = phi i8* [ %63, %if.then126 ], [ %.pre1567, %cond.true143 ]
  %xpv_pv155 = bitcast i8* %69 to i8**
  %70 = load i8** %xpv_pv155, align 8, !tbaa !0
  %add.ptr158 = getelementptr inbounds i8* %70, i64 %68
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %cond.end152, %land.lhs.true117, %land.lhs.true121, %land.lhs.true87
  %t.1.ph = phi i8* [ %t.0, %land.lhs.true87 ], [ %t.0, %land.lhs.true121 ], [ %t.0, %land.lhs.true117 ], [ %add.ptr158, %cond.end152 ]
  %targ_is_utf8.2.ph = phi i8 [ %targ_is_utf8.1, %land.lhs.true87 ], [ 0, %land.lhs.true121 ], [ 0, %land.lhs.true117 ], [ 1, %cond.end152 ]
  %tobool1601509 = icmp eq i32 %42, 0
  br i1 %tobool1601509, label %for.cond, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %71 = add i32 %42, -1
  %72 = zext i32 %71 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %arg.01512 = phi i32 [ %42, %while.body.lr.ph ], [ %dec, %while.body ]
  %f.11511 = phi i8* [ %f.0, %while.body.lr.ph ], [ %incdec.ptr161, %while.body ]
  %t.11510 = phi i8* [ %t.1.ph, %while.body.lr.ph ], [ %incdec.ptr162, %while.body ]
  %dec = add nsw i32 %arg.01512, -1
  %incdec.ptr161 = getelementptr inbounds i8* %f.11511, i64 1
  %73 = load i8* %f.11511, align 1, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i8* %t.11510, i64 1
  store i8 %73, i8* %t.11510, align 1, !tbaa !1
  %tobool160 = icmp eq i32 %dec, 0
  br i1 %tobool160, label %while.cond.for.cond.loopexit1508_crit_edge, label %while.body

sw.bb163:                                         ; preds = %for.cond
  %incdec.ptr164 = getelementptr inbounds i32* %fpc.0, i64 2
  %74 = load i32* %incdec.ptr82, align 4, !tbaa !3
  %idx.ext165 = zext i32 %74 to i64
  %add.ptr166 = getelementptr inbounds i8* %f.0, i64 %idx.ext165
  br label %for.cond

sw.bb167:                                         ; preds = %for.cond
  %incdec.ptr168 = getelementptr inbounds i32* %fpc.0, i64 2
  %75 = load i32* %incdec.ptr82, align 4, !tbaa !3
  %idx.ext169 = sext i32 %75 to i64
  %add.ptr170 = getelementptr inbounds i8* %f.0, i64 %idx.ext169
  %cmp171 = icmp ult %struct.sv** %mark.0, %0
  br i1 %cmp171, label %if.then173, label %if.else175

if.then173:                                       ; preds = %sw.bb167
  %incdec.ptr174 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  %76 = load %struct.sv** %incdec.ptr174, align 8, !tbaa !0
  br label %for.cond

if.else175:                                       ; preds = %sw.bb167
  %77 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %77, i64 0, i32 14
  %78 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp176 = icmp eq %struct.sv* %78, null
  br i1 %cmp176, label %lor.lhs.false193, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %if.else175
  %79 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings179 = getelementptr inbounds %struct.cop* %79, i64 0, i32 14
  %80 = load %struct.sv** %cop_warnings179, align 8, !tbaa !0
  %cmp180 = icmp eq %struct.sv* %80, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp180, label %lor.lhs.false193, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %81 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings183 = getelementptr inbounds %struct.cop* %81, i64 0, i32 14
  %82 = load %struct.sv** %cop_warnings183, align 8, !tbaa !0
  %cmp184 = icmp eq %struct.sv* %82, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp184, label %if.then201, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %land.lhs.true182
  %83 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings187 = getelementptr inbounds %struct.cop* %83, i64 0, i32 14
  %84 = load %struct.sv** %cop_warnings187, align 8, !tbaa !0
  %sv_any188 = getelementptr inbounds %struct.sv* %84, i64 0, i32 0
  %85 = load i8** %sv_any188, align 8, !tbaa !0
  %xpv_pv189 = bitcast i8* %85 to i8**
  %86 = load i8** %xpv_pv189, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %86, i64 7
  %87 = load i8* %arrayidx, align 1, !tbaa !1
  %and191 = and i8 %87, 1
  %tobool192 = icmp eq i8 %and191, 0
  br i1 %tobool192, label %lor.lhs.false193, label %if.then201

lor.lhs.false193:                                 ; preds = %lor.lhs.false186, %land.lhs.true178, %if.else175
  %88 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings194 = getelementptr inbounds %struct.cop* %88, i64 0, i32 14
  %89 = load %struct.sv** %cop_warnings194, align 8, !tbaa !0
  %cmp195 = icmp eq %struct.sv* %89, null
  br i1 %cmp195, label %land.lhs.true197, label %for.cond

land.lhs.true197:                                 ; preds = %lor.lhs.false193
  %90 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and199 = and i8 %90, 1
  %tobool200 = icmp eq i8 %and199, 0
  br i1 %tobool200, label %for.cond, label %if.then201

if.then201:                                       ; preds = %lor.lhs.false186, %land.lhs.true197, %land.lhs.true182
  call void (i32, i8*, ...)* @Perl_warner(i32 28, i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0)) #7
  br label %for.cond

sw.bb204:                                         ; preds = %for.cond
  %sv_flags205 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %91 = load i32* %sv_flags205, align 4, !tbaa !3
  %and206 = and i32 %91, 262144
  %cmp207 = icmp eq i32 %and206, 0
  br i1 %cmp207, label %cond.false214, label %cond.true209

cond.true209:                                     ; preds = %sw.bb204
  %sv_any210 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %92 = load i8** %sv_any210, align 8, !tbaa !0
  %xpv_cur211 = getelementptr inbounds i8* %92, i64 8
  %93 = bitcast i8* %xpv_cur211 to i64*
  %94 = load i64* %93, align 8, !tbaa !4
  store i64 %94, i64* %len, align 8, !tbaa !4
  %xpv_pv213 = bitcast i8* %92 to i8**
  %95 = load i8** %xpv_pv213, align 8, !tbaa !0
  br label %cond.end216

cond.false214:                                    ; preds = %sw.bb204
  %call215 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.0, i64* %len, i32 2) #7
  %.pre1569 = load i64* %len, align 8, !tbaa !4
  br label %cond.end216

cond.end216:                                      ; preds = %cond.false214, %cond.true209
  %96 = phi i64 [ %94, %cond.true209 ], [ %.pre1569, %cond.false214 ]
  %cond217 = phi i8* [ %95, %cond.true209 ], [ %call215, %cond.false214 ]
  %conv218 = trunc i64 %96 to i32
  store i32 %conv218, i32* %itemsize, align 4, !tbaa !3
  %97 = load i32* %sv_flags205, align 4, !tbaa !3
  %and220 = and i32 %97, 536870912
  %tobool221 = icmp eq i32 %and220, 0
  br i1 %tobool221, label %if.end264, label %land.lhs.true222

land.lhs.true222:                                 ; preds = %cond.end216
  %98 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private223 = getelementptr inbounds %struct.cop* %98, i64 0, i32 7
  %99 = load i8* %op_private223, align 1, !tbaa !1
  %and225 = and i8 %99, 8
  %tobool226 = icmp eq i8 %and225, 0
  br i1 %tobool226, label %if.then227, label %land.lhs.true222.if.end264_crit_edge

land.lhs.true222.if.end264_crit_edge:             ; preds = %land.lhs.true222
  %.pre1590 = load i32* %itemsize, align 4, !tbaa !3
  br label %if.end264

if.then227:                                       ; preds = %land.lhs.true222
  %call228 = call i64 @Perl_sv_len_utf8(%struct.sv* %sv.0) #7
  %conv229 = trunc i64 %call228 to i32
  store i32 %conv229, i32* %itemsize, align 4, !tbaa !3
  %100 = load i64* %len, align 8, !tbaa !4
  %conv230 = trunc i64 %100 to i32
  %cmp231 = icmp eq i32 %conv229, %conv230
  br i1 %cmp231, label %if.end264, label %if.then233

if.then233:                                       ; preds = %if.then227
  %cmp234 = icmp sgt i32 %conv229, %fieldsize.0
  br i1 %cmp234, label %if.then236, label %if.else237

if.then236:                                       ; preds = %if.then233
  store i32 %fieldsize.0, i32* %itemsize, align 4, !tbaa !3
  store i32 %fieldsize.0, i32* %itembytes, align 4, !tbaa !3
  call void @Perl_sv_pos_u2b(%struct.sv* %sv.0, i32* %itembytes, i32* null) #7
  %.pre1570 = load i32* %itembytes, align 4, !tbaa !3
  br label %if.end239

if.else237:                                       ; preds = %if.then233
  store i32 %conv230, i32* %itembytes, align 4, !tbaa !3
  br label %if.end239

if.end239:                                        ; preds = %if.else237, %if.then236
  %101 = phi i32 [ %conv230, %if.else237 ], [ %.pre1570, %if.then236 ]
  %idx.ext240 = sext i32 %101 to i64
  %add.ptr241 = getelementptr inbounds i8* %cond217, i64 %idx.ext240
  %cmp2431498 = icmp sgt i32 %101, 0
  br i1 %cmp2431498, label %while.body245, label %while.end258

while.body245:                                    ; preds = %if.end239, %if.end256
  %gotsome.11500 = phi i8 [ %gotsome.2, %if.end256 ], [ %gotsome.0, %if.end239 ]
  %s.01499 = phi i8* [ %incdec.ptr257, %if.end256 ], [ %cond217, %if.end239 ]
  %102 = load i8* %s.01499, align 1, !tbaa !1
  %tobool248 = icmp ugt i8 %102, 31
  br i1 %tobool248, label %if.end256, label %if.else250

if.else250:                                       ; preds = %while.body245
  %cmp252 = icmp eq i8 %102, 10
  br i1 %cmp252, label %while.end258, label %if.end256

if.end256:                                        ; preds = %while.body245, %if.else250
  %gotsome.2 = phi i8 [ %gotsome.11500, %if.else250 ], [ 1, %while.body245 ]
  %incdec.ptr257 = getelementptr inbounds i8* %s.01499, i64 1
  %cmp243 = icmp ult i8* %incdec.ptr257, %add.ptr241
  br i1 %cmp243, label %while.body245, label %while.end258

while.end258:                                     ; preds = %if.end256, %if.else250, %if.end239
  %gotsome.1.lcssa = phi i8 [ %gotsome.0, %if.end239 ], [ %gotsome.11500, %if.else250 ], [ %gotsome.2, %if.end256 ]
  %s.0.lcssa = phi i8* [ %cond217, %if.end239 ], [ %s.01499, %if.else250 ], [ %incdec.ptr257, %if.end256 ]
  %sub.ptr.lhs.cast259 = ptrtoint i8* %s.0.lcssa to i64
  %sub.ptr.rhs.cast260 = ptrtoint i8* %cond217 to i64
  %sub.ptr.sub261 = sub i64 %sub.ptr.lhs.cast259, %sub.ptr.rhs.cast260
  %conv262 = trunc i64 %sub.ptr.sub261 to i32
  store i32 %conv262, i32* %itemsize, align 4, !tbaa !3
  call void @Perl_sv_pos_b2u(%struct.sv* %sv.0, i32* %itemsize) #7
  br label %for.cond

if.end264:                                        ; preds = %land.lhs.true222.if.end264_crit_edge, %if.then227, %cond.end216
  %103 = phi i32 [ %.pre1590, %land.lhs.true222.if.end264_crit_edge ], [ %conv229, %if.then227 ], [ %conv218, %cond.end216 ]
  %cmp265 = icmp sgt i32 %103, %fieldsize.0
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end264
  store i32 %fieldsize.0, i32* %itemsize, align 4, !tbaa !3
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %if.end264
  %104 = phi i32 [ %fieldsize.0, %if.then267 ], [ %103, %if.end264 ]
  %idx.ext269 = sext i32 %104 to i64
  %add.ptr270 = getelementptr inbounds i8* %cond217, i64 %idx.ext269
  %cmp2721503 = icmp sgt i32 %104, 0
  br i1 %cmp2721503, label %while.body274, label %while.end287

while.body274:                                    ; preds = %if.end268, %if.end285
  %gotsome.31505 = phi i8 [ %gotsome.4, %if.end285 ], [ %gotsome.0, %if.end268 ]
  %s.11504 = phi i8* [ %incdec.ptr286, %if.end285 ], [ %cond217, %if.end268 ]
  %105 = load i8* %s.11504, align 1, !tbaa !1
  %tobool277 = icmp ugt i8 %105, 31
  br i1 %tobool277, label %if.end285, label %if.else279

if.else279:                                       ; preds = %while.body274
  %cmp281 = icmp eq i8 %105, 10
  br i1 %cmp281, label %while.end287, label %if.end285

if.end285:                                        ; preds = %while.body274, %if.else279
  %gotsome.4 = phi i8 [ %gotsome.31505, %if.else279 ], [ 1, %while.body274 ]
  %incdec.ptr286 = getelementptr inbounds i8* %s.11504, i64 1
  %cmp272 = icmp ult i8* %incdec.ptr286, %add.ptr270
  br i1 %cmp272, label %while.body274, label %while.end287

while.end287:                                     ; preds = %if.end285, %if.else279, %if.end268
  %gotsome.3.lcssa = phi i8 [ %gotsome.0, %if.end268 ], [ %gotsome.31505, %if.else279 ], [ %gotsome.4, %if.end285 ]
  %s.1.lcssa = phi i8* [ %cond217, %if.end268 ], [ %s.11504, %if.else279 ], [ %incdec.ptr286, %if.end285 ]
  %sub.ptr.lhs.cast288 = ptrtoint i8* %s.1.lcssa to i64
  %sub.ptr.rhs.cast289 = ptrtoint i8* %cond217 to i64
  %sub.ptr.sub290 = sub i64 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast289
  %conv291 = trunc i64 %sub.ptr.sub290 to i32
  store i32 %conv291, i32* %itemsize, align 4, !tbaa !3
  br label %for.cond

sw.bb292:                                         ; preds = %for.cond
  %sv_flags293 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %106 = load i32* %sv_flags293, align 4, !tbaa !3
  %and294 = and i32 %106, 262144
  %cmp295 = icmp eq i32 %and294, 0
  br i1 %cmp295, label %cond.false302, label %cond.true297

cond.true297:                                     ; preds = %sw.bb292
  %sv_any298 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %107 = load i8** %sv_any298, align 8, !tbaa !0
  %xpv_cur299 = getelementptr inbounds i8* %107, i64 8
  %108 = bitcast i8* %xpv_cur299 to i64*
  %109 = load i64* %108, align 8, !tbaa !4
  store i64 %109, i64* %len, align 8, !tbaa !4
  %xpv_pv301 = bitcast i8* %107 to i8**
  %110 = load i8** %xpv_pv301, align 8, !tbaa !0
  br label %cond.end304

cond.false302:                                    ; preds = %sw.bb292
  %call303 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.0, i64* %len, i32 2) #7
  %.pre1571 = load i64* %len, align 8, !tbaa !4
  br label %cond.end304

cond.end304:                                      ; preds = %cond.false302, %cond.true297
  %111 = phi i64 [ %109, %cond.true297 ], [ %.pre1571, %cond.false302 ]
  %cond305 = phi i8* [ %110, %cond.true297 ], [ %call303, %cond.false302 ]
  %conv306 = trunc i64 %111 to i32
  store i32 %conv306, i32* %itemsize, align 4, !tbaa !3
  %112 = load i32* %sv_flags293, align 4, !tbaa !3
  %and308 = and i32 %112, 536870912
  %tobool309 = icmp eq i32 %and308, 0
  br i1 %tobool309, label %if.end426, label %land.lhs.true310

land.lhs.true310:                                 ; preds = %cond.end304
  %113 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private311 = getelementptr inbounds %struct.cop* %113, i64 0, i32 7
  %114 = load i8* %op_private311, align 1, !tbaa !1
  %and313 = and i8 %114, 8
  %tobool314 = icmp eq i8 %and313, 0
  br i1 %tobool314, label %if.then315, label %land.lhs.true310.if.end426_crit_edge

land.lhs.true310.if.end426_crit_edge:             ; preds = %land.lhs.true310
  %.pre1591 = load i32* %itemsize, align 4, !tbaa !3
  br label %if.end426

if.then315:                                       ; preds = %land.lhs.true310
  %call316 = call i64 @Perl_sv_len_utf8(%struct.sv* %sv.0) #7
  %conv317 = trunc i64 %call316 to i32
  store i32 %conv317, i32* %itemsize, align 4, !tbaa !3
  %115 = load i64* %len, align 8, !tbaa !4
  %conv318 = trunc i64 %115 to i32
  %cmp319 = icmp eq i32 %conv317, %conv318
  br i1 %cmp319, label %if.end426, label %if.then321

if.then321:                                       ; preds = %if.then315
  %cmp323 = icmp sgt i32 %conv317, %fieldsize.0
  br i1 %cmp323, label %if.else348, label %if.then325

if.then325:                                       ; preds = %if.then321
  %sext1421 = shl i64 %call316, 32
  %idx.ext326 = ashr exact i64 %sext1421, 32
  %add.ptr327 = getelementptr inbounds i8* %cond305, i64 %idx.ext326
  %cmp3291487 = icmp sgt i64 %sext1421, 0
  br i1 %cmp3291487, label %while.body331, label %for.cond

while.body331:                                    ; preds = %if.then325, %if.end340
  %gotsome.51489 = phi i8 [ %.gotsome.5, %if.end340 ], [ %gotsome.0, %if.then325 ]
  %s.21488 = phi i8* [ %incdec.ptr341, %if.end340 ], [ %cond305, %if.then325 ]
  %116 = load i8* %s.21488, align 1, !tbaa !1
  %cmp333 = icmp eq i8 %116, 13
  br i1 %cmp333, label %if.then335, label %if.end340

if.then335:                                       ; preds = %while.body331
  %sub.ptr.lhs.cast336 = ptrtoint i8* %s.21488 to i64
  %sub.ptr.rhs.cast337 = ptrtoint i8* %cond305 to i64
  %sub.ptr.sub338 = sub i64 %sub.ptr.lhs.cast336, %sub.ptr.rhs.cast337
  %conv339 = trunc i64 %sub.ptr.sub338 to i32
  store i32 %conv339, i32* %itemsize, align 4, !tbaa !3
  br label %for.cond

if.end340:                                        ; preds = %while.body331
  %incdec.ptr341 = getelementptr inbounds i8* %s.21488, i64 1
  %tobool344 = icmp ugt i8 %116, 31
  %.gotsome.5 = select i1 %tobool344, i8 1, i8 %gotsome.51489
  %cmp329 = icmp ult i8* %incdec.ptr341, %add.ptr327
  br i1 %cmp329, label %while.body331, label %for.cond

if.else348:                                       ; preds = %if.then321
  store i32 %fieldsize.0, i32* %itemsize, align 4, !tbaa !3
  store i32 %fieldsize.0, i32* %itembytes322, align 4, !tbaa !3
  call void @Perl_sv_pos_u2b(%struct.sv* %sv.0, i32* %itembytes322, i32* null) #7
  %117 = load i32* %itembytes322, align 4, !tbaa !3
  %idx.ext349 = sext i32 %117 to i64
  %add.ptr350 = getelementptr inbounds i8* %cond305, i64 %idx.ext349
  %118 = load i8** @PL_chopset, align 8, !tbaa !0
  %tobool397 = icmp eq i8 %chopspace.0, 0
  br label %while.cond351

while.cond351:                                    ; preds = %if.else405, %if.then396.if.end417_crit_edge, %if.else348
  %s.3 = phi i8* [ %cond305, %if.else348 ], [ %incdec.ptr418.pre, %if.then396.if.end417_crit_edge ], [ %add.ptr415, %if.else405 ]
  %chophere.1 = phi i8* [ %add.ptr350, %if.else348 ], [ %chophere.1.s.3, %if.then396.if.end417_crit_edge ], [ %chophere.1.add.ptr415, %if.else405 ]
  %gotsome.6 = phi i8 [ %gotsome.0, %if.else348 ], [ %gotsome.6, %if.then396.if.end417_crit_edge ], [ %.gotsome.6, %if.else405 ]
  %cmp352 = icmp ult i8* %s.3, %add.ptr350
  br i1 %cmp352, label %while.body376thread-pre-split, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond351
  %cmp354 = icmp eq i8* %s.3, %add.ptr350
  br i1 %cmp354, label %land.rhs, label %while.end419

land.rhs:                                         ; preds = %lor.rhs
  %119 = load i8* %add.ptr350, align 1, !tbaa !1
  switch i8 %119, label %while.end419 [
    i8 32, label %while.body376
    i8 9, label %while.body376
    i8 10, label %while.body376
    i8 13, label %while.body376
    i8 12, label %while.body376
  ]

while.body376thread-pre-split:                    ; preds = %while.cond351
  %.pr = load i8* %s.3, align 1, !tbaa !1
  br label %while.body376

while.body376:                                    ; preds = %while.body376thread-pre-split, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs
  %120 = phi i8 [ %.pr, %while.body376thread-pre-split ], [ %119, %land.rhs ], [ %119, %land.rhs ], [ %119, %land.rhs ], [ %119, %land.rhs ], [ %119, %land.rhs ]
  switch i8 %120, label %if.else405 [
    i8 32, label %if.then396
    i8 9, label %if.then396
    i8 10, label %if.then396
    i8 13, label %if.then396
    i8 12, label %if.then396
  ]

if.then396:                                       ; preds = %while.body376, %while.body376, %while.body376, %while.body376, %while.body376
  %chophere.1.s.3 = select i1 %tobool397, i8* %chophere.1, i8* %s.3
  %cmp401 = icmp eq i8 %120, 13
  br i1 %cmp401, label %while.end419, label %if.then396.if.end417_crit_edge

if.then396.if.end417_crit_edge:                   ; preds = %if.then396
  %incdec.ptr418.pre = getelementptr inbounds i8* %s.3, i64 1
  br label %while.cond351

if.else405:                                       ; preds = %while.body376
  %tobool408 = icmp ugt i8 %120, 31
  %.gotsome.6 = select i1 %tobool408, i8 1, i8 %gotsome.6
  %conv411 = sext i8 %120 to i32
  %call412 = call i8* @strchr(i8* %118, i32 %conv411) #7
  %tobool413 = icmp eq i8* %call412, null
  %add.ptr415 = getelementptr inbounds i8* %s.3, i64 1
  %chophere.1.add.ptr415 = select i1 %tobool413, i8* %chophere.1, i8* %add.ptr415
  br label %while.cond351

while.end419:                                     ; preds = %land.rhs, %lor.rhs, %if.then396
  %chophere.4 = phi i8* [ %chophere.1.s.3, %if.then396 ], [ %chophere.1, %lor.rhs ], [ %chophere.1, %land.rhs ]
  %sub.ptr.lhs.cast420 = ptrtoint i8* %chophere.4 to i64
  %sub.ptr.rhs.cast421 = ptrtoint i8* %cond305 to i64
  %sub.ptr.sub422 = sub i64 %sub.ptr.lhs.cast420, %sub.ptr.rhs.cast421
  %conv423 = trunc i64 %sub.ptr.sub422 to i32
  store i32 %conv423, i32* %itemsize, align 4, !tbaa !3
  call void @Perl_sv_pos_b2u(%struct.sv* %sv.0, i32* %itemsize) #7
  br label %for.cond

if.end426:                                        ; preds = %land.lhs.true310.if.end426_crit_edge, %if.then315, %cond.end304
  %121 = phi i32 [ %.pre1591, %land.lhs.true310.if.end426_crit_edge ], [ %conv317, %if.then315 ], [ %conv306, %cond.end304 ]
  %cmp427 = icmp sgt i32 %121, %fieldsize.0
  br i1 %cmp427, label %if.else452, label %if.then429

if.then429:                                       ; preds = %if.end426
  %idx.ext430 = sext i32 %121 to i64
  %add.ptr431 = getelementptr inbounds i8* %cond305, i64 %idx.ext430
  %cmp4331494 = icmp sgt i32 %121, 0
  br i1 %cmp4331494, label %while.body435, label %for.cond

while.body435:                                    ; preds = %if.then429, %if.end444
  %gotsome.101496 = phi i8 [ %.gotsome.10, %if.end444 ], [ %gotsome.0, %if.then429 ]
  %s.41495 = phi i8* [ %incdec.ptr445, %if.end444 ], [ %cond305, %if.then429 ]
  %122 = load i8* %s.41495, align 1, !tbaa !1
  %cmp437 = icmp eq i8 %122, 13
  br i1 %cmp437, label %if.then439, label %if.end444

if.then439:                                       ; preds = %while.body435
  %sub.ptr.lhs.cast440 = ptrtoint i8* %s.41495 to i64
  %sub.ptr.rhs.cast441 = ptrtoint i8* %cond305 to i64
  %sub.ptr.sub442 = sub i64 %sub.ptr.lhs.cast440, %sub.ptr.rhs.cast441
  %conv443 = trunc i64 %sub.ptr.sub442 to i32
  store i32 %conv443, i32* %itemsize, align 4, !tbaa !3
  br label %for.cond

if.end444:                                        ; preds = %while.body435
  %incdec.ptr445 = getelementptr inbounds i8* %s.41495, i64 1
  %tobool448 = icmp ugt i8 %122, 31
  %.gotsome.10 = select i1 %tobool448, i8 1, i8 %gotsome.101496
  %cmp433 = icmp ult i8* %incdec.ptr445, %add.ptr431
  br i1 %cmp433, label %while.body435, label %for.cond

if.else452:                                       ; preds = %if.end426
  store i32 %fieldsize.0, i32* %itemsize, align 4, !tbaa !3
  %idx.ext453 = sext i32 %fieldsize.0 to i64
  %add.ptr454 = getelementptr inbounds i8* %cond305, i64 %idx.ext453
  %123 = load i8** @PL_chopset, align 8, !tbaa !0
  %tobool505 = icmp eq i8 %chopspace.0, 0
  br label %while.cond455

while.cond455:                                    ; preds = %if.else513, %if.then504.if.end525_crit_edge, %if.else452
  %s.5 = phi i8* [ %cond305, %if.else452 ], [ %incdec.ptr526.pre, %if.then504.if.end525_crit_edge ], [ %add.ptr523, %if.else513 ]
  %chophere.6 = phi i8* [ %add.ptr454, %if.else452 ], [ %chophere.6.s.5, %if.then504.if.end525_crit_edge ], [ %chophere.6.add.ptr523, %if.else513 ]
  %gotsome.11 = phi i8 [ %gotsome.0, %if.else452 ], [ %gotsome.11, %if.then504.if.end525_crit_edge ], [ %.gotsome.11, %if.else513 ]
  %cmp456 = icmp ult i8* %s.5, %add.ptr454
  br i1 %cmp456, label %while.body484thread-pre-split, label %lor.rhs458

lor.rhs458:                                       ; preds = %while.cond455
  %cmp459 = icmp eq i8* %s.5, %add.ptr454
  br i1 %cmp459, label %land.rhs461, label %while.end527

land.rhs461:                                      ; preds = %lor.rhs458
  %124 = load i8* %add.ptr454, align 1, !tbaa !1
  switch i8 %124, label %while.end527 [
    i8 32, label %while.body484
    i8 9, label %while.body484
    i8 10, label %while.body484
    i8 13, label %while.body484
    i8 12, label %while.body484
  ]

while.body484thread-pre-split:                    ; preds = %while.cond455
  %.pr1425 = load i8* %s.5, align 1, !tbaa !1
  br label %while.body484

while.body484:                                    ; preds = %while.body484thread-pre-split, %land.rhs461, %land.rhs461, %land.rhs461, %land.rhs461, %land.rhs461
  %125 = phi i8 [ %.pr1425, %while.body484thread-pre-split ], [ %124, %land.rhs461 ], [ %124, %land.rhs461 ], [ %124, %land.rhs461 ], [ %124, %land.rhs461 ], [ %124, %land.rhs461 ]
  switch i8 %125, label %if.else513 [
    i8 32, label %if.then504
    i8 9, label %if.then504
    i8 10, label %if.then504
    i8 13, label %if.then504
    i8 12, label %if.then504
  ]

if.then504:                                       ; preds = %while.body484, %while.body484, %while.body484, %while.body484, %while.body484
  %chophere.6.s.5 = select i1 %tobool505, i8* %chophere.6, i8* %s.5
  %cmp509 = icmp eq i8 %125, 13
  br i1 %cmp509, label %while.end527, label %if.then504.if.end525_crit_edge

if.then504.if.end525_crit_edge:                   ; preds = %if.then504
  %incdec.ptr526.pre = getelementptr inbounds i8* %s.5, i64 1
  br label %while.cond455

if.else513:                                       ; preds = %while.body484
  %tobool516 = icmp ugt i8 %125, 31
  %.gotsome.11 = select i1 %tobool516, i8 1, i8 %gotsome.11
  %conv519 = sext i8 %125 to i32
  %call520 = call i8* @strchr(i8* %123, i32 %conv519) #7
  %tobool521 = icmp eq i8* %call520, null
  %add.ptr523 = getelementptr inbounds i8* %s.5, i64 1
  %chophere.6.add.ptr523 = select i1 %tobool521, i8* %chophere.6, i8* %add.ptr523
  br label %while.cond455

while.end527:                                     ; preds = %land.rhs461, %lor.rhs458, %if.then504
  %chophere.9 = phi i8* [ %chophere.6.s.5, %if.then504 ], [ %chophere.6, %lor.rhs458 ], [ %chophere.6, %land.rhs461 ]
  %sub.ptr.lhs.cast528 = ptrtoint i8* %chophere.9 to i64
  %sub.ptr.rhs.cast529 = ptrtoint i8* %cond305 to i64
  %sub.ptr.sub530 = sub i64 %sub.ptr.lhs.cast528, %sub.ptr.rhs.cast529
  %conv531 = trunc i64 %sub.ptr.sub530 to i32
  store i32 %conv531, i32* %itemsize, align 4, !tbaa !3
  br label %for.cond

sw.bb533:                                         ; preds = %for.cond
  %126 = load i32* %itemsize, align 4, !tbaa !3
  %tobool534 = icmp eq i32 %fieldsize.0, %126
  br i1 %tobool534, label %for.cond, label %if.then535

if.then535:                                       ; preds = %sw.bb533
  %sub = sub nsw i32 %fieldsize.0, %126
  %cmp5391480 = icmp sgt i32 %sub, 0
  br i1 %cmp5391480, label %while.body541.lr.ph, label %for.cond

while.body541.lr.ph:                              ; preds = %if.then535
  %127 = add i32 %fieldsize.0, -1
  %128 = sub i32 %127, %126
  %129 = zext i32 %128 to i64
  %130 = add i64 %129, 1
  call void @llvm.memset.p0i8.i64(i8* %t.0, i8 32, i64 %130, i32 1, i1 false)
  %scevgep1542.sum = add i64 %129, 1
  %scevgep1543 = getelementptr i8* %t.0, i64 %scevgep1542.sum
  br label %for.cond

sw.bb545:                                         ; preds = %for.cond
  %131 = load i32* %itemsize, align 4, !tbaa !3
  %tobool547 = icmp eq i32 %fieldsize.0, %131
  br i1 %tobool547, label %for.cond, label %if.then548

if.then548:                                       ; preds = %sw.bb545
  %sub546 = sub nsw i32 %fieldsize.0, %131
  %div = sdiv i32 %sub546, 2
  %sub549 = sub nsw i32 %fieldsize.0, %div
  %cmp5521475 = icmp sgt i32 %sub546, 1
  br i1 %cmp5521475, label %while.body554.lr.ph, label %for.cond

while.body554.lr.ph:                              ; preds = %if.then548
  %132 = sub i32 0, %div
  %133 = icmp sgt i32 %132, -1
  %smax = select i1 %133, i32 %132, i32 -1
  %134 = add i32 %div, %smax
  %135 = zext i32 %134 to i64
  %136 = add i64 %135, 1
  call void @llvm.memset.p0i8.i64(i8* %t.0, i8 32, i64 %136, i32 1, i1 false)
  %scevgep1539.sum = add i64 %135, 1
  %scevgep1540 = getelementptr i8* %t.0, i64 %scevgep1539.sum
  br label %for.cond

sw.bb558:                                         ; preds = %for.cond
  %137 = load i32* %itemsize, align 4, !tbaa !3
  %tobool559 = icmp eq i8 %item_is_utf8.0, 0
  %tobool561 = icmp eq i8 %targ_is_utf8.1, 0
  br i1 %tobool559, label %if.end641, label %if.then560

if.then560:                                       ; preds = %sw.bb558
  br i1 %tobool561, label %if.then562, label %while.cond596.preheader

if.then562:                                       ; preds = %if.then560
  %138 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any563 = getelementptr inbounds %struct.sv* %138, i64 0, i32 0
  %139 = load i8** %sv_any563, align 8, !tbaa !0
  %xpv_pv564 = bitcast i8* %139 to i8**
  %140 = load i8** %xpv_pv564, align 8, !tbaa !0
  %sub.ptr.lhs.cast565 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast566 = ptrtoint i8* %140 to i64
  %sub.ptr.sub567 = sub i64 %sub.ptr.lhs.cast565, %sub.ptr.rhs.cast566
  %xpv_cur569 = getelementptr inbounds i8* %139, i64 8
  %141 = bitcast i8* %xpv_cur569 to i64*
  store i64 %sub.ptr.sub567, i64* %141, align 8, !tbaa !4
  store i8 0, i8* %t.0, align 1, !tbaa !1
  %142 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %call570 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %142, i32 2) #7
  %143 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any571 = getelementptr inbounds %struct.sv* %143, i64 0, i32 0
  %144 = load i8** %sv_any571, align 8, !tbaa !0
  %xpv_len572 = getelementptr inbounds i8* %144, i64 16
  %145 = bitcast i8* %xpv_len572 to i64*
  %146 = load i64* %145, align 8, !tbaa !4
  %xpv_cur574 = getelementptr inbounds i8* %144, i64 8
  %147 = bitcast i8* %xpv_cur574 to i64*
  %148 = load i64* %147, align 8, !tbaa !4
  %add576 = add i64 %cond8, %148
  %cmp577 = icmp ult i64 %146, %add576
  br i1 %cmp577, label %cond.true579, label %cond.end588

cond.true579:                                     ; preds = %if.then562
  %call584 = call i8* @Perl_sv_grow(%struct.sv* %143, i64 %add576) #7
  %.pre1572 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any590.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1572, i64 0, i32 0
  %.pre1573 = load i8** %sv_any590.phi.trans.insert, align 8, !tbaa !0
  %xpv_cur593.phi.trans.insert = getelementptr inbounds i8* %.pre1573, i64 8
  %.phi.trans.insert1574 = bitcast i8* %xpv_cur593.phi.trans.insert to i64*
  %.pre1575 = load i64* %.phi.trans.insert1574, align 8, !tbaa !4
  br label %cond.end588

cond.end588:                                      ; preds = %if.then562, %cond.true579
  %149 = phi i64 [ %148, %if.then562 ], [ %.pre1575, %cond.true579 ]
  %150 = phi i8* [ %144, %if.then562 ], [ %.pre1573, %cond.true579 ]
  %xpv_pv591 = bitcast i8* %150 to i8**
  %151 = load i8** %xpv_pv591, align 8, !tbaa !0
  %add.ptr594 = getelementptr inbounds i8* %151, i64 %149
  br label %while.cond596.preheader

while.cond596.preheader:                          ; preds = %cond.end588, %if.then560
  %t.4.ph = phi i8* [ %t.0, %if.then560 ], [ %add.ptr594, %cond.end588 ]
  %targ_is_utf8.3.ph = phi i8 [ %targ_is_utf8.1, %if.then560 ], [ 1, %cond.end588 ]
  %tobool5981469 = icmp eq i32 %137, 0
  br i1 %tobool5981469, label %for.cond, label %while.body599

while.body599:                                    ; preds = %while.cond596.preheader, %while.cond596.backedge
  %dec5971472.in = phi i32 [ %dec5971472, %while.cond596.backedge ], [ %137, %while.cond596.preheader ]
  %s.61471 = phi i8* [ %s.6.be, %while.cond596.backedge ], [ %item.0, %while.cond596.preheader ]
  %t.41470 = phi i8* [ %t.4.be, %while.cond596.backedge ], [ %t.4.ph, %while.cond596.preheader ]
  %dec5971472 = add nsw i32 %dec5971472.in, -1
  %152 = load i8* %s.61471, align 1, !tbaa !1
  %tobool602 = icmp slt i8 %152, 0
  br i1 %tobool602, label %if.then603, label %if.else630

if.then603:                                       ; preds = %while.body599
  %idxprom = zext i8 %152 to i64
  %arrayidx604 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %153 = load i8* %arrayidx604, align 1, !tbaa !1
  %conv605 = zext i8 %153 to i64
  switch i64 %conv605, label %sw.default [
    i64 7, label %sw.bb609
    i64 6, label %sw.bb612
    i64 5, label %sw.bb615
    i64 4, label %sw.bb618
    i64 3, label %sw.bb621
    i64 2, label %sw.bb624
    i64 1, label %sw.bb627
  ]

sw.default:                                       ; preds = %if.then603
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %t.41470, i8* %s.61471, i64 %conv605, i32 1, i1 false)
  %add.ptr607 = getelementptr inbounds i8* %s.61471, i64 %conv605
  %add.ptr608 = getelementptr inbounds i8* %t.41470, i64 %conv605
  br label %while.cond596.backedge

while.cond596.backedge:                           ; preds = %sw.default, %sw.bb627, %if.else630
  %t.4.be = phi i8* [ %add.ptr608, %sw.default ], [ %incdec.ptr629, %sw.bb627 ], [ %incdec.ptr632, %if.else630 ]
  %s.6.be = phi i8* [ %add.ptr607, %sw.default ], [ %incdec.ptr628, %sw.bb627 ], [ %incdec.ptr631, %if.else630 ]
  %tobool598 = icmp eq i32 %dec5971472, 0
  br i1 %tobool598, label %for.cond, label %while.body599

sw.bb609:                                         ; preds = %if.then603
  %incdec.ptr610 = getelementptr inbounds i8* %s.61471, i64 1
  %incdec.ptr611 = getelementptr inbounds i8* %t.41470, i64 1
  store i8 %152, i8* %t.41470, align 1, !tbaa !1
  %.pre1576 = load i8* %incdec.ptr610, align 1, !tbaa !1
  br label %sw.bb612

sw.bb612:                                         ; preds = %if.then603, %sw.bb609
  %154 = phi i8 [ %152, %if.then603 ], [ %.pre1576, %sw.bb609 ]
  %t.5 = phi i8* [ %t.41470, %if.then603 ], [ %incdec.ptr611, %sw.bb609 ]
  %s.7 = phi i8* [ %s.61471, %if.then603 ], [ %incdec.ptr610, %sw.bb609 ]
  %incdec.ptr613 = getelementptr inbounds i8* %s.7, i64 1
  %incdec.ptr614 = getelementptr inbounds i8* %t.5, i64 1
  store i8 %154, i8* %t.5, align 1, !tbaa !1
  %.pre1577 = load i8* %incdec.ptr613, align 1, !tbaa !1
  br label %sw.bb615

sw.bb615:                                         ; preds = %if.then603, %sw.bb612
  %155 = phi i8 [ %152, %if.then603 ], [ %.pre1577, %sw.bb612 ]
  %t.6 = phi i8* [ %t.41470, %if.then603 ], [ %incdec.ptr614, %sw.bb612 ]
  %s.8 = phi i8* [ %s.61471, %if.then603 ], [ %incdec.ptr613, %sw.bb612 ]
  %incdec.ptr616 = getelementptr inbounds i8* %s.8, i64 1
  %incdec.ptr617 = getelementptr inbounds i8* %t.6, i64 1
  store i8 %155, i8* %t.6, align 1, !tbaa !1
  %.pre1578 = load i8* %incdec.ptr616, align 1, !tbaa !1
  br label %sw.bb618

sw.bb618:                                         ; preds = %if.then603, %sw.bb615
  %156 = phi i8 [ %152, %if.then603 ], [ %.pre1578, %sw.bb615 ]
  %t.7 = phi i8* [ %t.41470, %if.then603 ], [ %incdec.ptr617, %sw.bb615 ]
  %s.9 = phi i8* [ %s.61471, %if.then603 ], [ %incdec.ptr616, %sw.bb615 ]
  %incdec.ptr619 = getelementptr inbounds i8* %s.9, i64 1
  %incdec.ptr620 = getelementptr inbounds i8* %t.7, i64 1
  store i8 %156, i8* %t.7, align 1, !tbaa !1
  %.pre1579 = load i8* %incdec.ptr619, align 1, !tbaa !1
  br label %sw.bb621

sw.bb621:                                         ; preds = %if.then603, %sw.bb618
  %157 = phi i8 [ %152, %if.then603 ], [ %.pre1579, %sw.bb618 ]
  %t.8 = phi i8* [ %t.41470, %if.then603 ], [ %incdec.ptr620, %sw.bb618 ]
  %s.10 = phi i8* [ %s.61471, %if.then603 ], [ %incdec.ptr619, %sw.bb618 ]
  %incdec.ptr622 = getelementptr inbounds i8* %s.10, i64 1
  %incdec.ptr623 = getelementptr inbounds i8* %t.8, i64 1
  store i8 %157, i8* %t.8, align 1, !tbaa !1
  %.pre1580 = load i8* %incdec.ptr622, align 1, !tbaa !1
  br label %sw.bb624

sw.bb624:                                         ; preds = %if.then603, %sw.bb621
  %158 = phi i8 [ %152, %if.then603 ], [ %.pre1580, %sw.bb621 ]
  %t.9 = phi i8* [ %t.41470, %if.then603 ], [ %incdec.ptr623, %sw.bb621 ]
  %s.11 = phi i8* [ %s.61471, %if.then603 ], [ %incdec.ptr622, %sw.bb621 ]
  %incdec.ptr625 = getelementptr inbounds i8* %s.11, i64 1
  %incdec.ptr626 = getelementptr inbounds i8* %t.9, i64 1
  store i8 %158, i8* %t.9, align 1, !tbaa !1
  %.pre1581 = load i8* %incdec.ptr625, align 1, !tbaa !1
  br label %sw.bb627

sw.bb627:                                         ; preds = %if.then603, %sw.bb624
  %159 = phi i8 [ %152, %if.then603 ], [ %.pre1581, %sw.bb624 ]
  %t.10 = phi i8* [ %t.41470, %if.then603 ], [ %incdec.ptr626, %sw.bb624 ]
  %s.12 = phi i8* [ %s.61471, %if.then603 ], [ %incdec.ptr625, %sw.bb624 ]
  %incdec.ptr628 = getelementptr inbounds i8* %s.12, i64 1
  %incdec.ptr629 = getelementptr inbounds i8* %t.10, i64 1
  store i8 %159, i8* %t.10, align 1, !tbaa !1
  br label %while.cond596.backedge

if.else630:                                       ; preds = %while.body599
  %incdec.ptr631 = getelementptr inbounds i8* %s.61471, i64 1
  %incdec.ptr632 = getelementptr inbounds i8* %t.41470, i64 1
  %tobool635 = icmp ult i8 %152, 32
  %.1423 = select i1 %tobool635, i8 32, i8 %152
  store i8 %.1423, i8* %t.41470, align 1, !tbaa !1
  br label %while.cond596.backedge

if.end641:                                        ; preds = %sw.bb558
  br i1 %tobool561, label %while.cond680.preheader, label %if.then646

while.cond680.preheader:                          ; preds = %if.end641
  %tobool6821462 = icmp eq i32 %137, 0
  br i1 %tobool6821462, label %for.cond, label %while.body683.lr.ph

while.body683.lr.ph:                              ; preds = %while.cond680.preheader
  %160 = add i32 %137, -1
  %161 = zext i32 %160 to i64
  br label %while.body683

if.then646:                                       ; preds = %if.end641
  %162 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any647 = getelementptr inbounds %struct.sv* %162, i64 0, i32 0
  %163 = load i8** %sv_any647, align 8, !tbaa !0
  %xpv_pv648 = bitcast i8* %163 to i8**
  %164 = load i8** %xpv_pv648, align 8, !tbaa !0
  %sub.ptr.lhs.cast649 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast650 = ptrtoint i8* %164 to i64
  %sub.ptr.sub651 = sub i64 %sub.ptr.lhs.cast649, %sub.ptr.rhs.cast650
  %xpv_cur653 = getelementptr inbounds i8* %163, i64 8
  %165 = bitcast i8* %xpv_cur653 to i64*
  store i64 %sub.ptr.sub651, i64* %165, align 8, !tbaa !4
  store i8 0, i8* %t.0, align 1, !tbaa !1
  %tobool654 = icmp eq %struct.sv* %nsv.0, null
  %conv656 = sext i32 %137 to i64
  br i1 %tobool654, label %if.then655, label %if.else659

if.then655:                                       ; preds = %if.then646
  %call657 = call %struct.sv* @Perl_newSVpvn(i8* %item.0, i64 %conv656) #7
  %call658 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call657) #7
  br label %if.end661

if.else659:                                       ; preds = %if.then646
  call void @Perl_sv_setpvn(%struct.sv* %nsv.0, i8* %item.0, i64 %conv656) #7
  br label %if.end661

if.end661:                                        ; preds = %if.else659, %if.then655
  %nsv.2 = phi %struct.sv* [ %nsv.0, %if.else659 ], [ %call658, %if.then655 ]
  %sv_flags662 = getelementptr inbounds %struct.sv* %nsv.2, i64 0, i32 2
  %166 = load i32* %sv_flags662, align 4, !tbaa !3
  %and663 = and i32 %166, -536870913
  store i32 %and663, i32* %sv_flags662, align 4, !tbaa !3
  %call664 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %nsv.2, i32 2) #7
  %167 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %167, %struct.sv* %nsv.2, i32 2) #7
  %168 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any6661454 = getelementptr inbounds %struct.sv* %168, i64 0, i32 0
  %169 = load i8** %sv_any6661454, align 8, !tbaa !0
  %xpv_pv6671455 = bitcast i8* %169 to i8**
  %170 = load i8** %xpv_pv6671455, align 8, !tbaa !0
  %xpv_cur6691456 = getelementptr inbounds i8* %169, i64 8
  %171 = bitcast i8* %xpv_cur6691456 to i64*
  %172 = load i64* %171, align 8, !tbaa !4
  %add.ptr6701457 = getelementptr inbounds i8* %170, i64 %172
  %cmp6711458 = icmp ult i8* %t.0, %add.ptr6701457
  br i1 %cmp6711458, label %for.body, label %for.cond

for.body:                                         ; preds = %if.end661, %for.inc
  %173 = phi %struct.sv* [ %175, %for.inc ], [ %168, %if.end661 ]
  %t.111459 = phi i8* [ %incdec.ptr678, %for.inc ], [ %t.0, %if.end661 ]
  %174 = load i8* %t.111459, align 1, !tbaa !1
  %tobool675 = icmp ugt i8 %174, 31
  br i1 %tobool675, label %for.inc, label %if.then676

if.then676:                                       ; preds = %for.body
  store i8 32, i8* %t.111459, align 1, !tbaa !1
  %.pre1582 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then676
  %175 = phi %struct.sv* [ %173, %for.body ], [ %.pre1582, %if.then676 ]
  %incdec.ptr678 = getelementptr inbounds i8* %t.111459, i64 1
  %sv_any666 = getelementptr inbounds %struct.sv* %175, i64 0, i32 0
  %176 = load i8** %sv_any666, align 8, !tbaa !0
  %xpv_pv667 = bitcast i8* %176 to i8**
  %177 = load i8** %xpv_pv667, align 8, !tbaa !0
  %xpv_cur669 = getelementptr inbounds i8* %176, i64 8
  %178 = bitcast i8* %xpv_cur669 to i64*
  %179 = load i64* %178, align 8, !tbaa !4
  %add.ptr670 = getelementptr inbounds i8* %177, i64 %179
  %cmp671 = icmp ult i8* %incdec.ptr678, %add.ptr670
  br i1 %cmp671, label %for.body, label %for.cond

while.body683:                                    ; preds = %while.body683.lr.ph, %while.body683
  %arg.41465 = phi i32 [ %137, %while.body683.lr.ph ], [ %dec681, %while.body683 ]
  %s.131464 = phi i8* [ %item.0, %while.body683.lr.ph ], [ %incdec.ptr684, %while.body683 ]
  %t.121463 = phi i8* [ %t.0, %while.body683.lr.ph ], [ %incdec.ptr685, %while.body683 ]
  %dec681 = add nsw i32 %arg.41465, -1
  %incdec.ptr684 = getelementptr inbounds i8* %s.131464, i64 1
  %180 = load i8* %s.131464, align 1, !tbaa !1
  %incdec.ptr685 = getelementptr inbounds i8* %t.121463, i64 1
  %tobool688 = icmp ult i8 %180, 32
  %.1424 = select i1 %tobool688, i8 32, i8 %180
  store i8 %.1424, i8* %t.121463, align 1, !tbaa !1
  %tobool682 = icmp eq i32 %dec681, 0
  br i1 %tobool682, label %while.cond680.for.cond.loopexit1461_crit_edge, label %while.body683

sw.bb693:                                         ; preds = %for.cond
  %tobool694 = icmp eq i8 %chopspace.0, 0
  br i1 %tobool694, label %if.end724, label %while.cond696

while.cond696:                                    ; preds = %sw.bb693, %while.body721
  %s.14 = phi i8* [ %incdec.ptr722, %while.body721 ], [ %chophere.0, %sw.bb693 ]
  %181 = load i8* %s.14, align 1, !tbaa !1
  switch i8 %181, label %if.end724 [
    i8 12, label %while.body721
    i8 32, label %while.body721
    i8 9, label %while.body721
    i8 10, label %while.body721
    i8 13, label %while.body721
  ]

while.body721:                                    ; preds = %while.cond696, %while.cond696, %while.cond696, %while.cond696, %while.cond696
  %incdec.ptr722 = getelementptr inbounds i8* %s.14, i64 1
  br label %while.cond696

if.end724:                                        ; preds = %while.cond696, %sw.bb693
  %s.15 = phi i8* [ %chophere.0, %sw.bb693 ], [ %s.14, %while.cond696 ]
  call void @Perl_sv_chop(%struct.sv* %sv.0, i8* %s.15) #7
  %sv_flags725 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %182 = load i32* %sv_flags725, align 4, !tbaa !3
  %and726 = and i32 %182, 16384
  %tobool727 = icmp eq i32 %and726, 0
  br i1 %tobool727, label %for.cond, label %if.then728

if.then728:                                       ; preds = %if.end724
  %call729 = call i32 @Perl_mg_set(%struct.sv* %sv.0) #7
  br label %for.cond

sw.bb732:                                         ; preds = %for.cond
  br label %ff_line

ff_line:                                          ; preds = %for.cond, %sw.bb732
  %chopspace.1 = phi i8 [ %chopspace.0, %sw.bb732 ], [ 0, %for.cond ]
  %oneline.0 = phi i8 [ 0, %sw.bb732 ], [ 1, %for.cond ]
  %sv_flags733 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %183 = load i32* %sv_flags733, align 4, !tbaa !3
  %and734 = and i32 %183, 262144
  %cmp735 = icmp eq i32 %and734, 0
  br i1 %cmp735, label %cond.false742, label %cond.true737

cond.true737:                                     ; preds = %ff_line
  %sv_any738 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %184 = load i8** %sv_any738, align 8, !tbaa !0
  %xpv_cur739 = getelementptr inbounds i8* %184, i64 8
  %185 = bitcast i8* %xpv_cur739 to i64*
  %186 = load i64* %185, align 8, !tbaa !4
  store i64 %186, i64* %len, align 8, !tbaa !4
  %xpv_pv741 = bitcast i8* %184 to i8**
  %187 = load i8** %xpv_pv741, align 8, !tbaa !0
  br label %cond.end744

cond.false742:                                    ; preds = %ff_line
  %call743 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.0, i64* %len, i32 2) #7
  %.pre1583 = load i64* %len, align 8, !tbaa !4
  br label %cond.end744

cond.end744:                                      ; preds = %cond.false742, %cond.true737
  %188 = phi i64 [ %186, %cond.true737 ], [ %.pre1583, %cond.false742 ]
  %cond745 = phi i8* [ %187, %cond.true737 ], [ %call743, %cond.false742 ]
  %conv746 = trunc i64 %188 to i32
  store i32 %conv746, i32* %itemsize, align 4, !tbaa !3
  %189 = load i32* %sv_flags733, align 4, !tbaa !3
  %and748 = and i32 %189, 536870912
  %tobool749 = icmp eq i32 %and748, 0
  br i1 %tobool749, label %if.end761, label %land.end755

land.end755:                                      ; preds = %cond.end744
  %190 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private751 = getelementptr inbounds %struct.cop* %190, i64 0, i32 7
  %191 = load i8* %op_private751, align 1, !tbaa !1
  %and753 = and i8 %191, 8
  %lnot = icmp eq i8 %and753, 0
  %and753.lobit = lshr exact i8 %and753, 3
  %192 = xor i8 %and753.lobit, 1
  br i1 %lnot, label %if.then758, label %land.end755.if.end761thread-pre-split_crit_edge

land.end755.if.end761thread-pre-split_crit_edge:  ; preds = %land.end755
  %.pr1428.pre = load i32* %itemsize, align 4, !tbaa !3
  br label %if.end761

if.then758:                                       ; preds = %land.end755
  %call759 = call i64 @Perl_sv_len_utf8(%struct.sv* %sv.0) #7
  %conv760 = trunc i64 %call759 to i32
  store i32 %conv760, i32* %itemsize, align 4, !tbaa !3
  br label %if.end761

if.end761:                                        ; preds = %cond.end744, %land.end755.if.end761thread-pre-split_crit_edge, %if.then758
  %193 = phi i32 [ %conv760, %if.then758 ], [ %.pr1428.pre, %land.end755.if.end761thread-pre-split_crit_edge ], [ %conv746, %cond.end744 ]
  %conv7561427 = phi i8 [ %192, %if.then758 ], [ %192, %land.end755.if.end761thread-pre-split_crit_edge ], [ 0, %cond.end744 ]
  %194 = phi i1 [ true, %if.then758 ], [ false, %land.end755.if.end761thread-pre-split_crit_edge ], [ false, %cond.end744 ]
  %tobool762 = icmp eq i32 %193, 0
  br i1 %tobool762, label %for.cond, label %if.then763

if.then763:                                       ; preds = %if.end761
  %195 = load i64* %len, align 8, !tbaa !4
  %add.ptr764 = getelementptr inbounds i8* %cond745, i64 %195
  %idx.ext765 = sext i32 %193 to i64
  %add.ptr766 = getelementptr inbounds i8* %cond745, i64 %idx.ext765
  %tobool776 = icmp eq i8 %oneline.0, 0
  br label %while.cond767.outer

while.cond767.outer:                              ; preds = %if.else783, %if.then763
  %196 = phi i32 [ %193, %if.then763 ], [ %197, %if.else783 ]
  %s.16.ph = phi i8* [ %cond745, %if.then763 ], [ %incdec.ptr771, %if.else783 ]
  %lines.1.ph = phi i32 [ %lines.0, %if.then763 ], [ %inc784, %if.else783 ]
  %chopped.0.ph = phi i8 [ 0, %if.then763 ], [ %chopped.0.ph1452, %if.else783 ]
  br label %while.cond767.outer1450

while.cond767.outer1450:                          ; preds = %while.cond767.outer, %if.then781
  %197 = phi i32 [ %dec782, %if.then781 ], [ %196, %while.cond767.outer ]
  %s.16.ph1451 = phi i8* [ %add.ptr764, %if.then781 ], [ %s.16.ph, %while.cond767.outer ]
  %chopped.0.ph1452 = phi i8 [ 1, %if.then781 ], [ %chopped.0.ph, %while.cond767.outer ]
  br label %while.cond767

while.cond767:                                    ; preds = %while.cond767.outer1450, %while.body770
  %s.16 = phi i8* [ %incdec.ptr771, %while.body770 ], [ %s.16.ph1451, %while.cond767.outer1450 ]
  %cmp768 = icmp ult i8* %s.16, %add.ptr764
  br i1 %cmp768, label %while.body770, label %while.end788

while.body770:                                    ; preds = %while.cond767
  %incdec.ptr771 = getelementptr inbounds i8* %s.16, i64 1
  %198 = load i8* %s.16, align 1, !tbaa !1
  %cmp773 = icmp eq i8 %198, 10
  br i1 %cmp773, label %if.then775, label %while.cond767

if.then775:                                       ; preds = %while.body770
  br i1 %tobool776, label %if.else778, label %while.end788

if.else778:                                       ; preds = %if.then775
  %cmp779 = icmp eq i8* %incdec.ptr771, %add.ptr764
  br i1 %cmp779, label %if.then781, label %if.else783

if.then781:                                       ; preds = %if.else778
  %dec782 = add nsw i32 %197, -1
  store i32 %dec782, i32* %itemsize, align 4, !tbaa !3
  br label %while.cond767.outer1450

if.else783:                                       ; preds = %if.else778
  %inc784 = add nsw i32 %lines.1.ph, 1
  br label %while.cond767.outer

while.end788:                                     ; preds = %if.then775, %while.cond767
  %chophere.10 = phi i8* [ %add.ptr766, %while.cond767 ], [ %incdec.ptr771, %if.then775 ]
  %chopped.1 = phi i8 [ %chopped.0.ph1452, %while.cond767 ], [ 1, %if.then775 ]
  %199 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any789 = getelementptr inbounds %struct.sv* %199, i64 0, i32 0
  %200 = load i8** %sv_any789, align 8, !tbaa !0
  %xpv_pv790 = bitcast i8* %200 to i8**
  %201 = load i8** %xpv_pv790, align 8, !tbaa !0
  %sub.ptr.lhs.cast791 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast792 = ptrtoint i8* %201 to i64
  %sub.ptr.sub793 = sub i64 %sub.ptr.lhs.cast791, %sub.ptr.rhs.cast792
  %xpv_cur795 = getelementptr inbounds i8* %200, i64 8
  %202 = bitcast i8* %xpv_cur795 to i64*
  store i64 %sub.ptr.sub793, i64* %202, align 8, !tbaa !4
  %tobool796 = icmp eq i8 %targ_is_utf8.1, 0
  br i1 %tobool796, label %if.end800, label %if.then797

if.then797:                                       ; preds = %while.end788
  %sv_flags798 = getelementptr inbounds %struct.sv* %199, i64 0, i32 2
  %203 = load i32* %sv_flags798, align 4, !tbaa !3
  %or799 = or i32 %203, 536870912
  store i32 %or799, i32* %sv_flags798, align 4, !tbaa !3
  br label %if.end800

if.end800:                                        ; preds = %while.end788, %if.then797
  br i1 %tobool776, label %if.else811, label %if.then802

if.then802:                                       ; preds = %if.end800
  %sub.ptr.lhs.cast803 = ptrtoint i8* %chophere.10 to i64
  %sub.ptr.rhs.cast804 = ptrtoint i8* %cond745 to i64
  %sub.ptr.sub805 = sub i64 %sub.ptr.lhs.cast803, %sub.ptr.rhs.cast804
  %sv_any806 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %204 = load i8** %sv_any806, align 8, !tbaa !0
  %xpv_cur807 = getelementptr inbounds i8* %204, i64 8
  %205 = bitcast i8* %xpv_cur807 to i64*
  store i64 %sub.ptr.sub805, i64* %205, align 8, !tbaa !4
  call void @Perl_sv_catsv_flags(%struct.sv* %199, %struct.sv* %sv.0, i32 2) #7
  %206 = load i32* %itemsize, align 4, !tbaa !3
  %conv808 = sext i32 %206 to i64
  %207 = load i8** %sv_any806, align 8, !tbaa !0
  %xpv_cur810 = getelementptr inbounds i8* %207, i64 8
  %208 = bitcast i8* %xpv_cur810 to i64*
  store i64 %conv808, i64* %208, align 8, !tbaa !4
  br label %if.end812

if.else811:                                       ; preds = %if.end800
  call void @Perl_sv_catsv_flags(%struct.sv* %199, %struct.sv* %sv.0, i32 2) #7
  br label %if.end812

if.end812:                                        ; preds = %if.else811, %if.then802
  %tobool813 = icmp eq i8 %chopped.1, 0
  %.pre1593 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any821.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1593, i64 0, i32 0
  %.pre1594 = load i8** %sv_any821.phi.trans.insert, align 8, !tbaa !0
  %xpv_cur824.phi.trans.insert = getelementptr inbounds i8* %.pre1594, i64 8
  %.phi.trans.insert1595 = bitcast i8* %xpv_cur824.phi.trans.insert to i64*
  %.pre1596 = load i64* %.phi.trans.insert1595, align 8, !tbaa !4
  br i1 %tobool813, label %if.end820, label %if.then814

if.then814:                                       ; preds = %if.end812
  %sub817 = add i64 %.pre1596, -1
  store i64 %sub817, i64* %.phi.trans.insert1595, align 8, !tbaa !4
  br label %if.end820

if.end820:                                        ; preds = %if.end812, %if.then814
  %209 = phi i64 [ %sub817, %if.then814 ], [ %.pre1596, %if.end812 ]
  %xpv_len822 = getelementptr inbounds i8* %.pre1594, i64 16
  %210 = bitcast i8* %xpv_len822 to i64*
  %211 = load i64* %210, align 8, !tbaa !4
  %add826 = add i64 %cond8, %209
  %cmp827 = icmp ult i64 %211, %add826
  br i1 %cmp827, label %cond.true829, label %cond.end838

cond.true829:                                     ; preds = %if.end820
  %call834 = call i8* @Perl_sv_grow(%struct.sv* %.pre1593, i64 %add826) #7
  %.pre1584 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any840.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1584, i64 0, i32 0
  %.pre1585 = load i8** %sv_any840.phi.trans.insert, align 8, !tbaa !0
  %xpv_cur843.phi.trans.insert = getelementptr inbounds i8* %.pre1585, i64 8
  %.phi.trans.insert1586 = bitcast i8* %xpv_cur843.phi.trans.insert to i64*
  %.pre1587 = load i64* %.phi.trans.insert1586, align 8, !tbaa !4
  br label %cond.end838

cond.end838:                                      ; preds = %if.end820, %cond.true829
  %212 = phi i64 [ %209, %if.end820 ], [ %.pre1587, %cond.true829 ]
  %213 = phi i8* [ %.pre1594, %if.end820 ], [ %.pre1585, %cond.true829 ]
  %xpv_pv841 = bitcast i8* %213 to i8**
  %214 = load i8** %xpv_pv841, align 8, !tbaa !0
  %add.ptr844 = getelementptr inbounds i8* %214, i64 %212
  %.targ_is_utf8.1 = select i1 %194, i8 1, i8 %targ_is_utf8.1
  br label %for.cond

sw.bb849:                                         ; preds = %for.cond
  %215 = load i32* %incdec.ptr82, align 4, !tbaa !3
  %and851 = and i32 %215, 256
  %tobool852 = icmp ne i32 %and851, 0
  %cond853 = select i1 %tobool852, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)
  br label %ff_dec

sw.bb854:                                         ; preds = %for.cond
  %216 = load i32* %incdec.ptr82, align 4, !tbaa !3
  %and856 = and i32 %216, 256
  %tobool857 = icmp ne i32 %and856, 0
  %cond858 = select i1 %tobool857, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)
  br label %ff_dec

ff_dec:                                           ; preds = %sw.bb854, %sw.bb849
  %arg.5 = phi i32 [ %216, %sw.bb854 ], [ %215, %sw.bb849 ]
  %fmt.0 = phi i8* [ %cond858, %sw.bb854 ], [ %cond853, %sw.bb849 ]
  %fpc.1 = getelementptr inbounds i32* %fpc.0, i64 2
  %and859 = and i32 %arg.5, 512
  %tobool860 = icmp eq i32 %and859, 0
  %sv_flags873.phi.trans.insert = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %.pre1597 = load i32* %sv_flags873.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool860, label %if.end872, label %land.lhs.true861

land.lhs.true861:                                 ; preds = %ff_dec
  %and863 = and i32 %.pre1597, 118423552
  %tobool864 = icmp eq i32 %and863, 0
  br i1 %tobool864, label %while.cond866.preheader, label %if.end872

while.cond866.preheader:                          ; preds = %land.lhs.true861
  %tobool8681441 = icmp eq i32 %fieldsize.0, 0
  br i1 %tobool8681441, label %for.cond, label %while.body869.lr.ph

while.body869.lr.ph:                              ; preds = %while.cond866.preheader
  %217 = add i32 %fieldsize.0, -1
  %218 = zext i32 %217 to i64
  %219 = add i64 %218, 1
  call void @llvm.memset.p0i8.i64(i8* %t.0, i8 32, i64 %219, i32 1, i1 false)
  %scevgep1528.sum = add i64 %218, 1
  %scevgep1529 = getelementptr i8* %t.0, i64 %scevgep1528.sum
  br label %for.cond

if.end872:                                        ; preds = %ff_dec, %land.lhs.true861
  %and874 = and i32 %.pre1597, 131072
  %tobool875 = icmp eq i32 %and874, 0
  br i1 %tobool875, label %cond.false878, label %cond.true876

cond.true876:                                     ; preds = %if.end872
  %sv_any877 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %220 = load i8** %sv_any877, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %220, i64 32
  %221 = bitcast i8* %xnv_nv to double*
  %222 = load double* %221, align 8, !tbaa !5
  br label %cond.end880

cond.false878:                                    ; preds = %if.end872
  %call879 = call double @Perl_sv_2nv(%struct.sv* %sv.0) #7
  br label %cond.end880

cond.end880:                                      ; preds = %cond.false878, %cond.true876
  %cond881 = phi double [ %222, %cond.true876 ], [ %call879, %cond.false878 ]
  %cmp.i = fcmp olt double %cond881, 0.000000e+00
  %cond.neg.i = sext i1 %cmp.i to i32
  %223 = shl i32 %arg.5, 23
  %sext.i = ashr i32 %223, 31
  %and1.i = and i32 %arg.5, 255
  %sub.i = sub i32 %fieldsize.0, %and1.i
  %sub.dec.i = add i32 %sub.i, %sext.i
  %sub2.i = add i32 %sub.dec.i, %cond.neg.i
  %tobool434.i = icmp eq i32 %sub2.i, 0
  br i1 %tobool434.i, label %while.cond5.preheader.i, label %while.body.i

while.cond5.preheader.i:                          ; preds = %while.body.i, %cond.end880
  %pwr.0.lcssa.i = phi double [ 1.000000e+00, %cond.end880 ], [ %mul.i, %while.body.i ]
  %tobool731.i = icmp eq i32 %and1.i, 0
  br i1 %tobool731.i, label %while.end9.i, label %while.body8.i

while.body.i:                                     ; preds = %cond.end880, %while.body.i
  %intsize.136.i = phi i32 [ %dec3.i, %while.body.i ], [ %sub2.i, %cond.end880 ]
  %pwr.035.i = phi double [ %mul.i, %while.body.i ], [ 1.000000e+00, %cond.end880 ]
  %dec3.i = add nsw i32 %intsize.136.i, -1
  %mul.i = fmul double %pwr.035.i, 1.000000e+01
  %tobool4.i = icmp eq i32 %dec3.i, 0
  br i1 %tobool4.i, label %while.cond5.preheader.i, label %while.body.i

while.body8.i:                                    ; preds = %while.cond5.preheader.i, %while.body8.i
  %eps.033.i = phi double [ %div.i, %while.body8.i ], [ 5.000000e-01, %while.cond5.preheader.i ]
  %frcsize.addr.032.i = phi i32 [ %dec6.i, %while.body8.i ], [ %and1.i, %while.cond5.preheader.i ]
  %dec6.i = add nsw i32 %frcsize.addr.032.i, -1
  %div.i = fdiv double %eps.033.i, 1.000000e+01
  %tobool7.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.i, label %while.end9.i, label %while.body8.i

while.end9.i:                                     ; preds = %while.body8.i, %while.cond5.preheader.i
  %eps.0.lcssa.i = phi double [ 5.000000e-01, %while.cond5.preheader.i ], [ %div.i, %while.body8.i ]
  %cmp10.i = fcmp ult double %cond881, 0.000000e+00
  br i1 %cmp10.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %while.end9.i
  %add.i = fadd double %cond881, %eps.0.lcssa.i
  %cmp12.i = fcmp ult double %add.i, %pwr.0.lcssa.i
  br i1 %cmp12.i, label %if.end891, label %while.cond885.preheader

if.else.i:                                        ; preds = %while.end9.i
  %sub15.i = fsub double %cond881, %eps.0.lcssa.i
  %sub16.i = fsub double -0.000000e+00, %pwr.0.lcssa.i
  %cmp17.i = fcmp ugt double %sub15.i, %sub16.i
  br i1 %cmp17.i, label %if.end891, label %while.cond885.preheader

while.cond885.preheader:                          ; preds = %if.then11.i, %if.else.i
  %tobool8871446 = icmp eq i32 %fieldsize.0, 0
  br i1 %tobool8871446, label %for.cond, label %while.body888.lr.ph

while.body888.lr.ph:                              ; preds = %while.cond885.preheader
  %224 = add i32 %fieldsize.0, -1
  %225 = zext i32 %224 to i64
  %226 = add i64 %225, 1
  call void @llvm.memset.p0i8.i64(i8* %t.0, i8 35, i64 %226, i32 1, i1 false)
  %scevgep1530.sum = add i64 %225, 1
  %scevgep1531 = getelementptr i8* %t.0, i64 %scevgep1530.sum
  br label %for.cond

if.end891:                                        ; preds = %if.then11.i, %if.else.i
  %call893 = call i32 (i8*, i8*, ...)* @sprintf(i8* %t.0, i8* %fmt.0, i32 %fieldsize.0, i32 %and1.i, double %cond881) #7
  %idx.ext894 = sext i32 %fieldsize.0 to i64
  %add.ptr895 = getelementptr inbounds i8* %t.0, i64 %idx.ext894
  br label %for.cond

sw.bb896:                                         ; preds = %for.cond
  %incdec.ptr897 = getelementptr inbounds i8* %f.0, i64 1
  br label %while.cond898

while.cond898:                                    ; preds = %land.rhs902, %sw.bb896
  %t.15 = phi i8* [ %t.0, %sw.bb896 ], [ %incdec.ptr899, %land.rhs902 ]
  %incdec.ptr899 = getelementptr inbounds i8* %t.15, i64 -1
  %cmp900 = icmp ugt i8* %t.15, %linemark.0
  br i1 %cmp900, label %land.rhs902, label %while.end909

land.rhs902:                                      ; preds = %while.cond898
  %227 = load i8* %incdec.ptr899, align 1, !tbaa !1
  %cmp904 = icmp eq i8 %227, 32
  br i1 %cmp904, label %while.cond898, label %while.end909

while.end909:                                     ; preds = %while.cond898, %land.rhs902
  %incdec.ptr911 = getelementptr inbounds i8* %t.15, i64 1
  store i8 10, i8* %t.15, align 1, !tbaa !1
  br label %for.cond

sw.bb912:                                         ; preds = %for.cond
  %incdec.ptr913 = getelementptr inbounds i32* %fpc.0, i64 2
  %tobool914 = icmp eq i8 %gotsome.0, 0
  br i1 %tobool914, label %if.else957, label %if.then915

if.then915:                                       ; preds = %sw.bb912
  %228 = load i32* %incdec.ptr82, align 4, !tbaa !3
  %tobool916 = icmp eq i32 %228, 0
  br i1 %tobool916, label %for.cond, label %if.then917

if.then917:                                       ; preds = %if.then915
  store i8 0, i8* %t.0, align 1, !tbaa !1
  %229 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any918 = getelementptr inbounds %struct.sv* %229, i64 0, i32 0
  %230 = load i8** %sv_any918, align 8, !tbaa !0
  %xpv_pv919 = bitcast i8* %230 to i8**
  %231 = load i8** %xpv_pv919, align 8, !tbaa !0
  %sub.ptr.lhs.cast920 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast921 = ptrtoint i8* %231 to i64
  %sub.ptr.sub922 = sub i64 %sub.ptr.lhs.cast920, %sub.ptr.rhs.cast921
  %xpv_cur924 = getelementptr inbounds i8* %230, i64 8
  %232 = bitcast i8* %xpv_cur924 to i64*
  store i64 %sub.ptr.sub922, i64* %232, align 8, !tbaa !4
  %xfm_lines = getelementptr inbounds i8* %230, i64 144
  %233 = bitcast i8* %xfm_lines to i64*
  %234 = load i64* %233, align 8, !tbaa !4
  %conv9261417 = zext i32 %lines.0 to i64
  %add927 = add nsw i64 %234, %conv9261417
  %conv928 = trunc i64 %add927 to i32
  %cmp929 = icmp eq i32 %conv928, 200
  br i1 %cmp929, label %if.then931, label %if.end945

if.then931:                                       ; preds = %if.then917
  %sub.ptr.rhs.cast933 = ptrtoint i8* %linemark.0 to i64
  %sub.ptr.sub934 = sub i64 %sub.ptr.lhs.cast920, %sub.ptr.rhs.cast933
  %sext1420 = shl i64 %sub.ptr.sub934, 32
  %idx.ext936 = ashr exact i64 %sext1420, 32
  %idx.neg937 = sub i64 0, %idx.ext936
  %add.ptr938 = getelementptr inbounds i8* %linemark.0, i64 %idx.neg937
  %call940 = call i32 @strncmp(i8* %linemark.0, i8* %add.ptr938, i64 %idx.ext936) #7
  %tobool941 = icmp eq i32 %call940, 0
  br i1 %tobool941, label %if.then942, label %if.end945

if.then942:                                       ; preds = %if.then931
  %call943 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0)) #7
  br label %return

if.end945:                                        ; preds = %if.then931, %if.then917
  %tobool946 = icmp eq i8 %targ_is_utf8.1, 0
  br i1 %tobool946, label %if.end950, label %if.then947

if.then947:                                       ; preds = %if.end945
  %sv_flags948 = getelementptr inbounds %struct.sv* %229, i64 0, i32 2
  %235 = load i32* %sv_flags948, align 4, !tbaa !3
  %or949 = or i32 %235, 536870912
  store i32 %or949, i32* %sv_flags948, align 4, !tbaa !3
  br label %if.end950

if.end950:                                        ; preds = %if.end945, %if.then947
  %sext1418 = shl i64 %add927, 32
  %conv951 = ashr exact i64 %sext1418, 32
  store i64 %conv951, i64* %233, align 8, !tbaa !4
  %236 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr955 = getelementptr inbounds %struct.sv** %236, i64 %idx.ext
  store %struct.sv** %add.ptr955, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %237 = load %struct.op** @PL_op, align 8, !tbaa !0
  %238 = getelementptr inbounds %struct.op* %237, i64 1, i32 0
  %239 = load %struct.op** %238, align 8, !tbaa !0
  br label %return

if.else957:                                       ; preds = %sw.bb912
  %dec958 = add nsw i32 %lines.0, -1
  br label %for.cond

sw.bb960:                                         ; preds = %for.cond
  %240 = load i64* %len, align 8, !tbaa !4
  %add.ptr961 = getelementptr inbounds i8* %item.0, i64 %240
  %tobool962 = icmp eq i8 %chopspace.0, 0
  br i1 %tobool962, label %if.end995, label %while.cond964

while.cond964:                                    ; preds = %sw.bb960, %land.rhs987
  %s.17 = phi i8* [ %incdec.ptr993, %land.rhs987 ], [ %chophere.0, %sw.bb960 ]
  %241 = load i8* %s.17, align 1, !tbaa !1
  switch i8 %241, label %if.end995 [
    i8 12, label %land.rhs987
    i8 32, label %land.rhs987
    i8 9, label %land.rhs987
    i8 10, label %land.rhs987
    i8 13, label %land.rhs987
  ]

land.rhs987:                                      ; preds = %while.cond964, %while.cond964, %while.cond964, %while.cond964, %while.cond964
  %cmp988 = icmp ult i8* %s.17, %add.ptr961
  %incdec.ptr993 = getelementptr inbounds i8* %s.17, i64 1
  br i1 %cmp988, label %while.cond964, label %if.end995

if.end995:                                        ; preds = %while.cond964, %land.rhs987, %sw.bb960
  %s.18 = phi i8* [ %chophere.0, %sw.bb960 ], [ %s.17, %land.rhs987 ], [ %s.17, %while.cond964 ]
  %cmp996 = icmp ult i8* %s.18, %add.ptr961
  br i1 %cmp996, label %if.then998, label %for.cond

if.then998:                                       ; preds = %if.end995
  %242 = load i32* %itemsize, align 4, !tbaa !3
  %tobool1000 = icmp eq i32 %fieldsize.0, %242
  br i1 %tobool1000, label %if.end1010, label %if.then1001

if.then1001:                                      ; preds = %if.then998
  %sub999 = sub nsw i32 %fieldsize.0, %242
  %cmp10051433 = icmp sgt i32 %sub999, 0
  br i1 %cmp10051433, label %while.body1007.lr.ph, label %if.end1010

while.body1007.lr.ph:                             ; preds = %if.then1001
  %243 = add i32 %fieldsize.0, -1
  %244 = sub i32 %243, %242
  %245 = zext i32 %244 to i64
  %246 = add i64 %245, 1
  call void @llvm.memset.p0i8.i64(i8* %t.0, i8 32, i64 %246, i32 1, i1 false)
  %scevgep.sum = add i64 %245, 1
  %scevgep1525 = getelementptr i8* %t.0, i64 %scevgep.sum
  br label %if.end1010

if.end1010:                                       ; preds = %if.then1001, %while.body1007.lr.ph, %if.then998
  %t.17 = phi i8* [ %t.0, %if.then998 ], [ %scevgep1525, %while.body1007.lr.ph ], [ %t.0, %if.then1001 ]
  %fieldsize.1 = phi i32 [ %fieldsize.0, %if.then998 ], [ %242, %while.body1007.lr.ph ], [ %242, %if.then1001 ]
  %add.ptr1011 = getelementptr inbounds i8* %t.17, i64 -3
  %call1012 = call i32 @strncmp(i8* %add.ptr1011, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i64 3) #7
  %tobool1013 = icmp eq i32 %call1012, 0
  br i1 %tobool1013, label %while.cond1015.preheader, label %if.end1051

while.cond1015.preheader:                         ; preds = %if.end1010
  %247 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any10161436 = getelementptr inbounds %struct.sv* %247, i64 0, i32 0
  %248 = load i8** %sv_any10161436, align 8, !tbaa !0
  %xpv_pv10171437 = bitcast i8* %248 to i8**
  %249 = load i8** %xpv_pv10171437, align 8, !tbaa !0
  %cmp10181438 = icmp ugt i8* %add.ptr1011, %249
  br i1 %cmp10181438, label %land.rhs1020, label %if.end1051

land.rhs1020:                                     ; preds = %while.cond1015.preheader, %while.cond1015.backedge
  %s.191439 = phi i8* [ %arrayidx1021, %while.cond1015.backedge ], [ %add.ptr1011, %while.cond1015.preheader ]
  %arrayidx1021 = getelementptr inbounds i8* %s.191439, i64 -1
  %250 = load i8* %arrayidx1021, align 1, !tbaa !1
  switch i8 %250, label %if.end1051 [
    i8 32, label %while.cond1015.backedge
    i8 9, label %while.cond1015.backedge
    i8 10, label %while.cond1015.backedge
    i8 13, label %while.cond1015.backedge
    i8 12, label %while.cond1015.backedge
  ]

while.cond1015.backedge:                          ; preds = %land.rhs1020, %land.rhs1020, %land.rhs1020, %land.rhs1020, %land.rhs1020
  %cmp1018 = icmp ugt i8* %arrayidx1021, %249
  br i1 %cmp1018, label %land.rhs1020, label %if.end1051

if.end1051:                                       ; preds = %while.cond1015.preheader, %land.rhs1020, %while.cond1015.backedge, %if.end1010
  %s.20 = phi i8* [ %add.ptr1011, %if.end1010 ], [ %add.ptr1011, %while.cond1015.preheader ], [ %s.191439, %land.rhs1020 ], [ %arrayidx1021, %while.cond1015.backedge ]
  %incdec.ptr1052 = getelementptr inbounds i8* %s.20, i64 1
  store i8 46, i8* %s.20, align 1, !tbaa !1
  %incdec.ptr1053 = getelementptr inbounds i8* %s.20, i64 2
  store i8 46, i8* %incdec.ptr1052, align 1, !tbaa !1
  store i8 46, i8* %incdec.ptr1053, align 1, !tbaa !1
  br label %for.cond

sw.bb1056:                                        ; preds = %for.cond
  store i8 0, i8* %t.0, align 1, !tbaa !1
  %251 = load %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %sv_any1057 = getelementptr inbounds %struct.sv* %251, i64 0, i32 0
  %252 = load i8** %sv_any1057, align 8, !tbaa !0
  %xpv_pv1058 = bitcast i8* %252 to i8**
  %253 = load i8** %xpv_pv1058, align 8, !tbaa !0
  %sub.ptr.lhs.cast1059 = ptrtoint i8* %t.0 to i64
  %sub.ptr.rhs.cast1060 = ptrtoint i8* %253 to i64
  %sub.ptr.sub1061 = sub i64 %sub.ptr.lhs.cast1059, %sub.ptr.rhs.cast1060
  %xpv_cur1063 = getelementptr inbounds i8* %252, i64 8
  %254 = bitcast i8* %xpv_cur1063 to i64*
  store i64 %sub.ptr.sub1061, i64* %254, align 8, !tbaa !4
  %tobool1064 = icmp eq i8 %targ_is_utf8.1, 0
  br i1 %tobool1064, label %if.end1068, label %if.then1065

if.then1065:                                      ; preds = %sw.bb1056
  %sv_flags1066 = getelementptr inbounds %struct.sv* %251, i64 0, i32 2
  %255 = load i32* %sv_flags1066, align 4, !tbaa !3
  %or1067 = or i32 %255, 536870912
  store i32 %or1067, i32* %sv_flags1066, align 4, !tbaa !3
  br label %if.end1068

if.end1068:                                       ; preds = %sw.bb1056, %if.then1065
  %conv1069 = sext i32 %lines.0 to i64
  %xfm_lines1071 = getelementptr inbounds i8* %252, i64 144
  %256 = bitcast i8* %xfm_lines1071 to i64*
  %257 = load i64* %256, align 8, !tbaa !4
  %add1072 = add nsw i64 %257, %conv1069
  store i64 %add1072, i64* %256, align 8, !tbaa !4
  %258 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr1074.sum = add i64 %idx.ext, 1
  %incdec.ptr1075 = getelementptr inbounds %struct.sv** %258, i64 %add.ptr1074.sum
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr1075, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr1075, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %259 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %259, i64 0, i32 0
  %260 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.end1068, %if.end950, %if.then942
  %retval.0 = phi %struct.op* [ %260, %if.end1068 ], [ %239, %if.end950 ], [ %call943, %if.then942 ], [ %parseres.0, %if.end ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.op* @S_doparseform(%struct.sv* %sv) #0 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

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
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  %.pr = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i64 [ %.pr, %cond.false ], [ %3, %cond.true ]
  %cond = phi i8* [ %call, %cond.false ], [ %4, %cond.true ]
  %add.ptr = getelementptr inbounds i8* %cond, i64 %5
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %for.cond.preheader.thread, label %for.cond.preheader

for.cond.preheader.thread:                        ; preds = %cond.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str72, i64 0, i64 0)) #7
  br label %for.body

for.cond.preheader:                               ; preds = %cond.end
  %cmp3548 = icmp slt i64 %5, 0
  br i1 %cmp3548, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond.preheader.thread, %for.inc
  %s.0550 = phi i8* [ %incdec.ptr, %for.inc ], [ %cond, %for.cond.preheader.thread ], [ %cond, %for.cond.preheader ]
  %maxops.0549 = phi i32 [ %maxops.1, %for.inc ], [ 12, %for.cond.preheader.thread ], [ 12, %for.cond.preheader ]
  %6 = load i8* %s.0550, align 1, !tbaa !1
  switch i8 %6, label %for.inc [
    i8 10, label %if.then13
    i8 64, label %if.then13
    i8 94, label %if.then13
  ]

if.then13:                                        ; preds = %for.body, %for.body, %for.body
  %add = add nsw i32 %maxops.0549, 10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then13
  %maxops.1 = phi i32 [ %add, %if.then13 ], [ %maxops.0549, %for.body ]
  %incdec.ptr = getelementptr inbounds i8* %s.0550, i64 1
  %cmp3 = icmp ugt i8* %incdec.ptr, %add.ptr
  br i1 %cmp3, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cmp3548559 = phi i1 [ true, %for.cond.preheader ], [ false, %for.inc ]
  %maxops.0.lcssa = phi i32 [ 12, %for.cond.preheader ], [ %maxops.1, %for.inc ]
  %conv15 = sext i32 %maxops.0.lcssa to i64
  %mul = shl nsw i64 %conv15, 2
  %call16 = call i8* @Perl_safesysmalloc(i64 %mul) #7
  %7 = bitcast i8* %call16 to i32*
  %cmp17 = icmp sgt i64 %5, 0
  br i1 %cmp17, label %if.then19, label %while.cond.preheader

if.then19:                                        ; preds = %for.end
  %incdec.ptr20 = getelementptr inbounds i8* %call16, i64 4
  %8 = bitcast i8* %incdec.ptr20 to i32*
  store i32 1, i32* %7, align 4, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then19, %for.end
  %fpc.0.ph = phi i32* [ %7, %for.end ], [ %8, %if.then19 ]
  %linepc.0.ph = phi i32* [ null, %for.end ], [ %7, %if.then19 ]
  %base.0.ph = phi i8* [ null, %for.end ], [ %cond, %if.then19 ]
  br i1 %cmp3548559, label %while.end320, label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %s.1545 = phi i8* [ %cond, %while.cond.preheader ], [ %s.1.be, %while.cond.backedge ]
  %base.0544 = phi i8* [ %base.0.ph, %while.cond.preheader ], [ %base.0.be, %while.cond.backedge ]
  %unchopnum.0543 = phi i8 [ 0, %while.cond.preheader ], [ %unchopnum.0.be, %while.cond.backedge ]
  %skipspaces.0542 = phi i32 [ 0, %while.cond.preheader ], [ %skipspaces.0.be, %while.cond.backedge ]
  %linepc.0541 = phi i32* [ %linepc.0.ph, %while.cond.preheader ], [ %linepc.0.be, %while.cond.backedge ]
  %fpc.0540 = phi i32* [ %fpc.0.ph, %while.cond.preheader ], [ %fpc.0.be, %while.cond.backedge ]
  %noblank.0539 = phi i8 [ 0, %while.cond.preheader ], [ %noblank.0.be, %while.cond.backedge ]
  %postspace.0538 = phi i8 [ 0, %while.cond.preheader ], [ %postspace.0.be, %while.cond.backedge ]
  %repeat.0537 = phi i8 [ 0, %while.cond.preheader ], [ %repeat.0.be, %while.cond.backedge ]
  %incdec.ptr24 = getelementptr inbounds i8* %s.1545, i64 1
  %9 = load i8* %s.1545, align 1, !tbaa !1
  %conv25 = sext i8 %9 to i32
  switch i32 %conv25, label %while.cond.backedge [
    i32 126, label %sw.bb
    i32 32, label %sw.bb31
    i32 9, label %sw.bb31
    i32 0, label %sw.bb32
    i32 10, label %sw.bb37
    i32 64, label %sw.bb88
    i32 94, label %sw.bb88
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load i8* %incdec.ptr24, align 1, !tbaa !1
  %cmp27 = icmp eq i8 %10, 126
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %sw.bb
  store i8 32, i8* %incdec.ptr24, align 1, !tbaa !1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %sw.bb
  %repeat.1 = phi i8 [ 1, %if.then29 ], [ %repeat.0537, %sw.bb ]
  store i8 32, i8* %s.1545, align 1, !tbaa !1
  br label %sw.bb31

sw.bb31:                                          ; preds = %while.body, %while.body, %if.end30
  %repeat.2 = phi i8 [ %repeat.0537, %while.body ], [ %repeat.0537, %while.body ], [ %repeat.1, %if.end30 ]
  %noblank.1 = phi i8 [ %noblank.0539, %while.body ], [ %noblank.0539, %while.body ], [ 1, %if.end30 ]
  %inc = add nsw i32 %skipspaces.0542, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb31, %if.else85, %if.then83, %while.body, %sw.bb32, %if.end166, %if.end312, %if.then314, %if.end222, %if.then119, %if.else122
  %repeat.0.be = phi i8 [ 0, %if.then83 ], [ %repeat.0537, %if.else85 ], [ %repeat.2, %sw.bb31 ], [ %repeat.0537, %while.body ], [ %repeat.0537, %sw.bb32 ], [ %repeat.0537, %if.end166 ], [ %repeat.0537, %if.end312 ], [ %repeat.0537, %if.then314 ], [ %repeat.0537, %if.end222 ], [ %repeat.0537, %if.then119 ], [ %repeat.0537, %if.else122 ]
  %postspace.0.be = phi i8 [ 0, %if.then83 ], [ 0, %if.else85 ], [ %postspace.0538, %sw.bb31 ], [ %postspace.0538, %while.body ], [ %postspace.0538, %sw.bb32 ], [ 0, %if.end166 ], [ %postspace.2562, %if.end312 ], [ %postspace.2562, %if.then314 ], [ 0, %if.end222 ], [ 0, %if.then119 ], [ 0, %if.else122 ]
  %noblank.0.be = phi i8 [ 0, %if.then83 ], [ %noblank.0539, %if.else85 ], [ %noblank.1, %sw.bb31 ], [ %noblank.0539, %while.body ], [ %noblank.0539, %sw.bb32 ], [ %noblank.0539, %if.end166 ], [ %noblank.0539, %if.end312 ], [ %noblank.0539, %if.then314 ], [ %noblank.0539, %if.end222 ], [ %noblank.0539, %if.then119 ], [ %noblank.0539, %if.else122 ]
  %fpc.0.be = phi i32* [ %incdec.ptr84, %if.then83 ], [ %fpc.5, %if.else85 ], [ %fpc.0540, %sw.bb31 ], [ %fpc.0540, %while.body ], [ %fpc.0540, %sw.bb32 ], [ %incdec.ptr175, %if.end166 ], [ %fpc.9, %if.end312 ], [ %incdec.ptr315, %if.then314 ], [ %incdec.ptr231, %if.end222 ], [ %incdec.ptr121, %if.then119 ], [ %incdec.ptr120, %if.else122 ]
  %linepc.0.be = phi i32* [ %fpc.5, %if.then83 ], [ %linepc.0541, %if.else85 ], [ %linepc.0541, %sw.bb31 ], [ %linepc.0541, %while.body ], [ %linepc.0541, %sw.bb32 ], [ %linepc.0541, %if.end166 ], [ %linepc.0541, %if.end312 ], [ %linepc.0541, %if.then314 ], [ %linepc.0541, %if.end222 ], [ %linepc.0541, %if.then119 ], [ %linepc.0541, %if.else122 ]
  %skipspaces.0.be = phi i32 [ 0, %if.then83 ], [ 0, %if.else85 ], [ %inc, %sw.bb31 ], [ 0, %while.body ], [ 0, %sw.bb32 ], [ 0, %if.end166 ], [ 0, %if.end312 ], [ 0, %if.then314 ], [ 0, %if.end222 ], [ 0, %if.then119 ], [ 0, %if.else122 ]
  %unchopnum.0.be = phi i8 [ %unchopnum.0543, %if.then83 ], [ %unchopnum.0543, %if.else85 ], [ %unchopnum.0543, %sw.bb31 ], [ %unchopnum.0543, %while.body ], [ %unchopnum.0543, %sw.bb32 ], [ %or178, %if.end166 ], [ %unchopnum.0543, %if.end312 ], [ %unchopnum.0543, %if.then314 ], [ %or236, %if.end222 ], [ %unchopnum.0543, %if.then119 ], [ %unchopnum.0543, %if.else122 ]
  %base.0.be = phi i8* [ %incdec.ptr24, %if.then83 ], [ %base.0544, %if.else85 ], [ %base.0544, %sw.bb31 ], [ %base.0544, %while.body ], [ %base.0544, %sw.bb32 ], [ %s.4, %if.end166 ], [ %s.13, %if.end312 ], [ %s.13, %if.then314 ], [ %s.7, %if.end222 ], [ %incdec.ptr116, %if.then119 ], [ %incdec.ptr116, %if.else122 ]
  %s.1.be = phi i8* [ %incdec.ptr24, %if.then83 ], [ %incdec.ptr86, %if.else85 ], [ %incdec.ptr24, %sw.bb31 ], [ %incdec.ptr24, %while.body ], [ %incdec.ptr24, %sw.bb32 ], [ %s.4, %if.end166 ], [ %s.13, %if.end312 ], [ %s.13, %if.then314 ], [ %s.7, %if.end222 ], [ %incdec.ptr116, %if.then119 ], [ %incdec.ptr116, %if.else122 ]
  %cmp22 = icmp ugt i8* %s.1.be, %add.ptr
  br i1 %cmp22, label %while.end320, label %while.body

sw.bb32:                                          ; preds = %while.body
  %cmp33 = icmp ult i8* %incdec.ptr24, %add.ptr
  br i1 %cmp33, label %while.cond.backedge, label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb32, %while.body
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %base.0544 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv38 = trunc i64 %sub.ptr.sub to i32
  %inc39 = add nsw i32 %skipspaces.0542, 1
  %sub = sub nsw i32 %conv38, %inc39
  %tobool = icmp eq i32 %conv38, %inc39
  br i1 %tobool, label %if.end49, label %if.then40

if.then40:                                        ; preds = %sw.bb37
  %tobool41 = icmp eq i8 %postspace.0538, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.then40
  %incdec.ptr43 = getelementptr inbounds i32* %fpc.0540, i64 1
  store i32 7, i32* %fpc.0540, align 4, !tbaa !3
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then42
  %fpc.1 = phi i32* [ %incdec.ptr43, %if.then42 ], [ %fpc.0540, %if.then40 ]
  %incdec.ptr45 = getelementptr inbounds i32* %fpc.1, i64 1
  store i32 2, i32* %fpc.1, align 4, !tbaa !3
  %conv47 = and i32 %sub, 65535
  %incdec.ptr48 = getelementptr inbounds i32* %fpc.1, i64 2
  store i32 %conv47, i32* %incdec.ptr45, align 4, !tbaa !3
  br label %if.end49

if.end49:                                         ; preds = %sw.bb37, %if.end44
  %fpc.2 = phi i32* [ %incdec.ptr48, %if.end44 ], [ %fpc.0540, %sw.bb37 ]
  %cmp50 = icmp ule i8* %incdec.ptr24, %add.ptr
  %skipspaces.0.inc39 = select i1 %cmp50, i32 %skipspaces.0542, i32 %inc39
  %tobool54 = icmp eq i32 %skipspaces.0.inc39, 0
  br i1 %tobool54, label %if.end60, label %if.then55

if.then55:                                        ; preds = %if.end49
  %incdec.ptr56 = getelementptr inbounds i32* %fpc.2, i64 1
  store i32 3, i32* %fpc.2, align 4, !tbaa !3
  %conv58 = and i32 %skipspaces.0.inc39, 65535
  %incdec.ptr59 = getelementptr inbounds i32* %fpc.2, i64 2
  store i32 %conv58, i32* %incdec.ptr56, align 4, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.end49, %if.then55
  %fpc.3 = phi i32* [ %incdec.ptr59, %if.then55 ], [ %fpc.2, %if.end49 ]
  br i1 %cmp50, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end60
  %incdec.ptr64 = getelementptr inbounds i32* %fpc.3, i64 1
  store i32 13, i32* %fpc.3, align 4, !tbaa !3
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60
  %fpc.4 = phi i32* [ %incdec.ptr64, %if.then63 ], [ %fpc.3, %if.end60 ]
  %tobool66 = icmp eq i8 %noblank.0539, 0
  br i1 %tobool66, label %if.end80, label %if.then67

if.then67:                                        ; preds = %if.end65
  %incdec.ptr68 = getelementptr inbounds i32* %fpc.4, i64 1
  store i32 14, i32* %fpc.4, align 4, !tbaa !3
  %tobool69 = icmp eq i8 %repeat.0537, 0
  br i1 %tobool69, label %if.end76, label %if.then70

if.then70:                                        ; preds = %if.then67
  %sub.ptr.lhs.cast71 = ptrtoint i32* %incdec.ptr68 to i64
  %sub.ptr.rhs.cast72 = ptrtoint i32* %linepc.0541 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %sub.ptr.div530 = lshr exact i64 %sub.ptr.sub73, 2
  %add74 = add nsw i64 %sub.ptr.div530, 1
  %phitmp = trunc i64 %add74 to i32
  %phitmp529 = and i32 %phitmp, 65535
  br label %if.end76

if.end76:                                         ; preds = %if.then67, %if.then70
  %arg.0 = phi i32 [ %phitmp529, %if.then70 ], [ 0, %if.then67 ]
  %incdec.ptr79 = getelementptr inbounds i32* %fpc.4, i64 2
  store i32 %arg.0, i32* %incdec.ptr68, align 4, !tbaa !3
  br label %if.end80

if.end80:                                         ; preds = %if.end65, %if.end76
  %fpc.5 = phi i32* [ %incdec.ptr79, %if.end76 ], [ %fpc.4, %if.end65 ]
  %cmp81 = icmp ult i8* %incdec.ptr24, %add.ptr
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.end80
  %incdec.ptr84 = getelementptr inbounds i32* %fpc.5, i64 1
  store i32 1, i32* %fpc.5, align 4, !tbaa !3
  br label %while.cond.backedge

if.else85:                                        ; preds = %if.end80
  %incdec.ptr86 = getelementptr inbounds i8* %s.1545, i64 2
  br label %while.cond.backedge

sw.bb88:                                          ; preds = %while.body, %while.body
  %cmp91 = icmp eq i8 %9, 94
  %tobool94 = icmp eq i8 %postspace.0538, 0
  br i1 %tobool94, label %if.end97, label %if.then95

if.then95:                                        ; preds = %sw.bb88
  %incdec.ptr96 = getelementptr inbounds i32* %fpc.0540, i64 1
  store i32 7, i32* %fpc.0540, align 4, !tbaa !3
  br label %if.end97

if.end97:                                         ; preds = %sw.bb88, %if.then95
  %fpc.6 = phi i32* [ %incdec.ptr96, %if.then95 ], [ %fpc.0540, %sw.bb88 ]
  %sub.ptr.lhs.cast98 = ptrtoint i8* %incdec.ptr24 to i64
  %sub.ptr.rhs.cast99 = ptrtoint i8* %base.0544 to i64
  %sub.ptr.sub100 = sub i64 4294967295, %sub.ptr.rhs.cast99
  %sub101 = add i64 %sub.ptr.sub100, %sub.ptr.lhs.cast98
  %conv102 = trunc i64 %sub101 to i32
  %tobool103 = icmp eq i32 %conv102, 0
  br i1 %tobool103, label %if.end109, label %if.then104

if.then104:                                       ; preds = %if.end97
  %incdec.ptr105 = getelementptr inbounds i32* %fpc.6, i64 1
  store i32 2, i32* %fpc.6, align 4, !tbaa !3
  %conv107 = and i32 %conv102, 65535
  %incdec.ptr108 = getelementptr inbounds i32* %fpc.6, i64 2
  store i32 %conv107, i32* %incdec.ptr105, align 4, !tbaa !3
  br label %if.end109

if.end109:                                        ; preds = %if.end97, %if.then104
  %fpc.7 = phi i32* [ %incdec.ptr108, %if.then104 ], [ %fpc.6, %if.end97 ]
  %incdec.ptr111 = getelementptr inbounds i32* %fpc.7, i64 1
  store i32 4, i32* %fpc.7, align 4, !tbaa !3
  %11 = load i8* %incdec.ptr24, align 1, !tbaa !1
  switch i8 %11, label %if.end292 [
    i8 42, label %if.then115
    i8 35, label %if.then137
    i8 46, label %land.lhs.true
    i8 48, label %land.lhs.true184
    i8 62, label %while.cond243
    i8 124, label %while.cond255
    i8 60, label %while.cond267
  ]

if.then115:                                       ; preds = %if.end109
  %incdec.ptr116 = getelementptr inbounds i8* %s.1545, i64 2
  %incdec.ptr117 = getelementptr inbounds i32* %fpc.7, i64 2
  store i32 2, i32* %incdec.ptr111, align 4, !tbaa !3
  %incdec.ptr120 = getelementptr inbounds i32* %fpc.7, i64 3
  br i1 %cmp91, label %if.then119, label %if.else122

if.then119:                                       ; preds = %if.then115
  store i32 17, i32* %incdec.ptr117, align 4, !tbaa !3
  %incdec.ptr121 = getelementptr inbounds i32* %fpc.7, i64 4
  store i32 10, i32* %incdec.ptr120, align 4, !tbaa !3
  br label %while.cond.backedge

if.else122:                                       ; preds = %if.then115
  store i32 11, i32* %incdec.ptr117, align 4, !tbaa !3
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end109
  %arrayidx133 = getelementptr inbounds i8* %s.1545, i64 2
  %12 = load i8* %arrayidx133, align 1, !tbaa !1
  %cmp135 = icmp eq i8 %12, 35
  br i1 %cmp135, label %if.then137, label %land.lhs.true280

if.then137:                                       ; preds = %if.end109, %land.lhs.true
  %cond140 = select i1 %cmp91, i32 512, i32 0
  br label %while.cond142

while.cond142:                                    ; preds = %while.body146, %if.then137
  %13 = phi i8 [ %11, %if.then137 ], [ %.pre556, %while.body146 ]
  %s.2 = phi i8* [ %incdec.ptr24, %if.then137 ], [ %incdec.ptr147, %while.body146 ]
  switch i8 %13, label %if.end166 [
    i8 35, label %while.body146
    i8 46, label %if.then151
  ]

while.body146:                                    ; preds = %while.cond142
  %incdec.ptr147 = getelementptr inbounds i8* %s.2, i64 1
  %.pre556 = load i8* %incdec.ptr147, align 1, !tbaa !1
  br label %while.cond142

if.then151:                                       ; preds = %while.cond142
  %incdec.ptr152 = getelementptr inbounds i8* %s.2, i64 1
  br label %while.cond153

while.cond153:                                    ; preds = %while.cond153, %if.then151
  %s.3 = phi i8* [ %incdec.ptr152, %if.then151 ], [ %incdec.ptr158, %while.cond153 ]
  %14 = load i8* %s.3, align 1, !tbaa !1
  %cmp155 = icmp eq i8 %14, 35
  %incdec.ptr158 = getelementptr inbounds i8* %s.3, i64 1
  br i1 %cmp155, label %while.cond153, label %while.end159

while.end159:                                     ; preds = %while.cond153
  %sub.ptr.lhs.cast160 = ptrtoint i8* %s.3 to i64
  %sub.ptr.rhs.cast161 = ptrtoint i8* %incdec.ptr152 to i64
  %sub.ptr.sub162 = sub i64 256, %sub.ptr.rhs.cast161
  %add163 = add i64 %sub.ptr.sub162, %sub.ptr.lhs.cast160
  %conv164528 = zext i32 %cond140 to i64
  %or = or i64 %add163, %conv164528
  %conv165 = trunc i64 %or to i32
  br label %if.end166

if.end166:                                        ; preds = %while.cond142, %while.end159
  %arg.1 = phi i32 [ %conv165, %while.end159 ], [ %cond140, %while.cond142 ]
  %s.4 = phi i8* [ %s.3, %while.end159 ], [ %s.2, %while.cond142 ]
  %sub.ptr.lhs.cast167 = ptrtoint i8* %s.4 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %s.1545 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %conv170 = trunc i64 %sub.ptr.sub169 to i32
  %incdec.ptr171 = getelementptr inbounds i32* %fpc.7, i64 2
  store i32 %conv170, i32* %incdec.ptr111, align 4, !tbaa !3
  %incdec.ptr172 = getelementptr inbounds i32* %fpc.7, i64 3
  store i32 12, i32* %incdec.ptr171, align 4, !tbaa !3
  %conv174 = and i32 %arg.1, 65535
  %incdec.ptr175 = getelementptr inbounds i32* %fpc.7, i64 4
  store i32 %conv174, i32* %incdec.ptr172, align 4, !tbaa !3
  %15 = zext i1 %cmp91 to i8
  %lnot.ext = xor i8 %15, 1
  %or178 = or i8 %lnot.ext, %unchopnum.0543
  br label %while.cond.backedge

land.lhs.true184:                                 ; preds = %if.end109
  %arrayidx185 = getelementptr inbounds i8* %s.1545, i64 2
  %16 = load i8* %arrayidx185, align 1, !tbaa !1
  %cmp187 = icmp eq i8 %16, 35
  br i1 %cmp187, label %if.then189, label %if.end292

if.then189:                                       ; preds = %land.lhs.true184
  %cond192 = select i1 %cmp91, i32 512, i32 0
  br label %while.cond195

while.cond195:                                    ; preds = %while.body199, %if.then189
  %17 = phi i8 [ 35, %if.then189 ], [ %.pre555, %while.body199 ]
  %s.5 = phi i8* [ %arrayidx185, %if.then189 ], [ %incdec.ptr200, %while.body199 ]
  switch i8 %17, label %if.end222 [
    i8 35, label %while.body199
    i8 46, label %if.then205
  ]

while.body199:                                    ; preds = %while.cond195
  %incdec.ptr200 = getelementptr inbounds i8* %s.5, i64 1
  %.pre555 = load i8* %incdec.ptr200, align 1, !tbaa !1
  br label %while.cond195

if.then205:                                       ; preds = %while.cond195
  %incdec.ptr207 = getelementptr inbounds i8* %s.5, i64 1
  br label %while.cond208

while.cond208:                                    ; preds = %while.cond208, %if.then205
  %s.6 = phi i8* [ %incdec.ptr207, %if.then205 ], [ %incdec.ptr213, %while.cond208 ]
  %18 = load i8* %s.6, align 1, !tbaa !1
  %cmp210 = icmp eq i8 %18, 35
  %incdec.ptr213 = getelementptr inbounds i8* %s.6, i64 1
  br i1 %cmp210, label %while.cond208, label %while.end214

while.end214:                                     ; preds = %while.cond208
  %sub.ptr.lhs.cast215 = ptrtoint i8* %s.6 to i64
  %sub.ptr.rhs.cast216 = ptrtoint i8* %incdec.ptr207 to i64
  %sub.ptr.sub217 = sub i64 256, %sub.ptr.rhs.cast216
  %add218 = add i64 %sub.ptr.sub217, %sub.ptr.lhs.cast215
  %conv219526 = zext i32 %cond192 to i64
  %or220 = or i64 %add218, %conv219526
  %conv221 = trunc i64 %or220 to i32
  br label %if.end222

if.end222:                                        ; preds = %while.cond195, %while.end214
  %arg.2 = phi i32 [ %conv221, %while.end214 ], [ %cond192, %while.cond195 ]
  %s.7 = phi i8* [ %s.6, %while.end214 ], [ %s.5, %while.cond195 ]
  %sub.ptr.lhs.cast223 = ptrtoint i8* %s.7 to i64
  %sub.ptr.rhs.cast224 = ptrtoint i8* %s.1545 to i64
  %sub.ptr.sub225 = sub i64 %sub.ptr.lhs.cast223, %sub.ptr.rhs.cast224
  %conv226 = trunc i64 %sub.ptr.sub225 to i32
  %incdec.ptr227 = getelementptr inbounds i32* %fpc.7, i64 2
  store i32 %conv226, i32* %incdec.ptr111, align 4, !tbaa !3
  %incdec.ptr228 = getelementptr inbounds i32* %fpc.7, i64 3
  store i32 16, i32* %incdec.ptr227, align 4, !tbaa !3
  %conv230 = and i32 %arg.2, 65535
  %incdec.ptr231 = getelementptr inbounds i32* %fpc.7, i64 4
  store i32 %conv230, i32* %incdec.ptr228, align 4, !tbaa !3
  %19 = zext i1 %cmp91 to i8
  %lnot.ext234 = xor i8 %19, 1
  %or236 = or i8 %lnot.ext234, %unchopnum.0543
  br label %while.cond.backedge

while.cond243:                                    ; preds = %if.end109, %while.cond243
  %s.8 = phi i8* [ %incdec.ptr244, %while.cond243 ], [ %incdec.ptr24, %if.end109 ]
  %incdec.ptr244 = getelementptr inbounds i8* %s.8, i64 1
  %20 = load i8* %incdec.ptr244, align 1, !tbaa !1
  %cmp246 = icmp eq i8 %20, 62
  br i1 %cmp246, label %while.cond243, label %if.end276

while.cond255:                                    ; preds = %if.end109, %while.cond255
  %s.9 = phi i8* [ %incdec.ptr256, %while.cond255 ], [ %incdec.ptr24, %if.end109 ]
  %incdec.ptr256 = getelementptr inbounds i8* %s.9, i64 1
  %21 = load i8* %incdec.ptr256, align 1, !tbaa !1
  %cmp258 = icmp eq i8 %21, 124
  br i1 %cmp258, label %while.cond255, label %if.end276

while.cond267:                                    ; preds = %if.end109, %while.cond267
  %s.10 = phi i8* [ %incdec.ptr268, %while.cond267 ], [ %incdec.ptr24, %if.end109 ]
  %incdec.ptr268 = getelementptr inbounds i8* %s.10, i64 1
  %22 = load i8* %incdec.ptr268, align 1, !tbaa !1
  %cmp270 = icmp eq i8 %22, 60
  br i1 %cmp270, label %while.cond267, label %if.end276

if.end276:                                        ; preds = %while.cond243, %while.cond255, %while.cond267
  %23 = phi i8 [ %22, %while.cond267 ], [ %21, %while.cond255 ], [ %20, %while.cond243 ]
  %postspace.2 = phi i8 [ 1, %while.cond267 ], [ 1, %while.cond255 ], [ 0, %while.cond243 ]
  %s.12 = phi i8* [ %incdec.ptr268, %while.cond267 ], [ %incdec.ptr256, %while.cond255 ], [ %incdec.ptr244, %while.cond243 ]
  %prespace.0 = phi i32 [ 0, %while.cond267 ], [ 8, %while.cond255 ], [ 7, %while.cond243 ]
  %cmp278 = icmp eq i8 %23, 46
  br i1 %cmp278, label %land.lhs.true280, label %if.end292

land.lhs.true280:                                 ; preds = %land.lhs.true, %if.end276
  %prespace.0567 = phi i32 [ %prespace.0, %if.end276 ], [ 0, %land.lhs.true ]
  %s.12566 = phi i8* [ %s.12, %if.end276 ], [ %incdec.ptr24, %land.lhs.true ]
  %postspace.2565 = phi i8 [ %postspace.2, %if.end276 ], [ 1, %land.lhs.true ]
  %arrayidx281 = getelementptr inbounds i8* %s.12566, i64 1
  %24 = load i8* %arrayidx281, align 1, !tbaa !1
  %cmp283 = icmp eq i8 %24, 46
  br i1 %cmp283, label %land.lhs.true285, label %if.end292

land.lhs.true285:                                 ; preds = %land.lhs.true280
  %arrayidx286 = getelementptr inbounds i8* %s.12566, i64 2
  %25 = load i8* %arrayidx286, align 1, !tbaa !1
  %cmp288 = icmp eq i8 %25, 46
  %add.ptr291 = getelementptr inbounds i8* %s.12566, i64 3
  %add.ptr291.s.12 = select i1 %cmp288, i8* %add.ptr291, i8* %s.12566
  %. = zext i1 %cmp288 to i8
  br label %if.end292

if.end292:                                        ; preds = %if.end109, %land.lhs.true184, %land.lhs.true285, %land.lhs.true280, %if.end276
  %prespace.0563 = phi i32 [ %prespace.0567, %land.lhs.true280 ], [ %prespace.0, %if.end276 ], [ %prespace.0567, %land.lhs.true285 ], [ 0, %land.lhs.true184 ], [ 0, %if.end109 ]
  %postspace.2562 = phi i8 [ %postspace.2565, %land.lhs.true280 ], [ %postspace.2, %if.end276 ], [ %postspace.2565, %land.lhs.true285 ], [ 1, %land.lhs.true184 ], [ 1, %if.end109 ]
  %s.13 = phi i8* [ %s.12566, %land.lhs.true280 ], [ %s.12, %if.end276 ], [ %add.ptr291.s.12, %land.lhs.true285 ], [ %incdec.ptr24, %land.lhs.true184 ], [ %incdec.ptr24, %if.end109 ]
  %ismore.0 = phi i8 [ 0, %land.lhs.true280 ], [ 0, %if.end276 ], [ %., %land.lhs.true285 ], [ 0, %land.lhs.true184 ], [ 0, %if.end109 ]
  %sub.ptr.lhs.cast293 = ptrtoint i8* %s.13 to i64
  %sub.ptr.rhs.cast294 = ptrtoint i8* %s.1545 to i64
  %sub.ptr.sub295 = sub i64 %sub.ptr.lhs.cast293, %sub.ptr.rhs.cast294
  %conv296 = trunc i64 %sub.ptr.sub295 to i32
  %incdec.ptr297 = getelementptr inbounds i32* %fpc.7, i64 2
  store i32 %conv296, i32* %incdec.ptr111, align 4, !tbaa !3
  %cond300 = select i1 %cmp91, i32 6, i32 5
  %incdec.ptr301 = getelementptr inbounds i32* %fpc.7, i64 3
  store i32 %cond300, i32* %incdec.ptr297, align 4, !tbaa !3
  %tobool302 = icmp eq i32 %prespace.0563, 0
  br i1 %tobool302, label %if.end307, label %if.then303

if.then303:                                       ; preds = %if.end292
  %incdec.ptr306 = getelementptr inbounds i32* %fpc.7, i64 4
  store i32 %prespace.0563, i32* %incdec.ptr301, align 4, !tbaa !3
  br label %if.end307

if.end307:                                        ; preds = %if.end292, %if.then303
  %fpc.8 = phi i32* [ %incdec.ptr306, %if.then303 ], [ %incdec.ptr301, %if.end292 ]
  %incdec.ptr308 = getelementptr inbounds i32* %fpc.8, i64 1
  store i32 9, i32* %fpc.8, align 4, !tbaa !3
  %tobool309 = icmp eq i8 %ismore.0, 0
  br i1 %tobool309, label %if.end312, label %if.then310

if.then310:                                       ; preds = %if.end307
  %incdec.ptr311 = getelementptr inbounds i32* %fpc.8, i64 2
  store i32 15, i32* %incdec.ptr308, align 4, !tbaa !3
  br label %if.end312

if.end312:                                        ; preds = %if.end307, %if.then310
  %fpc.9 = phi i32* [ %incdec.ptr311, %if.then310 ], [ %incdec.ptr308, %if.end307 ]
  br i1 %cmp91, label %if.then314, label %while.cond.backedge

if.then314:                                       ; preds = %if.end312
  %incdec.ptr315 = getelementptr inbounds i32* %fpc.9, i64 1
  store i32 10, i32* %fpc.9, align 4, !tbaa !3
  br label %while.cond.backedge

while.end320:                                     ; preds = %while.cond.backedge, %while.cond.preheader
  %unchopnum.0.lcssa = phi i8 [ 0, %while.cond.preheader ], [ %unchopnum.0.be, %while.cond.backedge ]
  %fpc.0.lcssa = phi i32* [ %fpc.0.ph, %while.cond.preheader ], [ %fpc.0.be, %while.cond.backedge ]
  %repeat.0.lcssa = phi i8 [ 0, %while.cond.preheader ], [ %repeat.0.be, %while.cond.backedge ]
  %incdec.ptr321 = getelementptr inbounds i32* %fpc.0.lcssa, i64 1
  store i32 0, i32* %fpc.0.lcssa, align 4, !tbaa !3
  %sub.ptr.lhs.cast322 = ptrtoint i32* %incdec.ptr321 to i64
  %sub.ptr.rhs.cast323 = ptrtoint i8* %call16 to i64
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323
  %sv_any327 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %26 = load i8** %sv_any327, align 8, !tbaa !0
  %xpv_cur328 = getelementptr inbounds i8* %26, i64 8
  %27 = bitcast i8* %xpv_cur328 to i64*
  %28 = load i64* %27, align 8, !tbaa !4
  %rem = and i64 %28, 3
  %sub329 = sub i64 4, %rem
  %xpv_len = getelementptr inbounds i8* %26, i64 16
  %29 = bitcast i8* %xpv_len to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  %31 = shl i64 %sub.ptr.sub324, 30
  %conv336 = ashr i64 %31, 32
  %mul337 = shl nsw i64 %conv336, 2
  %add335 = add i64 %mul337, 4
  %add338 = add i64 %add335, %28
  %add339 = add i64 %add338, %sub329
  %cmp340 = icmp ult i64 %30, %add339
  br i1 %cmp340, label %cond.true342, label %cond.end355

cond.true342:                                     ; preds = %while.end320
  %call351 = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add339) #7
  %.pre = load i8** %sv_any327, align 8, !tbaa !0
  %xpv_cur360.phi.trans.insert = getelementptr inbounds i8* %.pre, i64 8
  %.phi.trans.insert = bitcast i8* %xpv_cur360.phi.trans.insert to i64*
  %.pre554 = load i64* %.phi.trans.insert, align 8, !tbaa !4
  br label %cond.end355

cond.end355:                                      ; preds = %while.end320, %cond.true342
  %32 = phi i64 [ %28, %while.end320 ], [ %.pre554, %cond.true342 ]
  %33 = phi i8* [ %26, %while.end320 ], [ %.pre, %cond.true342 ]
  %xpv_pv358 = bitcast i8* %33 to i8**
  %34 = load i8** %xpv_pv358, align 8, !tbaa !0
  %add.ptr361.sum = add i64 %32, %sub329
  %add.ptr362 = getelementptr inbounds i8* %34, i64 %add.ptr361.sum
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr362, i8* %call16, i64 %mul337, i32 1, i1 false)
  call void @Perl_safesysfree(i8* %call16) #7
  call void @Perl_sv_magic(%struct.sv* %sv, %struct.sv* null, i32 102, i8* null, i32 0) #7
  %35 = load i32* %sv_flags, align 4, !tbaa !3
  %or366 = or i32 %35, -2147483648
  store i32 %or366, i32* %sv_flags, align 4, !tbaa !3
  %tobool368 = icmp eq i8 %unchopnum.0.lcssa, 0
  %tobool371 = icmp eq i8 %repeat.0.lcssa, 0
  %or.cond = or i1 %tobool368, %tobool371
  br i1 %or.cond, label %return, label %if.then372

if.then372:                                       ; preds = %cond.end355
  %call373 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([54 x i8]* @.str73, i64 0, i64 0)) #7
  br label %return

return:                                           ; preds = %cond.end355, %if.then372
  %retval.0 = phi %struct.op* [ %call373, %if.then372 ], [ null, %cond.end355 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_pos_u2b(%struct.sv*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: optsize
declare void @Perl_sv_chop(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_grepstart() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %cmp = icmp eq %struct.sv** %add.ptr, %0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %4, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 3
  switch i32 %and, label %cond.false16 [
    i32 1, label %if.end31
    i32 2, label %if.then23
    i32 3, label %if.end31
  ]

cond.false16:                                     ; preds = %if.then
  %call = tail call i32 @Perl_block_gimme() #8
  %phitmp = icmp eq i32 %call, 0
  br i1 %phitmp, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.then, %cond.false16
  %6 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp24 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp24, label %if.then26, label %if.end

if.then26:                                        ; preds = %if.then23
  %call27 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.then23
  %sp.0 = phi %struct.sv** [ %call27, %if.then26 ], [ %0, %if.then23 ]
  %call28 = tail call %struct.sv* @Perl_newSViv(i64 0) #7
  %call29 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call28) #7
  %incdec.ptr30 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call29, %struct.sv** %incdec.ptr30, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %cond.false16, %if.then, %if.then, %if.end
  %sp.1 = phi %struct.sv** [ %incdec.ptr30, %if.end ], [ %0, %if.then ], [ %0, %if.then ], [ %0, %cond.false16 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %7, i64 0, i32 0
  %8 = load %struct.op** %op_next, align 8, !tbaa !0
  %op_next32 = getelementptr inbounds %struct.op* %8, i64 0, i32 0
  br label %return

if.end33:                                         ; preds = %entry
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr36 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  store %struct.sv** %add.ptr36, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call37 = tail call %struct.op* @Perl_pp_pushmark() #7
  %call38 = tail call %struct.op* @Perl_pp_pushmark() #7
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %9 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %9, i32* @PL_tmps_floor, align 4, !tbaa !3
  %10 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %10, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %12, i64 0, i32 0
  tail call void @Perl_save_sptr(%struct.sv** %gp_sv) #7
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_vptr(i8* bitcast (%struct.pmop** @PL_curpm to i8*)) #7
  %13 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %14 = load i32* %13, align 4, !tbaa !3
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  %16 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %17 = load i32* %sv_flags, align 4, !tbaa !3
  %and39 = and i32 %17, -2049
  store i32 %and39, i32* %sv_flags, align 4, !tbaa !3
  %18 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any40 = getelementptr inbounds %struct.gv* %18, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any40, align 8, !tbaa !0
  %xgv_gp41 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp41, align 8, !tbaa !0
  %gp_sv42 = getelementptr inbounds %struct.gp* %20, i64 0, i32 0
  store %struct.sv* %16, %struct.sv** %gp_sv42, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %21, i64 0, i32 4
  %22 = load i16* %op_type, align 2, !tbaa !6
  %cmp44 = icmp eq i16 %22, 154
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end33
  %call47 = tail call %struct.op* @Perl_pp_pushmark() #7
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end33
  %23 = phi %struct.op* [ %.pre, %if.then46 ], [ %21, %if.end33 ]
  %op_next49 = getelementptr inbounds %struct.op* %23, i64 0, i32 0
  %24 = load %struct.op** %op_next49, align 8, !tbaa !0
  %25 = getelementptr inbounds %struct.op* %24, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.end48, %if.end31
  %retval.0.in = phi %struct.op** [ %op_next32, %if.end31 ], [ %25, %if.end48 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_block_gimme() #0 {
entry:
  %0 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 2
  %1 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 1
  %2 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %cmp4.i.i = icmp sgt i32 %1, -1
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %return

for.body.lr.ph.i.i:                               ; preds = %entry
  %3 = sext i32 %1 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %3, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %i.05.i.i = phi i32 [ %1, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cx_type.i.i = getelementptr inbounds %struct.context* %2, i64 %indvars.iv.i.i, i32 0
  %4 = load i32* %cx_type.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %4, 255
  switch i32 %and.i.i, label %for.inc.i.i [
    i32 2, label %S_dopoptosub.exit
    i32 1, label %S_dopoptosub.exit
    i32 6, label %S_dopoptosub.exit
  ]

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %dec.i.i = add nsw i32 %i.05.i.i, -1
  %5 = trunc i64 %indvars.iv.i.i to i32
  %cmp.i.i = icmp sgt i32 %5, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %S_dopoptosub.exit

S_dopoptosub.exit:                                ; preds = %for.body.i.i, %for.body.i.i, %for.body.i.i, %for.inc.i.i
  %i.0.lcssa.i.i = phi i32 [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cmp = icmp slt i32 %i.0.lcssa.i.i, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %S_dopoptosub.exit
  %idxprom = sext i32 %i.0.lcssa.i.i to i64
  %blku_gimme = getelementptr inbounds %struct.context* %2, i64 %idxprom, i32 1, i32 0, i32 6
  %6 = load i8* %blku_gimme, align 1, !tbaa !1
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 128, label %return
    i32 0, label %return
    i32 1, label %return
  ]

sw.default:                                       ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str14, i64 0, i64 0), i32 %conv) #7
  br label %return

return:                                           ; preds = %entry, %if.end, %if.end, %if.end, %S_dopoptosub.exit, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 128, %S_dopoptosub.exit ], [ %conv, %if.end ], [ %conv, %if.end ], [ %conv, %if.end ], [ 128, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pushmark() #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #1

; Function Attrs: optsize
declare void @Perl_save_vptr(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_mapstart() #0 {
entry:
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #7
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_mapwhile() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
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
  %call = tail call i32 @Perl_block_gimme() #8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i32 [ 128, %entry ], [ 0, %cond.false ], [ %call, %cond.false15 ], [ 1, %cond.false8 ]
  %3 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div182 = lshr exact i64 %sub.ptr.sub, 3
  %4 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %5 = load i32* %4, align 4, !tbaa !3
  %conv20183 = zext i32 %5 to i64
  %sub = sub i64 %sub.ptr.div182, %conv20183
  %conv21 = trunc i64 %sub to i32
  %arrayidx = getelementptr inbounds i32* %4, i64 -1
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !3
  %tobool = icmp eq i32 %conv21, 0
  %cmp22 = icmp eq i32 %cond19, 128
  %or.cond = or i1 %tobool, %cmp22
  br i1 %or.cond, label %if.end94, label %if.then

if.then:                                          ; preds = %cond.end18
  %arrayidx25 = getelementptr inbounds i32* %4, i64 -2
  %7 = load i32* %arrayidx25, align 4, !tbaa !3
  %sub26 = sub nsw i32 %inc, %7
  %cmp27 = icmp sgt i32 %conv21, %sub26
  br i1 %cmp27, label %if.then29, label %if.end60

if.then29:                                        ; preds = %if.then
  %sub33 = sub nsw i32 %conv21, %sub26
  %conv40185 = zext i32 %6 to i64
  %sub41 = sub nsw i64 %sub.ptr.div182, %conv40185
  %conv42 = trunc i64 %sub41 to i32
  %cmp43 = icmp slt i32 %sub33, %conv42
  %conv42.sub33 = select i1 %cmp43, i32 %conv42, i32 %sub33
  %8 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast46 = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.lhs.cast
  %sub.ptr.div49 = ashr exact i64 %sub.ptr.sub48, 3
  %conv50 = sext i32 %conv42.sub33 to i64
  %cmp51 = icmp slt i64 %sub.ptr.div49, %conv50
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then29
  %call54 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 %conv42.sub33) #7
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %arrayidx56.phi.trans.insert = getelementptr inbounds i32* %.pre, i64 -1
  %.pre202 = load i32* %arrayidx56.phi.trans.insert, align 4, !tbaa !3
  %.pre203 = load i32* %.pre, align 4, !tbaa !3
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then29
  %9 = phi i32 [ %.pre203, %if.then53 ], [ %5, %if.then29 ]
  %10 = phi i32 [ %.pre202, %if.then53 ], [ %inc, %if.then29 ]
  %11 = phi i32* [ %.pre, %if.then53 ], [ %4, %if.then29 ]
  %sp.0 = phi %struct.sv** [ %call54, %if.then53 ], [ %0, %if.then29 ]
  %add.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 %conv50
  %arrayidx56 = getelementptr inbounds i32* %11, i64 -1
  %add = add nsw i32 %10, %conv42.sub33
  store i32 %add, i32* %arrayidx56, align 4, !tbaa !3
  %add57 = add nsw i32 %9, %conv42.sub33
  store i32 %add57, i32* %11, align 4, !tbaa !3
  %tobool58197 = icmp eq i32 %conv42, 0
  br i1 %tobool58197, label %if.end60.loopexit, label %while.body

while.body:                                       ; preds = %if.end55, %while.body
  %dst.0200 = phi %struct.sv** [ %incdec.ptr59, %while.body ], [ %add.ptr, %if.end55 ]
  %src.0199 = phi %struct.sv** [ %incdec.ptr, %while.body ], [ %sp.0, %if.end55 ]
  %count.0198 = phi i32 [ %dec, %while.body ], [ %conv42, %if.end55 ]
  %dec = add nsw i32 %count.0198, -1
  %incdec.ptr = getelementptr inbounds %struct.sv** %src.0199, i64 -1
  %12 = load %struct.sv** %src.0199, align 8, !tbaa !0
  %incdec.ptr59 = getelementptr inbounds %struct.sv** %dst.0200, i64 -1
  store %struct.sv* %12, %struct.sv** %dst.0200, align 8, !tbaa !0
  %tobool58 = icmp eq i32 %dec, 0
  br i1 %tobool58, label %while.cond.if.end60.loopexit_crit_edge, label %while.body

while.cond.if.end60.loopexit_crit_edge:           ; preds = %while.body
  %.pre205.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end60.loopexit

if.end60.loopexit:                                ; preds = %if.end55, %while.cond.if.end60.loopexit_crit_edge
  %.pre205 = phi i32* [ %.pre205.pre, %while.cond.if.end60.loopexit_crit_edge ], [ %11, %if.end55 ]
  %.pre204 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx61.phi.trans.insert = getelementptr inbounds i32* %.pre205, i64 -2
  %.pre206 = load i32* %arrayidx61.phi.trans.insert, align 4, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.end60.loopexit, %if.then
  %13 = phi i32 [ %7, %if.then ], [ %.pre206, %if.end60.loopexit ]
  %14 = phi i32* [ %4, %if.then ], [ %.pre205, %if.end60.loopexit ]
  %15 = phi %struct.sv** [ %3, %if.then ], [ %.pre204, %if.end60.loopexit ]
  %sp.1 = phi %struct.sv** [ %0, %if.then ], [ %add.ptr, %if.end60.loopexit ]
  %arrayidx61 = getelementptr inbounds i32* %14, i64 -2
  %add62 = add nsw i32 %13, %conv21
  store i32 %add62, i32* %arrayidx61, align 4, !tbaa !3
  %idx.ext63 = sext i32 %add62 to i64
  %add.ptr64.sum = add i64 %idx.ext63, -1
  %add.ptr65 = getelementptr inbounds %struct.sv** %15, i64 %add.ptr64.sum
  %cmp66 = icmp eq i32 %cond19, 1
  %cmp71187 = icmp sgt i32 %conv21, 0
  br i1 %cmp66, label %while.cond69.preheader, label %while.cond85.preheader

while.cond85.preheader:                           ; preds = %if.end60
  br i1 %cmp71187, label %while.body89.lr.ph, label %if.end94

while.body89.lr.ph:                               ; preds = %while.cond85.preheader
  %16 = add i64 %sub, 4294967295
  %.not = or i64 %16, -4294967296
  %17 = xor i64 %.not, 4294967295
  br label %while.body89

while.cond69.preheader:                           ; preds = %if.end60
  br i1 %cmp71187, label %while.body73.lr.ph, label %if.end94

while.body73.lr.ph:                               ; preds = %while.cond69.preheader
  %18 = add i64 %sub, 4294967295
  %.not208 = or i64 %18, -4294967296
  %19 = xor i64 %.not208, 4294967295
  br label %while.body73

while.body73:                                     ; preds = %while.body73.lr.ph, %cond.end81
  %dec70190.in = phi i32 [ %conv21, %while.body73.lr.ph ], [ %dec70190, %cond.end81 ]
  %sp.2189 = phi %struct.sv** [ %sp.1, %while.body73.lr.ph ], [ %incdec.ptr77, %cond.end81 ]
  %dst.1188 = phi %struct.sv** [ %add.ptr65, %while.body73.lr.ph ], [ %incdec.ptr83, %cond.end81 ]
  %dec70190 = add nsw i32 %dec70190.in, -1
  %20 = load %struct.sv** %sp.2189, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %20, i64 0, i32 2
  %21 = load i32* %sv_flags, align 4, !tbaa !3
  %and74 = and i32 %21, 2048
  %tobool75 = icmp eq i32 %and74, 0
  %incdec.ptr77 = getelementptr inbounds %struct.sv** %sp.2189, i64 -1
  br i1 %tobool75, label %cond.false78, label %cond.end81

cond.false78:                                     ; preds = %while.body73
  %call80 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %20) #7
  br label %cond.end81

cond.end81:                                       ; preds = %while.body73, %cond.false78
  %cond82 = phi %struct.sv* [ %call80, %cond.false78 ], [ %20, %while.body73 ]
  %incdec.ptr83 = getelementptr inbounds %struct.sv** %dst.1188, i64 -1
  store %struct.sv* %cond82, %struct.sv** %dst.1188, align 8, !tbaa !0
  %cmp71 = icmp sgt i32 %dec70190, 0
  br i1 %cmp71, label %while.body73, label %while.cond69.if.end94.loopexit_crit_edge

while.body89:                                     ; preds = %while.body89.lr.ph, %while.body89
  %dst.2194 = phi %struct.sv** [ %add.ptr65, %while.body89.lr.ph ], [ %incdec.ptr91, %while.body89 ]
  %items.1193 = phi i32 [ %conv21, %while.body89.lr.ph ], [ %dec86, %while.body89 ]
  %dec86 = add nsw i32 %items.1193, -1
  %incdec.ptr91 = getelementptr inbounds %struct.sv** %dst.2194, i64 -1
  store %struct.sv* @PL_sv_undef, %struct.sv** %dst.2194, align 8, !tbaa !0
  %cmp87 = icmp sgt i32 %dec86, 0
  br i1 %cmp87, label %while.body89, label %while.cond85.if.end94.loopexit191_crit_edge

while.cond69.if.end94.loopexit_crit_edge:         ; preds = %cond.end81
  %scevgep = getelementptr %struct.sv** %sp.1, i64 %19
  br label %if.end94

while.cond85.if.end94.loopexit191_crit_edge:      ; preds = %while.body89
  %scevgep201 = getelementptr %struct.sv** %sp.1, i64 %17
  br label %if.end94

if.end94:                                         ; preds = %while.cond85.preheader, %while.cond85.if.end94.loopexit191_crit_edge, %while.cond69.preheader, %while.cond69.if.end94.loopexit_crit_edge, %cond.end18
  %sp.4 = phi %struct.sv** [ %0, %cond.end18 ], [ %scevgep, %while.cond69.if.end94.loopexit_crit_edge ], [ %sp.1, %while.cond69.preheader ], [ %scevgep201, %while.cond85.if.end94.loopexit191_crit_edge ], [ %sp.1, %while.cond85.preheader ]
  tail call void @Perl_pop_scope() #7
  %22 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i32* %22, i64 -1
  %23 = load i32* %arrayidx95, align 4, !tbaa !3
  %24 = load i32* %22, align 4, !tbaa !3
  %cmp96 = icmp sgt i32 %23, %24
  br i1 %cmp96, label %if.then98, label %if.else137

if.then98:                                        ; preds = %if.end94
  store i32* %arrayidx95, i32** @PL_markstack_ptr, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  %25 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr100 = getelementptr inbounds i32* %25, i64 -1
  %26 = load i32* %incdec.ptr100, align 4, !tbaa !3
  %dec101 = add nsw i32 %26, -1
  store i32 %dec101, i32* %incdec.ptr100, align 4, !tbaa !3
  %arrayidx102 = getelementptr inbounds i32* %25, i64 -2
  %27 = load i32* %arrayidx102, align 4, !tbaa !3
  %sub103 = sub nsw i32 %dec101, %27
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %incdec.ptr105 = getelementptr inbounds i32* %25, i64 -3
  store i32* %incdec.ptr105, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %idx.ext106 = sext i32 %27 to i64
  %add.ptr107 = getelementptr inbounds %struct.sv** %28, i64 %idx.ext106
  switch i32 %cond19, label %if.end136 [
    i32 0, label %if.then110
    i32 1, label %if.then132
  ]

if.then110:                                       ; preds = %if.then98
  %29 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %29, i64 0, i32 3
  %30 = load i64* %op_targ, align 8, !tbaa !4
  %31 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds %struct.sv** %31, i64 %30
  %32 = load %struct.sv** %arrayidx111, align 8, !tbaa !0
  %conv112 = sext i32 %sub103 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %32, i64 %conv112) #7
  %sv_flags113 = getelementptr inbounds %struct.sv* %32, i64 0, i32 2
  %33 = load i32* %sv_flags113, align 4, !tbaa !3
  %and114 = and i32 %33, 16384
  %tobool115 = icmp eq i32 %and114, 0
  br i1 %tobool115, label %if.end118, label %if.then116

if.then116:                                       ; preds = %if.then110
  %call117 = tail call i32 @Perl_mg_set(%struct.sv* %32) #7
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.then116
  %34 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast119 = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.rhs.cast120 = ptrtoint %struct.sv** %add.ptr107 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %cmp123 = icmp slt i64 %sub.ptr.sub121, 8
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end118
  %call126 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr107, %struct.sv** %add.ptr107, i32 1) #7
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end118
  %sp.5 = phi %struct.sv** [ %call126, %if.then125 ], [ %add.ptr107, %if.end118 ]
  %incdec.ptr128 = getelementptr inbounds %struct.sv** %sp.5, i64 1
  store %struct.sv* %32, %struct.sv** %incdec.ptr128, align 8, !tbaa !0
  br label %if.end136

if.then132:                                       ; preds = %if.then98
  %idx.ext133 = sext i32 %sub103 to i64
  %add.ptr107.sum = add i64 %idx.ext106, %idx.ext133
  %add.ptr134 = getelementptr inbounds %struct.sv** %28, i64 %add.ptr107.sum
  br label %if.end136

if.end136:                                        ; preds = %if.then98, %if.then132, %if.end127
  %sp.6 = phi %struct.sv** [ %incdec.ptr128, %if.end127 ], [ %add.ptr134, %if.then132 ], [ %add.ptr107, %if.then98 ]
  store %struct.sv** %sp.6, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %35 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %35, i64 0, i32 0
  br label %return

if.else137:                                       ; preds = %if.end94
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_vptr(i8* bitcast (%struct.pmop** @PL_curpm to i8*)) #7
  %36 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i32* %36, i64 -1
  %37 = load i32* %arrayidx139, align 4, !tbaa !3
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds %struct.sv** %38, i64 %idxprom
  %39 = load %struct.sv** %arrayidx140, align 8, !tbaa !0
  %sv_flags141 = getelementptr inbounds %struct.sv* %39, i64 0, i32 2
  %40 = load i32* %sv_flags141, align 4, !tbaa !3
  %and142 = and i32 %40, -2049
  store i32 %and142, i32* %sv_flags141, align 4, !tbaa !3
  %41 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %41, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %43, i64 0, i32 0
  store %struct.sv* %39, %struct.sv** %gp_sv, align 8, !tbaa !0
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %44 = load %struct.op** @PL_op, align 8, !tbaa !0
  %45 = getelementptr inbounds %struct.op* %44, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.else137, %if.end136
  %retval.0.in = phi %struct.op** [ %op_next, %if.end136 ], [ %45, %if.else137 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_range() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %0, i64 0, i32 6
  %1 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %cmp = icmp eq i32 %and, 3
  %cond = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @Perl_block_gimme() #7
  %cmp.i = icmp eq i32 %call.i, 128
  %cond.i = select i1 %cmp.i, i32 0, i32 %call.i
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %2 = phi %struct.op* [ %0, %cond.true ], [ %.pre, %cond.false ]
  %cond5 = phi i32 [ %cond, %cond.true ], [ %cond.i, %cond.false ]
  %cmp6 = icmp eq i32 %cond5, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %op_next = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  br label %return

if.end:                                           ; preds = %cond.end
  %op_targ = getelementptr inbounds %struct.op* %2, i64 0, i32 3
  %3 = load i64* %op_targ, align 8, !tbaa !4
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %3
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  store %struct.sv* %5, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.sv* %5, null
  br i1 %tobool8, label %if.else, label %cond.false10

cond.false10:                                     ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and11 = and i32 %6, 262144
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %cond.false25, label %cond.true13

cond.true13:                                      ; preds = %cond.false10
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %8 = bitcast i8* %7 to %struct.xpv*
  store %struct.xpv* %8, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool14 = icmp eq i8* %7, null
  br i1 %tobool14, label %land.end23, label %land.rhs

land.rhs:                                         ; preds = %cond.true13
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  %cmp15 = icmp ugt i64 %10, 1
  br i1 %cmp15, label %land.end23, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool18 = icmp eq i64 %10, 0
  br i1 %tobool18, label %land.end23, label %land.rhs19

land.rhs19:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %7 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %12 = load i8* %11, align 1, !tbaa !1
  %cmp21 = icmp ne i8 %12, 48
  br label %land.end23

land.end23:                                       ; preds = %lor.rhs, %cond.true13, %land.rhs, %land.rhs19
  %13 = phi i1 [ false, %cond.true13 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp21, %land.rhs19 ]
  %cond24 = zext i1 %13 to i32
  br label %cond.end50

cond.false25:                                     ; preds = %cond.false10
  %and27 = and i32 %6, 65536
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %cond.false33, label %cond.true29

cond.true29:                                      ; preds = %cond.false25
  %sv_any30 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %14 = load i8** %sv_any30, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %14, i64 24
  %15 = bitcast i8* %xiv_iv to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %cmp31 = icmp ne i64 %16, 0
  %conv32 = zext i1 %cmp31 to i32
  br label %cond.end50

cond.false33:                                     ; preds = %cond.false25
  %and35 = and i32 %6, 131072
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %cond.false41, label %cond.true37

cond.true37:                                      ; preds = %cond.false33
  %sv_any38 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %17 = load i8** %sv_any38, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %17, i64 32
  %18 = bitcast i8* %xnv_nv to double*
  %19 = load double* %18, align 8, !tbaa !5
  %cmp39 = fcmp une double %19, 0.000000e+00
  %conv40 = zext i1 %cmp39 to i32
  br label %cond.end50

cond.false41:                                     ; preds = %cond.false33
  %call42 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %5) #7
  %conv43 = sext i8 %call42 to i32
  %.pre56 = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end50

cond.end50:                                       ; preds = %land.end23, %cond.true37, %cond.false41, %cond.true29
  %20 = phi %struct.op* [ %2, %land.end23 ], [ %2, %cond.true29 ], [ %2, %cond.true37 ], [ %.pre56, %cond.false41 ]
  %cond51 = phi i32 [ %cond24, %land.end23 ], [ %conv32, %cond.true29 ], [ %conv40, %cond.true37 ], [ %conv43, %cond.false41 ]
  %tobool52 = icmp eq i32 %cond51, 0
  br i1 %tobool52, label %if.else, label %if.then53

if.then53:                                        ; preds = %cond.end50
  %21 = getelementptr inbounds %struct.op* %20, i64 1, i32 1
  br label %return

if.else:                                          ; preds = %if.end, %cond.end50
  %22 = phi %struct.op* [ %20, %cond.end50 ], [ %2, %if.end ]
  %op_next54 = getelementptr inbounds %struct.op* %22, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.else, %if.then53, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %21, %if.then53 ], [ %op_next54, %if.else ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_dowantarray() #0 {
entry:
  %call = tail call i32 @Perl_block_gimme() #8
  %cmp = icmp eq i32 %call, 128
  %cond = select i1 %cmp, i32 0, i32 %call
  ret i32 %cond
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_flip() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %cmp = icmp eq i32 %and, 3
  %cond = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @Perl_block_gimme() #7
  %cmp.i = icmp eq i32 %call.i, 128
  %cond.i = select i1 %cmp.i, i32 0, i32 %call.i
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %cond.i, %cond.false ]
  %cmp6 = icmp eq i32 %cond5, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %4 = getelementptr inbounds %struct.op* %3, i64 1, i32 0
  %5 = load %struct.op** %4, align 8, !tbaa !0
  %6 = getelementptr inbounds %struct.op* %5, i64 1, i32 1
  br label %return

if.else:                                          ; preds = %cond.end
  %7 = load %struct.sv** %0, align 8, !tbaa !0
  %8 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %8, i64 0, i32 3
  %9 = load i64* %op_targ, align 8, !tbaa !4
  %10 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %8, i64 0, i32 7
  %12 = load i8* %op_private, align 1, !tbaa !1
  %and9 = and i8 %12, 64
  %tobool10 = icmp eq i8 %and9, 0
  br i1 %tobool10, label %if.else79, label %if.then11

if.then11:                                        ; preds = %if.else
  %13 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.gv* %13, null
  br i1 %tobool12, label %if.else39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11
  %14 = getelementptr inbounds %struct.gv* %13, i64 0, i32 2
  %15 = load i32* %14, align 4, !tbaa !3
  %and13 = and i32 %15, 255
  %cmp14 = icmp eq i32 %and13, 13
  br i1 %cmp14, label %land.lhs.true16, label %if.else39

land.lhs.true16:                                  ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %13, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.gp* %17, null
  br i1 %tobool17, label %if.else39, label %cond.true18

cond.true18:                                      ; preds = %land.lhs.true16
  %gp_io = getelementptr inbounds %struct.gp* %17, i64 0, i32 2
  %18 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.io* %18, null
  br i1 %tobool21, label %if.else39, label %if.then23

if.then23:                                        ; preds = %cond.true18
  %sv_flags24 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %19 = load i32* %sv_flags24, align 4, !tbaa !3
  %and25 = and i32 %19, 65536
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %cond.false29, label %cond.true27

cond.true27:                                      ; preds = %if.then23
  %sv_any28 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %20 = load i8** %sv_any28, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %20, i64 24
  %21 = bitcast i8* %xiv_iv to i64*
  %22 = load i64* %21, align 8, !tbaa !4
  br label %cond.end31

cond.false29:                                     ; preds = %if.then23
  %call30 = tail call i64 @Perl_sv_2iv(%struct.sv* %7) #7
  %.pre166 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %sv_any33.phi.trans.insert = getelementptr inbounds %struct.gv* %.pre166, i64 0, i32 0
  %.pre167 = load %struct.xpvgv** %sv_any33.phi.trans.insert, align 8, !tbaa !0
  %xgv_gp34.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre167, i64 0, i32 7
  %.pre168 = load %struct.gp** %xgv_gp34.phi.trans.insert, align 8, !tbaa !0
  %gp_io35.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre168, i64 0, i32 2
  %.pre169 = load %struct.io** %gp_io35.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false29, %cond.true27
  %23 = phi %struct.io* [ %18, %cond.true27 ], [ %.pre169, %cond.false29 ]
  %cond32 = phi i64 [ %22, %cond.true27 ], [ %call30, %cond.false29 ]
  %sv_any36 = getelementptr inbounds %struct.io* %23, i64 0, i32 0
  %24 = load %struct.xpvio** %sv_any36, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds %struct.xpvio* %24, i64 0, i32 10
  %25 = load i64* %xio_lines, align 8, !tbaa !4
  %cmp37 = icmp eq i64 %cond32, %25
  %conv38 = zext i1 %cmp37 to i32
  br label %if.end127

if.else39:                                        ; preds = %cond.true18, %land.lhs.true16, %if.then11, %land.lhs.true
  %call40 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i32 1, i32 4) #7
  %tobool41 = icmp eq %struct.gv* %call40, null
  br i1 %tobool41, label %if.end141, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.else39
  %sv_any43 = getelementptr inbounds %struct.gv* %call40, i64 0, i32 0
  %26 = load %struct.xpvgv** %sv_any43, align 8, !tbaa !0
  %xgv_gp44 = getelementptr inbounds %struct.xpvgv* %26, i64 0, i32 7
  %27 = load %struct.gp** %xgv_gp44, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %27, i64 0, i32 0
  %28 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool45 = icmp eq %struct.sv* %28, null
  br i1 %tobool45, label %if.end141, label %if.then46

if.then46:                                        ; preds = %land.lhs.true42
  %sv_flags47 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %29 = load i32* %sv_flags47, align 4, !tbaa !3
  %and48 = and i32 %29, 65536
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %cond.false53, label %cond.true50

cond.true50:                                      ; preds = %if.then46
  %sv_any51 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %30 = load i8** %sv_any51, align 8, !tbaa !0
  %xiv_iv52 = getelementptr inbounds i8* %30, i64 24
  %31 = bitcast i8* %xiv_iv52 to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  br label %cond.end55

cond.false53:                                     ; preds = %if.then46
  %call54 = tail call i64 @Perl_sv_2iv(%struct.sv* %7) #7
  %.pre = load %struct.xpvgv** %sv_any43, align 8, !tbaa !0
  %xgv_gp58.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre164 = load %struct.gp** %xgv_gp58.phi.trans.insert, align 8, !tbaa !0
  %gp_sv59.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre164, i64 0, i32 0
  %.pre165 = load %struct.sv** %gp_sv59.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false53, %cond.true50
  %33 = phi %struct.sv* [ %28, %cond.true50 ], [ %.pre165, %cond.false53 ]
  %cond56 = phi i64 [ %32, %cond.true50 ], [ %call54, %cond.false53 ]
  %sv_flags60 = getelementptr inbounds %struct.sv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags60, align 4, !tbaa !3
  %and61 = and i32 %34, 65536
  %tobool62 = icmp eq i32 %and61, 0
  br i1 %tobool62, label %cond.false69, label %cond.true63

cond.true63:                                      ; preds = %cond.end55
  %sv_any67 = getelementptr inbounds %struct.sv* %33, i64 0, i32 0
  %35 = load i8** %sv_any67, align 8, !tbaa !0
  %xiv_iv68 = getelementptr inbounds i8* %35, i64 24
  %36 = bitcast i8* %xiv_iv68 to i64*
  %37 = load i64* %36, align 8, !tbaa !4
  br label %cond.end74

cond.false69:                                     ; preds = %cond.end55
  %call73 = tail call i64 @Perl_sv_2iv(%struct.sv* %33) #7
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false69, %cond.true63
  %cond75 = phi i64 [ %37, %cond.true63 ], [ %call73, %cond.false69 ]
  %cmp76 = icmp eq i64 %cond56, %cond75
  %conv77 = zext i1 %cmp76 to i32
  br label %if.end127

if.else79:                                        ; preds = %if.else
  %tobool80 = icmp eq %struct.sv* %7, null
  br i1 %tobool80, label %if.end141, label %cond.false82

cond.false82:                                     ; preds = %if.else79
  %sv_flags83 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %38 = load i32* %sv_flags83, align 4, !tbaa !3
  %and84 = and i32 %38, 262144
  %tobool85 = icmp eq i32 %and84, 0
  br i1 %tobool85, label %cond.false99, label %cond.true86

cond.true86:                                      ; preds = %cond.false82
  %sv_any87 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %39 = load i8** %sv_any87, align 8, !tbaa !0
  %40 = bitcast i8* %39 to %struct.xpv*
  store %struct.xpv* %40, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool88 = icmp eq i8* %39, null
  br i1 %tobool88, label %land.end97, label %land.rhs

land.rhs:                                         ; preds = %cond.true86
  %xpv_cur = getelementptr inbounds i8* %39, i64 8
  %41 = bitcast i8* %xpv_cur to i64*
  %42 = load i64* %41, align 8, !tbaa !4
  %cmp89 = icmp ugt i64 %42, 1
  br i1 %cmp89, label %land.end97, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool92 = icmp eq i64 %42, 0
  br i1 %tobool92, label %land.end97, label %land.rhs93

land.rhs93:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %39 to i8**
  %43 = load i8** %xpv_pv, align 8, !tbaa !0
  %44 = load i8* %43, align 1, !tbaa !1
  %cmp95 = icmp ne i8 %44, 48
  br label %land.end97

land.end97:                                       ; preds = %lor.rhs, %cond.true86, %land.rhs, %land.rhs93
  %45 = phi i1 [ false, %cond.true86 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp95, %land.rhs93 ]
  %cond98 = zext i1 %45 to i32
  br label %if.end127

cond.false99:                                     ; preds = %cond.false82
  %and101 = and i32 %38, 65536
  %tobool102 = icmp eq i32 %and101, 0
  br i1 %tobool102, label %cond.false108, label %cond.true103

cond.true103:                                     ; preds = %cond.false99
  %sv_any104 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %46 = load i8** %sv_any104, align 8, !tbaa !0
  %xiv_iv105 = getelementptr inbounds i8* %46, i64 24
  %47 = bitcast i8* %xiv_iv105 to i64*
  %48 = load i64* %47, align 8, !tbaa !4
  %cmp106 = icmp ne i64 %48, 0
  %conv107 = zext i1 %cmp106 to i32
  br label %if.end127

cond.false108:                                    ; preds = %cond.false99
  %and110 = and i32 %38, 131072
  %tobool111 = icmp eq i32 %and110, 0
  br i1 %tobool111, label %cond.false116, label %cond.true112

cond.true112:                                     ; preds = %cond.false108
  %sv_any113 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %49 = load i8** %sv_any113, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %49, i64 32
  %50 = bitcast i8* %xnv_nv to double*
  %51 = load double* %50, align 8, !tbaa !5
  %cmp114 = fcmp une double %51, 0.000000e+00
  %conv115 = zext i1 %cmp114 to i32
  br label %if.end127

cond.false116:                                    ; preds = %cond.false108
  %call117 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %7) #7
  %conv118 = sext i8 %call117 to i32
  br label %if.end127

if.end127:                                        ; preds = %cond.true103, %cond.false116, %cond.true112, %land.end97, %cond.end31, %cond.end74
  %flip.0 = phi i32 [ %conv38, %cond.end31 ], [ %conv77, %cond.end74 ], [ %cond98, %land.end97 ], [ %conv107, %cond.true103 ], [ %conv115, %cond.true112 ], [ %conv118, %cond.false116 ]
  %tobool128 = icmp eq i32 %flip.0, 0
  br i1 %tobool128, label %if.end141, label %if.then129

if.then129:                                       ; preds = %if.end127
  %52 = load %struct.op** @PL_op, align 8, !tbaa !0
  %53 = getelementptr inbounds %struct.op* %52, i64 1, i32 0
  %54 = load %struct.op** %53, align 8, !tbaa !0
  %op_targ131 = getelementptr inbounds %struct.op* %54, i64 0, i32 3
  %55 = load i64* %op_targ131, align 8, !tbaa !4
  %56 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds %struct.sv** %56, i64 %55
  %57 = load %struct.sv** %arrayidx132, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %57, i64 1) #7
  %58 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags133 = getelementptr inbounds %struct.op* %58, i64 0, i32 6
  %59 = load i8* %op_flags133, align 1, !tbaa !1
  %tobool136 = icmp slt i8 %59, 0
  br i1 %tobool136, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.then129
  tail call void @Perl_sv_setiv(%struct.sv* %11, i64 1) #7
  store %struct.sv* %11, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %60 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %60, i64 0, i32 0
  br label %return

if.else138:                                       ; preds = %if.then129
  tail call void @Perl_sv_setiv(%struct.sv* %11, i64 0) #7
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %61 = load %struct.op** @PL_op, align 8, !tbaa !0
  %62 = getelementptr inbounds %struct.op* %61, i64 1, i32 0
  %63 = load %struct.op** %62, align 8, !tbaa !0
  %64 = getelementptr inbounds %struct.op* %63, i64 1, i32 1
  br label %return

if.end141:                                        ; preds = %if.else79, %if.else39, %land.lhs.true42, %if.end127
  tail call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  store %struct.sv* %11, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %65 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next142 = getelementptr inbounds %struct.op* %65, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end141, %if.else138, %if.then137, %if.then
  %retval.0.in = phi %struct.op** [ %6, %if.then ], [ %op_next, %if.then137 ], [ %64, %if.else138 ], [ %op_next142, %if.end141 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_flop() #0 {
entry:
  %len = alloca i64, align 8
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %cmp = icmp eq i32 %and, 3
  %cond = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call.i = call i32 @Perl_block_gimme() #7
  %cmp.i = icmp eq i32 %call.i, 128
  %cond.i = select i1 %cmp.i, i32 0, i32 %call.i
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %cond.i, %cond.false ]
  %cmp6 = icmp eq i32 %cond5, 1
  br i1 %cmp6, label %if.then, label %if.else206

if.then:                                          ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  %incdec.ptr8 = getelementptr inbounds %struct.sv** %0, i64 -2
  %4 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and9 = and i32 %5, 8192
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then
  %call12 = call i32 @Perl_mg_get(%struct.sv* %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then11
  %sv_flags13 = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %6 = load i32* %sv_flags13, align 4, !tbaa !3
  %and14 = and i32 %6, 8192
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = call i32 @Perl_mg_get(%struct.sv* %3) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then16
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %7, 50331648
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %lor.lhs.false, label %if.then70

lor.lhs.false:                                    ; preds = %if.end18
  %and23 = and i32 %7, 118423552
  %tobool24 = icmp ne i32 %and23, 0
  %and26 = and i32 %7, 67108864
  %tobool27 = icmp eq i32 %and26, 0
  %or.cond = and i1 %tobool24, %tobool27
  br i1 %or.cond, label %if.then70, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %8 = load i32* %sv_flags13, align 4, !tbaa !3
  %and30 = and i32 %8, 50331648
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %lor.lhs.false32, label %if.then70

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %and34 = and i32 %8, 118423552
  %tobool35 = icmp ne i32 %and34, 0
  %and38 = and i32 %8, 67108864
  %tobool39 = icmp eq i32 %and38, 0
  %or.cond416 = and i1 %tobool35, %tobool39
  br i1 %or.cond416, label %if.then70, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false32
  %tobool47 = icmp eq i32 %and34, 0
  %or.cond418 = or i1 %tobool24, %tobool47
  br i1 %or.cond418, label %lor.lhs.false48, label %land.lhs.true63

lor.lhs.false48:                                  ; preds = %lor.lhs.false40
  %tobool51 = icmp eq i32 %and23, 0
  br i1 %tobool51, label %land.lhs.true55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %call53 = call i32 @Perl_looks_like_number(%struct.sv* %4) #7
  %tobool54 = icmp eq i32 %call53, 0
  br i1 %tobool54, label %if.else149, label %lor.lhs.false52.land.lhs.true55_crit_edge

lor.lhs.false52.land.lhs.true55_crit_edge:        ; preds = %lor.lhs.false52
  %.pre437 = load i32* %sv_flags, align 4, !tbaa !3
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %lor.lhs.false52.land.lhs.true55_crit_edge, %lor.lhs.false48
  %9 = phi i32 [ %.pre437, %lor.lhs.false52.land.lhs.true55_crit_edge ], [ %7, %lor.lhs.false48 ]
  %and57 = and i32 %9, 67108864
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %if.else149, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %12 = load i8* %11, align 1, !tbaa !1
  %cmp61 = icmp eq i8 %12, 48
  br i1 %cmp61, label %if.else149, label %land.lhs.true59.land.lhs.true63_crit_edge

land.lhs.true59.land.lhs.true63_crit_edge:        ; preds = %land.lhs.true59
  %.pre438 = load i32* %sv_flags13, align 4, !tbaa !3
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true59.land.lhs.true63_crit_edge, %lor.lhs.false40
  %13 = phi i32 [ %9, %land.lhs.true59.land.lhs.true63_crit_edge ], [ %7, %lor.lhs.false40 ]
  %14 = phi i32 [ %.pre438, %land.lhs.true59.land.lhs.true63_crit_edge ], [ %8, %lor.lhs.false40 ]
  %and65 = and i32 %14, 118423552
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.then70, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true63
  %call68 = call i32 @Perl_looks_like_number(%struct.sv* %3) #7
  %tobool69 = icmp eq i32 %call68, 0
  br i1 %tobool69, label %if.else149, label %lor.lhs.false67.if.then70_crit_edge

lor.lhs.false67.if.then70_crit_edge:              ; preds = %lor.lhs.false67
  %.pre439 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false67.if.then70_crit_edge, %lor.lhs.false32, %lor.lhs.false, %land.lhs.true63, %lor.lhs.false28, %if.end18
  %15 = phi i32 [ %.pre439, %lor.lhs.false67.if.then70_crit_edge ], [ %7, %lor.lhs.false32 ], [ %7, %lor.lhs.false ], [ %13, %land.lhs.true63 ], [ %7, %lor.lhs.false28 ], [ %7, %if.end18 ]
  %and72 = and i32 %15, 118423552
  %tobool73 = icmp eq i32 %and72, 0
  br i1 %tobool73, label %lor.lhs.false86, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.then70
  %and76 = and i32 %15, 131072
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %cond.false80, label %cond.true78

cond.true78:                                      ; preds = %land.lhs.true74
  %sv_any79 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %16 = load i8** %sv_any79, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %16, i64 32
  %17 = bitcast i8* %xnv_nv to double*
  %18 = load double* %17, align 8, !tbaa !5
  br label %cond.end82

cond.false80:                                     ; preds = %land.lhs.true74
  %call81 = call double @Perl_sv_2nv(%struct.sv* %4) #7
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false80, %cond.true78
  %cond83 = phi double [ %18, %cond.true78 ], [ %call81, %cond.false80 ]
  %cmp84 = fcmp olt double %cond83, 0xC3E0000000000000
  br i1 %cmp84, label %if.then103, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %cond.end82, %if.then70
  %19 = load i32* %sv_flags13, align 4, !tbaa !3
  %and88 = and i32 %19, 118423552
  %tobool89 = icmp eq i32 %and88, 0
  br i1 %tobool89, label %if.end105, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %lor.lhs.false86
  %and92 = and i32 %19, 131072
  %tobool93 = icmp eq i32 %and92, 0
  br i1 %tobool93, label %cond.false97, label %cond.true94

cond.true94:                                      ; preds = %land.lhs.true90
  %sv_any95 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %20 = load i8** %sv_any95, align 8, !tbaa !0
  %xnv_nv96 = getelementptr inbounds i8* %20, i64 32
  %21 = bitcast i8* %xnv_nv96 to double*
  %22 = load double* %21, align 8, !tbaa !5
  br label %cond.end99

cond.false97:                                     ; preds = %land.lhs.true90
  %call98 = call double @Perl_sv_2nv(%struct.sv* %3) #7
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false97, %cond.true94
  %cond100 = phi double [ %22, %cond.true94 ], [ %call98, %cond.false97 ]
  %cmp101 = fcmp ogt double %cond100, 0x43E0000000000000
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %cond.end99, %cond.end82
  %call104 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([37 x i8]* @.str12, i64 0, i64 0)) #7
  br label %return

if.end105:                                        ; preds = %cond.end99, %lor.lhs.false86
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %and107 = and i32 %23, 65536
  %tobool108 = icmp eq i32 %and107, 0
  br i1 %tobool108, label %cond.false111, label %cond.true109

cond.true109:                                     ; preds = %if.end105
  %sv_any110 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %24 = load i8** %sv_any110, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %24, i64 24
  %25 = bitcast i8* %xiv_iv to i64*
  %26 = load i64* %25, align 8, !tbaa !4
  br label %cond.end113

cond.false111:                                    ; preds = %if.end105
  %call112 = call i64 @Perl_sv_2iv(%struct.sv* %4) #7
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true109
  %cond114 = phi i64 [ %26, %cond.true109 ], [ %call112, %cond.false111 ]
  %27 = load i32* %sv_flags13, align 4, !tbaa !3
  %and116 = and i32 %27, 65536
  %tobool117 = icmp eq i32 %and116, 0
  br i1 %tobool117, label %cond.false121, label %cond.true118

cond.true118:                                     ; preds = %cond.end113
  %sv_any119 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %28 = load i8** %sv_any119, align 8, !tbaa !0
  %xiv_iv120 = getelementptr inbounds i8* %28, i64 24
  %29 = bitcast i8* %xiv_iv120 to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  br label %cond.end123

cond.false121:                                    ; preds = %cond.end113
  %call122 = call i64 @Perl_sv_2iv(%struct.sv* %3) #7
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false121, %cond.true118
  %cond124 = phi i64 [ %30, %cond.true118 ], [ %call122, %cond.false121 ]
  %cmp125 = icmp slt i64 %cond124, %cond114
  br i1 %cmp125, label %if.end345, label %if.then127

if.then127:                                       ; preds = %cond.end123
  %sub = sub nsw i64 %cond124, %cond114
  %add = add nsw i64 %sub, 1
  %31 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %conv128 = sext i32 %31 to i64
  %add129 = add nsw i64 %conv128, %add
  %32 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %conv130 = sext i32 %32 to i64
  %cmp131 = icmp slt i64 %add129, %conv130
  br i1 %cmp131, label %if.end135, label %if.then133

if.then133:                                       ; preds = %if.then127
  %conv134 = trunc i64 %add to i32
  call void @Perl_tmps_grow(i32 %conv134) #7
  br label %if.end135

if.end135:                                        ; preds = %if.then127, %if.then133
  %33 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %sext = shl i64 %add, 32
  %conv137 = ashr exact i64 %sext, 32
  %cmp138 = icmp slt i64 %sub.ptr.div, %conv137
  br i1 %cmp138, label %if.then140, label %while.cond.preheader

if.then140:                                       ; preds = %if.end135
  %conv136 = trunc i64 %add to i32
  %call142 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr8, %struct.sv** %incdec.ptr8, i32 %conv136) #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end135, %if.then140
  %sp.0.ph = phi %struct.sv** [ %call142, %if.then140 ], [ %incdec.ptr8, %if.end135 ]
  %tobool145419 = icmp eq i64 %add, 0
  br i1 %tobool145419, label %if.end345, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %sp.0422 = phi %struct.sv** [ %incdec.ptr148, %while.body ], [ %sp.0.ph, %while.cond.preheader ]
  %i.0421 = phi i64 [ %inc, %while.body ], [ %cond114, %while.cond.preheader ]
  %j.0420 = phi i64 [ %dec, %while.body ], [ %add, %while.cond.preheader ]
  %dec = add nsw i64 %j.0420, -1
  %inc = add nsw i64 %i.0421, 1
  %call146 = call %struct.sv* @Perl_newSViv(i64 %i.0421) #7
  %call147 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call146) #7
  %incdec.ptr148 = getelementptr inbounds %struct.sv** %sp.0422, i64 1
  store %struct.sv* %call147, %struct.sv** %incdec.ptr148, align 8, !tbaa !0
  %tobool145 = icmp eq i64 %dec, 0
  br i1 %tobool145, label %while.cond.if.end345.loopexit_crit_edge, label %while.body

if.else149:                                       ; preds = %lor.lhs.false52, %lor.lhs.false67, %land.lhs.true59, %land.lhs.true55
  %call150 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %3) #7
  %sv_flags151 = getelementptr inbounds %struct.sv* %call150, i64 0, i32 2
  %34 = load i32* %sv_flags151, align 4, !tbaa !3
  %and152 = and i32 %34, 262144
  %cmp153 = icmp eq i32 %and152, 0
  br i1 %cmp153, label %cond.false159, label %cond.true155

cond.true155:                                     ; preds = %if.else149
  %sv_any156 = getelementptr inbounds %struct.sv* %call150, i64 0, i32 0
  %35 = load i8** %sv_any156, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %35, i64 8
  %36 = bitcast i8* %xpv_cur to i64*
  %37 = load i64* %36, align 8, !tbaa !4
  store i64 %37, i64* %len, align 8, !tbaa !4
  %xpv_pv158 = bitcast i8* %35 to i8**
  %38 = load i8** %xpv_pv158, align 8, !tbaa !0
  br label %cond.end161

cond.false159:                                    ; preds = %if.else149
  %call160 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call150, i64* %len, i32 2) #7
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false159, %cond.true155
  %cond162 = phi i8* [ %38, %cond.true155 ], [ %call160, %cond.false159 ]
  %call163 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %4) #7
  %sv_flags164 = getelementptr inbounds %struct.sv* %call163, i64 0, i32 2
  %39 = load i32* %sv_flags164, align 4, !tbaa !3
  %and165 = and i32 %39, 10223616
  %cmp166 = icmp eq i32 %and165, 262144
  br i1 %cmp166, label %cond.true168, label %cond.false173

cond.true168:                                     ; preds = %cond.end161
  %sv_any169 = getelementptr inbounds %struct.sv* %call163, i64 0, i32 0
  %40 = load i8** %sv_any169, align 8, !tbaa !0
  %xpv_cur170 = getelementptr inbounds i8* %40, i64 8
  %41 = bitcast i8* %xpv_cur170 to i64*
  %42 = load i64* %41, align 8, !tbaa !4
  store i64 %42, i64* %n_a, align 8, !tbaa !4
  br label %while.cond177.preheader

cond.false173:                                    ; preds = %cond.end161
  %call174 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %call163, i64* %n_a, i32 2) #7
  %.pre = load i32* %sv_flags164, align 4, !tbaa !3
  br label %while.cond177.preheader

while.cond177.preheader:                          ; preds = %cond.false173, %cond.true168
  %43 = phi i32 [ %.pre, %cond.false173 ], [ %39, %cond.true168 ]
  %and179425 = and i32 %43, 50331648
  %tobool180426 = icmp eq i32 %and179425, 0
  br i1 %tobool180426, label %land.rhs, label %if.end345

land.rhs:                                         ; preds = %if.end201, %while.cond177.preheader
  %sp.1428 = phi %struct.sv** [ %incdec.ptr8, %while.cond177.preheader ], [ %incdec.ptr195, %if.end201 ]
  %sv.0427 = phi %struct.sv* [ %call163, %while.cond177.preheader ], [ %call203, %if.end201 ]
  %sv_any181 = getelementptr inbounds %struct.sv* %sv.0427, i64 0, i32 0
  %44 = load i8** %sv_any181, align 8, !tbaa !0
  %xpv_cur182 = getelementptr inbounds i8* %44, i64 8
  %45 = bitcast i8* %xpv_cur182 to i64*
  %46 = load i64* %45, align 8, !tbaa !4
  %47 = load i64* %len, align 8, !tbaa !4
  %cmp183 = icmp ugt i64 %46, %47
  br i1 %cmp183, label %if.end345, label %while.body185

while.body185:                                    ; preds = %land.rhs
  %48 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast186 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.rhs.cast187 = ptrtoint %struct.sv** %sp.1428 to i64
  %sub.ptr.sub188 = sub i64 %sub.ptr.lhs.cast186, %sub.ptr.rhs.cast187
  %cmp190 = icmp slt i64 %sub.ptr.sub188, 8
  br i1 %cmp190, label %if.then192, label %if.end194

if.then192:                                       ; preds = %while.body185
  %call193 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1428, %struct.sv** %sp.1428, i32 1) #7
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %while.body185
  %sp.2 = phi %struct.sv** [ %call193, %if.then192 ], [ %sp.1428, %while.body185 ]
  %incdec.ptr195 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %sv.0427, %struct.sv** %incdec.ptr195, align 8, !tbaa !0
  %49 = load i8** %sv_any181, align 8, !tbaa !0
  %xpv_pv197 = bitcast i8* %49 to i8**
  %50 = load i8** %xpv_pv197, align 8, !tbaa !0
  %call198 = call i32 @strcmp(i8* %50, i8* %cond162) #7
  %tobool199 = icmp eq i32 %call198, 0
  br i1 %tobool199, label %if.end345, label %if.end201

if.end201:                                        ; preds = %if.end194
  %call202 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sv.0427) #7
  %call203 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call202) #7
  call void @Perl_sv_inc(%struct.sv* %call203) #7
  %sv_flags178 = getelementptr inbounds %struct.sv* %call203, i64 0, i32 2
  %51 = load i32* %sv_flags178, align 4, !tbaa !3
  %and179 = and i32 %51, 50331648
  %tobool180 = icmp eq i32 %and179, 0
  br i1 %tobool180, label %land.rhs, label %if.end345

if.else206:                                       ; preds = %cond.end
  %52 = load %struct.sv** %0, align 8, !tbaa !0
  %53 = load %struct.op** @PL_op, align 8, !tbaa !0
  %54 = getelementptr inbounds %struct.op* %53, i64 1, i32 0
  %55 = load %struct.op** %54, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %55, i64 0, i32 3
  %56 = load i64* %op_targ, align 8, !tbaa !4
  %57 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %57, i64 %56
  %58 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  call void @Perl_sv_inc(%struct.sv* %58) #7
  %59 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %59, i64 0, i32 7
  %60 = load i8* %op_private, align 1, !tbaa !1
  %and209 = and i8 %60, 64
  %tobool210 = icmp eq i8 %and209, 0
  br i1 %tobool210, label %if.else284, label %if.then211

if.then211:                                       ; preds = %if.else206
  %61 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool212 = icmp eq %struct.gv* %61, null
  br i1 %tobool212, label %if.else243, label %land.lhs.true213

land.lhs.true213:                                 ; preds = %if.then211
  %62 = getelementptr inbounds %struct.gv* %61, i64 0, i32 2
  %63 = load i32* %62, align 4, !tbaa !3
  %and215 = and i32 %63, 255
  %cmp216 = icmp eq i32 %and215, 13
  br i1 %cmp216, label %land.lhs.true218, label %if.else243

land.lhs.true218:                                 ; preds = %land.lhs.true213
  %sv_any219 = getelementptr inbounds %struct.gv* %61, i64 0, i32 0
  %64 = load %struct.xpvgv** %sv_any219, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %64, i64 0, i32 7
  %65 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool220 = icmp eq %struct.gp* %65, null
  br i1 %tobool220, label %if.else243, label %cond.true221

cond.true221:                                     ; preds = %land.lhs.true218
  %gp_io = getelementptr inbounds %struct.gp* %65, i64 0, i32 2
  %66 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool224 = icmp eq %struct.io* %66, null
  br i1 %tobool224, label %if.else243, label %if.then226

if.then226:                                       ; preds = %cond.true221
  %sv_flags227 = getelementptr inbounds %struct.sv* %52, i64 0, i32 2
  %67 = load i32* %sv_flags227, align 4, !tbaa !3
  %and228 = and i32 %67, 65536
  %tobool229 = icmp eq i32 %and228, 0
  br i1 %tobool229, label %cond.false233, label %cond.true230

cond.true230:                                     ; preds = %if.then226
  %sv_any231 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %68 = load i8** %sv_any231, align 8, !tbaa !0
  %xiv_iv232 = getelementptr inbounds i8* %68, i64 24
  %69 = bitcast i8* %xiv_iv232 to i64*
  %70 = load i64* %69, align 8, !tbaa !4
  br label %cond.end235

cond.false233:                                    ; preds = %if.then226
  %call234 = call i64 @Perl_sv_2iv(%struct.sv* %52) #7
  %.pre433 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %sv_any237.phi.trans.insert = getelementptr inbounds %struct.gv* %.pre433, i64 0, i32 0
  %.pre434 = load %struct.xpvgv** %sv_any237.phi.trans.insert, align 8, !tbaa !0
  %xgv_gp238.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre434, i64 0, i32 7
  %.pre435 = load %struct.gp** %xgv_gp238.phi.trans.insert, align 8, !tbaa !0
  %gp_io239.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre435, i64 0, i32 2
  %.pre436 = load %struct.io** %gp_io239.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end235

cond.end235:                                      ; preds = %cond.false233, %cond.true230
  %71 = phi %struct.io* [ %66, %cond.true230 ], [ %.pre436, %cond.false233 ]
  %cond236 = phi i64 [ %70, %cond.true230 ], [ %call234, %cond.false233 ]
  %sv_any240 = getelementptr inbounds %struct.io* %71, i64 0, i32 0
  %72 = load %struct.xpvio** %sv_any240, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds %struct.xpvio* %72, i64 0, i32 10
  %73 = load i64* %xio_lines, align 8, !tbaa !4
  %cmp241 = icmp eq i64 %cond236, %73
  %conv242 = zext i1 %cmp241 to i32
  br label %if.end337

if.else243:                                       ; preds = %cond.true221, %land.lhs.true218, %if.then211, %land.lhs.true213
  %call244 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i32 1, i32 4) #7
  %tobool245 = icmp eq %struct.gv* %call244, null
  br i1 %tobool245, label %if.end344, label %land.lhs.true246

land.lhs.true246:                                 ; preds = %if.else243
  %sv_any247 = getelementptr inbounds %struct.gv* %call244, i64 0, i32 0
  %74 = load %struct.xpvgv** %sv_any247, align 8, !tbaa !0
  %xgv_gp248 = getelementptr inbounds %struct.xpvgv* %74, i64 0, i32 7
  %75 = load %struct.gp** %xgv_gp248, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %75, i64 0, i32 0
  %76 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool249 = icmp eq %struct.sv* %76, null
  br i1 %tobool249, label %if.end344, label %if.then250

if.then250:                                       ; preds = %land.lhs.true246
  %sv_flags251 = getelementptr inbounds %struct.sv* %52, i64 0, i32 2
  %77 = load i32* %sv_flags251, align 4, !tbaa !3
  %and252 = and i32 %77, 65536
  %tobool253 = icmp eq i32 %and252, 0
  br i1 %tobool253, label %cond.false257, label %cond.true254

cond.true254:                                     ; preds = %if.then250
  %sv_any255 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %78 = load i8** %sv_any255, align 8, !tbaa !0
  %xiv_iv256 = getelementptr inbounds i8* %78, i64 24
  %79 = bitcast i8* %xiv_iv256 to i64*
  %80 = load i64* %79, align 8, !tbaa !4
  br label %cond.end259

cond.false257:                                    ; preds = %if.then250
  %call258 = call i64 @Perl_sv_2iv(%struct.sv* %52) #7
  %.pre430 = load %struct.xpvgv** %sv_any247, align 8, !tbaa !0
  %xgv_gp262.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre430, i64 0, i32 7
  %.pre431 = load %struct.gp** %xgv_gp262.phi.trans.insert, align 8, !tbaa !0
  %gp_sv263.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre431, i64 0, i32 0
  %.pre432 = load %struct.sv** %gp_sv263.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false257, %cond.true254
  %81 = phi %struct.sv* [ %76, %cond.true254 ], [ %.pre432, %cond.false257 ]
  %cond260 = phi i64 [ %80, %cond.true254 ], [ %call258, %cond.false257 ]
  %sv_flags264 = getelementptr inbounds %struct.sv* %81, i64 0, i32 2
  %82 = load i32* %sv_flags264, align 4, !tbaa !3
  %and265 = and i32 %82, 65536
  %tobool266 = icmp eq i32 %and265, 0
  br i1 %tobool266, label %cond.false273, label %cond.true267

cond.true267:                                     ; preds = %cond.end259
  %sv_any271 = getelementptr inbounds %struct.sv* %81, i64 0, i32 0
  %83 = load i8** %sv_any271, align 8, !tbaa !0
  %xiv_iv272 = getelementptr inbounds i8* %83, i64 24
  %84 = bitcast i8* %xiv_iv272 to i64*
  %85 = load i64* %84, align 8, !tbaa !4
  br label %cond.end278

cond.false273:                                    ; preds = %cond.end259
  %call277 = call i64 @Perl_sv_2iv(%struct.sv* %81) #7
  br label %cond.end278

cond.end278:                                      ; preds = %cond.false273, %cond.true267
  %cond279 = phi i64 [ %85, %cond.true267 ], [ %call277, %cond.false273 ]
  %cmp280 = icmp eq i64 %cond260, %cond279
  %conv281 = zext i1 %cmp280 to i32
  br label %if.end337

if.else284:                                       ; preds = %if.else206
  %tobool285 = icmp eq %struct.sv* %52, null
  br i1 %tobool285, label %if.end344, label %cond.false287

cond.false287:                                    ; preds = %if.else284
  %sv_flags288 = getelementptr inbounds %struct.sv* %52, i64 0, i32 2
  %86 = load i32* %sv_flags288, align 4, !tbaa !3
  %and289 = and i32 %86, 262144
  %tobool290 = icmp eq i32 %and289, 0
  br i1 %tobool290, label %cond.false308, label %cond.true291

cond.true291:                                     ; preds = %cond.false287
  %sv_any292 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %87 = load i8** %sv_any292, align 8, !tbaa !0
  %88 = bitcast i8* %87 to %struct.xpv*
  store %struct.xpv* %88, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool293 = icmp eq i8* %87, null
  br i1 %tobool293, label %land.end306, label %land.rhs294

land.rhs294:                                      ; preds = %cond.true291
  %xpv_cur295 = getelementptr inbounds i8* %87, i64 8
  %89 = bitcast i8* %xpv_cur295 to i64*
  %90 = load i64* %89, align 8, !tbaa !4
  %cmp296 = icmp ugt i64 %90, 1
  br i1 %cmp296, label %land.end306, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs294
  %tobool299 = icmp eq i64 %90, 0
  br i1 %tobool299, label %land.end306, label %land.rhs300

land.rhs300:                                      ; preds = %lor.rhs
  %xpv_pv301 = bitcast i8* %87 to i8**
  %91 = load i8** %xpv_pv301, align 8, !tbaa !0
  %92 = load i8* %91, align 1, !tbaa !1
  %cmp303 = icmp ne i8 %92, 48
  br label %land.end306

land.end306:                                      ; preds = %lor.rhs, %cond.true291, %land.rhs294, %land.rhs300
  %93 = phi i1 [ false, %cond.true291 ], [ true, %land.rhs294 ], [ false, %lor.rhs ], [ %cmp303, %land.rhs300 ]
  %cond307 = zext i1 %93 to i32
  br label %if.end337

cond.false308:                                    ; preds = %cond.false287
  %and310 = and i32 %86, 65536
  %tobool311 = icmp eq i32 %and310, 0
  br i1 %tobool311, label %cond.false317, label %cond.true312

cond.true312:                                     ; preds = %cond.false308
  %sv_any313 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %94 = load i8** %sv_any313, align 8, !tbaa !0
  %xiv_iv314 = getelementptr inbounds i8* %94, i64 24
  %95 = bitcast i8* %xiv_iv314 to i64*
  %96 = load i64* %95, align 8, !tbaa !4
  %cmp315 = icmp ne i64 %96, 0
  %conv316 = zext i1 %cmp315 to i32
  br label %if.end337

cond.false317:                                    ; preds = %cond.false308
  %and319 = and i32 %86, 131072
  %tobool320 = icmp eq i32 %and319, 0
  br i1 %tobool320, label %cond.false326, label %cond.true321

cond.true321:                                     ; preds = %cond.false317
  %sv_any322 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %97 = load i8** %sv_any322, align 8, !tbaa !0
  %xnv_nv323 = getelementptr inbounds i8* %97, i64 32
  %98 = bitcast i8* %xnv_nv323 to double*
  %99 = load double* %98, align 8, !tbaa !5
  %cmp324 = fcmp une double %99, 0.000000e+00
  %conv325 = zext i1 %cmp324 to i32
  br label %if.end337

cond.false326:                                    ; preds = %cond.false317
  %call327 = call signext i8 @Perl_sv_2bool(%struct.sv* %52) #7
  %conv328 = sext i8 %call327 to i32
  br label %if.end337

if.end337:                                        ; preds = %cond.true312, %cond.false326, %cond.true321, %land.end306, %cond.end235, %cond.end278
  %flop.0 = phi i32 [ %conv242, %cond.end235 ], [ %conv281, %cond.end278 ], [ %cond307, %land.end306 ], [ %conv316, %cond.true312 ], [ %conv325, %cond.true321 ], [ %conv328, %cond.false326 ]
  %tobool338 = icmp eq i32 %flop.0, 0
  br i1 %tobool338, label %if.end344, label %if.then339

if.then339:                                       ; preds = %if.end337
  %100 = load %struct.op** @PL_op, align 8, !tbaa !0
  %101 = getelementptr inbounds %struct.op* %100, i64 1, i32 0
  %102 = load %struct.op** %101, align 8, !tbaa !0
  %103 = getelementptr inbounds %struct.op* %102, i64 1, i32 0
  %104 = load %struct.op** %103, align 8, !tbaa !0
  %op_targ342 = getelementptr inbounds %struct.op* %104, i64 0, i32 3
  %105 = load i64* %op_targ342, align 8, !tbaa !4
  %106 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx343 = getelementptr inbounds %struct.sv** %106, i64 %105
  %107 = load %struct.sv** %arrayidx343, align 8, !tbaa !0
  call void @Perl_sv_setiv(%struct.sv* %107, i64 0) #7
  call void @Perl_sv_catpv(%struct.sv* %58, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #7
  br label %if.end344

if.end344:                                        ; preds = %if.else284, %if.else243, %land.lhs.true246, %if.end337, %if.then339
  store %struct.sv* %58, %struct.sv** %0, align 8, !tbaa !0
  br label %if.end345

while.cond.if.end345.loopexit_crit_edge:          ; preds = %while.body
  %scevgep = getelementptr %struct.sv** %sp.0.ph, i64 %add
  br label %if.end345

if.end345:                                        ; preds = %cond.end123, %while.cond177.preheader, %if.end194, %land.rhs, %if.end201, %while.cond.preheader, %while.cond.if.end345.loopexit_crit_edge, %if.end344
  %sp.3 = phi %struct.sv** [ %0, %if.end344 ], [ %scevgep, %while.cond.if.end345.loopexit_crit_edge ], [ %sp.0.ph, %while.cond.preheader ], [ %incdec.ptr8, %while.cond177.preheader ], [ %sp.1428, %land.rhs ], [ %incdec.ptr195, %if.end194 ], [ %incdec.ptr195, %if.end201 ], [ %incdec.ptr8, %cond.end123 ]
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %108 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %108, i64 0, i32 0
  %109 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end345, %if.then103
  %retval.0 = phi %struct.op* [ %call104, %if.then103 ], [ %109, %if.end345 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_looks_like_number(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_tmps_grow(i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_inc(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Perl_is_lvalue_sub() #2 {
entry:
  %0 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 2
  %1 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 1
  %2 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %cmp4.i.i = icmp sgt i32 %1, -1
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %S_dopoptosub.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %3 = sext i32 %1 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %3, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %i.05.i.i = phi i32 [ %1, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cx_type.i.i = getelementptr inbounds %struct.context* %2, i64 %indvars.iv.i.i, i32 0
  %4 = load i32* %cx_type.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %4, 255
  switch i32 %and.i.i, label %for.inc.i.i [
    i32 2, label %S_dopoptosub.exit
    i32 1, label %S_dopoptosub.exit
    i32 6, label %S_dopoptosub.exit
  ]

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %dec.i.i = add nsw i32 %i.05.i.i, -1
  %5 = trunc i64 %indvars.iv.i.i to i32
  %cmp.i.i = icmp sgt i32 %5, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %S_dopoptosub.exit

S_dopoptosub.exit:                                ; preds = %for.body.i.i, %for.body.i.i, %for.body.i.i, %for.inc.i.i, %entry
  %i.0.lcssa.i.i = phi i32 [ %1, %entry ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %idxprom = sext i32 %i.0.lcssa.i.i to i64
  %blk_u = getelementptr inbounds %struct.context* %2, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %lval = getelementptr inbounds %struct.block_sub* %blku_sub, i64 0, i32 7
  %6 = load i8* %lval, align 1, !tbaa !1
  %tobool = icmp eq i8 %6, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %S_dopoptosub.exit
  %conv = zext i8 %6 to i32
  %cv = bitcast %union.anon.1* %blk_u to %struct.cv**
  %7 = load %struct.cv** %cv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.cv* %7, i64 0, i32 0
  %8 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %8, i64 0, i32 17
  %9 = load i16* %xcv_flags, align 2, !tbaa !6
  %and = and i16 %9, 256
  %tobool9 = icmp eq i16 %and, 0
  br i1 %tobool9, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %S_dopoptosub.exit
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ %conv, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_dounwind(i32 %cxix) #0 {
entry:
  %0 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix233 = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 2
  %1 = load i32* %si_cxix233, align 4, !tbaa !3
  %cmp234 = icmp sgt i32 %1, %cxix
  br i1 %cmp234, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond.backedge
  %2 = phi i32 [ %7, %while.cond.backedge ], [ %1, %entry ]
  %si_cxix235 = phi i32* [ %si_cxix, %while.cond.backedge ], [ %si_cxix233, %entry ]
  %3 = phi %struct.stackinfo* [ %8, %while.cond.backedge ], [ %0, %entry ]
  %idxprom = sext i32 %2 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 1
  %4 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 0
  %5 = load i32* %cx_type, align 4, !tbaa !3
  %and = and i32 %5, 255
  switch i32 %and, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb119
    i32 3, label %sw.bb144
    i32 6, label %sw.bb185
  ]

sw.bb:                                            ; preds = %while.body
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %si_cxix235, align 4, !tbaa !3
  %sbu_rxres = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %6 = bitcast %struct.op** %sbu_rxres to i8**
  tail call void @Perl_rxres_free(i8** %6) #8
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 2
  %.pre236 = load i32* %si_cxix.phi.trans.insert, align 4, !tbaa !3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb, %sw.epilog
  %7 = phi i32 [ %.pre236, %sw.bb ], [ %dec196, %sw.epilog ]
  %8 = phi %struct.stackinfo* [ %.pre, %sw.bb ], [ %64, %sw.epilog ]
  %si_cxix = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 2
  %cmp = icmp sgt i32 %7, %cxix
  br i1 %cmp, label %while.body, label %while.end

sw.bb6:                                           ; preds = %while.body
  %blk_u = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7
  %hasargs = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %9 = bitcast %struct.sv** %hasargs to i8*
  %10 = load i8* %9, align 1, !tbaa !1
  %tobool = icmp eq i8 %10, 0
  br i1 %tobool, label %if.end102, label %if.then

if.then:                                          ; preds = %sw.bb6
  %11 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %11, i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %13, i64 0, i32 4
  %14 = load %struct.av** %gp_av, align 8, !tbaa !0
  %15 = bitcast %struct.av* %14 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %15) #7
  %savearray = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %16 = load %struct.op** %savearray, align 8
  %17 = bitcast %struct.op* %16 to %struct.av*
  %18 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any12 = getelementptr inbounds %struct.gv* %18, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any12, align 8, !tbaa !0
  %xgv_gp13 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp13, align 8, !tbaa !0
  %gp_av14 = getelementptr inbounds %struct.gp* %20, i64 0, i32 4
  store %struct.av* %17, %struct.av** %gp_av14, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %21 = load %struct.op** %argarray, align 8
  %sv_any19 = bitcast %struct.op* %21 to %struct.xpvav**
  %22 = load %struct.xpvav** %sv_any19, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 9
  %23 = load i8* %xav_flags, align 1, !tbaa !1
  %and20 = and i8 %23, 1
  %tobool21 = icmp eq i8 %and20, 0
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then
  %xav_fill = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 1
  %24 = load i64* %xav_fill, align 8, !tbaa !4
  %25 = bitcast %struct.op* %21 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %25) #7
  %call = tail call %struct.av* @Perl_newAV() #7
  %call.c = bitcast %struct.av* %call to %struct.op*
  store %struct.op* %call.c, %struct.op** %argarray, align 8, !tbaa !0
  %conv44 = trunc i64 %24 to i32
  tail call void @Perl_av_extend(%struct.av* %call, i32 %conv44) #7
  %26 = load %struct.op** %argarray, align 8
  %sv_any50 = bitcast %struct.op* %26 to %struct.xpvav**
  %27 = load %struct.xpvav** %sv_any50, align 8, !tbaa !0
  %xav_flags51 = getelementptr inbounds %struct.xpvav* %27, i64 0, i32 9
  store i8 2, i8* %xav_flags51, align 1, !tbaa !1
  %28 = load %struct.op** %argarray, align 8
  %29 = bitcast %struct.op* %28 to %struct.sv*
  %oldcomppad = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %30 = load %struct.sv** %oldcomppad, align 8
  %sv_any61 = bitcast %struct.sv* %30 to %struct.xpvav**
  %31 = load %struct.xpvav** %sv_any61, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 0
  %32 = load i8** %xav_array, align 8, !tbaa !0
  %33 = bitcast i8* %32 to %struct.sv**
  store %struct.sv* %29, %struct.sv** %33, align 8, !tbaa !0
  br label %if.end102

if.else:                                          ; preds = %if.then
  %xav_array69 = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 0
  %34 = load i8** %xav_array69, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 7
  %35 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %xav_max = getelementptr inbounds %struct.xpvav* %22, i64 0, i32 2
  %36 = load i64* %xav_max, align 8, !tbaa !4
  %add = add nsw i64 %sub.ptr.div, %36
  store i64 %add, i64* %xav_max, align 8, !tbaa !4
  %37 = load %struct.op** %argarray, align 8
  %sv_any87 = bitcast %struct.op* %37 to %struct.xpvav**
  %38 = load %struct.xpvav** %sv_any87, align 8, !tbaa !0
  %xav_alloc88 = getelementptr inbounds %struct.xpvav* %38, i64 0, i32 7
  %39 = load %struct.sv*** %xav_alloc88, align 8, !tbaa !0
  %40 = bitcast %struct.sv** %39 to i8*
  %xpv_pv = getelementptr inbounds %struct.xpvav* %38, i64 0, i32 0
  store i8* %40, i8** %xpv_pv, align 8, !tbaa !0
  %41 = load %struct.op** %argarray, align 8
  %sv_any100 = bitcast %struct.op* %41 to %struct.xpvav**
  %42 = load %struct.xpvav** %sv_any100, align 8, !tbaa !0
  %xav_fill101 = getelementptr inbounds %struct.xpvav* %42, i64 0, i32 1
  store i64 -1, i64* %xav_fill101, align 8, !tbaa !4
  br label %if.end102

if.end102:                                        ; preds = %sw.bb6, %if.then22, %if.else
  %cv = bitcast %union.anon.1* %blk_u to %struct.cv**
  %43 = load %struct.cv** %cv, align 8, !tbaa !0
  %44 = bitcast %struct.cv* %43 to %struct.sv*
  %tobool107 = icmp eq %struct.cv* %43, null
  br i1 %tobool107, label %if.end115, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end102
  %olddepth = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %45 = bitcast %struct.sv*** %olddepth to i64*
  %46 = load i64* %45, align 8, !tbaa !4
  %sv_any112 = getelementptr inbounds %struct.cv* %43, i64 0, i32 0
  %47 = load %struct.xpvcv** %sv_any112, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %47, i64 0, i32 14
  store i64 %46, i64* %xcv_depth, align 8, !tbaa !4
  %tobool113 = icmp eq i64 %46, 0
  %. = select i1 %tobool113, %struct.sv* %44, %struct.sv* null
  br label %if.end115

if.end115:                                        ; preds = %land.lhs.true, %if.end102
  %sv.0 = phi %struct.sv* [ %44, %if.end102 ], [ %., %land.lhs.true ]
  %tobool116 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool116, label %sw.epilog, label %if.then117

if.then117:                                       ; preds = %if.end115
  tail call void @Perl_sv_free(%struct.sv* %sv.0) #7
  br label %sw.epilog

sw.bb119:                                         ; preds = %while.body
  %blk_u122 = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7
  %old_in_eval = bitcast %union.anon.1* %blk_u122 to i32*
  %48 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %48, i32* @PL_in_eval, align 4, !tbaa !3
  %49 = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %50 = load %struct.op** %49, align 8, !tbaa !0
  store %struct.op* %50, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %51 = bitcast i32* %old_namesv to %struct.sv**
  %52 = load %struct.sv** %51, align 8, !tbaa !0
  %tobool135 = icmp eq %struct.sv* %52, null
  br i1 %tobool135, label %sw.epilog, label %if.then136

if.then136:                                       ; preds = %sw.bb119
  %call142 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %52) #7
  br label %sw.epilog

sw.bb144:                                         ; preds = %while.body
  %iterlval = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %53 = load %struct.sv** %iterlval, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %53) #7
  %itervar = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %54 = load %struct.sv*** %itervar, align 8, !tbaa !0
  %tobool152 = icmp eq %struct.sv** %54, null
  br i1 %tobool152, label %if.end164, label %if.then153

if.then153:                                       ; preds = %sw.bb144
  %55 = load %struct.sv** %54, align 8, !tbaa !0
  %call159 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %55) #7
  %itersave = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %56 = load %struct.sv** %itersave, align 8, !tbaa !0
  store %struct.sv* %56, %struct.sv** %54, align 8, !tbaa !0
  br label %if.end164

if.end164:                                        ; preds = %sw.bb144, %if.then153
  %iterary = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 8
  %57 = load %struct.av** %iterary, align 8, !tbaa !0
  %tobool169 = icmp eq %struct.av* %57, null
  %58 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp176 = icmp eq %struct.av* %57, %58
  %or.cond = or i1 %tobool169, %cmp176
  br i1 %or.cond, label %sw.epilog, label %if.then178

if.then178:                                       ; preds = %if.end164
  %59 = bitcast %struct.av* %57 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %59) #7
  br label %sw.epilog

sw.bb185:                                         ; preds = %while.body
  %dfoutgv = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %60 = load %struct.op** %dfoutgv, align 8
  %61 = bitcast %struct.op* %60 to %struct.gv*
  tail call void @Perl_setdefout(%struct.gv* %61) #7
  %62 = load %struct.op** %dfoutgv, align 8
  %63 = bitcast %struct.op* %62 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %63) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end164, %sw.bb119, %if.end115, %if.then178, %if.then136, %if.then117, %while.body, %sw.bb185
  %64 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix195 = getelementptr inbounds %struct.stackinfo* %64, i64 0, i32 2
  %65 = load i32* %si_cxix195, align 4, !tbaa !3
  %dec196 = add nsw i32 %65, -1
  store i32 %dec196, i32* %si_cxix195, align 4, !tbaa !3
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret void
}

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: optsize
declare void @Perl_setdefout(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_qerror(%struct.sv* %err) #0 {
entry:
  %0 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %1, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %3, i64 0, i32 0
  %4 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_catsv_flags(%struct.sv* %4, %struct.sv* %err, i32 2) #7
  br label %if.end4

if.else:                                          ; preds = %entry
  %5 = load %struct.sv** @PL_errors, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %5, null
  br i1 %tobool1, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.else
  tail call void @Perl_sv_catsv_flags(%struct.sv* %5, %struct.sv* %err, i32 2) #7
  br label %if.end4

if.else3:                                         ; preds = %if.else
  tail call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0), %struct.sv* %err) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else3, %if.then
  %6 = load i32* @PL_error_count, align 4, !tbaa !3
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_error_count, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_die_where(i8* %message, i64 %msglen) #0 {
entry:
  %msglen.addr = alloca i64, align 8
  %n_a = alloca i64, align 8
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !4
  %0 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end298, label %if.then

if.then:                                          ; preds = %entry
  %tobool1 = icmp ne i8* %message, null
  br i1 %tobool1, label %if.then2, label %while.cond.preheader

if.then2:                                         ; preds = %if.then
  %1 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %and = and i32 %1, 4
  %tobool3 = icmp eq i32 %and, 0
  %2 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %2, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %4, i64 0, i32 0
  %5 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  br i1 %tobool3, label %if.else80, label %if.then4

if.then4:                                         ; preds = %if.then2
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and5 = and i32 %6, 262144
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  %sv_any27.phi.trans.insert = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %.pre = load i8** %sv_any27.phi.trans.insert, align 8, !tbaa !0
  br label %if.then26

if.else:                                          ; preds = %if.then4
  %sv_any8 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any8, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  %sub = add i64 %msglen, 14
  %cmp = icmp ult i64 %9, %sub
  br i1 %cmp, label %if.then26, label %cond.end

cond.end:                                         ; preds = %if.else
  store i64 %9, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  %11 = load i64* %msglen.addr, align 8, !tbaa !4
  %sub16 = sub i64 %9, %11
  %add.ptr = getelementptr inbounds i8* %10, i64 %sub16
  %12 = load i8* %add.ptr, align 1, !tbaa !1
  %13 = load i8* %message, align 1, !tbaa !1
  %cmp18 = icmp eq i8 %12, %13
  br i1 %cmp18, label %lor.lhs.false, label %if.then26

lor.lhs.false:                                    ; preds = %cond.end
  %call20 = call i32 @strcmp(i8* %add.ptr, i8* %message) #7
  %tobool21 = icmp ne i32 %call20, 0
  %tobool25 = icmp eq i8* %add.ptr, null
  %or.cond = or i1 %tobool21, %tobool25
  br i1 %or.cond, label %if.then26, label %while.cond.preheader

if.then26:                                        ; preds = %lor.lhs.false, %cond.end, %if.else, %if.then7
  %14 = phi i8* [ %.pre, %if.then7 ], [ %7, %if.else ], [ %7, %cond.end ], [ %7, %lor.lhs.false ]
  %sv_any27 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %xpv_len = getelementptr inbounds i8* %14, i64 16
  %15 = bitcast i8* %xpv_len to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %xpv_cur29 = getelementptr inbounds i8* %14, i64 8
  %17 = bitcast i8* %xpv_cur29 to i64*
  %18 = load i64* %17, align 8, !tbaa !4
  %add30 = add i64 %18, 15
  %19 = load i64* %msglen.addr, align 8, !tbaa !4
  %add31 = add i64 %add30, %19
  %cmp32 = icmp ult i64 %16, %add31
  br i1 %cmp32, label %cond.true34, label %cond.end43

cond.true34:                                      ; preds = %if.then26
  %call39 = call i8* @Perl_sv_grow(%struct.sv* %5, i64 %add31) #7
  br label %cond.end43

cond.end43:                                       ; preds = %if.then26, %cond.true34
  call void @Perl_sv_catpvn_flags(%struct.sv* %5, i8* getelementptr inbounds ([15 x i8]* @Perl_die_where.prefix, i64 0, i64 0), i64 14, i32 2) #7
  %20 = load i64* %msglen.addr, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %5, i8* %message, i64 %20, i32 2) #7
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %21, i64 0, i32 14
  %22 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp45 = icmp eq %struct.sv* %22, null
  br i1 %cmp45, label %lor.lhs.false61, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end43
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings47 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings47, align 8, !tbaa !0
  %cmp48 = icmp eq %struct.sv* %24, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp48, label %lor.lhs.false61, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings51 = getelementptr inbounds %struct.cop* %25, i64 0, i32 14
  %26 = load %struct.sv** %cop_warnings51, align 8, !tbaa !0
  %cmp52 = icmp eq %struct.sv* %26, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp52, label %if.then69, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %land.lhs.true50
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings55 = getelementptr inbounds %struct.cop* %27, i64 0, i32 14
  %28 = load %struct.sv** %cop_warnings55, align 8, !tbaa !0
  %sv_any56 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %29 = load i8** %sv_any56, align 8, !tbaa !0
  %xpv_pv57 = bitcast i8* %29 to i8**
  %30 = load i8** %xpv_pv57, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %30, i64 3
  %31 = load i8* %arrayidx, align 1, !tbaa !1
  %and59 = and i8 %31, 1
  %tobool60 = icmp eq i8 %and59, 0
  br i1 %tobool60, label %lor.lhs.false61, label %if.then69

lor.lhs.false61:                                  ; preds = %lor.lhs.false54, %land.lhs.true, %cond.end43
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings62 = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings62, align 8, !tbaa !0
  %cmp63 = icmp eq %struct.sv* %33, null
  br i1 %cmp63, label %land.lhs.true65, label %while.cond.preheader

land.lhs.true65:                                  ; preds = %lor.lhs.false61
  %34 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and67 = and i8 %34, 1
  %tobool68 = icmp eq i8 %and67, 0
  br i1 %tobool68, label %while.cond.preheader, label %if.then69

if.then69:                                        ; preds = %lor.lhs.false54, %land.lhs.true65, %land.lhs.true50
  %35 = load i8** %sv_any27, align 8, !tbaa !0
  %xpv_cur71 = getelementptr inbounds i8* %35, i64 8
  %36 = bitcast i8* %xpv_cur71 to i64*
  %37 = load i64* %36, align 8, !tbaa !4
  %38 = load i64* %msglen.addr, align 8, !tbaa !4
  %sub72 = add i64 %37, -14
  %add74 = sub i64 %sub72, %38
  %xpv_pv76 = bitcast i8* %35 to i8**
  %39 = load i8** %xpv_pv76, align 8, !tbaa !0
  %add.ptr77 = getelementptr inbounds i8* %39, i64 %add74
  call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* %add.ptr77) #7
  br label %while.cond.preheader

if.else80:                                        ; preds = %if.then2
  call void @Perl_sv_setpvn(%struct.sv* %5, i8* %message, i64 %msglen) #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else80, %lor.lhs.false61, %if.then69, %if.then, %land.lhs.true65, %lor.lhs.false
  %.pre371 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end120
  %40 = phi %struct.stackinfo* [ %.pre371, %while.cond.preheader ], [ %49, %if.end120 ]
  %si_cxix = getelementptr inbounds %struct.stackinfo* %40, i64 0, i32 2
  %41 = load i32* %si_cxix, align 4, !tbaa !3
  %cmp3.i = icmp sgt i32 %41, -1
  br i1 %cmp3.i, label %for.body.lr.ph.i, label %land.rhs

for.body.lr.ph.i:                                 ; preds = %while.cond
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %40, i64 0, i32 1
  %42 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %43 = sext i32 %41 to i64
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %44 = trunc i64 %indvars.iv.i to i32
  %cmp.i = icmp sgt i32 %44, 0
  br i1 %cmp.i, label %for.body.i, label %S_dopoptoeval.exit

for.body.i:                                       ; preds = %for.cond.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %43, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.i ]
  %i.04.i = phi i32 [ %41, %for.body.lr.ph.i ], [ %dec.i, %for.cond.i ]
  %cx_type.i = getelementptr inbounds %struct.context* %42, i64 %indvars.iv.i, i32 0
  %45 = load i32* %cx_type.i, align 4, !tbaa !3
  %and.i = and i32 %45, 255
  %cond.i = icmp eq i32 %and.i, 2
  %dec.i = add nsw i32 %i.04.i, -1
  br i1 %cond.i, label %S_dopoptoeval.exit, label %for.cond.i

S_dopoptoeval.exit:                               ; preds = %for.cond.i, %for.body.i
  %i.0.lcssa.i = phi i32 [ %i.04.i, %for.body.i ], [ %dec.i, %for.cond.i ]
  %cmp87 = icmp slt i32 %i.0.lcssa.i, 0
  br i1 %cmp87, label %land.rhs, label %if.then133

land.rhs:                                         ; preds = %while.cond, %S_dopoptoeval.exit
  %i.0.lcssa.i368 = phi i32 [ %i.0.lcssa.i, %S_dopoptoeval.exit ], [ %41, %while.cond ]
  %si_prev = getelementptr inbounds %struct.stackinfo* %40, i64 0, i32 5
  %46 = load %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %tobool89 = icmp eq %struct.stackinfo* %46, null
  br i1 %tobool89, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @Perl_dounwind(i32 -1) #8
  %47 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %48 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev90 = getelementptr inbounds %struct.stackinfo* %48, i64 0, i32 5
  %49 = load %struct.stackinfo** %si_prev90, align 8, !tbaa !0
  %tobool91 = icmp eq %struct.stackinfo* %49, null
  br i1 %tobool91, label %if.then92, label %if.end120

if.then92:                                        ; preds = %while.body
  %50 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool93 = icmp eq %struct.gv* %50, null
  br i1 %tobool93, label %cond.false115, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.then92
  %sv_flags95 = getelementptr inbounds %struct.gv* %50, i64 0, i32 2
  %51 = load i32* %sv_flags95, align 4, !tbaa !3
  %and96 = and i32 %51, 255
  %cmp97 = icmp eq i32 %and96, 13
  br i1 %cmp97, label %land.lhs.true99, label %cond.false115

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %sv_any100 = getelementptr inbounds %struct.gv* %50, i64 0, i32 0
  %52 = load %struct.xpvgv** %sv_any100, align 8, !tbaa !0
  %xgv_gp101 = getelementptr inbounds %struct.xpvgv* %52, i64 0, i32 7
  %53 = load %struct.gp** %xgv_gp101, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %53, i64 0, i32 2
  %54 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool102 = icmp eq %struct.io* %54, null
  br i1 %tobool102, label %cond.false115, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %sv_any107 = getelementptr inbounds %struct.io* %54, i64 0, i32 0
  %55 = load %struct.xpvio** %sv_any107, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %55, i64 0, i32 8
  %56 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool108 = icmp eq %struct._PerlIO** %56, null
  br i1 %tobool108, label %cond.false115, label %cond.end117

cond.false115:                                    ; preds = %land.lhs.true103, %land.lhs.true99, %if.then92, %land.lhs.true94
  %call116 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end117

cond.end117:                                      ; preds = %land.lhs.true103, %cond.false115
  %cond118 = phi %struct._PerlIO** [ %call116, %cond.false115 ], [ %56, %land.lhs.true103 ]
  %call119 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond118, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0)) #7
  call void @Perl_my_exit(i32 1) #7
  br label %if.end120

if.end120:                                        ; preds = %while.body, %cond.end117
  %57 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %57 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %58 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any121 = getelementptr inbounds %struct.av* %58, i64 0, i32 0
  %59 = load %struct.xpvav** %sv_any121, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %59, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8, !tbaa !4
  %si_stack = getelementptr inbounds %struct.stackinfo* %49, i64 0, i32 0
  %60 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any122 = getelementptr inbounds %struct.av* %60, i64 0, i32 0
  %61 = load %struct.xpvav** %sv_any122, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %61, i64 0, i32 0
  %62 = load i8** %xav_array, align 8, !tbaa !0
  %63 = bitcast i8* %62 to %struct.sv**
  store %struct.sv** %63, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %64 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any124 = getelementptr inbounds %struct.av* %64, i64 0, i32 0
  %65 = load %struct.xpvav** %sv_any124, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %65, i64 0, i32 2
  %66 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr125 = getelementptr inbounds %struct.sv** %63, i64 %66
  store %struct.sv** %add.ptr125, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %67 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any127 = getelementptr inbounds %struct.av* %67, i64 0, i32 0
  %68 = load %struct.xpvav** %sv_any127, align 8, !tbaa !0
  %xav_fill128 = getelementptr inbounds %struct.xpvav* %68, i64 0, i32 1
  %69 = load i64* %xav_fill128, align 8, !tbaa !4
  %add.ptr129 = getelementptr inbounds %struct.sv** %63, i64 %69
  store %struct.sv** %add.ptr129, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %70 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %70, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %49, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %land.rhs
  %cmp131 = icmp sgt i32 %i.0.lcssa.i368, -1
  br i1 %cmp131, label %if.then133, label %if.end298

if.then133:                                       ; preds = %S_dopoptoeval.exit, %while.end
  %i.0.lcssa.i367370 = phi i32 [ %i.0.lcssa.i368, %while.end ], [ %i.0.lcssa.i, %S_dopoptoeval.exit ]
  %cmp135 = icmp slt i32 %i.0.lcssa.i367370, %41
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then133
  call void @Perl_dounwind(i32 %i.0.lcssa.i367370) #8
  %.pre372 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix139.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre372, i64 0, i32 2
  %.pre373 = load i32* %si_cxix139.phi.trans.insert, align 4, !tbaa !3
  br label %if.end138

if.end138:                                        ; preds = %if.then133, %if.then137
  %71 = phi i32 [ %.pre373, %if.then137 ], [ %41, %if.then133 ]
  %72 = phi %struct.stackinfo* [ %.pre372, %if.then137 ], [ %40, %if.then133 ]
  %si_cxix139 = getelementptr inbounds %struct.stackinfo* %72, i64 0, i32 2
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %si_cxix139, align 4, !tbaa !3
  %idxprom = sext i32 %71 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %72, i64 0, i32 1
  %73 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %74 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 0
  %75 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %75 to i64
  %add.ptr141 = getelementptr inbounds %struct.sv** %74, i64 %idx.ext
  %blku_oldcop = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 1
  %76 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %76, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %77 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 3
  %78 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext146 = sext i32 %78 to i64
  %add.ptr147 = getelementptr inbounds i32* %77, i64 %idx.ext146
  store i32* %add.ptr147, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 4
  %79 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %79, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 2
  %80 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %80, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 5
  %81 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %81, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 6
  %82 = load i8* %blku_gimme, align 1, !tbaa !1
  %cx_type = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 0
  %83 = load i32* %cx_type, align 4, !tbaa !3
  %and157 = and i32 %83, 255
  %cmp158 = icmp eq i32 %and157, 2
  br i1 %cmp158, label %if.end238, label %if.then160

if.then160:                                       ; preds = %if.end138
  br i1 %tobool1, label %if.end179, label %if.then162

if.then162:                                       ; preds = %if.then160
  %84 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any163 = getelementptr inbounds %struct.gv* %84, i64 0, i32 0
  %85 = load %struct.xpvgv** %sv_any163, align 8, !tbaa !0
  %xgv_gp164 = getelementptr inbounds %struct.xpvgv* %85, i64 0, i32 7
  %86 = load %struct.gp** %xgv_gp164, align 8, !tbaa !0
  %gp_sv165 = getelementptr inbounds %struct.gp* %86, i64 0, i32 0
  %87 = load %struct.sv** %gp_sv165, align 8, !tbaa !0
  store %struct.sv* %87, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags166 = getelementptr inbounds %struct.sv* %87, i64 0, i32 2
  %88 = load i32* %sv_flags166, align 4, !tbaa !3
  %and167 = and i32 %88, 262144
  %cmp168 = icmp eq i32 %and167, 0
  br i1 %cmp168, label %cond.false175, label %cond.true170

cond.true170:                                     ; preds = %if.then162
  %sv_any171 = getelementptr inbounds %struct.sv* %87, i64 0, i32 0
  %89 = load i8** %sv_any171, align 8, !tbaa !0
  %xpv_cur172 = getelementptr inbounds i8* %89, i64 8
  %90 = bitcast i8* %xpv_cur172 to i64*
  %91 = load i64* %90, align 8, !tbaa !4
  store i64 %91, i64* %msglen.addr, align 8, !tbaa !4
  %xpv_pv174 = bitcast i8* %89 to i8**
  %92 = load i8** %xpv_pv174, align 8, !tbaa !0
  br label %if.end179

cond.false175:                                    ; preds = %if.then162
  %call176 = call i8* @Perl_sv_2pv_flags(%struct.sv* %87, i64* %msglen.addr, i32 2) #7
  br label %if.end179

if.end179:                                        ; preds = %cond.true170, %cond.false175, %if.then160
  %message.addr.0 = phi i8* [ %message, %if.then160 ], [ %92, %cond.true170 ], [ %call176, %cond.false175 ]
  %93 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool180 = icmp eq %struct.gv* %93, null
  br i1 %tobool180, label %cond.false204, label %land.lhs.true181

land.lhs.true181:                                 ; preds = %if.end179
  %sv_flags182 = getelementptr inbounds %struct.gv* %93, i64 0, i32 2
  %94 = load i32* %sv_flags182, align 4, !tbaa !3
  %and183 = and i32 %94, 255
  %cmp184 = icmp eq i32 %and183, 13
  br i1 %cmp184, label %land.lhs.true186, label %cond.false204

land.lhs.true186:                                 ; preds = %land.lhs.true181
  %sv_any187 = getelementptr inbounds %struct.gv* %93, i64 0, i32 0
  %95 = load %struct.xpvgv** %sv_any187, align 8, !tbaa !0
  %xgv_gp188 = getelementptr inbounds %struct.xpvgv* %95, i64 0, i32 7
  %96 = load %struct.gp** %xgv_gp188, align 8, !tbaa !0
  %gp_io189 = getelementptr inbounds %struct.gp* %96, i64 0, i32 2
  %97 = load %struct.io** %gp_io189, align 8, !tbaa !0
  %tobool190 = icmp eq %struct.io* %97, null
  br i1 %tobool190, label %cond.false204, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %land.lhs.true186
  %sv_any195 = getelementptr inbounds %struct.io* %97, i64 0, i32 0
  %98 = load %struct.xpvio** %sv_any195, align 8, !tbaa !0
  %xio_ofp196 = getelementptr inbounds %struct.xpvio* %98, i64 0, i32 8
  %99 = load %struct._PerlIO*** %xio_ofp196, align 8, !tbaa !0
  %tobool197 = icmp eq %struct._PerlIO** %99, null
  br i1 %tobool197, label %cond.false204, label %cond.end206

cond.false204:                                    ; preds = %land.lhs.true191, %land.lhs.true186, %if.end179, %land.lhs.true181
  %call205 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end206

cond.end206:                                      ; preds = %land.lhs.true191, %cond.false204
  %cond207 = phi %struct._PerlIO** [ %call205, %cond.false204 ], [ %99, %land.lhs.true191 ]
  %call208 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %cond207, i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i64 11) #7
  %100 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool209 = icmp eq %struct.gv* %100, null
  br i1 %tobool209, label %cond.false233, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %cond.end206
  %sv_flags211 = getelementptr inbounds %struct.gv* %100, i64 0, i32 2
  %101 = load i32* %sv_flags211, align 4, !tbaa !3
  %and212 = and i32 %101, 255
  %cmp213 = icmp eq i32 %and212, 13
  br i1 %cmp213, label %land.lhs.true215, label %cond.false233

land.lhs.true215:                                 ; preds = %land.lhs.true210
  %sv_any216 = getelementptr inbounds %struct.gv* %100, i64 0, i32 0
  %102 = load %struct.xpvgv** %sv_any216, align 8, !tbaa !0
  %xgv_gp217 = getelementptr inbounds %struct.xpvgv* %102, i64 0, i32 7
  %103 = load %struct.gp** %xgv_gp217, align 8, !tbaa !0
  %gp_io218 = getelementptr inbounds %struct.gp* %103, i64 0, i32 2
  %104 = load %struct.io** %gp_io218, align 8, !tbaa !0
  %tobool219 = icmp eq %struct.io* %104, null
  br i1 %tobool219, label %cond.false233, label %land.lhs.true220

land.lhs.true220:                                 ; preds = %land.lhs.true215
  %sv_any224 = getelementptr inbounds %struct.io* %104, i64 0, i32 0
  %105 = load %struct.xpvio** %sv_any224, align 8, !tbaa !0
  %xio_ofp225 = getelementptr inbounds %struct.xpvio* %105, i64 0, i32 8
  %106 = load %struct._PerlIO*** %xio_ofp225, align 8, !tbaa !0
  %tobool226 = icmp eq %struct._PerlIO** %106, null
  br i1 %tobool226, label %cond.false233, label %cond.end235

cond.false233:                                    ; preds = %land.lhs.true220, %land.lhs.true215, %cond.end206, %land.lhs.true210
  %call234 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end235

cond.end235:                                      ; preds = %land.lhs.true220, %cond.false233
  %cond236 = phi %struct._PerlIO** [ %call234, %cond.false233 ], [ %106, %land.lhs.true220 ]
  %107 = load i64* %msglen.addr, align 8, !tbaa !4
  %call237 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %cond236, i8* %message.addr.0, i64 %107) #7
  call void @Perl_my_exit(i32 1) #7
  br label %if.end238

if.end238:                                        ; preds = %if.end138, %cond.end235
  %blk_u = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  %108 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %108, i32* @PL_in_eval, align 4, !tbaa !3
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  %109 = load i32* %old_op_type, align 4, !tbaa !3
  %110 = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %111 = load %struct.op** %110, align 8, !tbaa !0
  store %struct.op* %111, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %73, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %112 = bitcast i32* %old_namesv to %struct.sv**
  %113 = load %struct.sv** %112, align 8, !tbaa !0
  %tobool253 = icmp eq %struct.sv* %113, null
  br i1 %tobool253, label %if.end261, label %if.then254

if.then254:                                       ; preds = %if.end238
  %call260 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %113) #7
  br label %if.end261

if.end261:                                        ; preds = %if.end238, %if.then254
  %cmp262 = icmp eq i8 %82, 0
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %if.end261
  %add.ptr141.sum = add i64 %idx.ext, 1
  %incdec.ptr = getelementptr inbounds %struct.sv** %74, i64 %add.ptr141.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %if.end261
  %newsp.0 = phi %struct.sv** [ %incdec.ptr, %if.then264 ], [ %add.ptr141, %if.end261 ]
  store %struct.sv** %newsp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_pop_scope() #7
  %114 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %114, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp269 = icmp eq i32 %109, 309
  br i1 %cmp269, label %if.then271, label %if.end295

if.then271:                                       ; preds = %if.end265
  %115 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any272 = getelementptr inbounds %struct.gv* %115, i64 0, i32 0
  %116 = load %struct.xpvgv** %sv_any272, align 8, !tbaa !0
  %xgv_gp273 = getelementptr inbounds %struct.xpvgv* %116, i64 0, i32 7
  %117 = load %struct.gp** %xgv_gp273, align 8, !tbaa !0
  %gp_sv274 = getelementptr inbounds %struct.gp* %117, i64 0, i32 0
  %118 = load %struct.sv** %gp_sv274, align 8, !tbaa !0
  store %struct.sv* %118, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags275 = getelementptr inbounds %struct.sv* %118, i64 0, i32 2
  %119 = load i32* %sv_flags275, align 4, !tbaa !3
  %and276 = and i32 %119, 262144
  %cmp277 = icmp eq i32 %and276, 0
  br i1 %cmp277, label %cond.false284, label %cond.true279

cond.true279:                                     ; preds = %if.then271
  %sv_any280 = getelementptr inbounds %struct.sv* %118, i64 0, i32 0
  %120 = load i8** %sv_any280, align 8, !tbaa !0
  %xpv_cur281 = getelementptr inbounds i8* %120, i64 8
  %121 = bitcast i8* %xpv_cur281 to i64*
  %122 = load i64* %121, align 8, !tbaa !4
  store i64 %122, i64* %n_a, align 8, !tbaa !4
  %xpv_pv283 = bitcast i8* %120 to i8**
  %123 = load i8** %xpv_pv283, align 8, !tbaa !0
  br label %cond.end286

cond.false284:                                    ; preds = %if.then271
  %call285 = call i8* @Perl_sv_2pv_flags(%struct.sv* %118, i64* %n_a, i32 2) #7
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false284, %cond.true279
  %cond287 = phi i8* [ %123, %cond.true279 ], [ %call285, %cond.false284 ]
  %124 = load i8* %cond287, align 1, !tbaa !1
  %tobool289 = icmp ne i8 %124, 0
  %cond293 = select i1 %tobool289, i8* %cond287, i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0)
  %call294 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([32 x i8]* @.str18, i64 0, i64 0), i8* %cond293) #7
  br label %return

if.end295:                                        ; preds = %if.end265
  %call296 = call %struct.op* @Perl_pop_return() #7
  br label %return

if.end298:                                        ; preds = %entry, %while.end
  %tobool299 = icmp eq i8* %message, null
  br i1 %tobool299, label %if.then300, label %if.end317

if.then300:                                       ; preds = %if.end298
  %125 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any301 = getelementptr inbounds %struct.gv* %125, i64 0, i32 0
  %126 = load %struct.xpvgv** %sv_any301, align 8, !tbaa !0
  %xgv_gp302 = getelementptr inbounds %struct.xpvgv* %126, i64 0, i32 7
  %127 = load %struct.gp** %xgv_gp302, align 8, !tbaa !0
  %gp_sv303 = getelementptr inbounds %struct.gp* %127, i64 0, i32 0
  %128 = load %struct.sv** %gp_sv303, align 8, !tbaa !0
  store %struct.sv* %128, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags304 = getelementptr inbounds %struct.sv* %128, i64 0, i32 2
  %129 = load i32* %sv_flags304, align 4, !tbaa !3
  %and305 = and i32 %129, 262144
  %cmp306 = icmp eq i32 %and305, 0
  br i1 %cmp306, label %cond.false313, label %cond.true308

cond.true308:                                     ; preds = %if.then300
  %sv_any309 = getelementptr inbounds %struct.sv* %128, i64 0, i32 0
  %130 = load i8** %sv_any309, align 8, !tbaa !0
  %xpv_cur310 = getelementptr inbounds i8* %130, i64 8
  %131 = bitcast i8* %xpv_cur310 to i64*
  %132 = load i64* %131, align 8, !tbaa !4
  store i64 %132, i64* %msglen.addr, align 8, !tbaa !4
  %xpv_pv312 = bitcast i8* %130 to i8**
  %133 = load i8** %xpv_pv312, align 8, !tbaa !0
  br label %if.end317

cond.false313:                                    ; preds = %if.then300
  %call314 = call i8* @Perl_sv_2pv_flags(%struct.sv* %128, i64* %msglen.addr, i32 2) #7
  br label %if.end317

if.end317:                                        ; preds = %if.end298, %cond.true308, %cond.false313
  %message.addr.1 = phi i8* [ %133, %cond.true308 ], [ %call314, %cond.false313 ], [ %message, %if.end298 ]
  %134 = load i64* %msglen.addr, align 8, !tbaa !4
  %conv318 = trunc i64 %134 to i32
  call void @Perl_write_to_stderr(i8* %message.addr.1, i32 %conv318) #7
  call void @Perl_my_failure_exit() #7
  br label %return

return:                                           ; preds = %if.end317, %if.end295, %cond.end286
  %retval.0 = phi %struct.op* [ %call294, %cond.end286 ], [ %call296, %if.end295 ], [ null, %if.end317 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(%struct._PerlIO**, i8*, i64) #1

; Function Attrs: optsize
declare %struct.op* @Perl_pop_return() #1

; Function Attrs: optsize
declare void @Perl_write_to_stderr(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_my_failure_exit() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_xor() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %2 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %2, null
  br i1 %tobool, label %cond.end33, label %cond.false

cond.false:                                       ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false10, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %5 = bitcast i8* %4 to %struct.xpv*
  store %struct.xpv* %5, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %4, null
  br i1 %tobool3, label %land.end9, label %land.rhs

land.rhs:                                         ; preds = %cond.true2
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %6 = bitcast i8* %xpv_cur to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  %cmp = icmp ugt i64 %7, 1
  br i1 %cmp, label %land.end9, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool5 = icmp eq i64 %7, 0
  br i1 %tobool5, label %land.end9, label %land.rhs6

land.rhs6:                                        ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %4 to i8**
  %8 = load i8** %xpv_pv, align 8, !tbaa !0
  %9 = load i8* %8, align 1, !tbaa !1
  %cmp7 = icmp ne i8 %9, 48
  br label %land.end9

land.end9:                                        ; preds = %lor.rhs, %cond.true2, %land.rhs, %land.rhs6
  %10 = phi i1 [ false, %cond.true2 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp7, %land.rhs6 ]
  %cond = zext i1 %10 to i32
  br label %cond.end33

cond.false10:                                     ; preds = %cond.false
  %and12 = and i32 %3, 65536
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %cond.false18, label %cond.true14

cond.true14:                                      ; preds = %cond.false10
  %sv_any15 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %11 = load i8** %sv_any15, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %11, i64 24
  %12 = bitcast i8* %xiv_iv to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  %cmp16 = icmp ne i64 %13, 0
  %conv17 = zext i1 %cmp16 to i32
  br label %cond.end33

cond.false18:                                     ; preds = %cond.false10
  %and20 = and i32 %3, 131072
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %cond.false26, label %cond.true22

cond.true22:                                      ; preds = %cond.false18
  %sv_any23 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %14 = load i8** %sv_any23, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %14, i64 32
  %15 = bitcast i8* %xnv_nv to double*
  %16 = load double* %15, align 8, !tbaa !5
  %cmp24 = fcmp une double %16, 0.000000e+00
  %conv25 = zext i1 %cmp24 to i32
  br label %cond.end33

cond.false26:                                     ; preds = %cond.false18
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %2) #7
  %conv27 = sext i8 %call to i32
  br label %cond.end33

cond.end33:                                       ; preds = %entry, %land.end9, %cond.true22, %cond.false26, %cond.true14
  %cond34 = phi i32 [ 0, %entry ], [ %cond, %land.end9 ], [ %conv17, %cond.true14 ], [ %conv25, %cond.true22 ], [ %conv27, %cond.false26 ]
  %tobool35 = icmp eq %struct.sv* %1, null
  br i1 %tobool35, label %cond.end87, label %cond.false37

cond.false37:                                     ; preds = %cond.end33
  %sv_flags38 = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %17 = load i32* %sv_flags38, align 4, !tbaa !3
  %and39 = and i32 %17, 262144
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %cond.false60, label %cond.true41

cond.true41:                                      ; preds = %cond.false37
  %sv_any42 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %18 = load i8** %sv_any42, align 8, !tbaa !0
  %19 = bitcast i8* %18 to %struct.xpv*
  store %struct.xpv* %19, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool43 = icmp eq i8* %18, null
  br i1 %tobool43, label %land.end58, label %land.rhs44

land.rhs44:                                       ; preds = %cond.true41
  %xpv_cur45 = getelementptr inbounds i8* %18, i64 8
  %20 = bitcast i8* %xpv_cur45 to i64*
  %21 = load i64* %20, align 8, !tbaa !4
  %cmp46 = icmp ugt i64 %21, 1
  br i1 %cmp46, label %land.end58, label %lor.rhs48

lor.rhs48:                                        ; preds = %land.rhs44
  %tobool50 = icmp eq i64 %21, 0
  br i1 %tobool50, label %land.end58, label %land.rhs51

land.rhs51:                                       ; preds = %lor.rhs48
  %xpv_pv52 = bitcast i8* %18 to i8**
  %22 = load i8** %xpv_pv52, align 8, !tbaa !0
  %23 = load i8* %22, align 1, !tbaa !1
  %cmp54 = icmp ne i8 %23, 48
  br label %land.end58

land.end58:                                       ; preds = %lor.rhs48, %cond.true41, %land.rhs44, %land.rhs51
  %24 = phi i1 [ false, %cond.true41 ], [ true, %land.rhs44 ], [ false, %lor.rhs48 ], [ %cmp54, %land.rhs51 ]
  %cond59 = zext i1 %24 to i32
  br label %cond.end87

cond.false60:                                     ; preds = %cond.false37
  %and62 = and i32 %17, 65536
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %cond.false69, label %cond.true64

cond.true64:                                      ; preds = %cond.false60
  %sv_any65 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %25 = load i8** %sv_any65, align 8, !tbaa !0
  %xiv_iv66 = getelementptr inbounds i8* %25, i64 24
  %26 = bitcast i8* %xiv_iv66 to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %cmp67 = icmp ne i64 %27, 0
  %conv68 = zext i1 %cmp67 to i32
  br label %cond.end87

cond.false69:                                     ; preds = %cond.false60
  %and71 = and i32 %17, 131072
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %cond.false78, label %cond.true73

cond.true73:                                      ; preds = %cond.false69
  %sv_any74 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %28 = load i8** %sv_any74, align 8, !tbaa !0
  %xnv_nv75 = getelementptr inbounds i8* %28, i64 32
  %29 = bitcast i8* %xnv_nv75 to double*
  %30 = load double* %29, align 8, !tbaa !5
  %cmp76 = fcmp une double %30, 0.000000e+00
  %conv77 = zext i1 %cmp76 to i32
  br label %cond.end87

cond.false78:                                     ; preds = %cond.false69
  %call79 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #7
  %conv80 = sext i8 %call79 to i32
  br label %cond.end87

cond.end87:                                       ; preds = %cond.end33, %land.end58, %cond.true73, %cond.false78, %cond.true64
  %cond88 = phi i32 [ 0, %cond.end33 ], [ %cond59, %land.end58 ], [ %conv68, %cond.true64 ], [ %conv77, %cond.true73 ], [ %conv80, %cond.false78 ]
  %cmp89 = icmp eq i32 %cond34, %cond88
  %PL_sv_no.PL_sv_yes = select i1 %cmp89, %struct.sv* @PL_sv_no, %struct.sv* @PL_sv_yes
  store %struct.sv* %PL_sv_no.PL_sv_yes, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_andassign() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.then, label %cond.false

cond.false:                                       ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false11, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %4 = bitcast i8* %3 to %struct.xpv*
  store %struct.xpv* %4, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %3, null
  br i1 %tobool3, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true2
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %cmp = icmp ugt i64 %6, 1
  br i1 %cmp, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tobool5 = icmp eq i64 %6, 0
  br i1 %tobool5, label %if.then, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %3 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  %8 = load i8* %7, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %8, 48
  br i1 %cmp7, label %if.then, label %if.else

cond.false11:                                     ; preds = %cond.false
  %and13 = and i32 %2, 65536
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %cond.false19, label %cond.true15

cond.true15:                                      ; preds = %cond.false11
  %sv_any16 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %9 = load i8** %sv_any16, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  %cmp17 = icmp eq i64 %11, 0
  br i1 %cmp17, label %if.then, label %if.else

cond.false19:                                     ; preds = %cond.false11
  %and21 = and i32 %2, 131072
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %cond.false27, label %cond.true23

cond.true23:                                      ; preds = %cond.false19
  %sv_any24 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %12 = load i8** %sv_any24, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %12, i64 32
  %13 = bitcast i8* %xnv_nv to double*
  %14 = load double* %13, align 8, !tbaa !5
  %cmp25 = fcmp une double %14, 0.000000e+00
  br i1 %cmp25, label %if.else, label %if.then

cond.false27:                                     ; preds = %cond.false19
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #7
  %tobool29 = icmp eq i8 %call, 0
  br i1 %tobool29, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true6, %lor.lhs.false, %cond.true2, %cond.true15, %cond.false27, %entry, %cond.true23
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %15, i64 0, i32 0
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %cond.true15, %cond.false27, %land.lhs.true, %cond.true23
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %17 = getelementptr inbounds %struct.op* %16, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi %struct.op** [ %17, %if.else ], [ %op_next, %if.then ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_orassign() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.else, label %cond.false

cond.false:                                       ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false11, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %4 = bitcast i8* %3 to %struct.xpv*
  store %struct.xpv* %4, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %3, null
  br i1 %tobool3, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true2
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %cmp = icmp ugt i64 %6, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tobool5 = icmp eq i64 %6, 0
  br i1 %tobool5, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %3 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  %8 = load i8* %7, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %8, 48
  br i1 %cmp7, label %if.else, label %if.then

cond.false11:                                     ; preds = %cond.false
  %and13 = and i32 %2, 65536
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %cond.false19, label %cond.true15

cond.true15:                                      ; preds = %cond.false11
  %sv_any16 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %9 = load i8** %sv_any16, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  %cmp17 = icmp eq i64 %11, 0
  br i1 %cmp17, label %if.else, label %if.then

cond.false19:                                     ; preds = %cond.false11
  %and21 = and i32 %2, 131072
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %cond.false27, label %cond.true23

cond.true23:                                      ; preds = %cond.false19
  %sv_any24 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %12 = load i8** %sv_any24, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %12, i64 32
  %13 = bitcast i8* %xnv_nv to double*
  %14 = load double* %13, align 8, !tbaa !5
  %cmp25 = fcmp une double %14, 0.000000e+00
  br i1 %cmp25, label %if.then, label %if.else

cond.false27:                                     ; preds = %cond.false19
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #7
  %tobool29 = icmp eq i8 %call, 0
  br i1 %tobool29, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true6, %cond.true15, %cond.false27, %land.lhs.true, %cond.true23
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %15, i64 0, i32 0
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %lor.lhs.false, %cond.true2, %cond.true15, %cond.false27, %entry, %cond.true23
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %17 = getelementptr inbounds %struct.op* %16, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %17, %if.else ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_caller() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 2
  %2 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 1
  %3 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %cmp4.i.i = icmp sgt i32 %2, -1
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %S_dopoptosub.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %4 = sext i32 %2 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %4, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %i.05.i.i = phi i32 [ %2, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cx_type.i.i = getelementptr inbounds %struct.context* %3, i64 %indvars.iv.i.i, i32 0
  %5 = load i32* %cx_type.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %5, 255
  switch i32 %and.i.i, label %for.inc.i.i [
    i32 2, label %S_dopoptosub.exit
    i32 1, label %S_dopoptosub.exit
    i32 6, label %S_dopoptosub.exit
  ]

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %dec.i.i = add nsw i32 %i.05.i.i, -1
  %6 = trunc i64 %indvars.iv.i.i to i32
  %cmp.i.i = icmp sgt i32 %6, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %S_dopoptosub.exit

S_dopoptosub.exit:                                ; preds = %for.body.i.i, %for.body.i.i, %for.body.i.i, %for.inc.i.i, %entry
  %i.0.lcssa.i.i = phi i32 [ %2, %entry ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %8, 15
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %S_dopoptosub.exit
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %9 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %and1 = and i32 %10, 65536
  %tobool2 = icmp eq i32 %and1, 0
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %11, i64 24
  %12 = bitcast i8* %xiv_iv to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call3 = tail call i64 @Perl_sv_2iv(%struct.sv* %9) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %call3, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %cond.end, %S_dopoptosub.exit
  %count.0.ph = phi i32 [ 0, %S_dopoptosub.exit ], [ %conv4, %cond.end ]
  %sp.0.ph = phi %struct.sv** [ %0, %S_dopoptosub.exit ], [ %incdec.ptr, %cond.end ]
  %14 = load %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %tobool40 = icmp eq %struct.gv* %14, null
  %sv_any41 = getelementptr inbounds %struct.gv* %14, i64 0, i32 0
  br label %while.cond.outer

land.rhs:                                         ; preds = %while.body, %while.cond.outer, %while.cond.backedge
  %top_si.0594 = phi %struct.stackinfo* [ %16, %while.cond.backedge ], [ %top_si.0.ph, %while.cond.outer ], [ %16, %while.body ]
  %si_type = getelementptr inbounds %struct.stackinfo* %top_si.0594, i64 0, i32 4
  %15 = load i32* %si_type, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %if.then13, label %while.body

while.body:                                       ; preds = %land.rhs
  %si_prev = getelementptr inbounds %struct.stackinfo* %top_si.0594, i64 0, i32 5
  %16 = load %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %si_cxstack8 = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 1
  %17 = load %struct.context** %si_cxstack8, align 8, !tbaa !0
  %si_cxix9 = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 2
  %18 = load i32* %si_cxix9, align 4, !tbaa !3
  %cmp4.i = icmp sgt i32 %18, -1
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %land.rhs

while.cond.backedge:                              ; preds = %for.inc.i, %for.body.i, %for.body.i, %for.body.i
  %cxix.0.be = phi i32 [ %dec.i, %for.inc.i ], [ %i.05.i, %for.body.i ], [ %i.05.i, %for.body.i ], [ %i.05.i, %for.body.i ]
  %cmp = icmp slt i32 %cxix.0.be, 0
  br i1 %cmp, label %land.rhs, label %if.end39

for.body.lr.ph.i:                                 ; preds = %while.body
  %19 = sext i32 %18 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %19, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %i.05.i = phi i32 [ %18, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i ]
  %cx_type.i = getelementptr inbounds %struct.context* %17, i64 %indvars.iv.i, i32 0
  %20 = load i32* %cx_type.i, align 4, !tbaa !3
  %and.i = and i32 %20, 255
  switch i32 %and.i, label %for.inc.i [
    i32 2, label %while.cond.backedge
    i32 1, label %while.cond.backedge
    i32 6, label %while.cond.backedge
  ]

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %dec.i = add nsw i32 %i.05.i, -1
  %21 = trunc i64 %indvars.iv.i to i32
  %cmp.i553 = icmp sgt i32 %21, 0
  br i1 %cmp.i553, label %for.body.i, label %while.cond.backedge

if.then13:                                        ; preds = %land.rhs
  %22 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %22, i64 0, i32 6
  %23 = load i8* %op_flags, align 1, !tbaa !1
  %conv14 = zext i8 %23 to i32
  %and15 = and i32 %conv14, 3
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %cond.false24, label %cond.true17

cond.true17:                                      ; preds = %if.then13
  %cmp21 = icmp eq i32 %and15, 3
  %cond23 = zext i1 %cmp21 to i32
  br label %cond.end26

cond.false24:                                     ; preds = %if.then13
  %call.i580 = tail call i32 @Perl_block_gimme() #7
  %cmp.i581 = icmp eq i32 %call.i580, 128
  %cond.i582 = select i1 %cmp.i581, i32 0, i32 %call.i580
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false24, %cond.true17
  %cond27 = phi i32 [ %cond23, %cond.true17 ], [ %cond.i582, %cond.false24 ]
  %cmp28 = icmp eq i32 %cond27, 1
  br i1 %cmp28, label %if.end37, label %if.then30

if.then30:                                        ; preds = %cond.end26
  %24 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0.ph to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp31 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then30
  %call34 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0.ph, %struct.sv** %sp.0.ph, i32 1) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then30
  %sp.1 = phi %struct.sv** [ %call34, %if.then33 ], [ %sp.0.ph, %if.then30 ]
  %incdec.ptr36 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr36, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr36, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %25 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %25, i64 0, i32 0
  br label %return

if.end37:                                         ; preds = %cond.end26
  store %struct.sv** %sp.0.ph, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next38 = getelementptr inbounds %struct.op* %26, i64 0, i32 0
  br label %return

if.end39:                                         ; preds = %while.cond.backedge, %while.cond.outer
  %cxix.0.lcssa = phi i32 [ %cxix.0.ph586, %while.cond.outer ], [ %cxix.0.be, %while.cond.backedge ]
  %ccstack.0.lcssa = phi %struct.context* [ %ccstack.0.ph, %while.cond.outer ], [ %17, %while.cond.backedge ]
  %top_si.0.lcssa = phi %struct.stackinfo* [ %top_si.0.ph, %while.cond.outer ], [ %16, %while.cond.backedge ]
  br i1 %tobool40, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end39
  %27 = load %struct.xpvgv** %sv_any41, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %28, i64 0, i32 7
  %29 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool42 = icmp ne %struct.cv* %29, null
  %cmp44 = icmp sgt i32 %cxix.0.lcssa, -1
  %or.cond = and i1 %tobool42, %cmp44
  br i1 %or.cond, label %land.lhs.true46, label %if.end53

land.lhs.true46:                                  ; preds = %land.lhs.true
  %idxprom = sext i32 %cxix.0.lcssa to i64
  %blk_u = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %idxprom, i32 1, i32 0, i32 7
  %cv = bitcast %union.anon.1* %blk_u to %struct.cv**
  %30 = load %struct.cv** %cv, align 8, !tbaa !0
  %cmp50 = icmp eq %struct.cv* %30, %29
  %inc = zext i1 %cmp50 to i32
  %inc.count.0 = add nsw i32 %inc, %count.0.ph585
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true46, %land.lhs.true, %if.end39
  %count.1 = phi i32 [ %count.0.ph585, %land.lhs.true ], [ %count.0.ph585, %if.end39 ], [ %inc.count.0, %land.lhs.true46 ]
  %tobool54 = icmp eq i32 %count.1, 0
  br i1 %tobool54, label %for.end, label %if.end56

if.end56:                                         ; preds = %if.end53
  %dec = add nsw i32 %count.1, -1
  %sub = add nsw i32 %cxix.0.lcssa, -1
  %cmp4.i567 = icmp sgt i32 %cxix.0.lcssa, 0
  br i1 %cmp4.i567, label %for.body.lr.ph.i568, label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end56, %for.body.i573, %for.body.i573, %for.body.i573, %for.inc.i577, %while.cond.preheader
  %count.0.ph585 = phi i32 [ %count.0.ph, %while.cond.preheader ], [ %dec, %for.inc.i577 ], [ %dec, %for.body.i573 ], [ %dec, %for.body.i573 ], [ %dec, %for.body.i573 ], [ %dec, %if.end56 ]
  %top_si.0.ph = phi %struct.stackinfo* [ %1, %while.cond.preheader ], [ %top_si.0.lcssa, %for.inc.i577 ], [ %top_si.0.lcssa, %for.body.i573 ], [ %top_si.0.lcssa, %for.body.i573 ], [ %top_si.0.lcssa, %for.body.i573 ], [ %top_si.0.lcssa, %if.end56 ]
  %ccstack.0.ph = phi %struct.context* [ %3, %while.cond.preheader ], [ %ccstack.0.lcssa, %for.inc.i577 ], [ %ccstack.0.lcssa, %for.body.i573 ], [ %ccstack.0.lcssa, %for.body.i573 ], [ %ccstack.0.lcssa, %for.body.i573 ], [ %ccstack.0.lcssa, %if.end56 ]
  %cxix.0.ph586 = phi i32 [ %i.0.lcssa.i.i, %while.cond.preheader ], [ %dec.i575, %for.inc.i577 ], [ %i.05.i570, %for.body.i573 ], [ %i.05.i570, %for.body.i573 ], [ %i.05.i570, %for.body.i573 ], [ %sub, %if.end56 ]
  %cmp593 = icmp slt i32 %cxix.0.ph586, 0
  br i1 %cmp593, label %land.rhs, label %if.end39

for.body.lr.ph.i568:                              ; preds = %if.end56
  %31 = sext i32 %sub to i64
  br label %for.body.i573

for.body.i573:                                    ; preds = %for.inc.i577, %for.body.lr.ph.i568
  %indvars.iv.i569 = phi i64 [ %31, %for.body.lr.ph.i568 ], [ %indvars.iv.next.i574, %for.inc.i577 ]
  %i.05.i570 = phi i32 [ %sub, %for.body.lr.ph.i568 ], [ %dec.i575, %for.inc.i577 ]
  %cx_type.i571 = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %indvars.iv.i569, i32 0
  %32 = load i32* %cx_type.i571, align 4, !tbaa !3
  %and.i572 = and i32 %32, 255
  switch i32 %and.i572, label %for.inc.i577 [
    i32 2, label %while.cond.outer
    i32 1, label %while.cond.outer
    i32 6, label %while.cond.outer
  ]

for.inc.i577:                                     ; preds = %for.body.i573
  %indvars.iv.next.i574 = add i64 %indvars.iv.i569, -1
  %dec.i575 = add nsw i32 %i.05.i570, -1
  %33 = trunc i64 %indvars.iv.i569 to i32
  %cmp.i576 = icmp sgt i32 %33, 0
  br i1 %cmp.i576, label %for.body.i573, label %while.cond.outer

for.end:                                          ; preds = %if.end53
  %idxprom58 = sext i32 %cxix.0.lcssa to i64
  %arrayidx59 = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %idxprom58
  %cx_type = getelementptr inbounds %struct.context* %arrayidx59, i64 0, i32 0
  %34 = load i32* %cx_type, align 4, !tbaa !3
  %and60 = and i32 %34, 255
  switch i32 %and60, label %if.end96 [
    i32 1, label %if.then67
    i32 6, label %if.then67
  ]

if.then67:                                        ; preds = %for.end, %for.end
  %sub68 = add nsw i32 %cxix.0.lcssa, -1
  %cmp4.i554 = icmp sgt i32 %cxix.0.lcssa, 0
  br i1 %cmp4.i554, label %for.body.lr.ph.i555, label %S_dopoptosub_at.exit566

for.body.lr.ph.i555:                              ; preds = %if.then67
  %35 = sext i32 %sub68 to i64
  br label %for.body.i560

for.body.i560:                                    ; preds = %for.inc.i564, %for.body.lr.ph.i555
  %indvars.iv.i556 = phi i64 [ %35, %for.body.lr.ph.i555 ], [ %indvars.iv.next.i561, %for.inc.i564 ]
  %i.05.i557 = phi i32 [ %sub68, %for.body.lr.ph.i555 ], [ %dec.i562, %for.inc.i564 ]
  %cx_type.i558 = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %indvars.iv.i556, i32 0
  %36 = load i32* %cx_type.i558, align 4, !tbaa !3
  %and.i559 = and i32 %36, 255
  switch i32 %and.i559, label %for.inc.i564 [
    i32 2, label %S_dopoptosub_at.exit566
    i32 1, label %S_dopoptosub_at.exit566
    i32 6, label %S_dopoptosub_at.exit566
  ]

for.inc.i564:                                     ; preds = %for.body.i560
  %indvars.iv.next.i561 = add i64 %indvars.iv.i556, -1
  %dec.i562 = add nsw i32 %i.05.i557, -1
  %37 = trunc i64 %indvars.iv.i556 to i32
  %cmp.i563 = icmp sgt i32 %37, 0
  br i1 %cmp.i563, label %for.body.i560, label %S_dopoptosub_at.exit566

S_dopoptosub_at.exit566:                          ; preds = %for.body.i560, %for.body.i560, %for.body.i560, %for.inc.i564, %if.then67
  %i.0.lcssa.i565 = phi i32 [ %sub68, %if.then67 ], [ %i.05.i557, %for.body.i560 ], [ %i.05.i557, %for.body.i560 ], [ %i.05.i557, %for.body.i560 ], [ %dec.i562, %for.inc.i564 ]
  br i1 %tobool40, label %if.end96, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %S_dopoptosub_at.exit566
  %38 = load %struct.xpvgv** %sv_any41, align 8, !tbaa !0
  %xgv_gp73 = getelementptr inbounds %struct.xpvgv* %38, i64 0, i32 7
  %39 = load %struct.gp** %xgv_gp73, align 8, !tbaa !0
  %gp_cv74 = getelementptr inbounds %struct.gp* %39, i64 0, i32 7
  %40 = load %struct.cv** %gp_cv74, align 8, !tbaa !0
  %tobool75 = icmp ne %struct.cv* %40, null
  %cmp77 = icmp sgt i32 %i.0.lcssa.i565, -1
  %or.cond552 = and i1 %tobool75, %cmp77
  br i1 %or.cond552, label %land.lhs.true79, label %if.end96

land.lhs.true79:                                  ; preds = %land.lhs.true71
  %idxprom80 = sext i32 %i.0.lcssa.i565 to i64
  %blk_u84 = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %idxprom80, i32 1, i32 0, i32 7
  %cv86 = bitcast %union.anon.1* %blk_u84 to %struct.cv**
  %41 = load %struct.cv** %cv86, align 8, !tbaa !0
  %cmp90 = icmp eq %struct.cv* %41, %40
  br i1 %cmp90, label %if.then92, label %if.end96

if.then92:                                        ; preds = %land.lhs.true79
  %arrayidx81 = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %idxprom80
  br label %if.end96

if.end96:                                         ; preds = %land.lhs.true71, %for.end, %S_dopoptosub_at.exit566, %land.lhs.true79, %if.then92
  %cx.0 = phi %struct.context* [ %arrayidx81, %if.then92 ], [ %arrayidx59, %land.lhs.true79 ], [ %arrayidx59, %land.lhs.true71 ], [ %arrayidx59, %S_dopoptosub_at.exit566 ], [ %arrayidx59, %for.end ]
  %blku_oldcop = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 1
  %42 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %cop_stash = getelementptr inbounds %struct.cop* %42, i64 0, i32 9
  %43 = load %struct.hv** %cop_stash, align 8, !tbaa !0
  %tobool99 = icmp eq %struct.hv* %43, null
  br i1 %tobool99, label %cond.end107, label %cond.true100

cond.true100:                                     ; preds = %if.end96
  %sv_any105 = getelementptr inbounds %struct.hv* %43, i64 0, i32 0
  %44 = load %struct.xpvhv** %sv_any105, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %44, i64 0, i32 10
  %45 = load i8** %xhv_name, align 8, !tbaa !0
  br label %cond.end107

cond.end107:                                      ; preds = %if.end96, %cond.true100
  %cond108 = phi i8* [ %45, %cond.true100 ], [ null, %if.end96 ]
  %46 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags109 = getelementptr inbounds %struct.op* %46, i64 0, i32 6
  %47 = load i8* %op_flags109, align 1, !tbaa !1
  %conv110 = zext i8 %47 to i32
  %and111 = and i32 %conv110, 3
  %tobool112 = icmp eq i32 %and111, 0
  br i1 %tobool112, label %cond.false120, label %cond.true113

cond.true113:                                     ; preds = %cond.end107
  %cmp117 = icmp eq i32 %and111, 3
  %cond119 = zext i1 %cmp117 to i32
  br label %cond.end122

cond.false120:                                    ; preds = %cond.end107
  %call.i = tail call i32 @Perl_block_gimme() #7
  %cmp.i = icmp eq i32 %call.i, 128
  %cond.i = select i1 %cmp.i, i32 0, i32 %call.i
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false120, %cond.true113
  %cond123 = phi i32 [ %cond119, %cond.true113 ], [ %cond.i, %cond.false120 ]
  %cmp124 = icmp eq i32 %cond123, 1
  %48 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast127 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.rhs.cast128 = ptrtoint %struct.sv** %sp.0.ph to i64
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  br i1 %cmp124, label %if.end143, label %if.then126

if.then126:                                       ; preds = %cond.end122
  %cmp131 = icmp slt i64 %sub.ptr.sub129, 8
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.then126
  %call134 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0.ph, %struct.sv** %sp.0.ph, i32 1) #7
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.then126
  %sp.2 = phi %struct.sv** [ %call134, %if.then133 ], [ %sp.0.ph, %if.then126 ]
  %tobool136 = icmp eq i8* %cond108, null
  br i1 %tobool136, label %if.then137, label %if.else

if.then137:                                       ; preds = %if.end135
  %incdec.ptr138 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr138, align 8, !tbaa !0
  br label %if.end141

if.else:                                          ; preds = %if.end135
  %49 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %49, i64 0, i32 3
  %50 = load i64* %op_targ, align 8, !tbaa !4
  %51 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds %struct.sv** %51, i64 %50
  %52 = load %struct.sv** %arrayidx139, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %52, i8* %cond108) #7
  %incdec.ptr140 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %52, %struct.sv** %incdec.ptr140, align 8, !tbaa !0
  br label %if.end141

if.end141:                                        ; preds = %if.else, %if.then137
  %sp.3 = phi %struct.sv** [ %incdec.ptr140, %if.else ], [ %incdec.ptr138, %if.then137 ]
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %53 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next142 = getelementptr inbounds %struct.op* %53, i64 0, i32 0
  br label %return

if.end143:                                        ; preds = %cond.end122
  %cmp148 = icmp slt i64 %sub.ptr.sub129, 80
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.end143
  %call151 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0.ph, %struct.sv** %sp.0.ph, i32 10) #7
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.end143
  %sp.4 = phi %struct.sv** [ %call151, %if.then150 ], [ %sp.0.ph, %if.end143 ]
  %tobool153 = icmp eq i8* %cond108, null
  br i1 %tobool153, label %if.then154, label %if.else156

if.then154:                                       ; preds = %if.end152
  %incdec.ptr155 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr155, align 8, !tbaa !0
  br label %if.end160

if.else156:                                       ; preds = %if.end152
  %call157 = tail call %struct.sv* @Perl_newSVpv(i8* %cond108, i64 0) #7
  %call158 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call157) #7
  %incdec.ptr159 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %call158, %struct.sv** %incdec.ptr159, align 8, !tbaa !0
  br label %if.end160

if.end160:                                        ; preds = %if.else156, %if.then154
  %sp.5 = phi %struct.sv** [ %incdec.ptr159, %if.else156 ], [ %incdec.ptr155, %if.then154 ]
  %54 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %cop_filegv = getelementptr inbounds %struct.cop* %54, i64 0, i32 10
  %55 = load %struct.gv** %cop_filegv, align 8, !tbaa !0
  %tobool164 = icmp eq %struct.gv* %55, null
  br i1 %tobool164, label %cond.end193, label %cond.true165

cond.true165:                                     ; preds = %if.end160
  %sv_any170 = getelementptr inbounds %struct.gv* %55, i64 0, i32 0
  %56 = load %struct.xpvgv** %sv_any170, align 8, !tbaa !0
  %xgv_gp171 = getelementptr inbounds %struct.xpvgv* %56, i64 0, i32 7
  %57 = load %struct.gp** %xgv_gp171, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %57, i64 0, i32 0
  %58 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool172 = icmp eq %struct.sv* %58, null
  br i1 %tobool172, label %cond.end193, label %cond.true174

cond.true174:                                     ; preds = %cond.true165
  %sv_any191 = getelementptr inbounds %struct.sv* %58, i64 0, i32 0
  %59 = load i8** %sv_any191, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %59 to i8**
  %60 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end193

cond.end193:                                      ; preds = %cond.true165, %if.end160, %cond.true174
  %cond194 = phi i8* [ %60, %cond.true174 ], [ null, %if.end160 ], [ null, %cond.true165 ]
  %call195 = tail call %struct.sv* @Perl_newSVpv(i8* %cond194, i64 0) #7
  %call196 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call195) #7
  %incdec.ptr197 = getelementptr inbounds %struct.sv** %sp.5, i64 1
  store %struct.sv* %call196, %struct.sv** %incdec.ptr197, align 8, !tbaa !0
  %61 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %cop_line = getelementptr inbounds %struct.cop* %61, i64 0, i32 13
  %62 = load i32* %cop_line, align 4, !tbaa !3
  %conv201 = sext i32 %62 to i64
  %call202 = tail call %struct.sv* @Perl_newSViv(i64 %conv201) #7
  %call203 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call202) #7
  %incdec.ptr204 = getelementptr inbounds %struct.sv** %sp.5, i64 2
  store %struct.sv* %call203, %struct.sv** %incdec.ptr204, align 8, !tbaa !0
  %63 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private205 = getelementptr inbounds %struct.op* %63, i64 0, i32 7
  %64 = load i8* %op_private205, align 1, !tbaa !1
  %and207 = and i8 %64, 15
  %tobool208 = icmp eq i8 %and207, 0
  br i1 %tobool208, label %if.then209, label %if.end211

if.then209:                                       ; preds = %cond.end193
  store %struct.sv** %incdec.ptr204, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %op_next210 = getelementptr inbounds %struct.op* %63, i64 0, i32 0
  br label %return

if.end211:                                        ; preds = %cond.end193
  %cx_type212 = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 0
  %65 = load i32* %cx_type212, align 4, !tbaa !3
  %and213 = and i32 %65, 255
  switch i32 %and213, label %if.else262 [
    i32 1, label %if.then221
    i32 6, label %if.then221
  ]

if.then221:                                       ; preds = %if.end211, %if.end211
  %blk_u226 = getelementptr inbounds %struct.context* %ccstack.0.lcssa, i64 %idxprom58, i32 1, i32 0, i32 7
  %cv228 = bitcast %union.anon.1* %blk_u226 to %struct.cv**
  %66 = load %struct.cv** %cv228, align 8, !tbaa !0
  %sv_any229 = getelementptr inbounds %struct.cv* %66, i64 0, i32 0
  %67 = load %struct.xpvcv** %sv_any229, align 8, !tbaa !0
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %67, i64 0, i32 12
  %68 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_flags230 = getelementptr inbounds %struct.gv* %68, i64 0, i32 2
  %69 = load i32* %sv_flags230, align 4, !tbaa !3
  %and231 = and i32 %69, 255
  %cmp232 = icmp eq i32 %and231, 13
  br i1 %cmp232, label %if.then234, label %if.else247

if.then234:                                       ; preds = %if.then221
  %call235 = tail call %struct.sv* @Perl_newSV(i64 0) #7
  tail call void @Perl_gv_efullname4(%struct.sv* %call235, %struct.gv* %68, i8* null, i8 signext 1) #7
  %call236 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call235) #7
  %incdec.ptr237 = getelementptr inbounds %struct.sv** %sp.5, i64 3
  store %struct.sv* %call236, %struct.sv** %incdec.ptr237, align 8, !tbaa !0
  %hasargs = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7, i32 0, i32 6
  %70 = bitcast %struct.sv** %hasargs to i8*
  %71 = load i8* %70, align 1, !tbaa !1
  %conv243 = zext i8 %71 to i64
  %call244 = tail call %struct.sv* @Perl_newSViv(i64 %conv243) #7
  %call245 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call244) #7
  %incdec.ptr246 = getelementptr inbounds %struct.sv** %sp.5, i64 4
  store %struct.sv* %call245, %struct.sv** %incdec.ptr246, align 8, !tbaa !0
  br label %if.end269

if.else247:                                       ; preds = %if.then221
  %call248 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i64 9) #7
  %call249 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call248) #7
  %incdec.ptr250 = getelementptr inbounds %struct.sv** %sp.5, i64 3
  store %struct.sv* %call249, %struct.sv** %incdec.ptr250, align 8, !tbaa !0
  %hasargs255 = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7, i32 0, i32 6
  %72 = bitcast %struct.sv** %hasargs255 to i8*
  %73 = load i8* %72, align 1, !tbaa !1
  %conv257 = zext i8 %73 to i64
  %call258 = tail call %struct.sv* @Perl_newSViv(i64 %conv257) #7
  %call259 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call258) #7
  %incdec.ptr260 = getelementptr inbounds %struct.sv** %sp.5, i64 4
  store %struct.sv* %call259, %struct.sv** %incdec.ptr260, align 8, !tbaa !0
  br label %if.end269

if.else262:                                       ; preds = %if.end211
  %call263 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0), i64 6) #7
  %call264 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call263) #7
  %incdec.ptr265 = getelementptr inbounds %struct.sv** %sp.5, i64 3
  store %struct.sv* %call264, %struct.sv** %incdec.ptr265, align 8, !tbaa !0
  %call266 = tail call %struct.sv* @Perl_newSViv(i64 0) #7
  %call267 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call266) #7
  %incdec.ptr268 = getelementptr inbounds %struct.sv** %sp.5, i64 4
  store %struct.sv* %call267, %struct.sv** %incdec.ptr268, align 8, !tbaa !0
  br label %if.end269

if.end269:                                        ; preds = %if.then234, %if.else247, %if.else262
  %sp.6 = phi %struct.sv** [ %incdec.ptr246, %if.then234 ], [ %incdec.ptr260, %if.else247 ], [ %incdec.ptr268, %if.else262 ]
  %blku_gimme = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 6
  %74 = load i8* %blku_gimme, align 1, !tbaa !1
  %cmp273 = icmp eq i8 %74, -128
  br i1 %cmp273, label %if.then275, label %if.else277

if.then275:                                       ; preds = %if.end269
  %incdec.ptr276 = getelementptr inbounds %struct.sv** %sp.6, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr276, align 8, !tbaa !0
  br label %if.end283

if.else277:                                       ; preds = %if.end269
  %conv272 = zext i8 %74 to i64
  %and278 = and i64 %conv272, 1
  %call280 = tail call %struct.sv* @Perl_newSViv(i64 %and278) #7
  %call281 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call280) #7
  %incdec.ptr282 = getelementptr inbounds %struct.sv** %sp.6, i64 1
  store %struct.sv* %call281, %struct.sv** %incdec.ptr282, align 8, !tbaa !0
  br label %if.end283

if.end283:                                        ; preds = %if.else277, %if.then275
  %sp.7 = phi %struct.sv** [ %incdec.ptr276, %if.then275 ], [ %incdec.ptr282, %if.else277 ]
  %75 = load i32* %cx_type212, align 4, !tbaa !3
  %and285 = and i32 %75, 255
  %cmp286 = icmp eq i32 %and285, 2
  br i1 %cmp286, label %if.then288, label %if.else322

if.then288:                                       ; preds = %if.end283
  %blk_u291 = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u291 to %struct.block_eval*
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  %76 = load i32* %old_op_type, align 4, !tbaa !3
  %cmp292 = icmp eq i32 %76, 311
  br i1 %cmp292, label %if.then294, label %if.else301

if.then294:                                       ; preds = %if.then288
  %cur_text = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7, i32 0, i32 3
  %77 = load %struct.op** %cur_text, align 8
  %78 = bitcast %struct.op* %77 to %struct.sv*
  %incdec.ptr299 = getelementptr inbounds %struct.sv** %sp.7, i64 1
  store %struct.sv* %78, %struct.sv** %incdec.ptr299, align 8, !tbaa !0
  %incdec.ptr300 = getelementptr inbounds %struct.sv** %sp.7, i64 2
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr300, align 8, !tbaa !0
  br label %if.end325

if.else301:                                       ; preds = %if.then288
  %old_namesv = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %79 = bitcast i32* %old_namesv to %struct.sv**
  %80 = load %struct.sv** %79, align 8, !tbaa !0
  %tobool306 = icmp eq %struct.sv* %80, null
  br i1 %tobool306, label %if.else317, label %if.then307

if.then307:                                       ; preds = %if.else301
  %call313 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %80) #7
  %call314 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call313) #7
  %incdec.ptr315 = getelementptr inbounds %struct.sv** %sp.7, i64 1
  store %struct.sv* %call314, %struct.sv** %incdec.ptr315, align 8, !tbaa !0
  %incdec.ptr316 = getelementptr inbounds %struct.sv** %sp.7, i64 2
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr316, align 8, !tbaa !0
  %.pre = load i32* %cx_type212, align 4, !tbaa !3
  br label %if.end325

if.else317:                                       ; preds = %if.else301
  %incdec.ptr318 = getelementptr inbounds %struct.sv** %sp.7, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr318, align 8, !tbaa !0
  %incdec.ptr319 = getelementptr inbounds %struct.sv** %sp.7, i64 2
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr319, align 8, !tbaa !0
  br label %if.end325

if.else322:                                       ; preds = %if.end283
  %incdec.ptr323 = getelementptr inbounds %struct.sv** %sp.7, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr323, align 8, !tbaa !0
  %incdec.ptr324 = getelementptr inbounds %struct.sv** %sp.7, i64 2
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr324, align 8, !tbaa !0
  br label %if.end325

if.end325:                                        ; preds = %if.then294, %if.else317, %if.then307, %if.else322
  %81 = phi i32 [ %75, %if.then294 ], [ %.pre, %if.then307 ], [ %75, %if.else317 ], [ %75, %if.else322 ]
  %sp.8 = phi %struct.sv** [ %incdec.ptr300, %if.then294 ], [ %incdec.ptr316, %if.then307 ], [ %incdec.ptr319, %if.else317 ], [ %incdec.ptr324, %if.else322 ]
  %and327 = and i32 %81, 255
  %cmp328 = icmp eq i32 %and327, 1
  br i1 %cmp328, label %land.lhs.true330, label %if.end395

land.lhs.true330:                                 ; preds = %if.end325
  %hasargs335 = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7, i32 0, i32 6
  %82 = bitcast %struct.sv** %hasargs335 to i8*
  %83 = load i8* %82, align 1, !tbaa !1
  %tobool337 = icmp eq i8 %83, 0
  br i1 %tobool337, label %if.end395, label %land.lhs.true338

land.lhs.true338:                                 ; preds = %land.lhs.true330
  %84 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash339 = getelementptr inbounds %struct.cop* %84, i64 0, i32 9
  %85 = load %struct.hv** %cop_stash339, align 8, !tbaa !0
  %86 = load %struct.hv** @PL_debstash, align 8, !tbaa !0
  %cmp340 = icmp eq %struct.hv* %85, %86
  br i1 %cmp340, label %if.then342, label %if.end395

if.then342:                                       ; preds = %land.lhs.true338
  %argarray = getelementptr inbounds %struct.context* %cx.0, i64 0, i32 1, i32 0, i32 7, i32 0, i32 4
  %87 = load %struct.op** %argarray, align 8
  %sv_any347 = bitcast %struct.op* %87 to %struct.xpvav**
  %88 = load %struct.xpvav** %sv_any347, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %88, i64 0, i32 0
  %89 = load i8** %xav_array, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %88, i64 0, i32 7
  %90 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast349 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast350 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.sub351 = sub i64 %sub.ptr.lhs.cast349, %sub.ptr.rhs.cast350
  %91 = load %struct.av** @PL_dbargs, align 8, !tbaa !0
  %tobool354 = icmp eq %struct.av* %91, null
  br i1 %tobool354, label %if.then355, label %if.end367

if.then355:                                       ; preds = %if.then342
  %call356 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i32 1, i32 10) #7
  %call357 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %call356) #7
  %sv_any358 = getelementptr inbounds %struct.gv* %call357, i64 0, i32 0
  %92 = load %struct.xpvgv** %sv_any358, align 8, !tbaa !0
  %xgv_gp359 = getelementptr inbounds %struct.xpvgv* %92, i64 0, i32 7
  %93 = load %struct.gp** %xgv_gp359, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %93, i64 0, i32 4
  %94 = load %struct.av** %gp_av, align 8, !tbaa !0
  store %struct.av* %94, %struct.av** @PL_dbargs, align 8, !tbaa !0
  %sv_any360 = getelementptr inbounds %struct.gv* %call356, i64 0, i32 0
  %95 = load %struct.xpvgv** %sv_any360, align 8, !tbaa !0
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %95, i64 0, i32 11
  %96 = load i8* %xgv_flags, align 1, !tbaa !1
  %or = or i8 %96, 2
  store i8 %or, i8* %xgv_flags, align 1, !tbaa !1
  %97 = load %struct.av** @PL_dbargs, align 8, !tbaa !0
  %sv_any363 = getelementptr inbounds %struct.av* %97, i64 0, i32 0
  %98 = load %struct.xpvav** %sv_any363, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %98, i64 0, i32 9
  %99 = load i8* %xav_flags, align 1, !tbaa !1
  %and365 = and i8 %99, -2
  store i8 %and365, i8* %xav_flags, align 1, !tbaa !1
  %.pre598 = load %struct.av** @PL_dbargs, align 8, !tbaa !0
  %.pre599 = load %struct.xpvav** %sv_any347, align 8, !tbaa !0
  br label %if.end367

if.end367:                                        ; preds = %if.then342, %if.then355
  %100 = phi %struct.xpvav* [ %88, %if.then342 ], [ %.pre599, %if.then355 ]
  %101 = phi %struct.av* [ %91, %if.then342 ], [ %.pre598, %if.then355 ]
  %sv_any368 = getelementptr inbounds %struct.av* %101, i64 0, i32 0
  %102 = load %struct.xpvav** %sv_any368, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %102, i64 0, i32 2
  %103 = load i64* %xav_max, align 8, !tbaa !4
  %xav_fill = getelementptr inbounds %struct.xpvav* %100, i64 0, i32 1
  %104 = load i64* %xav_fill, align 8, !tbaa !4
  %105 = shl i64 %sub.ptr.sub351, 29
  %conv370 = ashr i64 %105, 32
  %add = add nsw i64 %104, %conv370
  %cmp371 = icmp slt i64 %103, %add
  br i1 %cmp371, label %if.then373, label %if.end379

if.then373:                                       ; preds = %if.end367
  %conv378 = trunc i64 %add to i32
  tail call void @Perl_av_extend(%struct.av* %101, i32 %conv378) #7
  %.pre600 = load %struct.av** @PL_dbargs, align 8, !tbaa !0
  %sv_any380.phi.trans.insert = getelementptr inbounds %struct.av* %.pre600, i64 0, i32 0
  %.pre601 = load %struct.xpvav** %sv_any380.phi.trans.insert, align 8, !tbaa !0
  %.pre602 = load %struct.xpvav** %sv_any347, align 8, !tbaa !0
  %xav_fill385.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre602, i64 0, i32 1
  %.pre603 = load i64* %xav_fill385.phi.trans.insert, align 8, !tbaa !4
  br label %if.end379

if.end379:                                        ; preds = %if.then373, %if.end367
  %106 = phi i64 [ %.pre603, %if.then373 ], [ %104, %if.end367 ]
  %107 = phi %struct.xpvav* [ %.pre602, %if.then373 ], [ %100, %if.end367 ]
  %108 = phi %struct.xpvav* [ %.pre601, %if.then373 ], [ %102, %if.end367 ]
  %xav_array381 = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 0
  %109 = load i8** %xav_array381, align 8, !tbaa !0
  %xav_alloc383 = getelementptr inbounds %struct.xpvav* %107, i64 0, i32 7
  %110 = load %struct.sv*** %xav_alloc383, align 8, !tbaa !0
  %111 = bitcast %struct.sv** %110 to i8*
  %add386 = add i64 %conv370, 1
  %add388 = add i64 %add386, %106
  %mul = shl i64 %add388, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %111, i64 %mul, i32 1, i1 false)
  %112 = load %struct.xpvav** %sv_any347, align 8, !tbaa !0
  %xav_fill390 = getelementptr inbounds %struct.xpvav* %112, i64 0, i32 1
  %113 = load i64* %xav_fill390, align 8, !tbaa !4
  %add392 = add nsw i64 %113, %conv370
  %114 = load %struct.av** @PL_dbargs, align 8, !tbaa !0
  %sv_any393 = getelementptr inbounds %struct.av* %114, i64 0, i32 0
  %115 = load %struct.xpvav** %sv_any393, align 8, !tbaa !0
  %xav_fill394 = getelementptr inbounds %struct.xpvav* %115, i64 0, i32 1
  store i64 %add392, i64* %xav_fill394, align 8, !tbaa !4
  br label %if.end395

if.end395:                                        ; preds = %land.lhs.true330, %if.end379, %land.lhs.true338, %if.end325
  %116 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %op_private399 = getelementptr inbounds %struct.cop* %116, i64 0, i32 7
  %117 = load i8* %op_private399, align 1, !tbaa !1
  %conv402 = zext i8 %117 to i64
  %call403 = tail call %struct.sv* @Perl_newSViv(i64 %conv402) #7
  %call404 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call403) #7
  %incdec.ptr405 = getelementptr inbounds %struct.sv** %sp.8, i64 1
  store %struct.sv* %call404, %struct.sv** %incdec.ptr405, align 8, !tbaa !0
  %118 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %118, i64 0, i32 14
  %119 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp409 = icmp eq %struct.sv* %119, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp409, label %if.then419, label %lor.lhs.false411

lor.lhs.false411:                                 ; preds = %if.end395
  %cmp412 = icmp eq %struct.sv* %119, null
  br i1 %cmp412, label %land.lhs.true414, label %if.else421

land.lhs.true414:                                 ; preds = %lor.lhs.false411
  %120 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and416 = and i8 %120, 1
  %cmp417 = icmp eq i8 %and416, 0
  br i1 %cmp417, label %if.then419, label %if.else421

if.then419:                                       ; preds = %land.lhs.true414, %if.end395
  %call420 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i64 12) #7
  br label %if.end445

if.else421:                                       ; preds = %land.lhs.true414, %lor.lhs.false411
  %cmp422 = icmp eq %struct.sv* %119, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp422, label %if.then431, label %lor.lhs.false424

lor.lhs.false424:                                 ; preds = %if.else421
  br i1 %cmp412, label %land.lhs.true427, label %if.else442

land.lhs.true427:                                 ; preds = %lor.lhs.false424
  %121 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and429 = and i8 %121, 1
  %tobool430 = icmp eq i8 %and429, 0
  br i1 %tobool430, label %if.else442, label %if.then431

if.then431:                                       ; preds = %land.lhs.true427, %if.else421
  %call432 = tail call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0), i32 0) #7
  %tobool433 = icmp eq %struct.hv* %call432, null
  br i1 %tobool433, label %if.else439, label %land.lhs.true434

land.lhs.true434:                                 ; preds = %if.then431
  %call435 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %call432, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i32 3, i32 0) #7
  %tobool436 = icmp eq %struct.sv** %call435, null
  br i1 %tobool436, label %if.else439, label %if.then437

if.then437:                                       ; preds = %land.lhs.true434
  %122 = load %struct.sv** %call435, align 8, !tbaa !0
  %call438 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %122) #7
  br label %if.end445

if.else439:                                       ; preds = %land.lhs.true434, %if.then431
  %call440 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([13 x i8]* @.str26, i64 0, i64 0), i64 12) #7
  br label %if.end445

if.else442:                                       ; preds = %land.lhs.true427, %lor.lhs.false424
  %call443 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %119) #7
  br label %if.end445

if.end445:                                        ; preds = %if.else442, %if.else439, %if.then437, %if.then419
  %mask.0 = phi %struct.sv* [ %call420, %if.then419 ], [ %call438, %if.then437 ], [ %call440, %if.else439 ], [ %call443, %if.else442 ]
  %call446 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %mask.0) #7
  %incdec.ptr447 = getelementptr inbounds %struct.sv** %sp.8, i64 2
  store %struct.sv* %call446, %struct.sv** %incdec.ptr447, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr447, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %123 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next448 = getelementptr inbounds %struct.op* %123, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end445, %if.then209, %if.end141, %if.end37, %if.end35
  %retval.0.in = phi %struct.op** [ %op_next, %if.end35 ], [ %op_next38, %if.end37 ], [ %op_next142, %if.end141 ], [ %op_next448, %if.end445 ], [ %op_next210, %if.then209 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: optsize
declare %struct.hv* @Perl_get_hv(i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_reset() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and2 = and i32 %4, 262144
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %5, i64 8
  %6 = bitcast i8* %xpv_cur to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  store i64 %7, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %5 to i8**
  %8 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end

cond.false:                                       ; preds = %if.else
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %3, i64* %n_a, i32 2) #7
  br label %if.end

if.end:                                           ; preds = %cond.true, %cond.false, %entry
  %sp.0 = phi %struct.sv** [ %0, %entry ], [ %incdec.ptr, %cond.false ], [ %incdec.ptr, %cond.true ]
  %tmps.0 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0), %entry ], [ %call, %cond.false ], [ %8, %cond.true ]
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash = getelementptr inbounds %struct.cop* %9, i64 0, i32 9
  %10 = load %struct.hv** %cop_stash, align 8, !tbaa !0
  call void @Perl_sv_reset(i8* %tmps.0, %struct.hv* %10) #7
  %incdec.ptr6 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr6, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr6, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %11, i64 0, i32 0
  %12 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %12
}

; Function Attrs: optsize
declare void @Perl_sv_reset(i8*, %struct.hv*) #1

; Function Attrs: nounwind optsize readonly uwtable
define %struct.op* @Perl_pp_lineseq() #2 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %0, i64 0, i32 0
  %1 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %1
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_dbstate() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %1 = bitcast %struct.op* %0 to %struct.cop*
  store volatile %struct.cop* %1, %struct.cop** @PL_curcop, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %2 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  %4 = load i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %4 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 1
  %5 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 0
  %6 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %2, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %8 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @Perl_free_tmps() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %9, i64 0, i32 6
  %10 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %10, 0
  br i1 %tobool, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.sv** @PL_DBsingle, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !3
  %and1 = and i32 %12, 65536
  %tobool2 = icmp eq i32 %and1, 0
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %13, i64 24
  %14 = bitcast i8* %xiv_iv to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  %tobool3 = icmp eq i64 %15, 0
  br i1 %tobool3, label %lor.lhs.false5, label %if.then27

cond.false:                                       ; preds = %lor.lhs.false
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %11) #7
  %tobool4 = icmp eq i64 %call, 0
  br i1 %tobool4, label %lor.lhs.false5, label %if.then27

lor.lhs.false5:                                   ; preds = %cond.true, %cond.false
  %16 = load %struct.sv** @PL_DBsignal, align 8, !tbaa !0
  %sv_flags6 = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %17 = load i32* %sv_flags6, align 4, !tbaa !3
  %and7 = and i32 %17, 65536
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %cond.false13, label %cond.true9

cond.true9:                                       ; preds = %lor.lhs.false5
  %sv_any10 = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %18 = load i8** %sv_any10, align 8, !tbaa !0
  %xiv_iv11 = getelementptr inbounds i8* %18, i64 24
  %19 = bitcast i8* %xiv_iv11 to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  %tobool12 = icmp eq i64 %20, 0
  br i1 %tobool12, label %lor.lhs.false16, label %if.then27

cond.false13:                                     ; preds = %lor.lhs.false5
  %call14 = tail call i64 @Perl_sv_2iv(%struct.sv* %16) #7
  %tobool15 = icmp eq i64 %call14, 0
  br i1 %tobool15, label %lor.lhs.false16, label %if.then27

lor.lhs.false16:                                  ; preds = %cond.true9, %cond.false13
  %21 = load %struct.sv** @PL_DBtrace, align 8, !tbaa !0
  %sv_flags17 = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %22, 65536
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %cond.false24, label %cond.true20

cond.true20:                                      ; preds = %lor.lhs.false16
  %sv_any21 = getelementptr inbounds %struct.sv* %21, i64 0, i32 0
  %23 = load i8** %sv_any21, align 8, !tbaa !0
  %xiv_iv22 = getelementptr inbounds i8* %23, i64 24
  %24 = bitcast i8* %xiv_iv22 to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  %tobool23 = icmp eq i64 %25, 0
  br i1 %tobool23, label %if.else, label %if.then27

cond.false24:                                     ; preds = %lor.lhs.false16
  %call25 = tail call i64 @Perl_sv_2iv(%struct.sv* %21) #7
  %tobool26 = icmp eq i64 %call25, 0
  br i1 %tobool26, label %if.else, label %if.then27

if.then27:                                        ; preds = %cond.true, %cond.true9, %cond.true20, %cond.false24, %cond.false13, %cond.false, %if.end
  %26 = load %struct.gv** @PL_DBgv, align 8, !tbaa !0
  %sv_any28 = getelementptr inbounds %struct.gv* %26, i64 0, i32 0
  %27 = load %struct.xpvgv** %sv_any28, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %28, i64 0, i32 7
  %29 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool29 = icmp eq %struct.cv* %29, null
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then27
  %call31 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([26 x i8]* @.str27, i64 0, i64 0)) #7
  br label %return

if.end32:                                         ; preds = %if.then27
  %sv_any33 = getelementptr inbounds %struct.cv* %29, i64 0, i32 0
  %30 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %30, i64 0, i32 14
  %31 = load i64* %xcv_depth, align 8, !tbaa !4
  %cmp34 = icmp sgt i64 %31, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.end32
  %32 = load volatile i32* @PL_debug, align 4, !tbaa !3
  %and36 = and i32 %32, 1073741824
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %land.lhs.true
  %33 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %33, i64 0, i32 0
  %34 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end39:                                         ; preds = %land.lhs.true, %if.end32
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %35 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %35, i32* @PL_tmps_floor, align 4, !tbaa !3
  tail call void @Perl_save_I32(i32* @PL_debug) #7
  %36 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add = add nsw i32 %36, 2
  %37 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp40 = icmp sgt i32 %add, %37
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  tail call void @Perl_savestack_grow() #7
  %.pre = load i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %38 = phi i32 [ %.pre, %if.then42 ], [ %36, %if.end39 ]
  %39 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div168 = lshr exact i64 %sub.ptr.sub, 3
  %conv44 = trunc i64 %sub.ptr.div168 to i32
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom45 = sext i32 %38 to i64
  %41 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds %union.any* %41, i64 %idxprom45
  %any_i32 = bitcast %union.any* %arrayidx46 to i32*
  store i32 %conv44, i32* %any_i32, align 4, !tbaa !3
  %42 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc47 = add nsw i32 %42, 1
  store i32 %inc47, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds %union.any* %41, i64 %idxprom48
  %any_i3250 = bitcast %union.any* %arrayidx49 to i32*
  store i32 22, i32* %any_i3250, align 4, !tbaa !3
  store volatile i32 0, i32* @PL_debug, align 4, !tbaa !3
  %43 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %44 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next51 = getelementptr inbounds %struct.op* %44, i64 0, i32 0
  %45 = load %struct.op** %op_next51, align 8, !tbaa !0
  tail call void @Perl_push_return(%struct.op* %45) #7
  %46 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix52 = getelementptr inbounds %struct.stackinfo* %46, i64 0, i32 2
  %47 = load i32* %si_cxix52, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %46, i64 0, i32 3
  %48 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp53 = icmp slt i32 %47, %48
  br i1 %cmp53, label %cond.true55, label %cond.false58

cond.true55:                                      ; preds = %if.end43
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, i32* %si_cxix52, align 4, !tbaa !3
  br label %cond.end

cond.false58:                                     ; preds = %if.end43
  %call59 = tail call i32 @Perl_cxinc() #7
  %49 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix60 = getelementptr inbounds %struct.stackinfo* %49, i64 0, i32 2
  store i32 %call59, i32* %si_cxix60, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false58, %cond.true55
  %50 = phi i32 [ %call59, %cond.false58 ], [ %inc57, %cond.true55 ]
  %51 = phi %struct.stackinfo* [ %49, %cond.false58 ], [ %46, %cond.true55 ]
  %idxprom62 = sext i32 %50 to i64
  %si_cxstack63 = getelementptr inbounds %struct.stackinfo* %51, i64 0, i32 1
  %52 = load %struct.context** %si_cxstack63, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 0
  store i32 1, i32* %cx_type, align 4, !tbaa !3
  %53 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast65 = ptrtoint %struct.sv** %43 to i64
  %sub.ptr.rhs.cast66 = ptrtoint %struct.sv** %53 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %sub.ptr.div68169 = lshr exact i64 %sub.ptr.sub67, 3
  %conv69 = trunc i64 %sub.ptr.div68169 to i32
  %blku_oldsp72 = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 0
  store i32 %conv69, i32* %blku_oldsp72, align 4, !tbaa !3
  %54 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 1
  store %struct.cop* %54, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %55 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %56 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast75 = ptrtoint i32* %55 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i32* %56 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %sub.ptr.div78170 = lshr exact i64 %sub.ptr.sub77, 2
  %conv79 = trunc i64 %sub.ptr.div78170 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 3
  store i32 %conv79, i32* %blku_oldmarksp, align 4, !tbaa !3
  %57 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 4
  store i32 %57, i32* %blku_oldscopesp, align 4, !tbaa !3
  %58 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 2
  store i32 %58, i32* %blku_oldretsp, align 4, !tbaa !3
  %59 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 5
  store %struct.pmop* %59, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 6
  store i8 1, i8* %blku_gimme, align 1, !tbaa !1
  %blk_u = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %60 = getelementptr inbounds %union.anon.1* %blk_u, i64 0, i32 0, i32 0
  %.c = bitcast %struct.cv* %29 to i8*
  store i8* %.c, i8** %60, align 8, !tbaa !0
  %61 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_depth95 = getelementptr inbounds %struct.xpvcv* %61, i64 0, i32 14
  %62 = load i64* %xcv_depth95, align 8, !tbaa !4
  %olddepth = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 7, i32 0, i32 5
  %.c171 = inttoptr i64 %62 to %struct.sv**
  store %struct.sv** %.c171, %struct.sv*** %olddepth, align 8, !tbaa !4
  %hasargs104 = getelementptr inbounds %struct.context* %52, i64 %idxprom62, i32 1, i32 0, i32 7, i32 0, i32 6
  %63 = bitcast %struct.sv** %hasargs104 to i8*
  store i8 0, i8* %63, align 1, !tbaa !1
  %64 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_depth106 = getelementptr inbounds %struct.xpvcv* %64, i64 0, i32 14
  %65 = load i64* %xcv_depth106, align 8, !tbaa !4
  %tobool107 = icmp eq i64 %65, 0
  br i1 %tobool107, label %land.end117, label %if.end119

land.end117:                                      ; preds = %cond.end
  %66 = bitcast %struct.cv* %29 to %struct.sv*
  %67 = getelementptr inbounds %struct.cv* %29, i64 0, i32 1
  %68 = load i32* %67, align 4, !tbaa !3
  store %struct.sv* %66, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %inc115 = add i32 %68, 2
  store i32 %inc115, i32* %67, align 4, !tbaa !3
  tail call void @Perl_save_freesv(%struct.sv* %66) #7
  br label %if.end119

if.end119:                                        ; preds = %cond.end, %land.end117
  %lval = getelementptr inbounds %struct.block_sub* %blku_sub, i64 0, i32 7
  store i8 0, i8* %lval, align 1, !tbaa !1
  %69 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_depth125 = getelementptr inbounds %struct.xpvcv* %69, i64 0, i32 14
  %70 = load i64* %xcv_depth125, align 8, !tbaa !4
  %inc126 = add nsw i64 %70, 1
  store i64 %inc126, i64* %xcv_depth125, align 8, !tbaa !4
  %71 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add127 = add nsw i32 %71, 2
  %72 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp128 = icmp sgt i32 %add127, %72
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.end119
  tail call void @Perl_savestack_grow() #7
  %.pre172 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end119
  %73 = phi i32 [ %.pre172, %if.then130 ], [ %71, %if.end119 ]
  %74 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %75 = bitcast %struct.av* %74 to i8*
  %inc132 = add nsw i32 %73, 1
  %idxprom133 = sext i32 %73 to i64
  %76 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %76, i64 %idxprom133, i32 0
  store i8* %75, i8** %any_ptr, align 8, !tbaa !0
  %inc135 = add nsw i32 %73, 2
  store i32 %inc135, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom136 = sext i32 %inc132 to i64
  %77 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds %union.any* %77, i64 %idxprom136
  %any_i32138 = bitcast %union.any* %arrayidx137 to i32*
  store i32 33, i32* %any_i32138, align 4, !tbaa !3
  %78 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %78, i64 0, i32 15
  %79 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %sv_any140 = getelementptr inbounds %struct.av* %79, i64 0, i32 0
  %80 = load %struct.xpvav** %sv_any140, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %80, i64 0, i32 0
  %81 = load i8** %xav_array, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i8* %81, i64 8
  %82 = bitcast i8* %arrayidx141 to %struct.sv**
  %83 = load %struct.sv** %82, align 8, !tbaa !0
  %84 = bitcast %struct.sv* %83 to %struct.av*
  store %struct.av* %84, %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_any142 = bitcast %struct.sv* %83 to %struct.xpvav**
  %85 = load %struct.xpvav** %sv_any142, align 8, !tbaa !0
  %xav_array143 = getelementptr inbounds %struct.xpvav* %85, i64 0, i32 0
  %86 = load i8** %xav_array143, align 8, !tbaa !0
  %87 = bitcast i8* %86 to %struct.sv**
  store %struct.sv** %87, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  store %struct.sv** %43, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %88 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_start = getelementptr inbounds %struct.xpvcv* %88, i64 0, i32 8
  %89 = load %struct.op** %xcv_start, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %cond.false24, %cond.true20
  %90 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next145 = getelementptr inbounds %struct.op* %90, i64 0, i32 0
  %91 = load %struct.op** %op_next145, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %if.end131, %if.then38, %if.then30
  %retval.0 = phi %struct.op* [ %89, %if.end131 ], [ %34, %if.then38 ], [ %call31, %if.then30 ], [ %91, %if.else ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: optsize
declare void @Perl_save_I32(i32*) #1

; Function Attrs: optsize
declare void @Perl_savestack_grow() #1

; Function Attrs: optsize
declare void @Perl_push_return(%struct.op*) #1

; Function Attrs: optsize
declare i32 @Perl_cxinc() #1

; Function Attrs: optsize
declare void @Perl_save_freesv(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly uwtable
define %struct.op* @Perl_pp_scope() #2 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %0, i64 0, i32 0
  %1 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %1
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_enteriter() #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %4, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %5 to i32
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
  %call = call i32 @Perl_block_gimme() #8
  %phitmp = trunc i32 %call to i8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i8 [ -128, %entry ], [ 0, %cond.false ], [ %phitmp, %cond.false15 ], [ 1, %cond.false8 ]
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %6 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %6, i32* @PL_tmps_floor, align 4, !tbaa !3
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %7, i64 0, i32 3
  %8 = load i64* %op_targ, align 8, !tbaa !4
  %tobool = icmp eq i64 %8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end18
  %9 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %9, i64 %8
  call void @Perl_save_sptr(%struct.sv** %arrayidx) #7
  br label %if.end

if.else:                                          ; preds = %cond.end18
  %incdec.ptr21 = getelementptr inbounds %struct.sv** %0, i64 -1
  %10 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_any = bitcast %struct.sv* %10 to %struct.xpvgv**
  %11 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %12, i64 0, i32 0
  call void @Perl_save_generic_svref(%struct.sv** %gp_sv) #7
  %call22 = call %struct.sv* @Perl_newSV(i64 0) #7
  store %struct.sv* %call22, %struct.sv** %gp_sv, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %svp.0 = phi %struct.sv** [ %arrayidx, %if.then ], [ %gp_sv, %if.else ]
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %incdec.ptr21, %if.else ]
  call void @Perl_push_scope() #7
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 2
  %14 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 3
  %15 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp23 = icmp slt i32 %14, %15
  br i1 %cmp23, label %cond.true25, label %cond.false27

cond.true25:                                      ; preds = %if.end
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end30

cond.false27:                                     ; preds = %if.end
  %call28 = call i32 @Perl_cxinc() #7
  %16 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix29 = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 2
  store i32 %call28, i32* %si_cxix29, align 4, !tbaa !3
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false27, %cond.true25
  %17 = phi i32 [ %call28, %cond.false27 ], [ %inc, %cond.true25 ]
  %18 = phi %struct.stackinfo* [ %16, %cond.false27 ], [ %13, %cond.true25 ]
  %idxprom = sext i32 %17 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %18, i64 0, i32 1
  %19 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 0
  store i32 3, i32* %cx_type, align 4, !tbaa !3
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div474 = lshr exact i64 %sub.ptr.sub, 3
  %conv34 = trunc i64 %sub.ptr.div474 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 0
  store i32 %conv34, i32* %blku_oldsp, align 4, !tbaa !3
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 1
  store %struct.cop* %21, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %22 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %23 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast37 = ptrtoint i32* %22 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i32* %23 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub.ptr.div40475 = lshr exact i64 %sub.ptr.sub39, 2
  %conv41 = trunc i64 %sub.ptr.div40475 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 3
  store i32 %conv41, i32* %blku_oldmarksp, align 4, !tbaa !3
  %24 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 4
  store i32 %24, i32* %blku_oldscopesp, align 4, !tbaa !3
  %25 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 2
  store i32 %25, i32* %blku_oldretsp, align 4, !tbaa !3
  %26 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %26, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 6
  store i8 %cond19, i8* %blku_gimme, align 1, !tbaa !1
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_label = getelementptr inbounds %struct.cop* %27, i64 0, i32 8
  %28 = load i8** %cop_label, align 8, !tbaa !0
  %label = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 0
  store i8* %28, i8** %label, align 8, !tbaa !0
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast55 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.rhs.cast56 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %sub.ptr.div58476 = lshr exact i64 %sub.ptr.sub57, 3
  %conv59 = trunc i64 %sub.ptr.div58476 to i32
  %resetsp = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  store i32 %conv59, i32* %resetsp, align 4, !tbaa !3
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_redoop = getelementptr inbounds %struct.op* %30, i64 1, i32 2
  %31 = load {}** %op_redoop, align 8
  %32 = bitcast {}* %31 to %struct.op*
  %redo_op = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %32, %struct.op** %redo_op, align 8, !tbaa !0
  %33 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_nextop = getelementptr inbounds %struct.op* %33, i64 1, i32 3
  %34 = bitcast i64* %op_nextop to %struct.op**
  %35 = load %struct.op** %34, align 8, !tbaa !0
  %next_op = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  store %struct.op* %35, %struct.op** %next_op, align 8, !tbaa !0
  %36 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_lastop = getelementptr inbounds %struct.op* %36, i64 1, i32 4
  %37 = bitcast i16* %op_lastop to %struct.op**
  %38 = load %struct.op** %37, align 8, !tbaa !0
  %last_op = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* %38, %struct.op** %last_op, align 8, !tbaa !0
  %iterlval = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %iterary = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 8
  %iterix = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 9
  %39 = bitcast %struct.sv** %iterlval to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 16, i32 8, i1 false)
  store i64 -1, i64* %iterix, align 8, !tbaa !4
  %itervar = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  store %struct.sv** %svp.0, %struct.sv*** %itervar, align 8, !tbaa !0
  %tobool92 = icmp eq %struct.sv** %svp.0, null
  br i1 %tobool92, label %if.else106, label %if.then93

if.then93:                                        ; preds = %cond.end30
  %40 = load %struct.sv** %svp.0, align 8, !tbaa !0
  store %struct.sv* %40, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool99 = icmp eq %struct.sv* %40, null
  br i1 %tobool99, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then93
  %sv_refcnt = getelementptr inbounds %struct.sv* %40, i64 0, i32 1
  %41 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc100 = add i32 %41, 1
  store i32 %inc100, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.then93, %land.rhs
  %itersave = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  store %struct.sv* %40, %struct.sv** %itersave, align 8, !tbaa !0
  br label %if.end112

if.else106:                                       ; preds = %cond.end30
  %itersave111 = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  store %struct.sv* null, %struct.sv** %itersave111, align 8, !tbaa !0
  br label %if.end112

if.end112:                                        ; preds = %if.else106, %land.end
  %42 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags113 = getelementptr inbounds %struct.op* %42, i64 0, i32 6
  %43 = load i8* %op_flags113, align 1, !tbaa !1
  %and115 = and i8 %43, 64
  %tobool116 = icmp eq i8 %and115, 0
  br i1 %tobool116, label %if.else357, label %if.then117

if.then117:                                       ; preds = %if.end112
  %incdec.ptr118 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  %44 = load %struct.sv** %sp.0, align 8, !tbaa !0
  store %struct.sv* %44, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool119 = icmp eq %struct.sv* %44, null
  br i1 %tobool119, label %land.end124, label %land.rhs120

land.rhs120:                                      ; preds = %if.then117
  %sv_refcnt121 = getelementptr inbounds %struct.sv* %44, i64 0, i32 1
  %45 = load i32* %sv_refcnt121, align 4, !tbaa !3
  %inc122 = add i32 %45, 1
  store i32 %inc122, i32* %sv_refcnt121, align 4, !tbaa !3
  br label %land.end124

land.end124:                                      ; preds = %if.then117, %land.rhs120
  %46 = bitcast %struct.sv* %44 to %struct.av*
  store %struct.av* %46, %struct.av** %iterary, align 8, !tbaa !0
  %47 = getelementptr inbounds %struct.sv* %44, i64 0, i32 2
  %48 = load i32* %47, align 4, !tbaa !3
  %and136 = and i32 %48, 255
  %cmp137 = icmp eq i32 %and136, 10
  br i1 %cmp137, label %if.else315, label %if.then139

if.then139:                                       ; preds = %land.end124
  %incdec.ptr140 = getelementptr inbounds %struct.sv** %sp.0, i64 -2
  %49 = load %struct.sv** %incdec.ptr118, align 8, !tbaa !0
  %sv_flags146 = getelementptr inbounds %struct.sv* %49, i64 0, i32 2
  %50 = load i32* %sv_flags146, align 4, !tbaa !3
  %and147 = and i32 %50, 50331648
  %tobool148 = icmp eq i32 %and147, 0
  br i1 %tobool148, label %lor.lhs.false, label %if.then198

lor.lhs.false:                                    ; preds = %if.then139
  %and150 = and i32 %50, 118423552
  %tobool151 = icmp ne i32 %and150, 0
  %and153 = and i32 %50, 67108864
  %tobool154 = icmp eq i32 %and153, 0
  %or.cond = and i1 %tobool151, %tobool154
  br i1 %or.cond, label %if.then198, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false
  %and157 = and i32 %48, 50331648
  %tobool158 = icmp eq i32 %and157, 0
  br i1 %tobool158, label %lor.lhs.false159, label %if.then198

lor.lhs.false159:                                 ; preds = %lor.lhs.false155
  %and161 = and i32 %48, 118423552
  %tobool162 = icmp ne i32 %and161, 0
  %and165 = and i32 %48, 67108864
  %tobool166 = icmp eq i32 %and165, 0
  %or.cond477 = and i1 %tobool162, %tobool166
  br i1 %or.cond477, label %if.then198, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false159
  %tobool174 = icmp eq i32 %and161, 0
  %or.cond478 = or i1 %tobool151, %tobool174
  br i1 %or.cond478, label %lor.lhs.false175, label %land.lhs.true191

lor.lhs.false175:                                 ; preds = %lor.lhs.false167
  %tobool178 = icmp eq i32 %and150, 0
  br i1 %tobool178, label %land.lhs.true182, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %lor.lhs.false175
  %call180 = call i32 @Perl_looks_like_number(%struct.sv* %49) #7
  %tobool181 = icmp eq i32 %call180, 0
  br i1 %tobool181, label %if.else262, label %lor.lhs.false179.land.lhs.true182_crit_edge

lor.lhs.false179.land.lhs.true182_crit_edge:      ; preds = %lor.lhs.false179
  %.pre = load i32* %sv_flags146, align 4, !tbaa !3
  br label %land.lhs.true182

land.lhs.true182:                                 ; preds = %lor.lhs.false179.land.lhs.true182_crit_edge, %lor.lhs.false175
  %51 = phi i32 [ %.pre, %lor.lhs.false179.land.lhs.true182_crit_edge ], [ %50, %lor.lhs.false175 ]
  %and184 = and i32 %51, 67108864
  %tobool185 = icmp eq i32 %and184, 0
  br i1 %tobool185, label %if.else262, label %land.lhs.true186

land.lhs.true186:                                 ; preds = %land.lhs.true182
  %sv_any187 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %52 = load i8** %sv_any187, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %52 to i8**
  %53 = load i8** %xpv_pv, align 8, !tbaa !0
  %54 = load i8* %53, align 1, !tbaa !1
  %cmp189 = icmp eq i8 %54, 48
  br i1 %cmp189, label %if.else262, label %land.lhs.true186.land.lhs.true191_crit_edge

land.lhs.true186.land.lhs.true191_crit_edge:      ; preds = %land.lhs.true186
  %.pre479 = load i32* %47, align 4, !tbaa !3
  br label %land.lhs.true191

land.lhs.true191:                                 ; preds = %land.lhs.true186.land.lhs.true191_crit_edge, %lor.lhs.false167
  %55 = phi i32 [ %51, %land.lhs.true186.land.lhs.true191_crit_edge ], [ %50, %lor.lhs.false167 ]
  %56 = phi i32 [ %.pre479, %land.lhs.true186.land.lhs.true191_crit_edge ], [ %48, %lor.lhs.false167 ]
  %and193 = and i32 %56, 118423552
  %tobool194 = icmp eq i32 %and193, 0
  br i1 %tobool194, label %if.then198, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %land.lhs.true191
  %call196 = call i32 @Perl_looks_like_number(%struct.sv* %44) #7
  %tobool197 = icmp eq i32 %call196, 0
  br i1 %tobool197, label %if.else262, label %lor.lhs.false195.if.then198_crit_edge

lor.lhs.false195.if.then198_crit_edge:            ; preds = %lor.lhs.false195
  %.pre480 = load i32* %sv_flags146, align 4, !tbaa !3
  br label %if.then198

if.then198:                                       ; preds = %lor.lhs.false195.if.then198_crit_edge, %lor.lhs.false159, %lor.lhs.false, %land.lhs.true191, %lor.lhs.false155, %if.then139
  %57 = phi i32 [ %.pre480, %lor.lhs.false195.if.then198_crit_edge ], [ %50, %lor.lhs.false159 ], [ %50, %lor.lhs.false ], [ %55, %land.lhs.true191 ], [ %50, %lor.lhs.false155 ], [ %50, %if.then139 ]
  %and200 = and i32 %57, 118423552
  %tobool201 = icmp eq i32 %and200, 0
  br i1 %tobool201, label %lor.lhs.false214, label %land.lhs.true202

land.lhs.true202:                                 ; preds = %if.then198
  %and204 = and i32 %57, 131072
  %tobool205 = icmp eq i32 %and204, 0
  br i1 %tobool205, label %cond.false208, label %cond.true206

cond.true206:                                     ; preds = %land.lhs.true202
  %sv_any207 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %58 = load i8** %sv_any207, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %58, i64 32
  %59 = bitcast i8* %xnv_nv to double*
  %60 = load double* %59, align 8, !tbaa !5
  br label %cond.end210

cond.false208:                                    ; preds = %land.lhs.true202
  %call209 = call double @Perl_sv_2nv(%struct.sv* %49) #7
  br label %cond.end210

cond.end210:                                      ; preds = %cond.false208, %cond.true206
  %cond211 = phi double [ %60, %cond.true206 ], [ %call209, %cond.false208 ]
  %cmp212 = fcmp olt double %cond211, 0xC3E0000000000000
  br i1 %cmp212, label %if.then231, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %cond.end210, %if.then198
  %61 = load i32* %47, align 4, !tbaa !3
  %and216 = and i32 %61, 118423552
  %tobool217 = icmp eq i32 %and216, 0
  br i1 %tobool217, label %if.end233, label %land.lhs.true218

land.lhs.true218:                                 ; preds = %lor.lhs.false214
  %and220 = and i32 %61, 131072
  %tobool221 = icmp eq i32 %and220, 0
  br i1 %tobool221, label %cond.false225, label %cond.true222

cond.true222:                                     ; preds = %land.lhs.true218
  %sv_any223 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %62 = load i8** %sv_any223, align 8, !tbaa !0
  %xnv_nv224 = getelementptr inbounds i8* %62, i64 32
  %63 = bitcast i8* %xnv_nv224 to double*
  %64 = load double* %63, align 8, !tbaa !5
  br label %cond.end227

cond.false225:                                    ; preds = %land.lhs.true218
  %call226 = call double @Perl_sv_2nv(%struct.sv* %44) #7
  br label %cond.end227

cond.end227:                                      ; preds = %cond.false225, %cond.true222
  %cond228 = phi double [ %64, %cond.true222 ], [ %call226, %cond.false225 ]
  %cmp229 = fcmp ult double %cond228, 0x43E0000000000000
  br i1 %cmp229, label %if.end233, label %if.then231

if.then231:                                       ; preds = %cond.end227, %cond.end210
  %call232 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([37 x i8]* @.str12, i64 0, i64 0)) #7
  br label %return

if.end233:                                        ; preds = %cond.end227, %lor.lhs.false214
  %65 = load i32* %sv_flags146, align 4, !tbaa !3
  %and235 = and i32 %65, 65536
  %tobool236 = icmp eq i32 %and235, 0
  br i1 %tobool236, label %cond.false239, label %cond.true237

cond.true237:                                     ; preds = %if.end233
  %sv_any238 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %66 = load i8** %sv_any238, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %66, i64 24
  %67 = bitcast i8* %xiv_iv to i64*
  %68 = load i64* %67, align 8, !tbaa !4
  br label %cond.end241

cond.false239:                                    ; preds = %if.end233
  %call240 = call i64 @Perl_sv_2iv(%struct.sv* %49) #7
  br label %cond.end241

cond.end241:                                      ; preds = %cond.false239, %cond.true237
  %cond242 = phi i64 [ %68, %cond.true237 ], [ %call240, %cond.false239 ]
  store i64 %cond242, i64* %iterix, align 8, !tbaa !4
  %69 = load i32* %47, align 4, !tbaa !3
  %and249 = and i32 %69, 65536
  %tobool250 = icmp eq i32 %and249, 0
  br i1 %tobool250, label %cond.false254, label %cond.true251

cond.true251:                                     ; preds = %cond.end241
  %sv_any252 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %70 = load i8** %sv_any252, align 8, !tbaa !0
  %xiv_iv253 = getelementptr inbounds i8* %70, i64 24
  %71 = bitcast i8* %xiv_iv253 to i64*
  %72 = load i64* %71, align 8, !tbaa !4
  br label %cond.end256

cond.false254:                                    ; preds = %cond.end241
  %call255 = call i64 @Perl_sv_2iv(%struct.sv* %44) #7
  br label %cond.end256

cond.end256:                                      ; preds = %cond.false254, %cond.true251
  %cond257 = phi i64 [ %72, %cond.true251 ], [ %call255, %cond.false254 ]
  %itermax = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 10
  store i64 %cond257, i64* %itermax, align 8, !tbaa !4
  br label %if.end403

if.else262:                                       ; preds = %lor.lhs.false179, %lor.lhs.false195, %land.lhs.true186, %land.lhs.true182
  %call263 = call %struct.sv* @Perl_newSVsv(%struct.sv* %49) #7
  store %struct.sv* %call263, %struct.sv** %iterlval, align 8, !tbaa !0
  %sv_flags274 = getelementptr inbounds %struct.sv* %call263, i64 0, i32 2
  %73 = load i32* %sv_flags274, align 4, !tbaa !3
  %and275 = and i32 %73, 10223616
  %cmp276 = icmp eq i32 %and275, 262144
  br i1 %cmp276, label %cond.true278, label %cond.false292

cond.true278:                                     ; preds = %if.else262
  %sv_any284 = getelementptr inbounds %struct.sv* %call263, i64 0, i32 0
  %74 = load i8** %sv_any284, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %74, i64 8
  %75 = bitcast i8* %xpv_cur to i64*
  %76 = load i64* %75, align 8, !tbaa !4
  store i64 %76, i64* %n_a, align 8, !tbaa !4
  br label %cond.end299

cond.false292:                                    ; preds = %if.else262
  %call298 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %call263, i64* %n_a, i32 2) #7
  br label %cond.end299

cond.end299:                                      ; preds = %cond.false292, %cond.true278
  %77 = load i32* %47, align 4, !tbaa !3
  %and302 = and i32 %77, 262144
  %cmp303 = icmp eq i32 %and302, 0
  br i1 %cmp303, label %cond.false310, label %cond.true305

cond.true305:                                     ; preds = %cond.end299
  %sv_any306 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %78 = load i8** %sv_any306, align 8, !tbaa !0
  %xpv_cur307 = getelementptr inbounds i8* %78, i64 8
  %79 = bitcast i8* %xpv_cur307 to i64*
  %80 = load i64* %79, align 8, !tbaa !4
  store i64 %80, i64* %n_a, align 8, !tbaa !4
  br label %if.end403

cond.false310:                                    ; preds = %cond.end299
  %call311 = call i8* @Perl_sv_2pv_flags(%struct.sv* %44, i64* %n_a, i32 2) #7
  br label %if.end403

if.else315:                                       ; preds = %land.end124
  %81 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %81, i64 0, i32 7
  %82 = load i8* %op_private, align 1, !tbaa !1
  %and317 = and i8 %82, 4
  %tobool318 = icmp eq i8 %and317, 0
  br i1 %tobool318, label %if.end403, label %if.then319

if.then319:                                       ; preds = %if.else315
  %itermax324 = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 10
  store i64 -1, i64* %itermax324, align 8, !tbaa !4
  %and331 = and i32 %48, 32768
  %tobool332 = icmp eq i32 %and331, 0
  br i1 %tobool332, label %cond.false341, label %cond.true333

cond.true333:                                     ; preds = %if.then319
  %call339 = call i32 @Perl_mg_size(%struct.sv* %44) #7
  %conv340 = sext i32 %call339 to i64
  br label %cond.end348

cond.false341:                                    ; preds = %if.then319
  %sv_any347 = bitcast %struct.sv* %44 to %struct.xpvav**
  %83 = load %struct.xpvav** %sv_any347, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %83, i64 0, i32 1
  %84 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end348

cond.end348:                                      ; preds = %cond.false341, %cond.true333
  %cond349 = phi i64 [ %conv340, %cond.true333 ], [ %84, %cond.false341 ]
  store i64 %cond349, i64* %iterix, align 8, !tbaa !4
  br label %if.end403

if.else357:                                       ; preds = %if.end112
  %85 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.av* %85, %struct.av** %iterary, align 8, !tbaa !0
  %86 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast364 = ptrtoint %struct.sv** %86 to i64
  %sub.ptr.sub365 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast364
  %sub.ptr.div366 = ashr exact i64 %sub.ptr.sub365, 3
  %87 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any367 = getelementptr inbounds %struct.av* %87, i64 0, i32 0
  %88 = load %struct.xpvav** %sv_any367, align 8, !tbaa !0
  %xav_fill368 = getelementptr inbounds %struct.xpvav* %88, i64 0, i32 1
  store i64 %sub.ptr.div366, i64* %xav_fill368, align 8, !tbaa !4
  %89 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private369 = getelementptr inbounds %struct.op* %89, i64 0, i32 7
  %90 = load i8* %op_private369, align 1, !tbaa !1
  %and371 = and i8 %90, 4
  %tobool372 = icmp eq i8 %and371, 0
  %sub.ptr.sub376 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast364
  %sub.ptr.div377 = ashr exact i64 %sub.ptr.sub376, 3
  br i1 %tobool372, label %if.else392, label %if.then373

if.then373:                                       ; preds = %if.else357
  %itermax382 = getelementptr inbounds %struct.context* %19, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 10
  store i64 %sub.ptr.div377, i64* %itermax382, align 8, !tbaa !4
  %91 = load i32* %blku_oldsp, align 4, !tbaa !3
  %conv386 = sext i32 %91 to i64
  store i64 %conv386, i64* %iterix, align 8, !tbaa !4
  br label %if.end403

if.else392:                                       ; preds = %if.else357
  store i64 %sub.ptr.div377, i64* %iterix, align 8, !tbaa !4
  br label %if.end403

if.end403:                                        ; preds = %if.else315, %if.then373, %if.else392, %cond.true305, %cond.false310, %cond.end256, %cond.end348
  %sp.1 = phi %struct.sv** [ %incdec.ptr140, %cond.end256 ], [ %incdec.ptr140, %cond.true305 ], [ %incdec.ptr140, %cond.false310 ], [ %incdec.ptr118, %cond.end348 ], [ %incdec.ptr118, %if.else315 ], [ %sp.0, %if.then373 ], [ %sp.0, %if.else392 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %92 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %92, i64 0, i32 0
  %93 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end403, %if.then231
  %retval.0 = phi %struct.op* [ %call232, %if.then231 ], [ %93, %if.end403 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_save_generic_svref(%struct.sv**) #1

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_enterloop() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
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
  %call = tail call i32 @Perl_block_gimme() #8
  %phitmp = trunc i32 %call to i8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i8 [ -128, %entry ], [ 0, %cond.false ], [ %phitmp, %cond.false15 ], [ 1, %cond.false8 ]
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %3 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %3, i32* @PL_tmps_floor, align 4, !tbaa !3
  tail call void @Perl_push_scope() #7
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 2
  %5 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 3
  %6 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp20 = icmp slt i32 %5, %6
  br i1 %cmp20, label %cond.true22, label %cond.false24

cond.true22:                                      ; preds = %cond.end18
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end27

cond.false24:                                     ; preds = %cond.end18
  %call25 = tail call i32 @Perl_cxinc() #7
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix26 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 2
  store i32 %call25, i32* %si_cxix26, align 4, !tbaa !3
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false24, %cond.true22
  %8 = phi i32 [ %call25, %cond.false24 ], [ %inc, %cond.true22 ]
  %9 = phi %struct.stackinfo* [ %7, %cond.false24 ], [ %4, %cond.true22 ]
  %idxprom = sext i32 %8 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %9, i64 0, i32 1
  %10 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 0
  store i32 3, i32* %cx_type, align 4, !tbaa !3
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div123 = lshr exact i64 %sub.ptr.sub, 3
  %conv30 = trunc i64 %sub.ptr.div123 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 0
  store i32 %conv30, i32* %blku_oldsp, align 4, !tbaa !3
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 1
  store %struct.cop* %12, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %13 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %14 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast33 = ptrtoint i32* %13 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i32* %14 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36124 = lshr exact i64 %sub.ptr.sub35, 2
  %conv37 = trunc i64 %sub.ptr.div36124 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 3
  store i32 %conv37, i32* %blku_oldmarksp, align 4, !tbaa !3
  %15 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 4
  store i32 %15, i32* %blku_oldscopesp, align 4, !tbaa !3
  %16 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 2
  store i32 %16, i32* %blku_oldretsp, align 4, !tbaa !3
  %17 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %17, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 6
  store i8 %cond19, i8* %blku_gimme, align 1, !tbaa !1
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_label = getelementptr inbounds %struct.cop* %18, i64 0, i32 8
  %19 = load i8** %cop_label, align 8, !tbaa !0
  %label = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 0
  store i8* %19, i8** %label, align 8, !tbaa !0
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast52 = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast52
  %sub.ptr.div54125 = lshr exact i64 %sub.ptr.sub53, 3
  %conv55 = trunc i64 %sub.ptr.div54125 to i32
  %resetsp = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  store i32 %conv55, i32* %resetsp, align 4, !tbaa !3
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_redoop = getelementptr inbounds %struct.op* %21, i64 1, i32 2
  %22 = load {}** %op_redoop, align 8
  %23 = bitcast {}* %22 to %struct.op*
  %redo_op = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %23, %struct.op** %redo_op, align 8, !tbaa !0
  %24 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_nextop = getelementptr inbounds %struct.op* %24, i64 1, i32 3
  %25 = bitcast i64* %op_nextop to %struct.op**
  %26 = load %struct.op** %25, align 8, !tbaa !0
  %next_op = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  store %struct.op* %26, %struct.op** %next_op, align 8, !tbaa !0
  %27 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_lastop = getelementptr inbounds %struct.op* %27, i64 1, i32 4
  %28 = bitcast i16* %op_lastop to %struct.op**
  %29 = load %struct.op** %28, align 8, !tbaa !0
  %last_op = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* %29, %struct.op** %last_op, align 8, !tbaa !0
  %iterlval = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %iterix = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 9
  %30 = bitcast %struct.sv** %iterlval to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 16, i32 8, i1 false)
  store i64 -1, i64* %iterix, align 8, !tbaa !4
  %itervar = getelementptr inbounds %struct.context* %10, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %31 = bitcast %struct.sv*** %itervar to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 16, i32 8, i1 false)
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %32 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %32, i64 0, i32 0
  %33 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %33
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leaveloop() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 2
  %2 = load i32* %si_cxix, align 4, !tbaa !3
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 1
  %3 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 0
  %5 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %4, i64 %idx.ext
  %blku_oldcop = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 1
  %6 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %6, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %7 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 3
  %8 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext5 = sext i32 %8 to i64
  %add.ptr6 = getelementptr inbounds i32* %7, i64 %idx.ext5
  store i32* %add.ptr6, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 4
  %9 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %9, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 2
  %10 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %10, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 5
  %11 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 6
  %12 = load i8* %blku_gimme, align 1, !tbaa !1
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %resetsp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %14 = load i32* %resetsp, align 4, !tbaa !3
  %idx.ext17 = sext i32 %14 to i64
  %add.ptr18 = getelementptr inbounds %struct.sv** %13, i64 %idx.ext17
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  switch i8 %12, label %while.cond.preheader [
    i8 -128, label %if.end35
    i8 0, label %if.then22
  ]

while.cond.preheader:                             ; preds = %entry
  %cmp29101 = icmp ult %struct.sv** %add.ptr, %0
  br i1 %cmp29101, label %while.body, label %if.end35

if.then22:                                        ; preds = %entry
  %cmp23 = icmp ult %struct.sv** %add.ptr, %0
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then22
  %15 = load %struct.sv** %0, align 8, !tbaa !0
  %call = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %15) #7
  %add.ptr18.sum100 = add i64 %idx.ext17, 1
  %incdec.ptr = getelementptr inbounds %struct.sv** %13, i64 %add.ptr18.sum100
  store %struct.sv* %call, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %if.end35

if.else26:                                        ; preds = %if.then22
  %add.ptr18.sum = add i64 %idx.ext17, 1
  %incdec.ptr27 = getelementptr inbounds %struct.sv** %13, i64 %add.ptr18.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr27, align 8, !tbaa !0
  br label %if.end35

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %mark.0103 = phi %struct.sv** [ %incdec.ptr31, %while.body ], [ %add.ptr, %while.cond.preheader ]
  %newsp.0102 = phi %struct.sv** [ %incdec.ptr33, %while.body ], [ %add.ptr18, %while.cond.preheader ]
  %incdec.ptr31 = getelementptr inbounds %struct.sv** %mark.0103, i64 1
  %16 = load %struct.sv** %incdec.ptr31, align 8, !tbaa !0
  %call32 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %16) #7
  %incdec.ptr33 = getelementptr inbounds %struct.sv** %newsp.0102, i64 1
  store %struct.sv* %call32, %struct.sv** %incdec.ptr33, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %cmp29 = icmp ult %struct.sv** %incdec.ptr31, %0
  br i1 %cmp29, label %while.body, label %if.end35

if.end35:                                         ; preds = %while.cond.preheader, %while.body, %entry, %if.else26, %if.then25
  %newsp.1 = phi %struct.sv** [ %add.ptr18, %entry ], [ %incdec.ptr, %if.then25 ], [ %incdec.ptr27, %if.else26 ], [ %add.ptr18, %while.cond.preheader ], [ %incdec.ptr33, %while.body ]
  store %struct.sv** %newsp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %iterlval = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %17 = load %struct.sv** %iterlval, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %17) #7
  %itervar = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %18 = load %struct.sv*** %itervar, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv** %18, null
  br i1 %tobool, label %if.end55, label %if.then44

if.then44:                                        ; preds = %if.end35
  %19 = load %struct.sv** %18, align 8, !tbaa !0
  %call50 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %19) #7
  %itersave = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %20 = load %struct.sv** %itersave, align 8, !tbaa !0
  store %struct.sv* %20, %struct.sv** %18, align 8, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %if.end35, %if.then44
  %iterary = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 8
  %21 = load %struct.av** %iterary, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.av* %21, null
  %22 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp66 = icmp eq %struct.av* %21, %22
  %or.cond = or i1 %tobool60, %cmp66
  br i1 %or.cond, label %if.end74, label %if.then68

if.then68:                                        ; preds = %if.end55
  %23 = bitcast %struct.av* %21 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %23) #7
  br label %if.end74

if.end74:                                         ; preds = %if.end55, %if.then68
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  tail call void @Perl_pop_scope() #7
  %24 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %24, i64 0, i32 0
  %25 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %25
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_return() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_type = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 4
  %5 = load i32* %si_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, 3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 2
  %6 = load i32* %si_cxix, align 4, !tbaa !3
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  %si_cxstack.i462.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 1
  %.pre488 = load %struct.context** %si_cxstack.i462.phi.trans.insert, align 8, !tbaa !0
  br label %if.end10

if.then:                                          ; preds = %entry
  %7 = load i32* @PL_sortcxix, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 1
  %8 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %cmp4.i.i = icmp sgt i32 %6, -1
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %S_dopoptosub.exit

for.body.lr.ph.i.i:                               ; preds = %lor.lhs.false
  %9 = sext i32 %6 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %9, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %i.05.i.i = phi i32 [ %6, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cx_type.i.i = getelementptr inbounds %struct.context* %8, i64 %indvars.iv.i.i, i32 0
  %10 = load i32* %cx_type.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %10, 255
  switch i32 %and.i.i, label %for.inc.i.i [
    i32 2, label %S_dopoptosub.exit
    i32 1, label %S_dopoptosub.exit
    i32 6, label %S_dopoptosub.exit
  ]

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %dec.i.i = add nsw i32 %i.05.i.i, -1
  %11 = trunc i64 %indvars.iv.i.i to i32
  %cmp.i.i = icmp sgt i32 %11, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %S_dopoptosub.exit

S_dopoptosub.exit:                                ; preds = %for.body.i.i, %for.body.i.i, %for.body.i.i, %for.inc.i.i, %lor.lhs.false
  %i.0.lcssa.i.i = phi i32 [ %6, %lor.lhs.false ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cmp3 = icmp sgt i32 %i.0.lcssa.i.i, %7
  br i1 %cmp3, label %if.end10, label %if.then4

if.then4:                                         ; preds = %S_dopoptosub.exit, %if.then
  %12 = phi i32 [ %7, %S_dopoptosub.exit ], [ %6, %if.then ]
  %cmp6 = icmp sgt i32 %6, %12
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  tail call void @Perl_dounwind(i32 %12) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4
  %13 = load %struct.sv** %0, align 8, !tbaa !0
  %14 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %14, i64 0, i32 0
  %15 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 0
  %16 = load i8** %xav_array, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %16, i64 8
  %17 = bitcast i8* %arrayidx to %struct.sv**
  store %struct.sv* %13, %struct.sv** %17, align 8, !tbaa !0
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr8 = getelementptr inbounds %struct.sv** %18, i64 1
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %return

if.end10:                                         ; preds = %entry.if.end10_crit_edge, %S_dopoptosub.exit
  %19 = phi %struct.context* [ %.pre488, %entry.if.end10_crit_edge ], [ %8, %S_dopoptosub.exit ]
  %cmp4.i.i463 = icmp sgt i32 %6, -1
  br i1 %cmp4.i.i463, label %for.body.lr.ph.i.i464, label %if.then14

for.body.lr.ph.i.i464:                            ; preds = %if.end10
  %20 = sext i32 %6 to i64
  br label %for.body.i.i469

for.body.i.i469:                                  ; preds = %for.inc.i.i473, %for.body.lr.ph.i.i464
  %indvars.iv.i.i465 = phi i64 [ %20, %for.body.lr.ph.i.i464 ], [ %indvars.iv.next.i.i470, %for.inc.i.i473 ]
  %i.05.i.i466 = phi i32 [ %6, %for.body.lr.ph.i.i464 ], [ %dec.i.i471, %for.inc.i.i473 ]
  %cx_type.i.i467 = getelementptr inbounds %struct.context* %19, i64 %indvars.iv.i.i465, i32 0
  %21 = load i32* %cx_type.i.i467, align 4, !tbaa !3
  %and.i.i468 = and i32 %21, 255
  switch i32 %and.i.i468, label %for.inc.i.i473 [
    i32 2, label %S_dopoptosub.exit475
    i32 1, label %S_dopoptosub.exit475
    i32 6, label %S_dopoptosub.exit475
  ]

for.inc.i.i473:                                   ; preds = %for.body.i.i469
  %indvars.iv.next.i.i470 = add i64 %indvars.iv.i.i465, -1
  %dec.i.i471 = add nsw i32 %i.05.i.i466, -1
  %22 = trunc i64 %indvars.iv.i.i465 to i32
  %cmp.i.i472 = icmp sgt i32 %22, 0
  br i1 %cmp.i.i472, label %for.body.i.i469, label %S_dopoptosub.exit475

S_dopoptosub.exit475:                             ; preds = %for.body.i.i469, %for.body.i.i469, %for.body.i.i469, %for.inc.i.i473
  %i.0.lcssa.i.i474 = phi i32 [ %i.05.i.i466, %for.body.i.i469 ], [ %i.05.i.i466, %for.body.i.i469 ], [ %i.05.i.i466, %for.body.i.i469 ], [ %dec.i.i471, %for.inc.i.i473 ]
  %cmp13 = icmp slt i32 %i.0.lcssa.i.i474, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10, %S_dopoptosub.exit475
  %call15 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([34 x i8]* @.str28, i64 0, i64 0)) #7
  br label %return

if.end16:                                         ; preds = %S_dopoptosub.exit475
  %cmp18 = icmp slt i32 %i.0.lcssa.i.i474, %6
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @Perl_dounwind(i32 %i.0.lcssa.i.i474) #8
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix21.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 2
  %.pre483 = load i32* %si_cxix21.phi.trans.insert, align 4, !tbaa !3
  %si_cxstack.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 1
  %.pre484 = load %struct.context** %si_cxstack.phi.trans.insert, align 8, !tbaa !0
  %.pre485 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %23 = phi %struct.sv** [ %.pre485, %if.then19 ], [ %1, %if.end16 ]
  %24 = phi %struct.context* [ %.pre484, %if.then19 ], [ %19, %if.end16 ]
  %25 = phi i32 [ %.pre483, %if.then19 ], [ %6, %if.end16 ]
  %26 = phi %struct.stackinfo* [ %.pre, %if.then19 ], [ %4, %if.end16 ]
  %si_cxix21 = getelementptr inbounds %struct.stackinfo* %26, i64 0, i32 2
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %si_cxix21, align 4, !tbaa !3
  %idxprom = sext i32 %25 to i64
  %blku_oldsp = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 0
  %27 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext23 = sext i32 %27 to i64
  %add.ptr24 = getelementptr inbounds %struct.sv** %23, i64 %idx.ext23
  %blku_oldcop = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 1
  %28 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %28, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %29 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 3
  %30 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext29 = sext i32 %30 to i64
  %add.ptr30 = getelementptr inbounds i32* %29, i64 %idx.ext29
  store i32* %add.ptr30, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 4
  %31 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %31, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 2
  %32 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %32, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 5
  %33 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 6
  %34 = load i8* %blku_gimme, align 1, !tbaa !1
  %cx_type = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 0
  %35 = load i32* %cx_type, align 4, !tbaa !3
  %and = and i32 %35, 255
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb40
    i32 6, label %sw.bb144
  ]

sw.bb:                                            ; preds = %if.end20
  %36 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix39 = getelementptr inbounds %struct.stackinfo* %36, i64 0, i32 2
  %37 = load i32* %si_cxix39, align 4, !tbaa !3
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %si_cxix39, align 4, !tbaa !3
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end20
  %38 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %and41 = lshr i32 %38, 2
  %and41.lobit = and i32 %and41, 1
  %39 = xor i32 %and41.lobit, 1
  %. = trunc i32 %39 to i8
  %blk_u = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  %40 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %40, i32* @PL_in_eval, align 4, !tbaa !3
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  %41 = load i32* %old_op_type, align 4, !tbaa !3
  %42 = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %43 = load %struct.op** %42, align 8, !tbaa !0
  store %struct.op* %43, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %44 = bitcast i32* %old_namesv to %struct.sv**
  %45 = load %struct.sv** %44, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.sv* %45, null
  br i1 %tobool58, label %if.end66, label %if.then59

if.then59:                                        ; preds = %sw.bb40
  %call65 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %45) #7
  br label %if.end66

if.end66:                                         ; preds = %sw.bb40, %if.then59
  %46 = load i32* %cx_type, align 4, !tbaa !3
  %and68 = and i32 %46, 514
  %cmp69 = icmp eq i32 %and68, 514
  br i1 %cmp69, label %sw.epilog, label %if.end72

if.end72:                                         ; preds = %if.end66
  tail call void @Perl_lex_end() #7
  %cmp73 = icmp eq i32 %41, 309
  br i1 %cmp73, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %if.end72
  %cmp75 = icmp eq %struct.sv** %add.ptr, %0
  br i1 %cmp75, label %if.then119, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %land.lhs.true
  %cmp78 = icmp eq i8 %34, 0
  br i1 %cmp78, label %land.lhs.true80, label %sw.epilog

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %47 = load %struct.sv** %0, align 8, !tbaa !0
  %tobool81 = icmp eq %struct.sv* %47, null
  br i1 %tobool81, label %if.then119, label %cond.false

cond.false:                                       ; preds = %land.lhs.true80
  %sv_flags = getelementptr inbounds %struct.sv* %47, i64 0, i32 2
  %48 = load i32* %sv_flags, align 4, !tbaa !3
  %and82 = and i32 %48, 262144
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %cond.false99, label %cond.true84

cond.true84:                                      ; preds = %cond.false
  %sv_any85 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %49 = load i8** %sv_any85, align 8, !tbaa !0
  %50 = bitcast i8* %49 to %struct.xpv*
  store %struct.xpv* %50, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool86 = icmp eq i8* %49, null
  br i1 %tobool86, label %if.then119, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %cond.true84
  %xpv_cur = getelementptr inbounds i8* %49, i64 8
  %51 = bitcast i8* %xpv_cur to i64*
  %52 = load i64* %51, align 8, !tbaa !4
  %cmp88 = icmp ugt i64 %52, 1
  br i1 %cmp88, label %sw.epilog, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %land.lhs.true87
  %tobool92 = icmp eq i64 %52, 0
  br i1 %tobool92, label %if.then119, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %lor.lhs.false90
  %xpv_pv = bitcast i8* %49 to i8**
  %53 = load i8** %xpv_pv, align 8, !tbaa !0
  %54 = load i8* %53, align 1, !tbaa !1
  %cmp95 = icmp eq i8 %54, 48
  br i1 %cmp95, label %if.then119, label %sw.epilog

cond.false99:                                     ; preds = %cond.false
  %and101 = and i32 %48, 65536
  %tobool102 = icmp eq i32 %and101, 0
  br i1 %tobool102, label %cond.false107, label %cond.true103

cond.true103:                                     ; preds = %cond.false99
  %sv_any104 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %55 = load i8** %sv_any104, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %55, i64 24
  %56 = bitcast i8* %xiv_iv to i64*
  %57 = load i64* %56, align 8, !tbaa !4
  %cmp105 = icmp eq i64 %57, 0
  br i1 %cmp105, label %if.then119, label %sw.epilog

cond.false107:                                    ; preds = %cond.false99
  %and109 = and i32 %48, 131072
  %tobool110 = icmp eq i32 %and109, 0
  br i1 %tobool110, label %cond.false115, label %cond.true111

cond.true111:                                     ; preds = %cond.false107
  %sv_any112 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %58 = load i8** %sv_any112, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %58, i64 32
  %59 = bitcast i8* %xnv_nv to double*
  %60 = load double* %59, align 8, !tbaa !5
  %cmp113 = fcmp une double %60, 0.000000e+00
  br i1 %cmp113, label %sw.epilog, label %if.then119

cond.false115:                                    ; preds = %cond.false107
  %call116 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %47) #7
  %tobool118 = icmp eq i8 %call116, 0
  br i1 %tobool118, label %if.then119, label %sw.epilog

if.then119:                                       ; preds = %land.lhs.true93, %lor.lhs.false90, %cond.true84, %cond.true103, %cond.false115, %land.lhs.true80, %cond.true111, %land.lhs.true
  %61 = load %struct.sv** %44, align 8, !tbaa !0
  %62 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any125 = getelementptr inbounds %struct.gv* %62, i64 0, i32 0
  %63 = load %struct.xpvgv** %sv_any125, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %63, i64 0, i32 7
  %64 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %64, i64 0, i32 5
  %65 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool126 = icmp eq %struct.hv* %65, null
  br i1 %tobool126, label %cond.false131, label %cond.end

cond.false131:                                    ; preds = %if.then119
  %call132 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %62) #7
  %sv_any133 = getelementptr inbounds %struct.gv* %call132, i64 0, i32 0
  %66 = load %struct.xpvgv** %sv_any133, align 8, !tbaa !0
  %xgv_gp134 = getelementptr inbounds %struct.xpvgv* %66, i64 0, i32 7
  %67 = load %struct.gp** %xgv_gp134, align 8, !tbaa !0
  %gp_hv135 = getelementptr inbounds %struct.gp* %67, i64 0, i32 5
  %68 = load %struct.hv** %gp_hv135, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then119, %cond.false131
  %cond = phi %struct.hv* [ %68, %cond.false131 ], [ %65, %if.then119 ]
  %sv_any136 = getelementptr inbounds %struct.sv* %61, i64 0, i32 0
  %69 = load i8** %sv_any136, align 8, !tbaa !0
  %xpv_pv137 = bitcast i8* %69 to i8**
  %70 = load i8** %xpv_pv137, align 8, !tbaa !0
  %xpv_cur139 = getelementptr inbounds i8* %69, i64 8
  %71 = bitcast i8* %xpv_cur139 to i64*
  %72 = load i64* %71, align 8, !tbaa !4
  %conv140 = trunc i64 %72 to i32
  %call141 = tail call %struct.sv* @Perl_hv_delete(%struct.hv* %cond, i8* %70, i32 %conv140, i32 2) #7
  %call142 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([31 x i8]* @.str29, i64 0, i64 0), %struct.sv* %61) #7
  br label %return

sw.bb144:                                         ; preds = %if.end20
  %dfoutgv = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %73 = load %struct.op** %dfoutgv, align 8
  %74 = bitcast %struct.op* %73 to %struct.gv*
  tail call void @Perl_setdefout(%struct.gv* %74) #7
  %75 = load %struct.op** %dfoutgv, align 8
  %76 = bitcast %struct.op* %75 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %76) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end20
  %call153 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #7
  br label %return

sw.epilog:                                        ; preds = %land.lhs.true93, %cond.true103, %cond.false115, %if.end72, %lor.lhs.false77, %cond.true111, %land.lhs.true87, %if.end66, %sw.bb144, %sw.bb
  %clear_errsv.1 = phi i8 [ 0, %sw.bb144 ], [ %., %if.end66 ], [ %., %land.lhs.true87 ], [ %., %land.lhs.true93 ], [ %., %cond.true103 ], [ %., %cond.true111 ], [ %., %cond.false115 ], [ %., %lor.lhs.false77 ], [ %., %if.end72 ], [ 0, %sw.bb ]
  %popsub2.0 = phi i8 [ 0, %sw.bb144 ], [ 0, %if.end66 ], [ 0, %land.lhs.true87 ], [ 0, %land.lhs.true93 ], [ 0, %cond.true103 ], [ 0, %cond.true111 ], [ 0, %cond.false115 ], [ 0, %lor.lhs.false77 ], [ 0, %if.end72 ], [ 1, %sw.bb ]
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  switch i8 %34, label %if.end242 [
    i8 0, label %if.then156
    i8 1, label %while.cond.preheader
  ]

while.cond.preheader:                             ; preds = %sw.epilog
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr226479 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %cmp227480 = icmp ugt %struct.sv** %incdec.ptr226479, %0
  br i1 %cmp227480, label %if.end242, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool230 = icmp eq i8 %popsub2.0, 0
  br label %while.body

if.then156:                                       ; preds = %sw.epilog
  %cmp157 = icmp ult %struct.sv** %add.ptr, %0
  br i1 %cmp157, label %if.then159, label %if.else219

if.then159:                                       ; preds = %if.then156
  %tobool160 = icmp eq i8 %popsub2.0, 0
  br i1 %tobool160, label %if.end242.thread, label %if.then161

if.then161:                                       ; preds = %if.then159
  %blk_u164 = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7
  %cv = bitcast %union.anon.1* %blk_u164 to %struct.cv**
  %77 = load %struct.cv** %cv, align 8, !tbaa !0
  %tobool166 = icmp eq %struct.cv* %77, null
  br i1 %tobool166, label %if.else204, label %land.lhs.true167

land.lhs.true167:                                 ; preds = %if.then161
  %sv_any173 = getelementptr inbounds %struct.cv* %77, i64 0, i32 0
  %78 = load %struct.xpvcv** %sv_any173, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %78, i64 0, i32 14
  %79 = load i64* %xcv_depth, align 8, !tbaa !4
  %cmp174 = icmp sgt i64 %79, 1
  br i1 %cmp174, label %if.then176, label %if.else204

if.then176:                                       ; preds = %land.lhs.true167
  %80 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags177 = getelementptr inbounds %struct.sv* %80, i64 0, i32 2
  %81 = load i32* %sv_flags177, align 4, !tbaa !3
  %and178 = and i32 %81, 2048
  %tobool179 = icmp eq i32 %and178, 0
  store %struct.sv* %80, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool181 = icmp ne %struct.sv* %80, null
  br i1 %tobool179, label %if.else, label %if.then180

if.then180:                                       ; preds = %if.then176
  br i1 %tobool181, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then180
  %sv_refcnt = getelementptr inbounds %struct.sv* %80, i64 0, i32 1
  %82 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc182 = add i32 %82, 1
  store i32 %inc182, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then180
  %add.ptr24.sum460 = add i64 %idx.ext23, 1
  %incdec.ptr184 = getelementptr inbounds %struct.sv** %23, i64 %add.ptr24.sum460
  store %struct.sv* %80, %struct.sv** %incdec.ptr184, align 8, !tbaa !0
  %83 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %84 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp185 = icmp sgt i32 %83, %84
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %land.end
  tail call void @Perl_free_tmps() #7
  %.pre486 = load %struct.sv** %incdec.ptr184, align 8, !tbaa !0
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %land.end
  %85 = phi %struct.sv* [ %.pre486, %if.then187 ], [ %80, %land.end ]
  %call189 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %85) #7
  br label %if.end242

if.else:                                          ; preds = %if.then176
  br i1 %tobool181, label %land.rhs191, label %land.end195

land.rhs191:                                      ; preds = %if.else
  %sv_refcnt192 = getelementptr inbounds %struct.sv* %80, i64 0, i32 1
  %86 = load i32* %sv_refcnt192, align 4, !tbaa !3
  %inc193 = add i32 %86, 1
  store i32 %inc193, i32* %sv_refcnt192, align 4, !tbaa !3
  br label %land.end195

land.end195:                                      ; preds = %land.rhs191, %if.else
  %87 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %88 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp197 = icmp sgt i32 %87, %88
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %land.end195
  tail call void @Perl_free_tmps() #7
  br label %if.end200

if.end200:                                        ; preds = %if.then199, %land.end195
  %call201 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %80) #7
  %add.ptr24.sum459 = add i64 %idx.ext23, 1
  %incdec.ptr202 = getelementptr inbounds %struct.sv** %23, i64 %add.ptr24.sum459
  store %struct.sv* %call201, %struct.sv** %incdec.ptr202, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %80) #7
  br label %if.end242

if.else204:                                       ; preds = %if.then161, %land.lhs.true167
  %89 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags205 = getelementptr inbounds %struct.sv* %89, i64 0, i32 2
  %90 = load i32* %sv_flags205, align 4, !tbaa !3
  %and206 = and i32 %90, 2048
  %tobool207 = icmp eq i32 %and206, 0
  br i1 %tobool207, label %cond.false209, label %cond.end211

cond.false209:                                    ; preds = %if.else204
  %call210 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %89) #7
  br label %cond.end211

cond.end211:                                      ; preds = %if.else204, %cond.false209
  %cond212 = phi %struct.sv* [ %call210, %cond.false209 ], [ %89, %if.else204 ]
  %add.ptr24.sum458 = add i64 %idx.ext23, 1
  %incdec.ptr213 = getelementptr inbounds %struct.sv** %23, i64 %add.ptr24.sum458
  store %struct.sv* %cond212, %struct.sv** %incdec.ptr213, align 8, !tbaa !0
  br label %if.end242

if.end242.thread:                                 ; preds = %if.then159
  %91 = load %struct.sv** %0, align 8, !tbaa !0
  %call216 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %91) #7
  %add.ptr24.sum457 = add i64 %idx.ext23, 1
  %incdec.ptr217 = getelementptr inbounds %struct.sv** %23, i64 %add.ptr24.sum457
  store %struct.sv* %call216, %struct.sv** %incdec.ptr217, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr217, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  br label %if.end373.thread

if.else219:                                       ; preds = %if.then156
  %add.ptr24.sum = add i64 %idx.ext23, 1
  %incdec.ptr220 = getelementptr inbounds %struct.sv** %23, i64 %add.ptr24.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr220, align 8, !tbaa !0
  br label %if.end242

while.body:                                       ; preds = %while.body.lr.ph, %cond.end238
  %incdec.ptr226482 = phi %struct.sv** [ %incdec.ptr226479, %while.body.lr.ph ], [ %incdec.ptr226, %cond.end238 ]
  %newsp.0481 = phi %struct.sv** [ %add.ptr24, %while.body.lr.ph ], [ %incdec.ptr240, %cond.end238 ]
  %.pre489 = load %struct.sv** %incdec.ptr226482, align 8, !tbaa !0
  br i1 %tobool230, label %cond.false236, label %land.lhs.true231

land.lhs.true231:                                 ; preds = %while.body
  %sv_flags232 = getelementptr inbounds %struct.sv* %.pre489, i64 0, i32 2
  %92 = load i32* %sv_flags232, align 4, !tbaa !3
  %and233 = and i32 %92, 2048
  %tobool234 = icmp eq i32 %and233, 0
  br i1 %tobool234, label %cond.false236, label %cond.end238

cond.false236:                                    ; preds = %while.body, %land.lhs.true231
  %call237 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %.pre489) #7
  br label %cond.end238

cond.end238:                                      ; preds = %land.lhs.true231, %cond.false236
  %cond239 = phi %struct.sv* [ %call237, %cond.false236 ], [ %.pre489, %land.lhs.true231 ]
  %incdec.ptr240 = getelementptr inbounds %struct.sv** %newsp.0481, i64 1
  store %struct.sv* %cond239, %struct.sv** %incdec.ptr240, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %incdec.ptr226 = getelementptr inbounds %struct.sv** %incdec.ptr226482, i64 1
  %cmp227 = icmp ugt %struct.sv** %incdec.ptr226, %0
  br i1 %cmp227, label %if.end242, label %while.body

if.end242:                                        ; preds = %while.cond.preheader, %cond.end238, %sw.epilog, %if.else219, %cond.end211, %if.end200, %if.end188
  %newsp.1 = phi %struct.sv** [ %incdec.ptr184, %if.end188 ], [ %incdec.ptr202, %if.end200 ], [ %incdec.ptr213, %cond.end211 ], [ %incdec.ptr220, %if.else219 ], [ %add.ptr24, %sw.epilog ], [ %add.ptr24, %while.cond.preheader ], [ %incdec.ptr240, %cond.end238 ]
  store %struct.sv** %newsp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  %tobool243 = icmp eq i8 %popsub2.0, 0
  br i1 %tobool243, label %if.end373.thread, label %if.then244

if.then244:                                       ; preds = %if.end242
  %93 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix245 = getelementptr inbounds %struct.stackinfo* %93, i64 0, i32 2
  %94 = load i32* %si_cxix245, align 4, !tbaa !3
  %dec246 = add nsw i32 %94, -1
  store i32 %dec246, i32* %si_cxix245, align 4, !tbaa !3
  %blk_u249 = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7
  %hasargs = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %95 = bitcast %struct.sv** %hasargs to i8*
  %96 = load i8* %95, align 1, !tbaa !1
  %tobool251 = icmp eq i8 %96, 0
  br i1 %tobool251, label %if.end355, label %if.then252

if.then252:                                       ; preds = %if.then244
  %97 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any253 = getelementptr inbounds %struct.gv* %97, i64 0, i32 0
  %98 = load %struct.xpvgv** %sv_any253, align 8, !tbaa !0
  %xgv_gp254 = getelementptr inbounds %struct.xpvgv* %98, i64 0, i32 7
  %99 = load %struct.gp** %xgv_gp254, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %99, i64 0, i32 4
  %100 = load %struct.av** %gp_av, align 8, !tbaa !0
  %101 = bitcast %struct.av* %100 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %101) #7
  %savearray = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %102 = load %struct.op** %savearray, align 8
  %103 = bitcast %struct.op* %102 to %struct.av*
  %104 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any259 = getelementptr inbounds %struct.gv* %104, i64 0, i32 0
  %105 = load %struct.xpvgv** %sv_any259, align 8, !tbaa !0
  %xgv_gp260 = getelementptr inbounds %struct.xpvgv* %105, i64 0, i32 7
  %106 = load %struct.gp** %xgv_gp260, align 8, !tbaa !0
  %gp_av261 = getelementptr inbounds %struct.gp* %106, i64 0, i32 4
  store %struct.av* %103, %struct.av** %gp_av261, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %107 = load %struct.op** %argarray, align 8
  %sv_any266 = bitcast %struct.op* %107 to %struct.xpvav**
  %108 = load %struct.xpvav** %sv_any266, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 9
  %109 = load i8* %xav_flags, align 1, !tbaa !1
  %and268 = and i8 %109, 1
  %tobool269 = icmp eq i8 %and268, 0
  br i1 %tobool269, label %if.else313, label %if.then270

if.then270:                                       ; preds = %if.then252
  %xav_fill = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 1
  %110 = load i64* %xav_fill, align 8, !tbaa !4
  %111 = bitcast %struct.op* %107 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %111) #7
  %call282 = tail call %struct.av* @Perl_newAV() #7
  %call282.c = bitcast %struct.av* %call282 to %struct.op*
  store %struct.op* %call282.c, %struct.op** %argarray, align 8, !tbaa !0
  %conv293 = trunc i64 %110 to i32
  tail call void @Perl_av_extend(%struct.av* %call282, i32 %conv293) #7
  %112 = load %struct.op** %argarray, align 8
  %sv_any299 = bitcast %struct.op* %112 to %struct.xpvav**
  %113 = load %struct.xpvav** %sv_any299, align 8, !tbaa !0
  %xav_flags300 = getelementptr inbounds %struct.xpvav* %113, i64 0, i32 9
  store i8 2, i8* %xav_flags300, align 1, !tbaa !1
  %114 = load %struct.op** %argarray, align 8
  %115 = bitcast %struct.op* %114 to %struct.sv*
  %oldcomppad = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %116 = load %struct.sv** %oldcomppad, align 8
  %sv_any310 = bitcast %struct.sv* %116 to %struct.xpvav**
  %117 = load %struct.xpvav** %sv_any310, align 8, !tbaa !0
  %xav_array311 = getelementptr inbounds %struct.xpvav* %117, i64 0, i32 0
  %118 = load i8** %xav_array311, align 8, !tbaa !0
  %119 = bitcast i8* %118 to %struct.sv**
  store %struct.sv* %115, %struct.sv** %119, align 8, !tbaa !0
  br label %if.end355

if.else313:                                       ; preds = %if.then252
  %xav_array320 = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 0
  %120 = load i8** %xav_array320, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 7
  %121 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %121 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %xav_max = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 2
  %122 = load i64* %xav_max, align 8, !tbaa !4
  %add = add nsw i64 %sub.ptr.div, %122
  store i64 %add, i64* %xav_max, align 8, !tbaa !4
  %123 = load %struct.op** %argarray, align 8
  %sv_any338 = bitcast %struct.op* %123 to %struct.xpvav**
  %124 = load %struct.xpvav** %sv_any338, align 8, !tbaa !0
  %xav_alloc339 = getelementptr inbounds %struct.xpvav* %124, i64 0, i32 7
  %125 = load %struct.sv*** %xav_alloc339, align 8, !tbaa !0
  %126 = bitcast %struct.sv** %125 to i8*
  %xpv_pv346 = getelementptr inbounds %struct.xpvav* %124, i64 0, i32 0
  store i8* %126, i8** %xpv_pv346, align 8, !tbaa !0
  %127 = load %struct.op** %argarray, align 8
  %sv_any352 = bitcast %struct.op* %127 to %struct.xpvav**
  %128 = load %struct.xpvav** %sv_any352, align 8, !tbaa !0
  %xav_fill353 = getelementptr inbounds %struct.xpvav* %128, i64 0, i32 1
  store i64 -1, i64* %xav_fill353, align 8, !tbaa !4
  br label %if.end355

if.end355:                                        ; preds = %if.then244, %if.then270, %if.else313
  %cv360 = bitcast %union.anon.1* %blk_u249 to %struct.cv**
  %129 = load %struct.cv** %cv360, align 8, !tbaa !0
  %130 = bitcast %struct.cv* %129 to %struct.sv*
  %tobool361 = icmp eq %struct.cv* %129, null
  br i1 %tobool361, label %if.end373, label %land.lhs.true362

land.lhs.true362:                                 ; preds = %if.end355
  %olddepth = getelementptr inbounds %struct.context* %24, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %131 = bitcast %struct.sv*** %olddepth to i64*
  %132 = load i64* %131, align 8, !tbaa !4
  %sv_any367 = getelementptr inbounds %struct.cv* %129, i64 0, i32 0
  %133 = load %struct.xpvcv** %sv_any367, align 8, !tbaa !0
  %xcv_depth368 = getelementptr inbounds %struct.xpvcv* %133, i64 0, i32 14
  store i64 %132, i64* %xcv_depth368, align 8, !tbaa !4
  %tobool369 = icmp eq i64 %132, 0
  %.461 = select i1 %tobool369, %struct.sv* %130, %struct.sv* null
  br label %if.end373

if.end373.thread:                                 ; preds = %if.end242, %if.end242.thread
  store %struct.pmop* %33, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  br label %if.end376

if.end373:                                        ; preds = %land.lhs.true362, %if.end355
  %sv.0 = phi %struct.sv* [ %130, %if.end355 ], [ %.461, %land.lhs.true362 ]
  store %struct.pmop* %33, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool374 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool374, label %if.end376, label %if.then375

if.then375:                                       ; preds = %if.end373
  tail call void @Perl_sv_free(%struct.sv* %sv.0) #7
  br label %if.end376

if.end376:                                        ; preds = %if.end373.thread, %if.end373, %if.then375
  %tobool377 = icmp eq i8 %clear_errsv.1, 0
  br i1 %tobool377, label %if.end381, label %if.then378

if.then378:                                       ; preds = %if.end376
  %134 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any379 = getelementptr inbounds %struct.gv* %134, i64 0, i32 0
  %135 = load %struct.xpvgv** %sv_any379, align 8, !tbaa !0
  %xgv_gp380 = getelementptr inbounds %struct.xpvgv* %135, i64 0, i32 7
  %136 = load %struct.gp** %xgv_gp380, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %136, i64 0, i32 0
  %137 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %137, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  br label %if.end381

if.end381:                                        ; preds = %if.end376, %if.then378
  %call382 = tail call %struct.op* @Perl_pop_return() #7
  br label %return

return:                                           ; preds = %if.end381, %sw.default, %cond.end, %if.then14, %if.end
  %retval.0 = phi %struct.op* [ null, %if.end ], [ %call15, %if.then14 ], [ %call153, %sw.default ], [ %call382, %if.end381 ], [ %call142, %cond.end ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_lex_end() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_last() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  %4 = load i32* %si_cxix, align 4, !tbaa !3
  %call = tail call fastcc i32 @S_dopoptoloop(i32 %4) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.then
  %call3 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0)) #7
  br label %return

if.else:                                          ; preds = %entry
  %op_pv = getelementptr inbounds %struct.op* %1, i64 1
  %5 = bitcast %struct.op* %op_pv to i8**
  %6 = load i8** %5, align 8, !tbaa !0
  %call4 = tail call fastcc i32 @S_dopoptolabel(i8* %6) #8
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.else
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_pv8 = getelementptr inbounds %struct.op* %7, i64 1
  %8 = bitcast %struct.op* %op_pv8 to i8**
  %9 = load i8** %8, align 8, !tbaa !0
  %call9 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([30 x i8]* @.str32, i64 0, i64 0), i8* %9) #7
  br label %return

if.end11:                                         ; preds = %if.else, %if.then
  %cxix.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  %10 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix12 = getelementptr inbounds %struct.stackinfo* %10, i64 0, i32 2
  %11 = load i32* %si_cxix12, align 4, !tbaa !3
  %cmp13 = icmp slt i32 %cxix.0, %11
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void @Perl_dounwind(i32 %cxix.0) #8
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix17.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 2
  %.pre353 = load i32* %si_cxix17.phi.trans.insert, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %12 = phi i32 [ %.pre353, %if.then15 ], [ %11, %if.end11 ]
  %13 = phi %struct.stackinfo* [ %.pre, %if.then15 ], [ %10, %if.end11 ]
  %si_cxix17 = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 2
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %si_cxix17, align 4, !tbaa !3
  %idxprom = sext i32 %12 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 1
  %14 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 0
  %16 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %15, i64 %idx.ext
  %blku_oldcop = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 1
  %17 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %17, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %18 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 3
  %19 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext22 = sext i32 %19 to i64
  %add.ptr23 = getelementptr inbounds i32* %18, i64 %idx.ext22
  store i32* %add.ptr23, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 4
  %20 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %20, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 2
  %21 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %21, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 5
  %22 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 6
  %23 = load i8* %blku_gimme, align 1, !tbaa !1
  %24 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix33 = getelementptr inbounds %struct.stackinfo* %24, i64 0, i32 2
  %25 = load i32* %si_cxix33, align 4, !tbaa !3
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %si_cxix33, align 4, !tbaa !3
  %cx_type = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 0
  %26 = load i32* %cx_type, align 4, !tbaa !3
  %and34 = and i32 %26, 255
  switch i32 %and34, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb43
    i32 2, label %sw.bb45
    i32 6, label %sw.bb71
  ]

sw.bb:                                            ; preds = %if.end16
  %27 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %resetsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %28 = load i32* %resetsp, align 4, !tbaa !3
  %idx.ext37 = sext i32 %28 to i64
  %add.ptr38 = getelementptr inbounds %struct.sv** %27, i64 %idx.ext37
  %last_op = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %29 = load %struct.op** %last_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %29, i64 0, i32 0
  %30 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end16
  %call44 = tail call %struct.op* @Perl_pop_return() #7
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end16
  %blk_u48 = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7
  %old_in_eval = bitcast %union.anon.1* %blk_u48 to i32*
  %31 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %31, i32* @PL_in_eval, align 4, !tbaa !3
  %32 = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %33 = load %struct.op** %32, align 8, !tbaa !0
  store %struct.op* %33, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %34 = bitcast i32* %old_namesv to %struct.sv**
  %35 = load %struct.sv** %34, align 8, !tbaa !0
  %tobool61 = icmp eq %struct.sv* %35, null
  br i1 %tobool61, label %if.end69, label %if.then62

if.then62:                                        ; preds = %sw.bb45
  %call68 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %35) #7
  br label %if.end69

if.end69:                                         ; preds = %sw.bb45, %if.then62
  %call70 = tail call %struct.op* @Perl_pop_return() #7
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end16
  %dfoutgv = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %36 = load %struct.op** %dfoutgv, align 8
  %37 = bitcast %struct.op* %36 to %struct.gv*
  tail call void @Perl_setdefout(%struct.gv* %37) #7
  %38 = load %struct.op** %dfoutgv, align 8
  %39 = bitcast %struct.op* %38 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %39) #7
  %call80 = tail call %struct.op* @Perl_pop_return() #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  %call81 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0)) #7
  br label %return

sw.epilog:                                        ; preds = %sw.bb71, %if.end69, %sw.bb43, %sw.bb
  %pop2.0 = phi i32 [ 0, %sw.bb71 ], [ 0, %if.end69 ], [ 1, %sw.bb43 ], [ 3, %sw.bb ]
  %nextop.0 = phi %struct.op* [ %call80, %sw.bb71 ], [ %call70, %if.end69 ], [ %call44, %sw.bb43 ], [ %30, %sw.bb ]
  %newsp.0 = phi %struct.sv** [ %add.ptr, %sw.bb71 ], [ %add.ptr, %if.end69 ], [ %add.ptr, %sw.bb43 ], [ %add.ptr38, %sw.bb ]
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  switch i8 %23, label %if.end116 [
    i8 0, label %if.then84
    i8 1, label %while.cond.preheader
  ]

while.cond.preheader:                             ; preds = %sw.epilog
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr100349 = getelementptr inbounds %struct.sv** %15, i64 %add.ptr.sum
  %cmp101350 = icmp ugt %struct.sv** %incdec.ptr100349, %0
  br i1 %cmp101350, label %if.end116, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp103 = icmp eq i32 %pop2.0, 1
  br label %while.body

if.then84:                                        ; preds = %sw.epilog
  %cmp85 = icmp ult %struct.sv** %add.ptr, %0
  br i1 %cmp85, label %if.then87, label %if.else93

if.then87:                                        ; preds = %if.then84
  %cmp88 = icmp eq i32 %pop2.0, 1
  %40 = load %struct.sv** %0, align 8, !tbaa !0
  br i1 %cmp88, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then87
  %sv_flags = getelementptr inbounds %struct.sv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags, align 4, !tbaa !3
  %and90 = and i32 %41, 2048
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then87, %land.lhs.true
  %call92 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %40) #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi %struct.sv* [ %call92, %cond.false ], [ %40, %land.lhs.true ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %newsp.0, i64 1
  store %struct.sv* %cond, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %if.end116

if.else93:                                        ; preds = %if.then84
  %incdec.ptr94 = getelementptr inbounds %struct.sv** %newsp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr94, align 8, !tbaa !0
  br label %if.end116

while.body:                                       ; preds = %while.body.lr.ph, %cond.end112
  %incdec.ptr100352 = phi %struct.sv** [ %incdec.ptr100349, %while.body.lr.ph ], [ %incdec.ptr100, %cond.end112 ]
  %newsp.1351 = phi %struct.sv** [ %newsp.0, %while.body.lr.ph ], [ %incdec.ptr114, %cond.end112 ]
  %42 = load %struct.sv** %incdec.ptr100352, align 8, !tbaa !0
  br i1 %cmp103, label %land.lhs.true105, label %cond.false110

land.lhs.true105:                                 ; preds = %while.body
  %sv_flags106 = getelementptr inbounds %struct.sv* %42, i64 0, i32 2
  %43 = load i32* %sv_flags106, align 4, !tbaa !3
  %and107 = and i32 %43, 2048
  %tobool108 = icmp eq i32 %and107, 0
  br i1 %tobool108, label %cond.false110, label %cond.end112

cond.false110:                                    ; preds = %while.body, %land.lhs.true105
  %call111 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %42) #7
  br label %cond.end112

cond.end112:                                      ; preds = %land.lhs.true105, %cond.false110
  %cond113 = phi %struct.sv* [ %call111, %cond.false110 ], [ %42, %land.lhs.true105 ]
  %incdec.ptr114 = getelementptr inbounds %struct.sv** %newsp.1351, i64 1
  store %struct.sv* %cond113, %struct.sv** %incdec.ptr114, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %incdec.ptr100 = getelementptr inbounds %struct.sv** %incdec.ptr100352, i64 1
  %cmp101 = icmp ugt %struct.sv** %incdec.ptr100, %0
  br i1 %cmp101, label %if.end116, label %while.body

if.end116:                                        ; preds = %while.cond.preheader, %cond.end112, %sw.epilog, %cond.end, %if.else93
  %newsp.2 = phi %struct.sv** [ %incdec.ptr, %cond.end ], [ %incdec.ptr94, %if.else93 ], [ %newsp.0, %sw.epilog ], [ %newsp.0, %while.cond.preheader ], [ %incdec.ptr114, %cond.end112 ]
  store %struct.sv** %newsp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  %44 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix117 = getelementptr inbounds %struct.stackinfo* %44, i64 0, i32 2
  %45 = load i32* %si_cxix117, align 4, !tbaa !3
  %dec118 = add nsw i32 %45, -1
  store i32 %dec118, i32* %si_cxix117, align 4, !tbaa !3
  switch i32 %pop2.0, label %sw.epilog281.thread [
    i32 3, label %sw.bb119
    i32 1, label %sw.bb161
  ]

sw.bb119:                                         ; preds = %if.end116
  %iterlval = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %46 = load %struct.sv** %iterlval, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %46) #7
  %itervar = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %47 = load %struct.sv*** %itervar, align 8, !tbaa !0
  %tobool128 = icmp eq %struct.sv** %47, null
  br i1 %tobool128, label %if.end140, label %if.then129

if.then129:                                       ; preds = %sw.bb119
  %48 = load %struct.sv** %47, align 8, !tbaa !0
  %call135 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %48) #7
  %itersave = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %49 = load %struct.sv** %itersave, align 8, !tbaa !0
  store %struct.sv* %49, %struct.sv** %47, align 8, !tbaa !0
  br label %if.end140

if.end140:                                        ; preds = %sw.bb119, %if.then129
  %iterary = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 8
  %50 = load %struct.av** %iterary, align 8, !tbaa !0
  %tobool145 = icmp eq %struct.av* %50, null
  %51 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp152 = icmp eq %struct.av* %50, %51
  %or.cond = or i1 %tobool145, %cmp152
  br i1 %or.cond, label %if.end160, label %if.then154

if.then154:                                       ; preds = %if.end140
  %52 = bitcast %struct.av* %50 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %52) #7
  br label %if.end160

if.end160:                                        ; preds = %if.end140, %if.then154
  tail call void @Perl_pop_scope() #7
  br label %sw.epilog281.thread

sw.bb161:                                         ; preds = %if.end116
  %blk_u164 = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7
  %hasargs = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %53 = bitcast %struct.sv** %hasargs to i8*
  %54 = load i8* %53, align 1, !tbaa !1
  %tobool166 = icmp eq i8 %54, 0
  br i1 %tobool166, label %if.end266, label %if.then167

if.then167:                                       ; preds = %sw.bb161
  %55 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %55, i64 0, i32 0
  %56 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %56, i64 0, i32 7
  %57 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %57, i64 0, i32 4
  %58 = load %struct.av** %gp_av, align 8, !tbaa !0
  %59 = bitcast %struct.av* %58 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %59) #7
  %savearray = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %60 = load %struct.op** %savearray, align 8
  %61 = bitcast %struct.op* %60 to %struct.av*
  %62 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any172 = getelementptr inbounds %struct.gv* %62, i64 0, i32 0
  %63 = load %struct.xpvgv** %sv_any172, align 8, !tbaa !0
  %xgv_gp173 = getelementptr inbounds %struct.xpvgv* %63, i64 0, i32 7
  %64 = load %struct.gp** %xgv_gp173, align 8, !tbaa !0
  %gp_av174 = getelementptr inbounds %struct.gp* %64, i64 0, i32 4
  store %struct.av* %61, %struct.av** %gp_av174, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %65 = load %struct.op** %argarray, align 8
  %sv_any179 = bitcast %struct.op* %65 to %struct.xpvav**
  %66 = load %struct.xpvav** %sv_any179, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 9
  %67 = load i8* %xav_flags, align 1, !tbaa !1
  %and181 = and i8 %67, 1
  %tobool182 = icmp eq i8 %and181, 0
  br i1 %tobool182, label %if.else225, label %if.then183

if.then183:                                       ; preds = %if.then167
  %xav_fill = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 1
  %68 = load i64* %xav_fill, align 8, !tbaa !4
  %69 = bitcast %struct.op* %65 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %69) #7
  %call195 = tail call %struct.av* @Perl_newAV() #7
  %call195.c = bitcast %struct.av* %call195 to %struct.op*
  store %struct.op* %call195.c, %struct.op** %argarray, align 8, !tbaa !0
  %conv206 = trunc i64 %68 to i32
  tail call void @Perl_av_extend(%struct.av* %call195, i32 %conv206) #7
  %70 = load %struct.op** %argarray, align 8
  %sv_any212 = bitcast %struct.op* %70 to %struct.xpvav**
  %71 = load %struct.xpvav** %sv_any212, align 8, !tbaa !0
  %xav_flags213 = getelementptr inbounds %struct.xpvav* %71, i64 0, i32 9
  store i8 2, i8* %xav_flags213, align 1, !tbaa !1
  %72 = load %struct.op** %argarray, align 8
  %73 = bitcast %struct.op* %72 to %struct.sv*
  %oldcomppad = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %74 = load %struct.sv** %oldcomppad, align 8
  %sv_any223 = bitcast %struct.sv* %74 to %struct.xpvav**
  %75 = load %struct.xpvav** %sv_any223, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %75, i64 0, i32 0
  %76 = load i8** %xav_array, align 8, !tbaa !0
  %77 = bitcast i8* %76 to %struct.sv**
  store %struct.sv* %73, %struct.sv** %77, align 8, !tbaa !0
  br label %if.end266

if.else225:                                       ; preds = %if.then167
  %xav_array232 = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 0
  %78 = load i8** %xav_array232, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 7
  %79 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %xav_max = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 2
  %80 = load i64* %xav_max, align 8, !tbaa !4
  %add = add nsw i64 %sub.ptr.div, %80
  store i64 %add, i64* %xav_max, align 8, !tbaa !4
  %81 = load %struct.op** %argarray, align 8
  %sv_any250 = bitcast %struct.op* %81 to %struct.xpvav**
  %82 = load %struct.xpvav** %sv_any250, align 8, !tbaa !0
  %xav_alloc251 = getelementptr inbounds %struct.xpvav* %82, i64 0, i32 7
  %83 = load %struct.sv*** %xav_alloc251, align 8, !tbaa !0
  %84 = bitcast %struct.sv** %83 to i8*
  %xpv_pv = getelementptr inbounds %struct.xpvav* %82, i64 0, i32 0
  store i8* %84, i8** %xpv_pv, align 8, !tbaa !0
  %85 = load %struct.op** %argarray, align 8
  %sv_any263 = bitcast %struct.op* %85 to %struct.xpvav**
  %86 = load %struct.xpvav** %sv_any263, align 8, !tbaa !0
  %xav_fill264 = getelementptr inbounds %struct.xpvav* %86, i64 0, i32 1
  store i64 -1, i64* %xav_fill264, align 8, !tbaa !4
  br label %if.end266

if.end266:                                        ; preds = %sw.bb161, %if.then183, %if.else225
  %cv = bitcast %union.anon.1* %blk_u164 to %struct.cv**
  %87 = load %struct.cv** %cv, align 8, !tbaa !0
  %88 = bitcast %struct.cv* %87 to %struct.sv*
  %tobool271 = icmp eq %struct.cv* %87, null
  br i1 %tobool271, label %sw.epilog281, label %land.lhs.true272

land.lhs.true272:                                 ; preds = %if.end266
  %olddepth = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %89 = bitcast %struct.sv*** %olddepth to i64*
  %90 = load i64* %89, align 8, !tbaa !4
  %sv_any277 = getelementptr inbounds %struct.cv* %87, i64 0, i32 0
  %91 = load %struct.xpvcv** %sv_any277, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %91, i64 0, i32 14
  store i64 %90, i64* %xcv_depth, align 8, !tbaa !4
  %tobool278 = icmp eq i64 %90, 0
  %. = select i1 %tobool278, %struct.sv* %88, %struct.sv* null
  br label %sw.epilog281

sw.epilog281.thread:                              ; preds = %if.end116, %if.end160
  store %struct.pmop* %22, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  br label %return

sw.epilog281:                                     ; preds = %land.lhs.true272, %if.end266
  %sv.0 = phi %struct.sv* [ %88, %if.end266 ], [ %., %land.lhs.true272 ]
  store %struct.pmop* %22, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool282 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool282, label %return, label %if.then283

if.then283:                                       ; preds = %sw.epilog281
  tail call void @Perl_sv_free(%struct.sv* %sv.0) #7
  br label %return

return:                                           ; preds = %sw.epilog281.thread, %if.then283, %sw.epilog281, %sw.default, %if.then7, %if.then2
  %retval.0 = phi %struct.op* [ %call3, %if.then2 ], [ %call81, %sw.default ], [ %call9, %if.then7 ], [ %nextop.0, %sw.epilog281 ], [ %nextop.0, %if.then283 ], [ %nextop.0, %sw.epilog281.thread ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_dopoptoloop(i32 %startingblock) #0 {
entry:
  %cmp41 = icmp sgt i32 %startingblock, -1
  br i1 %cmp41, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %startingblock to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %i.042 = phi i32 [ %startingblock, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 1
  %2 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %2, i64 %indvars.iv, i32 0
  %3 = load i32* %cx_type, align 4, !tbaa !3
  %and = and i32 %3, 255
  switch i32 %and, label %for.inc [
    i32 4, label %sw.bb
    i32 1, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %return
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.sv* %5, null
  br i1 %cmp1, label %lor.lhs.false10, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings2, align 8, !tbaa !0
  %cmp3 = icmp eq %struct.sv* %7, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3, label %lor.lhs.false10, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings5 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings5, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.sv* %9, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings7 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings7, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %12 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !0
  %14 = load i8* %13, align 1, !tbaa !1
  %and9 = and i8 %14, 64
  %tobool = icmp eq i8 %and9, 0
  br i1 %tobool, label %lor.lhs.false10, label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false, %land.lhs.true, %sw.bb
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings11 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings11, align 8, !tbaa !0
  %cmp12 = icmp eq %struct.sv* %16, null
  br i1 %cmp12, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %lor.lhs.false10
  %17 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and16 = and i8 %17, 1
  %tobool17 = icmp eq i8 %and16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true14, %land.lhs.true4
  %18 = load i32* %cx_type, align 4, !tbaa !3
  %and19 = and i32 %18, 255
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [7 x i8*]* @context_name, i64 0, i64 %idxprom20
  %19 = load i8** %arrayidx21, align 8, !tbaa !0
  %20 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %20, i64 0, i32 4
  %21 = load i16* %op_type, align 2, !tbaa !6
  %cmp23 = icmp eq i16 %21, 351
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = tail call i8* @Perl_custom_op_name(%struct.op* %20) #7
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %idxprom26 = zext i16 %21 to i64
  %arrayidx27 = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %idxprom26
  %22 = load i8** %arrayidx27, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %22, %cond.false ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 3, i8* getelementptr inbounds ([18 x i8]* @.str80, i64 0, i64 0), i8* %19, i8* %cond) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true14, %cond.end, %lor.lhs.false10
  %23 = load i32* %cx_type, align 4, !tbaa !3
  %and29 = and i32 %23, 255
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %return, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %dec = add nsw i32 %i.042, -1
  %24 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %return

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %for.body

return:                                           ; preds = %for.inc, %for.body, %if.end, %entry
  %retval.0 = phi i32 [ %startingblock, %entry ], [ %i.042, %for.body ], [ -1, %if.end ], [ %dec, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_dopoptolabel(i8* nocapture %label) #0 {
entry:
  %0 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %0, i64 0, i32 2
  %1 = load i32* %si_cxix, align 4, !tbaa !3
  %cmp55 = icmp sgt i32 %1, -1
  br i1 %cmp55, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %2 = sext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi %struct.stackinfo* [ %0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %i.056 = phi i32 [ %1, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 1
  %4 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %4, i64 %indvars.iv, i32 0
  %5 = load i32* %cx_type, align 4, !tbaa !3
  %and = and i32 %5, 255
  switch i32 %and, label %for.inc [
    i32 4, label %sw.bb
    i32 1, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.sv* %7, null
  br i1 %cmp1, label %lor.lhs.false10, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings2, align 8, !tbaa !0
  %cmp3 = icmp eq %struct.sv* %9, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp3, label %lor.lhs.false10, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings5 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings5, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.sv* %11, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings7 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings7, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !0
  %16 = load i8* %15, align 1, !tbaa !1
  %and9 = and i8 %16, 64
  %tobool = icmp eq i8 %and9, 0
  br i1 %tobool, label %lor.lhs.false10, label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false, %land.lhs.true, %sw.bb
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings11 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings11, align 8, !tbaa !0
  %cmp12 = icmp eq %struct.sv* %18, null
  br i1 %cmp12, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %lor.lhs.false10
  %19 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and16 = and i8 %19, 1
  %tobool17 = icmp eq i8 %and16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true14, %land.lhs.true4
  %20 = load i32* %cx_type, align 4, !tbaa !3
  %and19 = and i32 %20, 255
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [7 x i8*]* @context_name, i64 0, i64 %idxprom20
  %21 = load i8** %arrayidx21, align 8, !tbaa !0
  %22 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %22, i64 0, i32 4
  %23 = load i16* %op_type, align 2, !tbaa !6
  %cmp23 = icmp eq i16 %23, 351
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = tail call i8* @Perl_custom_op_name(%struct.op* %22) #7
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %idxprom26 = zext i16 %23 to i64
  %arrayidx27 = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %idxprom26
  %24 = load i8** %arrayidx27, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %24, %cond.false ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 3, i8* getelementptr inbounds ([18 x i8]* @.str80, i64 0, i64 0), i8* %21, i8* %cond) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true14, %cond.end, %lor.lhs.false10
  %25 = load i32* %cx_type, align 4, !tbaa !3
  %and29 = and i32 %25, 255
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %return, label %for.inc

sw.bb34:                                          ; preds = %for.body
  %label35 = getelementptr inbounds %struct.context* %4, i64 %indvars.iv, i32 1, i32 0, i32 7, i32 0, i32 0
  %26 = load i8** %label35, align 8, !tbaa !0
  %tobool36 = icmp eq i8* %26, null
  br i1 %tobool36, label %for.inc, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %sw.bb34
  %call43 = tail call i32 @strcmp(i8* %label, i8* %26) #7
  %tobool44 = icmp eq i32 %call43, 0
  br i1 %tobool44, label %return, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false37, %sw.bb34, %for.body, %if.end
  %dec = add nsw i32 %i.056, -1
  %27 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %27, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %return

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, -1
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %for.body

return:                                           ; preds = %for.inc, %lor.lhs.false37, %if.end, %entry
  %retval.0 = phi i32 [ %1, %entry ], [ %i.056, %lor.lhs.false37 ], [ -1, %if.end ], [ %dec, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_next() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %0, i64 0, i32 6
  %1 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 2
  %3 = load i32* %si_cxix, align 4, !tbaa !3
  %call = tail call fastcc i32 @S_dopoptoloop(i32 %3) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.then
  %call3 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([34 x i8]* @.str34, i64 0, i64 0)) #7
  br label %return

if.else:                                          ; preds = %entry
  %op_pv = getelementptr inbounds %struct.op* %0, i64 1
  %4 = bitcast %struct.op* %op_pv to i8**
  %5 = load i8** %4, align 8, !tbaa !0
  %call4 = tail call fastcc i32 @S_dopoptolabel(i8* %5) #8
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.else
  %6 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_pv8 = getelementptr inbounds %struct.op* %6, i64 1
  %7 = bitcast %struct.op* %op_pv8 to i8**
  %8 = load i8** %7, align 8, !tbaa !0
  %call9 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([30 x i8]* @.str35, i64 0, i64 0), i8* %8) #7
  br label %return

if.end11:                                         ; preds = %if.else, %if.then
  %cxix.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  %9 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix12 = getelementptr inbounds %struct.stackinfo* %9, i64 0, i32 2
  %10 = load i32* %si_cxix12, align 4, !tbaa !3
  %cmp13 = icmp slt i32 %cxix.0, %10
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void @Perl_dounwind(i32 %cxix.0) #8
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix17.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 2
  %.pre44 = load i32* %si_cxix17.phi.trans.insert, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %11 = phi i32 [ %.pre44, %if.then15 ], [ %10, %if.end11 ]
  %12 = phi %struct.stackinfo* [ %.pre, %if.then15 ], [ %9, %if.end11 ]
  %13 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %idxprom = sext i32 %11 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %12, i64 0, i32 1
  %14 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 0
  %16 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %15, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %17 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 3
  %18 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext20 = sext i32 %18 to i64
  %add.ptr21 = getelementptr inbounds i32* %17, i64 %idx.ext20
  store i32* %add.ptr21, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 4
  %19 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %19, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 2
  %20 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %20, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 5
  %21 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %21, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %cmp28 = icmp slt i32 %19, %13
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end16
  %idxprom31 = sext i32 %19 to i64
  %22 = load i32** @PL_scopestack, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32* %22, i64 %idxprom31
  %23 = load i32* %arrayidx32, align 4, !tbaa !3
  tail call void @Perl_leave_scope(i32 %23) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end16
  %next_op = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %24 = load %struct.op** %next_op, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end33, %if.then7, %if.then2
  %retval.0 = phi %struct.op* [ %call3, %if.then2 ], [ %24, %if.end33 ], [ %call9, %if.then7 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_redo() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %0, i64 0, i32 6
  %1 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 2
  %3 = load i32* %si_cxix, align 4, !tbaa !3
  %call = tail call fastcc i32 @S_dopoptoloop(i32 %3) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.then
  %call3 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([34 x i8]* @.str36, i64 0, i64 0)) #7
  br label %return

if.else:                                          ; preds = %entry
  %op_pv = getelementptr inbounds %struct.op* %0, i64 1
  %4 = bitcast %struct.op* %op_pv to i8**
  %5 = load i8** %4, align 8, !tbaa !0
  %call4 = tail call fastcc i32 @S_dopoptolabel(i8* %5) #8
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.else
  %6 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_pv8 = getelementptr inbounds %struct.op* %6, i64 1
  %7 = bitcast %struct.op* %op_pv8 to i8**
  %8 = load i8** %7, align 8, !tbaa !0
  %call9 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i8* %8) #7
  br label %return

if.end11:                                         ; preds = %if.else, %if.then
  %cxix.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  %9 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix12 = getelementptr inbounds %struct.stackinfo* %9, i64 0, i32 2
  %10 = load i32* %si_cxix12, align 4, !tbaa !3
  %cmp13 = icmp slt i32 %cxix.0, %10
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void @Perl_dounwind(i32 %cxix.0) #8
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix17.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 2
  %.pre49 = load i32* %si_cxix17.phi.trans.insert, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %11 = phi i32 [ %.pre49, %if.then15 ], [ %10, %if.end11 ]
  %12 = phi %struct.stackinfo* [ %.pre, %if.then15 ], [ %9, %if.end11 ]
  %idxprom = sext i32 %11 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %12, i64 0, i32 1
  %13 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %13, i64 %idxprom, i32 1, i32 0, i32 0
  %15 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %14, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %13, i64 %idxprom, i32 1, i32 0, i32 3
  %17 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext20 = sext i32 %17 to i64
  %add.ptr21 = getelementptr inbounds i32* %16, i64 %idx.ext20
  store i32* %add.ptr21, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %13, i64 %idxprom, i32 1, i32 0, i32 4
  %18 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %18, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %13, i64 %idxprom, i32 1, i32 0, i32 2
  %19 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %19, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %13, i64 %idxprom, i32 1, i32 0, i32 5
  %20 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %20, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %sub = add nsw i32 %18, -1
  %idxprom28 = sext i32 %sub to i64
  %21 = load i32** @PL_scopestack, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %21, i64 %idxprom28
  %22 = load i32* %arrayidx29, align 4, !tbaa !3
  %23 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp30 = icmp sgt i32 %23, %22
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end16
  tail call void @Perl_leave_scope(i32 %22) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end16
  %24 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %25 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp34 = icmp sgt i32 %24, %25
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  tail call void @Perl_free_tmps() #7
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %redo_op = getelementptr inbounds %struct.context* %13, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %26 = load %struct.op** %redo_op, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end37, %if.then7, %if.then2
  %retval.0 = phi %struct.op* [ %call3, %if.then2 ], [ %26, %if.end37 ], [ %call9, %if.then7 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_dump() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_goto() #8
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_goto() #0 {
entry:
  %enterops = alloca [64 x %struct.op*], align 16
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = bitcast [64 x %struct.op*]* %enterops to i8*
  call void @llvm.lifetime.start(i64 512, i8* %1) #4
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %2, i64 0, i32 4
  %3 = load i16* %op_type, align 2, !tbaa !6
  %cmp = icmp eq i16 %3, 188
  %op_flags = getelementptr inbounds %struct.op* %2, i64 0, i32 6
  %4 = load i8* %op_flags, align 1, !tbaa !1
  %conv2 = zext i8 %4 to i32
  %and = and i32 %conv2, 64
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else561, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and3 = and i32 %6, 524288
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.else544, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags5 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags5, align 4, !tbaa !3
  %and6 = and i32 %9, 255
  %cmp7 = icmp eq i32 %and6, 12
  br i1 %cmp7, label %if.then9, label %if.else544

if.then9:                                         ; preds = %land.lhs.true
  %10 = bitcast %struct.sv* %8 to %struct.cv*
  %sv_any131009 = bitcast %struct.sv* %8 to %struct.xpvcv**
  %11 = load %struct.xpvcv** %sv_any131009, align 8, !tbaa !0
  %xcv_root1010 = getelementptr inbounds %struct.xpvcv* %11, i64 0, i32 9
  %12 = load %struct.op** %xcv_root1010, align 8, !tbaa !0
  %tobool141011 = icmp eq %struct.op* %12, null
  br i1 %tobool141011, label %land.lhs.true15, label %if.end46

land.lhs.true15:                                  ; preds = %if.then9, %retry.backedge
  %13 = phi %struct.xpvcv* [ %25, %retry.backedge ], [ %11, %if.then9 ]
  %sv_any131013 = phi %struct.xpvcv** [ %sv_any13, %retry.backedge ], [ %sv_any131009, %if.then9 ]
  %cv.01012 = phi %struct.cv* [ %cv.0.be, %retry.backedge ], [ %10, %if.then9 ]
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %13, i64 0, i32 10
  %14 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !0
  %tobool17 = icmp eq void (%struct.cv*)* %14, null
  br i1 %tobool17, label %if.then18, label %if.end46

if.then18:                                        ; preds = %land.lhs.true15
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %13, i64 0, i32 12
  %15 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %tobool20 = icmp eq %struct.gv* %15, null
  br i1 %tobool20, label %if.end44, label %if.then21

if.then21:                                        ; preds = %if.then18
  %sv_any22 = getelementptr inbounds %struct.gv* %15, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any22, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %17, i64 0, i32 7
  %18 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %cmp23 = icmp eq %struct.cv* %cv.01012, %18
  %tobool29 = icmp eq %struct.cv* %18, null
  %or.cond = or i1 %cmp23, %tobool29
  br i1 %or.cond, label %if.end, label %retry.backedge

if.end:                                           ; preds = %if.then21
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 10
  %19 = load %struct.hv** %xgv_stash, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 8
  %20 = load i8** %xgv_name, align 8, !tbaa !0
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 9
  %21 = load i64* %xgv_namelen, align 8, !tbaa !4
  %call = call %struct.gv* @Perl_gv_autoload4(%struct.hv* %19, i8* %20, i64 %21, i32 0) #7
  %tobool34 = icmp eq %struct.gv* %call, null
  br i1 %tobool34, label %if.end41, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end
  %sv_any36 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any36, align 8, !tbaa !0
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp37, align 8, !tbaa !0
  %gp_cv38 = getelementptr inbounds %struct.gp* %23, i64 0, i32 7
  %24 = load %struct.cv** %gp_cv38, align 8, !tbaa !0
  %tobool39 = icmp eq %struct.cv* %24, null
  br i1 %tobool39, label %if.end41, label %retry.backedge

retry.backedge:                                   ; preds = %land.lhs.true35, %if.then21
  %cv.0.be = phi %struct.cv* [ %24, %land.lhs.true35 ], [ %18, %if.then21 ]
  %sv_any13 = getelementptr inbounds %struct.cv* %cv.0.be, i64 0, i32 0
  %25 = load %struct.xpvcv** %sv_any13, align 8, !tbaa !0
  %xcv_root = getelementptr inbounds %struct.xpvcv* %25, i64 0, i32 9
  %26 = load %struct.op** %xcv_root, align 8, !tbaa !0
  %tobool14 = icmp eq %struct.op* %26, null
  br i1 %tobool14, label %land.lhs.true15, label %if.end46

if.end41:                                         ; preds = %land.lhs.true35, %if.end
  %call42 = call %struct.sv* @Perl_sv_newmortal() #7
  call void @Perl_gv_efullname4(%struct.sv* %call42, %struct.gv* %15, i8* null, i8 signext 1) #7
  %call43 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([30 x i8]* @.str38, i64 0, i64 0), %struct.sv* %call42) #7
  br label %cleanup

if.end44:                                         ; preds = %if.then18
  %call45 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0)) #7
  br label %cleanup

if.end46:                                         ; preds = %retry.backedge, %land.lhs.true15, %if.then9
  %sv_any13.lcssa = phi %struct.xpvcv** [ %sv_any131009, %if.then9 ], [ %sv_any131013, %land.lhs.true15 ], [ %sv_any13, %retry.backedge ]
  %cv.0.lcssa = phi %struct.cv* [ %10, %if.then9 ], [ %cv.01012, %land.lhs.true15 ], [ %cv.0.be, %retry.backedge ]
  %27 = bitcast %struct.cv* %cv.0.lcssa to %struct.sv*
  store %struct.sv* %27, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool47 = icmp ne %struct.cv* %cv.0.lcssa, null
  br i1 %tobool47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end46
  %28 = getelementptr inbounds %struct.cv* %cv.0.lcssa, i64 0, i32 1
  %29 = load i32* %28, align 4, !tbaa !3
  %inc = add i32 %29, 1
  store i32 %inc, i32* %28, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end46
  %30 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %31 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp49 = icmp sgt i32 %30, %31
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %land.end
  call void @Perl_free_tmps() #7
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %land.end
  %32 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %32, i64 0, i32 2
  %33 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %32, i64 0, i32 1
  %34 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %cmp4.i.i = icmp sgt i32 %33, -1
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %if.then56

for.body.lr.ph.i.i:                               ; preds = %if.end52
  %35 = sext i32 %33 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %35, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %i.05.i.i = phi i32 [ %33, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cx_type.i.i = getelementptr inbounds %struct.context* %34, i64 %indvars.iv.i.i, i32 0
  %36 = load i32* %cx_type.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %36, 255
  switch i32 %and.i.i, label %for.inc.i.i [
    i32 2, label %S_dopoptosub.exit
    i32 1, label %S_dopoptosub.exit
    i32 6, label %S_dopoptosub.exit
  ]

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %dec.i.i = add nsw i32 %i.05.i.i, -1
  %37 = trunc i64 %indvars.iv.i.i to i32
  %cmp.i.i = icmp sgt i32 %37, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %S_dopoptosub.exit

S_dopoptosub.exit:                                ; preds = %for.body.i.i, %for.body.i.i, %for.body.i.i, %for.inc.i.i
  %i.0.lcssa.i.i = phi i32 [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %i.05.i.i, %for.body.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %cmp54 = icmp slt i32 %i.0.lcssa.i.i, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end52, %S_dopoptosub.exit
  %call57 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([43 x i8]* @.str40, i64 0, i64 0)) #7
  br label %cleanup

if.end58:                                         ; preds = %S_dopoptosub.exit
  %cmp60 = icmp slt i32 %i.0.lcssa.i.i, %33
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @Perl_dounwind(i32 %i.0.lcssa.i.i) #8
  %.pre1035 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix64.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre1035, i64 0, i32 2
  %.pre1036 = load i32* %si_cxix64.phi.trans.insert, align 4, !tbaa !3
  %si_cxstack.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre1035, i64 0, i32 1
  %.pre1037 = load %struct.context** %si_cxstack.phi.trans.insert, align 8, !tbaa !0
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58
  %38 = phi %struct.context* [ %.pre1037, %if.then62 ], [ %34, %if.end58 ]
  %39 = phi i32 [ %.pre1036, %if.then62 ], [ %33, %if.end58 ]
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 0
  %41 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %40, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %42 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 3
  %43 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext67 = sext i32 %43 to i64
  %add.ptr68 = getelementptr inbounds i32* %42, i64 %idx.ext67
  store i32* %add.ptr68, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 4
  %44 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %44, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 2
  %45 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %45, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 5
  %46 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %46, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 0
  %47 = load i32* %cx_type, align 4, !tbaa !3
  %and75 = and i32 %47, 258
  %cmp76 = icmp eq i32 %and75, 258
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end63
  %call79 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([42 x i8]* @.str41, i64 0, i64 0)) #7
  br label %cleanup

if.end80:                                         ; preds = %if.end63
  %and82 = and i32 %47, 255
  %cmp83 = icmp eq i32 %and82, 1
  br i1 %cmp83, label %land.lhs.true85, label %if.else

land.lhs.true85:                                  ; preds = %if.end80
  %hasargs = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %48 = bitcast %struct.sv** %hasargs to i8*
  %49 = load i8* %48, align 1, !tbaa !1
  %tobool89 = icmp eq i8 %49, 0
  br i1 %tobool89, label %if.else, label %if.then90

if.then90:                                        ; preds = %land.lhs.true85
  %argarray = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %50 = load %struct.op** %argarray, align 8
  %sv_any95 = bitcast %struct.op* %50 to %struct.xpvav**
  %51 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 1
  %52 = load i64* %xav_fill, align 8, !tbaa !4
  %add = add nsw i64 %52, 1
  %conv96 = trunc i64 %add to i32
  %53 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %53 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %add97 = add nsw i32 %conv96, 1
  %conv98 = sext i32 %add97 to i64
  %cmp99 = icmp slt i64 %sub.ptr.div, %conv98
  br i1 %cmp99, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.then90
  %call103 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr, %struct.sv** %incdec.ptr, i32 %add97) #7
  %.pre1038 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.then90
  %54 = phi %struct.xpvav* [ %.pre1038, %if.then101 ], [ %51, %if.then90 ]
  %sp.0 = phi %struct.sv** [ %call103, %if.then101 ], [ %incdec.ptr, %if.then90 ]
  %add.ptr105 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  %55 = bitcast %struct.sv** %add.ptr105 to i8*
  %xav_array = getelementptr inbounds %struct.xpvav* %54, i64 0, i32 0
  %56 = load i8** %xav_array, align 8, !tbaa !0
  %sext957 = shl i64 %add, 32
  %mul = ashr exact i64 %sext957, 29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 %mul, i32 1, i1 false)
  %57 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any108 = getelementptr inbounds %struct.gv* %57, i64 0, i32 0
  %58 = load %struct.xpvgv** %sv_any108, align 8, !tbaa !0
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv* %58, i64 0, i32 7
  %59 = load %struct.gp** %xgv_gp109, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %59, i64 0, i32 4
  %60 = load %struct.av** %gp_av, align 8, !tbaa !0
  %61 = bitcast %struct.av* %60 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %61) #7
  %savearray = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %62 = load %struct.op** %savearray, align 8
  %63 = bitcast %struct.op* %62 to %struct.av*
  %64 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any114 = getelementptr inbounds %struct.gv* %64, i64 0, i32 0
  %65 = load %struct.xpvgv** %sv_any114, align 8, !tbaa !0
  %xgv_gp115 = getelementptr inbounds %struct.xpvgv* %65, i64 0, i32 7
  %66 = load %struct.gp** %xgv_gp115, align 8, !tbaa !0
  %gp_av116 = getelementptr inbounds %struct.gp* %66, i64 0, i32 4
  store %struct.av* %63, %struct.av** %gp_av116, align 8, !tbaa !0
  %67 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_array118 = getelementptr inbounds %struct.xpvav* %67, i64 0, i32 0
  %68 = load i8** %xav_array118, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %67, i64 0, i32 7
  %69 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast120 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast121 = ptrtoint %struct.sv** %69 to i64
  %sub.ptr.sub122 = sub i64 %sub.ptr.lhs.cast120, %sub.ptr.rhs.cast121
  %sub.ptr.div123 = ashr exact i64 %sub.ptr.sub122, 3
  %xav_max = getelementptr inbounds %struct.xpvav* %67, i64 0, i32 2
  %70 = load i64* %xav_max, align 8, !tbaa !4
  %add125 = add nsw i64 %sub.ptr.div123, %70
  store i64 %add125, i64* %xav_max, align 8, !tbaa !4
  %71 = bitcast %struct.sv** %69 to i8*
  store i8* %71, i8** %xav_array118, align 8, !tbaa !0
  %72 = load %struct.xpvav** %sv_any95, align 8, !tbaa !0
  %xav_fill130 = getelementptr inbounds %struct.xpvav* %72, i64 0, i32 1
  store i64 -1, i64* %xav_fill130, align 8, !tbaa !4
  %xav_flags = getelementptr inbounds %struct.xpvav* %72, i64 0, i32 9
  %73 = load i8* %xav_flags, align 1, !tbaa !1
  %and133 = and i8 %73, 1
  %tobool134 = icmp eq i8 %and133, 0
  br i1 %tobool134, label %if.end176, label %if.then135

if.then135:                                       ; preds = %if.end104
  %74 = bitcast %struct.op* %50 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %74) #7
  %call136 = call %struct.av* @Perl_newAV() #7
  %sub = add nsw i32 %conv96, -1
  call void @Perl_av_extend(%struct.av* %call136, i32 %sub) #7
  %sv_any137 = getelementptr inbounds %struct.av* %call136, i64 0, i32 0
  %75 = load %struct.xpvav** %sv_any137, align 8, !tbaa !0
  %xav_flags138 = getelementptr inbounds %struct.xpvav* %75, i64 0, i32 9
  store i8 2, i8* %xav_flags138, align 1, !tbaa !1
  %call136.c = bitcast %struct.av* %call136 to %struct.op*
  store %struct.op* %call136.c, %struct.op** %argarray, align 8, !tbaa !0
  %76 = bitcast %struct.av* %call136 to %struct.sv*
  %77 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  store %struct.sv* %76, %struct.sv** %77, align 8, !tbaa !0
  br label %if.end176

if.else:                                          ; preds = %land.lhs.true85, %if.end80
  %78 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_xsub147 = getelementptr inbounds %struct.xpvcv* %78, i64 0, i32 10
  %79 = load void (%struct.cv*)** %xcv_xsub147, align 8, !tbaa !0
  %tobool148 = icmp eq void (%struct.cv*)* %79, null
  br i1 %tobool148, label %if.end176, label %if.then149

if.then149:                                       ; preds = %if.else
  %80 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any151 = getelementptr inbounds %struct.gv* %80, i64 0, i32 0
  %81 = load %struct.xpvgv** %sv_any151, align 8, !tbaa !0
  %xgv_gp152 = getelementptr inbounds %struct.xpvgv* %81, i64 0, i32 7
  %82 = load %struct.gp** %xgv_gp152, align 8, !tbaa !0
  %gp_av153 = getelementptr inbounds %struct.gp* %82, i64 0, i32 4
  %83 = load %struct.av** %gp_av153, align 8, !tbaa !0
  %sv_any154 = getelementptr inbounds %struct.av* %83, i64 0, i32 0
  %84 = load %struct.xpvav** %sv_any154, align 8, !tbaa !0
  %xav_fill155 = getelementptr inbounds %struct.xpvav* %84, i64 0, i32 1
  %85 = load i64* %xav_fill155, align 8, !tbaa !4
  %add156 = add nsw i64 %85, 1
  %conv157 = trunc i64 %add156 to i32
  %86 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast158 = ptrtoint %struct.sv** %86 to i64
  %sub.ptr.rhs.cast159 = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %sub.ptr.div161 = ashr exact i64 %sub.ptr.sub160, 3
  %add162 = add nsw i32 %conv157, 1
  %conv163 = sext i32 %add162 to i64
  %cmp164 = icmp slt i64 %sub.ptr.div161, %conv163
  br i1 %cmp164, label %if.then166, label %if.end169

if.then166:                                       ; preds = %if.then149
  %call168 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr, %struct.sv** %incdec.ptr, i32 %add162) #7
  %.pre1039 = load %struct.xpvav** %sv_any154, align 8, !tbaa !0
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %if.then149
  %87 = phi %struct.xpvav* [ %.pre1039, %if.then166 ], [ %84, %if.then149 ]
  %sp.1 = phi %struct.sv** [ %call168, %if.then166 ], [ %incdec.ptr, %if.then149 ]
  %add.ptr170 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  %88 = bitcast %struct.sv** %add.ptr170 to i8*
  %xav_array172 = getelementptr inbounds %struct.xpvav* %87, i64 0, i32 0
  %89 = load i8** %xav_array172, align 8, !tbaa !0
  %sext = shl i64 %add156, 32
  %mul174 = ashr exact i64 %sext, 29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 %mul174, i32 1, i1 false)
  br label %if.end176

if.end176:                                        ; preds = %if.end104, %if.else, %if.end169, %if.then135
  %reified.0 = phi i8 [ 1, %if.then135 ], [ 0, %if.end169 ], [ 0, %if.else ], [ 0, %if.end104 ]
  %items.0 = phi i32 [ %conv96, %if.then135 ], [ %conv157, %if.end169 ], [ 0, %if.else ], [ %conv96, %if.end104 ]
  %sp.2 = phi %struct.sv** [ %sp.0, %if.then135 ], [ %sp.1, %if.end169 ], [ %incdec.ptr, %if.else ], [ %sp.0, %if.end104 ]
  %idx.ext177 = sext i32 %items.0 to i64
  %add.ptr178 = getelementptr inbounds %struct.sv** %sp.2, i64 %idx.ext177
  %90 = load i32* %cx_type, align 4, !tbaa !3
  %and180 = and i32 %90, 255
  %cmp181 = icmp eq i32 %and180, 1
  br i1 %cmp181, label %land.lhs.true183, label %if.end201

land.lhs.true183:                                 ; preds = %if.end176
  %blk_u186 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7
  %olddepth = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %91 = bitcast %struct.sv*** %olddepth to i64*
  %92 = load i64* %91, align 8, !tbaa !4
  %cv192 = bitcast %union.anon.1* %blk_u186 to %struct.cv**
  %93 = load %struct.cv** %cv192, align 8, !tbaa !0
  %sv_any193 = getelementptr inbounds %struct.cv* %93, i64 0, i32 0
  %94 = load %struct.xpvcv** %sv_any193, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %94, i64 0, i32 14
  store i64 %92, i64* %xcv_depth, align 8, !tbaa !4
  %tobool194 = icmp eq i64 %92, 0
  br i1 %tobool194, label %if.then195, label %if.end201

if.then195:                                       ; preds = %land.lhs.true183
  %95 = bitcast %struct.cv* %93 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %95) #7
  br label %if.end201

if.end201:                                        ; preds = %land.lhs.true183, %if.end176, %if.then195
  %96 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %sub202 = add nsw i32 %96, -1
  %idxprom203 = sext i32 %sub202 to i64
  %97 = load i32** @PL_scopestack, align 8, !tbaa !0
  %arrayidx204 = getelementptr inbounds i32* %97, i64 %idxprom203
  %98 = load i32* %arrayidx204, align 4, !tbaa !3
  %99 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp205 = icmp sgt i32 %99, %98
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end201
  call void @Perl_leave_scope(i32 %98) #7
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.end201
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %100 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %100, i32* @PL_tmps_floor, align 4, !tbaa !3
  call void @Perl_save_freesv(%struct.sv* %27) #7
  %101 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_xsub210 = getelementptr inbounds %struct.xpvcv* %101, i64 0, i32 10
  %102 = load void (%struct.cv*)** %xcv_xsub210, align 8, !tbaa !0
  %tobool211 = icmp eq void (%struct.cv*)* %102, null
  br i1 %tobool211, label %if.else264, label %if.then212

if.then212:                                       ; preds = %if.end208
  %tobool213 = icmp ne i8 %reified.0, 0
  %cmp215998 = icmp sgt i32 %items.0, 0
  %or.cond1058 = and i1 %tobool213, %cmp215998
  br i1 %or.cond1058, label %for.body, label %if.end222

for.body:                                         ; preds = %if.then212, %for.body
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %for.body ], [ 0, %if.then212 ]
  %add.ptr178.sum = sub i64 %idx.ext177, %indvars.iv1023
  %arrayidx219 = getelementptr inbounds %struct.sv** %sp.2, i64 %add.ptr178.sum
  %103 = load %struct.sv** %arrayidx219, align 8, !tbaa !0
  %call220 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %103) #7
  %indvars.iv.next1024 = add i64 %indvars.iv1023, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1024 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %items.0
  br i1 %exitcond, label %if.end222, label %for.body

if.end222:                                        ; preds = %if.then212, %for.body
  %104 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr223 = getelementptr inbounds i32* %104, i64 1
  store i32* %incdec.ptr223, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %105 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp224 = icmp eq i32* %incdec.ptr223, %105
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.end222
  call void @Perl_markstack_grow() #7
  %.pre1047 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.end222
  %106 = phi i32* [ %.pre1047, %if.then226 ], [ %incdec.ptr223, %if.end222 ]
  %107 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast228 = ptrtoint %struct.sv** %sp.2 to i64
  %sub.ptr.rhs.cast229 = ptrtoint %struct.sv** %107 to i64
  %sub.ptr.sub230 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.rhs.cast229
  %sub.ptr.div231956 = lshr exact i64 %sub.ptr.sub230, 3
  %conv232 = trunc i64 %sub.ptr.div231956 to i32
  store i32 %conv232, i32* %106, align 4, !tbaa !3
  store %struct.sv** %add.ptr178, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %108 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_xsub234 = getelementptr inbounds %struct.xpvcv* %108, i64 0, i32 10
  %109 = load void (%struct.cv*)** %xcv_xsub234, align 8, !tbaa !0
  call void %109(%struct.cv* %cv.0.lcssa) #7
  %110 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix235 = getelementptr inbounds %struct.stackinfo* %110, i64 0, i32 2
  %111 = load i32* %si_cxix235, align 4, !tbaa !3
  %dec = add nsw i32 %111, -1
  store i32 %dec, i32* %si_cxix235, align 4, !tbaa !3
  %idxprom236 = sext i32 %111 to i64
  %si_cxstack237 = getelementptr inbounds %struct.stackinfo* %110, i64 0, i32 1
  %112 = load %struct.context** %si_cxstack237, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %112, i64 %idxprom236, i32 1, i32 0, i32 1
  %113 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %113, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %114 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp248 = getelementptr inbounds %struct.context* %112, i64 %idxprom236, i32 1, i32 0, i32 3
  %115 = load i32* %blku_oldmarksp248, align 4, !tbaa !3
  %idx.ext249 = sext i32 %115 to i64
  %add.ptr250 = getelementptr inbounds i32* %114, i64 %idx.ext249
  store i32* %add.ptr250, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp253 = getelementptr inbounds %struct.context* %112, i64 %idxprom236, i32 1, i32 0, i32 4
  %116 = load i32* %blku_oldscopesp253, align 4, !tbaa !3
  store i32 %116, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp256 = getelementptr inbounds %struct.context* %112, i64 %idxprom236, i32 1, i32 0, i32 2
  %117 = load i32* %blku_oldretsp256, align 4, !tbaa !3
  store i32 %117, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm259 = getelementptr inbounds %struct.context* %112, i64 %idxprom236, i32 1, i32 0, i32 5
  %118 = load %struct.pmop** %blku_oldpm259, align 8, !tbaa !0
  store %struct.pmop* %118, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  call void @Perl_pop_scope() #7
  %call263 = call %struct.op* @Perl_pop_return() #7
  br label %cleanup

if.else264:                                       ; preds = %if.end208
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %101, i64 0, i32 15
  %119 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %120 = load i32* %cx_type, align 4, !tbaa !3
  %and267 = and i32 %120, 255
  %cmp268 = icmp eq i32 %and267, 2
  br i1 %cmp268, label %if.then270, label %if.end284

if.then270:                                       ; preds = %if.else264
  %blk_u273 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7
  %old_in_eval = bitcast %union.anon.1* %blk_u273 to i32*
  %121 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %121, i32* @PL_in_eval, align 4, !tbaa !3
  %122 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %123 = load %struct.op** %122, align 8, !tbaa !0
  store %struct.op* %123, %struct.op** @PL_eval_root, align 8, !tbaa !0
  store i32 1, i32* %cx_type, align 4, !tbaa !3
  %hasargs283 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %124 = bitcast %struct.sv** %hasargs283 to i8*
  store i8 0, i8* %124, align 1, !tbaa !1
  br label %if.end284

if.end284:                                        ; preds = %if.then270, %if.else264
  %125 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 0
  %cv.0.c = bitcast %struct.cv* %cv.0.lcssa to i8*
  store i8* %cv.0.c, i8** %125, align 8, !tbaa !0
  %126 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_depth291 = getelementptr inbounds %struct.xpvcv* %126, i64 0, i32 14
  %127 = load i64* %xcv_depth291, align 8, !tbaa !4
  %conv293 = and i64 %127, 65535
  %olddepth298 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %conv293.c = inttoptr i64 %conv293 to %struct.sv**
  store %struct.sv** %conv293.c, %struct.sv*** %olddepth298, align 8, !tbaa !4
  %128 = load i64* %xcv_depth291, align 8, !tbaa !4
  %inc301 = add nsw i64 %128, 1
  store i64 %inc301, i64* %xcv_depth291, align 8, !tbaa !4
  %cmp304 = icmp slt i64 %inc301, 2
  br i1 %cmp304, label %if.then306, label %if.else314

if.then306:                                       ; preds = %if.end284
  store %struct.sv* %27, %struct.sv** @PL_Sv, align 8, !tbaa !0
  br i1 %tobool47, label %land.rhs308, label %if.end350

land.rhs308:                                      ; preds = %if.then306
  %129 = getelementptr inbounds %struct.cv* %cv.0.lcssa, i64 0, i32 1
  %130 = load i32* %129, align 4, !tbaa !3
  %inc310 = add i32 %130, 1
  store i32 %inc310, i32* %129, align 4, !tbaa !3
  br label %if.end350

if.else314:                                       ; preds = %if.end284
  %cmp317 = icmp eq i64 %inc301, 100
  br i1 %cmp317, label %land.lhs.true319, label %if.end346

land.lhs.true319:                                 ; preds = %if.else314
  %131 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %131, i64 0, i32 14
  %132 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp320 = icmp eq %struct.sv* %132, null
  br i1 %cmp320, label %lor.lhs.false337, label %land.lhs.true322

land.lhs.true322:                                 ; preds = %land.lhs.true319
  %133 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings323 = getelementptr inbounds %struct.cop* %133, i64 0, i32 14
  %134 = load %struct.sv** %cop_warnings323, align 8, !tbaa !0
  %cmp324 = icmp eq %struct.sv* %134, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp324, label %lor.lhs.false337, label %land.lhs.true326

land.lhs.true326:                                 ; preds = %land.lhs.true322
  %135 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings327 = getelementptr inbounds %struct.cop* %135, i64 0, i32 14
  %136 = load %struct.sv** %cop_warnings327, align 8, !tbaa !0
  %cmp328 = icmp eq %struct.sv* %136, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp328, label %if.then345, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true326
  %137 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings330 = getelementptr inbounds %struct.cop* %137, i64 0, i32 14
  %138 = load %struct.sv** %cop_warnings330, align 8, !tbaa !0
  %sv_any331 = getelementptr inbounds %struct.sv* %138, i64 0, i32 0
  %139 = load i8** %sv_any331, align 8, !tbaa !0
  %xpv_pv332 = bitcast i8* %139 to i8**
  %140 = load i8** %xpv_pv332, align 8, !tbaa !0
  %arrayidx333 = getelementptr inbounds i8* %140, i64 4
  %141 = load i8* %arrayidx333, align 1, !tbaa !1
  %and335 = and i8 %141, 16
  %tobool336 = icmp eq i8 %and335, 0
  br i1 %tobool336, label %lor.lhs.false337, label %if.then345

lor.lhs.false337:                                 ; preds = %lor.lhs.false, %land.lhs.true322, %land.lhs.true319
  %142 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings338 = getelementptr inbounds %struct.cop* %142, i64 0, i32 14
  %143 = load %struct.sv** %cop_warnings338, align 8, !tbaa !0
  %cmp339 = icmp eq %struct.sv* %143, null
  br i1 %cmp339, label %land.lhs.true341, label %if.end346

land.lhs.true341:                                 ; preds = %lor.lhs.false337
  %144 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and343 = and i8 %144, 1
  %tobool344 = icmp eq i8 %and343, 0
  br i1 %tobool344, label %if.end346, label %if.then345

if.then345:                                       ; preds = %lor.lhs.false, %land.lhs.true341, %land.lhs.true326
  call void @Perl_sub_crush_depth(%struct.cv* %cv.0.lcssa) #7
  br label %if.end346

if.end346:                                        ; preds = %land.lhs.true341, %lor.lhs.false337, %if.then345, %if.else314
  %145 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_depth348 = getelementptr inbounds %struct.xpvcv* %145, i64 0, i32 14
  %146 = load i64* %xcv_depth348, align 8, !tbaa !4
  %conv349 = trunc i64 %146 to i32
  call void @Perl_pad_push(%struct.av* %119, i32 %conv349, i32 1) #7
  br label %if.end350

if.end350:                                        ; preds = %if.then306, %land.rhs308, %if.end346
  %147 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add351 = add nsw i32 %147, 2
  %148 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp352 = icmp sgt i32 %add351, %148
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end350
  call void @Perl_savestack_grow() #7
  %.pre1040 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end355

if.end355:                                        ; preds = %if.then354, %if.end350
  %149 = phi i32 [ %.pre1040, %if.then354 ], [ %147, %if.end350 ]
  %150 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %151 = bitcast %struct.av* %150 to i8*
  %inc356 = add nsw i32 %149, 1
  %idxprom357 = sext i32 %149 to i64
  %152 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %152, i64 %idxprom357, i32 0
  store i8* %151, i8** %any_ptr, align 8, !tbaa !0
  %inc359 = add nsw i32 %149, 2
  store i32 %inc359, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom360 = sext i32 %inc356 to i64
  %153 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx361 = getelementptr inbounds %union.any* %153, i64 %idxprom360
  %any_i32 = bitcast %union.any* %arrayidx361 to i32*
  store i32 33, i32* %any_i32, align 4, !tbaa !3
  %154 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_depth363 = getelementptr inbounds %struct.xpvcv* %154, i64 0, i32 14
  %155 = load i64* %xcv_depth363, align 8, !tbaa !4
  %sv_any364 = getelementptr inbounds %struct.av* %119, i64 0, i32 0
  %156 = load %struct.xpvav** %sv_any364, align 8, !tbaa !0
  %xav_array365 = getelementptr inbounds %struct.xpvav* %156, i64 0, i32 0
  %157 = load i8** %xav_array365, align 8, !tbaa !0
  %158 = bitcast i8* %157 to %struct.sv**
  %arrayidx366 = getelementptr inbounds %struct.sv** %158, i64 %155
  %159 = load %struct.sv** %arrayidx366, align 8, !tbaa !0
  %160 = bitcast %struct.sv* %159 to %struct.av*
  store %struct.av* %160, %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_any367 = bitcast %struct.sv* %159 to %struct.xpvav**
  %161 = load %struct.xpvav** %sv_any367, align 8, !tbaa !0
  %xav_array368 = getelementptr inbounds %struct.xpvav* %161, i64 0, i32 0
  %162 = load i8** %xav_array368, align 8, !tbaa !0
  %163 = bitcast i8* %162 to %struct.sv**
  store %struct.sv** %163, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %hasargs373 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %164 = bitcast %struct.sv** %hasargs373 to i8*
  %165 = load i8* %164, align 1, !tbaa !1
  %tobool374 = icmp eq i8 %165, 0
  br i1 %tobool374, label %if.end483, label %if.then375

if.then375:                                       ; preds = %if.end355
  %166 = load %struct.sv** %163, align 8, !tbaa !0
  %167 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any378 = getelementptr inbounds %struct.gv* %167, i64 0, i32 0
  %168 = load %struct.xpvgv** %sv_any378, align 8, !tbaa !0
  %xgv_gp379 = getelementptr inbounds %struct.xpvgv* %168, i64 0, i32 7
  %169 = load %struct.gp** %xgv_gp379, align 8, !tbaa !0
  %gp_av380 = getelementptr inbounds %struct.gp* %169, i64 0, i32 4
  %170 = load %struct.av** %gp_av380, align 8, !tbaa !0
  %savearray385 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c = bitcast %struct.av* %170 to %struct.op*
  store %struct.op* %.c, %struct.op** %savearray385, align 8, !tbaa !0
  store %struct.sv* %166, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool386 = icmp eq %struct.sv* %166, null
  br i1 %tobool386, label %land.end391, label %land.rhs387

land.rhs387:                                      ; preds = %if.then375
  %sv_refcnt388 = getelementptr inbounds %struct.sv* %166, i64 0, i32 1
  %171 = load i32* %sv_refcnt388, align 4, !tbaa !3
  %inc389 = add i32 %171, 1
  store i32 %inc389, i32* %sv_refcnt388, align 4, !tbaa !3
  br label %land.end391

land.end391:                                      ; preds = %if.then375, %land.rhs387
  %172 = bitcast %struct.sv* %166 to %struct.av*
  %173 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any393 = getelementptr inbounds %struct.gv* %173, i64 0, i32 0
  %174 = load %struct.xpvgv** %sv_any393, align 8, !tbaa !0
  %xgv_gp394 = getelementptr inbounds %struct.xpvgv* %174, i64 0, i32 7
  %175 = load %struct.gp** %xgv_gp394, align 8, !tbaa !0
  %gp_av395 = getelementptr inbounds %struct.gp* %175, i64 0, i32 4
  store %struct.av* %172, %struct.av** %gp_av395, align 8, !tbaa !0
  %176 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %oldcomppad = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %.c953 = bitcast %struct.av* %176 to %struct.sv*
  store %struct.sv* %.c953, %struct.sv** %oldcomppad, align 8, !tbaa !0
  %argarray404 = getelementptr inbounds %struct.context* %38, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %.c954 = bitcast %struct.sv* %166 to %struct.op*
  store %struct.op* %.c954, %struct.op** %argarray404, align 8, !tbaa !0
  %sv_any406 = bitcast %struct.sv* %166 to %struct.xpvav**
  %177 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  %xav_max407 = getelementptr inbounds %struct.xpvav* %177, i64 0, i32 2
  %178 = load i64* %xav_max407, align 8, !tbaa !4
  %add408 = add nsw i64 %178, 1
  %cmp409 = icmp slt i64 %idx.ext177, %add408
  br i1 %cmp409, label %if.end453, label %if.then411

if.then411:                                       ; preds = %land.end391
  %xav_alloc413 = getelementptr inbounds %struct.xpvav* %177, i64 0, i32 7
  %179 = load %struct.sv*** %xav_alloc413, align 8, !tbaa !0
  %xav_array415 = getelementptr inbounds %struct.xpvav* %177, i64 0, i32 0
  %180 = load i8** %xav_array415, align 8, !tbaa !0
  %181 = bitcast i8* %180 to %struct.sv**
  %cmp416 = icmp eq %struct.sv** %181, %179
  br i1 %cmp416, label %if.end432, label %if.then418

if.then418:                                       ; preds = %if.then411
  %sub.ptr.lhs.cast423 = ptrtoint i8* %180 to i64
  %sub.ptr.rhs.cast424 = ptrtoint %struct.sv** %179 to i64
  %sub.ptr.sub425 = sub i64 %sub.ptr.lhs.cast423, %sub.ptr.rhs.cast424
  %sub.ptr.div426 = ashr exact i64 %sub.ptr.sub425, 3
  %add429 = add nsw i64 %sub.ptr.div426, %178
  store i64 %add429, i64* %xav_max407, align 8, !tbaa !4
  %182 = bitcast %struct.sv** %179 to i8*
  store i8* %182, i8** %xav_array415, align 8, !tbaa !0
  %.pre1045 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  %xav_max435.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre1045, i64 0, i32 2
  %.pre1046 = load i64* %xav_max435.phi.trans.insert, align 8, !tbaa !4
  br label %if.end432

if.end432:                                        ; preds = %if.then411, %if.then418
  %183 = phi i64 [ %178, %if.then411 ], [ %.pre1046, %if.then418 ]
  %184 = phi %struct.xpvav* [ %177, %if.then411 ], [ %.pre1045, %if.then418 ]
  %add436 = add nsw i64 %183, 1
  %cmp437 = icmp slt i64 %idx.ext177, %add436
  br i1 %cmp437, label %if.end453, label %if.then439

if.then439:                                       ; preds = %if.end432
  %xav_max435 = getelementptr inbounds %struct.xpvav* %184, i64 0, i32 2
  %sub440 = add nsw i32 %items.0, -1
  %conv441 = sext i32 %sub440 to i64
  store i64 %conv441, i64* %xav_max435, align 8, !tbaa !4
  %185 = bitcast %struct.sv** %179 to i8*
  %add444 = add nsw i32 %items.0, 1
  %conv445 = sext i32 %add444 to i64
  %mul446 = shl nsw i64 %conv445, 3
  %call447 = call i8* @Perl_safesysrealloc(i8* %185, i64 %mul446) #7
  %186 = bitcast i8* %call447 to %struct.sv**
  %187 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  %xav_alloc449 = getelementptr inbounds %struct.xpvav* %187, i64 0, i32 7
  store %struct.sv** %186, %struct.sv*** %xav_alloc449, align 8, !tbaa !0
  %188 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  %xpv_pv451 = getelementptr inbounds %struct.xpvav* %188, i64 0, i32 0
  store i8* %call447, i8** %xpv_pv451, align 8, !tbaa !0
  %.pre1044 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  br label %if.end453

if.end453:                                        ; preds = %if.end432, %land.end391, %if.then439
  %189 = phi %struct.xpvav* [ %184, %if.end432 ], [ %177, %land.end391 ], [ %.pre1044, %if.then439 ]
  %incdec.ptr454 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  %xav_array456 = getelementptr inbounds %struct.xpvav* %189, i64 0, i32 0
  %190 = load i8** %xav_array456, align 8, !tbaa !0
  %191 = bitcast %struct.sv** %incdec.ptr454 to i8*
  %mul458 = shl nsw i64 %idx.ext177, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 %mul458, i32 1, i1 false)
  %sub459 = add nsw i32 %items.0, -1
  %conv460 = sext i32 %sub459 to i64
  %192 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  %xav_fill462 = getelementptr inbounds %struct.xpvav* %192, i64 0, i32 1
  store i64 %conv460, i64* %xav_fill462, align 8, !tbaa !4
  %tobool463 = icmp eq i8 %reified.0, 0
  br i1 %tobool463, label %while.cond.preheader, label %if.then464

if.then464:                                       ; preds = %if.end453
  %xav_flags466 = getelementptr inbounds %struct.xpvav* %192, i64 0, i32 9
  %193 = load i8* %xav_flags466, align 1, !tbaa !1
  %or = or i8 %193, 1
  store i8 %or, i8* %xav_flags466, align 1, !tbaa !1
  %194 = load %struct.xpvav** %sv_any406, align 8, !tbaa !0
  %xav_flags470 = getelementptr inbounds %struct.xpvav* %194, i64 0, i32 9
  %195 = load i8* %xav_flags470, align 1, !tbaa !1
  %and472 = and i8 %195, -3
  store i8 %and472, i8* %xav_flags470, align 1, !tbaa !1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then464, %if.end453
  %tobool476995 = icmp eq i32 %items.0, 0
  br i1 %tobool476995, label %if.end483, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end481
  %dec475997.in = phi i32 [ %dec475997, %if.end481 ], [ %items.0, %while.cond.preheader ]
  %mark.0996 = phi %struct.sv** [ %incdec.ptr482, %if.end481 ], [ %incdec.ptr454, %while.cond.preheader ]
  %dec475997 = add nsw i32 %dec475997.in, -1
  %196 = load %struct.sv** %mark.0996, align 8, !tbaa !0
  %tobool477 = icmp eq %struct.sv* %196, null
  br i1 %tobool477, label %if.end481, label %if.then478

if.then478:                                       ; preds = %while.body
  %sv_flags479 = getelementptr inbounds %struct.sv* %196, i64 0, i32 2
  %197 = load i32* %sv_flags479, align 4, !tbaa !3
  %and480 = and i32 %197, -2049
  store i32 %and480, i32* %sv_flags479, align 4, !tbaa !3
  br label %if.end481

if.end481:                                        ; preds = %while.body, %if.then478
  %incdec.ptr482 = getelementptr inbounds %struct.sv** %mark.0996, i64 1
  %tobool476 = icmp eq i32 %dec475997, 0
  br i1 %tobool476, label %if.end483, label %while.body

if.end483:                                        ; preds = %while.cond.preheader, %if.end481, %if.end355
  %198 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool484.not = icmp eq i32 %198, 0
  %and486 = and i32 %198, 1
  %tobool487 = icmp eq i32 %and486, 0
  %or.cond958 = or i1 %tobool484.not, %tobool487
  br i1 %or.cond958, label %if.end542, label %if.then488

if.then488:                                       ; preds = %if.end483
  %199 = load %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %sv_any490 = getelementptr inbounds %struct.gv* %199, i64 0, i32 0
  %200 = load %struct.xpvgv** %sv_any490, align 8, !tbaa !0
  %xgv_gp491 = getelementptr inbounds %struct.xpvgv* %200, i64 0, i32 7
  %201 = load %struct.gp** %xgv_gp491, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %201, i64 0, i32 0
  %202 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %and494 = and i32 %198, 64
  %tobool495 = icmp eq i32 %and494, 0
  br i1 %tobool495, label %if.else517, label %if.then496

if.then496:                                       ; preds = %if.then488
  %sv_flags497 = getelementptr inbounds %struct.sv* %202, i64 0, i32 2
  %203 = load i32* %sv_flags497, align 4, !tbaa !3
  %and498 = and i32 %203, 255
  %cmp499 = icmp ugt i32 %and498, 4
  br i1 %cmp499, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then496
  %call501 = call signext i8 @Perl_sv_upgrade(%struct.sv* %202, i32 5) #7
  %.pre1042 = load i32* %sv_flags497, align 4, !tbaa !3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then496
  %204 = phi i32 [ %.pre1042, %lor.rhs ], [ %203, %if.then496 ]
  %and505 = and i32 %204, 2097152
  %tobool506 = icmp eq i32 %and505, 0
  br i1 %tobool506, label %land.end510, label %land.rhs507

land.rhs507:                                      ; preds = %lor.end
  %call508 = call i32 @Perl_sv_backoff(%struct.sv* %202) #7
  %.pre1043 = load i32* %sv_flags497, align 4, !tbaa !3
  br label %land.end510

land.end510:                                      ; preds = %lor.end, %land.rhs507
  %205 = phi i32 [ %204, %lor.end ], [ %.pre1043, %land.rhs507 ]
  %or513 = or i32 %205, 16842752
  store i32 %or513, i32* %sv_flags497, align 4, !tbaa !3
  %sv_any514 = getelementptr inbounds %struct.sv* %202, i64 0, i32 0
  %206 = load i8** %sv_any514, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %206, i64 24
  %207 = bitcast i8* %xiv_iv to i64*
  call void @Perl_save_iv(i64* %207) #7
  %208 = ptrtoint %struct.cv* %cv.0.lcssa to i64
  %209 = load i8** %sv_any514, align 8, !tbaa !0
  %xiv_iv516 = getelementptr inbounds i8* %209, i64 24
  %210 = bitcast i8* %xiv_iv516 to i64*
  store i64 %208, i64* %210, align 8, !tbaa !4
  br label %if.end520

if.else517:                                       ; preds = %if.then488
  call void @Perl_save_item(%struct.sv* %202) #7
  %211 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_gv519 = getelementptr inbounds %struct.xpvcv* %211, i64 0, i32 12
  %212 = load %struct.gv** %xcv_gv519, align 8, !tbaa !0
  call void @Perl_gv_efullname4(%struct.sv* %202, %struct.gv* %212, i8* null, i8 signext 1) #7
  br label %if.end520

if.end520:                                        ; preds = %if.else517, %land.end510
  %213 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool521 = icmp eq i32 %213, 0
  %and523 = and i32 %213, 128
  %tobool524 = icmp eq i32 %and523, 0
  %or.cond961 = or i1 %tobool521, %tobool524
  br i1 %or.cond961, label %if.end542, label %land.lhs.true525

land.lhs.true525:                                 ; preds = %if.end520
  %call526 = call %struct.cv* @Perl_get_cv(i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0), i32 0) #7
  %tobool527 = icmp eq %struct.cv* %call526, null
  br i1 %tobool527, label %if.end542, label %if.then528

if.then528:                                       ; preds = %land.lhs.true525
  %214 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr529 = getelementptr inbounds i32* %214, i64 1
  store i32* %incdec.ptr529, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %215 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp530 = icmp eq i32* %incdec.ptr529, %215
  br i1 %cmp530, label %if.then532, label %if.end533

if.then532:                                       ; preds = %if.then528
  call void @Perl_markstack_grow() #7
  %.pre1041 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end533

if.end533:                                        ; preds = %if.then532, %if.then528
  %216 = phi i32* [ %.pre1041, %if.then532 ], [ %incdec.ptr529, %if.then528 ]
  %217 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %218 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast534 = ptrtoint %struct.sv** %217 to i64
  %sub.ptr.rhs.cast535 = ptrtoint %struct.sv** %218 to i64
  %sub.ptr.sub536 = sub i64 %sub.ptr.lhs.cast534, %sub.ptr.rhs.cast535
  %sub.ptr.div537952 = lshr exact i64 %sub.ptr.sub536, 3
  %conv538 = trunc i64 %sub.ptr.div537952 to i32
  store i32 %conv538, i32* %216, align 4, !tbaa !3
  %219 = bitcast %struct.cv* %call526 to %struct.sv*
  %call539 = call i32 @Perl_call_sv(%struct.sv* %219, i32 32) #7
  %220 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr540 = getelementptr inbounds %struct.sv** %220, i64 -1
  store %struct.sv** %incdec.ptr540, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end542

if.end542:                                        ; preds = %if.end483, %land.lhs.true525, %if.end520, %if.end533
  store %struct.sv** %add.ptr178, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %221 = load %struct.xpvcv** %sv_any13.lcssa, align 8, !tbaa !0
  %xcv_start = getelementptr inbounds %struct.xpvcv* %221, i64 0, i32 8
  %222 = load %struct.op** %xcv_start, align 8, !tbaa !0
  br label %cleanup

if.else544:                                       ; preds = %if.then, %land.lhs.true
  %and546 = and i32 %6, 262144
  %cmp547 = icmp eq i32 %and546, 0
  br i1 %cmp547, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else544
  %sv_any549 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %223 = load i8** %sv_any549, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %223, i64 8
  %224 = bitcast i8* %xpv_cur to i64*
  %225 = load i64* %224, align 8, !tbaa !4
  store i64 %225, i64* %n_a, align 8, !tbaa !4
  %xpv_pv551 = bitcast i8* %223 to i8**
  %226 = load i8** %xpv_pv551, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.else544
  %call552 = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %n_a, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %226, %cond.true ], [ %call552, %cond.false ]
  br i1 %cmp, label %if.end573, label %lor.lhs.false554

lor.lhs.false554:                                 ; preds = %cond.end
  %227 = load i8* %cond, align 1, !tbaa !1
  %tobool556 = icmp eq i8 %227, 0
  br i1 %tobool556, label %if.then557, label %if.then578

if.then557:                                       ; preds = %lor.lhs.false554
  %call558 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([21 x i8]* @Perl_pp_goto.must_have_label, i64 0, i64 0)) #7
  br label %cleanup

if.else561:                                       ; preds = %entry
  %and564 = and i32 %conv2, 128
  %tobool565 = icmp eq i32 %and564, 0
  br i1 %tobool565, label %if.else571, label %if.then566

if.then566:                                       ; preds = %if.else561
  br i1 %cmp, label %if.then765, label %if.then568

if.then568:                                       ; preds = %if.then566
  %call569 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([21 x i8]* @Perl_pp_goto.must_have_label, i64 0, i64 0)) #7
  br label %cleanup

if.else571:                                       ; preds = %if.else561
  %op_pv = getelementptr inbounds %struct.op* %2, i64 1
  %228 = bitcast %struct.op* %op_pv to i8**
  %229 = load i8** %228, align 8, !tbaa !0
  br label %if.end573

if.end573:                                        ; preds = %if.else571, %cond.end
  %label.0 = phi i8* [ %cond, %cond.end ], [ %229, %if.else571 ]
  %sp.3 = phi %struct.sv** [ %incdec.ptr, %cond.end ], [ %0, %if.else571 ]
  %tobool574 = icmp eq i8* %label.0, null
  br i1 %tobool574, label %if.end763, label %land.lhs.true575

land.lhs.true575:                                 ; preds = %if.end573
  %.pre1048 = load i8* %label.0, align 1, !tbaa !1
  %tobool577 = icmp eq i8 %.pre1048, 0
  br i1 %tobool577, label %if.end763, label %if.then578

if.then578:                                       ; preds = %lor.lhs.false554, %land.lhs.true575
  %label.09681054 = phi i8* [ %label.0, %land.lhs.true575 ], [ %cond, %lor.lhs.false554 ]
  %sp.39691053 = phi %struct.sv** [ %sp.3, %land.lhs.true575 ], [ %incdec.ptr, %lor.lhs.false554 ]
  store %struct.op* null, %struct.op** @PL_lastgotoprobe, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 0
  store %struct.op* null, %struct.op** %arraydecay, align 16, !tbaa !0
  %230 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix579 = getelementptr inbounds %struct.stackinfo* %230, i64 0, i32 2
  %231 = load i32* %si_cxix579, align 4, !tbaa !3
  %cmp581988 = icmp sgt i32 %231, -1
  br i1 %cmp581988, label %for.body583.lr.ph, label %if.then657

for.body583.lr.ph:                                ; preds = %if.then578
  %add.ptr647 = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 64
  %232 = sext i32 %231 to i64
  br label %for.body583

for.body583:                                      ; preds = %for.inc653.for.body583_crit_edge, %for.body583.lr.ph
  %233 = phi %struct.stackinfo* [ %230, %for.body583.lr.ph ], [ %.pre1049, %for.inc653.for.body583_crit_edge ]
  %indvars.iv1021 = phi i64 [ %232, %for.body583.lr.ph ], [ %indvars.iv.next1022, %for.inc653.for.body583_crit_edge ]
  %last_eval_cx.0993 = phi %struct.context* [ null, %for.body583.lr.ph ], [ %last_eval_cx.2, %for.inc653.for.body583_crit_edge ]
  %in_block.0992 = phi i8 [ 0, %for.body583.lr.ph ], [ %in_block.2, %for.inc653.for.body583_crit_edge ]
  %leaving_eval.0991 = phi i8 [ 0, %for.body583.lr.ph ], [ %leaving_eval.3, %for.inc653.for.body583_crit_edge ]
  %ix.0989 = phi i32 [ %231, %for.body583.lr.ph ], [ %dec654, %for.inc653.for.body583_crit_edge ]
  %si_cxstack585 = getelementptr inbounds %struct.stackinfo* %233, i64 0, i32 1
  %234 = load %struct.context** %si_cxstack585, align 8, !tbaa !0
  %arrayidx586 = getelementptr inbounds %struct.context* %234, i64 %indvars.iv1021
  %cx_type587 = getelementptr inbounds %struct.context* %arrayidx586, i64 0, i32 0
  %235 = load i32* %cx_type587, align 4, !tbaa !3
  %and588 = and i32 %235, 255
  switch i32 %and588, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb605
    i32 4, label %for.inc653
    i32 5, label %sw.bb610
    i32 1, label %sw.bb619
    i32 6, label %sw.bb637
    i32 0, label %sw.bb637
  ]

sw.bb:                                            ; preds = %for.body583
  %and590 = and i32 %235, 514
  %cmp591 = icmp eq i32 %and590, 514
  br i1 %cmp591, label %sw.bb605, label %if.then593

if.then593:                                       ; preds = %sw.bb
  %tobool594 = icmp eq %struct.context* %last_eval_cx.0993, null
  %236 = getelementptr inbounds %struct.context* %last_eval_cx.0993, i64 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %cond603.in = select i1 %tobool594, %struct.op** @PL_eval_root, %struct.op** %236
  br label %sw.epilog

sw.bb605:                                         ; preds = %sw.bb, %for.body583
  %leaving_eval.1 = phi i8 [ %leaving_eval.0991, %for.body583 ], [ 1, %sw.bb ]
  %blku_oldcop608 = getelementptr inbounds %struct.context* %234, i64 %indvars.iv1021, i32 1, i32 0, i32 1
  %237 = load %struct.cop** %blku_oldcop608, align 8, !tbaa !0
  %op_sibling = getelementptr inbounds %struct.cop* %237, i64 0, i32 1
  br label %sw.epilog

sw.bb610:                                         ; preds = %for.body583
  %238 = trunc i64 %indvars.iv1021 to i32
  %tobool611 = icmp eq i32 %238, 0
  br i1 %tobool611, label %sw.epilog, label %if.then612

if.then612:                                       ; preds = %sw.bb610
  %blku_oldcop615 = getelementptr inbounds %struct.context* %234, i64 %indvars.iv1021, i32 1, i32 0, i32 1
  %239 = load %struct.cop** %blku_oldcop615, align 8, !tbaa !0
  %op_sibling616 = getelementptr inbounds %struct.cop* %239, i64 0, i32 1
  br label %sw.epilog

sw.bb619:                                         ; preds = %for.body583
  %blk_u622 = getelementptr inbounds %struct.context* %234, i64 %indvars.iv1021, i32 1, i32 0, i32 7
  %cv624 = bitcast %union.anon.1* %blk_u622 to %struct.cv**
  %240 = load %struct.cv** %cv624, align 8, !tbaa !0
  %sv_any625 = getelementptr inbounds %struct.cv* %240, i64 0, i32 0
  %241 = load %struct.xpvcv** %sv_any625, align 8, !tbaa !0
  %xcv_depth626 = getelementptr inbounds %struct.xpvcv* %241, i64 0, i32 14
  %242 = load i64* %xcv_depth626, align 8, !tbaa !4
  %tobool627 = icmp eq i64 %242, 0
  br i1 %tobool627, label %sw.bb637, label %if.then628

if.then628:                                       ; preds = %sw.bb619
  %xcv_root635 = getelementptr inbounds %struct.xpvcv* %241, i64 0, i32 9
  br label %sw.epilog

sw.bb637:                                         ; preds = %sw.bb619, %for.body583, %for.body583
  %call638 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([35 x i8]* @.str43, i64 0, i64 0)) #7
  br label %cleanup

sw.default:                                       ; preds = %for.body583
  %243 = trunc i64 %indvars.iv1021 to i32
  %tobool639 = icmp eq i32 %243, 0
  br i1 %tobool639, label %sw.epilog, label %if.then640

if.then640:                                       ; preds = %sw.default
  %call641 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([12 x i8]* @.str44, i64 0, i64 0)) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default, %sw.bb610, %if.then593, %if.then612, %if.then628, %sw.bb605
  %gotoprobe.0.in = phi %struct.op** [ %xcv_root635, %if.then628 ], [ %op_sibling616, %if.then612 ], [ %op_sibling, %sw.bb605 ], [ %cond603.in, %if.then593 ], [ @PL_main_root, %sw.bb610 ], [ @PL_main_root, %sw.default ]
  %leaving_eval.2 = phi i8 [ %leaving_eval.0991, %if.then628 ], [ %leaving_eval.0991, %if.then612 ], [ %leaving_eval.1, %sw.bb605 ], [ 1, %if.then593 ], [ %leaving_eval.0991, %sw.bb610 ], [ %leaving_eval.0991, %sw.default ]
  %in_block.1 = phi i8 [ %in_block.0992, %if.then628 ], [ 1, %if.then612 ], [ %in_block.0992, %sw.bb605 ], [ %in_block.0992, %if.then593 ], [ %in_block.0992, %sw.bb610 ], [ %in_block.0992, %sw.default ]
  %last_eval_cx.1 = phi %struct.context* [ %last_eval_cx.0993, %if.then628 ], [ %last_eval_cx.0993, %if.then612 ], [ %last_eval_cx.0993, %sw.bb605 ], [ %arrayidx586, %if.then593 ], [ %last_eval_cx.0993, %sw.bb610 ], [ %last_eval_cx.0993, %sw.default ]
  %gotoprobe.0 = load %struct.op** %gotoprobe.0.in, align 8
  %tobool643 = icmp eq %struct.op* %gotoprobe.0, null
  br i1 %tobool643, label %if.end652, label %if.then644

if.then644:                                       ; preds = %sw.epilog
  %call648 = call fastcc %struct.op* @S_dofindlabel(%struct.op* %gotoprobe.0, i8* %label.09681054, %struct.op** %arraydecay, %struct.op** %add.ptr647) #8
  %tobool649 = icmp eq %struct.op* %call648, null
  br i1 %tobool649, label %if.end652, label %if.end659

if.end652:                                        ; preds = %if.then644, %sw.epilog
  store %struct.op* %gotoprobe.0, %struct.op** @PL_lastgotoprobe, align 8, !tbaa !0
  br label %for.inc653

for.inc653:                                       ; preds = %for.body583, %if.end652
  %leaving_eval.3 = phi i8 [ %leaving_eval.2, %if.end652 ], [ %leaving_eval.0991, %for.body583 ]
  %in_block.2 = phi i8 [ %in_block.1, %if.end652 ], [ %in_block.0992, %for.body583 ]
  %last_eval_cx.2 = phi %struct.context* [ %last_eval_cx.1, %if.end652 ], [ %last_eval_cx.0993, %for.body583 ]
  %244 = trunc i64 %indvars.iv1021 to i32
  %cmp581 = icmp sgt i32 %244, 0
  br i1 %cmp581, label %for.inc653.for.body583_crit_edge, label %if.then657

for.inc653.for.body583_crit_edge:                 ; preds = %for.inc653
  %dec654 = add nsw i32 %ix.0989, -1
  %indvars.iv.next1022 = add i64 %indvars.iv1021, -1
  %.pre1049 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %for.body583

if.then657:                                       ; preds = %for.inc653, %if.then578
  %call658 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([20 x i8]* @.str45, i64 0, i64 0), i8* %label.09681054) #7
  br label %cleanup

if.end659:                                        ; preds = %if.then644
  %tobool661 = icmp eq i8 %leaving_eval.2, 0
  br i1 %tobool661, label %if.end686, label %land.lhs.true662

land.lhs.true662:                                 ; preds = %if.end659
  %245 = load %struct.op** %arraydecay, align 16, !tbaa !0
  %tobool664 = icmp eq %struct.op* %245, null
  br i1 %tobool664, label %if.end686, label %land.lhs.true665

land.lhs.true665:                                 ; preds = %land.lhs.true662
  %arrayidx666 = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 1
  %246 = load %struct.op** %arrayidx666, align 8, !tbaa !0
  %tobool667 = icmp eq %struct.op* %246, null
  br i1 %tobool667, label %if.end686, label %for.body673

for.cond669:                                      ; preds = %for.body673
  %arrayidx671 = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 %indvars.iv.next1017
  %247 = load %struct.op** %arrayidx671, align 8, !tbaa !0
  %tobool672 = icmp eq %struct.op* %247, null
  br i1 %tobool672, label %if.end686, label %for.body673

for.body673:                                      ; preds = %land.lhs.true665, %for.cond669
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %for.cond669 ], [ 1, %land.lhs.true665 ]
  %248 = phi %struct.op* [ %247, %for.cond669 ], [ %246, %land.lhs.true665 ]
  %op_type676 = getelementptr inbounds %struct.op* %248, i64 0, i32 4
  %249 = load i16* %op_type676, align 2, !tbaa !6
  %cmp678 = icmp eq i16 %249, 180
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  br i1 %cmp678, label %if.then680, label %for.cond669

if.then680:                                       ; preds = %for.body673
  %call681 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([47 x i8]* @.str46, i64 0, i64 0)) #7
  br label %cleanup

if.end686:                                        ; preds = %for.cond669, %land.lhs.true665, %land.lhs.true662, %if.end659
  %250 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix687 = getelementptr inbounds %struct.stackinfo* %250, i64 0, i32 2
  %251 = load i32* %si_cxix687, align 4, !tbaa !3
  %cmp688 = icmp slt i32 %ix.0989, %251
  br i1 %cmp688, label %if.then690, label %if.end725

if.then690:                                       ; preds = %if.end686
  %cmp692 = icmp slt i32 %ix.0989, 0
  %.ix.0 = select i1 %cmp692, i32 0, i32 %ix.0989
  call void @Perl_dounwind(i32 %.ix.0) #8
  %252 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix696 = getelementptr inbounds %struct.stackinfo* %252, i64 0, i32 2
  %253 = load i32* %si_cxix696, align 4, !tbaa !3
  %idxprom697 = sext i32 %253 to i64
  %si_cxstack698 = getelementptr inbounds %struct.stackinfo* %252, i64 0, i32 1
  %254 = load %struct.context** %si_cxstack698, align 8, !tbaa !0
  %255 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp702 = getelementptr inbounds %struct.context* %254, i64 %idxprom697, i32 1, i32 0, i32 0
  %256 = load i32* %blku_oldsp702, align 4, !tbaa !3
  %idx.ext703 = sext i32 %256 to i64
  %add.ptr704 = getelementptr inbounds %struct.sv** %255, i64 %idx.ext703
  store %struct.sv** %add.ptr704, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %257 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp707 = getelementptr inbounds %struct.context* %254, i64 %idxprom697, i32 1, i32 0, i32 3
  %258 = load i32* %blku_oldmarksp707, align 4, !tbaa !3
  %idx.ext708 = sext i32 %258 to i64
  %add.ptr709 = getelementptr inbounds i32* %257, i64 %idx.ext708
  store i32* %add.ptr709, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp712 = getelementptr inbounds %struct.context* %254, i64 %idxprom697, i32 1, i32 0, i32 4
  %259 = load i32* %blku_oldscopesp712, align 4, !tbaa !3
  store i32 %259, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp715 = getelementptr inbounds %struct.context* %254, i64 %idxprom697, i32 1, i32 0, i32 2
  %260 = load i32* %blku_oldretsp715, align 4, !tbaa !3
  store i32 %260, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm718 = getelementptr inbounds %struct.context* %254, i64 %idxprom697, i32 1, i32 0, i32 5
  %261 = load %struct.pmop** %blku_oldpm718, align 8, !tbaa !0
  store %struct.pmop* %261, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %idxprom719 = sext i32 %259 to i64
  %262 = load i32** @PL_scopestack, align 8, !tbaa !0
  %arrayidx720 = getelementptr inbounds i32* %262, i64 %idxprom719
  %263 = load i32* %arrayidx720, align 4, !tbaa !3
  %264 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp721 = icmp sgt i32 %264, %263
  br i1 %cmp721, label %if.then723, label %if.end725

if.then723:                                       ; preds = %if.then690
  call void @Perl_leave_scope(i32 %263) #7
  br label %if.end725

if.end725:                                        ; preds = %if.then690, %if.end686, %if.then723
  %265 = load %struct.op** %arraydecay, align 16, !tbaa !0
  %tobool727 = icmp eq %struct.op* %265, null
  br i1 %tobool727, label %if.end763, label %land.lhs.true728

land.lhs.true728:                                 ; preds = %if.end725
  %arrayidx729 = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 1
  %266 = load %struct.op** %arrayidx729, align 8, !tbaa !0
  %tobool730 = icmp eq %struct.op* %266, null
  br i1 %tobool730, label %if.end763, label %if.then731

if.then731:                                       ; preds = %land.lhs.true728
  %267 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type733 = getelementptr inbounds %struct.op* %266, i64 0, i32 4
  %268 = load i16* %op_type733, align 2, !tbaa !6
  %cmp735 = icmp eq i16 %268, 177
  br i1 %cmp735, label %for.cond743.preheader, label %for.body747

for.cond743.preheader:                            ; preds = %if.then731
  %tobool739 = icmp ne i8 %in_block.1, 0
  %phitmp = select i1 %tobool739, i32 2, i32 1
  %idxprom7449781015.phi.trans.insert = zext i32 %phitmp to i64
  %arrayidx745979.phi.trans.insert = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 %idxprom7449781015.phi.trans.insert
  %.pre = load %struct.op** %arrayidx745979.phi.trans.insert, align 8, !tbaa !0
  %phitmp10501051 = zext i32 %phitmp to i64
  %tobool746980 = icmp eq %struct.op* %.pre, null
  br i1 %tobool746980, label %for.end761, label %for.body747

for.body747:                                      ; preds = %if.then731, %for.cond743.preheader, %if.end756
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end756 ], [ %phitmp10501051, %for.cond743.preheader ], [ 1, %if.then731 ]
  %269 = phi %struct.op* [ %272, %if.end756 ], [ %.pre, %for.cond743.preheader ], [ %266, %if.then731 ]
  store %struct.op* %269, %struct.op** @PL_op, align 8, !tbaa !0
  %op_type750 = getelementptr inbounds %struct.op* %269, i64 0, i32 4
  %270 = load i16* %op_type750, align 2, !tbaa !6
  %cmp752 = icmp eq i16 %270, 180
  br i1 %cmp752, label %if.then754, label %if.end756

if.then754:                                       ; preds = %for.body747
  %call755 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([47 x i8]* @.str46, i64 0, i64 0)) #7
  br label %cleanup

if.end756:                                        ; preds = %for.body747
  %op_ppaddr = getelementptr inbounds %struct.op* %269, i64 0, i32 2
  %op_ppaddr757951 = load {}** %op_ppaddr, align 8
  %271 = bitcast {}* %op_ppaddr757951 to %struct.op* ()*
  %call758 = call %struct.op* %271() #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx745 = getelementptr inbounds [64 x %struct.op*]* %enterops, i64 0, i64 %indvars.iv.next
  %272 = load %struct.op** %arrayidx745, align 8, !tbaa !0
  %tobool746 = icmp eq %struct.op* %272, null
  br i1 %tobool746, label %for.end761, label %for.body747

for.end761:                                       ; preds = %if.end756, %for.cond743.preheader
  store %struct.op* %267, %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end763

if.end763:                                        ; preds = %land.lhs.true728, %if.end725, %land.lhs.true575, %if.end573, %for.end761
  %sp.3965 = phi %struct.sv** [ %sp.39691053, %for.end761 ], [ %sp.39691053, %land.lhs.true728 ], [ %sp.39691053, %if.end725 ], [ %sp.3, %land.lhs.true575 ], [ %sp.3, %if.end573 ]
  %retop.4 = phi %struct.op* [ %call648, %for.end761 ], [ %call648, %land.lhs.true728 ], [ %call648, %if.end725 ], [ null, %land.lhs.true575 ], [ null, %if.end573 ]
  br i1 %cmp, label %if.then765, label %if.end766

if.then765:                                       ; preds = %if.then566, %if.end763
  %retop.4976 = phi %struct.op* [ %retop.4, %if.end763 ], [ null, %if.then566 ]
  %sp.3965975 = phi %struct.sv** [ %sp.3965, %if.end763 ], [ %0, %if.then566 ]
  store %struct.op* %retop.4976, %struct.op** @PL_restartop, align 8, !tbaa !0
  store i8 1, i8* @PL_do_undump, align 1, !tbaa !1
  call void @Perl_my_unexec() #7
  store %struct.op* null, %struct.op** @PL_restartop, align 8, !tbaa !0
  store i8 0, i8* @PL_do_undump, align 1, !tbaa !1
  br label %if.end766

if.end766:                                        ; preds = %if.then765, %if.end763
  %retop.4977 = phi %struct.op* [ %retop.4976, %if.then765 ], [ %retop.4, %if.end763 ]
  %sp.3965974 = phi %struct.sv** [ %sp.3965975, %if.then765 ], [ %sp.3965, %if.end763 ]
  store %struct.sv** %sp.3965974, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.end766, %if.then754, %if.then680, %if.then657, %if.then640, %sw.bb637, %if.then568, %if.then557, %if.end542, %if.end227, %if.then78, %if.then56, %if.end44, %if.end41
  %retval.0 = phi %struct.op* [ %call57, %if.then56 ], [ %call79, %if.then78 ], [ %call263, %if.end227 ], [ %222, %if.end542 ], [ %call43, %if.end41 ], [ %call45, %if.end44 ], [ %call641, %if.then640 ], [ %call681, %if.then680 ], [ %call755, %if.then754 ], [ %retop.4977, %if.end766 ], [ %call658, %if.then657 ], [ %call638, %sw.bb637 ], [ %call558, %if.then557 ], [ %call569, %if.then568 ]
  call void @llvm.lifetime.end(i64 512, i8* %1) #4
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_autoload4(%struct.hv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare void @Perl_sub_crush_depth(%struct.cv*) #1

; Function Attrs: optsize
declare void @Perl_pad_push(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_save_iv(i64*) #1

; Function Attrs: optsize
declare void @Perl_save_item(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_get_cv(i8*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.op* @S_dofindlabel(%struct.op* nocapture %o, i8* nocapture %label, %struct.op** %opstack, %struct.op** %oplimit) #0 {
entry:
  %cmp = icmp ult %struct.op** %opstack, %oplimit
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @S_dofindlabel.too_deep, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %op_type = getelementptr inbounds %struct.op* %o, i64 0, i32 4
  %0 = load i16* %op_type, align 2, !tbaa !6
  switch i16 %0, label %if.end27 [
    i16 178, label %if.then22
    i16 179, label %if.then22
    i16 183, label %if.then22
    i16 167, label %if.then22
    i16 314, label %if.then22
  ]

if.then22:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %1 = getelementptr inbounds %struct.op* %o, i64 1, i32 0
  %2 = load %struct.op** %1, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.op** %opstack, i64 1
  store %struct.op* %2, %struct.op** %opstack, align 8, !tbaa !0
  %cmp23 = icmp ult %struct.op** %incdec.ptr, %oplimit
  br i1 %cmp23, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.then22
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @S_dofindlabel.too_deep, i64 0, i64 0)) #7
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then22, %if.then25
  %ops.0 = phi %struct.op** [ %incdec.ptr, %if.then25 ], [ %incdec.ptr, %if.then22 ], [ %opstack, %if.end ]
  store %struct.op* null, %struct.op** %ops.0, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %o, i64 0, i32 6
  %3 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %3, 4
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.end93, label %if.then29

if.then29:                                        ; preds = %if.end27
  %4 = getelementptr inbounds %struct.op* %o, i64 1, i32 0
  %kid.0144 = load %struct.op** %4, align 8
  %tobool31145 = icmp eq %struct.op* %kid.0144, null
  br i1 %tobool31145, label %if.end93, label %for.body

for.cond48.preheader:                             ; preds = %for.inc
  br i1 %tobool31145, label %if.end93, label %for.body50

for.body:                                         ; preds = %if.then29, %for.inc
  %kid.0146 = phi %struct.op* [ %kid.0, %for.inc ], [ %kid.0144, %if.then29 ]
  %op_type32 = getelementptr inbounds %struct.op* %kid.0146, i64 0, i32 4
  %5 = load i16* %op_type32, align 2, !tbaa !6
  %.off = add i16 %5, -174
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cop_label = getelementptr inbounds %struct.op* %kid.0146, i64 1
  %6 = bitcast %struct.op* %cop_label to i8**
  %7 = load i8** %6, align 8, !tbaa !0
  %tobool41 = icmp eq i8* %7, null
  br i1 %tobool41, label %for.inc, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true
  %call = tail call i32 @strcmp(i8* %7, i8* %label) #7
  %tobool44 = icmp eq i32 %call, 0
  br i1 %tobool44, label %return, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true42, %land.lhs.true
  %op_sibling = getelementptr inbounds %struct.op* %kid.0146, i64 0, i32 1
  %kid.0 = load %struct.op** %op_sibling, align 8
  %tobool31 = icmp eq %struct.op* %kid.0, null
  br i1 %tobool31, label %for.cond48.preheader, label %for.body

for.body50:                                       ; preds = %for.inc90, %for.cond48.preheader
  %kid.1141 = phi %struct.op* [ %kid.0144, %for.cond48.preheader ], [ %kid.1, %for.inc90 ]
  %ops.1140 = phi %struct.op** [ %ops.0, %for.cond48.preheader ], [ %ops.3, %for.inc90 ]
  %8 = load %struct.op** @PL_lastgotoprobe, align 8, !tbaa !0
  %cmp51 = icmp eq %struct.op* %kid.1141, %8
  br i1 %cmp51, label %for.inc90, label %if.end54

if.end54:                                         ; preds = %for.body50
  %op_type55 = getelementptr inbounds %struct.op* %kid.1141, i64 0, i32 4
  %9 = load i16* %op_type55, align 2, !tbaa !6
  %.off133 = add i16 %9, -174
  %switch134 = icmp ult i16 %.off133, 2
  br i1 %switch134, label %if.then64, label %if.end85

if.then64:                                        ; preds = %if.end54
  %cmp65 = icmp eq %struct.op** %ops.1140, %opstack
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.then64
  %incdec.ptr68 = getelementptr inbounds %struct.op** %opstack, i64 1
  store %struct.op* %kid.1141, %struct.op** %opstack, align 8, !tbaa !0
  br label %if.end85

if.else:                                          ; preds = %if.then64
  %arrayidx = getelementptr inbounds %struct.op** %ops.1140, i64 -1
  %10 = load %struct.op** %arrayidx, align 8, !tbaa !0
  %op_type69 = getelementptr inbounds %struct.op* %10, i64 0, i32 4
  %11 = load i16* %op_type69, align 2, !tbaa !6
  %.off135 = add i16 %11, -174
  %switch136 = icmp ult i16 %.off135, 2
  br i1 %switch136, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.else
  store %struct.op* %kid.1141, %struct.op** %arrayidx, align 8, !tbaa !0
  br label %if.end85

if.else81:                                        ; preds = %if.else
  %incdec.ptr82 = getelementptr inbounds %struct.op** %ops.1140, i64 1
  store %struct.op* %kid.1141, %struct.op** %ops.1140, align 8, !tbaa !0
  br label %if.end85

if.end85:                                         ; preds = %if.end54, %if.then67, %if.else81, %if.then79
  %ops.2 = phi %struct.op** [ %incdec.ptr68, %if.then67 ], [ %ops.1140, %if.then79 ], [ %incdec.ptr82, %if.else81 ], [ %ops.1140, %if.end54 ]
  %call86 = tail call fastcc %struct.op* @S_dofindlabel(%struct.op* %kid.1141, i8* %label, %struct.op** %ops.2, %struct.op** %oplimit) #8
  %tobool87 = icmp eq %struct.op* %call86, null
  br i1 %tobool87, label %for.inc90, label %return

for.inc90:                                        ; preds = %if.end85, %for.body50
  %ops.3 = phi %struct.op** [ %ops.1140, %for.body50 ], [ %ops.2, %if.end85 ]
  %op_sibling91 = getelementptr inbounds %struct.op* %kid.1141, i64 0, i32 1
  %kid.1 = load %struct.op** %op_sibling91, align 8
  %tobool49 = icmp eq %struct.op* %kid.1, null
  br i1 %tobool49, label %if.end93, label %for.body50

if.end93:                                         ; preds = %if.then29, %for.cond48.preheader, %for.inc90, %if.end27
  %ops.4 = phi %struct.op** [ %ops.0, %if.end27 ], [ %ops.0, %for.cond48.preheader ], [ %ops.3, %for.inc90 ], [ %ops.0, %if.then29 ]
  store %struct.op* null, %struct.op** %ops.4, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %land.lhs.true42, %if.end85, %if.end93
  %retval.0 = phi %struct.op* [ null, %if.end93 ], [ %call86, %if.end85 ], [ %kid.0146, %land.lhs.true42 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_my_unexec() #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_exit() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %2, 15
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and2 = and i32 %4, 65536
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %3) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.end ], [ %0, %entry ]
  %anum.0 = phi i32 [ %conv3, %cond.end ], [ 0, %entry ]
  %8 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %or = or i8 %8, 1
  store i8 %or, i8* @PL_exit_flags, align 1, !tbaa !1
  tail call void @Perl_my_exit(i32 %anum.0) #7
  %incdec.ptr6 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr6, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr6, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %10
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_sv_compile_2op(%struct.sv* %sv, %struct.op** %startop, i8* %code, %struct.av** nocapture %padp) #0 {
entry:
  %dummy = alloca %struct.op, align 8
  %tbuf = alloca [42 x i8], align 16
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = bitcast %struct.op* %dummy to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #4
  %2 = getelementptr inbounds [42 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 42, i8* %2) #4
  call void @Perl_push_scope() #7
  call void @Perl_lex_start(%struct.sv* %sv) #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %3 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %3, i32* @PL_tmps_floor, align 4, !tbaa !3
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp = icmp eq %struct.cop* %4, @PL_compiling
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.hv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 9) to %struct.sv**)) #7
  %5 = load %struct.hv** @PL_curstash, align 8, !tbaa !0
  store %struct.hv* %5, %struct.hv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 9), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  %and = and i32 %6, 256
  %tobool1 = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.else, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.end
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line = getelementptr inbounds %struct.cop* %7, i64 0, i32 13
  %8 = load i32* %cop_line, align 4, !tbaa !3
  %tobool3 = icmp eq i32 %8, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %land.lhs.true2
  %call = call %struct.sv* @Perl_sv_newmortal() #7
  %9 = load i32* @PL_evalseq, align 4, !tbaa !3
  %inc = add i32 %9, 1
  store i32 %inc, i32* @PL_evalseq, align 4, !tbaa !3
  %conv = zext i32 %inc to i64
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv = getelementptr inbounds %struct.cop* %10, i64 0, i32 10
  %11 = load %struct.gv** %cop_filegv, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.gv* %11, null
  br i1 %tobool6, label %cond.end20, label %cond.true

cond.true:                                        ; preds = %if.then4
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv7 = getelementptr inbounds %struct.cop* %12, i64 0, i32 10
  %13 = load %struct.gv** %cop_filegv7, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %13, i64 0, i32 0
  %14 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %14, i64 0, i32 7
  %15 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %15, i64 0, i32 0
  %16 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool8 = icmp eq %struct.sv* %16, null
  br i1 %tobool8, label %cond.end20, label %cond.true9

cond.true9:                                       ; preds = %cond.true
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv13 = getelementptr inbounds %struct.cop* %18, i64 0, i32 10
  %19 = load %struct.gv** %cop_filegv13, align 8, !tbaa !0
  %sv_any14 = getelementptr inbounds %struct.gv* %19, i64 0, i32 0
  %20 = load %struct.xpvgv** %sv_any14, align 8, !tbaa !0
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv* %20, i64 0, i32 7
  %21 = load %struct.gp** %xgv_gp15, align 8, !tbaa !0
  %gp_sv16 = getelementptr inbounds %struct.gp* %21, i64 0, i32 0
  %22 = load %struct.sv** %gp_sv16, align 8, !tbaa !0
  %sv_any18 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %23 = load i8** %sv_any18, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %23 to i8**
  %24 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true, %if.then4, %cond.true9
  %cond21 = phi i8* [ %24, %cond.true9 ], [ null, %if.then4 ], [ null, %cond.true ]
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line22 = getelementptr inbounds %struct.cop* %25, i64 0, i32 13
  %26 = load i32* %cop_line22, align 4, !tbaa !3
  %conv23 = zext i32 %26 to i64
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call, i8* getelementptr inbounds ([26 x i8]* @.str47, i64 0, i64 0), i8* %code, i64 %conv, i8* %cond21, i64 %conv23) #7
  %sv_any24 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %27 = load i8** %sv_any24, align 8, !tbaa !0
  %xpv_pv25 = bitcast i8* %27 to i8**
  %28 = load i8** %xpv_pv25, align 8, !tbaa !0
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true2, %if.end
  %29 = load i32* @PL_evalseq, align 4, !tbaa !3
  %inc26 = add i32 %29, 1
  store i32 %inc26, i32* @PL_evalseq, align 4, !tbaa !3
  %conv27 = zext i32 %inc26 to i64
  %call28 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([19 x i8]* @.str48, i64 0, i64 0), i8* %code, i64 %conv27) #7
  br label %if.end29

if.end29:                                         ; preds = %if.else, %cond.end20
  %tmpbuf.0 = phi i8* [ %28, %cond.end20 ], [ %2, %if.else ]
  call void @Perl_save_generic_svref(%struct.sv** bitcast (%struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10) to %struct.sv**)) #7
  %add.ptr = getelementptr inbounds i8* %tmpbuf.0, i64 2
  %call30 = call %struct.gv* @Perl_gv_fetchfile(i8* %add.ptr) #7
  %30 = bitcast %struct.gv* %call30 to %struct.sv*
  store %struct.sv* %30, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.gv* %call30, null
  br i1 %tobool31, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end29
  %31 = getelementptr inbounds %struct.gv* %call30, i64 0, i32 1
  %32 = load i32* %31, align 4, !tbaa !3
  %inc32 = add i32 %32, 1
  store i32 %inc32, i32* %31, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end29, %land.rhs
  store %struct.gv* %call30, %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  call void @Perl_save_I32(i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13)) #7
  store i32 1, i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13), align 8, !tbaa !3
  %call34 = call i8* @Perl_savepv(i8* %tmpbuf.0) #7
  %33 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  %call35 = call i64 @strlen(i8* %call34) #7
  %conv36 = trunc i64 %call35 to i32
  call void @Perl_save_delete(%struct.hv* %33, i8* %call34, i32 %conv36) #7
  %34 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add = add nsw i32 %34, 3
  %35 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp37 = icmp sgt i32 %add, %35
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.end
  call void @Perl_savestack_grow() #7
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.end
  %36 = load i32* @PL_hints, align 4, !tbaa !3
  %and41 = and i32 %36, 131072
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.end54, label %if.then43

if.then43:                                        ; preds = %if.end40
  %37 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any44 = getelementptr inbounds %struct.gv* %37, i64 0, i32 0
  %38 = load %struct.xpvgv** %sv_any44, align 8, !tbaa !0
  %xgv_gp45 = getelementptr inbounds %struct.xpvgv* %38, i64 0, i32 7
  %39 = load %struct.gp** %xgv_gp45, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %39, i64 0, i32 5
  %40 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %41 = bitcast %struct.hv* %40 to i8*
  %42 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc46 = add nsw i32 %42, 1
  store i32 %inc46, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom = sext i32 %42 to i64
  %43 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %43, i64 %idxprom, i32 0
  store i8* %41, i8** %any_ptr, align 8, !tbaa !0
  %44 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any47 = getelementptr inbounds %struct.gv* %44, i64 0, i32 0
  %45 = load %struct.xpvgv** %sv_any47, align 8, !tbaa !0
  %xgv_gp48 = getelementptr inbounds %struct.xpvgv* %45, i64 0, i32 7
  %46 = load %struct.gp** %xgv_gp48, align 8, !tbaa !0
  %gp_hv49 = getelementptr inbounds %struct.gp* %46, i64 0, i32 5
  %47 = load %struct.hv** %gp_hv49, align 8, !tbaa !0
  %call50 = call %struct.hv* @Perl_newHVhv(%struct.hv* %47) #7
  %48 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any51 = getelementptr inbounds %struct.gv* %48, i64 0, i32 0
  %49 = load %struct.xpvgv** %sv_any51, align 8, !tbaa !0
  %xgv_gp52 = getelementptr inbounds %struct.xpvgv* %49, i64 0, i32 7
  %50 = load %struct.gp** %xgv_gp52, align 8, !tbaa !0
  %gp_hv53 = getelementptr inbounds %struct.gp* %50, i64 0, i32 5
  store %struct.hv* %call50, %struct.hv** %gp_hv53, align 8, !tbaa !0
  %.pre = load i32* @PL_hints, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.end40, %if.then43
  %51 = phi i32 [ %.pre, %if.then43 ], [ %36, %if.end40 ]
  %52 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc55 = add nsw i32 %52, 1
  store i32 %inc55, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom56 = sext i32 %52 to i64
  %53 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds %union.any* %53, i64 %idxprom56
  %any_i32 = bitcast %union.any* %arrayidx57 to i32*
  store i32 %51, i32* %any_i32, align 4, !tbaa !3
  %54 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc58 = add nsw i32 %54, 1
  store i32 %inc58, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom59 = sext i32 %54 to i64
  %arrayidx60 = getelementptr inbounds %union.any* %53, i64 %idxprom59
  %any_i3261 = bitcast %union.any* %arrayidx60 to i32*
  store i32 27, i32* %any_i3261, align 4, !tbaa !3
  call void @Perl_save_vptr(i8* bitcast (%struct.op** @PL_op to i8*)) #7
  %55 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp62 = icmp ne %struct.cop* %55, @PL_compiling
  br i1 %cmp62, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end54
  %call66 = call %struct.cv* @Perl_find_runcv(i32* null) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end54
  %runcv.0 = phi %struct.cv* [ %call66, %if.then65 ], [ null, %if.end54 ]
  store %struct.op* %dummy, %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %dummy, i64 0, i32 4
  store i16 311, i16* %op_type, align 8, !tbaa !6
  %op_flags = getelementptr inbounds %struct.op* %dummy, i64 0, i32 6
  store i8 0, i8* %op_flags, align 4, !tbaa !1
  %56 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %56, i64 0, i32 2
  %57 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %56, i64 0, i32 3
  %58 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp68 = icmp slt i32 %57, %58
  br i1 %cmp68, label %cond.true70, label %cond.false73

cond.true70:                                      ; preds = %if.end67
  %inc72 = add nsw i32 %57, 1
  store i32 %inc72, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end76

cond.false73:                                     ; preds = %if.end67
  %call74 = call i32 @Perl_cxinc() #7
  %59 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix75 = getelementptr inbounds %struct.stackinfo* %59, i64 0, i32 2
  store i32 %call74, i32* %si_cxix75, align 4, !tbaa !3
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false73, %cond.true70
  %60 = phi i32 [ %call74, %cond.false73 ], [ %inc72, %cond.true70 ]
  %61 = phi %struct.stackinfo* [ %59, %cond.false73 ], [ %56, %cond.true70 ]
  %idxprom79 = sext i32 %60 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %61, i64 0, i32 1
  %62 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp81 = icmp eq %struct.cop* %63, @PL_compiling
  %or = select i1 %cmp81, i32 2, i32 258
  %cx_type = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 0
  store i32 %or, i32* %cx_type, align 4, !tbaa !3
  %64 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %64 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div239 = lshr exact i64 %sub.ptr.sub, 3
  %conv84 = trunc i64 %sub.ptr.div239 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 0
  store i32 %conv84, i32* %blku_oldsp, align 4, !tbaa !3
  %65 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 1
  store %struct.cop* %65, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %66 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %67 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast87 = ptrtoint i32* %66 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i32* %67 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %sub.ptr.div90240 = lshr exact i64 %sub.ptr.sub89, 2
  %conv91 = trunc i64 %sub.ptr.div90240 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 3
  store i32 %conv91, i32* %blku_oldmarksp, align 4, !tbaa !3
  %68 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 4
  store i32 %68, i32* %blku_oldscopesp, align 4, !tbaa !3
  %69 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 2
  store i32 %69, i32* %blku_oldretsp, align 4, !tbaa !3
  %70 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 5
  store %struct.pmop* %70, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 6
  store i8 0, i8* %blku_gimme, align 1, !tbaa !1
  %71 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %blk_u = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  store i32 %71, i32* %old_in_eval, align 4, !tbaa !3
  %72 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type105 = getelementptr inbounds %struct.op* %72, i64 0, i32 4
  %73 = load i16* %op_type105, align 2, !tbaa !6
  %conv106 = zext i16 %73 to i32
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  store i32 %conv106, i32* %old_op_type, align 4, !tbaa !3
  %old_namesv = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 7, i32 0, i32 1
  %74 = bitcast i32* %old_namesv to %struct.sv**
  store %struct.sv* null, %struct.sv** %74, align 8, !tbaa !0
  %75 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %76 = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %75, %struct.op** %76, align 8, !tbaa !0
  %77 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %cur_text = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c = bitcast %struct.sv* %77 to %struct.op*
  store %struct.op* %.c, %struct.op** %cur_text, align 8, !tbaa !0
  %cv = getelementptr inbounds %struct.context* %62, i64 %idxprom79, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* null, %struct.op** %cv, align 8, !tbaa !0
  br i1 %cmp62, label %if.then128, label %if.else130

if.then128:                                       ; preds = %cond.end76
  %78 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_seq = getelementptr inbounds %struct.cop* %78, i64 0, i32 11
  %79 = load i32* %cop_seq, align 4, !tbaa !3
  %call129 = call fastcc %struct.op* @S_doeval(i32 0, %struct.op** %startop, %struct.cv* %runcv.0, i32 %79) #8
  br label %if.end132

if.else130:                                       ; preds = %cond.end76
  %80 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %81 = load i32* @PL_cop_seqmax, align 4, !tbaa !3
  %call131 = call fastcc %struct.op* @S_doeval(i32 0, %struct.op** %startop, %struct.cv* %80, i32 %81) #8
  br label %if.end132

if.end132:                                        ; preds = %if.else130, %if.then128
  %rop.0 = phi %struct.op* [ %call129, %if.then128 ], [ %call131, %if.else130 ]
  %82 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix133 = getelementptr inbounds %struct.stackinfo* %82, i64 0, i32 2
  %83 = load i32* %si_cxix133, align 4, !tbaa !3
  %dec = add nsw i32 %83, -1
  store i32 %dec, i32* %si_cxix133, align 4, !tbaa !3
  %idxprom134 = sext i32 %83 to i64
  %si_cxstack135 = getelementptr inbounds %struct.stackinfo* %82, i64 0, i32 1
  %84 = load %struct.context** %si_cxstack135, align 8, !tbaa !0
  %blku_oldcop143 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 1
  %85 = load %struct.cop** %blku_oldcop143, align 8, !tbaa !0
  store volatile %struct.cop* %85, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %86 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp146 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 3
  %87 = load i32* %blku_oldmarksp146, align 4, !tbaa !3
  %idx.ext147 = sext i32 %87 to i64
  %add.ptr148 = getelementptr inbounds i32* %86, i64 %idx.ext147
  store i32* %add.ptr148, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp151 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 4
  %88 = load i32* %blku_oldscopesp151, align 4, !tbaa !3
  store i32 %88, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp154 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 2
  %89 = load i32* %blku_oldretsp154, align 4, !tbaa !3
  store i32 %89, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm157 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 5
  %90 = load %struct.pmop** %blku_oldpm157, align 8, !tbaa !0
  store %struct.pmop* %90, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blk_u164 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 7
  %old_in_eval166 = bitcast %union.anon.1* %blk_u164 to i32*
  %91 = load i32* %old_in_eval166, align 4, !tbaa !3
  store volatile i32 %91, i32* @PL_in_eval, align 4, !tbaa !3
  %92 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 7, i32 0, i32 2
  %93 = load %struct.op** %92, align 8, !tbaa !0
  store %struct.op* %93, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv181 = getelementptr inbounds %struct.context* %84, i64 %idxprom134, i32 1, i32 0, i32 7, i32 0, i32 1
  %94 = bitcast i32* %old_namesv181 to %struct.sv**
  %95 = load %struct.sv** %94, align 8, !tbaa !0
  %tobool182 = icmp eq %struct.sv* %95, null
  br i1 %tobool182, label %if.end190, label %if.then183

if.then183:                                       ; preds = %if.end132
  %call189 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %95) #7
  br label %if.end190

if.end190:                                        ; preds = %if.end132, %if.then183
  %96 = load %struct.op** %startop, align 8, !tbaa !0
  %op_type191 = getelementptr inbounds %struct.op* %96, i64 0, i32 4
  store i16 0, i16* %op_type191, align 2, !tbaa !6
  %97 = load %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*]* @PL_ppaddr, i64 0, i64 0), align 8, !tbaa !0
  %op_ppaddr = getelementptr inbounds %struct.op* %96, i64 0, i32 2
  %.c241 = bitcast %struct.op* ()* %97 to {}*
  store {}* %.c241, {}** %op_ppaddr, align 8, !tbaa !0
  call void @Perl_lex_end() #7
  %98 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %99 = bitcast %struct.av* %98 to %struct.sv*
  store %struct.sv* %99, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool193 = icmp eq %struct.av* %98, null
  br i1 %tobool193, label %land.end198, label %land.rhs194

land.rhs194:                                      ; preds = %if.end190
  %100 = getelementptr inbounds %struct.av* %98, i64 0, i32 1
  %101 = load i32* %100, align 4, !tbaa !3
  %inc196 = add i32 %101, 1
  store i32 %inc196, i32* %100, align 4, !tbaa !3
  br label %land.end198

land.end198:                                      ; preds = %if.end190, %land.rhs194
  store %struct.av* %98, %struct.av** %padp, align 8, !tbaa !0
  call void @Perl_pop_scope() #7
  %102 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp200 = icmp eq %struct.cop* %102, @PL_compiling
  br i1 %cmp200, label %if.then202, label %if.end205

if.then202:                                       ; preds = %land.end198
  %103 = load i32* @PL_hints, align 4, !tbaa !3
  %conv204 = trunc i32 %103 to i8
  store i8 %conv204, i8* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 7), align 1, !tbaa !1
  br label %if.end205

if.end205:                                        ; preds = %if.then202, %land.end198
  call void @llvm.lifetime.end(i64 42, i8* %2) #4
  call void @llvm.lifetime.end(i64 40, i8* %1) #4
  ret %struct.op* %rop.0
}

; Function Attrs: optsize
declare void @Perl_lex_start(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchfile(i8*) #1

; Function Attrs: optsize
declare i8* @Perl_savepv(i8*) #1

; Function Attrs: optsize
declare void @Perl_save_delete(%struct.hv*, i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.hv* @Perl_newHVhv(%struct.hv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.cv* @Perl_find_runcv(i32* %db_seqp) #0 {
entry:
  %tobool = icmp ne i32* %db_seqp, null
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_seq = getelementptr inbounds %struct.cop* %0, i64 0, i32 11
  %1 = load i32* %cop_seq, align 4, !tbaa !3
  store i32 %1, i32* %db_seqp, align 4, !tbaa !3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %si.047 = load %struct.stackinfo** @PL_curstackinfo, align 8
  %tobool148 = icmp eq %struct.stackinfo* %si.047, null
  br i1 %tobool148, label %for.end30, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc29
  %si.049 = phi %struct.stackinfo* [ %si.0, %for.inc29 ], [ %si.047, %for.cond.preheader ]
  %si_cxix = getelementptr inbounds %struct.stackinfo* %si.049, i64 0, i32 2
  %2 = load i32* %si_cxix, align 4, !tbaa !3
  %cmp45 = icmp sgt i32 %2, -1
  br i1 %cmp45, label %for.body3.lr.ph, label %for.inc29

for.body3.lr.ph:                                  ; preds = %for.body
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %si.049, i64 0, i32 1
  %3 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %4 = load %struct.hv** @PL_debstash, align 8, !tbaa !0
  %tobool11 = icmp ne %struct.hv* %4, null
  %or.cond = and i1 %tobool, %tobool11
  %5 = sext i32 %2 to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %5, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %cx_type = getelementptr inbounds %struct.context* %3, i64 %indvars.iv, i32 0
  %6 = load i32* %cx_type, align 4, !tbaa !3
  %and = and i32 %6, 255
  switch i32 %and, label %for.inc [
    i32 1, label %if.then8
    i32 6, label %if.then8
    i32 2, label %land.lhs.true22
  ]

if.then8:                                         ; preds = %for.body3, %for.body3
  %blk_u = getelementptr inbounds %struct.context* %3, i64 %indvars.iv, i32 1, i32 0, i32 7
  %cv9 = bitcast %union.anon.1* %blk_u to %struct.cv**
  %7 = load %struct.cv** %cv9, align 8, !tbaa !0
  br i1 %or.cond, label %land.lhs.true12, label %return

land.lhs.true12:                                  ; preds = %if.then8
  %sv_any = getelementptr inbounds %struct.cv* %7, i64 0, i32 0
  %8 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_stash = getelementptr inbounds %struct.xpvcv* %8, i64 0, i32 7
  %9 = load %struct.hv** %xcv_stash, align 8, !tbaa !0
  %cmp13 = icmp eq %struct.hv* %9, %4
  br i1 %cmp13, label %if.then14, label %return

if.then14:                                        ; preds = %land.lhs.true12
  %blku_oldcop = getelementptr inbounds %struct.context* %3, i64 %indvars.iv, i32 1, i32 0, i32 1
  %10 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %cop_seq17 = getelementptr inbounds %struct.cop* %10, i64 0, i32 11
  %11 = load i32* %cop_seq17, align 4, !tbaa !3
  store i32 %11, i32* %db_seqp, align 4, !tbaa !3
  br label %for.inc

land.lhs.true22:                                  ; preds = %for.body3
  %and24 = and i32 %6, 514
  %cmp25 = icmp eq i32 %and24, 514
  br i1 %cmp25, label %for.inc, label %if.then26

if.then26:                                        ; preds = %land.lhs.true22
  %12 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  br label %return

for.inc:                                          ; preds = %for.body3, %land.lhs.true22, %if.then14
  %indvars.iv.next = add i64 %indvars.iv, -1
  %13 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %for.body3, label %for.inc29

for.inc29:                                        ; preds = %for.inc, %for.body
  %si_prev = getelementptr inbounds %struct.stackinfo* %si.049, i64 0, i32 5
  %si.0 = load %struct.stackinfo** %si_prev, align 8
  %tobool1 = icmp eq %struct.stackinfo* %si.0, null
  br i1 %tobool1, label %for.end30, label %for.body

for.end30:                                        ; preds = %for.inc29, %for.cond.preheader
  %14 = load %struct.cv** @PL_main_cv, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.then8, %land.lhs.true12, %for.end30, %if.then26
  %retval.0 = phi %struct.cv* [ %12, %if.then26 ], [ %14, %for.end30 ], [ %7, %land.lhs.true12 ], [ %7, %if.then8 ]
  ret %struct.cv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.op* @S_doeval(i32 %gimme, %struct.op** %startop, %struct.cv* %outside, i32 %seq) #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %tobool = icmp ne %struct.op* %1, null
  br i1 %tobool, label %land.lhs.true, label %cond.end

land.lhs.true:                                    ; preds = %entry
  %op_type = getelementptr inbounds %struct.op* %1, i64 0, i32 4
  %2 = load i16* %op_type, align 2, !tbaa !6
  %cmp = icmp eq i16 %2, 309
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %3 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %and = and i32 %3, 1
  %or = or i32 %and, 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 1, %land.lhs.true ], [ 1, %entry ]
  store volatile i32 %cond, i32* @PL_in_eval, align 4, !tbaa !3
  %4 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %4, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %5 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp2 = icmp eq i32* %incdec.ptr, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @Perl_markstack_grow() #7
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = phi i32* [ %.pre, %if.then ], [ %incdec.ptr, %cond.end ]
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div354 = lshr exact i64 %sub.ptr.sub, 3
  %conv4 = trunc i64 %sub.ptr.div354 to i32
  store i32 %conv4, i32* %6, align 4, !tbaa !3
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.cv** @PL_compcv to %struct.sv**)) #7
  %call = call %struct.sv* @Perl_newSV(i64 0) #7
  %8 = bitcast %struct.sv* %call to %struct.cv*
  store %struct.cv* %8, %struct.cv** @PL_compcv, align 8, !tbaa !0
  %call5 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 12) #7
  %9 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.cv* %9, i64 0, i32 0
  %10 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 17
  %11 = load i16* %xcv_flags, align 2, !tbaa !6
  %or7 = or i16 %11, 16
  store i16 %or7, i16* %xcv_flags, align 2, !tbaa !6
  %sv_flags = getelementptr inbounds %struct.cv* %9, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !3
  %and9 = and i32 %12, -1048577
  store i32 %and9, i32* %sv_flags, align 4, !tbaa !3
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 2
  %14 = load i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %14 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 1
  %15 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cv = getelementptr inbounds %struct.context* %15, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %.c = bitcast %struct.cv* %9 to %struct.op*
  store %struct.op* %.c, %struct.op** %cv, align 8, !tbaa !0
  %16 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.cv* %16, i64 0, i32 0
  %17 = load %struct.xpvcv** %sv_any10, align 8, !tbaa !0
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv* %17, i64 0, i32 18
  store i32 %seq, i32* %xcv_outside_seq, align 4, !tbaa !3
  %18 = bitcast %struct.cv* %outside to %struct.sv*
  store %struct.sv* %18, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool11 = icmp eq %struct.cv* %outside, null
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %19 = getelementptr inbounds %struct.cv* %outside, i64 0, i32 1
  %20 = load i32* %19, align 4, !tbaa !3
  %inc = add i32 %20, 1
  store i32 %inc, i32* %19, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %21 = load %struct.xpvcv** %sv_any10, align 8, !tbaa !0
  %xcv_outside = getelementptr inbounds %struct.xpvcv* %21, i64 0, i32 16
  store %struct.cv* %outside, %struct.cv** %xcv_outside, align 8, !tbaa !0
  %call14 = call %struct.av* @Perl_pad_new(i32 2) #7
  %22 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any15 = getelementptr inbounds %struct.cv* %22, i64 0, i32 0
  %23 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %23, i64 0, i32 15
  store %struct.av* %call14, %struct.av** %xcv_padlist, align 8, !tbaa !0
  %24 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %25 = bitcast %struct.cv* %24 to %struct.sv*
  call void @Perl_save_mortalizesv(%struct.sv* %25) #7
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash = getelementptr inbounds %struct.cop* %26, i64 0, i32 9
  %27 = load %struct.hv** %cop_stash, align 8, !tbaa !0
  %28 = load %struct.hv** @PL_curstash, align 8, !tbaa !0
  %cmp16 = icmp eq %struct.hv* %27, %28
  br i1 %cmp16, label %if.end20, label %if.then18

if.then18:                                        ; preds = %land.end
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.hv** @PL_curstash to %struct.sv**)) #7
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash19 = getelementptr inbounds %struct.cop* %29, i64 0, i32 9
  %30 = load %struct.hv** %cop_stash19, align 8, !tbaa !0
  store %struct.hv* %30, %struct.hv** @PL_curstash, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.end
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.av** @PL_beginav to %struct.sv**)) #7
  %call21 = call %struct.av* @Perl_newAV() #7
  store %struct.av* %call21, %struct.av** @PL_beginav, align 8, !tbaa !0
  %31 = bitcast %struct.av* %call21 to %struct.sv*
  call void @Perl_save_freesv(%struct.sv* %31) #7
  call void @Perl_save_I32(i32* @PL_error_count) #7
  store %struct.op* null, %struct.op** @PL_eval_root, align 8, !tbaa !0
  store i32 0, i32* @PL_error_count, align 4, !tbaa !3
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %32, i64 0, i32 12
  store i32 0, i32* %cop_arybase, align 4, !tbaa !3
  br i1 %tobool, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %if.end20
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %33 = load i8* %op_flags, align 1, !tbaa !1
  %tobool26 = icmp slt i8 %33, 0
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %land.lhs.true23
  %34 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %or28 = or i32 %34, 4
  store volatile i32 %or28, i32* @PL_in_eval, align 4, !tbaa !3
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true23, %if.end20
  %35 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any29 = getelementptr inbounds %struct.gv* %35, i64 0, i32 0
  %36 = load %struct.xpvgv** %sv_any29, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %36, i64 0, i32 7
  %37 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %37, i64 0, i32 0
  %38 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %38, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  %call31 = call i32 @Perl_yyparse() #7
  %39 = load i32* @PL_error_count, align 4, !tbaa !3
  %40 = or i32 %39, %call31
  %or.cond.not = icmp eq i32 %40, 0
  %41 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %tobool35 = icmp ne %struct.op* %41, null
  %or.cond309 = and i1 %or.cond.not, %tobool35
  br i1 %or.cond309, label %if.end230, label %if.then36

if.then36:                                        ; preds = %if.end30
  store %struct.op* %1, %struct.op** @PL_op, align 8, !tbaa !0
  %tobool37 = icmp eq %struct.op* %41, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then36
  call void @Perl_op_free(%struct.op* %41) #7
  store %struct.op* null, %struct.op** @PL_eval_root, align 8, !tbaa !0
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then38
  %42 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %43 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr40 = getelementptr inbounds i32* %43, i64 -1
  store i32* %incdec.ptr40, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %44 = load i32* %43, align 4, !tbaa !3
  %idx.ext = sext i32 %44 to i64
  %tobool41 = icmp ne %struct.op** %startop, null
  br i1 %tobool41, label %if.end92, label %if.then42

if.then42:                                        ; preds = %if.end39
  %45 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix43 = getelementptr inbounds %struct.stackinfo* %45, i64 0, i32 2
  %46 = load i32* %si_cxix43, align 4, !tbaa !3
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %si_cxix43, align 4, !tbaa !3
  %idxprom44 = sext i32 %46 to i64
  %si_cxstack45 = getelementptr inbounds %struct.stackinfo* %45, i64 0, i32 1
  %47 = load %struct.context** %si_cxstack45, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 1
  %48 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %48, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %49 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 3
  %50 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext55 = sext i32 %50 to i64
  %add.ptr56 = getelementptr inbounds i32* %49, i64 %idx.ext55
  store i32* %add.ptr56, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 4
  %51 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %51, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 2
  %52 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %52, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 5
  %53 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %53, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blk_u68 = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 7
  %blku_eval69 = bitcast %union.anon.1* %blk_u68 to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u68 to i32*
  %54 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %54, i32* @PL_in_eval, align 4, !tbaa !3
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval69, i64 0, i32 1
  %55 = load i32* %old_op_type, align 4, !tbaa !3
  %56 = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 7, i32 0, i32 2
  %57 = load %struct.op** %56, align 8, !tbaa !0
  store %struct.op* %57, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %47, i64 %idxprom44, i32 1, i32 0, i32 7, i32 0, i32 1
  %58 = bitcast i32* %old_namesv to %struct.sv**
  %59 = load %struct.sv** %58, align 8, !tbaa !0
  %tobool82 = icmp eq %struct.sv* %59, null
  br i1 %tobool82, label %if.end90, label %if.then83

if.then83:                                        ; preds = %if.then42
  %call89 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %59) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then42, %if.then83
  %call91 = call %struct.op* @Perl_pop_return() #7
  %phitmp = icmp eq i32 %55, 309
  br label %if.end92

if.end92:                                         ; preds = %if.end90, %if.end39
  %optype.0 = phi i1 [ false, %if.end39 ], [ %phitmp, %if.end90 ]
  call void @Perl_lex_end() #7
  call void @Perl_pop_scope() #7
  %60 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any96 = getelementptr inbounds %struct.gv* %60, i64 0, i32 0
  %61 = load %struct.xpvgv** %sv_any96, align 8, !tbaa !0
  %xgv_gp97 = getelementptr inbounds %struct.xpvgv* %61, i64 0, i32 7
  %62 = load %struct.gp** %xgv_gp97, align 8, !tbaa !0
  %gp_sv98 = getelementptr inbounds %struct.gp* %62, i64 0, i32 0
  %63 = load %struct.sv** %gp_sv98, align 8, !tbaa !0
  store %struct.sv* %63, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags99 = getelementptr inbounds %struct.sv* %63, i64 0, i32 2
  %64 = load i32* %sv_flags99, align 4, !tbaa !3
  %and100 = and i32 %64, 262144
  br i1 %optype.0, label %if.then95, label %if.else117

if.then95:                                        ; preds = %if.end92
  %cmp101 = icmp eq i32 %and100, 0
  br i1 %cmp101, label %cond.false106, label %cond.true103

cond.true103:                                     ; preds = %if.then95
  %sv_any104 = getelementptr inbounds %struct.sv* %63, i64 0, i32 0
  %65 = load i8** %sv_any104, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %65, i64 8
  %66 = bitcast i8* %xpv_cur to i64*
  %67 = load i64* %66, align 8, !tbaa !4
  store i64 %67, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %65 to i8**
  %68 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end108

cond.false106:                                    ; preds = %if.then95
  %call107 = call i8* @Perl_sv_2pv_flags(%struct.sv* %63, i64* %n_a, i32 2) #7
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false106, %cond.true103
  %cond109 = phi i8* [ %68, %cond.true103 ], [ %call107, %cond.false106 ]
  %69 = load i8* %cond109, align 1, !tbaa !1
  %tobool111 = icmp ne i8 %69, 0
  %cond115 = select i1 %tobool111, i8* %cond109, i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0)
  %call116 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([32 x i8]* @.str18, i64 0, i64 0), i8* %cond115) #7
  br label %return

if.else117:                                       ; preds = %if.end92
  %cmp126 = icmp ne i32 %and100, 0
  br i1 %tobool41, label %if.then119, label %if.else203

if.then119:                                       ; preds = %if.else117
  br i1 %cmp126, label %cond.true128, label %cond.false133

cond.true128:                                     ; preds = %if.then119
  %sv_any129 = getelementptr inbounds %struct.sv* %63, i64 0, i32 0
  %70 = load i8** %sv_any129, align 8, !tbaa !0
  %xpv_cur130 = getelementptr inbounds i8* %70, i64 8
  %71 = bitcast i8* %xpv_cur130 to i64*
  %72 = load i64* %71, align 8, !tbaa !4
  store i64 %72, i64* %n_a, align 8, !tbaa !4
  %xpv_pv132 = bitcast i8* %70 to i8**
  %73 = load i8** %xpv_pv132, align 8, !tbaa !0
  br label %cond.end135

cond.false133:                                    ; preds = %if.then119
  %call134 = call i8* @Perl_sv_2pv_flags(%struct.sv* %63, i64* %n_a, i32 2) #7
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true128
  %cond136 = phi i8* [ %73, %cond.true128 ], [ %call134, %cond.false133 ]
  %74 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix137 = getelementptr inbounds %struct.stackinfo* %74, i64 0, i32 2
  %75 = load i32* %si_cxix137, align 4, !tbaa !3
  %dec138 = add nsw i32 %75, -1
  store i32 %dec138, i32* %si_cxix137, align 4, !tbaa !3
  %idxprom139 = sext i32 %75 to i64
  %si_cxstack140 = getelementptr inbounds %struct.stackinfo* %74, i64 0, i32 1
  %76 = load %struct.context** %si_cxstack140, align 8, !tbaa !0
  %blku_oldcop149 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 1
  %77 = load %struct.cop** %blku_oldcop149, align 8, !tbaa !0
  store volatile %struct.cop* %77, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %78 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp152 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 3
  %79 = load i32* %blku_oldmarksp152, align 4, !tbaa !3
  %idx.ext153 = sext i32 %79 to i64
  %add.ptr154 = getelementptr inbounds i32* %78, i64 %idx.ext153
  store i32* %add.ptr154, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp157 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 4
  %80 = load i32* %blku_oldscopesp157, align 4, !tbaa !3
  store i32 %80, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp160 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 2
  %81 = load i32* %blku_oldretsp160, align 4, !tbaa !3
  store i32 %81, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm163 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 5
  %82 = load %struct.pmop** %blku_oldpm163, align 8, !tbaa !0
  store %struct.pmop* %82, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blk_u170 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 7
  %old_in_eval172 = bitcast %union.anon.1* %blk_u170 to i32*
  %83 = load i32* %old_in_eval172, align 4, !tbaa !3
  store volatile i32 %83, i32* @PL_in_eval, align 4, !tbaa !3
  %84 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 7, i32 0, i32 2
  %85 = load %struct.op** %84, align 8, !tbaa !0
  store %struct.op* %85, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv187 = getelementptr inbounds %struct.context* %76, i64 %idxprom139, i32 1, i32 0, i32 7, i32 0, i32 1
  %86 = bitcast i32* %old_namesv187 to %struct.sv**
  %87 = load %struct.sv** %86, align 8, !tbaa !0
  %tobool188 = icmp eq %struct.sv* %87, null
  br i1 %tobool188, label %if.end196, label %if.then189

if.then189:                                       ; preds = %cond.end135
  %call195 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %87) #7
  br label %if.end196

if.end196:                                        ; preds = %cond.end135, %if.then189
  %88 = load i8* %cond136, align 1, !tbaa !1
  %tobool198 = icmp ne i8 %88, 0
  %cond202 = select i1 %tobool198, i8* %cond136, i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str77, i64 0, i64 0), i8* %cond202) #7
  br label %if.end228

if.else203:                                       ; preds = %if.else117
  br i1 %cmp126, label %cond.true212, label %cond.false217

cond.true212:                                     ; preds = %if.else203
  %sv_any213 = getelementptr inbounds %struct.sv* %63, i64 0, i32 0
  %89 = load i8** %sv_any213, align 8, !tbaa !0
  %xpv_cur214 = getelementptr inbounds i8* %89, i64 8
  %90 = bitcast i8* %xpv_cur214 to i64*
  %91 = load i64* %90, align 8, !tbaa !4
  store i64 %91, i64* %n_a, align 8, !tbaa !4
  %xpv_pv216 = bitcast i8* %89 to i8**
  %92 = load i8** %xpv_pv216, align 8, !tbaa !0
  br label %cond.end219

cond.false217:                                    ; preds = %if.else203
  %call218 = call i8* @Perl_sv_2pv_flags(%struct.sv* %63, i64* %n_a, i32 2) #7
  br label %cond.end219

cond.end219:                                      ; preds = %cond.false217, %cond.true212
  %cond220 = phi i8* [ %92, %cond.true212 ], [ %call218, %cond.false217 ]
  %93 = load i8* %cond220, align 1, !tbaa !1
  %tobool221 = icmp eq i8 %93, 0
  br i1 %tobool221, label %if.then222, label %if.end228

if.then222:                                       ; preds = %cond.end219
  %94 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any223 = getelementptr inbounds %struct.gv* %94, i64 0, i32 0
  %95 = load %struct.xpvgv** %sv_any223, align 8, !tbaa !0
  %xgv_gp224 = getelementptr inbounds %struct.xpvgv* %95, i64 0, i32 7
  %96 = load %struct.gp** %xgv_gp224, align 8, !tbaa !0
  %gp_sv225 = getelementptr inbounds %struct.gp* %96, i64 0, i32 0
  %97 = load %struct.sv** %gp_sv225, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %97, i8* getelementptr inbounds ([18 x i8]* @.str78, i64 0, i64 0)) #7
  br label %if.end228

if.end228:                                        ; preds = %cond.end219, %if.end196, %if.then222
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr229 = getelementptr inbounds %struct.sv** %42, i64 %add.ptr.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr229, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr229, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %98 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %98, i64 0, i32 0
  %99 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end230:                                        ; preds = %if.end30
  store i32 0, i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13), align 8, !tbaa !3
  %tobool231 = icmp eq %struct.op** %startop, null
  br i1 %tobool231, label %if.else233, label %if.then232

if.then232:                                       ; preds = %if.end230
  store %struct.op* %41, %struct.op** %startop, align 8, !tbaa !0
  br label %if.end234

if.else233:                                       ; preds = %if.end230
  call void @Perl_save_freeop(%struct.op* %41) #7
  br label %if.end234

if.end234:                                        ; preds = %if.else233, %if.then232
  %100 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %op_type235 = getelementptr inbounds %struct.op* %100, i64 0, i32 4
  %101 = load i16* %op_type235, align 2, !tbaa !6
  %cmp237 = icmp eq i16 %101, 312
  br i1 %cmp237, label %land.lhs.true239, label %if.else252

land.lhs.true239:                                 ; preds = %if.end234
  %102 = getelementptr inbounds %struct.op* %100, i64 1, i32 0
  %103 = load %struct.op** %102, align 8, !tbaa !0
  %op_type240 = getelementptr inbounds %struct.op* %103, i64 0, i32 4
  %104 = load i16* %op_type240, align 2, !tbaa !6
  %cmp242 = icmp eq i16 %104, 173
  br i1 %cmp242, label %land.lhs.true244, label %if.else252

land.lhs.true244:                                 ; preds = %land.lhs.true239
  %105 = getelementptr inbounds %struct.op* %103, i64 1, i32 1
  %106 = load %struct.op** %105, align 8, !tbaa !0
  %op_type246 = getelementptr inbounds %struct.op* %106, i64 0, i32 4
  %107 = load i16* %op_type246, align 2, !tbaa !6
  %cmp248 = icmp eq i16 %107, 309
  br i1 %cmp248, label %if.then250, label %if.else252

if.then250:                                       ; preds = %land.lhs.true244
  %call251 = call %struct.op* @Perl_scalar(%struct.op* %100) #7
  br label %if.end266

if.else252:                                       ; preds = %land.lhs.true244, %land.lhs.true239, %if.end234
  %and253 = and i32 %gimme, 128
  %tobool254 = icmp eq i32 %and253, 0
  br i1 %tobool254, label %if.else257, label %if.then255

if.then255:                                       ; preds = %if.else252
  %call256 = call %struct.op* @Perl_scalarvoid(%struct.op* %100) #7
  br label %if.end266

if.else257:                                       ; preds = %if.else252
  %and258 = and i32 %gimme, 1
  %tobool259 = icmp eq i32 %and258, 0
  br i1 %tobool259, label %if.else262, label %if.then260

if.then260:                                       ; preds = %if.else257
  %call261 = call %struct.op* @Perl_list(%struct.op* %100) #7
  br label %if.end266

if.else262:                                       ; preds = %if.else257
  %call263 = call %struct.op* @Perl_scalar(%struct.op* %100) #7
  br label %if.end266

if.end266:                                        ; preds = %if.then255, %if.else262, %if.then260, %if.then250
  %108 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool267 = icmp eq i32 %108, 0
  %and269 = and i32 %108, 8
  %tobool270 = icmp eq i32 %and269, 0
  %or.cond = or i1 %tobool267, %tobool270
  br i1 %or.cond, label %if.end304, label %land.lhs.true271

land.lhs.true271:                                 ; preds = %if.end266
  %op_type272 = getelementptr inbounds %struct.op* %1, i64 0, i32 4
  %109 = load i16* %op_type272, align 2, !tbaa !6
  %cmp274 = icmp eq i16 %109, 309
  br i1 %cmp274, label %if.then276, label %if.end304

if.then276:                                       ; preds = %land.lhs.true271
  %call278 = call %struct.cv* @Perl_get_cv(i8* getelementptr inbounds ([14 x i8]* @.str79, i64 0, i64 0), i32 0) #7
  %tobool279 = icmp eq %struct.cv* %call278, null
  br i1 %tobool279, label %if.end304, label %if.then280

if.then280:                                       ; preds = %if.then276
  %110 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %111 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr282 = getelementptr inbounds i32* %111, i64 1
  store i32* %incdec.ptr282, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %112 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp283 = icmp eq i32* %incdec.ptr282, %112
  br i1 %cmp283, label %if.then285, label %if.end286

if.then285:                                       ; preds = %if.then280
  call void @Perl_markstack_grow() #7
  %.pre356 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end286

if.end286:                                        ; preds = %if.then285, %if.then280
  %113 = phi i32* [ %.pre356, %if.then285 ], [ %incdec.ptr282, %if.then280 ]
  %114 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast287 = ptrtoint %struct.sv** %110 to i64
  %sub.ptr.rhs.cast288 = ptrtoint %struct.sv** %114 to i64
  %sub.ptr.sub289 = sub i64 %sub.ptr.lhs.cast287, %sub.ptr.rhs.cast288
  %sub.ptr.div290355 = lshr exact i64 %sub.ptr.sub289, 3
  %conv291 = trunc i64 %sub.ptr.div290355 to i32
  store i32 %conv291, i32* %113, align 4, !tbaa !3
  %115 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast292 = ptrtoint %struct.sv** %115 to i64
  %sub.ptr.sub294 = sub i64 %sub.ptr.lhs.cast292, %sub.ptr.lhs.cast287
  %cmp296 = icmp slt i64 %sub.ptr.sub294, 8
  br i1 %cmp296, label %if.then298, label %if.end300

if.then298:                                       ; preds = %if.end286
  %call299 = call %struct.sv** @Perl_stack_grow(%struct.sv** %110, %struct.sv** %110, i32 1) #7
  br label %if.end300

if.end300:                                        ; preds = %if.then298, %if.end286
  %sp281.0 = phi %struct.sv** [ %call299, %if.then298 ], [ %110, %if.end286 ]
  %116 = load %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  %117 = bitcast %struct.gv* %116 to %struct.sv*
  %incdec.ptr301 = getelementptr inbounds %struct.sv** %sp281.0, i64 1
  store %struct.sv* %117, %struct.sv** %incdec.ptr301, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr301, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %118 = bitcast %struct.cv* %call278 to %struct.sv*
  %call302 = call i32 @Perl_call_sv(%struct.sv* %118, i32 2) #7
  br label %if.end304

if.end304:                                        ; preds = %if.then276, %if.end266, %if.end300, %land.lhs.true271
  %119 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any305 = getelementptr inbounds %struct.cv* %119, i64 0, i32 0
  %120 = load %struct.xpvcv** %sv_any305, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %120, i64 0, i32 14
  store i64 1, i64* %xcv_depth, align 8, !tbaa !4
  %121 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %122 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr306 = getelementptr inbounds i32* %122, i64 -1
  store i32* %incdec.ptr306, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %123 = load i32* %122, align 4, !tbaa !3
  %idx.ext307 = sext i32 %123 to i64
  %add.ptr308 = getelementptr inbounds %struct.sv** %121, i64 %idx.ext307
  store %struct.op* %1, %struct.op** @PL_op, align 8, !tbaa !0
  store i32 11, i32* @PL_lex_state, align 4, !tbaa !3
  store %struct.sv** %add.ptr308, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %124 = load %struct.op** @PL_eval_start, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end304, %if.end228, %cond.end108
  %retval.0 = phi %struct.op* [ %124, %if.end304 ], [ %call116, %cond.end108 ], [ %99, %if.end228 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_require() #0 {
entry:
  %len = alloca i64, align 8
  %n_a = alloca i64, align 8
  %len41 = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
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
  %call = call i32 @Perl_block_gimme() #8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i32 [ 128, %entry ], [ 0, %cond.false ], [ %call, %cond.false15 ], [ 1, %cond.false8 ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %4, 50331648
  %tobool = icmp eq i32 %and20, 0
  br i1 %tobool, label %if.end143, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end18
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %5, i64 0, i32 4
  %6 = load i16* %op_type, align 2, !tbaa !6
  %cmp22 = icmp eq i16 %6, 310
  br i1 %cmp22, label %if.end143, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = and i32 %4, 393216
  %8 = icmp eq i32 %7, 393216
  br i1 %8, label %cond.true35, label %if.else

cond.true35:                                      ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %9, i64 32
  %10 = bitcast i8* %xnv_nv to double*
  %11 = load double* %10, align 8, !tbaa !5
  %tobool36 = fcmp une double %11, 0.000000e+00
  br i1 %tobool36, label %if.then40, label %if.else

if.then40:                                        ; preds = %cond.true35
  %xpv_pv = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %13 = bitcast i8* %xpv_cur to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  %cmp46 = icmp sgt i64 %14, 0
  br i1 %cmp46, label %if.then48, label %if.end83

if.then48:                                        ; preds = %if.then40
  %call49 = call i64 @Perl_utf8n_to_uvuni(i8* %12, i64 %14, i64* %len41, i32 0) #7
  %15 = load i64* %len41, align 8, !tbaa !4
  %cmp51 = icmp slt i64 %15, %14
  br i1 %cmp51, label %if.then53, label %if.end67

if.then53:                                        ; preds = %if.then48
  %add.ptr50 = getelementptr inbounds i8* %12, i64 %15
  %16 = sub i64 %14, %15
  %call57 = call i64 @Perl_utf8n_to_uvuni(i8* %add.ptr50, i64 %16, i64* %len41, i32 0) #7
  %17 = load i64* %len41, align 8, !tbaa !4
  %add.ptr50.sum = add i64 %17, %15
  %cmp59 = icmp slt i64 %add.ptr50.sum, %14
  br i1 %cmp59, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.then53
  %add.ptr58 = getelementptr inbounds i8* %12, i64 %add.ptr50.sum
  %18 = sub i64 %14, %add.ptr50.sum
  %call65 = call i64 @Perl_utf8n_to_uvuni(i8* %add.ptr58, i64 %18, i64* %len41, i32 0) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then48, %if.then61, %if.then53
  %sver.0 = phi i64 [ %call65, %if.then61 ], [ 0, %if.then53 ], [ 0, %if.then48 ]
  %ver.0 = phi i64 [ %call57, %if.then61 ], [ %call57, %if.then53 ], [ 0, %if.then48 ]
  %cmp68 = icmp ugt i64 %call49, 5
  br i1 %cmp68, label %if.then81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end67
  %cmp70 = icmp eq i64 %call49, 5
  br i1 %cmp70, label %land.lhs.true72, label %if.end83

land.lhs.true72:                                  ; preds = %lor.lhs.false
  %cmp73 = icmp ugt i64 %ver.0, 8
  br i1 %cmp73, label %if.then81, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %land.lhs.true72
  %cmp76 = icmp eq i64 %ver.0, 8
  %cmp79 = icmp ugt i64 %sver.0, 7
  %or.cond = and i1 %cmp76, %cmp79
  br i1 %or.cond, label %if.then81, label %if.end83

if.then81:                                        ; preds = %lor.lhs.false75, %land.lhs.true72, %if.end67
  %rev.0991 = phi i64 [ 5, %lor.lhs.false75 ], [ 5, %land.lhs.true72 ], [ %call49, %if.end67 ]
  %call82 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([60 x i8]* @.str49, i64 0, i64 0), i64 %rev.0991, i64 %ver.0, i64 %sver.0, i32 5, i32 8, i32 7) #7
  br label %return

if.end83:                                         ; preds = %if.then40, %lor.lhs.false75, %lor.lhs.false
  store %struct.sv* @PL_sv_yes, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %19, i64 0, i32 0
  %20 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.then, %cond.true35
  %and86 = and i32 %4, 67108864
  %tobool87 = icmp eq i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end143

if.then88:                                        ; preds = %if.else
  %and90 = and i32 %4, 131072
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %cond.false95, label %cond.true92

cond.true92:                                      ; preds = %if.then88
  %sv_any93 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %21 = load i8** %sv_any93, align 8, !tbaa !0
  %xnv_nv94 = getelementptr inbounds i8* %21, i64 32
  %22 = bitcast i8* %xnv_nv94 to double*
  %23 = load double* %22, align 8, !tbaa !5
  br label %cond.end97

cond.false95:                                     ; preds = %if.then88
  %call96 = call double @Perl_sv_2nv(%struct.sv* %3) #7
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false95, %cond.true92
  %cond98 = phi double [ %23, %cond.true92 ], [ %call96, %cond.false95 ]
  %cmp99 = fcmp ogt double %cond98, 0x401408333F1CA075
  br i1 %cmp99, label %if.then101, label %if.end138

if.then101:                                       ; preds = %cond.end97
  %24 = load i32* %sv_flags, align 4, !tbaa !3
  %and103 = and i32 %24, 131072
  %tobool104 = icmp eq i32 %and103, 0
  br i1 %tobool104, label %cond.false108, label %cond.true105

cond.true105:                                     ; preds = %if.then101
  %sv_any106 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %25 = load i8** %sv_any106, align 8, !tbaa !0
  %xnv_nv107 = getelementptr inbounds i8* %25, i64 32
  %26 = bitcast i8* %xnv_nv107 to double*
  %27 = load double* %26, align 8, !tbaa !5
  br label %cond.end110

cond.false108:                                    ; preds = %if.then101
  %call109 = call double @Perl_sv_2nv(%struct.sv* %3) #7
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false108, %cond.true105
  %cond111 = phi double [ %27, %cond.true105 ], [ %call109, %cond.false108 ]
  %conv113 = fptoui double %cond111 to i64
  %conv114 = uitofp i64 %conv113 to double
  %sub = fsub double %cond111, %conv114
  %mul = fmul double %sub, 1.000000e+03
  %add = fadd double %mul, 9.000000e-04
  %conv116 = fptoui double %add to i64
  %conv117 = uitofp i64 %conv116 to double
  %sub118 = fsub double %mul, %conv117
  %mul119 = fmul double %sub118, 1.000000e+03
  %add121 = fadd double %mul119, 9.000000e-04
  %conv122 = fptoui double %add121 to i64
  %cmp123 = icmp eq i64 %conv122, 0
  br i1 %cmp123, label %land.lhs.true125, label %if.else136

land.lhs.true125:                                 ; preds = %cond.end110
  %cmp126 = icmp ugt i64 %conv113, 5
  br i1 %cmp126, label %if.then134, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %land.lhs.true125
  %cmp129 = icmp eq i64 %conv113, 5
  %cmp132 = icmp ugt i64 %conv116, 99
  %or.cond972 = and i1 %cmp129, %cmp132
  br i1 %or.cond972, label %if.then134, label %if.else136

if.then134:                                       ; preds = %lor.lhs.false128, %land.lhs.true125
  %div = udiv i64 %conv116, 100
  %call135 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([87 x i8]* @.str50, i64 0, i64 0), i64 %conv113, i64 %conv116, i64 0, i64 %conv113, i64 %div, i32 5, i32 8, i32 7) #7
  br label %return

if.else136:                                       ; preds = %lor.lhs.false128, %cond.end110
  %call137 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([60 x i8]* @.str49, i64 0, i64 0), i64 %conv113, i64 %conv116, i64 %conv122, i32 5, i32 8, i32 7) #7
  br label %return

if.end138:                                        ; preds = %cond.end97
  store %struct.sv* @PL_sv_yes, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next140 = getelementptr inbounds %struct.op* %28, i64 0, i32 0
  %29 = load %struct.op** %op_next140, align 8, !tbaa !0
  br label %return

if.end143:                                        ; preds = %if.else, %land.lhs.true, %cond.end18
  %and145 = and i32 %4, 262144
  %cmp146 = icmp eq i32 %and145, 0
  br i1 %cmp146, label %cond.false153, label %cond.true148

cond.true148:                                     ; preds = %if.end143
  %sv_any149 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %30 = load i8** %sv_any149, align 8, !tbaa !0
  %xpv_cur150 = getelementptr inbounds i8* %30, i64 8
  %31 = bitcast i8* %xpv_cur150 to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  store i64 %32, i64* %len, align 8, !tbaa !4
  %xpv_pv152 = bitcast i8* %30 to i8**
  %33 = load i8** %xpv_pv152, align 8, !tbaa !0
  br label %cond.end155

cond.false153:                                    ; preds = %if.end143
  %call154 = call i8* @Perl_sv_2pv_flags(%struct.sv* %3, i64* %len, i32 2) #7
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end155

cond.end155:                                      ; preds = %cond.false153, %cond.true148
  %34 = phi i64 [ %32, %cond.true148 ], [ %.pre, %cond.false153 ]
  %cond156 = phi i8* [ %33, %cond.true148 ], [ %call154, %cond.false153 ]
  %tobool157 = icmp ne i8* %cond156, null
  %tobool157.not = xor i1 %tobool157, true
  %cmp159 = icmp eq i64 %34, 0
  %or.cond973 = or i1 %cmp159, %tobool157.not
  br i1 %or.cond973, label %if.then164, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %cond.end155
  %35 = load i8* %cond156, align 1, !tbaa !1
  %tobool163 = icmp eq i8 %35, 0
  br i1 %tobool163, label %if.then164, label %if.end166

if.then164:                                       ; preds = %cond.end155, %land.lhs.true161
  %call165 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([19 x i8]* @.str51, i64 0, i64 0)) #7
  br label %return

if.end166:                                        ; preds = %land.lhs.true161
  %36 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool167 = icmp eq i8 %36, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %if.end166
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #7
  br label %if.end169

if.end169:                                        ; preds = %if.end166, %if.then168
  %37 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type170 = getelementptr inbounds %struct.op* %37, i64 0, i32 4
  %38 = load i16* %op_type170, align 2, !tbaa !6
  %cmp172 = icmp eq i16 %38, 309
  br i1 %cmp172, label %land.lhs.true174, label %if.end197

land.lhs.true174:                                 ; preds = %if.end169
  %39 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any175 = getelementptr inbounds %struct.gv* %39, i64 0, i32 0
  %40 = load %struct.xpvgv** %sv_any175, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %40, i64 0, i32 7
  %41 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %41, i64 0, i32 5
  %42 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool176 = icmp eq %struct.hv* %42, null
  br i1 %tobool176, label %cond.false181, label %cond.end186

cond.false181:                                    ; preds = %land.lhs.true174
  %call182 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %39) #7
  %sv_any183 = getelementptr inbounds %struct.gv* %call182, i64 0, i32 0
  %43 = load %struct.xpvgv** %sv_any183, align 8, !tbaa !0
  %xgv_gp184 = getelementptr inbounds %struct.xpvgv* %43, i64 0, i32 7
  %44 = load %struct.gp** %xgv_gp184, align 8, !tbaa !0
  %gp_hv185 = getelementptr inbounds %struct.gp* %44, i64 0, i32 5
  %45 = load %struct.hv** %gp_hv185, align 8, !tbaa !0
  br label %cond.end186

cond.end186:                                      ; preds = %land.lhs.true174, %cond.false181
  %cond187 = phi %struct.hv* [ %45, %cond.false181 ], [ %42, %land.lhs.true174 ]
  %46 = load i64* %len, align 8, !tbaa !4
  %conv188 = trunc i64 %46 to i32
  %call189 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond187, i8* %cond156, i32 %conv188, i32 0) #7
  %tobool190 = icmp eq %struct.sv** %call189, null
  br i1 %tobool190, label %if.end197, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %cond.end186
  %47 = load %struct.sv** %call189, align 8, !tbaa !0
  %cmp192 = icmp eq %struct.sv* %47, @PL_sv_undef
  br i1 %cmp192, label %if.end197, label %if.then194

if.then194:                                       ; preds = %land.lhs.true191
  store %struct.sv* @PL_sv_yes, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %48 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next196 = getelementptr inbounds %struct.op* %48, i64 0, i32 0
  %49 = load %struct.op** %op_next196, align 8, !tbaa !0
  br label %return

if.end197:                                        ; preds = %land.lhs.true191, %cond.end186, %if.end169
  %50 = load i8* %cond156, align 1, !tbaa !1
  switch i8 %50, label %if.then204 [
    i8 47, label %if.end202
    i8 46, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %if.end197
  %arrayidx.i = getelementptr inbounds i8* %cond156, i64 1
  %51 = load i8* %arrayidx.i, align 1, !tbaa !1
  switch i8 %51, label %if.then204 [
    i8 47, label %if.end202
    i8 46, label %land.lhs.true13.i
  ]

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %arrayidx14.i = getelementptr inbounds i8* %cond156, i64 2
  %52 = load i8* %arrayidx14.i, align 1, !tbaa !1
  %cmp16.i = icmp eq i8 %52, 47
  br i1 %cmp16.i, label %if.end202, label %if.then204

if.end202:                                        ; preds = %land.lhs.true13.i, %if.end197, %land.lhs.true.i
  %call201 = call fastcc %struct._PerlIO** @S_doopen_pm(i8* %cond156) #8
  %tobool203 = icmp eq %struct._PerlIO** %call201, null
  br i1 %tobool203, label %if.then204, label %if.end460

if.then204:                                       ; preds = %land.lhs.true13.i, %land.lhs.true.i, %if.end197, %if.end202
  %tryname.0996 = phi i8* [ %cond156, %if.end202 ], [ null, %if.end197 ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true13.i ]
  %53 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any205 = getelementptr inbounds %struct.gv* %53, i64 0, i32 0
  %54 = load %struct.xpvgv** %sv_any205, align 8, !tbaa !0
  %xgv_gp206 = getelementptr inbounds %struct.xpvgv* %54, i64 0, i32 7
  %55 = load %struct.gp** %xgv_gp206, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %55, i64 0, i32 4
  %56 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool207 = icmp eq %struct.av* %56, null
  br i1 %tobool207, label %cond.false212, label %cond.end217

cond.false212:                                    ; preds = %if.then204
  %call213 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %53) #7
  %sv_any214 = getelementptr inbounds %struct.gv* %call213, i64 0, i32 0
  %57 = load %struct.xpvgv** %sv_any214, align 8, !tbaa !0
  %xgv_gp215 = getelementptr inbounds %struct.xpvgv* %57, i64 0, i32 7
  %58 = load %struct.gp** %xgv_gp215, align 8, !tbaa !0
  %gp_av216 = getelementptr inbounds %struct.gp* %58, i64 0, i32 4
  %59 = load %struct.av** %gp_av216, align 8, !tbaa !0
  br label %cond.end217

cond.end217:                                      ; preds = %if.then204, %cond.false212
  %cond218 = phi %struct.av* [ %59, %cond.false212 ], [ %56, %if.then204 ]
  %call219 = call %struct.sv* @Perl_newSV(i64 0) #7
  %60 = getelementptr inbounds %struct.av* %cond218, i64 0, i32 2
  %sv_any228 = getelementptr inbounds %struct.av* %cond218, i64 0, i32 0
  %sv_any439 = getelementptr inbounds %struct.sv* %call219, i64 0, i32 0
  %arrayidx.i977 = getelementptr inbounds i8* %cond156, i64 1
  %arrayidx14.i979 = getelementptr inbounds i8* %cond156, i64 2
  %61 = bitcast %struct.av* %cond218 to %struct.sv*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end217
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %for.inc ], [ 0, %cond.end217 ]
  %tryname.1 = phi i8* [ %tryname.2, %for.inc ], [ %tryname.0996, %cond.end217 ]
  %sp.0 = phi %struct.sv** [ %sp.3, %for.inc ], [ %incdec.ptr, %cond.end217 ]
  %62 = load i32* %60, align 4, !tbaa !3
  %and222 = and i32 %62, 32768
  %tobool223 = icmp eq i32 %and222, 0
  br i1 %tobool223, label %cond.false227, label %cond.true224

cond.true224:                                     ; preds = %for.cond
  %call225 = call i32 @Perl_mg_size(%struct.sv* %61) #7
  %conv226 = sext i32 %call225 to i64
  br label %cond.end229

cond.false227:                                    ; preds = %for.cond
  %63 = load %struct.xpvav** %sv_any228, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %63, i64 0, i32 1
  %64 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end229

cond.end229:                                      ; preds = %cond.false227, %cond.true224
  %cond230 = phi i64 [ %conv226, %cond.true224 ], [ %64, %cond.false227 ]
  %cmp231 = icmp sgt i64 %indvars.iv1001, %cond230
  br i1 %cmp231, label %if.end460, label %for.body

for.body:                                         ; preds = %cond.end229
  %65 = trunc i64 %indvars.iv1001 to i32
  %call233 = call %struct.sv** @Perl_av_fetch(%struct.av* %cond218, i32 %65, i32 1) #7
  %66 = load %struct.sv** %call233, align 8, !tbaa !0
  %sv_flags234 = getelementptr inbounds %struct.sv* %66, i64 0, i32 2
  %67 = load i32* %sv_flags234, align 4, !tbaa !3
  %and235 = and i32 %67, 524288
  %tobool236 = icmp eq i32 %and235, 0
  br i1 %tobool236, label %if.else419, label %if.then237

if.then237:                                       ; preds = %for.body
  %sv_any238 = getelementptr inbounds %struct.sv* %66, i64 0, i32 0
  %68 = load i8** %sv_any238, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %68 to %struct.sv**
  %69 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags239 = getelementptr inbounds %struct.sv* %69, i64 0, i32 2
  %70 = load i32* %sv_flags239, align 4, !tbaa !3
  %and240 = and i32 %70, 255
  %cmp241 = icmp eq i32 %and240, 10
  br i1 %cmp241, label %land.lhs.true243, label %if.end250

land.lhs.true243:                                 ; preds = %if.then237
  %call244 = call i32 @Perl_sv_isobject(%struct.sv* %66) #7
  %tobool245 = icmp eq i32 %call244, 0
  br i1 %tobool245, label %if.then246, label %if.end250

if.then246:                                       ; preds = %land.lhs.true243
  %71 = load i8** %sv_any238, align 8, !tbaa !0
  %xrv_rv248 = bitcast i8* %71 to %struct.sv**
  %72 = load %struct.sv** %xrv_rv248, align 8, !tbaa !0
  %73 = bitcast %struct.sv* %72 to %struct.av*
  %call249 = call %struct.sv** @Perl_av_fetch(%struct.av* %73, i32 0, i32 1) #7
  %74 = load %struct.sv** %call249, align 8, !tbaa !0
  br label %if.end250

if.end250:                                        ; preds = %land.lhs.true243, %if.then246, %if.then237
  %loader.0 = phi %struct.sv* [ %74, %if.then246 ], [ %66, %if.then237 ], [ %66, %land.lhs.true243 ]
  %75 = load i8** %sv_any238, align 8, !tbaa !0
  %xrv_rv252 = bitcast i8* %75 to %struct.sv**
  %76 = load %struct.sv** %xrv_rv252, align 8, !tbaa !0
  %77 = ptrtoint %struct.sv* %76 to i64
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call219, i8* getelementptr inbounds ([17 x i8]* @.str54, i64 0, i64 0), i64 %77, i8* %cond156) #7
  %78 = load i8** %sv_any439, align 8, !tbaa !0
  %xpv_pv254 = bitcast i8* %78 to i8**
  %79 = load i8** %xpv_pv254, align 8, !tbaa !0
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %80 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %80, i32* @PL_tmps_floor, align 4, !tbaa !3
  %81 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast255 = ptrtoint %struct.sv** %81 to i64
  %sub.ptr.rhs.cast256 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub257 = sub i64 %sub.ptr.lhs.cast255, %sub.ptr.rhs.cast256
  %cmp258 = icmp slt i64 %sub.ptr.sub257, 16
  br i1 %cmp258, label %if.then260, label %if.end262

if.then260:                                       ; preds = %if.end250
  %call261 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 2) #7
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end250
  %sp.1 = phi %struct.sv** [ %call261, %if.then260 ], [ %sp.0, %if.end250 ]
  %82 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr263 = getelementptr inbounds i32* %82, i64 1
  store i32* %incdec.ptr263, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %83 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp264 = icmp eq i32* %incdec.ptr263, %83
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %if.end262
  call void @Perl_markstack_grow() #7
  %.pre1003 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end267

if.end267:                                        ; preds = %if.then266, %if.end262
  %84 = phi i32* [ %.pre1003, %if.then266 ], [ %incdec.ptr263, %if.end262 ]
  %85 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast268 = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.rhs.cast269 = ptrtoint %struct.sv** %85 to i64
  %sub.ptr.sub270 = sub i64 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  %sub.ptr.div271968 = lshr exact i64 %sub.ptr.sub270, 3
  %conv272 = trunc i64 %sub.ptr.div271968 to i32
  store i32 %conv272, i32* %84, align 4, !tbaa !3
  %incdec.ptr273 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %66, %struct.sv** %incdec.ptr273, align 8, !tbaa !0
  %incdec.ptr274 = getelementptr inbounds %struct.sv** %sp.1, i64 2
  store %struct.sv* %3, %struct.sv** %incdec.ptr274, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr274, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call275 = call i32 @Perl_sv_isobject(%struct.sv* %loader.0) #7
  %tobool276 = icmp eq i32 %call275, 0
  br i1 %tobool276, label %if.else279, label %if.then277

if.then277:                                       ; preds = %if.end267
  %call278 = call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8]* @.str55, i64 0, i64 0), i32 1) #7
  br label %if.end281

if.else279:                                       ; preds = %if.end267
  %call280 = call i32 @Perl_call_sv(%struct.sv* %loader.0, i32 1) #7
  br label %if.end281

if.end281:                                        ; preds = %if.else279, %if.then277
  %count.0 = phi i32 [ %call278, %if.then277 ], [ %call280, %if.else279 ]
  %86 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp282 = icmp sgt i32 %count.0, 0
  br i1 %cmp282, label %if.then284, label %if.end402

if.then284:                                       ; preds = %if.end281
  %sub286 = add nsw i32 %count.0, -1
  %idx.ext = sext i32 %sub286 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr287 = getelementptr inbounds %struct.sv** %86, i64 %idx.neg
  %87 = load %struct.sv** %add.ptr287, align 8, !tbaa !0
  %sv_flags288 = getelementptr inbounds %struct.sv* %87, i64 0, i32 2
  %88 = load i32* %sv_flags288, align 4, !tbaa !3
  %and289 = and i32 %88, 524288
  %tobool290 = icmp eq i32 %and289, 0
  br i1 %tobool290, label %if.end301, label %land.lhs.true291

land.lhs.true291:                                 ; preds = %if.then284
  %sv_any292 = getelementptr inbounds %struct.sv* %87, i64 0, i32 0
  %89 = load i8** %sv_any292, align 8, !tbaa !0
  %xrv_rv293 = bitcast i8* %89 to %struct.sv**
  %90 = load %struct.sv** %xrv_rv293, align 8, !tbaa !0
  %sv_flags294 = getelementptr inbounds %struct.sv* %90, i64 0, i32 2
  %91 = load i32* %sv_flags294, align 4, !tbaa !3
  %and295 = and i32 %91, 255
  %cmp296 = icmp eq i32 %and295, 13
  %. = select i1 %cmp296, %struct.sv* %90, %struct.sv* %87
  %sv_flags302.phi.trans.insert = getelementptr inbounds %struct.sv* %., i64 0, i32 2
  %.pre1004 = load i32* %sv_flags302.phi.trans.insert, align 4, !tbaa !3
  br label %if.end301

if.end301:                                        ; preds = %land.lhs.true291, %if.then284
  %92 = phi i32 [ %88, %if.then284 ], [ %.pre1004, %land.lhs.true291 ]
  %arg.0 = phi %struct.sv* [ %87, %if.then284 ], [ %., %land.lhs.true291 ]
  %and303 = and i32 %92, 255
  %cmp304 = icmp eq i32 %and303, 13
  br i1 %cmp304, label %if.then306, label %if.end363

if.then306:                                       ; preds = %if.end301
  %93 = bitcast %struct.sv* %arg.0 to %struct.gv*
  %tobool307 = icmp eq %struct.sv* %arg.0, null
  br i1 %tobool307, label %if.end355, label %land.lhs.true313

land.lhs.true313:                                 ; preds = %if.then306
  %sv_any314 = bitcast %struct.sv* %arg.0 to %struct.xpvgv**
  %94 = load %struct.xpvgv** %sv_any314, align 8, !tbaa !0
  %xgv_gp315 = getelementptr inbounds %struct.xpvgv* %94, i64 0, i32 7
  %95 = load %struct.gp** %xgv_gp315, align 8, !tbaa !0
  %tobool316 = icmp eq %struct.gp* %95, null
  br i1 %tobool316, label %if.end355, label %cond.end321

cond.end321:                                      ; preds = %land.lhs.true313
  %gp_io = getelementptr inbounds %struct.gp* %95, i64 0, i32 2
  %96 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool324 = icmp eq %struct.io* %96, null
  br i1 %tobool324, label %if.end355, label %if.then325

if.then325:                                       ; preds = %cond.end321
  %sv_any326 = getelementptr inbounds %struct.io* %96, i64 0, i32 0
  %97 = load %struct.xpvio** %sv_any326, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %97, i64 0, i32 7
  %98 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %xio_type = getelementptr inbounds %struct.xpvio* %97, i64 0, i32 21
  %99 = load i8* %xio_type, align 1, !tbaa !1
  %cmp329 = icmp eq i8 %99, 124
  br i1 %cmp329, label %land.rhs, label %if.else335

land.rhs:                                         ; preds = %if.then325
  store %struct.sv* %arg.0, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %arg.0, i64 0, i32 1
  %100 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc333 = add i32 %100, 1
  store i32 %inc333, i32* %sv_refcnt, align 4, !tbaa !3
  br label %if.end355

if.else335:                                       ; preds = %if.then325
  %xio_ofp = getelementptr inbounds %struct.xpvio* %97, i64 0, i32 8
  %101 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool337 = icmp eq %struct._PerlIO** %101, null
  %cmp343 = icmp eq %struct._PerlIO** %101, %98
  %or.cond974 = or i1 %tobool337, %cmp343
  br i1 %or.cond974, label %if.end349, label %if.then345

if.then345:                                       ; preds = %if.else335
  %call348 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %101) #7
  %.pre1005 = load %struct.xpvio** %sv_any326, align 8, !tbaa !0
  br label %if.end349

if.end349:                                        ; preds = %if.else335, %if.then345
  %102 = phi %struct.xpvio* [ %97, %if.else335 ], [ %.pre1005, %if.then345 ]
  %xio_ifp351 = getelementptr inbounds %struct.xpvio* %102, i64 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp351, align 8, !tbaa !0
  %103 = load %struct.xpvio** %sv_any326, align 8, !tbaa !0
  %xio_ofp353 = getelementptr inbounds %struct.xpvio* %103, i64 0, i32 8
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ofp353, align 8, !tbaa !0
  br label %if.end355

if.end355:                                        ; preds = %if.then306, %land.lhs.true313, %land.rhs, %cond.end321, %if.end349
  %filter_child_proc.1 = phi %struct.gv* [ null, %if.end349 ], [ null, %cond.end321 ], [ %93, %land.rhs ], [ null, %land.lhs.true313 ], [ null, %if.then306 ]
  %tryrsfp.2 = phi %struct._PerlIO** [ %98, %if.end349 ], [ null, %cond.end321 ], [ %98, %land.rhs ], [ null, %land.lhs.true313 ], [ null, %if.then306 ]
  %cmp356 = icmp sgt i32 %count.0, 1
  br i1 %cmp356, label %if.then358, label %if.end363

if.then358:                                       ; preds = %if.end355
  %add.ptr287.sum971 = sub i64 1, %idx.ext
  %arrayidx361 = getelementptr inbounds %struct.sv** %86, i64 %add.ptr287.sum971
  %104 = load %struct.sv** %arrayidx361, align 8, !tbaa !0
  br label %if.end363

if.end363:                                        ; preds = %if.end355, %if.then358, %if.end301
  %filter_child_proc.2 = phi %struct.gv* [ %filter_child_proc.1, %if.then358 ], [ null, %if.end301 ], [ %filter_child_proc.1, %if.end355 ]
  %i285.0 = phi i32 [ 2, %if.then358 ], [ 1, %if.end301 ], [ 1, %if.end355 ]
  %arg.1 = phi %struct.sv* [ %104, %if.then358 ], [ %arg.0, %if.end301 ], [ %arg.0, %if.end355 ]
  %filter_has_file.1 = phi i64 [ 4294967296, %if.then358 ], [ 0, %if.end301 ], [ 4294967296, %if.end355 ]
  %tryrsfp.3 = phi %struct._PerlIO** [ %tryrsfp.2, %if.then358 ], [ null, %if.end301 ], [ %tryrsfp.2, %if.end355 ]
  %sv_flags364 = getelementptr inbounds %struct.sv* %arg.1, i64 0, i32 2
  %105 = load i32* %sv_flags364, align 4, !tbaa !3
  %and365 = and i32 %105, 524288
  %tobool366 = icmp eq i32 %and365, 0
  br i1 %tobool366, label %if.end400, label %land.lhs.true367

land.lhs.true367:                                 ; preds = %if.end363
  %sv_any368 = getelementptr inbounds %struct.sv* %arg.1, i64 0, i32 0
  %106 = load i8** %sv_any368, align 8, !tbaa !0
  %xrv_rv369 = bitcast i8* %106 to %struct.sv**
  %107 = load %struct.sv** %xrv_rv369, align 8, !tbaa !0
  %sv_flags370 = getelementptr inbounds %struct.sv* %107, i64 0, i32 2
  %108 = load i32* %sv_flags370, align 4, !tbaa !3
  %and371 = and i32 %108, 255
  %cmp372 = icmp eq i32 %and371, 12
  br i1 %cmp372, label %if.then374, label %if.end400

if.then374:                                       ; preds = %land.lhs.true367
  store %struct.sv* %arg.1, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool375 = icmp eq %struct.sv* %arg.1, null
  br i1 %tobool375, label %land.end380, label %land.rhs376

land.rhs376:                                      ; preds = %if.then374
  %sv_refcnt377 = getelementptr inbounds %struct.sv* %arg.1, i64 0, i32 1
  %109 = load i32* %sv_refcnt377, align 4, !tbaa !3
  %inc378 = add i32 %109, 1
  store i32 %inc378, i32* %sv_refcnt377, align 4, !tbaa !3
  br label %land.end380

land.end380:                                      ; preds = %if.then374, %land.rhs376
  %cmp382 = icmp slt i32 %i285.0, %count.0
  br i1 %cmp382, label %if.then384, label %if.end394

if.then384:                                       ; preds = %land.end380
  %idxprom385969 = zext i32 %i285.0 to i64
  %add.ptr287.sum970 = sub i64 %idxprom385969, %idx.ext
  %arrayidx386 = getelementptr inbounds %struct.sv** %86, i64 %add.ptr287.sum970
  %110 = load %struct.sv** %arrayidx386, align 8, !tbaa !0
  store %struct.sv* %110, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool387 = icmp eq %struct.sv* %110, null
  br i1 %tobool387, label %if.end394, label %land.rhs388

land.rhs388:                                      ; preds = %if.then384
  %sv_refcnt389 = getelementptr inbounds %struct.sv* %110, i64 0, i32 1
  %111 = load i32* %sv_refcnt389, align 4, !tbaa !3
  %inc390 = add i32 %111, 1
  store i32 %inc390, i32* %sv_refcnt389, align 4, !tbaa !3
  br label %if.end394

if.end394:                                        ; preds = %land.rhs388, %if.then384, %land.end380
  %filter_state.1 = phi %struct.sv* [ null, %land.end380 ], [ null, %if.then384 ], [ %110, %land.rhs388 ]
  %cmp395 = icmp eq %struct._PerlIO** %tryrsfp.3, null
  br i1 %cmp395, label %if.then397, label %if.end400

if.then397:                                       ; preds = %if.end394
  %call398 = call %struct._PerlIO** @PerlIO_open(i8* getelementptr inbounds ([10 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0)) #7
  br label %if.end400

if.end400:                                        ; preds = %if.end363, %if.end394, %if.then397, %land.lhs.true367
  %filter_sub.1 = phi %struct.sv* [ %arg.1, %if.then397 ], [ %arg.1, %if.end394 ], [ null, %land.lhs.true367 ], [ null, %if.end363 ]
  %filter_state.2 = phi %struct.sv* [ %filter_state.1, %if.then397 ], [ %filter_state.1, %if.end394 ], [ null, %land.lhs.true367 ], [ null, %if.end363 ]
  %tryrsfp.4 = phi %struct._PerlIO** [ %call398, %if.then397 ], [ %tryrsfp.3, %if.end394 ], [ %tryrsfp.3, %land.lhs.true367 ], [ %tryrsfp.3, %if.end363 ]
  %add.ptr287.sum = xor i64 %idx.ext, -1
  %incdec.ptr401 = getelementptr inbounds %struct.sv** %86, i64 %add.ptr287.sum
  br label %if.end402

if.end402:                                        ; preds = %if.end400, %if.end281
  %filter_sub.2 = phi %struct.sv* [ %filter_sub.1, %if.end400 ], [ null, %if.end281 ]
  %filter_state.3 = phi %struct.sv* [ %filter_state.2, %if.end400 ], [ null, %if.end281 ]
  %filter_child_proc.3 = phi %struct.gv* [ %filter_child_proc.2, %if.end400 ], [ null, %if.end281 ]
  %filter_has_file.2 = phi i64 [ %filter_has_file.1, %if.end400 ], [ 0, %if.end281 ]
  %tryrsfp.5 = phi %struct._PerlIO** [ %tryrsfp.4, %if.end400 ], [ null, %if.end281 ]
  %sp.2 = phi %struct.sv** [ %incdec.ptr401, %if.end400 ], [ %86, %if.end281 ]
  store %struct.sv** %sp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %112 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %113 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp403 = icmp sgt i32 %112, %113
  br i1 %cmp403, label %if.then405, label %if.end406

if.then405:                                       ; preds = %if.end402
  call void @Perl_free_tmps() #7
  br label %if.end406

if.end406:                                        ; preds = %if.then405, %if.end402
  call void @Perl_pop_scope() #7
  %tobool407 = icmp eq %struct._PerlIO** %tryrsfp.5, null
  br i1 %tobool407, label %if.end409, label %if.end460

if.end409:                                        ; preds = %if.end406
  %tobool410 = icmp eq %struct.gv* %filter_child_proc.3, null
  br i1 %tobool410, label %if.end412, label %if.then411

if.then411:                                       ; preds = %if.end409
  %114 = bitcast %struct.gv* %filter_child_proc.3 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %114) #7
  br label %if.end412

if.end412:                                        ; preds = %if.end409, %if.then411
  %tobool413 = icmp eq %struct.sv* %filter_state.3, null
  br i1 %tobool413, label %if.end415, label %if.then414

if.then414:                                       ; preds = %if.end412
  call void @Perl_sv_free(%struct.sv* %filter_state.3) #7
  br label %if.end415

if.end415:                                        ; preds = %if.end412, %if.then414
  %tobool416 = icmp eq %struct.sv* %filter_sub.2, null
  br i1 %tobool416, label %for.inc, label %if.then417

if.then417:                                       ; preds = %if.end415
  call void @Perl_sv_free(%struct.sv* %filter_sub.2) #7
  br label %for.inc

if.else419:                                       ; preds = %for.body
  %115 = load i8* %cond156, align 1, !tbaa !1
  switch i8 %115, label %if.then422 [
    i8 47, label %for.inc
    i8 46, label %land.lhs.true.i978
  ]

land.lhs.true.i978:                               ; preds = %if.else419
  %116 = load i8* %arrayidx.i977, align 1, !tbaa !1
  switch i8 %116, label %if.then422 [
    i8 47, label %for.inc
    i8 46, label %land.lhs.true13.i981
  ]

land.lhs.true13.i981:                             ; preds = %land.lhs.true.i978
  %117 = load i8* %arrayidx14.i979, align 1, !tbaa !1
  %cmp16.i980 = icmp eq i8 %117, 47
  br i1 %cmp16.i980, label %for.inc, label %if.then422

if.then422:                                       ; preds = %land.lhs.true13.i981, %land.lhs.true.i978, %if.else419
  store %struct.sv* %66, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %and424 = and i32 %67, 262144
  %cmp425 = icmp eq i32 %and424, 0
  br i1 %cmp425, label %cond.false432, label %cond.true427

cond.true427:                                     ; preds = %if.then422
  %sv_any428 = getelementptr inbounds %struct.sv* %66, i64 0, i32 0
  %118 = load i8** %sv_any428, align 8, !tbaa !0
  %xpv_cur429 = getelementptr inbounds i8* %118, i64 8
  %119 = bitcast i8* %xpv_cur429 to i64*
  %120 = load i64* %119, align 8, !tbaa !4
  store i64 %120, i64* %n_a, align 8, !tbaa !4
  %xpv_pv431 = bitcast i8* %118 to i8**
  %121 = load i8** %xpv_pv431, align 8, !tbaa !0
  br label %cond.end434

cond.false432:                                    ; preds = %if.then422
  %call433 = call i8* @Perl_sv_2pv_flags(%struct.sv* %66, i64* %n_a, i32 2) #7
  br label %cond.end434

cond.end434:                                      ; preds = %cond.false432, %cond.true427
  %cond435 = phi i8* [ %121, %cond.true427 ], [ %call433, %cond.false432 ]
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call219, i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i8* %cond435, i8* %cond156) #7
  %122 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool436 = icmp eq i8 %122, 0
  br i1 %tobool436, label %if.end438, label %if.then437

if.then437:                                       ; preds = %cond.end434
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #7
  br label %if.end438

if.end438:                                        ; preds = %cond.end434, %if.then437
  %123 = load i8** %sv_any439, align 8, !tbaa !0
  %xpv_pv440 = bitcast i8* %123 to i8**
  %124 = load i8** %xpv_pv440, align 8, !tbaa !0
  %call441 = call fastcc %struct._PerlIO** @S_doopen_pm(i8* %124) #8
  %tobool442 = icmp eq %struct._PerlIO** %call441, null
  br i1 %tobool442, label %for.inc, label %if.then443

if.then443:                                       ; preds = %if.end438
  %125 = load i8* %124, align 1, !tbaa !1
  %cmp446 = icmp eq i8 %125, 46
  br i1 %cmp446, label %land.lhs.true448, label %if.end460

land.lhs.true448:                                 ; preds = %if.then443
  %arrayidx449 = getelementptr inbounds i8* %124, i64 1
  %126 = load i8* %arrayidx449, align 1, !tbaa !1
  %cmp451 = icmp eq i8 %126, 47
  %add.ptr454 = getelementptr inbounds i8* %124, i64 2
  %add.ptr454. = select i1 %cmp451, i8* %add.ptr454, i8* %124
  br label %if.end460

for.inc:                                          ; preds = %land.lhs.true13.i981, %if.else419, %land.lhs.true.i978, %if.end415, %if.end438, %if.then417
  %tryname.2 = phi i8* [ %79, %if.then417 ], [ %79, %if.end415 ], [ %124, %if.end438 ], [ %tryname.1, %land.lhs.true.i978 ], [ %tryname.1, %if.else419 ], [ %tryname.1, %land.lhs.true13.i981 ]
  %sp.3 = phi %struct.sv** [ %sp.2, %if.then417 ], [ %sp.2, %if.end415 ], [ %sp.0, %if.end438 ], [ %sp.0, %land.lhs.true.i978 ], [ %sp.0, %if.else419 ], [ %sp.0, %land.lhs.true13.i981 ]
  %indvars.iv.next1002 = add i64 %indvars.iv1001, 1
  br label %for.cond

if.end460:                                        ; preds = %if.end406, %cond.end229, %land.lhs.true448, %if.end202, %if.then443
  %hook_sv.0 = phi %struct.sv* [ null, %if.end202 ], [ null, %if.then443 ], [ null, %land.lhs.true448 ], [ %66, %if.end406 ], [ null, %cond.end229 ]
  %filter_sub.4 = phi %struct.sv* [ null, %if.end202 ], [ null, %if.then443 ], [ null, %land.lhs.true448 ], [ %filter_sub.2, %if.end406 ], [ null, %cond.end229 ]
  %filter_state.6 = phi %struct.sv* [ null, %if.end202 ], [ null, %if.then443 ], [ null, %land.lhs.true448 ], [ %filter_state.3, %if.end406 ], [ null, %cond.end229 ]
  %filter_child_proc.6 = phi %struct.gv* [ null, %if.end202 ], [ null, %if.then443 ], [ null, %land.lhs.true448 ], [ %filter_child_proc.3, %if.end406 ], [ null, %cond.end229 ]
  %filter_has_file.4 = phi i64 [ 0, %if.end202 ], [ 0, %if.then443 ], [ 0, %land.lhs.true448 ], [ %filter_has_file.2, %if.end406 ], [ 0, %cond.end229 ]
  %tryrsfp.7 = phi %struct._PerlIO** [ %call201, %if.end202 ], [ %call441, %if.then443 ], [ %call441, %land.lhs.true448 ], [ %tryrsfp.5, %if.end406 ], [ null, %cond.end229 ]
  %namesv.0 = phi %struct.sv* [ null, %if.end202 ], [ %call219, %if.then443 ], [ %call219, %land.lhs.true448 ], [ %call219, %if.end406 ], [ %call219, %cond.end229 ]
  %tryname.3 = phi i8* [ %cond156, %if.end202 ], [ %124, %if.then443 ], [ %add.ptr454., %land.lhs.true448 ], [ %79, %if.end406 ], [ %tryname.1, %cond.end229 ]
  %sp.4 = phi %struct.sv** [ %incdec.ptr, %if.end202 ], [ %sp.0, %if.then443 ], [ %sp.0, %land.lhs.true448 ], [ %sp.2, %if.end406 ], [ %sp.0, %cond.end229 ]
  call void @Perl_save_generic_svref(%struct.sv** bitcast (%struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10) to %struct.sv**)) #7
  %tobool461 = icmp ne %struct._PerlIO** %tryrsfp.7, null
  %cond465 = select i1 %tobool461, i8* %tryname.3, i8* %cond156
  %call466 = call %struct.gv* @Perl_gv_fetchfile(i8* %cond465) #7
  %127 = bitcast %struct.gv* %call466 to %struct.sv*
  store %struct.sv* %127, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool467 = icmp eq %struct.gv* %call466, null
  br i1 %tobool467, label %land.end472, label %land.rhs468

land.rhs468:                                      ; preds = %if.end460
  %128 = getelementptr inbounds %struct.gv* %call466, i64 0, i32 1
  %129 = load i32* %128, align 4, !tbaa !3
  %inc470 = add i32 %129, 1
  store i32 %inc470, i32* %128, align 4, !tbaa !3
  br label %land.end472

land.end472:                                      ; preds = %if.end460, %land.rhs468
  store %struct.gv* %call466, %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %namesv.0) #7
  br i1 %tobool461, label %if.else565, label %if.then475

if.then475:                                       ; preds = %land.end472
  %130 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type476 = getelementptr inbounds %struct.op* %130, i64 0, i32 4
  %131 = load i16* %op_type476, align 2, !tbaa !6
  %cmp478 = icmp eq i16 %131, 309
  br i1 %cmp478, label %if.then480, label %if.end562

if.then480:                                       ; preds = %if.then475
  %tobool481 = icmp eq %struct.sv* %namesv.0, null
  br i1 %tobool481, label %if.end560, label %if.then482

if.then482:                                       ; preds = %if.then480
  %call483 = call %struct.sv* @Perl_newSVpv(i8* %cond156, i64 0) #7
  %call484 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call483) #7
  %call485 = call %struct.sv* @Perl_newSV(i64 0) #7
  %132 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any487 = getelementptr inbounds %struct.gv* %132, i64 0, i32 0
  %133 = load %struct.xpvgv** %sv_any487, align 8, !tbaa !0
  %xgv_gp488 = getelementptr inbounds %struct.xpvgv* %133, i64 0, i32 7
  %134 = load %struct.gp** %xgv_gp488, align 8, !tbaa !0
  %gp_av489 = getelementptr inbounds %struct.gp* %134, i64 0, i32 4
  %135 = load %struct.av** %gp_av489, align 8, !tbaa !0
  %tobool490 = icmp eq %struct.av* %135, null
  br i1 %tobool490, label %cond.false495, label %cond.end500

cond.false495:                                    ; preds = %if.then482
  %call496 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %132) #7
  %sv_any497 = getelementptr inbounds %struct.gv* %call496, i64 0, i32 0
  %136 = load %struct.xpvgv** %sv_any497, align 8, !tbaa !0
  %xgv_gp498 = getelementptr inbounds %struct.xpvgv* %136, i64 0, i32 7
  %137 = load %struct.gp** %xgv_gp498, align 8, !tbaa !0
  %gp_av499 = getelementptr inbounds %struct.gp* %137, i64 0, i32 4
  %138 = load %struct.av** %gp_av499, align 8, !tbaa !0
  br label %cond.end500

cond.end500:                                      ; preds = %if.then482, %cond.false495
  %cond501 = phi %struct.av* [ %138, %cond.false495 ], [ %135, %if.then482 ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %call484, i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0), i64 8, i32 2) #7
  %sv_any503 = getelementptr inbounds %struct.sv* %call484, i64 0, i32 0
  %139 = load i8** %sv_any503, align 8, !tbaa !0
  %xpv_pv504 = bitcast i8* %139 to i8**
  %140 = load i8** %xpv_pv504, align 8, !tbaa !0
  %call505 = call i8* @Perl_instr(i8* %140, i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0)) #7
  %tobool506 = icmp eq i8* %call505, null
  br i1 %tobool506, label %if.end508, label %if.then507

if.then507:                                       ; preds = %cond.end500
  call void @Perl_sv_catpv(%struct.sv* %call484, i8* getelementptr inbounds ([27 x i8]* @.str60, i64 0, i64 0)) #7
  br label %if.end508

if.end508:                                        ; preds = %cond.end500, %if.then507
  %141 = load i8** %sv_any503, align 8, !tbaa !0
  %xpv_pv510 = bitcast i8* %141 to i8**
  %142 = load i8** %xpv_pv510, align 8, !tbaa !0
  %call511 = call i8* @Perl_instr(i8* %142, i8* getelementptr inbounds ([5 x i8]* @.str61, i64 0, i64 0)) #7
  %tobool512 = icmp eq i8* %call511, null
  br i1 %tobool512, label %if.end514, label %if.then513

if.then513:                                       ; preds = %if.end508
  call void @Perl_sv_catpv(%struct.sv* %call484, i8* getelementptr inbounds ([21 x i8]* @.str62, i64 0, i64 0)) #7
  br label %if.end514

if.end514:                                        ; preds = %if.end508, %if.then513
  call void @Perl_sv_catpv(%struct.sv* %call484, i8* getelementptr inbounds ([17 x i8]* @.str63, i64 0, i64 0)) #7
  %143 = getelementptr inbounds %struct.av* %cond501, i64 0, i32 2
  %sv_any524 = getelementptr inbounds %struct.av* %cond501, i64 0, i32 0
  %144 = bitcast %struct.av* %cond501 to %struct.sv*
  br label %for.cond515

for.cond515:                                      ; preds = %cond.end544, %if.end514
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end544 ], [ 0, %if.end514 ]
  %145 = load i32* %143, align 4, !tbaa !3
  %and518 = and i32 %145, 32768
  %tobool519 = icmp eq i32 %and518, 0
  br i1 %tobool519, label %cond.false523, label %cond.true520

cond.true520:                                     ; preds = %for.cond515
  %call521 = call i32 @Perl_mg_size(%struct.sv* %144) #7
  %conv522 = sext i32 %call521 to i64
  br label %cond.end526

cond.false523:                                    ; preds = %for.cond515
  %146 = load %struct.xpvav** %sv_any524, align 8, !tbaa !0
  %xav_fill525 = getelementptr inbounds %struct.xpvav* %146, i64 0, i32 1
  %147 = load i64* %xav_fill525, align 8, !tbaa !4
  br label %cond.end526

cond.end526:                                      ; preds = %cond.false523, %cond.true520
  %cond527 = phi i64 [ %conv522, %cond.true520 ], [ %147, %cond.false523 ]
  %cmp528 = icmp sgt i64 %indvars.iv, %cond527
  br i1 %cmp528, label %for.end548, label %for.body530

for.body530:                                      ; preds = %cond.end526
  %148 = trunc i64 %indvars.iv to i32
  %call532 = call %struct.sv** @Perl_av_fetch(%struct.av* %cond501, i32 %148, i32 1) #7
  %149 = load %struct.sv** %call532, align 8, !tbaa !0
  store %struct.sv* %149, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags533 = getelementptr inbounds %struct.sv* %149, i64 0, i32 2
  %150 = load i32* %sv_flags533, align 4, !tbaa !3
  %and534 = and i32 %150, 262144
  %cmp535 = icmp eq i32 %and534, 0
  br i1 %cmp535, label %cond.false542, label %cond.true537

cond.true537:                                     ; preds = %for.body530
  %sv_any538 = getelementptr inbounds %struct.sv* %149, i64 0, i32 0
  %151 = load i8** %sv_any538, align 8, !tbaa !0
  %xpv_cur539 = getelementptr inbounds i8* %151, i64 8
  %152 = bitcast i8* %xpv_cur539 to i64*
  %153 = load i64* %152, align 8, !tbaa !4
  store i64 %153, i64* %n_a, align 8, !tbaa !4
  %xpv_pv541 = bitcast i8* %151 to i8**
  %154 = load i8** %xpv_pv541, align 8, !tbaa !0
  br label %cond.end544

cond.false542:                                    ; preds = %for.body530
  %call543 = call i8* @Perl_sv_2pv_flags(%struct.sv* %149, i64* %n_a, i32 2) #7
  br label %cond.end544

cond.end544:                                      ; preds = %cond.false542, %cond.true537
  %cond545 = phi i8* [ %154, %cond.true537 ], [ %call543, %cond.false542 ]
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call485, i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0), i8* %cond545) #7
  call void @Perl_sv_catsv_flags(%struct.sv* %call484, %struct.sv* %call485, i32 2) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.cond515

for.end548:                                       ; preds = %cond.end526
  call void @Perl_sv_catpvn_flags(%struct.sv* %call484, i8* getelementptr inbounds ([2 x i8]* @.str65, i64 0, i64 0), i64 1, i32 2) #7
  call void @Perl_sv_free(%struct.sv* %call485) #7
  %sv_flags549 = getelementptr inbounds %struct.sv* %call484, i64 0, i32 2
  %155 = load i32* %sv_flags549, align 4, !tbaa !3
  %and550 = and i32 %155, 262144
  %cmp551 = icmp eq i32 %and550, 0
  br i1 %cmp551, label %cond.false556, label %cond.true553

cond.true553:                                     ; preds = %for.end548
  %156 = load i8** %sv_any503, align 8, !tbaa !0
  %xpv_pv555 = bitcast i8* %156 to i8**
  %157 = load i8** %xpv_pv555, align 8, !tbaa !0
  br label %if.end560

cond.false556:                                    ; preds = %for.end548
  %call557 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %call484) #7
  br label %if.end560

if.end560:                                        ; preds = %cond.true553, %cond.false556, %if.then480
  %msgstr.0 = phi i8* [ %cond156, %if.then480 ], [ %157, %cond.true553 ], [ %call557, %cond.false556 ]
  %call561 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0), i8* %msgstr.0) #7
  br label %return

if.end562:                                        ; preds = %if.then475
  %incdec.ptr563 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr563, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr563, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %158 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next564 = getelementptr inbounds %struct.op* %158, i64 0, i32 0
  %159 = load %struct.op** %op_next564, align 8, !tbaa !0
  br label %return

if.else565:                                       ; preds = %land.end472
  %call566 = call i32* @__errno_location() #7
  store i32 0, i32* %call566, align 4, !tbaa !3
  %call568 = call i64 @strlen(i8* %cond156) #7
  store i64 %call568, i64* %len, align 8, !tbaa !4
  %tobool569 = icmp ne %struct.sv* %hook_sv.0, null
  br i1 %tobool569, label %lor.lhs.false570, label %if.then589

lor.lhs.false570:                                 ; preds = %if.else565
  %160 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any571 = getelementptr inbounds %struct.gv* %160, i64 0, i32 0
  %161 = load %struct.xpvgv** %sv_any571, align 8, !tbaa !0
  %xgv_gp572 = getelementptr inbounds %struct.xpvgv* %161, i64 0, i32 7
  %162 = load %struct.gp** %xgv_gp572, align 8, !tbaa !0
  %gp_hv573 = getelementptr inbounds %struct.gp* %162, i64 0, i32 5
  %163 = load %struct.hv** %gp_hv573, align 8, !tbaa !0
  %tobool574 = icmp eq %struct.hv* %163, null
  br i1 %tobool574, label %cond.false579, label %cond.end584

cond.false579:                                    ; preds = %lor.lhs.false570
  %call580 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %160) #7
  %sv_any581 = getelementptr inbounds %struct.gv* %call580, i64 0, i32 0
  %164 = load %struct.xpvgv** %sv_any581, align 8, !tbaa !0
  %xgv_gp582 = getelementptr inbounds %struct.xpvgv* %164, i64 0, i32 7
  %165 = load %struct.gp** %xgv_gp582, align 8, !tbaa !0
  %gp_hv583 = getelementptr inbounds %struct.gp* %165, i64 0, i32 5
  %166 = load %struct.hv** %gp_hv583, align 8, !tbaa !0
  %.pre1006 = load i64* %len, align 8, !tbaa !4
  br label %cond.end584

cond.end584:                                      ; preds = %lor.lhs.false570, %cond.false579
  %167 = phi i64 [ %.pre1006, %cond.false579 ], [ %call568, %lor.lhs.false570 ]
  %cond585 = phi %struct.hv* [ %166, %cond.false579 ], [ %163, %lor.lhs.false570 ]
  %conv586 = trunc i64 %167 to i32
  %call587 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond585, i8* %cond156, i32 %conv586, i32 0) #7
  %tobool588 = icmp eq %struct.sv** %call587, null
  br i1 %tobool588, label %if.then589, label %if.end640

if.then589:                                       ; preds = %cond.end584, %if.else565
  %168 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any590 = getelementptr inbounds %struct.gv* %168, i64 0, i32 0
  %169 = load %struct.xpvgv** %sv_any590, align 8, !tbaa !0
  %xgv_gp591 = getelementptr inbounds %struct.xpvgv* %169, i64 0, i32 7
  %170 = load %struct.gp** %xgv_gp591, align 8, !tbaa !0
  %gp_hv592 = getelementptr inbounds %struct.gp* %170, i64 0, i32 5
  %171 = load %struct.hv** %gp_hv592, align 8, !tbaa !0
  %tobool593 = icmp eq %struct.hv* %171, null
  br i1 %tobool593, label %cond.false598, label %cond.end603

cond.false598:                                    ; preds = %if.then589
  %call599 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %168) #7
  %sv_any600 = getelementptr inbounds %struct.gv* %call599, i64 0, i32 0
  %172 = load %struct.xpvgv** %sv_any600, align 8, !tbaa !0
  %xgv_gp601 = getelementptr inbounds %struct.xpvgv* %172, i64 0, i32 7
  %173 = load %struct.gp** %xgv_gp601, align 8, !tbaa !0
  %gp_hv602 = getelementptr inbounds %struct.gp* %173, i64 0, i32 5
  %174 = load %struct.hv** %gp_hv602, align 8, !tbaa !0
  br label %cond.end603

cond.end603:                                      ; preds = %if.then589, %cond.false598
  %cond604 = phi %struct.hv* [ %174, %cond.false598 ], [ %171, %if.then589 ]
  %175 = load i64* %len, align 8, !tbaa !4
  %conv605 = trunc i64 %175 to i32
  br i1 %tobool569, label %cond.true607, label %cond.false615

cond.true607:                                     ; preds = %cond.end603
  store %struct.sv* %hook_sv.0, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt610 = getelementptr inbounds %struct.sv* %hook_sv.0, i64 0, i32 1
  %176 = load i32* %sv_refcnt610, align 4, !tbaa !3
  %inc611 = add i32 %176, 1
  store i32 %inc611, i32* %sv_refcnt610, align 4, !tbaa !3
  br label %cond.end637

cond.false615:                                    ; preds = %cond.end603
  %177 = load %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  %tobool616 = icmp eq %struct.gv* %177, null
  br i1 %tobool616, label %cond.end634, label %cond.true617

cond.true617:                                     ; preds = %cond.false615
  %sv_any618 = getelementptr inbounds %struct.gv* %177, i64 0, i32 0
  %178 = load %struct.xpvgv** %sv_any618, align 8, !tbaa !0
  %xgv_gp619 = getelementptr inbounds %struct.xpvgv* %178, i64 0, i32 7
  %179 = load %struct.gp** %xgv_gp619, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %179, i64 0, i32 0
  %180 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool620 = icmp eq %struct.sv* %180, null
  br i1 %tobool620, label %cond.end634, label %cond.true622

cond.true622:                                     ; preds = %cond.true617
  %sv_any631 = getelementptr inbounds %struct.sv* %180, i64 0, i32 0
  %181 = load i8** %sv_any631, align 8, !tbaa !0
  %xpv_pv632 = bitcast i8* %181 to i8**
  %182 = load i8** %xpv_pv632, align 8, !tbaa !0
  br label %cond.end634

cond.end634:                                      ; preds = %cond.true617, %cond.false615, %cond.true622
  %cond635 = phi i8* [ %182, %cond.true622 ], [ null, %cond.false615 ], [ null, %cond.true617 ]
  %call636 = call %struct.sv* @Perl_newSVpv(i8* %cond635, i64 0) #7
  br label %cond.end637

cond.end637:                                      ; preds = %cond.end634, %cond.true607
  %cond638 = phi %struct.sv* [ %hook_sv.0, %cond.true607 ], [ %call636, %cond.end634 ]
  %call639 = call %struct.sv** @Perl_hv_store(%struct.hv* %cond604, i8* %cond156, i32 %conv605, %struct.sv* %cond638, i32 0) #7
  br label %if.end640

if.end640:                                        ; preds = %cond.end584, %cond.end637
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %183 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %183, i32* @PL_tmps_floor, align 4, !tbaa !3
  %call641 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0), i64 0) #7
  %call642 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call641) #7
  call void @Perl_lex_start(%struct.sv* %call642) #7
  call void @Perl_save_generic_svref(%struct.sv** bitcast (%struct.av** @PL_rsfp_filters to %struct.sv**)) #7
  store %struct.av* null, %struct.av** @PL_rsfp_filters, align 8, !tbaa !0
  store volatile %struct._PerlIO** %tryrsfp.7, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %184 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add643 = add nsw i32 %184, 3
  %185 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp644 = icmp sgt i32 %add643, %185
  br i1 %cmp644, label %if.then646, label %if.end647

if.then646:                                       ; preds = %if.end640
  call void @Perl_savestack_grow() #7
  br label %if.end647

if.end647:                                        ; preds = %if.then646, %if.end640
  %186 = load i32* @PL_hints, align 4, !tbaa !3
  %and648 = and i32 %186, 131072
  %tobool649 = icmp eq i32 %and648, 0
  br i1 %tobool649, label %if.end664, label %if.then650

if.then650:                                       ; preds = %if.end647
  %187 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any651 = getelementptr inbounds %struct.gv* %187, i64 0, i32 0
  %188 = load %struct.xpvgv** %sv_any651, align 8, !tbaa !0
  %xgv_gp652 = getelementptr inbounds %struct.xpvgv* %188, i64 0, i32 7
  %189 = load %struct.gp** %xgv_gp652, align 8, !tbaa !0
  %gp_hv653 = getelementptr inbounds %struct.gp* %189, i64 0, i32 5
  %190 = load %struct.hv** %gp_hv653, align 8, !tbaa !0
  %191 = bitcast %struct.hv* %190 to i8*
  %192 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc654 = add nsw i32 %192, 1
  store i32 %inc654, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom655 = sext i32 %192 to i64
  %193 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %193, i64 %idxprom655, i32 0
  store i8* %191, i8** %any_ptr, align 8, !tbaa !0
  %194 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any657 = getelementptr inbounds %struct.gv* %194, i64 0, i32 0
  %195 = load %struct.xpvgv** %sv_any657, align 8, !tbaa !0
  %xgv_gp658 = getelementptr inbounds %struct.xpvgv* %195, i64 0, i32 7
  %196 = load %struct.gp** %xgv_gp658, align 8, !tbaa !0
  %gp_hv659 = getelementptr inbounds %struct.gp* %196, i64 0, i32 5
  %197 = load %struct.hv** %gp_hv659, align 8, !tbaa !0
  %call660 = call %struct.hv* @Perl_newHVhv(%struct.hv* %197) #7
  %198 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any661 = getelementptr inbounds %struct.gv* %198, i64 0, i32 0
  %199 = load %struct.xpvgv** %sv_any661, align 8, !tbaa !0
  %xgv_gp662 = getelementptr inbounds %struct.xpvgv* %199, i64 0, i32 7
  %200 = load %struct.gp** %xgv_gp662, align 8, !tbaa !0
  %gp_hv663 = getelementptr inbounds %struct.gp* %200, i64 0, i32 5
  store %struct.hv* %call660, %struct.hv** %gp_hv663, align 8, !tbaa !0
  %.pre1007 = load i32* @PL_hints, align 4, !tbaa !3
  br label %if.end664

if.end664:                                        ; preds = %if.end647, %if.then650
  %201 = phi i32 [ %.pre1007, %if.then650 ], [ %186, %if.end647 ]
  %202 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc665 = add nsw i32 %202, 1
  store i32 %inc665, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom666 = sext i32 %202 to i64
  %203 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx667 = getelementptr inbounds %union.any* %203, i64 %idxprom666
  %any_i32 = bitcast %union.any* %arrayidx667 to i32*
  store i32 %201, i32* %any_i32, align 4, !tbaa !3
  %204 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc668 = add nsw i32 %204, 1
  store i32 %inc668, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom669 = sext i32 %204 to i64
  %arrayidx670 = getelementptr inbounds %union.any* %203, i64 %idxprom669
  %any_i32671 = bitcast %union.any* %arrayidx670 to i32*
  store i32 27, i32* %any_i32671, align 4, !tbaa !3
  store i32 0, i32* @PL_hints, align 4, !tbaa !3
  call void @Perl_save_sptr(%struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14)) #7
  %205 = load i8* @PL_dowarn, align 1, !tbaa !1
  %conv672 = zext i8 %205 to i32
  %and673 = and i32 %conv672, 2
  %tobool674 = icmp eq i32 %and673, 0
  br i1 %tobool674, label %if.else676, label %if.then675

if.then675:                                       ; preds = %if.end664
  store %struct.sv* inttoptr (i64 16 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end688

if.else676:                                       ; preds = %if.end664
  %and678 = and i32 %conv672, 4
  %tobool679 = icmp eq i32 %and678, 0
  br i1 %tobool679, label %if.else681, label %if.then680

if.then680:                                       ; preds = %if.else676
  store %struct.sv* inttoptr (i64 32 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end688

if.else681:                                       ; preds = %if.else676
  %206 = load i8* @PL_taint_warn, align 1, !tbaa !1
  %tobool682 = icmp eq i8 %206, 0
  br i1 %tobool682, label %if.else685, label %if.then683

if.then683:                                       ; preds = %if.else681
  %call684 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([13 x i8]* @.str67, i64 0, i64 0), i64 12) #7
  store %struct.sv* %call684, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end688

if.else685:                                       ; preds = %if.else681
  store %struct.sv* null, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end688

if.end688:                                        ; preds = %if.then680, %if.else685, %if.then683, %if.then675
  call void @Perl_save_sptr(%struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15)) #7
  store %struct.sv* null, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  %tobool689 = icmp eq %struct.sv* %filter_sub.4, null
  %tobool691 = icmp eq %struct.gv* %filter_child_proc.6, null
  %or.cond975 = and i1 %tobool689, %tobool691
  br i1 %or.cond975, label %if.end699, label %if.then692

if.then692:                                       ; preds = %if.end688
  %call693 = call %struct.sv* @Perl_filter_add(i32 (i32, %struct.sv*, i32)* @run_user_filter, %struct.sv* null) #7
  %conv694 = ashr exact i64 %filter_has_file.4, 32
  %sv_any695 = getelementptr inbounds %struct.sv* %call693, i64 0, i32 0
  %207 = load i8** %sv_any695, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds i8* %207, i64 80
  %208 = bitcast i8* %xio_lines to i64*
  store i64 %conv694, i64* %208, align 8, !tbaa !4
  %xio_fmt_gv = getelementptr inbounds i8* %207, i64 136
  %209 = bitcast i8* %xio_fmt_gv to %struct.gv**
  store %struct.gv* %filter_child_proc.6, %struct.gv** %209, align 8, !tbaa !0
  %210 = bitcast %struct.sv* %filter_state.6 to %struct.gv*
  %211 = load i8** %sv_any695, align 8, !tbaa !0
  %xio_top_gv = getelementptr inbounds i8* %211, i64 120
  %212 = bitcast i8* %xio_top_gv to %struct.gv**
  store %struct.gv* %210, %struct.gv** %212, align 8, !tbaa !0
  %213 = bitcast %struct.sv* %filter_sub.4 to %struct.gv*
  %214 = load i8** %sv_any695, align 8, !tbaa !0
  %xio_bottom_gv = getelementptr inbounds i8* %214, i64 152
  %215 = bitcast i8* %xio_bottom_gv to %struct.gv**
  store %struct.gv* %213, %struct.gv** %215, align 8, !tbaa !0
  br label %if.end699

if.end699:                                        ; preds = %if.end688, %if.then692
  %216 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next700 = getelementptr inbounds %struct.op* %216, i64 0, i32 0
  %217 = load %struct.op** %op_next700, align 8, !tbaa !0
  call void @Perl_push_return(%struct.op* %217) #7
  %218 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %218, i64 0, i32 2
  %219 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %218, i64 0, i32 3
  %220 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp701 = icmp slt i32 %219, %220
  br i1 %cmp701, label %cond.true703, label %cond.false706

cond.true703:                                     ; preds = %if.end699
  %inc705 = add nsw i32 %219, 1
  store i32 %inc705, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end709

cond.false706:                                    ; preds = %if.end699
  %call707 = call i32 @Perl_cxinc() #7
  %221 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix708 = getelementptr inbounds %struct.stackinfo* %221, i64 0, i32 2
  store i32 %call707, i32* %si_cxix708, align 4, !tbaa !3
  br label %cond.end709

cond.end709:                                      ; preds = %cond.false706, %cond.true703
  %222 = phi i32 [ %call707, %cond.false706 ], [ %inc705, %cond.true703 ]
  %223 = phi %struct.stackinfo* [ %221, %cond.false706 ], [ %218, %cond.true703 ]
  %idxprom712 = sext i32 %222 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %223, i64 0, i32 1
  %224 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 0
  store i32 2, i32* %cx_type, align 4, !tbaa !3
  %225 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast714 = ptrtoint %struct.sv** %sp.4 to i64
  %sub.ptr.rhs.cast715 = ptrtoint %struct.sv** %225 to i64
  %sub.ptr.sub716 = sub i64 %sub.ptr.lhs.cast714, %sub.ptr.rhs.cast715
  %sub.ptr.div717966 = lshr exact i64 %sub.ptr.sub716, 3
  %conv718 = trunc i64 %sub.ptr.div717966 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 0
  store i32 %conv718, i32* %blku_oldsp, align 4, !tbaa !3
  %226 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 1
  store %struct.cop* %226, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %227 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %228 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast721 = ptrtoint i32* %227 to i64
  %sub.ptr.rhs.cast722 = ptrtoint i32* %228 to i64
  %sub.ptr.sub723 = sub i64 %sub.ptr.lhs.cast721, %sub.ptr.rhs.cast722
  %sub.ptr.div724967 = lshr exact i64 %sub.ptr.sub723, 2
  %conv725 = trunc i64 %sub.ptr.div724967 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 3
  store i32 %conv725, i32* %blku_oldmarksp, align 4, !tbaa !3
  %229 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 4
  store i32 %229, i32* %blku_oldscopesp, align 4, !tbaa !3
  %230 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 2
  store i32 %230, i32* %blku_oldretsp, align 4, !tbaa !3
  %231 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 5
  store %struct.pmop* %231, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %conv734 = trunc i32 %cond19 to i8
  %blku_gimme = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 6
  store i8 %conv734, i8* %blku_gimme, align 1, !tbaa !1
  %232 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %blk_u = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  store i32 %232, i32* %old_in_eval, align 4, !tbaa !3
  %233 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type739 = getelementptr inbounds %struct.op* %233, i64 0, i32 4
  %234 = load i16* %op_type739, align 2, !tbaa !6
  %conv740 = zext i16 %234 to i32
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  store i32 %conv740, i32* %old_op_type, align 4, !tbaa !3
  br i1 %tobool157, label %cond.true746, label %cond.end749

cond.true746:                                     ; preds = %cond.end709
  %call747 = call %struct.sv* @Perl_newSVpv(i8* %cond156, i64 0) #7
  br label %cond.end749

cond.end749:                                      ; preds = %cond.end709, %cond.true746
  %cond750 = phi %struct.sv* [ %call747, %cond.true746 ], [ null, %cond.end709 ]
  %old_namesv = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 7, i32 0, i32 1
  %235 = bitcast i32* %old_namesv to %struct.sv**
  store %struct.sv* %cond750, %struct.sv** %235, align 8, !tbaa !0
  %236 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %237 = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %236, %struct.op** %237, align 8, !tbaa !0
  %238 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %cur_text = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c = bitcast %struct.sv* %238 to %struct.op*
  store %struct.op* %.c, %struct.op** %cur_text, align 8, !tbaa !0
  %cv = getelementptr inbounds %struct.context* %224, i64 %idxprom712, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* null, %struct.op** %cv, align 8, !tbaa !0
  call void @Perl_save_I32(i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13)) #7
  store i32 0, i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13), align 8, !tbaa !3
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %239 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_encoding, align 8, !tbaa !0
  %240 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %240, i64 0, i32 3
  %241 = load i8* %je_mustcatch, align 1, !tbaa !1
  %cmp768 = icmp eq i8 %241, 1
  %242 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_seq = getelementptr inbounds %struct.cop* %242, i64 0, i32 11
  %243 = load i32* %cop_seq, align 4, !tbaa !3
  %call771 = call fastcc %struct.op* @S_doeval(i32 %cond19, %struct.op** null, %struct.cv* null, i32 %243) #8
  br i1 %cmp768, label %cond.true770, label %cond.end776

cond.true770:                                     ; preds = %cond.end749
  %call772 = call fastcc %struct.op* @S_docatch(%struct.op* %call771) #8
  br label %cond.end776

cond.end776:                                      ; preds = %cond.end749, %cond.true770
  %cond777 = phi %struct.op* [ %call772, %cond.true770 ], [ %call771, %cond.end749 ]
  store %struct.sv* %239, %struct.sv** @PL_encoding, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %cond.end776, %if.end562, %if.end560, %if.then194, %if.then164, %if.end138, %if.else136, %if.then134, %if.end83, %if.then81
  %retval.0 = phi %struct.op* [ %call82, %if.then81 ], [ %20, %if.end83 ], [ %49, %if.then194 ], [ %cond777, %cond.end776 ], [ %call561, %if.end560 ], [ %159, %if.end562 ], [ %call165, %if.then164 ], [ %call135, %if.then134 ], [ %call137, %if.else136 ], [ %29, %if.end138 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #1

; Function Attrs: optsize
declare void @Perl_taint_proper(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._PerlIO** @S_doopen_pm(i8* %name) #0 {
entry:
  %pmstat = alloca %struct.stat, align 8
  %pmcstat = alloca %struct.stat, align 8
  %call = call i64 @strlen(i8* %name) #7
  %cmp = icmp ugt i64 %call, 3
  br i1 %cmp, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %entry
  %add.ptr.sum = add i64 %call, -3
  %add.ptr1 = getelementptr inbounds i8* %name, i64 %add.ptr.sum
  %call2 = call i32 @strcmp(i8* %add.ptr1, i8* getelementptr inbounds ([4 x i8]* @.str75, i64 0, i64 0)) #7
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else20

if.then:                                          ; preds = %land.lhs.true
  %call3 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([5 x i8]* @.str76, i64 0, i64 0), i8* %name, i32 99) #7
  %sv_flags = getelementptr inbounds %struct.sv* %call3, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %call3, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %1 to i8**
  %2 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call5 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %call3) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ %call5, %cond.false ]
  %3 = bitcast %struct.stat* %pmstat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %3) #4
  %4 = bitcast %struct.stat* %pmcstat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %4) #4
  %call6 = call i32 @stat(i8* %cond, %struct.stat* %pmcstat) #7
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %cond.end
  %call9 = call %struct._PerlIO** @PerlIO_open(i8* %name, i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0)) #7
  br label %if.end19

if.else:                                          ; preds = %cond.end
  %call10 = call i32 @stat(i8* %name, %struct.stat* %pmstat) #7
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %tv_sec = getelementptr inbounds %struct.stat* %pmstat, i64 0, i32 12, i32 0
  %5 = load i64* %tv_sec, align 8, !tbaa !4
  %tv_sec13 = getelementptr inbounds %struct.stat* %pmcstat, i64 0, i32 12, i32 0
  %6 = load i64* %tv_sec13, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %5, %6
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %lor.lhs.false, %if.else
  %call16 = call %struct._PerlIO** @PerlIO_open(i8* %cond, i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0)) #7
  br label %if.end19

if.else17:                                        ; preds = %lor.lhs.false
  %call18 = call %struct._PerlIO** @PerlIO_open(i8* %name, i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0)) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.else17, %if.then8
  %fp.0 = phi %struct._PerlIO** [ %call9, %if.then8 ], [ %call16, %if.then15 ], [ %call18, %if.else17 ]
  call void @Perl_sv_free(%struct.sv* %call3) #7
  call void @llvm.lifetime.end(i64 144, i8* %4) #4
  call void @llvm.lifetime.end(i64 144, i8* %3) #4
  br label %if.end22

if.else20:                                        ; preds = %land.lhs.true, %entry
  %call21 = call %struct._PerlIO** @PerlIO_open(i8* %name, i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0)) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.end19
  %fp.1 = phi %struct._PerlIO** [ %call21, %if.else20 ], [ %fp.0, %if.end19 ]
  ret %struct._PerlIO** %fp.1
}

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_open(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @Perl_instr(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_filter_add(i32 (i32, %struct.sv*, i32)*, %struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @run_user_filter(i32 %idx, %struct.sv* %buf_sv, i32 %maxlen) #0 {
entry:
  %idxprom = sext i32 %idx to i64
  %0 = load %struct.av** @PL_rsfp_filters, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !0
  %3 = bitcast i8* %2 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_any1 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any1, align 8, !tbaa !0
  %xio_lines = getelementptr inbounds i8* %5, i64 80
  %6 = bitcast i8* %xio_lines to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  %conv = trunc i64 %7 to i32
  %xio_fmt_gv = getelementptr inbounds i8* %5, i64 136
  %8 = bitcast i8* %xio_fmt_gv to %struct.gv**
  %9 = load %struct.gv** %8, align 8, !tbaa !0
  %xio_top_gv = getelementptr inbounds i8* %5, i64 120
  %10 = bitcast i8* %xio_top_gv to %struct.gv**
  %11 = load %struct.gv** %10, align 8, !tbaa !0
  %12 = bitcast %struct.gv* %11 to %struct.sv*
  %xio_bottom_gv = getelementptr inbounds i8* %5, i64 152
  %13 = bitcast i8* %xio_bottom_gv to %struct.gv**
  %14 = load %struct.gv** %13, align 8, !tbaa !0
  %15 = bitcast %struct.gv* %14 to %struct.sv*
  %tobool = icmp eq i32 %conv, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add = add nsw i32 %idx, 1
  %call = tail call i32 @Perl_filter_read(i32 %add, %struct.sv* %buf_sv, i32 %maxlen) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %tobool5 = icmp ne %struct.gv* %14, null
  %cmp = icmp sgt i32 %len.0, -1
  %or.cond = and i1 %tobool5, %cmp
  br i1 %or.cond, label %if.then7, label %if.end53

if.then7:                                         ; preds = %if.end
  %16 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #7
  %17 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %17, i64 0, i32 0
  %18 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %19, i64 0, i32 0
  tail call void @Perl_save_sptr(%struct.sv** %gp_sv) #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %20 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %20, i32* @PL_tmps_floor, align 4, !tbaa !3
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp9 = icmp slt i64 %sub.ptr.sub, 16
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %16, %struct.sv** %16, i32 2) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then7
  %sp.0 = phi %struct.sv** [ %call12, %if.then11 ], [ %16, %if.then7 ]
  %22 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any14 = getelementptr inbounds %struct.gv* %22, i64 0, i32 0
  %23 = load %struct.xpvgv** %sv_any14, align 8, !tbaa !0
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv* %23, i64 0, i32 7
  %24 = load %struct.gp** %xgv_gp15, align 8, !tbaa !0
  %gp_sv16 = getelementptr inbounds %struct.gp* %24, i64 0, i32 0
  store %struct.sv* %buf_sv, %struct.sv** %gp_sv16, align 8, !tbaa !0
  %25 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %25, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %26 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp17 = icmp eq i32* %incdec.ptr, %26
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  tail call void @Perl_markstack_grow() #7
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end13
  %27 = phi i32* [ %.pre, %if.then19 ], [ %incdec.ptr, %if.end13 ]
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast21 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast22 = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %sub.ptr.div24104 = lshr exact i64 %sub.ptr.sub23, 3
  %conv25 = trunc i64 %sub.ptr.div24104 to i32
  store i32 %conv25, i32* %27, align 4, !tbaa !3
  %conv26 = sext i32 %maxlen to i64
  %call27 = tail call %struct.sv* @Perl_newSViv(i64 %conv26) #7
  %call28 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call27) #7
  %incdec.ptr29 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call28, %struct.sv** %incdec.ptr29, align 8, !tbaa !0
  %tobool30 = icmp eq %struct.gv* %11, null
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end20
  %incdec.ptr32 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %12, %struct.sv** %incdec.ptr32, align 8, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %if.end20, %if.then31
  %sp.1 = phi %struct.sv** [ %incdec.ptr32, %if.then31 ], [ %incdec.ptr29, %if.end20 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call34 = tail call i32 @Perl_call_sv(%struct.sv* %15, i32 0) #7
  %29 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp35 = icmp sgt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end48

if.then37:                                        ; preds = %if.end33
  %incdec.ptr38 = getelementptr inbounds %struct.sv** %29, i64 -1
  %30 = load %struct.sv** %29, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %30, i64 0, i32 2
  %31 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %31, 118423552
  %tobool39 = icmp eq i32 %and, 0
  br i1 %tobool39, label %if.end48, label %if.then40

if.then40:                                        ; preds = %if.then37
  %and42 = and i32 %31, 65536
  %tobool43 = icmp eq i32 %and42, 0
  br i1 %tobool43, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then40
  %sv_any44 = getelementptr inbounds %struct.sv* %30, i64 0, i32 0
  %32 = load i8** %sv_any44, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %32, i64 24
  %33 = bitcast i8* %xiv_iv to i64*
  %34 = load i64* %33, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then40
  %call45 = tail call i64 @Perl_sv_2iv(%struct.sv* %30) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ %call45, %cond.false ]
  %conv46 = trunc i64 %cond to i32
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %cond.end, %if.end33
  %sp.2 = phi %struct.sv** [ %incdec.ptr38, %cond.end ], [ %incdec.ptr38, %if.then37 ], [ %29, %if.end33 ]
  %len.1 = phi i32 [ %conv46, %cond.end ], [ %len.0, %if.then37 ], [ %len.0, %if.end33 ]
  store %struct.sv** %sp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %35 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %36 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp49 = icmp sgt i32 %35, %36
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  tail call void @Perl_free_tmps() #7
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  tail call void @Perl_pop_scope() #7
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end
  %len.2 = phi i32 [ %len.1, %if.end52 ], [ %len.0, %if.end ]
  %cmp54 = icmp slt i32 %len.2, 1
  br i1 %cmp54, label %if.then56, label %if.end74

if.then56:                                        ; preds = %if.end53
  %37 = load i8** %sv_any1, align 8, !tbaa !0
  %xio_lines58 = getelementptr inbounds i8* %37, i64 80
  %38 = bitcast i8* %xio_lines58 to i64*
  store i64 0, i64* %38, align 8, !tbaa !4
  %tobool59 = icmp eq %struct.gv* %9, null
  br i1 %tobool59, label %if.end63, label %if.then60

if.then60:                                        ; preds = %if.then56
  %39 = bitcast %struct.gv* %9 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %39) #7
  %40 = load i8** %sv_any1, align 8, !tbaa !0
  %xio_fmt_gv62 = getelementptr inbounds i8* %40, i64 136
  %41 = bitcast i8* %xio_fmt_gv62 to %struct.gv**
  store %struct.gv* null, %struct.gv** %41, align 8, !tbaa !0
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.then60
  %tobool64 = icmp eq %struct.gv* %11, null
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end63
  tail call void @Perl_sv_free(%struct.sv* %12) #7
  %42 = load i8** %sv_any1, align 8, !tbaa !0
  %xio_top_gv67 = getelementptr inbounds i8* %42, i64 120
  %43 = bitcast i8* %xio_top_gv67 to %struct.gv**
  store %struct.gv* null, %struct.gv** %43, align 8, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %if.then65
  br i1 %tobool5, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end68
  tail call void @Perl_sv_free(%struct.sv* %15) #7
  %44 = load i8** %sv_any1, align 8, !tbaa !0
  %xio_bottom_gv72 = getelementptr inbounds i8* %44, i64 152
  %45 = bitcast i8* %xio_bottom_gv72 to %struct.gv**
  store %struct.gv* null, %struct.gv** %45, align 8, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68
  tail call void @Perl_filter_del(i32 (i32, %struct.sv*, i32)* @run_user_filter) #7
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end53
  ret i32 %len.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.op* @S_docatch(%struct.op* %o) #0 {
entry:
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %2 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %2) #4
  store %struct.op* %o, %struct.op** @PL_op, align 8, !tbaa !0
  %call = call %struct.op* @Perl_pop_return() #7
  call void @Perl_push_return(%struct.op* null) #7
  %3 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  store %struct.jmpenv* %3, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %call1 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  store i32 %call1, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  store i8 0, i8* %je_mustcatch, align 4, !tbaa !1
  switch i32 %call1, label %sw.default [
    i32 0, label %redo_body
    i32 3, label %sw.bb4
  ]

redo_body:                                        ; preds = %entry, %if.then
  %4 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %call.i = call i32 %4() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool = icmp ne %struct.op* %5, null
  %6 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %cmp = icmp eq %struct.stackinfo* %1, %6
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb4
  store %struct.op* %5, %struct.op** @PL_op, align 8, !tbaa !0
  store %struct.op* null, %struct.op** @PL_restartop, align 8, !tbaa !0
  br label %redo_body

if.end:                                           ; preds = %sw.bb4
  %tobool5 = icmp eq %struct.op* %5, null
  br i1 %tobool5, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end, %entry
  %7 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %7, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  store %struct.op* %0, %struct.op** @PL_op, align 8, !tbaa !0
  %je_prev9 = getelementptr inbounds %struct.jmpenv* %7, i64 0, i32 1
  %8 = load %struct.jmpenv** %je_prev9, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.jmpenv* %8, null
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %sw.default
  %arraydecay13 = getelementptr inbounds %struct.jmpenv* %7, i64 0, i32 0, i64 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay13, i32 %call1) #9
  unreachable

if.end14:                                         ; preds = %sw.default
  %cmp15 = icmp eq i32 %call1, 2
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %9 = load i32* @PL_statusvalue, align 4, !tbaa !3
  call void @exit(i32 %9) #9
  unreachable

if.end17:                                         ; preds = %if.end14
  %call18 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  %call19 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call18, i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0)) #7
  call void @exit(i32 1) #9
  unreachable

sw.epilog:                                        ; preds = %if.end, %redo_body
  %10 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %10, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  store %struct.op* %0, %struct.op** @PL_op, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 216, i8* %2) #4
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_dofile() #0 {
entry:
  %call = tail call %struct.op* @Perl_pp_require() #8
  ret %struct.op* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_entereval() #0 {
entry:
  %tbuf = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %seq = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %2, i64 0, i32 6
  %3 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
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
  %call = call i32 @Perl_block_gimme() #8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i32 [ 128, %entry ], [ 0, %cond.false ], [ %call, %cond.false15 ], [ 1, %cond.false8 ]
  %4 = load i32* @PL_sub_generation, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [32 x i8]* %tbuf, i64 0, i64 0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %5, 262144
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %cond.false25, label %cond.true23

cond.true23:                                      ; preds = %cond.end18
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  store i64 %8, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %6 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  %tobool = icmp eq i8* %9, null
  br i1 %tobool, label %if.then, label %if.end

cond.false25:                                     ; preds = %cond.end18
  %call26 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %len, i32 2) #7
  %tobool27 = icmp eq i8* %call26, null
  br i1 %tobool27, label %if.then, label %if.end

if.then:                                          ; preds = %cond.true23, %cond.false25
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  %11 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %cond.true23, %cond.false25
  %12 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool29 = icmp eq i8 %12, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str68, i64 0, i64 0)) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then30
  call void @Perl_push_scope() #7
  call void @Perl_lex_start(%struct.sv* %1) #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %13 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %13, i32* @PL_tmps_floor, align 4, !tbaa !3
  %14 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %14, 0
  %and33 = and i32 %14, 256
  %tobool34 = icmp eq i32 %and33, 0
  %or.cond = or i1 %tobool32, %tobool34
  br i1 %or.cond, label %if.else, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end31
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line = getelementptr inbounds %struct.cop* %15, i64 0, i32 13
  %16 = load i32* %cop_line, align 4, !tbaa !3
  %tobool36 = icmp eq i32 %16, 0
  br i1 %tobool36, label %if.else, label %if.then37

if.then37:                                        ; preds = %land.lhs.true35
  %call39 = call %struct.sv* @Perl_sv_newmortal() #7
  %17 = load i32* @PL_evalseq, align 4, !tbaa !3
  %inc = add i32 %17, 1
  store i32 %inc, i32* @PL_evalseq, align 4, !tbaa !3
  %conv40 = zext i32 %inc to i64
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv = getelementptr inbounds %struct.cop* %18, i64 0, i32 10
  %19 = load %struct.gv** %cop_filegv, align 8, !tbaa !0
  %tobool41 = icmp eq %struct.gv* %19, null
  br i1 %tobool41, label %cond.end61, label %cond.true42

cond.true42:                                      ; preds = %if.then37
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv43 = getelementptr inbounds %struct.cop* %20, i64 0, i32 10
  %21 = load %struct.gv** %cop_filegv43, align 8, !tbaa !0
  %sv_any44 = getelementptr inbounds %struct.gv* %21, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any44, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %23, i64 0, i32 0
  %24 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool45 = icmp eq %struct.sv* %24, null
  br i1 %tobool45, label %cond.end61, label %cond.true47

cond.true47:                                      ; preds = %cond.true42
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv51 = getelementptr inbounds %struct.cop* %26, i64 0, i32 10
  %27 = load %struct.gv** %cop_filegv51, align 8, !tbaa !0
  %sv_any52 = getelementptr inbounds %struct.gv* %27, i64 0, i32 0
  %28 = load %struct.xpvgv** %sv_any52, align 8, !tbaa !0
  %xgv_gp53 = getelementptr inbounds %struct.xpvgv* %28, i64 0, i32 7
  %29 = load %struct.gp** %xgv_gp53, align 8, !tbaa !0
  %gp_sv54 = getelementptr inbounds %struct.gp* %29, i64 0, i32 0
  %30 = load %struct.sv** %gp_sv54, align 8, !tbaa !0
  %sv_any58 = getelementptr inbounds %struct.sv* %30, i64 0, i32 0
  %31 = load i8** %sv_any58, align 8, !tbaa !0
  %xpv_pv59 = bitcast i8* %31 to i8**
  %32 = load i8** %xpv_pv59, align 8, !tbaa !0
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true42, %if.then37, %cond.true47
  %cond62 = phi i8* [ %32, %cond.true47 ], [ null, %if.then37 ], [ null, %cond.true42 ]
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line63 = getelementptr inbounds %struct.cop* %33, i64 0, i32 13
  %34 = load i32* %cop_line63, align 4, !tbaa !3
  %conv64 = zext i32 %34 to i64
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call39, i8* getelementptr inbounds ([21 x i8]* @.str69, i64 0, i64 0), i64 %conv40, i8* %cond62, i64 %conv64) #7
  %sv_any65 = getelementptr inbounds %struct.sv* %call39, i64 0, i32 0
  %35 = load i8** %sv_any65, align 8, !tbaa !0
  %xpv_pv66 = bitcast i8* %35 to i8**
  %36 = load i8** %xpv_pv66, align 8, !tbaa !0
  br label %if.end70

if.else:                                          ; preds = %land.lhs.true35, %if.end31
  %37 = load i32* @PL_evalseq, align 4, !tbaa !3
  %inc67 = add i32 %37, 1
  store i32 %inc67, i32* @PL_evalseq, align 4, !tbaa !3
  %conv68 = zext i32 %inc67 to i64
  %call69 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8]* @.str70, i64 0, i64 0), i64 %conv68) #7
  br label %if.end70

if.end70:                                         ; preds = %if.else, %cond.end61
  %tmpbuf.0 = phi i8* [ %36, %cond.end61 ], [ %arraydecay, %if.else ]
  call void @Perl_save_generic_svref(%struct.sv** bitcast (%struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10) to %struct.sv**)) #7
  %add.ptr = getelementptr inbounds i8* %tmpbuf.0, i64 2
  %call71 = call %struct.gv* @Perl_gv_fetchfile(i8* %add.ptr) #7
  %38 = bitcast %struct.gv* %call71 to %struct.sv*
  store %struct.sv* %38, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool72 = icmp eq %struct.gv* %call71, null
  br i1 %tobool72, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end70
  %39 = getelementptr inbounds %struct.gv* %call71, i64 0, i32 1
  %40 = load i32* %39, align 4, !tbaa !3
  %inc73 = add i32 %40, 1
  store i32 %inc73, i32* %39, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end70, %land.rhs
  store %struct.gv* %call71, %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  call void @Perl_save_I32(i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13)) #7
  store i32 1, i32* getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 13), align 8, !tbaa !3
  %call75 = call i8* @Perl_savepv(i8* %tmpbuf.0) #7
  %41 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  %call76 = call i64 @strlen(i8* %call75) #7
  %conv77 = trunc i64 %call76 to i32
  call void @Perl_save_delete(%struct.hv* %41, i8* %call75, i32 %conv77) #7
  %42 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add = add nsw i32 %42, 3
  %43 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp78 = icmp sgt i32 %add, %43
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.end
  call void @Perl_savestack_grow() #7
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.end
  %44 = load i32* @PL_hints, align 4, !tbaa !3
  %and82 = and i32 %44, 131072
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %if.end95, label %if.then84

if.then84:                                        ; preds = %if.end81
  %45 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any85 = getelementptr inbounds %struct.gv* %45, i64 0, i32 0
  %46 = load %struct.xpvgv** %sv_any85, align 8, !tbaa !0
  %xgv_gp86 = getelementptr inbounds %struct.xpvgv* %46, i64 0, i32 7
  %47 = load %struct.gp** %xgv_gp86, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %47, i64 0, i32 5
  %48 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %49 = bitcast %struct.hv* %48 to i8*
  %50 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc87 = add nsw i32 %50, 1
  store i32 %inc87, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom = sext i32 %50 to i64
  %51 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %51, i64 %idxprom, i32 0
  store i8* %49, i8** %any_ptr, align 8, !tbaa !0
  %52 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any88 = getelementptr inbounds %struct.gv* %52, i64 0, i32 0
  %53 = load %struct.xpvgv** %sv_any88, align 8, !tbaa !0
  %xgv_gp89 = getelementptr inbounds %struct.xpvgv* %53, i64 0, i32 7
  %54 = load %struct.gp** %xgv_gp89, align 8, !tbaa !0
  %gp_hv90 = getelementptr inbounds %struct.gp* %54, i64 0, i32 5
  %55 = load %struct.hv** %gp_hv90, align 8, !tbaa !0
  %call91 = call %struct.hv* @Perl_newHVhv(%struct.hv* %55) #7
  %56 = load %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any92 = getelementptr inbounds %struct.gv* %56, i64 0, i32 0
  %57 = load %struct.xpvgv** %sv_any92, align 8, !tbaa !0
  %xgv_gp93 = getelementptr inbounds %struct.xpvgv* %57, i64 0, i32 7
  %58 = load %struct.gp** %xgv_gp93, align 8, !tbaa !0
  %gp_hv94 = getelementptr inbounds %struct.gp* %58, i64 0, i32 5
  store %struct.hv* %call91, %struct.hv** %gp_hv94, align 8, !tbaa !0
  %.pre = load i32* @PL_hints, align 4, !tbaa !3
  br label %if.end95

if.end95:                                         ; preds = %if.end81, %if.then84
  %59 = phi i32 [ %.pre, %if.then84 ], [ %44, %if.end81 ]
  %60 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc96 = add nsw i32 %60, 1
  store i32 %inc96, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom97 = sext i32 %60 to i64
  %61 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds %union.any* %61, i64 %idxprom97
  %any_i32 = bitcast %union.any* %arrayidx98 to i32*
  store i32 %59, i32* %any_i32, align 4, !tbaa !3
  %62 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %inc99 = add nsw i32 %62, 1
  store i32 %inc99, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom100 = sext i32 %62 to i64
  %arrayidx101 = getelementptr inbounds %union.any* %61, i64 %idxprom100
  %any_i32102 = bitcast %union.any* %arrayidx101 to i32*
  store i32 27, i32* %any_i32102, align 4, !tbaa !3
  %63 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %63, i64 0, i32 3
  %64 = load i64* %op_targ, align 8, !tbaa !4
  %conv103 = trunc i64 %64 to i32
  store i32 %conv103, i32* @PL_hints, align 4, !tbaa !3
  call void @Perl_save_sptr(%struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14)) #7
  %65 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %65, i64 0, i32 14
  %66 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp104 = icmp eq %struct.sv* %66, null
  br i1 %cmp104, label %if.then113, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end95
  %67 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings106 = getelementptr inbounds %struct.cop* %67, i64 0, i32 14
  %68 = load %struct.sv** %cop_warnings106, align 8, !tbaa !0
  %cmp107 = icmp eq %struct.sv* %68, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp107, label %if.then113, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false
  %69 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings110 = getelementptr inbounds %struct.cop* %69, i64 0, i32 14
  %70 = load %struct.sv** %cop_warnings110, align 8, !tbaa !0
  %cmp111 = icmp eq %struct.sv* %70, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %lor.lhs.false109, %lor.lhs.false, %if.end95
  %71 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings114 = getelementptr inbounds %struct.cop* %71, i64 0, i32 14
  %72 = load %struct.sv** %cop_warnings114, align 8, !tbaa !0
  store %struct.sv* %72, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end118

if.else115:                                       ; preds = %lor.lhs.false109
  %73 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings116 = getelementptr inbounds %struct.cop* %73, i64 0, i32 14
  %74 = load %struct.sv** %cop_warnings116, align 8, !tbaa !0
  %call117 = call %struct.sv* @Perl_newSVsv(%struct.sv* %74) #7
  store %struct.sv* %call117, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  call void @Perl_save_freesv(%struct.sv* %call117) #7
  br label %if.end118

if.end118:                                        ; preds = %if.else115, %if.then113
  call void @Perl_save_sptr(%struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15)) #7
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_io = getelementptr inbounds %struct.cop* %75, i64 0, i32 15
  %76 = load %struct.sv** %cop_io, align 8, !tbaa !0
  %cmp119 = icmp eq %struct.sv* %76, null
  %77 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_io122 = getelementptr inbounds %struct.cop* %77, i64 0, i32 15
  %78 = load %struct.sv** %cop_io122, align 8, !tbaa !0
  br i1 %cmp119, label %if.then121, label %if.else123

if.then121:                                       ; preds = %if.end118
  store %struct.sv* %78, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  br label %if.end126

if.else123:                                       ; preds = %if.end118
  %call125 = call %struct.sv* @Perl_newSVsv(%struct.sv* %78) #7
  store %struct.sv* %call125, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  call void @Perl_save_freesv(%struct.sv* %call125) #7
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %if.then121
  %call127 = call %struct.cv* @Perl_find_runcv(i32* %seq) #8
  %79 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next128 = getelementptr inbounds %struct.op* %79, i64 0, i32 0
  %80 = load %struct.op** %op_next128, align 8, !tbaa !0
  call void @Perl_push_return(%struct.op* %80) #7
  %81 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %81, i64 0, i32 2
  %82 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %81, i64 0, i32 3
  %83 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp129 = icmp slt i32 %82, %83
  br i1 %cmp129, label %cond.true131, label %cond.false134

cond.true131:                                     ; preds = %if.end126
  %inc133 = add nsw i32 %82, 1
  store i32 %inc133, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end137

cond.false134:                                    ; preds = %if.end126
  %call135 = call i32 @Perl_cxinc() #7
  %84 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix136 = getelementptr inbounds %struct.stackinfo* %84, i64 0, i32 2
  store i32 %call135, i32* %si_cxix136, align 4, !tbaa !3
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false134, %cond.true131
  %85 = phi i32 [ %call135, %cond.false134 ], [ %inc133, %cond.true131 ]
  %86 = phi %struct.stackinfo* [ %84, %cond.false134 ], [ %81, %cond.true131 ]
  %idxprom140 = sext i32 %85 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %86, i64 0, i32 1
  %87 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 0
  store i32 258, i32* %cx_type, align 4, !tbaa !3
  %88 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div250 = lshr exact i64 %sub.ptr.sub, 3
  %conv142 = trunc i64 %sub.ptr.div250 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 0
  store i32 %conv142, i32* %blku_oldsp, align 4, !tbaa !3
  %89 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 1
  store %struct.cop* %89, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %90 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %91 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast145 = ptrtoint i32* %90 to i64
  %sub.ptr.rhs.cast146 = ptrtoint i32* %91 to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %sub.ptr.div148251 = lshr exact i64 %sub.ptr.sub147, 2
  %conv149 = trunc i64 %sub.ptr.div148251 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 3
  store i32 %conv149, i32* %blku_oldmarksp, align 4, !tbaa !3
  %92 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 4
  store i32 %92, i32* %blku_oldscopesp, align 4, !tbaa !3
  %93 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 2
  store i32 %93, i32* %blku_oldretsp, align 4, !tbaa !3
  %94 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 5
  store %struct.pmop* %94, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %conv158 = trunc i32 %cond19 to i8
  %blku_gimme = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 6
  store i8 %conv158, i8* %blku_gimme, align 1, !tbaa !1
  %95 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %blk_u = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  store i32 %95, i32* %old_in_eval, align 4, !tbaa !3
  %96 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %96, i64 0, i32 4
  %97 = load i16* %op_type, align 2, !tbaa !6
  %conv163 = zext i16 %97 to i32
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  store i32 %conv163, i32* %old_op_type, align 4, !tbaa !3
  %old_namesv = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 7, i32 0, i32 1
  %98 = bitcast i32* %old_namesv to %struct.sv**
  store %struct.sv* null, %struct.sv** %98, align 8, !tbaa !0
  %99 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %100 = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %99, %struct.op** %100, align 8, !tbaa !0
  %101 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %cur_text = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c = bitcast %struct.sv* %101 to %struct.op*
  store %struct.op* %.c, %struct.op** %cur_text, align 8, !tbaa !0
  %cv = getelementptr inbounds %struct.context* %87, i64 %idxprom140, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* null, %struct.op** %cv, align 8, !tbaa !0
  %102 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool184 = icmp eq i32 %102, 0
  %and186 = and i32 %102, 2
  %tobool187 = icmp eq i32 %and186, 0
  %or.cond252 = or i1 %tobool184, %tobool187
  br i1 %or.cond252, label %if.end199, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %cond.end137
  %103 = load %struct.hv** @PL_curstash, align 8, !tbaa !0
  %104 = load %struct.hv** @PL_debstash, align 8, !tbaa !0
  %cmp189 = icmp eq %struct.hv* %103, %104
  br i1 %cmp189, label %if.end199, label %if.then191

if.then191:                                       ; preds = %land.lhs.true188
  %105 = load %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  %tobool192 = icmp eq %struct.gv* %105, null
  br i1 %tobool192, label %cond.end197, label %cond.true193

cond.true193:                                     ; preds = %if.then191
  %sv_any194 = getelementptr inbounds %struct.gv* %105, i64 0, i32 0
  %106 = load %struct.xpvgv** %sv_any194, align 8, !tbaa !0
  %xgv_gp195 = getelementptr inbounds %struct.xpvgv* %106, i64 0, i32 7
  %107 = load %struct.gp** %xgv_gp195, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %107, i64 0, i32 4
  %108 = load %struct.av** %gp_av, align 8, !tbaa !0
  br label %cond.end197

cond.end197:                                      ; preds = %if.then191, %cond.true193
  %cond198 = phi %struct.av* [ %108, %cond.true193 ], [ null, %if.then191 ]
  %109 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %sv_any.i = getelementptr inbounds %struct.sv* %109, i64 0, i32 0
  %110 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %110 to i8**
  %111 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %110, i64 8
  %112 = bitcast i8* %xpv_cur.i to i64*
  %113 = load i64* %112, align 8, !tbaa !4
  %add.ptr.i = getelementptr inbounds i8* %111, i64 %113
  %tobool20.i = icmp ne i8* %111, null
  %cmp21.i = icmp sgt i64 %113, 0
  %or.cond22.i = and i1 %tobool20.i, %cmp21.i
  br i1 %or.cond22.i, label %while.body.i, label %if.end199

while.body.i:                                     ; preds = %cond.end197, %while.body.i
  %s.024.i = phi i8* [ %t.0.i, %while.body.i ], [ %111, %cond.end197 ]
  %line.023.i = phi i32 [ %inc.i, %while.body.i ], [ 1, %cond.end197 ]
  %call.i = call %struct.sv* @Perl_newSV(i64 0) #7
  %call4.i = call signext i8 @Perl_sv_upgrade(%struct.sv* %call.i, i32 7) #7
  %call5.i = call i8* @strchr(i8* %s.024.i, i32 10) #7
  %tobool6.i = icmp eq i8* %call5.i, null
  %incdec.ptr.i = getelementptr inbounds i8* %call5.i, i64 1
  %t.0.i = select i1 %tobool6.i, i8* %add.ptr.i, i8* %incdec.ptr.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %t.0.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %s.024.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @Perl_sv_setpvn(%struct.sv* %call.i, i8* %s.024.i, i64 %sub.ptr.sub.i) #7
  %inc.i = add nsw i32 %line.023.i, 1
  %call7.i = call %struct.sv** @Perl_av_store(%struct.av* %cond198, i32 %line.023.i, %struct.sv* %call.i) #7
  %tobool.i = icmp ne i8* %t.0.i, null
  %cmp.i = icmp ult i8* %t.0.i, %add.ptr.i
  %or.cond.i = and i1 %tobool.i, %cmp.i
  br i1 %or.cond.i, label %while.body.i, label %if.end199

if.end199:                                        ; preds = %while.body.i, %cond.end197, %land.lhs.true188, %cond.end137
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %114 = load i32* %seq, align 4, !tbaa !3
  %call200 = call fastcc %struct.op* @S_doeval(i32 %cond19, %struct.op** null, %struct.cv* %call127, i32 %114) #8
  %115 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool201 = icmp eq i32 %115, 0
  %and203 = and i32 %115, 8
  %tobool204 = icmp eq i32 %and203, 0
  %or.cond253 = or i1 %tobool201, %tobool204
  %116 = load i32* @PL_sub_generation, align 4, !tbaa !3
  %cmp206 = icmp eq i32 %4, %116
  %or.cond254 = or i1 %or.cond253, %cmp206
  br i1 %or.cond254, label %if.end214, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %if.end199
  %117 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next209 = getelementptr inbounds %struct.op* %117, i64 0, i32 0
  %118 = load %struct.op** %op_next209, align 8, !tbaa !0
  %cmp210 = icmp eq %struct.op* %call200, %118
  br i1 %cmp210, label %if.end214, label %if.then212

if.then212:                                       ; preds = %land.lhs.true208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call75, i8* getelementptr inbounds ([10 x i8]* @.str71, i64 0, i64 0), i64 10, i32 1, i1 false)
  br label %if.end214

if.end214:                                        ; preds = %land.lhs.true208, %if.end199, %if.then212
  %119 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %119, i64 0, i32 3
  %120 = load i8* %je_mustcatch, align 1, !tbaa !1
  %cmp216 = icmp eq i8 %120, 1
  br i1 %cmp216, label %cond.true218, label %return

cond.true218:                                     ; preds = %if.end214
  %call219 = call fastcc %struct.op* @S_docatch(%struct.op* %call200) #8
  br label %return

return:                                           ; preds = %cond.true218, %if.end214, %if.then
  %retval.0 = phi %struct.op* [ %11, %if.then ], [ %call219, %cond.true218 ], [ %call200, %if.end214 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leaveeval() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  %4 = load i32* %si_cxix, align 4, !tbaa !3
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %4 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 1
  %5 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 0
  %7 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %6, i64 %idx.ext
  %blku_oldcop = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 1
  %8 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %8, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %9 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 3
  %10 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext5 = sext i32 %10 to i64
  %add.ptr6 = getelementptr inbounds i32* %9, i64 %idx.ext5
  store i32* %add.ptr6, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 4
  %11 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %11, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 2
  %12 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %12, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 5
  %13 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 6
  %14 = load i8* %blku_gimme, align 1, !tbaa !1
  %blk_u = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  %15 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %15, i32* @PL_in_eval, align 4, !tbaa !3
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  %16 = load i32* %old_op_type, align 4, !tbaa !3
  %17 = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %18 = load %struct.op** %17, align 8, !tbaa !0
  store %struct.op* %18, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %19 = bitcast i32* %old_namesv to %struct.sv**
  %20 = load %struct.sv** %19, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %20, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %20) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call34 = tail call %struct.op* @Perl_pop_return() #7
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %cmp = icmp eq i8 %14, -128
  br i1 %cmp, label %if.end74, label %if.else

if.else:                                          ; preds = %if.end
  %cmp37 = icmp eq i8 %14, 0
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr40 = getelementptr inbounds %struct.sv** %6, i64 %add.ptr.sum
  %cmp41 = icmp ugt %struct.sv** %add.ptr40, %0
  br i1 %cmp37, label %if.then39, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  br i1 %cmp41, label %if.end74, label %for.body

if.then39:                                        ; preds = %if.else
  br i1 %cmp41, label %if.else49, label %if.then43

if.then43:                                        ; preds = %if.then39
  %21 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %22, 2048
  %tobool44 = icmp eq i32 %and, 0
  br i1 %tobool44, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.then43
  store %struct.sv* %21, %struct.sv** %add.ptr40, align 8, !tbaa !0
  br label %if.end74

if.else46:                                        ; preds = %if.then43
  %call47 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %21) #7
  store %struct.sv* %call47, %struct.sv** %add.ptr40, align 8, !tbaa !0
  br label %if.end74

if.else49:                                        ; preds = %if.then39
  %23 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp50 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp50, label %if.then52, label %if.end61

if.then52:                                        ; preds = %if.else49
  %24 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast54 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast54
  %call58 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %add.ptr40, i32 0) #7
  %25 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %26 = shl i64 %sub.ptr.sub55, 29
  %idx.ext59 = ashr i64 %26, 32
  %add.ptr60 = getelementptr inbounds %struct.sv** %25, i64 %idx.ext59
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %if.else49
  %mark.0 = phi %struct.sv** [ %add.ptr60, %if.then52 ], [ %add.ptr40, %if.else49 ]
  store %struct.sv* @PL_sv_undef, %struct.sv** %mark.0, align 8, !tbaa !0
  br label %if.end74

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %mark.2196 = phi %struct.sv** [ %incdec.ptr, %for.inc ], [ %add.ptr40, %for.cond.preheader ]
  %27 = load %struct.sv** %mark.2196, align 8, !tbaa !0
  %sv_flags67 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags67, align 4, !tbaa !3
  %and68 = and i32 %28, 2048
  %tobool69 = icmp eq i32 %and68, 0
  br i1 %tobool69, label %if.then70, label %for.inc

if.then70:                                        ; preds = %for.body
  %call71 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %27) #7
  store %struct.sv* %call71, %struct.sv** %mark.2196, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then70
  %incdec.ptr = getelementptr inbounds %struct.sv** %mark.2196, i64 1
  %cmp65 = icmp ugt %struct.sv** %incdec.ptr, %0
  br i1 %cmp65, label %if.end74, label %for.body

if.end74:                                         ; preds = %for.cond.preheader, %for.inc, %if.end61, %if.else46, %if.then45, %if.end
  %sp.0 = phi %struct.sv** [ %0, %if.end ], [ %add.ptr40, %if.then45 ], [ %add.ptr40, %if.else46 ], [ %mark.0, %if.end61 ], [ %0, %for.inc ], [ %0, %for.cond.preheader ]
  store %struct.pmop* %13, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %29 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.cv* %29, i64 0, i32 0
  %30 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %30, i64 0, i32 14
  store i64 0, i64* %xcv_depth, align 8, !tbaa !4
  tail call void @Perl_lex_end() #7
  %cmp75 = icmp eq i32 %16, 309
  br i1 %cmp75, label %land.lhs.true, label %if.else145

land.lhs.true:                                    ; preds = %if.end74
  %cmp77 = icmp eq i8 %14, 0
  br i1 %cmp77, label %cond.true, label %cond.false118

cond.true:                                        ; preds = %land.lhs.true
  %31 = load %struct.sv** %sp.0, align 8, !tbaa !0
  %tobool79 = icmp eq %struct.sv* %31, null
  br i1 %tobool79, label %if.then121, label %cond.false

cond.false:                                       ; preds = %cond.true
  %sv_flags81 = getelementptr inbounds %struct.sv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags81, align 4, !tbaa !3
  %and82 = and i32 %32, 262144
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %cond.false98, label %cond.true84

cond.true84:                                      ; preds = %cond.false
  %sv_any85 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %33 = load i8** %sv_any85, align 8, !tbaa !0
  %34 = bitcast i8* %33 to %struct.xpv*
  store %struct.xpv* %34, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool86 = icmp eq i8* %33, null
  br i1 %tobool86, label %if.then121, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %cond.true84
  %xpv_cur = getelementptr inbounds i8* %33, i64 8
  %35 = bitcast i8* %xpv_cur to i64*
  %36 = load i64* %35, align 8, !tbaa !4
  %cmp88 = icmp ugt i64 %36, 1
  br i1 %cmp88, label %if.else145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true87
  %tobool91 = icmp eq i64 %36, 0
  br i1 %tobool91, label %if.then121, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %33 to i8**
  %37 = load i8** %xpv_pv, align 8, !tbaa !0
  %38 = load i8* %37, align 1, !tbaa !1
  %cmp94 = icmp eq i8 %38, 48
  br i1 %cmp94, label %if.then121, label %if.else145

cond.false98:                                     ; preds = %cond.false
  %and100 = and i32 %32, 65536
  %tobool101 = icmp eq i32 %and100, 0
  br i1 %tobool101, label %cond.false106, label %cond.true102

cond.true102:                                     ; preds = %cond.false98
  %sv_any103 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %39 = load i8** %sv_any103, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %39, i64 24
  %40 = bitcast i8* %xiv_iv to i64*
  %41 = load i64* %40, align 8, !tbaa !4
  %cmp104 = icmp eq i64 %41, 0
  br i1 %cmp104, label %if.then121, label %if.else145

cond.false106:                                    ; preds = %cond.false98
  %and108 = and i32 %32, 131072
  %tobool109 = icmp eq i32 %and108, 0
  br i1 %tobool109, label %cond.false114, label %cond.true110

cond.true110:                                     ; preds = %cond.false106
  %sv_any111 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %42 = load i8** %sv_any111, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %42, i64 32
  %43 = bitcast i8* %xnv_nv to double*
  %44 = load double* %43, align 8, !tbaa !5
  %cmp112 = fcmp une double %44, 0.000000e+00
  br i1 %cmp112, label %if.else145, label %if.then121

cond.false114:                                    ; preds = %cond.false106
  %call115 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %31) #7
  %tobool117 = icmp eq i8 %call115, 0
  br i1 %tobool117, label %if.then121, label %if.else145

cond.false118:                                    ; preds = %land.lhs.true
  %cmp119 = icmp ugt %struct.sv** %sp.0, %add.ptr
  br i1 %cmp119, label %if.else145, label %if.then121

if.then121:                                       ; preds = %land.lhs.true92, %lor.lhs.false, %cond.true84, %cond.true102, %cond.false114, %cond.true, %cond.false118, %cond.true110
  %45 = load %struct.sv** %19, align 8, !tbaa !0
  %46 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any127 = getelementptr inbounds %struct.gv* %46, i64 0, i32 0
  %47 = load %struct.xpvgv** %sv_any127, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %47, i64 0, i32 7
  %48 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %48, i64 0, i32 5
  %49 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool128 = icmp eq %struct.hv* %49, null
  br i1 %tobool128, label %cond.false133, label %cond.end

cond.false133:                                    ; preds = %if.then121
  %call134 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %46) #7
  %sv_any135 = getelementptr inbounds %struct.gv* %call134, i64 0, i32 0
  %50 = load %struct.xpvgv** %sv_any135, align 8, !tbaa !0
  %xgv_gp136 = getelementptr inbounds %struct.xpvgv* %50, i64 0, i32 7
  %51 = load %struct.gp** %xgv_gp136, align 8, !tbaa !0
  %gp_hv137 = getelementptr inbounds %struct.gp* %51, i64 0, i32 5
  %52 = load %struct.hv** %gp_hv137, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then121, %cond.false133
  %cond = phi %struct.hv* [ %52, %cond.false133 ], [ %49, %if.then121 ]
  %sv_any138 = getelementptr inbounds %struct.sv* %45, i64 0, i32 0
  %53 = load i8** %sv_any138, align 8, !tbaa !0
  %xpv_pv139 = bitcast i8* %53 to i8**
  %54 = load i8** %xpv_pv139, align 8, !tbaa !0
  %xpv_cur141 = getelementptr inbounds i8* %53, i64 8
  %55 = bitcast i8* %xpv_cur141 to i64*
  %56 = load i64* %55, align 8, !tbaa !4
  %conv142 = trunc i64 %56 to i32
  %call143 = tail call %struct.sv* @Perl_hv_delete(%struct.hv* %cond, i8* %54, i32 %conv142, i32 2) #7
  %call144 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([31 x i8]* @.str29, i64 0, i64 0), %struct.sv* %45) #7
  br label %if.end153

if.else145:                                       ; preds = %land.lhs.true92, %cond.true102, %cond.false114, %land.lhs.true87, %cond.false118, %cond.true110, %if.end74
  tail call void @Perl_pop_scope() #7
  %tobool148 = icmp slt i8 %2, 0
  br i1 %tobool148, label %if.end153, label %if.then149

if.then149:                                       ; preds = %if.else145
  %57 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any150 = getelementptr inbounds %struct.gv* %57, i64 0, i32 0
  %58 = load %struct.xpvgv** %sv_any150, align 8, !tbaa !0
  %xgv_gp151 = getelementptr inbounds %struct.xpvgv* %58, i64 0, i32 7
  %59 = load %struct.gp** %xgv_gp151, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %59, i64 0, i32 0
  %60 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %60, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  br label %if.end153

if.end153:                                        ; preds = %if.else145, %if.then149, %cond.end
  %retop.0 = phi %struct.op* [ %call34, %if.else145 ], [ %call34, %if.then149 ], [ %call144, %cond.end ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret %struct.op* %retop.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_entertry() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
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
  %call = tail call i32 @Perl_block_gimme() #8
  %phitmp = trunc i32 %call to i8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %cond.false8, %cond.false15, %entry
  %cond19 = phi i8 [ -128, %entry ], [ 0, %cond.false ], [ %phitmp, %cond.false15 ], [ 1, %cond.false8 ]
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %3 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %3, i32* @PL_tmps_floor, align 4, !tbaa !3
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %5 = getelementptr inbounds %struct.op* %4, i64 1, i32 1
  %6 = load %struct.op** %5, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %6, i64 0, i32 0
  %7 = load %struct.op** %op_next, align 8, !tbaa !0
  tail call void @Perl_push_return(%struct.op* %7) #7
  %8 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 2
  %9 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 3
  %10 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp20 = icmp slt i32 %9, %10
  br i1 %cmp20, label %cond.true22, label %cond.false24

cond.true22:                                      ; preds = %cond.end18
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end27

cond.false24:                                     ; preds = %cond.end18
  %call25 = tail call i32 @Perl_cxinc() #7
  %11 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix26 = getelementptr inbounds %struct.stackinfo* %11, i64 0, i32 2
  store i32 %call25, i32* %si_cxix26, align 4, !tbaa !3
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false24, %cond.true22
  %12 = phi i32 [ %call25, %cond.false24 ], [ %inc, %cond.true22 ]
  %13 = phi %struct.stackinfo* [ %11, %cond.false24 ], [ %8, %cond.true22 ]
  %idxprom = sext i32 %12 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 1
  %14 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 0
  store i32 514, i32* %cx_type, align 4, !tbaa !3
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div96 = lshr exact i64 %sub.ptr.sub, 3
  %conv30 = trunc i64 %sub.ptr.div96 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 0
  store i32 %conv30, i32* %blku_oldsp, align 4, !tbaa !3
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 1
  store %struct.cop* %16, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %17 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %18 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast33 = ptrtoint i32* %17 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i32* %18 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div3697 = lshr exact i64 %sub.ptr.sub35, 2
  %conv37 = trunc i64 %sub.ptr.div3697 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 3
  store i32 %conv37, i32* %blku_oldmarksp, align 4, !tbaa !3
  %19 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 4
  store i32 %19, i32* %blku_oldscopesp, align 4, !tbaa !3
  %20 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 2
  store i32 %20, i32* %blku_oldretsp, align 4, !tbaa !3
  %21 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %21, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 6
  store i8 %cond19, i8* %blku_gimme, align 1, !tbaa !1
  %22 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %blk_u = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  store i32 %22, i32* %old_in_eval, align 4, !tbaa !3
  %23 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %23, i64 0, i32 4
  %24 = load i16* %op_type, align 2, !tbaa !6
  %conv51 = zext i16 %24 to i32
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  store i32 %conv51, i32* %old_op_type, align 4, !tbaa !3
  %old_namesv = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %25 = bitcast i32* %old_namesv to %struct.sv**
  store %struct.sv* null, %struct.sv** %25, align 8, !tbaa !0
  %26 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %27 = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %26, %struct.op** %27, align 8, !tbaa !0
  %28 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %cur_text = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c = bitcast %struct.sv* %28 to %struct.op*
  store %struct.op* %.c, %struct.op** %cur_text, align 8, !tbaa !0
  %cv = getelementptr inbounds %struct.context* %14, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* null, %struct.op** %cv, align 8, !tbaa !0
  store volatile i32 1, i32* @PL_in_eval, align 4, !tbaa !3
  %29 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %29, i64 0, i32 0
  %30 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %30, i64 0, i32 7
  %31 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %31, i64 0, i32 0
  %32 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %32, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %33 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %33, i64 0, i32 3
  %34 = load i8* %je_mustcatch, align 1, !tbaa !1
  %cmp73 = icmp eq i8 %34, 1
  %35 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next76 = getelementptr inbounds %struct.op* %35, i64 0, i32 0
  %36 = load %struct.op** %op_next76, align 8, !tbaa !0
  br i1 %cmp73, label %cond.true75, label %cond.end80

cond.true75:                                      ; preds = %cond.end27
  %call77 = tail call fastcc %struct.op* @S_docatch(%struct.op* %36) #8
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end27, %cond.true75
  %cond81 = phi %struct.op* [ %call77, %cond.true75 ], [ %36, %cond.end27 ]
  ret %struct.op* %cond81
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leavetry() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 2
  %2 = load i32* %si_cxix, align 4, !tbaa !3
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 1
  %3 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 0
  %5 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %4, i64 %idx.ext
  %blku_oldcop = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 1
  %6 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %6, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %7 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 3
  %8 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext5 = sext i32 %8 to i64
  %add.ptr6 = getelementptr inbounds i32* %7, i64 %idx.ext5
  store i32* %add.ptr6, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 4
  %9 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %9, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 2
  %10 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %10, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 5
  %11 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 6
  %12 = load i8* %blku_gimme, align 1, !tbaa !1
  %blk_u = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  %13 = load i32* %old_in_eval, align 4, !tbaa !3
  store volatile i32 %13, i32* @PL_in_eval, align 4, !tbaa !3
  %14 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %15 = load %struct.op** %14, align 8, !tbaa !0
  store %struct.op* %15, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %16 = bitcast i32* %old_namesv to %struct.sv**
  %17 = load %struct.sv** %16, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %17, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %17) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call34 = tail call %struct.op* @Perl_pop_return() #7
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %cmp = icmp eq i8 %12, -128
  br i1 %cmp, label %if.end74, label %if.else

if.else:                                          ; preds = %if.end
  %cmp37 = icmp eq i8 %12, 0
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr40 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum
  %cmp41 = icmp ugt %struct.sv** %add.ptr40, %0
  br i1 %cmp37, label %if.then39, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  br i1 %cmp41, label %if.end74, label %for.body

if.then39:                                        ; preds = %if.else
  br i1 %cmp41, label %if.else49, label %if.then43

if.then43:                                        ; preds = %if.then39
  %18 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %19, 2560
  %tobool44 = icmp eq i32 %and, 0
  br i1 %tobool44, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.then43
  store %struct.sv* %18, %struct.sv** %add.ptr40, align 8, !tbaa !0
  br label %if.end74

if.else46:                                        ; preds = %if.then43
  %call47 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %18) #7
  store %struct.sv* %call47, %struct.sv** %add.ptr40, align 8, !tbaa !0
  br label %if.end74

if.else49:                                        ; preds = %if.then39
  %20 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp50 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp50, label %if.then52, label %if.end61

if.then52:                                        ; preds = %if.else49
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast54 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast54
  %call58 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %add.ptr40, i32 0) #7
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %23 = shl i64 %sub.ptr.sub55, 29
  %idx.ext59 = ashr i64 %23, 32
  %add.ptr60 = getelementptr inbounds %struct.sv** %22, i64 %idx.ext59
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %if.else49
  %mark.0 = phi %struct.sv** [ %add.ptr60, %if.then52 ], [ %add.ptr40, %if.else49 ]
  store %struct.sv* @PL_sv_undef, %struct.sv** %mark.0, align 8, !tbaa !0
  br label %if.end74

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %mark.2107 = phi %struct.sv** [ %incdec.ptr, %for.inc ], [ %add.ptr40, %for.cond.preheader ]
  %24 = load %struct.sv** %mark.2107, align 8, !tbaa !0
  %sv_flags67 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags67, align 4, !tbaa !3
  %and68 = and i32 %25, 2560
  %tobool69 = icmp eq i32 %and68, 0
  br i1 %tobool69, label %if.then70, label %for.inc

if.then70:                                        ; preds = %for.body
  %call71 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %24) #7
  store %struct.sv* %call71, %struct.sv** %mark.2107, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then70
  %incdec.ptr = getelementptr inbounds %struct.sv** %mark.2107, i64 1
  %cmp65 = icmp ugt %struct.sv** %incdec.ptr, %0
  br i1 %cmp65, label %if.end74, label %for.body

if.end74:                                         ; preds = %for.cond.preheader, %for.inc, %if.end61, %if.else46, %if.then45, %if.end
  %sp.0 = phi %struct.sv** [ %add.ptr, %if.end ], [ %add.ptr40, %if.then45 ], [ %add.ptr40, %if.else46 ], [ %mark.0, %if.end61 ], [ %0, %for.inc ], [ %0, %for.cond.preheader ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  %26 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %26, i64 0, i32 0
  %27 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %28, i64 0, i32 0
  %29 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %29, i8* getelementptr inbounds ([1 x i8]* @.str11, i64 0, i64 0)) #7
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret %struct.op* %call34
}

; Function Attrs: optsize
declare i32 @Perl_filter_read(i32, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_filter_del(i32 (i32, %struct.sv*, i32)*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #1

; Function Attrs: optsize
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #1

; Function Attrs: noreturn optsize
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #6

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #5

; Function Attrs: optsize
declare %struct.av* @Perl_pad_new(i32) #1

; Function Attrs: optsize
declare void @Perl_save_mortalizesv(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_yyparse() #1

; Function Attrs: optsize
declare void @Perl_op_free(%struct.op*) #1

; Function Attrs: optsize
declare void @Perl_save_freeop(%struct.op*) #1

; Function Attrs: optsize
declare %struct.op* @Perl_scalar(%struct.op*) #1

; Function Attrs: optsize
declare %struct.op* @Perl_scalarvoid(%struct.op*) #1

; Function Attrs: optsize
declare %struct.op* @Perl_list(%struct.op*) #1

; Function Attrs: optsize
declare i8* @Perl_custom_op_name(%struct.op*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

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
!6 = metadata !{metadata !"short", metadata !1}
