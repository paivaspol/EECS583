; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/universal.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.xpv = type { i8*, i64, i64 }
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
%struct._PerlIO = type { %struct._PerlIO*, %struct._PerlIO_funcs*, i32 }
%struct._PerlIO_funcs = type { i64, i8*, i64, i32, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, i64 (%struct._PerlIO**)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i64, i32)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**)*, void (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**, i8*, i64)* }
%struct.PerlIO_list_s = type { i64, i64, i64, %struct.PerlIO_pair_t* }
%struct.PerlIO_pair_t = type { %struct._PerlIO_funcs*, %struct.sv* }
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }

@PL_sv_yes = external global %struct.sv
@.str = private unnamed_addr constant [59 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/universal.c\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::isa\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::can\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c"UNIVERSAL::VERSION\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"utf8::is_utf8\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"utf8::valid\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"utf8::encode\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"utf8::decode\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"utf8::upgrade\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"utf8::downgrade\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"utf8::native_to_unicode\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"utf8::unicode_to_native\00", align 1
@.str12 = private unnamed_addr constant [22 x i8] c"Internals::SvREADONLY\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"\5C[$%@];$\00", align 1
@.str14 = private unnamed_addr constant [20 x i8] c"Internals::SvREFCNT\00", align 1
@.str15 = private unnamed_addr constant [33 x i8] c"Internals::hv_clear_placeholders\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"\5C%\00", align 1
@.str17 = private unnamed_addr constant [19 x i8] c"PerlIO::get_layers\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"*;@\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c"Regexp::DESTROY\00", align 1
@.str20 = private unnamed_addr constant [21 x i8] c"Internals::hash_seed\00", align 1
@.str21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str22 = private unnamed_addr constant [23 x i8] c"Internals::rehash_seed\00", align 1
@.str23 = private unnamed_addr constant [20 x i8] c"Internals::HvREHASH\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str24 = private unnamed_addr constant [39 x i8] c"Usage: UNIVERSAL::isa(reference, kind)\00", align 1
@PL_sv_undef = external global %struct.sv
@PL_sv_no = external global %struct.sv
@.str25 = private unnamed_addr constant [42 x i8] c"Usage: UNIVERSAL::can(object-ref, method)\00", align 1
@.str26 = private unnamed_addr constant [46 x i8] c"Cannot find version of an unblessed reference\00", align 1
@.str27 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"(undef)\00", align 1
@.str29 = private unnamed_addr constant [54 x i8] c"%s does not define $%s::VERSION--version check failed\00", align 1
@PL_Sv = external global %struct.sv*
@.str30 = private unnamed_addr constant [61 x i8] c"%s defines neither package nor VERSION--version check failed\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"%s v%vd required--this is only v%vd\00", align 1
@.str32 = private unnamed_addr constant [48 x i8] c"%s version %s required--this is only version %s\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"Usage: utf8::is_utf8(sv)\00", align 1
@.str34 = private unnamed_addr constant [23 x i8] c"Usage: utf8::valid(sv)\00", align 1
@.str35 = private unnamed_addr constant [24 x i8] c"Usage: utf8::encode(sv)\00", align 1
@.str36 = private unnamed_addr constant [24 x i8] c"Usage: utf8::decode(sv)\00", align 1
@.str37 = private unnamed_addr constant [25 x i8] c"Usage: utf8::upgrade(sv)\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str38 = private unnamed_addr constant [37 x i8] c"Usage: utf8::downgrade(sv, failok=0)\00", align 1
@.str39 = private unnamed_addr constant [35 x i8] c"Usage: utf8::native_to_unicode(sv)\00", align 1
@.str40 = private unnamed_addr constant [35 x i8] c"Usage: utf8::unicode_to_native(sv)\00", align 1
@PL_Xpv = external global %struct.xpv*
@.str41 = private unnamed_addr constant [44 x i8] c"Usage: UNIVERSAL::hv_clear_placeholders(hv)\00", align 1
@.str42 = private unnamed_addr constant [44 x i8] c"Usage: PerlIO_get_layers(filehandle[,args])\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str45 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str46 = private unnamed_addr constant [34 x i8] c"get_layers: unknown argument '%s'\00", align 1
@PL_stack_max = external global %struct.sv**
@.str47 = private unnamed_addr constant [7 x i8] c"%_(%_)\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@PL_rehash_seed = external global i64
@.str50 = private unnamed_addr constant [29 x i8] c"Internals::HvREHASH $hashref\00", align 1
@.str51 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str52 = private unnamed_addr constant [47 x i8] c"Recursive inheritance detected in package '%s'\00", align 1
@.str53 = private unnamed_addr constant [15 x i8] c"::ISA::CACHE::\00", align 1
@PL_sub_generation = external global i32
@.str54 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@.str55 = private unnamed_addr constant [37 x i8] c"Can't locate package %_ for @%s::ISA\00", align 1

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_sv_derived_from(%struct.sv* %sv, i8* %name) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 8192
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_mg_get(%struct.sv* %sv) #4
  %.pre = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi i32 [ %0, %entry ], [ %.pre, %if.then ]
  %and2 = and i32 %1, 524288
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end13.thread, label %if.then4

if.then4:                                         ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %2 to %struct.sv**
  %3 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %call5 = tail call i8* @Perl_sv_reftype(%struct.sv* %3, i32 0) #4
  %sv_flags6 = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %4 = load i32* %sv_flags6, align 4, !tbaa !0
  %and7 = and i32 %4, 4096
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.then4
  %sv_any10 = getelementptr inbounds %struct.sv* %3, i64 0, i32 0
  %5 = load i8** %sv_any10, align 8, !tbaa !3
  %xmg_stash = getelementptr inbounds i8* %5, i64 48
  %6 = bitcast i8* %xmg_stash to %struct.hv**
  %7 = load %struct.hv** %6, align 8, !tbaa !3
  br label %if.end13

if.end13.thread:                                  ; preds = %if.end
  %call12 = tail call %struct.hv* @Perl_gv_stashsv(%struct.sv* %sv, i32 0) #4
  %call1434 = tail call %struct.hv* @Perl_gv_stashpv(i8* %name, i32 0) #4
  br label %lor.rhs

if.end13:                                         ; preds = %if.then4, %if.then9
  %stash.0 = phi %struct.hv* [ %7, %if.then9 ], [ null, %if.then4 ]
  %call14 = tail call %struct.hv* @Perl_gv_stashpv(i8* %name, i32 0) #4
  %tobool15 = icmp eq i8* %call5, null
  br i1 %tobool15, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %call16 = tail call i32 @strcmp(i8* %call5, i8* %name) #4
  %tobool17 = icmp eq i32 %call16, 0
  br i1 %tobool17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end13.thread, %land.lhs.true, %if.end13
  %call1437 = phi %struct.hv* [ %call1434, %if.end13.thread ], [ %call14, %land.lhs.true ], [ %call14, %if.end13 ]
  %stash.036 = phi %struct.hv* [ %call12, %if.end13.thread ], [ %stash.0, %land.lhs.true ], [ %stash.0, %if.end13 ]
  %tobool18 = icmp eq %struct.hv* %stash.036, null
  br i1 %tobool18, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %call19 = tail call i64 @strlen(i8* %name) #4
  %conv = trunc i64 %call19 to i32
  %call20 = tail call fastcc %struct.sv* @S_isa_lookup(%struct.hv* %stash.036, i8* %name, %struct.hv* %call1437, i32 %conv, i32 0) #5
  %cmp = icmp eq %struct.sv* %call20, @PL_sv_yes
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp, %land.rhs ]
  %conv22 = zext i1 %8 to i8
  ret i8 %conv22
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_reftype(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashsv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_isa_lookup(%struct.hv* %stash, i8* %name, %struct.hv* %name_stash, i32 %len, i32 %level) #0 {
entry:
  %tobool = icmp ne %struct.hv* %name_stash, null
  %cmp = icmp eq %struct.hv* %stash, %name_stash
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %stash, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 10
  %1 = load i8** %xhv_name, align 8, !tbaa !3
  %call = tail call i32 @strcmp(i8* %1, i8* %name) #4
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(i8* %name, i8* getelementptr inbounds ([10 x i8]* @.str51, i64 0, i64 0)) #4
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end3
  %cmp8 = icmp sgt i32 %level, 100
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([47 x i8]* @.str52, i64 0, i64 0), i8* %1) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %call13 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i32 14, i32 0) #4
  %tobool14 = icmp eq %struct.sv** %call13, null
  br i1 %tobool14, label %if.end40, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end12
  %2 = load %struct.sv** %call13, align 8
  %cmp16 = icmp eq %struct.sv* %2, @PL_sv_undef
  br i1 %cmp16, label %if.end40, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %sv_any18 = bitcast %struct.sv* %2 to %struct.xpvgv**
  %3 = load %struct.xpvgv** %sv_any18, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %4, i64 0, i32 0
  %5 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %tobool19 = icmp eq %struct.sv* %5, null
  br i1 %tobool19, label %if.end40, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %gp_hv = getelementptr inbounds %struct.gp* %4, i64 0, i32 5
  %6 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool23 = icmp eq %struct.hv* %6, null
  br i1 %tobool23, label %if.end40, label %if.then24

if.then24:                                        ; preds = %land.lhs.true20
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, 65536
  %tobool25 = icmp eq i32 %and, 0
  br i1 %tobool25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then24
  %sv_any26 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %8 = load i8** %sv_any26, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %8, i64 24
  %9 = bitcast i8* %xiv_iv to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then24
  %call27 = tail call i64 @Perl_sv_2iv(%struct.sv* %5) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %call27, %cond.false ]
  %11 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %conv = zext i32 %11 to i64
  %cmp28 = icmp eq i64 %cond, %conv
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %cond.end
  %call31 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %6, i8* %name, i32 %len, i32 0) #4
  %tobool32 = icmp eq %struct.sv** %call31, null
  br i1 %tobool32, label %if.end40, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then30
  %12 = load %struct.sv** %call31, align 8, !tbaa !3
  %cmp34 = icmp eq %struct.sv* %12, @PL_sv_undef
  br i1 %cmp34, label %if.end40, label %return

if.else:                                          ; preds = %cond.end
  tail call void @Perl_hv_clear(%struct.hv* %6) #4
  %13 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %conv38 = zext i32 %13 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %5, i64 %conv38) #4
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true33, %if.then30, %land.lhs.true20, %land.lhs.true17, %land.lhs.true15, %if.end12, %if.else
  %subgen.0 = phi %struct.sv* [ %5, %land.lhs.true33 ], [ %5, %if.then30 ], [ %5, %if.else ], [ %5, %land.lhs.true20 ], [ null, %land.lhs.true17 ], [ null, %land.lhs.true15 ], [ null, %if.end12 ]
  %hv.0 = phi %struct.hv* [ %6, %land.lhs.true33 ], [ %6, %if.then30 ], [ %6, %if.else ], [ null, %land.lhs.true20 ], [ null, %land.lhs.true17 ], [ null, %land.lhs.true15 ], [ null, %if.end12 ]
  %call41 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash, i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i32 3, i32 0) #4
  %tobool42 = icmp eq %struct.sv** %call41, null
  br i1 %tobool42, label %return, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.end40
  %14 = load %struct.sv** %call41, align 8
  %cmp44 = icmp eq %struct.sv* %14, @PL_sv_undef
  br i1 %cmp44, label %return, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %sv_any47 = bitcast %struct.sv* %14 to %struct.xpvgv**
  %15 = load %struct.xpvgv** %sv_any47, align 8, !tbaa !3
  %xgv_gp48 = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp48, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %16, i64 0, i32 4
  %17 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool49 = icmp eq %struct.av* %17, null
  br i1 %tobool49, label %return, label %if.then50

if.then50:                                        ; preds = %land.lhs.true46
  %tobool51 = icmp ne %struct.hv* %hv.0, null
  %tobool51.not = xor i1 %tobool51, true
  %tobool52 = icmp eq %struct.sv* %subgen.0, null
  %or.cond182 = or i1 %tobool52, %tobool51.not
  br i1 %or.cond182, label %if.then53, label %if.end87

if.then53:                                        ; preds = %if.then50
  %call54 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i32 14, i32 1) #4
  %18 = load %struct.sv** %call54, align 8
  %19 = bitcast %struct.sv* %18 to %struct.gv*
  %20 = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %21 = load i32* %20, align 4, !tbaa !0
  %and56 = and i32 %21, 255
  %cmp57 = icmp eq i32 %and56, 13
  br i1 %cmp57, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.then53
  tail call void @Perl_gv_init(%struct.gv* %19, %struct.hv* %stash, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i64 14, i32 1) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.then59
  br i1 %tobool51, label %if.end78, label %if.then62

if.then62:                                        ; preds = %if.end60
  %sv_any63 = bitcast %struct.sv* %18 to %struct.xpvgv**
  %22 = load %struct.xpvgv** %sv_any63, align 8, !tbaa !3
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp64, align 8, !tbaa !3
  %gp_hv65 = getelementptr inbounds %struct.gp* %23, i64 0, i32 5
  %24 = load %struct.hv** %gp_hv65, align 8, !tbaa !3
  %tobool66 = icmp eq %struct.hv* %24, null
  br i1 %tobool66, label %cond.false71, label %if.end78

cond.false71:                                     ; preds = %if.then62
  %call72 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %19) #4
  %sv_any73 = getelementptr inbounds %struct.gv* %call72, i64 0, i32 0
  %25 = load %struct.xpvgv** %sv_any73, align 8, !tbaa !3
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 7
  %26 = load %struct.gp** %xgv_gp74, align 8, !tbaa !3
  %gp_hv75 = getelementptr inbounds %struct.gp* %26, i64 0, i32 5
  %27 = load %struct.hv** %gp_hv75, align 8, !tbaa !3
  br label %if.end78

if.end78:                                         ; preds = %cond.false71, %if.then62, %if.end60
  %hv.1 = phi %struct.hv* [ %hv.0, %if.end60 ], [ %27, %cond.false71 ], [ %24, %if.then62 ]
  br i1 %tobool52, label %if.then80, label %if.end87

if.then80:                                        ; preds = %if.end78
  %28 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %conv81 = zext i32 %28 to i64
  %call82 = tail call %struct.sv* @Perl_newSViv(i64 %conv81) #4
  %sv_any83 = bitcast %struct.sv* %18 to %struct.xpvgv**
  %29 = load %struct.xpvgv** %sv_any83, align 8, !tbaa !3
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv* %29, i64 0, i32 7
  %30 = load %struct.gp** %xgv_gp84, align 8, !tbaa !3
  %gp_sv85 = getelementptr inbounds %struct.gp* %30, i64 0, i32 0
  store %struct.sv* %call82, %struct.sv** %gp_sv85, align 8, !tbaa !3
  br label %if.end87

if.end87:                                         ; preds = %if.then50, %if.end78, %if.then80
  %hv.2 = phi %struct.hv* [ %hv.1, %if.end78 ], [ %hv.1, %if.then80 ], [ %hv.0, %if.then50 ]
  %tobool88 = icmp eq %struct.hv* %hv.2, null
  br i1 %tobool88, label %return, label %if.then89

if.then89:                                        ; preds = %if.end87
  %sv_any91 = getelementptr inbounds %struct.av* %17, i64 0, i32 0
  %31 = load %struct.xpvav** %sv_any91, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 1
  %32 = load i64* %xav_fill, align 8, !tbaa !4
  %add = add nsw i64 %32, 1
  %conv93 = trunc i64 %add to i32
  %tobool94184 = icmp eq i32 %conv93, 0
  br i1 %tobool94184, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then89
  %xav_array = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 0
  %33 = load i8** %xav_array, align 8, !tbaa !3
  %34 = bitcast i8* %33 to %struct.sv**
  %add128 = add nsw i32 %level, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %dec186.in = phi i32 [ %conv93, %while.body.lr.ph ], [ %dec186, %while.cond.backedge ]
  %svp90.0185 = phi %struct.sv** [ %34, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge ]
  %dec186 = add nsw i32 %dec186.in, -1
  %incdec.ptr = getelementptr inbounds %struct.sv** %svp90.0185, i64 1
  %35 = load %struct.sv** %svp90.0185, align 8, !tbaa !3
  %call96 = tail call %struct.hv* @Perl_gv_stashsv(%struct.sv* %35, i32 0) #4
  %tobool97 = icmp eq %struct.hv* %call96, null
  br i1 %tobool97, label %if.then98, label %if.end127

if.then98:                                        ; preds = %while.body
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp99 = icmp eq %struct.sv* %37, null
  br i1 %cmp99, label %lor.lhs.false115, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.then98
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings102 = getelementptr inbounds %struct.cop* %38, i64 0, i32 14
  %39 = load %struct.sv** %cop_warnings102, align 8, !tbaa !3
  %cmp103 = icmp eq %struct.sv* %39, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp103, label %lor.lhs.false115, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true101
  %40 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings106 = getelementptr inbounds %struct.cop* %40, i64 0, i32 14
  %41 = load %struct.sv** %cop_warnings106, align 8, !tbaa !3
  %cmp107 = icmp eq %struct.sv* %41, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp107, label %if.then123, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %land.lhs.true105
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings110 = getelementptr inbounds %struct.cop* %42, i64 0, i32 14
  %43 = load %struct.sv** %cop_warnings110, align 8, !tbaa !3
  %sv_any111 = getelementptr inbounds %struct.sv* %43, i64 0, i32 0
  %44 = load i8** %sv_any111, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %44 to i8**
  %45 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %45, i64 3
  %46 = load i8* %arrayidx, align 1, !tbaa !1
  %and113 = and i8 %46, 1
  %tobool114 = icmp eq i8 %and113, 0
  br i1 %tobool114, label %lor.lhs.false115, label %if.then123

lor.lhs.false115:                                 ; preds = %lor.lhs.false109, %land.lhs.true101, %if.then98
  %47 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings116 = getelementptr inbounds %struct.cop* %47, i64 0, i32 14
  %48 = load %struct.sv** %cop_warnings116, align 8, !tbaa !3
  %cmp117 = icmp eq %struct.sv* %48, null
  br i1 %cmp117, label %land.lhs.true119, label %while.cond.backedge

land.lhs.true119:                                 ; preds = %lor.lhs.false115
  %49 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and121 = and i8 %49, 1
  %tobool122 = icmp eq i8 %and121, 0
  br i1 %tobool122, label %while.cond.backedge, label %if.then123

if.then123:                                       ; preds = %lor.lhs.false109, %land.lhs.true119, %land.lhs.true105
  %50 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name125 = getelementptr inbounds %struct.xpvhv* %50, i64 0, i32 10
  %51 = load i8** %xhv_name125, align 8, !tbaa !3
  tail call void (i32, i8*, ...)* @Perl_warner(i32 28, i8* getelementptr inbounds ([37 x i8]* @.str55, i64 0, i64 0), %struct.sv* %35, i8* %51) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then123, %lor.lhs.false115, %if.end127, %land.lhs.true119
  %tobool94 = icmp eq i32 %dec186, 0
  br i1 %tobool94, label %while.end, label %while.body

if.end127:                                        ; preds = %while.body
  %call129 = tail call fastcc %struct.sv* @S_isa_lookup(%struct.hv* %call96, i8* %name, %struct.hv* %name_stash, i32 %len, i32 %add128) #5
  %cmp130 = icmp eq %struct.sv* %call129, @PL_sv_yes
  br i1 %cmp130, label %if.then132, label %while.cond.backedge

if.then132:                                       ; preds = %if.end127
  %call133 = tail call %struct.sv** @Perl_hv_store(%struct.hv* %hv.2, i8* %name, i32 %len, %struct.sv* @PL_sv_yes, i32 0) #4
  br label %return

while.end:                                        ; preds = %while.cond.backedge, %if.then89
  %call135 = tail call %struct.sv** @Perl_hv_store(%struct.hv* %hv.2, i8* %name, i32 %len, %struct.sv* @PL_sv_no, i32 0) #4
  br label %return

return:                                           ; preds = %while.end, %if.end40, %land.lhs.true43, %land.lhs.true46, %if.end87, %land.lhs.true33, %if.end3, %if.end, %entry, %if.then132
  %retval.0 = phi %struct.sv* [ @PL_sv_yes, %if.then132 ], [ @PL_sv_yes, %entry ], [ @PL_sv_yes, %if.end ], [ @PL_sv_yes, %if.end3 ], [ %12, %land.lhs.true33 ], [ @PL_sv_no, %if.end87 ], [ @PL_sv_no, %land.lhs.true46 ], [ @PL_sv_no, %land.lhs.true43 ], [ @PL_sv_no, %if.end40 ], [ @PL_sv_no, %while.end ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_boot_core_UNIVERSAL() #0 {
entry:
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), void (%struct.cv*)* @XS_UNIVERSAL_isa, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call1 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), void (%struct.cv*)* @XS_UNIVERSAL_can, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call2 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), void (%struct.cv*)* @XS_UNIVERSAL_VERSION, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call3 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_is_utf8, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call4 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_valid, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call5 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_encode, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_decode, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_upgrade, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_downgrade, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_native_to_unicode, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0), void (%struct.cv*)* @XS_utf8_unicode_to_native, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), void (%struct.cv*)* @XS_Internals_SvREADONLY, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %0 = bitcast %struct.cv* %call11 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %0, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #4
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str14, i64 0, i64 0), void (%struct.cv*)* @XS_Internals_SvREFCNT, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %1 = bitcast %struct.cv* %call12 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %1, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #4
  %call13 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([33 x i8]* @.str15, i64 0, i64 0), void (%struct.cv*)* @XS_Internals_hv_clear_placehold, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %2 = bitcast %struct.cv* %call13 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #4
  %call14 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0), void (%struct.cv*)* @XS_PerlIO_get_layers, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %3 = bitcast %struct.cv* %call14 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #4
  %call15 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0), void (%struct.cv*)* @XS_Regexp_DESTROY, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %call16 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str20, i64 0, i64 0), void (%struct.cv*)* @XS_Internals_hash_seed, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %4 = bitcast %struct.cv* %call16 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([1 x i8]* @.str21, i64 0, i64 0)) #4
  %call17 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), void (%struct.cv*)* @XS_Internals_rehash_seed, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %5 = bitcast %struct.cv* %call17 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([1 x i8]* @.str21, i64 0, i64 0)) #4
  %call18 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str23, i64 0, i64 0), void (%struct.cv*)* @XS_Internals_HvREHASH, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)) #4
  %6 = bitcast %struct.cv* %call18 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %6, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_UNIVERSAL_isa(%struct.cv* nocapture %cv) #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str24, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, 8192
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %call = call i32 @Perl_mg_get(%struct.sv* %6) #4
  %.pre93 = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then8
  %8 = phi i32 [ %7, %if.end ], [ %.pre93, %if.then8 ]
  %and11 = and i32 %8, 118423552
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %and14 = and i32 %8, 524288
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %lor.lhs.false16, label %if.end40

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %and18 = and i32 %8, 262144
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %lor.lhs.false21, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  %tobool20 = icmp eq i64 %11, 0
  br i1 %tobool20, label %lor.lhs.false21, label %if.end40

lor.lhs.false21:                                  ; preds = %land.lhs.true, %lor.lhs.false16
  %12 = and i32 %8, 67117056
  %13 = icmp eq i32 %12, 67117056
  br i1 %13, label %land.lhs.true29, label %if.then33

land.lhs.true29:                                  ; preds = %lor.lhs.false21
  %sv_any30 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %14 = load i8** %sv_any30, align 8, !tbaa !3
  %xpv_cur31 = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur31 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %tobool32 = icmp eq i64 %16, 0
  br i1 %tobool32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %land.lhs.true29, %lor.lhs.false21, %if.end9
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx36, align 8, !tbaa !3
  br label %return

if.end40:                                         ; preds = %land.lhs.true29, %land.lhs.true, %lor.lhs.false
  %sext92 = add i64 %add.ptr.idx, 8589934592
  %idxprom42 = ashr exact i64 %sext92, 32
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds %struct.sv** %18, i64 %idxprom42
  %19 = load %struct.sv** %arrayidx43, align 8, !tbaa !3
  %sv_flags44 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags44, align 4, !tbaa !0
  %and45 = and i32 %20, 262144
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end40
  %sv_any51 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %21 = load i8** %sv_any51, align 8, !tbaa !3
  %xpv_cur52 = getelementptr inbounds i8* %21, i64 8
  %22 = bitcast i8* %xpv_cur52 to i64*
  %23 = load i64* %22, align 8, !tbaa !4
  store i64 %23, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %21 to i8**
  %24 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end40
  %call60 = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %n_a, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ %call60, %cond.false ]
  %call61 = call signext i8 @Perl_sv_derived_from(%struct.sv* %6, i8* %cond) #5
  %tobool63 = icmp ne i8 %call61, 0
  %cond64 = select i1 %tobool63, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %25 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx67 = getelementptr inbounds %struct.sv** %25, i64 %idxprom
  store %struct.sv* %cond64, %struct.sv** %arrayidx67, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %cond.end, %if.then33
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_UNIVERSAL_can(%struct.cv* nocapture %cv) #0 {
entry:
  %n_a = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str25, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, 8192
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %call = call i32 @Perl_mg_get(%struct.sv* %6) #4
  %.pre124 = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then8
  %8 = phi i32 [ %7, %if.end ], [ %.pre124, %if.then8 ]
  %and11 = and i32 %8, 118423552
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %and14 = and i32 %8, 524288
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %lor.lhs.false16, label %if.end40

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %and18 = and i32 %8, 262144
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %lor.lhs.false21, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  %tobool20 = icmp eq i64 %11, 0
  br i1 %tobool20, label %lor.lhs.false21, label %if.end40

lor.lhs.false21:                                  ; preds = %land.lhs.true, %lor.lhs.false16
  %12 = and i32 %8, 67117056
  %13 = icmp eq i32 %12, 67117056
  br i1 %13, label %land.lhs.true29, label %if.then33

land.lhs.true29:                                  ; preds = %lor.lhs.false21
  %sv_any30 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %14 = load i8** %sv_any30, align 8, !tbaa !3
  %xpv_cur31 = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur31 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %tobool32 = icmp eq i64 %16, 0
  br i1 %tobool32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %land.lhs.true29, %lor.lhs.false21, %if.end9
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx36, align 8, !tbaa !3
  br label %return

if.end40:                                         ; preds = %land.lhs.true29, %land.lhs.true, %lor.lhs.false
  %sext122 = add i64 %add.ptr.idx, 8589934592
  %idxprom42 = ashr exact i64 %sext122, 32
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds %struct.sv** %18, i64 %idxprom42
  %19 = load %struct.sv** %arrayidx43, align 8, !tbaa !3
  %sv_flags44 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags44, align 4, !tbaa !0
  %and45 = and i32 %20, 262144
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end40
  %sv_any51 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %21 = load i8** %sv_any51, align 8, !tbaa !3
  %xpv_cur52 = getelementptr inbounds i8* %21, i64 8
  %22 = bitcast i8* %xpv_cur52 to i64*
  %23 = load i64* %22, align 8, !tbaa !4
  store i64 %23, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %21 to i8**
  %24 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end40
  %call60 = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %n_a, i32 2) #4
  %.pre125 = load i32* %sv_flags, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %25 = phi i32 [ %8, %cond.true ], [ %.pre125, %cond.false ]
  %cond = phi i8* [ %24, %cond.true ], [ %call60, %cond.false ]
  %and62 = and i32 %25, 524288
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %if.else, label %if.then64

if.then64:                                        ; preds = %cond.end
  %sv_any65 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %26 = load i8** %sv_any65, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %26 to %struct.sv**
  %27 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags66 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags66, align 4, !tbaa !0
  %and67 = and i32 %28, 4096
  %tobool68 = icmp eq i32 %and67, 0
  br i1 %tobool68, label %if.end88, label %if.then69

if.then69:                                        ; preds = %if.then64
  %sv_any70 = getelementptr inbounds %struct.sv* %27, i64 0, i32 0
  %29 = load i8** %sv_any70, align 8, !tbaa !3
  %xmg_stash = getelementptr inbounds i8* %29, i64 48
  %30 = bitcast i8* %xmg_stash to %struct.hv**
  %31 = load %struct.hv** %30, align 8, !tbaa !3
  br label %if.end73

if.else:                                          ; preds = %cond.end
  %call72 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %6, i32 0) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.else
  %pkg.0 = phi %struct.hv* [ %31, %if.then69 ], [ %call72, %if.else ]
  %tobool74 = icmp eq %struct.hv* %pkg.0, null
  br i1 %tobool74, label %if.end88, label %if.then75

if.then75:                                        ; preds = %if.end73
  %call76 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %pkg.0, i8* %cond, i32 0) #4
  %tobool77 = icmp eq %struct.gv* %call76, null
  br i1 %tobool77, label %if.end88, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then75
  %sv_flags79 = getelementptr inbounds %struct.gv* %call76, i64 0, i32 2
  %32 = load i32* %sv_flags79, align 4, !tbaa !0
  %and80 = and i32 %32, 255
  %cmp81 = icmp eq i32 %and80, 13
  br i1 %cmp81, label %if.then83, label %if.end88

if.then83:                                        ; preds = %land.lhs.true78
  %sv_any84 = getelementptr inbounds %struct.gv* %call76, i64 0, i32 0
  %33 = load %struct.xpvgv** %sv_any84, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 7
  %34 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %34, i64 0, i32 7
  %35 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %36 = bitcast %struct.cv* %35 to %struct.sv*
  %call85 = call %struct.sv* @Perl_newRV(%struct.sv* %36) #4
  %call86 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call85) #4
  br label %if.end88

if.end88:                                         ; preds = %land.lhs.true78, %if.then75, %if.end73, %if.then64, %if.then83
  %rv.0 = phi %struct.sv* [ %call86, %if.then83 ], [ @PL_sv_undef, %if.then64 ], [ @PL_sv_undef, %if.end73 ], [ @PL_sv_undef, %if.then75 ], [ @PL_sv_undef, %land.lhs.true78 ]
  %37 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds %struct.sv** %37, i64 %idxprom
  store %struct.sv* %rv.0, %struct.sv** %arrayidx91, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end88, %if.then33
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_UNIVERSAL_VERSION(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4263 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4263 to i32
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %5, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %6 to %struct.sv**
  %7 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags10 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags10, align 4, !tbaa !0
  %and11 = and i32 %8, 4096
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str26, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then13
  %sv_any14 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any14, align 8, !tbaa !3
  %xmg_stash = getelementptr inbounds i8* %9, i64 48
  %10 = bitcast i8* %xmg_stash to %struct.hv**
  %11 = load %struct.hv** %10, align 8, !tbaa !3
  br label %if.end18

if.else:                                          ; preds = %entry
  %call = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %4, i32 0) #4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  %pkg.0 = phi %struct.hv* [ %11, %if.end ], [ %call, %if.else ]
  %tobool19 = icmp ne %struct.hv* %pkg.0, null
  br i1 %tobool19, label %cond.end, label %if.end33

cond.end:                                         ; preds = %if.end18
  %call20 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %pkg.0, i8* getelementptr inbounds ([8 x i8]* @.str27, i64 0, i64 0), i32 7, i32 0) #4
  %tobool21 = icmp eq %struct.sv** %call20, null
  br i1 %tobool21, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %12 = load %struct.sv** %call20, align 8
  %13 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !0
  %and23 = and i32 %14, 255
  %cmp = icmp eq i32 %and23, 13
  br i1 %cmp, label %land.lhs.true25, label %if.end33

land.lhs.true25:                                  ; preds = %land.lhs.true
  %sv_any26 = bitcast %struct.sv* %12 to %struct.xpvgv**
  %15 = load %struct.xpvgv** %sv_any26, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %16, i64 0, i32 0
  %17 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %sv_flags27 = getelementptr inbounds %struct.sv* %17, i64 0, i32 2
  %18 = load i32* %sv_flags27, align 4, !tbaa !0
  %and28 = and i32 %18, 118423552
  %tobool29 = icmp eq i32 %and28, 0
  br i1 %tobool29, label %if.end33, label %if.then30

if.then30:                                        ; preds = %land.lhs.true25
  %call31 = call %struct.sv* @Perl_sv_newmortal() #4
  call void @Perl_sv_setsv_flags(%struct.sv* %call31, %struct.sv* %17, i32 2) #4
  br label %if.end33

if.end33:                                         ; preds = %if.end18, %land.lhs.true, %cond.end, %land.lhs.true25, %if.then30
  %undef.0 = phi i8* [ null, %if.then30 ], [ getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), %land.lhs.true25 ], [ getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), %cond.end ], [ getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), %if.end18 ]
  %19 = phi %struct.sv* [ %call31, %if.then30 ], [ @PL_sv_undef, %land.lhs.true25 ], [ @PL_sv_undef, %cond.end ], [ @PL_sv_undef, %land.lhs.true ], [ @PL_sv_undef, %if.end18 ]
  %cmp34 = icmp sgt i32 %conv5, 1
  br i1 %cmp34, label %if.then36, label %finish

if.then36:                                        ; preds = %if.end33
  %sext264 = add i64 %add.ptr.idx, 8589934592
  %idxprom38 = ashr exact i64 %sext264, 32
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds %struct.sv** %20, i64 %idxprom38
  %21 = load %struct.sv** %arrayidx39, align 8, !tbaa !3
  %tobool40 = icmp eq i8* %undef.0, null
  br i1 %tobool40, label %if.end63, label %if.then41

if.then41:                                        ; preds = %if.then36
  br i1 %tobool19, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.then41
  %sv_any44 = getelementptr inbounds %struct.hv* %pkg.0, i64 0, i32 0
  %22 = load %struct.xpvhv** %sv_any44, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %22, i64 0, i32 10
  %23 = load i8** %xhv_name, align 8, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([54 x i8]* @.str29, i64 0, i64 0), i8* %23, i8* %23) #4
  br label %if.end63

if.else47:                                        ; preds = %if.then41
  %arrayidx50 = getelementptr inbounds %struct.sv** %20, i64 %idxprom
  %24 = load %struct.sv** %arrayidx50, align 8, !tbaa !3
  store %struct.sv* %24, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %sv_flags51 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags51, align 4, !tbaa !0
  %and52 = and i32 %25, 262144
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %cond.false58, label %cond.true55

cond.true55:                                      ; preds = %if.else47
  %sv_any56 = getelementptr inbounds %struct.sv* %24, i64 0, i32 0
  %26 = load i8** %sv_any56, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %26, i64 8
  %27 = bitcast i8* %xpv_cur to i64*
  %28 = load i64* %27, align 8, !tbaa !4
  store i64 %28, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %26 to i8**
  %29 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end60

cond.false58:                                     ; preds = %if.else47
  %call59 = call i8* @Perl_sv_2pv_flags(%struct.sv* %24, i64* %len, i32 2) #4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false58, %cond.true55
  %cond61 = phi i8* [ %29, %cond.true55 ], [ %call59, %cond.false58 ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([61 x i8]* @.str30, i64 0, i64 0), i8* %cond61) #4
  br label %if.end63

if.end63:                                         ; preds = %if.then36, %if.then43, %cond.end60
  %sv_flags64 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %30 = load i32* %sv_flags64, align 4, !tbaa !0
  %31 = and i32 %30, 458752
  %32 = icmp eq i32 %31, 262144
  br i1 %32, label %if.then71, label %if.end139

if.then71:                                        ; preds = %if.end63
  store %struct.sv* %19, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %and74 = and i32 %30, 262144
  %cmp75 = icmp eq i32 %and74, 0
  br i1 %cmp75, label %cond.false82, label %cond.true77

cond.true77:                                      ; preds = %if.then71
  %sv_any78 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %33 = load i8** %sv_any78, align 8, !tbaa !3
  %xpv_cur79 = getelementptr inbounds i8* %33, i64 8
  %34 = bitcast i8* %xpv_cur79 to i64*
  %35 = load i64* %34, align 8, !tbaa !4
  store i64 %35, i64* %len, align 8, !tbaa !4
  %xpv_pv81 = bitcast i8* %33 to i8**
  %36 = load i8** %xpv_pv81, align 8, !tbaa !3
  br label %cond.end84

cond.false82:                                     ; preds = %if.then71
  %call83 = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %len, i32 2) #4
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false82, %cond.true77
  %37 = phi i64 [ %35, %cond.true77 ], [ %.pre, %cond.false82 ]
  %cond85 = phi i8* [ %36, %cond.true77 ], [ %call83, %cond.false82 ]
  %tobool86270 = icmp eq i64 %37, 0
  br i1 %tobool86270, label %if.end139, label %while.body

while.body:                                       ; preds = %cond.end84, %while.cond.backedge
  %38 = phi i64 [ %dec, %while.cond.backedge ], [ %37, %cond.end84 ]
  %dec = add i64 %38, -1
  store i64 %dec, i64* %len, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds i8* %cond85, i64 %dec
  %39 = load i8* %arrayidx87, align 1, !tbaa !1
  %.off = add i8 %39, -48
  %40 = icmp ult i8 %.off, 10
  br i1 %40, label %while.cond.backedge, label %land.lhs.true96

while.cond.backedge:                              ; preds = %while.body, %land.lhs.true96, %land.lhs.true96
  %tobool86 = icmp eq i64 %dec, 0
  br i1 %tobool86, label %if.end139, label %while.body

land.lhs.true96:                                  ; preds = %while.body
  switch i8 %39, label %while.end [
    i8 46, label %while.cond.backedge
    i8 95, label %while.cond.backedge
  ]

while.end:                                        ; preds = %land.lhs.true96
  %tobool108 = icmp eq i64 %dec, 0
  br i1 %tobool108, label %if.end139, label %if.then109

if.then109:                                       ; preds = %while.end
  %sv_flags110 = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %41 = load i32* %sv_flags110, align 4, !tbaa !0
  %42 = and i32 %41, 393216
  %43 = icmp eq i32 %42, 393216
  br i1 %43, label %if.then117, label %if.end125

if.then117:                                       ; preds = %if.then109
  %call118 = call i32 @Perl_sv_cmp(%struct.sv* %21, %struct.sv* %19) #4
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.then121, label %finish

if.then121:                                       ; preds = %if.then117
  %sv_any122 = getelementptr inbounds %struct.hv* %pkg.0, i64 0, i32 0
  %44 = load %struct.xpvhv** %sv_any122, align 8, !tbaa !3
  %xhv_name123 = getelementptr inbounds %struct.xpvhv* %44, i64 0, i32 10
  %45 = load i8** %xhv_name123, align 8, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0), i8* %45, %struct.sv* %21, %struct.sv* %19) #4
  br label %finish

if.end125:                                        ; preds = %if.then109
  %46 = load i32* %sv_flags64, align 4, !tbaa !0
  %and127 = and i32 %46, 254
  %cmp128 = icmp ugt i32 %and127, 5
  br i1 %cmp128, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end125
  %call130 = call signext i8 @Perl_sv_upgrade(%struct.sv* %19, i32 6) #4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end125
  %call133 = call double @Perl_str_to_version(%struct.sv* %19) #4
  %sv_any134 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %47 = load i8** %sv_any134, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %47, i64 32
  %48 = bitcast i8* %xnv_nv to double*
  store double %call133, double* %48, align 8, !tbaa !5
  %49 = load i32* %sv_flags64, align 4, !tbaa !0
  %and136 = and i32 %49, -101056513
  %or = or i32 %and136, 33685504
  store i32 %or, i32* %sv_flags64, align 4, !tbaa !0
  br label %if.end139

if.end139:                                        ; preds = %cond.end84, %while.cond.backedge, %if.end63, %while.end, %lor.end
  %sv_flags140 = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %50 = load i32* %sv_flags140, align 4, !tbaa !0
  %and141 = and i32 %50, 131072
  %tobool142 = icmp ne i32 %and141, 0
  %tobool142.not = xor i1 %tobool142, true
  %and145 = and i32 %50, 262144
  %tobool146 = icmp eq i32 %and145, 0
  %or.cond267 = or i1 %tobool146, %tobool142.not
  br i1 %or.cond267, label %if.end159, label %if.then147

if.then147:                                       ; preds = %if.end139
  br i1 %tobool142, label %cond.true151, label %cond.false154

cond.true151:                                     ; preds = %if.then147
  %sv_any152 = getelementptr inbounds %struct.sv* %21, i64 0, i32 0
  %51 = load i8** %sv_any152, align 8, !tbaa !3
  %xnv_nv153 = getelementptr inbounds i8* %51, i64 32
  %52 = bitcast i8* %xnv_nv153 to double*
  %53 = load double* %52, align 8, !tbaa !5
  br label %cond.end156

cond.false154:                                    ; preds = %if.then147
  %call155 = call double @Perl_sv_2nv(%struct.sv* %21) #4
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false154, %cond.true151
  %cond157 = phi double [ %53, %cond.true151 ], [ %call155, %cond.false154 ]
  %call158 = call %struct.sv* @Perl_sv_newmortal() #4
  call void @Perl_sv_setnv(%struct.sv* %call158, double %cond157) #4
  %sv_flags160.phi.trans.insert = getelementptr inbounds %struct.sv* %call158, i64 0, i32 2
  %.pre271 = load i32* %sv_flags160.phi.trans.insert, align 4, !tbaa !0
  br label %if.end159

if.end159:                                        ; preds = %if.end139, %cond.end156
  %54 = phi i32 [ %.pre271, %cond.end156 ], [ %50, %if.end139 ]
  %req.0 = phi %struct.sv* [ %call158, %cond.end156 ], [ %21, %if.end139 ]
  %sv_flags160 = getelementptr inbounds %struct.sv* %req.0, i64 0, i32 2
  %and161 = and i32 %54, 131072
  %tobool162 = icmp eq i32 %and161, 0
  br i1 %tobool162, label %cond.false166, label %cond.true163

cond.true163:                                     ; preds = %if.end159
  %sv_any164 = getelementptr inbounds %struct.sv* %req.0, i64 0, i32 0
  %55 = load i8** %sv_any164, align 8, !tbaa !3
  %xnv_nv165 = getelementptr inbounds i8* %55, i64 32
  %56 = bitcast i8* %xnv_nv165 to double*
  %57 = load double* %56, align 8, !tbaa !5
  br label %cond.end168

cond.false166:                                    ; preds = %if.end159
  %call167 = call double @Perl_sv_2nv(%struct.sv* %req.0) #4
  br label %cond.end168

cond.end168:                                      ; preds = %cond.false166, %cond.true163
  %cond169 = phi double [ %57, %cond.true163 ], [ %call167, %cond.false166 ]
  %58 = load i32* %sv_flags64, align 4, !tbaa !0
  %and171 = and i32 %58, 131072
  %tobool172 = icmp eq i32 %and171, 0
  br i1 %tobool172, label %cond.false176, label %cond.true173

cond.true173:                                     ; preds = %cond.end168
  %sv_any174 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %59 = load i8** %sv_any174, align 8, !tbaa !3
  %xnv_nv175 = getelementptr inbounds i8* %59, i64 32
  %60 = bitcast i8* %xnv_nv175 to double*
  %61 = load double* %60, align 8, !tbaa !5
  br label %cond.end178

cond.false176:                                    ; preds = %cond.end168
  %call177 = call double @Perl_sv_2nv(%struct.sv* %19) #4
  br label %cond.end178

cond.end178:                                      ; preds = %cond.false176, %cond.true173
  %cond179 = phi double [ %61, %cond.true173 ], [ %call177, %cond.false176 ]
  %cmp180 = fcmp ogt double %cond169, %cond179
  br i1 %cmp180, label %if.then182, label %finish

if.then182:                                       ; preds = %cond.end178
  %sv_any183 = getelementptr inbounds %struct.hv* %pkg.0, i64 0, i32 0
  %62 = load %struct.xpvhv** %sv_any183, align 8, !tbaa !3
  %xhv_name184 = getelementptr inbounds %struct.xpvhv* %62, i64 0, i32 10
  %63 = load i8** %xhv_name184, align 8, !tbaa !3
  %64 = load i32* %sv_flags160, align 4, !tbaa !0
  %and186 = and i32 %64, 262144
  %cmp187 = icmp eq i32 %and186, 0
  br i1 %cmp187, label %cond.false192, label %cond.true189

cond.true189:                                     ; preds = %if.then182
  %sv_any190 = getelementptr inbounds %struct.sv* %req.0, i64 0, i32 0
  %65 = load i8** %sv_any190, align 8, !tbaa !3
  %xpv_pv191 = bitcast i8* %65 to i8**
  %66 = load i8** %xpv_pv191, align 8, !tbaa !3
  br label %cond.end194

cond.false192:                                    ; preds = %if.then182
  %call193 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %req.0) #4
  br label %cond.end194

cond.end194:                                      ; preds = %cond.false192, %cond.true189
  %cond195 = phi i8* [ %66, %cond.true189 ], [ %call193, %cond.false192 ]
  %67 = load i32* %sv_flags64, align 4, !tbaa !0
  %and197 = and i32 %67, 262144
  %cmp198 = icmp eq i32 %and197, 0
  br i1 %cmp198, label %cond.false203, label %cond.true200

cond.true200:                                     ; preds = %cond.end194
  %sv_any201 = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %68 = load i8** %sv_any201, align 8, !tbaa !3
  %xpv_pv202 = bitcast i8* %68 to i8**
  %69 = load i8** %xpv_pv202, align 8, !tbaa !3
  br label %cond.end205

cond.false203:                                    ; preds = %cond.end194
  %call204 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %19) #4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false203, %cond.true200
  %cond206 = phi i8* [ %69, %cond.true200 ], [ %call204, %cond.false203 ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([48 x i8]* @.str32, i64 0, i64 0), i8* %63, i8* %cond195, i8* %cond206) #4
  br label %finish

finish:                                           ; preds = %cond.end178, %if.then117, %if.end33, %cond.end205, %if.then121
  %70 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx211 = getelementptr inbounds %struct.sv** %70, i64 %idxprom
  store %struct.sv* %19, %struct.sv** %arrayidx211, align 8, !tbaa !3
  %71 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr213 = getelementptr inbounds %struct.sv** %71, i64 %idxprom
  store %struct.sv** %add.ptr213, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_is_utf8(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str33, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, 536870912
  %tobool = icmp eq i32 %and, 0
  %PL_sv_no.PL_sv_yes = select i1 %tobool, %struct.sv* @PL_sv_no, %struct.sv* @PL_sv_yes
  store %struct.sv* %PL_sv_no.PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !3
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_valid(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([23 x i8]* @.str34, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, 262144
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  store i64 %10, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %len, i32 2) #4
  %.pre41 = load i32* %sv_flags, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = phi i32 [ %7, %cond.true ], [ %.pre41, %cond.false ]
  %cond = phi i8* [ %11, %cond.true ], [ %call, %cond.false ]
  %and12 = and i32 %12, 536870912
  %tobool = icmp eq i32 %and12, 0
  br i1 %tobool, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %13 = load i64* %len, align 8, !tbaa !4
  %call13 = call signext i8 @Perl_is_utf8_string(i8* %cond, i64 %13) #4
  %tobool15 = icmp eq i8 %call13, 0
  br i1 %tobool15, label %if.else, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false, %cond.end
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx19, align 8, !tbaa !3
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx25, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.else, %if.then16
  %.pn = load %struct.sv*** @PL_stack_base, align 8
  %storemerge = getelementptr inbounds %struct.sv** %.pn, i64 %idxprom
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_encode(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str35, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  tail call void @Perl_sv_utf8_encode(%struct.sv* %6) #4
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr9.sum = add i64 %idxprom, -1
  %add.ptr10 = getelementptr inbounds %struct.sv** %7, i64 %add.ptr9.sum
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_decode(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str36, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %call = tail call signext i8 @Perl_sv_utf8_decode(%struct.sv* %6) #4
  %tobool = icmp ne i8 %call, 0
  %cond = select i1 %tobool, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %arrayidx11, align 8, !tbaa !3
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  %9 = load %struct.sv** %arrayidx14, align 8, !tbaa !3
  %call15 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %9) #4
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr17 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  store %struct.sv** %add.ptr17, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_upgrade(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
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
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str37, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %7 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.op* %7, i64 0, i32 7
  %8 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %8, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %7, i64 0, i32 3
  %9 = load i64* %op_targ, align 8, !tbaa !4
  %10 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx9, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %11, %cond.true ], [ %call, %cond.false ]
  %call10 = tail call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %6, i32 2) #4
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %call10) #4
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !0
  %and14 = and i32 %13, 16384
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %cond.end
  %call17 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #4
  br label %if.end18

if.end18:                                         ; preds = %cond.end, %if.then16
  %incdec.ptr19 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr19, align 8, !tbaa !3
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr21 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv** %add.ptr21, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_downgrade(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div448 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div448 to i32
  %conv5.off = add i32 %conv5, -1
  %4 = icmp ugt i32 %conv5.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str38, i64 0, i64 0)) #4
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %cmp10 = icmp slt i32 %conv5, 2
  br i1 %cmp10, label %if.end24, label %if.else

if.else:                                          ; preds = %if.end
  %sext49 = add i64 %add.ptr.idx, 8589934592
  %idxprom14 = ashr exact i64 %sext49, 32
  %arrayidx15 = getelementptr inbounds %struct.sv** %5, i64 %idxprom14
  %7 = load %struct.sv** %arrayidx15, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %8, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %9, i64 24
  %10 = bitcast i8* %xiv_iv to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %7) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %call, %cond.false ]
  %conv23 = trunc i64 %cond to i8
  br label %if.end24

if.end24:                                         ; preds = %if.end, %cond.end
  %failok.0 = phi i8 [ %conv23, %cond.end ], [ 0, %if.end ]
  %call25 = tail call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %6, i8 signext %failok.0) #4
  %tobool27 = icmp ne i8 %call25, 0
  %cond28 = select i1 %tobool27, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv* %cond28, %struct.sv** %arrayidx31, align 8, !tbaa !3
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  %14 = load %struct.sv** %arrayidx34, align 8, !tbaa !3
  %call35 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %14) #4
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr37 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  store %struct.sv** %add.ptr37, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_native_to_unicode(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div427 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div427 to i32
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %5, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xuv_uv = getelementptr inbounds i8* %6, i64 24
  %7 = bitcast i8* %xuv_uv to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2uv(%struct.sv* %4) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp sgt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str39, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call14 = tail call %struct.sv* @Perl_newSViv(i64 %cond) #4
  %call15 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call14) #4
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %call15, %struct.sv** %arrayidx18, align 8, !tbaa !3
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr20 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_utf8_unicode_to_native(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div427 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div427 to i32
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %5, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xuv_uv = getelementptr inbounds i8* %6, i64 24
  %7 = bitcast i8* %xuv_uv to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2uv(%struct.sv* %4) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp sgt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str40, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call14 = tail call %struct.sv* @Perl_newSViv(i64 %cond) #4
  %call15 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call14) #4
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %call15, %struct.sv** %arrayidx18, align 8, !tbaa !3
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr20 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_Internals_SvREADONLY(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4135 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4135 to i32
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %5 to %struct.sv**
  %6 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  switch i32 %conv5, label %if.end108 [
    i32 1, label %if.then
    i32 2, label %if.then26
  ]

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %7, 8388608
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !3
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr13 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.else:                                          ; preds = %if.then
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx, align 8, !tbaa !3
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr20 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.then26:                                        ; preds = %entry
  %sext136 = add i64 %add.ptr.idx, 8589934592
  %idxprom28 = ashr exact i64 %sext136, 32
  %arrayidx29 = getelementptr inbounds %struct.sv** %1, i64 %idxprom28
  %10 = load %struct.sv** %arrayidx29, align 8, !tbaa !3
  %tobool30 = icmp eq %struct.sv* %10, null
  br i1 %tobool30, label %if.else97, label %cond.false

cond.false:                                       ; preds = %if.then26
  %sv_flags34 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags34, align 4, !tbaa !0
  %and35 = and i32 %11, 262144
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %cond.false53, label %cond.true37

cond.true37:                                      ; preds = %cond.false
  %sv_any41 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any41, align 8, !tbaa !3
  %13 = bitcast i8* %12 to %struct.xpv*
  store %struct.xpv* %13, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool42 = icmp eq i8* %12, null
  br i1 %tobool42, label %if.else97, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true37
  %xpv_cur = getelementptr inbounds i8* %12, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  %cmp43 = icmp ugt i64 %15, 1
  br i1 %cmp43, label %if.then87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tobool46 = icmp eq i64 %15, 0
  br i1 %tobool46, label %if.else97, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %12 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !3
  %17 = load i8* %16, align 1, !tbaa !1
  %cmp49 = icmp eq i8 %17, 48
  br i1 %cmp49, label %if.else97, label %if.then87

cond.false53:                                     ; preds = %cond.false
  %and58 = and i32 %11, 65536
  %tobool59 = icmp eq i32 %and58, 0
  br i1 %tobool59, label %cond.false67, label %cond.true60

cond.true60:                                      ; preds = %cond.false53
  %sv_any64 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %18 = load i8** %sv_any64, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %18, i64 24
  %19 = bitcast i8* %xiv_iv to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  %cmp65 = icmp eq i64 %20, 0
  br i1 %cmp65, label %if.else97, label %if.then87

cond.false67:                                     ; preds = %cond.false53
  %and72 = and i32 %11, 131072
  %tobool73 = icmp eq i32 %and72, 0
  br i1 %tobool73, label %cond.false81, label %cond.true74

cond.true74:                                      ; preds = %cond.false67
  %sv_any78 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %21 = load i8** %sv_any78, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %21, i64 32
  %22 = bitcast i8* %xnv_nv to double*
  %23 = load double* %22, align 8, !tbaa !5
  %cmp79 = fcmp une double %23, 0.000000e+00
  br i1 %cmp79, label %if.then87, label %if.else97

cond.false81:                                     ; preds = %cond.false67
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %10) #4
  %tobool86 = icmp eq i8 %call, 0
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br i1 %tobool86, label %if.else97, label %if.then87

if.then87:                                        ; preds = %cond.false81, %land.lhs.true47, %cond.true60, %land.lhs.true, %cond.true74
  %24 = phi %struct.sv** [ %1, %land.lhs.true47 ], [ %1, %cond.true60 ], [ %1, %land.lhs.true ], [ %1, %cond.true74 ], [ %.pre, %cond.false81 ]
  %sv_flags88 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %25 = load i32* %sv_flags88, align 4, !tbaa !0
  %or = or i32 %25, 8388608
  store i32 %or, i32* %sv_flags88, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds %struct.sv** %24, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx91, align 8, !tbaa !3
  %26 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr94 = getelementptr inbounds %struct.sv** %26, i64 %idxprom
  store %struct.sv** %add.ptr94, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.else97:                                        ; preds = %cond.false81, %land.lhs.true47, %lor.lhs.false, %cond.true37, %cond.true60, %if.then26, %cond.true74
  %27 = phi %struct.sv** [ %1, %land.lhs.true47 ], [ %1, %lor.lhs.false ], [ %1, %cond.true37 ], [ %1, %cond.true60 ], [ %1, %if.then26 ], [ %1, %cond.true74 ], [ %.pre, %cond.false81 ]
  %sv_flags98 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %28 = load i32* %sv_flags98, align 4, !tbaa !0
  %and99 = and i32 %28, -8388609
  store i32 %and99, i32* %sv_flags98, align 4, !tbaa !0
  %arrayidx102 = getelementptr inbounds %struct.sv** %27, i64 %idxprom
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx102, align 8, !tbaa !3
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr105 = getelementptr inbounds %struct.sv** %29, i64 %idxprom
  store %struct.sv** %add.ptr105, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.end108:                                        ; preds = %entry
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !3
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr114 = getelementptr inbounds %struct.sv** %30, i64 %idxprom
  store %struct.sv** %add.ptr114, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end108, %if.else97, %if.then87, %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Internals_SvREFCNT(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div466 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div466 to i32
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %5 to %struct.sv**
  %6 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  switch i32 %conv5, label %if.end45 [
    i32 1, label %if.then
    i32 2, label %if.then19
  ]

if.then:                                          ; preds = %entry
  %sv_refcnt = getelementptr inbounds %struct.sv* %6, i64 0, i32 1
  %7 = load i32* %sv_refcnt, align 4, !tbaa !0
  %sub = add i32 %7, -1
  %conv8 = zext i32 %sub to i64
  %call = tail call %struct.sv* @Perl_newSViv(i64 %conv8) #4
  %call9 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #4
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  store %struct.sv* %call9, %struct.sv** %arrayidx12, align 8, !tbaa !3
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr14 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv** %add.ptr14, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.then19:                                        ; preds = %entry
  %sext67 = add i64 %add.ptr.idx, 8589934592
  %idxprom21 = ashr exact i64 %sext67, 32
  %arrayidx22 = getelementptr inbounds %struct.sv** %1, i64 %idxprom21
  %10 = load %struct.sv** %arrayidx22, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %11, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then19
  %sv_any26 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %12 = load i8** %sv_any26, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %12, i64 24
  %13 = bitcast i8* %xiv_iv to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then19
  %call30 = tail call i64 @Perl_sv_2iv(%struct.sv* %10) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call30, %cond.false ]
  %conv31 = trunc i64 %cond to i32
  %sv_refcnt32 = getelementptr inbounds %struct.sv* %6, i64 0, i32 1
  store i32 %conv31, i32* %sv_refcnt32, align 4, !tbaa !0
  %conv34 = and i64 %cond, 4294967295
  %call35 = tail call %struct.sv* @Perl_newSViv(i64 %conv34) #4
  %call36 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call35) #4
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds %struct.sv** %15, i64 %idxprom
  store %struct.sv* %call36, %struct.sv** %arrayidx39, align 8, !tbaa !3
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr42 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv** %add.ptr42, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.end45:                                         ; preds = %entry
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8, !tbaa !3
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr51 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv** %add.ptr51, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end45, %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Internals_hv_clear_placehold(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %5 to %struct.sv**
  %6 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %7 = bitcast %struct.sv* %6 to %struct.hv*
  %8 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %8, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str41, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @Perl_hv_clear_placeholders(%struct.hv* %7) #4
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr9.sum = add i64 %idxprom, -1
  %add.ptr10 = getelementptr inbounds %struct.sv** %9, i64 %add.ptr9.sum
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_PerlIO_get_layers(%struct.cv* nocapture %cv) #0 {
entry:
  %klen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4552 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4552 to i32
  %cmp = icmp slt i32 %conv5, 1
  %rem553 = and i32 %conv5, 1
  %cmp7 = icmp eq i32 %rem553, 0
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp9 = icmp sgt i32 %conv5, 1
  br i1 %cmp9, label %if.then11, label %if.end204

if.then11:                                        ; preds = %if.end
  %add.ptr.sum = add i64 %idx.ext, 2
  %add.ptr12 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %cmp13562 = icmp ugt %struct.sv** %add.ptr12, %0
  br i1 %cmp13562, label %for.end, label %for.body

for.body:                                         ; preds = %if.then11, %for.inc
  %input.0565 = phi i8 [ %input.1, %for.inc ], [ 1, %if.then11 ]
  %details.0564 = phi i8 [ %details.1, %for.inc ], [ 0, %if.then11 ]
  %svp.0563 = phi %struct.sv** [ %add.ptr201, %for.inc ], [ %add.ptr12, %if.then11 ]
  %add.ptr15 = getelementptr inbounds %struct.sv** %svp.0563, i64 1
  %4 = load %struct.sv** %svp.0563, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %5, 262144
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  store i64 %8, i64* %klen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %6 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %4, i64* %klen, i32 2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  %10 = load i8* %cond, align 1, !tbaa !1
  %conv19 = sext i8 %10 to i32
  switch i32 %conv19, label %fail [
    i32 105, label %sw.bb
    i32 111, label %sw.bb74
    i32 100, label %sw.bb138
  ]

sw.bb:                                            ; preds = %cond.end
  %11 = load i64* %klen, align 8, !tbaa !4
  %cmp20 = icmp eq i64 %11, 5
  br i1 %cmp20, label %land.lhs.true, label %fail

land.lhs.true:                                    ; preds = %sw.bb
  %call22 = call i32 @memcmp(i8* %cond, i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i64 5) #4
  %tobool = icmp eq i32 %call22, 0
  br i1 %tobool, label %if.then23, label %fail

if.then23:                                        ; preds = %land.lhs.true
  %12 = load %struct.sv** %add.ptr15, align 8, !tbaa !3
  %tobool24 = icmp eq %struct.sv* %12, null
  br i1 %tobool24, label %for.inc, label %cond.false26

cond.false26:                                     ; preds = %if.then23
  %sv_flags27 = getelementptr inbounds %struct.sv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags27, align 4, !tbaa !0
  %and28 = and i32 %13, 262144
  %tobool29 = icmp eq i32 %and28, 0
  br i1 %tobool29, label %cond.false45, label %cond.true30

cond.true30:                                      ; preds = %cond.false26
  %sv_any31 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %14 = load i8** %sv_any31, align 8, !tbaa !3
  %15 = bitcast i8* %14 to %struct.xpv*
  store %struct.xpv* %15, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool32 = icmp eq i8* %14, null
  br i1 %tobool32, label %land.end43, label %land.rhs

land.rhs:                                         ; preds = %cond.true30
  %xpv_cur33 = getelementptr inbounds i8* %14, i64 8
  %16 = bitcast i8* %xpv_cur33 to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  %cmp34 = icmp ugt i64 %17, 1
  br i1 %cmp34, label %land.end43, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool37 = icmp eq i64 %17, 0
  br i1 %tobool37, label %land.end43, label %land.rhs38

land.rhs38:                                       ; preds = %lor.rhs
  %xpv_pv39 = bitcast i8* %14 to i8**
  %18 = load i8** %xpv_pv39, align 8, !tbaa !3
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp41 = icmp ne i8 %19, 48
  br label %land.end43

land.end43:                                       ; preds = %lor.rhs, %cond.true30, %land.rhs, %land.rhs38
  %20 = phi i1 [ false, %cond.true30 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp41, %land.rhs38 ]
  %cond44 = zext i1 %20 to i8
  br label %for.inc

cond.false45:                                     ; preds = %cond.false26
  %and47 = and i32 %13, 65536
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %cond.false53, label %cond.true49

cond.true49:                                      ; preds = %cond.false45
  %sv_any50 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %21 = load i8** %sv_any50, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %21, i64 24
  %22 = bitcast i8* %xiv_iv to i64*
  %23 = load i64* %22, align 8, !tbaa !4
  %cmp51 = icmp ne i64 %23, 0
  %conv52 = zext i1 %cmp51 to i8
  br label %for.inc

cond.false53:                                     ; preds = %cond.false45
  %and55 = and i32 %13, 131072
  %tobool56 = icmp eq i32 %and55, 0
  br i1 %tobool56, label %cond.false61, label %cond.true57

cond.true57:                                      ; preds = %cond.false53
  %sv_any58 = getelementptr inbounds %struct.sv* %12, i64 0, i32 0
  %24 = load i8** %sv_any58, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %24, i64 32
  %25 = bitcast i8* %xnv_nv to double*
  %26 = load double* %25, align 8, !tbaa !5
  %cmp59 = fcmp une double %26, 0.000000e+00
  %conv60 = zext i1 %cmp59 to i8
  br label %for.inc

cond.false61:                                     ; preds = %cond.false53
  %call62 = call signext i8 @Perl_sv_2bool(%struct.sv* %12) #4
  br label %for.inc

sw.bb74:                                          ; preds = %cond.end
  %27 = load i64* %klen, align 8, !tbaa !4
  %cmp75 = icmp eq i64 %27, 6
  br i1 %cmp75, label %land.lhs.true77, label %fail

land.lhs.true77:                                  ; preds = %sw.bb74
  %call78 = call i32 @memcmp(i8* %cond, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i64 6) #4
  %tobool79 = icmp eq i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %fail

if.then80:                                        ; preds = %land.lhs.true77
  %28 = load %struct.sv** %add.ptr15, align 8, !tbaa !3
  %tobool81 = icmp eq %struct.sv* %28, null
  br i1 %tobool81, label %cond.end133, label %cond.false83

cond.false83:                                     ; preds = %if.then80
  %sv_flags84 = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags84, align 4, !tbaa !0
  %and85 = and i32 %29, 262144
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %cond.false106, label %cond.true87

cond.true87:                                      ; preds = %cond.false83
  %sv_any88 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %30 = load i8** %sv_any88, align 8, !tbaa !3
  %31 = bitcast i8* %30 to %struct.xpv*
  store %struct.xpv* %31, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool89 = icmp eq i8* %30, null
  br i1 %tobool89, label %land.end104, label %land.rhs90

land.rhs90:                                       ; preds = %cond.true87
  %xpv_cur91 = getelementptr inbounds i8* %30, i64 8
  %32 = bitcast i8* %xpv_cur91 to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  %cmp92 = icmp ugt i64 %33, 1
  br i1 %cmp92, label %land.end104, label %lor.rhs94

lor.rhs94:                                        ; preds = %land.rhs90
  %tobool96 = icmp eq i64 %33, 0
  br i1 %tobool96, label %land.end104, label %land.rhs97

land.rhs97:                                       ; preds = %lor.rhs94
  %xpv_pv98 = bitcast i8* %30 to i8**
  %34 = load i8** %xpv_pv98, align 8, !tbaa !3
  %35 = load i8* %34, align 1, !tbaa !1
  %cmp100 = icmp ne i8 %35, 48
  br label %land.end104

land.end104:                                      ; preds = %lor.rhs94, %cond.true87, %land.rhs90, %land.rhs97
  %36 = phi i1 [ false, %cond.true87 ], [ true, %land.rhs90 ], [ false, %lor.rhs94 ], [ %cmp100, %land.rhs97 ]
  %cond105 = zext i1 %36 to i32
  br label %cond.end133

cond.false106:                                    ; preds = %cond.false83
  %and108 = and i32 %29, 65536
  %tobool109 = icmp eq i32 %and108, 0
  br i1 %tobool109, label %cond.false115, label %cond.true110

cond.true110:                                     ; preds = %cond.false106
  %sv_any111 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %37 = load i8** %sv_any111, align 8, !tbaa !3
  %xiv_iv112 = getelementptr inbounds i8* %37, i64 24
  %38 = bitcast i8* %xiv_iv112 to i64*
  %39 = load i64* %38, align 8, !tbaa !4
  %cmp113 = icmp ne i64 %39, 0
  %conv114 = zext i1 %cmp113 to i32
  br label %cond.end133

cond.false115:                                    ; preds = %cond.false106
  %and117 = and i32 %29, 131072
  %tobool118 = icmp eq i32 %and117, 0
  br i1 %tobool118, label %cond.false124, label %cond.true119

cond.true119:                                     ; preds = %cond.false115
  %sv_any120 = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %40 = load i8** %sv_any120, align 8, !tbaa !3
  %xnv_nv121 = getelementptr inbounds i8* %40, i64 32
  %41 = bitcast i8* %xnv_nv121 to double*
  %42 = load double* %41, align 8, !tbaa !5
  %cmp122 = fcmp une double %42, 0.000000e+00
  %conv123 = zext i1 %cmp122 to i32
  br label %cond.end133

cond.false124:                                    ; preds = %cond.false115
  %call125 = call signext i8 @Perl_sv_2bool(%struct.sv* %28) #4
  %conv126 = sext i8 %call125 to i32
  br label %cond.end133

cond.end133:                                      ; preds = %if.then80, %land.end104, %cond.true119, %cond.false124, %cond.true110
  %cond134 = phi i32 [ 0, %if.then80 ], [ %cond105, %land.end104 ], [ %conv114, %cond.true110 ], [ %conv123, %cond.true119 ], [ %conv126, %cond.false124 ]
  %lnot = icmp eq i32 %cond134, 0
  %conv136 = zext i1 %lnot to i8
  br label %for.inc

sw.bb138:                                         ; preds = %cond.end
  %43 = load i64* %klen, align 8, !tbaa !4
  %cmp139 = icmp eq i64 %43, 7
  br i1 %cmp139, label %land.lhs.true141, label %fail

land.lhs.true141:                                 ; preds = %sw.bb138
  %call142 = call i32 @memcmp(i8* %cond, i8* getelementptr inbounds ([8 x i8]* @.str45, i64 0, i64 0), i64 7) #4
  %tobool143 = icmp eq i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %fail

if.then144:                                       ; preds = %land.lhs.true141
  %44 = load %struct.sv** %add.ptr15, align 8, !tbaa !3
  %tobool145 = icmp eq %struct.sv* %44, null
  br i1 %tobool145, label %for.inc, label %cond.false147

cond.false147:                                    ; preds = %if.then144
  %sv_flags148 = getelementptr inbounds %struct.sv* %44, i64 0, i32 2
  %45 = load i32* %sv_flags148, align 4, !tbaa !0
  %and149 = and i32 %45, 262144
  %tobool150 = icmp eq i32 %and149, 0
  br i1 %tobool150, label %cond.false170, label %cond.true151

cond.true151:                                     ; preds = %cond.false147
  %sv_any152 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %46 = load i8** %sv_any152, align 8, !tbaa !3
  %47 = bitcast i8* %46 to %struct.xpv*
  store %struct.xpv* %47, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool153 = icmp eq i8* %46, null
  br i1 %tobool153, label %land.end168, label %land.rhs154

land.rhs154:                                      ; preds = %cond.true151
  %xpv_cur155 = getelementptr inbounds i8* %46, i64 8
  %48 = bitcast i8* %xpv_cur155 to i64*
  %49 = load i64* %48, align 8, !tbaa !4
  %cmp156 = icmp ugt i64 %49, 1
  br i1 %cmp156, label %land.end168, label %lor.rhs158

lor.rhs158:                                       ; preds = %land.rhs154
  %tobool160 = icmp eq i64 %49, 0
  br i1 %tobool160, label %land.end168, label %land.rhs161

land.rhs161:                                      ; preds = %lor.rhs158
  %xpv_pv162 = bitcast i8* %46 to i8**
  %50 = load i8** %xpv_pv162, align 8, !tbaa !3
  %51 = load i8* %50, align 1, !tbaa !1
  %cmp164 = icmp ne i8 %51, 48
  br label %land.end168

land.end168:                                      ; preds = %lor.rhs158, %cond.true151, %land.rhs154, %land.rhs161
  %52 = phi i1 [ false, %cond.true151 ], [ true, %land.rhs154 ], [ false, %lor.rhs158 ], [ %cmp164, %land.rhs161 ]
  %cond169 = zext i1 %52 to i8
  br label %for.inc

cond.false170:                                    ; preds = %cond.false147
  %and172 = and i32 %45, 65536
  %tobool173 = icmp eq i32 %and172, 0
  br i1 %tobool173, label %cond.false179, label %cond.true174

cond.true174:                                     ; preds = %cond.false170
  %sv_any175 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %53 = load i8** %sv_any175, align 8, !tbaa !3
  %xiv_iv176 = getelementptr inbounds i8* %53, i64 24
  %54 = bitcast i8* %xiv_iv176 to i64*
  %55 = load i64* %54, align 8, !tbaa !4
  %cmp177 = icmp ne i64 %55, 0
  %conv178 = zext i1 %cmp177 to i8
  br label %for.inc

cond.false179:                                    ; preds = %cond.false170
  %and181 = and i32 %45, 131072
  %tobool182 = icmp eq i32 %and181, 0
  br i1 %tobool182, label %cond.false188, label %cond.true183

cond.true183:                                     ; preds = %cond.false179
  %sv_any184 = getelementptr inbounds %struct.sv* %44, i64 0, i32 0
  %56 = load i8** %sv_any184, align 8, !tbaa !3
  %xnv_nv185 = getelementptr inbounds i8* %56, i64 32
  %57 = bitcast i8* %xnv_nv185 to double*
  %58 = load double* %57, align 8, !tbaa !5
  %cmp186 = fcmp une double %58, 0.000000e+00
  %conv187 = zext i1 %cmp186 to i8
  br label %for.inc

cond.false188:                                    ; preds = %cond.false179
  %call189 = call signext i8 @Perl_sv_2bool(%struct.sv* %44) #4
  br label %for.inc

fail:                                             ; preds = %land.lhs.true, %land.lhs.true77, %land.lhs.true141, %cond.end, %sw.bb138, %sw.bb74, %sw.bb
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str46, i64 0, i64 0), i8* %cond) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.true174, %cond.false188, %cond.true183, %land.end168, %if.then144, %cond.true49, %cond.false61, %cond.true57, %land.end43, %if.then23, %cond.end133, %fail
  %details.1 = phi i8 [ %details.0564, %fail ], [ %details.0564, %cond.end133 ], [ %details.0564, %if.then23 ], [ %details.0564, %land.end43 ], [ %details.0564, %cond.true57 ], [ %details.0564, %cond.false61 ], [ %details.0564, %cond.true49 ], [ 0, %if.then144 ], [ %cond169, %land.end168 ], [ %conv178, %cond.true174 ], [ %conv187, %cond.true183 ], [ %call189, %cond.false188 ]
  %input.1 = phi i8 [ %input.0565, %fail ], [ %conv136, %cond.end133 ], [ 0, %if.then23 ], [ %cond44, %land.end43 ], [ %conv60, %cond.true57 ], [ %call62, %cond.false61 ], [ %conv52, %cond.true49 ], [ %input.0565, %if.then144 ], [ %input.0565, %land.end168 ], [ %input.0565, %cond.true174 ], [ %input.0565, %cond.true183 ], [ %input.0565, %cond.false188 ]
  %add.ptr201 = getelementptr inbounds %struct.sv** %svp.0563, i64 2
  %cmp13 = icmp ugt %struct.sv** %add.ptr201, %0
  br i1 %cmp13, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then11
  %input.0.lcssa = phi i8 [ 1, %if.then11 ], [ %input.1, %for.inc ]
  %details.0.lcssa = phi i8 [ 0, %if.then11 ], [ %details.1, %for.inc ]
  %sub = shl i64 %sub.ptr.sub3, 29
  %sext555 = add i64 %sub, -4294967296
  %idx.ext202 = ashr exact i64 %sext555, 32
  %idx.neg = sub i64 0, %idx.ext202
  %add.ptr203 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  br label %if.end204

if.end204:                                        ; preds = %for.end, %if.end
  %details.2 = phi i8 [ %details.0.lcssa, %for.end ], [ 0, %if.end ]
  %input.2 = phi i8 [ %input.0.lcssa, %for.end ], [ 1, %if.end ]
  %sp.0 = phi %struct.sv** [ %add.ptr203, %for.end ], [ %0, %if.end ]
  %incdec.ptr205 = getelementptr inbounds %struct.sv** %sp.0, i64 -1
  %59 = load %struct.sv** %sp.0, align 8, !tbaa !3
  %60 = bitcast %struct.sv* %59 to %struct.gv*
  %sv_flags206 = getelementptr inbounds %struct.sv* %59, i64 0, i32 2
  %61 = load i32* %sv_flags206, align 4, !tbaa !0
  %and207 = and i32 %61, 255
  %cmp208 = icmp eq i32 %and207, 13
  br i1 %cmp208, label %if.end227, label %if.then210

if.then210:                                       ; preds = %if.end204
  %and212 = and i32 %61, 524288
  %tobool213 = icmp eq i32 %and212, 0
  %sv_any223.phi.trans.insert = getelementptr inbounds %struct.sv* %59, i64 0, i32 0
  %.pre = load i8** %sv_any223.phi.trans.insert, align 8, !tbaa !3
  br i1 %tobool213, label %if.else, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %if.then210
  %xrv_rv = bitcast i8* %.pre to %struct.sv**
  %62 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags216 = getelementptr inbounds %struct.sv* %62, i64 0, i32 2
  %63 = load i32* %sv_flags216, align 4, !tbaa !0
  %and217 = and i32 %63, 255
  %cmp218 = icmp eq i32 %and217, 13
  br i1 %cmp218, label %if.then220, label %if.else

if.then220:                                       ; preds = %land.lhs.true214
  %64 = bitcast %struct.sv* %62 to %struct.gv*
  br label %if.end227

if.else:                                          ; preds = %if.then210, %land.lhs.true214
  %xpv_pv224 = bitcast i8* %.pre to i8**
  %65 = load i8** %xpv_pv224, align 8, !tbaa !3
  %call225 = call %struct.gv* @Perl_gv_fetchpv(i8* %65, i32 0, i32 15) #4
  br label %if.end227

if.end227:                                        ; preds = %if.then220, %if.else, %if.end204
  %gv.0 = phi %struct.gv* [ %60, %if.end204 ], [ %64, %if.then220 ], [ %call225, %if.else ]
  %tobool228 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool228, label %if.end443, label %land.lhs.true231

land.lhs.true231:                                 ; preds = %if.end227
  %66 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 2
  %67 = load i32* %66, align 4, !tbaa !0
  %and233 = and i32 %67, 255
  %cmp234 = icmp eq i32 %and233, 13
  br i1 %cmp234, label %land.lhs.true236, label %if.end443

land.lhs.true236:                                 ; preds = %land.lhs.true231
  %sv_any237 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %68 = load %struct.xpvgv** %sv_any237, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %68, i64 0, i32 7
  %69 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool238 = icmp eq %struct.gp* %69, null
  br i1 %tobool238, label %if.end443, label %cond.end243

cond.end243:                                      ; preds = %land.lhs.true236
  %gp_io = getelementptr inbounds %struct.gp* %69, i64 0, i32 2
  %70 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool245 = icmp eq %struct.io* %70, null
  br i1 %tobool245, label %if.end443, label %if.then246

if.then246:                                       ; preds = %cond.end243
  %71 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_targ = getelementptr inbounds %struct.op* %71, i64 0, i32 3
  %72 = load i64* %op_targ, align 8, !tbaa !4
  %73 = load %struct.sv*** @PL_curpad, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %73, i64 %72
  %74 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %tobool248 = icmp eq i8 %input.2, 0
  %sv_any250 = getelementptr inbounds %struct.io* %70, i64 0, i32 0
  %75 = load %struct.xpvio** %sv_any250, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds %struct.xpvio* %75, i64 0, i32 7
  %xio_ofp = getelementptr inbounds %struct.xpvio* %75, i64 0, i32 8
  %cond254.in = select i1 %tobool248, %struct._PerlIO*** %xio_ofp, %struct._PerlIO*** %xio_ifp
  %cond254 = load %struct._PerlIO*** %cond254.in, align 8
  %call255 = call %struct.av* @PerlIO_get_layers(%struct._PerlIO** %cond254) #4
  %call256 = call i32 @Perl_av_len(%struct.av* %call255) #4
  %cmp258558 = icmp sgt i32 %call256, -1
  br i1 %cmp258558, label %for.body260.lr.ph, label %for.end437

for.body260.lr.ph:                                ; preds = %if.then246
  %tobool295 = icmp eq i8 %details.2, 0
  %sv_flags339 = getelementptr inbounds %struct.sv* %74, i64 0, i32 2
  br label %for.body260

for.body260:                                      ; preds = %for.body260.lr.ph, %for.inc435
  %sp.1561 = phi %struct.sv** [ %incdec.ptr205, %for.body260.lr.ph ], [ %sp.12, %for.inc435 ]
  %i.0560 = phi i32 [ %call256, %for.body260.lr.ph ], [ %sub436, %for.inc435 ]
  %nitem.0559 = phi i32 [ 0, %for.body260.lr.ph ], [ %nitem.1, %for.inc435 ]
  %sub261 = add nsw i32 %i.0560, -2
  %call262 = call %struct.sv** @Perl_av_fetch(%struct.av* %call255, i32 %sub261, i32 0) #4
  %sub263 = add nsw i32 %i.0560, -1
  %call264 = call %struct.sv** @Perl_av_fetch(%struct.av* %call255, i32 %sub263, i32 0) #4
  %call265 = call %struct.sv** @Perl_av_fetch(%struct.av* %call255, i32 %i.0560, i32 0) #4
  %tobool266 = icmp eq %struct.sv** %call262, null
  br i1 %tobool266, label %land.end273, label %land.lhs.true267

land.lhs.true267:                                 ; preds = %for.body260
  %76 = load %struct.sv** %call262, align 8, !tbaa !3
  %tobool268 = icmp eq %struct.sv* %76, null
  br i1 %tobool268, label %land.end273, label %land.rhs269

land.rhs269:                                      ; preds = %land.lhs.true267
  %sv_flags270 = getelementptr inbounds %struct.sv* %76, i64 0, i32 2
  %77 = load i32* %sv_flags270, align 4, !tbaa !0
  %and271 = and i32 %77, 262144
  %tobool272 = icmp ne i32 %and271, 0
  br label %land.end273

land.end273:                                      ; preds = %land.lhs.true267, %for.body260, %land.rhs269
  %78 = phi i1 [ false, %land.lhs.true267 ], [ false, %for.body260 ], [ %tobool272, %land.rhs269 ]
  %tobool275 = icmp eq %struct.sv** %call264, null
  br i1 %tobool275, label %land.end282, label %land.lhs.true276

land.lhs.true276:                                 ; preds = %land.end273
  %79 = load %struct.sv** %call264, align 8, !tbaa !3
  %tobool277 = icmp eq %struct.sv* %79, null
  br i1 %tobool277, label %land.end282, label %land.rhs278

land.rhs278:                                      ; preds = %land.lhs.true276
  %sv_flags279 = getelementptr inbounds %struct.sv* %79, i64 0, i32 2
  %80 = load i32* %sv_flags279, align 4, !tbaa !0
  %and280 = and i32 %80, 262144
  %tobool281 = icmp ne i32 %and280, 0
  br label %land.end282

land.end282:                                      ; preds = %land.lhs.true276, %land.end273, %land.rhs278
  %81 = phi i1 [ false, %land.lhs.true276 ], [ false, %land.end273 ], [ %tobool281, %land.rhs278 ]
  %tobool285 = icmp eq %struct.sv** %call265, null
  br i1 %tobool285, label %land.end292, label %land.lhs.true286

land.lhs.true286:                                 ; preds = %land.end282
  %82 = load %struct.sv** %call265, align 8, !tbaa !3
  %tobool287 = icmp eq %struct.sv* %82, null
  br i1 %tobool287, label %land.end292, label %land.rhs288

land.rhs288:                                      ; preds = %land.lhs.true286
  %sv_flags289 = getelementptr inbounds %struct.sv* %82, i64 0, i32 2
  %83 = load i32* %sv_flags289, align 4, !tbaa !0
  %and290 = and i32 %83, 65536
  %tobool291 = icmp ne i32 %and290, 0
  br label %land.end292

land.end292:                                      ; preds = %land.lhs.true286, %land.end282, %land.rhs288
  %84 = phi i1 [ false, %land.lhs.true286 ], [ false, %land.end282 ], [ %tobool291, %land.rhs288 ]
  br i1 %tobool295, label %if.else368, label %if.then296

if.then296:                                       ; preds = %land.end292
  %85 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast297 = ptrtoint %struct.sv** %85 to i64
  %sub.ptr.rhs.cast298 = ptrtoint %struct.sv** %sp.1561 to i64
  %sub.ptr.sub299 = sub i64 %sub.ptr.lhs.cast297, %sub.ptr.rhs.cast298
  %cmp301 = icmp slt i64 %sub.ptr.sub299, 8
  br i1 %cmp301, label %if.then303, label %if.end305

if.then303:                                       ; preds = %if.then296
  %call304 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1561, %struct.sv** %sp.1561, i32 1) #4
  br label %if.end305

if.end305:                                        ; preds = %if.then303, %if.then296
  %sp.2 = phi %struct.sv** [ %call304, %if.then303 ], [ %sp.1561, %if.then296 ]
  br i1 %78, label %cond.true308, label %cond.end313

cond.true308:                                     ; preds = %if.end305
  %86 = load %struct.sv** %call262, align 8, !tbaa !3
  %sv_any309 = getelementptr inbounds %struct.sv* %86, i64 0, i32 0
  %87 = load i8** %sv_any309, align 8, !tbaa !3
  %xpv_pv310 = bitcast i8* %87 to i8**
  %88 = load i8** %xpv_pv310, align 8, !tbaa !3
  %call311 = call %struct.sv* @Perl_newSVpv(i8* %88, i64 0) #4
  br label %cond.end313

cond.end313:                                      ; preds = %if.end305, %cond.true308
  %cond314 = phi %struct.sv* [ %call311, %cond.true308 ], [ @PL_sv_undef, %if.end305 ]
  %incdec.ptr315 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %cond314, %struct.sv** %incdec.ptr315, align 8, !tbaa !3
  %89 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast316 = ptrtoint %struct.sv** %89 to i64
  %sub.ptr.rhs.cast317 = ptrtoint %struct.sv** %incdec.ptr315 to i64
  %sub.ptr.sub318 = sub i64 %sub.ptr.lhs.cast316, %sub.ptr.rhs.cast317
  %cmp320 = icmp slt i64 %sub.ptr.sub318, 8
  br i1 %cmp320, label %if.then322, label %if.end324

if.then322:                                       ; preds = %cond.end313
  %call323 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr315, %struct.sv** %incdec.ptr315, i32 1) #4
  br label %if.end324

if.end324:                                        ; preds = %if.then322, %cond.end313
  %sp.3 = phi %struct.sv** [ %call323, %if.then322 ], [ %incdec.ptr315, %cond.end313 ]
  br i1 %81, label %cond.true327, label %cond.end332

cond.true327:                                     ; preds = %if.end324
  %90 = load %struct.sv** %call264, align 8, !tbaa !3
  %sv_any328 = getelementptr inbounds %struct.sv* %90, i64 0, i32 0
  %91 = load i8** %sv_any328, align 8, !tbaa !3
  %xpv_pv329 = bitcast i8* %91 to i8**
  %92 = load i8** %xpv_pv329, align 8, !tbaa !3
  %call330 = call %struct.sv* @Perl_newSVpv(i8* %92, i64 0) #4
  br label %cond.end332

cond.end332:                                      ; preds = %if.end324, %cond.true327
  %cond333 = phi %struct.sv* [ %call330, %cond.true327 ], [ @PL_sv_undef, %if.end324 ]
  %incdec.ptr334 = getelementptr inbounds %struct.sv** %sp.3, i64 1
  store %struct.sv* %cond333, %struct.sv** %incdec.ptr334, align 8, !tbaa !3
  br i1 %84, label %if.then336, label %if.else355

if.then336:                                       ; preds = %cond.end332
  %93 = load %struct.sv** %call265, align 8, !tbaa !3
  %sv_any337 = getelementptr inbounds %struct.sv* %93, i64 0, i32 0
  %94 = load i8** %sv_any337, align 8, !tbaa !3
  %xiv_iv338 = getelementptr inbounds i8* %94, i64 24
  %95 = bitcast i8* %xiv_iv338 to i64*
  %96 = load i64* %95, align 8, !tbaa !4
  call void @Perl_sv_setiv(%struct.sv* %74, i64 %96) #4
  %97 = load i32* %sv_flags339, align 4, !tbaa !0
  %and340 = and i32 %97, 16384
  %tobool341 = icmp eq i32 %and340, 0
  br i1 %tobool341, label %if.end344, label %if.then342

if.then342:                                       ; preds = %if.then336
  %call343 = call i32 @Perl_mg_set(%struct.sv* %74) #4
  br label %if.end344

if.end344:                                        ; preds = %if.then336, %if.then342
  %98 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast345 = ptrtoint %struct.sv** %98 to i64
  %sub.ptr.rhs.cast346 = ptrtoint %struct.sv** %incdec.ptr334 to i64
  %sub.ptr.sub347 = sub i64 %sub.ptr.lhs.cast345, %sub.ptr.rhs.cast346
  %cmp349 = icmp slt i64 %sub.ptr.sub347, 8
  br i1 %cmp349, label %if.then351, label %if.end353

if.then351:                                       ; preds = %if.end344
  %call352 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr334, %struct.sv** %incdec.ptr334, i32 1) #4
  br label %if.end353

if.end353:                                        ; preds = %if.then351, %if.end344
  %sp.4 = phi %struct.sv** [ %call352, %if.then351 ], [ %incdec.ptr334, %if.end344 ]
  %incdec.ptr354 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %74, %struct.sv** %incdec.ptr354, align 8, !tbaa !3
  br label %if.end366

if.else355:                                       ; preds = %cond.end332
  %99 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast356 = ptrtoint %struct.sv** %99 to i64
  %sub.ptr.rhs.cast357 = ptrtoint %struct.sv** %incdec.ptr334 to i64
  %sub.ptr.sub358 = sub i64 %sub.ptr.lhs.cast356, %sub.ptr.rhs.cast357
  %cmp360 = icmp slt i64 %sub.ptr.sub358, 8
  br i1 %cmp360, label %if.then362, label %if.end364

if.then362:                                       ; preds = %if.else355
  %call363 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr334, %struct.sv** %incdec.ptr334, i32 1) #4
  br label %if.end364

if.end364:                                        ; preds = %if.then362, %if.else355
  %sp.5 = phi %struct.sv** [ %call363, %if.then362 ], [ %incdec.ptr334, %if.else355 ]
  %incdec.ptr365 = getelementptr inbounds %struct.sv** %sp.5, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr365, align 8, !tbaa !3
  br label %if.end366

if.end366:                                        ; preds = %if.end364, %if.end353
  %sp.6 = phi %struct.sv** [ %incdec.ptr354, %if.end353 ], [ %incdec.ptr365, %if.end364 ]
  %add367 = add nsw i32 %nitem.0559, 3
  br label %for.inc435

if.else368:                                       ; preds = %land.end292
  %brmerge.demorgan = and i1 %78, %81
  %100 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast389 = ptrtoint %struct.sv** %100 to i64
  %sub.ptr.rhs.cast390 = ptrtoint %struct.sv** %sp.1561 to i64
  %sub.ptr.sub391 = sub i64 %sub.ptr.lhs.cast389, %sub.ptr.rhs.cast390
  %cmp393 = icmp slt i64 %sub.ptr.sub391, 8
  br i1 %brmerge.demorgan, label %if.then374, label %if.else386

if.then374:                                       ; preds = %if.else368
  br i1 %cmp393, label %if.then381, label %if.end383

if.then381:                                       ; preds = %if.then374
  %call382 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1561, %struct.sv** %sp.1561, i32 1) #4
  br label %if.end383

if.end383:                                        ; preds = %if.then374, %if.then381
  %sp.7 = phi %struct.sv** [ %call382, %if.then381 ], [ %sp.1561, %if.then374 ]
  %101 = load %struct.sv** %call262, align 8, !tbaa !3
  %102 = load %struct.sv** %call264, align 8, !tbaa !3
  %call384 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), %struct.sv* %101, %struct.sv* %102) #4
  %incdec.ptr385 = getelementptr inbounds %struct.sv** %sp.7, i64 1
  store %struct.sv* %call384, %struct.sv** %incdec.ptr385, align 8, !tbaa !3
  br label %if.end412

if.else386:                                       ; preds = %if.else368
  br i1 %78, label %if.then388, label %if.else400

if.then388:                                       ; preds = %if.else386
  br i1 %cmp393, label %if.then395, label %if.end397

if.then395:                                       ; preds = %if.then388
  %call396 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1561, %struct.sv** %sp.1561, i32 1) #4
  br label %if.end397

if.end397:                                        ; preds = %if.then388, %if.then395
  %sp.8 = phi %struct.sv** [ %call396, %if.then395 ], [ %sp.1561, %if.then388 ]
  %103 = load %struct.sv** %call262, align 8, !tbaa !3
  %call398 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([3 x i8]* @.str48, i64 0, i64 0), %struct.sv* %103) #4
  %incdec.ptr399 = getelementptr inbounds %struct.sv** %sp.8, i64 1
  store %struct.sv* %call398, %struct.sv** %incdec.ptr399, align 8, !tbaa !3
  br label %if.end412

if.else400:                                       ; preds = %if.else386
  br i1 %cmp393, label %if.then407, label %if.end409

if.then407:                                       ; preds = %if.else400
  %call408 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1561, %struct.sv** %sp.1561, i32 1) #4
  br label %if.end409

if.end409:                                        ; preds = %if.then407, %if.else400
  %sp.9 = phi %struct.sv** [ %call408, %if.then407 ], [ %sp.1561, %if.else400 ]
  %incdec.ptr410 = getelementptr inbounds %struct.sv** %sp.9, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr410, align 8, !tbaa !3
  br label %if.end412

if.end412:                                        ; preds = %if.end397, %if.end409, %if.end383
  %sp.10 = phi %struct.sv** [ %incdec.ptr385, %if.end383 ], [ %incdec.ptr399, %if.end397 ], [ %incdec.ptr410, %if.end409 ]
  %inc = add nsw i32 %nitem.0559, 1
  br i1 %84, label %if.then414, label %for.inc435

if.then414:                                       ; preds = %if.end412
  %104 = load %struct.sv** %call265, align 8, !tbaa !3
  %sv_any415 = getelementptr inbounds %struct.sv* %104, i64 0, i32 0
  %105 = load i8** %sv_any415, align 8, !tbaa !3
  %xiv_iv416 = getelementptr inbounds i8* %105, i64 24
  %106 = bitcast i8* %xiv_iv416 to i64*
  %107 = load i64* %106, align 8, !tbaa !4
  %and417 = and i64 %107, 32768
  %tobool418 = icmp eq i64 %and417, 0
  br i1 %tobool418, label %for.inc435, label %if.then419

if.then419:                                       ; preds = %if.then414
  %108 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast420 = ptrtoint %struct.sv** %108 to i64
  %sub.ptr.rhs.cast421 = ptrtoint %struct.sv** %sp.10 to i64
  %sub.ptr.sub422 = sub i64 %sub.ptr.lhs.cast420, %sub.ptr.rhs.cast421
  %cmp424 = icmp slt i64 %sub.ptr.sub422, 8
  br i1 %cmp424, label %if.then426, label %if.end428

if.then426:                                       ; preds = %if.then419
  %call427 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.10, %struct.sv** %sp.10, i32 1) #4
  br label %if.end428

if.end428:                                        ; preds = %if.then426, %if.then419
  %sp.11 = phi %struct.sv** [ %call427, %if.then426 ], [ %sp.10, %if.then419 ]
  %call429 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i64 4) #4
  %incdec.ptr430 = getelementptr inbounds %struct.sv** %sp.11, i64 1
  store %struct.sv* %call429, %struct.sv** %incdec.ptr430, align 8, !tbaa !3
  %inc431 = add nsw i32 %nitem.0559, 2
  br label %for.inc435

for.inc435:                                       ; preds = %if.then414, %if.end366, %if.end428, %if.end412
  %nitem.1 = phi i32 [ %add367, %if.end366 ], [ %inc431, %if.end428 ], [ %inc, %if.then414 ], [ %inc, %if.end412 ]
  %sp.12 = phi %struct.sv** [ %sp.6, %if.end366 ], [ %incdec.ptr430, %if.end428 ], [ %sp.10, %if.then414 ], [ %sp.10, %if.end412 ]
  %sub436 = add nsw i32 %i.0560, -3
  %cmp258 = icmp sgt i32 %sub436, -1
  br i1 %cmp258, label %for.body260, label %for.end437

for.end437:                                       ; preds = %for.inc435, %if.then246
  %nitem.0.lcssa = phi i32 [ 0, %if.then246 ], [ %nitem.1, %for.inc435 ]
  %109 = bitcast %struct.av* %call255 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %109) #4
  %conv438 = sext i32 %nitem.0.lcssa to i64
  %110 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %sext554 = shl i64 %add, 32
  %idx.ext439 = ashr exact i64 %sext554, 32
  %sub441 = add i64 %idx.ext439, -1
  %add.ptr440.sum = add i64 %sub441, %conv438
  %add.ptr442 = getelementptr inbounds %struct.sv** %110, i64 %add.ptr440.sum
  br label %return

if.end443:                                        ; preds = %cond.end243, %land.lhs.true236, %land.lhs.true231, %if.end227
  %111 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %sext = shl i64 %add, 32
  %idx.ext445 = ashr exact i64 %sext, 32
  %add.ptr446.sum = add i64 %idx.ext445, -1
  %add.ptr448 = getelementptr inbounds %struct.sv** %111, i64 %add.ptr446.sum
  br label %return

return:                                           ; preds = %if.end443, %for.end437
  %storemerge = phi %struct.sv** [ %add.ptr448, %if.end443 ], [ %add.ptr442, %for.end437 ]
  store %struct.sv** %storemerge, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @XS_Regexp_DESTROY(%struct.cv* nocapture %cv) #3 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Internals_hash_seed(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %1 = load i32* %0, align 4, !tbaa !0
  %idx.ext8 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext8, 32
  %call = tail call %struct.sv* @Perl_newSVuv(i64 0) #4
  %call1 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %2 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %2, i64 %idxprom
  store %struct.sv* %call1, %struct.sv** %arrayidx, align 8, !tbaa !3
  %3 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr4 = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  store %struct.sv** %add.ptr4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Internals_rehash_seed(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %1 = load i32* %0, align 4, !tbaa !0
  %idx.ext8 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext8, 32
  %2 = load i64* @PL_rehash_seed, align 8, !tbaa !4
  %call = tail call %struct.sv* @Perl_newSVuv(i64 %2) #4
  %call1 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #4
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %3 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.sv** %3, i64 %idxprom
  store %struct.sv* %call1, %struct.sv** %arrayidx, align 8, !tbaa !3
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr4 = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  store %struct.sv** %add.ptr4, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Internals_HvREHASH(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %5, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end34, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %6 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %6, 8
  br i1 %cmp, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !0
  %and12 = and i32 %10, 255
  %cmp13 = icmp eq i32 %and12, 11
  br i1 %cmp13, label %if.then15, label %if.end34

if.then15:                                        ; preds = %land.lhs.true
  %and17 = and i32 %10, 268435456
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then15
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !3
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr24 = getelementptr inbounds %struct.sv** %11, i64 %idxprom
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.else:                                          ; preds = %if.then15
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx, align 8, !tbaa !3
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr31 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv** %add.ptr31, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %return

if.end34:                                         ; preds = %entry, %if.then, %land.lhs.true
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %if.end34, %if.else, %if.then19
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: optsize
declare double @Perl_str_to_version(%struct.sv*) #1

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_utf8_encode(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_decode(%struct.sv*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2uv(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_hv_clear_placeholders(%struct.hv*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.av* @PerlIO_get_layers(%struct._PerlIO**) #1

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVuv(i64) #1

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: optsize
declare void @Perl_gv_init(%struct.gv*, %struct.hv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
