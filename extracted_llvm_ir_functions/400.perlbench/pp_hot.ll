; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/pp_hot.c'
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
%struct.xpv = type { i8*, i64, i64 }
%struct.re_scream_pos_data_s = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.subst = type { i32, i32, i32, i32, i8, i8, i8*, %struct.sv*, %struct.sv*, i8*, i8*, i8*, i8*, %struct.regexp* }
%struct.block_sub = type { %struct.cv*, %struct.gv*, %struct.gv*, %struct.av*, %struct.av*, i64, i8, i8, %struct.av* }

@PL_stack_sp = external global %struct.sv**
@PL_stack_max = external global %struct.sv**
@PL_op = external global %struct.op*
@PL_curcop = external global %struct.cop*
@PL_tainted = external global i8
@PL_stack_base = external global %struct.sv**
@PL_curstackinfo = external global %struct.stackinfo*
@PL_tmps_ix = external global i32
@PL_tmps_floor = external global i32
@PL_markstack_ptr = external global i32*
@PL_markstack_max = external global i32*
@PL_curpad = external global %struct.sv**
@PL_Xpv = external global %struct.xpv*
@PL_tainting = external global i8
@PL_Sv = external global %struct.sv*
@PL_scopestack_ix = external global i32
@PL_scopestack = external global i32*
@PL_savestack_ix = external global i32
@PL_amagic_generation = external global i64
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_sv_undef = external global %struct.sv
@PL_last_in_gv = external global %struct.gv*
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@PL_no_modify = external constant [0 x i8]
@PL_defoutgv = external global %struct.gv*
@.str1 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@PL_dowarn = external global i8
@PL_ofs_sv = external global %struct.sv*
@PL_ors_sv = external global %struct.sv*
@.str2 = private unnamed_addr constant [50 x i8] c"Overloaded dereference did not return a reference\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"Not an ARRAY reference\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"Can't return array to lvalue scalar context\00", align 1
@PL_no_localize_ref = external constant [0 x i8]
@PL_no_usym = external constant [0 x i8]
@.str5 = private unnamed_addr constant [9 x i8] c"an ARRAY\00", align 1
@PL_no_symref = external constant [0 x i8]
@.str6 = private unnamed_addr constant [21 x i8] c"Not a HASH reference\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"Can't return hash to lvalue scalar context\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"a HASH\00", align 1
@PL_delaymagic = external global i32
@PL_tmps_max = external global i32
@PL_sv_placeholder = external global %struct.sv
@PL_uid = external global i32
@PL_euid = external global i32
@.str9 = private unnamed_addr constant [22 x i8] c"No setreuid available\00", align 1
@PL_gid = external global i32
@PL_egid = external global i32
@.str10 = private unnamed_addr constant [22 x i8] c"No setregid available\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"Regexp\00", align 1
@PL_defgv = external global %struct.gv*
@.str12 = private unnamed_addr constant [16 x i8] c"panic: pp_match\00", align 1
@PL_reg_match_utf8 = external global i8
@PL_curpm = external global %struct.pmop*
@PL_sawampersand = external global i8
@PL_multiline = external global i32
@PL_bostr = external global i8*
@PL_regint_start = external global i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)*
@PL_regexecp = external global i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)*
@.str13 = private unnamed_addr constant [35 x i8] c"panic: pp_match start/end pointers\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"READLINE\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str16 = private unnamed_addr constant [36 x i8] c"glob failed (can't start child: %s)\00", align 1
@PL_rs = external global %struct.sv*
@.str17 = private unnamed_addr constant [44 x i8] c"glob failed (child exited with status %d%s)\00", align 1
@PL_statusvalue = external global i32
@.str18 = private unnamed_addr constant [14 x i8] c", core dumped\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"$&*(){}[]'\22;\5C|?<>~`\00", align 1
@PL_statbuf = external global %struct.stat
@.str20 = private unnamed_addr constant [38 x i8] c"utf8 \22\5Cx%02X\22 does not map to Unicode\00", align 1
@PL_markstack = external global i32*
@PL_retstack_ix = external global i32
@.str21 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"Can't localize pseudo-hash element\00", align 1
@PL_no_helem = external constant [0 x i8]
@.str24 = private unnamed_addr constant [15 x i8] c"panic: pp_iter\00", align 1
@PL_curstack = external global %struct.av*
@.str25 = private unnamed_addr constant [32 x i8] c"Use of freed value in iteration\00", align 1
@.str26 = private unnamed_addr constant [16 x i8] c"panic: pp_subst\00", align 1
@PL_encoding = external global %struct.sv*
@.str27 = private unnamed_addr constant [18 x i8] c"Substitution loop\00", align 1
@PL_tmps_stack = external global %struct.sv**
@.str28 = private unnamed_addr constant [40 x i8] c"Can't modify non-lvalue subroutine call\00", align 1
@.str29 = private unnamed_addr constant [39 x i8] c"Can't return %s from lvalue subroutine\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str31 = private unnamed_addr constant [17 x i8] c"a readonly value\00", align 1
@.str32 = private unnamed_addr constant [12 x i8] c"a temporary\00", align 1
@.str33 = private unnamed_addr constant [53 x i8] c"%s returned from lvalue subroutine in scalar context\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"Empty array\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str36 = private unnamed_addr constant [41 x i8] c"Can't return a %s from lvalue subroutine\00", align 1
@.str37 = private unnamed_addr constant [15 x i8] c"readonly value\00", align 1
@.str38 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str39 = private unnamed_addr constant [21 x i8] c"Not a CODE reference\00", align 1
@.str40 = private unnamed_addr constant [13 x i8] c"a subroutine\00", align 1
@.str41 = private unnamed_addr constant [28 x i8] c"Undefined subroutine called\00", align 1
@.str42 = private unnamed_addr constant [32 x i8] c"Undefined subroutine &%_ called\00", align 1
@PL_DBsub = external global %struct.gv*
@.str43 = private unnamed_addr constant [27 x i8] c"No DB::sub routine defined\00", align 1
@PL_curcopdb = external global %struct.cop*
@PL_savestack_max = external global i32
@PL_comppad = external global %struct.av*
@PL_savestack = external global %union.any*
@PL_perldb = external global i32
@.str44 = private unnamed_addr constant [39 x i8] c"Deep recursion on anonymous subroutine\00", align 1
@.str45 = private unnamed_addr constant [34 x i8] c"Deep recursion on subroutine \22%_\22\00", align 1
@.str46 = private unnamed_addr constant [37 x i8] c"Use of reference \22%_\22 as array index\00", align 1
@PL_no_aelem = external constant [0 x i8]
@.str47 = private unnamed_addr constant [45 x i8] c"Can't call method \22%s\22 on an undefined value\00", align 1
@PL_stashcache = external global %struct.hv*
@.str48 = private unnamed_addr constant [26 x i8] c"Can't call method \22%s\22 %s\00", align 1
@.str49 = private unnamed_addr constant [38 x i8] c"without a package or object reference\00", align 1
@.str50 = private unnamed_addr constant [22 x i8] c"on an undefined value\00", align 1
@.str51 = private unnamed_addr constant [46 x i8] c"Can't call method \22%s\22 on unblessed reference\00", align 1
@PL_sub_generation = external global i32
@.str52 = private unnamed_addr constant [6 x i8] c"SUPER\00", align 1
@.str53 = private unnamed_addr constant [51 x i8] c"Can't use anonymous symbol table for method lookup\00", align 1
@.str54 = private unnamed_addr constant [51 x i8] c"Can't locate object method \22%s\22 via package \22%.*s\22\00", align 1
@.str55 = private unnamed_addr constant [88 x i8] c"Can't locate object method \22%s\22 via package \22%.*s\22 (perhaps you forgot to load \22%.*s\22?)\00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str57 = private unnamed_addr constant [47 x i8] c"Reference found where even-sized list expected\00", align 1
@.str58 = private unnamed_addr constant [42 x i8] c"Odd number of elements in hash assignment\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_const() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_sv = getelementptr inbounds %struct.op* %2, i64 1
  %3 = bitcast %struct.op* %op_sv to %struct.sv**
  %4 = load %struct.sv** %3, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %5, i64 0, i32 0
  %6 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %6
}

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_nextstate() #0 {
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
  tail call void @Perl_free_tmps() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %10
}

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gvsv() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %2, i64 0, i32 7
  %3 = load i8* %op_private, align 1, !tbaa !1
  %tobool = icmp slt i8 %3, 0
  %op_sv = getelementptr inbounds %struct.op* %2, i64 1
  %4 = bitcast %struct.op* %op_sv to %struct.sv**
  %5 = load %struct.sv** %4, align 8, !tbaa !0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  %call2 = tail call %struct.sv* @Perl_save_scalar(%struct.gv* %6) #8
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call2, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %if.end5

if.else:                                          ; preds = %if.end
  %sv_any = bitcast %struct.sv* %5 to %struct.xpvgv**
  %7 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 7
  %8 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %8, i64 0, i32 0
  %9 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %incdec.ptr4 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %9, %struct.sv** %incdec.ptr4, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %sp.1 = phi %struct.sv** [ %incdec.ptr, %if.then1 ], [ %incdec.ptr4, %if.else ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  %11 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %11
}

; Function Attrs: optsize
declare %struct.sv* @Perl_save_scalar(%struct.gv*) #1

; Function Attrs: nounwind optsize readonly uwtable
define %struct.op* @Perl_pp_null() #2 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %0, i64 0, i32 0
  %1 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %1
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_setstate() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %1 = bitcast %struct.op* %0 to %struct.cop*
  store volatile %struct.cop* %1, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %0, i64 0, i32 0
  %2 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %2
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_pushmark() #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @Perl_markstack_grow() #8
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32* [ %.pre, %if.then ], [ %incdec.ptr, %entry ]
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div1 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div1 to i32
  store i32 %conv, i32* %2, align 4, !tbaa !3
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %5, i64 0, i32 0
  %6 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %6
}

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_stringify() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !4
  %3 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %2
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load %struct.sv** %0, align 8, !tbaa !0
  tail call void @Perl_sv_copypv(%struct.sv* %4, %struct.sv* %5) #8
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_mg_set(%struct.sv* %4) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.sv* %4, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %7, i64 0, i32 0
  %8 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %8
}

; Function Attrs: optsize
declare void @Perl_sv_copypv(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_gv() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_sv = getelementptr inbounds %struct.op* %2, i64 1
  %3 = bitcast %struct.op* %op_sv to %struct.sv**
  %4 = load %struct.sv** %3, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %5, i64 0, i32 0
  %6 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %6
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_and() #0 {
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
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #8
  %tobool29 = icmp eq i8 %call, 0
  br i1 %tobool29, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true6, %lor.lhs.false, %cond.true2, %cond.true15, %cond.false27, %entry, %cond.true23
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %15, i64 0, i32 0
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %cond.true15, %cond.false27, %land.lhs.true, %cond.true23
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %17 = getelementptr inbounds %struct.op* %16, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi %struct.op** [ %17, %if.else ], [ %op_next, %if.then ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_sassign() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %2 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %3, i64 0, i32 7
  %4 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %4, 64
  %tobool = icmp eq i8 %and, 0
  %. = select i1 %tobool, %struct.sv* %1, %struct.sv* %2
  %.34 = select i1 %tobool, %struct.sv* %2, %struct.sv* %1
  %5 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool2 = icmp eq i8 %5, 0
  %6 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool4 = icmp eq i8 %6, 0
  %or.cond = or i1 %tobool2, %tobool4
  br i1 %or.cond, label %if.end12, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %.34, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and6 = and i32 %7, 57344
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.then11, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %call = tail call signext i8 @Perl_sv_tainted(%struct.sv* %.34) #8
  %tobool10 = icmp eq i8 %call, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true8, %land.lhs.true5
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %entry, %if.then11
  %cmp = icmp eq %struct.sv* %., %.34
  br i1 %cmp, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end12
  tail call void @Perl_sv_setsv_flags(%struct.sv* %., %struct.sv* %.34, i32 2) #8
  %sv_flags15 = getelementptr inbounds %struct.sv* %., i64 0, i32 2
  %8 = load i32* %sv_flags15, align 4, !tbaa !3
  %and16 = and i32 %8, 16384
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.then14
  %call19 = tail call i32 @Perl_mg_set(%struct.sv* %.) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end12, %if.then18
  store %struct.sv* %., %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %10
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_cond_expr() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %cond.end33, label %cond.false

cond.false:                                       ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false10, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %4 = bitcast i8* %3 to %struct.xpv*
  store %struct.xpv* %4, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %3, null
  br i1 %tobool3, label %land.end9, label %land.rhs

land.rhs:                                         ; preds = %cond.true2
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %cmp = icmp ugt i64 %6, 1
  br i1 %cmp, label %land.end9, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool5 = icmp eq i64 %6, 0
  br i1 %tobool5, label %land.end9, label %land.rhs6

land.rhs6:                                        ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %3 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  %8 = load i8* %7, align 1, !tbaa !1
  %cmp7 = icmp ne i8 %8, 48
  br label %land.end9

land.end9:                                        ; preds = %lor.rhs, %cond.true2, %land.rhs, %land.rhs6
  %9 = phi i1 [ false, %cond.true2 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp7, %land.rhs6 ]
  %cond = zext i1 %9 to i32
  br label %cond.end33

cond.false10:                                     ; preds = %cond.false
  %and12 = and i32 %2, 65536
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %cond.false18, label %cond.true14

cond.true14:                                      ; preds = %cond.false10
  %sv_any15 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %10 = load i8** %sv_any15, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %10, i64 24
  %11 = bitcast i8* %xiv_iv to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %cmp16 = icmp ne i64 %12, 0
  %conv17 = zext i1 %cmp16 to i32
  br label %cond.end33

cond.false18:                                     ; preds = %cond.false10
  %and20 = and i32 %2, 131072
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %cond.false26, label %cond.true22

cond.true22:                                      ; preds = %cond.false18
  %sv_any23 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %13 = load i8** %sv_any23, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %13, i64 32
  %14 = bitcast i8* %xnv_nv to double*
  %15 = load double* %14, align 8, !tbaa !5
  %cmp24 = fcmp une double %15, 0.000000e+00
  %conv25 = zext i1 %cmp24 to i32
  br label %cond.end33

cond.false26:                                     ; preds = %cond.false18
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #8
  %conv27 = sext i8 %call to i32
  br label %cond.end33

cond.end33:                                       ; preds = %entry, %land.end9, %cond.true22, %cond.false26, %cond.true14
  %cond34 = phi i32 [ 0, %entry ], [ %cond, %land.end9 ], [ %conv17, %cond.true14 ], [ %conv25, %cond.true22 ], [ %conv27, %cond.false26 ]
  %tobool35 = icmp eq i32 %cond34, 0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %17 = getelementptr inbounds %struct.op* %16, i64 1, i32 1
  %op_next = getelementptr inbounds %struct.op* %16, i64 0, i32 0
  %retval.0.in = select i1 %tobool35, %struct.op** %op_next, %struct.op** %17
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_unstack() #0 {
entry:
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %0 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 2
  %2 = load i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 1
  %3 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 0
  %4 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %0, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %5 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %6 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @Perl_free_tmps() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %sub = add nsw i32 %7, -1
  %idxprom1 = sext i32 %sub to i64
  %8 = load i32** @PL_scopestack, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %8, i64 %idxprom1
  %9 = load i32* %arrayidx2, align 4, !tbaa !3
  %10 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %10, %9
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @Perl_leave_scope(i32 %9) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %11, i64 0, i32 0
  %12 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %12
}

; Function Attrs: optsize
declare void @Perl_leave_scope(i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_concat() #0 {
entry:
  %llen = alloca i64, align 8
  %rlen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 64
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %3 = load i64* %op_targ, align 8, !tbaa !4
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.sv** %4, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.sv** [ %arrayidx, %cond.true ], [ %arrayidx1, %cond.false ]
  %cond = load %struct.sv** %cond.in, align 8
  %5 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool2 = icmp eq i64 %5, 0
  br i1 %tobool2, label %cond.end.if.end31_crit_edge, label %if.then

cond.end.if.end31_crit_edge:                      ; preds = %cond.end
  %incdec.ptr33.pre = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %if.end31

if.then:                                          ; preds = %cond.end
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %7 = load %struct.sv** %add.ptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and3 = and i32 %8, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags5 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %9 = load i32* %sv_flags5, align 4, !tbaa !3
  %and6 = and i32 %9, 268435456
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %tobool11 = icmp ne i8 %and, 0
  %cond12 = select i1 %tobool11, i32 4, i32 0
  %call = call %struct.sv* @Perl_amagic_call(%struct.sv* %7, %struct.sv* %6, i32 54, i32 %cond12) #8
  %tobool13 = icmp eq %struct.sv* %call, null
  br i1 %tobool13, label %if.end31, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %10 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %10, i64 -1
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags15 = getelementptr inbounds %struct.op* %11, i64 0, i32 6
  %12 = load i8* %op_flags15, align 1, !tbaa !1
  %and17 = and i8 %12, 64
  %tobool18 = icmp eq i8 %and17, 0
  %sv_flags20 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  br i1 %tobool18, label %lor.lhs.false19, label %if.then23

lor.lhs.false19:                                  ; preds = %if.then14
  %13 = load i32* %sv_flags20, align 4, !tbaa !3
  %and21 = and i32 %13, 1024
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.then14, %lor.lhs.false19
  call void @Perl_sv_setsv_flags(%struct.sv* %cond, %struct.sv* %call, i32 2) #8
  %14 = load i32* %sv_flags20, align 4, !tbaa !3
  %and25 = and i32 %14, 16384
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then23
  %call28 = call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end29

if.end29:                                         ; preds = %lor.lhs.false19, %if.then27, %if.then23
  %storemerge = phi %struct.sv* [ %cond, %if.then23 ], [ %cond, %if.then27 ], [ %call, %lor.lhs.false19 ]
  store %struct.sv* %storemerge, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %cond.end.if.end31_crit_edge, %lor.lhs.false
  %incdec.ptr33.pre-phi = phi %struct.sv** [ %incdec.ptr33.pre, %cond.end.if.end31_crit_edge ], [ %add.ptr, %lor.lhs.false ], [ %add.ptr, %land.lhs.true ]
  %15 = load %struct.sv** %0, align 8, !tbaa !0
  %16 = load %struct.sv** %incdec.ptr33.pre-phi, align 8, !tbaa !0
  %sv_flags35 = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %17 = load i32* %sv_flags35, align 4, !tbaa !3
  %and36 = and i32 %17, 262144
  %cmp = icmp eq i32 %and36, 0
  br i1 %cmp, label %cond.false40, label %cond.true38

cond.true38:                                      ; preds = %if.end31
  %sv_any = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %18 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %18, i64 8
  %19 = bitcast i8* %xpv_cur to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  store i64 %20, i64* %rlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %18 to i8**
  %21 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end42

cond.false40:                                     ; preds = %if.end31
  %call41 = call i8* @Perl_sv_2pv_flags(%struct.sv* %15, i64* %rlen, i32 2) #8
  %.pre = load i32* %sv_flags35, align 4, !tbaa !3
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true38
  %22 = phi i32 [ %17, %cond.true38 ], [ %.pre, %cond.false40 ]
  %cond43 = phi i8* [ %21, %cond.true38 ], [ %call41, %cond.false40 ]
  %and45 = and i32 %22, 536870912
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end42
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %23, i64 0, i32 7
  %24 = load i8* %op_private, align 1, !tbaa !1
  %and48 = and i8 %24, 8
  %tobool49 = icmp ne i8 %and48, 0
  br label %land.end

land.end:                                         ; preds = %cond.end42, %land.rhs
  %25 = phi i1 [ true, %cond.end42 ], [ %tobool49, %land.rhs ]
  %cmp52 = icmp ne %struct.sv* %cond, %15
  %cmp55 = icmp eq %struct.sv* %15, %16
  %or.cond = or i1 %cmp52, %cmp55
  br i1 %or.cond, label %if.end73, label %if.then57

if.then57:                                        ; preds = %land.end
  %26 = load i64* %rlen, align 8, !tbaa !4
  %call58 = call %struct.sv* @Perl_newSVpvn(i8* %cond43, i64 %26) #8
  %call59 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call58) #8
  %sv_flags60 = getelementptr inbounds %struct.sv* %call59, i64 0, i32 2
  %27 = load i32* %sv_flags60, align 4, !tbaa !3
  %and61 = and i32 %27, 262144
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %cond.false69, label %cond.true64

cond.true64:                                      ; preds = %if.then57
  %sv_any65 = getelementptr inbounds %struct.sv* %call59, i64 0, i32 0
  %28 = load i8** %sv_any65, align 8, !tbaa !0
  %xpv_cur66 = getelementptr inbounds i8* %28, i64 8
  %29 = bitcast i8* %xpv_cur66 to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  store i64 %30, i64* %rlen, align 8, !tbaa !4
  %xpv_pv68 = bitcast i8* %28 to i8**
  %31 = load i8** %xpv_pv68, align 8, !tbaa !0
  br label %if.end73

cond.false69:                                     ; preds = %if.then57
  %call70 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call59, i64* %rlen, i32 2) #8
  br label %if.end73

if.end73:                                         ; preds = %cond.true64, %cond.false69, %land.end
  %right32.0 = phi %struct.sv* [ %15, %land.end ], [ %call59, %cond.false69 ], [ %call59, %cond.true64 ]
  %rpv.0 = phi i8* [ %cond43, %land.end ], [ %call70, %cond.false69 ], [ %31, %cond.true64 ]
  %rcopied.0 = phi i8 [ 0, %land.end ], [ 1, %cond.false69 ], [ 1, %cond.true64 ]
  %cmp74 = icmp eq %struct.sv* %cond, %16
  %sv_flags77 = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %32 = load i32* %sv_flags77, align 4, !tbaa !3
  br i1 %cmp74, label %if.else111, label %if.then76

if.then76:                                        ; preds = %if.end73
  %and78 = and i32 %32, 262144
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %cond.false86, label %cond.true81

cond.true81:                                      ; preds = %if.then76
  %sv_any82 = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %33 = load i8** %sv_any82, align 8, !tbaa !0
  %xpv_cur83 = getelementptr inbounds i8* %33, i64 8
  %34 = bitcast i8* %xpv_cur83 to i64*
  %35 = load i64* %34, align 8, !tbaa !4
  store i64 %35, i64* %llen, align 8, !tbaa !4
  %xpv_pv85 = bitcast i8* %33 to i8**
  %36 = load i8** %xpv_pv85, align 8, !tbaa !0
  br label %cond.end88

cond.false86:                                     ; preds = %if.then76
  %call87 = call i8* @Perl_sv_2pv_flags(%struct.sv* %16, i64* %llen, i32 2) #8
  %.pre254 = load i32* %sv_flags77, align 4, !tbaa !3
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false86, %cond.true81
  %37 = phi i32 [ %32, %cond.true81 ], [ %.pre254, %cond.false86 ]
  %cond89 = phi i8* [ %36, %cond.true81 ], [ %call87, %cond.false86 ]
  %and91 = and i32 %37, 536870912
  %tobool92 = icmp eq i32 %and91, 0
  br i1 %tobool92, label %land.end100, label %land.rhs93

land.rhs93:                                       ; preds = %cond.end88
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private94 = getelementptr inbounds %struct.cop* %38, i64 0, i32 7
  %39 = load i8* %op_private94, align 1, !tbaa !1
  %and96 = and i8 %39, 8
  %tobool97 = icmp ne i8 %and96, 0
  br label %land.end100

land.end100:                                      ; preds = %cond.end88, %land.rhs93
  %40 = phi i1 [ %tobool97, %land.rhs93 ], [ true, %cond.end88 ]
  %conv103 = zext i1 %40 to i8
  %41 = load i64* %llen, align 8, !tbaa !4
  call void @Perl_sv_setpvn(%struct.sv* %cond, i8* %cond89, i64 %41) #8
  %sv_flags108 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %42 = load i32* %sv_flags108, align 4, !tbaa !3
  br i1 %40, label %if.else107, label %if.then105

if.then105:                                       ; preds = %land.end100
  %or = or i32 %42, 536870912
  store i32 %or, i32* %sv_flags108, align 4, !tbaa !3
  br label %if.end158

if.else107:                                       ; preds = %land.end100
  %and109 = and i32 %42, -536870913
  store i32 %and109, i32* %sv_flags108, align 4, !tbaa !3
  br label %if.end158

if.else111:                                       ; preds = %if.end73
  %and113 = and i32 %32, 8192
  %tobool114 = icmp eq i32 %and113, 0
  br i1 %tobool114, label %if.end117, label %if.then115

if.then115:                                       ; preds = %if.else111
  %call116 = call i32 @Perl_mg_get(%struct.sv* %cond) #8
  br label %if.end117

if.end117:                                        ; preds = %if.else111, %if.then115
  %sv_flags118 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %43 = load i32* %sv_flags118, align 4, !tbaa !3
  %and119 = and i32 %43, 118423552
  %tobool120 = icmp eq i32 %and119, 0
  br i1 %tobool120, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end117
  call void @Perl_sv_setpv(%struct.sv* %cond, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) #8
  br label %if.end122

if.end122:                                        ; preds = %if.end117, %if.then121
  %44 = load i32* %sv_flags77, align 4, !tbaa !3
  %and124 = and i32 %44, 262144
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %cond.false132, label %cond.true127

cond.true127:                                     ; preds = %if.end122
  %sv_any128 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %45 = load i8** %sv_any128, align 8, !tbaa !0
  %xpv_cur129 = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur129 to i64*
  %47 = load i64* %46, align 8, !tbaa !4
  store i64 %47, i64* %llen, align 8, !tbaa !4
  br label %cond.end134

cond.false132:                                    ; preds = %if.end122
  %call133 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond, i64* %llen, i32 0) #8
  %.pre253 = load i32* %sv_flags77, align 4, !tbaa !3
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false132, %cond.true127
  %48 = phi i32 [ %.pre253, %cond.false132 ], [ %44, %cond.true127 ]
  %and137 = and i32 %48, 536870912
  %tobool138 = icmp eq i32 %and137, 0
  br i1 %tobool138, label %land.end146, label %land.rhs139

land.rhs139:                                      ; preds = %cond.end134
  %49 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private140 = getelementptr inbounds %struct.cop* %49, i64 0, i32 7
  %50 = load i8* %op_private140, align 1, !tbaa !1
  %and142 = and i8 %50, 8
  %tobool143 = icmp ne i8 %and142, 0
  br label %land.end146

land.end146:                                      ; preds = %cond.end134, %land.rhs139
  %51 = phi i1 [ true, %cond.end134 ], [ %tobool143, %land.rhs139 ]
  %conv149 = zext i1 %51 to i8
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private150 = getelementptr inbounds %struct.cop* %52, i64 0, i32 7
  %53 = load i8* %op_private150, align 1, !tbaa !1
  %and152 = and i8 %53, 8
  %tobool153 = icmp eq i8 %and152, 0
  br i1 %tobool153, label %if.end158, label %if.then154

if.then154:                                       ; preds = %land.end146
  %54 = load i32* %sv_flags118, align 4, !tbaa !3
  %and156 = and i32 %54, -536870913
  store i32 %and156, i32* %sv_flags118, align 4, !tbaa !3
  br label %if.end158

if.end158:                                        ; preds = %land.end146, %if.then154, %if.then105, %if.else107
  %lbyte.0 = phi i8 [ %conv103, %if.else107 ], [ %conv103, %if.then105 ], [ %conv149, %if.then154 ], [ %conv149, %land.end146 ]
  %conv159251 = zext i8 %lbyte.0 to i32
  %conv160 = zext i1 %25 to i32
  %cmp161 = icmp eq i32 %conv159251, %conv160
  br i1 %cmp161, label %if.end188, label %if.then163

if.then163:                                       ; preds = %if.end158
  %tobool164 = icmp eq i8 %lbyte.0, 0
  br i1 %tobool164, label %if.else167, label %if.then165

if.then165:                                       ; preds = %if.then163
  %call166 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %cond, i32 0) #8
  br label %if.end188

if.else167:                                       ; preds = %if.then163
  %tobool168 = icmp eq i8 %rcopied.0, 0
  br i1 %tobool168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.else167
  %55 = load i64* %rlen, align 8, !tbaa !4
  %call170 = call %struct.sv* @Perl_newSVpvn(i8* %rpv.0, i64 %55) #8
  %call171 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call170) #8
  br label %if.end172

if.end172:                                        ; preds = %if.else167, %if.then169
  %right32.1 = phi %struct.sv* [ %right32.0, %if.else167 ], [ %call171, %if.then169 ]
  %call173 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %right32.1, i32 0) #8
  %sv_flags174 = getelementptr inbounds %struct.sv* %right32.1, i64 0, i32 2
  %56 = load i32* %sv_flags174, align 4, !tbaa !3
  %and175 = and i32 %56, 262144
  %cmp176 = icmp eq i32 %and175, 0
  br i1 %cmp176, label %cond.false183, label %cond.true178

cond.true178:                                     ; preds = %if.end172
  %sv_any179 = getelementptr inbounds %struct.sv* %right32.1, i64 0, i32 0
  %57 = load i8** %sv_any179, align 8, !tbaa !0
  %xpv_cur180 = getelementptr inbounds i8* %57, i64 8
  %58 = bitcast i8* %xpv_cur180 to i64*
  %59 = load i64* %58, align 8, !tbaa !4
  store i64 %59, i64* %rlen, align 8, !tbaa !4
  %xpv_pv182 = bitcast i8* %57 to i8**
  %60 = load i8** %xpv_pv182, align 8, !tbaa !0
  br label %if.end188

cond.false183:                                    ; preds = %if.end172
  %call184 = call i8* @Perl_sv_2pv_flags(%struct.sv* %right32.1, i64* %rlen, i32 2) #8
  br label %if.end188

if.end188:                                        ; preds = %if.end158, %cond.true178, %cond.false183, %if.then165
  %rpv.1 = phi i8* [ %rpv.0, %if.then165 ], [ %60, %cond.true178 ], [ %call184, %cond.false183 ], [ %rpv.0, %if.end158 ]
  %61 = load i64* %rlen, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cond, i8* %rpv.1, i64 %61, i32 0) #8
  %sv_flags189 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %62 = load i32* %sv_flags189, align 4, !tbaa !3
  %and190 = and i32 %62, 16384
  %tobool191 = icmp eq i32 %and190, 0
  br i1 %tobool191, label %if.end194, label %if.then192

if.then192:                                       ; preds = %if.end188
  %call193 = call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end194

if.end194:                                        ; preds = %if.end188, %if.then192
  store %struct.sv* %cond, %struct.sv** %incdec.ptr33.pre-phi, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end194, %if.end29
  %storemerge252 = phi %struct.sv** [ %incdec.ptr, %if.end29 ], [ %incdec.ptr33.pre-phi, %if.end194 ]
  store %struct.sv** %storemerge252, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_amagic_call(%struct.sv*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_padsv() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %2 = load i64* %op_targ, align 8, !tbaa !4
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
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %4, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %6 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %6, i64 0, i32 6
  %7 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %7, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.end20, label %if.then1

if.then1:                                         ; preds = %if.end
  %op_private = getelementptr inbounds %struct.op* %6, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %conv2 = zext i8 %8 to i32
  %and3 = and i32 %conv2, 128
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then1
  %op_targ6 = getelementptr inbounds %struct.op* %6, i64 0, i32 3
  %9 = load i64* %op_targ6, align 8, !tbaa !4
  %10 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %struct.sv** %10, i64 %9
  tail call void @Perl_save_clearsv(%struct.sv** %arrayidx7) #8
  br label %if.end20

if.else:                                          ; preds = %if.then1
  %and10 = and i32 %conv2, 96
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.else
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %op_targ13 = getelementptr inbounds %struct.op* %6, i64 0, i32 3
  %11 = load i64* %op_targ13, align 8, !tbaa !4
  %12 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds %struct.sv** %12, i64 %11
  %13 = load %struct.sv** %arrayidx14, align 8, !tbaa !0
  %14 = load i8* %op_private, align 1, !tbaa !1
  %conv16 = zext i8 %14 to i32
  %and17 = and i32 %conv16, 96
  tail call void @Perl_vivify_ref(%struct.sv* %13, i32 %and17) #9
  %15 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end, %if.then5, %if.then12
  %sp.1 = phi %struct.sv** [ %incdec.ptr, %if.then5 ], [ %15, %if.then12 ], [ %incdec.ptr, %if.else ], [ %incdec.ptr, %if.end ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %16, i64 0, i32 0
  %17 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %17
}

; Function Attrs: optsize
declare void @Perl_save_clearsv(%struct.sv**) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_vivify_ref(%struct.sv* %sv, i32 %to_what) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 8192
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_mg_get(%struct.sv* %sv) #8
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi i32 [ %0, %entry ], [ %.pre, %if.then ]
  %and2 = and i32 %1, 118423552
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end44

if.then4:                                         ; preds = %if.end
  %and6 = and i32 %1, 8388608
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then4
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #8
  %.pre61 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then8
  %2 = phi i32 [ %1, %if.then4 ], [ %.pre61, %if.then8 ]
  %and11 = and i32 %2, 255
  %cmp = icmp ult i32 %and11, 3
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %call13 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %sv, i32 3) #8
  br label %if.end26

if.else:                                          ; preds = %if.end9
  %cmp16 = icmp ugt i32 %and11, 3
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.else
  %and19 = and i32 %2, 2097152
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then17
  %call21 = tail call i32 @Perl_sv_backoff(%struct.sv* %sv) #8
  br label %land.end

land.end:                                         ; preds = %if.then17, %land.rhs
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %3 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %4) #8
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %5, i64 8
  call void @llvm.memset.p0i8.i64(i8* %xpv_cur, i8 0, i64 16, i32 8, i1 false)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %land.end, %if.then12
  switch i32 %to_what, label %sw.epilog [
    i32 96, label %sw.bb
    i32 32, label %sw.bb29
    i32 64, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end26
  %call27 = tail call %struct.sv* @Perl_newSV(i64 0) #8
  %sv_any28 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %6 = load i8** %sv_any28, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %6 to %struct.sv**
  store %struct.sv* %call27, %struct.sv** %xrv_rv, align 8, !tbaa !0
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end26
  %call30 = tail call %struct.av* @Perl_newAV() #8
  %7 = bitcast %struct.av* %call30 to %struct.sv*
  %sv_any31 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %8 = load i8** %sv_any31, align 8, !tbaa !0
  %xrv_rv32 = bitcast i8* %8 to %struct.sv**
  store %struct.sv* %7, %struct.sv** %xrv_rv32, align 8, !tbaa !0
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end26
  %call34 = tail call %struct.hv* @Perl_newHV() #8
  %9 = bitcast %struct.hv* %call34 to %struct.sv*
  %sv_any35 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %10 = load i8** %sv_any35, align 8, !tbaa !0
  %xrv_rv36 = bitcast i8* %10 to %struct.sv**
  store %struct.sv* %9, %struct.sv** %xrv_rv36, align 8, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end26, %sw.bb33, %sw.bb29, %sw.bb
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %11, 524288
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %and39 = and i32 %11, 16384
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %sw.epilog
  %call42 = tail call i32 @Perl_mg_set(%struct.sv* %sv) #8
  br label %if.end44

if.end44:                                         ; preds = %sw.epilog, %if.end, %if.then41
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_readline() #0 {
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
  %3 = load i64* %op_targ, align 8, !tbaa !4
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.sv** [ %incdec.ptr, %cond.true ], [ %arrayidx, %cond.false ]
  %cond = load %struct.sv** %cond.in, align 8
  %5 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool3 = icmp eq i64 %5, 0
  br i1 %tobool3, label %if.end15, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load %struct.sv** %6, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and5 = and i32 %8, 268435456
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %7, %struct.sv* @PL_sv_undef, i32 63, i32 9) #8
  %tobool7 = icmp eq %struct.sv* %call, null
  br i1 %tobool7, label %if.end15, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %9 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %cond, %struct.sv* %call, i32 2) #8
  %sv_flags9 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %10 = load i32* %sv_flags9, align 4, !tbaa !3
  %and10 = and i32 %10, 16384
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then8
  %call13 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then12
  store %struct.sv* %cond, %struct.sv** %9, align 8, !tbaa !0
  store %struct.sv** %9, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %11, i64 0, i32 0
  %12 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %cond.end, %if.then
  %13 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr16 = getelementptr inbounds %struct.sv** %13, i64 -1
  store %struct.sv** %incdec.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %14 = load %struct.sv** %13, align 8, !tbaa !0
  %15 = bitcast %struct.sv* %14 to %struct.gv*
  store %struct.gv* %15, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %16 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %17 = load i32* %16, align 4, !tbaa !3
  %and18 = and i32 %17, 255
  %cmp = icmp eq i32 %and18, 13
  br i1 %cmp, label %if.end42, label %if.then20

if.then20:                                        ; preds = %if.end15
  %and22 = and i32 %17, 524288
  %tobool23 = icmp eq i32 %and22, 0
  br i1 %tobool23, label %if.else, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.then20
  %sv_any = bitcast %struct.sv* %14 to %struct.xpvgv**
  %18 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast %struct.xpvgv* %18 to %struct.sv**
  %19 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags25 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags25, align 4, !tbaa !3
  %and26 = and i32 %20, 255
  %cmp27 = icmp eq i32 %and26, 13
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %land.lhs.true24
  %21 = bitcast %struct.sv* %19 to %struct.gv*
  store %struct.gv* %21, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end42

if.else:                                          ; preds = %if.then20, %land.lhs.true24
  %22 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp33 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.else
  %call36 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr16, %struct.sv** %incdec.ptr16, i32 1) #8
  %.pre = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.else
  %23 = phi %struct.gv* [ %.pre, %if.then35 ], [ %15, %if.else ]
  %sp32.0 = phi %struct.sv** [ %call36, %if.then35 ], [ %incdec.ptr16, %if.else ]
  %24 = bitcast %struct.gv* %23 to %struct.sv*
  %incdec.ptr38 = getelementptr inbounds %struct.sv** %sp32.0, i64 1
  store %struct.sv* %24, %struct.sv** %incdec.ptr38, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr38, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call39 = tail call %struct.op* @Perl_pp_rv2gv() #8
  %25 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr40 = getelementptr inbounds %struct.sv** %25, i64 -1
  store %struct.sv** %incdec.ptr40, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.sv** %25, align 8, !tbaa !0
  %27 = bitcast %struct.sv* %26 to %struct.gv*
  store %struct.gv* %27, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %if.end15, %if.then29, %if.end37
  %call43 = tail call %struct.op* @Perl_do_readline() #9
  br label %return

return:                                           ; preds = %if.end42, %if.end
  %retval.0 = phi %struct.op* [ %12, %if.end ], [ %call43, %if.end42 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.op* @Perl_pp_rv2gv() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_do_readline() #0 {
entry:
  %n_a = alloca i64, align 8
  %f = alloca i8*, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 64
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %3 = load i64* %op_targ, align 8, !tbaa !4
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.true ], [ %0, %cond.false ]
  %cond.in = phi %struct.sv** [ %0, %cond.true ], [ %arrayidx, %cond.false ]
  %cond = load %struct.sv** %cond.in, align 8
  %5 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.gv* %5, null
  br i1 %tobool1, label %cond.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %6 = getelementptr inbounds %struct.gv* %5, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !3
  %and2 = and i32 %7, 255
  %cmp = icmp eq i32 %and2, 13
  br i1 %cmp, label %land.lhs.true4, label %cond.end10

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %5, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool5 = icmp eq %struct.gp* %9, null
  br i1 %tobool5, label %cond.end10, label %cond.true6

cond.true6:                                       ; preds = %land.lhs.true4
  %gp_io = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io, align 8, !tbaa !0
  br label %cond.end10

cond.end10:                                       ; preds = %land.lhs.true4, %cond.end, %land.lhs.true, %cond.true6
  %cond11 = phi %struct.io* [ %10, %cond.true6 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %cond.end ]
  %op_type = getelementptr inbounds %struct.op* %1, i64 0, i32 4
  %11 = load i16* %op_type, align 2, !tbaa !6
  %conv14 = zext i8 %2 to i32
  %and15 = and i32 %conv14, 3
  %cmp16 = icmp eq i32 %and15, 1
  br i1 %cmp16, label %cond.end38, label %cond.false19

cond.false19:                                     ; preds = %cond.end10
  %cmp23 = icmp eq i32 %and15, 2
  br i1 %cmp23, label %cond.end38, label %cond.false26

cond.false26:                                     ; preds = %cond.false19
  %cmp30 = icmp eq i32 %and15, 3
  br i1 %cmp30, label %cond.end38, label %cond.false33

cond.false33:                                     ; preds = %cond.false26
  %call = call i32 @Perl_block_gimme() #8
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false19, %cond.false26, %cond.false33, %cond.end10
  %cond39 = phi i32 [ 128, %cond.end10 ], [ 0, %cond.false19 ], [ %call, %cond.false33 ], [ 1, %cond.false26 ]
  %tobool40 = icmp ne %struct.io* %cond11, null
  br i1 %tobool40, label %land.lhs.true41, label %if.then204

land.lhs.true41:                                  ; preds = %cond.end38
  %12 = bitcast %struct.io* %cond11 to %struct.sv*
  %13 = getelementptr inbounds %struct.io* %cond11, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !3
  %and43 = and i32 %14, 32768
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %if.then93, label %cond.end48

cond.end48:                                       ; preds = %land.lhs.true41
  %call46 = call %struct.magic* @Perl_mg_find(%struct.sv* %12, i32 113) #8
  %tobool50 = icmp eq %struct.magic* %call46, null
  br i1 %tobool50, label %if.then93, label %if.then

if.then:                                          ; preds = %cond.end48
  %15 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr51 = getelementptr inbounds i32* %15, i64 1
  store i32* %incdec.ptr51, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %16 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp52 = icmp eq i32* %incdec.ptr51, %16
  br i1 %cmp52, label %if.then54, label %if.end

if.then54:                                        ; preds = %if.then
  call void @Perl_markstack_grow() #8
  %.pre911 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then54, %if.then
  %17 = phi i32* [ %.pre911, %if.then54 ], [ %incdec.ptr51, %if.then ]
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div848 = lshr exact i64 %sub.ptr.sub, 3
  %conv55 = trunc i64 %sub.ptr.div848 to i32
  store i32 %conv55, i32* %17, align 4, !tbaa !3
  %19 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast56 = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.lhs.cast
  %cmp60 = icmp slt i64 %sub.ptr.sub58, 8
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end
  %call63 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end
  %sp.1 = phi %struct.sv** [ %call63, %if.then62 ], [ %sp.0, %if.end ]
  %mg_obj = getelementptr inbounds %struct.magic* %call46, i64 0, i32 5
  %20 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool65 = icmp eq %struct.sv* %20, null
  br i1 %tobool65, label %cond.false68, label %cond.end71

cond.false68:                                     ; preds = %if.end64
  %call69 = call %struct.sv* @Perl_newRV(%struct.sv* %12) #8
  %call70 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call69) #8
  br label %cond.end71

cond.end71:                                       ; preds = %if.end64, %cond.false68
  %cond72 = phi %struct.sv* [ %call70, %cond.false68 ], [ %20, %if.end64 ]
  %incdec.ptr73 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %cond72, %struct.sv** %incdec.ptr73, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr73, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_push_scope() #8
  %call74 = call i32 @Perl_call_method(i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0), i32 %cond39) #8
  call void @Perl_pop_scope() #8
  %21 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp75 = icmp eq i32 %cond39, 0
  br i1 %cmp75, label %if.then77, label %if.end90

if.then77:                                        ; preds = %cond.end71
  %22 = load %struct.sv** %21, align 8, !tbaa !0
  %cmp79 = icmp eq %struct.sv* %cond, %22
  br i1 %cmp79, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.then77
  call void @Perl_sv_setsv_flags(%struct.sv* %cond, %struct.sv* %22, i32 18) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.then81
  %sv_flags83 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %23 = load i32* %sv_flags83, align 4, !tbaa !3
  %and84 = and i32 %23, 16384
  %tobool85 = icmp eq i32 %and84, 0
  br i1 %tobool85, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end82
  %call87 = call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end88

if.end88:                                         ; preds = %if.end82, %if.then86
  store %struct.sv* %cond, %struct.sv** %21, align 8, !tbaa !0
  br label %if.end90

if.end90:                                         ; preds = %if.end88, %cond.end71
  store %struct.sv** %21, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %24, i64 0, i32 0
  br label %return

if.then93:                                        ; preds = %cond.end48, %land.lhs.true41
  %sv_any94 = getelementptr inbounds %struct.io* %cond11, i64 0, i32 0
  %25 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %25, i64 0, i32 7
  %26 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool95 = icmp eq %struct._PerlIO** %26, null
  br i1 %tobool95, label %if.then96, label %if.else163

if.then96:                                        ; preds = %if.then93
  %xio_flags = getelementptr inbounds %struct.xpvio* %25, i64 0, i32 22
  %27 = load i8* %xio_flags, align 1, !tbaa !1
  %conv98 = sext i8 %27 to i32
  %and99 = and i32 %conv98, 1
  %tobool100 = icmp eq i32 %and99, 0
  br i1 %tobool100, label %if.else, label %if.then101

if.then101:                                       ; preds = %if.then96
  %and105 = and i32 %conv98, 2
  %tobool106 = icmp eq i32 %and105, 0
  br i1 %tobool106, label %if.end150, label %if.then107

if.then107:                                       ; preds = %if.then101
  %xio_lines = getelementptr inbounds %struct.xpvio* %25, i64 0, i32 10
  store i64 0, i64* %xio_lines, align 8, !tbaa !4
  %28 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %sv_any109 = getelementptr inbounds %struct.gv* %28, i64 0, i32 0
  %29 = load %struct.xpvgv** %sv_any109, align 8, !tbaa !0
  %xgv_gp110 = getelementptr inbounds %struct.xpvgv* %29, i64 0, i32 7
  %30 = load %struct.gp** %xgv_gp110, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %30, i64 0, i32 4
  %31 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool111 = icmp eq %struct.av* %31, null
  br i1 %tobool111, label %cond.false116, label %cond.end121

cond.false116:                                    ; preds = %if.then107
  %call117 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %28) #8
  %sv_any118 = getelementptr inbounds %struct.gv* %call117, i64 0, i32 0
  %32 = load %struct.xpvgv** %sv_any118, align 8, !tbaa !0
  %xgv_gp119 = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 7
  %33 = load %struct.gp** %xgv_gp119, align 8, !tbaa !0
  %gp_av120 = getelementptr inbounds %struct.gp* %33, i64 0, i32 4
  %34 = load %struct.av** %gp_av120, align 8, !tbaa !0
  br label %cond.end121

cond.end121:                                      ; preds = %if.then107, %cond.false116
  %cond122 = phi %struct.av* [ %34, %cond.false116 ], [ %31, %if.then107 ]
  %call123 = call i32 @Perl_av_len(%struct.av* %cond122) #8
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.end150

if.then126:                                       ; preds = %cond.end121
  %35 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_flags128 = getelementptr inbounds %struct.xpvio* %35, i64 0, i32 22
  %36 = load i8* %xio_flags128, align 1, !tbaa !1
  %and130 = and i8 %36, -3
  store i8 %and130, i8* %xio_flags128, align 1, !tbaa !1
  %37 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call132 = call signext i8 @Perl_do_open(%struct.gv* %37, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i32 1, i32 0, i32 0, i32 0, %struct._PerlIO** null) #8
  %38 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %sv_any133 = getelementptr inbounds %struct.gv* %38, i64 0, i32 0
  %39 = load %struct.xpvgv** %sv_any133, align 8, !tbaa !0
  %xgv_gp134 = getelementptr inbounds %struct.xpvgv* %39, i64 0, i32 7
  %40 = load %struct.gp** %xgv_gp134, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %40, i64 0, i32 0
  %41 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  call void @Perl_sv_setpvn(%struct.sv* %41, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i64 1) #8
  %42 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %sv_any135 = getelementptr inbounds %struct.gv* %42, i64 0, i32 0
  %43 = load %struct.xpvgv** %sv_any135, align 8, !tbaa !0
  %xgv_gp136 = getelementptr inbounds %struct.xpvgv* %43, i64 0, i32 7
  %44 = load %struct.gp** %xgv_gp136, align 8, !tbaa !0
  %gp_sv137 = getelementptr inbounds %struct.gp* %44, i64 0, i32 0
  %45 = load %struct.sv** %gp_sv137, align 8, !tbaa !0
  %sv_flags138 = getelementptr inbounds %struct.sv* %45, i64 0, i32 2
  %46 = load i32* %sv_flags138, align 4, !tbaa !3
  %and139 = and i32 %46, 16384
  %tobool140 = icmp eq i32 %and139, 0
  br i1 %tobool140, label %if.end146, label %if.then141

if.then141:                                       ; preds = %if.then126
  %call145 = call i32 @Perl_mg_set(%struct.sv* %45) #8
  br label %if.end146

if.end146:                                        ; preds = %if.then126, %if.then141
  %47 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_ifp148 = getelementptr inbounds %struct.xpvio* %47, i64 0, i32 7
  %48 = load %struct._PerlIO*** %xio_ifp148, align 8, !tbaa !0
  br label %have_fp

if.end150:                                        ; preds = %cond.end121, %if.then101
  %49 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call151 = call %struct._PerlIO** @Perl_nextargv(%struct.gv* %49) #8
  %tobool152 = icmp eq %struct._PerlIO** %call151, null
  br i1 %tobool152, label %if.then153, label %have_fp

if.then153:                                       ; preds = %if.end150
  %50 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call154 = call signext i8 @Perl_do_close(%struct.gv* %50, i8 signext 0) #8
  br label %if.then204

if.else:                                          ; preds = %if.then96
  %cmp156 = icmp eq i16 %11, 25
  br i1 %cmp156, label %if.then158, label %if.then204

if.then158:                                       ; preds = %if.else
  %incdec.ptr159 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  %51 = load %struct.sv** %sp.0, align 8, !tbaa !0
  %call160 = call %struct._PerlIO** @Perl_start_glob(%struct.sv* %51, %struct.io* %cond11) #8
  br label %if.end202

if.else163:                                       ; preds = %if.then93
  %cmp164 = icmp eq i16 %11, 25
  br i1 %cmp164, label %if.then166, label %if.else168

if.then166:                                       ; preds = %if.else163
  %incdec.ptr167 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  br label %if.end202

if.else168:                                       ; preds = %if.else163
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %52, i64 0, i32 14
  %53 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp169 = icmp eq %struct.sv* %53, null
  br i1 %cmp169, label %lor.lhs.false185, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.else168
  %54 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings172 = getelementptr inbounds %struct.cop* %54, i64 0, i32 14
  %55 = load %struct.sv** %cop_warnings172, align 8, !tbaa !0
  %cmp173 = icmp eq %struct.sv* %55, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp173, label %lor.lhs.false185, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %land.lhs.true171
  %56 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings176 = getelementptr inbounds %struct.cop* %56, i64 0, i32 14
  %57 = load %struct.sv** %cop_warnings176, align 8, !tbaa !0
  %cmp177 = icmp eq %struct.sv* %57, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp177, label %land.lhs.true193, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true175
  %58 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings179 = getelementptr inbounds %struct.cop* %58, i64 0, i32 14
  %59 = load %struct.sv** %cop_warnings179, align 8, !tbaa !0
  %sv_any180 = getelementptr inbounds %struct.sv* %59, i64 0, i32 0
  %60 = load i8** %sv_any180, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %60 to i8**
  %61 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds i8* %61, i64 1
  %62 = load i8* %arrayidx181, align 1, !tbaa !1
  %and183 = and i8 %62, 4
  %tobool184 = icmp eq i8 %and183, 0
  br i1 %tobool184, label %lor.lhs.false185, label %land.lhs.true193

lor.lhs.false185:                                 ; preds = %lor.lhs.false, %land.lhs.true171, %if.else168
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings186 = getelementptr inbounds %struct.cop* %63, i64 0, i32 14
  %64 = load %struct.sv** %cop_warnings186, align 8, !tbaa !0
  %cmp187 = icmp eq %struct.sv* %64, null
  br i1 %cmp187, label %land.lhs.true189, label %if.end202

land.lhs.true189:                                 ; preds = %lor.lhs.false185
  %65 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and191 = and i8 %65, 1
  %tobool192 = icmp eq i8 %and191, 0
  br i1 %tobool192, label %if.end202, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %lor.lhs.false, %land.lhs.true189, %land.lhs.true175
  %66 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_type = getelementptr inbounds %struct.xpvio* %66, i64 0, i32 21
  %67 = load i8* %xio_type, align 1, !tbaa !1
  %cmp196 = icmp eq i8 %67, 62
  br i1 %cmp196, label %if.then198, label %if.end202

if.then198:                                       ; preds = %land.lhs.true193
  %68 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  call void @Perl_report_evil_fh(%struct.gv* %68, %struct.io* %cond11, i32 -2) #8
  br label %if.end202

if.end202:                                        ; preds = %land.lhs.true189, %if.then158, %lor.lhs.false185, %land.lhs.true193, %if.then198, %if.then166
  %fp.0 = phi %struct._PerlIO** [ %26, %if.then166 ], [ %26, %if.then198 ], [ %26, %land.lhs.true193 ], [ %26, %land.lhs.true189 ], [ %26, %lor.lhs.false185 ], [ %call160, %if.then158 ]
  %sp.3 = phi %struct.sv** [ %incdec.ptr167, %if.then166 ], [ %sp.0, %if.then198 ], [ %sp.0, %land.lhs.true193 ], [ %sp.0, %land.lhs.true189 ], [ %sp.0, %lor.lhs.false185 ], [ %incdec.ptr159, %if.then158 ]
  %tobool203 = icmp eq %struct._PerlIO** %fp.0, null
  br i1 %tobool203, label %if.then204, label %have_fp

if.then204:                                       ; preds = %if.else, %cond.end38, %if.then153, %if.end202
  %sp.3855 = phi %struct.sv** [ %sp.3, %if.end202 ], [ %sp.0, %if.then153 ], [ %sp.0, %cond.end38 ], [ %sp.0, %if.else ]
  %69 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings205 = getelementptr inbounds %struct.cop* %69, i64 0, i32 14
  %70 = load %struct.sv** %cop_warnings205, align 8, !tbaa !0
  %cmp206 = icmp eq %struct.sv* %70, null
  br i1 %cmp206, label %lor.lhs.false232, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %if.then204
  %71 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings209 = getelementptr inbounds %struct.cop* %71, i64 0, i32 14
  %72 = load %struct.sv** %cop_warnings209, align 8, !tbaa !0
  %cmp210 = icmp eq %struct.sv* %72, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp210, label %lor.lhs.false232, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %land.lhs.true208
  %73 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings213 = getelementptr inbounds %struct.cop* %73, i64 0, i32 14
  %74 = load %struct.sv** %cop_warnings213, align 8, !tbaa !0
  %cmp214 = icmp eq %struct.sv* %74, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp214, label %land.lhs.true240, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %land.lhs.true212
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings217 = getelementptr inbounds %struct.cop* %75, i64 0, i32 14
  %76 = load %struct.sv** %cop_warnings217, align 8, !tbaa !0
  %sv_any218 = getelementptr inbounds %struct.sv* %76, i64 0, i32 0
  %77 = load i8** %sv_any218, align 8, !tbaa !0
  %xpv_pv219 = bitcast i8* %77 to i8**
  %78 = load i8** %xpv_pv219, align 8, !tbaa !0
  %arrayidx220 = getelementptr inbounds i8* %78, i64 1
  %79 = load i8* %arrayidx220, align 1, !tbaa !1
  %and222 = and i8 %79, 1
  %tobool223 = icmp eq i8 %and222, 0
  br i1 %tobool223, label %lor.lhs.false224, label %land.lhs.true240

lor.lhs.false224:                                 ; preds = %lor.lhs.false216
  %80 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings225 = getelementptr inbounds %struct.cop* %80, i64 0, i32 14
  %81 = load %struct.sv** %cop_warnings225, align 8, !tbaa !0
  %sv_any226 = getelementptr inbounds %struct.sv* %81, i64 0, i32 0
  %82 = load i8** %sv_any226, align 8, !tbaa !0
  %xpv_pv227 = bitcast i8* %82 to i8**
  %83 = load i8** %xpv_pv227, align 8, !tbaa !0
  %arrayidx228 = getelementptr inbounds i8* %83, i64 1
  %84 = load i8* %arrayidx228, align 1, !tbaa !1
  %and230 = and i8 %84, 16
  %tobool231 = icmp eq i8 %and230, 0
  br i1 %tobool231, label %lor.lhs.false232, label %land.lhs.true240

lor.lhs.false232:                                 ; preds = %lor.lhs.false224, %land.lhs.true208, %if.then204
  %85 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings233 = getelementptr inbounds %struct.cop* %85, i64 0, i32 14
  %86 = load %struct.sv** %cop_warnings233, align 8, !tbaa !0
  %cmp234 = icmp eq %struct.sv* %86, null
  br i1 %cmp234, label %land.lhs.true236, label %if.end258

land.lhs.true236:                                 ; preds = %lor.lhs.false232
  %87 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and238 = and i8 %87, 1
  %tobool239 = icmp eq i8 %and238, 0
  br i1 %tobool239, label %if.end258, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %lor.lhs.false224, %lor.lhs.false216, %land.lhs.true236, %land.lhs.true212
  br i1 %tobool40, label %lor.lhs.false242, label %if.then248

lor.lhs.false242:                                 ; preds = %land.lhs.true240
  %sv_any243 = getelementptr inbounds %struct.io* %cond11, i64 0, i32 0
  %88 = load %struct.xpvio** %sv_any243, align 8, !tbaa !0
  %xio_flags244 = getelementptr inbounds %struct.xpvio* %88, i64 0, i32 22
  %89 = load i8* %xio_flags244, align 1, !tbaa !1
  %and246 = and i8 %89, 2
  %tobool247 = icmp eq i8 %and246, 0
  br i1 %tobool247, label %if.then248, label %if.end258

if.then248:                                       ; preds = %lor.lhs.false242, %land.lhs.true240
  %cmp249 = icmp eq i16 %11, 25
  br i1 %cmp249, label %if.then251, label %if.else254

if.then251:                                       ; preds = %if.then248
  %call252 = call i32* @__errno_location() #8
  %90 = load i32* %call252, align 4, !tbaa !3
  %call253 = call i8* @strerror(i32 %90) #8
  call void (i32, i8*, ...)* @Perl_warner(i32 4, i8* getelementptr inbounds ([36 x i8]* @.str16, i64 0, i64 0), i8* %call253) #8
  br label %if.end258

if.else254:                                       ; preds = %if.then248
  %91 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %92 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type255 = getelementptr inbounds %struct.op* %92, i64 0, i32 4
  %93 = load i16* %op_type255, align 2, !tbaa !6
  %conv256 = zext i16 %93 to i32
  call void @Perl_report_evil_fh(%struct.gv* %91, %struct.io* %cond11, i32 %conv256) #8
  br label %if.end258

if.end258:                                        ; preds = %lor.lhs.false242, %land.lhs.true236, %if.then251, %if.else254, %lor.lhs.false232
  %cmp259 = icmp eq i32 %cond39, 0
  br i1 %cmp259, label %if.then261, label %if.end285

if.then261:                                       ; preds = %if.end258
  %cmp262 = icmp eq i16 %11, 27
  %sv_flags278.pre = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  br i1 %cmp262, label %if.end277, label %if.then264

if.then264:                                       ; preds = %if.then261
  %94 = load i32* %sv_flags278.pre, align 4, !tbaa !3
  %and266 = and i32 %94, 9961472
  %tobool267 = icmp eq i32 %and266, 0
  br i1 %tobool267, label %if.end269, label %if.then268

if.then268:                                       ; preds = %if.then264
  call void @Perl_sv_force_normal(%struct.sv* %cond) #8
  %.pre912 = load i32* %sv_flags278.pre, align 4, !tbaa !3
  br label %if.end269

if.end269:                                        ; preds = %if.then264, %if.then268
  %95 = phi i32 [ %94, %if.then264 ], [ %.pre912, %if.then268 ]
  %and271 = and i32 %95, 1223753727
  store i32 %and271, i32* %sv_flags278.pre, align 4, !tbaa !3
  %and273 = and i32 %95, 2097152
  %tobool274 = icmp eq i32 %and273, 0
  br i1 %tobool274, label %if.end277, label %land.rhs

land.rhs:                                         ; preds = %if.end269
  %call275 = call i32 @Perl_sv_backoff(%struct.sv* %cond) #8
  br label %if.end277

if.end277:                                        ; preds = %if.then261, %land.rhs, %if.end269
  %96 = load i32* %sv_flags278.pre, align 4, !tbaa !3
  %and279 = and i32 %96, 16384
  %tobool280 = icmp eq i32 %and279, 0
  br i1 %tobool280, label %if.end283, label %if.then281

if.then281:                                       ; preds = %if.end277
  %call282 = call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end283

if.end283:                                        ; preds = %if.end277, %if.then281
  %incdec.ptr284 = getelementptr inbounds %struct.sv** %sp.3855, i64 1
  store %struct.sv* %cond, %struct.sv** %incdec.ptr284, align 8, !tbaa !0
  br label %if.end285

if.end285:                                        ; preds = %if.end283, %if.end258
  %sp.4 = phi %struct.sv** [ %incdec.ptr284, %if.end283 ], [ %sp.3855, %if.end258 ]
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %97 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next286 = getelementptr inbounds %struct.op* %97, i64 0, i32 0
  br label %return

have_fp:                                          ; preds = %if.end150, %if.end202, %if.end146
  %fp.1 = phi %struct._PerlIO** [ %fp.0, %if.end202 ], [ %48, %if.end146 ], [ %call151, %if.end150 ]
  %sp.5 = phi %struct.sv** [ %sp.3, %if.end202 ], [ %sp.0, %if.end146 ], [ %sp.0, %if.end150 ]
  %cmp288 = icmp eq i32 %cond39, 0
  br i1 %cmp288, label %if.then290, label %if.else339

if.then290:                                       ; preds = %have_fp
  %sv_flags291 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %98 = load i32* %sv_flags291, align 4, !tbaa !3
  %and292 = and i32 %98, 524288
  %tobool293 = icmp eq i32 %and292, 0
  br i1 %tobool293, label %if.end295, label %if.then294

if.then294:                                       ; preds = %if.then290
  call void @Perl_sv_unref(%struct.sv* %cond) #8
  %.pre = load i32* %sv_flags291, align 4, !tbaa !3
  br label %if.end295

if.end295:                                        ; preds = %if.then290, %if.then294
  %99 = phi i32 [ %98, %if.then290 ], [ %.pre, %if.then294 ]
  %and297 = and i32 %99, 252
  %cmp298 = icmp eq i32 %and297, 0
  br i1 %cmp298, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end295
  %call300 = call signext i8 @Perl_sv_upgrade(%struct.sv* %cond, i32 4) #8
  br label %lor.end

lor.end:                                          ; preds = %if.end295, %lor.rhs
  %sv_any303 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %100 = load i8** %sv_any303, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %100, i64 16
  %101 = bitcast i8* %xpv_len to i64*
  %102 = load i64* %101, align 8, !tbaa !4
  %tobool304 = icmp eq i64 %102, 0
  br i1 %tobool304, label %land.lhs.true305, label %if.end311

land.lhs.true305:                                 ; preds = %lor.end
  %103 = load i32* %sv_flags291, align 4, !tbaa !3
  %and307 = and i32 %103, 8388608
  %tobool308 = icmp eq i32 %and307, 0
  br i1 %tobool308, label %if.then309, label %if.end311

if.then309:                                       ; preds = %land.lhs.true305
  %call310 = call i8* @Perl_sv_grow(%struct.sv* %cond, i64 80) #8
  br label %if.end311

if.end311:                                        ; preds = %land.lhs.true305, %lor.end, %if.then309
  %cmp312 = icmp eq i16 %11, 27
  br i1 %cmp312, label %land.lhs.true314, label %for.cond.preheader

land.lhs.true314:                                 ; preds = %if.end311
  %104 = load i32* %sv_flags291, align 4, !tbaa !3
  %and316 = and i32 %104, 118423552
  %tobool317 = icmp eq i32 %and316, 0
  br i1 %tobool317, label %for.cond.preheader, label %if.then318

if.then318:                                       ; preds = %land.lhs.true314
  %and320 = and i32 %104, 262144
  %tobool321 = icmp eq i32 %and320, 0
  br i1 %tobool321, label %if.then322, label %if.end335

if.then322:                                       ; preds = %if.then318
  %and324 = and i32 %104, 10223616
  %cmp325 = icmp eq i32 %and324, 262144
  br i1 %cmp325, label %cond.true327, label %cond.false331

cond.true327:                                     ; preds = %if.then322
  %105 = load i8** %sv_any303, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %105, i64 8
  %106 = bitcast i8* %xpv_cur to i64*
  %107 = load i64* %106, align 8, !tbaa !4
  store i64 %107, i64* %n_a, align 8, !tbaa !4
  br label %if.end335

cond.false331:                                    ; preds = %if.then322
  %call332 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %cond, i64* %n_a, i32 2) #8
  br label %if.end335

if.end335:                                        ; preds = %if.then318, %cond.true327, %cond.false331
  %108 = load i8** %sv_any303, align 8, !tbaa !0
  %xpv_cur337 = getelementptr inbounds i8* %108, i64 8
  %109 = bitcast i8* %xpv_cur337 to i64*
  %110 = load i64* %109, align 8, !tbaa !4
  br label %for.cond.preheader

if.else339:                                       ; preds = %have_fp
  %call340 = call %struct.sv* @Perl_newSV(i64 80) #8
  %call341 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call340) #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end311, %if.end335, %if.else339, %land.lhs.true314
  %offset.0.ph = phi i64 [ 0, %land.lhs.true314 ], [ 0, %if.else339 ], [ %110, %if.end335 ], [ 0, %if.end311 ]
  %tmplen.0.ph = phi i64 [ %102, %land.lhs.true314 ], [ 0, %if.else339 ], [ %102, %if.end335 ], [ %102, %if.end311 ]
  %sv.0.ph = phi %struct.sv* [ %cond, %land.lhs.true314 ], [ %call341, %if.else339 ], [ %cond, %if.end335 ], [ %cond, %if.end311 ]
  %conv343 = trunc i64 %offset.0.ph to i32
  %cmp347 = icmp eq i16 %11, 25
  %cmp347.not = xor i1 %cmp347, true
  %or.cond = and i1 %cmp288, %cmp347.not
  %cmp626 = icmp eq i32 %cond39, 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.preheader, %if.then375
  %fp.2.ph = phi %struct._PerlIO** [ %call376, %if.then375 ], [ %fp.1, %for.cond.preheader ]
  %sv.0.ph870 = phi %struct.sv* [ %sv.0.ph872, %if.then375 ], [ %sv.0.ph, %for.cond.preheader ]
  %sp.6.ph = phi %struct.sv** [ %sp.6, %if.then375 ], [ %sp.5, %for.cond.preheader ]
  br label %for.cond.outer871

for.cond.outer871:                                ; preds = %for.cond.outer, %if.end648
  %sv.0.ph872 = phi %struct.sv* [ %call650, %if.end648 ], [ %sv.0.ph870, %for.cond.outer ]
  %sp.6.ph873 = phi %struct.sv** [ %incdec.ptr495, %if.end648 ], [ %sp.6.ph, %for.cond.outer ]
  %sv_any353 = getelementptr inbounds %struct.sv* %sv.0.ph872, i64 0, i32 0
  %sv_flags480 = getelementptr inbounds %struct.sv* %sv.0.ph872, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer871, %land.lhs.true561
  %sp.6 = phi %struct.sv** [ %sp.8, %land.lhs.true561 ], [ %sp.6.ph873, %for.cond.outer871 ]
  store %struct.sv** %sp.6, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call344 = call i8* @Perl_sv_gets(%struct.sv* %sv.0.ph872, %struct._PerlIO** %fp.2.ph, i32 %conv343) #8
  %tobool345 = icmp eq i8* %call344, null
  br i1 %tobool345, label %land.lhs.true346, label %if.end463

land.lhs.true346:                                 ; preds = %for.cond
  br i1 %or.cond, label %lor.lhs.false352, label %if.then369

lor.lhs.false352:                                 ; preds = %land.lhs.true346
  %111 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_cur354 = getelementptr inbounds i8* %111, i64 8
  %112 = bitcast i8* %xpv_cur354 to i64*
  %113 = load i64* %112, align 8, !tbaa !4
  %tobool355 = icmp eq i64 %113, 0
  br i1 %tobool355, label %lor.lhs.false356, label %if.then369

lor.lhs.false356:                                 ; preds = %lor.lhs.false352
  %114 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_flags358 = getelementptr inbounds %struct.xpvio* %114, i64 0, i32 22
  %115 = load i8* %xio_flags358, align 1, !tbaa !1
  %and360 = and i8 %115, 32
  %tobool361 = icmp eq i8 %and360, 0
  br i1 %tobool361, label %lor.lhs.false362, label %if.then369

lor.lhs.false362:                                 ; preds = %lor.lhs.false356
  %116 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_flags363 = getelementptr inbounds %struct.sv* %116, i64 0, i32 2
  %117 = load i32* %sv_flags363, align 4, !tbaa !3
  %and364 = and i32 %117, 118423552
  %tobool365 = icmp eq i32 %and364, 0
  br i1 %tobool365, label %lor.lhs.false366, label %if.then369

lor.lhs.false366:                                 ; preds = %lor.lhs.false362
  %call367 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %fp.2.ph) #8
  %tobool368 = icmp eq i32 %call367, 0
  br i1 %tobool368, label %if.end463, label %if.then369

if.then369:                                       ; preds = %land.lhs.true346, %lor.lhs.false366, %lor.lhs.false362, %lor.lhs.false356, %lor.lhs.false352
  call void @Perl_PerlIO_clearerr(%struct._PerlIO** %fp.2.ph) #8
  %118 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_flags371 = getelementptr inbounds %struct.xpvio* %118, i64 0, i32 22
  %119 = load i8* %xio_flags371, align 1, !tbaa !1
  %and373 = and i8 %119, 1
  %tobool374 = icmp eq i8 %and373, 0
  br i1 %tobool374, label %if.else381, label %if.then375

if.then375:                                       ; preds = %if.then369
  %120 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call376 = call %struct._PerlIO** @Perl_nextargv(%struct.gv* %120) #8
  %tobool377 = icmp eq %struct._PerlIO** %call376, null
  br i1 %tobool377, label %if.end379, label %for.cond.outer

if.end379:                                        ; preds = %if.then375
  %121 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call380 = call signext i8 @Perl_do_close(%struct.gv* %121, i8 signext 0) #8
  br label %if.end421

if.else381:                                       ; preds = %if.then369
  br i1 %cmp347, label %if.then384, label %if.end421

if.then384:                                       ; preds = %if.else381
  %122 = load %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  %call385 = call signext i8 @Perl_do_close(%struct.gv* %122, i8 signext 0) #8
  %tobool386 = icmp eq i8 %call385, 0
  br i1 %tobool386, label %land.lhs.true387, label %if.end421

land.lhs.true387:                                 ; preds = %if.then384
  %123 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings388 = getelementptr inbounds %struct.cop* %123, i64 0, i32 14
  %124 = load %struct.sv** %cop_warnings388, align 8, !tbaa !0
  %cmp389 = icmp eq %struct.sv* %124, null
  br i1 %cmp389, label %lor.lhs.false407, label %land.lhs.true391

land.lhs.true391:                                 ; preds = %land.lhs.true387
  %125 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings392 = getelementptr inbounds %struct.cop* %125, i64 0, i32 14
  %126 = load %struct.sv** %cop_warnings392, align 8, !tbaa !0
  %cmp393 = icmp eq %struct.sv* %126, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp393, label %lor.lhs.false407, label %land.lhs.true395

land.lhs.true395:                                 ; preds = %land.lhs.true391
  %127 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings396 = getelementptr inbounds %struct.cop* %127, i64 0, i32 14
  %128 = load %struct.sv** %cop_warnings396, align 8, !tbaa !0
  %cmp397 = icmp eq %struct.sv* %128, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp397, label %if.then415, label %lor.lhs.false399

lor.lhs.false399:                                 ; preds = %land.lhs.true395
  %129 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings400 = getelementptr inbounds %struct.cop* %129, i64 0, i32 14
  %130 = load %struct.sv** %cop_warnings400, align 8, !tbaa !0
  %sv_any401 = getelementptr inbounds %struct.sv* %130, i64 0, i32 0
  %131 = load i8** %sv_any401, align 8, !tbaa !0
  %xpv_pv402 = bitcast i8* %131 to i8**
  %132 = load i8** %xpv_pv402, align 8, !tbaa !0
  %arrayidx403 = getelementptr inbounds i8* %132, i64 1
  %133 = load i8* %arrayidx403, align 1, !tbaa !1
  %and405 = and i8 %133, 1
  %tobool406 = icmp eq i8 %and405, 0
  br i1 %tobool406, label %lor.lhs.false407, label %if.then415

lor.lhs.false407:                                 ; preds = %lor.lhs.false399, %land.lhs.true391, %land.lhs.true387
  %134 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings408 = getelementptr inbounds %struct.cop* %134, i64 0, i32 14
  %135 = load %struct.sv** %cop_warnings408, align 8, !tbaa !0
  %cmp409 = icmp eq %struct.sv* %135, null
  br i1 %cmp409, label %land.lhs.true411, label %if.end421

land.lhs.true411:                                 ; preds = %lor.lhs.false407
  %136 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and413 = and i8 %136, 1
  %tobool414 = icmp eq i8 %and413, 0
  br i1 %tobool414, label %if.end421, label %if.then415

if.then415:                                       ; preds = %lor.lhs.false399, %land.lhs.true411, %land.lhs.true395
  %137 = load i32* @PL_statusvalue, align 4, !tbaa !3
  %shr = ashr i32 %137, 8
  %and416 = and i32 %137, 128
  %tobool417 = icmp ne i32 %and416, 0
  %cond418 = select i1 %tobool417, i8* getelementptr inbounds ([14 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)
  call void (i32, i8*, ...)* @Perl_warner(i32 4, i8* getelementptr inbounds ([44 x i8]* @.str17, i64 0, i64 0), i32 %shr, i8* %cond418) #8
  br label %if.end421

if.end421:                                        ; preds = %land.lhs.true411, %if.then384, %if.else381, %if.then415, %lor.lhs.false407, %if.end379
  br i1 %cmp288, label %if.then424, label %if.end451

if.then424:                                       ; preds = %if.end421
  %cmp425 = icmp eq i16 %11, 27
  %sv_flags444.pre = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  br i1 %cmp425, label %if.end443, label %if.then427

if.then427:                                       ; preds = %if.then424
  %138 = load i32* %sv_flags444.pre, align 4, !tbaa !3
  %and429 = and i32 %138, 9961472
  %tobool430 = icmp eq i32 %and429, 0
  br i1 %tobool430, label %if.end432, label %if.then431

if.then431:                                       ; preds = %if.then427
  call void @Perl_sv_force_normal(%struct.sv* %cond) #8
  %.pre910 = load i32* %sv_flags444.pre, align 4, !tbaa !3
  br label %if.end432

if.end432:                                        ; preds = %if.then427, %if.then431
  %139 = phi i32 [ %138, %if.then427 ], [ %.pre910, %if.then431 ]
  %and434 = and i32 %139, 1223753727
  store i32 %and434, i32* %sv_flags444.pre, align 4, !tbaa !3
  %and436 = and i32 %139, 2097152
  %tobool437 = icmp eq i32 %and436, 0
  br i1 %tobool437, label %if.end443, label %land.rhs438

land.rhs438:                                      ; preds = %if.end432
  %call439 = call i32 @Perl_sv_backoff(%struct.sv* %cond) #8
  br label %if.end443

if.end443:                                        ; preds = %if.then424, %land.rhs438, %if.end432
  %140 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %141 = load i32* %sv_flags444.pre, align 4, !tbaa !3
  %and445 = and i32 %141, 16384
  %tobool446 = icmp eq i32 %and445, 0
  br i1 %tobool446, label %if.end449, label %if.then447

if.then447:                                       ; preds = %if.end443
  %call448 = call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end449

if.end449:                                        ; preds = %if.end443, %if.then447
  %incdec.ptr450 = getelementptr inbounds %struct.sv** %140, i64 1
  store %struct.sv* %cond, %struct.sv** %incdec.ptr450, align 8, !tbaa !0
  br label %if.end451

if.end451:                                        ; preds = %if.end421, %if.end449
  %sp.7 = phi %struct.sv** [ %incdec.ptr450, %if.end449 ], [ %sp.6, %if.end421 ]
  %142 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_flags453 = getelementptr inbounds %struct.xpvio* %142, i64 0, i32 22
  %143 = load i8* %xio_flags453, align 1, !tbaa !1
  %and455 = and i8 %143, 16
  %tobool456 = icmp eq i8 %and455, 0
  br i1 %tobool456, label %if.then457, label %if.end461

if.then457:                                       ; preds = %if.end451
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  %144 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool458 = icmp eq i8 %144, 0
  br i1 %tobool458, label %if.end461, label %if.then459

if.then459:                                       ; preds = %if.then457
  call void @Perl_sv_taint(%struct.sv* %sv.0.ph872) #8
  br label %if.end461

if.end461:                                        ; preds = %if.then457, %if.end451, %if.then459
  store %struct.sv** %sp.7, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %145 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next462 = getelementptr inbounds %struct.op* %145, i64 0, i32 0
  br label %return

if.end463:                                        ; preds = %lor.lhs.false366, %for.cond
  %146 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_flags465 = getelementptr inbounds %struct.xpvio* %146, i64 0, i32 22
  %147 = load i8* %xio_flags465, align 1, !tbaa !1
  %and467 = and i8 %147, 16
  %tobool468 = icmp eq i8 %and467, 0
  br i1 %tobool468, label %if.then469, label %if.end473

if.then469:                                       ; preds = %if.end463
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  %148 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool470 = icmp eq i8 %148, 0
  br i1 %tobool470, label %if.end473, label %if.then471

if.then471:                                       ; preds = %if.then469
  call void @Perl_sv_taint(%struct.sv* %sv.0.ph872) #8
  br label %if.end473

if.end473:                                        ; preds = %if.then469, %if.end463, %if.then471
  %149 = load %struct.xpvio** %sv_any94, align 8, !tbaa !0
  %xio_lines475 = getelementptr inbounds %struct.xpvio* %149, i64 0, i32 10
  %150 = load i64* %xio_lines475, align 8, !tbaa !4
  %inc = add nsw i64 %150, 1
  store i64 %inc, i64* %xio_lines475, align 8, !tbaa !4
  %xio_flags477 = getelementptr inbounds %struct.xpvio* %149, i64 0, i32 22
  %151 = load i8* %xio_flags477, align 1, !tbaa !1
  %or = or i8 %151, 32
  store i8 %or, i8* %xio_flags477, align 1, !tbaa !1
  %152 = load i32* %sv_flags480, align 4, !tbaa !3
  %and481 = and i32 %152, 16384
  %tobool482 = icmp eq i32 %and481, 0
  br i1 %tobool482, label %if.end485, label %if.then483

if.then483:                                       ; preds = %if.end473
  %call484 = call i32 @Perl_mg_set(%struct.sv* %sv.0.ph872) #8
  br label %if.end485

if.end485:                                        ; preds = %if.end473, %if.then483
  %153 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %154 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast486 = ptrtoint %struct.sv** %154 to i64
  %sub.ptr.rhs.cast487 = ptrtoint %struct.sv** %153 to i64
  %sub.ptr.sub488 = sub i64 %sub.ptr.lhs.cast486, %sub.ptr.rhs.cast487
  %cmp490 = icmp slt i64 %sub.ptr.sub488, 8
  br i1 %cmp490, label %if.then492, label %if.end494

if.then492:                                       ; preds = %if.end485
  %call493 = call %struct.sv** @Perl_stack_grow(%struct.sv** %153, %struct.sv** %153, i32 1) #8
  br label %if.end494

if.end494:                                        ; preds = %if.then492, %if.end485
  %sp.8 = phi %struct.sv** [ %call493, %if.then492 ], [ %153, %if.end485 ]
  %incdec.ptr495 = getelementptr inbounds %struct.sv** %sp.8, i64 1
  store %struct.sv* %sv.0.ph872, %struct.sv** %incdec.ptr495, align 8, !tbaa !0
  br i1 %cmp347, label %if.then498, label %if.else570

if.then498:                                       ; preds = %if.end494
  %155 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_cur500 = getelementptr inbounds i8* %155, i64 8
  %156 = bitcast i8* %xpv_cur500 to i64*
  %157 = load i64* %156, align 8, !tbaa !4
  %cmp501 = icmp eq i64 %157, 0
  br i1 %cmp501, label %if.end524, label %land.lhs.true503

land.lhs.true503:                                 ; preds = %if.then498
  %158 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_any504 = getelementptr inbounds %struct.sv* %158, i64 0, i32 0
  %159 = load i8** %sv_any504, align 8, !tbaa !0
  %xpv_cur505 = getelementptr inbounds i8* %159, i64 8
  %160 = bitcast i8* %xpv_cur505 to i64*
  %161 = load i64* %160, align 8, !tbaa !4
  %cmp506 = icmp eq i64 %161, 0
  br i1 %cmp506, label %if.end524, label %if.then508

if.then508:                                       ; preds = %land.lhs.true503
  %xpv_pv510 = bitcast i8* %155 to i8**
  %162 = load i8** %xpv_pv510, align 8, !tbaa !0
  %add.ptr.sum = add i64 %157, -1
  %add.ptr513 = getelementptr inbounds i8* %162, i64 %add.ptr.sum
  %163 = load i8* %add.ptr513, align 1, !tbaa !1
  %xpv_pv516 = bitcast i8* %159 to i8**
  %164 = load i8** %xpv_pv516, align 8, !tbaa !0
  %165 = load i8* %164, align 1, !tbaa !1
  %cmp518 = icmp eq i8 %163, %165
  br i1 %cmp518, label %if.then520, label %if.end524

if.then520:                                       ; preds = %if.then508
  store i8 0, i8* %add.ptr513, align 1, !tbaa !1
  %166 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_cur522 = getelementptr inbounds i8* %166, i64 8
  %167 = bitcast i8* %xpv_cur522 to i64*
  %168 = load i64* %167, align 8, !tbaa !4
  %dec = add i64 %168, -1
  store i64 %dec, i64* %167, align 8, !tbaa !4
  br label %if.end524

if.end524:                                        ; preds = %land.lhs.true503, %if.then498, %if.then508, %if.then520
  %169 = phi i8* [ %155, %if.then508 ], [ %166, %if.then520 ], [ %155, %if.then498 ], [ %155, %land.lhs.true503 ]
  %xpv_pv526 = bitcast i8* %169 to i8**
  %170 = load i8** %xpv_pv526, align 8, !tbaa !0
  %171 = load i8* %170, align 1, !tbaa !1
  %tobool528866 = icmp eq i8 %171, 0
  br i1 %tobool528866, label %if.end625, label %for.body

for.body:                                         ; preds = %if.end524, %for.inc
  %.pr = phi i8 [ %175, %for.inc ], [ %171, %if.end524 ]
  %tmps.0867 = phi i8* [ %incdec.ptr558, %for.inc ], [ %170, %if.end524 ]
  %.off = add i8 %.pr, -65
  %172 = icmp ult i8 %.off, 26
  %.off859 = add i8 %.pr, -97
  %173 = icmp ult i8 %.off859, 26
  %or.cond862 = or i1 %172, %173
  %.off860 = add i8 %.pr, -48
  %174 = icmp ult i8 %.off860, 10
  %or.cond864 = or i1 %or.cond862, %174
  br i1 %or.cond864, label %for.inc, label %land.lhs.true552

land.lhs.true552:                                 ; preds = %for.body
  %conv553 = sext i8 %.pr to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i32 %conv553, i64 20)
  %tobool555 = icmp eq i8* %memchr, null
  br i1 %tobool555, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true552
  %incdec.ptr558 = getelementptr inbounds i8* %tmps.0867, i64 1
  %175 = load i8* %incdec.ptr558, align 1, !tbaa !1
  %tobool528 = icmp eq i8 %175, 0
  br i1 %tobool528, label %if.end625, label %for.body

for.end:                                          ; preds = %land.lhs.true552
  %tobool560 = icmp eq i8 %.pr, 0
  br i1 %tobool560, label %if.end625, label %land.lhs.true561

land.lhs.true561:                                 ; preds = %for.end
  %call564 = call i32 @stat(i8* %170, %struct.stat* @PL_statbuf) #8
  %cmp565 = icmp slt i32 %call564, 0
  br i1 %cmp565, label %for.cond, label %if.end625

if.else570:                                       ; preds = %if.end494
  %176 = load i32* %sv_flags480, align 4, !tbaa !3
  %and572 = and i32 %176, 536870912
  %tobool573 = icmp eq i32 %and572, 0
  br i1 %tobool573, label %if.end625, label %if.then574

if.then574:                                       ; preds = %if.else570
  %177 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_pv576 = bitcast i8* %177 to i8**
  %178 = load i8** %xpv_pv576, align 8, !tbaa !0
  %add.ptr577 = getelementptr inbounds i8* %178, i64 %offset.0.ph
  %xpv_cur579 = getelementptr inbounds i8* %177, i64 8
  %179 = bitcast i8* %xpv_cur579 to i64*
  %180 = load i64* %179, align 8, !tbaa !4
  %sub = sub i64 %180, %offset.0.ph
  %181 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings580 = getelementptr inbounds %struct.cop* %181, i64 0, i32 14
  %182 = load %struct.sv** %cop_warnings580, align 8, !tbaa !0
  %cmp581 = icmp eq %struct.sv* %182, null
  br i1 %cmp581, label %lor.lhs.false599, label %land.lhs.true583

land.lhs.true583:                                 ; preds = %if.then574
  %183 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings584 = getelementptr inbounds %struct.cop* %183, i64 0, i32 14
  %184 = load %struct.sv** %cop_warnings584, align 8, !tbaa !0
  %cmp585 = icmp eq %struct.sv* %184, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp585, label %lor.lhs.false599, label %land.lhs.true587

land.lhs.true587:                                 ; preds = %land.lhs.true583
  %185 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings588 = getelementptr inbounds %struct.cop* %185, i64 0, i32 14
  %186 = load %struct.sv** %cop_warnings588, align 8, !tbaa !0
  %cmp589 = icmp eq %struct.sv* %186, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp589, label %land.lhs.true607, label %lor.lhs.false591

lor.lhs.false591:                                 ; preds = %land.lhs.true587
  %187 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings592 = getelementptr inbounds %struct.cop* %187, i64 0, i32 14
  %188 = load %struct.sv** %cop_warnings592, align 8, !tbaa !0
  %sv_any593 = getelementptr inbounds %struct.sv* %188, i64 0, i32 0
  %189 = load i8** %sv_any593, align 8, !tbaa !0
  %xpv_pv594 = bitcast i8* %189 to i8**
  %190 = load i8** %xpv_pv594, align 8, !tbaa !0
  %arrayidx595 = getelementptr inbounds i8* %190, i64 11
  %191 = load i8* %arrayidx595, align 1, !tbaa !1
  %and597 = and i8 %191, 1
  %tobool598 = icmp eq i8 %and597, 0
  br i1 %tobool598, label %lor.lhs.false599, label %land.lhs.true607

lor.lhs.false599:                                 ; preds = %lor.lhs.false591, %land.lhs.true583, %if.then574
  %192 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings600 = getelementptr inbounds %struct.cop* %192, i64 0, i32 14
  %193 = load %struct.sv** %cop_warnings600, align 8, !tbaa !0
  %cmp601 = icmp eq %struct.sv* %193, null
  br i1 %cmp601, label %land.lhs.true603, label %if.end625

land.lhs.true603:                                 ; preds = %lor.lhs.false599
  %194 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and605 = and i8 %194, 1
  %tobool606 = icmp eq i8 %and605, 0
  br i1 %tobool606, label %if.end625, label %land.lhs.true607

land.lhs.true607:                                 ; preds = %lor.lhs.false591, %land.lhs.true603, %land.lhs.true587
  %call608 = call signext i8 @Perl_is_utf8_string_loc(i8* %add.ptr577, i64 %sub, i8** %f) #8
  %tobool609 = icmp eq i8 %call608, 0
  br i1 %tobool609, label %if.then610, label %if.end625

if.then610:                                       ; preds = %land.lhs.true607
  %195 = load i8** %f, align 8, !tbaa !0
  %196 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_pv612 = bitcast i8* %196 to i8**
  %197 = load i8** %xpv_pv612, align 8, !tbaa !0
  %xpv_cur614 = getelementptr inbounds i8* %196, i64 8
  %198 = bitcast i8* %xpv_cur614 to i64*
  %199 = load i64* %198, align 8, !tbaa !4
  %add.ptr615 = getelementptr inbounds i8* %197, i64 %199
  %cmp616 = icmp ult i8* %195, %add.ptr615
  br i1 %cmp616, label %cond.true618, label %cond.end621

cond.true618:                                     ; preds = %if.then610
  %200 = load i8* %195, align 1, !tbaa !1
  %conv619 = zext i8 %200 to i32
  br label %cond.end621

cond.end621:                                      ; preds = %if.then610, %cond.true618
  %cond622 = phi i32 [ %conv619, %cond.true618 ], [ 0, %if.then610 ]
  call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([38 x i8]* @.str20, i64 0, i64 0), i32 %cond622) #8
  br label %if.end625

if.end625:                                        ; preds = %for.end, %land.lhs.true561, %for.inc, %if.end524, %land.lhs.true607, %land.lhs.true603, %if.else570, %cond.end621, %lor.lhs.false599
  br i1 %cmp626, label %if.then628, label %if.else651

if.then628:                                       ; preds = %if.end625
  %201 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_len630 = getelementptr inbounds i8* %201, i64 16
  %202 = bitcast i8* %xpv_len630 to i64*
  %203 = load i64* %202, align 8, !tbaa !4
  %xpv_cur632 = getelementptr inbounds i8* %201, i64 8
  %204 = bitcast i8* %xpv_cur632 to i64*
  %205 = load i64* %204, align 8, !tbaa !4
  %sub633 = sub i64 %203, %205
  %cmp634 = icmp ugt i64 %sub633, 20
  br i1 %cmp634, label %if.then636, label %if.end648

if.then636:                                       ; preds = %if.then628
  %add = add i64 %205, 1
  store i64 %add, i64* %202, align 8, !tbaa !4
  %xpv_pv642 = bitcast i8* %201 to i8**
  %206 = load i8** %xpv_pv642, align 8, !tbaa !0
  %call645 = call i8* @Perl_safesysrealloc(i8* %206, i64 %add) #8
  %207 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_pv647 = bitcast i8* %207 to i8**
  store i8* %call645, i8** %xpv_pv647, align 8, !tbaa !0
  br label %if.end648

if.end648:                                        ; preds = %if.then636, %if.then628
  %call649 = call %struct.sv* @Perl_newSV(i64 80) #8
  %call650 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call649) #8
  br label %for.cond.outer871

if.else651:                                       ; preds = %if.end625
  %tobool655 = icmp eq i64 %tmplen.0.ph, 0
  %or.cond852 = and i1 %cmp288, %tobool655
  br i1 %or.cond852, label %land.lhs.true656, label %if.end688

land.lhs.true656:                                 ; preds = %if.else651
  %208 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_len658 = getelementptr inbounds i8* %208, i64 16
  %209 = bitcast i8* %xpv_len658 to i64*
  %210 = load i64* %209, align 8, !tbaa !4
  %xpv_cur660 = getelementptr inbounds i8* %208, i64 8
  %211 = bitcast i8* %xpv_cur660 to i64*
  %212 = load i64* %211, align 8, !tbaa !4
  %sub661 = sub i64 %210, %212
  %cmp662 = icmp ugt i64 %sub661, 80
  br i1 %cmp662, label %if.then664, label %if.end688

if.then664:                                       ; preds = %land.lhs.true656
  %cmp667 = icmp ult i64 %212, 60
  %add675 = add i64 %212, 40
  %storemerge = select i1 %cmp667, i64 80, i64 %add675
  store i64 %storemerge, i64* %209, align 8, !tbaa !4
  %xpv_pv680 = bitcast i8* %208 to i8**
  %213 = load i8** %xpv_pv680, align 8, !tbaa !0
  %call684 = call i8* @Perl_safesysrealloc(i8* %213, i64 %storemerge) #8
  %214 = load i8** %sv_any353, align 8, !tbaa !0
  %xpv_pv686 = bitcast i8* %214 to i8**
  store i8* %call684, i8** %xpv_pv686, align 8, !tbaa !0
  br label %if.end688

if.end688:                                        ; preds = %if.else651, %land.lhs.true656, %if.then664
  store %struct.sv** %incdec.ptr495, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %215 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next689 = getelementptr inbounds %struct.op* %215, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end688, %if.end461, %if.end285, %if.end90
  %retval.0.in = phi %struct.op** [ %op_next, %if.end90 ], [ %op_next689, %if.end688 ], [ %op_next462, %if.end461 ], [ %op_next286, %if.end285 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_eq() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool = icmp eq i64 %1, 0
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sv** %0, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %3 = load %struct.sv** %add.ptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %4, 268435456
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags2 = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %5 = load i32* %sv_flags2, align 4, !tbaa !3
  %and3 = and i32 %5, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %3, %struct.sv* %2, i32 32, i32 0) #8
  %tobool5 = icmp eq %struct.sv* %call, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %6 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %6, i64 -1
  store %struct.sv* %call, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %7, i64 0, i32 0
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry, %lor.lhs.false
  %8 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags8 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags8, align 4, !tbaa !3
  %10 = and i32 %9, 268959744
  %11 = icmp eq i32 %10, 524288
  br i1 %11, label %land.lhs.true15, label %if.end31

land.lhs.true15:                                  ; preds = %if.end7
  %add.ptr16 = getelementptr inbounds %struct.sv** %0, i64 -1
  %12 = load %struct.sv** %add.ptr16, align 8, !tbaa !0
  %sv_flags17 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags17, align 4, !tbaa !3
  %14 = and i32 %13, 268959744
  %15 = icmp eq i32 %14, 524288
  br i1 %15, label %if.then25, label %if.end31

if.then25:                                        ; preds = %land.lhs.true15
  %sv_any = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %16 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %16 to %struct.sv**
  %17 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any28 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %18 = load i8** %sv_any28, align 8, !tbaa !0
  %xrv_rv29 = bitcast i8* %18 to %struct.sv**
  %19 = load %struct.sv** %xrv_rv29, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %17, %19
  %cond = select i1 %cmp, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond, %struct.sv** %add.ptr16, align 8, !tbaa !0
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next30 = getelementptr inbounds %struct.op* %20, i64 0, i32 0
  br label %return

if.end31:                                         ; preds = %land.lhs.true15, %if.end7
  %and33 = and i32 %9, 16777216
  %tobool34 = icmp eq i32 %and33, 0
  br i1 %tobool34, label %land.lhs.true35, label %if.end50

land.lhs.true35:                                  ; preds = %if.end31
  %21 = and i32 %9, 393216
  %or.cond205.not = icmp ne i32 %21, 0
  %and45 = and i32 %9, 65536
  %tobool46 = icmp eq i32 %and45, 0
  %or.cond208 = and i1 %or.cond205.not, %tobool46
  br i1 %or.cond208, label %cond.false, label %if.end50

cond.false:                                       ; preds = %land.lhs.true35
  %call48 = tail call i64 @Perl_sv_2iv(%struct.sv* %8) #8
  %.pre = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags51.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre, i64 0, i32 2
  %.pre210 = load i32* %sv_flags51.phi.trans.insert, align 4, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true35, %if.end31, %cond.false
  %22 = phi i32 [ %9, %land.lhs.true35 ], [ %9, %if.end31 ], [ %.pre210, %cond.false ]
  %23 = phi %struct.sv* [ %8, %land.lhs.true35 ], [ %8, %if.end31 ], [ %.pre, %cond.false ]
  %and52 = and i32 %22, 65536
  %tobool53 = icmp eq i32 %and52, 0
  %incdec.ptr133.pre = getelementptr inbounds %struct.sv** %0, i64 -1
  br i1 %tobool53, label %if.end132, label %if.then54

if.then54:                                        ; preds = %if.end50
  %24 = load %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  %sv_flags56 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags56, align 4, !tbaa !3
  %and57 = and i32 %25, 16777216
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end83

land.lhs.true59:                                  ; preds = %if.then54
  %26 = and i32 %25, 393216
  %or.cond206.not = icmp ne i32 %26, 0
  %and72 = and i32 %25, 65536
  %tobool73 = icmp eq i32 %and72, 0
  %or.cond209 = and i1 %or.cond206.not, %tobool73
  br i1 %or.cond209, label %cond.false78, label %if.end83

cond.false78:                                     ; preds = %land.lhs.true59
  %call80 = tail call i64 @Perl_sv_2iv(%struct.sv* %24) #8
  %.pre211 = load %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  %sv_flags85.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre211, i64 0, i32 2
  %.pre212 = load i32* %sv_flags85.phi.trans.insert, align 4, !tbaa !3
  br label %if.end83

if.end83:                                         ; preds = %land.lhs.true59, %if.then54, %cond.false78
  %27 = phi i32 [ %25, %land.lhs.true59 ], [ %25, %if.then54 ], [ %.pre212, %cond.false78 ]
  %28 = phi %struct.sv* [ %24, %land.lhs.true59 ], [ %24, %if.then54 ], [ %.pre211, %cond.false78 ]
  %and86 = and i32 %27, 65536
  %tobool87 = icmp eq i32 %and86, 0
  br i1 %tobool87, label %if.end83.if.end132_crit_edge, label %if.then88

if.end83.if.end132_crit_edge:                     ; preds = %if.end83
  %.pre213 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags134.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre213, i64 0, i32 2
  %.pre214 = load i32* %sv_flags134.phi.trans.insert, align 4, !tbaa !3
  br label %if.end132

if.then88:                                        ; preds = %if.end83
  %and91 = and i32 %27, -2147418112
  %cmp92 = icmp eq i32 %and91, -2147418112
  %29 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags94 = getelementptr inbounds %struct.sv* %29, i64 0, i32 2
  %30 = load i32* %sv_flags94, align 4, !tbaa !3
  %and95 = and i32 %30, -2147418112
  %cmp96 = icmp eq i32 %and95, -2147418112
  %cmp101tmp = xor i1 %cmp92, %cmp96
  br i1 %cmp101tmp, label %if.end112, label %if.then103

if.then103:                                       ; preds = %if.then88
  %sv_any105 = getelementptr inbounds %struct.sv* %29, i64 0, i32 0
  %31 = load i8** %sv_any105, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %31, i64 24
  %32 = bitcast i8* %xuv_uv to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  %sv_any106 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %34 = load i8** %sv_any106, align 8, !tbaa !0
  %xuv_uv107 = getelementptr inbounds i8* %34, i64 24
  %35 = bitcast i8* %xuv_uv107 to i64*
  %36 = load i64* %35, align 8, !tbaa !4
  %cmp108 = icmp eq i64 %36, %33
  %cond110 = select i1 %cmp108, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond110, %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr133.pre, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %37 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next111 = getelementptr inbounds %struct.op* %37, i64 0, i32 0
  br label %return

if.end112:                                        ; preds = %if.then88
  %. = select i1 %cmp92, %struct.sv* %29, %struct.sv* %28
  %sv_any118 = getelementptr inbounds %struct.sv* %., i64 0, i32 0
  %38 = load i8** %sv_any118, align 8, !tbaa !0
  %xiv_iv119 = getelementptr inbounds i8* %38, i64 24
  %39 = bitcast i8* %xiv_iv119 to i64*
  %40 = load i64* %39, align 8, !tbaa !4
  %cmp120 = icmp slt i64 %40, 0
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.end112
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr133.pre, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %41 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next123 = getelementptr inbounds %struct.op* %41, i64 0, i32 0
  br label %return

if.end124:                                        ; preds = %if.end112
  %.207 = select i1 %cmp92, %struct.sv* %28, %struct.sv* %29
  %sv_any125 = getelementptr inbounds %struct.sv* %.207, i64 0, i32 0
  %42 = load i8** %sv_any125, align 8, !tbaa !0
  %xuv_uv126 = getelementptr inbounds i8* %42, i64 24
  %43 = bitcast i8* %xuv_uv126 to i64*
  %44 = load i64* %43, align 8, !tbaa !4
  %cmp127 = icmp eq i64 %40, %44
  %cond129 = select i1 %cmp127, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond129, %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr133.pre, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %45 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next130 = getelementptr inbounds %struct.op* %45, i64 0, i32 0
  br label %return

if.end132:                                        ; preds = %if.end50, %if.end83.if.end132_crit_edge
  %46 = phi i32 [ %.pre214, %if.end83.if.end132_crit_edge ], [ %22, %if.end50 ]
  %47 = phi %struct.sv* [ %.pre213, %if.end83.if.end132_crit_edge ], [ %23, %if.end50 ]
  store %struct.sv* %47, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %and135 = and i32 %46, 131072
  %tobool136 = icmp eq i32 %and135, 0
  br i1 %tobool136, label %cond.false139, label %cond.true137

cond.true137:                                     ; preds = %if.end132
  %sv_any138 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %48 = load i8** %sv_any138, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %48, i64 32
  %49 = bitcast i8* %xnv_nv to double*
  %50 = load double* %49, align 8, !tbaa !5
  br label %cond.end141

cond.false139:                                    ; preds = %if.end132
  %call140 = tail call double @Perl_sv_2nv(%struct.sv* %47) #8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false139, %cond.true137
  %cond142 = phi double [ %50, %cond.true137 ], [ %call140, %cond.false139 ]
  %51 = load %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  %sv_flags143 = getelementptr inbounds %struct.sv* %51, i64 0, i32 2
  %52 = load i32* %sv_flags143, align 4, !tbaa !3
  %and144 = and i32 %52, 131072
  %tobool145 = icmp eq i32 %and144, 0
  br i1 %tobool145, label %cond.false149, label %cond.true146

cond.true146:                                     ; preds = %cond.end141
  %sv_any147 = getelementptr inbounds %struct.sv* %51, i64 0, i32 0
  %53 = load i8** %sv_any147, align 8, !tbaa !0
  %xnv_nv148 = getelementptr inbounds i8* %53, i64 32
  %54 = bitcast i8* %xnv_nv148 to double*
  %55 = load double* %54, align 8, !tbaa !5
  br label %cond.end151

cond.false149:                                    ; preds = %cond.end141
  %call150 = tail call double @Perl_sv_2nv(%struct.sv* %51) #8
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false149, %cond.true146
  %cond152 = phi double [ %55, %cond.true146 ], [ %call150, %cond.false149 ]
  %cmp153 = fcmp oeq double %cond152, %cond142
  %cond155 = select i1 %cmp153, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond155, %struct.sv** %incdec.ptr133.pre, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr133.pre, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %56 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next156 = getelementptr inbounds %struct.op* %56, i64 0, i32 0
  br label %return

return:                                           ; preds = %cond.end151, %if.end124, %if.then122, %if.then103, %if.then25, %if.then6
  %retval.0.in = phi %struct.op** [ %op_next, %if.then6 ], [ %op_next111, %if.then103 ], [ %op_next123, %if.then122 ], [ %op_next130, %if.end124 ], [ %op_next156, %cond.end151 ], [ %op_next30, %if.then25 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_preinc() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 254
  %cmp = icmp ugt i32 %and, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #8
  br label %return

if.end:                                           ; preds = %entry
  %3 = and i32 %2, -2138636288
  %4 = icmp eq i32 %3, 65536
  br i1 %4, label %land.lhs.true14, label %if.else

land.lhs.true14:                                  ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  %cmp15 = icmp eq i64 %7, 9223372036854775807
  br i1 %cmp15, label %if.else, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %6, align 8, !tbaa !4
  %and20 = and i32 %2, -100663297
  store i32 %and20, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true14, %if.end
  tail call void @Perl_sv_inc(%struct.sv* %1) #8
  %.pre = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags22.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre, i64 0, i32 2
  %.pre40 = load i32* %sv_flags22.phi.trans.insert, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %8 = phi i32 [ %.pre40, %if.else ], [ %and20, %if.then16 ]
  %9 = phi %struct.sv* [ %.pre, %if.else ], [ %1, %if.then16 ]
  %and23 = and i32 %8, 16384
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  %call26 = tail call i32 @Perl_mg_set(%struct.sv* %9) #8
  br label %if.end27

if.end27:                                         ; preds = %if.end21, %if.then25
  %10 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %10, i64 0, i32 0
  %11 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end27, %if.then
  %retval.0 = phi %struct.op* [ %call, %if.then ], [ %11, %if.end27 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.op* @Perl_die(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_sv_inc(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_or() #0 {
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
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #8
  %tobool29 = icmp eq i8 %call, 0
  br i1 %tobool29, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true6, %cond.true15, %cond.false27, %land.lhs.true, %cond.true23
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %15, i64 0, i32 0
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %lor.lhs.false, %cond.true2, %cond.true15, %cond.false27, %entry, %cond.true23
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %17 = getelementptr inbounds %struct.op* %16, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi %struct.op** [ %op_next, %if.then ], [ %17, %if.else ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_add() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %2, 64
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %3 = load i64* %op_targ, align 8, !tbaa !4
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.sv** %4, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.sv** [ %arrayidx, %cond.true ], [ %arrayidx1, %cond.false ]
  %cond = load %struct.sv** %cond.in, align 8
  %5 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool2 = icmp eq i64 %5, 0
  br i1 %tobool2, label %cond.end.if.end31_crit_edge, label %if.then

cond.end.if.end31_crit_edge:                      ; preds = %cond.end
  %add.ptr32.pre = getelementptr inbounds %struct.sv** %0, i64 -1
  br label %if.end31

if.then:                                          ; preds = %cond.end
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %7 = load %struct.sv** %add.ptr, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and3 = and i32 %8, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then
  %sv_flags5 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %9 = load i32* %sv_flags5, align 4, !tbaa !3
  %and6 = and i32 %9, 268435456
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %tobool11 = icmp ne i8 %and, 0
  %cond12 = select i1 %tobool11, i32 4, i32 0
  %call = tail call %struct.sv* @Perl_amagic_call(%struct.sv* %7, %struct.sv* %6, i32 6, i32 %cond12) #8
  %tobool13 = icmp eq %struct.sv* %call, null
  br i1 %tobool13, label %if.end31, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %10 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %10, i64 -1
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags15 = getelementptr inbounds %struct.op* %11, i64 0, i32 6
  %12 = load i8* %op_flags15, align 1, !tbaa !1
  %and17 = and i8 %12, 64
  %tobool18 = icmp eq i8 %and17, 0
  %sv_flags20 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  br i1 %tobool18, label %lor.lhs.false19, label %if.then23

lor.lhs.false19:                                  ; preds = %if.then14
  %13 = load i32* %sv_flags20, align 4, !tbaa !3
  %and21 = and i32 %13, 1024
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.then14, %lor.lhs.false19
  tail call void @Perl_sv_setsv_flags(%struct.sv* %cond, %struct.sv* %call, i32 2) #8
  %14 = load i32* %sv_flags20, align 4, !tbaa !3
  %and25 = and i32 %14, 16384
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then23
  %call28 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end29

if.end29:                                         ; preds = %lor.lhs.false19, %if.then27, %if.then23
  %storemerge = phi %struct.sv* [ %cond, %if.then23 ], [ %cond, %if.then27 ], [ %call, %lor.lhs.false19 ]
  store %struct.sv* %storemerge, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %15, i64 0, i32 0
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %cond.end.if.end31_crit_edge, %lor.lhs.false
  %add.ptr32.pre-phi = phi %struct.sv** [ %add.ptr32.pre, %cond.end.if.end31_crit_edge ], [ %add.ptr, %lor.lhs.false ], [ %add.ptr, %land.lhs.true ]
  %16 = load %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  %sv_flags33 = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %17 = load i32* %sv_flags33, align 4, !tbaa !3
  %18 = and i32 %17, 118431744
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end31
  %20 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags41 = getelementptr inbounds %struct.op* %20, i64 0, i32 6
  %21 = load i8* %op_flags41, align 1, !tbaa !1
  %and43 = and i8 %21, 64
  %lnot = icmp eq i8 %and43, 0
  br label %lor.end

lor.end:                                          ; preds = %if.end31, %lor.rhs
  %22 = phi i1 [ %lnot, %lor.rhs ], [ true, %if.end31 ]
  %23 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags46 = getelementptr inbounds %struct.sv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags46, align 4, !tbaa !3
  %and47 = and i32 %24, 16777216
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.end66

land.lhs.true49:                                  ; preds = %lor.end
  %25 = and i32 %24, 393216
  %or.cond333.not = icmp ne i32 %25, 0
  %and59 = and i32 %24, 65536
  %tobool60 = icmp eq i32 %and59, 0
  %or.cond341 = and i1 %or.cond333.not, %tobool60
  br i1 %or.cond341, label %cond.false62, label %if.end66

cond.false62:                                     ; preds = %land.lhs.true49
  %call63 = tail call i64 @Perl_sv_2iv(%struct.sv* %23) #8
  %.pre = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags67.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre, i64 0, i32 2
  %.pre343 = load i32* %sv_flags67.phi.trans.insert, align 4, !tbaa !3
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true49, %lor.end, %cond.false62
  %26 = phi i32 [ %24, %land.lhs.true49 ], [ %24, %lor.end ], [ %.pre343, %cond.false62 ]
  %27 = phi %struct.sv* [ %23, %land.lhs.true49 ], [ %23, %lor.end ], [ %.pre, %cond.false62 ]
  %and68 = and i32 %26, 65536
  %tobool69 = icmp eq i32 %and68, 0
  br i1 %tobool69, label %if.end214, label %if.then70

if.then70:                                        ; preds = %if.end66
  br i1 %22, label %if.else73, label %if.then130

if.else73:                                        ; preds = %if.then70
  %28 = load %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  %sv_flags75 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags75, align 4, !tbaa !3
  %and76 = and i32 %29, 16777216
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %land.lhs.true78, label %if.end102

land.lhs.true78:                                  ; preds = %if.else73
  %30 = and i32 %29, 393216
  %or.cond334.not = icmp ne i32 %30, 0
  %and91 = and i32 %29, 65536
  %tobool92 = icmp eq i32 %and91, 0
  %or.cond342 = and i1 %or.cond334.not, %tobool92
  br i1 %or.cond342, label %cond.false97, label %if.end102

cond.false97:                                     ; preds = %land.lhs.true78
  %call99 = tail call i64 @Perl_sv_2iv(%struct.sv* %28) #8
  %.pre344 = load %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  %sv_flags104.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre344, i64 0, i32 2
  %.pre345 = load i32* %sv_flags104.phi.trans.insert, align 4, !tbaa !3
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true78, %if.else73, %cond.false97
  %31 = phi i32 [ %29, %land.lhs.true78 ], [ %29, %if.else73 ], [ %.pre345, %cond.false97 ]
  %32 = phi %struct.sv* [ %28, %land.lhs.true78 ], [ %28, %if.else73 ], [ %.pre344, %cond.false97 ]
  %and105 = and i32 %31, 65536
  %tobool106 = icmp eq i32 %and105, 0
  br i1 %tobool106, label %if.end102.if.end214_crit_edge, label %if.then107

if.end102.if.end214_crit_edge:                    ; preds = %if.end102
  %.pre346 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags216.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre346, i64 0, i32 2
  %.pre347 = load i32* %sv_flags216.phi.trans.insert, align 4, !tbaa !3
  br label %if.end214

if.then107:                                       ; preds = %if.end102
  %and110 = and i32 %31, -2147418112
  %cmp = icmp eq i32 %and110, -2147418112
  %conv112 = zext i1 %cmp to i8
  %sv_any116 = getelementptr inbounds %struct.sv* %32, i64 0, i32 0
  %33 = load i8** %sv_any116, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %33, i64 24
  %34 = bitcast i8* %xuv_uv to i64*
  %35 = load i64* %34, align 8, !tbaa !4
  br i1 %cmp, label %if.then130, label %if.else117

if.else117:                                       ; preds = %if.then107
  %cmp121 = icmp sgt i64 %35, -1
  %sub = sub nsw i64 0, %35
  %.conv112 = select i1 %cmp121, i8 1, i8 %conv112
  %.sub = select i1 %cmp121, i64 %35, i64 %sub
  br label %if.then130

if.then130:                                       ; preds = %if.then107, %if.then70, %if.else117
  %auvok.1.ph = phi i8 [ 1, %if.then70 ], [ %.conv112, %if.else117 ], [ %conv112, %if.then107 ]
  %auv.1.ph = phi i64 [ 0, %if.then70 ], [ %.sub, %if.else117 ], [ %35, %if.then107 ]
  %36 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags131 = getelementptr inbounds %struct.sv* %36, i64 0, i32 2
  %37 = load i32* %sv_flags131, align 4, !tbaa !3
  %and132 = and i32 %37, -2147418112
  %cmp133 = icmp eq i32 %and132, -2147418112
  %conv135 = zext i1 %cmp133 to i8
  %sv_any138 = getelementptr inbounds %struct.sv* %36, i64 0, i32 0
  %38 = load i8** %sv_any138, align 8, !tbaa !0
  %xuv_uv139 = getelementptr inbounds i8* %38, i64 24
  %39 = bitcast i8* %xuv_uv139 to i64*
  %40 = load i64* %39, align 8, !tbaa !4
  br i1 %cmp133, label %if.end149, label %if.else140

if.else140:                                       ; preds = %if.then130
  %cmp143 = icmp sgt i64 %40, -1
  %sub147 = sub nsw i64 0, %40
  %.sub147 = select i1 %cmp143, i64 %40, i64 %sub147
  %.conv135 = select i1 %cmp143, i8 1, i8 %conv135
  br label %if.end149

if.end149:                                        ; preds = %if.else140, %if.then130
  %buv.0 = phi i64 [ %40, %if.then130 ], [ %.sub147, %if.else140 ]
  %buvok.0 = phi i8 [ %conv135, %if.then130 ], [ %.conv135, %if.else140 ]
  %conv150 = sext i8 %auvok.1.ph to i32
  %conv151332 = zext i8 %buvok.0 to i32
  %tobool152 = icmp eq i32 %conv150, %conv151332
  br i1 %tobool152, label %if.end177, label %if.then153

if.then153:                                       ; preds = %if.end149
  %cmp154 = icmp ult i64 %auv.1.ph, %buv.0
  br i1 %cmp154, label %if.else162, label %if.then156

if.then156:                                       ; preds = %if.then153
  %sub157 = sub i64 %auv.1.ph, %buv.0
  %not.cmp158 = icmp ugt i64 %sub157, %auv.1.ph
  br i1 %not.cmp158, label %if.end214, label %if.then179

if.else162:                                       ; preds = %if.then153
  %sub163 = sub i64 %buv.0, %auv.1.ph
  %cmp164 = icmp ugt i64 %sub163, %buv.0
  br i1 %cmp164, label %if.end214, label %if.end177.thread

if.end177.thread:                                 ; preds = %if.else162
  %lnot168 = icmp eq i8 %auvok.1.ph, 0
  %conv169 = zext i1 %lnot168 to i8
  br label %if.then179

if.end177:                                        ; preds = %if.end149
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %auv.1.ph, i64 %buv.0)
  %41 = extractvalue { i64, i1 } %uadd, 0
  %cmp173 = extractvalue { i64, i1 } %uadd, 1
  br i1 %cmp173, label %if.end214, label %if.then179

if.then179:                                       ; preds = %if.end177, %if.then156, %if.end177.thread
  %result.0339 = phi i64 [ %sub163, %if.end177.thread ], [ %41, %if.end177 ], [ %sub157, %if.then156 ]
  %auvok.2338 = phi i8 [ %conv169, %if.end177.thread ], [ %auvok.1.ph, %if.end177 ], [ %auvok.1.ph, %if.then156 ]
  %tobool181 = icmp eq i8 %auvok.2338, 0
  br i1 %tobool181, label %if.else189, label %if.then182

if.then182:                                       ; preds = %if.then179
  tail call void @Perl_sv_setuv(%struct.sv* %cond, i64 %result.0339) #8
  %sv_flags183 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %42 = load i32* %sv_flags183, align 4, !tbaa !3
  %and184 = and i32 %42, 16384
  %tobool185 = icmp eq i32 %and184, 0
  br i1 %tobool185, label %if.end188, label %if.then186

if.then186:                                       ; preds = %if.then182
  %call187 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end188

if.end188:                                        ; preds = %if.then182, %if.then186
  store %struct.sv* %cond, %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  br label %if.end210

if.else189:                                       ; preds = %if.then179
  %cmp190 = icmp ult i64 %result.0339, -9223372036854775807
  br i1 %cmp190, label %if.then192, label %if.else200

if.then192:                                       ; preds = %if.else189
  %sub193 = sub nsw i64 0, %result.0339
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %sub193) #8
  %sv_flags194 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %43 = load i32* %sv_flags194, align 4, !tbaa !3
  %and195 = and i32 %43, 16384
  %tobool196 = icmp eq i32 %and195, 0
  br i1 %tobool196, label %if.end199, label %if.then197

if.then197:                                       ; preds = %if.then192
  %call198 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end199

if.end199:                                        ; preds = %if.then192, %if.then197
  store %struct.sv* %cond, %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  br label %if.end210

if.else200:                                       ; preds = %if.else189
  %conv201 = uitofp i64 %result.0339 to double
  %sub202 = fsub double -0.000000e+00, %conv201
  tail call void @Perl_sv_setnv(%struct.sv* %cond, double %sub202) #8
  %sv_flags203 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %44 = load i32* %sv_flags203, align 4, !tbaa !3
  %and204 = and i32 %44, 16384
  %tobool205 = icmp eq i32 %and204, 0
  br i1 %tobool205, label %if.end208, label %if.then206

if.then206:                                       ; preds = %if.else200
  %call207 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end208

if.end208:                                        ; preds = %if.else200, %if.then206
  store %struct.sv* %cond, %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  br label %if.end210

if.end210:                                        ; preds = %if.end199, %if.end208, %if.end188
  store %struct.sv** %add.ptr32.pre-phi, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %45 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next211 = getelementptr inbounds %struct.op* %45, i64 0, i32 0
  br label %return

if.end214:                                        ; preds = %if.end102.if.end214_crit_edge, %if.end177, %if.then156, %if.else162, %if.end66
  %46 = phi i32 [ %.pre347, %if.end102.if.end214_crit_edge ], [ %37, %if.end177 ], [ %37, %if.then156 ], [ %37, %if.else162 ], [ %26, %if.end66 ]
  %47 = phi %struct.sv* [ %.pre346, %if.end102.if.end214_crit_edge ], [ %36, %if.end177 ], [ %36, %if.then156 ], [ %36, %if.else162 ], [ %27, %if.end66 ]
  store %struct.sv* %47, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %and217 = and i32 %46, 131072
  %tobool218 = icmp eq i32 %and217, 0
  br i1 %tobool218, label %cond.false221, label %cond.true219

cond.true219:                                     ; preds = %if.end214
  %sv_any220 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %48 = load i8** %sv_any220, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %48, i64 32
  %49 = bitcast i8* %xnv_nv to double*
  %50 = load double* %49, align 8, !tbaa !5
  br label %cond.end223

cond.false221:                                    ; preds = %if.end214
  %call222 = tail call double @Perl_sv_2nv(%struct.sv* %47) #8
  br label %cond.end223

cond.end223:                                      ; preds = %cond.false221, %cond.true219
  %cond224 = phi double [ %50, %cond.true219 ], [ %call222, %cond.false221 ]
  br i1 %22, label %if.end234, label %if.then226

if.then226:                                       ; preds = %cond.end223
  tail call void @Perl_sv_setnv(%struct.sv* %cond, double %cond224) #8
  %sv_flags227 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %51 = load i32* %sv_flags227, align 4, !tbaa !3
  %and228 = and i32 %51, 16384
  %tobool229 = icmp eq i32 %and228, 0
  br i1 %tobool229, label %if.end232, label %if.then230

if.then230:                                       ; preds = %if.then226
  %call231 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end232

if.end232:                                        ; preds = %if.then226, %if.then230
  store %struct.sv* %cond, %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  store %struct.sv** %add.ptr32.pre-phi, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %52 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next233 = getelementptr inbounds %struct.op* %52, i64 0, i32 0
  br label %return

if.end234:                                        ; preds = %cond.end223
  %53 = load %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  %sv_flags235 = getelementptr inbounds %struct.sv* %53, i64 0, i32 2
  %54 = load i32* %sv_flags235, align 4, !tbaa !3
  %and236 = and i32 %54, 131072
  %tobool237 = icmp eq i32 %and236, 0
  br i1 %tobool237, label %cond.false241, label %cond.true238

cond.true238:                                     ; preds = %if.end234
  %sv_any239 = getelementptr inbounds %struct.sv* %53, i64 0, i32 0
  %55 = load i8** %sv_any239, align 8, !tbaa !0
  %xnv_nv240 = getelementptr inbounds i8* %55, i64 32
  %56 = bitcast i8* %xnv_nv240 to double*
  %57 = load double* %56, align 8, !tbaa !5
  br label %cond.end243

cond.false241:                                    ; preds = %if.end234
  %call242 = tail call double @Perl_sv_2nv(%struct.sv* %53) #8
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false241, %cond.true238
  %cond244 = phi double [ %57, %cond.true238 ], [ %call242, %cond.false241 ]
  %add245 = fadd double %cond224, %cond244
  tail call void @Perl_sv_setnv(%struct.sv* %cond, double %add245) #8
  %sv_flags246 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %58 = load i32* %sv_flags246, align 4, !tbaa !3
  %and247 = and i32 %58, 16384
  %tobool248 = icmp eq i32 %and247, 0
  br i1 %tobool248, label %if.end251, label %if.then249

if.then249:                                       ; preds = %cond.end243
  %call250 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #8
  br label %if.end251

if.end251:                                        ; preds = %cond.end243, %if.then249
  store %struct.sv* %cond, %struct.sv** %add.ptr32.pre-phi, align 8, !tbaa !0
  store %struct.sv** %add.ptr32.pre-phi, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %59 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next252 = getelementptr inbounds %struct.op* %59, i64 0, i32 0
  br label %return

return:                                           ; preds = %if.end251, %if.end232, %if.end210, %if.end29
  %retval.0.in = phi %struct.op** [ %op_next, %if.end29 ], [ %op_next211, %if.end210 ], [ %op_next252, %if.end251 ], [ %op_next233, %if.end232 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_setuv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_aelemfast() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %1, i64 0, i32 3
  %3 = load i64* %op_targ, align 8, !tbaa !4
  %4 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %3
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %6 = bitcast %struct.sv* %5 to %struct.av*
  br label %cond.end

cond.false:                                       ; preds = %entry
  %op_sv = getelementptr inbounds %struct.op* %1, i64 1
  %7 = bitcast %struct.op* %op_sv to %struct.sv**
  %8 = load %struct.sv** %7, align 8, !tbaa !0
  %sv_any = bitcast %struct.sv* %8 to %struct.xpvgv**
  %9 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %9, i64 0, i32 7
  %10 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %10, i64 0, i32 4
  %11 = load %struct.av** %gp_av, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %6, %cond.true ], [ %11, %cond.false ]
  %conv2 = zext i8 %2 to i32
  %and3 = and i32 %conv2, 32
  %op_private = getelementptr inbounds %struct.op* %1, i64 0, i32 7
  %12 = load i8* %op_private, align 1, !tbaa !1
  %conv4 = zext i8 %12 to i32
  %call = tail call %struct.sv** @Perl_av_fetch(%struct.av* %cond, i32 %conv4, i32 %and3) #8
  %tobool5 = icmp eq %struct.sv** %call, null
  br i1 %tobool5, label %cond.end8, label %cond.true6

cond.true6:                                       ; preds = %cond.end
  %13 = load %struct.sv** %call, align 8, !tbaa !0
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true6
  %cond9 = phi %struct.sv* [ %13, %cond.true6 ], [ @PL_sv_undef, %cond.end ]
  %14 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end8
  %call11 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end8
  %sp.0 = phi %struct.sv** [ %call11, %if.then ], [ %0, %cond.end8 ]
  %tobool12 = icmp eq i32 %and3, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %cond9, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %15, 8192
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %call16 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %cond9) #8
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end, %if.then15
  %sv.0 = phi %struct.sv* [ %cond9, %if.end ], [ %call16, %if.then15 ], [ %cond9, %land.lhs.true ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %sv.0, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %16, i64 0, i32 0
  %17 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %17
}

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_join() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !4
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %8 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  tail call void @Perl_do_join(%struct.sv* %7, %struct.sv* %8, %struct.sv** %incdec.ptr1, %struct.sv** %0) #8
  store %struct.sv* %7, %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %10
}

; Function Attrs: optsize
declare void @Perl_do_join(%struct.sv*, %struct.sv*, %struct.sv**, %struct.sv**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_pushre() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %3 = bitcast %struct.op* %2 to %struct.sv*
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %3, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %4, i64 0, i32 0
  %5 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %5
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_print() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
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
  %mark.0 = phi %struct.sv** [ %incdec.ptr2, %if.then ], [ %add.ptr, %if.else ]
  %gv.0 = phi %struct.gv* [ %7, %if.then ], [ %8, %if.else ]
  %tobool3 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool3, label %if.then94, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %9 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !3
  %and6 = and i32 %10, 255
  %cmp = icmp eq i32 %and6, 13
  br i1 %cmp, label %land.lhs.true8, label %land.lhs.true77

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %sv_any = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %11 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %11, i64 0, i32 7
  %12 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.gp* %12, null
  br i1 %tobool9, label %if.end75.land.lhs.true77_crit_edge, label %cond.end

cond.end:                                         ; preds = %land.lhs.true8
  %gp_io = getelementptr inbounds %struct.gp* %12, i64 0, i32 2
  %13 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.io* %13, null
  br i1 %tobool12, label %if.end75.land.lhs.true77_crit_edge, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.end
  %14 = getelementptr inbounds %struct.io* %13, i64 0, i32 2
  %15 = load i32* %14, align 4, !tbaa !3
  %and15 = and i32 %15, 32768
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end75.land.lhs.true77_crit_edge, label %cond.end19

cond.end19:                                       ; preds = %land.lhs.true13
  %16 = bitcast %struct.io* %13 to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %16, i32 113) #8
  %tobool21 = icmp eq %struct.magic* %call, null
  br i1 %tobool21, label %if.end75.land.lhs.true77_crit_edge, label %had_magic

had_magic:                                        ; preds = %cond.end19, %cond.end136
  %io.0 = phi %struct.io* [ %13, %cond.end19 ], [ %44, %cond.end136 ]
  %mg.0 = phi %struct.magic* [ %call, %cond.end19 ], [ %call134, %cond.end136 ]
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr24 = getelementptr inbounds %struct.sv** %17, i64 %idx.ext
  %cmp25 = icmp eq %struct.sv** %mark.0, %add.ptr24
  br i1 %cmp25, label %if.then27, label %if.end51

if.then27:                                        ; preds = %had_magic
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
  %call40 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
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
  %sub.ptr.div49410411 = add i64 %sub.ptr.sub48, %sub.ptr.lhs.cast46
  %mul = and i64 %sub.ptr.div49410411, -8
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %21, i8* %22, i64 %mul, i32 1, i1 false)
  %incdec.ptr50 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  br label %if.end51

if.end51:                                         ; preds = %if.end43, %had_magic
  %mark.2 = phi %struct.sv** [ %incdec.ptr44, %if.end43 ], [ %mark.0, %had_magic ]
  %sp.1 = phi %struct.sv** [ %incdec.ptr50, %if.end43 ], [ %0, %had_magic ]
  %23 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr52 = getelementptr inbounds i32* %23, i64 1
  store i32* %incdec.ptr52, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %24 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp53 = icmp eq i32* %incdec.ptr52, %24
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  tail call void @Perl_markstack_grow() #8
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end56

if.end56:                                         ; preds = %if.end51, %if.then55
  %25 = phi i32* [ %.pre, %if.then55 ], [ %incdec.ptr52, %if.end51 ]
  %add.ptr57 = getelementptr inbounds %struct.sv** %mark.2, i64 -1
  %26 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast58 = ptrtoint %struct.sv** %add.ptr57 to i64
  %sub.ptr.rhs.cast59 = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %sub.ptr.div61409 = lshr exact i64 %sub.ptr.sub60, 3
  %conv62 = trunc i64 %sub.ptr.div61409 to i32
  store i32 %conv62, i32* %25, align 4, !tbaa !3
  %mg_obj = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 5
  %27 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool63 = icmp eq %struct.sv* %27, null
  br i1 %tobool63, label %cond.false66, label %cond.end69

cond.false66:                                     ; preds = %if.end56
  %28 = bitcast %struct.io* %io.0 to %struct.sv*
  %call67 = tail call %struct.sv* @Perl_newRV(%struct.sv* %28) #8
  %call68 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67) #8
  br label %cond.end69

cond.end69:                                       ; preds = %if.end56, %cond.false66
  %cond70 = phi %struct.sv* [ %call68, %cond.false66 ], [ %27, %if.end56 ]
  store %struct.sv* %cond70, %struct.sv** %mark.2, align 8, !tbaa !0
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_push_scope() #8
  %call71 = tail call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 0) #8
  tail call void @Perl_pop_scope() #8
  %29 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr73.sum = add i64 %idx.ext, 1
  %add.ptr74 = getelementptr inbounds %struct.sv** %30, i64 %add.ptr73.sum
  %31 = load %struct.sv** %29, align 8, !tbaa !0
  store %struct.sv* %31, %struct.sv** %add.ptr74, align 8, !tbaa !0
  store %struct.sv** %add.ptr74, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %32 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %32, i64 0, i32 0
  br label %return

if.end75.land.lhs.true77_crit_edge:               ; preds = %cond.end, %cond.end19, %land.lhs.true8, %land.lhs.true13
  %.pre435 = load i32* %9, align 4, !tbaa !3
  br label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.end75.land.lhs.true77_crit_edge, %land.lhs.true5
  %33 = phi i32 [ %.pre435, %if.end75.land.lhs.true77_crit_edge ], [ %10, %land.lhs.true5 ]
  %and79 = and i32 %33, 255
  %cmp80 = icmp eq i32 %and79, 13
  br i1 %cmp80, label %land.lhs.true82, label %if.then94

land.lhs.true82:                                  ; preds = %land.lhs.true77
  %sv_any83 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %34 = load %struct.xpvgv** %sv_any83, align 8, !tbaa !0
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  %35 = load %struct.gp** %xgv_gp84, align 8, !tbaa !0
  %tobool85 = icmp eq %struct.gp* %35, null
  br i1 %tobool85, label %if.then94, label %cond.end91

cond.end91:                                       ; preds = %land.lhs.true82
  %gp_io89 = getelementptr inbounds %struct.gp* %35, i64 0, i32 2
  %36 = load %struct.io** %gp_io89, align 8, !tbaa !0
  %tobool93 = icmp eq %struct.io* %36, null
  br i1 %tobool93, label %if.then94, label %if.else176

if.then94:                                        ; preds = %land.lhs.true77, %if.end, %land.lhs.true82, %cond.end91
  %sv_any95 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %37 = load %struct.xpvgv** %sv_any95, align 8, !tbaa !0
  %xgv_gp96 = getelementptr inbounds %struct.xpvgv* %37, i64 0, i32 7
  %38 = load %struct.gp** %xgv_gp96, align 8, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %38, i64 0, i32 6
  %39 = load %struct.gv** %gp_egv, align 8, !tbaa !0
  %tobool97 = icmp eq %struct.gv* %39, null
  br i1 %tobool97, label %if.end140, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %if.then94
  %40 = getelementptr inbounds %struct.gv* %39, i64 0, i32 2
  %41 = load i32* %40, align 4, !tbaa !3
  %and108 = and i32 %41, 255
  %cmp109 = icmp eq i32 %and108, 13
  br i1 %cmp109, label %land.lhs.true111, label %if.end140

land.lhs.true111:                                 ; preds = %land.lhs.true103
  %sv_any115 = getelementptr inbounds %struct.gv* %39, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any115, align 8, !tbaa !0
  %xgv_gp116 = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp116, align 8, !tbaa !0
  %tobool117 = icmp eq %struct.gp* %43, null
  br i1 %tobool117, label %if.end140, label %cond.end126

cond.end126:                                      ; preds = %land.lhs.true111
  %gp_io124 = getelementptr inbounds %struct.gp* %43, i64 0, i32 2
  %44 = load %struct.io** %gp_io124, align 8, !tbaa !0
  %tobool128 = icmp eq %struct.io* %44, null
  br i1 %tobool128, label %if.end140, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %cond.end126
  %45 = getelementptr inbounds %struct.io* %44, i64 0, i32 2
  %46 = load i32* %45, align 4, !tbaa !3
  %and131 = and i32 %46, 32768
  %tobool132 = icmp eq i32 %and131, 0
  br i1 %tobool132, label %if.end140, label %cond.end136

cond.end136:                                      ; preds = %land.lhs.true129
  %47 = bitcast %struct.io* %44 to %struct.sv*
  %call134 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %47, i32 113) #8
  %tobool138 = icmp eq %struct.magic* %call134, null
  br i1 %tobool138, label %if.end140, label %had_magic

if.end140:                                        ; preds = %if.then94, %land.lhs.true129, %land.lhs.true103, %land.lhs.true111, %cond.end136, %cond.end126
  %io.1 = phi %struct.io* [ %44, %cond.end136 ], [ null, %cond.end126 ], [ null, %if.then94 ], [ null, %land.lhs.true111 ], [ null, %land.lhs.true103 ], [ %44, %land.lhs.true129 ]
  %48 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %48, i64 0, i32 14
  %49 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp141 = icmp eq %struct.sv* %49, null
  br i1 %cmp141, label %lor.lhs.false164, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.end140
  %50 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings144 = getelementptr inbounds %struct.cop* %50, i64 0, i32 14
  %51 = load %struct.sv** %cop_warnings144, align 8, !tbaa !0
  %cmp145 = icmp eq %struct.sv* %51, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp145, label %lor.lhs.false164, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %land.lhs.true143
  %52 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings148 = getelementptr inbounds %struct.cop* %52, i64 0, i32 14
  %53 = load %struct.sv** %cop_warnings148, align 8, !tbaa !0
  %cmp149 = icmp eq %struct.sv* %53, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp149, label %if.then172, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true147
  %54 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings151 = getelementptr inbounds %struct.cop* %54, i64 0, i32 14
  %55 = load %struct.sv** %cop_warnings151, align 8, !tbaa !0
  %sv_any152 = getelementptr inbounds %struct.sv* %55, i64 0, i32 0
  %56 = load i8** %sv_any152, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %56 to i8**
  %57 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %57, i64 2
  %58 = load i8* %arrayidx, align 1, !tbaa !1
  %and154 = and i8 %58, 64
  %tobool155 = icmp eq i8 %and154, 0
  br i1 %tobool155, label %lor.lhs.false156, label %if.then172

lor.lhs.false156:                                 ; preds = %lor.lhs.false
  %59 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings157 = getelementptr inbounds %struct.cop* %59, i64 0, i32 14
  %60 = load %struct.sv** %cop_warnings157, align 8, !tbaa !0
  %sv_any158 = getelementptr inbounds %struct.sv* %60, i64 0, i32 0
  %61 = load i8** %sv_any158, align 8, !tbaa !0
  %xpv_pv159 = bitcast i8* %61 to i8**
  %62 = load i8** %xpv_pv159, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i8* %62, i64 1
  %63 = load i8* %arrayidx160, align 1, !tbaa !1
  %and162 = and i8 %63, 16
  %tobool163 = icmp eq i8 %and162, 0
  br i1 %tobool163, label %lor.lhs.false164, label %if.then172

lor.lhs.false164:                                 ; preds = %lor.lhs.false156, %land.lhs.true143, %if.end140
  %64 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings165 = getelementptr inbounds %struct.cop* %64, i64 0, i32 14
  %65 = load %struct.sv** %cop_warnings165, align 8, !tbaa !0
  %cmp166 = icmp eq %struct.sv* %65, null
  br i1 %cmp166, label %land.lhs.true168, label %if.end174

land.lhs.true168:                                 ; preds = %lor.lhs.false164
  %66 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and170 = and i8 %66, 1
  %tobool171 = icmp eq i8 %and170, 0
  br i1 %tobool171, label %if.end174, label %if.then172

if.then172:                                       ; preds = %lor.lhs.false156, %lor.lhs.false, %land.lhs.true168, %land.lhs.true147
  %67 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %67, i64 0, i32 4
  %68 = load i16* %op_type, align 2, !tbaa !6
  %conv173 = zext i16 %68 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %io.1, i32 %conv173) #8
  br label %if.end174

if.end174:                                        ; preds = %land.lhs.true168, %if.then172, %lor.lhs.false164
  %call175 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call175, align 4, !tbaa !3
  br label %just_say_no

if.else176:                                       ; preds = %cond.end91
  %sv_any177 = getelementptr inbounds %struct.io* %36, i64 0, i32 0
  %69 = load %struct.xpvio** %sv_any177, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %69, i64 0, i32 8
  %70 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool178 = icmp eq %struct._PerlIO** %70, null
  br i1 %tobool178, label %if.then179, label %if.else262

if.then179:                                       ; preds = %if.else176
  %71 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings180 = getelementptr inbounds %struct.cop* %71, i64 0, i32 14
  %72 = load %struct.sv** %cop_warnings180, align 8, !tbaa !0
  %cmp181 = icmp eq %struct.sv* %72, null
  br i1 %cmp181, label %lor.lhs.false207, label %land.lhs.true183

land.lhs.true183:                                 ; preds = %if.then179
  %73 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings184 = getelementptr inbounds %struct.cop* %73, i64 0, i32 14
  %74 = load %struct.sv** %cop_warnings184, align 8, !tbaa !0
  %cmp185 = icmp eq %struct.sv* %74, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp185, label %lor.lhs.false207, label %land.lhs.true187

land.lhs.true187:                                 ; preds = %land.lhs.true183
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings188 = getelementptr inbounds %struct.cop* %75, i64 0, i32 14
  %76 = load %struct.sv** %cop_warnings188, align 8, !tbaa !0
  %cmp189 = icmp eq %struct.sv* %76, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp189, label %if.then215, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %land.lhs.true187
  %77 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings192 = getelementptr inbounds %struct.cop* %77, i64 0, i32 14
  %78 = load %struct.sv** %cop_warnings192, align 8, !tbaa !0
  %sv_any193 = getelementptr inbounds %struct.sv* %78, i64 0, i32 0
  %79 = load i8** %sv_any193, align 8, !tbaa !0
  %xpv_pv194 = bitcast i8* %79 to i8**
  %80 = load i8** %xpv_pv194, align 8, !tbaa !0
  %arrayidx195 = getelementptr inbounds i8* %80, i64 1
  %81 = load i8* %arrayidx195, align 1, !tbaa !1
  %and197 = and i8 %81, 16
  %tobool198 = icmp eq i8 %and197, 0
  br i1 %tobool198, label %lor.lhs.false199, label %if.then215

lor.lhs.false199:                                 ; preds = %lor.lhs.false191
  %82 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings200 = getelementptr inbounds %struct.cop* %82, i64 0, i32 14
  %83 = load %struct.sv** %cop_warnings200, align 8, !tbaa !0
  %sv_any201 = getelementptr inbounds %struct.sv* %83, i64 0, i32 0
  %84 = load i8** %sv_any201, align 8, !tbaa !0
  %xpv_pv202 = bitcast i8* %84 to i8**
  %85 = load i8** %xpv_pv202, align 8, !tbaa !0
  %arrayidx203 = getelementptr inbounds i8* %85, i64 1
  %86 = load i8* %arrayidx203, align 1, !tbaa !1
  %and205 = and i8 %86, 4
  %tobool206 = icmp eq i8 %and205, 0
  br i1 %tobool206, label %lor.lhs.false207, label %if.then215

lor.lhs.false207:                                 ; preds = %lor.lhs.false199, %land.lhs.true183, %if.then179
  %87 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings208 = getelementptr inbounds %struct.cop* %87, i64 0, i32 14
  %88 = load %struct.sv** %cop_warnings208, align 8, !tbaa !0
  %cmp209 = icmp eq %struct.sv* %88, null
  br i1 %cmp209, label %land.lhs.true211, label %if.end260

land.lhs.true211:                                 ; preds = %lor.lhs.false207
  %89 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and213 = and i8 %89, 1
  %tobool214 = icmp eq i8 %and213, 0
  br i1 %tobool214, label %if.end260, label %if.then215

if.then215:                                       ; preds = %lor.lhs.false199, %lor.lhs.false191, %land.lhs.true211, %land.lhs.true187
  %90 = load %struct.xpvio** %sv_any177, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %90, i64 0, i32 7
  %91 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool217 = icmp eq %struct._PerlIO** %91, null
  br i1 %tobool217, label %if.else219, label %if.then218

if.then218:                                       ; preds = %if.then215
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %36, i32 -1) #8
  br label %if.end260

if.else219:                                       ; preds = %if.then215
  %92 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings220 = getelementptr inbounds %struct.cop* %92, i64 0, i32 14
  %93 = load %struct.sv** %cop_warnings220, align 8, !tbaa !0
  %cmp221 = icmp eq %struct.sv* %93, null
  br i1 %cmp221, label %lor.lhs.false247, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %if.else219
  %94 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings224 = getelementptr inbounds %struct.cop* %94, i64 0, i32 14
  %95 = load %struct.sv** %cop_warnings224, align 8, !tbaa !0
  %cmp225 = icmp eq %struct.sv* %95, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp225, label %lor.lhs.false247, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %land.lhs.true223
  %96 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings228 = getelementptr inbounds %struct.cop* %96, i64 0, i32 14
  %97 = load %struct.sv** %cop_warnings228, align 8, !tbaa !0
  %cmp229 = icmp eq %struct.sv* %97, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp229, label %if.then255, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %land.lhs.true227
  %98 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings232 = getelementptr inbounds %struct.cop* %98, i64 0, i32 14
  %99 = load %struct.sv** %cop_warnings232, align 8, !tbaa !0
  %sv_any233 = getelementptr inbounds %struct.sv* %99, i64 0, i32 0
  %100 = load i8** %sv_any233, align 8, !tbaa !0
  %xpv_pv234 = bitcast i8* %100 to i8**
  %101 = load i8** %xpv_pv234, align 8, !tbaa !0
  %arrayidx235 = getelementptr inbounds i8* %101, i64 2
  %102 = load i8* %arrayidx235, align 1, !tbaa !1
  %and237 = and i8 %102, 64
  %tobool238 = icmp eq i8 %and237, 0
  br i1 %tobool238, label %lor.lhs.false239, label %if.then255

lor.lhs.false239:                                 ; preds = %lor.lhs.false231
  %103 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings240 = getelementptr inbounds %struct.cop* %103, i64 0, i32 14
  %104 = load %struct.sv** %cop_warnings240, align 8, !tbaa !0
  %sv_any241 = getelementptr inbounds %struct.sv* %104, i64 0, i32 0
  %105 = load i8** %sv_any241, align 8, !tbaa !0
  %xpv_pv242 = bitcast i8* %105 to i8**
  %106 = load i8** %xpv_pv242, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds i8* %106, i64 1
  %107 = load i8* %arrayidx243, align 1, !tbaa !1
  %and245 = and i8 %107, 16
  %tobool246 = icmp eq i8 %and245, 0
  br i1 %tobool246, label %lor.lhs.false247, label %if.then255

lor.lhs.false247:                                 ; preds = %lor.lhs.false239, %land.lhs.true223, %if.else219
  %108 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings248 = getelementptr inbounds %struct.cop* %108, i64 0, i32 14
  %109 = load %struct.sv** %cop_warnings248, align 8, !tbaa !0
  %cmp249 = icmp eq %struct.sv* %109, null
  br i1 %cmp249, label %land.lhs.true251, label %if.end260

land.lhs.true251:                                 ; preds = %lor.lhs.false247
  %110 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and253 = and i8 %110, 1
  %tobool254 = icmp eq i8 %and253, 0
  br i1 %tobool254, label %if.end260, label %if.then255

if.then255:                                       ; preds = %lor.lhs.false239, %lor.lhs.false231, %land.lhs.true251, %land.lhs.true227
  %111 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type256 = getelementptr inbounds %struct.op* %111, i64 0, i32 4
  %112 = load i16* %op_type256, align 2, !tbaa !6
  %conv257 = zext i16 %112 to i32
  tail call void @Perl_report_evil_fh(%struct.gv* %gv.0, %struct.io* %36, i32 %conv257) #8
  br label %if.end260

if.end260:                                        ; preds = %land.lhs.true251, %land.lhs.true211, %if.then218, %if.then255, %lor.lhs.false247, %lor.lhs.false207
  %call261 = tail call i32* @__errno_location() #8
  store i32 9, i32* %call261, align 4, !tbaa !3
  br label %just_say_no

if.else262:                                       ; preds = %if.else176
  %incdec.ptr263 = getelementptr inbounds %struct.sv** %mark.0, i64 1
  %113 = load %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  %tobool264 = icmp eq %struct.sv* %113, null
  br i1 %tobool264, label %while.cond287.preheader, label %land.lhs.true265

land.lhs.true265:                                 ; preds = %if.else262
  %sv_flags266 = getelementptr inbounds %struct.sv* %113, i64 0, i32 2
  %114 = load i32* %sv_flags266, align 4, !tbaa !3
  %and267 = and i32 %114, 118423552
  %tobool268 = icmp eq i32 %and267, 0
  br i1 %tobool268, label %while.cond287.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true265
  %cmp270429 = icmp ugt %struct.sv** %incdec.ptr263, %0
  br i1 %cmp270429, label %if.end297, label %while.body

while.cond287.preheader:                          ; preds = %if.else262, %land.lhs.true265
  %cmp288426 = icmp ugt %struct.sv** %incdec.ptr263, %0
  br i1 %cmp288426, label %if.end297, label %while.body290

while.body:                                       ; preds = %if.then279, %while.cond.preheader
  %mark.3430 = phi %struct.sv** [ %incdec.ptr263, %while.cond.preheader ], [ %incdec.ptr276, %if.then279 ]
  %115 = load %struct.sv** %mark.3430, align 8, !tbaa !0
  %call272 = tail call signext i8 @Perl_do_print(%struct.sv* %115, %struct._PerlIO** %70) #8
  %tobool273 = icmp eq i8 %call272, 0
  br i1 %tobool273, label %if.end297, label %if.end275

if.end275:                                        ; preds = %while.body
  %incdec.ptr276 = getelementptr inbounds %struct.sv** %mark.3430, i64 1
  %cmp277 = icmp ugt %struct.sv** %incdec.ptr276, %0
  br i1 %cmp277, label %if.end297, label %if.then279

if.then279:                                       ; preds = %if.end275
  %116 = load %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  %call280 = tail call signext i8 @Perl_do_print(%struct.sv* %116, %struct._PerlIO** %70) #8
  %tobool281 = icmp eq i8 %call280, 0
  br i1 %tobool281, label %if.end297, label %while.body

while.cond287:                                    ; preds = %while.body290
  %cmp288 = icmp ugt %struct.sv** %incdec.ptr295, %0
  br i1 %cmp288, label %if.end297, label %while.body290

while.body290:                                    ; preds = %while.cond287.preheader, %while.cond287
  %mark.4427 = phi %struct.sv** [ %incdec.ptr295, %while.cond287 ], [ %incdec.ptr263, %while.cond287.preheader ]
  %117 = load %struct.sv** %mark.4427, align 8, !tbaa !0
  %call291 = tail call signext i8 @Perl_do_print(%struct.sv* %117, %struct._PerlIO** %70) #8
  %tobool292 = icmp eq i8 %call291, 0
  %incdec.ptr295 = getelementptr inbounds %struct.sv** %mark.4427, i64 1
  br i1 %tobool292, label %if.end297, label %while.cond287

if.end297:                                        ; preds = %while.cond.preheader, %if.then279, %while.body, %if.end275, %while.cond287.preheader, %while.body290, %while.cond287
  %mark.5 = phi %struct.sv** [ %incdec.ptr263, %while.cond287.preheader ], [ %mark.4427, %while.body290 ], [ %incdec.ptr295, %while.cond287 ], [ %incdec.ptr263, %while.cond.preheader ], [ %mark.3430, %if.then279 ], [ %mark.3430, %while.body ], [ %incdec.ptr276, %if.end275 ]
  %cmp298 = icmp ugt %struct.sv** %mark.5, %0
  br i1 %cmp298, label %if.else301, label %just_say_no

if.else301:                                       ; preds = %if.end297
  %118 = load %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %tobool302 = icmp eq %struct.sv* %118, null
  br i1 %tobool302, label %if.end312, label %land.lhs.true303

land.lhs.true303:                                 ; preds = %if.else301
  %sv_flags304 = getelementptr inbounds %struct.sv* %118, i64 0, i32 2
  %119 = load i32* %sv_flags304, align 4, !tbaa !3
  %and305 = and i32 %119, 118423552
  %tobool306 = icmp eq i32 %and305, 0
  br i1 %tobool306, label %if.end312, label %if.then307

if.then307:                                       ; preds = %land.lhs.true303
  %call308 = tail call signext i8 @Perl_do_print(%struct.sv* %118, %struct._PerlIO** %70) #8
  %tobool309 = icmp eq i8 %call308, 0
  br i1 %tobool309, label %just_say_no, label %if.end312

if.end312:                                        ; preds = %if.then307, %land.lhs.true303, %if.else301
  %120 = load %struct.xpvio** %sv_any177, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %120, i64 0, i32 22
  %121 = load i8* %xio_flags, align 1, !tbaa !1
  %and315 = and i8 %121, 4
  %tobool316 = icmp eq i8 %and315, 0
  br i1 %tobool316, label %if.end326, label %if.then317

if.then317:                                       ; preds = %if.end312
  %call318 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %70) #8
  %cmp319 = icmp eq i32 %call318, -1
  br i1 %cmp319, label %just_say_no, label %if.end326

if.end326:                                        ; preds = %if.then317, %if.end312
  %122 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr328.sum = add i64 %idx.ext, 1
  %incdec.ptr329 = getelementptr inbounds %struct.sv** %122, i64 %add.ptr328.sum
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr329, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr329, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %123 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next330 = getelementptr inbounds %struct.op* %123, i64 0, i32 0
  br label %return

just_say_no:                                      ; preds = %if.then317, %if.then307, %if.end297, %if.end260, %if.end174
  %124 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr332.sum = add i64 %idx.ext, 1
  %incdec.ptr333 = getelementptr inbounds %struct.sv** %124, i64 %add.ptr332.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr333, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr333, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %125 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next334 = getelementptr inbounds %struct.op* %125, i64 0, i32 0
  br label %return

return:                                           ; preds = %just_say_no, %if.end326, %cond.end69
  %retval.0.in = phi %struct.op** [ %op_next, %cond.end69 ], [ %op_next334, %just_say_no ], [ %op_next330, %if.end326 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare void @Perl_report_evil_fh(%struct.gv*, %struct.io*, i32) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: optsize
declare signext i8 @Perl_do_print(%struct.sv*, %struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_rv2av() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else68, label %wasref

wasref:                                           ; preds = %if.then120, %entry
  %3 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool1 = icmp eq i64 %3, 0
  br i1 %tobool1, label %if.end19, label %if.then2

if.then2:                                         ; preds = %wasref
  %4 = load %struct.sv** %0, align 8, !tbaa !0
  br label %am_again

am_again:                                         ; preds = %land.lhs.true12, %if.then2
  %arg.0 = phi %struct.sv* [ %4, %if.then2 ], [ %call, %land.lhs.true12 ]
  %sv.0 = phi %struct.sv* [ %1, %if.then2 ], [ %call, %land.lhs.true12 ]
  %sp.0 = phi %struct.sv** [ %0, %if.then2 ], [ %6, %land.lhs.true12 ]
  %sv_flags3 = getelementptr inbounds %struct.sv* %arg.0, i64 0, i32 2
  %5 = load i32* %sv_flags3, align 4, !tbaa !3
  %and4 = and i32 %5, 268435456
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %am_again
  %call = call %struct.sv* @Perl_amagic_call(%struct.sv* %arg.0, %struct.sv* @PL_sv_undef, i32 59, i32 9) #8
  %tobool6 = icmp eq %struct.sv* %call, null
  br i1 %tobool6, label %if.end19, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %6 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_flags8 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %7 = load i32* %sv_flags8, align 4, !tbaa !3
  %and9 = and i32 %7, 524288
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then7
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then11
  %cmp = icmp eq %struct.sv* %call, %arg.0
  br i1 %cmp, label %if.end19, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %8 to %struct.sv**
  %9 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any13 = getelementptr inbounds %struct.sv* %arg.0, i64 0, i32 0
  %10 = load i8** %sv_any13, align 8, !tbaa !0
  %xrv_rv14 = bitcast i8* %10 to %struct.sv**
  %11 = load %struct.sv** %xrv_rv14, align 8, !tbaa !0
  %cmp15 = icmp eq %struct.sv* %9, %11
  br i1 %cmp15, label %if.end19, label %am_again

if.end19:                                         ; preds = %land.lhs.true12, %if.end, %land.lhs.true, %am_again, %wasref
  %sv.1 = phi %struct.sv* [ %1, %wasref ], [ %call, %land.lhs.true12 ], [ %arg.0, %if.end ], [ %sv.0, %land.lhs.true ], [ %sv.0, %am_again ]
  %sp.1 = phi %struct.sv** [ %0, %wasref ], [ %6, %land.lhs.true12 ], [ %6, %if.end ], [ %sp.0, %land.lhs.true ], [ %sp.0, %am_again ]
  %sv_any20 = getelementptr inbounds %struct.sv* %sv.1, i64 0, i32 0
  %12 = load i8** %sv_any20, align 8, !tbaa !0
  %xrv_rv21 = bitcast i8* %12 to %struct.sv**
  %13 = load %struct.sv** %xrv_rv21, align 8, !tbaa !0
  %14 = bitcast %struct.sv* %13 to %struct.av*
  %15 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !3
  %and23 = and i32 %16, 255
  %cmp24 = icmp eq i32 %and23, 10
  br i1 %cmp24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end19
  %call26 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0)) #8
  br label %return

if.end27:                                         ; preds = %if.end19
  %17 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %17, i64 0, i32 6
  %18 = load i8* %op_flags, align 1, !tbaa !1
  %and28 = and i8 %18, 16
  %tobool29 = icmp eq i8 %and28, 0
  br i1 %tobool29, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end27
  store %struct.sv* %13, %struct.sv** %sp.1, align 8, !tbaa !0
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %19, i64 0, i32 0
  %20 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.end27
  %op_private = getelementptr inbounds %struct.op* %17, i64 0, i32 7
  %21 = load i8* %op_private, align 1, !tbaa !1
  %and32 = and i8 %21, 8
  %tobool33 = icmp eq i8 %and32, 0
  br i1 %tobool33, label %if.else54, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.else
  %call35 = call i32 @Perl_is_lvalue_sub() #8
  %tobool36 = icmp eq i32 %call35, 0
  %.pre497 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags55.phi.trans.insert = getelementptr inbounds %struct.op* %.pre497, i64 0, i32 6
  %.pre498 = load i8* %op_flags55.phi.trans.insert, align 1, !tbaa !1
  br i1 %tobool36, label %if.else54, label %if.then37

if.then37:                                        ; preds = %land.lhs.true34
  %conv39 = zext i8 %.pre498 to i32
  %and40 = and i32 %conv39, 3
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then37
  %cmp45 = icmp eq i32 %and40, 3
  %cond = zext i1 %cmp45 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then37
  %call47 = call i32 @Perl_dowantarray() #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond48 = phi i32 [ %cond, %cond.true ], [ %call47, %cond.false ]
  %cmp49 = icmp eq i32 %cond48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cond.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0)) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %cond.end
  store %struct.sv* %13, %struct.sv** %sp.1, align 8, !tbaa !0
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %22 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next53 = getelementptr inbounds %struct.op* %22, i64 0, i32 0
  %23 = load %struct.op** %op_next53, align 8, !tbaa !0
  br label %return

if.else54:                                        ; preds = %land.lhs.true34, %if.else
  %24 = phi i8 [ %18, %if.else ], [ %.pre498, %land.lhs.true34 ]
  %25 = phi %struct.op* [ %17, %if.else ], [ %.pre497, %land.lhs.true34 ]
  %and57 = and i8 %24, 32
  %tobool58 = icmp eq i8 %and57, 0
  br i1 %tobool58, label %if.end295, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.else54
  %op_private60 = getelementptr inbounds %struct.op* %25, i64 0, i32 7
  %26 = load i8* %op_private60, align 1, !tbaa !1
  %tobool63 = icmp slt i8 %26, 0
  br i1 %tobool63, label %if.then64, label %if.end295

if.then64:                                        ; preds = %land.lhs.true59
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_localize_ref, i64 0, i64 0)) #8
  br label %if.end295

if.else68:                                        ; preds = %entry
  %and70 = and i32 %2, 255
  switch i32 %and70, label %if.then116 [
    i32 10, label %if.then73
    i32 13, label %if.else235
  ]

if.then73:                                        ; preds = %if.else68
  %27 = bitcast %struct.sv* %1 to %struct.av*
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags74 = getelementptr inbounds %struct.op* %28, i64 0, i32 6
  %29 = load i8* %op_flags74, align 1, !tbaa !1
  %and76 = and i8 %29, 16
  %tobool77 = icmp eq i8 %and76, 0
  br i1 %tobool77, label %if.else80, label %if.then78

if.then78:                                        ; preds = %if.then73
  store %struct.sv* %1, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next79 = getelementptr inbounds %struct.op* %30, i64 0, i32 0
  %31 = load %struct.op** %op_next79, align 8, !tbaa !0
  br label %return

if.else80:                                        ; preds = %if.then73
  %op_private81 = getelementptr inbounds %struct.op* %28, i64 0, i32 7
  %32 = load i8* %op_private81, align 1, !tbaa !1
  %and83 = and i8 %32, 8
  %tobool84 = icmp eq i8 %and83, 0
  br i1 %tobool84, label %if.end295, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.else80
  %call86 = call i32 @Perl_is_lvalue_sub() #8
  %tobool87 = icmp eq i32 %call86, 0
  br i1 %tobool87, label %if.end295, label %if.then88

if.then88:                                        ; preds = %land.lhs.true85
  %33 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags89 = getelementptr inbounds %struct.op* %33, i64 0, i32 6
  %34 = load i8* %op_flags89, align 1, !tbaa !1
  %conv90 = zext i8 %34 to i32
  %and91 = and i32 %conv90, 3
  %tobool92 = icmp eq i32 %and91, 0
  br i1 %tobool92, label %cond.false100, label %cond.true93

cond.true93:                                      ; preds = %if.then88
  %cmp97 = icmp eq i32 %and91, 3
  %cond99 = zext i1 %cmp97 to i32
  br label %cond.end102

cond.false100:                                    ; preds = %if.then88
  %call101 = call i32 @Perl_dowantarray() #8
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false100, %cond.true93
  %cond103 = phi i32 [ %cond99, %cond.true93 ], [ %call101, %cond.false100 ]
  %cmp104 = icmp eq i32 %cond103, 0
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %cond.end102
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0)) #8
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %cond.end102
  store %struct.sv* %1, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %35 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next108 = getelementptr inbounds %struct.op* %35, i64 0, i32 0
  %36 = load %struct.op** %op_next108, align 8, !tbaa !0
  br label %return

if.then116:                                       ; preds = %if.else68
  %and118 = and i32 %2, 8192
  %tobool119 = icmp eq i32 %and118, 0
  br i1 %tobool119, label %if.end127, label %if.then120

if.then120:                                       ; preds = %if.then116
  %call121 = call i32 @Perl_mg_get(%struct.sv* %1) #8
  %37 = load i32* %sv_flags, align 4, !tbaa !3
  %and123 = and i32 %37, 524288
  %tobool124 = icmp eq i32 %and123, 0
  br i1 %tobool124, label %if.end127, label %wasref

if.end127:                                        ; preds = %if.then120, %if.then116
  %38 = phi i32 [ %37, %if.then120 ], [ %2, %if.then116 ]
  %and129 = and i32 %38, 118423552
  %tobool130 = icmp eq i32 %and129, 0
  br i1 %tobool130, label %if.then131, label %if.end191

if.then131:                                       ; preds = %if.end127
  %39 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags132 = getelementptr inbounds %struct.op* %39, i64 0, i32 6
  %40 = load i8* %op_flags132, align 1, !tbaa !1
  %and134 = and i8 %40, 16
  %tobool135 = icmp eq i8 %and134, 0
  br i1 %tobool135, label %lor.lhs.false, label %if.then140

lor.lhs.false:                                    ; preds = %if.then131
  %op_private136 = getelementptr inbounds %struct.op* %39, i64 0, i32 7
  %41 = load i8* %op_private136, align 1, !tbaa !1
  %and138 = and i8 %41, 2
  %tobool139 = icmp eq i8 %and138, 0
  br i1 %tobool139, label %if.end142, label %if.then140

if.then140:                                       ; preds = %lor.lhs.false, %if.then131
  %call141 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_usym, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #8
  br label %return

if.end142:                                        ; preds = %lor.lhs.false
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp143 = icmp eq %struct.sv* %43, null
  br i1 %cmp143, label %lor.lhs.false160, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %if.end142
  %44 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings146 = getelementptr inbounds %struct.cop* %44, i64 0, i32 14
  %45 = load %struct.sv** %cop_warnings146, align 8, !tbaa !0
  %cmp147 = icmp eq %struct.sv* %45, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp147, label %lor.lhs.false160, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %land.lhs.true145
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings150 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings150, align 8, !tbaa !0
  %cmp151 = icmp eq %struct.sv* %47, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp151, label %if.then168, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %land.lhs.true149
  %48 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings154 = getelementptr inbounds %struct.cop* %48, i64 0, i32 14
  %49 = load %struct.sv** %cop_warnings154, align 8, !tbaa !0
  %sv_any155 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %50 = load i8** %sv_any155, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %50 to i8**
  %51 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx156 = getelementptr inbounds i8* %51, i64 10
  %52 = load i8* %arrayidx156, align 1, !tbaa !1
  %and158 = and i8 %52, 4
  %tobool159 = icmp eq i8 %and158, 0
  br i1 %tobool159, label %lor.lhs.false160, label %if.then168

lor.lhs.false160:                                 ; preds = %lor.lhs.false153, %land.lhs.true145, %if.end142
  %53 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings161 = getelementptr inbounds %struct.cop* %53, i64 0, i32 14
  %54 = load %struct.sv** %cop_warnings161, align 8, !tbaa !0
  %cmp162 = icmp eq %struct.sv* %54, null
  br i1 %cmp162, label %land.lhs.true164, label %if.end169

land.lhs.true164:                                 ; preds = %lor.lhs.false160
  %55 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and166 = and i8 %55, 1
  %tobool167 = icmp eq i8 %and166, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %lor.lhs.false153, %land.lhs.true164, %land.lhs.true149
  call void @Perl_report_uninit() #8
  br label %if.end169

if.end169:                                        ; preds = %land.lhs.true164, %if.then168, %lor.lhs.false160
  %56 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags170 = getelementptr inbounds %struct.op* %56, i64 0, i32 6
  %57 = load i8* %op_flags170, align 1, !tbaa !1
  %conv171 = zext i8 %57 to i32
  %and172 = and i32 %conv171, 3
  %tobool173 = icmp eq i32 %and172, 0
  br i1 %tobool173, label %cond.false181, label %cond.true174

cond.true174:                                     ; preds = %if.end169
  %cmp178 = icmp eq i32 %and172, 3
  %cond180 = zext i1 %cmp178 to i32
  br label %cond.end183

cond.false181:                                    ; preds = %if.end169
  %call182 = call i32 @Perl_dowantarray() #8
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false181, %cond.true174
  %cond184 = phi i32 [ %cond180, %cond.true174 ], [ %call182, %cond.false181 ]
  %cmp185 = icmp eq i32 %cond184, 1
  br i1 %cmp185, label %if.then187, label %if.end189

if.then187:                                       ; preds = %cond.end183
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %58 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next188 = getelementptr inbounds %struct.op* %58, i64 0, i32 0
  %59 = load %struct.op** %op_next188, align 8, !tbaa !0
  br label %return

if.end189:                                        ; preds = %cond.end183
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %60 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next190 = getelementptr inbounds %struct.op* %60, i64 0, i32 0
  %61 = load %struct.op** %op_next190, align 8, !tbaa !0
  br label %return

if.end191:                                        ; preds = %if.end127
  %and193 = and i32 %38, 262144
  %cmp194 = icmp eq i32 %and193, 0
  br i1 %cmp194, label %cond.false200, label %cond.true196

cond.true196:                                     ; preds = %if.end191
  %sv_any197 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %62 = load i8** %sv_any197, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %62, i64 8
  %63 = bitcast i8* %xpv_cur to i64*
  %64 = load i64* %63, align 8, !tbaa !4
  store i64 %64, i64* %len, align 8, !tbaa !4
  %xpv_pv199 = bitcast i8* %62 to i8**
  %65 = load i8** %xpv_pv199, align 8, !tbaa !0
  br label %cond.end202

cond.false200:                                    ; preds = %if.end191
  %call201 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %len, i32 2) #8
  br label %cond.end202

cond.end202:                                      ; preds = %cond.false200, %cond.true196
  %cond203 = phi i8* [ %65, %cond.true196 ], [ %call201, %cond.false200 ]
  %66 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags204 = getelementptr inbounds %struct.op* %66, i64 0, i32 6
  %67 = load i8* %op_flags204, align 1, !tbaa !1
  %68 = and i8 %67, -96
  %69 = icmp eq i8 %68, -128
  br i1 %69, label %if.then213, label %if.else225

if.then213:                                       ; preds = %cond.end202
  %call214 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond203, i32 0, i32 10) #8
  %tobool215 = icmp eq %struct.gv* %call214, null
  br i1 %tobool215, label %land.lhs.true216, label %if.end236

land.lhs.true216:                                 ; preds = %if.then213
  %70 = load i64* %len, align 8, !tbaa !4
  %call217 = call signext i8 @Perl_is_gv_magical(i8* %cond203, i64 %70, i32 0) #8
  %tobool218 = icmp eq i8 %call217, 0
  br i1 %tobool218, label %if.then222, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %land.lhs.true216
  %call220 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond203, i32 1, i32 10) #8
  %tobool221 = icmp eq %struct.gv* %call220, null
  br i1 %tobool221, label %if.then222, label %if.end236

if.then222:                                       ; preds = %lor.lhs.false219, %land.lhs.true216
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %71 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next223 = getelementptr inbounds %struct.op* %71, i64 0, i32 0
  %72 = load %struct.op** %op_next223, align 8, !tbaa !0
  br label %return

if.else225:                                       ; preds = %cond.end202
  %op_private226 = getelementptr inbounds %struct.op* %66, i64 0, i32 7
  %73 = load i8* %op_private226, align 1, !tbaa !1
  %and228 = and i8 %73, 2
  %tobool229 = icmp eq i8 %and228, 0
  br i1 %tobool229, label %if.end232, label %if.then230

if.then230:                                       ; preds = %if.else225
  %call231 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_symref, i64 0, i64 0), i8* %cond203, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #8
  br label %return

if.end232:                                        ; preds = %if.else225
  %call233 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond203, i32 1, i32 10) #8
  br label %if.end236

if.else235:                                       ; preds = %if.else68
  %74 = bitcast %struct.sv* %1 to %struct.gv*
  br label %if.end236

if.end236:                                        ; preds = %lor.lhs.false219, %if.then213, %if.end232, %if.else235
  %gv.0 = phi %struct.gv* [ %call233, %if.end232 ], [ %call214, %if.then213 ], [ %call220, %lor.lhs.false219 ], [ %74, %if.else235 ]
  %sv_any237 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %75 = load %struct.xpvgv** %sv_any237, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %75, i64 0, i32 7
  %76 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %76, i64 0, i32 4
  %77 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool238 = icmp eq %struct.av* %77, null
  br i1 %tobool238, label %cond.false243, label %cond.end248

cond.false243:                                    ; preds = %if.end236
  %call244 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %gv.0) #8
  %sv_any245 = getelementptr inbounds %struct.gv* %call244, i64 0, i32 0
  %78 = load %struct.xpvgv** %sv_any245, align 8, !tbaa !0
  %xgv_gp246 = getelementptr inbounds %struct.xpvgv* %78, i64 0, i32 7
  %79 = load %struct.gp** %xgv_gp246, align 8, !tbaa !0
  %gp_av247 = getelementptr inbounds %struct.gp* %79, i64 0, i32 4
  %80 = load %struct.av** %gp_av247, align 8, !tbaa !0
  br label %cond.end248

cond.end248:                                      ; preds = %if.end236, %cond.false243
  %cond249 = phi %struct.av* [ %80, %cond.false243 ], [ %77, %if.end236 ]
  %81 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private250 = getelementptr inbounds %struct.op* %81, i64 0, i32 7
  %82 = load i8* %op_private250, align 1, !tbaa !1
  %tobool253 = icmp slt i8 %82, 0
  br i1 %tobool253, label %if.then254, label %if.end256

if.then254:                                       ; preds = %cond.end248
  %call255 = call %struct.av* @Perl_save_ary(%struct.gv* %gv.0) #8
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end256

if.end256:                                        ; preds = %if.then254, %cond.end248
  %83 = phi %struct.op* [ %.pre, %if.then254 ], [ %81, %cond.end248 ]
  %av.0 = phi %struct.av* [ %call255, %if.then254 ], [ %cond249, %cond.end248 ]
  %op_flags257 = getelementptr inbounds %struct.op* %83, i64 0, i32 6
  %84 = load i8* %op_flags257, align 1, !tbaa !1
  %and259 = and i8 %84, 16
  %tobool260 = icmp eq i8 %and259, 0
  br i1 %tobool260, label %if.else263, label %if.then261

if.then261:                                       ; preds = %if.end256
  %85 = bitcast %struct.av* %av.0 to %struct.sv*
  store %struct.sv* %85, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %86 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next262 = getelementptr inbounds %struct.op* %86, i64 0, i32 0
  %87 = load %struct.op** %op_next262, align 8, !tbaa !0
  br label %return

if.else263:                                       ; preds = %if.end256
  %op_private264 = getelementptr inbounds %struct.op* %83, i64 0, i32 7
  %88 = load i8* %op_private264, align 1, !tbaa !1
  %and266 = and i8 %88, 8
  %tobool267 = icmp eq i8 %and266, 0
  br i1 %tobool267, label %if.end295, label %land.lhs.true268

land.lhs.true268:                                 ; preds = %if.else263
  %call269 = call i32 @Perl_is_lvalue_sub() #8
  %tobool270 = icmp eq i32 %call269, 0
  br i1 %tobool270, label %if.end295, label %if.then271

if.then271:                                       ; preds = %land.lhs.true268
  %89 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags272 = getelementptr inbounds %struct.op* %89, i64 0, i32 6
  %90 = load i8* %op_flags272, align 1, !tbaa !1
  %conv273 = zext i8 %90 to i32
  %and274 = and i32 %conv273, 3
  %tobool275 = icmp eq i32 %and274, 0
  br i1 %tobool275, label %cond.false283, label %cond.true276

cond.true276:                                     ; preds = %if.then271
  %cmp280 = icmp eq i32 %and274, 3
  %cond282 = zext i1 %cmp280 to i32
  br label %cond.end285

cond.false283:                                    ; preds = %if.then271
  %call284 = call i32 @Perl_dowantarray() #8
  br label %cond.end285

cond.end285:                                      ; preds = %cond.false283, %cond.true276
  %cond286 = phi i32 [ %cond282, %cond.true276 ], [ %call284, %cond.false283 ]
  %cmp287 = icmp eq i32 %cond286, 0
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %cond.end285
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0)) #8
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %cond.end285
  %91 = bitcast %struct.av* %av.0 to %struct.sv*
  store %struct.sv* %91, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %92 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next291 = getelementptr inbounds %struct.op* %92, i64 0, i32 0
  %93 = load %struct.op** %op_next291, align 8, !tbaa !0
  br label %return

if.end295:                                        ; preds = %land.lhs.true268, %land.lhs.true85, %if.else80, %if.else54, %if.else263, %land.lhs.true59, %if.then64
  %av.1 = phi %struct.av* [ %14, %if.then64 ], [ %14, %land.lhs.true59 ], [ %14, %if.else54 ], [ %27, %if.else80 ], [ %av.0, %if.else263 ], [ %27, %land.lhs.true85 ], [ %av.0, %land.lhs.true268 ]
  %sp.2 = phi %struct.sv** [ %sp.1, %if.then64 ], [ %sp.1, %land.lhs.true59 ], [ %sp.1, %if.else54 ], [ %0, %if.else80 ], [ %0, %if.else263 ], [ %0, %land.lhs.true85 ], [ %0, %land.lhs.true268 ]
  %94 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags296 = getelementptr inbounds %struct.op* %94, i64 0, i32 6
  %95 = load i8* %op_flags296, align 1, !tbaa !1
  %conv297 = zext i8 %95 to i32
  %and298 = and i32 %conv297, 3
  %tobool299 = icmp eq i32 %and298, 0
  br i1 %tobool299, label %cond.false307, label %cond.true300

cond.true300:                                     ; preds = %if.end295
  %cmp304 = icmp eq i32 %and298, 3
  %cond306 = zext i1 %cmp304 to i32
  br label %cond.end309

cond.false307:                                    ; preds = %if.end295
  %call308 = call i32 @Perl_dowantarray() #8
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false307, %cond.true300
  %cond310 = phi i32 [ %cond306, %cond.true300 ], [ %call308, %cond.false307 ]
  %cmp311 = icmp eq i32 %cond310, 1
  br i1 %cmp311, label %if.then313, label %if.else359

if.then313:                                       ; preds = %cond.end309
  %96 = getelementptr inbounds %struct.av* %av.1, i64 0, i32 2
  %97 = load i32* %96, align 4, !tbaa !3
  %and315 = and i32 %97, 32768
  %tobool316 = icmp eq i32 %and315, 0
  br i1 %tobool316, label %cond.false320, label %cond.true317

cond.true317:                                     ; preds = %if.then313
  %98 = bitcast %struct.av* %av.1 to %struct.sv*
  %call318 = call i32 @Perl_mg_size(%struct.sv* %98) #8
  %conv319 = sext i32 %call318 to i64
  br label %cond.end322

cond.false320:                                    ; preds = %if.then313
  %sv_any321 = getelementptr inbounds %struct.av* %av.1, i64 0, i32 0
  %99 = load %struct.xpvav** %sv_any321, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %99, i64 0, i32 1
  %100 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false320, %cond.true317
  %cond323 = phi i64 [ %conv319, %cond.true317 ], [ %100, %cond.false320 ]
  %add = add nsw i64 %cond323, 1
  %conv324 = trunc i64 %add to i32
  %incdec.ptr325 = getelementptr inbounds %struct.sv** %sp.2, i64 -1
  %101 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %101 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr325 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %sext491 = shl i64 %add, 32
  %conv326 = ashr exact i64 %sext491, 32
  %cmp327 = icmp slt i64 %sub.ptr.div, %conv326
  br i1 %cmp327, label %if.then329, label %if.end331

if.then329:                                       ; preds = %cond.end322
  %call330 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr325, %struct.sv** %incdec.ptr325, i32 %conv324) #8
  br label %if.end331

if.end331:                                        ; preds = %cond.end322, %if.then329
  %sp.3 = phi %struct.sv** [ %call330, %if.then329 ], [ %incdec.ptr325, %cond.end322 ]
  %102 = load i32* %96, align 4, !tbaa !3
  %and333 = and i32 %102, 32768
  %tobool334 = icmp eq i32 %and333, 0
  br i1 %tobool334, label %if.else354, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end331
  %cmp336494 = icmp eq i32 %conv324, 0
  br i1 %cmp336494, label %if.end357, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %103 = trunc i64 %cond323 to i32
  %104 = add i32 %103, 1
  br label %for.body

for.body:                                         ; preds = %cond.end350, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end350 ]
  %105 = trunc i64 %indvars.iv to i32
  %call338 = call %struct.sv** @Perl_av_fetch(%struct.av* %av.1, i32 %105, i32 0) #8
  %tobool339 = icmp eq %struct.sv** %call338, null
  br i1 %tobool339, label %cond.end350, label %cond.true340

cond.true340:                                     ; preds = %for.body
  %106 = load %struct.sv** %call338, align 8, !tbaa !0
  %sv_flags341 = getelementptr inbounds %struct.sv* %106, i64 0, i32 2
  %107 = load i32* %sv_flags341, align 4, !tbaa !3
  %and342 = and i32 %107, 8192
  %tobool343 = icmp eq i32 %and342, 0
  br i1 %tobool343, label %cond.end350, label %cond.true344

cond.true344:                                     ; preds = %cond.true340
  %call345 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %106) #8
  br label %cond.end350

cond.end350:                                      ; preds = %cond.true340, %for.body, %cond.true344
  %cond351 = phi %struct.sv* [ %call345, %cond.true344 ], [ %106, %cond.true340 ], [ @PL_sv_undef, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx353 = getelementptr inbounds %struct.sv** %sp.3, i64 %indvars.iv.next
  store %struct.sv* %cond351, %struct.sv** %arrayidx353, align 8, !tbaa !0
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %104
  br i1 %exitcond, label %if.end357, label %for.body

if.else354:                                       ; preds = %if.end331
  %add.ptr = getelementptr inbounds %struct.sv** %sp.3, i64 1
  %108 = bitcast %struct.sv** %add.ptr to i8*
  %sv_any355 = getelementptr inbounds %struct.av* %av.1, i64 0, i32 0
  %109 = load %struct.xpvav** %sv_any355, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %109, i64 0, i32 0
  %110 = load i8** %xav_array, align 8, !tbaa !0
  %mul = ashr exact i64 %sext491, 29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %110, i64 %mul, i32 1, i1 false)
  br label %if.end357

if.end357:                                        ; preds = %for.cond.preheader, %cond.end350, %if.else354
  %add.ptr358 = getelementptr inbounds %struct.sv** %sp.3, i64 %conv326
  br label %if.end414

if.else359:                                       ; preds = %cond.end309
  %111 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags360 = getelementptr inbounds %struct.op* %111, i64 0, i32 6
  %112 = load i8* %op_flags360, align 1, !tbaa !1
  %conv361 = zext i8 %112 to i32
  %and362 = and i32 %conv361, 3
  switch i32 %and362, label %cond.false380 [
    i32 1, label %if.end414
    i32 2, label %if.then390
    i32 3, label %if.end414
  ]

cond.false380:                                    ; preds = %if.else359
  %call381 = call i32 @Perl_block_gimme() #8
  %phitmp = icmp eq i32 %call381, 0
  br i1 %phitmp, label %cond.false380.if.then390_crit_edge, label %if.end414

cond.false380.if.then390_crit_edge:               ; preds = %cond.false380
  %.pre496 = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.then390

if.then390:                                       ; preds = %cond.false380.if.then390_crit_edge, %if.else359
  %113 = phi %struct.op* [ %.pre496, %cond.false380.if.then390_crit_edge ], [ %111, %if.else359 ]
  %op_targ = getelementptr inbounds %struct.op* %113, i64 0, i32 3
  %114 = load i64* %op_targ, align 8, !tbaa !4
  %115 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx391 = getelementptr inbounds %struct.sv** %115, i64 %114
  %116 = load %struct.sv** %arrayidx391, align 8, !tbaa !0
  %117 = getelementptr inbounds %struct.av* %av.1, i64 0, i32 2
  %118 = load i32* %117, align 4, !tbaa !3
  %and394 = and i32 %118, 32768
  %tobool395 = icmp eq i32 %and394, 0
  br i1 %tobool395, label %cond.false399, label %cond.true396

cond.true396:                                     ; preds = %if.then390
  %119 = bitcast %struct.av* %av.1 to %struct.sv*
  %call397 = call i32 @Perl_mg_size(%struct.sv* %119) #8
  %conv398 = sext i32 %call397 to i64
  br label %cond.end402

cond.false399:                                    ; preds = %if.then390
  %sv_any400 = getelementptr inbounds %struct.av* %av.1, i64 0, i32 0
  %120 = load %struct.xpvav** %sv_any400, align 8, !tbaa !0
  %xav_fill401 = getelementptr inbounds %struct.xpvav* %120, i64 0, i32 1
  %121 = load i64* %xav_fill401, align 8, !tbaa !4
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false399, %cond.true396
  %cond403 = phi i64 [ %conv398, %cond.true396 ], [ %121, %cond.false399 ]
  %add404 = shl i64 %cond403, 32
  %sext = add i64 %add404, 4294967296
  %conv406 = ashr exact i64 %sext, 32
  call void @Perl_sv_setiv(%struct.sv* %116, i64 %conv406) #8
  %sv_flags407 = getelementptr inbounds %struct.sv* %116, i64 0, i32 2
  %122 = load i32* %sv_flags407, align 4, !tbaa !3
  %and408 = and i32 %122, 16384
  %tobool409 = icmp eq i32 %and408, 0
  br i1 %tobool409, label %if.end412, label %if.then410

if.then410:                                       ; preds = %cond.end402
  %call411 = call i32 @Perl_mg_set(%struct.sv* %116) #8
  br label %if.end412

if.end412:                                        ; preds = %cond.end402, %if.then410
  store %struct.sv* %116, %struct.sv** %sp.2, align 8, !tbaa !0
  br label %if.end414

if.end414:                                        ; preds = %cond.false380, %if.else359, %if.else359, %if.end412, %if.end357
  %sp.4 = phi %struct.sv** [ %add.ptr358, %if.end357 ], [ %sp.2, %if.end412 ], [ %sp.2, %if.else359 ], [ %sp.2, %if.else359 ], [ %sp.2, %cond.false380 ]
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %123 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next415 = getelementptr inbounds %struct.op* %123, i64 0, i32 0
  %124 = load %struct.op** %op_next415, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end414, %if.end290, %if.then261, %if.then230, %if.then222, %if.end189, %if.then187, %if.then140, %if.end107, %if.then78, %if.end52, %if.then30, %if.then25
  %retval.0 = phi %struct.op* [ %call26, %if.then25 ], [ %20, %if.then30 ], [ %23, %if.end52 ], [ %124, %if.end414 ], [ %31, %if.then78 ], [ %36, %if.end107 ], [ %call231, %if.then230 ], [ %87, %if.then261 ], [ %93, %if.end290 ], [ %72, %if.then222 ], [ %call141, %if.then140 ], [ %59, %if.then187 ], [ %61, %if.end189 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare i32 @Perl_is_lvalue_sub() #1

; Function Attrs: optsize
declare i32 @Perl_dowantarray() #1

; Function Attrs: optsize
declare void @Perl_report_uninit() #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_gv_magical(i8*, i64, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

; Function Attrs: optsize
declare %struct.av* @Perl_save_ary(%struct.gv*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare i32 @Perl_block_gimme() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_rv2hv() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
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
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %4, 524288
  %tobool = icmp eq i32 %and20, 0
  br i1 %tobool, label %if.else89, label %wasref

wasref:                                           ; preds = %if.then130, %cond.end18
  %5 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool21 = icmp eq i64 %5, 0
  br i1 %tobool21, label %if.end43, label %if.then22

if.then22:                                        ; preds = %wasref
  %6 = load %struct.sv** %0, align 8, !tbaa !0
  br label %am_again

am_again:                                         ; preds = %land.lhs.true35, %if.then22
  %sv.0 = phi %struct.sv* [ %1, %if.then22 ], [ %call26, %land.lhs.true35 ]
  %sp.0 = phi %struct.sv** [ %0, %if.then22 ], [ %8, %land.lhs.true35 ]
  %arg.0 = phi %struct.sv* [ %6, %if.then22 ], [ %call26, %land.lhs.true35 ]
  %sv_flags23 = getelementptr inbounds %struct.sv* %arg.0, i64 0, i32 2
  %7 = load i32* %sv_flags23, align 4, !tbaa !3
  %and24 = and i32 %7, 268435456
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %am_again
  %call26 = call %struct.sv* @Perl_amagic_call(%struct.sv* %arg.0, %struct.sv* @PL_sv_undef, i32 60, i32 9) #8
  %tobool27 = icmp eq %struct.sv* %call26, null
  br i1 %tobool27, label %if.end43, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  %8 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_flags29 = getelementptr inbounds %struct.sv* %call26, i64 0, i32 2
  %9 = load i32* %sv_flags29, align 4, !tbaa !3
  %and30 = and i32 %9, 524288
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end

if.then32:                                        ; preds = %if.then28
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then32
  %cmp33 = icmp eq %struct.sv* %call26, %arg.0
  br i1 %cmp33, label %if.end43, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %call26, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %10 to %struct.sv**
  %11 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any36 = getelementptr inbounds %struct.sv* %arg.0, i64 0, i32 0
  %12 = load i8** %sv_any36, align 8, !tbaa !0
  %xrv_rv37 = bitcast i8* %12 to %struct.sv**
  %13 = load %struct.sv** %xrv_rv37, align 8, !tbaa !0
  %cmp38 = icmp eq %struct.sv* %11, %13
  br i1 %cmp38, label %if.end43, label %am_again

if.end43:                                         ; preds = %land.lhs.true35, %if.end, %land.lhs.true, %am_again, %wasref
  %sv.1 = phi %struct.sv* [ %1, %wasref ], [ %call26, %land.lhs.true35 ], [ %arg.0, %if.end ], [ %sv.0, %land.lhs.true ], [ %sv.0, %am_again ]
  %sp.1 = phi %struct.sv** [ %0, %wasref ], [ %8, %land.lhs.true35 ], [ %8, %if.end ], [ %sp.0, %land.lhs.true ], [ %sp.0, %am_again ]
  %sv_any44 = getelementptr inbounds %struct.sv* %sv.1, i64 0, i32 0
  %14 = load i8** %sv_any44, align 8, !tbaa !0
  %xrv_rv45 = bitcast i8* %14 to %struct.sv**
  %15 = load %struct.sv** %xrv_rv45, align 8, !tbaa !0
  %16 = bitcast %struct.sv* %15 to %struct.hv*
  %17 = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %18 = load i32* %17, align 4, !tbaa !3
  %and47 = and i32 %18, 255
  %and47.off = add i32 %and47, -10
  %switch = icmp ult i32 %and47.off, 2
  br i1 %switch, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end43
  %call56 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0)) #8
  br label %return

if.end57:                                         ; preds = %if.end43
  %19 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags58 = getelementptr inbounds %struct.op* %19, i64 0, i32 6
  %20 = load i8* %op_flags58, align 1, !tbaa !1
  %and60 = and i8 %20, 16
  %tobool61 = icmp eq i8 %and60, 0
  br i1 %tobool61, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end57
  store %struct.sv* %15, %struct.sv** %sp.1, align 8, !tbaa !0
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %21, i64 0, i32 0
  %22 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.end57
  %op_private = getelementptr inbounds %struct.op* %19, i64 0, i32 7
  %23 = load i8* %op_private, align 1, !tbaa !1
  %and64 = and i8 %23, 8
  %tobool65 = icmp eq i8 %and64, 0
  br i1 %tobool65, label %if.else75, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.else
  %call67 = call i32 @Perl_is_lvalue_sub() #8
  %tobool68 = icmp eq i32 %call67, 0
  br i1 %tobool68, label %land.lhs.true66.if.else75_crit_edge, label %if.then69

land.lhs.true66.if.else75_crit_edge:              ; preds = %land.lhs.true66
  %.pre367 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags76.phi.trans.insert = getelementptr inbounds %struct.op* %.pre367, i64 0, i32 6
  %.pre368 = load i8* %op_flags76.phi.trans.insert, align 1, !tbaa !1
  br label %if.else75

if.then69:                                        ; preds = %land.lhs.true66
  %cmp70 = icmp eq i32 %cond19, 1
  br i1 %cmp70, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.then69
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.then72
  store %struct.sv* %15, %struct.sv** %sp.1, align 8, !tbaa !0
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next74 = getelementptr inbounds %struct.op* %24, i64 0, i32 0
  %25 = load %struct.op** %op_next74, align 8, !tbaa !0
  br label %return

if.else75:                                        ; preds = %land.lhs.true66.if.else75_crit_edge, %if.else
  %26 = phi i8 [ %.pre368, %land.lhs.true66.if.else75_crit_edge ], [ %20, %if.else ]
  %27 = phi %struct.op* [ %.pre367, %land.lhs.true66.if.else75_crit_edge ], [ %19, %if.else ]
  %and78 = and i8 %26, 32
  %tobool79 = icmp eq i8 %and78, 0
  br i1 %tobool79, label %if.end276, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.else75
  %op_private81 = getelementptr inbounds %struct.op* %27, i64 0, i32 7
  %28 = load i8* %op_private81, align 1, !tbaa !1
  %tobool84 = icmp slt i8 %28, 0
  br i1 %tobool84, label %if.then85, label %if.end276

if.then85:                                        ; preds = %land.lhs.true80
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_localize_ref, i64 0, i64 0)) #8
  br label %if.end276

if.else89:                                        ; preds = %cond.end18
  %and91 = and i32 %4, 255
  switch i32 %and91, label %if.then126 [
    i32 11, label %if.then98
    i32 10, label %if.then98
    i32 13, label %if.else231
  ]

if.then98:                                        ; preds = %if.else89, %if.else89
  %29 = bitcast %struct.sv* %1 to %struct.hv*
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags99 = getelementptr inbounds %struct.op* %30, i64 0, i32 6
  %31 = load i8* %op_flags99, align 1, !tbaa !1
  %and101 = and i8 %31, 16
  %tobool102 = icmp eq i8 %and101, 0
  br i1 %tobool102, label %if.else105, label %if.then103

if.then103:                                       ; preds = %if.then98
  store %struct.sv* %1, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %32 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next104 = getelementptr inbounds %struct.op* %32, i64 0, i32 0
  %33 = load %struct.op** %op_next104, align 8, !tbaa !0
  br label %return

if.else105:                                       ; preds = %if.then98
  %op_private106 = getelementptr inbounds %struct.op* %30, i64 0, i32 7
  %34 = load i8* %op_private106, align 1, !tbaa !1
  %and108 = and i8 %34, 8
  %tobool109 = icmp eq i8 %and108, 0
  br i1 %tobool109, label %if.end276, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.else105
  %call111 = call i32 @Perl_is_lvalue_sub() #8
  %tobool112 = icmp eq i32 %call111, 0
  br i1 %tobool112, label %if.end276, label %if.then113

if.then113:                                       ; preds = %land.lhs.true110
  %cmp114 = icmp eq i32 %cond19, 1
  br i1 %cmp114, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.then113
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #8
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.then116
  store %struct.sv* %1, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %35 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next118 = getelementptr inbounds %struct.op* %35, i64 0, i32 0
  %36 = load %struct.op** %op_next118, align 8, !tbaa !0
  br label %return

if.then126:                                       ; preds = %if.else89
  %and128 = and i32 %4, 8192
  %tobool129 = icmp eq i32 %and128, 0
  br i1 %tobool129, label %if.end137, label %if.then130

if.then130:                                       ; preds = %if.then126
  %call131 = call i32 @Perl_mg_get(%struct.sv* %1) #8
  %37 = load i32* %sv_flags, align 4, !tbaa !3
  %and133 = and i32 %37, 524288
  %tobool134 = icmp eq i32 %and133, 0
  br i1 %tobool134, label %if.end137, label %wasref

if.end137:                                        ; preds = %if.then130, %if.then126
  %38 = phi i32 [ %37, %if.then130 ], [ %4, %if.then126 ]
  %and139 = and i32 %38, 118423552
  %tobool140 = icmp eq i32 %and139, 0
  br i1 %tobool140, label %if.then141, label %if.end187

if.then141:                                       ; preds = %if.end137
  %39 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags142 = getelementptr inbounds %struct.op* %39, i64 0, i32 6
  %40 = load i8* %op_flags142, align 1, !tbaa !1
  %and144 = and i8 %40, 16
  %tobool145 = icmp eq i8 %and144, 0
  br i1 %tobool145, label %lor.lhs.false146, label %if.then151

lor.lhs.false146:                                 ; preds = %if.then141
  %op_private147 = getelementptr inbounds %struct.op* %39, i64 0, i32 7
  %41 = load i8* %op_private147, align 1, !tbaa !1
  %and149 = and i8 %41, 2
  %tobool150 = icmp eq i8 %and149, 0
  br i1 %tobool150, label %if.end153, label %if.then151

if.then151:                                       ; preds = %lor.lhs.false146, %if.then141
  %call152 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_usym, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #8
  br label %return

if.end153:                                        ; preds = %lor.lhs.false146
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp154 = icmp eq %struct.sv* %43, null
  br i1 %cmp154, label %lor.lhs.false171, label %land.lhs.true156

land.lhs.true156:                                 ; preds = %if.end153
  %44 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings157 = getelementptr inbounds %struct.cop* %44, i64 0, i32 14
  %45 = load %struct.sv** %cop_warnings157, align 8, !tbaa !0
  %cmp158 = icmp eq %struct.sv* %45, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp158, label %lor.lhs.false171, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %land.lhs.true156
  %46 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings161 = getelementptr inbounds %struct.cop* %46, i64 0, i32 14
  %47 = load %struct.sv** %cop_warnings161, align 8, !tbaa !0
  %cmp162 = icmp eq %struct.sv* %47, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp162, label %if.then179, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %land.lhs.true160
  %48 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings165 = getelementptr inbounds %struct.cop* %48, i64 0, i32 14
  %49 = load %struct.sv** %cop_warnings165, align 8, !tbaa !0
  %sv_any166 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %50 = load i8** %sv_any166, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %50 to i8**
  %51 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds i8* %51, i64 10
  %52 = load i8* %arrayidx167, align 1, !tbaa !1
  %and169 = and i8 %52, 4
  %tobool170 = icmp eq i8 %and169, 0
  br i1 %tobool170, label %lor.lhs.false171, label %if.then179

lor.lhs.false171:                                 ; preds = %lor.lhs.false164, %land.lhs.true156, %if.end153
  %53 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings172 = getelementptr inbounds %struct.cop* %53, i64 0, i32 14
  %54 = load %struct.sv** %cop_warnings172, align 8, !tbaa !0
  %cmp173 = icmp eq %struct.sv* %54, null
  br i1 %cmp173, label %land.lhs.true175, label %if.end180

land.lhs.true175:                                 ; preds = %lor.lhs.false171
  %55 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and177 = and i8 %55, 1
  %tobool178 = icmp eq i8 %and177, 0
  br i1 %tobool178, label %if.end180, label %if.then179

if.then179:                                       ; preds = %lor.lhs.false164, %land.lhs.true175, %land.lhs.true160
  call void @Perl_report_uninit() #8
  br label %if.end180

if.end180:                                        ; preds = %land.lhs.true175, %if.then179, %lor.lhs.false171
  %cmp181 = icmp eq i32 %cond19, 1
  br i1 %cmp181, label %if.then183, label %if.end185

if.then183:                                       ; preds = %if.end180
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %56 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next184 = getelementptr inbounds %struct.op* %56, i64 0, i32 0
  %57 = load %struct.op** %op_next184, align 8, !tbaa !0
  br label %return

if.end185:                                        ; preds = %if.end180
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %58 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next186 = getelementptr inbounds %struct.op* %58, i64 0, i32 0
  %59 = load %struct.op** %op_next186, align 8, !tbaa !0
  br label %return

if.end187:                                        ; preds = %if.end137
  %and189 = and i32 %38, 262144
  %cmp190 = icmp eq i32 %and189, 0
  br i1 %cmp190, label %cond.false196, label %cond.true192

cond.true192:                                     ; preds = %if.end187
  %sv_any193 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %60 = load i8** %sv_any193, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %60, i64 8
  %61 = bitcast i8* %xpv_cur to i64*
  %62 = load i64* %61, align 8, !tbaa !4
  store i64 %62, i64* %len, align 8, !tbaa !4
  %xpv_pv195 = bitcast i8* %60 to i8**
  %63 = load i8** %xpv_pv195, align 8, !tbaa !0
  br label %cond.end198

cond.false196:                                    ; preds = %if.end187
  %call197 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %len, i32 2) #8
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false196, %cond.true192
  %cond199 = phi i8* [ %63, %cond.true192 ], [ %call197, %cond.false196 ]
  %64 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags200 = getelementptr inbounds %struct.op* %64, i64 0, i32 6
  %65 = load i8* %op_flags200, align 1, !tbaa !1
  %66 = and i8 %65, -96
  %67 = icmp eq i8 %66, -128
  br i1 %67, label %if.then209, label %if.else221

if.then209:                                       ; preds = %cond.end198
  %call210 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond199, i32 0, i32 11) #8
  %tobool211 = icmp eq %struct.gv* %call210, null
  br i1 %tobool211, label %land.lhs.true212, label %if.end232

land.lhs.true212:                                 ; preds = %if.then209
  %68 = load i64* %len, align 8, !tbaa !4
  %call213 = call signext i8 @Perl_is_gv_magical(i8* %cond199, i64 %68, i32 0) #8
  %tobool214 = icmp eq i8 %call213, 0
  br i1 %tobool214, label %if.then218, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %land.lhs.true212
  %call216 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond199, i32 1, i32 11) #8
  %tobool217 = icmp eq %struct.gv* %call216, null
  br i1 %tobool217, label %if.then218, label %if.end232

if.then218:                                       ; preds = %lor.lhs.false215, %land.lhs.true212
  store %struct.sv* @PL_sv_undef, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %69 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next219 = getelementptr inbounds %struct.op* %69, i64 0, i32 0
  %70 = load %struct.op** %op_next219, align 8, !tbaa !0
  br label %return

if.else221:                                       ; preds = %cond.end198
  %op_private222 = getelementptr inbounds %struct.op* %64, i64 0, i32 7
  %71 = load i8* %op_private222, align 1, !tbaa !1
  %and224 = and i8 %71, 2
  %tobool225 = icmp eq i8 %and224, 0
  br i1 %tobool225, label %if.end228, label %if.then226

if.then226:                                       ; preds = %if.else221
  %call227 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_symref, i64 0, i64 0), i8* %cond199, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #8
  br label %return

if.end228:                                        ; preds = %if.else221
  %call229 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond199, i32 1, i32 11) #8
  br label %if.end232

if.else231:                                       ; preds = %if.else89
  %72 = bitcast %struct.sv* %1 to %struct.gv*
  br label %if.end232

if.end232:                                        ; preds = %lor.lhs.false215, %if.then209, %if.end228, %if.else231
  %gv.0 = phi %struct.gv* [ %call229, %if.end228 ], [ %call210, %if.then209 ], [ %call216, %lor.lhs.false215 ], [ %72, %if.else231 ]
  %sv_any233 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %73 = load %struct.xpvgv** %sv_any233, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %73, i64 0, i32 7
  %74 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %74, i64 0, i32 5
  %75 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool234 = icmp eq %struct.hv* %75, null
  br i1 %tobool234, label %cond.false239, label %cond.end244

cond.false239:                                    ; preds = %if.end232
  %call240 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %gv.0) #8
  %sv_any241 = getelementptr inbounds %struct.gv* %call240, i64 0, i32 0
  %76 = load %struct.xpvgv** %sv_any241, align 8, !tbaa !0
  %xgv_gp242 = getelementptr inbounds %struct.xpvgv* %76, i64 0, i32 7
  %77 = load %struct.gp** %xgv_gp242, align 8, !tbaa !0
  %gp_hv243 = getelementptr inbounds %struct.gp* %77, i64 0, i32 5
  %78 = load %struct.hv** %gp_hv243, align 8, !tbaa !0
  br label %cond.end244

cond.end244:                                      ; preds = %if.end232, %cond.false239
  %cond245 = phi %struct.hv* [ %78, %cond.false239 ], [ %75, %if.end232 ]
  %79 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private246 = getelementptr inbounds %struct.op* %79, i64 0, i32 7
  %80 = load i8* %op_private246, align 1, !tbaa !1
  %tobool249 = icmp slt i8 %80, 0
  br i1 %tobool249, label %if.then250, label %if.end252

if.then250:                                       ; preds = %cond.end244
  %call251 = call %struct.hv* @Perl_save_hash(%struct.gv* %gv.0) #8
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %cond.end244
  %81 = phi %struct.op* [ %.pre, %if.then250 ], [ %79, %cond.end244 ]
  %hv.0 = phi %struct.hv* [ %call251, %if.then250 ], [ %cond245, %cond.end244 ]
  %op_flags253 = getelementptr inbounds %struct.op* %81, i64 0, i32 6
  %82 = load i8* %op_flags253, align 1, !tbaa !1
  %and255 = and i8 %82, 16
  %tobool256 = icmp eq i8 %and255, 0
  br i1 %tobool256, label %if.else259, label %if.then257

if.then257:                                       ; preds = %if.end252
  %83 = bitcast %struct.hv* %hv.0 to %struct.sv*
  store %struct.sv* %83, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %84 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next258 = getelementptr inbounds %struct.op* %84, i64 0, i32 0
  %85 = load %struct.op** %op_next258, align 8, !tbaa !0
  br label %return

if.else259:                                       ; preds = %if.end252
  %op_private260 = getelementptr inbounds %struct.op* %81, i64 0, i32 7
  %86 = load i8* %op_private260, align 1, !tbaa !1
  %and262 = and i8 %86, 8
  %tobool263 = icmp eq i8 %and262, 0
  br i1 %tobool263, label %if.end276, label %land.lhs.true264

land.lhs.true264:                                 ; preds = %if.else259
  %call265 = call i32 @Perl_is_lvalue_sub() #8
  %tobool266 = icmp eq i32 %call265, 0
  br i1 %tobool266, label %if.end276, label %if.then267

if.then267:                                       ; preds = %land.lhs.true264
  %cmp268 = icmp eq i32 %cond19, 1
  br i1 %cmp268, label %if.end271, label %if.then270

if.then270:                                       ; preds = %if.then267
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #8
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %if.then270
  %87 = bitcast %struct.hv* %hv.0 to %struct.sv*
  store %struct.sv* %87, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %88 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next272 = getelementptr inbounds %struct.op* %88, i64 0, i32 0
  %89 = load %struct.op** %op_next272, align 8, !tbaa !0
  br label %return

if.end276:                                        ; preds = %land.lhs.true110, %if.else105, %if.else75, %land.lhs.true264, %if.else259, %land.lhs.true80, %if.then85
  %hv.1 = phi %struct.hv* [ %16, %if.then85 ], [ %16, %land.lhs.true80 ], [ %16, %if.else75 ], [ %29, %land.lhs.true110 ], [ %29, %if.else105 ], [ %hv.0, %land.lhs.true264 ], [ %hv.0, %if.else259 ]
  %sp.2 = phi %struct.sv** [ %sp.1, %if.then85 ], [ %sp.1, %land.lhs.true80 ], [ %sp.1, %if.else75 ], [ %0, %land.lhs.true110 ], [ %0, %if.else105 ], [ %0, %land.lhs.true264 ], [ %0, %if.else259 ]
  switch i32 %cond19, label %if.end301 [
    i32 1, label %if.then279
    i32 0, label %if.then284
  ]

if.then279:                                       ; preds = %if.end276
  %90 = bitcast %struct.hv* %hv.1 to %struct.sv*
  %91 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.sv* %90, %struct.sv** %91, align 8, !tbaa !0
  %call280 = call %struct.op* @Perl_do_kv() #8
  br label %return

if.then284:                                       ; preds = %if.end276
  %sv_flags286 = getelementptr inbounds %struct.hv* %hv.1, i64 0, i32 2
  %92 = load i32* %sv_flags286, align 4, !tbaa !3
  %and287 = and i32 %92, 255
  %cmp288 = icmp eq i32 %and287, 10
  br i1 %cmp288, label %if.then290, label %if.end292

if.then290:                                       ; preds = %if.then284
  %93 = bitcast %struct.hv* %hv.1 to %struct.av*
  %call291 = call %struct.hv* @Perl_avhv_keys(%struct.av* %93) #8
  br label %if.end292

if.end292:                                        ; preds = %if.then290, %if.then284
  %hv.2 = phi %struct.hv* [ %call291, %if.then290 ], [ %hv.1, %if.then284 ]
  %call293 = call %struct.sv* @Perl_hv_scalar(%struct.hv* %hv.2) #8
  %sv_flags294 = getelementptr inbounds %struct.sv* %call293, i64 0, i32 2
  %94 = load i32* %sv_flags294, align 4, !tbaa !3
  %and295 = and i32 %94, 16384
  %tobool296 = icmp eq i32 %and295, 0
  br i1 %tobool296, label %if.end299, label %if.then297

if.then297:                                       ; preds = %if.end292
  %call298 = call i32 @Perl_mg_set(%struct.sv* %call293) #8
  br label %if.end299

if.end299:                                        ; preds = %if.end292, %if.then297
  store %struct.sv* %call293, %struct.sv** %sp.2, align 8, !tbaa !0
  br label %if.end301

if.end301:                                        ; preds = %if.end276, %if.end299
  store %struct.sv** %sp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %95 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next302 = getelementptr inbounds %struct.op* %95, i64 0, i32 0
  %96 = load %struct.op** %op_next302, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end301, %if.then279, %if.end271, %if.then257, %if.then226, %if.then218, %if.end185, %if.then183, %if.then151, %if.end117, %if.then103, %if.end73, %if.then62, %if.then55
  %retval.0 = phi %struct.op* [ %call56, %if.then55 ], [ %22, %if.then62 ], [ %25, %if.end73 ], [ %call280, %if.then279 ], [ %96, %if.end301 ], [ %33, %if.then103 ], [ %36, %if.end117 ], [ %call227, %if.then226 ], [ %85, %if.then257 ], [ %89, %if.end271 ], [ %70, %if.then218 ], [ %call152, %if.then151 ], [ %57, %if.then183 ], [ %59, %if.end185 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_save_hash(%struct.gv*) #1

; Function Attrs: optsize
declare %struct.op* @Perl_do_kv() #1

; Function Attrs: optsize
declare %struct.hv* @Perl_avhv_keys(%struct.av*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_scalar(%struct.hv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_aassign() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %incdec.ptr1 = getelementptr inbounds i32* %2, i64 -2
  store i32* %incdec.ptr1, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %4 = load i32* %incdec.ptr, align 4, !tbaa !3
  %idx.ext2 = sext i32 %4 to i64
  %add.ptr3.sum = add i64 %idx.ext2, 1
  %add.ptr4 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr3.sum
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr5 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  store i32 256, i32* @PL_delaymagic, align 4, !tbaa !3
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %5, i64 0, i32 6
  %6 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.end23, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp10 = icmp eq i32 %and, 2
  br i1 %cmp10, label %cond.end23, label %cond.false13

cond.false13:                                     ; preds = %cond.false
  %cmp17 = icmp eq i32 %and, 3
  br i1 %cmp17, label %cond.end23, label %cond.false20

cond.false20:                                     ; preds = %cond.false13
  %call = tail call i32 @Perl_block_gimme() #8
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false, %cond.false13, %cond.false20, %entry
  %7 = phi %struct.op* [ %5, %entry ], [ %5, %cond.false ], [ %.pre, %cond.false20 ], [ %5, %cond.false13 ]
  %cond24 = phi i32 [ 128, %entry ], [ 0, %cond.false ], [ %call, %cond.false20 ], [ 1, %cond.false13 ]
  %op_private = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and26 = and i8 %8, 64
  %tobool = icmp eq i8 %and26, 0
  br i1 %tobool, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %for.cond.preheader, %for.inc, %cond.end23
  %cmp47398 = icmp ugt %struct.sv** %add.ptr5, %0
  br i1 %cmp47398, label %while.end168, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub.ptr.lhs.cast65 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.sv** %add.ptr5 to i64
  %cmp110 = icmp eq i32 %cond24, 128
  br label %while.body

if.then:                                          ; preds = %cond.end23
  %9 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %conv27 = sext i32 %9 to i64
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %add = add nsw i64 %sub.ptr.div, 1
  %add28 = add nsw i64 %conv27, %add
  %10 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %conv29 = sext i32 %10 to i64
  %cmp30 = icmp slt i64 %add28, %conv29
  br i1 %cmp30, label %for.cond.preheader, label %if.then32

if.then32:                                        ; preds = %if.then
  %conv38 = trunc i64 %add to i32
  tail call void @Perl_tmps_grow(i32 %conv38) #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %if.then32
  %cmp39410 = icmp sgt i64 %add.ptr3.sum, %idx.ext
  br i1 %cmp39410, label %while.cond.preheader, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %relem.0411 = phi %struct.sv** [ %incdec.ptr45, %for.inc ], [ %add.ptr4, %for.cond.preheader ]
  %11 = load %struct.sv** %relem.0411, align 8, !tbaa !0
  %tobool41 = icmp eq %struct.sv* %11, null
  br i1 %tobool41, label %for.inc, label %if.then42

if.then42:                                        ; preds = %for.body
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %call43 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %11) #8
  store %struct.sv* %call43, %struct.sv** %relem.0411, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then42
  %incdec.ptr45 = getelementptr inbounds %struct.sv** %relem.0411, i64 1
  %cmp39 = icmp ugt %struct.sv** %incdec.ptr45, %add.ptr
  br i1 %cmp39, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %relem.1404 = phi %struct.sv** [ %add.ptr4, %while.body.lr.ph ], [ %relem.1.be, %while.cond.backedge ]
  %firsthashrelem.0403 = phi %struct.sv** [ null, %while.body.lr.ph ], [ %firsthashrelem.0.be, %while.cond.backedge ]
  %duplicates.0402 = phi i32 [ 0, %while.body.lr.ph ], [ %duplicates.0.be, %while.cond.backedge ]
  %hash.0401 = phi %struct.hv* [ null, %while.body.lr.ph ], [ %hash.0.be, %while.cond.backedge ]
  %lelem.0400 = phi %struct.sv** [ %add.ptr5, %while.body.lr.ph ], [ %incdec.ptr49, %while.cond.backedge ]
  %ary.0399 = phi %struct.av* [ null, %while.body.lr.ph ], [ %ary.0.be, %while.cond.backedge ]
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds %struct.sv** %lelem.0400, i64 1
  %12 = load %struct.sv** %lelem.0400, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and50 = and i32 %13, 255
  switch i32 %and50, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb90
  ]

sw.bb:                                            ; preds = %while.body
  %14 = bitcast %struct.sv* %12 to %struct.av*
  %and52 = and i32 %13, 57344
  %cmp53 = icmp eq i32 %and52, 0
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private55 = getelementptr inbounds %struct.op* %15, i64 0, i32 7
  %16 = load i8* %op_private55, align 1, !tbaa !1
  %and57 = and i8 %16, 32
  %tobool58 = icmp eq i8 %and57, 0
  br i1 %tobool58, label %normal_array, label %if.then59

if.then59:                                        ; preds = %sw.bb
  %17 = getelementptr inbounds %struct.op* %15, i64 1, i32 1
  %18 = load %struct.op** %17, align 8, !tbaa !0
  %19 = getelementptr inbounds %struct.op* %18, i64 1, i32 0
  %sub.ptr.lhs.cast.i = ptrtoint %struct.sv** %incdec.ptr49 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div53.i = lshr exact i64 %sub.ptr.sub.i, 3
  %conv.i = trunc i64 %sub.ptr.div53.i to i32
  %leftop.056.i = load %struct.op** %19, align 8
  %cmp57.i = icmp sgt i32 %conv.i, 0
  br i1 %cmp57.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %if.then59, %for.body.i
  %leftop.059.i = phi %struct.op* [ %leftop.0.i, %for.body.i ], [ %leftop.056.i, %if.then59 ]
  %i.058.i = phi i32 [ %dec.i, %for.body.i ], [ %conv.i, %if.then59 ]
  %op_sibling.i = getelementptr inbounds %struct.op* %leftop.059.i, i64 0, i32 1
  %dec.i = add nsw i32 %i.058.i, -1
  %leftop.0.i = load %struct.op** %op_sibling.i, align 8
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %if.then59
  %leftop.0.lcssa.i = phi %struct.op* [ %leftop.056.i, %if.then59 ], [ %leftop.0.i, %for.body.i ]
  %op_type.i = getelementptr inbounds %struct.op* %leftop.0.lcssa.i, i64 0, i32 4
  %20 = load i16* %op_type.i, align 2, !tbaa !6
  %cmp3.i = icmp eq i16 %20, 134
  br i1 %cmp3.i, label %if.end.i, label %normal_array

if.end.i:                                         ; preds = %for.end.i
  %call.i = tail call i32 @Perl_av_len(%struct.av* %14) #8
  %cmp5.i = icmp sgt i32 %call.i, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  tail call void @Perl_av_fill(%struct.av* %14, i32 0) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i
  %21 = icmp ult %struct.sv** %relem.1404, %add.ptr
  br i1 %21, label %while.body.i, label %S_do_maybe_phash.exit

while.body.i:                                     ; preds = %if.end8.i, %if.end29.i
  %relem.addr.055.i = phi %struct.sv** [ %add.ptr.i, %if.end29.i ], [ %relem.1404, %if.end8.i ]
  %call14.i = tail call %struct.sv* @Perl_sv_newmortal() #8
  %arrayidx.i = getelementptr inbounds %struct.sv** %relem.addr.055.i, i64 1
  %22 = load %struct.sv** %arrayidx.i, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %call14.i, %struct.sv* %22, i32 2) #8
  store %struct.sv* %call14.i, %struct.sv** %arrayidx.i, align 8, !tbaa !0
  %23 = load %struct.sv** %relem.addr.055.i, align 8, !tbaa !0
  %call17.i = tail call %struct.sv** @Perl_avhv_store_ent(%struct.av* %14, %struct.sv* %23, %struct.sv* %call14.i, i32 0) #8
  %tobool.i = icmp eq %struct.sv** %call17.i, null
  br i1 %tobool.i, label %if.end21.i, label %if.then18.i

if.then18.i:                                      ; preds = %while.body.i
  store %struct.sv* %call14.i, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool19.i = icmp eq %struct.sv* %call14.i, null
  br i1 %tobool19.i, label %if.end21.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then18.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv* %call14.i, i64 0, i32 1
  %24 = load i32* %sv_refcnt.i, align 4, !tbaa !3
  %inc.i = add i32 %24, 1
  store i32 %inc.i, i32* %sv_refcnt.i, align 4, !tbaa !3
  br label %if.end21.i

if.end21.i:                                       ; preds = %land.rhs.i, %if.then18.i, %while.body.i
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %and.i = and i32 %25, 57344
  %cmp22.i = icmp eq i32 %and.i, 0
  br i1 %cmp22.i, label %if.end29.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %sv_flags24.i = getelementptr inbounds %struct.sv* %call14.i, i64 0, i32 2
  %26 = load i32* %sv_flags24.i, align 4, !tbaa !3
  %and25.i = and i32 %26, 16384
  %tobool26.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  %call28.i = tail call i32 @Perl_mg_set(%struct.sv* %call14.i) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %land.lhs.true.i, %if.end21.i
  %add.ptr.i = getelementptr inbounds %struct.sv** %relem.addr.055.i, i64 2
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %cmp12.i = icmp ult %struct.sv** %add.ptr.i, %add.ptr
  br i1 %cmp12.i, label %while.body.i, label %S_do_maybe_phash.exit

S_do_maybe_phash.exit:                            ; preds = %if.end29.i, %if.end8.i
  %relem.addr.1.i = phi %struct.sv** [ %relem.1404, %if.end8.i ], [ %add.ptr.i, %if.end29.i ]
  %cmp31.i = icmp eq %struct.sv** %relem.addr.1.i, %add.ptr
  br i1 %cmp31.i, label %sw.bb62, label %while.cond.backedge

sw.bb62:                                          ; preds = %S_do_maybe_phash.exit
  %27 = bitcast %struct.sv* %12 to %struct.hv*
  tail call fastcc void @S_do_oddball(%struct.hv* %27, %struct.sv** %relem.1404, %struct.sv** %add.ptr4) #9
  br label %while.cond.backedge

normal_array:                                     ; preds = %for.end.i, %sw.bb
  tail call void @Perl_av_clear(%struct.av* %14) #8
  %sub.ptr.rhs.cast66 = ptrtoint %struct.sv** %relem.1404 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %sub.ptr.div68386 = lshr exact i64 %sub.ptr.sub67, 3
  %conv69 = trunc i64 %sub.ptr.div68386 to i32
  tail call void @Perl_av_extend(%struct.av* %14, i32 %conv69) #8
  %cmp71394 = icmp ugt %struct.sv** %relem.1404, %add.ptr
  br i1 %cmp71394, label %while.cond.backedge, label %while.body73

while.body73:                                     ; preds = %normal_array, %if.end89
  %relem.2396 = phi %struct.sv** [ %incdec.ptr75, %if.end89 ], [ %relem.1404, %normal_array ]
  %i.0395 = phi i32 [ %inc, %if.end89 ], [ 0, %normal_array ]
  %28 = load %struct.sv** %relem.2396, align 8, !tbaa !0
  %call74 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %28) #8
  %incdec.ptr75 = getelementptr inbounds %struct.sv** %relem.2396, i64 1
  store %struct.sv* %call74, %struct.sv** %relem.2396, align 8, !tbaa !0
  %inc = add nsw i32 %i.0395, 1
  %call76 = tail call %struct.sv** @Perl_av_store(%struct.av* %14, i32 %i.0395, %struct.sv* %call74) #8
  br i1 %cmp53, label %if.end89, label %if.then78

if.then78:                                        ; preds = %while.body73
  %sv_flags79 = getelementptr inbounds %struct.sv* %call74, i64 0, i32 2
  %29 = load i32* %sv_flags79, align 4, !tbaa !3
  %and80 = and i32 %29, 16384
  %tobool81 = icmp eq i32 %and80, 0
  br i1 %tobool81, label %if.end84, label %if.then82

if.then82:                                        ; preds = %if.then78
  %call83 = tail call i32 @Perl_mg_set(%struct.sv* %call74) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %if.then82
  %tobool85 = icmp eq %struct.sv** %call76, null
  br i1 %tobool85, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end84
  %call87 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call74) #8
  br label %if.end89

if.end89:                                         ; preds = %if.end84, %while.body73, %if.then86
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %cmp71 = icmp ugt %struct.sv** %incdec.ptr75, %add.ptr
  br i1 %cmp71, label %while.cond.backedge, label %while.body73

sw.bb90:                                          ; preds = %while.body
  %30 = bitcast %struct.sv* %12 to %struct.hv*
  %and92 = and i32 %13, 57344
  %cmp93 = icmp eq i32 %and92, 0
  tail call void @Perl_hv_clear(%struct.hv* %30) #8
  %cmp96390 = icmp ult %struct.sv** %relem.1404, %add.ptr
  br i1 %cmp96390, label %while.body98, label %while.end132

while.body98:                                     ; preds = %sw.bb90, %if.end131
  %relem.3392 = phi %struct.sv** [ %incdec.ptr109, %if.end131 ], [ %relem.1404, %sw.bb90 ]
  %duplicates.1391 = phi i32 [ %duplicates.2, %if.end131 ], [ %duplicates.0402, %sw.bb90 ]
  %31 = load %struct.sv** %relem.3392, align 8, !tbaa !0
  %tobool100 = icmp eq %struct.sv* %31, null
  %PL_sv_no. = select i1 %tobool100, %struct.sv* @PL_sv_no, %struct.sv* %31
  %relem.4 = getelementptr inbounds %struct.sv** %relem.3392, i64 1
  %call105 = tail call %struct.sv* @Perl_newSV(i64 0) #8
  %32 = load %struct.sv** %relem.4, align 8, !tbaa !0
  %tobool106 = icmp eq %struct.sv* %32, null
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %while.body98
  tail call void @Perl_sv_setsv_flags(%struct.sv* %call105, %struct.sv* %32, i32 2) #8
  br label %if.end108

if.end108:                                        ; preds = %while.body98, %if.then107
  %incdec.ptr109 = getelementptr inbounds %struct.sv** %relem.3392, i64 2
  store %struct.sv* %call105, %struct.sv** %relem.4, align 8, !tbaa !0
  br i1 %cmp110, label %if.end117, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end108
  %call112 = tail call signext i8 @Perl_hv_exists_ent(%struct.hv* %30, %struct.sv* %PL_sv_no., i32 0) #8
  %tobool114 = icmp eq i8 %call112, 0
  %add116 = add nsw i32 %duplicates.1391, 2
  %duplicates.1.add116 = select i1 %tobool114, i32 %duplicates.1391, i32 %add116
  br label %if.end117

if.end117:                                        ; preds = %land.lhs.true, %if.end108
  %duplicates.2 = phi i32 [ %duplicates.1391, %if.end108 ], [ %duplicates.1.add116, %land.lhs.true ]
  %call118 = tail call %struct.he* @Perl_hv_store_ent(%struct.hv* %30, %struct.sv* %PL_sv_no., %struct.sv* %call105, i32 0) #8
  br i1 %cmp93, label %if.end131, label %if.then120

if.then120:                                       ; preds = %if.end117
  %sv_flags121 = getelementptr inbounds %struct.sv* %call105, i64 0, i32 2
  %33 = load i32* %sv_flags121, align 4, !tbaa !3
  %and122 = and i32 %33, 16384
  %tobool123 = icmp eq i32 %and122, 0
  br i1 %tobool123, label %if.end126, label %if.then124

if.then124:                                       ; preds = %if.then120
  %call125 = tail call i32 @Perl_mg_set(%struct.sv* %call105) #8
  br label %if.end126

if.end126:                                        ; preds = %if.then120, %if.then124
  %tobool127 = icmp eq %struct.he* %call118, null
  br i1 %tobool127, label %if.then128, label %if.end131

if.then128:                                       ; preds = %if.end126
  %call129 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call105) #8
  br label %if.end131

if.end131:                                        ; preds = %if.end126, %if.end117, %if.then128
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %cmp96 = icmp ult %struct.sv** %incdec.ptr109, %add.ptr
  br i1 %cmp96, label %while.body98, label %while.end132

while.end132:                                     ; preds = %if.end131, %sw.bb90
  %relem.3.lcssa = phi %struct.sv** [ %relem.1404, %sw.bb90 ], [ %incdec.ptr109, %if.end131 ]
  %duplicates.1.lcssa = phi i32 [ %duplicates.0402, %sw.bb90 ], [ %duplicates.2, %if.end131 ]
  %cmp133 = icmp eq %struct.sv** %relem.3.lcssa, %add.ptr
  br i1 %cmp133, label %if.then135, label %while.cond.backedge

if.then135:                                       ; preds = %while.end132
  tail call fastcc void @S_do_oddball(%struct.hv* %30, %struct.sv** %add.ptr, %struct.sv** %add.ptr4) #9
  %add.ptr.sum413 = add i64 %idx.ext, 1
  %incdec.ptr136 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum413
  br label %while.cond.backedge

sw.default:                                       ; preds = %while.body
  %cmp138 = icmp eq %struct.sv* %12, @PL_sv_undef
  %cmp140 = icmp eq %struct.sv* %12, @PL_sv_yes
  %or.cond = or i1 %cmp138, %cmp140
  %cmp143 = icmp eq %struct.sv* %12, @PL_sv_no
  %or.cond274 = or i1 %or.cond, %cmp143
  %cmp146 = icmp eq %struct.sv* %12, @PL_sv_placeholder
  %or.cond275 = or i1 %or.cond274, %cmp146
  %cmp149 = icmp ule %struct.sv** %relem.1404, %add.ptr
  br i1 %or.cond275, label %if.then148, label %if.end154

if.then148:                                       ; preds = %sw.default
  %incdec.ptr152 = getelementptr inbounds %struct.sv** %relem.1404, i64 1
  %incdec.ptr152.relem.1 = select i1 %cmp149, %struct.sv** %incdec.ptr152, %struct.sv** %relem.1404
  br label %while.cond.backedge

if.end154:                                        ; preds = %sw.default
  br i1 %cmp149, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.end154
  %34 = load %struct.sv** %relem.1404, align 8, !tbaa !0
  tail call void @Perl_sv_setsv_flags(%struct.sv* %12, %struct.sv* %34, i32 2) #8
  %incdec.ptr158 = getelementptr inbounds %struct.sv** %relem.1404, i64 1
  store %struct.sv* %12, %struct.sv** %relem.1404, align 8, !tbaa !0
  br label %if.end160

if.else159:                                       ; preds = %if.end154
  tail call void @Perl_sv_setsv_flags(%struct.sv* %12, %struct.sv* @PL_sv_undef, i32 2) #8
  br label %if.end160

if.end160:                                        ; preds = %if.else159, %if.then157
  %relem.5 = phi %struct.sv** [ %incdec.ptr158, %if.then157 ], [ %relem.1404, %if.else159 ]
  %35 = load i32* %sv_flags, align 4, !tbaa !3
  %and162 = and i32 %35, 16384
  %tobool163 = icmp eq i32 %and162, 0
  br i1 %tobool163, label %while.cond.backedge, label %if.then164

if.then164:                                       ; preds = %if.end160
  %call165 = tail call i32 @Perl_mg_set(%struct.sv* %12) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %normal_array, %if.end89, %if.then164, %while.end132, %if.then135, %if.end160, %sw.bb62, %if.then148, %S_do_maybe_phash.exit
  %ary.0.be = phi %struct.av* [ %ary.0399, %if.then164 ], [ %ary.0399, %if.end160 ], [ %ary.0399, %if.then135 ], [ %ary.0399, %while.end132 ], [ %14, %sw.bb62 ], [ %14, %S_do_maybe_phash.exit ], [ %ary.0399, %if.then148 ], [ %14, %if.end89 ], [ %14, %normal_array ]
  %hash.0.be = phi %struct.hv* [ %hash.0401, %if.then164 ], [ %hash.0401, %if.end160 ], [ %30, %if.then135 ], [ %30, %while.end132 ], [ %hash.0401, %sw.bb62 ], [ %hash.0401, %S_do_maybe_phash.exit ], [ %hash.0401, %if.then148 ], [ %hash.0401, %if.end89 ], [ %hash.0401, %normal_array ]
  %duplicates.0.be = phi i32 [ %duplicates.0402, %if.then164 ], [ %duplicates.0402, %if.end160 ], [ %duplicates.1.lcssa, %if.then135 ], [ %duplicates.1.lcssa, %while.end132 ], [ %duplicates.0402, %sw.bb62 ], [ %duplicates.0402, %S_do_maybe_phash.exit ], [ %duplicates.0402, %if.then148 ], [ %duplicates.0402, %if.end89 ], [ %duplicates.0402, %normal_array ]
  %firsthashrelem.0.be = phi %struct.sv** [ %firsthashrelem.0403, %if.then164 ], [ %firsthashrelem.0403, %if.end160 ], [ %relem.1404, %if.then135 ], [ %relem.1404, %while.end132 ], [ %firsthashrelem.0403, %sw.bb62 ], [ %firsthashrelem.0403, %S_do_maybe_phash.exit ], [ %firsthashrelem.0403, %if.then148 ], [ %firsthashrelem.0403, %if.end89 ], [ %firsthashrelem.0403, %normal_array ]
  %relem.1.be = phi %struct.sv** [ %relem.5, %if.then164 ], [ %relem.5, %if.end160 ], [ %incdec.ptr136, %if.then135 ], [ %relem.3.lcssa, %while.end132 ], [ %add.ptr5, %sw.bb62 ], [ %add.ptr5, %S_do_maybe_phash.exit ], [ %incdec.ptr152.relem.1, %if.then148 ], [ %incdec.ptr75, %if.end89 ], [ %relem.1404, %normal_array ]
  %cmp47 = icmp ugt %struct.sv** %incdec.ptr49, %0
  br i1 %cmp47, label %while.end168, label %while.body

while.end168:                                     ; preds = %while.cond.backedge, %while.cond.preheader
  %relem.1.lcssa = phi %struct.sv** [ %add.ptr4, %while.cond.preheader ], [ %relem.1.be, %while.cond.backedge ]
  %firsthashrelem.0.lcssa = phi %struct.sv** [ null, %while.cond.preheader ], [ %firsthashrelem.0.be, %while.cond.backedge ]
  %duplicates.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %duplicates.0.be, %while.cond.backedge ]
  %hash.0.lcssa = phi %struct.hv* [ null, %while.cond.preheader ], [ %hash.0.be, %while.cond.backedge ]
  %ary.0.lcssa = phi %struct.av* [ null, %while.cond.preheader ], [ %ary.0.be, %while.cond.backedge ]
  %36 = load i32* @PL_delaymagic, align 4, !tbaa !3
  %and169 = and i32 %36, -257
  %tobool170 = icmp eq i32 %and169, 0
  br i1 %tobool170, label %if.end211, label %if.then171

if.then171:                                       ; preds = %while.end168
  %and172 = and i32 %36, 3
  %tobool173 = icmp eq i32 %and172, 0
  br i1 %tobool173, label %if.end187, label %if.then177

if.then177:                                       ; preds = %if.then171
  %37 = load i32* @PL_uid, align 4, !tbaa !3
  %38 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp178 = icmp eq i32 %37, %38
  br i1 %cmp178, label %if.end182, label %if.then180

if.then180:                                       ; preds = %if.then177
  %call181 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0)) #8
  br label %return

if.end182:                                        ; preds = %if.then177
  %call183 = tail call i32 @setuid(i32 %37) #8
  %call185 = tail call i32 @getuid() #8
  store i32 %call185, i32* @PL_uid, align 4, !tbaa !3
  %call186 = tail call i32 @geteuid() #8
  store i32 %call186, i32* @PL_euid, align 4, !tbaa !3
  %.pre412 = load i32* @PL_delaymagic, align 4, !tbaa !3
  br label %if.end187

if.end187:                                        ; preds = %if.then171, %if.end182
  %39 = phi i32 [ %36, %if.then171 ], [ %.pre412, %if.end182 ]
  %and188 = and i32 %39, 48
  %tobool189 = icmp eq i32 %and188, 0
  br i1 %tobool189, label %if.end203, label %if.then193

if.then193:                                       ; preds = %if.end187
  %40 = load i32* @PL_gid, align 4, !tbaa !3
  %41 = load i32* @PL_egid, align 4, !tbaa !3
  %cmp194 = icmp eq i32 %40, %41
  br i1 %cmp194, label %if.end198, label %if.then196

if.then196:                                       ; preds = %if.then193
  %call197 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0)) #8
  br label %return

if.end198:                                        ; preds = %if.then193
  %call199 = tail call i32 @setgid(i32 %40) #8
  %call201 = tail call i32 @getgid() #8
  store i32 %call201, i32* @PL_gid, align 4, !tbaa !3
  %call202 = tail call i32 @getegid() #8
  store i32 %call202, i32* @PL_egid, align 4, !tbaa !3
  br label %if.end203

if.end203:                                        ; preds = %if.end187, %if.end198
  %42 = load i32* @PL_uid, align 4, !tbaa !3
  %tobool204 = icmp eq i32 %42, 0
  br i1 %tobool204, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end203
  %43 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp205 = icmp eq i32 %43, %42
  br i1 %cmp205, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %44 = load i32* @PL_egid, align 4, !tbaa !3
  %45 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp207 = icmp ne i32 %44, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end203, %lor.rhs
  %46 = phi i1 [ false, %if.end203 ], [ true, %land.rhs ], [ %cmp207, %lor.rhs ]
  %land.ext = zext i1 %46 to i8
  %47 = load i8* @PL_tainting, align 1, !tbaa !1
  %or = or i8 %47, %land.ext
  store i8 %or, i8* @PL_tainting, align 1, !tbaa !1
  br label %if.end211

if.end211:                                        ; preds = %while.end168, %land.end
  store i32 0, i32* @PL_delaymagic, align 4, !tbaa !3
  switch i32 %cond24, label %if.else232 [
    i32 128, label %if.then214
    i32 0, label %if.then219
  ]

if.then214:                                       ; preds = %if.end211
  %add.ptr215 = getelementptr inbounds %struct.sv** %1, i64 %idx.ext2
  br label %if.end273

if.then219:                                       ; preds = %if.end211
  %48 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %48, i64 0, i32 3
  %49 = load i64* %op_targ, align 8, !tbaa !4
  %50 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %50, i64 %49
  %51 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sub.ptr.lhs.cast220 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.rhs.cast221 = ptrtoint %struct.sv** %add.ptr4 to i64
  %sub.ptr.sub222 = sub i64 %sub.ptr.lhs.cast220, %sub.ptr.rhs.cast221
  %sub.ptr.div223 = ashr exact i64 %sub.ptr.sub222, 3
  %add224 = add nsw i64 %sub.ptr.div223, 1
  %conv225 = sext i32 %duplicates.0.lcssa to i64
  %sub = sub i64 %add224, %conv225
  tail call void @Perl_sv_setiv(%struct.sv* %51, i64 %sub) #8
  %sv_flags226 = getelementptr inbounds %struct.sv* %51, i64 0, i32 2
  %52 = load i32* %sv_flags226, align 4, !tbaa !3
  %and227 = and i32 %52, 16384
  %tobool228 = icmp eq i32 %and227, 0
  br i1 %tobool228, label %if.end231, label %if.then229

if.then229:                                       ; preds = %if.then219
  %call230 = tail call i32 @Perl_mg_set(%struct.sv* %51) #8
  br label %if.end231

if.end231:                                        ; preds = %if.then219, %if.then229
  store %struct.sv* %51, %struct.sv** %add.ptr4, align 8, !tbaa !0
  br label %if.end273

if.else232:                                       ; preds = %if.end211
  %tobool233 = icmp eq %struct.av* %ary.0.lcssa, null
  br i1 %tobool233, label %if.else235, label %if.end253

if.else235:                                       ; preds = %if.else232
  %tobool236 = icmp eq %struct.hv* %hash.0.lcssa, null
  br i1 %tobool236, label %if.else246, label %if.then237

if.then237:                                       ; preds = %if.else235
  %tobool238 = icmp eq i32 %duplicates.0.lcssa, 0
  br i1 %tobool238, label %if.end253, label %if.then239

if.then239:                                       ; preds = %if.then237
  %53 = bitcast %struct.sv** %firsthashrelem.0.lcssa to i8*
  %idx.ext240 = sext i32 %duplicates.0.lcssa to i64
  %add.ptr241 = getelementptr inbounds %struct.sv** %firsthashrelem.0.lcssa, i64 %idx.ext240
  %54 = bitcast %struct.sv** %add.ptr241 to i8*
  %mul = shl nsw i64 %idx.ext240, 3
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %53, i8* %54, i64 %mul, i32 1, i1 false)
  %add.ptr.sum383 = sub i64 %idx.ext, %idx.ext240
  %add.ptr244 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum383
  br label %if.end253

if.else246:                                       ; preds = %if.else235
  %sub.ptr.lhs.cast247 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast248 = ptrtoint %struct.sv** %add.ptr5 to i64
  %sub.ptr.sub249 = sub i64 %sub.ptr.lhs.cast247, %sub.ptr.rhs.cast248
  %sub.ptr.div250 = ashr exact i64 %sub.ptr.sub249, 3
  %add.ptr4.sum = add i64 %sub.ptr.div250, %add.ptr3.sum
  %add.ptr251 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr4.sum
  br label %if.end253

if.end253:                                        ; preds = %if.then239, %if.then237, %if.else232, %if.else246
  %sp.0 = phi %struct.sv** [ %add.ptr251, %if.else246 ], [ %add.ptr, %if.else232 ], [ %add.ptr244, %if.then239 ], [ %add.ptr, %if.then237 ]
  %cmp260387 = icmp ugt %struct.sv** %relem.1.lcssa, %sp.0
  br i1 %cmp260387, label %if.end273, label %while.body262.lr.ph

while.body262.lr.ph:                              ; preds = %if.end253
  %sub.ptr.rhs.cast255 = ptrtoint %struct.sv** %add.ptr4 to i64
  %sub.ptr.lhs.cast254 = ptrtoint %struct.sv** %relem.1.lcssa to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %sub.ptr.div257 = ashr exact i64 %sub.ptr.sub256, 3
  %add.ptr5.sum = add i64 %sub.ptr.div257, %add.ptr.sum
  %add.ptr258 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr5.sum
  br label %while.body262

while.body262:                                    ; preds = %while.body262.lr.ph, %cond.end268
  %relem.6389 = phi %struct.sv** [ %relem.1.lcssa, %while.body262.lr.ph ], [ %incdec.ptr270, %cond.end268 ]
  %lelem.1388 = phi %struct.sv** [ %add.ptr258, %while.body262.lr.ph ], [ %lelem.2, %cond.end268 ]
  %cmp263 = icmp ugt %struct.sv** %lelem.1388, %0
  br i1 %cmp263, label %cond.end268, label %cond.true265

cond.true265:                                     ; preds = %while.body262
  %incdec.ptr266 = getelementptr inbounds %struct.sv** %lelem.1388, i64 1
  %55 = load %struct.sv** %lelem.1388, align 8, !tbaa !0
  br label %cond.end268

cond.end268:                                      ; preds = %while.body262, %cond.true265
  %lelem.2 = phi %struct.sv** [ %incdec.ptr266, %cond.true265 ], [ %lelem.1388, %while.body262 ]
  %cond269 = phi %struct.sv* [ %55, %cond.true265 ], [ @PL_sv_undef, %while.body262 ]
  %incdec.ptr270 = getelementptr inbounds %struct.sv** %relem.6389, i64 1
  store %struct.sv* %cond269, %struct.sv** %relem.6389, align 8, !tbaa !0
  %cmp260 = icmp ugt %struct.sv** %incdec.ptr270, %sp.0
  br i1 %cmp260, label %if.end273, label %while.body262

if.end273:                                        ; preds = %if.end253, %cond.end268, %if.end231, %if.then214
  %sp.1 = phi %struct.sv** [ %add.ptr215, %if.then214 ], [ %add.ptr4, %if.end231 ], [ %sp.0, %cond.end268 ], [ %sp.0, %if.end253 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %56 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %56, i64 0, i32 0
  %57 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end273, %if.then196, %if.then180
  %retval.0 = phi %struct.op* [ %call181, %if.then180 ], [ %call197, %if.then196 ], [ %57, %if.end273 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_tmps_grow(i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_do_oddball(%struct.hv* %hash, %struct.sv** %relem, %struct.sv** %firstrelem) #0 {
entry:
  %0 = load %struct.sv** %relem, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %0, null
  br i1 %tobool, label %if.end77, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %1, i64 0, i32 14
  %2 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %2, null
  br i1 %cmp, label %lor.lhs.false8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %3 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1 = getelementptr inbounds %struct.cop* %3, i64 0, i32 14
  %4 = load %struct.sv** %cop_warnings1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct.sv* %4, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2, label %lor.lhs.false8, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings4 = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.sv* %6, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp5, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings6 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings6, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %9 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %10, i64 3
  %11 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %11, 1
  %tobool7 = icmp eq i8 %and, 0
  br i1 %tobool7, label %lor.lhs.false8, label %if.then16

lor.lhs.false8:                                   ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings9 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings9, align 8, !tbaa !0
  %cmp10 = icmp eq %struct.sv* %13, null
  br i1 %cmp10, label %land.lhs.true12, label %if.end36

land.lhs.true12:                                  ; preds = %lor.lhs.false8
  %14 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and14 = and i8 %14, 1
  %tobool15 = icmp eq i8 %and14, 0
  br i1 %tobool15, label %if.end36, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false, %land.lhs.true12, %land.lhs.true3
  %cmp17 = icmp eq %struct.sv** %relem, %firstrelem
  br i1 %cmp17, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %if.then16
  %15 = load %struct.sv** %relem, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %16 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %16, 524288
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.else, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %sv_any23 = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %17 = load i8** %sv_any23, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %17 to %struct.sv**
  %18 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags24 = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags24, align 4, !tbaa !3
  %and25 = and i32 %19, 255
  %and25.off = add i32 %and25, -10
  %switch = icmp ult i32 %and25.off, 2
  br i1 %switch, label %if.then35, label %if.else

if.then35:                                        ; preds = %land.lhs.true22
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([47 x i8]* @.str57, i64 0, i64 0)) #8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true22, %land.lhs.true19, %if.then16
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([42 x i8]* @.str58, i64 0, i64 0)) #8
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true12, %if.then35, %if.else, %lor.lhs.false8
  %sv_flags37 = getelementptr inbounds %struct.hv* %hash, i64 0, i32 2
  %20 = load i32* %sv_flags37, align 4, !tbaa !3
  %and38 = and i32 %20, 255
  %cmp39 = icmp eq i32 %and38, 10
  br i1 %cmp39, label %if.then41, label %if.else58

if.then41:                                        ; preds = %if.end36
  %call = tail call %struct.sv* @Perl_sv_newmortal() #8
  %21 = bitcast %struct.hv* %hash to %struct.av*
  %22 = load %struct.sv** %relem, align 8, !tbaa !0
  %call42 = tail call %struct.sv** @Perl_avhv_store_ent(%struct.av* %21, %struct.sv* %22, %struct.sv* %call, i32 0) #8
  %tobool43 = icmp eq %struct.sv** %call42, null
  br i1 %tobool43, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.then41
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool45 = icmp eq %struct.sv* %call, null
  br i1 %tobool45, label %if.end47, label %land.rhs

land.rhs:                                         ; preds = %if.then44
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %23 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %23, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %if.end47

if.end47:                                         ; preds = %land.rhs, %if.then44, %if.then41
  %24 = load i32* %sv_flags37, align 4, !tbaa !3
  %and49 = and i32 %24, 57344
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.end76, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end47
  %sv_flags52 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %25 = load i32* %sv_flags52, align 4, !tbaa !3
  %and53 = and i32 %25, 16384
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %if.end76, label %if.then55

if.then55:                                        ; preds = %land.lhs.true51
  %call56 = tail call i32 @Perl_mg_set(%struct.sv* %call) #8
  br label %if.end76

if.else58:                                        ; preds = %if.end36
  %call59 = tail call %struct.sv* @Perl_newSV(i64 0) #8
  %26 = load %struct.sv** %relem, align 8, !tbaa !0
  %call60 = tail call %struct.he* @Perl_hv_store_ent(%struct.hv* %hash, %struct.sv* %26, %struct.sv* %call59, i32 0) #8
  %27 = load i32* %sv_flags37, align 4, !tbaa !3
  %and62 = and i32 %27, 57344
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %if.end76, label %if.then64

if.then64:                                        ; preds = %if.else58
  %sv_flags65 = getelementptr inbounds %struct.sv* %call59, i64 0, i32 2
  %28 = load i32* %sv_flags65, align 4, !tbaa !3
  %and66 = and i32 %28, 16384
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.then64
  %call69 = tail call i32 @Perl_mg_set(%struct.sv* %call59) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.then68
  %tobool71 = icmp eq %struct.he* %call60, null
  br i1 %tobool71, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.end70
  %call73 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call59) #8
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true51, %if.end47, %if.end70, %if.else58, %if.then72, %if.then55
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end77

if.end77:                                         ; preds = %entry, %if.end76
  ret void
}

; Function Attrs: optsize
declare void @Perl_av_clear(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare signext i8 @Perl_hv_exists_ent(%struct.hv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_store_ent(%struct.hv*, %struct.sv*, %struct.sv*, i32) #1

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

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_qr() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %call = tail call %struct.sv* @Perl_sv_newmortal() #8
  %call1 = tail call %struct.sv* @Perl_newSVrv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #8
  %op_pmdynflags = getelementptr inbounds %struct.op* %1, i64 2, i32 2
  %2 = bitcast {}** %op_pmdynflags to i8*
  %3 = load i8* %2, align 1, !tbaa !1
  %and = and i8 %3, 2
  %tobool = icmp ne i8 %and, 0
  %4 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool2 = icmp ne i8 %4, 0
  %or.cond = and i1 %tobool, %tobool2
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  tail call void @Perl_sv_taint(%struct.sv* %call) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  %op_pmregexp = getelementptr inbounds %struct.op* %1, i64 2
  %5 = bitcast %struct.op* %op_pmregexp to %struct.regexp**
  %6 = load %struct.regexp** %5, align 8, !tbaa !0
  %tobool5 = icmp eq %struct.regexp* %6, null
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end4
  %refcnt = getelementptr inbounds %struct.regexp* %6, i64 0, i32 9
  %7 = load i32* %refcnt, align 4, !tbaa !3
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end4, %land.rhs
  %8 = bitcast %struct.regexp* %6 to %struct.sv*
  tail call void @Perl_sv_magic(%struct.sv* %call1, %struct.sv* %8, i32 114, i8* null, i32 0) #8
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 1
  store %struct.sv* %call, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %9, i64 0, i32 0
  %10 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %10
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVrv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_match() #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %2 = bitcast %struct.op* %1 to %struct.pmop*
  %op_pmregexp = getelementptr inbounds %struct.op* %1, i64 2
  %3 = bitcast %struct.op* %op_pmregexp to %struct.regexp**
  %4 = load %struct.regexp** %3, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %cmp = icmp eq i32 %and, 3
  %cond = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 @Perl_dowantarray() #8
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags6.phi.trans.insert = getelementptr inbounds %struct.op* %.pre, i64 0, i32 6
  %.pre894 = load i8* %op_flags6.phi.trans.insert, align 1, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = phi i8 [ %5, %cond.true ], [ %.pre894, %cond.false ]
  %cond5 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  %7 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %and8 = and i8 %6, 64
  %tobool9 = icmp eq i8 %and8, 0
  br i1 %tobool9, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %8 = load %struct.sv** %0, align 8, !tbaa !0
  br label %if.end14

if.else:                                          ; preds = %cond.end
  %9 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %9, i64 0, i32 0
  %10 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 7
  %11 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %11, i64 0, i32 0
  %12 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %13 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  %call13 = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %if.then
  %targ.0 = phi %struct.sv* [ %8, %if.then ], [ %12, %if.then12 ], [ %12, %if.else ]
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %if.then ], [ %call13, %if.then12 ], [ %0, %if.else ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 2
  %14 = load i32* %sv_flags, align 4, !tbaa !3
  %and15 = and i32 %14, 262144
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %cond.false21, label %cond.true18

cond.true18:                                      ; preds = %if.end14
  %sv_any19 = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 0
  %15 = load i8** %sv_any19, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %15, i64 8
  %16 = bitcast i8* %xpv_cur to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  store i64 %17, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %15 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end23

cond.false21:                                     ; preds = %if.end14
  %call22 = call i8* @Perl_sv_2pv_flags(%struct.sv* %targ.0, i64* %len, i32 2) #8
  %.pre895 = load i64* %len, align 8, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true18
  %19 = phi i64 [ %17, %cond.true18 ], [ %.pre895, %cond.false21 ]
  %cond24 = phi i8* [ %18, %cond.true18 ], [ %call22, %cond.false21 ]
  %add.ptr = getelementptr inbounds i8* %cond24, i64 %19
  %tobool25 = icmp eq i8* %cond24, null
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %cond.end23
  %call27 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0)) #8
  br label %return

if.end28:                                         ; preds = %cond.end23
  %op_pmdynflags = getelementptr inbounds %struct.op* %1, i64 2, i32 2
  %20 = bitcast {}** %op_pmdynflags to i8*
  %21 = load i8* %20, align 1, !tbaa !1
  %and30 = and i8 %21, 2
  %tobool31 = icmp eq i8 %and30, 0
  br i1 %tobool31, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end28
  %22 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool33 = icmp eq i8 %22, 0
  br i1 %tobool33, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %op_pmflags = getelementptr inbounds %struct.op* %1, i64 2, i32 1
  %23 = bitcast %struct.op** %op_pmflags to i32*
  %24 = load i32* %23, align 4, !tbaa !3
  %and34 = and i32 %24, 1
  %tobool35 = icmp ne i32 %and34, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end28, %land.rhs
  %25 = phi i1 [ true, %if.end28 ], [ false, %lor.rhs ], [ %tobool35, %land.rhs ]
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %26 = load i32* %sv_flags, align 4, !tbaa !3
  %and38 = and i32 %26, 536870912
  %tobool39 = icmp eq i32 %and38, 0
  br i1 %tobool39, label %cond.false44, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.end
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %27, i64 0, i32 7
  %28 = load i8* %op_private, align 1, !tbaa !1
  %and41 = and i8 %28, 8
  %tobool42 = icmp eq i8 %and41, 0
  br i1 %tobool42, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %land.lhs.true
  %reganch = getelementptr inbounds %struct.regexp* %4, i64 0, i32 15
  %29 = load i32* %reganch, align 4, !tbaa !3
  %or = or i32 %29, 268435456
  store i32 %or, i32* %reganch, align 4, !tbaa !3
  br label %cond.end47

cond.false44:                                     ; preds = %land.lhs.true, %lor.end
  %reganch45 = getelementptr inbounds %struct.regexp* %4, i64 0, i32 15
  %30 = load i32* %reganch45, align 4, !tbaa !3
  %and46 = and i32 %30, -268435457
  store i32 %and46, i32* %reganch45, align 4, !tbaa !3
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false44, %cond.true43
  %storemerge = phi i8 [ 0, %cond.false44 ], [ 1, %cond.true43 ]
  store i8 %storemerge, i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %31 = load i8* %20, align 1, !tbaa !1
  %and51 = and i8 %31, 1
  %tobool52 = icmp eq i8 %and51, 0
  br i1 %tobool52, label %if.end60, label %failure

failure:                                          ; preds = %cond.end47, %if.end66
  %cmp54 = icmp eq i32 %cond5, 1
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %failure
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %32 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %32, i64 0, i32 0
  %33 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end57:                                         ; preds = %failure
  %incdec.ptr58 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr58, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr58, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %34 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next59 = getelementptr inbounds %struct.op* %34, i64 0, i32 0
  %35 = load %struct.op** %op_next59, align 8, !tbaa !0
  br label %return

if.end60:                                         ; preds = %cond.end47
  %prelen = getelementptr inbounds %struct.regexp* %4, i64 0, i32 11
  %36 = load i32* %prelen, align 4, !tbaa !3
  %tobool61 = icmp eq i32 %36, 0
  %37 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool63 = icmp ne %struct.pmop* %37, null
  %or.cond = and i1 %tobool61, %tobool63
  br i1 %or.cond, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  %op_pmregexp65 = getelementptr inbounds %struct.pmop* %37, i64 0, i32 13
  %38 = load %struct.regexp** %op_pmregexp65, align 8, !tbaa !0
  br label %if.end66

if.end66:                                         ; preds = %if.end60, %if.then64
  %rx.0 = phi %struct.regexp* [ %38, %if.then64 ], [ %4, %if.end60 ]
  %pm.0 = phi %struct.pmop* [ %37, %if.then64 ], [ %2, %if.end60 ]
  %minlen = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 10
  %39 = load i32* %minlen, align 4, !tbaa !3
  %40 = load i64* %len, align 8, !tbaa !4
  %conv67 = trunc i64 %40 to i32
  %cmp68 = icmp sgt i32 %39, %conv67
  br i1 %cmp68, label %failure, label %if.end71

if.end71:                                         ; preds = %if.end66
  %op_pmflags72 = getelementptr inbounds %struct.op* %1, i64 2, i32 1
  %41 = bitcast %struct.op** %op_pmflags72 to i32*
  %42 = load i32* %41, align 4, !tbaa !3
  %and73 = and i32 %42, 256
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then75, label %land.lhs.true117

if.then75:                                        ; preds = %if.end71
  %startp = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 0
  %43 = load i32** %startp, align 8, !tbaa !0
  store i32 -1, i32* %43, align 4, !tbaa !3
  %44 = load i32* %sv_flags, align 4, !tbaa !3
  %and77 = and i32 %44, 255
  %cmp78 = icmp ugt i32 %and77, 6
  br i1 %cmp78, label %land.lhs.true80, label %lor.lhs.false

land.lhs.true80:                                  ; preds = %if.then75
  %sv_any81 = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 0
  %45 = load i8** %sv_any81, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %45, i64 40
  %46 = bitcast i8* %xmg_magic to %struct.magic**
  %47 = load %struct.magic** %46, align 8, !tbaa !0
  %tobool82 = icmp eq %struct.magic* %47, null
  br i1 %tobool82, label %lor.lhs.false, label %if.then83

if.then83:                                        ; preds = %land.lhs.true80
  %call84 = call %struct.magic* @Perl_mg_find(%struct.sv* %targ.0, i32 103) #8
  %tobool85 = icmp eq %struct.magic* %call84, null
  br i1 %tobool85, label %lor.lhs.false, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.then83
  %mg_len = getelementptr inbounds %struct.magic* %call84, i64 0, i32 7
  %48 = load i32* %mg_len, align 4, !tbaa !3
  %cmp87 = icmp sgt i32 %48, -1
  br i1 %cmp87, label %if.then89, label %lor.lhs.false

if.then89:                                        ; preds = %land.lhs.true86
  %reganch90 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 15
  %49 = load i32* %reganch90, align 4, !tbaa !3
  %and91 = and i32 %49, 128
  %tobool92 = icmp eq i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.else98

if.then93:                                        ; preds = %if.then89
  %50 = load i32** %startp, align 8, !tbaa !0
  store i32 %48, i32* %50, align 4, !tbaa !3
  %endp = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 1
  %51 = load i32** %endp, align 8, !tbaa !0
  store i32 %48, i32* %51, align 4, !tbaa !3
  br label %if.end110

if.else98:                                        ; preds = %if.then89
  %and100 = and i32 %49, 8
  %tobool101 = icmp eq i32 %and100, 0
  br i1 %tobool101, label %if.end110, label %if.then102

if.then102:                                       ; preds = %if.else98
  %52 = load i32** %startp, align 8, !tbaa !0
  store i32 %48, i32* %52, align 4, !tbaa !3
  %endp107 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 1
  %53 = load i32** %endp107, align 8, !tbaa !0
  store i32 %48, i32* %53, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %if.else98, %if.then102, %if.then93
  %r_flags.0 = phi i32 [ 10, %if.then102 ], [ 2, %if.else98 ], [ 2, %if.then93 ]
  %mg_flags = getelementptr inbounds %struct.magic* %call84, i64 0, i32 4
  %54 = load i8* %mg_flags, align 1, !tbaa !1
  %conv111 = zext i8 %54 to i32
  %and112 = and i32 %conv111, 1
  br label %lor.lhs.false

land.lhs.true117:                                 ; preds = %if.end71
  %nparens = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 12
  %55 = load i32* %nparens, align 4, !tbaa !3
  %tobool118 = icmp eq i32 %55, 0
  br i1 %tobool118, label %lor.lhs.false, label %land.lhs.true117.if.then125_crit_edge

land.lhs.true117.if.then125_crit_edge:            ; preds = %land.lhs.true117
  %.pre896.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.then125

lor.lhs.false:                                    ; preds = %land.lhs.true117, %if.then83, %land.lhs.true80, %if.end110, %land.lhs.true86, %if.then75
  %update_minmatch.0851 = phi i32 [ 1, %if.then75 ], [ 0, %if.end110 ], [ 1, %land.lhs.true86 ], [ 1, %if.then83 ], [ 1, %land.lhs.true80 ], [ 1, %land.lhs.true117 ]
  %r_flags.1848 = phi i32 [ 2, %if.then75 ], [ %r_flags.0, %if.end110 ], [ 2, %land.lhs.true86 ], [ 2, %if.then83 ], [ 2, %land.lhs.true80 ], [ 2, %land.lhs.true117 ]
  %minmatch.0846 = phi i32 [ 0, %if.then75 ], [ %and112, %if.end110 ], [ 0, %land.lhs.true86 ], [ 0, %if.then83 ], [ 0, %land.lhs.true80 ], [ 0, %land.lhs.true117 ]
  %56 = load i32* %sv_flags, align 4, !tbaa !3
  %and120 = and i32 %56, 2048
  %tobool121 = icmp eq i32 %and120, 0
  %57 = load i8* @PL_sawampersand, align 1, !tbaa !1
  %tobool124 = icmp eq i8 %57, 0
  %or.cond839 = and i1 %tobool121, %tobool124
  br i1 %or.cond839, label %if.end127, label %if.then125

if.then125:                                       ; preds = %land.lhs.true117.if.then125_crit_edge, %lor.lhs.false
  %.pre896 = phi i32 [ %56, %lor.lhs.false ], [ %.pre896.pre, %land.lhs.true117.if.then125_crit_edge ]
  %update_minmatch.0849 = phi i32 [ %update_minmatch.0851, %lor.lhs.false ], [ 1, %land.lhs.true117.if.then125_crit_edge ]
  %r_flags.1847 = phi i32 [ %r_flags.1848, %lor.lhs.false ], [ 2, %land.lhs.true117.if.then125_crit_edge ]
  %minmatch.0844 = phi i32 [ %minmatch.0846, %lor.lhs.false ], [ 0, %land.lhs.true117.if.then125_crit_edge ]
  %or126 = or i32 %r_flags.1847, 1
  br label %if.end127

if.end127:                                        ; preds = %lor.lhs.false, %if.then125
  %58 = phi i32 [ %.pre896, %if.then125 ], [ %56, %lor.lhs.false ]
  %update_minmatch.0850 = phi i32 [ %update_minmatch.0849, %if.then125 ], [ %update_minmatch.0851, %lor.lhs.false ]
  %minmatch.0845 = phi i32 [ %minmatch.0844, %if.then125 ], [ %minmatch.0846, %lor.lhs.false ]
  %r_flags.2 = phi i32 [ %or126, %if.then125 ], [ %r_flags.1848, %lor.lhs.false ]
  %and129 = lshr i32 %58, 25
  %59 = and i32 %and129, 4
  %60 = or i32 %59, %r_flags.2
  %op_pmflags134 = getelementptr inbounds %struct.pmop* %pm.0, i64 0, i32 14
  %61 = load i32* %op_pmflags134, align 4, !tbaa !3
  %and135 = and i32 %61, 12288
  %tobool136 = icmp eq i32 %and135, 0
  br i1 %tobool136, label %play_it_again.preheader, label %if.then137

if.then137:                                       ; preds = %if.end127
  call void @Perl_save_int(i32* @PL_multiline) #8
  %62 = load i32* %op_pmflags134, align 4, !tbaa !3
  %and139 = and i32 %62, 4096
  store i32 %and139, i32* @PL_multiline, align 4, !tbaa !3
  br label %play_it_again.preheader

play_it_again.preheader:                          ; preds = %if.then137, %if.end127
  %startp143 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 0
  %endp148 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 1
  %reganch162 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 15
  %cmp232 = icmp eq i32 %cond5, 1
  %nparens237 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 12
  %sv_any346 = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 0
  %sub.ptr.lhs.cast306 = ptrtoint i8* %add.ptr to i64
  %subbeg495 = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 6
  %sub.ptr.rhs.cast500 = ptrtoint i8* %cond24 to i64
  %conv532 = trunc i64 %19 to i32
  %sublen = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 8
  br label %play_it_again

play_it_again:                                    ; preds = %play_it_again.preheader, %land.end394
  %minmatch.1 = phi i32 [ %minmatch.2, %land.end394 ], [ %minmatch.0845, %play_it_again.preheader ]
  %r_flags.4 = phi i32 [ %or396, %land.end394 ], [ %60, %play_it_again.preheader ]
  %update_minmatch.1 = phi i32 [ %update_minmatch.2, %land.end394 ], [ %update_minmatch.0850, %play_it_again.preheader ]
  %had_zerolen.0 = phi i32 [ %land.ext395, %land.end394 ], [ 0, %play_it_again.preheader ]
  %s.0 = phi i8* [ %s.4.lcssa, %land.end394 ], [ %cond24, %play_it_again.preheader ]
  %t.0 = phi i8* [ %t.1, %land.end394 ], [ %cond24, %play_it_again.preheader ]
  %sp.1 = phi %struct.sv** [ %sp.3.lcssa, %land.end394 ], [ %sp.0, %play_it_again.preheader ]
  br i1 %tobool74, label %land.lhs.true142, label %if.end161

land.lhs.true142:                                 ; preds = %play_it_again
  %63 = load i32** %startp143, align 8, !tbaa !0
  %64 = load i32* %63, align 4, !tbaa !3
  %cmp145 = icmp eq i32 %64, -1
  br i1 %cmp145, label %if.end161, label %if.then147

if.then147:                                       ; preds = %land.lhs.true142
  %65 = load i32** %endp148, align 8, !tbaa !0
  %66 = load i32* %65, align 4, !tbaa !3
  %idx.ext = sext i32 %66 to i64
  %add.ptr150 = getelementptr inbounds i8* %cond24, i64 %idx.ext
  %67 = load i32* %minlen, align 4, !tbaa !3
  %idx.ext152 = sext i32 %67 to i64
  %add.ptr150.sum = add i64 %idx.ext152, %idx.ext
  %cmp154 = icmp sgt i64 %add.ptr150.sum, %19
  br i1 %cmp154, label %land.lhs.true584, label %if.end157

if.end157:                                        ; preds = %if.then147
  %inc = add nsw i32 %update_minmatch.1, 1
  %tobool158 = icmp eq i32 %update_minmatch.1, 0
  %minmatch.1.had_zerolen.0 = select i1 %tobool158, i32 %minmatch.1, i32 %had_zerolen.0
  br label %if.end161

if.end161:                                        ; preds = %land.lhs.true142, %play_it_again, %if.end157
  %minmatch.2 = phi i32 [ %minmatch.1.had_zerolen.0, %if.end157 ], [ %minmatch.1, %play_it_again ], [ %minmatch.1, %land.lhs.true142 ]
  %update_minmatch.2 = phi i32 [ %inc, %if.end157 ], [ %update_minmatch.1, %play_it_again ], [ %update_minmatch.1, %land.lhs.true142 ]
  %s.1 = phi i8* [ %add.ptr150, %if.end157 ], [ %s.0, %play_it_again ], [ %s.0, %land.lhs.true142 ]
  %t.1 = phi i8* [ %add.ptr150, %if.end157 ], [ %t.0, %play_it_again ], [ %t.0, %land.lhs.true142 ]
  %68 = load i32* %reganch162, align 4, !tbaa !3
  %and163 = and i32 %68, 3145728
  %tobool164 = icmp eq i32 %and163, 0
  br i1 %tobool164, label %if.end208, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %if.end161
  %69 = load i32* %sv_flags, align 4, !tbaa !3
  %and167 = and i32 %69, 536870912
  %tobool168 = icmp eq i32 %and167, 0
  br i1 %tobool168, label %land.lhs.true165.land.end174_crit_edge, label %land.end174

land.lhs.true165.land.end174_crit_edge:           ; preds = %land.lhs.true165
  %70 = and i32 %68, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %if.then181, label %if.end208

land.end174:                                      ; preds = %land.lhs.true165
  %72 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private170 = getelementptr inbounds %struct.cop* %72, i64 0, i32 7
  %73 = load i8* %op_private170, align 1, !tbaa !1
  %and172 = and i8 %73, 8
  %lnot = icmp eq i8 %and172, 0
  %74 = load i32* %reganch162, align 4, !tbaa !3
  %75 = and i32 %74, 65536
  %76 = icmp ne i32 %75, 0
  %cmp179tmp = xor i1 %lnot, %76
  br i1 %cmp179tmp, label %if.end208, label %if.then181

if.then181:                                       ; preds = %land.lhs.true165.land.end174_crit_edge, %land.end174
  store i8* %cond24, i8** @PL_bostr, align 8, !tbaa !0
  %77 = load i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)** @PL_regint_start, align 8, !tbaa !0
  %call182 = call i8* %77(%struct.regexp* %rx.0, %struct.sv* %targ.0, i8* %s.1, i8* %add.ptr, i32 %r_flags.4, %struct.re_scream_pos_data_s* null) #8
  %tobool183 = icmp eq i8* %call182, null
  br i1 %tobool183, label %ret_no, label %if.end185

if.end185:                                        ; preds = %if.then181
  %78 = load i32* %reganch162, align 4, !tbaa !3
  %and187 = and i32 %78, 256
  %tobool188 = icmp eq i32 %and187, 0
  %79 = load i8* @PL_sawampersand, align 1, !tbaa !1
  %tobool190 = icmp ne i8 %79, 0
  %or.cond617 = or i1 %tobool188, %tobool190
  br i1 %or.cond617, label %if.end208, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %if.end185
  %80 = and i32 %78, 134217792
  %81 = icmp eq i32 %80, 134217728
  br i1 %81, label %land.lhs.true199, label %land.lhs.true202

land.lhs.true199:                                 ; preds = %land.lhs.true191
  %and200 = and i32 %r_flags.4, 4
  %tobool201 = icmp eq i32 %and200, 0
  br i1 %tobool201, label %land.lhs.true202, label %if.end208

land.lhs.true202:                                 ; preds = %land.lhs.true191, %land.lhs.true199
  %82 = load i32* %sv_flags, align 4, !tbaa !3
  %and204 = and i32 %82, 524288
  %tobool205 = icmp eq i32 %and204, 0
  br i1 %tobool205, label %yup, label %if.end208

if.end208:                                        ; preds = %land.lhs.true165.land.end174_crit_edge, %land.lhs.true199, %land.lhs.true202, %land.end174, %if.end161, %if.end185
  %s.2 = phi i8* [ %call182, %if.end185 ], [ %call182, %land.lhs.true202 ], [ %call182, %land.lhs.true199 ], [ %s.1, %land.end174 ], [ %s.1, %if.end161 ], [ %s.1, %land.lhs.true165.land.end174_crit_edge ]
  %83 = load i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  %call209 = call i32 %83(%struct.regexp* %rx.0, i8* %s.2, i8* %add.ptr, i8* %cond24, i32 %minmatch.2, %struct.sv* %targ.0, i8* null, i32 %r_flags.4) #8
  %tobool210 = icmp eq i32 %call209, 0
  br i1 %tobool210, label %ret_no, label %if.then211

if.then211:                                       ; preds = %if.end208
  store %struct.pmop* %pm.0, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %84 = load i32* %41, align 4, !tbaa !3
  %and213 = and i32 %84, 2
  %tobool214 = icmp eq i32 %and213, 0
  br i1 %tobool214, label %gotcha, label %if.then215

if.then215:                                       ; preds = %if.then211
  %85 = load i8* %20, align 1, !tbaa !1
  %or218 = or i8 %85, 1
  store i8 %or218, i8* %20, align 1, !tbaa !1
  br label %gotcha

gotcha:                                           ; preds = %if.then211, %if.then215, %if.end528
  %s.3 = phi i8* [ %s.2, %if.then215 ], [ %s.2, %if.then211 ], [ %call182, %if.end528 ]
  %86 = load i32* %reganch162, align 4, !tbaa !3
  br i1 %25, label %if.then223, label %if.end226

if.then223:                                       ; preds = %gotcha
  %or225 = or i32 %86, 524288
  store i32 %or225, i32* %reganch162, align 4, !tbaa !3
  br label %if.end226

if.end226:                                        ; preds = %gotcha, %if.then223
  %87 = phi i32 [ %or225, %if.then223 ], [ %86, %gotcha ]
  %and228 = and i32 %87, 524288
  %tobool229 = icmp eq i32 %and228, 0
  br i1 %tobool229, label %if.end231, label %if.then230

if.then230:                                       ; preds = %if.end226
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end231

if.end231:                                        ; preds = %if.end226, %if.then230
  br i1 %cmp232, label %if.then234, label %if.else417

if.then234:                                       ; preds = %if.end231
  %88 = load i32* %nparens237, align 4, !tbaa !3
  %tobool240 = icmp eq i32 %88, 0
  %or.cond841 = and i1 %tobool74, %tobool240
  %i.0 = zext i1 %or.cond841 to i32
  %89 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %90 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast244 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.rhs.cast245 = ptrtoint %struct.sv** %89 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %sub.ptr.div247 = ashr exact i64 %sub.ptr.sub246, 3
  %add = add nsw i32 %i.0, %88
  %conv248 = sext i32 %add to i64
  %cmp249 = icmp slt i64 %sub.ptr.div247, %conv248
  br i1 %cmp249, label %if.then251, label %if.end254

if.then251:                                       ; preds = %if.then234
  %call253 = call %struct.sv** @Perl_stack_grow(%struct.sv** %89, %struct.sv** %89, i32 %add) #8
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.then234
  %sp.2 = phi %struct.sv** [ %call253, %if.then251 ], [ %89, %if.then234 ]
  %91 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %add256 = add nsw i32 %91, %add
  %92 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %cmp257 = icmp slt i32 %add256, %92
  br i1 %cmp257, label %if.end261, label %if.then259

if.then259:                                       ; preds = %if.end254
  call void @Perl_tmps_grow(i32 %add) #8
  br label %if.end261

if.end261:                                        ; preds = %if.end254, %if.then259
  %93 = xor i32 %i.0, 1
  %cmp264860 = icmp sgt i32 %93, %88
  br i1 %cmp264860, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end261
  %94 = zext i32 %93 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %94, %for.body.lr.ph ]
  %sp.3863 = phi %struct.sv** [ %incdec.ptr267, %for.inc ], [ %sp.2, %for.body.lr.ph ]
  %s.4861 = phi i8* [ %s.5, %for.inc ], [ %s.3, %for.body.lr.ph ]
  %call266 = call %struct.sv* @Perl_sv_newmortal() #8
  %incdec.ptr267 = getelementptr inbounds %struct.sv** %sp.3863, i64 1
  store %struct.sv* %call266, %struct.sv** %incdec.ptr267, align 8, !tbaa !0
  %95 = load i32** %startp143, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i32* %95, i64 %indvars.iv
  %96 = load i32* %arrayidx269, align 4, !tbaa !3
  %cmp270 = icmp eq i32 %96, -1
  br i1 %cmp270, label %for.inc, label %land.lhs.true272

land.lhs.true272:                                 ; preds = %for.body
  %97 = load i32** %endp148, align 8, !tbaa !0
  %arrayidx275 = getelementptr inbounds i32* %97, i64 %indvars.iv
  %98 = load i32* %arrayidx275, align 4, !tbaa !3
  %cmp276 = icmp eq i32 %98, -1
  br i1 %cmp276, label %for.inc, label %if.then278

if.then278:                                       ; preds = %land.lhs.true272
  %sub = sub nsw i32 %98, %96
  %idx.ext288 = sext i32 %96 to i64
  %add.ptr289 = getelementptr inbounds i8* %cond24, i64 %idx.ext288
  %99 = or i32 %98, %96
  %100 = or i32 %99, %sub
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %if.then311, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %if.then278
  %conv305 = sext i32 %sub to i64
  %sub.ptr.rhs.cast307 = ptrtoint i8* %add.ptr289 to i64
  %sub.ptr.sub308 = sub i64 %sub.ptr.lhs.cast306, %sub.ptr.rhs.cast307
  %cmp309 = icmp sgt i64 %conv305, %sub.ptr.sub308
  br i1 %cmp309, label %if.then311, label %if.end313

if.then311:                                       ; preds = %lor.lhs.false304, %if.then278
  %call312 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0)) #8
  br label %return

if.end313:                                        ; preds = %lor.lhs.false304
  call void @Perl_sv_setpvn(%struct.sv* %call266, i8* %add.ptr289, i64 %conv305) #8
  %102 = load i32* %sv_flags, align 4, !tbaa !3
  %and316 = and i32 %102, 536870912
  %tobool317 = icmp eq i32 %and316, 0
  br i1 %tobool317, label %for.inc, label %land.lhs.true318

land.lhs.true318:                                 ; preds = %if.end313
  %103 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private319 = getelementptr inbounds %struct.cop* %103, i64 0, i32 7
  %104 = load i8* %op_private319, align 1, !tbaa !1
  %and321 = and i8 %104, 8
  %tobool322 = icmp eq i8 %and321, 0
  br i1 %tobool322, label %land.lhs.true323, label %for.inc

land.lhs.true323:                                 ; preds = %land.lhs.true318
  %call325 = call signext i8 @Perl_is_utf8_string(i8* %add.ptr289, i64 %conv305) #8
  %tobool327 = icmp eq i8 %call325, 0
  br i1 %tobool327, label %for.inc, label %if.then328

if.then328:                                       ; preds = %land.lhs.true323
  %105 = load %struct.sv** %incdec.ptr267, align 8, !tbaa !0
  %sv_flags329 = getelementptr inbounds %struct.sv* %105, i64 0, i32 2
  %106 = load i32* %sv_flags329, align 4, !tbaa !3
  %or330 = or i32 %106, 536870912
  store i32 %or330, i32* %sv_flags329, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true323, %land.lhs.true318, %if.end313, %land.lhs.true272, %for.body, %if.then328
  %s.5 = phi i8* [ %add.ptr289, %land.lhs.true318 ], [ %add.ptr289, %if.then328 ], [ %add.ptr289, %land.lhs.true323 ], [ %add.ptr289, %if.end313 ], [ %s.4861, %land.lhs.true272 ], [ %s.4861, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %107 = trunc i64 %indvars.iv to i32
  %cmp264 = icmp slt i32 %107, %88
  br i1 %cmp264, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end261
  %sp.3.lcssa = phi %struct.sv** [ %sp.2, %if.end261 ], [ %incdec.ptr267, %for.inc ]
  %s.4.lcssa = phi i8* [ %s.3, %if.end261 ], [ %s.5, %for.inc ]
  br i1 %tobool74, label %if.then335, label %if.else397

if.then335:                                       ; preds = %for.end
  %108 = load i32* %41, align 4, !tbaa !3
  %and337 = and i32 %108, 512
  %tobool338 = icmp eq i32 %and337, 0
  br i1 %tobool338, label %if.end382, label %if.then339

if.then339:                                       ; preds = %if.then335
  %109 = load i32* %sv_flags, align 4, !tbaa !3
  %and342 = and i32 %109, 255
  %cmp343 = icmp ugt i32 %and342, 6
  br i1 %cmp343, label %land.lhs.true345, label %if.then353

land.lhs.true345:                                 ; preds = %if.then339
  %110 = load i8** %sv_any346, align 8, !tbaa !0
  %xmg_magic347 = getelementptr inbounds i8* %110, i64 40
  %111 = bitcast i8* %xmg_magic347 to %struct.magic**
  %112 = load %struct.magic** %111, align 8, !tbaa !0
  %tobool348 = icmp eq %struct.magic* %112, null
  br i1 %tobool348, label %if.then353, label %if.end351

if.end351:                                        ; preds = %land.lhs.true345
  %call350 = call %struct.magic* @Perl_mg_find(%struct.sv* %targ.0, i32 103) #8
  %tobool352 = icmp eq %struct.magic* %call350, null
  br i1 %tobool352, label %if.then353, label %if.end355

if.then353:                                       ; preds = %if.then339, %land.lhs.true345, %if.end351
  call void @Perl_sv_magic(%struct.sv* %targ.0, %struct.sv* null, i32 103, i8* null, i32 0) #8
  %call354 = call %struct.magic* @Perl_mg_find(%struct.sv* %targ.0, i32 103) #8
  br label %if.end355

if.end355:                                        ; preds = %if.end351, %if.then353
  %mg340.1 = phi %struct.magic* [ %call350, %if.end351 ], [ %call354, %if.then353 ]
  %113 = load i32** %startp143, align 8, !tbaa !0
  %114 = load i32* %113, align 4, !tbaa !3
  %cmp358 = icmp eq i32 %114, -1
  br i1 %cmp358, label %if.end382, label %if.then360

if.then360:                                       ; preds = %if.end355
  %115 = load i32** %endp148, align 8, !tbaa !0
  %116 = load i32* %115, align 4, !tbaa !3
  %mg_len363 = getelementptr inbounds %struct.magic* %mg340.1, i64 0, i32 7
  store i32 %116, i32* %mg_len363, align 4, !tbaa !3
  %117 = load i32* %113, align 4, !tbaa !3
  %118 = load i32* %115, align 4, !tbaa !3
  %cmp368 = icmp eq i32 %117, %118
  %mg_flags371 = getelementptr inbounds %struct.magic* %mg340.1, i64 0, i32 4
  %119 = load i8* %mg_flags371, align 1, !tbaa !1
  br i1 %cmp368, label %if.then370, label %if.else375

if.then370:                                       ; preds = %if.then360
  %or373 = or i8 %119, 1
  store i8 %or373, i8* %mg_flags371, align 1, !tbaa !1
  br label %if.end382

if.else375:                                       ; preds = %if.then360
  %and378 = and i8 %119, -2
  store i8 %and378, i8* %mg_flags371, align 1, !tbaa !1
  br label %if.end382

if.end382:                                        ; preds = %if.then335, %if.end355, %if.else375, %if.then370
  %120 = load i32** %startp143, align 8, !tbaa !0
  %121 = load i32* %120, align 4, !tbaa !3
  %cmp385 = icmp eq i32 %121, -1
  br i1 %cmp385, label %land.end394, label %land.rhs387

land.rhs387:                                      ; preds = %if.end382
  %122 = load i32** %endp148, align 8, !tbaa !0
  %123 = load i32* %122, align 4, !tbaa !3
  %cmp392 = icmp eq i32 %121, %123
  br label %land.end394

land.end394:                                      ; preds = %if.end382, %land.rhs387
  %124 = phi i1 [ false, %if.end382 ], [ %cmp392, %land.rhs387 ]
  %land.ext395 = zext i1 %124 to i32
  store %struct.sv** %sp.3.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %or396 = or i32 %r_flags.4, 24
  br label %play_it_again

if.else397:                                       ; preds = %for.end
  br i1 %tobool240, label %if.then399, label %if.end411

if.then399:                                       ; preds = %if.else397
  %125 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast400 = ptrtoint %struct.sv** %125 to i64
  %sub.ptr.rhs.cast401 = ptrtoint %struct.sv** %sp.3.lcssa to i64
  %sub.ptr.sub402 = sub i64 %sub.ptr.lhs.cast400, %sub.ptr.rhs.cast401
  %cmp404 = icmp slt i64 %sub.ptr.sub402, 8
  br i1 %cmp404, label %if.then406, label %if.end408

if.then406:                                       ; preds = %if.then399
  %call407 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3.lcssa, %struct.sv** %sp.3.lcssa, i32 1) #8
  br label %if.end408

if.end408:                                        ; preds = %if.then406, %if.then399
  %sp.4 = phi %struct.sv** [ %call407, %if.then406 ], [ %sp.3.lcssa, %if.then399 ]
  %incdec.ptr409 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr409, align 8, !tbaa !0
  br label %if.end411

if.end411:                                        ; preds = %if.else397, %if.end408
  %sp.5 = phi %struct.sv** [ %sp.3.lcssa, %if.else397 ], [ %incdec.ptr409, %if.end408 ]
  %126 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp412 = icmp sgt i32 %126, %7
  br i1 %cmp412, label %if.then414, label %if.end415

if.then414:                                       ; preds = %if.end411
  call void @Perl_leave_scope(i32 %7) #8
  br label %if.end415

if.end415:                                        ; preds = %if.then414, %if.end411
  store %struct.sv** %sp.5, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %127 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next416 = getelementptr inbounds %struct.op* %127, i64 0, i32 0
  %128 = load %struct.op** %op_next416, align 8, !tbaa !0
  br label %return

if.else417:                                       ; preds = %if.end231
  br i1 %tobool74, label %if.then419, label %if.end462

if.then419:                                       ; preds = %if.else417
  %129 = load i32* %sv_flags, align 4, !tbaa !3
  %and422 = and i32 %129, 255
  %cmp423 = icmp ugt i32 %and422, 6
  br i1 %cmp423, label %land.lhs.true425, label %if.then433

land.lhs.true425:                                 ; preds = %if.then419
  %130 = load i8** %sv_any346, align 8, !tbaa !0
  %xmg_magic427 = getelementptr inbounds i8* %130, i64 40
  %131 = bitcast i8* %xmg_magic427 to %struct.magic**
  %132 = load %struct.magic** %131, align 8, !tbaa !0
  %tobool428 = icmp eq %struct.magic* %132, null
  br i1 %tobool428, label %if.then433, label %if.end431

if.end431:                                        ; preds = %land.lhs.true425
  %call430 = call %struct.magic* @Perl_mg_find(%struct.sv* %targ.0, i32 103) #8
  %tobool432 = icmp eq %struct.magic* %call430, null
  br i1 %tobool432, label %if.then433, label %if.end435

if.then433:                                       ; preds = %if.then419, %land.lhs.true425, %if.end431
  call void @Perl_sv_magic(%struct.sv* %targ.0, %struct.sv* null, i32 103, i8* null, i32 0) #8
  %call434 = call %struct.magic* @Perl_mg_find(%struct.sv* %targ.0, i32 103) #8
  br label %if.end435

if.end435:                                        ; preds = %if.end431, %if.then433
  %mg420.1 = phi %struct.magic* [ %call430, %if.end431 ], [ %call434, %if.then433 ]
  %133 = load i32** %startp143, align 8, !tbaa !0
  %134 = load i32* %133, align 4, !tbaa !3
  %cmp438 = icmp eq i32 %134, -1
  br i1 %cmp438, label %if.end462, label %if.then440

if.then440:                                       ; preds = %if.end435
  %135 = load i32** %endp148, align 8, !tbaa !0
  %136 = load i32* %135, align 4, !tbaa !3
  %mg_len443 = getelementptr inbounds %struct.magic* %mg420.1, i64 0, i32 7
  store i32 %136, i32* %mg_len443, align 4, !tbaa !3
  %137 = load i32* %133, align 4, !tbaa !3
  %138 = load i32* %135, align 4, !tbaa !3
  %cmp448 = icmp eq i32 %137, %138
  %mg_flags451 = getelementptr inbounds %struct.magic* %mg420.1, i64 0, i32 4
  %139 = load i8* %mg_flags451, align 1, !tbaa !1
  br i1 %cmp448, label %if.then450, label %if.else455

if.then450:                                       ; preds = %if.then440
  %or453 = or i8 %139, 1
  store i8 %or453, i8* %mg_flags451, align 1, !tbaa !1
  br label %if.end462

if.else455:                                       ; preds = %if.then440
  %and458 = and i8 %139, -2
  store i8 %and458, i8* %mg_flags451, align 1, !tbaa !1
  br label %if.end462

if.end462:                                        ; preds = %if.end435, %if.else455, %if.then450, %if.else417
  %140 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp463 = icmp sgt i32 %140, %7
  br i1 %cmp463, label %if.then465, label %if.end466

if.then465:                                       ; preds = %if.end462
  call void @Perl_leave_scope(i32 %7) #8
  br label %if.end466

if.end466:                                        ; preds = %if.then465, %if.end462
  %incdec.ptr467 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr467, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr467, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %141 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next468 = getelementptr inbounds %struct.op* %141, i64 0, i32 0
  %142 = load %struct.op** %op_next468, align 8, !tbaa !0
  br label %return

yup:                                              ; preds = %land.lhs.true202
  br i1 %25, label %if.then470, label %if.end473

if.then470:                                       ; preds = %yup
  %or472 = or i32 %78, 524288
  store i32 %or472, i32* %reganch162, align 4, !tbaa !3
  br label %if.end473

if.end473:                                        ; preds = %if.then470, %yup
  %143 = phi i32 [ %or472, %if.then470 ], [ %78, %yup ]
  %and475 = and i32 %143, 524288
  %tobool476 = icmp eq i32 %and475, 0
  br i1 %tobool476, label %if.end478, label %if.then477

if.then477:                                       ; preds = %if.end473
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end478

if.end478:                                        ; preds = %if.end473, %if.then477
  store %struct.pmop* %pm.0, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %144 = load i32* %41, align 4, !tbaa !3
  %and480 = and i32 %144, 2
  %tobool481 = icmp eq i32 %and480, 0
  br i1 %tobool481, label %if.end487, label %if.then482

if.then482:                                       ; preds = %if.end478
  %145 = load i8* %20, align 1, !tbaa !1
  %or485 = or i8 %145, 1
  store i8 %or485, i8* %20, align 1, !tbaa !1
  br label %if.end487

if.end487:                                        ; preds = %if.end478, %if.then482
  %146 = load i32* %reganch162, align 4, !tbaa !3
  %and489 = and i32 %146, 262144
  %tobool490 = icmp eq i32 %and489, 0
  br i1 %tobool490, label %if.end492, label %if.then491

if.then491:                                       ; preds = %if.end487
  %147 = load i8** %subbeg495, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %147) #8
  %.pre897 = load i32* %reganch162, align 4, !tbaa !3
  br label %if.end492

if.end492:                                        ; preds = %if.end487, %if.then491
  %148 = phi i32 [ %146, %if.end487 ], [ %.pre897, %if.then491 ]
  %and494 = and i32 %148, -262145
  store i32 %and494, i32* %reganch162, align 4, !tbaa !3
  store i8* null, i8** %subbeg495, align 8, !tbaa !0
  br i1 %tobool74, label %if.then497, label %if.end533

if.then497:                                       ; preds = %if.end492
  store i8* %cond24, i8** %subbeg495, align 8, !tbaa !0
  %sub.ptr.lhs.cast499 = ptrtoint i8* %call182 to i64
  %sub.ptr.sub501 = sub i64 %sub.ptr.lhs.cast499, %sub.ptr.rhs.cast500
  %conv502 = trunc i64 %sub.ptr.sub501 to i32
  %149 = load i32** %startp143, align 8, !tbaa !0
  store i32 %conv502, i32* %149, align 4, !tbaa !3
  %150 = load i32* %reganch162, align 4, !tbaa !3
  %and506 = and i32 %150, 268435456
  %tobool507 = icmp eq i32 %and506, 0
  %151 = load i32* %minlen, align 4, !tbaa !3
  br i1 %tobool507, label %if.else518, label %if.then508

if.then508:                                       ; preds = %if.then497
  %call511 = call i8* @Perl_utf8_hop(i8* %call182, i32 %151) #8
  %sub.ptr.lhs.cast512 = ptrtoint i8* %call511 to i64
  %sub.ptr.sub514 = sub i64 %sub.ptr.lhs.cast512, %sub.ptr.rhs.cast500
  %conv515 = trunc i64 %sub.ptr.sub514 to i32
  %152 = load i32** %endp148, align 8, !tbaa !0
  store i32 %conv515, i32* %152, align 4, !tbaa !3
  br label %if.end528

if.else518:                                       ; preds = %if.then497
  %conv523838 = zext i32 %151 to i64
  %add524 = add nsw i64 %conv523838, %sub.ptr.sub501
  %conv525 = trunc i64 %add524 to i32
  %153 = load i32** %endp148, align 8, !tbaa !0
  store i32 %conv525, i32* %153, align 4, !tbaa !3
  br label %if.end528

if.end528:                                        ; preds = %if.else518, %if.then508
  store i32 %conv532, i32* %sublen, align 4, !tbaa !3
  br label %gotcha

if.end533:                                        ; preds = %if.end492
  %154 = load i8* @PL_sawampersand, align 1, !tbaa !1
  %tobool534 = icmp eq i8 %154, 0
  br i1 %tobool534, label %if.else559, label %if.then535

if.then535:                                       ; preds = %if.end533
  %sub.ptr.rhs.cast537 = ptrtoint i8* %t.1 to i64
  %sub.ptr.sub538 = sub i64 %sub.ptr.lhs.cast306, %sub.ptr.rhs.cast537
  %conv539 = trunc i64 %sub.ptr.sub538 to i32
  %call540 = call i8* @Perl_savepvn(i8* %t.1, i32 %conv539) #8
  store i8* %call540, i8** %subbeg495, align 8, !tbaa !0
  store i32 %conv539, i32* %sublen, align 4, !tbaa !3
  %155 = load i32* %reganch162, align 4, !tbaa !3
  %or548 = or i32 %155, 262144
  store i32 %or548, i32* %reganch162, align 4, !tbaa !3
  %sub.ptr.lhs.cast549 = ptrtoint i8* %call182 to i64
  %sub.ptr.sub551 = sub i64 %sub.ptr.lhs.cast549, %sub.ptr.rhs.cast537
  %conv552 = trunc i64 %sub.ptr.sub551 to i32
  %156 = load i32** %startp143, align 8, !tbaa !0
  store i32 %conv552, i32* %156, align 4, !tbaa !3
  %157 = load i32* %minlen, align 4, !tbaa !3
  %add556 = add nsw i32 %157, %conv552
  %158 = load i32** %endp148, align 8, !tbaa !0
  store i32 %add556, i32* %158, align 4, !tbaa !3
  br label %if.end575

if.else559:                                       ; preds = %if.end533
  %sub.ptr.lhs.cast560 = ptrtoint i8* %call182 to i64
  %sub.ptr.sub562 = sub i64 %sub.ptr.lhs.cast560, %sub.ptr.rhs.cast500
  %conv563 = trunc i64 %sub.ptr.sub562 to i32
  %159 = load i32** %startp143, align 8, !tbaa !0
  store i32 %conv563, i32* %159, align 4, !tbaa !3
  %160 = load i32* %minlen, align 4, !tbaa !3
  %conv570837 = zext i32 %160 to i64
  %add571 = add nsw i64 %conv570837, %sub.ptr.sub562
  %conv572 = trunc i64 %add571 to i32
  %161 = load i32** %endp148, align 8, !tbaa !0
  store i32 %conv572, i32* %161, align 4, !tbaa !3
  br label %if.end575

if.end575:                                        ; preds = %if.else559, %if.then535
  %lastcloseparen = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 14
  store i32 0, i32* %lastcloseparen, align 4, !tbaa !3
  %lastparen = getelementptr inbounds %struct.regexp* %rx.0, i64 0, i32 13
  store i32 0, i32* %lastparen, align 4, !tbaa !3
  store i32 0, i32* %nparens237, align 4, !tbaa !3
  %162 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp577 = icmp sgt i32 %162, %7
  br i1 %cmp577, label %if.then579, label %if.end580

if.then579:                                       ; preds = %if.end575
  call void @Perl_leave_scope(i32 %7) #8
  br label %if.end580

if.end580:                                        ; preds = %if.then579, %if.end575
  %incdec.ptr581 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr581, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr581, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %163 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next582 = getelementptr inbounds %struct.op* %163, i64 0, i32 0
  %164 = load %struct.op** %op_next582, align 8, !tbaa !0
  br label %return

ret_no:                                           ; preds = %if.then181, %if.end208
  br i1 %tobool74, label %land.lhs.true584, label %if.end605

land.lhs.true584:                                 ; preds = %if.then147, %ret_no
  %165 = load i32* %41, align 4, !tbaa !3
  %and586 = and i32 %165, 512
  %tobool587 = icmp eq i32 %and586, 0
  br i1 %tobool587, label %if.then588, label %if.end605

if.then588:                                       ; preds = %land.lhs.true584
  %166 = load i32* %sv_flags, align 4, !tbaa !3
  %and590 = and i32 %166, 255
  %cmp591 = icmp ugt i32 %and590, 6
  br i1 %cmp591, label %land.lhs.true593, label %if.end605

land.lhs.true593:                                 ; preds = %if.then588
  %167 = load i8** %sv_any346, align 8, !tbaa !0
  %xmg_magic595 = getelementptr inbounds i8* %167, i64 40
  %168 = bitcast i8* %xmg_magic595 to %struct.magic**
  %169 = load %struct.magic** %168, align 8, !tbaa !0
  %tobool596 = icmp eq %struct.magic* %169, null
  br i1 %tobool596, label %if.end605, label %if.then597

if.then597:                                       ; preds = %land.lhs.true593
  %call599 = call %struct.magic* @Perl_mg_find(%struct.sv* %targ.0, i32 103) #8
  %tobool600 = icmp eq %struct.magic* %call599, null
  br i1 %tobool600, label %if.end605, label %if.then601

if.then601:                                       ; preds = %if.then597
  %mg_len602 = getelementptr inbounds %struct.magic* %call599, i64 0, i32 7
  store i32 -1, i32* %mg_len602, align 4, !tbaa !3
  br label %if.end605

if.end605:                                        ; preds = %if.then597, %land.lhs.true593, %land.lhs.true584, %if.then588, %if.then601, %ret_no
  %170 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp606 = icmp sgt i32 %170, %7
  br i1 %cmp606, label %if.then608, label %if.end609

if.then608:                                       ; preds = %if.end605
  call void @Perl_leave_scope(i32 %7) #8
  br label %if.end609

if.end609:                                        ; preds = %if.then608, %if.end605
  br i1 %cmp232, label %if.then612, label %if.end614

if.then612:                                       ; preds = %if.end609
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %171 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next613 = getelementptr inbounds %struct.op* %171, i64 0, i32 0
  %172 = load %struct.op** %op_next613, align 8, !tbaa !0
  br label %return

if.end614:                                        ; preds = %if.end609
  %incdec.ptr615 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr615, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr615, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %173 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next616 = getelementptr inbounds %struct.op* %173, i64 0, i32 0
  %174 = load %struct.op** %op_next616, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end614, %if.then612, %if.end580, %if.end466, %if.end415, %if.then311, %if.end57, %if.then56, %if.then26
  %retval.0 = phi %struct.op* [ %33, %if.then56 ], [ %35, %if.end57 ], [ %172, %if.then612 ], [ %174, %if.end614 ], [ %call312, %if.then311 ], [ %128, %if.end415 ], [ %142, %if.end466 ], [ %164, %if.end580 ], [ %call27, %if.then26 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: optsize
declare i8* @Perl_utf8_hop(i8*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #1

; Function Attrs: optsize
declare signext i8 @Perl_do_open(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_nextargv(%struct.gv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_do_close(%struct.gv*, i8 signext) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_start_glob(%struct.sv*, %struct.io*) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare i8* @strerror(i32) #1

; Function Attrs: optsize
declare void @Perl_sv_force_normal(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_unref(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_gets(%struct.sv*, %struct._PerlIO**, i32) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: optsize
declare void @Perl_PerlIO_clearerr(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #4

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_string_loc(i8*, i64, i8**) #1

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_enter() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.end24, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i32 %and, 2
  br i1 %cmp5, label %if.end24, label %cond.end15

cond.end15:                                       ; preds = %cond.false
  %not.cmp12 = icmp eq i32 %and, 3
  br i1 %not.cmp12, label %if.end24, label %if.then

if.then:                                          ; preds = %cond.end15
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  %4 = load i32* %si_cxix, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %4, -1
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then
  %idxprom = sext i32 %4 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 1
  %5 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 6
  %6 = load i8* %blku_gimme, align 1, !tbaa !1
  br label %if.end24

if.end24:                                         ; preds = %cond.end15, %cond.false, %entry, %if.then, %if.then21
  %gimme.0 = phi i8 [ %6, %if.then21 ], [ 1, %cond.end15 ], [ 0, %if.then ], [ -128, %entry ], [ 0, %cond.false ]
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #8
  %7 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %7, i32* @PL_tmps_floor, align 4, !tbaa !3
  %8 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix25 = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 2
  %9 = load i32* %si_cxix25, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %8, i64 0, i32 3
  %10 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp26 = icmp slt i32 %9, %10
  br i1 %cmp26, label %cond.true28, label %cond.false30

cond.true28:                                      ; preds = %if.end24
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %si_cxix25, align 4, !tbaa !3
  br label %cond.end32

cond.false30:                                     ; preds = %if.end24
  %call = tail call i32 @Perl_cxinc() #8
  %11 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix31 = getelementptr inbounds %struct.stackinfo* %11, i64 0, i32 2
  store i32 %call, i32* %si_cxix31, align 4, !tbaa !3
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false30, %cond.true28
  %12 = phi i32 [ %call, %cond.false30 ], [ %inc, %cond.true28 ]
  %13 = phi %struct.stackinfo* [ %11, %cond.false30 ], [ %8, %cond.true28 ]
  %idxprom35 = sext i32 %12 to i64
  %si_cxstack36 = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 1
  %14 = load %struct.context** %si_cxstack36, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 0
  store i32 5, i32* %cx_type, align 4, !tbaa !3
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div69 = lshr exact i64 %sub.ptr.sub, 3
  %conv38 = trunc i64 %sub.ptr.div69 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 0
  store i32 %conv38, i32* %blku_oldsp, align 4, !tbaa !3
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 1
  store %struct.cop* %16, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %17 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %18 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast43 = ptrtoint i32* %17 to i64
  %sub.ptr.rhs.cast44 = ptrtoint i32* %18 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %sub.ptr.div4670 = lshr exact i64 %sub.ptr.sub45, 2
  %conv47 = trunc i64 %sub.ptr.div4670 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 3
  store i32 %conv47, i32* %blku_oldmarksp, align 4, !tbaa !3
  %19 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 4
  store i32 %19, i32* %blku_oldscopesp, align 4, !tbaa !3
  %20 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 2
  store i32 %20, i32* %blku_oldretsp, align 4, !tbaa !3
  %21 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 5
  store %struct.pmop* %21, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme59 = getelementptr inbounds %struct.context* %14, i64 %idxprom35, i32 1, i32 0, i32 6
  store i8 %gimme.0, i8* %blku_gimme59, align 1, !tbaa !1
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %22 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %22, i64 0, i32 0
  %23 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %23
}

; Function Attrs: optsize
declare i32 @Perl_cxinc() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_helem() #0 {
entry:
  %n_a = alloca i64, align 8
  %keylen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %2 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %3 = bitcast %struct.sv* %2 to %struct.hv*
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %4, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %and = and i8 %5, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %op_private = getelementptr inbounds %struct.op* %4, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and3 = and i8 %6, 8
  %tobool4 = icmp eq i8 %and3, 0
  br i1 %tobool4, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %call = call i32 @Perl_is_lvalue_sub() #8
  %tobool5 = icmp ne i32 %call, 0
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs, %land.rhs
  %7 = phi %struct.op* [ %4, %lor.rhs ], [ %.pre, %land.rhs ], [ %4, %entry ]
  %8 = phi i1 [ false, %lor.rhs ], [ %tobool5, %land.rhs ], [ true, %entry ]
  %op_private6 = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %9 = load i8* %op_private6, align 1, !tbaa !1
  %conv7 = zext i8 %9 to i32
  %and8 = and i32 %conv7, 16
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %11 = and i32 %10, 9437184
  %12 = icmp eq i32 %11, 9437184
  br i1 %12, label %cond.true, label %cond.end

cond.true:                                        ; preds = %lor.end
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %13 = load i8** %sv_any, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %13, i64 24
  %14 = bitcast i8* %xuv_uv to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  %phitmp = trunc i64 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ 0, %lor.end ]
  %16 = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %17 = load i32* %16, align 4, !tbaa !3
  %and16 = and i32 %17, 255
  switch i32 %and16, label %if.else84 [
    i32 11, label %if.then
    i32 10, label %if.then69
  ]

if.then:                                          ; preds = %cond.end
  %tobool21 = icmp slt i8 %9, 0
  br i1 %tobool21, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then
  %and24 = and i32 %17, 32768
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %cond.true49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22
  %call26 = call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 69) #8
  %tobool27 = icmp eq %struct.magic* %call26, null
  br i1 %tobool27, label %lor.lhs.false28, label %cond.true49

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %call29 = call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 80) #8
  %tobool30 = icmp eq %struct.magic* %call29, null
  br i1 %tobool30, label %if.end, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %lor.lhs.false28
  %mg_obj = getelementptr inbounds %struct.magic* %call29, i64 0, i32 5
  %18 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool32 = icmp eq %struct.sv* %18, null
  br i1 %tobool32, label %cond.false35, label %cond.end38

cond.false35:                                     ; preds = %land.lhs.true31
  %call36 = call %struct.sv* @Perl_newRV(%struct.sv* %2) #8
  %call37 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call36) #8
  br label %cond.end38

cond.end38:                                       ; preds = %land.lhs.true31, %cond.false35
  %cond39 = phi %struct.sv* [ %call37, %cond.false35 ], [ %18, %land.lhs.true31 ]
  %sv_any40 = getelementptr inbounds %struct.sv* %cond39, i64 0, i32 0
  %19 = load i8** %sv_any40, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %19 to %struct.sv**
  %20 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any41 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %21 = load i8** %sv_any41, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %21, i64 48
  %22 = bitcast i8* %xmg_stash to %struct.hv**
  %23 = load %struct.hv** %22, align 8, !tbaa !0
  %tobool42 = icmp eq %struct.hv* %23, null
  br i1 %tobool42, label %if.end, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %cond.end38
  %call44 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %23, i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0), i32 1) #8
  %tobool45 = icmp eq %struct.gv* %call44, null
  br i1 %tobool45, label %if.end, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %call47 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %23, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i32 1) #8
  %tobool48 = icmp eq %struct.gv* %call47, null
  br i1 %tobool48, label %if.end, label %cond.true49

cond.true49:                                      ; preds = %land.lhs.true46, %lor.lhs.false, %if.then22
  %call50 = call signext i8 @Perl_hv_exists_ent(%struct.hv* %3, %struct.sv* %1, i32 0) #8
  %conv51 = sext i8 %call50 to i32
  br label %if.end

if.end:                                           ; preds = %cond.true49, %lor.lhs.false28, %cond.end38, %land.lhs.true43, %land.lhs.true46, %if.then
  %preeminent.0 = phi i32 [ 0, %if.then ], [ %conv51, %cond.true49 ], [ 1, %land.lhs.true46 ], [ 1, %land.lhs.true43 ], [ 1, %cond.end38 ], [ 1, %lor.lhs.false28 ]
  %lnot = icmp eq i32 %and8, 0
  %lnot. = and i1 %8, %lnot
  %land.ext = zext i1 %lnot. to i32
  %call59 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %3, %struct.sv* %1, i32 %land.ext, i32 %cond) #8
  %tobool60 = icmp eq %struct.he* %call59, null
  %hent_val = getelementptr inbounds %struct.he* %call59, i64 0, i32 2
  %cond64 = select i1 %tobool60, %struct.sv** null, %struct.sv** %hent_val
  br label %if.end87

if.then69:                                        ; preds = %cond.end
  %tobool73 = icmp slt i8 %9, 0
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then69
  %call75 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0)) #8
  br label %return

if.end76:                                         ; preds = %if.then69
  %24 = bitcast %struct.sv* %2 to %struct.av*
  %lnot80 = icmp eq i32 %and8, 0
  %lnot80. = and i1 %8, %lnot80
  %land.ext82 = zext i1 %lnot80. to i32
  %call83 = call %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %24, %struct.sv* %1, i32 %land.ext82, i32 %cond) #8
  br label %if.end87

if.else84:                                        ; preds = %cond.end
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %25 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %25, i64 0, i32 0
  %26 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end87:                                         ; preds = %if.end, %if.end76
  %preeminent.1 = phi i32 [ 0, %if.end76 ], [ %preeminent.0, %if.end ]
  %svp.0 = phi %struct.sv** [ %call83, %if.end76 ], [ %cond64, %if.end ]
  br i1 %8, label %if.then89, label %if.end175

if.then89:                                        ; preds = %if.end87
  %tobool90 = icmp eq %struct.sv** %svp.0, null
  br i1 %tobool90, label %if.then94, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.then89
  %27 = load %struct.sv** %svp.0, align 8, !tbaa !0
  %cmp92 = icmp eq %struct.sv* %27, @PL_sv_undef
  br i1 %cmp92, label %if.then94, label %if.end123

if.then94:                                        ; preds = %if.then89, %lor.lhs.false91
  %tobool95 = icmp eq i32 %and8, 0
  br i1 %tobool95, label %if.then96, label %if.end109

if.then96:                                        ; preds = %if.then94
  %28 = load i32* %sv_flags, align 4, !tbaa !3
  %and98 = and i32 %28, 262144
  %cmp99 = icmp eq i32 %and98, 0
  br i1 %cmp99, label %cond.false104, label %cond.true101

cond.true101:                                     ; preds = %if.then96
  %sv_any102 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %29 = load i8** %sv_any102, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %29, i64 8
  %30 = bitcast i8* %xpv_cur to i64*
  %31 = load i64* %30, align 8, !tbaa !4
  store i64 %31, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %29 to i8**
  %32 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end106

cond.false104:                                    ; preds = %if.then96
  %call105 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %n_a, i32 2) #8
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false104, %cond.true101
  %cond107 = phi i8* [ %32, %cond.true101 ], [ %call105, %cond.false104 ]
  %call108 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_helem, i64 0, i64 0), i8* %cond107) #8
  br label %return

if.end109:                                        ; preds = %if.then94
  %call110 = call %struct.sv* @Perl_sv_newmortal() #8
  %call111 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call110, i32 9) #8
  %sv_any112 = getelementptr inbounds %struct.sv* %call110, i64 0, i32 0
  %33 = load i8** %sv_any112, align 8, !tbaa !0
  %34 = getelementptr inbounds i8* %33, i64 80
  store i8 121, i8* %34, align 1, !tbaa !1
  %call113 = call %struct.sv* @Perl_newSVsv(%struct.sv* %1) #8
  call void @Perl_sv_magic(%struct.sv* %call110, %struct.sv* %call113, i32 121, i8* null, i32 0) #8
  call void @Perl_sv_free(%struct.sv* %call113) #8
  store %struct.sv* %2, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool114 = icmp eq %struct.sv* %2, null
  br i1 %tobool114, label %land.end117, label %land.rhs115

land.rhs115:                                      ; preds = %if.end109
  %sv_refcnt = getelementptr inbounds %struct.sv* %2, i64 0, i32 1
  %35 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %35, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end117

land.end117:                                      ; preds = %if.end109, %land.rhs115
  %36 = load i8** %sv_any112, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %36, i64 72
  %37 = bitcast i8* %xlv_targ to %struct.sv**
  store %struct.sv* %2, %struct.sv** %37, align 8, !tbaa !0
  %38 = load i8** %sv_any112, align 8, !tbaa !0
  %xlv_targlen = getelementptr inbounds i8* %38, i64 64
  %39 = bitcast i8* %xlv_targlen to i64*
  store i64 1, i64* %39, align 8, !tbaa !4
  store %struct.sv* %call110, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %40 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next122 = getelementptr inbounds %struct.op* %40, i64 0, i32 0
  %41 = load %struct.op** %op_next122, align 8, !tbaa !0
  br label %return

if.end123:                                        ; preds = %lor.lhs.false91
  %42 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private124 = getelementptr inbounds %struct.op* %42, i64 0, i32 7
  %43 = load i8* %op_private124, align 1, !tbaa !1
  %conv125 = zext i8 %43 to i32
  %and126 = and i32 %conv125, 128
  %tobool127 = icmp eq i32 %and126, 0
  br i1 %tobool127, label %if.else164, label %if.then128

if.then128:                                       ; preds = %if.end123
  %sv_any129 = bitcast %struct.sv* %2 to %struct.xpvhv**
  %44 = load %struct.xpvhv** %sv_any129, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %44, i64 0, i32 10
  %45 = load i8** %xhv_name, align 8, !tbaa !0
  %tobool130 = icmp eq i8* %45, null
  br i1 %tobool130, label %if.else142, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %if.then128
  %sv_flags132 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %46 = load i32* %sv_flags132, align 4, !tbaa !3
  %and133 = and i32 %46, 255
  %cmp134 = icmp eq i32 %and133, 13
  br i1 %cmp134, label %if.then136, label %if.else142

if.then136:                                       ; preds = %land.lhs.true131
  %47 = bitcast %struct.sv* %27 to %struct.gv*
  %op_flags137 = getelementptr inbounds %struct.op* %42, i64 0, i32 6
  %48 = load i8* %op_flags137, align 1, !tbaa !1
  %.lobit = lshr i8 %48, 7
  %49 = zext i8 %.lobit to i32
  %.not = xor i32 %49, 1
  call void @Perl_save_gp(%struct.gv* %47, i32 %.not) #8
  br label %if.end175

if.else142:                                       ; preds = %if.then128, %land.lhs.true131
  %tobool143 = icmp eq i32 %preeminent.1, 0
  br i1 %tobool143, label %if.then144, label %if.else161

if.then144:                                       ; preds = %if.else142
  %50 = load i32* %sv_flags, align 4, !tbaa !3
  %and146 = and i32 %50, 262144
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %cond.false154, label %cond.true149

cond.true149:                                     ; preds = %if.then144
  %sv_any150 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %51 = load i8** %sv_any150, align 8, !tbaa !0
  %xpv_cur151 = getelementptr inbounds i8* %51, i64 8
  %52 = bitcast i8* %xpv_cur151 to i64*
  %53 = load i64* %52, align 8, !tbaa !4
  store i64 %53, i64* %keylen, align 8, !tbaa !4
  %xpv_pv153 = bitcast i8* %51 to i8**
  %54 = load i8** %xpv_pv153, align 8, !tbaa !0
  br label %cond.end156

cond.false154:                                    ; preds = %if.then144
  %call155 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %keylen, i32 2) #8
  %.pre246 = load i64* %keylen, align 8, !tbaa !4
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false154, %cond.true149
  %55 = phi i64 [ %53, %cond.true149 ], [ %.pre246, %cond.false154 ]
  %cond157 = phi i8* [ %54, %cond.true149 ], [ %call155, %cond.false154 ]
  %conv158 = trunc i64 %55 to i32
  %call159 = call i8* @Perl_savepvn(i8* %cond157, i32 %conv158) #8
  %56 = load i64* %keylen, align 8, !tbaa !4
  %conv160 = trunc i64 %56 to i32
  call void @Perl_save_delete(%struct.hv* %3, i8* %call159, i32 %conv160) #8
  br label %if.end175

if.else161:                                       ; preds = %if.else142
  call void @Perl_save_helem(%struct.hv* %3, %struct.sv* %1, %struct.sv** %svp.0) #8
  br label %if.end175

if.else164:                                       ; preds = %if.end123
  %and167 = and i32 %conv125, 96
  %tobool168 = icmp eq i32 %and167, 0
  br i1 %tobool168, label %if.end175, label %if.then169

if.then169:                                       ; preds = %if.else164
  call void @Perl_vivify_ref(%struct.sv* %27, i32 %and167) #9
  br label %if.end175

if.end175:                                        ; preds = %if.else164, %cond.end156, %if.else161, %if.then136, %if.then169, %if.end87
  %tobool176 = icmp eq %struct.sv** %svp.0, null
  br i1 %tobool176, label %cond.end179, label %cond.true177

cond.true177:                                     ; preds = %if.end175
  %57 = load %struct.sv** %svp.0, align 8, !tbaa !0
  br label %cond.end179

cond.end179:                                      ; preds = %if.end175, %cond.true177
  %cond180 = phi %struct.sv* [ %57, %cond.true177 ], [ @PL_sv_undef, %if.end175 ]
  br i1 %8, label %if.end188, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %cond.end179
  %sv_flags183 = getelementptr inbounds %struct.sv* %cond180, i64 0, i32 2
  %58 = load i32* %sv_flags183, align 4, !tbaa !3
  %and184 = and i32 %58, 8192
  %tobool185 = icmp eq i32 %and184, 0
  br i1 %tobool185, label %if.end188, label %if.then186

if.then186:                                       ; preds = %land.lhs.true182
  %call187 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %cond180) #8
  br label %if.end188

if.end188:                                        ; preds = %land.lhs.true182, %if.then186, %cond.end179
  %sv.0 = phi %struct.sv* [ %cond180, %cond.end179 ], [ %call187, %if.then186 ], [ %cond180, %land.lhs.true182 ]
  store %struct.sv* %sv.0, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %59 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next190 = getelementptr inbounds %struct.op* %59, i64 0, i32 0
  %60 = load %struct.op** %op_next190, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end188, %land.end117, %cond.end106, %if.else84, %if.then74
  %retval.0 = phi %struct.op* [ %41, %land.end117 ], [ %call108, %cond.end106 ], [ %60, %if.end188 ], [ %call75, %if.then74 ], [ %26, %if.else84 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_avhv_fetch_ent(%struct.av*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_save_gp(%struct.gv*, i32) #1

; Function Attrs: optsize
declare void @Perl_save_delete(%struct.hv*, i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_save_helem(%struct.hv*, %struct.sv*, %struct.sv**) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leave() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %2 = load i8* %op_flags, align 1, !tbaa !1
  %tobool = icmp slt i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  %4 = load i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %4 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 1
  %5 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %6 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %5, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %6, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix1 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 2
  %8 = load i32* %si_cxix1, align 4, !tbaa !3
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %si_cxix1, align 4, !tbaa !3
  %idxprom2 = sext i32 %8 to i64
  %si_cxstack3 = getelementptr inbounds %struct.stackinfo* %7, i64 0, i32 1
  %9 = load %struct.context** %si_cxstack3, align 8, !tbaa !0
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %blku_oldsp = getelementptr inbounds %struct.context* %9, i64 %idxprom2, i32 1, i32 0, i32 0
  %11 = load i32* %blku_oldsp, align 4, !tbaa !3
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %10, i64 %idx.ext
  %blku_oldcop = getelementptr inbounds %struct.context* %9, i64 %idxprom2, i32 1, i32 0, i32 1
  %12 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %12, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %13 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %9, i64 %idxprom2, i32 1, i32 0, i32 3
  %14 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext11 = sext i32 %14 to i64
  %add.ptr12 = getelementptr inbounds i32* %13, i64 %idx.ext11
  store i32* %add.ptr12, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %9, i64 %idxprom2, i32 1, i32 0, i32 4
  %15 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %15, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %9, i64 %idxprom2, i32 1, i32 0, i32 2
  %16 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %16, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm19 = getelementptr inbounds %struct.context* %9, i64 %idxprom2, i32 1, i32 0, i32 5
  %17 = load %struct.pmop** %blku_oldpm19, align 8, !tbaa !0
  %18 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags23 = getelementptr inbounds %struct.op* %18, i64 0, i32 6
  %19 = load i8* %op_flags23, align 1, !tbaa !1
  %conv24 = zext i8 %19 to i32
  %and25 = and i32 %conv24, 3
  switch i32 %and25, label %if.then44 [
    i32 1, label %if.end58.thread137
    i32 2, label %if.end58.thread138
    i32 3, label %if.else89.thread
  ]

if.else89.thread:                                 ; preds = %if.end
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.then92

if.end58.thread137:                               ; preds = %if.end
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end104

if.end58.thread138:                               ; preds = %if.end
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.then65

if.then44:                                        ; preds = %if.end
  %20 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix45 = getelementptr inbounds %struct.stackinfo* %20, i64 0, i32 2
  %21 = load i32* %si_cxix45, align 4, !tbaa !3
  %cmp46 = icmp sgt i32 %21, -1
  br i1 %cmp46, label %if.end58, label %if.end58.thread

if.end58.thread:                                  ; preds = %if.then44
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.then65

if.end58:                                         ; preds = %if.then44
  %idxprom50 = sext i32 %21 to i64
  %si_cxstack51 = getelementptr inbounds %struct.stackinfo* %20, i64 0, i32 1
  %22 = load %struct.context** %si_cxstack51, align 8, !tbaa !0
  %blku_gimme55 = getelementptr inbounds %struct.context* %22, i64 %idxprom50, i32 1, i32 0, i32 6
  %23 = load i8* %blku_gimme55, align 1, !tbaa !1
  %conv56 = zext i8 %23 to i32
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  switch i32 %conv56, label %if.else89 [
    i32 128, label %if.end104
    i32 0, label %if.then65
  ]

if.then65:                                        ; preds = %if.end58.thread138, %if.end58.thread, %if.end58
  %add.ptr.sum134 = add i64 %idx.ext, 1
  %add.ptr66 = getelementptr inbounds %struct.sv** %10, i64 %add.ptr.sum134
  %cmp67 = icmp ugt %struct.sv** %add.ptr66, %0
  br i1 %cmp67, label %if.else75, label %if.then69

if.then69:                                        ; preds = %if.then65
  %24 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %and70 = and i32 %25, 2560
  %tobool71 = icmp eq i32 %and70, 0
  br i1 %tobool71, label %if.else73, label %if.then72

if.then72:                                        ; preds = %if.then69
  store %struct.sv* %24, %struct.sv** %add.ptr66, align 8, !tbaa !0
  br label %if.end104

if.else73:                                        ; preds = %if.then69
  %call = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %24) #8
  store %struct.sv* %call, %struct.sv** %add.ptr66, align 8, !tbaa !0
  br label %if.end104

if.else75:                                        ; preds = %if.then65
  %26 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp76 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp76, label %if.then78, label %if.end87

if.then78:                                        ; preds = %if.else75
  %27 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast80 = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast80
  %call84 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %add.ptr66, i32 0) #8
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %29 = shl i64 %sub.ptr.sub81, 29
  %idx.ext85 = ashr i64 %29, 32
  %add.ptr86 = getelementptr inbounds %struct.sv** %28, i64 %idx.ext85
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %if.else75
  %mark.0 = phi %struct.sv** [ %add.ptr86, %if.then78 ], [ %add.ptr66, %if.else75 ]
  store %struct.sv* @PL_sv_undef, %struct.sv** %mark.0, align 8, !tbaa !0
  br label %if.end104

if.else89:                                        ; preds = %if.end58
  %cmp90 = icmp eq i8 %23, 1
  br i1 %cmp90, label %if.then92, label %if.end104

if.then92:                                        ; preds = %if.else89.thread, %if.else89
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr93 = getelementptr inbounds %struct.sv** %10, i64 %add.ptr.sum
  %cmp94139 = icmp ugt %struct.sv** %add.ptr93, %0
  br i1 %cmp94139, label %if.end104, label %for.body

for.body:                                         ; preds = %if.then92, %for.inc
  %mark.2140 = phi %struct.sv** [ %incdec.ptr, %for.inc ], [ %add.ptr93, %if.then92 ]
  %30 = load %struct.sv** %mark.2140, align 8, !tbaa !0
  %sv_flags96 = getelementptr inbounds %struct.sv* %30, i64 0, i32 2
  %31 = load i32* %sv_flags96, align 4, !tbaa !3
  %and97 = and i32 %31, 2560
  %tobool98 = icmp eq i32 %and97, 0
  br i1 %tobool98, label %if.then99, label %for.inc

if.then99:                                        ; preds = %for.body
  %call100 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %30) #8
  store %struct.sv* %call100, %struct.sv** %mark.2140, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then99
  %incdec.ptr = getelementptr inbounds %struct.sv** %mark.2140, i64 1
  %cmp94 = icmp ugt %struct.sv** %incdec.ptr, %0
  br i1 %cmp94, label %if.end104, label %for.body

if.end104:                                        ; preds = %if.then92, %for.inc, %if.end58.thread137, %if.end87, %if.else73, %if.then72, %if.end58, %if.else89
  %sp.0 = phi %struct.sv** [ %0, %if.else89 ], [ %add.ptr, %if.end58 ], [ %add.ptr66, %if.then72 ], [ %add.ptr66, %if.else73 ], [ %mark.0, %if.end87 ], [ %add.ptr, %if.end58.thread137 ], [ %0, %for.inc ], [ %0, %if.then92 ]
  store %struct.pmop* %17, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #8
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %32 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %32, i64 0, i32 0
  %33 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %33
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_iter() #0 {
entry:
  %maxlen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %2 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 2
  %3 = load i32* %si_cxix, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %2, i64 0, i32 1
  %4 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 0
  %5 = load i32* %cx_type, align 4, !tbaa !3
  %and = and i32 %5, 255
  %cmp1 = icmp eq i32 %and, 3
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0)) #8
  br label %return

if.end4:                                          ; preds = %if.end
  %itervar = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %6 = load %struct.sv*** %itervar, align 8, !tbaa !0
  %iterary = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 8
  %7 = load %struct.av** %iterary, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.av* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and9 = and i32 %8, 255
  %cmp10 = icmp eq i32 %and9, 10
  br i1 %cmp10, label %if.end96, label %if.then11

if.then11:                                        ; preds = %if.end4
  %iterlval = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %9 = load %struct.sv** %iterlval, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %9, null
  br i1 %tobool, label %if.end59, label %if.then16

if.then16:                                        ; preds = %if.then11
  store i64 0, i64* %maxlen, align 8, !tbaa !4
  %10 = bitcast %struct.av* %7 to %struct.sv*
  %and23 = and i32 %8, 118423552
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %cond.end32, label %cond.true

cond.true:                                        ; preds = %if.then16
  %and26 = and i32 %8, 262144
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %cond.false, label %cond.true28

cond.true28:                                      ; preds = %cond.true
  %sv_any = bitcast %struct.av* %7 to i8**
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %maxlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %11 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end32

cond.false:                                       ; preds = %cond.true
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %maxlen, i32 2) #8
  br label %cond.end32

cond.end32:                                       ; preds = %if.then16, %cond.true28, %cond.false
  %cond33 = phi i8* [ %14, %cond.true28 ], [ %call30, %cond.false ], [ getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), %if.then16 ]
  %sv_flags34 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %15 = load i32* %sv_flags34, align 4, !tbaa !3
  %and35 = and i32 %15, 196608
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %cond.end32
  %sv_any37 = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %16 = load i8** %sv_any37, align 8, !tbaa !0
  %xpv_cur38 = getelementptr inbounds i8* %16, i64 8
  %17 = bitcast i8* %xpv_cur38 to i64*
  %18 = load i64* %17, align 8, !tbaa !4
  %19 = load i64* %maxlen, align 8, !tbaa !4
  %cmp39 = icmp ugt i64 %18, %19
  br i1 %cmp39, label %if.end56, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  %20 = load %struct.sv** %6, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %20, i64 0, i32 1
  %21 = load i32* %sv_refcnt, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %21, 1
  br i1 %cmp41, label %land.lhs.true42, label %if.else

land.lhs.true42:                                  ; preds = %if.then40
  %sv_flags43 = getelementptr inbounds %struct.sv* %20, i64 0, i32 2
  %22 = load i32* %sv_flags43, align 4, !tbaa !3
  %and44 = and i32 %22, 57344
  %tobool45 = icmp eq i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %land.lhs.true42
  call void @Perl_sv_setsv_flags(%struct.sv* %20, %struct.sv* %9, i32 2) #8
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true42, %if.then40
  %call47 = call %struct.sv* @Perl_newSVsv(%struct.sv* %9) #8
  store %struct.sv* %call47, %struct.sv** %6, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %20) #8
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then46
  %23 = load i8** %sv_any37, align 8, !tbaa !0
  %xpv_pv50 = bitcast i8* %23 to i8**
  %24 = load i8** %xpv_pv50, align 8, !tbaa !0
  %call51 = call i32 @strcmp(i8* %24, i8* %cond33) #8
  %tobool52 = icmp eq i32 %call51, 0
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.end48
  call void @Perl_sv_setiv(%struct.sv* %9, i64 0) #8
  br label %if.end55

if.else54:                                        ; preds = %if.end48
  call void @Perl_sv_inc(%struct.sv* %9) #8
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %25 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %25, i64 0, i32 0
  %26 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end56:                                         ; preds = %land.lhs.true, %cond.end32
  %incdec.ptr57 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr57, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr57, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %27 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next58 = getelementptr inbounds %struct.op* %27, i64 0, i32 0
  %28 = load %struct.op** %op_next58, align 8, !tbaa !0
  br label %return

if.end59:                                         ; preds = %if.then11
  %iterix = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 9
  %29 = load i64* %iterix, align 8, !tbaa !4
  %itermax = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 10
  %30 = load i64* %itermax, align 8, !tbaa !4
  %cmp68 = icmp sgt i64 %29, %30
  br i1 %cmp68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end59
  %incdec.ptr70 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr70, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr70, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %31 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next71 = getelementptr inbounds %struct.op* %31, i64 0, i32 0
  %32 = load %struct.op** %op_next71, align 8, !tbaa !0
  br label %return

if.end72:                                         ; preds = %if.end59
  %33 = load %struct.sv** %6, align 8, !tbaa !0
  %sv_refcnt73 = getelementptr inbounds %struct.sv* %33, i64 0, i32 1
  %34 = load i32* %sv_refcnt73, align 4, !tbaa !3
  %cmp74 = icmp eq i32 %34, 1
  br i1 %cmp74, label %land.lhs.true75, label %if.else85

land.lhs.true75:                                  ; preds = %if.end72
  %sv_flags76 = getelementptr inbounds %struct.sv* %33, i64 0, i32 2
  %35 = load i32* %sv_flags76, align 4, !tbaa !3
  %and77 = and i32 %35, 57344
  %tobool78 = icmp eq i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.else85

if.then79:                                        ; preds = %land.lhs.true75
  %inc = add nsw i64 %29, 1
  store i64 %inc, i64* %iterix, align 8, !tbaa !4
  call void @Perl_sv_setiv(%struct.sv* %33, i64 %29) #8
  br label %if.end93

if.else85:                                        ; preds = %land.lhs.true75, %if.end72
  %inc91 = add nsw i64 %29, 1
  store i64 %inc91, i64* %iterix, align 8, !tbaa !4
  %call92 = call %struct.sv* @Perl_newSViv(i64 %29) #8
  store %struct.sv* %call92, %struct.sv** %6, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %33) #8
  br label %if.end93

if.end93:                                         ; preds = %if.else85, %if.then79
  %incdec.ptr94 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr94, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr94, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %36 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next95 = getelementptr inbounds %struct.op* %36, i64 0, i32 0
  %37 = load %struct.op** %op_next95, align 8, !tbaa !0
  br label %return

if.end96:                                         ; preds = %if.end4
  %38 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %38, i64 0, i32 7
  %39 = load i8* %op_private, align 1, !tbaa !1
  %and97 = and i8 %39, 4
  %tobool98 = icmp eq i8 %and97, 0
  %iterix104 = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 9
  %40 = load i64* %iterix104, align 8, !tbaa !4
  br i1 %tobool98, label %if.else145, label %if.then99

if.then99:                                        ; preds = %if.end96
  %itermax109 = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 10
  %41 = load i64* %itermax109, align 8, !tbaa !4
  %cmp110 = icmp sgt i64 %40, %41
  br i1 %cmp110, label %if.end115, label %if.then112

if.then112:                                       ; preds = %if.then99
  %incdec.ptr113 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr113, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr113, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %42 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next114 = getelementptr inbounds %struct.op* %42, i64 0, i32 0
  %43 = load %struct.op** %op_next114, align 8, !tbaa !0
  br label %return

if.end115:                                        ; preds = %if.then99
  %and117 = and i32 %8, 57344
  %tobool118 = icmp eq i32 %and117, 0
  br i1 %tobool118, label %lor.lhs.false, label %if.then123

lor.lhs.false:                                    ; preds = %if.end115
  %sv_any119 = getelementptr inbounds %struct.av* %7, i64 0, i32 0
  %44 = load %struct.xpvav** %sv_any119, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %44, i64 0, i32 9
  %45 = load i8* %xav_flags, align 1, !tbaa !1
  %and121 = and i8 %45, 2
  %tobool122 = icmp eq i8 %and121, 0
  br i1 %tobool122, label %if.else135, label %if.then123

if.then123:                                       ; preds = %lor.lhs.false, %if.end115
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %iterix104, align 8, !tbaa !4
  %conv129 = trunc i64 %40 to i32
  %call130 = call %struct.sv** @Perl_av_fetch(%struct.av* %7, i32 %conv129, i32 0) #8
  %tobool131 = icmp eq %struct.sv** %call130, null
  br i1 %tobool131, label %if.end223, label %if.end210

if.else135:                                       ; preds = %lor.lhs.false
  %dec141 = add nsw i64 %40, -1
  store i64 %dec141, i64* %iterix104, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %44, i64 0, i32 0
  %46 = load i8** %xav_array, align 8, !tbaa !0
  %47 = bitcast i8* %46 to %struct.sv**
  %arrayidx143 = getelementptr inbounds %struct.sv** %47, i64 %40
  br label %if.end210

if.else145:                                       ; preds = %if.end96
  %48 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp151 = icmp eq %struct.av* %7, %48
  br i1 %cmp151, label %cond.true153, label %cond.false157

cond.true153:                                     ; preds = %if.else145
  %blku_oldsp = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 0
  %49 = load i32* %blku_oldsp, align 4, !tbaa !3
  %conv156 = sext i32 %49 to i64
  br label %cond.end168

cond.false157:                                    ; preds = %if.else145
  %and159 = and i32 %8, 32768
  %tobool160 = icmp eq i32 %and159, 0
  br i1 %tobool160, label %cond.false164, label %cond.true161

cond.true161:                                     ; preds = %cond.false157
  %50 = bitcast %struct.av* %7 to %struct.sv*
  %call162 = call i32 @Perl_mg_size(%struct.sv* %50) #8
  %conv163 = sext i32 %call162 to i64
  br label %cond.end168

cond.false164:                                    ; preds = %cond.false157
  %sv_any165 = getelementptr inbounds %struct.av* %7, i64 0, i32 0
  %51 = load %struct.xpvav** %sv_any165, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %51, i64 0, i32 1
  %52 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end168

cond.end168:                                      ; preds = %cond.true161, %cond.false164, %cond.true153
  %cond169 = phi i64 [ %conv156, %cond.true153 ], [ %conv163, %cond.true161 ], [ %52, %cond.false164 ]
  %cmp170 = icmp slt i64 %40, %cond169
  br i1 %cmp170, label %if.end175, label %if.then172

if.then172:                                       ; preds = %cond.end168
  %incdec.ptr173 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr173, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr173, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %53 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next174 = getelementptr inbounds %struct.op* %53, i64 0, i32 0
  %54 = load %struct.op** %op_next174, align 8, !tbaa !0
  br label %return

if.end175:                                        ; preds = %cond.end168
  %55 = load i32* %sv_flags, align 4, !tbaa !3
  %and177 = and i32 %55, 57344
  %tobool178 = icmp eq i32 %and177, 0
  br i1 %tobool178, label %lor.lhs.false179, label %if.then185

lor.lhs.false179:                                 ; preds = %if.end175
  %sv_any180 = getelementptr inbounds %struct.av* %7, i64 0, i32 0
  %56 = load %struct.xpvav** %sv_any180, align 8, !tbaa !0
  %xav_flags181 = getelementptr inbounds %struct.xpvav* %56, i64 0, i32 9
  %57 = load i8* %xav_flags181, align 1, !tbaa !1
  %and183 = and i8 %57, 2
  %tobool184 = icmp eq i8 %and183, 0
  br i1 %tobool184, label %if.else199, label %if.then185

if.then185:                                       ; preds = %lor.lhs.false179, %if.end175
  %58 = load i64* %iterix104, align 8, !tbaa !4
  %inc192 = add nsw i64 %58, 1
  store i64 %inc192, i64* %iterix104, align 8, !tbaa !4
  %conv193 = trunc i64 %inc192 to i32
  %call194 = call %struct.sv** @Perl_av_fetch(%struct.av* %7, i32 %conv193, i32 0) #8
  %tobool195 = icmp eq %struct.sv** %call194, null
  br i1 %tobool195, label %if.end223, label %if.end210

if.else199:                                       ; preds = %lor.lhs.false179
  %59 = load i64* %iterix104, align 8, !tbaa !4
  %inc205 = add nsw i64 %59, 1
  store i64 %inc205, i64* %iterix104, align 8, !tbaa !4
  %xav_array207 = getelementptr inbounds %struct.xpvav* %56, i64 0, i32 0
  %60 = load i8** %xav_array207, align 8, !tbaa !0
  %61 = bitcast i8* %60 to %struct.sv**
  %arrayidx208 = getelementptr inbounds %struct.sv** %61, i64 %inc205
  br label %if.end210

if.end210:                                        ; preds = %if.then185, %if.then123, %if.else199, %if.else135
  %sv.0.in = phi %struct.sv** [ %arrayidx143, %if.else135 ], [ %arrayidx208, %if.else199 ], [ %call130, %if.then123 ], [ %call194, %if.then185 ]
  %sv.0 = load %struct.sv** %sv.0.in, align 8
  %tobool211 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool211, label %if.end223, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %if.end210
  %sv_refcnt213 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 1
  %62 = load i32* %sv_refcnt213, align 4, !tbaa !3
  %cmp214 = icmp eq i32 %62, 0
  br i1 %cmp214, label %if.end217, label %if.then219

if.end217:                                        ; preds = %land.lhs.true212
  store %struct.sv* null, %struct.sv** %6, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str25, i64 0, i64 0)) #8
  br label %if.then219

if.then219:                                       ; preds = %land.lhs.true212, %if.end217
  %sv_flags220 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %63 = load i32* %sv_flags220, align 4, !tbaa !3
  %and221 = and i32 %63, -2049
  store i32 %and221, i32* %sv_flags220, align 4, !tbaa !3
  br label %if.end223

if.end223:                                        ; preds = %if.end210, %if.then185, %if.then123, %if.then219
  %sv.1 = phi %struct.sv* [ %sv.0, %if.then219 ], [ @PL_sv_undef, %if.then123 ], [ @PL_sv_undef, %if.then185 ], [ @PL_sv_undef, %if.end210 ]
  %64 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %cmp224 = icmp ne %struct.av* %7, %64
  %cmp227 = icmp eq %struct.sv* %sv.1, @PL_sv_undef
  %or.cond = and i1 %cmp224, %cmp227
  br i1 %or.cond, label %if.then229, label %if.end268

if.then229:                                       ; preds = %if.end223
  %iterlval234 = getelementptr inbounds %struct.context* %4, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %65 = load %struct.sv** %iterlval234, align 8, !tbaa !0
  %tobool235 = icmp eq %struct.sv* %65, null
  br i1 %tobool235, label %if.else245, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %if.then229
  %sv_refcnt237 = getelementptr inbounds %struct.sv* %65, i64 0, i32 1
  %66 = load i32* %sv_refcnt237, align 4, !tbaa !3
  %cmp238 = icmp ugt i32 %66, 1
  br i1 %cmp238, label %if.then240, label %if.then243

if.then240:                                       ; preds = %land.lhs.true236
  call void @Perl_sv_free(%struct.sv* %65) #8
  br label %if.else245

if.then243:                                       ; preds = %land.lhs.true236
  %sv_any244 = getelementptr inbounds %struct.sv* %65, i64 0, i32 0
  %67 = load i8** %sv_any244, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %67, i64 72
  %68 = bitcast i8* %xlv_targ to %struct.sv**
  %69 = load %struct.sv** %68, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %69) #8
  br label %if.end254

if.else245:                                       ; preds = %if.then240, %if.then229
  %call246 = call %struct.sv* @Perl_newSV(i64 0) #8
  store %struct.sv* %call246, %struct.sv** %iterlval234, align 8, !tbaa !0
  %call252 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call246, i32 9) #8
  %sv_any253 = getelementptr inbounds %struct.sv* %call246, i64 0, i32 0
  %70 = load i8** %sv_any253, align 8, !tbaa !0
  %71 = getelementptr inbounds i8* %70, i64 80
  store i8 121, i8* %71, align 1, !tbaa !1
  call void @Perl_sv_magic(%struct.sv* %call246, %struct.sv* null, i32 121, i8* null, i32 0) #8
  br label %if.end254

if.end254:                                        ; preds = %if.else245, %if.then243
  %lv.1 = phi %struct.sv* [ %65, %if.then243 ], [ %call246, %if.else245 ]
  %72 = bitcast %struct.av* %7 to %struct.sv*
  store %struct.sv* %72, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool255 = icmp eq %struct.av* %7, null
  br i1 %tobool255, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end254
  %73 = getelementptr inbounds %struct.av* %7, i64 0, i32 1
  %74 = load i32* %73, align 4, !tbaa !3
  %inc257 = add i32 %74, 1
  store i32 %inc257, i32* %73, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end254, %land.rhs
  %sv_any259 = getelementptr inbounds %struct.sv* %lv.1, i64 0, i32 0
  %75 = load i8** %sv_any259, align 8, !tbaa !0
  %xlv_targ260 = getelementptr inbounds i8* %75, i64 72
  %76 = bitcast i8* %xlv_targ260 to %struct.sv**
  store %struct.sv* %72, %struct.sv** %76, align 8, !tbaa !0
  %77 = load i64* %iterix104, align 8, !tbaa !4
  %78 = load i8** %sv_any259, align 8, !tbaa !0
  %xlv_targoff = getelementptr inbounds i8* %78, i64 56
  %79 = bitcast i8* %xlv_targoff to i64*
  store i64 %77, i64* %79, align 8, !tbaa !4
  %xlv_targlen = getelementptr inbounds i8* %78, i64 64
  %80 = bitcast i8* %xlv_targlen to i64*
  store i64 -1, i64* %80, align 8, !tbaa !4
  br label %if.end268

if.end268:                                        ; preds = %if.end223, %land.end
  %81 = phi %struct.sv* [ %lv.1, %land.end ], [ %sv.1, %if.end223 ]
  %82 = load %struct.sv** %6, align 8, !tbaa !0
  store %struct.sv* %81, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool269 = icmp eq %struct.sv* %81, null
  br i1 %tobool269, label %land.end274, label %land.rhs270

land.rhs270:                                      ; preds = %if.end268
  %sv_refcnt271 = getelementptr inbounds %struct.sv* %81, i64 0, i32 1
  %83 = load i32* %sv_refcnt271, align 4, !tbaa !3
  %inc272 = add i32 %83, 1
  store i32 %inc272, i32* %sv_refcnt271, align 4, !tbaa !3
  br label %land.end274

land.end274:                                      ; preds = %if.end268, %land.rhs270
  store %struct.sv* %81, %struct.sv** %6, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %82) #8
  %incdec.ptr276 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr276, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr276, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %84 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next277 = getelementptr inbounds %struct.op* %84, i64 0, i32 0
  %85 = load %struct.op** %op_next277, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %land.end274, %if.then172, %if.then112, %if.end93, %if.then69, %if.end56, %if.end55, %if.then2
  %retval.0 = phi %struct.op* [ %call3, %if.then2 ], [ %28, %if.end56 ], [ %26, %if.end55 ], [ %32, %if.then69 ], [ %37, %if.end93 ], [ %43, %if.then112 ], [ %85, %land.end274 ], [ %54, %if.then172 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_subst() #0 {
entry:
  %clen = alloca i64, align 8
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %2 = bitcast %struct.op* %1 to %struct.pmop*
  %op_pmregexp = getelementptr inbounds %struct.op* %1, i64 2
  %3 = bitcast %struct.op* %op_pmregexp to %struct.regexp**
  %4 = load %struct.regexp** %3, align 8, !tbaa !0
  %5 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %op_pmflags = getelementptr inbounds %struct.op* %1, i64 2, i32 1
  %6 = bitcast %struct.op** %op_pmflags to i32*
  %7 = load i32* %6, align 4, !tbaa !3
  %and = and i32 %7, 64
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %8 = load %struct.sv** %0, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %sp.0 = phi %struct.sv** [ %incdec.ptr, %cond.true ], [ %0, %entry ]
  %cond = phi %struct.sv* [ %8, %cond.true ], [ null, %entry ]
  %op_flags = getelementptr inbounds %struct.op* %1, i64 0, i32 6
  %9 = load i8* %op_flags, align 1, !tbaa !1
  %and1 = and i8 %9, 64
  %tobool2 = icmp eq i8 %and1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %incdec.ptr3 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  %10 = load %struct.sv** %sp.0, align 8, !tbaa !0
  br label %if.end6

if.else:                                          ; preds = %cond.end
  %11 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %11, i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %13, i64 0, i32 0
  %14 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %15 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.0, %struct.sv** %sp.0, i32 1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %if.then
  %targ.0 = phi %struct.sv* [ %10, %if.then ], [ %14, %if.then5 ], [ %14, %if.else ]
  %sp.1 = phi %struct.sv** [ %incdec.ptr3, %if.then ], [ %call, %if.then5 ], [ %sp.0, %if.else ]
  %sv_flags = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 2
  %16 = load i32* %sv_flags, align 4, !tbaa !3
  %17 = and i32 %16, 9437184
  %18 = icmp eq i32 %17, 9437184
  br i1 %18, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @Perl_sv_force_normal(%struct.sv* %targ.0) #8
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.then12
  %19 = phi i32 [ %16, %if.end6 ], [ %.pre, %if.then12 ]
  %and15 = and i32 %19, 8388608
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then30

lor.lhs.false:                                    ; preds = %if.end13
  %and18 = and i32 %19, 254
  %cmp19 = icmp ult i32 %and18, 10
  %20 = and i32 %19, 1048831
  %21 = icmp eq i32 %20, 1048589
  %or.cond1087 = or i1 %cmp19, %21
  br i1 %or.cond1087, label %if.end32, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false, %if.end13
  %call31 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #8
  br label %return

if.end32:                                         ; preds = %lor.lhs.false
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %and34 = and i32 %19, 262144
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %cond.false40, label %cond.true37

cond.true37:                                      ; preds = %if.end32
  %sv_any38 = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 0
  %22 = load i8** %sv_any38, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %22, i64 8
  %23 = bitcast i8* %xpv_cur to i64*
  %24 = load i64* %23, align 8, !tbaa !4
  store i64 %24, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %22 to i8**
  %25 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end42

cond.false40:                                     ; preds = %if.end32
  %call41 = call i8* @Perl_sv_2pv_flags(%struct.sv* %targ.0, i64* %len, i32 2) #8
  %.pre1170 = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true37
  %26 = phi i32 [ %19, %cond.true37 ], [ %.pre1170, %cond.false40 ]
  %cond43 = phi i8* [ %25, %cond.true37 ], [ %call41, %cond.false40 ]
  %and49 = and i32 %26, 255
  %cmp50 = icmp eq i32 %and49, 13
  %and45 = lshr i32 %26, 26
  %and45.lobit = and i32 %and45, 1
  %27 = xor i32 %and45.lobit, 1
  %cmp501085 = zext i1 %cmp50 to i32
  %force_on_match.0 = or i32 %27, %cmp501085
  %op_pmdynflags = getelementptr inbounds %struct.op* %1, i64 2, i32 2
  %28 = bitcast {}** %op_pmdynflags to i8*
  %29 = load i8* %28, align 1, !tbaa !1
  %and55 = and i8 %29, 2
  %tobool56 = icmp eq i8 %and55, 0
  %30 = load i8* @PL_tainted, align 1, !tbaa !1
  br i1 %tobool56, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end42
  %tobool58 = icmp eq i8 %30, 0
  br i1 %tobool58, label %if.end67, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %31 = load i32* %6, align 4, !tbaa !3
  %and60 = and i32 %31, 1
  %tobool61 = icmp ne i32 %and60, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end42, %land.rhs
  %.ph = phi i1 [ %tobool61, %land.rhs ], [ true, %cond.end42 ]
  %conv62 = zext i1 %.ph to i8
  %tobool63 = icmp eq i8 %30, 0
  %or = or i8 %conv62, 2
  %conv62.or = select i1 %tobool63, i8 %conv62, i8 %or
  br label %if.end67

if.end67:                                         ; preds = %lor.end, %lor.rhs
  %rxtainted.0 = phi i8 [ 0, %lor.rhs ], [ %conv62.or, %lor.end ]
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %32 = load i32* %sv_flags, align 4, !tbaa !3
  %and69 = and i32 %32, 536870912
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %cond.false77, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end67
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %33, i64 0, i32 7
  %34 = load i8* %op_private, align 1, !tbaa !1
  %and73 = and i8 %34, 8
  %tobool74 = icmp eq i8 %and73, 0
  br i1 %tobool74, label %cond.true75, label %cond.false77

cond.true75:                                      ; preds = %land.lhs.true71
  %reganch = getelementptr inbounds %struct.regexp* %4, i64 0, i32 15
  %35 = load i32* %reganch, align 4, !tbaa !3
  %or76 = or i32 %35, 268435456
  store i32 %or76, i32* %reganch, align 4, !tbaa !3
  br label %force_it.preheader

cond.false77:                                     ; preds = %land.lhs.true71, %if.end67
  %reganch78 = getelementptr inbounds %struct.regexp* %4, i64 0, i32 15
  %36 = load i32* %reganch78, align 4, !tbaa !3
  %and79 = and i32 %36, -268435457
  store i32 %and79, i32* %reganch78, align 4, !tbaa !3
  br label %force_it.preheader

force_it.preheader:                               ; preds = %cond.false77, %cond.true75
  %storemerge = phi i8 [ 0, %cond.false77 ], [ 1, %cond.true75 ]
  store i8 %storemerge, i8* @PL_reg_match_utf8, align 1, !tbaa !1
  %tobool821122 = icmp eq %struct.op* %1, null
  %tobool841123 = icmp eq i8* %cond43, null
  %or.cond10751124 = or i1 %tobool821122, %tobool841123
  br i1 %or.cond10751124, label %if.then85, label %if.end87.lr.ph

if.end87.lr.ph:                                   ; preds = %force_it.preheader
  %tobool140 = icmp eq %struct.sv* %cond, null
  %sv_any451 = getelementptr inbounds %struct.sv* %targ.0, i64 0, i32 0
  %sv_flags178 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %sv_any183 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  br label %if.end87

if.then85:                                        ; preds = %force_it.backedge, %force_it.preheader
  %call86 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([16 x i8]* @.str26, i64 0, i64 0)) #8
  br label %return

if.end87:                                         ; preds = %force_it.backedge, %if.end87.lr.ph
  %nsv.01131 = phi %struct.sv* [ null, %if.end87.lr.ph ], [ %nsv.0.be, %force_it.backedge ]
  %doutf8.01130 = phi i8 [ 0, %if.end87.lr.ph ], [ %doutf8.0.be, %force_it.backedge ]
  %force_on_match.11128 = phi i32 [ %force_on_match.0, %if.end87.lr.ph ], [ 0, %force_it.backedge ]
  %rx.01127 = phi %struct.regexp* [ %4, %if.end87.lr.ph ], [ %rx.1, %force_it.backedge ]
  %pm.01126 = phi %struct.pmop* [ %2, %if.end87.lr.ph ], [ %pm.1, %force_it.backedge ]
  %s.01125 = phi i8* [ %cond43, %if.end87.lr.ph ], [ %s.0.be, %force_it.backedge ]
  %37 = load i64* %len, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %s.01125, i64 %37
  %reganch88 = getelementptr inbounds %struct.regexp* %rx.01127, i64 0, i32 15
  %38 = load i32* %reganch88, align 4, !tbaa !3
  %and89 = and i32 %38, 268435456
  %tobool90 = icmp eq i32 %and89, 0
  br i1 %tobool90, label %cond.end94, label %cond.true91

cond.true91:                                      ; preds = %if.end87
  %call92 = call i64 @Perl_utf8_length(i8* %s.01125, i8* %add.ptr) #8
  br label %cond.end94

cond.end94:                                       ; preds = %if.end87, %cond.true91
  %cond95 = phi i64 [ %call92, %cond.true91 ], [ %37, %if.end87 ]
  %mul = shl i64 %cond95, 1
  %add = add i64 %mul, 10
  %conv96 = trunc i64 %add to i32
  %prelen = getelementptr inbounds %struct.regexp* %rx.01127, i64 0, i32 11
  %39 = load i32* %prelen, align 4, !tbaa !3
  %tobool97 = icmp eq i32 %39, 0
  %40 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool99 = icmp ne %struct.pmop* %40, null
  %or.cond = and i1 %tobool97, %tobool99
  br i1 %or.cond, label %if.then100, label %if.end102

if.then100:                                       ; preds = %cond.end94
  %op_pmregexp101 = getelementptr inbounds %struct.pmop* %40, i64 0, i32 13
  %41 = load %struct.regexp** %op_pmregexp101, align 8, !tbaa !0
  br label %if.end102

if.end102:                                        ; preds = %cond.end94, %if.then100
  %pm.1 = phi %struct.pmop* [ %40, %if.then100 ], [ %pm.01126, %cond.end94 ]
  %rx.1 = phi %struct.regexp* [ %41, %if.then100 ], [ %rx.01127, %cond.end94 ]
  %nparens = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 12
  %42 = load i32* %nparens, align 4, !tbaa !3
  %tobool103 = icmp eq i32 %42, 0
  %43 = load i32* %sv_flags, align 4, !tbaa !3
  br i1 %tobool103, label %lor.lhs.false104, label %lor.end111

lor.lhs.false104:                                 ; preds = %if.end102
  %and106 = and i32 %43, 2048
  %tobool107 = icmp eq i32 %and106, 0
  br i1 %tobool107, label %lor.rhs108, label %lor.end111

lor.rhs108:                                       ; preds = %lor.lhs.false104
  %44 = load i8* @PL_sawampersand, align 1, !tbaa !1
  %tobool110 = icmp ne i8 %44, 0
  br label %lor.end111

lor.end111:                                       ; preds = %if.end102, %lor.lhs.false104, %lor.rhs108
  %45 = phi i1 [ true, %lor.lhs.false104 ], [ %tobool110, %lor.rhs108 ], [ true, %if.end102 ]
  %cond113 = zext i1 %45 to i32
  %and115 = lshr i32 %43, 25
  %46 = and i32 %and115, 4
  %47 = or i32 %46, %cond113
  %op_pmflags120 = getelementptr inbounds %struct.pmop* %pm.1, i64 0, i32 14
  %48 = load i32* %op_pmflags120, align 4, !tbaa !3
  %and121 = and i32 %48, 12288
  %tobool122 = icmp eq i32 %and121, 0
  br i1 %tobool122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %lor.end111
  call void @Perl_save_int(i32* @PL_multiline) #8
  %49 = load i32* %op_pmflags120, align 4, !tbaa !3
  %and125 = and i32 %49, 4096
  store i32 %and125, i32* @PL_multiline, align 4, !tbaa !3
  br label %if.end126

if.end126:                                        ; preds = %lor.end111, %if.then123
  %reganch127 = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 15
  %50 = load i32* %reganch127, align 4, !tbaa !3
  %and128 = and i32 %50, 3145728
  %tobool129 = icmp eq i32 %and128, 0
  br i1 %tobool129, label %if.end135, label %if.then130

if.then130:                                       ; preds = %if.end126
  store i8* %s.01125, i8** @PL_bostr, align 8, !tbaa !0
  %51 = load i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)** @PL_regint_start, align 8, !tbaa !0
  %call131 = call i8* %51(%struct.regexp* %rx.1, %struct.sv* %targ.0, i8* %s.01125, i8* %add.ptr, i32 %47, %struct.re_scream_pos_data_s* null) #8
  %tobool132 = icmp eq i8* %call131, null
  br i1 %tobool132, label %ret_no, label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end126
  %s.1 = phi i8* [ %call131, %if.then130 ], [ %s.01125, %if.end126 ]
  %52 = load i32* %6, align 4, !tbaa !3
  %and137 = lshr i32 %52, 8
  %and137.lobit = and i32 %and137, 1
  %53 = xor i32 %and137.lobit, 1
  %conv139 = trunc i32 %53 to i8
  br i1 %tobool140, label %if.end439, label %if.then141

if.then141:                                       ; preds = %if.end135
  %54 = load i32* %sv_flags, align 4, !tbaa !3
  %and143 = and i32 %54, 536870912
  %tobool144 = icmp eq i32 %and143, 0
  br i1 %tobool144, label %if.else177, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %if.then141
  %55 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private146 = getelementptr inbounds %struct.cop* %55, i64 0, i32 7
  %56 = load i8* %op_private146, align 1, !tbaa !1
  %and148 = and i8 %56, 8
  %57 = or i8 %and148, %doutf8.01130
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %if.then152, label %if.else177

if.then152:                                       ; preds = %land.lhs.true145
  %call153 = call %struct.sv* @Perl_sv_newmortal() #8
  %cmp154 = icmp eq %struct.sv* %call153, %cond
  br i1 %cmp154, label %if.end157, label %if.then156

if.then156:                                       ; preds = %if.then152
  call void @Perl_sv_setsv_flags(%struct.sv* %call153, %struct.sv* %cond, i32 2) #8
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %if.then156
  %59 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %tobool158 = icmp eq %struct.sv* %59, null
  br i1 %tobool158, label %if.else161, label %if.then159

if.then159:                                       ; preds = %if.end157
  %call160 = call i8* @Perl_sv_recode_to_utf8(%struct.sv* %call153, %struct.sv* %59) #8
  br label %if.end163

if.else161:                                       ; preds = %if.end157
  %call162 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call153, i32 2) #8
  br label %if.end163

if.end163:                                        ; preds = %if.else161, %if.then159
  %sv_flags164 = getelementptr inbounds %struct.sv* %call153, i64 0, i32 2
  %60 = load i32* %sv_flags164, align 4, !tbaa !3
  %and165 = and i32 %60, 262144
  %cmp166 = icmp eq i32 %and165, 0
  br i1 %cmp166, label %cond.false173, label %cond.true168

cond.true168:                                     ; preds = %if.end163
  %sv_any169 = getelementptr inbounds %struct.sv* %call153, i64 0, i32 0
  %61 = load i8** %sv_any169, align 8, !tbaa !0
  %xpv_cur170 = getelementptr inbounds i8* %61, i64 8
  %62 = bitcast i8* %xpv_cur170 to i64*
  %63 = load i64* %62, align 8, !tbaa !4
  store i64 %63, i64* %clen, align 8, !tbaa !4
  %xpv_pv172 = bitcast i8* %61 to i8**
  %64 = load i8** %xpv_pv172, align 8, !tbaa !0
  br label %if.end205

cond.false173:                                    ; preds = %if.end163
  %call174 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call153, i64* %clen, i32 2) #8
  br label %if.end205

if.else177:                                       ; preds = %land.lhs.true145, %if.then141
  %65 = load i32* %sv_flags178, align 4, !tbaa !3
  %and179 = and i32 %65, 262144
  %cmp180 = icmp eq i32 %and179, 0
  br i1 %cmp180, label %cond.false187, label %cond.true182

cond.true182:                                     ; preds = %if.else177
  %66 = load i8** %sv_any183, align 8, !tbaa !0
  %xpv_cur184 = getelementptr inbounds i8* %66, i64 8
  %67 = bitcast i8* %xpv_cur184 to i64*
  %68 = load i64* %67, align 8, !tbaa !4
  store i64 %68, i64* %clen, align 8, !tbaa !4
  %xpv_pv186 = bitcast i8* %66 to i8**
  %69 = load i8** %xpv_pv186, align 8, !tbaa !0
  br label %cond.end189

cond.false187:                                    ; preds = %if.else177
  %call188 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond, i64* %clen, i32 2) #8
  %.pre1174 = load i32* %sv_flags178, align 4, !tbaa !3
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false187, %cond.true182
  %70 = phi i32 [ %65, %cond.true182 ], [ %.pre1174, %cond.false187 ]
  %cond190 = phi i8* [ %69, %cond.true182 ], [ %call188, %cond.false187 ]
  %and192 = and i32 %70, 536870912
  %tobool193 = icmp eq i32 %and192, 0
  br i1 %tobool193, label %land.end201, label %land.rhs194

land.rhs194:                                      ; preds = %cond.end189
  %71 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private195 = getelementptr inbounds %struct.cop* %71, i64 0, i32 7
  %72 = load i8* %op_private195, align 1, !tbaa !1
  %and197 = and i8 %72, 8
  %lnot199 = icmp eq i8 %and197, 0
  br label %land.end201

land.end201:                                      ; preds = %cond.end189, %land.rhs194
  %73 = phi i1 [ false, %cond.end189 ], [ %lnot199, %land.rhs194 ]
  %conv202 = zext i1 %73 to i8
  br label %if.end205

if.end205:                                        ; preds = %cond.true168, %cond.false173, %land.end201
  %c.0 = phi i8* [ %cond190, %land.end201 ], [ %64, %cond.true168 ], [ %call174, %cond.false173 ]
  %doutf8.1 = phi i8 [ %conv202, %land.end201 ], [ 1, %cond.true168 ], [ 1, %cond.false173 ]
  %nsv.1 = phi %struct.sv* [ %nsv.01131, %land.end201 ], [ %call153, %cond.true168 ], [ %call153, %cond.false173 ]
  %tobool206 = icmp eq i8* %c.0, null
  br i1 %tobool206, label %if.end439, label %land.lhs.true207

land.lhs.true207:                                 ; preds = %if.end205
  %74 = load i64* %clen, align 8, !tbaa !4
  %conv208 = trunc i64 %74 to i32
  %minlen = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 10
  %75 = load i32* %minlen, align 4, !tbaa !3
  %cmp209 = icmp sgt i32 %conv208, %75
  br i1 %cmp209, label %if.end439, label %land.lhs.true211

land.lhs.true211:                                 ; preds = %land.lhs.true207
  %tobool213 = icmp eq i32 %and137.lobit, 0
  %.not = xor i1 %45, true
  %brmerge = or i1 %tobool213, %.not
  br i1 %brmerge, label %land.lhs.true217, label %if.end439

land.lhs.true217:                                 ; preds = %land.lhs.true211
  %76 = load i32* %reganch127, align 4, !tbaa !3
  %and219 = and i32 %76, 512
  %tobool220 = icmp eq i32 %and219, 0
  br i1 %tobool220, label %land.lhs.true221, label %if.end439

land.lhs.true221:                                 ; preds = %land.lhs.true217
  %tobool222 = icmp ne i8 %doutf8.1, 0
  br i1 %tobool222, label %lor.lhs.false223, label %if.then227

lor.lhs.false223:                                 ; preds = %land.lhs.true221
  %77 = load i32* %sv_flags, align 4, !tbaa !3
  %and225 = and i32 %77, 536870912
  %tobool226 = icmp eq i32 %and225, 0
  br i1 %tobool226, label %if.end439, label %if.then227

if.then227:                                       ; preds = %lor.lhs.false223, %land.lhs.true221
  %78 = load i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  %or228 = or i32 %47, 2
  %call229 = call i32 %78(%struct.regexp* %rx.1, i8* %s.1, i8* %add.ptr, i8* %s.01125, i32 0, %struct.sv* %targ.0, i8* null, i32 %or228) #8
  %tobool230 = icmp eq i32 %call229, 0
  br i1 %tobool230, label %if.then231, label %if.end237

if.then231:                                       ; preds = %if.then227
  %79 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr232 = getelementptr inbounds %struct.sv** %79, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr232, align 8, !tbaa !0
  %80 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp233 = icmp sgt i32 %80, %5
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.then231
  call void @Perl_leave_scope(i32 %5) #8
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.then231
  store %struct.sv** %incdec.ptr232, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %81 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %81, i64 0, i32 0
  %82 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end237:                                        ; preds = %if.then227
  %tobool238 = icmp eq i32 %force_on_match.11128, 0
  br i1 %tobool238, label %if.end253, label %if.then239

if.then239:                                       ; preds = %if.end237
  %83 = load i32* %sv_flags, align 4, !tbaa !3
  %and241 = and i32 %83, 10223616
  %cmp242 = icmp eq i32 %and241, 262144
  br i1 %cmp242, label %cond.true244, label %cond.false249

cond.true244:                                     ; preds = %if.then239
  %84 = load i8** %sv_any451, align 8, !tbaa !0
  %xpv_cur246 = getelementptr inbounds i8* %84, i64 8
  %85 = bitcast i8* %xpv_cur246 to i64*
  %86 = load i64* %85, align 8, !tbaa !4
  store i64 %86, i64* %len, align 8, !tbaa !4
  %xpv_pv248 = bitcast i8* %84 to i8**
  %87 = load i8** %xpv_pv248, align 8, !tbaa !0
  br label %force_it.backedge

cond.false249:                                    ; preds = %if.then239
  %call250 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %targ.0, i64* %len, i32 2) #8
  br label %force_it.backedge

force_it.backedge:                                ; preds = %cond.false249, %cond.true244, %cond.false455, %cond.true450
  %s.0.be = phi i8* [ %87, %cond.true244 ], [ %call250, %cond.false249 ], [ %127, %cond.true450 ], [ %call456, %cond.false455 ]
  %doutf8.0.be = phi i8 [ %doutf8.1, %cond.true244 ], [ %doutf8.1, %cond.false249 ], [ %doutf8.11081, %cond.true450 ], [ %doutf8.11081, %cond.false455 ]
  %nsv.0.be = phi %struct.sv* [ %nsv.1, %cond.true244 ], [ %nsv.1, %cond.false249 ], [ %nsv.11082, %cond.true450 ], [ %nsv.11082, %cond.false455 ]
  %tobool82 = icmp eq %struct.pmop* %pm.1, null
  %tobool84 = icmp eq i8* %s.0.be, null
  %or.cond1075 = or i1 %tobool82, %tobool84
  br i1 %or.cond1075, label %if.then85, label %if.end87

if.end253:                                        ; preds = %if.end237
  store %struct.pmop* %pm.1, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %88 = load i32* %sv_flags, align 4, !tbaa !3
  %and255 = and i32 %88, -134217729
  store i32 %and255, i32* %sv_flags, align 4, !tbaa !3
  %tobool256 = icmp eq i8 %conv139, 0
  %startp345 = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 0
  br i1 %tobool256, label %do.body.preheader, label %if.then257

do.body.preheader:                                ; preds = %if.end253
  %endp369 = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 1
  br label %do.body

if.then257:                                       ; preds = %if.end253
  %89 = load i32** %startp345, align 8, !tbaa !0
  %90 = load i32* %89, align 4, !tbaa !3
  %idx.ext = sext i32 %90 to i64
  %add.ptr263 = getelementptr inbounds i8* %s.01125, i64 %idx.ext
  %endp = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 1
  %91 = load i32** %endp, align 8, !tbaa !0
  %92 = load i32* %91, align 4, !tbaa !3
  %idx.ext265 = sext i32 %92 to i64
  %add.ptr266 = getelementptr inbounds i8* %s.01125, i64 %idx.ext265
  %sub.ptr.rhs.cast268 = ptrtoint i8* %s.01125 to i64
  %sub.ptr.lhs.cast270 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast271 = ptrtoint i8* %add.ptr266 to i64
  %sub.ptr.sub272 = sub i64 %sub.ptr.lhs.cast270, %sub.ptr.rhs.cast271
  %cmp273 = icmp sgt i64 %idx.ext, %sub.ptr.sub272
  br i1 %cmp273, label %if.then275, label %if.else298

if.then275:                                       ; preds = %if.then257
  %93 = load i64* %clen, align 8, !tbaa !4
  %tobool276 = icmp eq i64 %93, 0
  br i1 %tobool276, label %if.end280, label %if.then277

if.then277:                                       ; preds = %if.then275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr263, i8* %c.0, i64 %93, i32 1, i1 false)
  %94 = load i64* %clen, align 8, !tbaa !4
  %add.ptr263.sum = add i64 %94, %idx.ext
  %add.ptr279 = getelementptr inbounds i8* %s.01125, i64 %add.ptr263.sum
  br label %if.end280

if.end280:                                        ; preds = %if.then275, %if.then277
  %m.0 = phi i8* [ %add.ptr279, %if.then277 ], [ %add.ptr263, %if.then275 ]
  %conv284 = trunc i64 %sub.ptr.sub272 to i32
  %cmp285 = icmp sgt i32 %conv284, 0
  br i1 %cmp285, label %if.then287, label %if.end292

if.then287:                                       ; preds = %if.end280
  %sext1071 = shl i64 %sub.ptr.sub272, 32
  %conv288 = ashr exact i64 %sext1071, 32
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %m.0, i8* %add.ptr266, i64 %conv288, i32 1, i1 false)
  %add.ptr291 = getelementptr inbounds i8* %m.0, i64 %conv288
  br label %if.end292

if.end292:                                        ; preds = %if.then287, %if.end280
  %m.1 = phi i8* [ %add.ptr291, %if.then287 ], [ %m.0, %if.end280 ]
  store i8 0, i8* %m.1, align 1, !tbaa !1
  %sub.ptr.lhs.cast293 = ptrtoint i8* %m.1 to i64
  %sub.ptr.sub295 = sub i64 %sub.ptr.lhs.cast293, %sub.ptr.rhs.cast268
  %95 = load i8** %sv_any451, align 8, !tbaa !0
  %xpv_cur297 = getelementptr inbounds i8* %95, i64 8
  %96 = bitcast i8* %xpv_cur297 to i64*
  store i64 %sub.ptr.sub295, i64* %96, align 8, !tbaa !4
  br label %if.end327

if.else298:                                       ; preds = %if.then257
  %tobool303 = icmp eq i32 %90, 0
  %97 = load i64* %clen, align 8, !tbaa !4
  br i1 %tobool303, label %if.else318, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else298
  %add.ptr266.sum1070 = sub i64 %idx.ext265, %97
  %add.ptr305 = getelementptr inbounds i8* %s.01125, i64 %add.ptr266.sum1070
  %add.ptr305.sum = sub i64 %add.ptr266.sum1070, %idx.ext
  %add.ptr308 = getelementptr inbounds i8* %s.01125, i64 %add.ptr305.sum
  call void @Perl_sv_chop(%struct.sv* %targ.0, i8* %add.ptr308) #8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %i.01093 = phi i32 [ %90, %while.body.lr.ph ], [ %dec, %while.body ]
  %d.01092 = phi i8* [ %add.ptr305, %while.body.lr.ph ], [ %incdec.ptr313, %while.body ]
  %s.21091 = phi i8* [ %add.ptr263, %while.body.lr.ph ], [ %incdec.ptr312, %while.body ]
  %dec = add nsw i32 %i.01093, -1
  %incdec.ptr312 = getelementptr inbounds i8* %s.21091, i64 -1
  %98 = load i8* %incdec.ptr312, align 1, !tbaa !1
  %incdec.ptr313 = getelementptr inbounds i8* %d.01092, i64 -1
  store i8 %98, i8* %incdec.ptr313, align 1, !tbaa !1
  %tobool311 = icmp eq i32 %dec, 0
  br i1 %tobool311, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %99 = load i64* %clen, align 8, !tbaa !4
  %tobool314 = icmp eq i64 %99, 0
  br i1 %tobool314, label %if.end327, label %if.then315

if.then315:                                       ; preds = %while.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr305, i8* %c.0, i64 %99, i32 1, i1 false)
  br label %if.end327

if.else318:                                       ; preds = %if.else298
  %tobool319 = icmp eq i64 %97, 0
  br i1 %tobool319, label %if.else324, label %if.then320

if.then320:                                       ; preds = %if.else318
  %add.ptr266.sum = sub i64 %idx.ext265, %97
  %add.ptr322 = getelementptr inbounds i8* %s.01125, i64 %add.ptr266.sum
  call void @Perl_sv_chop(%struct.sv* %targ.0, i8* %add.ptr322) #8
  %100 = load i64* %clen, align 8, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr322, i8* %c.0, i64 %100, i32 1, i1 false)
  br label %if.end327

if.else324:                                       ; preds = %if.else318
  call void @Perl_sv_chop(%struct.sv* %targ.0, i8* %add.ptr266) #8
  br label %if.end327

if.end327:                                        ; preds = %while.end, %if.then315, %if.else324, %if.then320, %if.end292
  %and329 = and i8 %rxtainted.0, 1
  %tobool330 = icmp eq i8 %and329, 0
  br i1 %tobool330, label %if.end332, label %if.then331

if.then331:                                       ; preds = %if.end327
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end332

if.end332:                                        ; preds = %if.end327, %if.then331
  %101 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr333 = getelementptr inbounds %struct.sv** %101, i64 1
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr333, align 8, !tbaa !0
  br label %if.end406

do.body:                                          ; preds = %do.body.preheader, %if.end368
  %s.3 = phi i8* [ %add.ptr372, %if.end368 ], [ %s.1, %do.body.preheader ]
  %d.1 = phi i8* [ %d.3, %if.end368 ], [ %s.1, %do.body.preheader ]
  %iters.0 = phi i32 [ %inc, %if.end368 ], [ 0, %do.body.preheader ]
  %inc = add nsw i32 %iters.0, 1
  %cmp335 = icmp sgt i32 %iters.0, %conv96
  br i1 %cmp335, label %if.then337, label %if.end339

if.then337:                                       ; preds = %do.body
  %call338 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([18 x i8]* @.str27, i64 0, i64 0)) #8
  br label %return

if.end339:                                        ; preds = %do.body
  %102 = load i32** %startp345, align 8, !tbaa !0
  %103 = load i32* %102, align 4, !tbaa !3
  %idx.ext347 = sext i32 %103 to i64
  %add.ptr348 = getelementptr inbounds i8* %s.01125, i64 %idx.ext347
  %sub.ptr.lhs.cast349 = ptrtoint i8* %add.ptr348 to i64
  %sub.ptr.rhs.cast350 = ptrtoint i8* %s.3 to i64
  %sub.ptr.sub351 = sub i64 %sub.ptr.lhs.cast349, %sub.ptr.rhs.cast350
  %conv352 = trunc i64 %sub.ptr.sub351 to i32
  %tobool353 = icmp eq i32 %conv352, 0
  br i1 %tobool353, label %if.end363, label %if.then354

if.then354:                                       ; preds = %if.end339
  %cmp355 = icmp eq i8* %s.3, %d.1
  %sext1066.pre = shl i64 %sub.ptr.sub351, 32
  %idx.ext361.pre = ashr exact i64 %sext1066.pre, 32
  br i1 %cmp355, label %if.end360, label %if.then357

if.then357:                                       ; preds = %if.then354
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.1, i8* %s.3, i64 %idx.ext361.pre, i32 1, i1 false)
  br label %if.end360

if.end360:                                        ; preds = %if.then354, %if.then357
  %add.ptr362 = getelementptr inbounds i8* %d.1, i64 %idx.ext361.pre
  br label %if.end363

if.end363:                                        ; preds = %if.end339, %if.end360
  %d.2 = phi i8* [ %add.ptr362, %if.end360 ], [ %d.1, %if.end339 ]
  %104 = load i64* %clen, align 8, !tbaa !4
  %tobool364 = icmp eq i64 %104, 0
  br i1 %tobool364, label %if.end368, label %if.then365

if.then365:                                       ; preds = %if.end363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %d.2, i8* %c.0, i64 %104, i32 1, i1 false)
  %105 = load i64* %clen, align 8, !tbaa !4
  %add.ptr367 = getelementptr inbounds i8* %d.2, i64 %105
  br label %if.end368

if.end368:                                        ; preds = %if.end363, %if.then365
  %d.3 = phi i8* [ %add.ptr367, %if.then365 ], [ %d.2, %if.end363 ]
  %106 = load i32** %endp369, align 8, !tbaa !0
  %107 = load i32* %106, align 4, !tbaa !3
  %idx.ext371 = sext i32 %107 to i64
  %add.ptr372 = getelementptr inbounds i8* %s.01125, i64 %idx.ext371
  %108 = load i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  %cmp373 = icmp eq i32 %107, %103
  %conv374 = zext i1 %cmp373 to i32
  %call375 = call i32 %108(%struct.regexp* %rx.1, i8* %add.ptr372, i8* %add.ptr, i8* %s.01125, i32 %conv374, %struct.sv* %targ.0, i8* null, i32 24) #8
  %tobool376 = icmp eq i32 %call375, 0
  br i1 %tobool376, label %do.end, label %do.body

do.end:                                           ; preds = %if.end368
  %cmp377 = icmp eq i8* %add.ptr372, %d.3
  br i1 %cmp377, label %if.end396, label %if.then379

if.then379:                                       ; preds = %do.end
  %sub.ptr.lhs.cast380 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast381 = ptrtoint i8* %add.ptr372 to i64
  %sub.ptr.sub382 = sub i64 %sub.ptr.lhs.cast380, %sub.ptr.rhs.cast381
  %109 = load i8** %sv_any451, align 8, !tbaa !0
  %xpv_pv385 = bitcast i8* %109 to i8**
  %110 = load i8** %xpv_pv385, align 8, !tbaa !0
  %sub.ptr.lhs.cast386 = ptrtoint i8* %d.3 to i64
  %sub.ptr.rhs.cast387 = ptrtoint i8* %110 to i64
  %sext = shl i64 %sub.ptr.sub382, 32
  %conv389 = ashr exact i64 %sext, 32
  %sub.ptr.sub388 = add i64 %conv389, %sub.ptr.lhs.cast386
  %add390 = sub i64 %sub.ptr.sub388, %sub.ptr.rhs.cast387
  %xpv_cur392 = getelementptr inbounds i8* %109, i64 8
  %111 = bitcast i8* %xpv_cur392 to i64*
  store i64 %add390, i64* %111, align 8, !tbaa !4
  %sext1065 = add i64 %sext, 4294967296
  %conv394 = ashr exact i64 %sext1065, 32
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.3, i8* %add.ptr372, i64 %conv394, i32 1, i1 false)
  br label %if.end396

if.end396:                                        ; preds = %do.end, %if.then379
  %and398 = and i8 %rxtainted.0, 1
  %tobool399 = icmp eq i8 %and398, 0
  br i1 %tobool399, label %if.end401, label %if.then400

if.then400:                                       ; preds = %if.end396
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end401

if.end401:                                        ; preds = %if.end396, %if.then400
  %112 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %conv402 = sext i32 %inc to i64
  %call403 = call %struct.sv* @Perl_newSViv(i64 %conv402) #8
  %call404 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call403) #8
  %incdec.ptr405 = getelementptr inbounds %struct.sv** %112, i64 1
  store %struct.sv* %call404, %struct.sv** %incdec.ptr405, align 8, !tbaa !0
  br label %if.end406

if.end406:                                        ; preds = %if.end401, %if.end332
  %sp.2 = phi %struct.sv** [ %incdec.ptr333, %if.end332 ], [ %incdec.ptr405, %if.end401 ]
  %113 = load i32* %sv_flags, align 4, !tbaa !3
  %and408 = and i32 %113, 1760624639
  %or410 = or i32 %and408, 67371008
  store i32 %or410, i32* %sv_flags, align 4, !tbaa !3
  %tobool411 = icmp eq i8 %rxtainted.0, 0
  br i1 %tobool411, label %if.end413, label %if.then412

if.then412:                                       ; preds = %if.end406
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  %.pre1175 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end413

if.end413:                                        ; preds = %if.end406, %if.then412
  %114 = phi i32 [ %or410, %if.end406 ], [ %.pre1175, %if.then412 ]
  %and415 = and i32 %114, 16384
  %tobool416 = icmp eq i32 %and415, 0
  br i1 %tobool416, label %if.end419, label %if.then417

if.then417:                                       ; preds = %if.end413
  store %struct.sv** %sp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call418 = call i32 @Perl_mg_set(%struct.sv* %targ.0) #8
  %115 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end419

if.end419:                                        ; preds = %if.end413, %if.then417
  %sp.3 = phi %struct.sv** [ %115, %if.then417 ], [ %sp.2, %if.end413 ]
  %116 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool420 = icmp ne i8 %116, 0
  %117 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool422 = icmp ne i8 %117, 0
  %or.cond731 = and i1 %tobool420, %tobool422
  br i1 %or.cond731, label %if.then425, label %if.end428

if.then425:                                       ; preds = %if.end419
  call void @Perl_sv_taint(%struct.sv* %targ.0) #8
  br label %if.end428

if.end428:                                        ; preds = %if.then425, %if.end419
  br i1 %tobool222, label %if.then430, label %if.end433

if.then430:                                       ; preds = %if.end428
  %118 = load i32* %sv_flags, align 4, !tbaa !3
  %or432 = or i32 %118, 536870912
  store i32 %or432, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end433

if.end433:                                        ; preds = %if.then430, %if.end428
  %119 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp434 = icmp sgt i32 %119, %5
  br i1 %cmp434, label %if.then436, label %if.end437

if.then436:                                       ; preds = %if.end433
  call void @Perl_leave_scope(i32 %5) #8
  br label %if.end437

if.end437:                                        ; preds = %if.then436, %if.end433
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %120 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next438 = getelementptr inbounds %struct.op* %120, i64 0, i32 0
  %121 = load %struct.op** %op_next438, align 8, !tbaa !0
  br label %return

if.end439:                                        ; preds = %if.end205, %if.end135, %land.lhs.true211, %lor.lhs.false223, %land.lhs.true217, %land.lhs.true207
  %tobool2061083 = phi i1 [ true, %land.lhs.true211 ], [ true, %lor.lhs.false223 ], [ true, %land.lhs.true217 ], [ true, %land.lhs.true207 ], [ false, %if.end205 ], [ false, %if.end135 ]
  %nsv.11082 = phi %struct.sv* [ %nsv.1, %land.lhs.true211 ], [ %nsv.1, %lor.lhs.false223 ], [ %nsv.1, %land.lhs.true217 ], [ %nsv.1, %land.lhs.true207 ], [ %nsv.1, %if.end205 ], [ %nsv.01131, %if.end135 ]
  %doutf8.11081 = phi i8 [ %doutf8.1, %land.lhs.true211 ], [ %doutf8.1, %lor.lhs.false223 ], [ %doutf8.1, %land.lhs.true217 ], [ %doutf8.1, %land.lhs.true207 ], [ %doutf8.1, %if.end205 ], [ 0, %if.end135 ]
  %c.01080 = phi i8* [ %c.0, %land.lhs.true211 ], [ %c.0, %lor.lhs.false223 ], [ %c.0, %land.lhs.true217 ], [ %c.0, %land.lhs.true207 ], [ null, %if.end205 ], [ null, %if.end135 ]
  %122 = load i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  %or440 = or i32 %47, 2
  %call441 = call i32 %122(%struct.regexp* %rx.1, i8* %s.1, i8* %add.ptr, i8* %s.01125, i32 0, %struct.sv* %targ.0, i8* null, i32 %or440) #8
  %tobool442 = icmp eq i32 %call441, 0
  br i1 %tobool442, label %ret_no, label %if.then443

if.then443:                                       ; preds = %if.end439
  %tobool444 = icmp eq i32 %force_on_match.11128, 0
  br i1 %tobool444, label %if.end459, label %if.then445

if.then445:                                       ; preds = %if.then443
  %123 = load i32* %sv_flags, align 4, !tbaa !3
  %and447 = and i32 %123, 10223616
  %cmp448 = icmp eq i32 %and447, 262144
  br i1 %cmp448, label %cond.true450, label %cond.false455

cond.true450:                                     ; preds = %if.then445
  %124 = load i8** %sv_any451, align 8, !tbaa !0
  %xpv_cur452 = getelementptr inbounds i8* %124, i64 8
  %125 = bitcast i8* %xpv_cur452 to i64*
  %126 = load i64* %125, align 8, !tbaa !4
  store i64 %126, i64* %len, align 8, !tbaa !4
  %xpv_pv454 = bitcast i8* %124 to i8**
  %127 = load i8** %xpv_pv454, align 8, !tbaa !0
  br label %force_it.backedge

cond.false455:                                    ; preds = %if.then445
  %call456 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %targ.0, i64* %len, i32 2) #8
  br label %force_it.backedge

if.end459:                                        ; preds = %if.then443
  %sub.ptr.lhs.cast465 = ptrtoint i8* %s.1 to i64
  %sub.ptr.rhs.cast466 = ptrtoint i8* %s.01125 to i64
  %sub.ptr.sub467 = sub i64 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466
  %call468 = call %struct.sv* @Perl_newSVpvn(i8* %s.01125, i64 %sub.ptr.sub467) #8
  %128 = load i32* %sv_flags, align 4, !tbaa !3
  %and470 = and i32 %128, 536870912
  %tobool471 = icmp eq i32 %and470, 0
  br i1 %tobool471, label %if.end480, label %land.lhs.true472

land.lhs.true472:                                 ; preds = %if.end459
  %129 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private473 = getelementptr inbounds %struct.cop* %129, i64 0, i32 7
  %130 = load i8* %op_private473, align 1, !tbaa !1
  %and475 = and i8 %130, 8
  %tobool476 = icmp eq i8 %and475, 0
  br i1 %tobool476, label %if.then477, label %if.end480

if.then477:                                       ; preds = %land.lhs.true472
  %sv_flags478 = getelementptr inbounds %struct.sv* %call468, i64 0, i32 2
  %131 = load i32* %sv_flags478, align 4, !tbaa !3
  %or479 = or i32 %131, 536870912
  store i32 %or479, i32* %sv_flags478, align 4, !tbaa !3
  br label %if.end480

if.end480:                                        ; preds = %land.lhs.true472, %if.end459, %if.then477
  store %struct.pmop* %pm.1, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  br i1 %tobool2061083, label %if.end530, label %if.then482

if.then482:                                       ; preds = %if.end480
  %132 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool483 = icmp eq %struct.regexp* %rx.1, null
  br i1 %tobool483, label %land.end487, label %land.rhs484

land.rhs484:                                      ; preds = %if.then482
  %refcnt = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 9
  %133 = load i32* %refcnt, align 4, !tbaa !3
  %inc485 = add nsw i32 %133, 1
  store i32 %inc485, i32* %refcnt, align 4, !tbaa !3
  br label %land.end487

land.end487:                                      ; preds = %if.then482, %land.rhs484
  %134 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %134, i64 0, i32 2
  %135 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %134, i64 0, i32 3
  %136 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp489 = icmp slt i32 %135, %136
  br i1 %cmp489, label %cond.true491, label %cond.false494

cond.true491:                                     ; preds = %land.end487
  %inc493 = add nsw i32 %135, 1
  store i32 %inc493, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end497

cond.false494:                                    ; preds = %land.end487
  %call495 = call i32 @Perl_cxinc() #8
  %137 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix496 = getelementptr inbounds %struct.stackinfo* %137, i64 0, i32 2
  store i32 %call495, i32* %si_cxix496, align 4, !tbaa !3
  br label %cond.end497

cond.end497:                                      ; preds = %cond.false494, %cond.true491
  %138 = phi i32 [ %call495, %cond.false494 ], [ %inc493, %cond.true491 ]
  %139 = phi %struct.stackinfo* [ %137, %cond.false494 ], [ %134, %cond.true491 ]
  %idxprom = sext i32 %138 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %139, i64 0, i32 1
  %140 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_u = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1
  %cx_subst = bitcast %union.anon.0* %cx_u to %struct.subst*
  %sbu_iters = getelementptr inbounds %union.anon.0* %cx_u, i64 0, i32 0, i32 0
  store i32 0, i32* %sbu_iters, align 4, !tbaa !3
  %sbu_maxiters = getelementptr inbounds %struct.subst* %cx_subst, i64 0, i32 1
  store i32 %conv96, i32* %sbu_maxiters, align 4, !tbaa !3
  %sbu_rflags = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 1
  %141 = bitcast %struct.cop** %sbu_rflags to i32*
  store i32 %47, i32* %141, align 4, !tbaa !3
  %sbu_oldsave = getelementptr inbounds %struct.subst* %cx_subst, i64 0, i32 3
  store i32 %5, i32* %sbu_oldsave, align 4, !tbaa !3
  %sbu_once = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 2
  %142 = bitcast i32* %sbu_once to i8*
  store i8 %conv139, i8* %142, align 1, !tbaa !1
  %sbu_rxtainted = getelementptr inbounds %struct.subst* %cx_subst, i64 0, i32 5
  store i8 %rxtainted.0, i8* %sbu_rxtainted, align 1, !tbaa !1
  %sbu_orig = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 4
  %143 = bitcast i32* %sbu_orig to i8**
  store i8* %s.01125, i8** %143, align 8, !tbaa !0
  %sbu_dstr = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 5
  %call468.c = bitcast %struct.sv* %call468 to %struct.pmop*
  store %struct.pmop* %call468.c, %struct.pmop** %sbu_dstr, align 8, !tbaa !0
  %sbu_targ = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 6
  %144 = bitcast i8* %sbu_targ to %struct.sv**
  store %struct.sv* %targ.0, %struct.sv** %144, align 8, !tbaa !0
  %145 = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 0
  store i8* %s.1, i8** %145, align 8, !tbaa !0
  %sbu_m = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %146 = bitcast i32* %sbu_m to i8**
  store i8* %s.01125, i8** %146, align 8, !tbaa !0
  %sbu_strend = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  %add.ptr.c = bitcast i8* %add.ptr to %struct.op*
  store %struct.op* %add.ptr.c, %struct.op** %sbu_strend, align 8, !tbaa !0
  %sbu_rxres = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %147 = bitcast %struct.op** %sbu_rxres to i8**
  store %struct.op* null, %struct.op** %sbu_rxres, align 8, !tbaa !0
  %sbu_rx = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %rx.1.c = bitcast %struct.regexp* %rx.1 to %struct.op*
  store %struct.op* %rx.1.c, %struct.op** %sbu_rx, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %140, i64 %idxprom, i32 0
  store i32 4, i32* %cx_type, align 4, !tbaa !3
  call void @Perl_rxres_save(i8** %147, %struct.regexp* %rx.1) #8
  store %struct.sv** %132, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %148 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_pmreplroot = getelementptr inbounds %struct.op* %148, i64 1, i32 2
  %149 = load {}** %op_pmreplroot, align 8
  %150 = bitcast {}* %149 to %struct.op*
  br label %return

if.end530:                                        ; preds = %if.end480
  %or531 = or i32 %47, 24
  %startp561 = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 0
  %tobool566 = icmp ne i8 %doutf8.11081, 0
  %sv_flags568 = getelementptr inbounds %struct.sv* %call468, i64 0, i32 2
  %endp592 = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 1
  %tobool599 = icmp eq i8 %conv139, 0
  %subbeg = getelementptr inbounds %struct.regexp* %rx.1, i64 0, i32 6
  br label %do.body532

do.body532:                                       ; preds = %do.cond602, %if.end530
  %s.4 = phi i8* [ %s.1, %if.end530 ], [ %add.ptr595, %do.cond602 ]
  %strend.0 = phi i8* [ %add.ptr, %if.end530 ], [ %strend.1, %do.cond602 ]
  %iters.1 = phi i32 [ 0, %if.end530 ], [ %inc533, %do.cond602 ]
  %orig.0 = phi i8* [ %s.01125, %if.end530 ], [ %orig.1, %do.cond602 ]
  %nsv.2 = phi %struct.sv* [ %nsv.11082, %if.end530 ], [ %nsv.4, %do.cond602 ]
  %inc533 = add nsw i32 %iters.1, 1
  %cmp534 = icmp sgt i32 %iters.1, %conv96
  br i1 %cmp534, label %if.then536, label %if.end538

if.then536:                                       ; preds = %do.body532
  %call537 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([18 x i8]* @.str27, i64 0, i64 0)) #8
  br label %return

if.end538:                                        ; preds = %do.body532
  %151 = load i32* %reganch127, align 4, !tbaa !3
  %and545 = and i32 %151, 262144
  %tobool546 = icmp eq i32 %and545, 0
  br i1 %tobool546, label %if.end560, label %land.lhs.true547

land.lhs.true547:                                 ; preds = %if.end538
  %152 = load i8** %subbeg, align 8, !tbaa !0
  %cmp548 = icmp eq i8* %152, %orig.0
  br i1 %cmp548, label %if.end560, label %if.then550

if.then550:                                       ; preds = %land.lhs.true547
  %sub.ptr.lhs.cast552 = ptrtoint i8* %s.4 to i64
  %sub.ptr.rhs.cast553 = ptrtoint i8* %orig.0 to i64
  %sub.ptr.sub554 = sub i64 %sub.ptr.lhs.cast552, %sub.ptr.rhs.cast553
  %add.ptr555 = getelementptr inbounds i8* %152, i64 %sub.ptr.sub554
  %sub.ptr.lhs.cast556 = ptrtoint i8* %strend.0 to i64
  %sub.ptr.sub558 = sub i64 %sub.ptr.lhs.cast556, %sub.ptr.lhs.cast552
  %add.ptr555.sum = add i64 %sub.ptr.sub558, %sub.ptr.sub554
  %add.ptr559 = getelementptr inbounds i8* %152, i64 %add.ptr555.sum
  br label %if.end560

if.end560:                                        ; preds = %land.lhs.true547, %if.end538, %if.then550
  %s.5 = phi i8* [ %add.ptr555, %if.then550 ], [ %s.4, %land.lhs.true547 ], [ %s.4, %if.end538 ]
  %strend.1 = phi i8* [ %add.ptr559, %if.then550 ], [ %strend.0, %land.lhs.true547 ], [ %strend.0, %if.end538 ]
  %orig.1 = phi i8* [ %152, %if.then550 ], [ %orig.0, %land.lhs.true547 ], [ %orig.0, %if.end538 ]
  %153 = load i32** %startp561, align 8, !tbaa !0
  %154 = load i32* %153, align 4, !tbaa !3
  %idx.ext563 = sext i32 %154 to i64
  %add.ptr564 = getelementptr inbounds i8* %orig.1, i64 %idx.ext563
  br i1 %tobool566, label %land.lhs.true567, label %if.else587

land.lhs.true567:                                 ; preds = %if.end560
  %155 = load i32* %sv_flags568, align 4, !tbaa !3
  %and569 = and i32 %155, 536870912
  %tobool570 = icmp eq i32 %and569, 0
  br i1 %tobool570, label %if.then571, label %if.else587

if.then571:                                       ; preds = %land.lhs.true567
  %tobool572 = icmp eq %struct.sv* %nsv.2, null
  %sub.ptr.lhs.cast574 = ptrtoint i8* %add.ptr564 to i64
  %sub.ptr.rhs.cast575 = ptrtoint i8* %s.5 to i64
  %sub.ptr.sub576 = sub i64 %sub.ptr.lhs.cast574, %sub.ptr.rhs.cast575
  br i1 %tobool572, label %if.then573, label %if.else579

if.then573:                                       ; preds = %if.then571
  %call577 = call %struct.sv* @Perl_newSVpvn(i8* %s.5, i64 %sub.ptr.sub576) #8
  %call578 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call577) #8
  br label %if.end583

if.else579:                                       ; preds = %if.then571
  call void @Perl_sv_setpvn(%struct.sv* %nsv.2, i8* %s.5, i64 %sub.ptr.sub576) #8
  br label %if.end583

if.end583:                                        ; preds = %if.else579, %if.then573
  %nsv.3 = phi %struct.sv* [ %nsv.2, %if.else579 ], [ %call578, %if.then573 ]
  %sv_flags584 = getelementptr inbounds %struct.sv* %nsv.3, i64 0, i32 2
  %156 = load i32* %sv_flags584, align 4, !tbaa !3
  %and585 = and i32 %156, -536870913
  store i32 %and585, i32* %sv_flags584, align 4, !tbaa !3
  %call586 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %nsv.3, i32 2) #8
  call void @Perl_sv_catsv_flags(%struct.sv* %call468, %struct.sv* %nsv.3, i32 2) #8
  br label %if.end591

if.else587:                                       ; preds = %land.lhs.true567, %if.end560
  %sub.ptr.lhs.cast588 = ptrtoint i8* %add.ptr564 to i64
  %sub.ptr.rhs.cast589 = ptrtoint i8* %s.5 to i64
  %sub.ptr.sub590 = sub i64 %sub.ptr.lhs.cast588, %sub.ptr.rhs.cast589
  call void @Perl_sv_catpvn_flags(%struct.sv* %call468, i8* %s.5, i64 %sub.ptr.sub590, i32 2) #8
  br label %if.end591

if.end591:                                        ; preds = %if.else587, %if.end583
  %nsv.4 = phi %struct.sv* [ %nsv.2, %if.else587 ], [ %nsv.3, %if.end583 ]
  %157 = load i32** %endp592, align 8, !tbaa !0
  %158 = load i32* %157, align 4, !tbaa !3
  %idx.ext594 = sext i32 %158 to i64
  %add.ptr595 = getelementptr inbounds i8* %orig.1, i64 %idx.ext594
  %159 = load i64* %clen, align 8, !tbaa !4
  %tobool596 = icmp eq i64 %159, 0
  br i1 %tobool596, label %if.end598, label %if.then597

if.then597:                                       ; preds = %if.end591
  call void @Perl_sv_catpvn_flags(%struct.sv* %call468, i8* %c.01080, i64 %159, i32 2) #8
  br label %if.end598

if.end598:                                        ; preds = %if.end591, %if.then597
  br i1 %tobool599, label %do.cond602, label %do.end607

do.cond602:                                       ; preds = %if.end598
  %160 = load i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  %cmp603 = icmp eq i32 %158, %154
  %conv604 = zext i1 %cmp603 to i32
  %call605 = call i32 %160(%struct.regexp* %rx.1, i8* %add.ptr595, i8* %strend.1, i8* %orig.1, i32 %conv604, %struct.sv* %targ.0, i8* null, i32 %or531) #8
  %tobool606 = icmp eq i32 %call605, 0
  br i1 %tobool606, label %do.end607, label %do.body532

do.end607:                                        ; preds = %do.cond602, %if.end598
  br i1 %tobool566, label %land.lhs.true610, label %if.else635

land.lhs.true610:                                 ; preds = %do.end607
  %161 = load i32* %sv_flags, align 4, !tbaa !3
  %and612 = and i32 %161, 536870912
  %tobool613 = icmp eq i32 %and612, 0
  br i1 %tobool613, label %if.then619, label %land.lhs.true614

land.lhs.true614:                                 ; preds = %land.lhs.true610
  %162 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private615 = getelementptr inbounds %struct.cop* %162, i64 0, i32 7
  %163 = load i8* %op_private615, align 1, !tbaa !1
  %and617 = and i8 %163, 8
  %tobool618 = icmp eq i8 %and617, 0
  br i1 %tobool618, label %if.else635, label %if.then619

if.then619:                                       ; preds = %land.lhs.true614, %land.lhs.true610
  %tobool620 = icmp eq %struct.sv* %nsv.4, null
  %sub.ptr.lhs.cast622 = ptrtoint i8* %strend.1 to i64
  %sub.ptr.rhs.cast623 = ptrtoint i8* %add.ptr595 to i64
  %sub.ptr.sub624 = sub i64 %sub.ptr.lhs.cast622, %sub.ptr.rhs.cast623
  br i1 %tobool620, label %if.then621, label %if.else627

if.then621:                                       ; preds = %if.then619
  %call625 = call %struct.sv* @Perl_newSVpvn(i8* %add.ptr595, i64 %sub.ptr.sub624) #8
  %call626 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call625) #8
  br label %if.end631

if.else627:                                       ; preds = %if.then619
  call void @Perl_sv_setpvn(%struct.sv* %nsv.4, i8* %add.ptr595, i64 %sub.ptr.sub624) #8
  br label %if.end631

if.end631:                                        ; preds = %if.else627, %if.then621
  %nsv.5 = phi %struct.sv* [ %nsv.4, %if.else627 ], [ %call626, %if.then621 ]
  %sv_flags632 = getelementptr inbounds %struct.sv* %nsv.5, i64 0, i32 2
  %164 = load i32* %sv_flags632, align 4, !tbaa !3
  %and633 = and i32 %164, -536870913
  store i32 %and633, i32* %sv_flags632, align 4, !tbaa !3
  %call634 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %nsv.5, i32 2) #8
  call void @Perl_sv_catsv_flags(%struct.sv* %call468, %struct.sv* %nsv.5, i32 2) #8
  br label %if.end639

if.else635:                                       ; preds = %land.lhs.true614, %do.end607
  %sub.ptr.lhs.cast636 = ptrtoint i8* %strend.1 to i64
  %sub.ptr.rhs.cast637 = ptrtoint i8* %add.ptr595 to i64
  %sub.ptr.sub638 = sub i64 %sub.ptr.lhs.cast636, %sub.ptr.rhs.cast637
  call void @Perl_sv_catpvn_flags(%struct.sv* %call468, i8* %add.ptr595, i64 %sub.ptr.sub638, i32 2) #8
  br label %if.end639

if.end639:                                        ; preds = %if.else635, %if.end631
  %165 = load i32* %sv_flags, align 4, !tbaa !3
  %and641 = and i32 %165, 2097152
  %tobool642 = icmp eq i32 %and641, 0
  br i1 %tobool642, label %land.end646, label %land.rhs643

land.rhs643:                                      ; preds = %if.end639
  %call644 = call i32 @Perl_sv_backoff(%struct.sv* %targ.0) #8
  br label %land.end646

land.end646:                                      ; preds = %if.end639, %land.rhs643
  %166 = load i8** %sv_any451, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %166, i64 16
  %167 = bitcast i8* %xpv_len to i64*
  %168 = load i64* %167, align 8, !tbaa !4
  %tobool649 = icmp eq i64 %168, 0
  br i1 %tobool649, label %if.end653, label %if.then650

if.then650:                                       ; preds = %land.end646
  %xpv_pv652 = bitcast i8* %166 to i8**
  %169 = load i8** %xpv_pv652, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %169) #8
  %.pre1171 = load i8** %sv_any451, align 8, !tbaa !0
  br label %if.end653

if.end653:                                        ; preds = %land.end646, %if.then650
  %170 = phi i8* [ %166, %land.end646 ], [ %.pre1171, %if.then650 ]
  %sv_any654 = getelementptr inbounds %struct.sv* %call468, i64 0, i32 0
  %171 = load i8** %sv_any654, align 8, !tbaa !0
  %xpv_pv655 = bitcast i8* %171 to i8**
  %172 = load i8** %xpv_pv655, align 8, !tbaa !0
  %xpv_pv657 = bitcast i8* %170 to i8**
  store i8* %172, i8** %xpv_pv657, align 8, !tbaa !0
  %173 = load i8** %sv_any654, align 8, !tbaa !0
  %xpv_cur659 = getelementptr inbounds i8* %173, i64 8
  %174 = bitcast i8* %xpv_cur659 to i64*
  %175 = load i64* %174, align 8, !tbaa !4
  %176 = load i8** %sv_any451, align 8, !tbaa !0
  %xpv_cur661 = getelementptr inbounds i8* %176, i64 8
  %177 = bitcast i8* %xpv_cur661 to i64*
  store i64 %175, i64* %177, align 8, !tbaa !4
  %xpv_len663 = getelementptr inbounds i8* %173, i64 16
  %178 = bitcast i8* %xpv_len663 to i64*
  %179 = load i64* %178, align 8, !tbaa !4
  %xpv_len665 = getelementptr inbounds i8* %176, i64 16
  %180 = bitcast i8* %xpv_len665 to i64*
  store i64 %179, i64* %180, align 8, !tbaa !4
  %181 = load i32* %sv_flags568, align 4, !tbaa !3
  %and667 = and i32 %181, 536870912
  %tobool668 = icmp eq i32 %and667, 0
  br i1 %tobool668, label %land.end676, label %land.rhs669

land.rhs669:                                      ; preds = %if.end653
  %182 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private670 = getelementptr inbounds %struct.cop* %182, i64 0, i32 7
  %183 = load i8* %op_private670, align 1, !tbaa !1
  %and672 = and i8 %183, 8
  %lnot674 = icmp eq i8 %and672, 0
  %.pre1172 = load i8** %sv_any654, align 8, !tbaa !0
  br label %land.end676

land.end676:                                      ; preds = %if.end653, %land.rhs669
  %184 = phi i8* [ %173, %if.end653 ], [ %.pre1172, %land.rhs669 ]
  %185 = phi i1 [ false, %if.end653 ], [ %lnot674, %land.rhs669 ]
  %land.ext677 = zext i1 %185 to i8
  %or679 = or i8 %land.ext677, %doutf8.11081
  %xpv_pv682 = bitcast i8* %184 to i8**
  store i8* null, i8** %xpv_pv682, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call468) #8
  %and684 = and i8 %rxtainted.0, 1
  %tobool685 = icmp eq i8 %and684, 0
  br i1 %tobool685, label %if.end687, label %if.then686

if.then686:                                       ; preds = %land.end676
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  br label %if.end687

if.end687:                                        ; preds = %land.end676, %if.then686
  %186 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %conv688 = sext i32 %inc533 to i64
  %call689 = call %struct.sv* @Perl_newSViv(i64 %conv688) #8
  %call690 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call689) #8
  %incdec.ptr691 = getelementptr inbounds %struct.sv** %186, i64 1
  store %struct.sv* %call690, %struct.sv** %incdec.ptr691, align 8, !tbaa !0
  %187 = load i32* %sv_flags, align 4, !tbaa !3
  %and693 = and i32 %187, 1223753727
  %tobool696 = icmp eq i8 %or679, 0
  %or695.or699.v = select i1 %tobool696, i32 67371008, i32 604241920
  %or695.or699 = or i32 %and693, %or695.or699.v
  store i32 %or695.or699, i32* %sv_flags, align 4, !tbaa !3
  %tobool701 = icmp eq i8 %rxtainted.0, 0
  br i1 %tobool701, label %if.end703, label %if.then702

if.then702:                                       ; preds = %if.end687
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  %.pre1173 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end703

if.end703:                                        ; preds = %if.end687, %if.then702
  %188 = phi i32 [ %or695.or699, %if.end687 ], [ %.pre1173, %if.then702 ]
  %and705 = and i32 %188, 16384
  %tobool706 = icmp eq i32 %and705, 0
  br i1 %tobool706, label %if.end709, label %if.then707

if.then707:                                       ; preds = %if.end703
  %call708 = call i32 @Perl_mg_set(%struct.sv* %targ.0) #8
  br label %if.end709

if.end709:                                        ; preds = %if.end703, %if.then707
  %189 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool710 = icmp ne i8 %189, 0
  %190 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool712 = icmp ne i8 %190, 0
  %or.cond733 = and i1 %tobool710, %tobool712
  br i1 %or.cond733, label %if.then715, label %if.end718

if.then715:                                       ; preds = %if.end709
  call void @Perl_sv_taint(%struct.sv* %targ.0) #8
  br label %if.end718

if.end718:                                        ; preds = %if.then715, %if.end709
  %191 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp719 = icmp sgt i32 %191, %5
  br i1 %cmp719, label %if.then721, label %if.end722

if.then721:                                       ; preds = %if.end718
  call void @Perl_leave_scope(i32 %5) #8
  br label %if.end722

if.end722:                                        ; preds = %if.then721, %if.end718
  store %struct.sv** %incdec.ptr691, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %192 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next723 = getelementptr inbounds %struct.op* %192, i64 0, i32 0
  %193 = load %struct.op** %op_next723, align 8, !tbaa !0
  br label %return

ret_no:                                           ; preds = %if.then130, %if.end439
  %194 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr725 = getelementptr inbounds %struct.sv** %194, i64 1
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr725, align 8, !tbaa !0
  %195 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp726 = icmp sgt i32 %195, %5
  br i1 %cmp726, label %if.then728, label %if.end729

if.then728:                                       ; preds = %ret_no
  call void @Perl_leave_scope(i32 %5) #8
  br label %if.end729

if.end729:                                        ; preds = %if.then728, %ret_no
  store %struct.sv** %incdec.ptr725, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %196 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next730 = getelementptr inbounds %struct.op* %196, i64 0, i32 0
  %197 = load %struct.op** %op_next730, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end729, %if.end722, %if.then536, %cond.end497, %if.end437, %if.then337, %if.end236, %if.then85, %if.then30
  %retval.0 = phi %struct.op* [ %call31, %if.then30 ], [ %call537, %if.then536 ], [ %193, %if.end722 ], [ %150, %cond.end497 ], [ %197, %if.end729 ], [ %121, %if.end437 ], [ %call338, %if.then337 ], [ %82, %if.end236 ], [ %call86, %if.then85 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_utf8_length(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_recode_to_utf8(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_chop(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_rxres_save(i8**, %struct.regexp*) #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_grepwhile() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %1, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.end, label %cond.false

cond.false:                                       ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %cond.false10, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %4 = bitcast i8* %3 to %struct.xpv*
  store %struct.xpv* %4, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool3 = icmp eq i8* %3, null
  br i1 %tobool3, label %land.end9, label %land.rhs

land.rhs:                                         ; preds = %cond.true2
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %cmp = icmp ugt i64 %6, 1
  br i1 %cmp, label %land.end9, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool5 = icmp eq i64 %6, 0
  br i1 %tobool5, label %land.end9, label %land.rhs6

land.rhs6:                                        ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %3 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  %8 = load i8* %7, align 1, !tbaa !1
  %cmp7 = icmp ne i8 %8, 48
  br label %land.end9

land.end9:                                        ; preds = %lor.rhs, %cond.true2, %land.rhs, %land.rhs6
  %9 = phi i1 [ false, %cond.true2 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp7, %land.rhs6 ]
  %cond = zext i1 %9 to i32
  br label %cond.end33

cond.false10:                                     ; preds = %cond.false
  %and12 = and i32 %2, 65536
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %cond.false18, label %cond.true14

cond.true14:                                      ; preds = %cond.false10
  %sv_any15 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %10 = load i8** %sv_any15, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %10, i64 24
  %11 = bitcast i8* %xiv_iv to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %cmp16 = icmp ne i64 %12, 0
  %conv17 = zext i1 %cmp16 to i32
  br label %cond.end33

cond.false18:                                     ; preds = %cond.false10
  %and20 = and i32 %2, 131072
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %cond.false26, label %cond.true22

cond.true22:                                      ; preds = %cond.false18
  %sv_any23 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %13 = load i8** %sv_any23, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %13, i64 32
  %14 = bitcast i8* %xnv_nv to double*
  %15 = load double* %14, align 8, !tbaa !5
  %cmp24 = fcmp une double %15, 0.000000e+00
  %conv25 = zext i1 %cmp24 to i32
  br label %cond.end33

cond.false26:                                     ; preds = %cond.false18
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %1) #8
  %conv27 = sext i8 %call to i32
  br label %cond.end33

cond.end33:                                       ; preds = %land.end9, %cond.true22, %cond.false26, %cond.true14
  %cond34 = phi i32 [ %cond, %land.end9 ], [ %conv17, %cond.true14 ], [ %conv25, %cond.true22 ], [ %conv27, %cond.false26 ]
  %tobool35 = icmp eq i32 %cond34, 0
  br i1 %tobool35, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end33
  %16 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %17 = load i32* %16, align 4, !tbaa !3
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %18, i64 %idxprom
  %19 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i32* %16, i64 -1
  %20 = load i32* %arrayidx36, align 4, !tbaa !3
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %arrayidx36, align 4, !tbaa !3
  %idxprom37 = sext i32 %20 to i64
  %arrayidx38 = getelementptr inbounds %struct.sv** %18, i64 %idxprom37
  store %struct.sv* %19, %struct.sv** %arrayidx38, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end33, %if.then
  %21 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %22 = load i32* %21, align 4, !tbaa !3
  %inc39 = add nsw i32 %22, 1
  store i32 %inc39, i32* %21, align 4, !tbaa !3
  tail call void @Perl_pop_scope() #8
  %23 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %24 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %25 = load i32* %24, align 4, !tbaa !3
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %23, i64 %idx.ext
  %cmp40 = icmp ugt %struct.sv** %add.ptr, %incdec.ptr
  br i1 %cmp40, label %if.then42, label %if.else100

if.then42:                                        ; preds = %if.end
  %26 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %26, i64 0, i32 6
  %27 = load i8* %op_flags, align 1, !tbaa !1
  %conv43 = zext i8 %27 to i32
  %and44 = and i32 %conv43, 3
  %cmp45 = icmp eq i32 %and44, 1
  br i1 %cmp45, label %cond.end68, label %cond.false48

cond.false48:                                     ; preds = %if.then42
  %cmp52 = icmp eq i32 %and44, 2
  br i1 %cmp52, label %cond.end68, label %cond.false55

cond.false55:                                     ; preds = %cond.false48
  %cmp59 = icmp eq i32 %and44, 3
  br i1 %cmp59, label %cond.end68, label %cond.false62

cond.false62:                                     ; preds = %cond.false55
  %call63 = tail call i32 @Perl_block_gimme() #8
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false48, %cond.false55, %cond.false62, %if.then42
  %cond69 = phi i32 [ 128, %if.then42 ], [ 0, %cond.false48 ], [ %call63, %cond.false62 ], [ 1, %cond.false55 ]
  tail call void @Perl_pop_scope() #8
  %28 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr70 = getelementptr inbounds i32* %28, i64 -1
  %29 = load i32* %incdec.ptr70, align 4, !tbaa !3
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %incdec.ptr70, align 4, !tbaa !3
  %arrayidx71 = getelementptr inbounds i32* %28, i64 -2
  %30 = load i32* %arrayidx71, align 4, !tbaa !3
  %sub = sub nsw i32 %dec, %30
  %31 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %incdec.ptr73 = getelementptr inbounds i32* %28, i64 -3
  store i32* %incdec.ptr73, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %idx.ext74 = sext i32 %30 to i64
  %add.ptr75 = getelementptr inbounds %struct.sv** %31, i64 %idx.ext74
  switch i32 %cond69, label %if.end99 [
    i32 0, label %if.then78
    i32 1, label %if.then95
  ]

if.then78:                                        ; preds = %cond.end68
  %32 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %32, i64 0, i32 3
  %33 = load i64* %op_targ, align 8, !tbaa !4
  %34 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds %struct.sv** %34, i64 %33
  %35 = load %struct.sv** %arrayidx79, align 8, !tbaa !0
  %conv80 = sext i32 %sub to i64
  tail call void @Perl_sv_setiv(%struct.sv* %35, i64 %conv80) #8
  %sv_flags81 = getelementptr inbounds %struct.sv* %35, i64 0, i32 2
  %36 = load i32* %sv_flags81, align 4, !tbaa !3
  %and82 = and i32 %36, 16384
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.then78
  %call85 = tail call i32 @Perl_mg_set(%struct.sv* %35) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then78, %if.then84
  %37 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr75 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp87 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end86
  %call90 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr75, %struct.sv** %add.ptr75, i32 1) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86
  %sp.0 = phi %struct.sv** [ %call90, %if.then89 ], [ %add.ptr75, %if.end86 ]
  %incdec.ptr92 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %35, %struct.sv** %incdec.ptr92, align 8, !tbaa !0
  br label %if.end99

if.then95:                                        ; preds = %cond.end68
  %idx.ext96 = sext i32 %sub to i64
  %add.ptr75.sum = add i64 %idx.ext74, %idx.ext96
  %add.ptr97 = getelementptr inbounds %struct.sv** %31, i64 %add.ptr75.sum
  br label %if.end99

if.end99:                                         ; preds = %cond.end68, %if.then95, %if.end91
  %sp.1 = phi %struct.sv** [ %incdec.ptr92, %if.end91 ], [ %add.ptr97, %if.then95 ], [ %add.ptr75, %cond.end68 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %38 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %38, i64 0, i32 0
  br label %return

if.else100:                                       ; preds = %if.end
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_vptr(i8* bitcast (%struct.pmop** @PL_curpm to i8*)) #8
  %39 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %40 = load i32* %39, align 4, !tbaa !3
  %idxprom101 = sext i32 %40 to i64
  %41 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds %struct.sv** %41, i64 %idxprom101
  %42 = load %struct.sv** %arrayidx102, align 8, !tbaa !0
  %sv_flags103 = getelementptr inbounds %struct.sv* %42, i64 0, i32 2
  %43 = load i32* %sv_flags103, align 4, !tbaa !3
  %and104 = and i32 %43, -2049
  store i32 %and104, i32* %sv_flags103, align 4, !tbaa !3
  %44 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any105 = getelementptr inbounds %struct.gv* %44, i64 0, i32 0
  %45 = load %struct.xpvgv** %sv_any105, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %45, i64 0, i32 7
  %46 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %46, i64 0, i32 0
  store %struct.sv* %42, %struct.sv** %gp_sv, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %47 = load %struct.op** @PL_op, align 8, !tbaa !0
  %48 = getelementptr inbounds %struct.op* %47, i64 1, i32 1
  br label %return

return:                                           ; preds = %if.else100, %if.end99
  %retval.0.in = phi %struct.op** [ %op_next, %if.end99 ], [ %48, %if.else100 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_save_vptr(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leavesub() #0 {
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
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix15 = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 2
  %14 = load i32* %si_cxix15, align 4, !tbaa !3
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %si_cxix15, align 4, !tbaa !3
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  switch i8 %12, label %if.end86 [
    i8 0, label %if.then
    i8 1, label %if.then75
  ]

if.then:                                          ; preds = %entry
  %add.ptr.sum272 = add i64 %idx.ext, 1
  %add.ptr17 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum272
  %cmp18 = icmp ugt %struct.sv** %add.ptr17, %0
  br i1 %cmp18, label %if.else58, label %if.then20

if.then20:                                        ; preds = %if.then
  %blk_u = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7
  %cv = bitcast %union.anon.1* %blk_u to %struct.cv**
  %15 = load %struct.cv** %cv, align 8, !tbaa !0
  %tobool = icmp eq %struct.cv* %15, null
  br i1 %tobool, label %if.else52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20
  %sv_any = getelementptr inbounds %struct.cv* %15, i64 0, i32 0
  %16 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %16, i64 0, i32 14
  %17 = load i64* %xcv_depth, align 8, !tbaa !4
  %cmp28 = icmp sgt i64 %17, 1
  br i1 %cmp28, label %if.then30, label %if.else52

if.then30:                                        ; preds = %land.lhs.true
  %18 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %19, 2048
  %tobool31 = icmp eq i32 %and, 0
  store %struct.sv* %18, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool33 = icmp ne %struct.sv* %18, null
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then30
  br i1 %tobool33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then32
  %sv_refcnt = getelementptr inbounds %struct.sv* %18, i64 0, i32 1
  %20 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc34 = add i32 %20, 1
  store i32 %inc34, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then32
  store %struct.sv* %18, %struct.sv** %add.ptr17, align 8, !tbaa !0
  %21 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %22 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp36 = icmp sgt i32 %21, %22
  br i1 %cmp36, label %if.then38, label %if.end

if.then38:                                        ; preds = %land.end
  tail call void @Perl_free_tmps() #8
  %.pre = load %struct.sv** %add.ptr17, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then38, %land.end
  %23 = phi %struct.sv* [ %.pre, %if.then38 ], [ %18, %land.end ]
  %call = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %23) #8
  br label %if.end86

if.else:                                          ; preds = %if.then30
  br i1 %tobool33, label %land.rhs40, label %land.end44

land.rhs40:                                       ; preds = %if.else
  %sv_refcnt41 = getelementptr inbounds %struct.sv* %18, i64 0, i32 1
  %24 = load i32* %sv_refcnt41, align 4, !tbaa !3
  %inc42 = add i32 %24, 1
  store i32 %inc42, i32* %sv_refcnt41, align 4, !tbaa !3
  br label %land.end44

land.end44:                                       ; preds = %land.rhs40, %if.else
  %25 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %26 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp46 = icmp sgt i32 %25, %26
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.end44
  tail call void @Perl_free_tmps() #8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.end44
  %call50 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %18) #8
  store %struct.sv* %call50, %struct.sv** %add.ptr17, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %18) #8
  br label %if.end86

if.else52:                                        ; preds = %if.then20, %land.lhs.true
  %27 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags53 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags53, align 4, !tbaa !3
  %and54 = and i32 %28, 2048
  %tobool55 = icmp eq i32 %and54, 0
  br i1 %tobool55, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.else52
  %call56 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %27) #8
  br label %cond.end

cond.end:                                         ; preds = %if.else52, %cond.false
  %cond = phi %struct.sv* [ %call56, %cond.false ], [ %27, %if.else52 ]
  store %struct.sv* %cond, %struct.sv** %add.ptr17, align 8, !tbaa !0
  br label %if.end86

if.else58:                                        ; preds = %if.then
  %29 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp59 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp59, label %if.then61, label %if.end70

if.then61:                                        ; preds = %if.else58
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast63 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast63
  %call67 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %add.ptr17, i32 0) #8
  %31 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %32 = shl i64 %sub.ptr.sub64, 29
  %idx.ext68 = ashr i64 %32, 32
  %add.ptr69 = getelementptr inbounds %struct.sv** %31, i64 %idx.ext68
  br label %if.end70

if.end70:                                         ; preds = %if.then61, %if.else58
  %mark.0 = phi %struct.sv** [ %add.ptr69, %if.then61 ], [ %add.ptr17, %if.else58 ]
  store %struct.sv* @PL_sv_undef, %struct.sv** %mark.0, align 8, !tbaa !0
  br label %if.end86

if.then75:                                        ; preds = %entry
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr76 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum
  %cmp77274 = icmp ugt %struct.sv** %add.ptr76, %0
  br i1 %cmp77274, label %if.end86, label %for.body

for.body:                                         ; preds = %if.then75, %for.inc
  %mark.2275 = phi %struct.sv** [ %incdec.ptr, %for.inc ], [ %add.ptr76, %if.then75 ]
  %33 = load %struct.sv** %mark.2275, align 8, !tbaa !0
  %sv_flags79 = getelementptr inbounds %struct.sv* %33, i64 0, i32 2
  %34 = load i32* %sv_flags79, align 4, !tbaa !3
  %and80 = and i32 %34, 2048
  %tobool81 = icmp eq i32 %and80, 0
  br i1 %tobool81, label %if.then82, label %for.inc

if.then82:                                        ; preds = %for.body
  %call83 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %33) #8
  store %struct.sv* %call83, %struct.sv** %mark.2275, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then82
  %incdec.ptr = getelementptr inbounds %struct.sv** %mark.2275, i64 1
  %cmp77 = icmp ugt %struct.sv** %incdec.ptr, %0
  br i1 %cmp77, label %if.end86, label %for.body

if.end86:                                         ; preds = %if.then75, %for.inc, %entry, %if.end70, %if.end, %if.end49, %cond.end
  %sp.0 = phi %struct.sv** [ %add.ptr17, %if.end ], [ %add.ptr17, %if.end49 ], [ %add.ptr17, %cond.end ], [ %mark.0, %if.end70 ], [ %0, %entry ], [ %0, %for.inc ], [ %0, %if.then75 ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #8
  %35 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix87 = getelementptr inbounds %struct.stackinfo* %35, i64 0, i32 2
  %36 = load i32* %si_cxix87, align 4, !tbaa !3
  %dec88 = add nsw i32 %36, -1
  store i32 %dec88, i32* %si_cxix87, align 4, !tbaa !3
  %blk_u91 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7
  %hasargs = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %37 = bitcast %struct.sv** %hasargs to i8*
  %38 = load i8* %37, align 1, !tbaa !1
  %tobool93 = icmp eq i8 %38, 0
  br i1 %tobool93, label %if.end198, label %if.then94

if.then94:                                        ; preds = %if.end86
  %39 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any95 = getelementptr inbounds %struct.gv* %39, i64 0, i32 0
  %40 = load %struct.xpvgv** %sv_any95, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %40, i64 0, i32 7
  %41 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %41, i64 0, i32 4
  %42 = load %struct.av** %gp_av, align 8, !tbaa !0
  %43 = bitcast %struct.av* %42 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %43) #8
  %savearray = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %44 = load %struct.op** %savearray, align 8
  %45 = bitcast %struct.op* %44 to %struct.av*
  %46 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any100 = getelementptr inbounds %struct.gv* %46, i64 0, i32 0
  %47 = load %struct.xpvgv** %sv_any100, align 8, !tbaa !0
  %xgv_gp101 = getelementptr inbounds %struct.xpvgv* %47, i64 0, i32 7
  %48 = load %struct.gp** %xgv_gp101, align 8, !tbaa !0
  %gp_av102 = getelementptr inbounds %struct.gp* %48, i64 0, i32 4
  store %struct.av* %45, %struct.av** %gp_av102, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %49 = load %struct.op** %argarray, align 8
  %sv_any107 = bitcast %struct.op* %49 to %struct.xpvav**
  %50 = load %struct.xpvav** %sv_any107, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 9
  %51 = load i8* %xav_flags, align 1, !tbaa !1
  %and109 = and i8 %51, 1
  %tobool110 = icmp eq i8 %and109, 0
  br i1 %tobool110, label %if.else153, label %if.then111

if.then111:                                       ; preds = %if.then94
  %xav_fill = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 1
  %52 = load i64* %xav_fill, align 8, !tbaa !4
  %53 = bitcast %struct.op* %49 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %53) #8
  %call123 = tail call %struct.av* @Perl_newAV() #8
  %call123.c = bitcast %struct.av* %call123 to %struct.op*
  store %struct.op* %call123.c, %struct.op** %argarray, align 8, !tbaa !0
  %conv134 = trunc i64 %52 to i32
  tail call void @Perl_av_extend(%struct.av* %call123, i32 %conv134) #8
  %54 = load %struct.op** %argarray, align 8
  %sv_any140 = bitcast %struct.op* %54 to %struct.xpvav**
  %55 = load %struct.xpvav** %sv_any140, align 8, !tbaa !0
  %xav_flags141 = getelementptr inbounds %struct.xpvav* %55, i64 0, i32 9
  store i8 2, i8* %xav_flags141, align 1, !tbaa !1
  %56 = load %struct.op** %argarray, align 8
  %57 = bitcast %struct.op* %56 to %struct.sv*
  %oldcomppad = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %58 = load %struct.sv** %oldcomppad, align 8
  %sv_any151 = bitcast %struct.sv* %58 to %struct.xpvav**
  %59 = load %struct.xpvav** %sv_any151, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %59, i64 0, i32 0
  %60 = load i8** %xav_array, align 8, !tbaa !0
  %61 = bitcast i8* %60 to %struct.sv**
  store %struct.sv* %57, %struct.sv** %61, align 8, !tbaa !0
  br label %if.end198

if.else153:                                       ; preds = %if.then94
  %xav_array160 = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 0
  %62 = load i8** %xav_array160, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 7
  %63 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast167 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast168 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %sub.ptr.div170 = ashr exact i64 %sub.ptr.sub169, 3
  %xav_max = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 2
  %64 = load i64* %xav_max, align 8, !tbaa !4
  %add = add nsw i64 %sub.ptr.div170, %64
  store i64 %add, i64* %xav_max, align 8, !tbaa !4
  %65 = load %struct.op** %argarray, align 8
  %sv_any182 = bitcast %struct.op* %65 to %struct.xpvav**
  %66 = load %struct.xpvav** %sv_any182, align 8, !tbaa !0
  %xav_alloc183 = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 7
  %67 = load %struct.sv*** %xav_alloc183, align 8, !tbaa !0
  %68 = bitcast %struct.sv** %67 to i8*
  %xpv_pv = getelementptr inbounds %struct.xpvav* %66, i64 0, i32 0
  store i8* %68, i8** %xpv_pv, align 8, !tbaa !0
  %69 = load %struct.op** %argarray, align 8
  %sv_any195 = bitcast %struct.op* %69 to %struct.xpvav**
  %70 = load %struct.xpvav** %sv_any195, align 8, !tbaa !0
  %xav_fill196 = getelementptr inbounds %struct.xpvav* %70, i64 0, i32 1
  store i64 -1, i64* %xav_fill196, align 8, !tbaa !4
  br label %if.end198

if.end198:                                        ; preds = %if.end86, %if.then111, %if.else153
  %cv203 = bitcast %union.anon.1* %blk_u91 to %struct.cv**
  %71 = load %struct.cv** %cv203, align 8, !tbaa !0
  %72 = bitcast %struct.cv* %71 to %struct.sv*
  %tobool204 = icmp eq %struct.cv* %71, null
  br i1 %tobool204, label %if.end214, label %land.lhs.true205

land.lhs.true205:                                 ; preds = %if.end198
  %olddepth = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %73 = bitcast %struct.sv*** %olddepth to i64*
  %74 = load i64* %73, align 8, !tbaa !4
  %sv_any210 = getelementptr inbounds %struct.cv* %71, i64 0, i32 0
  %75 = load %struct.xpvcv** %sv_any210, align 8, !tbaa !0
  %xcv_depth211 = getelementptr inbounds %struct.xpvcv* %75, i64 0, i32 14
  store i64 %74, i64* %xcv_depth211, align 8, !tbaa !4
  %tobool212 = icmp eq i64 %74, 0
  %. = select i1 %tobool212, %struct.sv* %72, %struct.sv* null
  br label %if.end214

if.end214:                                        ; preds = %land.lhs.true205, %if.end198
  %sv.0 = phi %struct.sv* [ %72, %if.end198 ], [ %., %land.lhs.true205 ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool215 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool215, label %if.end217, label %if.then216

if.then216:                                       ; preds = %if.end214
  tail call void @Perl_sv_free(%struct.sv* %sv.0) #8
  br label %if.end217

if.end217:                                        ; preds = %if.end214, %if.then216
  %call218 = tail call %struct.op* @Perl_pop_return() #8
  ret %struct.op* %call218
}

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare %struct.op* @Perl_pop_return() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_leavesublv() #0 {
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
  %13 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix15 = getelementptr inbounds %struct.stackinfo* %13, i64 0, i32 2
  %14 = load i32* %si_cxix15, align 4, !tbaa !3
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %si_cxix15, align 4, !tbaa !3
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %blk_u = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %lval = getelementptr inbounds %struct.block_sub* %blku_sub, i64 0, i32 7
  %15 = load i8* %lval, align 1, !tbaa !1
  %and = and i8 %15, 4
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.else64, label %if.then

if.then:                                          ; preds = %entry
  switch i8 %12, label %if.end852 [
    i8 0, label %temporise
    i8 1, label %if.then23
  ]

if.then23:                                        ; preds = %if.then
  %cv = bitcast %union.anon.1* %blk_u to %struct.cv**
  %16 = load %struct.cv** %cv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.cv* %16, i64 0, i32 0
  %17 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %17, i64 0, i32 17
  %18 = load i16* %xcv_flags, align 2, !tbaa !6
  %and29 = and i16 %18, 256
  %tobool30 = icmp eq i16 %and29, 0
  br i1 %tobool30, label %temporise_array, label %if.end32

if.end32:                                         ; preds = %if.then23
  %19 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %conv33 = sext i32 %19 to i64
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %add = add nsw i64 %conv33, %sub.ptr.div
  %20 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %conv34 = sext i32 %20 to i64
  %cmp35 = icmp slt i64 %add, %conv34
  br i1 %cmp35, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.end32
  %conv42 = trunc i64 %sub.ptr.div to i32
  tail call void @Perl_tmps_grow(i32 %conv42) #8
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %if.then37
  %add.ptr.sum1191 = add i64 %idx.ext, 1
  %add.ptr44 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum1191
  %cmp451202 = icmp ugt %struct.sv** %add.ptr44, %0
  br i1 %cmp451202, label %if.end852, label %for.body

for.body:                                         ; preds = %if.end43, %for.inc
  %mark.01203 = phi %struct.sv** [ %incdec.ptr, %for.inc ], [ %add.ptr44, %if.end43 ]
  %21 = load %struct.sv** %mark.01203, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags, align 4, !tbaa !3
  %and47 = and i32 %22, 2048
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  %and51 = and i32 %22, 8389120
  %tobool52 = icmp eq i32 %and51, 0
  br i1 %tobool52, label %if.else54, label %if.then53

if.then53:                                        ; preds = %if.else
  %call = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %21) #8
  store %struct.sv* %call, %struct.sv** %mark.01203, align 8, !tbaa !0
  br label %for.inc

if.else54:                                        ; preds = %if.else
  %23 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %inc55 = add nsw i32 %23, 1
  store i32 %inc55, i32* @PL_tmps_ix, align 4, !tbaa !3
  %idxprom56 = sext i32 %inc55 to i64
  %24 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds %struct.sv** %24, i64 %idxprom56
  store %struct.sv* %21, %struct.sv** %arrayidx57, align 8, !tbaa !0
  %25 = load %struct.sv** %mark.01203, align 8, !tbaa !0
  store %struct.sv* %25, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.sv* %25, null
  br i1 %tobool58, label %for.inc, label %land.rhs

land.rhs:                                         ; preds = %if.else54
  %sv_refcnt = getelementptr inbounds %struct.sv* %25, i64 0, i32 1
  %26 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc59 = add i32 %26, 1
  store i32 %inc59, i32* %sv_refcnt, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %if.else54, %for.body, %if.then53
  %incdec.ptr = getelementptr inbounds %struct.sv** %mark.01203, i64 1
  %cmp45 = icmp ugt %struct.sv** %incdec.ptr, %0
  br i1 %cmp45, label %if.end852, label %for.body

if.else64:                                        ; preds = %entry
  %tobool70 = icmp eq i8 %15, 0
  br i1 %tobool70, label %if.else748, label %if.then71

if.then71:                                        ; preds = %if.else64
  %cv76 = bitcast %union.anon.1* %blk_u to %struct.cv**
  %27 = load %struct.cv** %cv76, align 8, !tbaa !0
  %sv_any77 = getelementptr inbounds %struct.cv* %27, i64 0, i32 0
  %28 = load %struct.xpvcv** %sv_any77, align 8, !tbaa !0
  %xcv_flags78 = getelementptr inbounds %struct.xpvcv* %28, i64 0, i32 17
  %29 = load i16* %xcv_flags78, align 2, !tbaa !6
  %and80 = and i16 %29, 256
  %tobool81 = icmp eq i16 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.end214

if.then82:                                        ; preds = %if.then71
  tail call void @Perl_pop_scope() #8
  %30 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix83 = getelementptr inbounds %struct.stackinfo* %30, i64 0, i32 2
  %31 = load i32* %si_cxix83, align 4, !tbaa !3
  %dec84 = add nsw i32 %31, -1
  store i32 %dec84, i32* %si_cxix83, align 4, !tbaa !3
  %hasargs = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %32 = bitcast %struct.sv** %hasargs to i8*
  %33 = load i8* %32, align 1, !tbaa !1
  %tobool89 = icmp eq i8 %33, 0
  br i1 %tobool89, label %if.end195, label %if.then90

if.then90:                                        ; preds = %if.then82
  %34 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any91 = getelementptr inbounds %struct.gv* %34, i64 0, i32 0
  %35 = load %struct.xpvgv** %sv_any91, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %35, i64 0, i32 7
  %36 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %36, i64 0, i32 4
  %37 = load %struct.av** %gp_av, align 8, !tbaa !0
  %38 = bitcast %struct.av* %37 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %38) #8
  %savearray = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %39 = load %struct.op** %savearray, align 8
  %40 = bitcast %struct.op* %39 to %struct.av*
  %41 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any96 = getelementptr inbounds %struct.gv* %41, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any96, align 8, !tbaa !0
  %xgv_gp97 = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp97, align 8, !tbaa !0
  %gp_av98 = getelementptr inbounds %struct.gp* %43, i64 0, i32 4
  store %struct.av* %40, %struct.av** %gp_av98, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %44 = load %struct.op** %argarray, align 8
  %sv_any103 = bitcast %struct.op* %44 to %struct.xpvav**
  %45 = load %struct.xpvav** %sv_any103, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 9
  %46 = load i8* %xav_flags, align 1, !tbaa !1
  %and105 = and i8 %46, 1
  %tobool106 = icmp eq i8 %and105, 0
  br i1 %tobool106, label %if.else149, label %if.then107

if.then107:                                       ; preds = %if.then90
  %xav_fill = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 1
  %47 = load i64* %xav_fill, align 8, !tbaa !4
  %48 = bitcast %struct.op* %44 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %48) #8
  %call119 = tail call %struct.av* @Perl_newAV() #8
  %call119.c = bitcast %struct.av* %call119 to %struct.op*
  store %struct.op* %call119.c, %struct.op** %argarray, align 8, !tbaa !0
  %conv130 = trunc i64 %47 to i32
  tail call void @Perl_av_extend(%struct.av* %call119, i32 %conv130) #8
  %49 = load %struct.op** %argarray, align 8
  %sv_any136 = bitcast %struct.op* %49 to %struct.xpvav**
  %50 = load %struct.xpvav** %sv_any136, align 8, !tbaa !0
  %xav_flags137 = getelementptr inbounds %struct.xpvav* %50, i64 0, i32 9
  store i8 2, i8* %xav_flags137, align 1, !tbaa !1
  %51 = load %struct.op** %argarray, align 8
  %52 = bitcast %struct.op* %51 to %struct.sv*
  %oldcomppad = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %53 = load %struct.sv** %oldcomppad, align 8
  %sv_any147 = bitcast %struct.sv* %53 to %struct.xpvav**
  %54 = load %struct.xpvav** %sv_any147, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %54, i64 0, i32 0
  %55 = load i8** %xav_array, align 8, !tbaa !0
  %56 = bitcast i8* %55 to %struct.sv**
  store %struct.sv* %52, %struct.sv** %56, align 8, !tbaa !0
  br label %if.end195

if.else149:                                       ; preds = %if.then90
  %xav_array156 = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 0
  %57 = load i8** %xav_array156, align 8, !tbaa !0
  %xav_alloc = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 7
  %58 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %sub.ptr.lhs.cast163 = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast164 = ptrtoint %struct.sv** %58 to i64
  %sub.ptr.sub165 = sub i64 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast164
  %sub.ptr.div166 = ashr exact i64 %sub.ptr.sub165, 3
  %xav_max = getelementptr inbounds %struct.xpvav* %45, i64 0, i32 2
  %59 = load i64* %xav_max, align 8, !tbaa !4
  %add173 = add nsw i64 %sub.ptr.div166, %59
  store i64 %add173, i64* %xav_max, align 8, !tbaa !4
  %60 = load %struct.op** %argarray, align 8
  %sv_any179 = bitcast %struct.op* %60 to %struct.xpvav**
  %61 = load %struct.xpvav** %sv_any179, align 8, !tbaa !0
  %xav_alloc180 = getelementptr inbounds %struct.xpvav* %61, i64 0, i32 7
  %62 = load %struct.sv*** %xav_alloc180, align 8, !tbaa !0
  %63 = bitcast %struct.sv** %62 to i8*
  %xpv_pv = getelementptr inbounds %struct.xpvav* %61, i64 0, i32 0
  store i8* %63, i8** %xpv_pv, align 8, !tbaa !0
  %64 = load %struct.op** %argarray, align 8
  %sv_any192 = bitcast %struct.op* %64 to %struct.xpvav**
  %65 = load %struct.xpvav** %sv_any192, align 8, !tbaa !0
  %xav_fill193 = getelementptr inbounds %struct.xpvav* %65, i64 0, i32 1
  store i64 -1, i64* %xav_fill193, align 8, !tbaa !4
  br label %if.end195

if.end195:                                        ; preds = %if.then82, %if.then107, %if.else149
  %66 = load %struct.cv** %cv76, align 8, !tbaa !0
  %67 = bitcast %struct.cv* %66 to %struct.sv*
  %tobool201 = icmp eq %struct.cv* %66, null
  br i1 %tobool201, label %if.end209, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end195
  %olddepth = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %68 = bitcast %struct.sv*** %olddepth to i64*
  %69 = load i64* %68, align 8, !tbaa !4
  %sv_any206 = getelementptr inbounds %struct.cv* %66, i64 0, i32 0
  %70 = load %struct.xpvcv** %sv_any206, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %70, i64 0, i32 14
  store i64 %69, i64* %xcv_depth, align 8, !tbaa !4
  %tobool207 = icmp eq i64 %69, 0
  %. = select i1 %tobool207, %struct.sv* %67, %struct.sv* null
  br label %if.end209

if.end209:                                        ; preds = %land.lhs.true, %if.end195
  %sv.0 = phi %struct.sv* [ %67, %if.end195 ], [ %., %land.lhs.true ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool210 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool210, label %if.end212, label %if.then211

if.then211:                                       ; preds = %if.end209
  tail call void @Perl_sv_free(%struct.sv* %sv.0) #8
  br label %if.end212

if.end212:                                        ; preds = %if.end209, %if.then211
  %call213 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0)) #8
  br label %return

if.end214:                                        ; preds = %if.then71
  switch i8 %12, label %if.end852 [
    i8 0, label %if.then217
    i8 1, label %if.then551
  ]

if.then217:                                       ; preds = %if.end214
  %add.ptr.sum1190 = add i64 %idx.ext, 1
  %add.ptr218 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum1190
  %71 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %add219 = add nsw i32 %71, 1
  %72 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %cmp220 = icmp slt i32 %add219, %72
  br i1 %cmp220, label %if.end223, label %if.then222

if.then222:                                       ; preds = %if.then217
  tail call void @Perl_tmps_grow(i32 1) #8
  br label %if.end223

if.end223:                                        ; preds = %if.then217, %if.then222
  %cmp224 = icmp eq %struct.sv** %add.ptr218, %0
  br i1 %cmp224, label %if.then226, label %if.else396

if.then226:                                       ; preds = %if.end223
  %73 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags227 = getelementptr inbounds %struct.sv* %73, i64 0, i32 2
  %74 = load i32* %sv_flags227, align 4, !tbaa !3
  %and228 = and i32 %74, 8391168
  %tobool229 = icmp eq i32 %and228, 0
  br i1 %tobool229, label %if.else384, label %if.then230

if.then230:                                       ; preds = %if.then226
  tail call void @Perl_pop_scope() #8
  %75 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix231 = getelementptr inbounds %struct.stackinfo* %75, i64 0, i32 2
  %76 = load i32* %si_cxix231, align 4, !tbaa !3
  %dec232 = add nsw i32 %76, -1
  store i32 %dec232, i32* %si_cxix231, align 4, !tbaa !3
  %hasargs237 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %77 = bitcast %struct.sv** %hasargs237 to i8*
  %78 = load i8* %77, align 1, !tbaa !1
  %tobool238 = icmp eq i8 %78, 0
  br i1 %tobool238, label %if.end356, label %if.then239

if.then239:                                       ; preds = %if.then230
  %79 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any240 = getelementptr inbounds %struct.gv* %79, i64 0, i32 0
  %80 = load %struct.xpvgv** %sv_any240, align 8, !tbaa !0
  %xgv_gp241 = getelementptr inbounds %struct.xpvgv* %80, i64 0, i32 7
  %81 = load %struct.gp** %xgv_gp241, align 8, !tbaa !0
  %gp_av242 = getelementptr inbounds %struct.gp* %81, i64 0, i32 4
  %82 = load %struct.av** %gp_av242, align 8, !tbaa !0
  %83 = bitcast %struct.av* %82 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %83) #8
  %savearray247 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %84 = load %struct.op** %savearray247, align 8
  %85 = bitcast %struct.op* %84 to %struct.av*
  %86 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any248 = getelementptr inbounds %struct.gv* %86, i64 0, i32 0
  %87 = load %struct.xpvgv** %sv_any248, align 8, !tbaa !0
  %xgv_gp249 = getelementptr inbounds %struct.xpvgv* %87, i64 0, i32 7
  %88 = load %struct.gp** %xgv_gp249, align 8, !tbaa !0
  %gp_av250 = getelementptr inbounds %struct.gp* %88, i64 0, i32 4
  store %struct.av* %85, %struct.av** %gp_av250, align 8, !tbaa !0
  %argarray255 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %89 = load %struct.op** %argarray255, align 8
  %sv_any256 = bitcast %struct.op* %89 to %struct.xpvav**
  %90 = load %struct.xpvav** %sv_any256, align 8, !tbaa !0
  %xav_flags257 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 9
  %91 = load i8* %xav_flags257, align 1, !tbaa !1
  %and259 = and i8 %91, 1
  %tobool260 = icmp eq i8 %and259, 0
  br i1 %tobool260, label %if.else307, label %if.then261

if.then261:                                       ; preds = %if.then239
  %xav_fill269 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 1
  %92 = load i64* %xav_fill269, align 8, !tbaa !4
  %93 = bitcast %struct.op* %89 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %93) #8
  %call275 = tail call %struct.av* @Perl_newAV() #8
  %call275.c = bitcast %struct.av* %call275 to %struct.op*
  store %struct.op* %call275.c, %struct.op** %argarray255, align 8, !tbaa !0
  %conv286 = trunc i64 %92 to i32
  tail call void @Perl_av_extend(%struct.av* %call275, i32 %conv286) #8
  %94 = load %struct.op** %argarray255, align 8
  %sv_any292 = bitcast %struct.op* %94 to %struct.xpvav**
  %95 = load %struct.xpvav** %sv_any292, align 8, !tbaa !0
  %xav_flags293 = getelementptr inbounds %struct.xpvav* %95, i64 0, i32 9
  store i8 2, i8* %xav_flags293, align 1, !tbaa !1
  %96 = load %struct.op** %argarray255, align 8
  %97 = bitcast %struct.op* %96 to %struct.sv*
  %oldcomppad303 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %98 = load %struct.sv** %oldcomppad303, align 8
  %sv_any304 = bitcast %struct.sv* %98 to %struct.xpvav**
  %99 = load %struct.xpvav** %sv_any304, align 8, !tbaa !0
  %xav_array305 = getelementptr inbounds %struct.xpvav* %99, i64 0, i32 0
  %100 = load i8** %xav_array305, align 8, !tbaa !0
  %101 = bitcast i8* %100 to %struct.sv**
  store %struct.sv* %97, %struct.sv** %101, align 8, !tbaa !0
  br label %if.end356

if.else307:                                       ; preds = %if.then239
  %xav_array314 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 0
  %102 = load i8** %xav_array314, align 8, !tbaa !0
  %xav_alloc321 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 7
  %103 = load %struct.sv*** %xav_alloc321, align 8, !tbaa !0
  %sub.ptr.lhs.cast322 = ptrtoint i8* %102 to i64
  %sub.ptr.rhs.cast323 = ptrtoint %struct.sv** %103 to i64
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323
  %sub.ptr.div325 = ashr exact i64 %sub.ptr.sub324, 3
  %xav_max332 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 2
  %104 = load i64* %xav_max332, align 8, !tbaa !4
  %add333 = add nsw i64 %sub.ptr.div325, %104
  store i64 %add333, i64* %xav_max332, align 8, !tbaa !4
  %105 = load %struct.op** %argarray255, align 8
  %sv_any339 = bitcast %struct.op* %105 to %struct.xpvav**
  %106 = load %struct.xpvav** %sv_any339, align 8, !tbaa !0
  %xav_alloc340 = getelementptr inbounds %struct.xpvav* %106, i64 0, i32 7
  %107 = load %struct.sv*** %xav_alloc340, align 8, !tbaa !0
  %108 = bitcast %struct.sv** %107 to i8*
  %xpv_pv347 = getelementptr inbounds %struct.xpvav* %106, i64 0, i32 0
  store i8* %108, i8** %xpv_pv347, align 8, !tbaa !0
  %109 = load %struct.op** %argarray255, align 8
  %sv_any353 = bitcast %struct.op* %109 to %struct.xpvav**
  %110 = load %struct.xpvav** %sv_any353, align 8, !tbaa !0
  %xav_fill354 = getelementptr inbounds %struct.xpvav* %110, i64 0, i32 1
  store i64 -1, i64* %xav_fill354, align 8, !tbaa !4
  br label %if.end356

if.end356:                                        ; preds = %if.then230, %if.then261, %if.else307
  %111 = load %struct.cv** %cv76, align 8, !tbaa !0
  %112 = bitcast %struct.cv* %111 to %struct.sv*
  %tobool362 = icmp eq %struct.cv* %111, null
  br i1 %tobool362, label %if.end373, label %land.lhs.true363

land.lhs.true363:                                 ; preds = %if.end356
  %olddepth368 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %113 = bitcast %struct.sv*** %olddepth368 to i64*
  %114 = load i64* %113, align 8, !tbaa !4
  %sv_any369 = getelementptr inbounds %struct.cv* %111, i64 0, i32 0
  %115 = load %struct.xpvcv** %sv_any369, align 8, !tbaa !0
  %xcv_depth370 = getelementptr inbounds %struct.xpvcv* %115, i64 0, i32 14
  store i64 %114, i64* %xcv_depth370, align 8, !tbaa !4
  %tobool371 = icmp eq i64 %114, 0
  %.1192 = select i1 %tobool371, %struct.sv* %112, %struct.sv* null
  br label %if.end373

if.end373:                                        ; preds = %land.lhs.true363, %if.end356
  %sv.1 = phi %struct.sv* [ %112, %if.end356 ], [ %.1192, %land.lhs.true363 ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool374 = icmp eq %struct.sv* %sv.1, null
  br i1 %tobool374, label %if.end376, label %if.then375

if.then375:                                       ; preds = %if.end373
  tail call void @Perl_sv_free(%struct.sv* %sv.1) #8
  br label %if.end376

if.end376:                                        ; preds = %if.end373, %if.then375
  %116 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags377 = getelementptr inbounds %struct.sv* %116, i64 0, i32 2
  %117 = load i32* %sv_flags377, align 4, !tbaa !3
  %and378 = and i32 %117, 8388608
  %tobool379 = icmp eq i32 %and378, 0
  br i1 %tobool379, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end376
  %cmp380 = icmp eq %struct.sv* %116, @PL_sv_undef
  %cond = select i1 %cmp380, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str31, i64 0, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %if.end376, %cond.true
  %cond382 = phi i8* [ %cond, %cond.true ], [ getelementptr inbounds ([12 x i8]* @.str32, i64 0, i64 0), %if.end376 ]
  %call383 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([39 x i8]* @.str29, i64 0, i64 0), i8* %cond382) #8
  br label %return

if.else384:                                       ; preds = %if.then226
  %118 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %inc385 = add nsw i32 %118, 1
  store i32 %inc385, i32* @PL_tmps_ix, align 4, !tbaa !3
  %idxprom386 = sext i32 %inc385 to i64
  %119 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  %arrayidx387 = getelementptr inbounds %struct.sv** %119, i64 %idxprom386
  store %struct.sv* %73, %struct.sv** %arrayidx387, align 8, !tbaa !0
  %120 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv* %120, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool388 = icmp eq %struct.sv* %120, null
  br i1 %tobool388, label %if.end852, label %land.rhs389

land.rhs389:                                      ; preds = %if.else384
  %sv_refcnt390 = getelementptr inbounds %struct.sv* %120, i64 0, i32 1
  %121 = load i32* %sv_refcnt390, align 4, !tbaa !3
  %inc391 = add i32 %121, 1
  store i32 %inc391, i32* %sv_refcnt390, align 4, !tbaa !3
  br label %if.end852

if.else396:                                       ; preds = %if.end223
  tail call void @Perl_pop_scope() #8
  %122 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix397 = getelementptr inbounds %struct.stackinfo* %122, i64 0, i32 2
  %123 = load i32* %si_cxix397, align 4, !tbaa !3
  %dec398 = add nsw i32 %123, -1
  store i32 %dec398, i32* %si_cxix397, align 4, !tbaa !3
  %hasargs403 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %124 = bitcast %struct.sv** %hasargs403 to i8*
  %125 = load i8* %124, align 1, !tbaa !1
  %tobool404 = icmp eq i8 %125, 0
  br i1 %tobool404, label %if.end522, label %if.then405

if.then405:                                       ; preds = %if.else396
  %126 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any406 = getelementptr inbounds %struct.gv* %126, i64 0, i32 0
  %127 = load %struct.xpvgv** %sv_any406, align 8, !tbaa !0
  %xgv_gp407 = getelementptr inbounds %struct.xpvgv* %127, i64 0, i32 7
  %128 = load %struct.gp** %xgv_gp407, align 8, !tbaa !0
  %gp_av408 = getelementptr inbounds %struct.gp* %128, i64 0, i32 4
  %129 = load %struct.av** %gp_av408, align 8, !tbaa !0
  %130 = bitcast %struct.av* %129 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %130) #8
  %savearray413 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %131 = load %struct.op** %savearray413, align 8
  %132 = bitcast %struct.op* %131 to %struct.av*
  %133 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any414 = getelementptr inbounds %struct.gv* %133, i64 0, i32 0
  %134 = load %struct.xpvgv** %sv_any414, align 8, !tbaa !0
  %xgv_gp415 = getelementptr inbounds %struct.xpvgv* %134, i64 0, i32 7
  %135 = load %struct.gp** %xgv_gp415, align 8, !tbaa !0
  %gp_av416 = getelementptr inbounds %struct.gp* %135, i64 0, i32 4
  store %struct.av* %132, %struct.av** %gp_av416, align 8, !tbaa !0
  %argarray421 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %136 = load %struct.op** %argarray421, align 8
  %sv_any422 = bitcast %struct.op* %136 to %struct.xpvav**
  %137 = load %struct.xpvav** %sv_any422, align 8, !tbaa !0
  %xav_flags423 = getelementptr inbounds %struct.xpvav* %137, i64 0, i32 9
  %138 = load i8* %xav_flags423, align 1, !tbaa !1
  %and425 = and i8 %138, 1
  %tobool426 = icmp eq i8 %and425, 0
  br i1 %tobool426, label %if.else473, label %if.then427

if.then427:                                       ; preds = %if.then405
  %xav_fill435 = getelementptr inbounds %struct.xpvav* %137, i64 0, i32 1
  %139 = load i64* %xav_fill435, align 8, !tbaa !4
  %140 = bitcast %struct.op* %136 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %140) #8
  %call441 = tail call %struct.av* @Perl_newAV() #8
  %call441.c = bitcast %struct.av* %call441 to %struct.op*
  store %struct.op* %call441.c, %struct.op** %argarray421, align 8, !tbaa !0
  %conv452 = trunc i64 %139 to i32
  tail call void @Perl_av_extend(%struct.av* %call441, i32 %conv452) #8
  %141 = load %struct.op** %argarray421, align 8
  %sv_any458 = bitcast %struct.op* %141 to %struct.xpvav**
  %142 = load %struct.xpvav** %sv_any458, align 8, !tbaa !0
  %xav_flags459 = getelementptr inbounds %struct.xpvav* %142, i64 0, i32 9
  store i8 2, i8* %xav_flags459, align 1, !tbaa !1
  %143 = load %struct.op** %argarray421, align 8
  %144 = bitcast %struct.op* %143 to %struct.sv*
  %oldcomppad469 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %145 = load %struct.sv** %oldcomppad469, align 8
  %sv_any470 = bitcast %struct.sv* %145 to %struct.xpvav**
  %146 = load %struct.xpvav** %sv_any470, align 8, !tbaa !0
  %xav_array471 = getelementptr inbounds %struct.xpvav* %146, i64 0, i32 0
  %147 = load i8** %xav_array471, align 8, !tbaa !0
  %148 = bitcast i8* %147 to %struct.sv**
  store %struct.sv* %144, %struct.sv** %148, align 8, !tbaa !0
  br label %if.end522

if.else473:                                       ; preds = %if.then405
  %xav_array480 = getelementptr inbounds %struct.xpvav* %137, i64 0, i32 0
  %149 = load i8** %xav_array480, align 8, !tbaa !0
  %xav_alloc487 = getelementptr inbounds %struct.xpvav* %137, i64 0, i32 7
  %150 = load %struct.sv*** %xav_alloc487, align 8, !tbaa !0
  %sub.ptr.lhs.cast488 = ptrtoint i8* %149 to i64
  %sub.ptr.rhs.cast489 = ptrtoint %struct.sv** %150 to i64
  %sub.ptr.sub490 = sub i64 %sub.ptr.lhs.cast488, %sub.ptr.rhs.cast489
  %sub.ptr.div491 = ashr exact i64 %sub.ptr.sub490, 3
  %xav_max498 = getelementptr inbounds %struct.xpvav* %137, i64 0, i32 2
  %151 = load i64* %xav_max498, align 8, !tbaa !4
  %add499 = add nsw i64 %sub.ptr.div491, %151
  store i64 %add499, i64* %xav_max498, align 8, !tbaa !4
  %152 = load %struct.op** %argarray421, align 8
  %sv_any505 = bitcast %struct.op* %152 to %struct.xpvav**
  %153 = load %struct.xpvav** %sv_any505, align 8, !tbaa !0
  %xav_alloc506 = getelementptr inbounds %struct.xpvav* %153, i64 0, i32 7
  %154 = load %struct.sv*** %xav_alloc506, align 8, !tbaa !0
  %155 = bitcast %struct.sv** %154 to i8*
  %xpv_pv513 = getelementptr inbounds %struct.xpvav* %153, i64 0, i32 0
  store i8* %155, i8** %xpv_pv513, align 8, !tbaa !0
  %156 = load %struct.op** %argarray421, align 8
  %sv_any519 = bitcast %struct.op* %156 to %struct.xpvav**
  %157 = load %struct.xpvav** %sv_any519, align 8, !tbaa !0
  %xav_fill520 = getelementptr inbounds %struct.xpvav* %157, i64 0, i32 1
  store i64 -1, i64* %xav_fill520, align 8, !tbaa !4
  br label %if.end522

if.end522:                                        ; preds = %if.else396, %if.then427, %if.else473
  %158 = load %struct.cv** %cv76, align 8, !tbaa !0
  %159 = bitcast %struct.cv* %158 to %struct.sv*
  %tobool528 = icmp eq %struct.cv* %158, null
  br i1 %tobool528, label %if.end539, label %land.lhs.true529

land.lhs.true529:                                 ; preds = %if.end522
  %olddepth534 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %160 = bitcast %struct.sv*** %olddepth534 to i64*
  %161 = load i64* %160, align 8, !tbaa !4
  %sv_any535 = getelementptr inbounds %struct.cv* %158, i64 0, i32 0
  %162 = load %struct.xpvcv** %sv_any535, align 8, !tbaa !0
  %xcv_depth536 = getelementptr inbounds %struct.xpvcv* %162, i64 0, i32 14
  store i64 %161, i64* %xcv_depth536, align 8, !tbaa !4
  %tobool537 = icmp eq i64 %161, 0
  %.1193 = select i1 %tobool537, %struct.sv* %159, %struct.sv* null
  br label %if.end539

if.end539:                                        ; preds = %land.lhs.true529, %if.end522
  %sv.2 = phi %struct.sv* [ %159, %if.end522 ], [ %.1193, %land.lhs.true529 ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool540 = icmp eq %struct.sv* %sv.2, null
  br i1 %tobool540, label %if.end542, label %if.then541

if.then541:                                       ; preds = %if.end539
  tail call void @Perl_sv_free(%struct.sv* %sv.2) #8
  br label %if.end542

if.end542:                                        ; preds = %if.end539, %if.then541
  %cmp543 = icmp ugt %struct.sv** %add.ptr218, %0
  %cond545 = select i1 %cmp543, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0)
  %call546 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([53 x i8]* @.str33, i64 0, i64 0), i8* %cond545) #8
  br label %return

if.then551:                                       ; preds = %if.end214
  %163 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %conv552 = sext i32 %163 to i64
  %sub.ptr.lhs.cast553 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast554 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub555 = sub i64 %sub.ptr.lhs.cast553, %sub.ptr.rhs.cast554
  %sub.ptr.div556 = ashr exact i64 %sub.ptr.sub555, 3
  %add557 = add nsw i64 %conv552, %sub.ptr.div556
  %164 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %conv558 = sext i32 %164 to i64
  %cmp559 = icmp slt i64 %add557, %conv558
  br i1 %cmp559, label %if.end567, label %if.then561

if.then561:                                       ; preds = %if.then551
  %conv566 = trunc i64 %sub.ptr.div556 to i32
  tail call void @Perl_tmps_grow(i32 %conv566) #8
  br label %if.end567

if.end567:                                        ; preds = %if.then551, %if.then561
  %add.ptr.sum1189 = add i64 %idx.ext, 1
  %add.ptr568 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum1189
  %cmp5701199 = icmp ugt %struct.sv** %add.ptr568, %0
  br i1 %cmp5701199, label %if.end852, label %for.body572

for.body572:                                      ; preds = %if.end567, %land.end740
  %mark.11200 = phi %struct.sv** [ %incdec.ptr744, %land.end740 ], [ %add.ptr568, %if.end567 ]
  %165 = load %struct.sv** %mark.11200, align 8, !tbaa !0
  %cmp573 = icmp eq %struct.sv* %165, @PL_sv_undef
  br i1 %cmp573, label %if.else731, label %land.lhs.true575

land.lhs.true575:                                 ; preds = %for.body572
  %sv_flags576 = getelementptr inbounds %struct.sv* %165, i64 0, i32 2
  %166 = load i32* %sv_flags576, align 4, !tbaa !3
  %and577 = and i32 %166, 8391168
  %tobool578 = icmp eq i32 %and577, 0
  br i1 %tobool578, label %if.else731, label %if.then579

if.then579:                                       ; preds = %land.lhs.true575
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #8
  %167 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix580 = getelementptr inbounds %struct.stackinfo* %167, i64 0, i32 2
  %168 = load i32* %si_cxix580, align 4, !tbaa !3
  %dec581 = add nsw i32 %168, -1
  store i32 %dec581, i32* %si_cxix580, align 4, !tbaa !3
  %hasargs586 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %169 = bitcast %struct.sv** %hasargs586 to i8*
  %170 = load i8* %169, align 1, !tbaa !1
  %tobool587 = icmp eq i8 %170, 0
  br i1 %tobool587, label %if.end705, label %if.then588

if.then588:                                       ; preds = %if.then579
  %171 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any589 = getelementptr inbounds %struct.gv* %171, i64 0, i32 0
  %172 = load %struct.xpvgv** %sv_any589, align 8, !tbaa !0
  %xgv_gp590 = getelementptr inbounds %struct.xpvgv* %172, i64 0, i32 7
  %173 = load %struct.gp** %xgv_gp590, align 8, !tbaa !0
  %gp_av591 = getelementptr inbounds %struct.gp* %173, i64 0, i32 4
  %174 = load %struct.av** %gp_av591, align 8, !tbaa !0
  %175 = bitcast %struct.av* %174 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %175) #8
  %savearray596 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %176 = load %struct.op** %savearray596, align 8
  %177 = bitcast %struct.op* %176 to %struct.av*
  %178 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any597 = getelementptr inbounds %struct.gv* %178, i64 0, i32 0
  %179 = load %struct.xpvgv** %sv_any597, align 8, !tbaa !0
  %xgv_gp598 = getelementptr inbounds %struct.xpvgv* %179, i64 0, i32 7
  %180 = load %struct.gp** %xgv_gp598, align 8, !tbaa !0
  %gp_av599 = getelementptr inbounds %struct.gp* %180, i64 0, i32 4
  store %struct.av* %177, %struct.av** %gp_av599, align 8, !tbaa !0
  %argarray604 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %181 = load %struct.op** %argarray604, align 8
  %sv_any605 = bitcast %struct.op* %181 to %struct.xpvav**
  %182 = load %struct.xpvav** %sv_any605, align 8, !tbaa !0
  %xav_flags606 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 9
  %183 = load i8* %xav_flags606, align 1, !tbaa !1
  %and608 = and i8 %183, 1
  %tobool609 = icmp eq i8 %and608, 0
  br i1 %tobool609, label %if.else656, label %if.then610

if.then610:                                       ; preds = %if.then588
  %xav_fill618 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 1
  %184 = load i64* %xav_fill618, align 8, !tbaa !4
  %185 = bitcast %struct.op* %181 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %185) #8
  %call624 = tail call %struct.av* @Perl_newAV() #8
  %call624.c = bitcast %struct.av* %call624 to %struct.op*
  store %struct.op* %call624.c, %struct.op** %argarray604, align 8, !tbaa !0
  %conv635 = trunc i64 %184 to i32
  tail call void @Perl_av_extend(%struct.av* %call624, i32 %conv635) #8
  %186 = load %struct.op** %argarray604, align 8
  %sv_any641 = bitcast %struct.op* %186 to %struct.xpvav**
  %187 = load %struct.xpvav** %sv_any641, align 8, !tbaa !0
  %xav_flags642 = getelementptr inbounds %struct.xpvav* %187, i64 0, i32 9
  store i8 2, i8* %xav_flags642, align 1, !tbaa !1
  %188 = load %struct.op** %argarray604, align 8
  %189 = bitcast %struct.op* %188 to %struct.sv*
  %oldcomppad652 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %190 = load %struct.sv** %oldcomppad652, align 8
  %sv_any653 = bitcast %struct.sv* %190 to %struct.xpvav**
  %191 = load %struct.xpvav** %sv_any653, align 8, !tbaa !0
  %xav_array654 = getelementptr inbounds %struct.xpvav* %191, i64 0, i32 0
  %192 = load i8** %xav_array654, align 8, !tbaa !0
  %193 = bitcast i8* %192 to %struct.sv**
  store %struct.sv* %189, %struct.sv** %193, align 8, !tbaa !0
  br label %if.end705

if.else656:                                       ; preds = %if.then588
  %xav_array663 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 0
  %194 = load i8** %xav_array663, align 8, !tbaa !0
  %xav_alloc670 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 7
  %195 = load %struct.sv*** %xav_alloc670, align 8, !tbaa !0
  %sub.ptr.lhs.cast671 = ptrtoint i8* %194 to i64
  %sub.ptr.rhs.cast672 = ptrtoint %struct.sv** %195 to i64
  %sub.ptr.sub673 = sub i64 %sub.ptr.lhs.cast671, %sub.ptr.rhs.cast672
  %sub.ptr.div674 = ashr exact i64 %sub.ptr.sub673, 3
  %xav_max681 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 2
  %196 = load i64* %xav_max681, align 8, !tbaa !4
  %add682 = add nsw i64 %sub.ptr.div674, %196
  store i64 %add682, i64* %xav_max681, align 8, !tbaa !4
  %197 = load %struct.op** %argarray604, align 8
  %sv_any688 = bitcast %struct.op* %197 to %struct.xpvav**
  %198 = load %struct.xpvav** %sv_any688, align 8, !tbaa !0
  %xav_alloc689 = getelementptr inbounds %struct.xpvav* %198, i64 0, i32 7
  %199 = load %struct.sv*** %xav_alloc689, align 8, !tbaa !0
  %200 = bitcast %struct.sv** %199 to i8*
  %xpv_pv696 = getelementptr inbounds %struct.xpvav* %198, i64 0, i32 0
  store i8* %200, i8** %xpv_pv696, align 8, !tbaa !0
  %201 = load %struct.op** %argarray604, align 8
  %sv_any702 = bitcast %struct.op* %201 to %struct.xpvav**
  %202 = load %struct.xpvav** %sv_any702, align 8, !tbaa !0
  %xav_fill703 = getelementptr inbounds %struct.xpvav* %202, i64 0, i32 1
  store i64 -1, i64* %xav_fill703, align 8, !tbaa !4
  br label %if.end705

if.end705:                                        ; preds = %if.then579, %if.then610, %if.else656
  %203 = load %struct.cv** %cv76, align 8, !tbaa !0
  %204 = bitcast %struct.cv* %203 to %struct.sv*
  %tobool711 = icmp eq %struct.cv* %203, null
  br i1 %tobool711, label %if.end722, label %land.lhs.true712

land.lhs.true712:                                 ; preds = %if.end705
  %olddepth717 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %205 = bitcast %struct.sv*** %olddepth717 to i64*
  %206 = load i64* %205, align 8, !tbaa !4
  %sv_any718 = getelementptr inbounds %struct.cv* %203, i64 0, i32 0
  %207 = load %struct.xpvcv** %sv_any718, align 8, !tbaa !0
  %xcv_depth719 = getelementptr inbounds %struct.xpvcv* %207, i64 0, i32 14
  store i64 %206, i64* %xcv_depth719, align 8, !tbaa !4
  %tobool720 = icmp eq i64 %206, 0
  %.1194 = select i1 %tobool720, %struct.sv* %204, %struct.sv* null
  br label %if.end722

if.end722:                                        ; preds = %land.lhs.true712, %if.end705
  %sv.3 = phi %struct.sv* [ %204, %if.end705 ], [ %.1194, %land.lhs.true712 ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool723 = icmp eq %struct.sv* %sv.3, null
  br i1 %tobool723, label %if.end725, label %if.then724

if.then724:                                       ; preds = %if.end722
  tail call void @Perl_sv_free(%struct.sv* %sv.3) #8
  br label %if.end725

if.end725:                                        ; preds = %if.end722, %if.then724
  %208 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags726 = getelementptr inbounds %struct.sv* %208, i64 0, i32 2
  %209 = load i32* %sv_flags726, align 4, !tbaa !3
  %and727 = and i32 %209, 8388608
  %tobool728 = icmp ne i32 %and727, 0
  %cond729 = select i1 %tobool728, i8* getelementptr inbounds ([15 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str38, i64 0, i64 0)
  %call730 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([41 x i8]* @.str36, i64 0, i64 0), i8* %cond729) #8
  br label %return

if.else731:                                       ; preds = %land.lhs.true575, %for.body572
  %210 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %inc732 = add nsw i32 %210, 1
  store i32 %inc732, i32* @PL_tmps_ix, align 4, !tbaa !3
  %idxprom733 = sext i32 %inc732 to i64
  %211 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  %arrayidx734 = getelementptr inbounds %struct.sv** %211, i64 %idxprom733
  store %struct.sv* %165, %struct.sv** %arrayidx734, align 8, !tbaa !0
  %212 = load %struct.sv** %mark.11200, align 8, !tbaa !0
  store %struct.sv* %212, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool735 = icmp eq %struct.sv* %212, null
  br i1 %tobool735, label %land.end740, label %land.rhs736

land.rhs736:                                      ; preds = %if.else731
  %sv_refcnt737 = getelementptr inbounds %struct.sv* %212, i64 0, i32 1
  %213 = load i32* %sv_refcnt737, align 4, !tbaa !3
  %inc738 = add i32 %213, 1
  store i32 %inc738, i32* %sv_refcnt737, align 4, !tbaa !3
  br label %land.end740

land.end740:                                      ; preds = %if.else731, %land.rhs736
  %incdec.ptr744 = getelementptr inbounds %struct.sv** %mark.11200, i64 1
  %cmp570 = icmp ugt %struct.sv** %incdec.ptr744, %0
  br i1 %cmp570, label %if.end852, label %for.body572

if.else748:                                       ; preds = %if.else64
  switch i8 %12, label %if.end852 [
    i8 0, label %temporise
    i8 1, label %temporise_array
  ]

temporise:                                        ; preds = %if.else748, %if.then
  %add.ptr.sum1187 = add i64 %idx.ext, 1
  %add.ptr752 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum1187
  %cmp753 = icmp ugt %struct.sv** %add.ptr752, %0
  br i1 %cmp753, label %if.else813, label %if.then755

if.then755:                                       ; preds = %temporise
  %cv760 = bitcast %union.anon.1* %blk_u to %struct.cv**
  %214 = load %struct.cv** %cv760, align 8, !tbaa !0
  %tobool761 = icmp eq %struct.cv* %214, null
  br i1 %tobool761, label %if.else803, label %land.lhs.true762

land.lhs.true762:                                 ; preds = %if.then755
  %sv_any768 = getelementptr inbounds %struct.cv* %214, i64 0, i32 0
  %215 = load %struct.xpvcv** %sv_any768, align 8, !tbaa !0
  %xcv_depth769 = getelementptr inbounds %struct.xpvcv* %215, i64 0, i32 14
  %216 = load i64* %xcv_depth769, align 8, !tbaa !4
  %cmp770 = icmp sgt i64 %216, 1
  br i1 %cmp770, label %if.then772, label %if.else803

if.then772:                                       ; preds = %land.lhs.true762
  %217 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags773 = getelementptr inbounds %struct.sv* %217, i64 0, i32 2
  %218 = load i32* %sv_flags773, align 4, !tbaa !3
  %and774 = and i32 %218, 2048
  %tobool775 = icmp eq i32 %and774, 0
  store %struct.sv* %217, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool777 = icmp ne %struct.sv* %217, null
  br i1 %tobool775, label %if.else789, label %if.then776

if.then776:                                       ; preds = %if.then772
  br i1 %tobool777, label %land.rhs778, label %land.end782

land.rhs778:                                      ; preds = %if.then776
  %sv_refcnt779 = getelementptr inbounds %struct.sv* %217, i64 0, i32 1
  %219 = load i32* %sv_refcnt779, align 4, !tbaa !3
  %inc780 = add i32 %219, 1
  store i32 %inc780, i32* %sv_refcnt779, align 4, !tbaa !3
  br label %land.end782

land.end782:                                      ; preds = %land.rhs778, %if.then776
  store %struct.sv* %217, %struct.sv** %add.ptr752, align 8, !tbaa !0
  %220 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %221 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp784 = icmp sgt i32 %220, %221
  br i1 %cmp784, label %if.then786, label %if.end787

if.then786:                                       ; preds = %land.end782
  tail call void @Perl_free_tmps() #8
  %.pre = load %struct.sv** %add.ptr752, align 8, !tbaa !0
  br label %if.end787

if.end787:                                        ; preds = %if.then786, %land.end782
  %222 = phi %struct.sv* [ %.pre, %if.then786 ], [ %217, %land.end782 ]
  %call788 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %222) #8
  br label %if.end852

if.else789:                                       ; preds = %if.then772
  br i1 %tobool777, label %land.rhs791, label %land.end795

land.rhs791:                                      ; preds = %if.else789
  %sv_refcnt792 = getelementptr inbounds %struct.sv* %217, i64 0, i32 1
  %223 = load i32* %sv_refcnt792, align 4, !tbaa !3
  %inc793 = add i32 %223, 1
  store i32 %inc793, i32* %sv_refcnt792, align 4, !tbaa !3
  br label %land.end795

land.end795:                                      ; preds = %land.rhs791, %if.else789
  %224 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %225 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp797 = icmp sgt i32 %224, %225
  br i1 %cmp797, label %if.then799, label %if.end800

if.then799:                                       ; preds = %land.end795
  tail call void @Perl_free_tmps() #8
  br label %if.end800

if.end800:                                        ; preds = %if.then799, %land.end795
  %call801 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %217) #8
  store %struct.sv* %call801, %struct.sv** %add.ptr752, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %217) #8
  br label %if.end852

if.else803:                                       ; preds = %if.then755, %land.lhs.true762
  %226 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags804 = getelementptr inbounds %struct.sv* %226, i64 0, i32 2
  %227 = load i32* %sv_flags804, align 4, !tbaa !3
  %and805 = and i32 %227, 2048
  %tobool806 = icmp eq i32 %and805, 0
  br i1 %tobool806, label %cond.false808, label %cond.end810

cond.false808:                                    ; preds = %if.else803
  %call809 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %226) #8
  br label %cond.end810

cond.end810:                                      ; preds = %if.else803, %cond.false808
  %cond811 = phi %struct.sv* [ %call809, %cond.false808 ], [ %226, %if.else803 ]
  store %struct.sv* %cond811, %struct.sv** %add.ptr752, align 8, !tbaa !0
  br label %if.end852

if.else813:                                       ; preds = %temporise
  %228 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast814 = ptrtoint %struct.sv** %228 to i64
  %sub.ptr.rhs.cast815 = ptrtoint %struct.sv** %add.ptr752 to i64
  %sub.ptr.sub816 = sub i64 %sub.ptr.lhs.cast814, %sub.ptr.rhs.cast815
  %cmp818 = icmp slt i64 %sub.ptr.sub816, 0
  br i1 %cmp818, label %if.then820, label %if.end829

if.then820:                                       ; preds = %if.else813
  %229 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast822 = ptrtoint %struct.sv** %229 to i64
  %sub.ptr.sub823 = sub i64 %sub.ptr.rhs.cast815, %sub.ptr.rhs.cast822
  %call826 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %add.ptr752, i32 0) #8
  %230 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %231 = shl i64 %sub.ptr.sub823, 29
  %idx.ext827 = ashr i64 %231, 32
  %add.ptr828 = getelementptr inbounds %struct.sv** %230, i64 %idx.ext827
  br label %if.end829

if.end829:                                        ; preds = %if.then820, %if.else813
  %mark.2 = phi %struct.sv** [ %add.ptr828, %if.then820 ], [ %add.ptr752, %if.else813 ]
  store %struct.sv* @PL_sv_undef, %struct.sv** %mark.2, align 8, !tbaa !0
  br label %if.end852

temporise_array:                                  ; preds = %if.else748, %if.then23
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr835 = getelementptr inbounds %struct.sv** %4, i64 %add.ptr.sum
  %cmp8371196 = icmp ugt %struct.sv** %add.ptr835, %0
  br i1 %cmp8371196, label %if.end852, label %for.body839

for.body839:                                      ; preds = %temporise_array, %for.inc846
  %mark.41197 = phi %struct.sv** [ %incdec.ptr847, %for.inc846 ], [ %add.ptr835, %temporise_array ]
  %232 = load %struct.sv** %mark.41197, align 8, !tbaa !0
  %sv_flags840 = getelementptr inbounds %struct.sv* %232, i64 0, i32 2
  %233 = load i32* %sv_flags840, align 4, !tbaa !3
  %and841 = and i32 %233, 2048
  %tobool842 = icmp eq i32 %and841, 0
  br i1 %tobool842, label %if.then843, label %for.inc846

if.then843:                                       ; preds = %for.body839
  %call844 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %232) #8
  store %struct.sv* %call844, %struct.sv** %mark.41197, align 8, !tbaa !0
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %for.inc846

for.inc846:                                       ; preds = %for.body839, %if.then843
  %incdec.ptr847 = getelementptr inbounds %struct.sv** %mark.41197, i64 1
  %cmp837 = icmp ugt %struct.sv** %incdec.ptr847, %0
  br i1 %cmp837, label %if.end852, label %for.body839

if.end852:                                        ; preds = %if.end43, %for.inc, %if.end567, %land.end740, %temporise_array, %for.inc846, %if.else748, %if.end829, %if.end787, %if.end800, %cond.end810, %if.end214, %land.rhs389, %if.else384, %if.then
  %sp.0 = phi %struct.sv** [ %0, %if.then ], [ %0, %if.else384 ], [ %0, %land.rhs389 ], [ %0, %if.end214 ], [ %add.ptr752, %if.end787 ], [ %add.ptr752, %if.end800 ], [ %add.ptr752, %cond.end810 ], [ %mark.2, %if.end829 ], [ %0, %if.else748 ], [ %0, %for.inc846 ], [ %0, %temporise_array ], [ %0, %land.end740 ], [ %0, %if.end567 ], [ %0, %for.inc ], [ %0, %if.end43 ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #8
  %234 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix853 = getelementptr inbounds %struct.stackinfo* %234, i64 0, i32 2
  %235 = load i32* %si_cxix853, align 4, !tbaa !3
  %dec854 = add nsw i32 %235, -1
  store i32 %dec854, i32* %si_cxix853, align 4, !tbaa !3
  %hasargs859 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %236 = bitcast %struct.sv** %hasargs859 to i8*
  %237 = load i8* %236, align 1, !tbaa !1
  %tobool860 = icmp eq i8 %237, 0
  br i1 %tobool860, label %if.end978, label %if.then861

if.then861:                                       ; preds = %if.end852
  %238 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any862 = getelementptr inbounds %struct.gv* %238, i64 0, i32 0
  %239 = load %struct.xpvgv** %sv_any862, align 8, !tbaa !0
  %xgv_gp863 = getelementptr inbounds %struct.xpvgv* %239, i64 0, i32 7
  %240 = load %struct.gp** %xgv_gp863, align 8, !tbaa !0
  %gp_av864 = getelementptr inbounds %struct.gp* %240, i64 0, i32 4
  %241 = load %struct.av** %gp_av864, align 8, !tbaa !0
  %242 = bitcast %struct.av* %241 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %242) #8
  %savearray869 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %243 = load %struct.op** %savearray869, align 8
  %244 = bitcast %struct.op* %243 to %struct.av*
  %245 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any870 = getelementptr inbounds %struct.gv* %245, i64 0, i32 0
  %246 = load %struct.xpvgv** %sv_any870, align 8, !tbaa !0
  %xgv_gp871 = getelementptr inbounds %struct.xpvgv* %246, i64 0, i32 7
  %247 = load %struct.gp** %xgv_gp871, align 8, !tbaa !0
  %gp_av872 = getelementptr inbounds %struct.gp* %247, i64 0, i32 4
  store %struct.av* %244, %struct.av** %gp_av872, align 8, !tbaa !0
  %argarray877 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %248 = load %struct.op** %argarray877, align 8
  %sv_any878 = bitcast %struct.op* %248 to %struct.xpvav**
  %249 = load %struct.xpvav** %sv_any878, align 8, !tbaa !0
  %xav_flags879 = getelementptr inbounds %struct.xpvav* %249, i64 0, i32 9
  %250 = load i8* %xav_flags879, align 1, !tbaa !1
  %and881 = and i8 %250, 1
  %tobool882 = icmp eq i8 %and881, 0
  br i1 %tobool882, label %if.else929, label %if.then883

if.then883:                                       ; preds = %if.then861
  %xav_fill891 = getelementptr inbounds %struct.xpvav* %249, i64 0, i32 1
  %251 = load i64* %xav_fill891, align 8, !tbaa !4
  %252 = bitcast %struct.op* %248 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %252) #8
  %call897 = tail call %struct.av* @Perl_newAV() #8
  %call897.c = bitcast %struct.av* %call897 to %struct.op*
  store %struct.op* %call897.c, %struct.op** %argarray877, align 8, !tbaa !0
  %conv908 = trunc i64 %251 to i32
  tail call void @Perl_av_extend(%struct.av* %call897, i32 %conv908) #8
  %253 = load %struct.op** %argarray877, align 8
  %sv_any914 = bitcast %struct.op* %253 to %struct.xpvav**
  %254 = load %struct.xpvav** %sv_any914, align 8, !tbaa !0
  %xav_flags915 = getelementptr inbounds %struct.xpvav* %254, i64 0, i32 9
  store i8 2, i8* %xav_flags915, align 1, !tbaa !1
  %255 = load %struct.op** %argarray877, align 8
  %256 = bitcast %struct.op* %255 to %struct.sv*
  %oldcomppad925 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %257 = load %struct.sv** %oldcomppad925, align 8
  %sv_any926 = bitcast %struct.sv* %257 to %struct.xpvav**
  %258 = load %struct.xpvav** %sv_any926, align 8, !tbaa !0
  %xav_array927 = getelementptr inbounds %struct.xpvav* %258, i64 0, i32 0
  %259 = load i8** %xav_array927, align 8, !tbaa !0
  %260 = bitcast i8* %259 to %struct.sv**
  store %struct.sv* %256, %struct.sv** %260, align 8, !tbaa !0
  br label %if.end978

if.else929:                                       ; preds = %if.then861
  %xav_array936 = getelementptr inbounds %struct.xpvav* %249, i64 0, i32 0
  %261 = load i8** %xav_array936, align 8, !tbaa !0
  %xav_alloc943 = getelementptr inbounds %struct.xpvav* %249, i64 0, i32 7
  %262 = load %struct.sv*** %xav_alloc943, align 8, !tbaa !0
  %sub.ptr.lhs.cast944 = ptrtoint i8* %261 to i64
  %sub.ptr.rhs.cast945 = ptrtoint %struct.sv** %262 to i64
  %sub.ptr.sub946 = sub i64 %sub.ptr.lhs.cast944, %sub.ptr.rhs.cast945
  %sub.ptr.div947 = ashr exact i64 %sub.ptr.sub946, 3
  %xav_max954 = getelementptr inbounds %struct.xpvav* %249, i64 0, i32 2
  %263 = load i64* %xav_max954, align 8, !tbaa !4
  %add955 = add nsw i64 %sub.ptr.div947, %263
  store i64 %add955, i64* %xav_max954, align 8, !tbaa !4
  %264 = load %struct.op** %argarray877, align 8
  %sv_any961 = bitcast %struct.op* %264 to %struct.xpvav**
  %265 = load %struct.xpvav** %sv_any961, align 8, !tbaa !0
  %xav_alloc962 = getelementptr inbounds %struct.xpvav* %265, i64 0, i32 7
  %266 = load %struct.sv*** %xav_alloc962, align 8, !tbaa !0
  %267 = bitcast %struct.sv** %266 to i8*
  %xpv_pv969 = getelementptr inbounds %struct.xpvav* %265, i64 0, i32 0
  store i8* %267, i8** %xpv_pv969, align 8, !tbaa !0
  %268 = load %struct.op** %argarray877, align 8
  %sv_any975 = bitcast %struct.op* %268 to %struct.xpvav**
  %269 = load %struct.xpvav** %sv_any975, align 8, !tbaa !0
  %xav_fill976 = getelementptr inbounds %struct.xpvav* %269, i64 0, i32 1
  store i64 -1, i64* %xav_fill976, align 8, !tbaa !4
  br label %if.end978

if.end978:                                        ; preds = %if.end852, %if.then883, %if.else929
  %cv983 = bitcast %union.anon.1* %blk_u to %struct.cv**
  %270 = load %struct.cv** %cv983, align 8, !tbaa !0
  %271 = bitcast %struct.cv* %270 to %struct.sv*
  %tobool984 = icmp eq %struct.cv* %270, null
  br i1 %tobool984, label %if.end995, label %land.lhs.true985

land.lhs.true985:                                 ; preds = %if.end978
  %olddepth990 = getelementptr inbounds %struct.context* %3, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %272 = bitcast %struct.sv*** %olddepth990 to i64*
  %273 = load i64* %272, align 8, !tbaa !4
  %sv_any991 = getelementptr inbounds %struct.cv* %270, i64 0, i32 0
  %274 = load %struct.xpvcv** %sv_any991, align 8, !tbaa !0
  %xcv_depth992 = getelementptr inbounds %struct.xpvcv* %274, i64 0, i32 14
  store i64 %273, i64* %xcv_depth992, align 8, !tbaa !4
  %tobool993 = icmp eq i64 %273, 0
  %.1195 = select i1 %tobool993, %struct.sv* %271, %struct.sv* null
  br label %if.end995

if.end995:                                        ; preds = %land.lhs.true985, %if.end978
  %sv.4 = phi %struct.sv* [ %271, %if.end978 ], [ %.1195, %land.lhs.true985 ]
  store %struct.pmop* %11, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool996 = icmp eq %struct.sv* %sv.4, null
  br i1 %tobool996, label %if.end998, label %if.then997

if.then997:                                       ; preds = %if.end995
  tail call void @Perl_sv_free(%struct.sv* %sv.4) #8
  br label %if.end998

if.end998:                                        ; preds = %if.end995, %if.then997
  %call999 = tail call %struct.op* @Perl_pop_return() #8
  br label %return

return:                                           ; preds = %if.end998, %if.end725, %if.end542, %cond.end, %if.end212
  %retval.0 = phi %struct.op* [ %call999, %if.end998 ], [ %call383, %cond.end ], [ %call546, %if.end542 ], [ %call730, %if.end725 ], [ %call213, %if.end212 ]
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_entersub() #0 {
entry:
  %gv = alloca %struct.gv*, align 8
  %stash = alloca %struct.hv*, align 8
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %2 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %2, i64 0, i32 6
  %3 = load i8* %op_flags, align 1, !tbaa !1
  %and = lshr i8 %3, 6
  %and.lobit = and i8 %and, 1
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([21 x i8]* @.str39, i64 0, i64 0)) #8
  br label %return

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and3 = and i32 %4, 255
  switch i32 %and3, label %sw.default [
    i32 11, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb89
    i32 13, label %sw.bb90
  ]

sw.default:                                       ; preds = %if.end
  %and5 = and i32 %4, 524288
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %got_rv

if.then7:                                         ; preds = %sw.default
  %cmp8 = icmp eq %struct.sv* %1, @PL_sv_yes
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then7
  %tobool11 = icmp eq i8 %and.lobit, 0
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.then10
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %6 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr13 = getelementptr inbounds i32* %6, i64 -1
  store i32* %incdec.ptr13, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %7 = load i32* %6, align 4, !tbaa !3
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %5, i64 %idx.ext
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then12
  %sp.0 = phi %struct.sv** [ %add.ptr, %if.then12 ], [ %incdec.ptr, %if.then10 ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %2, i64 0, i32 0
  %8 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end15:                                         ; preds = %if.then7
  %and17 = and i32 %4, 8192
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  %call20 = call i32 @Perl_mg_get(%struct.sv* %1) #8
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and22 = and i32 %9, 524288
  %tobool23 = icmp eq i32 %and22, 0
  br i1 %tobool23, label %if.end25, label %got_rv

if.end25:                                         ; preds = %if.then19
  %and27 = and i32 %9, 67108864
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %if.then43, label %cond.true

cond.true:                                        ; preds = %if.end25
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end41

if.else:                                          ; preds = %if.end15
  %and30 = and i32 %4, 262144
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %cond.false37, label %cond.true33

cond.true33:                                      ; preds = %if.else
  %sv_any34 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %12 = load i8** %sv_any34, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %12, i64 8
  %13 = bitcast i8* %xpv_cur to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  store i64 %14, i64* %n_a, align 8, !tbaa !4
  %xpv_pv36 = bitcast i8* %12 to i8**
  %15 = load i8** %xpv_pv36, align 8, !tbaa !0
  br label %if.end41

cond.false37:                                     ; preds = %if.else
  %call38 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %n_a, i32 2) #8
  br label %if.end41

if.end41:                                         ; preds = %cond.true33, %cond.false37, %cond.true
  %sym.0 = phi i8* [ %11, %cond.true ], [ %15, %cond.true33 ], [ %call38, %cond.false37 ]
  %tobool42 = icmp eq i8* %sym.0, null
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end25, %if.end41
  %call44 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_usym, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str40, i64 0, i64 0)) #8
  br label %return

if.end45:                                         ; preds = %if.end41
  %16 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %16, i64 0, i32 7
  %17 = load i8* %op_private, align 1, !tbaa !1
  %and47 = and i8 %17, 2
  %tobool48 = icmp eq i8 %and47, 0
  br i1 %tobool48, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end45
  %call50 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_symref, i64 0, i64 0), i8* %sym.0, i8* getelementptr inbounds ([13 x i8]* @.str40, i64 0, i64 0)) #8
  br label %return

if.end51:                                         ; preds = %if.end45
  %call52 = call %struct.cv* @Perl_get_cv(i8* %sym.0, i32 1) #8
  br label %sw.epilog

got_rv:                                           ; preds = %if.then19, %sw.default
  %18 = phi i32 [ %9, %if.then19 ], [ %4, %sw.default ]
  %19 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool55 = icmp eq i64 %19, 0
  br i1 %tobool55, label %if.end79, label %am_again

am_again:                                         ; preds = %got_rv, %land.lhs.true70.am_again_crit_edge
  %20 = phi i32 [ %.pre677, %land.lhs.true70.am_again_crit_edge ], [ %18, %got_rv ]
  %sv.0.load656661 = phi %struct.sv* [ %call60, %land.lhs.true70.am_again_crit_edge ], [ %1, %got_rv ]
  %and58 = and i32 %20, 268435456
  %tobool59 = icmp eq i32 %and58, 0
  br i1 %tobool59, label %if.end79, label %land.lhs.true

land.lhs.true:                                    ; preds = %am_again
  %call60 = call %struct.sv* @Perl_amagic_call(%struct.sv* %sv.0.load656661, %struct.sv* @PL_sv_undef, i32 62, i32 9) #8
  %tobool61 = icmp eq %struct.sv* %call60, null
  br i1 %tobool61, label %if.end79, label %if.then62

if.then62:                                        ; preds = %land.lhs.true
  %sv_flags63 = getelementptr inbounds %struct.sv* %call60, i64 0, i32 2
  %21 = load i32* %sv_flags63, align 4, !tbaa !3
  %and64 = and i32 %21, 524288
  %tobool65 = icmp eq i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then62
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0)) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.then66
  %cmp68 = icmp eq %struct.sv* %call60, %sv.0.load656661
  br i1 %cmp68, label %if.end79, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end67
  %sv_any71 = getelementptr inbounds %struct.sv* %call60, i64 0, i32 0
  %22 = load i8** %sv_any71, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %22 to %struct.sv**
  %23 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any72 = getelementptr inbounds %struct.sv* %sv.0.load656661, i64 0, i32 0
  %24 = load i8** %sv_any72, align 8, !tbaa !0
  %xrv_rv73 = bitcast i8* %24 to %struct.sv**
  %25 = load %struct.sv** %xrv_rv73, align 8, !tbaa !0
  %cmp74 = icmp eq %struct.sv* %23, %25
  br i1 %cmp74, label %if.end79, label %land.lhs.true70.am_again_crit_edge

land.lhs.true70.am_again_crit_edge:               ; preds = %land.lhs.true70
  %.pre677 = load i32* %sv_flags63, align 4, !tbaa !3
  br label %am_again

if.end79:                                         ; preds = %land.lhs.true70, %if.end67, %land.lhs.true, %am_again, %got_rv
  %sv.0.load656662 = phi %struct.sv* [ %1, %got_rv ], [ %call60, %land.lhs.true70 ], [ %sv.0.load656661, %if.end67 ], [ %sv.0.load656661, %land.lhs.true ], [ %sv.0.load656661, %am_again ]
  %sv_any80 = getelementptr inbounds %struct.sv* %sv.0.load656662, i64 0, i32 0
  %26 = load i8** %sv_any80, align 8, !tbaa !0
  %xrv_rv81 = bitcast i8* %26 to %struct.sv**
  %27 = load %struct.sv** %xrv_rv81, align 8, !tbaa !0
  %28 = bitcast %struct.sv* %27 to %struct.cv*
  %29 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %30 = load i32* %29, align 4, !tbaa !3
  %and83 = and i32 %30, 255
  %cmp84 = icmp eq i32 %and83, 12
  br i1 %cmp84, label %sw.epilog, label %sw.bb

sw.bb:                                            ; preds = %if.end79, %if.end, %if.end
  %call88 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([21 x i8]* @.str39, i64 0, i64 0)) #8
  br label %return

sw.bb89:                                          ; preds = %if.end
  %31 = bitcast %struct.sv* %1 to %struct.cv*
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end
  %sv_any91 = bitcast %struct.sv* %1 to %struct.xpvgv**
  %32 = load %struct.xpvgv** %sv_any91, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 7
  %33 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cvgen = getelementptr inbounds %struct.gp* %33, i64 0, i32 8
  %34 = load i32* %gp_cvgen, align 4, !tbaa !3
  %tobool92 = icmp eq i32 %34, 0
  br i1 %tobool92, label %cond.end97, label %if.end102

cond.end97:                                       ; preds = %sw.bb90
  %gp_cv = getelementptr inbounds %struct.gp* %33, i64 0, i32 7
  %35 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool99 = icmp eq %struct.cv* %35, null
  br i1 %tobool99, label %if.end102, label %sw.epilog

if.end102:                                        ; preds = %sw.bb90, %cond.end97
  %call101 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %1, %struct.hv** %stash, %struct.gv** %gv, i32 0) #8
  %tobool103 = icmp eq %struct.cv* %call101, null
  br i1 %tobool103, label %if.then104, label %sw.epilog

if.then104:                                       ; preds = %if.end102
  call void @Perl_push_scope() #8
  call void @Perl_save_int(i32* @PL_tmps_floor) #8
  %36 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %36, i32* @PL_tmps_floor, align 4, !tbaa !3
  %.pre675 = load %struct.gv** %gv, align 8, !tbaa !0
  %sv_any131.phi.trans.insert = getelementptr inbounds %struct.gv* %.pre675, i64 0, i32 0
  %.pre676 = load %struct.xpvgv** %sv_any131.phi.trans.insert, align 8, !tbaa !0
  br label %try_autoload

sw.epilog:                                        ; preds = %cond.end97, %if.end102, %if.end79, %sw.bb89, %if.end51
  %sv.0.load656660 = phi %struct.sv* [ %sv.0.load656662, %if.end79 ], [ %1, %if.end51 ], [ %1, %if.end102 ], [ %1, %sw.bb89 ], [ %1, %cond.end97 ]
  %cv.1 = phi %struct.cv* [ %28, %if.end79 ], [ %call52, %if.end51 ], [ %call101, %if.end102 ], [ %31, %sw.bb89 ], [ %35, %cond.end97 ]
  call void @Perl_push_scope() #8
  call void @Perl_save_int(i32* @PL_tmps_floor) #8
  %37 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %37, i32* @PL_tmps_floor, align 4, !tbaa !3
  br label %retry

retry:                                            ; preds = %if.end144, %sw.epilog
  %sv.0.load656659 = phi %struct.sv* [ %sv.0.load656660, %sw.epilog ], [ %sv.0.load656657, %if.end144 ]
  %cv.2 = phi %struct.cv* [ %cv.1, %sw.epilog ], [ %cv.3, %if.end144 ]
  %sv_any106 = getelementptr inbounds %struct.cv* %cv.2, i64 0, i32 0
  %38 = load %struct.xpvcv** %sv_any106, align 8, !tbaa !0
  %xcv_root = getelementptr inbounds %struct.xpvcv* %38, i64 0, i32 9
  %39 = load %struct.op** %xcv_root, align 8, !tbaa !0
  %tobool107 = icmp eq %struct.op* %39, null
  br i1 %tobool107, label %land.lhs.true108, label %if.end149

land.lhs.true108:                                 ; preds = %retry
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %38, i64 0, i32 10
  %40 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !0
  %tobool110 = icmp eq void (%struct.cv*)* %40, null
  br i1 %tobool110, label %if.then111, label %if.end149

if.then111:                                       ; preds = %land.lhs.true108
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %38, i64 0, i32 17
  %41 = load i16* %xcv_flags, align 2, !tbaa !6
  %and114 = and i16 %41, 4
  %tobool115 = icmp eq i16 %and114, 0
  br i1 %tobool115, label %lor.lhs.false, label %if.then118

lor.lhs.false:                                    ; preds = %if.then111
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %38, i64 0, i32 12
  %42 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  store %struct.gv* %42, %struct.gv** %gv, align 8, !tbaa !0
  %tobool117 = icmp eq %struct.gv* %42, null
  br i1 %tobool117, label %if.then118, label %if.end120

if.then118:                                       ; preds = %lor.lhs.false, %if.then111
  %call119 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0)) #8
  br label %return

if.end120:                                        ; preds = %lor.lhs.false
  %sv_any121 = getelementptr inbounds %struct.gv* %42, i64 0, i32 0
  %43 = load %struct.xpvgv** %sv_any121, align 8, !tbaa !0
  %xgv_gp122 = getelementptr inbounds %struct.xpvgv* %43, i64 0, i32 7
  %44 = load %struct.gp** %xgv_gp122, align 8, !tbaa !0
  %gp_cv123 = getelementptr inbounds %struct.gp* %44, i64 0, i32 7
  %45 = load %struct.cv** %gp_cv123, align 8, !tbaa !0
  %cmp124 = icmp eq %struct.cv* %cv.2, %45
  br i1 %cmp124, label %try_autoload, label %if.end144

try_autoload:                                     ; preds = %if.end120, %if.then104
  %46 = phi %struct.xpvgv* [ %43, %if.end120 ], [ %.pre676, %if.then104 ]
  %sv.0.load656658 = phi %struct.sv* [ %sv.0.load656659, %if.end120 ], [ %1, %if.then104 ]
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %46, i64 0, i32 10
  %47 = load %struct.hv** %xgv_stash, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %46, i64 0, i32 8
  %48 = load i8** %xgv_name, align 8, !tbaa !0
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %46, i64 0, i32 9
  %49 = load i64* %xgv_namelen, align 8, !tbaa !4
  %call134 = call %struct.gv* @Perl_gv_autoload4(%struct.hv* %47, i8* %48, i64 %49, i32 0) #8
  %tobool135 = icmp eq %struct.gv* %call134, null
  br i1 %tobool135, label %if.else140, label %if.then136

if.then136:                                       ; preds = %try_autoload
  %sv_any137 = getelementptr inbounds %struct.gv* %call134, i64 0, i32 0
  %50 = load %struct.xpvgv** %sv_any137, align 8, !tbaa !0
  %xgv_gp138 = getelementptr inbounds %struct.xpvgv* %50, i64 0, i32 7
  %51 = load %struct.gp** %xgv_gp138, align 8, !tbaa !0
  %gp_cv139 = getelementptr inbounds %struct.gp* %51, i64 0, i32 7
  %52 = load %struct.cv** %gp_cv139, align 8, !tbaa !0
  br label %if.end144

if.else140:                                       ; preds = %try_autoload
  %call141 = call %struct.sv* @Perl_sv_newmortal() #8
  %53 = load %struct.gv** %gv, align 8, !tbaa !0
  call void @Perl_gv_efullname4(%struct.sv* %call141, %struct.gv* %53, i8* null, i8 signext 1) #8
  %call142 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([32 x i8]* @.str42, i64 0, i64 0), %struct.sv* %call141) #8
  br label %return

if.end144:                                        ; preds = %if.end120, %if.then136
  %sv.0.load656657 = phi %struct.sv* [ %sv.0.load656658, %if.then136 ], [ %sv.0.load656659, %if.end120 ]
  %cv.3 = phi %struct.cv* [ %52, %if.then136 ], [ %45, %if.end120 ]
  %tobool145 = icmp eq %struct.cv* %cv.3, null
  br i1 %tobool145, label %if.then146, label %retry

if.then146:                                       ; preds = %if.end144
  %call147 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([21 x i8]* @.str39, i64 0, i64 0)) #8
  br label %return

if.end149:                                        ; preds = %land.lhs.true108, %retry
  %54 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags150 = getelementptr inbounds %struct.op* %54, i64 0, i32 6
  %55 = load i8* %op_flags150, align 1, !tbaa !1
  %conv151 = zext i8 %55 to i32
  %and152 = and i32 %conv151, 3
  %cmp153 = icmp eq i32 %and152, 1
  br i1 %cmp153, label %cond.end176, label %cond.false156

cond.false156:                                    ; preds = %if.end149
  %cmp160 = icmp eq i32 %and152, 2
  br i1 %cmp160, label %cond.end176, label %cond.false163

cond.false163:                                    ; preds = %cond.false156
  %cmp167 = icmp eq i32 %and152, 3
  br i1 %cmp167, label %cond.end176, label %cond.false170

cond.false170:                                    ; preds = %cond.false163
  %call171 = call i32 @Perl_block_gimme() #8
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false156, %cond.false163, %cond.false170, %if.end149
  %56 = phi %struct.op* [ %54, %if.end149 ], [ %54, %cond.false156 ], [ %.pre, %cond.false170 ], [ %54, %cond.false163 ]
  %cond177 = phi i32 [ 128, %if.end149 ], [ 0, %cond.false156 ], [ %call171, %cond.false170 ], [ 1, %cond.false163 ]
  %op_private178 = getelementptr inbounds %struct.op* %56, i64 0, i32 7
  %57 = load i8* %op_private178, align 1, !tbaa !1
  %and180 = and i8 %57, 16
  %tobool181 = icmp eq i8 %and180, 0
  br i1 %tobool181, label %if.end206, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %cond.end176
  %58 = load %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %sv_any183 = getelementptr inbounds %struct.gv* %58, i64 0, i32 0
  %59 = load %struct.xpvgv** %sv_any183, align 8, !tbaa !0
  %xgv_gp184 = getelementptr inbounds %struct.xpvgv* %59, i64 0, i32 7
  %60 = load %struct.gp** %xgv_gp184, align 8, !tbaa !0
  %gp_cv185 = getelementptr inbounds %struct.gp* %60, i64 0, i32 7
  %61 = load %struct.cv** %gp_cv185, align 8, !tbaa !0
  %tobool186 = icmp eq %struct.cv* %61, null
  br i1 %tobool186, label %if.end206, label %land.lhs.true187

land.lhs.true187:                                 ; preds = %land.lhs.true182
  %62 = load %struct.xpvcv** %sv_any106, align 8, !tbaa !0
  %xcv_flags189 = getelementptr inbounds %struct.xpvcv* %62, i64 0, i32 17
  %63 = load i16* %xcv_flags189, align 2, !tbaa !6
  %and191 = and i16 %63, 32
  %tobool192 = icmp eq i16 %and191, 0
  br i1 %tobool192, label %if.then193, label %if.end206

if.then193:                                       ; preds = %land.lhs.true187
  %gp_sv.i = getelementptr inbounds %struct.gp* %60, i64 0, i32 0
  %64 = load %struct.sv** %gp_sv.i, align 8, !tbaa !0
  %65 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %65, 0
  %and.i = and i32 %65, 64
  %tobool1.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool.i, %tobool1.i
  br i1 %or.cond.i, label %if.then.i, label %if.else26.i

if.then.i:                                        ; preds = %if.then193
  %xcv_gv.i = getelementptr inbounds %struct.xpvcv* %62, i64 0, i32 12
  %66 = load %struct.gv** %xcv_gv.i, align 8, !tbaa !0
  call void @Perl_save_item(%struct.sv* %64) #8
  %67 = load %struct.xpvcv** %sv_any106, align 8, !tbaa !0
  %xcv_flags.i = getelementptr inbounds %struct.xpvcv* %67, i64 0, i32 17
  %68 = load i16* %xcv_flags.i, align 2, !tbaa !6
  %and4.i = and i16 %68, 6
  %tobool5.i = icmp eq i16 %and4.i, 0
  br i1 %tobool5.i, label %lor.lhs.false.i, label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %sv_any6.i = getelementptr inbounds %struct.gv* %66, i64 0, i32 0
  %69 = load %struct.xpvgv** %sv_any6.i, align 8, !tbaa !0
  %xgv_name.i = getelementptr inbounds %struct.xpvgv* %69, i64 0, i32 8
  %70 = load i8** %xgv_name.i, align 8, !tbaa !0
  %call.i = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0)) #8
  %tobool7.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.i, label %if.then24.i, label %lor.lhs.false8.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %xgv_gp10.i = getelementptr inbounds %struct.xpvgv* %69, i64 0, i32 7
  %71 = load %struct.gp** %xgv_gp10.i, align 8, !tbaa !0
  %gp_cv.i = getelementptr inbounds %struct.gp* %71, i64 0, i32 7
  %72 = load %struct.cv** %gp_cv.i, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.cv* %72, %cv.2
  br i1 %cmp.i, label %if.else.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %lor.lhs.false8.i
  %sv_flags.i = getelementptr inbounds %struct.sv* %sv.0.load656659, i64 0, i32 2
  %73 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and13.i = and i32 %73, 255
  %cmp14.i = icmp eq i32 %and13.i, 13
  br i1 %cmp14.i, label %land.lhs.true16.i, label %if.then24.i

land.lhs.true16.i:                                ; preds = %land.lhs.true12.i
  %sv_any17.i = bitcast %struct.sv* %sv.0.load656659 to %struct.xpvgv**
  %74 = load %struct.xpvgv** %sv_any17.i, align 8, !tbaa !0
  %xgv_gp18.i = getelementptr inbounds %struct.xpvgv* %74, i64 0, i32 7
  %75 = load %struct.gp** %xgv_gp18.i, align 8, !tbaa !0
  %gp_cv19.i = getelementptr inbounds %struct.gp* %75, i64 0, i32 7
  %76 = load %struct.cv** %gp_cv19.i, align 8, !tbaa !0
  %cmp20.i = icmp eq %struct.cv* %76, %cv.2
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.then24.i

land.lhs.true22.i:                                ; preds = %land.lhs.true16.i
  %77 = bitcast %struct.sv* %sv.0.load656659 to %struct.gv*
  %tobool23.i = icmp eq %struct.sv* %sv.0.load656659, null
  br i1 %tobool23.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %land.lhs.true22.i, %land.lhs.true16.i, %land.lhs.true12.i, %lor.lhs.false.i, %if.then.i
  %78 = bitcast %struct.cv* %cv.2 to %struct.sv*
  %call25.i = call %struct.sv* @Perl_newRV(%struct.sv* %78) #8
  call void @Perl_sv_setsv_flags(%struct.sv* %64, %struct.sv* %call25.i, i32 2) #8
  call void @Perl_sv_free(%struct.sv* %call25.i) #8
  br label %if.end43.i

if.else.i:                                        ; preds = %land.lhs.true22.i, %lor.lhs.false8.i
  %gv.0.i = phi %struct.gv* [ %77, %land.lhs.true22.i ], [ %66, %lor.lhs.false8.i ]
  call void @Perl_gv_efullname4(%struct.sv* %64, %struct.gv* %gv.0.i, i8* null, i8 signext 1) #8
  br label %if.end43.i

if.else26.i:                                      ; preds = %if.then193
  %sv_flags27.i = getelementptr inbounds %struct.sv* %64, i64 0, i32 2
  %79 = load i32* %sv_flags27.i, align 4, !tbaa !3
  %and28.i = and i32 %79, 255
  %cmp29.i = icmp ugt i32 %and28.i, 4
  br i1 %cmp29.i, label %lor.end.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.else26.i
  %call31.i = call signext i8 @Perl_sv_upgrade(%struct.sv* %64, i32 5) #8
  %.pre.i = load i32* %sv_flags27.i, align 4, !tbaa !3
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.else26.i
  %80 = phi i32 [ %.pre.i, %lor.rhs.i ], [ %79, %if.else26.i ]
  %and35.i = and i32 %80, 2097152
  %tobool36.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.end.i
  %call37.i = call i32 @Perl_sv_backoff(%struct.sv* %64) #8
  %.pre72.i = load i32* %sv_flags27.i, align 4, !tbaa !3
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %lor.end.i
  %81 = phi i32 [ %80, %lor.end.i ], [ %.pre72.i, %land.rhs.i ]
  %or.i = or i32 %81, 16842752
  store i32 %or.i, i32* %sv_flags27.i, align 4, !tbaa !3
  %sv_any40.i = getelementptr inbounds %struct.sv* %64, i64 0, i32 0
  %82 = load i8** %sv_any40.i, align 8, !tbaa !0
  %xiv_iv.i = getelementptr inbounds i8* %82, i64 24
  %83 = bitcast i8* %xiv_iv.i to i64*
  call void @Perl_save_iv(i64* %83) #8
  %84 = ptrtoint %struct.cv* %cv.2 to i64
  %85 = load i8** %sv_any40.i, align 8, !tbaa !0
  %xiv_iv42.i = getelementptr inbounds i8* %85, i64 24
  %86 = bitcast i8* %xiv_iv42.i to i64*
  store i64 %84, i64* %86, align 8, !tbaa !4
  br label %if.end43.i

if.end43.i:                                       ; preds = %land.end.i, %if.else.i, %if.then24.i
  %87 = load %struct.xpvcv** %sv_any106, align 8, !tbaa !0
  %xcv_xsub.i = getelementptr inbounds %struct.xpvcv* %87, i64 0, i32 10
  %88 = load void (%struct.cv*)** %xcv_xsub.i, align 8, !tbaa !0
  %tobool45.i = icmp eq void (%struct.cv*)* %88, null
  br i1 %tobool45.i, label %S_get_db_sub.exit, label %if.then46.i

if.then46.i:                                      ; preds = %if.end43.i
  %89 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  store %struct.cop* %89, %struct.cop** @PL_curcopdb, align 8, !tbaa !0
  br label %S_get_db_sub.exit

S_get_db_sub.exit:                                ; preds = %if.end43.i, %if.then46.i
  %90 = load %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %sv_any48.i = getelementptr inbounds %struct.gv* %90, i64 0, i32 0
  %91 = load %struct.xpvgv** %sv_any48.i, align 8, !tbaa !0
  %xgv_gp49.i = getelementptr inbounds %struct.xpvgv* %91, i64 0, i32 7
  %92 = load %struct.gp** %xgv_gp49.i, align 8, !tbaa !0
  %gp_cv50.i = getelementptr inbounds %struct.gp* %92, i64 0, i32 7
  %93 = load %struct.cv** %gp_cv50.i, align 8, !tbaa !0
  %tobool195 = icmp eq %struct.cv* %93, null
  br i1 %tobool195, label %if.then203, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %S_get_db_sub.exit
  %sv_any197 = getelementptr inbounds %struct.cv* %93, i64 0, i32 0
  %94 = load %struct.xpvcv** %sv_any197, align 8, !tbaa !0
  %xcv_xsub198 = getelementptr inbounds %struct.xpvcv* %94, i64 0, i32 10
  %95 = load void (%struct.cv*)** %xcv_xsub198, align 8, !tbaa !0
  %tobool199 = icmp eq void (%struct.cv*)* %95, null
  br i1 %tobool199, label %land.lhs.true200, label %if.end206

land.lhs.true200:                                 ; preds = %lor.lhs.false196
  %xcv_start = getelementptr inbounds %struct.xpvcv* %94, i64 0, i32 8
  %96 = load %struct.op** %xcv_start, align 8, !tbaa !0
  %tobool202 = icmp eq %struct.op* %96, null
  br i1 %tobool202, label %if.then203, label %if.end206

if.then203:                                       ; preds = %land.lhs.true200, %S_get_db_sub.exit
  %call204 = call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0)) #8
  br label %return

if.end206:                                        ; preds = %land.lhs.true182, %cond.end176, %land.lhs.true200, %lor.lhs.false196, %land.lhs.true187
  %cv.4 = phi %struct.cv* [ %cv.2, %land.lhs.true187 ], [ %93, %lor.lhs.false196 ], [ %93, %land.lhs.true200 ], [ %cv.2, %cond.end176 ], [ %cv.2, %land.lhs.true182 ]
  %sv_any207 = getelementptr inbounds %struct.cv* %cv.4, i64 0, i32 0
  %97 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_xsub208 = getelementptr inbounds %struct.xpvcv* %97, i64 0, i32 10
  %98 = load void (%struct.cv*)** %xcv_xsub208, align 8, !tbaa !0
  %tobool209 = icmp eq void (%struct.cv*)* %98, null
  br i1 %tobool209, label %if.else266, label %if.then210

if.then210:                                       ; preds = %if.end206
  %99 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %100 = load i32* %99, align 4, !tbaa !3
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool211 = icmp eq i8 %and.lobit, 0
  br i1 %tobool211, label %if.then212, label %if.end231

if.then212:                                       ; preds = %if.then210
  %101 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any213 = getelementptr inbounds %struct.gv* %101, i64 0, i32 0
  %102 = load %struct.xpvgv** %sv_any213, align 8, !tbaa !0
  %xgv_gp214 = getelementptr inbounds %struct.xpvgv* %102, i64 0, i32 7
  %103 = load %struct.gp** %xgv_gp214, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %103, i64 0, i32 4
  %104 = load %struct.av** %gp_av, align 8, !tbaa !0
  %sv_any215 = getelementptr inbounds %struct.av* %104, i64 0, i32 0
  %105 = load %struct.xpvav** %sv_any215, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %105, i64 0, i32 1
  %106 = load i64* %xav_fill, align 8, !tbaa !4
  %add = add nsw i64 %106, 1
  %conv216 = trunc i64 %add to i32
  %tobool217 = icmp eq i32 %conv216, 0
  br i1 %tobool217, label %if.end231, label %if.then218

if.then218:                                       ; preds = %if.then212
  %107 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %107 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %sext651 = shl i64 %add, 32
  %conv219 = ashr exact i64 %sext651, 32
  %cmp220 = icmp slt i64 %sub.ptr.div, %conv219
  br i1 %cmp220, label %if.then222, label %if.end224

if.then222:                                       ; preds = %if.then218
  %call223 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr, %struct.sv** %incdec.ptr, i32 %conv216) #8
  %.pre674 = load %struct.xpvav** %sv_any215, align 8, !tbaa !0
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %if.then218
  %108 = phi %struct.xpvav* [ %.pre674, %if.then222 ], [ %105, %if.then218 ]
  %sp.1 = phi %struct.sv** [ %call223, %if.then222 ], [ %incdec.ptr, %if.then218 ]
  %add.ptr225 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  %109 = bitcast %struct.sv** %add.ptr225 to i8*
  %xav_array = getelementptr inbounds %struct.xpvav* %108, i64 0, i32 0
  %110 = load i8** %xav_array, align 8, !tbaa !0
  %mul = ashr exact i64 %sext651, 29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 %mul, i32 1, i1 false)
  %add.ptr229 = getelementptr inbounds %struct.sv** %sp.1, i64 %conv219
  store %struct.sv** %add.ptr229, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end231

if.end231:                                        ; preds = %if.then212, %if.then210, %if.end224
  %111 = load %struct.cop** @PL_curcopdb, align 8, !tbaa !0
  %tobool232 = icmp eq %struct.cop* %111, null
  br i1 %tobool232, label %if.end234, label %if.then233

if.then233:                                       ; preds = %if.end231
  call void @Perl_save_vptr(i8* bitcast (%struct.cop** @PL_curcop to i8*)) #8
  %112 = load %struct.cop** @PL_curcopdb, align 8, !tbaa !0
  store volatile %struct.cop* %112, %struct.cop** @PL_curcop, align 8, !tbaa !0
  store %struct.cop* null, %struct.cop** @PL_curcopdb, align 8, !tbaa !0
  br label %if.end234

if.end234:                                        ; preds = %if.end231, %if.then233
  %113 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_xsub236 = getelementptr inbounds %struct.xpvcv* %113, i64 0, i32 10
  %114 = load void (%struct.cv*)** %xcv_xsub236, align 8, !tbaa !0
  call void %114(%struct.cv* %cv.4) #8
  %cmp237 = icmp eq i32 %cond177, 0
  br i1 %cmp237, label %land.lhs.true239, label %if.end264

land.lhs.true239:                                 ; preds = %if.end234
  %inc = add nsw i32 %100, 1
  %conv240 = sext i32 %inc to i64
  %115 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %116 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast241 = ptrtoint %struct.sv** %115 to i64
  %sub.ptr.rhs.cast242 = ptrtoint %struct.sv** %116 to i64
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
  %sub.ptr.div244 = ashr exact i64 %sub.ptr.sub243, 3
  %cmp245 = icmp eq i64 %conv240, %sub.ptr.div244
  br i1 %cmp245, label %if.end264, label %if.then247

if.then247:                                       ; preds = %land.lhs.true239
  %cmp253 = icmp sgt i64 %conv240, %sub.ptr.div244
  br i1 %cmp253, label %if.then255, label %if.else258

if.then255:                                       ; preds = %if.then247
  %add.ptr257 = getelementptr inbounds %struct.sv** %116, i64 %conv240
  store %struct.sv* @PL_sv_undef, %struct.sv** %add.ptr257, align 8, !tbaa !0
  br label %if.end261

if.else258:                                       ; preds = %if.then247
  %117 = load %struct.sv** %115, align 8, !tbaa !0
  %add.ptr260 = getelementptr inbounds %struct.sv** %116, i64 %conv240
  store %struct.sv* %117, %struct.sv** %add.ptr260, align 8, !tbaa !0
  br label %if.end261

if.end261:                                        ; preds = %if.else258, %if.then255
  %118 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr263 = getelementptr inbounds %struct.sv** %118, i64 %conv240
  store %struct.sv** %add.ptr263, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end264

if.end264:                                        ; preds = %land.lhs.true239, %if.end261, %if.end234
  call void @Perl_pop_scope() #8
  %119 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next265 = getelementptr inbounds %struct.op* %119, i64 0, i32 0
  %120 = load %struct.op** %op_next265, align 8, !tbaa !0
  br label %return

if.else266:                                       ; preds = %if.end206
  %121 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %122 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr267 = getelementptr inbounds i32* %122, i64 -1
  store i32* %incdec.ptr267, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %123 = load i32* %122, align 4, !tbaa !3
  %idx.ext268 = sext i32 %123 to i64
  %add.ptr269 = getelementptr inbounds %struct.sv** %121, i64 %idx.ext268
  %sub.ptr.lhs.cast271 = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.rhs.cast272 = ptrtoint %struct.sv** %add.ptr269 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %sub.ptr.div274642 = lshr exact i64 %sub.ptr.sub273, 3
  %conv275 = trunc i64 %sub.ptr.div274642 to i32
  %124 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %124, i64 0, i32 15
  %125 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %126 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next277 = getelementptr inbounds %struct.op* %126, i64 0, i32 0
  %127 = load %struct.op** %op_next277, align 8, !tbaa !0
  call void @Perl_push_return(%struct.op* %127) #8
  %128 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %128, i64 0, i32 2
  %129 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %128, i64 0, i32 3
  %130 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp278 = icmp slt i32 %129, %130
  br i1 %cmp278, label %cond.true280, label %cond.false283

cond.true280:                                     ; preds = %if.else266
  %inc282 = add nsw i32 %129, 1
  store i32 %inc282, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end286

cond.false283:                                    ; preds = %if.else266
  %call284 = call i32 @Perl_cxinc() #8
  %131 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix285 = getelementptr inbounds %struct.stackinfo* %131, i64 0, i32 2
  store i32 %call284, i32* %si_cxix285, align 4, !tbaa !3
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false283, %cond.true280
  %132 = phi i32 [ %call284, %cond.false283 ], [ %inc282, %cond.true280 ]
  %133 = phi %struct.stackinfo* [ %131, %cond.false283 ], [ %128, %cond.true280 ]
  %idxprom = sext i32 %132 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %133, i64 0, i32 1
  %134 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 0
  store i32 1, i32* %cx_type, align 4, !tbaa !3
  %135 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.rhs.cast291 = ptrtoint %struct.sv** %135 to i64
  %sub.ptr.sub292 = sub i64 %sub.ptr.rhs.cast272, %sub.ptr.rhs.cast291
  %sub.ptr.div293643 = lshr exact i64 %sub.ptr.sub292, 3
  %conv294 = trunc i64 %sub.ptr.div293643 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 0
  store i32 %conv294, i32* %blku_oldsp, align 4, !tbaa !3
  %136 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 1
  store %struct.cop* %136, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %137 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %138 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast297 = ptrtoint i32* %137 to i64
  %sub.ptr.rhs.cast298 = ptrtoint i32* %138 to i64
  %sub.ptr.sub299 = sub i64 %sub.ptr.lhs.cast297, %sub.ptr.rhs.cast298
  %sub.ptr.div300644 = lshr exact i64 %sub.ptr.sub299, 2
  %conv301 = trunc i64 %sub.ptr.div300644 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 3
  store i32 %conv301, i32* %blku_oldmarksp, align 4, !tbaa !3
  %139 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 4
  store i32 %139, i32* %blku_oldscopesp, align 4, !tbaa !3
  %140 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 2
  store i32 %140, i32* %blku_oldretsp, align 4, !tbaa !3
  %141 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %141, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %conv310 = trunc i32 %cond177 to i8
  %blku_gimme = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 6
  store i8 %conv310, i8* %blku_gimme, align 1, !tbaa !1
  %blk_u = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %142 = getelementptr inbounds %union.anon.1* %blk_u, i64 0, i32 0, i32 0
  %cv.4.c = bitcast %struct.cv* %cv.4 to i8*
  store i8* %cv.4.c, i8** %142, align 8, !tbaa !0
  %143 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_depth = getelementptr inbounds %struct.xpvcv* %143, i64 0, i32 14
  %144 = load i64* %xcv_depth, align 8, !tbaa !4
  %olddepth = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 5
  %.c = inttoptr i64 %144 to %struct.sv**
  store %struct.sv** %.c, %struct.sv*** %olddepth, align 8, !tbaa !4
  %hasargs325 = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 6
  %145 = bitcast %struct.sv** %hasargs325 to i8*
  store i8 %and.lobit, i8* %145, align 1, !tbaa !1
  %146 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_depth327 = getelementptr inbounds %struct.xpvcv* %146, i64 0, i32 14
  %147 = load i64* %xcv_depth327, align 8, !tbaa !4
  %tobool328 = icmp eq i64 %147, 0
  br i1 %tobool328, label %if.then329, label %if.end340

if.then329:                                       ; preds = %cond.end286
  %148 = bitcast %struct.cv* %cv.4 to %struct.sv*
  store %struct.sv* %148, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool330 = icmp eq %struct.cv* %cv.4, null
  br i1 %tobool330, label %land.end338.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then329
  %149 = getelementptr inbounds %struct.cv* %cv.4, i64 0, i32 1
  %150 = load i32* %149, align 4, !tbaa !3
  store %struct.sv* %148, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %inc336 = add i32 %150, 2
  store i32 %inc336, i32* %149, align 4, !tbaa !3
  br label %land.end338

land.end338.critedge:                             ; preds = %if.then329
  store %struct.sv* %148, %struct.sv** @PL_Sv, align 8, !tbaa !0
  br label %land.end338

land.end338:                                      ; preds = %land.end338.critedge, %land.rhs
  call void @Perl_save_freesv(%struct.sv* %148) #8
  br label %if.end340

if.end340:                                        ; preds = %cond.end286, %land.end338
  %151 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private341 = getelementptr inbounds %struct.op* %151, i64 0, i32 7
  %152 = load i8* %op_private341, align 1, !tbaa !1
  %and343 = and i8 %152, -124
  %lval = getelementptr inbounds %struct.block_sub* %blku_sub, i64 0, i32 7
  store i8 %and343, i8* %lval, align 1, !tbaa !1
  %153 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_depth350 = getelementptr inbounds %struct.xpvcv* %153, i64 0, i32 14
  %154 = load i64* %xcv_depth350, align 8, !tbaa !4
  %inc351 = add nsw i64 %154, 1
  store i64 %inc351, i64* %xcv_depth350, align 8, !tbaa !4
  %cmp354 = icmp sgt i64 %154, 0
  br i1 %cmp354, label %if.then356, label %if.end360

if.then356:                                       ; preds = %if.end340
  %conv359 = trunc i64 %inc351 to i32
  call void @Perl_pad_push(%struct.av* %125, i32 %conv359, i32 1) #8
  br label %if.end360

if.end360:                                        ; preds = %if.then356, %if.end340
  %155 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %add361 = add nsw i32 %155, 2
  %156 = load i32* @PL_savestack_max, align 4, !tbaa !3
  %cmp362 = icmp sgt i32 %add361, %156
  br i1 %cmp362, label %if.then364, label %if.end365

if.then364:                                       ; preds = %if.end360
  call void @Perl_savestack_grow() #8
  %.pre670 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  br label %if.end365

if.end365:                                        ; preds = %if.then364, %if.end360
  %157 = phi i32 [ %.pre670, %if.then364 ], [ %155, %if.end360 ]
  %158 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %159 = bitcast %struct.av* %158 to i8*
  %inc366 = add nsw i32 %157, 1
  %idxprom367 = sext i32 %157 to i64
  %160 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %any_ptr = getelementptr inbounds %union.any* %160, i64 %idxprom367, i32 0
  store i8* %159, i8** %any_ptr, align 8, !tbaa !0
  %inc369 = add nsw i32 %157, 2
  store i32 %inc369, i32* @PL_savestack_ix, align 4, !tbaa !3
  %idxprom370 = sext i32 %inc366 to i64
  %161 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %arrayidx371 = getelementptr inbounds %union.any* %161, i64 %idxprom370
  %any_i32 = bitcast %union.any* %arrayidx371 to i32*
  store i32 33, i32* %any_i32, align 4, !tbaa !3
  %162 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_depth373 = getelementptr inbounds %struct.xpvcv* %162, i64 0, i32 14
  %163 = load i64* %xcv_depth373, align 8, !tbaa !4
  %sv_any374 = getelementptr inbounds %struct.av* %125, i64 0, i32 0
  %164 = load %struct.xpvav** %sv_any374, align 8, !tbaa !0
  %xav_array375 = getelementptr inbounds %struct.xpvav* %164, i64 0, i32 0
  %165 = load i8** %xav_array375, align 8, !tbaa !0
  %166 = bitcast i8* %165 to %struct.sv**
  %arrayidx376 = getelementptr inbounds %struct.sv** %166, i64 %163
  %167 = load %struct.sv** %arrayidx376, align 8, !tbaa !0
  %168 = bitcast %struct.sv* %167 to %struct.av*
  store %struct.av* %168, %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_any377 = bitcast %struct.sv* %167 to %struct.xpvav**
  %169 = load %struct.xpvav** %sv_any377, align 8, !tbaa !0
  %xav_array378 = getelementptr inbounds %struct.xpvav* %169, i64 0, i32 0
  %170 = load i8** %xav_array378, align 8, !tbaa !0
  %171 = bitcast i8* %170 to %struct.sv**
  store %struct.sv** %171, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %tobool379 = icmp eq i8 %and.lobit, 0
  br i1 %tobool379, label %if.end484, label %if.then380

if.then380:                                       ; preds = %if.end365
  %172 = load %struct.sv** %171, align 8, !tbaa !0
  %sv_any383 = bitcast %struct.sv* %172 to %struct.xpvav**
  %173 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %173, i64 0, i32 9
  %174 = load i8* %xav_flags, align 1, !tbaa !1
  %and385 = and i8 %174, 1
  %tobool386 = icmp eq i8 %and385, 0
  br i1 %tobool386, label %if.end397, label %if.then387

if.then387:                                       ; preds = %if.then380
  %175 = bitcast %struct.sv* %172 to %struct.av*
  call void @Perl_av_clear(%struct.av* %175) #8
  %176 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_flags389 = getelementptr inbounds %struct.xpvav* %176, i64 0, i32 9
  %177 = load i8* %xav_flags389, align 1, !tbaa !1
  %and391 = and i8 %177, -2
  store i8 %and391, i8* %xav_flags389, align 1, !tbaa !1
  %178 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_flags394 = getelementptr inbounds %struct.xpvav* %178, i64 0, i32 9
  %179 = load i8* %xav_flags394, align 1, !tbaa !1
  %or = or i8 %179, 2
  store i8 %or, i8* %xav_flags394, align 1, !tbaa !1
  br label %if.end397

if.end397:                                        ; preds = %if.then380, %if.then387
  %180 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any398 = getelementptr inbounds %struct.gv* %180, i64 0, i32 0
  %181 = load %struct.xpvgv** %sv_any398, align 8, !tbaa !0
  %xgv_gp399 = getelementptr inbounds %struct.xpvgv* %181, i64 0, i32 7
  %182 = load %struct.gp** %xgv_gp399, align 8, !tbaa !0
  %gp_av400 = getelementptr inbounds %struct.gp* %182, i64 0, i32 4
  %183 = load %struct.av** %gp_av400, align 8, !tbaa !0
  %savearray = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c646 = bitcast %struct.av* %183 to %struct.op*
  store %struct.op* %.c646, %struct.op** %savearray, align 8, !tbaa !0
  store %struct.sv* %172, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool405 = icmp eq %struct.sv* %172, null
  br i1 %tobool405, label %land.end410, label %land.rhs406

land.rhs406:                                      ; preds = %if.end397
  %sv_refcnt407 = getelementptr inbounds %struct.sv* %172, i64 0, i32 1
  %184 = load i32* %sv_refcnt407, align 4, !tbaa !3
  %inc408 = add i32 %184, 1
  store i32 %inc408, i32* %sv_refcnt407, align 4, !tbaa !3
  br label %land.end410

land.end410:                                      ; preds = %if.end397, %land.rhs406
  %185 = bitcast %struct.sv* %172 to %struct.av*
  %186 = load %struct.gv** @PL_defgv, align 8, !tbaa !0
  %sv_any412 = getelementptr inbounds %struct.gv* %186, i64 0, i32 0
  %187 = load %struct.xpvgv** %sv_any412, align 8, !tbaa !0
  %xgv_gp413 = getelementptr inbounds %struct.xpvgv* %187, i64 0, i32 7
  %188 = load %struct.gp** %xgv_gp413, align 8, !tbaa !0
  %gp_av414 = getelementptr inbounds %struct.gp* %188, i64 0, i32 4
  store %struct.av* %185, %struct.av** %gp_av414, align 8, !tbaa !0
  %189 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %oldcomppad = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 7
  %.c647 = bitcast %struct.av* %189 to %struct.sv*
  store %struct.sv* %.c647, %struct.sv** %oldcomppad, align 8, !tbaa !0
  %argarray = getelementptr inbounds %struct.context* %134, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  %.c648 = bitcast %struct.sv* %172 to %struct.op*
  store %struct.op* %.c648, %struct.op** %argarray, align 8, !tbaa !0
  %add.ptr269.sum = add i64 %idx.ext268, 1
  %incdec.ptr423 = getelementptr inbounds %struct.sv** %121, i64 %add.ptr269.sum
  %sext = shl i64 %sub.ptr.sub273, 29
  %conv424 = ashr exact i64 %sext, 32
  %190 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %190, i64 0, i32 2
  %191 = load i64* %xav_max, align 8, !tbaa !4
  %add426 = add nsw i64 %191, 1
  %cmp427 = icmp sgt i64 %conv424, %add426
  br i1 %cmp427, label %if.then429, label %if.end468

if.then429:                                       ; preds = %land.end410
  %xav_alloc = getelementptr inbounds %struct.xpvav* %190, i64 0, i32 7
  %192 = load %struct.sv*** %xav_alloc, align 8, !tbaa !0
  %xav_array432 = getelementptr inbounds %struct.xpvav* %190, i64 0, i32 0
  %193 = load i8** %xav_array432, align 8, !tbaa !0
  %194 = bitcast i8* %193 to %struct.sv**
  %cmp433 = icmp eq %struct.sv** %194, %192
  br i1 %cmp433, label %if.end449, label %if.then435

if.then435:                                       ; preds = %if.then429
  %sub.ptr.lhs.cast440 = ptrtoint i8* %193 to i64
  %sub.ptr.rhs.cast441 = ptrtoint %struct.sv** %192 to i64
  %sub.ptr.sub442 = sub i64 %sub.ptr.lhs.cast440, %sub.ptr.rhs.cast441
  %sub.ptr.div443 = ashr exact i64 %sub.ptr.sub442, 3
  %add446 = add nsw i64 %sub.ptr.div443, %191
  store i64 %add446, i64* %xav_max, align 8, !tbaa !4
  %195 = bitcast %struct.sv** %192 to i8*
  store i8* %195, i8** %xav_array432, align 8, !tbaa !0
  %.pre671 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_max452.phi.trans.insert = getelementptr inbounds %struct.xpvav* %.pre671, i64 0, i32 2
  %.pre672 = load i64* %xav_max452.phi.trans.insert, align 8, !tbaa !4
  br label %if.end449

if.end449:                                        ; preds = %if.then429, %if.then435
  %196 = phi i64 [ %191, %if.then429 ], [ %.pre672, %if.then435 ]
  %197 = phi %struct.xpvav* [ %190, %if.then429 ], [ %.pre671, %if.then435 ]
  %add453 = add nsw i64 %196, 1
  %cmp454 = icmp sgt i64 %conv424, %add453
  br i1 %cmp454, label %if.then456, label %if.end468

if.then456:                                       ; preds = %if.end449
  %xav_max452 = getelementptr inbounds %struct.xpvav* %197, i64 0, i32 2
  %sext650 = add i64 %sext, -4294967296
  %conv457 = ashr exact i64 %sext650, 32
  store i64 %conv457, i64* %xav_max452, align 8, !tbaa !4
  %198 = bitcast %struct.sv** %192 to i8*
  %mul461 = ashr exact i64 %sext, 29
  %call462 = call i8* @Perl_safesysrealloc(i8* %198, i64 %mul461) #8
  %199 = bitcast i8* %call462 to %struct.sv**
  %200 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_alloc464 = getelementptr inbounds %struct.xpvav* %200, i64 0, i32 7
  store %struct.sv** %199, %struct.sv*** %xav_alloc464, align 8, !tbaa !0
  %201 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xpv_pv466 = getelementptr inbounds %struct.xpvav* %201, i64 0, i32 0
  store i8* %call462, i8** %xpv_pv466, align 8, !tbaa !0
  %.pre673 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  br label %if.end468

if.end468:                                        ; preds = %if.end449, %if.then456, %land.end410
  %202 = phi %struct.xpvav* [ %197, %if.end449 ], [ %.pre673, %if.then456 ], [ %190, %land.end410 ]
  %xav_array470 = getelementptr inbounds %struct.xpvav* %202, i64 0, i32 0
  %203 = load i8** %xav_array470, align 8, !tbaa !0
  %204 = bitcast %struct.sv** %incdec.ptr423 to i8*
  %mul472 = ashr exact i64 %sext, 29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %203, i8* %204, i64 %mul472, i32 1, i1 false)
  %sext649 = add i64 %sext, -4294967296
  %conv474 = ashr exact i64 %sext649, 32
  %205 = load %struct.xpvav** %sv_any383, align 8, !tbaa !0
  %xav_fill476 = getelementptr inbounds %struct.xpvav* %205, i64 0, i32 1
  store i64 %conv474, i64* %xav_fill476, align 8, !tbaa !4
  %tobool477667 = icmp eq i32 %conv275, 0
  br i1 %tobool477667, label %if.end484, label %while.body

while.body:                                       ; preds = %if.end468, %if.end482
  %dec669.in = phi i32 [ %dec669, %if.end482 ], [ %conv275, %if.end468 ]
  %mark.0668 = phi %struct.sv** [ %incdec.ptr483, %if.end482 ], [ %incdec.ptr423, %if.end468 ]
  %dec669 = add nsw i32 %dec669.in, -1
  %206 = load %struct.sv** %mark.0668, align 8, !tbaa !0
  %tobool478 = icmp eq %struct.sv* %206, null
  br i1 %tobool478, label %if.end482, label %if.then479

if.then479:                                       ; preds = %while.body
  %sv_flags480 = getelementptr inbounds %struct.sv* %206, i64 0, i32 2
  %207 = load i32* %sv_flags480, align 4, !tbaa !3
  %and481 = and i32 %207, -2049
  store i32 %and481, i32* %sv_flags480, align 4, !tbaa !3
  br label %if.end482

if.end482:                                        ; preds = %while.body, %if.then479
  %incdec.ptr483 = getelementptr inbounds %struct.sv** %mark.0668, i64 1
  %tobool477 = icmp eq i32 %dec669, 0
  br i1 %tobool477, label %if.end484, label %while.body

if.end484:                                        ; preds = %if.end468, %if.end482, %if.end365
  %208 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_depth486 = getelementptr inbounds %struct.xpvcv* %208, i64 0, i32 14
  %209 = load i64* %xcv_depth486, align 8, !tbaa !4
  %cmp487 = icmp eq i64 %209, 100
  br i1 %cmp487, label %land.lhs.true489, label %if.end528

land.lhs.true489:                                 ; preds = %if.end484
  %210 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %210, i64 0, i32 14
  %211 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp490 = icmp eq %struct.sv* %211, null
  br i1 %cmp490, label %lor.lhs.false508, label %land.lhs.true492

land.lhs.true492:                                 ; preds = %land.lhs.true489
  %212 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings493 = getelementptr inbounds %struct.cop* %212, i64 0, i32 14
  %213 = load %struct.sv** %cop_warnings493, align 8, !tbaa !0
  %cmp494 = icmp eq %struct.sv* %213, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp494, label %lor.lhs.false508, label %land.lhs.true496

land.lhs.true496:                                 ; preds = %land.lhs.true492
  %214 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings497 = getelementptr inbounds %struct.cop* %214, i64 0, i32 14
  %215 = load %struct.sv** %cop_warnings497, align 8, !tbaa !0
  %cmp498 = icmp eq %struct.sv* %215, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp498, label %land.lhs.true516, label %lor.lhs.false500

lor.lhs.false500:                                 ; preds = %land.lhs.true496
  %216 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings501 = getelementptr inbounds %struct.cop* %216, i64 0, i32 14
  %217 = load %struct.sv** %cop_warnings501, align 8, !tbaa !0
  %sv_any502 = getelementptr inbounds %struct.sv* %217, i64 0, i32 0
  %218 = load i8** %sv_any502, align 8, !tbaa !0
  %xpv_pv503 = bitcast i8* %218 to i8**
  %219 = load i8** %xpv_pv503, align 8, !tbaa !0
  %arrayidx504 = getelementptr inbounds i8* %219, i64 4
  %220 = load i8* %arrayidx504, align 1, !tbaa !1
  %and506 = and i8 %220, 16
  %tobool507 = icmp eq i8 %and506, 0
  br i1 %tobool507, label %lor.lhs.false508, label %land.lhs.true516

lor.lhs.false508:                                 ; preds = %lor.lhs.false500, %land.lhs.true492, %land.lhs.true489
  %221 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings509 = getelementptr inbounds %struct.cop* %221, i64 0, i32 14
  %222 = load %struct.sv** %cop_warnings509, align 8, !tbaa !0
  %cmp510 = icmp eq %struct.sv* %222, null
  br i1 %cmp510, label %land.lhs.true512, label %if.end528

land.lhs.true512:                                 ; preds = %lor.lhs.false508
  %223 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and514 = and i8 %223, 1
  %tobool515 = icmp eq i8 %and514, 0
  br i1 %tobool515, label %if.end528, label %land.lhs.true516

land.lhs.true516:                                 ; preds = %lor.lhs.false500, %land.lhs.true512, %land.lhs.true496
  %224 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool517 = icmp eq i32 %224, 0
  %and519 = and i32 %224, 1
  %tobool520 = icmp eq i32 %and519, 0
  %or.cond = or i1 %tobool517, %tobool520
  br i1 %or.cond, label %if.then527, label %land.lhs.true521

land.lhs.true521:                                 ; preds = %land.lhs.true516
  %225 = load %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %sv_any522 = getelementptr inbounds %struct.gv* %225, i64 0, i32 0
  %226 = load %struct.xpvgv** %sv_any522, align 8, !tbaa !0
  %xgv_gp523 = getelementptr inbounds %struct.xpvgv* %226, i64 0, i32 7
  %227 = load %struct.gp** %xgv_gp523, align 8, !tbaa !0
  %gp_cv524 = getelementptr inbounds %struct.gp* %227, i64 0, i32 7
  %228 = load %struct.cv** %gp_cv524, align 8, !tbaa !0
  %cmp525 = icmp eq %struct.cv* %cv.4, %228
  br i1 %cmp525, label %if.end528, label %if.then527

if.then527:                                       ; preds = %land.lhs.true516, %land.lhs.true521
  call void @Perl_sub_crush_depth(%struct.cv* %cv.4) #9
  br label %if.end528

if.end528:                                        ; preds = %land.lhs.true512, %if.then527, %land.lhs.true521, %lor.lhs.false508, %if.end484
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %229 = load %struct.xpvcv** %sv_any207, align 8, !tbaa !0
  %xcv_start530 = getelementptr inbounds %struct.xpvcv* %229, i64 0, i32 8
  %230 = load %struct.op** %xcv_start530, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end528, %if.end264, %if.then203, %if.then146, %if.else140, %if.then118, %sw.bb, %if.then49, %if.then43, %if.end14, %if.then
  %retval.0 = phi %struct.op* [ %120, %if.end264 ], [ %230, %if.end528 ], [ %call204, %if.then203 ], [ %call119, %if.then118 ], [ %call147, %if.then146 ], [ %call142, %if.else140 ], [ %call88, %sw.bb ], [ %8, %if.end14 ], [ %call50, %if.then49 ], [ %call44, %if.then43 ], [ %call, %if.then ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare %struct.cv* @Perl_get_cv(i8*, i32) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_autoload4(%struct.hv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

; Function Attrs: optsize
declare void @Perl_push_return(%struct.op*) #1

; Function Attrs: optsize
declare void @Perl_save_freesv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_pad_push(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_savestack_grow() #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_sub_crush_depth(%struct.cv* nocapture %cv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %0 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %0, i64 0, i32 17
  %1 = load i16* %xcv_flags, align 2, !tbaa !6
  %and = and i16 %1, 4
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @Perl_warner(i32 18, i8* getelementptr inbounds ([39 x i8]* @.str44, i64 0, i64 0)) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call %struct.sv* @Perl_sv_newmortal() #8
  %2 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %2, i64 0, i32 12
  %3 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  tail call void @Perl_gv_efullname4(%struct.sv* %call, %struct.gv* %3, i8* null, i8 signext 1) #8
  tail call void (i32, i8*, ...)* @Perl_warner(i32 18, i8* getelementptr inbounds ([34 x i8]* @.str45, i64 0, i64 0), %struct.sv* %call) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_aelem() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %3, i64 24
  %4 = bitcast i8* %xiv_iv to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %1) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  %6 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %7 = bitcast %struct.sv* %6 to %struct.av*
  %8 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %8, i64 0, i32 6
  %9 = load i8* %op_flags, align 1, !tbaa !1
  %and2 = and i8 %9, 32
  %tobool3 = icmp eq i8 %and2, 0
  br i1 %tobool3, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end
  %op_private = getelementptr inbounds %struct.op* %8, i64 0, i32 7
  %10 = load i8* %op_private, align 1, !tbaa !1
  %and5 = and i8 %10, 8
  %tobool6 = icmp eq i8 %and5, 0
  br i1 %tobool6, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %call7 = tail call i32 @Perl_is_lvalue_sub() #8
  %tobool8 = icmp ne i32 %call7, 0
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %lor.end

lor.end:                                          ; preds = %cond.end, %lor.rhs, %land.rhs
  %11 = phi %struct.op* [ %8, %lor.rhs ], [ %.pre, %land.rhs ], [ %8, %cond.end ]
  %12 = phi i1 [ false, %lor.rhs ], [ %tobool8, %land.rhs ], [ true, %cond.end ]
  %op_private9 = getelementptr inbounds %struct.op* %11, i64 0, i32 7
  %13 = load i8* %op_private9, align 1, !tbaa !1
  %and11 = and i8 %13, 16
  %tobool12 = icmp eq i8 %and11, 0
  br i1 %tobool12, label %land.end25, label %land.rhs13

land.rhs13:                                       ; preds = %lor.end
  %sv_flags14 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %14 = load i32* %sv_flags14, align 4, !tbaa !3
  %and15 = and i32 %14, 32768
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %cond.false20, label %cond.true17

cond.true17:                                      ; preds = %land.rhs13
  %call18 = tail call i32 @Perl_mg_size(%struct.sv* %6) #8
  %conv19 = sext i32 %call18 to i64
  br label %cond.end22

cond.false20:                                     ; preds = %land.rhs13
  %sv_any21 = bitcast %struct.sv* %6 to %struct.xpvav**
  %15 = load %struct.xpvav** %sv_any21, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 1
  %16 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true17
  %cond23 = phi i64 [ %conv19, %cond.true17 ], [ %16, %cond.false20 ]
  %cmp = icmp sgt i64 %cond, %cond23
  br label %land.end25

land.end25:                                       ; preds = %lor.end, %cond.end22
  %17 = phi i1 [ %cmp, %cond.end22 ], [ false, %lor.end ]
  %18 = load i32* %sv_flags, align 4, !tbaa !3
  %19 = and i32 %18, 268967936
  %20 = icmp eq i32 %19, 524288
  br i1 %20, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %land.end25
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %21, i64 0, i32 14
  %22 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp33 = icmp eq %struct.sv* %22, null
  br i1 %cmp33, label %lor.lhs.false48, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings36 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings36, align 8, !tbaa !0
  %cmp37 = icmp eq %struct.sv* %24, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp37, label %lor.lhs.false48, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings40 = getelementptr inbounds %struct.cop* %25, i64 0, i32 14
  %26 = load %struct.sv** %cop_warnings40, align 8, !tbaa !0
  %cmp41 = icmp eq %struct.sv* %26, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp41, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true39
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings43 = getelementptr inbounds %struct.cop* %27, i64 0, i32 14
  %28 = load %struct.sv** %cop_warnings43, align 8, !tbaa !0
  %sv_any44 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %29 = load i8** %sv_any44, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %29 to i8**
  %30 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %30, i64 3
  %31 = load i8* %arrayidx, align 1, !tbaa !1
  %and46 = and i8 %31, 1
  %tobool47 = icmp eq i8 %and46, 0
  br i1 %tobool47, label %lor.lhs.false48, label %if.then

lor.lhs.false48:                                  ; preds = %lor.lhs.false, %land.lhs.true35, %land.lhs.true32
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings49 = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings49, align 8, !tbaa !0
  %cmp50 = icmp eq %struct.sv* %33, null
  br i1 %cmp50, label %land.lhs.true52, label %if.end

land.lhs.true52:                                  ; preds = %lor.lhs.false48
  %34 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and54 = and i8 %34, 1
  %tobool55 = icmp eq i8 %and54, 0
  br i1 %tobool55, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true52, %land.lhs.true39
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([37 x i8]* @.str46, i64 0, i64 0), %struct.sv* %1) #8
  br label %if.end

if.end:                                           ; preds = %land.end25, %land.lhs.true52, %if.then, %lor.lhs.false48
  %cmp56 = icmp sgt i64 %cond, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_arybase = getelementptr inbounds %struct.cop* %35, i64 0, i32 12
  %36 = load i32* %cop_arybase, align 4, !tbaa !3
  %conv59 = sext i32 %36 to i64
  %sub = sub nsw i64 %cond, %conv59
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.then58
  %elem.0 = phi i64 [ %sub, %if.then58 ], [ %cond, %if.end ]
  %37 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %38 = load i32* %37, align 4, !tbaa !3
  %and62 = and i32 %38, 255
  %cmp63 = icmp eq i32 %and62, 10
  br i1 %cmp63, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.end60
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %39 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %39, i64 0, i32 0
  %40 = load %struct.op** %op_next, align 8, !tbaa !0
  br label %return

if.end67:                                         ; preds = %if.end60
  %conv68 = trunc i64 %elem.0 to i32
  %lnot = xor i1 %17, true
  %lnot. = and i1 %12, %lnot
  %land.ext73 = zext i1 %lnot. to i32
  %call74 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %7, i32 %conv68, i32 %land.ext73) #8
  br i1 %12, label %if.then76, label %if.end116

if.then76:                                        ; preds = %if.end67
  %tobool77 = icmp eq %struct.sv** %call74, null
  br i1 %tobool77, label %if.then81, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.then76
  %41 = load %struct.sv** %call74, align 8, !tbaa !0
  %cmp79 = icmp eq %struct.sv* %41, @PL_sv_undef
  br i1 %cmp79, label %if.then81, label %if.end99

if.then81:                                        ; preds = %if.then76, %lor.lhs.false78
  br i1 %17, label %if.end85, label %if.then83

if.then83:                                        ; preds = %if.then81
  %call84 = tail call %struct.op* (i8*, ...)* @Perl_die(i8* getelementptr inbounds ([0 x i8]* @PL_no_aelem, i64 0, i64 0), i64 %elem.0) #8
  br label %return

if.end85:                                         ; preds = %if.then81
  %call86 = tail call %struct.sv* @Perl_sv_newmortal() #8
  %call87 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call86, i32 9) #8
  %sv_any88 = getelementptr inbounds %struct.sv* %call86, i64 0, i32 0
  %42 = load i8** %sv_any88, align 8, !tbaa !0
  %43 = getelementptr inbounds i8* %42, i64 80
  store i8 121, i8* %43, align 1, !tbaa !1
  tail call void @Perl_sv_magic(%struct.sv* %call86, %struct.sv* null, i32 121, i8* null, i32 0) #8
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool89 = icmp eq %struct.sv* %6, null
  br i1 %tobool89, label %land.end92, label %land.rhs90

land.rhs90:                                       ; preds = %if.end85
  %sv_refcnt = getelementptr inbounds %struct.sv* %6, i64 0, i32 1
  %44 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %44, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end92

land.end92:                                       ; preds = %if.end85, %land.rhs90
  %45 = load i8** %sv_any88, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %45, i64 72
  %46 = bitcast i8* %xlv_targ to %struct.sv**
  store %struct.sv* %6, %struct.sv** %46, align 8, !tbaa !0
  %47 = load i8** %sv_any88, align 8, !tbaa !0
  %xlv_targoff = getelementptr inbounds i8* %47, i64 56
  %48 = bitcast i8* %xlv_targoff to i64*
  store i64 %elem.0, i64* %48, align 8, !tbaa !4
  %xlv_targlen = getelementptr inbounds i8* %47, i64 64
  %49 = bitcast i8* %xlv_targlen to i64*
  store i64 1, i64* %49, align 8, !tbaa !4
  store %struct.sv* %call86, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %50 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next98 = getelementptr inbounds %struct.op* %50, i64 0, i32 0
  %51 = load %struct.op** %op_next98, align 8, !tbaa !0
  br label %return

if.end99:                                         ; preds = %lor.lhs.false78
  %52 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private100 = getelementptr inbounds %struct.op* %52, i64 0, i32 7
  %53 = load i8* %op_private100, align 1, !tbaa !1
  %conv101 = zext i8 %53 to i32
  %and102 = and i32 %conv101, 128
  %tobool103 = icmp eq i32 %and102, 0
  br i1 %tobool103, label %if.else, label %if.then104

if.then104:                                       ; preds = %if.end99
  tail call void @Perl_save_aelem(%struct.av* %7, i32 %conv68, %struct.sv** %call74) #8
  br label %if.end116

if.else:                                          ; preds = %if.end99
  %and108 = and i32 %conv101, 96
  %tobool109 = icmp eq i32 %and108, 0
  br i1 %tobool109, label %if.end116, label %if.then110

if.then110:                                       ; preds = %if.else
  tail call void @Perl_vivify_ref(%struct.sv* %41, i32 %and108) #9
  br label %if.end116

if.end116:                                        ; preds = %if.else, %if.then104, %if.then110, %if.end67
  %tobool117 = icmp eq %struct.sv** %call74, null
  br i1 %tobool117, label %cond.end120, label %cond.true118

cond.true118:                                     ; preds = %if.end116
  %54 = load %struct.sv** %call74, align 8, !tbaa !0
  br label %cond.end120

cond.end120:                                      ; preds = %if.end116, %cond.true118
  %cond121 = phi %struct.sv* [ %54, %cond.true118 ], [ @PL_sv_undef, %if.end116 ]
  br i1 %12, label %if.end129, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %cond.end120
  %sv_flags124 = getelementptr inbounds %struct.sv* %cond121, i64 0, i32 2
  %55 = load i32* %sv_flags124, align 4, !tbaa !3
  %and125 = and i32 %55, 8192
  %tobool126 = icmp eq i32 %and125, 0
  br i1 %tobool126, label %if.end129, label %if.then127

if.then127:                                       ; preds = %land.lhs.true123
  %call128 = tail call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %cond121) #8
  br label %if.end129

if.end129:                                        ; preds = %land.lhs.true123, %if.then127, %cond.end120
  %sv.0 = phi %struct.sv* [ %cond121, %cond.end120 ], [ %call128, %if.then127 ], [ %cond121, %land.lhs.true123 ]
  store %struct.sv* %sv.0, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %56 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next131 = getelementptr inbounds %struct.op* %56, i64 0, i32 0
  %57 = load %struct.op** %op_next131, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end129, %land.end92, %if.then83, %if.then65
  %retval.0 = phi %struct.op* [ %40, %if.then65 ], [ %51, %land.end92 ], [ %call84, %if.then83 ], [ %57, %if.end129 ]
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare void @Perl_save_aelem(%struct.av*, i32, %struct.sv**) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_method() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  %4 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags1 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags1, align 4, !tbaa !3
  %and2 = and i32 %5, 255
  %cmp = icmp eq i32 %and2, 12
  br i1 %cmp, label %return, label %if.end4

if.end4:                                          ; preds = %entry, %if.then
  %call = tail call fastcc %struct.sv* @S_method_common(%struct.sv* %1, i32* null) #9
  br label %return

return:                                           ; preds = %if.then, %if.end4
  %storemerge = phi %struct.sv* [ %call, %if.end4 ], [ %4, %if.then ]
  store %struct.sv* %storemerge, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %.pn = load %struct.op** @PL_op, align 8
  %retval.0.in = getelementptr inbounds %struct.op* %.pn, i64 0, i32 0
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_method_common(%struct.sv* %meth, i32* %hashp) #0 {
entry:
  %namelen = alloca i64, align 8
  %packlen = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %meth, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %meth, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %namelen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %meth, i64* %namelen, i32 2) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %6 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %7 = load i32* %6, align 4, !tbaa !3
  %idx.ext = sext i32 %7 to i64
  %add.ptr.sum = add i64 %idx.ext, 1
  %add.ptr2 = getelementptr inbounds %struct.sv** %5, i64 %add.ptr.sum
  %8 = load %struct.sv** %add.ptr2, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([45 x i8]* @.str47, i64 0, i64 0), i8* %cond) #8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %sv_flags3 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags3, align 4, !tbaa !3
  %and4 = and i32 %9, 8192
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @Perl_mg_get(%struct.sv* %8) #8
  %.pre = load i32* %sv_flags3, align 4, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then6
  %10 = phi i32 [ %9, %if.end ], [ %.pre, %if.then6 ]
  %and10 = and i32 %10, 524288
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.else, label %if.end135

if.else:                                          ; preds = %if.end8
  %and15 = and i32 %10, 118423552
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.then114, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %and18 = and i32 %10, 262144
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %cond.false25, label %cond.true20

cond.true20:                                      ; preds = %land.lhs.true
  %sv_any21 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %11 = load i8** %sv_any21, align 8, !tbaa !0
  %xpv_cur22 = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur22 to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %packlen, align 8, !tbaa !4
  %xpv_pv24 = bitcast i8* %11 to i8**
  %14 = load i8** %xpv_pv24, align 8, !tbaa !0
  br label %cond.end27

cond.false25:                                     ; preds = %land.lhs.true
  %call26 = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %packlen, i32 2) #8
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true20
  %cond28 = phi i8* [ %14, %cond.true20 ], [ %call26, %cond.false25 ]
  %tobool29 = icmp eq i8* %cond28, null
  br i1 %tobool29, label %if.then114, label %if.then30

if.then30:                                        ; preds = %cond.end27
  %15 = load %struct.hv** @PL_stashcache, align 8, !tbaa !0
  %call31 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %15, %struct.sv* %8, i32 0, i32 0) #8
  %tobool32 = icmp eq %struct.he* %call31, null
  br i1 %tobool32, label %if.end46, label %if.then33

if.then33:                                        ; preds = %if.then30
  %hent_val = getelementptr inbounds %struct.he* %call31, i64 0, i32 2
  %16 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %sv_flags34 = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %17 = load i32* %sv_flags34, align 4, !tbaa !3
  %and35 = and i32 %17, 65536
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %cond.false40, label %cond.true37

cond.true37:                                      ; preds = %if.then33
  %sv_any39 = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %18 = load i8** %sv_any39, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %18, i64 24
  %19 = bitcast i8* %xiv_iv to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  br label %cond.end43

cond.false40:                                     ; preds = %if.then33
  %call42 = call i64 @Perl_sv_2iv(%struct.sv* %16) #8
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false40, %cond.true37
  %cond44 = phi i64 [ %20, %cond.true37 ], [ %call42, %cond.false40 ]
  %21 = inttoptr i64 %cond44 to %struct.hv*
  br label %fetch

if.end46:                                         ; preds = %if.then30
  %22 = load i32* %sv_flags3, align 4, !tbaa !3
  %and48 = and i32 %22, 118423552
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %lor.lhs.false72, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end46
  %call52 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond28, i32 0, i32 15) #8
  %tobool53 = icmp eq %struct.gv* %call52, null
  br i1 %tobool53, label %lor.lhs.false72, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %lor.lhs.false51
  %23 = getelementptr inbounds %struct.gv* %call52, i64 0, i32 2
  %24 = load i32* %23, align 4, !tbaa !3
  %and58 = and i32 %24, 255
  %cmp59 = icmp eq i32 %and58, 13
  br i1 %cmp59, label %land.lhs.true60, label %lor.lhs.false72

land.lhs.true60:                                  ; preds = %land.lhs.true56
  %sv_any61 = getelementptr inbounds %struct.gv* %call52, i64 0, i32 0
  %25 = load %struct.xpvgv** %sv_any61, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 7
  %26 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %tobool62 = icmp eq %struct.gp* %26, null
  br i1 %tobool62, label %lor.lhs.false72, label %cond.end67

cond.end67:                                       ; preds = %land.lhs.true60
  %gp_io = getelementptr inbounds %struct.gp* %26, i64 0, i32 2
  %27 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool69 = icmp eq %struct.io* %27, null
  br i1 %tobool69, label %lor.lhs.false72, label %if.end135.thread

lor.lhs.false72:                                  ; preds = %lor.lhs.false51, %if.end46, %cond.end67, %land.lhs.true56, %land.lhs.true60
  %28 = load i8* %cond28, align 1, !tbaa !1
  %.off = add i8 %28, 64
  %29 = icmp ult i8 %.off, 62
  br i1 %29, label %land.lhs.true79, label %cond.false94

land.lhs.true79:                                  ; preds = %lor.lhs.false72
  %30 = load i32* %sv_flags3, align 4, !tbaa !3
  %and81 = and i32 %30, 536870912
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %cond.false94, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %31, i64 0, i32 7
  %32 = load i8* %op_private, align 1, !tbaa !1
  %and85 = and i8 %32, 8
  %tobool86 = icmp eq i8 %and85, 0
  br i1 %tobool86, label %cond.true87, label %land.lhs.true83.cond.false94thread-pre-split_crit_edge

land.lhs.true83.cond.false94thread-pre-split_crit_edge: ; preds = %land.lhs.true83
  %.pr.pre = load i8* %cond28, align 1, !tbaa !1
  br label %cond.false94

cond.true87:                                      ; preds = %land.lhs.true83
  %call88 = call signext i8 @Perl_is_utf8_idcont(i8* %cond28) #8
  %tobool90 = icmp eq i8 %call88, 0
  br i1 %tobool90, label %if.then114, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %cond.true87
  %call92 = call signext i8 @Perl_is_utf8_digit(i8* %cond28) #8
  %tobool93 = icmp eq i8 %call92, 0
  br i1 %tobool93, label %if.end119, label %if.then114

cond.false94:                                     ; preds = %land.lhs.true79, %land.lhs.true83.cond.false94thread-pre-split_crit_edge, %lor.lhs.false72
  %33 = phi i8 [ %28, %lor.lhs.false72 ], [ %.pr.pre, %land.lhs.true83.cond.false94thread-pre-split_crit_edge ], [ %28, %land.lhs.true79 ]
  %.off399 = add i8 %33, -65
  %34 = icmp ult i8 %.off399, 26
  br i1 %34, label %if.end119, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %cond.false94
  %.off400 = add i8 %33, -97
  %35 = icmp ult i8 %.off400, 26
  %cmp112 = icmp eq i8 %33, 95
  %or.cond398 = or i1 %35, %cmp112
  br i1 %or.cond398, label %if.end119, label %if.then114

if.then114:                                       ; preds = %lor.lhs.false102, %land.lhs.true91, %cond.true87, %cond.end27, %if.else
  %packname.0383 = phi i8* [ null, %if.else ], [ null, %cond.end27 ], [ %cond28, %cond.true87 ], [ %cond28, %land.lhs.true91 ], [ %cond28, %lor.lhs.false102 ]
  %36 = load i32* %sv_flags3, align 4, !tbaa !3
  %and116 = and i32 %36, 118423552
  %tobool117 = icmp ne i32 %and116, 0
  %cond118 = select i1 %tobool117, i8* getelementptr inbounds ([38 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str50, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str48, i64 0, i64 0), i8* %cond, i8* %cond118) #8
  br label %if.end119

if.end119:                                        ; preds = %lor.lhs.false102, %cond.false94, %land.lhs.true91, %if.then114
  %packname.0384 = phi i8* [ %cond28, %lor.lhs.false102 ], [ %cond28, %cond.false94 ], [ %cond28, %land.lhs.true91 ], [ %packname.0383, %if.then114 ]
  %37 = load i64* %packlen, align 8, !tbaa !4
  %conv120 = trunc i64 %37 to i32
  %call121 = call %struct.hv* @Perl_gv_stashpvn(i8* %packname.0384, i32 %conv120, i32 0) #8
  %tobool122 = icmp eq %struct.hv* %call121, null
  br i1 %tobool122, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.end119
  %phitmp = bitcast %struct.sv* %8 to %struct.hv*
  br label %fetch

if.else124:                                       ; preds = %if.end119
  %38 = ptrtoint %struct.hv* %call121 to i64
  %call125 = call %struct.sv* @Perl_newSViv(i64 %38) #8
  %39 = load %struct.hv** @PL_stashcache, align 8, !tbaa !0
  %40 = load i64* %packlen, align 8, !tbaa !4
  %conv126 = trunc i64 %40 to i32
  %call127 = call %struct.sv** @Perl_hv_store(%struct.hv* %39, i8* %packname.0384, i32 %conv126, %struct.sv* %call125, i32 0) #8
  br label %fetch

if.end135.thread:                                 ; preds = %cond.end67
  %phitmp372 = bitcast %struct.io* %27 to %struct.sv*
  %41 = bitcast %struct.gv* %call52 to %struct.sv*
  %call130 = call %struct.sv* @Perl_newRV(%struct.sv* %41) #8
  %call131 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call130) #8
  %42 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %43 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %44 = load i32* %43, align 4, !tbaa !3
  %idx.ext132 = sext i32 %44 to i64
  %add.ptr133.sum = add i64 %idx.ext132, 1
  %add.ptr134 = getelementptr inbounds %struct.sv** %42, i64 %add.ptr133.sum
  store %struct.sv* %call131, %struct.sv** %add.ptr134, align 8, !tbaa !0
  br label %lor.lhs.false137

if.end135:                                        ; preds = %if.end8
  %sv_any13 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %45 = load i8** %sv_any13, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %45 to %struct.sv**
  %46 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool136 = icmp eq %struct.sv* %46, null
  br i1 %tobool136, label %if.then169, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.end135.thread, %if.end135
  %ob.0392 = phi %struct.sv* [ %phitmp372, %if.end135.thread ], [ %46, %if.end135 ]
  %packname.1390 = phi i8* [ %cond28, %if.end135.thread ], [ null, %if.end135 ]
  %sv_flags138 = getelementptr inbounds %struct.sv* %ob.0392, i64 0, i32 2
  %47 = load i32* %sv_flags138, align 4, !tbaa !3
  %and139 = and i32 %47, 4096
  %tobool140 = icmp eq i32 %and139, 0
  br i1 %tobool140, label %lor.lhs.false141, label %if.end170

lor.lhs.false141:                                 ; preds = %lor.lhs.false137
  %and143 = and i32 %47, 255
  %cmp144 = icmp eq i32 %and143, 13
  br i1 %cmp144, label %land.lhs.true153, label %if.then169

land.lhs.true153:                                 ; preds = %lor.lhs.false141
  %sv_any154 = bitcast %struct.sv* %ob.0392 to %struct.xpvgv**
  %48 = load %struct.xpvgv** %sv_any154, align 8, !tbaa !0
  %xgv_gp155 = getelementptr inbounds %struct.xpvgv* %48, i64 0, i32 7
  %49 = load %struct.gp** %xgv_gp155, align 8, !tbaa !0
  %tobool156 = icmp eq %struct.gp* %49, null
  br i1 %tobool156, label %if.then169, label %cond.end162

cond.end162:                                      ; preds = %land.lhs.true153
  %gp_io160 = getelementptr inbounds %struct.gp* %49, i64 0, i32 2
  %50 = load %struct.io** %gp_io160, align 8, !tbaa !0
  %phitmp373 = bitcast %struct.io* %50 to %struct.sv*
  %tobool164 = icmp eq %struct.io* %50, null
  br i1 %tobool164, label %if.then169, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %cond.end162
  %51 = getelementptr inbounds %struct.io* %50, i64 0, i32 2
  %52 = load i32* %51, align 4, !tbaa !3
  %and167 = and i32 %52, 4096
  %tobool168 = icmp eq i32 %and167, 0
  br i1 %tobool168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %land.lhs.true153, %land.lhs.true165, %cond.end162, %if.end135, %lor.lhs.false141
  %packname.1391 = phi i8* [ %packname.1390, %land.lhs.true165 ], [ %packname.1390, %cond.end162 ], [ %packname.1390, %lor.lhs.false141 ], [ null, %if.end135 ], [ %packname.1390, %land.lhs.true153 ]
  %ob.1 = phi %struct.sv* [ %phitmp373, %land.lhs.true165 ], [ null, %cond.end162 ], [ %ob.0392, %lor.lhs.false141 ], [ null, %if.end135 ], [ null, %land.lhs.true153 ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str51, i64 0, i64 0), i8* %cond) #8
  br label %if.end170

if.end170:                                        ; preds = %land.lhs.true165, %lor.lhs.false137, %if.then169
  %packname.1389 = phi i8* [ %packname.1390, %lor.lhs.false137 ], [ %packname.1390, %land.lhs.true165 ], [ %packname.1391, %if.then169 ]
  %ob.2 = phi %struct.sv* [ %ob.0392, %lor.lhs.false137 ], [ %phitmp373, %land.lhs.true165 ], [ %ob.1, %if.then169 ]
  %sv_any171 = getelementptr inbounds %struct.sv* %ob.2, i64 0, i32 0
  %53 = load i8** %sv_any171, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %53, i64 48
  %54 = bitcast i8* %xmg_stash to %struct.hv**
  %55 = load %struct.hv** %54, align 8, !tbaa !0
  br label %fetch

fetch:                                            ; preds = %if.then123, %if.else124, %if.end170, %cond.end43
  %packname.2 = phi i8* [ %packname.1389, %if.end170 ], [ %cond28, %cond.end43 ], [ %packname.0384, %if.else124 ], [ %packname.0384, %if.then123 ]
  %packsv.0 = phi %struct.hv* [ null, %if.end170 ], [ null, %cond.end43 ], [ null, %if.else124 ], [ %phitmp, %if.then123 ]
  %stash.0 = phi %struct.hv* [ %55, %if.end170 ], [ %21, %cond.end43 ], [ %call121, %if.else124 ], [ null, %if.then123 ]
  %tobool172 = icmp eq i32* %hashp, null
  br i1 %tobool172, label %if.end203, label %if.then173

if.then173:                                       ; preds = %fetch
  %56 = load i32* %hashp, align 4, !tbaa !3
  %call175 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %stash.0, %struct.sv* %meth, i32 0, i32 %56) #8
  %tobool176 = icmp eq %struct.he* %call175, null
  br i1 %tobool176, label %if.end203, label %if.then177

if.then177:                                       ; preds = %if.then173
  %hent_val178 = getelementptr inbounds %struct.he* %call175, i64 0, i32 2
  %57 = load %struct.sv** %hent_val178, align 8, !tbaa !0
  %58 = getelementptr inbounds %struct.sv* %57, i64 0, i32 2
  %59 = load i32* %58, align 4, !tbaa !3
  %and180 = and i32 %59, 255
  %cmp181 = icmp eq i32 %and180, 13
  br i1 %cmp181, label %land.lhs.true183, label %if.end203

land.lhs.true183:                                 ; preds = %if.then177
  %sv_any184 = bitcast %struct.sv* %57 to %struct.xpvgv**
  %60 = load %struct.xpvgv** %sv_any184, align 8, !tbaa !0
  %xgv_gp185 = getelementptr inbounds %struct.xpvgv* %60, i64 0, i32 7
  %61 = load %struct.gp** %xgv_gp185, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %61, i64 0, i32 7
  %62 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool186 = icmp eq %struct.cv* %62, null
  br i1 %tobool186, label %if.end203, label %land.lhs.true187

land.lhs.true187:                                 ; preds = %land.lhs.true183
  %gp_cvgen = getelementptr inbounds %struct.gp* %61, i64 0, i32 8
  %63 = load i32* %gp_cvgen, align 4, !tbaa !3
  %tobool190 = icmp eq i32 %63, 0
  %64 = load i32* @PL_sub_generation, align 4, !tbaa !3
  %cmp195 = icmp eq i32 %63, %64
  %or.cond377 = or i1 %tobool190, %cmp195
  br i1 %or.cond377, label %if.then197, label %if.end203

if.then197:                                       ; preds = %land.lhs.true187
  %65 = bitcast %struct.cv* %62 to %struct.sv*
  br label %return

if.end203:                                        ; preds = %land.lhs.true187, %land.lhs.true183, %if.then173, %fetch, %if.then177
  %tobool204 = icmp ne %struct.hv* %stash.0, null
  %stash.0.packsv.0 = select i1 %tobool204, %struct.hv* %stash.0, %struct.hv* %packsv.0
  %call209 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %stash.0.packsv.0, i8* %cond) #8
  %tobool210 = icmp eq %struct.gv* %call209, null
  br i1 %tobool210, label %for.cond, label %if.end277

for.cond:                                         ; preds = %if.then216, %land.lhs.true222, %for.cond.for.inc_crit_edge, %if.end203
  %leaf.0 = phi i8* [ %cond, %if.end203 ], [ %leaf.0, %for.cond.for.inc_crit_edge ], [ %add.ptr228.leaf.0, %land.lhs.true222 ], [ %add.ptr217, %if.then216 ]
  %sep.0 = phi i8* [ null, %if.end203 ], [ %sep.0, %for.cond.for.inc_crit_edge ], [ %p.0.sep.0, %land.lhs.true222 ], [ %p.0, %if.then216 ]
  %p.0 = phi i8* [ %cond, %if.end203 ], [ %incdec.ptr.pre, %for.cond.for.inc_crit_edge ], [ %add.ptr223, %land.lhs.true222 ], [ %add.ptr217, %if.then216 ]
  %66 = load i8* %p.0, align 1, !tbaa !1
  switch i8 %66, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 39, label %if.then216
    i8 58, label %land.lhs.true222
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  %incdec.ptr.pre = getelementptr inbounds i8* %p.0, i64 1
  br label %for.cond

if.then216:                                       ; preds = %for.cond
  %add.ptr217 = getelementptr inbounds i8* %p.0, i64 1
  br label %for.cond

land.lhs.true222:                                 ; preds = %for.cond
  %add.ptr223 = getelementptr inbounds i8* %p.0, i64 1
  %67 = load i8* %add.ptr223, align 1, !tbaa !1
  %cmp225 = icmp eq i8 %67, 58
  %add.ptr228 = getelementptr inbounds i8* %p.0, i64 2
  %add.ptr228.leaf.0 = select i1 %cmp225, i8* %add.ptr228, i8* %leaf.0
  %p.0.sep.0 = select i1 %cmp225, i8* %p.0, i8* %sep.0
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool231 = icmp eq i8* %sep.0, null
  br i1 %tobool231, label %cond.false248, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint i8* %sep.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp233 = icmp eq i64 %sub.ptr.sub, 5
  br i1 %cmp233, label %land.lhs.true235, label %if.else263

land.lhs.true235:                                 ; preds = %lor.lhs.false232
  %call236 = call i32 @strncmp(i8* %cond, i8* getelementptr inbounds ([6 x i8]* @.str52, i64 0, i64 0), i64 5) #8
  %tobool237 = icmp eq i32 %call236, 0
  br i1 %tobool237, label %cond.true240, label %if.else263

cond.true240:                                     ; preds = %land.lhs.true235
  %68 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash = getelementptr inbounds %struct.cop* %68, i64 0, i32 9
  %69 = load %struct.hv** %cop_stash, align 8, !tbaa !0
  %tobool241 = icmp eq %struct.hv* %69, null
  br i1 %tobool241, label %if.then259, label %cond.true242

cond.true242:                                     ; preds = %cond.true240
  %70 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_stash243 = getelementptr inbounds %struct.cop* %70, i64 0, i32 9
  %71 = load %struct.hv** %cop_stash243, align 8, !tbaa !0
  %sv_any244 = getelementptr inbounds %struct.hv* %71, i64 0, i32 0
  %72 = load %struct.xpvhv** %sv_any244, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %72, i64 0, i32 10
  %73 = load i8** %xhv_name, align 8, !tbaa !0
  br label %cond.end256

cond.false248:                                    ; preds = %for.end
  br i1 %tobool204, label %cond.true250, label %cond.end256

cond.true250:                                     ; preds = %cond.false248
  %sv_any251 = getelementptr inbounds %struct.hv* %stash.0, i64 0, i32 0
  %74 = load %struct.xpvhv** %sv_any251, align 8, !tbaa !0
  %xhv_name252 = getelementptr inbounds %struct.xpvhv* %74, i64 0, i32 10
  %75 = load i8** %xhv_name252, align 8, !tbaa !0
  br label %cond.end256

cond.end256:                                      ; preds = %cond.false248, %cond.true250, %cond.true242
  %cond257 = phi i8* [ %73, %cond.true242 ], [ %75, %cond.true250 ], [ %packname.2, %cond.false248 ]
  %tobool258 = icmp eq i8* %cond257, null
  br i1 %tobool258, label %if.then259, label %if.else260

if.then259:                                       ; preds = %cond.true240, %cond.end256
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([51 x i8]* @.str53, i64 0, i64 0)) #8
  %.pre401 = load i64* %packlen, align 8, !tbaa !4
  br label %if.end267

if.else260:                                       ; preds = %cond.end256
  %call261 = call i64 @strlen(i8* %cond257) #8
  store i64 %call261, i64* %packlen, align 8, !tbaa !4
  br label %if.end267

if.else263:                                       ; preds = %land.lhs.true235, %lor.lhs.false232
  store i64 %sub.ptr.sub, i64* %packlen, align 8, !tbaa !4
  br label %if.end267

if.end267:                                        ; preds = %if.then259, %if.else260, %if.else263
  %76 = phi i64 [ %sub.ptr.sub, %if.else263 ], [ %call261, %if.else260 ], [ %.pre401, %if.then259 ]
  %packname.3 = phi i8* [ %cond, %if.else263 ], [ %cond257, %if.else260 ], [ null, %if.then259 ]
  %conv268 = trunc i64 %76 to i32
  %call269 = call %struct.hv* @Perl_gv_stashpvn(i8* %packname.3, i32 %conv268, i32 0) #8
  %tobool270 = icmp eq %struct.hv* %call269, null
  %77 = load i64* %packlen, align 8, !tbaa !4
  %conv272 = trunc i64 %77 to i32
  br i1 %tobool270, label %if.else273, label %if.then271

if.then271:                                       ; preds = %if.end267
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([51 x i8]* @.str54, i64 0, i64 0), i8* %leaf.0, i32 %conv272, i8* %packname.3) #8
  br label %if.end277

if.else273:                                       ; preds = %if.end267
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([88 x i8]* @.str55, i64 0, i64 0), i8* %leaf.0, i32 %conv272, i8* %packname.3, i32 %conv272, i8* %packname.3) #8
  br label %if.end277

if.end277:                                        ; preds = %if.end203, %if.then271, %if.else273
  %sv_flags278 = getelementptr inbounds %struct.gv* %call209, i64 0, i32 2
  %78 = load i32* %sv_flags278, align 4, !tbaa !3
  %and279 = and i32 %78, 255
  %cmp280 = icmp eq i32 %and279, 13
  br i1 %cmp280, label %cond.true282, label %cond.false286

cond.true282:                                     ; preds = %if.end277
  %sv_any283 = getelementptr inbounds %struct.gv* %call209, i64 0, i32 0
  %79 = load %struct.xpvgv** %sv_any283, align 8, !tbaa !0
  %xgv_gp284 = getelementptr inbounds %struct.xpvgv* %79, i64 0, i32 7
  %80 = load %struct.gp** %xgv_gp284, align 8, !tbaa !0
  %gp_cv285 = getelementptr inbounds %struct.gp* %80, i64 0, i32 7
  %81 = load %struct.cv** %gp_cv285, align 8, !tbaa !0
  %82 = bitcast %struct.cv* %81 to %struct.sv*
  br label %return

cond.false286:                                    ; preds = %if.end277
  %83 = bitcast %struct.gv* %call209 to %struct.sv*
  br label %return

return:                                           ; preds = %cond.true282, %cond.false286, %if.then197
  %retval.0 = phi %struct.sv* [ %65, %if.then197 ], [ %82, %cond.true282 ], [ %83, %cond.false286 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_method_named() #0 {
entry:
  %hash = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_sv = getelementptr inbounds %struct.op* %1, i64 1
  %2 = bitcast %struct.op* %op_sv to %struct.sv**
  %3 = load %struct.sv** %2, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xuv_uv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %hash, align 4, !tbaa !3
  %7 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.0 = phi %struct.sv** [ %call, %if.then ], [ %0, %entry ]
  %call2 = call fastcc %struct.sv* @S_method_common(%struct.sv* %3, i32* %hash) #9
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call2, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %8 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %8, i64 0, i32 0
  %9 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %9
}

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_idcont(i8*) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_digit(i8*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpvn(i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod(%struct.hv*, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare void @Perl_save_item(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_save_iv(i64*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_avhv_store_ent(%struct.av*, %struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_av_fill(%struct.av*, i32) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
