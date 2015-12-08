; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Base64.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }
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

@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [44 x i8] c"Usage: MIME::Base64::encode_base64(sv, ...)\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@basis_64 = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str2 = private unnamed_addr constant [39 x i8] c"Usage: MIME::Base64::decode_base64(sv)\00", align 1
@index_64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FE\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@PL_dowarn = external global i8
@.str3 = private unnamed_addr constant [29 x i8] c"Premature end of base64 data\00", align 1
@.str4 = private unnamed_addr constant [33 x i8] c"Premature padding of base64 data\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"Usage: MIME::QuotedPrint::encode_qp(sv, ...)\00", align 1
@PL_Xpv = external global %struct.xpv*
@.str6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"=%02X\00", align 1
@.str9 = private unnamed_addr constant [40 x i8] c"Usage: MIME::QuotedPrint::decode_qp(sv)\00", align 1
@.str10 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Base64.c\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"MIME::Base64::encode_base64\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"MIME::Base64::decode_base64\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::encode_qp\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@.str17 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::decode_qp\00", align 1
@PL_sv_yes = external global %struct.sv

; Function Attrs: nounwind optsize uwtable
define void @XS_MIME__Base64_encode_base64(%struct.cv* nocapture %cv) #0 {
entry:
  %eollen = alloca i64, align 8
  %rlen = alloca i64, align 8
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
  %sub.ptr.div4202 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4202 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0)) #3
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %5, i8 signext 0) #3
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 262144
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  store i64 %9, i64* %rlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %rlen, i32 2) #3
  %.pre236 = load i64* %rlen, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = phi i64 [ %9, %cond.true ], [ %.pre236, %cond.false ]
  %cond = phi i8* [ %10, %cond.true ], [ %call11, %cond.false ]
  %cmp12 = icmp sgt i32 %conv5, 1
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %sext211 = add i64 %add.ptr.idx, 8589934592
  %idxprom15 = ashr exact i64 %sext211, 32
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.sv** %12, i64 %idxprom15
  %13 = load %struct.sv** %arrayidx16, align 8, !tbaa !0
  %sv_flags17 = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %14, 118423552
  %tobool = icmp eq i32 %and18, 0
  br i1 %tobool, label %if.else, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %and24 = and i32 %14, 262144
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %cond.false38, label %cond.true27

cond.true27:                                      ; preds = %if.then19
  %sv_any31 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %15 = load i8** %sv_any31, align 8, !tbaa !0
  %xpv_cur32 = getelementptr inbounds i8* %15, i64 8
  %16 = bitcast i8* %xpv_cur32 to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  store i64 %17, i64* %eollen, align 8, !tbaa !4
  %xpv_pv37 = bitcast i8* %15 to i8**
  %18 = load i8** %xpv_pv37, align 8, !tbaa !0
  br label %if.end45

cond.false38:                                     ; preds = %if.then19
  %call42 = call i8* @Perl_sv_2pv_flags(%struct.sv* %13, i64* %eollen, i32 2) #3
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true, %cond.end
  store i64 1, i64* %eollen, align 8, !tbaa !4
  br label %if.end45

if.end45:                                         ; preds = %cond.true27, %cond.false38, %if.else
  %eol.0 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), %if.else ], [ %18, %cond.true27 ], [ %call42, %cond.false38 ]
  %eol.0226 = ptrtoint i8* %eol.0 to i64
  %add46 = add nsw i64 %11, 2
  %div = sdiv i64 %add46, 3
  %mul = shl nsw i64 %div, 2
  store i64 %mul, i64* %rlen, align 8, !tbaa !4
  %add46.off = add i64 %11, 4
  %19 = icmp ugt i64 %add46.off, 4
  br i1 %19, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end45
  %sub = add i64 %mul, -1
  %div49 = udiv i64 %sub, 76
  %add50 = add i64 %div49, 1
  %20 = load i64* %eollen, align 8, !tbaa !4
  %mul51 = mul i64 %add50, %20
  %add52 = add i64 %mul51, %mul
  store i64 %add52, i64* %rlen, align 8, !tbaa !4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end45
  %21 = phi i64 [ %add52, %if.then48 ], [ %mul, %if.end45 ]
  %tobool54 = icmp ne i64 %21, 0
  %cond58 = select i1 %tobool54, i64 %21, i64 1
  %call59 = call %struct.sv* @Perl_newSV(i64 %cond58) #3
  %sv_flags60 = getelementptr inbounds %struct.sv* %call59, i64 0, i32 2
  %22 = load i32* %sv_flags60, align 4, !tbaa !3
  %or = or i32 %22, 67371008
  store i32 %or, i32* %sv_flags60, align 4, !tbaa !3
  %23 = load i64* %rlen, align 8, !tbaa !4
  %sv_any61 = getelementptr inbounds %struct.sv* %call59, i64 0, i32 0
  %24 = load i8** %sv_any61, align 8, !tbaa !0
  %xpv_cur62 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur62 to i64*
  store i64 %23, i64* %25, align 8, !tbaa !4
  %xpv_pv64 = bitcast i8* %24 to i8**
  %26 = load i8** %xpv_pv64, align 8, !tbaa !0
  %cmp65219 = icmp sgt i64 %11, 0
  br i1 %cmp65219, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end53
  %scevgep231 = getelementptr i8* %eol.0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %str.0223 = phi i8* [ %cond, %for.body.lr.ph ], [ %str.2, %for.inc ]
  %len.0222 = phi i64 [ %11, %for.body.lr.ph ], [ %sub134, %for.inc ]
  %r.0221 = phi i8* [ %26, %for.body.lr.ph ], [ %r.3, %for.inc ]
  %chunk.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %cmp67 = icmp eq i32 %chunk.0220, 19
  br i1 %cmp67, label %if.then69, label %if.end75

if.then69:                                        ; preds = %for.body
  %27 = load i64* %eollen, align 8, !tbaa !4
  %add.ptr70 = getelementptr inbounds i8* %eol.0, i64 %27
  %cmp71215 = icmp sgt i64 %27, 0
  br i1 %cmp71215, label %while.body.lr.ph, label %if.end75

while.body.lr.ph:                                 ; preds = %if.then69
  %28 = icmp ugt i8* %add.ptr70, %scevgep231
  %umax232 = select i1 %28, i8* %add.ptr70, i8* %scevgep231
  %umax232233 = ptrtoint i8* %umax232 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %c.0217 = phi i8* [ %eol.0, %while.body.lr.ph ], [ %incdec.ptr73, %while.body ]
  %r.1216 = phi i8* [ %r.0221, %while.body.lr.ph ], [ %incdec.ptr74, %while.body ]
  %incdec.ptr73 = getelementptr inbounds i8* %c.0217, i64 1
  %29 = load i8* %c.0217, align 1, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8* %r.1216, i64 1
  store i8 %29, i8* %r.1216, align 1, !tbaa !1
  %cmp71 = icmp ult i8* %incdec.ptr73, %add.ptr70
  br i1 %cmp71, label %while.body, label %while.cond.if.end75.loopexit_crit_edge

while.cond.if.end75.loopexit_crit_edge:           ; preds = %while.body
  %scevgep234.sum = sub i64 %umax232233, %eol.0226
  %scevgep235 = getelementptr i8* %r.0221, i64 %scevgep234.sum
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %while.cond.if.end75.loopexit_crit_edge, %for.body
  %chunk.1 = phi i32 [ %chunk.0220, %for.body ], [ 0, %while.cond.if.end75.loopexit_crit_edge ], [ 0, %if.then69 ]
  %r.2 = phi i8* [ %r.0221, %for.body ], [ %scevgep235, %while.cond.if.end75.loopexit_crit_edge ], [ %r.0221, %if.then69 ]
  %incdec.ptr76 = getelementptr inbounds i8* %str.0223, i64 1
  %30 = load i8* %str.0223, align 1, !tbaa !1
  %cmp77 = icmp sgt i64 %len.0222, 1
  br i1 %cmp77, label %cond.true79, label %cond.end83

cond.true79:                                      ; preds = %if.end75
  %incdec.ptr80 = getelementptr inbounds i8* %str.0223, i64 2
  %31 = load i8* %incdec.ptr76, align 1, !tbaa !1
  %phitmp = zext i8 %31 to i32
  br label %cond.end83

cond.end83:                                       ; preds = %if.end75, %cond.true79
  %str.1 = phi i8* [ %incdec.ptr80, %cond.true79 ], [ %incdec.ptr76, %if.end75 ]
  %cond84 = phi i32 [ %phitmp, %cond.true79 ], [ 0, %if.end75 ]
  %conv86 = zext i8 %30 to i32
  %shr203 = lshr i32 %conv86, 2
  %idxprom87204 = zext i32 %shr203 to i64
  %arrayidx88 = getelementptr inbounds [65 x i8]* @basis_64, i64 0, i64 %idxprom87204
  %32 = load i8* %arrayidx88, align 1, !tbaa !1
  %incdec.ptr89 = getelementptr inbounds i8* %r.2, i64 1
  store i8 %32, i8* %r.2, align 1, !tbaa !1
  %and91 = shl nuw nsw i32 %conv86, 4
  %shl = and i32 %and91, 48
  %shr94205 = lshr i32 %cond84, 4
  %or95 = or i32 %shr94205, %shl
  %idxprom96206 = zext i32 %or95 to i64
  %arrayidx97 = getelementptr inbounds [65 x i8]* @basis_64, i64 0, i64 %idxprom96206
  %33 = load i8* %arrayidx97, align 1, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8* %r.2, i64 2
  store i8 %33, i8* %incdec.ptr89, align 1, !tbaa !1
  %cmp99 = icmp sgt i64 %len.0222, 2
  br i1 %cmp99, label %if.then101, label %if.else118

if.then101:                                       ; preds = %cond.end83
  %incdec.ptr102 = getelementptr inbounds i8* %str.1, i64 1
  %34 = load i8* %str.1, align 1, !tbaa !1
  %and104 = shl nuw nsw i32 %cond84, 2
  %shl105 = and i32 %and104, 60
  %conv106 = zext i8 %34 to i32
  %shr108208 = lshr i32 %conv106, 6
  %or109 = or i32 %shr108208, %shl105
  %idxprom110209 = zext i32 %or109 to i64
  %arrayidx111 = getelementptr inbounds [65 x i8]* @basis_64, i64 0, i64 %idxprom110209
  %35 = load i8* %arrayidx111, align 1, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8* %r.2, i64 3
  store i8 %35, i8* %incdec.ptr98, align 1, !tbaa !1
  %and114 = and i32 %conv106, 63
  %idxprom115210 = zext i32 %and114 to i64
  %arrayidx116 = getelementptr inbounds [65 x i8]* @basis_64, i64 0, i64 %idxprom115210
  %36 = load i8* %arrayidx116, align 1, !tbaa !1
  store i8 %36, i8* %incdec.ptr112, align 1, !tbaa !1
  br label %for.inc

if.else118:                                       ; preds = %cond.end83
  %cmp119 = icmp eq i64 %len.0222, 2
  br i1 %cmp119, label %for.inc.thread, label %if.else129

for.inc.thread:                                   ; preds = %if.else118
  %and123 = shl nuw nsw i32 %cond84, 2
  %shl124 = and i32 %and123, 60
  %idxprom125207 = zext i32 %shl124 to i64
  %arrayidx126 = getelementptr inbounds [65 x i8]* @basis_64, i64 0, i64 %idxprom125207
  %37 = load i8* %arrayidx126, align 4, !tbaa !1
  %incdec.ptr127 = getelementptr inbounds i8* %r.2, i64 3
  store i8 %37, i8* %incdec.ptr98, align 1, !tbaa !1
  store i8 61, i8* %incdec.ptr127, align 1, !tbaa !1
  %r.3237 = getelementptr inbounds i8* %r.2, i64 4
  br label %for.end

if.else129:                                       ; preds = %if.else118
  %incdec.ptr130 = getelementptr inbounds i8* %r.2, i64 3
  store i8 61, i8* %incdec.ptr98, align 1, !tbaa !1
  store i8 61, i8* %incdec.ptr130, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.then101, %if.else129
  %str.2 = phi i8* [ %incdec.ptr102, %if.then101 ], [ %str.1, %if.else129 ]
  %r.3 = getelementptr inbounds i8* %r.2, i64 4
  %sub134 = add nsw i64 %len.0222, -3
  %inc = add nsw i32 %chunk.1, 1
  %cmp65 = icmp sgt i64 %sub134, 0
  br i1 %cmp65, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.inc.thread, %if.end53
  %r.0.lcssa = phi i8* [ %26, %if.end53 ], [ %r.3237, %for.inc.thread ], [ %r.3, %for.inc ]
  %38 = load i64* %rlen, align 8, !tbaa !4
  %tobool135 = icmp eq i64 %38, 0
  br i1 %tobool135, label %if.end147, label %if.then136

if.then136:                                       ; preds = %for.end
  %39 = load i64* %eollen, align 8, !tbaa !4
  %add.ptr139 = getelementptr inbounds i8* %eol.0, i64 %39
  %cmp141212 = icmp sgt i64 %39, 0
  br i1 %cmp141212, label %while.body143.lr.ph, label %if.end147

while.body143.lr.ph:                              ; preds = %if.then136
  %scevgep225 = getelementptr i8* %eol.0, i64 1
  %40 = icmp ugt i8* %add.ptr139, %scevgep225
  %umax = select i1 %40, i8* %add.ptr139, i8* %scevgep225
  %41 = sub i64 0, %eol.0226
  %scevgep227 = getelementptr i8* %umax, i64 %41
  %scevgep227228 = ptrtoint i8* %scevgep227 to i64
  br label %while.body143

while.body143:                                    ; preds = %while.body143.lr.ph, %while.body143
  %c137.0214 = phi i8* [ %eol.0, %while.body143.lr.ph ], [ %incdec.ptr144, %while.body143 ]
  %r.4213 = phi i8* [ %r.0.lcssa, %while.body143.lr.ph ], [ %incdec.ptr145, %while.body143 ]
  %incdec.ptr144 = getelementptr inbounds i8* %c137.0214, i64 1
  %42 = load i8* %c137.0214, align 1, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8* %r.4213, i64 1
  store i8 %42, i8* %r.4213, align 1, !tbaa !1
  %cmp141 = icmp ult i8* %incdec.ptr144, %add.ptr139
  br i1 %cmp141, label %while.body143, label %while.cond140.if.end147.loopexit_crit_edge

while.cond140.if.end147.loopexit_crit_edge:       ; preds = %while.body143
  %scevgep229 = getelementptr i8* %r.0.lcssa, i64 %scevgep227228
  br label %if.end147

if.end147:                                        ; preds = %if.then136, %while.cond140.if.end147.loopexit_crit_edge, %for.end
  %r.5 = phi i8* [ %r.0.lcssa, %for.end ], [ %scevgep229, %while.cond140.if.end147.loopexit_crit_edge ], [ %r.0.lcssa, %if.then136 ]
  store i8 0, i8* %r.5, align 1, !tbaa !1
  %43 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds %struct.sv** %43, i64 %idxprom
  store %struct.sv* %call59, %struct.sv** %arrayidx150, align 8, !tbaa !0
  %44 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds %struct.sv** %44, i64 %idxprom
  %45 = load %struct.sv** %arrayidx153, align 8, !tbaa !0
  %call154 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %45) #3
  %46 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr156 = getelementptr inbounds %struct.sv** %46, i64 %idxprom
  store %struct.sv** %add.ptr156, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_MIME__Base64_decode_base64(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %c = alloca [4 x i8], align 1
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str2, i64 0, i64 0)) #3
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 537133056
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  store i64 %10, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pvbyte(%struct.sv* %6, i64* %len) #3
  %.pre174 = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = phi i64 [ %10, %cond.true ], [ %.pre174, %cond.false ]
  %cond = phi i8* [ %11, %cond.true ], [ %call, %cond.false ]
  %add.ptr11 = getelementptr inbounds i8* %cond, i64 %12
  %mul = mul i64 %12, 3
  %div = lshr i64 %mul, 2
  %tobool = icmp ne i64 %div, 0
  %cond15 = select i1 %tobool, i64 %div, i64 1
  %call16 = call %struct.sv* @Perl_newSV(i64 %cond15) #3
  %sv_flags17 = getelementptr inbounds %struct.sv* %call16, i64 0, i32 2
  %13 = load i32* %sv_flags17, align 4, !tbaa !3
  %or = or i32 %13, 67371008
  store i32 %or, i32* %sv_flags17, align 4, !tbaa !3
  %sv_any18 = getelementptr inbounds %struct.sv* %call16, i64 0, i32 0
  %14 = load i8** %sv_any18, align 8, !tbaa !0
  %xpv_pv19 = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv19, align 8, !tbaa !0
  %cmp20164 = icmp sgt i64 %12, 0
  br i1 %cmp20164, label %do.body.preheader.lr.ph, label %thats_it

do.body.preheader.lr.ph:                          ; preds = %cond.end
  %arrayidx51 = getelementptr inbounds [4 x i8]* %c, i64 0, i64 2
  %arrayidx53 = getelementptr inbounds [4 x i8]* %c, i64 0, i64 3
  %arrayidx58 = getelementptr inbounds [4 x i8]* %c, i64 0, i64 0
  %arrayidx62 = getelementptr inbounds [4 x i8]* %c, i64 0, i64 1
  br label %do.body.preheader

do.body.preheader:                                ; preds = %do.body.preheader.lr.ph, %if.end103
  %str.0167 = phi i8* [ %cond, %do.body.preheader.lr.ph ], [ %incdec.ptr22169, %if.end103 ]
  %r.0165 = phi i8* [ %15, %do.body.preheader.lr.ph ], [ %incdec.ptr112, %if.end103 ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %i.0 = phi i32 [ %i.1, %do.cond ], [ 0, %do.body.preheader ]
  %str.1 = phi i8* [ %incdec.ptr22, %do.cond ], [ %str.0167, %do.body.preheader ]
  %incdec.ptr22 = getelementptr inbounds i8* %str.1, i64 1
  %16 = load i8* %str.1, align 1, !tbaa !1
  %idxprom23 = zext i8 %16 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8]* @index_64, i64 0, i64 %idxprom23
  %17 = load i8* %arrayidx24, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %17, -1
  br i1 %cmp26, label %if.end31, label %if.then28

if.then28:                                        ; preds = %do.body
  %inc = add nsw i32 %i.0, 1
  %idxprom29 = sext i32 %i.0 to i64
  %arrayidx30 = getelementptr inbounds [4 x i8]* %c, i64 0, i64 %idxprom29
  store i8 %17, i8* %arrayidx30, align 1, !tbaa !1
  br label %if.end31

if.end31:                                         ; preds = %do.body, %if.then28
  %i.1 = phi i32 [ %inc, %if.then28 ], [ %i.0, %do.body ]
  %cmp32 = icmp eq i8* %incdec.ptr22, %add.ptr11
  %cmp35 = icmp slt i32 %i.1, 4
  br i1 %cmp32, label %if.then34, label %do.cond

if.then34:                                        ; preds = %if.end31
  br i1 %cmp35, label %if.then37, label %do.end

if.then37:                                        ; preds = %if.then34
  %tobool38 = icmp eq i32 %i.1, 0
  br i1 %tobool38, label %thats_it, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then37
  %18 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and40 = and i8 %18, 1
  %tobool41 = icmp eq i8 %and40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %land.lhs.true
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0)) #3
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true, %if.then42
  %cmp44 = icmp slt i32 %i.1, 2
  br i1 %cmp44, label %thats_it, label %if.end47

if.end47:                                         ; preds = %if.end43
  %cmp48 = icmp eq i32 %i.1, 2
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  store i8 -2, i8* %arrayidx51, align 1, !tbaa !1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  store i8 -2, i8* %arrayidx53, align 1, !tbaa !1
  br label %do.end

do.cond:                                          ; preds = %if.end31
  br i1 %cmp35, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then34, %if.end52
  %incdec.ptr22169 = phi i8* [ %add.ptr11, %if.end52 ], [ %add.ptr11, %if.then34 ], [ %incdec.ptr22, %do.cond ]
  %19 = load i8* %arrayidx58, align 1, !tbaa !1
  %cmp60 = icmp eq i8 %19, -2
  br i1 %cmp60, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %20 = load i8* %arrayidx62, align 1, !tbaa !1
  %cmp64 = icmp eq i8 %20, -2
  br i1 %cmp64, label %if.then66, label %if.end72

if.then66:                                        ; preds = %lor.lhs.false, %do.end
  %21 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and68 = and i8 %21, 1
  %tobool69 = icmp eq i8 %and68, 0
  br i1 %tobool69, label %thats_it, label %if.then70

if.then70:                                        ; preds = %if.then66
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0)) #3
  br label %thats_it

if.end72:                                         ; preds = %lor.lhs.false
  %shl = shl i8 %19, 2
  %and77 = lshr i8 %20, 4
  %shr156 = and i8 %and77, 3
  %or78 = or i8 %shr156, %shl
  %incdec.ptr80 = getelementptr inbounds i8* %r.0165, i64 1
  store i8 %or78, i8* %r.0165, align 1, !tbaa !1
  %22 = load i8* %arrayidx51, align 1, !tbaa !1
  %cmp83 = icmp eq i8 %22, -2
  br i1 %cmp83, label %thats_it, label %if.end86

if.end86:                                         ; preds = %if.end72
  %23 = load i8* %arrayidx62, align 1, !tbaa !1
  %and89 = shl i8 %23, 4
  %and93 = lshr i8 %22, 2
  %shr94157 = and i8 %and93, 15
  %or95 = or i8 %and89, %shr94157
  %incdec.ptr97 = getelementptr inbounds i8* %r.0165, i64 2
  store i8 %or95, i8* %incdec.ptr80, align 1, !tbaa !1
  %24 = load i8* %arrayidx53, align 1, !tbaa !1
  %cmp100 = icmp eq i8 %24, -2
  br i1 %cmp100, label %thats_it, label %if.end103

if.end103:                                        ; preds = %if.end86
  %25 = load i8* %arrayidx51, align 1, !tbaa !1
  %and106 = shl i8 %25, 6
  %or110 = or i8 %and106, %24
  %incdec.ptr112 = getelementptr inbounds i8* %r.0165, i64 3
  store i8 %or110, i8* %incdec.ptr97, align 1, !tbaa !1
  %cmp20 = icmp ult i8* %incdec.ptr22169, %add.ptr11
  br i1 %cmp20, label %do.body.preheader, label %thats_it

thats_it:                                         ; preds = %cond.end, %if.then37, %if.end72, %if.end86, %if.end43, %if.end103, %if.then66, %if.then70
  %r.1 = phi i8* [ %r.0165, %if.then70 ], [ %r.0165, %if.then66 ], [ %15, %cond.end ], [ %r.0165, %if.end43 ], [ %incdec.ptr97, %if.end86 ], [ %incdec.ptr80, %if.end72 ], [ %r.0165, %if.then37 ], [ %incdec.ptr112, %if.end103 ]
  %26 = load i8** %sv_any18, align 8, !tbaa !0
  %xpv_pv114 = bitcast i8* %26 to i8**
  %27 = load i8** %xpv_pv114, align 8, !tbaa !0
  %sub.ptr.lhs.cast115 = ptrtoint i8* %r.1 to i64
  %sub.ptr.rhs.cast116 = ptrtoint i8* %27 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %xpv_cur119 = getelementptr inbounds i8* %26, i64 8
  %28 = bitcast i8* %xpv_cur119 to i64*
  store i64 %sub.ptr.sub117, i64* %28, align 8, !tbaa !4
  store i8 0, i8* %r.1, align 1, !tbaa !1
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds %struct.sv** %29, i64 %idxprom
  store %struct.sv* %call16, %struct.sv** %arrayidx122, align 8, !tbaa !0
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds %struct.sv** %30, i64 %idxprom
  %31 = load %struct.sv** %arrayidx125, align 8, !tbaa !0
  %call126 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %31) #3
  %32 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr128 = getelementptr inbounds %struct.sv** %32, i64 %idxprom
  store %struct.sv** %add.ptr128, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pvbyte(%struct.sv*, i64*) #1

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_MIME__QuotedPrint_encode_qp(%struct.cv* nocapture %cv) #0 {
entry:
  %eol_len = alloca i64, align 8
  %Perl_sv_len = alloca i64, align 8
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
  %sub.ptr.div4387 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4387 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #3
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %5, i8 signext 0) #3
  %cmp8 = icmp sgt i32 %conv5, 1
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %sext389 = add i64 %add.ptr.idx, 8589934592
  %idxprom11 = ashr exact i64 %sext389, 32
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.sv** %6, i64 %idxprom11
  %7 = load %struct.sv** %arrayidx12, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 118423552
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %and18 = and i32 %8, 262144
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then13
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  store i64 %11, i64* %eol_len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end32

cond.false:                                       ; preds = %if.then13
  %call31 = call i8* @Perl_sv_2pv_flags(%struct.sv* %7, i64* %eol_len, i32 2) #3
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i64 1, i64* %eol_len, align 8, !tbaa !4
  br label %if.end32

if.end32:                                         ; preds = %cond.true, %cond.false, %if.else
  %eol.0 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), %if.else ], [ %12, %cond.true ], [ %call31, %cond.false ]
  %cmp33 = icmp sgt i32 %conv5, 2
  br i1 %cmp33, label %land.rhs, label %land.end109

land.rhs:                                         ; preds = %if.end32
  %sext388 = add i64 %add.ptr.idx, 12884901888
  %idxprom36 = ashr exact i64 %sext388, 32
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds %struct.sv** %13, i64 %idxprom36
  %14 = load %struct.sv** %arrayidx37, align 8, !tbaa !0
  %tobool38 = icmp eq %struct.sv* %14, null
  br i1 %tobool38, label %cond.end106, label %cond.false40

cond.false40:                                     ; preds = %land.rhs
  %sv_flags44 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags44, align 4, !tbaa !3
  %and45 = and i32 %15, 262144
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %cond.false66, label %cond.true47

cond.true47:                                      ; preds = %cond.false40
  %sv_any51 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %16 = load i8** %sv_any51, align 8, !tbaa !0
  %17 = bitcast i8* %16 to %struct.xpv*
  store %struct.xpv* %17, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool52 = icmp eq i8* %16, null
  br i1 %tobool52, label %land.end64, label %land.rhs53

land.rhs53:                                       ; preds = %cond.true47
  %xpv_cur54 = getelementptr inbounds i8* %16, i64 8
  %18 = bitcast i8* %xpv_cur54 to i64*
  %19 = load i64* %18, align 8, !tbaa !4
  %cmp55 = icmp ugt i64 %19, 1
  br i1 %cmp55, label %land.end64, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs53
  %tobool58 = icmp eq i64 %19, 0
  br i1 %tobool58, label %land.end64, label %land.rhs59

land.rhs59:                                       ; preds = %lor.rhs
  %xpv_pv60 = bitcast i8* %16 to i8**
  %20 = load i8** %xpv_pv60, align 8, !tbaa !0
  %21 = load i8* %20, align 1, !tbaa !1
  %cmp62 = icmp ne i8 %21, 48
  br label %land.end64

land.end64:                                       ; preds = %lor.rhs, %cond.true47, %land.rhs53, %land.rhs59
  %22 = phi i1 [ false, %cond.true47 ], [ true, %land.rhs53 ], [ false, %lor.rhs ], [ %cmp62, %land.rhs59 ]
  %cond65 = zext i1 %22 to i32
  br label %cond.end106

cond.false66:                                     ; preds = %cond.false40
  %and71 = and i32 %15, 65536
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %cond.false80, label %cond.true73

cond.true73:                                      ; preds = %cond.false66
  %sv_any77 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %23 = load i8** %sv_any77, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %23, i64 24
  %24 = bitcast i8* %xiv_iv to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  %cmp78 = icmp ne i64 %25, 0
  %conv79 = zext i1 %cmp78 to i32
  br label %cond.end106

cond.false80:                                     ; preds = %cond.false66
  %and85 = and i32 %15, 131072
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %cond.false94, label %cond.true87

cond.true87:                                      ; preds = %cond.false80
  %sv_any91 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %26 = load i8** %sv_any91, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %26, i64 32
  %27 = bitcast i8* %xnv_nv to double*
  %28 = load double* %27, align 8, !tbaa !5
  %cmp92 = fcmp une double %28, 0.000000e+00
  %conv93 = zext i1 %cmp92 to i32
  br label %cond.end106

cond.false94:                                     ; preds = %cond.false80
  %call98 = call signext i8 @Perl_sv_2bool(%struct.sv* %14) #3
  %conv99 = sext i8 %call98 to i32
  br label %cond.end106

cond.end106:                                      ; preds = %land.rhs, %land.end64, %cond.true87, %cond.false94, %cond.true73
  %cond107 = phi i32 [ 0, %land.rhs ], [ %cond65, %land.end64 ], [ %conv79, %cond.true73 ], [ %conv93, %cond.true87 ], [ %conv99, %cond.false94 ]
  %tobool108 = icmp ne i32 %cond107, 0
  br label %land.end109

land.end109:                                      ; preds = %cond.end106, %if.end32
  %29 = phi i1 [ false, %if.end32 ], [ %tobool108, %cond.end106 ]
  %sv_flags110 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %30 = load i32* %sv_flags110, align 4, !tbaa !3
  %and111 = and i32 %30, 262144
  %cmp112 = icmp eq i32 %and111, 0
  br i1 %cmp112, label %cond.false119, label %cond.true114

cond.true114:                                     ; preds = %land.end109
  %sv_any115 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %31 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_cur116 = getelementptr inbounds i8* %31, i64 8
  %32 = bitcast i8* %xpv_cur116 to i64*
  %33 = load i64* %32, align 8, !tbaa !4
  store i64 %33, i64* %Perl_sv_len, align 8, !tbaa !4
  %xpv_pv118 = bitcast i8* %31 to i8**
  %34 = load i8** %xpv_pv118, align 8, !tbaa !0
  br label %cond.end121

cond.false119:                                    ; preds = %land.end109
  %call120 = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %Perl_sv_len, i32 2) #3
  %.pre410 = load i64* %Perl_sv_len, align 8, !tbaa !4
  br label %cond.end121

cond.end121:                                      ; preds = %cond.false119, %cond.true114
  %35 = phi i64 [ %33, %cond.true114 ], [ %.pre410, %cond.false119 ]
  %cond122 = phi i8* [ %34, %cond.true114 ], [ %call120, %cond.false119 ]
  %add.ptr123 = getelementptr inbounds i8* %cond122, i64 %35
  %add124 = add i64 %35, 1
  %call125 = call %struct.sv* @Perl_newSV(i64 %add124) #3
  call void @Perl_sv_setpv(%struct.sv* %call125, i8* getelementptr inbounds ([1 x i8]* @.str6, i64 0, i64 0)) #3
  %sv_any249 = getelementptr inbounds %struct.sv* %call125, i64 0, i32 0
  %sub.ptr.rhs.cast264 = ptrtoint i8* %cond122 to i64
  br label %while.body

while.body:                                       ; preds = %if.then260, %if.end248, %land.lhs.true252, %cond.true270, %cond.end121
  %p.0 = phi i8* [ %cond122, %cond.end121 ], [ %p.4, %cond.true270 ], [ %p.4, %land.lhs.true252 ], [ %p.4, %if.end248 ], [ %p.4, %if.then260 ]
  %linelen.0 = phi i64 [ 0, %cond.end121 ], [ %linelen.5, %cond.true270 ], [ %linelen.5, %land.lhs.true252 ], [ %linelen.5, %if.end248 ], [ %linelen.5, %if.then260 ]
  %cmp127394 = icmp ult i8* %p.0, %add.ptr123
  br i1 %cmp127394, label %land.rhs129, label %while.end

land.rhs129:                                      ; preds = %while.body, %while.body150
  %p.1395 = phi i8* [ %incdec.ptr151, %while.body150 ], [ %p.0, %while.body ]
  %36 = load i8* %p.1395, align 1, !tbaa !1
  %cmp131 = icmp eq i8 %36, 9
  br i1 %cmp131, label %while.body150, label %lor.rhs133

lor.rhs133:                                       ; preds = %land.rhs129
  %notlhs = icmp sgt i8 %36, 31
  br i1 %notlhs, label %switch.early.test, label %while.end

switch.early.test:                                ; preds = %lor.rhs133
  switch i8 %36, label %while.body150 [
    i8 127, label %while.end
    i8 61, label %while.end
  ]

while.body150:                                    ; preds = %switch.early.test, %land.rhs129
  %incdec.ptr151 = getelementptr inbounds i8* %p.1395, i64 1
  %cmp127 = icmp ult i8* %incdec.ptr151, %add.ptr123
  br i1 %cmp127, label %land.rhs129, label %while.end

while.end:                                        ; preds = %while.body150, %switch.early.test, %switch.early.test, %lor.rhs133, %while.body
  %p.1.lcssa = phi i8* [ %p.0, %while.body ], [ %p.1395, %lor.rhs133 ], [ %p.1395, %switch.early.test ], [ %p.1395, %switch.early.test ], [ %incdec.ptr151, %while.body150 ]
  %cmp152 = icmp eq i8* %p.1.lcssa, %add.ptr123
  br i1 %cmp152, label %while.cond158.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %37 = load i8* %p.1.lcssa, align 1, !tbaa !1
  %cmp155 = icmp eq i8 %37, 10
  %cmp159396 = icmp ugt i8* %p.1.lcssa, %p.0
  %or.cond = and i1 %cmp155, %cmp159396
  br i1 %or.cond, label %land.rhs161, label %if.end177

while.cond158.preheader:                          ; preds = %while.end
  %cmp159396.old = icmp ugt i8* %p.1.lcssa, %p.0
  br i1 %cmp159396.old, label %land.rhs161, label %if.end177

land.rhs161:                                      ; preds = %lor.lhs.false, %while.cond158.preheader, %while.cond158.backedge
  %p.2397 = phi i8* [ %add.ptr162, %while.cond158.backedge ], [ %p.1.lcssa, %while.cond158.preheader ], [ %p.1.lcssa, %lor.lhs.false ]
  %add.ptr162 = getelementptr inbounds i8* %p.2397, i64 -1
  %38 = load i8* %add.ptr162, align 1, !tbaa !1
  switch i8 %38, label %if.end177 [
    i8 9, label %while.cond158.backedge
    i8 32, label %while.cond158.backedge
  ]

while.cond158.backedge:                           ; preds = %land.rhs161, %land.rhs161
  %cmp159 = icmp ugt i8* %add.ptr162, %p.0
  br i1 %cmp159, label %land.rhs161, label %if.end177

if.end177:                                        ; preds = %while.cond158.preheader, %land.rhs161, %while.cond158.backedge, %lor.lhs.false
  %p.3 = phi i8* [ %p.1.lcssa, %lor.lhs.false ], [ %p.1.lcssa, %while.cond158.preheader ], [ %p.2397, %land.rhs161 ], [ %add.ptr162, %while.cond158.backedge ]
  %sub.ptr.lhs.cast178 = ptrtoint i8* %p.3 to i64
  %sub.ptr.rhs.cast179 = ptrtoint i8* %p.0 to i64
  %sub.ptr.sub180 = sub i64 %sub.ptr.lhs.cast178, %sub.ptr.rhs.cast179
  %tobool181 = icmp eq i8* %p.3, %p.0
  br i1 %tobool181, label %if.end223, label %if.then182

if.then182:                                       ; preds = %if.end177
  %39 = load i64* %eol_len, align 8, !tbaa !4
  %tobool183 = icmp eq i64 %39, 0
  br i1 %tobool183, label %if.end218, label %if.then184

if.then184:                                       ; preds = %if.then182
  %cmp185 = icmp eq i8* %p.3, %add.ptr123
  br i1 %cmp185, label %cond.end203, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.then184
  %40 = load i8* %p.3, align 1, !tbaa !1
  %cmp189 = icmp eq i8 %40, 10
  br i1 %cmp189, label %cond.end203, label %cond.false192

cond.false192:                                    ; preds = %lor.lhs.false187
  %add.ptr193 = getelementptr inbounds i8* %p.3, i64 1
  %cmp194 = icmp eq i8* %add.ptr193, %add.ptr123
  br i1 %cmp194, label %cond.end203, label %lor.rhs196

lor.rhs196:                                       ; preds = %cond.false192
  %41 = load i8* %add.ptr193, align 1, !tbaa !1
  %cmp199 = icmp eq i8 %41, 10
  %phitmp = select i1 %cmp199, i64 73, i64 72
  br label %cond.end203

cond.end203:                                      ; preds = %cond.false192, %lor.rhs196, %if.then184, %lor.lhs.false187
  %cond204 = phi i64 [ 76, %lor.lhs.false187 ], [ 76, %if.then184 ], [ 73, %cond.false192 ], [ %phitmp, %lor.rhs196 ]
  %add207399 = add i64 %linelen.0, %sub.ptr.sub180
  %cmp208400 = icmp ugt i64 %add207399, %cond204
  br i1 %cmp208400, label %while.body210, label %if.end218

while.body210:                                    ; preds = %cond.end203, %while.body210
  %linelen.1403 = phi i64 [ 0, %while.body210 ], [ %linelen.0, %cond.end203 ]
  %p_beg.0402 = phi i8* [ %add.ptr215, %while.body210 ], [ %p.0, %cond.end203 ]
  %p_len.0401 = phi i64 [ %sub216, %while.body210 ], [ %sub.ptr.sub180, %cond.end203 ]
  %sub = sub i64 75, %linelen.1403
  %cmp211 = icmp ugt i64 %sub, %p_len.0401
  %p_len.0.sub = select i1 %cmp211, i64 %p_len.0401, i64 %sub
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* %p_beg.0402, i64 %p_len.0.sub, i32 2) #3
  %add.ptr215 = getelementptr inbounds i8* %p_beg.0402, i64 %p_len.0.sub
  %sub216 = sub i64 %p_len.0401, %p_len.0.sub
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i64 1, i32 2) #3
  %42 = load i64* %eol_len, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* %eol.0, i64 %42, i32 2) #3
  %cmp208 = icmp ugt i64 %sub216, %cond204
  br i1 %cmp208, label %while.body210, label %if.end218

if.end218:                                        ; preds = %cond.end203, %while.body210, %if.then182
  %p_len.1 = phi i64 [ %sub.ptr.sub180, %if.then182 ], [ %sub.ptr.sub180, %cond.end203 ], [ %sub216, %while.body210 ]
  %p_beg.1 = phi i8* [ %p.0, %if.then182 ], [ %p.0, %cond.end203 ], [ %add.ptr215, %while.body210 ]
  %linelen.2 = phi i64 [ %linelen.0, %if.then182 ], [ %linelen.0, %cond.end203 ], [ 0, %while.body210 ]
  %tobool219 = icmp eq i64 %p_len.1, 0
  br i1 %tobool219, label %if.end223, label %if.then220

if.then220:                                       ; preds = %if.end218
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* %p_beg.1, i64 %p_len.1, i32 2) #3
  %add221 = add i64 %linelen.2, %p_len.1
  br label %if.end223

if.end223:                                        ; preds = %if.end218, %if.end177, %if.then220
  %linelen.3 = phi i64 [ %add221, %if.then220 ], [ %linelen.2, %if.end218 ], [ %linelen.0, %if.end177 ]
  %cmp224 = icmp eq i8* %p.3, %add.ptr123
  br i1 %cmp224, label %while.end278, label %if.else227

if.else227:                                       ; preds = %if.end223
  %43 = load i8* %p.3, align 1, !tbaa !1
  %cmp229 = icmp eq i8 %43, 10
  %44 = load i64* %eol_len, align 8, !tbaa !4
  br i1 %cmp229, label %land.lhs.true231, label %if.else237

land.lhs.true231:                                 ; preds = %if.else227
  %tobool232 = icmp eq i64 %44, 0
  %brmerge = or i1 %tobool232, %29
  br i1 %brmerge, label %if.else237, label %if.then235

if.then235:                                       ; preds = %land.lhs.true231
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* %eol.0, i64 %44, i32 2) #3
  br label %if.end248

if.else237:                                       ; preds = %if.else227, %land.lhs.true231
  %tobool238 = icmp ne i64 %44, 0
  %cmp240 = icmp ugt i64 %linelen.3, 72
  %or.cond391 = and i1 %tobool238, %cmp240
  br i1 %or.cond391, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.else237
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i64 1, i32 2) #3
  %45 = load i64* %eol_len, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* %eol.0, i64 %45, i32 2) #3
  %.pre411 = load i8* %p.3, align 1, !tbaa !1
  br label %if.end243

if.end243:                                        ; preds = %if.else237, %if.then242
  %46 = phi i8 [ %.pre411, %if.then242 ], [ %43, %if.else237 ]
  %linelen.4 = phi i64 [ 0, %if.then242 ], [ %linelen.3, %if.else237 ]
  %conv244 = zext i8 %46 to i32
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call125, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i32 %conv244) #3
  %add246 = add i64 %linelen.4, 3
  br label %if.end248

if.end248:                                        ; preds = %if.then235, %if.end243
  %linelen.5 = phi i64 [ %add246, %if.end243 ], [ 0, %if.then235 ]
  %p.4 = getelementptr inbounds i8* %p.3, i64 1
  %47 = load i8** %sv_any249, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %47, i64 16
  %48 = bitcast i8* %xpv_len to i64*
  %49 = load i64* %48, align 8, !tbaa !4
  %cmp250 = icmp ugt i64 %49, 80
  br i1 %cmp250, label %land.lhs.true252, label %while.body

land.lhs.true252:                                 ; preds = %if.end248
  %xpv_cur256 = getelementptr inbounds i8* %47, i64 8
  %50 = bitcast i8* %xpv_cur256 to i64*
  %51 = load i64* %50, align 8, !tbaa !4
  %sub257 = sub i64 %49, %51
  %cmp258 = icmp ult i64 %sub257, 3
  br i1 %cmp258, label %if.then260, label %while.body

if.then260:                                       ; preds = %land.lhs.true252
  %52 = load i64* %Perl_sv_len, align 8, !tbaa !4
  %mul = mul i64 %52, %51
  %sub.ptr.lhs.cast263 = ptrtoint i8* %p.4 to i64
  %sub.ptr.sub265 = sub i64 %sub.ptr.lhs.cast263, %sub.ptr.rhs.cast264
  %div = udiv i64 %mul, %sub.ptr.sub265
  %cmp268 = icmp ult i64 %49, %div
  br i1 %cmp268, label %cond.true270, label %while.body

cond.true270:                                     ; preds = %if.then260
  %call271 = call i8* @Perl_sv_grow(%struct.sv* %call125, i64 %div) #3
  br label %while.body

while.end278:                                     ; preds = %if.end223
  %53 = load i8** %sv_any249, align 8, !tbaa !0
  %xpv_cur280 = getelementptr inbounds i8* %53, i64 8
  %54 = bitcast i8* %xpv_cur280 to i64*
  %55 = load i64* %54, align 8, !tbaa !4
  %tobool281 = icmp eq i64 %55, 0
  br i1 %tobool281, label %if.end287, label %land.lhs.true282

land.lhs.true282:                                 ; preds = %while.end278
  %56 = load i64* %eol_len, align 8, !tbaa !4
  %tobool283 = icmp eq i64 %56, 0
  %tobool285 = icmp eq i64 %linelen.3, 0
  %or.cond392 = or i1 %tobool283, %tobool285
  br i1 %or.cond392, label %if.end287, label %if.then286

if.then286:                                       ; preds = %land.lhs.true282
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i64 1, i32 2) #3
  %57 = load i64* %eol_len, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %call125, i8* %eol.0, i64 %57, i32 2) #3
  br label %if.end287

if.end287:                                        ; preds = %land.lhs.true282, %while.end278, %if.then286
  %58 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds %struct.sv** %58, i64 %idxprom
  store %struct.sv* %call125, %struct.sv** %arrayidx290, align 8, !tbaa !0
  %59 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx293 = getelementptr inbounds %struct.sv** %59, i64 %idxprom
  %60 = load %struct.sv** %arrayidx293, align 8, !tbaa !0
  %call294 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %60) #3
  %61 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr296 = getelementptr inbounds %struct.sv** %61, i64 %idxprom
  store %struct.sv** %add.ptr296, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_MIME__QuotedPrint_decode_qp(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %buf = alloca [3 x i8], align 1
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
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str9, i64 0, i64 0)) #3
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 537133056
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  store i64 %10, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @Perl_sv_2pvbyte(%struct.sv* %6, i64* %len) #3
  %.pre340 = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = phi i64 [ %10, %cond.true ], [ %.pre340, %cond.false ]
  %cond = phi i8* [ %11, %cond.true ], [ %call, %cond.false ]
  %add.ptr11 = getelementptr inbounds i8* %cond, i64 %12
  %tobool = icmp ne i64 %12, 0
  %cond15 = select i1 %tobool, i64 %12, i64 1
  %call16 = call %struct.sv* @Perl_newSV(i64 %cond15) #3
  %sv_flags17 = getelementptr inbounds %struct.sv* %call16, i64 0, i32 2
  %13 = load i32* %sv_flags17, align 4, !tbaa !3
  %or = or i32 %13, 67371008
  store i32 %or, i32* %sv_flags17, align 4, !tbaa !3
  %sv_any18 = getelementptr inbounds %struct.sv* %call16, i64 0, i32 0
  %14 = load i8** %sv_any18, align 8, !tbaa !0
  %xpv_pv19 = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv19, align 8, !tbaa !0
  %cmp20321 = icmp sgt i64 %12, 0
  br i1 %cmp20321, label %while.body.lr.ph, label %if.end200

while.body.lr.ph:                                 ; preds = %cond.end
  %arrayidx133 = getelementptr inbounds [3 x i8]* %buf, i64 0, i64 0
  %arrayidx135 = getelementptr inbounds [3 x i8]* %buf, i64 0, i64 1
  %arrayidx136 = getelementptr inbounds [3 x i8]* %buf, i64 0, i64 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %str.0324 = phi i8* [ %cond, %while.body.lr.ph ], [ %str.0.be, %while.cond.backedge ]
  %r.0323 = phi i8* [ %15, %while.body.lr.ph ], [ %r.0.be, %while.cond.backedge ]
  %whitespace.0322 = phi i8* [ null, %while.body.lr.ph ], [ %whitespace.0.be, %while.cond.backedge ]
  %16 = load i8* %str.0324, align 1, !tbaa !1
  switch i8 %16, label %if.else53 [
    i8 32, label %if.then28
    i8 9, label %if.then28
    i8 13, label %land.lhs.true
    i8 10, label %if.then50
  ]

if.then28:                                        ; preds = %while.body, %while.body
  %tobool29 = icmp eq i8* %whitespace.0322, null
  %str.0.whitespace.0 = select i1 %tobool29, i8* %str.0324, i8* %whitespace.0322
  %incdec.ptr32 = getelementptr inbounds i8* %str.0324, i64 1
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %while.body
  %add.ptr36 = getelementptr inbounds i8* %str.0324, i64 1
  %cmp37 = icmp ult i8* %add.ptr36, %add.ptr11
  br i1 %cmp37, label %land.lhs.true39, label %if.else53

land.lhs.true39:                                  ; preds = %land.lhs.true
  %17 = load i8* %add.ptr36, align 1, !tbaa !1
  %cmp42 = icmp eq i8 %17, 10
  br i1 %cmp42, label %while.cond.backedge, label %if.else53

if.then50:                                        ; preds = %while.body
  %incdec.ptr51 = getelementptr inbounds i8* %str.0324, i64 1
  %incdec.ptr52 = getelementptr inbounds i8* %r.0323, i64 1
  store i8 10, i8* %r.0323, align 1, !tbaa !1
  br label %while.cond.backedge

if.else53:                                        ; preds = %while.body, %land.lhs.true39, %land.lhs.true
  %18 = phi i8 [ 13, %land.lhs.true ], [ 13, %land.lhs.true39 ], [ %16, %while.body ]
  %tobool54 = icmp ne i8* %whitespace.0322, null
  %cmp57309 = icmp ult i8* %whitespace.0322, %str.0324
  %or.cond345 = and i1 %tobool54, %cmp57309
  br i1 %or.cond345, label %while.body59, label %if.end62

while.body59:                                     ; preds = %if.else53, %while.body59
  %r.1311 = phi i8* [ %incdec.ptr61, %while.body59 ], [ %r.0323, %if.else53 ]
  %whitespace.2310 = phi i8* [ %incdec.ptr60, %while.body59 ], [ %whitespace.0322, %if.else53 ]
  %incdec.ptr60 = getelementptr inbounds i8* %whitespace.2310, i64 1
  %19 = load i8* %whitespace.2310, align 1, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8* %r.1311, i64 1
  store i8 %19, i8* %r.1311, align 1, !tbaa !1
  %exitcond334 = icmp eq i8* %incdec.ptr60, %str.0324
  br i1 %exitcond334, label %while.cond56.if.end62.loopexit_crit_edge, label %while.body59

while.cond56.if.end62.loopexit_crit_edge:         ; preds = %while.body59
  %.pre341.pre = load i8* %str.0324, align 1, !tbaa !1
  br label %if.end62

if.end62:                                         ; preds = %if.else53, %while.cond56.if.end62.loopexit_crit_edge
  %20 = phi i8 [ %18, %if.else53 ], [ %.pre341.pre, %while.cond56.if.end62.loopexit_crit_edge ]
  %r.2 = phi i8* [ %r.0323, %if.else53 ], [ %incdec.ptr61, %while.cond56.if.end62.loopexit_crit_edge ]
  %cmp64 = icmp eq i8 %20, 61
  br i1 %cmp64, label %if.then66, label %if.else183

if.then66:                                        ; preds = %if.end62
  %add.ptr67 = getelementptr inbounds i8* %str.0324, i64 2
  %cmp68 = icmp ult i8* %add.ptr67, %add.ptr11
  %arrayidx71 = getelementptr inbounds i8* %str.0324, i64 1
  br i1 %cmp68, label %land.lhs.true70, label %while.cond142.preheader

land.lhs.true70:                                  ; preds = %if.then66
  %21 = load i8* %arrayidx71, align 1, !tbaa !1
  %.off = add i8 %21, -48
  %22 = icmp ult i8 %.off, 10
  %.off294 = add i8 %21, -97
  %23 = icmp ult i8 %.off294, 6
  %or.cond = or i1 %22, %23
  %.off295 = add i8 %21, -65
  %24 = icmp ult i8 %.off295, 6
  %or.cond301 = or i1 %or.cond, %24
  br i1 %or.cond301, label %land.lhs.true100, label %while.cond142.preheader

land.lhs.true100:                                 ; preds = %land.lhs.true70
  %25 = load i8* %add.ptr67, align 1, !tbaa !1
  %.off296 = add i8 %25, -48
  %26 = icmp ult i8 %.off296, 10
  %.off297 = add i8 %25, -97
  %27 = icmp ult i8 %.off297, 6
  %or.cond303 = or i1 %26, %27
  %.off298 = add i8 %25, -65
  %28 = icmp ult i8 %.off298, 6
  %or.cond305 = or i1 %or.cond303, %28
  br i1 %or.cond305, label %if.then130, label %while.cond142.preheader

while.cond142.preheader:                          ; preds = %if.then66, %land.lhs.true70, %land.lhs.true100
  %cmp143316 = icmp ult i8* %arrayidx71, %add.ptr11
  br i1 %cmp143316, label %land.rhs, label %if.else162

if.then130:                                       ; preds = %land.lhs.true100
  store i8 %21, i8* %arrayidx133, align 1, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8* %str.0324, i64 3
  %29 = load i8* %add.ptr67, align 1, !tbaa !1
  store i8 %29, i8* %arrayidx135, align 1, !tbaa !1
  store i8 0, i8* %arrayidx136, align 1, !tbaa !1
  %call137 = call i64 @strtol(i8* nocapture %arrayidx133, i8** null, i32 16) #3
  %conv138 = trunc i64 %call137 to i8
  %incdec.ptr139 = getelementptr inbounds i8* %r.2, i64 1
  store i8 %conv138, i8* %r.2, align 1, !tbaa !1
  br label %while.cond.backedge

land.rhs:                                         ; preds = %while.cond142.backedge, %while.cond142.preheader
  %p.0318 = phi i8* [ %arrayidx71, %while.cond142.preheader ], [ %p.0, %while.cond142.backedge ]
  %str.0.pn317 = phi i8* [ %str.0324, %while.cond142.preheader ], [ %p.0318, %while.cond142.backedge ]
  %30 = load i8* %p.0318, align 1, !tbaa !1
  switch i8 %30, label %if.else162 [
    i8 32, label %while.cond142.backedge
    i8 9, label %while.cond142.backedge
    i8 10, label %if.then160
  ]

while.cond142.backedge:                           ; preds = %land.rhs, %land.rhs
  %p.0 = getelementptr inbounds i8* %p.0318, i64 1
  %cmp143 = icmp ult i8* %p.0, %add.ptr11
  br i1 %cmp143, label %land.rhs, label %if.else162

if.then160:                                       ; preds = %land.rhs
  %add.ptr161 = getelementptr inbounds i8* %str.0.pn317, i64 2
  br label %while.cond.backedge

if.else162:                                       ; preds = %while.cond142.backedge, %land.rhs, %while.cond142.preheader
  %p.0.lcssa = phi i8* [ %arrayidx71, %while.cond142.preheader ], [ %p.0318, %land.rhs ], [ %p.0, %while.cond142.backedge ]
  %str.0.pn.lcssa = phi i8* [ %str.0324, %while.cond142.preheader ], [ %str.0.pn317, %land.rhs ], [ %p.0318, %while.cond142.backedge ]
  %add.ptr163 = getelementptr inbounds i8* %str.0.pn.lcssa, i64 2
  %cmp164 = icmp ult i8* %add.ptr163, %add.ptr11
  br i1 %cmp164, label %land.lhs.true166, label %if.else177

land.lhs.true166:                                 ; preds = %if.else162
  %31 = load i8* %p.0.lcssa, align 1, !tbaa !1
  %cmp168 = icmp eq i8 %31, 13
  br i1 %cmp168, label %land.lhs.true170, label %if.else177

land.lhs.true170:                                 ; preds = %land.lhs.true166
  %32 = load i8* %add.ptr163, align 1, !tbaa !1
  %cmp173 = icmp eq i8 %32, 10
  br i1 %cmp173, label %if.then175, label %if.else177

if.then175:                                       ; preds = %land.lhs.true170
  %add.ptr176 = getelementptr inbounds i8* %str.0.pn.lcssa, i64 3
  br label %while.cond.backedge

if.else177:                                       ; preds = %land.lhs.true170, %land.lhs.true166, %if.else162
  %incdec.ptr179 = getelementptr inbounds i8* %r.2, i64 1
  store i8 61, i8* %r.2, align 1, !tbaa !1
  br label %while.cond.backedge

if.else183:                                       ; preds = %if.end62
  %incdec.ptr184 = getelementptr inbounds i8* %str.0324, i64 1
  %incdec.ptr185 = getelementptr inbounds i8* %r.2, i64 1
  store i8 %20, i8* %r.2, align 1, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else183, %if.then160, %if.else177, %if.then175, %if.then130, %if.then50, %if.then28, %land.lhs.true39
  %whitespace.0.be = phi i8* [ %str.0.whitespace.0, %if.then28 ], [ null, %if.then50 ], [ null, %if.then130 ], [ null, %if.then160 ], [ null, %if.then175 ], [ null, %if.else177 ], [ null, %if.else183 ], [ %whitespace.0322, %land.lhs.true39 ]
  %r.0.be = phi i8* [ %r.0323, %if.then28 ], [ %incdec.ptr52, %if.then50 ], [ %incdec.ptr139, %if.then130 ], [ %r.2, %if.then160 ], [ %r.2, %if.then175 ], [ %incdec.ptr179, %if.else177 ], [ %incdec.ptr185, %if.else183 ], [ %r.0323, %land.lhs.true39 ]
  %str.0.be = phi i8* [ %incdec.ptr32, %if.then28 ], [ %incdec.ptr51, %if.then50 ], [ %incdec.ptr134, %if.then130 ], [ %add.ptr161, %if.then160 ], [ %add.ptr176, %if.then175 ], [ %arrayidx71, %if.else177 ], [ %incdec.ptr184, %if.else183 ], [ %add.ptr36, %land.lhs.true39 ]
  %cmp20 = icmp ult i8* %str.0.be, %add.ptr11
  br i1 %cmp20, label %while.body, label %while.end190

while.end190:                                     ; preds = %while.cond.backedge
  %tobool191 = icmp ne i8* %whitespace.0.be, null
  %cmp194306 = icmp ult i8* %whitespace.0.be, %str.0.be
  %or.cond346 = and i1 %tobool191, %cmp194306
  br i1 %or.cond346, label %while.body196, label %if.end200

while.body196:                                    ; preds = %while.end190, %while.body196
  %r.3308 = phi i8* [ %incdec.ptr198, %while.body196 ], [ %r.0.be, %while.end190 ]
  %whitespace.4307 = phi i8* [ %incdec.ptr197, %while.body196 ], [ %whitespace.0.be, %while.end190 ]
  %incdec.ptr197 = getelementptr inbounds i8* %whitespace.4307, i64 1
  %33 = load i8* %whitespace.4307, align 1, !tbaa !1
  %incdec.ptr198 = getelementptr inbounds i8* %r.3308, i64 1
  store i8 %33, i8* %r.3308, align 1, !tbaa !1
  %exitcond = icmp eq i8* %incdec.ptr197, %str.0.be
  br i1 %exitcond, label %if.end200, label %while.body196

if.end200:                                        ; preds = %while.end190, %cond.end, %while.body196
  %r.4 = phi i8* [ %r.0.be, %while.end190 ], [ %incdec.ptr198, %while.body196 ], [ %15, %cond.end ]
  store i8 0, i8* %r.4, align 1, !tbaa !1
  %34 = load i8** %sv_any18, align 8, !tbaa !0
  %xpv_pv202 = bitcast i8* %34 to i8**
  %35 = load i8** %xpv_pv202, align 8, !tbaa !0
  %sub.ptr.lhs.cast203 = ptrtoint i8* %r.4 to i64
  %sub.ptr.rhs.cast204 = ptrtoint i8* %35 to i64
  %sub.ptr.sub205 = sub i64 %sub.ptr.lhs.cast203, %sub.ptr.rhs.cast204
  %xpv_cur207 = getelementptr inbounds i8* %34, i64 8
  %36 = bitcast i8* %xpv_cur207 to i64*
  store i64 %sub.ptr.sub205, i64* %36, align 8, !tbaa !4
  %37 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds %struct.sv** %37, i64 %idxprom
  store %struct.sv* %call16, %struct.sv** %arrayidx210, align 8, !tbaa !0
  %38 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx213 = getelementptr inbounds %struct.sv** %38, i64 %idxprom
  %39 = load %struct.sv** %arrayidx213, align 8, !tbaa !0
  %call214 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %39) #3
  %40 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr216 = getelementptr inbounds %struct.sv** %40, i64 %idxprom
  store %struct.sv** %add.ptr216, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @strtol(i8*, i8** nocapture, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @boot_MIME__Base64(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext19 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext19, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), void (%struct.cv*)* @XS_MIME__Base64_encode_base64, i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0)) #3
  %2 = bitcast %struct.cv* %call to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #3
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0), void (%struct.cv*)* @XS_MIME__Base64_decode_base64, i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0)) #3
  %3 = bitcast %struct.cv* %call6 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #3
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), void (%struct.cv*)* @XS_MIME__QuotedPrint_encode_qp, i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0)) #3
  %4 = bitcast %struct.cv* %call7 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0)) #3
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), void (%struct.cv*)* @XS_MIME__QuotedPrint_decode_qp, i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0)) #3
  %5 = bitcast %struct.cv* %call8 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #3
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr11 = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
