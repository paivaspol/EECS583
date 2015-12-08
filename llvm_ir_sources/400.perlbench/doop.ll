; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/doop.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PL_op = external global %struct.op*
@PL_no_modify = external constant [0 x i8]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_tainting = external global i8
@PL_curcop = external global %struct.cop*
@.str1 = private unnamed_addr constant [30 x i8] c"Illegal number of bits in vec\00", align 1
@PL_dowarn = external global i8
@.str2 = private unnamed_addr constant [34 x i8] c"Bit vector size > 32 non-portable\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Negative offset to vec in lvalue context\00", align 1
@PL_sv_undef = external global %struct.sv
@PL_rs = external global %struct.sv*
@PL_encoding = external global %struct.sv*
@PL_tainted = external global i8
@PL_stack_sp = external global %struct.sv**
@PL_curpad = external global %struct.sv**
@PL_Sv = external global %struct.sv*
@PL_stack_max = external global %struct.sv**
@.str4 = private unnamed_addr constant [32 x i8] c"panic: do_trans_complex line %d\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"panic: do_trans_complex_utf8 line %d\00", align 1
@PL_utf8skip = external constant [0 x i8]
@.str8 = private unnamed_addr constant [30 x i8] c"panic: do_trans_count line %d\00", align 1
@.str9 = private unnamed_addr constant [31 x i8] c"panic: do_trans_simple line %d\00", align 1
@.str10 = private unnamed_addr constant [36 x i8] c"panic: do_trans_simple_utf8 line %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_do_trans(%struct.sv* %sv) #0 {
entry:
  %len.i225 = alloca i64, align 8
  %len102.i = alloca i64, align 8
  %len184.i = alloca i64, align 8
  %len.i186 = alloca i64, align 8
  %len131.i = alloca i64, align 8
  %len.i152 = alloca i64, align 8
  %ulen.i153 = alloca i64, align 8
  %len.i116 = alloca i64, align 8
  %len.i87 = alloca i64, align 8
  %ulen.i = alloca i64, align 8
  %len.i = alloca i64, align 8
  %len = alloca i64, align 8
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %0, i64 0, i32 7
  %1 = load i8* %op_private, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and1 = and i32 %2, 8388608
  %tobool = icmp eq i32 %and1, 0
  br i1 %tobool, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %2, 1048576
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @Perl_sv_force_normal(%struct.sv* %sv) #4
  %.pre385 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then5
  %3 = phi i32 [ %2, %if.then ], [ %.pre385, %if.then5 ]
  %and7 = and i32 %3, 8388608
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private9 = getelementptr inbounds %struct.op* %4, i64 0, i32 7
  %5 = load i8* %op_private9, align 1, !tbaa !1
  %and11 = and i8 %5, 4
  %tobool12 = icmp eq i8 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end, %entry, %if.then13
  %6 = phi i32 [ %3, %land.lhs.true ], [ %3, %if.end ], [ %2, %entry ], [ %.pre, %if.then13 ]
  %and17 = and i32 %6, 262144
  %cmp = icmp eq i32 %and17, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end15
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  store i64 %9, i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #4
  %.pr = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = phi i64 [ %.pr, %cond.false ], [ %9, %cond.true ]
  %tobool20 = icmp eq i64 %10, 0
  br i1 %tobool20, label %return, label %if.end22

if.end22:                                         ; preds = %cond.end
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private23 = getelementptr inbounds %struct.op* %11, i64 0, i32 7
  %12 = load i8* %op_private23, align 1, !tbaa !1
  %and25 = and i8 %12, 4
  %tobool26 = icmp eq i8 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end49

if.then27:                                        ; preds = %if.end22
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and29 = and i32 %13, 67108864
  %tobool30 = icmp eq i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end45

if.then31:                                        ; preds = %if.then27
  %and33 = and i32 %13, 10223616
  %cmp34 = icmp eq i32 %and33, 262144
  br i1 %cmp34, label %cond.true36, label %cond.false41

cond.true36:                                      ; preds = %if.then31
  %sv_any37 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %14 = load i8** %sv_any37, align 8, !tbaa !0
  %xpv_cur38 = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur38 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  store i64 %16, i64* %len, align 8, !tbaa !4
  br label %if.end45

cond.false41:                                     ; preds = %if.then31
  %call42 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #4
  %.pre382 = load i32* %sv_flags, align 4, !tbaa !3
  %.pre383.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end45

if.end45:                                         ; preds = %if.then27, %cond.true36, %cond.false41
  %.pre383 = phi %struct.op* [ %11, %if.then27 ], [ %11, %cond.true36 ], [ %.pre383.pre, %cond.false41 ]
  %17 = phi i32 [ %13, %if.then27 ], [ %13, %cond.true36 ], [ %.pre382, %cond.false41 ]
  %and47 = and i32 %17, 1760624639
  %or = or i32 %and47, 67371008
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %op_private50.phi.trans.insert = getelementptr inbounds %struct.op* %.pre383, i64 0, i32 7
  %.pre384 = load i8* %op_private50.phi.trans.insert, align 1, !tbaa !1
  br label %if.end49

if.end49:                                         ; preds = %if.end22, %if.end45
  %18 = phi i8 [ %12, %if.end22 ], [ %.pre384, %if.end45 ]
  %19 = phi %struct.op* [ %11, %if.end22 ], [ %.pre383, %if.end45 ]
  %conv51 = zext i8 %18 to i32
  %and52 = xor i32 %and, 63
  %and53 = and i32 %and52, %conv51
  switch i32 %and53, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb58
    i32 36, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.end49
  %tobool54 = icmp eq i32 %and, 0
  br i1 %tobool54, label %if.else, label %if.then55

if.then55:                                        ; preds = %sw.bb
  %20 = bitcast i64* %len.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %op_sv.i = getelementptr inbounds %struct.op* %19, i64 1
  %21 = bitcast %struct.op* %op_sv.i to %struct.sv**
  %22 = load %struct.sv** %21, align 8, !tbaa !0
  %sv_any.i = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %23 = load i8** %sv_any.i, align 8, !tbaa !0
  %xrv_rv.i = bitcast i8* %23 to %struct.sv**
  %24 = load %struct.sv** %xrv_rv.i, align 8, !tbaa !0
  %25 = bitcast %struct.sv* %24 to %struct.hv*
  %call.i = call %struct.sv** @Perl_hv_fetch(%struct.hv* %25, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 4, i32 0) #4
  %tobool.i = icmp eq %struct.sv** %call.i, null
  br i1 %tobool.i, label %cond.end7.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then55
  %26 = load %struct.sv** %call.i, align 8, !tbaa !0
  %sv_flags.i = getelementptr inbounds %struct.sv* %26, i64 0, i32 2
  %27 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and1.i = and i32 %27, 65536
  %tobool2.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i, label %cond.false.i, label %cond.true3.i

cond.true3.i:                                     ; preds = %cond.true.i
  %sv_any4.i = getelementptr inbounds %struct.sv* %26, i64 0, i32 0
  %28 = load i8** %sv_any4.i, align 8, !tbaa !0
  %xuv_uv.i = getelementptr inbounds i8* %28, i64 24
  %29 = bitcast i8* %xuv_uv.i to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  br label %cond.end7.i

cond.false.i:                                     ; preds = %cond.true.i
  %call5.i = call i64 @Perl_sv_2uv(%struct.sv* %26) #4
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.false.i, %cond.true3.i, %if.then55
  %cond8.i = phi i64 [ %30, %cond.true3.i ], [ %call5.i, %cond.false.i ], [ 2147483647, %if.then55 ]
  %add.i = add i64 %cond8.i, 1
  %31 = load i32* %sv_flags, align 4, !tbaa !3
  %and10.i = and i32 %31, 262144
  %cmp.i = icmp eq i32 %and10.i, 0
  br i1 %cmp.i, label %cond.false15.i, label %cond.true12.i

cond.true12.i:                                    ; preds = %cond.end7.i
  %sv_any13.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %32 = load i8** %sv_any13.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %32, i64 8
  %33 = bitcast i8* %xpv_cur.i to i64*
  %34 = load i64* %33, align 8, !tbaa !4
  store i64 %34, i64* %len.i, align 8, !tbaa !4
  %xpv_pv.i = bitcast i8* %32 to i8**
  %35 = load i8** %xpv_pv.i, align 8, !tbaa !0
  br label %cond.end17.i

cond.false15.i:                                   ; preds = %cond.end7.i
  %call16.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len.i, i32 2) #4
  %.pre.i = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false15.i, %cond.true12.i
  %36 = phi i32 [ %31, %cond.true12.i ], [ %.pre.i, %cond.false15.i ]
  %cond18.i = phi i8* [ %35, %cond.true12.i ], [ %call16.i, %cond.false15.i ]
  %and20.i = and i32 %36, 536870912
  %tobool21.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.i, label %if.then.i, label %if.end34.i

if.then.i:                                        ; preds = %cond.end17.i
  %37 = load i64* %len.i, align 8, !tbaa !4
  %add.ptr.i = getelementptr inbounds i8* %cond18.i, i64 %37
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.then.i
  %t.0.i = phi i8* [ %cond18.i, %if.then.i ], [ %incdec.ptr.i, %while.body.i ]
  %cmp22.i = icmp ult i8* %t.0.i, %add.ptr.i
  br i1 %cmp22.i, label %while.body.i, label %if.end34.i

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %t.0.i, i64 1
  %38 = load i8* %t.0.i, align 1, !tbaa !1
  %.lobit.i = lshr i8 %38, 7
  %tobool28.i = icmp eq i8 %.lobit.i, 0
  br i1 %tobool28.i, label %while.cond.i, label %if.then31.i

if.then31.i:                                      ; preds = %while.body.i
  %call32.i = call i8* @Perl_bytes_to_utf8(i8* %cond18.i, i64* %len.i) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %while.cond.i, %cond.end17.i, %if.then31.i
  %hibit.2.i = phi i8 [ %.lobit.i, %if.then31.i ], [ 0, %cond.end17.i ], [ 0, %while.cond.i ]
  %s.0.i = phi i8* [ %call32.i, %if.then31.i ], [ %cond18.i, %cond.end17.i ], [ %cond18.i, %while.cond.i ]
  %39 = load i64* %len.i, align 8, !tbaa !4
  %add.ptr35.i = getelementptr inbounds i8* %s.0.i, i64 %39
  %call36.i = call %struct.sv** @Perl_hv_fetch(%struct.hv* %25, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32 5, i32 0) #4
  %tobool37.i = icmp eq %struct.sv** %call36.i, null
  br i1 %tobool37.i, label %if.end49.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  %40 = load %struct.sv** %call36.i, align 8, !tbaa !0
  %sv_flags39.i = getelementptr inbounds %struct.sv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags39.i, align 4, !tbaa !3
  %and40.i = and i32 %41, 65536
  %tobool41.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.i, label %cond.false45.i, label %cond.true42.i

cond.true42.i:                                    ; preds = %if.then38.i
  %sv_any43.i = getelementptr inbounds %struct.sv* %40, i64 0, i32 0
  %42 = load i8** %sv_any43.i, align 8, !tbaa !0
  %xuv_uv44.i = getelementptr inbounds i8* %42, i64 24
  %43 = bitcast i8* %xuv_uv44.i to i64*
  %44 = load i64* %43, align 8, !tbaa !4
  br label %if.end49.i

cond.false45.i:                                   ; preds = %if.then38.i
  %call46.i = call i64 @Perl_sv_2uv(%struct.sv* %40) #4
  br label %if.end49.i

if.end49.i:                                       ; preds = %cond.false45.i, %cond.true42.i, %if.end34.i
  %final.0.i = phi i64 [ 0, %if.end34.i ], [ %44, %cond.true42.i ], [ %call46.i, %cond.false45.i ]
  %and.i = and i8 %18, 64
  %tobool50.i = icmp ne i8 %and.i, 0
  %45 = load i64* %len.i, align 8, !tbaa !4
  br i1 %tobool50.i, label %if.then51.i, label %if.else.i

if.then51.i:                                      ; preds = %if.end49.i
  %mul.i = mul i64 %45, 3
  %add52.i = add i64 %mul.i, 13
  %call54.i = call i8* @Perl_safesysmalloc(i64 %add52.i) #4
  %46 = load i64* %len.i, align 8, !tbaa !4
  %mul55.i = mul i64 %46, 3
  %add.ptr56.i = getelementptr inbounds i8* %call54.i, i64 %mul55.i
  br label %while.cond59.outer.i

if.else.i:                                        ; preds = %if.end49.i
  %add.ptr57.i = getelementptr inbounds i8* %s.0.i, i64 %45
  br label %while.cond59.outer.i

while.cond59.outer.i:                             ; preds = %if.else.i, %if.then51.i, %if.end114.i
  %matches.0.ph.i = phi i32 [ %matches.1.i, %if.end114.i ], [ 0, %if.then51.i ], [ 0, %if.else.i ]
  %dend.0.ph219.i = phi i8* [ %add.ptr119.i, %if.end114.i ], [ %add.ptr56.i, %if.then51.i ], [ %add.ptr57.i, %if.else.i ]
  %dstart.0.ph220.i = phi i8* [ %call117.i, %if.end114.i ], [ %call54.i, %if.then51.i ], [ %s.0.i, %if.else.i ]
  %d.0.ph221.i = phi i8* [ %add.ptr118.i, %if.end114.i ], [ %call54.i, %if.then51.i ], [ %s.0.i, %if.else.i ]
  %s.1.ph.i = phi i8* [ %s.2.i, %if.end114.i ], [ %s.0.i, %if.then51.i ], [ %s.0.i, %if.else.i ]
  br label %while.cond59.i

while.cond59.i:                                   ; preds = %if.end103.i, %while.cond59.outer.i
  %matches.0.i = phi i32 [ %matches.1.i, %if.end103.i ], [ %matches.0.ph.i, %while.cond59.outer.i ]
  %d.0.i = phi i8* [ %d.1.i, %if.end103.i ], [ %d.0.ph221.i, %while.cond59.outer.i ]
  %s.1.i = phi i8* [ %s.2.i, %if.end103.i ], [ %s.1.ph.i, %while.cond59.outer.i ]
  %cmp60.i = icmp ult i8* %s.1.i, %add.ptr35.i
  br i1 %cmp60.i, label %while.body62.i, label %while.end121.i

while.body62.i:                                   ; preds = %while.cond59.i
  %call63.i = call i64 @Perl_swash_fetch(%struct.sv* %22, i8* %s.1.i, i8 signext 1) #4
  %cmp64.i = icmp ult i64 %call63.i, %cond8.i
  br i1 %cmp64.i, label %if.then66.i, label %if.else70.i

if.then66.i:                                      ; preds = %while.body62.i
  %47 = load i8* %s.1.i, align 1, !tbaa !1
  %idxprom.i = zext i8 %47 to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i
  %48 = load i8* %arrayidx.i, align 1, !tbaa !1
  %idx.ext.i = zext i8 %48 to i64
  %add.ptr68.i = getelementptr inbounds i8* %s.1.i, i64 %idx.ext.i
  %inc.i = add nsw i32 %matches.0.i, 1
  %call69.i = call i8* @Perl_uvuni_to_utf8(i8* %d.0.i, i64 %call63.i) #4
  br label %if.end103.i

if.else70.i:                                      ; preds = %while.body62.i
  %cmp71.i = icmp eq i64 %call63.i, %cond8.i
  br i1 %cmp71.i, label %if.then73.i, label %if.else83.i

if.then73.i:                                      ; preds = %if.else70.i
  %49 = load i8* %s.1.i, align 1, !tbaa !1
  %idxprom74.i = zext i8 %49 to i64
  %arrayidx75.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom74.i
  %50 = load i8* %arrayidx75.i, align 1, !tbaa !1
  %conv77.i = zext i8 %50 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.0.i, i8* %s.1.i, i64 %conv77.i, i32 1, i1 false) #2
  %add.ptr80.i = getelementptr inbounds i8* %d.0.i, i64 %conv77.i
  %add.ptr82.i = getelementptr inbounds i8* %s.1.i, i64 %conv77.i
  br label %if.end103.i

if.else83.i:                                      ; preds = %if.else70.i
  %cmp84.i = icmp eq i64 %call63.i, %add.i
  %51 = load i8* %s.1.i, align 1, !tbaa !1
  %idxprom88.i = zext i8 %51 to i64
  %arrayidx89.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom88.i
  %52 = load i8* %arrayidx89.i, align 1, !tbaa !1
  %idx.ext91.i = zext i8 %52 to i64
  %add.ptr92.i = getelementptr inbounds i8* %s.1.i, i64 %idx.ext91.i
  br i1 %cmp84.i, label %if.then86.i, label %if.end103.i

if.then86.i:                                      ; preds = %if.else83.i
  %inc93.i = add nsw i32 %matches.0.i, 1
  %call94.i = call i8* @Perl_uvuni_to_utf8(i8* %d.0.i, i64 %final.0.i) #4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then86.i, %if.else83.i, %if.then73.i, %if.then66.i
  %matches.1.i = phi i32 [ %inc.i, %if.then66.i ], [ %matches.0.i, %if.then73.i ], [ %inc93.i, %if.then86.i ], [ %matches.0.i, %if.else83.i ]
  %d.1.i = phi i8* [ %call69.i, %if.then66.i ], [ %add.ptr80.i, %if.then73.i ], [ %call94.i, %if.then86.i ], [ %d.0.i, %if.else83.i ]
  %s.2.i = phi i8* [ %add.ptr68.i, %if.then66.i ], [ %add.ptr82.i, %if.then73.i ], [ %add.ptr92.i, %if.then86.i ], [ %add.ptr92.i, %if.else83.i ]
  %cmp104.i = icmp ugt i8* %d.1.i, %dend.0.ph219.i
  br i1 %cmp104.i, label %if.then106.i, label %while.cond59.i

if.then106.i:                                     ; preds = %if.end103.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %d.1.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %dstart.0.ph220.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.lhs.cast107.i = ptrtoint i8* %dend.0.ph219.i to i64
  %sub.ptr.sub109.i = sub i64 %sub.ptr.lhs.cast107.i, %sub.ptr.rhs.cast.i
  %53 = load i64* %len.i, align 8, !tbaa !4
  %add110.i = add i64 %53, %sub.ptr.sub109.i
  %add111.i = add i64 %add110.i, 13
  br i1 %tobool50.i, label %if.end114.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.then106.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str10, i64 0, i64 0), i32 375) #4
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then113.i, %if.then106.i
  %add115.i = add i64 %add110.i, 26
  %call117.i = call i8* @Perl_safesysrealloc(i8* %dstart.0.ph220.i, i64 %add115.i) #4
  %add.ptr118.i = getelementptr inbounds i8* %call117.i, i64 %sub.ptr.sub.i
  %add.ptr119.i = getelementptr inbounds i8* %call117.i, i64 %add111.i
  br label %while.cond59.outer.i

while.end121.i:                                   ; preds = %while.cond59.i
  %tobool50.not.i = xor i1 %tobool50.i, true
  %tobool124.i = icmp eq i8 %hibit.2.i, 0
  %or.cond.i = and i1 %tobool124.i, %tobool50.not.i
  br i1 %or.cond.i, label %if.else134.i, label %if.then125.i

if.then125.i:                                     ; preds = %while.end121.i
  %sub.ptr.lhs.cast126.i = ptrtoint i8* %d.0.i to i64
  %sub.ptr.rhs.cast127.i = ptrtoint i8* %dstart.0.ph220.i to i64
  %sub.ptr.sub128.i = sub i64 %sub.ptr.lhs.cast126.i, %sub.ptr.rhs.cast127.i
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %dstart.0.ph220.i, i64 %sub.ptr.sub128.i) #4
  call void @Perl_safesysfree(i8* %dstart.0.ph220.i) #4
  %or.cond214.i = or i1 %tobool124.i, %tobool50.not.i
  br i1 %or.cond214.i, label %if.end140.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.then125.i
  call void @Perl_safesysfree(i8* %s.0.i) #4
  br label %if.end140.i

if.else134.i:                                     ; preds = %while.end121.i
  store i8 0, i8* %d.0.i, align 1, !tbaa !1
  %sub.ptr.lhs.cast135.i = ptrtoint i8* %d.0.i to i64
  %sub.ptr.rhs.cast136.i = ptrtoint i8* %dstart.0.ph220.i to i64
  %sub.ptr.sub137.i = sub i64 %sub.ptr.lhs.cast135.i, %sub.ptr.rhs.cast136.i
  %sv_any138.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %54 = load i8** %sv_any138.i, align 8, !tbaa !0
  %xpv_cur139.i = getelementptr inbounds i8* %54, i64 8
  %55 = bitcast i8* %xpv_cur139.i to i64*
  store i64 %sub.ptr.sub137.i, i64* %55, align 8, !tbaa !4
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.else134.i, %if.then132.i, %if.then125.i
  %56 = load i32* %sv_flags, align 4, !tbaa !3
  %and142.i = and i32 %56, 16384
  %tobool143.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.i, label %S_do_trans_simple_utf8.exit, label %if.then144.i

if.then144.i:                                     ; preds = %if.end140.i
  %call145.i = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  %.pre226.i = load i32* %sv_flags, align 4, !tbaa !3
  br label %S_do_trans_simple_utf8.exit

S_do_trans_simple_utf8.exit:                      ; preds = %if.end140.i, %if.then144.i
  %57 = phi i32 [ %56, %if.end140.i ], [ %.pre226.i, %if.then144.i ]
  %or.i = or i32 %57, 536870912
  store i32 %or.i, i32* %sv_flags, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  br label %return

if.else:                                          ; preds = %sw.bb
  %58 = bitcast i64* %len.i87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = bitcast i64* %ulen.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %op_pv.i = getelementptr inbounds %struct.op* %19, i64 1
  %60 = bitcast %struct.op* %op_pv.i to i8**
  %61 = load i8** %60, align 8, !tbaa !0
  %62 = bitcast i8* %61 to i16*
  %tobool.i89 = icmp eq i8* %61, null
  br i1 %tobool.i89, label %if.then.i90, label %if.end.i

if.then.i90:                                      ; preds = %if.else
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str9, i64 0, i64 0), i32 43) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else, %if.then.i90
  %63 = load i32* %sv_flags, align 4, !tbaa !3
  %and1.i92 = and i32 %63, 262144
  %cmp.i93 = icmp eq i32 %and1.i92, 0
  br i1 %cmp.i93, label %cond.false.i100, label %cond.true.i97

cond.true.i97:                                    ; preds = %if.end.i
  %sv_any.i94 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %64 = load i8** %sv_any.i94, align 8, !tbaa !0
  %xpv_cur.i95 = getelementptr inbounds i8* %64, i64 8
  %65 = bitcast i8* %xpv_cur.i95 to i64*
  %66 = load i64* %65, align 8, !tbaa !4
  store i64 %66, i64* %len.i87, align 8, !tbaa !4
  %xpv_pv.i96 = bitcast i8* %64 to i8**
  %67 = load i8** %xpv_pv.i96, align 8, !tbaa !0
  br label %cond.end.i

cond.false.i100:                                  ; preds = %if.end.i
  %call.i98 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len.i87, i32 2) #4
  %.pre.i99 = load i64* %len.i87, align 8, !tbaa !4
  %.pre143.i = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i100, %cond.true.i97
  %68 = phi i32 [ %63, %cond.true.i97 ], [ %.pre143.i, %cond.false.i100 ]
  %69 = phi i64 [ %66, %cond.true.i97 ], [ %.pre.i99, %cond.false.i100 ]
  %cond.i = phi i8* [ %67, %cond.true.i97 ], [ %call.i98, %cond.false.i100 ]
  %add.ptr.i101 = getelementptr inbounds i8* %cond.i, i64 %69
  %and5.i = and i32 %68, 536870912
  %tobool6.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.i, label %while.cond.preheader.i, label %if.end23.i

while.cond.preheader.i:                           ; preds = %cond.end.i
  %cmp8113123.i = icmp sgt i64 %69, 0
  br i1 %cmp8113123.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i, %if.then13.i
  %s.0.ph125.i = phi i8* [ %incdec.ptr15.i, %if.then13.i ], [ %cond.i, %while.cond.preheader.i ]
  %matches.0.ph124.i = phi i32 [ %inc.i106, %if.then13.i ], [ 0, %while.cond.preheader.i ]
  br label %while.body.i105

while.cond.i102:                                  ; preds = %while.body.i105
  %cmp8.i = icmp ult i8* %incdec.ptr15.i, %add.ptr.i101
  br i1 %cmp8.i, label %while.body.i105, label %while.end.i

while.body.i105:                                  ; preds = %while.cond.i102, %while.body.lr.ph.i
  %s.0114.i = phi i8* [ %s.0.ph125.i, %while.body.lr.ph.i ], [ %incdec.ptr15.i, %while.cond.i102 ]
  %70 = load i8* %s.0114.i, align 1, !tbaa !1
  %idxprom.i103 = zext i8 %70 to i64
  %arrayidx.i104 = getelementptr inbounds i16* %62, i64 %idxprom.i103
  %71 = load i16* %arrayidx.i104, align 2, !tbaa !5
  %cmp11.i = icmp sgt i16 %71, -1
  %incdec.ptr15.i = getelementptr inbounds i8* %s.0114.i, i64 1
  br i1 %cmp11.i, label %if.then13.i, label %while.cond.i102

if.then13.i:                                      ; preds = %while.body.i105
  %inc.i106 = add nsw i32 %matches.0.ph124.i, 1
  %conv14.i = trunc i16 %71 to i8
  store i8 %conv14.i, i8* %s.0114.i, align 1, !tbaa !1
  %cmp8113.i = icmp ult i8* %incdec.ptr15.i, %add.ptr.i101
  br i1 %cmp8113.i, label %while.body.lr.ph.i, label %while.end.i

while.end.i:                                      ; preds = %if.then13.i, %while.cond.i102, %while.cond.preheader.i
  %matches.0.ph122.i = phi i32 [ 0, %while.cond.preheader.i ], [ %matches.0.ph124.i, %while.cond.i102 ], [ %inc.i106, %if.then13.i ]
  %72 = load i32* %sv_flags, align 4, !tbaa !3
  %and18.i = and i32 %72, 16384
  %tobool19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.i, label %return, label %if.then20.i

if.then20.i:                                      ; preds = %while.end.i
  %call21.i = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %return

if.end23.i:                                       ; preds = %cond.end.i
  %and.i107 = and i8 %18, 64
  %tobool24.i = icmp ne i8 %and.i107, 0
  br i1 %tobool24.i, label %if.then25.i, label %if.end29.i

if.then25.i:                                      ; preds = %if.end23.i
  %mul.i108 = shl i64 %69, 1
  %add111.i109 = or i64 %mul.i108, 1
  %call27.i = call i8* @Perl_safesysmalloc(i64 %add111.i109) #4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end23.i
  %d.0.i110 = phi i8* [ %call27.i, %if.then25.i ], [ %cond.i, %if.end23.i ]
  %cmp31118130.i = icmp sgt i64 %69, 0
  br i1 %cmp31118130.i, label %while.body33.lr.ph.lr.ph.i, label %while.end51.i

while.body33.lr.ph.lr.ph.i:                       ; preds = %if.end29.i
  %sub.ptr.lhs.cast.i111 = ptrtoint i8* %add.ptr.i101 to i64
  br label %while.body33.lr.ph.i

while.body33.lr.ph.i:                             ; preds = %if.then41.i, %while.body33.lr.ph.lr.ph.i
  %s.1.ph133.i = phi i8* [ %cond.i, %while.body33.lr.ph.lr.ph.i ], [ %add.ptr45.i, %if.then41.i ]
  %d.1.ph132.i = phi i8* [ %d.0.i110, %while.body33.lr.ph.lr.ph.i ], [ %call44.i, %if.then41.i ]
  %matches.1.ph131.i = phi i32 [ 0, %while.body33.lr.ph.lr.ph.i ], [ %inc42.i, %if.then41.i ]
  br label %while.body33.i

while.body33.i:                                   ; preds = %if.else46.i, %while.body33.lr.ph.i
  %s.1120.i = phi i8* [ %s.1.ph133.i, %while.body33.lr.ph.i ], [ %add.ptr49.i, %if.else46.i ]
  %d.1119.i = phi i8* [ %d.1.ph132.i, %while.body33.lr.ph.i ], [ %add.ptr48.i, %if.else46.i ]
  %sub.ptr.rhs.cast.i112 = ptrtoint i8* %s.1120.i to i64
  %sub.ptr.sub.i113 = sub i64 %sub.ptr.lhs.cast.i111, %sub.ptr.rhs.cast.i112
  %call34.i = call i64 @Perl_utf8n_to_uvuni(i8* %s.1120.i, i64 %sub.ptr.sub.i113, i64* %ulen.i, i32 0) #4
  %cmp35.i = icmp ult i64 %call34.i, 256
  br i1 %cmp35.i, label %land.lhs.true.i, label %if.else46.i

land.lhs.true.i:                                  ; preds = %while.body33.i
  %arrayidx37.i = getelementptr inbounds i16* %62, i64 %call34.i
  %73 = load i16* %arrayidx37.i, align 2, !tbaa !5
  %cmp39.i = icmp sgt i16 %73, -1
  br i1 %cmp39.i, label %if.then41.i, label %if.else46.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  %inc42.i = add nsw i32 %matches.1.ph131.i, 1
  %conv43.i = sext i16 %73 to i64
  %call44.i = call i8* @Perl_uvuni_to_utf8(i8* %d.1119.i, i64 %conv43.i) #4
  %74 = load i64* %ulen.i, align 8, !tbaa !4
  %add.ptr45.i = getelementptr inbounds i8* %s.1120.i, i64 %74
  %cmp31118.i = icmp ult i8* %add.ptr45.i, %add.ptr.i101
  br i1 %cmp31118.i, label %while.body33.lr.ph.i, label %while.end51.i

if.else46.i:                                      ; preds = %land.lhs.true.i, %while.body33.i
  %75 = load i64* %ulen.i, align 8, !tbaa !4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.1119.i, i8* %s.1120.i, i64 %75, i32 1, i1 false) #2
  %76 = load i64* %ulen.i, align 8, !tbaa !4
  %add.ptr48.i = getelementptr inbounds i8* %d.1119.i, i64 %76
  %add.ptr49.i = getelementptr inbounds i8* %s.1120.i, i64 %76
  %cmp31.i = icmp ult i8* %add.ptr49.i, %add.ptr.i101
  br i1 %cmp31.i, label %while.body33.i, label %while.end51.i

while.end51.i:                                    ; preds = %if.then41.i, %if.else46.i, %if.end29.i
  %matches.1.ph128.i = phi i32 [ 0, %if.end29.i ], [ %matches.1.ph131.i, %if.else46.i ], [ %inc42.i, %if.then41.i ]
  %d.1.lcssa.i = phi i8* [ %d.0.i110, %if.end29.i ], [ %add.ptr48.i, %if.else46.i ], [ %call44.i, %if.then41.i ]
  br i1 %tobool24.i, label %if.then53.i, label %if.else57.i

if.then53.i:                                      ; preds = %while.end51.i
  %sub.ptr.lhs.cast54.i = ptrtoint i8* %d.1.lcssa.i to i64
  %sub.ptr.rhs.cast55.i = ptrtoint i8* %d.0.i110 to i64
  %sub.ptr.sub56.i = sub i64 %sub.ptr.lhs.cast54.i, %sub.ptr.rhs.cast55.i
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %d.0.i110, i64 %sub.ptr.sub56.i) #4
  call void @Perl_safesysfree(i8* %d.0.i110) #4
  br label %if.end63.i

if.else57.i:                                      ; preds = %while.end51.i
  store i8 0, i8* %d.1.lcssa.i, align 1, !tbaa !1
  %sub.ptr.lhs.cast58.i = ptrtoint i8* %d.1.lcssa.i to i64
  %sub.ptr.rhs.cast59.i = ptrtoint i8* %d.0.i110 to i64
  %sub.ptr.sub60.i = sub i64 %sub.ptr.lhs.cast58.i, %sub.ptr.rhs.cast59.i
  %sv_any61.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %77 = load i8** %sv_any61.i, align 8, !tbaa !0
  %xpv_cur62.i = getelementptr inbounds i8* %77, i64 8
  %78 = bitcast i8* %xpv_cur62.i to i64*
  store i64 %sub.ptr.sub60.i, i64* %78, align 8, !tbaa !4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else57.i, %if.then53.i
  %79 = load i32* %sv_flags, align 4, !tbaa !3
  %or.i114 = or i32 %79, 536870912
  store i32 %or.i114, i32* %sv_flags, align 4, !tbaa !3
  %and66.i = and i32 %79, 16384
  %tobool67.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.i, label %return, label %if.then68.i

if.then68.i:                                      ; preds = %if.end63.i
  %call69.i115 = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %return

sw.bb58:                                          ; preds = %if.end49, %if.end49
  %tobool59 = icmp eq i32 %and, 0
  br i1 %tobool59, label %if.else62, label %if.then60

if.then60:                                        ; preds = %sw.bb58
  %80 = bitcast i64* %len.i116 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #2
  %op_sv.i117 = getelementptr inbounds %struct.op* %19, i64 1
  %81 = bitcast %struct.op* %op_sv.i117 to %struct.sv**
  %82 = load %struct.sv** %81, align 8, !tbaa !0
  %sv_any.i118 = getelementptr inbounds %struct.sv* %82, i64 0, i32 0
  %83 = load i8** %sv_any.i118, align 8, !tbaa !0
  %xrv_rv.i119 = bitcast i8* %83 to %struct.sv**
  %84 = load %struct.sv** %xrv_rv.i119, align 8, !tbaa !0
  %85 = bitcast %struct.sv* %84 to %struct.hv*
  %call.i120 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %85, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 4, i32 0) #4
  %tobool.i121 = icmp eq %struct.sv** %call.i120, null
  br i1 %tobool.i121, label %cond.end6.i, label %cond.true.i124

cond.true.i124:                                   ; preds = %if.then60
  %86 = load %struct.sv** %call.i120, align 8, !tbaa !0
  %sv_flags.i122 = getelementptr inbounds %struct.sv* %86, i64 0, i32 2
  %87 = load i32* %sv_flags.i122, align 4, !tbaa !3
  %and.i123 = and i32 %87, 65536
  %tobool1.i = icmp eq i32 %and.i123, 0
  br i1 %tobool1.i, label %cond.false.i126, label %cond.true2.i

cond.true2.i:                                     ; preds = %cond.true.i124
  %sv_any3.i = getelementptr inbounds %struct.sv* %86, i64 0, i32 0
  %88 = load i8** %sv_any3.i, align 8, !tbaa !0
  %xuv_uv.i125 = getelementptr inbounds i8* %88, i64 24
  %89 = bitcast i8* %xuv_uv.i125 to i64*
  %90 = load i64* %89, align 8, !tbaa !4
  br label %cond.end6.i

cond.false.i126:                                  ; preds = %cond.true.i124
  %call4.i = call i64 @Perl_sv_2uv(%struct.sv* %86) #4
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.false.i126, %cond.true2.i, %if.then60
  %cond7.i = phi i64 [ %90, %cond.true2.i ], [ %call4.i, %cond.false.i126 ], [ 2147483647, %if.then60 ]
  %add.i127 = add i64 %cond7.i, 1
  %91 = load i32* %sv_flags, align 4, !tbaa !3
  %and9.i = and i32 %91, 262144
  %cmp.i128 = icmp eq i32 %and9.i, 0
  br i1 %cmp.i128, label %cond.false13.i, label %cond.true10.i

cond.true10.i:                                    ; preds = %cond.end6.i
  %sv_any11.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %92 = load i8** %sv_any11.i, align 8, !tbaa !0
  %xpv_cur.i129 = getelementptr inbounds i8* %92, i64 8
  %93 = bitcast i8* %xpv_cur.i129 to i64*
  %94 = load i64* %93, align 8, !tbaa !4
  store i64 %94, i64* %len.i116, align 8, !tbaa !4
  %xpv_pv.i130 = bitcast i8* %92 to i8**
  %95 = load i8** %xpv_pv.i130, align 8, !tbaa !0
  br label %cond.end15.i

cond.false13.i:                                   ; preds = %cond.end6.i
  %call14.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len.i116, i32 2) #4
  %.pre.i131 = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.false13.i, %cond.true10.i
  %96 = phi i32 [ %91, %cond.true10.i ], [ %.pre.i131, %cond.false13.i ]
  %cond16.i = phi i8* [ %95, %cond.true10.i ], [ %call14.i, %cond.false13.i ]
  %and18.i132 = and i32 %96, 536870912
  %tobool19.i133 = icmp eq i32 %and18.i132, 0
  br i1 %tobool19.i133, label %if.then.i135, label %if.end30.i

if.then.i135:                                     ; preds = %cond.end15.i
  %97 = load i64* %len.i116, align 8, !tbaa !4
  %add.ptr.i134 = getelementptr inbounds i8* %cond16.i, i64 %97
  br label %while.cond.i137

while.cond.i137:                                  ; preds = %while.body.i141, %if.then.i135
  %t.0.i136 = phi i8* [ %cond16.i, %if.then.i135 ], [ %incdec.ptr.i138, %while.body.i141 ]
  %cmp20.i = icmp ult i8* %t.0.i136, %add.ptr.i134
  br i1 %cmp20.i, label %while.body.i141, label %if.end30.i

while.body.i141:                                  ; preds = %while.cond.i137
  %incdec.ptr.i138 = getelementptr inbounds i8* %t.0.i136, i64 1
  %98 = load i8* %t.0.i136, align 1, !tbaa !1
  %.lobit.i139 = lshr i8 %98, 7
  %tobool24.i140 = icmp eq i8 %.lobit.i139, 0
  br i1 %tobool24.i140, label %while.cond.i137, label %if.then27.i

if.then27.i:                                      ; preds = %while.body.i141
  %call28.i = call i8* @Perl_bytes_to_utf8(i8* %cond16.i, i64* %len.i116) #4
  br label %if.end30.i

if.end30.i:                                       ; preds = %while.cond.i137, %cond.end15.i, %if.then27.i
  %hibit.2.i142 = phi i8 [ %.lobit.i139, %if.then27.i ], [ 0, %cond.end15.i ], [ 0, %while.cond.i137 ]
  %start.0.i = phi i8* [ %call28.i, %if.then27.i ], [ null, %cond.end15.i ], [ null, %while.cond.i137 ]
  %s.0.i143 = phi i8* [ %call28.i, %if.then27.i ], [ %cond16.i, %cond.end15.i ], [ %cond16.i, %while.cond.i137 ]
  %99 = load i64* %len.i116, align 8, !tbaa !4
  %add.ptr31.i = getelementptr inbounds i8* %s.0.i143, i64 %99
  %cmp3370.i = icmp sgt i64 %99, 0
  br i1 %cmp3370.i, label %while.body35.i, label %while.end45.i

while.body35.i:                                   ; preds = %if.end30.i, %while.body35.i
  %s.172.i = phi i8* [ %add.ptr44.i, %while.body35.i ], [ %s.0.i143, %if.end30.i ]
  %matches.071.i = phi i32 [ %matches.1.i148, %while.body35.i ], [ 0, %if.end30.i ]
  %call36.i144 = call i64 @Perl_swash_fetch(%struct.sv* %82, i8* %s.172.i, i8 signext 1) #4
  %cmp37.i = icmp ult i64 %call36.i144, %cond7.i
  %cmp39.i145 = icmp eq i64 %call36.i144, %add.i127
  %or.cond.i146 = or i1 %cmp37.i, %cmp39.i145
  %inc.i147 = zext i1 %or.cond.i146 to i32
  %matches.1.i148 = add nsw i32 %inc.i147, %matches.071.i
  %100 = load i8* %s.172.i, align 1, !tbaa !1
  %idxprom.i149 = zext i8 %100 to i64
  %arrayidx.i150 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i149
  %101 = load i8* %arrayidx.i150, align 1, !tbaa !1
  %idx.ext.i151 = zext i8 %101 to i64
  %add.ptr44.i = getelementptr inbounds i8* %s.172.i, i64 %idx.ext.i151
  %cmp33.i = icmp ult i8* %add.ptr44.i, %add.ptr31.i
  br i1 %cmp33.i, label %while.body35.i, label %while.end45.i

while.end45.i:                                    ; preds = %while.body35.i, %if.end30.i
  %matches.0.lcssa.i = phi i32 [ 0, %if.end30.i ], [ %matches.1.i148, %while.body35.i ]
  %tobool46.i = icmp eq i8 %hibit.2.i142, 0
  br i1 %tobool46.i, label %return, label %if.then47.i

if.then47.i:                                      ; preds = %while.end45.i
  call void @Perl_safesysfree(i8* %start.0.i) #4
  br label %return

if.else62:                                        ; preds = %sw.bb58
  %102 = bitcast i64* %len.i152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = bitcast i64* %ulen.i153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #2
  %op_pv.i155 = getelementptr inbounds %struct.op* %19, i64 1
  %104 = bitcast %struct.op* %op_pv.i155 to i8**
  %105 = load i8** %104, align 8, !tbaa !0
  %106 = bitcast i8* %105 to i16*
  %tobool.i156 = icmp eq i8* %105, null
  br i1 %tobool.i156, label %if.then.i157, label %if.end.i161

if.then.i157:                                     ; preds = %if.else62
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i32 110) #4
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.else62, %if.then.i157
  %107 = load i32* %sv_flags, align 4, !tbaa !3
  %and1.i159 = and i32 %107, 262144
  %cmp.i160 = icmp eq i32 %and1.i159, 0
  br i1 %cmp.i160, label %cond.false.i168, label %cond.true.i165

cond.true.i165:                                   ; preds = %if.end.i161
  %sv_any.i162 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %108 = load i8** %sv_any.i162, align 8, !tbaa !0
  %xpv_cur.i163 = getelementptr inbounds i8* %108, i64 8
  %109 = bitcast i8* %xpv_cur.i163 to i64*
  %110 = load i64* %109, align 8, !tbaa !4
  store i64 %110, i64* %len.i152, align 8, !tbaa !4
  %xpv_pv.i164 = bitcast i8* %108 to i8**
  %111 = load i8** %xpv_pv.i164, align 8, !tbaa !0
  br label %cond.end.i173

cond.false.i168:                                  ; preds = %if.end.i161
  %call.i166 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len.i152, i32 2) #4
  %.pre.i167 = load i64* %len.i152, align 8, !tbaa !4
  %.pre66.i = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end.i173

cond.end.i173:                                    ; preds = %cond.false.i168, %cond.true.i165
  %112 = phi i32 [ %107, %cond.true.i165 ], [ %.pre66.i, %cond.false.i168 ]
  %113 = phi i64 [ %110, %cond.true.i165 ], [ %.pre.i167, %cond.false.i168 ]
  %cond.i169 = phi i8* [ %111, %cond.true.i165 ], [ %call.i166, %cond.false.i168 ]
  %add.ptr.i170 = getelementptr inbounds i8* %cond.i169, i64 %113
  %and5.i171 = and i32 %112, 536870912
  %tobool6.i172 = icmp eq i32 %and5.i171, 0
  %cmp858.i = icmp sgt i64 %113, 0
  br i1 %tobool6.i172, label %while.cond.preheader.i176, label %while.cond15.preheader.i

while.cond15.preheader.i:                         ; preds = %cond.end.i173
  br i1 %cmp858.i, label %while.body18.lr.ph.i, label %return

while.body18.lr.ph.i:                             ; preds = %while.cond15.preheader.i
  %sub.ptr.lhs.cast.i174 = ptrtoint i8* %add.ptr.i170 to i64
  %and.i175 = lshr i8 %18, 5
  %and.lobit.i = and i8 %and.i175, 1
  %inc33.i = zext i8 %and.lobit.i to i32
  br label %while.body18.i

while.cond.preheader.i176:                        ; preds = %cond.end.i173
  br i1 %cmp858.i, label %while.body.i181, label %return

while.body.i181:                                  ; preds = %while.cond.preheader.i176, %while.body.i181
  %s.060.i = phi i8* [ %incdec.ptr.i177, %while.body.i181 ], [ %cond.i169, %while.cond.preheader.i176 ]
  %matches.059.i = phi i32 [ %inc.matches.0.i, %while.body.i181 ], [ 0, %while.cond.preheader.i176 ]
  %incdec.ptr.i177 = getelementptr inbounds i8* %s.060.i, i64 1
  %114 = load i8* %s.060.i, align 1, !tbaa !1
  %idxprom.i178 = zext i8 %114 to i64
  %arrayidx.i179 = getelementptr inbounds i16* %106, i64 %idxprom.i178
  %115 = load i16* %arrayidx.i179, align 2, !tbaa !5
  %.lobit56.i = lshr i16 %115, 15
  %116 = zext i16 %.lobit56.i to i32
  %.not57.i = xor i32 %116, 1
  %inc.matches.0.i = add nsw i32 %.not57.i, %matches.059.i
  %cmp8.i180 = icmp ult i8* %incdec.ptr.i177, %add.ptr.i170
  br i1 %cmp8.i180, label %while.body.i181, label %return

while.body18.i:                                   ; preds = %if.end35.i, %while.body18.lr.ph.i
  %s.164.i = phi i8* [ %cond.i169, %while.body18.lr.ph.i ], [ %add.ptr36.i, %if.end35.i ]
  %matches.163.i = phi i32 [ 0, %while.body18.lr.ph.i ], [ %matches.2.i, %if.end35.i ]
  %sub.ptr.rhs.cast.i182 = ptrtoint i8* %s.164.i to i64
  %sub.ptr.sub.i183 = sub i64 %sub.ptr.lhs.cast.i174, %sub.ptr.rhs.cast.i182
  %call19.i = call i64 @Perl_utf8n_to_uvuni(i8* %s.164.i, i64 %sub.ptr.sub.i183, i64* %ulen.i153, i32 0) #4
  %cmp20.i184 = icmp ult i64 %call19.i, 256
  br i1 %cmp20.i184, label %if.then22.i, label %if.end35.i

if.then22.i:                                      ; preds = %while.body18.i
  %arrayidx23.i = getelementptr inbounds i16* %106, i64 %call19.i
  %117 = load i16* %arrayidx23.i, align 2, !tbaa !5
  %.lobit.i185 = lshr i16 %117, 15
  %118 = zext i16 %.lobit.i185 to i32
  %.not.i = xor i32 %118, 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then22.i, %while.body18.i
  %inc28.pn.i = phi i32 [ %.not.i, %if.then22.i ], [ %inc33.i, %while.body18.i ]
  %matches.2.i = add nsw i32 %inc28.pn.i, %matches.163.i
  %119 = load i64* %ulen.i153, align 8, !tbaa !4
  %add.ptr36.i = getelementptr inbounds i8* %s.164.i, i64 %119
  %cmp16.i = icmp ult i8* %add.ptr36.i, %add.ptr.i170
  br i1 %cmp16.i, label %while.body18.i, label %return

sw.default:                                       ; preds = %if.end49
  %tobool64 = icmp eq i32 %and, 0
  br i1 %tobool64, label %if.else67, label %if.then65

if.then65:                                        ; preds = %sw.default
  %120 = bitcast i64* %len.i186 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #2
  %121 = bitcast i64* %len131.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #2
  %and.i188 = and i32 %conv51, 8
  %and3.i = and i32 %conv51, 16
  %and6.i = and i32 %conv51, 64
  %op_sv.i189 = getelementptr inbounds %struct.op* %19, i64 1
  %122 = bitcast %struct.op* %op_sv.i189 to %struct.sv**
  %123 = load %struct.sv** %122, align 8, !tbaa !0
  %sv_any.i190 = getelementptr inbounds %struct.sv* %123, i64 0, i32 0
  %124 = load i8** %sv_any.i190, align 8, !tbaa !0
  %xrv_rv.i191 = bitcast i8* %124 to %struct.sv**
  %125 = load %struct.sv** %xrv_rv.i191, align 8, !tbaa !0
  %126 = bitcast %struct.sv* %125 to %struct.hv*
  %call.i192 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %126, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 4, i32 0) #4
  %tobool.i193 = icmp eq %struct.sv** %call.i192, null
  br i1 %tobool.i193, label %cond.end13.i, label %cond.true.i195

cond.true.i195:                                   ; preds = %if.then65
  %127 = load %struct.sv** %call.i192, align 8, !tbaa !0
  %sv_flags.i194 = getelementptr inbounds %struct.sv* %127, i64 0, i32 2
  %128 = load i32* %sv_flags.i194, align 4, !tbaa !3
  %and7.i = and i32 %128, 65536
  %tobool8.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.i, label %cond.false.i197, label %cond.true9.i

cond.true9.i:                                     ; preds = %cond.true.i195
  %sv_any10.i = getelementptr inbounds %struct.sv* %127, i64 0, i32 0
  %129 = load i8** %sv_any10.i, align 8, !tbaa !0
  %xuv_uv.i196 = getelementptr inbounds i8* %129, i64 24
  %130 = bitcast i8* %xuv_uv.i196 to i64*
  %131 = load i64* %130, align 8, !tbaa !4
  br label %cond.end13.i

cond.false.i197:                                  ; preds = %cond.true.i195
  %call11.i = call i64 @Perl_sv_2uv(%struct.sv* %127) #4
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.false.i197, %cond.true9.i, %if.then65
  %cond14.i = phi i64 [ %131, %cond.true9.i ], [ %call11.i, %cond.false.i197 ], [ 2147483647, %if.then65 ]
  %add.i198 = add i64 %cond14.i, 1
  %132 = load i32* %sv_flags, align 4, !tbaa !3
  %and16.i = and i32 %132, 262144
  %cmp.i199 = icmp eq i32 %and16.i, 0
  br i1 %cmp.i199, label %cond.false21.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %cond.end13.i
  %sv_any19.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %133 = load i8** %sv_any19.i, align 8, !tbaa !0
  %xpv_cur.i200 = getelementptr inbounds i8* %133, i64 8
  %134 = bitcast i8* %xpv_cur.i200 to i64*
  %135 = load i64* %134, align 8, !tbaa !4
  store i64 %135, i64* %len.i186, align 8, !tbaa !4
  %xpv_pv.i201 = bitcast i8* %133 to i8**
  %136 = load i8** %xpv_pv.i201, align 8, !tbaa !0
  br label %cond.end23.i

cond.false21.i:                                   ; preds = %cond.end13.i
  %call22.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len.i186, i32 2) #4
  %.pre.i202 = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end23.i

cond.end23.i:                                     ; preds = %cond.false21.i, %cond.true18.i
  %137 = phi i32 [ %132, %cond.true18.i ], [ %.pre.i202, %cond.false21.i ]
  %cond24.i = phi i8* [ %136, %cond.true18.i ], [ %call22.i, %cond.false21.i ]
  %and26.i = and i32 %137, 536870912
  %tobool27.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.i, label %if.then.i204, label %if.end40.i

if.then.i204:                                     ; preds = %cond.end23.i
  %138 = load i64* %len.i186, align 8, !tbaa !4
  %add.ptr.i203 = getelementptr inbounds i8* %cond24.i, i64 %138
  br label %while.cond.i206

while.cond.i206:                                  ; preds = %while.body.i209, %if.then.i204
  %t.0.i205 = phi i8* [ %cond24.i, %if.then.i204 ], [ %incdec.ptr.i207, %while.body.i209 ]
  %cmp28.i = icmp ult i8* %t.0.i205, %add.ptr.i203
  br i1 %cmp28.i, label %while.body.i209, label %if.end40.i

while.body.i209:                                  ; preds = %while.cond.i206
  %incdec.ptr.i207 = getelementptr inbounds i8* %t.0.i205, i64 1
  %139 = load i8* %t.0.i205, align 1, !tbaa !1
  %.lobit.i208 = lshr i8 %139, 7
  %tobool34.i = icmp eq i8 %.lobit.i208, 0
  br i1 %tobool34.i, label %while.cond.i206, label %if.then37.i

if.then37.i:                                      ; preds = %while.body.i209
  %call38.i = call i8* @Perl_bytes_to_utf8(i8* %cond24.i, i64* %len.i186) #4
  br label %if.end40.i

if.end40.i:                                       ; preds = %while.cond.i206, %cond.end23.i, %if.then37.i
  %hibit.2.i210 = phi i8 [ %.lobit.i208, %if.then37.i ], [ 0, %cond.end23.i ], [ 0, %while.cond.i206 ]
  %s.0.i211 = phi i8* [ %call38.i, %if.then37.i ], [ %cond24.i, %cond.end23.i ], [ %cond24.i, %while.cond.i206 ]
  %140 = load i64* %len.i186, align 8, !tbaa !4
  %add.ptr41.i = getelementptr inbounds i8* %s.0.i211, i64 %140
  %call42.i = call %struct.sv** @Perl_hv_fetch(%struct.hv* %126, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32 5, i32 0) #4
  %tobool43.i = icmp eq %struct.sv** %call42.i, null
  br i1 %tobool43.i, label %if.end55.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end40.i
  %141 = load %struct.sv** %call42.i, align 8, !tbaa !0
  %sv_flags45.i = getelementptr inbounds %struct.sv* %141, i64 0, i32 2
  %142 = load i32* %sv_flags45.i, align 4, !tbaa !3
  %and46.i = and i32 %142, 65536
  %tobool47.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.i, label %cond.false51.i, label %cond.true48.i

cond.true48.i:                                    ; preds = %if.then44.i
  %sv_any49.i = getelementptr inbounds %struct.sv* %141, i64 0, i32 0
  %143 = load i8** %sv_any49.i, align 8, !tbaa !0
  %xuv_uv50.i = getelementptr inbounds i8* %143, i64 24
  %144 = bitcast i8* %xuv_uv50.i to i64*
  %145 = load i64* %144, align 8, !tbaa !4
  br label %if.end55.i

cond.false51.i:                                   ; preds = %if.then44.i
  %call52.i = call i64 @Perl_sv_2uv(%struct.sv* %141) #4
  br label %if.end55.i

if.end55.i:                                       ; preds = %cond.false51.i, %cond.true48.i, %if.end40.i
  %havefinal.0.i = phi i8 [ 0, %if.end40.i ], [ 1, %cond.false51.i ], [ 1, %cond.true48.i ]
  %final.0.i212 = phi i64 [ 0, %if.end40.i ], [ %call52.i, %cond.false51.i ], [ %145, %cond.true48.i ]
  %tobool56.i = icmp ne i32 %and6.i, 0
  %146 = load i64* %len.i186, align 8, !tbaa !4
  br i1 %tobool56.i, label %if.then57.i, label %if.else.i214

if.then57.i:                                      ; preds = %if.end55.i
  %mul.i213 = mul i64 %146, 3
  %add58.i = add i64 %mul.i213, 13
  %call60.i = call i8* @Perl_safesysmalloc(i64 %add58.i) #4
  %147 = load i64* %len.i186, align 8, !tbaa !4
  %mul61.i = mul i64 %147, 3
  %add.ptr62.i = getelementptr inbounds i8* %call60.i, i64 %mul61.i
  br label %if.end64.i

if.else.i214:                                     ; preds = %if.end55.i
  %add.ptr63.i = getelementptr inbounds i8* %s.0.i211, i64 %146
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else.i214, %if.then57.i
  %dend.0.i = phi i8* [ %add.ptr62.i, %if.then57.i ], [ %add.ptr63.i, %if.else.i214 ]
  %dstart.0.i = phi i8* [ %call60.i, %if.then57.i ], [ %s.0.i211, %if.else.i214 ]
  %tobool65.i = icmp eq i32 %and.i188, 0
  %cmp153394443.i = icmp sgt i64 %140, 0
  br i1 %tobool65.i, label %while.cond152.preheader.i, label %while.cond67.preheader.i

while.cond67.preheader.i:                         ; preds = %if.end64.i
  br i1 %cmp153394443.i, label %while.body70.lr.ph.lr.ph.i, label %if.end226.i

while.body70.lr.ph.lr.ph.i:                       ; preds = %while.cond67.preheader.i
  %tobool115.i = icmp eq i32 %and3.i, 0
  %tobool118.i = icmp eq i8 %havefinal.0.i, 0
  br label %while.body70.lr.ph.i

while.cond152.preheader.i:                        ; preds = %if.end64.i
  br i1 %cmp153394443.i, label %while.body155.lr.ph.lr.ph.i, label %if.end226.i

while.body155.lr.ph.lr.ph.i:                      ; preds = %while.cond152.preheader.i
  %tobool207.i = icmp eq i32 %and3.i, 0
  br label %while.body155.lr.ph.i

while.body70.i:                                   ; preds = %while.cond67.backedge.i, %while.body70.lr.ph.i
  %s.1435.i = phi i8* [ %s.1.ph461.i, %while.body70.lr.ph.i ], [ %s.1.be.i, %while.cond67.backedge.i ]
  %d.1434.i = phi i8* [ %d.1.ph460.i, %while.body70.lr.ph.i ], [ %d.2.i, %while.cond67.backedge.i ]
  %matches.0433.i = phi i32 [ %matches.0.ph459.i, %while.body70.lr.ph.i ], [ %matches.0.be.i, %while.cond67.backedge.i ]
  %dstart.1432.i = phi i8* [ %dstart.1.ph457.i, %while.body70.lr.ph.i ], [ %dstart.2.i, %while.cond67.backedge.i ]
  %dend.1431.i = phi i8* [ %dend.1.ph456.i, %while.body70.lr.ph.i ], [ %dend.2.i, %while.cond67.backedge.i ]
  %call71.i = call i64 @Perl_swash_fetch(%struct.sv* %123, i8* %s.1435.i, i8 signext 1) #4
  %cmp72.i = icmp ugt i8* %d.1434.i, %dend.1431.i
  br i1 %cmp72.i, label %if.then74.i, label %if.end88.i

if.then74.i:                                      ; preds = %while.body70.i
  %sub.ptr.lhs.cast.i215 = ptrtoint i8* %d.1434.i to i64
  %sub.ptr.rhs.cast.i216 = ptrtoint i8* %dstart.1432.i to i64
  %sub.ptr.sub.i217 = sub i64 %sub.ptr.lhs.cast.i215, %sub.ptr.rhs.cast.i216
  %sub.ptr.lhs.cast75.i = ptrtoint i8* %dend.1431.i to i64
  %sub.ptr.sub77.i = sub i64 %sub.ptr.lhs.cast75.i, %sub.ptr.rhs.cast.i216
  %148 = load i64* %len.i186, align 8, !tbaa !4
  %add78.i = add i64 %148, %sub.ptr.sub77.i
  %add79.i = add i64 %add78.i, 13
  br i1 %tobool56.i, label %if.end82.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.then74.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), i32 501) #4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then81.i, %if.then74.i
  %add83.i = add i64 %add78.i, 26
  %call85.i = call i8* @Perl_safesysrealloc(i8* %dstart.1432.i, i64 %add83.i) #4
  %add.ptr86.i = getelementptr inbounds i8* %call85.i, i64 %sub.ptr.sub.i217
  %add.ptr87.i = getelementptr inbounds i8* %call85.i, i64 %add79.i
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end82.i, %while.body70.i
  %dend.2.i = phi i8* [ %add.ptr87.i, %if.end82.i ], [ %dend.1431.i, %while.body70.i ]
  %dstart.2.i = phi i8* [ %call85.i, %if.end82.i ], [ %dstart.1432.i, %while.body70.i ]
  %d.2.i = phi i8* [ %add.ptr86.i, %if.end82.i ], [ %d.1434.i, %while.body70.i ]
  %cmp89.i = icmp ult i64 %call71.i, %cond14.i
  br i1 %cmp89.i, label %if.then91.i, label %if.else99.i

if.then91.i:                                      ; preds = %if.end88.i
  %inc.i218 = add nsw i32 %matches.0433.i, 1
  %149 = load i8* %s.1435.i, align 1, !tbaa !1
  %idxprom.i219 = zext i8 %149 to i64
  %arrayidx.i220 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom.i219
  %150 = load i8* %arrayidx.i220, align 1, !tbaa !1
  %idx.ext.i221 = zext i8 %150 to i64
  %add.ptr93.i = getelementptr inbounds i8* %s.1435.i, i64 %idx.ext.i221
  %cmp94.i = icmp eq i64 %call71.i, %puv.0.ph458.i
  br i1 %cmp94.i, label %while.cond67.backedge.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.then91.i
  %call97.i = call i8* @Perl_uvuni_to_utf8(i8* %d.2.i, i64 %call71.i) #4
  br label %while.cond67.outer.backedge.i

while.cond67.outer.backedge.i:                    ; preds = %if.end138.i, %if.then127.i, %if.then102.i, %if.then96.i
  %puv.0.ph.be.i = phi i64 [ %call71.i, %if.then96.i ], [ 4277009102, %if.then102.i ], [ %final.0.i212, %if.then127.i ], [ %puv.1.i, %if.end138.i ]
  %matches.0.ph.be.i = phi i32 [ %inc.i218, %if.then96.i ], [ %matches.0433.i, %if.then102.i ], [ %inc117.i, %if.then127.i ], [ %inc117.i, %if.end138.i ]
  %d.1.ph.be.i = phi i8* [ %call97.i, %if.then96.i ], [ %add.ptr109.i, %if.then102.i ], [ %call128.i, %if.then127.i ], [ %d.3.i, %if.end138.i ]
  %s.1.ph.be.i = phi i8* [ %add.ptr93.i, %if.then96.i ], [ %add.ptr111.i, %if.then102.i ], [ %add.ptr124.i, %if.then127.i ], [ %add.ptr139.i, %if.end138.i ]
  %cmp68430.i = icmp ult i8* %s.1.ph.be.i, %add.ptr41.i
  br i1 %cmp68430.i, label %while.body70.lr.ph.i, label %if.end226.i

while.body70.lr.ph.i:                             ; preds = %while.cond67.outer.backedge.i, %while.body70.lr.ph.lr.ph.i
  %s.1.ph461.i = phi i8* [ %s.0.i211, %while.body70.lr.ph.lr.ph.i ], [ %s.1.ph.be.i, %while.cond67.outer.backedge.i ]
  %d.1.ph460.i = phi i8* [ %dstart.0.i, %while.body70.lr.ph.lr.ph.i ], [ %d.1.ph.be.i, %while.cond67.outer.backedge.i ]
  %matches.0.ph459.i = phi i32 [ 0, %while.body70.lr.ph.lr.ph.i ], [ %matches.0.ph.be.i, %while.cond67.outer.backedge.i ]
  %puv.0.ph458.i = phi i64 [ 4277009102, %while.body70.lr.ph.lr.ph.i ], [ %puv.0.ph.be.i, %while.cond67.outer.backedge.i ]
  %dstart.1.ph457.i = phi i8* [ %dstart.0.i, %while.body70.lr.ph.lr.ph.i ], [ %dstart.2.i, %while.cond67.outer.backedge.i ]
  %dend.1.ph456.i = phi i8* [ %dend.0.i, %while.body70.lr.ph.lr.ph.i ], [ %dend.2.i, %while.cond67.outer.backedge.i ]
  %cmp125.i = icmp eq i64 %puv.0.ph458.i, %final.0.i212
  br label %while.body70.i

if.else99.i:                                      ; preds = %if.end88.i
  %cmp100.i = icmp eq i64 %call71.i, %cond14.i
  br i1 %cmp100.i, label %if.then102.i, label %if.else112.i

if.then102.i:                                     ; preds = %if.else99.i
  %151 = load i8* %s.1435.i, align 1, !tbaa !1
  %idxprom103.i = zext i8 %151 to i64
  %arrayidx104.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom103.i
  %152 = load i8* %arrayidx104.i, align 1, !tbaa !1
  %conv106.i = zext i8 %152 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.2.i, i8* %s.1435.i, i64 %conv106.i, i32 1, i1 false) #2
  %add.ptr109.i = getelementptr inbounds i8* %d.2.i, i64 %conv106.i
  %add.ptr111.i = getelementptr inbounds i8* %s.1435.i, i64 %conv106.i
  br label %while.cond67.outer.backedge.i

if.else112.i:                                     ; preds = %if.else99.i
  %cmp113.i = icmp eq i64 %call71.i, %add.i198
  %or.cond.i222 = and i1 %cmp113.i, %tobool115.i
  %inc117.i = add nsw i32 %matches.0433.i, 1
  br i1 %or.cond.i222, label %if.then116.i, label %if.end143.i

if.then116.i:                                     ; preds = %if.else112.i
  br i1 %tobool118.i, label %if.else130.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.then116.i
  %153 = load i8* %s.1435.i, align 1, !tbaa !1
  %idxprom120.i = zext i8 %153 to i64
  %arrayidx121.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom120.i
  %154 = load i8* %arrayidx121.i, align 1, !tbaa !1
  %idx.ext123.i = zext i8 %154 to i64
  %add.ptr124.i = getelementptr inbounds i8* %s.1435.i, i64 %idx.ext123.i
  br i1 %cmp125.i, label %while.cond67.backedge.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.then119.i
  %call128.i = call i8* @Perl_uvuni_to_utf8(i8* %d.2.i, i64 %final.0.i212) #4
  br label %while.cond67.outer.backedge.i

if.else130.i:                                     ; preds = %if.then116.i
  %call132.i = call i64 @Perl_utf8_to_uvuni(i8* %s.1435.i, i64* %len131.i) #4
  %cmp133.i = icmp eq i64 %call132.i, %puv.0.ph458.i
  %.pre505.i = load i64* %len131.i, align 8, !tbaa !4
  br i1 %cmp133.i, label %if.end138.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.else130.i
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.2.i, i8* %s.1435.i, i64 %.pre505.i, i32 1, i1 false) #2
  %155 = load i64* %len131.i, align 8, !tbaa !4
  %add.ptr137.i = getelementptr inbounds i8* %d.2.i, i64 %155
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then135.i, %if.else130.i
  %156 = phi i64 [ %155, %if.then135.i ], [ %.pre505.i, %if.else130.i ]
  %puv.1.i = phi i64 [ %call132.i, %if.then135.i ], [ %puv.0.ph458.i, %if.else130.i ]
  %d.3.i = phi i8* [ %add.ptr137.i, %if.then135.i ], [ %d.2.i, %if.else130.i ]
  %add.ptr139.i = getelementptr inbounds i8* %s.1435.i, i64 %156
  br label %while.cond67.outer.backedge.i

if.end143.i:                                      ; preds = %if.else112.i
  %157 = load i8* %s.1435.i, align 1, !tbaa !1
  %idxprom145.i = zext i8 %157 to i64
  %arrayidx146.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom145.i
  %158 = load i8* %arrayidx146.i, align 1, !tbaa !1
  %idx.ext148.i = zext i8 %158 to i64
  %add.ptr149.i = getelementptr inbounds i8* %s.1435.i, i64 %idx.ext148.i
  br label %while.cond67.backedge.i

while.cond67.backedge.i:                          ; preds = %if.end143.i, %if.then119.i, %if.then91.i
  %matches.0.be.i = phi i32 [ %inc.i218, %if.then91.i ], [ %inc117.i, %if.end143.i ], [ %inc117.i, %if.then119.i ]
  %s.1.be.i = phi i8* [ %add.ptr93.i, %if.then91.i ], [ %add.ptr149.i, %if.end143.i ], [ %add.ptr124.i, %if.then119.i ]
  %cmp68.i = icmp ult i8* %s.1.be.i, %add.ptr41.i
  br i1 %cmp68.i, label %while.body70.i, label %if.end226.i

while.body155.i:                                  ; preds = %if.then192.i, %while.body155.lr.ph.i
  %s.2398.i = phi i8* [ %s.2.ph448.i, %while.body155.lr.ph.i ], [ %add.ptr202.i, %if.then192.i ]
  %d.4397.i = phi i8* [ %d.4.ph447.i, %while.body155.lr.ph.i ], [ %add.ptr200.i, %if.then192.i ]
  %dstart.3396.i = phi i8* [ %dstart.3.ph445.i, %while.body155.lr.ph.i ], [ %dstart.4.i, %if.then192.i ]
  %dend.3395.i = phi i8* [ %dend.3.ph444.i, %while.body155.lr.ph.i ], [ %dend.4.i, %if.then192.i ]
  %call156.i = call i64 @Perl_swash_fetch(%struct.sv* %123, i8* %s.2398.i, i8 signext 1) #4
  %cmp157.i = icmp ugt i8* %d.4397.i, %dend.3395.i
  br i1 %cmp157.i, label %if.then159.i, label %if.end178.i

if.then159.i:                                     ; preds = %while.body155.i
  %sub.ptr.lhs.cast161.i = ptrtoint i8* %d.4397.i to i64
  %sub.ptr.rhs.cast162.i = ptrtoint i8* %dstart.3396.i to i64
  %sub.ptr.sub163.i = sub i64 %sub.ptr.lhs.cast161.i, %sub.ptr.rhs.cast162.i
  %sub.ptr.lhs.cast165.i = ptrtoint i8* %dend.3395.i to i64
  %sub.ptr.sub167.i = sub i64 %sub.ptr.lhs.cast165.i, %sub.ptr.rhs.cast162.i
  %159 = load i64* %len.i186, align 8, !tbaa !4
  %add168.i = add i64 %159, %sub.ptr.sub167.i
  %add169.i = add i64 %add168.i, 13
  br i1 %tobool56.i, label %if.end172.i, label %if.then171.i

if.then171.i:                                     ; preds = %if.then159.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), i32 555) #4
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.then171.i, %if.then159.i
  %add173.i = add i64 %add168.i, 26
  %call175.i = call i8* @Perl_safesysrealloc(i8* %dstart.3396.i, i64 %add173.i) #4
  %add.ptr176.i = getelementptr inbounds i8* %call175.i, i64 %sub.ptr.sub163.i
  %add.ptr177.i = getelementptr inbounds i8* %call175.i, i64 %add169.i
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.end172.i, %while.body155.i
  %dend.4.i = phi i8* [ %add.ptr177.i, %if.end172.i ], [ %dend.3395.i, %while.body155.i ]
  %dstart.4.i = phi i8* [ %call175.i, %if.end172.i ], [ %dstart.3396.i, %while.body155.i ]
  %d.5.i = phi i8* [ %add.ptr176.i, %if.end172.i ], [ %d.4397.i, %while.body155.i ]
  %cmp179.i = icmp ult i64 %call156.i, %cond14.i
  br i1 %cmp179.i, label %if.then181.i, label %if.else189.i

if.then181.i:                                     ; preds = %if.end178.i
  %inc182.i = add nsw i32 %matches.1.ph446.i, 1
  %160 = load i8* %s.2398.i, align 1, !tbaa !1
  %idxprom183.i = zext i8 %160 to i64
  %arrayidx184.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom183.i
  %161 = load i8* %arrayidx184.i, align 1, !tbaa !1
  %idx.ext186.i = zext i8 %161 to i64
  %add.ptr187.i = getelementptr inbounds i8* %s.2398.i, i64 %idx.ext186.i
  %call188.i = call i8* @Perl_uvuni_to_utf8(i8* %d.5.i, i64 %call156.i) #4
  br label %while.cond152.outer.backedge.i

while.cond152.outer.backedge.i:                   ; preds = %if.then208.i, %if.else203.i, %if.then181.i
  %matches.1.ph.be.i = phi i32 [ %inc182.i, %if.then181.i ], [ %inc209.i, %if.then208.i ], [ %inc209.i, %if.else203.i ]
  %d.4.ph.be.i = phi i8* [ %call188.i, %if.then181.i ], [ %call215.i, %if.then208.i ], [ %d.5.i, %if.else203.i ]
  %s.2.ph.be.i = phi i8* [ %add.ptr187.i, %if.then181.i ], [ %add.ptr214.i, %if.then208.i ], [ %add.ptr214.i, %if.else203.i ]
  %cmp153394.i = icmp ult i8* %s.2.ph.be.i, %add.ptr41.i
  br i1 %cmp153394.i, label %while.body155.lr.ph.i, label %if.end226.i

while.body155.lr.ph.i:                            ; preds = %while.cond152.outer.backedge.i, %while.body155.lr.ph.lr.ph.i
  %s.2.ph448.i = phi i8* [ %s.0.i211, %while.body155.lr.ph.lr.ph.i ], [ %s.2.ph.be.i, %while.cond152.outer.backedge.i ]
  %d.4.ph447.i = phi i8* [ %dstart.0.i, %while.body155.lr.ph.lr.ph.i ], [ %d.4.ph.be.i, %while.cond152.outer.backedge.i ]
  %matches.1.ph446.i = phi i32 [ 0, %while.body155.lr.ph.lr.ph.i ], [ %matches.1.ph.be.i, %while.cond152.outer.backedge.i ]
  %dstart.3.ph445.i = phi i8* [ %dstart.0.i, %while.body155.lr.ph.lr.ph.i ], [ %dstart.4.i, %while.cond152.outer.backedge.i ]
  %dend.3.ph444.i = phi i8* [ %dend.0.i, %while.body155.lr.ph.lr.ph.i ], [ %dend.4.i, %while.cond152.outer.backedge.i ]
  br label %while.body155.i

if.else189.i:                                     ; preds = %if.end178.i
  %cmp190.i = icmp eq i64 %call156.i, %cond14.i
  br i1 %cmp190.i, label %if.then192.i, label %if.else203.i

if.then192.i:                                     ; preds = %if.else189.i
  %162 = load i8* %s.2398.i, align 1, !tbaa !1
  %idxprom194.i = zext i8 %162 to i64
  %arrayidx195.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom194.i
  %163 = load i8* %arrayidx195.i, align 1, !tbaa !1
  %conv197.i = zext i8 %163 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.5.i, i8* %s.2398.i, i64 %conv197.i, i32 1, i1 false) #2
  %add.ptr200.i = getelementptr inbounds i8* %d.5.i, i64 %conv197.i
  %add.ptr202.i = getelementptr inbounds i8* %s.2398.i, i64 %conv197.i
  %cmp153.i = icmp ult i8* %add.ptr202.i, %add.ptr41.i
  br i1 %cmp153.i, label %while.body155.i, label %if.end226.i

if.else203.i:                                     ; preds = %if.else189.i
  %cmp204.i = icmp eq i64 %call156.i, %add.i198
  %or.cond376.i = and i1 %cmp204.i, %tobool207.i
  %inc209.i = add nsw i32 %matches.1.ph446.i, 1
  %164 = load i8* %s.2398.i, align 1, !tbaa !1
  %idxprom210.i = zext i8 %164 to i64
  %arrayidx211.i = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom210.i
  %165 = load i8* %arrayidx211.i, align 1, !tbaa !1
  %idx.ext213.i = zext i8 %165 to i64
  %add.ptr214.i = getelementptr inbounds i8* %s.2398.i, i64 %idx.ext213.i
  br i1 %or.cond376.i, label %if.then208.i, label %while.cond152.outer.backedge.i

if.then208.i:                                     ; preds = %if.else203.i
  %call215.i = call i8* @Perl_uvuni_to_utf8(i8* %d.5.i, i64 %final.0.i212) #4
  br label %while.cond152.outer.backedge.i

if.end226.i:                                      ; preds = %while.cond67.outer.backedge.i, %while.cond67.backedge.i, %while.cond152.outer.backedge.i, %if.then192.i, %while.cond152.preheader.i, %while.cond67.preheader.i
  %dstart.5.i = phi i8* [ %dstart.0.i, %while.cond152.preheader.i ], [ %dstart.0.i, %while.cond67.preheader.i ], [ %dstart.4.i, %if.then192.i ], [ %dstart.4.i, %while.cond152.outer.backedge.i ], [ %dstart.2.i, %while.cond67.backedge.i ], [ %dstart.2.i, %while.cond67.outer.backedge.i ]
  %matches.2.i223 = phi i32 [ 0, %while.cond152.preheader.i ], [ 0, %while.cond67.preheader.i ], [ %matches.1.ph446.i, %if.then192.i ], [ %matches.1.ph.be.i, %while.cond152.outer.backedge.i ], [ %matches.0.be.i, %while.cond67.backedge.i ], [ %matches.0.ph.be.i, %while.cond67.outer.backedge.i ]
  %d.6.i = phi i8* [ %dstart.0.i, %while.cond152.preheader.i ], [ %dstart.0.i, %while.cond67.preheader.i ], [ %add.ptr200.i, %if.then192.i ], [ %d.4.ph.be.i, %while.cond152.outer.backedge.i ], [ %d.2.i, %while.cond67.backedge.i ], [ %d.1.ph.be.i, %while.cond67.outer.backedge.i ]
  %tobool56.not.i = xor i1 %tobool56.i, true
  %tobool229.i = icmp eq i8 %hibit.2.i210, 0
  %or.cond377.i = and i1 %tobool229.i, %tobool56.not.i
  br i1 %or.cond377.i, label %if.else240.i, label %if.then230.i

if.then230.i:                                     ; preds = %if.end226.i
  %sub.ptr.lhs.cast231.i = ptrtoint i8* %d.6.i to i64
  %sub.ptr.rhs.cast232.i = ptrtoint i8* %dstart.5.i to i64
  %sub.ptr.sub233.i = sub i64 %sub.ptr.lhs.cast231.i, %sub.ptr.rhs.cast232.i
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %dstart.5.i, i64 %sub.ptr.sub233.i) #4
  call void @Perl_safesysfree(i8* %dstart.5.i) #4
  %or.cond379.i = or i1 %tobool229.i, %tobool56.not.i
  br i1 %or.cond379.i, label %if.end246.i, label %if.then238.i

if.then238.i:                                     ; preds = %if.then230.i
  call void @Perl_safesysfree(i8* %s.0.i211) #4
  br label %if.end246.i

if.else240.i:                                     ; preds = %if.end226.i
  store i8 0, i8* %d.6.i, align 1, !tbaa !1
  %sub.ptr.lhs.cast241.i = ptrtoint i8* %d.6.i to i64
  %sub.ptr.rhs.cast242.i = ptrtoint i8* %dstart.5.i to i64
  %sub.ptr.sub243.i = sub i64 %sub.ptr.lhs.cast241.i, %sub.ptr.rhs.cast242.i
  %sv_any244.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %166 = load i8** %sv_any244.i, align 8, !tbaa !0
  %xpv_cur245.i = getelementptr inbounds i8* %166, i64 8
  %167 = bitcast i8* %xpv_cur245.i to i64*
  store i64 %sub.ptr.sub243.i, i64* %167, align 8, !tbaa !4
  br label %if.end246.i

if.end246.i:                                      ; preds = %if.else240.i, %if.then238.i, %if.then230.i
  %168 = load i32* %sv_flags, align 4, !tbaa !3
  %or.i224 = or i32 %168, 536870912
  store i32 %or.i224, i32* %sv_flags, align 4, !tbaa !3
  %and249.i = and i32 %168, 16384
  %tobool250.i = icmp eq i32 %and249.i, 0
  br i1 %tobool250.i, label %return, label %if.then251.i

if.then251.i:                                     ; preds = %if.end246.i
  %call252.i = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %return

if.else67:                                        ; preds = %sw.default
  %169 = bitcast i64* %len.i225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #2
  %170 = bitcast i64* %len102.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #2
  %171 = bitcast i64* %len184.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #2
  %and.i228 = and i32 %conv51, 64
  %and3.i229 = and i32 %conv51, 32
  %and6.i230 = and i32 %conv51, 16
  %op_pv.i231 = getelementptr inbounds %struct.op* %19, i64 1
  %172 = bitcast %struct.op* %op_pv.i231 to i8**
  %173 = load i8** %172, align 8, !tbaa !0
  %174 = bitcast i8* %173 to i16*
  %tobool.i232 = icmp eq i8* %173, null
  br i1 %tobool.i232, label %if.then.i233, label %if.end.i237

if.then.i233:                                     ; preds = %if.else67
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i32 154) #4
  br label %if.end.i237

if.end.i237:                                      ; preds = %if.else67, %if.then.i233
  %175 = load i32* %sv_flags, align 4, !tbaa !3
  %and7.i235 = and i32 %175, 262144
  %cmp.i236 = icmp eq i32 %and7.i235, 0
  br i1 %cmp.i236, label %cond.false.i244, label %cond.true.i241

cond.true.i241:                                   ; preds = %if.end.i237
  %sv_any.i238 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %176 = load i8** %sv_any.i238, align 8, !tbaa !0
  %xpv_cur.i239 = getelementptr inbounds i8* %176, i64 8
  %177 = bitcast i8* %xpv_cur.i239 to i64*
  %178 = load i64* %177, align 8, !tbaa !4
  store i64 %178, i64* %len.i225, align 8, !tbaa !4
  %xpv_pv.i240 = bitcast i8* %176 to i8**
  %179 = load i8** %xpv_pv.i240, align 8, !tbaa !0
  br label %cond.end.i247

cond.false.i244:                                  ; preds = %if.end.i237
  %call.i242 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len.i225, i32 2) #4
  %.pre.i243 = load i32* %sv_flags, align 4, !tbaa !3
  %.pre403.i = load i64* %len.i225, align 8, !tbaa !4
  br label %cond.end.i247

cond.end.i247:                                    ; preds = %cond.false.i244, %cond.true.i241
  %180 = phi i64 [ %178, %cond.true.i241 ], [ %.pre403.i, %cond.false.i244 ]
  %181 = phi i32 [ %175, %cond.true.i241 ], [ %.pre.i243, %cond.false.i244 ]
  %cond.i245 = phi i8* [ %179, %cond.true.i241 ], [ %call.i242, %cond.false.i244 ]
  %and11.i = and i32 %181, 536870912
  %add.ptr.i246 = getelementptr inbounds i8* %cond.i245, i64 %180
  %tobool12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.i, label %if.then13.i249, label %if.else80.i

if.then13.i249:                                   ; preds = %cond.end.i247
  %182 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private14.i = getelementptr inbounds %struct.op* %182, i64 0, i32 7
  %183 = load i8* %op_private14.i, align 1, !tbaa !1
  %and16.i248 = and i8 %183, 8
  %tobool17.i = icmp eq i8 %and16.i248, 0
  %cmp50376.i = icmp sgt i64 %180, 0
  br i1 %tobool17.i, label %while.cond49.preheader.i, label %while.cond.preheader.i250

while.cond.preheader.i250:                        ; preds = %if.then13.i249
  br i1 %cmp50376.i, label %while.body.i254, label %if.end77.i

while.cond49.preheader.i:                         ; preds = %if.then13.i249
  br i1 %cmp50376.i, label %while.body52.i, label %if.end77.i

while.body.i254:                                  ; preds = %while.cond.preheader.i250, %if.end46.i
  %s.0386.i = phi i8* [ %incdec.ptr47.i, %if.end46.i ], [ %cond.i245, %while.cond.preheader.i250 ]
  %d.0385.i = phi i8* [ %d.1.i261, %if.end46.i ], [ %cond.i245, %while.cond.preheader.i250 ]
  %p.0384.i = phi i8* [ %p.1.i, %if.end46.i ], [ %add.ptr.i246, %while.cond.preheader.i250 ]
  %matches.0383.i = phi i32 [ %matches.1.i260, %if.end46.i ], [ 0, %while.cond.preheader.i250 ]
  %184 = load i8* %s.0386.i, align 1, !tbaa !1
  %idxprom.i251 = zext i8 %184 to i64
  %arrayidx.i252 = getelementptr inbounds i16* %174, i64 %idxprom.i251
  %185 = load i16* %arrayidx.i252, align 2, !tbaa !5
  %cmp22.i253 = icmp sgt i16 %185, -1
  br i1 %cmp22.i253, label %if.then24.i, label %if.else.i258

if.then24.i:                                      ; preds = %while.body.i254
  %conv25.i = trunc i16 %185 to i8
  store i8 %conv25.i, i8* %d.0385.i, align 1, !tbaa !1
  %inc.i255 = add nsw i32 %matches.0383.i, 1
  %add.ptr26.i = getelementptr inbounds i8* %d.0385.i, i64 -1
  %cmp27.i = icmp eq i8* %p.0384.i, %add.ptr26.i
  br i1 %cmp27.i, label %lor.lhs.false.i, label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.then24.i
  %186 = load i8* %p.0384.i, align 1, !tbaa !1
  %conv29.i = zext i8 %186 to i32
  %conv25.mask.i = and i16 %185, 255
  %conv30.i = zext i16 %conv25.mask.i to i32
  %cmp31.i256 = icmp eq i32 %conv29.i, %conv30.i
  br i1 %cmp31.i256, label %if.end46.i, label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false.i, %if.then24.i
  %incdec.ptr.i257 = getelementptr inbounds i8* %d.0385.i, i64 1
  br label %if.end46.i

if.else.i258:                                     ; preds = %while.body.i254
  switch i16 %185, label %if.end46.i [
    i16 -1, label %if.then37.i259
    i16 -2, label %if.then42.i
  ]

if.then37.i259:                                   ; preds = %if.else.i258
  %incdec.ptr38.i = getelementptr inbounds i8* %d.0385.i, i64 1
  store i8 %184, i8* %d.0385.i, align 1, !tbaa !1
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.else.i258
  %inc43.i = add nsw i32 %matches.0383.i, 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.then37.i259, %if.else.i258, %if.then33.i, %lor.lhs.false.i
  %matches.1.i260 = phi i32 [ %inc.i255, %if.then33.i ], [ %inc.i255, %lor.lhs.false.i ], [ %matches.0383.i, %if.then37.i259 ], [ %inc43.i, %if.then42.i ], [ %matches.0383.i, %if.else.i258 ]
  %p.1.i = phi i8* [ %d.0385.i, %if.then33.i ], [ %p.0384.i, %lor.lhs.false.i ], [ %p.0384.i, %if.then37.i259 ], [ %p.0384.i, %if.then42.i ], [ %p.0384.i, %if.else.i258 ]
  %d.1.i261 = phi i8* [ %incdec.ptr.i257, %if.then33.i ], [ %d.0385.i, %lor.lhs.false.i ], [ %incdec.ptr38.i, %if.then37.i259 ], [ %d.0385.i, %if.then42.i ], [ %d.0385.i, %if.else.i258 ]
  %incdec.ptr47.i = getelementptr inbounds i8* %s.0386.i, i64 1
  %cmp19.i = icmp ult i8* %incdec.ptr47.i, %add.ptr.i246
  br i1 %cmp19.i, label %while.body.i254, label %if.end77.i

while.body52.i:                                   ; preds = %while.cond49.preheader.i, %if.end74.i
  %s.1379.i = phi i8* [ %incdec.ptr75.i, %if.end74.i ], [ %cond.i245, %while.cond49.preheader.i ]
  %d.2378.i = phi i8* [ %d.3.i263, %if.end74.i ], [ %cond.i245, %while.cond49.preheader.i ]
  %matches.2377.i = phi i32 [ %matches.3.i262, %if.end74.i ], [ 0, %while.cond49.preheader.i ]
  %187 = load i8* %s.1379.i, align 1, !tbaa !1
  %idxprom53.i = zext i8 %187 to i64
  %arrayidx54.i = getelementptr inbounds i16* %174, i64 %idxprom53.i
  %188 = load i16* %arrayidx54.i, align 2, !tbaa !5
  %cmp56.i = icmp sgt i16 %188, -1
  br i1 %cmp56.i, label %if.then58.i, label %if.else62.i

if.then58.i:                                      ; preds = %while.body52.i
  %inc59.i = add nsw i32 %matches.2377.i, 1
  %conv60.i = trunc i16 %188 to i8
  %incdec.ptr61.i = getelementptr inbounds i8* %d.2378.i, i64 1
  store i8 %conv60.i, i8* %d.2378.i, align 1, !tbaa !1
  br label %if.end74.i

if.else62.i:                                      ; preds = %while.body52.i
  switch i16 %188, label %if.end74.i [
    i16 -1, label %if.then65.i
    i16 -2, label %if.then70.i
  ]

if.then65.i:                                      ; preds = %if.else62.i
  %incdec.ptr66.i = getelementptr inbounds i8* %d.2378.i, i64 1
  store i8 %187, i8* %d.2378.i, align 1, !tbaa !1
  br label %if.end74.i

if.then70.i:                                      ; preds = %if.else62.i
  %inc71.i = add nsw i32 %matches.2377.i, 1
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then70.i, %if.then65.i, %if.else62.i, %if.then58.i
  %matches.3.i262 = phi i32 [ %inc59.i, %if.then58.i ], [ %matches.2377.i, %if.then65.i ], [ %inc71.i, %if.then70.i ], [ %matches.2377.i, %if.else62.i ]
  %d.3.i263 = phi i8* [ %incdec.ptr61.i, %if.then58.i ], [ %incdec.ptr66.i, %if.then65.i ], [ %d.2378.i, %if.then70.i ], [ %d.2378.i, %if.else62.i ]
  %incdec.ptr75.i = getelementptr inbounds i8* %s.1379.i, i64 1
  %cmp50.i = icmp ult i8* %incdec.ptr75.i, %add.ptr.i246
  br i1 %cmp50.i, label %while.body52.i, label %if.end77.i

if.end77.i:                                       ; preds = %if.end46.i, %if.end74.i, %while.cond49.preheader.i, %while.cond.preheader.i250
  %matches.4.i = phi i32 [ 0, %while.cond49.preheader.i ], [ 0, %while.cond.preheader.i250 ], [ %matches.3.i262, %if.end74.i ], [ %matches.1.i260, %if.end46.i ]
  %d.4.i = phi i8* [ %cond.i245, %while.cond49.preheader.i ], [ %cond.i245, %while.cond.preheader.i250 ], [ %d.3.i263, %if.end74.i ], [ %d.1.i261, %if.end46.i ]
  store i8 0, i8* %d.4.i, align 1, !tbaa !1
  %sub.ptr.lhs.cast.i264 = ptrtoint i8* %d.4.i to i64
  %sub.ptr.rhs.cast.i265 = ptrtoint i8* %cond.i245 to i64
  %sub.ptr.sub.i266 = sub i64 %sub.ptr.lhs.cast.i264, %sub.ptr.rhs.cast.i265
  %sv_any78.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %189 = load i8** %sv_any78.i, align 8, !tbaa !0
  %xpv_cur79.i = getelementptr inbounds i8* %189, i64 8
  %190 = bitcast i8* %xpv_cur79.i to i64*
  store i64 %sub.ptr.sub.i266, i64* %190, align 8, !tbaa !4
  %.pre404.i = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end254.i

if.else80.i:                                      ; preds = %cond.end.i247
  %tobool81.i = icmp ne i32 %and.i228, 0
  br i1 %tobool81.i, label %if.then82.i, label %if.end86.i

if.then82.i:                                      ; preds = %if.else80.i
  %mul.i267 = shl i64 %180, 1
  %add375.i = or i64 %mul.i267, 1
  %call84.i = call i8* @Perl_safesysmalloc(i64 %add375.i) #4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then82.i, %if.else80.i
  %d.5.i268 = phi i8* [ %call84.i, %if.then82.i ], [ %cond.i245, %if.else80.i ]
  %tobool87.i = icmp ne i32 %and3.i229, 0
  %tobool88.i = icmp eq i32 %and6.i230, 0
  %191 = and i32 %conv51, 48
  %192 = icmp eq i32 %191, 32
  br i1 %192, label %if.then89.i, label %if.end92.i

if.then89.i:                                      ; preds = %if.end86.i
  %arrayidx90.i = getelementptr inbounds i8* %173, i64 512
  %193 = bitcast i8* %arrayidx90.i to i16*
  %194 = load i16* %193, align 2, !tbaa !5
  %conv91.i = sext i16 %194 to i64
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.end86.i, %if.then89.i
  %rlen.0.i = phi i64 [ %conv91.i, %if.then89.i ], [ 0, %if.end86.i ]
  %195 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private93.i = getelementptr inbounds %struct.op* %195, i64 0, i32 7
  %196 = load i8* %op_private93.i, align 1, !tbaa !1
  %and95.i = and i8 %196, 8
  %tobool96.i = icmp eq i8 %and95.i, 0
  %cmp181389.i = icmp sgt i64 %180, 0
  br i1 %tobool96.i, label %while.cond180.preheader.i, label %while.cond98.preheader.i

while.cond98.preheader.i:                         ; preds = %if.end92.i
  br i1 %cmp181389.i, label %while.body101.lr.ph.i, label %if.end240.i

while.body101.lr.ph.i:                            ; preds = %while.cond98.preheader.i
  %cmp115.i = icmp eq i64 %rlen.0.i, 0
  %add126.i = add i64 %rlen.0.i, 256
  br label %while.body101.i

while.cond180.preheader.i:                        ; preds = %if.end92.i
  br i1 %cmp181389.i, label %while.body183.lr.ph.i, label %if.end240.i

while.body183.lr.ph.i:                            ; preds = %while.cond180.preheader.i
  %add207.i = add i64 %rlen.0.i, 256
  %arrayidx208.i = getelementptr inbounds i16* %174, i64 %add207.i
  br label %while.body183.i

while.body101.i:                                  ; preds = %while.cond98.backedge.i, %while.body101.lr.ph.i
  %s.2400.i = phi i8* [ %cond.i245, %while.body101.lr.ph.i ], [ %s.2.be.i, %while.cond98.backedge.i ]
  %d.6399.i = phi i8* [ %d.5.i268, %while.body101.lr.ph.i ], [ %d.6.be.i, %while.cond98.backedge.i ]
  %pch.0398.i = phi i64 [ 4277009102, %while.body101.lr.ph.i ], [ %pch.0.be.i, %while.cond98.backedge.i ]
  %matches.5397.i = phi i32 [ 0, %while.body101.lr.ph.i ], [ %matches.5.be.i, %while.cond98.backedge.i ]
  %call103.i = call i64 @Perl_utf8_to_uvchr(i8* %s.2400.i, i64* %len102.i) #4
  %cmp104.i269 = icmp ugt i64 %call103.i, 255
  br i1 %cmp104.i269, label %if.then106.i270, label %if.else146.i

if.then106.i270:                                  ; preds = %while.body101.i
  br i1 %tobool87.i, label %if.else111.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.then106.i270
  %197 = load i64* %len102.i, align 8, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %d.6399.i, i8* %s.2400.i, i64 %197, i32 1, i1 false) #2
  %198 = load i64* %len102.i, align 8, !tbaa !4
  %add.ptr110.i = getelementptr inbounds i8* %d.6399.i, i64 %198
  br label %if.end176.i

if.else111.i:                                     ; preds = %if.then106.i270
  %inc112.i = add nsw i32 %matches.5397.i, 1
  br i1 %tobool88.i, label %if.then114.i, label %if.end176.i

if.then114.i:                                     ; preds = %if.else111.i
  br i1 %cmp115.i, label %cond.end132.i, label %cond.false118.i

cond.false118.i:                                  ; preds = %if.then114.i
  %sub.i = add i64 %call103.i, -256
  %cmp119.i = icmp ult i64 %sub.i, %rlen.0.i
  %add122.i = add i64 %call103.i, 1
  %add122.pn.i = select i1 %cmp119.i, i64 %add122.i, i64 %add126.i
  %.sink.in.i = getelementptr inbounds i16* %174, i64 %add122.pn.i
  %.sink.i = load i16* %.sink.in.i, align 2
  %conv131.i = sext i16 %.sink.i to i64
  br label %cond.end132.i

cond.end132.i:                                    ; preds = %cond.false118.i, %if.then114.i
  %cond133.i = phi i64 [ %conv131.i, %cond.false118.i ], [ %call103.i, %if.then114.i ]
  %sext.i = shl i64 %cond133.i, 32
  %conv135.i = ashr exact i64 %sext.i, 32
  %cmp136.i = icmp eq i64 %conv135.i, %pch.0398.i
  br i1 %cmp136.i, label %if.end142.i, label %if.then138.i

if.then138.i:                                     ; preds = %cond.end132.i
  %call140.i = call i8* @Perl_uvuni_to_utf8(i8* %d.6399.i, i64 %conv135.i) #4
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then138.i, %cond.end132.i
  %pch.1.i = phi i64 [ %conv135.i, %if.then138.i ], [ %pch.0398.i, %cond.end132.i ]
  %d.7.i = phi i8* [ %call140.i, %if.then138.i ], [ %d.6399.i, %cond.end132.i ]
  %199 = load i64* %len102.i, align 8, !tbaa !4
  %add.ptr143.i = getelementptr inbounds i8* %s.2400.i, i64 %199
  br label %while.cond98.backedge.i

while.cond98.backedge.i:                          ; preds = %if.end176.i, %if.end160.i, %if.end142.i
  %matches.5.be.i = phi i32 [ %matches.6.i, %if.end176.i ], [ %inc112.i, %if.end142.i ], [ %inc152.i, %if.end160.i ]
  %pch.0.be.i = phi i64 [ 4277009102, %if.end176.i ], [ %pch.1.i, %if.end142.i ], [ %pch.2.i, %if.end160.i ]
  %d.6.be.i = phi i8* [ %d.9.i, %if.end176.i ], [ %d.7.i, %if.end142.i ], [ %d.8.i, %if.end160.i ]
  %s.2.be.i = phi i8* [ %add.ptr177.i272, %if.end176.i ], [ %add.ptr143.i, %if.end142.i ], [ %add.ptr161.i, %if.end160.i ]
  %cmp99.i = icmp ult i8* %s.2.be.i, %add.ptr.i246
  br i1 %cmp99.i, label %while.body101.i, label %if.end240.i

if.else146.i:                                     ; preds = %while.body101.i
  %arrayidx147.i = getelementptr inbounds i16* %174, i64 %call103.i
  %200 = load i16* %arrayidx147.i, align 2, !tbaa !5
  %cmp149.i = icmp sgt i16 %200, -1
  br i1 %cmp149.i, label %if.then151.i, label %if.else162.i

if.then151.i:                                     ; preds = %if.else146.i
  %inc152.i = add nsw i32 %matches.5397.i, 1
  %conv153.i = sext i16 %200 to i64
  %cmp154.i = icmp eq i64 %conv153.i, %pch.0398.i
  br i1 %cmp154.i, label %if.end160.i, label %if.then156.i

if.then156.i:                                     ; preds = %if.then151.i
  %call158.i = call i8* @Perl_uvuni_to_utf8(i8* %d.6399.i, i64 %conv153.i) #4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then156.i, %if.then151.i
  %pch.2.i = phi i64 [ %conv153.i, %if.then156.i ], [ %pch.0398.i, %if.then151.i ]
  %d.8.i = phi i8* [ %call158.i, %if.then156.i ], [ %d.6399.i, %if.then151.i ]
  %201 = load i64* %len102.i, align 8, !tbaa !4
  %add.ptr161.i = getelementptr inbounds i8* %s.2400.i, i64 %201
  br label %while.cond98.backedge.i

if.else162.i:                                     ; preds = %if.else146.i
  switch i16 %200, label %if.end176.i [
    i16 -1, label %if.then165.i
    i16 -2, label %if.then171.i271
  ]

if.then165.i:                                     ; preds = %if.else162.i
  %202 = load i64* %len102.i, align 8, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %d.6399.i, i8* %s.2400.i, i64 %202, i32 1, i1 false) #2
  %203 = load i64* %len102.i, align 8, !tbaa !4
  %add.ptr167.i = getelementptr inbounds i8* %d.6399.i, i64 %203
  br label %if.end176.i

if.then171.i271:                                  ; preds = %if.else162.i
  %inc172.i = add nsw i32 %matches.5397.i, 1
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.else162.i, %if.else111.i, %if.then171.i271, %if.then165.i, %if.then108.i
  %matches.6.i = phi i32 [ %matches.5397.i, %if.then108.i ], [ %matches.5397.i, %if.then165.i ], [ %inc172.i, %if.then171.i271 ], [ %inc112.i, %if.else111.i ], [ %matches.5397.i, %if.else162.i ]
  %d.9.i = phi i8* [ %add.ptr110.i, %if.then108.i ], [ %add.ptr167.i, %if.then165.i ], [ %d.6399.i, %if.then171.i271 ], [ %d.6399.i, %if.else111.i ], [ %d.6399.i, %if.else162.i ]
  %204 = load i64* %len102.i, align 8, !tbaa !4
  %add.ptr177.i272 = getelementptr inbounds i8* %s.2400.i, i64 %204
  br label %while.cond98.backedge.i

while.body183.i:                                  ; preds = %if.end237.i, %while.body183.lr.ph.i
  %s.3392.i = phi i8* [ %cond.i245, %while.body183.lr.ph.i ], [ %add.ptr238.i, %if.end237.i ]
  %d.10391.i = phi i8* [ %d.5.i268, %while.body183.lr.ph.i ], [ %d.11.i, %if.end237.i ]
  %matches.7390.i = phi i32 [ 0, %while.body183.lr.ph.i ], [ %matches.8.i, %if.end237.i ]
  %call186.i = call i64 @Perl_utf8_to_uvchr(i8* %s.3392.i, i64* %len184.i) #4
  %cmp187.i = icmp ugt i64 %call186.i, 255
  br i1 %cmp187.i, label %if.then189.i, label %if.else214.i

if.then189.i:                                     ; preds = %while.body183.i
  br i1 %tobool87.i, label %if.else194.i, label %if.then191.i

if.then191.i:                                     ; preds = %if.then189.i
  %205 = load i64* %len184.i, align 8, !tbaa !4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %d.10391.i, i8* %s.3392.i, i64 %205, i32 1, i1 false) #2
  %206 = load i64* %len184.i, align 8, !tbaa !4
  %add.ptr193.i = getelementptr inbounds i8* %d.10391.i, i64 %206
  br label %if.end237.i

if.else194.i:                                     ; preds = %if.then189.i
  %inc195.i = add nsw i32 %matches.7390.i, 1
  br i1 %tobool88.i, label %if.then197.i, label %if.end237.i

if.then197.i:                                     ; preds = %if.else194.i
  %sub198.i = add i64 %call186.i, -256
  %cmp199.i = icmp ult i64 %sub198.i, %rlen.0.i
  br i1 %cmp199.i, label %if.then201.i, label %if.else206.i

if.then201.i:                                     ; preds = %if.then197.i
  %add202.i = add i64 %call186.i, 1
  %arrayidx203.i = getelementptr inbounds i16* %174, i64 %add202.i
  %207 = load i16* %arrayidx203.i, align 2, !tbaa !5
  %conv204.i = sext i16 %207 to i64
  %call205.i = call i8* @Perl_uvuni_to_utf8(i8* %d.10391.i, i64 %conv204.i) #4
  br label %if.end237.i

if.else206.i:                                     ; preds = %if.then197.i
  %208 = load i16* %arrayidx208.i, align 2, !tbaa !5
  %conv209.i = sext i16 %208 to i64
  %call210.i = call i8* @Perl_uvuni_to_utf8(i8* %d.10391.i, i64 %conv209.i) #4
  br label %if.end237.i

if.else214.i:                                     ; preds = %while.body183.i
  %arrayidx215.i = getelementptr inbounds i16* %174, i64 %call186.i
  %209 = load i16* %arrayidx215.i, align 2, !tbaa !5
  %cmp217.i = icmp sgt i16 %209, -1
  br i1 %cmp217.i, label %if.then219.i, label %if.else223.i

if.then219.i:                                     ; preds = %if.else214.i
  %conv220.i = sext i16 %209 to i64
  %call221.i = call i8* @Perl_uvuni_to_utf8(i8* %d.10391.i, i64 %conv220.i) #4
  %inc222.i = add nsw i32 %matches.7390.i, 1
  br label %if.end237.i

if.else223.i:                                     ; preds = %if.else214.i
  switch i16 %209, label %if.end237.i [
    i16 -1, label %if.then226.i
    i16 -2, label %if.then232.i
  ]

if.then226.i:                                     ; preds = %if.else223.i
  %210 = load i64* %len184.i, align 8, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %d.10391.i, i8* %s.3392.i, i64 %210, i32 1, i1 false) #2
  %211 = load i64* %len184.i, align 8, !tbaa !4
  %add.ptr228.i = getelementptr inbounds i8* %d.10391.i, i64 %211
  br label %if.end237.i

if.then232.i:                                     ; preds = %if.else223.i
  %inc233.i = add nsw i32 %matches.7390.i, 1
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.else223.i, %if.else194.i, %if.then232.i, %if.then226.i, %if.then219.i, %if.else206.i, %if.then201.i, %if.then191.i
  %matches.8.i = phi i32 [ %inc195.i, %if.then201.i ], [ %inc195.i, %if.else206.i ], [ %matches.7390.i, %if.then191.i ], [ %inc222.i, %if.then219.i ], [ %matches.7390.i, %if.then226.i ], [ %inc233.i, %if.then232.i ], [ %inc195.i, %if.else194.i ], [ %matches.7390.i, %if.else223.i ]
  %d.11.i = phi i8* [ %call205.i, %if.then201.i ], [ %call210.i, %if.else206.i ], [ %add.ptr193.i, %if.then191.i ], [ %call221.i, %if.then219.i ], [ %add.ptr228.i, %if.then226.i ], [ %d.10391.i, %if.then232.i ], [ %d.10391.i, %if.else194.i ], [ %d.10391.i, %if.else223.i ]
  %212 = load i64* %len184.i, align 8, !tbaa !4
  %add.ptr238.i = getelementptr inbounds i8* %s.3392.i, i64 %212
  %cmp181.i = icmp ult i8* %add.ptr238.i, %add.ptr.i246
  br i1 %cmp181.i, label %while.body183.i, label %if.end240.i

if.end240.i:                                      ; preds = %while.cond98.backedge.i, %if.end237.i, %while.cond180.preheader.i, %while.cond98.preheader.i
  %matches.9.i = phi i32 [ 0, %while.cond180.preheader.i ], [ 0, %while.cond98.preheader.i ], [ %matches.8.i, %if.end237.i ], [ %matches.5.be.i, %while.cond98.backedge.i ]
  %d.12.i = phi i8* [ %d.5.i268, %while.cond180.preheader.i ], [ %d.5.i268, %while.cond98.preheader.i ], [ %d.11.i, %if.end237.i ], [ %d.6.be.i, %while.cond98.backedge.i ]
  br i1 %tobool81.i, label %if.then242.i, label %if.else246.i

if.then242.i:                                     ; preds = %if.end240.i
  %sub.ptr.lhs.cast243.i = ptrtoint i8* %d.12.i to i64
  %sub.ptr.rhs.cast244.i = ptrtoint i8* %d.5.i268 to i64
  %sub.ptr.sub245.i = sub i64 %sub.ptr.lhs.cast243.i, %sub.ptr.rhs.cast244.i
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %d.5.i268, i64 %sub.ptr.sub245.i) #4
  call void @Perl_safesysfree(i8* %d.5.i268) #4
  br label %if.end252.i

if.else246.i:                                     ; preds = %if.end240.i
  store i8 0, i8* %d.12.i, align 1, !tbaa !1
  %sub.ptr.lhs.cast247.i = ptrtoint i8* %d.12.i to i64
  %sub.ptr.rhs.cast248.i = ptrtoint i8* %d.5.i268 to i64
  %sub.ptr.sub249.i = sub i64 %sub.ptr.lhs.cast247.i, %sub.ptr.rhs.cast248.i
  %sv_any250.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %213 = load i8** %sv_any250.i, align 8, !tbaa !0
  %xpv_cur251.i = getelementptr inbounds i8* %213, i64 8
  %214 = bitcast i8* %xpv_cur251.i to i64*
  store i64 %sub.ptr.sub249.i, i64* %214, align 8, !tbaa !4
  br label %if.end252.i

if.end252.i:                                      ; preds = %if.else246.i, %if.then242.i
  %215 = load i32* %sv_flags, align 4, !tbaa !3
  %or.i273 = or i32 %215, 536870912
  store i32 %or.i273, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.end252.i, %if.end77.i
  %216 = phi i32 [ %or.i273, %if.end252.i ], [ %.pre404.i, %if.end77.i ]
  %matches.10.i = phi i32 [ %matches.9.i, %if.end252.i ], [ %matches.4.i, %if.end77.i ]
  %and256.i = and i32 %216, 16384
  %tobool257.i = icmp eq i32 %and256.i, 0
  br i1 %tobool257.i, label %return, label %if.then258.i

if.then258.i:                                     ; preds = %if.end254.i
  %call259.i = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %return

return:                                           ; preds = %if.end35.i, %while.body.i181, %if.then258.i, %if.end254.i, %if.then251.i, %if.end246.i, %while.cond.preheader.i176, %while.cond15.preheader.i, %if.then47.i, %while.end45.i, %if.then68.i, %if.end63.i, %if.then20.i, %while.end.i, %cond.end, %S_do_trans_simple_utf8.exit
  %retval.0 = phi i32 [ %matches.0.i, %S_do_trans_simple_utf8.exit ], [ 0, %cond.end ], [ %matches.0.ph122.i, %while.end.i ], [ %matches.0.ph122.i, %if.then20.i ], [ %matches.1.ph128.i, %if.end63.i ], [ %matches.1.ph128.i, %if.then68.i ], [ %matches.0.lcssa.i, %while.end45.i ], [ %matches.0.lcssa.i, %if.then47.i ], [ 0, %while.cond.preheader.i176 ], [ 0, %while.cond15.preheader.i ], [ %matches.2.i223, %if.end246.i ], [ %matches.2.i223, %if.then251.i ], [ %matches.10.i, %if.end254.i ], [ %matches.10.i, %if.then258.i ], [ %inc.matches.0.i, %while.body.i181 ], [ %matches.2.i, %if.end35.i ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_force_normal(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_join(%struct.sv* %sv, %struct.sv* %del, %struct.sv** %mark, %struct.sv** %sp) #0 {
entry:
  %delimlen = alloca i64, align 8
  %tmplen = alloca i64, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %sp to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %mark to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div156 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div156 to i32
  %sv_flags = getelementptr inbounds %struct.sv* %del, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %del, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %delimlen, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %del, i64* %delimlen, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %incdec.ptr = getelementptr inbounds %struct.sv** %mark, i64 1
  %cmp3 = icmp sgt i32 %conv, 0
  br i1 %cmp3, label %cond.true5, label %cond.end8

cond.true5:                                       ; preds = %cond.end
  %4 = load i64* %delimlen, align 8, !tbaa !4
  %sub = shl i64 %sub.ptr.sub, 29
  %sext157 = add i64 %sub, -4294967296
  %conv6 = ashr exact i64 %sext157, 32
  %mul = mul i64 %4, %conv6
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true5
  %cond9 = phi i64 [ %mul, %cond.true5 ], [ 0, %cond.end ]
  %sv_flags10 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %5 = load i32* %sv_flags10, align 4, !tbaa !3
  %and11 = and i32 %5, 252
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end8
  %call14 = call signext i8 @Perl_sv_upgrade(%struct.sv* %sv, i32 4) #4
  br label %lor.end

lor.end:                                          ; preds = %cond.end8, %lor.rhs
  %sv_any16 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %6 = load i8** %sv_any16, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %6, i64 16
  %7 = bitcast i8* %xpv_len to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  %sext = shl i64 %sub.ptr.sub, 29
  %conv17 = ashr exact i64 %sext, 32
  %add = add i64 %cond9, %conv17
  %cmp18 = icmp ult i64 %8, %add
  br i1 %cmp18, label %while.cond.preheader, label %if.end65

while.cond.preheader:                             ; preds = %lor.end
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %if.end
  %dec170.in = phi i32 [ %dec170, %if.end ], [ %conv, %while.cond.preheader ]
  %len.0169 = phi i64 [ %len.1, %if.end ], [ %cond9, %while.cond.preheader ]
  %mark.addr.0168 = phi %struct.sv** [ %incdec.ptr45, %if.end ], [ %incdec.ptr, %while.cond.preheader ]
  %dec170 = add nsw i32 %dec170.in, -1
  %9 = load %struct.sv** %mark.addr.0168, align 8, !tbaa !0
  %tobool22 = icmp eq %struct.sv* %9, null
  br i1 %tobool22, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %sv_flags23 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags23, align 4, !tbaa !3
  %and24 = and i32 %10, 268443648
  %tobool25 = icmp ne i32 %and24, 0
  %and28 = and i32 %10, 118423552
  %tobool29 = icmp eq i32 %and28, 0
  %or.cond158 = or i1 %tobool25, %tobool29
  br i1 %or.cond158, label %if.end, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %and32 = and i32 %10, 262144
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %cond.false40, label %cond.true35

cond.true35:                                      ; preds = %if.then30
  %sv_any36 = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %11 = load i8** %sv_any36, align 8, !tbaa !0
  %xpv_cur37 = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur37 to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %tmplen, align 8, !tbaa !4
  br label %cond.end42

cond.false40:                                     ; preds = %if.then30
  %call41 = call i8* @Perl_sv_2pv_flags(%struct.sv* %9, i64* %tmplen, i32 2) #4
  %.pre172 = load i64* %tmplen, align 8, !tbaa !4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true35
  %14 = phi i64 [ %.pre172, %cond.false40 ], [ %13, %cond.true35 ]
  %add44 = add i64 %14, %len.0169
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body, %cond.end42
  %len.1 = phi i64 [ %len.0169, %land.lhs.true ], [ %add44, %cond.end42 ], [ %len.0169, %while.body ]
  %incdec.ptr45 = getelementptr inbounds %struct.sv** %mark.addr.0168, i64 1
  %cmp20 = icmp sgt i32 %dec170, 0
  br i1 %cmp20, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %if.end
  %.pre = load i8** %sv_any16, align 8, !tbaa !0
  %xpv_len47.phi.trans.insert = getelementptr inbounds i8* %.pre, i64 16
  %.phi.trans.insert = bitcast i8* %xpv_len47.phi.trans.insert to i64*
  %.pre171 = load i64* %.phi.trans.insert, align 8, !tbaa !4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %15 = phi i64 [ %.pre171, %while.cond.while.end_crit_edge ], [ %8, %while.cond.preheader ]
  %len.0.lcssa = phi i64 [ %len.1, %while.cond.while.end_crit_edge ], [ %cond9, %while.cond.preheader ]
  %add48 = add i64 %len.0.lcssa, 1
  %cmp49 = icmp ult i64 %15, %add48
  br i1 %cmp49, label %cond.true51, label %if.end65

cond.true51:                                      ; preds = %while.end
  %call53 = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add48) #4
  br label %if.end65

if.end65:                                         ; preds = %cond.true51, %while.end, %lor.end
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 0) #4
  %16 = load i32* %sv_flags10, align 4, !tbaa !3
  %and67 = and i32 %16, -536870913
  store i32 %and67, i32* %sv_flags10, align 4, !tbaa !3
  %17 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool69 = icmp eq i8 %17, 0
  br i1 %tobool69, label %if.end78, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end65
  %and72 = and i32 %16, 57344
  %tobool73 = icmp eq i32 %and72, 0
  br i1 %tobool73, label %if.end78, label %if.then76

if.then76:                                        ; preds = %land.lhs.true70
  call void @Perl_sv_untaint(%struct.sv* %sv) #4
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true70, %if.end65, %if.then76
  %dec79 = add nsw i32 %conv, -1
  br i1 %cmp3, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end78
  %18 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %tobool83 = icmp eq %struct.sv* %18, null
  br i1 %tobool83, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.then82
  call void @Perl_sv_catsv_flags(%struct.sv* %sv, %struct.sv* %18, i32 2) #4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.then84
  %incdec.ptr86 = getelementptr inbounds %struct.sv** %mark, i64 2
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end78
  %mark.addr.2 = phi %struct.sv** [ %incdec.ptr86, %if.end85 ], [ %incdec.ptr, %if.end78 ]
  %19 = load i64* %delimlen, align 8, !tbaa !4
  %tobool88 = icmp eq i64 %19, 0
  %cmp95159 = icmp sgt i32 %dec79, 0
  br i1 %tobool88, label %for.cond94.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end87
  br i1 %cmp95159, label %for.body, label %if.end102

for.cond94.preheader:                             ; preds = %if.end87
  br i1 %cmp95159, label %for.body97, label %if.end102

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %items.2165 = phi i32 [ %dec92, %for.body ], [ %dec79, %for.cond.preheader ]
  %mark.addr.3164 = phi %struct.sv** [ %incdec.ptr93, %for.body ], [ %mark.addr.2, %for.cond.preheader ]
  call void @Perl_sv_catsv_flags(%struct.sv* %sv, %struct.sv* %del, i32 2) #4
  %20 = load %struct.sv** %mark.addr.3164, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %sv, %struct.sv* %20, i32 2) #4
  %dec92 = add nsw i32 %items.2165, -1
  %incdec.ptr93 = getelementptr inbounds %struct.sv** %mark.addr.3164, i64 1
  %cmp90 = icmp sgt i32 %dec92, 0
  br i1 %cmp90, label %for.body, label %if.end102

for.body97:                                       ; preds = %for.cond94.preheader, %for.body97
  %items.3161 = phi i32 [ %dec99, %for.body97 ], [ %dec79, %for.cond94.preheader ]
  %mark.addr.4160 = phi %struct.sv** [ %incdec.ptr100, %for.body97 ], [ %mark.addr.2, %for.cond94.preheader ]
  %21 = load %struct.sv** %mark.addr.4160, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %sv, %struct.sv* %21, i32 2) #4
  %dec99 = add nsw i32 %items.3161, -1
  %incdec.ptr100 = getelementptr inbounds %struct.sv** %mark.addr.4160, i64 1
  %cmp95 = icmp sgt i32 %dec99, 0
  br i1 %cmp95, label %for.body97, label %if.end102

if.end102:                                        ; preds = %for.cond.preheader, %for.body, %for.cond94.preheader, %for.body97
  %22 = load i32* %sv_flags10, align 4, !tbaa !3
  %and104 = and i32 %22, 16384
  %tobool105 = icmp eq i32 %and104, 0
  br i1 %tobool105, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end102
  %call107 = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %if.end108

if.end108:                                        ; preds = %if.end102, %if.then106
  ret void
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_untaint(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_sprintf(%struct.sv* %sv, i32 %len, %struct.sv** %sarg) #0 {
entry:
  %patlen = alloca i64, align 8
  %do_taint = alloca i8, align 1
  %0 = load %struct.sv** %sarg, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  store i64 %4, i64* %patlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %2 to i8**
  %5 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %0, i64* %patlen, i32 2) #4
  %.pre = load %struct.sv** %sarg, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = phi %struct.sv* [ %0, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %5, %cond.true ], [ %call, %cond.false ]
  store i8 0, i8* %do_taint, align 1, !tbaa !1
  %sv_flags2 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %7 = load i32* %sv_flags2, align 4, !tbaa !3
  %and3 = and i32 %7, -536870913
  store i32 %and3, i32* %sv_flags2, align 4, !tbaa !3
  %sv_flags4 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %8 = load i32* %sv_flags4, align 4, !tbaa !3
  %and5 = and i32 %8, 536870912
  %tobool = icmp eq i32 %and5, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %9, i64 0, i32 7
  %10 = load i8* %op_private, align 1, !tbaa !1
  %and6 = and i8 %10, 8
  %tobool7 = icmp eq i8 %and6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %7, 536870912
  store i32 %or, i32* %sv_flags2, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %cond.end, %if.then
  %11 = load i64* %patlen, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.sv** %sarg, i64 1
  %sub = add nsw i32 %len, -1
  call void @Perl_sv_vsetpvfn(%struct.sv* %sv, i8* %cond, i64 %11, [1 x %struct.__va_list_tag]* null, %struct.sv** %add.ptr, i32 %sub, i8* %do_taint) #4
  %12 = load i32* %sv_flags2, align 4, !tbaa !3
  %and10 = and i32 %12, 16384
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then12
  %13 = load i8* %do_taint, align 1, !tbaa !1
  %tobool15 = icmp ne i8 %13, 0
  %14 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool17 = icmp ne i8 %14, 0
  %or.cond = and i1 %tobool15, %tobool17
  br i1 %or.cond, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @Perl_sv_taint(%struct.sv* %sv) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_vsetpvfn(%struct.sv*, i8*, i64, [1 x %struct.__va_list_tag]*, %struct.sv**, i32, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_do_vecget(%struct.sv* %sv, i32 %offset, i32 %size) #0 {
entry:
  %srclen = alloca i64, align 8
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
  store i64 %3, i64* %srclen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %srclen, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %cmp2 = icmp slt i32 %offset, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %cond.end
  %cmp3 = icmp slt i32 %size, 1
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %sub = add nsw i32 %size, -1
  %and4 = and i32 %sub, %size
  %tobool = icmp eq i32 %and4, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end6

if.end6:                                          ; preds = %lor.lhs.false, %if.then5
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and8 = and i32 %5, 536870912
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end6
  %call11 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %sv, i8 signext 1) #4
  br label %if.end12

if.end12:                                         ; preds = %if.end6, %if.then10
  %mul = mul nsw i32 %size, %offset
  %add = add i32 %size, 7
  %add13 = add i32 %add, %mul
  %div = sdiv i32 %add13, 8
  %conv = sext i32 %div to i64
  %6 = load i64* %srclen, align 8, !tbaa !4
  %cmp14 = icmp ugt i64 %conv, %6
  br i1 %cmp14, label %if.then16, label %if.else324

if.then16:                                        ; preds = %if.end12
  %cmp17 = icmp slt i32 %size, 9
  br i1 %cmp17, label %return, label %if.else

if.else:                                          ; preds = %if.then16
  %shr = ashr i32 %mul, 3
  switch i32 %size, label %return [
    i32 16, label %if.then22
    i32 32, label %if.then33
    i32 64, label %if.then88
  ]

if.then22:                                        ; preds = %if.else
  %conv23 = sext i32 %shr to i64
  %cmp24 = icmp ult i64 %conv23, %6
  br i1 %cmp24, label %if.else27, label %return

if.else27:                                        ; preds = %if.then22
  %arrayidx = getelementptr inbounds i8* %cond, i64 %conv23
  %7 = load i8* %arrayidx, align 1, !tbaa !1
  %conv28 = zext i8 %7 to i64
  %shl = shl nuw nsw i64 %conv28, 8
  br label %return

if.then33:                                        ; preds = %if.else
  %conv34 = sext i32 %shr to i64
  %cmp35 = icmp ult i64 %conv34, %6
  br i1 %cmp35, label %if.else38, label %return

if.else38:                                        ; preds = %if.then33
  %add39 = add nsw i32 %shr, 1
  %conv40 = sext i32 %add39 to i64
  %cmp41 = icmp ult i64 %conv40, %6
  br i1 %cmp41, label %if.else48, label %if.then43

if.then43:                                        ; preds = %if.else38
  %arrayidx45 = getelementptr inbounds i8* %cond, i64 %conv34
  %8 = load i8* %arrayidx45, align 1, !tbaa !1
  %conv46 = zext i8 %8 to i64
  %shl47 = shl nuw nsw i64 %conv46, 24
  br label %return

if.else48:                                        ; preds = %if.else38
  %add49 = add nsw i32 %shr, 2
  %conv50 = sext i32 %add49 to i64
  %cmp51 = icmp ult i64 %conv50, %6
  %arrayidx55 = getelementptr inbounds i8* %cond, i64 %conv34
  %9 = load i8* %arrayidx55, align 1, !tbaa !1
  %conv56 = zext i8 %9 to i64
  %shl57 = shl nuw nsw i64 %conv56, 24
  %arrayidx60 = getelementptr inbounds i8* %cond, i64 %conv40
  %10 = load i8* %arrayidx60, align 1, !tbaa !1
  %conv61 = zext i8 %10 to i64
  %shl62 = shl nuw nsw i64 %conv61, 16
  %add63 = or i64 %shl62, %shl57
  br i1 %cmp51, label %if.else64, label %return

if.else64:                                        ; preds = %if.else48
  %arrayidx77 = getelementptr inbounds i8* %cond, i64 %conv50
  %11 = load i8* %arrayidx77, align 1, !tbaa !1
  %conv78 = zext i8 %11 to i64
  %shl79 = shl nuw nsw i64 %conv78, 8
  %add81 = or i64 %shl79, %add63
  br label %return

if.then88:                                        ; preds = %if.else
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp89 = icmp eq %struct.sv* %13, null
  br i1 %cmp89, label %lor.lhs.false106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then88
  %14 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings91 = getelementptr inbounds %struct.cop* %14, i64 0, i32 14
  %15 = load %struct.sv** %cop_warnings91, align 8, !tbaa !0
  %cmp92 = icmp eq %struct.sv* %15, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp92, label %lor.lhs.false106, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings95 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings95, align 8, !tbaa !0
  %cmp96 = icmp eq %struct.sv* %17, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp96, label %if.then114, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true94
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings99 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings99, align 8, !tbaa !0
  %sv_any100 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %20 = load i8** %sv_any100, align 8, !tbaa !0
  %xpv_pv101 = bitcast i8* %20 to i8**
  %21 = load i8** %xpv_pv101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i8* %21, i64 4
  %22 = load i8* %arrayidx102, align 1, !tbaa !1
  %and104 = and i8 %22, 4
  %tobool105 = icmp eq i8 %and104, 0
  br i1 %tobool105, label %lor.lhs.false106, label %if.then114

lor.lhs.false106:                                 ; preds = %lor.lhs.false98, %land.lhs.true, %if.then88
  %23 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings107 = getelementptr inbounds %struct.cop* %23, i64 0, i32 14
  %24 = load %struct.sv** %cop_warnings107, align 8, !tbaa !0
  %cmp108 = icmp eq %struct.sv* %24, null
  br i1 %cmp108, label %land.lhs.true110, label %if.end115

land.lhs.true110:                                 ; preds = %lor.lhs.false106
  %25 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and112 = and i8 %25, 1
  %tobool113 = icmp eq i8 %and112, 0
  br i1 %tobool113, label %if.end115, label %if.then114

if.then114:                                       ; preds = %lor.lhs.false98, %land.lhs.true110, %land.lhs.true94
  call void (i32, i8*, ...)* @Perl_warner(i32 17, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end115

if.end115:                                        ; preds = %land.lhs.true110, %if.then114, %lor.lhs.false106
  %conv116 = sext i32 %shr to i64
  %26 = load i64* %srclen, align 8, !tbaa !4
  %cmp117 = icmp ult i64 %conv116, %26
  br i1 %cmp117, label %if.else120, label %return

if.else120:                                       ; preds = %if.end115
  %add121 = add nsw i32 %shr, 1
  %conv122 = sext i32 %add121 to i64
  %cmp123 = icmp ult i64 %conv122, %26
  br i1 %cmp123, label %if.else130, label %if.then125

if.then125:                                       ; preds = %if.else120
  %arrayidx127 = getelementptr inbounds i8* %cond, i64 %conv116
  %27 = load i8* %arrayidx127, align 1, !tbaa !1
  %conv128 = zext i8 %27 to i64
  %shl129 = shl nuw i64 %conv128, 56
  br label %return

if.else130:                                       ; preds = %if.else120
  %add131 = add nsw i32 %shr, 2
  %conv132 = sext i32 %add131 to i64
  %cmp133 = icmp ult i64 %conv132, %26
  br i1 %cmp133, label %if.else146, label %if.then135

if.then135:                                       ; preds = %if.else130
  %arrayidx137 = getelementptr inbounds i8* %cond, i64 %conv116
  %28 = load i8* %arrayidx137, align 1, !tbaa !1
  %conv138 = zext i8 %28 to i64
  %shl139 = shl nuw i64 %conv138, 56
  %arrayidx142 = getelementptr inbounds i8* %cond, i64 %conv122
  %29 = load i8* %arrayidx142, align 1, !tbaa !1
  %conv143 = zext i8 %29 to i64
  %shl144 = shl nuw nsw i64 %conv143, 48
  %add145 = or i64 %shl144, %shl139
  br label %return

if.else146:                                       ; preds = %if.else130
  %add147 = add nsw i32 %shr, 3
  %conv148 = sext i32 %add147 to i64
  %cmp149 = icmp ult i64 %conv148, %26
  br i1 %cmp149, label %if.else168, label %if.then151

if.then151:                                       ; preds = %if.else146
  %arrayidx153 = getelementptr inbounds i8* %cond, i64 %conv116
  %30 = load i8* %arrayidx153, align 1, !tbaa !1
  %conv154 = zext i8 %30 to i64
  %shl155 = shl nuw i64 %conv154, 56
  %arrayidx158 = getelementptr inbounds i8* %cond, i64 %conv122
  %31 = load i8* %arrayidx158, align 1, !tbaa !1
  %conv159 = zext i8 %31 to i64
  %shl160 = shl nuw nsw i64 %conv159, 48
  %add161 = or i64 %shl160, %shl155
  %arrayidx164 = getelementptr inbounds i8* %cond, i64 %conv132
  %32 = load i8* %arrayidx164, align 1, !tbaa !1
  %conv165 = zext i8 %32 to i64
  %shl166 = shl nuw nsw i64 %conv165, 40
  %add167 = or i64 %add161, %shl166
  br label %return

if.else168:                                       ; preds = %if.else146
  %add169 = add nsw i32 %shr, 4
  %conv170 = sext i32 %add169 to i64
  %cmp171 = icmp ult i64 %conv170, %26
  br i1 %cmp171, label %if.else196, label %if.then173

if.then173:                                       ; preds = %if.else168
  %arrayidx175 = getelementptr inbounds i8* %cond, i64 %conv116
  %33 = load i8* %arrayidx175, align 1, !tbaa !1
  %conv176 = zext i8 %33 to i64
  %shl177 = shl nuw i64 %conv176, 56
  %arrayidx180 = getelementptr inbounds i8* %cond, i64 %conv122
  %34 = load i8* %arrayidx180, align 1, !tbaa !1
  %conv181 = zext i8 %34 to i64
  %shl182 = shl nuw nsw i64 %conv181, 48
  %add183 = or i64 %shl182, %shl177
  %arrayidx186 = getelementptr inbounds i8* %cond, i64 %conv132
  %35 = load i8* %arrayidx186, align 1, !tbaa !1
  %conv187 = zext i8 %35 to i64
  %shl188 = shl nuw nsw i64 %conv187, 40
  %add189 = or i64 %add183, %shl188
  %arrayidx192 = getelementptr inbounds i8* %cond, i64 %conv148
  %36 = load i8* %arrayidx192, align 1, !tbaa !1
  %conv193 = zext i8 %36 to i64
  %shl194 = shl nuw nsw i64 %conv193, 32
  %add195 = or i64 %add189, %shl194
  br label %return

if.else196:                                       ; preds = %if.else168
  %add197 = add nsw i32 %shr, 5
  %conv198 = sext i32 %add197 to i64
  %cmp199 = icmp ult i64 %conv198, %26
  br i1 %cmp199, label %if.else231, label %if.then201

if.then201:                                       ; preds = %if.else196
  %arrayidx203 = getelementptr inbounds i8* %cond, i64 %conv116
  %37 = load i8* %arrayidx203, align 1, !tbaa !1
  %conv204 = zext i8 %37 to i64
  %shl205 = shl nuw i64 %conv204, 56
  %arrayidx208 = getelementptr inbounds i8* %cond, i64 %conv122
  %38 = load i8* %arrayidx208, align 1, !tbaa !1
  %conv209 = zext i8 %38 to i64
  %shl210 = shl nuw nsw i64 %conv209, 48
  %add211 = or i64 %shl210, %shl205
  %arrayidx214 = getelementptr inbounds i8* %cond, i64 %conv132
  %39 = load i8* %arrayidx214, align 1, !tbaa !1
  %conv215 = zext i8 %39 to i64
  %shl216 = shl nuw nsw i64 %conv215, 40
  %add217 = or i64 %add211, %shl216
  %arrayidx220 = getelementptr inbounds i8* %cond, i64 %conv148
  %40 = load i8* %arrayidx220, align 1, !tbaa !1
  %conv221 = zext i8 %40 to i64
  %shl222 = shl nuw nsw i64 %conv221, 32
  %add223 = or i64 %add217, %shl222
  %arrayidx226 = getelementptr inbounds i8* %cond, i64 %conv170
  %41 = load i8* %arrayidx226, align 1, !tbaa !1
  %conv227 = zext i8 %41 to i32
  %shl228 = shl nuw i32 %conv227, 24
  %conv229 = sext i32 %shl228 to i64
  %add230 = add i64 %conv229, %add223
  br label %return

if.else231:                                       ; preds = %if.else196
  %add232 = add nsw i32 %shr, 6
  %conv233 = sext i32 %add232 to i64
  %cmp234 = icmp ult i64 %conv233, %26
  %arrayidx238 = getelementptr inbounds i8* %cond, i64 %conv116
  %42 = load i8* %arrayidx238, align 1, !tbaa !1
  %conv239 = zext i8 %42 to i64
  %shl240 = shl nuw i64 %conv239, 56
  %arrayidx243 = getelementptr inbounds i8* %cond, i64 %conv122
  %43 = load i8* %arrayidx243, align 1, !tbaa !1
  %conv244 = zext i8 %43 to i64
  %shl245 = shl nuw nsw i64 %conv244, 48
  %add246 = or i64 %shl245, %shl240
  %arrayidx249 = getelementptr inbounds i8* %cond, i64 %conv132
  %44 = load i8* %arrayidx249, align 1, !tbaa !1
  %conv250 = zext i8 %44 to i64
  %shl251 = shl nuw nsw i64 %conv250, 40
  %add252 = or i64 %add246, %shl251
  %arrayidx255 = getelementptr inbounds i8* %cond, i64 %conv148
  %45 = load i8* %arrayidx255, align 1, !tbaa !1
  %conv256 = zext i8 %45 to i64
  %shl257 = shl nuw nsw i64 %conv256, 32
  %add258 = or i64 %add252, %shl257
  %arrayidx261 = getelementptr inbounds i8* %cond, i64 %conv170
  %46 = load i8* %arrayidx261, align 1, !tbaa !1
  %conv262 = zext i8 %46 to i64
  %shl263 = shl nuw nsw i64 %conv262, 24
  %add264 = or i64 %add258, %shl263
  %arrayidx267 = getelementptr inbounds i8* %cond, i64 %conv198
  %47 = load i8* %arrayidx267, align 1, !tbaa !1
  %conv268 = zext i8 %47 to i64
  %shl269 = shl nuw nsw i64 %conv268, 16
  %add270 = or i64 %add264, %shl269
  br i1 %cmp234, label %if.else271, label %return

if.else271:                                       ; preds = %if.else231
  %arrayidx308 = getelementptr inbounds i8* %cond, i64 %conv233
  %48 = load i8* %arrayidx308, align 1, !tbaa !1
  %conv309 = zext i8 %48 to i64
  %shl310 = shl nuw nsw i64 %conv309, 8
  %add312 = or i64 %shl310, %add270
  br label %return

if.else324:                                       ; preds = %if.end12
  %cmp325 = icmp slt i32 %size, 8
  %shr328 = ashr i32 %mul, 3
  br i1 %cmp325, label %if.then327, label %if.else338

if.then327:                                       ; preds = %if.else324
  %idxprom329 = sext i32 %shr328 to i64
  %arrayidx330 = getelementptr inbounds i8* %cond, i64 %idxprom329
  %49 = load i8* %arrayidx330, align 1, !tbaa !1
  %conv331 = zext i8 %49 to i32
  %and332 = and i32 %mul, 7
  %shr333 = lshr i32 %conv331, %and332
  %shl334 = shl i32 1, %size
  %sub335 = add nsw i32 %shl334, -1
  %and336 = and i32 %shr333, %sub335
  %conv337 = sext i32 %and336 to i64
  br label %return

if.else338:                                       ; preds = %if.else324
  switch i32 %size, label %return [
    i32 8, label %if.then342
    i32 16, label %if.then349
    i32 32, label %if.then362
    i32 64, label %if.then388
  ]

if.then342:                                       ; preds = %if.else338
  %idxprom343 = sext i32 %shr328 to i64
  %arrayidx344 = getelementptr inbounds i8* %cond, i64 %idxprom343
  %50 = load i8* %arrayidx344, align 1, !tbaa !1
  %conv345 = zext i8 %50 to i64
  br label %return

if.then349:                                       ; preds = %if.else338
  %idxprom350 = sext i32 %shr328 to i64
  %arrayidx351 = getelementptr inbounds i8* %cond, i64 %idxprom350
  %51 = load i8* %arrayidx351, align 1, !tbaa !1
  %conv352 = zext i8 %51 to i64
  %shl353 = shl nuw nsw i64 %conv352, 8
  %add354 = add nsw i32 %shr328, 1
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx356 = getelementptr inbounds i8* %cond, i64 %idxprom355
  %52 = load i8* %arrayidx356, align 1, !tbaa !1
  %conv357 = zext i8 %52 to i64
  %add358 = or i64 %shl353, %conv357
  br label %return

if.then362:                                       ; preds = %if.else338
  %idxprom363 = sext i32 %shr328 to i64
  %arrayidx364 = getelementptr inbounds i8* %cond, i64 %idxprom363
  %53 = load i8* %arrayidx364, align 1, !tbaa !1
  %conv365 = zext i8 %53 to i64
  %shl366 = shl nuw nsw i64 %conv365, 24
  %add367 = add nsw i32 %shr328, 1
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds i8* %cond, i64 %idxprom368
  %54 = load i8* %arrayidx369, align 1, !tbaa !1
  %conv370 = zext i8 %54 to i64
  %shl371 = shl nuw nsw i64 %conv370, 16
  %add372 = or i64 %shl371, %shl366
  %add373 = add nsw i32 %shr328, 2
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds i8* %cond, i64 %idxprom374
  %55 = load i8* %arrayidx375, align 1, !tbaa !1
  %conv376 = zext i8 %55 to i64
  %shl377 = shl nuw nsw i64 %conv376, 8
  %add379 = or i64 %add372, %shl377
  %add380 = add nsw i32 %shr328, 3
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds i8* %cond, i64 %idxprom381
  %56 = load i8* %arrayidx382, align 1, !tbaa !1
  %conv383 = zext i8 %56 to i64
  %add384 = or i64 %add379, %conv383
  br label %return

if.then388:                                       ; preds = %if.else338
  %57 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings389 = getelementptr inbounds %struct.cop* %57, i64 0, i32 14
  %58 = load %struct.sv** %cop_warnings389, align 8, !tbaa !0
  %cmp390 = icmp eq %struct.sv* %58, null
  br i1 %cmp390, label %lor.lhs.false408, label %land.lhs.true392

land.lhs.true392:                                 ; preds = %if.then388
  %59 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings393 = getelementptr inbounds %struct.cop* %59, i64 0, i32 14
  %60 = load %struct.sv** %cop_warnings393, align 8, !tbaa !0
  %cmp394 = icmp eq %struct.sv* %60, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp394, label %lor.lhs.false408, label %land.lhs.true396

land.lhs.true396:                                 ; preds = %land.lhs.true392
  %61 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings397 = getelementptr inbounds %struct.cop* %61, i64 0, i32 14
  %62 = load %struct.sv** %cop_warnings397, align 8, !tbaa !0
  %cmp398 = icmp eq %struct.sv* %62, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp398, label %if.then416, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %land.lhs.true396
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings401 = getelementptr inbounds %struct.cop* %63, i64 0, i32 14
  %64 = load %struct.sv** %cop_warnings401, align 8, !tbaa !0
  %sv_any402 = getelementptr inbounds %struct.sv* %64, i64 0, i32 0
  %65 = load i8** %sv_any402, align 8, !tbaa !0
  %xpv_pv403 = bitcast i8* %65 to i8**
  %66 = load i8** %xpv_pv403, align 8, !tbaa !0
  %arrayidx404 = getelementptr inbounds i8* %66, i64 4
  %67 = load i8* %arrayidx404, align 1, !tbaa !1
  %and406 = and i8 %67, 4
  %tobool407 = icmp eq i8 %and406, 0
  br i1 %tobool407, label %lor.lhs.false408, label %if.then416

lor.lhs.false408:                                 ; preds = %lor.lhs.false400, %land.lhs.true392, %if.then388
  %68 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings409 = getelementptr inbounds %struct.cop* %68, i64 0, i32 14
  %69 = load %struct.sv** %cop_warnings409, align 8, !tbaa !0
  %cmp410 = icmp eq %struct.sv* %69, null
  br i1 %cmp410, label %land.lhs.true412, label %if.end417

land.lhs.true412:                                 ; preds = %lor.lhs.false408
  %70 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and414 = and i8 %70, 1
  %tobool415 = icmp eq i8 %and414, 0
  br i1 %tobool415, label %if.end417, label %if.then416

if.then416:                                       ; preds = %lor.lhs.false400, %land.lhs.true412, %land.lhs.true396
  call void (i32, i8*, ...)* @Perl_warner(i32 17, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end417

if.end417:                                        ; preds = %land.lhs.true412, %if.then416, %lor.lhs.false408
  %idxprom418 = sext i32 %shr328 to i64
  %arrayidx419 = getelementptr inbounds i8* %cond, i64 %idxprom418
  %71 = load i8* %arrayidx419, align 1, !tbaa !1
  %conv420 = zext i8 %71 to i64
  %shl421 = shl nuw i64 %conv420, 56
  %add422 = add nsw i32 %shr328, 1
  %idxprom423 = sext i32 %add422 to i64
  %arrayidx424 = getelementptr inbounds i8* %cond, i64 %idxprom423
  %72 = load i8* %arrayidx424, align 1, !tbaa !1
  %conv425 = zext i8 %72 to i64
  %shl426 = shl nuw nsw i64 %conv425, 48
  %add427 = or i64 %shl426, %shl421
  %add428 = add nsw i32 %shr328, 2
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8* %cond, i64 %idxprom429
  %73 = load i8* %arrayidx430, align 1, !tbaa !1
  %conv431 = zext i8 %73 to i64
  %shl432 = shl nuw nsw i64 %conv431, 40
  %add433 = or i64 %add427, %shl432
  %add434 = add nsw i32 %shr328, 3
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds i8* %cond, i64 %idxprom435
  %74 = load i8* %arrayidx436, align 1, !tbaa !1
  %conv437 = zext i8 %74 to i64
  %shl438 = shl nuw nsw i64 %conv437, 32
  %add439 = or i64 %add433, %shl438
  %add440 = add nsw i32 %shr328, 4
  %idxprom441 = sext i32 %add440 to i64
  %arrayidx442 = getelementptr inbounds i8* %cond, i64 %idxprom441
  %75 = load i8* %arrayidx442, align 1, !tbaa !1
  %conv443 = zext i8 %75 to i64
  %shl444 = shl nuw nsw i64 %conv443, 24
  %add445 = or i64 %add439, %shl444
  %add446 = add nsw i32 %shr328, 5
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds i8* %cond, i64 %idxprom447
  %76 = load i8* %arrayidx448, align 1, !tbaa !1
  %conv449 = zext i8 %76 to i64
  %shl450 = shl nuw nsw i64 %conv449, 16
  %add451 = or i64 %add445, %shl450
  %add452 = add nsw i32 %shr328, 6
  %idxprom453 = sext i32 %add452 to i64
  %arrayidx454 = getelementptr inbounds i8* %cond, i64 %idxprom453
  %77 = load i8* %arrayidx454, align 1, !tbaa !1
  %conv455 = zext i8 %77 to i64
  %shl456 = shl nuw nsw i64 %conv455, 8
  %add458 = or i64 %add451, %shl456
  %add459 = add nsw i32 %shr328, 7
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds i8* %cond, i64 %idxprom460
  %78 = load i8* %arrayidx461, align 1, !tbaa !1
  %conv462 = zext i8 %78 to i64
  %add463 = add i64 %add458, %conv462
  br label %return

return:                                           ; preds = %if.else27, %if.then125, %if.then151, %if.then201, %if.else271, %if.then173, %if.then135, %if.else64, %if.then43, %if.then342, %if.then362, %if.end417, %if.then349, %if.then327, %if.then16, %if.then22, %if.then33, %if.else48, %if.else, %if.end115, %if.else231, %if.else338, %cond.end
  %retval.0 = phi i64 [ 0, %cond.end ], [ %shl, %if.else27 ], [ %shl47, %if.then43 ], [ %add81, %if.else64 ], [ %shl129, %if.then125 ], [ %add145, %if.then135 ], [ %add167, %if.then151 ], [ %add195, %if.then173 ], [ %add230, %if.then201 ], [ %add312, %if.else271 ], [ %conv337, %if.then327 ], [ %conv345, %if.then342 ], [ %add358, %if.then349 ], [ %add384, %if.then362 ], [ %add463, %if.end417 ], [ 0, %if.then16 ], [ 0, %if.then22 ], [ 0, %if.then33 ], [ %add63, %if.else48 ], [ 0, %if.else ], [ 0, %if.end115 ], [ %add270, %if.else231 ], [ 0, %if.else338 ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_vecset(%struct.sv* %sv) #0 {
entry:
  %targlen = alloca i64, align 8
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %0, i64 72
  %1 = bitcast i8* %xlv_targ to %struct.sv**
  %2 = load %struct.sv** %1, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %2, null
  br i1 %tobool, label %if.end208, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %sv_any1 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any1, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %targlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %2, i64* %targlen, i32 2) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %8 = phi i32 [ %3, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %7, %cond.true ], [ %call, %cond.false ]
  %and4 = and i32 %8, 536870912
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %cond.end
  %call7 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %2, i8 signext 1) #4
  %.pre298 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %cond.end, %if.then6
  %9 = phi i32 [ %8, %cond.end ], [ %.pre298, %if.then6 ]
  %and10 = and i32 %9, 1223753727
  %or = or i32 %and10, 67371008
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %sv_flags12 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %10 = load i32* %sv_flags12, align 4, !tbaa !3
  %and13 = and i32 %10, 65536
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %cond.false17, label %cond.true15

cond.true15:                                      ; preds = %if.end8
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %11, i64 24
  %12 = bitcast i8* %xuv_uv to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  br label %cond.end19

cond.false17:                                     ; preds = %if.end8
  %call18 = call i64 @Perl_sv_2uv(%struct.sv* %sv) #4
  %.pre299 = load i8** %sv_any, align 8, !tbaa !0
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true15
  %14 = phi i8* [ %11, %cond.true15 ], [ %.pre299, %cond.false17 ]
  %cond20 = phi i64 [ %13, %cond.true15 ], [ %call18, %cond.false17 ]
  %xlv_targoff = getelementptr inbounds i8* %14, i64 56
  %15 = bitcast i8* %xlv_targoff to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %conv = trunc i64 %16 to i32
  %cmp22 = icmp slt i32 %conv, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %cond.end19
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #4
  %.pre300 = load i8** %sv_any, align 8, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %cond.end19
  %17 = phi i8* [ %.pre300, %if.then24 ], [ %14, %cond.end19 ]
  %xlv_targlen = getelementptr inbounds i8* %17, i64 64
  %18 = bitcast i8* %xlv_targlen to i64*
  %19 = load i64* %18, align 8, !tbaa !4
  %conv27 = trunc i64 %19 to i32
  %cmp28 = icmp slt i32 %conv27, 1
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %sub = add nsw i32 %conv27, -1
  %and30 = and i32 %sub, %conv27
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %if.end25
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false, %if.then32
  %mul = mul nsw i32 %conv27, %conv
  %add = add i32 %conv27, 7
  %add34 = add i32 %add, %mul
  %div = sdiv i32 %add34, 8
  %conv35 = sext i32 %div to i64
  %20 = load i64* %targlen, align 8, !tbaa !4
  %cmp36 = icmp ugt i64 %conv35, %20
  br i1 %cmp36, label %if.then38, label %if.end55

if.then38:                                        ; preds = %if.end33
  %sv_any39 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %21 = load i8** %sv_any39, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %21, i64 16
  %22 = bitcast i8* %xpv_len to i64*
  %23 = load i64* %22, align 8, !tbaa !4
  %add40 = add i64 %conv35, 1
  %cmp41 = icmp ult i64 %23, %add40
  br i1 %cmp41, label %cond.true43, label %cond.false46

cond.true43:                                      ; preds = %if.then38
  %call45 = call i8* @Perl_sv_grow(%struct.sv* %2, i64 %add40) #4
  %.pre301 = load i64* %targlen, align 8, !tbaa !4
  br label %cond.end49

cond.false46:                                     ; preds = %if.then38
  %xpv_pv48 = bitcast i8* %21 to i8**
  %24 = load i8** %xpv_pv48, align 8, !tbaa !0
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false46, %cond.true43
  %25 = phi i64 [ %.pre301, %cond.true43 ], [ %20, %cond.false46 ]
  %cond50 = phi i8* [ %call45, %cond.true43 ], [ %24, %cond.false46 ]
  %add.ptr = getelementptr inbounds i8* %cond50, i64 %25
  %add52 = sub i64 %add40, %25
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %add52, i32 1, i1 false)
  %26 = load i8** %sv_any39, align 8, !tbaa !0
  %xpv_cur54 = getelementptr inbounds i8* %26, i64 8
  %27 = bitcast i8* %xpv_cur54 to i64*
  store i64 %conv35, i64* %27, align 8, !tbaa !4
  br label %if.end55

if.end55:                                         ; preds = %cond.end49, %if.end33
  %s.0 = phi i8* [ %cond50, %cond.end49 ], [ %cond, %if.end33 ]
  %cmp56 = icmp slt i32 %conv27, 8
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end55
  %shl = shl i32 1, %conv27
  %sub59 = add nsw i32 %shl, -1
  %and60 = and i32 %mul, 7
  %conv61 = sext i32 %sub59 to i64
  %and62 = and i64 %conv61, %cond20
  %shr = ashr i32 %mul, 3
  %shl63 = shl i32 %sub59, %and60
  %neg = xor i32 %shl63, 255
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8* %s.0, i64 %idxprom
  %28 = load i8* %arrayidx, align 1, !tbaa !1
  %conv64 = zext i8 %28 to i32
  %and65 = and i32 %conv64, %neg
  %conv66 = zext i32 %and65 to i64
  %sh_prom = zext i32 %and60 to i64
  %shl67 = shl i64 %and62, %sh_prom
  %or71 = or i64 %conv66, %shl67
  %conv72 = trunc i64 %or71 to i8
  store i8 %conv72, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end202

if.else:                                          ; preds = %if.end55
  %shr73 = ashr i32 %mul, 3
  switch i32 %conv27, label %if.end202 [
    i32 8, label %if.then76
    i32 16, label %if.then84
    i32 32, label %if.then98
    i32 64, label %if.then124
  ]

if.then76:                                        ; preds = %if.else
  %conv78 = trunc i64 %cond20 to i8
  %idxprom79 = sext i32 %shr73 to i64
  %arrayidx80 = getelementptr inbounds i8* %s.0, i64 %idxprom79
  store i8 %conv78, i8* %arrayidx80, align 1, !tbaa !1
  br label %if.end202

if.then84:                                        ; preds = %if.else
  %shr85 = lshr i64 %cond20, 8
  %conv87 = trunc i64 %shr85 to i8
  %idxprom88 = sext i32 %shr73 to i64
  %arrayidx89 = getelementptr inbounds i8* %s.0, i64 %idxprom88
  store i8 %conv87, i8* %arrayidx89, align 1, !tbaa !1
  %conv91 = trunc i64 %cond20 to i8
  %add92 = add nsw i32 %shr73, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds i8* %s.0, i64 %idxprom93
  store i8 %conv91, i8* %arrayidx94, align 1, !tbaa !1
  br label %if.end202

if.then98:                                        ; preds = %if.else
  %shr99 = lshr i64 %cond20, 24
  %conv101 = trunc i64 %shr99 to i8
  %idxprom102 = sext i32 %shr73 to i64
  %arrayidx103 = getelementptr inbounds i8* %s.0, i64 %idxprom102
  store i8 %conv101, i8* %arrayidx103, align 1, !tbaa !1
  %shr104 = lshr i64 %cond20, 16
  %conv106 = trunc i64 %shr104 to i8
  %add107 = add nsw i32 %shr73, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8* %s.0, i64 %idxprom108
  store i8 %conv106, i8* %arrayidx109, align 1, !tbaa !1
  %shr110 = lshr i64 %cond20, 8
  %conv112 = trunc i64 %shr110 to i8
  %add113 = add nsw i32 %shr73, 2
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds i8* %s.0, i64 %idxprom114
  store i8 %conv112, i8* %arrayidx115, align 1, !tbaa !1
  %conv117 = trunc i64 %cond20 to i8
  %add118 = add nsw i32 %shr73, 3
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds i8* %s.0, i64 %idxprom119
  store i8 %conv117, i8* %arrayidx120, align 1, !tbaa !1
  br label %if.end202

if.then124:                                       ; preds = %if.else
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp125 = icmp eq %struct.sv* %30, null
  br i1 %cmp125, label %lor.lhs.false142, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then124
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings127 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings127, align 8, !tbaa !0
  %cmp128 = icmp eq %struct.sv* %32, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp128, label %lor.lhs.false142, label %land.lhs.true130

land.lhs.true130:                                 ; preds = %land.lhs.true
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings131 = getelementptr inbounds %struct.cop* %33, i64 0, i32 14
  %34 = load %struct.sv** %cop_warnings131, align 8, !tbaa !0
  %cmp132 = icmp eq %struct.sv* %34, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp132, label %if.then150, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %land.lhs.true130
  %35 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings135 = getelementptr inbounds %struct.cop* %35, i64 0, i32 14
  %36 = load %struct.sv** %cop_warnings135, align 8, !tbaa !0
  %sv_any136 = getelementptr inbounds %struct.sv* %36, i64 0, i32 0
  %37 = load i8** %sv_any136, align 8, !tbaa !0
  %xpv_pv137 = bitcast i8* %37 to i8**
  %38 = load i8** %xpv_pv137, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i8* %38, i64 4
  %39 = load i8* %arrayidx138, align 1, !tbaa !1
  %and140 = and i8 %39, 4
  %tobool141 = icmp eq i8 %and140, 0
  br i1 %tobool141, label %lor.lhs.false142, label %if.then150

lor.lhs.false142:                                 ; preds = %lor.lhs.false134, %land.lhs.true, %if.then124
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings143 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings143, align 8, !tbaa !0
  %cmp144 = icmp eq %struct.sv* %41, null
  br i1 %cmp144, label %land.lhs.true146, label %if.end151

land.lhs.true146:                                 ; preds = %lor.lhs.false142
  %42 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and148 = and i8 %42, 1
  %tobool149 = icmp eq i8 %and148, 0
  br i1 %tobool149, label %if.end151, label %if.then150

if.then150:                                       ; preds = %lor.lhs.false134, %land.lhs.true146, %land.lhs.true130
  call void (i32, i8*, ...)* @Perl_warner(i32 17, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end151

if.end151:                                        ; preds = %land.lhs.true146, %if.then150, %lor.lhs.false142
  %shr152 = lshr i64 %cond20, 56
  %conv154 = trunc i64 %shr152 to i8
  %idxprom155 = sext i32 %shr73 to i64
  %arrayidx156 = getelementptr inbounds i8* %s.0, i64 %idxprom155
  store i8 %conv154, i8* %arrayidx156, align 1, !tbaa !1
  %shr157 = lshr i64 %cond20, 48
  %conv159 = trunc i64 %shr157 to i8
  %add160 = add nsw i32 %shr73, 1
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds i8* %s.0, i64 %idxprom161
  store i8 %conv159, i8* %arrayidx162, align 1, !tbaa !1
  %shr163 = lshr i64 %cond20, 40
  %conv165 = trunc i64 %shr163 to i8
  %add166 = add nsw i32 %shr73, 2
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds i8* %s.0, i64 %idxprom167
  store i8 %conv165, i8* %arrayidx168, align 1, !tbaa !1
  %shr169 = lshr i64 %cond20, 32
  %conv171 = trunc i64 %shr169 to i8
  %add172 = add nsw i32 %shr73, 3
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds i8* %s.0, i64 %idxprom173
  store i8 %conv171, i8* %arrayidx174, align 1, !tbaa !1
  %shr175 = lshr i64 %cond20, 24
  %conv177 = trunc i64 %shr175 to i8
  %add178 = add nsw i32 %shr73, 4
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds i8* %s.0, i64 %idxprom179
  store i8 %conv177, i8* %arrayidx180, align 1, !tbaa !1
  %shr181 = lshr i64 %cond20, 16
  %conv183 = trunc i64 %shr181 to i8
  %add184 = add nsw i32 %shr73, 5
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds i8* %s.0, i64 %idxprom185
  store i8 %conv183, i8* %arrayidx186, align 1, !tbaa !1
  %shr187 = lshr i64 %cond20, 8
  %conv189 = trunc i64 %shr187 to i8
  %add190 = add nsw i32 %shr73, 6
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds i8* %s.0, i64 %idxprom191
  store i8 %conv189, i8* %arrayidx192, align 1, !tbaa !1
  %conv194 = trunc i64 %cond20 to i8
  %add195 = add nsw i32 %shr73, 7
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds i8* %s.0, i64 %idxprom196
  store i8 %conv194, i8* %arrayidx197, align 1, !tbaa !1
  br label %if.end202

if.end202:                                        ; preds = %if.else, %if.then76, %if.then98, %if.end151, %if.then84, %if.then58
  %43 = load i32* %sv_flags, align 4, !tbaa !3
  %and204 = and i32 %43, 16384
  %tobool205 = icmp eq i32 %and204, 0
  br i1 %tobool205, label %if.end208, label %if.then206

if.then206:                                       ; preds = %if.end202
  %call207 = call i32 @Perl_mg_set(%struct.sv* %2) #4
  br label %if.end208

if.end208:                                        ; preds = %if.end202, %entry, %if.then206
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_2uv(%struct.sv*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_chop(%struct.sv* %astr, %struct.sv* %sv) #0 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 255
  switch i32 %and, label %if.else21 [
    i32 10, label %if.then
    i32 11, label %if.then15
  ]

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.sv* %sv to %struct.av*
  %and2 = and i32 %0, 32768
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %call = call i32 @Perl_mg_size(%struct.sv* %sv) #4
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %sv_any = bitcast %struct.sv* %sv to %struct.xpvav**
  %2 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %2, i64 0, i32 1
  %3 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %3, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  %cmp4185 = icmp slt i32 %conv3, 0
  br i1 %cmp4185, label %if.end130, label %for.body

for.body:                                         ; preds = %cond.end, %for.inc
  %i.0186 = phi i32 [ %inc, %for.inc ], [ 0, %cond.end ]
  %call6 = call %struct.sv** @Perl_av_fetch(%struct.av* %1, i32 %i.0186, i32 0) #4
  %tobool7 = icmp eq %struct.sv** %call6, null
  br i1 %tobool7, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.sv** %call6, align 8, !tbaa !0
  %cmp8 = icmp eq %struct.sv* %4, @PL_sv_undef
  br i1 %cmp8, label %for.inc, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void @Perl_do_chop(%struct.sv* %astr, %struct.sv* %4) #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then10
  %inc = add nsw i32 %i.0186, 1
  %exitcond = icmp eq i32 %i.0186, %conv3
  br i1 %exitcond, label %if.end130, label %for.body

if.then15:                                        ; preds = %entry
  %5 = bitcast %struct.sv* %sv to %struct.hv*
  %call17 = call i32 @Perl_hv_iterinit(%struct.hv* %5) #4
  %call18188 = call %struct.he* @Perl_hv_iternext(%struct.hv* %5) #4
  %tobool19189 = icmp eq %struct.he* %call18188, null
  br i1 %tobool19189, label %if.end130, label %while.body

while.body:                                       ; preds = %if.then15, %while.body
  %call18190 = phi %struct.he* [ %call18, %while.body ], [ %call18188, %if.then15 ]
  %call20 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %5, %struct.he* %call18190) #4
  call void @Perl_do_chop(%struct.sv* %astr, %struct.sv* %call20) #5
  %call18 = call %struct.he* @Perl_hv_iternext(%struct.hv* %5) #4
  %tobool19 = icmp eq %struct.he* %call18, null
  br i1 %tobool19, label %if.end130, label %while.body

if.else21:                                        ; preds = %entry
  %and23 = and i32 %0, 8388608
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end38, label %if.then25

if.then25:                                        ; preds = %if.else21
  %and27 = and i32 %0, 1048576
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then25
  call void @Perl_sv_force_normal_flags(%struct.sv* %sv, i32 0) #4
  %.pre193 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then29
  %6 = phi i32 [ %0, %if.then25 ], [ %.pre193, %if.then29 ]
  %and32 = and i32 %6, 8388608
  %tobool33 = icmp eq i32 %and32, 0
  br i1 %tobool33, label %if.end38, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end38

if.end38:                                         ; preds = %if.end30, %if.else21, %if.then34
  %7 = phi i32 [ %6, %if.end30 ], [ %0, %if.else21 ], [ %.pre, %if.then34 ]
  %and40 = and i32 %7, 262144
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %cond.false46, label %cond.true43

cond.true43:                                      ; preds = %if.end38
  %sv_any44 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %8 = load i8** %sv_any44, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  store i64 %10, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end48

cond.false46:                                     ; preds = %if.end38
  %call47 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #4
  %.pr = load i64* %len, align 8, !tbaa !4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false46, %cond.true43
  %12 = phi i64 [ %.pr, %cond.false46 ], [ %10, %cond.true43 ]
  %cond49 = phi i8* [ %call47, %cond.false46 ], [ %11, %cond.true43 ]
  %tobool50 = icmp eq i64 %12, 0
  br i1 %tobool50, label %if.end69, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %cond.end48
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and53 = and i32 %13, 262144
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.end69

if.then55:                                        ; preds = %land.lhs.true51
  %and57 = and i32 %13, 10223616
  %cmp58 = icmp eq i32 %and57, 262144
  br i1 %cmp58, label %cond.true60, label %cond.false65

cond.true60:                                      ; preds = %if.then55
  %sv_any61 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %14 = load i8** %sv_any61, align 8, !tbaa !0
  %xpv_cur62 = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur62 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  store i64 %16, i64* %len, align 8, !tbaa !4
  %xpv_pv64 = bitcast i8* %14 to i8**
  %17 = load i8** %xpv_pv64, align 8, !tbaa !0
  br label %if.end69

cond.false65:                                     ; preds = %if.then55
  %call66 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #4
  br label %if.end69

if.end69:                                         ; preds = %cond.end48, %cond.true60, %cond.false65, %land.lhs.true51
  %s.0 = phi i8* [ %cond49, %land.lhs.true51 ], [ %17, %cond.true60 ], [ %call66, %cond.false65 ], [ %cond49, %cond.end48 ]
  %18 = load i32* %sv_flags, align 4, !tbaa !3
  %and71 = and i32 %18, 536870912
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %if.else110, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %if.end69
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %19, i64 0, i32 7
  %20 = load i8* %op_private, align 1, !tbaa !1
  %and75 = and i8 %20, 8
  %tobool76 = icmp eq i8 %and75, 0
  br i1 %tobool76, label %if.then77, label %if.else110

if.then77:                                        ; preds = %land.lhs.true73
  %tobool78 = icmp eq i8* %s.0, null
  br i1 %tobool78, label %if.else108, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %if.then77
  %21 = load i64* %len, align 8, !tbaa !4
  %tobool80 = icmp eq i64 %21, 0
  br i1 %tobool80, label %if.else108, label %if.then81

if.then81:                                        ; preds = %land.lhs.true79
  %add.ptr = getelementptr inbounds i8* %s.0, i64 %21
  %add.ptr.sum = add i64 %21, -1
  %add.ptr82 = getelementptr inbounds i8* %s.0, i64 %add.ptr.sum
  %cmp84183 = icmp sgt i64 %add.ptr.sum, 0
  br i1 %cmp84183, label %land.rhs, label %while.end95

while.cond83:                                     ; preds = %land.rhs
  %cmp84 = icmp ugt i8* %incdec.ptr, %s.0
  br i1 %cmp84, label %land.rhs, label %while.end95

land.rhs:                                         ; preds = %if.then81, %while.cond83
  %s.1184 = phi i8* [ %incdec.ptr, %while.cond83 ], [ %add.ptr82, %if.then81 ]
  %22 = load i8* %s.1184, align 1, !tbaa !1
  %cmp87 = icmp slt i8 %22, 0
  %cmp91 = icmp ult i8 %22, -64
  %cmp91. = and i1 %cmp87, %cmp91
  %incdec.ptr = getelementptr inbounds i8* %s.1184, i64 -1
  br i1 %cmp91., label %while.cond83, label %while.end95

while.end95:                                      ; preds = %while.cond83, %land.rhs, %if.then81
  %s.1.lcssa = phi i8* [ %add.ptr82, %if.then81 ], [ %s.1184, %land.rhs ], [ %incdec.ptr, %while.cond83 ]
  %call96 = call i64 @Perl_utf8_to_uvchr(i8* %s.1.lcssa, i64* null) #4
  %tobool97 = icmp eq i64 %call96, 0
  br i1 %tobool97, label %if.end124, label %if.then98

if.then98:                                        ; preds = %while.end95
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s.1.lcssa to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %astr, i8* %s.1.lcssa, i64 %sub.ptr.sub) #4
  store i8 0, i8* %s.1.lcssa, align 1, !tbaa !1
  %sub.ptr.rhs.cast100 = ptrtoint i8* %s.0 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast100
  %sv_any102 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %23 = load i8** %sv_any102, align 8, !tbaa !0
  %xpv_cur103 = getelementptr inbounds i8* %23, i64 8
  %24 = bitcast i8* %xpv_cur103 to i64*
  store i64 %sub.ptr.sub101, i64* %24, align 8, !tbaa !4
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %and105 = and i32 %25, 2096955391
  store i32 %and105, i32* %sv_flags, align 4, !tbaa !3
  %sv_flags106 = getelementptr inbounds %struct.sv* %astr, i64 0, i32 2
  %26 = load i32* %sv_flags106, align 4, !tbaa !3
  %or = or i32 %26, 536870912
  store i32 %or, i32* %sv_flags106, align 4, !tbaa !3
  br label %if.end124

if.else108:                                       ; preds = %land.lhs.true79, %if.then77
  call void @Perl_sv_setpvn(%struct.sv* %astr, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 0) #4
  br label %if.end124

if.else110:                                       ; preds = %land.lhs.true73, %if.end69
  %tobool111 = icmp eq i8* %s.0, null
  br i1 %tobool111, label %if.else122, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.else110
  %27 = load i64* %len, align 8, !tbaa !4
  %tobool113 = icmp eq i64 %27, 0
  br i1 %tobool113, label %if.else122, label %if.then114

if.then114:                                       ; preds = %land.lhs.true112
  %dec = add i64 %27, -1
  store i64 %dec, i64* %len, align 8, !tbaa !4
  %add.ptr115 = getelementptr inbounds i8* %s.0, i64 %dec
  call void @Perl_sv_setpvn(%struct.sv* %astr, i8* %add.ptr115, i64 1) #4
  store i8 0, i8* %add.ptr115, align 1, !tbaa !1
  %28 = load i64* %len, align 8, !tbaa !4
  %sv_any116 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %29 = load i8** %sv_any116, align 8, !tbaa !0
  %xpv_cur117 = getelementptr inbounds i8* %29, i64 8
  %30 = bitcast i8* %xpv_cur117 to i64*
  store i64 %28, i64* %30, align 8, !tbaa !4
  %31 = load i32* %sv_flags, align 4, !tbaa !3
  %and121 = and i32 %31, 1560084479
  store i32 %and121, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end124

if.else122:                                       ; preds = %land.lhs.true112, %if.else110
  call void @Perl_sv_setpvn(%struct.sv* %astr, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 0) #4
  br label %if.end124

if.end124:                                        ; preds = %while.end95, %if.then114, %if.else122, %if.else108, %if.then98
  %32 = load i32* %sv_flags, align 4, !tbaa !3
  %and126 = and i32 %32, 16384
  %tobool127 = icmp eq i32 %and126, 0
  br i1 %tobool127, label %if.end130, label %if.then128

if.then128:                                       ; preds = %if.end124
  %call129 = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %if.end130

if.end130:                                        ; preds = %if.then15, %while.body, %cond.end, %for.inc, %if.end124, %if.then128
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i64 @Perl_utf8_to_uvchr(i8*, i64*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_do_chomp(%struct.sv* %sv) #0 {
entry:
  %len = alloca i64, align 8
  %n_a = alloca i64, align 8
  %rslen = alloca i64, align 8
  %is_utf8 = alloca i8, align 1
  %0 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 118423552
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 524288
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %2 to %struct.sv**
  %3 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags4 = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags4, align 4, !tbaa !3
  %and5 = and i32 %4, 65536
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %sv_any9 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any9, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %5, i64 24
  %6 = bitcast i8* %xiv_iv to i64*
  %7 = load i64* %6, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %call = call i64 @Perl_sv_2iv(%struct.sv* %3) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp sgt i64 %cond, 0
  br i1 %cmp, label %return, label %if.end13

if.end13:                                         ; preds = %if.end, %cond.end
  %sv_flags14 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %8 = load i32* %sv_flags14, align 4, !tbaa !3
  %and15 = and i32 %8, 255
  switch i32 %and15, label %if.else50 [
    i32 10, label %if.then17
    i32 11, label %if.then42
  ]

if.then17:                                        ; preds = %if.end13
  %9 = bitcast %struct.sv* %sv to %struct.av*
  %and19 = and i32 %8, 32768
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %cond.false23, label %cond.true21

cond.true21:                                      ; preds = %if.then17
  %call22 = call i32 @Perl_mg_size(%struct.sv* %sv) #4
  %conv = sext i32 %call22 to i64
  br label %cond.end25

cond.false23:                                     ; preds = %if.then17
  %sv_any24 = bitcast %struct.sv* %sv to %struct.xpvav**
  %10 = load %struct.xpvav** %sv_any24, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %10, i64 0, i32 1
  %11 = load i64* %xav_fill, align 8, !tbaa !4
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.true21
  %cond26 = phi i64 [ %conv, %cond.true21 ], [ %11, %cond.false23 ]
  %conv27 = trunc i64 %cond26 to i32
  %cmp28298 = icmp slt i32 %conv27, 0
  br i1 %cmp28298, label %return, label %for.body

for.body:                                         ; preds = %cond.end25, %for.inc
  %count.0300 = phi i32 [ %count.1, %for.inc ], [ 0, %cond.end25 ]
  %i.0299 = phi i32 [ %inc, %for.inc ], [ 0, %cond.end25 ]
  %call30 = call %struct.sv** @Perl_av_fetch(%struct.av* %9, i32 %i.0299, i32 0) #4
  %tobool31 = icmp eq %struct.sv** %call30, null
  br i1 %tobool31, label %for.inc, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %for.body
  %12 = load %struct.sv** %call30, align 8, !tbaa !0
  %cmp33 = icmp eq %struct.sv* %12, @PL_sv_undef
  br i1 %cmp33, label %for.inc, label %if.then35

if.then35:                                        ; preds = %land.lhs.true32
  %call36 = call i32 @Perl_do_chomp(%struct.sv* %12) #5
  %add = add nsw i32 %call36, %count.0300
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true32, %for.body, %if.then35
  %count.1 = phi i32 [ %add, %if.then35 ], [ %count.0300, %land.lhs.true32 ], [ %count.0300, %for.body ]
  %inc = add nsw i32 %i.0299, 1
  %exitcond = icmp eq i32 %i.0299, %conv27
  br i1 %exitcond, label %return, label %for.body

if.then42:                                        ; preds = %if.end13
  %13 = bitcast %struct.sv* %sv to %struct.hv*
  %call44 = call i32 @Perl_hv_iterinit(%struct.hv* %13) #4
  %call45303 = call %struct.he* @Perl_hv_iternext(%struct.hv* %13) #4
  %tobool46304 = icmp eq %struct.he* %call45303, null
  br i1 %tobool46304, label %return, label %while.body

while.body:                                       ; preds = %if.then42, %while.body
  %call45306 = phi %struct.he* [ %call45, %while.body ], [ %call45303, %if.then42 ]
  %count.2305 = phi i32 [ %add49, %while.body ], [ 0, %if.then42 ]
  %call47 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %13, %struct.he* %call45306) #4
  %call48 = call i32 @Perl_do_chomp(%struct.sv* %call47) #5
  %add49 = add nsw i32 %call48, %count.2305
  %call45 = call %struct.he* @Perl_hv_iternext(%struct.hv* %13) #4
  %tobool46 = icmp eq %struct.he* %call45, null
  br i1 %tobool46, label %return, label %while.body

if.else50:                                        ; preds = %if.end13
  %and52 = and i32 %8, 8388608
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %if.end67, label %if.then54

if.then54:                                        ; preds = %if.else50
  %and56 = and i32 %8, 1048576
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.then54
  call void @Perl_sv_force_normal_flags(%struct.sv* %sv, i32 0) #4
  %.pre314 = load i32* %sv_flags14, align 4, !tbaa !3
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.then58
  %14 = phi i32 [ %8, %if.then54 ], [ %.pre314, %if.then58 ]
  %and61 = and i32 %14, 8388608
  %tobool62 = icmp eq i32 %and61, 0
  br i1 %tobool62, label %if.end67, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([0 x i8]* @PL_no_modify, i64 0, i64 0)) #4
  br label %if.end67

if.end67:                                         ; preds = %if.end59, %if.else50, %if.then63
  %15 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %tobool68 = icmp eq %struct.sv* %15, null
  br i1 %tobool68, label %if.end76, label %if.then69

if.then69:                                        ; preds = %if.end67
  %16 = load i32* %sv_flags14, align 4, !tbaa !3
  %and71 = and i32 %16, 536870912
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.then69
  %call74 = call i8* @Perl_sv_recode_to_utf8(%struct.sv* %sv, %struct.sv* %15) #4
  br label %if.end76

if.end76:                                         ; preds = %if.end67, %if.then69, %if.then73
  %17 = load i32* %sv_flags14, align 4, !tbaa !3
  %and78 = and i32 %17, 262144
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %cond.false84, label %cond.true81

cond.true81:                                      ; preds = %if.end76
  %sv_any82 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %18 = load i8** %sv_any82, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %18, i64 8
  %19 = bitcast i8* %xpv_cur to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  store i64 %20, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %18 to i8**
  %21 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end86

cond.false84:                                     ; preds = %if.end76
  %call85 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false84, %cond.true81
  %cond87 = phi i8* [ %21, %cond.true81 ], [ %call85, %cond.false84 ]
  %tobool88 = icmp eq i8* %cond87, null
  br i1 %tobool88, label %if.end235, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %cond.end86
  %22 = load i64* %len, align 8, !tbaa !4
  %tobool90 = icmp eq i64 %22, 0
  br i1 %tobool90, label %if.end235, label %if.then91

if.then91:                                        ; preds = %land.lhs.true89
  %dec = add i64 %22, -1
  store i64 %dec, i64* %len, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %cond87, i64 %dec
  %23 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_flags92 = getelementptr inbounds %struct.sv* %23, i64 0, i32 2
  %24 = load i32* %sv_flags92, align 4, !tbaa !3
  %and93 = and i32 %24, 262144
  %tobool94 = icmp eq i32 %and93, 0
  br i1 %tobool94, label %cond.false125, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.then91
  %sv_any96 = getelementptr inbounds %struct.sv* %23, i64 0, i32 0
  %25 = load i8** %sv_any96, align 8, !tbaa !0
  %xpv_cur97 = getelementptr inbounds i8* %25, i64 8
  %26 = bitcast i8* %xpv_cur97 to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %tobool98 = icmp eq i64 %27, 0
  br i1 %tobool98, label %if.then99, label %cond.true120

if.then99:                                        ; preds = %land.lhs.true95
  %28 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp101 = icmp eq i8 %28, 10
  br i1 %cmp101, label %while.cond106thread-pre-split, label %if.end235

while.cond106thread-pre-split:                    ; preds = %if.then99
  %tobool107295 = icmp eq i64 %dec, 0
  br i1 %tobool107295, label %if.end203, label %land.rhs

land.rhs:                                         ; preds = %while.cond106thread-pre-split, %while.body111
  %count.3297 = phi i32 [ %inc113, %while.body111 ], [ 1, %while.cond106thread-pre-split ]
  %s.0296 = phi i8* [ %arrayidx, %while.body111 ], [ %add.ptr, %while.cond106thread-pre-split ]
  %29 = phi i64 [ %dec112, %while.body111 ], [ %dec, %while.cond106thread-pre-split ]
  %arrayidx = getelementptr inbounds i8* %s.0296, i64 -1
  %30 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp109 = icmp eq i8 %30, 10
  br i1 %cmp109, label %while.body111, label %if.end203

while.body111:                                    ; preds = %land.rhs
  %dec112 = add i64 %29, -1
  store i64 %dec112, i64* %len, align 8, !tbaa !4
  %inc113 = add nsw i32 %count.3297, 1
  %tobool107 = icmp eq i64 %dec112, 0
  br i1 %tobool107, label %if.end203, label %land.rhs

cond.true120:                                     ; preds = %land.lhs.true95
  %sv_any121 = getelementptr inbounds %struct.sv* %23, i64 0, i32 0
  %31 = load i8** %sv_any121, align 8, !tbaa !0
  %xpv_cur122 = getelementptr inbounds i8* %31, i64 8
  %32 = bitcast i8* %xpv_cur122 to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  store i64 %33, i64* %rslen, align 8, !tbaa !4
  %xpv_pv124 = bitcast i8* %31 to i8**
  %34 = load i8** %xpv_pv124, align 8, !tbaa !0
  br label %cond.end127

cond.false125:                                    ; preds = %if.then91
  %call126 = call i8* @Perl_sv_2pv_flags(%struct.sv* %23, i64* %rslen, i32 2) #4
  %.pre = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_flags129.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre, i64 0, i32 2
  %.pre315 = load i32* %sv_flags129.phi.trans.insert, align 4, !tbaa !3
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false125, %cond.true120
  %35 = phi i32 [ %24, %cond.true120 ], [ %.pre315, %cond.false125 ]
  %36 = phi %struct.sv* [ %23, %cond.true120 ], [ %.pre, %cond.false125 ]
  %cond128 = phi i8* [ %34, %cond.true120 ], [ %call126, %cond.false125 ]
  %and130 = and i32 %35, 536870912
  %tobool131 = icmp eq i32 %and130, 0
  br i1 %tobool131, label %cond.false134, label %cond.true132

cond.true132:                                     ; preds = %cond.end127
  %call133 = call i64 @Perl_sv_len_utf8(%struct.sv* %36) #4
  %.pre309 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_flags137.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre309, i64 0, i32 2
  %.pre310 = load i32* %sv_flags137.phi.trans.insert, align 4, !tbaa !3
  br label %cond.end135

cond.false134:                                    ; preds = %cond.end127
  %37 = load i64* %rslen, align 8, !tbaa !4
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true132
  %38 = phi i32 [ %.pre310, %cond.true132 ], [ %35, %cond.false134 ]
  %cond136 = phi i64 [ %call133, %cond.true132 ], [ %37, %cond.false134 ]
  %and138 = and i32 %38, 536870912
  %39 = load i32* %sv_flags14, align 4, !tbaa !3
  %and140 = and i32 %39, 536870912
  %cmp141 = icmp eq i32 %and138, %and140
  br i1 %cmp141, label %if.end175, label %if.then143

if.then143:                                       ; preds = %cond.end135
  %tobool146 = icmp eq i32 %and138, 0
  br i1 %tobool146, label %if.else152, label %if.then147

if.then147:                                       ; preds = %if.then143
  store i8 1, i8* %is_utf8, align 1, !tbaa !1
  %call148 = call i8* @Perl_bytes_from_utf8(i8* %cond128, i64* %rslen, i8* %is_utf8) #4
  %40 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool149 = icmp eq i8 %40, 0
  br i1 %tobool149, label %if.end175, label %if.end235

if.else152:                                       ; preds = %if.then143
  %41 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %tobool153 = icmp eq %struct.sv* %41, null
  br i1 %tobool153, label %if.else171, label %if.then154

if.then154:                                       ; preds = %if.else152
  %42 = load i64* %rslen, align 8, !tbaa !4
  %call155 = call %struct.sv* @Perl_newSVpvn(i8* %cond128, i64 %42) #4
  %43 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %call156 = call i8* @Perl_sv_recode_to_utf8(%struct.sv* %call155, %struct.sv* %43) #4
  %sv_flags157 = getelementptr inbounds %struct.sv* %call155, i64 0, i32 2
  %44 = load i32* %sv_flags157, align 4, !tbaa !3
  %and158 = and i32 %44, 262144
  %cmp159 = icmp eq i32 %and158, 0
  br i1 %cmp159, label %cond.false166, label %cond.true161

cond.true161:                                     ; preds = %if.then154
  %sv_any162 = getelementptr inbounds %struct.sv* %call155, i64 0, i32 0
  %45 = load i8** %sv_any162, align 8, !tbaa !0
  %xpv_cur163 = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur163 to i64*
  %47 = load i64* %46, align 8, !tbaa !4
  store i64 %47, i64* %rslen, align 8, !tbaa !4
  %xpv_pv165 = bitcast i8* %45 to i8**
  %48 = load i8** %xpv_pv165, align 8, !tbaa !0
  br label %cond.end168

cond.false166:                                    ; preds = %if.then154
  %call167 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call155, i64* %rslen, i32 2) #4
  br label %cond.end168

cond.end168:                                      ; preds = %cond.false166, %cond.true161
  %cond169 = phi i8* [ %48, %cond.true161 ], [ %call167, %cond.false166 ]
  %call170 = call i64 @Perl_sv_len_utf8(%struct.sv* %call155) #4
  br label %if.end175

if.else171:                                       ; preds = %if.else152
  %call172 = call i8* @Perl_bytes_to_utf8(i8* %cond128, i64* %rslen) #4
  br label %if.end175

if.end175:                                        ; preds = %if.then147, %cond.end135, %if.else171, %cond.end168
  %temp_buffer.0 = phi i8* [ null, %cond.end168 ], [ %call172, %if.else171 ], [ null, %cond.end135 ], [ %call148, %if.then147 ]
  %svrecode.0 = phi %struct.sv* [ %call155, %cond.end168 ], [ null, %if.else171 ], [ null, %cond.end135 ], [ null, %if.then147 ]
  %rs_charlen.0 = phi i64 [ %call170, %cond.end168 ], [ %cond136, %if.else171 ], [ %cond136, %cond.end135 ], [ %cond136, %if.then147 ]
  %rsptr.0 = phi i8* [ %cond169, %cond.end168 ], [ %call172, %if.else171 ], [ %cond128, %cond.end135 ], [ %call148, %if.then147 ]
  %49 = load i64* %rslen, align 8, !tbaa !4
  %cmp176 = icmp eq i64 %49, 1
  br i1 %cmp176, label %if.then178, label %if.else186

if.then178:                                       ; preds = %if.end175
  %50 = load i8* %add.ptr, align 1, !tbaa !1
  %51 = load i8* %rsptr.0, align 1, !tbaa !1
  %cmp181 = icmp eq i8 %50, %51
  br i1 %cmp181, label %if.end203, label %nope

if.else186:                                       ; preds = %if.end175
  %52 = load i64* %len, align 8, !tbaa !4
  %sub = add i64 %49, -1
  %cmp187 = icmp ult i64 %52, %sub
  br i1 %cmp187, label %nope, label %if.end190

if.end190:                                        ; preds = %if.else186
  %sub192 = sub i64 %52, %sub
  store i64 %sub192, i64* %len, align 8, !tbaa !4
  %add.ptr.sum = sub i64 %22, %49
  %add.ptr194 = getelementptr inbounds i8* %cond87, i64 %add.ptr.sum
  %call195 = call i32 @memcmp(i8* %add.ptr194, i8* %rsptr.0, i64 %49) #4
  %tobool196 = icmp eq i32 %call195, 0
  br i1 %tobool196, label %if.end198, label %nope

if.end198:                                        ; preds = %if.end190
  %conv201 = trunc i64 %rs_charlen.0 to i32
  br label %if.end203

if.end203:                                        ; preds = %while.cond106thread-pre-split, %land.rhs, %while.body111, %if.then178, %if.end198
  %temp_buffer.1 = phi i8* [ %temp_buffer.0, %if.end198 ], [ %temp_buffer.0, %if.then178 ], [ null, %while.body111 ], [ null, %land.rhs ], [ null, %while.cond106thread-pre-split ]
  %svrecode.1 = phi %struct.sv* [ %svrecode.0, %if.end198 ], [ %svrecode.0, %if.then178 ], [ null, %while.body111 ], [ null, %land.rhs ], [ null, %while.cond106thread-pre-split ]
  %count.4 = phi i32 [ %conv201, %if.end198 ], [ 1, %if.then178 ], [ %inc113, %while.body111 ], [ %count.3297, %land.rhs ], [ 1, %while.cond106thread-pre-split ]
  %53 = load i32* %sv_flags14, align 4, !tbaa !3
  %and205 = and i32 %53, 10223616
  %cmp206 = icmp eq i32 %and205, 262144
  br i1 %cmp206, label %cond.true208, label %cond.false213

cond.true208:                                     ; preds = %if.end203
  %sv_any209 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %54 = load i8** %sv_any209, align 8, !tbaa !0
  %xpv_cur210 = getelementptr inbounds i8* %54, i64 8
  %55 = bitcast i8* %xpv_cur210 to i64*
  %56 = load i64* %55, align 8, !tbaa !4
  store i64 %56, i64* %n_a, align 8, !tbaa !4
  br label %cond.end215

cond.false213:                                    ; preds = %if.end203
  %call214 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %n_a, i32 2) #4
  %sv_any217.phi.trans.insert = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %.pre311 = load i8** %sv_any217.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false213, %cond.true208
  %57 = phi i8* [ %.pre311, %cond.false213 ], [ %54, %cond.true208 ]
  %58 = load i64* %len, align 8, !tbaa !4
  %xpv_cur218 = getelementptr inbounds i8* %57, i64 8
  %59 = bitcast i8* %xpv_cur218 to i64*
  store i64 %58, i64* %59, align 8, !tbaa !4
  %xpv_pv220 = bitcast i8* %57 to i8**
  %60 = load i8** %xpv_pv220, align 8, !tbaa !0
  %xpv_cur222 = getelementptr inbounds i8* %57, i64 8
  %61 = bitcast i8* %xpv_cur222 to i64*
  %62 = load i64* %61, align 8, !tbaa !4
  %add.ptr223 = getelementptr inbounds i8* %60, i64 %62
  store i8 0, i8* %add.ptr223, align 1, !tbaa !1
  %63 = load i32* %sv_flags14, align 4, !tbaa !3
  %and225 = and i32 %63, 2096955391
  store i32 %and225, i32* %sv_flags14, align 4, !tbaa !3
  %and227 = and i32 %63, 16384
  %tobool228 = icmp eq i32 %and227, 0
  br i1 %tobool228, label %nope, label %if.then229

if.then229:                                       ; preds = %cond.end215
  %call230 = call i32 @Perl_mg_set(%struct.sv* %sv) #4
  br label %nope

nope:                                             ; preds = %if.then178, %cond.end215, %if.end190, %if.then229, %if.else186
  %temp_buffer.2 = phi i8* [ %temp_buffer.0, %if.then178 ], [ %temp_buffer.1, %if.then229 ], [ %temp_buffer.1, %cond.end215 ], [ %temp_buffer.0, %if.else186 ], [ %temp_buffer.0, %if.end190 ]
  %svrecode.2 = phi %struct.sv* [ %svrecode.0, %if.then178 ], [ %svrecode.1, %if.then229 ], [ %svrecode.1, %cond.end215 ], [ %svrecode.0, %if.else186 ], [ %svrecode.0, %if.end190 ]
  %count.5 = phi i32 [ 0, %if.then178 ], [ %count.4, %if.then229 ], [ %count.4, %cond.end215 ], [ 0, %if.else186 ], [ 0, %if.end190 ]
  %tobool233 = icmp eq %struct.sv* %svrecode.2, null
  br i1 %tobool233, label %if.end235, label %if.then234

if.then234:                                       ; preds = %nope
  call void @Perl_sv_free(%struct.sv* %svrecode.2) #4
  br label %if.end235

if.end235:                                        ; preds = %if.then147, %cond.end86, %land.lhs.true89, %if.then99, %nope, %if.then234
  %count.5294 = phi i32 [ %count.5, %nope ], [ %count.5, %if.then234 ], [ 0, %if.then99 ], [ 0, %land.lhs.true89 ], [ 0, %cond.end86 ], [ 0, %if.then147 ]
  %temp_buffer.2293 = phi i8* [ %temp_buffer.2, %nope ], [ %temp_buffer.2, %if.then234 ], [ null, %if.then99 ], [ null, %land.lhs.true89 ], [ null, %cond.end86 ], [ null, %if.then147 ]
  call void @Perl_safesysfree(i8* %temp_buffer.2293) #4
  br label %return

return:                                           ; preds = %if.then42, %while.body, %cond.end25, %for.inc, %cond.end, %entry, %if.end235
  %retval.0 = phi i32 [ %count.5294, %if.end235 ], [ 0, %entry ], [ 0, %cond.end ], [ 0, %cond.end25 ], [ %count.1, %for.inc ], [ 0, %if.then42 ], [ %add49, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_recode_to_utf8(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_bytes_from_utf8(i8*, i64*, i8*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_vop(i32 %optype, %struct.sv* %sv, %struct.sv* %left, %struct.sv* %right) #0 {
entry:
  %leftlen = alloca i64, align 8
  %rightlen = alloca i64, align 8
  %n_a = alloca i64, align 8
  %ulen = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %left, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 536870912
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %1, i64 0, i32 7
  %2 = load i8* %op_private, align 1, !tbaa !1
  %and1 = and i8 %2, 8
  %lnot = icmp eq i8 %and1, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %sv_flags4 = getelementptr inbounds %struct.sv* %right, i64 0, i32 2
  %4 = load i32* %sv_flags4, align 4, !tbaa !3
  %and5 = and i32 %4, 536870912
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %land.end13, label %land.rhs7

land.rhs7:                                        ; preds = %land.end
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private8 = getelementptr inbounds %struct.cop* %5, i64 0, i32 7
  %6 = load i8* %op_private8, align 1, !tbaa !1
  %and10 = and i8 %6, 8
  %lnot12 = icmp eq i8 %and10, 0
  br label %land.end13

land.end13:                                       ; preds = %land.end, %land.rhs7
  %7 = phi i1 [ false, %land.end ], [ %lnot12, %land.rhs7 ]
  %.not = xor i1 %3, true
  %brmerge = or i1 %7, %.not
  br i1 %brmerge, label %if.else, label %if.then

if.then:                                          ; preds = %land.end13
  %call = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %right, i32 2) #4
  br label %if.end25

if.else:                                          ; preds = %land.end13
  %.not654 = xor i1 %7, true
  %brmerge655 = or i1 %3, %.not654
  br i1 %brmerge655, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.else
  %call24 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %left, i32 2) #4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23, %if.then
  %cmp = icmp eq %struct.sv* %sv, %left
  br i1 %cmp, label %lor.lhs.false, label %if.then37

lor.lhs.false:                                    ; preds = %if.end25
  %cmp27 = icmp eq i32 %optype, 91
  br i1 %cmp27, label %if.end38, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %9 = and i32 %8, 118431744
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true29, %if.end25
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 0) #4
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false, %land.lhs.true29, %if.then37
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %and40 = and i32 %11, 262144
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end38
  %sv_any = getelementptr inbounds %struct.sv* %left, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %12, i64 8
  %13 = bitcast i8* %xpv_cur to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  store i64 %14, i64* %leftlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %12 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end38
  %call44 = call i8* @Perl_sv_2pv_flags(%struct.sv* %left, i64* %leftlen, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ %call44, %cond.false ]
  %16 = load i32* %sv_flags4, align 4, !tbaa !3
  %and46 = and i32 %16, 262144
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %cond.false54, label %cond.true49

cond.true49:                                      ; preds = %cond.end
  %sv_any50 = getelementptr inbounds %struct.sv* %right, i64 0, i32 0
  %17 = load i8** %sv_any50, align 8, !tbaa !0
  %xpv_cur51 = getelementptr inbounds i8* %17, i64 8
  %18 = bitcast i8* %xpv_cur51 to i64*
  %19 = load i64* %18, align 8, !tbaa !4
  store i64 %19, i64* %rightlen, align 8, !tbaa !4
  %xpv_pv53 = bitcast i8* %17 to i8**
  %20 = load i8** %xpv_pv53, align 8, !tbaa !0
  br label %cond.end56

cond.false54:                                     ; preds = %cond.end
  %call55 = call i8* @Perl_sv_2pv_flags(%struct.sv* %right, i64* %rightlen, i32 2) #4
  %.pre = load i64* %rightlen, align 8, !tbaa !4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true49
  %21 = phi i64 [ %19, %cond.true49 ], [ %.pre, %cond.false54 ]
  %cond57 = phi i8* [ %20, %cond.true49 ], [ %call55, %cond.false54 ]
  %22 = load i64* %leftlen, align 8, !tbaa !4
  %cmp58 = icmp ult i64 %22, %21
  %cond63 = select i1 %cmp58, i64 %22, i64 %21
  %conv64 = trunc i64 %cond63 to i32
  %brmerge657 = or i1 %3, %7
  br i1 %brmerge657, label %land.lhs.true70, label %if.else91

land.lhs.true70:                                  ; preds = %cond.end56
  %cmp74 = icmp eq %struct.sv* %sv, %right
  %or.cond658 = or i1 %cmp, %cmp74
  br i1 %or.cond658, label %if.then76, label %if.else91

if.then76:                                        ; preds = %land.lhs.true70
  %cmp77 = icmp eq i32 %optype, 91
  br i1 %cmp77, label %cond.true79, label %cond.false81

cond.true79:                                      ; preds = %if.then76
  %sext653 = shl i64 %cond63, 32
  %conv80 = ashr exact i64 %sext653, 32
  br label %cond.end82

cond.false81:                                     ; preds = %if.then76
  %add = add i64 %21, %22
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %cond.true79
  %cond83 = phi i64 [ %conv80, %cond.true79 ], [ %add, %cond.false81 ]
  %conv84 = trunc i64 %cond83 to i32
  %add85 = shl i64 %cond83, 32
  %sext652 = add i64 %add85, 4294967296
  %conv86 = ashr exact i64 %sext652, 32
  %call87 = call i8* @Perl_safesysmalloc(i64 %conv86) #4
  call void @llvm.memset.p0i8.i64(i8* %call87, i8 0, i64 %conv86, i32 1, i1 false)
  %sv_any194.pre = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %sv_flags196.pre = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  br label %if.end192

if.else91:                                        ; preds = %land.lhs.true70, %cond.end56
  %sv_flags92 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %23 = load i32* %sv_flags92, align 4, !tbaa !3
  %and93 = and i32 %23, 118423552
  %tobool94 = icmp ne i32 %and93, 0
  %and97 = and i32 %23, 248
  %cmp98 = icmp ugt i32 %and97, 7
  %or.cond659 = or i1 %tobool94, %cmp98
  br i1 %or.cond659, label %if.then100, label %if.else166

if.then100:                                       ; preds = %if.else91
  %and102 = and i32 %23, 10223616
  %cmp103 = icmp eq i32 %and102, 262144
  br i1 %cmp103, label %cond.true105, label %cond.false110

cond.true105:                                     ; preds = %if.then100
  %sv_any106 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %24 = load i8** %sv_any106, align 8, !tbaa !0
  %xpv_cur107 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur107 to i64*
  %26 = load i64* %25, align 8, !tbaa !4
  store i64 %26, i64* %n_a, align 8, !tbaa !4
  %xpv_pv109 = bitcast i8* %24 to i8**
  %27 = load i8** %xpv_pv109, align 8, !tbaa !0
  br label %cond.end112

cond.false110:                                    ; preds = %if.then100
  %call111 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %n_a, i32 2) #4
  %sv_any114.phi.trans.insert = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %.pre764 = load i8** %sv_any114.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false110, %cond.true105
  %28 = phi i8* [ %24, %cond.true105 ], [ %.pre764, %cond.false110 ]
  %cond113 = phi i8* [ %27, %cond.true105 ], [ %call111, %cond.false110 ]
  %sv_any114 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %xpv_cur115 = getelementptr inbounds i8* %28, i64 8
  %29 = bitcast i8* %xpv_cur115 to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  %sext650 = shl i64 %cond63, 32
  %conv116 = ashr exact i64 %sext650, 32
  %cmp117 = icmp ult i64 %30, %conv116
  br i1 %cmp117, label %if.then119, label %if.end140

if.then119:                                       ; preds = %cond.end112
  %xpv_len = getelementptr inbounds i8* %28, i64 16
  %31 = bitcast i8* %xpv_len to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  %sext651 = add i64 %sext650, 4294967296
  %conv122 = ashr exact i64 %sext651, 32
  %cmp123 = icmp ult i64 %32, %conv122
  br i1 %cmp123, label %cond.true125, label %cond.false129

cond.true125:                                     ; preds = %if.then119
  %call128 = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %conv122) #4
  br label %cond.end132

cond.false129:                                    ; preds = %if.then119
  %xpv_pv131 = bitcast i8* %28 to i8**
  %33 = load i8** %xpv_pv131, align 8, !tbaa !0
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false129, %cond.true125
  %cond133 = phi i8* [ %call128, %cond.true125 ], [ %33, %cond.false129 ]
  %34 = load i8** %sv_any114, align 8, !tbaa !0
  %xpv_cur135 = getelementptr inbounds i8* %34, i64 8
  %35 = bitcast i8* %xpv_cur135 to i64*
  %36 = load i64* %35, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %cond133, i64 %36
  %sub = add i64 %conv116, 1
  %add139 = sub i64 %sub, %36
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %add139, i32 1, i1 false)
  br label %if.end140

if.end140:                                        ; preds = %cond.end132, %cond.end112
  %dc.0 = phi i8* [ %cond133, %cond.end132 ], [ %cond113, %cond.end112 ]
  %cmp141 = icmp ne i32 %optype, 91
  %or.cond667 = and i1 %cmp141, %brmerge657
  br i1 %or.cond667, label %if.then149, label %if.end192

if.then149:                                       ; preds = %if.end140
  %37 = load i8** %sv_any114, align 8, !tbaa !0
  %xpv_len151 = getelementptr inbounds i8* %37, i64 16
  %38 = bitcast i8* %xpv_len151 to i64*
  %39 = load i64* %38, align 8, !tbaa !4
  %40 = load i64* %leftlen, align 8, !tbaa !4
  %41 = load i64* %rightlen, align 8, !tbaa !4
  %add152 = add i64 %40, 1
  %add153 = add i64 %add152, %41
  %cmp154 = icmp ult i64 %39, %add153
  br i1 %cmp154, label %cond.true156, label %cond.false160

cond.true156:                                     ; preds = %if.then149
  %call159 = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add153) #4
  br label %if.end192

cond.false160:                                    ; preds = %if.then149
  %xpv_pv162 = bitcast i8* %37 to i8**
  %42 = load i8** %xpv_pv162, align 8, !tbaa !0
  br label %if.end192

if.else166:                                       ; preds = %if.else91
  %cmp167 = icmp eq i32 %optype, 91
  br i1 %cmp167, label %cond.true169, label %cond.false171

cond.true169:                                     ; preds = %if.else166
  %sext649 = shl i64 %cond63, 32
  %conv170 = ashr exact i64 %sext649, 32
  br label %cond.end178

cond.false171:                                    ; preds = %if.else166
  %cmp172 = icmp ugt i64 %22, %21
  %cond177 = select i1 %cmp172, i64 %22, i64 %21
  br label %cond.end178

cond.end178:                                      ; preds = %cond.false171, %cond.true169
  %cond179 = phi i64 [ %conv170, %cond.true169 ], [ %cond177, %cond.false171 ]
  %conv180 = trunc i64 %cond179 to i32
  %add181 = shl i64 %cond179, 32
  %sext = add i64 %add181, 4294967296
  %conv182 = ashr exact i64 %sext, 32
  %call184 = call i8* @Perl_safesysmalloc(i64 %conv182) #4
  call void @llvm.memset.p0i8.i64(i8* %call184, i8 0, i64 %conv182, i32 1, i1 false)
  %conv188 = ashr exact i64 %add181, 32
  call void @Perl_sv_usepvn(%struct.sv* %sv, i8* %call184, i64 %conv188) #4
  %sv_any189 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %43 = load i8** %sv_any189, align 8, !tbaa !0
  %xpv_pv190 = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv190, align 8, !tbaa !0
  br label %if.end192

if.end192:                                        ; preds = %if.end140, %cond.true156, %cond.false160, %cond.end178, %cond.end82
  %sv_flags196.pre-phi = phi i32* [ %sv_flags92, %cond.true156 ], [ %sv_flags92, %cond.false160 ], [ %sv_flags92, %cond.end178 ], [ %sv_flags196.pre, %cond.end82 ], [ %sv_flags92, %if.end140 ]
  %sv_any194.pre-phi = phi i8** [ %sv_any114, %cond.true156 ], [ %sv_any114, %cond.false160 ], [ %sv_any189, %cond.end178 ], [ %sv_any194.pre, %cond.end82 ], [ %sv_any114, %if.end140 ]
  %dc.1 = phi i8* [ %call159, %cond.true156 ], [ %42, %cond.false160 ], [ %44, %cond.end178 ], [ %call87, %cond.end82 ], [ %dc.0, %if.end140 ]
  %needlen.0 = phi i32 [ 0, %cond.true156 ], [ 0, %cond.false160 ], [ %conv180, %cond.end178 ], [ %conv84, %cond.end82 ], [ 0, %if.end140 ]
  %sext645 = shl i64 %cond63, 32
  %conv193 = ashr exact i64 %sext645, 32
  %45 = load i8** %sv_any194.pre-phi, align 8, !tbaa !0
  %xpv_cur195 = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur195 to i64*
  store i64 %conv193, i64* %46, align 8, !tbaa !4
  %47 = load i32* %sv_flags196.pre-phi, align 4, !tbaa !3
  %and197 = and i32 %47, 1223753727
  %or = or i32 %and197, 67371008
  store i32 %or, i32* %sv_flags196.pre-phi, align 4, !tbaa !3
  br i1 %brmerge657, label %if.then204, label %if.else289

if.then204:                                       ; preds = %if.end192
  %48 = load i64* %leftlen, align 8, !tbaa !4
  %49 = load i64* %rightlen, align 8, !tbaa !4
  switch i32 %optype, label %sw.epilog [
    i32 91, label %while.cond.preheader
    i32 92, label %while.cond229.preheader
    i32 93, label %while.cond245.preheader
  ]

while.cond245.preheader:                          ; preds = %if.then204
  %tobool246690 = icmp eq i64 %48, 0
  %tobool248691 = icmp eq i64 %49, 0
  %or.cond665692 = or i1 %tobool246690, %tobool248691
  br i1 %or.cond665692, label %mop_up_utf, label %while.body251

while.cond229.preheader:                          ; preds = %if.then204
  %tobool230676 = icmp eq i64 %48, 0
  %tobool232677 = icmp eq i64 %49, 0
  %or.cond664678 = or i1 %tobool230676, %tobool232677
  br i1 %or.cond664678, label %mop_up_utf, label %while.body235

while.cond.preheader:                             ; preds = %if.then204
  %tobool205668 = icmp eq i64 %48, 0
  %tobool207669 = icmp eq i64 %49, 0
  %or.cond662670 = or i1 %tobool205668, %tobool207669
  br i1 %or.cond662670, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %rulen.0675 = phi i64 [ %sub215, %while.body ], [ %49, %while.cond.preheader ]
  %lulen.0674 = phi i64 [ %sub212, %while.body ], [ %48, %while.cond.preheader ]
  %dc.2673 = phi i8* [ %call217, %while.body ], [ %dc.1, %while.cond.preheader ]
  %lc.0672 = phi i8* [ %add.ptr211, %while.body ], [ %cond, %while.cond.preheader ]
  %rc.0671 = phi i8* [ %add.ptr214, %while.body ], [ %cond57, %while.cond.preheader ]
  %call210 = call i64 @Perl_utf8n_to_uvuni(i8* %lc.0672, i64 %lulen.0674, i64* %ulen, i32 105) #4
  %50 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr211 = getelementptr inbounds i8* %lc.0672, i64 %50
  %sub212 = sub i64 %lulen.0674, %50
  %call213 = call i64 @Perl_utf8n_to_uvuni(i8* %rc.0671, i64 %rulen.0675, i64* %ulen, i32 105) #4
  %51 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr214 = getelementptr inbounds i8* %rc.0671, i64 %51
  %sub215 = sub i64 %rulen.0675, %51
  %and216 = and i64 %call213, %call210
  %call217 = call i8* @Perl_uvuni_to_utf8(i8* %dc.2673, i64 %and216) #4
  %tobool205 = icmp eq i64 %lulen.0674, %50
  %tobool207 = icmp eq i64 %rulen.0675, %51
  %or.cond662 = or i1 %tobool205, %tobool207
  br i1 %or.cond662, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %dc.2.lcssa = phi i8* [ %dc.1, %while.cond.preheader ], [ %call217, %while.body ]
  %cmp221 = icmp eq %struct.sv* %sv, %right
  %or.cond663 = or i1 %cmp, %cmp221
  br i1 %or.cond663, label %if.then223, label %if.end225

if.then223:                                       ; preds = %while.end
  %conv224 = sext i32 %needlen.0 to i64
  call void @Perl_sv_usepvn(%struct.sv* %sv, i8* %dc.1, i64 %conv224) #4
  br label %if.end225

if.end225:                                        ; preds = %while.end, %if.then223
  %sub.ptr.lhs.cast = ptrtoint i8* %dc.2.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %dc.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %52 = load i8** %sv_any194.pre-phi, align 8, !tbaa !0
  %xpv_cur227 = getelementptr inbounds i8* %52, i64 8
  %53 = bitcast i8* %xpv_cur227 to i64*
  store i64 %sub.ptr.sub, i64* %53, align 8, !tbaa !4
  br label %sw.epilog

while.body235:                                    ; preds = %while.cond229.preheader, %while.body235
  %rulen.1683 = phi i64 [ %sub241, %while.body235 ], [ %49, %while.cond229.preheader ]
  %lulen.1682 = phi i64 [ %sub238, %while.body235 ], [ %48, %while.cond229.preheader ]
  %dc.3681 = phi i8* [ %call242, %while.body235 ], [ %dc.1, %while.cond229.preheader ]
  %lc.1680 = phi i8* [ %add.ptr237, %while.body235 ], [ %cond, %while.cond229.preheader ]
  %rc.1679 = phi i8* [ %add.ptr240, %while.body235 ], [ %cond57, %while.cond229.preheader ]
  %call236 = call i64 @Perl_utf8n_to_uvuni(i8* %lc.1680, i64 %lulen.1682, i64* %ulen, i32 105) #4
  %54 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr237 = getelementptr inbounds i8* %lc.1680, i64 %54
  %sub238 = sub i64 %lulen.1682, %54
  %call239 = call i64 @Perl_utf8n_to_uvuni(i8* %rc.1679, i64 %rulen.1683, i64* %ulen, i32 105) #4
  %55 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr240 = getelementptr inbounds i8* %rc.1679, i64 %55
  %sub241 = sub i64 %rulen.1683, %55
  %xor = xor i64 %call239, %call236
  %call242 = call i8* @Perl_uvuni_to_utf8(i8* %dc.3681, i64 %xor) #4
  %tobool230 = icmp eq i64 %lulen.1682, %54
  %tobool232 = icmp eq i64 %rulen.1683, %55
  %or.cond664 = or i1 %tobool230, %tobool232
  br i1 %or.cond664, label %mop_up_utf, label %while.body235

while.body251:                                    ; preds = %while.cond245.preheader, %while.body251
  %rulen.2697 = phi i64 [ %sub257, %while.body251 ], [ %49, %while.cond245.preheader ]
  %lulen.2696 = phi i64 [ %sub254, %while.body251 ], [ %48, %while.cond245.preheader ]
  %dc.4695 = phi i8* [ %call259, %while.body251 ], [ %dc.1, %while.cond245.preheader ]
  %lc.2694 = phi i8* [ %add.ptr253, %while.body251 ], [ %cond, %while.cond245.preheader ]
  %rc.2693 = phi i8* [ %add.ptr256, %while.body251 ], [ %cond57, %while.cond245.preheader ]
  %call252 = call i64 @Perl_utf8n_to_uvuni(i8* %lc.2694, i64 %lulen.2696, i64* %ulen, i32 105) #4
  %56 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr253 = getelementptr inbounds i8* %lc.2694, i64 %56
  %sub254 = sub i64 %lulen.2696, %56
  %call255 = call i64 @Perl_utf8n_to_uvuni(i8* %rc.2693, i64 %rulen.2697, i64* %ulen, i32 105) #4
  %57 = load i64* %ulen, align 8, !tbaa !4
  %add.ptr256 = getelementptr inbounds i8* %rc.2693, i64 %57
  %sub257 = sub i64 %rulen.2697, %57
  %or258 = or i64 %call255, %call252
  %call259 = call i8* @Perl_uvuni_to_utf8(i8* %dc.4695, i64 %or258) #4
  %tobool246 = icmp eq i64 %lulen.2696, %56
  %tobool248 = icmp eq i64 %rulen.2697, %57
  %or.cond665 = or i1 %tobool246, %tobool248
  br i1 %or.cond665, label %mop_up_utf, label %while.body251

mop_up_utf:                                       ; preds = %while.cond245.preheader, %while.body251, %while.cond229.preheader, %while.body235
  %rc.3 = phi i8* [ %cond57, %while.cond229.preheader ], [ %add.ptr240, %while.body235 ], [ %cond57, %while.cond245.preheader ], [ %add.ptr256, %while.body251 ]
  %lc.3 = phi i8* [ %cond, %while.cond229.preheader ], [ %add.ptr237, %while.body235 ], [ %cond, %while.cond245.preheader ], [ %add.ptr253, %while.body251 ]
  %dc.5 = phi i8* [ %dc.1, %while.cond229.preheader ], [ %call242, %while.body235 ], [ %dc.1, %while.cond245.preheader ], [ %call259, %while.body251 ]
  %lulen.3 = phi i64 [ %48, %while.cond229.preheader ], [ %sub238, %while.body235 ], [ %48, %while.cond245.preheader ], [ %sub254, %while.body251 ]
  %rulen.3 = phi i64 [ %49, %while.cond229.preheader ], [ %sub241, %while.body235 ], [ %49, %while.cond245.preheader ], [ %sub257, %while.body251 ]
  %cmp264 = icmp eq %struct.sv* %sv, %right
  %or.cond666 = or i1 %cmp, %cmp264
  br i1 %or.cond666, label %if.then266, label %if.end268

if.then266:                                       ; preds = %mop_up_utf
  %conv267 = sext i32 %needlen.0 to i64
  call void @Perl_sv_usepvn(%struct.sv* %sv, i8* %dc.1, i64 %conv267) #4
  br label %if.end268

if.end268:                                        ; preds = %mop_up_utf, %if.then266
  %sub.ptr.lhs.cast269 = ptrtoint i8* %dc.5 to i64
  %sub.ptr.rhs.cast270 = ptrtoint i8* %dc.1 to i64
  %sub.ptr.sub271 = sub i64 %sub.ptr.lhs.cast269, %sub.ptr.rhs.cast270
  %58 = load i8** %sv_any194.pre-phi, align 8, !tbaa !0
  %xpv_cur273 = getelementptr inbounds i8* %58, i64 8
  %59 = bitcast i8* %xpv_cur273 to i64*
  store i64 %sub.ptr.sub271, i64* %59, align 8, !tbaa !4
  %tobool274 = icmp eq i64 %rulen.3, 0
  br i1 %tobool274, label %if.else276, label %if.then275

if.then275:                                       ; preds = %if.end268
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* %rc.3, i64 %rulen.3, i32 2) #4
  br label %sw.epilog

if.else276:                                       ; preds = %if.end268
  %tobool277 = icmp eq i64 %lulen.3, 0
  br i1 %tobool277, label %if.else279, label %if.then278

if.then278:                                       ; preds = %if.else276
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* %lc.3, i64 %lulen.3, i32 2) #4
  br label %sw.epilog

if.else279:                                       ; preds = %if.else276
  %xpv_pv281 = bitcast i8* %58 to i8**
  %60 = load i8** %xpv_pv281, align 8, !tbaa !0
  %add.ptr284 = getelementptr inbounds i8* %60, i64 %sub.ptr.sub271
  store i8 0, i8* %add.ptr284, align 1, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then275, %if.else279, %if.then278, %if.then204, %if.end225
  %61 = load i32* %sv_flags196.pre-phi, align 4, !tbaa !3
  %or288 = or i32 %61, 536870912
  store i32 %or288, i32* %sv_flags196.pre-phi, align 4, !tbaa !3
  br label %finish

if.else289:                                       ; preds = %if.end192
  %cmp291 = icmp ugt i64 %conv193, 31
  br i1 %cmp291, label %land.lhs.true293, label %if.end373

land.lhs.true293:                                 ; preds = %if.else289
  %62 = ptrtoint i8* %dc.1 to i64
  %rem = and i64 %62, 7
  %tobool294 = icmp eq i64 %rem, 0
  br i1 %tobool294, label %land.lhs.true295, label %if.end373

land.lhs.true295:                                 ; preds = %land.lhs.true293
  %63 = ptrtoint i8* %cond to i64
  %rem296 = and i64 %63, 7
  %tobool297 = icmp eq i64 %rem296, 0
  br i1 %tobool297, label %land.lhs.true298, label %if.end373

land.lhs.true298:                                 ; preds = %land.lhs.true295
  %64 = ptrtoint i8* %cond57 to i64
  %rem299 = and i64 %64, 7
  %tobool300 = icmp eq i64 %rem299, 0
  br i1 %tobool300, label %if.then301, label %if.end373

if.then301:                                       ; preds = %land.lhs.true298
  %conv193.tr = trunc i64 %conv193 to i32
  %conv304 = and i32 %conv193.tr, 31
  %div = lshr i64 %conv193, 5
  %conv306 = trunc i64 %div to i32
  %65 = bitcast i8* %dc.1 to i64*
  %66 = bitcast i8* %cond to i64*
  %67 = bitcast i8* %cond57 to i64*
  switch i32 %optype, label %sw.epilog371 [
    i32 91, label %while.cond308.preheader
    i32 92, label %while.cond328.preheader
    i32 93, label %while.cond350.preheader
  ]

while.cond350.preheader:                          ; preds = %if.then301
  %tobool352737 = icmp eq i32 %conv306, 0
  br i1 %tobool352737, label %sw.epilog371, label %while.body353.lr.ph

while.body353.lr.ph:                              ; preds = %while.cond350.preheader
  %68 = xor i64 %22, -1
  %69 = xor i64 %21, -1
  %70 = icmp ugt i64 %68, %69
  %umax757 = select i1 %70, i64 %68, i64 %69
  %71 = shl i64 %umax757, 32
  %sext765 = xor i64 %71, -137438953472
  %72 = ashr exact i64 %sext765, 32
  %73 = add i64 %72, 137438953440
  %74 = and i64 %73, 137438953440
  %75 = add i64 %74, 32
  %scevgep758 = getelementptr i8* %dc.1, i64 %75
  %scevgep760 = getelementptr i8* %cond57, i64 %75
  %scevgep762 = getelementptr i8* %cond, i64 %75
  br label %while.body353

while.cond328.preheader:                          ; preds = %if.then301
  %tobool330728 = icmp eq i32 %conv306, 0
  br i1 %tobool330728, label %sw.epilog371, label %while.body331.lr.ph

while.body331.lr.ph:                              ; preds = %while.cond328.preheader
  %76 = xor i64 %22, -1
  %77 = xor i64 %21, -1
  %78 = icmp ugt i64 %76, %77
  %umax750 = select i1 %78, i64 %76, i64 %77
  %79 = shl i64 %umax750, 32
  %sext766 = xor i64 %79, -137438953472
  %80 = ashr exact i64 %sext766, 32
  %81 = add i64 %80, 137438953440
  %82 = and i64 %81, 137438953440
  %83 = add i64 %82, 32
  %scevgep751 = getelementptr i8* %dc.1, i64 %83
  %scevgep753 = getelementptr i8* %cond57, i64 %83
  %scevgep755 = getelementptr i8* %cond, i64 %83
  br label %while.body331

while.cond308.preheader:                          ; preds = %if.then301
  %tobool309719 = icmp eq i32 %conv306, 0
  br i1 %tobool309719, label %sw.epilog371, label %while.body310.lr.ph

while.body310.lr.ph:                              ; preds = %while.cond308.preheader
  %84 = xor i64 %22, -1
  %85 = xor i64 %21, -1
  %86 = icmp ugt i64 %84, %85
  %umax = select i1 %86, i64 %84, i64 %85
  %87 = shl i64 %umax, 32
  %sext767 = xor i64 %87, -137438953472
  %88 = ashr exact i64 %sext767, 32
  %89 = add i64 %88, 137438953440
  %90 = and i64 %89, 137438953440
  %91 = add i64 %90, 32
  %scevgep = getelementptr i8* %dc.1, i64 %91
  %scevgep746 = getelementptr i8* %cond57, i64 %91
  %scevgep748 = getelementptr i8* %cond, i64 %91
  br label %while.body310

while.body310:                                    ; preds = %while.body310.lr.ph, %while.body310
  %dl.0723 = phi i64* [ %65, %while.body310.lr.ph ], [ %incdec.ptr325, %while.body310 ]
  %ll.0722 = phi i64* [ %66, %while.body310.lr.ph ], [ %incdec.ptr322, %while.body310 ]
  %rl.0721 = phi i64* [ %67, %while.body310.lr.ph ], [ %incdec.ptr323, %while.body310 ]
  %len.0720 = phi i32 [ %conv306, %while.body310.lr.ph ], [ %dec, %while.body310 ]
  %dec = add nsw i32 %len.0720, -1
  %incdec.ptr = getelementptr inbounds i64* %ll.0722, i64 1
  %92 = load i64* %ll.0722, align 8, !tbaa !4
  %incdec.ptr311 = getelementptr inbounds i64* %rl.0721, i64 1
  %93 = load i64* %rl.0721, align 8, !tbaa !4
  %and312 = and i64 %93, %92
  %incdec.ptr313 = getelementptr inbounds i64* %dl.0723, i64 1
  store i64 %and312, i64* %dl.0723, align 8, !tbaa !4
  %incdec.ptr314 = getelementptr inbounds i64* %ll.0722, i64 2
  %94 = load i64* %incdec.ptr, align 8, !tbaa !4
  %incdec.ptr315 = getelementptr inbounds i64* %rl.0721, i64 2
  %95 = load i64* %incdec.ptr311, align 8, !tbaa !4
  %and316 = and i64 %95, %94
  %incdec.ptr317 = getelementptr inbounds i64* %dl.0723, i64 2
  store i64 %and316, i64* %incdec.ptr313, align 8, !tbaa !4
  %incdec.ptr318 = getelementptr inbounds i64* %ll.0722, i64 3
  %96 = load i64* %incdec.ptr314, align 8, !tbaa !4
  %incdec.ptr319 = getelementptr inbounds i64* %rl.0721, i64 3
  %97 = load i64* %incdec.ptr315, align 8, !tbaa !4
  %and320 = and i64 %97, %96
  %incdec.ptr321 = getelementptr inbounds i64* %dl.0723, i64 3
  store i64 %and320, i64* %incdec.ptr317, align 8, !tbaa !4
  %incdec.ptr322 = getelementptr inbounds i64* %ll.0722, i64 4
  %98 = load i64* %incdec.ptr318, align 8, !tbaa !4
  %incdec.ptr323 = getelementptr inbounds i64* %rl.0721, i64 4
  %99 = load i64* %incdec.ptr319, align 8, !tbaa !4
  %and324 = and i64 %99, %98
  %incdec.ptr325 = getelementptr inbounds i64* %dl.0723, i64 4
  store i64 %and324, i64* %incdec.ptr321, align 8, !tbaa !4
  %tobool309 = icmp eq i32 %dec, 0
  br i1 %tobool309, label %while.cond308.sw.epilog371.loopexit_crit_edge, label %while.body310

while.body331:                                    ; preds = %while.body331.lr.ph, %while.body331
  %dl.1732 = phi i64* [ %65, %while.body331.lr.ph ], [ %incdec.ptr347, %while.body331 ]
  %ll.1731 = phi i64* [ %66, %while.body331.lr.ph ], [ %incdec.ptr344, %while.body331 ]
  %rl.1730 = phi i64* [ %67, %while.body331.lr.ph ], [ %incdec.ptr345, %while.body331 ]
  %len.1729 = phi i32 [ %conv306, %while.body331.lr.ph ], [ %dec329, %while.body331 ]
  %dec329 = add nsw i32 %len.1729, -1
  %incdec.ptr332 = getelementptr inbounds i64* %ll.1731, i64 1
  %100 = load i64* %ll.1731, align 8, !tbaa !4
  %incdec.ptr333 = getelementptr inbounds i64* %rl.1730, i64 1
  %101 = load i64* %rl.1730, align 8, !tbaa !4
  %xor334 = xor i64 %101, %100
  %incdec.ptr335 = getelementptr inbounds i64* %dl.1732, i64 1
  store i64 %xor334, i64* %dl.1732, align 8, !tbaa !4
  %incdec.ptr336 = getelementptr inbounds i64* %ll.1731, i64 2
  %102 = load i64* %incdec.ptr332, align 8, !tbaa !4
  %incdec.ptr337 = getelementptr inbounds i64* %rl.1730, i64 2
  %103 = load i64* %incdec.ptr333, align 8, !tbaa !4
  %xor338 = xor i64 %103, %102
  %incdec.ptr339 = getelementptr inbounds i64* %dl.1732, i64 2
  store i64 %xor338, i64* %incdec.ptr335, align 8, !tbaa !4
  %incdec.ptr340 = getelementptr inbounds i64* %ll.1731, i64 3
  %104 = load i64* %incdec.ptr336, align 8, !tbaa !4
  %incdec.ptr341 = getelementptr inbounds i64* %rl.1730, i64 3
  %105 = load i64* %incdec.ptr337, align 8, !tbaa !4
  %xor342 = xor i64 %105, %104
  %incdec.ptr343 = getelementptr inbounds i64* %dl.1732, i64 3
  store i64 %xor342, i64* %incdec.ptr339, align 8, !tbaa !4
  %incdec.ptr344 = getelementptr inbounds i64* %ll.1731, i64 4
  %106 = load i64* %incdec.ptr340, align 8, !tbaa !4
  %incdec.ptr345 = getelementptr inbounds i64* %rl.1730, i64 4
  %107 = load i64* %incdec.ptr341, align 8, !tbaa !4
  %xor346 = xor i64 %107, %106
  %incdec.ptr347 = getelementptr inbounds i64* %dl.1732, i64 4
  store i64 %xor346, i64* %incdec.ptr343, align 8, !tbaa !4
  %tobool330 = icmp eq i32 %dec329, 0
  br i1 %tobool330, label %while.cond328.sw.epilog371.loopexit727_crit_edge, label %while.body331

while.body353:                                    ; preds = %while.body353.lr.ph, %while.body353
  %dl.2741 = phi i64* [ %65, %while.body353.lr.ph ], [ %incdec.ptr369, %while.body353 ]
  %ll.2740 = phi i64* [ %66, %while.body353.lr.ph ], [ %incdec.ptr366, %while.body353 ]
  %rl.2739 = phi i64* [ %67, %while.body353.lr.ph ], [ %incdec.ptr367, %while.body353 ]
  %len.2738 = phi i32 [ %conv306, %while.body353.lr.ph ], [ %dec351, %while.body353 ]
  %dec351 = add nsw i32 %len.2738, -1
  %incdec.ptr354 = getelementptr inbounds i64* %ll.2740, i64 1
  %108 = load i64* %ll.2740, align 8, !tbaa !4
  %incdec.ptr355 = getelementptr inbounds i64* %rl.2739, i64 1
  %109 = load i64* %rl.2739, align 8, !tbaa !4
  %or356 = or i64 %109, %108
  %incdec.ptr357 = getelementptr inbounds i64* %dl.2741, i64 1
  store i64 %or356, i64* %dl.2741, align 8, !tbaa !4
  %incdec.ptr358 = getelementptr inbounds i64* %ll.2740, i64 2
  %110 = load i64* %incdec.ptr354, align 8, !tbaa !4
  %incdec.ptr359 = getelementptr inbounds i64* %rl.2739, i64 2
  %111 = load i64* %incdec.ptr355, align 8, !tbaa !4
  %or360 = or i64 %111, %110
  %incdec.ptr361 = getelementptr inbounds i64* %dl.2741, i64 2
  store i64 %or360, i64* %incdec.ptr357, align 8, !tbaa !4
  %incdec.ptr362 = getelementptr inbounds i64* %ll.2740, i64 3
  %112 = load i64* %incdec.ptr358, align 8, !tbaa !4
  %incdec.ptr363 = getelementptr inbounds i64* %rl.2739, i64 3
  %113 = load i64* %incdec.ptr359, align 8, !tbaa !4
  %or364 = or i64 %113, %112
  %incdec.ptr365 = getelementptr inbounds i64* %dl.2741, i64 3
  store i64 %or364, i64* %incdec.ptr361, align 8, !tbaa !4
  %incdec.ptr366 = getelementptr inbounds i64* %ll.2740, i64 4
  %114 = load i64* %incdec.ptr362, align 8, !tbaa !4
  %incdec.ptr367 = getelementptr inbounds i64* %rl.2739, i64 4
  %115 = load i64* %incdec.ptr363, align 8, !tbaa !4
  %or368 = or i64 %115, %114
  %incdec.ptr369 = getelementptr inbounds i64* %dl.2741, i64 4
  store i64 %or368, i64* %incdec.ptr365, align 8, !tbaa !4
  %tobool352 = icmp eq i32 %dec351, 0
  br i1 %tobool352, label %while.cond350.sw.epilog371.loopexit736_crit_edge, label %while.body353

while.cond308.sw.epilog371.loopexit_crit_edge:    ; preds = %while.body310
  %scevgep745 = bitcast i8* %scevgep to i64*
  %scevgep746747 = bitcast i8* %scevgep746 to i64*
  %scevgep748749 = bitcast i8* %scevgep748 to i64*
  br label %sw.epilog371

while.cond328.sw.epilog371.loopexit727_crit_edge: ; preds = %while.body331
  %scevgep751752 = bitcast i8* %scevgep751 to i64*
  %scevgep753754 = bitcast i8* %scevgep753 to i64*
  %scevgep755756 = bitcast i8* %scevgep755 to i64*
  br label %sw.epilog371

while.cond350.sw.epilog371.loopexit736_crit_edge: ; preds = %while.body353
  %scevgep758759 = bitcast i8* %scevgep758 to i64*
  %scevgep760761 = bitcast i8* %scevgep760 to i64*
  %scevgep762763 = bitcast i8* %scevgep762 to i64*
  br label %sw.epilog371

sw.epilog371:                                     ; preds = %while.cond350.preheader, %while.cond350.sw.epilog371.loopexit736_crit_edge, %while.cond328.preheader, %while.cond328.sw.epilog371.loopexit727_crit_edge, %while.cond308.preheader, %while.cond308.sw.epilog371.loopexit_crit_edge, %if.then301
  %rl.3 = phi i64* [ %67, %if.then301 ], [ %scevgep746747, %while.cond308.sw.epilog371.loopexit_crit_edge ], [ %67, %while.cond308.preheader ], [ %scevgep753754, %while.cond328.sw.epilog371.loopexit727_crit_edge ], [ %67, %while.cond328.preheader ], [ %scevgep760761, %while.cond350.sw.epilog371.loopexit736_crit_edge ], [ %67, %while.cond350.preheader ]
  %ll.3 = phi i64* [ %66, %if.then301 ], [ %scevgep748749, %while.cond308.sw.epilog371.loopexit_crit_edge ], [ %66, %while.cond308.preheader ], [ %scevgep755756, %while.cond328.sw.epilog371.loopexit727_crit_edge ], [ %66, %while.cond328.preheader ], [ %scevgep762763, %while.cond350.sw.epilog371.loopexit736_crit_edge ], [ %66, %while.cond350.preheader ]
  %dl.3 = phi i64* [ %65, %if.then301 ], [ %scevgep745, %while.cond308.sw.epilog371.loopexit_crit_edge ], [ %65, %while.cond308.preheader ], [ %scevgep751752, %while.cond328.sw.epilog371.loopexit727_crit_edge ], [ %65, %while.cond328.preheader ], [ %scevgep758759, %while.cond350.sw.epilog371.loopexit736_crit_edge ], [ %65, %while.cond350.preheader ]
  %116 = bitcast i64* %dl.3 to i8*
  %117 = bitcast i64* %ll.3 to i8*
  %118 = bitcast i64* %rl.3 to i8*
  br label %if.end373

if.end373:                                        ; preds = %land.lhs.true298, %land.lhs.true295, %land.lhs.true293, %if.else289, %sw.epilog371
  %len.3 = phi i32 [ %conv64, %land.lhs.true293 ], [ %conv64, %land.lhs.true295 ], [ %conv64, %land.lhs.true298 ], [ %conv304, %sw.epilog371 ], [ %conv64, %if.else289 ]
  %rc.4 = phi i8* [ %cond57, %land.lhs.true293 ], [ %cond57, %land.lhs.true295 ], [ %cond57, %land.lhs.true298 ], [ %118, %sw.epilog371 ], [ %cond57, %if.else289 ]
  %lc.4 = phi i8* [ %cond, %land.lhs.true293 ], [ %cond, %land.lhs.true295 ], [ %cond, %land.lhs.true298 ], [ %117, %sw.epilog371 ], [ %cond, %if.else289 ]
  %dc.6 = phi i8* [ %dc.1, %land.lhs.true293 ], [ %dc.1, %land.lhs.true295 ], [ %dc.1, %land.lhs.true298 ], [ %116, %sw.epilog371 ], [ %dc.1, %if.else289 ]
  switch i32 %optype, label %finish [
    i32 91, label %while.cond375.preheader
    i32 92, label %while.cond388.preheader
    i32 93, label %while.cond401.preheader
  ]

while.cond401.preheader:                          ; preds = %if.end373
  %tobool403714 = icmp eq i32 %len.3, 0
  br i1 %tobool403714, label %mop_up, label %while.body404

while.cond388.preheader:                          ; preds = %if.end373
  %tobool390708 = icmp eq i32 %len.3, 0
  br i1 %tobool390708, label %mop_up, label %while.body391

while.cond375.preheader:                          ; preds = %if.end373
  %tobool377703 = icmp eq i32 %len.3, 0
  br i1 %tobool377703, label %finish, label %while.body378

while.body378:                                    ; preds = %while.cond375.preheader, %while.body378
  %dc.7707 = phi i8* [ %incdec.ptr385, %while.body378 ], [ %dc.6, %while.cond375.preheader ]
  %lc.5706 = phi i8* [ %incdec.ptr379, %while.body378 ], [ %lc.4, %while.cond375.preheader ]
  %rc.5705 = phi i8* [ %incdec.ptr381, %while.body378 ], [ %rc.4, %while.cond375.preheader ]
  %len.4704 = phi i32 [ %dec376, %while.body378 ], [ %len.3, %while.cond375.preheader ]
  %dec376 = add nsw i32 %len.4704, -1
  %incdec.ptr379 = getelementptr inbounds i8* %lc.5706, i64 1
  %119 = load i8* %lc.5706, align 1, !tbaa !1
  %incdec.ptr381 = getelementptr inbounds i8* %rc.5705, i64 1
  %120 = load i8* %rc.5705, align 1, !tbaa !1
  %and383648 = and i8 %120, %119
  %incdec.ptr385 = getelementptr inbounds i8* %dc.7707, i64 1
  store i8 %and383648, i8* %dc.7707, align 1, !tbaa !1
  %tobool377 = icmp eq i32 %dec376, 0
  br i1 %tobool377, label %finish, label %while.body378

while.body391:                                    ; preds = %while.cond388.preheader, %while.body391
  %dc.8712 = phi i8* [ %incdec.ptr398, %while.body391 ], [ %dc.6, %while.cond388.preheader ]
  %lc.6711 = phi i8* [ %incdec.ptr392, %while.body391 ], [ %lc.4, %while.cond388.preheader ]
  %rc.6710 = phi i8* [ %incdec.ptr394, %while.body391 ], [ %rc.4, %while.cond388.preheader ]
  %len.5709 = phi i32 [ %dec389, %while.body391 ], [ %len.3, %while.cond388.preheader ]
  %dec389 = add nsw i32 %len.5709, -1
  %incdec.ptr392 = getelementptr inbounds i8* %lc.6711, i64 1
  %121 = load i8* %lc.6711, align 1, !tbaa !1
  %incdec.ptr394 = getelementptr inbounds i8* %rc.6710, i64 1
  %122 = load i8* %rc.6710, align 1, !tbaa !1
  %xor396647 = xor i8 %122, %121
  %incdec.ptr398 = getelementptr inbounds i8* %dc.8712, i64 1
  store i8 %xor396647, i8* %dc.8712, align 1, !tbaa !1
  %tobool390 = icmp eq i32 %dec389, 0
  br i1 %tobool390, label %mop_up, label %while.body391

while.body404:                                    ; preds = %while.cond401.preheader, %while.body404
  %dc.9718 = phi i8* [ %incdec.ptr411, %while.body404 ], [ %dc.6, %while.cond401.preheader ]
  %lc.7717 = phi i8* [ %incdec.ptr405, %while.body404 ], [ %lc.4, %while.cond401.preheader ]
  %rc.7716 = phi i8* [ %incdec.ptr407, %while.body404 ], [ %rc.4, %while.cond401.preheader ]
  %len.6715 = phi i32 [ %dec402, %while.body404 ], [ %len.3, %while.cond401.preheader ]
  %dec402 = add nsw i32 %len.6715, -1
  %incdec.ptr405 = getelementptr inbounds i8* %lc.7717, i64 1
  %123 = load i8* %lc.7717, align 1, !tbaa !1
  %incdec.ptr407 = getelementptr inbounds i8* %rc.7716, i64 1
  %124 = load i8* %rc.7716, align 1, !tbaa !1
  %or409646 = or i8 %124, %123
  %incdec.ptr411 = getelementptr inbounds i8* %dc.9718, i64 1
  store i8 %or409646, i8* %dc.9718, align 1, !tbaa !1
  %tobool403 = icmp eq i32 %dec402, 0
  br i1 %tobool403, label %mop_up, label %while.body404

mop_up:                                           ; preds = %while.cond401.preheader, %while.body404, %while.cond388.preheader, %while.body391
  %125 = load i64* %rightlen, align 8, !tbaa !4
  %cmp414 = icmp ugt i64 %125, %conv193
  br i1 %cmp414, label %if.then416, label %if.else420

if.then416:                                       ; preds = %mop_up
  %add.ptr417 = getelementptr inbounds i8* %cond57, i64 %conv193
  %sub419 = sub i64 %125, %conv193
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* %add.ptr417, i64 %sub419, i32 2) #4
  br label %finish

if.else420:                                       ; preds = %mop_up
  %126 = load i64* %leftlen, align 8, !tbaa !4
  %cmp422 = icmp ugt i64 %126, %conv193
  br i1 %cmp422, label %if.then424, label %if.else429

if.then424:                                       ; preds = %if.else420
  %add.ptr426 = getelementptr inbounds i8* %cond, i64 %conv193
  %sub428 = sub i64 %126, %conv193
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* %add.ptr426, i64 %sub428, i32 2) #4
  br label %finish

if.else429:                                       ; preds = %if.else420
  %127 = load i8** %sv_any194.pre-phi, align 8, !tbaa !0
  %xpv_pv431 = bitcast i8* %127 to i8**
  %128 = load i8** %xpv_pv431, align 8, !tbaa !0
  %xpv_cur433 = getelementptr inbounds i8* %127, i64 8
  %129 = bitcast i8* %xpv_cur433 to i64*
  %130 = load i64* %129, align 8, !tbaa !4
  %add.ptr434 = getelementptr inbounds i8* %128, i64 %130
  store i8 0, i8* %add.ptr434, align 1, !tbaa !1
  br label %finish

finish:                                           ; preds = %while.cond375.preheader, %while.body378, %if.end373, %if.then424, %if.else429, %if.then416, %sw.epilog
  %131 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool438 = icmp ne i8 %131, 0
  %132 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool440 = icmp ne i8 %132, 0
  %or.cond = and i1 %tobool438, %tobool440
  br i1 %or.cond, label %if.then443, label %if.end446

if.then443:                                       ; preds = %finish
  call void @Perl_sv_taint(%struct.sv* %sv) #4
  br label %if.end446

if.end446:                                        ; preds = %if.then443, %finish
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: optsize
declare void @Perl_sv_usepvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_uvuni_to_utf8(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_do_kv() #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %2 = bitcast %struct.sv* %1 to %struct.hv*
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %3, i64 0, i32 6
  %4 = load i8* %op_flags, align 1, !tbaa !1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.end19, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp6 = icmp eq i32 %and, 2
  br i1 %cmp6, label %cond.end19, label %cond.false9

cond.false9:                                      ; preds = %cond.false
  %cmp13 = icmp eq i32 %and, 3
  br i1 %cmp13, label %cond.end19, label %cond.false16

cond.false16:                                     ; preds = %cond.false9
  %call = tail call i32 @Perl_block_gimme() #4
  %.pre = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false, %cond.false9, %cond.false16, %entry
  %5 = phi %struct.op* [ %3, %entry ], [ %3, %cond.false ], [ %.pre, %cond.false16 ], [ %3, %cond.false9 ]
  %cond20 = phi i32 [ 128, %entry ], [ 0, %cond.false ], [ %call, %cond.false16 ], [ 1, %cond.false9 ]
  %op_type = getelementptr inbounds %struct.op* %5, i64 0, i32 4
  %6 = load i16* %op_type, align 2, !tbaa !5
  %7 = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %8 = load i32* %7, align 4, !tbaa !3
  %and28 = and i32 %8, 255
  %cmp29 = icmp eq i32 %and28, 11
  %cmp33 = icmp eq i16 %6, 134
  br i1 %cmp33, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end19
  %cmp26 = icmp eq i16 %6, 130
  %cmp22 = icmp eq i16 %6, 131
  %conv27 = zext i1 %cmp26 to i32
  %conv23 = zext i1 %cmp22 to i32
  %cmp37 = icmp eq i16 %6, 11
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end19
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %dovalues.0 = phi i32 [ 1, %if.then ], [ %conv27, %lor.lhs.false ]
  %dokeys.0 = phi i32 [ 1, %if.then ], [ %conv23, %lor.lhs.false ]
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.then39, label %if.end59

if.then39:                                        ; preds = %if.end
  %op_flags40 = getelementptr inbounds %struct.op* %5, i64 0, i32 6
  %9 = load i8* %op_flags40, align 1, !tbaa !1
  %and42 = and i8 %9, 32
  %tobool43 = icmp eq i8 %and42, 0
  br i1 %tobool43, label %lor.lhs.false44, label %if.then50

lor.lhs.false44:                                  ; preds = %if.then39
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %10 = load i8* %op_private, align 1, !tbaa !1
  %and46 = and i8 %10, 8
  %tobool47 = icmp eq i8 %and46, 0
  br i1 %tobool47, label %if.end58, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false44
  %call48 = tail call i32 @Perl_is_lvalue_sub() #4
  %tobool49 = icmp eq i32 %call48, 0
  br i1 %tobool49, label %if.end58, label %land.lhs.true.if.then50_crit_edge

land.lhs.true.if.then50_crit_edge:                ; preds = %land.lhs.true
  %.pre269 = load %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.then50

if.then50:                                        ; preds = %land.lhs.true.if.then50_crit_edge, %if.then39
  %11 = phi %struct.op* [ %.pre269, %land.lhs.true.if.then50_crit_edge ], [ %5, %if.then39 ]
  %op_targ = getelementptr inbounds %struct.op* %11, i64 0, i32 3
  %12 = load i64* %op_targ, align 8, !tbaa !4
  %13 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %13, i64 %12
  %14 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags51 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags51, align 4, !tbaa !3
  %and52 = and i32 %15, 255
  %cmp53 = icmp eq i32 %and52, 9
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then50
  %sv_any = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %16 = load i8** %sv_any, align 8, !tbaa !0
  %xlv_targ = getelementptr inbounds i8* %16, i64 72
  %17 = bitcast i8* %xlv_targ to %struct.sv**
  store %struct.sv* null, %struct.sv** %17, align 8, !tbaa !0
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then50
  store %struct.sv* %14, %struct.sv** %0, align 8, !tbaa !0
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true, %lor.lhs.false44, %if.end56
  %sp.0 = phi %struct.sv** [ %0, %if.end56 ], [ %incdec.ptr, %lor.lhs.false44 ], [ %incdec.ptr, %land.lhs.true ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %18, i64 0, i32 0
  br label %return

if.end59:                                         ; preds = %if.end
  br i1 %cmp29, label %cond.end64, label %cond.false62

cond.false62:                                     ; preds = %if.end59
  %19 = bitcast %struct.sv* %1 to %struct.av*
  %call63 = tail call %struct.hv* @Perl_avhv_keys(%struct.av* %19) #4
  br label %cond.end64

cond.end64:                                       ; preds = %if.end59, %cond.false62
  %cond65 = phi %struct.hv* [ %call63, %cond.false62 ], [ %2, %if.end59 ]
  %call66 = tail call i32 @Perl_hv_iterinit(%struct.hv* %cond65) #4
  switch i32 %cond20, label %if.end142 [
    i32 128, label %if.then69
    i32 0, label %if.then74
  ]

if.then69:                                        ; preds = %cond.end64
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next70 = getelementptr inbounds %struct.op* %20, i64 0, i32 0
  br label %return

if.then74:                                        ; preds = %cond.end64
  %21 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ76 = getelementptr inbounds %struct.op* %21, i64 0, i32 3
  %22 = load i64* %op_targ76, align 8, !tbaa !4
  %23 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds %struct.sv** %23, i64 %22
  %24 = load %struct.sv** %arrayidx77, align 8, !tbaa !0
  %op_flags78 = getelementptr inbounds %struct.op* %21, i64 0, i32 6
  %25 = load i8* %op_flags78, align 1, !tbaa !1
  %and80 = and i8 %25, 32
  %tobool81 = icmp eq i8 %and80, 0
  br i1 %tobool81, label %lor.lhs.false82, label %if.then90

lor.lhs.false82:                                  ; preds = %if.then74
  %op_private83 = getelementptr inbounds %struct.op* %21, i64 0, i32 7
  %26 = load i8* %op_private83, align 1, !tbaa !1
  %and85 = and i8 %26, 8
  %tobool86 = icmp eq i8 %and85, 0
  br i1 %tobool86, label %if.end118, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %lor.lhs.false82
  %call88 = tail call i32 @Perl_is_lvalue_sub() #4
  %tobool89 = icmp eq i32 %call88, 0
  br i1 %tobool89, label %if.end118, label %if.then90

if.then90:                                        ; preds = %land.lhs.true87, %if.then74
  %sv_flags91 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %27 = load i32* %sv_flags91, align 4, !tbaa !3
  %and92 = and i32 %27, 255
  %cmp93 = icmp ult i32 %and92, 9
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.then90
  %call96 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %24, i32 9) #4
  tail call void @Perl_sv_magic(%struct.sv* %24, %struct.sv* null, i32 107, i8* null, i32 0) #4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.then90
  %sv_any98 = getelementptr inbounds %struct.sv* %24, i64 0, i32 0
  %28 = load i8** %sv_any98, align 8, !tbaa !0
  %29 = getelementptr inbounds i8* %28, i64 80
  store i8 107, i8* %29, align 1, !tbaa !1
  %30 = load i8** %sv_any98, align 8, !tbaa !0
  %xlv_targ100 = getelementptr inbounds i8* %30, i64 72
  %31 = bitcast i8* %xlv_targ100 to %struct.sv**
  %32 = load %struct.sv** %31, align 8, !tbaa !0
  %33 = bitcast %struct.hv* %cond65 to %struct.sv*
  %cmp101 = icmp eq %struct.sv* %32, %33
  br i1 %cmp101, label %if.end115, label %if.then103

if.then103:                                       ; preds = %if.end97
  %tobool106 = icmp eq %struct.sv* %32, null
  br i1 %tobool106, label %if.end110, label %if.then107

if.then107:                                       ; preds = %if.then103
  tail call void @Perl_sv_free(%struct.sv* %32) #4
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %if.then107
  store %struct.sv* %33, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool111 = icmp eq %struct.hv* %cond65, null
  br i1 %tobool111, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end110
  %34 = getelementptr inbounds %struct.hv* %cond65, i64 0, i32 1
  %35 = load i32* %34, align 4, !tbaa !3
  %inc = add i32 %35, 1
  store i32 %inc, i32* %34, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end110, %land.rhs
  %36 = load i8** %sv_any98, align 8, !tbaa !0
  %xlv_targ114 = getelementptr inbounds i8* %36, i64 72
  %37 = bitcast i8* %xlv_targ114 to %struct.sv**
  store %struct.sv* %33, %struct.sv** %37, align 8, !tbaa !0
  br label %if.end115

if.end115:                                        ; preds = %if.end97, %land.end
  store %struct.sv* %24, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %38 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next117 = getelementptr inbounds %struct.op* %38, i64 0, i32 0
  br label %return

if.end118:                                        ; preds = %land.lhs.true87, %lor.lhs.false82
  %39 = getelementptr inbounds %struct.hv* %cond65, i64 0, i32 2
  %40 = load i32* %39, align 4, !tbaa !3
  %and120 = and i32 %40, 32768
  %tobool121 = icmp eq i32 %and120, 0
  br i1 %tobool121, label %if.then126, label %cond.true122

cond.true122:                                     ; preds = %if.end118
  %41 = bitcast %struct.hv* %cond65 to %struct.sv*
  %call123 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %41, i32 80) #4
  %tobool124 = icmp eq %struct.magic* %call123, null
  br i1 %tobool124, label %if.then126, label %while.cond

if.then126:                                       ; preds = %cond.true122, %if.end118
  %sv_any127 = getelementptr inbounds %struct.hv* %cond65, i64 0, i32 0
  %42 = load %struct.xpvhv** %sv_any127, align 8, !tbaa !0
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %42, i64 0, i32 3
  %43 = load i64* %xhv_keys, align 8, !tbaa !4
  %xnv_nv = getelementptr inbounds %struct.xpvhv* %42, i64 0, i32 4
  %44 = load double* %xnv_nv, align 8, !tbaa !6
  %conv129 = fptosi double %44 to i64
  %sub = sub nsw i64 %43, %conv129
  br label %if.end133

while.cond:                                       ; preds = %cond.true122, %while.cond
  %i.0 = phi i64 [ %inc132, %while.cond ], [ 0, %cond.true122 ]
  %call130 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %cond65) #4
  %tobool131 = icmp eq %struct.he* %call130, null
  %inc132 = add nsw i64 %i.0, 1
  br i1 %tobool131, label %if.end133, label %while.cond

if.end133:                                        ; preds = %while.cond, %if.then126
  %i.1 = phi i64 [ %sub, %if.then126 ], [ %i.0, %while.cond ]
  tail call void @Perl_sv_setiv(%struct.sv* %24, i64 %i.1) #4
  %sv_flags134 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %45 = load i32* %sv_flags134, align 4, !tbaa !3
  %and135 = and i32 %45, 16384
  %tobool136 = icmp eq i32 %and135, 0
  br i1 %tobool136, label %if.end139, label %if.then137

if.then137:                                       ; preds = %if.end133
  %call138 = tail call i32 @Perl_mg_set(%struct.sv* %24) #4
  br label %if.end139

if.end139:                                        ; preds = %if.end133, %if.then137
  store %struct.sv* %24, %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %46 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next141 = getelementptr inbounds %struct.op* %46, i64 0, i32 0
  br label %return

if.end142:                                        ; preds = %cond.end64
  %47 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %incdec.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %sv_any143 = getelementptr inbounds %struct.hv* %cond65, i64 0, i32 0
  %48 = load %struct.xpvhv** %sv_any143, align 8, !tbaa !0
  %xhv_keys144 = getelementptr inbounds %struct.xpvhv* %48, i64 0, i32 3
  %49 = load i64* %xhv_keys144, align 8, !tbaa !4
  %xnv_nv146 = getelementptr inbounds %struct.xpvhv* %48, i64 0, i32 4
  %50 = load double* %xnv_nv146, align 8, !tbaa !6
  %conv147 = fptosi double %50 to i64
  %sub148 = sub nsw i64 %49, %conv147
  %add = add nsw i32 %dokeys.0, %dovalues.0
  %conv149 = sext i32 %add to i64
  %mul = mul nsw i64 %sub148, %conv149
  %sext = shl i64 %mul, 32
  %conv151 = ashr exact i64 %sext, 32
  %cmp152 = icmp slt i64 %sub.ptr.div, %conv151
  br i1 %cmp152, label %if.then154, label %while.cond167.preheader

if.then154:                                       ; preds = %if.end142
  %conv150 = trunc i64 %mul to i32
  %call165 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr, %struct.sv** %incdec.ptr, i32 %conv150) #4
  br label %while.cond167.preheader

while.cond167.preheader:                          ; preds = %if.then154, %if.end142
  %storemerge.ph = phi %struct.sv** [ %incdec.ptr, %if.end142 ], [ %call165, %if.then154 ]
  store %struct.sv** %storemerge.ph, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call168266 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %cond65) #4
  %tobool169267 = icmp eq %struct.he* %call168266, null
  br i1 %tobool169267, label %while.end205, label %while.body170.lr.ph

while.body170.lr.ph:                              ; preds = %while.cond167.preheader
  %tobool171 = icmp eq i32 %dokeys.0, 0
  %tobool185 = icmp eq i32 %dovalues.0, 0
  %51 = bitcast %struct.sv* %1 to %struct.av*
  br label %while.body170

while.body170:                                    ; preds = %while.body170.lr.ph, %while.cond167.backedge
  %call168268 = phi %struct.he* [ %call168266, %while.body170.lr.ph ], [ %call168, %while.cond167.backedge ]
  %52 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br i1 %tobool171, label %if.end184, label %if.then172

if.then172:                                       ; preds = %while.body170
  %call173 = tail call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %call168268) #4
  %53 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast174 = ptrtoint %struct.sv** %53 to i64
  %sub.ptr.rhs.cast175 = ptrtoint %struct.sv** %52 to i64
  %sub.ptr.sub176 = sub i64 %sub.ptr.lhs.cast174, %sub.ptr.rhs.cast175
  %cmp178 = icmp slt i64 %sub.ptr.sub176, 8
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.then172
  %call181 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %52, i32 1) #4
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.then172
  %sp.2 = phi %struct.sv** [ %call181, %if.then180 ], [ %52, %if.then172 ]
  %incdec.ptr183 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call173, %struct.sv** %incdec.ptr183, align 8, !tbaa !0
  br label %if.end184

if.end184:                                        ; preds = %while.body170, %if.end182
  %sp.3 = phi %struct.sv** [ %incdec.ptr183, %if.end182 ], [ %52, %while.body170 ]
  br i1 %tobool185, label %while.cond167.backedge, label %if.then186

while.cond167.backedge:                           ; preds = %if.end184, %if.end202
  %storemerge.be = phi %struct.sv** [ %incdec.ptr203, %if.end202 ], [ %sp.3, %if.end184 ]
  store %struct.sv** %storemerge.be, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call168 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %cond65) #4
  %tobool169 = icmp eq %struct.he* %call168, null
  br i1 %tobool169, label %while.end205, label %while.body170

if.then186:                                       ; preds = %if.end184
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br i1 %cmp29, label %cond.true188, label %cond.false190

cond.true188:                                     ; preds = %if.then186
  %call189 = tail call %struct.sv* @Perl_hv_iterval(%struct.hv* %2, %struct.he* %call168268) #4
  br label %cond.end192

cond.false190:                                    ; preds = %if.then186
  %call191 = tail call %struct.sv* @Perl_avhv_iterval(%struct.av* %51, %struct.he* %call168268) #4
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false190, %cond.true188
  %cond193 = phi %struct.sv* [ %call189, %cond.true188 ], [ %call191, %cond.false190 ]
  %54 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %55 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast194 = ptrtoint %struct.sv** %55 to i64
  %sub.ptr.rhs.cast195 = ptrtoint %struct.sv** %54 to i64
  %sub.ptr.sub196 = sub i64 %sub.ptr.lhs.cast194, %sub.ptr.rhs.cast195
  %cmp198 = icmp slt i64 %sub.ptr.sub196, 8
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %cond.end192
  %call201 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %54, %struct.sv** %54, i32 1) #4
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %cond.end192
  %sp.4 = phi %struct.sv** [ %call201, %if.then200 ], [ %54, %cond.end192 ]
  %incdec.ptr203 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %cond193, %struct.sv** %incdec.ptr203, align 8, !tbaa !0
  br label %while.cond167.backedge

while.end205:                                     ; preds = %while.cond167.backedge, %while.cond167.preheader
  %56 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next206 = getelementptr inbounds %struct.op* %56, i64 0, i32 0
  br label %return

return:                                           ; preds = %while.end205, %if.end139, %if.end115, %if.then69, %if.end58
  %retval.0.in = phi %struct.op** [ %op_next70, %if.then69 ], [ %op_next117, %if.end115 ], [ %op_next141, %if.end139 ], [ %op_next206, %while.end205 ], [ %op_next, %if.end58 ]
  %retval.0 = load %struct.op** %retval.0.in, align 8
  ret %struct.op* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() #1

; Function Attrs: optsize
declare i32 @Perl_is_lvalue_sub() #1

; Function Attrs: optsize
declare %struct.hv* @Perl_avhv_keys(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_avhv_iterval(%struct.av*, %struct.he*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare i64 @Perl_swash_fetch(%struct.sv*, i8*, i8 signext) #1

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: optsize
declare i64 @Perl_utf8_to_uvuni(i8*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
