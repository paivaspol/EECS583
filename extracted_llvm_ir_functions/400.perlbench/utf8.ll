; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/utf8.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }

@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@.str = private unnamed_addr constant [25 x i8] c"UTF-16 surrogate 0x%04lx\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"Unicode character 0x%04lx is illegal\00", align 1
@PL_utf8skip = external constant [0 x i8]
@.str2 = private unnamed_addr constant [27 x i8] c"Malformed UTF-8 character \00", align 1
@.str3 = private unnamed_addr constant [15 x i8] c"(empty string)\00", align 1
@.str4 = private unnamed_addr constant [69 x i8] c"(unexpected continuation byte 0x%02lx, with no preceding start byte)\00", align 1
@.str5 = private unnamed_addr constant [81 x i8] c"(unexpected non-continuation byte 0x%02lx, immediately after start byte 0x%02lx)\00", align 1
@.str6 = private unnamed_addr constant [98 x i8] c"(unexpected non-continuation byte 0x%02lx, %d byte%s after start byte 0x%02lx, expected %d bytes)\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [15 x i8] c"(byte 0x%02lx)\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"(%d byte%s, need %d, after start byte 0x%02lx)\00", align 1
@.str11 = private unnamed_addr constant [59 x i8] c"(overflow at 0x%lx, byte 0x%02x, after start byte 0x%02lx)\00", align 1
@.str12 = private unnamed_addr constant [27 x i8] c"(UTF-16 surrogate 0x%04lx)\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"(character 0x%04lx)\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"(unknown reason)\00", align 1
@PL_op = external global %struct.op*
@.str15 = private unnamed_addr constant [9 x i8] c"%s in %s\00", align 1
@PL_op_desc = external global [0 x i8*]
@.str16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@unees = internal global [53 x i8] c"Malformed UTF-8 character (unexpected end of string)\00", align 16
@.str17 = private unnamed_addr constant [38 x i8] c"panic: utf16_to_utf8: odd bytelen %lu\00", align 1
@.str18 = private unnamed_addr constant [27 x i8] c"Malformed UTF-16 surrogate\00", align 1
@PL_utf8_alnum = external global %struct.sv*
@.str19 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"IsWord\00", align 1
@PL_sv_undef = external global %struct.sv
@.str21 = private unnamed_addr constant [9 x i8] c"IsAlnumC\00", align 1
@PL_utf8_idstart = external global %struct.sv*
@.str22 = private unnamed_addr constant [8 x i8] c"IdStart\00", align 1
@PL_utf8_idcont = external global %struct.sv*
@.str23 = private unnamed_addr constant [11 x i8] c"IdContinue\00", align 1
@PL_utf8_alpha = external global %struct.sv*
@.str24 = private unnamed_addr constant [8 x i8] c"IsAlpha\00", align 1
@PL_utf8_ascii = external global %struct.sv*
@.str25 = private unnamed_addr constant [8 x i8] c"IsAscii\00", align 1
@PL_utf8_space = external global %struct.sv*
@.str26 = private unnamed_addr constant [12 x i8] c"IsSpacePerl\00", align 1
@PL_utf8_digit = external global %struct.sv*
@.str27 = private unnamed_addr constant [8 x i8] c"IsDigit\00", align 1
@PL_utf8_upper = external global %struct.sv*
@.str28 = private unnamed_addr constant [12 x i8] c"IsUppercase\00", align 1
@PL_utf8_lower = external global %struct.sv*
@.str29 = private unnamed_addr constant [12 x i8] c"IsLowercase\00", align 1
@PL_utf8_cntrl = external global %struct.sv*
@.str30 = private unnamed_addr constant [8 x i8] c"IsCntrl\00", align 1
@PL_utf8_graph = external global %struct.sv*
@.str31 = private unnamed_addr constant [8 x i8] c"IsGraph\00", align 1
@PL_utf8_print = external global %struct.sv*
@.str32 = private unnamed_addr constant [8 x i8] c"IsPrint\00", align 1
@PL_utf8_punct = external global %struct.sv*
@.str33 = private unnamed_addr constant [8 x i8] c"IsPunct\00", align 1
@PL_utf8_xdigit = external global %struct.sv*
@.str34 = private unnamed_addr constant [9 x i8] c"IsXDigit\00", align 1
@PL_utf8_mark = external global %struct.sv*
@.str35 = private unnamed_addr constant [4 x i8] c"IsM\00", align 1
@PL_utf8_toupper = external global %struct.sv*
@.str36 = private unnamed_addr constant [8 x i8] c"ToUpper\00", align 1
@.str37 = private unnamed_addr constant [18 x i8] c"utf8::ToSpecUpper\00", align 1
@PL_utf8_totitle = external global %struct.sv*
@.str38 = private unnamed_addr constant [8 x i8] c"ToTitle\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"utf8::ToSpecTitle\00", align 1
@PL_utf8_tolower = external global %struct.sv*
@.str40 = private unnamed_addr constant [8 x i8] c"ToLower\00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c"utf8::ToSpecLower\00", align 1
@PL_utf8_tofold = external global %struct.sv*
@.str42 = private unnamed_addr constant [7 x i8] c"ToFold\00", align 1
@.str43 = private unnamed_addr constant [17 x i8] c"utf8::ToSpecFold\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_curstackinfo = external global %struct.stackinfo*
@PL_stack_base = external global %struct.sv**
@PL_curstack = external global %struct.av*
@PL_stack_max = external global %struct.sv**
@PL_hints = external global i32
@.str44 = private unnamed_addr constant [9 x i8] c"SWASHNEW\00", align 1
@PL_errgv = external global %struct.gv*
@PL_Xpv = external global %struct.xpv*
@PL_markstack_ptr = external global i32*
@PL_markstack_max = external global i32*
@PL_compiling = external global %struct.cop
@PL_in_my = external global i32
@PL_tokenbuf = external global [256 x i8]
@PL_stderrgv = external global %struct.gv*
@.str45 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str46 = private unnamed_addr constant [44 x i8] c"Can't find Unicode property definition \22%_\22\00", align 1
@.str47 = private unnamed_addr constant [33 x i8] c"SWASHNEW didn't return an HV ref\00", align 1
@PL_last_swash_hv = external global %struct.hv*
@PL_last_swash_klen = external global i32
@PL_last_swash_key = external global [10 x i8]
@PL_last_swash_tmps = external global i8*
@PL_last_swash_slen = external global i64
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@.str48 = private unnamed_addr constant [9 x i8] c"SWASHGET\00", align 1
@.str49 = private unnamed_addr constant [47 x i8] c"SWASHGET didn't return result of proper length\00", align 1
@.str50 = private unnamed_addr constant [19 x i8] c"panic: swash_fetch\00", align 1
@.str51 = private unnamed_addr constant [4 x i8] c"\5C%c\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"\5Cx{%lx}\00", align 1
@.str54 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_uvuni_to_utf8_flags(i8* %d, i64 %uv, i64 %flags) #0 {
entry:
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %0, i64 0, i32 14
  %1 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %1, null
  br i1 %cmp, label %lor.lhs.false7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1 = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct.sv* %3, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2, label %lor.lhs.false7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings4 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.sv* %5, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings6 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings6, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %9, i64 11
  %10 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %10, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings8 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings8, align 8, !tbaa !0
  %cmp9 = icmp eq %struct.sv* %12, null
  br i1 %cmp9, label %land.lhs.true11, label %if.end47

land.lhs.true11:                                  ; preds = %lor.lhs.false7
  %13 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and13 = and i8 %13, 1
  %tobool14 = icmp eq i8 %and13, 0
  br i1 %tobool14, label %if.end47, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true11, %land.lhs.true3
  %uv.off = add i64 %uv, -55296
  %14 = icmp ult i64 %uv.off, 2048
  br i1 %14, label %land.lhs.true20, label %if.else

land.lhs.true20:                                  ; preds = %if.then
  %and21 = and i64 %flags, 1
  %tobool22 = icmp eq i64 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true20
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([25 x i8]* @.str, i64 0, i64 0), i64 %uv) #5
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true20, %if.then
  %uv.off348 = add i64 %uv, -64976
  %15 = icmp ult i64 %uv.off348, 32
  br i1 %15, label %land.lhs.true29, label %lor.lhs.false32

land.lhs.true29:                                  ; preds = %if.else
  %and30 = and i64 %flags, 2
  %tobool31 = icmp eq i64 %and30, 0
  br i1 %tobool31, label %land.lhs.true39, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true29, %if.else
  %and33 = and i64 %uv, 65534
  %cmp34 = icmp eq i64 %and33, 65534
  br i1 %cmp34, label %land.lhs.true36, label %if.end47

land.lhs.true36:                                  ; preds = %lor.lhs.false32
  %and37 = and i64 %flags, 4
  %tobool38 = icmp eq i64 %and37, 0
  br i1 %tobool38, label %land.lhs.true39, label %if.end47

land.lhs.true39:                                  ; preds = %land.lhs.true29, %land.lhs.true36
  %cmp40 = icmp ult i64 %uv, 1114112
  br i1 %cmp40, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true39
  %and43 = and i64 %flags, 8
  %tobool44 = icmp eq i64 %and43, 0
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %lor.lhs.false42, %land.lhs.true39
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i64 %uv) #5
  br label %if.end47

if.end47:                                         ; preds = %lor.lhs.false42, %land.lhs.true36, %land.lhs.true11, %if.then23, %if.then45, %lor.lhs.false32, %lor.lhs.false7
  %cmp48 = icmp ult i64 %uv, 128
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  %conv51 = trunc i64 %uv to i8
  %incdec.ptr = getelementptr inbounds i8* %d, i64 1
  store i8 %conv51, i8* %d, align 1, !tbaa !1
  br label %return

if.end52:                                         ; preds = %if.end47
  %cmp53 = icmp ult i64 %uv, 2048
  br i1 %cmp53, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.end52
  %shr = lshr i64 %uv, 6
  %or = or i64 %shr, 192
  %conv56 = trunc i64 %or to i8
  %incdec.ptr57 = getelementptr inbounds i8* %d, i64 1
  store i8 %conv56, i8* %d, align 1, !tbaa !1
  %and58 = and i64 %uv, 63
  %or59 = or i64 %and58, 128
  %conv60 = trunc i64 %or59 to i8
  %incdec.ptr61 = getelementptr inbounds i8* %d, i64 2
  store i8 %conv60, i8* %incdec.ptr57, align 1, !tbaa !1
  br label %return

if.end62:                                         ; preds = %if.end52
  %cmp63 = icmp ult i64 %uv, 65536
  br i1 %cmp63, label %if.then65, label %if.end79

if.then65:                                        ; preds = %if.end62
  %shr66 = lshr i64 %uv, 12
  %or67 = or i64 %shr66, 224
  %conv68 = trunc i64 %or67 to i8
  %incdec.ptr69 = getelementptr inbounds i8* %d, i64 1
  store i8 %conv68, i8* %d, align 1, !tbaa !1
  %shr70 = lshr i64 %uv, 6
  %and71 = and i64 %shr70, 63
  %or72 = or i64 %and71, 128
  %conv73 = trunc i64 %or72 to i8
  %incdec.ptr74 = getelementptr inbounds i8* %d, i64 2
  store i8 %conv73, i8* %incdec.ptr69, align 1, !tbaa !1
  %and75 = and i64 %uv, 63
  %or76 = or i64 %and75, 128
  %conv77 = trunc i64 %or76 to i8
  %incdec.ptr78 = getelementptr inbounds i8* %d, i64 3
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !1
  br label %return

if.end79:                                         ; preds = %if.end62
  %cmp80 = icmp ult i64 %uv, 2097152
  br i1 %cmp80, label %if.then82, label %if.end101

if.then82:                                        ; preds = %if.end79
  %shr83 = lshr i64 %uv, 18
  %or84 = or i64 %shr83, 240
  %conv85 = trunc i64 %or84 to i8
  %incdec.ptr86 = getelementptr inbounds i8* %d, i64 1
  store i8 %conv85, i8* %d, align 1, !tbaa !1
  %shr87 = lshr i64 %uv, 12
  %and88 = and i64 %shr87, 63
  %or89 = or i64 %and88, 128
  %conv90 = trunc i64 %or89 to i8
  %incdec.ptr91 = getelementptr inbounds i8* %d, i64 2
  store i8 %conv90, i8* %incdec.ptr86, align 1, !tbaa !1
  %shr92 = lshr i64 %uv, 6
  %and93 = and i64 %shr92, 63
  %or94 = or i64 %and93, 128
  %conv95 = trunc i64 %or94 to i8
  %incdec.ptr96 = getelementptr inbounds i8* %d, i64 3
  store i8 %conv95, i8* %incdec.ptr91, align 1, !tbaa !1
  %and97 = and i64 %uv, 63
  %or98 = or i64 %and97, 128
  %conv99 = trunc i64 %or98 to i8
  %incdec.ptr100 = getelementptr inbounds i8* %d, i64 4
  store i8 %conv99, i8* %incdec.ptr96, align 1, !tbaa !1
  br label %return

if.end101:                                        ; preds = %if.end79
  %cmp102 = icmp ult i64 %uv, 67108864
  br i1 %cmp102, label %if.then104, label %if.end128

if.then104:                                       ; preds = %if.end101
  %shr105 = lshr i64 %uv, 24
  %or106 = or i64 %shr105, 248
  %conv107 = trunc i64 %or106 to i8
  %incdec.ptr108 = getelementptr inbounds i8* %d, i64 1
  store i8 %conv107, i8* %d, align 1, !tbaa !1
  %shr109 = lshr i64 %uv, 18
  %and110 = and i64 %shr109, 63
  %or111 = or i64 %and110, 128
  %conv112 = trunc i64 %or111 to i8
  %incdec.ptr113 = getelementptr inbounds i8* %d, i64 2
  store i8 %conv112, i8* %incdec.ptr108, align 1, !tbaa !1
  %shr114 = lshr i64 %uv, 12
  %and115 = and i64 %shr114, 63
  %or116 = or i64 %and115, 128
  %conv117 = trunc i64 %or116 to i8
  %incdec.ptr118 = getelementptr inbounds i8* %d, i64 3
  store i8 %conv117, i8* %incdec.ptr113, align 1, !tbaa !1
  %shr119 = lshr i64 %uv, 6
  %and120 = and i64 %shr119, 63
  %or121 = or i64 %and120, 128
  %conv122 = trunc i64 %or121 to i8
  %incdec.ptr123 = getelementptr inbounds i8* %d, i64 4
  store i8 %conv122, i8* %incdec.ptr118, align 1, !tbaa !1
  %and124 = and i64 %uv, 63
  %or125 = or i64 %and124, 128
  %conv126 = trunc i64 %or125 to i8
  %incdec.ptr127 = getelementptr inbounds i8* %d, i64 5
  store i8 %conv126, i8* %incdec.ptr123, align 1, !tbaa !1
  br label %return

if.end128:                                        ; preds = %if.end101
  %cmp129 = icmp ult i64 %uv, 2147483648
  br i1 %cmp129, label %if.then131, label %if.end160

if.then131:                                       ; preds = %if.end128
  %shr132 = lshr i64 %uv, 30
  %or133 = or i64 %shr132, 252
  %conv134 = trunc i64 %or133 to i8
  %incdec.ptr135 = getelementptr inbounds i8* %d, i64 1
  store i8 %conv134, i8* %d, align 1, !tbaa !1
  %shr136 = lshr i64 %uv, 24
  %and137 = and i64 %shr136, 63
  %or138 = or i64 %and137, 128
  %conv139 = trunc i64 %or138 to i8
  %incdec.ptr140 = getelementptr inbounds i8* %d, i64 2
  store i8 %conv139, i8* %incdec.ptr135, align 1, !tbaa !1
  %shr141 = lshr i64 %uv, 18
  %and142 = and i64 %shr141, 63
  %or143 = or i64 %and142, 128
  %conv144 = trunc i64 %or143 to i8
  %incdec.ptr145 = getelementptr inbounds i8* %d, i64 3
  store i8 %conv144, i8* %incdec.ptr140, align 1, !tbaa !1
  %shr146 = lshr i64 %uv, 12
  %and147 = and i64 %shr146, 63
  %or148 = or i64 %and147, 128
  %conv149 = trunc i64 %or148 to i8
  %incdec.ptr150 = getelementptr inbounds i8* %d, i64 4
  store i8 %conv149, i8* %incdec.ptr145, align 1, !tbaa !1
  %shr151 = lshr i64 %uv, 6
  %and152 = and i64 %shr151, 63
  %or153 = or i64 %and152, 128
  %conv154 = trunc i64 %or153 to i8
  %incdec.ptr155 = getelementptr inbounds i8* %d, i64 5
  store i8 %conv154, i8* %incdec.ptr150, align 1, !tbaa !1
  %and156 = and i64 %uv, 63
  %or157 = or i64 %and156, 128
  %conv158 = trunc i64 %or157 to i8
  %incdec.ptr159 = getelementptr inbounds i8* %d, i64 6
  store i8 %conv158, i8* %incdec.ptr155, align 1, !tbaa !1
  br label %return

if.end160:                                        ; preds = %if.end128
  %cmp161 = icmp ult i64 %uv, 68719476736
  %incdec.ptr164 = getelementptr inbounds i8* %d, i64 1
  br i1 %cmp161, label %if.then163, label %if.end194

if.then163:                                       ; preds = %if.end160
  store i8 -2, i8* %d, align 1, !tbaa !1
  %shr165 = lshr i64 %uv, 30
  %and166 = and i64 %shr165, 63
  %or167 = or i64 %and166, 128
  %conv168 = trunc i64 %or167 to i8
  %incdec.ptr169 = getelementptr inbounds i8* %d, i64 2
  store i8 %conv168, i8* %incdec.ptr164, align 1, !tbaa !1
  %shr170 = lshr i64 %uv, 24
  %and171 = and i64 %shr170, 63
  %or172 = or i64 %and171, 128
  %conv173 = trunc i64 %or172 to i8
  %incdec.ptr174 = getelementptr inbounds i8* %d, i64 3
  store i8 %conv173, i8* %incdec.ptr169, align 1, !tbaa !1
  %shr175 = lshr i64 %uv, 18
  %and176 = and i64 %shr175, 63
  %or177 = or i64 %and176, 128
  %conv178 = trunc i64 %or177 to i8
  %incdec.ptr179 = getelementptr inbounds i8* %d, i64 4
  store i8 %conv178, i8* %incdec.ptr174, align 1, !tbaa !1
  %shr180 = lshr i64 %uv, 12
  %and181 = and i64 %shr180, 63
  %or182 = or i64 %and181, 128
  %conv183 = trunc i64 %or182 to i8
  %incdec.ptr184 = getelementptr inbounds i8* %d, i64 5
  store i8 %conv183, i8* %incdec.ptr179, align 1, !tbaa !1
  %shr185 = lshr i64 %uv, 6
  %and186 = and i64 %shr185, 63
  %or187 = or i64 %and186, 128
  %conv188 = trunc i64 %or187 to i8
  %incdec.ptr189 = getelementptr inbounds i8* %d, i64 6
  store i8 %conv188, i8* %incdec.ptr184, align 1, !tbaa !1
  %and190 = and i64 %uv, 63
  %or191 = or i64 %and190, 128
  %conv192 = trunc i64 %or191 to i8
  %incdec.ptr193 = getelementptr inbounds i8* %d, i64 7
  store i8 %conv192, i8* %incdec.ptr189, align 1, !tbaa !1
  br label %return

if.end194:                                        ; preds = %if.end160
  store i8 -1, i8* %d, align 1, !tbaa !1
  %incdec.ptr196 = getelementptr inbounds i8* %d, i64 2
  store i8 -128, i8* %incdec.ptr164, align 1, !tbaa !1
  %shr197 = lshr i64 %uv, 60
  %or199 = or i64 %shr197, 128
  %conv200 = trunc i64 %or199 to i8
  %incdec.ptr201 = getelementptr inbounds i8* %d, i64 3
  store i8 %conv200, i8* %incdec.ptr196, align 1, !tbaa !1
  %shr202 = lshr i64 %uv, 54
  %and203 = and i64 %shr202, 63
  %or204 = or i64 %and203, 128
  %conv205 = trunc i64 %or204 to i8
  %incdec.ptr206 = getelementptr inbounds i8* %d, i64 4
  store i8 %conv205, i8* %incdec.ptr201, align 1, !tbaa !1
  %shr207 = lshr i64 %uv, 48
  %and208 = and i64 %shr207, 63
  %or209 = or i64 %and208, 128
  %conv210 = trunc i64 %or209 to i8
  %incdec.ptr211 = getelementptr inbounds i8* %d, i64 5
  store i8 %conv210, i8* %incdec.ptr206, align 1, !tbaa !1
  %shr212 = lshr i64 %uv, 42
  %and213 = and i64 %shr212, 63
  %or214 = or i64 %and213, 128
  %conv215 = trunc i64 %or214 to i8
  %incdec.ptr216 = getelementptr inbounds i8* %d, i64 6
  store i8 %conv215, i8* %incdec.ptr211, align 1, !tbaa !1
  %shr217 = lshr i64 %uv, 36
  %and218 = and i64 %shr217, 63
  %or219 = or i64 %and218, 128
  %conv220 = trunc i64 %or219 to i8
  %incdec.ptr221 = getelementptr inbounds i8* %d, i64 7
  store i8 %conv220, i8* %incdec.ptr216, align 1, !tbaa !1
  %shr222 = lshr i64 %uv, 30
  %and223 = and i64 %shr222, 63
  %or224 = or i64 %and223, 128
  %conv225 = trunc i64 %or224 to i8
  %incdec.ptr226 = getelementptr inbounds i8* %d, i64 8
  store i8 %conv225, i8* %incdec.ptr221, align 1, !tbaa !1
  %shr227 = lshr i64 %uv, 24
  %and228 = and i64 %shr227, 63
  %or229 = or i64 %and228, 128
  %conv230 = trunc i64 %or229 to i8
  %incdec.ptr231 = getelementptr inbounds i8* %d, i64 9
  store i8 %conv230, i8* %incdec.ptr226, align 1, !tbaa !1
  %shr232 = lshr i64 %uv, 18
  %and233 = and i64 %shr232, 63
  %or234 = or i64 %and233, 128
  %conv235 = trunc i64 %or234 to i8
  %incdec.ptr236 = getelementptr inbounds i8* %d, i64 10
  store i8 %conv235, i8* %incdec.ptr231, align 1, !tbaa !1
  %shr237 = lshr i64 %uv, 12
  %and238 = and i64 %shr237, 63
  %or239 = or i64 %and238, 128
  %conv240 = trunc i64 %or239 to i8
  %incdec.ptr241 = getelementptr inbounds i8* %d, i64 11
  store i8 %conv240, i8* %incdec.ptr236, align 1, !tbaa !1
  %shr242 = lshr i64 %uv, 6
  %and243 = and i64 %shr242, 63
  %or244 = or i64 %and243, 128
  %conv245 = trunc i64 %or244 to i8
  %incdec.ptr246 = getelementptr inbounds i8* %d, i64 12
  store i8 %conv245, i8* %incdec.ptr241, align 1, !tbaa !1
  %and247 = and i64 %uv, 63
  %or248 = or i64 %and247, 128
  %conv249 = trunc i64 %or248 to i8
  %incdec.ptr250 = getelementptr inbounds i8* %d, i64 13
  store i8 %conv249, i8* %incdec.ptr246, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.end194, %if.then163, %if.then131, %if.then104, %if.then82, %if.then65, %if.then55, %if.then50
  %retval.0 = phi i8* [ %incdec.ptr, %if.then50 ], [ %incdec.ptr61, %if.then55 ], [ %incdec.ptr78, %if.then65 ], [ %incdec.ptr100, %if.then82 ], [ %incdec.ptr127, %if.then104 ], [ %incdec.ptr159, %if.then131 ], [ %incdec.ptr193, %if.then163 ], [ %incdec.ptr250, %if.end194 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_uvuni_to_utf8(i8* %d, i64 %uv) #0 {
entry:
  %call = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %d, i64 %uv, i64 0) #6
  ret i8* %call
}

; Function Attrs: nounwind optsize readonly uwtable
define i64 @Perl_is_utf8_char(i8* nocapture %s) #2 {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %conv = zext i8 %0 to i64
  %cmp = icmp sgt i8 %0, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv2 = zext i8 %0 to i32
  %.off = add i8 %0, 64
  %1 = icmp ult i8 %.off, 62
  br i1 %1, label %if.end9, label %return

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %conv
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv10 = zext i8 %2 to i64
  %cmp11 = icmp ult i8 %2, 2
  br i1 %cmp11, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %arrayidx13 = getelementptr inbounds i8* %s, i64 1
  %3 = load i8* %arrayidx13, align 1, !tbaa !1
  %cmp15 = icmp slt i8 %3, 0
  %cmp20 = icmp ult i8 %3, -64
  %or.cond119 = and i1 %cmp15, %cmp20
  br i1 %or.cond119, label %if.end23, label %return

if.end23:                                         ; preds = %lor.lhs.false
  %cmp24 = icmp ugt i8 %2, 6
  br i1 %cmp24, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end23
  %sub26 = add i64 %conv10, 4294967294
  %sh_prom = trunc i64 %sub26 to i32
  %shr = lshr i32 31, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %if.end23, %cond.false
  %cond = phi i32 [ %shr, %cond.false ], [ 0, %if.end23 ]
  %and = and i32 %cond, %conv2
  %conv28 = zext i32 %and to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %cond.end
  %s.pn = phi i8* [ %s, %cond.end ], [ %s.addr.0, %if.end38 ]
  %slen.0.in = phi i64 [ %conv10, %cond.end ], [ %slen.0, %if.end38 ]
  %uv.0 = phi i64 [ %conv28, %cond.end ], [ %or, %if.end38 ]
  %s.addr.0 = getelementptr inbounds i8* %s.pn, i64 1
  %slen.0 = add i64 %slen.0.in, -1
  %tobool = icmp eq i64 %slen.0, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i8* %s.addr.0, align 1, !tbaa !1
  %cmp31 = icmp slt i8 %4, 0
  %cmp35 = icmp ult i8 %4, -64
  %or.cond120 = and i1 %cmp31, %cmp35
  br i1 %or.cond120, label %if.end38, label %return

if.end38:                                         ; preds = %while.body
  %conv30 = zext i8 %4 to i64
  %shl = shl i64 %uv.0, 6
  %and40 = and i64 %conv30, 63
  %or = or i64 %and40, %shl
  %cmp42 = icmp ult i64 %or, %uv.0
  br i1 %cmp42, label %return, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp47 = icmp ult i64 %uv.0, 128
  br i1 %cmp47, label %cond.end84, label %cond.false50

cond.false50:                                     ; preds = %while.end
  %cmp51 = icmp ult i64 %uv.0, 2048
  br i1 %cmp51, label %cond.end84, label %cond.false54

cond.false54:                                     ; preds = %cond.false50
  %cmp55 = icmp ult i64 %uv.0, 65536
  br i1 %cmp55, label %cond.end84, label %cond.false58

cond.false58:                                     ; preds = %cond.false54
  %cmp59 = icmp ult i64 %uv.0, 2097152
  br i1 %cmp59, label %cond.end84, label %cond.false62

cond.false62:                                     ; preds = %cond.false58
  %cmp63 = icmp ult i64 %uv.0, 67108864
  br i1 %cmp63, label %cond.end84, label %cond.false66

cond.false66:                                     ; preds = %cond.false62
  %cmp67 = icmp ult i64 %uv.0, 2147483648
  br i1 %cmp67, label %cond.end84, label %cond.false70

cond.false70:                                     ; preds = %cond.false66
  %cmp71 = icmp ult i64 %uv.0, 68719476736
  %phitmp = select i1 %cmp71, i64 7, i64 13
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false50, %cond.false58, %cond.false70, %cond.false66, %cond.false62, %cond.false54, %while.end
  %cond85 = phi i64 [ 1, %while.end ], [ 2, %cond.false50 ], [ 3, %cond.false54 ], [ 4, %cond.false58 ], [ 5, %cond.false62 ], [ %phitmp, %cond.false70 ], [ 6, %cond.false66 ]
  %cmp87 = icmp ult i64 %cond85, %conv10
  %.conv10 = select i1 %cmp87, i64 0, i64 %conv10
  br label %return

return:                                           ; preds = %if.end38, %while.body, %cond.end84, %if.end9, %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end9 ], [ %.conv10, %cond.end84 ], [ 0, %while.body ], [ 0, %if.end38 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define signext i8 @Perl_is_utf8_string(i8* %s, i64 %len) #2 {
entry:
  %tobool = icmp ne i64 %len, 0
  %tobool1 = icmp eq i8* %s, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %s) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len.addr.0 = phi i64 [ %len, %entry ], [ %call, %if.then ]
  %add.ptr = getelementptr inbounds i8* %s, i64 %len.addr.0
  %cmp38 = icmp sgt i64 %len.addr.0, 0
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %if.end19
  %x.039 = phi i8* [ %add.ptr20, %if.end19 ], [ %s, %if.end ]
  %0 = load i8* %x.039, align 1, !tbaa !1
  %cmp2 = icmp sgt i8 %0, -1
  br i1 %cmp2, label %if.end19, label %if.else

if.else:                                          ; preds = %while.body
  %.off = add i8 %0, 64
  %1 = icmp ult i8 %.off, 62
  br i1 %1, label %if.else13, label %return

if.else13:                                        ; preds = %if.else
  %call14 = tail call i64 @Perl_is_utf8_char(i8* %x.039) #6
  %tobool15 = icmp eq i64 %call14, 0
  br i1 %tobool15, label %return, label %if.end19

if.end19:                                         ; preds = %while.body, %if.else13
  %c.0 = phi i64 [ %call14, %if.else13 ], [ 1, %while.body ]
  %add.ptr20 = getelementptr inbounds i8* %x.039, i64 %c.0
  %cmp = icmp ult i8* %add.ptr20, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end19, %if.end
  %x.0.lcssa = phi i8* [ %s, %if.end ], [ %add.ptr20, %if.end19 ]
  %cmp21 = icmp eq i8* %x.0.lcssa, %add.ptr
  %. = zext i1 %cmp21 to i8
  br label %return

return:                                           ; preds = %if.else13, %if.else, %while.end
  %retval.0 = phi i8 [ %., %while.end ], [ 0, %if.else ], [ 0, %if.else13 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_string_loc(i8* %s, i64 %len, i8** %p) #0 {
entry:
  %tobool = icmp ne i64 %len, 0
  %tobool1 = icmp eq i8* %s, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %s) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len.addr.0 = phi i64 [ %len, %entry ], [ %call, %if.then ]
  %add.ptr = getelementptr inbounds i8* %s, i64 %len.addr.0
  %cmp56 = icmp sgt i64 %len.addr.0, 0
  br i1 %cmp56, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %if.end25
  %x.057 = phi i8* [ %add.ptr26, %if.end25 ], [ %s, %if.end ]
  %0 = load i8* %x.057, align 1, !tbaa !1
  %cmp2 = icmp sgt i8 %0, -1
  br i1 %cmp2, label %if.end25, label %if.else

if.else:                                          ; preds = %while.body
  %.off = add i8 %0, 64
  %1 = icmp ult i8 %.off, 62
  br i1 %1, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.else
  %tobool13 = icmp eq i8** %p, null
  br i1 %tobool13, label %return, label %if.then14

if.then14:                                        ; preds = %if.then12
  store i8* %x.057, i8** %p, align 8, !tbaa !0
  br label %return

if.else16:                                        ; preds = %if.else
  %call17 = tail call i64 @Perl_is_utf8_char(i8* %x.057) #6
  %tobool18 = icmp eq i64 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.else16
  %tobool20 = icmp eq i8** %p, null
  br i1 %tobool20, label %return, label %if.then21

if.then21:                                        ; preds = %if.then19
  store i8* %x.057, i8** %p, align 8, !tbaa !0
  br label %return

if.end25:                                         ; preds = %while.body, %if.else16
  %c.0 = phi i64 [ %call17, %if.else16 ], [ 1, %while.body ]
  %add.ptr26 = getelementptr inbounds i8* %x.057, i64 %c.0
  %cmp = icmp ult i8* %add.ptr26, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end25, %if.end
  %x.0.lcssa = phi i8* [ %s, %if.end ], [ %add.ptr26, %if.end25 ]
  %cmp27 = icmp eq i8* %x.0.lcssa, %add.ptr
  br i1 %cmp27, label %return, label %if.then29

if.then29:                                        ; preds = %while.end
  %tobool30 = icmp eq i8** %p, null
  br i1 %tobool30, label %return, label %if.then31

if.then31:                                        ; preds = %if.then29
  store i8* %x.0.lcssa, i8** %p, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %while.end, %if.then31, %if.then29, %if.then21, %if.then19, %if.then14, %if.then12
  %retval.0 = phi i8 [ 0, %if.then12 ], [ 0, %if.then14 ], [ 0, %if.then19 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.then31 ], [ 1, %while.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_utf8n_to_uvuni(i8* %s, i64 %curlen, i64* %retlen, i32 %flags) #0 {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %conv = zext i8 %0 to i64
  %1 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %1, i64 0, i32 14
  %2 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %2, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2 = getelementptr inbounds %struct.cop* %3, i64 0, i32 14
  %4 = load %struct.sv** %cop_warnings2, align 8, !tbaa !0
  %cmp3 = icmp eq %struct.sv* %4, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings5 = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings5, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.sv* %6, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp6, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings8 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings8, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %9 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %10, i64 11
  %11 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %11, 1
  %tobool = icmp ne i8 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  %13 = load i8* %s, align 1, !tbaa !1
  %conv11 = zext i8 %13 to i64
  %cmp12 = icmp eq i64 %curlen, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %and14 = and i32 %flags, 1
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %malformed, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.end
  %cmp16 = icmp sgt i8 %0, -1
  br i1 %cmp16, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end
  %tobool19 = icmp eq i64* %retlen, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then18
  store i64 1, i64* %retlen, align 8, !tbaa !3
  %.pre = load i8* %s, align 1, !tbaa !1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then20
  %14 = phi i8 [ %13, %if.then18 ], [ %.pre, %if.then20 ]
  %conv22 = zext i8 %14 to i64
  br label %return

if.end23:                                         ; preds = %if.end
  %cmp31 = icmp ult i8 %0, -64
  br i1 %cmp31, label %land.lhs.true33, label %if.end37

land.lhs.true33:                                  ; preds = %if.end23
  %and34 = and i32 %flags, 2
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %malformed, label %if.end37

if.end37:                                         ; preds = %land.lhs.true33, %if.end23
  %.off = add i8 %0, 64
  %15 = icmp ult i8 %.off, 62
  %cmp48 = icmp ugt i64 %curlen, 1
  %or.cond442 = and i1 %15, %cmp48
  br i1 %or.cond442, label %land.lhs.true50, label %if.end64

land.lhs.true50:                                  ; preds = %if.end37
  %arrayidx51 = getelementptr inbounds i8* %s, i64 1
  %16 = load i8* %arrayidx51, align 1, !tbaa !1
  %cmp53 = icmp slt i8 %16, 0
  %cmp58 = icmp ult i8 %16, -64
  %or.cond443 = and i1 %cmp53, %cmp58
  br i1 %or.cond443, label %if.end64, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true50
  %and61 = and i32 %flags, 4
  %tobool62 = icmp eq i32 %and61, 0
  br i1 %tobool62, label %malformed, label %if.end64

if.end64:                                         ; preds = %land.lhs.true50, %land.lhs.true60, %if.end37
  %17 = and i8 %0, -2
  %18 = icmp eq i8 %17, -2
  br i1 %18, label %land.lhs.true70, label %if.end74

land.lhs.true70:                                  ; preds = %if.end64
  %and71 = and i32 %flags, 8
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %malformed, label %if.end74

if.end74:                                         ; preds = %land.lhs.true70, %if.end64
  %and75 = and i64 %conv, 32
  %tobool76 = icmp eq i64 %and75, 0
  br i1 %tobool76, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end74
  %and78 = and i64 %conv, 31
  br label %if.end108

if.else:                                          ; preds = %if.end74
  %and79 = and i64 %conv, 16
  %tobool80 = icmp eq i64 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else
  %and82 = and i64 %conv, 15
  br label %if.end108

if.else83:                                        ; preds = %if.else
  %and84 = and i64 %conv, 8
  %tobool85 = icmp eq i64 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.else83
  %and87 = and i64 %conv, 7
  br label %if.end108

if.else88:                                        ; preds = %if.else83
  %and89 = and i64 %conv, 4
  %tobool90 = icmp eq i64 %and89, 0
  br i1 %tobool90, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.else88
  %and92 = and i64 %conv, 3
  br label %if.end108

if.else93:                                        ; preds = %if.else88
  %and94 = and i64 %conv, 2
  %tobool95 = icmp eq i64 %and94, 0
  %and97 = and i64 %conv, 1
  br i1 %tobool95, label %if.end108, label %if.else98

if.else98:                                        ; preds = %if.else93
  %tobool100 = icmp eq i64 %and97, 0
  %. = select i1 %tobool100, i64 7, i64 13
  br label %if.end108

if.end108:                                        ; preds = %if.else98, %if.else93, %if.then81, %if.then91, %if.then86, %if.then77
  %len.0 = phi i64 [ 5, %if.then91 ], [ 4, %if.then86 ], [ 3, %if.then81 ], [ 2, %if.then77 ], [ 6, %if.else93 ], [ %., %if.else98 ]
  %uv.0 = phi i64 [ %and92, %if.then91 ], [ %and87, %if.then86 ], [ %and82, %if.then81 ], [ %and78, %if.then77 ], [ %and97, %if.else93 ], [ 0, %if.else98 ]
  %tobool109 = icmp eq i64* %retlen, null
  br i1 %tobool109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %if.end108
  store i64 %len.0, i64* %retlen, align 8, !tbaa !3
  br label %if.end111

if.end111:                                        ; preds = %if.end108, %if.then110
  %cmp112 = icmp ugt i64 %len.0, %curlen
  br i1 %cmp112, label %land.lhs.true114, label %while.body.lr.ph

land.lhs.true114:                                 ; preds = %if.end111
  %and115 = and i32 %flags, 16
  %tobool116 = icmp eq i32 %and115, 0
  br i1 %tobool116, label %malformed, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end111, %land.lhs.true114
  %s.addr.0448 = getelementptr inbounds i8* %s, i64 1
  %dec119449 = add i64 %len.0, -2
  %cmp144 = icmp eq i64 %len.0, 13
  %and147 = and i32 %flags, 128
  %and129 = and i32 %flags, 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %dec119454 = phi i64 [ %dec119449, %while.body.lr.ph ], [ %dec119, %while.cond.backedge ]
  %s.addr.0453 = phi i8* [ %s.addr.0448, %while.body.lr.ph ], [ %s.addr.0, %while.cond.backedge ]
  %s.pn452 = phi i8* [ %s, %while.body.lr.ph ], [ %s.addr.0453, %while.cond.backedge ]
  %ouv.0451 = phi i64 [ %uv.0, %while.body.lr.ph ], [ %or, %while.cond.backedge ]
  %19 = load i8* %s.addr.0453, align 1, !tbaa !1
  %cmp122 = icmp slt i8 %19, 0
  %cmp126 = icmp ult i8 %19, -64
  %or.cond444 = and i1 %cmp122, %cmp126
  %tobool130.not = icmp ne i32 %and129, 0
  %brmerge = or i1 %or.cond444, %tobool130.not
  br i1 %brmerge, label %if.else133, label %malformed

if.else133:                                       ; preds = %while.body
  %shl = shl i64 %ouv.0451, 6
  %conv134 = zext i8 %19 to i64
  %and135 = and i64 %conv134, 63
  %or = or i64 %and135, %shl
  %cmp138 = icmp ugt i64 %or, %ouv.0451
  br i1 %cmp138, label %while.cond.backedge, label %if.then140

if.then140:                                       ; preds = %if.else133
  %cmp141 = icmp eq i64 %or, %ouv.0451
  br i1 %cmp141, label %if.then143, label %malformed

if.then143:                                       ; preds = %if.then140
  %tobool148.not = icmp ne i32 %and147, 0
  %brmerge461 = or i1 %cmp144, %tobool148.not
  br i1 %brmerge461, label %while.cond.backedge, label %malformed

while.cond.backedge:                              ; preds = %if.then143, %if.else133
  %s.addr.0 = getelementptr inbounds i8* %s.addr.0453, i64 1
  %dec119 = add i64 %dec119454, -1
  %tobool120 = icmp eq i64 %dec119454, 0
  br i1 %tobool120, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge
  %uv.1.off = add i64 %or, -55296
  %20 = icmp ult i64 %uv.1.off, 2048
  br i1 %20, label %land.lhs.true160, label %if.else164

land.lhs.true160:                                 ; preds = %while.end
  %and161 = and i32 %flags, 32
  %tobool162 = icmp eq i32 %and161, 0
  br i1 %tobool162, label %malformed, label %if.else164

if.else164:                                       ; preds = %land.lhs.true160, %while.end
  %cmp165 = icmp ult i64 %or, 128
  br i1 %cmp165, label %cond.end198, label %cond.false

cond.false:                                       ; preds = %if.else164
  %cmp167 = icmp ult i64 %or, 2048
  br i1 %cmp167, label %cond.end198, label %cond.false170

cond.false170:                                    ; preds = %cond.false
  %cmp171 = icmp ult i64 %or, 65536
  br i1 %cmp171, label %cond.end198, label %cond.false174

cond.false174:                                    ; preds = %cond.false170
  %cmp175 = icmp ult i64 %or, 2097152
  br i1 %cmp175, label %cond.end198, label %cond.false178

cond.false178:                                    ; preds = %cond.false174
  %cmp179 = icmp ult i64 %or, 67108864
  br i1 %cmp179, label %cond.end198, label %cond.false182

cond.false182:                                    ; preds = %cond.false178
  %cmp183 = icmp ult i64 %or, 2147483648
  br i1 %cmp183, label %cond.end198, label %cond.false186

cond.false186:                                    ; preds = %cond.false182
  %cmp187 = icmp ult i64 %or, 68719476736
  %phitmp = select i1 %cmp187, i64 7, i64 13
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false, %cond.false174, %cond.false186, %cond.false182, %cond.false178, %cond.false170, %if.else164
  %cond199 = phi i64 [ 1, %if.else164 ], [ 2, %cond.false ], [ 3, %cond.false170 ], [ 4, %cond.false174 ], [ 5, %cond.false178 ], [ %phitmp, %cond.false186 ], [ 6, %cond.false182 ]
  %cmp201 = icmp ugt i64 %len.0, %cond199
  br i1 %cmp201, label %land.lhs.true203, label %if.else207

land.lhs.true203:                                 ; preds = %cond.end198
  %and204 = and i32 %flags, 128
  %tobool205 = icmp eq i32 %and204, 0
  br i1 %tobool205, label %malformed, label %if.else207

if.else207:                                       ; preds = %land.lhs.true203, %cond.end198
  %cmp208 = icmp eq i64 %or, 65535
  br i1 %cmp208, label %land.lhs.true210, label %return

land.lhs.true210:                                 ; preds = %if.else207
  %and211 = and i32 %flags, 64
  %tobool212 = icmp eq i32 %and211, 0
  br i1 %tobool212, label %malformed, label %return

malformed:                                        ; preds = %if.then143, %while.body, %if.then140, %land.lhs.true210, %land.lhs.true203, %land.lhs.true160, %land.lhs.true114, %land.lhs.true70, %land.lhs.true60, %land.lhs.true33, %land.lhs.true
  %len.2 = phi i64 [ 1, %land.lhs.true ], [ 1, %land.lhs.true33 ], [ 1, %land.lhs.true60 ], [ 1, %land.lhs.true70 ], [ %len.0, %land.lhs.true114 ], [ %dec119, %land.lhs.true160 ], [ %dec119, %land.lhs.true203 ], [ %dec119, %land.lhs.true210 ], [ %dec119454, %if.then140 ], [ %dec119454, %while.body ], [ %dec119454, %if.then143 ]
  %ouv.1 = phi i64 [ 0, %land.lhs.true ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true60 ], [ 0, %land.lhs.true70 ], [ 0, %land.lhs.true114 ], [ %or, %land.lhs.true160 ], [ %or, %land.lhs.true203 ], [ 65535, %land.lhs.true210 ], [ %ouv.0451, %if.then140 ], [ %ouv.0451, %while.body ], [ %ouv.0451, %if.then143 ]
  %uv.2 = phi i64 [ %conv, %land.lhs.true ], [ %conv, %land.lhs.true33 ], [ %conv, %land.lhs.true60 ], [ %conv, %land.lhs.true70 ], [ %uv.0, %land.lhs.true114 ], [ %or, %land.lhs.true160 ], [ %or, %land.lhs.true203 ], [ 65535, %land.lhs.true210 ], [ %or, %if.then140 ], [ %ouv.0451, %while.body ], [ %ouv.0451, %if.then143 ]
  %expectlen.0 = phi i64 [ 0, %land.lhs.true ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true60 ], [ 0, %land.lhs.true70 ], [ %len.0, %land.lhs.true114 ], [ %len.0, %land.lhs.true160 ], [ %len.0, %land.lhs.true203 ], [ %len.0, %land.lhs.true210 ], [ %len.0, %if.then140 ], [ %len.0, %while.body ], [ %len.0, %if.then143 ]
  %warning.0 = phi i32 [ 1, %land.lhs.true ], [ 2, %land.lhs.true33 ], [ 3, %land.lhs.true60 ], [ 4, %land.lhs.true70 ], [ 5, %land.lhs.true114 ], [ 7, %land.lhs.true160 ], [ 8, %land.lhs.true203 ], [ 9, %land.lhs.true210 ], [ 6, %if.then140 ], [ 3, %while.body ], [ 8, %if.then143 ]
  %s.addr.1 = phi i8* [ %s, %land.lhs.true ], [ %s, %land.lhs.true33 ], [ %s, %land.lhs.true60 ], [ %s, %land.lhs.true70 ], [ %s, %land.lhs.true114 ], [ %s.addr.0, %land.lhs.true160 ], [ %s.addr.0, %land.lhs.true203 ], [ %s.addr.0, %land.lhs.true210 ], [ %s.addr.0453, %if.then140 ], [ %s.pn452, %while.body ], [ %s.addr.0453, %if.then143 ]
  %and217 = and i32 %flags, 512
  %tobool218 = icmp eq i32 %and217, 0
  br i1 %tobool218, label %if.end223, label %if.then219

if.then219:                                       ; preds = %malformed
  %tobool220 = icmp eq i64* %retlen, null
  br i1 %tobool220, label %return, label %if.then221

if.then221:                                       ; preds = %if.then219
  store i64 -1, i64* %retlen, align 8, !tbaa !3
  br label %return

if.end223:                                        ; preds = %malformed
  br i1 %12, label %if.then225, label %if.end316

if.then225:                                       ; preds = %if.end223
  %call = tail call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0), i64 0) #5
  %call226 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #5
  switch i32 %warning.0, label %sw.default [
    i32 0, label %if.then297
    i32 1, label %sw.bb
    i32 2, label %sw.bb227
    i32 3, label %sw.bb228
    i32 4, label %sw.bb244
    i32 5, label %sw.bb245
    i32 6, label %sw.bb249
    i32 7, label %sw.bb251
    i32 8, label %sw.bb252
    i32 9, label %sw.bb295
  ]

sw.bb:                                            ; preds = %if.then225
  tail call void @Perl_sv_catpv(%struct.sv* %call226, i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0)) #5
  br label %if.then297

sw.bb227:                                         ; preds = %if.then225
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([69 x i8]* @.str4, i64 0, i64 0), i64 %uv.2) #5
  br label %if.then297

sw.bb228:                                         ; preds = %if.then225
  %cmp229 = icmp eq i8* %s.addr.1, %s
  %arrayidx232 = getelementptr inbounds i8* %s.addr.1, i64 1
  %21 = load i8* %arrayidx232, align 1, !tbaa !1
  %conv233 = zext i8 %21 to i64
  br i1 %cmp229, label %if.then231, label %if.else234

if.then231:                                       ; preds = %sw.bb228
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([81 x i8]* @.str5, i64 0, i64 0), i64 %conv233, i64 %conv11) #5
  br label %if.then297

if.else234:                                       ; preds = %sw.bb228
  %sub.ptr.lhs.cast = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp240 = icmp sgt i64 %sub.ptr.sub, 1
  %cond242 = select i1 %cmp240, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0)
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([98 x i8]* @.str6, i64 0, i64 0), i64 %conv233, i64 %sub.ptr.sub, i8* %cond242, i64 %conv11, i64 %expectlen.0) #5
  br label %if.then297

sw.bb244:                                         ; preds = %if.then225
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 %uv.2) #5
  br label %if.then297

sw.bb245:                                         ; preds = %if.then225
  %cmp246 = icmp eq i64 %curlen, 1
  %cond248 = select i1 %cmp246, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i64 %curlen, i8* %cond248, i64 %expectlen.0, i64 %conv11) #5
  br label %if.then297

sw.bb249:                                         ; preds = %if.then225
  %22 = load i8* %s.addr.1, align 1, !tbaa !1
  %conv250 = zext i8 %22 to i32
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([59 x i8]* @.str11, i64 0, i64 0), i64 %ouv.1, i32 %conv250, i64 %conv11) #5
  br label %if.then297

sw.bb251:                                         ; preds = %if.then225
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([27 x i8]* @.str12, i64 0, i64 0), i64 %uv.2) #5
  br label %if.then297

sw.bb252:                                         ; preds = %if.then225
  %cmp256 = icmp ult i64 %uv.2, 128
  br i1 %cmp256, label %cond.end293, label %cond.false259

cond.false259:                                    ; preds = %sw.bb252
  %cmp260 = icmp ult i64 %uv.2, 2048
  br i1 %cmp260, label %cond.end293, label %cond.false263

cond.false263:                                    ; preds = %cond.false259
  %cmp264 = icmp ult i64 %uv.2, 65536
  br i1 %cmp264, label %cond.end293, label %cond.false267

cond.false267:                                    ; preds = %cond.false263
  %cmp268 = icmp ult i64 %uv.2, 2097152
  br i1 %cmp268, label %cond.end293, label %cond.false271

cond.false271:                                    ; preds = %cond.false267
  %cmp272 = icmp ult i64 %uv.2, 67108864
  br i1 %cmp272, label %cond.end293, label %cond.false275

cond.false275:                                    ; preds = %cond.false271
  %cmp276 = icmp ult i64 %uv.2, 2147483648
  br i1 %cmp276, label %cond.end293, label %cond.false279

cond.false279:                                    ; preds = %cond.false275
  %cmp280 = icmp ult i64 %uv.2, 68719476736
  %cond282 = select i1 %cmp280, i32 7, i32 13
  br label %cond.end293

cond.end293:                                      ; preds = %cond.false259, %cond.false267, %cond.false279, %cond.false275, %cond.false271, %cond.false263, %sw.bb252
  %cond294 = phi i32 [ 1, %sw.bb252 ], [ 2, %cond.false259 ], [ 3, %cond.false263 ], [ 4, %cond.false267 ], [ 5, %cond.false271 ], [ %cond282, %cond.false279 ], [ 6, %cond.false275 ]
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i64 %expectlen.0, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 %cond294, i64 %conv11) #5
  br label %if.then297

sw.bb295:                                         ; preds = %if.then225
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call226, i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), i64 %uv.2) #5
  br label %if.then297

sw.default:                                       ; preds = %if.then225
  tail call void @Perl_sv_catpv(%struct.sv* %call226, i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0)) #5
  br label %if.then297

if.then297:                                       ; preds = %if.then225, %sw.bb, %sw.bb227, %sw.bb244, %sw.bb245, %sw.bb249, %sw.bb251, %cond.end293, %sw.bb295, %sw.default, %if.else234, %if.then231
  %expectlen.1 = phi i64 [ %expectlen.0, %sw.default ], [ %expectlen.0, %sw.bb295 ], [ %expectlen.0, %cond.end293 ], [ %expectlen.0, %sw.bb251 ], [ %expectlen.0, %sw.bb249 ], [ %curlen, %sw.bb245 ], [ %expectlen.0, %sw.bb244 ], [ %expectlen.0, %if.then231 ], [ %expectlen.0, %if.else234 ], [ %expectlen.0, %sw.bb227 ], [ %expectlen.0, %sw.bb ], [ %expectlen.0, %if.then225 ]
  %sv_any299 = getelementptr inbounds %struct.sv* %call226, i64 0, i32 0
  %23 = load i8** %sv_any299, align 8, !tbaa !0
  %xpv_pv300 = bitcast i8* %23 to i8**
  %24 = load i8** %xpv_pv300, align 8, !tbaa !0
  %25 = load %struct.op** @PL_op, align 8, !tbaa !0
  %tobool301 = icmp eq %struct.op* %25, null
  br i1 %tobool301, label %if.else313, label %if.then302

if.then302:                                       ; preds = %if.then297
  %op_type = getelementptr inbounds %struct.op* %25, i64 0, i32 4
  %26 = load i16* %op_type, align 2, !tbaa !4
  %cmp304 = icmp eq i16 %26, 351
  br i1 %cmp304, label %cond.true306, label %cond.false308

cond.true306:                                     ; preds = %if.then302
  %call307 = tail call i8* @Perl_custom_op_desc(%struct.op* %25) #5
  br label %cond.end311

cond.false308:                                    ; preds = %if.then302
  %idxprom = zext i16 %26 to i64
  %arrayidx310 = getelementptr inbounds [0 x i8*]* @PL_op_desc, i64 0, i64 %idxprom
  %27 = load i8** %arrayidx310, align 8, !tbaa !0
  br label %cond.end311

cond.end311:                                      ; preds = %cond.false308, %cond.true306
  %cond312 = phi i8* [ %call307, %cond.true306 ], [ %27, %cond.false308 ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* %24, i8* %cond312) #5
  br label %if.end316

if.else313:                                       ; preds = %if.then297
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* %24) #5
  br label %if.end316

if.end316:                                        ; preds = %if.else313, %cond.end311, %if.end223
  %expectlen.2 = phi i64 [ %expectlen.1, %cond.end311 ], [ %expectlen.1, %if.else313 ], [ %expectlen.0, %if.end223 ]
  %tobool317 = icmp eq i64* %retlen, null
  br i1 %tobool317, label %return, label %if.then318

if.then318:                                       ; preds = %if.end316
  %tobool319 = icmp ne i64 %expectlen.2, 0
  %cond323 = select i1 %tobool319, i64 %expectlen.2, i64 %len.2
  store i64 %cond323, i64* %retlen, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.then318, %if.end316, %if.then221, %if.then219, %if.else207, %land.lhs.true210, %if.end21
  %retval.0 = phi i64 [ %conv22, %if.end21 ], [ 65535, %land.lhs.true210 ], [ %or, %if.else207 ], [ 0, %if.then219 ], [ 0, %if.then221 ], [ 0, %if.end316 ], [ 0, %if.then318 ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_custom_op_desc(%struct.op*) #1

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_utf8_to_uvchr(i8* %s, i64* %retlen) #0 {
entry:
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %0, i64 0, i32 14
  %1 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %1, null
  br i1 %cmp, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1 = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct.sv* %3, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2, label %lor.rhs, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings4 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.sv* %5, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings6 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings6, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %9, i64 11
  %10 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %10, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings7 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings7, align 8, !tbaa !0
  %cmp8 = icmp eq %struct.sv* %12, null
  br i1 %cmp8, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and11 = and i8 %13, 1
  %tobool12 = icmp ne i8 %and11, 0
  %phitmp = select i1 %tobool12, i32 0, i32 255
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %lor.rhs, %land.rhs, %land.lhs.true3
  %14 = phi i32 [ 0, %lor.lhs.false ], [ 0, %land.lhs.true3 ], [ 255, %lor.rhs ], [ %phitmp, %land.rhs ]
  %call = tail call i64 @Perl_utf8n_to_uvuni(i8* %s, i64 13, i64* %retlen, i32 %14) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_utf8_to_uvuni(i8* %s, i64* %retlen) #0 {
entry:
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %0, i64 0, i32 14
  %1 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %1, null
  br i1 %cmp, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1 = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct.sv* %3, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2, label %lor.rhs, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings4 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.sv* %5, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings6 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings6, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %9, i64 11
  %10 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %10, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %11 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings7 = getelementptr inbounds %struct.cop* %11, i64 0, i32 14
  %12 = load %struct.sv** %cop_warnings7, align 8, !tbaa !0
  %cmp8 = icmp eq %struct.sv* %12, null
  br i1 %cmp8, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and11 = and i8 %13, 1
  %tobool12 = icmp ne i8 %and11, 0
  %phitmp = select i1 %tobool12, i32 0, i32 255
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %lor.rhs, %land.rhs, %land.lhs.true3
  %14 = phi i32 [ 0, %lor.lhs.false ], [ 0, %land.lhs.true3 ], [ 255, %lor.rhs ], [ %phitmp, %land.rhs ]
  %call = tail call i64 @Perl_utf8n_to_uvuni(i8* %s, i64 13, i64* %retlen, i32 %14) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_utf8_length(i8* %s, i8* %e) #0 {
entry:
  %cmp = icmp ult i8* %e, %s
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp1877 = icmp ult i8* %s, %e
  br i1 %cmp1877, label %while.body.lr.ph, label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub.ptr.lhs.cast = ptrtoint i8* %e to i64
  br label %while.body

if.then:                                          ; preds = %entry
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %0, i64 0, i32 14
  %1 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.sv* %1, null
  br i1 %cmp1, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2 = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings2, align 8, !tbaa !0
  %cmp3 = icmp eq %struct.sv* %3, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings5 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings5, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.sv* %5, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp6, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings7 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings7, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %9, i64 11
  %10 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %10, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %return, label %if.then8

if.then8:                                         ; preds = %land.lhs.true, %lor.lhs.false, %if.then
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %tobool9 = icmp eq %struct.op* %11, null
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %op_type = getelementptr inbounds %struct.op* %11, i64 0, i32 4
  %12 = load i16* %op_type, align 2, !tbaa !4
  %cmp12 = icmp eq i16 %12, 351
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %call = tail call i8* @Perl_custom_op_desc(%struct.op* %11) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %idxprom = zext i16 %12 to i64
  %arrayidx15 = getelementptr inbounds [0 x i8*]* @PL_op_desc, i64 0, i64 %idxprom
  %13 = load i8** %arrayidx15, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %13, %cond.false ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0), i8* %cond) #5
  br label %return

if.else:                                          ; preds = %if.then8
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0)) #5
  br label %return

while.body:                                       ; preds = %while.body.lr.ph, %if.end63
  %len.079 = phi i64 [ 0, %while.body.lr.ph ], [ %inc, %if.end63 ]
  %s.addr.078 = phi i8* [ %s, %while.body.lr.ph ], [ %add.ptr, %if.end63 ]
  %14 = load i8* %s.addr.078, align 1, !tbaa !1
  %idxprom20 = zext i8 %14 to i64
  %arrayidx21 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom20
  %15 = load i8* %arrayidx21, align 1, !tbaa !1
  %sub.ptr.rhs.cast = ptrtoint i8* %s.addr.078 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = zext i8 %15 to i64
  %cmp23 = icmp slt i64 %sub.ptr.sub, %conv22
  br i1 %cmp23, label %if.then25, label %if.end63

if.then25:                                        ; preds = %while.body
  %16 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings26 = getelementptr inbounds %struct.cop* %16, i64 0, i32 14
  %17 = load %struct.sv** %cop_warnings26, align 8, !tbaa !0
  %cmp27 = icmp eq %struct.sv* %17, null
  br i1 %cmp27, label %if.then45, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.then25
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings30 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings30, align 8, !tbaa !0
  %cmp31 = icmp eq %struct.sv* %19, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp31, label %if.then45, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings34 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings34, align 8, !tbaa !0
  %cmp35 = icmp eq %struct.sv* %21, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp35, label %return, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %lor.lhs.false33
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings38 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings38, align 8, !tbaa !0
  %sv_any39 = getelementptr inbounds %struct.sv* %23, i64 0, i32 0
  %24 = load i8** %sv_any39, align 8, !tbaa !0
  %xpv_pv40 = bitcast i8* %24 to i8**
  %25 = load i8** %xpv_pv40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i8* %25, i64 11
  %26 = load i8* %arrayidx41, align 1, !tbaa !1
  %and43 = and i8 %26, 1
  %tobool44 = icmp eq i8 %and43, 0
  br i1 %tobool44, label %return, label %if.then45

if.then45:                                        ; preds = %land.lhs.true37, %lor.lhs.false29, %if.then25
  %27 = load %struct.op** @PL_op, align 8, !tbaa !0
  %tobool46 = icmp eq %struct.op* %27, null
  br i1 %tobool46, label %if.else60, label %if.then47

if.then47:                                        ; preds = %if.then45
  %op_type48 = getelementptr inbounds %struct.op* %27, i64 0, i32 4
  %28 = load i16* %op_type48, align 2, !tbaa !4
  %cmp50 = icmp eq i16 %28, 351
  br i1 %cmp50, label %cond.true52, label %cond.false54

cond.true52:                                      ; preds = %if.then47
  %call53 = tail call i8* @Perl_custom_op_desc(%struct.op* %27) #5
  br label %cond.end58

cond.false54:                                     ; preds = %if.then47
  %idxprom56 = zext i16 %28 to i64
  %arrayidx57 = getelementptr inbounds [0 x i8*]* @PL_op_desc, i64 0, i64 %idxprom56
  %29 = load i8** %arrayidx57, align 8, !tbaa !0
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false54, %cond.true52
  %cond59 = phi i8* [ %call53, %cond.true52 ], [ %29, %cond.false54 ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0), i8* %cond59) #5
  br label %return

if.else60:                                        ; preds = %if.then45
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0)) #5
  br label %return

if.end63:                                         ; preds = %while.body
  %add.ptr = getelementptr inbounds i8* %s.addr.078, i64 %conv22
  %inc = add i64 %len.079, 1
  %cmp18 = icmp ult i8* %add.ptr, %e
  br i1 %cmp18, label %while.body, label %return

return:                                           ; preds = %while.cond.preheader, %if.end63, %if.else60, %cond.end58, %lor.lhs.false33, %land.lhs.true37, %if.else, %cond.end, %lor.lhs.false4, %land.lhs.true
  %retval.0 = phi i64 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false4 ], [ 0, %cond.end ], [ 0, %if.else ], [ %len.079, %land.lhs.true37 ], [ %len.079, %lor.lhs.false33 ], [ %len.079, %cond.end58 ], [ %len.079, %if.else60 ], [ 0, %while.cond.preheader ], [ %inc, %if.end63 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_utf8_distance(i8* %a, i8* %b) #0 {
entry:
  %cmp = icmp ult i8* %a, %b
  br i1 %cmp, label %while.body.lr.ph, label %while.cond30.preheader

while.cond30.preheader:                           ; preds = %entry
  %cmp31113 = icmp ult i8* %b, %a
  br i1 %cmp31113, label %while.body33.lr.ph, label %return

while.body33.lr.ph:                               ; preds = %while.cond30.preheader
  %sub.ptr.lhs.cast37 = ptrtoint i8* %a to i64
  br label %while.body33

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %b to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end27
  %a.addr.0110 = phi i8* [ %a, %while.body.lr.ph ], [ %add.ptr, %if.end27 ]
  %off.0109 = phi i64 [ 0, %while.body.lr.ph ], [ %dec, %if.end27 ]
  %0 = load i8* %a.addr.0110, align 1, !tbaa !1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %sub.ptr.rhs.cast = ptrtoint i8* %a.addr.0110 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = zext i8 %1 to i64
  %cmp2 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp2, label %if.then4, label %if.end27

if.then4:                                         ; preds = %while.body
  %2 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %2, i64 0, i32 14
  %3 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.sv* %3, null
  br i1 %cmp5, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings7 = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings7, align 8, !tbaa !0
  %cmp8 = icmp eq %struct.sv* %5, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp8, label %if.then17, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings11 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings11, align 8, !tbaa !0
  %cmp12 = icmp eq %struct.sv* %7, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp12, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings14 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings14, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8* %11, i64 11
  %12 = load i8* %arrayidx15, align 1, !tbaa !1
  %and = and i8 %12, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %return, label %if.then17

if.then17:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.then4
  %13 = load %struct.op** @PL_op, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.op* %13, null
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then17
  %op_type = getelementptr inbounds %struct.op* %13, i64 0, i32 4
  %14 = load i16* %op_type, align 2, !tbaa !4
  %cmp21 = icmp eq i16 %14, 351
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then19
  %call = tail call i8* @Perl_custom_op_desc(%struct.op* %13) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then19
  %idxprom24 = zext i16 %14 to i64
  %arrayidx25 = getelementptr inbounds [0 x i8*]* @PL_op_desc, i64 0, i64 %idxprom24
  %15 = load i8** %arrayidx25, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %15, %cond.false ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0), i8* %cond) #5
  br label %return

if.else:                                          ; preds = %if.then17
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0)) #5
  br label %return

if.end27:                                         ; preds = %while.body
  %add.ptr = getelementptr inbounds i8* %a.addr.0110, i64 %conv
  %dec = add nsw i64 %off.0109, -1
  %cmp1 = icmp ult i8* %add.ptr, %b
  br i1 %cmp1, label %while.body, label %return

while.body33:                                     ; preds = %while.body33.lr.ph, %if.end81
  %off.1115 = phi i64 [ 0, %while.body33.lr.ph ], [ %inc, %if.end81 ]
  %b.addr.0114 = phi i8* [ %b, %while.body33.lr.ph ], [ %add.ptr84, %if.end81 ]
  %16 = load i8* %b.addr.0114, align 1, !tbaa !1
  %idxprom35 = zext i8 %16 to i64
  %arrayidx36 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom35
  %17 = load i8* %arrayidx36, align 1, !tbaa !1
  %sub.ptr.rhs.cast38 = ptrtoint i8* %b.addr.0114 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %conv40 = zext i8 %17 to i64
  %cmp41 = icmp slt i64 %sub.ptr.sub39, %conv40
  br i1 %cmp41, label %if.then43, label %if.end81

if.then43:                                        ; preds = %while.body33
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings44 = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings44, align 8, !tbaa !0
  %cmp45 = icmp eq %struct.sv* %19, null
  br i1 %cmp45, label %if.then63, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.then43
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings48 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings48, align 8, !tbaa !0
  %cmp49 = icmp eq %struct.sv* %21, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp49, label %if.then63, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings52 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings52, align 8, !tbaa !0
  %cmp53 = icmp eq %struct.sv* %23, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp53, label %return, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %lor.lhs.false51
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings56 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings56, align 8, !tbaa !0
  %sv_any57 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %26 = load i8** %sv_any57, align 8, !tbaa !0
  %xpv_pv58 = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv58, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i8* %27, i64 11
  %28 = load i8* %arrayidx59, align 1, !tbaa !1
  %and61 = and i8 %28, 1
  %tobool62 = icmp eq i8 %and61, 0
  br i1 %tobool62, label %return, label %if.then63

if.then63:                                        ; preds = %land.lhs.true55, %lor.lhs.false47, %if.then43
  %29 = load %struct.op** @PL_op, align 8, !tbaa !0
  %tobool64 = icmp eq %struct.op* %29, null
  br i1 %tobool64, label %if.else78, label %if.then65

if.then65:                                        ; preds = %if.then63
  %op_type66 = getelementptr inbounds %struct.op* %29, i64 0, i32 4
  %30 = load i16* %op_type66, align 2, !tbaa !4
  %cmp68 = icmp eq i16 %30, 351
  br i1 %cmp68, label %cond.true70, label %cond.false72

cond.true70:                                      ; preds = %if.then65
  %call71 = tail call i8* @Perl_custom_op_desc(%struct.op* %29) #5
  br label %cond.end76

cond.false72:                                     ; preds = %if.then65
  %idxprom74 = zext i16 %30 to i64
  %arrayidx75 = getelementptr inbounds [0 x i8*]* @PL_op_desc, i64 0, i64 %idxprom74
  %31 = load i8** %arrayidx75, align 8, !tbaa !0
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false72, %cond.true70
  %cond77 = phi i8* [ %call71, %cond.true70 ], [ %31, %cond.false72 ]
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0), i8* %cond77) #5
  br label %return

if.else78:                                        ; preds = %if.then63
  tail call void (i32, i8*, ...)* @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8]* @unees, i64 0, i64 0)) #5
  br label %return

if.end81:                                         ; preds = %while.body33
  %add.ptr84 = getelementptr inbounds i8* %b.addr.0114, i64 %conv40
  %inc = add nsw i64 %off.1115, 1
  %cmp31 = icmp ult i8* %add.ptr84, %a
  br i1 %cmp31, label %while.body33, label %return

return:                                           ; preds = %while.cond30.preheader, %if.end81, %if.end27, %if.else78, %cond.end76, %lor.lhs.false51, %land.lhs.true55, %if.else, %cond.end, %lor.lhs.false10, %land.lhs.true
  %retval.0 = phi i64 [ %off.0109, %land.lhs.true ], [ %off.0109, %lor.lhs.false10 ], [ %off.0109, %cond.end ], [ %off.0109, %if.else ], [ %off.1115, %land.lhs.true55 ], [ %off.1115, %lor.lhs.false51 ], [ %off.1115, %cond.end76 ], [ %off.1115, %if.else78 ], [ %dec, %if.end27 ], [ 0, %while.cond30.preheader ], [ %inc, %if.end81 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Perl_utf8_hop(i8* %s, i32 %off) #2 {
entry:
  %cmp = icmp sgt i32 %off, -1
  br i1 %cmp, label %while.cond.preheader, label %while.cond4.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool23 = icmp eq i32 %off, 0
  br i1 %tobool23, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %off.addr.025 = phi i32 [ %dec, %while.body ], [ %off, %while.cond.preheader ]
  %s.addr.024 = phi i8* [ %add.ptr, %while.body ], [ %s, %while.cond.preheader ]
  %dec = add nsw i32 %off.addr.025, -1
  %0 = load i8* %s.addr.024, align 1, !tbaa !1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext = zext i8 %1 to i64
  %add.ptr = getelementptr inbounds i8* %s.addr.024, i64 %idx.ext
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %if.end, label %while.body

while.cond1.loopexit:                             ; preds = %while.cond4
  %inc30 = add nsw i32 %inc30.in, 1
  %tobool2 = icmp eq i32 %inc30, 0
  br i1 %tobool2, label %if.end, label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %entry, %while.cond1.loopexit
  %inc30.in = phi i32 [ %inc30, %while.cond1.loopexit ], [ %off, %entry ]
  %s.addr.129 = phi i8* [ %s.addr.2, %while.cond1.loopexit ], [ %s, %entry ]
  br label %while.cond4

while.cond4:                                      ; preds = %while.cond4.preheader, %while.cond4
  %s.addr.1.pn = phi i8* [ %s.addr.2, %while.cond4 ], [ %s.addr.129, %while.cond4.preheader ]
  %s.addr.2 = getelementptr inbounds i8* %s.addr.1.pn, i64 -1
  %2 = load i8* %s.addr.2, align 1, !tbaa !1
  %cmp6 = icmp slt i8 %2, 0
  %cmp9 = icmp ult i8 %2, -64
  %or.cond = and i1 %cmp6, %cmp9
  br i1 %or.cond, label %while.cond4, label %while.cond1.loopexit

if.end:                                           ; preds = %while.cond1.loopexit, %while.cond.preheader, %while.body
  %s.addr.3 = phi i8* [ %s, %while.cond.preheader ], [ %add.ptr, %while.body ], [ %s.addr.2, %while.cond1.loopexit ]
  ret i8* %s.addr.3
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_utf8_to_bytes(i8* %s, i64* nocapture %len) #0 {
entry:
  %ulen = alloca i64, align 8
  %0 = load i64* %len, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %s, i64 %0
  %cmp47 = icmp sgt i64 %0, 0
  br i1 %cmp47, label %for.body, label %while.end

while.cond.preheader:                             ; preds = %for.cond.backedge
  br i1 %cmp47, label %while.body, label %while.end

for.body:                                         ; preds = %entry, %for.cond.backedge
  %s.addr.048 = phi i8* [ %s.addr.0.be, %for.cond.backedge ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.048, i64 1
  %1 = load i8* %s.addr.048, align 1, !tbaa !1
  %cmp1 = icmp sgt i8 %1, -1
  br i1 %cmp1, label %for.cond.backedge, label %land.lhs.true

for.cond.backedge:                                ; preds = %for.body, %lor.lhs.false8
  %s.addr.0.be = phi i8* [ %incdec.ptr, %for.body ], [ %incdec.ptr9, %lor.lhs.false8 ]
  %cmp = icmp ult i8* %s.addr.0.be, %add.ptr
  br i1 %cmp, label %for.body, label %while.cond.preheader

land.lhs.true:                                    ; preds = %for.body
  %and = and i8 %1, -4
  %cmp4 = icmp eq i8 %and, -64
  %cmp6 = icmp ult i8* %incdec.ptr, %add.ptr
  %or.cond = and i1 %cmp4, %cmp6
  br i1 %or.cond, label %lor.lhs.false8, label %return

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %incdec.ptr9 = getelementptr inbounds i8* %s.addr.048, i64 2
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %3 = icmp slt i8 %2, 0
  %cmp16 = icmp ult i8 %2, -64
  %or.cond43 = and i1 %3, %cmp16
  br i1 %or.cond43, label %for.cond.backedge, label %return

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %d.046 = phi i8* [ %incdec.ptr21, %while.body ], [ %s, %while.cond.preheader ]
  %s.addr.145 = phi i8* [ %add.ptr22, %while.body ], [ %s, %while.cond.preheader ]
  %call = call i64 @Perl_utf8_to_uvchr(i8* %s.addr.145, i64* %ulen) #6
  %conv20 = trunc i64 %call to i8
  %incdec.ptr21 = getelementptr inbounds i8* %d.046, i64 1
  store i8 %conv20, i8* %d.046, align 1, !tbaa !1
  %4 = load i64* %ulen, align 8, !tbaa !3
  %add.ptr22 = getelementptr inbounds i8* %s.addr.145, i64 %4
  %cmp18 = icmp ult i8* %add.ptr22, %add.ptr
  br i1 %cmp18, label %while.body, label %while.end

while.end:                                        ; preds = %entry, %while.body, %while.cond.preheader
  %d.0.lcssa = phi i8* [ %s, %while.cond.preheader ], [ %incdec.ptr21, %while.body ], [ %s, %entry ]
  store i8 0, i8* %d.0.lcssa, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %d.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false8, %while.end
  %storemerge = phi i64 [ %sub.ptr.sub, %while.end ], [ -1, %lor.lhs.false8 ], [ -1, %land.lhs.true ]
  %retval.0 = phi i8* [ %s, %while.end ], [ null, %lor.lhs.false8 ], [ null, %land.lhs.true ]
  store i64 %storemerge, i64* %len, align 8, !tbaa !3
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_bytes_from_utf8(i8* %s, i64* nocapture %len, i8* nocapture %is_utf8) #0 {
entry:
  %0 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64* %len, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %s, i64 %1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then21, %if.end
  %s.addr.0.ph = phi i8* [ %s, %if.end ], [ %incdec.ptr10, %if.then21 ]
  %count.0.ph = phi i32 [ 0, %if.end ], [ %inc, %if.then21 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %s.addr.0 = phi i8* [ %incdec.ptr, %for.body ], [ %s.addr.0.ph, %for.cond.outer ]
  %cmp = icmp ult i8* %s.addr.0, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1
  %2 = load i8* %s.addr.0, align 1, !tbaa !1
  %cmp1 = icmp sgt i8 %2, -1
  br i1 %cmp1, label %for.cond, label %if.then3

if.then3:                                         ; preds = %for.body
  %and = and i8 %2, -4
  %cmp5 = icmp eq i8 %and, -64
  %cmp7 = icmp ult i8* %incdec.ptr, %add.ptr
  %or.cond = and i1 %cmp5, %cmp7
  br i1 %or.cond, label %land.lhs.true9, label %return

land.lhs.true9:                                   ; preds = %if.then3
  %3 = load i8* %incdec.ptr, align 1, !tbaa !1
  %4 = icmp slt i8 %3, 0
  %cmp19 = icmp ult i8 %3, -64
  %or.cond75 = and i1 %4, %cmp19
  br i1 %or.cond75, label %if.then21, label %return

if.then21:                                        ; preds = %land.lhs.true9
  %incdec.ptr10 = getelementptr inbounds i8* %s.addr.0, i64 2
  %inc = add nsw i32 %count.0.ph, 1
  br label %for.cond.outer

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %is_utf8, align 1, !tbaa !1
  %5 = load i64* %len, align 8, !tbaa !3
  %conv24 = sext i32 %count.0.ph to i64
  %sub = sub i64 1, %conv24
  %add = add i64 %sub, %5
  %call = tail call i8* @Perl_safesysmalloc(i64 %add) #5
  %6 = load i64* %len, align 8, !tbaa !3
  %add27 = add i64 %sub, %6
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %add27, i32 1, i1 false)
  %cmp2976 = icmp sgt i64 %1, 0
  br i1 %cmp2976, label %while.body, label %while.end

while.body:                                       ; preds = %for.end, %if.end42
  %d.078 = phi i8* [ %incdec.ptr43, %if.end42 ], [ %call, %for.end ]
  %s.addr.177 = phi i8* [ %s.addr.2, %if.end42 ], [ %s, %for.end ]
  %incdec.ptr32 = getelementptr inbounds i8* %s.addr.177, i64 1
  %7 = load i8* %s.addr.177, align 1, !tbaa !1
  %cmp34 = icmp sgt i8 %7, -1
  br i1 %cmp34, label %if.end42, label %if.then36

if.then36:                                        ; preds = %while.body
  %shl = shl i8 %7, 6
  %incdec.ptr38 = getelementptr inbounds i8* %s.addr.177, i64 2
  %8 = load i8* %incdec.ptr32, align 1, !tbaa !1
  %and40 = and i8 %8, 63
  %or = or i8 %and40, %shl
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %while.body
  %s.addr.2 = phi i8* [ %incdec.ptr32, %while.body ], [ %incdec.ptr38, %if.then36 ]
  %c31.0 = phi i8 [ %7, %while.body ], [ %or, %if.then36 ]
  %incdec.ptr43 = getelementptr inbounds i8* %d.078, i64 1
  store i8 %c31.0, i8* %d.078, align 1, !tbaa !1
  %cmp29 = icmp ult i8* %s.addr.2, %add.ptr
  br i1 %cmp29, label %while.body, label %while.end

while.end:                                        ; preds = %if.end42, %for.end
  %d.0.lcssa = phi i8* [ %call, %for.end ], [ %incdec.ptr43, %if.end42 ]
  store i8 0, i8* %d.0.lcssa, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %d.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.then3, %land.lhs.true9, %entry, %while.end
  %retval.0 = phi i8* [ %call, %while.end ], [ %s, %entry ], [ %s, %land.lhs.true9 ], [ %s, %if.then3 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_bytes_to_utf8(i8* %s, i64* nocapture %len) #0 {
entry:
  %0 = load i64* %len, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %s, i64 %0
  %mul = shl i64 %0, 1
  %add32 = or i64 %mul, 1
  %call = tail call i8* @Perl_safesysmalloc(i64 %add32) #5
  %1 = load i64* %len, align 8, !tbaa !3
  %mul2 = shl i64 %1, 1
  %add333 = or i64 %mul2, 1
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %add333, i32 1, i1 false)
  %cmp35 = icmp sgt i64 %0, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond.backedge
  %s.addr.037 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %s, %entry ]
  %d.036 = phi i8* [ %d.0.be, %while.cond.backedge ], [ %call, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.037, i64 1
  %2 = load i8* %s.addr.037, align 1, !tbaa !1
  %cmp5 = icmp sgt i8 %2, -1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %incdec.ptr8 = getelementptr inbounds i8* %d.036, i64 1
  store i8 %2, i8* %d.036, align 1, !tbaa !1
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %shr34 = lshr i8 %2, 6
  %or = or i8 %shr34, -64
  %incdec.ptr12 = getelementptr inbounds i8* %d.036, i64 1
  store i8 %or, i8* %d.036, align 1, !tbaa !1
  %and = and i8 %2, 63
  %or15 = or i8 %and, -128
  %incdec.ptr17 = getelementptr inbounds i8* %d.036, i64 2
  store i8 %or15, i8* %incdec.ptr12, align 1, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then
  %d.0.be = phi i8* [ %incdec.ptr8, %if.then ], [ %incdec.ptr17, %if.else ]
  %cmp = icmp ult i8* %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.cond.backedge, %entry
  %d.0.lcssa = phi i8* [ %call, %entry ], [ %d.0.be, %while.cond.backedge ]
  store i8 0, i8* %d.0.lcssa, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %d.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8, !tbaa !3
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_utf16_to_utf8(i8* %p, i8* %d, i32 %bytelen, i32* nocapture %newlen) #0 {
entry:
  %cmp = icmp eq i32 %bytelen, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i8* %p, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %if.then, label %if.then4

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %d, align 1, !tbaa !1
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %bytelen, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  %idx.ext.pre = sext i32 %bytelen to i64
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true, %if.end
  %conv5 = sext i32 %bytelen to i64
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([38 x i8]* @.str17, i64 0, i64 0), i64 %conv5) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.then4
  %idx.ext.pre-phi = phi i64 [ %idx.ext.pre, %if.end.if.end6_crit_edge ], [ %conv5, %if.then4 ]
  %add.ptr = getelementptr inbounds i8* %p, i64 %idx.ext.pre-phi
  %cmp7135 = icmp sgt i32 %bytelen, 0
  br i1 %cmp7135, label %while.body, label %while.end

while.body:                                       ; preds = %if.end6, %while.cond.backedge
  %p.addr.0137 = phi i8* [ %p.addr.0.be, %while.cond.backedge ], [ %p, %if.end6 ]
  %d.addr.0136 = phi i8* [ %d.addr.0.be, %while.cond.backedge ], [ %d, %if.end6 ]
  %1 = load i8* %p.addr.0137, align 1, !tbaa !1
  %conv10 = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv10, 8
  %arrayidx11 = getelementptr inbounds i8* %p.addr.0137, i64 1
  %2 = load i8* %arrayidx11, align 1, !tbaa !1
  %conv12 = zext i8 %2 to i64
  %add = or i64 %shl, %conv12
  %add.ptr14 = getelementptr inbounds i8* %p.addr.0137, i64 2
  %cmp15 = icmp ult i64 %add, 128
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %d.addr.0136, i64 1
  store i8 %2, i8* %d.addr.0136, align 1, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then17, %if.then22, %if.then57, %if.else
  %d.addr.0.be = phi i8* [ %incdec.ptr, %if.then17 ], [ %incdec.ptr28, %if.then22 ], [ %incdec.ptr70, %if.then57 ], [ %incdec.ptr88, %if.else ]
  %p.addr.0.be = phi i8* [ %add.ptr14, %if.then17 ], [ %add.ptr14, %if.then22 ], [ %p.addr.1, %if.then57 ], [ %p.addr.1, %if.else ]
  %cmp7 = icmp ult i8* %p.addr.0.be, %add.ptr
  br i1 %cmp7, label %while.body, label %while.end

if.end19:                                         ; preds = %while.body
  %cmp20 = icmp ult i64 %add, 2048
  br i1 %cmp20, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end19
  %shr = lshr i64 %add, 6
  %or = or i64 %shr, 192
  %conv23 = trunc i64 %or to i8
  %incdec.ptr24 = getelementptr inbounds i8* %d.addr.0136, i64 1
  store i8 %conv23, i8* %d.addr.0136, align 1, !tbaa !1
  %and25 = and i8 %2, 63
  %or26 = or i8 %and25, -128
  %incdec.ptr28 = getelementptr inbounds i8* %d.addr.0136, i64 2
  store i8 %or26, i8* %incdec.ptr24, align 1, !tbaa !1
  br label %while.cond.backedge

if.end29:                                         ; preds = %if.end19
  %add.off = add i64 %add, -55296
  %3 = icmp ult i64 %add.off, 1023
  br i1 %3, label %if.then35, label %if.end54

if.then35:                                        ; preds = %if.end29
  %4 = load i8* %add.ptr14, align 1, !tbaa !1
  %conv37 = zext i8 %4 to i64
  %shl38 = shl nuw nsw i64 %conv37, 8
  %arrayidx39 = getelementptr inbounds i8* %p.addr.0137, i64 3
  %5 = load i8* %arrayidx39, align 1, !tbaa !1
  %conv40 = zext i8 %5 to i64
  %add41 = or i64 %shl38, %conv40
  %add.ptr43 = getelementptr inbounds i8* %p.addr.0137, i64 4
  %add41.off = add i64 %add41, -56320
  %6 = icmp ugt i64 %add41.off, 1022
  br i1 %6, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then35
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([27 x i8]* @.str18, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then35, %if.then48
  %sub = shl nuw nsw i64 %add, 10
  %sub51 = add i64 %sub, -56613888
  %add53 = add i64 %sub51, %add41
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %if.end29
  %p.addr.1 = phi i8* [ %add.ptr43, %if.end49 ], [ %add.ptr14, %if.end29 ]
  %uv.0 = phi i64 [ %add53, %if.end49 ], [ %add, %if.end29 ]
  %cmp55 = icmp ult i64 %uv.0, 65536
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end54
  %shr58 = lshr i64 %uv.0, 12
  %or59 = or i64 %shr58, 224
  %conv60 = trunc i64 %or59 to i8
  %incdec.ptr61 = getelementptr inbounds i8* %d.addr.0136, i64 1
  store i8 %conv60, i8* %d.addr.0136, align 1, !tbaa !1
  %shr62 = lshr i64 %uv.0, 6
  %and63 = and i64 %shr62, 63
  %or64 = or i64 %and63, 128
  %conv65 = trunc i64 %or64 to i8
  %incdec.ptr66 = getelementptr inbounds i8* %d.addr.0136, i64 2
  store i8 %conv65, i8* %incdec.ptr61, align 1, !tbaa !1
  %and67 = and i64 %uv.0, 63
  %or68 = or i64 %and67, 128
  %conv69 = trunc i64 %or68 to i8
  %incdec.ptr70 = getelementptr inbounds i8* %d.addr.0136, i64 3
  store i8 %conv69, i8* %incdec.ptr66, align 1, !tbaa !1
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end54
  %shr71 = lshr i64 %uv.0, 18
  %or72 = or i64 %shr71, 240
  %conv73 = trunc i64 %or72 to i8
  %incdec.ptr74 = getelementptr inbounds i8* %d.addr.0136, i64 1
  store i8 %conv73, i8* %d.addr.0136, align 1, !tbaa !1
  %shr75 = lshr i64 %uv.0, 12
  %and76 = and i64 %shr75, 63
  %or77 = or i64 %and76, 128
  %conv78 = trunc i64 %or77 to i8
  %incdec.ptr79 = getelementptr inbounds i8* %d.addr.0136, i64 2
  store i8 %conv78, i8* %incdec.ptr74, align 1, !tbaa !1
  %shr80 = lshr i64 %uv.0, 6
  %and81 = and i64 %shr80, 63
  %or82 = or i64 %and81, 128
  %conv83 = trunc i64 %or82 to i8
  %incdec.ptr84 = getelementptr inbounds i8* %d.addr.0136, i64 3
  store i8 %conv83, i8* %incdec.ptr79, align 1, !tbaa !1
  %and85 = and i64 %uv.0, 63
  %or86 = or i64 %and85, 128
  %conv87 = trunc i64 %or86 to i8
  %incdec.ptr88 = getelementptr inbounds i8* %d.addr.0136, i64 4
  store i8 %conv87, i8* %incdec.ptr84, align 1, !tbaa !1
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %if.end6
  %d.addr.0.lcssa = phi i8* [ %d, %if.end6 ], [ %d.addr.0.be, %while.cond.backedge ]
  %sub.ptr.lhs.cast = ptrtoint i8* %d.addr.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %d to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv89 = trunc i64 %sub.ptr.sub to i32
  br label %return

return:                                           ; preds = %while.end, %if.then
  %storemerge = phi i32 [ %conv89, %while.end ], [ 1, %if.then ]
  %retval.0 = phi i8* [ %d.addr.0.lcssa, %while.end ], [ %d, %if.then ]
  store i32 %storemerge, i32* %newlen, align 4, !tbaa !5
  ret i8* %retval.0
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_utf16_to_utf8_reversed(i8* %p, i8* %d, i32 %bytelen, i32* nocapture %newlen) #0 {
entry:
  %idx.ext = sext i32 %bytelen to i64
  %add.ptr = getelementptr inbounds i8* %p, i64 %idx.ext
  %cmp13 = icmp sgt i32 %bytelen, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %s.014 = phi i8* [ %add.ptr4, %while.body ], [ %p, %entry ]
  %0 = load i8* %s.014, align 1, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8* %s.014, i64 1
  %1 = load i8* %arrayidx1, align 1, !tbaa !1
  store i8 %1, i8* %s.014, align 1, !tbaa !1
  store i8 %0, i8* %arrayidx1, align 1, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8* %s.014, i64 2
  %cmp = icmp ult i8* %add.ptr4, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %call = tail call i8* @Perl_utf16_to_utf8(i8* %p, i8* %d, i32 %bytelen, i32* %newlen) #6
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_alnum(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_alnum(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_alnum(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_alnum, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_alnumc(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_alnumc(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_alnumc(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_alnum, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_idfirst(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_idfirst(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_idfirst(i8* %p) #0 {
entry:
  %0 = load i8* %p, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 95
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.sv** @PL_utf8_idstart, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.sv* %1, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call6, %struct.sv** @PL_utf8_idstart, align 8, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  %2 = phi %struct.sv* [ %1, %if.end3 ], [ %call6, %if.then5 ]
  %call8 = tail call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %p, i8 signext 1) #6
  %cmp9 = icmp ne i64 %call8, 0
  %conv11 = zext i1 %cmp9 to i8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i8 [ %conv11, %if.end7 ], [ 1, %entry ], [ 0, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_alpha(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_alpha(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_alpha(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_alpha, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_alpha, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_ascii(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_ascii(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_ascii(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_ascii, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_ascii, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_space(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_space(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_space(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_space, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_digit(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_digit(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_digit(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str27, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_digit, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_upper(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_upper(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_upper(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_upper, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_upper, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_lower(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_lower(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_lower(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_lower, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_lower, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_cntrl(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_cntrl(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_cntrl(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_cntrl, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_cntrl, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_graph(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_graph(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_graph(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_graph, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str31, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_graph, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_print(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_print(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_print(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_print, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_print, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_punct(i64 %c) #0 {
entry:
  %tmpbuf = alloca [14 x i8], align 1
  %arraydecay = getelementptr inbounds [14 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_punct(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_punct(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_punct, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_punct, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_xdigit(i64 %c) #0 {
entry:
  %tmpbuf = alloca [7 x i8], align 1
  %arraydecay = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %c, i64 0) #5
  %call2 = call signext i8 @Perl_is_utf8_xdigit(i8* %arraydecay) #6
  ret i8 %call2
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_xdigit(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_xdigit, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_xdigit, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_uni_upper(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %call.i = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %p, i64 %c, i64 0) #5
  %call.i4 = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %p, i64* %lenp, %struct.sv** @PL_utf8_toupper, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str37, i64 0, i64 0)) #5
  ret i64 %call.i4
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_utf8_upper(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %call = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %ustrp, i64* %lenp, %struct.sv** @PL_utf8_toupper, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str37, i64 0, i64 0)) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_uni_title(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %call.i = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %p, i64 %c, i64 0) #5
  %call.i4 = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %p, i64* %lenp, %struct.sv** @PL_utf8_totitle, i8* getelementptr inbounds ([8 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0)) #5
  ret i64 %call.i4
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_utf8_title(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %call = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %ustrp, i64* %lenp, %struct.sv** @PL_utf8_totitle, i8* getelementptr inbounds ([8 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0)) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_uni_lower(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %call.i = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %p, i64 %c, i64 0) #5
  %call.i4 = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %p, i64* %lenp, %struct.sv** @PL_utf8_tolower, i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0)) #5
  ret i64 %call.i4
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_utf8_lower(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %call = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %ustrp, i64* %lenp, %struct.sv** @PL_utf8_tolower, i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0)) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_uni_fold(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %call.i = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %p, i64 %c, i64 0) #5
  %call.i4 = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %p, i64* %lenp, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0)) #5
  ret i64 %call.i4
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_utf8_fold(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %call = tail call i64 @Perl_to_utf8_case(i8* %p, i8* %ustrp, i64* %lenp, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0)) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_alnum_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_alnum(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_alnumc_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_alnumc(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_idfirst_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_idfirst(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_alpha_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_alpha(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_ascii_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_ascii(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_space_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_space(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_digit_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_digit(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_upper_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_upper(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_lower_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_lower(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_cntrl_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_cntrl(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_graph_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_graph(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_print_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_print(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_punct_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 14, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_punct(i8* %0) #5
  call void @llvm.lifetime.end(i64 14, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_uni_xdigit_lc(i64 %c) #0 {
entry:
  %tmpbuf.i = alloca [7 x i8], align 1
  %0 = getelementptr inbounds [7 x i8]* %tmpbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 7, i8* %0) #4
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %c, i64 0) #5
  %call2.i = call signext i8 @Perl_is_utf8_xdigit(i8* %0) #5
  call void @llvm.lifetime.end(i64 7, i8* %0) #4
  ret i8 %call2.i
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_to_uni_upper_lc(i32 %c) #0 {
entry:
  %len = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  %conv = zext i32 %c to i64
  %arraydecay = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %conv, i64 0) #5
  %call.i4.i = call i64 @Perl_to_utf8_case(i8* %arraydecay, i8* %arraydecay, i64* %len, %struct.sv** @PL_utf8_toupper, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str37, i64 0, i64 0)) #5
  %conv1 = trunc i64 %call.i4.i to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_to_uni_title_lc(i32 %c) #0 {
entry:
  %len = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  %conv = zext i32 %c to i64
  %arraydecay = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %conv, i64 0) #5
  %call.i4.i = call i64 @Perl_to_utf8_case(i8* %arraydecay, i8* %arraydecay, i64* %len, %struct.sv** @PL_utf8_totitle, i8* getelementptr inbounds ([8 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0)) #5
  %conv1 = trunc i64 %call.i4.i to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_to_uni_lower_lc(i32 %c) #0 {
entry:
  %len = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  %conv = zext i32 %c to i64
  %arraydecay = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %call.i.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %conv, i64 0) #5
  %call.i4.i = call i64 @Perl_to_utf8_case(i8* %arraydecay, i8* %arraydecay, i64* %len, %struct.sv** @PL_utf8_tolower, i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0)) #5
  %conv1 = trunc i64 %call.i4.i to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_swash_init(i8* %pkg, i8* %name, %struct.sv* %listsv, i32 %minbits, i32 %none) #0 {
entry:
  %len = alloca i64, align 8
  %call = call %struct.sv* @Perl_sv_newmortal() #5
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call2 = call i64 @strlen(i8* %pkg) #5
  %call3 = call i64 @strlen(i8* %name) #5
  %conv = trunc i64 %call2 to i32
  %call4 = call %struct.hv* @Perl_gv_stashpvn(i8* %pkg, i32 %conv, i32 0) #5
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 6
  %2 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool = icmp eq %struct.stackinfo* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #5
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call5, i64 0, i32 5
  store %struct.stackinfo* %3, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next6 = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 6
  store %struct.stackinfo* %call5, %struct.stackinfo** %si_next6, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %next.0 = phi %struct.stackinfo* [ %2, %entry ], [ %call5, %if.then ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !5
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !5
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %5 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %5, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %8 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any7 = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_fill8 = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill8, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %10 = load i8** %xav_array, align 8, !tbaa !0
  %11 = bitcast i8* %10 to %struct.sv**
  store %struct.sv** %11, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %12 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any12 = getelementptr inbounds %struct.av* %12, i64 0, i32 0
  %13 = load %struct.xpvav** %sv_any12, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 2
  %14 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %11, i64 %14
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any14 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any14, align 8, !tbaa !0
  %xav_fill15 = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 1
  %17 = load i64* %xav_fill15, align 8, !tbaa !3
  %add.ptr16 = getelementptr inbounds %struct.sv** %11, i64 %17
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %18, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  call void @Perl_push_scope() #5
  call void @Perl_save_I32(i32* @PL_hints) #5
  store i32 0, i32* @PL_hints, align 4, !tbaa !5
  call void @Perl_save_re_context() #5
  %call18 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %call4, i8* getelementptr inbounds ([9 x i8]* @.str44, i64 0, i64 0), i64 8, i32 -1) #5
  %tobool19 = icmp eq %struct.gv* %call18, null
  br i1 %tobool19, label %if.then20, label %if.end87

if.then20:                                        ; preds = %if.end
  call void @Perl_push_scope() #5
  %19 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any21 = getelementptr inbounds %struct.gv* %19, i64 0, i32 0
  %20 = load %struct.xpvgv** %sv_any21, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %20, i64 0, i32 7
  %21 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %21, i64 0, i32 0
  %22 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %call22 = call %struct.sv* @Perl_newSVsv(%struct.sv* %22) #5
  %call23 = call %struct.sv* @Perl_newSVpvn(i8* %pkg, i64 %call2) #5
  call void (i32, %struct.sv*, %struct.sv*, ...)* @Perl_load_module(i32 2, %struct.sv* %call23, %struct.sv* null) #5
  %23 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any24 = getelementptr inbounds %struct.gv* %23, i64 0, i32 0
  %24 = load %struct.xpvgv** %sv_any24, align 8, !tbaa !0
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp25, align 8, !tbaa !0
  %gp_sv26 = getelementptr inbounds %struct.gp* %25, i64 0, i32 0
  %26 = load %struct.sv** %gp_sv26, align 8, !tbaa !0
  %tobool27 = icmp eq %struct.sv* %26, null
  br i1 %tobool27, label %if.then82, label %cond.false

cond.false:                                       ; preds = %if.then20
  %sv_flags = getelementptr inbounds %struct.sv* %26, i64 0, i32 2
  %27 = load i32* %sv_flags, align 4, !tbaa !5
  %and = and i32 %27, 262144
  %tobool31 = icmp eq i32 %and, 0
  br i1 %tobool31, label %cond.false47, label %cond.true32

cond.true32:                                      ; preds = %cond.false
  %sv_any36 = getelementptr inbounds %struct.sv* %26, i64 0, i32 0
  %28 = load i8** %sv_any36, align 8, !tbaa !0
  %29 = bitcast i8* %28 to %struct.xpv*
  store %struct.xpv* %29, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool37 = icmp eq i8* %28, null
  br i1 %tobool37, label %if.then82, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true32
  %xpv_cur = getelementptr inbounds i8* %28, i64 8
  %30 = bitcast i8* %xpv_cur to i64*
  %31 = load i64* %30, align 8, !tbaa !3
  %cmp = icmp ugt i64 %31, 1
  br i1 %cmp, label %if.end86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tobool40 = icmp eq i64 %31, 0
  br i1 %tobool40, label %if.then82, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %28 to i8**
  %32 = load i8** %xpv_pv, align 8, !tbaa !0
  %33 = load i8* %32, align 1, !tbaa !1
  %cmp43 = icmp eq i8 %33, 48
  br i1 %cmp43, label %if.then82, label %if.end86

cond.false47:                                     ; preds = %cond.false
  %and52 = and i32 %27, 65536
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %cond.false61, label %cond.true54

cond.true54:                                      ; preds = %cond.false47
  %sv_any58 = getelementptr inbounds %struct.sv* %26, i64 0, i32 0
  %34 = load i8** %sv_any58, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %34, i64 24
  %35 = bitcast i8* %xiv_iv to i64*
  %36 = load i64* %35, align 8, !tbaa !3
  %cmp59 = icmp eq i64 %36, 0
  br i1 %cmp59, label %if.then82, label %if.end86

cond.false61:                                     ; preds = %cond.false47
  %and66 = and i32 %27, 131072
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %cond.false75, label %cond.true68

cond.true68:                                      ; preds = %cond.false61
  %sv_any72 = getelementptr inbounds %struct.sv* %26, i64 0, i32 0
  %37 = load i8** %sv_any72, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %37, i64 32
  %38 = bitcast i8* %xnv_nv to double*
  %39 = load double* %38, align 8, !tbaa !6
  %cmp73 = fcmp une double %39, 0.000000e+00
  br i1 %cmp73, label %if.end86, label %if.then82

cond.false75:                                     ; preds = %cond.false61
  %call79 = call signext i8 @Perl_sv_2bool(%struct.sv* %26) #5
  %tobool81 = icmp eq i8 %call79, 0
  br i1 %tobool81, label %cond.false75.if.then82_crit_edge, label %if.end86

cond.false75.if.then82_crit_edge:                 ; preds = %cond.false75
  %.pre335 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  br label %if.then82

if.then82:                                        ; preds = %land.lhs.true41, %lor.lhs.false, %cond.true32, %cond.false75.if.then82_crit_edge, %cond.true54, %if.then20, %cond.true68
  %40 = phi %struct.gv* [ %.pre335, %cond.false75.if.then82_crit_edge ], [ %23, %cond.true54 ], [ %23, %if.then20 ], [ %23, %cond.true68 ], [ %23, %cond.true32 ], [ %23, %lor.lhs.false ], [ %23, %land.lhs.true41 ]
  %sv_any83 = getelementptr inbounds %struct.gv* %40, i64 0, i32 0
  %41 = load %struct.xpvgv** %sv_any83, align 8, !tbaa !0
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv* %41, i64 0, i32 7
  %42 = load %struct.gp** %xgv_gp84, align 8, !tbaa !0
  %gp_sv85 = getelementptr inbounds %struct.gp* %42, i64 0, i32 0
  %43 = load %struct.sv** %gp_sv85, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %43, %struct.sv* %call22, i32 2) #5
  br label %if.end86

if.end86:                                         ; preds = %land.lhs.true41, %cond.true54, %cond.false75, %land.lhs.true, %if.then82, %cond.true68
  call void @Perl_sv_free(%struct.sv* %call22) #5
  call void @Perl_pop_scope() #5
  br label %if.end87

if.end87:                                         ; preds = %if.end, %if.end86
  %44 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %45 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %45, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %46 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp88 = icmp eq i32* %incdec.ptr, %46
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end87
  call void @Perl_markstack_grow() #5
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end87
  %47 = phi i32* [ %.pre, %if.then90 ], [ %incdec.ptr, %if.end87 ]
  %48 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast92 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.rhs.cast93 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  %sub.ptr.div95333 = lshr exact i64 %sub.ptr.sub94, 3
  %conv96 = trunc i64 %sub.ptr.div95333 to i32
  store i32 %conv96, i32* %47, align 4, !tbaa !5
  %49 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast97 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.lhs.cast92
  %cmp101 = icmp slt i64 %sub.ptr.sub99, 40
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end91
  %call104 = call %struct.sv** @Perl_stack_grow(%struct.sv** %44, %struct.sv** %44, i32 5) #5
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end91
  %sp.0 = phi %struct.sv** [ %call104, %if.then103 ], [ %44, %if.end91 ]
  %call106 = call %struct.sv* @Perl_newSVpvn(i8* %pkg, i64 %call2) #5
  %call107 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call106) #5
  %incdec.ptr108 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call107, %struct.sv** %incdec.ptr108, align 8, !tbaa !0
  %call109 = call %struct.sv* @Perl_newSVpvn(i8* %name, i64 %call3) #5
  %call110 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call109) #5
  %incdec.ptr111 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call110, %struct.sv** %incdec.ptr111, align 8, !tbaa !0
  %incdec.ptr112 = getelementptr inbounds %struct.sv** %sp.0, i64 3
  store %struct.sv* %listsv, %struct.sv** %incdec.ptr112, align 8, !tbaa !0
  %conv113 = sext i32 %minbits to i64
  %call114 = call %struct.sv* @Perl_newSViv(i64 %conv113) #5
  %call115 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call114) #5
  %incdec.ptr116 = getelementptr inbounds %struct.sv** %sp.0, i64 4
  store %struct.sv* %call115, %struct.sv** %incdec.ptr116, align 8, !tbaa !0
  %conv117 = sext i32 %none to i64
  %call118 = call %struct.sv* @Perl_newSViv(i64 %conv117) #5
  %call119 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call118) #5
  %incdec.ptr120 = getelementptr inbounds %struct.sv** %sp.0, i64 5
  store %struct.sv* %call119, %struct.sv** %incdec.ptr120, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr120, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %50 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp121 = icmp eq %struct.cop* %50, @PL_compiling
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end105
  call void @Perl_save_I32(i32* @PL_in_my) #5
  store i32 0, i32* @PL_in_my, align 4, !tbaa !5
  call void @Perl_sv_setpv(%struct.sv* %call, i8* getelementptr inbounds ([256 x i8]* @PL_tokenbuf, i64 0, i64 0)) #5
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end105
  %51 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any125 = getelementptr inbounds %struct.gv* %51, i64 0, i32 0
  %52 = load %struct.xpvgv** %sv_any125, align 8, !tbaa !0
  %xgv_gp126 = getelementptr inbounds %struct.xpvgv* %52, i64 0, i32 7
  %53 = load %struct.gp** %xgv_gp126, align 8, !tbaa !0
  %gp_sv127 = getelementptr inbounds %struct.gp* %53, i64 0, i32 0
  %54 = load %struct.sv** %gp_sv127, align 8, !tbaa !0
  %call128 = call %struct.sv* @Perl_newSVsv(%struct.sv* %54) #5
  %call129 = call i32 @Perl_call_method(i8* getelementptr inbounds ([9 x i8]* @.str44, i64 0, i64 0), i32 0) #5
  %tobool130 = icmp eq i32 %call129, 0
  br i1 %tobool130, label %if.end134, label %if.then131

if.then131:                                       ; preds = %if.end124
  %55 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr132 = getelementptr inbounds %struct.sv** %55, i64 -1
  store %struct.sv** %incdec.ptr132, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %56 = load %struct.sv** %55, align 8, !tbaa !0
  %call133 = call %struct.sv* @Perl_newSVsv(%struct.sv* %56) #5
  br label %if.end134

if.end134:                                        ; preds = %if.end124, %if.then131
  %retval1.0 = phi %struct.sv* [ %call133, %if.then131 ], [ @PL_sv_undef, %if.end124 ]
  %57 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any135 = getelementptr inbounds %struct.gv* %57, i64 0, i32 0
  %58 = load %struct.xpvgv** %sv_any135, align 8, !tbaa !0
  %xgv_gp136 = getelementptr inbounds %struct.xpvgv* %58, i64 0, i32 7
  %59 = load %struct.gp** %xgv_gp136, align 8, !tbaa !0
  %gp_sv137 = getelementptr inbounds %struct.gp* %59, i64 0, i32 0
  %60 = load %struct.sv** %gp_sv137, align 8, !tbaa !0
  %tobool138 = icmp eq %struct.sv* %60, null
  br i1 %tobool138, label %if.then204, label %cond.false140

cond.false140:                                    ; preds = %if.end134
  %sv_flags144 = getelementptr inbounds %struct.sv* %60, i64 0, i32 2
  %61 = load i32* %sv_flags144, align 4, !tbaa !5
  %and145 = and i32 %61, 262144
  %tobool146 = icmp eq i32 %and145, 0
  br i1 %tobool146, label %cond.false167, label %cond.true147

cond.true147:                                     ; preds = %cond.false140
  %sv_any151 = getelementptr inbounds %struct.sv* %60, i64 0, i32 0
  %62 = load i8** %sv_any151, align 8, !tbaa !0
  %63 = bitcast i8* %62 to %struct.xpv*
  store %struct.xpv* %63, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool152 = icmp eq i8* %62, null
  br i1 %tobool152, label %if.then204, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %cond.true147
  %xpv_cur154 = getelementptr inbounds i8* %62, i64 8
  %64 = bitcast i8* %xpv_cur154 to i64*
  %65 = load i64* %64, align 8, !tbaa !3
  %cmp155 = icmp ugt i64 %65, 1
  br i1 %cmp155, label %if.end208, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %land.lhs.true153
  %tobool159 = icmp eq i64 %65, 0
  br i1 %tobool159, label %if.then204, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %lor.lhs.false157
  %xpv_pv161 = bitcast i8* %62 to i8**
  %66 = load i8** %xpv_pv161, align 8, !tbaa !0
  %67 = load i8* %66, align 1, !tbaa !1
  %cmp163 = icmp eq i8 %67, 48
  br i1 %cmp163, label %if.then204, label %if.end208

cond.false167:                                    ; preds = %cond.false140
  %and172 = and i32 %61, 65536
  %tobool173 = icmp eq i32 %and172, 0
  br i1 %tobool173, label %cond.false182, label %cond.true174

cond.true174:                                     ; preds = %cond.false167
  %sv_any178 = getelementptr inbounds %struct.sv* %60, i64 0, i32 0
  %68 = load i8** %sv_any178, align 8, !tbaa !0
  %xiv_iv179 = getelementptr inbounds i8* %68, i64 24
  %69 = bitcast i8* %xiv_iv179 to i64*
  %70 = load i64* %69, align 8, !tbaa !3
  %cmp180 = icmp eq i64 %70, 0
  br i1 %cmp180, label %if.then204, label %if.end208

cond.false182:                                    ; preds = %cond.false167
  %and187 = and i32 %61, 131072
  %tobool188 = icmp eq i32 %and187, 0
  br i1 %tobool188, label %cond.false197, label %cond.true189

cond.true189:                                     ; preds = %cond.false182
  %sv_any193 = getelementptr inbounds %struct.sv* %60, i64 0, i32 0
  %71 = load i8** %sv_any193, align 8, !tbaa !0
  %xnv_nv194 = getelementptr inbounds i8* %71, i64 32
  %72 = bitcast i8* %xnv_nv194 to double*
  %73 = load double* %72, align 8, !tbaa !6
  %cmp195 = fcmp une double %73, 0.000000e+00
  br i1 %cmp195, label %if.end208, label %if.then204

cond.false197:                                    ; preds = %cond.false182
  %call201 = call signext i8 @Perl_sv_2bool(%struct.sv* %60) #5
  %tobool203 = icmp eq i8 %call201, 0
  br i1 %tobool203, label %cond.false197.if.then204_crit_edge, label %if.end208

cond.false197.if.then204_crit_edge:               ; preds = %cond.false197
  %.pre336 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  br label %if.then204

if.then204:                                       ; preds = %land.lhs.true160, %lor.lhs.false157, %cond.true147, %cond.false197.if.then204_crit_edge, %cond.true174, %if.end134, %cond.true189
  %74 = phi %struct.gv* [ %.pre336, %cond.false197.if.then204_crit_edge ], [ %57, %cond.true174 ], [ %57, %if.end134 ], [ %57, %cond.true189 ], [ %57, %cond.true147 ], [ %57, %lor.lhs.false157 ], [ %57, %land.lhs.true160 ]
  %sv_any205 = getelementptr inbounds %struct.gv* %74, i64 0, i32 0
  %75 = load %struct.xpvgv** %sv_any205, align 8, !tbaa !0
  %xgv_gp206 = getelementptr inbounds %struct.xpvgv* %75, i64 0, i32 7
  %76 = load %struct.gp** %xgv_gp206, align 8, !tbaa !0
  %gp_sv207 = getelementptr inbounds %struct.gp* %76, i64 0, i32 0
  %77 = load %struct.sv** %gp_sv207, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %77, %struct.sv* %call128, i32 2) #5
  br label %if.end208

if.end208:                                        ; preds = %land.lhs.true160, %cond.true174, %cond.false197, %land.lhs.true153, %if.then204, %cond.true189
  call void @Perl_sv_free(%struct.sv* %call128) #5
  call void @Perl_pop_scope() #5
  %78 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %79 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev210 = getelementptr inbounds %struct.stackinfo* %79, i64 0, i32 5
  %80 = load %struct.stackinfo** %si_prev210, align 8, !tbaa !0
  %tobool211 = icmp eq %struct.stackinfo* %80, null
  br i1 %tobool211, label %if.then212, label %if.end238

if.then212:                                       ; preds = %if.end208
  %81 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool213 = icmp eq %struct.gv* %81, null
  br i1 %tobool213, label %cond.false235, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %if.then212
  %sv_flags215 = getelementptr inbounds %struct.gv* %81, i64 0, i32 2
  %82 = load i32* %sv_flags215, align 4, !tbaa !5
  %and216 = and i32 %82, 255
  %cmp217 = icmp eq i32 %and216, 13
  br i1 %cmp217, label %land.lhs.true219, label %cond.false235

land.lhs.true219:                                 ; preds = %land.lhs.true214
  %sv_any220 = getelementptr inbounds %struct.gv* %81, i64 0, i32 0
  %83 = load %struct.xpvgv** %sv_any220, align 8, !tbaa !0
  %xgv_gp221 = getelementptr inbounds %struct.xpvgv* %83, i64 0, i32 7
  %84 = load %struct.gp** %xgv_gp221, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %84, i64 0, i32 2
  %85 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool222 = icmp eq %struct.io* %85, null
  br i1 %tobool222, label %cond.false235, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %land.lhs.true219
  %sv_any227 = getelementptr inbounds %struct.io* %85, i64 0, i32 0
  %86 = load %struct.xpvio** %sv_any227, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %86, i64 0, i32 8
  %87 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool228 = icmp eq %struct._PerlIO** %87, null
  br i1 %tobool228, label %cond.false235, label %cond.end

cond.false235:                                    ; preds = %land.lhs.true223, %land.lhs.true219, %if.then212, %land.lhs.true214
  %call236 = call %struct._PerlIO** @Perl_PerlIO_stderr() #5
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true223, %cond.false235
  %cond = phi %struct._PerlIO** [ %call236, %cond.false235 ], [ %87, %land.lhs.true223 ]
  %call237 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str45, i64 0, i64 0)) #5
  call void @Perl_my_exit(i32 1) #5
  br label %if.end238

if.end238:                                        ; preds = %if.end208, %cond.end
  %88 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast239 = ptrtoint %struct.sv** %78 to i64
  %sub.ptr.rhs.cast240 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub241 = sub i64 %sub.ptr.lhs.cast239, %sub.ptr.rhs.cast240
  %sub.ptr.div242 = ashr exact i64 %sub.ptr.sub241, 3
  %89 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any243 = getelementptr inbounds %struct.av* %89, i64 0, i32 0
  %90 = load %struct.xpvav** %sv_any243, align 8, !tbaa !0
  %xav_fill244 = getelementptr inbounds %struct.xpvav* %90, i64 0, i32 1
  store i64 %sub.ptr.div242, i64* %xav_fill244, align 8, !tbaa !3
  %si_stack245 = getelementptr inbounds %struct.stackinfo* %80, i64 0, i32 0
  %91 = load %struct.av** %si_stack245, align 8, !tbaa !0
  %sv_any246 = getelementptr inbounds %struct.av* %91, i64 0, i32 0
  %92 = load %struct.xpvav** %sv_any246, align 8, !tbaa !0
  %xav_array247 = getelementptr inbounds %struct.xpvav* %92, i64 0, i32 0
  %93 = load i8** %xav_array247, align 8, !tbaa !0
  %94 = bitcast i8* %93 to %struct.sv**
  store %struct.sv** %94, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %95 = load %struct.av** %si_stack245, align 8, !tbaa !0
  %sv_any249 = getelementptr inbounds %struct.av* %95, i64 0, i32 0
  %96 = load %struct.xpvav** %sv_any249, align 8, !tbaa !0
  %xav_max250 = getelementptr inbounds %struct.xpvav* %96, i64 0, i32 2
  %97 = load i64* %xav_max250, align 8, !tbaa !3
  %add.ptr251 = getelementptr inbounds %struct.sv** %94, i64 %97
  store %struct.sv** %add.ptr251, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %98 = load %struct.av** %si_stack245, align 8, !tbaa !0
  %sv_any253 = getelementptr inbounds %struct.av* %98, i64 0, i32 0
  %99 = load %struct.xpvav** %sv_any253, align 8, !tbaa !0
  %xav_fill254 = getelementptr inbounds %struct.xpvav* %99, i64 0, i32 1
  %100 = load i64* %xav_fill254, align 8, !tbaa !3
  %add.ptr255 = getelementptr inbounds %struct.sv** %94, i64 %100
  store %struct.sv** %add.ptr255, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %101 = load %struct.av** %si_stack245, align 8, !tbaa !0
  store %struct.av* %101, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %80, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %102 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp257 = icmp eq %struct.cop* %102, @PL_compiling
  br i1 %cmp257, label %if.then259, label %if.end275

if.then259:                                       ; preds = %if.end238
  %sv_flags260 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %103 = load i32* %sv_flags260, align 4, !tbaa !5
  %and261 = and i32 %103, 262144
  %cmp262 = icmp eq i32 %and261, 0
  br i1 %cmp262, label %cond.false269, label %cond.true264

cond.true264:                                     ; preds = %if.then259
  %sv_any265 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %104 = load i8** %sv_any265, align 8, !tbaa !0
  %xpv_cur266 = getelementptr inbounds i8* %104, i64 8
  %105 = bitcast i8* %xpv_cur266 to i64*
  %106 = load i64* %105, align 8, !tbaa !3
  store i64 %106, i64* %len, align 8, !tbaa !3
  %xpv_pv268 = bitcast i8* %104 to i8**
  %107 = load i8** %xpv_pv268, align 8, !tbaa !0
  br label %cond.end271

cond.false269:                                    ; preds = %if.then259
  %call270 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %len, i32 2) #5
  %.pre334 = load i64* %len, align 8, !tbaa !3
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false269, %cond.true264
  %108 = phi i64 [ %106, %cond.true264 ], [ %.pre334, %cond.false269 ]
  %cond272 = phi i8* [ %107, %cond.true264 ], [ %call270, %cond.false269 ]
  %add = add i64 %108, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @PL_tokenbuf, i64 0, i64 0), i8* %cond272, i64 %add, i32 1, i1 false)
  %109 = load i32* @PL_hints, align 4, !tbaa !5
  %conv274 = trunc i32 %109 to i8
  %110 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %110, i64 0, i32 7
  store i8 %conv274, i8* %op_private, align 1, !tbaa !1
  br label %if.end275

if.end275:                                        ; preds = %cond.end271, %if.end238
  %sv_flags276 = getelementptr inbounds %struct.sv* %retval1.0, i64 0, i32 2
  %111 = load i32* %sv_flags276, align 4, !tbaa !5
  %and277 = and i32 %111, 524288
  %tobool278 = icmp eq i32 %and277, 0
  br i1 %tobool278, label %if.then285, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %if.end275
  %sv_any280 = getelementptr inbounds %struct.sv* %retval1.0, i64 0, i32 0
  %112 = load i8** %sv_any280, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %112 to %struct.sv**
  %113 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags281 = getelementptr inbounds %struct.sv* %113, i64 0, i32 2
  %114 = load i32* %sv_flags281, align 4, !tbaa !5
  %and282 = and i32 %114, 255
  %cmp283 = icmp eq i32 %and282, 11
  br i1 %cmp283, label %if.end291, label %if.then285

if.then285:                                       ; preds = %lor.lhs.false279, %if.end275
  %and287 = and i32 %111, 262144
  %tobool288 = icmp eq i32 %and287, 0
  br i1 %tobool288, label %if.end290, label %if.then289

if.then289:                                       ; preds = %if.then285
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str46, i64 0, i64 0), %struct.sv* %retval1.0) #5
  br label %if.end290

if.end290:                                        ; preds = %if.then285, %if.then289
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str47, i64 0, i64 0)) #5
  br label %if.end291

if.end291:                                        ; preds = %lor.lhs.false279, %if.end290
  ret %struct.sv* %retval1.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_swash_fetch(%struct.sv* %sv, i8* %ptr, i8 signext %do_utf8) #0 {
entry:
  %slen = alloca i64, align 8
  %tmputf8 = alloca [2 x i8], align 1
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %0 to %struct.sv**
  %1 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %2 = bitcast %struct.sv* %1 to %struct.hv*
  %3 = load i8* %ptr, align 1, !tbaa !1
  %tobool = icmp ne i8 %do_utf8, 0
  %cmp = icmp sgt i8 %3, -1
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %shr429 = lshr i8 %3, 6
  %or = or i8 %shr429, -64
  %arrayidx = getelementptr inbounds [2 x i8]* %tmputf8, i64 0, i64 0
  store i8 %or, i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %3, 63
  %or8 = or i8 %and, -128
  %arrayidx10 = getelementptr inbounds [2 x i8]* %tmputf8, i64 0, i64 1
  store i8 %or8, i8* %arrayidx10, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi i8 [ %3, %entry ], [ %or, %if.then ]
  %ptr.addr.0 = phi i8* [ %ptr, %entry ], [ %arrayidx, %if.then ]
  %idxprom = zext i8 %4 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %5 = load i8* %arrayidx11, align 1, !tbaa !1
  %conv12 = zext i8 %5 to i32
  %sub = add nsw i32 %conv12, -1
  %idxprom13 = zext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds i8* %ptr.addr.0, i64 %idxprom13
  %6 = load i8* %arrayidx14, align 1, !tbaa !1
  %cmp16 = icmp eq i32 %sub, 0
  %conv21 = zext i8 %6 to i32
  %and25 = and i32 %conv21, 63
  %needents.0 = select i1 %cmp16, i64 128, i64 64
  %off.0 = select i1 %cmp16, i32 %conv21, i32 %and25
  %7 = load %struct.hv** @PL_last_swash_hv, align 8, !tbaa !0
  %cmp27 = icmp eq %struct.hv* %2, %7
  %8 = load i32* @PL_last_swash_klen, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %sub, %8
  %or.cond437 = and i1 %cmp27, %cmp30
  br i1 %or.cond437, label %land.lhs.true32, label %if.else37

land.lhs.true32:                                  ; preds = %if.end
  br i1 %cmp16, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true32
  %call = call i32 @memcmp(i8* %ptr.addr.0, i8* getelementptr inbounds ([10 x i8]* @PL_last_swash_key, i64 0, i64 0), i64 %idxprom13) #5
  %tobool35 = icmp eq i32 %call, 0
  br i1 %tobool35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true32
  %9 = load i8** @PL_last_swash_tmps, align 8, !tbaa !0
  %10 = load i64* @PL_last_swash_slen, align 8, !tbaa !3
  store i64 %10, i64* %slen, align 8, !tbaa !3
  br label %if.end296

if.else37:                                        ; preds = %lor.lhs.false, %if.end
  %call38 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %2, i8* %ptr.addr.0, i32 %sub, i32 0) #5
  %tobool39 = icmp eq %struct.sv** %call38, null
  br i1 %tobool39, label %if.then52, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.else37
  %11 = load %struct.sv** %call38, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !5
  %and41 = and i32 %12, 262144
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.then52, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false40
  %sv_any48 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any48, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %13, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !3
  store i64 %15, i64* %slen, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %13 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  %tobool51 = icmp eq i8* %16, null
  br i1 %tobool51, label %if.then52, label %if.end291

if.then52:                                        ; preds = %cond.true, %lor.lhs.false40, %if.else37
  %17 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %18, i64 0, i32 14
  %19 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp53 = icmp eq %struct.sv* %19, null
  br i1 %cmp53, label %lor.rhs, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.then52
  %20 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings56 = getelementptr inbounds %struct.cop* %20, i64 0, i32 14
  %21 = load %struct.sv** %cop_warnings56, align 8, !tbaa !0
  %cmp57 = icmp eq %struct.sv* %21, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp57, label %lor.rhs, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings60 = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings60, align 8, !tbaa !0
  %cmp61 = icmp eq %struct.sv* %23, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp61, label %lor.end, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true59
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings64 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings64, align 8, !tbaa !0
  %sv_any65 = getelementptr inbounds %struct.sv* %25, i64 0, i32 0
  %26 = load i8** %sv_any65, align 8, !tbaa !0
  %xpv_pv66 = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv66, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i8* %27, i64 11
  %28 = load i8* %arrayidx67, align 1, !tbaa !1
  %and69 = and i8 %28, 1
  %tobool70 = icmp eq i8 %and69, 0
  br i1 %tobool70, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false63, %land.lhs.true55, %if.then52
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings71 = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings71, align 8, !tbaa !0
  %cmp72 = icmp eq %struct.sv* %30, null
  br i1 %cmp72, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %31 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and75 = and i8 %31, 1
  %tobool76 = icmp ne i8 %and75, 0
  %phitmp = select i1 %tobool76, i32 0, i32 255
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false63, %lor.rhs, %land.rhs, %land.lhs.true59
  %32 = phi i32 [ 0, %lor.lhs.false63 ], [ 0, %land.lhs.true59 ], [ 255, %lor.rhs ], [ %phitmp, %land.rhs ]
  %call78 = call i64 @Perl_utf8n_to_uvuni(i8* %ptr.addr.0, i64 13, i64* null, i32 %32) #6
  call void @Perl_push_scope() #5
  call void @Perl_save_int(i32* @PL_tmps_floor) #5
  %33 = load i32* @PL_tmps_ix, align 4, !tbaa !5
  store i32 %33, i32* @PL_tmps_floor, align 4, !tbaa !5
  call void @Perl_save_re_context() #5
  %34 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %34, i64 0, i32 6
  %35 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool79 = icmp eq %struct.stackinfo* %35, null
  br i1 %tobool79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %lor.end
  %call81 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #5
  %36 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call81, i64 0, i32 5
  store %struct.stackinfo* %36, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %37 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next82 = getelementptr inbounds %struct.stackinfo* %37, i64 0, i32 6
  store %struct.stackinfo* %call81, %struct.stackinfo** %si_next82, align 8, !tbaa !0
  br label %if.end83

if.end83:                                         ; preds = %lor.end, %if.then80
  %next.0 = phi %struct.stackinfo* [ %35, %lor.end ], [ %call81, %if.then80 ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 2, i32* %si_type, align 4, !tbaa !5
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !5
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %38 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any84 = getelementptr inbounds %struct.av* %38, i64 0, i32 0
  %39 = load %struct.xpvav** %sv_any84, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !3
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %41 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any85 = getelementptr inbounds %struct.av* %41, i64 0, i32 0
  %42 = load %struct.xpvav** %sv_any85, align 8, !tbaa !0
  %xav_fill86 = getelementptr inbounds %struct.xpvav* %42, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill86, align 8, !tbaa !3
  %xav_array = getelementptr inbounds %struct.xpvav* %39, i64 0, i32 0
  %43 = load i8** %xav_array, align 8, !tbaa !0
  %44 = bitcast i8* %43 to %struct.sv**
  store %struct.sv** %44, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %45 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any90 = getelementptr inbounds %struct.av* %45, i64 0, i32 0
  %46 = load %struct.xpvav** %sv_any90, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %46, i64 0, i32 2
  %47 = load i64* %xav_max, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.sv** %44, i64 %47
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %48 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any92 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any92, align 8, !tbaa !0
  %xav_fill93 = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 1
  %50 = load i64* %xav_fill93, align 8, !tbaa !3
  %add.ptr94 = getelementptr inbounds %struct.sv** %44, i64 %50
  store %struct.sv** %add.ptr94, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %51 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %51, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %52 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %52, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %53 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp96 = icmp eq i32* %incdec.ptr, %53
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end83
  call void @Perl_markstack_grow() #5
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %.pre438 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %.pre439 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end83
  %54 = phi %struct.sv** [ %.pre439, %if.then98 ], [ %add.ptr, %if.end83 ]
  %55 = phi i32* [ %.pre438, %if.then98 ], [ %incdec.ptr, %if.end83 ]
  %56 = phi %struct.sv** [ %.pre, %if.then98 ], [ %44, %if.end83 ]
  %sub.ptr.lhs.cast100 = ptrtoint %struct.sv** %add.ptr94 to i64
  %sub.ptr.rhs.cast101 = ptrtoint %struct.sv** %56 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %sub.ptr.div103430 = lshr exact i64 %sub.ptr.sub102, 3
  %conv104 = trunc i64 %sub.ptr.div103430 to i32
  store i32 %conv104, i32* %55, align 4, !tbaa !5
  %sub.ptr.lhs.cast105 = ptrtoint %struct.sv** %54 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.lhs.cast100
  %cmp109 = icmp slt i64 %sub.ptr.sub107, 24
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.end99
  %call112 = call %struct.sv** @Perl_stack_grow(%struct.sv** %add.ptr94, %struct.sv** %add.ptr94, i32 3) #5
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end99
  %sp.0 = phi %struct.sv** [ %call112, %if.then111 ], [ %add.ptr94, %if.end99 ]
  %incdec.ptr114 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %sv, %struct.sv** %incdec.ptr114, align 8, !tbaa !0
  br i1 %cmp16, label %cond.end120, label %cond.true116

cond.true116:                                     ; preds = %if.end113
  %neg = sub i64 0, %needents.0
  %and118 = and i64 %call78, %neg
  br label %cond.end120

cond.end120:                                      ; preds = %if.end113, %cond.true116
  %cond121 = phi i64 [ %and118, %cond.true116 ], [ 0, %if.end113 ]
  %call122 = call %struct.sv* @Perl_newSViv(i64 %cond121) #5
  %call123 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call122) #5
  %incdec.ptr124 = getelementptr inbounds %struct.sv** %sp.0, i64 2
  store %struct.sv* %call123, %struct.sv** %incdec.ptr124, align 8, !tbaa !0
  %call125 = call %struct.sv* @Perl_newSViv(i64 %needents.0) #5
  %call126 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call125) #5
  %incdec.ptr127 = getelementptr inbounds %struct.sv** %sp.0, i64 3
  store %struct.sv* %call126, %struct.sv** %incdec.ptr127, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr127, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %57 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any128 = getelementptr inbounds %struct.gv* %57, i64 0, i32 0
  %58 = load %struct.xpvgv** %sv_any128, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %58, i64 0, i32 7
  %59 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %59, i64 0, i32 0
  %60 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %call129 = call %struct.sv* @Perl_newSVsv(%struct.sv* %60) #5
  %call130 = call i32 @Perl_call_method(i8* getelementptr inbounds ([9 x i8]* @.str48, i64 0, i64 0), i32 0) #5
  %tobool131 = icmp eq i32 %call130, 0
  br i1 %tobool131, label %if.end136, label %if.then132

if.then132:                                       ; preds = %cond.end120
  %61 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr133 = getelementptr inbounds %struct.sv** %61, i64 -1
  store %struct.sv** %incdec.ptr133, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %62 = load %struct.sv** %61, align 8, !tbaa !0
  %call134 = call %struct.sv* @Perl_newSVsv(%struct.sv* %62) #5
  br label %if.end136

if.end136:                                        ; preds = %cond.end120, %if.then132
  %retval1.0 = phi %struct.sv* [ %call134, %if.then132 ], [ @PL_sv_undef, %cond.end120 ]
  %63 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any137 = getelementptr inbounds %struct.gv* %63, i64 0, i32 0
  %64 = load %struct.xpvgv** %sv_any137, align 8, !tbaa !0
  %xgv_gp138 = getelementptr inbounds %struct.xpvgv* %64, i64 0, i32 7
  %65 = load %struct.gp** %xgv_gp138, align 8, !tbaa !0
  %gp_sv139 = getelementptr inbounds %struct.gp* %65, i64 0, i32 0
  %66 = load %struct.sv** %gp_sv139, align 8, !tbaa !0
  %tobool140 = icmp eq %struct.sv* %66, null
  br i1 %tobool140, label %if.then204, label %cond.false142

cond.false142:                                    ; preds = %if.end136
  %sv_flags146 = getelementptr inbounds %struct.sv* %66, i64 0, i32 2
  %67 = load i32* %sv_flags146, align 4, !tbaa !5
  %and147 = and i32 %67, 262144
  %tobool148 = icmp eq i32 %and147, 0
  br i1 %tobool148, label %cond.false169, label %cond.true149

cond.true149:                                     ; preds = %cond.false142
  %sv_any153 = getelementptr inbounds %struct.sv* %66, i64 0, i32 0
  %68 = load i8** %sv_any153, align 8, !tbaa !0
  %69 = bitcast i8* %68 to %struct.xpv*
  store %struct.xpv* %69, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool154 = icmp eq i8* %68, null
  br i1 %tobool154, label %if.then204, label %land.lhs.true155

land.lhs.true155:                                 ; preds = %cond.true149
  %xpv_cur156 = getelementptr inbounds i8* %68, i64 8
  %70 = bitcast i8* %xpv_cur156 to i64*
  %71 = load i64* %70, align 8, !tbaa !3
  %cmp157 = icmp ugt i64 %71, 1
  br i1 %cmp157, label %if.end208, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %land.lhs.true155
  %tobool161 = icmp eq i64 %71, 0
  br i1 %tobool161, label %if.then204, label %land.lhs.true162

land.lhs.true162:                                 ; preds = %lor.lhs.false159
  %xpv_pv163 = bitcast i8* %68 to i8**
  %72 = load i8** %xpv_pv163, align 8, !tbaa !0
  %73 = load i8* %72, align 1, !tbaa !1
  %cmp165 = icmp eq i8 %73, 48
  br i1 %cmp165, label %if.then204, label %if.end208

cond.false169:                                    ; preds = %cond.false142
  %and174 = and i32 %67, 65536
  %tobool175 = icmp eq i32 %and174, 0
  br i1 %tobool175, label %cond.false183, label %cond.true176

cond.true176:                                     ; preds = %cond.false169
  %sv_any180 = getelementptr inbounds %struct.sv* %66, i64 0, i32 0
  %74 = load i8** %sv_any180, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %74, i64 24
  %75 = bitcast i8* %xiv_iv to i64*
  %76 = load i64* %75, align 8, !tbaa !3
  %cmp181 = icmp eq i64 %76, 0
  br i1 %cmp181, label %if.then204, label %if.end208

cond.false183:                                    ; preds = %cond.false169
  %and188 = and i32 %67, 131072
  %tobool189 = icmp eq i32 %and188, 0
  br i1 %tobool189, label %cond.false197, label %cond.true190

cond.true190:                                     ; preds = %cond.false183
  %sv_any194 = getelementptr inbounds %struct.sv* %66, i64 0, i32 0
  %77 = load i8** %sv_any194, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %77, i64 32
  %78 = bitcast i8* %xnv_nv to double*
  %79 = load double* %78, align 8, !tbaa !6
  %cmp195 = fcmp une double %79, 0.000000e+00
  br i1 %cmp195, label %if.end208, label %if.then204

cond.false197:                                    ; preds = %cond.false183
  %call201 = call signext i8 @Perl_sv_2bool(%struct.sv* %66) #5
  %tobool203 = icmp eq i8 %call201, 0
  br i1 %tobool203, label %cond.false197.if.then204_crit_edge, label %if.end208

cond.false197.if.then204_crit_edge:               ; preds = %cond.false197
  %.pre441 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  br label %if.then204

if.then204:                                       ; preds = %land.lhs.true162, %lor.lhs.false159, %cond.true149, %cond.false197.if.then204_crit_edge, %cond.true176, %if.end136, %cond.true190
  %80 = phi %struct.gv* [ %.pre441, %cond.false197.if.then204_crit_edge ], [ %63, %cond.true176 ], [ %63, %if.end136 ], [ %63, %cond.true190 ], [ %63, %cond.true149 ], [ %63, %lor.lhs.false159 ], [ %63, %land.lhs.true162 ]
  %sv_any205 = getelementptr inbounds %struct.gv* %80, i64 0, i32 0
  %81 = load %struct.xpvgv** %sv_any205, align 8, !tbaa !0
  %xgv_gp206 = getelementptr inbounds %struct.xpvgv* %81, i64 0, i32 7
  %82 = load %struct.gp** %xgv_gp206, align 8, !tbaa !0
  %gp_sv207 = getelementptr inbounds %struct.gp* %82, i64 0, i32 0
  %83 = load %struct.sv** %gp_sv207, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %83, %struct.sv* %call129, i32 2) #5
  br label %if.end208

if.end208:                                        ; preds = %land.lhs.true162, %cond.true176, %cond.false197, %land.lhs.true155, %if.then204, %cond.true190
  call void @Perl_sv_free(%struct.sv* %call129) #5
  %84 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %85 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev210 = getelementptr inbounds %struct.stackinfo* %85, i64 0, i32 5
  %86 = load %struct.stackinfo** %si_prev210, align 8, !tbaa !0
  %tobool211 = icmp eq %struct.stackinfo* %86, null
  br i1 %tobool211, label %if.then212, label %if.end240

if.then212:                                       ; preds = %if.end208
  %87 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool213 = icmp eq %struct.gv* %87, null
  br i1 %tobool213, label %cond.false235, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %if.then212
  %sv_flags215 = getelementptr inbounds %struct.gv* %87, i64 0, i32 2
  %88 = load i32* %sv_flags215, align 4, !tbaa !5
  %and216 = and i32 %88, 255
  %cmp217 = icmp eq i32 %and216, 13
  br i1 %cmp217, label %land.lhs.true219, label %cond.false235

land.lhs.true219:                                 ; preds = %land.lhs.true214
  %sv_any220 = getelementptr inbounds %struct.gv* %87, i64 0, i32 0
  %89 = load %struct.xpvgv** %sv_any220, align 8, !tbaa !0
  %xgv_gp221 = getelementptr inbounds %struct.xpvgv* %89, i64 0, i32 7
  %90 = load %struct.gp** %xgv_gp221, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %90, i64 0, i32 2
  %91 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool222 = icmp eq %struct.io* %91, null
  br i1 %tobool222, label %cond.false235, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %land.lhs.true219
  %sv_any227 = getelementptr inbounds %struct.io* %91, i64 0, i32 0
  %92 = load %struct.xpvio** %sv_any227, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %92, i64 0, i32 8
  %93 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool228 = icmp eq %struct._PerlIO** %93, null
  br i1 %tobool228, label %cond.false235, label %cond.end237

cond.false235:                                    ; preds = %land.lhs.true223, %land.lhs.true219, %if.then212, %land.lhs.true214
  %call236 = call %struct._PerlIO** @Perl_PerlIO_stderr() #5
  br label %cond.end237

cond.end237:                                      ; preds = %land.lhs.true223, %cond.false235
  %cond238 = phi %struct._PerlIO** [ %call236, %cond.false235 ], [ %93, %land.lhs.true223 ]
  %call239 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond238, i8* getelementptr inbounds ([17 x i8]* @.str45, i64 0, i64 0)) #5
  call void @Perl_my_exit(i32 1) #5
  br label %if.end240

if.end240:                                        ; preds = %if.end208, %cond.end237
  %94 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast241 = ptrtoint %struct.sv** %84 to i64
  %sub.ptr.rhs.cast242 = ptrtoint %struct.sv** %94 to i64
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
  %sub.ptr.div244 = ashr exact i64 %sub.ptr.sub243, 3
  %95 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any245 = getelementptr inbounds %struct.av* %95, i64 0, i32 0
  %96 = load %struct.xpvav** %sv_any245, align 8, !tbaa !0
  %xav_fill246 = getelementptr inbounds %struct.xpvav* %96, i64 0, i32 1
  store i64 %sub.ptr.div244, i64* %xav_fill246, align 8, !tbaa !3
  %si_stack247 = getelementptr inbounds %struct.stackinfo* %86, i64 0, i32 0
  %97 = load %struct.av** %si_stack247, align 8, !tbaa !0
  %sv_any248 = getelementptr inbounds %struct.av* %97, i64 0, i32 0
  %98 = load %struct.xpvav** %sv_any248, align 8, !tbaa !0
  %xav_array249 = getelementptr inbounds %struct.xpvav* %98, i64 0, i32 0
  %99 = load i8** %xav_array249, align 8, !tbaa !0
  %100 = bitcast i8* %99 to %struct.sv**
  store %struct.sv** %100, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %101 = load %struct.av** %si_stack247, align 8, !tbaa !0
  %sv_any251 = getelementptr inbounds %struct.av* %101, i64 0, i32 0
  %102 = load %struct.xpvav** %sv_any251, align 8, !tbaa !0
  %xav_max252 = getelementptr inbounds %struct.xpvav* %102, i64 0, i32 2
  %103 = load i64* %xav_max252, align 8, !tbaa !3
  %add.ptr253 = getelementptr inbounds %struct.sv** %100, i64 %103
  store %struct.sv** %add.ptr253, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %104 = load %struct.av** %si_stack247, align 8, !tbaa !0
  %sv_any255 = getelementptr inbounds %struct.av* %104, i64 0, i32 0
  %105 = load %struct.xpvav** %sv_any255, align 8, !tbaa !0
  %xav_fill256 = getelementptr inbounds %struct.xpvav* %105, i64 0, i32 1
  %106 = load i64* %xav_fill256, align 8, !tbaa !3
  %add.ptr257 = getelementptr inbounds %struct.sv** %100, i64 %106
  store %struct.sv** %add.ptr257, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %107 = load %struct.av** %si_stack247, align 8, !tbaa !0
  store %struct.av* %107, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %86, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %108 = load i32* @PL_tmps_ix, align 4, !tbaa !5
  %109 = load i32* @PL_tmps_floor, align 4, !tbaa !5
  %cmp259 = icmp sgt i32 %108, %109
  br i1 %cmp259, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.end240
  call void @Perl_free_tmps() #5
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %if.end240
  call void @Perl_pop_scope() #5
  %110 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp263 = icmp eq %struct.cop* %110, @PL_compiling
  br i1 %cmp263, label %if.then265, label %if.end268

if.then265:                                       ; preds = %if.end262
  %111 = load i32* @PL_hints, align 4, !tbaa !5
  %conv267 = trunc i32 %111 to i8
  %112 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %112, i64 0, i32 7
  store i8 %conv267, i8* %op_private, align 1, !tbaa !1
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %if.end262
  %call269 = call %struct.sv** @Perl_hv_store(%struct.hv* %2, i8* %ptr.addr.0, i32 %sub, %struct.sv* %retval1.0, i32 0) #5
  %tobool270 = icmp eq %struct.sv** %call269, null
  br i1 %tobool270, label %if.then289, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %if.end268
  %113 = load %struct.sv** %call269, align 8, !tbaa !0
  %sv_flags272 = getelementptr inbounds %struct.sv* %113, i64 0, i32 2
  %114 = load i32* %sv_flags272, align 4, !tbaa !5
  %and273 = and i32 %114, 262144
  %cmp274 = icmp eq i32 %and273, 0
  br i1 %cmp274, label %cond.false281, label %cond.true276

cond.true276:                                     ; preds = %lor.lhs.false271
  %sv_any277 = getelementptr inbounds %struct.sv* %113, i64 0, i32 0
  %115 = load i8** %sv_any277, align 8, !tbaa !0
  %xpv_cur278 = getelementptr inbounds i8* %115, i64 8
  %116 = bitcast i8* %xpv_cur278 to i64*
  %117 = load i64* %116, align 8, !tbaa !3
  store i64 %117, i64* %slen, align 8, !tbaa !3
  %xpv_pv280 = bitcast i8* %115 to i8**
  %118 = load i8** %xpv_pv280, align 8, !tbaa !0
  br label %cond.end283

cond.false281:                                    ; preds = %lor.lhs.false271
  %call282 = call i8* @Perl_sv_2pv_flags(%struct.sv* %113, i64* %slen, i32 2) #5
  br label %cond.end283

cond.end283:                                      ; preds = %cond.false281, %cond.true276
  %cond284 = phi i8* [ %118, %cond.true276 ], [ %call282, %cond.false281 ]
  %tobool285 = icmp eq i8* %cond284, null
  br i1 %tobool285, label %if.then289, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %cond.end283
  %119 = load i64* %slen, align 8, !tbaa !3
  %shl = shl i64 %119, 3
  %cmp287 = icmp ult i64 %shl, %needents.0
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %cond.end283, %if.end268, %lor.lhs.false286
  %tmps.1 = phi i8* [ %cond284, %lor.lhs.false286 ], [ null, %cond.end283 ], [ null, %if.end268 ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([47 x i8]* @.str49, i64 0, i64 0)) #5
  %.pre440 = load i64* %slen, align 8, !tbaa !3
  br label %if.end291

if.end291:                                        ; preds = %cond.true, %lor.lhs.false286, %if.then289
  %120 = phi i64 [ %15, %cond.true ], [ %.pre440, %if.then289 ], [ %119, %lor.lhs.false286 ]
  %tmps.2 = phi i8* [ %16, %cond.true ], [ %tmps.1, %if.then289 ], [ %cond284, %lor.lhs.false286 ]
  store %struct.hv* %2, %struct.hv** @PL_last_swash_hv, align 8, !tbaa !0
  store i32 %sub, i32* @PL_last_swash_klen, align 4, !tbaa !5
  store i8* %tmps.2, i8** @PL_last_swash_tmps, align 8, !tbaa !0
  store i64 %120, i64* @PL_last_swash_slen, align 8, !tbaa !3
  br i1 %cmp16, label %if.end296, label %if.then293

if.then293:                                       ; preds = %if.end291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([10 x i8]* @PL_last_swash_key, i64 0, i64 0), i8* %ptr.addr.0, i64 %idxprom13, i32 1, i1 false)
  br label %if.end296

if.end296:                                        ; preds = %if.end291, %if.then293, %if.then36
  %121 = phi i64 [ %120, %if.then293 ], [ %120, %if.end291 ], [ %10, %if.then36 ]
  %tmps.3 = phi i8* [ %tmps.2, %if.then293 ], [ %tmps.2, %if.end291 ], [ %9, %if.then36 ]
  %shl297 = shl i64 %121, 3
  %div.v = select i1 %cmp16, i64 7, i64 6
  %div = lshr i64 %shl297, %div.v
  %conv298 = trunc i64 %div to i32
  switch i32 %conv298, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb309
    i32 16, label %sw.bb313
    i32 32, label %sw.bb324
  ]

sw.bb:                                            ; preds = %if.end296
  %and299 = and i32 %off.0, 7
  %shl300 = shl i32 1, %and299
  %shr301 = lshr i32 %off.0, 3
  %idxprom302 = zext i32 %shr301 to i64
  %arrayidx303 = getelementptr inbounds i8* %tmps.3, i64 %idxprom302
  %122 = load i8* %arrayidx303, align 1, !tbaa !1
  %conv304 = zext i8 %122 to i32
  %and305 = and i32 %conv304, %shl300
  %cmp306 = icmp ne i32 %and305, 0
  %conv308 = zext i1 %cmp306 to i64
  br label %return

sw.bb309:                                         ; preds = %if.end296
  %idxprom310 = zext i32 %off.0 to i64
  %arrayidx311 = getelementptr inbounds i8* %tmps.3, i64 %idxprom310
  %123 = load i8* %arrayidx311, align 1, !tbaa !1
  %conv312 = zext i8 %123 to i64
  br label %return

sw.bb313:                                         ; preds = %if.end296
  %shl314 = shl nuw nsw i32 %off.0, 1
  %idxprom315 = zext i32 %shl314 to i64
  %arrayidx316 = getelementptr inbounds i8* %tmps.3, i64 %idxprom315
  %124 = load i8* %arrayidx316, align 1, !tbaa !1
  %conv317 = zext i8 %124 to i64
  %shl318 = shl nuw nsw i64 %conv317, 8
  %add434 = or i32 %shl314, 1
  %idxprom319 = zext i32 %add434 to i64
  %arrayidx320 = getelementptr inbounds i8* %tmps.3, i64 %idxprom319
  %125 = load i8* %arrayidx320, align 1, !tbaa !1
  %conv321 = zext i8 %125 to i64
  %add322 = or i64 %shl318, %conv321
  br label %return

sw.bb324:                                         ; preds = %if.end296
  %shl325 = shl nuw nsw i32 %off.0, 2
  %idxprom326 = zext i32 %shl325 to i64
  %arrayidx327 = getelementptr inbounds i8* %tmps.3, i64 %idxprom326
  %126 = load i8* %arrayidx327, align 1, !tbaa !1
  %conv328 = zext i8 %126 to i32
  %shl329 = shl nuw i32 %conv328, 24
  %add330431 = or i32 %shl325, 1
  %idxprom331 = zext i32 %add330431 to i64
  %arrayidx332 = getelementptr inbounds i8* %tmps.3, i64 %idxprom331
  %127 = load i8* %arrayidx332, align 1, !tbaa !1
  %conv333 = zext i8 %127 to i32
  %shl334 = shl nuw nsw i32 %conv333, 16
  %add335 = or i32 %shl334, %shl329
  %add336432 = or i32 %shl325, 2
  %idxprom337 = zext i32 %add336432 to i64
  %arrayidx338 = getelementptr inbounds i8* %tmps.3, i64 %idxprom337
  %128 = load i8* %arrayidx338, align 1, !tbaa !1
  %conv339 = zext i8 %128 to i32
  %shl340 = shl nuw nsw i32 %conv339, 8
  %add341 = or i32 %add335, %shl340
  %add342433 = or i32 %shl325, 3
  %idxprom343 = zext i32 %add342433 to i64
  %arrayidx344 = getelementptr inbounds i8* %tmps.3, i64 %idxprom343
  %129 = load i8* %arrayidx344, align 1, !tbaa !1
  %conv345 = zext i8 %129 to i32
  %add346 = or i32 %add341, %conv345
  %conv347 = sext i32 %add346 to i64
  br label %return

sw.epilog:                                        ; preds = %if.end296
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([19 x i8]* @.str50, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb324, %sw.bb313, %sw.bb309, %sw.bb
  %retval.0 = phi i64 [ 0, %sw.epilog ], [ %conv347, %sw.bb324 ], [ %add322, %sw.bb313 ], [ %conv312, %sw.bb309 ], [ %conv308, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_idcont(i8* %p) #0 {
entry:
  %0 = load i8* %p, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 95
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.sv** @PL_utf8_idcont, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.sv* %1, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call6, %struct.sv** @PL_utf8_idcont, align 8, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  %2 = phi %struct.sv* [ %1, %if.end3 ], [ %call6, %if.then5 ]
  %call8 = tail call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %p, i8 signext 1) #6
  %cmp9 = icmp ne i64 %call8, 0
  %conv11 = zext i1 %cmp9 to i8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i8 [ %conv11, %if.end7 ], [ 1, %entry ], [ 0, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_is_utf8_mark(i8* %p) #0 {
entry:
  %call = tail call i64 @Perl_is_utf8_char(i8* %p) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.sv** @PL_utf8_mark, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), %struct.sv* @PL_sv_undef, i32 0, i32 0) #6
  store %struct.sv* %call3, %struct.sv** @PL_utf8_mark, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %1 = phi %struct.sv* [ %0, %if.end ], [ %call3, %if.then2 ]
  %call5 = tail call i64 @Perl_swash_fetch(%struct.sv* %1, i8* %p, i8 signext 1) #6
  %cmp = icmp ne i64 %call5, 0
  %conv6 = zext i1 %cmp to i8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_to_utf8_case(i8* %p, i8* %ustrp, i64* %lenp, %struct.sv** nocapture %swashp, i8* %normal, i8* %special) #0 {
entry:
  %tmpbuf = alloca [7 x i8], align 1
  %len = alloca i64, align 8
  store i64 0, i64* %len, align 8, !tbaa !3
  %call = call i64 @Perl_utf8_to_uvchr(i8* %p, i64* null) #6
  %arraydecay = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %call.i = call i8* @Perl_uvuni_to_utf8_flags(i8* %arraydecay, i64 %call, i64 0) #5
  %0 = load %struct.sv** %swashp, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* %normal, %struct.sv* @PL_sv_undef, i32 4, i32 0) #6
  store %struct.sv* %call2, %struct.sv** %swashp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool3 = icmp eq i8* %special, null
  br i1 %tobool3, label %if.end55thread-pre-split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %cmp = icmp eq i64 %call, 223
  %cmp4 = icmp ugt i64 %call, 255
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then5, label %if.end55thread-pre-split

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call %struct.hv* @Perl_get_hv(i8* %special, i32 0) #5
  %tobool7 = icmp eq %struct.hv* %call6, null
  br i1 %tobool7, label %if.end55thread-pre-split, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.then5
  %cmp10 = icmp ult i64 %call, 128
  br i1 %cmp10, label %cond.end36, label %cond.false

cond.false:                                       ; preds = %land.lhs.true8
  %cmp11 = icmp ult i64 %call, 2048
  br i1 %cmp11, label %cond.end36, label %cond.false13

cond.false13:                                     ; preds = %cond.false
  %cmp14 = icmp ult i64 %call, 65536
  br i1 %cmp14, label %cond.end36, label %cond.false16

cond.false16:                                     ; preds = %cond.false13
  %cmp17 = icmp ult i64 %call, 2097152
  br i1 %cmp17, label %cond.end36, label %cond.false19

cond.false19:                                     ; preds = %cond.false16
  %cmp20 = icmp ult i64 %call, 67108864
  br i1 %cmp20, label %cond.end36, label %cond.false22

cond.false22:                                     ; preds = %cond.false19
  %cmp23 = icmp ult i64 %call, 2147483648
  br i1 %cmp23, label %cond.end36, label %cond.false25

cond.false25:                                     ; preds = %cond.false22
  %cmp26 = icmp ult i64 %call, 68719476736
  %cond = select i1 %cmp26, i32 7, i32 13
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false, %cond.false16, %cond.false25, %cond.false22, %cond.false19, %cond.false13, %land.lhs.true8
  %cond37 = phi i32 [ 1, %land.lhs.true8 ], [ 2, %cond.false ], [ 3, %cond.false13 ], [ 4, %cond.false16 ], [ 5, %cond.false19 ], [ %cond, %cond.false25 ], [ 6, %cond.false22 ]
  %call38 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %call6, i8* %arraydecay, i32 %cond37, i32 0) #5
  %tobool39 = icmp eq %struct.sv** %call38, null
  br i1 %tobool39, label %if.end55thread-pre-split, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %cond.end36
  %1 = load %struct.sv** %call38, align 8, !tbaa !0
  %tobool41 = icmp eq %struct.sv* %1, null
  br i1 %tobool41, label %if.end55thread-pre-split, label %if.then42

if.then42:                                        ; preds = %land.lhs.true40
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !5
  %and = and i32 %2, 262144
  %cmp43 = icmp eq i32 %and, 0
  br i1 %cmp43, label %cond.false46, label %cond.true44

cond.true44:                                      ; preds = %if.then42
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !3
  store i64 %5, i64* %len, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %3 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end48

cond.false46:                                     ; preds = %if.then42
  %call47 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %len, i32 2) #5
  %.pre = load i64* %len, align 8, !tbaa !3
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false46, %cond.true44
  %7 = phi i64 [ %5, %cond.true44 ], [ %.pre, %cond.false46 ]
  %cond49 = phi i8* [ %6, %cond.true44 ], [ %call47, %cond.false46 ]
  %cmp50 = icmp eq i64 %7, 1
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %cond.end48
  %8 = load i8* %cond49, align 1, !tbaa !1
  %conv = zext i8 %8 to i64
  %call.i111 = call i8* @Perl_uvuni_to_utf8_flags(i8* %ustrp, i64 %conv, i64 0) #5
  %sub.ptr.lhs.cast = ptrtoint i8* %call.i111 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %ustrp to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8, !tbaa !3
  br label %if.end55

if.else:                                          ; preds = %cond.end48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ustrp, i8* %cond49, i64 %7, i32 1, i1 false)
  br label %if.end55thread-pre-split

if.end55thread-pre-split:                         ; preds = %land.lhs.true40, %cond.end36, %if.then5, %land.lhs.true, %if.end, %if.else
  %.pr = load i64* %len, align 8, !tbaa !3
  br label %if.end55

if.end55:                                         ; preds = %if.end55thread-pre-split, %if.then51
  %9 = phi i64 [ %.pr, %if.end55thread-pre-split ], [ %sub.ptr.sub, %if.then51 ]
  %tobool56 = icmp eq i64 %9, 0
  br i1 %tobool56, label %land.lhs.true57, label %if.end76

land.lhs.true57:                                  ; preds = %if.end55
  %10 = load %struct.sv** %swashp, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.sv* %10, null
  br i1 %tobool58, label %if.then71, label %if.then59

if.then59:                                        ; preds = %land.lhs.true57
  %call61 = call i64 @Perl_swash_fetch(%struct.sv* %10, i8* %arraydecay, i8 signext 1) #6
  %tobool62 = icmp eq i64 %call61, 0
  br i1 %tobool62, label %if.then59.if.end69thread-pre-split_crit_edge, label %if.then63

if.then59.if.end69thread-pre-split_crit_edge:     ; preds = %if.then59
  %.pr114.pre = load i64* %len, align 8, !tbaa !3
  br label %if.end69

if.then63:                                        ; preds = %if.then59
  %call.i112 = call i8* @Perl_uvuni_to_utf8_flags(i8* %ustrp, i64 %call61, i64 0) #5
  %sub.ptr.lhs.cast65 = ptrtoint i8* %call.i112 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %ustrp to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  store i64 %sub.ptr.sub67, i64* %len, align 8, !tbaa !3
  br label %if.end69

if.end69:                                         ; preds = %if.then59.if.end69thread-pre-split_crit_edge, %if.then63
  %11 = phi i64 [ %sub.ptr.sub67, %if.then63 ], [ %.pr114.pre, %if.then59.if.end69thread-pre-split_crit_edge ]
  %tobool70 = icmp eq i64 %11, 0
  br i1 %tobool70, label %if.then71, label %if.end76

if.then71:                                        ; preds = %land.lhs.true57, %if.end69
  %call.i113 = call i8* @Perl_uvuni_to_utf8_flags(i8* %ustrp, i64 %call, i64 0) #5
  %sub.ptr.lhs.cast73 = ptrtoint i8* %call.i113 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %ustrp to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  store i64 %sub.ptr.sub75, i64* %len, align 8, !tbaa !3
  br label %if.end76

if.end76:                                         ; preds = %if.end55, %if.end69, %if.then71
  %12 = phi i64 [ %11, %if.end69 ], [ %sub.ptr.sub75, %if.then71 ], [ %9, %if.end55 ]
  %tobool77 = icmp eq i64* %lenp, null
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end76
  store i64 %12, i64* %lenp, align 8, !tbaa !3
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %if.then78
  %tobool80 = icmp eq i64 %12, 0
  br i1 %tobool80, label %cond.end84, label %cond.true81

cond.true81:                                      ; preds = %if.end79
  %call82 = call i64 @Perl_utf8_to_uvchr(i8* %ustrp, i64* null) #6
  br label %cond.end84

cond.end84:                                       ; preds = %if.end79, %cond.true81
  %cond85 = phi i64 [ %call82, %cond.true81 ], [ 0, %if.end79 ]
  ret i64 %cond85
}

; Function Attrs: optsize
declare %struct.hv* @Perl_get_hv(i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpvn(i8*, i32, i32) #1

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_I32(i32*) #1

; Function Attrs: optsize
declare void @Perl_save_re_context() #1

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmeth(%struct.hv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_uvchr_to_utf8(i8* %d, i64 %uv) #0 {
entry:
  %call = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %d, i64 %uv, i64 0) #6
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_uvchr_to_utf8_flags(i8* %d, i64 %uv, i64 %flags) #0 {
entry:
  %call = tail call i8* @Perl_uvuni_to_utf8_flags(i8* %d, i64 %uv, i64 %flags) #6
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_utf8n_to_uvchr(i8* %s, i64 %curlen, i64* %retlen, i32 %flags) #0 {
entry:
  %call = tail call i64 @Perl_utf8n_to_uvuni(i8* %s, i64 %curlen, i64* %retlen, i32 %flags) #6
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_pv_uni_display(%struct.sv* %dsv, i8* %spv, i64 %len, i64 %pvlim, i64 %flags) #0 {
entry:
  tail call void @Perl_sv_setpvn(%struct.sv* %dsv, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i64 0) #5
  %add.ptr = getelementptr inbounds i8* %spv, i64 %len
  %cmp89 = icmp sgt i64 %len, 0
  br i1 %cmp89, label %for.body.lr.ph, label %entry.if.end48.loopexit_crit_edge

entry.if.end48.loopexit_crit_edge:                ; preds = %entry
  %sv_any49.pre.pre = getelementptr inbounds %struct.sv* %dsv, i64 0, i32 0
  br label %if.end48

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i64 %pvlim, 0
  %and8 = and i64 %flags, 2
  %tobool9 = icmp eq i64 %and8, 0
  %and24 = and i64 %flags, 1
  %tobool25 = icmp eq i64 %and24, 0
  %sv_any = getelementptr inbounds %struct.sv* %dsv, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %s.090 = phi i8* [ %spv, %for.body.lr.ph ], [ %add.ptr45, %for.inc ]
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %0, i64 8
  %1 = bitcast i8* %xpv_cur to i64*
  %2 = load i64* %1, align 8, !tbaa !3
  %cmp1 = icmp ult i64 %2, %pvlim
  br i1 %cmp1, label %if.end, label %if.then47

if.end:                                           ; preds = %land.lhs.true, %for.body
  %call = tail call i64 @Perl_utf8_to_uvchr(i8* %s.090, i64* null) #6
  %cmp2 = icmp ult i64 %call, 256
  br i1 %cmp2, label %if.then3, label %if.then42

if.then3:                                         ; preds = %if.end
  %conv5 = trunc i64 %call to i32
  br i1 %tobool9, label %land.lhs.true23, label %if.then10

if.then10:                                        ; preds = %if.then3
  %conv11 = and i32 %conv5, 255
  switch i32 %conv11, label %land.lhs.true23 [
    i32 10, label %if.end21.thread82
    i32 13, label %sw.bb12
    i32 9, label %sw.bb13
    i32 12, label %sw.bb14
    i32 7, label %sw.bb15
    i32 92, label %sw.bb16
  ]

sw.bb12:                                          ; preds = %if.then10
  br label %if.end21.thread82

sw.bb13:                                          ; preds = %if.then10
  br label %if.end21.thread82

sw.bb14:                                          ; preds = %if.then10
  br label %if.end21.thread82

sw.bb15:                                          ; preds = %if.then10
  br label %if.end21.thread82

sw.bb16:                                          ; preds = %if.then10
  br label %if.end21.thread82

if.end21.thread82:                                ; preds = %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %if.then10
  %ok.0.ph.ph = phi i32 [ 92, %sw.bb16 ], [ 97, %sw.bb15 ], [ 102, %sw.bb14 ], [ 116, %sw.bb13 ], [ 114, %sw.bb12 ], [ 110, %if.then10 ]
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %dsv, i8* getelementptr inbounds ([4 x i8]* @.str51, i64 0, i64 0), i32 %ok.0.ph.ph) #5
  br label %for.inc

land.lhs.true23:                                  ; preds = %if.then10, %if.then3
  br i1 %tobool25, label %if.then42, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %conv27 = and i32 %conv5, 255
  %conv27.off = add i32 %conv27, -33
  %3 = icmp ult i32 %conv27.off, 94
  %cmp35 = icmp eq i32 %conv27, 32
  %or.cond74 = or i1 %3, %cmp35
  br i1 %or.cond74, label %if.then37, label %if.then42

if.then37:                                        ; preds = %land.lhs.true26
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0), i32 %conv27) #5
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true23, %if.end, %land.lhs.true26
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %dsv, i8* getelementptr inbounds ([8 x i8]* @.str53, i64 0, i64 0), i64 %call) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end21.thread82, %if.then37, %if.then42
  %4 = load i8* %s.090, align 1, !tbaa !1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %idx.ext = zext i8 %5 to i64
  %add.ptr45 = getelementptr inbounds i8* %s.090, i64 %idx.ext
  %cmp = icmp ult i8* %add.ptr45, %add.ptr
  br i1 %cmp, label %for.body, label %if.end48

if.then47:                                        ; preds = %land.lhs.true
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i64 3, i32 2) #5
  br label %if.end48

if.end48:                                         ; preds = %entry.if.end48.loopexit_crit_edge, %for.inc, %if.then47
  %sv_any49.pre-phi = phi i8** [ %sv_any, %if.then47 ], [ %sv_any49.pre.pre, %entry.if.end48.loopexit_crit_edge ], [ %sv_any, %for.inc ]
  %6 = load i8** %sv_any49.pre-phi, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %6 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  ret i8* %7
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_sv_uni_display(%struct.sv* %dsv, %struct.sv* nocapture %ssv, i64 %pvlim, i64 %flags) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %ssv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %0, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !3
  %call = tail call i8* @Perl_pv_uni_display(%struct.sv* %dsv, i8* %1, i64 %3, i64 %pvlim, i64 %flags) #6
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_ibcmp_utf8(i8* %s1, i8** %pe1, i64 %l1, i8 signext %u1, i8* %s2, i8** %pe2, i64 %l2, i8 signext %u2) #0 {
entry:
  %foldbuf1 = alloca [7 x i8], align 1
  %foldbuf2 = alloca [7 x i8], align 1
  %natbuf = alloca [2 x i8], align 1
  %foldlen1 = alloca i64, align 8
  %foldlen2 = alloca i64, align 8
  %tobool = icmp ne i8** %pe1, null
  br i1 %tobool, label %if.end, label %if.then3

if.end:                                           ; preds = %entry
  %0 = load i8** %pe1, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %tobool1 = icmp eq i64 %l1, 0
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp ugt i64 %sub.ptr.sub, %l1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry, %land.lhs.true, %if.end
  %cmp262 = phi i1 [ false, %land.lhs.true ], [ true, %if.end ], [ true, %entry ]
  %e1.0260 = phi i8* [ %0, %land.lhs.true ], [ null, %if.end ], [ null, %entry ]
  %add.ptr = getelementptr inbounds i8* %s1, i64 %l1
  br label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.then3, %land.lhs.true
  %cmp261 = phi i1 [ %cmp262, %if.then3 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ]
  %e1.0259 = phi i8* [ %e1.0260, %if.then3 ], [ %0, %land.lhs.true ], [ %0, %lor.lhs.false ]
  %f1.0 = phi i8* [ %add.ptr, %if.then3 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false ]
  %tobool5 = icmp ne i8** %pe2, null
  br i1 %tobool5, label %if.end7, label %if.then16

if.end7:                                          ; preds = %if.end4
  %1 = load i8** %pe2, align 8, !tbaa !0
  %cmp8 = icmp eq i8* %1, null
  br i1 %cmp8, label %if.then16, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %tobool10 = icmp eq i64 %l2, 0
  br i1 %tobool10, label %if.end18, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %sub.ptr.lhs.cast12 = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %s2 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %cmp15 = icmp ugt i64 %sub.ptr.sub14, %l2
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end4, %land.lhs.true11, %if.end7
  %cmp8267 = phi i1 [ false, %land.lhs.true11 ], [ true, %if.end7 ], [ true, %if.end4 ]
  %e2.0265 = phi i8* [ %1, %land.lhs.true11 ], [ null, %if.end7 ], [ null, %if.end4 ]
  %add.ptr17 = getelementptr inbounds i8* %s2, i64 %l2
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false9, %if.then16, %land.lhs.true11
  %cmp8266 = phi i1 [ %cmp8267, %if.then16 ], [ false, %land.lhs.true11 ], [ false, %lor.lhs.false9 ]
  %e2.0264 = phi i8* [ %e2.0265, %if.then16 ], [ %1, %land.lhs.true11 ], [ %1, %lor.lhs.false9 ]
  %f2.0 = phi i8* [ %add.ptr17, %if.then16 ], [ null, %land.lhs.true11 ], [ null, %lor.lhs.false9 ]
  %cmp21 = icmp eq i8* %f1.0, null
  %or.cond = and i1 %cmp261, %cmp21
  br i1 %or.cond, label %return, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end18
  %cmp25 = icmp eq i8* %f2.0, null
  %or.cond245269 = or i1 %cmp8266, %cmp21
  %or.cond268 = and i1 %or.cond245269, %cmp25
  br i1 %or.cond268, label %return, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false22
  %tobool32 = icmp ne i8 %u1, 0
  %tobool32.not = xor i1 %tobool32, true
  %tobool34 = icmp eq i8 %u2, 0
  %or.cond247 = or i1 %tobool34, %tobool32.not
  br i1 %or.cond247, label %if.then35, label %while.cond.preheader

if.then35:                                        ; preds = %if.end31
  %arrayidx = getelementptr inbounds [2 x i8]* %natbuf, i64 0, i64 1
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then35, %if.end31
  %arraydecay = getelementptr inbounds [7 x i8]* %foldbuf1, i64 0, i64 0
  %arrayidx54 = getelementptr inbounds [2 x i8]* %natbuf, i64 0, i64 0
  %arraydecay70 = getelementptr inbounds [7 x i8]* %foldbuf2, i64 0, i64 0
  %tobool126 = icmp eq i8 %u1, 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.preheader, %cond.end143
  %p1.0.ph = phi i8* [ %p1.1, %cond.end143 ], [ %s1, %while.cond.preheader ]
  %p2.0.ph = phi i8* [ %add.ptr146, %cond.end143 ], [ %s2, %while.cond.preheader ]
  %q1.0.ph = phi i8* [ %q1.2.lcssa, %cond.end143 ], [ null, %while.cond.preheader ]
  %q2.0.ph = phi i8* [ %q2.1.lcssa, %cond.end143 ], [ null, %while.cond.preheader ]
  %n1.0.ph = phi i64 [ %n1.2.lcssa, %cond.end143 ], [ 0, %while.cond.preheader ]
  %n2.0.ph = phi i64 [ %n2.1.lcssa, %cond.end143 ], [ 0, %while.cond.preheader ]
  %cmp47 = icmp ult i8* %p2.0.ph, %e2.0264
  %or.cond250 = or i1 %cmp8266, %cmp47
  %cmp49 = icmp ult i8* %p2.0.ph, %f2.0
  %or.cond251 = or i1 %cmp25, %cmp49
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end132
  %p1.0 = phi i8* [ %p1.1, %if.end132 ], [ %p1.0.ph, %while.cond.outer ]
  %q1.0 = phi i8* [ %q1.2.lcssa, %if.end132 ], [ %q1.0.ph, %while.cond.outer ]
  %q2.0 = phi i8* [ %q2.1.lcssa, %if.end132 ], [ %q2.0.ph, %while.cond.outer ]
  %n1.0 = phi i64 [ %n1.2.lcssa, %if.end132 ], [ %n1.0.ph, %while.cond.outer ]
  %n2.0 = phi i64 [ %n2.1.lcssa, %if.end132 ], [ %n2.0.ph, %while.cond.outer ]
  %cmp39 = icmp ult i8* %p1.0, %e1.0259
  %or.cond248 = or i1 %cmp261, %cmp39
  br i1 %or.cond248, label %land.lhs.true40, label %while.end148

land.lhs.true40:                                  ; preds = %while.cond
  %cmp43 = icmp ult i8* %p1.0, %f1.0
  %or.cond249 = or i1 %cmp21, %cmp43
  %brmerge.demorgan = and i1 %or.cond249, %or.cond250
  %brmerge296.demorgan = and i1 %brmerge.demorgan, %or.cond251
  br i1 %brmerge296.demorgan, label %while.body, label %while.end148

while.body:                                       ; preds = %land.lhs.true40
  %cmp50 = icmp eq i64 %n1.0, 0
  br i1 %cmp50, label %if.then51, label %if.end60

if.then51:                                        ; preds = %while.body
  br i1 %tobool32, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.then51
  %call.i = call i64 @Perl_to_utf8_case(i8* %p1.0, i8* %arraydecay, i64* %foldlen1, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0)) #5
  br label %if.end58

if.else:                                          ; preds = %if.then51
  %2 = load i8* %p1.0, align 1, !tbaa !1
  store i8 %2, i8* %arrayidx54, align 1, !tbaa !1
  %call.i255 = call i64 @Perl_to_utf8_case(i8* %arrayidx54, i8* %arraydecay, i64* %foldlen1, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0)) #5
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then53
  %3 = load i64* %foldlen1, align 8, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %while.body
  %q1.1 = phi i8* [ %arraydecay, %if.end58 ], [ %q1.0, %while.body ]
  %n1.1 = phi i64 [ %3, %if.end58 ], [ %n1.0, %while.body ]
  %cmp61 = icmp eq i64 %n2.0, 0
  br i1 %cmp61, label %if.then62, label %while.cond75.preheader

if.then62:                                        ; preds = %if.end60
  br i1 %tobool34, label %if.else67, label %if.then64

if.then64:                                        ; preds = %if.then62
  %call.i256 = call i64 @Perl_to_utf8_case(i8* %p2.0.ph, i8* %arraydecay70, i64* %foldlen2, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0)) #5
  br label %if.end72

if.else67:                                        ; preds = %if.then62
  %4 = load i8* %p2.0.ph, align 1, !tbaa !1
  store i8 %4, i8* %arrayidx54, align 1, !tbaa !1
  %call.i257 = call i64 @Perl_to_utf8_case(i8* %arrayidx54, i8* %arraydecay70, i64* %foldlen2, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0)) #5
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %if.then64
  %5 = load i64* %foldlen2, align 8, !tbaa !3
  br label %while.cond75.preheader

while.cond75.preheader:                           ; preds = %if.end72, %if.end60
  %q2.1.ph = phi i8* [ %q2.0, %if.end60 ], [ %arraydecay70, %if.end72 ]
  %n2.1.ph = phi i64 [ %n2.0, %if.end60 ], [ %5, %if.end72 ]
  %tobool76276 = icmp eq i64 %n1.1, 0
  %tobool78277 = icmp eq i64 %n2.1.ph, 0
  %or.cond252278 = or i1 %tobool76276, %tobool78277
  br i1 %or.cond252278, label %while.end, label %while.body80

while.body80:                                     ; preds = %while.cond75.preheader, %if.end105
  %n2.1282 = phi i64 [ %sub116, %if.end105 ], [ %n2.1.ph, %while.cond75.preheader ]
  %n1.2281 = phi i64 [ %sub, %if.end105 ], [ %n1.1, %while.cond75.preheader ]
  %q2.1280 = phi i8* [ %add.ptr121, %if.end105 ], [ %q2.1.ph, %while.cond75.preheader ]
  %q1.2279 = phi i8* [ %add.ptr112, %if.end105 ], [ %q1.1, %while.cond75.preheader ]
  %6 = load i8* %q1.2279, align 1, !tbaa !1
  %idxprom = zext i8 %6 to i64
  %arrayidx81 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %7 = load i8* %arrayidx81, align 1, !tbaa !1
  %8 = load i8* %q2.1280, align 1, !tbaa !1
  %idxprom82 = zext i8 %8 to i64
  %arrayidx83 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom82
  %9 = load i8* %arrayidx83, align 1, !tbaa !1
  %cmp85 = icmp eq i8 %7, %9
  br i1 %cmp85, label %lor.lhs.false87, label %return

lor.lhs.false87:                                  ; preds = %while.body80
  %cmp91 = icmp ne i8 %7, 1
  %cmp96 = icmp eq i8 %6, %8
  %or.cond253 = or i1 %cmp91, %cmp96
  br i1 %or.cond253, label %lor.lhs.false98, label %return

lor.lhs.false98:                                  ; preds = %lor.lhs.false87
  %conv101 = zext i8 %7 to i64
  %call102 = call i32 @memcmp(i8* %q1.2279, i8* %q2.1280, i64 %conv101) #5
  %tobool103 = icmp eq i32 %call102, 0
  br i1 %tobool103, label %if.end105, label %return

if.end105:                                        ; preds = %lor.lhs.false98
  %sub = sub i64 %n1.2281, %conv101
  %add.ptr112 = getelementptr inbounds i8* %q1.2279, i64 %conv101
  %sub116 = sub i64 %n2.1282, %conv101
  %add.ptr121 = getelementptr inbounds i8* %q2.1280, i64 %conv101
  %tobool76 = icmp eq i64 %n1.2281, %conv101
  %tobool78 = icmp eq i64 %n2.1282, %conv101
  %or.cond252 = or i1 %tobool76, %tobool78
  br i1 %or.cond252, label %while.end, label %while.body80

while.end:                                        ; preds = %if.end105, %while.cond75.preheader
  %tobool78.lcssa = phi i1 [ %tobool78277, %while.cond75.preheader ], [ %tobool78, %if.end105 ]
  %tobool76.lcssa = phi i1 [ %tobool76276, %while.cond75.preheader ], [ %tobool76, %if.end105 ]
  %n2.1.lcssa = phi i64 [ %n2.1.ph, %while.cond75.preheader ], [ %sub116, %if.end105 ]
  %n1.2.lcssa = phi i64 [ %n1.1, %while.cond75.preheader ], [ %sub, %if.end105 ]
  %q2.1.lcssa = phi i8* [ %q2.1.ph, %while.cond75.preheader ], [ %add.ptr121, %if.end105 ]
  %q1.2.lcssa = phi i8* [ %q1.1, %while.cond75.preheader ], [ %add.ptr112, %if.end105 ]
  br i1 %tobool76.lcssa, label %if.then124, label %if.end132

if.then124:                                       ; preds = %while.end
  br i1 %tobool126, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then124
  %10 = load i8* %p1.0, align 1, !tbaa !1
  %idxprom127 = zext i8 %10 to i64
  %arrayidx128 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom127
  %11 = load i8* %arrayidx128, align 1, !tbaa !1
  %phitmp244 = zext i8 %11 to i64
  br label %cond.end

cond.end:                                         ; preds = %if.then124, %cond.true
  %cond = phi i64 [ %phitmp244, %cond.true ], [ 1, %if.then124 ]
  %add.ptr131 = getelementptr inbounds i8* %p1.0, i64 %cond
  br label %if.end132

if.end132:                                        ; preds = %cond.end, %while.end
  %p1.1 = phi i8* [ %add.ptr131, %cond.end ], [ %p1.0, %while.end ]
  br i1 %tobool78.lcssa, label %if.then135, label %while.cond

if.then135:                                       ; preds = %if.end132
  br i1 %tobool34, label %cond.end143, label %cond.true138

cond.true138:                                     ; preds = %if.then135
  %12 = load i8* %p2.0.ph, align 1, !tbaa !1
  %idxprom139 = zext i8 %12 to i64
  %arrayidx140 = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom139
  %13 = load i8* %arrayidx140, align 1, !tbaa !1
  %phitmp = zext i8 %13 to i64
  br label %cond.end143

cond.end143:                                      ; preds = %if.then135, %cond.true138
  %cond144 = phi i64 [ %phitmp, %cond.true138 ], [ 1, %if.then135 ]
  %add.ptr146 = getelementptr inbounds i8* %p2.0.ph, i64 %cond144
  br label %while.cond.outer

while.end148:                                     ; preds = %land.lhs.true40, %while.cond
  %cmp152 = icmp eq i8* %p1.0, %f1.0
  %or.cond254 = or i1 %cmp21, %cmp152
  br i1 %or.cond254, label %land.end161, label %return

land.end161:                                      ; preds = %while.end148
  %cmp158 = icmp eq i8* %p2.0.ph, %f2.0
  %.cmp158 = or i1 %cmp25, %cmp158
  br i1 %.cmp158, label %if.then164, label %return

if.then164:                                       ; preds = %land.end161
  br i1 %tobool, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.then164
  store i8* %p1.0, i8** %pe1, align 8, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.then164
  br i1 %tobool5, label %if.then169, label %return

if.then169:                                       ; preds = %if.end167
  store i8* %p2.0.ph, i8** %pe2, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %while.body80, %lor.lhs.false98, %lor.lhs.false87, %land.end161, %if.then169, %if.end167, %while.end148, %if.end18, %lor.lhs.false22
  %retval.0 = phi i32 [ 1, %lor.lhs.false22 ], [ 1, %if.end18 ], [ 0, %if.end167 ], [ 0, %if.then169 ], [ 1, %land.end161 ], [ 1, %while.end148 ], [ 1, %lor.lhs.false87 ], [ 1, %lor.lhs.false98 ], [ 1, %while.body80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"int", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
