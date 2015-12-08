; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/MD5.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
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
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.MD5_CTX = type { i32, i32, i32, i32, i32, i32, i32, [128 x i8] }

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [32 x i8] c"Usage: Digest::MD5::new(xclass)\00", align 1
@.str1 = private unnamed_addr constant [32 x i8] c"Usage: Digest::MD5::clone(self)\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"Usage: Digest::MD5::DESTROY(context)\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"Usage: Digest::MD5::add(self, ...)\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"Usage: Digest::MD5::addfile(self, fh)\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"Reading from filehandle failed\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"No filehandle passed\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"Usage: %s(context)\00", align 1
@PL_dowarn = external global i8
@.str8 = private unnamed_addr constant [12 x i8] c"Digest::MD5\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"probably called as method\00", align 1
@.str10 = private unnamed_addr constant [31 x i8] c"called with reference argument\00", align 1
@.str11 = private unnamed_addr constant [32 x i8] c"probably called as class method\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"md5_hex\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"md5_base64\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"&Digest::MD5::%s function %s\00", align 1
@.str16 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/MD5.c\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"Digest::MD5::new\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"Digest::MD5::clone\00", align 1
@.str19 = private unnamed_addr constant [21 x i8] c"Digest::MD5::DESTROY\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"Digest::MD5::add\00", align 1
@.str21 = private unnamed_addr constant [21 x i8] c"Digest::MD5::addfile\00", align 1
@.str22 = private unnamed_addr constant [23 x i8] c"Digest::MD5::hexdigest\00", align 1
@.str23 = private unnamed_addr constant [20 x i8] c"Digest::MD5::digest\00", align 1
@.str24 = private unnamed_addr constant [23 x i8] c"Digest::MD5::b64digest\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"Digest::MD5::md5\00", align 1
@.str26 = private unnamed_addr constant [24 x i8] c"Digest::MD5::md5_base64\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"Digest::MD5::md5_hex\00", align 1
@PL_sv_yes = external global %struct.sv
@.str28 = private unnamed_addr constant [25 x i8] c"Bad convertion type (%d)\00", align 1
@.str29 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@.str30 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@PADDING = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str31 = private unnamed_addr constant [40 x i8] c"Not a reference to a Digest::MD5 object\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_new(%struct.cv* nocapture %cv) #0 {
entry:
  %my_na = alloca i64, align 8
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
  %sub.ptr.div448 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div448 to i32
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %and12 = and i32 %6, 262144
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then10
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  store i64 %9, i64* %my_na, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %my_na, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %call, %cond.false ]
  %call16 = call i8* @Perl_safesysmalloc(i64 156) #4
  %11 = bitcast i8* %call16 to %struct.MD5_CTX*
  %signature = bitcast i8* %call16 to i32*
  store i32 200003165, i32* %signature, align 4, !tbaa !3
  %call17 = call %struct.sv* @Perl_sv_newmortal() #4
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv* %call17, %struct.sv** %arrayidx20, align 8, !tbaa !0
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  %14 = load %struct.sv** %arrayidx23, align 8, !tbaa !0
  %call24 = call %struct.sv* @Perl_sv_setref_pv(%struct.sv* %14, i8* %cond, i8* %call16) #4
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  %16 = load %struct.sv** %arrayidx27, align 8, !tbaa !0
  %sv_any28 = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %17 = load i8** %sv_any28, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %17 to %struct.sv**
  %18 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags29 = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags29, align 4, !tbaa !3
  %or = or i32 %19, 8388608
  store i32 %or, i32* %sv_flags29, align 4, !tbaa !3
  br label %if.end31

if.else:                                          ; preds = %if.end
  %call30 = call fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %5) #5
  %.pre49 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %cond.end
  %20 = phi %struct.sv** [ %.pre49, %if.else ], [ %15, %cond.end ]
  %context.0 = phi %struct.MD5_CTX* [ %call30, %if.else ], [ %11, %cond.end ]
  %A.i = getelementptr inbounds %struct.MD5_CTX* %context.0, i64 0, i32 1
  store i32 1732584193, i32* %A.i, align 4, !tbaa !3
  %B.i = getelementptr inbounds %struct.MD5_CTX* %context.0, i64 0, i32 2
  store i32 -271733879, i32* %B.i, align 4, !tbaa !3
  %C.i = getelementptr inbounds %struct.MD5_CTX* %context.0, i64 0, i32 3
  store i32 -1732584194, i32* %C.i, align 4, !tbaa !3
  %D.i = getelementptr inbounds %struct.MD5_CTX* %context.0, i64 0, i32 4
  store i32 271733878, i32* %D.i, align 4, !tbaa !3
  %bytes_high.i = getelementptr inbounds %struct.MD5_CTX* %context.0, i64 0, i32 6
  store i32 0, i32* %bytes_high.i, align 4, !tbaa !3
  %bytes_low.i = getelementptr inbounds %struct.MD5_CTX* %context.0, i64 0, i32 5
  store i32 0, i32* %bytes_low.i, align 4, !tbaa !3
  %add.ptr33 = getelementptr inbounds %struct.sv** %20, i64 %idxprom
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_setref_pv(%struct.sv*, i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* nocapture %sv) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %1 to %struct.sv**
  %2 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags1 = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags1, align 4, !tbaa !3
  %and2 = and i32 %3, 65536
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end12, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any8 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any8, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %4, i64 24
  %5 = bitcast i8* %xiv_iv to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %7 = inttoptr i64 %6 to %struct.MD5_CTX*
  %tobool9 = icmp eq i64 %6, 0
  br i1 %tobool9, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true
  %signature = getelementptr inbounds %struct.MD5_CTX* %7, i64 0, i32 0
  %8 = load i32* %signature, align 4, !tbaa !3
  %cmp = icmp eq i32 %8, 200003165
  br i1 %cmp, label %return, label %if.end12

if.end12:                                         ; preds = %if.then, %cond.true, %entry, %land.lhs.true
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str31, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end12
  %retval.0 = phi %struct.MD5_CTX* [ null, %if.end12 ], [ %7, %land.lhs.true ]
  ret %struct.MD5_CTX* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_clone(%struct.cv* nocapture %cv) #0 {
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
  %sub.ptr.div438 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div438 to i32
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str1, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %5) #5
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %6 to %struct.sv**
  %7 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %call10 = tail call i8* @Perl_sv_reftype(%struct.sv* %7, i32 1) #4
  %call11 = tail call i8* @Perl_safesysmalloc(i64 156) #4
  %call12 = tail call %struct.sv* @Perl_sv_newmortal() #4
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv* %call12, %struct.sv** %arrayidx15, align 8, !tbaa !0
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx18, align 8, !tbaa !0
  %call19 = tail call %struct.sv* @Perl_sv_setref_pv(%struct.sv* %10, i8* %call10, i8* %call11) #4
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv** %arrayidx22, align 8, !tbaa !0
  %sv_any23 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %13 = load i8** %sv_any23, align 8, !tbaa !0
  %xrv_rv24 = bitcast i8* %13 to %struct.sv**
  %14 = load %struct.sv** %xrv_rv24, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %15, 8388608
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %16 = bitcast %struct.MD5_CTX* %call to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call11, i8* %16, i64 156, i32 4, i1 false)
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr26 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_reftype(%struct.sv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_DESTROY(%struct.cv* nocapture %cv) #0 {
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %6) #5
  %7 = bitcast %struct.MD5_CTX* %call to i8*
  tail call void @Perl_safesysfree(i8* %7) #4
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr9.sum = add i64 %idxprom, -1
  %add.ptr10 = getelementptr inbounds %struct.sv** %8, i64 %add.ptr9.sum
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_add(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
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
  %sub.ptr.div444 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div444 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str3, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %5) #5
  %cmp1045 = icmp sgt i32 %conv5, 1
  br i1 %cmp1045, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sext49 = shl i64 %add, 32
  %6 = ashr exact i64 %sext49, 32
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %7 = add nsw i64 %indvars.iv, %6
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx14, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %10, 537133056
  %cmp15 = icmp eq i32 %and, 262144
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %sv_any = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %11 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %11 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call27 = call i8* @Perl_sv_2pvbyte(%struct.sv* %9, i64* %len) #4
  %.pre48 = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %15 = phi i64 [ %13, %cond.true ], [ %.pre48, %cond.false ]
  %cond = phi i8* [ %14, %cond.true ], [ %call27, %cond.false ]
  call fastcc void @MD5Update(%struct.MD5_CTX* %call, i8* %cond, i64 %15) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %if.end
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr29 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pvbyte(%struct.sv*, i64*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @MD5Update(%struct.MD5_CTX* nocapture %ctx, i8* nocapture %buf, i64 %len) #0 {
entry:
  %bytes_low = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 5
  %0 = load i32* %bytes_low, align 4, !tbaa !3
  %and = and i32 %0, 63
  %conv = zext i32 %and to i64
  %conv2 = zext i32 %0 to i64
  %add = add i64 %conv2, %len
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, i32* %bytes_low, align 4, !tbaa !3
  %conv5 = and i64 %add, 4294967295
  %cmp = icmp ult i64 %conv5, %len
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %bytes_high = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 6
  %1 = load i32* %bytes_high, align 4, !tbaa !3
  %inc = add i32 %1, 1
  store i32 %inc, i32* %bytes_high, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end20, label %if.then7

if.then7:                                         ; preds = %if.end
  %sub = sub i64 64, %conv
  %cmp8 = icmp ugt i64 %sub, %len
  %add.ptr = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %conv
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %buf, i64 %len, i32 1, i1 false)
  br label %if.end31

if.end11:                                         ; preds = %if.then7
  %arraydecay = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %buf, i64 %sub, i32 1, i1 false)
  tail call fastcc void @MD5Transform(%struct.MD5_CTX* %ctx, i8* %arraydecay, i64 1) #5
  %add.ptr18 = getelementptr inbounds i8* %buf, i64 %sub
  %sub19 = sub i64 %len, %sub
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.end11
  %len.addr.0 = phi i64 [ %sub19, %if.end11 ], [ %len, %if.end ]
  %buf.addr.0 = phi i8* [ %add.ptr18, %if.end11 ], [ %buf, %if.end ]
  %shr = lshr i64 %len.addr.0, 6
  %tobool21 = icmp eq i64 %shr, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end20
  tail call fastcc void @MD5Transform(%struct.MD5_CTX* %ctx, i8* %buf.addr.0, i64 %shr) #5
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.then22
  %and24 = and i64 %len.addr.0, 63
  %tobool25 = icmp eq i64 %and24, 0
  br i1 %tobool25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end23
  %arraydecay28 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 0
  %shl = shl nuw i64 %shr, 6
  %add.ptr29 = getelementptr inbounds i8* %buf.addr.0, i64 %shl
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay28, i8* %add.ptr29, i64 %and24, i32 1, i1 false)
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %if.then10, %if.then26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_addfile(%struct.cv* nocapture %cv) #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sext60 = add i64 %add.ptr.idx, 8589934592
  %idxprom9 = ashr exact i64 %sext60, 32
  %arrayidx10 = getelementptr inbounds %struct.sv** %5, i64 %idxprom9
  %7 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %7) #4
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %8 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %8, i64 0, i32 7
  %9 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %call11 = call fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %6) #5
  %bytes_low = getelementptr inbounds %struct.MD5_CTX* %call11, i64 0, i32 5
  %10 = load i32* %bytes_low, align 4, !tbaa !3
  %and = and i32 %10, 63
  %conv12 = zext i32 %and to i64
  %11 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %11) #2
  %tobool = icmp eq %struct._PerlIO** %9, null
  br i1 %tobool, label %if.else40, label %if.then13

if.then13:                                        ; preds = %if.end
  %tobool14 = icmp eq i32 %and, 0
  br i1 %tobool14, label %while.cond.preheader, label %if.then15

if.then15:                                        ; preds = %if.then13
  %sub = sub i64 64, %conv12
  %call16 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %9, i8* %11, i64 %sub) #4
  %conv17 = trunc i64 %call16 to i32
  %cmp18 = icmp sgt i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.then15
  %sext62 = shl i64 %call16, 32
  %conv22 = ashr exact i64 %sext62, 32
  call fastcc void @MD5Update(%struct.MD5_CTX* %call11, i8* %11, i64 %conv22) #5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then20, %if.then13
  %call3063 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %9, i8* %11, i64 4096) #4
  %conv3164 = trunc i64 %call3063 to i32
  %cmp3265 = icmp sgt i32 %conv3164, 0
  br i1 %cmp3265, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call3066 = phi i64 [ %call30, %while.body ], [ %call3063, %while.cond.preheader ]
  %sext61 = shl i64 %call3066, 32
  %conv35 = ashr exact i64 %sext61, 32
  call fastcc void @MD5Update(%struct.MD5_CTX* %call11, i8* %11, i64 %conv35) #5
  %call30 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %9, i8* %11, i64 4096) #4
  %conv31 = trunc i64 %call30 to i32
  %cmp32 = icmp sgt i32 %conv31, 0
  br i1 %cmp32, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %call36 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %9) #4
  %tobool37 = icmp eq i32 %call36, 0
  br i1 %tobool37, label %cleanup, label %if.then38

if.then38:                                        ; preds = %while.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0)) #4
  br label %cleanup

if.else40:                                        ; preds = %if.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0)) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else40, %if.then38, %while.end, %if.then15
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 4096, i8* %11) #2
  ret void
}

; Function Attrs: optsize
declare %struct.io* @Perl_sv_2io(%struct.sv*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_read(%struct._PerlIO**, i8*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_digest(%struct.cv* nocapture %cv) #0 {
entry:
  %digeststr = alloca [16 x i8], align 16
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
  %sub.ptr.div428 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div428 to i32
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %5 = load i32* %any_i32, align 4, !tbaa !3
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 12
  %6 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 8
  %8 = load i8** %xgv_name, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i8* %8) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %9 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call fastcc %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %10) #5
  %arraydecay = getelementptr inbounds [16 x i8]* %digeststr, i64 0, i64 0
  call fastcc void @MD5Final(i8* %arraydecay, %struct.MD5_CTX* %call) #5
  %A.i = getelementptr inbounds %struct.MD5_CTX* %call, i64 0, i32 1
  store i32 1732584193, i32* %A.i, align 4, !tbaa !3
  %B.i = getelementptr inbounds %struct.MD5_CTX* %call, i64 0, i32 2
  store i32 -271733879, i32* %B.i, align 4, !tbaa !3
  %C.i = getelementptr inbounds %struct.MD5_CTX* %call, i64 0, i32 3
  store i32 -1732584194, i32* %C.i, align 4, !tbaa !3
  %D.i = getelementptr inbounds %struct.MD5_CTX* %call, i64 0, i32 4
  store i32 271733878, i32* %D.i, align 4, !tbaa !3
  %bytes_high.i = getelementptr inbounds %struct.MD5_CTX* %call, i64 0, i32 6
  store i32 0, i32* %bytes_high.i, align 4, !tbaa !3
  %bytes_low.i = getelementptr inbounds %struct.MD5_CTX* %call, i64 0, i32 5
  store i32 0, i32* %bytes_low.i, align 4, !tbaa !3
  %call13 = call fastcc %struct.sv* @make_mortal_sv(i8* %arraydecay, i32 %5) #5
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.sv** %11, i64 %idxprom
  store %struct.sv* %call13, %struct.sv** %arrayidx16, align 8, !tbaa !0
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr18 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv** %add.ptr18, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @MD5Final(i8* nocapture %digest, %struct.MD5_CTX* nocapture %ctx) #0 {
entry:
  %bytes_low = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 5
  %0 = load i32* %bytes_low, align 4, !tbaa !3
  %and = and i32 %0, 63
  %conv = zext i32 %and to i64
  %cmp = icmp ult i32 %and, 56
  %conv2 = select i1 %cmp, i64 56, i64 120
  %sub = sub i64 %conv2, %conv
  %arraydecay = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 0
  %add.ptr = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %conv
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([64 x i8]* @PADDING, i64 0, i64 0), i64 %sub, i32 1, i1 false)
  %1 = load i32* %bytes_low, align 4, !tbaa !3
  %shl = shl i32 %1, 3
  %bytes_high = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 6
  %2 = load i32* %bytes_high, align 4, !tbaa !3
  %shl4 = shl i32 %2, 3
  %shr = lshr i32 %1, 29
  %or = or i32 %shl4, %shr
  %add.ptr8 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %conv2
  %conv.i = trunc i32 %shl to i8
  %add.ptr8.sum95 = or i64 %conv2, 1
  %incdec.ptr.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add.ptr8.sum95
  store i8 %conv.i, i8* %add.ptr8, align 1, !tbaa !1
  %3 = lshr i32 %1, 5
  %conv2.i = trunc i32 %3 to i8
  %add.ptr8.sum96 = or i64 %conv2, 2
  %incdec.ptr3.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add.ptr8.sum96
  store i8 %conv2.i, i8* %incdec.ptr.i, align 1, !tbaa !1
  %4 = lshr i32 %1, 13
  %conv6.i = trunc i32 %4 to i8
  %add.ptr8.sum97 = or i64 %conv2, 3
  %incdec.ptr7.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add.ptr8.sum97
  store i8 %conv6.i, i8* %incdec.ptr3.i, align 1, !tbaa !1
  %5 = lshr i32 %1, 21
  %conv10.i = trunc i32 %5 to i8
  store i8 %conv10.i, i8* %incdec.ptr7.i, align 1, !tbaa !1
  %add944 = or i64 %conv2, 4
  %add.ptr12 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add944
  %conv.i85 = trunc i32 %or to i8
  %add.ptr12.sum98 = or i64 %conv2, 5
  %incdec.ptr.i86 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add.ptr12.sum98
  store i8 %conv.i85, i8* %add.ptr12, align 1, !tbaa !1
  %6 = lshr i32 %2, 5
  %conv2.i88 = trunc i32 %6 to i8
  %add.ptr12.sum99 = or i64 %conv2, 6
  %incdec.ptr3.i89 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add.ptr12.sum99
  store i8 %conv2.i88, i8* %incdec.ptr.i86, align 1, !tbaa !1
  %7 = lshr i32 %2, 13
  %conv6.i91 = trunc i32 %7 to i8
  %add.ptr12.sum100 = or i64 %conv2, 7
  %incdec.ptr7.i92 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 7, i64 %add.ptr12.sum100
  store i8 %conv6.i91, i8* %incdec.ptr3.i89, align 1, !tbaa !1
  %8 = lshr i32 %2, 21
  %conv10.i94 = trunc i32 %8 to i8
  store i8 %conv10.i94, i8* %incdec.ptr7.i92, align 1, !tbaa !1
  %add13 = add i64 %add944, 4
  %shr16 = lshr i64 %add13, 6
  tail call fastcc void @MD5Transform(%struct.MD5_CTX* %ctx, i8* %arraydecay, i64 %shr16) #5
  %A = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 1
  %9 = load i32* %A, align 4, !tbaa !3
  %conv.i75 = trunc i32 %9 to i8
  %incdec.ptr.i76 = getelementptr inbounds i8* %digest, i64 1
  store i8 %conv.i75, i8* %digest, align 1, !tbaa !1
  %shr.i77 = lshr i32 %9, 8
  %conv2.i78 = trunc i32 %shr.i77 to i8
  %incdec.ptr3.i79 = getelementptr inbounds i8* %digest, i64 2
  store i8 %conv2.i78, i8* %incdec.ptr.i76, align 1, !tbaa !1
  %shr4.i80 = lshr i32 %9, 16
  %conv6.i81 = trunc i32 %shr4.i80 to i8
  %incdec.ptr7.i82 = getelementptr inbounds i8* %digest, i64 3
  store i8 %conv6.i81, i8* %incdec.ptr3.i79, align 1, !tbaa !1
  %shr8.i83 = lshr i32 %9, 24
  %conv10.i84 = trunc i32 %shr8.i83 to i8
  store i8 %conv10.i84, i8* %incdec.ptr7.i82, align 1, !tbaa !1
  %B = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 2
  %10 = load i32* %B, align 4, !tbaa !3
  %add.ptr17 = getelementptr inbounds i8* %digest, i64 4
  %conv.i65 = trunc i32 %10 to i8
  %incdec.ptr.i66 = getelementptr inbounds i8* %digest, i64 5
  store i8 %conv.i65, i8* %add.ptr17, align 1, !tbaa !1
  %shr.i67 = lshr i32 %10, 8
  %conv2.i68 = trunc i32 %shr.i67 to i8
  %incdec.ptr3.i69 = getelementptr inbounds i8* %digest, i64 6
  store i8 %conv2.i68, i8* %incdec.ptr.i66, align 1, !tbaa !1
  %shr4.i70 = lshr i32 %10, 16
  %conv6.i71 = trunc i32 %shr4.i70 to i8
  %incdec.ptr7.i72 = getelementptr inbounds i8* %digest, i64 7
  store i8 %conv6.i71, i8* %incdec.ptr3.i69, align 1, !tbaa !1
  %shr8.i73 = lshr i32 %10, 24
  %conv10.i74 = trunc i32 %shr8.i73 to i8
  store i8 %conv10.i74, i8* %incdec.ptr7.i72, align 1, !tbaa !1
  %C = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 3
  %11 = load i32* %C, align 4, !tbaa !3
  %add.ptr18 = getelementptr inbounds i8* %digest, i64 8
  %conv.i55 = trunc i32 %11 to i8
  %incdec.ptr.i56 = getelementptr inbounds i8* %digest, i64 9
  store i8 %conv.i55, i8* %add.ptr18, align 1, !tbaa !1
  %shr.i57 = lshr i32 %11, 8
  %conv2.i58 = trunc i32 %shr.i57 to i8
  %incdec.ptr3.i59 = getelementptr inbounds i8* %digest, i64 10
  store i8 %conv2.i58, i8* %incdec.ptr.i56, align 1, !tbaa !1
  %shr4.i60 = lshr i32 %11, 16
  %conv6.i61 = trunc i32 %shr4.i60 to i8
  %incdec.ptr7.i62 = getelementptr inbounds i8* %digest, i64 11
  store i8 %conv6.i61, i8* %incdec.ptr3.i59, align 1, !tbaa !1
  %shr8.i63 = lshr i32 %11, 24
  %conv10.i64 = trunc i32 %shr8.i63 to i8
  store i8 %conv10.i64, i8* %incdec.ptr7.i62, align 1, !tbaa !1
  %D = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 4
  %12 = load i32* %D, align 4, !tbaa !3
  %add.ptr19 = getelementptr inbounds i8* %digest, i64 12
  %conv.i45 = trunc i32 %12 to i8
  %incdec.ptr.i46 = getelementptr inbounds i8* %digest, i64 13
  store i8 %conv.i45, i8* %add.ptr19, align 1, !tbaa !1
  %shr.i47 = lshr i32 %12, 8
  %conv2.i48 = trunc i32 %shr.i47 to i8
  %incdec.ptr3.i49 = getelementptr inbounds i8* %digest, i64 14
  store i8 %conv2.i48, i8* %incdec.ptr.i46, align 1, !tbaa !1
  %shr4.i50 = lshr i32 %12, 16
  %conv6.i51 = trunc i32 %shr4.i50 to i8
  %incdec.ptr7.i52 = getelementptr inbounds i8* %digest, i64 15
  store i8 %conv6.i51, i8* %incdec.ptr3.i49, align 1, !tbaa !1
  %shr8.i53 = lshr i32 %12, 24
  %conv10.i54 = trunc i32 %shr8.i53 to i8
  store i8 %conv10.i54, i8* %incdec.ptr7.i52, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @make_mortal_sv(i8* %src, i32 %type) #0 {
entry:
  %result = alloca [33 x i8], align 16
  %0 = getelementptr inbounds [33 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start(i64 33, i8* %0) #2
  switch i32 %type, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8* %src, i64 16
  %from21.i = ptrtoint i8* %src to i64
  %scevgep19.i = getelementptr i8* %src, i64 1
  %1 = icmp ugt i8* %add.ptr.i, %scevgep19.i
  %umax.i = select i1 %1, i8* %add.ptr.i, i8* %scevgep19.i
  %umax20.i = ptrtoint i8* %umax.i to i64
  %2 = shl i64 %from21.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %sw.bb1
  %d.018.i = phi i8* [ %0, %sw.bb1 ], [ %incdec.ptr4.i, %while.body.i ]
  %from.addr.017.i = phi i8* [ %src, %sw.bb1 ], [ %incdec.ptr5.i, %while.body.i ]
  %3 = load i8* %from.addr.017.i, align 1, !tbaa !1
  %conv.i = zext i8 %3 to i64
  %shr13.i = lshr i64 %conv.i, 4
  %arrayidx.i = getelementptr inbounds [17 x i8]* @.str30, i64 0, i64 %shr13.i
  %4 = load i8* %arrayidx.i, align 1, !tbaa !1
  %incdec.ptr.i = getelementptr inbounds i8* %d.018.i, i64 1
  store i8 %4, i8* %d.018.i, align 1, !tbaa !1
  %and.i = and i64 %conv.i, 15
  %arrayidx3.i = getelementptr inbounds [17 x i8]* @.str30, i64 0, i64 %and.i
  %5 = load i8* %arrayidx3.i, align 1, !tbaa !1
  %incdec.ptr4.i = getelementptr inbounds i8* %d.018.i, i64 2
  store i8 %5, i8* %incdec.ptr.i, align 1, !tbaa !1
  %incdec.ptr5.i = getelementptr inbounds i8* %from.addr.017.i, i64 1
  %cmp.i = icmp ult i8* %incdec.ptr5.i, %add.ptr.i
  br i1 %cmp.i, label %while.body.i, label %hex_16.exit

hex_16.exit:                                      ; preds = %while.body.i
  %6 = shl i64 %umax20.i, 1
  %7 = sub i64 %6, %2
  %scevgep22.i = getelementptr [33 x i8]* %result, i64 0, i64 %7
  store i8 0, i8* %scevgep22.i, align 2, !tbaa !1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %add.ptr.i10 = getelementptr inbounds i8* %src, i64 16
  %8 = load i8* %src, align 1, !tbaa !1
  %conv56.i = zext i8 %8 to i32
  %shr4757.i = lshr i32 %conv56.i, 2
  %idxprom4858.i = zext i32 %shr4757.i to i64
  %arrayidx59.i = getelementptr inbounds [65 x i8]* @.str29, i64 0, i64 %idxprom4858.i
  %9 = load i8* %arrayidx59.i, align 1, !tbaa !1
  %incdec.ptr160.i = getelementptr inbounds [33 x i8]* %result, i64 0, i64 1
  store i8 %9, i8* %0, align 16, !tbaa !1
  %incdec.ptr55.i = getelementptr inbounds i8* %src, i64 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i, %sw.bb2
  %incdec.ptr165.i = phi i8* [ %incdec.ptr160.i, %sw.bb2 ], [ %incdec.ptr1.i, %if.end.i ]
  %conv64.i = phi i32 [ %conv56.i, %sw.bb2 ], [ %conv.i13, %if.end.i ]
  %incdec.ptr63.i = phi i8* [ %incdec.ptr55.i, %sw.bb2 ], [ %incdec.ptr.i12, %if.end.i ]
  %d.062.i = phi i8* [ %0, %sw.bb2 ], [ %incdec.ptr32.i, %if.end.i ]
  %from.addr.061.i = phi i8* [ %src, %sw.bb2 ], [ %incdec.ptr8.i, %if.end.i ]
  %incdec.ptr7.i = getelementptr inbounds i8* %from.addr.061.i, i64 2
  %10 = load i8* %incdec.ptr63.i, align 1, !tbaa !1
  %incdec.ptr8.i = getelementptr inbounds i8* %from.addr.061.i, i64 3
  %11 = load i8* %incdec.ptr7.i, align 1, !tbaa !1
  %and10.i = shl nuw nsw i32 %conv64.i, 4
  %shl11.i = and i32 %and10.i, 48
  %conv12.i = zext i8 %10 to i32
  %shr1449.i = lshr i32 %conv12.i, 4
  %or.i = or i32 %shr1449.i, %shl11.i
  %idxprom1550.i = zext i32 %or.i to i64
  %arrayidx16.i = getelementptr inbounds [65 x i8]* @.str29, i64 0, i64 %idxprom1550.i
  %12 = load i8* %arrayidx16.i, align 1, !tbaa !1
  %incdec.ptr17.i = getelementptr inbounds i8* %d.062.i, i64 2
  store i8 %12, i8* %incdec.ptr165.i, align 1, !tbaa !1
  %and19.i = shl nuw nsw i32 %conv12.i, 2
  %shl20.i = and i32 %and19.i, 60
  %conv21.i = zext i8 %11 to i32
  %shr2351.i = lshr i32 %conv21.i, 6
  %or24.i = or i32 %shl20.i, %shr2351.i
  %idxprom2552.i = zext i32 %or24.i to i64
  %arrayidx26.i = getelementptr inbounds [65 x i8]* @.str29, i64 0, i64 %idxprom2552.i
  %13 = load i8* %arrayidx26.i, align 1, !tbaa !1
  %incdec.ptr27.i = getelementptr inbounds i8* %d.062.i, i64 3
  store i8 %13, i8* %incdec.ptr17.i, align 1, !tbaa !1
  %and29.i = and i32 %conv21.i, 63
  %idxprom3053.i = zext i32 %and29.i to i64
  %arrayidx31.i = getelementptr inbounds [65 x i8]* @.str29, i64 0, i64 %idxprom3053.i
  %14 = load i8* %arrayidx31.i, align 1, !tbaa !1
  %incdec.ptr32.i = getelementptr inbounds i8* %d.062.i, i64 4
  store i8 %14, i8* %incdec.ptr27.i, align 1, !tbaa !1
  %incdec.ptr.i12 = getelementptr inbounds i8* %from.addr.061.i, i64 4
  %15 = load i8* %incdec.ptr8.i, align 1, !tbaa !1
  %conv.i13 = zext i8 %15 to i32
  %shr47.i = lshr i32 %conv.i13, 2
  %idxprom48.i = zext i32 %shr47.i to i64
  %arrayidx.i14 = getelementptr inbounds [65 x i8]* @.str29, i64 0, i64 %idxprom48.i
  %16 = load i8* %arrayidx.i14, align 1, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i8* %d.062.i, i64 5
  store i8 %16, i8* %incdec.ptr32.i, align 1, !tbaa !1
  %cmp.i15 = icmp eq i8* %incdec.ptr.i12, %add.ptr.i10
  br i1 %cmp.i15, label %base64_16.exit, label %if.end.i

base64_16.exit:                                   ; preds = %if.end.i
  %scevgep.i = getelementptr [33 x i8]* %result, i64 0, i64 21
  %and.i11 = shl nuw nsw i32 %conv.i13, 4
  %shl.i = and i32 %and.i11, 48
  %idxprom454.i = zext i32 %shl.i to i64
  %arrayidx5.i = getelementptr inbounds [65 x i8]* @.str29, i64 0, i64 %idxprom454.i
  %17 = load i8* %arrayidx5.i, align 1, !tbaa !1
  %incdec.ptr6.i = getelementptr inbounds [33 x i8]* %result, i64 0, i64 22
  store i8 %17, i8* %scevgep.i, align 1, !tbaa !1
  store i8 0, i8* %incdec.ptr6.i, align 2, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0), i32 %type) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %base64_16.exit, %hex_16.exit
  %ret.0 = phi i8* [ undef, %sw.default ], [ %0, %base64_16.exit ], [ %0, %hex_16.exit ], [ %src, %entry ]
  %len.0 = phi i64 [ undef, %sw.default ], [ 22, %base64_16.exit ], [ 32, %hex_16.exit ], [ 16, %entry ]
  %call5 = call %struct.sv* @Perl_newSVpv(i8* %ret.0, i64 %len.0) #4
  %call6 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call5) #4
  call void @llvm.lifetime.end(i64 33, i8* %0) #2
  ret %struct.sv* %call6
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Digest__MD5_md5(%struct.cv* nocapture %cv) #0 {
entry:
  %ctx = alloca %struct.MD5_CTX, align 4
  %len = alloca i64, align 8
  %digeststr = alloca [16 x i8], align 16
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
  %sub.ptr.div4131 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4131 to i32
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %5 = load i32* %any_i32, align 4, !tbaa !3
  %6 = bitcast %struct.MD5_CTX* %ctx to i8*
  call void @llvm.lifetime.start(i64 156, i8* %6) #2
  %A.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 1
  store i32 1732584193, i32* %A.i, align 4, !tbaa !3
  %B.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 2
  store i32 -271733879, i32* %B.i, align 4, !tbaa !3
  %C.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 3
  store i32 -1732584194, i32* %C.i, align 4, !tbaa !3
  %D.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 4
  store i32 271733878, i32* %D.i, align 4, !tbaa !3
  %bytes_high.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 6
  store i32 0, i32* %bytes_high.i, align 4, !tbaa !3
  %bytes_low.i = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 5
  store i32 0, i32* %bytes_low.i, align 4, !tbaa !3
  %7 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and = and i8 %7, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.then10, label %if.else27

if.then10:                                        ; preds = %if.then
  %sext133 = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext133, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %8 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and12 = and i32 %9, 524288
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %for.body.lr.ph, label %if.then14

if.then14:                                        ; preds = %if.then10
  %sv_any18 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %10 = load i8** %sv_any18, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %10 to %struct.sv**
  %11 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags19 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags19, align 4, !tbaa !3
  %and20 = and i32 %12, 4096
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then14
  %sv_any22 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any22, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %13, i64 48
  %14 = bitcast i8* %xmg_stash to %struct.hv**
  %15 = load %struct.hv** %14, align 8, !tbaa !0
  %sv_any23 = getelementptr inbounds %struct.hv* %15, i64 0, i32 0
  %16 = load %struct.xpvhv** %sv_any23, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %16, i64 0, i32 10
  %17 = load i8** %xhv_name, align 8, !tbaa !0
  %call = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #4
  %tobool24 = icmp eq i32 %call, 0
  br i1 %tobool24, label %if.then60, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.then14
  br label %if.then60

if.else27:                                        ; preds = %if.then
  %cmp28 = icmp sgt i32 %conv5, 1
  br i1 %cmp28, label %if.then30, label %for.end

if.then30:                                        ; preds = %if.else27
  %sext132 = shl i64 %add, 32
  %idxprom32 = ashr exact i64 %sext132, 32
  %arrayidx33 = getelementptr inbounds %struct.sv** %1, i64 %idxprom32
  %18 = load %struct.sv** %arrayidx33, align 8, !tbaa !0
  %sv_flags34 = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags34, align 4, !tbaa !3
  %and35 = and i32 %19, 537133056
  %cmp36 = icmp eq i32 %and35, 262144
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then30
  %sv_any41 = getelementptr inbounds %struct.sv* %18, i64 0, i32 0
  %20 = load i8** %sv_any41, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %20, i64 8
  %21 = bitcast i8* %xpv_cur to i64*
  %22 = load i64* %21, align 8, !tbaa !4
  store i64 %22, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %20 to i8**
  %23 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then30
  %call49 = call i8* @Perl_sv_2pvbyte(%struct.sv* %18, i64* %len) #4
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %24 = phi i64 [ %22, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %23, %cond.true ], [ %call49, %cond.false ]
  %cmp50 = icmp eq i64 %24, 11
  br i1 %cmp50, label %if.end58, label %for.cond.preheader

if.end58:                                         ; preds = %cond.end
  %call53 = call i32 @memcmp(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* %cond, i64 11) #4
  %not.tobool54 = icmp eq i32 %call53, 0
  br i1 %not.tobool54, label %if.then60, label %for.cond.preheader

if.then60:                                        ; preds = %if.end58, %land.lhs.true, %if.else
  %msg.0138 = phi i8* [ getelementptr inbounds ([32 x i8]* @.str11, i64 0, i64 0), %if.end58 ], [ getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), %land.lhs.true ]
  %cmp61 = icmp eq i32 %5, 0
  br i1 %cmp61, label %cond.end68, label %cond.false64

cond.false64:                                     ; preds = %if.then60
  %cmp65 = icmp eq i32 %5, 1
  %cond67 = select i1 %cmp65, i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0)
  br label %cond.end68

cond.end68:                                       ; preds = %if.then60, %cond.false64
  %cond69 = phi i8* [ %cond67, %cond.false64 ], [ getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), %if.then60 ]
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), i8* %cond69, i8* %msg.0138) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %cond.end68, %cond.end, %if.end58
  %cmp72139 = icmp sgt i32 %conv5, 0
  br i1 %cmp72139, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then10, %for.cond.preheader
  %sext143 = shl i64 %add, 32
  %25 = ashr exact i64 %sext143, 32
  br label %for.body

for.body:                                         ; preds = %cond.end97, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end97 ]
  %26 = add nsw i64 %indvars.iv, %25
  %27 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds %struct.sv** %27, i64 %26
  %28 = load %struct.sv** %arrayidx76, align 8, !tbaa !0
  %sv_flags77 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags77, align 4, !tbaa !3
  %and78 = and i32 %29, 537133056
  %cmp79 = icmp eq i32 %and78, 262144
  br i1 %cmp79, label %cond.true81, label %cond.false92

cond.true81:                                      ; preds = %for.body
  %sv_any85 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %30 = load i8** %sv_any85, align 8, !tbaa !0
  %xpv_cur86 = getelementptr inbounds i8* %30, i64 8
  %31 = bitcast i8* %xpv_cur86 to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  store i64 %32, i64* %len, align 8, !tbaa !4
  %xpv_pv91 = bitcast i8* %30 to i8**
  %33 = load i8** %xpv_pv91, align 8, !tbaa !0
  br label %cond.end97

cond.false92:                                     ; preds = %for.body
  %call96 = call i8* @Perl_sv_2pvbyte(%struct.sv* %28, i64* %len) #4
  %.pre142 = load i64* %len, align 8, !tbaa !4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false92, %cond.true81
  %34 = phi i64 [ %32, %cond.true81 ], [ %.pre142, %cond.false92 ]
  %cond98 = phi i8* [ %33, %cond.true81 ], [ %call96, %cond.false92 ]
  call fastcc void @MD5Update(%struct.MD5_CTX* %ctx, i8* %cond98, i64 %34) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.else27, %cond.end97, %for.cond.preheader
  %arraydecay = getelementptr inbounds [16 x i8]* %digeststr, i64 0, i64 0
  call fastcc void @MD5Final(i8* %arraydecay, %struct.MD5_CTX* %ctx) #5
  %call100 = call fastcc %struct.sv* @make_mortal_sv(i8* %arraydecay, i32 %5) #5
  %sext = shl i64 %add, 32
  %idxprom102 = ashr exact i64 %sext, 32
  %35 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds %struct.sv** %35, i64 %idxprom102
  store %struct.sv* %call100, %struct.sv** %arrayidx103, align 8, !tbaa !0
  %36 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr105 = getelementptr inbounds %struct.sv** %36, i64 %idxprom102
  store %struct.sv** %add.ptr105, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 156, i8* %6) #2
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @boot_Digest__MD5(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext54 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext54, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_new, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_clone, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str19, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_DESTROY, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_add, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str21, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_addfile, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_digest, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %sv_any = getelementptr inbounds %struct.cv* %call11, i64 0, i32 0
  %2 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %2, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 1, i32* %any_i32, align 4, !tbaa !3
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str23, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_digest, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %sv_any13 = getelementptr inbounds %struct.cv* %call12, i64 0, i32 0
  %3 = load %struct.xpvcv** %sv_any13, align 8, !tbaa !0
  %xcv_xsubany14 = getelementptr inbounds %struct.xpvcv* %3, i64 0, i32 11
  %any_i3215 = bitcast %union.any* %xcv_xsubany14 to i32*
  store i32 0, i32* %any_i3215, align 4, !tbaa !3
  %call16 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str24, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_digest, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %sv_any17 = getelementptr inbounds %struct.cv* %call16, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any17, align 8, !tbaa !0
  %xcv_xsubany18 = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i3219 = bitcast %union.any* %xcv_xsubany18 to i32*
  store i32 2, i32* %any_i3219, align 4, !tbaa !3
  %call20 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_md5, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %sv_any21 = getelementptr inbounds %struct.cv* %call20, i64 0, i32 0
  %5 = load %struct.xpvcv** %sv_any21, align 8, !tbaa !0
  %xcv_xsubany22 = getelementptr inbounds %struct.xpvcv* %5, i64 0, i32 11
  %any_i3223 = bitcast %union.any* %xcv_xsubany22 to i32*
  store i32 0, i32* %any_i3223, align 4, !tbaa !3
  %call24 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str26, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_md5, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %sv_any25 = getelementptr inbounds %struct.cv* %call24, i64 0, i32 0
  %6 = load %struct.xpvcv** %sv_any25, align 8, !tbaa !0
  %xcv_xsubany26 = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 11
  %any_i3227 = bitcast %union.any* %xcv_xsubany26 to i32*
  store i32 2, i32* %any_i3227, align 4, !tbaa !3
  %call28 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), void (%struct.cv*)* @XS_Digest__MD5_md5, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0)) #4
  %sv_any29 = getelementptr inbounds %struct.cv* %call28, i64 0, i32 0
  %7 = load %struct.xpvcv** %sv_any29, align 8, !tbaa !0
  %xcv_xsubany30 = getelementptr inbounds %struct.xpvcv* %7, i64 0, i32 11
  %any_i3231 = bitcast %union.any* %xcv_xsubany30 to i32*
  store i32 1, i32* %any_i3231, align 4, !tbaa !3
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr34 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv** %add.ptr34, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @MD5Transform(%struct.MD5_CTX* nocapture %ctx, i8* nocapture %buf, i64 %blocks) #0 {
entry:
  %A1 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 1
  %0 = load i32* %A1, align 4, !tbaa !3
  %B2 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 2
  %1 = load i32* %B2, align 4, !tbaa !3
  %C3 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 3
  %2 = load i32* %C3, align 4, !tbaa !3
  %D4 = getelementptr inbounds %struct.MD5_CTX* %ctx, i64 0, i32 4
  %3 = load i32* %D4, align 4, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %D.0 = phi i32 [ %3, %entry ], [ %add909, %do.body ]
  %C.0 = phi i32 [ %2, %entry ], [ %add908, %do.body ]
  %B.0 = phi i32 [ %1, %entry ], [ %add907, %do.body ]
  %A.0 = phi i32 [ %0, %entry ], [ %add906, %do.body ]
  %blocks.addr.0 = phi i64 [ %blocks, %entry ], [ %dec, %do.body ]
  %buf.addr.0 = phi i8* [ %buf, %entry ], [ %add.ptr387, %do.body ]
  %xor = xor i32 %C.0, %D.0
  %and = and i32 %B.0, %xor
  %xor5 = xor i32 %and, %D.0
  %4 = load i8* %buf.addr.0, align 1, !tbaa !1
  %conv = zext i8 %4 to i32
  %add.ptr = getelementptr inbounds i8* %buf.addr.0, i64 1
  %5 = load i8* %add.ptr, align 1, !tbaa !1
  %conv6 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %conv
  %add.ptr7 = getelementptr inbounds i8* %buf.addr.0, i64 2
  %6 = load i8* %add.ptr7, align 1, !tbaa !1
  %conv8 = zext i8 %6 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %or, %shl9
  %add.ptr11 = getelementptr inbounds i8* %buf.addr.0, i64 3
  %7 = load i8* %add.ptr11, align 1, !tbaa !1
  %conv12 = zext i8 %7 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %or14 = or i32 %or10, %shl13
  %add.ptr15 = getelementptr inbounds i8* %buf.addr.0, i64 4
  %add = add i32 %A.0, -680876936
  %add16 = add i32 %add, %xor5
  %add17 = add i32 %add16, %or14
  %shl18 = shl i32 %add17, 7
  %shr = lshr i32 %add17, 25
  %or19 = or i32 %shl18, %shr
  %add20 = add i32 %or19, %B.0
  %xor21 = xor i32 %B.0, %C.0
  %and22 = and i32 %add20, %xor21
  %xor23 = xor i32 %and22, %C.0
  %8 = load i8* %add.ptr15, align 1, !tbaa !1
  %conv24 = zext i8 %8 to i32
  %add.ptr25 = getelementptr inbounds i8* %buf.addr.0, i64 5
  %9 = load i8* %add.ptr25, align 1, !tbaa !1
  %conv26 = zext i8 %9 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %or28 = or i32 %shl27, %conv24
  %add.ptr29 = getelementptr inbounds i8* %buf.addr.0, i64 6
  %10 = load i8* %add.ptr29, align 1, !tbaa !1
  %conv30 = zext i8 %10 to i32
  %shl31 = shl nuw nsw i32 %conv30, 16
  %or32 = or i32 %or28, %shl31
  %add.ptr33 = getelementptr inbounds i8* %buf.addr.0, i64 7
  %11 = load i8* %add.ptr33, align 1, !tbaa !1
  %conv34 = zext i8 %11 to i32
  %shl35 = shl nuw i32 %conv34, 24
  %or36 = or i32 %or32, %shl35
  %add.ptr37 = getelementptr inbounds i8* %buf.addr.0, i64 8
  %add39 = add i32 %D.0, -389564586
  %add40 = add i32 %add39, %or36
  %add41 = add i32 %add40, %xor23
  %shl42 = shl i32 %add41, 12
  %shr43 = lshr i32 %add41, 20
  %or44 = or i32 %shl42, %shr43
  %add45 = add i32 %or44, %add20
  %xor46 = xor i32 %add20, %B.0
  %and47 = and i32 %add45, %xor46
  %xor48 = xor i32 %and47, %B.0
  %12 = load i8* %add.ptr37, align 1, !tbaa !1
  %conv49 = zext i8 %12 to i32
  %add.ptr50 = getelementptr inbounds i8* %buf.addr.0, i64 9
  %13 = load i8* %add.ptr50, align 1, !tbaa !1
  %conv51 = zext i8 %13 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  %or53 = or i32 %shl52, %conv49
  %add.ptr54 = getelementptr inbounds i8* %buf.addr.0, i64 10
  %14 = load i8* %add.ptr54, align 1, !tbaa !1
  %conv55 = zext i8 %14 to i32
  %shl56 = shl nuw nsw i32 %conv55, 16
  %or57 = or i32 %or53, %shl56
  %add.ptr58 = getelementptr inbounds i8* %buf.addr.0, i64 11
  %15 = load i8* %add.ptr58, align 1, !tbaa !1
  %conv59 = zext i8 %15 to i32
  %shl60 = shl nuw i32 %conv59, 24
  %or61 = or i32 %or57, %shl60
  %add.ptr62 = getelementptr inbounds i8* %buf.addr.0, i64 12
  %add64 = add i32 %C.0, 606105819
  %add65 = add i32 %add64, %or61
  %add66 = add i32 %add65, %xor48
  %shl67 = shl i32 %add66, 17
  %shr68 = lshr i32 %add66, 15
  %or69 = or i32 %shl67, %shr68
  %add70 = add i32 %or69, %add45
  %xor71 = xor i32 %add45, %add20
  %and72 = and i32 %add70, %xor71
  %xor73 = xor i32 %and72, %add20
  %16 = load i8* %add.ptr62, align 1, !tbaa !1
  %conv74 = zext i8 %16 to i32
  %add.ptr75 = getelementptr inbounds i8* %buf.addr.0, i64 13
  %17 = load i8* %add.ptr75, align 1, !tbaa !1
  %conv76 = zext i8 %17 to i32
  %shl77 = shl nuw nsw i32 %conv76, 8
  %or78 = or i32 %shl77, %conv74
  %add.ptr79 = getelementptr inbounds i8* %buf.addr.0, i64 14
  %18 = load i8* %add.ptr79, align 1, !tbaa !1
  %conv80 = zext i8 %18 to i32
  %shl81 = shl nuw nsw i32 %conv80, 16
  %or82 = or i32 %or78, %shl81
  %add.ptr83 = getelementptr inbounds i8* %buf.addr.0, i64 15
  %19 = load i8* %add.ptr83, align 1, !tbaa !1
  %conv84 = zext i8 %19 to i32
  %shl85 = shl nuw i32 %conv84, 24
  %or86 = or i32 %or82, %shl85
  %add.ptr87 = getelementptr inbounds i8* %buf.addr.0, i64 16
  %add89 = add i32 %B.0, -1044525330
  %add90 = add i32 %add89, %or86
  %add91 = add i32 %add90, %xor73
  %shl92 = shl i32 %add91, 22
  %shr93 = lshr i32 %add91, 10
  %or94 = or i32 %shl92, %shr93
  %add95 = add i32 %or94, %add70
  %xor96 = xor i32 %add70, %add45
  %and97 = and i32 %add95, %xor96
  %xor98 = xor i32 %and97, %add45
  %20 = load i8* %add.ptr87, align 1, !tbaa !1
  %conv99 = zext i8 %20 to i32
  %add.ptr100 = getelementptr inbounds i8* %buf.addr.0, i64 17
  %21 = load i8* %add.ptr100, align 1, !tbaa !1
  %conv101 = zext i8 %21 to i32
  %shl102 = shl nuw nsw i32 %conv101, 8
  %or103 = or i32 %shl102, %conv99
  %add.ptr104 = getelementptr inbounds i8* %buf.addr.0, i64 18
  %22 = load i8* %add.ptr104, align 1, !tbaa !1
  %conv105 = zext i8 %22 to i32
  %shl106 = shl nuw nsw i32 %conv105, 16
  %or107 = or i32 %or103, %shl106
  %add.ptr108 = getelementptr inbounds i8* %buf.addr.0, i64 19
  %23 = load i8* %add.ptr108, align 1, !tbaa !1
  %conv109 = zext i8 %23 to i32
  %shl110 = shl nuw i32 %conv109, 24
  %or111 = or i32 %or107, %shl110
  %add.ptr112 = getelementptr inbounds i8* %buf.addr.0, i64 20
  %add114 = add i32 %add20, -176418897
  %add115 = add i32 %add114, %or111
  %add116 = add i32 %add115, %xor98
  %shl117 = shl i32 %add116, 7
  %shr118 = lshr i32 %add116, 25
  %or119 = or i32 %shl117, %shr118
  %add120 = add i32 %or119, %add95
  %xor121 = xor i32 %add95, %add70
  %and122 = and i32 %add120, %xor121
  %xor123 = xor i32 %and122, %add70
  %24 = load i8* %add.ptr112, align 1, !tbaa !1
  %conv124 = zext i8 %24 to i32
  %add.ptr125 = getelementptr inbounds i8* %buf.addr.0, i64 21
  %25 = load i8* %add.ptr125, align 1, !tbaa !1
  %conv126 = zext i8 %25 to i32
  %shl127 = shl nuw nsw i32 %conv126, 8
  %or128 = or i32 %shl127, %conv124
  %add.ptr129 = getelementptr inbounds i8* %buf.addr.0, i64 22
  %26 = load i8* %add.ptr129, align 1, !tbaa !1
  %conv130 = zext i8 %26 to i32
  %shl131 = shl nuw nsw i32 %conv130, 16
  %or132 = or i32 %or128, %shl131
  %add.ptr133 = getelementptr inbounds i8* %buf.addr.0, i64 23
  %27 = load i8* %add.ptr133, align 1, !tbaa !1
  %conv134 = zext i8 %27 to i32
  %shl135 = shl nuw i32 %conv134, 24
  %or136 = or i32 %or132, %shl135
  %add.ptr137 = getelementptr inbounds i8* %buf.addr.0, i64 24
  %add139 = add i32 %add45, 1200080426
  %add140 = add i32 %add139, %or136
  %add141 = add i32 %add140, %xor123
  %shl142 = shl i32 %add141, 12
  %shr143 = lshr i32 %add141, 20
  %or144 = or i32 %shl142, %shr143
  %add145 = add i32 %or144, %add120
  %xor146 = xor i32 %add120, %add95
  %and147 = and i32 %add145, %xor146
  %xor148 = xor i32 %and147, %add95
  %28 = load i8* %add.ptr137, align 1, !tbaa !1
  %conv149 = zext i8 %28 to i32
  %add.ptr150 = getelementptr inbounds i8* %buf.addr.0, i64 25
  %29 = load i8* %add.ptr150, align 1, !tbaa !1
  %conv151 = zext i8 %29 to i32
  %shl152 = shl nuw nsw i32 %conv151, 8
  %or153 = or i32 %shl152, %conv149
  %add.ptr154 = getelementptr inbounds i8* %buf.addr.0, i64 26
  %30 = load i8* %add.ptr154, align 1, !tbaa !1
  %conv155 = zext i8 %30 to i32
  %shl156 = shl nuw nsw i32 %conv155, 16
  %or157 = or i32 %or153, %shl156
  %add.ptr158 = getelementptr inbounds i8* %buf.addr.0, i64 27
  %31 = load i8* %add.ptr158, align 1, !tbaa !1
  %conv159 = zext i8 %31 to i32
  %shl160 = shl nuw i32 %conv159, 24
  %or161 = or i32 %or157, %shl160
  %add.ptr162 = getelementptr inbounds i8* %buf.addr.0, i64 28
  %add164 = add i32 %add70, -1473231341
  %add165 = add i32 %add164, %or161
  %add166 = add i32 %add165, %xor148
  %shl167 = shl i32 %add166, 17
  %shr168 = lshr i32 %add166, 15
  %or169 = or i32 %shl167, %shr168
  %add170 = add i32 %or169, %add145
  %xor171 = xor i32 %add145, %add120
  %and172 = and i32 %add170, %xor171
  %xor173 = xor i32 %and172, %add120
  %32 = load i8* %add.ptr162, align 1, !tbaa !1
  %conv174 = zext i8 %32 to i32
  %add.ptr175 = getelementptr inbounds i8* %buf.addr.0, i64 29
  %33 = load i8* %add.ptr175, align 1, !tbaa !1
  %conv176 = zext i8 %33 to i32
  %shl177 = shl nuw nsw i32 %conv176, 8
  %or178 = or i32 %shl177, %conv174
  %add.ptr179 = getelementptr inbounds i8* %buf.addr.0, i64 30
  %34 = load i8* %add.ptr179, align 1, !tbaa !1
  %conv180 = zext i8 %34 to i32
  %shl181 = shl nuw nsw i32 %conv180, 16
  %or182 = or i32 %or178, %shl181
  %add.ptr183 = getelementptr inbounds i8* %buf.addr.0, i64 31
  %35 = load i8* %add.ptr183, align 1, !tbaa !1
  %conv184 = zext i8 %35 to i32
  %shl185 = shl nuw i32 %conv184, 24
  %or186 = or i32 %or182, %shl185
  %add.ptr187 = getelementptr inbounds i8* %buf.addr.0, i64 32
  %add189 = add i32 %add95, -45705983
  %add190 = add i32 %add189, %or186
  %add191 = add i32 %add190, %xor173
  %shl192 = shl i32 %add191, 22
  %shr193 = lshr i32 %add191, 10
  %or194 = or i32 %shl192, %shr193
  %add195 = add i32 %or194, %add170
  %xor196 = xor i32 %add170, %add145
  %and197 = and i32 %add195, %xor196
  %xor198 = xor i32 %and197, %add145
  %36 = load i8* %add.ptr187, align 1, !tbaa !1
  %conv199 = zext i8 %36 to i32
  %add.ptr200 = getelementptr inbounds i8* %buf.addr.0, i64 33
  %37 = load i8* %add.ptr200, align 1, !tbaa !1
  %conv201 = zext i8 %37 to i32
  %shl202 = shl nuw nsw i32 %conv201, 8
  %or203 = or i32 %shl202, %conv199
  %add.ptr204 = getelementptr inbounds i8* %buf.addr.0, i64 34
  %38 = load i8* %add.ptr204, align 1, !tbaa !1
  %conv205 = zext i8 %38 to i32
  %shl206 = shl nuw nsw i32 %conv205, 16
  %or207 = or i32 %or203, %shl206
  %add.ptr208 = getelementptr inbounds i8* %buf.addr.0, i64 35
  %39 = load i8* %add.ptr208, align 1, !tbaa !1
  %conv209 = zext i8 %39 to i32
  %shl210 = shl nuw i32 %conv209, 24
  %or211 = or i32 %or207, %shl210
  %add.ptr212 = getelementptr inbounds i8* %buf.addr.0, i64 36
  %add214 = add i32 %add120, 1770035416
  %add215 = add i32 %add214, %or211
  %add216 = add i32 %add215, %xor198
  %shl217 = shl i32 %add216, 7
  %shr218 = lshr i32 %add216, 25
  %or219 = or i32 %shl217, %shr218
  %add220 = add i32 %or219, %add195
  %xor221 = xor i32 %add195, %add170
  %and222 = and i32 %add220, %xor221
  %xor223 = xor i32 %and222, %add170
  %40 = load i8* %add.ptr212, align 1, !tbaa !1
  %conv224 = zext i8 %40 to i32
  %add.ptr225 = getelementptr inbounds i8* %buf.addr.0, i64 37
  %41 = load i8* %add.ptr225, align 1, !tbaa !1
  %conv226 = zext i8 %41 to i32
  %shl227 = shl nuw nsw i32 %conv226, 8
  %or228 = or i32 %shl227, %conv224
  %add.ptr229 = getelementptr inbounds i8* %buf.addr.0, i64 38
  %42 = load i8* %add.ptr229, align 1, !tbaa !1
  %conv230 = zext i8 %42 to i32
  %shl231 = shl nuw nsw i32 %conv230, 16
  %or232 = or i32 %or228, %shl231
  %add.ptr233 = getelementptr inbounds i8* %buf.addr.0, i64 39
  %43 = load i8* %add.ptr233, align 1, !tbaa !1
  %conv234 = zext i8 %43 to i32
  %shl235 = shl nuw i32 %conv234, 24
  %or236 = or i32 %or232, %shl235
  %add.ptr237 = getelementptr inbounds i8* %buf.addr.0, i64 40
  %add239 = add i32 %add145, -1958414417
  %add240 = add i32 %add239, %or236
  %add241 = add i32 %add240, %xor223
  %shl242 = shl i32 %add241, 12
  %shr243 = lshr i32 %add241, 20
  %or244 = or i32 %shl242, %shr243
  %add245 = add i32 %or244, %add220
  %xor246 = xor i32 %add220, %add195
  %and247 = and i32 %add245, %xor246
  %xor248 = xor i32 %and247, %add195
  %44 = load i8* %add.ptr237, align 1, !tbaa !1
  %conv249 = zext i8 %44 to i32
  %add.ptr250 = getelementptr inbounds i8* %buf.addr.0, i64 41
  %45 = load i8* %add.ptr250, align 1, !tbaa !1
  %conv251 = zext i8 %45 to i32
  %shl252 = shl nuw nsw i32 %conv251, 8
  %or253 = or i32 %shl252, %conv249
  %add.ptr254 = getelementptr inbounds i8* %buf.addr.0, i64 42
  %46 = load i8* %add.ptr254, align 1, !tbaa !1
  %conv255 = zext i8 %46 to i32
  %shl256 = shl nuw nsw i32 %conv255, 16
  %or257 = or i32 %or253, %shl256
  %add.ptr258 = getelementptr inbounds i8* %buf.addr.0, i64 43
  %47 = load i8* %add.ptr258, align 1, !tbaa !1
  %conv259 = zext i8 %47 to i32
  %shl260 = shl nuw i32 %conv259, 24
  %or261 = or i32 %or257, %shl260
  %add.ptr262 = getelementptr inbounds i8* %buf.addr.0, i64 44
  %add264 = add i32 %or261, -42063
  %add265 = add i32 %add264, %add170
  %add266 = add i32 %add265, %xor248
  %shl267 = shl i32 %add266, 17
  %shr268 = lshr i32 %add266, 15
  %or269 = or i32 %shl267, %shr268
  %add270 = add i32 %or269, %add245
  %xor271 = xor i32 %add245, %add220
  %and272 = and i32 %add270, %xor271
  %xor273 = xor i32 %and272, %add220
  %48 = load i8* %add.ptr262, align 1, !tbaa !1
  %conv274 = zext i8 %48 to i32
  %add.ptr275 = getelementptr inbounds i8* %buf.addr.0, i64 45
  %49 = load i8* %add.ptr275, align 1, !tbaa !1
  %conv276 = zext i8 %49 to i32
  %shl277 = shl nuw nsw i32 %conv276, 8
  %or278 = or i32 %shl277, %conv274
  %add.ptr279 = getelementptr inbounds i8* %buf.addr.0, i64 46
  %50 = load i8* %add.ptr279, align 1, !tbaa !1
  %conv280 = zext i8 %50 to i32
  %shl281 = shl nuw nsw i32 %conv280, 16
  %or282 = or i32 %or278, %shl281
  %add.ptr283 = getelementptr inbounds i8* %buf.addr.0, i64 47
  %51 = load i8* %add.ptr283, align 1, !tbaa !1
  %conv284 = zext i8 %51 to i32
  %shl285 = shl nuw i32 %conv284, 24
  %or286 = or i32 %or282, %shl285
  %add.ptr287 = getelementptr inbounds i8* %buf.addr.0, i64 48
  %add289 = add i32 %or286, -1990404162
  %add290 = add i32 %add289, %add195
  %add291 = add i32 %add290, %xor273
  %shl292 = shl i32 %add291, 22
  %shr293 = lshr i32 %add291, 10
  %or294 = or i32 %shl292, %shr293
  %add295 = add i32 %or294, %add270
  %xor296 = xor i32 %add270, %add245
  %and297 = and i32 %add295, %xor296
  %xor298 = xor i32 %and297, %add245
  %52 = load i8* %add.ptr287, align 1, !tbaa !1
  %conv299 = zext i8 %52 to i32
  %add.ptr300 = getelementptr inbounds i8* %buf.addr.0, i64 49
  %53 = load i8* %add.ptr300, align 1, !tbaa !1
  %conv301 = zext i8 %53 to i32
  %shl302 = shl nuw nsw i32 %conv301, 8
  %or303 = or i32 %shl302, %conv299
  %add.ptr304 = getelementptr inbounds i8* %buf.addr.0, i64 50
  %54 = load i8* %add.ptr304, align 1, !tbaa !1
  %conv305 = zext i8 %54 to i32
  %shl306 = shl nuw nsw i32 %conv305, 16
  %or307 = or i32 %or303, %shl306
  %add.ptr308 = getelementptr inbounds i8* %buf.addr.0, i64 51
  %55 = load i8* %add.ptr308, align 1, !tbaa !1
  %conv309 = zext i8 %55 to i32
  %shl310 = shl nuw i32 %conv309, 24
  %or311 = or i32 %or307, %shl310
  %add.ptr312 = getelementptr inbounds i8* %buf.addr.0, i64 52
  %add314 = add i32 %or311, 1804603682
  %add315 = add i32 %add314, %add220
  %add316 = add i32 %add315, %xor298
  %shl317 = shl i32 %add316, 7
  %shr318 = lshr i32 %add316, 25
  %or319 = or i32 %shl317, %shr318
  %add320 = add i32 %or319, %add295
  %xor321 = xor i32 %add295, %add270
  %and322 = and i32 %add320, %xor321
  %xor323 = xor i32 %and322, %add270
  %56 = load i8* %add.ptr312, align 1, !tbaa !1
  %conv324 = zext i8 %56 to i32
  %add.ptr325 = getelementptr inbounds i8* %buf.addr.0, i64 53
  %57 = load i8* %add.ptr325, align 1, !tbaa !1
  %conv326 = zext i8 %57 to i32
  %shl327 = shl nuw nsw i32 %conv326, 8
  %or328 = or i32 %shl327, %conv324
  %add.ptr329 = getelementptr inbounds i8* %buf.addr.0, i64 54
  %58 = load i8* %add.ptr329, align 1, !tbaa !1
  %conv330 = zext i8 %58 to i32
  %shl331 = shl nuw nsw i32 %conv330, 16
  %or332 = or i32 %or328, %shl331
  %add.ptr333 = getelementptr inbounds i8* %buf.addr.0, i64 55
  %59 = load i8* %add.ptr333, align 1, !tbaa !1
  %conv334 = zext i8 %59 to i32
  %shl335 = shl nuw i32 %conv334, 24
  %or336 = or i32 %or332, %shl335
  %add.ptr337 = getelementptr inbounds i8* %buf.addr.0, i64 56
  %add339 = add i32 %or336, -40341101
  %add340 = add i32 %add339, %add245
  %add341 = add i32 %add340, %xor323
  %shl342 = shl i32 %add341, 12
  %shr343 = lshr i32 %add341, 20
  %or344 = or i32 %shl342, %shr343
  %add345 = add i32 %or344, %add320
  %xor346 = xor i32 %add320, %add295
  %and347 = and i32 %add345, %xor346
  %xor348 = xor i32 %and347, %add295
  %60 = load i8* %add.ptr337, align 1, !tbaa !1
  %conv349 = zext i8 %60 to i32
  %add.ptr350 = getelementptr inbounds i8* %buf.addr.0, i64 57
  %61 = load i8* %add.ptr350, align 1, !tbaa !1
  %conv351 = zext i8 %61 to i32
  %shl352 = shl nuw nsw i32 %conv351, 8
  %or353 = or i32 %shl352, %conv349
  %add.ptr354 = getelementptr inbounds i8* %buf.addr.0, i64 58
  %62 = load i8* %add.ptr354, align 1, !tbaa !1
  %conv355 = zext i8 %62 to i32
  %shl356 = shl nuw nsw i32 %conv355, 16
  %or357 = or i32 %or353, %shl356
  %add.ptr358 = getelementptr inbounds i8* %buf.addr.0, i64 59
  %63 = load i8* %add.ptr358, align 1, !tbaa !1
  %conv359 = zext i8 %63 to i32
  %shl360 = shl nuw i32 %conv359, 24
  %or361 = or i32 %or357, %shl360
  %add.ptr362 = getelementptr inbounds i8* %buf.addr.0, i64 60
  %add364 = add i32 %or361, -1502002290
  %add365 = add i32 %add364, %add270
  %add366 = add i32 %add365, %xor348
  %shl367 = shl i32 %add366, 17
  %shr368 = lshr i32 %add366, 15
  %or369 = or i32 %shl367, %shr368
  %add370 = add i32 %or369, %add345
  %xor371 = xor i32 %add345, %add320
  %and372 = and i32 %add370, %xor371
  %xor373 = xor i32 %and372, %add320
  %64 = load i8* %add.ptr362, align 1, !tbaa !1
  %conv374 = zext i8 %64 to i32
  %add.ptr375 = getelementptr inbounds i8* %buf.addr.0, i64 61
  %65 = load i8* %add.ptr375, align 1, !tbaa !1
  %conv376 = zext i8 %65 to i32
  %shl377 = shl nuw nsw i32 %conv376, 8
  %or378 = or i32 %shl377, %conv374
  %add.ptr379 = getelementptr inbounds i8* %buf.addr.0, i64 62
  %66 = load i8* %add.ptr379, align 1, !tbaa !1
  %conv380 = zext i8 %66 to i32
  %shl381 = shl nuw nsw i32 %conv380, 16
  %or382 = or i32 %or378, %shl381
  %add.ptr383 = getelementptr inbounds i8* %buf.addr.0, i64 63
  %67 = load i8* %add.ptr383, align 1, !tbaa !1
  %conv384 = zext i8 %67 to i32
  %shl385 = shl nuw i32 %conv384, 24
  %or386 = or i32 %or382, %shl385
  %add.ptr387 = getelementptr inbounds i8* %buf.addr.0, i64 64
  %add389 = add i32 %or386, 1236535329
  %add390 = add i32 %add389, %add295
  %add391 = add i32 %add390, %xor373
  %shl392 = shl i32 %add391, 22
  %shr393 = lshr i32 %add391, 10
  %or394 = or i32 %shl392, %shr393
  %add395 = add i32 %or394, %add370
  %xor396 = xor i32 %add395, %add370
  %and397 = and i32 %xor396, %add345
  %xor398 = xor i32 %and397, %add370
  %add399 = add i32 %or36, -165796510
  %add400 = add i32 %add399, %add320
  %add401 = add i32 %add400, %xor398
  %shl402 = shl i32 %add401, 5
  %shr403 = lshr i32 %add401, 27
  %or404 = or i32 %shl402, %shr403
  %add405 = add i32 %or404, %add395
  %xor406 = xor i32 %add405, %add395
  %and407 = and i32 %xor406, %add370
  %xor408 = xor i32 %and407, %add395
  %add410 = add i32 %or161, -1069501632
  %add411 = add i32 %add410, %add345
  %add412 = add i32 %add411, %xor408
  %shl413 = shl i32 %add412, 9
  %shr414 = lshr i32 %add412, 23
  %or415 = or i32 %shl413, %shr414
  %add416 = add i32 %or415, %add405
  %xor417 = xor i32 %add416, %add405
  %and418 = and i32 %xor417, %add395
  %xor419 = xor i32 %and418, %add405
  %add421 = add i32 %or286, 643717713
  %add422 = add i32 %add421, %add370
  %add423 = add i32 %add422, %xor419
  %shl424 = shl i32 %add423, 14
  %shr425 = lshr i32 %add423, 18
  %or426 = or i32 %shl424, %shr425
  %add427 = add i32 %or426, %add416
  %xor428 = xor i32 %add427, %add416
  %and429 = and i32 %xor428, %add405
  %xor430 = xor i32 %and429, %add416
  %add432 = add i32 %or14, -373897302
  %add433 = add i32 %add432, %add395
  %add434 = add i32 %add433, %xor430
  %shl435 = shl i32 %add434, 20
  %shr436 = lshr i32 %add434, 12
  %or437 = or i32 %shl435, %shr436
  %add438 = add i32 %or437, %add427
  %xor439 = xor i32 %add438, %add427
  %and440 = and i32 %xor439, %add416
  %xor441 = xor i32 %and440, %add427
  %add443 = add i32 %or136, -701558691
  %add444 = add i32 %add443, %add405
  %add445 = add i32 %add444, %xor441
  %shl446 = shl i32 %add445, 5
  %shr447 = lshr i32 %add445, 27
  %or448 = or i32 %shl446, %shr447
  %add449 = add i32 %or448, %add438
  %xor450 = xor i32 %add449, %add438
  %and451 = and i32 %xor450, %add427
  %xor452 = xor i32 %and451, %add438
  %add454 = add i32 %or261, 38016083
  %add455 = add i32 %add454, %add416
  %add456 = add i32 %add455, %xor452
  %shl457 = shl i32 %add456, 9
  %shr458 = lshr i32 %add456, 23
  %or459 = or i32 %shl457, %shr458
  %add460 = add i32 %or459, %add449
  %xor461 = xor i32 %add460, %add449
  %and462 = and i32 %xor461, %add438
  %xor463 = xor i32 %and462, %add449
  %add465 = add i32 %or386, -660478335
  %add466 = add i32 %add465, %add427
  %add467 = add i32 %add466, %xor463
  %shl468 = shl i32 %add467, 14
  %shr469 = lshr i32 %add467, 18
  %or470 = or i32 %shl468, %shr469
  %add471 = add i32 %or470, %add460
  %xor472 = xor i32 %add471, %add460
  %and473 = and i32 %xor472, %add449
  %xor474 = xor i32 %and473, %add460
  %add476 = add i32 %or111, -405537848
  %add477 = add i32 %add476, %add438
  %add478 = add i32 %add477, %xor474
  %shl479 = shl i32 %add478, 20
  %shr480 = lshr i32 %add478, 12
  %or481 = or i32 %shl479, %shr480
  %add482 = add i32 %or481, %add471
  %xor483 = xor i32 %add482, %add471
  %and484 = and i32 %xor483, %add460
  %xor485 = xor i32 %and484, %add471
  %add487 = add i32 %or236, 568446438
  %add488 = add i32 %add487, %add449
  %add489 = add i32 %add488, %xor485
  %shl490 = shl i32 %add489, 5
  %shr491 = lshr i32 %add489, 27
  %or492 = or i32 %shl490, %shr491
  %add493 = add i32 %or492, %add482
  %xor494 = xor i32 %add493, %add482
  %and495 = and i32 %xor494, %add471
  %xor496 = xor i32 %and495, %add482
  %add498 = add i32 %or361, -1019803690
  %add499 = add i32 %add498, %add460
  %add500 = add i32 %add499, %xor496
  %shl501 = shl i32 %add500, 9
  %shr502 = lshr i32 %add500, 23
  %or503 = or i32 %shl501, %shr502
  %add504 = add i32 %or503, %add493
  %xor505 = xor i32 %add504, %add493
  %and506 = and i32 %xor505, %add482
  %xor507 = xor i32 %and506, %add493
  %add509 = add i32 %or86, -187363961
  %add510 = add i32 %add509, %add471
  %add511 = add i32 %add510, %xor507
  %shl512 = shl i32 %add511, 14
  %shr513 = lshr i32 %add511, 18
  %or514 = or i32 %shl512, %shr513
  %add515 = add i32 %or514, %add504
  %xor516 = xor i32 %add515, %add504
  %and517 = and i32 %xor516, %add493
  %xor518 = xor i32 %and517, %add504
  %add520 = add i32 %or211, 1163531501
  %add521 = add i32 %add520, %add482
  %add522 = add i32 %add521, %xor518
  %shl523 = shl i32 %add522, 20
  %shr524 = lshr i32 %add522, 12
  %or525 = or i32 %shl523, %shr524
  %add526 = add i32 %or525, %add515
  %xor527 = xor i32 %add526, %add515
  %and528 = and i32 %xor527, %add504
  %xor529 = xor i32 %and528, %add515
  %add531 = add i32 %or336, -1444681467
  %add532 = add i32 %add531, %add493
  %add533 = add i32 %add532, %xor529
  %shl534 = shl i32 %add533, 5
  %shr535 = lshr i32 %add533, 27
  %or536 = or i32 %shl534, %shr535
  %add537 = add i32 %or536, %add526
  %xor538 = xor i32 %add537, %add526
  %and539 = and i32 %xor538, %add515
  %xor540 = xor i32 %and539, %add526
  %add542 = add i32 %or61, -51403784
  %add543 = add i32 %add542, %add504
  %add544 = add i32 %add543, %xor540
  %shl545 = shl i32 %add544, 9
  %shr546 = lshr i32 %add544, 23
  %or547 = or i32 %shl545, %shr546
  %add548 = add i32 %or547, %add537
  %xor549 = xor i32 %add548, %add537
  %and550 = and i32 %xor549, %add526
  %xor551 = xor i32 %and550, %add537
  %add553 = add i32 %or186, 1735328473
  %add554 = add i32 %add553, %add515
  %add555 = add i32 %add554, %xor551
  %shl556 = shl i32 %add555, 14
  %shr557 = lshr i32 %add555, 18
  %or558 = or i32 %shl556, %shr557
  %add559 = add i32 %or558, %add548
  %xor560 = xor i32 %add559, %add548
  %and561 = and i32 %xor560, %add537
  %xor562 = xor i32 %and561, %add548
  %add564 = add i32 %or311, -1926607734
  %add565 = add i32 %add564, %add526
  %add566 = add i32 %add565, %xor562
  %shl567 = shl i32 %add566, 20
  %shr568 = lshr i32 %add566, 12
  %or569 = or i32 %shl567, %shr568
  %add570 = add i32 %or569, %add559
  %xor572 = xor i32 %xor560, %add570
  %add574 = add i32 %or136, -378558
  %add575 = add i32 %add574, %add537
  %add576 = add i32 %add575, %xor572
  %shl577 = shl i32 %add576, 4
  %shr578 = lshr i32 %add576, 28
  %or579 = or i32 %shl577, %shr578
  %add580 = add i32 %or579, %add570
  %xor581 = xor i32 %add570, %add559
  %xor582 = xor i32 %xor581, %add580
  %add584 = add i32 %or211, -2022574463
  %add585 = add i32 %add584, %add548
  %add586 = add i32 %add585, %xor582
  %shl587 = shl i32 %add586, 11
  %shr588 = lshr i32 %add586, 21
  %or589 = or i32 %shl587, %shr588
  %add590 = add i32 %or589, %add580
  %xor591 = xor i32 %add580, %add570
  %xor592 = xor i32 %xor591, %add590
  %add594 = add i32 %or286, 1839030562
  %add595 = add i32 %add594, %add559
  %add596 = add i32 %add595, %xor592
  %shl597 = shl i32 %add596, 16
  %shr598 = lshr i32 %add596, 16
  %or599 = or i32 %shl597, %shr598
  %add600 = add i32 %or599, %add590
  %xor601 = xor i32 %add590, %add580
  %xor602 = xor i32 %xor601, %add600
  %add604 = add i32 %or361, -35309556
  %add605 = add i32 %add604, %add570
  %add606 = add i32 %add605, %xor602
  %shl607 = shl i32 %add606, 23
  %shr608 = lshr i32 %add606, 9
  %or609 = or i32 %shl607, %shr608
  %add610 = add i32 %or609, %add600
  %xor611 = xor i32 %add600, %add590
  %xor612 = xor i32 %xor611, %add610
  %add614 = add i32 %or36, -1530992060
  %add615 = add i32 %add614, %add580
  %add616 = add i32 %add615, %xor612
  %shl617 = shl i32 %add616, 4
  %shr618 = lshr i32 %add616, 28
  %or619 = or i32 %shl617, %shr618
  %add620 = add i32 %or619, %add610
  %xor621 = xor i32 %add610, %add600
  %xor622 = xor i32 %xor621, %add620
  %add624 = add i32 %or111, 1272893353
  %add625 = add i32 %add624, %add590
  %add626 = add i32 %add625, %xor622
  %shl627 = shl i32 %add626, 11
  %shr628 = lshr i32 %add626, 21
  %or629 = or i32 %shl627, %shr628
  %add630 = add i32 %or629, %add620
  %xor631 = xor i32 %add620, %add610
  %xor632 = xor i32 %xor631, %add630
  %add634 = add i32 %or186, -155497632
  %add635 = add i32 %add634, %add600
  %add636 = add i32 %add635, %xor632
  %shl637 = shl i32 %add636, 16
  %shr638 = lshr i32 %add636, 16
  %or639 = or i32 %shl637, %shr638
  %add640 = add i32 %or639, %add630
  %xor641 = xor i32 %add630, %add620
  %xor642 = xor i32 %xor641, %add640
  %add644 = add i32 %or261, -1094730640
  %add645 = add i32 %add644, %add610
  %add646 = add i32 %add645, %xor642
  %shl647 = shl i32 %add646, 23
  %shr648 = lshr i32 %add646, 9
  %or649 = or i32 %shl647, %shr648
  %add650 = add i32 %or649, %add640
  %xor651 = xor i32 %add640, %add630
  %xor652 = xor i32 %xor651, %add650
  %add654 = add i32 %or336, 681279174
  %add655 = add i32 %add654, %add620
  %add656 = add i32 %add655, %xor652
  %shl657 = shl i32 %add656, 4
  %shr658 = lshr i32 %add656, 28
  %or659 = or i32 %shl657, %shr658
  %add660 = add i32 %or659, %add650
  %xor661 = xor i32 %add650, %add640
  %xor662 = xor i32 %xor661, %add660
  %add664 = add i32 %or14, -358537222
  %add665 = add i32 %add664, %add630
  %add666 = add i32 %add665, %xor662
  %shl667 = shl i32 %add666, 11
  %shr668 = lshr i32 %add666, 21
  %or669 = or i32 %shl667, %shr668
  %add670 = add i32 %or669, %add660
  %xor671 = xor i32 %add660, %add650
  %xor672 = xor i32 %xor671, %add670
  %add674 = add i32 %or86, -722521979
  %add675 = add i32 %add674, %add640
  %add676 = add i32 %add675, %xor672
  %shl677 = shl i32 %add676, 16
  %shr678 = lshr i32 %add676, 16
  %or679 = or i32 %shl677, %shr678
  %add680 = add i32 %or679, %add670
  %xor681 = xor i32 %add670, %add660
  %xor682 = xor i32 %xor681, %add680
  %add684 = add i32 %or161, 76029189
  %add685 = add i32 %add684, %add650
  %add686 = add i32 %add685, %xor682
  %shl687 = shl i32 %add686, 23
  %shr688 = lshr i32 %add686, 9
  %or689 = or i32 %shl687, %shr688
  %add690 = add i32 %or689, %add680
  %xor691 = xor i32 %add680, %add670
  %xor692 = xor i32 %xor691, %add690
  %add694 = add i32 %or236, -640364487
  %add695 = add i32 %add694, %add660
  %add696 = add i32 %add695, %xor692
  %shl697 = shl i32 %add696, 4
  %shr698 = lshr i32 %add696, 28
  %or699 = or i32 %shl697, %shr698
  %add700 = add i32 %or699, %add690
  %xor701 = xor i32 %add690, %add680
  %xor702 = xor i32 %xor701, %add700
  %add704 = add i32 %or311, -421815835
  %add705 = add i32 %add704, %add670
  %add706 = add i32 %add705, %xor702
  %shl707 = shl i32 %add706, 11
  %shr708 = lshr i32 %add706, 21
  %or709 = or i32 %shl707, %shr708
  %add710 = add i32 %or709, %add700
  %xor711 = xor i32 %add700, %add690
  %xor712 = xor i32 %xor711, %add710
  %add714 = add i32 %or386, 530742520
  %add715 = add i32 %add714, %add680
  %add716 = add i32 %add715, %xor712
  %shl717 = shl i32 %add716, 16
  %shr718 = lshr i32 %add716, 16
  %or719 = or i32 %shl717, %shr718
  %add720 = add i32 %or719, %add710
  %xor721 = xor i32 %add710, %add700
  %xor722 = xor i32 %xor721, %add720
  %add724 = add i32 %or61, -995338651
  %add725 = add i32 %add724, %add690
  %add726 = add i32 %add725, %xor722
  %shl727 = shl i32 %add726, 23
  %shr728 = lshr i32 %add726, 9
  %or729 = or i32 %shl727, %shr728
  %add730 = add i32 %or729, %add720
  %neg = xor i32 %add710, -1
  %or731 = or i32 %add730, %neg
  %xor732 = xor i32 %or731, %add720
  %add734 = add i32 %or14, -198630844
  %add735 = add i32 %add734, %add700
  %add736 = add i32 %add735, %xor732
  %shl737 = shl i32 %add736, 6
  %shr738 = lshr i32 %add736, 26
  %or739 = or i32 %shl737, %shr738
  %add740 = add i32 %or739, %add730
  %neg741 = xor i32 %add720, -1
  %or742 = or i32 %add740, %neg741
  %xor743 = xor i32 %or742, %add730
  %add745 = add i32 %or186, 1126891415
  %add746 = add i32 %add745, %add710
  %add747 = add i32 %add746, %xor743
  %shl748 = shl i32 %add747, 10
  %shr749 = lshr i32 %add747, 22
  %or750 = or i32 %shl748, %shr749
  %add751 = add i32 %or750, %add740
  %neg752 = xor i32 %add730, -1
  %or753 = or i32 %add751, %neg752
  %xor754 = xor i32 %or753, %add740
  %add756 = add i32 %or361, -1416354905
  %add757 = add i32 %add756, %add720
  %add758 = add i32 %add757, %xor754
  %shl759 = shl i32 %add758, 15
  %shr760 = lshr i32 %add758, 17
  %or761 = or i32 %shl759, %shr760
  %add762 = add i32 %or761, %add751
  %neg763 = xor i32 %add740, -1
  %or764 = or i32 %add762, %neg763
  %xor765 = xor i32 %or764, %add751
  %add767 = add i32 %or136, -57434055
  %add768 = add i32 %add767, %add730
  %add769 = add i32 %add768, %xor765
  %shl770 = shl i32 %add769, 21
  %shr771 = lshr i32 %add769, 11
  %or772 = or i32 %shl770, %shr771
  %add773 = add i32 %or772, %add762
  %neg774 = xor i32 %add751, -1
  %or775 = or i32 %add773, %neg774
  %xor776 = xor i32 %or775, %add762
  %add778 = add i32 %or311, 1700485571
  %add779 = add i32 %add778, %add740
  %add780 = add i32 %add779, %xor776
  %shl781 = shl i32 %add780, 6
  %shr782 = lshr i32 %add780, 26
  %or783 = or i32 %shl781, %shr782
  %add784 = add i32 %or783, %add773
  %neg785 = xor i32 %add762, -1
  %or786 = or i32 %add784, %neg785
  %xor787 = xor i32 %or786, %add773
  %add789 = add i32 %or86, -1894986606
  %add790 = add i32 %add789, %add751
  %add791 = add i32 %add790, %xor787
  %shl792 = shl i32 %add791, 10
  %shr793 = lshr i32 %add791, 22
  %or794 = or i32 %shl792, %shr793
  %add795 = add i32 %or794, %add784
  %neg796 = xor i32 %add773, -1
  %or797 = or i32 %add795, %neg796
  %xor798 = xor i32 %or797, %add784
  %add800 = add i32 %or261, -1051523
  %add801 = add i32 %add800, %add762
  %add802 = add i32 %add801, %xor798
  %shl803 = shl i32 %add802, 15
  %shr804 = lshr i32 %add802, 17
  %or805 = or i32 %shl803, %shr804
  %add806 = add i32 %or805, %add795
  %neg807 = xor i32 %add784, -1
  %or808 = or i32 %add806, %neg807
  %xor809 = xor i32 %or808, %add795
  %add811 = add i32 %or36, -2054922799
  %add812 = add i32 %add811, %add773
  %add813 = add i32 %add812, %xor809
  %shl814 = shl i32 %add813, 21
  %shr815 = lshr i32 %add813, 11
  %or816 = or i32 %shl814, %shr815
  %add817 = add i32 %or816, %add806
  %neg818 = xor i32 %add795, -1
  %or819 = or i32 %add817, %neg818
  %xor820 = xor i32 %or819, %add806
  %add822 = add i32 %or211, 1873313359
  %add823 = add i32 %add822, %add784
  %add824 = add i32 %add823, %xor820
  %shl825 = shl i32 %add824, 6
  %shr826 = lshr i32 %add824, 26
  %or827 = or i32 %shl825, %shr826
  %add828 = add i32 %or827, %add817
  %neg829 = xor i32 %add806, -1
  %or830 = or i32 %add828, %neg829
  %xor831 = xor i32 %or830, %add817
  %add833 = add i32 %or386, -30611744
  %add834 = add i32 %add833, %add795
  %add835 = add i32 %add834, %xor831
  %shl836 = shl i32 %add835, 10
  %shr837 = lshr i32 %add835, 22
  %or838 = or i32 %shl836, %shr837
  %add839 = add i32 %or838, %add828
  %neg840 = xor i32 %add817, -1
  %or841 = or i32 %add839, %neg840
  %xor842 = xor i32 %or841, %add828
  %add844 = add i32 %or161, -1560198380
  %add845 = add i32 %add844, %add806
  %add846 = add i32 %add845, %xor842
  %shl847 = shl i32 %add846, 15
  %shr848 = lshr i32 %add846, 17
  %or849 = or i32 %shl847, %shr848
  %add850 = add i32 %or849, %add839
  %neg851 = xor i32 %add828, -1
  %or852 = or i32 %add850, %neg851
  %xor853 = xor i32 %or852, %add839
  %add855 = add i32 %or336, 1309151649
  %add856 = add i32 %add855, %add817
  %add857 = add i32 %add856, %xor853
  %shl858 = shl i32 %add857, 21
  %shr859 = lshr i32 %add857, 11
  %or860 = or i32 %shl858, %shr859
  %add861 = add i32 %or860, %add850
  %neg862 = xor i32 %add839, -1
  %or863 = or i32 %add861, %neg862
  %xor864 = xor i32 %or863, %add850
  %add866 = add i32 %or111, -145523070
  %add867 = add i32 %add866, %add828
  %add868 = add i32 %add867, %xor864
  %shl869 = shl i32 %add868, 6
  %shr870 = lshr i32 %add868, 26
  %or871 = or i32 %shl869, %shr870
  %add872 = add i32 %or871, %add861
  %neg873 = xor i32 %add850, -1
  %or874 = or i32 %add872, %neg873
  %xor875 = xor i32 %or874, %add861
  %add877 = add i32 %or286, -1120210379
  %add878 = add i32 %add877, %add839
  %add879 = add i32 %add878, %xor875
  %shl880 = shl i32 %add879, 10
  %shr881 = lshr i32 %add879, 22
  %or882 = or i32 %shl880, %shr881
  %add883 = add i32 %or882, %add872
  %neg884 = xor i32 %add861, -1
  %or885 = or i32 %add883, %neg884
  %xor886 = xor i32 %or885, %add872
  %add888 = add i32 %or61, 718787259
  %add889 = add i32 %add888, %add850
  %add890 = add i32 %add889, %xor886
  %shl891 = shl i32 %add890, 15
  %shr892 = lshr i32 %add890, 17
  %or893 = or i32 %shl891, %shr892
  %add894 = add i32 %or893, %add883
  %neg895 = xor i32 %add872, -1
  %or896 = or i32 %add894, %neg895
  %xor897 = xor i32 %or896, %add883
  %add899 = add i32 %or236, -343485551
  %add900 = add i32 %add899, %add861
  %add901 = add i32 %add900, %xor897
  %shl902 = shl i32 %add901, 21
  %shr903 = lshr i32 %add901, 11
  %or904 = or i32 %shl902, %shr903
  %add906 = add i32 %add872, %A.0
  %add905 = add i32 %add894, %B.0
  %add907 = add i32 %add905, %or904
  %add908 = add i32 %add894, %C.0
  %add909 = add i32 %add883, %D.0
  %dec = add i64 %blocks.addr.0, -1
  %tobool = icmp eq i64 %dec, 0
  br i1 %tobool, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  store i32 %add906, i32* %A1, align 4, !tbaa !3
  store i32 %add907, i32* %B2, align 4, !tbaa !3
  store i32 %add908, i32* %C3, align 4, !tbaa !3
  store i32 %add909, i32* %D4, align 4, !tbaa !3
  ret void
}

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
