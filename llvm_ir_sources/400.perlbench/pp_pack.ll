; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/pp_pack.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packsize_t = type { i8*, i32, i32 }
%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, {}*, i64, i16, i16, i8, i8 }
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
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.tempsym_t = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@size_normal = global [53 x i8] c"\01\00\00\08\00\00\04\08\00\04\00\04\00\00\08\00\02\00\01\04\00\00\00\00\00\00\00\00\00\00\00\00\01\08\00\04\00\00\04\08\00\04\00\02\00\88\08\00\02\00\00\02\81", align 16
@size_shrieking = global [46 x i8] c"\04\00\00\08\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\08\00\00\00\00\00\00\02\00\00\00", align 16
@packsize = global [2 x %struct.packsize_t] [%struct.packsize_t { i8* getelementptr inbounds ([53 x i8]* @size_normal, i32 0, i32 0), i32 67, i32 53 }, %struct.packsize_t { i8* getelementptr inbounds ([46 x i8]* @size_shrieking, i32 0, i32 0), i32 73, i32 46 }], align 16
@PL_stack_sp = external global %struct.sv**
@PL_op = external global %struct.op*
@PL_curcop = external global %struct.cop*
@PL_sv_undef = external global %struct.sv
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@PL_curpad = external global %struct.sv**
@PL_Sv = external global %struct.sv*
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@S_pack_rec.null10 = internal global [10 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"@Xxu\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"aAZ\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"'/' must be followed by 'a*', 'A*' or 'Z*' in pack\00", align 1
@PL_sv_no = external global %struct.sv
@.str5 = private unnamed_addr constant [31 x i8] c"Code missing after '/' in pack\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"Invalid type '%c' in pack\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"'%%' may not be used in pack\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"'X' outside of string in pack\00", align 1
@PL_dowarn = external global i8
@.str9 = private unnamed_addr constant [40 x i8] c"Character in 'C' format wrapped in pack\00", align 1
@.str10 = private unnamed_addr constant [40 x i8] c"Character in 'c' format wrapped in pack\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"Cannot compress negative numbers in pack\00", align 1
@.str12 = private unnamed_addr constant [44 x i8] c"Can only compress unsigned integers in pack\00", align 1
@.str13 = private unnamed_addr constant [32 x i8] c"Cannot compress integer in pack\00", align 1
@.str14 = private unnamed_addr constant [43 x i8] c"Attempt to pack pointer to temporary value\00", align 1
@PL_uuemap = external constant [65 x i8]
@.str15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"Invalid type ',' in %s\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c"()-group starts with a count in %s\00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"Too deeply nested ()-groups in %s\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"sSiIlLxX\00", align 1
@.str22 = private unnamed_addr constant [39 x i8] c"'%c' allowed only after types %s in %s\00", align 1
@.str23 = private unnamed_addr constant [41 x i8] c"Duplicate modifier '%c' after '%c' in %s\00", align 1
@.str24 = private unnamed_addr constant [30 x i8] c"Malformed integer in [] in %s\00", align 1
@.str25 = private unnamed_addr constant [39 x i8] c"'/' does not take a repeat count in %s\00", align 1
@.str26 = private unnamed_addr constant [39 x i8] c"Within []-length '*' not allowed in %s\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"Invalid type '%c' in %s\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"Within []-length '%c' not allowed in %s\00", align 1
@.str29 = private unnamed_addr constant [28 x i8] c"'X' outside of string in %s\00", align 1
@.str30 = private unnamed_addr constant [34 x i8] c"pack/unpack repeat count overflow\00", align 1
@.str31 = private unnamed_addr constant [49 x i8] c"No group ending character '%c' found in template\00", align 1
@PL_stack_max = external global %struct.sv**
@PL_tmps_ix = external global i32
@PL_tmps_max = external global i32
@.str32 = private unnamed_addr constant [28 x i8] c"Invalid type '%c' in unpack\00", align 1
@.str33 = private unnamed_addr constant [32 x i8] c"'@' outside of string in unpack\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c"'X' outside of string in unpack\00", align 1
@.str35 = private unnamed_addr constant [32 x i8] c"'x' outside of string in unpack\00", align 1
@.str36 = private unnamed_addr constant [41 x i8] c"'/' must follow a numeric type in unpack\00", align 1
@PL_bitcount = external global i8*
@PL_hexdigit = external global i8*
@.str37 = private unnamed_addr constant [6 x i8] c"%.*lu\00", align 1
@.str38 = private unnamed_addr constant [42 x i8] c"Unterminated compressed integer in unpack\00", align 1
@.str39 = private unnamed_addr constant [41 x i8] c"'P' must have an explicit size in unpack\00", align 1
@PL_uudmap = external global [256 x i8]
@.str40 = private unnamed_addr constant [5 x i8] c"fFdD\00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c"cCsSiIlLnNUvVqQjJ\00", align 1
@.str42 = private unnamed_addr constant [34 x i8] c"Count after length/code in unpack\00", align 1
@.str43 = private unnamed_addr constant [42 x i8] c"length/code after end of string in unpack\00", align 1
@.str44 = private unnamed_addr constant [29 x i8] c"Negative '/' count in unpack\00", align 1
@.str45 = private unnamed_addr constant [33 x i8] c"Code missing after '/' in unpack\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@.str47 = private unnamed_addr constant [11 x i8] c"0000000000\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_unpack_str(i8* %pat, i8* %patend, i8* %s, i8* nocapture %strbeg, i8* %strend, i8** nocapture %new_s, i32 %ocnt, i32 %flags) #0 {
entry:
  %sym = alloca %struct.tempsym_t, align 8
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %patptr = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 0
  store i8* %pat, i8** %patptr, align 8, !tbaa !0
  %patend1 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 1
  store i8* %patend, i8** %patend1, align 8, !tbaa !0
  %flags2 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 8
  store i32 %flags, i32* %flags2, align 8, !tbaa !3
  %call = call fastcc i32 @S_unpack_rec(%struct.tempsym_t* %sym, i8* %s, i8* %s, i8* %strend, i8** null) #7
  call void @llvm.lifetime.end(i64 56, i8* %0) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_unpack_rec(%struct.tempsym_t* nocapture %symptr, i8* %s, i8* %strbeg, i8* %strend, i8** %new_s) #0 {
entry:
  %len.i = alloca i64, align 8
  %ss = alloca i8*, align 8
  %savsym.sroa.0 = alloca { i8*, i8* }, align 8
  %alen = alloca i64, align 8
  %n_a = alloca i64, align 8
  %hunk = alloca [4 x i8], align 1
  %trouble = alloca double, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %flags = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 8
  %2 = load i32* %flags, align 4, !tbaa !3
  %call3209 = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #7
  %tobool3210 = icmp eq i8 %call3209, 0
  br i1 %tobool3210, label %while.end1487, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %conv2 = and i32 %2, 16
  %code = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 4
  %tobool4 = icmp ne i32 %conv2, 0
  %add = shl i64 %sub.ptr.sub, 29
  %sext2092 = add i64 %add, 4294967296
  %conv9 = ashr exact i64 %sext2092, 32
  %howlen15 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  %length = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  %sub.ptr.lhs.cast17 = ptrtoint i8* %strend to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %strbeg to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %conv20 = trunc i64 %sub.ptr.sub19 to i32
  %tobool4.not = xor i1 %tobool4, true
  %savsym.sroa.0.0.cast1549 = bitcast { i8*, i8* }* %savsym.sroa.0 to i8*
  %3 = bitcast %struct.tempsym_t* %symptr to i8*
  %savsym.sroa.1.16.idx1517 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 2
  %savsym.sroa.2.24.idx1521 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 3
  %4 = bitcast i32* %code to i64*
  %savsym.sroa.5.44.idx1535 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 7
  %savsym.sroa.7.52.idx = getelementptr inbounds i8* %3, i64 52
  %savsym.sroa.7.52.cast1543 = bitcast i8* %savsym.sroa.7.52.idx to i32*
  %patend = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 1
  %patptr = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 0
  %conv1450 = ashr exact i64 %add, 32
  %sub.ptr.rhs.cast127 = ptrtoint i8* %s to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast127
  %arrayidx1251 = getelementptr inbounds [4 x i8]* %hunk, i64 0, i64 3
  %arrayidx1337 = getelementptr inbounds [4 x i8]* %hunk, i64 0, i64 0
  %arrayidx1342 = getelementptr inbounds [4 x i8]* %hunk, i64 0, i64 1
  %arrayidx1346 = getelementptr inbounds [4 x i8]* %hunk, i64 0, i64 2
  %5 = bitcast i64* %len.i to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %s.addr.03217 = phi i8* [ %s, %while.body.lr.ph ], [ %s.addr.0.be, %while.cond.backedge ]
  %sp.03216 = phi %struct.sv** [ %0, %while.body.lr.ph ], [ %sp.0.be, %while.cond.backedge ]
  %len.03215 = phi i32 [ 0, %while.body.lr.ph ], [ %len.0.be, %while.cond.backedge ]
  %bits.03214 = phi i32 [ 0, %while.body.lr.ph ], [ %bits.0.be, %while.cond.backedge ]
  %checksum.03213 = phi i32 [ 0, %while.body.lr.ph ], [ %checksum.0.be, %while.cond.backedge ]
  %cuv.03212 = phi i64 [ 0, %while.body.lr.ph ], [ %cuv.0.be, %while.cond.backedge ]
  %cdouble.03211 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %cdouble.0.be, %while.cond.backedge ]
  %6 = load i32* %code, align 4, !tbaa !3
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast5 = ptrtoint %struct.sv** %sp.03216 to i64
  %sub.ptr.rhs.cast6 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %sub.ptr.div8 = ashr exact i64 %sub.ptr.sub7, 3
  %cmp10 = icmp ne i64 %sub.ptr.div8, %conv9
  %cmp13 = icmp eq i32 %6, 47
  %or.cond2093 = or i1 %cmp10, %cmp13
  br i1 %or.cond2093, label %if.end, label %while.end1487

if.end:                                           ; preds = %land.lhs.true, %while.body
  %8 = load i32* %howlen15, align 4, !tbaa !1
  switch i32 %8, label %redo_switch.preheader [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %9 = load i32* %length, align 4, !tbaa !3
  br label %redo_switch.preheader

sw.bb16:                                          ; preds = %if.end
  br label %redo_switch.preheader

redo_switch.preheader:                            ; preds = %if.end, %sw.bb16, %sw.bb
  %len.2.ph = phi i32 [ %9, %sw.bb ], [ %conv20, %sw.bb16 ], [ %len.03215, %if.end ]
  %cmp214 = icmp eq i32 %8, 2
  br label %redo_switch

redo_switch:                                      ; preds = %redo_switch.preheader, %if.end1484
  %explicit_length.0 = phi i8 [ 0, %if.end1484 ], [ 1, %redo_switch.preheader ]
  %cdouble.1 = phi double [ %cdouble.23, %if.end1484 ], [ %cdouble.03211, %redo_switch.preheader ]
  %cuv.1 = phi i64 [ %cuv.25, %if.end1484 ], [ %cuv.03212, %redo_switch.preheader ]
  %checksum.1 = phi i32 [ 0, %if.end1484 ], [ %checksum.03213, %redo_switch.preheader ]
  %bits.1 = phi i32 [ %bits.163538, %if.end1484 ], [ %bits.03214, %redo_switch.preheader ]
  %len.2 = phi i32 [ %len.50, %if.end1484 ], [ %len.2.ph, %redo_switch.preheader ]
  %10 = phi i32 [ %190, %if.end1484 ], [ %6, %redo_switch.preheader ]
  %sp.1 = phi %struct.sv** [ %sp.32, %if.end1484 ], [ %sp.03216, %redo_switch.preheader ]
  %s.addr.1 = phi i8* [ %s.addr.463543, %if.end1484 ], [ %s.addr.03217, %redo_switch.preheader ]
  %cmp21 = icmp ult i8* %s.addr.1, %strend
  %and25 = lshr i32 %10, 8
  %and25.lobit = and i32 %and25, 1
  %and27 = and i32 %10, 255
  %idxprom2068 = zext i32 %and25.lobit to i64
  %first = getelementptr inbounds [2 x %struct.packsize_t]* @packsize, i64 0, i64 %idxprom2068, i32 1
  %11 = load i32* %first, align 8, !tbaa !3
  %sub = sub nsw i32 %and27, %11
  %cmp28 = icmp sgt i32 %sub, -1
  br i1 %cmp28, label %land.lhs.true30, label %if.end86

land.lhs.true30:                                  ; preds = %redo_switch
  %size = getelementptr inbounds [2 x %struct.packsize_t]* @packsize, i64 0, i64 %idxprom2068, i32 2
  %12 = load i32* %size, align 4, !tbaa !3
  %cmp33 = icmp slt i32 %sub, %12
  br i1 %cmp33, label %if.then35, label %if.end86

if.then35:                                        ; preds = %land.lhs.true30
  %idxprom36 = sext i32 %sub to i64
  %array = getelementptr inbounds [2 x %struct.packsize_t]* @packsize, i64 0, i64 %idxprom2068, i32 0
  %13 = load i8** %array, align 16, !tbaa !0
  %arrayidx39 = getelementptr inbounds i8* %13, i64 %idxprom36
  %14 = load i8* %arrayidx39, align 1, !tbaa !1
  %tobool40 = icmp eq i8 %14, 0
  br i1 %tobool40, label %if.end86, label %if.then41

if.then41:                                        ; preds = %if.then35
  %conv43 = zext i8 %14 to i32
  %and44 = and i32 %conv43, 63
  %conv452091 = zext i32 %and44 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast47
  %div = sdiv i64 %sub.ptr.sub48, %conv452091
  %conv49 = sext i32 %len.2 to i64
  %cmp50 = icmp sgt i64 %conv49, %div
  %conv53 = trunc i64 %div to i32
  %conv53.len.2 = select i1 %cmp50, i32 %conv53, i32 %len.2
  %tobool55 = icmp eq i32 %checksum.1, 0
  br i1 %tobool55, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then41
  %and57 = and i32 %conv43, 128
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %if.end86, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false, %if.then41
  %tobool60 = icmp eq i32 %conv53.len.2, 0
  %brmerge = or i1 %tobool60, %tobool4.not
  %cmp65 = icmp eq i32 %and27, 112
  %or.cond2094 = or i1 %brmerge, %cmp65
  %len.4 = select i1 %or.cond2094, i32 %conv53.len.2, i32 1
  %15 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast69 = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast70 = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %sub.ptr.div72 = ashr exact i64 %sub.ptr.sub71, 3
  %conv73 = sext i32 %len.4 to i64
  %cmp74 = icmp slt i64 %sub.ptr.div72, %conv73
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.then59
  %call77 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.1, %struct.sv** %sp.1, i32 %len.4) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.then59
  %sp.2 = phi %struct.sv** [ %call77, %if.then76 ], [ %sp.1, %if.then59 ]
  %16 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %add79 = add nsw i32 %16, %len.4
  %17 = load i32* @PL_tmps_max, align 4, !tbaa !3
  %cmp80 = icmp slt i32 %add79, %17
  br i1 %cmp80, label %if.end86, label %if.then82

if.then82:                                        ; preds = %if.end78
  call void @Perl_tmps_grow(i32 %len.4) #8
  br label %if.end86

if.end86:                                         ; preds = %lor.lhs.false, %if.end78, %if.then35, %if.then82, %land.lhs.true30, %redo_switch
  %len.5 = phi i32 [ %len.4, %if.then82 ], [ %len.4, %if.end78 ], [ %conv53.len.2, %lor.lhs.false ], [ %len.2, %if.then35 ], [ %len.2, %land.lhs.true30 ], [ %len.2, %redo_switch ]
  %sp.3 = phi %struct.sv** [ %sp.2, %if.then82 ], [ %sp.2, %if.end78 ], [ %sp.1, %lor.lhs.false ], [ %sp.1, %if.then35 ], [ %sp.1, %land.lhs.true30 ], [ %sp.1, %redo_switch ]
  switch i32 %10, label %sw.default [
    i32 37, label %sw.bb88
    i32 40, label %sw.bb93
    i32 64, label %sw.bb124
    i32 344, label %sw.bb133
    i32 88, label %if.end86.sw.bb142_crit_edge
    i32 376, label %sw.bb153
    i32 120, label %if.end86.sw.bb168_crit_edge
    i32 47, label %sw.bb179
    i32 65, label %sw.bb180
    i32 90, label %sw.bb180
    i32 97, label %sw.bb180
    i32 66, label %sw.bb282
    i32 98, label %sw.bb282
    i32 72, label %sw.bb473
    i32 104, label %sw.bb473
    i32 99, label %while.cond557.preheader
    i32 67, label %unpack_C
    i32 85, label %sw.bb632
    i32 371, label %while.cond711.preheader
    i32 115, label %while.cond711.preheader
    i32 339, label %while.cond736.preheader
    i32 118, label %while.cond736.preheader
    i32 110, label %while.cond736.preheader
    i32 83, label %while.cond736.preheader
    i32 105, label %while.cond770.preheader
    i32 361, label %while.cond770.preheader
    i32 73, label %while.cond795.preheader
    i32 329, label %while.cond795.preheader
    i32 106, label %while.cond820.preheader
    i32 74, label %while.cond843.preheader
    i32 364, label %while.cond866.preheader
    i32 108, label %while.cond889.preheader
    i32 332, label %while.cond914.preheader
    i32 86, label %while.cond937.preheader
    i32 78, label %while.cond937.preheader
    i32 76, label %while.cond937.preheader
    i32 112, label %while.cond975.preheader
    i32 119, label %while.cond987.outer
    i32 80, label %sw.bb1060
    i32 113, label %while.cond1089.preheader
    i32 81, label %while.cond1123.preheader
    i32 102, label %while.cond1154.preheader
    i32 100, label %while.cond1172.preheader
    i32 70, label %while.cond1188.preheader
    i32 117, label %sw.bb1203
  ]

if.end86.sw.bb142_crit_edge:                      ; preds = %if.end86
  %sub.ptr.lhs.cast144.pre = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub146.pre = sub i64 %sub.ptr.lhs.cast144.pre, %sub.ptr.rhs.cast18
  br label %sw.bb142

if.end86.sw.bb168_crit_edge:                      ; preds = %if.end86
  %sub.ptr.rhs.cast171.pre = ptrtoint i8* %s.addr.1 to i64
  br label %sw.bb168

while.cond557.preheader:                          ; preds = %if.end86
  %dec558243231463168 = add nsw i32 %len.5, -1
  %cmp559243331473169 = icmp sgt i32 %len.5, 0
  br i1 %cmp559243331473169, label %while.body561.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body561.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond557.preheader
  %tobool569 = icmp eq i32 %checksum.1, 0
  %cmp576 = icmp sgt i32 %checksum.1, 64
  br label %while.body561.lr.ph.lr.ph

while.cond711.preheader:                          ; preds = %if.end86, %if.end86
  %dec712238630563078 = add nsw i32 %len.5, -1
  %cmp713238730573079 = icmp sgt i32 %len.5, 0
  br i1 %cmp713238730573079, label %while.body715.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body715.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond711.preheader
  %tobool717 = icmp eq i32 %checksum.1, 0
  %cmp724 = icmp sgt i32 %checksum.1, 64
  br label %while.body715.lr.ph.lr.ph

while.cond736.preheader:                          ; preds = %if.end86, %if.end86, %if.end86, %if.end86
  %dec737236930133035 = add nsw i32 %len.5, -1
  %cmp738237030143036 = icmp sgt i32 %len.5, 0
  br i1 %cmp738237030143036, label %while.body740.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body740.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond736.preheader
  %tobool751 = icmp eq i32 %checksum.1, 0
  %cmp758 = icmp sgt i32 %checksum.1, 64
  br label %while.body740.lr.ph.lr.ph

while.cond770.preheader:                          ; preds = %if.end86, %if.end86
  %dec771235229702992 = add nsw i32 %len.5, -1
  %cmp772235329712993 = icmp sgt i32 %len.5, 0
  br i1 %cmp772235329712993, label %while.body774.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body774.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond770.preheader
  %tobool776 = icmp eq i32 %checksum.1, 0
  %cmp783 = icmp sgt i32 %checksum.1, 64
  br label %while.body774.lr.ph.lr.ph

while.cond795.preheader:                          ; preds = %if.end86, %if.end86
  %dec796233529272949 = add nsw i32 %len.5, -1
  %cmp797233629282950 = icmp sgt i32 %len.5, 0
  br i1 %cmp797233629282950, label %while.body799.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body799.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond795.preheader
  %tobool801 = icmp eq i32 %checksum.1, 0
  %cmp808 = icmp sgt i32 %checksum.1, 64
  br label %while.body799.lr.ph.lr.ph

while.cond820.preheader:                          ; preds = %if.end86
  %dec821231828842906 = add nsw i32 %len.5, -1
  %cmp822231928852907 = icmp sgt i32 %len.5, 0
  br i1 %cmp822231928852907, label %while.body824.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body824.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond820.preheader
  %tobool826 = icmp eq i32 %checksum.1, 0
  %cmp832 = icmp sgt i32 %checksum.1, 64
  br label %while.body824.lr.ph.lr.ph

while.cond843.preheader:                          ; preds = %if.end86
  %dec844230128412863 = add nsw i32 %len.5, -1
  %cmp845230228422864 = icmp sgt i32 %len.5, 0
  br i1 %cmp845230228422864, label %while.body847.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body847.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond843.preheader
  %tobool849 = icmp eq i32 %checksum.1, 0
  %cmp855 = icmp sgt i32 %checksum.1, 64
  br label %while.body847.lr.ph.lr.ph

while.cond866.preheader:                          ; preds = %if.end86
  %dec867228427982820 = add nsw i32 %len.5, -1
  %cmp868228527992821 = icmp sgt i32 %len.5, 0
  br i1 %cmp868228527992821, label %while.body870.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body870.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond866.preheader
  %tobool872 = icmp eq i32 %checksum.1, 0
  %cmp878 = icmp sgt i32 %checksum.1, 64
  br label %while.body870.lr.ph.lr.ph

while.cond889.preheader:                          ; preds = %if.end86
  %dec890226727552777 = add nsw i32 %len.5, -1
  %cmp891226827562778 = icmp sgt i32 %len.5, 0
  br i1 %cmp891226827562778, label %while.body893.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body893.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond889.preheader
  %tobool895 = icmp eq i32 %checksum.1, 0
  %cmp902 = icmp sgt i32 %checksum.1, 64
  br label %while.body893.lr.ph.lr.ph

while.cond914.preheader:                          ; preds = %if.end86
  %dec915225027122734 = add nsw i32 %len.5, -1
  %cmp916225127132735 = icmp sgt i32 %len.5, 0
  br i1 %cmp916225127132735, label %while.body918.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body918.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond914.preheader
  %tobool920 = icmp eq i32 %checksum.1, 0
  %cmp926 = icmp sgt i32 %checksum.1, 64
  br label %while.body918.lr.ph.lr.ph

while.cond937.preheader:                          ; preds = %if.end86, %if.end86, %if.end86
  %dec938223326692691 = add nsw i32 %len.5, -1
  %cmp939223426702692 = icmp sgt i32 %len.5, 0
  br i1 %cmp939223426702692, label %while.body941.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body941.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond937.preheader
  %tobool956 = icmp eq i32 %checksum.1, 0
  %cmp963 = icmp sgt i32 %checksum.1, 64
  br label %while.body941.lr.ph.lr.ph

while.cond975.preheader:                          ; preds = %if.end86
  %dec9762216 = add i32 %len.5, -1
  %cmp9772217 = icmp sgt i32 %len.5, 0
  br i1 %cmp9772217, label %while.body979.lr.ph, label %sw.epilog1386

while.body979.lr.ph:                              ; preds = %while.cond975.preheader
  %18 = zext i32 %dec9762216 to i64
  %scevgep.sum = add i64 %18, 1
  %scevgep3286 = getelementptr %struct.sv** %sp.3, i64 %scevgep.sum
  %19 = shl nuw nsw i64 %18, 3
  br label %while.body979

while.cond1089.preheader:                         ; preds = %if.end86
  %dec1090218726262648 = add nsw i32 %len.5, -1
  %cmp1091218826272649 = icmp sgt i32 %len.5, 0
  br i1 %cmp1091218826272649, label %while.body1093.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body1093.lr.ph.lr.ph.lr.ph:                 ; preds = %while.cond1089.preheader
  %tobool1095 = icmp eq i32 %checksum.1, 0
  %cmp1112 = icmp sgt i32 %checksum.1, 64
  br label %while.body1093.lr.ph.lr.ph

while.cond1123.preheader:                         ; preds = %if.end86
  %dec1124217025832605 = add nsw i32 %len.5, -1
  %cmp1125217125842606 = icmp sgt i32 %len.5, 0
  br i1 %cmp1125217125842606, label %while.body1127.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body1127.lr.ph.lr.ph.lr.ph:                 ; preds = %while.cond1123.preheader
  %tobool1129 = icmp eq i32 %checksum.1, 0
  %cmp1143 = icmp sgt i32 %checksum.1, 64
  br label %while.body1127.lr.ph.lr.ph

while.cond1154.preheader:                         ; preds = %if.end86
  %dec115521532564 = add nsw i32 %len.5, -1
  %cmp115621542565 = icmp sgt i32 %len.5, 0
  br i1 %cmp115621542565, label %while.body1158.lr.ph.lr.ph, label %sw.epilog1386

while.body1158.lr.ph.lr.ph:                       ; preds = %while.cond1154.preheader
  %tobool1160 = icmp eq i32 %checksum.1, 0
  br label %while.body1158.lr.ph

while.cond1172.preheader:                         ; preds = %if.end86
  %dec117321412549 = add nsw i32 %len.5, -1
  %cmp117421422550 = icmp sgt i32 %len.5, 0
  br i1 %cmp117421422550, label %while.body1176.lr.ph.lr.ph, label %sw.epilog1386

while.body1176.lr.ph.lr.ph:                       ; preds = %while.cond1172.preheader
  %tobool1178 = icmp eq i32 %checksum.1, 0
  br label %while.body1176.lr.ph

while.cond1188.preheader:                         ; preds = %if.end86
  %dec118921292534 = add nsw i32 %len.5, -1
  %cmp119021302535 = icmp sgt i32 %len.5, 0
  br i1 %cmp119021302535, label %while.body1192.lr.ph.lr.ph, label %sw.epilog1386

while.body1192.lr.ph.lr.ph:                       ; preds = %while.cond1188.preheader
  %tobool1194 = icmp eq i32 %checksum.1, 0
  br label %while.body1192.lr.ph

sw.default:                                       ; preds = %if.end86
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str32, i64 0, i64 0), i32 %and27) #8
  br label %sw.bb88

sw.bb88:                                          ; preds = %if.end86, %sw.default
  %cmp89 = icmp eq i32 %8, 0
  %.len.5 = select i1 %cmp89, i32 16, i32 %len.5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end1441, %sw.bb88
  %cdouble.0.be = phi double [ 0.000000e+00, %sw.bb88 ], [ %cdouble.23, %if.end1441 ]
  %cuv.0.be = phi i64 [ 0, %sw.bb88 ], [ %cuv.25, %if.end1441 ]
  %checksum.0.be = phi i32 [ %.len.5, %sw.bb88 ], [ 0, %if.end1441 ]
  %bits.0.be = phi i32 [ %bits.1, %sw.bb88 ], [ %bits.163538, %if.end1441 ]
  %len.0.be = phi i32 [ %.len.5, %sw.bb88 ], [ %len.493540, %if.end1441 ]
  %sp.0.be = phi %struct.sv** [ %sp.3, %sw.bb88 ], [ %sp.31, %if.end1441 ]
  %s.addr.0.be = phi i8* [ %s.addr.1, %sw.bb88 ], [ %s.addr.463543, %if.end1441 ]
  %call = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #7
  %tobool = icmp eq i8 %call, 0
  br i1 %tobool, label %while.end1487, label %while.body

sw.bb93:                                          ; preds = %if.end86
  store i8* %s.addr.1, i8** %ss, align 8, !tbaa !0
  call void @llvm.lifetime.start(i64 16, i8* %savsym.sroa.0.0.cast1549)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.0.0.cast1549, i8* %3, i64 16, i32 8, i1 false)
  %savsym.sroa.1.16.copyload = load i8** %savsym.sroa.1.16.idx1517, align 8
  %savsym.sroa.2.24.copyload = load i8** %savsym.sroa.2.24.idx1521, align 8
  %20 = load i64* %4, align 8
  %21 = bitcast i32* %howlen15 to i64*
  %22 = load i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i64 %22, 32
  %25 = trunc i64 %24 to i32
  %26 = bitcast i32* %flags to i64*
  %savsym.sroa.6.48.copyload = load i64* %26, align 8
  %27 = trunc i64 %savsym.sroa.6.48.copyload to i32
  %28 = lshr i64 %savsym.sroa.6.48.copyload, 32
  %29 = trunc i64 %28 to i32
  store i32 %27, i32* %flags, align 4, !tbaa !3
  store i8* %savsym.sroa.2.24.copyload, i8** %patend, align 8, !tbaa !0
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %savsym.sroa.5.44.idx1535, align 4, !tbaa !3
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %and103 = and i32 %27, 8
  %tobool104 = icmp eq i32 %and103, 0
  %cmp115 = icmp eq i32 %23, 2
  br label %while.cond98

while.cond98:                                     ; preds = %while.body100, %sw.bb93
  %.pre3533 = phi i32 [ %27, %sw.bb93 ], [ %storemerge, %while.body100 ]
  %30 = phi i8* [ %s.addr.1, %sw.bb93 ], [ %32, %while.body100 ]
  %len.7 = phi i32 [ %len.5, %sw.bb93 ], [ %dec, %while.body100 ]
  %dec = add nsw i32 %len.7, -1
  %tobool99 = icmp eq i32 %len.7, 0
  br i1 %tobool99, label %while.end, label %while.body100

while.body100:                                    ; preds = %while.cond98
  store i8* %savsym.sroa.1.16.copyload, i8** %patptr, align 8, !tbaa !0
  %call101 = call fastcc i32 @S_unpack_rec(%struct.tempsym_t* %symptr, i8* %30, i8* %strbeg, i8* %strend, i8** %ss) #7
  %31 = load i32* %flags, align 4, !tbaa !3
  %and109 = and i32 %31, -9
  %or107 = or i32 %31, 8
  %storemerge = select i1 %tobool104, i32 %and109, i32 %or107
  store i32 %storemerge, i32* %flags, align 4, !tbaa !3
  %32 = load i8** %ss, align 8, !tbaa !0
  %cmp111 = icmp eq i8* %32, %strend
  %or.cond2095 = and i1 %cmp111, %cmp115
  br i1 %or.cond2095, label %while.end, label %while.cond98

while.end:                                        ; preds = %while.body100, %while.cond98
  %33 = phi i32 [ %.pre3533, %while.cond98 ], [ %storemerge, %while.body100 ]
  %34 = phi i8* [ %30, %while.cond98 ], [ %strend, %while.body100 ]
  %35 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %savsym.sroa.0.0.cast1549, i64 16, i32 8, i1 false)
  store i8* %savsym.sroa.1.16.copyload, i8** %savsym.sroa.1.16.idx1517, align 8
  store i8* %savsym.sroa.2.24.copyload, i8** %savsym.sroa.2.24.idx1521, align 8
  store i64 %20, i64* %4, align 8
  store i32 %23, i32* %howlen15, align 8
  store i32 %25, i32* %savsym.sroa.5.44.idx1535, align 4
  store i32 %33, i32* %flags, align 8
  store i32 %29, i32* %savsym.sroa.7.52.cast1543, align 4
  call void @llvm.lifetime.end(i64 16, i8* %savsym.sroa.0.0.cast1549)
  br label %sw.epilog1386

sw.bb124:                                         ; preds = %if.end86
  %conv125 = sext i32 %len.5 to i64
  %cmp129 = icmp sgt i64 %conv125, %sub.ptr.sub128
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %sw.bb124
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str33, i64 0, i64 0)) #8
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %sw.bb124
  %add.ptr = getelementptr inbounds i8* %s, i64 %conv125
  br label %sw.epilog1386

sw.bb133:                                         ; preds = %if.end86
  %tobool134 = icmp eq i32 %len.5, 0
  %sub.ptr.lhs.cast137 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast18
  %36 = sext i32 %len.5 to i64
  %conv140 = select i1 %tobool134, i64 1, i64 %36
  %rem = srem i64 %sub.ptr.sub139, %conv140
  %conv141 = trunc i64 %rem to i32
  br label %sw.bb142

sw.bb142:                                         ; preds = %if.end86.sw.bb142_crit_edge, %sw.bb133
  %sub.ptr.sub146.pre-phi = phi i64 [ %sub.ptr.sub146.pre, %if.end86.sw.bb142_crit_edge ], [ %sub.ptr.sub139, %sw.bb133 ]
  %len.9 = phi i32 [ %len.5, %if.end86.sw.bb142_crit_edge ], [ %conv141, %sw.bb133 ]
  %conv143 = sext i32 %len.9 to i64
  %cmp147 = icmp sgt i64 %conv143, %sub.ptr.sub146.pre-phi
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %sw.bb142
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str34, i64 0, i64 0)) #8
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %sw.bb142
  %idx.neg = sub i64 0, %conv143
  %add.ptr152 = getelementptr inbounds i8* %s.addr.1, i64 %idx.neg
  br label %sw.epilog1386

sw.bb153:                                         ; preds = %if.end86
  %tobool154 = icmp eq i32 %len.5, 0
  %.len.52097 = select i1 %tobool154, i32 1, i32 %len.5
  %sub.ptr.lhs.cast157 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast18
  %conv160 = sext i32 %.len.52097 to i64
  %rem161 = srem i64 %sub.ptr.sub159, %conv160
  %conv162 = trunc i64 %rem161 to i32
  %tobool163 = icmp eq i32 %conv162, 0
  %sub165 = sub nsw i32 %.len.52097, %conv162
  %.sub165 = select i1 %tobool163, i32 0, i32 %sub165
  br label %sw.bb168

sw.bb168:                                         ; preds = %if.end86.sw.bb168_crit_edge, %sw.bb153
  %sub.ptr.rhs.cast171.pre-phi = phi i64 [ %sub.ptr.rhs.cast171.pre, %if.end86.sw.bb168_crit_edge ], [ %sub.ptr.lhs.cast157, %sw.bb153 ]
  %len.11 = phi i32 [ %len.5, %if.end86.sw.bb168_crit_edge ], [ %.sub165, %sw.bb153 ]
  %conv169 = sext i32 %len.11 to i64
  %sub.ptr.sub172 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast171.pre-phi
  %cmp173 = icmp sgt i64 %conv169, %sub.ptr.sub172
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %sw.bb168
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str35, i64 0, i64 0)) #8
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %sw.bb168
  %add.ptr178 = getelementptr inbounds i8* %s.addr.1, i64 %conv169
  br label %sw.epilog1386

sw.bb179:                                         ; preds = %if.end86
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str36, i64 0, i64 0)) #8
  br label %sw.epilog1386

sw.bb180:                                         ; preds = %if.end86, %if.end86, %if.end86
  %conv181 = sext i32 %len.5 to i64
  %sub.ptr.rhs.cast183 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast183
  %cmp185 = icmp sgt i64 %conv181, %sub.ptr.sub184
  %conv191 = trunc i64 %sub.ptr.sub184 to i32
  %conv191.len.5 = select i1 %cmp185, i32 %conv191, i32 %len.5
  %tobool193 = icmp eq i32 %checksum.1, 0
  br i1 %tobool193, label %if.end195, label %while.cond599.preheader

while.cond599.preheader:                          ; preds = %if.end596, %sw.bb180
  %len.27.ph = phi i32 [ %conv191.len.5, %sw.bb180 ], [ %len.5, %if.end596 ]
  %dec60025103185 = add nsw i32 %len.27.ph, -1
  %cmp60125113186 = icmp sgt i32 %len.27.ph, 0
  br i1 %cmp60125113186, label %while.body603.lr.ph.lr.ph, label %sw.epilog1386

while.body603.lr.ph.lr.ph:                        ; preds = %while.cond599.preheader
  %cmp607 = icmp sgt i32 %checksum.1, 64
  br label %while.body603.lr.ph

if.end195:                                        ; preds = %sw.bb180
  %conv196 = sext i32 %conv191.len.5 to i64
  %call197 = call %struct.sv* @Perl_newSVpvn(i8* %s.addr.1, i64 %conv196) #8
  %cmp198 = icmp sgt i32 %conv191.len.5, 0
  br i1 %cmp198, label %land.lhs.true200, label %if.end268

land.lhs.true200:                                 ; preds = %if.end195
  %cmp204 = icmp eq i32 %10, 90
  switch i32 %10, label %if.end268 [
    i32 90, label %if.then206
    i32 65, label %if.then206
  ]

if.then206:                                       ; preds = %land.lhs.true200, %land.lhs.true200
  %sv_any = getelementptr inbounds %struct.sv* %call197, i64 0, i32 0
  %37 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %37 to i8**
  %38 = load i8** %xpv_pv, align 8, !tbaa !0
  br i1 %cmp204, label %while.cond210, label %if.else225

while.cond210:                                    ; preds = %if.then206, %while.cond210
  %s.addr.2 = phi i8* [ %incdec.ptr, %while.cond210 ], [ %38, %if.then206 ]
  %39 = load i8* %s.addr.2, align 1, !tbaa !1
  %tobool211 = icmp eq i8 %39, 0
  %incdec.ptr = getelementptr inbounds i8* %s.addr.2, i64 1
  br i1 %tobool211, label %while.end213, label %while.cond210

while.end213:                                     ; preds = %while.cond210
  br i1 %cmp214, label %if.then216, label %if.end261

if.then216:                                       ; preds = %while.end213
  %sub.ptr.lhs.cast219 = ptrtoint i8* %s.addr.2 to i64
  %sub.ptr.rhs.cast220 = ptrtoint i8* %38 to i64
  %sub.ptr.sub221 = add i64 %sub.ptr.lhs.cast219, 1
  %add222 = sub i64 %sub.ptr.sub221, %sub.ptr.rhs.cast220
  %conv223 = trunc i64 %add222 to i32
  br label %if.end261

if.else225:                                       ; preds = %if.then206
  %add.ptr229.sum = add i64 %conv196, -1
  %add.ptr230 = getelementptr inbounds i8* %38, i64 %add.ptr229.sum
  %cmp2342519 = icmp slt i64 %add.ptr229.sum, 0
  br i1 %cmp2342519, label %while.end259, label %land.rhs

land.rhs:                                         ; preds = %if.else225, %while.body257
  %s.addr.32520 = phi i8* [ %incdec.ptr258, %while.body257 ], [ %add.ptr230, %if.else225 ]
  %40 = load i8* %s.addr.32520, align 1, !tbaa !1
  switch i8 %40, label %while.end259 [
    i8 0, label %while.body257
    i8 32, label %while.body257
    i8 9, label %while.body257
    i8 10, label %while.body257
    i8 13, label %while.body257
    i8 12, label %while.body257
  ]

while.body257:                                    ; preds = %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs
  %incdec.ptr258 = getelementptr inbounds i8* %s.addr.32520, i64 -1
  %cmp234 = icmp ult i8* %incdec.ptr258, %38
  br i1 %cmp234, label %while.end259, label %land.rhs

while.end259:                                     ; preds = %while.body257, %land.rhs, %if.else225
  %s.addr.3.lcssa = phi i8* [ %add.ptr230, %if.else225 ], [ %s.addr.32520, %land.rhs ], [ %incdec.ptr258, %while.body257 ]
  %incdec.ptr260 = getelementptr inbounds i8* %s.addr.3.lcssa, i64 1
  store i8 0, i8* %incdec.ptr260, align 1, !tbaa !1
  %.pre = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv263.phi.trans.insert = bitcast i8* %.pre to i8**
  %.pre3532 = load i8** %xpv_pv263.phi.trans.insert, align 8, !tbaa !0
  br label %if.end261

if.end261:                                        ; preds = %while.end213, %if.then216, %while.end259
  %41 = phi i8* [ %38, %if.then216 ], [ %38, %while.end213 ], [ %.pre3532, %while.end259 ]
  %42 = phi i8* [ %37, %if.then216 ], [ %37, %while.end213 ], [ %.pre, %while.end259 ]
  %len.13 = phi i32 [ %conv223, %if.then216 ], [ %conv191.len.5, %while.end213 ], [ %conv191.len.5, %while.end259 ]
  %s.addr.4 = phi i8* [ %s.addr.2, %if.then216 ], [ %s.addr.2, %while.end213 ], [ %incdec.ptr260, %while.end259 ]
  %sub.ptr.lhs.cast264 = ptrtoint i8* %s.addr.4 to i64
  %sub.ptr.rhs.cast265 = ptrtoint i8* %41 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %xpv_cur = getelementptr inbounds i8* %42, i64 8
  %43 = bitcast i8* %xpv_cur to i64*
  store i64 %sub.ptr.sub266, i64* %43, align 8, !tbaa !4
  br label %if.end268

if.end268:                                        ; preds = %land.lhs.true200, %if.end261, %if.end195
  %len.14 = phi i32 [ %len.13, %if.end261 ], [ %conv191.len.5, %land.lhs.true200 ], [ %conv191.len.5, %if.end195 ]
  %idx.ext269 = sext i32 %len.14 to i64
  %add.ptr270 = getelementptr inbounds i8* %s.addr.1, i64 %idx.ext269
  %44 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast271 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.rhs.cast272 = ptrtoint %struct.sv** %sp.3 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %cmp275 = icmp slt i64 %sub.ptr.sub273, 8
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %if.end268
  %call278 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3, %struct.sv** %sp.3, i32 1) #8
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end268
  %sp.4 = phi %struct.sv** [ %call278, %if.then277 ], [ %sp.3, %if.end268 ]
  %call280 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call197) #8
  %incdec.ptr281 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %call280, %struct.sv** %incdec.ptr281, align 8, !tbaa !0
  br label %sw.epilog1386

sw.bb282:                                         ; preds = %if.end86, %if.end86
  br i1 %cmp214, label %sw.bb282.if.then292_crit_edge, label %lor.lhs.false285

sw.bb282.if.then292_crit_edge:                    ; preds = %sw.bb282
  %sub.ptr.rhs.cast294.pre = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub295.pre = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast294.pre
  %mul296.pre = shl nsw i64 %sub.ptr.sub295.pre, 3
  br label %if.then292

lor.lhs.false285:                                 ; preds = %sw.bb282
  %conv286 = sext i32 %len.5 to i64
  %sub.ptr.rhs.cast288 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub289 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast288
  %mul = shl nsw i64 %sub.ptr.sub289, 3
  %cmp290 = icmp sgt i64 %conv286, %mul
  br i1 %cmp290, label %if.then292, label %if.end298

if.then292:                                       ; preds = %sw.bb282.if.then292_crit_edge, %lor.lhs.false285
  %mul296.pre-phi = phi i64 [ %mul296.pre, %sw.bb282.if.then292_crit_edge ], [ %mul, %lor.lhs.false285 ]
  %conv297 = trunc i64 %mul296.pre-phi to i32
  br label %if.end298

if.end298:                                        ; preds = %if.then292, %lor.lhs.false285
  %len.15 = phi i32 [ %conv297, %if.then292 ], [ %len.5, %lor.lhs.false285 ]
  %tobool299 = icmp eq i32 %checksum.1, 0
  br i1 %tobool299, label %if.end407, label %if.then300

if.then300:                                       ; preds = %if.end298
  %45 = load i8** @PL_bitcount, align 8, !tbaa !0
  %tobool301 = icmp eq i8* %45, null
  br i1 %tobool301, label %if.then302, label %while.cond364.preheader

if.then302:                                       ; preds = %if.then300
  %call303 = call i8* @Perl_safesysmalloc(i64 256) #8
  store i8* %call303, i8** @PL_bitcount, align 8, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %call303, i8 0, i64 256, i32 1, i1 false)
  br label %for.body

for.body:                                         ; preds = %for.inc, %if.then302
  %indvars.iv3492 = phi i64 [ 1, %if.then302 ], [ %indvars.iv.next3493, %for.inc ]
  %46 = trunc i64 %indvars.iv3492 to i32
  %and306 = and i32 %46, 1
  %tobool307 = icmp eq i32 %and306, 0
  br i1 %tobool307, label %if.end312, label %if.then308

if.then308:                                       ; preds = %for.body
  %47 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds i8* %47, i64 %indvars.iv3492
  %48 = load i8* %arrayidx310, align 1, !tbaa !1
  %inc311 = add i8 %48, 1
  store i8 %inc311, i8* %arrayidx310, align 1, !tbaa !1
  br label %if.end312

if.end312:                                        ; preds = %for.body, %if.then308
  %and313 = and i32 %46, 2
  %tobool314 = icmp eq i32 %and313, 0
  br i1 %tobool314, label %if.end319, label %if.then315

if.then315:                                       ; preds = %if.end312
  %49 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds i8* %49, i64 %indvars.iv3492
  %50 = load i8* %arrayidx317, align 1, !tbaa !1
  %inc318 = add i8 %50, 1
  store i8 %inc318, i8* %arrayidx317, align 1, !tbaa !1
  br label %if.end319

if.end319:                                        ; preds = %if.end312, %if.then315
  %and320 = and i32 %46, 4
  %tobool321 = icmp eq i32 %and320, 0
  br i1 %tobool321, label %if.end326, label %if.then322

if.then322:                                       ; preds = %if.end319
  %51 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx324 = getelementptr inbounds i8* %51, i64 %indvars.iv3492
  %52 = load i8* %arrayidx324, align 1, !tbaa !1
  %inc325 = add i8 %52, 1
  store i8 %inc325, i8* %arrayidx324, align 1, !tbaa !1
  br label %if.end326

if.end326:                                        ; preds = %if.end319, %if.then322
  %and327 = and i32 %46, 8
  %tobool328 = icmp eq i32 %and327, 0
  br i1 %tobool328, label %if.end333, label %if.then329

if.then329:                                       ; preds = %if.end326
  %53 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx331 = getelementptr inbounds i8* %53, i64 %indvars.iv3492
  %54 = load i8* %arrayidx331, align 1, !tbaa !1
  %inc332 = add i8 %54, 1
  store i8 %inc332, i8* %arrayidx331, align 1, !tbaa !1
  br label %if.end333

if.end333:                                        ; preds = %if.end326, %if.then329
  %and334 = and i32 %46, 16
  %tobool335 = icmp eq i32 %and334, 0
  br i1 %tobool335, label %if.end340, label %if.then336

if.then336:                                       ; preds = %if.end333
  %55 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx338 = getelementptr inbounds i8* %55, i64 %indvars.iv3492
  %56 = load i8* %arrayidx338, align 1, !tbaa !1
  %inc339 = add i8 %56, 1
  store i8 %inc339, i8* %arrayidx338, align 1, !tbaa !1
  br label %if.end340

if.end340:                                        ; preds = %if.end333, %if.then336
  %and341 = and i32 %46, 32
  %tobool342 = icmp eq i32 %and341, 0
  br i1 %tobool342, label %if.end347, label %if.then343

if.then343:                                       ; preds = %if.end340
  %57 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx345 = getelementptr inbounds i8* %57, i64 %indvars.iv3492
  %58 = load i8* %arrayidx345, align 1, !tbaa !1
  %inc346 = add i8 %58, 1
  store i8 %inc346, i8* %arrayidx345, align 1, !tbaa !1
  br label %if.end347

if.end347:                                        ; preds = %if.end340, %if.then343
  %and348 = and i32 %46, 64
  %tobool349 = icmp eq i32 %and348, 0
  br i1 %tobool349, label %if.end354, label %if.then350

if.then350:                                       ; preds = %if.end347
  %59 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx352 = getelementptr inbounds i8* %59, i64 %indvars.iv3492
  %60 = load i8* %arrayidx352, align 1, !tbaa !1
  %inc353 = add i8 %60, 1
  store i8 %inc353, i8* %arrayidx352, align 1, !tbaa !1
  br label %if.end354

if.end354:                                        ; preds = %if.end347, %if.then350
  %and355 = and i32 %46, 128
  %tobool356 = icmp eq i32 %and355, 0
  br i1 %tobool356, label %for.inc, label %if.then357

if.then357:                                       ; preds = %if.end354
  %61 = load i8** @PL_bitcount, align 8, !tbaa !0
  %arrayidx359 = getelementptr inbounds i8* %61, i64 %indvars.iv3492
  %62 = load i8* %arrayidx359, align 1, !tbaa !1
  %inc360 = add i8 %62, 1
  store i8 %inc360, i8* %arrayidx359, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end354, %if.then357
  %indvars.iv.next3493 = add i64 %indvars.iv3492, 1
  %lftr.wideiv3494 = trunc i64 %indvars.iv.next3493 to i32
  %exitcond3495 = icmp eq i32 %lftr.wideiv3494, 256
  br i1 %exitcond3495, label %while.cond364.preheader, label %for.body

while.cond364.preheader:                          ; preds = %for.inc, %if.then300
  %bits.3.ph = phi i32 [ %bits.1, %if.then300 ], [ 256, %for.inc ]
  %cmp3652460 = icmp sgt i32 %len.15, 7
  br i1 %cmp3652460, label %while.body367.lr.ph, label %while.end374

while.body367.lr.ph:                              ; preds = %while.cond364.preheader
  %63 = load i8** @PL_bitcount, align 8, !tbaa !0
  %64 = add i32 %len.15, -8
  %65 = lshr i32 %64, 3
  %66 = shl nuw i32 %65, 3
  %67 = sub i32 %64, %66
  %68 = zext i32 %65 to i64
  br label %while.body367

while.body367:                                    ; preds = %while.body367.lr.ph, %while.body367
  %s.addr.62463 = phi i8* [ %s.addr.1, %while.body367.lr.ph ], [ %incdec.ptr368, %while.body367 ]
  %len.162462 = phi i32 [ %len.15, %while.body367.lr.ph ], [ %sub373, %while.body367 ]
  %cuv.22461 = phi i64 [ %cuv.1, %while.body367.lr.ph ], [ %add372, %while.body367 ]
  %incdec.ptr368 = getelementptr inbounds i8* %s.addr.62463, i64 1
  %69 = load i8* %s.addr.62463, align 1, !tbaa !1
  %idxprom369 = zext i8 %69 to i64
  %arrayidx370 = getelementptr inbounds i8* %63, i64 %idxprom369
  %70 = load i8* %arrayidx370, align 1, !tbaa !1
  %conv371 = sext i8 %70 to i64
  %add372 = add i64 %conv371, %cuv.22461
  %sub373 = add nsw i32 %len.162462, -8
  %cmp365 = icmp sgt i32 %sub373, 7
  br i1 %cmp365, label %while.body367, label %while.cond364.while.end374_crit_edge

while.cond364.while.end374_crit_edge:             ; preds = %while.body367
  %scevgep3496.sum = add i64 %68, 1
  %scevgep3497 = getelementptr i8* %s.addr.1, i64 %scevgep3496.sum
  br label %while.end374

while.end374:                                     ; preds = %while.cond364.while.end374_crit_edge, %while.cond364.preheader
  %s.addr.6.lcssa = phi i8* [ %scevgep3497, %while.cond364.while.end374_crit_edge ], [ %s.addr.1, %while.cond364.preheader ]
  %len.16.lcssa = phi i32 [ %67, %while.cond364.while.end374_crit_edge ], [ %len.15, %while.cond364.preheader ]
  %cuv.2.lcssa = phi i64 [ %add372, %while.cond364.while.end374_crit_edge ], [ %cuv.1, %while.cond364.preheader ]
  %tobool375 = icmp eq i32 %len.16.lcssa, 0
  br i1 %tobool375, label %sw.epilog1386, label %if.then376

if.then376:                                       ; preds = %while.end374
  %incdec.ptr377 = getelementptr inbounds i8* %s.addr.6.lcssa, i64 1
  %71 = load i8* %s.addr.6.lcssa, align 1, !tbaa !1
  %conv378 = sext i8 %71 to i32
  %cmp379 = icmp eq i32 %10, 98
  %dec3832477 = add nsw i32 %len.16.lcssa, -1
  %cmp3842478 = icmp sgt i32 %len.16.lcssa, 0
  br i1 %cmp379, label %while.cond382.preheader, label %while.cond394.preheader

while.cond382.preheader:                          ; preds = %if.then376
  br i1 %cmp3842478, label %while.body386, label %sw.epilog1386

while.cond394.preheader:                          ; preds = %if.then376
  br i1 %cmp3842478, label %while.body398, label %sw.epilog1386

while.body386:                                    ; preds = %while.cond382.preheader, %while.body386
  %dec3832481 = phi i32 [ %dec383, %while.body386 ], [ %dec3832477, %while.cond382.preheader ]
  %bits.42480 = phi i32 [ %shr, %while.body386 ], [ %conv378, %while.cond382.preheader ]
  %cuv.32479 = phi i64 [ %cuv.3.inc390, %while.body386 ], [ %cuv.2.lcssa, %while.cond382.preheader ]
  %and387 = and i32 %bits.42480, 1
  %inc390 = zext i32 %and387 to i64
  %cuv.3.inc390 = add i64 %inc390, %cuv.32479
  %shr = ashr i32 %bits.42480, 1
  %dec383 = add nsw i32 %dec3832481, -1
  %cmp384 = icmp sgt i32 %dec3832481, 0
  br i1 %cmp384, label %while.body386, label %sw.epilog1386

while.body398:                                    ; preds = %while.cond394.preheader, %while.body398
  %dec3952472 = phi i32 [ %dec395, %while.body398 ], [ %dec3832477, %while.cond394.preheader ]
  %bits.52471 = phi i32 [ %shl, %while.body398 ], [ %conv378, %while.cond394.preheader ]
  %cuv.52470 = phi i64 [ %cuv.5.inc402, %while.body398 ], [ %cuv.2.lcssa, %while.cond394.preheader ]
  %and399 = lshr i32 %bits.52471, 7
  %and399.lobit = and i32 %and399, 1
  %inc402 = zext i32 %and399.lobit to i64
  %cuv.5.inc402 = add i64 %inc402, %cuv.52470
  %shl = shl i32 %bits.52471, 1
  %dec395 = add nsw i32 %dec3952472, -1
  %cmp396 = icmp sgt i32 %dec3952472, 0
  br i1 %cmp396, label %while.body398, label %sw.epilog1386

if.end407:                                        ; preds = %if.end298
  %add408 = add nsw i32 %len.15, 1
  %conv409 = sext i32 %add408 to i64
  %call410 = call %struct.sv* @Perl_newSV(i64 %conv409) #8
  %conv411 = sext i32 %len.15 to i64
  %sv_any412 = getelementptr inbounds %struct.sv* %call410, i64 0, i32 0
  %72 = load i8** %sv_any412, align 8, !tbaa !0
  %xpv_cur413 = getelementptr inbounds i8* %72, i64 8
  %73 = bitcast i8* %xpv_cur413 to i64*
  store i64 %conv411, i64* %73, align 8, !tbaa !4
  %sv_flags = getelementptr inbounds %struct.sv* %call410, i64 0, i32 2
  %74 = load i32* %sv_flags, align 4, !tbaa !3
  %or414 = or i32 %74, 67371008
  store i32 %or414, i32* %sv_flags, align 4, !tbaa !3
  %xpv_pv416 = bitcast i8* %72 to i8**
  %75 = load i8** %xpv_pv416, align 8, !tbaa !0
  %cmp417 = icmp eq i32 %10, 98
  %cmp4212495 = icmp sgt i32 %len.15, 0
  br i1 %cmp417, label %for.cond420.preheader, label %for.cond440.preheader

for.cond420.preheader:                            ; preds = %if.end407
  br i1 %cmp4212495, label %for.body423.lr.ph, label %if.end461

for.body423.lr.ph:                                ; preds = %for.cond420.preheader
  %76 = add i32 %len.15, -1
  %77 = zext i32 %76 to i64
  br label %for.body423

for.cond440.preheader:                            ; preds = %if.end407
  br i1 %cmp4212495, label %for.body443.lr.ph, label %if.end461

for.body443.lr.ph:                                ; preds = %for.cond440.preheader
  %78 = add i32 %len.15, -1
  %79 = zext i32 %78 to i64
  br label %for.body443

for.body423:                                      ; preds = %if.end431, %for.body423.lr.ph
  %s.addr.72499 = phi i8* [ %s.addr.1, %for.body423.lr.ph ], [ %s.addr.8, %if.end431 ]
  %len.192498 = phi i32 [ 0, %for.body423.lr.ph ], [ %inc437, %if.end431 ]
  %bits.62497 = phi i32 [ %bits.1, %for.body423.lr.ph ], [ %bits.7, %if.end431 ]
  %str.02496 = phi i8* [ %75, %for.body423.lr.ph ], [ %incdec.ptr435, %if.end431 ]
  %and424 = and i32 %len.192498, 7
  %tobool425 = icmp eq i32 %and424, 0
  br i1 %tobool425, label %if.else428, label %if.then426

if.then426:                                       ; preds = %for.body423
  %shr427 = ashr i32 %bits.62497, 1
  br label %if.end431

if.else428:                                       ; preds = %for.body423
  %incdec.ptr429 = getelementptr inbounds i8* %s.addr.72499, i64 1
  %80 = load i8* %s.addr.72499, align 1, !tbaa !1
  %conv430 = sext i8 %80 to i32
  br label %if.end431

if.end431:                                        ; preds = %if.else428, %if.then426
  %bits.7 = phi i32 [ %shr427, %if.then426 ], [ %conv430, %if.else428 ]
  %s.addr.8 = phi i8* [ %s.addr.72499, %if.then426 ], [ %incdec.ptr429, %if.else428 ]
  %and432 = and i32 %bits.7, 1
  %add4332090 = or i32 %and432, 48
  %conv434 = trunc i32 %add4332090 to i8
  %incdec.ptr435 = getelementptr inbounds i8* %str.02496, i64 1
  store i8 %conv434, i8* %str.02496, align 1, !tbaa !1
  %inc437 = add nsw i32 %len.192498, 1
  %exitcond3505 = icmp eq i32 %inc437, %len.15
  br i1 %exitcond3505, label %for.cond420.if.end461.loopexit2494_crit_edge, label %for.body423

for.body443:                                      ; preds = %if.end451, %for.body443.lr.ph
  %s.addr.92489 = phi i8* [ %s.addr.1, %for.body443.lr.ph ], [ %s.addr.10, %if.end451 ]
  %len.202488 = phi i32 [ 0, %for.body443.lr.ph ], [ %inc459, %if.end451 ]
  %bits.82487 = phi i32 [ %bits.1, %for.body443.lr.ph ], [ %bits.9, %if.end451 ]
  %str.12486 = phi i8* [ %75, %for.body443.lr.ph ], [ %incdec.ptr457, %if.end451 ]
  %and444 = and i32 %len.202488, 7
  %tobool445 = icmp eq i32 %and444, 0
  br i1 %tobool445, label %if.else448, label %if.then446

if.then446:                                       ; preds = %for.body443
  %shl447 = shl i32 %bits.82487, 1
  br label %if.end451

if.else448:                                       ; preds = %for.body443
  %incdec.ptr449 = getelementptr inbounds i8* %s.addr.92489, i64 1
  %81 = load i8* %s.addr.92489, align 1, !tbaa !1
  %conv450 = sext i8 %81 to i32
  br label %if.end451

if.end451:                                        ; preds = %if.else448, %if.then446
  %bits.9 = phi i32 [ %shl447, %if.then446 ], [ %conv450, %if.else448 ]
  %s.addr.10 = phi i8* [ %s.addr.92489, %if.then446 ], [ %incdec.ptr449, %if.else448 ]
  %and452 = lshr i32 %bits.9, 7
  %and452.lobit = and i32 %and452, 1
  %add4552089 = or i32 %and452.lobit, 48
  %conv456 = trunc i32 %add4552089 to i8
  %incdec.ptr457 = getelementptr inbounds i8* %str.12486, i64 1
  store i8 %conv456, i8* %str.12486, align 1, !tbaa !1
  %inc459 = add nsw i32 %len.202488, 1
  %exitcond3502 = icmp eq i32 %inc459, %len.15
  br i1 %exitcond3502, label %for.cond440.if.end461.loopexit_crit_edge, label %for.body443

for.cond440.if.end461.loopexit_crit_edge:         ; preds = %if.end451
  %scevgep3500.sum = add i64 %79, 1
  %scevgep3501 = getelementptr i8* %75, i64 %scevgep3500.sum
  br label %if.end461

for.cond420.if.end461.loopexit2494_crit_edge:     ; preds = %if.end431
  %scevgep3503.sum = add i64 %77, 1
  %scevgep3504 = getelementptr i8* %75, i64 %scevgep3503.sum
  br label %if.end461

if.end461:                                        ; preds = %for.cond420.preheader, %for.cond420.if.end461.loopexit2494_crit_edge, %for.cond440.preheader, %for.cond440.if.end461.loopexit_crit_edge
  %str.2 = phi i8* [ %scevgep3501, %for.cond440.if.end461.loopexit_crit_edge ], [ %75, %for.cond440.preheader ], [ %scevgep3504, %for.cond420.if.end461.loopexit2494_crit_edge ], [ %75, %for.cond420.preheader ]
  %bits.10 = phi i32 [ %bits.9, %for.cond440.if.end461.loopexit_crit_edge ], [ %bits.1, %for.cond440.preheader ], [ %bits.7, %for.cond420.if.end461.loopexit2494_crit_edge ], [ %bits.1, %for.cond420.preheader ]
  %len.21 = phi i32 [ %len.15, %for.cond440.if.end461.loopexit_crit_edge ], [ 0, %for.cond440.preheader ], [ %len.15, %for.cond420.if.end461.loopexit2494_crit_edge ], [ 0, %for.cond420.preheader ]
  %s.addr.11 = phi i8* [ %s.addr.10, %for.cond440.if.end461.loopexit_crit_edge ], [ %s.addr.1, %for.cond440.preheader ], [ %s.addr.8, %for.cond420.if.end461.loopexit2494_crit_edge ], [ %s.addr.1, %for.cond420.preheader ]
  store i8 0, i8* %str.2, align 1, !tbaa !1
  %82 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast462 = ptrtoint %struct.sv** %82 to i64
  %sub.ptr.rhs.cast463 = ptrtoint %struct.sv** %sp.3 to i64
  %sub.ptr.sub464 = sub i64 %sub.ptr.lhs.cast462, %sub.ptr.rhs.cast463
  %cmp466 = icmp slt i64 %sub.ptr.sub464, 8
  br i1 %cmp466, label %if.then468, label %if.end470

if.then468:                                       ; preds = %if.end461
  %call469 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3, %struct.sv** %sp.3, i32 1) #8
  br label %if.end470

if.end470:                                        ; preds = %if.then468, %if.end461
  %sp.5 = phi %struct.sv** [ %call469, %if.then468 ], [ %sp.3, %if.end461 ]
  %call471 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call410) #8
  %incdec.ptr472 = getelementptr inbounds %struct.sv** %sp.5, i64 1
  store %struct.sv* %call471, %struct.sv** %incdec.ptr472, align 8, !tbaa !0
  br label %sw.epilog1386

sw.bb473:                                         ; preds = %if.end86, %if.end86
  br i1 %cmp214, label %sw.bb473.if.then484_crit_edge, label %lor.lhs.false476

sw.bb473.if.then484_crit_edge:                    ; preds = %sw.bb473
  %sub.ptr.rhs.cast486.pre = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub487.pre = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast486.pre
  %mul488.pre = shl nsw i64 %sub.ptr.sub487.pre, 1
  br label %if.then484

lor.lhs.false476:                                 ; preds = %sw.bb473
  %conv477 = sext i32 %len.5 to i64
  %sub.ptr.rhs.cast479 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub480 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast479
  %mul481 = shl nsw i64 %sub.ptr.sub480, 1
  %cmp482 = icmp sgt i64 %conv477, %mul481
  br i1 %cmp482, label %if.then484, label %if.end490

if.then484:                                       ; preds = %sw.bb473.if.then484_crit_edge, %lor.lhs.false476
  %mul488.pre-phi = phi i64 [ %mul488.pre, %sw.bb473.if.then484_crit_edge ], [ %mul481, %lor.lhs.false476 ]
  %conv489 = trunc i64 %mul488.pre-phi to i32
  br label %if.end490

if.end490:                                        ; preds = %if.then484, %lor.lhs.false476
  %len.22 = phi i32 [ %conv489, %if.then484 ], [ %len.5, %lor.lhs.false476 ]
  %add491 = add nsw i32 %len.22, 1
  %conv492 = sext i32 %add491 to i64
  %call493 = call %struct.sv* @Perl_newSV(i64 %conv492) #8
  %conv494 = sext i32 %len.22 to i64
  %sv_any495 = getelementptr inbounds %struct.sv* %call493, i64 0, i32 0
  %83 = load i8** %sv_any495, align 8, !tbaa !0
  %xpv_cur496 = getelementptr inbounds i8* %83, i64 8
  %84 = bitcast i8* %xpv_cur496 to i64*
  store i64 %conv494, i64* %84, align 8, !tbaa !4
  %sv_flags497 = getelementptr inbounds %struct.sv* %call493, i64 0, i32 2
  %85 = load i32* %sv_flags497, align 4, !tbaa !3
  %or498 = or i32 %85, 67371008
  store i32 %or498, i32* %sv_flags497, align 4, !tbaa !3
  %xpv_pv500 = bitcast i8* %83 to i8**
  %86 = load i8** %xpv_pv500, align 8, !tbaa !0
  %cmp501 = icmp eq i32 %10, 104
  %cmp5052450 = icmp sgt i32 %len.22, 0
  br i1 %cmp501, label %for.cond504.preheader, label %for.cond524.preheader

for.cond504.preheader:                            ; preds = %if.end490
  br i1 %cmp5052450, label %for.body507.lr.ph, label %if.end544

for.body507.lr.ph:                                ; preds = %for.cond504.preheader
  %87 = add i32 %len.22, -1
  %88 = zext i32 %87 to i64
  br label %for.body507

for.cond524.preheader:                            ; preds = %if.end490
  br i1 %cmp5052450, label %for.body527.lr.ph, label %if.end544

for.body527.lr.ph:                                ; preds = %for.cond524.preheader
  %89 = add i32 %len.22, -1
  %90 = zext i32 %89 to i64
  br label %for.body527

for.body507:                                      ; preds = %if.end515, %for.body507.lr.ph
  %s.addr.122454 = phi i8* [ %s.addr.1, %for.body507.lr.ph ], [ %s.addr.13, %if.end515 ]
  %len.232453 = phi i32 [ 0, %for.body507.lr.ph ], [ %inc521, %if.end515 ]
  %bits.112452 = phi i32 [ %bits.1, %for.body507.lr.ph ], [ %bits.12, %if.end515 ]
  %str.32451 = phi i8* [ %86, %for.body507.lr.ph ], [ %incdec.ptr519, %if.end515 ]
  %and508 = and i32 %len.232453, 1
  %tobool509 = icmp eq i32 %and508, 0
  br i1 %tobool509, label %if.else512, label %if.then510

if.then510:                                       ; preds = %for.body507
  %shr511 = ashr i32 %bits.112452, 4
  br label %if.end515

if.else512:                                       ; preds = %for.body507
  %incdec.ptr513 = getelementptr inbounds i8* %s.addr.122454, i64 1
  %91 = load i8* %s.addr.122454, align 1, !tbaa !1
  %conv514 = sext i8 %91 to i32
  br label %if.end515

if.end515:                                        ; preds = %if.else512, %if.then510
  %bits.12 = phi i32 [ %shr511, %if.then510 ], [ %conv514, %if.else512 ]
  %s.addr.13 = phi i8* [ %s.addr.122454, %if.then510 ], [ %incdec.ptr513, %if.else512 ]
  %and516 = and i32 %bits.12, 15
  %idxprom5172088 = zext i32 %and516 to i64
  %92 = load i8** @PL_hexdigit, align 8, !tbaa !0
  %arrayidx518 = getelementptr inbounds i8* %92, i64 %idxprom5172088
  %93 = load i8* %arrayidx518, align 1, !tbaa !1
  %incdec.ptr519 = getelementptr inbounds i8* %str.32451, i64 1
  store i8 %93, i8* %str.32451, align 1, !tbaa !1
  %inc521 = add nsw i32 %len.232453, 1
  %exitcond3491 = icmp eq i32 %inc521, %len.22
  br i1 %exitcond3491, label %for.cond504.if.end544.loopexit2449_crit_edge, label %for.body507

for.body527:                                      ; preds = %if.end535, %for.body527.lr.ph
  %s.addr.142444 = phi i8* [ %s.addr.1, %for.body527.lr.ph ], [ %s.addr.15, %if.end535 ]
  %len.242443 = phi i32 [ 0, %for.body527.lr.ph ], [ %inc542, %if.end535 ]
  %bits.132442 = phi i32 [ %bits.1, %for.body527.lr.ph ], [ %bits.14, %if.end535 ]
  %str.42441 = phi i8* [ %86, %for.body527.lr.ph ], [ %incdec.ptr540, %if.end535 ]
  %and528 = and i32 %len.242443, 1
  %tobool529 = icmp eq i32 %and528, 0
  br i1 %tobool529, label %if.else532, label %if.then530

if.then530:                                       ; preds = %for.body527
  %shl531 = shl i32 %bits.132442, 4
  br label %if.end535

if.else532:                                       ; preds = %for.body527
  %incdec.ptr533 = getelementptr inbounds i8* %s.addr.142444, i64 1
  %94 = load i8* %s.addr.142444, align 1, !tbaa !1
  %conv534 = sext i8 %94 to i32
  br label %if.end535

if.end535:                                        ; preds = %if.else532, %if.then530
  %bits.14 = phi i32 [ %shl531, %if.then530 ], [ %conv534, %if.else532 ]
  %s.addr.15 = phi i8* [ %s.addr.142444, %if.then530 ], [ %incdec.ptr533, %if.else532 ]
  %shr5362086 = lshr i32 %bits.14, 4
  %and537 = and i32 %shr5362086, 15
  %idxprom5382087 = zext i32 %and537 to i64
  %95 = load i8** @PL_hexdigit, align 8, !tbaa !0
  %arrayidx539 = getelementptr inbounds i8* %95, i64 %idxprom5382087
  %96 = load i8* %arrayidx539, align 1, !tbaa !1
  %incdec.ptr540 = getelementptr inbounds i8* %str.42441, i64 1
  store i8 %96, i8* %str.42441, align 1, !tbaa !1
  %inc542 = add nsw i32 %len.242443, 1
  %exitcond3488 = icmp eq i32 %inc542, %len.22
  br i1 %exitcond3488, label %for.cond524.if.end544.loopexit_crit_edge, label %for.body527

for.cond524.if.end544.loopexit_crit_edge:         ; preds = %if.end535
  %scevgep3486.sum = add i64 %90, 1
  %scevgep3487 = getelementptr i8* %86, i64 %scevgep3486.sum
  br label %if.end544

for.cond504.if.end544.loopexit2449_crit_edge:     ; preds = %if.end515
  %scevgep3489.sum = add i64 %88, 1
  %scevgep3490 = getelementptr i8* %86, i64 %scevgep3489.sum
  br label %if.end544

if.end544:                                        ; preds = %for.cond504.preheader, %for.cond504.if.end544.loopexit2449_crit_edge, %for.cond524.preheader, %for.cond524.if.end544.loopexit_crit_edge
  %str.5 = phi i8* [ %scevgep3487, %for.cond524.if.end544.loopexit_crit_edge ], [ %86, %for.cond524.preheader ], [ %scevgep3490, %for.cond504.if.end544.loopexit2449_crit_edge ], [ %86, %for.cond504.preheader ]
  %bits.15 = phi i32 [ %bits.14, %for.cond524.if.end544.loopexit_crit_edge ], [ %bits.1, %for.cond524.preheader ], [ %bits.12, %for.cond504.if.end544.loopexit2449_crit_edge ], [ %bits.1, %for.cond504.preheader ]
  %len.25 = phi i32 [ %len.22, %for.cond524.if.end544.loopexit_crit_edge ], [ 0, %for.cond524.preheader ], [ %len.22, %for.cond504.if.end544.loopexit2449_crit_edge ], [ 0, %for.cond504.preheader ]
  %s.addr.16 = phi i8* [ %s.addr.15, %for.cond524.if.end544.loopexit_crit_edge ], [ %s.addr.1, %for.cond524.preheader ], [ %s.addr.13, %for.cond504.if.end544.loopexit2449_crit_edge ], [ %s.addr.1, %for.cond504.preheader ]
  store i8 0, i8* %str.5, align 1, !tbaa !1
  %97 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast545 = ptrtoint %struct.sv** %97 to i64
  %sub.ptr.rhs.cast546 = ptrtoint %struct.sv** %sp.3 to i64
  %sub.ptr.sub547 = sub i64 %sub.ptr.lhs.cast545, %sub.ptr.rhs.cast546
  %cmp549 = icmp slt i64 %sub.ptr.sub547, 8
  br i1 %cmp549, label %if.then551, label %if.end553

if.then551:                                       ; preds = %if.end544
  %call552 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3, %struct.sv** %sp.3, i32 1) #8
  br label %if.end553

if.end553:                                        ; preds = %if.then551, %if.end544
  %sp.6 = phi %struct.sv** [ %call552, %if.then551 ], [ %sp.3, %if.end544 ]
  %call554 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call493) #8
  %incdec.ptr555 = getelementptr inbounds %struct.sv** %sp.6, i64 1
  store %struct.sv* %call554, %struct.sv** %incdec.ptr555, align 8, !tbaa !0
  br label %sw.epilog1386

while.body561:                                    ; preds = %while.body561.lr.ph, %if.then570
  %dec5582436 = phi i32 [ %dec55824323151, %while.body561.lr.ph ], [ %dec558, %if.then570 ]
  %s.addr.172435 = phi i8* [ %s.addr.17.ph24273150, %while.body561.lr.ph ], [ %incdec.ptr562, %if.then570 ]
  %sp.72434 = phi %struct.sv** [ %sp.7.ph24263149, %while.body561.lr.ph ], [ %incdec.ptr574, %if.then570 ]
  %incdec.ptr562 = getelementptr inbounds i8* %s.addr.172435, i64 1
  %98 = load i8* %s.addr.172435, align 1, !tbaa !1
  %conv571 = sext i8 %98 to i64
  br i1 %tobool569, label %if.then570, label %if.else575

if.then570:                                       ; preds = %while.body561
  %call572 = call %struct.sv* @Perl_newSViv(i64 %conv571) #8
  %call573 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call572) #8
  %incdec.ptr574 = getelementptr inbounds %struct.sv** %sp.72434, i64 1
  store %struct.sv* %call573, %struct.sv** %incdec.ptr574, align 8, !tbaa !0
  %dec558 = add nsw i32 %dec5582436, -1
  %cmp559 = icmp sgt i32 %dec5582436, 0
  br i1 %cmp559, label %while.body561, label %if.end1441

if.else575:                                       ; preds = %while.body561
  %add583 = add i64 %conv571, %cuv.7.ph24243148
  br i1 %cmp576, label %if.then578, label %while.cond557.outer2423

if.then578:                                       ; preds = %if.else575
  %conv579 = sitofp i8 %98 to double
  %add580 = fadd double %cdouble.2.ph3170, %conv579
  %dec55824323146 = add nsw i32 %dec5582436, -1
  %cmp55924333147 = icmp sgt i32 %dec5582436, 0
  br i1 %cmp55924333147, label %while.body561.lr.ph.lr.ph, label %if.then1388

while.body561.lr.ph.lr.ph:                        ; preds = %while.body561.lr.ph.lr.ph.lr.ph, %if.then578
  %dec558243231463174 = phi i32 [ %dec558243231463168, %while.body561.lr.ph.lr.ph.lr.ph ], [ %dec55824323146, %if.then578 ]
  %s.addr.17.ph3173 = phi i8* [ %s.addr.1, %while.body561.lr.ph.lr.ph.lr.ph ], [ %incdec.ptr562, %if.then578 ]
  %sp.7.ph3172 = phi %struct.sv** [ %sp.3, %while.body561.lr.ph.lr.ph.lr.ph ], [ %sp.72434, %if.then578 ]
  %cuv.7.ph3171 = phi i64 [ %cuv.1, %while.body561.lr.ph.lr.ph.lr.ph ], [ %cuv.7.ph24243148, %if.then578 ]
  %cdouble.2.ph3170 = phi double [ %cdouble.1, %while.body561.lr.ph.lr.ph.lr.ph ], [ %add580, %if.then578 ]
  br label %while.body561.lr.ph

while.cond557.outer2423:                          ; preds = %if.else575
  %dec5582432 = add nsw i32 %dec5582436, -1
  %cmp5592433 = icmp sgt i32 %dec5582436, 0
  br i1 %cmp5592433, label %while.body561.lr.ph, label %sw.epilog1386

while.body561.lr.ph:                              ; preds = %while.body561.lr.ph.lr.ph, %while.cond557.outer2423
  %dec55824323151 = phi i32 [ %dec558243231463174, %while.body561.lr.ph.lr.ph ], [ %dec5582432, %while.cond557.outer2423 ]
  %s.addr.17.ph24273150 = phi i8* [ %s.addr.17.ph3173, %while.body561.lr.ph.lr.ph ], [ %incdec.ptr562, %while.cond557.outer2423 ]
  %sp.7.ph24263149 = phi %struct.sv** [ %sp.7.ph3172, %while.body561.lr.ph.lr.ph ], [ %sp.72434, %while.cond557.outer2423 ]
  %cuv.7.ph24243148 = phi i64 [ %cuv.7.ph3171, %while.body561.lr.ph.lr.ph ], [ %add583, %while.cond557.outer2423 ]
  br label %while.body561

unpack_C:                                         ; preds = %if.end641, %if.end86
  %cmp588 = icmp eq i32 %len.5, 0
  br i1 %cmp588, label %if.then590, label %if.end596

if.then590:                                       ; preds = %unpack_C
  %tobool591 = icmp eq i8 %explicit_length.0, 0
  br i1 %tobool591, label %sw.epilog1386, label %if.then592

if.then592:                                       ; preds = %if.then590
  %99 = load i32* %flags, align 4, !tbaa !3
  %and594 = and i32 %99, -9
  store i32 %and594, i32* %flags, align 4, !tbaa !3
  br label %sw.epilog1386

if.end596:                                        ; preds = %unpack_C
  %tobool597 = icmp eq i32 %checksum.1, 0
  br i1 %tobool597, label %while.cond618.preheader, label %while.cond599.preheader

while.cond618.preheader:                          ; preds = %if.end596
  %dec6192414 = add i32 %len.5, -1
  %cmp6202415 = icmp sgt i32 %len.5, 0
  br i1 %cmp6202415, label %while.body622.lr.ph, label %if.end1441

while.body622.lr.ph:                              ; preds = %while.cond618.preheader
  %100 = zext i32 %dec6192414 to i64
  br label %while.body622

while.cond599:                                    ; preds = %while.body603
  %dec600 = add nsw i32 %dec6002514, -1
  %cmp601 = icmp sgt i32 %dec6002514, 0
  br i1 %cmp601, label %while.body603, label %sw.epilog1386

while.body603:                                    ; preds = %while.body603.lr.ph, %while.cond599
  %dec6002514 = phi i32 [ %dec60025103190, %while.body603.lr.ph ], [ %dec600, %while.cond599 ]
  %s.addr.182513 = phi i8* [ %s.addr.18.ph3189, %while.body603.lr.ph ], [ %incdec.ptr604, %while.cond599 ]
  %cuv.82512 = phi i64 [ %cuv.8.ph3188, %while.body603.lr.ph ], [ %add614, %while.cond599 ]
  %incdec.ptr604 = getelementptr inbounds i8* %s.addr.182513, i64 1
  %101 = load i8* %s.addr.182513, align 1, !tbaa !1
  %conv613 = zext i8 %101 to i64
  %add614 = add i64 %conv613, %cuv.82512
  br i1 %cmp607, label %if.then609, label %while.cond599

if.then609:                                       ; preds = %while.body603
  %conv610 = uitofp i8 %101 to double
  %add611 = fadd double %cdouble.3.ph3187, %conv610
  %dec6002510 = add nsw i32 %dec6002514, -1
  %cmp6012511 = icmp sgt i32 %dec6002514, 0
  br i1 %cmp6012511, label %while.body603.lr.ph, label %sw.epilog1386

while.body603.lr.ph:                              ; preds = %while.body603.lr.ph.lr.ph, %if.then609
  %dec60025103190 = phi i32 [ %dec60025103185, %while.body603.lr.ph.lr.ph ], [ %dec6002510, %if.then609 ]
  %s.addr.18.ph3189 = phi i8* [ %s.addr.1, %while.body603.lr.ph.lr.ph ], [ %incdec.ptr604, %if.then609 ]
  %cuv.8.ph3188 = phi i64 [ %cuv.1, %while.body603.lr.ph.lr.ph ], [ %cuv.82512, %if.then609 ]
  %cdouble.3.ph3187 = phi double [ %cdouble.1, %while.body603.lr.ph.lr.ph ], [ %add611, %if.then609 ]
  br label %while.body603

while.body622:                                    ; preds = %while.body622.lr.ph, %while.body622
  %dec6192418 = phi i32 [ %dec6192414, %while.body622.lr.ph ], [ %dec619, %while.body622 ]
  %s.addr.192417 = phi i8* [ %s.addr.1, %while.body622.lr.ph ], [ %incdec.ptr623, %while.body622 ]
  %sp.82416 = phi %struct.sv** [ %sp.3, %while.body622.lr.ph ], [ %incdec.ptr629, %while.body622 ]
  %incdec.ptr623 = getelementptr inbounds i8* %s.addr.192417, i64 1
  %102 = load i8* %s.addr.192417, align 1, !tbaa !1
  %conv626 = zext i8 %102 to i64
  %call627 = call %struct.sv* @Perl_newSViv(i64 %conv626) #8
  %call628 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call627) #8
  %incdec.ptr629 = getelementptr inbounds %struct.sv** %sp.82416, i64 1
  store %struct.sv* %call628, %struct.sv** %incdec.ptr629, align 8, !tbaa !0
  %dec619 = add nsw i32 %dec6192418, -1
  %cmp620 = icmp sgt i32 %dec6192418, 0
  br i1 %cmp620, label %while.body622, label %while.cond618.sw.epilog1386.loopexit2413_crit_edge

sw.bb632:                                         ; preds = %if.end86
  %cmp633 = icmp eq i32 %len.5, 0
  br i1 %cmp633, label %if.then635, label %if.end641

if.then635:                                       ; preds = %sw.bb632
  %tobool636 = icmp eq i8 %explicit_length.0, 0
  br i1 %tobool636, label %sw.epilog1386, label %if.then637

if.then637:                                       ; preds = %if.then635
  %103 = load i32* %flags, align 4, !tbaa !3
  %or639 = or i32 %103, 8
  store i32 %or639, i32* %flags, align 4, !tbaa !3
  br label %sw.epilog1386

if.end641:                                        ; preds = %sw.bb632
  %104 = load i32* %flags, align 4, !tbaa !3
  %and643 = and i32 %104, 8
  %cmp644 = icmp eq i32 %and643, 0
  br i1 %cmp644, label %unpack_C, label %while.cond648.preheader

while.cond648.preheader:                          ; preds = %if.end641
  %dec649240330993123 = add nsw i32 %len.5, -1
  %cmp650240431003124 = icmp sgt i32 %len.5, 0
  %or.cond240631023126 = and i1 %cmp650240431003124, %cmp21
  br i1 %or.cond240631023126, label %while.body656.lr.ph.lr.ph.lr.ph, label %sw.epilog1386

while.body656.lr.ph.lr.ph.lr.ph:                  ; preds = %while.cond648.preheader
  %tobool692 = icmp eq i32 %checksum.1, 0
  %cmp699 = icmp sgt i32 %checksum.1, 64
  br label %while.body656.lr.ph.lr.ph

while.body656.lr.ph.lr.ph:                        ; preds = %while.body656.lr.ph.lr.ph.lr.ph, %if.then701
  %dec649240330993131 = phi i32 [ %dec649240330993123, %while.body656.lr.ph.lr.ph.lr.ph ], [ %dec64924033099, %if.then701 ]
  %s.addr.20.ph3130 = phi i8* [ %s.addr.1, %while.body656.lr.ph.lr.ph.lr.ph ], [ %add.ptr691, %if.then701 ]
  %sp.9.ph3129 = phi %struct.sv** [ %sp.3, %while.body656.lr.ph.lr.ph.lr.ph ], [ %sp.92407, %if.then701 ]
  %cuv.9.ph3128 = phi i64 [ %cuv.1, %while.body656.lr.ph.lr.ph.lr.ph ], [ %cuv.9.ph23963103, %if.then701 ]
  %cdouble.4.ph3127 = phi double [ %cdouble.1, %while.body656.lr.ph.lr.ph.lr.ph ], [ %add703, %if.then701 ]
  br label %while.body656.lr.ph

while.body656.lr.ph:                              ; preds = %while.body656.lr.ph.lr.ph, %if.else704
  %dec64924033106 = phi i32 [ %dec649240330993131, %while.body656.lr.ph.lr.ph ], [ %dec6492403, %if.else704 ]
  %s.addr.20.ph23993105 = phi i8* [ %s.addr.20.ph3130, %while.body656.lr.ph.lr.ph ], [ %add.ptr691, %if.else704 ]
  %sp.9.ph23983104 = phi %struct.sv** [ %sp.9.ph3129, %while.body656.lr.ph.lr.ph ], [ %sp.92407, %if.else704 ]
  %cuv.9.ph23963103 = phi i64 [ %cuv.9.ph3128, %while.body656.lr.ph.lr.ph ], [ %add706, %if.else704 ]
  br label %while.body656

while.body656:                                    ; preds = %while.body656.lr.ph, %if.then693
  %dec6492409 = phi i32 [ %dec64924033106, %while.body656.lr.ph ], [ %dec649, %if.then693 ]
  %s.addr.202408 = phi i8* [ %s.addr.20.ph23993105, %while.body656.lr.ph ], [ %add.ptr691, %if.then693 ]
  %sp.92407 = phi %struct.sv** [ %sp.9.ph23983104, %while.body656.lr.ph ], [ %incdec.ptr697, %if.then693 ]
  %sub.ptr.rhs.cast658 = ptrtoint i8* %s.addr.202408 to i64
  %sub.ptr.sub659 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast658
  %105 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %105, i64 0, i32 14
  %106 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp660 = icmp eq %struct.sv* %106, null
  br i1 %cmp660, label %lor.rhs678, label %land.lhs.true662

land.lhs.true662:                                 ; preds = %while.body656
  %107 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings663 = getelementptr inbounds %struct.cop* %107, i64 0, i32 14
  %108 = load %struct.sv** %cop_warnings663, align 8, !tbaa !0
  %cmp664 = icmp eq %struct.sv* %108, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp664, label %lor.rhs678, label %land.lhs.true666

land.lhs.true666:                                 ; preds = %land.lhs.true662
  %109 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings667 = getelementptr inbounds %struct.cop* %109, i64 0, i32 14
  %110 = load %struct.sv** %cop_warnings667, align 8, !tbaa !0
  %cmp668 = icmp eq %struct.sv* %110, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp668, label %lor.end687, label %lor.lhs.false670

lor.lhs.false670:                                 ; preds = %land.lhs.true666
  %111 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings671 = getelementptr inbounds %struct.cop* %111, i64 0, i32 14
  %112 = load %struct.sv** %cop_warnings671, align 8, !tbaa !0
  %sv_any672 = getelementptr inbounds %struct.sv* %112, i64 0, i32 0
  %113 = load i8** %sv_any672, align 8, !tbaa !0
  %xpv_pv673 = bitcast i8* %113 to i8**
  %114 = load i8** %xpv_pv673, align 8, !tbaa !0
  %arrayidx674 = getelementptr inbounds i8* %114, i64 11
  %115 = load i8* %arrayidx674, align 1, !tbaa !1
  %and676 = and i8 %115, 1
  %tobool677 = icmp eq i8 %and676, 0
  br i1 %tobool677, label %lor.rhs678, label %lor.end687

lor.rhs678:                                       ; preds = %lor.lhs.false670, %land.lhs.true662, %while.body656
  %116 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings679 = getelementptr inbounds %struct.cop* %116, i64 0, i32 14
  %117 = load %struct.sv** %cop_warnings679, align 8, !tbaa !0
  %cmp680 = icmp eq %struct.sv* %117, null
  br i1 %cmp680, label %land.rhs682, label %lor.end687

land.rhs682:                                      ; preds = %lor.rhs678
  %118 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and684 = and i8 %118, 1
  %tobool685 = icmp ne i8 %and684, 0
  %phitmp2082 = select i1 %tobool685, i32 0, i32 105
  br label %lor.end687

lor.end687:                                       ; preds = %lor.lhs.false670, %lor.rhs678, %land.rhs682, %land.lhs.true666
  %119 = phi i32 [ 0, %lor.lhs.false670 ], [ 0, %land.lhs.true666 ], [ 105, %lor.rhs678 ], [ %phitmp2082, %land.rhs682 ]
  %call689 = call i64 @Perl_utf8n_to_uvuni(i8* %s.addr.202408, i64 %sub.ptr.sub659, i64* %alen, i32 %119) #8
  %120 = load i64* %alen, align 8, !tbaa !4
  %add.ptr691 = getelementptr inbounds i8* %s.addr.202408, i64 %120
  br i1 %tobool692, label %if.then693, label %if.else698

if.then693:                                       ; preds = %lor.end687
  %conv694 = and i64 %call689, 4294967295
  %call695 = call %struct.sv* @Perl_newSVuv(i64 %conv694) #8
  %call696 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call695) #8
  %incdec.ptr697 = getelementptr inbounds %struct.sv** %sp.92407, i64 1
  store %struct.sv* %call696, %struct.sv** %incdec.ptr697, align 8, !tbaa !0
  %dec649 = add nsw i32 %dec6492409, -1
  %cmp650 = icmp sgt i32 %dec6492409, 0
  %cmp653 = icmp ult i8* %add.ptr691, %strend
  %or.cond = and i1 %cmp650, %cmp653
  br i1 %or.cond, label %while.body656, label %if.end1441

if.else698:                                       ; preds = %lor.end687
  br i1 %cmp699, label %if.then701, label %if.else704

if.then701:                                       ; preds = %if.else698
  %conv690 = trunc i64 %call689 to i32
  %conv702 = uitofp i32 %conv690 to double
  %add703 = fadd double %cdouble.4.ph3127, %conv702
  %dec64924033099 = add nsw i32 %dec6492409, -1
  %cmp65024043100 = icmp sgt i32 %dec6492409, 0
  %cmp65324053101 = icmp ult i8* %add.ptr691, %strend
  %or.cond24063102 = and i1 %cmp65024043100, %cmp65324053101
  br i1 %or.cond24063102, label %while.body656.lr.ph.lr.ph, label %if.then1388

if.else704:                                       ; preds = %if.else698
  %conv705 = and i64 %call689, 4294967295
  %add706 = add i64 %conv705, %cuv.9.ph23963103
  %dec6492403 = add nsw i32 %dec6492409, -1
  %cmp6502404 = icmp sgt i32 %dec6492409, 0
  %cmp6532405 = icmp ult i8* %add.ptr691, %strend
  %or.cond2406 = and i1 %cmp6502404, %cmp6532405
  br i1 %or.cond2406, label %while.body656.lr.ph, label %sw.epilog1386

while.body715:                                    ; preds = %while.body715.lr.ph, %if.then718
  %dec7122390 = phi i32 [ %dec71223863061, %while.body715.lr.ph ], [ %dec712, %if.then718 ]
  %s.addr.212389 = phi i8* [ %s.addr.21.ph23823060, %while.body715.lr.ph ], [ %add.ptr716, %if.then718 ]
  %sp.102388 = phi %struct.sv** [ %sp.10.ph23813059, %while.body715.lr.ph ], [ %incdec.ptr722, %if.then718 ]
  %ai16.0.cast = bitcast i8* %s.addr.212389 to i16*
  %ai16.0.copyload = load i16* %ai16.0.cast, align 1
  %add.ptr716 = getelementptr inbounds i8* %s.addr.212389, i64 2
  %conv719 = sext i16 %ai16.0.copyload to i64
  br i1 %tobool717, label %if.then718, label %if.else723

if.then718:                                       ; preds = %while.body715
  %call720 = call %struct.sv* @Perl_newSViv(i64 %conv719) #8
  %call721 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call720) #8
  %incdec.ptr722 = getelementptr inbounds %struct.sv** %sp.102388, i64 1
  store %struct.sv* %call721, %struct.sv** %incdec.ptr722, align 8, !tbaa !0
  %dec712 = add nsw i32 %dec7122390, -1
  %cmp713 = icmp sgt i32 %dec7122390, 0
  br i1 %cmp713, label %while.body715, label %if.end1441

if.else723:                                       ; preds = %while.body715
  %add731 = add i64 %conv719, %cuv.10.ph23793058
  br i1 %cmp724, label %if.then726, label %while.cond711.outer2378

if.then726:                                       ; preds = %if.else723
  %conv727 = sitofp i16 %ai16.0.copyload to double
  %add728 = fadd double %cdouble.5.ph3080, %conv727
  %dec71223863056 = add nsw i32 %dec7122390, -1
  %cmp71323873057 = icmp sgt i32 %dec7122390, 0
  br i1 %cmp71323873057, label %while.body715.lr.ph.lr.ph, label %if.then1388

while.body715.lr.ph.lr.ph:                        ; preds = %while.body715.lr.ph.lr.ph.lr.ph, %if.then726
  %dec712238630563084 = phi i32 [ %dec712238630563078, %while.body715.lr.ph.lr.ph.lr.ph ], [ %dec71223863056, %if.then726 ]
  %s.addr.21.ph3083 = phi i8* [ %s.addr.1, %while.body715.lr.ph.lr.ph.lr.ph ], [ %add.ptr716, %if.then726 ]
  %sp.10.ph3082 = phi %struct.sv** [ %sp.3, %while.body715.lr.ph.lr.ph.lr.ph ], [ %sp.102388, %if.then726 ]
  %cuv.10.ph3081 = phi i64 [ %cuv.1, %while.body715.lr.ph.lr.ph.lr.ph ], [ %cuv.10.ph23793058, %if.then726 ]
  %cdouble.5.ph3080 = phi double [ %cdouble.1, %while.body715.lr.ph.lr.ph.lr.ph ], [ %add728, %if.then726 ]
  br label %while.body715.lr.ph

while.cond711.outer2378:                          ; preds = %if.else723
  %dec7122386 = add nsw i32 %dec7122390, -1
  %cmp7132387 = icmp sgt i32 %dec7122390, 0
  br i1 %cmp7132387, label %while.body715.lr.ph, label %sw.epilog1386

while.body715.lr.ph:                              ; preds = %while.body715.lr.ph.lr.ph, %while.cond711.outer2378
  %dec71223863061 = phi i32 [ %dec712238630563084, %while.body715.lr.ph.lr.ph ], [ %dec7122386, %while.cond711.outer2378 ]
  %s.addr.21.ph23823060 = phi i8* [ %s.addr.21.ph3083, %while.body715.lr.ph.lr.ph ], [ %add.ptr716, %while.cond711.outer2378 ]
  %sp.10.ph23813059 = phi %struct.sv** [ %sp.10.ph3082, %while.body715.lr.ph.lr.ph ], [ %sp.102388, %while.cond711.outer2378 ]
  %cuv.10.ph23793058 = phi i64 [ %cuv.10.ph3081, %while.body715.lr.ph.lr.ph ], [ %add731, %while.cond711.outer2378 ]
  br label %while.body715

while.body740:                                    ; preds = %while.body740.lr.ph, %if.then752
  %dec7372373 = phi i32 [ %dec73723693018, %while.body740.lr.ph ], [ %dec737, %if.then752 ]
  %s.addr.222372 = phi i8* [ %s.addr.22.ph23653017, %while.body740.lr.ph ], [ %add.ptr741, %if.then752 ]
  %sp.112371 = phi %struct.sv** [ %sp.11.ph23643016, %while.body740.lr.ph ], [ %incdec.ptr756, %if.then752 ]
  %au16.0.cast = bitcast i8* %s.addr.222372 to i16*
  %au16.0.copyload = load i16* %au16.0.cast, align 1
  %add.ptr741 = getelementptr inbounds i8* %s.addr.222372, i64 2
  switch i32 %10, label %if.end750 [
    i32 110, label %if.end745.thread
    i32 118, label %if.then748
  ]

if.end745.thread:                                 ; preds = %while.body740
  %121 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %au16.0.copyload) #1, !srcloc !5
  br label %if.end750

if.then748:                                       ; preds = %while.body740
  %call749 = call signext i16 @vtohs(i16 signext %au16.0.copyload) #8
  br label %if.end750

if.end750:                                        ; preds = %while.body740, %if.end745.thread, %if.then748
  %au16.1 = phi i16 [ %call749, %if.then748 ], [ %121, %if.end745.thread ], [ %au16.0.copyload, %while.body740 ]
  %conv753 = zext i16 %au16.1 to i64
  br i1 %tobool751, label %if.then752, label %if.else757

if.then752:                                       ; preds = %if.end750
  %call754 = call %struct.sv* @Perl_newSViv(i64 %conv753) #8
  %call755 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call754) #8
  %incdec.ptr756 = getelementptr inbounds %struct.sv** %sp.112371, i64 1
  store %struct.sv* %call755, %struct.sv** %incdec.ptr756, align 8, !tbaa !0
  %dec737 = add nsw i32 %dec7372373, -1
  %cmp738 = icmp sgt i32 %dec7372373, 0
  br i1 %cmp738, label %while.body740, label %if.end1441

if.else757:                                       ; preds = %if.end750
  %add765 = add i64 %conv753, %cuv.11.ph23623015
  br i1 %cmp758, label %if.then760, label %while.cond736.outer2361

if.then760:                                       ; preds = %if.else757
  %conv761 = uitofp i16 %au16.1 to double
  %add762 = fadd double %cdouble.6.ph3037, %conv761
  %dec73723693013 = add nsw i32 %dec7372373, -1
  %cmp73823703014 = icmp sgt i32 %dec7372373, 0
  br i1 %cmp73823703014, label %while.body740.lr.ph.lr.ph, label %if.then1388

while.body740.lr.ph.lr.ph:                        ; preds = %while.body740.lr.ph.lr.ph.lr.ph, %if.then760
  %dec737236930133041 = phi i32 [ %dec737236930133035, %while.body740.lr.ph.lr.ph.lr.ph ], [ %dec73723693013, %if.then760 ]
  %s.addr.22.ph3040 = phi i8* [ %s.addr.1, %while.body740.lr.ph.lr.ph.lr.ph ], [ %add.ptr741, %if.then760 ]
  %sp.11.ph3039 = phi %struct.sv** [ %sp.3, %while.body740.lr.ph.lr.ph.lr.ph ], [ %sp.112371, %if.then760 ]
  %cuv.11.ph3038 = phi i64 [ %cuv.1, %while.body740.lr.ph.lr.ph.lr.ph ], [ %cuv.11.ph23623015, %if.then760 ]
  %cdouble.6.ph3037 = phi double [ %cdouble.1, %while.body740.lr.ph.lr.ph.lr.ph ], [ %add762, %if.then760 ]
  br label %while.body740.lr.ph

while.cond736.outer2361:                          ; preds = %if.else757
  %dec7372369 = add nsw i32 %dec7372373, -1
  %cmp7382370 = icmp sgt i32 %dec7372373, 0
  br i1 %cmp7382370, label %while.body740.lr.ph, label %sw.epilog1386

while.body740.lr.ph:                              ; preds = %while.body740.lr.ph.lr.ph, %while.cond736.outer2361
  %dec73723693018 = phi i32 [ %dec737236930133041, %while.body740.lr.ph.lr.ph ], [ %dec7372369, %while.cond736.outer2361 ]
  %s.addr.22.ph23653017 = phi i8* [ %s.addr.22.ph3040, %while.body740.lr.ph.lr.ph ], [ %add.ptr741, %while.cond736.outer2361 ]
  %sp.11.ph23643016 = phi %struct.sv** [ %sp.11.ph3039, %while.body740.lr.ph.lr.ph ], [ %sp.112371, %while.cond736.outer2361 ]
  %cuv.11.ph23623015 = phi i64 [ %cuv.11.ph3038, %while.body740.lr.ph.lr.ph ], [ %add765, %while.cond736.outer2361 ]
  br label %while.body740

while.body774:                                    ; preds = %while.body774.lr.ph, %if.then777
  %dec7712356 = phi i32 [ %dec77123522975, %while.body774.lr.ph ], [ %dec771, %if.then777 ]
  %s.addr.232355 = phi i8* [ %s.addr.23.ph23482974, %while.body774.lr.ph ], [ %add.ptr775, %if.then777 ]
  %sp.122354 = phi %struct.sv** [ %sp.12.ph23472973, %while.body774.lr.ph ], [ %incdec.ptr781, %if.then777 ]
  %aint.0.cast = bitcast i8* %s.addr.232355 to i32*
  %aint.0.copyload = load i32* %aint.0.cast, align 1
  %add.ptr775 = getelementptr inbounds i8* %s.addr.232355, i64 4
  %conv778 = sext i32 %aint.0.copyload to i64
  br i1 %tobool776, label %if.then777, label %if.else782

if.then777:                                       ; preds = %while.body774
  %call779 = call %struct.sv* @Perl_newSViv(i64 %conv778) #8
  %call780 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call779) #8
  %incdec.ptr781 = getelementptr inbounds %struct.sv** %sp.122354, i64 1
  store %struct.sv* %call780, %struct.sv** %incdec.ptr781, align 8, !tbaa !0
  %dec771 = add nsw i32 %dec7712356, -1
  %cmp772 = icmp sgt i32 %dec7712356, 0
  br i1 %cmp772, label %while.body774, label %if.end1441

if.else782:                                       ; preds = %while.body774
  %add790 = add i64 %conv778, %cuv.12.ph23452972
  br i1 %cmp783, label %if.then785, label %while.cond770.outer2344

if.then785:                                       ; preds = %if.else782
  %conv786 = sitofp i32 %aint.0.copyload to double
  %add787 = fadd double %cdouble.7.ph2994, %conv786
  %dec77123522970 = add nsw i32 %dec7712356, -1
  %cmp77223532971 = icmp sgt i32 %dec7712356, 0
  br i1 %cmp77223532971, label %while.body774.lr.ph.lr.ph, label %if.then1388

while.body774.lr.ph.lr.ph:                        ; preds = %while.body774.lr.ph.lr.ph.lr.ph, %if.then785
  %dec771235229702998 = phi i32 [ %dec771235229702992, %while.body774.lr.ph.lr.ph.lr.ph ], [ %dec77123522970, %if.then785 ]
  %s.addr.23.ph2997 = phi i8* [ %s.addr.1, %while.body774.lr.ph.lr.ph.lr.ph ], [ %add.ptr775, %if.then785 ]
  %sp.12.ph2996 = phi %struct.sv** [ %sp.3, %while.body774.lr.ph.lr.ph.lr.ph ], [ %sp.122354, %if.then785 ]
  %cuv.12.ph2995 = phi i64 [ %cuv.1, %while.body774.lr.ph.lr.ph.lr.ph ], [ %cuv.12.ph23452972, %if.then785 ]
  %cdouble.7.ph2994 = phi double [ %cdouble.1, %while.body774.lr.ph.lr.ph.lr.ph ], [ %add787, %if.then785 ]
  br label %while.body774.lr.ph

while.cond770.outer2344:                          ; preds = %if.else782
  %dec7712352 = add nsw i32 %dec7712356, -1
  %cmp7722353 = icmp sgt i32 %dec7712356, 0
  br i1 %cmp7722353, label %while.body774.lr.ph, label %sw.epilog1386

while.body774.lr.ph:                              ; preds = %while.body774.lr.ph.lr.ph, %while.cond770.outer2344
  %dec77123522975 = phi i32 [ %dec771235229702998, %while.body774.lr.ph.lr.ph ], [ %dec7712352, %while.cond770.outer2344 ]
  %s.addr.23.ph23482974 = phi i8* [ %s.addr.23.ph2997, %while.body774.lr.ph.lr.ph ], [ %add.ptr775, %while.cond770.outer2344 ]
  %sp.12.ph23472973 = phi %struct.sv** [ %sp.12.ph2996, %while.body774.lr.ph.lr.ph ], [ %sp.122354, %while.cond770.outer2344 ]
  %cuv.12.ph23452972 = phi i64 [ %cuv.12.ph2995, %while.body774.lr.ph.lr.ph ], [ %add790, %while.cond770.outer2344 ]
  br label %while.body774

while.body799:                                    ; preds = %while.body799.lr.ph, %if.then802
  %dec7962339 = phi i32 [ %dec79623352932, %while.body799.lr.ph ], [ %dec796, %if.then802 ]
  %s.addr.242338 = phi i8* [ %s.addr.24.ph23312931, %while.body799.lr.ph ], [ %add.ptr800, %if.then802 ]
  %sp.132337 = phi %struct.sv** [ %sp.13.ph23302930, %while.body799.lr.ph ], [ %incdec.ptr806, %if.then802 ]
  %auint.0.cast = bitcast i8* %s.addr.242338 to i32*
  %auint.0.copyload = load i32* %auint.0.cast, align 1
  %add.ptr800 = getelementptr inbounds i8* %s.addr.242338, i64 4
  %conv803 = zext i32 %auint.0.copyload to i64
  br i1 %tobool801, label %if.then802, label %if.else807

if.then802:                                       ; preds = %while.body799
  %call804 = call %struct.sv* @Perl_newSVuv(i64 %conv803) #8
  %call805 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call804) #8
  %incdec.ptr806 = getelementptr inbounds %struct.sv** %sp.132337, i64 1
  store %struct.sv* %call805, %struct.sv** %incdec.ptr806, align 8, !tbaa !0
  %dec796 = add nsw i32 %dec7962339, -1
  %cmp797 = icmp sgt i32 %dec7962339, 0
  br i1 %cmp797, label %while.body799, label %if.end1441

if.else807:                                       ; preds = %while.body799
  %add815 = add i64 %conv803, %cuv.13.ph23282929
  br i1 %cmp808, label %if.then810, label %while.cond795.outer2327

if.then810:                                       ; preds = %if.else807
  %conv811 = uitofp i32 %auint.0.copyload to double
  %add812 = fadd double %cdouble.8.ph2951, %conv811
  %dec79623352927 = add nsw i32 %dec7962339, -1
  %cmp79723362928 = icmp sgt i32 %dec7962339, 0
  br i1 %cmp79723362928, label %while.body799.lr.ph.lr.ph, label %if.then1388

while.body799.lr.ph.lr.ph:                        ; preds = %while.body799.lr.ph.lr.ph.lr.ph, %if.then810
  %dec796233529272955 = phi i32 [ %dec796233529272949, %while.body799.lr.ph.lr.ph.lr.ph ], [ %dec79623352927, %if.then810 ]
  %s.addr.24.ph2954 = phi i8* [ %s.addr.1, %while.body799.lr.ph.lr.ph.lr.ph ], [ %add.ptr800, %if.then810 ]
  %sp.13.ph2953 = phi %struct.sv** [ %sp.3, %while.body799.lr.ph.lr.ph.lr.ph ], [ %sp.132337, %if.then810 ]
  %cuv.13.ph2952 = phi i64 [ %cuv.1, %while.body799.lr.ph.lr.ph.lr.ph ], [ %cuv.13.ph23282929, %if.then810 ]
  %cdouble.8.ph2951 = phi double [ %cdouble.1, %while.body799.lr.ph.lr.ph.lr.ph ], [ %add812, %if.then810 ]
  br label %while.body799.lr.ph

while.cond795.outer2327:                          ; preds = %if.else807
  %dec7962335 = add nsw i32 %dec7962339, -1
  %cmp7972336 = icmp sgt i32 %dec7962339, 0
  br i1 %cmp7972336, label %while.body799.lr.ph, label %sw.epilog1386

while.body799.lr.ph:                              ; preds = %while.body799.lr.ph.lr.ph, %while.cond795.outer2327
  %dec79623352932 = phi i32 [ %dec796233529272955, %while.body799.lr.ph.lr.ph ], [ %dec7962335, %while.cond795.outer2327 ]
  %s.addr.24.ph23312931 = phi i8* [ %s.addr.24.ph2954, %while.body799.lr.ph.lr.ph ], [ %add.ptr800, %while.cond795.outer2327 ]
  %sp.13.ph23302930 = phi %struct.sv** [ %sp.13.ph2953, %while.body799.lr.ph.lr.ph ], [ %sp.132337, %while.cond795.outer2327 ]
  %cuv.13.ph23282929 = phi i64 [ %cuv.13.ph2952, %while.body799.lr.ph.lr.ph ], [ %add815, %while.cond795.outer2327 ]
  br label %while.body799

while.body824:                                    ; preds = %while.body824.lr.ph, %if.then827
  %dec8212322 = phi i32 [ %dec82123182889, %while.body824.lr.ph ], [ %dec821, %if.then827 ]
  %s.addr.252321 = phi i8* [ %s.addr.25.ph23142888, %while.body824.lr.ph ], [ %add.ptr825, %if.then827 ]
  %sp.142320 = phi %struct.sv** [ %sp.14.ph23132887, %while.body824.lr.ph ], [ %incdec.ptr830, %if.then827 ]
  %aiv.0.cast = bitcast i8* %s.addr.252321 to i64*
  %aiv.0.copyload = load i64* %aiv.0.cast, align 1
  %add.ptr825 = getelementptr inbounds i8* %s.addr.252321, i64 8
  br i1 %tobool826, label %if.then827, label %if.else831

if.then827:                                       ; preds = %while.body824
  %call828 = call %struct.sv* @Perl_newSViv(i64 %aiv.0.copyload) #8
  %call829 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call828) #8
  %incdec.ptr830 = getelementptr inbounds %struct.sv** %sp.142320, i64 1
  store %struct.sv* %call829, %struct.sv** %incdec.ptr830, align 8, !tbaa !0
  %dec821 = add nsw i32 %dec8212322, -1
  %cmp822 = icmp sgt i32 %dec8212322, 0
  br i1 %cmp822, label %while.body824, label %if.end1441

if.else831:                                       ; preds = %while.body824
  %add838 = add i64 %aiv.0.copyload, %cuv.14.ph23112886
  br i1 %cmp832, label %if.then834, label %while.cond820.outer2310

if.then834:                                       ; preds = %if.else831
  %conv835 = sitofp i64 %aiv.0.copyload to double
  %add836 = fadd double %cdouble.9.ph2908, %conv835
  %dec82123182884 = add nsw i32 %dec8212322, -1
  %cmp82223192885 = icmp sgt i32 %dec8212322, 0
  br i1 %cmp82223192885, label %while.body824.lr.ph.lr.ph, label %if.then1388

while.body824.lr.ph.lr.ph:                        ; preds = %while.body824.lr.ph.lr.ph.lr.ph, %if.then834
  %dec821231828842912 = phi i32 [ %dec821231828842906, %while.body824.lr.ph.lr.ph.lr.ph ], [ %dec82123182884, %if.then834 ]
  %s.addr.25.ph2911 = phi i8* [ %s.addr.1, %while.body824.lr.ph.lr.ph.lr.ph ], [ %add.ptr825, %if.then834 ]
  %sp.14.ph2910 = phi %struct.sv** [ %sp.3, %while.body824.lr.ph.lr.ph.lr.ph ], [ %sp.142320, %if.then834 ]
  %cuv.14.ph2909 = phi i64 [ %cuv.1, %while.body824.lr.ph.lr.ph.lr.ph ], [ %cuv.14.ph23112886, %if.then834 ]
  %cdouble.9.ph2908 = phi double [ %cdouble.1, %while.body824.lr.ph.lr.ph.lr.ph ], [ %add836, %if.then834 ]
  br label %while.body824.lr.ph

while.cond820.outer2310:                          ; preds = %if.else831
  %dec8212318 = add nsw i32 %dec8212322, -1
  %cmp8222319 = icmp sgt i32 %dec8212322, 0
  br i1 %cmp8222319, label %while.body824.lr.ph, label %sw.epilog1386

while.body824.lr.ph:                              ; preds = %while.body824.lr.ph.lr.ph, %while.cond820.outer2310
  %dec82123182889 = phi i32 [ %dec821231828842912, %while.body824.lr.ph.lr.ph ], [ %dec8212318, %while.cond820.outer2310 ]
  %s.addr.25.ph23142888 = phi i8* [ %s.addr.25.ph2911, %while.body824.lr.ph.lr.ph ], [ %add.ptr825, %while.cond820.outer2310 ]
  %sp.14.ph23132887 = phi %struct.sv** [ %sp.14.ph2910, %while.body824.lr.ph.lr.ph ], [ %sp.142320, %while.cond820.outer2310 ]
  %cuv.14.ph23112886 = phi i64 [ %cuv.14.ph2909, %while.body824.lr.ph.lr.ph ], [ %add838, %while.cond820.outer2310 ]
  br label %while.body824

while.body847:                                    ; preds = %while.body847.lr.ph, %if.then850
  %dec8442305 = phi i32 [ %dec84423012846, %while.body847.lr.ph ], [ %dec844, %if.then850 ]
  %s.addr.262304 = phi i8* [ %s.addr.26.ph22972845, %while.body847.lr.ph ], [ %add.ptr848, %if.then850 ]
  %sp.152303 = phi %struct.sv** [ %sp.15.ph22962844, %while.body847.lr.ph ], [ %incdec.ptr853, %if.then850 ]
  %auv.0.cast = bitcast i8* %s.addr.262304 to i64*
  %auv.0.copyload = load i64* %auv.0.cast, align 1
  %add.ptr848 = getelementptr inbounds i8* %s.addr.262304, i64 8
  br i1 %tobool849, label %if.then850, label %if.else854

if.then850:                                       ; preds = %while.body847
  %call851 = call %struct.sv* @Perl_newSVuv(i64 %auv.0.copyload) #8
  %call852 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call851) #8
  %incdec.ptr853 = getelementptr inbounds %struct.sv** %sp.152303, i64 1
  store %struct.sv* %call852, %struct.sv** %incdec.ptr853, align 8, !tbaa !0
  %dec844 = add nsw i32 %dec8442305, -1
  %cmp845 = icmp sgt i32 %dec8442305, 0
  br i1 %cmp845, label %while.body847, label %if.end1441

if.else854:                                       ; preds = %while.body847
  %add861 = add i64 %auv.0.copyload, %cuv.15.ph22942843
  br i1 %cmp855, label %if.then857, label %while.cond843.outer2293

if.then857:                                       ; preds = %if.else854
  %conv858 = uitofp i64 %auv.0.copyload to double
  %add859 = fadd double %cdouble.10.ph2865, %conv858
  %dec84423012841 = add nsw i32 %dec8442305, -1
  %cmp84523022842 = icmp sgt i32 %dec8442305, 0
  br i1 %cmp84523022842, label %while.body847.lr.ph.lr.ph, label %if.then1388

while.body847.lr.ph.lr.ph:                        ; preds = %while.body847.lr.ph.lr.ph.lr.ph, %if.then857
  %dec844230128412869 = phi i32 [ %dec844230128412863, %while.body847.lr.ph.lr.ph.lr.ph ], [ %dec84423012841, %if.then857 ]
  %s.addr.26.ph2868 = phi i8* [ %s.addr.1, %while.body847.lr.ph.lr.ph.lr.ph ], [ %add.ptr848, %if.then857 ]
  %sp.15.ph2867 = phi %struct.sv** [ %sp.3, %while.body847.lr.ph.lr.ph.lr.ph ], [ %sp.152303, %if.then857 ]
  %cuv.15.ph2866 = phi i64 [ %cuv.1, %while.body847.lr.ph.lr.ph.lr.ph ], [ %cuv.15.ph22942843, %if.then857 ]
  %cdouble.10.ph2865 = phi double [ %cdouble.1, %while.body847.lr.ph.lr.ph.lr.ph ], [ %add859, %if.then857 ]
  br label %while.body847.lr.ph

while.cond843.outer2293:                          ; preds = %if.else854
  %dec8442301 = add nsw i32 %dec8442305, -1
  %cmp8452302 = icmp sgt i32 %dec8442305, 0
  br i1 %cmp8452302, label %while.body847.lr.ph, label %sw.epilog1386

while.body847.lr.ph:                              ; preds = %while.body847.lr.ph.lr.ph, %while.cond843.outer2293
  %dec84423012846 = phi i32 [ %dec844230128412869, %while.body847.lr.ph.lr.ph ], [ %dec8442301, %while.cond843.outer2293 ]
  %s.addr.26.ph22972845 = phi i8* [ %s.addr.26.ph2868, %while.body847.lr.ph.lr.ph ], [ %add.ptr848, %while.cond843.outer2293 ]
  %sp.15.ph22962844 = phi %struct.sv** [ %sp.15.ph2867, %while.body847.lr.ph.lr.ph ], [ %sp.152303, %while.cond843.outer2293 ]
  %cuv.15.ph22942843 = phi i64 [ %cuv.15.ph2866, %while.body847.lr.ph.lr.ph ], [ %add861, %while.cond843.outer2293 ]
  br label %while.body847

while.body870:                                    ; preds = %while.body870.lr.ph, %if.then873
  %dec8672288 = phi i32 [ %dec86722842803, %while.body870.lr.ph ], [ %dec867, %if.then873 ]
  %s.addr.272287 = phi i8* [ %s.addr.27.ph22802802, %while.body870.lr.ph ], [ %add.ptr871, %if.then873 ]
  %sp.162286 = phi %struct.sv** [ %sp.16.ph22792801, %while.body870.lr.ph ], [ %incdec.ptr876, %if.then873 ]
  %along.0.cast = bitcast i8* %s.addr.272287 to i64*
  %along.0.copyload = load i64* %along.0.cast, align 1
  %add.ptr871 = getelementptr inbounds i8* %s.addr.272287, i64 8
  br i1 %tobool872, label %if.then873, label %if.else877

if.then873:                                       ; preds = %while.body870
  %call874 = call %struct.sv* @Perl_newSViv(i64 %along.0.copyload) #8
  %call875 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call874) #8
  %incdec.ptr876 = getelementptr inbounds %struct.sv** %sp.162286, i64 1
  store %struct.sv* %call875, %struct.sv** %incdec.ptr876, align 8, !tbaa !0
  %dec867 = add nsw i32 %dec8672288, -1
  %cmp868 = icmp sgt i32 %dec8672288, 0
  br i1 %cmp868, label %while.body870, label %if.end1441

if.else877:                                       ; preds = %while.body870
  %add884 = add i64 %along.0.copyload, %cuv.16.ph22772800
  br i1 %cmp878, label %if.then880, label %while.cond866.outer2276

if.then880:                                       ; preds = %if.else877
  %conv881 = sitofp i64 %along.0.copyload to double
  %add882 = fadd double %cdouble.11.ph2822, %conv881
  %dec86722842798 = add nsw i32 %dec8672288, -1
  %cmp86822852799 = icmp sgt i32 %dec8672288, 0
  br i1 %cmp86822852799, label %while.body870.lr.ph.lr.ph, label %if.then1388

while.body870.lr.ph.lr.ph:                        ; preds = %while.body870.lr.ph.lr.ph.lr.ph, %if.then880
  %dec867228427982826 = phi i32 [ %dec867228427982820, %while.body870.lr.ph.lr.ph.lr.ph ], [ %dec86722842798, %if.then880 ]
  %s.addr.27.ph2825 = phi i8* [ %s.addr.1, %while.body870.lr.ph.lr.ph.lr.ph ], [ %add.ptr871, %if.then880 ]
  %sp.16.ph2824 = phi %struct.sv** [ %sp.3, %while.body870.lr.ph.lr.ph.lr.ph ], [ %sp.162286, %if.then880 ]
  %cuv.16.ph2823 = phi i64 [ %cuv.1, %while.body870.lr.ph.lr.ph.lr.ph ], [ %cuv.16.ph22772800, %if.then880 ]
  %cdouble.11.ph2822 = phi double [ %cdouble.1, %while.body870.lr.ph.lr.ph.lr.ph ], [ %add882, %if.then880 ]
  br label %while.body870.lr.ph

while.cond866.outer2276:                          ; preds = %if.else877
  %dec8672284 = add nsw i32 %dec8672288, -1
  %cmp8682285 = icmp sgt i32 %dec8672288, 0
  br i1 %cmp8682285, label %while.body870.lr.ph, label %sw.epilog1386

while.body870.lr.ph:                              ; preds = %while.body870.lr.ph.lr.ph, %while.cond866.outer2276
  %dec86722842803 = phi i32 [ %dec867228427982826, %while.body870.lr.ph.lr.ph ], [ %dec8672284, %while.cond866.outer2276 ]
  %s.addr.27.ph22802802 = phi i8* [ %s.addr.27.ph2825, %while.body870.lr.ph.lr.ph ], [ %add.ptr871, %while.cond866.outer2276 ]
  %sp.16.ph22792801 = phi %struct.sv** [ %sp.16.ph2824, %while.body870.lr.ph.lr.ph ], [ %sp.162286, %while.cond866.outer2276 ]
  %cuv.16.ph22772800 = phi i64 [ %cuv.16.ph2823, %while.body870.lr.ph.lr.ph ], [ %add884, %while.cond866.outer2276 ]
  br label %while.body870

while.body893:                                    ; preds = %while.body893.lr.ph, %if.then896
  %dec8902271 = phi i32 [ %dec89022672760, %while.body893.lr.ph ], [ %dec890, %if.then896 ]
  %s.addr.282270 = phi i8* [ %s.addr.28.ph22632759, %while.body893.lr.ph ], [ %add.ptr894, %if.then896 ]
  %sp.172269 = phi %struct.sv** [ %sp.17.ph22622758, %while.body893.lr.ph ], [ %incdec.ptr900, %if.then896 ]
  %ai32.0.cast = bitcast i8* %s.addr.282270 to i32*
  %ai32.0.copyload = load i32* %ai32.0.cast, align 1
  %add.ptr894 = getelementptr inbounds i8* %s.addr.282270, i64 4
  %conv897 = sext i32 %ai32.0.copyload to i64
  br i1 %tobool895, label %if.then896, label %if.else901

if.then896:                                       ; preds = %while.body893
  %call898 = call %struct.sv* @Perl_newSViv(i64 %conv897) #8
  %call899 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call898) #8
  %incdec.ptr900 = getelementptr inbounds %struct.sv** %sp.172269, i64 1
  store %struct.sv* %call899, %struct.sv** %incdec.ptr900, align 8, !tbaa !0
  %dec890 = add nsw i32 %dec8902271, -1
  %cmp891 = icmp sgt i32 %dec8902271, 0
  br i1 %cmp891, label %while.body893, label %if.end1441

if.else901:                                       ; preds = %while.body893
  %add909 = add i64 %conv897, %cuv.17.ph22602757
  br i1 %cmp902, label %if.then904, label %while.cond889.outer2259

if.then904:                                       ; preds = %if.else901
  %conv905 = sitofp i32 %ai32.0.copyload to double
  %add906 = fadd double %cdouble.12.ph2779, %conv905
  %dec89022672755 = add nsw i32 %dec8902271, -1
  %cmp89122682756 = icmp sgt i32 %dec8902271, 0
  br i1 %cmp89122682756, label %while.body893.lr.ph.lr.ph, label %if.then1388

while.body893.lr.ph.lr.ph:                        ; preds = %while.body893.lr.ph.lr.ph.lr.ph, %if.then904
  %dec890226727552783 = phi i32 [ %dec890226727552777, %while.body893.lr.ph.lr.ph.lr.ph ], [ %dec89022672755, %if.then904 ]
  %s.addr.28.ph2782 = phi i8* [ %s.addr.1, %while.body893.lr.ph.lr.ph.lr.ph ], [ %add.ptr894, %if.then904 ]
  %sp.17.ph2781 = phi %struct.sv** [ %sp.3, %while.body893.lr.ph.lr.ph.lr.ph ], [ %sp.172269, %if.then904 ]
  %cuv.17.ph2780 = phi i64 [ %cuv.1, %while.body893.lr.ph.lr.ph.lr.ph ], [ %cuv.17.ph22602757, %if.then904 ]
  %cdouble.12.ph2779 = phi double [ %cdouble.1, %while.body893.lr.ph.lr.ph.lr.ph ], [ %add906, %if.then904 ]
  br label %while.body893.lr.ph

while.cond889.outer2259:                          ; preds = %if.else901
  %dec8902267 = add nsw i32 %dec8902271, -1
  %cmp8912268 = icmp sgt i32 %dec8902271, 0
  br i1 %cmp8912268, label %while.body893.lr.ph, label %sw.epilog1386

while.body893.lr.ph:                              ; preds = %while.body893.lr.ph.lr.ph, %while.cond889.outer2259
  %dec89022672760 = phi i32 [ %dec890226727552783, %while.body893.lr.ph.lr.ph ], [ %dec8902267, %while.cond889.outer2259 ]
  %s.addr.28.ph22632759 = phi i8* [ %s.addr.28.ph2782, %while.body893.lr.ph.lr.ph ], [ %add.ptr894, %while.cond889.outer2259 ]
  %sp.17.ph22622758 = phi %struct.sv** [ %sp.17.ph2781, %while.body893.lr.ph.lr.ph ], [ %sp.172269, %while.cond889.outer2259 ]
  %cuv.17.ph22602757 = phi i64 [ %cuv.17.ph2780, %while.body893.lr.ph.lr.ph ], [ %add909, %while.cond889.outer2259 ]
  br label %while.body893

while.body918:                                    ; preds = %while.body918.lr.ph, %if.then921
  %dec9152254 = phi i32 [ %dec91522502717, %while.body918.lr.ph ], [ %dec915, %if.then921 ]
  %s.addr.292253 = phi i8* [ %s.addr.29.ph22462716, %while.body918.lr.ph ], [ %add.ptr919, %if.then921 ]
  %sp.182252 = phi %struct.sv** [ %sp.18.ph22452715, %while.body918.lr.ph ], [ %incdec.ptr924, %if.then921 ]
  %aulong.0.cast = bitcast i8* %s.addr.292253 to i64*
  %aulong.0.copyload = load i64* %aulong.0.cast, align 1
  %add.ptr919 = getelementptr inbounds i8* %s.addr.292253, i64 8
  br i1 %tobool920, label %if.then921, label %if.else925

if.then921:                                       ; preds = %while.body918
  %call922 = call %struct.sv* @Perl_newSVuv(i64 %aulong.0.copyload) #8
  %call923 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call922) #8
  %incdec.ptr924 = getelementptr inbounds %struct.sv** %sp.182252, i64 1
  store %struct.sv* %call923, %struct.sv** %incdec.ptr924, align 8, !tbaa !0
  %dec915 = add nsw i32 %dec9152254, -1
  %cmp916 = icmp sgt i32 %dec9152254, 0
  br i1 %cmp916, label %while.body918, label %if.end1441

if.else925:                                       ; preds = %while.body918
  %add932 = add i64 %aulong.0.copyload, %cuv.18.ph22432714
  br i1 %cmp926, label %if.then928, label %while.cond914.outer2242

if.then928:                                       ; preds = %if.else925
  %conv929 = uitofp i64 %aulong.0.copyload to double
  %add930 = fadd double %cdouble.13.ph2736, %conv929
  %dec91522502712 = add nsw i32 %dec9152254, -1
  %cmp91622512713 = icmp sgt i32 %dec9152254, 0
  br i1 %cmp91622512713, label %while.body918.lr.ph.lr.ph, label %if.then1388

while.body918.lr.ph.lr.ph:                        ; preds = %while.body918.lr.ph.lr.ph.lr.ph, %if.then928
  %dec915225027122740 = phi i32 [ %dec915225027122734, %while.body918.lr.ph.lr.ph.lr.ph ], [ %dec91522502712, %if.then928 ]
  %s.addr.29.ph2739 = phi i8* [ %s.addr.1, %while.body918.lr.ph.lr.ph.lr.ph ], [ %add.ptr919, %if.then928 ]
  %sp.18.ph2738 = phi %struct.sv** [ %sp.3, %while.body918.lr.ph.lr.ph.lr.ph ], [ %sp.182252, %if.then928 ]
  %cuv.18.ph2737 = phi i64 [ %cuv.1, %while.body918.lr.ph.lr.ph.lr.ph ], [ %cuv.18.ph22432714, %if.then928 ]
  %cdouble.13.ph2736 = phi double [ %cdouble.1, %while.body918.lr.ph.lr.ph.lr.ph ], [ %add930, %if.then928 ]
  br label %while.body918.lr.ph

while.cond914.outer2242:                          ; preds = %if.else925
  %dec9152250 = add nsw i32 %dec9152254, -1
  %cmp9162251 = icmp sgt i32 %dec9152254, 0
  br i1 %cmp9162251, label %while.body918.lr.ph, label %sw.epilog1386

while.body918.lr.ph:                              ; preds = %while.body918.lr.ph.lr.ph, %while.cond914.outer2242
  %dec91522502717 = phi i32 [ %dec915225027122740, %while.body918.lr.ph.lr.ph ], [ %dec9152250, %while.cond914.outer2242 ]
  %s.addr.29.ph22462716 = phi i8* [ %s.addr.29.ph2739, %while.body918.lr.ph.lr.ph ], [ %add.ptr919, %while.cond914.outer2242 ]
  %sp.18.ph22452715 = phi %struct.sv** [ %sp.18.ph2738, %while.body918.lr.ph.lr.ph ], [ %sp.182252, %while.cond914.outer2242 ]
  %cuv.18.ph22432714 = phi i64 [ %cuv.18.ph2737, %while.body918.lr.ph.lr.ph ], [ %add932, %while.cond914.outer2242 ]
  br label %while.body918

while.body941:                                    ; preds = %while.body941.lr.ph, %if.then957
  %dec9382237 = phi i32 [ %dec93822332674, %while.body941.lr.ph ], [ %dec938, %if.then957 ]
  %s.addr.302236 = phi i8* [ %s.addr.30.ph22292673, %while.body941.lr.ph ], [ %add.ptr942, %if.then957 ]
  %sp.192235 = phi %struct.sv** [ %sp.19.ph22282672, %while.body941.lr.ph ], [ %incdec.ptr961, %if.then957 ]
  %au32.0.cast = bitcast i8* %s.addr.302236 to i32*
  %au32.0.copyload = load i32* %au32.0.cast, align 1
  %add.ptr942 = getelementptr inbounds i8* %s.addr.302236, i64 4
  switch i32 %10, label %if.end955 [
    i32 78, label %if.end948.thread
    i32 86, label %if.then951
  ]

if.end948.thread:                                 ; preds = %while.body941
  %122 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %au32.0.copyload) #1, !srcloc !6
  br label %if.end955

if.then951:                                       ; preds = %while.body941
  %conv952 = zext i32 %au32.0.copyload to i64
  %call953 = call i64 @vtohl(i64 %conv952) #8
  %conv954 = trunc i64 %call953 to i32
  br label %if.end955

if.end955:                                        ; preds = %while.body941, %if.end948.thread, %if.then951
  %au32.1 = phi i32 [ %conv954, %if.then951 ], [ %122, %if.end948.thread ], [ %au32.0.copyload, %while.body941 ]
  %conv958 = zext i32 %au32.1 to i64
  br i1 %tobool956, label %if.then957, label %if.else962

if.then957:                                       ; preds = %if.end955
  %call959 = call %struct.sv* @Perl_newSVuv(i64 %conv958) #8
  %call960 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call959) #8
  %incdec.ptr961 = getelementptr inbounds %struct.sv** %sp.192235, i64 1
  store %struct.sv* %call960, %struct.sv** %incdec.ptr961, align 8, !tbaa !0
  %dec938 = add nsw i32 %dec9382237, -1
  %cmp939 = icmp sgt i32 %dec9382237, 0
  br i1 %cmp939, label %while.body941, label %if.end1441

if.else962:                                       ; preds = %if.end955
  %add970 = add i64 %conv958, %cuv.19.ph22262671
  br i1 %cmp963, label %if.then965, label %while.cond937.outer2225

if.then965:                                       ; preds = %if.else962
  %conv966 = uitofp i32 %au32.1 to double
  %add967 = fadd double %cdouble.14.ph2693, %conv966
  %dec93822332669 = add nsw i32 %dec9382237, -1
  %cmp93922342670 = icmp sgt i32 %dec9382237, 0
  br i1 %cmp93922342670, label %while.body941.lr.ph.lr.ph, label %if.then1388

while.body941.lr.ph.lr.ph:                        ; preds = %while.body941.lr.ph.lr.ph.lr.ph, %if.then965
  %dec938223326692697 = phi i32 [ %dec938223326692691, %while.body941.lr.ph.lr.ph.lr.ph ], [ %dec93822332669, %if.then965 ]
  %s.addr.30.ph2696 = phi i8* [ %s.addr.1, %while.body941.lr.ph.lr.ph.lr.ph ], [ %add.ptr942, %if.then965 ]
  %sp.19.ph2695 = phi %struct.sv** [ %sp.3, %while.body941.lr.ph.lr.ph.lr.ph ], [ %sp.192235, %if.then965 ]
  %cuv.19.ph2694 = phi i64 [ %cuv.1, %while.body941.lr.ph.lr.ph.lr.ph ], [ %cuv.19.ph22262671, %if.then965 ]
  %cdouble.14.ph2693 = phi double [ %cdouble.1, %while.body941.lr.ph.lr.ph.lr.ph ], [ %add967, %if.then965 ]
  br label %while.body941.lr.ph

while.cond937.outer2225:                          ; preds = %if.else962
  %dec9382233 = add nsw i32 %dec9382237, -1
  %cmp9392234 = icmp sgt i32 %dec9382237, 0
  br i1 %cmp9392234, label %while.body941.lr.ph, label %sw.epilog1386

while.body941.lr.ph:                              ; preds = %while.body941.lr.ph.lr.ph, %while.cond937.outer2225
  %dec93822332674 = phi i32 [ %dec938223326692697, %while.body941.lr.ph.lr.ph ], [ %dec9382233, %while.cond937.outer2225 ]
  %s.addr.30.ph22292673 = phi i8* [ %s.addr.30.ph2696, %while.body941.lr.ph.lr.ph ], [ %add.ptr942, %while.cond937.outer2225 ]
  %sp.19.ph22282672 = phi %struct.sv** [ %sp.19.ph2695, %while.body941.lr.ph.lr.ph ], [ %sp.192235, %while.cond937.outer2225 ]
  %cuv.19.ph22262671 = phi i64 [ %cuv.19.ph2694, %while.body941.lr.ph.lr.ph ], [ %add970, %while.cond937.outer2225 ]
  br label %while.body941

while.body979:                                    ; preds = %while.body979.lr.ph, %while.body979
  %dec9762220 = phi i32 [ %dec9762216, %while.body979.lr.ph ], [ %dec976, %while.body979 ]
  %s.addr.312219 = phi i8* [ %s.addr.1, %while.body979.lr.ph ], [ %add.ptr980, %while.body979 ]
  %sp.202218 = phi %struct.sv** [ %sp.3, %while.body979.lr.ph ], [ %incdec.ptr983, %while.body979 ]
  %aptr.0.cast = bitcast i8* %s.addr.312219 to i8**
  %aptr.0.copyload = load i8** %aptr.0.cast, align 1
  %add.ptr980 = getelementptr inbounds i8* %s.addr.312219, i64 8
  %call981 = call %struct.sv* @Perl_newSVpv(i8* %aptr.0.copyload, i64 0) #8
  %call982 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call981) #8
  %incdec.ptr983 = getelementptr inbounds %struct.sv** %sp.202218, i64 1
  store %struct.sv* %call982, %struct.sv** %incdec.ptr983, align 8, !tbaa !0
  %dec976 = add nsw i32 %dec9762220, -1
  %cmp977 = icmp sgt i32 %dec9762220, 0
  br i1 %cmp977, label %while.body979, label %while.cond975.sw.epilog1386.loopexit2215_crit_edge

while.cond987:                                    ; preds = %while.cond987.outer, %if.else1009
  %auv986.0 = phi i64 [ %or999, %if.else1009 ], [ 0, %while.cond987.outer ]
  %bytes.0 = phi i32 [ %inc1010, %if.else1009 ], [ %bytes.0.ph, %while.cond987.outer ]
  %s.addr.32 = phi i8* [ %incdec.ptr1000, %if.else1009 ], [ %s.addr.32.ph, %while.cond987.outer ]
  %cmp991 = icmp ult i8* %s.addr.32, %strend
  %or.cond2099 = and i1 %cmp988, %cmp991
  br i1 %or.cond2099, label %while.body994, label %while.end1053

while.body994:                                    ; preds = %while.cond987
  %shl995 = shl i64 %auv986.0, 7
  %123 = load i8* %s.addr.32, align 1, !tbaa !1
  %conv9962078 = zext i8 %123 to i64
  %and997 = and i64 %conv9962078, 127
  %or999 = or i64 %and997, %shl995
  %incdec.ptr1000 = getelementptr inbounds i8* %s.addr.32, i64 1
  %cmp1002 = icmp sgt i8 %123, -1
  br i1 %cmp1002, label %if.then1004, label %if.else1009

if.then1004:                                      ; preds = %while.body994
  %call1005 = call %struct.sv* @Perl_newSVuv(i64 %or999) #8
  %call1006 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1005) #8
  %incdec.ptr1007 = getelementptr inbounds %struct.sv** %sp.21.ph, i64 1
  store %struct.sv* %call1006, %struct.sv** %incdec.ptr1007, align 8, !tbaa !0
  br label %while.cond987.outer.backedge

while.cond987.outer.backedge:                     ; preds = %if.then1004, %while.end1047
  %sp.21.ph.be = phi %struct.sv** [ %incdec.ptr1007, %if.then1004 ], [ %incdec.ptr1049, %while.end1047 ]
  %bytes.0.ph.be = phi i32 [ 0, %if.then1004 ], [ %bytes.1, %while.end1047 ]
  %s.addr.32.ph.be = phi i8* [ %incdec.ptr1000, %if.then1004 ], [ %s.addr.34, %while.end1047 ]
  %len.41.ph.be = add nsw i32 %len.41.ph, -1
  br label %while.cond987.outer

while.cond987.outer:                              ; preds = %if.end86, %while.cond987.outer.backedge
  %len.41.ph = phi i32 [ %len.41.ph.be, %while.cond987.outer.backedge ], [ %len.5, %if.end86 ]
  %sp.21.ph = phi %struct.sv** [ %sp.21.ph.be, %while.cond987.outer.backedge ], [ %sp.3, %if.end86 ]
  %bytes.0.ph = phi i32 [ %bytes.0.ph.be, %while.cond987.outer.backedge ], [ 0, %if.end86 ]
  %s.addr.32.ph = phi i8* [ %s.addr.32.ph.be, %while.cond987.outer.backedge ], [ %s.addr.1, %if.end86 ]
  %cmp988 = icmp sgt i32 %len.41.ph, 0
  br label %while.cond987

if.else1009:                                      ; preds = %while.body994
  %inc1010 = add i32 %bytes.0, 1
  %cmp1012 = icmp ugt i32 %inc1010, 7
  br i1 %cmp1012, label %if.then1014, label %while.cond987

if.then1014:                                      ; preds = %if.else1009
  %call1015 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i32 20, i64 %or999) #8
  br label %while.cond1016

while.cond1016:                                   ; preds = %S_mul128.exit, %if.then1014
  %sv.0 = phi %struct.sv* [ %call1015, %if.then1014 ], [ %sv.addr.0.i, %S_mul128.exit ]
  %s.addr.33 = phi i8* [ %incdec.ptr1000, %if.then1014 ], [ %incdec.ptr1024, %S_mul128.exit ]
  %cmp1017 = icmp ult i8* %s.addr.33, %strend
  br i1 %cmp1017, label %while.body1019, label %while.end1030

while.body1019:                                   ; preds = %while.cond1016
  %124 = load i8* %s.addr.33, align 1, !tbaa !1
  %and1021 = and i8 %124, 127
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %sv_flags.i = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 2
  %125 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %125, 262144
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %while.body1019
  %sv_any.i = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %126 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %126, i64 8
  %127 = bitcast i8* %xpv_cur.i to i64*
  %128 = load i64* %127, align 8, !tbaa !4
  store i64 %128, i64* %len.i, align 8, !tbaa !4
  %xpv_pv.i = bitcast i8* %126 to i8**
  %129 = load i8** %xpv_pv.i, align 8, !tbaa !0
  br label %cond.end.i

cond.false.i:                                     ; preds = %while.body1019
  %call.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.0, i64* %len.i, i32 2) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8* [ %129, %cond.true.i ], [ %call.i, %cond.false.i ]
  %call2.i = call i32 @strncmp(i8* %cond.i, i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i64 4) #8
  %tobool.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  %call3.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i64 10) #8
  call void @Perl_sv_catsv_flags(%struct.sv* %call3.i, %struct.sv* %sv.0, i32 2) #8
  call void @Perl_sv_free(%struct.sv* %sv.0) #8
  %sv_flags4.i = getelementptr inbounds %struct.sv* %call3.i, i64 0, i32 2
  %130 = load i32* %sv_flags4.i, align 4, !tbaa !3
  %and5.i = and i32 %130, 262144
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %cond.false12.i, label %cond.true7.i

cond.true7.i:                                     ; preds = %if.then.i
  %sv_any8.i = getelementptr inbounds %struct.sv* %call3.i, i64 0, i32 0
  %131 = load i8** %sv_any8.i, align 8, !tbaa !0
  %xpv_cur9.i = getelementptr inbounds i8* %131, i64 8
  %132 = bitcast i8* %xpv_cur9.i to i64*
  %133 = load i64* %132, align 8, !tbaa !4
  store i64 %133, i64* %len.i, align 8, !tbaa !4
  %xpv_pv11.i = bitcast i8* %131 to i8**
  %134 = load i8** %xpv_pv11.i, align 8, !tbaa !0
  br label %if.end.i

cond.false12.i:                                   ; preds = %if.then.i
  %call13.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %call3.i, i64* %len.i, i32 2) #8
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %cond.false12.i, %cond.true7.i
  %s.0.i = phi i8* [ %134, %cond.true7.i ], [ %call13.i, %cond.false12.i ], [ %cond.i, %cond.end.i ]
  %sv.addr.0.i = phi %struct.sv* [ %call3.i, %cond.true7.i ], [ %call3.i, %cond.false12.i ], [ %sv.0, %cond.end.i ]
  %135 = load i64* %len.i, align 8, !tbaa !4
  %add.ptr.sum.i = add i64 %135, -1
  %add.ptr16.i = getelementptr inbounds i8* %s.0.i, i64 %add.ptr.sum.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end.i
  %t.0.i = phi i8* [ %add.ptr16.i, %if.end.i ], [ %incdec.ptr.i, %while.cond.i ]
  %136 = load i8* %t.0.i, align 1, !tbaa !1
  %lnot.i = icmp eq i8 %136, 0
  %incdec.ptr.i = getelementptr inbounds i8* %t.0.i, i64 -1
  br i1 %lnot.i, label %while.cond.i, label %while.cond18.preheader.i

while.cond18.preheader.i:                         ; preds = %while.cond.i
  %cmp1947.i = icmp ugt i8* %t.0.i, %s.0.i
  br i1 %cmp1947.i, label %while.body20.i.preheader, label %S_mul128.exit

while.body20.i.preheader:                         ; preds = %while.cond18.preheader.i
  %conv.i2195 = sext i8 %136 to i32
  %sub.i2196 = shl nsw i32 %conv.i2195, 7
  %conv21.i2197 = zext i8 %and1021 to i32
  %shl50.i2198 = or i32 %conv21.i2197, -6144
  %add.i2199 = add i32 %shl50.i2198, %sub.i2196
  %rem.i2200 = urem i32 %add.i2199, 10
  %add2446.i2201 = or i32 %rem.i2200, 48
  %conv25.i2202 = trunc i32 %add2446.i2201 to i8
  store i8 %conv25.i2202, i8* %t.0.i, align 1, !tbaa !1
  %cmp19.i2204 = icmp ugt i8* %incdec.ptr.i, %s.0.i
  br i1 %cmp19.i2204, label %while.body20.while.body20_crit_edge.i, label %S_mul128.exit

while.body20.while.body20_crit_edge.i:            ; preds = %while.body20.i.preheader, %while.body20.while.body20_crit_edge.i
  %incdec.ptr26.i2206 = phi i8* [ %incdec.ptr26.i, %while.body20.while.body20_crit_edge.i ], [ %incdec.ptr.i, %while.body20.i.preheader ]
  %add.i2205 = phi i32 [ %add.i, %while.body20.while.body20_crit_edge.i ], [ %add.i2199, %while.body20.i.preheader ]
  %div.i = udiv i32 %add.i2205, 10
  %.pre.i = load i8* %incdec.ptr26.i2206, align 1, !tbaa !1
  %conv.i = sext i8 %.pre.i to i32
  %sub.i = shl nsw i32 %conv.i, 7
  %conv21.i = and i32 %div.i, 255
  %shl50.i = or i32 %conv21.i, -6144
  %add.i = add i32 %shl50.i, %sub.i
  %rem.i = urem i32 %add.i, 10
  %add2446.i = or i32 %rem.i, 48
  %conv25.i = trunc i32 %add2446.i to i8
  %incdec.ptr26.i = getelementptr inbounds i8* %incdec.ptr26.i2206, i64 -1
  store i8 %conv25.i, i8* %incdec.ptr26.i2206, align 1, !tbaa !1
  %cmp19.i = icmp ugt i8* %incdec.ptr26.i, %s.0.i
  br i1 %cmp19.i, label %while.body20.while.body20_crit_edge.i, label %S_mul128.exit

S_mul128.exit:                                    ; preds = %while.body20.i.preheader, %while.body20.while.body20_crit_edge.i, %while.cond18.preheader.i
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  %incdec.ptr1024 = getelementptr inbounds i8* %s.addr.33, i64 1
  %137 = load i8* %s.addr.33, align 1, !tbaa !1
  %tobool1027 = icmp slt i8 %137, 0
  br i1 %tobool1027, label %while.cond1016, label %while.end1030

while.end1030:                                    ; preds = %S_mul128.exit, %while.cond1016
  %sv.1 = phi %struct.sv* [ %sv.0, %while.cond1016 ], [ %sv.addr.0.i, %S_mul128.exit ]
  %bytes.1 = phi i32 [ %inc1010, %while.cond1016 ], [ 0, %S_mul128.exit ]
  %s.addr.34 = phi i8* [ %s.addr.33, %while.cond1016 ], [ %incdec.ptr1024, %S_mul128.exit ]
  %sv_flags1031 = getelementptr inbounds %struct.sv* %sv.1, i64 0, i32 2
  %138 = load i32* %sv_flags1031, align 4, !tbaa !3
  %and1032 = and i32 %138, 262144
  %cmp1033 = icmp eq i32 %and1032, 0
  br i1 %cmp1033, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.end1030
  %sv_any1035 = getelementptr inbounds %struct.sv* %sv.1, i64 0, i32 0
  %139 = load i8** %sv_any1035, align 8, !tbaa !0
  %xpv_cur1036 = getelementptr inbounds i8* %139, i64 8
  %140 = bitcast i8* %xpv_cur1036 to i64*
  %141 = load i64* %140, align 8, !tbaa !4
  store i64 %141, i64* %n_a, align 8, !tbaa !4
  %xpv_pv1038 = bitcast i8* %139 to i8**
  %142 = load i8** %xpv_pv1038, align 8, !tbaa !0
  br label %while.cond1041

cond.false:                                       ; preds = %while.end1030
  %call1039 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv.1, i64* %n_a, i32 2) #8
  br label %while.cond1041

while.cond1041:                                   ; preds = %cond.true, %cond.false, %while.cond1041
  %t.0 = phi i8* [ %incdec.ptr1046, %while.cond1041 ], [ %142, %cond.true ], [ %call1039, %cond.false ]
  %143 = load i8* %t.0, align 1, !tbaa !1
  %cmp1043 = icmp eq i8 %143, 48
  %incdec.ptr1046 = getelementptr inbounds i8* %t.0, i64 1
  br i1 %cmp1043, label %while.cond1041, label %while.end1047

while.end1047:                                    ; preds = %while.cond1041
  call void @Perl_sv_chop(%struct.sv* %sv.1, i8* %t.0) #8
  %call1048 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %sv.1) #8
  %incdec.ptr1049 = getelementptr inbounds %struct.sv** %sp.21.ph, i64 1
  store %struct.sv* %call1048, %struct.sv** %incdec.ptr1049, align 8, !tbaa !0
  br label %while.cond987.outer.backedge

while.end1053:                                    ; preds = %while.cond987
  %tobool1057 = icmp eq i32 %bytes.0, 0
  %or.cond2100 = or i1 %cmp991, %tobool1057
  br i1 %or.cond2100, label %sw.epilog1386, label %if.then1058

if.then1058:                                      ; preds = %while.end1053
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str38, i64 0, i64 0)) #8
  br label %sw.epilog1386

sw.bb1060:                                        ; preds = %if.end86
  %144 = load i32* %howlen15, align 4, !tbaa !1
  %cmp1062 = icmp eq i32 %144, 2
  br i1 %cmp1062, label %if.then1064, label %if.end1065

if.then1064:                                      ; preds = %sw.bb1060
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str39, i64 0, i64 0)) #8
  br label %if.end1065

if.end1065:                                       ; preds = %sw.bb1060, %if.then1064
  %145 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1066 = ptrtoint %struct.sv** %145 to i64
  %sub.ptr.rhs.cast1067 = ptrtoint %struct.sv** %sp.3 to i64
  %sub.ptr.sub1068 = sub i64 %sub.ptr.lhs.cast1066, %sub.ptr.rhs.cast1067
  %cmp1070 = icmp slt i64 %sub.ptr.sub1068, 8
  br i1 %cmp1070, label %if.then1072, label %if.end1074

if.then1072:                                      ; preds = %if.end1065
  %call1073 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3, %struct.sv** %sp.3, i32 1) #8
  br label %if.end1074

if.end1074:                                       ; preds = %if.then1072, %if.end1065
  %sp.22 = phi %struct.sv** [ %call1073, %if.then1072 ], [ %sp.3, %if.end1065 ]
  %sub.ptr.rhs.cast1076 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub1077 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast1076
  %cmp1078 = icmp ult i64 %sub.ptr.sub1077, 8
  br i1 %cmp1078, label %sw.epilog1386, label %if.else1081

if.else1081:                                      ; preds = %if.end1074
  %aptr.0.cast1651 = bitcast i8* %s.addr.1 to i8**
  %aptr.0.copyload1652 = load i8** %aptr.0.cast1651, align 1
  %add.ptr1082 = getelementptr inbounds i8* %s.addr.1, i64 8
  %conv1084 = sext i32 %len.5 to i64
  %call1085 = call %struct.sv* @Perl_newSVpvn(i8* %aptr.0.copyload1652, i64 %conv1084) #8
  %call1086 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1085) #8
  %incdec.ptr1087 = getelementptr inbounds %struct.sv** %sp.22, i64 1
  store %struct.sv* %call1086, %struct.sv** %incdec.ptr1087, align 8, !tbaa !0
  br label %sw.epilog1386

while.body1093:                                   ; preds = %while.body1093.lr.ph, %cond.true1102
  %dec10902191 = phi i32 [ %dec109021872631, %while.body1093.lr.ph ], [ %dec1090, %cond.true1102 ]
  %s.addr.352190 = phi i8* [ %s.addr.35.ph21832630, %while.body1093.lr.ph ], [ %add.ptr1094, %cond.true1102 ]
  %sp.232189 = phi %struct.sv** [ %sp.23.ph21822629, %while.body1093.lr.ph ], [ %incdec.ptr1110, %cond.true1102 ]
  %aquad.0.cast = bitcast i8* %s.addr.352190 to i64*
  %aquad.0.copyload = load i64* %aquad.0.cast, align 1
  %add.ptr1094 = getelementptr inbounds i8* %s.addr.352190, i64 8
  br i1 %tobool1095, label %cond.true1102, label %if.else1111

cond.true1102:                                    ; preds = %while.body1093
  %call1103 = call %struct.sv* @Perl_newSViv(i64 %aquad.0.copyload) #8
  %call1109 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1103) #8
  %incdec.ptr1110 = getelementptr inbounds %struct.sv** %sp.232189, i64 1
  store %struct.sv* %call1109, %struct.sv** %incdec.ptr1110, align 8, !tbaa !0
  %dec1090 = add nsw i32 %dec10902191, -1
  %cmp1091 = icmp sgt i32 %dec10902191, 0
  br i1 %cmp1091, label %while.body1093, label %if.end1441

if.else1111:                                      ; preds = %while.body1093
  %add1118 = add i64 %aquad.0.copyload, %cuv.20.ph21802628
  br i1 %cmp1112, label %if.then1114, label %while.cond1089.outer2179

if.then1114:                                      ; preds = %if.else1111
  %conv1115 = sitofp i64 %aquad.0.copyload to double
  %add1116 = fadd double %cdouble.15.ph2650, %conv1115
  %dec109021872626 = add nsw i32 %dec10902191, -1
  %cmp109121882627 = icmp sgt i32 %dec10902191, 0
  br i1 %cmp109121882627, label %while.body1093.lr.ph.lr.ph, label %if.then1388

while.body1093.lr.ph.lr.ph:                       ; preds = %while.body1093.lr.ph.lr.ph.lr.ph, %if.then1114
  %dec1090218726262654 = phi i32 [ %dec1090218726262648, %while.body1093.lr.ph.lr.ph.lr.ph ], [ %dec109021872626, %if.then1114 ]
  %s.addr.35.ph2653 = phi i8* [ %s.addr.1, %while.body1093.lr.ph.lr.ph.lr.ph ], [ %add.ptr1094, %if.then1114 ]
  %sp.23.ph2652 = phi %struct.sv** [ %sp.3, %while.body1093.lr.ph.lr.ph.lr.ph ], [ %sp.232189, %if.then1114 ]
  %cuv.20.ph2651 = phi i64 [ %cuv.1, %while.body1093.lr.ph.lr.ph.lr.ph ], [ %cuv.20.ph21802628, %if.then1114 ]
  %cdouble.15.ph2650 = phi double [ %cdouble.1, %while.body1093.lr.ph.lr.ph.lr.ph ], [ %add1116, %if.then1114 ]
  br label %while.body1093.lr.ph

while.cond1089.outer2179:                         ; preds = %if.else1111
  %dec10902187 = add nsw i32 %dec10902191, -1
  %cmp10912188 = icmp sgt i32 %dec10902191, 0
  br i1 %cmp10912188, label %while.body1093.lr.ph, label %sw.epilog1386

while.body1093.lr.ph:                             ; preds = %while.body1093.lr.ph.lr.ph, %while.cond1089.outer2179
  %dec109021872631 = phi i32 [ %dec1090218726262654, %while.body1093.lr.ph.lr.ph ], [ %dec10902187, %while.cond1089.outer2179 ]
  %s.addr.35.ph21832630 = phi i8* [ %s.addr.35.ph2653, %while.body1093.lr.ph.lr.ph ], [ %add.ptr1094, %while.cond1089.outer2179 ]
  %sp.23.ph21822629 = phi %struct.sv** [ %sp.23.ph2652, %while.body1093.lr.ph.lr.ph ], [ %sp.232189, %while.cond1089.outer2179 ]
  %cuv.20.ph21802628 = phi i64 [ %cuv.20.ph2651, %while.body1093.lr.ph.lr.ph ], [ %add1118, %while.cond1089.outer2179 ]
  br label %while.body1093

while.body1127:                                   ; preds = %while.body1127.lr.ph, %cond.true1133
  %dec11242174 = phi i32 [ %dec112421702588, %while.body1127.lr.ph ], [ %dec1124, %cond.true1133 ]
  %s.addr.362173 = phi i8* [ %s.addr.36.ph21662587, %while.body1127.lr.ph ], [ %add.ptr1128, %cond.true1133 ]
  %sp.242172 = phi %struct.sv** [ %sp.24.ph21652586, %while.body1127.lr.ph ], [ %incdec.ptr1141, %cond.true1133 ]
  %auquad.0.cast = bitcast i8* %s.addr.362173 to i64*
  %auquad.0.copyload = load i64* %auquad.0.cast, align 1
  %add.ptr1128 = getelementptr inbounds i8* %s.addr.362173, i64 8
  br i1 %tobool1129, label %cond.true1133, label %if.else1142

cond.true1133:                                    ; preds = %while.body1127
  %call1134 = call %struct.sv* @Perl_newSVuv(i64 %auquad.0.copyload) #8
  %call1140 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1134) #8
  %incdec.ptr1141 = getelementptr inbounds %struct.sv** %sp.242172, i64 1
  store %struct.sv* %call1140, %struct.sv** %incdec.ptr1141, align 8, !tbaa !0
  %dec1124 = add nsw i32 %dec11242174, -1
  %cmp1125 = icmp sgt i32 %dec11242174, 0
  br i1 %cmp1125, label %while.body1127, label %if.end1441

if.else1142:                                      ; preds = %while.body1127
  %add1149 = add i64 %auquad.0.copyload, %cuv.21.ph21632585
  br i1 %cmp1143, label %if.then1145, label %while.cond1123.outer2162

if.then1145:                                      ; preds = %if.else1142
  %conv1146 = uitofp i64 %auquad.0.copyload to double
  %add1147 = fadd double %cdouble.16.ph2607, %conv1146
  %dec112421702583 = add nsw i32 %dec11242174, -1
  %cmp112521712584 = icmp sgt i32 %dec11242174, 0
  br i1 %cmp112521712584, label %while.body1127.lr.ph.lr.ph, label %if.then1388

while.body1127.lr.ph.lr.ph:                       ; preds = %while.body1127.lr.ph.lr.ph.lr.ph, %if.then1145
  %dec1124217025832611 = phi i32 [ %dec1124217025832605, %while.body1127.lr.ph.lr.ph.lr.ph ], [ %dec112421702583, %if.then1145 ]
  %s.addr.36.ph2610 = phi i8* [ %s.addr.1, %while.body1127.lr.ph.lr.ph.lr.ph ], [ %add.ptr1128, %if.then1145 ]
  %sp.24.ph2609 = phi %struct.sv** [ %sp.3, %while.body1127.lr.ph.lr.ph.lr.ph ], [ %sp.242172, %if.then1145 ]
  %cuv.21.ph2608 = phi i64 [ %cuv.1, %while.body1127.lr.ph.lr.ph.lr.ph ], [ %cuv.21.ph21632585, %if.then1145 ]
  %cdouble.16.ph2607 = phi double [ %cdouble.1, %while.body1127.lr.ph.lr.ph.lr.ph ], [ %add1147, %if.then1145 ]
  br label %while.body1127.lr.ph

while.cond1123.outer2162:                         ; preds = %if.else1142
  %dec11242170 = add nsw i32 %dec11242174, -1
  %cmp11252171 = icmp sgt i32 %dec11242174, 0
  br i1 %cmp11252171, label %while.body1127.lr.ph, label %sw.epilog1386

while.body1127.lr.ph:                             ; preds = %while.body1127.lr.ph.lr.ph, %while.cond1123.outer2162
  %dec112421702588 = phi i32 [ %dec1124217025832611, %while.body1127.lr.ph.lr.ph ], [ %dec11242170, %while.cond1123.outer2162 ]
  %s.addr.36.ph21662587 = phi i8* [ %s.addr.36.ph2610, %while.body1127.lr.ph.lr.ph ], [ %add.ptr1128, %while.cond1123.outer2162 ]
  %sp.24.ph21652586 = phi %struct.sv** [ %sp.24.ph2609, %while.body1127.lr.ph.lr.ph ], [ %sp.242172, %while.cond1123.outer2162 ]
  %cuv.21.ph21632585 = phi i64 [ %cuv.21.ph2608, %while.body1127.lr.ph.lr.ph ], [ %add1149, %while.cond1123.outer2162 ]
  br label %while.body1127

while.body1158:                                   ; preds = %while.body1158.lr.ph, %if.then1161
  %dec11552157 = phi i32 [ %dec115521532569, %while.body1158.lr.ph ], [ %dec1155, %if.then1161 ]
  %s.addr.372156 = phi i8* [ %s.addr.37.ph2568, %while.body1158.lr.ph ], [ %add.ptr1159, %if.then1161 ]
  %sp.252155 = phi %struct.sv** [ %sp.25.ph2567, %while.body1158.lr.ph ], [ %incdec.ptr1165, %if.then1161 ]
  %afloat.0.cast = bitcast i8* %s.addr.372156 to float*
  %afloat.0.copyload = load float* %afloat.0.cast, align 1
  %add.ptr1159 = getelementptr inbounds i8* %s.addr.372156, i64 4
  %conv1167 = fpext float %afloat.0.copyload to double
  br i1 %tobool1160, label %if.then1161, label %if.else1166

if.then1161:                                      ; preds = %while.body1158
  %call1163 = call %struct.sv* @Perl_newSVnv(double %conv1167) #8
  %call1164 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1163) #8
  %incdec.ptr1165 = getelementptr inbounds %struct.sv** %sp.252155, i64 1
  store %struct.sv* %call1164, %struct.sv** %incdec.ptr1165, align 8, !tbaa !0
  %dec1155 = add nsw i32 %dec11552157, -1
  %cmp1156 = icmp sgt i32 %dec11552157, 0
  br i1 %cmp1156, label %while.body1158, label %if.end1441

if.else1166:                                      ; preds = %while.body1158
  %add1168 = fadd double %cdouble.17.ph2566, %conv1167
  %dec11552153 = add nsw i32 %dec11552157, -1
  %cmp11562154 = icmp sgt i32 %dec11552157, 0
  br i1 %cmp11562154, label %while.body1158.lr.ph, label %sw.epilog1386

while.body1158.lr.ph:                             ; preds = %while.body1158.lr.ph.lr.ph, %if.else1166
  %dec115521532569 = phi i32 [ %dec115521532564, %while.body1158.lr.ph.lr.ph ], [ %dec11552153, %if.else1166 ]
  %s.addr.37.ph2568 = phi i8* [ %s.addr.1, %while.body1158.lr.ph.lr.ph ], [ %add.ptr1159, %if.else1166 ]
  %sp.25.ph2567 = phi %struct.sv** [ %sp.3, %while.body1158.lr.ph.lr.ph ], [ %sp.252155, %if.else1166 ]
  %cdouble.17.ph2566 = phi double [ %cdouble.1, %while.body1158.lr.ph.lr.ph ], [ %add1168, %if.else1166 ]
  br label %while.body1158

while.body1176:                                   ; preds = %while.body1176.lr.ph, %if.then1179
  %dec11732145 = phi i32 [ %dec117321412554, %while.body1176.lr.ph ], [ %dec1173, %if.then1179 ]
  %s.addr.382144 = phi i8* [ %s.addr.38.ph2553, %while.body1176.lr.ph ], [ %add.ptr1177, %if.then1179 ]
  %sp.262143 = phi %struct.sv** [ %sp.26.ph2552, %while.body1176.lr.ph ], [ %incdec.ptr1182, %if.then1179 ]
  %adouble.0.cast = bitcast i8* %s.addr.382144 to double*
  %adouble.0.copyload = load double* %adouble.0.cast, align 1
  %add.ptr1177 = getelementptr inbounds i8* %s.addr.382144, i64 8
  br i1 %tobool1178, label %if.then1179, label %if.else1183

if.then1179:                                      ; preds = %while.body1176
  %call1180 = call %struct.sv* @Perl_newSVnv(double %adouble.0.copyload) #8
  %call1181 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1180) #8
  %incdec.ptr1182 = getelementptr inbounds %struct.sv** %sp.262143, i64 1
  store %struct.sv* %call1181, %struct.sv** %incdec.ptr1182, align 8, !tbaa !0
  %dec1173 = add nsw i32 %dec11732145, -1
  %cmp1174 = icmp sgt i32 %dec11732145, 0
  br i1 %cmp1174, label %while.body1176, label %if.end1441

if.else1183:                                      ; preds = %while.body1176
  %add1184 = fadd double %cdouble.18.ph2551, %adouble.0.copyload
  %dec11732141 = add nsw i32 %dec11732145, -1
  %cmp11742142 = icmp sgt i32 %dec11732145, 0
  br i1 %cmp11742142, label %while.body1176.lr.ph, label %sw.epilog1386

while.body1176.lr.ph:                             ; preds = %while.body1176.lr.ph.lr.ph, %if.else1183
  %dec117321412554 = phi i32 [ %dec117321412549, %while.body1176.lr.ph.lr.ph ], [ %dec11732141, %if.else1183 ]
  %s.addr.38.ph2553 = phi i8* [ %s.addr.1, %while.body1176.lr.ph.lr.ph ], [ %add.ptr1177, %if.else1183 ]
  %sp.26.ph2552 = phi %struct.sv** [ %sp.3, %while.body1176.lr.ph.lr.ph ], [ %sp.262143, %if.else1183 ]
  %cdouble.18.ph2551 = phi double [ %cdouble.1, %while.body1176.lr.ph.lr.ph ], [ %add1184, %if.else1183 ]
  br label %while.body1176

while.body1192:                                   ; preds = %while.body1192.lr.ph, %if.then1195
  %dec11892133 = phi i32 [ %dec118921292539, %while.body1192.lr.ph ], [ %dec1189, %if.then1195 ]
  %s.addr.392132 = phi i8* [ %s.addr.39.ph2538, %while.body1192.lr.ph ], [ %add.ptr1193, %if.then1195 ]
  %sp.272131 = phi %struct.sv** [ %sp.27.ph2537, %while.body1192.lr.ph ], [ %incdec.ptr1198, %if.then1195 ]
  %anv.0.cast = bitcast i8* %s.addr.392132 to double*
  %anv.0.copyload = load double* %anv.0.cast, align 1
  %add.ptr1193 = getelementptr inbounds i8* %s.addr.392132, i64 8
  br i1 %tobool1194, label %if.then1195, label %if.else1199

if.then1195:                                      ; preds = %while.body1192
  %call1196 = call %struct.sv* @Perl_newSVnv(double %anv.0.copyload) #8
  %call1197 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1196) #8
  %incdec.ptr1198 = getelementptr inbounds %struct.sv** %sp.272131, i64 1
  store %struct.sv* %call1197, %struct.sv** %incdec.ptr1198, align 8, !tbaa !0
  %dec1189 = add nsw i32 %dec11892133, -1
  %cmp1190 = icmp sgt i32 %dec11892133, 0
  br i1 %cmp1190, label %while.body1192, label %if.end1441

if.else1199:                                      ; preds = %while.body1192
  %add1200 = fadd double %cdouble.19.ph2536, %anv.0.copyload
  %dec11892129 = add nsw i32 %dec11892133, -1
  %cmp11902130 = icmp sgt i32 %dec11892133, 0
  br i1 %cmp11902130, label %while.body1192.lr.ph, label %sw.epilog1386

while.body1192.lr.ph:                             ; preds = %while.body1192.lr.ph.lr.ph, %if.else1199
  %dec118921292539 = phi i32 [ %dec118921292534, %while.body1192.lr.ph.lr.ph ], [ %dec11892129, %if.else1199 ]
  %s.addr.39.ph2538 = phi i8* [ %s.addr.1, %while.body1192.lr.ph.lr.ph ], [ %add.ptr1193, %if.else1199 ]
  %sp.27.ph2537 = phi %struct.sv** [ %sp.3, %while.body1192.lr.ph.lr.ph ], [ %sp.272131, %if.else1199 ]
  %cdouble.19.ph2536 = phi double [ %cdouble.1, %while.body1192.lr.ph.lr.ph ], [ %add1200, %if.else1199 ]
  br label %while.body1192

sw.bb1203:                                        ; preds = %if.end86
  %146 = load i8* getelementptr inbounds ([256 x i8]* @PL_uudmap, i64 0, i64 77), align 1, !tbaa !1
  %cmp1205 = icmp eq i8 %146, 0
  br i1 %cmp1205, label %for.body1212, label %if.end1221

for.body1212:                                     ; preds = %sw.bb1203, %for.body1212
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body1212 ], [ 0, %sw.bb1203 ]
  %i.02116 = phi i32 [ %add1219, %for.body1212 ], [ 0, %sw.bb1203 ]
  %conv1213 = trunc i32 %i.02116 to i8
  %arrayidx1215 = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %indvars.iv
  %147 = load i8* %arrayidx1215, align 1, !tbaa !1
  %idxprom1216 = zext i8 %147 to i64
  %arrayidx1217 = getelementptr inbounds [256 x i8]* @PL_uudmap, i64 0, i64 %idxprom1216
  store i8 %conv1213, i8* %arrayidx1217, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add1219 = add nsw i32 %i.02116, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 65
  br i1 %exitcond, label %for.end1220, label %for.body1212

for.end1220:                                      ; preds = %for.body1212
  store i8 0, i8* getelementptr inbounds ([256 x i8]* @PL_uudmap, i64 0, i64 32), align 1, !tbaa !1
  br label %if.end1221

if.end1221:                                       ; preds = %for.end1220, %sw.bb1203
  %sub.ptr.rhs.cast1223 = ptrtoint i8* %s.addr.1 to i64
  %sub.ptr.sub1224 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast1223
  %mul1225 = mul nsw i64 %sub.ptr.sub1224, 3
  %div1226 = sdiv i64 %mul1225, 4
  %call1227 = call %struct.sv* @Perl_newSV(i64 %div1226) #8
  %mul1225.off = add i64 %mul1225, 3
  %148 = icmp ugt i64 %mul1225.off, 6
  br i1 %148, label %if.then1229, label %while.cond1233.preheader

if.then1229:                                      ; preds = %if.end1221
  %sv_flags1230 = getelementptr inbounds %struct.sv* %call1227, i64 0, i32 2
  %149 = load i32* %sv_flags1230, align 4, !tbaa !3
  %or1231 = or i32 %149, 67371008
  store i32 %or1231, i32* %sv_flags1230, align 4, !tbaa !3
  br label %while.cond1233.preheader

while.cond1233.preheader:                         ; preds = %if.then1229, %if.end1221
  br i1 %cmp21, label %land.lhs.true1236, label %while.end1374

land.lhs.true1236:                                ; preds = %while.cond1233.preheader, %while.cond1233.backedge
  %s.addr.402123 = phi i8* [ %s.addr.40.be, %while.cond1233.backedge ], [ %s.addr.1, %while.cond1233.preheader ]
  %len.472122 = phi i32 [ %len.48.lcssa, %while.cond1233.backedge ], [ %len.5, %while.cond1233.preheader ]
  %150 = load i8* %s.addr.402123, align 1, !tbaa !1
  %.off = add i8 %150, -33
  %151 = icmp ult i8 %.off, 64
  br i1 %151, label %while.body1250, label %while.end1374

while.body1250:                                   ; preds = %land.lhs.true1236
  store i8 0, i8* %arrayidx1251, align 1, !tbaa !1
  %incdec.ptr1252 = getelementptr inbounds i8* %s.addr.402123, i64 1
  %152 = load i8* %s.addr.402123, align 1, !tbaa !1
  %idxprom1253 = zext i8 %152 to i64
  %arrayidx1254 = getelementptr inbounds [256 x i8]* @PL_uudmap, i64 0, i64 %idxprom1253
  %153 = load i8* %arrayidx1254, align 1, !tbaa !1
  %and1256 = and i8 %153, 63
  %cmp12582117 = icmp eq i8 %and1256, 0
  br i1 %cmp12582117, label %while.end1355, label %while.body1260.lr.ph

while.body1260.lr.ph:                             ; preds = %while.body1250
  %154 = zext i8 %153 to i32
  %.mask = and i8 %153, 63
  %155 = zext i8 %.mask to i64
  %156 = and i32 %154, 63
  %157 = sub i32 2, %156
  %158 = icmp sgt i32 %157, -1
  %smax = select i1 %158, i32 %157, i32 -1
  %159 = add i32 %smax, %156
  %160 = urem i32 %159, 3
  br label %while.body1260

while.body1260:                                   ; preds = %while.body1260.lr.ph, %if.end1332
  %indvars.iv3220 = phi i64 [ %155, %while.body1260.lr.ph ], [ %indvars.iv.next3221, %if.end1332 ]
  %s.addr.412119 = phi i8* [ %incdec.ptr1252, %while.body1260.lr.ph ], [ %s.addr.45, %if.end1332 ]
  %cmp1261 = icmp ult i8* %s.addr.412119, %strend
  br i1 %cmp1261, label %land.lhs.true1263, label %if.end1278

land.lhs.true1263:                                ; preds = %while.body1260
  %161 = load i8* %s.addr.412119, align 1, !tbaa !1
  %.off2115 = add i8 %161, -32
  %162 = icmp ult i8 %.off2115, 65
  br i1 %162, label %if.then1271, label %if.end1278

if.then1271:                                      ; preds = %land.lhs.true1263
  %incdec.ptr1272 = getelementptr inbounds i8* %s.addr.412119, i64 1
  %idxprom1273 = zext i8 %161 to i64
  %arrayidx1274 = getelementptr inbounds [256 x i8]* @PL_uudmap, i64 0, i64 %idxprom1273
  %163 = load i8* %arrayidx1274, align 1, !tbaa !1
  %conv12752072 = zext i8 %163 to i32
  %and1276 = shl nuw nsw i32 %conv12752072, 2
  %phitmp = and i32 %and1276, 252
  br label %if.end1278

if.end1278:                                       ; preds = %while.body1260, %land.lhs.true1263, %if.then1271
  %a.0 = phi i32 [ %phitmp, %if.then1271 ], [ 0, %land.lhs.true1263 ], [ 0, %while.body1260 ]
  %s.addr.42 = phi i8* [ %incdec.ptr1272, %if.then1271 ], [ %s.addr.412119, %land.lhs.true1263 ], [ %s.addr.412119, %while.body1260 ]
  %cmp1279 = icmp ult i8* %s.addr.42, %strend
  br i1 %cmp1279, label %land.lhs.true1281, label %if.end1296

land.lhs.true1281:                                ; preds = %if.end1278
  %164 = load i8* %s.addr.42, align 1, !tbaa !1
  %.off2114 = add i8 %164, -32
  %165 = icmp ult i8 %.off2114, 65
  br i1 %165, label %if.then1289, label %if.end1296

if.then1289:                                      ; preds = %land.lhs.true1281
  %incdec.ptr1290 = getelementptr inbounds i8* %s.addr.42, i64 1
  %idxprom1291 = zext i8 %164 to i64
  %arrayidx1292 = getelementptr inbounds [256 x i8]* @PL_uudmap, i64 0, i64 %idxprom1291
  %166 = load i8* %arrayidx1292, align 1, !tbaa !1
  %conv12932077 = zext i8 %166 to i32
  %and1294 = and i32 %conv12932077, 63
  br label %if.end1296

if.end1296:                                       ; preds = %if.end1278, %land.lhs.true1281, %if.then1289
  %b.0 = phi i32 [ %and1294, %if.then1289 ], [ 0, %land.lhs.true1281 ], [ 0, %if.end1278 ]
  %s.addr.43 = phi i8* [ %incdec.ptr1290, %if.then1289 ], [ %s.addr.42, %land.lhs.true1281 ], [ %s.addr.42, %if.end1278 ]
  %cmp1297 = icmp ult i8* %s.addr.43, %strend
  br i1 %cmp1297, label %land.lhs.true1299, label %if.end1314

land.lhs.true1299:                                ; preds = %if.end1296
  %167 = load i8* %s.addr.43, align 1, !tbaa !1
  %.off2113 = add i8 %167, -32
  %168 = icmp ult i8 %.off2113, 65
  br i1 %168, label %if.then1307, label %if.end1314

if.then1307:                                      ; preds = %land.lhs.true1299
  %incdec.ptr1308 = getelementptr inbounds i8* %s.addr.43, i64 1
  %idxprom1309 = zext i8 %167 to i64
  %arrayidx1310 = getelementptr inbounds [256 x i8]* @PL_uudmap, i64 0, i64 %idxprom1309
  %169 = load i8* %arrayidx1310, align 1, !tbaa !1
  %conv13112076 = zext i8 %169 to i32
  %and1312 = and i32 %conv13112076, 63
  br label %if.end1314

if.end1314:                                       ; preds = %if.end1296, %land.lhs.true1299, %if.then1307
  %c.0 = phi i32 [ %and1312, %if.then1307 ], [ 0, %land.lhs.true1299 ], [ 0, %if.end1296 ]
  %s.addr.44 = phi i8* [ %incdec.ptr1308, %if.then1307 ], [ %s.addr.43, %land.lhs.true1299 ], [ %s.addr.43, %if.end1296 ]
  %cmp1315 = icmp ult i8* %s.addr.44, %strend
  br i1 %cmp1315, label %land.lhs.true1317, label %if.end1332

land.lhs.true1317:                                ; preds = %if.end1314
  %170 = load i8* %s.addr.44, align 1, !tbaa !1
  %.off2112 = add i8 %170, -32
  %171 = icmp ult i8 %.off2112, 65
  br i1 %171, label %if.then1325, label %if.end1332

if.then1325:                                      ; preds = %land.lhs.true1317
  %incdec.ptr1326 = getelementptr inbounds i8* %s.addr.44, i64 1
  %idxprom1327 = zext i8 %170 to i64
  %arrayidx1328 = getelementptr inbounds [256 x i8]* @PL_uudmap, i64 0, i64 %idxprom1327
  %172 = load i8* %arrayidx1328, align 1, !tbaa !1
  %conv13292075 = zext i8 %172 to i32
  %and1330 = and i32 %conv13292075, 63
  br label %if.end1332

if.end1332:                                       ; preds = %if.end1314, %land.lhs.true1317, %if.then1325
  %d.0 = phi i32 [ %and1330, %if.then1325 ], [ 0, %land.lhs.true1317 ], [ 0, %if.end1314 ]
  %s.addr.45 = phi i8* [ %incdec.ptr1326, %if.then1325 ], [ %s.addr.44, %land.lhs.true1317 ], [ %s.addr.44, %if.end1314 ]
  %shr13342073 = lshr i32 %b.0, 4
  %or1335 = or i32 %shr13342073, %a.0
  %conv1336 = trunc i32 %or1335 to i8
  store i8 %conv1336, i8* %arrayidx1337, align 1, !tbaa !1
  %shl1338 = shl nuw nsw i32 %b.0, 4
  %shr13392074 = lshr i32 %c.0, 2
  %or1340 = or i32 %shr13392074, %shl1338
  %conv1341 = trunc i32 %or1340 to i8
  store i8 %conv1341, i8* %arrayidx1342, align 1, !tbaa !1
  %shl1343 = shl nuw nsw i32 %c.0, 6
  %or1344 = or i32 %d.0, %shl1343
  %conv1345 = trunc i32 %or1344 to i8
  store i8 %conv1345, i8* %arrayidx1346, align 1, !tbaa !1
  %173 = trunc i64 %indvars.iv3220 to i32
  %cmp1347 = icmp sgt i32 %173, 3
  %conv1353 = select i1 %cmp1347, i64 3, i64 %indvars.iv3220
  call void @Perl_sv_catpvn_flags(%struct.sv* %call1227, i8* %arrayidx1337, i64 %conv1353, i32 2) #8
  %indvars.iv.next3221 = add i64 %indvars.iv3220, -3
  %174 = trunc i64 %indvars.iv.next3221 to i32
  %cmp1258 = icmp sgt i32 %174, 0
  br i1 %cmp1258, label %while.body1260, label %while.cond1257.while.end1355_crit_edge

while.cond1257.while.end1355_crit_edge:           ; preds = %if.end1332
  %175 = add i32 %156, -3
  %176 = sub i32 %160, %159
  %177 = add i32 %175, %176
  br label %while.end1355

while.end1355:                                    ; preds = %while.body1250, %while.cond1257.while.end1355_crit_edge
  %s.addr.41.lcssa = phi i8* [ %s.addr.45, %while.cond1257.while.end1355_crit_edge ], [ %incdec.ptr1252, %while.body1250 ]
  %len.48.lcssa = phi i32 [ %177, %while.cond1257.while.end1355_crit_edge ], [ 0, %while.body1250 ]
  %178 = load i8* %s.addr.41.lcssa, align 1, !tbaa !1
  %cmp1357 = icmp eq i8 %178, 10
  %incdec.ptr1360 = getelementptr inbounds i8* %s.addr.41.lcssa, i64 1
  br i1 %cmp1357, label %while.cond1233.backedge, label %if.else1361

if.else1361:                                      ; preds = %while.end1355
  %cmp1363 = icmp ult i8* %incdec.ptr1360, %strend
  br i1 %cmp1363, label %land.lhs.true1365, label %while.cond1233.backedge

while.cond1233.backedge:                          ; preds = %if.else1361, %while.end1355, %land.lhs.true1365
  %s.addr.40.be = phi i8* [ %s.addr.41.lcssa, %if.else1361 ], [ %incdec.ptr1360, %while.end1355 ], [ %add.ptr1371.s.addr.41, %land.lhs.true1365 ]
  %cmp1234 = icmp ult i8* %s.addr.40.be, %strend
  br i1 %cmp1234, label %land.lhs.true1236, label %while.end1374

land.lhs.true1365:                                ; preds = %if.else1361
  %179 = load i8* %incdec.ptr1360, align 1, !tbaa !1
  %cmp1368 = icmp eq i8 %179, 10
  %add.ptr1371 = getelementptr inbounds i8* %s.addr.41.lcssa, i64 2
  %add.ptr1371.s.addr.41 = select i1 %cmp1368, i8* %add.ptr1371, i8* %s.addr.41.lcssa
  br label %while.cond1233.backedge

while.end1374:                                    ; preds = %while.cond1233.backedge, %land.lhs.true1236, %while.cond1233.preheader
  %s.addr.40.lcssa = phi i8* [ %s.addr.1, %while.cond1233.preheader ], [ %s.addr.402123, %land.lhs.true1236 ], [ %s.addr.40.be, %while.cond1233.backedge ]
  %len.47.lcssa = phi i32 [ %len.5, %while.cond1233.preheader ], [ %len.472122, %land.lhs.true1236 ], [ %len.48.lcssa, %while.cond1233.backedge ]
  %180 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1375 = ptrtoint %struct.sv** %180 to i64
  %sub.ptr.rhs.cast1376 = ptrtoint %struct.sv** %sp.3 to i64
  %sub.ptr.sub1377 = sub i64 %sub.ptr.lhs.cast1375, %sub.ptr.rhs.cast1376
  %cmp1379 = icmp slt i64 %sub.ptr.sub1377, 8
  br i1 %cmp1379, label %if.then1381, label %if.end1383

if.then1381:                                      ; preds = %while.end1374
  %call1382 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.3, %struct.sv** %sp.3, i32 1) #8
  br label %if.end1383

if.end1383:                                       ; preds = %if.then1381, %while.end1374
  %sp.28 = phi %struct.sv** [ %call1382, %if.then1381 ], [ %sp.3, %while.end1374 ]
  %call1384 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1227) #8
  %incdec.ptr1385 = getelementptr inbounds %struct.sv** %sp.28, i64 1
  store %struct.sv* %call1384, %struct.sv** %incdec.ptr1385, align 8, !tbaa !0
  br label %sw.epilog1386

while.cond975.sw.epilog1386.loopexit2215_crit_edge: ; preds = %while.body979
  %scevgep3287.sum = add i64 %19, 8
  %scevgep3288 = getelementptr i8* %s.addr.1, i64 %scevgep3287.sum
  br label %sw.epilog1386

while.cond618.sw.epilog1386.loopexit2413_crit_edge: ; preds = %while.body622
  %scevgep3465.sum = add i64 %100, 1
  %scevgep3466 = getelementptr %struct.sv** %sp.3, i64 %scevgep3465.sum
  %scevgep3467.sum = add i64 %100, 1
  %scevgep3468 = getelementptr i8* %s.addr.1, i64 %scevgep3467.sum
  br label %sw.epilog1386

sw.epilog1386:                                    ; preds = %while.cond599, %if.then609, %while.cond599.preheader, %while.cond382.preheader, %while.body386, %while.cond394.preheader, %while.body398, %while.cond557.preheader, %while.cond557.outer2423, %while.cond618.sw.epilog1386.loopexit2413_crit_edge, %while.cond648.preheader, %if.else704, %while.cond711.preheader, %while.cond711.outer2378, %while.cond736.preheader, %while.cond736.outer2361, %while.cond770.preheader, %while.cond770.outer2344, %while.cond795.preheader, %while.cond795.outer2327, %while.cond820.preheader, %while.cond820.outer2310, %while.cond843.preheader, %while.cond843.outer2293, %while.cond866.preheader, %while.cond866.outer2276, %while.cond889.preheader, %while.cond889.outer2259, %while.cond914.preheader, %while.cond914.outer2242, %while.cond937.preheader, %while.cond937.outer2225, %while.cond975.preheader, %while.cond975.sw.epilog1386.loopexit2215_crit_edge, %while.cond1089.preheader, %while.cond1089.outer2179, %while.cond1123.preheader, %while.cond1123.outer2162, %if.else1166, %while.cond1154.preheader, %if.else1183, %while.cond1172.preheader, %if.else1199, %while.cond1188.preheader, %while.end374, %if.then635, %if.then590, %while.end1053, %if.end1074, %if.then1058, %if.then637, %if.then592, %if.end1383, %if.else1081, %if.end553, %if.end470, %if.end279, %sw.bb179, %if.end176, %if.end150, %if.end132, %while.end
  %cdouble.20 = phi double [ %cdouble.1, %if.end1383 ], [ %cdouble.1, %if.end1074 ], [ %cdouble.1, %if.else1081 ], [ %cdouble.1, %if.then1058 ], [ %cdouble.1, %while.end1053 ], [ %cdouble.1, %if.then637 ], [ %cdouble.1, %if.then635 ], [ %cdouble.1, %if.then592 ], [ %cdouble.1, %if.then590 ], [ %cdouble.1, %if.end553 ], [ %cdouble.1, %while.end374 ], [ %cdouble.1, %if.end470 ], [ %cdouble.1, %if.end279 ], [ %cdouble.1, %sw.bb179 ], [ %cdouble.1, %if.end176 ], [ %cdouble.1, %if.end150 ], [ %cdouble.1, %if.end132 ], [ %cdouble.1, %while.end ], [ %cdouble.1, %while.cond1188.preheader ], [ %add1200, %if.else1199 ], [ %cdouble.1, %while.cond1172.preheader ], [ %add1184, %if.else1183 ], [ %cdouble.1, %while.cond1154.preheader ], [ %add1168, %if.else1166 ], [ %cdouble.16.ph2607, %while.cond1123.outer2162 ], [ %cdouble.1, %while.cond1123.preheader ], [ %cdouble.15.ph2650, %while.cond1089.outer2179 ], [ %cdouble.1, %while.cond1089.preheader ], [ %cdouble.1, %while.cond975.sw.epilog1386.loopexit2215_crit_edge ], [ %cdouble.1, %while.cond975.preheader ], [ %cdouble.14.ph2693, %while.cond937.outer2225 ], [ %cdouble.1, %while.cond937.preheader ], [ %cdouble.13.ph2736, %while.cond914.outer2242 ], [ %cdouble.1, %while.cond914.preheader ], [ %cdouble.12.ph2779, %while.cond889.outer2259 ], [ %cdouble.1, %while.cond889.preheader ], [ %cdouble.11.ph2822, %while.cond866.outer2276 ], [ %cdouble.1, %while.cond866.preheader ], [ %cdouble.10.ph2865, %while.cond843.outer2293 ], [ %cdouble.1, %while.cond843.preheader ], [ %cdouble.9.ph2908, %while.cond820.outer2310 ], [ %cdouble.1, %while.cond820.preheader ], [ %cdouble.8.ph2951, %while.cond795.outer2327 ], [ %cdouble.1, %while.cond795.preheader ], [ %cdouble.7.ph2994, %while.cond770.outer2344 ], [ %cdouble.1, %while.cond770.preheader ], [ %cdouble.6.ph3037, %while.cond736.outer2361 ], [ %cdouble.1, %while.cond736.preheader ], [ %cdouble.5.ph3080, %while.cond711.outer2378 ], [ %cdouble.1, %while.cond711.preheader ], [ %cdouble.4.ph3127, %if.else704 ], [ %cdouble.1, %while.cond648.preheader ], [ %cdouble.1, %while.cond618.sw.epilog1386.loopexit2413_crit_edge ], [ %cdouble.2.ph3170, %while.cond557.outer2423 ], [ %cdouble.1, %while.cond557.preheader ], [ %cdouble.1, %while.body398 ], [ %cdouble.1, %while.cond394.preheader ], [ %cdouble.1, %while.body386 ], [ %cdouble.1, %while.cond382.preheader ], [ %cdouble.3.ph3187, %while.cond599 ], [ %cdouble.1, %while.cond599.preheader ], [ %add611, %if.then609 ]
  %cuv.22 = phi i64 [ %cuv.1, %if.end1383 ], [ %cuv.1, %if.end1074 ], [ %cuv.1, %if.else1081 ], [ %cuv.1, %if.then1058 ], [ %cuv.1, %while.end1053 ], [ %cuv.1, %if.then637 ], [ %cuv.1, %if.then635 ], [ %cuv.1, %if.then592 ], [ %cuv.1, %if.then590 ], [ %cuv.1, %if.end553 ], [ %cuv.2.lcssa, %while.end374 ], [ %cuv.1, %if.end470 ], [ %cuv.1, %if.end279 ], [ %cuv.1, %sw.bb179 ], [ %cuv.1, %if.end176 ], [ %cuv.1, %if.end150 ], [ %cuv.1, %if.end132 ], [ %cuv.1, %while.end ], [ %cuv.1, %while.cond1188.preheader ], [ %cuv.1, %if.else1199 ], [ %cuv.1, %while.cond1172.preheader ], [ %cuv.1, %if.else1183 ], [ %cuv.1, %while.cond1154.preheader ], [ %cuv.1, %if.else1166 ], [ %add1149, %while.cond1123.outer2162 ], [ %cuv.1, %while.cond1123.preheader ], [ %add1118, %while.cond1089.outer2179 ], [ %cuv.1, %while.cond1089.preheader ], [ %cuv.1, %while.cond975.sw.epilog1386.loopexit2215_crit_edge ], [ %cuv.1, %while.cond975.preheader ], [ %add970, %while.cond937.outer2225 ], [ %cuv.1, %while.cond937.preheader ], [ %add932, %while.cond914.outer2242 ], [ %cuv.1, %while.cond914.preheader ], [ %add909, %while.cond889.outer2259 ], [ %cuv.1, %while.cond889.preheader ], [ %add884, %while.cond866.outer2276 ], [ %cuv.1, %while.cond866.preheader ], [ %add861, %while.cond843.outer2293 ], [ %cuv.1, %while.cond843.preheader ], [ %add838, %while.cond820.outer2310 ], [ %cuv.1, %while.cond820.preheader ], [ %add815, %while.cond795.outer2327 ], [ %cuv.1, %while.cond795.preheader ], [ %add790, %while.cond770.outer2344 ], [ %cuv.1, %while.cond770.preheader ], [ %add765, %while.cond736.outer2361 ], [ %cuv.1, %while.cond736.preheader ], [ %add731, %while.cond711.outer2378 ], [ %cuv.1, %while.cond711.preheader ], [ %add706, %if.else704 ], [ %cuv.1, %while.cond648.preheader ], [ %cuv.1, %while.cond618.sw.epilog1386.loopexit2413_crit_edge ], [ %add583, %while.cond557.outer2423 ], [ %cuv.1, %while.cond557.preheader ], [ %cuv.5.inc402, %while.body398 ], [ %cuv.2.lcssa, %while.cond394.preheader ], [ %cuv.3.inc390, %while.body386 ], [ %cuv.2.lcssa, %while.cond382.preheader ], [ %add614, %while.cond599 ], [ %cuv.1, %while.cond599.preheader ], [ %cuv.82512, %if.then609 ]
  %bits.16 = phi i32 [ %bits.1, %if.end1383 ], [ %bits.1, %if.end1074 ], [ %bits.1, %if.else1081 ], [ %bits.1, %if.then1058 ], [ %bits.1, %while.end1053 ], [ %bits.1, %if.then637 ], [ %bits.1, %if.then635 ], [ %bits.1, %if.then592 ], [ %bits.1, %if.then590 ], [ %bits.15, %if.end553 ], [ %bits.3.ph, %while.end374 ], [ %bits.10, %if.end470 ], [ %bits.1, %if.end279 ], [ %bits.1, %sw.bb179 ], [ %bits.1, %if.end176 ], [ %bits.1, %if.end150 ], [ %bits.1, %if.end132 ], [ %bits.1, %while.end ], [ %bits.1, %while.cond1188.preheader ], [ %bits.1, %if.else1199 ], [ %bits.1, %while.cond1172.preheader ], [ %bits.1, %if.else1183 ], [ %bits.1, %while.cond1154.preheader ], [ %bits.1, %if.else1166 ], [ %bits.1, %while.cond1123.outer2162 ], [ %bits.1, %while.cond1123.preheader ], [ %bits.1, %while.cond1089.outer2179 ], [ %bits.1, %while.cond1089.preheader ], [ %bits.1, %while.cond975.sw.epilog1386.loopexit2215_crit_edge ], [ %bits.1, %while.cond975.preheader ], [ %bits.1, %while.cond937.outer2225 ], [ %bits.1, %while.cond937.preheader ], [ %bits.1, %while.cond914.outer2242 ], [ %bits.1, %while.cond914.preheader ], [ %bits.1, %while.cond889.outer2259 ], [ %bits.1, %while.cond889.preheader ], [ %bits.1, %while.cond866.outer2276 ], [ %bits.1, %while.cond866.preheader ], [ %bits.1, %while.cond843.outer2293 ], [ %bits.1, %while.cond843.preheader ], [ %bits.1, %while.cond820.outer2310 ], [ %bits.1, %while.cond820.preheader ], [ %bits.1, %while.cond795.outer2327 ], [ %bits.1, %while.cond795.preheader ], [ %bits.1, %while.cond770.outer2344 ], [ %bits.1, %while.cond770.preheader ], [ %bits.1, %while.cond736.outer2361 ], [ %bits.1, %while.cond736.preheader ], [ %bits.1, %while.cond711.outer2378 ], [ %bits.1, %while.cond711.preheader ], [ %bits.1, %if.else704 ], [ %bits.1, %while.cond648.preheader ], [ %bits.1, %while.cond618.sw.epilog1386.loopexit2413_crit_edge ], [ %bits.1, %while.cond557.outer2423 ], [ %bits.1, %while.cond557.preheader ], [ %shl, %while.body398 ], [ %conv378, %while.cond394.preheader ], [ %shr, %while.body386 ], [ %conv378, %while.cond382.preheader ], [ %bits.1, %while.cond599 ], [ %bits.1, %while.cond599.preheader ], [ %bits.1, %if.then609 ]
  %len.49 = phi i32 [ %len.47.lcssa, %if.end1383 ], [ %len.5, %if.end1074 ], [ %len.5, %if.else1081 ], [ %len.41.ph, %if.then1058 ], [ %len.41.ph, %while.end1053 ], [ 0, %if.then637 ], [ 0, %if.then635 ], [ 0, %if.then592 ], [ 0, %if.then590 ], [ %len.25, %if.end553 ], [ 0, %while.end374 ], [ %len.21, %if.end470 ], [ %len.14, %if.end279 ], [ %len.5, %sw.bb179 ], [ %len.11, %if.end176 ], [ %len.9, %if.end150 ], [ %len.5, %if.end132 ], [ %dec, %while.end ], [ %dec118921292534, %while.cond1188.preheader ], [ %dec11892129, %if.else1199 ], [ %dec117321412549, %while.cond1172.preheader ], [ %dec11732141, %if.else1183 ], [ %dec115521532564, %while.cond1154.preheader ], [ %dec11552153, %if.else1166 ], [ %dec11242170, %while.cond1123.outer2162 ], [ %dec1124217025832605, %while.cond1123.preheader ], [ %dec10902187, %while.cond1089.outer2179 ], [ %dec1090218726262648, %while.cond1089.preheader ], [ -1, %while.cond975.sw.epilog1386.loopexit2215_crit_edge ], [ %dec9762216, %while.cond975.preheader ], [ %dec9382233, %while.cond937.outer2225 ], [ %dec938223326692691, %while.cond937.preheader ], [ %dec9152250, %while.cond914.outer2242 ], [ %dec915225027122734, %while.cond914.preheader ], [ %dec8902267, %while.cond889.outer2259 ], [ %dec890226727552777, %while.cond889.preheader ], [ %dec8672284, %while.cond866.outer2276 ], [ %dec867228427982820, %while.cond866.preheader ], [ %dec8442301, %while.cond843.outer2293 ], [ %dec844230128412863, %while.cond843.preheader ], [ %dec8212318, %while.cond820.outer2310 ], [ %dec821231828842906, %while.cond820.preheader ], [ %dec7962335, %while.cond795.outer2327 ], [ %dec796233529272949, %while.cond795.preheader ], [ %dec7712352, %while.cond770.outer2344 ], [ %dec771235229702992, %while.cond770.preheader ], [ %dec7372369, %while.cond736.outer2361 ], [ %dec737236930133035, %while.cond736.preheader ], [ %dec7122386, %while.cond711.outer2378 ], [ %dec712238630563078, %while.cond711.preheader ], [ %dec6492403, %if.else704 ], [ %dec649240330993123, %while.cond648.preheader ], [ -1, %while.cond618.sw.epilog1386.loopexit2413_crit_edge ], [ %dec5582432, %while.cond557.outer2423 ], [ %dec558243231463168, %while.cond557.preheader ], [ -1, %while.body398 ], [ %dec3832477, %while.cond394.preheader ], [ -1, %while.body386 ], [ %dec3832477, %while.cond382.preheader ], [ %dec600, %while.cond599 ], [ %dec60025103185, %while.cond599.preheader ], [ %dec6002510, %if.then609 ]
  %sp.29 = phi %struct.sv** [ %incdec.ptr1385, %if.end1383 ], [ %sp.22, %if.end1074 ], [ %incdec.ptr1087, %if.else1081 ], [ %sp.21.ph, %if.then1058 ], [ %sp.21.ph, %while.end1053 ], [ %sp.3, %if.then637 ], [ %sp.3, %if.then635 ], [ %sp.3, %if.then592 ], [ %sp.3, %if.then590 ], [ %incdec.ptr555, %if.end553 ], [ %sp.3, %while.end374 ], [ %incdec.ptr472, %if.end470 ], [ %incdec.ptr281, %if.end279 ], [ %sp.3, %sw.bb179 ], [ %sp.3, %if.end176 ], [ %sp.3, %if.end150 ], [ %sp.3, %if.end132 ], [ %35, %while.end ], [ %sp.3, %while.cond1188.preheader ], [ %sp.272131, %if.else1199 ], [ %sp.3, %while.cond1172.preheader ], [ %sp.262143, %if.else1183 ], [ %sp.3, %while.cond1154.preheader ], [ %sp.252155, %if.else1166 ], [ %sp.242172, %while.cond1123.outer2162 ], [ %sp.3, %while.cond1123.preheader ], [ %sp.232189, %while.cond1089.outer2179 ], [ %sp.3, %while.cond1089.preheader ], [ %scevgep3286, %while.cond975.sw.epilog1386.loopexit2215_crit_edge ], [ %sp.3, %while.cond975.preheader ], [ %sp.192235, %while.cond937.outer2225 ], [ %sp.3, %while.cond937.preheader ], [ %sp.182252, %while.cond914.outer2242 ], [ %sp.3, %while.cond914.preheader ], [ %sp.172269, %while.cond889.outer2259 ], [ %sp.3, %while.cond889.preheader ], [ %sp.162286, %while.cond866.outer2276 ], [ %sp.3, %while.cond866.preheader ], [ %sp.152303, %while.cond843.outer2293 ], [ %sp.3, %while.cond843.preheader ], [ %sp.142320, %while.cond820.outer2310 ], [ %sp.3, %while.cond820.preheader ], [ %sp.132337, %while.cond795.outer2327 ], [ %sp.3, %while.cond795.preheader ], [ %sp.122354, %while.cond770.outer2344 ], [ %sp.3, %while.cond770.preheader ], [ %sp.112371, %while.cond736.outer2361 ], [ %sp.3, %while.cond736.preheader ], [ %sp.102388, %while.cond711.outer2378 ], [ %sp.3, %while.cond711.preheader ], [ %sp.92407, %if.else704 ], [ %sp.3, %while.cond648.preheader ], [ %scevgep3466, %while.cond618.sw.epilog1386.loopexit2413_crit_edge ], [ %sp.72434, %while.cond557.outer2423 ], [ %sp.3, %while.cond557.preheader ], [ %sp.3, %while.body398 ], [ %sp.3, %while.cond394.preheader ], [ %sp.3, %while.body386 ], [ %sp.3, %while.cond382.preheader ], [ %sp.3, %while.cond599 ], [ %sp.3, %while.cond599.preheader ], [ %sp.3, %if.then609 ]
  %s.addr.46 = phi i8* [ %s.addr.40.lcssa, %if.end1383 ], [ %s.addr.1, %if.end1074 ], [ %add.ptr1082, %if.else1081 ], [ %s.addr.32, %if.then1058 ], [ %s.addr.32, %while.end1053 ], [ %s.addr.1, %if.then637 ], [ %s.addr.1, %if.then635 ], [ %s.addr.1, %if.then592 ], [ %s.addr.1, %if.then590 ], [ %s.addr.16, %if.end553 ], [ %s.addr.6.lcssa, %while.end374 ], [ %s.addr.11, %if.end470 ], [ %add.ptr270, %if.end279 ], [ %s.addr.1, %sw.bb179 ], [ %add.ptr178, %if.end176 ], [ %add.ptr152, %if.end150 ], [ %add.ptr, %if.end132 ], [ %34, %while.end ], [ %s.addr.1, %while.cond1188.preheader ], [ %add.ptr1193, %if.else1199 ], [ %s.addr.1, %while.cond1172.preheader ], [ %add.ptr1177, %if.else1183 ], [ %s.addr.1, %while.cond1154.preheader ], [ %add.ptr1159, %if.else1166 ], [ %add.ptr1128, %while.cond1123.outer2162 ], [ %s.addr.1, %while.cond1123.preheader ], [ %add.ptr1094, %while.cond1089.outer2179 ], [ %s.addr.1, %while.cond1089.preheader ], [ %scevgep3288, %while.cond975.sw.epilog1386.loopexit2215_crit_edge ], [ %s.addr.1, %while.cond975.preheader ], [ %add.ptr942, %while.cond937.outer2225 ], [ %s.addr.1, %while.cond937.preheader ], [ %add.ptr919, %while.cond914.outer2242 ], [ %s.addr.1, %while.cond914.preheader ], [ %add.ptr894, %while.cond889.outer2259 ], [ %s.addr.1, %while.cond889.preheader ], [ %add.ptr871, %while.cond866.outer2276 ], [ %s.addr.1, %while.cond866.preheader ], [ %add.ptr848, %while.cond843.outer2293 ], [ %s.addr.1, %while.cond843.preheader ], [ %add.ptr825, %while.cond820.outer2310 ], [ %s.addr.1, %while.cond820.preheader ], [ %add.ptr800, %while.cond795.outer2327 ], [ %s.addr.1, %while.cond795.preheader ], [ %add.ptr775, %while.cond770.outer2344 ], [ %s.addr.1, %while.cond770.preheader ], [ %add.ptr741, %while.cond736.outer2361 ], [ %s.addr.1, %while.cond736.preheader ], [ %add.ptr716, %while.cond711.outer2378 ], [ %s.addr.1, %while.cond711.preheader ], [ %add.ptr691, %if.else704 ], [ %s.addr.1, %while.cond648.preheader ], [ %scevgep3468, %while.cond618.sw.epilog1386.loopexit2413_crit_edge ], [ %incdec.ptr562, %while.cond557.outer2423 ], [ %s.addr.1, %while.cond557.preheader ], [ %incdec.ptr377, %while.body398 ], [ %incdec.ptr377, %while.cond394.preheader ], [ %incdec.ptr377, %while.body386 ], [ %incdec.ptr377, %while.cond382.preheader ], [ %incdec.ptr604, %while.cond599 ], [ %s.addr.1, %while.cond599.preheader ], [ %incdec.ptr604, %if.then609 ]
  %tobool1387 = icmp eq i32 %checksum.1, 0
  br i1 %tobool1387, label %if.end1441, label %if.then1388

if.then1388:                                      ; preds = %if.then1145, %if.then1114, %if.then965, %if.then928, %if.then904, %if.then880, %if.then857, %if.then834, %if.then810, %if.then785, %if.then760, %if.then726, %if.then701, %if.then578, %sw.epilog1386
  %s.addr.463558 = phi i8* [ %s.addr.46, %sw.epilog1386 ], [ %incdec.ptr562, %if.then578 ], [ %add.ptr691, %if.then701 ], [ %add.ptr716, %if.then726 ], [ %add.ptr741, %if.then760 ], [ %add.ptr775, %if.then785 ], [ %add.ptr800, %if.then810 ], [ %add.ptr825, %if.then834 ], [ %add.ptr848, %if.then857 ], [ %add.ptr871, %if.then880 ], [ %add.ptr894, %if.then904 ], [ %add.ptr919, %if.then928 ], [ %add.ptr942, %if.then965 ], [ %add.ptr1094, %if.then1114 ], [ %add.ptr1128, %if.then1145 ]
  %sp.293557 = phi %struct.sv** [ %sp.29, %sw.epilog1386 ], [ %sp.72434, %if.then578 ], [ %sp.92407, %if.then701 ], [ %sp.102388, %if.then726 ], [ %sp.112371, %if.then760 ], [ %sp.122354, %if.then785 ], [ %sp.132337, %if.then810 ], [ %sp.142320, %if.then834 ], [ %sp.152303, %if.then857 ], [ %sp.162286, %if.then880 ], [ %sp.172269, %if.then904 ], [ %sp.182252, %if.then928 ], [ %sp.192235, %if.then965 ], [ %sp.232189, %if.then1114 ], [ %sp.242172, %if.then1145 ]
  %len.493556 = phi i32 [ %len.49, %sw.epilog1386 ], [ %dec55824323146, %if.then578 ], [ %dec64924033099, %if.then701 ], [ %dec71223863056, %if.then726 ], [ %dec73723693013, %if.then760 ], [ %dec77123522970, %if.then785 ], [ %dec79623352927, %if.then810 ], [ %dec82123182884, %if.then834 ], [ %dec84423012841, %if.then857 ], [ %dec86722842798, %if.then880 ], [ %dec89022672755, %if.then904 ], [ %dec91522502712, %if.then928 ], [ %dec93822332669, %if.then965 ], [ %dec109021872626, %if.then1114 ], [ %dec112421702583, %if.then1145 ]
  %bits.163555 = phi i32 [ %bits.16, %sw.epilog1386 ], [ %bits.1, %if.then578 ], [ %bits.1, %if.then701 ], [ %bits.1, %if.then726 ], [ %bits.1, %if.then760 ], [ %bits.1, %if.then785 ], [ %bits.1, %if.then810 ], [ %bits.1, %if.then834 ], [ %bits.1, %if.then857 ], [ %bits.1, %if.then880 ], [ %bits.1, %if.then904 ], [ %bits.1, %if.then928 ], [ %bits.1, %if.then965 ], [ %bits.1, %if.then1114 ], [ %bits.1, %if.then1145 ]
  %cuv.223554 = phi i64 [ %cuv.22, %sw.epilog1386 ], [ %cuv.7.ph24243148, %if.then578 ], [ %cuv.9.ph23963103, %if.then701 ], [ %cuv.10.ph23793058, %if.then726 ], [ %cuv.11.ph23623015, %if.then760 ], [ %cuv.12.ph23452972, %if.then785 ], [ %cuv.13.ph23282929, %if.then810 ], [ %cuv.14.ph23112886, %if.then834 ], [ %cuv.15.ph22942843, %if.then857 ], [ %cuv.16.ph22772800, %if.then880 ], [ %cuv.17.ph22602757, %if.then904 ], [ %cuv.18.ph22432714, %if.then928 ], [ %cuv.19.ph22262671, %if.then965 ], [ %cuv.20.ph21802628, %if.then1114 ], [ %cuv.21.ph21632585, %if.then1145 ]
  %cdouble.203553 = phi double [ %cdouble.20, %sw.epilog1386 ], [ %add580, %if.then578 ], [ %add703, %if.then701 ], [ %add728, %if.then726 ], [ %add762, %if.then760 ], [ %add787, %if.then785 ], [ %add812, %if.then810 ], [ %add836, %if.then834 ], [ %add859, %if.then857 ], [ %add882, %if.then880 ], [ %add906, %if.then904 ], [ %add930, %if.then928 ], [ %add967, %if.then965 ], [ %add1116, %if.then1114 ], [ %add1147, %if.then1145 ]
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([5 x i8]* @.str40, i64 0, i64 0), i32 %and27, i64 5)
  %tobool1391 = icmp eq i8* %memchr, null
  br i1 %tobool1391, label %lor.lhs.false1392, label %if.then1399

lor.lhs.false1392:                                ; preds = %if.then1388
  %cmp1393 = icmp sgt i32 %checksum.1, 64
  br i1 %cmp1393, label %land.lhs.true1395, label %if.else1420

land.lhs.true1395:                                ; preds = %lor.lhs.false1392
  %memchr2070 = call i8* @memchr(i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0), i32 %and27, i64 18)
  %tobool1398 = icmp eq i8* %memchr2070, null
  br i1 %tobool1398, label %if.else1420, label %if.then1399

if.then1399:                                      ; preds = %land.lhs.true1395, %if.then1388
  %and1400 = and i32 %checksum.1, 15
  %shl1401 = shl i32 1, %and1400
  %conv1402 = sitofp i32 %shl1401 to double
  %cmp14042522 = icmp sgt i32 %checksum.1, 15
  br i1 %cmp14042522, label %while.body1406, label %while.cond1410.loopexit

while.body1406:                                   ; preds = %if.then1399, %while.body1406
  %adouble.02524 = phi double [ %mul1408, %while.body1406 ], [ %conv1402, %if.then1399 ]
  %checksum.22523 = phi i32 [ %sub1407, %while.body1406 ], [ %checksum.1, %if.then1399 ]
  %sub1407 = add nsw i32 %checksum.22523, -16
  %mul1408 = fmul double %adouble.02524, 6.553600e+04
  %cmp1404 = icmp sgt i32 %sub1407, 15
  br i1 %cmp1404, label %while.body1406, label %while.cond1410.loopexit

while.cond1410.loopexit:                          ; preds = %while.body1406, %if.then1399
  %adouble.0.lcssa = phi double [ %conv1402, %if.then1399 ], [ %mul1408, %while.body1406 ]
  %cmp14112526 = fcmp olt double %cdouble.203553, 0.000000e+00
  br i1 %cmp14112526, label %while.body1413, label %while.end1415

while.body1413:                                   ; preds = %while.cond1410.loopexit, %while.body1413
  %cdouble.212527 = phi double [ %add1414, %while.body1413 ], [ %cdouble.203553, %while.cond1410.loopexit ]
  %add1414 = fadd double %adouble.0.lcssa, %cdouble.212527
  %cmp1411 = fcmp olt double %add1414, 0.000000e+00
  br i1 %cmp1411, label %while.body1413, label %while.end1415

while.end1415:                                    ; preds = %while.body1413, %while.cond1410.loopexit
  %cdouble.21.lcssa = phi double [ %cdouble.203553, %while.cond1410.loopexit ], [ %add1414, %while.body1413 ]
  %div1416 = fdiv double %cdouble.21.lcssa, %adouble.0.lcssa
  %call1417 = call double @modf(double %div1416, double* %trouble) #8
  %mul1418 = fmul double %adouble.0.lcssa, %call1417
  %call1419 = call %struct.sv* @Perl_newSVnv(double %mul1418) #8
  br label %if.end1429

if.else1420:                                      ; preds = %land.lhs.true1395, %lor.lhs.false1392
  %cmp1421 = icmp slt i32 %checksum.1, 64
  br i1 %cmp1421, label %if.then1423, label %if.end1427

if.then1423:                                      ; preds = %if.else1420
  %sh_prom = zext i32 %checksum.1 to i64
  %shl1424 = shl i64 1, %sh_prom
  %sub1425 = add i64 %shl1424, -1
  %and1426 = and i64 %cuv.223554, %sub1425
  br label %if.end1427

if.end1427:                                       ; preds = %if.then1423, %if.else1420
  %cuv.23 = phi i64 [ %and1426, %if.then1423 ], [ %cuv.223554, %if.else1420 ]
  %call1428 = call %struct.sv* @Perl_newSVuv(i64 %cuv.23) #8
  br label %if.end1429

if.end1429:                                       ; preds = %if.end1427, %while.end1415
  %cdouble.22 = phi double [ %mul1418, %while.end1415 ], [ %cdouble.203553, %if.end1427 ]
  %cuv.24 = phi i64 [ %cuv.223554, %while.end1415 ], [ %cuv.23, %if.end1427 ]
  %sv.2 = phi %struct.sv* [ %call1419, %while.end1415 ], [ %call1428, %if.end1427 ]
  %181 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1430 = ptrtoint %struct.sv** %181 to i64
  %sub.ptr.rhs.cast1431 = ptrtoint %struct.sv** %sp.293557 to i64
  %sub.ptr.sub1432 = sub i64 %sub.ptr.lhs.cast1430, %sub.ptr.rhs.cast1431
  %cmp1434 = icmp slt i64 %sub.ptr.sub1432, 8
  br i1 %cmp1434, label %if.then1436, label %if.end1438

if.then1436:                                      ; preds = %if.end1429
  %call1437 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.293557, %struct.sv** %sp.293557, i32 1) #8
  br label %if.end1438

if.end1438:                                       ; preds = %if.then1436, %if.end1429
  %sp.30 = phi %struct.sv** [ %call1437, %if.then1436 ], [ %sp.293557, %if.end1429 ]
  %call1439 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %sv.2) #8
  %incdec.ptr1440 = getelementptr inbounds %struct.sv** %sp.30, i64 1
  store %struct.sv* %call1439, %struct.sv** %incdec.ptr1440, align 8, !tbaa !0
  br label %if.end1441

if.end1441:                                       ; preds = %if.then1195, %if.then1179, %if.then1161, %cond.true1133, %cond.true1102, %if.then957, %if.then921, %if.then896, %if.then873, %if.then850, %if.then827, %if.then802, %if.then777, %if.then752, %if.then718, %if.then693, %while.cond618.preheader, %if.then570, %sw.epilog1386, %if.end1438
  %s.addr.463543 = phi i8* [ %s.addr.463558, %if.end1438 ], [ %s.addr.46, %sw.epilog1386 ], [ %incdec.ptr562, %if.then570 ], [ %s.addr.1, %while.cond618.preheader ], [ %add.ptr691, %if.then693 ], [ %add.ptr716, %if.then718 ], [ %add.ptr741, %if.then752 ], [ %add.ptr775, %if.then777 ], [ %add.ptr800, %if.then802 ], [ %add.ptr825, %if.then827 ], [ %add.ptr848, %if.then850 ], [ %add.ptr871, %if.then873 ], [ %add.ptr894, %if.then896 ], [ %add.ptr919, %if.then921 ], [ %add.ptr942, %if.then957 ], [ %add.ptr1094, %cond.true1102 ], [ %add.ptr1128, %cond.true1133 ], [ %add.ptr1159, %if.then1161 ], [ %add.ptr1177, %if.then1179 ], [ %add.ptr1193, %if.then1195 ]
  %len.493540 = phi i32 [ %len.493556, %if.end1438 ], [ %len.49, %sw.epilog1386 ], [ %dec558, %if.then570 ], [ %dec6192414, %while.cond618.preheader ], [ %dec649, %if.then693 ], [ %dec712, %if.then718 ], [ %dec737, %if.then752 ], [ %dec771, %if.then777 ], [ %dec796, %if.then802 ], [ %dec821, %if.then827 ], [ %dec844, %if.then850 ], [ %dec867, %if.then873 ], [ %dec890, %if.then896 ], [ %dec915, %if.then921 ], [ %dec938, %if.then957 ], [ %dec1090, %cond.true1102 ], [ %dec1124, %cond.true1133 ], [ %dec1155, %if.then1161 ], [ %dec1173, %if.then1179 ], [ %dec1189, %if.then1195 ]
  %bits.163538 = phi i32 [ %bits.163555, %if.end1438 ], [ %bits.16, %sw.epilog1386 ], [ %bits.1, %if.then570 ], [ %bits.1, %while.cond618.preheader ], [ %bits.1, %if.then693 ], [ %bits.1, %if.then718 ], [ %bits.1, %if.then752 ], [ %bits.1, %if.then777 ], [ %bits.1, %if.then802 ], [ %bits.1, %if.then827 ], [ %bits.1, %if.then850 ], [ %bits.1, %if.then873 ], [ %bits.1, %if.then896 ], [ %bits.1, %if.then921 ], [ %bits.1, %if.then957 ], [ %bits.1, %cond.true1102 ], [ %bits.1, %cond.true1133 ], [ %bits.1, %if.then1161 ], [ %bits.1, %if.then1179 ], [ %bits.1, %if.then1195 ]
  %cdouble.23 = phi double [ %cdouble.22, %if.end1438 ], [ %cdouble.20, %sw.epilog1386 ], [ %cdouble.2.ph3170, %if.then570 ], [ %cdouble.1, %while.cond618.preheader ], [ %cdouble.4.ph3127, %if.then693 ], [ %cdouble.5.ph3080, %if.then718 ], [ %cdouble.6.ph3037, %if.then752 ], [ %cdouble.7.ph2994, %if.then777 ], [ %cdouble.8.ph2951, %if.then802 ], [ %cdouble.9.ph2908, %if.then827 ], [ %cdouble.10.ph2865, %if.then850 ], [ %cdouble.11.ph2822, %if.then873 ], [ %cdouble.12.ph2779, %if.then896 ], [ %cdouble.13.ph2736, %if.then921 ], [ %cdouble.14.ph2693, %if.then957 ], [ %cdouble.15.ph2650, %cond.true1102 ], [ %cdouble.16.ph2607, %cond.true1133 ], [ %cdouble.17.ph2566, %if.then1161 ], [ %cdouble.18.ph2551, %if.then1179 ], [ %cdouble.19.ph2536, %if.then1195 ]
  %cuv.25 = phi i64 [ %cuv.24, %if.end1438 ], [ %cuv.22, %sw.epilog1386 ], [ %cuv.7.ph24243148, %if.then570 ], [ %cuv.1, %while.cond618.preheader ], [ %cuv.9.ph23963103, %if.then693 ], [ %cuv.10.ph23793058, %if.then718 ], [ %cuv.11.ph23623015, %if.then752 ], [ %cuv.12.ph23452972, %if.then777 ], [ %cuv.13.ph23282929, %if.then802 ], [ %cuv.14.ph23112886, %if.then827 ], [ %cuv.15.ph22942843, %if.then850 ], [ %cuv.16.ph22772800, %if.then873 ], [ %cuv.17.ph22602757, %if.then896 ], [ %cuv.18.ph22432714, %if.then921 ], [ %cuv.19.ph22262671, %if.then957 ], [ %cuv.20.ph21802628, %cond.true1102 ], [ %cuv.21.ph21632585, %cond.true1133 ], [ %cuv.1, %if.then1161 ], [ %cuv.1, %if.then1179 ], [ %cuv.1, %if.then1195 ]
  %sp.31 = phi %struct.sv** [ %incdec.ptr1440, %if.end1438 ], [ %sp.29, %sw.epilog1386 ], [ %incdec.ptr574, %if.then570 ], [ %sp.3, %while.cond618.preheader ], [ %incdec.ptr697, %if.then693 ], [ %incdec.ptr722, %if.then718 ], [ %incdec.ptr756, %if.then752 ], [ %incdec.ptr781, %if.then777 ], [ %incdec.ptr806, %if.then802 ], [ %incdec.ptr830, %if.then827 ], [ %incdec.ptr853, %if.then850 ], [ %incdec.ptr876, %if.then873 ], [ %incdec.ptr900, %if.then896 ], [ %incdec.ptr924, %if.then921 ], [ %incdec.ptr961, %if.then957 ], [ %incdec.ptr1110, %cond.true1102 ], [ %incdec.ptr1141, %cond.true1133 ], [ %incdec.ptr1165, %if.then1161 ], [ %incdec.ptr1182, %if.then1179 ], [ %incdec.ptr1198, %if.then1195 ]
  %182 = load i32* %flags, align 4, !tbaa !3
  %and1443 = and i32 %182, 4
  %tobool1444 = icmp eq i32 %and1443, 0
  br i1 %tobool1444, label %while.cond.backedge, label %if.then1445

if.then1445:                                      ; preds = %if.end1441
  %183 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast1446 = ptrtoint %struct.sv** %sp.31 to i64
  %sub.ptr.rhs.cast1447 = ptrtoint %struct.sv** %183 to i64
  %sub.ptr.sub1448 = sub i64 %sub.ptr.lhs.cast1446, %sub.ptr.rhs.cast1447
  %sub.ptr.div1449 = ashr exact i64 %sub.ptr.sub1448, 3
  %sub1451 = sub nsw i64 %sub.ptr.div1449, %conv1450
  %cmp1452 = icmp slt i64 %sub1451, 1
  br i1 %cmp1452, label %if.then1454, label %if.end1455

if.then1454:                                      ; preds = %if.then1445
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str36, i64 0, i64 0)) #8
  br label %if.end1455

if.end1455:                                       ; preds = %if.then1454, %if.then1445
  %call1456 = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #7
  %tobool1457 = icmp eq i8 %call1456, 0
  br i1 %tobool1457, label %if.else1483, label %if.then1458

if.then1458:                                      ; preds = %if.end1455
  %184 = load i32* %howlen15, align 4, !tbaa !1
  %cmp1460 = icmp eq i32 %184, 1
  br i1 %cmp1460, label %if.then1462, label %if.end1463

if.then1462:                                      ; preds = %if.then1458
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0)) #8
  br label %if.end1463

if.end1463:                                       ; preds = %if.then1462, %if.then1458
  br i1 %cmp21, label %if.else1466, label %if.then1465

if.then1465:                                      ; preds = %if.end1463
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str43, i64 0, i64 0)) #8
  br label %if.end1484

if.else1466:                                      ; preds = %if.end1463
  %incdec.ptr1467 = getelementptr inbounds %struct.sv** %sp.31, i64 -1
  %185 = load %struct.sv** %sp.31, align 8, !tbaa !0
  store %struct.sv* %185, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags1468 = getelementptr inbounds %struct.sv* %185, i64 0, i32 2
  %186 = load i32* %sv_flags1468, align 4, !tbaa !3
  %and1469 = and i32 %186, 65536
  %tobool1470 = icmp eq i32 %and1469, 0
  br i1 %tobool1470, label %cond.false1473, label %cond.true1471

cond.true1471:                                    ; preds = %if.else1466
  %sv_any1472 = getelementptr inbounds %struct.sv* %185, i64 0, i32 0
  %187 = load i8** %sv_any1472, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %187, i64 24
  %188 = bitcast i8* %xiv_iv to i64*
  %189 = load i64* %188, align 8, !tbaa !4
  br label %cond.end1475

cond.false1473:                                   ; preds = %if.else1466
  %call1474 = call i64 @Perl_sv_2iv(%struct.sv* %185) #8
  br label %cond.end1475

cond.end1475:                                     ; preds = %cond.false1473, %cond.true1471
  %cond1476 = phi i64 [ %189, %cond.true1471 ], [ %call1474, %cond.false1473 ]
  %conv1477 = trunc i64 %cond1476 to i32
  %cmp1478 = icmp slt i32 %conv1477, 0
  br i1 %cmp1478, label %if.then1480, label %if.end1484

if.then1480:                                      ; preds = %cond.end1475
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str44, i64 0, i64 0)) #8
  br label %if.end1484

if.else1483:                                      ; preds = %if.end1455
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str45, i64 0, i64 0)) #8
  br label %if.end1484

if.end1484:                                       ; preds = %if.then1465, %if.then1480, %cond.end1475, %if.else1483
  %len.50 = phi i32 [ %len.493540, %if.then1465 ], [ %conv1477, %if.then1480 ], [ %conv1477, %cond.end1475 ], [ %len.493540, %if.else1483 ]
  %sp.32 = phi %struct.sv** [ %sp.31, %if.then1465 ], [ %incdec.ptr1467, %if.then1480 ], [ %incdec.ptr1467, %cond.end1475 ], [ %sp.31, %if.else1483 ]
  %190 = load i32* %code, align 4, !tbaa !3
  br label %redo_switch

while.end1487:                                    ; preds = %while.cond.backedge, %land.lhs.true, %entry
  %s.addr.0.lcssa = phi i8* [ %s, %entry ], [ %s.addr.03217, %land.lhs.true ], [ %s.addr.0.be, %while.cond.backedge ]
  %sp.0.lcssa = phi %struct.sv** [ %0, %entry ], [ %sp.03216, %land.lhs.true ], [ %sp.0.be, %while.cond.backedge ]
  %tobool1488 = icmp eq i8** %new_s, null
  br i1 %tobool1488, label %if.end1490, label %if.then1489

if.then1489:                                      ; preds = %while.end1487
  store i8* %s.addr.0.lcssa, i8** %new_s, align 8, !tbaa !0
  br label %if.end1490

if.end1490:                                       ; preds = %while.end1487, %if.then1489
  store %struct.sv** %sp.0.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %191 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast1491 = ptrtoint %struct.sv** %sp.0.lcssa to i64
  %sub.ptr.rhs.cast1492 = ptrtoint %struct.sv** %191 to i64
  %sub.ptr.sub1493 = sub i64 %sub.ptr.lhs.cast1491, %sub.ptr.rhs.cast1492
  %sub.ptr.div14942065 = lshr exact i64 %sub.ptr.sub1493, 3
  %192 = lshr i64 %sub.ptr.sub, 3
  %sub1496 = sub nsw i64 %sub.ptr.div14942065, %192
  %conv1497 = trunc i64 %sub1496 to i32
  ret i32 %conv1497
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_unpackstring(i8* %pat, i8* %patend, i8* %s, i8* %strend, i32 %flags) #0 {
entry:
  %sym = alloca %struct.tempsym_t, align 8
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %patptr = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 0
  store i8* %pat, i8** %patptr, align 8, !tbaa !0
  %patend1 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 1
  store i8* %patend, i8** %patend1, align 8, !tbaa !0
  %flags2 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 8
  store i32 %flags, i32* %flags2, align 8, !tbaa !3
  %call = call fastcc i32 @S_unpack_rec(%struct.tempsym_t* %sym, i8* %s, i8* %s, i8* %strend, i8** null) #7
  call void @llvm.lifetime.end(i64 56, i8* %0) #1
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_unpack() #0 {
entry:
  %sym.i = alloca %struct.tempsym_t, align 8
  %llen = alloca i64, align 8
  %rlen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %0, i64 -2
  %2 = load %struct.sv** %incdec.ptr, align 8, !tbaa !0
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
  %call = call i32 @Perl_block_gimme() #8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false, %cond.false9, %cond.false16, %entry
  %cond20 = phi i32 [ 128, %entry ], [ 0, %cond.false ], [ %call, %cond.false16 ], [ 1, %cond.false9 ]
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and21 = and i32 %5, 262144
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %cond.false26, label %cond.true24

cond.true24:                                      ; preds = %cond.end19
  %sv_any = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  store i64 %8, i64* %llen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %6 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end28

cond.false26:                                     ; preds = %cond.end19
  %call27 = call i8* @Perl_sv_2pv_flags(%struct.sv* %2, i64* %llen, i32 2) #8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %cond29 = phi i8* [ %9, %cond.true24 ], [ %call27, %cond.false26 ]
  %sv_flags30 = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %10 = load i32* %sv_flags30, align 4, !tbaa !3
  %and31 = and i32 %10, 262144
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %cond.false39, label %cond.true34

cond.true34:                                      ; preds = %cond.end28
  %sv_any35 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %11 = load i8** %sv_any35, align 8, !tbaa !0
  %xpv_cur36 = getelementptr inbounds i8* %11, i64 8
  %12 = bitcast i8* %xpv_cur36 to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  store i64 %13, i64* %rlen, align 8, !tbaa !4
  %xpv_pv38 = bitcast i8* %11 to i8**
  %14 = load i8** %xpv_pv38, align 8, !tbaa !0
  br label %cond.end41

cond.false39:                                     ; preds = %cond.end28
  %call40 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1, i64* %rlen, i32 2) #8
  %.pre = load i64* %rlen, align 8, !tbaa !4
  %.pre70 = load i32* %sv_flags30, align 4, !tbaa !3
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false39, %cond.true34
  %15 = phi i32 [ %10, %cond.true34 ], [ %.pre70, %cond.false39 ]
  %16 = phi i64 [ %13, %cond.true34 ], [ %.pre, %cond.false39 ]
  %cond42 = phi i8* [ %14, %cond.true34 ], [ %call40, %cond.false39 ]
  %add.ptr = getelementptr inbounds i8* %cond42, i64 %16
  %17 = load i64* %llen, align 8, !tbaa !4
  %add.ptr43 = getelementptr inbounds i8* %cond29, i64 %17
  store %struct.sv** %incdec.ptr1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp44 = icmp eq i32 %cond20, 0
  %cond46 = select i1 %cmp44, i32 16, i32 0
  %and48 = and i32 %15, 536870912
  %tobool = icmp eq i32 %and48, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end41
  %18 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.cop* %18, i64 0, i32 7
  %19 = load i8* %op_private, align 1, !tbaa !1
  %conv49 = zext i8 %19 to i32
  %and50 = and i32 %conv49, 8
  %20 = xor i32 %and50, 8
  br label %land.end

land.end:                                         ; preds = %cond.end41, %land.rhs
  %21 = phi i32 [ 0, %cond.end41 ], [ %20, %land.rhs ]
  %or = or i32 %21, %cond46
  %22 = bitcast %struct.tempsym_t* %sym.i to i8*
  call void @llvm.lifetime.start(i64 56, i8* %22) #1
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 56, i32 8, i1 false) #1
  %patptr.i = getelementptr inbounds %struct.tempsym_t* %sym.i, i64 0, i32 0
  store i8* %cond29, i8** %patptr.i, align 8, !tbaa !0
  %patend1.i = getelementptr inbounds %struct.tempsym_t* %sym.i, i64 0, i32 1
  store i8* %add.ptr43, i8** %patend1.i, align 8, !tbaa !0
  %flags2.i = getelementptr inbounds %struct.tempsym_t* %sym.i, i64 0, i32 8
  store i32 %or, i32* %flags2.i, align 8, !tbaa !3
  %call.i = call fastcc i32 @S_unpack_rec(%struct.tempsym_t* %sym.i, i8* %cond42, i8* %cond42, i8* %add.ptr, i8** null) #8
  call void @llvm.lifetime.end(i64 56, i8* %22) #1
  %23 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool54.not = icmp ne i32 %call.i, 0
  %cmp44.not = xor i1 %cmp44, true
  %brmerge = or i1 %tobool54.not, %cmp44.not
  br i1 %brmerge, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %incdec.ptr57 = getelementptr inbounds %struct.sv** %23, i64 1
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr57, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  %sp.0 = phi %struct.sv** [ %23, %land.end ], [ %incdec.ptr57, %if.then ]
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %24 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %24, i64 0, i32 0
  %25 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %25
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() #2

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_pack_cat(%struct.sv* %cat, i8* %pat, i8* %patend, %struct.sv** %beglist, %struct.sv** %endlist, %struct.sv*** nocapture %next_in_list, i32 %flags) #0 {
entry:
  %sym = alloca %struct.tempsym_t, align 8
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %patptr = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 0
  store i8* %pat, i8** %patptr, align 8, !tbaa !0
  %patend1 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 1
  store i8* %patend, i8** %patend1, align 8, !tbaa !0
  %flags2 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 8
  store i32 1, i32* %flags2, align 8, !tbaa !3
  %call = call fastcc %struct.sv** @S_pack_rec(%struct.sv* %cat, %struct.tempsym_t* %sym, %struct.sv** %beglist, %struct.sv** %endlist) #7
  call void @llvm.lifetime.end(i64 56, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv** @S_pack_rec(%struct.sv* %cat, %struct.tempsym_t* nocapture %symptr, %struct.sv** %beglist, %struct.sv** %endlist) #0 {
entry:
  %hunk.i = alloca [5 x i8], align 1
  %fromlen = alloca i64, align 8
  %achar = alloca i8, align 1
  %ai16 = alloca i16, align 2
  %au16 = alloca i16, align 2
  %ai32 = alloca i32, align 4
  %au32 = alloca i32, align 4
  %aquad = alloca i64, align 8
  %auquad = alloca i64, align 8
  %aint = alloca i32, align 4
  %auint = alloca i32, align 4
  %along = alloca i64, align 8
  %aulong = alloca i64, align 8
  %aptr = alloca i8*, align 8
  %afloat = alloca float, align 4
  %adouble = alloca double, align 8
  %aiv = alloca i64, align 8
  %auv = alloca i64, align 8
  %anv = alloca double, align 8
  %lookahead = alloca %struct.tempsym_t, align 8
  %savsym.sroa.0 = alloca { i8*, i8* }, align 8
  %savsym.sroa.5 = alloca [12 x i8], align 4
  %buf = alloca [10 x i8], align 1
  %len1116 = alloca i64, align 8
  %done = alloca i8, align 1
  %buf1159 = alloca [155 x i8], align 16
  %len1197 = alloca i64, align 8
  %done1198 = alloca i8, align 1
  %n_a = alloca i64, align 8
  %sv_any = getelementptr inbounds %struct.sv* %cat, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %0, i64 8
  %1 = bitcast i8* %xpv_cur to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %3 = bitcast %struct.tempsym_t* %lookahead to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #1
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %endlist to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %beglist to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div2150 = lshr exact i64 %sub.ptr.sub, 3
  %conv1 = trunc i64 %sub.ptr.div2150 to i32
  %call = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #7
  %level = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 7
  %4 = load i32* %level, align 4, !tbaa !3
  %cmp = icmp ne i32 %4, 0
  %tobool = icmp eq i8 %call, 0
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %while.cond.preheader, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %entry
  %code = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 4
  %5 = load i32* %code, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %5, 85
  br i1 %cmp5, label %if.then, label %while.cond.preheader

if.then:                                          ; preds = %land.lhs.true4
  %sv_flags = getelementptr inbounds %struct.sv* %cat, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %6, 536870912
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %land.lhs.true4, %entry
  br i1 %tobool, label %while.end1698, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %code8 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 4
  %howlen9 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  %7 = bitcast %struct.tempsym_t* %symptr to i8*
  %flags = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 8
  %savsym.sroa.0.0.cast1768 = bitcast { i8*, i8* }* %savsym.sroa.0 to i8*
  %savsym.sroa.5.0.idx = getelementptr inbounds [12 x i8]* %savsym.sroa.5, i64 0, i64 0
  %savsym.sroa.1.16.idx1742 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 2
  %savsym.sroa.2.24.idx1746 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 3
  %8 = bitcast i32* %code8 to i64*
  %savsym.sroa.5.44.cast = bitcast i32* %level to i8*
  %patend = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 1
  %patptr = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 0
  %flags85 = getelementptr inbounds %struct.tempsym_t* %lookahead, i64 0, i32 8
  %9 = bitcast double* %anv to i8*
  %10 = bitcast double* %anv to i64*
  %11 = getelementptr inbounds [5 x i8]* %hunk.i, i64 0, i64 0
  %arrayidx2.i = getelementptr inbounds [5 x i8]* %hunk.i, i64 0, i64 4
  %arrayidx15.i = getelementptr inbounds [5 x i8]* %hunk.i, i64 0, i64 1
  %arrayidx28.i = getelementptr inbounds [5 x i8]* %hunk.i, i64 0, i64 2
  %arrayidx35.i = getelementptr inbounds [5 x i8]* %hunk.i, i64 0, i64 3
  %12 = load i8* getelementptr inbounds ([65 x i8]* @PL_uuemap, i64 0, i64 0), align 1, !tbaa !1
  %13 = bitcast i8** %aptr to i8*
  %14 = bitcast i64* %aquad to i8*
  %15 = bitcast i64* %auquad to i8*
  %16 = bitcast i32* %ai32 to i8*
  %17 = bitcast i64* %along to i8*
  %18 = bitcast i32* %au32 to i8*
  %19 = bitcast i64* %aulong to i8*
  %20 = bitcast i32* %aint to i8*
  %21 = getelementptr inbounds [155 x i8]* %buf1159, i64 0, i64 0
  %add.ptr1162 = getelementptr inbounds [155 x i8]* %buf1159, i64 0, i64 155
  %arrayidx1183 = getelementptr inbounds [155 x i8]* %buf1159, i64 0, i64 154
  %sub.ptr.lhs.cast1189 = ptrtoint i8* %add.ptr1162 to i64
  %add.ptr1083 = getelementptr inbounds [10 x i8]* %buf, i64 0, i64 10
  %arrayidx1101 = getelementptr inbounds [10 x i8]* %buf, i64 0, i64 9
  %sub.ptr.lhs.cast1107 = ptrtoint i8* %add.ptr1083 to i64
  %22 = bitcast i64* %auv to i8*
  %23 = bitcast i64* %aiv to i8*
  %24 = bitcast i32* %auint to i8*
  %25 = bitcast i16* %ai16 to i8*
  %26 = bitcast i16* %au16 to i8*
  %27 = bitcast double* %adouble to i8*
  %28 = bitcast float* %afloat to i8*
  %code19 = getelementptr inbounds %struct.tempsym_t* %lookahead, i64 0, i32 4
  %howlen23 = getelementptr inbounds %struct.tempsym_t* %lookahead, i64 0, i32 6
  %length = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  br label %while.body

while.body:                                       ; preds = %sw.epilog1697, %while.body.lr.ph
  %beglist.addr.02448 = phi %struct.sv** [ %beglist, %while.body.lr.ph ], [ %beglist.addr.53, %sw.epilog1697 ]
  %items.02445 = phi i32 [ %conv1, %while.body.lr.ph ], [ %items.61, %sw.epilog1697 ]
  %len.02444 = phi i32 [ 0, %while.body.lr.ph ], [ %len.44, %sw.epilog1697 ]
  %29 = load i32* %code8, align 4, !tbaa !3
  %30 = load i32* %howlen9, align 4, !tbaa !1
  switch i32 %30, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %31 = load i32* %length, align 4, !tbaa !3
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %and = and i32 %29, 255
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 %and, i64 5)
  %tobool12 = icmp ne i8* %memchr, null
  %cond = select i1 %tobool12, i32 0, i32 %items.02445
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb10, %sw.bb
  %len.1 = phi i32 [ %len.02444, %while.body ], [ %cond, %sw.bb10 ], [ %31, %sw.bb ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %7, i64 56, i32 8, i1 false), !tbaa.struct !7
  %call13 = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %lookahead) #7
  %32 = load i32* %flags, align 4, !tbaa !3
  %and14 = and i32 %32, 4
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end43, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  %tobool17 = icmp eq i8 %call13, 0
  br i1 %tobool17, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then16
  %33 = load i32* %code19, align 8, !tbaa !3
  %memchr2169 = call i8* @memchr(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %33, i64 4)
  %cmp21 = icmp eq i8* %memchr2169, null
  br i1 %cmp21, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then18
  %34 = load i32* %howlen23, align 8, !tbaa !1
  %cmp24 = icmp eq i32 %34, 2
  br i1 %cmp24, label %if.end27, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false, %if.then18
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0)) #8
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false, %if.then26
  %cmp28 = icmp sgt i32 %items.02445, 0
  br i1 %cmp28, label %cond.true30, label %cond.end32

cond.true30:                                      ; preds = %if.end27
  %35 = load %struct.sv** %beglist.addr.02448, align 8, !tbaa !0
  br label %cond.end32

cond.end32:                                       ; preds = %if.end27, %cond.true30
  %cond33 = phi %struct.sv* [ %35, %cond.true30 ], [ @PL_sv_no, %if.end27 ]
  %call34 = call i64 @Perl_sv_len(%struct.sv* %cond33) #8
  %cmp36 = icmp eq i32 %33, 90
  %conv39 = zext i1 %cmp36 to i64
  %add = add i64 %conv39, %call34
  %call40 = call %struct.sv* @Perl_newSViv(i64 %add) #8
  %call41 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call40) #8
  br label %if.end43

if.else:                                          ; preds = %if.then16
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0)) #8
  br label %if.end43

if.end43:                                         ; preds = %sw.epilog, %cond.end32, %if.else
  %lengthcode.0 = phi %struct.sv* [ %call41, %cond.end32 ], [ null, %if.else ], [ null, %sw.epilog ]
  switch i32 %29, label %sw.default [
    i32 37, label %sw.bb45
    i32 64, label %sw.bb46
    i32 40, label %sw.bb62
    i32 344, label %sw.bb86
    i32 88, label %if.end43.shrink_crit_edge
    i32 376, label %sw.bb109
    i32 120, label %while.cond124.preheader
    i32 65, label %sw.bb131
    i32 90, label %sw.bb131
    i32 97, label %sw.bb131
    i32 66, label %sw.bb209
    i32 98, label %sw.bb209
    i32 72, label %sw.bb344
    i32 104, label %sw.bb344
    i32 67, label %while.cond526.preheader
    i32 99, label %while.cond526.preheader
    i32 85, label %while.cond643.preheader
    i32 102, label %while.cond738.preheader
    i32 100, label %while.cond768.preheader
    i32 70, label %sw.bb797
    i32 110, label %while.cond828.preheader
    i32 118, label %while.cond859.preheader
    i32 339, label %while.cond891.preheader
    i32 83, label %while.cond891.preheader
    i32 371, label %while.cond922.preheader
    i32 115, label %while.cond922.preheader
    i32 73, label %while.cond953.preheader
    i32 329, label %while.cond953.preheader
    i32 106, label %while.cond984.preheader
    i32 74, label %while.cond1014.preheader
    i32 119, label %while.cond1044.preheader
    i32 105, label %while.cond1243.preheader
    i32 361, label %while.cond1243.preheader
    i32 78, label %while.cond1274.preheader
    i32 86, label %while.cond1307.preheader
    i32 332, label %while.cond1341.preheader
    i32 76, label %while.cond1371.preheader
    i32 364, label %while.cond1402.preheader
    i32 108, label %while.cond1432.preheader
    i32 81, label %while.cond1463.preheader
    i32 113, label %while.cond1493.preheader
    i32 80, label %while.body1528.lr.ph
    i32 112, label %while.cond1524.preheader
    i32 117, label %sw.bb1632
  ]

if.end43.shrink_crit_edge:                        ; preds = %if.end43
  %.pre2498 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur96.phi.trans.insert = getelementptr inbounds i8* %.pre2498, i64 8
  %.phi.trans.insert2499 = bitcast i8* %xpv_cur96.phi.trans.insert to i64*
  %.pre2500 = load i64* %.phi.trans.insert2499, align 8, !tbaa !4
  br label %shrink

while.cond526.preheader:                          ; preds = %if.end43, %if.end43
  %dec5272396 = add nsw i32 %len.1, -1
  %cmp5282397 = icmp sgt i32 %len.1, 0
  br i1 %cmp5282397, label %while.body530.lr.ph, label %sw.epilog1697

while.body530.lr.ph:                              ; preds = %while.cond526.preheader
  %tobool531 = icmp eq %struct.sv* %lengthcode.0, null
  %and544 = and i32 %29, 255
  br label %while.body530

while.cond643.preheader:                          ; preds = %if.end43
  %dec6442387 = add nsw i32 %len.1, -1
  %cmp6452388 = icmp sgt i32 %len.1, 0
  br i1 %cmp6452388, label %while.body647.lr.ph, label %while.cond643.preheader.while.end731_crit_edge

while.cond643.preheader.while.end731_crit_edge:   ; preds = %while.cond643.preheader
  %.pre2502 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv733.phi.trans.insert = bitcast i8* %.pre2502 to i8**
  %.pre2503 = load i8** %xpv_pv733.phi.trans.insert, align 8, !tbaa !0
  %xpv_cur735.phi.trans.insert = getelementptr inbounds i8* %.pre2502, i64 8
  %.phi.trans.insert2504 = bitcast i8* %xpv_cur735.phi.trans.insert to i64*
  %.pre2505 = load i64* %.phi.trans.insert2504, align 8, !tbaa !4
  br label %while.end731

while.body647.lr.ph:                              ; preds = %while.cond643.preheader
  %tobool648 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body647

while.cond738.preheader:                          ; preds = %if.end43
  %dec7392379 = add nsw i32 %len.1, -1
  %cmp7402380 = icmp sgt i32 %len.1, 0
  br i1 %cmp7402380, label %while.body742.lr.ph, label %sw.epilog1697

while.body742.lr.ph:                              ; preds = %while.cond738.preheader
  %tobool743 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body742

while.cond768.preheader:                          ; preds = %if.end43
  %dec7692370 = add nsw i32 %len.1, -1
  %cmp7702371 = icmp sgt i32 %len.1, 0
  br i1 %cmp7702371, label %while.body772.lr.ph, label %sw.epilog1697

while.body772.lr.ph:                              ; preds = %while.cond768.preheader
  %tobool773 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body772

while.cond828.preheader:                          ; preds = %if.end43
  %dec8292352 = add nsw i32 %len.1, -1
  %cmp8302353 = icmp sgt i32 %len.1, 0
  br i1 %cmp8302353, label %while.body832.lr.ph, label %sw.epilog1697

while.body832.lr.ph:                              ; preds = %while.cond828.preheader
  %tobool833 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body832

while.cond859.preheader:                          ; preds = %if.end43
  %dec8602343 = add nsw i32 %len.1, -1
  %cmp8612344 = icmp sgt i32 %len.1, 0
  br i1 %cmp8612344, label %while.body863.lr.ph, label %sw.epilog1697

while.body863.lr.ph:                              ; preds = %while.cond859.preheader
  %tobool864 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body863

while.cond891.preheader:                          ; preds = %if.end43, %if.end43
  %dec8922334 = add nsw i32 %len.1, -1
  %cmp8932335 = icmp sgt i32 %len.1, 0
  br i1 %cmp8932335, label %while.body895.lr.ph, label %sw.epilog1697

while.body895.lr.ph:                              ; preds = %while.cond891.preheader
  %tobool896 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body895

while.cond922.preheader:                          ; preds = %if.end43, %if.end43
  %dec9232325 = add nsw i32 %len.1, -1
  %cmp9242326 = icmp sgt i32 %len.1, 0
  br i1 %cmp9242326, label %while.body926.lr.ph, label %sw.epilog1697

while.body926.lr.ph:                              ; preds = %while.cond922.preheader
  %tobool927 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body926

while.cond953.preheader:                          ; preds = %if.end43, %if.end43
  %dec9542316 = add nsw i32 %len.1, -1
  %cmp9552317 = icmp sgt i32 %len.1, 0
  br i1 %cmp9552317, label %while.body957.lr.ph, label %sw.epilog1697

while.body957.lr.ph:                              ; preds = %while.cond953.preheader
  %tobool958 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body957

while.cond984.preheader:                          ; preds = %if.end43
  %dec9852307 = add nsw i32 %len.1, -1
  %cmp9862308 = icmp sgt i32 %len.1, 0
  br i1 %cmp9862308, label %while.body988.lr.ph, label %sw.epilog1697

while.body988.lr.ph:                              ; preds = %while.cond984.preheader
  %tobool989 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body988

while.cond1014.preheader:                         ; preds = %if.end43
  %dec10152298 = add nsw i32 %len.1, -1
  %cmp10162299 = icmp sgt i32 %len.1, 0
  br i1 %cmp10162299, label %while.body1018.lr.ph, label %sw.epilog1697

while.body1018.lr.ph:                             ; preds = %while.cond1014.preheader
  %tobool1019 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1018

while.cond1044.preheader:                         ; preds = %if.end43
  %dec10452289 = add nsw i32 %len.1, -1
  %cmp10462290 = icmp sgt i32 %len.1, 0
  br i1 %cmp10462290, label %while.body1048.lr.ph, label %sw.epilog1697

while.body1048.lr.ph:                             ; preds = %while.cond1044.preheader
  %tobool1049 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1048

while.cond1243.preheader:                         ; preds = %if.end43, %if.end43
  %dec12442278 = add nsw i32 %len.1, -1
  %cmp12452279 = icmp sgt i32 %len.1, 0
  br i1 %cmp12452279, label %while.body1247.lr.ph, label %sw.epilog1697

while.body1247.lr.ph:                             ; preds = %while.cond1243.preheader
  %tobool1248 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1247

while.cond1274.preheader:                         ; preds = %if.end43
  %dec12752269 = add nsw i32 %len.1, -1
  %cmp12762270 = icmp sgt i32 %len.1, 0
  br i1 %cmp12762270, label %while.body1278.lr.ph, label %sw.epilog1697

while.body1278.lr.ph:                             ; preds = %while.cond1274.preheader
  %tobool1279 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1278

while.cond1307.preheader:                         ; preds = %if.end43
  %dec13082260 = add nsw i32 %len.1, -1
  %cmp13092261 = icmp sgt i32 %len.1, 0
  br i1 %cmp13092261, label %while.body1311.lr.ph, label %sw.epilog1697

while.body1311.lr.ph:                             ; preds = %while.cond1307.preheader
  %tobool1312 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1311

while.cond1341.preheader:                         ; preds = %if.end43
  %dec13422251 = add nsw i32 %len.1, -1
  %cmp13432252 = icmp sgt i32 %len.1, 0
  br i1 %cmp13432252, label %while.body1345.lr.ph, label %sw.epilog1697

while.body1345.lr.ph:                             ; preds = %while.cond1341.preheader
  %tobool1346 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1345

while.cond1371.preheader:                         ; preds = %if.end43
  %dec13722242 = add nsw i32 %len.1, -1
  %cmp13732243 = icmp sgt i32 %len.1, 0
  br i1 %cmp13732243, label %while.body1375.lr.ph, label %sw.epilog1697

while.body1375.lr.ph:                             ; preds = %while.cond1371.preheader
  %tobool1376 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1375

while.cond1402.preheader:                         ; preds = %if.end43
  %dec14032233 = add nsw i32 %len.1, -1
  %cmp14042234 = icmp sgt i32 %len.1, 0
  br i1 %cmp14042234, label %while.body1406.lr.ph, label %sw.epilog1697

while.body1406.lr.ph:                             ; preds = %while.cond1402.preheader
  %tobool1407 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1406

while.cond1432.preheader:                         ; preds = %if.end43
  %dec14332224 = add nsw i32 %len.1, -1
  %cmp14342225 = icmp sgt i32 %len.1, 0
  br i1 %cmp14342225, label %while.body1436.lr.ph, label %sw.epilog1697

while.body1436.lr.ph:                             ; preds = %while.cond1432.preheader
  %tobool1437 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1436

while.cond1463.preheader:                         ; preds = %if.end43
  %dec14642215 = add nsw i32 %len.1, -1
  %cmp14652216 = icmp sgt i32 %len.1, 0
  br i1 %cmp14652216, label %while.body1467.lr.ph, label %sw.epilog1697

while.body1467.lr.ph:                             ; preds = %while.cond1463.preheader
  %tobool1468 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1467

while.cond1493.preheader:                         ; preds = %if.end43
  %dec14942206 = add nsw i32 %len.1, -1
  %cmp14952207 = icmp sgt i32 %len.1, 0
  br i1 %cmp14952207, label %while.body1497.lr.ph, label %sw.epilog1697

while.body1497.lr.ph:                             ; preds = %while.cond1493.preheader
  %tobool1498 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1497

sw.default:                                       ; preds = %if.end43
  %and44 = and i32 %29, 255
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str6, i64 0, i64 0), i32 %and44) #8
  br label %sw.bb45

sw.bb45:                                          ; preds = %if.end43, %sw.default
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str7, i64 0, i64 0)) #8
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.end43, %sw.bb45
  %36 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur49 = getelementptr inbounds i8* %36, i64 8
  %37 = bitcast i8* %xpv_cur49 to i64*
  %38 = load i64* %37, align 8, !tbaa !4
  %conv502167 = zext i32 %len.1 to i64
  %sub = add i64 %conv502167, %2
  %add51 = sub i64 %sub, %38
  %conv52 = trunc i64 %add51 to i32
  %cmp53 = icmp sgt i32 %conv52, 0
  br i1 %cmp53, label %while.cond124.preheader, label %if.end56

if.end56:                                         ; preds = %sw.bb46
  %sub57 = sub nsw i32 0, %conv52
  %cmp58 = icmp slt i32 %conv52, 0
  br i1 %cmp58, label %shrink, label %sw.epilog1697

sw.bb62:                                          ; preds = %if.end43
  call void @llvm.lifetime.start(i64 16, i8* %savsym.sroa.0.0.cast1768)
  call void @llvm.lifetime.start(i64 12, i8* %savsym.sroa.5.0.idx)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.0.0.cast1768, i8* %7, i64 16, i32 8, i1 false)
  %savsym.sroa.1.16.copyload = load i8** %savsym.sroa.1.16.idx1742, align 8
  %savsym.sroa.2.24.copyload = load i8** %savsym.sroa.2.24.idx1746, align 8
  %39 = load i64* %8, align 8
  %40 = bitcast i32* %howlen9 to i64*
  %savsym.sroa.4.40.copyload = load i64* %40, align 8
  %41 = trunc i64 %savsym.sroa.4.40.copyload to i32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.5.0.idx, i8* %savsym.sroa.5.44.cast, i64 12, i32 4, i1 false)
  store i8* %savsym.sroa.2.24.copyload, i8** %patend, align 8, !tbaa !0
  %42 = lshr i64 %savsym.sroa.4.40.copyload, 32
  %43 = trunc i64 %42 to i32
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %level, align 4, !tbaa !3
  %cmp74 = icmp eq i32 %41, 2
  br label %while.cond69

while.cond69:                                     ; preds = %while.body71, %sw.bb62
  %len.2 = phi i32 [ %len.1, %sw.bb62 ], [ %dec, %while.body71 ]
  %beglist.addr.1 = phi %struct.sv** [ %beglist.addr.02448, %sw.bb62 ], [ %call72, %while.body71 ]
  %dec = add nsw i32 %len.2, -1
  %tobool70 = icmp eq i32 %len.2, 0
  br i1 %tobool70, label %while.end, label %while.body71

while.body71:                                     ; preds = %while.cond69
  store i8* %savsym.sroa.1.16.copyload, i8** %patptr, align 8, !tbaa !0
  %call72 = call fastcc %struct.sv** @S_pack_rec(%struct.sv* %cat, %struct.tempsym_t* %symptr, %struct.sv** %beglist.addr.1, %struct.sv** %endlist) #7
  %cmp77 = icmp eq %struct.sv** %call72, %endlist
  %or.cond2170 = and i1 %cmp74, %cmp77
  br i1 %or.cond2170, label %while.end, label %while.cond69

while.end:                                        ; preds = %while.body71, %while.cond69
  %beglist.addr.2 = phi %struct.sv** [ %beglist.addr.1, %while.cond69 ], [ %endlist, %while.body71 ]
  %44 = load i32* %flags, align 4, !tbaa !3
  store i32 %44, i32* %flags85, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %savsym.sroa.0.0.cast1768, i64 16, i32 8, i1 false)
  store i8* %savsym.sroa.1.16.copyload, i8** %savsym.sroa.1.16.idx1742, align 8
  store i8* %savsym.sroa.2.24.copyload, i8** %savsym.sroa.2.24.idx1746, align 8
  store i64 %39, i64* %8, align 8
  store i32 %41, i32* %howlen9, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.5.44.cast, i8* %savsym.sroa.5.0.idx, i64 12, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 16, i8* %savsym.sroa.0.0.cast1768)
  call void @llvm.lifetime.end(i64 12, i8* %savsym.sroa.5.0.idx)
  br label %sw.epilog1697

sw.bb86:                                          ; preds = %if.end43
  %tobool87 = icmp eq i32 %len.1, 0
  %45 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur91 = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur91 to i64*
  %47 = load i64* %46, align 8, !tbaa !4
  %48 = sext i32 %len.1 to i64
  %conv92 = select i1 %tobool87, i64 1, i64 %48
  %rem = urem i64 %47, %conv92
  %conv93 = trunc i64 %rem to i32
  br label %shrink

shrink:                                           ; preds = %if.end43.shrink_crit_edge, %sw.bb86, %if.end56
  %49 = phi i64 [ %38, %if.end56 ], [ %.pre2500, %if.end43.shrink_crit_edge ], [ %47, %sw.bb86 ]
  %50 = phi i8* [ %36, %if.end56 ], [ %.pre2498, %if.end43.shrink_crit_edge ], [ %45, %sw.bb86 ]
  %len.4 = phi i32 [ %sub57, %if.end56 ], [ %len.1, %if.end43.shrink_crit_edge ], [ %conv93, %sw.bb86 ]
  %conv97 = trunc i64 %49 to i32
  %cmp98 = icmp slt i32 %conv97, %len.4
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %shrink
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0)) #8
  %.pre = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur104.phi.trans.insert = getelementptr inbounds i8* %.pre, i64 8
  %.phi.trans.insert = bitcast i8* %xpv_cur104.phi.trans.insert to i64*
  %.pre2479 = load i64* %.phi.trans.insert, align 8, !tbaa !4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %shrink
  %51 = phi i64 [ %.pre2479, %if.then100 ], [ %49, %shrink ]
  %52 = phi i8* [ %.pre, %if.then100 ], [ %50, %shrink ]
  %conv102 = sext i32 %len.4 to i64
  %xpv_cur104 = getelementptr inbounds i8* %52, i64 8
  %53 = bitcast i8* %xpv_cur104 to i64*
  %sub105 = sub i64 %51, %conv102
  store i64 %sub105, i64* %53, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %52 to i8**
  %54 = load i8** %xpv_pv, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %54, i64 %sub105
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  br label %sw.epilog1697

sw.bb109:                                         ; preds = %if.end43
  %tobool110 = icmp eq i32 %len.1, 0
  %.len.12171 = select i1 %tobool110, i32 1, i32 %len.1
  %55 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur114 = getelementptr inbounds i8* %55, i64 8
  %56 = bitcast i8* %xpv_cur114 to i64*
  %57 = load i64* %56, align 8, !tbaa !4
  %conv115 = sext i32 %.len.12171 to i64
  %rem116 = urem i64 %57, %conv115
  %conv117 = trunc i64 %rem116 to i32
  store i32 %conv117, i32* %aint, align 4, !tbaa !3
  %tobool118 = icmp eq i32 %conv117, 0
  %sub120 = sub nsw i32 %.len.12171, %conv117
  %.sub120 = select i1 %tobool118, i32 0, i32 %sub120
  br label %while.cond124.preheader

while.cond124.preheader:                          ; preds = %if.end43, %sw.bb46, %sw.bb109
  %len.6.ph = phi i32 [ %.sub120, %sw.bb109 ], [ %conv52, %sw.bb46 ], [ %len.1, %if.end43 ]
  %cmp1252440 = icmp sgt i32 %len.6.ph, 9
  br i1 %cmp1252440, label %while.body127.lr.ph, label %while.end129

while.body127.lr.ph:                              ; preds = %while.cond124.preheader
  %58 = add i32 %len.6.ph, -10
  %59 = urem i32 %58, 10
  br label %while.body127

while.body127:                                    ; preds = %while.body127.lr.ph, %while.body127
  %len.62441 = phi i32 [ %len.6.ph, %while.body127.lr.ph ], [ %sub128, %while.body127 ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([10 x i8]* @S_pack_rec.null10, i64 0, i64 0), i64 10, i32 2) #8
  %sub128 = add nsw i32 %len.62441, -10
  %cmp125 = icmp sgt i32 %sub128, 9
  br i1 %cmp125, label %while.body127, label %while.end129

while.end129:                                     ; preds = %while.body127, %while.cond124.preheader
  %len.6.lcssa = phi i32 [ %len.6.ph, %while.cond124.preheader ], [ %59, %while.body127 ]
  %conv130 = sext i32 %len.6.lcssa to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([10 x i8]* @S_pack_rec.null10, i64 0, i64 0), i64 %conv130, i32 2) #8
  br label %sw.epilog1697

sw.bb131:                                         ; preds = %if.end43, %if.end43, %if.end43
  %tobool132 = icmp eq %struct.sv* %lengthcode.0, null
  br i1 %tobool132, label %cond.false134, label %cond.end142

cond.false134:                                    ; preds = %sw.bb131
  %dec135 = add nsw i32 %items.02445, -1
  %cmp136 = icmp sgt i32 %items.02445, 0
  br i1 %cmp136, label %cond.true138, label %cond.end142

cond.true138:                                     ; preds = %cond.false134
  %incdec.ptr = getelementptr inbounds %struct.sv** %beglist.addr.02448, i64 1
  %60 = load %struct.sv** %beglist.addr.02448, align 8, !tbaa !0
  br label %cond.end142

cond.end142:                                      ; preds = %sw.bb131, %cond.true138, %cond.false134
  %items.1 = phi i32 [ %dec135, %cond.true138 ], [ %dec135, %cond.false134 ], [ %items.02445, %sw.bb131 ]
  %beglist.addr.3 = phi %struct.sv** [ %incdec.ptr, %cond.true138 ], [ %beglist.addr.02448, %cond.false134 ], [ %beglist.addr.02448, %sw.bb131 ]
  %cond143 = phi %struct.sv* [ %60, %cond.true138 ], [ @PL_sv_no, %cond.false134 ], [ %lengthcode.0, %sw.bb131 ]
  %sv_flags144 = getelementptr inbounds %struct.sv* %cond143, i64 0, i32 2
  %61 = load i32* %sv_flags144, align 4, !tbaa !3
  %and145 = and i32 %61, 262144
  %cmp146 = icmp eq i32 %and145, 0
  br i1 %cmp146, label %cond.false153, label %cond.true148

cond.true148:                                     ; preds = %cond.end142
  %sv_any149 = getelementptr inbounds %struct.sv* %cond143, i64 0, i32 0
  %62 = load i8** %sv_any149, align 8, !tbaa !0
  %xpv_cur150 = getelementptr inbounds i8* %62, i64 8
  %63 = bitcast i8* %xpv_cur150 to i64*
  %64 = load i64* %63, align 8, !tbaa !4
  store i64 %64, i64* %fromlen, align 8, !tbaa !4
  %xpv_pv152 = bitcast i8* %62 to i8**
  %65 = load i8** %xpv_pv152, align 8, !tbaa !0
  br label %cond.end155

cond.false153:                                    ; preds = %cond.end142
  %call154 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond143, i64* %fromlen, i32 2) #8
  br label %cond.end155

cond.end155:                                      ; preds = %cond.false153, %cond.true148
  %66 = phi i8* [ %65, %cond.true148 ], [ %call154, %cond.false153 ]
  store i8* %66, i8** %aptr, align 8, !tbaa !0
  %cmp157 = icmp eq i32 %30, 2
  %67 = load i64* %fromlen, align 8, !tbaa !4
  br i1 %cmp157, label %if.then159, label %if.end166

if.then159:                                       ; preds = %cond.end155
  %conv160 = trunc i64 %67 to i32
  %cmp161 = icmp eq i32 %29, 90
  %inc164 = zext i1 %cmp161 to i32
  %inc164.conv160 = add nsw i32 %conv160, %inc164
  br label %if.end166

if.end166:                                        ; preds = %cond.end155, %if.then159
  %len.7 = phi i32 [ %inc164.conv160, %if.then159 ], [ %len.1, %cond.end155 ]
  %conv167 = trunc i64 %67 to i32
  %cmp168 = icmp slt i32 %conv167, %len.7
  br i1 %cmp168, label %if.else185, label %if.then170

if.then170:                                       ; preds = %if.end166
  %conv171 = sext i32 %len.7 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %66, i64 %conv171, i32 2) #8
  %cmp172 = icmp eq i32 %29, 90
  %cmp175 = icmp sgt i32 %len.7, 0
  %or.cond2172 = and i1 %cmp172, %cmp175
  br i1 %or.cond2172, label %if.then177, label %sw.epilog1697

if.then177:                                       ; preds = %if.then170
  %68 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv179 = bitcast i8* %68 to i8**
  %69 = load i8** %xpv_pv179, align 8, !tbaa !0
  %xpv_cur181 = getelementptr inbounds i8* %68, i64 8
  %70 = bitcast i8* %xpv_cur181 to i64*
  %71 = load i64* %70, align 8, !tbaa !4
  %add.ptr182.sum = add i64 %71, -1
  %add.ptr183 = getelementptr inbounds i8* %69, i64 %add.ptr182.sum
  store i8 0, i8* %add.ptr183, align 1, !tbaa !1
  br label %sw.epilog1697

if.else185:                                       ; preds = %if.end166
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %66, i64 %67, i32 2) #8
  %72 = load i64* %fromlen, align 8, !tbaa !4
  %conv1862166 = zext i32 %len.7 to i64
  %sub187 = sub i64 %conv1862166, %72
  %conv188 = trunc i64 %sub187 to i32
  %cmp189 = icmp eq i32 %29, 65
  %cmp1932437 = icmp sgt i32 %conv188, 9
  br i1 %cmp189, label %while.cond192.preheader, label %while.cond200.preheader

while.cond192.preheader:                          ; preds = %if.else185
  br i1 %cmp1932437, label %while.body195.lr.ph, label %while.end197

while.body195.lr.ph:                              ; preds = %while.cond192.preheader
  %73 = add i32 %conv188, -10
  %74 = urem i32 %73, 10
  br label %while.body195

while.cond200.preheader:                          ; preds = %if.else185
  br i1 %cmp1932437, label %while.body203.lr.ph, label %while.end205

while.body203.lr.ph:                              ; preds = %while.cond200.preheader
  %75 = add i32 %conv188, -10
  %76 = urem i32 %75, 10
  br label %while.body203

while.body195:                                    ; preds = %while.body195.lr.ph, %while.body195
  %len.82438 = phi i32 [ %conv188, %while.body195.lr.ph ], [ %sub196, %while.body195 ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i64 10, i32 2) #8
  %sub196 = add nsw i32 %len.82438, -10
  %cmp193 = icmp sgt i32 %sub196, 9
  br i1 %cmp193, label %while.body195, label %while.end197

while.end197:                                     ; preds = %while.body195, %while.cond192.preheader
  %len.8.lcssa = phi i32 [ %conv188, %while.cond192.preheader ], [ %74, %while.body195 ]
  %conv198 = sext i32 %len.8.lcssa to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i64 %conv198, i32 2) #8
  br label %sw.epilog1697

while.body203:                                    ; preds = %while.body203.lr.ph, %while.body203
  %len.92435 = phi i32 [ %conv188, %while.body203.lr.ph ], [ %sub204, %while.body203 ]
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([10 x i8]* @S_pack_rec.null10, i64 0, i64 0), i64 10, i32 2) #8
  %sub204 = add nsw i32 %len.92435, -10
  %cmp201 = icmp sgt i32 %sub204, 9
  br i1 %cmp201, label %while.body203, label %while.end205

while.end205:                                     ; preds = %while.body203, %while.cond200.preheader
  %len.9.lcssa = phi i32 [ %conv188, %while.cond200.preheader ], [ %76, %while.body203 ]
  %conv206 = sext i32 %len.9.lcssa to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([10 x i8]* @S_pack_rec.null10, i64 0, i64 0), i64 %conv206, i32 2) #8
  br label %sw.epilog1697

sw.bb209:                                         ; preds = %if.end43, %if.end43
  %tobool210 = icmp eq %struct.sv* %lengthcode.0, null
  br i1 %tobool210, label %cond.false212, label %cond.end221

cond.false212:                                    ; preds = %sw.bb209
  %dec213 = add nsw i32 %items.02445, -1
  %cmp214 = icmp sgt i32 %items.02445, 0
  br i1 %cmp214, label %cond.true216, label %cond.end221

cond.true216:                                     ; preds = %cond.false212
  %incdec.ptr217 = getelementptr inbounds %struct.sv** %beglist.addr.02448, i64 1
  %77 = load %struct.sv** %beglist.addr.02448, align 8, !tbaa !0
  br label %cond.end221

cond.end221:                                      ; preds = %sw.bb209, %cond.true216, %cond.false212
  %items.2 = phi i32 [ %dec213, %cond.true216 ], [ %dec213, %cond.false212 ], [ %items.02445, %sw.bb209 ]
  %beglist.addr.4 = phi %struct.sv** [ %incdec.ptr217, %cond.true216 ], [ %beglist.addr.02448, %cond.false212 ], [ %beglist.addr.02448, %sw.bb209 ]
  %cond222 = phi %struct.sv* [ %77, %cond.true216 ], [ @PL_sv_no, %cond.false212 ], [ %lengthcode.0, %sw.bb209 ]
  %sv_flags223 = getelementptr inbounds %struct.sv* %cond222, i64 0, i32 2
  %78 = load i32* %sv_flags223, align 4, !tbaa !3
  %and224 = and i32 %78, 262144
  %cmp225 = icmp eq i32 %and224, 0
  br i1 %cmp225, label %cond.false232, label %cond.true227

cond.true227:                                     ; preds = %cond.end221
  %sv_any228 = getelementptr inbounds %struct.sv* %cond222, i64 0, i32 0
  %79 = load i8** %sv_any228, align 8, !tbaa !0
  %xpv_cur229 = getelementptr inbounds i8* %79, i64 8
  %80 = bitcast i8* %xpv_cur229 to i64*
  %81 = load i64* %80, align 8, !tbaa !4
  store i64 %81, i64* %fromlen, align 8, !tbaa !4
  %xpv_pv231 = bitcast i8* %79 to i8**
  %82 = load i8** %xpv_pv231, align 8, !tbaa !0
  br label %cond.end234

cond.false232:                                    ; preds = %cond.end221
  %call233 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond222, i64* %fromlen, i32 2) #8
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false232, %cond.true227
  %cond235 = phi i8* [ %82, %cond.true227 ], [ %call233, %cond.false232 ]
  %cmp236 = icmp eq i32 %30, 2
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %cond.end234
  %83 = load i64* %fromlen, align 8, !tbaa !4
  %conv239 = trunc i64 %83 to i32
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %cond.end234
  %len.10 = phi i32 [ %conv239, %if.then238 ], [ %len.1, %cond.end234 ]
  %84 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur242 = getelementptr inbounds i8* %84, i64 8
  %85 = bitcast i8* %xpv_cur242 to i64*
  %86 = load i64* %85, align 8, !tbaa !4
  %conv243 = trunc i64 %86 to i32
  store i32 %conv243, i32* %aint, align 4, !tbaa !3
  %add244 = add nsw i32 %len.10, 7
  %div = sdiv i32 %add244, 8
  %conv245 = sext i32 %div to i64
  %add248 = add i64 %86, %conv245
  store i64 %add248, i64* %85, align 8, !tbaa !4
  %xpv_len = getelementptr inbounds i8* %84, i64 16
  %87 = bitcast i8* %xpv_len to i64*
  %88 = load i64* %87, align 8, !tbaa !4
  %add252 = add i64 %add248, 1
  %cmp253 = icmp ult i64 %88, %add252
  br i1 %cmp253, label %cond.true255, label %cond.end263

cond.true255:                                     ; preds = %if.end240
  %call259 = call i8* @Perl_sv_grow(%struct.sv* %cat, i64 %add252) #8
  %.pre2480 = load i8** %sv_any, align 8, !tbaa !0
  %.pre2481 = load i32* %aint, align 4, !tbaa !3
  br label %cond.end263

cond.end263:                                      ; preds = %if.end240, %cond.true255
  %89 = phi i32 [ %conv243, %if.end240 ], [ %.pre2481, %cond.true255 ]
  %90 = phi i8* [ %84, %if.end240 ], [ %.pre2480, %cond.true255 ]
  %xpv_pv266 = bitcast i8* %90 to i8**
  %91 = load i8** %xpv_pv266, align 8, !tbaa !0
  %idx.ext = sext i32 %89 to i64
  %add.ptr267 = getelementptr inbounds i8* %91, i64 %idx.ext
  store i8* %add.ptr267, i8** %aptr, align 8, !tbaa !0
  %92 = load i64* %fromlen, align 8, !tbaa !4
  %conv268 = trunc i64 %92 to i32
  %cmp269 = icmp sgt i32 %len.10, %conv268
  %conv268.len.10 = select i1 %cmp269, i32 %conv268, i32 %len.10
  store i32 %conv268.len.10, i32* %aint, align 4, !tbaa !3
  %cmp274 = icmp eq i32 %29, 66
  %cmp2782426 = icmp sgt i32 %conv268.len.10, 0
  br i1 %cmp274, label %for.cond.preheader, label %for.cond293.preheader

for.cond.preheader:                               ; preds = %cond.end263
  br i1 %cmp2782426, label %for.body, label %if.end314

for.cond293.preheader:                            ; preds = %cond.end263
  br i1 %cmp2782426, label %for.body297, label %if.end314

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %93 = phi i32 [ %96, %for.cond.backedge ], [ %conv268.len.10, %for.cond.preheader ]
  %inc2772429 = phi i32 [ %inc277, %for.cond.backedge ], [ 1, %for.cond.preheader ]
  %items.32428 = phi i32 [ %items.3.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %str.02427 = phi i8* [ %incdec.ptr280, %for.cond.backedge ], [ %cond235, %for.cond.preheader ]
  %incdec.ptr280 = getelementptr inbounds i8* %str.02427, i64 1
  %94 = load i8* %str.02427, align 1, !tbaa !1
  %conv2812165 = zext i8 %94 to i32
  %and282 = and i32 %conv2812165, 1
  %or283 = or i32 %and282, %items.32428
  %and284 = and i32 %inc2772429, 7
  %tobool285 = icmp eq i32 %and284, 0
  br i1 %tobool285, label %if.else287, label %if.then286

if.then286:                                       ; preds = %for.body
  %shl = shl i32 %or283, 1
  br label %for.cond.backedge

if.else287:                                       ; preds = %for.body
  %conv289 = trunc i32 %or283 to i8
  %95 = load i8** %aptr, align 8, !tbaa !0
  %incdec.ptr290 = getelementptr inbounds i8* %95, i64 1
  store i8* %incdec.ptr290, i8** %aptr, align 8, !tbaa !0
  store i8 %conv289, i8* %95, align 1, !tbaa !1
  %.pre2483 = load i32* %aint, align 4, !tbaa !3
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else287, %if.then286
  %96 = phi i32 [ %93, %if.then286 ], [ %.pre2483, %if.else287 ]
  %items.3.be = phi i32 [ %shl, %if.then286 ], [ 0, %if.else287 ]
  %inc277 = add nsw i32 %inc2772429, 1
  %cmp278 = icmp slt i32 %inc2772429, %96
  br i1 %cmp278, label %for.body, label %if.end314

for.body297:                                      ; preds = %for.cond293.preheader, %for.cond293.backedge
  %97 = phi i32 [ %103, %for.cond293.backedge ], [ %conv268.len.10, %for.cond293.preheader ]
  %inc2942422 = phi i32 [ %inc294, %for.cond293.backedge ], [ 1, %for.cond293.preheader ]
  %items.42421 = phi i32 [ %items.4.be, %for.cond293.backedge ], [ 0, %for.cond293.preheader ]
  %str.12420 = phi i8* [ %incdec.ptr298, %for.cond293.backedge ], [ %cond235, %for.cond293.preheader ]
  %incdec.ptr298 = getelementptr inbounds i8* %str.12420, i64 1
  %98 = load i8* %str.12420, align 1, !tbaa !1
  %and300 = and i8 %98, 1
  %99 = zext i8 %and300 to i32
  %100 = shl nuw nsw i32 %99, 7
  %101 = or i32 %100, %items.42421
  %and305 = and i32 %inc2942422, 7
  %tobool306 = icmp eq i32 %and305, 0
  br i1 %tobool306, label %if.else308, label %if.then307

if.then307:                                       ; preds = %for.body297
  %shr = ashr i32 %101, 1
  br label %for.cond293.backedge

if.else308:                                       ; preds = %for.body297
  %conv310 = trunc i32 %101 to i8
  %102 = load i8** %aptr, align 8, !tbaa !0
  %incdec.ptr311 = getelementptr inbounds i8* %102, i64 1
  store i8* %incdec.ptr311, i8** %aptr, align 8, !tbaa !0
  store i8 %conv310, i8* %102, align 1, !tbaa !1
  %.pre2482 = load i32* %aint, align 4, !tbaa !3
  br label %for.cond293.backedge

for.cond293.backedge:                             ; preds = %if.else308, %if.then307
  %103 = phi i32 [ %97, %if.then307 ], [ %.pre2482, %if.else308 ]
  %items.4.be = phi i32 [ %shr, %if.then307 ], [ 0, %if.else308 ]
  %inc294 = add nsw i32 %inc2942422, 1
  %cmp295 = icmp slt i32 %inc2942422, %103
  br i1 %cmp295, label %for.body297, label %if.end314

if.end314:                                        ; preds = %for.cond.preheader, %for.cond.backedge, %for.cond293.preheader, %for.cond293.backedge
  %104 = phi i32 [ %conv268.len.10, %for.cond293.preheader ], [ %103, %for.cond293.backedge ], [ %conv268.len.10, %for.cond.preheader ], [ %96, %for.cond.backedge ]
  %len.14 = phi i32 [ 1, %for.cond293.preheader ], [ %inc294, %for.cond293.backedge ], [ 1, %for.cond.preheader ], [ %inc277, %for.cond.backedge ]
  %items.6 = phi i32 [ 0, %for.cond293.preheader ], [ %items.4.be, %for.cond293.backedge ], [ 0, %for.cond.preheader ], [ %items.3.be, %for.cond.backedge ]
  %and315 = and i32 %104, 7
  %tobool316 = icmp eq i32 %and315, 0
  br i1 %tobool316, label %if.end332, label %if.then317

if.then317:                                       ; preds = %if.end314
  %105 = xor i32 %and315, 7
  %shl323 = shl i32 %items.6, %105
  %shr327 = ashr i32 %items.6, %105
  %items.7 = select i1 %cmp274, i32 %shl323, i32 %shr327
  %conv330 = trunc i32 %items.7 to i8
  %106 = load i8** %aptr, align 8, !tbaa !0
  %incdec.ptr331 = getelementptr inbounds i8* %106, i64 1
  store i8* %incdec.ptr331, i8** %aptr, align 8, !tbaa !0
  store i8 %conv330, i8* %106, align 1, !tbaa !1
  br label %if.end332

if.end332:                                        ; preds = %if.end314, %if.then317
  %107 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv334 = bitcast i8* %107 to i8**
  %108 = load i8** %xpv_pv334, align 8, !tbaa !0
  %xpv_cur336 = getelementptr inbounds i8* %107, i64 8
  %109 = bitcast i8* %xpv_cur336 to i64*
  %110 = load i64* %109, align 8, !tbaa !4
  %add.ptr337 = getelementptr inbounds i8* %108, i64 %110
  %111 = load i8** %aptr, align 8, !tbaa !0
  %cmp3392433 = icmp ugt i8* %111, %add.ptr337
  br i1 %cmp3392433, label %sw.epilog1697, label %while.body341

while.body341:                                    ; preds = %if.end332, %while.body341
  %112 = phi i8* [ %113, %while.body341 ], [ %111, %if.end332 ]
  %incdec.ptr342 = getelementptr inbounds i8* %112, i64 1
  store i8* %incdec.ptr342, i8** %aptr, align 8, !tbaa !0
  store i8 0, i8* %112, align 1, !tbaa !1
  %113 = load i8** %aptr, align 8, !tbaa !0
  %cmp339 = icmp ugt i8* %113, %add.ptr337
  br i1 %cmp339, label %sw.epilog1697, label %while.body341

sw.bb344:                                         ; preds = %if.end43, %if.end43
  %tobool347 = icmp eq %struct.sv* %lengthcode.0, null
  br i1 %tobool347, label %cond.false349, label %cond.end358

cond.false349:                                    ; preds = %sw.bb344
  %dec350 = add nsw i32 %items.02445, -1
  %cmp351 = icmp sgt i32 %items.02445, 0
  br i1 %cmp351, label %cond.true353, label %cond.end358

cond.true353:                                     ; preds = %cond.false349
  %incdec.ptr354 = getelementptr inbounds %struct.sv** %beglist.addr.02448, i64 1
  %114 = load %struct.sv** %beglist.addr.02448, align 8, !tbaa !0
  br label %cond.end358

cond.end358:                                      ; preds = %sw.bb344, %cond.true353, %cond.false349
  %items.8 = phi i32 [ %dec350, %cond.true353 ], [ %dec350, %cond.false349 ], [ %items.02445, %sw.bb344 ]
  %beglist.addr.5 = phi %struct.sv** [ %incdec.ptr354, %cond.true353 ], [ %beglist.addr.02448, %cond.false349 ], [ %beglist.addr.02448, %sw.bb344 ]
  %cond359 = phi %struct.sv* [ %114, %cond.true353 ], [ @PL_sv_no, %cond.false349 ], [ %lengthcode.0, %sw.bb344 ]
  %sv_flags360 = getelementptr inbounds %struct.sv* %cond359, i64 0, i32 2
  %115 = load i32* %sv_flags360, align 4, !tbaa !3
  %and361 = and i32 %115, 262144
  %cmp362 = icmp eq i32 %and361, 0
  br i1 %cmp362, label %cond.false369, label %cond.true364

cond.true364:                                     ; preds = %cond.end358
  %sv_any365 = getelementptr inbounds %struct.sv* %cond359, i64 0, i32 0
  %116 = load i8** %sv_any365, align 8, !tbaa !0
  %xpv_cur366 = getelementptr inbounds i8* %116, i64 8
  %117 = bitcast i8* %xpv_cur366 to i64*
  %118 = load i64* %117, align 8, !tbaa !4
  store i64 %118, i64* %fromlen, align 8, !tbaa !4
  %xpv_pv368 = bitcast i8* %116 to i8**
  %119 = load i8** %xpv_pv368, align 8, !tbaa !0
  br label %cond.end371

cond.false369:                                    ; preds = %cond.end358
  %call370 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond359, i64* %fromlen, i32 2) #8
  br label %cond.end371

cond.end371:                                      ; preds = %cond.false369, %cond.true364
  %cond372 = phi i8* [ %119, %cond.true364 ], [ %call370, %cond.false369 ]
  %cmp373 = icmp eq i32 %30, 2
  br i1 %cmp373, label %if.then375, label %if.end377

if.then375:                                       ; preds = %cond.end371
  %120 = load i64* %fromlen, align 8, !tbaa !4
  %conv376 = trunc i64 %120 to i32
  br label %if.end377

if.end377:                                        ; preds = %if.then375, %cond.end371
  %len.15 = phi i32 [ %conv376, %if.then375 ], [ %len.1, %cond.end371 ]
  %121 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur379 = getelementptr inbounds i8* %121, i64 8
  %122 = bitcast i8* %xpv_cur379 to i64*
  %123 = load i64* %122, align 8, !tbaa !4
  %conv380 = trunc i64 %123 to i32
  store i32 %conv380, i32* %aint, align 4, !tbaa !3
  %add381 = add nsw i32 %len.15, 1
  %div382 = sdiv i32 %add381, 2
  %conv383 = sext i32 %div382 to i64
  %add386 = add i64 %123, %conv383
  store i64 %add386, i64* %122, align 8, !tbaa !4
  %xpv_len388 = getelementptr inbounds i8* %121, i64 16
  %124 = bitcast i8* %xpv_len388 to i64*
  %125 = load i64* %124, align 8, !tbaa !4
  %add391 = add i64 %add386, 1
  %cmp392 = icmp ult i64 %125, %add391
  br i1 %cmp392, label %cond.true394, label %cond.end402

cond.true394:                                     ; preds = %if.end377
  %call398 = call i8* @Perl_sv_grow(%struct.sv* %cat, i64 %add391) #8
  %.pre2484 = load i8** %sv_any, align 8, !tbaa !0
  %.pre2485 = load i32* %aint, align 4, !tbaa !3
  br label %cond.end402

cond.end402:                                      ; preds = %if.end377, %cond.true394
  %126 = phi i32 [ %conv380, %if.end377 ], [ %.pre2485, %cond.true394 ]
  %127 = phi i8* [ %121, %if.end377 ], [ %.pre2484, %cond.true394 ]
  %xpv_pv405 = bitcast i8* %127 to i8**
  %128 = load i8** %xpv_pv405, align 8, !tbaa !0
  %idx.ext406 = sext i32 %126 to i64
  %add.ptr407 = getelementptr inbounds i8* %128, i64 %idx.ext406
  store i8* %add.ptr407, i8** %aptr, align 8, !tbaa !0
  %129 = load i64* %fromlen, align 8, !tbaa !4
  %conv408 = trunc i64 %129 to i32
  %cmp409 = icmp sgt i32 %len.15, %conv408
  %conv408.len.15 = select i1 %cmp409, i32 %conv408, i32 %len.15
  store i32 %conv408.len.15, i32* %aint, align 4, !tbaa !3
  %cmp414 = icmp eq i32 %29, 72
  %cmp4192411 = icmp sgt i32 %conv408.len.15, 0
  br i1 %cmp414, label %for.cond417.preheader, label %for.cond461.preheader

for.cond417.preheader:                            ; preds = %cond.end402
  br i1 %cmp4192411, label %for.body421, label %if.end506

for.cond461.preheader:                            ; preds = %cond.end402
  br i1 %cmp4192411, label %for.body465, label %if.end506

for.body421:                                      ; preds = %for.cond417.preheader, %for.cond417.backedge
  %130 = phi i32 [ %135, %for.cond417.backedge ], [ %conv408.len.15, %for.cond417.preheader ]
  %inc4182414 = phi i32 [ %inc418, %for.cond417.backedge ], [ 1, %for.cond417.preheader ]
  %items.92413 = phi i32 [ %items.9.be, %for.cond417.backedge ], [ 0, %for.cond417.preheader ]
  %str345.02412 = phi i8* [ %str345.1, %for.cond417.backedge ], [ %cond372, %for.cond417.preheader ]
  %131 = load i8* %str345.02412, align 1, !tbaa !1
  %.off2188 = add i8 %131, -65
  %132 = icmp ult i8 %.off2188, 26
  %.off2189 = add i8 %131, -97
  %133 = icmp ult i8 %.off2189, 26
  %or.cond2191 = or i1 %132, %133
  %conv4392163 = zext i8 %131 to i32
  %add441 = add nsw i32 %conv4392163, 9
  %and442.pn.in = select i1 %or.cond2191, i32 %add441, i32 %conv4392163
  %and442.pn = and i32 %and442.pn.in, 15
  %str345.1 = getelementptr inbounds i8* %str345.02412, i64 1
  %items.10 = or i32 %and442.pn, %items.92413
  %and450 = and i32 %inc4182414, 1
  %tobool451 = icmp eq i32 %and450, 0
  br i1 %tobool451, label %if.else454, label %if.then452

if.then452:                                       ; preds = %for.body421
  %shl453 = shl i32 %items.10, 4
  br label %for.cond417.backedge

if.else454:                                       ; preds = %for.body421
  %conv456 = trunc i32 %items.10 to i8
  %134 = load i8** %aptr, align 8, !tbaa !0
  %incdec.ptr457 = getelementptr inbounds i8* %134, i64 1
  store i8* %incdec.ptr457, i8** %aptr, align 8, !tbaa !0
  store i8 %conv456, i8* %134, align 1, !tbaa !1
  %.pre2487 = load i32* %aint, align 4, !tbaa !3
  br label %for.cond417.backedge

for.cond417.backedge:                             ; preds = %if.else454, %if.then452
  %135 = phi i32 [ %130, %if.then452 ], [ %.pre2487, %if.else454 ]
  %items.9.be = phi i32 [ %shl453, %if.then452 ], [ 0, %if.else454 ]
  %inc418 = add nsw i32 %inc4182414, 1
  %cmp419 = icmp slt i32 %inc4182414, %135
  br i1 %cmp419, label %for.body421, label %if.end506

for.body465:                                      ; preds = %for.cond461.preheader, %for.cond461.backedge
  %136 = phi i32 [ %141, %for.cond461.backedge ], [ %conv408.len.15, %for.cond461.preheader ]
  %inc4622407 = phi i32 [ %inc462, %for.cond461.backedge ], [ 1, %for.cond461.preheader ]
  %items.112406 = phi i32 [ %items.11.be, %for.cond461.backedge ], [ 0, %for.cond461.preheader ]
  %str345.22405 = phi i8* [ %str345.3, %for.cond461.backedge ], [ %cond372, %for.cond461.preheader ]
  %137 = load i8* %str345.22405, align 1, !tbaa !1
  %.off = add i8 %137, -65
  %138 = icmp ult i8 %.off, 26
  %.off2187 = add i8 %137, -97
  %139 = icmp ult i8 %.off2187, 26
  %or.cond2193 = or i1 %138, %139
  %conv4832161 = zext i8 %137 to i32
  %add485 = shl nuw nsw i32 %conv4832161, 4
  %and486 = add i32 %add485, 144
  %shl487.pn.in = select i1 %or.cond2193, i32 %and486, i32 %add485
  %shl487.pn = and i32 %shl487.pn.in, 240
  %str345.3 = getelementptr inbounds i8* %str345.22405, i64 1
  %items.12 = or i32 %shl487.pn, %items.112406
  %and496 = and i32 %inc4622407, 1
  %tobool497 = icmp eq i32 %and496, 0
  br i1 %tobool497, label %if.else500, label %if.then498

if.then498:                                       ; preds = %for.body465
  %shr499 = ashr i32 %items.12, 4
  br label %for.cond461.backedge

if.else500:                                       ; preds = %for.body465
  %conv502 = trunc i32 %items.12 to i8
  %140 = load i8** %aptr, align 8, !tbaa !0
  %incdec.ptr503 = getelementptr inbounds i8* %140, i64 1
  store i8* %incdec.ptr503, i8** %aptr, align 8, !tbaa !0
  store i8 %conv502, i8* %140, align 1, !tbaa !1
  %.pre2486 = load i32* %aint, align 4, !tbaa !3
  br label %for.cond461.backedge

for.cond461.backedge:                             ; preds = %if.else500, %if.then498
  %141 = phi i32 [ %136, %if.then498 ], [ %.pre2486, %if.else500 ]
  %items.11.be = phi i32 [ %shr499, %if.then498 ], [ 0, %if.else500 ]
  %inc462 = add nsw i32 %inc4622407, 1
  %cmp463 = icmp slt i32 %inc4622407, %141
  br i1 %cmp463, label %for.body465, label %if.end506

if.end506:                                        ; preds = %for.cond417.preheader, %for.cond417.backedge, %for.cond461.preheader, %for.cond461.backedge
  %142 = phi i32 [ %conv408.len.15, %for.cond461.preheader ], [ %141, %for.cond461.backedge ], [ %conv408.len.15, %for.cond417.preheader ], [ %135, %for.cond417.backedge ]
  %len.19 = phi i32 [ 1, %for.cond461.preheader ], [ %inc462, %for.cond461.backedge ], [ 1, %for.cond417.preheader ], [ %inc418, %for.cond417.backedge ]
  %items.13 = phi i32 [ 0, %for.cond461.preheader ], [ %items.11.be, %for.cond461.backedge ], [ 0, %for.cond417.preheader ], [ %items.9.be, %for.cond417.backedge ]
  %and507 = and i32 %142, 1
  %tobool508 = icmp eq i32 %and507, 0
  br i1 %tobool508, label %if.end513, label %if.then509

if.then509:                                       ; preds = %if.end506
  %conv511 = trunc i32 %items.13 to i8
  %143 = load i8** %aptr, align 8, !tbaa !0
  %incdec.ptr512 = getelementptr inbounds i8* %143, i64 1
  store i8* %incdec.ptr512, i8** %aptr, align 8, !tbaa !0
  store i8 %conv511, i8* %143, align 1, !tbaa !1
  br label %if.end513

if.end513:                                        ; preds = %if.end506, %if.then509
  %144 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv515 = bitcast i8* %144 to i8**
  %145 = load i8** %xpv_pv515, align 8, !tbaa !0
  %xpv_cur517 = getelementptr inbounds i8* %144, i64 8
  %146 = bitcast i8* %xpv_cur517 to i64*
  %147 = load i64* %146, align 8, !tbaa !4
  %add.ptr518 = getelementptr inbounds i8* %145, i64 %147
  %148 = load i8** %aptr, align 8, !tbaa !0
  %cmp5202418 = icmp ugt i8* %148, %add.ptr518
  br i1 %cmp5202418, label %sw.epilog1697, label %while.body522

while.body522:                                    ; preds = %if.end513, %while.body522
  %149 = phi i8* [ %150, %while.body522 ], [ %148, %if.end513 ]
  %incdec.ptr523 = getelementptr inbounds i8* %149, i64 1
  store i8* %incdec.ptr523, i8** %aptr, align 8, !tbaa !0
  store i8 0, i8* %149, align 1, !tbaa !1
  %150 = load i8** %aptr, align 8, !tbaa !0
  %cmp520 = icmp ugt i8* %150, %add.ptr518
  br i1 %cmp520, label %sw.epilog1697, label %while.body522

while.body530:                                    ; preds = %while.body530.lr.ph, %while.cond526.backedge
  %dec5272400 = phi i32 [ %dec5272396, %while.body530.lr.ph ], [ %dec527, %while.cond526.backedge ]
  %beglist.addr.62399 = phi %struct.sv** [ %beglist.addr.02448, %while.body530.lr.ph ], [ %beglist.addr.7, %while.cond526.backedge ]
  %items.142398 = phi i32 [ %items.02445, %while.body530.lr.ph ], [ %items.15, %while.cond526.backedge ]
  br i1 %tobool531, label %cond.false533, label %cond.end542

cond.false533:                                    ; preds = %while.body530
  %dec534 = add nsw i32 %items.142398, -1
  %cmp535 = icmp sgt i32 %items.142398, 0
  br i1 %cmp535, label %cond.true537, label %cond.end542

cond.true537:                                     ; preds = %cond.false533
  %incdec.ptr538 = getelementptr inbounds %struct.sv** %beglist.addr.62399, i64 1
  %151 = load %struct.sv** %beglist.addr.62399, align 8, !tbaa !0
  br label %cond.end542

cond.end542:                                      ; preds = %while.body530, %cond.true537, %cond.false533
  %items.15 = phi i32 [ %dec534, %cond.true537 ], [ %dec534, %cond.false533 ], [ %items.142398, %while.body530 ]
  %beglist.addr.7 = phi %struct.sv** [ %incdec.ptr538, %cond.true537 ], [ %beglist.addr.62399, %cond.false533 ], [ %beglist.addr.62399, %while.body530 ]
  %cond543 = phi %struct.sv* [ %151, %cond.true537 ], [ @PL_sv_no, %cond.false533 ], [ %lengthcode.0, %while.body530 ]
  switch i32 %and544, label %while.cond526.backedge [
    i32 67, label %sw.bb545
    i32 99, label %sw.bb591
  ]

while.cond526.backedge:                           ; preds = %cond.end542, %if.end637, %if.end588
  %dec527 = add nsw i32 %dec5272400, -1
  %cmp528 = icmp sgt i32 %dec5272400, 0
  br i1 %cmp528, label %while.body530, label %sw.epilog1697

sw.bb545:                                         ; preds = %cond.end542
  %sv_flags546 = getelementptr inbounds %struct.sv* %cond543, i64 0, i32 2
  %152 = load i32* %sv_flags546, align 4, !tbaa !3
  %and547 = and i32 %152, 65536
  %tobool548 = icmp eq i32 %and547, 0
  br i1 %tobool548, label %cond.false551, label %cond.true549

cond.true549:                                     ; preds = %sw.bb545
  %sv_any550 = getelementptr inbounds %struct.sv* %cond543, i64 0, i32 0
  %153 = load i8** %sv_any550, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %153, i64 24
  %154 = bitcast i8* %xiv_iv to i64*
  %155 = load i64* %154, align 8, !tbaa !4
  br label %cond.end553

cond.false551:                                    ; preds = %sw.bb545
  %call552 = call i64 @Perl_sv_2iv(%struct.sv* %cond543) #8
  br label %cond.end553

cond.end553:                                      ; preds = %cond.false551, %cond.true549
  %cond554 = phi i64 [ %155, %cond.true549 ], [ %call552, %cond.false551 ]
  %conv555 = trunc i64 %cond554 to i32
  store i32 %conv555, i32* %aint, align 4, !tbaa !3
  %156 = icmp ugt i32 %conv555, 255
  br i1 %156, label %land.lhs.true561, label %if.end588

land.lhs.true561:                                 ; preds = %cond.end553
  %157 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %157, i64 0, i32 14
  %158 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp562 = icmp eq %struct.sv* %158, null
  br i1 %cmp562, label %lor.lhs.false579, label %land.lhs.true564

land.lhs.true564:                                 ; preds = %land.lhs.true561
  %159 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings565 = getelementptr inbounds %struct.cop* %159, i64 0, i32 14
  %160 = load %struct.sv** %cop_warnings565, align 8, !tbaa !0
  %cmp566 = icmp eq %struct.sv* %160, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp566, label %lor.lhs.false579, label %land.lhs.true568

land.lhs.true568:                                 ; preds = %land.lhs.true564
  %161 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings569 = getelementptr inbounds %struct.cop* %161, i64 0, i32 14
  %162 = load %struct.sv** %cop_warnings569, align 8, !tbaa !0
  %cmp570 = icmp eq %struct.sv* %162, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp570, label %if.then587, label %lor.lhs.false572

lor.lhs.false572:                                 ; preds = %land.lhs.true568
  %163 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings573 = getelementptr inbounds %struct.cop* %163, i64 0, i32 14
  %164 = load %struct.sv** %cop_warnings573, align 8, !tbaa !0
  %sv_any574 = getelementptr inbounds %struct.sv* %164, i64 0, i32 0
  %165 = load i8** %sv_any574, align 8, !tbaa !0
  %xpv_pv575 = bitcast i8* %165 to i8**
  %166 = load i8** %xpv_pv575, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %166, i64 4
  %167 = load i8* %arrayidx, align 1, !tbaa !1
  %and577 = and i8 %167, 1
  %tobool578 = icmp eq i8 %and577, 0
  br i1 %tobool578, label %lor.lhs.false579, label %if.then587

lor.lhs.false579:                                 ; preds = %lor.lhs.false572, %land.lhs.true564, %land.lhs.true561
  %168 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings580 = getelementptr inbounds %struct.cop* %168, i64 0, i32 14
  %169 = load %struct.sv** %cop_warnings580, align 8, !tbaa !0
  %cmp581 = icmp eq %struct.sv* %169, null
  br i1 %cmp581, label %land.lhs.true583, label %if.end588

land.lhs.true583:                                 ; preds = %lor.lhs.false579
  %170 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and585 = and i8 %170, 1
  %tobool586 = icmp eq i8 %and585, 0
  br i1 %tobool586, label %if.end588, label %if.then587

if.then587:                                       ; preds = %lor.lhs.false572, %land.lhs.true583, %land.lhs.true568
  call void (i32, i8*, ...)* @Perl_warner(i32 16, i8* getelementptr inbounds ([40 x i8]* @.str9, i64 0, i64 0)) #8
  br label %if.end588

if.end588:                                        ; preds = %land.lhs.true583, %lor.lhs.false579, %cond.end553, %if.then587
  %171 = load i32* %aint, align 4, !tbaa !3
  %conv590 = trunc i32 %171 to i8
  store i8 %conv590, i8* %achar, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %achar, i64 1, i32 2) #8
  br label %while.cond526.backedge

sw.bb591:                                         ; preds = %cond.end542
  %sv_flags592 = getelementptr inbounds %struct.sv* %cond543, i64 0, i32 2
  %172 = load i32* %sv_flags592, align 4, !tbaa !3
  %and593 = and i32 %172, 65536
  %tobool594 = icmp eq i32 %and593, 0
  br i1 %tobool594, label %cond.false598, label %cond.true595

cond.true595:                                     ; preds = %sw.bb591
  %sv_any596 = getelementptr inbounds %struct.sv* %cond543, i64 0, i32 0
  %173 = load i8** %sv_any596, align 8, !tbaa !0
  %xiv_iv597 = getelementptr inbounds i8* %173, i64 24
  %174 = bitcast i8* %xiv_iv597 to i64*
  %175 = load i64* %174, align 8, !tbaa !4
  br label %cond.end600

cond.false598:                                    ; preds = %sw.bb591
  %call599 = call i64 @Perl_sv_2iv(%struct.sv* %cond543) #8
  br label %cond.end600

cond.end600:                                      ; preds = %cond.false598, %cond.true595
  %cond601 = phi i64 [ %175, %cond.true595 ], [ %call599, %cond.false598 ]
  %conv602 = trunc i64 %cond601 to i32
  store i32 %conv602, i32* %aint, align 4, !tbaa !3
  %conv602.off = add i32 %conv602, 128
  %176 = icmp ugt i32 %conv602.off, 255
  br i1 %176, label %land.lhs.true608, label %if.end637

land.lhs.true608:                                 ; preds = %cond.end600
  %177 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings609 = getelementptr inbounds %struct.cop* %177, i64 0, i32 14
  %178 = load %struct.sv** %cop_warnings609, align 8, !tbaa !0
  %cmp610 = icmp eq %struct.sv* %178, null
  br i1 %cmp610, label %lor.lhs.false628, label %land.lhs.true612

land.lhs.true612:                                 ; preds = %land.lhs.true608
  %179 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings613 = getelementptr inbounds %struct.cop* %179, i64 0, i32 14
  %180 = load %struct.sv** %cop_warnings613, align 8, !tbaa !0
  %cmp614 = icmp eq %struct.sv* %180, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp614, label %lor.lhs.false628, label %land.lhs.true616

land.lhs.true616:                                 ; preds = %land.lhs.true612
  %181 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings617 = getelementptr inbounds %struct.cop* %181, i64 0, i32 14
  %182 = load %struct.sv** %cop_warnings617, align 8, !tbaa !0
  %cmp618 = icmp eq %struct.sv* %182, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp618, label %if.then636, label %lor.lhs.false620

lor.lhs.false620:                                 ; preds = %land.lhs.true616
  %183 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings621 = getelementptr inbounds %struct.cop* %183, i64 0, i32 14
  %184 = load %struct.sv** %cop_warnings621, align 8, !tbaa !0
  %sv_any622 = getelementptr inbounds %struct.sv* %184, i64 0, i32 0
  %185 = load i8** %sv_any622, align 8, !tbaa !0
  %xpv_pv623 = bitcast i8* %185 to i8**
  %186 = load i8** %xpv_pv623, align 8, !tbaa !0
  %arrayidx624 = getelementptr inbounds i8* %186, i64 4
  %187 = load i8* %arrayidx624, align 1, !tbaa !1
  %and626 = and i8 %187, 1
  %tobool627 = icmp eq i8 %and626, 0
  br i1 %tobool627, label %lor.lhs.false628, label %if.then636

lor.lhs.false628:                                 ; preds = %lor.lhs.false620, %land.lhs.true612, %land.lhs.true608
  %188 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings629 = getelementptr inbounds %struct.cop* %188, i64 0, i32 14
  %189 = load %struct.sv** %cop_warnings629, align 8, !tbaa !0
  %cmp630 = icmp eq %struct.sv* %189, null
  br i1 %cmp630, label %land.lhs.true632, label %if.end637

land.lhs.true632:                                 ; preds = %lor.lhs.false628
  %190 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and634 = and i8 %190, 1
  %tobool635 = icmp eq i8 %and634, 0
  br i1 %tobool635, label %if.end637, label %if.then636

if.then636:                                       ; preds = %lor.lhs.false620, %land.lhs.true632, %land.lhs.true616
  call void (i32, i8*, ...)* @Perl_warner(i32 16, i8* getelementptr inbounds ([40 x i8]* @.str10, i64 0, i64 0)) #8
  br label %if.end637

if.end637:                                        ; preds = %land.lhs.true632, %lor.lhs.false628, %cond.end600, %if.then636
  %191 = load i32* %aint, align 4, !tbaa !3
  %conv639 = trunc i32 %191 to i8
  store i8 %conv639, i8* %achar, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %achar, i64 1, i32 2) #8
  br label %while.cond526.backedge

while.body647:                                    ; preds = %while.body647.lr.ph, %lor.end
  %dec6442391 = phi i32 [ %dec6442387, %while.body647.lr.ph ], [ %dec644, %lor.end ]
  %beglist.addr.82390 = phi %struct.sv** [ %beglist.addr.02448, %while.body647.lr.ph ], [ %beglist.addr.9, %lor.end ]
  %items.162389 = phi i32 [ %items.02445, %while.body647.lr.ph ], [ %items.17, %lor.end ]
  br i1 %tobool648, label %cond.false650, label %cond.end659

cond.false650:                                    ; preds = %while.body647
  %dec651 = add nsw i32 %items.162389, -1
  %cmp652 = icmp sgt i32 %items.162389, 0
  br i1 %cmp652, label %cond.true654, label %cond.end659

cond.true654:                                     ; preds = %cond.false650
  %incdec.ptr655 = getelementptr inbounds %struct.sv** %beglist.addr.82390, i64 1
  %192 = load %struct.sv** %beglist.addr.82390, align 8, !tbaa !0
  br label %cond.end659

cond.end659:                                      ; preds = %while.body647, %cond.true654, %cond.false650
  %items.17 = phi i32 [ %dec651, %cond.true654 ], [ %dec651, %cond.false650 ], [ %items.162389, %while.body647 ]
  %beglist.addr.9 = phi %struct.sv** [ %incdec.ptr655, %cond.true654 ], [ %beglist.addr.82390, %cond.false650 ], [ %beglist.addr.82390, %while.body647 ]
  %cond660 = phi %struct.sv* [ %192, %cond.true654 ], [ @PL_sv_no, %cond.false650 ], [ %lengthcode.0, %while.body647 ]
  %sv_flags661 = getelementptr inbounds %struct.sv* %cond660, i64 0, i32 2
  %193 = load i32* %sv_flags661, align 4, !tbaa !3
  %and662 = and i32 %193, 65536
  %tobool663 = icmp eq i32 %and662, 0
  br i1 %tobool663, label %cond.false666, label %cond.true664

cond.true664:                                     ; preds = %cond.end659
  %sv_any665 = getelementptr inbounds %struct.sv* %cond660, i64 0, i32 0
  %194 = load i8** %sv_any665, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %194, i64 24
  %195 = bitcast i8* %xuv_uv to i64*
  %196 = load i64* %195, align 8, !tbaa !4
  br label %cond.end668

cond.false666:                                    ; preds = %cond.end659
  %call667 = call i64 @Perl_sv_2uv(%struct.sv* %cond660) #8
  br label %cond.end668

cond.end668:                                      ; preds = %cond.false666, %cond.true664
  %cond669 = phi i64 [ %196, %cond.true664 ], [ %call667, %cond.false666 ]
  %conv670 = trunc i64 %cond669 to i32
  store i32 %conv670, i32* %auint, align 4, !tbaa !3
  %197 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_len672 = getelementptr inbounds i8* %197, i64 16
  %198 = bitcast i8* %xpv_len672 to i64*
  %199 = load i64* %198, align 8, !tbaa !4
  %xpv_cur674 = getelementptr inbounds i8* %197, i64 8
  %200 = bitcast i8* %xpv_cur674 to i64*
  %201 = load i64* %200, align 8, !tbaa !4
  %add676 = add i64 %201, 14
  %cmp677 = icmp ult i64 %199, %add676
  br i1 %cmp677, label %cond.true679, label %cond.end688

cond.true679:                                     ; preds = %cond.end668
  %call684 = call i8* @Perl_sv_grow(%struct.sv* %cat, i64 %add676) #8
  %.pre2494 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur693.phi.trans.insert = getelementptr inbounds i8* %.pre2494, i64 8
  %.phi.trans.insert2495 = bitcast i8* %xpv_cur693.phi.trans.insert to i64*
  %.pre2496 = load i64* %.phi.trans.insert2495, align 8, !tbaa !4
  %.pre2497 = load i32* %auint, align 4, !tbaa !3
  br label %cond.end688

cond.end688:                                      ; preds = %cond.end668, %cond.true679
  %202 = phi i32 [ %conv670, %cond.end668 ], [ %.pre2497, %cond.true679 ]
  %203 = phi i64 [ %201, %cond.end668 ], [ %.pre2496, %cond.true679 ]
  %204 = phi i8* [ %197, %cond.end668 ], [ %.pre2494, %cond.true679 ]
  %xpv_pv691 = bitcast i8* %204 to i8**
  %205 = load i8** %xpv_pv691, align 8, !tbaa !0
  %add.ptr694 = getelementptr inbounds i8* %205, i64 %203
  %conv695 = zext i32 %202 to i64
  %206 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings696 = getelementptr inbounds %struct.cop* %206, i64 0, i32 14
  %207 = load %struct.sv** %cop_warnings696, align 8, !tbaa !0
  %cmp697 = icmp eq %struct.sv* %207, null
  br i1 %cmp697, label %lor.rhs, label %land.lhs.true699

land.lhs.true699:                                 ; preds = %cond.end688
  %208 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings700 = getelementptr inbounds %struct.cop* %208, i64 0, i32 14
  %209 = load %struct.sv** %cop_warnings700, align 8, !tbaa !0
  %cmp701 = icmp eq %struct.sv* %209, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp701, label %lor.rhs, label %land.lhs.true703

land.lhs.true703:                                 ; preds = %land.lhs.true699
  %210 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings704 = getelementptr inbounds %struct.cop* %210, i64 0, i32 14
  %211 = load %struct.sv** %cop_warnings704, align 8, !tbaa !0
  %cmp705 = icmp eq %struct.sv* %211, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp705, label %lor.end, label %lor.lhs.false707

lor.lhs.false707:                                 ; preds = %land.lhs.true703
  %212 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings708 = getelementptr inbounds %struct.cop* %212, i64 0, i32 14
  %213 = load %struct.sv** %cop_warnings708, align 8, !tbaa !0
  %sv_any709 = getelementptr inbounds %struct.sv* %213, i64 0, i32 0
  %214 = load i8** %sv_any709, align 8, !tbaa !0
  %xpv_pv710 = bitcast i8* %214 to i8**
  %215 = load i8** %xpv_pv710, align 8, !tbaa !0
  %arrayidx711 = getelementptr inbounds i8* %215, i64 11
  %216 = load i8* %arrayidx711, align 1, !tbaa !1
  %and713 = and i8 %216, 1
  %tobool714 = icmp eq i8 %and713, 0
  br i1 %tobool714, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false707, %land.lhs.true699, %cond.end688
  %217 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings715 = getelementptr inbounds %struct.cop* %217, i64 0, i32 14
  %218 = load %struct.sv** %cop_warnings715, align 8, !tbaa !0
  %cmp716 = icmp eq %struct.sv* %218, null
  br i1 %cmp716, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %219 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and719 = and i8 %219, 1
  %tobool720 = icmp ne i8 %and719, 0
  %phitmp2156 = select i1 %tobool720, i64 0, i64 15
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false707, %lor.rhs, %land.rhs, %land.lhs.true703
  %220 = phi i64 [ 0, %lor.lhs.false707 ], [ 0, %land.lhs.true703 ], [ 15, %lor.rhs ], [ %phitmp2156, %land.rhs ]
  %call723 = call i8* @Perl_uvchr_to_utf8_flags(i8* %add.ptr694, i64 %conv695, i64 %220) #8
  %221 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv725 = bitcast i8* %221 to i8**
  %222 = load i8** %xpv_pv725, align 8, !tbaa !0
  %sub.ptr.lhs.cast726 = ptrtoint i8* %call723 to i64
  %sub.ptr.rhs.cast727 = ptrtoint i8* %222 to i64
  %sub.ptr.sub728 = sub i64 %sub.ptr.lhs.cast726, %sub.ptr.rhs.cast727
  %xpv_cur730 = getelementptr inbounds i8* %221, i64 8
  %223 = bitcast i8* %xpv_cur730 to i64*
  store i64 %sub.ptr.sub728, i64* %223, align 8, !tbaa !4
  %dec644 = add nsw i32 %dec6442391, -1
  %cmp645 = icmp sgt i32 %dec6442391, 0
  br i1 %cmp645, label %while.body647, label %while.end731

while.end731:                                     ; preds = %lor.end, %while.cond643.preheader.while.end731_crit_edge
  %224 = phi i64 [ %.pre2505, %while.cond643.preheader.while.end731_crit_edge ], [ %sub.ptr.sub728, %lor.end ]
  %225 = phi i8* [ %.pre2503, %while.cond643.preheader.while.end731_crit_edge ], [ %222, %lor.end ]
  %dec644.lcssa = phi i32 [ %dec6442387, %while.cond643.preheader.while.end731_crit_edge ], [ -1, %lor.end ]
  %beglist.addr.8.lcssa = phi %struct.sv** [ %beglist.addr.02448, %while.cond643.preheader.while.end731_crit_edge ], [ %beglist.addr.9, %lor.end ]
  %items.16.lcssa = phi i32 [ %items.02445, %while.cond643.preheader.while.end731_crit_edge ], [ %items.17, %lor.end ]
  %add.ptr736 = getelementptr inbounds i8* %225, i64 %224
  store i8 0, i8* %add.ptr736, align 1, !tbaa !1
  br label %sw.epilog1697

while.body742:                                    ; preds = %while.body742.lr.ph, %cond.end763
  %dec7392383 = phi i32 [ %dec7392379, %while.body742.lr.ph ], [ %dec739, %cond.end763 ]
  %beglist.addr.102382 = phi %struct.sv** [ %beglist.addr.02448, %while.body742.lr.ph ], [ %beglist.addr.11, %cond.end763 ]
  %items.182381 = phi i32 [ %items.02445, %while.body742.lr.ph ], [ %items.19, %cond.end763 ]
  br i1 %tobool743, label %cond.false745, label %cond.end754

cond.false745:                                    ; preds = %while.body742
  %dec746 = add nsw i32 %items.182381, -1
  %cmp747 = icmp sgt i32 %items.182381, 0
  br i1 %cmp747, label %cond.true749, label %cond.end754

cond.true749:                                     ; preds = %cond.false745
  %incdec.ptr750 = getelementptr inbounds %struct.sv** %beglist.addr.102382, i64 1
  %226 = load %struct.sv** %beglist.addr.102382, align 8, !tbaa !0
  br label %cond.end754

cond.end754:                                      ; preds = %while.body742, %cond.true749, %cond.false745
  %items.19 = phi i32 [ %dec746, %cond.true749 ], [ %dec746, %cond.false745 ], [ %items.182381, %while.body742 ]
  %beglist.addr.11 = phi %struct.sv** [ %incdec.ptr750, %cond.true749 ], [ %beglist.addr.102382, %cond.false745 ], [ %beglist.addr.102382, %while.body742 ]
  %cond755 = phi %struct.sv* [ %226, %cond.true749 ], [ @PL_sv_no, %cond.false745 ], [ %lengthcode.0, %while.body742 ]
  %sv_flags756 = getelementptr inbounds %struct.sv* %cond755, i64 0, i32 2
  %227 = load i32* %sv_flags756, align 4, !tbaa !3
  %and757 = and i32 %227, 131072
  %tobool758 = icmp eq i32 %and757, 0
  br i1 %tobool758, label %cond.false761, label %cond.true759

cond.true759:                                     ; preds = %cond.end754
  %sv_any760 = getelementptr inbounds %struct.sv* %cond755, i64 0, i32 0
  %228 = load i8** %sv_any760, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %228, i64 32
  %229 = bitcast i8* %xnv_nv to double*
  %230 = load double* %229, align 8, !tbaa !8
  br label %cond.end763

cond.false761:                                    ; preds = %cond.end754
  %call762 = call double @Perl_sv_2nv(%struct.sv* %cond755) #8
  br label %cond.end763

cond.end763:                                      ; preds = %cond.false761, %cond.true759
  %cond764 = phi double [ %230, %cond.true759 ], [ %call762, %cond.false761 ]
  %conv765 = fptrunc double %cond764 to float
  store float %conv765, float* %afloat, align 4, !tbaa !9
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %28, i64 4, i32 2) #8
  %dec739 = add nsw i32 %dec7392383, -1
  %cmp740 = icmp sgt i32 %dec7392383, 0
  br i1 %cmp740, label %while.body742, label %sw.epilog1697

while.body772:                                    ; preds = %while.body772.lr.ph, %cond.end794
  %dec7692374 = phi i32 [ %dec7692370, %while.body772.lr.ph ], [ %dec769, %cond.end794 ]
  %beglist.addr.122373 = phi %struct.sv** [ %beglist.addr.02448, %while.body772.lr.ph ], [ %beglist.addr.13, %cond.end794 ]
  %items.202372 = phi i32 [ %items.02445, %while.body772.lr.ph ], [ %items.21, %cond.end794 ]
  br i1 %tobool773, label %cond.false775, label %cond.end784

cond.false775:                                    ; preds = %while.body772
  %dec776 = add nsw i32 %items.202372, -1
  %cmp777 = icmp sgt i32 %items.202372, 0
  br i1 %cmp777, label %cond.true779, label %cond.end784

cond.true779:                                     ; preds = %cond.false775
  %incdec.ptr780 = getelementptr inbounds %struct.sv** %beglist.addr.122373, i64 1
  %231 = load %struct.sv** %beglist.addr.122373, align 8, !tbaa !0
  br label %cond.end784

cond.end784:                                      ; preds = %while.body772, %cond.true779, %cond.false775
  %items.21 = phi i32 [ %dec776, %cond.true779 ], [ %dec776, %cond.false775 ], [ %items.202372, %while.body772 ]
  %beglist.addr.13 = phi %struct.sv** [ %incdec.ptr780, %cond.true779 ], [ %beglist.addr.122373, %cond.false775 ], [ %beglist.addr.122373, %while.body772 ]
  %cond785 = phi %struct.sv* [ %231, %cond.true779 ], [ @PL_sv_no, %cond.false775 ], [ %lengthcode.0, %while.body772 ]
  %sv_flags786 = getelementptr inbounds %struct.sv* %cond785, i64 0, i32 2
  %232 = load i32* %sv_flags786, align 4, !tbaa !3
  %and787 = and i32 %232, 131072
  %tobool788 = icmp eq i32 %and787, 0
  br i1 %tobool788, label %cond.false792, label %cond.true789

cond.true789:                                     ; preds = %cond.end784
  %sv_any790 = getelementptr inbounds %struct.sv* %cond785, i64 0, i32 0
  %233 = load i8** %sv_any790, align 8, !tbaa !0
  %xnv_nv791 = getelementptr inbounds i8* %233, i64 32
  %234 = bitcast i8* %xnv_nv791 to double*
  %235 = load double* %234, align 8, !tbaa !8
  br label %cond.end794

cond.false792:                                    ; preds = %cond.end784
  %call793 = call double @Perl_sv_2nv(%struct.sv* %cond785) #8
  br label %cond.end794

cond.end794:                                      ; preds = %cond.false792, %cond.true789
  %cond795 = phi double [ %235, %cond.true789 ], [ %call793, %cond.false792 ]
  store double %cond795, double* %adouble, align 8, !tbaa !8
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %27, i64 8, i32 2) #8
  %dec769 = add nsw i32 %dec7692374, -1
  %cmp770 = icmp sgt i32 %dec7692374, 0
  br i1 %cmp770, label %while.body772, label %sw.epilog1697

sw.bb797:                                         ; preds = %if.end43
  store i64 0, i64* %10, align 8
  %dec7992361 = add nsw i32 %len.1, -1
  %cmp8002362 = icmp sgt i32 %len.1, 0
  br i1 %cmp8002362, label %while.body802.lr.ph, label %sw.epilog1697

while.body802.lr.ph:                              ; preds = %sw.bb797
  %tobool803 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body802

while.body802:                                    ; preds = %while.body802.lr.ph, %cond.end824
  %dec7992365 = phi i32 [ %dec7992361, %while.body802.lr.ph ], [ %dec799, %cond.end824 ]
  %beglist.addr.142364 = phi %struct.sv** [ %beglist.addr.02448, %while.body802.lr.ph ], [ %beglist.addr.15, %cond.end824 ]
  %items.222363 = phi i32 [ %items.02445, %while.body802.lr.ph ], [ %items.23, %cond.end824 ]
  br i1 %tobool803, label %cond.false805, label %cond.end814

cond.false805:                                    ; preds = %while.body802
  %dec806 = add nsw i32 %items.222363, -1
  %cmp807 = icmp sgt i32 %items.222363, 0
  br i1 %cmp807, label %cond.true809, label %cond.end814

cond.true809:                                     ; preds = %cond.false805
  %incdec.ptr810 = getelementptr inbounds %struct.sv** %beglist.addr.142364, i64 1
  %236 = load %struct.sv** %beglist.addr.142364, align 8, !tbaa !0
  br label %cond.end814

cond.end814:                                      ; preds = %while.body802, %cond.true809, %cond.false805
  %items.23 = phi i32 [ %dec806, %cond.true809 ], [ %dec806, %cond.false805 ], [ %items.222363, %while.body802 ]
  %beglist.addr.15 = phi %struct.sv** [ %incdec.ptr810, %cond.true809 ], [ %beglist.addr.142364, %cond.false805 ], [ %beglist.addr.142364, %while.body802 ]
  %cond815 = phi %struct.sv* [ %236, %cond.true809 ], [ @PL_sv_no, %cond.false805 ], [ %lengthcode.0, %while.body802 ]
  %sv_flags816 = getelementptr inbounds %struct.sv* %cond815, i64 0, i32 2
  %237 = load i32* %sv_flags816, align 4, !tbaa !3
  %and817 = and i32 %237, 131072
  %tobool818 = icmp eq i32 %and817, 0
  br i1 %tobool818, label %cond.false822, label %cond.true819

cond.true819:                                     ; preds = %cond.end814
  %sv_any820 = getelementptr inbounds %struct.sv* %cond815, i64 0, i32 0
  %238 = load i8** %sv_any820, align 8, !tbaa !0
  %xnv_nv821 = getelementptr inbounds i8* %238, i64 32
  %239 = bitcast i8* %xnv_nv821 to double*
  %240 = load double* %239, align 8, !tbaa !8
  br label %cond.end824

cond.false822:                                    ; preds = %cond.end814
  %call823 = call double @Perl_sv_2nv(%struct.sv* %cond815) #8
  br label %cond.end824

cond.end824:                                      ; preds = %cond.false822, %cond.true819
  %cond825 = phi double [ %240, %cond.true819 ], [ %call823, %cond.false822 ]
  store double %cond825, double* %anv, align 8, !tbaa !8
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %9, i64 8, i32 2) #8
  %dec799 = add nsw i32 %dec7992365, -1
  %cmp800 = icmp sgt i32 %dec7992365, 0
  br i1 %cmp800, label %while.body802, label %sw.epilog1697

while.body832:                                    ; preds = %while.body832.lr.ph, %cond.end854
  %dec8292356 = phi i32 [ %dec8292352, %while.body832.lr.ph ], [ %dec829, %cond.end854 ]
  %beglist.addr.162355 = phi %struct.sv** [ %beglist.addr.02448, %while.body832.lr.ph ], [ %beglist.addr.17, %cond.end854 ]
  %items.242354 = phi i32 [ %items.02445, %while.body832.lr.ph ], [ %items.25, %cond.end854 ]
  br i1 %tobool833, label %cond.false835, label %cond.end844

cond.false835:                                    ; preds = %while.body832
  %dec836 = add nsw i32 %items.242354, -1
  %cmp837 = icmp sgt i32 %items.242354, 0
  br i1 %cmp837, label %cond.true839, label %cond.end844

cond.true839:                                     ; preds = %cond.false835
  %incdec.ptr840 = getelementptr inbounds %struct.sv** %beglist.addr.162355, i64 1
  %241 = load %struct.sv** %beglist.addr.162355, align 8, !tbaa !0
  br label %cond.end844

cond.end844:                                      ; preds = %while.body832, %cond.true839, %cond.false835
  %items.25 = phi i32 [ %dec836, %cond.true839 ], [ %dec836, %cond.false835 ], [ %items.242354, %while.body832 ]
  %beglist.addr.17 = phi %struct.sv** [ %incdec.ptr840, %cond.true839 ], [ %beglist.addr.162355, %cond.false835 ], [ %beglist.addr.162355, %while.body832 ]
  %cond845 = phi %struct.sv* [ %241, %cond.true839 ], [ @PL_sv_no, %cond.false835 ], [ %lengthcode.0, %while.body832 ]
  %sv_flags846 = getelementptr inbounds %struct.sv* %cond845, i64 0, i32 2
  %242 = load i32* %sv_flags846, align 4, !tbaa !3
  %and847 = and i32 %242, 65536
  %tobool848 = icmp eq i32 %and847, 0
  br i1 %tobool848, label %cond.false852, label %cond.true849

cond.true849:                                     ; preds = %cond.end844
  %sv_any850 = getelementptr inbounds %struct.sv* %cond845, i64 0, i32 0
  %243 = load i8** %sv_any850, align 8, !tbaa !0
  %xiv_iv851 = getelementptr inbounds i8* %243, i64 24
  %244 = bitcast i8* %xiv_iv851 to i64*
  %245 = load i64* %244, align 8, !tbaa !4
  br label %cond.end854

cond.false852:                                    ; preds = %cond.end844
  %call853 = call i64 @Perl_sv_2iv(%struct.sv* %cond845) #8
  br label %cond.end854

cond.end854:                                      ; preds = %cond.false852, %cond.true849
  %cond855 = phi i64 [ %245, %cond.true849 ], [ %call853, %cond.false852 ]
  %conv856 = trunc i64 %cond855 to i16
  store i16 %conv856, i16* %ai16, align 2, !tbaa !10
  %246 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %conv856) #1, !srcloc !11
  store i16 %246, i16* %ai16, align 2, !tbaa !10
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %25, i64 2, i32 2) #8
  %dec829 = add nsw i32 %dec8292356, -1
  %cmp830 = icmp sgt i32 %dec8292356, 0
  br i1 %cmp830, label %while.body832, label %sw.epilog1697

while.body863:                                    ; preds = %while.body863.lr.ph, %cond.end885
  %dec8602347 = phi i32 [ %dec8602343, %while.body863.lr.ph ], [ %dec860, %cond.end885 ]
  %beglist.addr.182346 = phi %struct.sv** [ %beglist.addr.02448, %while.body863.lr.ph ], [ %beglist.addr.19, %cond.end885 ]
  %items.262345 = phi i32 [ %items.02445, %while.body863.lr.ph ], [ %items.27, %cond.end885 ]
  br i1 %tobool864, label %cond.false866, label %cond.end875

cond.false866:                                    ; preds = %while.body863
  %dec867 = add nsw i32 %items.262345, -1
  %cmp868 = icmp sgt i32 %items.262345, 0
  br i1 %cmp868, label %cond.true870, label %cond.end875

cond.true870:                                     ; preds = %cond.false866
  %incdec.ptr871 = getelementptr inbounds %struct.sv** %beglist.addr.182346, i64 1
  %247 = load %struct.sv** %beglist.addr.182346, align 8, !tbaa !0
  br label %cond.end875

cond.end875:                                      ; preds = %while.body863, %cond.true870, %cond.false866
  %items.27 = phi i32 [ %dec867, %cond.true870 ], [ %dec867, %cond.false866 ], [ %items.262345, %while.body863 ]
  %beglist.addr.19 = phi %struct.sv** [ %incdec.ptr871, %cond.true870 ], [ %beglist.addr.182346, %cond.false866 ], [ %beglist.addr.182346, %while.body863 ]
  %cond876 = phi %struct.sv* [ %247, %cond.true870 ], [ @PL_sv_no, %cond.false866 ], [ %lengthcode.0, %while.body863 ]
  %sv_flags877 = getelementptr inbounds %struct.sv* %cond876, i64 0, i32 2
  %248 = load i32* %sv_flags877, align 4, !tbaa !3
  %and878 = and i32 %248, 65536
  %tobool879 = icmp eq i32 %and878, 0
  br i1 %tobool879, label %cond.false883, label %cond.true880

cond.true880:                                     ; preds = %cond.end875
  %sv_any881 = getelementptr inbounds %struct.sv* %cond876, i64 0, i32 0
  %249 = load i8** %sv_any881, align 8, !tbaa !0
  %xiv_iv882 = getelementptr inbounds i8* %249, i64 24
  %250 = bitcast i8* %xiv_iv882 to i64*
  %251 = load i64* %250, align 8, !tbaa !4
  br label %cond.end885

cond.false883:                                    ; preds = %cond.end875
  %call884 = call i64 @Perl_sv_2iv(%struct.sv* %cond876) #8
  br label %cond.end885

cond.end885:                                      ; preds = %cond.false883, %cond.true880
  %cond886 = phi i64 [ %251, %cond.true880 ], [ %call884, %cond.false883 ]
  %conv887 = trunc i64 %cond886 to i16
  store i16 %conv887, i16* %ai16, align 2, !tbaa !10
  %call888 = call signext i16 @htovs(i16 signext %conv887) #8
  store i16 %call888, i16* %ai16, align 2, !tbaa !10
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %25, i64 2, i32 2) #8
  %dec860 = add nsw i32 %dec8602347, -1
  %cmp861 = icmp sgt i32 %dec8602347, 0
  br i1 %cmp861, label %while.body863, label %sw.epilog1697

while.body895:                                    ; preds = %while.body895.lr.ph, %cond.end917
  %dec8922338 = phi i32 [ %dec8922334, %while.body895.lr.ph ], [ %dec892, %cond.end917 ]
  %beglist.addr.202337 = phi %struct.sv** [ %beglist.addr.02448, %while.body895.lr.ph ], [ %beglist.addr.21, %cond.end917 ]
  %items.282336 = phi i32 [ %items.02445, %while.body895.lr.ph ], [ %items.29, %cond.end917 ]
  br i1 %tobool896, label %cond.false898, label %cond.end907

cond.false898:                                    ; preds = %while.body895
  %dec899 = add nsw i32 %items.282336, -1
  %cmp900 = icmp sgt i32 %items.282336, 0
  br i1 %cmp900, label %cond.true902, label %cond.end907

cond.true902:                                     ; preds = %cond.false898
  %incdec.ptr903 = getelementptr inbounds %struct.sv** %beglist.addr.202337, i64 1
  %252 = load %struct.sv** %beglist.addr.202337, align 8, !tbaa !0
  br label %cond.end907

cond.end907:                                      ; preds = %while.body895, %cond.true902, %cond.false898
  %items.29 = phi i32 [ %dec899, %cond.true902 ], [ %dec899, %cond.false898 ], [ %items.282336, %while.body895 ]
  %beglist.addr.21 = phi %struct.sv** [ %incdec.ptr903, %cond.true902 ], [ %beglist.addr.202337, %cond.false898 ], [ %beglist.addr.202337, %while.body895 ]
  %cond908 = phi %struct.sv* [ %252, %cond.true902 ], [ @PL_sv_no, %cond.false898 ], [ %lengthcode.0, %while.body895 ]
  %sv_flags909 = getelementptr inbounds %struct.sv* %cond908, i64 0, i32 2
  %253 = load i32* %sv_flags909, align 4, !tbaa !3
  %and910 = and i32 %253, 65536
  %tobool911 = icmp eq i32 %and910, 0
  br i1 %tobool911, label %cond.false915, label %cond.true912

cond.true912:                                     ; preds = %cond.end907
  %sv_any913 = getelementptr inbounds %struct.sv* %cond908, i64 0, i32 0
  %254 = load i8** %sv_any913, align 8, !tbaa !0
  %xuv_uv914 = getelementptr inbounds i8* %254, i64 24
  %255 = bitcast i8* %xuv_uv914 to i64*
  %256 = load i64* %255, align 8, !tbaa !4
  br label %cond.end917

cond.false915:                                    ; preds = %cond.end907
  %call916 = call i64 @Perl_sv_2uv(%struct.sv* %cond908) #8
  br label %cond.end917

cond.end917:                                      ; preds = %cond.false915, %cond.true912
  %cond918 = phi i64 [ %256, %cond.true912 ], [ %call916, %cond.false915 ]
  %conv919 = trunc i64 %cond918 to i16
  store i16 %conv919, i16* %au16, align 2, !tbaa !10
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %26, i64 2, i32 2) #8
  %dec892 = add nsw i32 %dec8922338, -1
  %cmp893 = icmp sgt i32 %dec8922338, 0
  br i1 %cmp893, label %while.body895, label %sw.epilog1697

while.body926:                                    ; preds = %while.body926.lr.ph, %cond.end948
  %dec9232329 = phi i32 [ %dec9232325, %while.body926.lr.ph ], [ %dec923, %cond.end948 ]
  %beglist.addr.222328 = phi %struct.sv** [ %beglist.addr.02448, %while.body926.lr.ph ], [ %beglist.addr.23, %cond.end948 ]
  %items.302327 = phi i32 [ %items.02445, %while.body926.lr.ph ], [ %items.31, %cond.end948 ]
  br i1 %tobool927, label %cond.false929, label %cond.end938

cond.false929:                                    ; preds = %while.body926
  %dec930 = add nsw i32 %items.302327, -1
  %cmp931 = icmp sgt i32 %items.302327, 0
  br i1 %cmp931, label %cond.true933, label %cond.end938

cond.true933:                                     ; preds = %cond.false929
  %incdec.ptr934 = getelementptr inbounds %struct.sv** %beglist.addr.222328, i64 1
  %257 = load %struct.sv** %beglist.addr.222328, align 8, !tbaa !0
  br label %cond.end938

cond.end938:                                      ; preds = %while.body926, %cond.true933, %cond.false929
  %items.31 = phi i32 [ %dec930, %cond.true933 ], [ %dec930, %cond.false929 ], [ %items.302327, %while.body926 ]
  %beglist.addr.23 = phi %struct.sv** [ %incdec.ptr934, %cond.true933 ], [ %beglist.addr.222328, %cond.false929 ], [ %beglist.addr.222328, %while.body926 ]
  %cond939 = phi %struct.sv* [ %257, %cond.true933 ], [ @PL_sv_no, %cond.false929 ], [ %lengthcode.0, %while.body926 ]
  %sv_flags940 = getelementptr inbounds %struct.sv* %cond939, i64 0, i32 2
  %258 = load i32* %sv_flags940, align 4, !tbaa !3
  %and941 = and i32 %258, 65536
  %tobool942 = icmp eq i32 %and941, 0
  br i1 %tobool942, label %cond.false946, label %cond.true943

cond.true943:                                     ; preds = %cond.end938
  %sv_any944 = getelementptr inbounds %struct.sv* %cond939, i64 0, i32 0
  %259 = load i8** %sv_any944, align 8, !tbaa !0
  %xiv_iv945 = getelementptr inbounds i8* %259, i64 24
  %260 = bitcast i8* %xiv_iv945 to i64*
  %261 = load i64* %260, align 8, !tbaa !4
  br label %cond.end948

cond.false946:                                    ; preds = %cond.end938
  %call947 = call i64 @Perl_sv_2iv(%struct.sv* %cond939) #8
  br label %cond.end948

cond.end948:                                      ; preds = %cond.false946, %cond.true943
  %cond949 = phi i64 [ %261, %cond.true943 ], [ %call947, %cond.false946 ]
  %conv950 = trunc i64 %cond949 to i16
  store i16 %conv950, i16* %ai16, align 2, !tbaa !10
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %25, i64 2, i32 2) #8
  %dec923 = add nsw i32 %dec9232329, -1
  %cmp924 = icmp sgt i32 %dec9232329, 0
  br i1 %cmp924, label %while.body926, label %sw.epilog1697

while.body957:                                    ; preds = %while.body957.lr.ph, %cond.end979
  %dec9542320 = phi i32 [ %dec9542316, %while.body957.lr.ph ], [ %dec954, %cond.end979 ]
  %beglist.addr.242319 = phi %struct.sv** [ %beglist.addr.02448, %while.body957.lr.ph ], [ %beglist.addr.25, %cond.end979 ]
  %items.322318 = phi i32 [ %items.02445, %while.body957.lr.ph ], [ %items.33, %cond.end979 ]
  br i1 %tobool958, label %cond.false960, label %cond.end969

cond.false960:                                    ; preds = %while.body957
  %dec961 = add nsw i32 %items.322318, -1
  %cmp962 = icmp sgt i32 %items.322318, 0
  br i1 %cmp962, label %cond.true964, label %cond.end969

cond.true964:                                     ; preds = %cond.false960
  %incdec.ptr965 = getelementptr inbounds %struct.sv** %beglist.addr.242319, i64 1
  %262 = load %struct.sv** %beglist.addr.242319, align 8, !tbaa !0
  br label %cond.end969

cond.end969:                                      ; preds = %while.body957, %cond.true964, %cond.false960
  %items.33 = phi i32 [ %dec961, %cond.true964 ], [ %dec961, %cond.false960 ], [ %items.322318, %while.body957 ]
  %beglist.addr.25 = phi %struct.sv** [ %incdec.ptr965, %cond.true964 ], [ %beglist.addr.242319, %cond.false960 ], [ %beglist.addr.242319, %while.body957 ]
  %cond970 = phi %struct.sv* [ %262, %cond.true964 ], [ @PL_sv_no, %cond.false960 ], [ %lengthcode.0, %while.body957 ]
  %sv_flags971 = getelementptr inbounds %struct.sv* %cond970, i64 0, i32 2
  %263 = load i32* %sv_flags971, align 4, !tbaa !3
  %and972 = and i32 %263, 65536
  %tobool973 = icmp eq i32 %and972, 0
  br i1 %tobool973, label %cond.false977, label %cond.true974

cond.true974:                                     ; preds = %cond.end969
  %sv_any975 = getelementptr inbounds %struct.sv* %cond970, i64 0, i32 0
  %264 = load i8** %sv_any975, align 8, !tbaa !0
  %xuv_uv976 = getelementptr inbounds i8* %264, i64 24
  %265 = bitcast i8* %xuv_uv976 to i64*
  %266 = load i64* %265, align 8, !tbaa !4
  br label %cond.end979

cond.false977:                                    ; preds = %cond.end969
  %call978 = call i64 @Perl_sv_2uv(%struct.sv* %cond970) #8
  br label %cond.end979

cond.end979:                                      ; preds = %cond.false977, %cond.true974
  %cond980 = phi i64 [ %266, %cond.true974 ], [ %call978, %cond.false977 ]
  %conv981 = trunc i64 %cond980 to i32
  store i32 %conv981, i32* %auint, align 4, !tbaa !3
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %24, i64 4, i32 2) #8
  %dec954 = add nsw i32 %dec9542320, -1
  %cmp955 = icmp sgt i32 %dec9542320, 0
  br i1 %cmp955, label %while.body957, label %sw.epilog1697

while.body988:                                    ; preds = %while.body988.lr.ph, %cond.end1010
  %dec9852311 = phi i32 [ %dec9852307, %while.body988.lr.ph ], [ %dec985, %cond.end1010 ]
  %beglist.addr.262310 = phi %struct.sv** [ %beglist.addr.02448, %while.body988.lr.ph ], [ %beglist.addr.27, %cond.end1010 ]
  %items.342309 = phi i32 [ %items.02445, %while.body988.lr.ph ], [ %items.35, %cond.end1010 ]
  br i1 %tobool989, label %cond.false991, label %cond.end1000

cond.false991:                                    ; preds = %while.body988
  %dec992 = add nsw i32 %items.342309, -1
  %cmp993 = icmp sgt i32 %items.342309, 0
  br i1 %cmp993, label %cond.true995, label %cond.end1000

cond.true995:                                     ; preds = %cond.false991
  %incdec.ptr996 = getelementptr inbounds %struct.sv** %beglist.addr.262310, i64 1
  %267 = load %struct.sv** %beglist.addr.262310, align 8, !tbaa !0
  br label %cond.end1000

cond.end1000:                                     ; preds = %while.body988, %cond.true995, %cond.false991
  %items.35 = phi i32 [ %dec992, %cond.true995 ], [ %dec992, %cond.false991 ], [ %items.342309, %while.body988 ]
  %beglist.addr.27 = phi %struct.sv** [ %incdec.ptr996, %cond.true995 ], [ %beglist.addr.262310, %cond.false991 ], [ %beglist.addr.262310, %while.body988 ]
  %cond1001 = phi %struct.sv* [ %267, %cond.true995 ], [ @PL_sv_no, %cond.false991 ], [ %lengthcode.0, %while.body988 ]
  %sv_flags1002 = getelementptr inbounds %struct.sv* %cond1001, i64 0, i32 2
  %268 = load i32* %sv_flags1002, align 4, !tbaa !3
  %and1003 = and i32 %268, 65536
  %tobool1004 = icmp eq i32 %and1003, 0
  br i1 %tobool1004, label %cond.false1008, label %cond.true1005

cond.true1005:                                    ; preds = %cond.end1000
  %sv_any1006 = getelementptr inbounds %struct.sv* %cond1001, i64 0, i32 0
  %269 = load i8** %sv_any1006, align 8, !tbaa !0
  %xiv_iv1007 = getelementptr inbounds i8* %269, i64 24
  %270 = bitcast i8* %xiv_iv1007 to i64*
  %271 = load i64* %270, align 8, !tbaa !4
  br label %cond.end1010

cond.false1008:                                   ; preds = %cond.end1000
  %call1009 = call i64 @Perl_sv_2iv(%struct.sv* %cond1001) #8
  br label %cond.end1010

cond.end1010:                                     ; preds = %cond.false1008, %cond.true1005
  %cond1011 = phi i64 [ %271, %cond.true1005 ], [ %call1009, %cond.false1008 ]
  store i64 %cond1011, i64* %aiv, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %23, i64 8, i32 2) #8
  %dec985 = add nsw i32 %dec9852311, -1
  %cmp986 = icmp sgt i32 %dec9852311, 0
  br i1 %cmp986, label %while.body988, label %sw.epilog1697

while.body1018:                                   ; preds = %while.body1018.lr.ph, %cond.end1040
  %dec10152302 = phi i32 [ %dec10152298, %while.body1018.lr.ph ], [ %dec1015, %cond.end1040 ]
  %beglist.addr.282301 = phi %struct.sv** [ %beglist.addr.02448, %while.body1018.lr.ph ], [ %beglist.addr.29, %cond.end1040 ]
  %items.362300 = phi i32 [ %items.02445, %while.body1018.lr.ph ], [ %items.37, %cond.end1040 ]
  br i1 %tobool1019, label %cond.false1021, label %cond.end1030

cond.false1021:                                   ; preds = %while.body1018
  %dec1022 = add nsw i32 %items.362300, -1
  %cmp1023 = icmp sgt i32 %items.362300, 0
  br i1 %cmp1023, label %cond.true1025, label %cond.end1030

cond.true1025:                                    ; preds = %cond.false1021
  %incdec.ptr1026 = getelementptr inbounds %struct.sv** %beglist.addr.282301, i64 1
  %272 = load %struct.sv** %beglist.addr.282301, align 8, !tbaa !0
  br label %cond.end1030

cond.end1030:                                     ; preds = %while.body1018, %cond.true1025, %cond.false1021
  %items.37 = phi i32 [ %dec1022, %cond.true1025 ], [ %dec1022, %cond.false1021 ], [ %items.362300, %while.body1018 ]
  %beglist.addr.29 = phi %struct.sv** [ %incdec.ptr1026, %cond.true1025 ], [ %beglist.addr.282301, %cond.false1021 ], [ %beglist.addr.282301, %while.body1018 ]
  %cond1031 = phi %struct.sv* [ %272, %cond.true1025 ], [ @PL_sv_no, %cond.false1021 ], [ %lengthcode.0, %while.body1018 ]
  %sv_flags1032 = getelementptr inbounds %struct.sv* %cond1031, i64 0, i32 2
  %273 = load i32* %sv_flags1032, align 4, !tbaa !3
  %and1033 = and i32 %273, 65536
  %tobool1034 = icmp eq i32 %and1033, 0
  br i1 %tobool1034, label %cond.false1038, label %cond.true1035

cond.true1035:                                    ; preds = %cond.end1030
  %sv_any1036 = getelementptr inbounds %struct.sv* %cond1031, i64 0, i32 0
  %274 = load i8** %sv_any1036, align 8, !tbaa !0
  %xuv_uv1037 = getelementptr inbounds i8* %274, i64 24
  %275 = bitcast i8* %xuv_uv1037 to i64*
  %276 = load i64* %275, align 8, !tbaa !4
  br label %cond.end1040

cond.false1038:                                   ; preds = %cond.end1030
  %call1039 = call i64 @Perl_sv_2uv(%struct.sv* %cond1031) #8
  br label %cond.end1040

cond.end1040:                                     ; preds = %cond.false1038, %cond.true1035
  %cond1041 = phi i64 [ %276, %cond.true1035 ], [ %call1039, %cond.false1038 ]
  store i64 %cond1041, i64* %auv, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %22, i64 8, i32 2) #8
  %dec1015 = add nsw i32 %dec10152302, -1
  %cmp1016 = icmp sgt i32 %dec10152302, 0
  br i1 %cmp1016, label %while.body1018, label %sw.epilog1697

while.body1048:                                   ; preds = %while.body1048.lr.ph, %while.cond1044.backedge
  %dec10452293 = phi i32 [ %dec10452289, %while.body1048.lr.ph ], [ %dec1045, %while.cond1044.backedge ]
  %beglist.addr.302292 = phi %struct.sv** [ %beglist.addr.02448, %while.body1048.lr.ph ], [ %beglist.addr.31, %while.cond1044.backedge ]
  %items.382291 = phi i32 [ %items.02445, %while.body1048.lr.ph ], [ %items.39, %while.cond1044.backedge ]
  br i1 %tobool1049, label %cond.false1051, label %cond.end1060

cond.false1051:                                   ; preds = %while.body1048
  %dec1052 = add nsw i32 %items.382291, -1
  %cmp1053 = icmp sgt i32 %items.382291, 0
  br i1 %cmp1053, label %cond.true1055, label %cond.end1060

cond.true1055:                                    ; preds = %cond.false1051
  %incdec.ptr1056 = getelementptr inbounds %struct.sv** %beglist.addr.302292, i64 1
  %277 = load %struct.sv** %beglist.addr.302292, align 8, !tbaa !0
  br label %cond.end1060

cond.end1060:                                     ; preds = %while.body1048, %cond.true1055, %cond.false1051
  %items.39 = phi i32 [ %dec1052, %cond.true1055 ], [ %dec1052, %cond.false1051 ], [ %items.382291, %while.body1048 ]
  %beglist.addr.31 = phi %struct.sv** [ %incdec.ptr1056, %cond.true1055 ], [ %beglist.addr.302292, %cond.false1051 ], [ %beglist.addr.302292, %while.body1048 ]
  %cond1061 = phi %struct.sv* [ %277, %cond.true1055 ], [ @PL_sv_no, %cond.false1051 ], [ %lengthcode.0, %while.body1048 ]
  %sv_flags1062 = getelementptr inbounds %struct.sv* %cond1061, i64 0, i32 2
  %278 = load i32* %sv_flags1062, align 4, !tbaa !3
  %and1063 = and i32 %278, 131072
  %tobool1064 = icmp eq i32 %and1063, 0
  br i1 %tobool1064, label %cond.false1068, label %cond.true1065

cond.true1065:                                    ; preds = %cond.end1060
  %sv_any1066 = getelementptr inbounds %struct.sv* %cond1061, i64 0, i32 0
  %279 = load i8** %sv_any1066, align 8, !tbaa !0
  %xnv_nv1067 = getelementptr inbounds i8* %279, i64 32
  %280 = bitcast i8* %xnv_nv1067 to double*
  %281 = load double* %280, align 8, !tbaa !8
  br label %cond.end1070

cond.false1068:                                   ; preds = %cond.end1060
  %call1069 = call double @Perl_sv_2nv(%struct.sv* %cond1061) #8
  br label %cond.end1070

cond.end1070:                                     ; preds = %cond.false1068, %cond.true1065
  %cond1071 = phi double [ %281, %cond.true1065 ], [ %call1069, %cond.false1068 ]
  store double %cond1071, double* %anv, align 8, !tbaa !8
  %cmp1072 = fcmp olt double %cond1071, 0.000000e+00
  br i1 %cmp1072, label %if.then1074, label %if.end1075

if.then1074:                                      ; preds = %cond.end1070
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0)) #8
  br label %if.end1075

if.end1075:                                       ; preds = %cond.end1070, %if.then1074
  %282 = load i32* %sv_flags1062, align 4, !tbaa !3
  %and1077 = and i32 %282, 65536
  %tobool1078 = icmp eq i32 %and1077, 0
  br i1 %tobool1078, label %lor.lhs.false1079, label %cond.true1088

lor.lhs.false1079:                                ; preds = %if.end1075
  %283 = load double* %anv, align 8, !tbaa !8
  %cmp1080 = fcmp olt double %283, 0x43F0000000000000
  br i1 %cmp1080, label %cond.false1091, label %if.else1110

cond.true1088:                                    ; preds = %if.end1075
  %sv_any1089 = getelementptr inbounds %struct.sv* %cond1061, i64 0, i32 0
  %284 = load i8** %sv_any1089, align 8, !tbaa !0
  %xuv_uv1090 = getelementptr inbounds i8* %284, i64 24
  %285 = bitcast i8* %xuv_uv1090 to i64*
  %286 = load i64* %285, align 8, !tbaa !4
  br label %do.body

cond.false1091:                                   ; preds = %lor.lhs.false1079
  %call1092 = call i64 @Perl_sv_2uv(%struct.sv* %cond1061) #8
  br label %do.body

do.body:                                          ; preds = %cond.true1088, %cond.false1091, %do.body
  %in.0 = phi i8* [ %incdec.ptr1098, %do.body ], [ %add.ptr1083, %cond.false1091 ], [ %add.ptr1083, %cond.true1088 ]
  %auv1084.0 = phi i64 [ %shr1099, %do.body ], [ %call1092, %cond.false1091 ], [ %286, %cond.true1088 ]
  %or1096 = or i64 %auv1084.0, 128
  %conv1097 = trunc i64 %or1096 to i8
  %incdec.ptr1098 = getelementptr inbounds i8* %in.0, i64 -1
  store i8 %conv1097, i8* %incdec.ptr1098, align 1, !tbaa !1
  %shr1099 = lshr i64 %auv1084.0, 7
  %tobool1100 = icmp eq i64 %shr1099, 0
  br i1 %tobool1100, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %287 = load i8* %arrayidx1101, align 1, !tbaa !1
  %and1103 = and i8 %287, 127
  store i8 %and1103, i8* %arrayidx1101, align 1, !tbaa !1
  %sub.ptr.rhs.cast1108 = ptrtoint i8* %incdec.ptr1098 to i64
  %sub.ptr.sub1109 = sub i64 %sub.ptr.lhs.cast1107, %sub.ptr.rhs.cast1108
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %incdec.ptr1098, i64 %sub.ptr.sub1109, i32 2) #8
  br label %while.cond1044.backedge

if.else1110:                                      ; preds = %lor.lhs.false1079
  %and1112 = and i32 %282, 67108864
  %tobool1113 = icmp eq i32 %and1112, 0
  br i1 %tobool1113, label %if.else1154, label %if.then1114

if.then1114:                                      ; preds = %if.else1110
  %and1118 = and i32 %282, 262144
  %cmp1119 = icmp eq i32 %and1118, 0
  br i1 %cmp1119, label %cond.false1126, label %cond.true1121

cond.true1121:                                    ; preds = %if.then1114
  %sv_any1122 = getelementptr inbounds %struct.sv* %cond1061, i64 0, i32 0
  %288 = load i8** %sv_any1122, align 8, !tbaa !0
  %xpv_cur1123 = getelementptr inbounds i8* %288, i64 8
  %289 = bitcast i8* %xpv_cur1123 to i64*
  %290 = load i64* %289, align 8, !tbaa !4
  store i64 %290, i64* %len1116, align 8, !tbaa !4
  %xpv_pv1125 = bitcast i8* %288 to i8**
  %291 = load i8** %xpv_pv1125, align 8, !tbaa !0
  br label %cond.end1128

cond.false1126:                                   ; preds = %if.then1114
  %call1127 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond1061, i64* %len1116, i32 2) #8
  %.pre2493 = load i64* %len1116, align 8, !tbaa !4
  br label %cond.end1128

cond.end1128:                                     ; preds = %cond.false1126, %cond.true1121
  %292 = phi i64 [ %290, %cond.true1121 ], [ %.pre2493, %cond.false1126 ]
  %cond1129 = phi i8* [ %291, %cond.true1121 ], [ %call1127, %cond.false1126 ]
  %call1130 = call fastcc %struct.sv* @S_is_an_int(i8* %cond1129, i64 %292) #7
  %cmp1131 = icmp eq %struct.sv* %call1130, null
  br i1 %cmp1131, label %if.then1133, label %if.end1134

if.then1133:                                      ; preds = %cond.end1128
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str12, i64 0, i64 0)) #8
  br label %if.end1134

if.end1134:                                       ; preds = %if.then1133, %cond.end1128
  %293 = load i64* %len1116, align 8, !tbaa !4
  %call1135 = call i8* @Perl_safesysmalloc(i64 %293) #8
  %294 = load i64* %len1116, align 8, !tbaa !4
  %add.ptr1136 = getelementptr inbounds i8* %call1135, i64 %294
  store i8 0, i8* %done, align 1, !tbaa !1
  br label %while.body1139

while.body1139:                                   ; preds = %if.end1134, %while.body1139
  %in1115.02286 = phi i8* [ %add.ptr1136, %if.end1134 ], [ %incdec.ptr1143, %while.body1139 ]
  %call1140 = call fastcc i32 @S_div128(%struct.sv* %call1130, i8* %done) #7
  %or1141 = or i32 %call1140, 128
  %conv1142 = trunc i32 %or1141 to i8
  %incdec.ptr1143 = getelementptr inbounds i8* %in1115.02286, i64 -1
  store i8 %conv1142, i8* %incdec.ptr1143, align 1, !tbaa !1
  %.pr = load i8* %done, align 1, !tbaa !1
  %phitmp = icmp eq i8 %.pr, 0
  br i1 %phitmp, label %while.body1139, label %while.end1144

while.end1144:                                    ; preds = %while.body1139
  %295 = load i64* %len1116, align 8, !tbaa !4
  %sub1145 = add i64 %295, -1
  %arrayidx1146 = getelementptr inbounds i8* %call1135, i64 %sub1145
  %296 = load i8* %arrayidx1146, align 1, !tbaa !1
  %and1148 = and i8 %296, 127
  store i8 %and1148, i8* %arrayidx1146, align 1, !tbaa !1
  %297 = load i64* %len1116, align 8, !tbaa !4
  %add.ptr1150 = getelementptr inbounds i8* %call1135, i64 %297
  %sub.ptr.lhs.cast1151 = ptrtoint i8* %add.ptr1150 to i64
  %sub.ptr.rhs.cast1152 = ptrtoint i8* %incdec.ptr1143 to i64
  %sub.ptr.sub1153 = sub i64 %sub.ptr.lhs.cast1151, %sub.ptr.rhs.cast1152
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %incdec.ptr1143, i64 %sub.ptr.sub1153, i32 2) #8
  call void @Perl_safesysfree(i8* %call1135) #8
  call void @Perl_sv_free(%struct.sv* %call1130) #8
  br label %while.cond1044.backedge

while.cond1044.backedge:                          ; preds = %while.end1144, %while.end1228, %do.end1182, %do.end
  %dec1045 = add nsw i32 %dec10452293, -1
  %cmp1046 = icmp sgt i32 %dec10452293, 0
  br i1 %cmp1046, label %while.body1048, label %sw.epilog1697

if.else1154:                                      ; preds = %if.else1110
  %and1156 = and i32 %282, 33554432
  %tobool1157 = icmp eq i32 %and1156, 0
  br i1 %tobool1157, label %if.else1192, label %if.then1158

if.then1158:                                      ; preds = %if.else1154
  call void @llvm.lifetime.start(i64 155, i8* %21) #1
  %call1163 = call double @floor(double %283) #9
  store double %call1163, double* %anv, align 8, !tbaa !8
  br label %do.body1164

do.body1164:                                      ; preds = %if.end1171, %if.then1158
  %298 = phi double [ %call1163, %if.then1158 ], [ %call1166, %if.end1171 ]
  %in1160.0 = phi i8* [ %add.ptr1162, %if.then1158 ], [ %incdec.ptr1178, %if.end1171 ]
  %div1165 = fmul double %298, 7.812500e-03
  %call1166 = call double @floor(double %div1165) #9
  %cmp1168 = icmp ugt i8* %in1160.0, %21
  br i1 %cmp1168, label %if.end1171, label %if.then1170

if.then1170:                                      ; preds = %do.body1164
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0)) #8
  %.pre2492 = load double* %anv, align 8, !tbaa !8
  br label %if.end1171

if.end1171:                                       ; preds = %do.body1164, %if.then1170
  %299 = phi double [ %298, %do.body1164 ], [ %.pre2492, %if.then1170 ]
  %mul1172 = fmul double %call1166, 1.280000e+02
  %sub1173 = fsub double %299, %mul1172
  %conv1174 = fptoui double %sub1173 to i8
  %or1176 = or i8 %conv1174, -128
  %incdec.ptr1178 = getelementptr inbounds i8* %in1160.0, i64 -1
  store i8 %or1176, i8* %incdec.ptr1178, align 1, !tbaa !1
  store double %call1166, double* %anv, align 8, !tbaa !8
  %cmp1180 = fcmp ogt double %call1166, 0.000000e+00
  br i1 %cmp1180, label %do.body1164, label %do.end1182

do.end1182:                                       ; preds = %if.end1171
  %300 = load i8* %arrayidx1183, align 2, !tbaa !1
  %and1185 = and i8 %300, 127
  store i8 %and1185, i8* %arrayidx1183, align 2, !tbaa !1
  %sub.ptr.rhs.cast1190 = ptrtoint i8* %incdec.ptr1178 to i64
  %sub.ptr.sub1191 = sub i64 %sub.ptr.lhs.cast1189, %sub.ptr.rhs.cast1190
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %incdec.ptr1178, i64 %sub.ptr.sub1191, i32 2) #8
  call void @llvm.lifetime.end(i64 155, i8* %21) #1
  br label %while.cond1044.backedge

if.else1192:                                      ; preds = %if.else1154
  %and1200 = and i32 %282, 262144
  %cmp1201 = icmp eq i32 %and1200, 0
  br i1 %cmp1201, label %cond.false1208, label %cond.true1203

cond.true1203:                                    ; preds = %if.else1192
  %sv_any1204 = getelementptr inbounds %struct.sv* %cond1061, i64 0, i32 0
  %301 = load i8** %sv_any1204, align 8, !tbaa !0
  %xpv_cur1205 = getelementptr inbounds i8* %301, i64 8
  %302 = bitcast i8* %xpv_cur1205 to i64*
  %303 = load i64* %302, align 8, !tbaa !4
  store i64 %303, i64* %len1197, align 8, !tbaa !4
  %xpv_pv1207 = bitcast i8* %301 to i8**
  %304 = load i8** %xpv_pv1207, align 8, !tbaa !0
  br label %cond.end1210

cond.false1208:                                   ; preds = %if.else1192
  %call1209 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond1061, i64* %len1197, i32 2) #8
  %.pre2491 = load i64* %len1197, align 8, !tbaa !4
  br label %cond.end1210

cond.end1210:                                     ; preds = %cond.false1208, %cond.true1203
  %305 = phi i64 [ %303, %cond.true1203 ], [ %.pre2491, %cond.false1208 ]
  %cond1211 = phi i8* [ %304, %cond.true1203 ], [ %call1209, %cond.false1208 ]
  %call1212 = call fastcc %struct.sv* @S_is_an_int(i8* %cond1211, i64 %305) #7
  %cmp1213 = icmp eq %struct.sv* %call1212, null
  br i1 %cmp1213, label %if.then1215, label %if.end1216

if.then1215:                                      ; preds = %cond.end1210
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str12, i64 0, i64 0)) #8
  br label %if.end1216

if.end1216:                                       ; preds = %if.then1215, %cond.end1210
  %306 = load i64* %len1197, align 8, !tbaa !4
  %call1218 = call i8* @Perl_safesysmalloc(i64 %306) #8
  %307 = load i64* %len1197, align 8, !tbaa !4
  %add.ptr1219 = getelementptr inbounds i8* %call1218, i64 %307
  store i8 0, i8* %done1198, align 1, !tbaa !1
  br label %while.body1223

while.body1223:                                   ; preds = %if.end1216, %while.body1223
  %in1195.02287 = phi i8* [ %add.ptr1219, %if.end1216 ], [ %incdec.ptr1227, %while.body1223 ]
  %call1224 = call fastcc i32 @S_div128(%struct.sv* %call1212, i8* %done1198) #7
  %or1225 = or i32 %call1224, 128
  %conv1226 = trunc i32 %or1225 to i8
  %incdec.ptr1227 = getelementptr inbounds i8* %in1195.02287, i64 -1
  store i8 %conv1226, i8* %incdec.ptr1227, align 1, !tbaa !1
  %.pr2184 = load i8* %done1198, align 1, !tbaa !1
  %phitmp2186 = icmp eq i8 %.pr2184, 0
  br i1 %phitmp2186, label %while.body1223, label %while.end1228

while.end1228:                                    ; preds = %while.body1223
  %308 = load i64* %len1197, align 8, !tbaa !4
  %sub1229 = add i64 %308, -1
  %arrayidx1230 = getelementptr inbounds i8* %call1218, i64 %sub1229
  %309 = load i8* %arrayidx1230, align 1, !tbaa !1
  %and1232 = and i8 %309, 127
  store i8 %and1232, i8* %arrayidx1230, align 1, !tbaa !1
  %310 = load i64* %len1197, align 8, !tbaa !4
  %add.ptr1234 = getelementptr inbounds i8* %call1218, i64 %310
  %sub.ptr.lhs.cast1235 = ptrtoint i8* %add.ptr1234 to i64
  %sub.ptr.rhs.cast1236 = ptrtoint i8* %incdec.ptr1227 to i64
  %sub.ptr.sub1237 = sub i64 %sub.ptr.lhs.cast1235, %sub.ptr.rhs.cast1236
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %incdec.ptr1227, i64 %sub.ptr.sub1237, i32 2) #8
  call void @Perl_safesysfree(i8* %call1218) #8
  call void @Perl_sv_free(%struct.sv* %call1212) #8
  br label %while.cond1044.backedge

while.body1247:                                   ; preds = %while.body1247.lr.ph, %cond.end1269
  %dec12442282 = phi i32 [ %dec12442278, %while.body1247.lr.ph ], [ %dec1244, %cond.end1269 ]
  %beglist.addr.322281 = phi %struct.sv** [ %beglist.addr.02448, %while.body1247.lr.ph ], [ %beglist.addr.33, %cond.end1269 ]
  %items.402280 = phi i32 [ %items.02445, %while.body1247.lr.ph ], [ %items.41, %cond.end1269 ]
  br i1 %tobool1248, label %cond.false1250, label %cond.end1259

cond.false1250:                                   ; preds = %while.body1247
  %dec1251 = add nsw i32 %items.402280, -1
  %cmp1252 = icmp sgt i32 %items.402280, 0
  br i1 %cmp1252, label %cond.true1254, label %cond.end1259

cond.true1254:                                    ; preds = %cond.false1250
  %incdec.ptr1255 = getelementptr inbounds %struct.sv** %beglist.addr.322281, i64 1
  %311 = load %struct.sv** %beglist.addr.322281, align 8, !tbaa !0
  br label %cond.end1259

cond.end1259:                                     ; preds = %while.body1247, %cond.true1254, %cond.false1250
  %items.41 = phi i32 [ %dec1251, %cond.true1254 ], [ %dec1251, %cond.false1250 ], [ %items.402280, %while.body1247 ]
  %beglist.addr.33 = phi %struct.sv** [ %incdec.ptr1255, %cond.true1254 ], [ %beglist.addr.322281, %cond.false1250 ], [ %beglist.addr.322281, %while.body1247 ]
  %cond1260 = phi %struct.sv* [ %311, %cond.true1254 ], [ @PL_sv_no, %cond.false1250 ], [ %lengthcode.0, %while.body1247 ]
  %sv_flags1261 = getelementptr inbounds %struct.sv* %cond1260, i64 0, i32 2
  %312 = load i32* %sv_flags1261, align 4, !tbaa !3
  %and1262 = and i32 %312, 65536
  %tobool1263 = icmp eq i32 %and1262, 0
  br i1 %tobool1263, label %cond.false1267, label %cond.true1264

cond.true1264:                                    ; preds = %cond.end1259
  %sv_any1265 = getelementptr inbounds %struct.sv* %cond1260, i64 0, i32 0
  %313 = load i8** %sv_any1265, align 8, !tbaa !0
  %xiv_iv1266 = getelementptr inbounds i8* %313, i64 24
  %314 = bitcast i8* %xiv_iv1266 to i64*
  %315 = load i64* %314, align 8, !tbaa !4
  br label %cond.end1269

cond.false1267:                                   ; preds = %cond.end1259
  %call1268 = call i64 @Perl_sv_2iv(%struct.sv* %cond1260) #8
  br label %cond.end1269

cond.end1269:                                     ; preds = %cond.false1267, %cond.true1264
  %cond1270 = phi i64 [ %315, %cond.true1264 ], [ %call1268, %cond.false1267 ]
  %conv1271 = trunc i64 %cond1270 to i32
  store i32 %conv1271, i32* %aint, align 4, !tbaa !3
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %20, i64 4, i32 2) #8
  %dec1244 = add nsw i32 %dec12442282, -1
  %cmp1245 = icmp sgt i32 %dec12442282, 0
  br i1 %cmp1245, label %while.body1247, label %sw.epilog1697

while.body1278:                                   ; preds = %while.body1278.lr.ph, %cond.end1300
  %dec12752273 = phi i32 [ %dec12752269, %while.body1278.lr.ph ], [ %dec1275, %cond.end1300 ]
  %beglist.addr.342272 = phi %struct.sv** [ %beglist.addr.02448, %while.body1278.lr.ph ], [ %beglist.addr.35, %cond.end1300 ]
  %items.422271 = phi i32 [ %items.02445, %while.body1278.lr.ph ], [ %items.43, %cond.end1300 ]
  br i1 %tobool1279, label %cond.false1281, label %cond.end1290

cond.false1281:                                   ; preds = %while.body1278
  %dec1282 = add nsw i32 %items.422271, -1
  %cmp1283 = icmp sgt i32 %items.422271, 0
  br i1 %cmp1283, label %cond.true1285, label %cond.end1290

cond.true1285:                                    ; preds = %cond.false1281
  %incdec.ptr1286 = getelementptr inbounds %struct.sv** %beglist.addr.342272, i64 1
  %316 = load %struct.sv** %beglist.addr.342272, align 8, !tbaa !0
  br label %cond.end1290

cond.end1290:                                     ; preds = %while.body1278, %cond.true1285, %cond.false1281
  %items.43 = phi i32 [ %dec1282, %cond.true1285 ], [ %dec1282, %cond.false1281 ], [ %items.422271, %while.body1278 ]
  %beglist.addr.35 = phi %struct.sv** [ %incdec.ptr1286, %cond.true1285 ], [ %beglist.addr.342272, %cond.false1281 ], [ %beglist.addr.342272, %while.body1278 ]
  %cond1291 = phi %struct.sv* [ %316, %cond.true1285 ], [ @PL_sv_no, %cond.false1281 ], [ %lengthcode.0, %while.body1278 ]
  %sv_flags1292 = getelementptr inbounds %struct.sv* %cond1291, i64 0, i32 2
  %317 = load i32* %sv_flags1292, align 4, !tbaa !3
  %and1293 = and i32 %317, 65536
  %tobool1294 = icmp eq i32 %and1293, 0
  br i1 %tobool1294, label %cond.false1298, label %cond.true1295

cond.true1295:                                    ; preds = %cond.end1290
  %sv_any1296 = getelementptr inbounds %struct.sv* %cond1291, i64 0, i32 0
  %318 = load i8** %sv_any1296, align 8, !tbaa !0
  %xuv_uv1297 = getelementptr inbounds i8* %318, i64 24
  %319 = bitcast i8* %xuv_uv1297 to i64*
  %320 = load i64* %319, align 8, !tbaa !4
  br label %cond.end1300

cond.false1298:                                   ; preds = %cond.end1290
  %call1299 = call i64 @Perl_sv_2uv(%struct.sv* %cond1291) #8
  br label %cond.end1300

cond.end1300:                                     ; preds = %cond.false1298, %cond.true1295
  %cond1301 = phi i64 [ %320, %cond.true1295 ], [ %call1299, %cond.false1298 ]
  %conv1302 = trunc i64 %cond1301 to i32
  store i32 %conv1302, i32* %au32, align 4, !tbaa !3
  %321 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv1302) #1, !srcloc !12
  store i32 %321, i32* %au32, align 4, !tbaa !3
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %18, i64 4, i32 2) #8
  %dec1275 = add nsw i32 %dec12752273, -1
  %cmp1276 = icmp sgt i32 %dec12752273, 0
  br i1 %cmp1276, label %while.body1278, label %sw.epilog1697

while.body1311:                                   ; preds = %while.body1311.lr.ph, %cond.end1333
  %dec13082264 = phi i32 [ %dec13082260, %while.body1311.lr.ph ], [ %dec1308, %cond.end1333 ]
  %beglist.addr.362263 = phi %struct.sv** [ %beglist.addr.02448, %while.body1311.lr.ph ], [ %beglist.addr.37, %cond.end1333 ]
  %items.442262 = phi i32 [ %items.02445, %while.body1311.lr.ph ], [ %items.45, %cond.end1333 ]
  br i1 %tobool1312, label %cond.false1314, label %cond.end1323

cond.false1314:                                   ; preds = %while.body1311
  %dec1315 = add nsw i32 %items.442262, -1
  %cmp1316 = icmp sgt i32 %items.442262, 0
  br i1 %cmp1316, label %cond.true1318, label %cond.end1323

cond.true1318:                                    ; preds = %cond.false1314
  %incdec.ptr1319 = getelementptr inbounds %struct.sv** %beglist.addr.362263, i64 1
  %322 = load %struct.sv** %beglist.addr.362263, align 8, !tbaa !0
  br label %cond.end1323

cond.end1323:                                     ; preds = %while.body1311, %cond.true1318, %cond.false1314
  %items.45 = phi i32 [ %dec1315, %cond.true1318 ], [ %dec1315, %cond.false1314 ], [ %items.442262, %while.body1311 ]
  %beglist.addr.37 = phi %struct.sv** [ %incdec.ptr1319, %cond.true1318 ], [ %beglist.addr.362263, %cond.false1314 ], [ %beglist.addr.362263, %while.body1311 ]
  %cond1324 = phi %struct.sv* [ %322, %cond.true1318 ], [ @PL_sv_no, %cond.false1314 ], [ %lengthcode.0, %while.body1311 ]
  %sv_flags1325 = getelementptr inbounds %struct.sv* %cond1324, i64 0, i32 2
  %323 = load i32* %sv_flags1325, align 4, !tbaa !3
  %and1326 = and i32 %323, 65536
  %tobool1327 = icmp eq i32 %and1326, 0
  br i1 %tobool1327, label %cond.false1331, label %cond.true1328

cond.true1328:                                    ; preds = %cond.end1323
  %sv_any1329 = getelementptr inbounds %struct.sv* %cond1324, i64 0, i32 0
  %324 = load i8** %sv_any1329, align 8, !tbaa !0
  %xuv_uv1330 = getelementptr inbounds i8* %324, i64 24
  %325 = bitcast i8* %xuv_uv1330 to i64*
  %326 = load i64* %325, align 8, !tbaa !4
  br label %cond.end1333

cond.false1331:                                   ; preds = %cond.end1323
  %call1332 = call i64 @Perl_sv_2uv(%struct.sv* %cond1324) #8
  br label %cond.end1333

cond.end1333:                                     ; preds = %cond.false1331, %cond.true1328
  %cond1334 = phi i64 [ %326, %cond.true1328 ], [ %call1332, %cond.false1331 ]
  %conv1335 = trunc i64 %cond1334 to i32
  store i32 %conv1335, i32* %au32, align 4, !tbaa !3
  %conv1336 = and i64 %cond1334, 4294967295
  %call1337 = call i64 @htovl(i64 %conv1336) #8
  %conv1338 = trunc i64 %call1337 to i32
  store i32 %conv1338, i32* %au32, align 4, !tbaa !3
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %18, i64 4, i32 2) #8
  %dec1308 = add nsw i32 %dec13082264, -1
  %cmp1309 = icmp sgt i32 %dec13082264, 0
  br i1 %cmp1309, label %while.body1311, label %sw.epilog1697

while.body1345:                                   ; preds = %while.body1345.lr.ph, %cond.end1367
  %dec13422255 = phi i32 [ %dec13422251, %while.body1345.lr.ph ], [ %dec1342, %cond.end1367 ]
  %beglist.addr.382254 = phi %struct.sv** [ %beglist.addr.02448, %while.body1345.lr.ph ], [ %beglist.addr.39, %cond.end1367 ]
  %items.462253 = phi i32 [ %items.02445, %while.body1345.lr.ph ], [ %items.47, %cond.end1367 ]
  br i1 %tobool1346, label %cond.false1348, label %cond.end1357

cond.false1348:                                   ; preds = %while.body1345
  %dec1349 = add nsw i32 %items.462253, -1
  %cmp1350 = icmp sgt i32 %items.462253, 0
  br i1 %cmp1350, label %cond.true1352, label %cond.end1357

cond.true1352:                                    ; preds = %cond.false1348
  %incdec.ptr1353 = getelementptr inbounds %struct.sv** %beglist.addr.382254, i64 1
  %327 = load %struct.sv** %beglist.addr.382254, align 8, !tbaa !0
  br label %cond.end1357

cond.end1357:                                     ; preds = %while.body1345, %cond.true1352, %cond.false1348
  %items.47 = phi i32 [ %dec1349, %cond.true1352 ], [ %dec1349, %cond.false1348 ], [ %items.462253, %while.body1345 ]
  %beglist.addr.39 = phi %struct.sv** [ %incdec.ptr1353, %cond.true1352 ], [ %beglist.addr.382254, %cond.false1348 ], [ %beglist.addr.382254, %while.body1345 ]
  %cond1358 = phi %struct.sv* [ %327, %cond.true1352 ], [ @PL_sv_no, %cond.false1348 ], [ %lengthcode.0, %while.body1345 ]
  %sv_flags1359 = getelementptr inbounds %struct.sv* %cond1358, i64 0, i32 2
  %328 = load i32* %sv_flags1359, align 4, !tbaa !3
  %and1360 = and i32 %328, 65536
  %tobool1361 = icmp eq i32 %and1360, 0
  br i1 %tobool1361, label %cond.false1365, label %cond.true1362

cond.true1362:                                    ; preds = %cond.end1357
  %sv_any1363 = getelementptr inbounds %struct.sv* %cond1358, i64 0, i32 0
  %329 = load i8** %sv_any1363, align 8, !tbaa !0
  %xuv_uv1364 = getelementptr inbounds i8* %329, i64 24
  %330 = bitcast i8* %xuv_uv1364 to i64*
  %331 = load i64* %330, align 8, !tbaa !4
  br label %cond.end1367

cond.false1365:                                   ; preds = %cond.end1357
  %call1366 = call i64 @Perl_sv_2uv(%struct.sv* %cond1358) #8
  br label %cond.end1367

cond.end1367:                                     ; preds = %cond.false1365, %cond.true1362
  %cond1368 = phi i64 [ %331, %cond.true1362 ], [ %call1366, %cond.false1365 ]
  store i64 %cond1368, i64* %aulong, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %19, i64 8, i32 2) #8
  %dec1342 = add nsw i32 %dec13422255, -1
  %cmp1343 = icmp sgt i32 %dec13422255, 0
  br i1 %cmp1343, label %while.body1345, label %sw.epilog1697

while.body1375:                                   ; preds = %while.body1375.lr.ph, %cond.end1397
  %dec13722246 = phi i32 [ %dec13722242, %while.body1375.lr.ph ], [ %dec1372, %cond.end1397 ]
  %beglist.addr.402245 = phi %struct.sv** [ %beglist.addr.02448, %while.body1375.lr.ph ], [ %beglist.addr.41, %cond.end1397 ]
  %items.482244 = phi i32 [ %items.02445, %while.body1375.lr.ph ], [ %items.49, %cond.end1397 ]
  br i1 %tobool1376, label %cond.false1378, label %cond.end1387

cond.false1378:                                   ; preds = %while.body1375
  %dec1379 = add nsw i32 %items.482244, -1
  %cmp1380 = icmp sgt i32 %items.482244, 0
  br i1 %cmp1380, label %cond.true1382, label %cond.end1387

cond.true1382:                                    ; preds = %cond.false1378
  %incdec.ptr1383 = getelementptr inbounds %struct.sv** %beglist.addr.402245, i64 1
  %332 = load %struct.sv** %beglist.addr.402245, align 8, !tbaa !0
  br label %cond.end1387

cond.end1387:                                     ; preds = %while.body1375, %cond.true1382, %cond.false1378
  %items.49 = phi i32 [ %dec1379, %cond.true1382 ], [ %dec1379, %cond.false1378 ], [ %items.482244, %while.body1375 ]
  %beglist.addr.41 = phi %struct.sv** [ %incdec.ptr1383, %cond.true1382 ], [ %beglist.addr.402245, %cond.false1378 ], [ %beglist.addr.402245, %while.body1375 ]
  %cond1388 = phi %struct.sv* [ %332, %cond.true1382 ], [ @PL_sv_no, %cond.false1378 ], [ %lengthcode.0, %while.body1375 ]
  %sv_flags1389 = getelementptr inbounds %struct.sv* %cond1388, i64 0, i32 2
  %333 = load i32* %sv_flags1389, align 4, !tbaa !3
  %and1390 = and i32 %333, 65536
  %tobool1391 = icmp eq i32 %and1390, 0
  br i1 %tobool1391, label %cond.false1395, label %cond.true1392

cond.true1392:                                    ; preds = %cond.end1387
  %sv_any1393 = getelementptr inbounds %struct.sv* %cond1388, i64 0, i32 0
  %334 = load i8** %sv_any1393, align 8, !tbaa !0
  %xuv_uv1394 = getelementptr inbounds i8* %334, i64 24
  %335 = bitcast i8* %xuv_uv1394 to i64*
  %336 = load i64* %335, align 8, !tbaa !4
  br label %cond.end1397

cond.false1395:                                   ; preds = %cond.end1387
  %call1396 = call i64 @Perl_sv_2uv(%struct.sv* %cond1388) #8
  br label %cond.end1397

cond.end1397:                                     ; preds = %cond.false1395, %cond.true1392
  %cond1398 = phi i64 [ %336, %cond.true1392 ], [ %call1396, %cond.false1395 ]
  %conv1399 = trunc i64 %cond1398 to i32
  store i32 %conv1399, i32* %au32, align 4, !tbaa !3
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %18, i64 4, i32 2) #8
  %dec1372 = add nsw i32 %dec13722246, -1
  %cmp1373 = icmp sgt i32 %dec13722246, 0
  br i1 %cmp1373, label %while.body1375, label %sw.epilog1697

while.body1406:                                   ; preds = %while.body1406.lr.ph, %cond.end1428
  %dec14032237 = phi i32 [ %dec14032233, %while.body1406.lr.ph ], [ %dec1403, %cond.end1428 ]
  %beglist.addr.422236 = phi %struct.sv** [ %beglist.addr.02448, %while.body1406.lr.ph ], [ %beglist.addr.43, %cond.end1428 ]
  %items.502235 = phi i32 [ %items.02445, %while.body1406.lr.ph ], [ %items.51, %cond.end1428 ]
  br i1 %tobool1407, label %cond.false1409, label %cond.end1418

cond.false1409:                                   ; preds = %while.body1406
  %dec1410 = add nsw i32 %items.502235, -1
  %cmp1411 = icmp sgt i32 %items.502235, 0
  br i1 %cmp1411, label %cond.true1413, label %cond.end1418

cond.true1413:                                    ; preds = %cond.false1409
  %incdec.ptr1414 = getelementptr inbounds %struct.sv** %beglist.addr.422236, i64 1
  %337 = load %struct.sv** %beglist.addr.422236, align 8, !tbaa !0
  br label %cond.end1418

cond.end1418:                                     ; preds = %while.body1406, %cond.true1413, %cond.false1409
  %items.51 = phi i32 [ %dec1410, %cond.true1413 ], [ %dec1410, %cond.false1409 ], [ %items.502235, %while.body1406 ]
  %beglist.addr.43 = phi %struct.sv** [ %incdec.ptr1414, %cond.true1413 ], [ %beglist.addr.422236, %cond.false1409 ], [ %beglist.addr.422236, %while.body1406 ]
  %cond1419 = phi %struct.sv* [ %337, %cond.true1413 ], [ @PL_sv_no, %cond.false1409 ], [ %lengthcode.0, %while.body1406 ]
  %sv_flags1420 = getelementptr inbounds %struct.sv* %cond1419, i64 0, i32 2
  %338 = load i32* %sv_flags1420, align 4, !tbaa !3
  %and1421 = and i32 %338, 65536
  %tobool1422 = icmp eq i32 %and1421, 0
  br i1 %tobool1422, label %cond.false1426, label %cond.true1423

cond.true1423:                                    ; preds = %cond.end1418
  %sv_any1424 = getelementptr inbounds %struct.sv* %cond1419, i64 0, i32 0
  %339 = load i8** %sv_any1424, align 8, !tbaa !0
  %xiv_iv1425 = getelementptr inbounds i8* %339, i64 24
  %340 = bitcast i8* %xiv_iv1425 to i64*
  %341 = load i64* %340, align 8, !tbaa !4
  br label %cond.end1428

cond.false1426:                                   ; preds = %cond.end1418
  %call1427 = call i64 @Perl_sv_2iv(%struct.sv* %cond1419) #8
  br label %cond.end1428

cond.end1428:                                     ; preds = %cond.false1426, %cond.true1423
  %cond1429 = phi i64 [ %341, %cond.true1423 ], [ %call1427, %cond.false1426 ]
  store i64 %cond1429, i64* %along, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %17, i64 8, i32 2) #8
  %dec1403 = add nsw i32 %dec14032237, -1
  %cmp1404 = icmp sgt i32 %dec14032237, 0
  br i1 %cmp1404, label %while.body1406, label %sw.epilog1697

while.body1436:                                   ; preds = %while.body1436.lr.ph, %cond.end1458
  %dec14332228 = phi i32 [ %dec14332224, %while.body1436.lr.ph ], [ %dec1433, %cond.end1458 ]
  %beglist.addr.442227 = phi %struct.sv** [ %beglist.addr.02448, %while.body1436.lr.ph ], [ %beglist.addr.45, %cond.end1458 ]
  %items.522226 = phi i32 [ %items.02445, %while.body1436.lr.ph ], [ %items.53, %cond.end1458 ]
  br i1 %tobool1437, label %cond.false1439, label %cond.end1448

cond.false1439:                                   ; preds = %while.body1436
  %dec1440 = add nsw i32 %items.522226, -1
  %cmp1441 = icmp sgt i32 %items.522226, 0
  br i1 %cmp1441, label %cond.true1443, label %cond.end1448

cond.true1443:                                    ; preds = %cond.false1439
  %incdec.ptr1444 = getelementptr inbounds %struct.sv** %beglist.addr.442227, i64 1
  %342 = load %struct.sv** %beglist.addr.442227, align 8, !tbaa !0
  br label %cond.end1448

cond.end1448:                                     ; preds = %while.body1436, %cond.true1443, %cond.false1439
  %items.53 = phi i32 [ %dec1440, %cond.true1443 ], [ %dec1440, %cond.false1439 ], [ %items.522226, %while.body1436 ]
  %beglist.addr.45 = phi %struct.sv** [ %incdec.ptr1444, %cond.true1443 ], [ %beglist.addr.442227, %cond.false1439 ], [ %beglist.addr.442227, %while.body1436 ]
  %cond1449 = phi %struct.sv* [ %342, %cond.true1443 ], [ @PL_sv_no, %cond.false1439 ], [ %lengthcode.0, %while.body1436 ]
  %sv_flags1450 = getelementptr inbounds %struct.sv* %cond1449, i64 0, i32 2
  %343 = load i32* %sv_flags1450, align 4, !tbaa !3
  %and1451 = and i32 %343, 65536
  %tobool1452 = icmp eq i32 %and1451, 0
  br i1 %tobool1452, label %cond.false1456, label %cond.true1453

cond.true1453:                                    ; preds = %cond.end1448
  %sv_any1454 = getelementptr inbounds %struct.sv* %cond1449, i64 0, i32 0
  %344 = load i8** %sv_any1454, align 8, !tbaa !0
  %xiv_iv1455 = getelementptr inbounds i8* %344, i64 24
  %345 = bitcast i8* %xiv_iv1455 to i64*
  %346 = load i64* %345, align 8, !tbaa !4
  br label %cond.end1458

cond.false1456:                                   ; preds = %cond.end1448
  %call1457 = call i64 @Perl_sv_2iv(%struct.sv* %cond1449) #8
  br label %cond.end1458

cond.end1458:                                     ; preds = %cond.false1456, %cond.true1453
  %cond1459 = phi i64 [ %346, %cond.true1453 ], [ %call1457, %cond.false1456 ]
  %conv1460 = trunc i64 %cond1459 to i32
  store i32 %conv1460, i32* %ai32, align 4, !tbaa !3
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %16, i64 4, i32 2) #8
  %dec1433 = add nsw i32 %dec14332228, -1
  %cmp1434 = icmp sgt i32 %dec14332228, 0
  br i1 %cmp1434, label %while.body1436, label %sw.epilog1697

while.body1467:                                   ; preds = %while.body1467.lr.ph, %cond.end1489
  %dec14642219 = phi i32 [ %dec14642215, %while.body1467.lr.ph ], [ %dec1464, %cond.end1489 ]
  %beglist.addr.462218 = phi %struct.sv** [ %beglist.addr.02448, %while.body1467.lr.ph ], [ %beglist.addr.47, %cond.end1489 ]
  %items.542217 = phi i32 [ %items.02445, %while.body1467.lr.ph ], [ %items.55, %cond.end1489 ]
  br i1 %tobool1468, label %cond.false1470, label %cond.end1479

cond.false1470:                                   ; preds = %while.body1467
  %dec1471 = add nsw i32 %items.542217, -1
  %cmp1472 = icmp sgt i32 %items.542217, 0
  br i1 %cmp1472, label %cond.true1474, label %cond.end1479

cond.true1474:                                    ; preds = %cond.false1470
  %incdec.ptr1475 = getelementptr inbounds %struct.sv** %beglist.addr.462218, i64 1
  %347 = load %struct.sv** %beglist.addr.462218, align 8, !tbaa !0
  br label %cond.end1479

cond.end1479:                                     ; preds = %while.body1467, %cond.true1474, %cond.false1470
  %items.55 = phi i32 [ %dec1471, %cond.true1474 ], [ %dec1471, %cond.false1470 ], [ %items.542217, %while.body1467 ]
  %beglist.addr.47 = phi %struct.sv** [ %incdec.ptr1475, %cond.true1474 ], [ %beglist.addr.462218, %cond.false1470 ], [ %beglist.addr.462218, %while.body1467 ]
  %cond1480 = phi %struct.sv* [ %347, %cond.true1474 ], [ @PL_sv_no, %cond.false1470 ], [ %lengthcode.0, %while.body1467 ]
  %sv_flags1481 = getelementptr inbounds %struct.sv* %cond1480, i64 0, i32 2
  %348 = load i32* %sv_flags1481, align 4, !tbaa !3
  %and1482 = and i32 %348, 65536
  %tobool1483 = icmp eq i32 %and1482, 0
  br i1 %tobool1483, label %cond.false1487, label %cond.true1484

cond.true1484:                                    ; preds = %cond.end1479
  %sv_any1485 = getelementptr inbounds %struct.sv* %cond1480, i64 0, i32 0
  %349 = load i8** %sv_any1485, align 8, !tbaa !0
  %xuv_uv1486 = getelementptr inbounds i8* %349, i64 24
  %350 = bitcast i8* %xuv_uv1486 to i64*
  %351 = load i64* %350, align 8, !tbaa !4
  br label %cond.end1489

cond.false1487:                                   ; preds = %cond.end1479
  %call1488 = call i64 @Perl_sv_2uv(%struct.sv* %cond1480) #8
  br label %cond.end1489

cond.end1489:                                     ; preds = %cond.false1487, %cond.true1484
  %cond1490 = phi i64 [ %351, %cond.true1484 ], [ %call1488, %cond.false1487 ]
  store i64 %cond1490, i64* %auquad, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %15, i64 8, i32 2) #8
  %dec1464 = add nsw i32 %dec14642219, -1
  %cmp1465 = icmp sgt i32 %dec14642219, 0
  br i1 %cmp1465, label %while.body1467, label %sw.epilog1697

while.body1497:                                   ; preds = %while.body1497.lr.ph, %cond.end1519
  %dec14942210 = phi i32 [ %dec14942206, %while.body1497.lr.ph ], [ %dec1494, %cond.end1519 ]
  %beglist.addr.482209 = phi %struct.sv** [ %beglist.addr.02448, %while.body1497.lr.ph ], [ %beglist.addr.49, %cond.end1519 ]
  %items.562208 = phi i32 [ %items.02445, %while.body1497.lr.ph ], [ %items.57, %cond.end1519 ]
  br i1 %tobool1498, label %cond.false1500, label %cond.end1509

cond.false1500:                                   ; preds = %while.body1497
  %dec1501 = add nsw i32 %items.562208, -1
  %cmp1502 = icmp sgt i32 %items.562208, 0
  br i1 %cmp1502, label %cond.true1504, label %cond.end1509

cond.true1504:                                    ; preds = %cond.false1500
  %incdec.ptr1505 = getelementptr inbounds %struct.sv** %beglist.addr.482209, i64 1
  %352 = load %struct.sv** %beglist.addr.482209, align 8, !tbaa !0
  br label %cond.end1509

cond.end1509:                                     ; preds = %while.body1497, %cond.true1504, %cond.false1500
  %items.57 = phi i32 [ %dec1501, %cond.true1504 ], [ %dec1501, %cond.false1500 ], [ %items.562208, %while.body1497 ]
  %beglist.addr.49 = phi %struct.sv** [ %incdec.ptr1505, %cond.true1504 ], [ %beglist.addr.482209, %cond.false1500 ], [ %beglist.addr.482209, %while.body1497 ]
  %cond1510 = phi %struct.sv* [ %352, %cond.true1504 ], [ @PL_sv_no, %cond.false1500 ], [ %lengthcode.0, %while.body1497 ]
  %sv_flags1511 = getelementptr inbounds %struct.sv* %cond1510, i64 0, i32 2
  %353 = load i32* %sv_flags1511, align 4, !tbaa !3
  %and1512 = and i32 %353, 65536
  %tobool1513 = icmp eq i32 %and1512, 0
  br i1 %tobool1513, label %cond.false1517, label %cond.true1514

cond.true1514:                                    ; preds = %cond.end1509
  %sv_any1515 = getelementptr inbounds %struct.sv* %cond1510, i64 0, i32 0
  %354 = load i8** %sv_any1515, align 8, !tbaa !0
  %xiv_iv1516 = getelementptr inbounds i8* %354, i64 24
  %355 = bitcast i8* %xiv_iv1516 to i64*
  %356 = load i64* %355, align 8, !tbaa !4
  br label %cond.end1519

cond.false1517:                                   ; preds = %cond.end1509
  %call1518 = call i64 @Perl_sv_2iv(%struct.sv* %cond1510) #8
  br label %cond.end1519

cond.end1519:                                     ; preds = %cond.false1517, %cond.true1514
  %cond1520 = phi i64 [ %356, %cond.true1514 ], [ %call1518, %cond.false1517 ]
  store i64 %cond1520, i64* %aquad, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %14, i64 8, i32 2) #8
  %dec1494 = add nsw i32 %dec14942210, -1
  %cmp1495 = icmp sgt i32 %dec14942210, 0
  br i1 %cmp1495, label %while.body1497, label %sw.epilog1697

while.cond1524.preheader:                         ; preds = %if.end43
  %dec15252198 = add nsw i32 %len.1, -1
  %cmp15262199 = icmp sgt i32 %len.1, 0
  br i1 %cmp15262199, label %while.body1528.lr.ph, label %sw.epilog1697

while.body1528.lr.ph:                             ; preds = %if.end43, %while.cond1524.preheader
  %dec152521982508 = phi i32 [ %dec15252198, %while.cond1524.preheader ], [ 0, %if.end43 ]
  %tobool1529 = icmp eq %struct.sv* %lengthcode.0, null
  br label %while.body1528

while.body1528:                                   ; preds = %while.body1528.lr.ph, %if.end1630
  %dec15252202 = phi i32 [ %dec152521982508, %while.body1528.lr.ph ], [ %dec1525, %if.end1630 ]
  %beglist.addr.502201 = phi %struct.sv** [ %beglist.addr.02448, %while.body1528.lr.ph ], [ %beglist.addr.51, %if.end1630 ]
  %items.582200 = phi i32 [ %items.02445, %while.body1528.lr.ph ], [ %items.59, %if.end1630 ]
  br i1 %tobool1529, label %cond.false1531, label %cond.end1540

cond.false1531:                                   ; preds = %while.body1528
  %dec1532 = add nsw i32 %items.582200, -1
  %cmp1533 = icmp sgt i32 %items.582200, 0
  br i1 %cmp1533, label %cond.true1535, label %cond.end1540

cond.true1535:                                    ; preds = %cond.false1531
  %incdec.ptr1536 = getelementptr inbounds %struct.sv** %beglist.addr.502201, i64 1
  %357 = load %struct.sv** %beglist.addr.502201, align 8, !tbaa !0
  br label %cond.end1540

cond.end1540:                                     ; preds = %while.body1528, %cond.true1535, %cond.false1531
  %items.59 = phi i32 [ %dec1532, %cond.true1535 ], [ %dec1532, %cond.false1531 ], [ %items.582200, %while.body1528 ]
  %beglist.addr.51 = phi %struct.sv** [ %incdec.ptr1536, %cond.true1535 ], [ %beglist.addr.502201, %cond.false1531 ], [ %beglist.addr.502201, %while.body1528 ]
  %cond1541 = phi %struct.sv* [ %357, %cond.true1535 ], [ @PL_sv_no, %cond.false1531 ], [ %lengthcode.0, %while.body1528 ]
  %sv_flags1542 = getelementptr inbounds %struct.sv* %cond1541, i64 0, i32 2
  %358 = load i32* %sv_flags1542, align 4, !tbaa !3
  %and1543 = and i32 %358, 8192
  %tobool1544 = icmp eq i32 %and1543, 0
  br i1 %tobool1544, label %if.end1547, label %if.then1545

if.then1545:                                      ; preds = %cond.end1540
  %call1546 = call i32 @Perl_mg_get(%struct.sv* %cond1541) #8
  %.pre2490 = load i32* %sv_flags1542, align 4, !tbaa !3
  br label %if.end1547

if.end1547:                                       ; preds = %cond.end1540, %if.then1545
  %359 = phi i32 [ %358, %cond.end1540 ], [ %.pre2490, %if.then1545 ]
  %and1549 = and i32 %359, 118423552
  %tobool1550 = icmp eq i32 %and1549, 0
  br i1 %tobool1550, label %if.then1551, label %if.else1552

if.then1551:                                      ; preds = %if.end1547
  store i8* null, i8** %aptr, align 8, !tbaa !0
  br label %if.end1630

if.else1552:                                      ; preds = %if.end1547
  %360 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1553 = getelementptr inbounds %struct.cop* %360, i64 0, i32 14
  %361 = load %struct.sv** %cop_warnings1553, align 8, !tbaa !0
  %cmp1554 = icmp eq %struct.sv* %361, null
  br i1 %cmp1554, label %lor.lhs.false1572, label %land.lhs.true1556

land.lhs.true1556:                                ; preds = %if.else1552
  %362 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1557 = getelementptr inbounds %struct.cop* %362, i64 0, i32 14
  %363 = load %struct.sv** %cop_warnings1557, align 8, !tbaa !0
  %cmp1558 = icmp eq %struct.sv* %363, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp1558, label %lor.lhs.false1572, label %land.lhs.true1560

land.lhs.true1560:                                ; preds = %land.lhs.true1556
  %364 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1561 = getelementptr inbounds %struct.cop* %364, i64 0, i32 14
  %365 = load %struct.sv** %cop_warnings1561, align 8, !tbaa !0
  %cmp1562 = icmp eq %struct.sv* %365, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp1562, label %land.lhs.true1580, label %lor.lhs.false1564

lor.lhs.false1564:                                ; preds = %land.lhs.true1560
  %366 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1565 = getelementptr inbounds %struct.cop* %366, i64 0, i32 14
  %367 = load %struct.sv** %cop_warnings1565, align 8, !tbaa !0
  %sv_any1566 = getelementptr inbounds %struct.sv* %367, i64 0, i32 0
  %368 = load i8** %sv_any1566, align 8, !tbaa !0
  %xpv_pv1567 = bitcast i8* %368 to i8**
  %369 = load i8** %xpv_pv1567, align 8, !tbaa !0
  %arrayidx1568 = getelementptr inbounds i8* %369, i64 4
  %370 = load i8* %arrayidx1568, align 1, !tbaa !1
  %and1570 = and i8 %370, 1
  %tobool1571 = icmp eq i8 %and1570, 0
  br i1 %tobool1571, label %lor.lhs.false1572, label %land.lhs.true1580

lor.lhs.false1572:                                ; preds = %lor.lhs.false1564, %land.lhs.true1556, %if.else1552
  %371 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1573 = getelementptr inbounds %struct.cop* %371, i64 0, i32 14
  %372 = load %struct.sv** %cop_warnings1573, align 8, !tbaa !0
  %cmp1574 = icmp eq %struct.sv* %372, null
  br i1 %cmp1574, label %land.lhs.true1576, label %if.end1593

land.lhs.true1576:                                ; preds = %lor.lhs.false1572
  %373 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and1578 = and i8 %373, 1
  %tobool1579 = icmp eq i8 %and1578, 0
  br i1 %tobool1579, label %if.end1593, label %land.lhs.true1580

land.lhs.true1580:                                ; preds = %lor.lhs.false1564, %land.lhs.true1576, %land.lhs.true1560
  %374 = load i32* %sv_flags1542, align 4, !tbaa !3
  %and1582 = and i32 %374, 2048
  %tobool1583 = icmp ne i32 %and1582, 0
  %375 = and i32 %374, 8389120
  %376 = icmp eq i32 %375, 512
  %or.cond2195 = or i1 %tobool1583, %376
  br i1 %or.cond2195, label %if.then1592, label %if.end1593

if.then1592:                                      ; preds = %land.lhs.true1580
  call void (i32, i8*, ...)* @Perl_warner(i32 16, i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0)) #8
  br label %if.end1593

if.end1593:                                       ; preds = %land.lhs.true1576, %lor.lhs.false1572, %land.lhs.true1580, %if.then1592
  %377 = load i32* %sv_flags1542, align 4, !tbaa !3
  %378 = and i32 %377, 458752
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %if.else1615, label %if.then1601

if.then1601:                                      ; preds = %if.end1593
  %and1595 = and i32 %377, 262144
  %tobool1596 = icmp eq i32 %and1595, 0
  br i1 %tobool1596, label %cond.false1611, label %cond.true1606

cond.true1606:                                    ; preds = %if.then1601
  %sv_any1607 = getelementptr inbounds %struct.sv* %cond1541, i64 0, i32 0
  %380 = load i8** %sv_any1607, align 8, !tbaa !0
  %xpv_cur1608 = getelementptr inbounds i8* %380, i64 8
  %381 = bitcast i8* %xpv_cur1608 to i64*
  %382 = load i64* %381, align 8, !tbaa !4
  store i64 %382, i64* %n_a, align 8, !tbaa !4
  %xpv_pv1610 = bitcast i8* %380 to i8**
  %383 = load i8** %xpv_pv1610, align 8, !tbaa !0
  br label %cond.end1613

cond.false1611:                                   ; preds = %if.then1601
  %call1612 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond1541, i64* %n_a, i32 0) #8
  br label %cond.end1613

cond.end1613:                                     ; preds = %cond.false1611, %cond.true1606
  %cond1614 = phi i8* [ %383, %cond.true1606 ], [ %call1612, %cond.false1611 ]
  store i8* %cond1614, i8** %aptr, align 8, !tbaa !0
  br label %if.end1630

if.else1615:                                      ; preds = %if.end1593
  %and1617 = and i32 %377, 10223616
  %cmp1618 = icmp eq i32 %and1617, 262144
  br i1 %cmp1618, label %cond.true1620, label %cond.false1625

cond.true1620:                                    ; preds = %if.else1615
  %sv_any1621 = getelementptr inbounds %struct.sv* %cond1541, i64 0, i32 0
  %384 = load i8** %sv_any1621, align 8, !tbaa !0
  %xpv_cur1622 = getelementptr inbounds i8* %384, i64 8
  %385 = bitcast i8* %xpv_cur1622 to i64*
  %386 = load i64* %385, align 8, !tbaa !4
  store i64 %386, i64* %n_a, align 8, !tbaa !4
  %xpv_pv1624 = bitcast i8* %384 to i8**
  %387 = load i8** %xpv_pv1624, align 8, !tbaa !0
  br label %cond.end1627

cond.false1625:                                   ; preds = %if.else1615
  %call1626 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %cond1541, i64* %n_a, i32 0) #8
  br label %cond.end1627

cond.end1627:                                     ; preds = %cond.false1625, %cond.true1620
  %cond1628 = phi i8* [ %387, %cond.true1620 ], [ %call1626, %cond.false1625 ]
  store i8* %cond1628, i8** %aptr, align 8, !tbaa !0
  br label %if.end1630

if.end1630:                                       ; preds = %cond.end1613, %cond.end1627, %if.then1551
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %13, i64 8, i32 2) #8
  %dec1525 = add nsw i32 %dec15252202, -1
  %cmp1526 = icmp sgt i32 %dec15252202, 0
  br i1 %cmp1526, label %while.body1528, label %sw.epilog1697

sw.bb1632:                                        ; preds = %if.end43
  %tobool1633 = icmp eq %struct.sv* %lengthcode.0, null
  br i1 %tobool1633, label %cond.false1635, label %cond.end1644

cond.false1635:                                   ; preds = %sw.bb1632
  %dec1636 = add nsw i32 %items.02445, -1
  %cmp1637 = icmp sgt i32 %items.02445, 0
  br i1 %cmp1637, label %cond.true1639, label %cond.end1644

cond.true1639:                                    ; preds = %cond.false1635
  %incdec.ptr1640 = getelementptr inbounds %struct.sv** %beglist.addr.02448, i64 1
  %388 = load %struct.sv** %beglist.addr.02448, align 8, !tbaa !0
  br label %cond.end1644

cond.end1644:                                     ; preds = %sw.bb1632, %cond.true1639, %cond.false1635
  %items.60 = phi i32 [ %dec1636, %cond.true1639 ], [ %dec1636, %cond.false1635 ], [ %items.02445, %sw.bb1632 ]
  %beglist.addr.52 = phi %struct.sv** [ %incdec.ptr1640, %cond.true1639 ], [ %beglist.addr.02448, %cond.false1635 ], [ %beglist.addr.02448, %sw.bb1632 ]
  %cond1645 = phi %struct.sv* [ %388, %cond.true1639 ], [ @PL_sv_no, %cond.false1635 ], [ %lengthcode.0, %sw.bb1632 ]
  %sv_flags1646 = getelementptr inbounds %struct.sv* %cond1645, i64 0, i32 2
  %389 = load i32* %sv_flags1646, align 4, !tbaa !3
  %and1647 = and i32 %389, 262144
  %cmp1648 = icmp eq i32 %and1647, 0
  br i1 %cmp1648, label %cond.false1655, label %cond.true1650

cond.true1650:                                    ; preds = %cond.end1644
  %sv_any1651 = getelementptr inbounds %struct.sv* %cond1645, i64 0, i32 0
  %390 = load i8** %sv_any1651, align 8, !tbaa !0
  %xpv_cur1652 = getelementptr inbounds i8* %390, i64 8
  %391 = bitcast i8* %xpv_cur1652 to i64*
  %392 = load i64* %391, align 8, !tbaa !4
  store i64 %392, i64* %fromlen, align 8, !tbaa !4
  %xpv_pv1654 = bitcast i8* %390 to i8**
  %393 = load i8** %xpv_pv1654, align 8, !tbaa !0
  br label %cond.end1657

cond.false1655:                                   ; preds = %cond.end1644
  %call1656 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond1645, i64* %fromlen, i32 2) #8
  %.pre2488 = load i64* %fromlen, align 8, !tbaa !4
  br label %cond.end1657

cond.end1657:                                     ; preds = %cond.false1655, %cond.true1650
  %394 = phi i64 [ %392, %cond.true1650 ], [ %.pre2488, %cond.false1655 ]
  %cond1658 = phi i8* [ %393, %cond.true1650 ], [ %call1656, %cond.false1655 ]
  store i8* %cond1658, i8** %aptr, align 8, !tbaa !0
  %395 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_len1660 = getelementptr inbounds i8* %395, i64 16
  %396 = bitcast i8* %xpv_len1660 to i64*
  %397 = load i64* %396, align 8, !tbaa !4
  %mul1661 = shl i64 %394, 2
  %div1662 = udiv i64 %mul1661, 3
  %cmp1663 = icmp ult i64 %397, %div1662
  br i1 %cmp1663, label %cond.true1665, label %cond.end1672

cond.true1665:                                    ; preds = %cond.end1657
  %call1668 = call i8* @Perl_sv_grow(%struct.sv* %cat, i64 %div1662) #8
  br label %cond.end1672

cond.end1672:                                     ; preds = %cond.end1657, %cond.true1665
  %cmp1674 = icmp slt i32 %len.1, 3
  br i1 %cmp1674, label %while.cond1681thread-pre-split, label %if.else1677

if.else1677:                                      ; preds = %cond.end1672
  %div1678 = srem i32 %len.1, 3
  %mul1679 = sub i32 %len.1, %div1678
  br label %while.cond1681thread-pre-split

while.cond1681thread-pre-split:                   ; preds = %cond.end1672, %if.else1677
  %len.43.ph = phi i32 [ %mul1679, %if.else1677 ], [ 45, %cond.end1672 ]
  %.pr2185 = load i64* %fromlen, align 8, !tbaa !4
  %cmp16822196 = icmp eq i64 %.pr2185, 0
  br i1 %cmp16822196, label %sw.epilog1697, label %while.body1684.lr.ph

while.body1684.lr.ph:                             ; preds = %while.cond1681thread-pre-split
  %.pre2489 = load i8** %aptr, align 8, !tbaa !0
  br label %while.body1684

while.body1684:                                   ; preds = %while.body1684.lr.ph, %S_doencodes.exit
  %398 = phi i8* [ %.pre2489, %while.body1684.lr.ph ], [ %add.ptr1695, %S_doencodes.exit ]
  %399 = phi i64 [ %.pr2185, %while.body1684.lr.ph ], [ %sub1693, %S_doencodes.exit ]
  %conv1685 = trunc i64 %399 to i32
  %cmp1686 = icmp sgt i32 %conv1685, %len.43.ph
  %len.43.conv1685 = select i1 %cmp1686, i32 %len.43.ph, i32 %conv1685
  call void @llvm.lifetime.start(i64 5, i8* %11) #1
  %idxprom.i = sext i32 %len.43.conv1685 to i64
  %arrayidx.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %idxprom.i
  %400 = load i8* %arrayidx.i, align 1, !tbaa !1
  store i8 %400, i8* %11, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %11, i64 1, i32 2) #8
  store i8 0, i8* %arrayidx2.i, align 1, !tbaa !1
  %cmp104.i = icmp sgt i32 %len.43.conv1685, 2
  br i1 %cmp104.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.body1684
  %401 = add i32 %len.43.conv1685, -3
  %402 = udiv i32 %401, 3
  %403 = zext i32 %402 to i64
  %404 = mul i64 %403, 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %s.addr.0106.i = phi i8* [ %398, %while.body.lr.ph.i ], [ %add.ptr.i, %while.body.i ]
  %len.addr.0105.i = phi i32 [ %len.43.conv1685, %while.body.lr.ph.i ], [ %sub.i, %while.body.i ]
  %405 = load i8* %s.addr.0106.i, align 1, !tbaa !1
  %conv93.i = zext i8 %405 to i64
  %shr94.i = lshr i64 %conv93.i, 2
  %arrayidx4.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %shr94.i
  %406 = load i8* %arrayidx4.i, align 1, !tbaa !1
  store i8 %406, i8* %11, align 1, !tbaa !1
  %407 = load i8* %s.addr.0106.i, align 1, !tbaa !1
  %conv6.i = sext i8 %407 to i32
  %shl.i = shl nsw i32 %conv6.i, 4
  %and7.i = and i32 %shl.i, 48
  %arrayidx8.i = getelementptr inbounds i8* %s.addr.0106.i, i64 1
  %408 = load i8* %arrayidx8.i, align 1, !tbaa !1
  %conv996.i = zext i8 %408 to i32
  %shr1097.i = lshr i32 %conv996.i, 4
  %or.i = or i32 %and7.i, %shr1097.i
  %idxprom1398.i = zext i32 %or.i to i64
  %arrayidx14.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %idxprom1398.i
  %409 = load i8* %arrayidx14.i, align 1, !tbaa !1
  store i8 %409, i8* %arrayidx15.i, align 1, !tbaa !1
  %410 = load i8* %arrayidx8.i, align 1, !tbaa !1
  %conv17.i = sext i8 %410 to i32
  %shl18.i = shl nsw i32 %conv17.i, 2
  %and19.i = and i32 %shl18.i, 60
  %arrayidx20.i = getelementptr inbounds i8* %s.addr.0106.i, i64 2
  %411 = load i8* %arrayidx20.i, align 1, !tbaa !1
  %conv2199.i = zext i8 %411 to i32
  %shr22100.i = lshr i32 %conv2199.i, 6
  %or24.i = or i32 %and19.i, %shr22100.i
  %idxprom26101.i = zext i32 %or24.i to i64
  %arrayidx27.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %idxprom26101.i
  %412 = load i8* %arrayidx27.i, align 1, !tbaa !1
  store i8 %412, i8* %arrayidx28.i, align 1, !tbaa !1
  %413 = load i8* %arrayidx20.i, align 1, !tbaa !1
  %conv30102.i = zext i8 %413 to i64
  %and31.i = and i64 %conv30102.i, 63
  %arrayidx34.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %and31.i
  %414 = load i8* %arrayidx34.i, align 1, !tbaa !1
  store i8 %414, i8* %arrayidx35.i, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %11, i64 4, i32 2) #8
  %add.ptr.i = getelementptr inbounds i8* %s.addr.0106.i, i64 3
  %sub.i = add nsw i32 %len.addr.0105.i, -3
  %cmp.i = icmp sgt i32 %sub.i, 2
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  %415 = add i64 %404, 3
  %416 = mul i32 %402, -3
  %417 = add i32 %416, %401
  %scevgep.i = getelementptr i8* %398, i64 %415
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %while.body1684
  %s.addr.0.lcssa.i = phi i8* [ %scevgep.i, %while.cond.while.end_crit_edge.i ], [ %398, %while.body1684 ]
  %len.addr.0.lcssa.i = phi i32 [ %417, %while.cond.while.end_crit_edge.i ], [ %len.43.conv1685, %while.body1684 ]
  %cmp37.i = icmp sgt i32 %len.addr.0.lcssa.i, 0
  br i1 %cmp37.i, label %if.then.i, label %S_doencodes.exit

if.then.i:                                        ; preds = %while.end.i
  %cmp39.i = icmp sgt i32 %len.addr.0.lcssa.i, 1
  br i1 %cmp39.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  %arrayidx41.i = getelementptr inbounds i8* %s.addr.0.lcssa.i, i64 1
  %418 = load i8* %arrayidx41.i, align 1, !tbaa !1
  %phitmp.i = sext i8 %418 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i
  %cond.i = phi i32 [ %phitmp.i, %cond.true.i ], [ 0, %if.then.i ]
  %419 = load i8* %s.addr.0.lcssa.i, align 1, !tbaa !1
  %conv4487.i = zext i8 %419 to i64
  %shr4588.i = lshr i64 %conv4487.i, 2
  %arrayidx48.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %shr4588.i
  %420 = load i8* %arrayidx48.i, align 1, !tbaa !1
  store i8 %420, i8* %11, align 1, !tbaa !1
  %conv50.i = sext i8 %419 to i32
  %shl51.i = shl nsw i32 %conv50.i, 4
  %and52.i = and i32 %shl51.i, 48
  %shr5490.i = lshr i32 %cond.i, 4
  %and55.i = and i32 %shr5490.i, 15
  %or56.i = or i32 %and52.i, %and55.i
  %idxprom5891.i = zext i32 %or56.i to i64
  %arrayidx59.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %idxprom5891.i
  %421 = load i8* %arrayidx59.i, align 1, !tbaa !1
  store i8 %421, i8* %arrayidx15.i, align 1, !tbaa !1
  %shl62.i = shl nsw i32 %cond.i, 2
  %and63.i = and i32 %shl62.i, 60
  %idxprom6592.i = zext i32 %and63.i to i64
  %arrayidx66.i = getelementptr inbounds [65 x i8]* @PL_uuemap, i64 0, i64 %idxprom6592.i
  %422 = load i8* %arrayidx66.i, align 1, !tbaa !1
  store i8 %422, i8* %arrayidx28.i, align 1, !tbaa !1
  store i8 %12, i8* %arrayidx35.i, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* %11, i64 4, i32 2) #8
  br label %S_doencodes.exit

S_doencodes.exit:                                 ; preds = %while.end.i, %cond.end.i
  call void @Perl_sv_catpvn_flags(%struct.sv* %cat, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i64 1, i32 2) #8
  call void @llvm.lifetime.end(i64 5, i8* %11) #1
  %423 = load i64* %fromlen, align 8, !tbaa !4
  %sub1693 = sub i64 %423, %idxprom.i
  store i64 %sub1693, i64* %fromlen, align 8, !tbaa !4
  %424 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr1695 = getelementptr inbounds i8* %424, i64 %idxprom.i
  store i8* %add.ptr1695, i8** %aptr, align 8, !tbaa !0
  %cmp1682 = icmp eq i64 %423, %idxprom.i
  br i1 %cmp1682, label %sw.epilog1697, label %while.body1684

sw.epilog1697:                                    ; preds = %if.end332, %while.body341, %if.end513, %while.body522, %while.cond526.preheader, %while.cond526.backedge, %while.cond738.preheader, %cond.end763, %while.cond768.preheader, %cond.end794, %sw.bb797, %cond.end824, %while.cond828.preheader, %cond.end854, %while.cond859.preheader, %cond.end885, %while.cond891.preheader, %cond.end917, %while.cond922.preheader, %cond.end948, %while.cond953.preheader, %cond.end979, %while.cond984.preheader, %cond.end1010, %while.cond1014.preheader, %cond.end1040, %while.cond1044.preheader, %while.cond1044.backedge, %while.cond1243.preheader, %cond.end1269, %while.cond1274.preheader, %cond.end1300, %while.cond1307.preheader, %cond.end1333, %while.cond1341.preheader, %cond.end1367, %while.cond1371.preheader, %cond.end1397, %while.cond1402.preheader, %cond.end1428, %while.cond1432.preheader, %cond.end1458, %while.cond1463.preheader, %cond.end1489, %while.cond1493.preheader, %cond.end1519, %while.cond1524.preheader, %if.end1630, %while.cond1681thread-pre-split, %S_doencodes.exit, %if.then177, %if.then170, %while.end205, %while.end197, %if.end56, %while.end731, %while.end129, %if.end101, %while.end
  %len.44 = phi i32 [ %len.6.lcssa, %while.end129 ], [ %len.4, %if.end101 ], [ %sub57, %if.end56 ], [ %dec644.lcssa, %while.end731 ], [ %len.7, %if.then177 ], [ %len.7, %if.then170 ], [ %len.8.lcssa, %while.end197 ], [ %len.9.lcssa, %while.end205 ], [ %dec, %while.end ], [ %len.43.ph, %S_doencodes.exit ], [ %len.43.ph, %while.cond1681thread-pre-split ], [ %dec15252198, %while.cond1524.preheader ], [ -1, %if.end1630 ], [ %dec14942206, %while.cond1493.preheader ], [ -1, %cond.end1519 ], [ %dec14642215, %while.cond1463.preheader ], [ -1, %cond.end1489 ], [ %dec14332224, %while.cond1432.preheader ], [ -1, %cond.end1458 ], [ %dec14032233, %while.cond1402.preheader ], [ -1, %cond.end1428 ], [ %dec13722242, %while.cond1371.preheader ], [ -1, %cond.end1397 ], [ %dec13422251, %while.cond1341.preheader ], [ -1, %cond.end1367 ], [ %dec13082260, %while.cond1307.preheader ], [ -1, %cond.end1333 ], [ %dec12752269, %while.cond1274.preheader ], [ -1, %cond.end1300 ], [ %dec12442278, %while.cond1243.preheader ], [ -1, %cond.end1269 ], [ %dec10452289, %while.cond1044.preheader ], [ -1, %while.cond1044.backedge ], [ %dec10152298, %while.cond1014.preheader ], [ -1, %cond.end1040 ], [ %dec9852307, %while.cond984.preheader ], [ -1, %cond.end1010 ], [ %dec9542316, %while.cond953.preheader ], [ -1, %cond.end979 ], [ %dec9232325, %while.cond922.preheader ], [ -1, %cond.end948 ], [ %dec8922334, %while.cond891.preheader ], [ -1, %cond.end917 ], [ %dec8602343, %while.cond859.preheader ], [ -1, %cond.end885 ], [ %dec8292352, %while.cond828.preheader ], [ -1, %cond.end854 ], [ %dec7992361, %sw.bb797 ], [ -1, %cond.end824 ], [ %dec7692370, %while.cond768.preheader ], [ -1, %cond.end794 ], [ %dec7392379, %while.cond738.preheader ], [ -1, %cond.end763 ], [ %dec5272396, %while.cond526.preheader ], [ -1, %while.cond526.backedge ], [ %len.19, %while.body522 ], [ %len.19, %if.end513 ], [ %len.14, %while.body341 ], [ %len.14, %if.end332 ]
  %items.61 = phi i32 [ %items.02445, %while.end129 ], [ %items.02445, %if.end101 ], [ %items.02445, %if.end56 ], [ %items.16.lcssa, %while.end731 ], [ %items.1, %if.then177 ], [ %items.1, %if.then170 ], [ %items.1, %while.end197 ], [ %items.1, %while.end205 ], [ %items.02445, %while.end ], [ %items.60, %S_doencodes.exit ], [ %items.60, %while.cond1681thread-pre-split ], [ %items.02445, %while.cond1524.preheader ], [ %items.59, %if.end1630 ], [ %items.02445, %while.cond1493.preheader ], [ %items.57, %cond.end1519 ], [ %items.02445, %while.cond1463.preheader ], [ %items.55, %cond.end1489 ], [ %items.02445, %while.cond1432.preheader ], [ %items.53, %cond.end1458 ], [ %items.02445, %while.cond1402.preheader ], [ %items.51, %cond.end1428 ], [ %items.02445, %while.cond1371.preheader ], [ %items.49, %cond.end1397 ], [ %items.02445, %while.cond1341.preheader ], [ %items.47, %cond.end1367 ], [ %items.02445, %while.cond1307.preheader ], [ %items.45, %cond.end1333 ], [ %items.02445, %while.cond1274.preheader ], [ %items.43, %cond.end1300 ], [ %items.02445, %while.cond1243.preheader ], [ %items.41, %cond.end1269 ], [ %items.02445, %while.cond1044.preheader ], [ %items.39, %while.cond1044.backedge ], [ %items.02445, %while.cond1014.preheader ], [ %items.37, %cond.end1040 ], [ %items.02445, %while.cond984.preheader ], [ %items.35, %cond.end1010 ], [ %items.02445, %while.cond953.preheader ], [ %items.33, %cond.end979 ], [ %items.02445, %while.cond922.preheader ], [ %items.31, %cond.end948 ], [ %items.02445, %while.cond891.preheader ], [ %items.29, %cond.end917 ], [ %items.02445, %while.cond859.preheader ], [ %items.27, %cond.end885 ], [ %items.02445, %while.cond828.preheader ], [ %items.25, %cond.end854 ], [ %items.02445, %sw.bb797 ], [ %items.23, %cond.end824 ], [ %items.02445, %while.cond768.preheader ], [ %items.21, %cond.end794 ], [ %items.02445, %while.cond738.preheader ], [ %items.19, %cond.end763 ], [ %items.02445, %while.cond526.preheader ], [ %items.15, %while.cond526.backedge ], [ %items.8, %while.body522 ], [ %items.8, %if.end513 ], [ %items.2, %while.body341 ], [ %items.2, %if.end332 ]
  %beglist.addr.53 = phi %struct.sv** [ %beglist.addr.02448, %while.end129 ], [ %beglist.addr.02448, %if.end101 ], [ %beglist.addr.02448, %if.end56 ], [ %beglist.addr.8.lcssa, %while.end731 ], [ %beglist.addr.3, %if.then177 ], [ %beglist.addr.3, %if.then170 ], [ %beglist.addr.3, %while.end197 ], [ %beglist.addr.3, %while.end205 ], [ %beglist.addr.2, %while.end ], [ %beglist.addr.52, %S_doencodes.exit ], [ %beglist.addr.52, %while.cond1681thread-pre-split ], [ %beglist.addr.02448, %while.cond1524.preheader ], [ %beglist.addr.51, %if.end1630 ], [ %beglist.addr.02448, %while.cond1493.preheader ], [ %beglist.addr.49, %cond.end1519 ], [ %beglist.addr.02448, %while.cond1463.preheader ], [ %beglist.addr.47, %cond.end1489 ], [ %beglist.addr.02448, %while.cond1432.preheader ], [ %beglist.addr.45, %cond.end1458 ], [ %beglist.addr.02448, %while.cond1402.preheader ], [ %beglist.addr.43, %cond.end1428 ], [ %beglist.addr.02448, %while.cond1371.preheader ], [ %beglist.addr.41, %cond.end1397 ], [ %beglist.addr.02448, %while.cond1341.preheader ], [ %beglist.addr.39, %cond.end1367 ], [ %beglist.addr.02448, %while.cond1307.preheader ], [ %beglist.addr.37, %cond.end1333 ], [ %beglist.addr.02448, %while.cond1274.preheader ], [ %beglist.addr.35, %cond.end1300 ], [ %beglist.addr.02448, %while.cond1243.preheader ], [ %beglist.addr.33, %cond.end1269 ], [ %beglist.addr.02448, %while.cond1044.preheader ], [ %beglist.addr.31, %while.cond1044.backedge ], [ %beglist.addr.02448, %while.cond1014.preheader ], [ %beglist.addr.29, %cond.end1040 ], [ %beglist.addr.02448, %while.cond984.preheader ], [ %beglist.addr.27, %cond.end1010 ], [ %beglist.addr.02448, %while.cond953.preheader ], [ %beglist.addr.25, %cond.end979 ], [ %beglist.addr.02448, %while.cond922.preheader ], [ %beglist.addr.23, %cond.end948 ], [ %beglist.addr.02448, %while.cond891.preheader ], [ %beglist.addr.21, %cond.end917 ], [ %beglist.addr.02448, %while.cond859.preheader ], [ %beglist.addr.19, %cond.end885 ], [ %beglist.addr.02448, %while.cond828.preheader ], [ %beglist.addr.17, %cond.end854 ], [ %beglist.addr.02448, %sw.bb797 ], [ %beglist.addr.15, %cond.end824 ], [ %beglist.addr.02448, %while.cond768.preheader ], [ %beglist.addr.13, %cond.end794 ], [ %beglist.addr.02448, %while.cond738.preheader ], [ %beglist.addr.11, %cond.end763 ], [ %beglist.addr.02448, %while.cond526.preheader ], [ %beglist.addr.7, %while.cond526.backedge ], [ %beglist.addr.5, %while.body522 ], [ %beglist.addr.5, %if.end513 ], [ %beglist.addr.4, %while.body341 ], [ %beglist.addr.4, %if.end332 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %3, i64 56, i32 8, i1 false), !tbaa.struct !7
  %tobool7 = icmp eq i8 %call13, 0
  br i1 %tobool7, label %while.end1698, label %while.body

while.end1698:                                    ; preds = %sw.epilog1697, %while.cond.preheader
  %beglist.addr.0.lcssa = phi %struct.sv** [ %beglist, %while.cond.preheader ], [ %beglist.addr.53, %sw.epilog1697 ]
  call void @llvm.lifetime.end(i64 56, i8* %3) #1
  ret %struct.sv** %beglist.addr.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_packlist(%struct.sv* %cat, i8* %pat, i8* %patend, %struct.sv** %beglist, %struct.sv** %endlist) #0 {
entry:
  %sym = alloca %struct.tempsym_t, align 8
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %patptr = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 0
  store i8* %pat, i8** %patptr, align 8, !tbaa !0
  %patend1 = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 1
  store i8* %patend, i8** %patend1, align 8, !tbaa !0
  %flags = getelementptr inbounds %struct.tempsym_t* %sym, i64 0, i32 8
  store i32 1, i32* %flags, align 8, !tbaa !3
  %call = call fastcc %struct.sv** @S_pack_rec(%struct.sv* %cat, %struct.tempsym_t* %sym, %struct.sv** %beglist, %struct.sv** %endlist) #7
  call void @llvm.lifetime.end(i64 56, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.op* @Perl_pp_pack() #0 {
entry:
  %sym.i = alloca %struct.tempsym_t, align 8
  %fromlen = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %4, i64 0, i32 3
  %5 = load i64* %op_targ, align 8, !tbaa !4
  %6 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %6, i64 %5
  %7 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr1 = getelementptr inbounds %struct.sv** %1, i64 %add.ptr.sum
  %8 = load %struct.sv** %incdec.ptr1, align 8, !tbaa !0
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %9, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  store i64 %12, i64* %fromlen, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %10 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %8, i64* %fromlen, i32 2) #8
  %.pre = load i64* %fromlen, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = phi i64 [ %12, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  %add.ptr4 = getelementptr inbounds i8* %cond, i64 %14
  %incdec.ptr1.sum = add i64 %idx.ext, 2
  %incdec.ptr5 = getelementptr inbounds %struct.sv** %1, i64 %incdec.ptr1.sum
  call void @Perl_sv_setpvn(%struct.sv* %7, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 0) #8
  %add.ptr6 = getelementptr inbounds %struct.sv** %0, i64 1
  %15 = bitcast %struct.tempsym_t* %sym.i to i8*
  call void @llvm.lifetime.start(i64 56, i8* %15) #1
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 56, i32 8, i1 false) #1
  %patptr.i = getelementptr inbounds %struct.tempsym_t* %sym.i, i64 0, i32 0
  store i8* %cond, i8** %patptr.i, align 8, !tbaa !0
  %patend1.i = getelementptr inbounds %struct.tempsym_t* %sym.i, i64 0, i32 1
  store i8* %add.ptr4, i8** %patend1.i, align 8, !tbaa !0
  %flags.i = getelementptr inbounds %struct.tempsym_t* %sym.i, i64 0, i32 8
  store i32 1, i32* %flags.i, align 8, !tbaa !3
  %call.i = call fastcc %struct.sv** @S_pack_rec(%struct.sv* %7, %struct.tempsym_t* %sym.i, %struct.sv** %incdec.ptr5, %struct.sv** %add.ptr6) #8
  call void @llvm.lifetime.end(i64 56, i8* %15) #1
  %sv_flags7 = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %16 = load i32* %sv_flags7, align 4, !tbaa !3
  %and8 = and i32 %16, 16384
  %tobool = icmp eq i32 %and8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call9 = call i32 @Perl_mg_set(%struct.sv* %7) #8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr11.sum = add i64 %idx.ext, 1
  %incdec.ptr12 = getelementptr inbounds %struct.sv** %17, i64 %add.ptr11.sum
  store %struct.sv* %7, %struct.sv** %incdec.ptr12, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr12, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next = getelementptr inbounds %struct.op* %18, i64 0, i32 0
  %19 = load %struct.op** %op_next, align 8, !tbaa !0
  ret %struct.op* %19
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc signext i8 @S_next_symbol(%struct.tempsym_t* nocapture %symptr) #0 {
entry:
  %savsym.sroa.0 = alloca [36 x i8], align 8
  %savsym.sroa.2 = alloca [16 x i8], align 8
  %patptr1 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 0
  %0 = load i8** %patptr1, align 8, !tbaa !0
  %patend2 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 1
  %1 = load i8** %patend2, align 8, !tbaa !0
  %flags = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 8
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, -5
  store i32 %and, i32* %flags, align 4, !tbaa !3
  %cmp484 = icmp ult i8* %0, %1
  br i1 %cmp484, label %while.body, label %return

while.body:                                       ; preds = %entry, %while.cond.backedge
  %patptr.0485 = phi i8* [ %patptr.0.be, %while.cond.backedge ], [ %0, %entry ]
  %3 = load i8* %patptr.0485, align 1, !tbaa !1
  %conv451 = zext i8 %3 to i32
  switch i8 %3, label %if.else [
    i8 32, label %if.then
    i8 9, label %if.then
    i8 10, label %if.then
    i8 13, label %if.then
    i8 12, label %if.then
  ]

if.then:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %incdec.ptr = getelementptr inbounds i8* %patptr.0485, i64 1
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %incdec.ptr24 = getelementptr inbounds i8* %patptr.0485, i64 1
  switch i8 %3, label %while.cond110.preheader [
    i8 35, label %while.cond25.preheader
    i8 44, label %if.then43
    i8 40, label %if.then79
  ]

while.cond25.preheader:                           ; preds = %if.else
  %cmp26474 = icmp ult i8* %incdec.ptr24, %1
  br i1 %cmp26474, label %land.rhs, label %while.end

while.cond25:                                     ; preds = %land.rhs
  %cmp26 = icmp ult i8* %incdec.ptr32, %1
  br i1 %cmp26, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond25.preheader, %while.cond25
  %patptr.1475 = phi i8* [ %incdec.ptr32, %while.cond25 ], [ %incdec.ptr24, %while.cond25.preheader ]
  %4 = load i8* %patptr.1475, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %4, 10
  %incdec.ptr32 = getelementptr inbounds i8* %patptr.1475, i64 1
  br i1 %cmp29, label %while.end, label %while.cond25

while.end:                                        ; preds = %while.cond25, %land.rhs, %while.cond25.preheader
  %cmp26.lcssa = phi i1 [ false, %while.cond25.preheader ], [ true, %land.rhs ], [ false, %while.cond25 ]
  %patptr.1.lcssa = phi i8* [ %incdec.ptr24, %while.cond25.preheader ], [ %patptr.1475, %land.rhs ], [ %incdec.ptr32, %while.cond25 ]
  %incdec.ptr36 = getelementptr inbounds i8* %patptr.1.lcssa, i64 1
  %incdec.ptr36.patptr.1 = select i1 %cmp26.lcssa, i8* %incdec.ptr36, i8* %patptr.1.lcssa
  br label %while.cond.backedge

if.then43:                                        ; preds = %if.else
  %5 = load i32* %flags, align 4, !tbaa !3
  %and45 = and i32 %5, 2
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %land.lhs.true, label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.then43
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp48 = icmp eq %struct.sv* %7, null
  br i1 %cmp48, label %lor.lhs.false62, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings51 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings51, align 8, !tbaa !0
  %cmp52 = icmp eq %struct.sv* %9, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp52, label %lor.lhs.false62, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings55 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings55, align 8, !tbaa !0
  %cmp56 = icmp eq %struct.sv* %11, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp56, label %if.then70, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true54
  %12 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings59 = getelementptr inbounds %struct.cop* %12, i64 0, i32 14
  %13 = load %struct.sv** %cop_warnings59, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %15, i64 10
  %16 = load i8* %arrayidx, align 1, !tbaa !1
  %and61 = and i8 %16, 16
  %tobool = icmp eq i8 %and61, 0
  br i1 %tobool, label %lor.lhs.false62, label %if.then70

lor.lhs.false62:                                  ; preds = %lor.lhs.false58, %land.lhs.true50, %land.lhs.true
  %17 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings63 = getelementptr inbounds %struct.cop* %17, i64 0, i32 14
  %18 = load %struct.sv** %cop_warnings63, align 8, !tbaa !0
  %cmp64 = icmp eq %struct.sv* %18, null
  br i1 %cmp64, label %land.lhs.true66, label %while.cond.backedge

land.lhs.true66:                                  ; preds = %lor.lhs.false62
  %19 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and68 = and i8 %19, 1
  %tobool69 = icmp eq i8 %and68, 0
  br i1 %tobool69, label %while.cond.backedge, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false58, %land.lhs.true66, %land.lhs.true54
  %20 = load i32* %flags, align 4, !tbaa !3
  %or = or i32 %20, 2
  store i32 %or, i32* %flags, align 4, !tbaa !3
  %and73 = and i32 %20, 1
  %tobool74 = icmp ne i32 %and73, 0
  %cond = select i1 %tobool74, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i32, i8*, ...)* @Perl_warner(i32 42, i8* getelementptr inbounds ([23 x i8]* @.str16, i64 0, i64 0), i8* %cond) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then70, %lor.lhs.false62, %if.then43, %if.then, %land.lhs.true66, %while.end
  %patptr.0.be = phi i8* [ %incdec.ptr, %if.then ], [ %incdec.ptr24, %if.then70 ], [ %incdec.ptr24, %land.lhs.true66 ], [ %incdec.ptr24, %lor.lhs.false62 ], [ %incdec.ptr24, %if.then43 ], [ %incdec.ptr36.patptr.1, %while.end ]
  %cmp = icmp ult i8* %patptr.0.be, %1
  br i1 %cmp, label %while.body, label %return

if.then79:                                        ; preds = %if.else
  %21 = load i8* %incdec.ptr24, align 1, !tbaa !1
  %.off = add i8 %21, -48
  %22 = icmp ult i8 %.off, 10
  br i1 %22, label %if.then95, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.then79
  switch i8 %21, label %if.end100 [
    i8 42, label %if.then95
    i8 91, label %if.then95
  ]

if.then95:                                        ; preds = %lor.lhs.false87, %lor.lhs.false87, %if.then79
  %23 = load i32* %flags, align 4, !tbaa !3
  %and97 = and i32 %23, 1
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i8* %cond99) #8
  br label %if.end100

if.end100:                                        ; preds = %lor.lhs.false87, %if.then95
  %grpbeg = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 2
  store i8* %incdec.ptr24, i8** %grpbeg, align 8, !tbaa !0
  %call = call fastcc i8* @S_group_end(i8* %incdec.ptr24, i8* %1, i8 signext 41) #7
  %grpend = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 3
  store i8* %call, i8** %grpend, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %call, i64 1
  %level = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 7
  %24 = load i32* %level, align 4, !tbaa !3
  %cmp101 = icmp sgt i32 %24, 99
  br i1 %cmp101, label %if.then103, label %while.cond110.preheader

if.then103:                                       ; preds = %if.end100
  %25 = load i32* %flags, align 4, !tbaa !3
  %and105 = and i32 %25, 1
  %tobool106 = icmp ne i32 %and105, 0
  %cond107 = select i1 %tobool106, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i8* %cond107) #8
  br label %while.cond110.preheader

while.cond110.preheader:                          ; preds = %if.else, %if.end100, %if.then103
  %patptr.2.ph = phi i8* [ %add.ptr, %if.then103 ], [ %add.ptr, %if.end100 ], [ %incdec.ptr24, %if.else ]
  %cmp111469 = icmp ult i8* %patptr.2.ph, %1
  br i1 %cmp111469, label %while.body113, label %if.else315

while.body113:                                    ; preds = %while.cond110.preheader, %if.end167
  %patptr.2471 = phi i8* [ %incdec.ptr169, %if.end167 ], [ %patptr.2.ph, %while.cond110.preheader ]
  %code.0470 = phi i32 [ %or168, %if.end167 ], [ %conv451, %while.cond110.preheader ]
  %26 = load i8* %patptr.2471, align 1, !tbaa !1
  %cond325 = icmp eq i8 %26, 33
  %. = select i1 %cond325, i32 256, i32 0
  br i1 %cond325, label %if.end118, label %if.then174

if.end118:                                        ; preds = %while.body113
  %and119 = and i32 %code.0470, 255
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i32 %and119, i64 9)
  %tobool121 = icmp eq i8* %memchr, null
  br i1 %tobool121, label %if.then122, label %if.end128

if.then122:                                       ; preds = %if.end118
  %27 = load i32* %flags, align 4, !tbaa !3
  %and125 = and i32 %27, 1
  %tobool126 = icmp ne i32 %and125, 0
  %cond127 = select i1 %tobool126, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str22, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* %cond127) #8
  br label %if.end128

if.end128:                                        ; preds = %if.end118, %if.then122
  %28 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings129 = getelementptr inbounds %struct.cop* %28, i64 0, i32 14
  %29 = load %struct.sv** %cop_warnings129, align 8, !tbaa !0
  %cmp130 = icmp eq %struct.sv* %29, null
  br i1 %cmp130, label %lor.lhs.false148, label %land.lhs.true132

land.lhs.true132:                                 ; preds = %if.end128
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings133 = getelementptr inbounds %struct.cop* %30, i64 0, i32 14
  %31 = load %struct.sv** %cop_warnings133, align 8, !tbaa !0
  %cmp134 = icmp eq %struct.sv* %31, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp134, label %lor.lhs.false148, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %land.lhs.true132
  %32 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings137 = getelementptr inbounds %struct.cop* %32, i64 0, i32 14
  %33 = load %struct.sv** %cop_warnings137, align 8, !tbaa !0
  %cmp138 = icmp eq %struct.sv* %33, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp138, label %if.then156, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %land.lhs.true136
  %34 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings141 = getelementptr inbounds %struct.cop* %34, i64 0, i32 14
  %35 = load %struct.sv** %cop_warnings141, align 8, !tbaa !0
  %sv_any142 = getelementptr inbounds %struct.sv* %35, i64 0, i32 0
  %36 = load i8** %sv_any142, align 8, !tbaa !0
  %xpv_pv143 = bitcast i8* %36 to i8**
  %37 = load i8** %xpv_pv143, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i8* %37, i64 10
  %38 = load i8* %arrayidx144, align 1, !tbaa !1
  %and146 = and i8 %38, 16
  %tobool147 = icmp eq i8 %and146, 0
  br i1 %tobool147, label %lor.lhs.false148, label %if.then156

lor.lhs.false148:                                 ; preds = %lor.lhs.false140, %land.lhs.true132, %if.end128
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings149 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings149, align 8, !tbaa !0
  %cmp150 = icmp eq %struct.sv* %40, null
  br i1 %cmp150, label %land.lhs.true152, label %if.end167

land.lhs.true152:                                 ; preds = %lor.lhs.false148
  %41 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and154 = and i8 %41, 1
  %tobool155 = icmp eq i8 %and154, 0
  br i1 %tobool155, label %if.end167, label %if.then156

if.then156:                                       ; preds = %lor.lhs.false140, %land.lhs.true152, %land.lhs.true136
  %and157 = and i32 %., %code.0470
  %tobool158 = icmp eq i32 %and157, 0
  br i1 %tobool158, label %if.end167, label %if.then159

if.then159:                                       ; preds = %if.then156
  %42 = load i8* %patptr.2471, align 1, !tbaa !1
  %conv160 = sext i8 %42 to i32
  %43 = load i32* %flags, align 4, !tbaa !3
  %and163 = and i32 %43, 1
  %tobool164 = icmp ne i32 %and163, 0
  %cond165 = select i1 %tobool164, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i32, i8*, ...)* @Perl_warner(i32 42, i8* getelementptr inbounds ([41 x i8]* @.str23, i64 0, i64 0), i32 %conv160, i32 %and119, i8* %cond165) #8
  br label %if.end167

if.end167:                                        ; preds = %if.then156, %land.lhs.true152, %if.then159, %lor.lhs.false148
  %or168 = or i32 %., %code.0470
  %incdec.ptr169 = getelementptr inbounds i8* %patptr.2471, i64 1
  %cmp111 = icmp ult i8* %incdec.ptr169, %1
  br i1 %cmp111, label %while.body113, label %if.else315

if.then174:                                       ; preds = %while.body113
  %.off460 = add i8 %26, -48
  %44 = icmp ult i8 %.off460, 10
  br i1 %44, label %if.then182, label %if.else184

if.then182:                                       ; preds = %if.then174
  %length = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  %call183 = call fastcc i8* @S_get_num(i8* %patptr.2471, i32* %length) #7
  %howlen = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  store i32 1, i32* %howlen, align 4, !tbaa !1
  br label %while.cond232.preheader

if.else184:                                       ; preds = %if.then174
  switch i8 %26, label %if.else226 [
    i8 42, label %if.then188
    i8 91, label %if.then195
  ]

if.then188:                                       ; preds = %if.else184
  %incdec.ptr189 = getelementptr inbounds i8* %patptr.2471, i64 1
  %howlen190 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  store i32 2, i32* %howlen190, align 4, !tbaa !1
  br label %while.cond232.preheader

if.then195:                                       ; preds = %if.else184
  %incdec.ptr196 = getelementptr inbounds i8* %patptr.2471, i64 1
  %howlen197 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  store i32 1, i32* %howlen197, align 4, !tbaa !1
  %call198 = call fastcc i8* @S_group_end(i8* %incdec.ptr196, i8* %1, i8 signext 93) #7
  %add.ptr199 = getelementptr inbounds i8* %call198, i64 1
  %45 = load i8* %incdec.ptr196, align 1, !tbaa !1
  %.off461 = add i8 %45, -48
  %46 = icmp ult i8 %.off461, 10
  br i1 %46, label %if.then207, label %if.else219

if.then207:                                       ; preds = %if.then195
  %length208 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  %call209 = call fastcc i8* @S_get_num(i8* %incdec.ptr196, i32* %length208) #7
  %47 = load i8* %call209, align 1, !tbaa !1
  %cmp211 = icmp eq i8 %47, 93
  br i1 %cmp211, label %while.cond232.preheader, label %if.then213

if.then213:                                       ; preds = %if.then207
  %48 = load i32* %flags, align 4, !tbaa !3
  %and215 = and i32 %48, 1
  %tobool216 = icmp ne i32 %and215, 0
  %cond217 = select i1 %tobool216, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i8* %cond217) #8
  br label %while.cond232.preheader

if.else219:                                       ; preds = %if.then195
  %savsym.sroa.0.0.idx341 = getelementptr inbounds [36 x i8]* %savsym.sroa.0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 36, i8* %savsym.sroa.0.0.idx341)
  %savsym.sroa.2.0.idx = getelementptr inbounds [16 x i8]* %savsym.sroa.2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* %savsym.sroa.2.0.idx)
  %savsym.sroa.0.0.cast = bitcast %struct.tempsym_t* %symptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.0.0.idx341, i8* %savsym.sroa.0.0.cast, i64 36, i32 8, i1 false)
  %savsym.sroa.1.36.idx330 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  %savsym.sroa.2.40.cast = bitcast i32* %howlen197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.2.0.idx, i8* %savsym.sroa.2.40.cast, i64 16, i32 8, i1 false)
  store i8* %call198, i8** %patend2, align 8, !tbaa !0
  store i8* %incdec.ptr196, i8** %patptr1, align 8, !tbaa !0
  %call223 = call fastcc i32 @S_measure_struct(%struct.tempsym_t* %symptr) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.0.0.cast, i8* %savsym.sroa.0.0.idx341, i64 36, i32 8, i1 false)
  store i32 %call223, i32* %savsym.sroa.1.36.idx330, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.2.40.cast, i8* %savsym.sroa.2.0.idx, i64 16, i32 8, i1 false)
  call void @llvm.lifetime.end(i64 36, i8* %savsym.sroa.0.0.idx341)
  call void @llvm.lifetime.end(i64 16, i8* %savsym.sroa.2.0.idx)
  br label %while.cond232.preheader

if.else226:                                       ; preds = %if.else184
  %howlen227 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  store i32 0, i32* %howlen227, align 4, !tbaa !1
  %length228 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  store i32 1, i32* %length228, align 4, !tbaa !3
  br label %while.cond232.preheader

while.cond232.preheader:                          ; preds = %if.then188, %if.else219, %if.then213, %if.else226, %if.then182, %if.then207
  %patptr.3.ph = phi i8* [ %add.ptr199, %if.then207 ], [ %call183, %if.then182 ], [ %patptr.2471, %if.else226 ], [ %add.ptr199, %if.then213 ], [ %add.ptr199, %if.else219 ], [ %incdec.ptr189, %if.then188 ]
  %cmp233464 = icmp ult i8* %patptr.3.ph, %1
  br i1 %cmp233464, label %while.body235, label %if.end318

while.body235:                                    ; preds = %while.cond232.preheader, %while.cond232.backedge
  %patptr.3465 = phi i8* [ %patptr.3.be, %while.cond232.backedge ], [ %patptr.3.ph, %while.cond232.preheader ]
  %49 = load i8* %patptr.3465, align 1, !tbaa !1
  switch i8 %49, label %if.end318 [
    i8 32, label %if.then255
    i8 9, label %if.then255
    i8 10, label %if.then255
    i8 13, label %if.then255
    i8 12, label %if.then255
    i8 35, label %while.cond263
    i8 47, label %if.then283
  ]

if.then255:                                       ; preds = %while.body235, %while.body235, %while.body235, %while.body235, %while.body235
  %incdec.ptr256 = getelementptr inbounds i8* %patptr.3465, i64 1
  br label %while.cond232.backedge

while.cond232.backedge:                           ; preds = %if.then255, %while.end273
  %patptr.3.be = phi i8* [ %incdec.ptr256, %if.then255 ], [ %incdec.ptr277.patptr.4, %while.end273 ]
  %cmp233 = icmp ult i8* %patptr.3.be, %1
  br i1 %cmp233, label %while.body235, label %if.end318

while.cond263:                                    ; preds = %while.body235, %land.rhs266
  %patptr.3.pn = phi i8* [ %patptr.4, %land.rhs266 ], [ %patptr.3465, %while.body235 ]
  %patptr.4 = getelementptr inbounds i8* %patptr.3.pn, i64 1
  %cmp264 = icmp ult i8* %patptr.4, %1
  br i1 %cmp264, label %land.rhs266, label %while.end273

land.rhs266:                                      ; preds = %while.cond263
  %50 = load i8* %patptr.4, align 1, !tbaa !1
  %cmp268 = icmp eq i8 %50, 10
  br i1 %cmp268, label %while.end273, label %while.cond263

while.end273:                                     ; preds = %land.rhs266, %while.cond263
  %cmp264.lcssa = phi i1 [ true, %land.rhs266 ], [ false, %while.cond263 ]
  %incdec.ptr277 = getelementptr inbounds i8* %patptr.3.pn, i64 2
  %incdec.ptr277.patptr.4 = select i1 %cmp264.lcssa, i8* %incdec.ptr277, i8* %patptr.4
  br label %while.cond232.backedge

if.then283:                                       ; preds = %while.body235
  %51 = load i32* %flags, align 4, !tbaa !3
  %or285 = or i32 %51, 4
  store i32 %or285, i32* %flags, align 4, !tbaa !3
  %incdec.ptr286 = getelementptr inbounds i8* %patptr.3465, i64 1
  %cmp287 = icmp ult i8* %incdec.ptr286, %1
  br i1 %cmp287, label %land.lhs.true289, label %if.end318

land.lhs.true289:                                 ; preds = %if.then283
  %52 = load i8* %incdec.ptr286, align 1, !tbaa !1
  %.off462 = add i8 %52, -48
  %53 = icmp ult i8 %.off462, 10
  br i1 %53, label %if.then305, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %land.lhs.true289
  switch i8 %52, label %if.end318 [
    i8 42, label %if.then305
    i8 91, label %if.then305
  ]

if.then305:                                       ; preds = %lor.lhs.false297, %lor.lhs.false297, %land.lhs.true289
  %and307 = and i32 %51, 1
  %tobool308 = icmp ne i32 %and307, 0
  %cond309 = select i1 %tobool308, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str25, i64 0, i64 0), i8* %cond309) #8
  br label %if.end318

if.else315:                                       ; preds = %if.end167, %while.cond110.preheader
  %patptr.2.lcssa = phi i8* [ %patptr.2.ph, %while.cond110.preheader ], [ %incdec.ptr169, %if.end167 ]
  %code.0.lcssa = phi i32 [ %conv451, %while.cond110.preheader ], [ %or168, %if.end167 ]
  %howlen316 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  store i32 0, i32* %howlen316, align 4, !tbaa !1
  %length317 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  store i32 1, i32* %length317, align 4, !tbaa !3
  br label %if.end318

if.end318:                                        ; preds = %while.cond232.preheader, %while.body235, %while.cond232.backedge, %lor.lhs.false297, %if.then283, %if.then305, %if.else315
  %code.0467 = phi i32 [ %code.0470, %if.then305 ], [ %code.0470, %if.then283 ], [ %code.0.lcssa, %if.else315 ], [ %code.0470, %lor.lhs.false297 ], [ %code.0470, %while.cond232.backedge ], [ %code.0470, %while.body235 ], [ %code.0470, %while.cond232.preheader ]
  %patptr.5 = phi i8* [ %incdec.ptr286, %if.then305 ], [ %incdec.ptr286, %if.then283 ], [ %patptr.2.lcssa, %if.else315 ], [ %incdec.ptr286, %lor.lhs.false297 ], [ %patptr.3.be, %while.cond232.backedge ], [ %patptr.3465, %while.body235 ], [ %patptr.3.ph, %while.cond232.preheader ]
  %code319 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 4
  store i32 %code.0467, i32* %code319, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %while.cond.backedge, %if.end318
  %storemerge = phi i8* [ %patptr.5, %if.end318 ], [ %0, %entry ], [ %patptr.0.be, %while.cond.backedge ]
  %retval.0 = phi i8 [ 1, %if.end318 ], [ 0, %entry ], [ 0, %while.cond.backedge ]
  store i8* %storemerge, i8** %patptr1, align 8, !tbaa !0
  ret i8 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #2

; Function Attrs: optsize
declare i64 @Perl_sv_len(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #2

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv(%struct.sv*) #2

; Function Attrs: optsize
declare i8* @Perl_uvchr_to_utf8_flags(i8*, i64, i64) #2

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #2

; Function Attrs: optsize
declare signext i16 @htovs(i16 signext) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_is_an_int(i8* %s, i64 %l) #0 {
entry:
  %n_a = alloca i64, align 8
  %call = call %struct.sv* @Perl_newSVpvn(i8* %s, i64 %l) #8
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %n_a, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %n_a, i32 2) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call2, %cond.false ]
  %5 = load i8* %s, align 1, !tbaa !1
  %tobool28 = icmp eq i8 %5, 0
  br i1 %tobool28, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end, %sw.epilog
  %6 = phi i8 [ %7, %sw.epilog ], [ %5, %cond.end ]
  %ignore.033 = phi i8 [ %ignore.1, %sw.epilog ], [ 0, %cond.end ]
  %skip.032 = phi i8 [ %skip.1, %sw.epilog ], [ 1, %cond.end ]
  %out.031 = phi i8* [ %out.1, %sw.epilog ], [ %cond, %cond.end ]
  %s.addr.029 = phi i8* [ %incdec.ptr9, %sw.epilog ], [ %s, %cond.end ]
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.epilog
    i32 43, label %sw.bb
    i32 48, label %sw.bb4
    i32 49, label %sw.bb4
    i32 50, label %sw.bb4
    i32 51, label %sw.bb4
    i32 52, label %sw.bb4
    i32 53, label %sw.bb4
    i32 54, label %sw.bb4
    i32 55, label %sw.bb4
    i32 56, label %sw.bb4
    i32 57, label %sw.bb4
    i32 46, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.body
  %tobool3 = icmp eq i8 %skip.032, 0
  br i1 %tobool3, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @Perl_sv_free(%struct.sv* %call) #8
  br label %return

sw.bb4:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %tobool5 = icmp eq i8 %ignore.033, 0
  br i1 %tobool5, label %if.then6, label %sw.epilog

if.then6:                                         ; preds = %sw.bb4
  %incdec.ptr = getelementptr inbounds i8* %out.031, i64 1
  store i8 %6, i8* %out.031, align 1, !tbaa !1
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @Perl_sv_free(%struct.sv* %call) #8
  br label %return

sw.epilog:                                        ; preds = %sw.bb, %sw.bb4, %if.then6, %sw.bb8, %while.body
  %out.1 = phi i8* [ %out.031, %sw.bb8 ], [ %out.031, %sw.bb4 ], [ %incdec.ptr, %if.then6 ], [ %out.031, %sw.bb ], [ %out.031, %while.body ]
  %skip.1 = phi i8 [ %skip.032, %sw.bb8 ], [ 0, %sw.bb4 ], [ 0, %if.then6 ], [ %skip.032, %sw.bb ], [ %skip.032, %while.body ]
  %ignore.1 = phi i8 [ 1, %sw.bb8 ], [ %ignore.033, %sw.bb4 ], [ 0, %if.then6 ], [ %ignore.033, %sw.bb ], [ %ignore.033, %while.body ]
  %incdec.ptr9 = getelementptr inbounds i8* %s.addr.029, i64 1
  %7 = load i8* %incdec.ptr9, align 1, !tbaa !1
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %sw.epilog, %cond.end
  %out.0.lcssa = phi i8* [ %cond, %cond.end ], [ %out.1, %sw.epilog ]
  %incdec.ptr10 = getelementptr inbounds i8* %out.0.lcssa, i64 1
  store i8 0, i8* %out.0.lcssa, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sv_any11 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %8 = load i8** %sv_any11, align 8, !tbaa !0
  %xpv_cur12 = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur12 to i64*
  store i64 %sub.ptr.sub, i64* %9, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.then
  %retval.0 = phi %struct.sv* [ null, %sw.default ], [ null, %if.then ], [ %call, %while.end ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_div128(%struct.sv* %pnum, i8* nocapture %done) #0 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %pnum, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %pnum, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %pnum, i64* %len, i32 2) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  store i8 1, i8* %done, align 1, !tbaa !1
  %5 = load i8* %cond, align 1, !tbaa !1
  %tobool21 = icmp eq i8 %5, 0
  br i1 %tobool21, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end, %if.end
  %6 = phi i8 [ %7, %if.end ], [ %5, %cond.end ]
  %m.023 = phi i32 [ %and2, %if.end ], [ 0, %cond.end ]
  %t.022 = phi i8* [ %incdec.ptr, %if.end ], [ %cond, %cond.end ]
  %mul = mul nsw i32 %m.023, 10
  %conv = sext i8 %6 to i32
  %sub = add i32 %mul, -48
  %add = add i32 %sub, %conv
  %and2 = and i32 %add, 127
  %shr = ashr i32 %add, 7
  %tobool3 = icmp eq i32 %shr, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i8 0, i8* %done, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %add4 = add nsw i32 %shr, 48
  %conv5 = trunc i32 %add4 to i8
  %incdec.ptr = getelementptr inbounds i8* %t.022, i64 1
  store i8 %conv5, i8* %t.022, align 1, !tbaa !1
  %7 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %cond.end
  %m.0.lcssa = phi i32 [ 0, %cond.end ], [ %and2, %if.end ]
  %t.0.lcssa = phi i8* [ %cond, %cond.end ], [ %incdec.ptr, %if.end ]
  %incdec.ptr6 = getelementptr inbounds i8* %t.0.lcssa, i64 1
  store i8 0, i8* %t.0.lcssa, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sv_any7 = getelementptr inbounds %struct.sv* %pnum, i64 0, i32 0
  %8 = load i8** %sv_any7, align 8, !tbaa !0
  %xpv_cur8 = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur8 to i64*
  store i64 %sub.ptr.sub, i64* %9, align 8, !tbaa !4
  ret i32 %m.0.lcssa
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #2

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #2

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #3

; Function Attrs: optsize
declare i64 @htovl(i64) #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(%struct.sv*) #2

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @S_group_end(i8* %patptr, i8* %patend, i8 signext %ender) #0 {
entry:
  %cmp77 = icmp ult i8* %patptr, %patend
  br i1 %cmp77, label %while.body, label %while.end53

while.body:                                       ; preds = %while.cond.backedge, %entry
  %patptr.addr.078 = phi i8* [ %patptr, %entry ], [ %patptr.addr.0.be, %while.cond.backedge ]
  %incdec.ptr = getelementptr inbounds i8* %patptr.addr.078, i64 1
  %0 = load i8* %patptr.addr.078, align 1, !tbaa !1
  switch i8 %0, label %if.else [
    i8 32, label %while.cond.backedge
    i8 9, label %while.cond.backedge
    i8 10, label %while.cond.backedge
    i8 13, label %while.cond.backedge
    i8 12, label %while.cond.backedge
  ]

if.else:                                          ; preds = %while.body
  %cmp20 = icmp eq i8 %0, %ender
  br i1 %cmp20, label %return, label %if.else23

if.else23:                                        ; preds = %if.else
  switch i8 %0, label %while.cond.backedge [
    i8 35, label %while.cond28.preheader
    i8 40, label %if.then40
    i8 91, label %if.then46
  ]

while.cond28.preheader:                           ; preds = %if.else23
  %cmp2974 = icmp ult i8* %incdec.ptr, %patend
  br i1 %cmp2974, label %land.rhs, label %while.cond.backedge

while.cond28:                                     ; preds = %land.rhs
  %cmp29 = icmp ult i8* %incdec.ptr35, %patend
  br i1 %cmp29, label %land.rhs, label %while.cond.backedge

land.rhs:                                         ; preds = %while.cond28.preheader, %while.cond28
  %patptr.addr.175 = phi i8* [ %incdec.ptr35, %while.cond28 ], [ %incdec.ptr, %while.cond28.preheader ]
  %1 = load i8* %patptr.addr.175, align 1, !tbaa !1
  %cmp32 = icmp eq i8 %1, 10
  %incdec.ptr35 = getelementptr inbounds i8* %patptr.addr.175, i64 1
  br i1 %cmp32, label %while.cond.backedge, label %while.cond28

if.then40:                                        ; preds = %if.else23
  %call = tail call fastcc i8* @S_group_end(i8* %incdec.ptr, i8* %patend, i8 signext 41) #7
  %add.ptr41 = getelementptr inbounds i8* %call, i64 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond28.preheader, %land.rhs, %while.cond28, %if.then40, %if.then46, %while.body, %while.body, %while.body, %while.body, %while.body, %if.else23
  %patptr.addr.0.be = phi i8* [ %incdec.ptr, %while.body ], [ %add.ptr41, %if.then40 ], [ %add.ptr48, %if.then46 ], [ %incdec.ptr, %while.body ], [ %incdec.ptr, %while.body ], [ %incdec.ptr, %while.body ], [ %incdec.ptr, %while.body ], [ %incdec.ptr, %if.else23 ], [ %incdec.ptr, %while.cond28.preheader ], [ %patptr.addr.175, %land.rhs ], [ %incdec.ptr35, %while.cond28 ]
  %cmp = icmp ult i8* %patptr.addr.0.be, %patend
  br i1 %cmp, label %while.body, label %while.end53

if.then46:                                        ; preds = %if.else23
  %call47 = tail call fastcc i8* @S_group_end(i8* %incdec.ptr, i8* %patend, i8 signext 93) #7
  %add.ptr48 = getelementptr inbounds i8* %call47, i64 1
  br label %while.cond.backedge

while.end53:                                      ; preds = %while.cond.backedge, %entry
  %conv54 = sext i8 %ender to i32
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0), i32 %conv54) #8
  br label %return

return:                                           ; preds = %if.else, %while.end53
  %retval.0 = phi i8* [ null, %while.end53 ], [ %patptr.addr.078, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @S_get_num(i8* %patptr, i32* nocapture %lenptr) #0 {
entry:
  %0 = load i8* %patptr, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
  %sub = add nsw i32 %conv, -48
  %patptr.addr.016 = getelementptr inbounds i8* %patptr, i64 1
  %1 = load i8* %patptr.addr.016, align 1, !tbaa !1
  %.off17 = add i8 %1, -48
  %2 = icmp ult i8 %.off17, 10
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end
  %3 = phi i8 [ %5, %if.end ], [ %1, %entry ]
  %patptr.addr.019 = phi i8* [ %patptr.addr.0, %if.end ], [ %patptr.addr.016, %entry ]
  %len.018 = phi i32 [ %add, %if.end ], [ %sub, %entry ]
  %cmp6 = icmp sgt i32 %len.018, 214748363
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str30, i64 0, i64 0)) #8
  %.pre = load i8* %patptr.addr.019, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = phi i8 [ %.pre, %if.then ], [ %3, %while.body ]
  %mul = mul nsw i32 %len.018, 10
  %conv9 = sext i8 %4 to i32
  %sub10 = add i32 %mul, -48
  %add = add i32 %sub10, %conv9
  %patptr.addr.0 = getelementptr inbounds i8* %patptr.addr.019, i64 1
  %5 = load i8* %patptr.addr.0, align 1, !tbaa !1
  %.off = add i8 %5, -48
  %6 = icmp ult i8 %.off, 10
  br i1 %6, label %while.body, label %while.end

while.end:                                        ; preds = %if.end, %entry
  %patptr.addr.0.lcssa = phi i8* [ %patptr.addr.016, %entry ], [ %patptr.addr.0, %if.end ]
  %len.0.lcssa = phi i32 [ %sub, %entry ], [ %add, %if.end ]
  store i32 %len.0.lcssa, i32* %lenptr, align 4, !tbaa !3
  ret i8* %patptr.addr.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_measure_struct(%struct.tempsym_t* nocapture %symptr) #0 {
entry:
  %savsym.sroa.0 = alloca { i8*, i8* }, align 8
  %savsym.sroa.3 = alloca [24 x i8], align 8
  %call129 = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #7
  %tobool130 = icmp eq i8 %call129, 0
  br i1 %tobool130, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %code = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 4
  %howlen = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 6
  %flags22 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 8
  %savsym.sroa.0.0.cast87 = bitcast { i8*, i8* }* %savsym.sroa.0 to i8*
  %savsym.sroa.3.0.idx = getelementptr inbounds [24 x i8]* %savsym.sroa.3, i64 0, i64 0
  %savsym.sroa.0.0.cast67 = bitcast %struct.tempsym_t* %symptr to i8*
  %savsym.sroa.1.16.idx72 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 2
  %savsym.sroa.2.24.idx76 = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 3
  %savsym.sroa.3.32.cast = bitcast i32* %code to i8*
  %patptr = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 0
  %patend = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 1
  %length = getelementptr inbounds %struct.tempsym_t* %symptr, i64 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end65
  %len.0132 = phi i32 [ 0, %while.body.lr.ph ], [ %len.6, %if.end65 ]
  %total.0131 = phi i32 [ 0, %while.body.lr.ph ], [ %add66, %if.end65 ]
  %0 = load i32* %code, align 4, !tbaa !3
  %and = lshr i32 %0, 8
  %and.lobit = and i32 %and, 1
  %and3 = and i32 %0, 255
  %idxprom123 = zext i32 %and.lobit to i64
  %first = getelementptr inbounds [2 x %struct.packsize_t]* @packsize, i64 0, i64 %idxprom123, i32 1
  %1 = load i32* %first, align 8, !tbaa !3
  %sub = sub nsw i32 %and3, %1
  %2 = load i32* %howlen, align 4, !tbaa !1
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %3 = load i32* %length, align 4, !tbaa !3
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %4 = load i32* %flags22, align 4, !tbaa !3
  %and5 = and i32 %4, 1
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str26, i64 0, i64 0), i8* %cond7) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb4, %sw.bb
  %len.1 = phi i32 [ %len.0132, %while.body ], [ %len.0132, %sw.bb4 ], [ %3, %sw.bb ]
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %land.lhs.true, label %if.then18

land.lhs.true:                                    ; preds = %sw.epilog
  %size10 = getelementptr inbounds [2 x %struct.packsize_t]* @packsize, i64 0, i64 %idxprom123, i32 2
  %5 = load i32* %size10, align 4, !tbaa !3
  %cmp11 = icmp slt i32 %sub, %5
  br i1 %cmp11, label %if.end, label %if.then18

if.end:                                           ; preds = %land.lhs.true
  %idxprom12 = sext i32 %sub to i64
  %array = getelementptr inbounds [2 x %struct.packsize_t]* @packsize, i64 0, i64 %idxprom123, i32 0
  %6 = load i8** %array, align 16, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8* %6, i64 %idxprom12
  %7 = load i8* %arrayidx15, align 1, !tbaa !1
  %conv = zext i8 %7 to i32
  %and16 = and i32 %conv, 63
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end65

if.then18:                                        ; preds = %if.end, %land.lhs.true, %sw.epilog
  %8 = load i32* %code, align 4, !tbaa !3
  switch i32 %8, label %sw.default [
    i32 64, label %sw.bb26
    i32 47, label %sw.bb26
    i32 85, label %sw.bb26
    i32 119, label %sw.bb26
    i32 117, label %sw.bb26
    i32 37, label %if.end65
    i32 40, label %sw.bb33
    i32 344, label %sw.bb35
    i32 88, label %sw.bb39
    i32 376, label %sw.bb48
    i32 120, label %sw.bb58
    i32 65, label %sw.bb58
    i32 90, label %sw.bb58
    i32 97, label %sw.bb58
    i32 99, label %sw.bb58
    i32 67, label %sw.bb58
    i32 66, label %sw.bb59
    i32 98, label %sw.bb59
    i32 72, label %sw.bb60
    i32 104, label %sw.bb60
    i32 80, label %sw.bb63
  ]

sw.default:                                       ; preds = %if.then18
  %and21 = and i32 %8, 255
  %9 = load i32* %flags22, align 4, !tbaa !3
  %and23 = and i32 %9, 1
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str27, i64 0, i64 0), i32 %and21, i8* %cond25) #8
  %.pre = load i32* %code, align 4, !tbaa !3
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.then18, %if.then18, %if.then18, %if.then18, %if.then18, %sw.default
  %10 = phi i32 [ %8, %if.then18 ], [ %8, %if.then18 ], [ %8, %if.then18 ], [ %8, %if.then18 ], [ %8, %if.then18 ], [ %.pre, %sw.default ]
  %11 = load i32* %flags22, align 4, !tbaa !3
  %and29 = and i32 %11, 1
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0), i32 %10, i8* %cond31) #8
  br label %if.end65

sw.bb33:                                          ; preds = %if.then18
  call void @llvm.lifetime.start(i64 16, i8* %savsym.sroa.0.0.cast87)
  call void @llvm.lifetime.start(i64 24, i8* %savsym.sroa.3.0.idx)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.0.0.cast87, i8* %savsym.sroa.0.0.cast67, i64 16, i32 8, i1 false)
  %savsym.sroa.1.16.copyload = load i8** %savsym.sroa.1.16.idx72, align 8
  %savsym.sroa.2.24.copyload = load i8** %savsym.sroa.2.24.idx76, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.3.0.idx, i8* %savsym.sroa.3.32.cast, i64 24, i32 8, i1 false)
  store i8* %savsym.sroa.1.16.copyload, i8** %patptr, align 8, !tbaa !0
  store i8* %savsym.sroa.2.24.copyload, i8** %patend, align 8, !tbaa !0
  %call34 = call fastcc i32 @S_measure_struct(%struct.tempsym_t* %symptr) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.0.0.cast67, i8* %savsym.sroa.0.0.cast87, i64 16, i32 8, i1 false)
  store i8* %savsym.sroa.1.16.copyload, i8** %savsym.sroa.1.16.idx72, align 8
  store i8* %savsym.sroa.2.24.copyload, i8** %savsym.sroa.2.24.idx76, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %savsym.sroa.3.32.cast, i8* %savsym.sroa.3.0.idx, i64 24, i32 8, i1 false)
  call void @llvm.lifetime.end(i64 16, i8* %savsym.sroa.0.0.cast87)
  call void @llvm.lifetime.end(i64 24, i8* %savsym.sroa.3.0.idx)
  br label %if.end65

sw.bb35:                                          ; preds = %if.then18
  %tobool36 = icmp eq i32 %len.1, 0
  %.len.1 = select i1 %tobool36, i32 1, i32 %len.1
  %rem = srem i32 %total.0131, %.len.1
  br label %sw.bb39

sw.bb39:                                          ; preds = %if.then18, %sw.bb35
  %len.3 = phi i32 [ %len.1, %if.then18 ], [ %rem, %sw.bb35 ]
  %cmp40 = icmp slt i32 %total.0131, %len.3
  br i1 %cmp40, label %if.then42, label %if.end65

if.then42:                                        ; preds = %sw.bb39
  %12 = load i32* %flags22, align 4, !tbaa !3
  %and44 = and i32 %12, 1
  %tobool45 = icmp ne i32 %and44, 0
  %cond46 = select i1 %tobool45, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str29, i64 0, i64 0), i8* %cond46) #8
  br label %if.end65

sw.bb48:                                          ; preds = %if.then18
  %tobool49 = icmp eq i32 %len.1, 0
  %.len.1124 = select i1 %tobool49, i32 1, i32 %len.1
  %rem52 = srem i32 %total.0131, %.len.1124
  %tobool53 = icmp eq i32 %rem52, 0
  %sub55 = sub nsw i32 %.len.1124, %rem52
  %.sub55 = select i1 %tobool53, i32 0, i32 %sub55
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb48, %if.then18, %if.then18, %if.then18, %if.then18, %if.then18, %if.then18
  %len.5 = phi i32 [ %len.1, %if.then18 ], [ %len.1, %if.then18 ], [ %len.1, %if.then18 ], [ %len.1, %if.then18 ], [ %len.1, %if.then18 ], [ %len.1, %if.then18 ], [ %.sub55, %sw.bb48 ]
  br label %if.end65

sw.bb59:                                          ; preds = %if.then18, %if.then18
  %add = add nsw i32 %len.1, 7
  %div = sdiv i32 %add, 8
  br label %if.end65

sw.bb60:                                          ; preds = %if.then18, %if.then18
  %add61 = add nsw i32 %len.1, 1
  %div62 = sdiv i32 %add61, 2
  br label %if.end65

sw.bb63:                                          ; preds = %if.then18
  br label %if.end65

if.end65:                                         ; preds = %sw.bb26, %if.then18, %if.end, %sw.bb33, %sw.bb58, %sw.bb59, %sw.bb60, %sw.bb63, %if.then42, %sw.bb39
  %size.1 = phi i32 [ %and16, %if.end ], [ 8, %sw.bb63 ], [ 1, %sw.bb60 ], [ 1, %sw.bb59 ], [ 1, %sw.bb58 ], [ -1, %if.then42 ], [ -1, %sw.bb39 ], [ %call34, %sw.bb33 ], [ 0, %if.then18 ], [ 0, %sw.bb26 ]
  %len.6 = phi i32 [ %len.1, %if.end ], [ 1, %sw.bb63 ], [ %div62, %sw.bb60 ], [ %div, %sw.bb59 ], [ %len.5, %sw.bb58 ], [ %len.3, %if.then42 ], [ %len.3, %sw.bb39 ], [ %len.1, %sw.bb33 ], [ %len.1, %if.then18 ], [ %len.1, %sw.bb26 ]
  %mul = mul nsw i32 %len.6, %size.1
  %add66 = add nsw i32 %mul, %total.0131
  %call = call fastcc signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #7
  %tobool = icmp eq i8 %call, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.end65, %entry
  %total.0.lcssa = phi i32 [ 0, %entry ], [ %add66, %if.end65 ]
  ret i32 %total.0.lcssa
}

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #2

; Function Attrs: optsize
declare void @Perl_tmps_grow(i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #2

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVuv(i64) #2

; Function Attrs: optsize
declare signext i16 @vtohs(i16 signext) #2

; Function Attrs: optsize
declare i64 @vtohl(i64) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_sv_chop(%struct.sv*, i8*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVnv(double) #2

; Function Attrs: nounwind optsize
declare double @modf(double, double* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{i32 -2145338411}
!6 = metadata !{i32 -2145336399}
!7 = metadata !{i64 0, i64 8, metadata !0, i64 8, i64 8, metadata !0, i64 16, i64 8, metadata !0, i64 24, i64 8, metadata !0, i64 32, i64 4, metadata !3, i64 36, i64 4, metadata !3, i64 40, i64 4, metadata !1, i64 44, i64 4, metadata !3, i64 48, i64 4, metadata !3}
!8 = metadata !{metadata !"double", metadata !1}
!9 = metadata !{metadata !"float", metadata !1}
!10 = metadata !{metadata !"short", metadata !1}
!11 = metadata !{i32 -2145315889}
!12 = metadata !{i32 -2145309816}
