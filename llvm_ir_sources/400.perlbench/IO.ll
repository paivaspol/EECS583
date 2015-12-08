; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/IO.c'
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
%struct.pollfd = type { i32, i16, i16 }

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [36 x i8] c"Usage: IO::Seekable::getpos(handle)\00", align 1
@PL_sv_undef = external global %struct.sv
@.str1 = private unnamed_addr constant [41 x i8] c"Usage: IO::Seekable::setpos(handle, pos)\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"Usage: IO::File::new_tmpfile(packname = \22IO::File\22)\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"IO::File\00", align 1
@PL_Sv = external global %struct.sv*
@.str5 = private unnamed_addr constant [4 x i8] c"+>&\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"Usage: IO::Poll::_poll(timeout, ...)\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"Usage: IO::Handle::blocking(handle, blk=-1)\00", align 1
@.str8 = private unnamed_addr constant [37 x i8] c"Usage: IO::Handle::ungetc(handle, c)\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str9 = private unnamed_addr constant [33 x i8] c"Usage: IO::Handle::error(handle)\00", align 1
@.str10 = private unnamed_addr constant [36 x i8] c"Usage: IO::Handle::clearerr(handle)\00", align 1
@.str11 = private unnamed_addr constant [35 x i8] c"Usage: IO::Handle::untaint(handle)\00", align 1
@.str12 = private unnamed_addr constant [33 x i8] c"Usage: IO::Handle::flush(handle)\00", align 1
@.str13 = private unnamed_addr constant [39 x i8] c"Usage: IO::Handle::setbuf(handle, ...)\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"IO::Handle::setbuf\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"Usage: IO::Handle::setvbuf(handle, buf, type, size)\00", align 1
@.str16 = private unnamed_addr constant [20 x i8] c"IO::Handle::setvbuf\00", align 1
@.str17 = private unnamed_addr constant [32 x i8] c"Usage: IO::Handle::sync(handle)\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"IO::Handle::sync\00", align 1
@.str19 = private unnamed_addr constant [36 x i8] c"Usage: IO::Socket::sockatmark(sock)\00", align 1
@.str20 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/IO.c\00", align 1
@.str21 = private unnamed_addr constant [21 x i8] c"IO::Seekable::getpos\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"IO::Seekable::setpos\00", align 1
@.str23 = private unnamed_addr constant [22 x i8] c"IO::File::new_tmpfile\00", align 1
@.str24 = private unnamed_addr constant [16 x i8] c"IO::Poll::_poll\00", align 1
@.str25 = private unnamed_addr constant [21 x i8] c"IO::Handle::blocking\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str27 = private unnamed_addr constant [19 x i8] c"IO::Handle::ungetc\00", align 1
@.str28 = private unnamed_addr constant [18 x i8] c"IO::Handle::error\00", align 1
@.str29 = private unnamed_addr constant [21 x i8] c"IO::Handle::clearerr\00", align 1
@.str30 = private unnamed_addr constant [20 x i8] c"IO::Handle::untaint\00", align 1
@.str31 = private unnamed_addr constant [18 x i8] c"IO::Handle::flush\00", align 1
@.str32 = private unnamed_addr constant [23 x i8] c"IO::Socket::sockatmark\00", align 1
@.str33 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"IO::Poll\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c"POLLIN\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"POLLPRI\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"POLLOUT\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"POLLRDNORM\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"POLLWRNORM\00", align 1
@.str40 = private unnamed_addr constant [11 x i8] c"POLLRDBAND\00", align 1
@.str41 = private unnamed_addr constant [11 x i8] c"POLLWRBAND\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"POLLNORM\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"POLLERR\00", align 1
@.str44 = private unnamed_addr constant [8 x i8] c"POLLHUP\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"POLLNVAL\00", align 1
@.str46 = private unnamed_addr constant [11 x i8] c"IO::Handle\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"_IOFBF\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"_IOLBF\00", align 1
@.str49 = private unnamed_addr constant [7 x i8] c"_IONBF\00", align 1
@.str50 = private unnamed_addr constant [9 x i8] c"SEEK_SET\00", align 1
@.str51 = private unnamed_addr constant [9 x i8] c"SEEK_CUR\00", align 1
@.str52 = private unnamed_addr constant [9 x i8] c"SEEK_END\00", align 1
@PL_sv_yes = external global %struct.sv
@.str53 = private unnamed_addr constant [40 x i8] c"%s not implemented on this architecture\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Seekable_getpos(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call %struct.sv* @Perl_newSV(i64 0) #2
  %call10 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call9) #2
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %call10, %struct.sv** %arrayidx13, align 8, !tbaa !0
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx16, align 8, !tbaa !0
  %call17 = tail call i32 @PerlIO_getpos(%struct._PerlIO** %8, %struct.sv* %11) #2
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end29, label %if.then20

if.then20:                                        ; preds = %if.then8
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx23, align 8, !tbaa !0
  br label %if.end29

if.else:                                          ; preds = %if.end
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx27, align 8, !tbaa !0
  %call28 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call28, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.then8, %if.then20, %if.else
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr31 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv** %add.ptr31, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare %struct.io* @Perl_sv_2io(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare i32 @PerlIO_getpos(%struct._PerlIO**, %struct.sv*) #1

; Function Attrs: optsize
declare i32* @__errno_location() #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Seekable_setpos(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  %sext48 = add i64 %add.ptr.idx, 8589934592
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %idxprom9 = ashr exact i64 %sext48, 32
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom9
  %10 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %call12 = tail call i32 @PerlIO_setpos(%struct._PerlIO** %8, %struct.sv* %10) #2
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call13 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call13, align 4, !tbaa !3
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %RETVAL.0 = phi i32 [ %call12, %if.then11 ], [ -1, %if.else ]
  %call15 = tail call %struct.sv* @Perl_sv_newmortal() #2
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds %struct.sv** %11, i64 %idxprom
  store %struct.sv* %call15, %struct.sv** %arrayidx18, align 8, !tbaa !0
  %cmp19 = icmp eq i32 %RETVAL.0, -1
  br i1 %cmp19, label %if.end34, label %if.then21

if.then21:                                        ; preds = %if.end14
  %cmp22 = icmp eq i32 %RETVAL.0, 0
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.then21
  tail call void @Perl_sv_setpvn(%struct.sv* %13, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i64 10) #2
  br label %if.end34

if.else28:                                        ; preds = %if.then21
  %conv32 = sext i32 %RETVAL.0 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %13, i64 %conv32) #2
  br label %if.end34

if.end34:                                         ; preds = %if.end14, %if.then24, %if.else28
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr36 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv** %add.ptr36, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIO_setpos(%struct._PerlIO**, %struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__File_new_tmpfile(%struct.cv* nocapture %cv) #0 {
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
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div467 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div467 to i32
  %4 = icmp ugt i32 %conv5, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp9 = icmp slt i32 %conv5, 1
  br i1 %cmp9, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 262144
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end21

cond.false:                                       ; preds = %if.else
  %call = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %6) #2
  br label %if.end21

if.end21:                                         ; preds = %cond.true, %cond.false, %if.end
  %packname.0 = phi i8* [ getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), %if.end ], [ %9, %cond.true ], [ %call, %cond.false ]
  %call22 = tail call %struct._PerlIO** @PerlIO_tmpfile() #2
  %call23 = tail call %struct.gv* @Perl_newGVgen(i8* %packname.0) #2
  %10 = bitcast %struct.gv* %call23 to %struct.sv*
  store %struct.sv* %10, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool = icmp eq %struct.gv* %call23, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end21
  %11 = getelementptr inbounds %struct.gv* %call23, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !3
  %inc = add i32 %12, 1
  store i32 %inc, i32* %11, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.end21, %land.rhs
  %sv_any25 = getelementptr inbounds %struct.gv* %call23, i64 0, i32 0
  %13 = load %struct.xpvgv** %sv_any25, align 8, !tbaa !0
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 10
  %14 = load %struct.hv** %xgv_stash, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 8
  %15 = load i8** %xgv_name, align 8, !tbaa !0
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 9
  %16 = load i64* %xgv_namelen, align 8, !tbaa !4
  %conv28 = trunc i64 %16 to i32
  %call29 = tail call %struct.sv* @Perl_hv_delete(%struct.hv* %14, i8* %15, i32 %conv28, i32 2) #2
  %call30 = tail call signext i8 @Perl_do_open(%struct.gv* %call23, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 3, i32 0, i32 0, i32 0, %struct._PerlIO** %call22) #2
  %tobool31 = icmp eq i8 %call30, 0
  br i1 %tobool31, label %if.else43, label %if.then32

if.then32:                                        ; preds = %land.end
  %call33 = tail call %struct.sv* @Perl_newRV(%struct.sv* %10) #2
  %call34 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call33) #2
  %sext70 = shl i64 %add, 32
  %idxprom36 = ashr exact i64 %sext70, 32
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds %struct.sv** %17, i64 %idxprom36
  store %struct.sv* %call34, %struct.sv** %arrayidx37, align 8, !tbaa !0
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds %struct.sv** %18, i64 %idxprom36
  %19 = load %struct.sv** %arrayidx40, align 8, !tbaa !0
  %call41 = tail call %struct.hv* @Perl_gv_stashpv(i8* %packname.0, i32 1) #2
  %call42 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %19, %struct.hv* %call41) #2
  tail call void @Perl_sv_free(%struct.sv* %10) #2
  br label %if.end47

if.else43:                                        ; preds = %land.end
  %sext68 = shl i64 %add, 32
  %idxprom45 = ashr exact i64 %sext68, 32
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds %struct.sv** %20, i64 %idxprom45
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx46, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %10) #2
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then32
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext69 = shl i64 %add, 32
  %idx.ext48 = ashr exact i64 %sext69, 32
  %add.ptr49 = getelementptr inbounds %struct.sv** %21, i64 %idx.ext48
  store %struct.sv** %add.ptr49, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_tmpfile() #1

; Function Attrs: optsize
declare %struct.gv* @Perl_newGVgen(i8*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_do_open(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_bless(%struct.sv*, %struct.hv*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Poll__poll(%struct.cv* nocapture %cv) #0 {
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
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4149 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4149 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %7, i64 24
  %8 = bitcast i8* %xiv_iv to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %5) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %call, %cond.false ]
  %conv16 = trunc i64 %cond to i32
  %sub = add nsw i32 %conv5, -1
  %div = sdiv i32 %sub, 2
  %conv17 = sext i32 %div to i64
  %mul = shl nsw i64 %conv17, 3
  %call18 = tail call %struct.sv* @Perl_newSV(i64 %mul) #2
  %sv_any19 = getelementptr inbounds %struct.sv* %call18, i64 0, i32 0
  %10 = load i8** %sv_any19, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %12 = bitcast i8* %11 to %struct.pollfd*
  %cmp20153 = icmp sgt i32 %sub, 1
  br i1 %cmp20153, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %inc = add i64 %idx.ext, 2
  %sext167 = shl i64 %add, 32
  %13 = ashr exact i64 %sext167, 32
  br label %for.body

for.body:                                         ; preds = %cond.end61.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv162 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next163, %cond.end61.for.body_crit_edge ]
  %indvars.iv159 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next160, %cond.end61.for.body_crit_edge ]
  %14 = add nsw i64 %indvars.iv159, %13
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds %struct.sv** %15, i64 %14
  %16 = load %struct.sv** %arrayidx24, align 8, !tbaa !0
  %sv_flags25 = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %17 = load i32* %sv_flags25, align 4, !tbaa !3
  %and26 = and i32 %17, 65536
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %cond.false34, label %cond.true28

cond.true28:                                      ; preds = %for.body
  %sv_any32 = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %18 = load i8** %sv_any32, align 8, !tbaa !0
  %xiv_iv33 = getelementptr inbounds i8* %18, i64 24
  %19 = bitcast i8* %xiv_iv33 to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  br label %cond.end39

cond.false34:                                     ; preds = %for.body
  %call38 = tail call i64 @Perl_sv_2iv(%struct.sv* %16) #2
  %.pre164 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false34, %cond.true28
  %21 = phi %struct.sv** [ %15, %cond.true28 ], [ %.pre164, %cond.false34 ]
  %cond40 = phi i64 [ %20, %cond.true28 ], [ %call38, %cond.false34 ]
  %conv41 = trunc i64 %cond40 to i32
  %fd = getelementptr inbounds %struct.pollfd* %12, i64 %indvars.iv162, i32 0
  store i32 %conv41, i32* %fd, align 4, !tbaa !3
  %add44 = add i64 %inc, %indvars.iv159
  %sext168 = shl i64 %add44, 32
  %idxprom45 = ashr exact i64 %sext168, 32
  %arrayidx46 = getelementptr inbounds %struct.sv** %21, i64 %idxprom45
  %22 = load %struct.sv** %arrayidx46, align 8, !tbaa !0
  %sv_flags47 = getelementptr inbounds %struct.sv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags47, align 4, !tbaa !3
  %and48 = and i32 %23, 65536
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %cond.false56, label %cond.true50

cond.true50:                                      ; preds = %cond.end39
  %sv_any54 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %24 = load i8** %sv_any54, align 8, !tbaa !0
  %xiv_iv55 = getelementptr inbounds i8* %24, i64 24
  %25 = bitcast i8* %xiv_iv55 to i64*
  %26 = load i64* %25, align 8, !tbaa !4
  br label %cond.end61

cond.false56:                                     ; preds = %cond.end39
  %call60 = tail call i64 @Perl_sv_2iv(%struct.sv* %22) #2
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false56, %cond.true50
  %cond62 = phi i64 [ %26, %cond.true50 ], [ %call60, %cond.false56 ]
  %conv63 = trunc i64 %cond62 to i16
  %events = getelementptr inbounds %struct.pollfd* %12, i64 %indvars.iv162, i32 1
  store i16 %conv63, i16* %events, align 2, !tbaa !5
  %revents = getelementptr inbounds %struct.pollfd* %12, i64 %indvars.iv162, i32 2
  store i16 0, i16* %revents, align 2, !tbaa !5
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  %27 = trunc i64 %indvars.iv.next163 to i32
  %cmp20 = icmp slt i32 %27, %div
  br i1 %cmp20, label %cond.end61.for.body_crit_edge, label %for.end

cond.end61.for.body_crit_edge:                    ; preds = %cond.end61
  %indvars.iv.next160 = add i64 %indvars.iv159, 2
  br label %for.body

for.end:                                          ; preds = %cond.end61, %cond.end
  %call71 = tail call i32 @Perl_my_poll(%struct.pollfd* %12, i64 %conv17, i32 %conv16) #2
  %cmp72.not = icmp slt i32 %call71, 0
  %cmp20153.not = xor i1 %cmp20153, true
  %brmerge = or i1 %cmp72.not, %cmp20153.not
  br i1 %brmerge, label %if.end98, label %for.body78.lr.ph

for.body78.lr.ph:                                 ; preds = %for.end
  %inc86 = add i64 %idx.ext, 2
  %sext165 = shl i64 %add, 32
  %28 = ashr exact i64 %sext165, 32
  br label %for.body78

for.body78:                                       ; preds = %for.body78.lr.ph, %for.body78
  %indvars.iv157 = phi i64 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next158, %for.body78 ]
  %indvars.iv = phi i64 [ 1, %for.body78.lr.ph ], [ %indvars.iv.next, %for.body78 ]
  %29 = add nsw i64 %indvars.iv, %28
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds %struct.sv** %30, i64 %29
  %31 = load %struct.sv** %arrayidx81, align 8, !tbaa !0
  %fd84 = getelementptr inbounds %struct.pollfd* %12, i64 %indvars.iv157, i32 0
  %32 = load i32* %fd84, align 4, !tbaa !3
  %conv85 = sext i32 %32 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %31, i64 %conv85) #2
  %add87 = add i64 %inc86, %indvars.iv
  %sext166 = shl i64 %add87, 32
  %idxprom88 = ashr exact i64 %sext166, 32
  %33 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds %struct.sv** %33, i64 %idxprom88
  %34 = load %struct.sv** %arrayidx89, align 8, !tbaa !0
  %revents92 = getelementptr inbounds %struct.pollfd* %12, i64 %indvars.iv157, i32 2
  %35 = load i16* %revents92, align 2, !tbaa !5
  %conv93 = sext i16 %35 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %34, i64 %conv93) #2
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %36 = trunc i64 %indvars.iv.next158 to i32
  %cmp76 = icmp slt i32 %36, %div
  br i1 %cmp76, label %for.body78, label %if.end98

if.end98:                                         ; preds = %for.end, %for.body78
  tail call void @Perl_sv_free(%struct.sv* %call18) #2
  %conv99 = sext i32 %call71 to i64
  %call100 = tail call %struct.sv* @Perl_newSViv(i64 %conv99) #2
  %call101 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call100) #2
  %37 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds %struct.sv** %37, i64 %idxprom
  store %struct.sv* %call101, %struct.sv** %arrayidx104, align 8, !tbaa !0
  %38 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr106 = getelementptr inbounds %struct.sv** %38, i64 %idxprom
  store %struct.sv** %add.ptr106, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_my_poll(%struct.pollfd*, i64, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_blocking(%struct.cv* nocapture %cv) #0 {
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
  %sub.ptr.div468 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div468 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %cmp10 = icmp slt i32 %conv5, 2
  br i1 %cmp10, label %if.end25, label %if.else

if.else:                                          ; preds = %if.end
  %sext69 = add i64 %add.ptr.idx, 8589934592
  %idxprom14 = ashr exact i64 %sext69, 32
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.sv** %9, i64 %idxprom14
  %10 = load %struct.sv** %arrayidx15, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %11, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any19 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any19, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %12, i64 24
  %13 = bitcast i8* %xiv_iv to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call23 = tail call i64 @Perl_sv_2iv(%struct.sv* %10) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call23, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  br label %if.end25

if.end25:                                         ; preds = %if.end, %cond.end
  %blk.0 = phi i32 [ %conv24, %cond.end ], [ -1, %if.end ]
  %cmp26 = icmp eq i32 %conv5, 1
  br i1 %cmp26, label %cond.end32, label %cond.false29

cond.false29:                                     ; preds = %if.end25
  %tobool30 = icmp ne i32 %blk.0, 0
  %cond31 = zext i1 %tobool30 to i32
  br label %cond.end32

cond.end32:                                       ; preds = %if.end25, %cond.false29
  %cond33 = phi i32 [ %cond31, %cond.false29 ], [ -1, %if.end25 ]
  %tobool.i = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end32
  %call.i = tail call i32* @__errno_location() #2
  store i32 9, i32* %call.i, align 4, !tbaa !3
  br label %if.else47

if.end.i:                                         ; preds = %cond.end32
  %call1.i = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %8) #2
  %call2.i = tail call i32 (i32, i32, ...)* @fcntl(i32 %call1.i, i32 3, i32 0) #2
  %cmp.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp.i, label %if.then3.i, label %if.else47

if.then3.i:                                       ; preds = %if.end.i
  %and.i = lshr i32 %call2.i, 11
  %and.lobit.i = and i32 %and.i, 1
  %15 = xor i32 %and.lobit.i, 1
  %cmp5.i = icmp eq i32 %cond33, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then3.i
  %or.i = or i32 %call2.i, 2048
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then3.i
  %cmp8.i = icmp sgt i32 %cond33, 0
  %and10.i = and i32 %call2.i, -2049
  %and10.call2.i = select i1 %cmp8.i, i32 %and10.i, i32 %call2.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then6.i
  %newmode.0.i = phi i32 [ %or.i, %if.then6.i ], [ %and10.call2.i, %if.else.i ]
  %cmp13.i = icmp eq i32 %newmode.0.i, %call2.i
  br i1 %cmp13.i, label %io_blocking.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i
  %call15.i = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %8) #2
  %call16.i = tail call i32 (i32, i32, ...)* @fcntl(i32 %call15.i, i32 4, i32 %newmode.0.i) #2
  %cmp17.i = icmp slt i32 %call16.i, 0
  %call16..i = select i1 %cmp17.i, i32 %call16.i, i32 %15
  br label %io_blocking.exit

io_blocking.exit:                                 ; preds = %if.end12.i, %if.then14.i
  %call3470 = phi i32 [ %call16..i, %if.then14.i ], [ %15, %if.end12.i ]
  %cmp35 = icmp sgt i32 %call3470, -1
  br i1 %cmp35, label %if.then37, label %if.else47

if.then37:                                        ; preds = %io_blocking.exit
  %conv38 = sext i32 %call3470 to i64
  %call39 = tail call %struct.sv* @Perl_newSViv(i64 %conv38) #2
  %call40 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call39) #2
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv* %call40, %struct.sv** %arrayidx43, align 8, !tbaa !0
  br label %return

if.else47:                                        ; preds = %if.end.i, %if.then.i, %io_blocking.exit
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx50, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else47, %if.then37
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_ungetc(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str8, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %sext60 = add i64 %add.ptr.idx, 8589934592
  %idxprom9 = ashr exact i64 %sext60, 32
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom9
  %10 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %11, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any14 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any14, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %12, i64 24
  %13 = bitcast i8* %xiv_iv to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call18 = tail call i64 @Perl_sv_2iv(%struct.sv* %10) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call18, %cond.false ]
  %conv19 = trunc i64 %cond to i32
  %15 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %15, i64 0, i32 7
  %16 = load i8* %op_private, align 1, !tbaa !1
  %and21 = and i8 %16, 32
  %tobool22 = icmp eq i8 %and21, 0
  br i1 %tobool22, label %cond.false25, label %cond.true23

cond.true23:                                      ; preds = %cond.end
  %op_targ = getelementptr inbounds %struct.op* %15, i64 0, i32 3
  %17 = load i64* %op_targ, align 8, !tbaa !4
  %18 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds %struct.sv** %18, i64 %17
  %19 = load %struct.sv** %arrayidx24, align 8, !tbaa !0
  br label %cond.end27

cond.false25:                                     ; preds = %cond.end
  %call26 = tail call %struct.sv* @Perl_sv_newmortal() #2
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi %struct.sv* [ %19, %cond.true23 ], [ %call26, %cond.false25 ]
  %tobool29 = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool29, label %if.else, label %if.then30

if.then30:                                        ; preds = %cond.end27
  %call31 = tail call i32 @PerlIO_ungetc(%struct._PerlIO** %8, i32 %conv19) #2
  %phitmp = sext i32 %call31 to i64
  br label %if.end33

if.else:                                          ; preds = %cond.end27
  %call32 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call32, align 4, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %RETVAL.0 = phi i64 [ %phitmp, %if.then30 ], [ -1, %if.else ]
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %cond28, i64 %RETVAL.0) #2
  %sv_flags38 = getelementptr inbounds %struct.sv* %cond28, i64 0, i32 2
  %21 = load i32* %sv_flags38, align 4, !tbaa !3
  %and39 = and i32 %21, 16384
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end33
  %call42 = tail call i32 @Perl_mg_set(%struct.sv* %cond28) #2
  br label %if.end43

if.end43:                                         ; preds = %if.end33, %if.then41
  %incdec.ptr44 = getelementptr inbounds %struct.sv** %20, i64 %idxprom
  store %struct.sv* %cond28, %struct.sv** %incdec.ptr44, align 8, !tbaa !0
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr46 = getelementptr inbounds %struct.sv** %22, i64 %idxprom
  store %struct.sv** %add.ptr46, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_error(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %9, i64 0, i32 7
  %10 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %10, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %9, i64 0, i32 3
  %11 = load i64* %op_targ, align 8, !tbaa !4
  %12 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.sv** %12, i64 %11
  %13 = load %struct.sv** %arrayidx9, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call10 = tail call %struct.sv* @Perl_sv_newmortal() #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %13, %cond.true ], [ %call10, %cond.false ]
  %tobool11 = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %cond.end
  %call13 = tail call i32 @Perl_PerlIO_error(%struct._PerlIO** %8) #2
  %phitmp = sext i32 %call13 to i64
  br label %if.end15

if.else:                                          ; preds = %cond.end
  %call14 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call14, align 4, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %RETVAL.0 = phi i64 [ %phitmp, %if.then12 ], [ -1, %if.else ]
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %RETVAL.0) #2
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and20 = and i32 %15, 16384
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end15
  %call23 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #2
  br label %if.end24

if.end24:                                         ; preds = %if.end15, %if.then22
  %incdec.ptr25 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr25, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr27 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv** %add.ptr27, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_clearerr(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str10, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %9 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %9, i64 0, i32 7
  %10 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %10, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %9, i64 0, i32 3
  %11 = load i64* %op_targ, align 8, !tbaa !4
  %12 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.sv** %12, i64 %11
  %13 = load %struct.sv** %arrayidx9, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call10 = tail call %struct.sv* @Perl_sv_newmortal() #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %13, %cond.true ], [ %call10, %cond.false ]
  %tobool11 = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %cond.end
  tail call void @Perl_PerlIO_clearerr(%struct._PerlIO** %8) #2
  br label %if.end14

if.else:                                          ; preds = %cond.end
  %call13 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call13, align 4, !tbaa !3
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %RETVAL.0 = phi i64 [ 0, %if.then12 ], [ -1, %if.else ]
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %RETVAL.0) #2
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and19 = and i32 %15, 16384
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end14
  %call22 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #2
  br label %if.end23

if.end23:                                         ; preds = %if.end14, %if.then21
  %incdec.ptr24 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr24, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr26 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_PerlIO_clearerr(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_untaint(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str11, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %8, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %7, i64 0, i32 3
  %9 = load i64* %op_targ, align 8, !tbaa !4
  %10 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx9, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %11, %cond.true ], [ %call, %cond.false ]
  %call10 = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %tobool11 = icmp eq %struct.io* %call10, null
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %cond.end
  %sv_any = getelementptr inbounds %struct.io* %call10, i64 0, i32 0
  %12 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_flags = getelementptr inbounds %struct.xpvio* %12, i64 0, i32 22
  %13 = load i8* %xio_flags, align 1, !tbaa !1
  %or = or i8 %13, 16
  store i8 %or, i8* %xio_flags, align 1, !tbaa !1
  br label %if.end16

if.else:                                          ; preds = %cond.end
  %call15 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call15, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %RETVAL.0 = phi i64 [ 0, %if.then12 ], [ -1, %if.else ]
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %RETVAL.0) #2
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and21 = and i32 %15, 16384
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end16
  %call24 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #2
  br label %if.end25

if.end25:                                         ; preds = %if.end16, %if.then23
  %incdec.ptr26 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr26, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr28 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv** %add.ptr28, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_flush(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str12, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 8
  %8 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %8) #2
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call10 = tail call i32* @__errno_location() #2
  store i32 22, i32* %call10, align 4, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %RETVAL.0 = phi i32 [ %call9, %if.then8 ], [ -1, %if.else ]
  %call12 = tail call %struct.sv* @Perl_sv_newmortal() #2
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %call12, %struct.sv** %arrayidx15, align 8, !tbaa !0
  %cmp16 = icmp eq i32 %RETVAL.0, -1
  br i1 %cmp16, label %if.end31, label %if.then18

if.then18:                                        ; preds = %if.end11
  %cmp19 = icmp eq i32 %RETVAL.0, 0
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx24, align 8, !tbaa !0
  br i1 %cmp19, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.then18
  tail call void @Perl_sv_setpvn(%struct.sv* %11, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i64 10) #2
  br label %if.end31

if.else25:                                        ; preds = %if.then18
  %conv29 = sext i32 %RETVAL.0 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %11, i64 %conv29) #2
  br label %if.end31

if.end31:                                         ; preds = %if.end11, %if.then21, %if.else25
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr33 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_setbuf(%struct.cv* nocapture %cv) #0 {
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
  %sub.ptr.div417 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div417 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str13, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %5) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %6 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %6, i64 0, i32 8
  %7 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0)) #2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr12.sum = add i64 %idxprom, -1
  %add.ptr13 = getelementptr inbounds %struct.sv** %8, i64 %add.ptr12.sum
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_setvbuf(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 32
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0)) #2
  %call7 = tail call %struct.sv* @Perl_sv_newmortal() #2
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8, !tbaa !0
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr25 = getelementptr inbounds %struct.sv** %6, i64 %idxprom
  store %struct.sv** %add.ptr25, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Handle_sync(%struct.cv* nocapture %cv) #0 {
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #2
  %call9 = tail call %struct.sv* @Perl_sv_newmortal() #2
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv* %call9, %struct.sv** %arrayidx12, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr29 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_IO__Socket_sockatmark(%struct.cv* nocapture %cv) #0 {
entry:
  %flag = alloca i32, align 4
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
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str19, i64 0, i64 0)) #2
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %6) #2
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %call8 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %8) #2
  store i32 0, i32* %flag, align 4, !tbaa !3
  %call9 = call i32 (i32, i64, ...)* @ioctl(i32 %call8, i64 35077, i32* %flag) #2
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.end
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx15, align 8, !tbaa !0
  br label %return

if.end19:                                         ; preds = %if.end
  %10 = load i32* %flag, align 4, !tbaa !3
  %call20 = call %struct.sv* @Perl_sv_newmortal() #2
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %struct.sv** %11, i64 %idxprom
  store %struct.sv* %call20, %struct.sv** %arrayidx23, align 8, !tbaa !0
  %cmp24 = icmp eq i32 %10, -1
  br i1 %cmp24, label %return, label %if.then26

if.then26:                                        ; preds = %if.end19
  %cmp27 = icmp eq i32 %10, 0
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv** %arrayidx32, align 8, !tbaa !0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then26
  call void @Perl_sv_setpvn(%struct.sv* %13, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i64 10) #2
  br label %return

if.else:                                          ; preds = %if.then26
  %conv36 = sext i32 %10 to i64
  call void @Perl_sv_setiv(%struct.sv* %13, i64 %conv36) #2
  br label %return

return:                                           ; preds = %if.else, %if.then29, %if.end19, %if.then12
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @boot_IO(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext91 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext91, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str21, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Seekable_getpos, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str22, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Seekable_setpos, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str23, i64 0, i64 0), void (%struct.cv*)* @XS_IO__File_new_tmpfile, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8]* @.str24, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Poll__poll, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_blocking, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %2 = bitcast %struct.cv* %call9 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0)) #2
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_ungetc, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str28, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_error, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str29, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_clearerr, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call13 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_untaint, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call14 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_flush, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call15 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_setbuf, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call16 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_setvbuf, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call17 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Handle_sync, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %call18 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str32, i64 0, i64 0), void (%struct.cv*)* @XS_IO__Socket_sockatmark, i8* getelementptr inbounds ([52 x i8]* @.str20, i64 0, i64 0)) #2
  %3 = bitcast %struct.cv* %call18 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([2 x i8]* @.str33, i64 0, i64 0)) #2
  %call19 = tail call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i32 8, i32 1) #2
  %call20 = tail call %struct.sv* @Perl_newSViv(i64 1) #2
  %call21 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0), %struct.sv* %call20) #2
  %call22 = tail call %struct.sv* @Perl_newSViv(i64 2) #2
  %call23 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), %struct.sv* %call22) #2
  %call24 = tail call %struct.sv* @Perl_newSViv(i64 4) #2
  %call25 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), %struct.sv* %call24) #2
  %call26 = tail call %struct.sv* @Perl_newSViv(i64 64) #2
  %call27 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), %struct.sv* %call26) #2
  %call28 = tail call %struct.sv* @Perl_newSViv(i64 4) #2
  %call29 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), %struct.sv* %call28) #2
  %call30 = tail call %struct.sv* @Perl_newSViv(i64 128) #2
  %call31 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([11 x i8]* @.str40, i64 0, i64 0), %struct.sv* %call30) #2
  %call32 = tail call %struct.sv* @Perl_newSViv(i64 256) #2
  %call33 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), %struct.sv* %call32) #2
  %call34 = tail call %struct.sv* @Perl_newSViv(i64 64) #2
  %call35 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0), %struct.sv* %call34) #2
  %call36 = tail call %struct.sv* @Perl_newSViv(i64 8) #2
  %call37 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), %struct.sv* %call36) #2
  %call38 = tail call %struct.sv* @Perl_newSViv(i64 16) #2
  %call39 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([8 x i8]* @.str44, i64 0, i64 0), %struct.sv* %call38) #2
  %call40 = tail call %struct.sv* @Perl_newSViv(i64 32) #2
  %call41 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call19, i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), %struct.sv* %call40) #2
  %call42 = tail call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([11 x i8]* @.str46, i64 0, i64 0), i32 10, i32 1) #2
  %call43 = tail call %struct.sv* @Perl_newSViv(i64 0) #2
  %call44 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call42, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), %struct.sv* %call43) #2
  %call45 = tail call %struct.sv* @Perl_newSViv(i64 1) #2
  %call46 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call42, i8* getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0), %struct.sv* %call45) #2
  %call47 = tail call %struct.sv* @Perl_newSViv(i64 2) #2
  %call48 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call42, i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), %struct.sv* %call47) #2
  %call49 = tail call %struct.sv* @Perl_newSViv(i64 0) #2
  %call50 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call42, i8* getelementptr inbounds ([9 x i8]* @.str50, i64 0, i64 0), %struct.sv* %call49) #2
  %call51 = tail call %struct.sv* @Perl_newSViv(i64 1) #2
  %call52 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call42, i8* getelementptr inbounds ([9 x i8]* @.str51, i64 0, i64 0), %struct.sv* %call51) #2
  %call53 = tail call %struct.sv* @Perl_newSViv(i64 2) #2
  %call54 = tail call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %call42, i8* getelementptr inbounds ([9 x i8]* @.str52, i64 0, i64 0), %struct.sv* %call53) #2
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr57 = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  store %struct.sv** %add.ptr57, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpvn(i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_newCONSTSUB(%struct.hv*, i8*, %struct.sv*) #1

; Function Attrs: optsize
declare i32 @fcntl(i32, i32, ...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
