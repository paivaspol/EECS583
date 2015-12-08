; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/HiRes.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
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
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.interpreter = type { i8 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.timezone = type { i32, i32 }

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [33 x i8] c"Usage: Time::HiRes::constant(sv)\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str1 = private unnamed_addr constant [36 x i8] c"%s is not a valid Time::HiRes macro\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"Your vendor has not defined Time::HiRes macro %s, used\00", align 1
@PL_stack_max = external global %struct.sv**
@PL_sv_undef = external global %struct.sv
@.str4 = private unnamed_addr constant [37 x i8] c"Usage: Time::HiRes::usleep(useconds)\00", align 1
@.str5 = private unnamed_addr constant [56 x i8] c"Time::HiRes::usleep(%g): negative time not invented yet\00", align 1
@.str6 = private unnamed_addr constant [79 x i8] c"Time::HiRes::sleep(%g): internal error: useconds < 0 (unsigned %lu signed %ld)\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Time::HiRes::sleep(%g): negative time not invented yet\00", align 1
@.str8 = private unnamed_addr constant [35 x i8] c"Usage: Time::HiRes::gettimeofday()\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"Usage: Time::HiRes::time()\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/HiRes.c\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"Time::HiRes::constant\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"Time::HiRes::usleep\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"Time::HiRes::sleep\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"Time::HiRes::gettimeofday\00", align 1
@.str17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str18 = private unnamed_addr constant [18 x i8] c"Time::HiRes::time\00", align 1
@PL_sv_yes = external global %struct.sv
@.str19 = private unnamed_addr constant [8 x i8] c"d_ualar\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"d_uslee\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"ITIMER_VIRTUAL\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"d_gettimeofday\00", align 1
@.str23 = private unnamed_addr constant [16 x i8] c"ITIMER_REALPROF\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"ITIMER_PROF\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"ITIMER_REAL\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"d_getitimer\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"d_setitimer\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c"d_nanosleep\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @hrt_usleep(i64 %usec) #0 {
entry:
  %tv = alloca %struct.timeval, align 8
  %tv_sec = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0
  store i64 0, i64* %tv_sec, align 8, !tbaa !0
  %tv_usec = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1
  store i64 %usec, i64* %tv_usec, align 8, !tbaa !0
  %call = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv) #4
  ret void
}

; Function Attrs: optsize
declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Time__HiRes_constant(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %5 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  %sext76 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext76, 32
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx11, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !4
  %and12 = and i32 %12, 262144
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %cond.false17, label %cond.true15

cond.true15:                                      ; preds = %cond.end
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !0
  store i64 %15, i64* %len, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end19

cond.false17:                                     ; preds = %cond.end
  %call18 = call i8* @Perl_sv_2pv_flags(%struct.sv* %11, i64* %len, i32 2) #4
  %.pr = load i64* %len, align 8, !tbaa !0
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true15
  %17 = phi i64 [ %.pr, %cond.false17 ], [ %15, %cond.true15 ]
  %cond20 = phi i8* [ %call18, %cond.false17 ], [ %16, %cond.true15 ]
  switch i64 %17, label %sw.bb [
    i64 8, label %sw.bb.i
    i64 11, label %sw.bb7.i
    i64 14, label %sw.bb9.i
    i64 15, label %sw.bb23.i
  ]

sw.bb.i:                                          ; preds = %cond.end19
  %arrayidx.i = getelementptr inbounds i8* %cond20, i64 7
  %18 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv.i = sext i8 %18 to i32
  switch i32 %conv.i, label %sw.bb [
    i32 109, label %sw.bb1.i
    i32 112, label %sw.bb2.i
  ]

sw.bb1.i:                                         ; preds = %sw.bb.i
  %call.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i64 7) #4
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %sw.bb29, label %sw.bb

sw.bb2.i:                                         ; preds = %sw.bb.i
  %call3.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i64 7) #4
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %sw.bb29, label %sw.bb

sw.bb7.i:                                         ; preds = %cond.end19
  %arrayidx.i.i = getelementptr inbounds i8* %cond20, i64 7
  %19 = load i8* %arrayidx.i.i, align 1, !tbaa !1
  %conv.i.i = sext i8 %19 to i32
  switch i32 %conv.i.i, label %sw.bb [
    i32 80, label %sw.bb.i.i
    i32 82, label %sw.bb1.i.i
    i32 105, label %sw.bb6.i.i
    i32 108, label %sw.bb15.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb7.i
  %call.i.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i64 11) #4
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %sw.bb29, label %sw.bb

sw.bb1.i.i:                                       ; preds = %sw.bb7.i
  %call2.i.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0), i64 11) #4
  %tobool3.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.i.i, label %sw.bb29, label %sw.bb

sw.bb6.i.i:                                       ; preds = %sw.bb7.i
  %call7.i.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), i64 11) #4
  %tobool8.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.i.i, label %sw.bb29, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %sw.bb6.i.i
  %call11.i.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i64 11) #4
  %tobool12.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.i.i, label %sw.bb29, label %sw.bb

sw.bb15.i.i:                                      ; preds = %sw.bb7.i
  %call16.i.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), i64 11) #4
  %tobool17.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.i.i, label %sw.bb29, label %sw.bb

sw.bb9.i:                                         ; preds = %cond.end19
  %arrayidx10.i = getelementptr inbounds i8* %cond20, i64 6
  %20 = load i8* %arrayidx10.i, align 1, !tbaa !1
  %conv11.i = sext i8 %20 to i32
  switch i32 %conv11.i, label %sw.bb [
    i32 95, label %sw.bb12.i
    i32 105, label %sw.bb17.i
  ]

sw.bb12.i:                                        ; preds = %sw.bb9.i
  %call13.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i64 14) #4
  %tobool14.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.i, label %sw.bb29, label %sw.bb

sw.bb17.i:                                        ; preds = %sw.bb9.i
  %call18.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i64 14) #4
  %tobool19.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.i, label %sw.bb29, label %sw.bb

sw.bb23.i:                                        ; preds = %cond.end19
  %call24.i = call i32 @memcmp(i8* %cond20, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0), i64 15) #4
  %tobool25.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.i, label %sw.bb25, label %sw.bb

sw.bb:                                            ; preds = %cond.end19, %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.bb9.i, %sw.bb12.i, %sw.bb17.i, %sw.bb23.i, %sw.bb.i.i, %sw.bb1.i.i, %if.end10.i.i, %sw.bb15.i.i, %sw.bb7.i
  %call22 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([36 x i8]* @.str1, i64 0, i64 0), i8* %cond20) #4
  %call23 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call22) #4
  %add.ptr8.sum77 = sub i64 1, %idx.ext7
  %incdec.ptr24 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum77
  store %struct.sv* %call23, %struct.sv** %incdec.ptr24, align 8, !tbaa !3
  br label %sw.epilog

sw.bb25:                                          ; preds = %sw.bb23.i
  %call26 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %cond20) #4
  %call27 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call26) #4
  %add.ptr8.sum = sub i64 1, %idx.ext7
  %incdec.ptr28 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum
  store %struct.sv* %call27, %struct.sv** %incdec.ptr28, align 8, !tbaa !3
  br label %sw.epilog

sw.bb29:                                          ; preds = %sw.bb15.i.i, %if.end10.i.i, %sw.bb1.i.i, %sw.bb.i.i, %sw.bb1.i, %sw.bb2.i, %sw.bb6.i.i, %sw.bb12.i, %sw.bb17.i
  %.ph = phi i64 [ 0, %sw.bb1.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb6.i.i ], [ 1, %sw.bb12.i ], [ 1, %sw.bb17.i ], [ 2, %sw.bb.i.i ], [ 0, %sw.bb1.i.i ], [ 0, %if.end10.i.i ], [ 0, %sw.bb15.i.i ]
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast30 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast31 = ptrtoint %struct.sv** %add.ptr8 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %cmp34 = icmp slt i64 %sub.ptr.sub32, 8
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %sw.bb29
  %call37 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr8, %struct.sv** %add.ptr8, i32 1) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %sw.bb29
  %sp.0 = phi %struct.sv** [ %call37, %if.then36 ], [ %add.ptr8, %sw.bb29 ]
  %incdec.ptr39 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr39, align 8, !tbaa !3
  call void @Perl_sv_setiv(%struct.sv* %cond, i64 %.ph) #4
  %sv_flags40 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %22 = load i32* %sv_flags40, align 4, !tbaa !4
  %and41 = and i32 %22, 16384
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end38
  %call44 = call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end45

if.end45:                                         ; preds = %if.end38, %if.then43
  %incdec.ptr46 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %cond, %struct.sv** %incdec.ptr46, align 8, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end45, %sw.bb25, %sw.bb
  %sp.1 = phi %struct.sv** [ %incdec.ptr46, %if.end45 ], [ %incdec.ptr28, %sw.bb25 ], [ %incdec.ptr24, %sw.bb ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Time__HiRes_usleep(%struct.cv* nocapture %cv) #0 {
entry:
  %tv.i = alloca %struct.timeval, align 8
  %Ta = alloca %struct.timeval, align 8
  %Tb = alloca %struct.timeval, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div486 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div486 to i32
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !4
  %and = and i32 %6, 131072
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %7, i64 32
  %8 = bitcast i8* %xnv_nv to double*
  %9 = load double* %8, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call double @Perl_sv_2nv(%struct.sv* %5) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %9, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.op* %10, i64 0, i32 7
  %11 = load i8* %op_private, align 1, !tbaa !1
  %and15 = and i8 %11, 32
  %tobool16 = icmp eq i8 %and15, 0
  br i1 %tobool16, label %cond.false19, label %cond.true17

cond.true17:                                      ; preds = %cond.end
  %op_targ = getelementptr inbounds %struct.op* %10, i64 0, i32 3
  %12 = load i64* %op_targ, align 8, !tbaa !0
  %13 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds %struct.sv** %13, i64 %12
  %14 = load %struct.sv** %arrayidx18, align 8, !tbaa !3
  br label %cond.end21

cond.false19:                                     ; preds = %cond.end
  %call20 = call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true17
  %cond22 = phi %struct.sv* [ %14, %cond.true17 ], [ %call20, %cond.false19 ]
  %call23 = call i32 @gettimeofday(%struct.timeval* %Ta, %struct.timezone* null) #4
  %cmp24 = icmp sgt i32 %conv5, 0
  br i1 %cmp24, label %if.then26, label %if.else44

if.then26:                                        ; preds = %cond.end21
  %cmp27 = fcmp ogt double %cond, 1.000000e+06
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then26
  %div = fdiv double %cond, 1.000000e+06
  %conv30 = fptosi double %div to i64
  %tobool31 = icmp eq i64 %conv30, 0
  br i1 %tobool31, label %if.end41, label %if.then32

if.then32:                                        ; preds = %if.then29
  %conv33 = trunc i64 %conv30 to i32
  %call34 = call i32 @sleep(i32 %conv33) #4
  %conv35 = sitofp i64 %conv30 to double
  %mul = fmul double %conv35, 1.000000e+06
  %sub = fsub double %cond, %mul
  br label %if.end41

if.else:                                          ; preds = %if.then26
  %cmp37 = fcmp olt double %cond, 0.000000e+00
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.else
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([56 x i8]* @.str5, i64 0, i64 0), double %cond) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then29, %if.else, %if.then39, %if.then32
  %useconds.0 = phi double [ %sub, %if.then32 ], [ %cond, %if.then29 ], [ %cond, %if.then39 ], [ %cond, %if.else ]
  %conv42 = fptoui double %useconds.0 to i32
  %conv43 = zext i32 %conv42 to i64
  %15 = bitcast %struct.timeval* %tv.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #3
  %tv_sec.i = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 0
  store i64 0, i64* %tv_sec.i, align 8, !tbaa !0
  %tv_usec.i = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 1
  store i64 %conv43, i64* %tv_usec.i, align 8, !tbaa !0
  %call.i = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv.i) #4
  call void @llvm.lifetime.end(i64 16, i8* %15) #3
  br label %if.end46

if.else44:                                        ; preds = %cond.end21
  %call45 = call i32 @sleep(i32 2147450879) #4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.end41
  %call47 = call i32 @gettimeofday(%struct.timeval* %Tb, %struct.timezone* null) #4
  %tv_sec = getelementptr inbounds %struct.timeval* %Tb, i64 0, i32 0
  %16 = load i64* %tv_sec, align 8, !tbaa !0
  %tv_sec48 = getelementptr inbounds %struct.timeval* %Ta, i64 0, i32 0
  %17 = load i64* %tv_sec48, align 8, !tbaa !0
  %sub49 = sub nsw i64 %16, %17
  %conv50 = sitofp i64 %sub49 to double
  %mul51 = fmul double %conv50, 1.000000e+06
  %tv_usec = getelementptr inbounds %struct.timeval* %Tb, i64 0, i32 1
  %18 = load i64* %tv_usec, align 8, !tbaa !0
  %tv_usec52 = getelementptr inbounds %struct.timeval* %Ta, i64 0, i32 1
  %19 = load i64* %tv_usec52, align 8, !tbaa !0
  %sub53 = sub nsw i64 %18, %19
  %conv54 = sitofp i64 %sub53 to double
  %add55 = fadd double %mul51, %conv54
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  call void @Perl_sv_setnv(%struct.sv* %cond22, double %add55) #4
  %sv_flags59 = getelementptr inbounds %struct.sv* %cond22, i64 0, i32 2
  %21 = load i32* %sv_flags59, align 4, !tbaa !4
  %and60 = and i32 %21, 16384
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end46
  %call63 = call i32 @Perl_mg_set(%struct.sv* %cond22) #4
  br label %if.end64

if.end64:                                         ; preds = %if.end46, %if.then62
  %incdec.ptr65 = getelementptr inbounds %struct.sv** %20, i64 %idxprom
  store %struct.sv* %cond22, %struct.sv** %incdec.ptr65, align 8, !tbaa !3
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr67 = getelementptr inbounds %struct.sv** %22, i64 %idxprom
  store %struct.sv** %add.ptr67, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: optsize
declare i32 @sleep(i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Time__HiRes_sleep(%struct.cv* nocapture %cv) #0 {
entry:
  %tv.i = alloca %struct.timeval, align 8
  %Ta = alloca %struct.timeval, align 8
  %Tb = alloca %struct.timeval, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div488 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div488 to i32
  %4 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.op* %4, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %6 = load i64* %op_targ, align 8, !tbaa !0
  %7 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %6
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %8, %cond.true ], [ %call, %cond.false ]
  %call7 = call i32 @gettimeofday(%struct.timeval* %Ta, %struct.timezone* null) #4
  %cmp = icmp sgt i32 %conv5, 0
  br i1 %cmp, label %if.then, label %if.else44

if.then:                                          ; preds = %cond.end
  %sext89 = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext89, 32
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx10, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !4
  %and11 = and i32 %11, 131072
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %cond.false17, label %cond.true13

cond.true13:                                      ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %12, i64 32
  %13 = bitcast i8* %xnv_nv to double*
  %14 = load double* %13, align 8, !tbaa !5
  br label %cond.end22

cond.false17:                                     ; preds = %if.then
  %call21 = call double @Perl_sv_2nv(%struct.sv* %10) #4
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false17, %cond.true13
  %cond23 = phi double [ %14, %cond.true13 ], [ %call21, %cond.false17 ]
  %cmp24 = fcmp ult double %cond23, 0.000000e+00
  br i1 %cmp24, label %if.else, label %if.then26

if.then26:                                        ; preds = %cond.end22
  %conv27 = fptoui double %cond23 to i64
  %conv28 = uitofp i64 %conv27 to double
  %sub = fsub double %cond23, %conv28
  %mul = fmul double %sub, 1.000000e+06
  %conv29 = fptoui double %mul to i64
  %cmp30 = fcmp ult double %cond23, 1.000000e+00
  br i1 %cmp30, label %if.end, label %if.then32

if.then32:                                        ; preds = %if.then26
  %conv33 = fptoui double %cond23 to i32
  %call34 = call i32 @sleep(i32 %conv33) #4
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.then32
  %cmp35 = icmp slt i64 %conv29, 0
  br i1 %cmp35, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([79 x i8]* @.str6, i64 0, i64 0), double %cond23, i64 %conv29, i64 %conv29) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end
  %15 = bitcast %struct.timeval* %tv.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #3
  %tv_sec.i = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 0
  store i64 0, i64* %tv_sec.i, align 8, !tbaa !0
  %tv_usec.i = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 1
  store i64 %conv29, i64* %tv_usec.i, align 8, !tbaa !0
  %call.i = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv.i) #4
  call void @llvm.lifetime.end(i64 16, i8* %15) #3
  br label %if.end46

if.else:                                          ; preds = %cond.end22
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), double %cond23) #4
  br label %if.end46

if.else44:                                        ; preds = %cond.end
  %call45 = call i32 @sleep(i32 2147450879) #4
  %sext.pre = shl i64 %add, 32
  %idx.ext56.pre = ashr exact i64 %sext.pre, 32
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.else, %if.else44
  %idx.ext56.pre-phi = phi i64 [ %idxprom, %if.end42 ], [ %idxprom, %if.else ], [ %idx.ext56.pre, %if.else44 ]
  %call47 = call i32 @gettimeofday(%struct.timeval* %Tb, %struct.timezone* null) #4
  %tv_sec = getelementptr inbounds %struct.timeval* %Tb, i64 0, i32 0
  %16 = load i64* %tv_sec, align 8, !tbaa !0
  %tv_sec48 = getelementptr inbounds %struct.timeval* %Ta, i64 0, i32 0
  %17 = load i64* %tv_sec48, align 8, !tbaa !0
  %sub49 = sub nsw i64 %16, %17
  %conv50 = sitofp i64 %sub49 to double
  %tv_usec = getelementptr inbounds %struct.timeval* %Tb, i64 0, i32 1
  %18 = load i64* %tv_usec, align 8, !tbaa !0
  %tv_usec51 = getelementptr inbounds %struct.timeval* %Ta, i64 0, i32 1
  %19 = load i64* %tv_usec51, align 8, !tbaa !0
  %sub52 = sub nsw i64 %18, %19
  %conv53 = sitofp i64 %sub52 to double
  %mul54 = fmul double %conv53, 1.000000e-06
  %add55 = fadd double %conv50, %mul54
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  call void @Perl_sv_setnv(%struct.sv* %cond, double %add55) #4
  %sv_flags59 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %21 = load i32* %sv_flags59, align 4, !tbaa !4
  %and60 = and i32 %21, 16384
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end46
  %call63 = call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end64

if.end64:                                         ; preds = %if.end46, %if.then62
  %incdec.ptr65 = getelementptr inbounds %struct.sv** %20, i64 %idx.ext56.pre-phi
  store %struct.sv* %cond, %struct.sv** %incdec.ptr65, align 8, !tbaa !3
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr67 = getelementptr inbounds %struct.sv** %22, i64 %idx.ext56.pre-phi
  store %struct.sv** %add.ptr67, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Time__HiRes_gettimeofday(%struct.cv* nocapture %cv) #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str8, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %call = call i32 @gettimeofday(%struct.timeval* %Tp, %struct.timezone* null) #4
  %5 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_flags = getelementptr inbounds %struct.op* %5, i64 0, i32 6
  %6 = load i8* %op_flags, align 1, !tbaa !1
  %conv9 = zext i8 %6 to i32
  %and = and i32 %conv9, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %cmp13 = icmp eq i32 %and, 3
  %cond = zext i1 %cmp13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call15 = call i32 @Perl_dowantarray() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %cond, %cond.true ], [ %call15, %cond.false ]
  %cmp17 = icmp eq i32 %cond16, 1
  %7 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast20 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast21 = ptrtoint %struct.sv** %add.ptr8 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %cond.end
  %cmp24 = icmp slt i64 %sub.ptr.sub22, 16
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then19
  %call27 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr8, %struct.sv** %add.ptr8, i32 2) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then19
  %sp.0 = phi %struct.sv** [ %call27, %if.then26 ], [ %add.ptr8, %if.then19 ]
  %tv_sec = getelementptr inbounds %struct.timeval* %Tp, i64 0, i32 0
  %8 = load i64* %tv_sec, align 8, !tbaa !0
  %call29 = call %struct.sv* @Perl_newSViv(i64 %8) #4
  %call30 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call29) #4
  %incdec.ptr31 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call30, %struct.sv** %incdec.ptr31, align 8, !tbaa !3
  %tv_usec = getelementptr inbounds %struct.timeval* %Tp, i64 0, i32 1
  %9 = load i64* %tv_usec, align 8, !tbaa !0
  %call32 = call %struct.sv* @Perl_newSViv(i64 %9) #4
  %call33 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call32) #4
  %incdec.ptr34 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call33, %struct.sv** %incdec.ptr34, align 8, !tbaa !3
  br label %if.end52

if.else:                                          ; preds = %cond.end
  %cmp39 = icmp slt i64 %sub.ptr.sub22, 8
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else
  %call42 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr8, %struct.sv** %add.ptr8, i32 1) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.else
  %sp.1 = phi %struct.sv** [ %call42, %if.then41 ], [ %add.ptr8, %if.else ]
  %tv_sec44 = getelementptr inbounds %struct.timeval* %Tp, i64 0, i32 0
  %10 = load i64* %tv_sec44, align 8, !tbaa !0
  %conv45 = sitofp i64 %10 to double
  %tv_usec46 = getelementptr inbounds %struct.timeval* %Tp, i64 0, i32 1
  %11 = load i64* %tv_usec46, align 8, !tbaa !0
  %conv47 = sitofp i64 %11 to double
  %div = fdiv double %conv47, 1.000000e+06
  %add48 = fadd double %conv45, %div
  %call49 = call %struct.sv* @Perl_newSVnv(double %add48) #4
  %call50 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call49) #4
  %incdec.ptr51 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call50, %struct.sv** %incdec.ptr51, align 8, !tbaa !3
  br label %if.end52

if.end52:                                         ; preds = %if.end43, %if.end28
  %sp.2 = phi %struct.sv** [ %incdec.ptr34, %if.end28 ], [ %incdec.ptr51, %if.end43 ]
  store %struct.sv** %sp.2, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_dowantarray() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVnv(double) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Time__HiRes_time(%struct.cv* nocapture %cv) #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  %call8 = call i32 @gettimeofday(%struct.timeval* %Tp, %struct.timezone* null) #4
  %tv_sec = getelementptr inbounds %struct.timeval* %Tp, i64 0, i32 0
  %10 = load i64* %tv_sec, align 8, !tbaa !0
  %conv9 = sitofp i64 %10 to double
  %tv_usec = getelementptr inbounds %struct.timeval* %Tp, i64 0, i32 1
  %11 = load i64* %tv_usec, align 8, !tbaa !0
  %conv10 = sitofp i64 %11 to double
  %div = fdiv double %conv10, 1.000000e+06
  %add11 = fadd double %conv9, %div
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext12 = ashr exact i64 %sext, 32
  call void @Perl_sv_setnv(%struct.sv* %cond, double %add11) #4
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !4
  %and15 = and i32 %13, 16384
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %cond.end
  %call18 = call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %if.then17
  %incdec.ptr20 = getelementptr inbounds %struct.sv** %12, i64 %idx.ext12
  store %struct.sv* %cond, %struct.sv** %incdec.ptr20, align 8, !tbaa !3
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr22 = getelementptr inbounds %struct.sv** %14, i64 %idx.ext12
  store %struct.sv** %add.ptr22, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @boot_Time__HiRes(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %1 = load i32* %0, align 4, !tbaa !4
  %idx.ext21 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext21, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), void (%struct.cv*)* @XS_Time__HiRes_constant, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0)) #4
  %2 = bitcast %struct.cv* %call to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #4
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), void (%struct.cv*)* @XS_Time__HiRes_usleep, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0)) #4
  %3 = bitcast %struct.cv* %call6 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #4
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), void (%struct.cv*)* @XS_Time__HiRes_sleep, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0)) #4
  %4 = bitcast %struct.cv* %call7 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0)) #4
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), void (%struct.cv*)* @XS_Time__HiRes_gettimeofday, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0)) #4
  %5 = bitcast %struct.cv* %call8 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0)) #4
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), void (%struct.cv*)* @XS_Time__HiRes_time, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0)) #4
  %6 = bitcast %struct.cv* %call9 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %6, i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0)) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !3
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr12 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv** %add.ptr12, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
