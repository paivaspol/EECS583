; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Cwd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [22 x i8] c"Usage: Cwd::fastcwd()\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str1 = private unnamed_addr constant [36 x i8] c"Usage: Cwd::abs_path(pathsv=Nullsv)\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PL_tainting = external global i8
@PL_sv_undef = external global %struct.sv
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Cwd.c\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"Cwd::fastcwd\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"Cwd::abs_path\00", align 1
@PL_sv_yes = external global %struct.sv
@.str6 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @XS_Cwd_fastcwd(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div429 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div429 to i32
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %4, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %5, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %6 = load i64* %op_targ, align 8, !tbaa !4
  %7 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %7, i64 %6
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %8, %cond.true ], [ %call, %cond.false ]
  %call10 = tail call i32 @Perl_getcwd_sv(%struct.sv* %cond) #5
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext11 = ashr exact i64 %sext, 32
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %and14 = and i32 %10, 16384
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %cond.end
  %call17 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #5
  br label %if.end18

if.end18:                                         ; preds = %cond.end, %if.then16
  %incdec.ptr19 = getelementptr inbounds %struct.sv** %9, i64 %idx.ext11
  store %struct.sv* %cond, %struct.sv** %incdec.ptr19, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr19, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare i32 @Perl_getcwd_sv(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Cwd_abs_path(%struct.cv* nocapture %cv) #0 {
entry:
  %wbuf.i = alloca [4096 x i8], align 16
  %wd.i = alloca [4096 x i8], align 16
  %buf = alloca [4096 x i8], align 16
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div472 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div472 to i32
  %4 = icmp ugt i32 %conv5, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp11 = icmp slt i32 %conv5, 1
  br i1 %cmp11, label %if.end15, label %if.else

if.else:                                          ; preds = %if.end
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.else
  %pathsv.0 = phi %struct.sv* [ %6, %if.else ], [ null, %if.end ]
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %8, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end15
  %op_targ = getelementptr inbounds %struct.op* %7, i64 0, i32 3
  %9 = load i64* %op_targ, align 8, !tbaa !4
  %10 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx17, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %call = call %struct.sv* @Perl_sv_newmortal() #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %11, %cond.true ], [ %call, %cond.false ]
  %12 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %12) #2
  %tobool18 = icmp eq %struct.sv* %pathsv.0, null
  br i1 %tobool18, label %cond.end29, label %cond.true19

cond.true19:                                      ; preds = %cond.end
  %sv_flags = getelementptr inbounds %struct.sv* %pathsv.0, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %13, 262144
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %cond.false24, label %cond.true23

cond.true23:                                      ; preds = %cond.true19
  %sv_any = getelementptr inbounds %struct.sv* %pathsv.0, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end29

cond.false24:                                     ; preds = %cond.true19
  %call25 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %pathsv.0) #5
  br label %cond.end29

cond.end29:                                       ; preds = %cond.end, %cond.true23, %cond.false24
  %cond30 = phi i8* [ %15, %cond.true23 ], [ %call25, %cond.false24 ], [ getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), %cond.end ]
  %16 = getelementptr inbounds [4096 x i8]* %wbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %16) #2
  %17 = getelementptr inbounds [4096 x i8]* %wd.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %17) #2
  %call.i = call i8* @getcwd(i8* %17, i64 4095) #5
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end29
  %18 = bitcast [4096 x i8]* %buf to i16*
  store i16 46, i16* %18, align 16
  br label %if.else43

if.end.i:                                         ; preds = %cond.end29
  %call2.i = call i8* @strncpy(i8* %12, i8* %cond30, i64 4095) #5
  %arrayidx.i = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 4095
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !1
  %call3.i = call i8* @strrchr(i8* %12, i32 47) #5
  %cmp4.i = icmp eq i8* %call3.i, null
  br i1 %cmp4.i, label %if.end19.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds i8* %call3.i, i64 1
  %cmp6.i = icmp eq i8* %call3.i, %12
  br i1 %cmp6.i, label %if.end12.i, label %do.body.i

do.body.i:                                        ; preds = %if.then5.i, %land.rhs.i
  %q.0.i = phi i8* [ %incdec.ptr.i, %land.rhs.i ], [ %call3.i, %if.then5.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %q.0.i, i64 -1
  %cmp8.i = icmp ugt i8* %incdec.ptr.i, %12
  br i1 %cmp8.i, label %land.rhs.i, label %do.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %19 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %cmp9.i = icmp eq i8 %19, 47
  br i1 %cmp9.i, label %do.body.i, label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i, %do.body.i
  store i8 0, i8* %q.0.i, align 1, !tbaa !1
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.then5.i
  %q.1.i = phi i8* [ %12, %do.end.i ], [ getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), %if.then5.i ]
  %call13.i = call i32 @chdir(i8* %q.1.i) #5
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %err1.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.end12.i, %if.end.i
  %p.0.i = phi i8* [ %add.ptr.i, %if.end12.i ], [ %12, %if.end.i ]
  %call21.i = call i8* @strcpy(i8* %16, i8* %p.0.i) #5
  %call22.i = call i8* @getcwd(i8* %12, i64 4096) #5
  %cmp23.i = icmp eq i8* %call22.i, null
  br i1 %cmp23.i, label %err1.i, label %if.end26.i

if.end26.i:                                       ; preds = %if.end19.i
  %20 = bitcast [4096 x i8]* %buf to i16*
  %21 = load i16* %20, align 16
  %22 = trunc i16 %21 to i8
  %cmp29.i = icmp eq i8 %22, 47
  %cmp33.i = icmp ult i16 %21, 256
  %23 = load i8* %16, align 16, !tbaa !1
  %tobool.i = icmp eq i8 %23, 0
  br i1 %tobool.i, label %if.end58.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end26.i
  %or.cond = and i1 %cmp29.i, %cmp33.i
  %rootd.0.i = zext i1 %or.cond to i64
  %call40.i = call i64 @strlen(i8* %12) #5
  %call42.i = call i64 @strlen(i8* %16) #5
  %add.i = sub i64 2, %rootd.0.i
  %add44.i = add i64 %add.i, %call40.i
  %add45.i = add i64 %add44.i, %call42.i
  %cmp46.i = icmp ugt i64 %add45.i, 4096
  br i1 %cmp46.i, label %if.then48.i, label %if.end50.i

if.then48.i:                                      ; preds = %if.then39.i
  %call49.i = call i32* @__errno_location() #5
  store i32 36, i32* %call49.i, align 4, !tbaa !3
  br label %err1.i

if.end50.i:                                       ; preds = %if.then39.i
  %cmp51.i.demorgan = and i1 %cmp29.i, %cmp33.i
  br i1 %cmp51.i.demorgan, label %if.end55.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end50.i
  %strlen.i = call i64 @strlen(i8* %12) #2
  %endptr.i = getelementptr [4096 x i8]* %buf, i64 0, i64 %strlen.i
  %24 = bitcast i8* %endptr.i to i16*
  store i16 47, i16* %24, align 1
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end50.i, %if.then53.i
  %call57.i = call i8* @strcat(i8* %12, i8* %16) #5
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end55.i, %if.end26.i
  %call60.i = call i32 @chdir(i8* %17) #5
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %if.then33

if.then63.i:                                      ; preds = %if.end58.i
  %call64.i = call i32* @__errno_location() #5
  %25 = load i32* %call64.i, align 4, !tbaa !3
  br label %err2.i

err1.i:                                           ; preds = %if.then48.i, %if.end19.i, %if.end12.i
  %call66.i = call i32* @__errno_location() #5
  %26 = load i32* %call66.i, align 4, !tbaa !3
  %call68.i = call i32 @chdir(i8* %17) #5
  br label %err2.i

err2.i:                                           ; preds = %err1.i, %if.then63.i
  %serrno.0.i = phi i32 [ %26, %err1.i ], [ %25, %if.then63.i ]
  %call69.i = call i32* @__errno_location() #5
  store i32 %serrno.0.i, i32* %call69.i, align 4, !tbaa !3
  br label %if.else43

if.then33:                                        ; preds = %if.end58.i
  call void @llvm.lifetime.end(i64 4096, i8* %17) #2
  call void @llvm.lifetime.end(i64 4096, i8* %16) #2
  %call36 = call i64 @strlen(i8* %12) #5
  call void @Perl_sv_setpvn(%struct.sv* %cond, i8* %12, i64 %call36) #5
  %sv_flags37 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %27 = load i32* %sv_flags37, align 4, !tbaa !3
  %and38 = and i32 %27, 1223753727
  %or = or i32 %and38, 67371008
  store i32 %or, i32* %sv_flags37, align 4, !tbaa !3
  %28 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool40 = icmp eq i8 %28, 0
  br i1 %tobool40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.then33
  call void @Perl_sv_taint(%struct.sv* %cond) #5
  br label %if.end44

if.else43:                                        ; preds = %if.then.i, %err2.i
  call void @llvm.lifetime.end(i64 4096, i8* %17) #2
  call void @llvm.lifetime.end(i64 4096, i8* %16) #2
  call void @Perl_sv_setsv_flags(%struct.sv* %cond, %struct.sv* @PL_sv_undef, i32 2) #5
  %sv_flags48.pre = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  br label %if.end44

if.end44:                                         ; preds = %if.then33, %if.then41, %if.else43
  %sv_flags48.pre-phi = phi i32* [ %sv_flags37, %if.then33 ], [ %sv_flags37, %if.then41 ], [ %sv_flags48.pre, %if.else43 ]
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext73 = shl i64 %add, 32
  %idx.ext45 = ashr exact i64 %sext73, 32
  %30 = load i32* %sv_flags48.pre-phi, align 4, !tbaa !3
  %and49 = and i32 %30, 16384
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end44
  %call52 = call i32 @Perl_mg_set(%struct.sv* %cond) #5
  br label %if.end53

if.end53:                                         ; preds = %if.end44, %if.then51
  %incdec.ptr54 = getelementptr inbounds %struct.sv** %29, i64 %idx.ext45
  store %struct.sv* %cond, %struct.sv** %incdec.ptr54, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 4096, i8* %12) #2
  store %struct.sv** %incdec.ptr54, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @boot_Cwd(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext15 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext15, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), void (%struct.cv*)* @XS_Cwd_fastcwd, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0)) #5
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), void (%struct.cv*)* @XS_Cwd_abs_path, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0)) #5
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %2 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %2, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %3 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr9 = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  store %struct.sv** %add.ptr9, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare i8* @getcwd(i8*, i64) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: optsize
declare i32 @chdir(i8*) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
