; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/gv.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
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
%struct.xpv = type { i8*, i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.am_table = type { i32, i64, i32, [66 x %struct.cv*], i64 }
%struct.binop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op* }

@.str = private unnamed_addr constant [21 x i8] c"Bad symbol for array\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"Bad symbol for hash\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"Bad symbol for filehandle\00", align 1
@PL_defstash = external global %struct.hv*
@PL_perldb = external global i32
@PL_curcop = external global %struct.cop*
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_Sv = external global %struct.sv*
@PL_compcv = external global %struct.cv*
@PL_sub_generation = external global i32
@PL_curstash = external global %struct.hv*
@.str4 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"Can't use anonymous symbol table for method lookup\00", align 1
@.str6 = private unnamed_addr constant [77 x i8] c"Recursive inheritance detected while looking for method '%s' in package '%s'\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_sv_undef = external global %struct.sv
@.str8 = private unnamed_addr constant [8 x i8] c"::SUPER\00", align 1
@.str9 = private unnamed_addr constant [22 x i8] c"Cannot create %s::ISA\00", align 1
@PL_dowarn = external global i8
@.str10 = private unnamed_addr constant [37 x i8] c"Can't locate package %_ for @%s::ISA\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"SUPER\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%s::SUPER\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"unimport\00", align 1
@PL_sv_yes = external global %struct.sv
@Perl_gv_autoload4.autoload = private unnamed_addr constant [9 x i8] c"AUTOLOAD\00", align 1
@.str15 = private unnamed_addr constant [66 x i8] c"Use of inherited AUTOLOAD for non-method %s::%.*s() is deprecated\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PL_tainting = external global i8
@.str17 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str25 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@PL_compiling = external global %struct.cop
@PL_hints = external global i32
@.str26 = private unnamed_addr constant [32 x i8] c"Variable \22%c%s\22 is not imported\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"\09(Did you mean &%s instead?)\0A\00", align 1
@.str28 = private unnamed_addr constant [52 x i8] c"Global symbol \22%s%s\22 requires explicit package name\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@PL_nullstash = external global %struct.hv*
@.str32 = private unnamed_addr constant [30 x i8] c"Had to create %s unexpectedly\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"RGV\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"XPORT\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str36 = private unnamed_addr constant [17 x i8] c"AnyDBM_File::ISA\00", align 1
@.str37 = private unnamed_addr constant [10 x i8] c"NDBM_File\00", align 1
@.str38 = private unnamed_addr constant [8 x i8] c"DB_File\00", align 1
@.str39 = private unnamed_addr constant [10 x i8] c"GDBM_File\00", align 1
@.str40 = private unnamed_addr constant [10 x i8] c"SDBM_File\00", align 1
@.str41 = private unnamed_addr constant [10 x i8] c"ODBM_File\00", align 1
@.str42 = private unnamed_addr constant [8 x i8] c"VERLOAD\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"IG\00", align 1
@PL_psig_ptr = external global %struct.sv**
@PL_psig_name = external global %struct.sv**
@PL_psig_pend = external global i32*
@PL_sig_name = external global [0 x i8*]
@.str44 = private unnamed_addr constant [7 x i8] c"ERSION\00", align 1
@.str45 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@.str46 = private unnamed_addr constant [4 x i8] c"PEN\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"AINT\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"NICODE\00", align 1
@.str49 = private unnamed_addr constant [10 x i8] c"TF8LOCALE\00", align 1
@.str50 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@PL_sawampersand = external global i8
@PL_chopset = external global i8*
@.str51 = private unnamed_addr constant [25 x i8] c"Use of $%s is deprecated\00", align 1
@PL_defoutgv = external global %struct.gv*
@.str52 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@PL_formfeed = external global %struct.sv*
@.str53 = private unnamed_addr constant [2 x i8] c"\1C\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"%8.6f\00", align 1
@PL_patchlevel = external global %struct.sv*
@.str55 = private unnamed_addr constant [9 x i8] c"__ANON__\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str57 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@PL_stashcache = external global %struct.hv*
@.str58 = private unnamed_addr constant [13 x i8] c"FileHandle::\00", align 1
@.str59 = private unnamed_addr constant [13 x i8] c"IO::Handle::\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"/lib/\00", align 1
@.str61 = private unnamed_addr constant [4 x i8] c".pm\00", align 1
@.str62 = private unnamed_addr constant [44 x i8] c"Name \22%s::%s\22 used only once: possible typo\00", align 1
@.str63 = private unnamed_addr constant [13 x i8] c"%s::_GEN_%ld\00", align 1
@PL_gensym = external global i32
@.str64 = private unnamed_addr constant [43 x i8] c"Attempt to free unreferenced glob pointers\00", align 1
@PL_amagic_generation = external global i64
@PL_AMG_names = external global [66 x i8*]
@PL_Xpv = external global %struct.xpv*
@.str65 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str66 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@.str67 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str68 = private unnamed_addr constant [56 x i8] c"%s method `%.256s' overloading `%s' in package `%.256s'\00", align 1
@.str69 = private unnamed_addr constant [27 x i8] c"Stub found while resolving\00", align 1
@.str70 = private unnamed_addr constant [14 x i8] c"Can't resolve\00", align 1
@.str71 = private unnamed_addr constant [52 x i8] c"Operation `%s': no method found,%sargument %s%s%s%s\00", align 1
@.str72 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c"\0A\09left \00", align 1
@.str74 = private unnamed_addr constant [23 x i8] c"in overloaded package \00", align 1
@.str75 = private unnamed_addr constant [24 x i8] c"has no overloaded magic\00", align 1
@.str76 = private unnamed_addr constant [41 x i8] c",\0A\09right argument in overloaded package \00", align 1
@.str77 = private unnamed_addr constant [42 x i8] c",\0A\09right argument has no overloaded magic\00", align 1
@.str78 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_top_env = external global %struct.jmpenv*
@PL_curstackinfo = external global %struct.stackinfo*
@PL_stack_base = external global %struct.sv**
@PL_curstack = external global %struct.av*
@PL_stack_max = external global %struct.sv**
@PL_op = external global %struct.op*
@PL_debstash = external global %struct.hv*
@PL_sv_no = external global %struct.sv
@PL_runops = external global i32 ()*
@PL_stderrgv = external global %struct.gv*
@.str79 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str80 = private unnamed_addr constant [39 x i8] c"Copy method did not return a reference\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@.str82 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str83 = private unnamed_addr constant [48 x i8] c"Can't use %%! because Errno.pm is not available\00", align 1
@switch.table = private unnamed_addr constant [14 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1]
@switch.table84 = private unnamed_addr constant [14 x i32] [i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 -1, i32 -1, i32 35, i32 35, i32 35, i32 35, i32 35, i32 35]

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_AVadd(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %3, i64 0, i32 4
  %4 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.av* %4, null
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.av* @Perl_newAV() #6
  %5 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp4, align 8, !tbaa !3
  %gp_av5 = getelementptr inbounds %struct.gp* %6, i64 0, i32 4
  store %struct.av* %call, %struct.av** %gp_av5, align 8, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  ret %struct.gv* %gv
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_HVadd(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %3, i64 0, i32 5
  %4 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.hv* %4, null
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.hv* @Perl_newHV() #6
  %5 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp4, align 8, !tbaa !3
  %gp_hv5 = getelementptr inbounds %struct.gp* %6, i64 0, i32 5
  store %struct.hv* %call, %struct.hv** %gp_hv5, align 8, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  ret %struct.gv* %gv
}

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #1

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_IOadd(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.io* %4, null
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.io* @Perl_newIO() #7
  %5 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp4, align 8, !tbaa !3
  %gp_io5 = getelementptr inbounds %struct.gp* %6, i64 0, i32 2
  store %struct.io* %call, %struct.io** %gp_io5, align 8, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  ret %struct.gv* %gv
}

; Function Attrs: nounwind optsize uwtable
define %struct.io* @Perl_newIO() #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #6
  %0 = bitcast %struct.sv* %call to %struct.io*
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 15) #6
  %1 = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  store i32 1, i32* %1, align 4, !tbaa !0
  %2 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %3 = load i32* %2, align 4, !tbaa !0
  %or = or i32 %3, 4096
  store i32 %or, i32* %2, align 4, !tbaa !0
  %4 = load %struct.hv** @PL_stashcache, align 8, !tbaa !3
  tail call void @Perl_hv_clear(%struct.hv* %4) #6
  %call2 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([13 x i8]* @.str58, i64 0, i64 0), i32 0, i32 11) #7
  %tobool = icmp eq %struct.gv* %call2, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call2, i64 0, i32 0
  %5 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %6, i64 0, i32 5
  %7 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool3 = icmp eq %struct.hv* %7, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_any8 = getelementptr inbounds %struct.hv* %7, i64 0, i32 0
  %8 = load %struct.xpvhv** %sv_any8, align 8, !tbaa !3
  %9 = bitcast %struct.xpvhv* %8 to %struct.he***
  %10 = load %struct.he*** %9, align 8, !tbaa !3
  %tobool9 = icmp eq %struct.he** %10, null
  br i1 %tobool9, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true4
  %11 = bitcast %struct.hv* %7 to %struct.sv*
  store %struct.sv* %11, %struct.sv** @PL_Sv, align 8, !tbaa !3
  br label %land.rhs

if.end:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true4
  %call10 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([13 x i8]* @.str59, i64 0, i64 0), i32 1, i32 11) #7
  %sv_any11.phi.trans.insert = getelementptr inbounds %struct.gv* %call10, i64 0, i32 0
  %.pre = load %struct.xpvgv** %sv_any11.phi.trans.insert, align 8, !tbaa !3
  %xgv_gp12.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre25 = load %struct.gp** %xgv_gp12.phi.trans.insert, align 8, !tbaa !3
  %gp_hv13.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre25, i64 0, i32 5
  %.pre26 = load %struct.hv** %gp_hv13.phi.trans.insert, align 8, !tbaa !3
  %12 = bitcast %struct.hv* %.pre26 to %struct.sv*
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool14 = icmp eq %struct.hv* %.pre26, null
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.thread, %if.end
  %13 = phi %struct.hv* [ %7, %if.end.thread ], [ %.pre26, %if.end ]
  %14 = getelementptr inbounds %struct.hv* %13, i64 0, i32 1
  %15 = load i32* %14, align 4, !tbaa !0
  %inc = add i32 %15, 1
  store i32 %inc, i32* %14, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %16 = phi %struct.hv* [ null, %if.end ], [ %13, %land.rhs ]
  %sv_any17 = bitcast %struct.sv* %call to %struct.xpvio**
  %17 = load %struct.xpvio** %sv_any17, align 8, !tbaa !3
  %18 = getelementptr inbounds %struct.xpvio* %17, i64 0, i32 6
  store %struct.hv* %16, %struct.hv** %18, align 8, !tbaa !3
  ret %struct.io* %0
}

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_fetchfile(i8* %name) #0 {
entry:
  %smallbuf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %smallbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  %tobool = icmp eq %struct.hv* %1, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strlen(i8* %name) #6
  %add = add i64 %call, 2
  %cmp = icmp ult i64 %add, 256
  br i1 %cmp, label %if.end4, label %if.else

if.else:                                          ; preds = %if.end
  %add2 = add i64 %call, 3
  %call3 = call i8* @Perl_safesysmalloc(i64 %add2) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.else
  %tmpbuf.0 = phi i8* [ %call3, %if.else ], [ %0, %if.end ]
  store i8 95, i8* %tmpbuf.0, align 1, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8* %tmpbuf.0, i64 1
  store i8 60, i8* %arrayidx5, align 1, !tbaa !1
  %add.ptr = getelementptr inbounds i8* %tmpbuf.0, i64 2
  %call6 = call i8* @strcpy(i8* %add.ptr, i8* %name) #6
  %2 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  %conv = trunc i64 %add to i32
  %call7 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %2, i8* %tmpbuf.0, i32 %conv, i32 1) #6
  %3 = load %struct.sv** %call7, align 8
  %4 = bitcast %struct.sv* %3 to %struct.gv*
  %5 = getelementptr inbounds %struct.sv* %3, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !0
  %and = and i32 %6, 255
  %cmp8 = icmp eq i32 %and, 13
  br i1 %cmp8, label %if.end29, label %if.then10

if.then10:                                        ; preds = %if.end4
  %7 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  call void @Perl_gv_init(%struct.gv* %4, %struct.hv* %7, i8* %tmpbuf.0, i64 %add, i32 0) #7
  %sv_any = bitcast %struct.sv* %3 to %struct.xpvgv**
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %9, i64 0, i32 0
  %10 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %10, i8* %name) #6
  %11 = load i32* @PL_perldb, align 4, !tbaa !0
  %tobool11 = icmp eq i32 %11, 0
  %and12 = and i32 %11, 2
  %tobool13 = icmp eq i32 %and12, 0
  %or.cond = or i1 %tobool11, %tobool13
  br i1 %or.cond, label %if.end29, label %if.then14

if.then14:                                        ; preds = %if.then10
  %call15 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %4) #7
  %sv_any16 = getelementptr inbounds %struct.gv* %call15, i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any16, align 8, !tbaa !3
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp17, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %13, i64 0, i32 5
  %14 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool18 = icmp eq %struct.hv* %14, null
  %call19 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %4) #7
  br i1 %tobool18, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then14
  %call24 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call19) #7
  br label %cond.end

cond.end:                                         ; preds = %if.then14, %cond.false
  %call19.pn = phi %struct.gv* [ %call24, %cond.false ], [ %call19, %if.then14 ]
  %.pn51.in = getelementptr inbounds %struct.gv* %call19.pn, i64 0, i32 0
  %.pn51 = load %struct.xpvgv** %.pn51.in, align 8
  %.pn.in = getelementptr inbounds %struct.xpvgv* %.pn51, i64 0, i32 7
  %.pn = load %struct.gp** %.pn.in, align 8
  %cond.in = getelementptr inbounds %struct.gp* %.pn, i64 0, i32 5
  %cond = load %struct.hv** %cond.in, align 8
  call void @Perl_hv_magic(%struct.hv* %cond, %struct.gv* null, i32 76) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then10, %cond.end, %if.end4
  %cmp31 = icmp eq i8* %tmpbuf.0, %0
  br i1 %cmp31, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @Perl_safesysfree(i8* %tmpbuf.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end29, %entry
  %retval.0 = phi %struct.gv* [ null, %entry ], [ %4, %if.end29 ], [ %4, %if.then33 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #2
  ret %struct.gv* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_init(%struct.gv* %gv, %struct.hv* %stash, i8* %name, i64 %len, i32 %multi) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 255
  %cmp = icmp ne i32 %and, 0
  %cmp.not = xor i1 %cmp, true
  %and4 = and i32 %0, 262144
  %tobool5 = icmp eq i32 %and4, 0
  %or.cond = or i1 %tobool5, %cmp.not
  %sv_any6.pre = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  br i1 %or.cond, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %1 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xpv_pv = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 0
  %2 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %entry ]
  %3 = bitcast %struct.gv* %gv to %struct.sv*
  %call = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %3, i32 13) #6
  %4 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 2
  %6 = load i64* %5, align 8, !tbaa !4
  %tobool7 = icmp eq i64 %6, 0
  br i1 %tobool7, label %if.end18, label %if.then

if.then:                                          ; preds = %cond.end
  %tobool8 = icmp eq i8* %cond, null
  %xpv_pv11 = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 0
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  store i8* null, i8** %xpv_pv11, align 8, !tbaa !3
  %7 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 2
  store i64 0, i64* %8, align 8, !tbaa !4
  %9 = load i32* %sv_flags, align 4, !tbaa !0
  %and15 = and i32 %9, -67371009
  store i32 %and15, i32* %sv_flags, align 4, !tbaa !0
  br label %if.end18

if.else:                                          ; preds = %if.then
  %10 = load i8** %xpv_pv11, align 8, !tbaa !3
  tail call void @Perl_safesysfree(i8* %10) #6
  br label %if.end18

if.end18:                                         ; preds = %cond.end, %if.then9, %if.else
  %call19 = tail call i8* @Perl_safesysmalloc(i64 88) #6
  %11 = bitcast i8* %call19 to %struct.gp*
  tail call void @llvm.memset.p0i8.i64(i8* %call19, i8 0, i64 88, i32 1, i1 false)
  %call20 = tail call %struct.gp* @Perl_gp_ref(%struct.gp* %11) #7
  %12 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  store %struct.gp* %call20, %struct.gp** %xgv_gp, align 8, !tbaa !3
  %call22 = tail call %struct.sv* @Perl_newSV(i64 0) #6
  %13 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 7
  %14 = load %struct.gp** %xgv_gp24, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %14, i64 0, i32 0
  store %struct.sv* %call22, %struct.sv** %gp_sv, align 8, !tbaa !3
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_line = getelementptr inbounds %struct.cop* %15, i64 0, i32 13
  %16 = load i32* %cop_line, align 4, !tbaa !0
  %17 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv* %17, i64 0, i32 7
  %18 = load %struct.gp** %xgv_gp26, align 8, !tbaa !3
  %gp_line = getelementptr inbounds %struct.gp* %18, i64 0, i32 10
  store i32 %16, i32* %gp_line, align 4, !tbaa !0
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv = getelementptr inbounds %struct.cop* %19, i64 0, i32 10
  %20 = load %struct.gv** %cop_filegv, align 8, !tbaa !3
  %tobool27 = icmp eq %struct.gv* %20, null
  br i1 %tobool27, label %cond.end77, label %cond.true28

cond.true28:                                      ; preds = %if.end18
  %21 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv29 = getelementptr inbounds %struct.cop* %21, i64 0, i32 10
  %22 = load %struct.gv** %cop_filegv29, align 8, !tbaa !3
  %sv_any30 = getelementptr inbounds %struct.gv* %22, i64 0, i32 0
  %23 = load %struct.xpvgv** %sv_any30, align 8, !tbaa !3
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv* %23, i64 0, i32 7
  %24 = load %struct.gp** %xgv_gp31, align 8, !tbaa !3
  %gp_sv32 = getelementptr inbounds %struct.gp* %24, i64 0, i32 0
  %25 = load %struct.sv** %gp_sv32, align 8, !tbaa !3
  %tobool33 = icmp eq %struct.sv* %25, null
  br i1 %tobool33, label %cond.end77, label %cond.true35

cond.true35:                                      ; preds = %cond.true28
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv39 = getelementptr inbounds %struct.cop* %27, i64 0, i32 10
  %28 = load %struct.gv** %cop_filegv39, align 8, !tbaa !3
  %sv_any40 = getelementptr inbounds %struct.gv* %28, i64 0, i32 0
  %29 = load %struct.xpvgv** %sv_any40, align 8, !tbaa !3
  %xgv_gp41 = getelementptr inbounds %struct.xpvgv* %29, i64 0, i32 7
  %30 = load %struct.gp** %xgv_gp41, align 8, !tbaa !3
  %gp_sv42 = getelementptr inbounds %struct.gp* %30, i64 0, i32 0
  %31 = load %struct.sv** %gp_sv42, align 8, !tbaa !3
  %sv_any46 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %32 = load i8** %sv_any46, align 8, !tbaa !3
  %xpv_pv47 = bitcast i8* %32 to i8**
  %33 = load i8** %xpv_pv47, align 8, !tbaa !3
  %tobool48 = icmp eq i8* %33, null
  br i1 %tobool48, label %cond.end77, label %cond.true50

cond.true50:                                      ; preds = %cond.true35
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv51 = getelementptr inbounds %struct.cop* %34, i64 0, i32 10
  %35 = load %struct.gv** %cop_filegv51, align 8, !tbaa !3
  %tobool52 = icmp eq %struct.gv* %35, null
  br i1 %tobool52, label %cond.end77, label %cond.true53

cond.true53:                                      ; preds = %cond.true50
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv54 = getelementptr inbounds %struct.cop* %36, i64 0, i32 10
  %37 = load %struct.gv** %cop_filegv54, align 8, !tbaa !3
  %sv_any55 = getelementptr inbounds %struct.gv* %37, i64 0, i32 0
  %38 = load %struct.xpvgv** %sv_any55, align 8, !tbaa !3
  %xgv_gp56 = getelementptr inbounds %struct.xpvgv* %38, i64 0, i32 7
  %39 = load %struct.gp** %xgv_gp56, align 8, !tbaa !3
  %gp_sv57 = getelementptr inbounds %struct.gp* %39, i64 0, i32 0
  %40 = load %struct.sv** %gp_sv57, align 8, !tbaa !3
  %tobool58 = icmp eq %struct.sv* %40, null
  br i1 %tobool58, label %cond.end77, label %cond.true60

cond.true60:                                      ; preds = %cond.true53
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv64 = getelementptr inbounds %struct.cop* %42, i64 0, i32 10
  %43 = load %struct.gv** %cop_filegv64, align 8, !tbaa !3
  %sv_any65 = getelementptr inbounds %struct.gv* %43, i64 0, i32 0
  %44 = load %struct.xpvgv** %sv_any65, align 8, !tbaa !3
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv* %44, i64 0, i32 7
  %45 = load %struct.gp** %xgv_gp66, align 8, !tbaa !3
  %gp_sv67 = getelementptr inbounds %struct.gp* %45, i64 0, i32 0
  %46 = load %struct.sv** %gp_sv67, align 8, !tbaa !3
  %sv_any71 = getelementptr inbounds %struct.sv* %46, i64 0, i32 0
  %47 = load i8** %sv_any71, align 8, !tbaa !3
  %xpv_pv72 = bitcast i8* %47 to i8**
  %48 = load i8** %xpv_pv72, align 8, !tbaa !3
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true53, %cond.true50, %cond.true35, %cond.true28, %if.end18, %cond.true60
  %cond78 = phi i8* [ %48, %cond.true60 ], [ null, %cond.true50 ], [ null, %cond.true53 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.true28 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %if.end18 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.true35 ]
  %49 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp80 = getelementptr inbounds %struct.xpvgv* %49, i64 0, i32 7
  %50 = load %struct.gp** %xgv_gp80, align 8, !tbaa !3
  %gp_file = getelementptr inbounds %struct.gp* %50, i64 0, i32 11
  store i8* %cond78, i8** %gp_file, align 8, !tbaa !3
  %51 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp82 = getelementptr inbounds %struct.xpvgv* %51, i64 0, i32 7
  %52 = load %struct.gp** %xgv_gp82, align 8, !tbaa !3
  %gp_cvgen = getelementptr inbounds %struct.gp* %52, i64 0, i32 8
  store i32 0, i32* %gp_cvgen, align 4, !tbaa !0
  %gp_egv = getelementptr inbounds %struct.gp* %52, i64 0, i32 6
  store %struct.gv* %gv, %struct.gv** %gp_egv, align 8, !tbaa !3
  tail call void @Perl_sv_magic(%struct.sv* %3, %struct.sv* %3, i32 42, i8* null, i32 0) #6
  %53 = bitcast %struct.hv* %stash to %struct.sv*
  store %struct.sv* %53, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool85 = icmp eq %struct.hv* %stash, null
  br i1 %tobool85, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end77
  %54 = getelementptr inbounds %struct.hv* %stash, i64 0, i32 1
  %55 = load i32* %54, align 4, !tbaa !0
  %inc = add i32 %55, 1
  store i32 %inc, i32* %54, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %cond.end77, %land.rhs
  %56 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %56, i64 0, i32 10
  store %struct.hv* %stash, %struct.hv** %xgv_stash, align 8, !tbaa !3
  %conv88 = trunc i64 %len to i32
  %call89 = tail call i8* @Perl_savepvn(i8* %name, i32 %conv88) #6
  %57 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %57, i64 0, i32 8
  store i8* %call89, i8** %xgv_name, align 8, !tbaa !3
  %58 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %58, i64 0, i32 9
  store i64 %len, i64* %xgv_namelen, align 8, !tbaa !4
  %59 = or i32 %and, %multi
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %if.end99, label %if.then95

if.then95:                                        ; preds = %land.end
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %58, i64 0, i32 11
  %61 = load i8* %xgv_flags, align 1, !tbaa !1
  %or = or i8 %61, 2
  store i8 %or, i8* %xgv_flags, align 1, !tbaa !1
  br label %if.end99

if.end99:                                         ; preds = %land.end, %if.then95
  br i1 %cmp, label %if.then101, label %if.end151

if.then101:                                       ; preds = %if.end99
  %62 = load i32* %sv_flags, align 4, !tbaa !0
  %and103 = and i32 %62, 2130640895
  store i32 %and103, i32* %sv_flags, align 4, !tbaa !0
  tail call void @Perl_push_scope() #6
  %call104 = tail call i32 @Perl_start_subparse(i32 0, i32 0) #6
  %63 = load %struct.cv** @PL_compcv, align 8, !tbaa !3
  %64 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp106 = getelementptr inbounds %struct.xpvgv* %64, i64 0, i32 7
  %65 = load %struct.gp** %xgv_gp106, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %65, i64 0, i32 7
  store %struct.cv* %63, %struct.cv** %gp_cv, align 8, !tbaa !3
  tail call void @Perl_pop_scope() #6
  %66 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %inc107 = add i32 %66, 1
  store i32 %inc107, i32* @PL_sub_generation, align 4, !tbaa !0
  %67 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv* %67, i64 0, i32 7
  %68 = load %struct.gp** %xgv_gp109, align 8, !tbaa !3
  %gp_cv110 = getelementptr inbounds %struct.gp* %68, i64 0, i32 7
  %69 = load %struct.cv** %gp_cv110, align 8, !tbaa !3
  %sv_any111 = getelementptr inbounds %struct.cv* %69, i64 0, i32 0
  %70 = load %struct.xpvcv** %sv_any111, align 8, !tbaa !3
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %70, i64 0, i32 12
  store %struct.gv* %gv, %struct.gv** %xcv_gv, align 8, !tbaa !3
  %71 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv112 = getelementptr inbounds %struct.cop* %71, i64 0, i32 10
  %72 = load %struct.gv** %cop_filegv112, align 8, !tbaa !3
  %tobool113 = icmp eq %struct.gv* %72, null
  br i1 %tobool113, label %cond.end135, label %cond.true114

cond.true114:                                     ; preds = %if.then101
  %73 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv115 = getelementptr inbounds %struct.cop* %73, i64 0, i32 10
  %74 = load %struct.gv** %cop_filegv115, align 8, !tbaa !3
  %sv_any116 = getelementptr inbounds %struct.gv* %74, i64 0, i32 0
  %75 = load %struct.xpvgv** %sv_any116, align 8, !tbaa !3
  %xgv_gp117 = getelementptr inbounds %struct.xpvgv* %75, i64 0, i32 7
  %76 = load %struct.gp** %xgv_gp117, align 8, !tbaa !3
  %gp_sv118 = getelementptr inbounds %struct.gp* %76, i64 0, i32 0
  %77 = load %struct.sv** %gp_sv118, align 8, !tbaa !3
  %tobool119 = icmp eq %struct.sv* %77, null
  br i1 %tobool119, label %cond.end135, label %cond.true121

cond.true121:                                     ; preds = %cond.true114
  %78 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %79 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv125 = getelementptr inbounds %struct.cop* %79, i64 0, i32 10
  %80 = load %struct.gv** %cop_filegv125, align 8, !tbaa !3
  %sv_any126 = getelementptr inbounds %struct.gv* %80, i64 0, i32 0
  %81 = load %struct.xpvgv** %sv_any126, align 8, !tbaa !3
  %xgv_gp127 = getelementptr inbounds %struct.xpvgv* %81, i64 0, i32 7
  %82 = load %struct.gp** %xgv_gp127, align 8, !tbaa !3
  %gp_sv128 = getelementptr inbounds %struct.gp* %82, i64 0, i32 0
  %83 = load %struct.sv** %gp_sv128, align 8, !tbaa !3
  %sv_any132 = getelementptr inbounds %struct.sv* %83, i64 0, i32 0
  %84 = load i8** %sv_any132, align 8, !tbaa !3
  %xpv_pv133 = bitcast i8* %84 to i8**
  %85 = load i8** %xpv_pv133, align 8, !tbaa !3
  br label %cond.end135

cond.end135:                                      ; preds = %cond.true114, %if.then101, %cond.true121
  %cond136 = phi i8* [ %85, %cond.true121 ], [ null, %if.then101 ], [ null, %cond.true114 ]
  %86 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp138 = getelementptr inbounds %struct.xpvgv* %86, i64 0, i32 7
  %87 = load %struct.gp** %xgv_gp138, align 8, !tbaa !3
  %gp_cv139 = getelementptr inbounds %struct.gp* %87, i64 0, i32 7
  %88 = load %struct.cv** %gp_cv139, align 8, !tbaa !3
  %sv_any140 = getelementptr inbounds %struct.cv* %88, i64 0, i32 0
  %89 = load %struct.xpvcv** %sv_any140, align 8, !tbaa !3
  %xcv_file = getelementptr inbounds %struct.xpvcv* %89, i64 0, i32 13
  store i8* %cond136, i8** %xcv_file, align 8, !tbaa !3
  %90 = load %struct.hv** @PL_curstash, align 8, !tbaa !3
  %91 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp142 = getelementptr inbounds %struct.xpvgv* %91, i64 0, i32 7
  %92 = load %struct.gp** %xgv_gp142, align 8, !tbaa !3
  %gp_cv143 = getelementptr inbounds %struct.gp* %92, i64 0, i32 7
  %93 = load %struct.cv** %gp_cv143, align 8, !tbaa !3
  %sv_any144 = getelementptr inbounds %struct.cv* %93, i64 0, i32 0
  %94 = load %struct.xpvcv** %sv_any144, align 8, !tbaa !3
  %xcv_stash = getelementptr inbounds %struct.xpvcv* %94, i64 0, i32 7
  store %struct.hv* %90, %struct.hv** %xcv_stash, align 8, !tbaa !3
  %tobool145 = icmp eq i8* %cond, null
  br i1 %tobool145, label %if.end151, label %if.then146

if.then146:                                       ; preds = %cond.end135
  %95 = load %struct.xpvgv** %sv_any6.pre, align 8, !tbaa !3
  %xgv_gp148 = getelementptr inbounds %struct.xpvgv* %95, i64 0, i32 7
  %96 = load %struct.gp** %xgv_gp148, align 8, !tbaa !3
  %gp_cv149 = getelementptr inbounds %struct.gp* %96, i64 0, i32 7
  %97 = load %struct.cv** %gp_cv149, align 8, !tbaa !3
  %98 = bitcast %struct.cv* %97 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %98, i8* %cond) #6
  tail call void @Perl_safesysfree(i8* %cond) #6
  br label %if.end151

if.end151:                                        ; preds = %cond.end135, %if.then146, %if.end99
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_hv_magic(%struct.hv*, %struct.gv*, i32) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define %struct.gp* @Perl_gp_ref(%struct.gp* %gp) #0 {
entry:
  %tobool = icmp eq %struct.gp* %gp, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %gp_refcnt = getelementptr inbounds %struct.gp* %gp, i64 0, i32 1
  %0 = load i32* %gp_refcnt, align 4, !tbaa !0
  %inc = add i32 %0, 1
  store i32 %inc, i32* %gp_refcnt, align 4, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %gp, i64 0, i32 7
  %1 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.cv* %1, null
  br i1 %tobool1, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %gp_cvgen = getelementptr inbounds %struct.gp* %gp, i64 0, i32 8
  %2 = load i32* %gp_cvgen, align 4, !tbaa !0
  %tobool3 = icmp eq i32 %2, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %3 = bitcast %struct.cv* %1 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %3) #6
  store %struct.cv* null, %struct.cv** %gp_cv, align 8, !tbaa !3
  store i32 0, i32* %gp_cvgen, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.then2
  %4 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %inc8 = add i32 %4, 1
  store i32 %inc8, i32* @PL_sub_generation, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %if.then4, %if.end, %entry
  %retval.0 = phi %struct.gp* [ null, %entry ], [ %gp, %if.end ], [ %gp, %if.then4 ], [ %gp, %if.else ]
  ret %struct.gp* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare i32 @Perl_start_subparse(i32, i32) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %name, i64 %len, i32 %level) #0 {
entry:
  %tobool = icmp eq %struct.hv* %stash, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 9, i32 0) #7
  %tobool1 = icmp eq %struct.hv* %call, null
  br i1 %tobool1, label %return, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %level.addr.0 = phi i32 [ %level, %entry ], [ -1, %if.then ]
  %stash.addr.0 = phi %struct.hv* [ %stash, %entry ], [ %call, %if.then ]
  %sv_any = getelementptr inbounds %struct.hv* %stash.addr.0, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 10
  %1 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool4 = icmp eq i8* %1, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0)) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end3, %if.then5
  %level.addr.0.off = add i32 %level.addr.0, 100
  %2 = icmp ugt i32 %level.addr.0.off, 200
  br i1 %2, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %3 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name10 = getelementptr inbounds %struct.xpvhv* %3, i64 0, i32 10
  %4 = load i8** %xhv_name10, align 8, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([77 x i8]* @.str6, i64 0, i64 0), i8* %name, i8* %4) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %if.then8
  %conv = trunc i64 %len to i32
  %level.addr.0.lobit = lshr i32 %level.addr.0, 31
  %level.addr.0.lobit.not = xor i32 %level.addr.0.lobit, 1
  %call14 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash.addr.0, i8* %name, i32 %conv, i32 %level.addr.0.lobit.not) #6
  %tobool15 = icmp eq %struct.sv** %call14, null
  br i1 %tobool15, label %if.end50, label %if.else

if.else:                                          ; preds = %if.end11
  %5 = load %struct.sv** %call14, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  %7 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %8 = load i32* %7, align 4, !tbaa !0
  %and = and i32 %8, 255
  %cmp17 = icmp eq i32 %and, 13
  br i1 %cmp17, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.else
  tail call void @Perl_gv_init(%struct.gv* %6, %struct.hv* %stash.addr.0, i8* %name, i64 %len, i32 1) #7
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %sv_any21 = bitcast %struct.sv* %5 to %struct.xpvgv**
  %9 = load %struct.xpvgv** %sv_any21, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %9, i64 0, i32 7
  %10 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %10, i64 0, i32 7
  %11 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool22 = icmp eq %struct.cv* %11, null
  %gp_cvgen = getelementptr inbounds %struct.gp* %10, i64 0, i32 8
  %12 = load i32* %gp_cvgen, align 4, !tbaa !0
  br i1 %tobool22, label %if.else41, label %if.then23

if.then23:                                        ; preds = %if.end20
  %tobool26 = icmp eq i32 %12, 0
  %13 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %cmp31 = icmp eq i32 %12, %13
  %or.cond = or i1 %tobool26, %cmp31
  br i1 %or.cond, label %return, label %if.end34

if.end34:                                         ; preds = %if.then23
  %14 = bitcast %struct.cv* %11 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %14) #6
  %15 = load %struct.xpvgv** %sv_any21, align 8, !tbaa !3
  %xgv_gp36 = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp36, align 8, !tbaa !3
  %gp_cv37 = getelementptr inbounds %struct.gp* %16, i64 0, i32 7
  store %struct.cv* null, %struct.cv** %gp_cv37, align 8, !tbaa !3
  %17 = load %struct.xpvgv** %sv_any21, align 8, !tbaa !3
  %xgv_gp39 = getelementptr inbounds %struct.xpvgv* %17, i64 0, i32 7
  %18 = load %struct.gp** %xgv_gp39, align 8, !tbaa !3
  %gp_cvgen40 = getelementptr inbounds %struct.gp* %18, i64 0, i32 8
  store i32 0, i32* %gp_cvgen40, align 4, !tbaa !0
  br label %if.end50

if.else41:                                        ; preds = %if.end20
  %19 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %cmp45 = icmp eq i32 %12, %19
  br i1 %cmp45, label %return, label %if.end50

if.end50:                                         ; preds = %if.end11, %if.end34, %if.else41
  %topgv.0 = phi %struct.gv* [ %6, %if.end34 ], [ %6, %if.else41 ], [ null, %if.end11 ]
  %call51 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash.addr.0, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 3, i32 0) #6
  %tobool52 = icmp eq %struct.sv** %call51, null
  br i1 %tobool52, label %if.then63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end50
  %20 = load %struct.sv** %call51, align 8
  %tobool53 = icmp eq %struct.sv* %20, null
  %cmp55 = icmp eq %struct.sv* %20, @PL_sv_undef
  %or.cond315 = or i1 %tobool53, %cmp55
  br i1 %or.cond315, label %if.then63, label %cond.end

cond.end:                                         ; preds = %land.lhs.true
  %sv_any57 = bitcast %struct.sv* %20 to %struct.xpvgv**
  %21 = load %struct.xpvgv** %sv_any57, align 8, !tbaa !3
  %xgv_gp58 = getelementptr inbounds %struct.xpvgv* %21, i64 0, i32 7
  %22 = load %struct.gp** %xgv_gp58, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %22, i64 0, i32 4
  %23 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool59 = icmp eq %struct.av* %23, null
  br i1 %tobool59, label %if.then63, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %cond.end
  %sv_any61 = getelementptr inbounds %struct.av* %23, i64 0, i32 0
  %24 = load %struct.xpvav** %sv_any61, align 8, !tbaa !3
  %25 = getelementptr inbounds %struct.xpvav* %24, i64 0, i32 5
  %26 = load %struct.magic** %25, align 8, !tbaa !3
  %tobool62 = icmp eq %struct.magic* %26, null
  br i1 %tobool62, label %if.then63, label %if.then113

if.then63:                                        ; preds = %if.end50, %land.lhs.true, %lor.lhs.false60, %cond.end
  %cond317 = phi %struct.av* [ %23, %lor.lhs.false60 ], [ null, %cond.end ], [ null, %land.lhs.true ], [ null, %if.end50 ]
  %27 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name65 = getelementptr inbounds %struct.xpvhv* %27, i64 0, i32 10
  %28 = load i8** %xhv_name65, align 8, !tbaa !3
  %call66 = tail call i64 @strlen(i8* %28) #6
  %cmp67 = icmp ugt i64 %call66, 6
  br i1 %cmp67, label %land.lhs.true69, label %if.end111

land.lhs.true69:                                  ; preds = %if.then63
  %add.ptr.sum = add i64 %call66, -7
  %add.ptr70 = getelementptr inbounds i8* %28, i64 %add.ptr.sum
  %call71 = tail call i32 @strcmp(i8* %add.ptr70, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #6
  %tobool72 = icmp eq i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end111

if.then73:                                        ; preds = %land.lhs.true69
  %sub = add i64 %call66, 4294967289
  %conv74 = trunc i64 %sub to i32
  %call75 = tail call %struct.hv* @Perl_gv_stashpvn(i8* %28, i32 %conv74, i32 1) #7
  %call76 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %call75, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 3, i32 0) #6
  %tobool77 = icmp eq %struct.sv** %call76, null
  br i1 %tobool77, label %if.end111, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then73
  %29 = load %struct.sv** %call76, align 8
  %30 = bitcast %struct.sv* %29 to %struct.gv*
  %cmp79 = icmp eq %struct.sv* %29, @PL_sv_undef
  br i1 %cmp79, label %if.end111, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %sv_any82 = bitcast %struct.sv* %29 to %struct.xpvgv**
  %31 = load %struct.xpvgv** %sv_any82, align 8, !tbaa !3
  %xgv_gp83 = getelementptr inbounds %struct.xpvgv* %31, i64 0, i32 7
  %32 = load %struct.gp** %xgv_gp83, align 8, !tbaa !3
  %gp_av84 = getelementptr inbounds %struct.gp* %32, i64 0, i32 4
  %33 = load %struct.av** %gp_av84, align 8, !tbaa !3
  %tobool85 = icmp eq %struct.av* %33, null
  br i1 %tobool85, label %if.end163, label %if.then86

if.then86:                                        ; preds = %land.lhs.true81
  %call87 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash.addr.0, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 3, i32 1) #6
  %tobool88 = icmp eq %struct.sv** %call87, null
  br i1 %tobool88, label %if.then91, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.then86
  %34 = load %struct.sv** %call87, align 8
  %35 = bitcast %struct.sv* %34 to %struct.gv*
  %tobool90 = icmp eq %struct.sv* %34, null
  br i1 %tobool90, label %if.then91, label %if.end94

if.then91:                                        ; preds = %lor.lhs.false89, %if.then86
  %gv.0 = phi %struct.gv* [ %35, %lor.lhs.false89 ], [ %30, %if.then86 ]
  %36 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name93 = getelementptr inbounds %struct.xpvhv* %36, i64 0, i32 10
  %37 = load i8** %xhv_name93, align 8, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0), i8* %37) #6
  br label %if.end94

if.end94:                                         ; preds = %lor.lhs.false89, %if.then91
  %gv.1 = phi %struct.gv* [ %35, %lor.lhs.false89 ], [ %gv.0, %if.then91 ]
  %sv_flags95 = getelementptr inbounds %struct.gv* %gv.1, i64 0, i32 2
  %38 = load i32* %sv_flags95, align 4, !tbaa !0
  %and96 = and i32 %38, 255
  %cmp97 = icmp eq i32 %and96, 13
  br i1 %cmp97, label %land.end, label %if.then99

if.then99:                                        ; preds = %if.end94
  tail call void @Perl_gv_init(%struct.gv* %gv.1, %struct.hv* %stash.addr.0, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i64 3, i32 1) #7
  br label %land.end

land.end:                                         ; preds = %if.end94, %if.then99
  %sv_any101 = getelementptr inbounds %struct.gv* %gv.1, i64 0, i32 0
  %39 = load %struct.xpvgv** %sv_any101, align 8, !tbaa !3
  %xgv_gp102 = getelementptr inbounds %struct.xpvgv* %39, i64 0, i32 7
  %40 = load %struct.gp** %xgv_gp102, align 8, !tbaa !3
  %gp_av103 = getelementptr inbounds %struct.gp* %40, i64 0, i32 4
  %41 = load %struct.av** %gp_av103, align 8, !tbaa !3
  %42 = bitcast %struct.av* %41 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %42) #6
  %43 = bitcast %struct.av* %33 to %struct.sv*
  store %struct.sv* %43, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %44 = getelementptr inbounds %struct.av* %33, i64 0, i32 1
  %45 = load i32* %44, align 4, !tbaa !0
  %inc = add i32 %45, 1
  store i32 %inc, i32* %44, align 4, !tbaa !0
  %46 = load %struct.xpvgv** %sv_any101, align 8, !tbaa !3
  %xgv_gp107 = getelementptr inbounds %struct.xpvgv* %46, i64 0, i32 7
  %47 = load %struct.gp** %xgv_gp107, align 8, !tbaa !3
  %gp_av108 = getelementptr inbounds %struct.gp* %47, i64 0, i32 4
  store %struct.av* %33, %struct.av** %gp_av108, align 8, !tbaa !3
  br label %if.end111

if.end111:                                        ; preds = %land.lhs.true78, %if.then73, %land.lhs.true69, %if.then63, %land.end
  %av.0 = phi %struct.av* [ %cond317, %land.lhs.true69 ], [ %33, %land.end ], [ %cond317, %land.lhs.true78 ], [ %cond317, %if.then73 ], [ %cond317, %if.then63 ]
  %tobool112 = icmp eq %struct.av* %av.0, null
  br i1 %tobool112, label %if.end163, label %if.end111.if.then113_crit_edge

if.end111.if.then113_crit_edge:                   ; preds = %if.end111
  %sv_any114.phi.trans.insert = getelementptr inbounds %struct.av* %av.0, i64 0, i32 0
  %.pre328 = load %struct.xpvav** %sv_any114.phi.trans.insert, align 8, !tbaa !3
  br label %if.then113

if.then113:                                       ; preds = %if.end111.if.then113_crit_edge, %lor.lhs.false60
  %48 = phi %struct.xpvav* [ %.pre328, %if.end111.if.then113_crit_edge ], [ %24, %lor.lhs.false60 ]
  %xav_fill = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 1
  %49 = load i64* %xav_fill, align 8, !tbaa !4
  %add = add nsw i64 %49, 1
  %conv116 = trunc i64 %add to i32
  %tobool117323 = icmp eq i32 %conv116, 0
  br i1 %tobool117323, label %if.end163, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then113
  %xav_array = getelementptr inbounds %struct.xpvav* %48, i64 0, i32 0
  %50 = load i8** %xav_array, align 8, !tbaa !3
  %51 = bitcast i8* %50 to %struct.sv**
  %52 = ashr i32 %level.addr.0, 31
  %53 = or i32 %52, 1
  %cond158 = add i32 %53, %level.addr.0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %dec325.in = phi i32 [ %conv116, %while.body.lr.ph ], [ %dec325, %while.cond.backedge ]
  %svp.0324 = phi %struct.sv** [ %51, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge ]
  %dec325 = add nsw i32 %dec325.in, -1
  %incdec.ptr = getelementptr inbounds %struct.sv** %svp.0324, i64 1
  %54 = load %struct.sv** %svp.0324, align 8, !tbaa !3
  %call119 = tail call %struct.hv* @Perl_gv_stashsv(%struct.sv* %54, i32 0) #7
  %tobool120 = icmp eq %struct.hv* %call119, null
  br i1 %tobool120, label %if.then121, label %if.end150

if.then121:                                       ; preds = %while.body
  %55 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %55, i64 0, i32 14
  %56 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp122 = icmp eq %struct.sv* %56, null
  br i1 %cmp122, label %lor.lhs.false138, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %if.then121
  %57 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings125 = getelementptr inbounds %struct.cop* %57, i64 0, i32 14
  %58 = load %struct.sv** %cop_warnings125, align 8, !tbaa !3
  %cmp126 = icmp eq %struct.sv* %58, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp126, label %lor.lhs.false138, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %land.lhs.true124
  %59 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings129 = getelementptr inbounds %struct.cop* %59, i64 0, i32 14
  %60 = load %struct.sv** %cop_warnings129, align 8, !tbaa !3
  %cmp130 = icmp eq %struct.sv* %60, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp130, label %if.then146, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %land.lhs.true128
  %61 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings133 = getelementptr inbounds %struct.cop* %61, i64 0, i32 14
  %62 = load %struct.sv** %cop_warnings133, align 8, !tbaa !3
  %sv_any134 = getelementptr inbounds %struct.sv* %62, i64 0, i32 0
  %63 = load i8** %sv_any134, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %63 to i8**
  %64 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %64, i64 3
  %65 = load i8* %arrayidx, align 1, !tbaa !1
  %and136 = and i8 %65, 1
  %tobool137 = icmp eq i8 %and136, 0
  br i1 %tobool137, label %lor.lhs.false138, label %if.then146

lor.lhs.false138:                                 ; preds = %lor.lhs.false132, %land.lhs.true124, %if.then121
  %66 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings139 = getelementptr inbounds %struct.cop* %66, i64 0, i32 14
  %67 = load %struct.sv** %cop_warnings139, align 8, !tbaa !3
  %cmp140 = icmp eq %struct.sv* %67, null
  br i1 %cmp140, label %land.lhs.true142, label %while.cond.backedge

land.lhs.true142:                                 ; preds = %lor.lhs.false138
  %68 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and144 = and i8 %68, 1
  %tobool145 = icmp eq i8 %and144, 0
  br i1 %tobool145, label %while.cond.backedge, label %if.then146

if.then146:                                       ; preds = %lor.lhs.false132, %land.lhs.true142, %land.lhs.true128
  %69 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name148 = getelementptr inbounds %struct.xpvhv* %69, i64 0, i32 10
  %70 = load i8** %xhv_name148, align 8, !tbaa !3
  tail call void (i32, i8*, ...)* @Perl_warner(i32 12, i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), %struct.sv* %54, i8* %70) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then146, %lor.lhs.false138, %land.lhs.true142, %if.end150
  %tobool117 = icmp eq i32 %dec325, 0
  br i1 %tobool117, label %if.end163, label %while.body

if.end150:                                        ; preds = %while.body
  %call159 = tail call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %call119, i8* %name, i64 %len, i32 %cond158) #7
  %tobool160 = icmp eq %struct.gv* %call159, null
  br i1 %tobool160, label %while.cond.backedge, label %gotcha

if.end163:                                        ; preds = %if.then113, %while.cond.backedge, %land.lhs.true81, %if.end111
  switch i32 %level.addr.0, label %return [
    i32 -1, label %if.then169
    i32 0, label %if.then169
  ]

if.then169:                                       ; preds = %if.end163, %if.end163
  %call170 = tail call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 9, i32 0) #7
  %tobool171 = icmp eq %struct.hv* %call170, null
  br i1 %tobool171, label %return, label %if.then172

if.then172:                                       ; preds = %if.then169
  %71 = ashr i32 %level.addr.0, 31
  %72 = or i32 %71, 1
  %cond180 = add i32 %72, %level.addr.0
  %call181 = tail call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %call170, i8* %name, i64 %len, i32 %cond180) #7
  %tobool182 = icmp eq %struct.gv* %call181, null
  br i1 %tobool182, label %if.else225, label %gotcha

gotcha:                                           ; preds = %if.end150, %if.then172
  %gv.2 = phi %struct.gv* [ %call181, %if.then172 ], [ %call159, %if.end150 ]
  %tobool184 = icmp eq %struct.gv* %topgv.0, null
  br i1 %tobool184, label %return, label %land.lhs.true185

land.lhs.true185:                                 ; preds = %gotcha
  %sv_any186 = getelementptr inbounds %struct.gv* %topgv.0, i64 0, i32 0
  %73 = load %struct.xpvgv** %sv_any186, align 8, !tbaa !3
  %xgv_gp187 = getelementptr inbounds %struct.xpvgv* %73, i64 0, i32 7
  %74 = load %struct.gp** %xgv_gp187, align 8, !tbaa !3
  %gp_refcnt = getelementptr inbounds %struct.gp* %74, i64 0, i32 1
  %75 = load i32* %gp_refcnt, align 4, !tbaa !0
  %cmp188 = icmp eq i32 %75, 1
  br i1 %cmp188, label %land.lhs.true190, label %return

land.lhs.true190:                                 ; preds = %land.lhs.true185
  %sv_any191 = getelementptr inbounds %struct.gv* %gv.2, i64 0, i32 0
  %76 = load %struct.xpvgv** %sv_any191, align 8, !tbaa !3
  %xgv_gp192 = getelementptr inbounds %struct.xpvgv* %76, i64 0, i32 7
  %77 = load %struct.gp** %xgv_gp192, align 8, !tbaa !3
  %gp_cv193 = getelementptr inbounds %struct.gp* %77, i64 0, i32 7
  %78 = load %struct.cv** %gp_cv193, align 8, !tbaa !3
  %tobool194 = icmp eq %struct.cv* %78, null
  br i1 %tobool194, label %return, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %land.lhs.true190
  %sv_any196 = getelementptr inbounds %struct.cv* %78, i64 0, i32 0
  %79 = load %struct.xpvcv** %sv_any196, align 8, !tbaa !3
  %xcv_root = getelementptr inbounds %struct.xpvcv* %79, i64 0, i32 9
  %80 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool197 = icmp eq %struct.op* %80, null
  br i1 %tobool197, label %lor.lhs.false198, label %if.then201

lor.lhs.false198:                                 ; preds = %land.lhs.true195
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %79, i64 0, i32 10
  %81 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !3
  %tobool200 = icmp eq void (%struct.cv*)* %81, null
  br i1 %tobool200, label %return, label %if.then201

if.then201:                                       ; preds = %lor.lhs.false198, %land.lhs.true195
  %gp_cv204 = getelementptr inbounds %struct.gp* %74, i64 0, i32 7
  %82 = load %struct.cv** %gp_cv204, align 8, !tbaa !3
  %tobool205 = icmp eq %struct.cv* %82, null
  br i1 %tobool205, label %if.end207, label %if.then206

if.then206:                                       ; preds = %if.then201
  %83 = bitcast %struct.cv* %82 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %83) #6
  %.pre = load %struct.xpvgv** %sv_any191, align 8, !tbaa !3
  %xgv_gp209.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre326 = load %struct.gp** %xgv_gp209.phi.trans.insert, align 8, !tbaa !3
  %gp_cv210.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre326, i64 0, i32 7
  %.pre327 = load %struct.cv** %gp_cv210.phi.trans.insert, align 8, !tbaa !3
  br label %if.end207

if.end207:                                        ; preds = %if.then201, %if.then206
  %84 = phi %struct.cv* [ %78, %if.then201 ], [ %.pre327, %if.then206 ]
  %85 = bitcast %struct.cv* %84 to %struct.sv*
  store %struct.sv* %85, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool211 = icmp eq %struct.cv* %84, null
  br i1 %tobool211, label %land.end216, label %land.rhs212

land.rhs212:                                      ; preds = %if.end207
  %86 = getelementptr inbounds %struct.cv* %84, i64 0, i32 1
  %87 = load i32* %86, align 4, !tbaa !0
  %inc214 = add i32 %87, 1
  store i32 %inc214, i32* %86, align 4, !tbaa !0
  br label %land.end216

land.end216:                                      ; preds = %if.end207, %land.rhs212
  %88 = load %struct.xpvgv** %sv_any186, align 8, !tbaa !3
  %xgv_gp219 = getelementptr inbounds %struct.xpvgv* %88, i64 0, i32 7
  %89 = load %struct.gp** %xgv_gp219, align 8, !tbaa !3
  %gp_cv220 = getelementptr inbounds %struct.gp* %89, i64 0, i32 7
  store %struct.cv* %84, %struct.cv** %gp_cv220, align 8, !tbaa !3
  %90 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %91 = load %struct.xpvgv** %sv_any186, align 8, !tbaa !3
  %xgv_gp222 = getelementptr inbounds %struct.xpvgv* %91, i64 0, i32 7
  %92 = load %struct.gp** %xgv_gp222, align 8, !tbaa !3
  %gp_cvgen223 = getelementptr inbounds %struct.gp* %92, i64 0, i32 8
  store i32 %90, i32* %gp_cvgen223, align 4, !tbaa !0
  br label %return

if.else225:                                       ; preds = %if.then172
  %tobool226 = icmp eq %struct.gv* %topgv.0, null
  br i1 %tobool226, label %return, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %if.else225
  %sv_any228 = getelementptr inbounds %struct.gv* %topgv.0, i64 0, i32 0
  %93 = load %struct.xpvgv** %sv_any228, align 8, !tbaa !3
  %xgv_gp229 = getelementptr inbounds %struct.xpvgv* %93, i64 0, i32 7
  %94 = load %struct.gp** %xgv_gp229, align 8, !tbaa !3
  %gp_refcnt230 = getelementptr inbounds %struct.gp* %94, i64 0, i32 1
  %95 = load i32* %gp_refcnt230, align 4, !tbaa !0
  %cmp231 = icmp eq i32 %95, 1
  br i1 %cmp231, label %if.then233, label %return

if.then233:                                       ; preds = %land.lhs.true227
  %96 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %gp_cvgen236 = getelementptr inbounds %struct.gp* %94, i64 0, i32 8
  store i32 %96, i32* %gp_cvgen236, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then233, %land.lhs.true227, %if.then169, %if.else225, %if.end163, %land.lhs.true185, %land.end216, %gotcha, %land.lhs.true190, %lor.lhs.false198, %if.else41, %if.then23, %if.then
  %retval.0 = phi %struct.gv* [ null, %if.then ], [ %6, %if.then23 ], [ null, %if.else41 ], [ %gv.2, %lor.lhs.false198 ], [ %gv.2, %land.lhs.true190 ], [ %gv.2, %gotcha ], [ %gv.2, %land.end216 ], [ %gv.2, %land.lhs.true185 ], [ null, %if.end163 ], [ null, %if.else225 ], [ null, %if.then169 ], [ null, %land.lhs.true227 ], [ null, %if.then233 ]
  ret %struct.gv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_gv_stashpvn(i8* %name, i32 %namelen, i32 %create) #0 {
entry:
  %smallbuf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %smallbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %add = add i32 %namelen, 3
  %cmp = icmp ult i32 %add, 256
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %conv = zext i32 %add to i64
  %call = call i8* @Perl_safesysmalloc(i64 %conv) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %tmpbuf.0 = phi i8* [ %call, %if.else ], [ %0, %entry ]
  %conv4 = zext i32 %namelen to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmpbuf.0, i8* %name, i64 %conv4, i32 1, i1 false)
  %inc = add i32 %namelen, 1
  %arrayidx = getelementptr inbounds i8* %tmpbuf.0, i64 %conv4
  store i8 58, i8* %arrayidx, align 1, !tbaa !1
  %inc6 = add i32 %namelen, 2
  %idxprom7 = zext i32 %inc to i64
  %arrayidx8 = getelementptr inbounds i8* %tmpbuf.0, i64 %idxprom7
  store i8 58, i8* %arrayidx8, align 1, !tbaa !1
  %idxprom9 = zext i32 %inc6 to i64
  %arrayidx10 = getelementptr inbounds i8* %tmpbuf.0, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1, !tbaa !1
  %call11 = call %struct.gv* @Perl_gv_fetchpv(i8* %tmpbuf.0, i32 %create, i32 11) #7
  %cmp13 = icmp eq i8* %tmpbuf.0, %0
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @Perl_safesysfree(i8* %tmpbuf.0) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then15
  %tobool = icmp eq %struct.gv* %call11, null
  br i1 %tobool, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end16
  %sv_any = getelementptr inbounds %struct.gv* %call11, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 7
  %2 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %2, i64 0, i32 5
  %3 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool19 = icmp eq %struct.hv* %3, null
  br i1 %tobool19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end18
  %call21 = call %struct.hv* @Perl_newHV() #6
  %4 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp23 = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 7
  %5 = load %struct.gp** %xgv_gp23, align 8, !tbaa !3
  %gp_hv24 = getelementptr inbounds %struct.gp* %5, i64 0, i32 5
  store %struct.hv* %call21, %struct.hv** %gp_hv24, align 8, !tbaa !3
  %.pre = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp27.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre53 = load %struct.gp** %xgv_gp27.phi.trans.insert, align 8, !tbaa !3
  %gp_hv28.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre53, i64 0, i32 5
  %.pre54 = load %struct.hv** %gp_hv28.phi.trans.insert, align 8, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.end18, %if.then20
  %6 = phi %struct.hv* [ %3, %if.end18 ], [ %.pre54, %if.then20 ]
  %sv_any29 = getelementptr inbounds %struct.hv* %6, i64 0, i32 0
  %7 = load %struct.xpvhv** %sv_any29, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %7, i64 0, i32 10
  %8 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool30 = icmp eq i8* %8, null
  br i1 %tobool30, label %if.then31, label %cleanup

if.then31:                                        ; preds = %if.end25
  %call32 = call i8* @Perl_savepv(i8* %name) #6
  %9 = load %struct.xpvhv** %sv_any29, align 8, !tbaa !3
  %xhv_name34 = getelementptr inbounds %struct.xpvhv* %9, i64 0, i32 10
  store i8* %call32, i8** %xhv_name34, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end25, %if.end16
  %retval.0 = phi %struct.hv* [ null, %if.end16 ], [ %6, %if.end25 ], [ %6, %if.then31 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #2
  ret %struct.hv* %retval.0
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_gv_stashsv(%struct.sv* %sv, i32 %create) #0 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i64 [ %3, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %5 to i32
  %call2 = call %struct.hv* @Perl_gv_stashpvn(i8* %cond, i32 %conv, i32 %create) #7
  ret %struct.hv* %call2
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_fetchmeth_autoload(%struct.hv* %stash, i8* %name, i64 %len, i32 %level) #0 {
entry:
  %autoload = alloca [9 x i8], align 1
  %call = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %name, i64 %len, i32 %level) #7
  %tobool = icmp eq %struct.gv* %call, null
  br i1 %tobool, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [9 x i8]* %autoload, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([9 x i8]* @Perl_gv_autoload4.autoload, i64 0, i64 0), i64 9, i32 1, i1 false)
  %tobool1 = icmp eq %struct.hv* %stash, null
  br i1 %tobool1, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %cmp = icmp eq i64 %len, 8
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @strncmp(i8* %name, i8* %0, i64 8) #6
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %return, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call8 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %0, i64 8, i32 0) #7
  %tobool9 = icmp eq %struct.gv* %call8, null
  br i1 %tobool9, label %return, label %if.end11

if.end11:                                         ; preds = %if.end6
  %sv_any = getelementptr inbounds %struct.gv* %call8, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 7
  %2 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %2, i64 0, i32 7
  %3 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %sv_any12 = getelementptr inbounds %struct.cv* %3, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any12, align 8, !tbaa !3
  %xcv_root = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 9
  %5 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool13 = icmp eq %struct.op* %5, null
  br i1 %tobool13, label %lor.lhs.false, label %if.end17

lor.lhs.false:                                    ; preds = %if.end11
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 10
  %6 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !3
  %tobool15 = icmp eq void (%struct.cv*)* %6, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false, %if.end11
  %cmp18 = icmp slt i32 %level, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %call20 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %name, i64 %len, i32 0) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %conv = trunc i64 %len to i32
  %level.lobit = lshr i32 %level, 31
  %level.lobit.not = xor i32 %level.lobit, 1
  %call24 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash, i8* %name, i32 %conv, i32 %level.lobit.not) #6
  %tobool25 = icmp eq %struct.sv** %call24, null
  br i1 %tobool25, label %return, label %if.end27

if.end27:                                         ; preds = %if.end21
  %7 = load %struct.sv** %call24, align 8
  %8 = bitcast %struct.sv* %7 to %struct.gv*
  br label %return

return:                                           ; preds = %entry, %if.end21, %lor.lhs.false, %if.end6, %land.lhs.true, %if.then, %if.end27
  %retval.0 = phi %struct.gv* [ %8, %if.end27 ], [ null, %if.then ], [ null, %land.lhs.true ], [ null, %if.end6 ], [ null, %lor.lhs.false ], [ null, %if.end21 ], [ %call, %entry ]
  ret %struct.gv* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %stash, i8* %name) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %stash, i8* %name, i32 1) #7
  ret %struct.gv* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %stash, i8* %name, i32 %autoload) #0 {
entry:
  %tobool = icmp eq %struct.hv* %stash, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.hv* %stash, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 255
  %cmp = icmp ult i32 %and, 11
  %.stash = select i1 %cmp, %struct.hv* null, %struct.hv* %stash
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %stash.addr.0 = phi %struct.hv* [ null, %entry ], [ %.stash, %land.lhs.true ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %nsplit.0 = phi i8* [ null, %if.end ], [ %nsplit.1, %for.inc ]
  %nend.0 = phi i8* [ %name, %if.end ], [ %incdec.ptr15, %for.inc ]
  %1 = load i8* %nend.0, align 1, !tbaa !1
  switch i8 %1, label %if.else [
    i8 0, label %for.end
    i8 39, label %for.inc
  ]

if.else:                                          ; preds = %for.cond
  %cmp6 = icmp eq i8 %1, 58
  br i1 %cmp6, label %land.lhs.true8, label %for.inc

land.lhs.true8:                                   ; preds = %if.else
  %add.ptr = getelementptr inbounds i8* %nend.0, i64 1
  %2 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp10 = icmp eq i8 %2, 58
  %incdec.ptr.nsplit.0 = select i1 %cmp10, i8* %add.ptr, i8* %nsplit.0
  %incdec.ptr.nend.0 = select i1 %cmp10, i8* %add.ptr, i8* %nend.0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true8, %for.cond, %if.else
  %nsplit.1 = phi i8* [ %nsplit.0, %if.else ], [ %nend.0, %for.cond ], [ %incdec.ptr.nsplit.0, %land.lhs.true8 ]
  %nend.1 = phi i8* [ %nend.0, %if.else ], [ %nend.0, %for.cond ], [ %incdec.ptr.nend.0, %land.lhs.true8 ]
  %incdec.ptr15 = getelementptr inbounds i8* %nend.1, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool16 = icmp eq i8* %nsplit.0, null
  br i1 %tobool16, label %if.end70, label %if.then17

if.then17:                                        ; preds = %for.end
  %add.ptr18 = getelementptr inbounds i8* %nsplit.0, i64 1
  %3 = load i8* %nsplit.0, align 1, !tbaa !1
  %cmp20 = icmp eq i8 %3, 58
  %incdec.ptr23 = getelementptr inbounds i8* %nsplit.0, i64 -1
  %incdec.ptr23.nsplit.0 = select i1 %cmp20, i8* %incdec.ptr23, i8* %nsplit.0
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr23.nsplit.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %name to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp25 = icmp eq i64 %sub.ptr.sub, 5
  br i1 %cmp25, label %land.lhs.true27, label %if.else38

land.lhs.true27:                                  ; preds = %if.then17
  %call = tail call i32 @strncmp(i8* %name, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i64 5) #6
  %tobool28 = icmp eq i32 %call, 0
  br i1 %tobool28, label %if.then29, label %if.else38

if.then29:                                        ; preds = %land.lhs.true27
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_stash = getelementptr inbounds %struct.cop* %4, i64 0, i32 9
  %5 = load %struct.hv** %cop_stash, align 8, !tbaa !3
  %tobool30 = icmp eq %struct.hv* %5, null
  br i1 %tobool30, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then29
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_stash31 = getelementptr inbounds %struct.cop* %6, i64 0, i32 9
  %7 = load %struct.hv** %cop_stash31, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.hv* %7, i64 0, i32 0
  %8 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %8, i64 0, i32 10
  %9 = load i8** %xhv_name, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then29, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ null, %if.then29 ]
  %call32 = tail call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* %cond) #6
  %call33 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call32) #6
  %sv_any34 = getelementptr inbounds %struct.sv* %call33, i64 0, i32 0
  %10 = load i8** %sv_any34, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %10, i64 8
  %12 = bitcast i8* %xpv_cur to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  %conv36 = trunc i64 %13 to i32
  %call37 = tail call %struct.hv* @Perl_gv_stashpvn(i8* %11, i32 %conv36, i32 1) #7
  br label %if.end70

if.else38:                                        ; preds = %land.lhs.true27, %if.then17
  %conv42 = trunc i64 %sub.ptr.sub to i32
  %call43 = tail call %struct.hv* @Perl_gv_stashpvn(i8* %name, i32 %conv42, i32 0) #7
  %tobool44 = icmp eq %struct.hv* %call43, null
  %cmp49 = icmp sgt i64 %sub.ptr.sub, 6
  %or.cond = and i1 %tobool44, %cmp49
  br i1 %or.cond, label %land.lhs.true51, label %if.end70

land.lhs.true51:                                  ; preds = %if.else38
  %add.ptr52 = getelementptr inbounds i8* %incdec.ptr23.nsplit.0, i64 -7
  %call53 = tail call i32 @strncmp(i8* %add.ptr52, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i64 7) #6
  %tobool54 = icmp eq i32 %call53, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.end70

land.lhs.true55:                                  ; preds = %land.lhs.true51
  %sub = add nsw i64 %sub.ptr.sub, 4294967289
  %conv59 = trunc i64 %sub to i32
  %call60 = tail call %struct.hv* @Perl_gv_stashpvn(i8* %name, i32 %conv59, i32 0) #7
  %tobool61 = icmp eq %struct.hv* %call60, null
  br i1 %tobool61, label %if.end70, label %if.then62

if.then62:                                        ; preds = %land.lhs.true55
  %call67 = tail call %struct.hv* @Perl_gv_stashpvn(i8* %name, i32 %conv42, i32 1) #7
  br label %if.end70

if.end70:                                         ; preds = %cond.end, %if.then62, %if.else38, %land.lhs.true51, %land.lhs.true55, %for.end
  %ostash.0 = phi %struct.hv* [ %stash, %for.end ], [ %call43, %if.else38 ], [ null, %land.lhs.true51 ], [ %call67, %if.then62 ], [ null, %land.lhs.true55 ], [ %call37, %cond.end ]
  %name.addr.0 = phi i8* [ %name, %for.end ], [ %add.ptr18, %if.else38 ], [ %add.ptr18, %land.lhs.true51 ], [ %add.ptr18, %if.then62 ], [ %add.ptr18, %land.lhs.true55 ], [ %add.ptr18, %cond.end ]
  %stash.addr.2 = phi %struct.hv* [ %stash.addr.0, %for.end ], [ %call43, %if.else38 ], [ null, %land.lhs.true51 ], [ %call67, %if.then62 ], [ null, %land.lhs.true55 ], [ %call37, %cond.end ]
  %sub.ptr.lhs.cast71 = ptrtoint i8* %nend.0 to i64
  %sub.ptr.rhs.cast72 = ptrtoint i8* %name.addr.0 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %call74 = tail call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash.addr.2, i8* %name.addr.0, i64 %sub.ptr.sub73, i32 0) #7
  %tobool75 = icmp eq %struct.gv* %call74, null
  br i1 %tobool75, label %if.then76, label %if.else91

if.then76:                                        ; preds = %if.end70
  %call77 = tail call i32 @strcmp(i8* %name.addr.0, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) #6
  %tobool78 = icmp eq i32 %call77, 0
  br i1 %tobool78, label %if.end125, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then76
  %call79 = tail call i32 @strcmp(i8* %name.addr.0, i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0)) #6
  %tobool80 = icmp eq i32 %call79, 0
  br i1 %tobool80, label %if.end125, label %if.else82

if.else82:                                        ; preds = %lor.lhs.false
  %tobool83 = icmp eq i32 %autoload, 0
  br i1 %tobool83, label %if.end125, label %if.then84

if.then84:                                        ; preds = %if.else82
  %call88 = tail call %struct.gv* @Perl_gv_autoload4(%struct.hv* %ostash.0, i8* %name.addr.0, i64 %sub.ptr.sub73, i32 1) #7
  br label %if.end125

if.else91:                                        ; preds = %if.end70
  %tobool92 = icmp eq i32 %autoload, 0
  br i1 %tobool92, label %if.end125, label %if.then93

if.then93:                                        ; preds = %if.else91
  %sv_any94 = getelementptr inbounds %struct.gv* %call74, i64 0, i32 0
  %14 = load %struct.xpvgv** %sv_any94, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %14, i64 0, i32 7
  %15 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %15, i64 0, i32 7
  %16 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %sv_any95 = getelementptr inbounds %struct.cv* %16, i64 0, i32 0
  %17 = load %struct.xpvcv** %sv_any95, align 8, !tbaa !3
  %xcv_root = getelementptr inbounds %struct.xpvcv* %17, i64 0, i32 9
  %18 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool96 = icmp eq %struct.op* %18, null
  br i1 %tobool96, label %land.lhs.true97, label %if.end125

land.lhs.true97:                                  ; preds = %if.then93
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %17, i64 0, i32 10
  %19 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !3
  %tobool99 = icmp eq void (%struct.cv*)* %19, null
  br i1 %tobool99, label %if.then100, label %if.end125

if.then100:                                       ; preds = %land.lhs.true97
  %xcv_flags = getelementptr inbounds %struct.xpvcv* %17, i64 0, i32 17
  %20 = load i16* %xcv_flags, align 2, !tbaa !5
  %and103 = and i16 %20, 4
  %tobool104 = icmp eq i16 %and103, 0
  br i1 %tobool104, label %if.else106, label %if.end115

if.else106:                                       ; preds = %if.then100
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %17, i64 0, i32 12
  %21 = load %struct.gv** %xcv_gv, align 8, !tbaa !3
  %sv_any108 = getelementptr inbounds %struct.gv* %21, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any108, align 8, !tbaa !3
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp109, align 8, !tbaa !3
  %gp_cv110 = getelementptr inbounds %struct.gp* %23, i64 0, i32 7
  %24 = load %struct.cv** %gp_cv110, align 8, !tbaa !3
  %cmp111 = icmp eq %struct.cv* %24, %16
  %.call74 = select i1 %cmp111, %struct.gv* %21, %struct.gv* %call74
  %sv_any116.phi.trans.insert = getelementptr inbounds %struct.gv* %.call74, i64 0, i32 0
  %.pre = load %struct.xpvgv** %sv_any116.phi.trans.insert, align 8, !tbaa !3
  br label %if.end115

if.end115:                                        ; preds = %if.else106, %if.then100
  %25 = phi %struct.xpvgv* [ %14, %if.then100 ], [ %.pre, %if.else106 ]
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 10
  %26 = load %struct.hv** %xgv_stash, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 8
  %27 = load i8** %xgv_name, align 8, !tbaa !3
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %25, i64 0, i32 9
  %28 = load i64* %xgv_namelen, align 8, !tbaa !4
  %call119 = tail call %struct.gv* @Perl_gv_autoload4(%struct.hv* %26, i8* %27, i64 %28, i32 1) #7
  %tobool120 = icmp eq %struct.gv* %call119, null
  %call74.call119 = select i1 %tobool120, %struct.gv* %call74, %struct.gv* %call119
  ret %struct.gv* %call74.call119

if.end125:                                        ; preds = %if.then76, %lor.lhs.false, %land.lhs.true97, %if.then93, %if.else91, %if.else82, %if.then84
  %gv.0 = phi %struct.gv* [ %call74, %if.then93 ], [ %call74, %land.lhs.true97 ], [ %call74, %if.else91 ], [ %call88, %if.then84 ], [ null, %if.else82 ], [ bitcast (%struct.sv* @PL_sv_yes to %struct.gv*), %lor.lhs.false ], [ bitcast (%struct.sv* @PL_sv_yes to %struct.gv*), %if.then76 ]
  ret %struct.gv* %gv.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_autoload4(%struct.hv* %stash, i8* %name, i64 %len, i32 %method) #0 {
entry:
  %autoload = alloca [9 x i8], align 1
  %0 = getelementptr inbounds [9 x i8]* %autoload, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([9 x i8]* @Perl_gv_autoload4.autoload, i64 0, i64 0), i64 9, i32 1, i1 false)
  %cmp = icmp eq i64 %len, 8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @strncmp(i8* %name, i8* %0, i64 8) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool1 = icmp eq %struct.hv* %stash, null
  br i1 %tobool1, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.hv* %stash, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp3 = icmp ult i32 %and, 11
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %and6 = and i32 %1, 262144
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then4
  %sv_any = bitcast %struct.hv* %stash to i8**
  %2 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %2 to i8**
  %3 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %if.end11

cond.false:                                       ; preds = %if.then4
  %4 = bitcast %struct.hv* %stash to %struct.sv*
  %call8 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %4) #6
  br label %if.end11

if.else:                                          ; preds = %if.then2
  %sv_any9 = getelementptr inbounds %struct.hv* %stash, i64 0, i32 0
  %5 = load %struct.xpvhv** %sv_any9, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %5, i64 0, i32 10
  %6 = load i8** %xhv_name, align 8, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %cond.true, %cond.false, %if.end, %if.else
  %stash.addr.0 = phi %struct.hv* [ %stash, %if.else ], [ null, %if.end ], [ null, %cond.false ], [ null, %cond.true ]
  %packname.0 = phi i8* [ %6, %if.else ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %if.end ], [ %call8, %cond.false ], [ %3, %cond.true ]
  %call13 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash.addr.0, i8* %0, i64 8, i32 0) #7
  %tobool14 = icmp eq %struct.gv* %call13, null
  br i1 %tobool14, label %return, label %if.end16

if.end16:                                         ; preds = %if.end11
  %sv_any17 = getelementptr inbounds %struct.gv* %call13, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any17, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 7
  %8 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %8, i64 0, i32 7
  %9 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %sv_any18 = getelementptr inbounds %struct.cv* %9, i64 0, i32 0
  %10 = load %struct.xpvcv** %sv_any18, align 8, !tbaa !3
  %xcv_root = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 9
  %11 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool19 = icmp eq %struct.op* %11, null
  br i1 %tobool19, label %lor.lhs.false, label %if.end23

lor.lhs.false:                                    ; preds = %if.end16
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 10
  %12 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !3
  %tobool21 = icmp eq void (%struct.cv*)* %12, null
  br i1 %tobool21, label %return, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false, %if.end16
  %13 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %13, i64 0, i32 14
  %14 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp24 = icmp eq %struct.sv* %14, null
  br i1 %cmp24, label %lor.lhs.false45, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end23
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings26 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings26, align 8, !tbaa !3
  %cmp27 = icmp eq %struct.sv* %16, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp27, label %lor.lhs.false45, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings29 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings29, align 8, !tbaa !3
  %cmp30 = icmp eq %struct.sv* %18, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp30, label %land.lhs.true53, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true28
  %19 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings32 = getelementptr inbounds %struct.cop* %19, i64 0, i32 14
  %20 = load %struct.sv** %cop_warnings32, align 8, !tbaa !3
  %sv_any33 = getelementptr inbounds %struct.sv* %20, i64 0, i32 0
  %21 = load i8** %sv_any33, align 8, !tbaa !3
  %xpv_pv34 = bitcast i8* %21 to i8**
  %22 = load i8** %xpv_pv34, align 8, !tbaa !3
  %23 = load i8* %22, align 1, !tbaa !1
  %and35 = and i8 %23, 16
  %tobool36 = icmp eq i8 %and35, 0
  br i1 %tobool36, label %lor.lhs.false37, label %land.lhs.true53

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings38 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings38, align 8, !tbaa !3
  %sv_any39 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %26 = load i8** %sv_any39, align 8, !tbaa !3
  %xpv_pv40 = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv40, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds i8* %27, i64 7
  %28 = load i8* %arrayidx41, align 1, !tbaa !1
  %and43 = and i8 %28, 1
  %tobool44 = icmp eq i8 %and43, 0
  br i1 %tobool44, label %lor.lhs.false45, label %land.lhs.true53

lor.lhs.false45:                                  ; preds = %lor.lhs.false37, %land.lhs.true25, %if.end23
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings46 = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings46, align 8, !tbaa !3
  %cmp47 = icmp eq %struct.sv* %30, null
  br i1 %cmp47, label %land.lhs.true49, label %if.end65

land.lhs.true49:                                  ; preds = %lor.lhs.false45
  %31 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and51 = and i8 %31, 1
  %tobool52 = icmp ne i8 %and51, 0
  %tobool54 = icmp eq i32 %method, 0
  %or.cond = and i1 %tobool52, %tobool54
  br i1 %or.cond, label %land.lhs.true55, label %if.end65

land.lhs.true53:                                  ; preds = %lor.lhs.false37, %lor.lhs.false31, %land.lhs.true28
  %tobool54.old = icmp eq i32 %method, 0
  br i1 %tobool54.old, label %land.lhs.true55, label %if.end65

land.lhs.true55:                                  ; preds = %land.lhs.true49, %land.lhs.true53
  %32 = load %struct.xpvgv** %sv_any17, align 8, !tbaa !3
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 7
  %33 = load %struct.gp** %xgv_gp57, align 8, !tbaa !3
  %gp_cvgen = getelementptr inbounds %struct.gp* %33, i64 0, i32 8
  %34 = load i32* %gp_cvgen, align 4, !tbaa !0
  %tobool58 = icmp eq i32 %34, 0
  br i1 %tobool58, label %lor.lhs.false59, label %if.then63

lor.lhs.false59:                                  ; preds = %land.lhs.true55
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %32, i64 0, i32 10
  %35 = load %struct.hv** %xgv_stash, align 8, !tbaa !3
  %cmp61 = icmp eq %struct.hv* %35, %stash.addr.0
  br i1 %cmp61, label %if.end65, label %if.then63

if.then63:                                        ; preds = %lor.lhs.false59, %land.lhs.true55
  %conv64 = trunc i64 %len to i32
  call void (i32, i8*, ...)* @Perl_warner(i32 7170, i8* getelementptr inbounds ([66 x i8]* @.str15, i64 0, i64 0), i8* %packname.0, i32 %conv64, i8* %name) #6
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true49, %lor.lhs.false59, %land.lhs.true53, %if.then63, %lor.lhs.false45
  %36 = load %struct.xpvcv** %sv_any18, align 8, !tbaa !3
  %xcv_xsub67 = getelementptr inbounds %struct.xpvcv* %36, i64 0, i32 10
  %37 = load void (%struct.cv*)** %xcv_xsub67, align 8, !tbaa !3
  %tobool68 = icmp eq void (%struct.cv*)* %37, null
  br i1 %tobool68, label %if.end74, label %if.then69

if.then69:                                        ; preds = %if.end65
  %xcv_stash = getelementptr inbounds %struct.xpvcv* %36, i64 0, i32 7
  store %struct.hv* %stash.addr.0, %struct.hv** %xcv_stash, align 8, !tbaa !3
  %38 = load %struct.xpvcv** %sv_any18, align 8, !tbaa !3
  %xpv_pv72 = getelementptr inbounds %struct.xpvcv* %38, i64 0, i32 0
  store i8* %name, i8** %xpv_pv72, align 8, !tbaa !3
  %39 = load %struct.xpvcv** %sv_any18, align 8, !tbaa !3
  %40 = getelementptr inbounds %struct.xpvcv* %39, i64 0, i32 1
  store i64 %len, i64* %40, align 8, !tbaa !4
  br label %return

if.end74:                                         ; preds = %if.end65
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %36, i64 0, i32 12
  %41 = load %struct.gv** %xcv_gv, align 8, !tbaa !3
  %sv_any76 = getelementptr inbounds %struct.gv* %41, i64 0, i32 0
  %42 = load %struct.xpvgv** %sv_any76, align 8, !tbaa !3
  %xgv_stash77 = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 10
  %43 = load %struct.hv** %xgv_stash77, align 8, !tbaa !3
  %call80 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %43, i8* %0, i32 8, i32 1) #6
  %44 = load %struct.sv** %call80, align 8
  call void @Perl_push_scope() #6
  %45 = getelementptr inbounds %struct.sv* %44, i64 0, i32 2
  %46 = load i32* %45, align 4, !tbaa !0
  %and82 = and i32 %46, 255
  %cmp83 = icmp eq i32 %and82, 13
  br i1 %cmp83, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end74
  %47 = bitcast %struct.sv* %44 to %struct.gv*
  call void @Perl_gv_init(%struct.gv* %47, %struct.hv* %43, i8* %0, i64 8, i32 0) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end74
  call void @Perl_pop_scope() #6
  %sv_any88 = bitcast %struct.sv* %44 to %struct.xpvgv**
  %48 = load %struct.xpvgv** %sv_any88, align 8, !tbaa !3
  %xgv_gp89 = getelementptr inbounds %struct.xpvgv* %48, i64 0, i32 7
  %49 = load %struct.gp** %xgv_gp89, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %49, i64 0, i32 0
  %50 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %50, i8* %packname.0) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %50, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i64 2, i32 2) #6
  call void @Perl_sv_catpvn_flags(%struct.sv* %50, i8* %name, i64 %len, i32 2) #6
  %51 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool90 = icmp eq i8 %51, 0
  br i1 %tobool90, label %return, label %if.then91

if.then91:                                        ; preds = %if.end87
  call void @Perl_sv_untaint(%struct.sv* %50) #6
  br label %return

return:                                           ; preds = %if.then91, %if.end87, %lor.lhs.false, %if.end11, %land.lhs.true, %if.then69
  %retval.0 = phi %struct.gv* [ %call13, %if.then69 ], [ null, %land.lhs.true ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ %call13, %if.end87 ], [ %call13, %if.then91 ]
  ret %struct.gv* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_untaint(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_gv_stashpv(i8* %name, i32 %create) #0 {
entry:
  %call = tail call i64 @strlen(i8* %name) #6
  %conv = trunc i64 %call to i32
  %call1 = tail call %struct.hv* @Perl_gv_stashpvn(i8* %name, i32 %conv, i32 %create) #7
  ret %struct.hv* %call1
}

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_gv_fetchpv(i8* %nambeg, i32 %add, i32 %sv_type) #0 {
entry:
  %smallbuf = alloca [256 x i8], align 16
  %0 = load i8* %nambeg, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 42
  br i1 %cmp, label %land.lhs.true, label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %nambeg, i64 1
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %.off1173 = add i8 %1, -65
  %2 = icmp ult i8 %.off1173, 26
  %.off1174 = add i8 %1, -97
  %3 = icmp ult i8 %.off1174, 26
  %or.cond1176 = or i1 %2, %3
  %arrayidx.nambeg = select i1 %or.cond1176, i8* %arrayidx, i8* %nambeg
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %land.lhs.true
  %namend.0.ph = phi i8* [ %arrayidx.nambeg, %land.lhs.true ], [ %nambeg, %entry ]
  %4 = getelementptr inbounds [256 x i8]* %smallbuf, i64 0, i64 0
  %sub.ptr.rhs.cast104 = ptrtoint i8* %nambeg to i64
  %and75 = and i32 %add, 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %stash.0 = phi %struct.hv* [ %stash.5, %for.inc ], [ null, %for.cond.preheader ]
  %namend.0 = phi i8* [ %incdec.ptr129, %for.inc ], [ %namend.0.ph, %for.cond.preheader ]
  %gv.0 = phi %struct.gv* [ %gv.2, %for.inc ], [ null, %for.cond.preheader ]
  %name.1 = phi i8* [ %name.2, %for.inc ], [ %namend.0.ph, %for.cond.preheader ]
  %5 = load i8* %namend.0, align 1, !tbaa !1
  switch i8 %5, label %for.inc [
    i8 0, label %for.end
    i8 58, label %land.lhs.true22
    i8 39, label %land.lhs.true31
  ]

land.lhs.true22:                                  ; preds = %for.cond
  %arrayidx23 = getelementptr inbounds i8* %namend.0, i64 1
  %6 = load i8* %arrayidx23, align 1, !tbaa !1
  %cmp25 = icmp eq i8 %6, 58
  br i1 %cmp25, label %if.then35, label %for.inc

land.lhs.true31:                                  ; preds = %for.cond
  %arrayidx32 = getelementptr inbounds i8* %namend.0, i64 1
  %7 = load i8* %arrayidx32, align 1, !tbaa !1
  %tobool34 = icmp eq i8 %7, 0
  br i1 %tobool34, label %for.inc, label %if.then35

if.then35:                                        ; preds = %land.lhs.true31, %land.lhs.true22
  %tobool36 = icmp eq %struct.hv* %stash.0, null
  %8 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  %.stash.0 = select i1 %tobool36, %struct.hv* %8, %struct.hv* %stash.0
  %tobool39 = icmp eq %struct.hv* %.stash.0, null
  br i1 %tobool39, label %return, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.then35
  %sv_refcnt = getelementptr inbounds %struct.hv* %.stash.0, i64 0, i32 1
  %9 = load i32* %sv_refcnt, align 4, !tbaa !0
  %tobool41 = icmp eq i32 %9, 0
  br i1 %tobool41, label %return, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false40
  %sub.ptr.lhs.cast = ptrtoint i8* %namend.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %name.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv44 = trunc i64 %sub.ptr.sub to i32
  %cmp45 = icmp sgt i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end111

if.then47:                                        ; preds = %if.end43
  call void @llvm.lifetime.start(i64 256, i8* %4) #2
  %add48 = shl i64 %sub.ptr.sub, 32
  %sext1138 = add i64 %add48, 12884901888
  %conv49 = ashr exact i64 %sext1138, 32
  %cmp50 = icmp ult i64 %conv49, 256
  br i1 %cmp50, label %if.end55, label %if.else

if.else:                                          ; preds = %if.then47
  %call = call i8* @Perl_safesysmalloc(i64 %conv49) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.else
  %tmpbuf.0 = phi i8* [ %call, %if.else ], [ %4, %if.then47 ]
  %conv56 = ashr exact i64 %add48, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmpbuf.0, i8* %name.1, i64 %conv56, i32 1, i1 false)
  %arrayidx58 = getelementptr inbounds i8* %tmpbuf.0, i64 %conv56
  store i8 58, i8* %arrayidx58, align 1, !tbaa !1
  %inc59 = add nsw i32 %conv44, 2
  %sext1140 = add i64 %add48, 4294967296
  %idxprom60 = ashr exact i64 %sext1140, 32
  %arrayidx61 = getelementptr inbounds i8* %tmpbuf.0, i64 %idxprom60
  store i8 58, i8* %arrayidx61, align 1, !tbaa !1
  %idxprom62 = sext i32 %inc59 to i64
  %arrayidx63 = getelementptr inbounds i8* %tmpbuf.0, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1, !tbaa !1
  %call64 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %.stash.0, i8* %tmpbuf.0, i32 %inc59, i32 %add) #6
  %tobool65 = icmp eq %struct.sv** %call64, null
  br i1 %tobool65, label %if.end80, label %cond.end

cond.end:                                         ; preds = %if.end55
  %10 = load %struct.sv** %call64, align 8
  %11 = bitcast %struct.sv* %10 to %struct.gv*
  %tobool66 = icmp ne %struct.sv* %10, null
  %cmp68 = icmp ne %struct.sv* %10, @PL_sv_undef
  %or.cond = and i1 %tobool66, %cmp68
  br i1 %or.cond, label %if.then70, label %if.end80

if.then70:                                        ; preds = %cond.end
  %12 = getelementptr inbounds %struct.sv* %10, i64 0, i32 2
  %13 = load i32* %12, align 4, !tbaa !0
  %and = and i32 %13, 255
  %cmp71 = icmp eq i32 %and, 13
  br i1 %cmp71, label %if.else76, label %if.then73

if.then73:                                        ; preds = %if.then70
  call void @Perl_gv_init(%struct.gv* %11, %struct.hv* %.stash.0, i8* %tmpbuf.0, i64 %idxprom62, i32 %and75) #7
  br label %if.end80

if.else76:                                        ; preds = %if.then70
  %sv_any = bitcast %struct.sv* %10 to %struct.xpvgv**
  %14 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %14, i64 0, i32 11
  %15 = load i8* %xgv_flags, align 1, !tbaa !1
  %or = or i8 %15, 2
  store i8 %or, i8* %xgv_flags, align 1, !tbaa !1
  br label %if.end80

if.end80:                                         ; preds = %if.end55, %if.then73, %if.else76, %cond.end
  %cond1160 = phi %struct.gv* [ %11, %if.then73 ], [ %11, %if.else76 ], [ %11, %cond.end ], [ null, %if.end55 ]
  %cmp82 = icmp eq i8* %tmpbuf.0, %4
  br i1 %cmp82, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end80
  call void @Perl_safesysfree(i8* %tmpbuf.0) #6
  br label %if.end85

if.end85:                                         ; preds = %if.end80, %if.then84
  %tobool86 = icmp eq %struct.gv* %cond1160, null
  %cmp88 = icmp eq %struct.gv* %cond1160, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  %or.cond884 = or i1 %tobool86, %cmp88
  br i1 %or.cond884, label %return, label %if.end91

if.end91:                                         ; preds = %if.end85
  %sv_any92 = getelementptr inbounds %struct.gv* %cond1160, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any92, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %17, i64 0, i32 5
  %18 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool93 = icmp eq %struct.hv* %18, null
  br i1 %tobool93, label %if.then94, label %if.end99

if.then94:                                        ; preds = %if.end91
  %call95 = call %struct.hv* @Perl_newHV() #6
  %19 = load %struct.xpvgv** %sv_any92, align 8, !tbaa !3
  %xgv_gp97 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp97, align 8, !tbaa !3
  %gp_hv98 = getelementptr inbounds %struct.gp* %20, i64 0, i32 5
  store %struct.hv* %call95, %struct.hv** %gp_hv98, align 8, !tbaa !3
  br label %if.end99

if.end99:                                         ; preds = %if.end91, %if.then94
  %stash.2 = phi %struct.hv* [ %18, %if.end91 ], [ %call95, %if.then94 ]
  %sv_any100 = getelementptr inbounds %struct.hv* %stash.2, i64 0, i32 0
  %21 = load %struct.xpvhv** %sv_any100, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %21, i64 0, i32 10
  %22 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool101 = icmp eq i8* %22, null
  br i1 %tobool101, label %if.then102, label %if.end111

if.then102:                                       ; preds = %if.end99
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast104
  %conv106 = trunc i64 %sub.ptr.sub105 to i32
  %call107 = call i8* @Perl_savepvn(i8* %nambeg, i32 %conv106) #6
  %23 = load %struct.xpvhv** %sv_any100, align 8, !tbaa !3
  %xhv_name109 = getelementptr inbounds %struct.xpvhv* %23, i64 0, i32 10
  store i8* %call107, i8** %xhv_name109, align 8, !tbaa !3
  br label %if.end111

if.end111:                                        ; preds = %if.end99, %if.then102, %if.end43
  %stash.4 = phi %struct.hv* [ %.stash.0, %if.end43 ], [ %stash.2, %if.then102 ], [ %stash.2, %if.end99 ]
  %gv.1 = phi %struct.gv* [ %gv.0, %if.end43 ], [ %cond1160, %if.then102 ], [ %cond1160, %if.end99 ]
  %24 = load i8* %namend.0, align 1, !tbaa !1
  %cmp113 = icmp eq i8 %24, 58
  %incdec.ptr116 = getelementptr inbounds i8* %namend.0, i64 1
  %incdec.ptr116.namend.0 = select i1 %cmp113, i8* %incdec.ptr116, i8* %namend.0
  %incdec.ptr118 = getelementptr inbounds i8* %incdec.ptr116.namend.0, i64 1
  %25 = load i8* %incdec.ptr118, align 1, !tbaa !1
  %tobool119 = icmp eq i8 %25, 0
  br i1 %tobool119, label %if.then120, label %for.inc

if.then120:                                       ; preds = %if.end111
  %tobool121 = icmp eq %struct.gv* %gv.1, null
  br i1 %tobool121, label %cond.false123, label %return

cond.false123:                                    ; preds = %if.then120
  %26 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  %call124 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %26, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i32 6, i32 1) #6
  %27 = load %struct.sv** %call124, align 8, !tbaa !3
  %28 = bitcast %struct.sv* %27 to %struct.gv*
  br label %return

for.inc:                                          ; preds = %for.cond, %land.lhs.true22, %if.end111, %land.lhs.true31
  %stash.5 = phi %struct.hv* [ %stash.4, %if.end111 ], [ %stash.0, %land.lhs.true31 ], [ %stash.0, %land.lhs.true22 ], [ %stash.0, %for.cond ]
  %namend.2 = phi i8* [ %incdec.ptr118, %if.end111 ], [ %namend.0, %land.lhs.true31 ], [ %namend.0, %land.lhs.true22 ], [ %namend.0, %for.cond ]
  %gv.2 = phi %struct.gv* [ %gv.1, %if.end111 ], [ %gv.0, %land.lhs.true31 ], [ %gv.0, %land.lhs.true22 ], [ %gv.0, %for.cond ]
  %name.2 = phi i8* [ %incdec.ptr118, %if.end111 ], [ %name.1, %land.lhs.true31 ], [ %name.1, %land.lhs.true22 ], [ %name.1, %for.cond ]
  %incdec.ptr129 = getelementptr inbounds i8* %namend.2, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast130 = ptrtoint i8* %namend.0 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %name.1 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %conv133 = trunc i64 %sub.ptr.sub132 to i32
  %tobool134 = icmp eq %struct.hv* %stash.0, null
  br i1 %tobool134, label %if.then135, label %if.end342

if.then135:                                       ; preds = %for.end
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.cop* %29, i64 0, i32 7
  %30 = load i8* %op_private, align 1, !tbaa !1
  %and137 = and i8 %30, 8
  %tobool138 = icmp ne i8 %and137, 0
  %31 = load i8* %name.1, align 1, !tbaa !1
  %cmp141 = icmp ult i8 %31, -64
  %or.cond1167 = or i1 %tobool138, %cmp141
  br i1 %or.cond1167, label %cond.true143, label %cond.false163

cond.true143:                                     ; preds = %if.then135
  %.off1171 = add i8 %31, -65
  %32 = icmp ult i8 %.off1171, 26
  br i1 %32, label %if.then170, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %cond.true143
  %.off1172 = add i8 %31, -97
  %33 = icmp ult i8 %.off1172, 26
  %cmp161 = icmp eq i8 %31, 95
  %or.cond1166 = or i1 %33, %cmp161
  br i1 %or.cond1166, label %if.then170, label %if.else311

cond.false163:                                    ; preds = %if.then135
  %call164 = call signext i8 @Perl_is_utf8_idcont(i8* %name.1) #6
  %tobool166 = icmp eq i8 %call164, 0
  br i1 %tobool166, label %if.else311, label %land.lhs.true167

land.lhs.true167:                                 ; preds = %cond.false163
  %call168 = call signext i8 @Perl_is_utf8_digit(i8* %name.1) #6
  %tobool169 = icmp eq i8 %call168, 0
  br i1 %tobool169, label %if.then170, label %if.else311

if.then170:                                       ; preds = %lor.lhs.false151, %cond.true143, %land.lhs.true167
  %arrayidx171 = getelementptr inbounds i8* %name.1, i64 1
  %34 = load i8* %arrayidx171, align 1, !tbaa !1
  %conv172 = sext i8 %34 to i32
  switch i32 %conv172, label %if.else212 [
    i32 0, label %sw.epilog
    i32 78, label %sw.bb178
    i32 73, label %sw.bb186
    i32 84, label %sw.bb191
    i32 82, label %sw.bb202
  ]

sw.bb178:                                         ; preds = %if.then170
  %call179 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #6
  %tobool180 = icmp eq i32 %call179, 0
  br i1 %tobool180, label %if.then211, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %sw.bb178
  %call182 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #6
  %tobool183 = icmp eq i32 %call182, 0
  br i1 %tobool183, label %if.then211, label %if.else212

sw.bb186:                                         ; preds = %if.then170
  %call187 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0)) #6
  %tobool188 = icmp eq i32 %call187, 0
  br i1 %tobool188, label %if.then211, label %if.else212

sw.bb191:                                         ; preds = %if.then170
  %call192 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0)) #6
  %tobool193 = icmp eq i32 %call192, 0
  br i1 %tobool193, label %if.then211, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %sw.bb191
  %call195 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0)) #6
  %tobool196 = icmp eq i32 %call195, 0
  br i1 %tobool196, label %if.then211, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %lor.lhs.false194
  %call198 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0)) #6
  %tobool199 = icmp eq i32 %call198, 0
  br i1 %tobool199, label %if.then211, label %if.else212

sw.bb202:                                         ; preds = %if.then170
  %call203 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0)) #6
  %tobool204 = icmp eq i32 %call203, 0
  br i1 %tobool204, label %if.then211, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %sw.bb202
  %call206 = call i32 @strcmp(i8* %name.1, i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0)) #6
  %tobool207 = icmp eq i32 %call206, 0
  br i1 %tobool207, label %if.then211, label %if.else212

sw.epilog:                                        ; preds = %if.then170
  %35 = load i8* %name.1, align 1, !tbaa !1
  %cmp174 = icmp eq i8 %35, 95
  br i1 %cmp174, label %if.then211, label %if.else212

if.then211:                                       ; preds = %sw.bb186, %lor.lhs.false181, %sw.bb178, %lor.lhs.false197, %lor.lhs.false194, %sw.bb191, %lor.lhs.false205, %sw.bb202, %sw.epilog
  %36 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  br label %if.end313

if.else212:                                       ; preds = %sw.bb186, %lor.lhs.false181, %lor.lhs.false197, %lor.lhs.false205, %if.then170, %sw.epilog
  %37 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cmp213 = icmp eq %struct.cop* %37, @PL_compiling
  br i1 %cmp213, label %if.then215, label %if.else308

if.then215:                                       ; preds = %if.else212
  %38 = load %struct.hv** @PL_curstash, align 8, !tbaa !3
  %tobool216 = icmp eq i32 %add, 0
  br i1 %tobool216, label %if.end313, label %land.lhs.true217

land.lhs.true217:                                 ; preds = %if.then215
  %39 = load i32* @PL_hints, align 4, !tbaa !0
  %and218 = and i32 %39, 1024
  %tobool219 = icmp eq i32 %and218, 0
  br i1 %tobool219, label %if.end313, label %land.lhs.true220

land.lhs.true220:                                 ; preds = %land.lhs.true217
  %sv_type.off = add i32 %sv_type, -12
  %40 = icmp ugt i32 %sv_type.off, 1
  %cmp227 = icmp ne i32 %sv_type, 14
  %or.cond886 = and i1 %40, %cmp227
  %cmp230 = icmp ne i32 %sv_type, 15
  %or.cond887 = and i1 %or.cond886, %cmp230
  br i1 %or.cond887, label %land.lhs.true232, label %if.end313

land.lhs.true232:                                 ; preds = %land.lhs.true220
  %cmp233 = icmp eq i32 %conv133, 1
  %cmp236 = icmp eq i32 %sv_type, 4
  %or.cond1151 = and i1 %cmp233, %cmp236
  br i1 %or.cond1151, label %land.lhs.true238, label %if.then246

land.lhs.true238:                                 ; preds = %land.lhs.true232
  %41 = load i8* %name.1, align 1, !tbaa !1
  %.off = add i8 %41, -97
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end313, label %if.then246

if.then246:                                       ; preds = %land.lhs.true238, %land.lhs.true232
  %call247 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %38, i8* %name.1, i32 %conv133, i32 0) #6
  %tobool248 = icmp eq %struct.sv** %call247, null
  br i1 %tobool248, label %if.then315, label %lor.lhs.false249

lor.lhs.false249:                                 ; preds = %if.then246
  %42 = load %struct.sv** %call247, align 8
  %cmp250 = icmp eq %struct.sv* %42, @PL_sv_undef
  br i1 %cmp250, label %if.then315, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %lor.lhs.false249
  %43 = getelementptr inbounds %struct.sv* %42, i64 0, i32 2
  %44 = load i32* %43, align 4, !tbaa !0
  %and254 = and i32 %44, 255
  %cmp255 = icmp eq i32 %and254, 13
  br i1 %cmp255, label %if.else258, label %if.then315

if.else258:                                       ; preds = %lor.lhs.false252
  switch i32 %sv_type, label %if.end313 [
    i32 4, label %land.lhs.true261
    i32 10, label %land.lhs.true270
    i32 11, label %land.lhs.true279
  ]

land.lhs.true261:                                 ; preds = %if.else258
  %sv_any262 = bitcast %struct.sv* %42 to %struct.xpvgv**
  %45 = load %struct.xpvgv** %sv_any262, align 8, !tbaa !3
  %xgv_flags263 = getelementptr inbounds %struct.xpvgv* %45, i64 0, i32 11
  %46 = load i8* %xgv_flags263, align 1, !tbaa !1
  %and265 = and i8 %46, 16
  %tobool266 = icmp eq i8 %and265, 0
  br i1 %tobool266, label %cond.false289, label %if.end313

land.lhs.true270:                                 ; preds = %if.else258
  %sv_any271 = bitcast %struct.sv* %42 to %struct.xpvgv**
  %47 = load %struct.xpvgv** %sv_any271, align 8, !tbaa !3
  %xgv_flags272 = getelementptr inbounds %struct.xpvgv* %47, i64 0, i32 11
  %48 = load i8* %xgv_flags272, align 1, !tbaa !1
  %and274 = and i8 %48, 32
  %tobool275 = icmp eq i8 %and274, 0
  br i1 %tobool275, label %cond.end293, label %if.end313

land.lhs.true279:                                 ; preds = %if.else258
  %sv_any280 = bitcast %struct.sv* %42 to %struct.xpvgv**
  %49 = load %struct.xpvgv** %sv_any280, align 8, !tbaa !3
  %xgv_flags281 = getelementptr inbounds %struct.xpvgv* %49, i64 0, i32 11
  %50 = load i8* %xgv_flags281, align 1, !tbaa !1
  %and283 = and i8 %50, 64
  %tobool284 = icmp eq i8 %and283, 0
  br i1 %tobool284, label %cond.false289, label %if.end313

cond.false289:                                    ; preds = %land.lhs.true261, %land.lhs.true279
  %cmp290 = icmp eq i32 %sv_type, 11
  %cond292 = select i1 %cmp290, i32 37, i32 36
  br label %cond.end293

cond.end293:                                      ; preds = %land.lhs.true270, %cond.false289
  %cond294 = phi i32 [ %cond292, %cond.false289 ], [ 64, %land.lhs.true270 ]
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i32 %cond294, i8* %name.1) #6
  %51 = load %struct.sv** %call247, align 8
  %sv_any295 = bitcast %struct.sv* %51 to %struct.xpvgv**
  %52 = load %struct.xpvgv** %sv_any295, align 8, !tbaa !3
  %xgv_gp296 = getelementptr inbounds %struct.xpvgv* %52, i64 0, i32 7
  %53 = load %struct.gp** %xgv_gp296, align 8, !tbaa !3
  %gp_cvgen = getelementptr inbounds %struct.gp* %53, i64 0, i32 8
  %54 = load i32* %gp_cvgen, align 4, !tbaa !0
  %tobool297 = icmp eq i32 %54, 0
  br i1 %tobool297, label %cond.false299, label %if.then315

cond.false299:                                    ; preds = %cond.end293
  %gp_cv = getelementptr inbounds %struct.gp* %53, i64 0, i32 7
  %55 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool302 = icmp eq %struct.cv* %55, null
  br i1 %tobool302, label %if.then315, label %if.then303

if.then303:                                       ; preds = %cond.false299
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0), i8* %name.1) #6
  br label %if.then315

if.else308:                                       ; preds = %if.else212
  %56 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_stash = getelementptr inbounds %struct.cop* %56, i64 0, i32 9
  %57 = load %struct.hv** %cop_stash, align 8, !tbaa !3
  br label %if.end313

if.else311:                                       ; preds = %lor.lhs.false151, %land.lhs.true167, %cond.false163
  %58 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  br label %if.end313

if.end313:                                        ; preds = %land.lhs.true270, %land.lhs.true261, %land.lhs.true238, %if.else258, %land.lhs.true279, %land.lhs.true217, %if.then215, %if.else311, %if.else308, %land.lhs.true220, %if.then211
  %stash.6 = phi %struct.hv* [ %36, %if.then211 ], [ %38, %land.lhs.true279 ], [ %38, %land.lhs.true220 ], [ %38, %land.lhs.true217 ], [ %38, %if.then215 ], [ %57, %if.else308 ], [ %58, %if.else311 ], [ %38, %land.lhs.true238 ], [ %38, %if.else258 ], [ %38, %land.lhs.true261 ], [ %38, %land.lhs.true270 ]
  %tobool314 = icmp eq %struct.hv* %stash.6, null
  br i1 %tobool314, label %if.then315, label %if.end342

if.then315:                                       ; preds = %if.then303, %cond.end293, %cond.false299, %lor.lhs.false249, %if.then246, %lor.lhs.false252, %if.end313
  %tobool316 = icmp eq i32 %add, 0
  br i1 %tobool316, label %return, label %if.then317

if.then317:                                       ; preds = %if.then315
  %cmp318 = icmp eq i32 %sv_type, 4
  br i1 %cmp318, label %cond.end331, label %cond.false321

cond.false321:                                    ; preds = %if.then317
  %cmp322 = icmp eq i32 %sv_type, 10
  br i1 %cmp322, label %cond.end331, label %cond.false325

cond.false325:                                    ; preds = %cond.false321
  %cmp326 = icmp eq i32 %sv_type, 11
  %cond328 = select i1 %cmp326, i8* getelementptr inbounds ([2 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0)
  br label %cond.end331

cond.end331:                                      ; preds = %cond.false325, %cond.false321, %if.then317
  %cond332 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), %if.then317 ], [ %cond328, %cond.false325 ], [ getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0), %cond.false321 ]
  %call333 = call %struct.sv* (i8*, ...)* @Perl_mess(i8* getelementptr inbounds ([52 x i8]* @.str28, i64 0, i64 0), i8* %cond332, i8* %name.1) #6
  %59 = load i32* @PL_hints, align 4, !tbaa !0
  %and334 = and i32 %59, 8388608
  %tobool335 = icmp eq i32 %and334, 0
  br i1 %tobool335, label %if.end339, label %if.then336

if.then336:                                       ; preds = %cond.end331
  %sv_flags337 = getelementptr inbounds %struct.sv* %call333, i64 0, i32 2
  %60 = load i32* %sv_flags337, align 4, !tbaa !0
  %or338 = or i32 %60, 536870912
  store i32 %or338, i32* %sv_flags337, align 4, !tbaa !0
  br label %if.end339

if.end339:                                        ; preds = %cond.end331, %if.then336
  call void @Perl_qerror(%struct.sv* %call333) #6
  %61 = load %struct.hv** @PL_nullstash, align 8, !tbaa !3
  br label %if.end342

if.end342:                                        ; preds = %for.end, %if.end313, %if.end339
  %stash.7 = phi %struct.hv* [ %stash.6, %if.end313 ], [ %61, %if.end339 ], [ %stash.0, %for.end ]
  %sv_refcnt343 = getelementptr inbounds %struct.hv* %stash.7, i64 0, i32 1
  %62 = load i32* %sv_refcnt343, align 4, !tbaa !0
  %tobool344 = icmp eq i32 %62, 0
  br i1 %tobool344, label %return, label %if.end346

if.end346:                                        ; preds = %if.end342
  %call347 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %stash.7, i8* %name.1, i32 %conv133, i32 %add) #6
  %tobool348 = icmp eq %struct.sv** %call347, null
  br i1 %tobool348, label %return, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %if.end346
  %63 = load %struct.sv** %call347, align 8
  %64 = bitcast %struct.sv* %63 to %struct.gv*
  %cmp350 = icmp eq %struct.sv* %63, @PL_sv_undef
  br i1 %cmp350, label %return, label %if.end353

if.end353:                                        ; preds = %lor.lhs.false349
  %65 = getelementptr inbounds %struct.sv* %63, i64 0, i32 2
  %66 = load i32* %65, align 4, !tbaa !0
  %and355 = and i32 %66, 255
  %cmp356 = icmp eq i32 %and355, 13
  br i1 %cmp356, label %if.then358, label %if.else378

if.then358:                                       ; preds = %if.end353
  %tobool359 = icmp eq i32 %add, 0
  br i1 %tobool359, label %return, label %if.then360

if.then360:                                       ; preds = %if.then358
  %sv_any361 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %67 = load %struct.xpvgv** %sv_any361, align 8, !tbaa !3
  %xgv_flags362 = getelementptr inbounds %struct.xpvgv* %67, i64 0, i32 11
  %68 = load i8* %xgv_flags362, align 1, !tbaa !1
  %or364 = or i8 %68, 2
  store i8 %or364, i8* %xgv_flags362, align 1, !tbaa !1
  call fastcc void @S_gv_init_sv(%struct.gv* %64, i32 %sv_type) #7
  %69 = load i8* %name.1, align 1, !tbaa !1
  %cmp367 = icmp eq i8 %69, 33
  %cmp370 = icmp eq i32 %sv_type, 11
  %or.cond1152 = and i1 %cmp367, %cmp370
  %cmp373 = icmp eq i32 %conv133, 1
  %or.cond1153 = and i1 %or.cond1152, %cmp373
  br i1 %or.cond1153, label %if.then375, label %return

if.then375:                                       ; preds = %if.then360
  call fastcc void @S_require_errno(%struct.gv* %64) #7
  br label %return

if.else378:                                       ; preds = %if.end353
  %and379 = and i32 %add, 16
  %tobool380 = icmp eq i32 %and379, 0
  br i1 %tobool380, label %if.end383, label %return

if.end383:                                        ; preds = %if.else378
  %and384 = and i32 %add, 4
  %tobool385 = icmp eq i32 %and384, 0
  br i1 %tobool385, label %if.end405, label %land.lhs.true386

land.lhs.true386:                                 ; preds = %if.end383
  %70 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %70, i64 0, i32 14
  %71 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp387 = icmp eq %struct.sv* %71, null
  br i1 %cmp387, label %if.then404, label %lor.lhs.false389

lor.lhs.false389:                                 ; preds = %land.lhs.true386
  %72 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings390 = getelementptr inbounds %struct.cop* %72, i64 0, i32 14
  %73 = load %struct.sv** %cop_warnings390, align 8, !tbaa !3
  %cmp391 = icmp eq %struct.sv* %73, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp391, label %if.then404, label %lor.lhs.false393

lor.lhs.false393:                                 ; preds = %lor.lhs.false389
  %74 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings394 = getelementptr inbounds %struct.cop* %74, i64 0, i32 14
  %75 = load %struct.sv** %cop_warnings394, align 8, !tbaa !3
  %cmp395 = icmp eq %struct.sv* %75, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp395, label %if.end405, label %land.lhs.true397

land.lhs.true397:                                 ; preds = %lor.lhs.false393
  %76 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings398 = getelementptr inbounds %struct.cop* %76, i64 0, i32 14
  %77 = load %struct.sv** %cop_warnings398, align 8, !tbaa !3
  %sv_any399 = getelementptr inbounds %struct.sv* %77, i64 0, i32 0
  %78 = load i8** %sv_any399, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %78 to i8**
  %79 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx400 = getelementptr inbounds i8* %79, i64 6
  %80 = load i8* %arrayidx400, align 1, !tbaa !1
  %and402 = and i8 %80, 1
  %tobool403 = icmp eq i8 %and402, 0
  br i1 %tobool403, label %if.end405, label %if.then404

if.then404:                                       ; preds = %land.lhs.true397, %lor.lhs.false389, %land.lhs.true386
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([30 x i8]* @.str32, i64 0, i64 0), i8* %nambeg) #6
  br label %if.end405

if.end405:                                        ; preds = %land.lhs.true397, %lor.lhs.false393, %if.end383, %if.then404
  %sext = shl i64 %sub.ptr.sub132, 32
  %conv406 = ashr exact i64 %sext, 32
  call void @Perl_gv_init(%struct.gv* %64, %struct.hv* %stash.7, i8* %name.1, i64 %conv406, i32 %and75) #7
  call fastcc void @S_gv_init_sv(%struct.gv* %64, i32 %sv_type) #7
  %81 = load i8* %name.1, align 1, !tbaa !1
  %.off1168 = add i8 %81, -65
  %82 = icmp ult i8 %.off1168, 26
  %.off1169 = add i8 %81, -97
  %83 = icmp ult i8 %.off1169, 26
  %or.cond1178 = or i1 %82, %83
  br i1 %or.cond1178, label %land.lhs.true427, label %if.end469

land.lhs.true427:                                 ; preds = %if.end405
  %84 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings428 = getelementptr inbounds %struct.cop* %84, i64 0, i32 14
  %85 = load %struct.sv** %cop_warnings428, align 8, !tbaa !3
  %cmp429 = icmp eq %struct.sv* %85, null
  br i1 %cmp429, label %cond.false459, label %cond.true431

cond.true431:                                     ; preds = %land.lhs.true427
  %86 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings432 = getelementptr inbounds %struct.cop* %86, i64 0, i32 14
  %87 = load %struct.sv** %cop_warnings432, align 8, !tbaa !3
  %cmp433 = icmp eq %struct.sv* %87, null
  br i1 %cmp433, label %lor.lhs.false451, label %land.lhs.true435

land.lhs.true435:                                 ; preds = %cond.true431
  %88 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings436 = getelementptr inbounds %struct.cop* %88, i64 0, i32 14
  %89 = load %struct.sv** %cop_warnings436, align 8, !tbaa !3
  %cmp437 = icmp eq %struct.sv* %89, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp437, label %lor.lhs.false451, label %land.lhs.true439

land.lhs.true439:                                 ; preds = %land.lhs.true435
  %90 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings440 = getelementptr inbounds %struct.cop* %90, i64 0, i32 14
  %91 = load %struct.sv** %cop_warnings440, align 8, !tbaa !3
  %cmp441 = icmp eq %struct.sv* %91, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp441, label %if.end469, label %lor.lhs.false443

lor.lhs.false443:                                 ; preds = %land.lhs.true439
  %92 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings444 = getelementptr inbounds %struct.cop* %92, i64 0, i32 14
  %93 = load %struct.sv** %cop_warnings444, align 8, !tbaa !3
  %sv_any445 = getelementptr inbounds %struct.sv* %93, i64 0, i32 0
  %94 = load i8** %sv_any445, align 8, !tbaa !3
  %xpv_pv446 = bitcast i8* %94 to i8**
  %95 = load i8** %xpv_pv446, align 8, !tbaa !3
  %arrayidx447 = getelementptr inbounds i8* %95, i64 3
  %96 = load i8* %arrayidx447, align 1, !tbaa !1
  %and449 = and i8 %96, 16
  %tobool450 = icmp eq i8 %and449, 0
  br i1 %tobool450, label %lor.lhs.false451, label %if.end469

lor.lhs.false451:                                 ; preds = %lor.lhs.false443, %land.lhs.true435, %cond.true431
  %97 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings452 = getelementptr inbounds %struct.cop* %97, i64 0, i32 14
  %98 = load %struct.sv** %cop_warnings452, align 8, !tbaa !3
  %cmp453 = icmp eq %struct.sv* %98, null
  br i1 %cmp453, label %land.lhs.true455, label %if.then463

land.lhs.true455:                                 ; preds = %lor.lhs.false451
  %99 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and457 = and i8 %99, 1
  %tobool458 = icmp eq i8 %and457, 0
  br i1 %tobool458, label %if.then463, label %if.end469

cond.false459:                                    ; preds = %land.lhs.true427
  %100 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and461 = and i8 %100, 1
  %tobool462 = icmp eq i8 %and461, 0
  br i1 %tobool462, label %if.then463, label %if.end469

if.then463:                                       ; preds = %land.lhs.true455, %cond.false459, %lor.lhs.false451
  %sv_any464 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %101 = load %struct.xpvgv** %sv_any464, align 8, !tbaa !3
  %xgv_flags465 = getelementptr inbounds %struct.xpvgv* %101, i64 0, i32 11
  %102 = load i8* %xgv_flags465, align 1, !tbaa !1
  %or467 = or i8 %102, 2
  store i8 %or467, i8* %xgv_flags465, align 1, !tbaa !1
  br label %if.end469

if.end469:                                        ; preds = %cond.false459, %land.lhs.true455, %lor.lhs.false443, %land.lhs.true439, %if.end405, %if.then463
  %cmp470 = icmp sgt i32 %conv133, 1
  %103 = load i8* %name.1, align 1, !tbaa !1
  %conv473 = sext i8 %103 to i32
  br i1 %cmp470, label %if.then472, label %if.else704

if.then472:                                       ; preds = %if.end469
  %cmp474 = icmp sgt i8 %103, 86
  br i1 %cmp474, label %return, label %if.else477

if.else477:                                       ; preds = %if.then472
  %add.ptr = getelementptr inbounds i8* %name.1, i64 1
  switch i32 %conv473, label %return [
    i32 65, label %sw.bb479
    i32 69, label %sw.bb514
    i32 73, label %sw.bb524
    i32 79, label %sw.bb569
    i32 83, label %sw.bb594
    i32 86, label %sw.bb649
    i32 5, label %sw.bb659
    i32 15, label %sw.bb664
    i32 20, label %sw.bb669
    i32 21, label %sw.bb674
    i32 23, label %sw.bb683
    i32 49, label %sw.bb688
    i32 50, label %sw.bb688
    i32 51, label %sw.bb688
    i32 52, label %sw.bb688
    i32 53, label %sw.bb688
    i32 54, label %sw.bb688
    i32 55, label %sw.bb688
    i32 56, label %sw.bb688
    i32 57, label %sw.bb688
  ]

sw.bb479:                                         ; preds = %if.else477
  %call480 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0)) #6
  %tobool481 = icmp eq i32 %call480, 0
  br i1 %tobool481, label %if.then482, label %return

if.then482:                                       ; preds = %sw.bb479
  %tobool483 = icmp eq %struct.sv* %63, null
  br i1 %tobool483, label %cond.false502, label %land.lhs.true484

land.lhs.true484:                                 ; preds = %if.then482
  %104 = load i32* %65, align 4, !tbaa !0
  %and486 = and i32 %104, 255
  %cmp487 = icmp eq i32 %and486, 13
  br i1 %cmp487, label %land.lhs.true489, label %cond.false502

land.lhs.true489:                                 ; preds = %land.lhs.true484
  %sv_any490 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %105 = load %struct.xpvgv** %sv_any490, align 8, !tbaa !3
  %xgv_gp491 = getelementptr inbounds %struct.xpvgv* %105, i64 0, i32 7
  %106 = load %struct.gp** %xgv_gp491, align 8, !tbaa !3
  %tobool492 = icmp eq %struct.gp* %106, null
  br i1 %tobool492, label %cond.false502, label %cond.true493

cond.true493:                                     ; preds = %land.lhs.true489
  %gp_io = getelementptr inbounds %struct.gp* %106, i64 0, i32 2
  %107 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool496 = icmp eq %struct.io* %107, null
  br i1 %tobool496, label %cond.false502, label %cond.end507

cond.false502:                                    ; preds = %cond.true493, %land.lhs.true489, %if.then482, %land.lhs.true484
  %call503 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %64) #7
  %sv_any504 = getelementptr inbounds %struct.gv* %call503, i64 0, i32 0
  %108 = load %struct.xpvgv** %sv_any504, align 8, !tbaa !3
  %xgv_gp505 = getelementptr inbounds %struct.xpvgv* %108, i64 0, i32 7
  %109 = load %struct.gp** %xgv_gp505, align 8, !tbaa !3
  %gp_io506 = getelementptr inbounds %struct.gp* %109, i64 0, i32 2
  %110 = load %struct.io** %gp_io506, align 8, !tbaa !3
  br label %cond.end507

cond.end507:                                      ; preds = %cond.true493, %cond.false502
  %cond508 = phi %struct.io* [ %110, %cond.false502 ], [ %107, %cond.true493 ]
  %sv_any509 = getelementptr inbounds %struct.io* %cond508, i64 0, i32 0
  %111 = load %struct.xpvio** %sv_any509, align 8, !tbaa !3
  %xio_flags = getelementptr inbounds %struct.xpvio* %111, i64 0, i32 22
  %112 = load i8* %xio_flags, align 1, !tbaa !1
  %or511 = or i8 %112, 3
  store i8 %or511, i8* %xio_flags, align 1, !tbaa !1
  br label %return

sw.bb514:                                         ; preds = %if.else477
  %call515 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i64 5) #6
  %tobool516 = icmp eq i32 %call515, 0
  br i1 %tobool516, label %if.then517, label %return

if.then517:                                       ; preds = %sw.bb514
  %sv_any518 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %113 = load %struct.xpvgv** %sv_any518, align 8, !tbaa !3
  %xgv_flags519 = getelementptr inbounds %struct.xpvgv* %113, i64 0, i32 11
  %114 = load i8* %xgv_flags519, align 1, !tbaa !1
  %or521 = or i8 %114, 2
  store i8 %or521, i8* %xgv_flags519, align 1, !tbaa !1
  br label %return

sw.bb524:                                         ; preds = %if.else477
  %call525 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0)) #6
  %tobool526 = icmp eq i32 %call525, 0
  br i1 %tobool526, label %if.then527, label %return

if.then527:                                       ; preds = %sw.bb524
  %sv_any528 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %115 = load %struct.xpvgv** %sv_any528, align 8, !tbaa !3
  %xgv_gp529 = getelementptr inbounds %struct.xpvgv* %115, i64 0, i32 7
  %116 = load %struct.gp** %xgv_gp529, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %116, i64 0, i32 4
  %117 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool530 = icmp eq %struct.av* %117, null
  br i1 %tobool530, label %cond.false535, label %cond.end540

cond.false535:                                    ; preds = %if.then527
  %call536 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %64) #7
  %sv_any537 = getelementptr inbounds %struct.gv* %call536, i64 0, i32 0
  %118 = load %struct.xpvgv** %sv_any537, align 8, !tbaa !3
  %xgv_gp538 = getelementptr inbounds %struct.xpvgv* %118, i64 0, i32 7
  %119 = load %struct.gp** %xgv_gp538, align 8, !tbaa !3
  %gp_av539 = getelementptr inbounds %struct.gp* %119, i64 0, i32 4
  %120 = load %struct.av** %gp_av539, align 8, !tbaa !3
  %.pre = load %struct.xpvgv** %sv_any528, align 8, !tbaa !3
  br label %cond.end540

cond.end540:                                      ; preds = %if.then527, %cond.false535
  %121 = phi %struct.xpvgv* [ %.pre, %cond.false535 ], [ %115, %if.then527 ]
  %cond541 = phi %struct.av* [ %120, %cond.false535 ], [ %117, %if.then527 ]
  %xgv_flags543 = getelementptr inbounds %struct.xpvgv* %121, i64 0, i32 11
  %122 = load i8* %xgv_flags543, align 1, !tbaa !1
  %or545 = or i8 %122, 2
  store i8 %or545, i8* %xgv_flags543, align 1, !tbaa !1
  %123 = bitcast %struct.av* %cond541 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %123, %struct.sv* %63, i32 73, i8* null, i32 0) #6
  %tobool548 = icmp eq i32 %and75, 0
  br i1 %tobool548, label %return, label %land.lhs.true549

land.lhs.true549:                                 ; preds = %cond.end540
  %call550 = call i32 @strcmp(i8* %nambeg, i8* getelementptr inbounds ([17 x i8]* @.str36, i64 0, i64 0)) #6
  %tobool551 = icmp eq i32 %call550, 0
  br i1 %tobool551, label %land.lhs.true552, label %return

land.lhs.true552:                                 ; preds = %land.lhs.true549
  %sv_any553 = getelementptr inbounds %struct.av* %cond541, i64 0, i32 0
  %124 = load %struct.xpvav** %sv_any553, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %124, i64 0, i32 1
  %125 = load i64* %xav_fill, align 8, !tbaa !4
  %cmp554 = icmp eq i64 %125, -1
  br i1 %cmp554, label %if.then556, label %return

if.then556:                                       ; preds = %land.lhs.true552
  %call557 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8]* @.str37, i64 0, i64 0), i64 9) #6
  call void @Perl_av_push(%struct.av* %cond541, %struct.sv* %call557) #6
  %call558 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8]* @.str37, i64 0, i64 0), i32 9, i32 1) #7
  %call559 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([8 x i8]* @.str38, i64 0, i64 0), i64 7) #6
  call void @Perl_av_push(%struct.av* %cond541, %struct.sv* %call559) #6
  %call560 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([8 x i8]* @.str38, i64 0, i64 0), i32 7, i32 1) #7
  %call561 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0), i64 9) #6
  call void @Perl_av_push(%struct.av* %cond541, %struct.sv* %call561) #6
  %call562 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0), i32 9, i32 1) #7
  %call563 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8]* @.str40, i64 0, i64 0), i64 9) #6
  call void @Perl_av_push(%struct.av* %cond541, %struct.sv* %call563) #6
  %call564 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8]* @.str40, i64 0, i64 0), i32 9, i32 1) #7
  %call565 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8]* @.str41, i64 0, i64 0), i64 9) #6
  call void @Perl_av_push(%struct.av* %cond541, %struct.sv* %call565) #6
  %call566 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8]* @.str41, i64 0, i64 0), i32 9, i32 1) #7
  br label %return

sw.bb569:                                         ; preds = %if.else477
  %call570 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str42, i64 0, i64 0)) #6
  %tobool571 = icmp eq i32 %call570, 0
  br i1 %tobool571, label %if.then572, label %return

if.then572:                                       ; preds = %sw.bb569
  %sv_any573 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %126 = load %struct.xpvgv** %sv_any573, align 8, !tbaa !3
  %xgv_gp574 = getelementptr inbounds %struct.xpvgv* %126, i64 0, i32 7
  %127 = load %struct.gp** %xgv_gp574, align 8, !tbaa !3
  %gp_hv575 = getelementptr inbounds %struct.gp* %127, i64 0, i32 5
  %128 = load %struct.hv** %gp_hv575, align 8, !tbaa !3
  %tobool576 = icmp eq %struct.hv* %128, null
  br i1 %tobool576, label %cond.false581, label %cond.end586

cond.false581:                                    ; preds = %if.then572
  %call582 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %64) #7
  %sv_any583 = getelementptr inbounds %struct.gv* %call582, i64 0, i32 0
  %129 = load %struct.xpvgv** %sv_any583, align 8, !tbaa !3
  %xgv_gp584 = getelementptr inbounds %struct.xpvgv* %129, i64 0, i32 7
  %130 = load %struct.gp** %xgv_gp584, align 8, !tbaa !3
  %gp_hv585 = getelementptr inbounds %struct.gp* %130, i64 0, i32 5
  %131 = load %struct.hv** %gp_hv585, align 8, !tbaa !3
  %.pre1196 = load %struct.xpvgv** %sv_any573, align 8, !tbaa !3
  br label %cond.end586

cond.end586:                                      ; preds = %if.then572, %cond.false581
  %132 = phi %struct.xpvgv* [ %.pre1196, %cond.false581 ], [ %126, %if.then572 ]
  %cond587 = phi %struct.hv* [ %131, %cond.false581 ], [ %128, %if.then572 ]
  %xgv_flags589 = getelementptr inbounds %struct.xpvgv* %132, i64 0, i32 11
  %133 = load i8* %xgv_flags589, align 1, !tbaa !1
  %or591 = or i8 %133, 2
  store i8 %or591, i8* %xgv_flags589, align 1, !tbaa !1
  call void @Perl_hv_magic(%struct.hv* %cond587, %struct.gv* null, i32 65) #6
  br label %return

sw.bb594:                                         ; preds = %if.else477
  %call595 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #6
  %tobool596 = icmp eq i32 %call595, 0
  br i1 %tobool596, label %if.then597, label %return

if.then597:                                       ; preds = %sw.bb594
  %134 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !3
  %tobool599 = icmp eq %struct.sv** %134, null
  br i1 %tobool599, label %if.then600, label %if.end604

if.then600:                                       ; preds = %if.then597
  %call601 = call i8* @Perl_safesysmalloc(i64 128) #6
  %135 = bitcast i8* %call601 to %struct.sv**
  store %struct.sv** %135, %struct.sv*** @PL_psig_ptr, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %call601, i8 0, i64 128, i32 1, i1 false)
  %call602 = call i8* @Perl_safesysmalloc(i64 128) #6
  %136 = bitcast i8* %call602 to %struct.sv**
  store %struct.sv** %136, %struct.sv*** @PL_psig_name, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %call602, i8 0, i64 128, i32 1, i1 false)
  %call603 = call i8* @Perl_safesysmalloc(i64 64) #6
  %137 = bitcast i8* %call603 to i32*
  store i32* %137, i32** @PL_psig_pend, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %call603, i8 0, i64 64, i32 1, i1 false)
  br label %if.end604

if.end604:                                        ; preds = %if.then597, %if.then600
  %sv_any605 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %138 = load %struct.xpvgv** %sv_any605, align 8, !tbaa !3
  %xgv_flags606 = getelementptr inbounds %struct.xpvgv* %138, i64 0, i32 11
  %139 = load i8* %xgv_flags606, align 1, !tbaa !1
  %or608 = or i8 %139, 2
  store i8 %or608, i8* %xgv_flags606, align 1, !tbaa !1
  %140 = load %struct.xpvgv** %sv_any605, align 8, !tbaa !3
  %xgv_gp611 = getelementptr inbounds %struct.xpvgv* %140, i64 0, i32 7
  %141 = load %struct.gp** %xgv_gp611, align 8, !tbaa !3
  %gp_hv612 = getelementptr inbounds %struct.gp* %141, i64 0, i32 5
  %142 = load %struct.hv** %gp_hv612, align 8, !tbaa !3
  %tobool613 = icmp eq %struct.hv* %142, null
  br i1 %tobool613, label %cond.false618, label %cond.end623

cond.false618:                                    ; preds = %if.end604
  %call619 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %64) #7
  %sv_any620 = getelementptr inbounds %struct.gv* %call619, i64 0, i32 0
  %143 = load %struct.xpvgv** %sv_any620, align 8, !tbaa !3
  %xgv_gp621 = getelementptr inbounds %struct.xpvgv* %143, i64 0, i32 7
  %144 = load %struct.gp** %xgv_gp621, align 8, !tbaa !3
  %gp_hv622 = getelementptr inbounds %struct.gp* %144, i64 0, i32 5
  %145 = load %struct.hv** %gp_hv622, align 8, !tbaa !3
  br label %cond.end623

cond.end623:                                      ; preds = %if.end604, %cond.false618
  %cond624 = phi %struct.hv* [ %145, %cond.false618 ], [ %142, %if.end604 ]
  call void @Perl_hv_magic(%struct.hv* %cond624, %struct.gv* null, i32 83) #6
  br label %for.body628

for.body628:                                      ; preds = %if.end638, %cond.end623
  %indvars.iv = phi i64 [ 1, %cond.end623 ], [ %indvars.iv.next, %if.end638 ]
  %arrayidx630 = getelementptr inbounds [0 x i8*]* @PL_sig_name, i64 0, i64 %indvars.iv
  %146 = load i8** %arrayidx630, align 8, !tbaa !3
  %call633 = call i64 @strlen(i8* %146) #6
  %conv634 = trunc i64 %call633 to i32
  %call635 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond624, i8* %146, i32 %conv634, i32 1) #6
  %tobool636 = icmp eq %struct.sv** %call635, null
  br i1 %tobool636, label %if.end638, label %if.then637

if.then637:                                       ; preds = %for.body628
  %147 = load %struct.sv** %call635, align 8, !tbaa !3
  call void @Perl_sv_setsv_flags(%struct.sv* %147, %struct.sv* @PL_sv_undef, i32 2) #6
  br label %if.end638

if.end638:                                        ; preds = %for.body628, %if.then637
  %148 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !3
  %arrayidx640 = getelementptr inbounds %struct.sv** %148, i64 %indvars.iv
  store %struct.sv* null, %struct.sv** %arrayidx640, align 8, !tbaa !3
  %149 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !3
  %arrayidx642 = getelementptr inbounds %struct.sv** %149, i64 %indvars.iv
  store %struct.sv* null, %struct.sv** %arrayidx642, align 8, !tbaa !3
  %150 = load i32** @PL_psig_pend, align 8, !tbaa !3
  %arrayidx644 = getelementptr inbounds i32* %150, i64 %indvars.iv
  store i32 0, i32* %arrayidx644, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %return, label %for.body628

sw.bb649:                                         ; preds = %if.else477
  %call650 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0)) #6
  %tobool651 = icmp eq i32 %call650, 0
  br i1 %tobool651, label %if.then652, label %return

if.then652:                                       ; preds = %sw.bb649
  %sv_any653 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %151 = load %struct.xpvgv** %sv_any653, align 8, !tbaa !3
  %xgv_flags654 = getelementptr inbounds %struct.xpvgv* %151, i64 0, i32 11
  %152 = load i8* %xgv_flags654, align 1, !tbaa !1
  %or656 = or i8 %152, 2
  store i8 %or656, i8* %xgv_flags654, align 1, !tbaa !1
  br label %return

sw.bb659:                                         ; preds = %if.else477
  %call660 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str45, i64 0, i64 0)) #6
  %tobool661 = icmp eq i32 %call660, 0
  br i1 %tobool661, label %magicalize, label %return

sw.bb664:                                         ; preds = %if.else477
  %call665 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str46, i64 0, i64 0)) #6
  %tobool666 = icmp eq i32 %call665, 0
  br i1 %tobool666, label %magicalize, label %return

sw.bb669:                                         ; preds = %if.else477
  %call670 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0)) #6
  %tobool671 = icmp eq i32 %call670, 0
  br i1 %tobool671, label %ro_magicalize, label %return

sw.bb674:                                         ; preds = %if.else477
  %call675 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0)) #6
  %tobool676 = icmp eq i32 %call675, 0
  br i1 %tobool676, label %ro_magicalize, label %if.end678

if.end678:                                        ; preds = %sw.bb674
  %call679 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([10 x i8]* @.str49, i64 0, i64 0)) #6
  %tobool680 = icmp eq i32 %call679, 0
  br i1 %tobool680, label %ro_magicalize, label %return

sw.bb683:                                         ; preds = %if.else477
  %call684 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([12 x i8]* @.str50, i64 0, i64 0)) #6
  %tobool685 = icmp eq i32 %call684, 0
  br i1 %tobool685, label %magicalize, label %return

sw.bb688:                                         ; preds = %if.else477, %if.else477, %if.else477, %if.else477, %if.else477, %if.else477, %if.else477, %if.else477, %if.else477
  %add.ptr689 = getelementptr inbounds i8* %name.1, i64 %conv406
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb688
  %end.0 = phi i8* [ %add.ptr689, %sw.bb688 ], [ %incdec.ptr690, %while.body ]
  %incdec.ptr690 = getelementptr inbounds i8* %end.0, i64 -1
  %cmp691 = icmp ugt i8* %incdec.ptr690, %name.1
  br i1 %cmp691, label %while.body, label %ro_magicalize

while.body:                                       ; preds = %while.cond
  %153 = load i8* %incdec.ptr690, align 1, !tbaa !1
  %.off1170 = add i8 %153, -48
  %154 = icmp ult i8 %.off1170, 10
  br i1 %154, label %while.cond, label %return

if.else704:                                       ; preds = %if.end469
  switch i32 %conv473, label %return [
    i32 38, label %sw.bb706
    i32 96, label %sw.bb706
    i32 39, label %sw.bb706
    i32 58, label %sw.bb723
    i32 63, label %magicalize
    i32 33, label %sw.bb727
    i32 45, label %sw.bb735
    i32 35, label %sw.bb754
    i32 42, label %sw.bb754
    i32 124, label %sw.bb795
    i32 43, label %sw.bb810
    i32 19, label %ro_magicalize
    i32 49, label %ro_magicalize
    i32 50, label %ro_magicalize
    i32 51, label %ro_magicalize
    i32 52, label %ro_magicalize
    i32 53, label %ro_magicalize
    i32 54, label %ro_magicalize
    i32 55, label %ro_magicalize
    i32 56, label %ro_magicalize
    i32 57, label %ro_magicalize
    i32 91, label %magicalize
    i32 94, label %magicalize
    i32 126, label %magicalize
    i32 61, label %magicalize
    i32 37, label %magicalize
    i32 46, label %magicalize
    i32 40, label %magicalize
    i32 41, label %magicalize
    i32 60, label %magicalize
    i32 62, label %magicalize
    i32 44, label %magicalize
    i32 92, label %magicalize
    i32 47, label %magicalize
    i32 1, label %magicalize
    i32 3, label %magicalize
    i32 4, label %magicalize
    i32 5, label %magicalize
    i32 6, label %magicalize
    i32 8, label %magicalize
    i32 9, label %magicalize
    i32 14, label %magicalize
    i32 15, label %magicalize
    i32 16, label %magicalize
    i32 20, label %magicalize
    i32 23, label %magicalize
    i32 12, label %sw.bb839
    i32 59, label %sw.bb846
    i32 93, label %sw.bb850
    i32 22, label %sw.bb870
  ]

sw.bb706:                                         ; preds = %if.else704, %if.else704, %if.else704
  %155 = and i32 %sv_type, -2
  %156 = icmp eq i32 %155, 10
  %cmp713 = icmp eq i32 %sv_type, 12
  %or.cond889 = or i1 %156, %cmp713
  %cmp716 = icmp eq i32 %sv_type, 14
  %or.cond890 = or i1 %or.cond889, %cmp716
  %cmp719 = icmp eq i32 %sv_type, 15
  %or.cond891 = or i1 %or.cond890, %cmp719
  br i1 %or.cond891, label %return, label %if.end722

if.end722:                                        ; preds = %sw.bb706
  store i8 1, i8* @PL_sawampersand, align 1, !tbaa !1
  br label %ro_magicalize

sw.bb723:                                         ; preds = %if.else704
  %sv_any724 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %157 = load %struct.xpvgv** %sv_any724, align 8, !tbaa !3
  %xgv_gp725 = getelementptr inbounds %struct.xpvgv* %157, i64 0, i32 7
  %158 = load %struct.gp** %xgv_gp725, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %158, i64 0, i32 0
  %159 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %160 = load i8** @PL_chopset, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %159, i8* %160) #6
  br label %magicalize

sw.bb727:                                         ; preds = %if.else704
  %sv_any728 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %161 = load %struct.xpvgv** %sv_any728, align 8, !tbaa !3
  %xgv_gp729 = getelementptr inbounds %struct.xpvgv* %161, i64 0, i32 7
  %162 = load %struct.gp** %xgv_gp729, align 8, !tbaa !3
  %gp_sv730 = getelementptr inbounds %struct.gp* %162, i64 0, i32 0
  %163 = load %struct.sv** %gp_sv730, align 8, !tbaa !3
  call void @Perl_sv_magic(%struct.sv* %163, %struct.sv* %63, i32 0, i8* %name.1, i32 %conv133) #6
  %cmp731 = icmp eq i32 %sv_type, 11
  br i1 %cmp731, label %if.then733, label %return

if.then733:                                       ; preds = %sw.bb727
  call fastcc void @S_require_errno(%struct.gv* %64) #7
  br label %return

sw.bb735:                                         ; preds = %if.else704
  %sv_any737 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %164 = load %struct.xpvgv** %sv_any737, align 8, !tbaa !3
  %xgv_gp738 = getelementptr inbounds %struct.xpvgv* %164, i64 0, i32 7
  %165 = load %struct.gp** %xgv_gp738, align 8, !tbaa !3
  %gp_av739 = getelementptr inbounds %struct.gp* %165, i64 0, i32 4
  %166 = load %struct.av** %gp_av739, align 8, !tbaa !3
  %tobool740 = icmp eq %struct.av* %166, null
  br i1 %tobool740, label %cond.false745, label %cond.end750

cond.false745:                                    ; preds = %sw.bb735
  %call746 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %64) #7
  %sv_any747 = getelementptr inbounds %struct.gv* %call746, i64 0, i32 0
  %167 = load %struct.xpvgv** %sv_any747, align 8, !tbaa !3
  %xgv_gp748 = getelementptr inbounds %struct.xpvgv* %167, i64 0, i32 7
  %168 = load %struct.gp** %xgv_gp748, align 8, !tbaa !3
  %gp_av749 = getelementptr inbounds %struct.gp* %168, i64 0, i32 4
  %169 = load %struct.av** %gp_av749, align 8, !tbaa !3
  br label %cond.end750

cond.end750:                                      ; preds = %sw.bb735, %cond.false745
  %cond751 = phi %struct.av* [ %169, %cond.false745 ], [ %166, %sw.bb735 ]
  %170 = bitcast %struct.av* %cond751 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %170, %struct.sv* null, i32 68, i8* null, i32 0) #6
  %sv_flags752 = getelementptr inbounds %struct.av* %cond751, i64 0, i32 2
  %171 = load i32* %sv_flags752, align 4, !tbaa !0
  %or753 = or i32 %171, 8388608
  store i32 %or753, i32* %sv_flags752, align 4, !tbaa !0
  br label %magicalize

sw.bb754:                                         ; preds = %if.else704, %if.else704
  %cmp755 = icmp eq i32 %sv_type, 4
  br i1 %cmp755, label %land.lhs.true757, label %magicalize

land.lhs.true757:                                 ; preds = %sw.bb754
  %172 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings758 = getelementptr inbounds %struct.cop* %172, i64 0, i32 14
  %173 = load %struct.sv** %cop_warnings758, align 8, !tbaa !3
  %cmp759 = icmp eq %struct.sv* %173, null
  br i1 %cmp759, label %lor.lhs.false785, label %land.lhs.true761

land.lhs.true761:                                 ; preds = %land.lhs.true757
  %174 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings762 = getelementptr inbounds %struct.cop* %174, i64 0, i32 14
  %175 = load %struct.sv** %cop_warnings762, align 8, !tbaa !3
  %cmp763 = icmp eq %struct.sv* %175, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp763, label %lor.lhs.false785, label %land.lhs.true765

land.lhs.true765:                                 ; preds = %land.lhs.true761
  %176 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings766 = getelementptr inbounds %struct.cop* %176, i64 0, i32 14
  %177 = load %struct.sv** %cop_warnings766, align 8, !tbaa !3
  %cmp767 = icmp eq %struct.sv* %177, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp767, label %if.then793, label %lor.lhs.false769

lor.lhs.false769:                                 ; preds = %land.lhs.true765
  %178 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings770 = getelementptr inbounds %struct.cop* %178, i64 0, i32 14
  %179 = load %struct.sv** %cop_warnings770, align 8, !tbaa !3
  %sv_any771 = getelementptr inbounds %struct.sv* %179, i64 0, i32 0
  %180 = load i8** %sv_any771, align 8, !tbaa !3
  %xpv_pv772 = bitcast i8* %180 to i8**
  %181 = load i8** %xpv_pv772, align 8, !tbaa !3
  %182 = load i8* %181, align 1, !tbaa !1
  %and775 = and i8 %182, 16
  %tobool776 = icmp eq i8 %and775, 0
  br i1 %tobool776, label %lor.lhs.false777, label %if.then793

lor.lhs.false777:                                 ; preds = %lor.lhs.false769
  %183 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings778 = getelementptr inbounds %struct.cop* %183, i64 0, i32 14
  %184 = load %struct.sv** %cop_warnings778, align 8, !tbaa !3
  %sv_any779 = getelementptr inbounds %struct.sv* %184, i64 0, i32 0
  %185 = load i8** %sv_any779, align 8, !tbaa !3
  %xpv_pv780 = bitcast i8* %185 to i8**
  %186 = load i8** %xpv_pv780, align 8, !tbaa !3
  %arrayidx781 = getelementptr inbounds i8* %186, i64 7
  %187 = load i8* %arrayidx781, align 1, !tbaa !1
  %and783 = and i8 %187, 1
  %tobool784 = icmp eq i8 %and783, 0
  br i1 %tobool784, label %lor.lhs.false785, label %if.then793

lor.lhs.false785:                                 ; preds = %lor.lhs.false777, %land.lhs.true761, %land.lhs.true757
  %188 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings786 = getelementptr inbounds %struct.cop* %188, i64 0, i32 14
  %189 = load %struct.sv** %cop_warnings786, align 8, !tbaa !3
  %cmp787 = icmp eq %struct.sv* %189, null
  br i1 %cmp787, label %land.lhs.true789, label %magicalize

land.lhs.true789:                                 ; preds = %lor.lhs.false785
  %190 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and791 = and i8 %190, 1
  %tobool792 = icmp eq i8 %and791, 0
  br i1 %tobool792, label %magicalize, label %if.then793

if.then793:                                       ; preds = %lor.lhs.false777, %lor.lhs.false769, %land.lhs.true789, %land.lhs.true765
  call void (i32, i8*, ...)* @Perl_warner(i32 7170, i8* getelementptr inbounds ([25 x i8]* @.str51, i64 0, i64 0), i8* %name.1) #6
  br label %magicalize

sw.bb795:                                         ; preds = %if.else704
  %sv_any796 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %191 = load %struct.xpvgv** %sv_any796, align 8, !tbaa !3
  %xgv_gp797 = getelementptr inbounds %struct.xpvgv* %191, i64 0, i32 7
  %192 = load %struct.gp** %xgv_gp797, align 8, !tbaa !3
  %gp_sv798 = getelementptr inbounds %struct.gp* %192, i64 0, i32 0
  %193 = load %struct.sv** %gp_sv798, align 8, !tbaa !3
  %194 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !3
  %sv_any799 = getelementptr inbounds %struct.gv* %194, i64 0, i32 0
  %195 = load %struct.xpvgv** %sv_any799, align 8, !tbaa !3
  %xgv_gp800 = getelementptr inbounds %struct.xpvgv* %195, i64 0, i32 7
  %196 = load %struct.gp** %xgv_gp800, align 8, !tbaa !3
  %gp_io801 = getelementptr inbounds %struct.gp* %196, i64 0, i32 2
  %197 = load %struct.io** %gp_io801, align 8, !tbaa !3
  %sv_any802 = getelementptr inbounds %struct.io* %197, i64 0, i32 0
  %198 = load %struct.xpvio** %sv_any802, align 8, !tbaa !3
  %xio_flags803 = getelementptr inbounds %struct.xpvio* %198, i64 0, i32 22
  %199 = load i8* %xio_flags803, align 1, !tbaa !1
  %and805 = lshr i8 %199, 2
  %and805.lobit = and i8 %and805, 1
  %conv809 = zext i8 %and805.lobit to i64
  call void @Perl_sv_setiv(%struct.sv* %193, i64 %conv809) #6
  br label %magicalize

sw.bb810:                                         ; preds = %if.else704
  %sv_any812 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %200 = load %struct.xpvgv** %sv_any812, align 8, !tbaa !3
  %xgv_gp813 = getelementptr inbounds %struct.xpvgv* %200, i64 0, i32 7
  %201 = load %struct.gp** %xgv_gp813, align 8, !tbaa !3
  %gp_av814 = getelementptr inbounds %struct.gp* %201, i64 0, i32 4
  %202 = load %struct.av** %gp_av814, align 8, !tbaa !3
  %tobool815 = icmp eq %struct.av* %202, null
  br i1 %tobool815, label %cond.false820, label %cond.end825

cond.false820:                                    ; preds = %sw.bb810
  %call821 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %64) #7
  %sv_any822 = getelementptr inbounds %struct.gv* %call821, i64 0, i32 0
  %203 = load %struct.xpvgv** %sv_any822, align 8, !tbaa !3
  %xgv_gp823 = getelementptr inbounds %struct.xpvgv* %203, i64 0, i32 7
  %204 = load %struct.gp** %xgv_gp823, align 8, !tbaa !3
  %gp_av824 = getelementptr inbounds %struct.gp* %204, i64 0, i32 4
  %205 = load %struct.av** %gp_av824, align 8, !tbaa !3
  br label %cond.end825

cond.end825:                                      ; preds = %sw.bb810, %cond.false820
  %cond826 = phi %struct.av* [ %205, %cond.false820 ], [ %202, %sw.bb810 ]
  %206 = bitcast %struct.av* %cond826 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %206, %struct.sv* %206, i32 68, i8* null, i32 0) #6
  %sv_flags827 = getelementptr inbounds %struct.av* %cond826, i64 0, i32 2
  %207 = load i32* %sv_flags827, align 4, !tbaa !0
  %or828 = or i32 %207, 8388608
  store i32 %or828, i32* %sv_flags827, align 4, !tbaa !0
  br label %ro_magicalize

ro_magicalize:                                    ; preds = %while.cond, %sw.bb669, %if.end678, %sw.bb674, %cond.end825, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.end722
  %sv_any830 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %208 = load %struct.xpvgv** %sv_any830, align 8, !tbaa !3
  %xgv_gp831 = getelementptr inbounds %struct.xpvgv* %208, i64 0, i32 7
  %209 = load %struct.gp** %xgv_gp831, align 8, !tbaa !3
  %gp_sv832 = getelementptr inbounds %struct.gp* %209, i64 0, i32 0
  %210 = load %struct.sv** %gp_sv832, align 8, !tbaa !3
  %sv_flags833 = getelementptr inbounds %struct.sv* %210, i64 0, i32 2
  %211 = load i32* %sv_flags833, align 4, !tbaa !0
  %or834 = or i32 %211, 8388608
  store i32 %or834, i32* %sv_flags833, align 4, !tbaa !0
  br label %magicalize

magicalize:                                       ; preds = %land.lhs.true789, %lor.lhs.false785, %sw.bb754, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %sw.bb683, %sw.bb664, %sw.bb659, %ro_magicalize, %if.then793, %sw.bb795, %cond.end750, %sw.bb723
  %sv_any836 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %212 = load %struct.xpvgv** %sv_any836, align 8, !tbaa !3
  %xgv_gp837 = getelementptr inbounds %struct.xpvgv* %212, i64 0, i32 7
  %213 = load %struct.gp** %xgv_gp837, align 8, !tbaa !3
  %gp_sv838 = getelementptr inbounds %struct.gp* %213, i64 0, i32 0
  %214 = load %struct.sv** %gp_sv838, align 8, !tbaa !3
  call void @Perl_sv_magic(%struct.sv* %214, %struct.sv* %63, i32 0, i8* %name.1, i32 %conv133) #6
  br label %return

sw.bb839:                                         ; preds = %if.else704
  %sv_any840 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %215 = load %struct.xpvgv** %sv_any840, align 8, !tbaa !3
  %xgv_gp841 = getelementptr inbounds %struct.xpvgv* %215, i64 0, i32 7
  %216 = load %struct.gp** %xgv_gp841, align 8, !tbaa !3
  %gp_sv842 = getelementptr inbounds %struct.gp* %216, i64 0, i32 0
  %217 = load %struct.sv** %gp_sv842, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %217, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0)) #6
  %218 = load %struct.xpvgv** %sv_any840, align 8, !tbaa !3
  %xgv_gp844 = getelementptr inbounds %struct.xpvgv* %218, i64 0, i32 7
  %219 = load %struct.gp** %xgv_gp844, align 8, !tbaa !3
  %gp_sv845 = getelementptr inbounds %struct.gp* %219, i64 0, i32 0
  %220 = load %struct.sv** %gp_sv845, align 8, !tbaa !3
  store %struct.sv* %220, %struct.sv** @PL_formfeed, align 8, !tbaa !3
  br label %return

sw.bb846:                                         ; preds = %if.else704
  %sv_any847 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %221 = load %struct.xpvgv** %sv_any847, align 8, !tbaa !3
  %xgv_gp848 = getelementptr inbounds %struct.xpvgv* %221, i64 0, i32 7
  %222 = load %struct.gp** %xgv_gp848, align 8, !tbaa !3
  %gp_sv849 = getelementptr inbounds %struct.gp* %222, i64 0, i32 0
  %223 = load %struct.sv** %gp_sv849, align 8, !tbaa !3
  call void @Perl_sv_setpv(%struct.sv* %223, i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0)) #6
  br label %return

sw.bb850:                                         ; preds = %if.else704
  %sv_any851 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %224 = load %struct.xpvgv** %sv_any851, align 8, !tbaa !3
  %xgv_gp852 = getelementptr inbounds %struct.xpvgv* %224, i64 0, i32 7
  %225 = load %struct.gp** %xgv_gp852, align 8, !tbaa !3
  %gp_sv853 = getelementptr inbounds %struct.gp* %225, i64 0, i32 0
  %226 = load %struct.sv** %gp_sv853, align 8, !tbaa !3
  %sv_flags854 = getelementptr inbounds %struct.sv* %226, i64 0, i32 2
  %227 = load i32* %sv_flags854, align 4, !tbaa !0
  %and855 = and i32 %227, 254
  %cmp856 = icmp ugt i32 %and855, 5
  br i1 %cmp856, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb850
  %call858 = call signext i8 @Perl_sv_upgrade(%struct.sv* %226, i32 6) #6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb850
  %228 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !3
  %sv_any861 = getelementptr inbounds %struct.sv* %228, i64 0, i32 0
  %229 = load i8** %sv_any861, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %229, i64 32
  %230 = bitcast i8* %xnv_nv to double*
  %231 = load double* %230, align 8, !tbaa !6
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %226, i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0), double %231) #6
  %232 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !3
  %sv_any862 = getelementptr inbounds %struct.sv* %232, i64 0, i32 0
  %233 = load i8** %sv_any862, align 8, !tbaa !3
  %xnv_nv863 = getelementptr inbounds i8* %233, i64 32
  %234 = bitcast i8* %xnv_nv863 to double*
  %235 = load double* %234, align 8, !tbaa !6
  %sv_any864 = getelementptr inbounds %struct.sv* %226, i64 0, i32 0
  %236 = load i8** %sv_any864, align 8, !tbaa !3
  %xnv_nv865 = getelementptr inbounds i8* %236, i64 32
  %237 = bitcast i8* %xnv_nv865 to double*
  store double %235, double* %237, align 8, !tbaa !6
  %238 = load i32* %sv_flags854, align 4, !tbaa !0
  %or869 = or i32 %238, 42074112
  store i32 %or869, i32* %sv_flags854, align 4, !tbaa !0
  br label %return

sw.bb870:                                         ; preds = %if.else704
  %sv_any872 = bitcast %struct.sv* %63 to %struct.xpvgv**
  %239 = load %struct.xpvgv** %sv_any872, align 8, !tbaa !3
  %xgv_gp873 = getelementptr inbounds %struct.xpvgv* %239, i64 0, i32 7
  %240 = load %struct.gp** %xgv_gp873, align 8, !tbaa !3
  %gp_sv874 = getelementptr inbounds %struct.gp* %240, i64 0, i32 0
  %241 = load %struct.sv** %gp_sv874, align 8, !tbaa !3
  %242 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !3
  store %struct.sv* %242, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool875 = icmp eq %struct.sv* %242, null
  br i1 %tobool875, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.bb870
  %sv_refcnt876 = getelementptr inbounds %struct.sv* %242, i64 0, i32 1
  %243 = load i32* %sv_refcnt876, align 4, !tbaa !0
  %inc877 = add i32 %243, 1
  store i32 %inc877, i32* %sv_refcnt876, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %sw.bb870, %land.rhs
  %244 = load %struct.xpvgv** %sv_any872, align 8, !tbaa !3
  %xgv_gp880 = getelementptr inbounds %struct.xpvgv* %244, i64 0, i32 7
  %245 = load %struct.gp** %xgv_gp880, align 8, !tbaa !3
  %gp_sv881 = getelementptr inbounds %struct.gp* %245, i64 0, i32 0
  store %struct.sv* %242, %struct.sv** %gp_sv881, align 8, !tbaa !3
  call void @Perl_sv_free(%struct.sv* %241) #6
  br label %return

return:                                           ; preds = %if.end85, %if.then35, %lor.lhs.false40, %while.body, %if.end638, %if.else477, %cond.end507, %if.then517, %land.lhs.true552, %if.then556, %cond.end586, %if.then652, %if.then472, %sw.bb727, %if.then733, %sw.bb706, %if.else704, %land.end, %lor.end, %sw.bb846, %sw.bb839, %magicalize, %sw.bb683, %if.end678, %sw.bb669, %sw.bb664, %sw.bb659, %sw.bb649, %sw.bb594, %sw.bb569, %sw.bb524, %cond.end540, %land.lhs.true549, %sw.bb514, %sw.bb479, %if.else378, %if.then375, %if.then360, %if.then358, %lor.lhs.false349, %if.end346, %if.end342, %if.then315, %cond.false123, %if.then120
  %retval.4 = phi %struct.gv* [ %28, %cond.false123 ], [ %gv.1, %if.then120 ], [ null, %if.then315 ], [ null, %if.end342 ], [ null, %if.end346 ], [ null, %lor.lhs.false349 ], [ %64, %if.then358 ], [ %64, %if.then360 ], [ %64, %if.then375 ], [ %64, %if.else378 ], [ %64, %sw.bb479 ], [ %64, %sw.bb514 ], [ %64, %land.lhs.true549 ], [ %64, %cond.end540 ], [ %64, %sw.bb524 ], [ %64, %sw.bb569 ], [ %64, %sw.bb594 ], [ %64, %sw.bb649 ], [ %64, %sw.bb659 ], [ %64, %sw.bb664 ], [ %64, %sw.bb669 ], [ %64, %if.end678 ], [ %64, %sw.bb683 ], [ %64, %magicalize ], [ %64, %sw.bb839 ], [ %64, %sw.bb846 ], [ %64, %lor.end ], [ %64, %land.end ], [ %64, %if.else704 ], [ %64, %sw.bb706 ], [ %64, %if.then733 ], [ %64, %sw.bb727 ], [ %64, %if.then472 ], [ %64, %if.then652 ], [ %64, %cond.end586 ], [ %64, %if.then556 ], [ %64, %land.lhs.true552 ], [ %64, %if.then517 ], [ %64, %cond.end507 ], [ %64, %if.else477 ], [ %64, %if.end638 ], [ %64, %while.body ], [ null, %lor.lhs.false40 ], [ null, %if.then35 ], [ null, %if.end85 ]
  ret %struct.gv* %retval.4
}

; Function Attrs: optsize
declare i8* @Perl_savepv(i8*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_idcont(i8*) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_digit(i8*) #1

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_mess(i8*, ...) #1

; Function Attrs: optsize
declare void @Perl_qerror(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_gv_init_sv(%struct.gv* %gv, i32 %sv_type) #0 {
entry:
  switch i32 %sv_type, label %sw.epilog [
    i32 15, label %sw.bb
    i32 10, label %sw.bb14
    i32 11, label %sw.bb29
  ]

sw.bb:                                            ; preds = %entry
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %cond.false10, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %0 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 2
  %1 = load i32* %0, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true1, label %cond.false10

land.lhs.true1:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool2 = icmp eq %struct.gp* %3, null
  br i1 %tobool2, label %cond.false10, label %cond.true

cond.true:                                        ; preds = %land.lhs.true1
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool5 = icmp eq %struct.io* %4, null
  br i1 %tobool5, label %cond.false10, label %sw.epilog

cond.false10:                                     ; preds = %cond.true, %land.lhs.true1, %sw.bb, %land.lhs.true
  %call = tail call %struct.gv* @Perl_gv_IOadd(%struct.gv* %gv) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %sv_any15 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %5 = load %struct.xpvgv** %sv_any15, align 8, !tbaa !3
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp16, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %6, i64 0, i32 4
  %7 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool17 = icmp eq %struct.av* %7, null
  br i1 %tobool17, label %cond.false22, label %sw.epilog

cond.false22:                                     ; preds = %sw.bb14
  %call23 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %gv) #7
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %sv_any30 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any30, align 8, !tbaa !3
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp31, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %9, i64 0, i32 5
  %10 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool32 = icmp eq %struct.hv* %10, null
  br i1 %tobool32, label %cond.false37, label %sw.epilog

cond.false37:                                     ; preds = %sw.bb29
  %call38 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %gv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb14, %cond.true, %cond.false37, %cond.false22, %cond.false10, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_require_errno(%struct.gv* %gv) #0 {
entry:
  %call = tail call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i32 5, i32 0) #7
  %tobool = icmp eq %struct.hv* %call, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call.i = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %call, i8* getelementptr inbounds ([8 x i8]* @.str82, i64 0, i64 0), i32 1) #6
  %tobool2 = icmp eq %struct.gv* %call.i, null
  br i1 %tobool2, label %if.then, label %if.end11

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @Perl_push_scope() #6
  %call3 = tail call %struct.sv* @Perl_save_scalar(%struct.gv* %gv) #6
  %call4 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5) #6
  tail call void (i32, %struct.sv*, %struct.sv*, ...)* @Perl_load_module(i32 2, %struct.sv* %call4, %struct.sv* null) #6
  tail call void @Perl_pop_scope() #6
  %call5 = tail call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i32 5, i32 0) #7
  %tobool6 = icmp eq %struct.hv* %call5, null
  br i1 %tobool6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then
  %call.i15 = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %call5, i8* getelementptr inbounds ([8 x i8]* @.str82, i64 0, i64 0), i32 1) #6
  %tobool9 = icmp eq %struct.gv* %call.i15, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %if.then
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([48 x i8]* @.str83, i64 0, i64 0)) #6
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %lor.lhs.false7, %if.then10
  ret void
}

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* nocapture %gv, i8* %prefix, i8 signext %keepmain) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 10
  %1 = load %struct.hv** %xgv_stash, align 8, !tbaa !3
  %tobool = icmp eq %struct.hv* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %2, 1223753727
  store i32 %and, i32* %sv_flags, align 4, !tbaa !0
  %and2 = and i32 %2, 2097152
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %call = tail call i32 @Perl_sv_backoff(%struct.sv* %sv) #6
  br label %return

if.end:                                           ; preds = %entry
  %tobool5 = icmp ne i8* %prefix, null
  %cond = select i1 %tobool5, i8* %prefix, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0)
  tail call void @Perl_sv_setpv(%struct.sv* %sv, i8* %cond) #6
  %sv_any6 = getelementptr inbounds %struct.hv* %1, i64 0, i32 0
  %3 = load %struct.xpvhv** %sv_any6, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %3, i64 0, i32 10
  %4 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool7 = icmp ne i8* %4, null
  %. = select i1 %tobool7, i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str55, i64 0, i64 0)
  %tobool10 = icmp eq i8 %keepmain, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  %call11 = tail call i32 @strcmp(i8* %., i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0)) #6
  %tobool12 = icmp eq i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @Perl_sv_catpv(%struct.sv* %sv, i8* %.) #6
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i64 2, i32 2) #6
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false, %if.then13
  %5 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 8
  %6 = load i8** %xgv_name, align 8, !tbaa !3
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 9
  %7 = load i64* %xgv_namelen, align 8, !tbaa !4
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* %6, i64 %7, i32 2) #6
  br label %return

return:                                           ; preds = %land.rhs, %if.then, %if.end14
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_fullname3(%struct.sv* %sv, %struct.gv* nocapture %gv, i8* %prefix) #0 {
entry:
  tail call void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* %gv, i8* %prefix, i8 signext 1) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_efullname4(%struct.sv* %sv, %struct.gv* nocapture %gv, i8* %prefix, i8 signext %keepmain) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_egv = getelementptr inbounds %struct.gp* %1, i64 0, i32 6
  %2 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  %tobool = icmp eq %struct.gv* %2, null
  %gv. = select i1 %tobool, %struct.gv* %gv, %struct.gv* %2
  tail call void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* %gv., i8* %prefix, i8 signext %keepmain) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_efullname3(%struct.sv* %sv, %struct.gv* nocapture %gv, i8* %prefix) #0 {
entry:
  %sv_any.i = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any.i, align 8, !tbaa !3
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !3
  %gp_egv.i = getelementptr inbounds %struct.gp* %1, i64 0, i32 6
  %2 = load %struct.gv** %gp_egv.i, align 8, !tbaa !3
  %tobool.i = icmp eq %struct.gv* %2, null
  %gv..i = select i1 %tobool.i, %struct.gv* %gv, %struct.gv* %2
  tail call void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* %gv..i, i8* %prefix, i8 signext 1) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_fullname(%struct.sv* %sv, %struct.gv* %gv) #0 {
entry:
  %0 = bitcast %struct.gv* %gv to %struct.sv*
  %cmp = icmp eq %struct.sv* %0, %sv
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0)
  tail call void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* %gv, i8* %cond, i8 signext 1) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_efullname(%struct.sv* %sv, %struct.gv* %gv) #0 {
entry:
  %0 = bitcast %struct.gv* %gv to %struct.sv*
  %cmp = icmp eq %struct.sv* %0, %sv
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0)
  %sv_any.i = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any.i, align 8, !tbaa !3
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 7
  %2 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !3
  %gp_egv.i = getelementptr inbounds %struct.gp* %2, i64 0, i32 6
  %3 = load %struct.gv** %gp_egv.i, align 8, !tbaa !3
  %tobool.i = icmp eq %struct.gv* %3, null
  %gv..i = select i1 %tobool.i, %struct.gv* %gv, %struct.gv* %3
  tail call void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* %gv..i, i8* %cond, i8 signext 1) #6
  ret void
}

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_check(%struct.hv* %stash) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %stash, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %1 = bitcast %struct.xpvhv* %0 to %struct.he***
  %2 = load %struct.he*** %1, align 8, !tbaa !3
  %tobool = icmp eq %struct.he** %2, null
  br i1 %tobool, label %for.end90, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %xhv_max126 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %3 = load i64* %xhv_max126, align 8, !tbaa !4
  %conv127 = trunc i64 %3 to i32
  %cmp128 = icmp slt i32 %conv127, 0
  br i1 %cmp128, label %for.end90, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc89.for.body_crit_edge
  %4 = phi %struct.he** [ %.pre, %for.inc89.for.body_crit_edge ], [ %2, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc89.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %5 = phi %struct.xpvhv* [ %35, %for.inc89.for.body_crit_edge ], [ %0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.he** %4, i64 %indvars.iv
  %entry1.0123 = load %struct.he** %arrayidx, align 8
  %tobool7124 = icmp eq %struct.he* %entry1.0123, null
  br i1 %tobool7124, label %for.inc89, label %for.body8

for.body8:                                        ; preds = %for.body, %for.inc
  %entry1.0125 = phi %struct.he* [ %entry1.0, %for.inc ], [ %entry1.0123, %for.body ]
  %hent_hek = getelementptr inbounds %struct.he* %entry1.0125, i64 0, i32 1
  %6 = load %struct.hek** %hent_hek, align 8, !tbaa !3
  %hek_len = getelementptr inbounds %struct.hek* %6, i64 0, i32 1
  %7 = load i32* %hek_len, align 4, !tbaa !0
  %sub = add nsw i32 %7, -1
  %idxprom9 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds %struct.hek* %6, i64 0, i32 2, i64 %idxprom9
  %8 = load i8* %arrayidx11, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %8, 58
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body8
  %hent_val = getelementptr inbounds %struct.he* %entry1.0125, i64 0, i32 2
  %9 = load %struct.sv** %hent_val, align 8, !tbaa !3
  %tobool15 = icmp eq %struct.sv* %9, null
  br i1 %tobool15, label %if.else, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true
  %10 = getelementptr inbounds %struct.sv* %9, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !0
  %and = and i32 %11, 255
  %cmp17 = icmp eq i32 %and, 13
  br i1 %cmp17, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %sv_any20 = bitcast %struct.sv* %9 to %struct.xpvgv**
  %12 = load %struct.xpvgv** %sv_any20, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 7
  %13 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %13, i64 0, i32 5
  %14 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool21 = icmp eq %struct.hv* %14, null
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %15 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  %cmp23 = icmp eq %struct.hv* %14, %15
  %cmp26 = icmp eq %struct.hv* %14, %stash
  %or.cond = or i1 %cmp23, %cmp26
  br i1 %or.cond, label %for.inc, label %if.then28

if.then28:                                        ; preds = %if.then22
  tail call void @Perl_gv_check(%struct.hv* %14) #7
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true19, %land.lhs.true, %land.lhs.true16, %for.body8
  %arraydecay = getelementptr inbounds %struct.hek* %6, i64 0, i32 2, i64 0
  %16 = load i8* %arraydecay, align 1, !tbaa !1
  %.off = add i8 %16, -65
  %17 = icmp ult i8 %.off, 26
  %.off120 = add i8 %16, -97
  %18 = icmp ult i8 %.off120, 26
  %or.cond122 = or i1 %17, %18
  br i1 %or.cond122, label %if.then55, label %for.inc

if.then55:                                        ; preds = %if.else
  %hent_val56 = getelementptr inbounds %struct.he* %entry1.0125, i64 0, i32 2
  %19 = load %struct.sv** %hent_val56, align 8, !tbaa !3
  %20 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %21 = load i32* %20, align 4, !tbaa !0
  %and58 = and i32 %21, 255
  %cmp59 = icmp eq i32 %and58, 13
  br i1 %cmp59, label %lor.lhs.false61, label %for.inc

lor.lhs.false61:                                  ; preds = %if.then55
  %sv_any62 = bitcast %struct.sv* %19 to %struct.xpvgv**
  %22 = load %struct.xpvgv** %sv_any62, align 8, !tbaa !3
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 11
  %23 = load i8* %xgv_flags, align 1, !tbaa !1
  %and64 = and i8 %23, 2
  %tobool65 = icmp eq i8 %and64, 0
  br i1 %tobool65, label %if.end67, label %for.inc

if.end67:                                         ; preds = %lor.lhs.false61
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %24 = load %struct.gp** %xgv_gp69, align 8, !tbaa !3
  %gp_file = getelementptr inbounds %struct.gp* %24, i64 0, i32 11
  %25 = load i8** %gp_file, align 8, !tbaa !3
  %tobool70 = icmp eq i8* %25, null
  br i1 %tobool70, label %if.end81, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end67
  %26 = load i8* %25, align 1, !tbaa !1
  %cmp73 = icmp eq i8 %26, 47
  br i1 %cmp73, label %land.lhs.true75, label %if.end81

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %call = tail call i8* @Perl_instr(i8* %25, i8* getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0)) #6
  %tobool76 = icmp eq i8* %call, null
  br i1 %tobool76, label %lor.lhs.false77, label %for.inc

lor.lhs.false77:                                  ; preds = %land.lhs.true75
  %call78 = tail call i8* @Perl_instr(i8* %25, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0)) #6
  %tobool79 = icmp eq i8* %call78, null
  br i1 %tobool79, label %lor.lhs.false77.if.end81_crit_edge, label %for.inc

lor.lhs.false77.if.end81_crit_edge:               ; preds = %lor.lhs.false77
  %.pre131 = load %struct.xpvgv** %sv_any62, align 8, !tbaa !3
  %xgv_gp83.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre131, i64 0, i32 7
  %.pre132 = load %struct.gp** %xgv_gp83.phi.trans.insert, align 8, !tbaa !3
  br label %if.end81

if.end81:                                         ; preds = %lor.lhs.false77.if.end81_crit_edge, %if.end67, %land.lhs.true71
  %27 = phi %struct.gp* [ %.pre132, %lor.lhs.false77.if.end81_crit_edge ], [ %24, %if.end67 ], [ %24, %land.lhs.true71 ]
  %gp_line = getelementptr inbounds %struct.gp* %27, i64 0, i32 10
  %28 = load i32* %gp_line, align 4, !tbaa !0
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_line = getelementptr inbounds %struct.cop* %29, i64 0, i32 13
  store i32 %28, i32* %cop_line, align 4, !tbaa !0
  %call84 = tail call %struct.gv* @Perl_gv_fetchfile(i8* %25) #7
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_filegv = getelementptr inbounds %struct.cop* %30, i64 0, i32 10
  store %struct.gv* %call84, %struct.gv** %cop_filegv, align 8, !tbaa !3
  %31 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %31, i64 0, i32 10
  %32 = load i8** %xhv_name, align 8, !tbaa !3
  %33 = load %struct.xpvgv** %sv_any62, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 8
  %34 = load i8** %xgv_name, align 8, !tbaa !3
  tail call void (i32, i8*, ...)* @Perl_warner(i32 14, i8* getelementptr inbounds ([44 x i8]* @.str62, i64 0, i64 0), i8* %32, i8* %34) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then22, %lor.lhs.false77, %land.lhs.true75, %lor.lhs.false61, %if.then55, %if.then28, %if.end81
  %hent_next = getelementptr inbounds %struct.he* %entry1.0125, i64 0, i32 0
  %entry1.0 = load %struct.he** %hent_next, align 8
  %tobool7 = icmp eq %struct.he* %entry1.0, null
  br i1 %tobool7, label %for.cond6.for.inc89_crit_edge, label %for.body8

for.cond6.for.inc89_crit_edge:                    ; preds = %for.inc
  %.pre130 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  br label %for.inc89

for.inc89:                                        ; preds = %for.body, %for.cond6.for.inc89_crit_edge
  %35 = phi %struct.xpvhv* [ %.pre130, %for.cond6.for.inc89_crit_edge ], [ %5, %for.body ]
  %xhv_max = getelementptr inbounds %struct.xpvhv* %35, i64 0, i32 2
  %36 = load i64* %xhv_max, align 8, !tbaa !4
  %conv = trunc i64 %36 to i32
  %37 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %37, %conv
  br i1 %cmp, label %for.inc89.for.body_crit_edge, label %for.end90

for.inc89.for.body_crit_edge:                     ; preds = %for.inc89
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.phi.trans.insert = bitcast %struct.xpvhv* %35 to %struct.he***
  %.pre = load %struct.he*** %.phi.trans.insert, align 8, !tbaa !3
  br label %for.body

for.end90:                                        ; preds = %for.cond.preheader, %for.inc89, %entry
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_instr(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.gv* @Perl_newGVgen(i8* %pack) #0 {
entry:
  %0 = load i32* @PL_gensym, align 4, !tbaa !0
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @PL_gensym, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call = tail call i8* (i8*, ...)* @Perl_form(i8* getelementptr inbounds ([13 x i8]* @.str63, i64 0, i64 0), i8* %pack, i64 %conv) #6
  %call1 = tail call %struct.gv* @Perl_gv_fetchpv(i8* %call, i32 1, i32 13) #7
  ret %struct.gv* %call1
}

; Function Attrs: optsize
declare i8* @Perl_form(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_gp_free(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.gp* %1, null
  br i1 %tobool1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %gp_refcnt = getelementptr inbounds %struct.gp* %1, i64 0, i32 1
  %2 = load i32* %gp_refcnt, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.end
  %3 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %3, i64 0, i32 14
  %4 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp3 = icmp eq %struct.sv* %4, null
  br i1 %cmp3, label %if.then13, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.then2
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings5 = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings5, align 8, !tbaa !3
  %cmp6 = icmp eq %struct.sv* %6, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings8 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings8, align 8, !tbaa !3
  %cmp9 = icmp eq %struct.sv* %8, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp9, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %9 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings10 = getelementptr inbounds %struct.cop* %9, i64 0, i32 14
  %10 = load %struct.sv** %cop_warnings10, align 8, !tbaa !3
  %sv_any11 = getelementptr inbounds %struct.sv* %10, i64 0, i32 0
  %11 = load i8** %sv_any11, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %11 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %12, i64 6
  %13 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %13, 1
  %tobool12 = icmp eq i8 %and, 0
  br i1 %tobool12, label %return, label %if.then13

if.then13:                                        ; preds = %land.lhs.true, %lor.lhs.false4, %if.then2
  tail call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([43 x i8]* @.str64, i64 0, i64 0)) #6
  br label %return

if.end15:                                         ; preds = %if.end
  %gp_cv = getelementptr inbounds %struct.gp* %1, i64 0, i32 7
  %14 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool16 = icmp eq %struct.cv* %14, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %15 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %inc = add i32 %15, 1
  store i32 %inc, i32* @PL_sub_generation, align 4, !tbaa !0
  %.pre = load i32* %gp_refcnt, align 4, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.then17
  %16 = phi i32 [ %2, %if.end15 ], [ %.pre, %if.then17 ]
  %dec = add i32 %16, -1
  store i32 %dec, i32* %gp_refcnt, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %dec, 0
  br i1 %cmp20, label %if.end28, label %if.then22

if.then22:                                        ; preds = %if.end18
  %gp_egv = getelementptr inbounds %struct.gp* %1, i64 0, i32 6
  %17 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  %cmp23 = icmp eq %struct.gv* %17, %gv
  br i1 %cmp23, label %if.then25, label %return

if.then25:                                        ; preds = %if.then22
  store %struct.gv* null, %struct.gv** %gp_egv, align 8, !tbaa !3
  br label %return

if.end28:                                         ; preds = %if.end18
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %18 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %tobool29 = icmp eq %struct.sv* %18, null
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end28
  tail call void @Perl_sv_free(%struct.sv* %18) #6
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.then30
  %gp_av = getelementptr inbounds %struct.gp* %1, i64 0, i32 4
  %19 = load %struct.av** %gp_av, align 8, !tbaa !3
  %tobool33 = icmp eq %struct.av* %19, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end32
  %20 = bitcast %struct.av* %19 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %20) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.then34
  %gp_hv = getelementptr inbounds %struct.gp* %1, i64 0, i32 5
  %21 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool37 = icmp eq %struct.hv* %21, null
  br i1 %tobool37, label %if.end55, label %if.then38

if.then38:                                        ; preds = %if.end36
  %22 = load %struct.hv** @PL_stashcache, align 8, !tbaa !3
  %tobool39 = icmp eq %struct.hv* %22, null
  br i1 %tobool39, label %if.end53, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.then38
  %sv_any42 = getelementptr inbounds %struct.hv* %21, i64 0, i32 0
  %23 = load %struct.xpvhv** %sv_any42, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %23, i64 0, i32 10
  %24 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool43 = icmp eq i8* %24, null
  br i1 %tobool43, label %if.end53, label %if.then44

if.then44:                                        ; preds = %land.lhs.true40
  %call = tail call i64 @strlen(i8* %24) #6
  %conv51 = trunc i64 %call to i32
  %call52 = tail call %struct.sv* @Perl_hv_delete(%struct.hv* %22, i8* %24, i32 %conv51, i32 2) #6
  %.pre94 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true40, %if.then38, %if.then44
  %25 = phi %struct.hv* [ %21, %land.lhs.true40 ], [ %21, %if.then38 ], [ %.pre94, %if.then44 ]
  %26 = bitcast %struct.hv* %25 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %26) #6
  br label %if.end55

if.end55:                                         ; preds = %if.end36, %if.end53
  %gp_io = getelementptr inbounds %struct.gp* %1, i64 0, i32 2
  %27 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool56 = icmp eq %struct.io* %27, null
  br i1 %tobool56, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end55
  %28 = bitcast %struct.io* %27 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %28) #6
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.then57
  %29 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool61 = icmp eq %struct.cv* %29, null
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end59
  %30 = bitcast %struct.cv* %29 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %30) #6
  br label %if.end64

if.end64:                                         ; preds = %if.end59, %if.then62
  %gp_form = getelementptr inbounds %struct.gp* %1, i64 0, i32 3
  %31 = load %struct.cv** %gp_form, align 8, !tbaa !3
  %tobool65 = icmp eq %struct.cv* %31, null
  br i1 %tobool65, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end64
  %32 = bitcast %struct.cv* %31 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %32) #6
  br label %if.end68

if.end68:                                         ; preds = %if.end64, %if.then66
  %33 = bitcast %struct.gp* %1 to i8*
  tail call void @Perl_safesysfree(i8* %33) #6
  %34 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp70 = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  store %struct.gp* null, %struct.gp** %xgv_gp70, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false7, %lor.lhs.false, %entry, %if.then22, %if.then25, %if.then13, %if.end68
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_magic_freeovrld(%struct.sv* nocapture %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %mg_ptr = getelementptr inbounds %struct.magic* %mg, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !3
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds i8* %0, i64 16
  %1 = bitcast i8* %flags to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %and = and i32 %2, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %table = getelementptr inbounds i8* %0, i64 24
  %3 = bitcast i8* %table to [66 x %struct.cv*]*
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [66 x %struct.cv*]* %3, i64 0, i64 %indvars.iv
  %4 = load %struct.cv** %arrayidx, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.cv* %4, null
  br i1 %cmp2, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  %5 = bitcast %struct.cv* %4 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %5) #6
  store %struct.cv* null, %struct.cv** %arrayidx, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 66
  br i1 %exitcond, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.inc, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_Gv_AMupdate(%struct.hv* %stash) #0 {
entry:
  %amt = alloca %struct.am_table, align 8
  %0 = bitcast %struct.hv* %stash to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %0, i32 99) #6
  %tobool = icmp eq %struct.magic* %call, null
  br i1 %tobool, label %cond.end, label %land.lhs.true

cond.end:                                         ; preds = %entry
  %1 = bitcast %struct.am_table* %amt to i8*
  call void @llvm.lifetime.start(i64 560, i8* %1) #2
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mg_ptr = getelementptr inbounds %struct.magic* %call, i64 0, i32 6
  %2 = load i8** %mg_ptr, align 8, !tbaa !3
  %3 = bitcast %struct.am_table* %amt to i8*
  call void @llvm.lifetime.start(i64 560, i8* %3) #2
  %was_ok_am = getelementptr inbounds i8* %2, i64 8
  %4 = bitcast i8* %was_ok_am to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  %6 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %was_ok_sub = bitcast i8* %2 to i32*
  %7 = load i32* %was_ok_sub, align 4, !tbaa !0
  %8 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %flags = getelementptr inbounds i8* %2, i64 16
  %9 = bitcast i8* %flags to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %.tr = trunc i32 %10 to i8
  %conv = and i8 %.tr, 2
  br label %cleanup

if.end:                                           ; preds = %cond.end, %land.lhs.true2, %land.lhs.true
  %11 = phi i8* [ %3, %land.lhs.true2 ], [ %3, %land.lhs.true ], [ %1, %cond.end ]
  %call4 = call i32 @Perl_sv_unmagic(%struct.sv* %0, i32 99) #6
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 560, i32 8, i1 false)
  %12 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %was_ok_am5 = getelementptr inbounds %struct.am_table* %amt, i64 0, i32 1
  store i64 %12, i64* %was_ok_am5, align 8, !tbaa !4
  %13 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %was_ok_sub6 = getelementptr inbounds %struct.am_table* %amt, i64 0, i32 0
  store i32 %13, i32* %was_ok_sub6, align 8, !tbaa !0
  %fallback = getelementptr inbounds %struct.am_table* %amt, i64 0, i32 4
  store i64 2, i64* %fallback, align 8, !tbaa !4
  %flags7 = getelementptr inbounds %struct.am_table* %amt, i64 0, i32 2
  store i32 0, i32* %flags7, align 8, !tbaa !0
  %14 = load i8** getelementptr inbounds ([66 x i8*]* @PL_AMG_names, i64 0, i64 0), align 8, !tbaa !3
  %call8 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %14, i64 2, i32 -1) #7
  %tobool9 = icmp eq %struct.gv* %call8, null
  br i1 %tobool9, label %for.body.lr.ph, label %if.else

if.else:                                          ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.gv* %call8, i64 0, i32 0
  %15 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_sv = getelementptr inbounds %struct.gp* %16, i64 0, i32 0
  %17 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %tobool14 = icmp eq %struct.sv* %17, null
  br i1 %tobool14, label %if.else55, label %cond.false16

cond.false16:                                     ; preds = %if.else
  %sv_flags = getelementptr inbounds %struct.sv* %17, i64 0, i32 2
  %18 = load i32* %sv_flags, align 4, !tbaa !0
  %and17 = and i32 %18, 262144
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %cond.false33, label %cond.true19

cond.true19:                                      ; preds = %cond.false16
  %sv_any20 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %19 = load i8** %sv_any20, align 8, !tbaa !3
  %20 = bitcast i8* %19 to %struct.xpv*
  store %struct.xpv* %20, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool21 = icmp eq i8* %19, null
  br i1 %tobool21, label %if.else55, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %cond.true19
  %xpv_cur = getelementptr inbounds i8* %19, i64 8
  %21 = bitcast i8* %xpv_cur to i64*
  %22 = load i64* %21, align 8, !tbaa !4
  %cmp23 = icmp ugt i64 %22, 1
  br i1 %cmp23, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true22
  %tobool26 = icmp eq i64 %22, 0
  br i1 %tobool26, label %if.else55, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %19 to i8**
  %23 = load i8** %xpv_pv, align 8, !tbaa !3
  %24 = load i8* %23, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %24, 48
  br i1 %cmp29, label %if.else55, label %if.then53

cond.false33:                                     ; preds = %cond.false16
  %and35 = and i32 %18, 65536
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %cond.false41, label %cond.true37

cond.true37:                                      ; preds = %cond.false33
  %sv_any38 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %25 = load i8** %sv_any38, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %25, i64 24
  %26 = bitcast i8* %xiv_iv to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %cmp39 = icmp eq i64 %27, 0
  br i1 %cmp39, label %if.else55, label %if.then53

cond.false41:                                     ; preds = %cond.false33
  %and43 = and i32 %18, 131072
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %cond.false49, label %cond.true45

cond.true45:                                      ; preds = %cond.false41
  %sv_any46 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %28 = load i8** %sv_any46, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %28, i64 32
  %29 = bitcast i8* %xnv_nv to double*
  %30 = load double* %29, align 8, !tbaa !6
  %cmp47 = fcmp une double %30, 0.000000e+00
  br i1 %cmp47, label %if.then53, label %if.else55

cond.false49:                                     ; preds = %cond.false41
  %call50 = call signext i8 @Perl_sv_2bool(%struct.sv* %17) #6
  %tobool52 = icmp eq i8 %call50, 0
  br i1 %tobool52, label %if.else55, label %if.then53

if.then53:                                        ; preds = %land.lhs.true27, %cond.true37, %cond.false49, %land.lhs.true22, %cond.true45
  store i64 3, i64* %fallback, align 8, !tbaa !4
  br label %for.body69

if.else55:                                        ; preds = %cond.false49, %if.else, %land.lhs.true27, %lor.lhs.false, %cond.true19, %cond.true37, %cond.true45
  %sv_flags56.pre-phi = phi i32* [ %sv_flags, %land.lhs.true27 ], [ %sv_flags, %lor.lhs.false ], [ %sv_flags, %cond.true19 ], [ %sv_flags, %cond.true37 ], [ %sv_flags, %cond.true45 ], [ inttoptr (i64 12 to i32*), %if.else ], [ %sv_flags, %cond.false49 ]
  %31 = load i32* %sv_flags56.pre-phi, align 4, !tbaa !0
  %and57 = and i32 %31, 118423552
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %for.body69, label %if.then59

if.then59:                                        ; preds = %if.else55
  store i64 1, i64* %fallback, align 8, !tbaa !4
  br label %for.body69

for.body.lr.ph:                                   ; preds = %if.end
  %scevgep = getelementptr %struct.am_table* %amt, i64 0, i32 3, i64 1
  %scevgep241 = bitcast %struct.cv** %scevgep to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep241, i8 0, i64 512, i32 8, i1 false)
  br label %for.body69

for.body69:                                       ; preds = %if.else55, %if.then59, %if.then53, %for.body.lr.ph, %land.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.end ], [ 65, %for.body.lr.ph ], [ 1, %if.then53 ], [ 1, %if.then59 ], [ 1, %if.else55 ]
  %filled.0233 = phi i32 [ %filled.1227, %land.end ], [ 0, %for.body.lr.ph ], [ 0, %if.then53 ], [ 0, %if.then59 ], [ 0, %if.else55 ]
  %have_ovl.0231 = phi i32 [ %have_ovl.1226, %land.end ], [ 0, %for.body.lr.ph ], [ 0, %if.then53 ], [ 0, %if.then59 ], [ 0, %if.else55 ]
  %arrayidx71 = getelementptr inbounds [66 x i8*]* @PL_AMG_names, i64 0, i64 %indvars.iv
  %32 = load i8** %arrayidx71, align 8, !tbaa !3
  %33 = trunc i64 %indvars.iv to i32
  %cmp72 = icmp sgt i32 %33, 64
  %add.ptr = getelementptr inbounds i8* %32, i64 1
  %cond79 = select i1 %cmp72, i8* %32, i8* %add.ptr
  %call80 = call i64 @strlen(i8* %32) #6
  br i1 %cmp72, label %if.then83, label %if.else85

if.then83:                                        ; preds = %for.body69
  %call84 = call %struct.gv* @Perl_gv_fetchmeth_autoload(%struct.hv* %stash, i8* %32, i64 %call80, i32 0) #7
  br label %if.end87

if.else85:                                        ; preds = %for.body69
  %call86 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %32, i64 %call80, i32 -1) #7
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.then83
  %gv.0 = phi %struct.gv* [ %call84, %if.then83 ], [ %call86, %if.else85 ]
  %tobool88 = icmp eq %struct.gv* %gv.0, null
  br i1 %tobool88, label %if.end158.thread, label %land.lhs.true89

if.end158.thread:                                 ; preds = %if.end87
  store %struct.sv* null, %struct.sv** @PL_Sv, align 8, !tbaa !3
  br label %land.end

land.lhs.true89:                                  ; preds = %if.end87
  %sv_any90 = getelementptr inbounds %struct.gv* %gv.0, i64 0, i32 0
  %34 = load %struct.xpvgv** %sv_any90, align 8, !tbaa !3
  %xgv_gp91 = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  %35 = load %struct.gp** %xgv_gp91, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %35, i64 0, i32 7
  %36 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool92 = icmp eq %struct.cv* %36, null
  br i1 %tobool92, label %if.then156, label %if.then93

if.then93:                                        ; preds = %land.lhs.true89
  %sv_any94 = getelementptr inbounds %struct.cv* %36, i64 0, i32 0
  %37 = load %struct.xpvcv** %sv_any94, align 8, !tbaa !3
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %37, i64 0, i32 12
  %38 = load %struct.gv** %xcv_gv, align 8, !tbaa !3
  %sv_any95 = getelementptr inbounds %struct.gv* %38, i64 0, i32 0
  %39 = load %struct.xpvgv** %sv_any95, align 8, !tbaa !3
  %xgv_namelen = getelementptr inbounds %struct.xpvgv* %39, i64 0, i32 9
  %40 = load i64* %xgv_namelen, align 8, !tbaa !4
  %cmp96 = icmp eq i64 %40, 3
  br i1 %cmp96, label %land.lhs.true98, label %if.end149

land.lhs.true98:                                  ; preds = %if.then93
  %xgv_name = getelementptr inbounds %struct.xpvgv* %39, i64 0, i32 8
  %41 = load i8** %xgv_name, align 8, !tbaa !3
  %call102 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %tobool103 = icmp eq i32 %call102, 0
  br i1 %tobool103, label %land.lhs.true104, label %if.end149

land.lhs.true104:                                 ; preds = %land.lhs.true98
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %39, i64 0, i32 10
  %42 = load %struct.hv** %xgv_stash, align 8, !tbaa !3
  %sv_any108 = getelementptr inbounds %struct.hv* %42, i64 0, i32 0
  %43 = load %struct.xpvhv** %sv_any108, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %43, i64 0, i32 10
  %44 = load i8** %xhv_name, align 8, !tbaa !3
  %call109 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #6
  %tobool110 = icmp eq i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end149

if.then111:                                       ; preds = %land.lhs.true104
  %gp_sv114 = getelementptr inbounds %struct.gp* %35, i64 0, i32 0
  %45 = load %struct.sv** %gp_sv114, align 8, !tbaa !3
  %sv_flags115 = getelementptr inbounds %struct.sv* %45, i64 0, i32 2
  %46 = load i32* %sv_flags115, align 4, !tbaa !0
  %and116 = and i32 %46, 262144
  %tobool117 = icmp eq i32 %and116, 0
  br i1 %tobool117, label %if.then126, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.then111
  %sv_any122 = getelementptr inbounds %struct.sv* %45, i64 0, i32 0
  %47 = load i8** %sv_any122, align 8, !tbaa !3
  %xpv_pv123 = bitcast i8* %47 to i8**
  %48 = load i8** %xpv_pv123, align 8, !tbaa !3
  %call124 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %stash, i8* %48, i32 0) #7
  %tobool125 = icmp eq %struct.gv* %call124, null
  br i1 %tobool125, label %lor.lhs.false118.if.then126_crit_edge, label %if.end145

lor.lhs.false118.if.then126_crit_edge:            ; preds = %lor.lhs.false118
  %.pre = load %struct.xpvgv** %sv_any90, align 8, !tbaa !3
  %xgv_gp128.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre243 = load %struct.gp** %xgv_gp128.phi.trans.insert, align 8, !tbaa !3
  %gp_sv129.phi.trans.insert = getelementptr inbounds %struct.gp* %.pre243, i64 0, i32 0
  %.pre244 = load %struct.sv** %gp_sv129.phi.trans.insert, align 8, !tbaa !3
  %sv_flags130.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre244, i64 0, i32 2
  %.pre245 = load i32* %sv_flags130.phi.trans.insert, align 4, !tbaa !0
  br label %if.then126

if.then126:                                       ; preds = %lor.lhs.false118.if.then126_crit_edge, %if.then111
  %49 = phi i32 [ %.pre245, %lor.lhs.false118.if.then126_crit_edge ], [ %46, %if.then111 ]
  %50 = phi %struct.sv* [ %.pre244, %lor.lhs.false118.if.then126_crit_edge ], [ %45, %if.then111 ]
  %51 = phi %struct.gp* [ %.pre243, %lor.lhs.false118.if.then126_crit_edge ], [ %35, %if.then111 ]
  %and131 = and i32 %49, 262144
  %tobool132 = icmp eq i32 %and131, 0
  br i1 %tobool132, label %cond.end137, label %cond.true133

cond.true133:                                     ; preds = %if.then126
  %sv_any134 = getelementptr inbounds %struct.sv* %50, i64 0, i32 0
  %52 = load i8** %sv_any134, align 8, !tbaa !3
  %xpv_pv135 = bitcast i8* %52 to i8**
  %53 = load i8** %xpv_pv135, align 8, !tbaa !3
  br label %cond.end137

cond.end137:                                      ; preds = %if.then126, %cond.true133
  %cond138 = phi i8* [ %53, %cond.true133 ], [ getelementptr inbounds ([4 x i8]* @.str67, i64 0, i64 0), %if.then126 ]
  %gp_cvgen = getelementptr inbounds %struct.gp* %51, i64 0, i32 8
  %54 = load i32* %gp_cvgen, align 4, !tbaa !0
  %tobool141 = icmp ne i32 %54, 0
  %cond142 = select i1 %tobool141, i8* getelementptr inbounds ([27 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str70, i64 0, i64 0)
  %sv_any143 = getelementptr inbounds %struct.hv* %stash, i64 0, i32 0
  %55 = load %struct.xpvhv** %sv_any143, align 8, !tbaa !3
  %xhv_name144 = getelementptr inbounds %struct.xpvhv* %55, i64 0, i32 10
  %56 = load i8** %xhv_name144, align 8, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([56 x i8]* @.str68, i64 0, i64 0), i8* %cond142, i8* %cond138, i8* %cond79, i8* %56) #6
  unreachable

if.end145:                                        ; preds = %lor.lhs.false118
  %sv_any146 = getelementptr inbounds %struct.gv* %call124, i64 0, i32 0
  %57 = load %struct.xpvgv** %sv_any146, align 8, !tbaa !3
  %xgv_gp147 = getelementptr inbounds %struct.xpvgv* %57, i64 0, i32 7
  %58 = load %struct.gp** %xgv_gp147, align 8, !tbaa !3
  %gp_cv148 = getelementptr inbounds %struct.gp* %58, i64 0, i32 7
  %59 = load %struct.cv** %gp_cv148, align 8, !tbaa !3
  br label %if.end149

if.end149:                                        ; preds = %land.lhs.true104, %land.lhs.true98, %if.end145, %if.then93
  %cv.0 = phi %struct.cv* [ %36, %land.lhs.true98 ], [ %36, %land.lhs.true104 ], [ %59, %if.end145 ], [ %36, %if.then93 ]
  %cmp150 = icmp slt i32 %33, 65
  %.have_ovl.0 = select i1 %cmp150, i32 1, i32 %have_ovl.0231
  br label %if.end158

if.then156:                                       ; preds = %land.lhs.true89
  %60 = bitcast %struct.gv* %gv.0 to %struct.cv*
  br label %if.end158

if.end158:                                        ; preds = %if.end149, %if.then156
  %have_ovl.1 = phi i32 [ %have_ovl.0231, %if.then156 ], [ %.have_ovl.0, %if.end149 ]
  %cv.2 = phi %struct.cv* [ %60, %if.then156 ], [ %cv.0, %if.end149 ]
  %61 = bitcast %struct.cv* %cv.2 to %struct.sv*
  store %struct.sv* %61, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool159 = icmp eq %struct.cv* %cv.2, null
  br i1 %tobool159, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end158
  %62 = getelementptr inbounds %struct.cv* %cv.2, i64 0, i32 1
  %63 = load i32* %62, align 4, !tbaa !0
  %inc160 = add i32 %63, 1
  store i32 %inc160, i32* %62, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %if.end158.thread, %if.end158, %land.rhs
  %64 = phi %struct.sv* [ null, %if.end158.thread ], [ %61, %if.end158 ], [ %61, %land.rhs ]
  %filled.1227 = phi i32 [ %filled.0233, %if.end158.thread ], [ 1, %if.end158 ], [ 1, %land.rhs ]
  %have_ovl.1226 = phi i32 [ %have_ovl.0231, %if.end158.thread ], [ %have_ovl.1, %if.end158 ], [ %have_ovl.1, %land.rhs ]
  %65 = bitcast %struct.sv* %64 to %struct.cv*
  %arrayidx164 = getelementptr inbounds %struct.am_table* %amt, i64 0, i32 3, i64 %indvars.iv
  store %struct.cv* %65, %struct.cv** %arrayidx164, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %66 = trunc i64 %indvars.iv.next to i32
  %cmp67 = icmp slt i32 %66, 66
  br i1 %cmp67, label %for.body69, label %for.end167

for.end167:                                       ; preds = %land.end
  %tobool168 = icmp eq i32 %filled.1227, 0
  %67 = load i32* %flags7, align 8, !tbaa !0
  br i1 %tobool168, label %if.end177, label %if.then169

if.then169:                                       ; preds = %for.end167
  %tobool171 = icmp eq i32 %have_ovl.1226, 0
  %or.or174.v = select i1 %tobool171, i32 1, i32 3
  %or.or174 = or i32 %67, %or.or174.v
  store i32 %or.or174, i32* %flags7, align 8, !tbaa !0
  call void @Perl_sv_magic(%struct.sv* %0, %struct.sv* null, i32 99, i8* %11, i32 560) #6
  %conv176 = trunc i32 %have_ovl.1226 to i8
  br label %cleanup

if.end177:                                        ; preds = %for.end167
  %and179 = and i32 %67, -2
  store i32 %and179, i32* %flags7, align 8, !tbaa !0
  call void @Perl_sv_magic(%struct.sv* %0, %struct.sv* null, i32 99, i8* %11, i32 24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %if.then169, %if.then
  %68 = phi i8* [ %3, %if.then ], [ %11, %if.then169 ], [ %11, %if.end177 ]
  %retval.0 = phi i8 [ %conv, %if.then ], [ %conv176, %if.then169 ], [ 0, %if.end177 ]
  call void @llvm.lifetime.end(i64 560, i8* %68) #2
  ret i8 %retval.0
}

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.cv* @Perl_gv_handler(%struct.hv* %stash, i32 %id) #0 {
entry:
  %tobool = icmp eq %struct.hv* %stash, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %stash, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 10
  %1 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %1, null
  br i1 %tobool1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast %struct.hv* %stash to %struct.sv*
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 99) #6
  %tobool2 = icmp eq %struct.magic* %call, null
  br i1 %tobool2, label %do_update, label %if.end6

do_update:                                        ; preds = %lor.lhs.false7, %if.end6, %if.end
  %call4 = tail call signext i8 @Perl_Gv_AMupdate(%struct.hv* %stash) #7
  %call5 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %2, i32 99) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do_update
  %mg.0 = phi %struct.magic* [ %call, %if.end ], [ %call5, %do_update ]
  %mg_ptr = getelementptr inbounds %struct.magic* %mg.0, i64 0, i32 6
  %3 = load i8** %mg_ptr, align 8, !tbaa !3
  %was_ok_am = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %was_ok_am to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  %6 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %lor.lhs.false7, label %do_update

lor.lhs.false7:                                   ; preds = %if.end6
  %was_ok_sub = bitcast i8* %3 to i32*
  %7 = load i32* %was_ok_sub, align 4, !tbaa !0
  %8 = load i32* @PL_sub_generation, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %7, %8
  br i1 %cmp8, label %if.end10, label %do_update

if.end10:                                         ; preds = %lor.lhs.false7
  %flags = getelementptr inbounds i8* %3, i64 16
  %9 = bitcast i8* %flags to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %and = and i32 %10, 1
  %tobool11 = icmp eq i32 %and, 0
  br i1 %tobool11, label %return, label %if.then12

if.then12:                                        ; preds = %if.end10
  %idxprom = sext i32 %id to i64
  %table = getelementptr inbounds i8* %3, i64 24
  %11 = bitcast i8* %table to [66 x %struct.cv*]*
  %arrayidx = getelementptr inbounds [66 x %struct.cv*]* %11, i64 0, i64 %idxprom
  %12 = load %struct.cv** %arrayidx, align 8, !tbaa !3
  %tobool13 = icmp eq %struct.cv* %12, null
  br i1 %tobool13, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then12
  %sv_flags = getelementptr inbounds %struct.cv* %12, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !0
  %and14 = and i32 %13, 255
  %cmp15 = icmp eq i32 %and14, 13
  br i1 %cmp15, label %if.then16, label %if.end29

if.then16:                                        ; preds = %land.lhs.true
  %arrayidx18 = getelementptr inbounds [66 x i8*]* @PL_AMG_names, i64 0, i64 %idxprom
  %14 = load i8** %arrayidx18, align 8, !tbaa !3
  %call.i = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %stash, i8* %14, i32 1) #6
  %tobool20 = icmp eq %struct.gv* %call.i, null
  br i1 %tobool20, label %if.end29, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.then16
  %sv_any22 = getelementptr inbounds %struct.gv* %call.i, i64 0, i32 0
  %15 = load %struct.xpvgv** %sv_any22, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %16, i64 0, i32 7
  %17 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool23 = icmp eq %struct.cv* %17, null
  br i1 %tobool23, label %if.end29, label %return

if.end29:                                         ; preds = %land.lhs.true21, %if.then16, %if.then12, %land.lhs.true
  br label %return

return:                                           ; preds = %if.end10, %land.lhs.true21, %entry, %lor.lhs.false, %if.end29
  %retval.0 = phi %struct.cv* [ %12, %if.end29 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %17, %land.lhs.true21 ], [ null, %if.end10 ]
  ret %struct.cv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_amagic_call(%struct.sv* %left, %struct.sv* %right, i32 %method, i32 %flags) #0 {
entry:
  %myop = alloca %struct.binop, align 8
  %and = and i32 %flags, 4
  %tobool = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 2
  %and1 = and i32 %flags, 2
  %tobool2 = icmp eq i32 %and1, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else207

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %left, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and3 = and i32 %0, 268435456
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.else207, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.sv* %left, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %1 to %struct.sv**
  %2 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_any6 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %3 = load i8** %sv_any6, align 8, !tbaa !3
  %xmg_stash = getelementptr inbounds i8* %3, i64 48
  %4 = bitcast i8* %xmg_stash to %struct.hv**
  %5 = load %struct.hv** %4, align 8, !tbaa !3
  %tobool7 = icmp eq %struct.hv* %5, null
  br i1 %tobool7, label %if.else207, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %6 = bitcast %struct.hv* %5 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %6, i32 99) #6
  %tobool9 = icmp eq %struct.magic* %call, null
  br i1 %tobool9, label %if.else207, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %mg_ptr = getelementptr inbounds %struct.magic* %call, i64 0, i32 6
  %7 = load i8** %mg_ptr, align 8, !tbaa !3
  %8 = bitcast i8* %7 to %struct.am_table*
  %flags11 = getelementptr inbounds i8* %7, i64 16
  %9 = bitcast i8* %flags11 to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %and12 = and i32 %10, 1
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %if.else207, label %cond.end

cond.end:                                         ; preds = %land.lhs.true10
  %table = getelementptr inbounds i8* %7, i64 24
  %arraydecay = bitcast i8* %table to %struct.cv**
  %add = add nsw i32 %and.lobit, %method
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds %struct.cv** %arraydecay, i64 %idxprom
  %11 = load %struct.cv** %arrayidx, align 8, !tbaa !3
  %tobool18 = icmp eq %struct.cv* %11, null
  br i1 %tobool18, label %lor.lhs.false, label %if.end370

lor.lhs.false:                                    ; preds = %cond.end
  %fallback27.phi.trans.insert = getelementptr inbounds i8* %7, i64 552
  %.phi.trans.insert = bitcast i8* %fallback27.phi.trans.insert to i64*
  %.pre = load i64* %.phi.trans.insert, align 8, !tbaa !4
  %cmp28 = icmp sgt i64 %.pre, 1
  br i1 %tobool, label %land.lhs.true26, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %lor.lhs.false
  br i1 %cmp28, label %land.lhs.true21, label %if.else207

land.lhs.true21:                                  ; preds = %land.lhs.true20
  %idxprom22 = sext i32 %method to i64
  %arrayidx23 = getelementptr inbounds %struct.cv** %arraydecay, i64 %idxprom22
  %12 = load %struct.cv** %arrayidx23, align 8, !tbaa !3
  %tobool24 = icmp eq %struct.cv* %12, null
  br i1 %tobool24, label %land.lhs.true29, label %if.end370

land.lhs.true26:                                  ; preds = %lor.lhs.false
  br i1 %cmp28, label %land.lhs.true29, label %if.else207

land.lhs.true29:                                  ; preds = %land.lhs.true21, %land.lhs.true26
  %off.1926 = phi i32 [ %add, %land.lhs.true26 ], [ %method, %land.lhs.true21 ]
  %and30 = and i32 %flags, 8
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.else207, label %if.then32

if.then32:                                        ; preds = %land.lhs.true29
  switch i32 %method, label %not_found [
    i32 44, label %sw.bb
    i32 45, label %sw.bb40
    i32 2, label %sw.bb49
    i32 5, label %sw.bb54
    i32 4, label %sw.bb62
    i32 42, label %sw.bb70
    i32 56, label %sw.bb81
    i32 1, label %sw.bb101
    i32 57, label %sw.bb195
    i32 64, label %return
    i32 63, label %return
    i32 58, label %sw.bb203
    i32 59, label %sw.bb203
    i32 60, label %sw.bb203
    i32 61, label %sw.bb203
    i32 62, label %sw.bb203
  ]

sw.bb:                                            ; preds = %if.then32
  %arrayidx33 = getelementptr inbounds i8* %7, i64 80
  %13 = bitcast i8* %arrayidx33 to %struct.cv**
  %14 = load %struct.cv** %13, align 8, !tbaa !3
  %tobool34 = icmp eq %struct.cv* %14, null
  br i1 %tobool34, label %lor.lhs.false35, label %if.end370

lor.lhs.false35:                                  ; preds = %sw.bb
  %arrayidx36 = getelementptr inbounds i8* %7, i64 72
  %15 = bitcast i8* %arrayidx36 to %struct.cv**
  %16 = load %struct.cv** %15, align 8, !tbaa !3
  %tobool37 = icmp eq %struct.cv* %16, null
  br i1 %tobool37, label %not_found, label %if.end370

sw.bb40:                                          ; preds = %if.then32
  %arrayidx41 = getelementptr inbounds i8* %7, i64 96
  %17 = bitcast i8* %arrayidx41 to %struct.cv**
  %18 = load %struct.cv** %17, align 8, !tbaa !3
  %tobool42 = icmp eq %struct.cv* %18, null
  br i1 %tobool42, label %lor.lhs.false43, label %if.end370

lor.lhs.false43:                                  ; preds = %sw.bb40
  %arrayidx44 = getelementptr inbounds i8* %7, i64 88
  %19 = bitcast i8* %arrayidx44 to %struct.cv**
  %20 = load %struct.cv** %19, align 8, !tbaa !3
  %tobool45 = icmp eq %struct.cv* %20, null
  br i1 %tobool45, label %not_found, label %if.end370

sw.bb49:                                          ; preds = %if.then32
  %arrayidx50 = getelementptr inbounds i8* %7, i64 64
  %21 = bitcast i8* %arrayidx50 to %struct.cv**
  %22 = load %struct.cv** %21, align 8, !tbaa !3
  %tobool51 = icmp eq %struct.cv* %22, null
  br i1 %tobool51, label %lor.rhs, label %if.end370

lor.rhs:                                          ; preds = %sw.bb49
  %arrayidx52 = getelementptr inbounds i8* %7, i64 56
  %23 = bitcast i8* %arrayidx52 to %struct.cv**
  %24 = load %struct.cv** %23, align 8, !tbaa !3
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.then32
  %arrayidx55 = getelementptr inbounds i8* %7, i64 56
  %25 = bitcast i8* %arrayidx55 to %struct.cv**
  %26 = load %struct.cv** %25, align 8, !tbaa !3
  %tobool56 = icmp eq %struct.cv* %26, null
  br i1 %tobool56, label %lor.rhs57, label %if.end370

lor.rhs57:                                        ; preds = %sw.bb54
  %arrayidx58 = getelementptr inbounds i8* %7, i64 40
  %27 = bitcast i8* %arrayidx58 to %struct.cv**
  %28 = load %struct.cv** %27, align 8, !tbaa !3
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.then32
  %arrayidx63 = getelementptr inbounds i8* %7, i64 64
  %29 = bitcast i8* %arrayidx63 to %struct.cv**
  %30 = load %struct.cv** %29, align 8, !tbaa !3
  %tobool64 = icmp eq %struct.cv* %30, null
  br i1 %tobool64, label %lor.rhs65, label %if.end370

lor.rhs65:                                        ; preds = %sw.bb62
  %arrayidx66 = getelementptr inbounds i8* %7, i64 40
  %31 = bitcast i8* %arrayidx66 to %struct.cv**
  %32 = load %struct.cv** %31, align 8, !tbaa !3
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.then32
  %arrayidx71 = getelementptr inbounds i8* %7, i64 40
  %33 = bitcast i8* %arrayidx71 to %struct.cv**
  %34 = load %struct.cv** %33, align 8, !tbaa !3
  %tobool72 = icmp eq %struct.cv* %34, null
  br i1 %tobool72, label %lor.lhs.false73, label %if.end370

lor.lhs.false73:                                  ; preds = %sw.bb70
  %arrayidx74 = getelementptr inbounds i8* %7, i64 64
  %35 = bitcast i8* %arrayidx74 to %struct.cv**
  %36 = load %struct.cv** %35, align 8, !tbaa !3
  %tobool75 = icmp eq %struct.cv* %36, null
  br i1 %tobool75, label %lor.rhs76, label %if.end370

lor.rhs76:                                        ; preds = %lor.lhs.false73
  %arrayidx77 = getelementptr inbounds i8* %7, i64 56
  %37 = bitcast i8* %arrayidx77 to %struct.cv**
  %38 = load %struct.cv** %37, align 8, !tbaa !3
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.then32
  %39 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv83 = bitcast i8* %39 to %struct.sv**
  %40 = load %struct.sv** %xrv_rv83, align 8, !tbaa !3
  %sv_flags84 = getelementptr inbounds %struct.sv* %40, i64 0, i32 2
  %41 = load i32* %sv_flags84, align 4, !tbaa !0
  %and85 = and i32 %41, 524288
  %tobool86 = icmp eq i32 %and85, 0
  %and89 = and i32 %41, 248
  %cmp90 = icmp ult i32 %and89, 8
  %or.cond = and i1 %tobool86, %cmp90
  br i1 %or.cond, label %if.then91, label %land.lhs.true290

if.then91:                                        ; preds = %sw.bb81
  %call92 = call %struct.sv* @Perl_newSVsv(%struct.sv* %40) #6
  %sv_flags93 = getelementptr inbounds %struct.sv* %call92, i64 0, i32 2
  %42 = load i32* %sv_flags93, align 4, !tbaa !0
  %or = or i32 %42, 4096
  store i32 %or, i32* %sv_flags93, align 4, !tbaa !0
  %sv_any94 = getelementptr inbounds %struct.sv* %40, i64 0, i32 0
  %43 = load i8** %sv_any94, align 8, !tbaa !3
  %xmg_stash95 = getelementptr inbounds i8* %43, i64 48
  %44 = bitcast i8* %xmg_stash95 to %struct.hv**
  %45 = load %struct.hv** %44, align 8, !tbaa !3
  %46 = bitcast %struct.hv* %45 to %struct.sv*
  store %struct.sv* %46, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool96 = icmp eq %struct.hv* %45, null
  br i1 %tobool96, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then91
  %47 = getelementptr inbounds %struct.hv* %45, i64 0, i32 1
  %48 = load i32* %47, align 4, !tbaa !0
  %inc = add i32 %48, 1
  store i32 %inc, i32* %47, align 4, !tbaa !0
  br label %land.end

land.end:                                         ; preds = %if.then91, %land.rhs
  %sv_any98 = getelementptr inbounds %struct.sv* %call92, i64 0, i32 0
  %49 = load i8** %sv_any98, align 8, !tbaa !3
  %xmg_stash99 = getelementptr inbounds i8* %49, i64 48
  %50 = bitcast i8* %xmg_stash99 to %struct.hv**
  store %struct.hv* %45, %struct.hv** %50, align 8, !tbaa !3
  br label %return

sw.bb101:                                         ; preds = %if.then32
  %arrayidx102 = getelementptr inbounds i8* %7, i64 248
  %51 = bitcast i8* %arrayidx102 to %struct.cv**
  %52 = load %struct.cv** %51, align 8, !tbaa !3
  %tobool103 = icmp eq %struct.cv* %52, null
  br i1 %tobool103, label %lor.lhs.false104, label %land.lhs.true107

lor.lhs.false104:                                 ; preds = %sw.bb101
  %arrayidx105 = getelementptr inbounds i8* %7, i64 296
  %53 = bitcast i8* %arrayidx105 to %struct.cv**
  %54 = load %struct.cv** %53, align 8, !tbaa !3
  %tobool106 = icmp eq %struct.cv* %54, null
  br i1 %tobool106, label %not_found, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %lor.lhs.false104, %sw.bb101
  %off1.0 = phi i32 [ 28, %sw.bb101 ], [ 34, %lor.lhs.false104 ]
  %arrayidx108 = getelementptr inbounds i8* %7, i64 480
  %55 = bitcast i8* %arrayidx108 to %struct.cv**
  %56 = load %struct.cv** %55, align 8, !tbaa !3
  %tobool109 = icmp eq %struct.cv* %56, null
  br i1 %tobool109, label %lor.lhs.false110, label %if.then113

lor.lhs.false110:                                 ; preds = %land.lhs.true107
  %arrayidx111 = getelementptr inbounds i8* %7, i64 88
  %57 = bitcast i8* %arrayidx111 to %struct.cv**
  %58 = load %struct.cv** %57, align 8, !tbaa !3
  %tobool112 = icmp eq %struct.cv* %58, null
  br i1 %tobool112, label %not_found, label %if.then113

if.then113:                                       ; preds = %lor.lhs.false110, %land.lhs.true107
  %off.8 = phi i32 [ 57, %land.lhs.true107 ], [ 8, %lor.lhs.false110 ]
  %cv.8 = phi %struct.cv* [ %56, %land.lhs.true107 ], [ %58, %lor.lhs.false110 ]
  %call114 = call %struct.sv* @Perl_newSViv(i64 0) #6
  %call115 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call114) #6
  %cmp116 = icmp eq i32 %off1.0, 28
  br i1 %cmp116, label %if.then117, label %if.else170

if.then117:                                       ; preds = %if.then113
  %call118 = call %struct.sv* @Perl_amagic_call(%struct.sv* %left, %struct.sv* %call115, i32 28, i32 1) #7
  %tobool119 = icmp eq %struct.sv* %call118, null
  br i1 %tobool119, label %return, label %cond.false121

cond.false121:                                    ; preds = %if.then117
  %sv_flags122 = getelementptr inbounds %struct.sv* %call118, i64 0, i32 2
  %59 = load i32* %sv_flags122, align 4, !tbaa !0
  %and123 = and i32 %59, 262144
  %tobool124 = icmp eq i32 %and123, 0
  br i1 %tobool124, label %cond.false143, label %cond.true125

cond.true125:                                     ; preds = %cond.false121
  %sv_any126 = getelementptr inbounds %struct.sv* %call118, i64 0, i32 0
  %60 = load i8** %sv_any126, align 8, !tbaa !3
  %61 = bitcast i8* %60 to %struct.xpv*
  store %struct.xpv* %61, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool127 = icmp eq i8* %60, null
  br i1 %tobool127, label %land.end140, label %land.rhs128

land.rhs128:                                      ; preds = %cond.true125
  %xpv_cur = getelementptr inbounds i8* %60, i64 8
  %62 = bitcast i8* %xpv_cur to i64*
  %63 = load i64* %62, align 8, !tbaa !4
  %cmp129 = icmp ugt i64 %63, 1
  br i1 %cmp129, label %land.end140, label %lor.rhs130

lor.rhs130:                                       ; preds = %land.rhs128
  %tobool132 = icmp eq i64 %63, 0
  br i1 %tobool132, label %land.end140, label %land.rhs133

land.rhs133:                                      ; preds = %lor.rhs130
  %xpv_pv = bitcast i8* %60 to i8**
  %64 = load i8** %xpv_pv, align 8, !tbaa !3
  %65 = load i8* %64, align 1, !tbaa !1
  %cmp134 = icmp ne i8 %65, 48
  br label %land.end140

land.end140:                                      ; preds = %lor.rhs130, %cond.true125, %land.rhs128, %land.rhs133
  %66 = phi i1 [ false, %cond.true125 ], [ true, %land.rhs128 ], [ false, %lor.rhs130 ], [ %cmp134, %land.rhs133 ]
  %cond142 = zext i1 %66 to i32
  br label %if.end185

cond.false143:                                    ; preds = %cond.false121
  %and145 = and i32 %59, 65536
  %tobool146 = icmp eq i32 %and145, 0
  br i1 %tobool146, label %cond.false151, label %cond.true147

cond.true147:                                     ; preds = %cond.false143
  %sv_any148 = getelementptr inbounds %struct.sv* %call118, i64 0, i32 0
  %67 = load i8** %sv_any148, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %67, i64 24
  %68 = bitcast i8* %xiv_iv to i64*
  %69 = load i64* %68, align 8, !tbaa !4
  %cmp149 = icmp ne i64 %69, 0
  %conv150 = zext i1 %cmp149 to i32
  br label %if.end185

cond.false151:                                    ; preds = %cond.false143
  %and153 = and i32 %59, 131072
  %tobool154 = icmp eq i32 %and153, 0
  br i1 %tobool154, label %cond.false159, label %cond.true155

cond.true155:                                     ; preds = %cond.false151
  %sv_any156 = getelementptr inbounds %struct.sv* %call118, i64 0, i32 0
  %70 = load i8** %sv_any156, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %70, i64 32
  %71 = bitcast i8* %xnv_nv to double*
  %72 = load double* %71, align 8, !tbaa !6
  %cmp157 = fcmp une double %72, 0.000000e+00
  %conv158 = zext i1 %cmp157 to i32
  br label %if.end185

cond.false159:                                    ; preds = %cond.false151
  %call160 = call signext i8 @Perl_sv_2bool(%struct.sv* %call118) #6
  %conv161 = sext i8 %call160 to i32
  br label %if.end185

if.else170:                                       ; preds = %if.then113
  %call172 = call %struct.sv* @Perl_amagic_call(%struct.sv* %left, %struct.sv* %call115, i32 34, i32 1) #7
  %sv_flags173 = getelementptr inbounds %struct.sv* %call172, i64 0, i32 2
  %73 = load i32* %sv_flags173, align 4, !tbaa !0
  %and174 = and i32 %73, 131072
  %tobool175 = icmp eq i32 %and174, 0
  br i1 %tobool175, label %cond.false179, label %cond.true176

cond.true176:                                     ; preds = %if.else170
  %sv_any177 = getelementptr inbounds %struct.sv* %call172, i64 0, i32 0
  %74 = load i8** %sv_any177, align 8, !tbaa !3
  %xnv_nv178 = getelementptr inbounds i8* %74, i64 32
  %75 = bitcast i8* %xnv_nv178 to double*
  %76 = load double* %75, align 8, !tbaa !6
  br label %cond.end181

cond.false179:                                    ; preds = %if.else170
  %call180 = call double @Perl_sv_2nv(%struct.sv* %call172) #6
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false179, %cond.true176
  %cond182 = phi double [ %76, %cond.true176 ], [ %call180, %cond.false179 ]
  %cmp183 = fcmp olt double %cond182, 0.000000e+00
  %conv184 = zext i1 %cmp183 to i32
  br label %if.end185

if.end185:                                        ; preds = %cond.true147, %cond.false159, %cond.true155, %land.end140, %cond.end181
  %logic.0 = phi i32 [ %conv184, %cond.end181 ], [ %cond142, %land.end140 ], [ %conv150, %cond.true147 ], [ %conv158, %cond.true155 ], [ %conv161, %cond.false159 ]
  %tobool186 = icmp eq i32 %logic.0, 0
  br i1 %tobool186, label %return, label %if.then187

if.then187:                                       ; preds = %if.end185
  %cmp188 = icmp eq i32 %off.8, 8
  %. = zext i1 %cmp188 to i32
  %left.right = select i1 %cmp188, %struct.sv* %left, %struct.sv* %right
  %call115.left = select i1 %cmp188, %struct.sv* %call115, %struct.sv* %left
  br label %sw.epilog

sw.bb195:                                         ; preds = %if.then32
  %arrayidx196 = getelementptr inbounds i8* %7, i64 88
  %77 = bitcast i8* %arrayidx196 to %struct.cv**
  %78 = load %struct.cv** %77, align 8, !tbaa !3
  %tobool197 = icmp eq %struct.cv* %78, null
  br i1 %tobool197, label %land.lhs.true290, label %if.then198

if.then198:                                       ; preds = %sw.bb195
  %call199 = call %struct.sv* @Perl_newSViv(i64 0) #6
  %call200 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call199) #6
  br label %if.end370

sw.bb203:                                         ; preds = %if.then32, %if.then32, %if.then32, %if.then32, %if.then32
  br label %return

sw.epilog:                                        ; preds = %if.then187, %lor.rhs76, %lor.rhs65, %lor.rhs57, %lor.rhs
  %lr.0 = phi i32 [ 0, %lor.rhs ], [ 0, %lor.rhs57 ], [ 0, %lor.rhs65 ], [ 0, %lor.rhs76 ], [ %., %if.then187 ]
  %postpr.2 = phi i32 [ 0, %lor.rhs ], [ 0, %lor.rhs57 ], [ 0, %lor.rhs65 ], [ 1, %lor.rhs76 ], [ 0, %if.then187 ]
  %off.9 = phi i32 [ 4, %lor.rhs ], [ 2, %lor.rhs57 ], [ 2, %lor.rhs65 ], [ 4, %lor.rhs76 ], [ %off.8, %if.then187 ]
  %cv.9 = phi %struct.cv* [ %24, %lor.rhs ], [ %28, %lor.rhs57 ], [ %32, %lor.rhs65 ], [ %38, %lor.rhs76 ], [ %cv.8, %if.then187 ]
  %right.addr.0 = phi %struct.sv* [ %right, %lor.rhs ], [ %right, %lor.rhs57 ], [ %right, %lor.rhs65 ], [ %right, %lor.rhs76 ], [ %left.right, %if.then187 ]
  %left.addr.0 = phi %struct.sv* [ %left, %lor.rhs ], [ %left, %lor.rhs57 ], [ %left, %lor.rhs65 ], [ %left, %lor.rhs76 ], [ %call115.left, %if.then187 ]
  %tobool204 = icmp eq %struct.cv* %cv.9, null
  br i1 %tobool204, label %not_found, label %if.end370

if.else207:                                       ; preds = %land.lhs.true20, %land.lhs.true10, %land.lhs.true, %land.lhs.true5, %land.lhs.true8, %entry, %land.lhs.true29, %land.lhs.true26
  %tobool25873 = phi i1 [ false, %land.lhs.true29 ], [ false, %land.lhs.true26 ], [ true, %entry ], [ true, %land.lhs.true8 ], [ true, %land.lhs.true5 ], [ true, %land.lhs.true ], [ true, %land.lhs.true10 ], [ false, %land.lhs.true20 ]
  %ocvp.0870 = phi %struct.cv** [ %arraydecay, %land.lhs.true29 ], [ %arraydecay, %land.lhs.true26 ], [ null, %entry ], [ null, %land.lhs.true8 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %land.lhs.true10 ], [ %arraydecay, %land.lhs.true20 ]
  %oamtp.1868 = phi %struct.am_table* [ %8, %land.lhs.true29 ], [ %8, %land.lhs.true26 ], [ null, %entry ], [ null, %land.lhs.true8 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %land.lhs.true10 ], [ %8, %land.lhs.true20 ]
  %off.1867 = phi i32 [ %off.1926, %land.lhs.true29 ], [ %add, %land.lhs.true26 ], [ 0, %entry ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true10 ], [ %add, %land.lhs.true20 ]
  %and208 = and i32 %flags, 1
  %tobool209 = icmp eq i32 %and208, 0
  br i1 %tobool209, label %land.lhs.true210, label %if.else241

land.lhs.true210:                                 ; preds = %if.else207
  %sv_flags211 = getelementptr inbounds %struct.sv* %right, i64 0, i32 2
  %79 = load i32* %sv_flags211, align 4, !tbaa !0
  %and212 = and i32 %79, 268435456
  %tobool213 = icmp eq i32 %and212, 0
  br i1 %tobool213, label %if.else241, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %land.lhs.true210
  %sv_any215 = getelementptr inbounds %struct.sv* %right, i64 0, i32 0
  %80 = load i8** %sv_any215, align 8, !tbaa !3
  %xrv_rv216 = bitcast i8* %80 to %struct.sv**
  %81 = load %struct.sv** %xrv_rv216, align 8, !tbaa !3
  %sv_any217 = getelementptr inbounds %struct.sv* %81, i64 0, i32 0
  %82 = load i8** %sv_any217, align 8, !tbaa !3
  %xmg_stash218 = getelementptr inbounds i8* %82, i64 48
  %83 = bitcast i8* %xmg_stash218 to %struct.hv**
  %84 = load %struct.hv** %83, align 8, !tbaa !3
  %tobool219 = icmp eq %struct.hv* %84, null
  br i1 %tobool219, label %if.else241, label %land.lhs.true220

land.lhs.true220:                                 ; preds = %land.lhs.true214
  %85 = bitcast %struct.hv* %84 to %struct.sv*
  %call221 = call %struct.magic* @Perl_mg_find(%struct.sv* %85, i32 99) #6
  %tobool222 = icmp eq %struct.magic* %call221, null
  br i1 %tobool222, label %if.else241, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %land.lhs.true220
  %mg_ptr224 = getelementptr inbounds %struct.magic* %call221, i64 0, i32 6
  %86 = load i8** %mg_ptr224, align 8, !tbaa !3
  %flags225 = getelementptr inbounds i8* %86, i64 16
  %87 = bitcast i8* %flags225 to i32*
  %88 = load i32* %87, align 4, !tbaa !0
  %and226 = and i32 %88, 1
  %tobool227 = icmp eq i32 %and226, 0
  br i1 %tobool227, label %if.else241, label %cond.end233

cond.end233:                                      ; preds = %land.lhs.true223
  %89 = bitcast i8* %86 to %struct.am_table*
  %table230 = getelementptr inbounds i8* %86, i64 24
  %arraydecay231 = bitcast i8* %table230 to %struct.cv**
  %idxprom237 = sext i32 %method to i64
  %arrayidx238 = getelementptr inbounds %struct.cv** %arraydecay231, i64 %idxprom237
  %90 = load %struct.cv** %arrayidx238, align 8, !tbaa !3
  %tobool239 = icmp eq %struct.cv* %90, null
  br i1 %tobool239, label %if.else241, label %if.end370

if.else241:                                       ; preds = %land.lhs.true223, %cond.end233, %land.lhs.true220, %land.lhs.true214, %land.lhs.true210, %if.else207
  %off.10 = phi i32 [ %off.1867, %if.else207 ], [ %method, %cond.end233 ], [ %off.1867, %land.lhs.true220 ], [ %off.1867, %land.lhs.true214 ], [ %off.1867, %land.lhs.true210 ], [ %off.1867, %land.lhs.true223 ]
  %amtp.3 = phi %struct.am_table* [ %oamtp.1868, %if.else207 ], [ %89, %cond.end233 ], [ %oamtp.1868, %land.lhs.true220 ], [ %oamtp.1868, %land.lhs.true214 ], [ %oamtp.1868, %land.lhs.true210 ], [ %oamtp.1868, %land.lhs.true223 ]
  %cvp.1 = phi %struct.cv** [ %ocvp.0870, %if.else207 ], [ %arraydecay231, %cond.end233 ], [ %ocvp.0870, %land.lhs.true220 ], [ %ocvp.0870, %land.lhs.true214 ], [ %ocvp.0870, %land.lhs.true210 ], [ null, %land.lhs.true223 ]
  %tobool242 = icmp eq %struct.cv** %ocvp.0870, null
  br i1 %tobool242, label %lor.lhs.false250, label %land.lhs.true243

land.lhs.true243:                                 ; preds = %if.else241
  %fallback244 = getelementptr inbounds %struct.am_table* %oamtp.1868, i64 0, i32 4
  %91 = load i64* %fallback244, align 8, !tbaa !4
  %cmp245.not = icmp slt i64 %91, 2
  %cvp.1.mux = select i1 %cmp245.not, %struct.cv** %cvp.1, %struct.cv** %ocvp.0870
  br i1 %cmp245.not, label %lor.lhs.false250, label %land.lhs.true257

lor.lhs.false250:                                 ; preds = %if.else241, %land.lhs.true243
  %cvp.2 = phi %struct.cv** [ %cvp.1.mux, %land.lhs.true243 ], [ %cvp.1, %if.else241 ]
  %tobool251 = icmp eq %struct.cv** %cvp.2, null
  br i1 %tobool251, label %not_found, label %land.lhs.true252

land.lhs.true252:                                 ; preds = %lor.lhs.false250
  %fallback253 = getelementptr inbounds %struct.am_table* %amtp.3, i64 0, i32 4
  %92 = load i64* %fallback253, align 8, !tbaa !4
  %cmp254 = icmp sgt i64 %92, 1
  br i1 %cmp254, label %land.lhs.true257, label %not_found

land.lhs.true257:                                 ; preds = %land.lhs.true252, %land.lhs.true243
  %lr.1 = phi i32 [ -1, %land.lhs.true243 ], [ 1, %land.lhs.true252 ]
  %cvp.3 = phi %struct.cv** [ %ocvp.0870, %land.lhs.true243 ], [ %cvp.2, %land.lhs.true252 ]
  %and258 = and i32 %flags, 8
  %tobool259 = icmp eq i32 %and258, 0
  br i1 %tobool259, label %if.then260, label %not_found

if.then260:                                       ; preds = %land.lhs.true257
  %93 = and i32 %method, -2
  %94 = icmp eq i32 %93, 54
  %cmp267 = icmp eq i32 %method, 52
  %or.cond696 = or i1 %94, %cmp267
  %cmp270 = icmp eq i32 %method, 53
  %or.cond697 = or i1 %or.cond696, %cmp270
  br i1 %or.cond697, label %return, label %if.end273

if.end273:                                        ; preds = %if.then260
  %switch.tableidx = add i32 %method, -28
  %95 = icmp ult i32 %switch.tableidx, 14
  br i1 %95, label %sw.epilog276, label %not_found

sw.epilog276:                                     ; preds = %if.end273
  %96 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [14 x i32]* @switch.table, i64 0, i64 %96
  %switch.load = load i32* %switch.gep, align 4
  %switch.gep861 = getelementptr inbounds [14 x i32]* @switch.table84, i64 0, i64 %96
  %switch.load862 = load i32* %switch.gep861, align 4
  %97 = and i64 %96, -2
  %98 = icmp eq i64 %97, 6
  br i1 %98, label %not_found, label %if.end282

if.end282:                                        ; preds = %sw.epilog276
  %idxprom280 = sext i32 %switch.load862 to i64
  %arrayidx281 = getelementptr inbounds %struct.cv** %cvp.3, i64 %idxprom280
  %99 = load %struct.cv** %arrayidx281, align 8, !tbaa !3
  %tobool283 = icmp eq %struct.cv* %99, null
  br i1 %tobool283, label %not_found, label %if.end370

not_found:                                        ; preds = %if.end273, %sw.epilog276, %lor.lhs.false104, %lor.lhs.false35, %lor.lhs.false43, %lor.lhs.false110, %sw.epilog, %if.end282, %land.lhs.true257, %lor.lhs.false250, %land.lhs.true252, %if.then32
  %tobool25872 = phi i1 [ false, %if.then32 ], [ false, %sw.epilog ], [ %tobool25873, %land.lhs.true257 ], [ %tobool25873, %if.end282 ], [ %tobool25873, %land.lhs.true252 ], [ %tobool25873, %lor.lhs.false250 ], [ false, %lor.lhs.false110 ], [ false, %lor.lhs.false43 ], [ false, %lor.lhs.false35 ], [ false, %lor.lhs.false104 ], [ %tobool25873, %sw.epilog276 ], [ %tobool25873, %if.end273 ]
  %ocvp.0869 = phi %struct.cv** [ %arraydecay, %if.then32 ], [ %arraydecay, %sw.epilog ], [ %ocvp.0870, %land.lhs.true257 ], [ %ocvp.0870, %if.end282 ], [ %ocvp.0870, %land.lhs.true252 ], [ %ocvp.0870, %lor.lhs.false250 ], [ %arraydecay, %lor.lhs.false110 ], [ %arraydecay, %lor.lhs.false43 ], [ %arraydecay, %lor.lhs.false35 ], [ %arraydecay, %lor.lhs.false104 ], [ %ocvp.0870, %sw.epilog276 ], [ %ocvp.0870, %if.end273 ]
  %postpr.4 = phi i32 [ 0, %if.then32 ], [ %postpr.2, %sw.epilog ], [ 0, %land.lhs.true257 ], [ %switch.load, %if.end282 ], [ 0, %land.lhs.true252 ], [ 0, %lor.lhs.false250 ], [ 0, %lor.lhs.false110 ], [ 0, %lor.lhs.false43 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false104 ], [ %switch.load, %sw.epilog276 ], [ 0, %if.end273 ]
  %force_cpy.3 = phi i32 [ 0, %if.then32 ], [ 0, %sw.epilog ], [ 0, %land.lhs.true257 ], [ 0, %if.end282 ], [ 0, %land.lhs.true252 ], [ 0, %lor.lhs.false250 ], [ 0, %lor.lhs.false110 ], [ 1, %lor.lhs.false43 ], [ 1, %lor.lhs.false35 ], [ 0, %lor.lhs.false104 ], [ 0, %sw.epilog276 ], [ 0, %if.end273 ]
  %off.12 = phi i32 [ %off.1926, %if.then32 ], [ %off.9, %sw.epilog ], [ %off.10, %land.lhs.true257 ], [ %switch.load862, %if.end282 ], [ %off.10, %land.lhs.true252 ], [ %off.10, %lor.lhs.false250 ], [ 8, %lor.lhs.false110 ], [ 8, %lor.lhs.false43 ], [ 6, %lor.lhs.false35 ], [ %off.1926, %lor.lhs.false104 ], [ -1, %sw.epilog276 ], [ -1, %if.end273 ]
  %amtp.4 = phi %struct.am_table* [ %8, %if.then32 ], [ %8, %sw.epilog ], [ %amtp.3, %land.lhs.true257 ], [ %amtp.3, %if.end282 ], [ %amtp.3, %land.lhs.true252 ], [ %amtp.3, %lor.lhs.false250 ], [ %8, %lor.lhs.false110 ], [ %8, %lor.lhs.false43 ], [ %8, %lor.lhs.false35 ], [ %8, %lor.lhs.false104 ], [ %amtp.3, %sw.epilog276 ], [ %amtp.3, %if.end273 ]
  %cvp.4 = phi %struct.cv** [ %arraydecay, %if.then32 ], [ %arraydecay, %sw.epilog ], [ %cvp.3, %land.lhs.true257 ], [ %cvp.3, %if.end282 ], [ %cvp.2, %land.lhs.true252 ], [ null, %lor.lhs.false250 ], [ %arraydecay, %lor.lhs.false110 ], [ %arraydecay, %lor.lhs.false43 ], [ %arraydecay, %lor.lhs.false35 ], [ %arraydecay, %lor.lhs.false104 ], [ %cvp.3, %sw.epilog276 ], [ %cvp.3, %if.end273 ]
  %right.addr.1 = phi %struct.sv* [ %right, %if.then32 ], [ %right.addr.0, %sw.epilog ], [ %right, %land.lhs.true257 ], [ %right, %if.end282 ], [ %right, %land.lhs.true252 ], [ %right, %lor.lhs.false250 ], [ %right, %lor.lhs.false110 ], [ %right, %lor.lhs.false43 ], [ %right, %lor.lhs.false35 ], [ %right, %lor.lhs.false104 ], [ %right, %sw.epilog276 ], [ %right, %if.end273 ]
  %left.addr.1 = phi %struct.sv* [ %left, %if.then32 ], [ %left.addr.0, %sw.epilog ], [ %left, %land.lhs.true257 ], [ %left, %if.end282 ], [ %left, %land.lhs.true252 ], [ %left, %lor.lhs.false250 ], [ %left, %lor.lhs.false110 ], [ %left, %lor.lhs.false43 ], [ %left, %lor.lhs.false35 ], [ %left, %lor.lhs.false104 ], [ %left, %sw.epilog276 ], [ %left, %if.end273 ]
  %.off = add i32 %method, -58
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %return, label %sw.epilog288

sw.epilog288:                                     ; preds = %not_found
  br i1 %tobool25872, label %if.else294, label %land.lhs.true290

land.lhs.true290:                                 ; preds = %sw.bb81, %sw.bb195, %sw.epilog288
  %ocvp.0869889920 = phi %struct.cv** [ %ocvp.0869, %sw.epilog288 ], [ %arraydecay, %sw.bb195 ], [ %arraydecay, %sw.bb81 ]
  %postpr.4891915 = phi i32 [ %postpr.4, %sw.epilog288 ], [ 0, %sw.bb195 ], [ 0, %sw.bb81 ]
  %force_cpy.3892912 = phi i32 [ %force_cpy.3, %sw.epilog288 ], [ 0, %sw.bb195 ], [ 0, %sw.bb81 ]
  %off.12893909 = phi i32 [ %off.12, %sw.epilog288 ], [ 8, %sw.bb195 ], [ %off.1926, %sw.bb81 ]
  %amtp.4894906 = phi %struct.am_table* [ %amtp.4, %sw.epilog288 ], [ %8, %sw.bb195 ], [ %8, %sw.bb81 ]
  %cvp.4895904 = phi %struct.cv** [ %cvp.4, %sw.epilog288 ], [ %arraydecay, %sw.bb195 ], [ %arraydecay, %sw.bb81 ]
  %right.addr.1896902 = phi %struct.sv* [ %right.addr.1, %sw.epilog288 ], [ %right, %sw.bb195 ], [ %right, %sw.bb81 ]
  %left.addr.1898900 = phi %struct.sv* [ %left.addr.1, %sw.epilog288 ], [ %left, %sw.bb195 ], [ %left, %sw.bb81 ]
  %arrayidx291 = getelementptr inbounds %struct.cv** %ocvp.0869889920, i64 3
  %100 = load %struct.cv** %arrayidx291, align 8, !tbaa !3
  %tobool292 = icmp eq %struct.cv* %100, null
  br i1 %tobool292, label %if.else294, label %if.end361

if.else294:                                       ; preds = %land.lhs.true290, %sw.epilog288
  %postpr.4891916 = phi i32 [ %postpr.4891915, %land.lhs.true290 ], [ %postpr.4, %sw.epilog288 ]
  %force_cpy.3892913 = phi i32 [ %force_cpy.3892912, %land.lhs.true290 ], [ %force_cpy.3, %sw.epilog288 ]
  %off.12893910 = phi i32 [ %off.12893909, %land.lhs.true290 ], [ %off.12, %sw.epilog288 ]
  %amtp.4894907 = phi %struct.am_table* [ %amtp.4894906, %land.lhs.true290 ], [ %amtp.4, %sw.epilog288 ]
  %cvp.4895905 = phi %struct.cv** [ %cvp.4895904, %land.lhs.true290 ], [ %cvp.4, %sw.epilog288 ]
  %right.addr.1896903 = phi %struct.sv* [ %right.addr.1896902, %land.lhs.true290 ], [ %right.addr.1, %sw.epilog288 ]
  %left.addr.1898901 = phi %struct.sv* [ %left.addr.1898900, %land.lhs.true290 ], [ %left.addr.1, %sw.epilog288 ]
  %tobool295 = icmp eq %struct.cv** %cvp.4895905, null
  br i1 %tobool295, label %if.else300, label %land.lhs.true296

land.lhs.true296:                                 ; preds = %if.else294
  %arrayidx297 = getelementptr inbounds %struct.cv** %cvp.4895905, i64 3
  %101 = load %struct.cv** %arrayidx297, align 8, !tbaa !3
  %tobool298 = icmp eq %struct.cv* %101, null
  br i1 %tobool298, label %if.else300, label %if.end361

if.else300:                                       ; preds = %land.lhs.true296, %if.else294
  %add305 = add nsw i32 %and.lobit, %method
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds [66 x i8*]* @PL_AMG_names, i64 0, i64 %idxprom306
  %102 = load i8** %arrayidx307, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %102, i64 1
  %and308 = and i32 %flags, 8
  %tobool309 = icmp ne i32 %and308, 0
  %cond310 = select i1 %tobool309, i8* getelementptr inbounds ([2 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0)
  %sv_flags311 = getelementptr inbounds %struct.sv* %left.addr.1898901, i64 0, i32 2
  %103 = load i32* %sv_flags311, align 4, !tbaa !0
  %and312 = and i32 %103, 268435456
  %tobool313 = icmp ne i32 %and312, 0
  %cond314 = select i1 %tobool313, i8* getelementptr inbounds ([23 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str75, i64 0, i64 0)
  br i1 %tobool313, label %cond.true318, label %cond.end325

cond.true318:                                     ; preds = %if.else300
  %sv_any319 = getelementptr inbounds %struct.sv* %left.addr.1898901, i64 0, i32 0
  %104 = load i8** %sv_any319, align 8, !tbaa !3
  %xrv_rv320 = bitcast i8* %104 to %struct.sv**
  %105 = load %struct.sv** %xrv_rv320, align 8, !tbaa !3
  %sv_any321 = getelementptr inbounds %struct.sv* %105, i64 0, i32 0
  %106 = load i8** %sv_any321, align 8, !tbaa !3
  %xmg_stash322 = getelementptr inbounds i8* %106, i64 48
  %107 = bitcast i8* %xmg_stash322 to %struct.hv**
  %108 = load %struct.hv** %107, align 8, !tbaa !3
  %sv_any323 = getelementptr inbounds %struct.hv* %108, i64 0, i32 0
  %109 = load %struct.xpvhv** %sv_any323, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %109, i64 0, i32 10
  %110 = load i8** %xhv_name, align 8, !tbaa !3
  br label %cond.end325

cond.end325:                                      ; preds = %if.else300, %cond.true318
  %cond326 = phi i8* [ %110, %cond.true318 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %if.else300 ]
  %sv_flags327 = getelementptr inbounds %struct.sv* %right.addr.1896903, i64 0, i32 2
  %111 = load i32* %sv_flags327, align 4, !tbaa !0
  %and328 = and i32 %111, 268435456
  %tobool329 = icmp eq i32 %and328, 0
  br i1 %tobool329, label %cond.end335.thread, label %cond.true340

cond.end335.thread:                               ; preds = %cond.end325
  %cond334 = select i1 %tobool309, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str77, i64 0, i64 0)
  br label %cond.end348

cond.true340:                                     ; preds = %cond.end325
  %sv_any341 = getelementptr inbounds %struct.sv* %right.addr.1896903, i64 0, i32 0
  %112 = load i8** %sv_any341, align 8, !tbaa !3
  %xrv_rv342 = bitcast i8* %112 to %struct.sv**
  %113 = load %struct.sv** %xrv_rv342, align 8, !tbaa !3
  %sv_any343 = getelementptr inbounds %struct.sv* %113, i64 0, i32 0
  %114 = load i8** %sv_any343, align 8, !tbaa !3
  %xmg_stash344 = getelementptr inbounds i8* %114, i64 48
  %115 = bitcast i8* %xmg_stash344 to %struct.hv**
  %116 = load %struct.hv** %115, align 8, !tbaa !3
  %sv_any345 = getelementptr inbounds %struct.hv* %116, i64 0, i32 0
  %117 = load %struct.xpvhv** %sv_any345, align 8, !tbaa !3
  %xhv_name346 = getelementptr inbounds %struct.xpvhv* %117, i64 0, i32 10
  %118 = load i8** %xhv_name346, align 8, !tbaa !3
  br label %cond.end348

cond.end348:                                      ; preds = %cond.end335.thread, %cond.true340
  %cond336931 = phi i8* [ getelementptr inbounds ([41 x i8]* @.str76, i64 0, i64 0), %cond.true340 ], [ %cond334, %cond.end335.thread ]
  %cond349 = phi i8* [ %118, %cond.true340 ], [ getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), %cond.end335.thread ]
  %call350 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([52 x i8]* @.str71, i64 0, i64 0), i8* %add.ptr, i8* %cond310, i8* %cond314, i8* %cond326, i8* %cond336931, i8* %cond349) #6
  %call351 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call350) #6
  %tobool352 = icmp eq %struct.am_table* %amtp.4894907, null
  br i1 %tobool352, label %if.else358, label %land.lhs.true353

land.lhs.true353:                                 ; preds = %cond.end348
  %fallback354 = getelementptr inbounds %struct.am_table* %amtp.4894907, i64 0, i32 4
  %119 = load i64* %fallback354, align 8, !tbaa !4
  %cmp355 = icmp sgt i64 %119, 2
  br i1 %cmp355, label %return, label %if.else358

if.else358:                                       ; preds = %cond.end348, %land.lhs.true353
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([3 x i8]* @.str78, i64 0, i64 0), %struct.sv* %call351) #6
  br label %return

if.end361:                                        ; preds = %land.lhs.true296, %land.lhs.true290
  %postpr.4891914 = phi i32 [ %postpr.4891915, %land.lhs.true290 ], [ %postpr.4891916, %land.lhs.true296 ]
  %force_cpy.3892911 = phi i32 [ %force_cpy.3892912, %land.lhs.true290 ], [ %force_cpy.3892913, %land.lhs.true296 ]
  %off.12893908 = phi i32 [ %off.12893909, %land.lhs.true290 ], [ %off.12893910, %land.lhs.true296 ]
  %left.addr.1899 = phi %struct.sv* [ %left.addr.1898900, %land.lhs.true290 ], [ %left.addr.1898901, %land.lhs.true296 ]
  %right.addr.1897 = phi %struct.sv* [ %right.addr.1896902, %land.lhs.true290 ], [ %right.addr.1896903, %land.lhs.true296 ]
  %lr.2 = phi i32 [ -1, %land.lhs.true290 ], [ 1, %land.lhs.true296 ]
  %cv.12 = phi %struct.cv* [ %100, %land.lhs.true290 ], [ %101, %land.lhs.true296 ]
  %120 = or i32 %force_cpy.3892911, %and
  %121 = icmp ne i32 %120, 0
  %lor.ext366 = zext i1 %121 to i32
  br label %if.end370

if.end370:                                        ; preds = %sw.bb40, %lor.lhs.false43, %sw.bb, %lor.lhs.false35, %lor.lhs.false73, %sw.bb70, %sw.bb62, %sw.bb54, %sw.bb49, %if.then198, %cond.end233, %cond.end, %land.lhs.true21, %sw.epilog, %if.end282, %if.end361
  %lr.3 = phi i32 [ %lr.2, %if.end361 ], [ %lr.0, %sw.epilog ], [ %lr.1, %if.end282 ], [ -1, %land.lhs.true21 ], [ -1, %cond.end ], [ 1, %cond.end233 ], [ 1, %if.then198 ], [ 0, %sw.bb49 ], [ 0, %sw.bb54 ], [ 0, %sw.bb62 ], [ 0, %sw.bb70 ], [ 0, %lor.lhs.false73 ], [ -1, %lor.lhs.false35 ], [ -1, %sw.bb ], [ -1, %lor.lhs.false43 ], [ -1, %sw.bb40 ]
  %assign.2 = phi i32 [ %and, %if.end361 ], [ %and, %sw.epilog ], [ %and, %if.end282 ], [ %and, %land.lhs.true21 ], [ %and, %cond.end ], [ %and, %cond.end233 ], [ %and, %if.then198 ], [ %and, %sw.bb49 ], [ %and, %sw.bb54 ], [ %and, %sw.bb62 ], [ %and, %sw.bb70 ], [ %and, %lor.lhs.false73 ], [ 1, %lor.lhs.false35 ], [ 1, %sw.bb ], [ 1, %lor.lhs.false43 ], [ 1, %sw.bb40 ]
  %notfound.1 = phi i32 [ 1, %if.end361 ], [ 0, %sw.epilog ], [ 0, %if.end282 ], [ 0, %land.lhs.true21 ], [ 0, %cond.end ], [ 0, %cond.end233 ], [ 0, %if.then198 ], [ 0, %sw.bb49 ], [ 0, %sw.bb54 ], [ 0, %sw.bb62 ], [ 0, %sw.bb70 ], [ 0, %lor.lhs.false73 ], [ 0, %lor.lhs.false35 ], [ 0, %sw.bb ], [ 0, %lor.lhs.false43 ], [ 0, %sw.bb40 ]
  %postpr.5 = phi i32 [ %postpr.4891914, %if.end361 ], [ %postpr.2, %sw.epilog ], [ %switch.load, %if.end282 ], [ 0, %land.lhs.true21 ], [ 0, %cond.end ], [ 0, %cond.end233 ], [ 0, %if.then198 ], [ 0, %sw.bb49 ], [ 0, %sw.bb54 ], [ 0, %sw.bb62 ], [ 1, %sw.bb70 ], [ 1, %lor.lhs.false73 ], [ 1, %lor.lhs.false35 ], [ 0, %sw.bb ], [ 1, %lor.lhs.false43 ], [ 0, %sw.bb40 ]
  %force_cpy.4 = phi i32 [ %lor.ext366, %if.end361 ], [ 0, %sw.epilog ], [ 0, %if.end282 ], [ 0, %land.lhs.true21 ], [ 0, %cond.end ], [ 0, %cond.end233 ], [ 0, %if.then198 ], [ 0, %sw.bb49 ], [ 0, %sw.bb54 ], [ 0, %sw.bb62 ], [ 0, %sw.bb70 ], [ 0, %lor.lhs.false73 ], [ 0, %lor.lhs.false35 ], [ 1, %sw.bb ], [ 0, %lor.lhs.false43 ], [ 1, %sw.bb40 ]
  %off.13 = phi i32 [ %off.12893908, %if.end361 ], [ %off.9, %sw.epilog ], [ %switch.load862, %if.end282 ], [ %method, %land.lhs.true21 ], [ %add, %cond.end ], [ %method, %cond.end233 ], [ 8, %if.then198 ], [ 5, %sw.bb49 ], [ 4, %sw.bb54 ], [ 5, %sw.bb62 ], [ 2, %sw.bb70 ], [ 5, %lor.lhs.false73 ], [ 6, %lor.lhs.false35 ], [ 7, %sw.bb ], [ 8, %lor.lhs.false43 ], [ 9, %sw.bb40 ]
  %cv.13 = phi %struct.cv* [ %cv.12, %if.end361 ], [ %cv.9, %sw.epilog ], [ %99, %if.end282 ], [ %12, %land.lhs.true21 ], [ %11, %cond.end ], [ %90, %cond.end233 ], [ %78, %if.then198 ], [ %22, %sw.bb49 ], [ %26, %sw.bb54 ], [ %30, %sw.bb62 ], [ %34, %sw.bb70 ], [ %36, %lor.lhs.false73 ], [ %16, %lor.lhs.false35 ], [ %14, %sw.bb ], [ %20, %lor.lhs.false43 ], [ %18, %sw.bb40 ]
  %right.addr.2 = phi %struct.sv* [ %right.addr.1897, %if.end361 ], [ %right.addr.0, %sw.epilog ], [ %right, %if.end282 ], [ %right, %land.lhs.true21 ], [ %right, %cond.end ], [ %right, %cond.end233 ], [ %left, %if.then198 ], [ %right, %sw.bb49 ], [ %right, %sw.bb54 ], [ %right, %sw.bb62 ], [ %right, %sw.bb70 ], [ %right, %lor.lhs.false73 ], [ @PL_sv_yes, %lor.lhs.false35 ], [ @PL_sv_yes, %sw.bb ], [ @PL_sv_yes, %lor.lhs.false43 ], [ @PL_sv_yes, %sw.bb40 ]
  %left.addr.2 = phi %struct.sv* [ %left.addr.1899, %if.end361 ], [ %left.addr.0, %sw.epilog ], [ %left, %if.end282 ], [ %left, %land.lhs.true21 ], [ %left, %cond.end ], [ %left, %cond.end233 ], [ %call200, %if.then198 ], [ %left, %sw.bb49 ], [ %left, %sw.bb54 ], [ %left, %sw.bb62 ], [ %left, %sw.bb70 ], [ %left, %lor.lhs.false73 ], [ %left, %lor.lhs.false35 ], [ %left, %sw.bb ], [ %left, %lor.lhs.false43 ], [ %left, %sw.bb40 ]
  %add371 = add nsw i32 %and.lobit, %method
  %cmp372 = icmp eq i32 %add371, %off.13
  br i1 %cmp372, label %land.lhs.true374, label %lor.lhs.false382

land.lhs.true374:                                 ; preds = %if.end370
  %tobool375 = icmp eq i32 %assign.2, 0
  br i1 %tobool375, label %lor.lhs.false376, label %if.then384

lor.lhs.false376:                                 ; preds = %land.lhs.true374
  %122 = and i32 %method, -2
  %123 = icmp ne i32 %122, 44
  %tobool383 = icmp eq i32 %force_cpy.4, 0
  %or.cond863 = and i1 %123, %tobool383
  br i1 %or.cond863, label %if.end396, label %if.then384

lor.lhs.false382:                                 ; preds = %if.end370
  %tobool383.old = icmp eq i32 %force_cpy.4, 0
  br i1 %tobool383.old, label %if.end396, label %if.then384

if.then384:                                       ; preds = %lor.lhs.false382, %lor.lhs.false376, %land.lhs.true374
  %sv_any386 = getelementptr inbounds %struct.sv* %left.addr.2, i64 0, i32 0
  %124 = load i8** %sv_any386, align 8, !tbaa !3
  %xrv_rv387 = bitcast i8* %124 to %struct.sv**
  %125 = load %struct.sv** %xrv_rv387, align 8, !tbaa !3
  %sv_refcnt388 = getelementptr inbounds %struct.sv* %125, i64 0, i32 1
  %126 = load i32* %sv_refcnt388, align 4, !tbaa !0
  %cmp389 = icmp ugt i32 %126, 1
  br i1 %cmp389, label %if.then391, label %if.end396

if.then391:                                       ; preds = %if.then384
  %call392 = call %struct.sv* @Perl_amagic_call(%struct.sv* %left.addr.2, %struct.sv* @PL_sv_undef, i32 56, i32 9) #7
  %127 = load i8** %sv_any386, align 8, !tbaa !3
  %xrv_rv394 = bitcast i8* %127 to %struct.sv**
  store %struct.sv* %call392, %struct.sv** %xrv_rv394, align 8, !tbaa !3
  call void @Perl_sv_free(%struct.sv* %125) #6
  br label %if.end396

if.end396:                                        ; preds = %lor.lhs.false376, %lor.lhs.false382, %if.then384, %if.then391
  %128 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %129 = bitcast %struct.binop* %myop to i8*
  call void @llvm.lifetime.start(i64 56, i8* %129) #2
  %130 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !3
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %130, i64 0, i32 3
  %131 = load i8* %je_mustcatch, align 1, !tbaa !1
  store i8 1, i8* %je_mustcatch, align 1, !tbaa !1
  call void @llvm.memset.p0i8.i64(i8* %129, i8 0, i64 48, i32 8, i1 false)
  %132 = bitcast %struct.binop* %myop to %struct.op*
  %op_last = getelementptr inbounds %struct.binop* %myop, i64 0, i32 9
  store %struct.op* %132, %struct.op** %op_last, align 8, !tbaa !3
  %op_next = getelementptr inbounds %struct.binop* %myop, i64 0, i32 0
  store %struct.op* null, %struct.op** %op_next, align 8, !tbaa !3
  %op_flags = getelementptr inbounds %struct.binop* %myop, i64 0, i32 6
  store i8 66, i8* %op_flags, align 4, !tbaa !1
  %133 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_next = getelementptr inbounds %struct.stackinfo* %133, i64 0, i32 6
  %134 = load %struct.stackinfo** %si_next, align 8, !tbaa !3
  %tobool398 = icmp eq %struct.stackinfo* %134, null
  br i1 %tobool398, label %if.then399, label %if.end402

if.then399:                                       ; preds = %if.end396
  %call400 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #6
  %135 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_prev = getelementptr inbounds %struct.stackinfo* %call400, i64 0, i32 5
  store %struct.stackinfo* %135, %struct.stackinfo** %si_prev, align 8, !tbaa !3
  %136 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_next401 = getelementptr inbounds %struct.stackinfo* %136, i64 0, i32 6
  store %struct.stackinfo* %call400, %struct.stackinfo** %si_next401, align 8, !tbaa !3
  br label %if.end402

if.end402:                                        ; preds = %if.end396, %if.then399
  %next.0 = phi %struct.stackinfo* [ %134, %if.end396 ], [ %call400, %if.then399 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 5, i32* %si_type, align 4, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !0
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %137 = load %struct.av** %si_stack, align 8, !tbaa !3
  %sv_any403 = getelementptr inbounds %struct.av* %137, i64 0, i32 0
  %138 = load %struct.xpvav** %sv_any403, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds %struct.xpvav* %138, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !4
  %139 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %128 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %139 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %140 = load %struct.av** @PL_curstack, align 8, !tbaa !3
  %sv_any404 = getelementptr inbounds %struct.av* %140, i64 0, i32 0
  %141 = load %struct.xpvav** %sv_any404, align 8, !tbaa !3
  %xav_fill405 = getelementptr inbounds %struct.xpvav* %141, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill405, align 8, !tbaa !4
  %xav_array = getelementptr inbounds %struct.xpvav* %138, i64 0, i32 0
  %142 = load i8** %xav_array, align 8, !tbaa !3
  %143 = bitcast i8* %142 to %struct.sv**
  store %struct.sv** %143, %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %144 = load %struct.av** %si_stack, align 8, !tbaa !3
  %sv_any409 = getelementptr inbounds %struct.av* %144, i64 0, i32 0
  %145 = load %struct.xpvav** %sv_any409, align 8, !tbaa !3
  %xav_max = getelementptr inbounds %struct.xpvav* %145, i64 0, i32 2
  %146 = load i64* %xav_max, align 8, !tbaa !4
  %add.ptr410 = getelementptr inbounds %struct.sv** %143, i64 %146
  store %struct.sv** %add.ptr410, %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %147 = load %struct.av** %si_stack, align 8, !tbaa !3
  %sv_any412 = getelementptr inbounds %struct.av* %147, i64 0, i32 0
  %148 = load %struct.xpvav** %sv_any412, align 8, !tbaa !3
  %xav_fill413 = getelementptr inbounds %struct.xpvav* %148, i64 0, i32 1
  %149 = load i64* %xav_fill413, align 8, !tbaa !4
  %add.ptr414 = getelementptr inbounds %struct.sv** %143, i64 %149
  store %struct.sv** %add.ptr414, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %150 = load %struct.av** %si_stack, align 8, !tbaa !3
  store %struct.av* %150, %struct.av** @PL_curstack, align 8, !tbaa !3
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  call void @Perl_push_scope() #6
  call void @Perl_save_op() #6
  store %struct.op* %132, %struct.op** @PL_op, align 8, !tbaa !3
  %151 = load i32* @PL_perldb, align 4, !tbaa !0
  %tobool416 = icmp eq i32 %151, 0
  %and418 = and i32 %151, 1
  %tobool419 = icmp eq i32 %and418, 0
  %or.cond864 = or i1 %tobool416, %tobool419
  br i1 %or.cond864, label %if.end427, label %land.lhs.true420

land.lhs.true420:                                 ; preds = %if.end402
  %152 = load %struct.hv** @PL_curstash, align 8, !tbaa !3
  %153 = load %struct.hv** @PL_debstash, align 8, !tbaa !3
  %cmp421 = icmp eq %struct.hv* %152, %153
  br i1 %cmp421, label %if.end427, label %if.then423

if.then423:                                       ; preds = %land.lhs.true420
  %154 = getelementptr inbounds %struct.binop* %myop, i64 0, i32 7
  %155 = load i8* %154, align 1, !tbaa !1
  %or425 = or i8 %155, 16
  store i8 %or425, i8* %154, align 1, !tbaa !1
  br label %if.end427

if.end427:                                        ; preds = %land.lhs.true420, %if.end402, %if.then423
  store %struct.sv** %add.ptr414, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %call428 = call %struct.op* @Perl_pp_pushmark() #6
  %156 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %sub.ptr.lhs.cast429 = ptrtoint %struct.sv** %156 to i64
  %sub.ptr.rhs.cast430 = ptrtoint %struct.sv** %add.ptr414 to i64
  %sub.ptr.sub431 = sub i64 %sub.ptr.lhs.cast429, %sub.ptr.rhs.cast430
  %sub.ptr.div432 = ashr exact i64 %sub.ptr.sub431, 3
  %add433 = add nsw i32 %notfound.1, 5
  %conv434860 = zext i32 %add433 to i64
  %cmp435 = icmp slt i64 %sub.ptr.div432, %conv434860
  br i1 %cmp435, label %if.then437, label %if.end440

if.then437:                                       ; preds = %if.end427
  %call439 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr414, %struct.sv** %add.ptr414, i32 %add433) #6
  br label %if.end440

if.end440:                                        ; preds = %if.then437, %if.end427
  %sp.0 = phi %struct.sv** [ %call439, %if.then437 ], [ %add.ptr414, %if.end427 ]
  %cmp441 = icmp sgt i32 %lr.3, 0
  %cond446 = select i1 %cmp441, %struct.sv* %right.addr.2, %struct.sv* %left.addr.2
  %incdec.ptr = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %cond446, %struct.sv** %incdec.ptr, align 8, !tbaa !3
  %cond452 = select i1 %cmp441, %struct.sv* %left.addr.2, %struct.sv* %right.addr.2
  %incdec.ptr453 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %cond452, %struct.sv** %incdec.ptr453, align 8, !tbaa !3
  br i1 %cmp441, label %cond.end460, label %cond.false457

cond.false457:                                    ; preds = %if.end440
  %tobool458 = icmp ne i32 %assign.2, 0
  %cond459 = select i1 %tobool458, %struct.sv* @PL_sv_undef, %struct.sv* @PL_sv_no
  br label %cond.end460

cond.end460:                                      ; preds = %if.end440, %cond.false457
  %cond461 = phi %struct.sv* [ %cond459, %cond.false457 ], [ @PL_sv_yes, %if.end440 ]
  %incdec.ptr462 = getelementptr inbounds %struct.sv** %sp.0, i64 3
  store %struct.sv* %cond461, %struct.sv** %incdec.ptr462, align 8, !tbaa !3
  %tobool463 = icmp eq i32 %notfound.1, 0
  br i1 %tobool463, label %if.end472, label %if.then464

if.then464:                                       ; preds = %cond.end460
  %idxprom466 = sext i32 %add371 to i64
  %arrayidx467 = getelementptr inbounds [66 x i8*]* @PL_AMG_names, i64 0, i64 %idxprom466
  %157 = load i8** %arrayidx467, align 8, !tbaa !3
  %add.ptr468 = getelementptr inbounds i8* %157, i64 1
  %call469 = call %struct.sv* @Perl_newSVpv(i8* %add.ptr468, i64 0) #6
  %call470 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call469) #6
  %incdec.ptr471 = getelementptr inbounds %struct.sv** %sp.0, i64 4
  store %struct.sv* %call470, %struct.sv** %incdec.ptr471, align 8, !tbaa !3
  br label %if.end472

if.end472:                                        ; preds = %cond.end460, %if.then464
  %sp.1 = phi %struct.sv** [ %incdec.ptr471, %if.then464 ], [ %incdec.ptr462, %cond.end460 ]
  %158 = bitcast %struct.cv* %cv.13 to %struct.sv*
  %incdec.ptr473 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %158, %struct.sv** %incdec.ptr473, align 8, !tbaa !3
  store %struct.sv** %incdec.ptr473, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %call474 = call %struct.op* @Perl_pp_entersub() #6
  store %struct.op* %call474, %struct.op** @PL_op, align 8, !tbaa !3
  %tobool475 = icmp eq %struct.op* %call474, null
  br i1 %tobool475, label %if.end478, label %if.then476

if.then476:                                       ; preds = %if.end472
  %159 = load i32 ()** @PL_runops, align 8, !tbaa !3
  %call477 = call i32 %159() #6
  br label %if.end478

if.end478:                                        ; preds = %if.end472, %if.then476
  call void @Perl_pop_scope() #6
  %160 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %incdec.ptr479 = getelementptr inbounds %struct.sv** %160, i64 -1
  %161 = load %struct.sv** %160, align 8, !tbaa !3
  store %struct.sv** %incdec.ptr479, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %162 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_prev481 = getelementptr inbounds %struct.stackinfo* %162, i64 0, i32 5
  %163 = load %struct.stackinfo** %si_prev481, align 8, !tbaa !3
  %tobool482 = icmp eq %struct.stackinfo* %163, null
  br i1 %tobool482, label %if.then483, label %if.end510

if.then483:                                       ; preds = %if.end478
  %164 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !3
  %tobool484 = icmp eq %struct.gv* %164, null
  br i1 %tobool484, label %cond.false505, label %land.lhs.true485

land.lhs.true485:                                 ; preds = %if.then483
  %sv_flags486 = getelementptr inbounds %struct.gv* %164, i64 0, i32 2
  %165 = load i32* %sv_flags486, align 4, !tbaa !0
  %and487 = and i32 %165, 255
  %cmp488 = icmp eq i32 %and487, 13
  br i1 %cmp488, label %land.lhs.true490, label %cond.false505

land.lhs.true490:                                 ; preds = %land.lhs.true485
  %sv_any491 = getelementptr inbounds %struct.gv* %164, i64 0, i32 0
  %166 = load %struct.xpvgv** %sv_any491, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %166, i64 0, i32 7
  %167 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_io = getelementptr inbounds %struct.gp* %167, i64 0, i32 2
  %168 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool492 = icmp eq %struct.io* %168, null
  br i1 %tobool492, label %cond.false505, label %land.lhs.true493

land.lhs.true493:                                 ; preds = %land.lhs.true490
  %sv_any497 = getelementptr inbounds %struct.io* %168, i64 0, i32 0
  %169 = load %struct.xpvio** %sv_any497, align 8, !tbaa !3
  %xio_ofp = getelementptr inbounds %struct.xpvio* %169, i64 0, i32 8
  %170 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !3
  %tobool498 = icmp eq %struct._PerlIO** %170, null
  br i1 %tobool498, label %cond.false505, label %cond.end507

cond.false505:                                    ; preds = %land.lhs.true493, %land.lhs.true490, %if.then483, %land.lhs.true485
  %call506 = call %struct._PerlIO** @Perl_PerlIO_stderr() #6
  br label %cond.end507

cond.end507:                                      ; preds = %land.lhs.true493, %cond.false505
  %cond508 = phi %struct._PerlIO** [ %call506, %cond.false505 ], [ %170, %land.lhs.true493 ]
  %call509 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond508, i8* getelementptr inbounds ([17 x i8]* @.str79, i64 0, i64 0)) #6
  call void @Perl_my_exit(i32 1) #6
  br label %if.end510

if.end510:                                        ; preds = %if.end478, %cond.end507
  %171 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %sub.ptr.lhs.cast511 = ptrtoint %struct.sv** %incdec.ptr479 to i64
  %sub.ptr.rhs.cast512 = ptrtoint %struct.sv** %171 to i64
  %sub.ptr.sub513 = sub i64 %sub.ptr.lhs.cast511, %sub.ptr.rhs.cast512
  %sub.ptr.div514 = ashr exact i64 %sub.ptr.sub513, 3
  %172 = load %struct.av** @PL_curstack, align 8, !tbaa !3
  %sv_any515 = getelementptr inbounds %struct.av* %172, i64 0, i32 0
  %173 = load %struct.xpvav** %sv_any515, align 8, !tbaa !3
  %xav_fill516 = getelementptr inbounds %struct.xpvav* %173, i64 0, i32 1
  store i64 %sub.ptr.div514, i64* %xav_fill516, align 8, !tbaa !4
  %si_stack517 = getelementptr inbounds %struct.stackinfo* %163, i64 0, i32 0
  %174 = load %struct.av** %si_stack517, align 8, !tbaa !3
  %sv_any518 = getelementptr inbounds %struct.av* %174, i64 0, i32 0
  %175 = load %struct.xpvav** %sv_any518, align 8, !tbaa !3
  %xav_array519 = getelementptr inbounds %struct.xpvav* %175, i64 0, i32 0
  %176 = load i8** %xav_array519, align 8, !tbaa !3
  %177 = bitcast i8* %176 to %struct.sv**
  store %struct.sv** %177, %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %178 = load %struct.av** %si_stack517, align 8, !tbaa !3
  %sv_any521 = getelementptr inbounds %struct.av* %178, i64 0, i32 0
  %179 = load %struct.xpvav** %sv_any521, align 8, !tbaa !3
  %xav_max522 = getelementptr inbounds %struct.xpvav* %179, i64 0, i32 2
  %180 = load i64* %xav_max522, align 8, !tbaa !4
  %add.ptr523 = getelementptr inbounds %struct.sv** %177, i64 %180
  store %struct.sv** %add.ptr523, %struct.sv*** @PL_stack_max, align 8, !tbaa !3
  %181 = load %struct.av** %si_stack517, align 8, !tbaa !3
  %sv_any525 = getelementptr inbounds %struct.av* %181, i64 0, i32 0
  %182 = load %struct.xpvav** %sv_any525, align 8, !tbaa !3
  %xav_fill526 = getelementptr inbounds %struct.xpvav* %182, i64 0, i32 1
  %183 = load i64* %xav_fill526, align 8, !tbaa !4
  %add.ptr527 = getelementptr inbounds %struct.sv** %177, i64 %183
  store %struct.sv** %add.ptr527, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %184 = load %struct.av** %si_stack517, align 8, !tbaa !3
  store %struct.av* %184, %struct.av** @PL_curstack, align 8, !tbaa !3
  store %struct.stackinfo* %163, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %185 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !3
  %je_mustcatch529 = getelementptr inbounds %struct.jmpenv* %185, i64 0, i32 3
  store i8 %131, i8* %je_mustcatch529, align 1, !tbaa !1
  %tobool530 = icmp eq i32 %postpr.5, 0
  br i1 %tobool530, label %if.else677, label %if.then531

if.then531:                                       ; preds = %if.end510
  switch i32 %method, label %sw.epilog674 [
    i32 29, label %sw.bb532
    i32 37, label %sw.bb532
    i32 28, label %sw.bb545
    i32 36, label %sw.bb545
    i32 31, label %sw.bb558
    i32 39, label %sw.bb558
    i32 30, label %sw.bb571
    i32 38, label %sw.bb571
    i32 32, label %sw.bb584
    i32 40, label %sw.bb584
    i32 33, label %sw.bb597
    i32 41, label %sw.bb597
    i32 44, label %sw.bb610
    i32 45, label %sw.bb610
    i32 42, label %sw.bb615
  ]

sw.bb532:                                         ; preds = %if.then531, %if.then531
  %sv_flags533 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %186 = load i32* %sv_flags533, align 4, !tbaa !0
  %and534 = and i32 %186, 65536
  %tobool535 = icmp eq i32 %and534, 0
  br i1 %tobool535, label %cond.false539, label %cond.true536

cond.true536:                                     ; preds = %sw.bb532
  %sv_any537 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %187 = load i8** %sv_any537, align 8, !tbaa !3
  %xiv_iv538 = getelementptr inbounds i8* %187, i64 24
  %188 = bitcast i8* %xiv_iv538 to i64*
  %189 = load i64* %188, align 8, !tbaa !4
  br label %cond.end541

cond.false539:                                    ; preds = %sw.bb532
  %call540 = call i64 @Perl_sv_2iv(%struct.sv* %161) #6
  br label %cond.end541

cond.end541:                                      ; preds = %cond.false539, %cond.true536
  %cond542 = phi i64 [ %189, %cond.true536 ], [ %call540, %cond.false539 ]
  %cmp543 = icmp slt i64 %cond542, 1
  %conv544 = zext i1 %cmp543 to i32
  br label %sw.epilog674

sw.bb545:                                         ; preds = %if.then531, %if.then531
  %sv_flags546 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %190 = load i32* %sv_flags546, align 4, !tbaa !0
  %and547 = and i32 %190, 65536
  %tobool548 = icmp eq i32 %and547, 0
  br i1 %tobool548, label %cond.false552, label %cond.true549

cond.true549:                                     ; preds = %sw.bb545
  %sv_any550 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %191 = load i8** %sv_any550, align 8, !tbaa !3
  %xiv_iv551 = getelementptr inbounds i8* %191, i64 24
  %192 = bitcast i8* %xiv_iv551 to i64*
  %193 = load i64* %192, align 8, !tbaa !4
  br label %cond.end554

cond.false552:                                    ; preds = %sw.bb545
  %call553 = call i64 @Perl_sv_2iv(%struct.sv* %161) #6
  br label %cond.end554

cond.end554:                                      ; preds = %cond.false552, %cond.true549
  %cond555 = phi i64 [ %193, %cond.true549 ], [ %call553, %cond.false552 ]
  %cond555.lobit = lshr i64 %cond555, 63
  %194 = trunc i64 %cond555.lobit to i32
  br label %sw.epilog674

sw.bb558:                                         ; preds = %if.then531, %if.then531
  %sv_flags559 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %195 = load i32* %sv_flags559, align 4, !tbaa !0
  %and560 = and i32 %195, 65536
  %tobool561 = icmp eq i32 %and560, 0
  br i1 %tobool561, label %cond.false565, label %cond.true562

cond.true562:                                     ; preds = %sw.bb558
  %sv_any563 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %196 = load i8** %sv_any563, align 8, !tbaa !3
  %xiv_iv564 = getelementptr inbounds i8* %196, i64 24
  %197 = bitcast i8* %xiv_iv564 to i64*
  %198 = load i64* %197, align 8, !tbaa !4
  br label %cond.end567

cond.false565:                                    ; preds = %sw.bb558
  %call566 = call i64 @Perl_sv_2iv(%struct.sv* %161) #6
  br label %cond.end567

cond.end567:                                      ; preds = %cond.false565, %cond.true562
  %cond568 = phi i64 [ %198, %cond.true562 ], [ %call566, %cond.false565 ]
  %cond568.lobit = lshr i64 %cond568, 63
  %199 = trunc i64 %cond568.lobit to i32
  %.not = xor i32 %199, 1
  br label %sw.epilog674

sw.bb571:                                         ; preds = %if.then531, %if.then531
  %sv_flags572 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %200 = load i32* %sv_flags572, align 4, !tbaa !0
  %and573 = and i32 %200, 65536
  %tobool574 = icmp eq i32 %and573, 0
  br i1 %tobool574, label %cond.false578, label %cond.true575

cond.true575:                                     ; preds = %sw.bb571
  %sv_any576 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %201 = load i8** %sv_any576, align 8, !tbaa !3
  %xiv_iv577 = getelementptr inbounds i8* %201, i64 24
  %202 = bitcast i8* %xiv_iv577 to i64*
  %203 = load i64* %202, align 8, !tbaa !4
  br label %cond.end580

cond.false578:                                    ; preds = %sw.bb571
  %call579 = call i64 @Perl_sv_2iv(%struct.sv* %161) #6
  br label %cond.end580

cond.end580:                                      ; preds = %cond.false578, %cond.true575
  %cond581 = phi i64 [ %203, %cond.true575 ], [ %call579, %cond.false578 ]
  %cmp582 = icmp sgt i64 %cond581, 0
  %conv583 = zext i1 %cmp582 to i32
  br label %sw.epilog674

sw.bb584:                                         ; preds = %if.then531, %if.then531
  %sv_flags585 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %204 = load i32* %sv_flags585, align 4, !tbaa !0
  %and586 = and i32 %204, 65536
  %tobool587 = icmp eq i32 %and586, 0
  br i1 %tobool587, label %cond.false591, label %cond.true588

cond.true588:                                     ; preds = %sw.bb584
  %sv_any589 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %205 = load i8** %sv_any589, align 8, !tbaa !3
  %xiv_iv590 = getelementptr inbounds i8* %205, i64 24
  %206 = bitcast i8* %xiv_iv590 to i64*
  %207 = load i64* %206, align 8, !tbaa !4
  br label %cond.end593

cond.false591:                                    ; preds = %sw.bb584
  %call592 = call i64 @Perl_sv_2iv(%struct.sv* %161) #6
  br label %cond.end593

cond.end593:                                      ; preds = %cond.false591, %cond.true588
  %cond594 = phi i64 [ %207, %cond.true588 ], [ %call592, %cond.false591 ]
  %cmp595 = icmp eq i64 %cond594, 0
  %conv596 = zext i1 %cmp595 to i32
  br label %sw.epilog674

sw.bb597:                                         ; preds = %if.then531, %if.then531
  %sv_flags598 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %208 = load i32* %sv_flags598, align 4, !tbaa !0
  %and599 = and i32 %208, 65536
  %tobool600 = icmp eq i32 %and599, 0
  br i1 %tobool600, label %cond.false604, label %cond.true601

cond.true601:                                     ; preds = %sw.bb597
  %sv_any602 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %209 = load i8** %sv_any602, align 8, !tbaa !3
  %xiv_iv603 = getelementptr inbounds i8* %209, i64 24
  %210 = bitcast i8* %xiv_iv603 to i64*
  %211 = load i64* %210, align 8, !tbaa !4
  br label %cond.end606

cond.false604:                                    ; preds = %sw.bb597
  %call605 = call i64 @Perl_sv_2iv(%struct.sv* %161) #6
  br label %cond.end606

cond.end606:                                      ; preds = %cond.false604, %cond.true601
  %cond607 = phi i64 [ %211, %cond.true601 ], [ %call605, %cond.false604 ]
  %cmp608 = icmp ne i64 %cond607, 0
  %conv609 = zext i1 %cmp608 to i32
  br label %sw.epilog674

sw.bb610:                                         ; preds = %if.then531, %if.then531
  %cmp611 = icmp eq %struct.sv* %left.addr.2, %161
  br i1 %cmp611, label %return, label %if.then613

if.then613:                                       ; preds = %sw.bb610
  call void @Perl_sv_setsv_flags(%struct.sv* %left.addr.2, %struct.sv* %161, i32 2) #6
  br label %return

sw.bb615:                                         ; preds = %if.then531
  %tobool616 = icmp eq %struct.sv* %161, null
  br i1 %tobool616, label %cond.end671, label %cond.false618

cond.false618:                                    ; preds = %sw.bb615
  %sv_flags619 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %212 = load i32* %sv_flags619, align 4, !tbaa !0
  %and620 = and i32 %212, 262144
  %tobool621 = icmp eq i32 %and620, 0
  br i1 %tobool621, label %cond.false644, label %cond.true622

cond.true622:                                     ; preds = %cond.false618
  %sv_any623 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %213 = load i8** %sv_any623, align 8, !tbaa !3
  %214 = bitcast i8* %213 to %struct.xpv*
  store %struct.xpv* %214, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool624 = icmp eq i8* %213, null
  br i1 %tobool624, label %land.end641, label %land.rhs625

land.rhs625:                                      ; preds = %cond.true622
  %xpv_cur626 = getelementptr inbounds i8* %213, i64 8
  %215 = bitcast i8* %xpv_cur626 to i64*
  %216 = load i64* %215, align 8, !tbaa !4
  %cmp627 = icmp ugt i64 %216, 1
  br i1 %cmp627, label %land.end641, label %lor.rhs629

lor.rhs629:                                       ; preds = %land.rhs625
  %tobool631 = icmp eq i64 %216, 0
  br i1 %tobool631, label %land.end641, label %land.rhs632

land.rhs632:                                      ; preds = %lor.rhs629
  %xpv_pv633 = bitcast i8* %213 to i8**
  %217 = load i8** %xpv_pv633, align 8, !tbaa !3
  %218 = load i8* %217, align 1, !tbaa !1
  %cmp635 = icmp ne i8 %218, 48
  br label %land.end641

land.end641:                                      ; preds = %lor.rhs629, %cond.true622, %land.rhs625, %land.rhs632
  %219 = phi i1 [ false, %cond.true622 ], [ true, %land.rhs625 ], [ false, %lor.rhs629 ], [ %cmp635, %land.rhs632 ]
  %cond643 = zext i1 %219 to i32
  br label %cond.end671

cond.false644:                                    ; preds = %cond.false618
  %and646 = and i32 %212, 65536
  %tobool647 = icmp eq i32 %and646, 0
  br i1 %tobool647, label %cond.false653, label %cond.true648

cond.true648:                                     ; preds = %cond.false644
  %sv_any649 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %220 = load i8** %sv_any649, align 8, !tbaa !3
  %xiv_iv650 = getelementptr inbounds i8* %220, i64 24
  %221 = bitcast i8* %xiv_iv650 to i64*
  %222 = load i64* %221, align 8, !tbaa !4
  %cmp651 = icmp ne i64 %222, 0
  %conv652 = zext i1 %cmp651 to i32
  br label %cond.end671

cond.false653:                                    ; preds = %cond.false644
  %and655 = and i32 %212, 131072
  %tobool656 = icmp eq i32 %and655, 0
  br i1 %tobool656, label %cond.false662, label %cond.true657

cond.true657:                                     ; preds = %cond.false653
  %sv_any658 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %223 = load i8** %sv_any658, align 8, !tbaa !3
  %xnv_nv659 = getelementptr inbounds i8* %223, i64 32
  %224 = bitcast i8* %xnv_nv659 to double*
  %225 = load double* %224, align 8, !tbaa !6
  %cmp660 = fcmp une double %225, 0.000000e+00
  %conv661 = zext i1 %cmp660 to i32
  br label %cond.end671

cond.false662:                                    ; preds = %cond.false653
  %call663 = call signext i8 @Perl_sv_2bool(%struct.sv* %161) #6
  %conv664 = sext i8 %call663 to i32
  br label %cond.end671

cond.end671:                                      ; preds = %sw.bb615, %land.end641, %cond.true657, %cond.false662, %cond.true648
  %cond672 = phi i32 [ 0, %sw.bb615 ], [ %cond643, %land.end641 ], [ %conv652, %cond.true648 ], [ %conv661, %cond.true657 ], [ %conv664, %cond.false662 ]
  %lnot = icmp eq i32 %cond672, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %sw.epilog674

sw.epilog674:                                     ; preds = %if.then531, %cond.end671, %cond.end606, %cond.end593, %cond.end580, %cond.end567, %cond.end554, %cond.end541
  %ans.0 = phi i32 [ 0, %if.then531 ], [ %lnot.ext, %cond.end671 ], [ %conv609, %cond.end606 ], [ %conv596, %cond.end593 ], [ %conv583, %cond.end580 ], [ %.not, %cond.end567 ], [ %194, %cond.end554 ], [ %conv544, %cond.end541 ]
  %tobool675 = icmp ne i32 %ans.0, 0
  %cond676 = select i1 %tobool675, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  br label %return

if.else677:                                       ; preds = %if.end510
  %cmp678 = icmp eq i32 %method, 56
  br i1 %cmp678, label %if.then680, label %return

if.then680:                                       ; preds = %if.else677
  %sv_flags681 = getelementptr inbounds %struct.sv* %161, i64 0, i32 2
  %226 = load i32* %sv_flags681, align 4, !tbaa !0
  %and682 = and i32 %226, 524288
  %tobool683 = icmp eq i32 %and682, 0
  br i1 %tobool683, label %if.then684, label %if.end685

if.then684:                                       ; preds = %if.then680
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str80, i64 0, i64 0)) #6
  br label %if.end685

if.end685:                                        ; preds = %if.then680, %if.then684
  %sv_any686 = getelementptr inbounds %struct.sv* %161, i64 0, i32 0
  %227 = load i8** %sv_any686, align 8, !tbaa !3
  %xrv_rv687 = bitcast i8* %227 to %struct.sv**
  %228 = load %struct.sv** %xrv_rv687, align 8, !tbaa !3
  store %struct.sv* %228, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %tobool688 = icmp eq %struct.sv* %228, null
  br i1 %tobool688, label %return, label %land.rhs689

land.rhs689:                                      ; preds = %if.end685
  %sv_refcnt690 = getelementptr inbounds %struct.sv* %228, i64 0, i32 1
  %229 = load i32* %sv_refcnt690, align 4, !tbaa !0
  %inc691 = add i32 %229, 1
  store i32 %inc691, i32* %sv_refcnt690, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %land.rhs689, %if.end685, %if.then117, %sw.epilog674, %sw.bb610, %if.then613, %if.else677, %if.else358, %land.lhs.true353, %not_found, %if.then260, %if.then32, %if.then32, %if.end185, %sw.bb203, %land.end
  %retval.1 = phi %struct.sv* [ %left, %sw.bb203 ], [ %call92, %land.end ], [ %left, %if.end185 ], [ null, %if.then32 ], [ null, %if.then32 ], [ null, %if.then260 ], [ %left.addr.1, %not_found ], [ null, %land.lhs.true353 ], [ null, %if.else358 ], [ %cond676, %sw.epilog674 ], [ %left.addr.2, %sw.bb610 ], [ %left.addr.2, %if.then613 ], [ %161, %if.else677 ], [ %left, %if.then117 ], [ null, %if.end685 ], [ %228, %land.rhs689 ]
  ret %struct.sv* %retval.1
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: optsize
declare void @Perl_save_op() #1

; Function Attrs: optsize
declare %struct.op* @Perl_pp_pushmark() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: optsize
declare %struct.op* @Perl_pp_entersub() #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind optsize readonly uwtable
define signext i8 @Perl_is_gv_magical(i8* %name, i64 %len, i32 %flags) #5 {
entry:
  %cmp = icmp ugt i64 %len, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %name, i64 1
  %0 = load i8* %name, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %if.end73 [
    i32 57, label %sw.bb57
    i32 79, label %sw.bb12
    i32 83, label %sw.bb18
    i32 15, label %sw.bb33
    i32 20, label %sw.bb38
    i32 21, label %sw.bb43
    i32 23, label %sw.bb52
    i32 49, label %sw.bb57
    i32 50, label %sw.bb57
    i32 51, label %sw.bb57
    i32 52, label %sw.bb57
    i32 53, label %sw.bb57
    i32 54, label %sw.bb57
    i32 55, label %sw.bb57
    i32 56, label %sw.bb57
  ]

sw.bb12:                                          ; preds = %if.then
  %cmp13 = icmp eq i64 %len, 8
  br i1 %cmp13, label %land.lhs.true15, label %if.end73

land.lhs.true15:                                  ; preds = %sw.bb12
  %call = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str42, i64 0, i64 0)) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end73

sw.bb18:                                          ; preds = %if.then
  %cmp19 = icmp eq i64 %len, 3
  br i1 %cmp19, label %land.lhs.true21, label %if.end73

land.lhs.true21:                                  ; preds = %sw.bb18
  %1 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %1, 73
  br i1 %cmp24, label %land.lhs.true26, label %if.end73

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %arrayidx27 = getelementptr inbounds i8* %name, i64 2
  %2 = load i8* %arrayidx27, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %2, 71
  br i1 %cmp29, label %return, label %if.end73

sw.bb33:                                          ; preds = %if.then
  %call34 = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str46, i64 0, i64 0)) #6
  %tobool35 = icmp eq i32 %call34, 0
  br i1 %tobool35, label %return, label %if.end73

sw.bb38:                                          ; preds = %if.then
  %call39 = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0)) #6
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %return, label %if.end73

sw.bb43:                                          ; preds = %if.then
  %call44 = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0)) #6
  %tobool45 = icmp eq i32 %call44, 0
  br i1 %tobool45, label %return, label %if.end47

if.end47:                                         ; preds = %sw.bb43
  %call48 = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([10 x i8]* @.str49, i64 0, i64 0)) #6
  %tobool49 = icmp eq i32 %call48, 0
  br i1 %tobool49, label %return, label %if.end73

sw.bb52:                                          ; preds = %if.then
  %call53 = tail call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([12 x i8]* @.str50, i64 0, i64 0)) #6
  %tobool54 = icmp eq i32 %call53, 0
  br i1 %tobool54, label %return, label %if.end73

sw.bb57:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %add.ptr58 = getelementptr inbounds i8* %name, i64 %len
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb57
  %end.0 = phi i8* [ %add.ptr58, %sw.bb57 ], [ %incdec.ptr, %while.body ]
  %incdec.ptr = getelementptr inbounds i8* %end.0, i64 -1
  %cmp59 = icmp ugt i8* %incdec.ptr, %name
  br i1 %cmp59, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %3 = load i8* %incdec.ptr, align 1, !tbaa !1
  %.off = add i8 %3, -48
  %4 = icmp ult i8 %.off, 10
  br i1 %4, label %while.cond, label %return

if.else:                                          ; preds = %entry
  %5 = load i8* %name, align 1, !tbaa !1
  %conv70 = sext i8 %5 to i32
  switch i32 %conv70, label %if.end73 [
    i32 38, label %return
    i32 96, label %return
    i32 39, label %return
    i32 58, label %return
    i32 63, label %return
    i32 33, label %return
    i32 45, label %return
    i32 42, label %return
    i32 35, label %return
    i32 91, label %return
    i32 94, label %return
    i32 126, label %return
    i32 61, label %return
    i32 37, label %return
    i32 46, label %return
    i32 40, label %return
    i32 41, label %return
    i32 60, label %return
    i32 62, label %return
    i32 44, label %return
    i32 92, label %return
    i32 47, label %return
    i32 124, label %return
    i32 43, label %return
    i32 59, label %return
    i32 93, label %return
    i32 1, label %return
    i32 3, label %return
    i32 4, label %return
    i32 5, label %return
    i32 6, label %return
    i32 8, label %return
    i32 9, label %return
    i32 12, label %return
    i32 14, label %return
    i32 15, label %return
    i32 16, label %return
    i32 19, label %return
    i32 20, label %return
    i32 22, label %return
    i32 23, label %return
    i32 49, label %return
    i32 50, label %return
    i32 51, label %return
    i32 52, label %return
    i32 53, label %return
    i32 54, label %return
    i32 55, label %return
    i32 56, label %return
    i32 57, label %return
  ]

if.end73:                                         ; preds = %land.lhs.true15, %sw.bb33, %sw.bb38, %if.end47, %sw.bb52, %if.else, %if.then, %sw.bb12, %land.lhs.true26, %land.lhs.true21, %sw.bb18
  br label %return

return:                                           ; preds = %while.cond, %while.body, %land.lhs.true26, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %sw.bb52, %sw.bb43, %if.end47, %sw.bb38, %sw.bb33, %land.lhs.true15, %if.end73
  %retval.0 = phi i8 [ 0, %if.end73 ], [ 1, %land.lhs.true15 ], [ 1, %sw.bb33 ], [ 1, %sw.bb38 ], [ 1, %if.end47 ], [ 1, %sw.bb43 ], [ 1, %sw.bb52 ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %if.else ], [ 1, %land.lhs.true26 ], [ 1, %while.cond ], [ 0, %while.body ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_save_scalar(%struct.gv*) #1

; Function Attrs: optsize
declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
