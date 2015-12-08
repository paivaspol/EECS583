; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Dumper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.xpv = type { i8*, i64, i64 }
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
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [39 x i8] c"Usage: Data::Dumper::Dumpxs(href, ...)\00", align 1
@PL_op = external global %struct.op*
@.str1 = private unnamed_addr constant [66 x i8] c"Usage: Data::Dumper::Dumpxs(PACKAGE, VAL_ARY_REF, [NAME_ARY_REF])\00", align 1
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@PL_markstack_max = external global i32*
@PL_stack_max = external global %struct.sv**
@.str2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@PL_sv_undef = external global %struct.sv
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str4 = private unnamed_addr constant [5 x i8] c"seen\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"todump\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"purity\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"terse\00", align 1
@PL_Xpv = external global %struct.xpv*
@.str10 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"xpad\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"apad\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"pair\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"varname\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"freezer\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"toaster\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"deepcopy\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"quotekeys\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"maxdepth\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"sortkeys\00", align 1
@PL_sv_yes = external global %struct.sv
@.str23 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str28 = private unnamed_addr constant [47 x i8] c"Call to new() method failed to return HASH ref\00", align 1
@.str29 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Dumper.c\00", align 1
@.str30 = private unnamed_addr constant [21 x i8] c"Data::Dumper::Dumpxs\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@PL_errgv = external global %struct.gv*
@.str32 = private unnamed_addr constant [40 x i8] c"WARNING(Freezer method call failed): %_\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"do{my $o}\00", align 1
@.str37 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str38 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str39 = private unnamed_addr constant [26 x i8] c"ref name not found for %s\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@PL_Sv = external global %struct.sv*
@.str41 = private unnamed_addr constant [7 x i8] c"Regexp\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"qr/\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"\5C/\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str45 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str48 = private unnamed_addr constant [14 x i8] c"do{\5C(my $o = \00", align 1
@.str49 = private unnamed_addr constant [3 x i8] c")}\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c"*{\00", align 1
@.str51 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str52 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str53 = private unnamed_addr constant [9 x i8] c"{SCALAR}\00", align 1
@.str54 = private unnamed_addr constant [8 x i8] c"{ARRAY}\00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"{HASH}\00", align 1
@.str56 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str57 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str58 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str59 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str60 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str61 = private unnamed_addr constant [45 x i8] c"Sortkeys subroutine did not return ARRAYREF\0A\00", align 1
@PL_curcop = external global %struct.cop*
@.str62 = private unnamed_addr constant [16 x i8] c"sub { \22DUMMY\22 }\00", align 1
@.str63 = private unnamed_addr constant [46 x i8] c"Encountered CODE ref, using dummy placeholder\00", align 1
@.str64 = private unnamed_addr constant [27 x i8] c"cannot handle ref type %ld\00", align 1
@.str65 = private unnamed_addr constant [4 x i8] c", '\00", align 1
@.str66 = private unnamed_addr constant [4 x i8] c"' )\00", align 1
@.str67 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str68 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str69 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str70 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@DD_dump.entries = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str55, i32 0, i32 0)], align 16
@DD_dump.sizes = internal unnamed_addr constant [3 x i64] [i64 8, i64 7, i64 6], align 16
@.str71 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@PL_utf8skip = external constant [0 x i8]
@.str72 = private unnamed_addr constant [8 x i8] c"\5Cx{%lx}\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @XS_Data__Dumper_Dumpxs(%struct.cv* nocapture %cv) #0 {
entry:
  %level = alloca i32, align 4
  %tmpbuf = alloca [1024 x i8], align 16
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
  %sub.ptr.div4791 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4791 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext792 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext792, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  store i32 0, i32* %level, align 4, !tbaa !3
  %6 = getelementptr inbounds [1024 x i8]* %tmpbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %6) #2
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %7, i64 0, i32 6
  %8 = load i8* %op_flags, align 1, !tbaa !1
  %conv10 = zext i8 %8 to i32
  %and = and i32 %conv10, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %cmp14 = icmp eq i32 %and, 3
  %cond = zext i1 %cmp14 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i32 @Perl_dowantarray() #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and17 = and i32 %9, 524288
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end92

if.then19:                                        ; preds = %cond.end
  %cmp20 = icmp slt i32 %conv5, 2
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then19
  call void @Perl_push_scope() #6
  call void @Perl_save_int(i32* @PL_tmps_floor) #6
  %10 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %10, i32* @PL_tmps_floor, align 4, !tbaa !3
  %11 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr24 = getelementptr inbounds i32* %11, i64 1
  store i32* %incdec.ptr24, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %12 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp25 = icmp eq i32* %incdec.ptr24, %12
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @Perl_markstack_grow() #6
  %.pre805 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23
  %13 = phi i32* [ %.pre805, %if.then27 ], [ %incdec.ptr24, %if.end23 ]
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %add.ptr8 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32793 = lshr exact i64 %sub.ptr.sub31, 3
  %conv33 = trunc i64 %sub.ptr.div32793 to i32
  store i32 %conv33, i32* %13, align 4, !tbaa !3
  %15 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast34 = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.lhs.cast29
  %cmp38 = icmp slt i64 %sub.ptr.sub36, 8
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end28
  %call41 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr8, %struct.sv** %add.ptr8, i32 1) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end28
  %sp.0 = phi %struct.sv** [ %call41, %if.then40 ], [ %add.ptr8, %if.end28 ]
  %incdec.ptr43 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %5, %struct.sv** %incdec.ptr43, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast44 = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.rhs.cast45 = ptrtoint %struct.sv** %incdec.ptr43 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %cmp48 = icmp slt i64 %sub.ptr.sub46, 8
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end42
  %call51 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr43, %struct.sv** %incdec.ptr43, i32 1) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end42
  %sp.1 = phi %struct.sv** [ %call51, %if.then50 ], [ %incdec.ptr43, %if.end42 ]
  %sext794 = add i64 %add.ptr.idx, 8589934592
  %idxprom54 = ashr exact i64 %sext794, 32
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds %struct.sv** %17, i64 %idxprom54
  %18 = load %struct.sv** %arrayidx55, align 8, !tbaa !0
  %call56 = call %struct.sv* @Perl_newSVsv(%struct.sv* %18) #6
  %call57 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call56) #6
  %incdec.ptr58 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call57, %struct.sv** %incdec.ptr58, align 8, !tbaa !0
  %cmp59 = icmp sgt i32 %conv5, 2
  br i1 %cmp59, label %if.then61, label %if.end77

if.then61:                                        ; preds = %if.end52
  %19 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast62 = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.rhs.cast63 = ptrtoint %struct.sv** %incdec.ptr58 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %cmp66 = icmp slt i64 %sub.ptr.sub64, 8
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then61
  %call69 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr58, %struct.sv** %incdec.ptr58, i32 1) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then61
  %sp.2 = phi %struct.sv** [ %call69, %if.then68 ], [ %incdec.ptr58, %if.then61 ]
  %sext795 = add i64 %add.ptr.idx, 12884901888
  %idxprom72 = ashr exact i64 %sext795, 32
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds %struct.sv** %20, i64 %idxprom72
  %21 = load %struct.sv** %arrayidx73, align 8, !tbaa !0
  %call74 = call %struct.sv* @Perl_newSVsv(%struct.sv* %21) #6
  %call75 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call74) #6
  %incdec.ptr76 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call75, %struct.sv** %incdec.ptr76, align 8, !tbaa !0
  br label %if.end77

if.end77:                                         ; preds = %if.end70, %if.end52
  %sp.3 = phi %struct.sv** [ %incdec.ptr76, %if.end70 ], [ %incdec.ptr58, %if.end52 ]
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call78 = call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i32 0) #6
  %22 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end77
  %incdec.ptr81 = getelementptr inbounds %struct.sv** %22, i64 -1
  %23 = load %struct.sv** %22, align 8, !tbaa !0
  %call82 = call %struct.sv* @Perl_newSVsv(%struct.sv* %23) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77
  %href.0 = phi %struct.sv* [ %call82, %if.then80 ], [ %5, %if.end77 ]
  %sp.4 = phi %struct.sv** [ %incdec.ptr81, %if.then80 ], [ %22, %if.end77 ]
  store %struct.sv** %sp.4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %25 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp84 = icmp sgt i32 %24, %25
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  call void @Perl_free_tmps() #6
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end83
  call void @Perl_pop_scope() #6
  br i1 %tobool79, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.end87
  %call90 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %href.0) #6
  br label %if.end92

if.end92:                                         ; preds = %cond.end, %if.end87, %if.then89
  %href.1 = phi %struct.sv* [ %5, %cond.end ], [ %href.0, %if.then89 ], [ %href.0, %if.end87 ]
  %sp.5 = phi %struct.sv** [ %add.ptr8, %cond.end ], [ %sp.4, %if.then89 ], [ %sp.4, %if.end87 ]
  %call93 = call %struct.sv* @Perl_sv_newmortal() #6
  %call94 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  %sv_flags95 = getelementptr inbounds %struct.sv* %href.1, i64 0, i32 2
  %26 = load i32* %sv_flags95, align 4, !tbaa !3
  %and96 = and i32 %26, 524288
  %tobool97 = icmp eq i32 %and96, 0
  br i1 %tobool97, label %if.else601, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end92
  %sv_any = getelementptr inbounds %struct.sv* %href.1, i64 0, i32 0
  %27 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %27 to %struct.sv**
  %28 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %29 = bitcast %struct.sv* %28 to %struct.hv*
  %tobool98 = icmp eq %struct.sv* %28, null
  br i1 %tobool98, label %if.else601, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %land.lhs.true
  %30 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %31 = load i32* %30, align 4, !tbaa !3
  %and101 = and i32 %31, 255
  %cmp102 = icmp eq i32 %and101, 11
  br i1 %cmp102, label %if.then104, label %if.else601

if.then104:                                       ; preds = %land.lhs.true99
  %call105 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 4, i32 0) #6
  %tobool106 = icmp eq %struct.sv** %call105, null
  br i1 %tobool106, label %if.end114, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.then104
  %32 = load %struct.sv** %call105, align 8, !tbaa !0
  %sv_flags108 = getelementptr inbounds %struct.sv* %32, i64 0, i32 2
  %33 = load i32* %sv_flags108, align 4, !tbaa !3
  %and109 = and i32 %33, 524288
  %tobool110 = icmp eq i32 %and109, 0
  br i1 %tobool110, label %if.end114, label %if.then111

if.then111:                                       ; preds = %land.lhs.true107
  %sv_any112 = getelementptr inbounds %struct.sv* %32, i64 0, i32 0
  %34 = load i8** %sv_any112, align 8, !tbaa !0
  %xrv_rv113 = bitcast i8* %34 to %struct.sv**
  %35 = load %struct.sv** %xrv_rv113, align 8, !tbaa !0
  %36 = bitcast %struct.sv* %35 to %struct.hv*
  br label %if.end114

if.end114:                                        ; preds = %land.lhs.true107, %if.then104, %if.then111
  %seenhv.0 = phi %struct.hv* [ %36, %if.then111 ], [ null, %land.lhs.true107 ], [ null, %if.then104 ]
  %call115 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i32 6, i32 0) #6
  %tobool116 = icmp eq %struct.sv** %call115, null
  br i1 %tobool116, label %if.end124, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end114
  %37 = load %struct.sv** %call115, align 8, !tbaa !0
  %sv_flags118 = getelementptr inbounds %struct.sv* %37, i64 0, i32 2
  %38 = load i32* %sv_flags118, align 4, !tbaa !3
  %and119 = and i32 %38, 524288
  %tobool120 = icmp eq i32 %and119, 0
  br i1 %tobool120, label %if.end124, label %if.then121

if.then121:                                       ; preds = %land.lhs.true117
  %sv_any122 = getelementptr inbounds %struct.sv* %37, i64 0, i32 0
  %39 = load i8** %sv_any122, align 8, !tbaa !0
  %xrv_rv123 = bitcast i8* %39 to %struct.sv**
  %40 = load %struct.sv** %xrv_rv123, align 8, !tbaa !0
  %41 = bitcast %struct.sv* %40 to %struct.av*
  br label %if.end124

if.end124:                                        ; preds = %land.lhs.true117, %if.end114, %if.then121
  %todumpav.0 = phi %struct.av* [ %41, %if.then121 ], [ null, %land.lhs.true117 ], [ null, %if.end114 ]
  %call125 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32 5, i32 0) #6
  %tobool126 = icmp eq %struct.sv** %call125, null
  br i1 %tobool126, label %if.end134, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %if.end124
  %42 = load %struct.sv** %call125, align 8, !tbaa !0
  %sv_flags128 = getelementptr inbounds %struct.sv* %42, i64 0, i32 2
  %43 = load i32* %sv_flags128, align 4, !tbaa !3
  %and129 = and i32 %43, 524288
  %tobool130 = icmp eq i32 %and129, 0
  br i1 %tobool130, label %if.end134, label %if.then131

if.then131:                                       ; preds = %land.lhs.true127
  %sv_any132 = getelementptr inbounds %struct.sv* %42, i64 0, i32 0
  %44 = load i8** %sv_any132, align 8, !tbaa !0
  %xrv_rv133 = bitcast i8* %44 to %struct.sv**
  %45 = load %struct.sv** %xrv_rv133, align 8, !tbaa !0
  %46 = bitcast %struct.sv* %45 to %struct.av*
  br label %if.end134

if.end134:                                        ; preds = %land.lhs.true127, %if.end124, %if.then131
  %namesav.0 = phi %struct.av* [ %46, %if.then131 ], [ null, %land.lhs.true127 ], [ null, %if.end124 ]
  %call135 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i32 6, i32 0) #6
  %tobool136 = icmp eq %struct.sv** %call135, null
  br i1 %tobool136, label %if.end148, label %if.then137

if.then137:                                       ; preds = %if.end134
  %47 = load %struct.sv** %call135, align 8, !tbaa !0
  %sv_flags138 = getelementptr inbounds %struct.sv* %47, i64 0, i32 2
  %48 = load i32* %sv_flags138, align 4, !tbaa !3
  %and139 = and i32 %48, 65536
  %tobool140 = icmp eq i32 %and139, 0
  br i1 %tobool140, label %cond.false143, label %cond.true141

cond.true141:                                     ; preds = %if.then137
  %sv_any142 = getelementptr inbounds %struct.sv* %47, i64 0, i32 0
  %49 = load i8** %sv_any142, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %49, i64 24
  %50 = bitcast i8* %xiv_iv to i64*
  %51 = load i64* %50, align 8, !tbaa !4
  br label %cond.end145

cond.false143:                                    ; preds = %if.then137
  %call144 = call i64 @Perl_sv_2iv(%struct.sv* %47) #6
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false143, %cond.true141
  %cond146 = phi i64 [ %51, %cond.true141 ], [ %call144, %cond.false143 ]
  %conv147 = trunc i64 %cond146 to i32
  br label %if.end148

if.end148:                                        ; preds = %if.end134, %cond.end145
  %indent.0 = phi i32 [ %conv147, %cond.end145 ], [ 2, %if.end134 ]
  %call149 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0), i32 6, i32 0) #6
  %tobool150 = icmp eq %struct.sv** %call149, null
  br i1 %tobool150, label %if.end163, label %if.then151

if.then151:                                       ; preds = %if.end148
  %52 = load %struct.sv** %call149, align 8, !tbaa !0
  %sv_flags152 = getelementptr inbounds %struct.sv* %52, i64 0, i32 2
  %53 = load i32* %sv_flags152, align 4, !tbaa !3
  %and153 = and i32 %53, 65536
  %tobool154 = icmp eq i32 %and153, 0
  br i1 %tobool154, label %cond.false158, label %cond.true155

cond.true155:                                     ; preds = %if.then151
  %sv_any156 = getelementptr inbounds %struct.sv* %52, i64 0, i32 0
  %54 = load i8** %sv_any156, align 8, !tbaa !0
  %xiv_iv157 = getelementptr inbounds i8* %54, i64 24
  %55 = bitcast i8* %xiv_iv157 to i64*
  %56 = load i64* %55, align 8, !tbaa !4
  br label %cond.end160

cond.false158:                                    ; preds = %if.then151
  %call159 = call i64 @Perl_sv_2iv(%struct.sv* %52) #6
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false158, %cond.true155
  %cond161 = phi i64 [ %56, %cond.true155 ], [ %call159, %cond.false158 ]
  %conv162 = trunc i64 %cond161 to i32
  br label %if.end163

if.end163:                                        ; preds = %if.end148, %cond.end160
  %purity.0 = phi i32 [ %conv162, %cond.end160 ], [ 0, %if.end148 ]
  %call164 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i32 5, i32 0) #6
  %tobool165 = icmp eq %struct.sv** %call164, null
  br i1 %tobool165, label %if.end214, label %if.then166

if.then166:                                       ; preds = %if.end163
  %57 = load %struct.sv** %call164, align 8, !tbaa !0
  %tobool167 = icmp eq %struct.sv* %57, null
  br i1 %tobool167, label %if.end214, label %cond.false169

cond.false169:                                    ; preds = %if.then166
  %sv_flags170 = getelementptr inbounds %struct.sv* %57, i64 0, i32 2
  %58 = load i32* %sv_flags170, align 4, !tbaa !3
  %and171 = and i32 %58, 262144
  %tobool172 = icmp eq i32 %and171, 0
  br i1 %tobool172, label %cond.false186, label %cond.true173

cond.true173:                                     ; preds = %cond.false169
  %sv_any174 = getelementptr inbounds %struct.sv* %57, i64 0, i32 0
  %59 = load i8** %sv_any174, align 8, !tbaa !0
  %60 = bitcast i8* %59 to %struct.xpv*
  store %struct.xpv* %60, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool175 = icmp eq i8* %59, null
  br i1 %tobool175, label %land.end184, label %land.rhs

land.rhs:                                         ; preds = %cond.true173
  %xpv_cur = getelementptr inbounds i8* %59, i64 8
  %61 = bitcast i8* %xpv_cur to i64*
  %62 = load i64* %61, align 8, !tbaa !4
  %cmp176 = icmp ugt i64 %62, 1
  br i1 %cmp176, label %land.end184, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool179 = icmp eq i64 %62, 0
  br i1 %tobool179, label %land.end184, label %land.rhs180

land.rhs180:                                      ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %59 to i8**
  %63 = load i8** %xpv_pv, align 8, !tbaa !0
  %64 = load i8* %63, align 1, !tbaa !1
  %cmp182 = icmp ne i8 %64, 48
  br label %land.end184

land.end184:                                      ; preds = %lor.rhs, %cond.true173, %land.rhs, %land.rhs180
  %65 = phi i1 [ false, %cond.true173 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp182, %land.rhs180 ]
  %cond185 = zext i1 %65 to i32
  br label %if.end214

cond.false186:                                    ; preds = %cond.false169
  %and188 = and i32 %58, 65536
  %tobool189 = icmp eq i32 %and188, 0
  br i1 %tobool189, label %cond.false195, label %cond.true190

cond.true190:                                     ; preds = %cond.false186
  %sv_any191 = getelementptr inbounds %struct.sv* %57, i64 0, i32 0
  %66 = load i8** %sv_any191, align 8, !tbaa !0
  %xiv_iv192 = getelementptr inbounds i8* %66, i64 24
  %67 = bitcast i8* %xiv_iv192 to i64*
  %68 = load i64* %67, align 8, !tbaa !4
  %cmp193 = icmp ne i64 %68, 0
  %conv194 = zext i1 %cmp193 to i32
  br label %if.end214

cond.false195:                                    ; preds = %cond.false186
  %and197 = and i32 %58, 131072
  %tobool198 = icmp eq i32 %and197, 0
  br i1 %tobool198, label %cond.false203, label %cond.true199

cond.true199:                                     ; preds = %cond.false195
  %sv_any200 = getelementptr inbounds %struct.sv* %57, i64 0, i32 0
  %69 = load i8** %sv_any200, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %69, i64 32
  %70 = bitcast i8* %xnv_nv to double*
  %71 = load double* %70, align 8, !tbaa !5
  %cmp201 = fcmp une double %71, 0.000000e+00
  %conv202 = zext i1 %cmp201 to i32
  br label %if.end214

cond.false203:                                    ; preds = %cond.false195
  %call204 = call signext i8 @Perl_sv_2bool(%struct.sv* %57) #6
  %conv205 = sext i8 %call204 to i32
  br label %if.end214

if.end214:                                        ; preds = %cond.true190, %cond.false203, %cond.true199, %land.end184, %if.then166, %if.end163
  %terse.0 = phi i32 [ 0, %if.end163 ], [ 0, %if.then166 ], [ %cond185, %land.end184 ], [ %conv194, %cond.true190 ], [ %conv202, %cond.true199 ], [ %conv205, %cond.false203 ]
  %call215 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32 3, i32 0) #6
  %tobool216 = icmp eq %struct.sv** %call215, null
  br i1 %tobool216, label %if.end218, label %if.then217

if.then217:                                       ; preds = %if.end214
  %72 = load %struct.sv** %call215, align 8, !tbaa !0
  br label %if.end218

if.end218:                                        ; preds = %if.end214, %if.then217
  %pad.0 = phi %struct.sv* [ %72, %if.then217 ], [ @PL_sv_undef, %if.end214 ]
  %call219 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i32 4, i32 0) #6
  %tobool220 = icmp eq %struct.sv** %call219, null
  br i1 %tobool220, label %if.end222, label %if.then221

if.then221:                                       ; preds = %if.end218
  %73 = load %struct.sv** %call219, align 8, !tbaa !0
  br label %if.end222

if.end222:                                        ; preds = %if.end218, %if.then221
  %xpad.0 = phi %struct.sv* [ %73, %if.then221 ], [ @PL_sv_undef, %if.end218 ]
  %call223 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i32 4, i32 0) #6
  %tobool224 = icmp eq %struct.sv** %call223, null
  br i1 %tobool224, label %if.end226, label %if.then225

if.then225:                                       ; preds = %if.end222
  %74 = load %struct.sv** %call223, align 8, !tbaa !0
  br label %if.end226

if.end226:                                        ; preds = %if.end222, %if.then225
  %apad.0 = phi %struct.sv* [ %74, %if.then225 ], [ @PL_sv_undef, %if.end222 ]
  %call227 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i32 3, i32 0) #6
  %tobool228 = icmp eq %struct.sv** %call227, null
  br i1 %tobool228, label %if.end230, label %if.then229

if.then229:                                       ; preds = %if.end226
  %75 = load %struct.sv** %call227, align 8, !tbaa !0
  br label %if.end230

if.end230:                                        ; preds = %if.end226, %if.then229
  %sep.0 = phi %struct.sv* [ %75, %if.then229 ], [ @PL_sv_undef, %if.end226 ]
  %call231 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), i32 4, i32 0) #6
  %tobool232 = icmp eq %struct.sv** %call231, null
  br i1 %tobool232, label %if.end234, label %if.then233

if.then233:                                       ; preds = %if.end230
  %76 = load %struct.sv** %call231, align 8, !tbaa !0
  br label %if.end234

if.end234:                                        ; preds = %if.end230, %if.then233
  %pair.0 = phi %struct.sv* [ %76, %if.then233 ], [ @PL_sv_undef, %if.end230 ]
  %call235 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 7, i32 0) #6
  %tobool236 = icmp eq %struct.sv** %call235, null
  br i1 %tobool236, label %if.end238, label %if.then237

if.then237:                                       ; preds = %if.end234
  %77 = load %struct.sv** %call235, align 8, !tbaa !0
  br label %if.end238

if.end238:                                        ; preds = %if.end234, %if.then237
  %varname.0 = phi %struct.sv* [ %77, %if.then237 ], [ @PL_sv_undef, %if.end234 ]
  %call239 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i32 7, i32 0) #6
  %tobool240 = icmp eq %struct.sv** %call239, null
  br i1 %tobool240, label %if.end242, label %if.then241

if.then241:                                       ; preds = %if.end238
  %78 = load %struct.sv** %call239, align 8, !tbaa !0
  br label %if.end242

if.end242:                                        ; preds = %if.end238, %if.then241
  %freezer.0 = phi %struct.sv* [ %78, %if.then241 ], [ @PL_sv_undef, %if.end238 ]
  %call243 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i32 7, i32 0) #6
  %tobool244 = icmp eq %struct.sv** %call243, null
  br i1 %tobool244, label %if.end246, label %if.then245

if.then245:                                       ; preds = %if.end242
  %79 = load %struct.sv** %call243, align 8, !tbaa !0
  br label %if.end246

if.end246:                                        ; preds = %if.end242, %if.then245
  %toaster.0 = phi %struct.sv* [ %79, %if.then245 ], [ @PL_sv_undef, %if.end242 ]
  %call247 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i32 8, i32 0) #6
  %tobool248 = icmp eq %struct.sv** %call247, null
  br i1 %tobool248, label %if.end304, label %if.then249

if.then249:                                       ; preds = %if.end246
  %80 = load %struct.sv** %call247, align 8, !tbaa !0
  %tobool250 = icmp eq %struct.sv* %80, null
  br i1 %tobool250, label %if.end304, label %cond.false252

cond.false252:                                    ; preds = %if.then249
  %sv_flags253 = getelementptr inbounds %struct.sv* %80, i64 0, i32 2
  %81 = load i32* %sv_flags253, align 4, !tbaa !3
  %and254 = and i32 %81, 262144
  %tobool255 = icmp eq i32 %and254, 0
  br i1 %tobool255, label %cond.false275, label %cond.true256

cond.true256:                                     ; preds = %cond.false252
  %sv_any257 = getelementptr inbounds %struct.sv* %80, i64 0, i32 0
  %82 = load i8** %sv_any257, align 8, !tbaa !0
  %83 = bitcast i8* %82 to %struct.xpv*
  store %struct.xpv* %83, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool258 = icmp eq i8* %82, null
  br i1 %tobool258, label %land.end273, label %land.rhs259

land.rhs259:                                      ; preds = %cond.true256
  %xpv_cur260 = getelementptr inbounds i8* %82, i64 8
  %84 = bitcast i8* %xpv_cur260 to i64*
  %85 = load i64* %84, align 8, !tbaa !4
  %cmp261 = icmp ugt i64 %85, 1
  br i1 %cmp261, label %land.end273, label %lor.rhs263

lor.rhs263:                                       ; preds = %land.rhs259
  %tobool265 = icmp eq i64 %85, 0
  br i1 %tobool265, label %land.end273, label %land.rhs266

land.rhs266:                                      ; preds = %lor.rhs263
  %xpv_pv267 = bitcast i8* %82 to i8**
  %86 = load i8** %xpv_pv267, align 8, !tbaa !0
  %87 = load i8* %86, align 1, !tbaa !1
  %cmp269 = icmp ne i8 %87, 48
  br label %land.end273

land.end273:                                      ; preds = %lor.rhs263, %cond.true256, %land.rhs259, %land.rhs266
  %88 = phi i1 [ false, %cond.true256 ], [ true, %land.rhs259 ], [ false, %lor.rhs263 ], [ %cmp269, %land.rhs266 ]
  %cond274 = zext i1 %88 to i32
  br label %if.end304

cond.false275:                                    ; preds = %cond.false252
  %and277 = and i32 %81, 65536
  %tobool278 = icmp eq i32 %and277, 0
  br i1 %tobool278, label %cond.false284, label %cond.true279

cond.true279:                                     ; preds = %cond.false275
  %sv_any280 = getelementptr inbounds %struct.sv* %80, i64 0, i32 0
  %89 = load i8** %sv_any280, align 8, !tbaa !0
  %xiv_iv281 = getelementptr inbounds i8* %89, i64 24
  %90 = bitcast i8* %xiv_iv281 to i64*
  %91 = load i64* %90, align 8, !tbaa !4
  %cmp282 = icmp ne i64 %91, 0
  %conv283 = zext i1 %cmp282 to i32
  br label %if.end304

cond.false284:                                    ; preds = %cond.false275
  %and286 = and i32 %81, 131072
  %tobool287 = icmp eq i32 %and286, 0
  br i1 %tobool287, label %cond.false293, label %cond.true288

cond.true288:                                     ; preds = %cond.false284
  %sv_any289 = getelementptr inbounds %struct.sv* %80, i64 0, i32 0
  %92 = load i8** %sv_any289, align 8, !tbaa !0
  %xnv_nv290 = getelementptr inbounds i8* %92, i64 32
  %93 = bitcast i8* %xnv_nv290 to double*
  %94 = load double* %93, align 8, !tbaa !5
  %cmp291 = fcmp une double %94, 0.000000e+00
  %conv292 = zext i1 %cmp291 to i32
  br label %if.end304

cond.false293:                                    ; preds = %cond.false284
  %call294 = call signext i8 @Perl_sv_2bool(%struct.sv* %80) #6
  %conv295 = sext i8 %call294 to i32
  br label %if.end304

if.end304:                                        ; preds = %cond.true279, %cond.false293, %cond.true288, %land.end273, %if.then249, %if.end246
  %deepcopy.0 = phi i32 [ 0, %if.end246 ], [ 0, %if.then249 ], [ %cond274, %land.end273 ], [ %conv283, %cond.true279 ], [ %conv292, %cond.true288 ], [ %conv295, %cond.false293 ]
  %call305 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i32 9, i32 0) #6
  %tobool306 = icmp eq %struct.sv** %call305, null
  br i1 %tobool306, label %if.end362, label %if.then307

if.then307:                                       ; preds = %if.end304
  %95 = load %struct.sv** %call305, align 8, !tbaa !0
  %tobool308 = icmp eq %struct.sv* %95, null
  br i1 %tobool308, label %if.end362, label %cond.false310

cond.false310:                                    ; preds = %if.then307
  %sv_flags311 = getelementptr inbounds %struct.sv* %95, i64 0, i32 2
  %96 = load i32* %sv_flags311, align 4, !tbaa !3
  %and312 = and i32 %96, 262144
  %tobool313 = icmp eq i32 %and312, 0
  br i1 %tobool313, label %cond.false333, label %cond.true314

cond.true314:                                     ; preds = %cond.false310
  %sv_any315 = getelementptr inbounds %struct.sv* %95, i64 0, i32 0
  %97 = load i8** %sv_any315, align 8, !tbaa !0
  %98 = bitcast i8* %97 to %struct.xpv*
  store %struct.xpv* %98, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool316 = icmp eq i8* %97, null
  br i1 %tobool316, label %land.end331, label %land.rhs317

land.rhs317:                                      ; preds = %cond.true314
  %xpv_cur318 = getelementptr inbounds i8* %97, i64 8
  %99 = bitcast i8* %xpv_cur318 to i64*
  %100 = load i64* %99, align 8, !tbaa !4
  %cmp319 = icmp ugt i64 %100, 1
  br i1 %cmp319, label %land.end331, label %lor.rhs321

lor.rhs321:                                       ; preds = %land.rhs317
  %tobool323 = icmp eq i64 %100, 0
  br i1 %tobool323, label %land.end331, label %land.rhs324

land.rhs324:                                      ; preds = %lor.rhs321
  %xpv_pv325 = bitcast i8* %97 to i8**
  %101 = load i8** %xpv_pv325, align 8, !tbaa !0
  %102 = load i8* %101, align 1, !tbaa !1
  %cmp327 = icmp ne i8 %102, 48
  br label %land.end331

land.end331:                                      ; preds = %lor.rhs321, %cond.true314, %land.rhs317, %land.rhs324
  %103 = phi i1 [ false, %cond.true314 ], [ true, %land.rhs317 ], [ false, %lor.rhs321 ], [ %cmp327, %land.rhs324 ]
  %cond332 = zext i1 %103 to i32
  br label %if.end362

cond.false333:                                    ; preds = %cond.false310
  %and335 = and i32 %96, 65536
  %tobool336 = icmp eq i32 %and335, 0
  br i1 %tobool336, label %cond.false342, label %cond.true337

cond.true337:                                     ; preds = %cond.false333
  %sv_any338 = getelementptr inbounds %struct.sv* %95, i64 0, i32 0
  %104 = load i8** %sv_any338, align 8, !tbaa !0
  %xiv_iv339 = getelementptr inbounds i8* %104, i64 24
  %105 = bitcast i8* %xiv_iv339 to i64*
  %106 = load i64* %105, align 8, !tbaa !4
  %cmp340 = icmp ne i64 %106, 0
  %conv341 = zext i1 %cmp340 to i32
  br label %if.end362

cond.false342:                                    ; preds = %cond.false333
  %and344 = and i32 %96, 131072
  %tobool345 = icmp eq i32 %and344, 0
  br i1 %tobool345, label %cond.false351, label %cond.true346

cond.true346:                                     ; preds = %cond.false342
  %sv_any347 = getelementptr inbounds %struct.sv* %95, i64 0, i32 0
  %107 = load i8** %sv_any347, align 8, !tbaa !0
  %xnv_nv348 = getelementptr inbounds i8* %107, i64 32
  %108 = bitcast i8* %xnv_nv348 to double*
  %109 = load double* %108, align 8, !tbaa !5
  %cmp349 = fcmp une double %109, 0.000000e+00
  %conv350 = zext i1 %cmp349 to i32
  br label %if.end362

cond.false351:                                    ; preds = %cond.false342
  %call352 = call signext i8 @Perl_sv_2bool(%struct.sv* %95) #6
  %conv353 = sext i8 %call352 to i32
  br label %if.end362

if.end362:                                        ; preds = %cond.true337, %cond.false351, %cond.true346, %land.end331, %if.then307, %if.end304
  %quotekeys.0 = phi i32 [ 1, %if.end304 ], [ 0, %if.then307 ], [ %cond332, %land.end331 ], [ %conv341, %cond.true337 ], [ %conv350, %cond.true346 ], [ %conv353, %cond.false351 ]
  %call363 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32 5, i32 0) #6
  %tobool364 = icmp eq %struct.sv** %call363, null
  br i1 %tobool364, label %if.end366, label %if.then365

if.then365:                                       ; preds = %if.end362
  %110 = load %struct.sv** %call363, align 8, !tbaa !0
  br label %if.end366

if.end366:                                        ; preds = %if.end362, %if.then365
  %bless.0 = phi %struct.sv* [ %110, %if.then365 ], [ @PL_sv_undef, %if.end362 ]
  %call367 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i32 8, i32 0) #6
  %tobool368 = icmp eq %struct.sv** %call367, null
  br i1 %tobool368, label %if.end381, label %if.then369

if.then369:                                       ; preds = %if.end366
  %111 = load %struct.sv** %call367, align 8, !tbaa !0
  %sv_flags370 = getelementptr inbounds %struct.sv* %111, i64 0, i32 2
  %112 = load i32* %sv_flags370, align 4, !tbaa !3
  %and371 = and i32 %112, 65536
  %tobool372 = icmp eq i32 %and371, 0
  br i1 %tobool372, label %cond.false376, label %cond.true373

cond.true373:                                     ; preds = %if.then369
  %sv_any374 = getelementptr inbounds %struct.sv* %111, i64 0, i32 0
  %113 = load i8** %sv_any374, align 8, !tbaa !0
  %xiv_iv375 = getelementptr inbounds i8* %113, i64 24
  %114 = bitcast i8* %xiv_iv375 to i64*
  %115 = load i64* %114, align 8, !tbaa !4
  br label %cond.end378

cond.false376:                                    ; preds = %if.then369
  %call377 = call i64 @Perl_sv_2iv(%struct.sv* %111) #6
  br label %cond.end378

cond.end378:                                      ; preds = %cond.false376, %cond.true373
  %cond379 = phi i64 [ %115, %cond.true373 ], [ %call377, %cond.false376 ]
  %conv380 = trunc i64 %cond379 to i32
  br label %if.end381

if.end381:                                        ; preds = %if.end366, %cond.end378
  %maxdepth.0 = phi i32 [ %conv380, %cond.end378 ], [ 0, %if.end366 ]
  %call382 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %29, i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i32 8, i32 0) #6
  %tobool383 = icmp eq %struct.sv** %call382, null
  br i1 %tobool383, label %if.end443, label %if.then384

if.then384:                                       ; preds = %if.end381
  %116 = load %struct.sv** %call382, align 8, !tbaa !0
  %tobool385 = icmp eq %struct.sv* %116, null
  br i1 %tobool385, label %if.end443, label %cond.false387

cond.false387:                                    ; preds = %if.then384
  %sv_flags388 = getelementptr inbounds %struct.sv* %116, i64 0, i32 2
  %117 = load i32* %sv_flags388, align 4, !tbaa !3
  %and389 = and i32 %117, 262144
  %tobool390 = icmp eq i32 %and389, 0
  br i1 %tobool390, label %cond.false407, label %cond.true391

cond.true391:                                     ; preds = %cond.false387
  %sv_any392 = getelementptr inbounds %struct.sv* %116, i64 0, i32 0
  %118 = load i8** %sv_any392, align 8, !tbaa !0
  %119 = bitcast i8* %118 to %struct.xpv*
  store %struct.xpv* %119, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool393 = icmp eq i8* %118, null
  br i1 %tobool393, label %if.end443, label %land.lhs.true394

land.lhs.true394:                                 ; preds = %cond.true391
  %xpv_cur395 = getelementptr inbounds i8* %118, i64 8
  %120 = bitcast i8* %xpv_cur395 to i64*
  %121 = load i64* %120, align 8, !tbaa !4
  %cmp396 = icmp ugt i64 %121, 1
  br i1 %cmp396, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true394
  %tobool399 = icmp eq i64 %121, 0
  br i1 %tobool399, label %if.end443, label %land.lhs.true400

land.lhs.true400:                                 ; preds = %lor.lhs.false
  %xpv_pv401 = bitcast i8* %118 to i8**
  %122 = load i8** %xpv_pv401, align 8, !tbaa !0
  %123 = load i8* %122, align 1, !tbaa !1
  %cmp403 = icmp eq i8 %123, 48
  br i1 %cmp403, label %if.end443, label %if.else

cond.false407:                                    ; preds = %cond.false387
  %and409 = and i32 %117, 65536
  %tobool410 = icmp eq i32 %and409, 0
  br i1 %tobool410, label %cond.false416, label %cond.true411

cond.true411:                                     ; preds = %cond.false407
  %sv_any412 = getelementptr inbounds %struct.sv* %116, i64 0, i32 0
  %124 = load i8** %sv_any412, align 8, !tbaa !0
  %xiv_iv413 = getelementptr inbounds i8* %124, i64 24
  %125 = bitcast i8* %xiv_iv413 to i64*
  %126 = load i64* %125, align 8, !tbaa !4
  %cmp414 = icmp eq i64 %126, 0
  br i1 %cmp414, label %if.end443, label %if.else

cond.false416:                                    ; preds = %cond.false407
  %and418 = and i32 %117, 131072
  %tobool419 = icmp eq i32 %and418, 0
  br i1 %tobool419, label %cond.false425, label %cond.true420

cond.true420:                                     ; preds = %cond.false416
  %sv_any421 = getelementptr inbounds %struct.sv* %116, i64 0, i32 0
  %127 = load i8** %sv_any421, align 8, !tbaa !0
  %xnv_nv422 = getelementptr inbounds i8* %127, i64 32
  %128 = bitcast i8* %xnv_nv422 to double*
  %129 = load double* %128, align 8, !tbaa !5
  %cmp423 = fcmp une double %129, 0.000000e+00
  br i1 %cmp423, label %if.else, label %if.end443

cond.false425:                                    ; preds = %cond.false416
  %call426 = call signext i8 @Perl_sv_2bool(%struct.sv* %116) #6
  %tobool428 = icmp eq i8 %call426, 0
  br i1 %tobool428, label %if.end443, label %cond.false425.if.else_crit_edge

cond.false425.if.else_crit_edge:                  ; preds = %cond.false425
  %.pre806 = load i32* %sv_flags388, align 4, !tbaa !3
  br label %if.else

if.else:                                          ; preds = %cond.false425.if.else_crit_edge, %land.lhs.true400, %cond.true411, %land.lhs.true394, %cond.true420
  %130 = phi i32 [ %.pre806, %cond.false425.if.else_crit_edge ], [ %117, %land.lhs.true400 ], [ %117, %cond.true411 ], [ %117, %land.lhs.true394 ], [ %117, %cond.true420 ]
  %and431 = and i32 %130, 524288
  %tobool432 = icmp eq i32 %and431, 0
  br i1 %tobool432, label %if.then440, label %land.lhs.true433

land.lhs.true433:                                 ; preds = %if.else
  %sv_any434 = getelementptr inbounds %struct.sv* %116, i64 0, i32 0
  %131 = load i8** %sv_any434, align 8, !tbaa !0
  %xrv_rv435 = bitcast i8* %131 to %struct.sv**
  %132 = load %struct.sv** %xrv_rv435, align 8, !tbaa !0
  %sv_flags436 = getelementptr inbounds %struct.sv* %132, i64 0, i32 2
  %133 = load i32* %sv_flags436, align 4, !tbaa !3
  %and437 = and i32 %133, 255
  %cmp438 = icmp eq i32 %and437, 12
  br i1 %cmp438, label %if.end443, label %if.then440

if.then440:                                       ; preds = %if.else, %land.lhs.true433
  br label %if.end443

if.end443:                                        ; preds = %cond.true420, %if.then384, %cond.false425, %cond.true411, %cond.true391, %lor.lhs.false, %land.lhs.true400, %if.end381, %if.then440, %land.lhs.true433
  %sortkeys.0 = phi %struct.sv* [ %116, %land.lhs.true433 ], [ @PL_sv_yes, %if.then440 ], [ undef, %if.end381 ], [ null, %land.lhs.true400 ], [ null, %lor.lhs.false ], [ null, %cond.true391 ], [ null, %cond.true411 ], [ null, %cond.false425 ], [ null, %if.then384 ], [ null, %cond.true420 ]
  %call444 = call %struct.av* @Perl_newAV() #6
  %tobool445 = icmp eq %struct.av* %todumpav.0, null
  br i1 %tobool445, label %if.end449.thread, label %if.end449

if.end449.thread:                                 ; preds = %if.end443
  %call450807 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  br label %for.end600

if.end449:                                        ; preds = %if.end443
  %call447 = call i32 @Perl_av_len(%struct.av* %todumpav.0) #6
  %call450 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  %cmp451798 = icmp slt i32 %call447, 0
  br i1 %cmp451798, label %for.end600, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end449
  %sv_flags462 = getelementptr inbounds %struct.sv* %call93, i64 0, i32 2
  %cmp528 = icmp sgt i32 %indent.0, 1
  %sv_any531 = getelementptr inbounds %struct.sv* %call93, i64 0, i32 0
  %tobool552 = icmp eq i32 %terse.0, 0
  %cmp578 = icmp eq i32 %cond16, 1
  %134 = add i32 %call447, 1
  br label %for.body

for.body:                                         ; preds = %for.inc598, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc598 ], [ 0, %for.body.lr.ph ]
  %sp.6801 = phi %struct.sv** [ %sp.8, %for.inc598 ], [ %sp.5, %for.body.lr.ph ]
  %retval.0800 = phi %struct.sv* [ %retval.1, %for.inc598 ], [ %call94, %for.body.lr.ph ]
  call void @Perl_av_clear(%struct.av* %call444) #6
  %135 = trunc i64 %indvars.iv to i32
  %call453 = call %struct.sv** @Perl_av_fetch(%struct.av* %todumpav.0, i32 %135, i32 0) #6
  %tobool454 = icmp eq %struct.sv** %call453, null
  br i1 %tobool454, label %if.end457, label %if.then455

if.then455:                                       ; preds = %for.body
  %136 = load %struct.sv** %call453, align 8, !tbaa !0
  br label %if.end457

if.end457:                                        ; preds = %for.body, %if.then455
  %val.0 = phi %struct.sv* [ %136, %if.then455 ], [ @PL_sv_undef, %for.body ]
  %call458 = call %struct.sv** @Perl_av_fetch(%struct.av* %namesav.0, i32 %135, i32 1) #6
  %tobool459 = icmp eq %struct.sv** %call458, null
  br i1 %tobool459, label %if.else461, label %if.then460

if.then460:                                       ; preds = %if.end457
  %137 = load %struct.sv** %call458, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %call93, %struct.sv* %137, i32 2) #6
  br label %if.end471

if.else461:                                       ; preds = %if.end457
  %138 = load i32* %sv_flags462, align 4, !tbaa !3
  %and463 = and i32 %138, 1223753727
  store i32 %and463, i32* %sv_flags462, align 4, !tbaa !3
  %and465 = and i32 %138, 2097152
  %tobool466 = icmp eq i32 %and465, 0
  br i1 %tobool466, label %if.end471, label %land.rhs467

land.rhs467:                                      ; preds = %if.else461
  %call468 = call i32 @Perl_sv_backoff(%struct.sv* %call93) #6
  br label %if.end471

if.end471:                                        ; preds = %land.rhs467, %if.else461, %if.then460
  %139 = load i32* %sv_flags462, align 4, !tbaa !3
  %and473 = and i32 %139, 118423552
  %tobool474 = icmp eq i32 %and473, 0
  br i1 %tobool474, label %if.else520, label %if.then475

if.then475:                                       ; preds = %if.end471
  %140 = load i8** %sv_any531, align 8, !tbaa !0
  %xpv_pv477 = bitcast i8* %140 to i8**
  %141 = load i8** %xpv_pv477, align 8, !tbaa !0
  %142 = load i8* %141, align 1, !tbaa !1
  switch i8 %142, label %if.then517 [
    i8 42, label %if.then482
    i8 36, label %if.end527
  ]

if.then482:                                       ; preds = %if.then475
  %sv_flags483 = getelementptr inbounds %struct.sv* %val.0, i64 0, i32 2
  %143 = load i32* %sv_flags483, align 4, !tbaa !3
  %and484 = and i32 %143, 524288
  %tobool485 = icmp eq i32 %and484, 0
  br i1 %tobool485, label %if.else505, label %if.then486

if.then486:                                       ; preds = %if.then482
  %sv_any487 = getelementptr inbounds %struct.sv* %val.0, i64 0, i32 0
  %144 = load i8** %sv_any487, align 8, !tbaa !0
  %xrv_rv488 = bitcast i8* %144 to %struct.sv**
  %145 = load %struct.sv** %xrv_rv488, align 8, !tbaa !0
  %sv_flags489 = getelementptr inbounds %struct.sv* %145, i64 0, i32 2
  %146 = load i32* %sv_flags489, align 4, !tbaa !3
  %and490 = and i32 %146, 255
  switch i32 %and490, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb494
    i32 12, label %sw.bb498
  ]

sw.bb:                                            ; preds = %if.then486
  store i8 64, i8* %141, align 1, !tbaa !1
  br label %if.end527

sw.bb494:                                         ; preds = %if.then486
  store i8 37, i8* %141, align 1, !tbaa !1
  br label %if.end527

sw.bb498:                                         ; preds = %if.then486
  store i8 42, i8* %141, align 1, !tbaa !1
  br label %if.end527

sw.default:                                       ; preds = %if.then486
  store i8 36, i8* %141, align 1, !tbaa !1
  br label %if.end527

if.else505:                                       ; preds = %if.then482
  store i8 36, i8* %141, align 1, !tbaa !1
  br label %if.end527

if.then517:                                       ; preds = %if.then475
  call void @Perl_sv_insert(%struct.sv* %call93, i64 0, i64 0, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), i64 1) #6
  br label %if.end527

if.else520:                                       ; preds = %if.end471
  call void @Perl_sv_setpvn(%struct.sv* %call93, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), i64 1) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call93, %struct.sv* %varname.0, i32 2) #6
  %147 = add nsw i64 %indvars.iv, 1
  %call523 = call i32 (i8*, i8*, ...)* @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i64 %147) #6
  %call525 = call i64 @strlen(i8* %6) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call93, i8* %6, i64 %call525, i32 2) #6
  br label %if.end527

if.end527:                                        ; preds = %if.then475, %sw.bb, %sw.bb494, %sw.bb498, %sw.default, %if.else505, %if.then517, %if.else520
  br i1 %cmp528, label %if.then530, label %if.end538

if.then530:                                       ; preds = %if.end527
  %148 = load i8** %sv_any531, align 8, !tbaa !0
  %xpv_cur532 = getelementptr inbounds i8* %148, i64 8
  %149 = bitcast i8* %xpv_cur532 to i64*
  %150 = load i64* %149, align 8, !tbaa !4
  %add533 = add i64 %150, 3
  %conv534 = trunc i64 %add533 to i32
  %call535 = call fastcc %struct.sv* @sv_x(%struct.sv* null, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), i64 1, i32 %conv534) #7
  %call536 = call %struct.sv* @Perl_newSVsv(%struct.sv* %apad.0) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call536, %struct.sv* %call535, i32 2) #6
  call void @Perl_sv_free(%struct.sv* %call535) #6
  br label %if.end538

if.end538:                                        ; preds = %if.end527, %if.then530
  %newapad.0 = phi %struct.sv* [ %call536, %if.then530 ], [ %apad.0, %if.end527 ]
  %151 = load i8** %sv_any531, align 8, !tbaa !0
  %xpv_pv540 = bitcast i8* %151 to i8**
  %152 = load i8** %xpv_pv540, align 8, !tbaa !0
  %xpv_cur542 = getelementptr inbounds i8* %151, i64 8
  %153 = bitcast i8* %xpv_cur542 to i64*
  %154 = load i64* %153, align 8, !tbaa !4
  call fastcc void @DD_dump(%struct.sv* %val.0, i8* %152, i64 %154, %struct.sv* %call450, %struct.hv* %seenhv.0, %struct.av* %call444, i32* %level, i32 %indent.0, %struct.sv* %pad.0, %struct.sv* %xpad.0, %struct.sv* %newapad.0, %struct.sv* %sep.0, %struct.sv* %pair.0, %struct.sv* %freezer.0, %struct.sv* %toaster.0, i32 %purity.0, i32 %deepcopy.0, i32 %quotekeys.0, %struct.sv* %bless.0, i32 %maxdepth.0, %struct.sv* %sortkeys.0) #7
  br i1 %cmp528, label %if.then546, label %if.end547

if.then546:                                       ; preds = %if.end538
  call void @Perl_sv_free(%struct.sv* %newapad.0) #6
  br label %if.end547

if.end547:                                        ; preds = %if.then546, %if.end538
  %call548 = call i32 @Perl_av_len(%struct.av* %call444) #6
  %cmp549 = icmp sgt i32 %call548, -1
  %or.cond = or i1 %cmp549, %tobool552
  br i1 %or.cond, label %if.then553, label %if.end558

if.then553:                                       ; preds = %if.end547
  call void @Perl_sv_insert(%struct.sv* %call450, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i64 3) #6
  %155 = load i8** %sv_any531, align 8, !tbaa !0
  %xpv_pv555 = bitcast i8* %155 to i8**
  %156 = load i8** %xpv_pv555, align 8, !tbaa !0
  %xpv_cur557 = getelementptr inbounds i8* %155, i64 8
  %157 = bitcast i8* %xpv_cur557 to i64*
  %158 = load i64* %157, align 8, !tbaa !4
  call void @Perl_sv_insert(%struct.sv* %call450, i64 0, i64 0, i8* %156, i64 %158) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call450, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i64 1, i32 2) #6
  br label %if.end558

if.end558:                                        ; preds = %if.end547, %if.then553
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %pad.0, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %call450, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %sep.0, i32 2) #6
  br i1 %cmp549, label %for.body566.lr.ph, label %if.end577

for.body566.lr.ph:                                ; preds = %if.end558
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %pad.0, i32 2) #6
  br label %for.body566

for.body566:                                      ; preds = %for.inc, %for.body566.lr.ph
  %i562.0797 = phi i32 [ 0, %for.body566.lr.ph ], [ %inc, %for.inc ]
  %call567 = call %struct.sv** @Perl_av_fetch(%struct.av* %call444, i32 %i562.0797, i32 0) #6
  %tobool568 = icmp eq %struct.sv** %call567, null
  br i1 %tobool568, label %for.inc, label %land.lhs.true569

land.lhs.true569:                                 ; preds = %for.body566
  %159 = load %struct.sv** %call567, align 8, !tbaa !0
  %tobool570 = icmp eq %struct.sv* %159, null
  br i1 %tobool570, label %for.inc, label %if.then571

if.then571:                                       ; preds = %land.lhs.true569
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %159, i32 2) #6
  %cmp572 = icmp slt i32 %i562.0797, %call548
  br i1 %cmp572, label %if.then574, label %for.inc

if.then574:                                       ; preds = %if.then571
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval.0800, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i64 1, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %sep.0, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %pad.0, i32 2) #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true569, %for.body566, %if.then574, %if.then571
  %inc = add nsw i32 %i562.0797, 1
  %exitcond = icmp eq i32 %i562.0797, %call548
  br i1 %exitcond, label %for.end, label %for.body566

for.end:                                          ; preds = %for.inc
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval.0800, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i64 1, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval.0800, %struct.sv* %sep.0, i32 2) #6
  br label %if.end577

if.end577:                                        ; preds = %for.end, %if.end558
  call void @Perl_sv_setpvn(%struct.sv* %call450, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  br i1 %cmp578, label %if.then580, label %for.inc598

if.then580:                                       ; preds = %if.end577
  %160 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast581 = ptrtoint %struct.sv** %160 to i64
  %sub.ptr.rhs.cast582 = ptrtoint %struct.sv** %sp.6801 to i64
  %sub.ptr.sub583 = sub i64 %sub.ptr.lhs.cast581, %sub.ptr.rhs.cast582
  %cmp585 = icmp slt i64 %sub.ptr.sub583, 8
  br i1 %cmp585, label %if.then587, label %if.end589

if.then587:                                       ; preds = %if.then580
  %call588 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.6801, %struct.sv** %sp.6801, i32 1) #6
  br label %if.end589

if.end589:                                        ; preds = %if.then587, %if.then580
  %sp.7 = phi %struct.sv** [ %call588, %if.then587 ], [ %sp.6801, %if.then580 ]
  %call590 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %retval.0800) #6
  %incdec.ptr591 = getelementptr inbounds %struct.sv** %sp.7, i64 1
  store %struct.sv* %call590, %struct.sv** %incdec.ptr591, align 8, !tbaa !0
  %cmp592 = icmp slt i32 %135, %call447
  br i1 %cmp592, label %if.then594, label %for.inc598

if.then594:                                       ; preds = %if.end589
  %call595 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  br label %for.inc598

for.inc598:                                       ; preds = %if.end577, %if.then594, %if.end589
  %retval.1 = phi %struct.sv* [ %call595, %if.then594 ], [ %retval.0800, %if.end589 ], [ %retval.0800, %if.end577 ]
  %sp.8 = phi %struct.sv** [ %incdec.ptr591, %if.then594 ], [ %incdec.ptr591, %if.end589 ], [ %sp.6801, %if.end577 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond804 = icmp eq i32 %lftr.wideiv, %134
  br i1 %exitcond804, label %for.end600, label %for.body

for.end600:                                       ; preds = %for.inc598, %if.end449.thread, %if.end449
  %call450809 = phi %struct.sv* [ %call450, %if.end449 ], [ %call450807, %if.end449.thread ], [ %call450, %for.inc598 ]
  %sp.6.lcssa = phi %struct.sv** [ %sp.5, %if.end449 ], [ %sp.5, %if.end449.thread ], [ %sp.8, %for.inc598 ]
  %retval.0.lcssa = phi %struct.sv* [ %call94, %if.end449 ], [ %call94, %if.end449.thread ], [ %retval.1, %for.inc598 ]
  %161 = bitcast %struct.av* %call444 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %161) #6
  call void @Perl_sv_free(%struct.sv* %call450809) #6
  br label %if.end602

if.else601:                                       ; preds = %land.lhs.true, %if.end92, %land.lhs.true99
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([47 x i8]* @.str28, i64 0, i64 0)) #6
  br label %if.end602

if.end602:                                        ; preds = %if.else601, %for.end600
  %retval.2 = phi %struct.sv* [ %retval.0.lcssa, %for.end600 ], [ %call94, %if.else601 ]
  %sp.9 = phi %struct.sv** [ %sp.6.lcssa, %for.end600 ], [ %sp.5, %if.else601 ]
  %cmp603 = icmp eq i32 %cond16, 0
  br i1 %cmp603, label %if.then605, label %if.end617

if.then605:                                       ; preds = %if.end602
  %162 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast606 = ptrtoint %struct.sv** %162 to i64
  %sub.ptr.rhs.cast607 = ptrtoint %struct.sv** %sp.9 to i64
  %sub.ptr.sub608 = sub i64 %sub.ptr.lhs.cast606, %sub.ptr.rhs.cast607
  %cmp610 = icmp slt i64 %sub.ptr.sub608, 8
  br i1 %cmp610, label %if.then612, label %if.end614

if.then612:                                       ; preds = %if.then605
  %call613 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.9, %struct.sv** %sp.9, i32 1) #6
  br label %if.end614

if.end614:                                        ; preds = %if.then612, %if.then605
  %sp.10 = phi %struct.sv** [ %call613, %if.then612 ], [ %sp.9, %if.then605 ]
  %call615 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %retval.2) #6
  %incdec.ptr616 = getelementptr inbounds %struct.sv** %sp.10, i64 1
  store %struct.sv* %call615, %struct.sv** %incdec.ptr616, align 8, !tbaa !0
  br label %if.end617

if.end617:                                        ; preds = %if.end614, %if.end602
  %sp.11 = phi %struct.sv** [ %incdec.ptr616, %if.end614 ], [ %sp.9, %if.end602 ]
  call void @llvm.lifetime.end(i64 1024, i8* %6) #2
  store %struct.sv** %sp.11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @Perl_dowantarray() #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #1

; Function Attrs: optsize
declare void @Perl_av_clear(%struct.av*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @sv_x(%struct.sv* %sv, i8* %str, i64 %len, i32 %n) #0 {
entry:
  %cmp = icmp eq %struct.sv* %sv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sv.addr.0 = phi %struct.sv* [ %call, %if.then ], [ %sv, %entry ]
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %if.then2, label %if.end39

if.then2:                                         ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %0, i64 16
  %1 = bitcast i8* %xpv_len to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %conv = sext i32 %n to i64
  %mul = mul i64 %conv, %len
  %xpv_cur = getelementptr inbounds i8* %0, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  %add = add i64 %mul, 1
  %add4 = add i64 %add, %4
  %cmp5 = icmp ult i64 %2, %add4
  br i1 %cmp5, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then2
  %call13 = tail call i8* @Perl_sv_grow(%struct.sv* %sv.addr.0, i64 %add4) #6
  br label %cond.end

cond.end:                                         ; preds = %if.then2, %cond.true
  %cmp15 = icmp eq i64 %len, 1
  br i1 %cmp15, label %while.body.lr.ph, label %while.body35

while.body.lr.ph:                                 ; preds = %cond.end
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv19 = bitcast i8* %5 to i8**
  %6 = load i8** %xpv_pv19, align 8, !tbaa !0
  %xpv_cur21 = getelementptr inbounds i8* %5, i64 8
  %7 = bitcast i8* %xpv_cur21 to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  %add25 = add i64 %8, %conv
  store i64 %add25, i64* %7, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %6, i64 %add25
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %conv, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %9 = load i8* %str, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %add.ptr.sum62 = add i64 %indvars.iv.next, %8
  %arrayidx30 = getelementptr inbounds i8* %6, i64 %add.ptr.sum62
  store i8 %9, i8* %arrayidx30, align 1, !tbaa !1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp26 = icmp sgt i32 %10, 0
  br i1 %cmp26, label %while.body, label %if.end39

while.body35:                                     ; preds = %cond.end, %while.body35
  %n.addr.167 = phi i32 [ %dec36, %while.body35 ], [ %n, %cond.end ]
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %sv.addr.0, i8* %str, i64 %len, i32 2) #6
  %dec36 = add nsw i32 %n.addr.167, -1
  %cmp33 = icmp sgt i32 %dec36, 0
  br i1 %cmp33, label %while.body35, label %if.end39

if.end39:                                         ; preds = %while.body35, %while.body, %if.end
  ret %struct.sv* %sv.addr.0
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DD_dump(%struct.sv* %val, i8* %name, i64 %namelen, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %apad, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #0 {
entry:
  %tmpbuf = alloca [128 x i8], align 16
  %id = alloca [128 x i8], align 16
  %rlen = alloca i64, align 8
  %vallen = alloca i64, align 8
  %blesslen = alloca i64, align 8
  %keylen = alloca i64, align 8
  %i891 = alloca i64, align 8
  %nlevel = alloca i32, align 4
  %0 = getelementptr inbounds [128 x i8]* %tmpbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = getelementptr inbounds [128 x i8]* %id, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %1) #2
  %tobool = icmp eq %struct.sv* %val, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %val, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %and3 = and i32 %2, 8192
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %call = call i32 @Perl_mg_get(%struct.sv* %val) #6
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  %3 = phi i32 [ %2, %if.end ], [ %.pre, %if.then5 ]
  %and8 = and i32 %3, 524288
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.else890, label %if.then10

if.then10:                                        ; preds = %if.end6
  %sv_any = getelementptr inbounds %struct.sv* %val, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %4 to %struct.sv**
  %5 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags11 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags11, align 4, !tbaa !3
  %and12 = and i32 %6, 4096
  %tobool13 = icmp eq i32 %and12, 0
  %tobool14 = icmp eq %struct.sv* %freezer, null
  %or.cond = or i1 %tobool13, %tobool14
  br i1 %or.cond, label %if.end118, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then10
  %sv_flags16 = getelementptr inbounds %struct.sv* %freezer, i64 0, i32 2
  %7 = load i32* %sv_flags16, align 4, !tbaa !3
  %and17 = and i32 %7, 262144
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %if.end118, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %sv_any20 = getelementptr inbounds %struct.sv* %freezer, i64 0, i32 0
  %8 = load i8** %sv_any20, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  %tobool21 = icmp eq i64 %10, 0
  br i1 %tobool21, label %if.end118, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %sv_any25 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %11 = load i8** %sv_any25, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %11, i64 48
  %12 = bitcast i8* %xmg_stash to %struct.hv**
  %13 = load %struct.hv** %12, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %14 = load i8** %xpv_pv, align 8, !tbaa !0
  %call29 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %13, i8* %14, i64 %10, i32 -1) #6
  %cmp = icmp eq %struct.gv* %call29, null
  br i1 %cmp, label %if.end118, label %if.then30

if.then30:                                        ; preds = %land.lhs.true22
  %15 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_push_scope() #6
  call void @Perl_save_int(i32* @PL_tmps_floor) #6
  %16 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %16, i32* @PL_tmps_floor, align 4, !tbaa !3
  %17 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %17, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %18 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp31 = icmp eq i32* %incdec.ptr, %18
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  call void @Perl_markstack_grow() #6
  %.pre106 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  %19 = phi i32* [ %.pre106, %if.then32 ], [ %incdec.ptr, %if.then30 ]
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div16 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div16 to i32
  store i32 %conv, i32* %19, align 4, !tbaa !3
  %21 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast34 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.lhs.cast
  %cmp38 = icmp slt i64 %sub.ptr.sub36, 8
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end33
  %call41 = call %struct.sv** @Perl_stack_grow(%struct.sv** %15, %struct.sv** %15, i32 1) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end33
  %sp.0 = phi %struct.sv** [ %call41, %if.then40 ], [ %15, %if.end33 ]
  %incdec.ptr43 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %val, %struct.sv** %incdec.ptr43, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr43, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %22 = load i8** %sv_any20, align 8, !tbaa !0
  %xpv_pv45 = bitcast i8* %22 to i8**
  %23 = load i8** %xpv_pv45, align 8, !tbaa !0
  %call46 = call i32 @Perl_call_method(i8* %23, i32 132) #6
  %24 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %25 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any47 = getelementptr inbounds %struct.gv* %25, i64 0, i32 0
  %26 = load %struct.xpvgv** %sv_any47, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %26, i64 0, i32 7
  %27 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %27, i64 0, i32 0
  %28 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool48 = icmp eq %struct.sv* %28, null
  br i1 %tobool48, label %if.end113, label %cond.false

cond.false:                                       ; preds = %if.end42
  %sv_flags52 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags52, align 4, !tbaa !3
  %and53 = and i32 %29, 262144
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %cond.false74, label %cond.true55

cond.true55:                                      ; preds = %cond.false
  %sv_any59 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %30 = load i8** %sv_any59, align 8, !tbaa !0
  %31 = bitcast i8* %30 to %struct.xpv*
  store %struct.xpv* %31, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool60 = icmp eq i8* %30, null
  br i1 %tobool60, label %if.end113, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %cond.true55
  %xpv_cur62 = getelementptr inbounds i8* %30, i64 8
  %32 = bitcast i8* %xpv_cur62 to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  %cmp63 = icmp ugt i64 %33, 1
  br i1 %cmp63, label %if.then109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true61
  %tobool66 = icmp eq i64 %33, 0
  br i1 %tobool66, label %if.end113, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %lor.lhs.false
  %xpv_pv68 = bitcast i8* %30 to i8**
  %34 = load i8** %xpv_pv68, align 8, !tbaa !0
  %35 = load i8* %34, align 1, !tbaa !1
  %cmp70 = icmp eq i8 %35, 48
  br i1 %cmp70, label %if.end113, label %if.then109

cond.false74:                                     ; preds = %cond.false
  %and79 = and i32 %29, 65536
  %tobool80 = icmp eq i32 %and79, 0
  br i1 %tobool80, label %cond.false88, label %cond.true81

cond.true81:                                      ; preds = %cond.false74
  %sv_any85 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %36 = load i8** %sv_any85, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %36, i64 24
  %37 = bitcast i8* %xiv_iv to i64*
  %38 = load i64* %37, align 8, !tbaa !4
  %cmp86 = icmp eq i64 %38, 0
  br i1 %cmp86, label %if.end113, label %if.then109

cond.false88:                                     ; preds = %cond.false74
  %and93 = and i32 %29, 131072
  %tobool94 = icmp eq i32 %and93, 0
  br i1 %tobool94, label %cond.false102, label %cond.true95

cond.true95:                                      ; preds = %cond.false88
  %sv_any99 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %39 = load i8** %sv_any99, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %39, i64 32
  %40 = bitcast i8* %xnv_nv to double*
  %41 = load double* %40, align 8, !tbaa !5
  %cmp100 = fcmp une double %41, 0.000000e+00
  br i1 %cmp100, label %if.then109, label %if.end113

cond.false102:                                    ; preds = %cond.false88
  %call106 = call signext i8 @Perl_sv_2bool(%struct.sv* %28) #6
  %tobool108 = icmp eq i8 %call106, 0
  br i1 %tobool108, label %if.end113, label %cond.false102.if.then109_crit_edge

cond.false102.if.then109_crit_edge:               ; preds = %cond.false102
  %.pre108 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  br label %if.then109

if.then109:                                       ; preds = %land.lhs.true67, %land.lhs.true61, %cond.false102.if.then109_crit_edge, %cond.true81, %cond.true95
  %42 = phi %struct.gv* [ %.pre108, %cond.false102.if.then109_crit_edge ], [ %25, %cond.true81 ], [ %25, %cond.true95 ], [ %25, %land.lhs.true61 ], [ %25, %land.lhs.true67 ]
  %sv_any110 = getelementptr inbounds %struct.gv* %42, i64 0, i32 0
  %43 = load %struct.xpvgv** %sv_any110, align 8, !tbaa !0
  %xgv_gp111 = getelementptr inbounds %struct.xpvgv* %43, i64 0, i32 7
  %44 = load %struct.gp** %xgv_gp111, align 8, !tbaa !0
  %gp_sv112 = getelementptr inbounds %struct.gp* %44, i64 0, i32 0
  %45 = load %struct.sv** %gp_sv112, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([40 x i8]* @.str32, i64 0, i64 0), %struct.sv* %45) #6
  br label %if.end113

if.end113:                                        ; preds = %land.lhs.true67, %lor.lhs.false, %cond.true55, %cond.true81, %cond.false102, %if.end42, %if.then109, %cond.true95
  store %struct.sv** %24, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %46 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %47 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp114 = icmp sgt i32 %46, %47
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end113
  call void @Perl_free_tmps() #6
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end113
  call void @Perl_pop_scope() #6
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true22, %land.lhs.true19, %land.lhs.true15, %if.then10, %if.end117
  %48 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv120 = bitcast i8* %48 to %struct.sv**
  %49 = load %struct.sv** %xrv_rv120, align 8, !tbaa !0
  %sv_flags121 = getelementptr inbounds %struct.sv* %49, i64 0, i32 2
  %50 = load i32* %sv_flags121, align 4, !tbaa !3
  %and122 = and i32 %50, 255
  %51 = ptrtoint %struct.sv* %49 to i64
  %call123 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0), i64 %51) #6
  %call125 = call i64 @strlen(i8* %1) #6
  %52 = load i32* %sv_flags121, align 4, !tbaa !3
  %and127 = and i32 %52, 4096
  %tobool128 = icmp eq i32 %and127, 0
  br i1 %tobool128, label %if.end133, label %if.then129

if.then129:                                       ; preds = %if.end118
  %sv_any130 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %53 = load i8** %sv_any130, align 8, !tbaa !0
  %xmg_stash131 = getelementptr inbounds i8* %53, i64 48
  %54 = bitcast i8* %xmg_stash131 to %struct.hv**
  %55 = load %struct.hv** %54, align 8, !tbaa !0
  %sv_any132 = getelementptr inbounds %struct.hv* %55, i64 0, i32 0
  %56 = load %struct.xpvhv** %sv_any132, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %56, i64 0, i32 10
  %57 = load i8** %xhv_name, align 8, !tbaa !0
  br label %if.end133

if.end133:                                        ; preds = %if.end118, %if.then129
  %realpack.0 = phi i8* [ %57, %if.then129 ], [ null, %if.end118 ]
  %tobool134 = icmp eq i64 %namelen, 0
  br i1 %tobool134, label %if.end248, label %if.then135

if.then135:                                       ; preds = %if.end133
  %conv137 = trunc i64 %call125 to i32
  %call138 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %seenhv, i8* %1, i32 %conv137, i32 0) #6
  %tobool139 = icmp eq %struct.sv** %call138, null
  br i1 %tobool139, label %if.else209, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %if.then135
  %58 = load %struct.sv** %call138, align 8, !tbaa !0
  %tobool141 = icmp eq %struct.sv* %58, null
  br i1 %tobool141, label %if.else209, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %land.lhs.true140
  %sv_flags143 = getelementptr inbounds %struct.sv* %58, i64 0, i32 2
  %59 = load i32* %sv_flags143, align 4, !tbaa !3
  %and144 = and i32 %59, 524288
  %tobool145 = icmp eq i32 %and144, 0
  br i1 %tobool145, label %if.else209, label %land.lhs.true146

land.lhs.true146:                                 ; preds = %land.lhs.true142
  %sv_any147 = getelementptr inbounds %struct.sv* %58, i64 0, i32 0
  %60 = load i8** %sv_any147, align 8, !tbaa !0
  %xrv_rv148 = bitcast i8* %60 to %struct.sv**
  %61 = load %struct.sv** %xrv_rv148, align 8, !tbaa !0
  %tobool149 = icmp eq %struct.sv* %61, null
  br i1 %tobool149, label %if.else209, label %if.then150

if.then150:                                       ; preds = %land.lhs.true146
  %62 = bitcast %struct.sv* %61 to %struct.av*
  %call151 = call %struct.sv** @Perl_av_fetch(%struct.av* %62, i32 0, i32 0) #6
  %tobool152 = icmp eq %struct.sv** %call151, null
  br i1 %tobool152, label %if.else207, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %if.then150
  %63 = load %struct.sv** %call151, align 8, !tbaa !0
  %tobool154 = icmp eq %struct.sv* %63, null
  br i1 %tobool154, label %if.else207, label %if.then155

if.then155:                                       ; preds = %land.lhs.true153
  %tobool156 = icmp eq i32 %purity, 0
  br i1 %tobool156, label %if.else172, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.then155
  %64 = load i32* %levelp, align 4, !tbaa !3
  %cmp158 = icmp sgt i32 %64, 0
  br i1 %cmp158, label %if.then160, label %if.else172

if.then160:                                       ; preds = %land.lhs.true157
  switch i32 %and122, label %if.else168 [
    i32 11, label %if.then163
    i32 10, label %if.then167
  ]

if.then163:                                       ; preds = %if.then160
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end170

if.then167:                                       ; preds = %if.then160
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end170

if.else168:                                       ; preds = %if.then160
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([10 x i8]* @.str36, i64 0, i64 0), i64 9, i32 2) #6
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.else168, %if.then163
  %call171 = call %struct.sv* @Perl_newSVpvn(i8* %name, i64 %namelen) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call171, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i64 3, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call171, %struct.sv* %63, i32 2) #6
  call void @Perl_av_push(%struct.av* %postav, %struct.sv* %call171) #6
  br label %cleanup

if.else172:                                       ; preds = %if.then155, %land.lhs.true157
  %65 = load i8* %name, align 1, !tbaa !1
  switch i8 %65, label %if.else204 [
    i8 64, label %if.then181
    i8 37, label %if.then181
  ]

if.then181:                                       ; preds = %if.else172, %if.else172
  %sv_any182 = getelementptr inbounds %struct.sv* %63, i64 0, i32 0
  %66 = load i8** %sv_any182, align 8, !tbaa !0
  %xpv_pv183 = bitcast i8* %66 to i8**
  %67 = load i8** %xpv_pv183, align 8, !tbaa !0
  %68 = load i8* %67, align 1, !tbaa !1
  %cmp186 = icmp eq i8 %68, 92
  br i1 %cmp186, label %land.lhs.true188, label %if.else202

land.lhs.true188:                                 ; preds = %if.then181
  %arrayidx191 = getelementptr inbounds i8* %67, i64 1
  %69 = load i8* %arrayidx191, align 1, !tbaa !1
  %cmp195 = icmp eq i8 %69, %65
  br i1 %cmp195, label %if.then197, label %if.else202

if.then197:                                       ; preds = %land.lhs.true188
  %xpv_cur201 = getelementptr inbounds i8* %66, i64 8
  %70 = bitcast i8* %xpv_cur201 to i64*
  %71 = load i64* %70, align 8, !tbaa !4
  %sub = add i64 %71, -1
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %arrayidx191, i64 %sub, i32 2) #6
  br label %cleanup

if.else202:                                       ; preds = %land.lhs.true188, %if.then181
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %name, i64 1, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i64 1, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %63, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0), i64 1, i32 2) #6
  br label %cleanup

if.else204:                                       ; preds = %if.else172
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %63, i32 2) #6
  br label %cleanup

if.else207:                                       ; preds = %land.lhs.true153, %if.then150
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i8* %1) #6
  br label %cleanup

if.else209:                                       ; preds = %land.lhs.true146, %land.lhs.true142, %land.lhs.true140, %if.then135
  %72 = load i8* %name, align 1, !tbaa !1
  switch i8 %72, label %if.else221 [
    i8 64, label %if.then219
    i8 37, label %if.then219
  ]

if.then219:                                       ; preds = %if.else209, %if.else209
  %call220 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i64 1) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call220, i8* %name, i64 %namelen, i32 2) #6
  br label %land.end

if.else221:                                       ; preds = %if.else209
  %cmp222 = icmp eq i32 %and122, 12
  %cmp227 = icmp eq i8 %72, 42
  %or.cond17 = and i1 %cmp222, %cmp227
  br i1 %or.cond17, label %if.then229, label %if.else234

if.then229:                                       ; preds = %if.else221
  %call230 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i64 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call230, i8* %name, i64 %namelen, i32 2) #6
  %sv_any231 = getelementptr inbounds %struct.sv* %call230, i64 0, i32 0
  %73 = load i8** %sv_any231, align 8, !tbaa !0
  %xpv_pv232 = bitcast i8* %73 to i8**
  %74 = load i8** %xpv_pv232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i8* %74, i64 1
  store i8 38, i8* %arrayidx233, align 1, !tbaa !1
  br label %land.end

if.else234:                                       ; preds = %if.else221
  %call235 = call %struct.sv* @Perl_newSVpvn(i8* %name, i64 %namelen) #6
  br label %land.end

land.end:                                         ; preds = %if.then229, %if.else234, %if.then219
  %namesv.0 = phi %struct.sv* [ %call220, %if.then219 ], [ %call230, %if.then229 ], [ %call235, %if.else234 ]
  %call238 = call %struct.av* @Perl_newAV() #6
  call void @Perl_av_push(%struct.av* %call238, %struct.sv* %namesv.0) #6
  store %struct.sv* %val, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %val, i64 0, i32 1
  %75 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %75, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  call void @Perl_av_push(%struct.av* %call238, %struct.sv* %val) #6
  %call243 = call i64 @strlen(i8* %1) #6
  %conv244 = trunc i64 %call243 to i32
  %76 = bitcast %struct.av* %call238 to %struct.sv*
  %call245 = call %struct.sv* @Perl_newRV(%struct.sv* %76) #6
  %call246 = call %struct.sv** @Perl_hv_store(%struct.hv* %seenhv, i8* %1, i32 %conv244, %struct.sv* %call245, i32 0) #6
  call void @Perl_sv_free(%struct.sv* %76) #6
  br label %if.end248

if.end248:                                        ; preds = %if.end133, %land.end
  %seenentry.0 = phi %struct.av* [ %call238, %land.end ], [ null, %if.end133 ]
  %tobool249 = icmp ne i8* %realpack.0, null
  br i1 %tobool249, label %land.lhs.true250, label %if.end280

land.lhs.true250:                                 ; preds = %if.end248
  %77 = load i8* %realpack.0, align 1, !tbaa !1
  %cmp252 = icmp eq i8 %77, 82
  br i1 %cmp252, label %land.lhs.true254, label %if.end280

land.lhs.true254:                                 ; preds = %land.lhs.true250
  %call255 = call i32 @strcmp(i8* %realpack.0, i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0)) #6
  %tobool256 = icmp eq i32 %call255, 0
  br i1 %tobool256, label %if.then257, label %if.end280

if.then257:                                       ; preds = %land.lhs.true254
  %78 = load i32* %sv_flags, align 4, !tbaa !3
  %and259 = and i32 %78, 262144
  %cmp260 = icmp eq i32 %and259, 0
  br i1 %cmp260, label %cond.false267, label %cond.true262

cond.true262:                                     ; preds = %if.then257
  %79 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur264 = getelementptr inbounds i8* %79, i64 8
  %80 = bitcast i8* %xpv_cur264 to i64*
  %81 = load i64* %80, align 8, !tbaa !4
  store i64 %81, i64* %rlen, align 8, !tbaa !4
  %xpv_pv266 = bitcast i8* %79 to i8**
  %82 = load i8** %xpv_pv266, align 8, !tbaa !0
  br label %cond.end

cond.false267:                                    ; preds = %if.then257
  %call268 = call i8* @Perl_sv_2pv_flags(%struct.sv* %val, i64* %rlen, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false267, %cond.true262
  %cond = phi i8* [ %82, %cond.true262 ], [ %call268, %cond.false267 ]
  %call269 = call i8* @strchr(i8* %cond, i32 47) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i64 3, i32 2) #6
  %tobool27076 = icmp eq i8* %call269, null
  br i1 %tobool27076, label %cond.end.while.end_crit_edge, label %while.body

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  %.pre107 = load i64* %rlen, align 8, !tbaa !4
  br label %while.end

while.body:                                       ; preds = %cond.end, %while.body
  %rval.078 = phi i8* [ %add.ptr278, %while.body ], [ %cond, %cond.end ]
  %slash.077 = phi i8* [ %call279, %while.body ], [ %call269, %cond.end ]
  %sub.ptr.lhs.cast271 = ptrtoint i8* %slash.077 to i64
  %sub.ptr.rhs.cast272 = ptrtoint i8* %rval.078 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %rval.078, i64 %sub.ptr.sub273, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i32 2) #6
  %83 = load i64* %rlen, align 8, !tbaa !4
  %add.neg = xor i64 %sub.ptr.sub273, -1
  %sub277 = add i64 %83, %add.neg
  store i64 %sub277, i64* %rlen, align 8, !tbaa !4
  %add.ptr278 = getelementptr inbounds i8* %slash.077, i64 1
  %call279 = call i8* @strchr(i8* %add.ptr278, i32 47) #6
  %tobool270 = icmp eq i8* %call279, null
  br i1 %tobool270, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %cond.end.while.end_crit_edge
  %84 = phi i64 [ %.pre107, %cond.end.while.end_crit_edge ], [ %sub277, %while.body ]
  %rval.0.lcssa = phi i8* [ %cond, %cond.end.while.end_crit_edge ], [ %add.ptr278, %while.body ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %rval.0.lcssa, i64 %84, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0), i64 1, i32 2) #6
  br label %cleanup

if.end280:                                        ; preds = %land.lhs.true254, %land.lhs.true250, %if.end248
  %tobool281 = icmp ne i32 %purity, 0
  %tobool281.not = xor i1 %tobool281, true
  %cmp283 = icmp sgt i32 %maxdepth, 0
  %or.cond18 = and i1 %cmp283, %tobool281.not
  br i1 %or.cond18, label %land.lhs.true285, label %if.end302

land.lhs.true285:                                 ; preds = %if.end280
  %85 = load i32* %levelp, align 4, !tbaa !3
  %cmp286 = icmp slt i32 %85, %maxdepth
  br i1 %cmp286, label %if.end302, label %if.then288

if.then288:                                       ; preds = %land.lhs.true285
  %86 = load i32* %sv_flags, align 4, !tbaa !3
  %and290 = and i32 %86, 262144
  %cmp291 = icmp eq i32 %and290, 0
  br i1 %cmp291, label %cond.false298, label %cond.true293

cond.true293:                                     ; preds = %if.then288
  %87 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur295 = getelementptr inbounds i8* %87, i64 8
  %88 = bitcast i8* %xpv_cur295 to i64*
  %89 = load i64* %88, align 8, !tbaa !4
  store i64 %89, i64* %vallen, align 8, !tbaa !4
  %xpv_pv297 = bitcast i8* %87 to i8**
  %90 = load i8** %xpv_pv297, align 8, !tbaa !0
  br label %cond.end300

cond.false298:                                    ; preds = %if.then288
  %call299 = call i8* @Perl_sv_2pv_flags(%struct.sv* %val, i64* %vallen, i32 2) #6
  br label %cond.end300

cond.end300:                                      ; preds = %cond.false298, %cond.true293
  %cond301 = phi i8* [ %90, %cond.true293 ], [ %call299, %cond.false298 ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), i64 1, i32 2) #6
  %91 = load i64* %vallen, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %cond301, i64 %91, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), i64 1, i32 2) #6
  br label %cleanup

if.end302:                                        ; preds = %if.end280, %land.lhs.true285
  br i1 %tobool249, label %if.then304, label %if.end326

if.then304:                                       ; preds = %if.end302
  %sv_flags305 = getelementptr inbounds %struct.sv* %bless, i64 0, i32 2
  %92 = load i32* %sv_flags305, align 4, !tbaa !3
  %and306 = and i32 %92, 262144
  %cmp307 = icmp eq i32 %and306, 0
  br i1 %cmp307, label %cond.false314, label %cond.true309

cond.true309:                                     ; preds = %if.then304
  %sv_any310 = getelementptr inbounds %struct.sv* %bless, i64 0, i32 0
  %93 = load i8** %sv_any310, align 8, !tbaa !0
  %xpv_cur311 = getelementptr inbounds i8* %93, i64 8
  %94 = bitcast i8* %xpv_cur311 to i64*
  %95 = load i64* %94, align 8, !tbaa !4
  store i64 %95, i64* %blesslen, align 8, !tbaa !4
  %xpv_pv313 = bitcast i8* %93 to i8**
  %96 = load i8** %xpv_pv313, align 8, !tbaa !0
  br label %cond.end316

cond.false314:                                    ; preds = %if.then304
  %call315 = call i8* @Perl_sv_2pv_flags(%struct.sv* %bless, i64* %blesslen, i32 2) #6
  %.pre100 = load i64* %blesslen, align 8, !tbaa !4
  br label %cond.end316

cond.end316:                                      ; preds = %cond.false314, %cond.true309
  %97 = phi i64 [ %95, %cond.true309 ], [ %.pre100, %cond.false314 ]
  %cond317 = phi i8* [ %96, %cond.true309 ], [ %call315, %cond.false314 ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %cond317, i64 %97, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str46, i64 0, i64 0), i64 2, i32 2) #6
  %cmp318 = icmp sgt i32 %indent, 1
  br i1 %cmp318, label %if.then320, label %if.end326

if.then320:                                       ; preds = %cond.end316
  %call321 = call %struct.sv* @Perl_newSVsv(%struct.sv* %apad) #6
  %98 = load i64* %blesslen, align 8, !tbaa !4
  %add322 = add i64 %98, 2
  %conv323 = trunc i64 %add322 to i32
  %call324 = call fastcc %struct.sv* @sv_x(%struct.sv* %call321, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), i64 1, i32 %conv323) #7
  br label %if.end326

if.end326:                                        ; preds = %cond.end316, %if.end302, %if.then320
  %apad.addr.0 = phi %struct.sv* [ %call321, %if.then320 ], [ %apad, %if.end302 ], [ %apad, %cond.end316 ]
  %99 = load i32* %levelp, align 4, !tbaa !3
  %inc327 = add nsw i32 %99, 1
  store i32 %inc327, i32* %levelp, align 4, !tbaa !3
  %sv_any328 = getelementptr inbounds %struct.sv* %xpad, i64 0, i32 0
  %100 = load i8** %sv_any328, align 8, !tbaa !0
  %xpv_pv329 = bitcast i8* %100 to i8**
  %101 = load i8** %xpv_pv329, align 8, !tbaa !0
  %xpv_cur331 = getelementptr inbounds i8* %100, i64 8
  %102 = bitcast i8* %xpv_cur331 to i64*
  %103 = load i64* %102, align 8, !tbaa !4
  %call332 = call fastcc %struct.sv* @sv_x(%struct.sv* null, i8* %101, i64 %103, i32 %inc327) #7
  %cmp333 = icmp ult i32 %and122, 9
  br i1 %cmp333, label %if.then335, label %if.else352

if.then335:                                       ; preds = %if.end326
  %call337 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i64 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call337, i8* %name, i64 %namelen, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call337, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0), i64 1, i32 2) #6
  br i1 %tobool249, label %if.then339, label %if.else345

if.then339:                                       ; preds = %if.then335
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0), i64 13, i32 2) #6
  %sv_any340 = getelementptr inbounds %struct.sv* %call337, i64 0, i32 0
  %104 = load i8** %sv_any340, align 8, !tbaa !0
  %xpv_pv341 = bitcast i8* %104 to i8**
  %105 = load i8** %xpv_pv341, align 8, !tbaa !0
  %xpv_cur343 = getelementptr inbounds i8* %104, i64 8
  %106 = bitcast i8* %xpv_cur343 to i64*
  %107 = load i64* %106, align 8, !tbaa !4
  call fastcc void @DD_dump(%struct.sv* %49, i8* %105, i64 %107, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %apad.addr.0, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #7
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str49, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end351

if.else345:                                       ; preds = %if.then335
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i64 1, i32 2) #6
  %sv_any346 = getelementptr inbounds %struct.sv* %call337, i64 0, i32 0
  %108 = load i8** %sv_any346, align 8, !tbaa !0
  %xpv_pv347 = bitcast i8* %108 to i8**
  %109 = load i8** %xpv_pv347, align 8, !tbaa !0
  %xpv_cur349 = getelementptr inbounds i8* %108, i64 8
  %110 = bitcast i8* %xpv_cur349 to i64*
  %111 = load i64* %110, align 8, !tbaa !4
  call fastcc void @DD_dump(%struct.sv* %49, i8* %109, i64 %111, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %apad.addr.0, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #7
  br label %if.end351

if.end351:                                        ; preds = %if.else345, %if.then339
  call void @Perl_sv_free(%struct.sv* %call337) #6
  br label %if.end870

if.else352:                                       ; preds = %if.end326
  switch i32 %and122, label %if.else865 [
    i32 13, label %if.then355
    i32 10, label %if.then366
    i32 11, label %if.then502
    i32 12, label %if.then861
  ]

if.then355:                                       ; preds = %if.else352
  %call357 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0), i64 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call357, i8* %name, i64 %namelen, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call357, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0), i64 1, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i64 1, i32 2) #6
  %sv_any358 = getelementptr inbounds %struct.sv* %call357, i64 0, i32 0
  %112 = load i8** %sv_any358, align 8, !tbaa !0
  %xpv_pv359 = bitcast i8* %112 to i8**
  %113 = load i8** %xpv_pv359, align 8, !tbaa !0
  %xpv_cur361 = getelementptr inbounds i8* %112, i64 8
  %114 = bitcast i8* %xpv_cur361 to i64*
  %115 = load i64* %114, align 8, !tbaa !4
  call fastcc void @DD_dump(%struct.sv* %49, i8* %113, i64 %115, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %apad.addr.0, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #7
  call void @Perl_sv_free(%struct.sv* %call357) #6
  br label %if.end870

if.then366:                                       ; preds = %if.else352
  %116 = bitcast %struct.sv* %49 to %struct.av*
  %call367 = call i32 @Perl_av_len(%struct.av* %116) #6
  %call368 = call %struct.sv* @Perl_newSViv(i64 0) #6
  %add369 = add i64 %namelen, 28
  %call370 = call i8* @Perl_safesysmalloc(i64 %add369) #6
  %call371 = call i8* @strcpy(i8* %call370, i8* %name) #6
  %117 = load i8* %name, align 1, !tbaa !1
  %cmp374 = icmp eq i8 %117, 64
  br i1 %cmp374, label %if.end418.thread, label %if.else378

if.end418.thread:                                 ; preds = %if.then366
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str51, i64 0, i64 0), i64 1, i32 2) #6
  store i8 36, i8* %call370, align 1, !tbaa !1
  br label %if.end452

if.else378:                                       ; preds = %if.then366
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i64 1, i32 2) #6
  br i1 %tobool134, label %if.end418, label %land.lhs.true381

land.lhs.true381:                                 ; preds = %if.else378
  %sub382 = add i64 %namelen, -1
  %arrayidx383 = getelementptr inbounds i8* %name, i64 %sub382
  %118 = load i8* %arrayidx383, align 1, !tbaa !1
  switch i8 %118, label %if.then411 [
    i8 93, label %lor.lhs.false393
    i8 125, label %lor.lhs.false393
  ]

lor.lhs.false393:                                 ; preds = %land.lhs.true381, %land.lhs.true381
  %cmp394 = icmp ugt i64 %namelen, 4
  br i1 %cmp394, label %land.lhs.true396, label %if.end418

land.lhs.true396:                                 ; preds = %lor.lhs.false393
  %arrayidx397 = getelementptr inbounds i8* %name, i64 1
  %119 = load i8* %arrayidx397, align 1, !tbaa !1
  %cmp399 = icmp eq i8 %119, 123
  br i1 %cmp399, label %if.then411, label %lor.lhs.false401

lor.lhs.false401:                                 ; preds = %land.lhs.true396
  %120 = load i8* %name, align 1, !tbaa !1
  %cmp404 = icmp eq i8 %120, 92
  br i1 %cmp404, label %land.lhs.true406, label %if.end418

land.lhs.true406:                                 ; preds = %lor.lhs.false401
  %arrayidx407 = getelementptr inbounds i8* %name, i64 2
  %121 = load i8* %arrayidx407, align 1, !tbaa !1
  %cmp409 = icmp eq i8 %121, 123
  br i1 %cmp409, label %if.then411, label %if.end418

if.then411:                                       ; preds = %land.lhs.true381, %land.lhs.true406, %land.lhs.true396
  %inc412 = add i64 %namelen, 1
  %arrayidx413 = getelementptr inbounds i8* %call370, i64 %namelen
  store i8 45, i8* %arrayidx413, align 1, !tbaa !1
  %inc414 = add i64 %namelen, 2
  %arrayidx415 = getelementptr inbounds i8* %call370, i64 %inc412
  store i8 62, i8* %arrayidx415, align 1, !tbaa !1
  %arrayidx416 = getelementptr inbounds i8* %call370, i64 %inc414
  store i8 0, i8* %arrayidx416, align 1, !tbaa !1
  br label %if.end418

if.end418:                                        ; preds = %if.else378, %lor.lhs.false393, %lor.lhs.false401, %land.lhs.true406, %if.then411
  %inamelen.0.ph = phi i64 [ %namelen, %lor.lhs.false393 ], [ %namelen, %lor.lhs.false401 ], [ %namelen, %land.lhs.true406 ], [ %inc414, %if.then411 ], [ 0, %if.else378 ]
  %.pr = load i8* %call370, align 1, !tbaa !1
  %cmp421 = icmp eq i8 %.pr, 42
  br i1 %cmp421, label %land.lhs.true423, label %if.end452

land.lhs.true423:                                 ; preds = %if.end418
  %sub424 = add i64 %inamelen.0.ph, -1
  %arrayidx425 = getelementptr inbounds i8* %call370, i64 %sub424
  %122 = load i8* %arrayidx425, align 1, !tbaa !1
  %cmp427 = icmp eq i8 %122, 125
  %cmp430 = icmp ugt i64 %inamelen.0.ph, 7
  %or.cond19 = and i1 %cmp427, %cmp430
  br i1 %or.cond19, label %land.lhs.true432, label %if.end452

land.lhs.true432:                                 ; preds = %land.lhs.true423
  %add.ptr433 = getelementptr inbounds i8* %call370, i64 %inamelen.0.ph
  %add.ptr433.sum = add i64 %inamelen.0.ph, -8
  %add.ptr434 = getelementptr inbounds i8* %call370, i64 %add.ptr433.sum
  %call435 = call i8* @Perl_instr(i8* %add.ptr434, i8* getelementptr inbounds ([9 x i8]* @.str53, i64 0, i64 0)) #6
  %tobool436 = icmp eq i8* %call435, null
  br i1 %tobool436, label %lor.lhs.false437, label %if.then447

lor.lhs.false437:                                 ; preds = %land.lhs.true432
  %add.ptr433.sum14 = add i64 %inamelen.0.ph, -7
  %add.ptr439 = getelementptr inbounds i8* %call370, i64 %add.ptr433.sum14
  %call440 = call i8* @Perl_instr(i8* %add.ptr439, i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0)) #6
  %tobool441 = icmp eq i8* %call440, null
  br i1 %tobool441, label %lor.lhs.false442, label %if.then447

lor.lhs.false442:                                 ; preds = %lor.lhs.false437
  %add.ptr433.sum15 = add i64 %inamelen.0.ph, -6
  %add.ptr444 = getelementptr inbounds i8* %call370, i64 %add.ptr433.sum15
  %call445 = call i8* @Perl_instr(i8* %add.ptr444, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0)) #6
  %tobool446 = icmp eq i8* %call445, null
  br i1 %tobool446, label %if.end452, label %if.then447

if.then447:                                       ; preds = %lor.lhs.false442, %lor.lhs.false437, %land.lhs.true432
  %inc448 = add i64 %inamelen.0.ph, 1
  store i8 45, i8* %add.ptr433, align 1, !tbaa !1
  %inc450 = add i64 %inamelen.0.ph, 2
  %arrayidx451 = getelementptr inbounds i8* %call370, i64 %inc448
  store i8 62, i8* %arrayidx451, align 1, !tbaa !1
  br label %if.end452

if.end452:                                        ; preds = %if.end418.thread, %lor.lhs.false442, %if.then447, %land.lhs.true423, %if.end418
  %inamelen.1 = phi i64 [ %inc450, %if.then447 ], [ %inamelen.0.ph, %lor.lhs.false442 ], [ %inamelen.0.ph, %land.lhs.true423 ], [ %inamelen.0.ph, %if.end418 ], [ %namelen, %if.end418.thread ]
  %inc453 = add i64 %inamelen.1, 1
  %arrayidx454 = getelementptr inbounds i8* %call370, i64 %inamelen.1
  store i8 91, i8* %arrayidx454, align 1, !tbaa !1
  %arrayidx455 = getelementptr inbounds i8* %call370, i64 %inc453
  store i8 0, i8* %arrayidx455, align 1, !tbaa !1
  %call456 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sep) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call456, %struct.sv* %pad, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call456, %struct.sv* %apad.addr.0, i32 2) #6
  %cmp45779 = icmp slt i32 %call367, 0
  br i1 %cmp45779, label %if.end491, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end452
  %cmp472 = icmp sgt i32 %indent, 2
  %123 = add i32 %call367, 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc ], [ 0, %for.body.lr.ph ]
  %124 = trunc i64 %indvars.iv87 to i32
  %call459 = call %struct.sv** @Perl_av_fetch(%struct.av* %116, i32 %124, i32 0) #6
  %tobool460 = icmp eq %struct.sv** %call459, null
  br i1 %tobool460, label %if.end463, label %if.then461

if.then461:                                       ; preds = %for.body
  %125 = load %struct.sv** %call459, align 8, !tbaa !0
  br label %if.end463

if.end463:                                        ; preds = %for.body, %if.then461
  %elem.0 = phi %struct.sv* [ %125, %if.then461 ], [ @PL_sv_undef, %for.body ]
  call void @Perl_sv_setiv(%struct.sv* %call368, i64 %indvars.iv87) #6
  %call467 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arrayidx455, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i64 %indvars.iv87) #6
  %call468 = call i64 @strlen(i8* %call370) #6
  %inc469 = add i64 %call468, 1
  %arrayidx470 = getelementptr inbounds i8* %call370, i64 %call468
  store i8 93, i8* %arrayidx470, align 1, !tbaa !1
  %arrayidx471 = getelementptr inbounds i8* %call370, i64 %inc469
  store i8 0, i8* %arrayidx471, align 1, !tbaa !1
  br i1 %cmp472, label %if.then474, label %if.end475

if.then474:                                       ; preds = %if.end463
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call456, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call332, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str56, i64 0, i64 0), i64 1, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call368, i32 2) #6
  br label %if.end475

if.end475:                                        ; preds = %if.then474, %if.end463
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call456, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call332, i32 2) #6
  call fastcc void @DD_dump(%struct.sv* %elem.0, i8* %call370, i64 %inc469, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %apad.addr.0, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #7
  %cmp477 = icmp slt i32 %124, %call367
  br i1 %cmp477, label %if.then479, label %for.inc

if.then479:                                       ; preds = %if.end475
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i64 1, i32 2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end475, %if.then479
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %123
  br i1 %exitcond90, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp482 = icmp sgt i32 %call367, -1
  br i1 %cmp482, label %if.then484, label %if.end491

if.then484:                                       ; preds = %for.end
  %126 = load i8** %sv_any328, align 8, !tbaa !0
  %xpv_pv486 = bitcast i8* %126 to i8**
  %127 = load i8** %xpv_pv486, align 8, !tbaa !0
  %xpv_cur488 = getelementptr inbounds i8* %126, i64 8
  %128 = bitcast i8* %xpv_cur488 to i64*
  %129 = load i64* %128, align 8, !tbaa !4
  %130 = load i32* %levelp, align 4, !tbaa !3
  %sub489 = add nsw i32 %130, -1
  %call490 = call fastcc %struct.sv* @sv_x(%struct.sv* null, i8* %127, i64 %129, i32 %sub489) #7
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call456, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call490, i32 2) #6
  call void @Perl_sv_free(%struct.sv* %call490) #6
  br label %if.end491

if.end491:                                        ; preds = %if.end452, %if.then484, %for.end
  %131 = load i8* %name, align 1, !tbaa !1
  %cmp494 = icmp eq i8 %131, 64
  br i1 %cmp494, label %if.then496, label %if.else497

if.then496:                                       ; preds = %if.end491
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0), i64 1, i32 2) #6
  br label %if.end498

if.else497:                                       ; preds = %if.end491
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str59, i64 0, i64 0), i64 1, i32 2) #6
  br label %if.end498

if.end498:                                        ; preds = %if.else497, %if.then496
  call void @Perl_sv_free(%struct.sv* %call368) #6
  call void @Perl_sv_free(%struct.sv* %call456) #6
  call void @Perl_safesysfree(i8* %call370) #6
  br label %if.end870

if.then502:                                       ; preds = %if.else352
  %call506 = call %struct.sv* @Perl_newSVpvn(i8* %name, i64 %namelen) #6
  %132 = load i8* %name, align 1, !tbaa !1
  %cmp509 = icmp eq i8 %132, 37
  br i1 %cmp509, label %if.then511, label %if.else515

if.then511:                                       ; preds = %if.then502
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str51, i64 0, i64 0), i64 1, i32 2) #6
  %sv_any512 = getelementptr inbounds %struct.sv* %call506, i64 0, i32 0
  %133 = load i8** %sv_any512, align 8, !tbaa !0
  %xpv_pv513 = bitcast i8* %133 to i8**
  %134 = load i8** %xpv_pv513, align 8, !tbaa !0
  store i8 36, i8* %134, align 1, !tbaa !1
  br label %if.end550thread-pre-split

if.else515:                                       ; preds = %if.then502
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i64 1, i32 2) #6
  br i1 %tobool134, label %if.end550thread-pre-split, label %land.lhs.true518

land.lhs.true518:                                 ; preds = %if.else515
  %sub519 = add i64 %namelen, -1
  %arrayidx520 = getelementptr inbounds i8* %name, i64 %sub519
  %135 = load i8* %arrayidx520, align 1, !tbaa !1
  switch i8 %135, label %if.then548 [
    i8 93, label %lor.lhs.false530
    i8 125, label %lor.lhs.false530
  ]

lor.lhs.false530:                                 ; preds = %land.lhs.true518, %land.lhs.true518
  %cmp531 = icmp ugt i64 %namelen, 4
  br i1 %cmp531, label %land.lhs.true533, label %if.end550thread-pre-split

land.lhs.true533:                                 ; preds = %lor.lhs.false530
  %arrayidx534 = getelementptr inbounds i8* %name, i64 1
  %136 = load i8* %arrayidx534, align 1, !tbaa !1
  %cmp536 = icmp eq i8 %136, 123
  br i1 %cmp536, label %if.then548, label %lor.lhs.false538

lor.lhs.false538:                                 ; preds = %land.lhs.true533
  %137 = load i8* %name, align 1, !tbaa !1
  %cmp541 = icmp eq i8 %137, 92
  br i1 %cmp541, label %land.lhs.true543, label %if.end550

land.lhs.true543:                                 ; preds = %lor.lhs.false538
  %arrayidx544 = getelementptr inbounds i8* %name, i64 2
  %138 = load i8* %arrayidx544, align 1, !tbaa !1
  %cmp546 = icmp eq i8 %138, 123
  br i1 %cmp546, label %if.then548, label %if.end550thread-pre-split

if.then548:                                       ; preds = %land.lhs.true518, %land.lhs.true543, %land.lhs.true533
  call void @Perl_sv_catpvn_flags(%struct.sv* %call506, i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end550thread-pre-split

if.end550thread-pre-split:                        ; preds = %lor.lhs.false530, %if.else515, %if.then511, %if.then548, %land.lhs.true543
  %.pr73 = load i8* %name, align 1, !tbaa !1
  br label %if.end550

if.end550:                                        ; preds = %if.end550thread-pre-split, %lor.lhs.false538
  %139 = phi i8 [ %.pr73, %if.end550thread-pre-split ], [ %137, %lor.lhs.false538 ]
  %cmp553 = icmp eq i8 %139, 42
  br i1 %cmp553, label %land.lhs.true555, label %if.end580

land.lhs.true555:                                 ; preds = %if.end550
  %sub556 = add i64 %namelen, -1
  %arrayidx557 = getelementptr inbounds i8* %name, i64 %sub556
  %140 = load i8* %arrayidx557, align 1, !tbaa !1
  %cmp559 = icmp eq i8 %140, 125
  %cmp562 = icmp ugt i64 %namelen, 7
  %or.cond20 = and i1 %cmp559, %cmp562
  br i1 %or.cond20, label %land.lhs.true564, label %if.end580

land.lhs.true564:                                 ; preds = %land.lhs.true555
  %add.ptr565.sum = add i64 %namelen, -8
  %add.ptr566 = getelementptr inbounds i8* %name, i64 %add.ptr565.sum
  %call567 = call i8* @Perl_instr(i8* %add.ptr566, i8* getelementptr inbounds ([9 x i8]* @.str53, i64 0, i64 0)) #6
  %tobool568 = icmp eq i8* %call567, null
  br i1 %tobool568, label %lor.lhs.false569, label %if.then579

lor.lhs.false569:                                 ; preds = %land.lhs.true564
  %add.ptr565.sum12 = add i64 %namelen, -7
  %add.ptr571 = getelementptr inbounds i8* %name, i64 %add.ptr565.sum12
  %call572 = call i8* @Perl_instr(i8* %add.ptr571, i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0)) #6
  %tobool573 = icmp eq i8* %call572, null
  br i1 %tobool573, label %lor.lhs.false574, label %if.then579

lor.lhs.false574:                                 ; preds = %lor.lhs.false569
  %add.ptr565.sum13 = add i64 %namelen, -6
  %add.ptr576 = getelementptr inbounds i8* %name, i64 %add.ptr565.sum13
  %call577 = call i8* @Perl_instr(i8* %add.ptr576, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0)) #6
  %tobool578 = icmp eq i8* %call577, null
  br i1 %tobool578, label %if.end580, label %if.then579

if.then579:                                       ; preds = %lor.lhs.false574, %lor.lhs.false569, %land.lhs.true564
  call void @Perl_sv_catpvn_flags(%struct.sv* %call506, i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end580

if.end580:                                        ; preds = %lor.lhs.false574, %if.then579, %land.lhs.true555, %if.end550
  call void @Perl_sv_catpvn_flags(%struct.sv* %call506, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i64 1, i32 2) #6
  %call581 = call %struct.sv* @Perl_newSVsv(%struct.sv* %sep) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call581, %struct.sv* %pad, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %call581, %struct.sv* %apad.addr.0, i32 2) #6
  %tobool582 = icmp ne %struct.sv* %sortkeys, null
  br i1 %tobool582, label %if.then583, label %if.else671

if.then583:                                       ; preds = %if.end580
  %cmp584 = icmp eq %struct.sv* %sortkeys, @PL_sv_yes
  br i1 %cmp584, label %if.then586, label %if.then609

if.then586:                                       ; preds = %if.then583
  %call587 = call %struct.av* @Perl_newAV() #6
  %141 = bitcast %struct.sv* %49 to %struct.hv*
  %call588 = call i32 @Perl_hv_iterinit(%struct.hv* %141) #6
  %call59084 = call %struct.he* @Perl_hv_iternext(%struct.hv* %141) #6
  %tobool59185 = icmp eq %struct.he* %call59084, null
  br i1 %tobool59185, label %if.end606, label %while.body592

while.body592:                                    ; preds = %if.then586, %land.end599
  %call59086 = phi %struct.he* [ %call590, %land.end599 ], [ %call59084, %if.then586 ]
  %call593 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %call59086) #6
  store %struct.sv* %call593, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool594 = icmp eq %struct.sv* %call593, null
  br i1 %tobool594, label %land.end599, label %land.rhs595

land.rhs595:                                      ; preds = %while.body592
  %sv_refcnt596 = getelementptr inbounds %struct.sv* %call593, i64 0, i32 1
  %142 = load i32* %sv_refcnt596, align 4, !tbaa !3
  %inc597 = add i32 %142, 1
  store i32 %inc597, i32* %sv_refcnt596, align 4, !tbaa !3
  br label %land.end599

land.end599:                                      ; preds = %while.body592, %land.rhs595
  call void @Perl_av_push(%struct.av* %call587, %struct.sv* %call593) #6
  %call590 = call %struct.he* @Perl_hv_iternext(%struct.hv* %141) #6
  %tobool591 = icmp eq %struct.he* %call590, null
  br i1 %tobool591, label %if.end606, label %while.body592

if.end606:                                        ; preds = %land.end599, %if.then586
  %sv_any602 = getelementptr inbounds %struct.av* %call587, i64 0, i32 0
  %143 = load %struct.xpvav** %sv_any602, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %143, i64 0, i32 0
  %144 = load i8** %xav_array, align 8, !tbaa !0
  %145 = bitcast i8* %144 to %struct.sv**
  %call603 = call i32 @Perl_av_len(%struct.av* %call587) #6
  %add604 = add nsw i32 %call603, 1
  %conv605 = sext i32 %add604 to i64
  call void @Perl_sortsv(%struct.sv** %145, i64 %conv605, i32 (%struct.sv*, %struct.sv*)* @Perl_sv_cmp) #6
  br label %if.end666

if.then609:                                       ; preds = %if.then583
  %146 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_push_scope() #6
  call void @Perl_save_int(i32* @PL_tmps_floor) #6
  %147 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %147, i32* @PL_tmps_floor, align 4, !tbaa !3
  %148 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr611 = getelementptr inbounds i32* %148, i64 1
  store i32* %incdec.ptr611, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %149 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp612 = icmp eq i32* %incdec.ptr611, %149
  br i1 %cmp612, label %if.then614, label %if.end615

if.then614:                                       ; preds = %if.then609
  call void @Perl_markstack_grow() #6
  %.pre101 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end615

if.end615:                                        ; preds = %if.then614, %if.then609
  %150 = phi i32* [ %.pre101, %if.then614 ], [ %incdec.ptr611, %if.then609 ]
  %151 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast616 = ptrtoint %struct.sv** %146 to i64
  %sub.ptr.rhs.cast617 = ptrtoint %struct.sv** %151 to i64
  %sub.ptr.sub618 = sub i64 %sub.ptr.lhs.cast616, %sub.ptr.rhs.cast617
  %sub.ptr.div61911 = lshr exact i64 %sub.ptr.sub618, 3
  %conv620 = trunc i64 %sub.ptr.div61911 to i32
  store i32 %conv620, i32* %150, align 4, !tbaa !3
  %152 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast621 = ptrtoint %struct.sv** %152 to i64
  %sub.ptr.sub623 = sub i64 %sub.ptr.lhs.cast621, %sub.ptr.lhs.cast616
  %cmp625 = icmp slt i64 %sub.ptr.sub623, 8
  br i1 %cmp625, label %if.then627, label %if.end629

if.then627:                                       ; preds = %if.end615
  %call628 = call %struct.sv** @Perl_stack_grow(%struct.sv** %146, %struct.sv** %146, i32 1) #6
  br label %if.end629

if.end629:                                        ; preds = %if.then627, %if.end615
  %sp610.0 = phi %struct.sv** [ %call628, %if.then627 ], [ %146, %if.end615 ]
  %call630 = call %struct.sv* @Perl_newRV(%struct.sv* %49) #6
  %call631 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call630) #6
  %incdec.ptr632 = getelementptr inbounds %struct.sv** %sp610.0, i64 1
  store %struct.sv* %call631, %struct.sv** %incdec.ptr632, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr632, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call633 = call i32 @Perl_call_sv(%struct.sv* %sortkeys, i32 4) #6
  %153 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool634 = icmp eq i32 %call633, 0
  br i1 %tobool634, label %if.then660, label %if.then635

if.then635:                                       ; preds = %if.end629
  %incdec.ptr636 = getelementptr inbounds %struct.sv** %153, i64 -1
  %154 = load %struct.sv** %153, align 8, !tbaa !0
  %sv_flags637 = getelementptr inbounds %struct.sv* %154, i64 0, i32 2
  %155 = load i32* %sv_flags637, align 4, !tbaa !3
  %and638 = and i32 %155, 524288
  %tobool639 = icmp eq i32 %and638, 0
  br i1 %tobool639, label %if.then660, label %land.lhs.true640

land.lhs.true640:                                 ; preds = %if.then635
  %sv_any641 = getelementptr inbounds %struct.sv* %154, i64 0, i32 0
  %156 = load i8** %sv_any641, align 8, !tbaa !0
  %xrv_rv642 = bitcast i8* %156 to %struct.sv**
  %157 = load %struct.sv** %xrv_rv642, align 8, !tbaa !0
  %sv_flags643 = getelementptr inbounds %struct.sv* %157, i64 0, i32 2
  %158 = load i32* %sv_flags643, align 4, !tbaa !3
  %and644 = and i32 %158, 255
  %cmp645 = icmp eq i32 %and644, 10
  br i1 %cmp645, label %if.then647, label %if.then660

if.then647:                                       ; preds = %land.lhs.true640
  store %struct.sv* %157, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool650 = icmp eq %struct.sv* %157, null
  br i1 %tobool650, label %if.end658, label %land.rhs651

land.rhs651:                                      ; preds = %if.then647
  %sv_refcnt652 = getelementptr inbounds %struct.sv* %157, i64 0, i32 1
  %159 = load i32* %sv_refcnt652, align 4, !tbaa !3
  %inc653 = add i32 %159, 1
  store i32 %inc653, i32* %sv_refcnt652, align 4, !tbaa !3
  br label %if.end658

if.end658:                                        ; preds = %land.rhs651, %if.then647
  %160 = bitcast %struct.sv* %157 to %struct.av*
  %tobool659 = icmp eq %struct.sv* %157, null
  br i1 %tobool659, label %if.then660, label %if.end661

if.then660:                                       ; preds = %if.end629, %if.then635, %land.lhs.true640, %if.end658
  %sp610.1114 = phi %struct.sv** [ %incdec.ptr636, %if.end658 ], [ %incdec.ptr636, %land.lhs.true640 ], [ %incdec.ptr636, %if.then635 ], [ %153, %if.end629 ]
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([45 x i8]* @.str61, i64 0, i64 0)) #6
  br label %if.end661

if.end661:                                        ; preds = %if.end658, %if.then660
  %sp610.1113 = phi %struct.sv** [ %incdec.ptr636, %if.end658 ], [ %sp610.1114, %if.then660 ]
  %keys.1111 = phi %struct.av* [ %160, %if.end658 ], [ null, %if.then660 ]
  store %struct.sv** %sp610.1113, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %161 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %162 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp662 = icmp sgt i32 %161, %162
  br i1 %cmp662, label %if.then664, label %if.end665

if.then664:                                       ; preds = %if.end661
  call void @Perl_free_tmps() #6
  br label %if.end665

if.end665:                                        ; preds = %if.then664, %if.end661
  call void @Perl_pop_scope() #6
  br label %if.end666

if.end666:                                        ; preds = %if.end606, %if.end665
  %keys.2 = phi %struct.av* [ %keys.1111, %if.end665 ], [ %call587, %if.end606 ]
  %tobool667 = icmp eq %struct.av* %keys.2, null
  br i1 %tobool667, label %if.end673, label %if.then668

if.then668:                                       ; preds = %if.end666
  %163 = bitcast %struct.av* %keys.2 to %struct.sv*
  %call669 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %163) #6
  br label %if.end673

if.else671:                                       ; preds = %if.end580
  %164 = bitcast %struct.sv* %49 to %struct.hv*
  %call672 = call i32 @Perl_hv_iterinit(%struct.hv* %164) #6
  br label %if.end673

if.end673:                                        ; preds = %if.end666, %if.then668, %if.else671
  %keys.3 = phi %struct.av* [ %keys.2, %if.then668 ], [ null, %if.end666 ], [ null, %if.else671 ]
  %tobool678 = icmp eq %struct.av* %keys.3, null
  %165 = bitcast %struct.sv* %49 to %struct.hv*
  %tobool760 = icmp eq i32 %quotekeys, 0
  %cmp806 = icmp sgt i32 %indent, 1
  %sv_any767 = getelementptr inbounds %struct.sv* %retval1, i64 0, i32 0
  br label %for.body675

for.body675:                                      ; preds = %if.end673, %for.inc838
  %i.0 = phi i32 [ 0, %if.end673 ], [ %inc839, %for.inc838 ]
  br i1 %tobool582, label %land.lhs.true677, label %lor.lhs.false683

land.lhs.true677:                                 ; preds = %for.body675
  br i1 %tobool678, label %for.end840, label %land.lhs.true679

land.lhs.true679:                                 ; preds = %land.lhs.true677
  %call680 = call i32 @Perl_av_len(%struct.av* %keys.3) #6
  %cmp681 = icmp sgt i32 %i.0, %call680
  br i1 %cmp681, label %for.end840, label %lor.lhs.false683

lor.lhs.false683:                                 ; preds = %land.lhs.true679, %for.body675
  %call684 = call %struct.he* @Perl_hv_iternext(%struct.hv* %165) #6
  %tobool685 = icmp eq %struct.he* %call684, null
  br i1 %tobool685, label %for.end840, label %if.end687

if.end687:                                        ; preds = %lor.lhs.false683
  %tobool688 = icmp eq i32 %i.0, 0
  br i1 %tobool688, label %if.end690, label %if.then689

if.then689:                                       ; preds = %if.end687
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i64 1, i32 2) #6
  br label %if.end690

if.end690:                                        ; preds = %if.end687, %if.then689
  br i1 %tobool582, label %if.then692, label %if.else732

if.then692:                                       ; preds = %if.end690
  %call694 = call %struct.sv** @Perl_av_fetch(%struct.av* %keys.3, i32 %i.0, i32 0) #6
  %tobool695 = icmp eq %struct.sv** %call694, null
  br i1 %tobool695, label %cond.false697, label %cond.true696

cond.true696:                                     ; preds = %if.then692
  %166 = load %struct.sv** %call694, align 8, !tbaa !0
  br label %cond.end699

cond.false697:                                    ; preds = %if.then692
  %call698 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef) #6
  br label %cond.end699

cond.end699:                                      ; preds = %cond.false697, %cond.true696
  %cond700 = phi %struct.sv* [ %166, %cond.true696 ], [ %call698, %cond.false697 ]
  %sv_flags701 = getelementptr inbounds %struct.sv* %cond700, i64 0, i32 2
  %167 = load i32* %sv_flags701, align 4, !tbaa !3
  %and702 = and i32 %167, 262144
  %cmp703 = icmp eq i32 %and702, 0
  br i1 %cmp703, label %cond.false710, label %cond.true705

cond.true705:                                     ; preds = %cond.end699
  %sv_any706 = getelementptr inbounds %struct.sv* %cond700, i64 0, i32 0
  %168 = load i8** %sv_any706, align 8, !tbaa !0
  %xpv_cur707 = getelementptr inbounds i8* %168, i64 8
  %169 = bitcast i8* %xpv_cur707 to i64*
  %170 = load i64* %169, align 8, !tbaa !4
  store i64 %170, i64* %keylen, align 8, !tbaa !4
  %xpv_pv709 = bitcast i8* %168 to i8**
  %171 = load i8** %xpv_pv709, align 8, !tbaa !0
  br label %cond.end712

cond.false710:                                    ; preds = %cond.end699
  %call711 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond700, i64* %keylen, i32 2) #6
  %.pre102 = load i32* %sv_flags701, align 4, !tbaa !3
  %.pre103 = load i64* %keylen, align 8, !tbaa !4
  br label %cond.end712

cond.end712:                                      ; preds = %cond.false710, %cond.true705
  %172 = phi i64 [ %170, %cond.true705 ], [ %.pre103, %cond.false710 ]
  %173 = phi i32 [ %167, %cond.true705 ], [ %.pre102, %cond.false710 ]
  %cond713 = phi i8* [ %171, %cond.true705 ], [ %call711, %cond.false710 ]
  %and715 = and i32 %173, 536870912
  %tobool716 = icmp eq i32 %and715, 0
  br i1 %tobool716, label %cond.end722, label %cond.true717

cond.true717:                                     ; preds = %cond.end712
  %sub719 = sub i64 0, %172
  %sext10 = shl i64 %sub719, 32
  %conv720 = ashr exact i64 %sext10, 32
  br label %cond.end722

cond.end722:                                      ; preds = %cond.end712, %cond.true717
  %cond723 = phi i64 [ %conv720, %cond.true717 ], [ %172, %cond.end712 ]
  %conv724 = trunc i64 %cond723 to i32
  %call725 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %165, i8* %cond713, i32 %conv724, i32 0) #6
  %tobool726 = icmp eq %struct.sv** %call725, null
  br i1 %tobool726, label %cond.false728, label %cond.true727

cond.true727:                                     ; preds = %cond.end722
  %174 = load %struct.sv** %call725, align 8, !tbaa !0
  br label %if.end735

cond.false728:                                    ; preds = %cond.end722
  %call729 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef) #6
  br label %if.end735

if.else732:                                       ; preds = %if.end690
  %call733 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %call684) #6
  %call734 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %165, %struct.he* %call684) #6
  br label %if.end735

if.end735:                                        ; preds = %cond.true727, %cond.false728, %if.else732
  %hval.0 = phi %struct.sv* [ %call734, %if.else732 ], [ %174, %cond.true727 ], [ %call729, %cond.false728 ]
  %keysv.0 = phi %struct.sv* [ %call733, %if.else732 ], [ %cond700, %cond.true727 ], [ %cond700, %cond.false728 ]
  %sv_flags736 = getelementptr inbounds %struct.sv* %keysv.0, i64 0, i32 2
  %175 = load i32* %sv_flags736, align 4, !tbaa !3
  %and737 = and i32 %175, 536870912
  %tobool738 = icmp eq i32 %and737, 0
  br i1 %tobool738, label %land.end743, label %land.rhs739

land.rhs739:                                      ; preds = %if.end735
  %176 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %176, i64 0, i32 7
  %177 = load i8* %op_private, align 1, !tbaa !1
  %and741 = and i8 %177, 8
  %lnot = icmp eq i8 %and741, 0
  %.pre104 = load i32* %sv_flags736, align 4, !tbaa !3
  br label %land.end743

land.end743:                                      ; preds = %if.end735, %land.rhs739
  %178 = phi i32 [ %175, %if.end735 ], [ %.pre104, %land.rhs739 ]
  %179 = phi i1 [ false, %if.end735 ], [ %lnot, %land.rhs739 ]
  %and747 = and i32 %178, 262144
  %cmp748 = icmp eq i32 %and747, 0
  br i1 %cmp748, label %cond.false755, label %cond.true750

cond.true750:                                     ; preds = %land.end743
  %sv_any751 = getelementptr inbounds %struct.sv* %keysv.0, i64 0, i32 0
  %180 = load i8** %sv_any751, align 8, !tbaa !0
  %xpv_cur752 = getelementptr inbounds i8* %180, i64 8
  %181 = bitcast i8* %xpv_cur752 to i64*
  %182 = load i64* %181, align 8, !tbaa !4
  store i64 %182, i64* %keylen, align 8, !tbaa !4
  %xpv_pv754 = bitcast i8* %180 to i8**
  %183 = load i8** %xpv_pv754, align 8, !tbaa !0
  br label %cond.end757

cond.false755:                                    ; preds = %land.end743
  %call756 = call i8* @Perl_sv_2pv_flags(%struct.sv* %keysv.0, i64* %keylen, i32 2) #6
  %.pre105 = load i64* %keylen, align 8, !tbaa !4
  br label %cond.end757

cond.end757:                                      ; preds = %cond.false755, %cond.true750
  %184 = phi i64 [ %182, %cond.true750 ], [ %.pre105, %cond.false755 ]
  %cond758 = phi i8* [ %183, %cond.true750 ], [ %call756, %cond.false755 ]
  %conv759 = trunc i64 %184 to i32
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call581, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call332, i32 2) #6
  br i1 %tobool760, label %lor.lhs.false761, label %if.then764

lor.lhs.false761:                                 ; preds = %cond.end757
  %call762 = call fastcc i32 @needs_quote(i8* %cond758) #7
  %tobool763 = icmp eq i32 %call762, 0
  br i1 %tobool763, label %if.else801, label %if.then764

if.then764:                                       ; preds = %lor.lhs.false761, %cond.end757
  br i1 %179, label %if.then766, label %if.else774

if.then766:                                       ; preds = %if.then764
  %185 = load i8** %sv_any767, align 8, !tbaa !0
  %xpv_cur768 = getelementptr inbounds i8* %185, i64 8
  %186 = bitcast i8* %xpv_cur768 to i64*
  %187 = load i64* %186, align 8, !tbaa !4
  %sext9 = shl i64 %184, 32
  %conv769 = ashr exact i64 %sext9, 32
  %call770 = call fastcc i32 @esc_q_utf8(%struct.sv* %retval1, i8* %cond758, i64 %conv769) #7
  %188 = load i8** %sv_any767, align 8, !tbaa !0
  %xpv_pv772 = bitcast i8* %188 to i8**
  %189 = load i8** %xpv_pv772, align 8, !tbaa !0
  %add.ptr773 = getelementptr inbounds i8* %189, i64 %187
  br label %if.end803

if.else774:                                       ; preds = %if.then764
  %sext8 = shl i64 %184, 32
  %conv775 = ashr exact i64 %sext8, 32
  %cmp10.i42 = icmp eq i64 %conv775, 0
  br i1 %cmp10.i42, label %num_q.exit, label %while.body.i43

while.body.i43:                                   ; preds = %if.else774, %if.end.i
  %ret.013.i = phi i32 [ %ret.1.i45, %if.end.i ], [ 0, %if.else774 ]
  %slen.addr.012.i = phi i64 [ %dec.i47, %if.end.i ], [ %conv775, %if.else774 ]
  %s.addr.011.i = phi i8* [ %incdec.ptr.i46, %if.end.i ], [ %cond758, %if.else774 ]
  %190 = load i8* %s.addr.011.i, align 1, !tbaa !1
  switch i8 %190, label %if.end.i [
    i8 39, label %if.then.i
    i8 92, label %if.then.i
  ]

if.then.i:                                        ; preds = %while.body.i43, %while.body.i43
  %inc.i44 = add nsw i32 %ret.013.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i43
  %ret.1.i45 = phi i32 [ %inc.i44, %if.then.i ], [ %ret.013.i, %while.body.i43 ]
  %incdec.ptr.i46 = getelementptr inbounds i8* %s.addr.011.i, i64 1
  %dec.i47 = add i64 %slen.addr.012.i, -1
  %cmp.i48 = icmp eq i64 %dec.i47, 0
  br i1 %cmp.i48, label %num_q.exit, label %while.body.i43

num_q.exit:                                       ; preds = %if.end.i, %if.else774
  %ret.0.lcssa.i49 = phi i32 [ 0, %if.else774 ], [ %ret.1.i45, %if.end.i ]
  %add777 = add i32 %conv759, 3
  %add778 = add i32 %add777, %ret.0.lcssa.i49
  %conv779 = sext i32 %add778 to i64
  %call781 = call i8* @Perl_safesysmalloc(i64 %conv779) #6
  store i8 39, i8* %call781, align 1, !tbaa !1
  %tobool783 = icmp eq i32 %ret.0.lcssa.i49, 0
  %add.ptr785 = getelementptr inbounds i8* %call781, i64 1
  br i1 %tobool783, label %if.else789, label %if.then784

if.then784:                                       ; preds = %num_q.exit
  br i1 %cmp10.i42, label %esc_q.exit69, label %while.body.i56

while.body.i56:                                   ; preds = %if.then784, %sw.default.i67
  %ret.014.i51 = phi i32 [ %ret.1.i62, %sw.default.i67 ], [ 0, %if.then784 ]
  %slen.addr.013.i52 = phi i64 [ %dec.i65, %sw.default.i67 ], [ %conv775, %if.then784 ]
  %s.addr.012.i53 = phi i8* [ %incdec.ptr2.i64, %sw.default.i67 ], [ %cond758, %if.then784 ]
  %d.addr.011.i54 = phi i8* [ %incdec.ptr1.i63, %sw.default.i67 ], [ %add.ptr785, %if.then784 ]
  %191 = load i8* %s.addr.012.i53, align 1, !tbaa !1
  %conv.i55 = sext i8 %191 to i32
  switch i32 %conv.i55, label %sw.default.i67 [
    i32 39, label %sw.bb.i60
    i32 92, label %sw.bb.i60
  ]

sw.bb.i60:                                        ; preds = %while.body.i56, %while.body.i56
  store i8 92, i8* %d.addr.011.i54, align 1, !tbaa !1
  %incdec.ptr.i57 = getelementptr inbounds i8* %d.addr.011.i54, i64 1
  %inc.i58 = add nsw i32 %ret.014.i51, 1
  %.pre.i59 = load i8* %s.addr.012.i53, align 1, !tbaa !1
  br label %sw.default.i67

sw.default.i67:                                   ; preds = %sw.bb.i60, %while.body.i56
  %192 = phi i8 [ %191, %while.body.i56 ], [ %.pre.i59, %sw.bb.i60 ]
  %d.addr.1.i61 = phi i8* [ %d.addr.011.i54, %while.body.i56 ], [ %incdec.ptr.i57, %sw.bb.i60 ]
  %ret.1.i62 = phi i32 [ %ret.014.i51, %while.body.i56 ], [ %inc.i58, %sw.bb.i60 ]
  store i8 %192, i8* %d.addr.1.i61, align 1, !tbaa !1
  %incdec.ptr1.i63 = getelementptr inbounds i8* %d.addr.1.i61, i64 1
  %incdec.ptr2.i64 = getelementptr inbounds i8* %s.addr.012.i53, i64 1
  %dec.i65 = add i64 %slen.addr.013.i52, -1
  %cmp.i66 = icmp eq i64 %dec.i65, 0
  br i1 %cmp.i66, label %esc_q.exit69, label %while.body.i56

esc_q.exit69:                                     ; preds = %sw.default.i67, %if.then784
  %ret.0.lcssa.i68 = phi i32 [ 0, %if.then784 ], [ %ret.1.i62, %sw.default.i67 ]
  %add788 = add nsw i32 %ret.0.lcssa.i68, %conv759
  br label %if.end793

if.else789:                                       ; preds = %num_q.exit
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr785, i8* %cond758, i64 %conv775, i32 1, i1 false)
  br label %if.end793

if.end793:                                        ; preds = %if.else789, %esc_q.exit69
  %klen.0 = phi i32 [ %add788, %esc_q.exit69 ], [ %conv759, %if.else789 ]
  %inc794 = add nsw i32 %klen.0, 1
  %idxprom = sext i32 %inc794 to i64
  %arrayidx795 = getelementptr inbounds i8* %call781, i64 %idxprom
  store i8 39, i8* %arrayidx795, align 1, !tbaa !1
  %inc796 = add nsw i32 %klen.0, 2
  %idxprom797 = sext i32 %inc796 to i64
  %arrayidx798 = getelementptr inbounds i8* %call781, i64 %idxprom797
  store i8 0, i8* %arrayidx798, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %call781, i64 %idxprom797, i32 2) #6
  br label %if.end803

if.else801:                                       ; preds = %lor.lhs.false761
  %sext = shl i64 %184, 32
  %conv802 = ashr exact i64 %sext, 32
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %cond758, i64 %conv802, i32 2) #6
  br label %if.end803

if.end803:                                        ; preds = %if.then766, %if.end793, %if.else801
  %klen.1 = phi i32 [ %conv759, %if.then766 ], [ %inc796, %if.end793 ], [ %conv759, %if.else801 ]
  %nkey.0 = phi i8* [ %add.ptr773, %if.then766 ], [ %call781, %if.end793 ], [ %cond758, %if.else801 ]
  %nkey_buffer.0 = phi i8* [ null, %if.then766 ], [ %call781, %if.end793 ], [ null, %if.else801 ]
  %nlen.0 = phi i32 [ %call770, %if.then766 ], [ %inc796, %if.end793 ], [ %conv759, %if.else801 ]
  %call804 = call %struct.sv* @Perl_newSVsv(%struct.sv* %call506) #6
  %conv805 = sext i32 %nlen.0 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %call804, i8* %nkey.0, i64 %conv805, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call804, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0), i64 1, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %pair, i32 2) #6
  br i1 %cmp806, label %if.then808, label %if.end828

if.then808:                                       ; preds = %if.end803
  %call809 = call %struct.sv* @Perl_newSVsv(%struct.sv* %apad.addr.0) #6
  %add810 = add i32 %klen.1, 4
  %add811 = add nsw i32 %klen.1, 5
  %conv812 = sext i32 %add811 to i64
  %call814 = call i8* @Perl_safesysmalloc(i64 %conv812) #6
  %cmp81781 = icmp sgt i32 %add810, 0
  br i1 %cmp81781, label %while.body819.lr.ph, label %while.end823

while.body819.lr.ph:                              ; preds = %if.then808
  %193 = add i32 %klen.1, 3
  %194 = zext i32 %193 to i64
  %195 = add i64 %194, 1
  call void @llvm.memset.p0i8.i64(i8* %call814, i8 32, i64 %195, i32 1, i1 false)
  %phitmp = sext i32 %add810 to i64
  br label %while.end823

while.end823:                                     ; preds = %while.body819.lr.ph, %if.then808
  %elen.0.lcssa = phi i64 [ %phitmp, %while.body819.lr.ph ], [ 0, %if.then808 ]
  %arrayidx825 = getelementptr inbounds i8* %call814, i64 %elen.0.lcssa
  store i8 0, i8* %arrayidx825, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %call809, i8* %call814, i64 %elen.0.lcssa, i32 2) #6
  call void @Perl_safesysfree(i8* %call814) #6
  br label %if.end828

if.end828:                                        ; preds = %if.end803, %while.end823
  %newapad.0 = phi %struct.sv* [ %call809, %while.end823 ], [ %apad.addr.0, %if.end803 ]
  %sv_any829 = getelementptr inbounds %struct.sv* %call804, i64 0, i32 0
  %196 = load i8** %sv_any829, align 8, !tbaa !0
  %xpv_pv830 = bitcast i8* %196 to i8**
  %197 = load i8** %xpv_pv830, align 8, !tbaa !0
  %xpv_cur832 = getelementptr inbounds i8* %196, i64 8
  %198 = bitcast i8* %xpv_cur832 to i64*
  %199 = load i64* %198, align 8, !tbaa !4
  call fastcc void @DD_dump(%struct.sv* %hval.0, i8* %197, i64 %199, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %newapad.0, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #7
  call void @Perl_sv_free(%struct.sv* %call804) #6
  call void @Perl_safesysfree(i8* %nkey_buffer.0) #6
  br i1 %cmp806, label %if.then836, label %for.inc838

if.then836:                                       ; preds = %if.end828
  call void @Perl_sv_free(%struct.sv* %newapad.0) #6
  br label %for.inc838

for.inc838:                                       ; preds = %if.end828, %if.then836
  %inc839 = add i32 %i.0, 1
  br label %for.body675

for.end840:                                       ; preds = %land.lhs.true679, %land.lhs.true677, %lor.lhs.false683
  %tobool841 = icmp eq i32 %i.0, 0
  br i1 %tobool841, label %if.end850, label %if.then842

if.then842:                                       ; preds = %for.end840
  %200 = load i8** %sv_any328, align 8, !tbaa !0
  %xpv_pv845 = bitcast i8* %200 to i8**
  %201 = load i8** %xpv_pv845, align 8, !tbaa !0
  %xpv_cur847 = getelementptr inbounds i8* %200, i64 8
  %202 = bitcast i8* %xpv_cur847 to i64*
  %203 = load i64* %202, align 8, !tbaa !4
  %204 = load i32* %levelp, align 4, !tbaa !3
  %sub848 = add nsw i32 %204, -1
  %call849 = call fastcc %struct.sv* @sv_x(%struct.sv* null, i8* %201, i64 %203, i32 %sub848) #7
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call581, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %call849, i32 2) #6
  call void @Perl_sv_free(%struct.sv* %call849) #6
  br label %if.end850

if.end850:                                        ; preds = %for.end840, %if.then842
  %205 = load i8* %name, align 1, !tbaa !1
  %cmp853 = icmp eq i8 %205, 37
  br i1 %cmp853, label %if.then855, label %if.else856

if.then855:                                       ; preds = %if.end850
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str58, i64 0, i64 0), i64 1, i32 2) #6
  br label %if.end857

if.else856:                                       ; preds = %if.end850
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0), i64 1, i32 2) #6
  br label %if.end857

if.end857:                                        ; preds = %if.else856, %if.then855
  call void @Perl_sv_free(%struct.sv* %call506) #6
  call void @Perl_sv_free(%struct.sv* %call581) #6
  br label %if.end870

if.then861:                                       ; preds = %if.else352
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([16 x i8]* @.str62, i64 0, i64 0), i64 15, i32 2) #6
  br i1 %tobool281, label %if.then863, label %if.end870

if.then863:                                       ; preds = %if.then861
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([46 x i8]* @.str63, i64 0, i64 0)) #6
  br label %if.end870

if.else865:                                       ; preds = %if.else352
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([27 x i8]* @.str64, i64 0, i64 0), i32 %and122) #6
  br label %if.end870

if.end870:                                        ; preds = %if.then355, %if.end857, %if.then861, %if.then863, %if.else865, %if.end498, %if.end351
  br i1 %tobool249, label %if.then872, label %if.end889

if.then872:                                       ; preds = %if.end870
  %cmp873 = icmp sgt i32 %indent, 1
  br i1 %cmp873, label %if.then875, label %if.end876

if.then875:                                       ; preds = %if.then872
  call void @Perl_sv_free(%struct.sv* %apad.addr.0) #6
  br label %if.end876

if.end876:                                        ; preds = %if.then875, %if.then872
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0), i64 3, i32 2) #6
  %call877 = call i64 @strlen(i8* %realpack.0) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %realpack.0, i64 %call877, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i64 3, i32 2) #6
  %tobool878 = icmp eq %struct.sv* %toaster, null
  br i1 %tobool878, label %if.end889, label %land.lhs.true879

land.lhs.true879:                                 ; preds = %if.end876
  %sv_flags880 = getelementptr inbounds %struct.sv* %toaster, i64 0, i32 2
  %206 = load i32* %sv_flags880, align 4, !tbaa !3
  %and881 = and i32 %206, 262144
  %tobool882 = icmp eq i32 %and881, 0
  br i1 %tobool882, label %if.end889, label %land.lhs.true883

land.lhs.true883:                                 ; preds = %land.lhs.true879
  %sv_any884 = getelementptr inbounds %struct.sv* %toaster, i64 0, i32 0
  %207 = load i8** %sv_any884, align 8, !tbaa !0
  %xpv_cur885 = getelementptr inbounds i8* %207, i64 8
  %208 = bitcast i8* %xpv_cur885 to i64*
  %209 = load i64* %208, align 8, !tbaa !4
  %tobool886 = icmp eq i64 %209, 0
  br i1 %tobool886, label %if.end889, label %if.then887

if.then887:                                       ; preds = %land.lhs.true883
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str60, i64 0, i64 0), i64 2, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %toaster, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str67, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end889

if.end889:                                        ; preds = %land.lhs.true883, %land.lhs.true879, %if.end876, %if.then887, %if.end870
  call void @Perl_sv_free(%struct.sv* %call332) #6
  %210 = load i32* %levelp, align 4, !tbaa !3
  %dec = add nsw i32 %210, -1
  store i32 %dec, i32* %levelp, align 4, !tbaa !3
  br label %if.end1229

if.else890:                                       ; preds = %if.end6
  %tobool892 = icmp eq i64 %namelen, 0
  br i1 %tobool892, label %if.end954, label %if.then893

if.then893:                                       ; preds = %if.else890
  %211 = ptrtoint %struct.sv* %val to i64
  %call895 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0), i64 %211) #6
  %call898 = call i64 @strlen(i8* %1) #6
  %conv899 = trunc i64 %call898 to i32
  %call900 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %seenhv, i8* %1, i32 %conv899, i32 0) #6
  %tobool901 = icmp eq %struct.sv** %call900, null
  br i1 %tobool901, label %if.else938, label %land.lhs.true902

land.lhs.true902:                                 ; preds = %if.then893
  %212 = load %struct.sv** %call900, align 8, !tbaa !0
  %tobool903 = icmp eq %struct.sv* %212, null
  br i1 %tobool903, label %if.else938, label %land.lhs.true904

land.lhs.true904:                                 ; preds = %land.lhs.true902
  %sv_flags905 = getelementptr inbounds %struct.sv* %212, i64 0, i32 2
  %213 = load i32* %sv_flags905, align 4, !tbaa !3
  %and906 = and i32 %213, 524288
  %tobool907 = icmp eq i32 %and906, 0
  br i1 %tobool907, label %if.else938, label %land.lhs.true908

land.lhs.true908:                                 ; preds = %land.lhs.true904
  %sv_any909 = getelementptr inbounds %struct.sv* %212, i64 0, i32 0
  %214 = load i8** %sv_any909, align 8, !tbaa !0
  %xrv_rv910 = bitcast i8* %214 to %struct.sv**
  %215 = load %struct.sv** %xrv_rv910, align 8, !tbaa !0
  %216 = bitcast %struct.sv* %215 to %struct.av*
  %tobool911 = icmp eq %struct.sv* %215, null
  br i1 %tobool911, label %if.else938, label %if.then912

if.then912:                                       ; preds = %land.lhs.true908
  %call914 = call %struct.sv** @Perl_av_fetch(%struct.av* %216, i32 0, i32 0) #6
  %tobool915 = icmp eq %struct.sv** %call914, null
  br i1 %tobool915, label %if.end954, label %land.lhs.true916

land.lhs.true916:                                 ; preds = %if.then912
  %217 = load %struct.sv** %call914, align 8, !tbaa !0
  %tobool917 = icmp eq %struct.sv* %217, null
  br i1 %tobool917, label %if.end954, label %land.lhs.true918

land.lhs.true918:                                 ; preds = %land.lhs.true916
  %call919 = call %struct.sv** @Perl_av_fetch(%struct.av* %216, i32 2, i32 0) #6
  %tobool920 = icmp eq %struct.sv** %call919, null
  br i1 %tobool920, label %if.end954, label %land.lhs.true921

land.lhs.true921:                                 ; preds = %land.lhs.true918
  %218 = load %struct.sv** %call919, align 8, !tbaa !0
  %tobool922 = icmp eq %struct.sv* %218, null
  br i1 %tobool922, label %if.end954, label %land.lhs.true923

land.lhs.true923:                                 ; preds = %land.lhs.true921
  %sv_flags924 = getelementptr inbounds %struct.sv* %218, i64 0, i32 2
  %219 = load i32* %sv_flags924, align 4, !tbaa !3
  %and925 = and i32 %219, 65536
  %tobool926 = icmp eq i32 %and925, 0
  br i1 %tobool926, label %cond.false930, label %cond.true927

cond.true927:                                     ; preds = %land.lhs.true923
  %sv_any928 = getelementptr inbounds %struct.sv* %218, i64 0, i32 0
  %220 = load i8** %sv_any928, align 8, !tbaa !0
  %xiv_iv929 = getelementptr inbounds i8* %220, i64 24
  %221 = bitcast i8* %xiv_iv929 to i64*
  %222 = load i64* %221, align 8, !tbaa !4
  br label %cond.end932

cond.false930:                                    ; preds = %land.lhs.true923
  %call931 = call i64 @Perl_sv_2iv(%struct.sv* %218) #6
  br label %cond.end932

cond.end932:                                      ; preds = %cond.false930, %cond.true927
  %cond933 = phi i64 [ %222, %cond.true927 ], [ %call931, %cond.false930 ]
  %cmp934 = icmp sgt i64 %cond933, 0
  br i1 %cmp934, label %if.then936, label %if.end954

if.then936:                                       ; preds = %cond.end932
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), i64 2, i32 2) #6
  call void @Perl_sv_catsv_flags(%struct.sv* %retval1, %struct.sv* %217, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0), i64 1, i32 2) #6
  br label %cleanup

if.else938:                                       ; preds = %land.lhs.true908, %land.lhs.true904, %land.lhs.true902, %if.then893
  %seenentry.1 = phi %struct.av* [ %216, %land.lhs.true908 ], [ null, %land.lhs.true904 ], [ null, %land.lhs.true902 ], [ null, %if.then893 ]
  %cmp939 = icmp eq %struct.sv* %val, @PL_sv_undef
  br i1 %cmp939, label %if.end954, label %if.then941

if.then941:                                       ; preds = %if.else938
  %call943 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i64 1) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call943, i8* %name, i64 %namelen, i32 2) #6
  %call944 = call %struct.av* @Perl_newAV() #6
  call void @Perl_av_push(%struct.av* %call944, %struct.sv* %call943) #6
  %call945 = call %struct.sv* @Perl_newRV(%struct.sv* %val) #6
  call void @Perl_av_push(%struct.av* %call944, %struct.sv* %call945) #6
  %call948 = call i64 @strlen(i8* %1) #6
  %conv949 = trunc i64 %call948 to i32
  %223 = bitcast %struct.av* %call944 to %struct.sv*
  %call950 = call %struct.sv* @Perl_newRV(%struct.sv* %223) #6
  %call951 = call %struct.sv** @Perl_hv_store(%struct.hv* %seenhv, i8* %1, i32 %conv949, %struct.sv* %call950, i32 0) #6
  call void @Perl_sv_free(%struct.sv* %223) #6
  br label %if.end954

if.end954:                                        ; preds = %if.else938, %cond.end932, %land.lhs.true921, %land.lhs.true918, %land.lhs.true916, %if.then912, %if.else890, %if.then941
  %idlen.0 = phi i64 [ %call898, %if.then941 ], [ 0, %if.else890 ], [ %call898, %if.then912 ], [ %call898, %land.lhs.true916 ], [ %call898, %land.lhs.true918 ], [ %call898, %land.lhs.true921 ], [ %call898, %cond.end932 ], [ %call898, %if.else938 ]
  %seenentry.2 = phi %struct.av* [ %call944, %if.then941 ], [ null, %if.else890 ], [ %216, %if.then912 ], [ %216, %land.lhs.true916 ], [ %216, %land.lhs.true918 ], [ %216, %land.lhs.true921 ], [ %216, %cond.end932 ], [ %seenentry.1, %if.else938 ]
  %224 = load i32* %sv_flags, align 4, !tbaa !3
  %and956 = and i32 %224, 65536
  %tobool957 = icmp eq i32 %and956, 0
  br i1 %tobool957, label %if.else1023, label %if.then958

if.then958:                                       ; preds = %if.end954
  %tobool961 = icmp slt i32 %224, 0
  %sv_any968 = getelementptr inbounds %struct.sv* %val, i64 0, i32 0
  %225 = load i8** %sv_any968, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %225, i64 24
  %226 = bitcast i8* %xuv_uv to i64*
  %227 = load i64* %226, align 8, !tbaa !4
  br i1 %tobool961, label %cond.end971, label %cond.end984

cond.end971:                                      ; preds = %if.then958
  %call973 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 %227) #6
  br label %if.end987

cond.end984:                                      ; preds = %if.then958
  %call986 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i64 %227) #6
  br label %if.end987

if.end987:                                        ; preds = %cond.end984, %cond.end971
  %call989 = call i64 @strlen(i8* %0) #6
  %228 = load i32* %sv_flags, align 4, !tbaa !3
  %and991 = and i32 %228, 262144
  %tobool992 = icmp eq i32 %and991, 0
  br i1 %tobool992, label %if.end1015, label %cond.true998

cond.true998:                                     ; preds = %if.end987
  %229 = load i8** %sv_any968, align 8, !tbaa !0
  %xpv_cur1000 = getelementptr inbounds i8* %229, i64 8
  %230 = bitcast i8* %xpv_cur1000 to i64*
  %231 = load i64* %230, align 8, !tbaa !4
  %cmp1007 = icmp eq i64 %231, %call989
  br i1 %cmp1007, label %lor.lhs.false1009, label %integer_came_from_string

lor.lhs.false1009:                                ; preds = %cond.true998
  %xpv_pv1002 = bitcast i8* %229 to i8**
  %232 = load i8** %xpv_pv1002, align 8, !tbaa !0
  %call1011 = call i32 @memcmp(i8* %232, i8* %0, i64 %call989) #6
  %tobool1012 = icmp eq i32 %call1011, 0
  br i1 %tobool1012, label %if.end1015, label %integer_came_from_string

if.end1015:                                       ; preds = %lor.lhs.false1009, %if.end987
  %cmp1016 = icmp ugt i64 %call989, 10
  br i1 %cmp1016, label %if.then1018, label %if.else1020

if.then1018:                                      ; preds = %if.end1015
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %retval1, i8* getelementptr inbounds ([5 x i8]* @.str69, i64 0, i64 0), i8* %0) #6
  br label %if.end1229

if.else1020:                                      ; preds = %if.end1015
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* %0, i64 %call989, i32 2) #6
  br label %if.end1229

if.else1023:                                      ; preds = %if.end954
  %cmp1024 = icmp eq i32 %and, 13
  br i1 %cmp1024, label %if.then1026, label %if.else1165

if.then1026:                                      ; preds = %if.else1023
  %and1028 = and i32 %224, 262144
  %cmp1029 = icmp eq i32 %and1028, 0
  br i1 %cmp1029, label %cond.false1036, label %cond.true1031

cond.true1031:                                    ; preds = %if.then1026
  %sv_any1032 = getelementptr inbounds %struct.sv* %val, i64 0, i32 0
  %233 = load i8** %sv_any1032, align 8, !tbaa !0
  %xpv_cur1033 = getelementptr inbounds i8* %233, i64 8
  %234 = bitcast i8* %xpv_cur1033 to i64*
  %235 = load i64* %234, align 8, !tbaa !4
  store i64 %235, i64* %i891, align 8, !tbaa !4
  %xpv_pv1035 = bitcast i8* %233 to i8**
  %236 = load i8** %xpv_pv1035, align 8, !tbaa !0
  br label %cond.end1038

cond.false1036:                                   ; preds = %if.then1026
  %call1037 = call i8* @Perl_sv_2pv_flags(%struct.sv* %val, i64* %i891, i32 2) #6
  %.pre95 = load i64* %i891, align 8, !tbaa !4
  br label %cond.end1038

cond.end1038:                                     ; preds = %cond.false1036, %cond.true1031
  %237 = phi i64 [ %235, %cond.true1031 ], [ %.pre95, %cond.false1036 ]
  %cond1039 = phi i8* [ %236, %cond.true1031 ], [ %call1037, %cond.false1036 ]
  %incdec.ptr1040 = getelementptr inbounds i8* %cond1039, i64 1
  %dec1041 = add i64 %237, -1
  store i64 %dec1041, i64* %i891, align 8, !tbaa !4
  %cmp1042 = icmp ugt i64 %dec1041, 5
  br i1 %cmp1042, label %land.lhs.true1044, label %if.end1051

land.lhs.true1044:                                ; preds = %cond.end1038
  %call1045 = call i32 @strncmp(i8* %incdec.ptr1040, i8* getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), i64 6) #6
  %cmp1046 = icmp eq i32 %call1045, 0
  br i1 %cmp1046, label %if.then1048, label %if.end1051

if.then1048:                                      ; preds = %land.lhs.true1044
  %add.ptr1049 = getelementptr inbounds i8* %cond1039, i64 5
  %sub1050 = add i64 %237, -5
  store i64 %sub1050, i64* %i891, align 8, !tbaa !4
  br label %if.end1051

if.end1051:                                       ; preds = %if.then1048, %land.lhs.true1044, %cond.end1038
  %238 = phi i64 [ %sub1050, %if.then1048 ], [ %dec1041, %land.lhs.true1044 ], [ %dec1041, %cond.end1038 ]
  %c.0 = phi i8* [ %add.ptr1049, %if.then1048 ], [ %incdec.ptr1040, %land.lhs.true1044 ], [ %incdec.ptr1040, %cond.end1038 ]
  %call1052 = call fastcc i32 @needs_quote(i8* %c.0) #7
  %tobool1053 = icmp eq i32 %call1052, 0
  %sv_any1055 = getelementptr inbounds %struct.sv* %retval1, i64 0, i32 0
  %239 = load i8** %sv_any1055, align 8, !tbaa !0
  %xpv_cur1056 = getelementptr inbounds i8* %239, i64 8
  %240 = bitcast i8* %xpv_cur1056 to i64*
  %241 = load i64* %240, align 8, !tbaa !4
  br i1 %tobool1053, label %if.else1079, label %if.then1054

if.then1054:                                      ; preds = %if.end1051
  %add1057 = add i64 %241, 6
  %mul1058 = shl i64 %238, 1
  %add1059 = add i64 %add1057, %mul1058
  %call1060 = call i8* @Perl_sv_grow(%struct.sv* %retval1, i64 %add1059) #6
  %242 = load i8** %sv_any1055, align 8, !tbaa !0
  %xpv_pv1062 = bitcast i8* %242 to i8**
  %243 = load i8** %xpv_pv1062, align 8, !tbaa !0
  %xpv_cur1064 = getelementptr inbounds i8* %242, i64 8
  %244 = bitcast i8* %xpv_cur1064 to i64*
  %245 = load i64* %244, align 8, !tbaa !4
  %add.ptr1065 = getelementptr inbounds i8* %243, i64 %245
  store i8 42, i8* %add.ptr1065, align 1, !tbaa !1
  %add.ptr1065.sum = add i64 %245, 1
  %arrayidx1067 = getelementptr inbounds i8* %243, i64 %add.ptr1065.sum
  store i8 123, i8* %arrayidx1067, align 1, !tbaa !1
  %add.ptr1065.sum3 = add i64 %245, 2
  %arrayidx1068 = getelementptr inbounds i8* %243, i64 %add.ptr1065.sum3
  store i8 39, i8* %arrayidx1068, align 1, !tbaa !1
  %246 = load i64* %i891, align 8, !tbaa !4
  %cmp10.i22 = icmp eq i64 %246, 0
  %add1073.pre = add i64 %245, 3
  br i1 %cmp10.i22, label %esc_q.exit41, label %while.body.i28.preheader

while.body.i28.preheader:                         ; preds = %if.then1054
  %add.ptr1069 = getelementptr inbounds i8* %243, i64 %add1073.pre
  br label %while.body.i28

while.body.i28:                                   ; preds = %while.body.i28.preheader, %sw.default.i39
  %ret.014.i23 = phi i32 [ %ret.1.i34, %sw.default.i39 ], [ 0, %while.body.i28.preheader ]
  %slen.addr.013.i24 = phi i64 [ %dec.i37, %sw.default.i39 ], [ %246, %while.body.i28.preheader ]
  %s.addr.012.i25 = phi i8* [ %incdec.ptr2.i36, %sw.default.i39 ], [ %c.0, %while.body.i28.preheader ]
  %d.addr.011.i26 = phi i8* [ %incdec.ptr1.i35, %sw.default.i39 ], [ %add.ptr1069, %while.body.i28.preheader ]
  %247 = load i8* %s.addr.012.i25, align 1, !tbaa !1
  %conv.i27 = sext i8 %247 to i32
  switch i32 %conv.i27, label %sw.default.i39 [
    i32 39, label %sw.bb.i32
    i32 92, label %sw.bb.i32
  ]

sw.bb.i32:                                        ; preds = %while.body.i28, %while.body.i28
  store i8 92, i8* %d.addr.011.i26, align 1, !tbaa !1
  %incdec.ptr.i29 = getelementptr inbounds i8* %d.addr.011.i26, i64 1
  %inc.i30 = add nsw i32 %ret.014.i23, 1
  %.pre.i31 = load i8* %s.addr.012.i25, align 1, !tbaa !1
  br label %sw.default.i39

sw.default.i39:                                   ; preds = %sw.bb.i32, %while.body.i28
  %248 = phi i8 [ %247, %while.body.i28 ], [ %.pre.i31, %sw.bb.i32 ]
  %d.addr.1.i33 = phi i8* [ %d.addr.011.i26, %while.body.i28 ], [ %incdec.ptr.i29, %sw.bb.i32 ]
  %ret.1.i34 = phi i32 [ %ret.014.i23, %while.body.i28 ], [ %inc.i30, %sw.bb.i32 ]
  store i8 %248, i8* %d.addr.1.i33, align 1, !tbaa !1
  %incdec.ptr1.i35 = getelementptr inbounds i8* %d.addr.1.i33, i64 1
  %incdec.ptr2.i36 = getelementptr inbounds i8* %s.addr.012.i25, i64 1
  %dec.i37 = add i64 %slen.addr.013.i24, -1
  %cmp.i38 = icmp eq i64 %dec.i37, 0
  br i1 %cmp.i38, label %esc_q.exit41.loopexit, label %while.body.i28

esc_q.exit41.loopexit:                            ; preds = %sw.default.i39
  %.pre97 = load i64* %i891, align 8, !tbaa !4
  br label %esc_q.exit41

esc_q.exit41:                                     ; preds = %if.then1054, %esc_q.exit41.loopexit
  %249 = phi i64 [ %.pre97, %esc_q.exit41.loopexit ], [ 0, %if.then1054 ]
  %ret.0.lcssa.i40 = phi i32 [ %ret.1.i34, %esc_q.exit41.loopexit ], [ 0, %if.then1054 ]
  %conv1071 = sext i32 %ret.0.lcssa.i40 to i64
  %add1072 = add i64 %249, %conv1071
  %inc1074 = add i64 %add1072, 4
  store i64 %inc1074, i64* %i891, align 8, !tbaa !4
  %add.ptr1065.sum5 = add i64 %add1073.pre, %add1072
  %arrayidx1075 = getelementptr inbounds i8* %243, i64 %add.ptr1065.sum5
  store i8 39, i8* %arrayidx1075, align 1, !tbaa !1
  %250 = load i64* %i891, align 8, !tbaa !4
  %inc1076 = add i64 %250, 1
  store i64 %inc1076, i64* %i891, align 8, !tbaa !4
  %add.ptr1065.sum6 = add i64 %250, %245
  %arrayidx1077 = getelementptr inbounds i8* %243, i64 %add.ptr1065.sum6
  store i8 125, i8* %arrayidx1077, align 1, !tbaa !1
  %251 = load i64* %i891, align 8, !tbaa !4
  %add.ptr1065.sum7 = add i64 %251, %245
  %arrayidx1078 = getelementptr inbounds i8* %243, i64 %add.ptr1065.sum7
  store i8 0, i8* %arrayidx1078, align 1, !tbaa !1
  %.pre96 = load i64* %i891, align 8, !tbaa !4
  br label %if.end1094

if.else1079:                                      ; preds = %if.end1051
  %add1082 = add i64 %241, 2
  %add1083 = add i64 %add1082, %238
  %call1084 = call i8* @Perl_sv_grow(%struct.sv* %retval1, i64 %add1083) #6
  %252 = load i8** %sv_any1055, align 8, !tbaa !0
  %xpv_pv1086 = bitcast i8* %252 to i8**
  %253 = load i8** %xpv_pv1086, align 8, !tbaa !0
  %xpv_cur1088 = getelementptr inbounds i8* %252, i64 8
  %254 = bitcast i8* %xpv_cur1088 to i64*
  %255 = load i64* %254, align 8, !tbaa !4
  %add.ptr1089 = getelementptr inbounds i8* %253, i64 %255
  store i8 42, i8* %add.ptr1089, align 1, !tbaa !1
  %add.ptr1089.sum = add i64 %255, 1
  %add.ptr1091 = getelementptr inbounds i8* %253, i64 %add.ptr1089.sum
  %call1092 = call i8* @strcpy(i8* %add.ptr1091, i8* %c.0) #6
  %256 = load i64* %i891, align 8, !tbaa !4
  %inc1093 = add i64 %256, 1
  store i64 %inc1093, i64* %i891, align 8, !tbaa !4
  br label %if.end1094

if.end1094:                                       ; preds = %if.else1079, %esc_q.exit41
  %257 = phi i64 [ %.pre96, %esc_q.exit41 ], [ %inc1093, %if.else1079 ]
  %r.0 = phi i8* [ %add.ptr1065, %esc_q.exit41 ], [ %add.ptr1089, %if.else1079 ]
  %258 = load i8** %sv_any1055, align 8, !tbaa !0
  %xpv_cur1096 = getelementptr inbounds i8* %258, i64 8
  %259 = bitcast i8* %xpv_cur1096 to i64*
  %260 = load i64* %259, align 8, !tbaa !4
  %add1097 = add i64 %257, %260
  store i64 %add1097, i64* %259, align 8, !tbaa !4
  %tobool1100 = icmp eq i32 %purity, 0
  br i1 %tobool1100, label %if.end1229, label %if.then1101

if.then1101:                                      ; preds = %if.end1094
  %call1102 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  %call1104 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i64 0) #6
  %sv_any1112 = bitcast %struct.sv* %val to %struct.xpvgv**
  %sv_any1146 = getelementptr inbounds %struct.sv* %call1104, i64 0, i32 0
  %cmp1148 = icmp sgt i32 %indent, 1
  %sv_any1156 = getelementptr inbounds %struct.sv* %call1102, i64 0, i32 0
  br label %for.body1108

for.body1108:                                     ; preds = %for.inc1161, %if.then1101
  %indvars.iv = phi i64 [ 0, %if.then1101 ], [ %indvars.iv.next, %for.inc1161 ]
  %261 = trunc i64 %indvars.iv to i32
  %cmp1109 = icmp eq i32 %261, 0
  br i1 %cmp1109, label %cond.true1111, label %cond.false1115

cond.true1111:                                    ; preds = %for.body1108
  %262 = load %struct.xpvgv** %sv_any1112, align 8, !tbaa !0
  %xgv_gp1113 = getelementptr inbounds %struct.xpvgv* %262, i64 0, i32 7
  %263 = load %struct.gp** %xgv_gp1113, align 8, !tbaa !0
  %gp_sv1114 = getelementptr inbounds %struct.gp* %263, i64 0, i32 0
  %264 = load %struct.sv** %gp_sv1114, align 8, !tbaa !0
  br label %cond.end1126

cond.false1115:                                   ; preds = %for.body1108
  %cmp1116 = icmp eq i32 %261, 1
  %265 = load %struct.xpvgv** %sv_any1112, align 8, !tbaa !0
  %xgv_gp1120 = getelementptr inbounds %struct.xpvgv* %265, i64 0, i32 7
  %266 = load %struct.gp** %xgv_gp1120, align 8, !tbaa !0
  br i1 %cmp1116, label %cond.true1118, label %cond.false1121

cond.true1118:                                    ; preds = %cond.false1115
  %gp_av = getelementptr inbounds %struct.gp* %266, i64 0, i32 4
  %267 = load %struct.av** %gp_av, align 8, !tbaa !0
  %268 = bitcast %struct.av* %267 to %struct.sv*
  br label %cond.end1126

cond.false1121:                                   ; preds = %cond.false1115
  %gp_hv = getelementptr inbounds %struct.gp* %266, i64 0, i32 5
  %269 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %270 = bitcast %struct.hv* %269 to %struct.sv*
  br label %cond.end1126

cond.end1126:                                     ; preds = %cond.true1118, %cond.false1121, %cond.true1111
  %cond1127 = phi %struct.sv* [ %264, %cond.true1111 ], [ %268, %cond.true1118 ], [ %270, %cond.false1121 ]
  %tobool1128 = icmp eq %struct.sv* %cond1127, null
  br i1 %tobool1128, label %for.inc1161, label %if.end1130

if.end1130:                                       ; preds = %cond.end1126
  br i1 %cmp1109, label %land.lhs.true1133, label %if.end1138

land.lhs.true1133:                                ; preds = %if.end1130
  %sv_flags1134 = getelementptr inbounds %struct.sv* %cond1127, i64 0, i32 2
  %271 = load i32* %sv_flags1134, align 4, !tbaa !3
  %and1135 = and i32 %271, 118423552
  %tobool1136 = icmp eq i32 %and1135, 0
  br i1 %tobool1136, label %for.inc1161, label %if.end1138

if.end1138:                                       ; preds = %land.lhs.true1133, %if.end1130
  store i32 0, i32* %nlevel, align 4, !tbaa !3
  %272 = load i64* %i891, align 8, !tbaa !4
  %call1140 = call %struct.sv* @Perl_newSVpvn(i8* %r.0, i64 %272) #6
  call void @Perl_sv_setsv_flags(%struct.sv* %call1102, %struct.sv* %call1140, i32 2) #6
  %arrayidx1142 = getelementptr inbounds [3 x i8*]* @DD_dump.entries, i64 0, i64 %indvars.iv
  %273 = load i8** %arrayidx1142, align 8, !tbaa !0
  %arrayidx1144 = getelementptr inbounds [3 x i64]* @DD_dump.sizes, i64 0, i64 %indvars.iv
  %274 = load i64* %arrayidx1144, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %call1102, i8* %273, i64 %274, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %call1140, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i64 3, i32 2) #6
  call void @Perl_av_push(%struct.av* %postav, %struct.sv* %call1140) #6
  %call1145 = call %struct.sv* @Perl_newRV(%struct.sv* %cond1127) #6
  %275 = load i8** %sv_any1146, align 8, !tbaa !0
  %xpv_cur1147 = getelementptr inbounds i8* %275, i64 8
  %276 = bitcast i8* %xpv_cur1147 to i64*
  store i64 0, i64* %276, align 8, !tbaa !4
  br i1 %cmp1148, label %if.then1150, label %if.end1155

if.then1150:                                      ; preds = %if.end1138
  %sv_any1151 = getelementptr inbounds %struct.sv* %call1140, i64 0, i32 0
  %277 = load i8** %sv_any1151, align 8, !tbaa !0
  %xpv_cur1152 = getelementptr inbounds i8* %277, i64 8
  %278 = bitcast i8* %xpv_cur1152 to i64*
  %279 = load i64* %278, align 8, !tbaa !4
  %conv1153 = trunc i64 %279 to i32
  %call1154 = call fastcc %struct.sv* @sv_x(%struct.sv* %call1104, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), i64 1, i32 %conv1153) #7
  br label %if.end1155

if.end1155:                                       ; preds = %if.then1150, %if.end1138
  %280 = load i8** %sv_any1156, align 8, !tbaa !0
  %xpv_pv1157 = bitcast i8* %280 to i8**
  %281 = load i8** %xpv_pv1157, align 8, !tbaa !0
  %xpv_cur1159 = getelementptr inbounds i8* %280, i64 8
  %282 = bitcast i8* %xpv_cur1159 to i64*
  %283 = load i64* %282, align 8, !tbaa !4
  call fastcc void @DD_dump(%struct.sv* %call1145, i8* %281, i64 %283, %struct.sv* %call1140, %struct.hv* %seenhv, %struct.av* %postav, i32* %nlevel, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %call1104, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #7
  call void @Perl_sv_free(%struct.sv* %call1145) #6
  br label %for.inc1161

for.inc1161:                                      ; preds = %land.lhs.true1133, %cond.end1126, %if.end1155
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end1163, label %for.body1108

for.end1163:                                      ; preds = %for.inc1161
  call void @Perl_sv_free(%struct.sv* %call1104) #6
  call void @Perl_sv_free(%struct.sv* %call1102) #6
  br label %if.end1229

if.else1165:                                      ; preds = %if.else1023
  %cmp1166 = icmp eq %struct.sv* %val, @PL_sv_undef
  br i1 %cmp1166, label %if.then1172, label %lor.lhs.false1168

lor.lhs.false1168:                                ; preds = %if.else1165
  %and1170 = and i32 %224, 118423552
  %tobool1171 = icmp eq i32 %and1170, 0
  br i1 %tobool1171, label %if.then1172, label %integer_came_from_string

if.then1172:                                      ; preds = %lor.lhs.false1168, %if.else1165
  call void @Perl_sv_catpvn_flags(%struct.sv* %retval1, i8* getelementptr inbounds ([6 x i8]* @.str71, i64 0, i64 0), i64 5, i32 2) #6
  br label %if.end1229

integer_came_from_string:                         ; preds = %lor.lhs.false1009, %cond.true998, %lor.lhs.false1168
  %284 = phi i32 [ %228, %lor.lhs.false1009 ], [ %228, %cond.true998 ], [ %224, %lor.lhs.false1168 ]
  %and1175 = and i32 %284, 262144
  %cmp1176 = icmp eq i32 %and1175, 0
  br i1 %cmp1176, label %cond.false1183, label %cond.true1178

cond.true1178:                                    ; preds = %integer_came_from_string
  %sv_any1179 = getelementptr inbounds %struct.sv* %val, i64 0, i32 0
  %285 = load i8** %sv_any1179, align 8, !tbaa !0
  %xpv_cur1180 = getelementptr inbounds i8* %285, i64 8
  %286 = bitcast i8* %xpv_cur1180 to i64*
  %287 = load i64* %286, align 8, !tbaa !4
  store i64 %287, i64* %i891, align 8, !tbaa !4
  %xpv_pv1182 = bitcast i8* %285 to i8**
  %288 = load i8** %xpv_pv1182, align 8, !tbaa !0
  br label %cond.end1185

cond.false1183:                                   ; preds = %integer_came_from_string
  %call1184 = call i8* @Perl_sv_2pv_flags(%struct.sv* %val, i64* %i891, i32 2) #6
  %.pre98 = load i32* %sv_flags, align 4, !tbaa !3
  br label %cond.end1185

cond.end1185:                                     ; preds = %cond.false1183, %cond.true1178
  %289 = phi i32 [ %284, %cond.true1178 ], [ %.pre98, %cond.false1183 ]
  %cond1186 = phi i8* [ %288, %cond.true1178 ], [ %call1184, %cond.false1183 ]
  %and1188 = and i32 %289, 536870912
  %tobool1189 = icmp eq i32 %and1188, 0
  br i1 %tobool1189, label %if.else1199, label %land.lhs.true1190

land.lhs.true1190:                                ; preds = %cond.end1185
  %290 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private1191 = getelementptr inbounds %struct.cop* %290, i64 0, i32 7
  %291 = load i8* %op_private1191, align 1, !tbaa !1
  %and1193 = and i8 %291, 8
  %tobool1194 = icmp eq i8 %and1193, 0
  br i1 %tobool1194, label %if.then1195, label %if.else1199

if.then1195:                                      ; preds = %land.lhs.true1190
  %292 = load i64* %i891, align 8, !tbaa !4
  %call1196 = call fastcc i32 @esc_q_utf8(%struct.sv* %retval1, i8* %cond1186, i64 %292) #7
  %conv1197 = sext i32 %call1196 to i64
  %293 = load i64* %i891, align 8, !tbaa !4
  %add1198 = add i64 %293, %conv1197
  store i64 %add1198, i64* %i891, align 8, !tbaa !4
  br label %if.end1229

if.else1199:                                      ; preds = %land.lhs.true1190, %cond.end1185
  %sv_any1200 = getelementptr inbounds %struct.sv* %retval1, i64 0, i32 0
  %294 = load i8** %sv_any1200, align 8, !tbaa !0
  %xpv_cur1201 = getelementptr inbounds i8* %294, i64 8
  %295 = bitcast i8* %xpv_cur1201 to i64*
  %296 = load i64* %295, align 8, !tbaa !4
  %add1202 = add i64 %296, 3
  %297 = load i64* %i891, align 8, !tbaa !4
  %mul1203 = shl i64 %297, 1
  %add1204 = add i64 %add1202, %mul1203
  %call1205 = call i8* @Perl_sv_grow(%struct.sv* %retval1, i64 %add1204) #6
  %298 = load i8** %sv_any1200, align 8, !tbaa !0
  %xpv_pv1207 = bitcast i8* %298 to i8**
  %299 = load i8** %xpv_pv1207, align 8, !tbaa !0
  %xpv_cur1209 = getelementptr inbounds i8* %298, i64 8
  %300 = bitcast i8* %xpv_cur1209 to i64*
  %301 = load i64* %300, align 8, !tbaa !4
  %add.ptr1210 = getelementptr inbounds i8* %299, i64 %301
  store i8 39, i8* %add.ptr1210, align 1, !tbaa !1
  %302 = load i64* %i891, align 8, !tbaa !4
  %cmp10.i = icmp eq i64 %302, 0
  %inc1216.pre = add i64 %301, 1
  br i1 %cmp10.i, label %esc_q.exit, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.else1199
  %add.ptr1212 = getelementptr inbounds i8* %299, i64 %inc1216.pre
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %sw.default.i
  %ret.014.i = phi i32 [ %ret.1.i, %sw.default.i ], [ 0, %while.body.i.preheader ]
  %slen.addr.013.i = phi i64 [ %dec.i, %sw.default.i ], [ %302, %while.body.i.preheader ]
  %s.addr.012.i = phi i8* [ %incdec.ptr2.i, %sw.default.i ], [ %cond1186, %while.body.i.preheader ]
  %d.addr.011.i = phi i8* [ %incdec.ptr1.i, %sw.default.i ], [ %add.ptr1212, %while.body.i.preheader ]
  %303 = load i8* %s.addr.012.i, align 1, !tbaa !1
  %conv.i = sext i8 %303 to i32
  switch i32 %conv.i, label %sw.default.i [
    i32 39, label %sw.bb.i
    i32 92, label %sw.bb.i
  ]

sw.bb.i:                                          ; preds = %while.body.i, %while.body.i
  store i8 92, i8* %d.addr.011.i, align 1, !tbaa !1
  %incdec.ptr.i = getelementptr inbounds i8* %d.addr.011.i, i64 1
  %inc.i = add nsw i32 %ret.014.i, 1
  %.pre.i = load i8* %s.addr.012.i, align 1, !tbaa !1
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %while.body.i
  %304 = phi i8 [ %303, %while.body.i ], [ %.pre.i, %sw.bb.i ]
  %d.addr.1.i = phi i8* [ %d.addr.011.i, %while.body.i ], [ %incdec.ptr.i, %sw.bb.i ]
  %ret.1.i = phi i32 [ %ret.014.i, %while.body.i ], [ %inc.i, %sw.bb.i ]
  store i8 %304, i8* %d.addr.1.i, align 1, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i8* %d.addr.1.i, i64 1
  %incdec.ptr2.i = getelementptr inbounds i8* %s.addr.012.i, i64 1
  %dec.i = add i64 %slen.addr.013.i, -1
  %cmp.i = icmp eq i64 %dec.i, 0
  br i1 %cmp.i, label %esc_q.exit.loopexit, label %while.body.i

esc_q.exit.loopexit:                              ; preds = %sw.default.i
  %.pre99 = load i64* %i891, align 8, !tbaa !4
  br label %esc_q.exit

esc_q.exit:                                       ; preds = %if.else1199, %esc_q.exit.loopexit
  %305 = phi i64 [ %.pre99, %esc_q.exit.loopexit ], [ 0, %if.else1199 ]
  %ret.0.lcssa.i = phi i32 [ %ret.1.i, %esc_q.exit.loopexit ], [ 0, %if.else1199 ]
  %conv1214 = sext i32 %ret.0.lcssa.i to i64
  %add1215 = add i64 %305, %conv1214
  %inc1217 = add i64 %add1215, 2
  store i64 %inc1217, i64* %i891, align 8, !tbaa !4
  %add.ptr1210.sum1 = add i64 %inc1216.pre, %add1215
  %arrayidx1218 = getelementptr inbounds i8* %299, i64 %add.ptr1210.sum1
  store i8 39, i8* %arrayidx1218, align 1, !tbaa !1
  %306 = load i64* %i891, align 8, !tbaa !4
  %add.ptr1210.sum2 = add i64 %306, %301
  %arrayidx1219 = getelementptr inbounds i8* %299, i64 %add.ptr1210.sum2
  store i8 0, i8* %arrayidx1219, align 1, !tbaa !1
  %307 = load i8** %sv_any1200, align 8, !tbaa !0
  %xpv_cur1221 = getelementptr inbounds i8* %307, i64 8
  %308 = bitcast i8* %xpv_cur1221 to i64*
  %309 = load i64* %308, align 8, !tbaa !4
  %310 = load i64* %i891, align 8, !tbaa !4
  %add1222 = add i64 %310, %309
  store i64 %add1222, i64* %308, align 8, !tbaa !4
  br label %if.end1229

if.end1229:                                       ; preds = %if.end1094, %if.else1020, %if.then1018, %if.then1172, %esc_q.exit, %if.then1195, %for.end1163, %if.end889
  %idlen.1 = phi i64 [ %call125, %if.end889 ], [ %idlen.0, %esc_q.exit ], [ %idlen.0, %if.then1195 ], [ %idlen.0, %if.then1018 ], [ %idlen.0, %if.else1020 ], [ %idlen.0, %for.end1163 ], [ %idlen.0, %if.end1094 ], [ %idlen.0, %if.then1172 ]
  %seenentry.3 = phi %struct.av* [ %seenentry.0, %if.end889 ], [ %seenentry.2, %esc_q.exit ], [ %seenentry.2, %if.then1195 ], [ %seenentry.2, %if.then1018 ], [ %seenentry.2, %if.else1020 ], [ %seenentry.2, %for.end1163 ], [ %seenentry.2, %if.end1094 ], [ %seenentry.2, %if.then1172 ]
  %tobool1230 = icmp eq i64 %idlen.1, 0
  br i1 %tobool1230, label %cleanup, label %if.then1231

if.then1231:                                      ; preds = %if.end1229
  %tobool1232 = icmp eq i32 %deepcopy, 0
  br i1 %tobool1232, label %if.else1237, label %if.then1233

if.then1233:                                      ; preds = %if.then1231
  %conv1235 = trunc i64 %idlen.1 to i32
  %call1236 = call %struct.sv* @Perl_hv_delete(%struct.hv* %seenhv, i8* %1, i32 %conv1235, i32 2) #6
  br label %cleanup

if.else1237:                                      ; preds = %if.then1231
  %tobool1238 = icmp eq i64 %namelen, 0
  %tobool1240 = icmp eq %struct.av* %seenentry.3, null
  %or.cond21 = or i1 %tobool1238, %tobool1240
  br i1 %or.cond21, label %cleanup, label %if.then1241

if.then1241:                                      ; preds = %if.else1237
  %call1242 = call %struct.sv** @Perl_av_fetch(%struct.av* %seenentry.3, i32 2, i32 1) #6
  %311 = load %struct.sv** %call1242, align 8, !tbaa !0
  call void @Perl_sv_setiv(%struct.sv* %311, i64 1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then1241, %if.then1233, %if.end1229, %if.else1237, %if.end170, %if.then197, %if.else202, %if.else204, %if.then936, %cond.end300, %while.end, %if.else207
  call void @llvm.lifetime.end(i64 128, i8* %1) #2
  call void @llvm.lifetime.end(i64 128, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @boot_Data__Dumper(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext13 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext13, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str30, i64 0, i64 0), void (%struct.cv*)* @XS_Data__Dumper_Dumpxs, i8* getelementptr inbounds ([56 x i8]* @.str29, i64 0, i64 0)) #6
  %2 = bitcast %struct.cv* %call to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0)) #6
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %3 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr8 = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmeth(%struct.hv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @Perl_instr(i8*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #1

; Function Attrs: optsize
declare void @Perl_sortsv(%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*) #1

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @needs_quote(i8* nocapture %s) #5 {
entry:
  %.pre = load i8* %s, align 1, !tbaa !1
  %phitmp = icmp eq i8 %.pre, 58
  br label %TOP

TOP:                                              ; preds = %lor.lhs.false53, %entry
  %0 = phi i8 [ %.pre, %entry ], [ 58, %lor.lhs.false53 ]
  %1 = phi i1 [ %phitmp, %entry ], [ true, %lor.lhs.false53 ]
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr2897, %lor.lhs.false53 ]
  br i1 %1, label %if.then, label %if.end9

if.then:                                          ; preds = %TOP
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  %incdec.ptr3 = getelementptr inbounds i8* %s.addr.0, i64 2
  %cmp5 = icmp eq i8 %2, 58
  br i1 %cmp5, label %if.then2.if.end9_crit_edge, label %return

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  %.pre101 = load i8* %incdec.ptr3, align 1, !tbaa !1
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %TOP
  %3 = phi i8 [ %.pre101, %if.then2.if.end9_crit_edge ], [ %0, %TOP ]
  %s.addr.1 = phi i8* [ %incdec.ptr3, %if.then2.if.end9_crit_edge ], [ %s.addr.0, %TOP ]
  %.off = add i8 %3, -65
  %4 = icmp ult i8 %.off, 26
  br i1 %4, label %while.cond.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %.off87 = add i8 %3, -97
  %5 = icmp ult i8 %.off87, 26
  %cmp25 = icmp eq i8 %3, 95
  %or.cond86 = or i1 %5, %cmp25
  br i1 %or.cond86, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %if.end9, %lor.lhs.false
  %incdec.ptr2895 = getelementptr inbounds i8* %s.addr.1, i64 1
  %6 = load i8* %incdec.ptr2895, align 1, !tbaa !1
  %tobool2996 = icmp eq i8 %6, 0
  br i1 %tobool2996, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %7 = phi i8 [ %11, %while.cond.backedge ], [ %6, %while.cond.preheader ]
  %incdec.ptr2897 = phi i8* [ %incdec.ptr28, %while.cond.backedge ], [ %incdec.ptr2895, %while.cond.preheader ]
  %.off88 = add i8 %7, -65
  %8 = icmp ult i8 %.off88, 26
  %.off89 = add i8 %7, -97
  %9 = icmp ult i8 %.off89, 26
  %or.cond = or i1 %8, %9
  %.off90 = add i8 %7, -48
  %10 = icmp ult i8 %.off90, 10
  %or.cond93 = or i1 %or.cond, %10
  br i1 %or.cond93, label %while.cond.backedge, label %lor.lhs.false53

while.cond.backedge:                              ; preds = %while.body, %lor.lhs.false53
  %incdec.ptr28 = getelementptr inbounds i8* %incdec.ptr2897, i64 1
  %11 = load i8* %incdec.ptr28, align 1, !tbaa !1
  %tobool29 = icmp eq i8 %11, 0
  br i1 %tobool29, label %return, label %while.body

lor.lhs.false53:                                  ; preds = %while.body
  switch i8 %7, label %return [
    i8 95, label %while.cond.backedge
    i8 58, label %TOP
  ]

return:                                           ; preds = %lor.lhs.false, %if.then, %if.then2, %lor.lhs.false53, %while.cond.backedge, %while.cond.preheader
  %retval.0 = phi i32 [ 1, %lor.lhs.false53 ], [ 0, %while.cond.backedge ], [ 0, %while.cond.preheader ], [ 1, %if.then2 ], [ 1, %if.then ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @esc_q_utf8(%struct.sv* %sv, i8* %src, i64 %slen) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %0, i64 8
  %1 = bitcast i8* %xpv_cur to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %src, i64 %slen
  %cmp209 = icmp sgt i64 %slen, 0
  br i1 %cmp209, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %add42222 = add i64 %2, 3
  br label %if.else93

for.body:                                         ; preds = %entry, %for.inc
  %s.0215 = phi i8* [ %add.ptr40, %for.inc ], [ %src, %entry ]
  %normal.0214 = phi i64 [ %normal.1, %for.inc ], [ 0, %entry ]
  %qq_escapables.0213 = phi i64 [ %qq_escapables.1, %for.inc ], [ 0, %entry ]
  %single_quotes.0212 = phi i64 [ %single_quotes.1, %for.inc ], [ 0, %entry ]
  %backslashes.0211 = phi i64 [ %backslashes.1, %for.inc ], [ 0, %entry ]
  %grow.0210 = phi i64 [ %grow.1, %for.inc ], [ 0, %entry ]
  %call = tail call i64 @Perl_utf8_to_uvchr(i8* %s.0215, i64* null) #6
  %cmp1 = icmp ugt i64 %call, 127
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %cmp2 = icmp ult i64 %call, 256
  br i1 %cmp2, label %cond.end13, label %cond.false

cond.false:                                       ; preds = %if.then
  %cmp3 = icmp ult i64 %call, 4096
  br i1 %cmp3, label %cond.end13, label %cond.false5

cond.false5:                                      ; preds = %cond.false
  %cmp6 = icmp ult i64 %call, 65536
  br i1 %cmp6, label %cond.end13, label %cond.false8

cond.false8:                                      ; preds = %cond.false5
  %cmp9 = icmp ult i64 %call, 4294967296
  %phitmp = select i1 %cmp9, i64 12, i64 36
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false, %cond.false5, %cond.false8, %if.then
  %cond14 = phi i64 [ 6, %if.then ], [ 7, %cond.false ], [ %phitmp, %cond.false8 ], [ 8, %cond.false5 ]
  %add15 = add i64 %cond14, %grow.0210
  br label %for.inc

if.else:                                          ; preds = %for.body
  switch i64 %call, label %if.else34 [
    i64 92, label %if.then18
    i64 39, label %if.then22
    i64 64, label %if.then32
    i64 36, label %if.then32
    i64 34, label %if.then32
  ]

if.then18:                                        ; preds = %if.else
  %inc = add i64 %backslashes.0211, 1
  br label %for.inc

if.then22:                                        ; preds = %if.else
  %inc23 = add i64 %single_quotes.0212, 1
  br label %for.inc

if.then32:                                        ; preds = %if.else, %if.else, %if.else
  %inc33 = add i64 %qq_escapables.0213, 1
  br label %for.inc

if.else34:                                        ; preds = %if.else
  %inc35 = add i64 %normal.0214, 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end13, %if.then22, %if.else34, %if.then32, %if.then18
  %grow.1 = phi i64 [ %add15, %cond.end13 ], [ %grow.0210, %if.then18 ], [ %grow.0210, %if.then22 ], [ %grow.0210, %if.then32 ], [ %grow.0210, %if.else34 ]
  %backslashes.1 = phi i64 [ %backslashes.0211, %cond.end13 ], [ %inc, %if.then18 ], [ %backslashes.0211, %if.then22 ], [ %backslashes.0211, %if.then32 ], [ %backslashes.0211, %if.else34 ]
  %single_quotes.1 = phi i64 [ %single_quotes.0212, %cond.end13 ], [ %single_quotes.0212, %if.then18 ], [ %inc23, %if.then22 ], [ %single_quotes.0212, %if.then32 ], [ %single_quotes.0212, %if.else34 ]
  %qq_escapables.1 = phi i64 [ %qq_escapables.0213, %cond.end13 ], [ %qq_escapables.0213, %if.then18 ], [ %qq_escapables.0213, %if.then22 ], [ %inc33, %if.then32 ], [ %qq_escapables.0213, %if.else34 ]
  %normal.1 = phi i64 [ %normal.0214, %cond.end13 ], [ %normal.0214, %if.then18 ], [ %normal.0214, %if.then22 ], [ %normal.0214, %if.then32 ], [ %inc35, %if.else34 ]
  %3 = load i8* %s.0215, align 1, !tbaa !1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext = zext i8 %4 to i64
  %add.ptr40 = getelementptr inbounds i8* %s.0215, i64 %idx.ext
  %cmp = icmp ult i8* %add.ptr40, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %tobool = icmp eq i64 %grow.1, 0
  %add42 = add i64 %2, 3
  br i1 %tobool, label %if.else93, label %if.then41

if.then41:                                        ; preds = %for.end
  %tmp = add i64 %qq_escapables.1, %backslashes.1
  %tmp199 = shl i64 %tmp, 1
  %add44 = add i64 %grow.1, %add42
  %add45 = add i64 %add44, %single_quotes.1
  %add47 = add i64 %add45, %normal.1
  %add48 = add i64 %add47, %tmp199
  %call49 = tail call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add48) #6
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %5 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !0
  %add.ptr51 = getelementptr inbounds i8* %6, i64 %2
  %add.ptr51.sum = add i64 %2, 1
  %incdec.ptr = getelementptr inbounds i8* %6, i64 %add.ptr51.sum
  store i8 34, i8* %add.ptr51, align 1, !tbaa !1
  br i1 %cmp209, label %for.body55, label %for.end91

for.body55:                                       ; preds = %if.then41, %for.inc85
  %s.1207 = phi i8* [ %add.ptr90, %for.inc85 ], [ %src, %if.then41 ]
  %r.0206 = phi i8* [ %r.1, %for.inc85 ], [ %incdec.ptr, %if.then41 ]
  %call57 = tail call i64 @Perl_utf8_to_uvchr(i8* %s.1207, i64* null) #6
  switch i64 %call57, label %if.else73 [
    i64 92, label %if.then69
    i64 64, label %if.then69
    i64 36, label %if.then69
    i64 34, label %if.then69
  ]

if.then69:                                        ; preds = %for.body55, %for.body55, %for.body55, %for.body55
  %incdec.ptr70 = getelementptr inbounds i8* %r.0206, i64 1
  store i8 92, i8* %r.0206, align 1, !tbaa !1
  %conv71 = trunc i64 %call57 to i8
  %incdec.ptr72 = getelementptr inbounds i8* %r.0206, i64 2
  store i8 %conv71, i8* %incdec.ptr70, align 1, !tbaa !1
  br label %for.inc85

if.else73:                                        ; preds = %for.body55
  %cmp74 = icmp ult i64 %call57, 128
  br i1 %cmp74, label %if.then76, label %if.else79

if.then76:                                        ; preds = %if.else73
  %conv77 = trunc i64 %call57 to i8
  %incdec.ptr78 = getelementptr inbounds i8* %r.0206, i64 1
  store i8 %conv77, i8* %r.0206, align 1, !tbaa !1
  br label %for.inc85

if.else79:                                        ; preds = %if.else73
  %call80 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %r.0206, i8* getelementptr inbounds ([8 x i8]* @.str72, i64 0, i64 0), i64 %call57) #6
  %call81 = tail call i64 @strlen(i8* %r.0206) #6
  %add.ptr82 = getelementptr inbounds i8* %r.0206, i64 %call81
  br label %for.inc85

for.inc85:                                        ; preds = %if.then69, %if.else79, %if.then76
  %r.1 = phi i8* [ %incdec.ptr72, %if.then69 ], [ %incdec.ptr78, %if.then76 ], [ %add.ptr82, %if.else79 ]
  %7 = load i8* %s.1207, align 1, !tbaa !1
  %idxprom86 = zext i8 %7 to i64
  %arrayidx87 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom86
  %8 = load i8* %arrayidx87, align 1, !tbaa !1
  %idx.ext89 = zext i8 %8 to i64
  %add.ptr90 = getelementptr inbounds i8* %s.1207, i64 %idx.ext89
  %cmp53 = icmp ult i8* %add.ptr90, %add.ptr
  br i1 %cmp53, label %for.body55, label %for.end91

for.end91:                                        ; preds = %for.inc85, %if.then41
  %r.0.lcssa = phi i8* [ %incdec.ptr, %if.then41 ], [ %r.1, %for.inc85 ]
  store i8 34, i8* %r.0.lcssa, align 1, !tbaa !1
  br label %if.end126

if.else93:                                        ; preds = %for.end.thread, %for.end
  %add42227 = phi i64 [ %add42222, %for.end.thread ], [ %add42, %for.end ]
  %backslashes.0.lcssa226 = phi i64 [ 0, %for.end.thread ], [ %backslashes.1, %for.end ]
  %single_quotes.0.lcssa225 = phi i64 [ 0, %for.end.thread ], [ %single_quotes.1, %for.end ]
  %qq_escapables.0.lcssa224 = phi i64 [ 0, %for.end.thread ], [ %qq_escapables.1, %for.end ]
  %normal.0.lcssa223 = phi i64 [ 0, %for.end.thread ], [ %normal.1, %for.end ]
  %tmp200 = add i64 %single_quotes.0.lcssa225, %backslashes.0.lcssa226
  %tmp201 = shl i64 %tmp200, 1
  %add98 = add i64 %qq_escapables.0.lcssa224, %add42227
  %add99 = add i64 %add98, %normal.0.lcssa223
  %add100 = add i64 %add99, %tmp201
  %call101 = tail call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add100) #6
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv103 = bitcast i8* %9 to i8**
  %10 = load i8** %xpv_pv103, align 8, !tbaa !0
  %add.ptr104 = getelementptr inbounds i8* %10, i64 %2
  %add.ptr104.sum = add i64 %2, 1
  %incdec.ptr105 = getelementptr inbounds i8* %10, i64 %add.ptr104.sum
  store i8 39, i8* %add.ptr104, align 1, !tbaa !1
  br i1 %cmp209, label %for.body109, label %for.end124

for.body109:                                      ; preds = %if.else93, %if.end120
  %s.2204 = phi i8* [ %incdec.ptr123, %if.end120 ], [ %src, %if.else93 ]
  %r.2203 = phi i8* [ %incdec.ptr121, %if.end120 ], [ %incdec.ptr105, %if.else93 ]
  %11 = load i8* %s.2204, align 1, !tbaa !1
  switch i8 %11, label %if.end120 [
    i8 39, label %if.then118
    i8 92, label %if.then118
  ]

if.then118:                                       ; preds = %for.body109, %for.body109
  %incdec.ptr119 = getelementptr inbounds i8* %r.2203, i64 1
  store i8 92, i8* %r.2203, align 1, !tbaa !1
  br label %if.end120

if.end120:                                        ; preds = %for.body109, %if.then118
  %r.3 = phi i8* [ %incdec.ptr119, %if.then118 ], [ %r.2203, %for.body109 ]
  %incdec.ptr121 = getelementptr inbounds i8* %r.3, i64 1
  store i8 %11, i8* %r.3, align 1, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i8* %s.2204, i64 1
  %cmp107 = icmp ult i8* %incdec.ptr123, %add.ptr
  br i1 %cmp107, label %for.body109, label %for.end124

for.end124:                                       ; preds = %if.end120, %if.else93
  %r.2.lcssa = phi i8* [ %incdec.ptr105, %if.else93 ], [ %incdec.ptr121, %if.end120 ]
  store i8 39, i8* %r.2.lcssa, align 1, !tbaa !1
  br label %if.end126

if.end126:                                        ; preds = %for.end124, %for.end91
  %rstart.0 = phi i8* [ %add.ptr51, %for.end91 ], [ %add.ptr104, %for.end124 ]
  %r.0.pn = phi i8* [ %r.0.lcssa, %for.end91 ], [ %r.2.lcssa, %for.end124 ]
  %r.4 = getelementptr inbounds i8* %r.0.pn, i64 1
  store i8 0, i8* %r.4, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %r.4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %rstart.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add127 = add i64 %sub.ptr.sub, %2
  %12 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur129 = getelementptr inbounds i8* %12, i64 8
  %13 = bitcast i8* %xpv_cur129 to i64*
  store i64 %add127, i64* %13, align 8, !tbaa !4
  %conv130 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv130
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare i64 @Perl_utf8_to_uvchr(i8*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
