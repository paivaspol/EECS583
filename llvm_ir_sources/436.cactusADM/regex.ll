; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.fail_stack_type = type { %union.fail_stack_elt*, i32, i32 }
%union.fail_stack_elt = type { i8* }
%struct.re_registers = type { i32, i32*, i32* }
%union.register_info_type = type { %union.fail_stack_elt }
%struct.compile_stack_type = type { %struct.compile_stack_elt_t*, i32, i32 }
%struct.compile_stack_elt_t = type { i64, i64, i64, i64, i32 }
%struct.regmatch_t = type { i32, i32 }

@re_syntax_options = common global i64 0, align 8
@re_max_failures = global i32 20000, align 4
@re_syntax_table = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@re_error_msgid = internal constant [369 x i8] c"Success\00No match\00Invalid regular expression\00Invalid collation character\00Invalid character class name\00Trailing backslash\00Invalid back reference\00Unmatched [ or [^\00Unmatched ( or \5C(\00Unmatched \5C{\00Invalid content of \5C{\5C}\00Invalid range end\00Memory exhausted\00Invalid preceding regular expression\00Premature end of regular expression\00Regular expression too big\00Unmatched ) or \5C)\00", align 16
@re_error_msgid_idx = internal unnamed_addr constant [17 x i64] [i64 0, i64 8, i64 17, i64 44, i64 72, i64 101, i64 120, i64 143, i64 161, i64 179, i64 192, i64 216, i64 234, i64 251, i64 288, i64 324, i64 351], align 16
@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@init_syntax_once.done = internal unnamed_addr global i1 false
@reg_unset_dummy = internal global i8 0, align 1

; Function Attrs: nounwind optsize uwtable
define i64 @re_set_syntax(i64 %syntax) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %syntax}, i64 0, metadata !80), !dbg !711
  %0 = load i64* @re_syntax_options, align 8, !dbg !712, !tbaa !713
  tail call void @llvm.dbg.value(metadata !{i64 %0}, i64 0, metadata !81), !dbg !712
  store i64 %syntax, i64* @re_syntax_options, align 8, !dbg !716, !tbaa !713
  ret i64 %0, !dbg !717
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @re_compile_fastmap(%struct.re_pattern_buffer* nocapture %bufp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !110), !dbg !718
  tail call void @llvm.dbg.declare(metadata !719, metadata !113), !dbg !720
  %fastmap1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 4, !dbg !721
  %0 = load i8** %fastmap1, align 8, !dbg !721, !tbaa !722
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !126), !dbg !721
  %buffer = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0, !dbg !723
  %1 = load i8** %buffer, align 8, !dbg !723, !tbaa !722
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !127), !dbg !723
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !128), !dbg !724
  %used = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2, !dbg !725
  %2 = load i64* %used, align 8, !dbg !725, !tbaa !713
  %add.ptr = getelementptr inbounds i8* %1, i64 %2, !dbg !725
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !129), !dbg !725
  tail call void @llvm.dbg.value(metadata !726, i64 0, metadata !130), !dbg !727
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !132), !dbg !729
  %call = tail call noalias i8* @malloc(i64 40) #7, !dbg !730
  %cmp = icmp eq i8* %call, null, !dbg !730
  br i1 %cmp, label %return, label %if.end, !dbg !730

if.end:                                           ; preds = %entry
  %3 = bitcast i8* %call to %union.fail_stack_elt*, !dbg !730
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 1, i1 false), !dbg !732
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !733
  %bf.load = load i8* %fastmap_accurate, align 8, !dbg !733
  %bf.set = and i8 %bf.load, -10, !dbg !734
  %bf.clear4 = or i8 %bf.set, 8, !dbg !734
  store i8 %bf.clear4, i8* %fastmap_accurate, align 8, !dbg !734
  %arrayidx114 = getelementptr inbounds i8* %0, i64 10, !dbg !735
  %syntax = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 3, !dbg !736
  br label %while.body, !dbg !737

while.body:                                       ; preds = %if.end253, %land.lhs.true181, %sw.bb28, %if.then127, %if.else130, %if.end155, %sw.bb268, %if.end163, %do.body142, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.then12, %sw.bb286, %sw.bb288, %for.inc110, %for.inc93, %for.cond60.backedge, %for.end55, %for.cond.backedge, %sw.bb32, %if.end
  %fail_stack.sroa.1.0 = phi i32 [ 5, %if.end ], [ %fail_stack.sroa.1.0, %if.then12 ], [ %fail_stack.sroa.1.0, %sw.bb288 ], [ %fail_stack.sroa.1.0, %sw.bb286 ], [ %fail_stack.sroa.1.0, %sw.bb268 ], [ %fail_stack.sroa.1.0, %do.body142 ], [ %fail_stack.sroa.1.0, %if.end163 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end22 ], [ %fail_stack.sroa.1.0, %if.end155 ], [ %fail_stack.sroa.1.0, %land.lhs.true181 ], [ %fail_stack.sroa.1.3, %if.end253 ], [ %fail_stack.sroa.1.0, %if.else130 ], [ %fail_stack.sroa.1.0, %if.then127 ], [ %fail_stack.sroa.1.0, %sw.bb28 ], [ %fail_stack.sroa.1.0, %for.inc110 ], [ %fail_stack.sroa.1.0, %for.inc93 ], [ %fail_stack.sroa.1.0, %for.cond60.backedge ], [ %fail_stack.sroa.1.0, %for.end55 ], [ %fail_stack.sroa.1.0, %for.cond.backedge ], [ %fail_stack.sroa.1.0, %sw.bb32 ]
  %fail_stack.sroa.0.0 = phi %union.fail_stack_elt* [ %3, %if.end ], [ %fail_stack.sroa.0.0, %if.then12 ], [ %fail_stack.sroa.0.0, %sw.bb288 ], [ %fail_stack.sroa.0.0, %sw.bb286 ], [ %fail_stack.sroa.0.0, %sw.bb268 ], [ %fail_stack.sroa.0.0, %do.body142 ], [ %fail_stack.sroa.0.0, %if.end163 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end22 ], [ %fail_stack.sroa.0.0, %if.end155 ], [ %fail_stack.sroa.0.0, %land.lhs.true181 ], [ %fail_stack.sroa.0.3, %if.end253 ], [ %fail_stack.sroa.0.0, %if.else130 ], [ %fail_stack.sroa.0.0, %if.then127 ], [ %fail_stack.sroa.0.0, %sw.bb28 ], [ %fail_stack.sroa.0.0, %for.inc110 ], [ %fail_stack.sroa.0.0, %for.inc93 ], [ %fail_stack.sroa.0.0, %for.cond60.backedge ], [ %fail_stack.sroa.0.0, %for.end55 ], [ %fail_stack.sroa.0.0, %for.cond.backedge ], [ %fail_stack.sroa.0.0, %sw.bb32 ]
  %fail_stack.sroa.2.0 = phi i32 [ 0, %if.end ], [ %dec, %if.then12 ], [ %fail_stack.sroa.2.0, %sw.bb288 ], [ %fail_stack.sroa.2.0, %sw.bb286 ], [ %fail_stack.sroa.2.0, %sw.bb268 ], [ %fail_stack.sroa.2.0, %do.body142 ], [ 0, %if.end163 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end22 ], [ %fail_stack.sroa.2.0, %if.end155 ], [ %dec192.fail_stack.sroa.2.0, %land.lhs.true181 ], [ %fail_stack.sroa.2.1, %if.end253 ], [ %fail_stack.sroa.2.0, %if.else130 ], [ %fail_stack.sroa.2.0, %if.then127 ], [ %fail_stack.sroa.2.0, %sw.bb28 ], [ %fail_stack.sroa.2.0, %for.inc110 ], [ %fail_stack.sroa.2.0, %for.inc93 ], [ %fail_stack.sroa.2.0, %for.cond60.backedge ], [ %fail_stack.sroa.2.0, %for.end55 ], [ %fail_stack.sroa.2.0, %for.cond.backedge ], [ %fail_stack.sroa.2.0, %sw.bb32 ]
  %p.0 = phi i8* [ %1, %if.end ], [ %5, %if.then12 ], [ %add.ptr289, %sw.bb288 ], [ %add.ptr287, %sw.bb286 ], [ %add.ptr279, %sw.bb268 ], [ %add.ptr151, %do.body142 ], [ %add.ptr177, %if.end163 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %incdec.ptr, %if.end22 ], [ %add.ptr151, %if.end155 ], [ %add.ptr177, %land.lhs.true181 ], [ %add.ptr204.add.ptr265, %if.end253 ], [ %add.ptr, %if.else130 ], [ %add.ptr, %if.then127 ], [ %add.ptr, %sw.bb28 ], [ %add.ptr, %for.inc110 ], [ %add.ptr, %for.inc93 ], [ %add.ptr, %for.cond60.backedge ], [ %add.ptr, %for.end55 ], [ %add.ptr, %for.cond.backedge ], [ %add.ptr, %sw.bb32 ]
  %path_can_be_null.0 = phi i8 [ 1, %if.end ], [ 1, %if.then12 ], [ %path_can_be_null.0, %sw.bb288 ], [ %path_can_be_null.0, %sw.bb286 ], [ %path_can_be_null.0, %sw.bb268 ], [ %path_can_be_null.0, %do.body142 ], [ %path_can_be_null.0, %if.end163 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end22 ], [ %path_can_be_null.0, %if.end155 ], [ %path_can_be_null.0, %land.lhs.true181 ], [ %path_can_be_null.0, %if.end253 ], [ 0, %if.else130 ], [ 0, %if.then127 ], [ 0, %sw.bb28 ], [ 0, %for.inc110 ], [ 0, %for.inc93 ], [ 0, %for.cond60.backedge ], [ 0, %for.end55 ], [ 0, %for.cond.backedge ], [ 0, %sw.bb32 ]
  %cmp5 = icmp eq i8* %p.0, %add.ptr, !dbg !738
  br i1 %cmp5, label %if.then8, label %lor.lhs.false, !dbg !738

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8* %p.0, align 1, !dbg !738, !tbaa !714
  %cmp6 = icmp eq i8 %4, 1, !dbg !738
  br i1 %cmp6, label %if.then8, label %if.end22, !dbg !738

if.then8:                                         ; preds = %lor.lhs.false, %while.body
  %cmp10 = icmp eq i32 %fail_stack.sroa.2.0, 0, !dbg !739
  %bf.load292 = load i8* %fastmap_accurate, align 8, !dbg !741
  %bf.set299 = or i8 %bf.load292, %path_can_be_null.0, !dbg !741
  store i8 %bf.set299, i8* %fastmap_accurate, align 8, !dbg !741
  br i1 %cmp10, label %done, label %if.then12, !dbg !739

if.then12:                                        ; preds = %if.then8
  tail call void @llvm.dbg.value(metadata !726, i64 0, metadata !130), !dbg !742
  %dec = add i32 %fail_stack.sroa.2.0, -1, !dbg !744
  %idxprom = zext i32 %dec to i64, !dbg !744
  %pointer = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom, i32 0, !dbg !744
  %5 = load i8** %pointer, align 8, !dbg !744, !tbaa !722
  tail call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !128), !dbg !744
  br label %while.body, !dbg !745

if.end22:                                         ; preds = %lor.lhs.false
  %conv = zext i8 %4 to i32, !dbg !738
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1, !dbg !746
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !128), !dbg !746
  switch i32 %conv, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb28
    i32 4, label %sw.bb32
    i32 5, label %sw.bb45
    i32 24, label %for.body83
    i32 25, label %for.body100
    i32 3, label %sw.bb113
    i32 0, label %while.body
    i32 9, label %while.body
    i32 10, label %while.body
    i32 11, label %while.body
    i32 12, label %while.body
    i32 28, label %while.body
    i32 29, label %while.body
    i32 26, label %while.body
    i32 27, label %while.body
    i32 20, label %while.body
    i32 22, label %do.body142
    i32 17, label %do.body142
    i32 18, label %do.body142
    i32 13, label %do.body142
    i32 14, label %do.body142
    i32 19, label %do.body142
    i32 15, label %do.body196
    i32 16, label %do.body196
    i32 21, label %sw.bb268
    i32 23, label %sw.bb286
    i32 6, label %sw.bb288
    i32 7, label %sw.bb288
  ], !dbg !746

sw.bb:                                            ; preds = %if.end22
  %bf.load25 = load i8* %fastmap_accurate, align 8, !dbg !747
  %bf.set27 = or i8 %bf.load25, 1, !dbg !747
  store i8 %bf.set27, i8* %fastmap_accurate, align 8, !dbg !747
  br label %done, !dbg !748

sw.bb28:                                          ; preds = %if.end22
  %arrayidx29 = getelementptr inbounds i8* %p.0, i64 2, !dbg !749
  %6 = load i8* %arrayidx29, align 1, !dbg !749, !tbaa !714
  %idxprom30 = zext i8 %6 to i64, !dbg !749
  %arrayidx31 = getelementptr inbounds i8* %0, i64 %idxprom30, !dbg !749
  store i8 1, i8* %arrayidx31, align 1, !dbg !749, !tbaa !714
  br label %while.body, !dbg !750

sw.bb32:                                          ; preds = %if.end22
  %7 = load i8* %incdec.ptr, align 1, !dbg !751, !tbaa !714
  %cmp35427 = icmp eq i8 %7, 0, !dbg !751
  br i1 %cmp35427, label %while.body, label %for.body.lr.ph, !dbg !751

for.body.lr.ph:                                   ; preds = %sw.bb32
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 3, !dbg !751
  br label %for.body, !dbg !751

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %indvars.iv442 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next443, %for.cond.backedge ]
  %indvars.iv.next443 = add i64 %indvars.iv442, -1, !dbg !751
  %10 = trunc i64 %indvars.iv.next443 to i32, !dbg !753
  %div = sdiv i32 %10, 8, !dbg !753
  %idxprom37 = sext i32 %div to i64, !dbg !753
  %incdec.ptr33.sum = add i64 %idxprom37, 2, !dbg !753
  %arrayidx38 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr33.sum, !dbg !753
  %11 = load i8* %arrayidx38, align 1, !dbg !753, !tbaa !714
  %conv39 = zext i8 %11 to i32, !dbg !753
  %rem411 = and i32 %10, 7, !dbg !753
  %shl = shl i32 1, %rem411, !dbg !753
  %and = and i32 %conv39, %shl, !dbg !753
  %tobool = icmp eq i32 %and, 0, !dbg !753
  br i1 %tobool, label %for.cond.backedge, label %if.then40, !dbg !753

for.cond.backedge:                                ; preds = %for.body, %if.then40
  %cmp35 = icmp sgt i32 %10, 0, !dbg !751
  br i1 %cmp35, label %for.body, label %while.body, !dbg !751

if.then40:                                        ; preds = %for.body
  %arrayidx42 = getelementptr inbounds i8* %0, i64 %indvars.iv.next443, !dbg !754
  store i8 1, i8* %arrayidx42, align 1, !dbg !754, !tbaa !714
  br label %for.cond.backedge, !dbg !754

sw.bb45:                                          ; preds = %if.end22
  %12 = load i8* %incdec.ptr, align 1, !dbg !755, !tbaa !714
  %cmp49419 = icmp ult i8 %12, 32, !dbg !755
  br i1 %cmp49419, label %for.end55, label %for.body63.lr.ph, !dbg !755

for.end55:                                        ; preds = %sw.bb45
  %conv46 = zext i8 %12 to i32, !dbg !755
  %13 = shl nuw nsw i32 %conv46, 3, !dbg !755
  %14 = zext i32 %13 to i64
  %scevgep = getelementptr i8* %0, i64 %14
  %15 = or i32 %13, 1, !dbg !755
  %16 = icmp ugt i32 %15, 256
  %.op = add i32 %15, -1, !dbg !755
  %17 = select i1 %16, i32 %.op, i32 255, !dbg !755
  %18 = sub i32 %17, %13, !dbg !755
  %19 = zext i32 %18 to i64
  %20 = add i64 %19, 1, !dbg !755
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 1, i64 %20, i32 1, i1 false), !dbg !757
  %.pre = load i8* %incdec.ptr, align 1, !dbg !758, !tbaa !714
  %cmp61423 = icmp eq i8 %.pre, 0, !dbg !758
  br i1 %cmp61423, label %while.body, label %for.body63.lr.ph, !dbg !758

for.body63.lr.ph:                                 ; preds = %sw.bb45, %for.end55
  %21 = phi i8 [ %.pre, %for.end55 ], [ %12, %sw.bb45 ]
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 3, !dbg !758
  br label %for.body63, !dbg !758

for.body63:                                       ; preds = %for.body63.lr.ph, %for.cond60.backedge
  %indvars.iv440 = phi i64 [ %23, %for.body63.lr.ph ], [ %indvars.iv.next441, %for.cond60.backedge ]
  %indvars.iv.next441 = add i64 %indvars.iv440, -1, !dbg !758
  %24 = trunc i64 %indvars.iv.next441 to i32, !dbg !760
  %div64 = sdiv i32 %24, 8, !dbg !760
  %idxprom65 = sext i32 %div64 to i64, !dbg !760
  %incdec.ptr56.sum = add i64 %idxprom65, 2, !dbg !760
  %arrayidx66 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr56.sum, !dbg !760
  %25 = load i8* %arrayidx66, align 1, !dbg !760, !tbaa !714
  %conv67 = zext i8 %25 to i32, !dbg !760
  %rem68410 = and i32 %24, 7, !dbg !760
  %shl69 = shl i32 1, %rem68410, !dbg !760
  %and70 = and i32 %conv67, %shl69, !dbg !760
  %tobool71 = icmp eq i32 %and70, 0, !dbg !760
  br i1 %tobool71, label %if.then72, label %for.cond60.backedge, !dbg !760

for.cond60.backedge:                              ; preds = %for.body63, %if.then72
  %cmp61 = icmp sgt i32 %24, 0, !dbg !758
  br i1 %cmp61, label %for.body63, label %while.body, !dbg !758

if.then72:                                        ; preds = %for.body63
  %arrayidx74 = getelementptr inbounds i8* %0, i64 %indvars.iv.next441, !dbg !761
  store i8 1, i8* %arrayidx74, align 1, !dbg !761, !tbaa !714
  br label %for.cond60.backedge, !dbg !761

for.body83:                                       ; preds = %if.end22, %for.inc93
  %indvars.iv433 = phi i64 [ %indvars.iv.next434, %for.inc93 ], [ 0, %if.end22 ]
  %arrayidx85 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %indvars.iv433, !dbg !762
  %26 = load i8* %arrayidx85, align 1, !dbg !762, !tbaa !714
  %cmp87 = icmp eq i8 %26, 1, !dbg !762
  br i1 %cmp87, label %if.then89, label %for.inc93, !dbg !762

if.then89:                                        ; preds = %for.body83
  %arrayidx91 = getelementptr inbounds i8* %0, i64 %indvars.iv433, !dbg !764
  store i8 1, i8* %arrayidx91, align 1, !dbg !764, !tbaa !714
  br label %for.inc93, !dbg !764

for.inc93:                                        ; preds = %for.body83, %if.then89
  %indvars.iv.next434 = add i64 %indvars.iv433, 1, !dbg !765
  %lftr.wideiv435 = trunc i64 %indvars.iv.next434 to i32, !dbg !765
  %exitcond436 = icmp eq i32 %lftr.wideiv435, 256, !dbg !765
  br i1 %exitcond436, label %while.body, label %for.body83, !dbg !765

for.body100:                                      ; preds = %if.end22, %for.inc110
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc110 ], [ 0, %if.end22 ]
  %arrayidx102 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %indvars.iv, !dbg !766
  %27 = load i8* %arrayidx102, align 1, !dbg !766, !tbaa !714
  %cmp104 = icmp eq i8 %27, 1, !dbg !766
  br i1 %cmp104, label %for.inc110, label %if.then106, !dbg !766

if.then106:                                       ; preds = %for.body100
  %arrayidx108 = getelementptr inbounds i8* %0, i64 %indvars.iv, !dbg !768
  store i8 1, i8* %arrayidx108, align 1, !dbg !768, !tbaa !714
  br label %for.inc110, !dbg !768

for.inc110:                                       ; preds = %for.body100, %if.then106
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !769
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !769
  %exitcond = icmp eq i32 %lftr.wideiv, 256, !dbg !769
  br i1 %exitcond, label %while.body, label %for.body100, !dbg !769

sw.bb113:                                         ; preds = %if.end22
  %28 = load i8* %arrayidx114, align 1, !dbg !735, !tbaa !714
  tail call void @llvm.dbg.value(metadata !71, i64 0, metadata !111), !dbg !770
  call void @llvm.memset.p0i8.i64(i8* %0, i8 1, i64 256, i32 1, i1 false), !dbg !772
  %29 = load i64* %syntax, align 8, !dbg !736, !tbaa !713
  %and125 = and i64 %29, 64, !dbg !736
  %tobool126 = icmp eq i64 %and125, 0, !dbg !736
  br i1 %tobool126, label %if.then127, label %if.else130, !dbg !736

if.then127:                                       ; preds = %sw.bb113
  store i8 %28, i8* %arrayidx114, align 1, !dbg !773, !tbaa !714
  br label %while.body, !dbg !773

if.else130:                                       ; preds = %sw.bb113
  %bf.load132 = load i8* %fastmap_accurate, align 8, !dbg !774
  %bf.clear133 = and i8 %bf.load132, 1, !dbg !774
  %tobool135 = icmp eq i8 %bf.clear133, 0, !dbg !774
  br i1 %tobool135, label %while.body, label %done, !dbg !774

do.body142:                                       ; preds = %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22
  %30 = load i8* %incdec.ptr, align 1, !dbg !775, !tbaa !714
  %conv143 = zext i8 %30 to i32, !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %conv143}, i64 0, metadata !111), !dbg !775
  %add.ptr145 = getelementptr inbounds i8* %p.0, i64 2, !dbg !775
  %31 = load i8* %add.ptr145, align 1, !dbg !775, !tbaa !714
  %conv146 = sext i8 %31 to i32, !dbg !775
  %shl147 = shl nsw i32 %conv146, 8, !dbg !775
  %add = or i32 %shl147, %conv143, !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !111), !dbg !775
  %addconv408 = add nsw i32 %add, 3, !dbg !778
  %add.ptr149.sum = sext i32 %addconv408 to i64, !dbg !778
  %add.ptr151 = getelementptr inbounds i8* %p.0, i64 %add.ptr149.sum, !dbg !778
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr151}, i64 0, metadata !128), !dbg !778
  %cmp152 = icmp sgt i32 %add, 0, !dbg !779
  br i1 %cmp152, label %while.body, label %if.end155, !dbg !779

if.end155:                                        ; preds = %do.body142
  %32 = load i8* %add.ptr151, align 1, !dbg !780, !tbaa !714
  switch i8 %32, label %while.body [
    i8 15, label %if.end163
    i8 21, label %if.end163
  ], !dbg !780

if.end163:                                        ; preds = %if.end155, %if.end155
  %add.ptr151.sum = add i64 %add.ptr149.sum, 1, !dbg !781
  %incdec.ptr164 = getelementptr inbounds i8* %p.0, i64 %add.ptr151.sum, !dbg !781
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr164}, i64 0, metadata !128), !dbg !781
  %33 = load i8* %incdec.ptr164, align 1, !dbg !782, !tbaa !714
  %conv167 = zext i8 %33 to i32, !dbg !782
  tail call void @llvm.dbg.value(metadata !{i32 %conv167}, i64 0, metadata !111), !dbg !782
  %incdec.ptr164.sum = add i64 %add.ptr149.sum, 2, !dbg !782
  %add.ptr169 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr164.sum, !dbg !782
  %34 = load i8* %add.ptr169, align 1, !dbg !782, !tbaa !714
  %conv170 = sext i8 %34 to i32, !dbg !782
  %shl171 = shl nsw i32 %conv170, 8, !dbg !782
  %add172 = or i32 %shl171, %conv167, !dbg !782
  tail call void @llvm.dbg.value(metadata !{i32 %add172}, i64 0, metadata !111), !dbg !782
  %incdec.ptr164.sum409 = add i64 %add.ptr149.sum, 3, !dbg !785
  %idx.ext176 = sext i32 %add172 to i64, !dbg !786
  %add.ptr174.sum = add i64 %incdec.ptr164.sum409, %idx.ext176, !dbg !786
  %add.ptr177 = getelementptr inbounds i8* %p.0, i64 %add.ptr174.sum, !dbg !786
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr177}, i64 0, metadata !128), !dbg !786
  %cmp179 = icmp eq i32 %fail_stack.sroa.2.0, 0, !dbg !787
  br i1 %cmp179, label %while.body, label %land.lhs.true181, !dbg !787

land.lhs.true181:                                 ; preds = %if.end163
  %sub183 = add i32 %fail_stack.sroa.2.0, -1, !dbg !787
  %idxprom184 = zext i32 %sub183 to i64, !dbg !787
  %pointer187 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom184, i32 0, !dbg !787
  %35 = load i8** %pointer187, align 8, !dbg !787, !tbaa !722
  %cmp188 = icmp eq i8* %35, %add.ptr177, !dbg !787
  %dec192.fail_stack.sroa.2.0 = select i1 %cmp188, i32 %sub183, i32 %fail_stack.sroa.2.0, !dbg !787
  br label %while.body, !dbg !787

do.body196:                                       ; preds = %sw.bb268, %if.end22, %if.end22
  %succeed_n_p.1 = phi i8 [ 0, %if.end22 ], [ 0, %if.end22 ], [ 1, %sw.bb268 ]
  %36 = load i8* %incdec.ptr, align 1, !dbg !788, !tbaa !714
  %conv197 = zext i8 %36 to i32, !dbg !788
  tail call void @llvm.dbg.value(metadata !{i32 %conv197}, i64 0, metadata !111), !dbg !788
  %add.ptr199 = getelementptr inbounds i8* %p.0, i64 2, !dbg !788
  %37 = load i8* %add.ptr199, align 1, !dbg !788, !tbaa !714
  %conv200 = sext i8 %37 to i32, !dbg !788
  %shl201 = shl nsw i32 %conv200, 8, !dbg !788
  %add202 = or i32 %shl201, %conv197, !dbg !788
  tail call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !111), !dbg !788
  %add.ptr204 = getelementptr inbounds i8* %p.0, i64 3, !dbg !791
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr204}, i64 0, metadata !128), !dbg !791
  %addconv414 = add nsw i32 %add202, 3, !dbg !792
  %incdec.ptr.sum = sext i32 %addconv414 to i64, !dbg !792
  %add.ptr207 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr.sum, !dbg !792
  %cmp208 = icmp ult i8* %add.ptr207, %add.ptr, !dbg !792
  br i1 %cmp208, label %if.then210, label %if.else248, !dbg !792

if.then210:                                       ; preds = %do.body196
  %cmp213 = icmp eq i32 %fail_stack.sroa.2.0, %fail_stack.sroa.1.0, !dbg !793
  br i1 %cmp213, label %land.lhs.true215, label %cond.false236, !dbg !793

land.lhs.true215:                                 ; preds = %if.then210
  %38 = load i32* @re_max_failures, align 4, !dbg !793, !tbaa !795
  %mul217 = mul nsw i32 %38, 19, !dbg !793
  %cmp218 = icmp ugt i32 %fail_stack.sroa.1.0, %mul217, !dbg !793
  br i1 %cmp218, label %if.then245, label %cond.false, !dbg !793

cond.false:                                       ; preds = %land.lhs.true215
  %39 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.0 to i8*, !dbg !793
  %shl222 = shl i32 %fail_stack.sroa.1.0, 1, !dbg !793
  %conv223 = zext i32 %shl222 to i64, !dbg !793
  %mul224 = shl nuw nsw i64 %conv223, 3, !dbg !793
  %call225 = tail call i8* @realloc(i8* %39, i64 %mul224) #7, !dbg !793
  %40 = bitcast i8* %call225 to %union.fail_stack_elt*, !dbg !793
  %cmp228 = icmp eq i8* %call225, null, !dbg !793
  %fail_stack.sroa.1.0.shl222 = select i1 %cmp228, i32 %fail_stack.sroa.1.0, i32 %shl222, !dbg !793
  br i1 %cmp228, label %if.then245, label %cond.false236, !dbg !793

cond.false236:                                    ; preds = %cond.false, %if.then210
  %fail_stack.sroa.1.2 = phi i32 [ %fail_stack.sroa.1.0.shl222, %cond.false ], [ %fail_stack.sroa.1.0, %if.then210 ]
  %fail_stack.sroa.0.1 = phi %union.fail_stack_elt* [ %40, %cond.false ], [ %fail_stack.sroa.0.0, %if.then210 ]
  %inc240 = add i32 %fail_stack.sroa.2.0, 1, !dbg !793
  %idxprom241 = zext i32 %fail_stack.sroa.2.0 to i64, !dbg !793
  %pointer244 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.1, i64 %idxprom241, i32 0, !dbg !793
  store i8* %add.ptr207, i8** %pointer244, align 8, !dbg !793, !tbaa !722
  br label %if.end253, !dbg !796

if.then245:                                       ; preds = %cond.false, %land.lhs.true215
  %fail_stack.sroa.0.2 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %land.lhs.true215 ], [ %40, %cond.false ]
  %41 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*, !dbg !797
  tail call void @free(i8* %41) #7, !dbg !797
  br label %return, !dbg !799

if.else248:                                       ; preds = %do.body196
  %bf.load250 = load i8* %fastmap_accurate, align 8, !dbg !800
  %bf.set252 = or i8 %bf.load250, 1, !dbg !800
  store i8 %bf.set252, i8* %fastmap_accurate, align 8, !dbg !800
  br label %if.end253

if.end253:                                        ; preds = %if.else248, %cond.false236
  %fail_stack.sroa.1.3 = phi i32 [ %fail_stack.sroa.1.2, %cond.false236 ], [ %fail_stack.sroa.1.0, %if.else248 ]
  %fail_stack.sroa.0.3 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.1, %cond.false236 ], [ %fail_stack.sroa.0.0, %if.else248 ]
  %fail_stack.sroa.2.1 = phi i32 [ %inc240, %cond.false236 ], [ %fail_stack.sroa.2.0, %if.else248 ]
  %tobool254 = icmp eq i8 %succeed_n_p.1, 0, !dbg !801
  %add.ptr265 = getelementptr inbounds i8* %p.0, i64 5, !dbg !802
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr265}, i64 0, metadata !128), !dbg !802
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !132), !dbg !805
  %add.ptr204.add.ptr265 = select i1 %tobool254, i8* %add.ptr204, i8* %add.ptr265, !dbg !801
  br label %while.body, !dbg !801

sw.bb268:                                         ; preds = %if.end22
  %add.ptr269 = getelementptr inbounds i8* %p.0, i64 3, !dbg !806
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr269}, i64 0, metadata !128), !dbg !806
  %42 = load i8* %add.ptr269, align 1, !dbg !807, !tbaa !714
  %conv272 = zext i8 %42 to i32, !dbg !807
  tail call void @llvm.dbg.value(metadata !{i32 %conv272}, i64 0, metadata !112), !dbg !807
  %add.ptr274 = getelementptr inbounds i8* %p.0, i64 4, !dbg !807
  %43 = load i8* %add.ptr274, align 1, !dbg !807, !tbaa !714
  %conv275 = sext i8 %43 to i32, !dbg !807
  %shl276 = shl nsw i32 %conv275, 8, !dbg !807
  %add277 = or i32 %shl276, %conv272, !dbg !807
  tail call void @llvm.dbg.value(metadata !{i32 %add277}, i64 0, metadata !112), !dbg !807
  %add.ptr279 = getelementptr inbounds i8* %p.0, i64 5, !dbg !810
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr279}, i64 0, metadata !128), !dbg !810
  %cmp281 = icmp eq i32 %add277, 0, !dbg !811
  br i1 %cmp281, label %do.body196, label %while.body, !dbg !811

sw.bb286:                                         ; preds = %if.end22
  %add.ptr287 = getelementptr inbounds i8* %p.0, i64 5, !dbg !812
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr287}, i64 0, metadata !128), !dbg !812
  br label %while.body, !dbg !813

sw.bb288:                                         ; preds = %if.end22, %if.end22
  %add.ptr289 = getelementptr inbounds i8* %p.0, i64 3, !dbg !814
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr289}, i64 0, metadata !128), !dbg !814
  br label %while.body, !dbg !815

sw.default:                                       ; preds = %if.end22
  tail call void @abort() #8, !dbg !816
  unreachable, !dbg !816

done:                                             ; preds = %if.else130, %if.then8, %sw.bb
  %44 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.0 to i8*, !dbg !817
  tail call void @free(i8* %44) #7, !dbg !817
  br label %return, !dbg !818

return:                                           ; preds = %entry, %done, %if.then245
  %retval.0 = phi i32 [ 0, %done ], [ -2, %if.then245 ], [ -2, %entry ]
  ret i32 %retval.0, !dbg !818
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() #4

; Function Attrs: nounwind optsize uwtable
define void @re_set_registers(%struct.re_pattern_buffer* nocapture %bufp, %struct.re_registers* nocapture %regs, i32 %num_regs, i32* %starts, i32* %ends) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !149), !dbg !819
  tail call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !150), !dbg !820
  tail call void @llvm.dbg.value(metadata !{i32 %num_regs}, i64 0, metadata !151), !dbg !821
  tail call void @llvm.dbg.value(metadata !{i32* %starts}, i64 0, metadata !152), !dbg !822
  tail call void @llvm.dbg.value(metadata !{i32* %ends}, i64 0, metadata !153), !dbg !822
  %tobool = icmp eq i32 %num_regs, 0, !dbg !823
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !824
  %bf.load = load i8* %regs_allocated, align 8, !dbg !824
  %bf.clear = and i8 %bf.load, -7, !dbg !824
  br i1 %tobool, label %if.else, label %if.then, !dbg !823

if.then:                                          ; preds = %entry
  %bf.set = or i8 %bf.clear, 2, !dbg !824
  store i8 %bf.set, i8* %regs_allocated, align 8, !dbg !824
  %num_regs1 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0, !dbg !826
  store i32 %num_regs, i32* %num_regs1, align 4, !dbg !826, !tbaa !795
  %start = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !827
  store i32* %starts, i32** %start, align 8, !dbg !827, !tbaa !722
  %end = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !828
  store i32* %ends, i32** %end, align 8, !dbg !828, !tbaa !722
  br label %if.end, !dbg !829

if.else:                                          ; preds = %entry
  store i8 %bf.clear, i8* %regs_allocated, align 8, !dbg !830
  %num_regs5 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0, !dbg !832
  store i32 0, i32* %num_regs5, align 4, !dbg !832, !tbaa !795
  %start7 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !833
  %0 = bitcast i32** %start7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false), !dbg !833
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !834
}

; Function Attrs: nounwind optsize uwtable
define i32 @re_search(%struct.re_pattern_buffer* nocapture %bufp, i8* %string, i32 %size, i32 %startpos, i32 %range, %struct.re_registers* %regs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !160), !dbg !835
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !161), !dbg !836
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !162), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %startpos}, i64 0, metadata !163), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %range}, i64 0, metadata !164), !dbg !837
  tail call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !165), !dbg !838
  %call = tail call i32 @re_search_2(%struct.re_pattern_buffer* %bufp, i8* null, i32 0, i8* %string, i32 %size, i32 %startpos, i32 %range, %struct.re_registers* %regs, i32 %size) #9, !dbg !839
  ret i32 %call, !dbg !839
}

; Function Attrs: nounwind optsize uwtable
define i32 @re_search_2(%struct.re_pattern_buffer* nocapture %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %startpos, i32 %range, %struct.re_registers* %regs, i32 %stop) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !170), !dbg !840
  tail call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !171), !dbg !841
  tail call void @llvm.dbg.value(metadata !{i32 %size1}, i64 0, metadata !172), !dbg !842
  tail call void @llvm.dbg.value(metadata !{i8* %string2}, i64 0, metadata !173), !dbg !841
  tail call void @llvm.dbg.value(metadata !{i32 %size2}, i64 0, metadata !174), !dbg !842
  tail call void @llvm.dbg.value(metadata !{i32 %startpos}, i64 0, metadata !175), !dbg !843
  tail call void @llvm.dbg.value(metadata !{i32 %range}, i64 0, metadata !176), !dbg !844
  tail call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !177), !dbg !845
  tail call void @llvm.dbg.value(metadata !{i32 %stop}, i64 0, metadata !178), !dbg !846
  %fastmap1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 4, !dbg !847
  %0 = load i8** %fastmap1, align 8, !dbg !847, !tbaa !722
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !180), !dbg !847
  %translate2 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 5, !dbg !848
  %1 = load i8** %translate2, align 8, !dbg !848, !tbaa !722
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !181), !dbg !848
  %add = add nsw i32 %size2, %size1, !dbg !849
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !182), !dbg !849
  %add3 = add nsw i32 %range, %startpos, !dbg !850
  tail call void @llvm.dbg.value(metadata !{i32 %add3}, i64 0, metadata !183), !dbg !850
  %cmp = icmp slt i32 %startpos, 0, !dbg !851
  %cmp4 = icmp slt i32 %add, %startpos, !dbg !851
  %or.cond = or i1 %cmp, %cmp4, !dbg !851
  br i1 %or.cond, label %return, label %if.end, !dbg !851

if.end:                                           ; preds = %entry
  %cmp5 = icmp slt i32 %add3, 0, !dbg !852
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !852

if.then6:                                         ; preds = %if.end
  %sub = sub nsw i32 0, %startpos, !dbg !853
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !176), !dbg !853
  br label %if.end11, !dbg !853

if.else:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %add3, %add, !dbg !854
  %sub9 = sub nsw i32 %add, %startpos, !dbg !855
  tail call void @llvm.dbg.value(metadata !{i32 %sub9}, i64 0, metadata !176), !dbg !855
  %sub9.range = select i1 %cmp7, i32 %sub9, i32 %range, !dbg !854
  br label %if.end11, !dbg !854

if.end11:                                         ; preds = %if.else, %if.then6
  %range.addr.0 = phi i32 [ %sub, %if.then6 ], [ %sub9.range, %if.else ]
  %used = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2, !dbg !856
  %2 = load i64* %used, align 8, !dbg !856, !tbaa !713
  %cmp12 = icmp ne i64 %2, 0, !dbg !856
  %cmp13 = icmp sgt i32 %range.addr.0, 0, !dbg !856
  %or.cond242 = and i1 %cmp12, %cmp13, !dbg !856
  br i1 %or.cond242, label %land.lhs.true14, label %if.end30, !dbg !856

land.lhs.true14:                                  ; preds = %if.end11
  %buffer = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0, !dbg !856
  %3 = load i8** %buffer, align 8, !dbg !856, !tbaa !722
  %4 = load i8* %3, align 1, !dbg !856, !tbaa !714
  switch i8 %4, label %if.end30 [
    i8 11, label %if.then24
    i8 9, label %land.lhs.true23
  ], !dbg !856

land.lhs.true23:                                  ; preds = %land.lhs.true14
  %newline_anchor = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !856
  %bf.load = load i8* %newline_anchor, align 8, !dbg !856
  %tobool = icmp slt i8 %bf.load, 0, !dbg !856
  br i1 %tobool, label %if.end30, label %if.then24, !dbg !856

if.then24:                                        ; preds = %land.lhs.true14, %land.lhs.true23
  %cmp25 = icmp sgt i32 %startpos, 0, !dbg !857
  br i1 %cmp25, label %return, label %if.end30, !dbg !857

if.end30:                                         ; preds = %if.then24, %land.lhs.true14, %if.end11, %land.lhs.true23
  %range.addr.1 = phi i32 [ %range.addr.0, %land.lhs.true23 ], [ %range.addr.0, %if.end11 ], [ %range.addr.0, %land.lhs.true14 ], [ 1, %if.then24 ]
  %tobool31 = icmp ne i8* %0, null, !dbg !859
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !859
  br i1 %tobool31, label %land.lhs.true32, label %for.cond.preheader, !dbg !859

land.lhs.true32:                                  ; preds = %if.end30
  %bf.load33 = load i8* %fastmap_accurate, align 8, !dbg !859
  %bf.clear = and i8 %bf.load33, 8, !dbg !859
  %tobool36 = icmp eq i8 %bf.clear, 0, !dbg !859
  br i1 %tobool36, label %if.then37, label %for.cond.preheader, !dbg !859

if.then37:                                        ; preds = %land.lhs.true32
  %call = tail call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %bufp) #9, !dbg !860
  %cmp38 = icmp eq i32 %call, -2, !dbg !860
  br i1 %cmp38, label %return, label %for.cond.preheader, !dbg !860

for.cond.preheader:                               ; preds = %if.end30, %if.then37, %land.lhs.true32
  %tobool70 = icmp eq i8* %1, null, !dbg !861
  %idx.ext = sext i32 %size1 to i64, !dbg !862
  %idx.neg = sub i64 0, %idx.ext, !dbg !862
  %add.ptr = getelementptr inbounds i8* %string2, i64 %idx.neg, !dbg !862
  %cmp96 = icmp ne i32 %size1, 0, !dbg !863
  %tobool31.not = xor i1 %tobool31, true, !dbg !864
  br label %for.cond, !dbg !865

for.cond:                                         ; preds = %if.else161, %if.then159, %for.cond.preheader
  %range.addr.2 = phi i32 [ %range.addr.1, %for.cond.preheader ], [ %dec160, %if.then159 ], [ %inc162, %if.else161 ]
  %startpos.addr.0 = phi i32 [ %startpos, %for.cond.preheader ], [ %inc, %if.then159 ], [ %dec163, %if.else161 ]
  %cmp45 = icmp slt i32 %startpos.addr.0, %add, !dbg !865
  %or.cond243 = and i1 %tobool31, %cmp45, !dbg !865
  br i1 %or.cond243, label %land.lhs.true47, label %if.end129, !dbg !865

land.lhs.true47:                                  ; preds = %for.cond
  %bf.load48 = load i8* %fastmap_accurate, align 8, !dbg !865
  %bf.clear49 = and i8 %bf.load48, 1, !dbg !865
  %tobool51 = icmp eq i8 %bf.clear49, 0, !dbg !865
  br i1 %tobool51, label %if.then52, label %if.end129, !dbg !865

if.then52:                                        ; preds = %land.lhs.true47
  %cmp53 = icmp sgt i32 %range.addr.2, 0, !dbg !866
  %cmp56 = icmp slt i32 %startpos.addr.0, %size1, !dbg !867
  br i1 %cmp53, label %if.then55, label %if.else95, !dbg !866

if.then55:                                        ; preds = %if.then52
  tail call void @llvm.dbg.value(metadata !71, i64 0, metadata !189), !dbg !868
  tail call void @llvm.dbg.value(metadata !{i32 %range.addr.2}, i64 0, metadata !190), !dbg !869
  br i1 %cmp56, label %land.lhs.true58, label %cond.end, !dbg !867

land.lhs.true58:                                  ; preds = %if.then55
  %add59 = add nsw i32 %startpos.addr.0, %range.addr.2, !dbg !867
  %cmp60 = icmp slt i32 %add59, %size1, !dbg !867
  br i1 %cmp60, label %cond.end, label %if.then62, !dbg !867

if.then62:                                        ; preds = %land.lhs.true58
  %sub63241 = sub i32 %range.addr.2, %size1, !dbg !870
  %sub64 = add i32 %sub63241, %startpos.addr.0, !dbg !870
  tail call void @llvm.dbg.value(metadata !{i32 %sub64}, i64 0, metadata !189), !dbg !870
  br label %cond.end, !dbg !870

cond.end:                                         ; preds = %if.then55, %if.then62, %land.lhs.true58
  %lim.0246 = phi i32 [ 0, %land.lhs.true58 ], [ %sub64, %if.then62 ], [ 0, %if.then55 ]
  %cond = phi i8* [ %string1, %land.lhs.true58 ], [ %string1, %if.then62 ], [ %add.ptr, %if.then55 ], !dbg !862
  %idx.ext68 = sext i32 %startpos.addr.0 to i64, !dbg !862
  %add.ptr69 = getelementptr inbounds i8* %cond, i64 %idx.ext68, !dbg !862
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr69}, i64 0, metadata !184), !dbg !862
  %cmp80253 = icmp sgt i32 %range.addr.2, %lim.0246, !dbg !871
  br i1 %tobool70, label %while.cond79.preheader, label %while.cond.preheader, !dbg !861

while.cond79.preheader:                           ; preds = %cond.end
  br i1 %cmp80253, label %land.rhs82, label %if.end92, !dbg !871

while.cond.preheader:                             ; preds = %cond.end
  br i1 %cmp80253, label %land.rhs, label %if.end92, !dbg !872

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %d.0251 = phi i8* [ %incdec.ptr, %while.body ], [ %add.ptr69, %while.cond.preheader ]
  %range.addr.3250 = phi i32 [ %dec, %while.body ], [ %range.addr.2, %while.cond.preheader ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !184), !dbg !872
  %5 = load i8* %d.0251, align 1, !dbg !872, !tbaa !714
  %idxprom = zext i8 %5 to i64, !dbg !872
  %arrayidx74 = getelementptr inbounds i8* %1, i64 %idxprom, !dbg !872
  %6 = load i8* %arrayidx74, align 1, !dbg !872, !tbaa !714
  %idxprom75 = zext i8 %6 to i64, !dbg !872
  %arrayidx76 = getelementptr inbounds i8* %0, i64 %idxprom75, !dbg !872
  %7 = load i8* %arrayidx76, align 1, !dbg !872, !tbaa !714
  %lnot = icmp eq i8 %7, 0, !dbg !872
  br i1 %lnot, label %while.body, label %if.end92

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %d.0251, i64 1, !dbg !872
  %dec = add nsw i32 %range.addr.3250, -1, !dbg !873
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !176), !dbg !873
  %cmp72 = icmp sgt i32 %dec, %lim.0246, !dbg !872
  br i1 %cmp72, label %land.rhs, label %if.end92, !dbg !872

land.rhs82:                                       ; preds = %while.cond79.preheader, %while.body89
  %d.1255 = phi i8* [ %incdec.ptr83, %while.body89 ], [ %add.ptr69, %while.cond79.preheader ]
  %range.addr.4254 = phi i32 [ %dec90, %while.body89 ], [ %range.addr.2, %while.cond79.preheader ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr83}, i64 0, metadata !184), !dbg !871
  %8 = load i8* %d.1255, align 1, !dbg !871, !tbaa !714
  %idxprom84 = zext i8 %8 to i64, !dbg !871
  %arrayidx85 = getelementptr inbounds i8* %0, i64 %idxprom84, !dbg !871
  %9 = load i8* %arrayidx85, align 1, !dbg !871, !tbaa !714
  %lnot87 = icmp eq i8 %9, 0, !dbg !871
  br i1 %lnot87, label %while.body89, label %if.end92

while.body89:                                     ; preds = %land.rhs82
  %incdec.ptr83 = getelementptr inbounds i8* %d.1255, i64 1, !dbg !871
  %dec90 = add nsw i32 %range.addr.4254, -1, !dbg !874
  tail call void @llvm.dbg.value(metadata !{i32 %dec90}, i64 0, metadata !176), !dbg !874
  %cmp80 = icmp sgt i32 %dec90, %lim.0246, !dbg !871
  br i1 %cmp80, label %land.rhs82, label %if.end92, !dbg !871

if.end92:                                         ; preds = %while.cond79.preheader, %land.rhs82, %while.body89, %while.cond.preheader, %land.rhs, %while.body
  %range.addr.5 = phi i32 [ %range.addr.2, %while.cond.preheader ], [ %range.addr.3250, %land.rhs ], [ %dec, %while.body ], [ %range.addr.2, %while.cond79.preheader ], [ %range.addr.4254, %land.rhs82 ], [ %dec90, %while.body89 ]
  %sub93 = add i32 %startpos.addr.0, %range.addr.2, !dbg !875
  %add94 = sub i32 %sub93, %range.addr.5, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i32 %add94}, i64 0, metadata !175), !dbg !875
  br label %if.end129, !dbg !876

if.else95:                                        ; preds = %if.then52
  %or.cond244 = and i1 %cmp96, %cmp56, !dbg !863
  br i1 %or.cond244, label %cond.false106, label %cond.true101, !dbg !863

cond.true101:                                     ; preds = %if.else95
  %sub102 = sub nsw i32 %startpos.addr.0, %size1, !dbg !863
  %idxprom103 = sext i32 %sub102 to i64, !dbg !863
  %arrayidx104 = getelementptr inbounds i8* %string2, i64 %idxprom103, !dbg !863
  br label %cond.end110, !dbg !863

cond.false106:                                    ; preds = %if.else95
  %idxprom107 = sext i32 %startpos.addr.0 to i64, !dbg !863
  %arrayidx108 = getelementptr inbounds i8* %string1, i64 %idxprom107, !dbg !863
  br label %cond.end110, !dbg !863

cond.end110:                                      ; preds = %cond.false106, %cond.true101
  %.sink.in = phi i8* [ %arrayidx104, %cond.true101 ], [ %arrayidx108, %cond.false106 ]
  %.sink = load i8* %.sink.in, align 1, !dbg !863
  tail call void @llvm.dbg.value(metadata !{i8 %.sink}, i64 0, metadata !191), !dbg !863
  br i1 %tobool70, label %cond.end120, label %cond.true114, !dbg !877

cond.true114:                                     ; preds = %cond.end110
  %idxprom115 = zext i8 %.sink to i64, !dbg !877
  %arrayidx116 = getelementptr inbounds i8* %1, i64 %idxprom115, !dbg !877
  %10 = load i8* %arrayidx116, align 1, !dbg !877, !tbaa !714
  br label %cond.end120, !dbg !877

cond.end120:                                      ; preds = %cond.end110, %cond.true114
  %.sink166 = phi i8 [ %10, %cond.true114 ], [ %.sink, %cond.end110 ]
  %idxprom123 = zext i8 %.sink166 to i64, !dbg !877
  %arrayidx124 = getelementptr inbounds i8* %0, i64 %idxprom123, !dbg !877
  %11 = load i8* %arrayidx124, align 1, !dbg !877, !tbaa !714
  %tobool125 = icmp eq i8 %11, 0, !dbg !877
  br i1 %tobool125, label %advance, label %if.end129, !dbg !877

if.end129:                                        ; preds = %cond.end120, %land.lhs.true47, %if.end92, %for.cond
  %range.addr.6 = phi i32 [ %range.addr.2, %land.lhs.true47 ], [ %range.addr.5, %if.end92 ], [ %range.addr.2, %cond.end120 ], [ %range.addr.2, %for.cond ]
  %startpos.addr.1 = phi i32 [ %startpos.addr.0, %land.lhs.true47 ], [ %add94, %if.end92 ], [ %startpos.addr.0, %cond.end120 ], [ %startpos.addr.0, %for.cond ]
  %notlhs = icmp slt i32 %range.addr.6, 0, !dbg !864
  %notrhs = icmp ne i32 %startpos.addr.1, %add, !dbg !864
  %or.cond245.not = or i1 %notrhs, %notlhs, !dbg !864
  %brmerge = or i1 %or.cond245.not, %tobool31.not, !dbg !864
  br i1 %brmerge, label %if.end144, label %land.lhs.true137, !dbg !864

land.lhs.true137:                                 ; preds = %if.end129
  %bf.load139 = load i8* %fastmap_accurate, align 8, !dbg !864
  %bf.clear140 = and i8 %bf.load139, 1, !dbg !864
  %tobool142 = icmp eq i8 %bf.clear140, 0, !dbg !864
  br i1 %tobool142, label %return, label %if.end144, !dbg !864

if.end144:                                        ; preds = %if.end129, %land.lhs.true137
  %call145 = tail call fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %startpos.addr.1, %struct.re_registers* %regs, i32 %stop) #9, !dbg !878
  tail call void @llvm.dbg.value(metadata !{i32 %call145}, i64 0, metadata !179), !dbg !878
  %cmp146 = icmp sgt i32 %call145, -1, !dbg !879
  br i1 %cmp146, label %return, label %if.end149, !dbg !879

if.end149:                                        ; preds = %if.end144
  %cmp150 = icmp eq i32 %call145, -2, !dbg !880
  br i1 %cmp150, label %return, label %advance, !dbg !880

advance:                                          ; preds = %cond.end120, %if.end149
  %range.addr.7 = phi i32 [ %range.addr.6, %if.end149 ], [ %range.addr.2, %cond.end120 ]
  %startpos.addr.2 = phi i32 [ %startpos.addr.1, %if.end149 ], [ %startpos.addr.0, %cond.end120 ]
  %tobool154 = icmp eq i32 %range.addr.7, 0, !dbg !881
  br i1 %tobool154, label %return, label %if.else156, !dbg !881

if.else156:                                       ; preds = %advance
  %cmp157 = icmp sgt i32 %range.addr.7, 0, !dbg !882
  br i1 %cmp157, label %if.then159, label %if.else161, !dbg !882

if.then159:                                       ; preds = %if.else156
  %dec160 = add nsw i32 %range.addr.7, -1, !dbg !883
  tail call void @llvm.dbg.value(metadata !{i32 %dec160}, i64 0, metadata !176), !dbg !883
  %inc = add nsw i32 %startpos.addr.2, 1, !dbg !885
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !175), !dbg !885
  br label %for.cond, !dbg !886

if.else161:                                       ; preds = %if.else156
  %inc162 = add nsw i32 %range.addr.7, 1, !dbg !887
  tail call void @llvm.dbg.value(metadata !{i32 %inc162}, i64 0, metadata !176), !dbg !887
  %dec163 = add nsw i32 %startpos.addr.2, -1, !dbg !889
  tail call void @llvm.dbg.value(metadata !{i32 %dec163}, i64 0, metadata !175), !dbg !889
  br label %for.cond

return:                                           ; preds = %advance, %if.end149, %if.end144, %land.lhs.true137, %if.then37, %if.then24, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.then24 ], [ -2, %if.then37 ], [ -1, %advance ], [ -2, %if.end149 ], [ %startpos.addr.1, %if.end144 ], [ -1, %land.lhs.true137 ]
  ret i32 %retval.0, !dbg !890
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* nocapture %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #0 {
entry:
  %p1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !517), !dbg !891
  call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !518), !dbg !892
  call void @llvm.dbg.value(metadata !{i32 %size1}, i64 0, metadata !519), !dbg !893
  call void @llvm.dbg.value(metadata !{i8* %string2}, i64 0, metadata !520), !dbg !892
  call void @llvm.dbg.value(metadata !{i32 %size2}, i64 0, metadata !521), !dbg !893
  call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !522), !dbg !894
  call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !523), !dbg !895
  call void @llvm.dbg.value(metadata !{i32 %stop}, i64 0, metadata !524), !dbg !896
  call void @llvm.dbg.declare(metadata !{i8** %p1}, metadata !526), !dbg !897
  %buffer = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0, !dbg !898
  %0 = load i8** %buffer, align 8, !dbg !898, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !533), !dbg !898
  %used = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2, !dbg !899
  %1 = load i64* %used, align 8, !dbg !899, !tbaa !713
  %add.ptr = getelementptr inbounds i8* %0, i64 %1, !dbg !899
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !534), !dbg !899
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !535), !dbg !901
  %translate1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 5, !dbg !902
  %2 = load i8** %translate1, align 8, !dbg !902, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !536), !dbg !902
  call void @llvm.dbg.declare(metadata !719, metadata !537), !dbg !903
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 6, !dbg !904
  %3 = load i64* %re_nsub, align 8, !dbg !904, !tbaa !713
  %add = add i64 %3, 1, !dbg !904
  call void @llvm.dbg.value(metadata !{i64 %add}, i64 0, metadata !538), !dbg !904
  call void @llvm.dbg.value(metadata !905, i64 0, metadata !539), !dbg !906
  call void @llvm.dbg.value(metadata !907, i64 0, metadata !541), !dbg !908
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !559), !dbg !909
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !562), !dbg !910
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !563), !dbg !911
  %call = call noalias i8* @malloc(i64 40) #7, !dbg !912
  %4 = bitcast i8* %call to %union.fail_stack_elt*, !dbg !912
  %cmp = icmp eq i8* %call, null, !dbg !912
  br i1 %cmp, label %return, label %if.end, !dbg !912

if.end:                                           ; preds = %entry
  %tobool = icmp eq i64 %3, 0, !dbg !914
  br i1 %tobool, label %if.end70, label %if.then4, !dbg !914

if.then4:                                         ; preds = %if.end
  %mul = shl i64 %add, 3, !dbg !915
  %call5 = call noalias i8* @malloc(i64 %mul) #7, !dbg !915
  %5 = bitcast i8* %call5 to i8**, !dbg !915
  call void @llvm.dbg.value(metadata !{i8** %5}, i64 0, metadata !542), !dbg !915
  %call7 = call noalias i8* @malloc(i64 %mul) #7, !dbg !917
  %6 = bitcast i8* %call7 to i8**, !dbg !917
  call void @llvm.dbg.value(metadata !{i8** %6}, i64 0, metadata !543), !dbg !917
  %call9 = call noalias i8* @malloc(i64 %mul) #7, !dbg !918
  %7 = bitcast i8* %call9 to i8**, !dbg !918
  call void @llvm.dbg.value(metadata !{i8** %7}, i64 0, metadata !544), !dbg !918
  %call11 = call noalias i8* @malloc(i64 %mul) #7, !dbg !919
  %8 = bitcast i8* %call11 to i8**, !dbg !919
  call void @llvm.dbg.value(metadata !{i8** %8}, i64 0, metadata !545), !dbg !919
  %call13 = call noalias i8* @malloc(i64 %mul) #7, !dbg !920
  %9 = bitcast i8* %call13 to i8**, !dbg !920
  call void @llvm.dbg.value(metadata !{i8** %9}, i64 0, metadata !560), !dbg !920
  %call15 = call noalias i8* @malloc(i64 %mul) #7, !dbg !921
  %10 = bitcast i8* %call15 to i8**, !dbg !921
  call void @llvm.dbg.value(metadata !{i8** %10}, i64 0, metadata !561), !dbg !921
  %call17 = call noalias i8* @malloc(i64 %mul) #7, !dbg !922
  %11 = bitcast i8* %call17 to %union.register_info_type*, !dbg !922
  call void @llvm.dbg.value(metadata !{%union.register_info_type* %11}, i64 0, metadata !546), !dbg !922
  %call19 = call noalias i8* @malloc(i64 %mul) #7, !dbg !923
  %12 = bitcast i8* %call19 to i8**, !dbg !923
  call void @llvm.dbg.value(metadata !{i8** %12}, i64 0, metadata !564), !dbg !923
  %call21 = call noalias i8* @malloc(i64 %mul) #7, !dbg !924
  %13 = bitcast i8* %call21 to %union.register_info_type*, !dbg !924
  call void @llvm.dbg.value(metadata !{%union.register_info_type* %13}, i64 0, metadata !565), !dbg !924
  %tobool22 = icmp ne i8* %call5, null, !dbg !925
  %tobool22.not = xor i1 %tobool22, true, !dbg !925
  %tobool23 = icmp eq i8* %call7, null, !dbg !925
  %or.cond = or i1 %tobool23, %tobool22.not, !dbg !925
  %tobool25 = icmp eq i8* %call9, null, !dbg !925
  %or.cond3882 = or i1 %or.cond, %tobool25, !dbg !925
  %tobool27 = icmp eq i8* %call11, null, !dbg !925
  %or.cond3883 = or i1 %or.cond3882, %tobool27, !dbg !925
  %tobool29 = icmp eq i8* %call17, null, !dbg !925
  %or.cond3884 = or i1 %or.cond3883, %tobool29, !dbg !925
  %tobool31 = icmp eq i8* %call13, null, !dbg !925
  %or.cond3885 = or i1 %or.cond3884, %tobool31, !dbg !925
  %tobool33 = icmp eq i8* %call15, null, !dbg !925
  %or.cond3886 = or i1 %or.cond3885, %tobool33, !dbg !925
  %tobool35 = icmp eq i8* %call19, null, !dbg !925
  %or.cond3887 = or i1 %or.cond3886, %tobool35, !dbg !925
  %tobool37 = icmp eq i8* %call21, null, !dbg !925
  %or.cond3888 = or i1 %or.cond3887, %tobool37, !dbg !925
  br i1 %or.cond3888, label %do.body39, label %if.end70, !dbg !925

do.body39:                                        ; preds = %if.then4
  call void @free(i8* %call) #7, !dbg !926
  br i1 %tobool22, label %if.then42, label %if.end43, !dbg !926

if.then42:                                        ; preds = %do.body39
  call void @free(i8* %call5) #7, !dbg !926
  br label %if.end43, !dbg !926

if.end43:                                         ; preds = %if.then42, %do.body39
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !542), !dbg !926
  br i1 %tobool23, label %if.end46, label %if.then45, !dbg !926

if.then45:                                        ; preds = %if.end43
  call void @free(i8* %call7) #7, !dbg !926
  br label %if.end46, !dbg !926

if.end46:                                         ; preds = %if.end43, %if.then45
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !543), !dbg !926
  br i1 %tobool25, label %if.end49, label %if.then48, !dbg !926

if.then48:                                        ; preds = %if.end46
  call void @free(i8* %call9) #7, !dbg !926
  br label %if.end49, !dbg !926

if.end49:                                         ; preds = %if.end46, %if.then48
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !544), !dbg !926
  br i1 %tobool27, label %if.end52, label %if.then51, !dbg !926

if.then51:                                        ; preds = %if.end49
  call void @free(i8* %call11) #7, !dbg !926
  br label %if.end52, !dbg !926

if.end52:                                         ; preds = %if.end49, %if.then51
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !545), !dbg !926
  br i1 %tobool31, label %if.end55, label %if.then54, !dbg !926

if.then54:                                        ; preds = %if.end52
  call void @free(i8* %call13) #7, !dbg !926
  br label %if.end55, !dbg !926

if.end55:                                         ; preds = %if.end52, %if.then54
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !560), !dbg !926
  br i1 %tobool33, label %if.end58, label %if.then57, !dbg !926

if.then57:                                        ; preds = %if.end55
  call void @free(i8* %call15) #7, !dbg !926
  br label %if.end58, !dbg !926

if.end58:                                         ; preds = %if.end55, %if.then57
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !561), !dbg !926
  br i1 %tobool29, label %if.end61, label %if.then60, !dbg !926

if.then60:                                        ; preds = %if.end58
  call void @free(i8* %call17) #7, !dbg !926
  br label %if.end61, !dbg !926

if.end61:                                         ; preds = %if.end58, %if.then60
  call void @llvm.dbg.value(metadata !930, i64 0, metadata !546), !dbg !926
  br i1 %tobool35, label %if.end64, label %if.then63, !dbg !926

if.then63:                                        ; preds = %if.end61
  call void @free(i8* %call19) #7, !dbg !926
  br label %if.end64, !dbg !926

if.end64:                                         ; preds = %if.end61, %if.then63
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !564), !dbg !926
  br i1 %tobool37, label %return, label %if.then66, !dbg !926

if.then66:                                        ; preds = %if.end64
  call void @free(i8* %call21) #7, !dbg !926
  br label %return, !dbg !926

if.end70:                                         ; preds = %if.end, %if.then4
  %regstart.0 = phi i8** [ %5, %if.then4 ], [ null, %if.end ]
  %regend.0 = phi i8** [ %6, %if.then4 ], [ null, %if.end ]
  %old_regstart.0 = phi i8** [ %7, %if.then4 ], [ null, %if.end ]
  %old_regend.0 = phi i8** [ %8, %if.then4 ], [ null, %if.end ]
  %reg_info.0 = phi %union.register_info_type* [ %11, %if.then4 ], [ null, %if.end ]
  %best_regstart.0 = phi i8** [ %9, %if.then4 ], [ null, %if.end ]
  %best_regend.0 = phi i8** [ %10, %if.then4 ], [ null, %if.end ]
  %reg_dummy.0 = phi i8** [ %12, %if.then4 ], [ null, %if.end ]
  %reg_info_dummy.0 = phi %union.register_info_type* [ %13, %if.then4 ], [ null, %if.end ]
  %cmp71 = icmp slt i32 %pos, 0, !dbg !931
  br i1 %cmp71, label %do.body75, label %lor.lhs.false, !dbg !931

lor.lhs.false:                                    ; preds = %if.end70
  %add72 = add nsw i32 %size2, %size1, !dbg !931
  %cmp73 = icmp slt i32 %add72, %pos, !dbg !931
  br i1 %cmp73, label %do.body75, label %for.cond.preheader, !dbg !931

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp1064138 = icmp ugt i64 %add, 1, !dbg !932
  br i1 %cmp1064138, label %for.body, label %for.end, !dbg !932

do.body75:                                        ; preds = %if.end70, %lor.lhs.false
  call void @free(i8* %call) #7, !dbg !934
  %tobool77 = icmp eq i8** %regstart.0, null, !dbg !934
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !934

if.then78:                                        ; preds = %do.body75
  %14 = bitcast i8** %regstart.0 to i8*, !dbg !934
  call void @free(i8* %14) #7, !dbg !934
  br label %if.end79, !dbg !934

if.end79:                                         ; preds = %do.body75, %if.then78
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !542), !dbg !934
  %tobool80 = icmp eq i8** %regend.0, null, !dbg !934
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !934

if.then81:                                        ; preds = %if.end79
  %15 = bitcast i8** %regend.0 to i8*, !dbg !934
  call void @free(i8* %15) #7, !dbg !934
  br label %if.end82, !dbg !934

if.end82:                                         ; preds = %if.end79, %if.then81
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !543), !dbg !934
  %tobool83 = icmp eq i8** %old_regstart.0, null, !dbg !934
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !934

if.then84:                                        ; preds = %if.end82
  %16 = bitcast i8** %old_regstart.0 to i8*, !dbg !934
  call void @free(i8* %16) #7, !dbg !934
  br label %if.end85, !dbg !934

if.end85:                                         ; preds = %if.end82, %if.then84
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !544), !dbg !934
  %tobool86 = icmp eq i8** %old_regend.0, null, !dbg !934
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !934

if.then87:                                        ; preds = %if.end85
  %17 = bitcast i8** %old_regend.0 to i8*, !dbg !934
  call void @free(i8* %17) #7, !dbg !934
  br label %if.end88, !dbg !934

if.end88:                                         ; preds = %if.end85, %if.then87
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !545), !dbg !934
  %tobool89 = icmp eq i8** %best_regstart.0, null, !dbg !934
  br i1 %tobool89, label %if.end91, label %if.then90, !dbg !934

if.then90:                                        ; preds = %if.end88
  %18 = bitcast i8** %best_regstart.0 to i8*, !dbg !934
  call void @free(i8* %18) #7, !dbg !934
  br label %if.end91, !dbg !934

if.end91:                                         ; preds = %if.end88, %if.then90
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !560), !dbg !934
  %tobool92 = icmp eq i8** %best_regend.0, null, !dbg !934
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !934

if.then93:                                        ; preds = %if.end91
  %19 = bitcast i8** %best_regend.0 to i8*, !dbg !934
  call void @free(i8* %19) #7, !dbg !934
  br label %if.end94, !dbg !934

if.end94:                                         ; preds = %if.end91, %if.then93
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !561), !dbg !934
  %tobool95 = icmp eq %union.register_info_type* %reg_info.0, null, !dbg !934
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !934

if.then96:                                        ; preds = %if.end94
  %20 = bitcast %union.register_info_type* %reg_info.0 to i8*, !dbg !934
  call void @free(i8* %20) #7, !dbg !934
  br label %if.end97, !dbg !934

if.end97:                                         ; preds = %if.end94, %if.then96
  call void @llvm.dbg.value(metadata !930, i64 0, metadata !546), !dbg !934
  %tobool98 = icmp eq i8** %reg_dummy.0, null, !dbg !934
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !934

if.then99:                                        ; preds = %if.end97
  %21 = bitcast i8** %reg_dummy.0 to i8*, !dbg !934
  call void @free(i8* %21) #7, !dbg !934
  br label %if.end100, !dbg !934

if.end100:                                        ; preds = %if.end97, %if.then99
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !564), !dbg !934
  %tobool101 = icmp eq %union.register_info_type* %reg_info_dummy.0, null, !dbg !934
  br i1 %tobool101, label %return, label %if.then102, !dbg !934

if.then102:                                       ; preds = %if.end100
  %22 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*, !dbg !934
  call void @free(i8* %22) #7, !dbg !934
  br label %return, !dbg !934

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv4270 = phi i64 [ %indvars.iv.next4271, %for.body ], [ 1, %for.cond.preheader ]
  %sext4292 = shl i64 %indvars.iv4270, 32, !dbg !937
  %idxprom = ashr exact i64 %sext4292, 32, !dbg !937
  %arrayidx = getelementptr inbounds i8** %old_regend.0, i64 %idxprom, !dbg !937
  store i8* @reg_unset_dummy, i8** %arrayidx, align 8, !dbg !937, !tbaa !722
  %arrayidx109 = getelementptr inbounds i8** %old_regstart.0, i64 %idxprom, !dbg !937
  store i8* @reg_unset_dummy, i8** %arrayidx109, align 8, !dbg !937, !tbaa !722
  %arrayidx111 = getelementptr inbounds i8** %regend.0, i64 %idxprom, !dbg !937
  store i8* @reg_unset_dummy, i8** %arrayidx111, align 8, !dbg !937, !tbaa !722
  %arrayidx113 = getelementptr inbounds i8** %regstart.0, i64 %idxprom, !dbg !937
  store i8* @reg_unset_dummy, i8** %arrayidx113, align 8, !dbg !937, !tbaa !722
  %arrayidx115 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom, !dbg !939
  %23 = bitcast %union.register_info_type* %arrayidx115 to i8*, !dbg !939
  %bf.load = load i8* %23, align 4, !dbg !939
  %bf.clear120 = and i8 %bf.load, -32, !dbg !940
  %bf.clear130 = or i8 %bf.clear120, 3, !dbg !940
  store i8 %bf.clear130, i8* %23, align 4, !dbg !940
  %indvars.iv.next4271 = add i64 %indvars.iv4270, 1, !dbg !932
  %exitcond4272 = icmp eq i64 %indvars.iv.next4271, %add, !dbg !932
  br i1 %exitcond4272, label %for.end, label %for.body, !dbg !932

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp131 = icmp ne i32 %size2, 0, !dbg !941
  %cmp134 = icmp eq i8* %string1, null, !dbg !941
  %or.cond3889 = or i1 %cmp131, %cmp134, !dbg !941
  call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !520), !dbg !942
  call void @llvm.dbg.value(metadata !{i32 %size1}, i64 0, metadata !521), !dbg !944
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !518), !dbg !945
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !519), !dbg !946
  %size2.size1 = select i1 %or.cond3889, i32 %size2, i32 %size1, !dbg !941
  %string2.string1 = select i1 %or.cond3889, i8* %string2, i8* %string1, !dbg !941
  %size1. = select i1 %or.cond3889, i32 %size1, i32 0, !dbg !941
  %string1. = select i1 %or.cond3889, i8* %string1, i8* null, !dbg !941
  %idx.ext = sext i32 %size1. to i64, !dbg !947
  %add.ptr138 = getelementptr inbounds i8* %string1., i64 %idx.ext, !dbg !947
  call void @llvm.dbg.value(metadata !{i8* %add.ptr138}, i64 0, metadata !527), !dbg !947
  %idx.ext139 = sext i32 %size2.size1 to i64, !dbg !948
  %add.ptr140 = getelementptr inbounds i8* %string2.string1, i64 %idx.ext139, !dbg !948
  call void @llvm.dbg.value(metadata !{i8* %add.ptr140}, i64 0, metadata !528), !dbg !948
  %cmp141 = icmp slt i32 %size1., %stop, !dbg !949
  %idx.ext147 = sext i32 %stop to i64, !dbg !950
  br i1 %cmp141, label %if.else146, label %if.then143, !dbg !949

if.then143:                                       ; preds = %for.end
  %add.ptr145 = getelementptr inbounds i8* %string1., i64 %idx.ext147, !dbg !952
  call void @llvm.dbg.value(metadata !{i8* %add.ptr145}, i64 0, metadata !529), !dbg !952
  call void @llvm.dbg.value(metadata !{i8* %string2.string1}, i64 0, metadata !530), !dbg !954
  br label %if.end151, !dbg !955

if.else146:                                       ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i8* %add.ptr138}, i64 0, metadata !529), !dbg !956
  %add.ptr148.sum = sub i64 %idx.ext147, %idx.ext, !dbg !950
  %add.ptr150 = getelementptr inbounds i8* %string2.string1, i64 %add.ptr148.sum, !dbg !950
  call void @llvm.dbg.value(metadata !{i8* %add.ptr150}, i64 0, metadata !530), !dbg !950
  br label %if.end151

if.end151:                                        ; preds = %if.else146, %if.then143
  %end_match_2.0 = phi i8* [ %string2.string1, %if.then143 ], [ %add.ptr150, %if.else146 ]
  %end_match_1.0 = phi i8* [ %add.ptr145, %if.then143 ], [ %add.ptr138, %if.else146 ]
  %cmp152 = icmp slt i32 %size1., 1, !dbg !957
  %cmp155 = icmp slt i32 %size1., %pos, !dbg !957
  %or.cond3890 = or i1 %cmp152, %cmp155, !dbg !957
  %idx.ext161 = sext i32 %pos to i64, !dbg !958
  br i1 %or.cond3890, label %if.else160, label %if.then157, !dbg !957

if.then157:                                       ; preds = %if.end151
  %add.ptr159 = getelementptr inbounds i8* %string1., i64 %idx.ext161, !dbg !960
  call void @llvm.dbg.value(metadata !{i8* %add.ptr159}, i64 0, metadata !531), !dbg !960
  call void @llvm.dbg.value(metadata !{i8* %end_match_1.0}, i64 0, metadata !532), !dbg !962
  br label %for.cond167.preheader, !dbg !963

if.else160:                                       ; preds = %if.end151
  %add.ptr162.sum = sub i64 %idx.ext161, %idx.ext, !dbg !958
  %add.ptr165 = getelementptr inbounds i8* %string2.string1, i64 %add.ptr162.sum, !dbg !958
  call void @llvm.dbg.value(metadata !{i8* %add.ptr165}, i64 0, metadata !531), !dbg !958
  call void @llvm.dbg.value(metadata !{i8* %end_match_2.0}, i64 0, metadata !532), !dbg !964
  br label %for.cond167.preheader

for.cond167.preheader:                            ; preds = %if.else160, %if.then157
  %dend.0.ph = phi i8* [ %end_match_1.0, %if.then157 ], [ %end_match_2.0, %if.else160 ]
  %d.0.ph = phi i8* [ %add.ptr159, %if.then157 ], [ %add.ptr165, %if.else160 ]
  %notlhs = icmp ne i32 %size1., 0, !dbg !965
  %tobool593 = icmp eq i8* %2, null, !dbg !966
  %cond1295 = select i1 %notlhs, i8* %string1., i8* %string2.string1, !dbg !967
  %tobool1299 = icmp eq i32 %size2.size1, 0, !dbg !967
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !968
  %add.ptr2326 = getelementptr inbounds i8* %string2.string1, i64 -1, !dbg !970
  %add.ptr138.sum3862 = add i64 %idx.ext, -1, !dbg !970
  %add.ptr2330 = getelementptr inbounds i8* %string1., i64 %add.ptr138.sum3862, !dbg !970
  %syntax = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 3, !dbg !971
  br label %for.cond167, !dbg !972

for.cond167:                                      ; preds = %if.end935, %if.end2773, %cond.end2535, %do.body638, %if.then1300, %if.then1324, %do.end725, %do.end802, %cond.end844, %for.end1451, %for.end1596, %do.body1965, %for.end2147, %if.else2239, %do.body2244, %do.end2604, %do.end2663, %if.end587, %land.lhs.true1313, %land.lhs.true1343, %sw.bb1352, %sw.bb1364, %if.else2205, %if.then2190, %sw.bb2280, %cond.end2336, %cond.end2408, %cond.end2474, %land.lhs.true2445, %while.end1221, %for.body644, %for.cond641.preheader, %if.then952, %do.body959, %land.lhs.true979, %land.lhs.true983, %land.lhs.true988, %for.cond167.preheader
  %fail_stack.sroa.0.0 = phi %union.fail_stack_elt* [ %4, %for.cond167.preheader ], [ %fail_stack.sroa.0.0, %do.end2663 ], [ %fail_stack.sroa.0.0, %do.end2604 ], [ %fail_stack.sroa.0.0, %cond.end2535 ], [ %fail_stack.sroa.0.0, %land.lhs.true2445 ], [ %fail_stack.sroa.0.0, %cond.end2474 ], [ %fail_stack.sroa.0.0, %cond.end2408 ], [ %fail_stack.sroa.0.0, %sw.bb2280 ], [ %fail_stack.sroa.0.0, %cond.end2336 ], [ %fail_stack.sroa.0.0, %do.body2244 ], [ %fail_stack.sroa.0.6, %do.body1965 ], [ %fail_stack.sroa.0.0, %if.else2239 ], [ %fail_stack.sroa.0.0, %if.then2190 ], [ %fail_stack.sroa.0.5, %for.end1596 ], [ %fail_stack.sroa.0.0, %if.else2205 ], [ %fail_stack.sroa.0.8, %for.end2147 ], [ %fail_stack.sroa.0.4, %for.end1451 ], [ %fail_stack.sroa.0.0, %sw.bb1364 ], [ %fail_stack.sroa.0.0, %sw.bb1352 ], [ %fail_stack.sroa.0.0, %if.then1324 ], [ %fail_stack.sroa.0.0, %land.lhs.true1343 ], [ %fail_stack.sroa.0.0, %if.then1300 ], [ %fail_stack.sroa.0.0, %land.lhs.true1313 ], [ %fail_stack.sroa.0.0, %cond.end844 ], [ %fail_stack.sroa.0.0, %do.end802 ], [ %fail_stack.sroa.0.0, %do.end725 ], [ %fail_stack.sroa.0.0, %do.body638 ], [ %fail_stack.sroa.0.0, %if.end587 ], [ %fail_stack.sroa.0.9.ph, %if.end2773 ], [ %fail_stack.sroa.0.0, %while.end1221 ], [ %fail_stack.sroa.0.0, %for.body644 ], [ %fail_stack.sroa.0.0, %for.cond641.preheader ], [ %fail_stack.sroa.0.0, %if.then952 ], [ %fail_stack.sroa.0.0, %do.body959 ], [ %fail_stack.sroa.0.0, %land.lhs.true979 ], [ %fail_stack.sroa.0.0, %land.lhs.true983 ], [ %fail_stack.sroa.0.0, %land.lhs.true988 ], [ %fail_stack.sroa.0.0, %if.end935 ]
  %lowest_active_reg.0 = phi i64 [ 257, %for.cond167.preheader ], [ %lowest_active_reg.0, %do.end2663 ], [ %lowest_active_reg.0, %do.end2604 ], [ %lowest_active_reg.0, %cond.end2535 ], [ %lowest_active_reg.0, %land.lhs.true2445 ], [ %lowest_active_reg.0, %cond.end2474 ], [ %lowest_active_reg.0, %cond.end2408 ], [ %lowest_active_reg.0, %sw.bb2280 ], [ %lowest_active_reg.0, %cond.end2336 ], [ %lowest_active_reg.0, %do.body2244 ], [ %lowest_active_reg.0, %do.body1965 ], [ %lowest_active_reg.0, %if.else2239 ], [ %lowest_active_reg.0, %if.then2190 ], [ %lowest_active_reg.3.ph, %for.end1596 ], [ %lowest_active_reg.0, %if.else2205 ], [ %lowest_active_reg.0, %for.end2147 ], [ %lowest_active_reg.0, %for.end1451 ], [ %lowest_active_reg.0, %sw.bb1364 ], [ %lowest_active_reg.0, %sw.bb1352 ], [ %lowest_active_reg.0, %if.then1324 ], [ %lowest_active_reg.0, %land.lhs.true1343 ], [ %lowest_active_reg.0, %if.then1300 ], [ %lowest_active_reg.0, %land.lhs.true1313 ], [ %conv861.lowest_active_reg.0, %cond.end844 ], [ %lowest_active_reg.0, %do.end802 ], [ %lowest_active_reg.0, %do.end725 ], [ %lowest_active_reg.0, %do.body638 ], [ %lowest_active_reg.0, %if.end587 ], [ %conv2702, %if.end2773 ], [ %lowest_active_reg.0, %while.end1221 ], [ %lowest_active_reg.0, %for.body644 ], [ %lowest_active_reg.0, %for.cond641.preheader ], [ %lowest_active_reg.2, %if.then952 ], [ %lowest_active_reg.2, %do.body959 ], [ %lowest_active_reg.2, %land.lhs.true979 ], [ %lowest_active_reg.2, %land.lhs.true983 ], [ %lowest_active_reg.2, %land.lhs.true988 ], [ %lowest_active_reg.2, %if.end935 ]
  %highest_active_reg.0 = phi i64 [ 256, %for.cond167.preheader ], [ %highest_active_reg.0, %do.end2663 ], [ %highest_active_reg.0, %do.end2604 ], [ %highest_active_reg.0, %cond.end2535 ], [ %highest_active_reg.0, %land.lhs.true2445 ], [ %highest_active_reg.0, %cond.end2474 ], [ %highest_active_reg.0, %cond.end2408 ], [ %highest_active_reg.0, %sw.bb2280 ], [ %highest_active_reg.0, %cond.end2336 ], [ %highest_active_reg.0, %do.body2244 ], [ %highest_active_reg.0, %do.body1965 ], [ %highest_active_reg.0, %if.else2239 ], [ %highest_active_reg.0, %if.then2190 ], [ %highest_active_reg.2.ph, %for.end1596 ], [ %highest_active_reg.0, %if.else2205 ], [ %highest_active_reg.0, %for.end2147 ], [ %highest_active_reg.0, %for.end1451 ], [ %highest_active_reg.0, %sw.bb1364 ], [ %highest_active_reg.0, %sw.bb1352 ], [ %highest_active_reg.0, %if.then1324 ], [ %highest_active_reg.0, %land.lhs.true1343 ], [ %highest_active_reg.0, %if.then1300 ], [ %highest_active_reg.0, %land.lhs.true1313 ], [ %conv861, %cond.end844 ], [ %highest_active_reg.0, %do.end802 ], [ %highest_active_reg.0, %do.end725 ], [ %highest_active_reg.0, %do.body638 ], [ %highest_active_reg.0, %if.end587 ], [ %conv2695, %if.end2773 ], [ %highest_active_reg.0, %while.end1221 ], [ %highest_active_reg.0, %for.body644 ], [ %highest_active_reg.0, %for.cond641.preheader ], [ %highest_active_reg.1, %if.then952 ], [ %highest_active_reg.1, %do.body959 ], [ %highest_active_reg.1, %land.lhs.true979 ], [ %highest_active_reg.1, %land.lhs.true983 ], [ %highest_active_reg.1, %land.lhs.true988 ], [ %highest_active_reg.1, %if.end935 ]
  %best_regs_set.0 = phi i32 [ 0, %for.cond167.preheader ], [ %best_regs_set.0, %do.end2663 ], [ %best_regs_set.0, %do.end2604 ], [ %best_regs_set.0, %cond.end2535 ], [ %best_regs_set.0, %land.lhs.true2445 ], [ %best_regs_set.0, %cond.end2474 ], [ %best_regs_set.0, %cond.end2408 ], [ %best_regs_set.0, %sw.bb2280 ], [ %best_regs_set.0, %cond.end2336 ], [ %best_regs_set.0, %do.body2244 ], [ %best_regs_set.0, %do.body1965 ], [ %best_regs_set.0, %if.else2239 ], [ %best_regs_set.0, %if.then2190 ], [ %best_regs_set.0, %for.end1596 ], [ %best_regs_set.0, %if.else2205 ], [ %best_regs_set.0, %for.end2147 ], [ %best_regs_set.0, %for.end1451 ], [ %best_regs_set.0, %sw.bb1364 ], [ %best_regs_set.0, %sw.bb1352 ], [ %best_regs_set.0, %if.then1324 ], [ %best_regs_set.0, %land.lhs.true1343 ], [ %best_regs_set.0, %if.then1300 ], [ %best_regs_set.0, %land.lhs.true1313 ], [ %best_regs_set.0, %cond.end844 ], [ %best_regs_set.0, %do.end802 ], [ %best_regs_set.0, %do.end725 ], [ %best_regs_set.0, %do.body638 ], [ %best_regs_set.0, %if.end587 ], [ %best_regs_set.1.ph, %if.end2773 ], [ %best_regs_set.0, %while.end1221 ], [ %best_regs_set.0, %for.body644 ], [ %best_regs_set.0, %for.cond641.preheader ], [ %best_regs_set.0, %if.then952 ], [ %best_regs_set.0, %do.body959 ], [ %best_regs_set.0, %land.lhs.true979 ], [ %best_regs_set.0, %land.lhs.true983 ], [ %best_regs_set.0, %land.lhs.true988 ], [ %best_regs_set.0, %if.end935 ]
  %match_end.0 = phi i8* [ null, %for.cond167.preheader ], [ %match_end.0, %do.end2663 ], [ %match_end.0, %do.end2604 ], [ %match_end.0, %cond.end2535 ], [ %match_end.0, %land.lhs.true2445 ], [ %match_end.0, %cond.end2474 ], [ %match_end.0, %cond.end2408 ], [ %match_end.0, %sw.bb2280 ], [ %match_end.0, %cond.end2336 ], [ %match_end.0, %do.body2244 ], [ %match_end.0, %do.body1965 ], [ %match_end.0, %if.else2239 ], [ %match_end.0, %if.then2190 ], [ %match_end.0, %for.end1596 ], [ %match_end.0, %if.else2205 ], [ %match_end.0, %for.end2147 ], [ %match_end.0, %for.end1451 ], [ %match_end.0, %sw.bb1364 ], [ %match_end.0, %sw.bb1352 ], [ %match_end.0, %if.then1324 ], [ %match_end.0, %land.lhs.true1343 ], [ %match_end.0, %if.then1300 ], [ %match_end.0, %land.lhs.true1313 ], [ %match_end.0, %cond.end844 ], [ %match_end.0, %do.end802 ], [ %match_end.0, %do.end725 ], [ %match_end.0, %do.body638 ], [ %match_end.0, %if.end587 ], [ %match_end.2.ph, %if.end2773 ], [ %match_end.0, %while.end1221 ], [ %match_end.0, %for.body644 ], [ %match_end.0, %for.cond641.preheader ], [ %match_end.0, %if.then952 ], [ %match_end.0, %do.body959 ], [ %match_end.0, %land.lhs.true979 ], [ %match_end.0, %land.lhs.true983 ], [ %match_end.0, %land.lhs.true988 ], [ %match_end.0, %if.end935 ]
  %set_regs_matched_done.0 = phi i32 [ 0, %for.cond167.preheader ], [ %set_regs_matched_done.6, %do.end2663 ], [ %set_regs_matched_done.5, %do.end2604 ], [ %set_regs_matched_done.0, %cond.end2535 ], [ %set_regs_matched_done.0, %land.lhs.true2445 ], [ %set_regs_matched_done.0, %cond.end2474 ], [ %set_regs_matched_done.0, %cond.end2408 ], [ %set_regs_matched_done.0, %sw.bb2280 ], [ %set_regs_matched_done.0, %cond.end2336 ], [ %set_regs_matched_done.0, %do.body2244 ], [ %set_regs_matched_done.4, %do.body1965 ], [ %set_regs_matched_done.0, %if.else2239 ], [ %set_regs_matched_done.0, %if.then2190 ], [ %set_regs_matched_done.0, %for.end1596 ], [ %set_regs_matched_done.0, %if.else2205 ], [ %set_regs_matched_done.0, %for.end2147 ], [ %set_regs_matched_done.0, %for.end1451 ], [ %set_regs_matched_done.0, %sw.bb1364 ], [ %set_regs_matched_done.0, %sw.bb1352 ], [ %set_regs_matched_done.0, %if.then1324 ], [ %set_regs_matched_done.0, %land.lhs.true1343 ], [ %set_regs_matched_done.0, %if.then1300 ], [ %set_regs_matched_done.0, %land.lhs.true1313 ], [ 0, %cond.end844 ], [ %set_regs_matched_done.2, %do.end802 ], [ %set_regs_matched_done.1, %do.end725 ], [ %set_regs_matched_done.0, %do.body638 ], [ %set_regs_matched_done.0, %if.end587 ], [ 0, %if.end2773 ], [ %set_regs_matched_done.3.ph, %while.end1221 ], [ 1, %for.body644 ], [ 1, %for.cond641.preheader ], [ 0, %if.then952 ], [ 0, %do.body959 ], [ 0, %land.lhs.true979 ], [ 0, %land.lhs.true983 ], [ 0, %land.lhs.true988 ], [ 0, %if.end935 ]
  %fail_stack.sroa.1.0 = phi i32 [ 5, %for.cond167.preheader ], [ %fail_stack.sroa.1.0, %do.end2663 ], [ %fail_stack.sroa.1.0, %do.end2604 ], [ %fail_stack.sroa.1.0, %cond.end2535 ], [ %fail_stack.sroa.1.0, %land.lhs.true2445 ], [ %fail_stack.sroa.1.0, %cond.end2474 ], [ %fail_stack.sroa.1.0, %cond.end2408 ], [ %fail_stack.sroa.1.0, %sw.bb2280 ], [ %fail_stack.sroa.1.0, %cond.end2336 ], [ %fail_stack.sroa.1.0, %do.body2244 ], [ %fail_stack.sroa.1.7, %do.body1965 ], [ %fail_stack.sroa.1.0, %if.else2239 ], [ %fail_stack.sroa.1.0, %if.then2190 ], [ %fail_stack.sroa.1.5, %for.end1596 ], [ %fail_stack.sroa.1.0, %if.else2205 ], [ %fail_stack.sroa.1.10, %for.end2147 ], [ %fail_stack.sroa.1.3, %for.end1451 ], [ %fail_stack.sroa.1.0, %sw.bb1364 ], [ %fail_stack.sroa.1.0, %sw.bb1352 ], [ %fail_stack.sroa.1.0, %if.then1324 ], [ %fail_stack.sroa.1.0, %land.lhs.true1343 ], [ %fail_stack.sroa.1.0, %if.then1300 ], [ %fail_stack.sroa.1.0, %land.lhs.true1313 ], [ %fail_stack.sroa.1.0, %cond.end844 ], [ %fail_stack.sroa.1.0, %do.end802 ], [ %fail_stack.sroa.1.0, %do.end725 ], [ %fail_stack.sroa.1.0, %do.body638 ], [ %fail_stack.sroa.1.0, %if.end587 ], [ %fail_stack.sroa.1.12.ph, %if.end2773 ], [ %fail_stack.sroa.1.0, %while.end1221 ], [ %fail_stack.sroa.1.0, %for.body644 ], [ %fail_stack.sroa.1.0, %for.cond641.preheader ], [ %fail_stack.sroa.1.0, %if.then952 ], [ %fail_stack.sroa.1.0, %do.body959 ], [ %fail_stack.sroa.1.0, %land.lhs.true979 ], [ %fail_stack.sroa.1.0, %land.lhs.true983 ], [ %fail_stack.sroa.1.0, %land.lhs.true988 ], [ %fail_stack.sroa.1.0, %if.end935 ]
  %fail_stack.sroa.2.0 = phi i32 [ 0, %for.cond167.preheader ], [ %fail_stack.sroa.2.0, %do.end2663 ], [ %fail_stack.sroa.2.0, %do.end2604 ], [ %fail_stack.sroa.2.0, %cond.end2535 ], [ %fail_stack.sroa.2.0, %land.lhs.true2445 ], [ %fail_stack.sroa.2.0, %cond.end2474 ], [ %fail_stack.sroa.2.0, %cond.end2408 ], [ %fail_stack.sroa.2.0, %sw.bb2280 ], [ %fail_stack.sroa.2.0, %cond.end2336 ], [ %fail_stack.sroa.2.0, %do.body2244 ], [ %fail_stack.sroa.2.5, %do.body1965 ], [ %fail_stack.sroa.2.0, %if.else2239 ], [ %fail_stack.sroa.2.0, %if.then2190 ], [ %inc1620, %for.end1596 ], [ %fail_stack.sroa.2.0, %if.else2205 ], [ %inc2169, %for.end2147 ], [ %inc1475, %for.end1451 ], [ %fail_stack.sroa.2.0, %sw.bb1364 ], [ %fail_stack.sroa.2.0, %sw.bb1352 ], [ %fail_stack.sroa.2.0, %if.then1324 ], [ %fail_stack.sroa.2.0, %land.lhs.true1343 ], [ %fail_stack.sroa.2.0, %if.then1300 ], [ %fail_stack.sroa.2.0, %land.lhs.true1313 ], [ %fail_stack.sroa.2.0, %cond.end844 ], [ %fail_stack.sroa.2.0, %do.end802 ], [ %fail_stack.sroa.2.0, %do.end725 ], [ %fail_stack.sroa.2.0, %do.body638 ], [ %fail_stack.sroa.2.0, %if.end587 ], [ %fail_stack.sroa.2.9.lcssa, %if.end2773 ], [ %fail_stack.sroa.2.0, %while.end1221 ], [ %fail_stack.sroa.2.0, %for.body644 ], [ %fail_stack.sroa.2.0, %for.cond641.preheader ], [ %fail_stack.sroa.2.0, %if.then952 ], [ %fail_stack.sroa.2.0, %do.body959 ], [ %fail_stack.sroa.2.0, %land.lhs.true979 ], [ %fail_stack.sroa.2.0, %land.lhs.true983 ], [ %fail_stack.sroa.2.0, %land.lhs.true988 ], [ %fail_stack.sroa.2.0, %if.end935 ]
  %just_past_start_mem.0 = phi i8* [ null, %for.cond167.preheader ], [ %just_past_start_mem.0, %do.end2663 ], [ %just_past_start_mem.0, %do.end2604 ], [ %just_past_start_mem.0, %cond.end2535 ], [ %just_past_start_mem.0, %land.lhs.true2445 ], [ %just_past_start_mem.0, %cond.end2474 ], [ %just_past_start_mem.0, %cond.end2408 ], [ %just_past_start_mem.0, %sw.bb2280 ], [ %just_past_start_mem.0, %cond.end2336 ], [ %just_past_start_mem.0, %do.body2244 ], [ %just_past_start_mem.0, %do.body1965 ], [ %just_past_start_mem.0, %if.else2239 ], [ %just_past_start_mem.0, %if.then2190 ], [ %just_past_start_mem.0, %for.end1596 ], [ %just_past_start_mem.0, %if.else2205 ], [ %just_past_start_mem.0, %for.end2147 ], [ %just_past_start_mem.0, %for.end1451 ], [ %just_past_start_mem.0, %sw.bb1364 ], [ %just_past_start_mem.0, %sw.bb1352 ], [ %just_past_start_mem.0, %if.then1324 ], [ %just_past_start_mem.0, %land.lhs.true1343 ], [ %just_past_start_mem.0, %if.then1300 ], [ %just_past_start_mem.0, %land.lhs.true1313 ], [ %add.ptr867, %cond.end844 ], [ %just_past_start_mem.0, %do.end802 ], [ %just_past_start_mem.0, %do.end725 ], [ %just_past_start_mem.0, %do.body638 ], [ %just_past_start_mem.0, %if.end587 ], [ %just_past_start_mem.0, %if.end2773 ], [ %just_past_start_mem.0, %while.end1221 ], [ %just_past_start_mem.0, %for.body644 ], [ %just_past_start_mem.0, %for.cond641.preheader ], [ %just_past_start_mem.0, %if.then952 ], [ %just_past_start_mem.0, %do.body959 ], [ %just_past_start_mem.0, %land.lhs.true979 ], [ %just_past_start_mem.0, %land.lhs.true983 ], [ %just_past_start_mem.0, %land.lhs.true988 ], [ %just_past_start_mem.0, %if.end935 ]
  %p.0 = phi i8* [ %0, %for.cond167.preheader ], [ %incdec.ptr, %do.end2663 ], [ %incdec.ptr, %do.end2604 ], [ %incdec.ptr, %cond.end2535 ], [ %incdec.ptr, %land.lhs.true2445 ], [ %incdec.ptr, %cond.end2474 ], [ %incdec.ptr, %cond.end2408 ], [ %incdec.ptr, %sw.bb2280 ], [ %incdec.ptr, %cond.end2336 ], [ %add.ptr2268, %do.body2244 ], [ %add.ptr1978, %do.body1965 ], [ %add.ptr2240, %if.else2239 ], [ %add.ptr2202, %if.then2190 ], [ %add.ptr1493.pre-phi, %for.end1596 ], [ %incdec.ptr, %if.else2205 ], [ %incdec.ptr, %for.end2147 ], [ %add.ptr1380, %for.end1451 ], [ %incdec.ptr, %sw.bb1364 ], [ %incdec.ptr, %sw.bb1352 ], [ %incdec.ptr, %if.then1324 ], [ %incdec.ptr, %land.lhs.true1343 ], [ %incdec.ptr, %if.then1300 ], [ %incdec.ptr, %land.lhs.true1313 ], [ %add.ptr867, %cond.end844 ], [ %add.ptr775, %do.end802 ], [ %incdec.ptr, %do.end725 ], [ %p.3, %do.body638 ], [ %incdec.ptr, %if.end587 ], [ %276, %if.end2773 ], [ %incdec.ptr1151, %while.end1221 ], [ %p.3, %for.body644 ], [ %p.3, %for.cond641.preheader ], [ %add.ptr949, %if.then952 ], [ %add.ptr949, %do.body959 ], [ %add.ptr949, %land.lhs.true979 ], [ %add.ptr949, %land.lhs.true983 ], [ %add.ptr949, %land.lhs.true988 ], [ %add.ptr949, %if.end935 ]
  %dend.0 = phi i8* [ %dend.0.ph, %for.cond167.preheader ], [ %dend.10, %do.end2663 ], [ %dend.9, %do.end2604 ], [ %dend.0, %cond.end2535 ], [ %dend.0, %land.lhs.true2445 ], [ %dend.0, %cond.end2474 ], [ %dend.0, %cond.end2408 ], [ %dend.0, %sw.bb2280 ], [ %dend.0, %cond.end2336 ], [ %dend.0, %do.body2244 ], [ %dend.0, %do.body1965 ], [ %dend.0, %if.else2239 ], [ %dend.0, %if.then2190 ], [ %dend.0, %for.end1596 ], [ %dend.0, %if.else2205 ], [ %dend.0, %for.end2147 ], [ %dend.0, %for.end1451 ], [ %dend.0, %sw.bb1364 ], [ %dend.0, %sw.bb1352 ], [ %dend.0, %if.then1324 ], [ %dend.0, %land.lhs.true1343 ], [ %dend.0, %if.then1300 ], [ %dend.0, %land.lhs.true1313 ], [ %dend.0, %cond.end844 ], [ %dend.6, %do.end802 ], [ %dend.5, %do.end725 ], [ %dend.4, %do.body638 ], [ %dend.0, %if.end587 ], [ %dend.11.end_match_1.0, %if.end2773 ], [ %dend.7, %while.end1221 ], [ %dend.4, %for.body644 ], [ %dend.4, %for.cond641.preheader ], [ %dend.0, %if.then952 ], [ %dend.0, %do.body959 ], [ %dend.0, %land.lhs.true979 ], [ %dend.0, %land.lhs.true983 ], [ %dend.0, %land.lhs.true988 ], [ %dend.0, %if.end935 ]
  %d.0 = phi i8* [ %d.0.ph, %for.cond167.preheader ], [ %incdec.ptr2664, %do.end2663 ], [ %incdec.ptr2605, %do.end2604 ], [ %d.0, %cond.end2535 ], [ %d.0, %land.lhs.true2445 ], [ %d.0, %cond.end2474 ], [ %d.0, %cond.end2408 ], [ %d.0, %sw.bb2280 ], [ %d.0, %cond.end2336 ], [ %d.0, %do.body2244 ], [ %d.0, %do.body1965 ], [ %d.0, %if.else2239 ], [ %d.0, %if.then2190 ], [ %d.0, %for.end1596 ], [ %d.0, %if.else2205 ], [ %d.0, %for.end2147 ], [ %d.0, %for.end1451 ], [ %add.ptr140, %sw.bb1364 ], [ %d.0, %sw.bb1352 ], [ %add.ptr140, %if.then1324 ], [ %d.0, %land.lhs.true1343 ], [ %d.0, %if.then1300 ], [ %d.0, %land.lhs.true1313 ], [ %d.0, %cond.end844 ], [ %incdec.ptr803, %do.end802 ], [ %incdec.ptr726, %do.end725 ], [ %d.4, %do.body638 ], [ %d.0, %if.end587 ], [ %d.11., %if.end2773 ], [ %d.7, %while.end1221 ], [ %d.4, %for.body644 ], [ %d.4, %for.cond641.preheader ], [ %d.0, %if.then952 ], [ %d.0, %do.body959 ], [ %d.0, %land.lhs.true979 ], [ %d.0, %land.lhs.true983 ], [ %d.0, %land.lhs.true988 ], [ %d.0, %if.end935 ]
  %cmp168 = icmp eq i8* %p.0, %add.ptr, !dbg !972
  br i1 %cmp168, label %if.then170, label %if.end587, !dbg !972

if.then170:                                       ; preds = %for.cond167
  %cmp171 = icmp eq i8* %d.0, %end_match_2.0, !dbg !973
  br i1 %cmp171, label %succeed_label, label %if.then173, !dbg !973

if.then173:                                       ; preds = %if.then170
  %cmp180 = icmp ule i8* %match_end.0, %add.ptr138, !dbg !965
  %notrhs = icmp ule i8* %string1., %match_end.0, !dbg !965
  %not.or.cond3891 = and i1 %notrhs, %notlhs, !dbg !965
  %.cmp180 = and i1 %cmp180, %not.or.cond3891, !dbg !965
  %cmp182 = icmp eq i8* %dend.0, %end_match_1.0
  %cmp184tmp = xor i1 %.cmp180, %cmp182
  br i1 %cmp184tmp, label %if.else192, label %if.then188, !dbg !974

if.then188:                                       ; preds = %if.then173
  %cmp189 = icmp ugt i8* %d.0, %match_end.0, !dbg !975
  %conv191 = zext i1 %cmp189 to i8, !dbg !975
  call void @llvm.dbg.value(metadata !{i8 %conv191}, i64 0, metadata !571), !dbg !975
  br label %if.end196, !dbg !975

if.else192:                                       ; preds = %if.then173
  %24 = zext i1 %cmp182 to i8, !dbg !976
  %conv195 = xor i8 %24, 1, !dbg !976
  call void @llvm.dbg.value(metadata !{i8 %conv195}, i64 0, metadata !571), !dbg !976
  br label %if.end196

if.end196:                                        ; preds = %if.else192, %if.then188
  %best_match_p.0 = phi i8 [ %conv191, %if.then188 ], [ %conv195, %if.else192 ]
  %cmp198 = icmp eq i32 %fail_stack.sroa.2.0, 0, !dbg !977
  %tobool224 = icmp ne i32 %best_regs_set.0, 0, !dbg !978
  %tobool226 = icmp eq i8 %best_match_p.0, 0, !dbg !978
  %or.cond3893 = and i1 %tobool224, %tobool226, !dbg !978
  br i1 %cmp198, label %if.else223, label %if.then200, !dbg !977

if.then200:                                       ; preds = %if.end196
  br i1 %or.cond3893, label %fail.preheader, label %for.cond206.preheader, !dbg !979

for.cond206.preheader:                            ; preds = %if.then200
  br i1 %cmp1064138, label %for.body210, label %fail.preheader, !dbg !981

for.body210:                                      ; preds = %for.cond206.preheader, %for.body210
  %indvars.iv4217 = phi i64 [ %indvars.iv.next4218, %for.body210 ], [ 1, %for.cond206.preheader ]
  %sext4291 = shl i64 %indvars.iv4217, 32, !dbg !984
  %idxprom211 = ashr exact i64 %sext4291, 32, !dbg !984
  %arrayidx212 = getelementptr inbounds i8** %regstart.0, i64 %idxprom211, !dbg !984
  %25 = load i8** %arrayidx212, align 8, !dbg !984, !tbaa !722
  %arrayidx214 = getelementptr inbounds i8** %best_regstart.0, i64 %idxprom211, !dbg !984
  store i8* %25, i8** %arrayidx214, align 8, !dbg !984, !tbaa !722
  %arrayidx216 = getelementptr inbounds i8** %regend.0, i64 %idxprom211, !dbg !986
  %26 = load i8** %arrayidx216, align 8, !dbg !986, !tbaa !722
  %arrayidx218 = getelementptr inbounds i8** %best_regend.0, i64 %idxprom211, !dbg !986
  store i8* %26, i8** %arrayidx218, align 8, !dbg !986, !tbaa !722
  %indvars.iv.next4218 = add i64 %indvars.iv4217, 1, !dbg !981
  %exitcond4219 = icmp eq i64 %indvars.iv.next4218, %add, !dbg !981
  br i1 %exitcond4219, label %fail.preheader, label %for.body210, !dbg !981

if.else223:                                       ; preds = %if.end196
  br i1 %or.cond3893, label %restore_best_regs, label %succeed_label, !dbg !978

restore_best_regs:                                ; preds = %if.else223, %for.end2783
  %fail_stack.sroa.0.1 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.9.ph, %for.end2783 ], [ %fail_stack.sroa.0.0, %if.else223 ]
  %match_end.1 = phi i8* [ %match_end.2.ph, %for.end2783 ], [ %match_end.0, %if.else223 ]
  call void @llvm.dbg.value(metadata !{i8* %match_end.1}, i64 0, metadata !531), !dbg !987
  %cmp228 = icmp ult i8* %match_end.1, %string1., !dbg !989
  %cmp231 = icmp ugt i8* %match_end.1, %add.ptr138, !dbg !989
  %or.cond3894 = or i1 %cmp228, %cmp231, !dbg !989
  %cond = select i1 %or.cond3894, i8* %end_match_2.0, i8* %end_match_1.0, !dbg !989
  br i1 %cmp1064138, label %for.body237, label %succeed_label, !dbg !990

for.body237:                                      ; preds = %restore_best_regs, %for.body237
  %indvars.iv4142 = phi i64 [ %indvars.iv.next4143, %for.body237 ], [ 1, %restore_best_regs ]
  %sext4278 = shl i64 %indvars.iv4142, 32, !dbg !992
  %idxprom238 = ashr exact i64 %sext4278, 32, !dbg !992
  %arrayidx239 = getelementptr inbounds i8** %best_regstart.0, i64 %idxprom238, !dbg !992
  %27 = load i8** %arrayidx239, align 8, !dbg !992, !tbaa !722
  %arrayidx241 = getelementptr inbounds i8** %regstart.0, i64 %idxprom238, !dbg !992
  store i8* %27, i8** %arrayidx241, align 8, !dbg !992, !tbaa !722
  %arrayidx243 = getelementptr inbounds i8** %best_regend.0, i64 %idxprom238, !dbg !994
  %28 = load i8** %arrayidx243, align 8, !dbg !994, !tbaa !722
  %arrayidx245 = getelementptr inbounds i8** %regend.0, i64 %idxprom238, !dbg !994
  store i8* %28, i8** %arrayidx245, align 8, !dbg !994, !tbaa !722
  %indvars.iv.next4143 = add i64 %indvars.iv4142, 1, !dbg !990
  %exitcond = icmp eq i64 %indvars.iv.next4143, %add, !dbg !990
  br i1 %exitcond, label %succeed_label, label %for.body237, !dbg !990

succeed_label:                                    ; preds = %if.then170, %if.end587, %restore_best_regs, %for.body237, %if.else223
  %fail_stack.sroa.0.2 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %if.else223 ], [ %fail_stack.sroa.0.1, %for.body237 ], [ %fail_stack.sroa.0.1, %restore_best_regs ], [ %fail_stack.sroa.0.0, %if.end587 ], [ %fail_stack.sroa.0.0, %if.then170 ]
  %dend.1 = phi i8* [ %dend.0, %if.else223 ], [ %cond, %for.body237 ], [ %cond, %restore_best_regs ], [ %dend.0, %if.end587 ], [ %dend.0, %if.then170 ]
  %d.1 = phi i8* [ %d.0, %if.else223 ], [ %match_end.1, %for.body237 ], [ %match_end.1, %restore_best_regs ], [ %d.0, %if.end587 ], [ %end_match_2.0, %if.then170 ]
  %tobool252 = icmp eq %struct.re_registers* %regs, null, !dbg !995
  br i1 %tobool252, label %if.end540, label %land.lhs.true253, !dbg !995

land.lhs.true253:                                 ; preds = %succeed_label
  %bf.load254 = load i8* %not_bol, align 8, !dbg !995
  %bf.clear255 = and i8 %bf.load254, 16, !dbg !995
  %tobool256 = icmp eq i8 %bf.clear255, 0, !dbg !995
  br i1 %tobool256, label %if.then257, label %if.end540, !dbg !995

if.then257:                                       ; preds = %land.lhs.true253
  %bf.lshr259 = lshr i8 %bf.load254, 1, !dbg !996
  %bf.clear260 = and i8 %bf.lshr259, 3, !dbg !996
  switch i8 %bf.clear260, label %if.then257.if.end398_crit_edge [
    i8 0, label %if.then264
    i8 1, label %if.then334
  ], !dbg !996

if.then257.if.end398_crit_edge:                   ; preds = %if.then257
  %num_regs399.pre = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0, !dbg !998
  br label %if.end398, !dbg !996

if.then264:                                       ; preds = %if.then257
  %add265 = add i64 %3, 2, !dbg !999
  %cmp266 = icmp ult i64 %add265, 30, !dbg !999
  %phitmp = trunc i64 %add265 to i32, !dbg !999
  %.phitmp = select i1 %cmp266, i32 30, i32 %phitmp, !dbg !999
  %num_regs274 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0, !dbg !999
  store i32 %.phitmp, i32* %num_regs274, align 4, !dbg !999, !tbaa !795
  %conv276 = zext i32 %.phitmp to i64, !dbg !1001
  %mul277 = shl nuw nsw i64 %conv276, 2, !dbg !1001
  %call278 = call noalias i8* @malloc(i64 %mul277) #7, !dbg !1001
  %29 = bitcast i8* %call278 to i32*, !dbg !1001
  %start = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !1001
  store i32* %29, i32** %start, align 8, !dbg !1001, !tbaa !722
  %call282 = call noalias i8* @malloc(i64 %mul277) #7, !dbg !1002
  %30 = bitcast i8* %call282 to i32*, !dbg !1002
  %end = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !1002
  store i32* %30, i32** %end, align 8, !dbg !1002, !tbaa !722
  %cmp284 = icmp eq i8* %call278, null, !dbg !1003
  %cmp288 = icmp eq i8* %call282, null, !dbg !1003
  %or.cond3895 = or i1 %cmp284, %cmp288, !dbg !1003
  br i1 %or.cond3895, label %do.body291, label %if.end321, !dbg !1003

do.body291:                                       ; preds = %if.then264
  %31 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*, !dbg !1004
  call void @free(i8* %31) #7, !dbg !1004
  %tobool293 = icmp eq i8** %regstart.0, null, !dbg !1004
  br i1 %tobool293, label %if.end295, label %if.then294, !dbg !1004

if.then294:                                       ; preds = %do.body291
  %32 = bitcast i8** %regstart.0 to i8*, !dbg !1004
  call void @free(i8* %32) #7, !dbg !1004
  br label %if.end295, !dbg !1004

if.end295:                                        ; preds = %do.body291, %if.then294
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !542), !dbg !1004
  %tobool296 = icmp eq i8** %regend.0, null, !dbg !1004
  br i1 %tobool296, label %if.end298, label %if.then297, !dbg !1004

if.then297:                                       ; preds = %if.end295
  %33 = bitcast i8** %regend.0 to i8*, !dbg !1004
  call void @free(i8* %33) #7, !dbg !1004
  br label %if.end298, !dbg !1004

if.end298:                                        ; preds = %if.end295, %if.then297
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !543), !dbg !1004
  %tobool299 = icmp eq i8** %old_regstart.0, null, !dbg !1004
  br i1 %tobool299, label %if.end301, label %if.then300, !dbg !1004

if.then300:                                       ; preds = %if.end298
  %34 = bitcast i8** %old_regstart.0 to i8*, !dbg !1004
  call void @free(i8* %34) #7, !dbg !1004
  br label %if.end301, !dbg !1004

if.end301:                                        ; preds = %if.end298, %if.then300
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !544), !dbg !1004
  %tobool302 = icmp eq i8** %old_regend.0, null, !dbg !1004
  br i1 %tobool302, label %if.end304, label %if.then303, !dbg !1004

if.then303:                                       ; preds = %if.end301
  %35 = bitcast i8** %old_regend.0 to i8*, !dbg !1004
  call void @free(i8* %35) #7, !dbg !1004
  br label %if.end304, !dbg !1004

if.end304:                                        ; preds = %if.end301, %if.then303
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !545), !dbg !1004
  %tobool305 = icmp eq i8** %best_regstart.0, null, !dbg !1004
  br i1 %tobool305, label %if.end307, label %if.then306, !dbg !1004

if.then306:                                       ; preds = %if.end304
  %36 = bitcast i8** %best_regstart.0 to i8*, !dbg !1004
  call void @free(i8* %36) #7, !dbg !1004
  br label %if.end307, !dbg !1004

if.end307:                                        ; preds = %if.end304, %if.then306
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !560), !dbg !1004
  %tobool308 = icmp eq i8** %best_regend.0, null, !dbg !1004
  br i1 %tobool308, label %if.end310, label %if.then309, !dbg !1004

if.then309:                                       ; preds = %if.end307
  %37 = bitcast i8** %best_regend.0 to i8*, !dbg !1004
  call void @free(i8* %37) #7, !dbg !1004
  br label %if.end310, !dbg !1004

if.end310:                                        ; preds = %if.end307, %if.then309
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !561), !dbg !1004
  %tobool311 = icmp eq %union.register_info_type* %reg_info.0, null, !dbg !1004
  br i1 %tobool311, label %if.end313, label %if.then312, !dbg !1004

if.then312:                                       ; preds = %if.end310
  %38 = bitcast %union.register_info_type* %reg_info.0 to i8*, !dbg !1004
  call void @free(i8* %38) #7, !dbg !1004
  br label %if.end313, !dbg !1004

if.end313:                                        ; preds = %if.end310, %if.then312
  call void @llvm.dbg.value(metadata !930, i64 0, metadata !546), !dbg !1004
  %tobool314 = icmp eq i8** %reg_dummy.0, null, !dbg !1004
  br i1 %tobool314, label %if.end316, label %if.then315, !dbg !1004

if.then315:                                       ; preds = %if.end313
  %39 = bitcast i8** %reg_dummy.0 to i8*, !dbg !1004
  call void @free(i8* %39) #7, !dbg !1004
  br label %if.end316, !dbg !1004

if.end316:                                        ; preds = %if.end313, %if.then315
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !564), !dbg !1004
  %tobool317 = icmp eq %union.register_info_type* %reg_info_dummy.0, null, !dbg !1004
  br i1 %tobool317, label %return, label %if.then318, !dbg !1004

if.then318:                                       ; preds = %if.end316
  %40 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*, !dbg !1004
  call void @free(i8* %40) #7, !dbg !1004
  br label %return, !dbg !1004

if.end321:                                        ; preds = %if.then264
  %bf.load323 = load i8* %not_bol, align 8, !dbg !1007
  %bf.clear324 = and i8 %bf.load323, -7, !dbg !1007
  %bf.set325 = or i8 %bf.clear324, 2, !dbg !1007
  store i8 %bf.set325, i8* %not_bol, align 8, !dbg !1007
  br label %if.end398, !dbg !1008

if.then334:                                       ; preds = %if.then257
  %num_regs335 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0, !dbg !1009
  %41 = load i32* %num_regs335, align 4, !dbg !1009, !tbaa !795
  %conv336 = zext i32 %41 to i64, !dbg !1009
  %add337 = add i64 %3, 2, !dbg !1009
  %cmp338 = icmp ult i64 %conv336, %add337, !dbg !1009
  br i1 %cmp338, label %if.then340, label %if.end398, !dbg !1009

if.then340:                                       ; preds = %if.then334
  %conv342 = trunc i64 %add337 to i32, !dbg !1011
  store i32 %conv342, i32* %num_regs335, align 4, !dbg !1011, !tbaa !795
  %start344 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !1013
  %42 = load i32** %start344, align 8, !dbg !1013, !tbaa !722
  %43 = bitcast i32* %42 to i8*, !dbg !1013
  %conv346 = shl i64 %add337, 2, !dbg !1013
  %mul347 = and i64 %conv346, 17179869180, !dbg !1013
  %call348 = call i8* @realloc(i8* %43, i64 %mul347) #7, !dbg !1013
  %44 = bitcast i8* %call348 to i32*, !dbg !1013
  store i32* %44, i32** %start344, align 8, !dbg !1013, !tbaa !722
  %end350 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !1014
  %45 = load i32** %end350, align 8, !dbg !1014, !tbaa !722
  %46 = bitcast i32* %45 to i8*, !dbg !1014
  %47 = load i32* %num_regs335, align 4, !dbg !1014, !tbaa !795
  %conv352 = zext i32 %47 to i64, !dbg !1014
  %mul353 = shl nuw nsw i64 %conv352, 2, !dbg !1014
  %call354 = call i8* @realloc(i8* %46, i64 %mul353) #7, !dbg !1014
  %48 = bitcast i8* %call354 to i32*, !dbg !1014
  store i32* %48, i32** %end350, align 8, !dbg !1014, !tbaa !722
  %49 = load i32** %start344, align 8, !dbg !1015, !tbaa !722
  %cmp357 = icmp eq i32* %49, null, !dbg !1015
  %cmp361 = icmp eq i8* %call354, null, !dbg !1015
  %or.cond3896 = or i1 %cmp357, %cmp361, !dbg !1015
  br i1 %or.cond3896, label %do.body364, label %if.end398, !dbg !1015

do.body364:                                       ; preds = %if.then340
  %50 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*, !dbg !1016
  call void @free(i8* %50) #7, !dbg !1016
  %tobool366 = icmp eq i8** %regstart.0, null, !dbg !1016
  br i1 %tobool366, label %if.end368, label %if.then367, !dbg !1016

if.then367:                                       ; preds = %do.body364
  %51 = bitcast i8** %regstart.0 to i8*, !dbg !1016
  call void @free(i8* %51) #7, !dbg !1016
  br label %if.end368, !dbg !1016

if.end368:                                        ; preds = %do.body364, %if.then367
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !542), !dbg !1016
  %tobool369 = icmp eq i8** %regend.0, null, !dbg !1016
  br i1 %tobool369, label %if.end371, label %if.then370, !dbg !1016

if.then370:                                       ; preds = %if.end368
  %52 = bitcast i8** %regend.0 to i8*, !dbg !1016
  call void @free(i8* %52) #7, !dbg !1016
  br label %if.end371, !dbg !1016

if.end371:                                        ; preds = %if.end368, %if.then370
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !543), !dbg !1016
  %tobool372 = icmp eq i8** %old_regstart.0, null, !dbg !1016
  br i1 %tobool372, label %if.end374, label %if.then373, !dbg !1016

if.then373:                                       ; preds = %if.end371
  %53 = bitcast i8** %old_regstart.0 to i8*, !dbg !1016
  call void @free(i8* %53) #7, !dbg !1016
  br label %if.end374, !dbg !1016

if.end374:                                        ; preds = %if.end371, %if.then373
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !544), !dbg !1016
  %tobool375 = icmp eq i8** %old_regend.0, null, !dbg !1016
  br i1 %tobool375, label %if.end377, label %if.then376, !dbg !1016

if.then376:                                       ; preds = %if.end374
  %54 = bitcast i8** %old_regend.0 to i8*, !dbg !1016
  call void @free(i8* %54) #7, !dbg !1016
  br label %if.end377, !dbg !1016

if.end377:                                        ; preds = %if.end374, %if.then376
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !545), !dbg !1016
  %tobool378 = icmp eq i8** %best_regstart.0, null, !dbg !1016
  br i1 %tobool378, label %if.end380, label %if.then379, !dbg !1016

if.then379:                                       ; preds = %if.end377
  %55 = bitcast i8** %best_regstart.0 to i8*, !dbg !1016
  call void @free(i8* %55) #7, !dbg !1016
  br label %if.end380, !dbg !1016

if.end380:                                        ; preds = %if.end377, %if.then379
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !560), !dbg !1016
  %tobool381 = icmp eq i8** %best_regend.0, null, !dbg !1016
  br i1 %tobool381, label %if.end383, label %if.then382, !dbg !1016

if.then382:                                       ; preds = %if.end380
  %56 = bitcast i8** %best_regend.0 to i8*, !dbg !1016
  call void @free(i8* %56) #7, !dbg !1016
  br label %if.end383, !dbg !1016

if.end383:                                        ; preds = %if.end380, %if.then382
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !561), !dbg !1016
  %tobool384 = icmp eq %union.register_info_type* %reg_info.0, null, !dbg !1016
  br i1 %tobool384, label %if.end386, label %if.then385, !dbg !1016

if.then385:                                       ; preds = %if.end383
  %57 = bitcast %union.register_info_type* %reg_info.0 to i8*, !dbg !1016
  call void @free(i8* %57) #7, !dbg !1016
  br label %if.end386, !dbg !1016

if.end386:                                        ; preds = %if.end383, %if.then385
  call void @llvm.dbg.value(metadata !930, i64 0, metadata !546), !dbg !1016
  %tobool387 = icmp eq i8** %reg_dummy.0, null, !dbg !1016
  br i1 %tobool387, label %if.end389, label %if.then388, !dbg !1016

if.then388:                                       ; preds = %if.end386
  %58 = bitcast i8** %reg_dummy.0 to i8*, !dbg !1016
  call void @free(i8* %58) #7, !dbg !1016
  br label %if.end389, !dbg !1016

if.end389:                                        ; preds = %if.end386, %if.then388
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !564), !dbg !1016
  %tobool390 = icmp eq %union.register_info_type* %reg_info_dummy.0, null, !dbg !1016
  br i1 %tobool390, label %return, label %if.then391, !dbg !1016

if.then391:                                       ; preds = %if.end389
  %59 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*, !dbg !1016
  call void @free(i8* %59) #7, !dbg !1016
  br label %return, !dbg !1016

if.end398:                                        ; preds = %if.then340, %if.then334, %if.then257.if.end398_crit_edge, %if.end321
  %num_regs399.pre-phi = phi i32* [ %num_regs399.pre, %if.then257.if.end398_crit_edge ], [ %num_regs274, %if.end321 ], [ %num_regs335, %if.then334 ], [ %num_regs335, %if.then340 ], !dbg !998
  %60 = load i32* %num_regs399.pre-phi, align 4, !dbg !998, !tbaa !795
  %cmp400 = icmp eq i32 %60, 0, !dbg !998
  br i1 %cmp400, label %for.cond421.preheader, label %if.then402, !dbg !998

if.then402:                                       ; preds = %if.end398
  %start403 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !1019
  %61 = load i32** %start403, align 8, !dbg !1019, !tbaa !722
  store i32 %pos, i32* %61, align 4, !dbg !1019, !tbaa !795
  %cmp405 = icmp eq i8* %dend.1, %end_match_1.0, !dbg !1021
  %sub.ptr.lhs.cast = ptrtoint i8* %d.1 to i64, !dbg !1021
  br i1 %cmp405, label %cond.true407, label %cond.false409, !dbg !1021

cond.true407:                                     ; preds = %if.then402
  %sub.ptr.rhs.cast = ptrtoint i8* %string1. to i64, !dbg !1021
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1021
  br label %cond.end416, !dbg !1021

cond.false409:                                    ; preds = %if.then402
  %sub.ptr.rhs.cast411 = ptrtoint i8* %string2.string1 to i64, !dbg !1021
  %sub.ptr.sub412 = sub i64 %idx.ext, %sub.ptr.rhs.cast411, !dbg !1021
  %add414 = add i64 %sub.ptr.sub412, %sub.ptr.lhs.cast, !dbg !1021
  br label %cond.end416, !dbg !1021

cond.end416:                                      ; preds = %cond.false409, %cond.true407
  %sub.ptr.sub.sink = phi i64 [ %sub.ptr.sub, %cond.true407 ], [ %add414, %cond.false409 ]
  %conv408 = trunc i64 %sub.ptr.sub.sink to i32, !dbg !1021
  %end418 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !1021
  %62 = load i32** %end418, align 8, !dbg !1021, !tbaa !722
  store i32 %conv408, i32* %62, align 4, !dbg !1021, !tbaa !795
  %.pre = load i32* %num_regs399.pre-phi, align 4, !dbg !1022, !tbaa !795
  br label %for.cond421.preheader, !dbg !1024

for.cond421.preheader:                            ; preds = %if.end398, %cond.end416
  %63 = phi i32 [ 0, %if.end398 ], [ %.pre, %cond.end416 ]
  %conv4243939 = zext i32 %63 to i64, !dbg !1022
  %cmp4253940 = icmp ult i64 %add, %conv4243939, !dbg !1022
  %add.conv4243941 = select i1 %cmp4253940, i64 %add, i64 %conv4243939, !dbg !1022
  %cmp4333942 = icmp ugt i64 %add.conv4243941, 1, !dbg !1022
  br i1 %cmp4333942, label %for.body435.lr.ph, label %for.end524, !dbg !1022

for.body435.lr.ph:                                ; preds = %for.cond421.preheader
  %end447 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !1025
  %start450 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !1025
  %tobool453.not = xor i1 %notlhs, true, !dbg !1027
  %sub.ptr.rhs.cast477 = ptrtoint i8* %string2.string1 to i64, !dbg !1027
  %sub.ptr.sub478 = sub i64 %idx.ext, %sub.ptr.rhs.cast477, !dbg !1027
  %sub.ptr.rhs.cast504 = ptrtoint i8* %string1. to i64, !dbg !1029
  br label %for.body435, !dbg !1022

for.body435:                                      ; preds = %for.body435.lr.ph, %for.inc522
  %indvars.iv4140 = phi i64 [ 1, %for.body435.lr.ph ], [ %indvars.iv.next4141, %for.inc522 ]
  %sext4277 = shl i64 %indvars.iv4140, 32, !dbg !1030
  %idxprom436 = ashr exact i64 %sext4277, 32, !dbg !1030
  %arrayidx437 = getelementptr inbounds i8** %regstart.0, i64 %idxprom436, !dbg !1030
  %64 = load i8** %arrayidx437, align 8, !dbg !1030, !tbaa !722
  %cmp438 = icmp eq i8* %64, @reg_unset_dummy, !dbg !1030
  br i1 %cmp438, label %if.then445, label %lor.lhs.false440, !dbg !1030

lor.lhs.false440:                                 ; preds = %for.body435
  %arrayidx442 = getelementptr inbounds i8** %regend.0, i64 %idxprom436, !dbg !1030
  %65 = load i8** %arrayidx442, align 8, !dbg !1030, !tbaa !722
  %cmp443 = icmp eq i8* %65, @reg_unset_dummy, !dbg !1030
  br i1 %cmp443, label %if.then445, label %if.else452, !dbg !1030

if.then445:                                       ; preds = %lor.lhs.false440, %for.body435
  %66 = load i32** %end447, align 8, !dbg !1025, !tbaa !722
  %arrayidx448 = getelementptr inbounds i32* %66, i64 %idxprom436, !dbg !1025
  store i32 -1, i32* %arrayidx448, align 4, !dbg !1025, !tbaa !795
  %67 = load i32** %start450, align 8, !dbg !1025, !tbaa !722
  %arrayidx451 = getelementptr inbounds i32* %67, i64 %idxprom436, !dbg !1025
  store i32 -1, i32* %arrayidx451, align 4, !dbg !1025, !tbaa !795
  br label %for.inc522, !dbg !1025

if.else452:                                       ; preds = %lor.lhs.false440
  %cmp457 = icmp ugt i8* %string1., %64, !dbg !1027
  %or.cond3897 = or i1 %cmp457, %tobool453.not, !dbg !1027
  %cmp464 = icmp ugt i8* %64, %add.ptr138, !dbg !1027
  %or.cond3898 = or i1 %or.cond3897, %cmp464, !dbg !1027
  %sub.ptr.lhs.cast476 = ptrtoint i8* %64 to i64, !dbg !1027
  %68 = sub i64 0, %sub.ptr.rhs.cast504, !dbg !1027
  %sub.ptr.sub471.sink.p = select i1 %or.cond3898, i64 %sub.ptr.sub478, i64 %68, !dbg !1027
  %sub.ptr.sub471.sink = add i64 %sub.ptr.lhs.cast476, %sub.ptr.sub471.sink.p, !dbg !1027
  %conv472 = trunc i64 %sub.ptr.sub471.sink to i32, !dbg !1027
  %69 = load i32** %start450, align 8, !dbg !1027, !tbaa !722
  %arrayidx486 = getelementptr inbounds i32* %69, i64 %idxprom436, !dbg !1027
  store i32 %conv472, i32* %arrayidx486, align 4, !dbg !1027, !tbaa !795
  br i1 %notlhs, label %land.lhs.true488, label %cond.false507, !dbg !1029

land.lhs.true488:                                 ; preds = %if.else452
  %cmp491 = icmp ugt i8* %string1., %65, !dbg !1029
  %cmp498 = icmp ugt i8* %65, %add.ptr138, !dbg !1029
  %or.cond3899 = or i1 %cmp491, %cmp498, !dbg !1029
  br i1 %or.cond3899, label %cond.false507, label %cond.true500, !dbg !1029

cond.true500:                                     ; preds = %land.lhs.true488
  %sub.ptr.lhs.cast503 = ptrtoint i8* %65 to i64, !dbg !1029
  %sub.ptr.sub505 = sub i64 %sub.ptr.lhs.cast503, %sub.ptr.rhs.cast504, !dbg !1029
  br label %cond.end516, !dbg !1029

cond.false507:                                    ; preds = %land.lhs.true488, %if.else452
  %sub.ptr.lhs.cast510 = ptrtoint i8* %65 to i64, !dbg !1029
  %add514 = add i64 %sub.ptr.sub478, %sub.ptr.lhs.cast510, !dbg !1029
  br label %cond.end516, !dbg !1029

cond.end516:                                      ; preds = %cond.false507, %cond.true500
  %sub.ptr.sub505.sink = phi i64 [ %sub.ptr.sub505, %cond.true500 ], [ %add514, %cond.false507 ]
  %conv506 = trunc i64 %sub.ptr.sub505.sink to i32, !dbg !1029
  %70 = load i32** %end447, align 8, !dbg !1029, !tbaa !722
  %arrayidx520 = getelementptr inbounds i32* %70, i64 %idxprom436, !dbg !1029
  store i32 %conv506, i32* %arrayidx520, align 4, !dbg !1029, !tbaa !795
  br label %for.inc522

for.inc522:                                       ; preds = %if.then445, %cond.end516
  %indvars.iv.next4141 = add i64 %indvars.iv4140, 1, !dbg !1022
  %71 = load i32* %num_regs399.pre-phi, align 4, !dbg !1022, !tbaa !795
  %conv424 = zext i32 %71 to i64, !dbg !1022
  %cmp425 = icmp ult i64 %add, %conv424, !dbg !1022
  %add.conv424 = select i1 %cmp425, i64 %add, i64 %conv424, !dbg !1022
  %cmp433 = icmp ult i64 %indvars.iv.next4141, %add.conv424, !dbg !1022
  br i1 %cmp433, label %for.body435, label %for.end524, !dbg !1022

for.end524:                                       ; preds = %for.inc522, %for.cond421.preheader
  %72 = phi i32 [ %63, %for.cond421.preheader ], [ %71, %for.inc522 ]
  %conv525 = trunc i64 %add to i32, !dbg !1031
  call void @llvm.dbg.value(metadata !{i32 %conv525}, i64 0, metadata !525), !dbg !1031
  %cmp5283937 = icmp ult i32 %conv525, %72, !dbg !1031
  br i1 %cmp5283937, label %for.body530.lr.ph, label %if.end540, !dbg !1031

for.body530.lr.ph:                                ; preds = %for.end524
  %end532 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !1033
  %73 = load i32** %end532, align 8, !dbg !1033, !tbaa !722
  %start535 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !1033
  %74 = load i32** %start535, align 8, !dbg !1033, !tbaa !722
  %sext4276 = shl i64 %add, 32
  %75 = ashr exact i64 %sext4276, 32
  br label %for.body530, !dbg !1031

for.body530:                                      ; preds = %for.body530.lr.ph, %for.body530
  %indvars.iv = phi i64 [ %75, %for.body530.lr.ph ], [ %indvars.iv.next, %for.body530 ]
  %arrayidx533 = getelementptr inbounds i32* %73, i64 %indvars.iv, !dbg !1033
  store i32 -1, i32* %arrayidx533, align 4, !dbg !1033, !tbaa !795
  %arrayidx536 = getelementptr inbounds i32* %74, i64 %indvars.iv, !dbg !1033
  store i32 -1, i32* %arrayidx536, align 4, !dbg !1033, !tbaa !795
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1031
  %76 = load i32* %num_regs399.pre-phi, align 4, !dbg !1031, !tbaa !795
  %77 = trunc i64 %indvars.iv.next to i32, !dbg !1031
  %cmp528 = icmp ult i32 %77, %76, !dbg !1031
  br i1 %cmp528, label %for.body530, label %if.end540, !dbg !1031

if.end540:                                        ; preds = %for.end524, %for.body530, %land.lhs.true253, %succeed_label
  %idx.neg542 = sub i64 0, %idx.ext161, !dbg !1034
  %add.ptr543 = getelementptr inbounds i8* %d.1, i64 %idx.neg542, !dbg !1034
  %cmp544 = icmp eq i8* %dend.1, %end_match_1.0, !dbg !1034
  br i1 %cmp544, label %cond.end551, label %cond.false547, !dbg !1034

cond.false547:                                    ; preds = %if.end540
  %idx.neg549 = sub i64 0, %idx.ext, !dbg !1034
  %add.ptr550 = getelementptr inbounds i8* %string2.string1, i64 %idx.neg549, !dbg !1034
  br label %cond.end551, !dbg !1034

cond.end551:                                      ; preds = %if.end540, %cond.false547
  %cond552 = phi i8* [ %add.ptr550, %cond.false547 ], [ %string1., %if.end540 ], !dbg !1034
  %sub.ptr.lhs.cast553 = ptrtoint i8* %add.ptr543 to i64, !dbg !1034
  %sub.ptr.rhs.cast554 = ptrtoint i8* %cond552 to i64, !dbg !1034
  %sub.ptr.sub555 = sub i64 %sub.ptr.lhs.cast553, %sub.ptr.rhs.cast554, !dbg !1034
  %conv556 = trunc i64 %sub.ptr.sub555 to i32, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32 %conv556}, i64 0, metadata !525), !dbg !1034
  %78 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*, !dbg !1035
  call void @free(i8* %78) #7, !dbg !1035
  %tobool559 = icmp eq i8** %regstart.0, null, !dbg !1035
  br i1 %tobool559, label %if.end561, label %if.then560, !dbg !1035

if.then560:                                       ; preds = %cond.end551
  %79 = bitcast i8** %regstart.0 to i8*, !dbg !1035
  call void @free(i8* %79) #7, !dbg !1035
  br label %if.end561, !dbg !1035

if.end561:                                        ; preds = %cond.end551, %if.then560
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !542), !dbg !1035
  %tobool562 = icmp eq i8** %regend.0, null, !dbg !1035
  br i1 %tobool562, label %if.end564, label %if.then563, !dbg !1035

if.then563:                                       ; preds = %if.end561
  %80 = bitcast i8** %regend.0 to i8*, !dbg !1035
  call void @free(i8* %80) #7, !dbg !1035
  br label %if.end564, !dbg !1035

if.end564:                                        ; preds = %if.end561, %if.then563
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !543), !dbg !1035
  %tobool565 = icmp eq i8** %old_regstart.0, null, !dbg !1035
  br i1 %tobool565, label %if.end567, label %if.then566, !dbg !1035

if.then566:                                       ; preds = %if.end564
  %81 = bitcast i8** %old_regstart.0 to i8*, !dbg !1035
  call void @free(i8* %81) #7, !dbg !1035
  br label %if.end567, !dbg !1035

if.end567:                                        ; preds = %if.end564, %if.then566
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !544), !dbg !1035
  %tobool568 = icmp eq i8** %old_regend.0, null, !dbg !1035
  br i1 %tobool568, label %if.end570, label %if.then569, !dbg !1035

if.then569:                                       ; preds = %if.end567
  %82 = bitcast i8** %old_regend.0 to i8*, !dbg !1035
  call void @free(i8* %82) #7, !dbg !1035
  br label %if.end570, !dbg !1035

if.end570:                                        ; preds = %if.end567, %if.then569
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !545), !dbg !1035
  %tobool571 = icmp eq i8** %best_regstart.0, null, !dbg !1035
  br i1 %tobool571, label %if.end573, label %if.then572, !dbg !1035

if.then572:                                       ; preds = %if.end570
  %83 = bitcast i8** %best_regstart.0 to i8*, !dbg !1035
  call void @free(i8* %83) #7, !dbg !1035
  br label %if.end573, !dbg !1035

if.end573:                                        ; preds = %if.end570, %if.then572
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !560), !dbg !1035
  %tobool574 = icmp eq i8** %best_regend.0, null, !dbg !1035
  br i1 %tobool574, label %if.end576, label %if.then575, !dbg !1035

if.then575:                                       ; preds = %if.end573
  %84 = bitcast i8** %best_regend.0 to i8*, !dbg !1035
  call void @free(i8* %84) #7, !dbg !1035
  br label %if.end576, !dbg !1035

if.end576:                                        ; preds = %if.end573, %if.then575
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !561), !dbg !1035
  %tobool577 = icmp eq %union.register_info_type* %reg_info.0, null, !dbg !1035
  br i1 %tobool577, label %if.end579, label %if.then578, !dbg !1035

if.then578:                                       ; preds = %if.end576
  %85 = bitcast %union.register_info_type* %reg_info.0 to i8*, !dbg !1035
  call void @free(i8* %85) #7, !dbg !1035
  br label %if.end579, !dbg !1035

if.end579:                                        ; preds = %if.end576, %if.then578
  call void @llvm.dbg.value(metadata !930, i64 0, metadata !546), !dbg !1035
  %tobool580 = icmp eq i8** %reg_dummy.0, null, !dbg !1035
  br i1 %tobool580, label %if.end582, label %if.then581, !dbg !1035

if.then581:                                       ; preds = %if.end579
  %86 = bitcast i8** %reg_dummy.0 to i8*, !dbg !1035
  call void @free(i8* %86) #7, !dbg !1035
  br label %if.end582, !dbg !1035

if.end582:                                        ; preds = %if.end579, %if.then581
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !564), !dbg !1035
  %tobool583 = icmp eq %union.register_info_type* %reg_info_dummy.0, null, !dbg !1035
  br i1 %tobool583, label %return, label %if.then584, !dbg !1035

if.then584:                                       ; preds = %if.end582
  %87 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*, !dbg !1035
  call void @free(i8* %87) #7, !dbg !1035
  br label %return, !dbg !1035

if.end587:                                        ; preds = %for.cond167
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1, !dbg !1037
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !533), !dbg !1037
  %88 = load i8* %p.0, align 1, !dbg !1037, !tbaa !714
  %conv588 = zext i8 %88 to i32, !dbg !1037
  switch i32 %conv588, label %sw.default2665 [
    i32 0, label %for.cond167
    i32 1, label %succeed_label
    i32 2, label %sw.bb590
    i32 3, label %while.cond662
    i32 4, label %sw.bb727
    i32 5, label %sw.bb727
    i32 6, label %sw.bb804
    i32 7, label %sw.bb868
    i32 8, label %sw.bb1150
    i32 9, label %sw.bb1290
    i32 10, label %sw.bb1321
    i32 11, label %sw.bb1352
    i32 12, label %sw.bb1364
    i32 16, label %do.body1371
    i32 15, label %if.end587.do.body1484_crit_edge
    i32 18, label %do.body1629
    i32 17, label %sw.bb1903
    i32 13, label %do.body1965
    i32 14, label %do.body1965
    i32 19, label %while.cond1984.preheader
    i32 20, label %while.cond2082.preheader
    i32 21, label %do.body2177
    i32 22, label %do.body2214
    i32 23, label %do.body2244
    i32 28, label %sw.bb2280
    i32 29, label %sw.bb2350
    i32 26, label %sw.bb2422
    i32 27, label %sw.bb2483
    i32 24, label %while.cond2548
    i32 25, label %while.cond2607
  ], !dbg !1037

if.end587.do.body1484_crit_edge:                  ; preds = %if.end587
  %add.ptr1493.pre = getelementptr inbounds i8* %p.0, i64 3, !dbg !1038
  br label %do.body1484, !dbg !1037

while.cond1984.preheader:                         ; preds = %if.end587
  %sub1989 = sub i64 %highest_active_reg.0, %lowest_active_reg.0, !dbg !1040
  %89 = mul i64 %sub1989, 3, !dbg !1040
  %add1992 = add i64 %89, 7, !dbg !1040
  br label %while.cond1984, !dbg !1040

while.cond2082.preheader:                         ; preds = %if.end587
  %sub2087 = sub i64 %highest_active_reg.0, %lowest_active_reg.0, !dbg !1041
  %90 = mul i64 %sub2087, 3, !dbg !1041
  %add2090 = add i64 %90, 7, !dbg !1041
  br label %while.cond2082, !dbg !1041

sw.bb590:                                         ; preds = %if.end587
  %incdec.ptr591 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1042
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr591}, i64 0, metadata !533), !dbg !1042
  %91 = load i8* %incdec.ptr, align 1, !dbg !1042, !tbaa !714
  %conv592 = zext i8 %91 to i32, !dbg !1042
  call void @llvm.dbg.value(metadata !{i32 %conv592}, i64 0, metadata !525), !dbg !1042
  br i1 %tobool593, label %while.cond616.outer, label %while.cond.outer, !dbg !966

while.cond.outer:                                 ; preds = %sw.bb590, %do.cond
  %p.1.ph = phi i8* [ %incdec.ptr606, %do.cond ], [ %incdec.ptr591, %sw.bb590 ]
  %dend.2.ph = phi i8* [ %dend.2, %do.cond ], [ %dend.0, %sw.bb590 ]
  %d.2.ph = phi i8* [ %incdec.ptr602, %do.cond ], [ %d.0, %sw.bb590 ]
  %mcnt.5.ph = phi i32 [ %dec, %do.cond ], [ %conv592, %sw.bb590 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %dend.2 = phi i8* [ %end_match_2.0, %while.body ], [ %dend.2.ph, %while.cond.outer ]
  %d.2 = phi i8* [ %string2.string1, %while.body ], [ %d.2.ph, %while.cond.outer ]
  %cmp596 = icmp eq i8* %d.2, %dend.2, !dbg !1043
  br i1 %cmp596, label %while.body, label %while.end, !dbg !1043

while.body:                                       ; preds = %while.cond
  %cmp598 = icmp eq i8* %dend.2, %end_match_2.0, !dbg !1046
  br i1 %cmp598, label %fail.preheader, label %while.cond, !dbg !1046

while.end:                                        ; preds = %while.cond
  %incdec.ptr602 = getelementptr inbounds i8* %d.2, i64 1, !dbg !1048
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr602}, i64 0, metadata !531), !dbg !1048
  %92 = load i8* %d.2, align 1, !dbg !1048, !tbaa !714
  %idxprom603 = zext i8 %92 to i64, !dbg !1048
  %arrayidx604 = getelementptr inbounds i8* %2, i64 %idxprom603, !dbg !1048
  %93 = load i8* %arrayidx604, align 1, !dbg !1048, !tbaa !714
  %incdec.ptr606 = getelementptr inbounds i8* %p.1.ph, i64 1, !dbg !1048
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr606}, i64 0, metadata !533), !dbg !1048
  %94 = load i8* %p.1.ph, align 1, !dbg !1048, !tbaa !714
  %cmp608 = icmp eq i8 %93, %94, !dbg !1048
  br i1 %cmp608, label %do.cond, label %fail.preheader, !dbg !1048

do.cond:                                          ; preds = %while.end
  %dec = add nsw i32 %mcnt.5.ph, -1, !dbg !1049
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !525), !dbg !1049
  %tobool612 = icmp eq i32 %dec, 0, !dbg !1049
  br i1 %tobool612, label %do.body638, label %while.cond.outer, !dbg !1049

while.cond616:                                    ; preds = %while.cond616.outer, %while.body619
  %dend.3 = phi i8* [ %end_match_2.0, %while.body619 ], [ %dend.3.ph, %while.cond616.outer ]
  %d.3 = phi i8* [ %string2.string1, %while.body619 ], [ %d.3.ph, %while.cond616.outer ]
  %cmp617 = icmp eq i8* %d.3, %dend.3, !dbg !1050
  br i1 %cmp617, label %while.body619, label %while.end624, !dbg !1050

while.body619:                                    ; preds = %while.cond616
  %cmp620 = icmp eq i8* %dend.3, %end_match_2.0, !dbg !1053
  br i1 %cmp620, label %fail.preheader, label %while.cond616, !dbg !1053

while.end624:                                     ; preds = %while.cond616
  %incdec.ptr625 = getelementptr inbounds i8* %d.3, i64 1, !dbg !1055
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr625}, i64 0, metadata !531), !dbg !1055
  %95 = load i8* %d.3, align 1, !dbg !1055, !tbaa !714
  %incdec.ptr627 = getelementptr inbounds i8* %p.2.ph, i64 1, !dbg !1055
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr627}, i64 0, metadata !533), !dbg !1055
  %96 = load i8* %p.2.ph, align 1, !dbg !1055, !tbaa !714
  %cmp629 = icmp eq i8 %95, %96, !dbg !1055
  br i1 %cmp629, label %do.cond633, label %fail.preheader, !dbg !1055

do.cond633:                                       ; preds = %while.end624
  %dec634 = add nsw i32 %mcnt.6.ph, -1, !dbg !1056
  call void @llvm.dbg.value(metadata !{i32 %dec634}, i64 0, metadata !525), !dbg !1056
  %tobool635 = icmp eq i32 %dec634, 0, !dbg !1056
  br i1 %tobool635, label %do.body638, label %while.cond616.outer, !dbg !1056

while.cond616.outer:                              ; preds = %sw.bb590, %do.cond633
  %p.2.ph = phi i8* [ %incdec.ptr627, %do.cond633 ], [ %incdec.ptr591, %sw.bb590 ]
  %dend.3.ph = phi i8* [ %dend.3, %do.cond633 ], [ %dend.0, %sw.bb590 ]
  %d.3.ph = phi i8* [ %incdec.ptr625, %do.cond633 ], [ %d.0, %sw.bb590 ]
  %mcnt.6.ph = phi i32 [ %dec634, %do.cond633 ], [ %conv592, %sw.bb590 ]
  br label %while.cond616

do.body638:                                       ; preds = %do.cond633, %do.cond
  %p.3 = phi i8* [ %incdec.ptr606, %do.cond ], [ %incdec.ptr627, %do.cond633 ]
  %dend.4 = phi i8* [ %dend.2, %do.cond ], [ %dend.3, %do.cond633 ]
  %d.4 = phi i8* [ %incdec.ptr602, %do.cond ], [ %incdec.ptr625, %do.cond633 ]
  %tobool639 = icmp eq i32 %set_regs_matched_done.0, 0, !dbg !1057
  br i1 %tobool639, label %for.cond641.preheader, label %for.cond167, !dbg !1057

for.cond641.preheader:                            ; preds = %do.body638
  %cmp6424065 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1058
  br i1 %cmp6424065, label %for.cond167, label %for.body644, !dbg !1058

for.body644:                                      ; preds = %for.cond641.preheader, %for.body644
  %r.04066 = phi i64 [ %inc656, %for.body644 ], [ %lowest_active_reg.0, %for.cond641.preheader ]
  %arrayidx645 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r.04066, !dbg !1060
  %97 = bitcast %union.register_info_type* %arrayidx645 to i8*, !dbg !1060
  %bf.load647 = load i8* %97, align 4, !dbg !1060
  %bf.set654 = or i8 %bf.load647, 24, !dbg !1060
  store i8 %bf.set654, i8* %97, align 4, !dbg !1060
  %inc656 = add i64 %r.04066, 1, !dbg !1058
  call void @llvm.dbg.value(metadata !{i64 %inc656}, i64 0, metadata !572), !dbg !1058
  %cmp642 = icmp ugt i64 %inc656, %highest_active_reg.0, !dbg !1058
  br i1 %cmp642, label %for.cond167, label %for.body644, !dbg !1058

while.cond662:                                    ; preds = %if.end587, %while.body665
  %dend.5 = phi i8* [ %end_match_2.0, %while.body665 ], [ %dend.0, %if.end587 ]
  %d.5 = phi i8* [ %string2.string1, %while.body665 ], [ %d.0, %if.end587 ]
  %cmp663 = icmp eq i8* %d.5, %dend.5, !dbg !1062
  br i1 %cmp663, label %while.body665, label %while.end670, !dbg !1062

while.body665:                                    ; preds = %while.cond662
  %cmp666 = icmp eq i8* %dend.5, %end_match_2.0, !dbg !1063
  br i1 %cmp666, label %fail.preheader, label %while.cond662, !dbg !1063

while.end670:                                     ; preds = %while.cond662
  %98 = load i64* %syntax, align 8, !dbg !971, !tbaa !713
  %and = and i64 %98, 64, !dbg !971
  %tobool671 = icmp eq i64 %and, 0, !dbg !971
  br i1 %tobool671, label %land.lhs.true672, label %lor.lhs.false684, !dbg !971

land.lhs.true672:                                 ; preds = %while.end670
  %99 = load i8* %d.5, align 1, !dbg !971, !tbaa !714
  br i1 %tobool593, label %cond.end680, label %cond.true674, !dbg !971

cond.true674:                                     ; preds = %land.lhs.true672
  %idxprom675 = zext i8 %99 to i64, !dbg !971
  %arrayidx676 = getelementptr inbounds i8* %2, i64 %idxprom675, !dbg !971
  %100 = load i8* %arrayidx676, align 1, !dbg !971, !tbaa !714
  br label %cond.end680, !dbg !971

cond.end680:                                      ; preds = %land.lhs.true672, %cond.true674
  %.sink = phi i8 [ %100, %cond.true674 ], [ %99, %land.lhs.true672 ]
  %cmp682 = icmp eq i8 %.sink, 10, !dbg !971
  br i1 %cmp682, label %fail.preheader, label %lor.lhs.false684, !dbg !971

lor.lhs.false684:                                 ; preds = %while.end670, %cond.end680
  %and686 = and i64 %98, 128, !dbg !971
  %tobool687 = icmp eq i64 %and686, 0, !dbg !971
  br i1 %tobool687, label %do.body702, label %land.lhs.true688, !dbg !971

land.lhs.true688:                                 ; preds = %lor.lhs.false684
  %101 = load i8* %d.5, align 1, !dbg !971, !tbaa !714
  br i1 %tobool593, label %cond.end696, label %cond.true690, !dbg !971

cond.true690:                                     ; preds = %land.lhs.true688
  %idxprom691 = zext i8 %101 to i64, !dbg !971
  %arrayidx692 = getelementptr inbounds i8* %2, i64 %idxprom691, !dbg !971
  %102 = load i8* %arrayidx692, align 1, !dbg !971, !tbaa !714
  br label %cond.end696, !dbg !971

cond.end696:                                      ; preds = %land.lhs.true688, %cond.true690
  %.sink2818 = phi i8 [ %102, %cond.true690 ], [ %101, %land.lhs.true688 ]
  %cmp698 = icmp eq i8 %.sink2818, 0, !dbg !971
  br i1 %cmp698, label %fail.preheader, label %do.body702, !dbg !971

do.body702:                                       ; preds = %lor.lhs.false684, %cond.end696
  %tobool703 = icmp eq i32 %set_regs_matched_done.0, 0, !dbg !1065
  br i1 %tobool703, label %for.cond706.preheader, label %do.end725, !dbg !1065

for.cond706.preheader:                            ; preds = %do.body702
  %cmp7074052 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1066
  br i1 %cmp7074052, label %do.end725, label %for.body709, !dbg !1066

for.body709:                                      ; preds = %for.cond706.preheader, %for.body709
  %r705.04053 = phi i64 [ %inc721, %for.body709 ], [ %lowest_active_reg.0, %for.cond706.preheader ]
  %arrayidx710 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r705.04053, !dbg !1068
  %103 = bitcast %union.register_info_type* %arrayidx710 to i8*, !dbg !1068
  %bf.load712 = load i8* %103, align 4, !dbg !1068
  %bf.set719 = or i8 %bf.load712, 24, !dbg !1068
  store i8 %bf.set719, i8* %103, align 4, !dbg !1068
  %inc721 = add i64 %r705.04053, 1, !dbg !1066
  call void @llvm.dbg.value(metadata !{i64 %inc721}, i64 0, metadata !576), !dbg !1066
  %cmp707 = icmp ugt i64 %inc721, %highest_active_reg.0, !dbg !1066
  br i1 %cmp707, label %do.end725, label %for.body709, !dbg !1066

do.end725:                                        ; preds = %for.cond706.preheader, %for.body709, %do.body702
  %set_regs_matched_done.1 = phi i32 [ %set_regs_matched_done.0, %do.body702 ], [ 1, %for.body709 ], [ 1, %for.cond706.preheader ]
  %incdec.ptr726 = getelementptr inbounds i8* %d.5, i64 1, !dbg !1070
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr726}, i64 0, metadata !531), !dbg !1070
  br label %for.cond167, !dbg !1071

sw.bb727:                                         ; preds = %if.end587, %if.end587
  %cmp730 = icmp eq i8 %88, 5, !dbg !1072
  %conv732 = zext i1 %cmp730 to i8, !dbg !1072
  call void @llvm.dbg.value(metadata !{i8 %conv732}, i64 0, metadata !581), !dbg !1072
  br label %while.cond733, !dbg !1073

while.cond733:                                    ; preds = %while.body736, %sw.bb727
  %dend.6 = phi i8* [ %dend.0, %sw.bb727 ], [ %end_match_2.0, %while.body736 ]
  %d.6 = phi i8* [ %d.0, %sw.bb727 ], [ %string2.string1, %while.body736 ]
  %cmp734 = icmp eq i8* %d.6, %dend.6, !dbg !1073
  br i1 %cmp734, label %while.body736, label %while.end741, !dbg !1073

while.body736:                                    ; preds = %while.cond733
  %cmp737 = icmp eq i8* %dend.6, %end_match_2.0, !dbg !1074
  br i1 %cmp737, label %fail.preheader, label %while.cond733, !dbg !1074

while.end741:                                     ; preds = %while.cond733
  %104 = load i8* %d.6, align 1, !dbg !1076, !tbaa !714
  br i1 %tobool593, label %cond.end749, label %cond.true743, !dbg !1076

cond.true743:                                     ; preds = %while.end741
  %idxprom744 = zext i8 %104 to i64, !dbg !1076
  %arrayidx745 = getelementptr inbounds i8* %2, i64 %idxprom744, !dbg !1076
  %105 = load i8* %arrayidx745, align 1, !dbg !1076, !tbaa !714
  br label %cond.end749, !dbg !1076

cond.end749:                                      ; preds = %while.end741, %cond.true743
  %.sink2819 = phi i8 [ %105, %cond.true743 ], [ %104, %while.end741 ]
  call void @llvm.dbg.value(metadata !{i8 %.sink2819}, i64 0, metadata !579), !dbg !1076
  %conv752 = zext i8 %.sink2819 to i32, !dbg !1077
  %106 = load i8* %incdec.ptr, align 1, !dbg !1077, !tbaa !714
  %conv753 = zext i8 %106 to i32, !dbg !1077
  %mul754 = shl nuw nsw i32 %conv753, 3, !dbg !1077
  %cmp755 = icmp ult i32 %conv752, %mul754, !dbg !1077
  br i1 %cmp755, label %land.lhs.true757, label %if.end771, !dbg !1077

land.lhs.true757:                                 ; preds = %cond.end749
  %div = lshr i32 %conv752, 3, !dbg !1077
  %add759 = add nsw i32 %div, 1, !dbg !1077
  %idxprom7603880 = zext i32 %add759 to i64, !dbg !1077
  %incdec.ptr.sum3881 = add i64 %idxprom7603880, 1, !dbg !1077
  %arrayidx761 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr.sum3881, !dbg !1077
  %107 = load i8* %arrayidx761, align 1, !dbg !1077, !tbaa !714
  %conv762 = zext i8 %107 to i32, !dbg !1077
  %rem = and i32 %conv752, 7, !dbg !1077
  %shl = shl i32 1, %rem, !dbg !1077
  %and764 = and i32 %conv762, %shl, !dbg !1077
  %not.tobool765 = icmp ne i32 %and764, 0, !dbg !1077
  %conv732.conv7703936 = xor i1 %cmp730, %not.tobool765, !dbg !1077
  %conv732.conv770 = zext i1 %conv732.conv7703936 to i8, !dbg !1077
  br label %if.end771, !dbg !1077

if.end771:                                        ; preds = %land.lhs.true757, %cond.end749
  %not.0 = phi i8 [ %conv732, %cond.end749 ], [ %conv732.conv770, %land.lhs.true757 ]
  %conv772 = zext i8 %106 to i64, !dbg !1078
  %incdec.ptr.sum = add i64 %conv772, 2, !dbg !1078
  %add.ptr775 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr.sum, !dbg !1078
  call void @llvm.dbg.value(metadata !{i8* %add.ptr775}, i64 0, metadata !533), !dbg !1078
  %tobool776 = icmp eq i8 %not.0, 0, !dbg !1079
  br i1 %tobool776, label %fail.preheader, label %do.body779, !dbg !1079

do.body779:                                       ; preds = %if.end771
  %tobool780 = icmp eq i32 %set_regs_matched_done.0, 0, !dbg !1080
  br i1 %tobool780, label %for.cond783.preheader, label %do.end802, !dbg !1080

for.cond783.preheader:                            ; preds = %do.body779
  %cmp7844043 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1081
  br i1 %cmp7844043, label %do.end802, label %for.body786, !dbg !1081

for.body786:                                      ; preds = %for.cond783.preheader, %for.body786
  %r782.04044 = phi i64 [ %inc798, %for.body786 ], [ %lowest_active_reg.0, %for.cond783.preheader ]
  %arrayidx787 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r782.04044, !dbg !1083
  %108 = bitcast %union.register_info_type* %arrayidx787 to i8*, !dbg !1083
  %bf.load789 = load i8* %108, align 4, !dbg !1083
  %bf.set796 = or i8 %bf.load789, 24, !dbg !1083
  store i8 %bf.set796, i8* %108, align 4, !dbg !1083
  %inc798 = add i64 %r782.04044, 1, !dbg !1081
  call void @llvm.dbg.value(metadata !{i64 %inc798}, i64 0, metadata !582), !dbg !1081
  %cmp784 = icmp ugt i64 %inc798, %highest_active_reg.0, !dbg !1081
  br i1 %cmp784, label %do.end802, label %for.body786, !dbg !1081

do.end802:                                        ; preds = %for.cond783.preheader, %for.body786, %do.body779
  %set_regs_matched_done.2 = phi i32 [ %set_regs_matched_done.0, %do.body779 ], [ 1, %for.body786 ], [ 1, %for.cond783.preheader ]
  %incdec.ptr803 = getelementptr inbounds i8* %d.6, i64 1, !dbg !1085
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr803}, i64 0, metadata !531), !dbg !1085
  br label %for.cond167, !dbg !1086

sw.bb804:                                         ; preds = %if.end587
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !526), !dbg !1087
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !1087, !tbaa !722
  %109 = load i8* %incdec.ptr, align 1, !dbg !1088, !tbaa !714
  %idxprom805 = zext i8 %109 to i64, !dbg !1088
  %arrayidx806 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom805, !dbg !1088
  %110 = bitcast %union.register_info_type* %arrayidx806 to i8*, !dbg !1088
  %bf.load808 = load i8* %110, align 4, !dbg !1088
  %bf.clear809 = and i8 %bf.load808, 3, !dbg !1088
  %cmp811 = icmp eq i8 %bf.clear809, 3, !dbg !1088
  br i1 %cmp811, label %if.then813, label %if.end822, !dbg !1088

if.then813:                                       ; preds = %sw.bb804
  %call814 = call fastcc signext i8 @group_match_null_string_p(i8** %p1, i8* %add.ptr, %union.register_info_type* %reg_info.0) #9, !dbg !1089
  %111 = load i8* %incdec.ptr, align 1, !dbg !1089, !tbaa !714
  %idxprom816 = zext i8 %111 to i64, !dbg !1089
  %arrayidx817 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom816, !dbg !1089
  %112 = bitcast %union.register_info_type* %arrayidx817 to i8*, !dbg !1089
  %bf.load819 = load i8* %112, align 4, !dbg !1089
  %bf.value = and i8 %call814, 3, !dbg !1089
  %bf.clear820 = and i8 %bf.load819, -4, !dbg !1089
  %bf.set821 = or i8 %bf.clear820, %bf.value, !dbg !1089
  store i8 %bf.set821, i8* %112, align 4, !dbg !1089
  %.pre4273 = load i8* %incdec.ptr, align 1, !dbg !1090, !tbaa !714
  %idxprom823.phi.trans.insert = zext i8 %.pre4273 to i64
  %arrayidx824.phi.trans.insert = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom823.phi.trans.insert
  %.phi.trans.insert = bitcast %union.register_info_type* %arrayidx824.phi.trans.insert to i8*
  %bf.load826.pre = load i8* %.phi.trans.insert, align 4, !dbg !1090
  br label %if.end822, !dbg !1089

if.end822:                                        ; preds = %if.then813, %sw.bb804
  %bf.load826 = phi i8 [ %bf.load826.pre, %if.then813 ], [ %bf.load808, %sw.bb804 ]
  %113 = phi i8 [ %.pre4273, %if.then813 ], [ %109, %sw.bb804 ]
  %idxprom823 = zext i8 %113 to i64, !dbg !1090
  %bf.clear827 = and i8 %bf.load826, 3, !dbg !1090
  %tobool829 = icmp eq i8 %bf.clear827, 0, !dbg !1090
  %arrayidx832 = getelementptr inbounds i8** %regstart.0, i64 %idxprom823, !dbg !1090
  %114 = load i8** %arrayidx832, align 8, !dbg !1090, !tbaa !722
  br i1 %tobool829, label %cond.end844, label %cond.true830, !dbg !1090

cond.true830:                                     ; preds = %if.end822
  %cmp833 = icmp eq i8* %114, @reg_unset_dummy, !dbg !1090
  %d.0. = select i1 %cmp833, i8* %d.0, i8* %114, !dbg !1090
  br label %cond.end844, !dbg !1090

cond.end844:                                      ; preds = %cond.true830, %if.end822
  %cond845 = phi i8* [ %114, %if.end822 ], [ %d.0., %cond.true830 ], !dbg !1090
  %arrayidx847 = getelementptr inbounds i8** %old_regstart.0, i64 %idxprom823, !dbg !1090
  store i8* %cond845, i8** %arrayidx847, align 8, !dbg !1090, !tbaa !722
  %115 = load i8* %incdec.ptr, align 1, !dbg !1091, !tbaa !714
  %idxprom848 = zext i8 %115 to i64, !dbg !1091
  %arrayidx849 = getelementptr inbounds i8** %regstart.0, i64 %idxprom848, !dbg !1091
  store i8* %d.0, i8** %arrayidx849, align 8, !dbg !1091, !tbaa !722
  %116 = load i8* %incdec.ptr, align 1, !dbg !1092, !tbaa !714
  %idxprom850 = zext i8 %116 to i64, !dbg !1092
  %arrayidx851 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom850, !dbg !1092
  %117 = bitcast %union.register_info_type* %arrayidx851 to i8*, !dbg !1092
  %bf.load853 = load i8* %117, align 4, !dbg !1092
  %bf.set855 = or i8 %bf.load853, 4, !dbg !1092
  store i8 %bf.set855, i8* %117, align 4, !dbg !1092
  %118 = load i8* %incdec.ptr, align 1, !dbg !1093, !tbaa !714
  %idxprom856 = zext i8 %118 to i64, !dbg !1093
  %arrayidx857 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom856, !dbg !1093
  %119 = bitcast %union.register_info_type* %arrayidx857 to i8*, !dbg !1093
  %bf.load859 = load i8* %119, align 4, !dbg !1093
  %bf.clear860 = and i8 %bf.load859, -9, !dbg !1093
  store i8 %bf.clear860, i8* %119, align 4, !dbg !1093
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !563), !dbg !1094
  %120 = load i8* %incdec.ptr, align 1, !dbg !1095, !tbaa !714
  %conv861 = zext i8 %120 to i64, !dbg !1095
  call void @llvm.dbg.value(metadata !{i64 %conv861}, i64 0, metadata !541), !dbg !1095
  %cmp862 = icmp eq i64 %lowest_active_reg.0, 257, !dbg !1096
  call void @llvm.dbg.value(metadata !{i64 %conv861}, i64 0, metadata !539), !dbg !1097
  %conv861.lowest_active_reg.0 = select i1 %cmp862, i64 %conv861, i64 %lowest_active_reg.0, !dbg !1096
  %add.ptr867 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1098
  call void @llvm.dbg.value(metadata !{i8* %add.ptr867}, i64 0, metadata !533), !dbg !1098
  call void @llvm.dbg.value(metadata !{i8* %add.ptr867}, i64 0, metadata !535), !dbg !1099
  br label %for.cond167, !dbg !1100

sw.bb868:                                         ; preds = %if.end587
  %121 = load i8* %incdec.ptr, align 1, !dbg !1101, !tbaa !714
  %idxprom869 = zext i8 %121 to i64, !dbg !1101
  %arrayidx870 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom869, !dbg !1101
  %122 = bitcast %union.register_info_type* %arrayidx870 to i8*, !dbg !1101
  %bf.load872 = load i8* %122, align 4, !dbg !1101
  %bf.clear873 = and i8 %bf.load872, 3, !dbg !1101
  %tobool875 = icmp eq i8 %bf.clear873, 0, !dbg !1101
  %arrayidx878 = getelementptr inbounds i8** %regend.0, i64 %idxprom869, !dbg !1101
  %123 = load i8** %arrayidx878, align 8, !dbg !1101, !tbaa !722
  br i1 %tobool875, label %cond.end890, label %cond.true876, !dbg !1101

cond.true876:                                     ; preds = %sw.bb868
  %cmp879 = icmp eq i8* %123, @reg_unset_dummy, !dbg !1101
  %d.0.3900 = select i1 %cmp879, i8* %d.0, i8* %123, !dbg !1101
  br label %cond.end890, !dbg !1101

cond.end890:                                      ; preds = %cond.true876, %sw.bb868
  %cond891 = phi i8* [ %123, %sw.bb868 ], [ %d.0.3900, %cond.true876 ], !dbg !1101
  %arrayidx893 = getelementptr inbounds i8** %old_regend.0, i64 %idxprom869, !dbg !1101
  store i8* %cond891, i8** %arrayidx893, align 8, !dbg !1101, !tbaa !722
  %124 = load i8* %incdec.ptr, align 1, !dbg !1102, !tbaa !714
  %idxprom894 = zext i8 %124 to i64, !dbg !1102
  %arrayidx895 = getelementptr inbounds i8** %regend.0, i64 %idxprom894, !dbg !1102
  store i8* %d.0, i8** %arrayidx895, align 8, !dbg !1102, !tbaa !722
  %125 = load i8* %incdec.ptr, align 1, !dbg !1103, !tbaa !714
  %idxprom896 = zext i8 %125 to i64, !dbg !1103
  %arrayidx897 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom896, !dbg !1103
  %126 = bitcast %union.register_info_type* %arrayidx897 to i8*, !dbg !1103
  %bf.load899 = load i8* %126, align 4, !dbg !1103
  %bf.clear900 = and i8 %bf.load899, -5, !dbg !1103
  store i8 %bf.clear900, i8* %126, align 4, !dbg !1103
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !563), !dbg !1104
  %cmp901 = icmp eq i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1105
  %.pre4275 = load i8* %incdec.ptr, align 1, !dbg !1106, !tbaa !714
  br i1 %cmp901, label %if.end935, label %while.cond908, !dbg !1105

while.cond908:                                    ; preds = %cond.end890, %land.rhs912
  %r905.0.in = phi i8 [ %r905.0, %land.rhs912 ], [ %.pre4275, %cond.end890 ]
  %r905.0 = add i8 %r905.0.in, -1, !dbg !1107
  %cond3919 = icmp eq i8 %r905.0, 0, !dbg !1108
  br i1 %cond3919, label %if.end935, label %land.rhs912, !dbg !1108

land.rhs912:                                      ; preds = %while.cond908
  %idxprom913 = zext i8 %r905.0 to i64, !dbg !1108
  %arrayidx914 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom913, !dbg !1108
  %127 = bitcast %union.register_info_type* %arrayidx914 to i8*, !dbg !1108
  %bf.load916 = load i8* %127, align 4, !dbg !1108
  %bf.clear918 = and i8 %bf.load916, 4, !dbg !1108
  %lnot921 = icmp eq i8 %bf.clear918, 0, !dbg !1108
  br i1 %lnot921, label %while.cond908, label %if.end935

if.end935:                                        ; preds = %cond.end890, %while.cond908, %land.rhs912
  %lowest_active_reg.2 = phi i64 [ %lowest_active_reg.0, %land.rhs912 ], [ 257, %while.cond908 ], [ 257, %cond.end890 ]
  %highest_active_reg.1 = phi i64 [ %idxprom913, %land.rhs912 ], [ 256, %while.cond908 ], [ 256, %cond.end890 ]
  %idxprom936 = zext i8 %.pre4275 to i64, !dbg !1106
  %arrayidx937 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom936, !dbg !1106
  %128 = bitcast %union.register_info_type* %arrayidx937 to i8*, !dbg !1106
  %bf.load939 = load i8* %128, align 4, !dbg !1106
  %bf.clear941 = and i8 %bf.load939, 8, !dbg !1106
  %tobool943 = icmp eq i8 %bf.clear941, 0, !dbg !1106
  %cmp946 = icmp eq i8* %just_past_start_mem.0, %p.0, !dbg !1106
  %or.cond3901 = or i1 %tobool943, %cmp946, !dbg !1106
  %add.ptr949 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1106
  %cmp950 = icmp ult i8* %add.ptr949, %add.ptr, !dbg !1106
  %or.cond4295 = and i1 %or.cond3901, %cmp950, !dbg !1106
  br i1 %or.cond4295, label %if.then952, label %for.cond167, !dbg !1106

if.then952:                                       ; preds = %if.end935
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !587), !dbg !1109
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !525), !dbg !1110
  %incdec.ptr954 = getelementptr inbounds i8* %p.0, i64 4, !dbg !1111
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr954}, i64 0, metadata !526), !dbg !1111
  store i8* %incdec.ptr954, i8** %p1, align 8, !dbg !1111, !tbaa !722
  %129 = load i8* %add.ptr949, align 1, !dbg !1111, !tbaa !714
  %conv955 = zext i8 %129 to i32, !dbg !1111
  switch i32 %conv955, label %for.cond167 [
    i32 22, label %sw.bb956
    i32 17, label %do.body959
    i32 18, label %do.body959
    i32 13, label %do.body959
    i32 19, label %do.body959
  ], !dbg !1111

sw.bb956:                                         ; preds = %if.then952
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !587), !dbg !1112
  br label %do.body959, !dbg !1112

do.body959:                                       ; preds = %if.then952, %if.then952, %if.then952, %if.then952, %sw.bb956
  %is_a_jump_n.0 = phi i1 [ false, %if.then952 ], [ false, %if.then952 ], [ false, %if.then952 ], [ false, %if.then952 ], [ true, %sw.bb956 ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1114
  %130 = load i8* %incdec.ptr954, align 1, !dbg !1114, !tbaa !714
  %conv960 = zext i8 %130 to i32, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %conv960}, i64 0, metadata !525), !dbg !1114
  %add.ptr962 = getelementptr inbounds i8* %p.0, i64 5, !dbg !1114
  %131 = load i8* %add.ptr962, align 1, !dbg !1114, !tbaa !714
  %conv963 = sext i8 %131 to i32, !dbg !1114
  %shl964 = shl nsw i32 %conv963, 8, !dbg !1114
  %add965 = or i32 %shl964, %conv960, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %add965}, i64 0, metadata !525), !dbg !1114
  %add.ptr968 = getelementptr inbounds i8* %p.0, i64 6, !dbg !1117
  call void @llvm.dbg.value(metadata !{i8* %add.ptr968}, i64 0, metadata !526), !dbg !1117
  %add.ptr973 = getelementptr inbounds i8* %p.0, i64 8, !dbg !1118
  call void @llvm.dbg.value(metadata !{i8* %add.ptr973}, i64 0, metadata !526), !dbg !1118
  %add.ptr973.add.ptr968 = select i1 %is_a_jump_n.0, i8* %add.ptr973, i8* %add.ptr968, !dbg !1119
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1120
  %idx.ext975 = sext i32 %add965 to i64, !dbg !1120
  %add.ptr976 = getelementptr inbounds i8* %add.ptr973.add.ptr968, i64 %idx.ext975, !dbg !1120
  call void @llvm.dbg.value(metadata !{i8* %add.ptr976}, i64 0, metadata !526), !dbg !1120
  store i8* %add.ptr976, i8** %p1, align 8, !dbg !1120, !tbaa !722
  %cmp977 = icmp slt i32 %add965, 0, !dbg !1121
  br i1 %cmp977, label %land.lhs.true979, label %for.cond167, !dbg !1121

land.lhs.true979:                                 ; preds = %do.body959
  %132 = load i8* %add.ptr976, align 1, !dbg !1121, !tbaa !714
  %cmp981 = icmp eq i8 %132, 15, !dbg !1121
  br i1 %cmp981, label %land.lhs.true983, label %for.cond167, !dbg !1121

land.lhs.true983:                                 ; preds = %land.lhs.true979
  %add.ptr976.sum = add i64 %idx.ext975, 3, !dbg !1121
  %arrayidx984 = getelementptr inbounds i8* %add.ptr973.add.ptr968, i64 %add.ptr976.sum, !dbg !1121
  %133 = load i8* %arrayidx984, align 1, !dbg !1121, !tbaa !714
  %cmp986 = icmp eq i8 %133, 6, !dbg !1121
  br i1 %cmp986, label %land.lhs.true988, label %for.cond167, !dbg !1121

land.lhs.true988:                                 ; preds = %land.lhs.true983
  %add.ptr976.sum3878 = add i64 %idx.ext975, 4, !dbg !1121
  %arrayidx989 = getelementptr inbounds i8* %add.ptr973.add.ptr968, i64 %add.ptr976.sum3878, !dbg !1121
  %134 = load i8* %arrayidx989, align 1, !dbg !1121, !tbaa !714
  %135 = load i8* %incdec.ptr, align 1, !dbg !1121, !tbaa !714
  %cmp992 = icmp eq i8 %134, %135, !dbg !1121
  br i1 %cmp992, label %if.then994, label %for.cond167, !dbg !1121

if.then994:                                       ; preds = %land.lhs.true988
  %idxprom995 = zext i8 %134 to i64, !dbg !1122
  %arrayidx996 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %idxprom995, !dbg !1122
  %136 = bitcast %union.register_info_type* %arrayidx996 to i8*, !dbg !1122
  %bf.load998 = load i8* %136, align 4, !dbg !1122
  %bf.clear1000 = and i8 %bf.load998, 16, !dbg !1122
  %tobool1002 = icmp eq i8 %bf.clear1000, 0, !dbg !1122
  br i1 %tobool1002, label %if.end1038, label %if.then1003, !dbg !1122

if.then1003:                                      ; preds = %if.then994
  %bf.clear1009 = and i8 %bf.load998, -17, !dbg !1123
  store i8 %bf.clear1009, i8* %136, align 4, !dbg !1123
  %137 = load i8* %incdec.ptr, align 1, !dbg !1124, !tbaa !714
  %conv1010 = zext i8 %137 to i32, !dbg !1124
  call void @llvm.dbg.value(metadata !{i32 %conv1010}, i64 0, metadata !589), !dbg !1124
  %add.ptr1013 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1124
  %138 = load i8* %add.ptr1013, align 1, !dbg !1124, !tbaa !714
  %conv10144029 = zext i8 %138 to i32, !dbg !1124
  %add10154030 = add i32 %conv10144029, %conv1010, !dbg !1124
  %cmp10164031 = icmp ult i32 %conv1010, %add10154030, !dbg !1124
  br i1 %cmp10164031, label %for.body1018, label %if.end1038, !dbg !1124

for.body1018:                                     ; preds = %if.then1003, %for.inc1035
  %r1004.04032 = phi i32 [ %inc1036, %for.inc1035 ], [ %conv1010, %if.then1003 ]
  %idxprom1019 = zext i32 %r1004.04032 to i64, !dbg !1126
  %arrayidx1020 = getelementptr inbounds i8** %old_regstart.0, i64 %idxprom1019, !dbg !1126
  %139 = load i8** %arrayidx1020, align 8, !dbg !1126, !tbaa !722
  %arrayidx1022 = getelementptr inbounds i8** %regstart.0, i64 %idxprom1019, !dbg !1126
  store i8* %139, i8** %arrayidx1022, align 8, !dbg !1126, !tbaa !722
  %arrayidx1024 = getelementptr inbounds i8** %old_regend.0, i64 %idxprom1019, !dbg !1128
  %140 = load i8** %arrayidx1024, align 8, !dbg !1128, !tbaa !722
  %cmp1027 = icmp ult i8* %140, %139, !dbg !1128
  br i1 %cmp1027, label %for.inc1035, label %if.then1029, !dbg !1128

if.then1029:                                      ; preds = %for.body1018
  %arrayidx1033 = getelementptr inbounds i8** %regend.0, i64 %idxprom1019, !dbg !1129
  store i8* %140, i8** %arrayidx1033, align 8, !dbg !1129, !tbaa !722
  br label %for.inc1035, !dbg !1129

for.inc1035:                                      ; preds = %for.body1018, %if.then1029
  %inc1036 = add i32 %r1004.04032, 1, !dbg !1130
  call void @llvm.dbg.value(metadata !{i32 %inc1036}, i64 0, metadata !589), !dbg !1130
  %141 = load i8* %incdec.ptr, align 1, !dbg !1124, !tbaa !714
  %conv1012 = zext i8 %141 to i32, !dbg !1124
  %142 = load i8* %add.ptr1013, align 1, !dbg !1124, !tbaa !714
  %conv1014 = zext i8 %142 to i32, !dbg !1124
  %add1015 = add i32 %conv1014, %conv1012, !dbg !1124
  %cmp1016 = icmp ult i32 %inc1036, %add1015, !dbg !1124
  br i1 %cmp1016, label %for.body1018, label %if.end1038, !dbg !1124

if.end1038:                                       ; preds = %if.then1003, %for.inc1035, %if.then994
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1131
  %add.ptr976.sum4288 = add i64 %idx.ext975, 1, !dbg !1131
  %incdec.ptr1039 = getelementptr inbounds i8* %add.ptr973.add.ptr968, i64 %add.ptr976.sum4288, !dbg !1131
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1039}, i64 0, metadata !526), !dbg !1131
  store i8* %incdec.ptr1039, i8** %p1, align 8, !dbg !1131, !tbaa !722
  %143 = load i8* %incdec.ptr1039, align 1, !dbg !1132, !tbaa !714
  %conv1042 = zext i8 %143 to i32, !dbg !1132
  call void @llvm.dbg.value(metadata !{i32 %conv1042}, i64 0, metadata !525), !dbg !1132
  %add.ptr976.sum4289 = add i64 %idx.ext975, 2, !dbg !1132
  %add.ptr1044 = getelementptr inbounds i8* %add.ptr973.add.ptr968, i64 %add.ptr976.sum4289, !dbg !1132
  %144 = load i8* %add.ptr1044, align 1, !dbg !1132, !tbaa !714
  %conv1045 = sext i8 %144 to i32, !dbg !1132
  %shl1046 = shl nsw i32 %conv1045, 8, !dbg !1132
  %add1047 = or i32 %shl1046, %conv1042, !dbg !1132
  call void @llvm.dbg.value(metadata !{i32 %add1047}, i64 0, metadata !525), !dbg !1132
  %add.ptr976.sum4290 = add i64 %idx.ext975, 3, !dbg !1135
  %add.ptr1050 = getelementptr inbounds i8* %add.ptr973.add.ptr968, i64 %add.ptr976.sum4290, !dbg !1135
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1050}, i64 0, metadata !526), !dbg !1135
  store i8* %add.ptr1050, i8** %p1, align 8, !dbg !1135, !tbaa !722
  %sub1059 = sub i64 %highest_active_reg.1, %lowest_active_reg.2, !dbg !1136
  %145 = mul i64 %sub1059, 3, !dbg !1136
  %add1062 = add i64 %145, 7, !dbg !1136
  br label %while.cond1054, !dbg !1136

while.cond1054:                                   ; preds = %cond.false1071, %if.end1038
  %fail_stack.sroa.0.3 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %if.end1038 ], [ %148, %cond.false1071 ]
  %fail_stack.sroa.1.1 = phi i32 [ %fail_stack.sroa.1.0, %if.end1038 ], [ %fail_stack.sroa.1.1.shl1074, %cond.false1071 ]
  %sub1057 = sub i32 %fail_stack.sroa.1.1, %fail_stack.sroa.2.0, !dbg !1136
  %conv1058 = zext i32 %sub1057 to i64, !dbg !1136
  %cmp1063 = icmp ult i64 %conv1058, %add1062, !dbg !1136
  br i1 %cmp1063, label %while.body1065, label %for.cond1092.loopexit, !dbg !1136

while.body1065:                                   ; preds = %while.cond1054
  %146 = load i32* @re_max_failures, align 4, !dbg !1137, !tbaa !795
  %mul1067 = mul nsw i32 %146, 19, !dbg !1137
  %cmp1068 = icmp ugt i32 %fail_stack.sroa.1.1, %mul1067, !dbg !1137
  br i1 %cmp1068, label %return, label %cond.false1071, !dbg !1137

cond.false1071:                                   ; preds = %while.body1065
  %147 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.3 to i8*, !dbg !1137
  %shl1074 = shl i32 %fail_stack.sroa.1.1, 1, !dbg !1137
  %conv1075 = zext i32 %shl1074 to i64, !dbg !1137
  %mul1076 = shl nuw nsw i64 %conv1075, 3, !dbg !1137
  %call1077 = call i8* @realloc(i8* %147, i64 %mul1076) #7, !dbg !1137
  %148 = bitcast i8* %call1077 to %union.fail_stack_elt*, !dbg !1137
  %cmp1080 = icmp eq i8* %call1077, null, !dbg !1137
  %fail_stack.sroa.1.1.shl1074 = select i1 %cmp1080, i32 %fail_stack.sroa.1.1, i32 %shl1074, !dbg !1137
  br i1 %cmp1080, label %return, label %while.cond1054, !dbg !1137

for.cond1092.loopexit:                            ; preds = %while.cond1054
  %cmp10934036 = icmp ugt i64 %lowest_active_reg.2, %highest_active_reg.1, !dbg !1139
  br i1 %cmp10934036, label %for.end1117, label %for.body1095, !dbg !1139

for.body1095:                                     ; preds = %for.cond1092.loopexit, %for.body1095
  %this_reg.04038 = phi i64 [ %inc1116, %for.body1095 ], [ %lowest_active_reg.2, %for.cond1092.loopexit ]
  %fail_stack.sroa.2.14037 = phi i32 [ %inc1110, %for.body1095 ], [ %fail_stack.sroa.2.0, %for.cond1092.loopexit ]
  %arrayidx1096 = getelementptr inbounds i8** %regstart.0, i64 %this_reg.04038, !dbg !1141
  %149 = load i8** %arrayidx1096, align 8, !dbg !1141, !tbaa !722
  %inc1098 = add i32 %fail_stack.sroa.2.14037, 1, !dbg !1141
  %idxprom1099 = zext i32 %fail_stack.sroa.2.14037 to i64, !dbg !1141
  %pointer = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1099, i32 0, !dbg !1141
  store i8* %149, i8** %pointer, align 8, !dbg !1141, !tbaa !722
  %arrayidx1102 = getelementptr inbounds i8** %regend.0, i64 %this_reg.04038, !dbg !1141
  %150 = load i8** %arrayidx1102, align 8, !dbg !1141, !tbaa !722
  %inc1104 = add i32 %fail_stack.sroa.2.14037, 2, !dbg !1141
  %idxprom1105 = zext i32 %inc1098 to i64, !dbg !1141
  %pointer1108 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1105, i32 0, !dbg !1141
  store i8* %150, i8** %pointer1108, align 8, !dbg !1141, !tbaa !722
  %inc1110 = add i32 %fail_stack.sroa.2.14037, 3, !dbg !1141
  %idxprom1111 = zext i32 %inc1104 to i64, !dbg !1141
  %151 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg.04038, i32 0, i32 0, !dbg !1141
  %152 = load i8** %151, align 8, !dbg !1141
  %153 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1111, i32 0, !dbg !1141
  store i8* %152, i8** %153, align 8, !dbg !1141
  %inc1116 = add i64 %this_reg.04038, 1, !dbg !1139
  call void @llvm.dbg.value(metadata !{i64 %inc1116}, i64 0, metadata !594), !dbg !1139
  %cmp1093 = icmp ugt i64 %inc1116, %highest_active_reg.1, !dbg !1139
  br i1 %cmp1093, label %for.end1117, label %for.body1095, !dbg !1139

for.end1117:                                      ; preds = %for.body1095, %for.cond1092.loopexit
  %fail_stack.sroa.2.1.lcssa = phi i32 [ %fail_stack.sroa.2.0, %for.cond1092.loopexit ], [ %inc1110, %for.body1095 ]
  %conv1118 = trunc i64 %lowest_active_reg.2 to i32, !dbg !1136
  %inc1120 = add i32 %fail_stack.sroa.2.1.lcssa, 1, !dbg !1136
  %idxprom1121 = zext i32 %fail_stack.sroa.2.1.lcssa to i64, !dbg !1136
  %arrayidx1123 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1121, !dbg !1136
  %integer = bitcast %union.fail_stack_elt* %arrayidx1123 to i32*, !dbg !1136
  store i32 %conv1118, i32* %integer, align 4, !dbg !1136, !tbaa !795
  %conv1124 = trunc i64 %highest_active_reg.1 to i32, !dbg !1136
  %inc1126 = add i32 %fail_stack.sroa.2.1.lcssa, 2, !dbg !1136
  %idxprom1127 = zext i32 %inc1120 to i64, !dbg !1136
  %arrayidx1129 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1127, !dbg !1136
  %integer1130 = bitcast %union.fail_stack_elt* %arrayidx1129 to i32*, !dbg !1136
  store i32 %conv1124, i32* %integer1130, align 4, !dbg !1136, !tbaa !795
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1136
  %154 = load i8** %p1, align 8, !dbg !1136, !tbaa !722
  %idx.ext1131 = sext i32 %add1047 to i64, !dbg !1136
  %add.ptr1132 = getelementptr inbounds i8* %154, i64 %idx.ext1131, !dbg !1136
  %inc1134 = add i32 %fail_stack.sroa.2.1.lcssa, 3, !dbg !1136
  %idxprom1135 = zext i32 %inc1126 to i64, !dbg !1136
  %pointer1138 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1135, i32 0, !dbg !1136
  store i8* %add.ptr1132, i8** %pointer1138, align 8, !dbg !1136, !tbaa !722
  %inc1140 = add i32 %fail_stack.sroa.2.1.lcssa, 4, !dbg !1136
  %idxprom1141 = zext i32 %inc1134 to i64, !dbg !1136
  %pointer1144 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %idxprom1141, i32 0, !dbg !1136
  store i8* %d.0, i8** %pointer1144, align 8, !dbg !1136, !tbaa !722
  br label %fail.preheader, !dbg !1143

sw.bb1150:                                        ; preds = %if.end587
  %incdec.ptr1151 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1144
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1151}, i64 0, metadata !533), !dbg !1144
  %155 = load i8* %incdec.ptr, align 1, !dbg !1144, !tbaa !714
  %idxprom1153 = zext i8 %155 to i64, !dbg !1145
  %arrayidx1154 = getelementptr inbounds i8** %regstart.0, i64 %idxprom1153, !dbg !1145
  %156 = load i8** %arrayidx1154, align 8, !dbg !1145, !tbaa !722
  %cmp1155 = icmp eq i8* %156, @reg_unset_dummy, !dbg !1145
  br i1 %cmp1155, label %fail.preheader, label %lor.lhs.false1157, !dbg !1145

lor.lhs.false1157:                                ; preds = %sw.bb1150
  %arrayidx1159 = getelementptr inbounds i8** %regend.0, i64 %idxprom1153, !dbg !1145
  %157 = load i8** %arrayidx1159, align 8, !dbg !1145, !tbaa !722
  %cmp1160 = icmp eq i8* %157, @reg_unset_dummy, !dbg !1145
  br i1 %cmp1160, label %fail.preheader, label %if.end1163, !dbg !1145

if.end1163:                                       ; preds = %lor.lhs.false1157
  call void @llvm.dbg.value(metadata !{i8* %156}, i64 0, metadata !595), !dbg !1146
  %cmp1177 = icmp ule i8* %156, %add.ptr138, !dbg !1147
  %cmp1170.not = icmp ule i8* %string1., %156, !dbg !1147
  %not.or.cond3902 = and i1 %notlhs, %cmp1170.not, !dbg !1147
  %.cmp1177 = and i1 %cmp1177, %not.or.cond3902, !dbg !1147
  br i1 %notlhs, label %land.end1194, label %if.end1163.land.end1194_crit_edge

if.end1163.land.end1194_crit_edge:                ; preds = %if.end1163
  br i1 %.cmp1177, label %while.cond1205.preheader, label %cond.true1198

land.end1194:                                     ; preds = %if.end1163
  %cmp1192 = icmp ule i8* %157, %add.ptr138
  %not.cmp1185 = icmp ule i8* %string1., %157
  %.cmp1192 = and i1 %cmp1192, %not.cmp1185
  %cmp1196tmp = xor i1 %.cmp1177, %.cmp1192
  br i1 %cmp1196tmp, label %while.cond1205.preheader, label %cond.true1198

cond.true1198:                                    ; preds = %if.end1163.land.end1194_crit_edge, %land.end1194
  br label %while.cond1205.preheader

while.cond1205.preheader:                         ; preds = %land.end1194, %cond.true1198, %if.end1163.land.end1194_crit_edge
  %dend2.0.ph = phi i8* [ %end_match_1.0, %if.end1163.land.end1194_crit_edge ], [ %157, %cond.true1198 ], [ %end_match_1.0, %land.end1194 ]
  %cmp12704003 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1148
  br label %while.cond1205.outer, !dbg !1150

while.cond1205.outer:                             ; preds = %for.cond1269.preheader, %for.body1272, %while.cond1205.preheader
  %158 = phi i8* [ %157, %while.cond1205.preheader ], [ %161, %for.body1272 ], [ %161, %for.cond1269.preheader ]
  %set_regs_matched_done.3.ph = phi i32 [ %set_regs_matched_done.0, %while.cond1205.preheader ], [ 1, %for.body1272 ], [ 1, %for.cond1269.preheader ]
  %d2.0.ph = phi i8* [ %156, %while.cond1205.preheader ], [ %add.ptr1264, %for.body1272 ], [ %add.ptr1264, %for.cond1269.preheader ]
  %dend2.0.ph4006 = phi i8* [ %dend2.0.ph, %while.cond1205.preheader ], [ %dend2.0.ph4009, %for.body1272 ], [ %dend2.0.ph4009, %for.cond1269.preheader ]
  %dend.7.ph = phi i8* [ %dend.0, %while.cond1205.preheader ], [ %dend.8, %for.body1272 ], [ %dend.8, %for.cond1269.preheader ]
  %d.7.ph = phi i8* [ %d.0, %while.cond1205.preheader ], [ %add.ptr1262, %for.body1272 ], [ %add.ptr1262, %for.cond1269.preheader ]
  %tobool1266 = icmp eq i32 %set_regs_matched_done.3.ph, 0, !dbg !1151
  br label %while.cond1205.outer4007

while.cond1205.outer4007:                         ; preds = %if.end1212, %while.cond1205.outer
  %159 = phi i8* [ %158, %while.cond1205.outer ], [ %160, %if.end1212 ]
  %d2.0.ph4008 = phi i8* [ %d2.0.ph, %while.cond1205.outer ], [ %string2.string1, %if.end1212 ]
  %dend2.0.ph4009 = phi i8* [ %dend2.0.ph4006, %while.cond1205.outer ], [ %160, %if.end1212 ]
  %dend.7.ph4010 = phi i8* [ %dend.7.ph, %while.cond1205.outer ], [ %dend.7, %if.end1212 ]
  %d.7.ph4011 = phi i8* [ %d.7.ph, %while.cond1205.outer ], [ %d.7, %if.end1212 ]
  %cmp1209 = icmp eq i8* %dend2.0.ph4009, %end_match_2.0, !dbg !1152
  %sub.ptr.lhs.cast1240 = ptrtoint i8* %dend2.0.ph4009 to i64, !dbg !1154
  br label %while.cond1205

while.cond1205:                                   ; preds = %while.cond1205.outer4007, %if.end1260
  %160 = phi i8* [ %161, %if.end1260 ], [ %159, %while.cond1205.outer4007 ]
  %d2.0 = phi i8* [ %add.ptr1264, %if.end1260 ], [ %d2.0.ph4008, %while.cond1205.outer4007 ]
  %dend.7 = phi i8* [ %dend.8, %if.end1260 ], [ %dend.7.ph4010, %while.cond1205.outer4007 ]
  %d.7 = phi i8* [ %add.ptr1262, %if.end1260 ], [ %d.7.ph4011, %while.cond1205.outer4007 ]
  %cmp1206 = icmp eq i8* %d2.0, %dend2.0.ph4009, !dbg !1150
  %cmp1206.not = xor i1 %cmp1206, true, !dbg !1150
  %or.cond3903 = or i1 %cmp1209, %cmp1206.not, !dbg !1150
  br i1 %or.cond3903, label %while.end1221, label %if.end1212, !dbg !1150

if.end1212:                                       ; preds = %while.cond1205
  %cmp1215 = icmp eq i8* %dend2.0.ph4009, %160, !dbg !1155
  br i1 %cmp1215, label %while.end1221, label %while.cond1205.outer4007, !dbg !1155

while.end1221:                                    ; preds = %while.cond1205, %if.end1212
  %161 = phi i8* [ %160, %while.cond1205 ], [ %dend2.0.ph4009, %if.end1212 ]
  br i1 %cmp1206, label %for.cond167, label %while.cond1226, !dbg !1156

while.cond1226:                                   ; preds = %while.end1221, %while.body1229
  %dend.8 = phi i8* [ %end_match_2.0, %while.body1229 ], [ %dend.7, %while.end1221 ]
  %d.8 = phi i8* [ %string2.string1, %while.body1229 ], [ %d.7, %while.end1221 ]
  %cmp1227 = icmp eq i8* %d.8, %dend.8, !dbg !1157
  br i1 %cmp1227, label %while.body1229, label %while.end1234, !dbg !1157

while.body1229:                                   ; preds = %while.cond1226
  %cmp1230 = icmp eq i8* %dend.8, %end_match_2.0, !dbg !1158
  br i1 %cmp1230, label %fail.preheader, label %while.cond1226, !dbg !1158

while.end1234:                                    ; preds = %while.cond1226
  %sub.ptr.lhs.cast1235 = ptrtoint i8* %dend.8 to i64, !dbg !1160
  %sub.ptr.rhs.cast1236 = ptrtoint i8* %d.8 to i64, !dbg !1160
  %sub.ptr.sub1237 = sub i64 %sub.ptr.lhs.cast1235, %sub.ptr.rhs.cast1236, !dbg !1160
  %sext = shl i64 %sub.ptr.sub1237, 32, !dbg !1154
  %conv1239 = ashr exact i64 %sext, 32, !dbg !1154
  %sub.ptr.rhs.cast1241 = ptrtoint i8* %d2.0 to i64, !dbg !1154
  %sub.ptr.sub1242 = sub i64 %sub.ptr.lhs.cast1240, %sub.ptr.rhs.cast1241, !dbg !1154
  %cmp1243 = icmp sgt i64 %conv1239, %sub.ptr.sub1242, !dbg !1154
  %sub.ptr.sub1242.sub.ptr.sub1237 = select i1 %cmp1243, i64 %sub.ptr.sub1242, i64 %sub.ptr.sub1237, !dbg !1154
  br i1 %tobool593, label %cond.false1255, label %cond.true1252, !dbg !1161

cond.true1252:                                    ; preds = %while.end1234
  %mcnt.8 = trunc i64 %sub.ptr.sub1242.sub.ptr.sub1237 to i32, !dbg !1162
  tail call void @llvm.dbg.value(metadata !{i8* %end_match_2.0}, i64 0, metadata !1163), !dbg !1165
  tail call void @llvm.dbg.value(metadata !{i8* %d2.0}, i64 0, metadata !1166), !dbg !1165
  tail call void @llvm.dbg.value(metadata !{i32 %mcnt.8}, i64 0, metadata !1167), !dbg !1168
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !1169), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{i8* %end_match_2.0}, i64 0, metadata !1171), !dbg !1172
  tail call void @llvm.dbg.value(metadata !{i8* %d2.0}, i64 0, metadata !1173), !dbg !1174
  %tobool8.i = icmp eq i32 %mcnt.8, 0, !dbg !1175
  br i1 %tobool8.i, label %if.end1260, label %while.body.i, !dbg !1175

while.body.i:                                     ; preds = %cond.true1252, %if.end.i
  %p2.011.i = phi i8* [ %incdec.ptr1.i, %if.end.i ], [ %d2.0, %cond.true1252 ]
  %p1.010.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %d.8, %cond.true1252 ]
  %len.addr.09.i = phi i32 [ %dec.i, %if.end.i ], [ %mcnt.8, %cond.true1252 ]
  %162 = load i8* %p1.010.i, align 1, !dbg !1176, !tbaa !714
  %idxprom.i = zext i8 %162 to i64, !dbg !1176
  %arrayidx.i = getelementptr inbounds i8* %2, i64 %idxprom.i, !dbg !1176
  %163 = load i8* %arrayidx.i, align 1, !dbg !1176, !tbaa !714
  %164 = load i8* %p2.011.i, align 1, !dbg !1176, !tbaa !714
  %idxprom2.i = zext i8 %164 to i64, !dbg !1176
  %arrayidx3.i = getelementptr inbounds i8* %2, i64 %idxprom2.i, !dbg !1176
  %165 = load i8* %arrayidx3.i, align 1, !dbg !1176, !tbaa !714
  %cmp.i = icmp eq i8 %163, %165, !dbg !1176
  br i1 %cmp.i, label %if.end.i, label %fail.preheader, !dbg !1176

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr1.i = getelementptr inbounds i8* %p2.011.i, i64 1, !dbg !1176
  %incdec.ptr.i = getelementptr inbounds i8* %p1.010.i, i64 1, !dbg !1176
  %dec.i = add nsw i32 %len.addr.09.i, -1, !dbg !1178
  tail call void @llvm.dbg.value(metadata !{i32 %dec.i}, i64 0, metadata !1167), !dbg !1178
  %tobool.i = icmp eq i32 %dec.i, 0, !dbg !1175
  br i1 %tobool.i, label %if.end1260, label %while.body.i, !dbg !1175

cond.false1255:                                   ; preds = %while.end1234
  %sext3876 = shl i64 %sub.ptr.sub1242.sub.ptr.sub1237, 32, !dbg !1179
  %conv1256 = ashr exact i64 %sext3876, 32, !dbg !1179
  %call1257 = call i32 @memcmp(i8* %d.8, i8* %d2.0, i64 %conv1256) #10, !dbg !1179
  %tobool1258 = icmp eq i32 %call1257, 0, !dbg !1179
  br i1 %tobool1258, label %if.end1260, label %fail.preheader, !dbg !1179

if.end1260:                                       ; preds = %if.end.i, %cond.true1252, %cond.false1255
  %sext3877 = shl i64 %sub.ptr.sub1242.sub.ptr.sub1237, 32, !dbg !1180
  %idx.ext1261 = ashr exact i64 %sext3877, 32, !dbg !1180
  %add.ptr1262 = getelementptr inbounds i8* %d.8, i64 %idx.ext1261, !dbg !1180
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1262}, i64 0, metadata !531), !dbg !1180
  %add.ptr1264 = getelementptr inbounds i8* %d2.0, i64 %idx.ext1261, !dbg !1180
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1264}, i64 0, metadata !595), !dbg !1180
  br i1 %tobool1266, label %for.cond1269.preheader, label %while.cond1205, !dbg !1151

for.cond1269.preheader:                           ; preds = %if.end1260
  br i1 %cmp12704003, label %while.cond1205.outer, label %for.body1272, !dbg !1148

for.body1272:                                     ; preds = %for.cond1269.preheader, %for.body1272
  %r1268.04004 = phi i64 [ %inc1284, %for.body1272 ], [ %lowest_active_reg.0, %for.cond1269.preheader ]
  %arrayidx1273 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r1268.04004, !dbg !1181
  %166 = bitcast %union.register_info_type* %arrayidx1273 to i8*, !dbg !1181
  %bf.load1275 = load i8* %166, align 4, !dbg !1181
  %bf.set1282 = or i8 %bf.load1275, 24, !dbg !1181
  store i8 %bf.set1282, i8* %166, align 4, !dbg !1181
  %inc1284 = add i64 %r1268.04004, 1, !dbg !1148
  call void @llvm.dbg.value(metadata !{i64 %inc1284}, i64 0, metadata !599), !dbg !1148
  %cmp1270 = icmp ugt i64 %inc1284, %highest_active_reg.0, !dbg !1148
  br i1 %cmp1270, label %while.cond1205.outer, label %for.body1272, !dbg !1148

sw.bb1290:                                        ; preds = %if.end587
  %cmp1296 = icmp eq i8* %d.0, %cond1295, !dbg !967
  %or.cond3904 = or i1 %cmp1296, %tobool1299, !dbg !967
  br i1 %or.cond3904, label %if.then1300, label %if.else1308, !dbg !967

if.then1300:                                      ; preds = %sw.bb1290
  %bf.load1301 = load i8* %not_bol, align 8, !dbg !968
  %bf.clear1303 = and i8 %bf.load1301, 32, !dbg !968
  %tobool1305 = icmp eq i8 %bf.clear1303, 0, !dbg !968
  br i1 %tobool1305, label %for.cond167, label %fail.preheader, !dbg !968

if.else1308:                                      ; preds = %sw.bb1290
  %arrayidx1309 = getelementptr inbounds i8* %d.0, i64 -1, !dbg !1183
  %167 = load i8* %arrayidx1309, align 1, !dbg !1183, !tbaa !714
  %cmp1311 = icmp eq i8 %167, 10, !dbg !1183
  br i1 %cmp1311, label %land.lhs.true1313, label %fail.preheader, !dbg !1183

land.lhs.true1313:                                ; preds = %if.else1308
  %bf.load1314 = load i8* %not_bol, align 8, !dbg !1183
  %tobool1317 = icmp slt i8 %bf.load1314, 0, !dbg !1183
  br i1 %tobool1317, label %for.cond167, label %fail.preheader, !dbg !1183

sw.bb1321:                                        ; preds = %if.end587
  %cmp1322 = icmp eq i8* %d.0, %add.ptr140, !dbg !1184
  br i1 %cmp1322, label %if.then1324, label %if.else1332, !dbg !1184

if.then1324:                                      ; preds = %sw.bb1321
  %bf.load1325 = load i8* %not_bol, align 8, !dbg !1185
  %bf.clear1327 = and i8 %bf.load1325, 64, !dbg !1185
  %tobool1329 = icmp eq i8 %bf.clear1327, 0, !dbg !1185
  br i1 %tobool1329, label %for.cond167, label %fail.preheader, !dbg !1185

if.else1332:                                      ; preds = %sw.bb1321
  %cmp1333 = icmp eq i8* %d.0, %add.ptr138, !dbg !1187
  %string2.addr.0.d.0 = select i1 %cmp1333, i8* %string2.string1, i8* %d.0, !dbg !1187
  %.sink2820 = load i8* %string2.addr.0.d.0, align 1, !dbg !1187
  %cmp1341 = icmp eq i8 %.sink2820, 10, !dbg !1187
  br i1 %cmp1341, label %land.lhs.true1343, label %fail.preheader, !dbg !1187

land.lhs.true1343:                                ; preds = %if.else1332
  %bf.load1345 = load i8* %not_bol, align 8, !dbg !1187
  %tobool1348 = icmp slt i8 %bf.load1345, 0, !dbg !1187
  br i1 %tobool1348, label %for.cond167, label %fail.preheader, !dbg !1187

sw.bb1352:                                        ; preds = %if.end587
  %cmp1358 = icmp eq i8* %d.0, %cond1295, !dbg !1188
  %or.cond3905 = or i1 %cmp1358, %tobool1299, !dbg !1188
  br i1 %or.cond3905, label %for.cond167, label %fail.preheader, !dbg !1188

sw.bb1364:                                        ; preds = %if.end587
  %cmp1365 = icmp eq i8* %d.0, %add.ptr140, !dbg !1189
  br i1 %cmp1365, label %for.cond167, label %fail.preheader, !dbg !1189

do.body1371:                                      ; preds = %if.end587
  %168 = load i8* %incdec.ptr, align 1, !dbg !1190, !tbaa !714
  %conv1372 = zext i8 %168 to i32, !dbg !1190
  call void @llvm.dbg.value(metadata !{i32 %conv1372}, i64 0, metadata !525), !dbg !1190
  %add.ptr1374 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1190
  %169 = load i8* %add.ptr1374, align 1, !dbg !1190, !tbaa !714
  %conv1375 = sext i8 %169 to i32, !dbg !1190
  %shl1376 = shl nsw i32 %conv1375, 8, !dbg !1190
  %add1377 = or i32 %shl1376, %conv1372, !dbg !1190
  call void @llvm.dbg.value(metadata !{i32 %add1377}, i64 0, metadata !525), !dbg !1190
  %add.ptr1380 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1193
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1380}, i64 0, metadata !533), !dbg !1193
  %sub1391 = sub i64 %highest_active_reg.0, %lowest_active_reg.0, !dbg !1194
  %170 = mul i64 %sub1391, 3, !dbg !1194
  %add1394 = add i64 %170, 7, !dbg !1194
  br label %while.cond1386, !dbg !1194

while.cond1386:                                   ; preds = %cond.false1403, %do.body1371
  %fail_stack.sroa.0.4 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %do.body1371 ], [ %173, %cond.false1403 ]
  %fail_stack.sroa.1.3 = phi i32 [ %fail_stack.sroa.1.0, %do.body1371 ], [ %fail_stack.sroa.1.3.shl1406, %cond.false1403 ]
  %sub1389 = sub i32 %fail_stack.sroa.1.3, %fail_stack.sroa.2.0, !dbg !1194
  %conv1390 = zext i32 %sub1389 to i64, !dbg !1194
  %cmp1395 = icmp ult i64 %conv1390, %add1394, !dbg !1194
  br i1 %cmp1395, label %while.body1397, label %for.cond1424.loopexit, !dbg !1194

while.body1397:                                   ; preds = %while.cond1386
  %171 = load i32* @re_max_failures, align 4, !dbg !1195, !tbaa !795
  %mul1399 = mul nsw i32 %171, 19, !dbg !1195
  %cmp1400 = icmp ugt i32 %fail_stack.sroa.1.3, %mul1399, !dbg !1195
  br i1 %cmp1400, label %return, label %cond.false1403, !dbg !1195

cond.false1403:                                   ; preds = %while.body1397
  %172 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.4 to i8*, !dbg !1195
  %shl1406 = shl i32 %fail_stack.sroa.1.3, 1, !dbg !1195
  %conv1407 = zext i32 %shl1406 to i64, !dbg !1195
  %mul1408 = shl nuw nsw i64 %conv1407, 3, !dbg !1195
  %call1409 = call i8* @realloc(i8* %172, i64 %mul1408) #7, !dbg !1195
  %173 = bitcast i8* %call1409 to %union.fail_stack_elt*, !dbg !1195
  %cmp1412 = icmp eq i8* %call1409, null, !dbg !1195
  %fail_stack.sroa.1.3.shl1406 = select i1 %cmp1412, i32 %fail_stack.sroa.1.3, i32 %shl1406, !dbg !1195
  br i1 %cmp1412, label %return, label %while.cond1386, !dbg !1195

for.cond1424.loopexit:                            ; preds = %while.cond1386
  %cmp14253993 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1197
  br i1 %cmp14253993, label %for.end1451, label %for.body1427, !dbg !1197

for.body1427:                                     ; preds = %for.cond1424.loopexit, %for.body1427
  %this_reg1385.03995 = phi i64 [ %inc1450, %for.body1427 ], [ %lowest_active_reg.0, %for.cond1424.loopexit ]
  %fail_stack.sroa.2.23994 = phi i32 [ %inc1443, %for.body1427 ], [ %fail_stack.sroa.2.0, %for.cond1424.loopexit ]
  %arrayidx1428 = getelementptr inbounds i8** %regstart.0, i64 %this_reg1385.03995, !dbg !1199
  %174 = load i8** %arrayidx1428, align 8, !dbg !1199, !tbaa !722
  %inc1430 = add i32 %fail_stack.sroa.2.23994, 1, !dbg !1199
  %idxprom1431 = zext i32 %fail_stack.sroa.2.23994 to i64, !dbg !1199
  %pointer1434 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1431, i32 0, !dbg !1199
  store i8* %174, i8** %pointer1434, align 8, !dbg !1199, !tbaa !722
  %arrayidx1435 = getelementptr inbounds i8** %regend.0, i64 %this_reg1385.03995, !dbg !1199
  %175 = load i8** %arrayidx1435, align 8, !dbg !1199, !tbaa !722
  %inc1437 = add i32 %fail_stack.sroa.2.23994, 2, !dbg !1199
  %idxprom1438 = zext i32 %inc1430 to i64, !dbg !1199
  %pointer1441 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1438, i32 0, !dbg !1199
  store i8* %175, i8** %pointer1441, align 8, !dbg !1199, !tbaa !722
  %inc1443 = add i32 %fail_stack.sroa.2.23994, 3, !dbg !1199
  %idxprom1444 = zext i32 %inc1437 to i64, !dbg !1199
  %176 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg1385.03995, i32 0, i32 0, !dbg !1199
  %177 = load i8** %176, align 8, !dbg !1199
  %178 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1444, i32 0, !dbg !1199
  store i8* %177, i8** %178, align 8, !dbg !1199
  %inc1450 = add i64 %this_reg1385.03995, 1, !dbg !1197
  call void @llvm.dbg.value(metadata !{i64 %inc1450}, i64 0, metadata !606), !dbg !1197
  %cmp1425 = icmp ugt i64 %inc1450, %highest_active_reg.0, !dbg !1197
  br i1 %cmp1425, label %for.end1451, label %for.body1427, !dbg !1197

for.end1451:                                      ; preds = %for.body1427, %for.cond1424.loopexit
  %fail_stack.sroa.2.2.lcssa = phi i32 [ %fail_stack.sroa.2.0, %for.cond1424.loopexit ], [ %inc1443, %for.body1427 ]
  %conv1452 = trunc i64 %lowest_active_reg.0 to i32, !dbg !1194
  %inc1454 = add i32 %fail_stack.sroa.2.2.lcssa, 1, !dbg !1194
  %idxprom1455 = zext i32 %fail_stack.sroa.2.2.lcssa to i64, !dbg !1194
  %arrayidx1457 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1455, !dbg !1194
  %integer1458 = bitcast %union.fail_stack_elt* %arrayidx1457 to i32*, !dbg !1194
  store i32 %conv1452, i32* %integer1458, align 4, !dbg !1194, !tbaa !795
  %conv1459 = trunc i64 %highest_active_reg.0 to i32, !dbg !1194
  %inc1461 = add i32 %fail_stack.sroa.2.2.lcssa, 2, !dbg !1194
  %idxprom1462 = zext i32 %inc1454 to i64, !dbg !1194
  %arrayidx1464 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1462, !dbg !1194
  %integer1465 = bitcast %union.fail_stack_elt* %arrayidx1464 to i32*, !dbg !1194
  store i32 %conv1459, i32* %integer1465, align 4, !dbg !1194, !tbaa !795
  %addconv3875 = add nsw i32 %add1377, 3, !dbg !1194
  %add.ptr1380.sum = sext i32 %addconv3875 to i64, !dbg !1194
  %add.ptr1467 = getelementptr inbounds i8* %p.0, i64 %add.ptr1380.sum, !dbg !1194
  %inc1469 = add i32 %fail_stack.sroa.2.2.lcssa, 3, !dbg !1194
  %idxprom1470 = zext i32 %inc1461 to i64, !dbg !1194
  %pointer1473 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1470, i32 0, !dbg !1194
  store i8* %add.ptr1467, i8** %pointer1473, align 8, !dbg !1194, !tbaa !722
  %inc1475 = add i32 %fail_stack.sroa.2.2.lcssa, 4, !dbg !1194
  %idxprom1476 = zext i32 %inc1469 to i64, !dbg !1194
  %pointer1479 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %idxprom1476, i32 0, !dbg !1194
  store i8* null, i8** %pointer1479, align 8, !dbg !1194, !tbaa !722
  br label %for.cond167, !dbg !1201

do.body1484:                                      ; preds = %if.end587.do.body1484_crit_edge, %if.then2208
  %add.ptr1493.pre-phi = phi i8* [ %add.ptr1493.pre, %if.end587.do.body1484_crit_edge ], [ %add.ptr2178, %if.then2208 ], !dbg !1038
  %179 = load i8* %incdec.ptr, align 1, !dbg !1202, !tbaa !714
  %conv1485 = zext i8 %179 to i32, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32 %conv1485}, i64 0, metadata !525), !dbg !1202
  %add.ptr1487 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1202
  %180 = load i8* %add.ptr1487, align 1, !dbg !1202, !tbaa !714
  %conv1488 = sext i8 %180 to i32, !dbg !1202
  %shl1489 = shl nsw i32 %conv1488, 8, !dbg !1202
  %add1490 = or i32 %shl1489, %conv1485, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32 %add1490}, i64 0, metadata !525), !dbg !1202
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1493.pre-phi}, i64 0, metadata !533), !dbg !1038
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1493.pre-phi}, i64 0, metadata !526), !dbg !1204
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1493.pre-phi}, i64 0, metadata !526), !dbg !1205
  store i8* %add.ptr1493.pre-phi, i8** %p1, align 8, !dbg !1205, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1206
  %cmp14973981 = icmp ult i8* %add.ptr1493.pre-phi, %add.ptr, !dbg !1206
  br i1 %cmp14973981, label %land.end1503, label %while.end1507, !dbg !1206

while.cond1496:                                   ; preds = %land.end1503
  call void @llvm.dbg.value(metadata !{i8* %181}, i64 0, metadata !526), !dbg !1205
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1506}, i64 0, metadata !526), !dbg !1205
  store i8* %incdec.ptr1506, i8** %p1, align 8, !dbg !1205, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1206
  %cmp1497 = icmp ult i8* %incdec.ptr1506, %add.ptr, !dbg !1206
  br i1 %cmp1497, label %land.end1503, label %while.end1507, !dbg !1206

land.end1503:                                     ; preds = %do.body1484, %while.cond1496
  %181 = phi i8* [ %incdec.ptr1506, %while.cond1496 ], [ %add.ptr1493.pre-phi, %do.body1484 ]
  %182 = load i8* %181, align 1, !dbg !1206, !tbaa !714
  %cmp1501 = icmp eq i8 %182, 0, !dbg !1206
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1205
  %incdec.ptr1506 = getelementptr inbounds i8* %181, i64 1, !dbg !1205
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1506}, i64 0, metadata !526), !dbg !1205
  br i1 %cmp1501, label %while.cond1496, label %while.end1507

while.end1507:                                    ; preds = %land.end1503, %do.body1484, %while.cond1496
  %183 = phi i8* [ %add.ptr1493.pre-phi, %do.body1484 ], [ %incdec.ptr1506, %while.cond1496 ], [ %181, %land.end1503 ]
  %cmp1508 = icmp ult i8* %183, %add.ptr, !dbg !1207
  br i1 %cmp1508, label %land.lhs.true1510, label %while.cond1531.preheader, !dbg !1207

land.lhs.true1510:                                ; preds = %while.end1507
  %184 = load i8* %183, align 1, !dbg !1207, !tbaa !714
  %cmp1512 = icmp eq i8 %184, 6, !dbg !1207
  br i1 %cmp1512, label %if.then1514, label %while.cond1531.preheader, !dbg !1207

if.then1514:                                      ; preds = %land.lhs.true1510
  %add.ptr1515 = getelementptr inbounds i8* %183, i64 1, !dbg !1208
  %185 = load i8* %add.ptr1515, align 1, !dbg !1208, !tbaa !714
  %conv1516 = zext i8 %185 to i64, !dbg !1208
  %add.ptr1517 = getelementptr inbounds i8* %183, i64 2, !dbg !1208
  %186 = load i8* %add.ptr1517, align 1, !dbg !1208, !tbaa !714
  %conv1518 = zext i8 %186 to i64, !dbg !1208
  %add1519 = add i64 %conv1518, %conv1516, !dbg !1208
  call void @llvm.dbg.value(metadata !{i64 %add1519}, i64 0, metadata !541), !dbg !1208
  %cmp1521 = icmp eq i64 %lowest_active_reg.0, 257, !dbg !1210
  call void @llvm.dbg.value(metadata !{i64 %conv1516}, i64 0, metadata !539), !dbg !1211
  %conv1525.lowest_active_reg.0 = select i1 %cmp1521, i64 %conv1516, i64 %lowest_active_reg.0, !dbg !1210
  br label %while.cond1531.preheader, !dbg !1210

while.cond1531.preheader:                         ; preds = %while.end1507, %land.lhs.true1510, %if.then1514
  %lowest_active_reg.3.ph = phi i64 [ %conv1525.lowest_active_reg.0, %if.then1514 ], [ %lowest_active_reg.0, %land.lhs.true1510 ], [ %lowest_active_reg.0, %while.end1507 ]
  %highest_active_reg.2.ph = phi i64 [ %add1519, %if.then1514 ], [ %highest_active_reg.0, %land.lhs.true1510 ], [ %highest_active_reg.0, %while.end1507 ]
  %sub1536 = sub i64 %highest_active_reg.2.ph, %lowest_active_reg.3.ph, !dbg !1212
  %187 = mul i64 %sub1536, 3, !dbg !1212
  %add1539 = add i64 %187, 7, !dbg !1212
  br label %while.cond1531, !dbg !1212

while.cond1531:                                   ; preds = %while.cond1531.preheader, %cond.false1548
  %fail_stack.sroa.0.5 = phi %union.fail_stack_elt* [ %190, %cond.false1548 ], [ %fail_stack.sroa.0.0, %while.cond1531.preheader ]
  %fail_stack.sroa.1.5 = phi i32 [ %fail_stack.sroa.1.5.shl1551, %cond.false1548 ], [ %fail_stack.sroa.1.0, %while.cond1531.preheader ]
  %sub1534 = sub i32 %fail_stack.sroa.1.5, %fail_stack.sroa.2.0, !dbg !1212
  %conv1535 = zext i32 %sub1534 to i64, !dbg !1212
  %cmp1540 = icmp ult i64 %conv1535, %add1539, !dbg !1212
  br i1 %cmp1540, label %while.body1542, label %for.cond1569.loopexit, !dbg !1212

while.body1542:                                   ; preds = %while.cond1531
  %188 = load i32* @re_max_failures, align 4, !dbg !1213, !tbaa !795
  %mul1544 = mul nsw i32 %188, 19, !dbg !1213
  %cmp1545 = icmp ugt i32 %fail_stack.sroa.1.5, %mul1544, !dbg !1213
  br i1 %cmp1545, label %return, label %cond.false1548, !dbg !1213

cond.false1548:                                   ; preds = %while.body1542
  %189 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.5 to i8*, !dbg !1213
  %shl1551 = shl i32 %fail_stack.sroa.1.5, 1, !dbg !1213
  %conv1552 = zext i32 %shl1551 to i64, !dbg !1213
  %mul1553 = shl nuw nsw i64 %conv1552, 3, !dbg !1213
  %call1554 = call i8* @realloc(i8* %189, i64 %mul1553) #7, !dbg !1213
  %190 = bitcast i8* %call1554 to %union.fail_stack_elt*, !dbg !1213
  %cmp1557 = icmp eq i8* %call1554, null, !dbg !1213
  %fail_stack.sroa.1.5.shl1551 = select i1 %cmp1557, i32 %fail_stack.sroa.1.5, i32 %shl1551, !dbg !1213
  br i1 %cmp1557, label %return, label %while.cond1531, !dbg !1213

for.cond1569.loopexit:                            ; preds = %while.cond1531
  %cmp15703986 = icmp ugt i64 %lowest_active_reg.3.ph, %highest_active_reg.2.ph, !dbg !1215
  br i1 %cmp15703986, label %for.end1596, label %for.body1572, !dbg !1215

for.body1572:                                     ; preds = %for.cond1569.loopexit, %for.body1572
  %this_reg1530.03988 = phi i64 [ %inc1595, %for.body1572 ], [ %lowest_active_reg.3.ph, %for.cond1569.loopexit ]
  %fail_stack.sroa.2.33987 = phi i32 [ %inc1588, %for.body1572 ], [ %fail_stack.sroa.2.0, %for.cond1569.loopexit ]
  %arrayidx1573 = getelementptr inbounds i8** %regstart.0, i64 %this_reg1530.03988, !dbg !1217
  %191 = load i8** %arrayidx1573, align 8, !dbg !1217, !tbaa !722
  %inc1575 = add i32 %fail_stack.sroa.2.33987, 1, !dbg !1217
  %idxprom1576 = zext i32 %fail_stack.sroa.2.33987 to i64, !dbg !1217
  %pointer1579 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1576, i32 0, !dbg !1217
  store i8* %191, i8** %pointer1579, align 8, !dbg !1217, !tbaa !722
  %arrayidx1580 = getelementptr inbounds i8** %regend.0, i64 %this_reg1530.03988, !dbg !1217
  %192 = load i8** %arrayidx1580, align 8, !dbg !1217, !tbaa !722
  %inc1582 = add i32 %fail_stack.sroa.2.33987, 2, !dbg !1217
  %idxprom1583 = zext i32 %inc1575 to i64, !dbg !1217
  %pointer1586 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1583, i32 0, !dbg !1217
  store i8* %192, i8** %pointer1586, align 8, !dbg !1217, !tbaa !722
  %inc1588 = add i32 %fail_stack.sroa.2.33987, 3, !dbg !1217
  %idxprom1589 = zext i32 %inc1582 to i64, !dbg !1217
  %193 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg1530.03988, i32 0, i32 0, !dbg !1217
  %194 = load i8** %193, align 8, !dbg !1217
  %195 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1589, i32 0, !dbg !1217
  store i8* %194, i8** %195, align 8, !dbg !1217
  %inc1595 = add i64 %this_reg1530.03988, 1, !dbg !1215
  %cmp1570 = icmp ugt i64 %inc1595, %highest_active_reg.2.ph, !dbg !1215
  br i1 %cmp1570, label %for.end1596, label %for.body1572, !dbg !1215

for.end1596:                                      ; preds = %for.body1572, %for.cond1569.loopexit
  %fail_stack.sroa.2.3.lcssa = phi i32 [ %fail_stack.sroa.2.0, %for.cond1569.loopexit ], [ %inc1588, %for.body1572 ]
  %conv1597 = trunc i64 %lowest_active_reg.3.ph to i32, !dbg !1212
  %inc1599 = add i32 %fail_stack.sroa.2.3.lcssa, 1, !dbg !1212
  %idxprom1600 = zext i32 %fail_stack.sroa.2.3.lcssa to i64, !dbg !1212
  %arrayidx1602 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1600, !dbg !1212
  %integer1603 = bitcast %union.fail_stack_elt* %arrayidx1602 to i32*, !dbg !1212
  store i32 %conv1597, i32* %integer1603, align 4, !dbg !1212, !tbaa !795
  %conv1604 = trunc i64 %highest_active_reg.2.ph to i32, !dbg !1212
  %inc1606 = add i32 %fail_stack.sroa.2.3.lcssa, 2, !dbg !1212
  %idxprom1607 = zext i32 %inc1599 to i64, !dbg !1212
  %arrayidx1609 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1607, !dbg !1212
  %integer1610 = bitcast %union.fail_stack_elt* %arrayidx1609 to i32*, !dbg !1212
  store i32 %conv1604, i32* %integer1610, align 4, !dbg !1212, !tbaa !795
  %addconv3867 = add nsw i32 %add1490, 3, !dbg !1212
  %add.ptr1493.sum = sext i32 %addconv3867 to i64, !dbg !1212
  %add.ptr1612 = getelementptr inbounds i8* %p.0, i64 %add.ptr1493.sum, !dbg !1212
  %inc1614 = add i32 %fail_stack.sroa.2.3.lcssa, 3, !dbg !1212
  %idxprom1615 = zext i32 %inc1606 to i64, !dbg !1212
  %pointer1618 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1615, i32 0, !dbg !1212
  store i8* %add.ptr1612, i8** %pointer1618, align 8, !dbg !1212, !tbaa !722
  %inc1620 = add i32 %fail_stack.sroa.2.3.lcssa, 4, !dbg !1212
  %idxprom1621 = zext i32 %inc1614 to i64, !dbg !1212
  %pointer1624 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %idxprom1621, i32 0, !dbg !1212
  store i8* %d.0, i8** %pointer1624, align 8, !dbg !1212, !tbaa !722
  br label %for.cond167, !dbg !1219

do.body1629:                                      ; preds = %if.end587
  %196 = load i8* %incdec.ptr, align 1, !dbg !1220, !tbaa !714
  %conv1630 = zext i8 %196 to i32, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32 %conv1630}, i64 0, metadata !525), !dbg !1220
  %add.ptr1632 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1220
  %197 = load i8* %add.ptr1632, align 1, !dbg !1220, !tbaa !714
  %conv1633 = sext i8 %197 to i32, !dbg !1220
  %shl1634 = shl nsw i32 %conv1633, 8, !dbg !1220
  %add1635 = or i32 %shl1634, %conv1630, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32 %add1635}, i64 0, metadata !525), !dbg !1220
  %add.ptr1638 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1223
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1638}, i64 0, metadata !533), !dbg !1223
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1638}, i64 0, metadata !610), !dbg !1224
  br label %while.body1642, !dbg !1225

while.body1642:                                   ; preds = %land.lhs.true1660, %if.then1654, %do.body1629
  %p2.0 = phi i8* [ %add.ptr1638, %do.body1629 ], [ %add.ptr1655, %if.then1654 ], [ %add.ptr1657, %land.lhs.true1660 ]
  %add.ptr1643 = getelementptr inbounds i8* %p2.0, i64 2, !dbg !1226
  %cmp1644 = icmp ult i8* %add.ptr1643, %add.ptr, !dbg !1226
  br i1 %cmp1644, label %land.lhs.true1646, label %if.else1656, !dbg !1226

land.lhs.true1646:                                ; preds = %while.body1642
  %198 = load i8* %p2.0, align 1, !dbg !1226, !tbaa !714
  %.off = add i8 %198, -6, !dbg !1226
  %switch = icmp ult i8 %.off, 2, !dbg !1226
  br i1 %switch, label %if.then1654, label %if.else1656, !dbg !1226

if.then1654:                                      ; preds = %land.lhs.true1646
  %add.ptr1655 = getelementptr inbounds i8* %p2.0, i64 3, !dbg !1228
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1655}, i64 0, metadata !610), !dbg !1228
  br label %while.body1642, !dbg !1228

if.else1656:                                      ; preds = %land.lhs.true1646, %while.body1642
  %add.ptr1657 = getelementptr inbounds i8* %p2.0, i64 6, !dbg !1229
  %cmp1658 = icmp ult i8* %add.ptr1657, %add.ptr, !dbg !1229
  br i1 %cmp1658, label %land.lhs.true1660, label %while.end1669, !dbg !1229

land.lhs.true1660:                                ; preds = %if.else1656
  %199 = load i8* %p2.0, align 1, !dbg !1229, !tbaa !714
  %cmp1662 = icmp eq i8 %199, 19, !dbg !1229
  br i1 %cmp1662, label %while.body1642, label %while.end1669, !dbg !1229

while.end1669:                                    ; preds = %if.else1656, %land.lhs.true1660
  %addconv3869 = add nsw i32 %add1635, 3, !dbg !1230
  %add.ptr1638.sum = sext i32 %addconv3869 to i64, !dbg !1230
  %add.ptr1671 = getelementptr inbounds i8* %p.0, i64 %add.ptr1638.sum, !dbg !1230
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1671}, i64 0, metadata !526), !dbg !1230
  store i8* %add.ptr1671, i8** %p1, align 8, !dbg !1230, !tbaa !722
  %cmp1672 = icmp eq i8* %p2.0, %add.ptr, !dbg !1231
  br i1 %cmp1672, label %if.then1674, label %if.else1676, !dbg !1231

if.then1674:                                      ; preds = %while.end1669
  store i8 17, i8* %p.0, align 1, !dbg !1232, !tbaa !714
  br label %sw.bb1903, !dbg !1234

if.else1676:                                      ; preds = %while.end1669
  %200 = load i8* %p2.0, align 1, !dbg !1235, !tbaa !714
  %cmp1678 = icmp eq i8 %200, 2, !dbg !1235
  br i1 %cmp1678, label %cond.false1696, label %lor.lhs.false1680, !dbg !1235

lor.lhs.false1680:                                ; preds = %if.else1676
  %bf.load1682 = load i8* %not_bol, align 8, !dbg !1235
  %tobool1685 = icmp slt i8 %bf.load1682, 0, !dbg !1235
  %cmp1688 = icmp eq i8 %200, 10, !dbg !1235
  %or.cond3908 = and i1 %tobool1685, %cmp1688, !dbg !1235
  br i1 %or.cond3908, label %cond.end1699, label %if.else1761, !dbg !1235

cond.false1696:                                   ; preds = %if.else1676
  %201 = load i8* %add.ptr1643, align 1, !dbg !1236, !tbaa !714
  %phitmp3873 = zext i8 %201 to i32, !dbg !1236
  br label %cond.end1699, !dbg !1236

cond.end1699:                                     ; preds = %lor.lhs.false1680, %cond.false1696
  %cond1700 = phi i32 [ %phitmp3873, %cond.false1696 ], [ 10, %lor.lhs.false1680 ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1237
  %add.ptr1671.sum4284 = add i64 %add.ptr1638.sum, 3, !dbg !1237
  %arrayidx1702 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4284, !dbg !1237
  %202 = load i8* %arrayidx1702, align 1, !dbg !1237, !tbaa !714
  %cmp1704 = icmp eq i8 %202, 2, !dbg !1237
  br i1 %cmp1704, label %land.lhs.true1706, label %if.else1714, !dbg !1237

land.lhs.true1706:                                ; preds = %cond.end1699
  %add.ptr1671.sum4287 = add i64 %add.ptr1638.sum, 5, !dbg !1237
  %arrayidx1707 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4287, !dbg !1237
  %203 = load i8* %arrayidx1707, align 1, !dbg !1237, !tbaa !714
  %conv1708 = zext i8 %203 to i32, !dbg !1237
  %cmp1710 = icmp eq i32 %conv1708, %cond1700, !dbg !1237
  br i1 %cmp1710, label %if.end1894, label %if.then1712, !dbg !1237

if.then1712:                                      ; preds = %land.lhs.true1706
  store i8 17, i8* %p.0, align 1, !dbg !1238, !tbaa !714
  br label %sw.bb1903, !dbg !1240

if.else1714:                                      ; preds = %cond.end1699
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1241
  %.off3920 = add i8 %202, -4, !dbg !1241
  %switch3921 = icmp ult i8 %.off3920, 2, !dbg !1241
  br i1 %switch3921, label %if.then1724, label %if.end1894, !dbg !1241

if.then1724:                                      ; preds = %if.else1714
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1242
  %cmp1728 = icmp eq i8 %202, 5, !dbg !1242
  %conv1729 = zext i1 %cmp1728 to i32, !dbg !1242
  call void @llvm.dbg.value(metadata !{i32 %conv1729}, i64 0, metadata !614), !dbg !1242
  %add.ptr1671.sum4285 = add i64 %add.ptr1638.sum, 4, !dbg !1243
  %arrayidx1731 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4285, !dbg !1243
  %204 = load i8* %arrayidx1731, align 1, !dbg !1243, !tbaa !714
  %mul1733 = shl i8 %204, 3, !dbg !1243
  %conv1735 = zext i8 %mul1733 to i32, !dbg !1243
  %cmp1736 = icmp ult i32 %cond1700, %conv1735, !dbg !1243
  br i1 %cmp1736, label %land.lhs.true1738, label %if.end1754, !dbg !1243

land.lhs.true1738:                                ; preds = %if.then1724
  %div1740 = lshr i32 %cond1700, 3, !dbg !1243
  %add1741 = add nsw i32 %div1740, 5, !dbg !1243
  %idxprom17423874 = zext i32 %add1741 to i64, !dbg !1243
  %add.ptr1671.sum4286 = add i64 %add.ptr1638.sum, %idxprom17423874, !dbg !1243
  %arrayidx1743 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4286, !dbg !1243
  %205 = load i8* %arrayidx1743, align 1, !dbg !1243, !tbaa !714
  %conv1744 = zext i8 %205 to i32, !dbg !1243
  %rem1746 = and i32 %cond1700, 7, !dbg !1243
  %shl1747 = shl i32 1, %rem1746, !dbg !1243
  %and1748 = and i32 %conv1744, %shl1747, !dbg !1243
  %not.tobool1749 = icmp ne i32 %and1748, 0, !dbg !1243
  %conv1729.lnot.ext17533934 = xor i1 %cmp1728, %not.tobool1749, !dbg !1243
  %conv1729.lnot.ext1753 = zext i1 %conv1729.lnot.ext17533934 to i32, !dbg !1243
  br label %if.end1754, !dbg !1243

if.end1754:                                       ; preds = %land.lhs.true1738, %if.then1724
  %not1725.0 = phi i32 [ %conv1729, %if.then1724 ], [ %conv1729.lnot.ext1753, %land.lhs.true1738 ]
  %tobool1755 = icmp eq i32 %not1725.0, 0, !dbg !1244
  br i1 %tobool1755, label %if.then1756, label %if.end1894, !dbg !1244

if.then1756:                                      ; preds = %if.end1754
  store i8 17, i8* %p.0, align 1, !dbg !1245, !tbaa !714
  br label %sw.bb1903, !dbg !1247

if.else1761:                                      ; preds = %lor.lhs.false1680
  %cmp1763 = icmp eq i8 %200, 4, !dbg !1248
  br i1 %cmp1763, label %if.then1765, label %if.end1894, !dbg !1248

if.then1765:                                      ; preds = %if.else1761
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1249
  %add.ptr1671.sum = add i64 %add.ptr1638.sum, 3, !dbg !1249
  %arrayidx1766 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum, !dbg !1249
  %206 = load i8* %arrayidx1766, align 1, !dbg !1249, !tbaa !714
  switch i8 %206, label %if.end1894 [
    i8 2, label %land.lhs.true1770
    i8 5, label %for.cond1800.preheader
    i8 4, label %for.cond1848.preheader
  ], !dbg !1249

land.lhs.true1770:                                ; preds = %if.then1765
  %arrayidx1771 = getelementptr inbounds i8* %p2.0, i64 1, !dbg !1249
  %207 = load i8* %arrayidx1771, align 1, !dbg !1249, !tbaa !714
  %conv1772 = zext i8 %207 to i32, !dbg !1249
  %mul1773 = shl nuw nsw i32 %conv1772, 3, !dbg !1249
  %add.ptr1671.sum3933 = add i64 %add.ptr1638.sum, 5, !dbg !1249
  %arrayidx1774 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum3933, !dbg !1249
  %208 = load i8* %arrayidx1774, align 1, !dbg !1249, !tbaa !714
  %conv1775 = zext i8 %208 to i32, !dbg !1249
  %cmp1776 = icmp ugt i32 %mul1773, %conv1775, !dbg !1249
  br i1 %cmp1776, label %land.lhs.true1778, label %if.then1792, !dbg !1249

land.lhs.true1778:                                ; preds = %land.lhs.true1770
  %div1781 = lshr i32 %conv1775, 3, !dbg !1249
  %add1782 = add nsw i32 %div1781, 2, !dbg !1249
  %idxprom17833871 = zext i32 %add1782 to i64, !dbg !1249
  %arrayidx1784 = getelementptr inbounds i8* %p2.0, i64 %idxprom17833871, !dbg !1249
  %209 = load i8* %arrayidx1784, align 1, !dbg !1249, !tbaa !714
  %conv1785 = zext i8 %209 to i32, !dbg !1249
  %rem1788 = and i32 %conv1775, 7, !dbg !1249
  %shl1789 = shl i32 1, %rem1788, !dbg !1249
  %and1790 = and i32 %conv1785, %shl1789, !dbg !1249
  %tobool1791 = icmp eq i32 %and1790, 0, !dbg !1249
  br i1 %tobool1791, label %if.then1792, label %if.else1794, !dbg !1249

if.then1792:                                      ; preds = %land.lhs.true1778, %land.lhs.true1770
  store i8 17, i8* %p.0, align 1, !dbg !1250, !tbaa !714
  br label %sw.bb1903, !dbg !1252

if.else1794:                                      ; preds = %land.lhs.true1778
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1253
  switch i8 %206, label %if.end1894 [
    i8 5, label %for.cond1800.preheader
    i8 4, label %for.cond1848.preheader
  ], !dbg !1253

for.cond1800.preheader:                           ; preds = %if.then1765, %if.else1794
  %arrayidx1801 = getelementptr inbounds i8* %p2.0, i64 1, !dbg !1254
  %210 = load i8* %arrayidx1801, align 1, !dbg !1254, !tbaa !714
  %cmp18033973 = icmp eq i8 %210, 0, !dbg !1254
  br i1 %cmp18033973, label %for.end1833, label %for.body1805.lr.ph, !dbg !1254

for.body1805.lr.ph:                               ; preds = %for.cond1800.preheader
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1256
  %add.ptr1671.sum4282 = add i64 %add.ptr1638.sum, 4, !dbg !1256
  %arrayidx1813 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4282, !dbg !1256
  br label %for.body1805, !dbg !1254

for.cond1848.preheader:                           ; preds = %if.then1765, %if.else1794
  %arrayidx1849 = getelementptr inbounds i8* %p2.0, i64 1, !dbg !1257
  %211 = load i8* %arrayidx1849, align 1, !dbg !1257, !tbaa !714
  %cmp18513968 = icmp eq i8 %211, 0, !dbg !1257
  br i1 %cmp18513968, label %for.end1876, label %land.rhs1853.lr.ph, !dbg !1257

land.rhs1853.lr.ph:                               ; preds = %for.cond1848.preheader
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1257
  %add.ptr1671.sum4279 = add i64 %add.ptr1638.sum, 4, !dbg !1257
  %arrayidx1854 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4279, !dbg !1257
  %212 = load i8* %arrayidx1854, align 1, !dbg !1257, !tbaa !714
  %conv1855 = zext i8 %212 to i32, !dbg !1257
  br label %land.rhs1853, !dbg !1257

for.body1805:                                     ; preds = %for.body1805.lr.ph, %for.inc1831
  %indvars.iv4162 = phi i64 [ 0, %for.body1805.lr.ph ], [ %indvars.iv.next4163, %for.inc1831 ]
  %idx.03974 = phi i32 [ 0, %for.body1805.lr.ph ], [ %inc1832, %for.inc1831 ]
  %213 = add nsw i64 %indvars.iv4162, 2, !dbg !1256
  %arrayidx1808 = getelementptr inbounds i8* %p2.0, i64 %213, !dbg !1256
  %214 = load i8* %arrayidx1808, align 1, !dbg !1256, !tbaa !714
  %conv1809 = zext i8 %214 to i32, !dbg !1256
  %cmp1810 = icmp eq i8 %214, 0, !dbg !1256
  br i1 %cmp1810, label %for.inc1831, label %lor.lhs.false1812, !dbg !1256

lor.lhs.false1812:                                ; preds = %for.body1805
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1256
  %215 = load i8* %arrayidx1813, align 1, !dbg !1256, !tbaa !714
  %conv1814 = zext i8 %215 to i32, !dbg !1256
  %216 = trunc i64 %indvars.iv4162 to i32, !dbg !1256
  %cmp1815 = icmp slt i32 %216, %conv1814, !dbg !1256
  br i1 %cmp1815, label %land.lhs.true1817, label %for.end1833, !dbg !1256

land.lhs.true1817:                                ; preds = %lor.lhs.false1812
  %217 = add nsw i64 %indvars.iv4162, 5, !dbg !1256
  %add.ptr1671.sum4283 = add i64 %add.ptr1638.sum, %217, !dbg !1256
  %arrayidx1824 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4283, !dbg !1256
  %218 = load i8* %arrayidx1824, align 1, !dbg !1256, !tbaa !714
  %conv1825 = zext i8 %218 to i32, !dbg !1256
  %neg = xor i32 %conv1825, -1, !dbg !1256
  %and1826 = and i32 %conv1809, %neg, !dbg !1256
  %cmp1827 = icmp eq i32 %and1826, 0, !dbg !1256
  br i1 %cmp1827, label %for.inc1831, label %for.end1833, !dbg !1256

for.inc1831:                                      ; preds = %for.body1805, %land.lhs.true1817
  %indvars.iv.next4163 = add i64 %indvars.iv4162, 1, !dbg !1254
  %inc1832 = add nsw i32 %idx.03974, 1, !dbg !1254
  call void @llvm.dbg.value(metadata !{i32 %inc1832}, i64 0, metadata !616), !dbg !1254
  %conv1802 = zext i8 %210 to i32, !dbg !1254
  %219 = trunc i64 %indvars.iv.next4163 to i32, !dbg !1254
  %cmp1803 = icmp slt i32 %219, %conv1802, !dbg !1254
  br i1 %cmp1803, label %for.body1805, label %for.end1833, !dbg !1254

for.end1833:                                      ; preds = %for.inc1831, %lor.lhs.false1812, %land.lhs.true1817, %for.cond1800.preheader
  %220 = phi i8 [ 0, %for.cond1800.preheader ], [ %210, %land.lhs.true1817 ], [ %210, %lor.lhs.false1812 ], [ %210, %for.inc1831 ]
  %idx.0.lcssa = phi i32 [ 0, %for.cond1800.preheader ], [ %idx.03974, %land.lhs.true1817 ], [ %idx.03974, %lor.lhs.false1812 ], [ %inc1832, %for.inc1831 ]
  %conv1835 = zext i8 %220 to i32, !dbg !1259
  %cmp1836 = icmp eq i32 %idx.0.lcssa, %conv1835, !dbg !1259
  br i1 %cmp1836, label %if.then1838, label %if.end1894, !dbg !1259

if.then1838:                                      ; preds = %for.end1833
  store i8 17, i8* %p.0, align 1, !dbg !1260, !tbaa !714
  br label %sw.bb1903, !dbg !1262

for.cond1848:                                     ; preds = %for.body1860
  %conv1850 = zext i8 %211 to i32, !dbg !1257
  %221 = trunc i64 %indvars.iv.next4158 to i32, !dbg !1257
  %cmp1851 = icmp slt i32 %221, %conv1850, !dbg !1257
  br i1 %cmp1851, label %land.rhs1853, label %for.end1876, !dbg !1257

land.rhs1853:                                     ; preds = %land.rhs1853.lr.ph, %for.cond1848
  %indvars.iv4157 = phi i64 [ 0, %land.rhs1853.lr.ph ], [ %indvars.iv.next4158, %for.cond1848 ]
  %idx1847.03969 = phi i32 [ 0, %land.rhs1853.lr.ph ], [ %inc1875, %for.cond1848 ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1257
  %222 = trunc i64 %indvars.iv4157 to i32, !dbg !1257
  %cmp1856 = icmp slt i32 %222, %conv1855, !dbg !1257
  br i1 %cmp1856, label %for.body1860, label %for.end1876

for.body1860:                                     ; preds = %land.rhs1853
  %223 = add nsw i64 %indvars.iv4157, 2, !dbg !1263
  %arrayidx1863 = getelementptr inbounds i8* %p2.0, i64 %223, !dbg !1263
  %224 = load i8* %arrayidx1863, align 1, !dbg !1263, !tbaa !714
  %225 = add nsw i64 %indvars.iv4157, 5, !dbg !1263
  %add.ptr1671.sum4281 = add i64 %add.ptr1638.sum, %225, !dbg !1263
  %arrayidx1867 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4281, !dbg !1263
  %226 = load i8* %arrayidx1867, align 1, !dbg !1263, !tbaa !714
  %and18693870 = and i8 %226, %224, !dbg !1263
  %cmp1870 = icmp eq i8 %and18693870, 0, !dbg !1263
  %indvars.iv.next4158 = add i64 %indvars.iv4157, 1, !dbg !1257
  %inc1875 = add nsw i32 %idx1847.03969, 1, !dbg !1264
  call void @llvm.dbg.value(metadata !{i32 %inc1875}, i64 0, metadata !619), !dbg !1264
  br i1 %cmp1870, label %for.cond1848, label %for.end1876, !dbg !1263

for.end1876:                                      ; preds = %for.cond1848, %for.body1860, %land.rhs1853, %for.cond1848.preheader
  %227 = phi i8 [ 0, %for.cond1848.preheader ], [ %211, %land.rhs1853 ], [ %211, %for.body1860 ], [ %211, %for.cond1848 ]
  %idx1847.0.lcssa = phi i32 [ 0, %for.cond1848.preheader ], [ %idx1847.03969, %land.rhs1853 ], [ %idx1847.03969, %for.body1860 ], [ %inc1875, %for.cond1848 ]
  %conv1878 = zext i8 %227 to i32, !dbg !1265
  %cmp1879 = icmp eq i32 %idx1847.0.lcssa, %conv1878, !dbg !1265
  br i1 %cmp1879, label %if.then1886, label %lor.lhs.false1881, !dbg !1265

lor.lhs.false1881:                                ; preds = %for.end1876
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1265
  %add.ptr1671.sum4280 = add i64 %add.ptr1638.sum, 4, !dbg !1265
  %arrayidx1882 = getelementptr inbounds i8* %p.0, i64 %add.ptr1671.sum4280, !dbg !1265
  %228 = load i8* %arrayidx1882, align 1, !dbg !1265, !tbaa !714
  %conv1883 = zext i8 %228 to i32, !dbg !1265
  %cmp1884 = icmp eq i32 %idx1847.0.lcssa, %conv1883, !dbg !1265
  br i1 %cmp1884, label %if.then1886, label %if.end1894, !dbg !1265

if.then1886:                                      ; preds = %lor.lhs.false1881, %for.end1876
  store i8 17, i8* %p.0, align 1, !dbg !1266, !tbaa !714
  br label %sw.bb1903, !dbg !1268

if.end1894:                                       ; preds = %if.then1765, %land.lhs.true1706, %if.else1714, %if.else1794, %if.end1754, %lor.lhs.false1881, %for.end1833, %if.else1761
  %.pr3929 = load i8* %p.0, align 1, !dbg !1269, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !533), !dbg !1270
  %cmp1898 = icmp eq i8 %.pr3929, 17, !dbg !1269
  br i1 %cmp1898, label %sw.bb1903, label %if.then1900, !dbg !1269

if.then1900:                                      ; preds = %if.end1894
  store i8 13, i8* %p.0, align 1, !dbg !1271, !tbaa !714
  br label %do.body1965, !dbg !1273

sw.bb1903:                                        ; preds = %if.then1674, %if.then1838, %if.then1886, %if.then1792, %if.then1712, %if.then1756, %if.end1894, %if.end587
  %dec1922 = add i32 %fail_stack.sroa.2.0, -3, !dbg !1274
  %idxprom1923 = zext i32 %dec1922 to i64, !dbg !1274
  %arrayidx1925 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom1923, !dbg !1274
  %integer1926 = bitcast %union.fail_stack_elt* %arrayidx1925 to i32*, !dbg !1274
  %229 = load i32* %integer1926, align 4, !dbg !1274, !tbaa !795
  call void @llvm.dbg.value(metadata !{i64 %conv1927}, i64 0, metadata !623), !dbg !1274
  %dec1929 = add i32 %fail_stack.sroa.2.0, -4, !dbg !1274
  %idxprom1930 = zext i32 %dec1929 to i64, !dbg !1274
  %arrayidx1932 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom1930, !dbg !1274
  %integer1933 = bitcast %union.fail_stack_elt* %arrayidx1932 to i32*, !dbg !1274
  %230 = load i32* %integer1933, align 4, !dbg !1274, !tbaa !795
  %conv1934 = sext i32 %230 to i64, !dbg !1274
  call void @llvm.dbg.value(metadata !{i64 %conv1934}, i64 0, metadata !621), !dbg !1274
  call void @llvm.dbg.value(metadata !{i64 %conv1927}, i64 0, metadata !626), !dbg !1275
  %cmp19363977 = icmp ult i32 %229, %230, !dbg !1275
  br i1 %cmp19363977, label %do.body1965, label %for.body1938.lr.ph, !dbg !1275

for.body1938.lr.ph:                               ; preds = %sw.bb1903
  %conv1927 = sext i32 %229 to i64, !dbg !1274
  br label %for.body1938, !dbg !1275

for.body1938:                                     ; preds = %for.body1938.lr.ph, %for.body1938
  %this_reg1904.03979 = phi i64 [ %conv1927, %for.body1938.lr.ph ], [ %dec1961, %for.body1938 ]
  %fail_stack.sroa.2.43978 = phi i32 [ %dec1929, %for.body1938.lr.ph ], [ %dec1954, %for.body1938 ]
  %dec1942 = add i32 %fail_stack.sroa.2.43978, -1, !dbg !1277
  %idxprom1943 = zext i32 %dec1942 to i64, !dbg !1277
  %231 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom1943, i32 0, !dbg !1277
  %232 = load i8** %231, align 8, !dbg !1277
  %233 = getelementptr inbounds %union.register_info_type* %reg_info_dummy.0, i64 %this_reg1904.03979, i32 0, i32 0, !dbg !1277
  store i8* %232, i8** %233, align 8, !dbg !1277
  %dec1947 = add i32 %fail_stack.sroa.2.43978, -2, !dbg !1277
  %idxprom1948 = zext i32 %dec1947 to i64, !dbg !1277
  %pointer1951 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom1948, i32 0, !dbg !1277
  %234 = load i8** %pointer1951, align 8, !dbg !1277, !tbaa !722
  %arrayidx1952 = getelementptr inbounds i8** %reg_dummy.0, i64 %this_reg1904.03979, !dbg !1277
  store i8* %234, i8** %arrayidx1952, align 8, !dbg !1277, !tbaa !722
  %dec1954 = add i32 %fail_stack.sroa.2.43978, -3, !dbg !1277
  %idxprom1955 = zext i32 %dec1954 to i64, !dbg !1277
  %pointer1958 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %idxprom1955, i32 0, !dbg !1277
  %235 = load i8** %pointer1958, align 8, !dbg !1277, !tbaa !722
  store i8* %235, i8** %arrayidx1952, align 8, !dbg !1277, !tbaa !722
  %dec1961 = add i64 %this_reg1904.03979, -1, !dbg !1275
  call void @llvm.dbg.value(metadata !{i64 %dec1961}, i64 0, metadata !626), !dbg !1275
  %cmp1936 = icmp ult i64 %dec1961, %conv1934, !dbg !1275
  br i1 %cmp1936, label %do.body1965, label %for.body1938, !dbg !1275

do.body1965:                                      ; preds = %sw.bb1903, %for.body1938, %if.end587, %if.then1900, %for.end2049, %if.then2226, %if.end587
  %fail_stack.sroa.0.6 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %if.then2226 ], [ %fail_stack.sroa.0.7, %for.end2049 ], [ %fail_stack.sroa.0.0, %if.end587 ], [ %fail_stack.sroa.0.0, %if.end587 ], [ %fail_stack.sroa.0.0, %if.then1900 ], [ %fail_stack.sroa.0.0, %for.body1938 ], [ %fail_stack.sroa.0.0, %sw.bb1903 ]
  %set_regs_matched_done.4 = phi i32 [ %set_regs_matched_done.0, %if.then2226 ], [ %set_regs_matched_done.0, %for.end2049 ], [ %set_regs_matched_done.0, %if.end587 ], [ %set_regs_matched_done.0, %if.end587 ], [ %set_regs_matched_done.0, %if.then1900 ], [ 0, %for.body1938 ], [ 0, %sw.bb1903 ]
  %fail_stack.sroa.1.7 = phi i32 [ %fail_stack.sroa.1.0, %if.then2226 ], [ %fail_stack.sroa.1.8, %for.end2049 ], [ %fail_stack.sroa.1.0, %if.end587 ], [ %fail_stack.sroa.1.0, %if.end587 ], [ %fail_stack.sroa.1.0, %if.then1900 ], [ %fail_stack.sroa.1.0, %for.body1938 ], [ %fail_stack.sroa.1.0, %sw.bb1903 ]
  %fail_stack.sroa.2.5 = phi i32 [ %fail_stack.sroa.2.0, %if.then2226 ], [ %inc2071, %for.end2049 ], [ %fail_stack.sroa.2.0, %if.end587 ], [ %fail_stack.sroa.2.0, %if.end587 ], [ %fail_stack.sroa.2.0, %if.then1900 ], [ %dec1954, %for.body1938 ], [ %dec1929, %sw.bb1903 ]
  %236 = load i8* %incdec.ptr, align 1, !dbg !1279, !tbaa !714
  %conv1966 = zext i8 %236 to i32, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32 %conv1966}, i64 0, metadata !525), !dbg !1279
  %add.ptr1968 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1279
  %237 = load i8* %add.ptr1968, align 1, !dbg !1279, !tbaa !714
  %conv1969 = sext i8 %237 to i32, !dbg !1279
  %shl1970 = shl nsw i32 %conv1969, 8, !dbg !1279
  %add1971 = or i32 %shl1970, %conv1966, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32 %add1971}, i64 0, metadata !525), !dbg !1279
  %addconv3932 = add nsw i32 %add1971, 3, !dbg !1282
  %incdec.ptr.sum3931 = sext i32 %addconv3932 to i64, !dbg !1282
  %add.ptr1978 = getelementptr inbounds i8* %p.0, i64 %incdec.ptr.sum3931, !dbg !1282
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1978}, i64 0, metadata !533), !dbg !1282
  br label %for.cond167, !dbg !1283

while.cond1984:                                   ; preds = %while.cond1984.preheader, %cond.false2001
  %fail_stack.sroa.0.7 = phi %union.fail_stack_elt* [ %240, %cond.false2001 ], [ %fail_stack.sroa.0.0, %while.cond1984.preheader ]
  %fail_stack.sroa.1.8 = phi i32 [ %fail_stack.sroa.1.8.shl2004, %cond.false2001 ], [ %fail_stack.sroa.1.0, %while.cond1984.preheader ]
  %sub1987 = sub i32 %fail_stack.sroa.1.8, %fail_stack.sroa.2.0, !dbg !1040
  %conv1988 = zext i32 %sub1987 to i64, !dbg !1040
  %cmp1993 = icmp ult i64 %conv1988, %add1992, !dbg !1040
  br i1 %cmp1993, label %while.body1995, label %for.cond2022.loopexit, !dbg !1040

while.body1995:                                   ; preds = %while.cond1984
  %238 = load i32* @re_max_failures, align 4, !dbg !1284, !tbaa !795
  %mul1997 = mul nsw i32 %238, 19, !dbg !1284
  %cmp1998 = icmp ugt i32 %fail_stack.sroa.1.8, %mul1997, !dbg !1284
  br i1 %cmp1998, label %return, label %cond.false2001, !dbg !1284

cond.false2001:                                   ; preds = %while.body1995
  %239 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.7 to i8*, !dbg !1284
  %shl2004 = shl i32 %fail_stack.sroa.1.8, 1, !dbg !1284
  %conv2005 = zext i32 %shl2004 to i64, !dbg !1284
  %mul2006 = shl nuw nsw i64 %conv2005, 3, !dbg !1284
  %call2007 = call i8* @realloc(i8* %239, i64 %mul2006) #7, !dbg !1284
  %240 = bitcast i8* %call2007 to %union.fail_stack_elt*, !dbg !1284
  %cmp2010 = icmp eq i8* %call2007, null, !dbg !1284
  %fail_stack.sroa.1.8.shl2004 = select i1 %cmp2010, i32 %fail_stack.sroa.1.8, i32 %shl2004, !dbg !1284
  br i1 %cmp2010, label %return, label %while.cond1984, !dbg !1284

for.cond2022.loopexit:                            ; preds = %while.cond1984
  %cmp20233963 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1286
  br i1 %cmp20233963, label %for.end2049, label %for.body2025, !dbg !1286

for.body2025:                                     ; preds = %for.cond2022.loopexit, %for.body2025
  %this_reg1983.03965 = phi i64 [ %inc2048, %for.body2025 ], [ %lowest_active_reg.0, %for.cond2022.loopexit ]
  %fail_stack.sroa.2.63964 = phi i32 [ %inc2041, %for.body2025 ], [ %fail_stack.sroa.2.0, %for.cond2022.loopexit ]
  %arrayidx2026 = getelementptr inbounds i8** %regstart.0, i64 %this_reg1983.03965, !dbg !1288
  %241 = load i8** %arrayidx2026, align 8, !dbg !1288, !tbaa !722
  %inc2028 = add i32 %fail_stack.sroa.2.63964, 1, !dbg !1288
  %idxprom2029 = zext i32 %fail_stack.sroa.2.63964 to i64, !dbg !1288
  %pointer2032 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2029, i32 0, !dbg !1288
  store i8* %241, i8** %pointer2032, align 8, !dbg !1288, !tbaa !722
  %arrayidx2033 = getelementptr inbounds i8** %regend.0, i64 %this_reg1983.03965, !dbg !1288
  %242 = load i8** %arrayidx2033, align 8, !dbg !1288, !tbaa !722
  %inc2035 = add i32 %fail_stack.sroa.2.63964, 2, !dbg !1288
  %idxprom2036 = zext i32 %inc2028 to i64, !dbg !1288
  %pointer2039 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2036, i32 0, !dbg !1288
  store i8* %242, i8** %pointer2039, align 8, !dbg !1288, !tbaa !722
  %inc2041 = add i32 %fail_stack.sroa.2.63964, 3, !dbg !1288
  %idxprom2042 = zext i32 %inc2035 to i64, !dbg !1288
  %243 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg1983.03965, i32 0, i32 0, !dbg !1288
  %244 = load i8** %243, align 8, !dbg !1288
  %245 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2042, i32 0, !dbg !1288
  store i8* %244, i8** %245, align 8, !dbg !1288
  %inc2048 = add i64 %this_reg1983.03965, 1, !dbg !1286
  %cmp2023 = icmp ugt i64 %inc2048, %highest_active_reg.0, !dbg !1286
  br i1 %cmp2023, label %for.end2049, label %for.body2025, !dbg !1286

for.end2049:                                      ; preds = %for.body2025, %for.cond2022.loopexit
  %fail_stack.sroa.2.6.lcssa = phi i32 [ %fail_stack.sroa.2.0, %for.cond2022.loopexit ], [ %inc2041, %for.body2025 ]
  %conv2050 = trunc i64 %lowest_active_reg.0 to i32, !dbg !1040
  %inc2052 = add i32 %fail_stack.sroa.2.6.lcssa, 1, !dbg !1040
  %idxprom2053 = zext i32 %fail_stack.sroa.2.6.lcssa to i64, !dbg !1040
  %arrayidx2055 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2053, !dbg !1040
  %integer2056 = bitcast %union.fail_stack_elt* %arrayidx2055 to i32*, !dbg !1040
  store i32 %conv2050, i32* %integer2056, align 4, !dbg !1040, !tbaa !795
  %conv2057 = trunc i64 %highest_active_reg.0 to i32, !dbg !1040
  %inc2059 = add i32 %fail_stack.sroa.2.6.lcssa, 2, !dbg !1040
  %idxprom2060 = zext i32 %inc2052 to i64, !dbg !1040
  %arrayidx2062 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2060, !dbg !1040
  %integer2063 = bitcast %union.fail_stack_elt* %arrayidx2062 to i32*, !dbg !1040
  store i32 %conv2057, i32* %integer2063, align 4, !dbg !1040, !tbaa !795
  %inc2065 = add i32 %fail_stack.sroa.2.6.lcssa, 3, !dbg !1040
  %idxprom2066 = zext i32 %inc2059 to i64, !dbg !1040
  %pointer2069 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2066, i32 0, !dbg !1040
  store i8* null, i8** %pointer2069, align 8, !dbg !1040, !tbaa !722
  %inc2071 = add i32 %fail_stack.sroa.2.6.lcssa, 4, !dbg !1040
  %idxprom2072 = zext i32 %inc2065 to i64, !dbg !1040
  %pointer2075 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %idxprom2072, i32 0, !dbg !1040
  store i8* null, i8** %pointer2075, align 8, !dbg !1040, !tbaa !722
  br label %do.body1965, !dbg !1290

while.cond2082:                                   ; preds = %while.cond2082.preheader, %cond.false2099
  %fail_stack.sroa.0.8 = phi %union.fail_stack_elt* [ %248, %cond.false2099 ], [ %fail_stack.sroa.0.0, %while.cond2082.preheader ]
  %fail_stack.sroa.1.10 = phi i32 [ %fail_stack.sroa.1.10.shl2102, %cond.false2099 ], [ %fail_stack.sroa.1.0, %while.cond2082.preheader ]
  %sub2085 = sub i32 %fail_stack.sroa.1.10, %fail_stack.sroa.2.0, !dbg !1041
  %conv2086 = zext i32 %sub2085 to i64, !dbg !1041
  %cmp2091 = icmp ult i64 %conv2086, %add2090, !dbg !1041
  br i1 %cmp2091, label %while.body2093, label %for.cond2120.loopexit, !dbg !1041

while.body2093:                                   ; preds = %while.cond2082
  %246 = load i32* @re_max_failures, align 4, !dbg !1291, !tbaa !795
  %mul2095 = mul nsw i32 %246, 19, !dbg !1291
  %cmp2096 = icmp ugt i32 %fail_stack.sroa.1.10, %mul2095, !dbg !1291
  br i1 %cmp2096, label %return, label %cond.false2099, !dbg !1291

cond.false2099:                                   ; preds = %while.body2093
  %247 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.8 to i8*, !dbg !1291
  %shl2102 = shl i32 %fail_stack.sroa.1.10, 1, !dbg !1291
  %conv2103 = zext i32 %shl2102 to i64, !dbg !1291
  %mul2104 = shl nuw nsw i64 %conv2103, 3, !dbg !1291
  %call2105 = call i8* @realloc(i8* %247, i64 %mul2104) #7, !dbg !1291
  %248 = bitcast i8* %call2105 to %union.fail_stack_elt*, !dbg !1291
  %cmp2108 = icmp eq i8* %call2105, null, !dbg !1291
  %fail_stack.sroa.1.10.shl2102 = select i1 %cmp2108, i32 %fail_stack.sroa.1.10, i32 %shl2102, !dbg !1291
  br i1 %cmp2108, label %return, label %while.cond2082, !dbg !1291

for.cond2120.loopexit:                            ; preds = %while.cond2082
  %cmp21213957 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1293
  br i1 %cmp21213957, label %for.end2147, label %for.body2123, !dbg !1293

for.body2123:                                     ; preds = %for.cond2120.loopexit, %for.body2123
  %this_reg2081.03959 = phi i64 [ %inc2146, %for.body2123 ], [ %lowest_active_reg.0, %for.cond2120.loopexit ]
  %fail_stack.sroa.2.73958 = phi i32 [ %inc2139, %for.body2123 ], [ %fail_stack.sroa.2.0, %for.cond2120.loopexit ]
  %arrayidx2124 = getelementptr inbounds i8** %regstart.0, i64 %this_reg2081.03959, !dbg !1295
  %249 = load i8** %arrayidx2124, align 8, !dbg !1295, !tbaa !722
  %inc2126 = add i32 %fail_stack.sroa.2.73958, 1, !dbg !1295
  %idxprom2127 = zext i32 %fail_stack.sroa.2.73958 to i64, !dbg !1295
  %pointer2130 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2127, i32 0, !dbg !1295
  store i8* %249, i8** %pointer2130, align 8, !dbg !1295, !tbaa !722
  %arrayidx2131 = getelementptr inbounds i8** %regend.0, i64 %this_reg2081.03959, !dbg !1295
  %250 = load i8** %arrayidx2131, align 8, !dbg !1295, !tbaa !722
  %inc2133 = add i32 %fail_stack.sroa.2.73958, 2, !dbg !1295
  %idxprom2134 = zext i32 %inc2126 to i64, !dbg !1295
  %pointer2137 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2134, i32 0, !dbg !1295
  store i8* %250, i8** %pointer2137, align 8, !dbg !1295, !tbaa !722
  %inc2139 = add i32 %fail_stack.sroa.2.73958, 3, !dbg !1295
  %idxprom2140 = zext i32 %inc2133 to i64, !dbg !1295
  %251 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg2081.03959, i32 0, i32 0, !dbg !1295
  %252 = load i8** %251, align 8, !dbg !1295
  %253 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2140, i32 0, !dbg !1295
  store i8* %252, i8** %253, align 8, !dbg !1295
  %inc2146 = add i64 %this_reg2081.03959, 1, !dbg !1293
  %cmp2121 = icmp ugt i64 %inc2146, %highest_active_reg.0, !dbg !1293
  br i1 %cmp2121, label %for.end2147, label %for.body2123, !dbg !1293

for.end2147:                                      ; preds = %for.body2123, %for.cond2120.loopexit
  %fail_stack.sroa.2.7.lcssa = phi i32 [ %fail_stack.sroa.2.0, %for.cond2120.loopexit ], [ %inc2139, %for.body2123 ]
  %conv2148 = trunc i64 %lowest_active_reg.0 to i32, !dbg !1041
  %inc2150 = add i32 %fail_stack.sroa.2.7.lcssa, 1, !dbg !1041
  %idxprom2151 = zext i32 %fail_stack.sroa.2.7.lcssa to i64, !dbg !1041
  %arrayidx2153 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2151, !dbg !1041
  %integer2154 = bitcast %union.fail_stack_elt* %arrayidx2153 to i32*, !dbg !1041
  store i32 %conv2148, i32* %integer2154, align 4, !dbg !1041, !tbaa !795
  %conv2155 = trunc i64 %highest_active_reg.0 to i32, !dbg !1041
  %inc2157 = add i32 %fail_stack.sroa.2.7.lcssa, 2, !dbg !1041
  %idxprom2158 = zext i32 %inc2150 to i64, !dbg !1041
  %arrayidx2160 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2158, !dbg !1041
  %integer2161 = bitcast %union.fail_stack_elt* %arrayidx2160 to i32*, !dbg !1041
  store i32 %conv2155, i32* %integer2161, align 4, !dbg !1041, !tbaa !795
  %inc2163 = add i32 %fail_stack.sroa.2.7.lcssa, 3, !dbg !1041
  %idxprom2164 = zext i32 %inc2157 to i64, !dbg !1041
  %pointer2167 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2164, i32 0, !dbg !1041
  store i8* null, i8** %pointer2167, align 8, !dbg !1041, !tbaa !722
  %inc2169 = add i32 %fail_stack.sroa.2.7.lcssa, 4, !dbg !1041
  %idxprom2170 = zext i32 %inc2163 to i64, !dbg !1041
  %pointer2173 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %idxprom2170, i32 0, !dbg !1041
  store i8* null, i8** %pointer2173, align 8, !dbg !1041, !tbaa !722
  br label %for.cond167, !dbg !1297

do.body2177:                                      ; preds = %if.end587
  %add.ptr2178 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1298
  %254 = load i8* %add.ptr2178, align 1, !dbg !1298, !tbaa !714
  %conv2179 = zext i8 %254 to i32, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32 %conv2179}, i64 0, metadata !525), !dbg !1298
  %add.ptr2182 = getelementptr inbounds i8* %p.0, i64 4, !dbg !1298
  %255 = load i8* %add.ptr2182, align 1, !dbg !1298, !tbaa !714
  %conv2183 = sext i8 %255 to i32, !dbg !1298
  %shl2184 = shl nsw i32 %conv2183, 8, !dbg !1298
  %add2185 = or i32 %shl2184, %conv2179, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32 %add2185}, i64 0, metadata !525), !dbg !1298
  %cmp2188 = icmp sgt i32 %add2185, 0, !dbg !1300
  br i1 %cmp2188, label %if.then2190, label %if.else2205, !dbg !1300

if.then2190:                                      ; preds = %do.body2177
  %dec2191 = add nsw i32 %add2185, -1, !dbg !1301
  call void @llvm.dbg.value(metadata !{i32 %dec2191}, i64 0, metadata !525), !dbg !1301
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2178}, i64 0, metadata !533), !dbg !1303
  %conv2196 = trunc i32 %dec2191 to i8, !dbg !1304
  store i8 %conv2196, i8* %add.ptr2178, align 1, !dbg !1304, !tbaa !714
  %shr3868 = lshr i32 %dec2191, 8, !dbg !1304
  %conv2198 = trunc i32 %shr3868 to i8, !dbg !1304
  store i8 %conv2198, i8* %add.ptr2182, align 1, !dbg !1304, !tbaa !714
  %add.ptr2202 = getelementptr inbounds i8* %p.0, i64 5, !dbg !1307
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2202}, i64 0, metadata !533), !dbg !1307
  br label %for.cond167, !dbg !1308

if.else2205:                                      ; preds = %do.body2177
  %cmp2206 = icmp eq i32 %add2185, 0, !dbg !1309
  br i1 %cmp2206, label %if.then2208, label %for.cond167, !dbg !1309

if.then2208:                                      ; preds = %if.else2205
  store i8 0, i8* %add.ptr2178, align 1, !dbg !1310, !tbaa !714
  store i8 0, i8* %add.ptr2182, align 1, !dbg !1312, !tbaa !714
  br label %do.body1484, !dbg !1313

do.body2214:                                      ; preds = %if.end587
  %add.ptr2215 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1314
  %256 = load i8* %add.ptr2215, align 1, !dbg !1314, !tbaa !714
  %conv2216 = zext i8 %256 to i32, !dbg !1314
  call void @llvm.dbg.value(metadata !{i32 %conv2216}, i64 0, metadata !525), !dbg !1314
  %add.ptr2219 = getelementptr inbounds i8* %p.0, i64 4, !dbg !1314
  %257 = load i8* %add.ptr2219, align 1, !dbg !1314, !tbaa !714
  %conv2220 = sext i8 %257 to i32, !dbg !1314
  %shl2221 = shl nsw i32 %conv2220, 8, !dbg !1314
  %add2222 = or i32 %shl2221, %conv2216, !dbg !1314
  call void @llvm.dbg.value(metadata !{i32 %add2222}, i64 0, metadata !525), !dbg !1314
  %tobool2225 = icmp eq i32 %add2222, 0, !dbg !1316
  br i1 %tobool2225, label %if.else2239, label %if.then2226, !dbg !1316

if.then2226:                                      ; preds = %do.body2214
  %dec2227 = add nsw i32 %add2222, -1, !dbg !1317
  call void @llvm.dbg.value(metadata !{i32 %dec2227}, i64 0, metadata !525), !dbg !1317
  %conv2230 = trunc i32 %dec2227 to i8, !dbg !1319
  store i8 %conv2230, i8* %add.ptr2215, align 1, !dbg !1319, !tbaa !714
  %shr22333865 = lshr i32 %dec2227, 8, !dbg !1319
  %conv2234 = trunc i32 %shr22333865 to i8, !dbg !1319
  store i8 %conv2234, i8* %add.ptr2219, align 1, !dbg !1319, !tbaa !714
  br label %do.body1965, !dbg !1321

if.else2239:                                      ; preds = %do.body2214
  %add.ptr2240 = getelementptr inbounds i8* %p.0, i64 5, !dbg !1322
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2240}, i64 0, metadata !533), !dbg !1322
  br label %for.cond167, !dbg !1323

do.body2244:                                      ; preds = %if.end587
  %258 = load i8* %incdec.ptr, align 1, !dbg !1324, !tbaa !714
  %conv2245 = zext i8 %258 to i32, !dbg !1324
  call void @llvm.dbg.value(metadata !{i32 %conv2245}, i64 0, metadata !525), !dbg !1324
  %add.ptr2247 = getelementptr inbounds i8* %p.0, i64 2, !dbg !1324
  %259 = load i8* %add.ptr2247, align 1, !dbg !1324, !tbaa !714
  %conv2248 = sext i8 %259 to i32, !dbg !1324
  %shl2249 = shl nsw i32 %conv2248, 8, !dbg !1324
  %add2250 = or i32 %shl2249, %conv2245, !dbg !1324
  call void @llvm.dbg.value(metadata !{i32 %add2250}, i64 0, metadata !525), !dbg !1324
  %add.ptr2253 = getelementptr inbounds i8* %p.0, i64 3, !dbg !1328
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2253}, i64 0, metadata !533), !dbg !1328
  %addconv3864 = add nsw i32 %add2250, 3, !dbg !1329
  %add.ptr2253.sum = sext i32 %addconv3864 to i64, !dbg !1329
  %add.ptr2257 = getelementptr inbounds i8* %p.0, i64 %add.ptr2253.sum, !dbg !1329
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2257}, i64 0, metadata !526), !dbg !1329
  store i8* %add.ptr2257, i8** %p1, align 8, !dbg !1329, !tbaa !722
  %260 = load i8* %add.ptr2253, align 1, !dbg !1330, !tbaa !714
  %add.ptr2262 = getelementptr inbounds i8* %p.0, i64 4, !dbg !1330
  %261 = load i8* %add.ptr2262, align 1, !dbg !1330, !tbaa !714
  %add.ptr2268 = getelementptr inbounds i8* %p.0, i64 5, !dbg !1333
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2268}, i64 0, metadata !533), !dbg !1333
  store i8 %260, i8* %add.ptr2257, align 1, !dbg !1334, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1334
  %262 = load i8** %p1, align 8, !dbg !1334, !tbaa !722
  %arrayidx2277 = getelementptr inbounds i8* %262, i64 1, !dbg !1334
  store i8 %261, i8* %arrayidx2277, align 1, !dbg !1334, !tbaa !714
  br label %for.cond167, !dbg !1336

sw.bb2280:                                        ; preds = %if.end587
  %cmp2286 = icmp eq i8* %d.0, %cond1295, !dbg !1337
  %or.cond3911 = or i1 %cmp2286, %tobool1299, !dbg !1337
  %cmp2291 = icmp eq i8* %d.0, %add.ptr140, !dbg !1337
  %or.cond3912 = or i1 %or.cond3911, %cmp2291, !dbg !1337
  br i1 %or.cond3912, label %for.cond167, label %if.end2294, !dbg !1337

if.end2294:                                       ; preds = %sw.bb2280
  %add.ptr2295 = getelementptr inbounds i8* %d.0, i64 -1, !dbg !1338
  %cmp2296 = icmp eq i8* %add.ptr2295, %add.ptr138, !dbg !1338
  br i1 %cmp2296, label %cond.end2313, label %cond.false2300, !dbg !1338

cond.false2300:                                   ; preds = %if.end2294
  %cmp2303 = icmp eq i8* %d.0, %string2.string1, !dbg !1338
  %add.ptr2330.add.ptr2295 = select i1 %cmp2303, i8* %add.ptr2330, i8* %add.ptr2295, !dbg !1338
  br label %cond.end2313, !dbg !1338

cond.end2313:                                     ; preds = %cond.false2300, %if.end2294
  %.sink2821.sink.in = phi i8* [ %string2.string1, %if.end2294 ], [ %add.ptr2330.add.ptr2295, %cond.false2300 ]
  %.sink2821.sink = load i8* %.sink2821.sink.in, align 1, !dbg !1338
  %idxprom2315 = sext i8 %.sink2821.sink to i64, !dbg !1338
  %arrayidx2316 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2315, !dbg !1338
  %263 = load i8* %arrayidx2316, align 1, !dbg !1338, !tbaa !714
  %cmp2318 = icmp eq i8 %263, 1, !dbg !1338
  %cmp2321 = icmp eq i8* %d.0, %add.ptr138, !dbg !970
  br i1 %cmp2321, label %cond.end2336, label %cond.false2325, !dbg !970

cond.false2325:                                   ; preds = %cond.end2313
  %cmp2327 = icmp eq i8* %d.0, %add.ptr2326, !dbg !970
  %add.ptr2330.d.0 = select i1 %cmp2327, i8* %add.ptr2330, i8* %d.0, !dbg !970
  br label %cond.end2336, !dbg !970

cond.end2336:                                     ; preds = %cond.false2325, %cond.end2313
  %.sink2822.sink.in = phi i8* [ %string2.string1, %cond.end2313 ], [ %add.ptr2330.d.0, %cond.false2325 ]
  %.sink2822.sink = load i8* %.sink2822.sink.in, align 1, !dbg !970
  %idxprom2338 = sext i8 %.sink2822.sink to i64, !dbg !970
  %arrayidx2339 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2338, !dbg !970
  %264 = load i8* %arrayidx2339, align 1, !dbg !970, !tbaa !714
  %cmp2341 = icmp eq i8 %264, 1, !dbg !970
  %cmp2346 = xor i1 %cmp2318, %cmp2341, !dbg !1339
  br i1 %cmp2346, label %for.cond167, label %fail.preheader, !dbg !1339

sw.bb2350:                                        ; preds = %if.end587
  %cmp2358 = icmp eq i8* %d.0, %cond1295, !dbg !1340
  %or.cond3913 = or i1 %cmp2358, %tobool1299, !dbg !1340
  %cmp2363 = icmp eq i8* %d.0, %add.ptr140, !dbg !1340
  %or.cond3914 = or i1 %or.cond3913, %cmp2363, !dbg !1340
  br i1 %or.cond3914, label %fail.preheader, label %if.end2366, !dbg !1340

if.end2366:                                       ; preds = %sw.bb2350
  %add.ptr2367 = getelementptr inbounds i8* %d.0, i64 -1, !dbg !1341
  %cmp2368 = icmp eq i8* %add.ptr2367, %add.ptr138, !dbg !1341
  br i1 %cmp2368, label %cond.end2385, label %cond.false2372, !dbg !1341

cond.false2372:                                   ; preds = %if.end2366
  %cmp2375 = icmp eq i8* %d.0, %string2.string1, !dbg !1341
  %add.ptr2330.add.ptr2367 = select i1 %cmp2375, i8* %add.ptr2330, i8* %add.ptr2367, !dbg !1341
  br label %cond.end2385, !dbg !1341

cond.end2385:                                     ; preds = %cond.false2372, %if.end2366
  %.sink2823.sink.in = phi i8* [ %string2.string1, %if.end2366 ], [ %add.ptr2330.add.ptr2367, %cond.false2372 ]
  %.sink2823.sink = load i8* %.sink2823.sink.in, align 1, !dbg !1341
  %idxprom2387 = sext i8 %.sink2823.sink to i64, !dbg !1341
  %arrayidx2388 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2387, !dbg !1341
  %265 = load i8* %arrayidx2388, align 1, !dbg !1341, !tbaa !714
  %cmp2390 = icmp eq i8 %265, 1, !dbg !1341
  %cmp2393 = icmp eq i8* %d.0, %add.ptr138, !dbg !1342
  br i1 %cmp2393, label %cond.end2408, label %cond.false2397, !dbg !1342

cond.false2397:                                   ; preds = %cond.end2385
  %cmp2399 = icmp eq i8* %d.0, %add.ptr2326, !dbg !1342
  %add.ptr2330.d.04296 = select i1 %cmp2399, i8* %add.ptr2330, i8* %d.0, !dbg !1342
  br label %cond.end2408, !dbg !1342

cond.end2408:                                     ; preds = %cond.false2397, %cond.end2385
  %.sink2824.sink.in = phi i8* [ %string2.string1, %cond.end2385 ], [ %add.ptr2330.d.04296, %cond.false2397 ]
  %.sink2824.sink = load i8* %.sink2824.sink.in, align 1, !dbg !1342
  %idxprom2410 = sext i8 %.sink2824.sink to i64, !dbg !1342
  %arrayidx2411 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2410, !dbg !1342
  %266 = load i8* %arrayidx2411, align 1, !dbg !1342, !tbaa !714
  %cmp2413 = icmp eq i8 %266, 1, !dbg !1342
  %cmp2418 = xor i1 %cmp2390, %cmp2413, !dbg !1343
  br i1 %cmp2418, label %fail.preheader, label %for.cond167, !dbg !1343

sw.bb2422:                                        ; preds = %if.end587
  %cmp2423 = icmp eq i8* %d.0, %add.ptr138, !dbg !1344
  br i1 %cmp2423, label %cond.end2438, label %cond.false2427, !dbg !1344

cond.false2427:                                   ; preds = %sw.bb2422
  %cmp2429 = icmp eq i8* %d.0, %add.ptr2326, !dbg !1344
  %add.ptr2330.d.04297 = select i1 %cmp2429, i8* %add.ptr2330, i8* %d.0, !dbg !1344
  br label %cond.end2438, !dbg !1344

cond.end2438:                                     ; preds = %cond.false2427, %sw.bb2422
  %.sink2825.sink.in = phi i8* [ %string2.string1, %sw.bb2422 ], [ %add.ptr2330.d.04297, %cond.false2427 ]
  %.sink2825.sink = load i8* %.sink2825.sink.in, align 1, !dbg !1344
  %idxprom2440 = sext i8 %.sink2825.sink to i64, !dbg !1344
  %arrayidx2441 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2440, !dbg !1344
  %267 = load i8* %arrayidx2441, align 1, !dbg !1344, !tbaa !714
  %cmp2443 = icmp eq i8 %267, 1, !dbg !1344
  br i1 %cmp2443, label %land.lhs.true2445, label %fail.preheader, !dbg !1344

land.lhs.true2445:                                ; preds = %cond.end2438
  %cmp2451 = icmp eq i8* %d.0, %cond1295, !dbg !1344
  %or.cond3915 = or i1 %cmp2451, %tobool1299, !dbg !1344
  br i1 %or.cond3915, label %for.cond167, label %lor.lhs.false2455, !dbg !1344

lor.lhs.false2455:                                ; preds = %land.lhs.true2445
  %add.ptr2456 = getelementptr inbounds i8* %d.0, i64 -1, !dbg !1344
  %cmp2457 = icmp eq i8* %add.ptr2456, %add.ptr138, !dbg !1344
  br i1 %cmp2457, label %cond.end2474, label %cond.false2461, !dbg !1344

cond.false2461:                                   ; preds = %lor.lhs.false2455
  %cmp2464 = icmp eq i8* %d.0, %string2.string1, !dbg !1344
  %add.ptr2330.add.ptr2456 = select i1 %cmp2464, i8* %add.ptr2330, i8* %add.ptr2456, !dbg !1344
  br label %cond.end2474, !dbg !1344

cond.end2474:                                     ; preds = %cond.false2461, %lor.lhs.false2455
  %.sink2826.sink.in = phi i8* [ %string2.string1, %lor.lhs.false2455 ], [ %add.ptr2330.add.ptr2456, %cond.false2461 ]
  %.sink2826.sink = load i8* %.sink2826.sink.in, align 1, !dbg !1344
  %idxprom2476 = sext i8 %.sink2826.sink to i64, !dbg !1344
  %arrayidx2477 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2476, !dbg !1344
  %268 = load i8* %arrayidx2477, align 1, !dbg !1344, !tbaa !714
  %cmp2479 = icmp eq i8 %268, 1, !dbg !1344
  br i1 %cmp2479, label %fail.preheader, label %for.cond167, !dbg !1344

sw.bb2483:                                        ; preds = %if.end587
  %cmp2489 = icmp eq i8* %d.0, %cond1295, !dbg !1345
  %or.cond3916 = or i1 %cmp2489, %tobool1299, !dbg !1345
  br i1 %or.cond3916, label %fail.preheader, label %land.lhs.true2493, !dbg !1345

land.lhs.true2493:                                ; preds = %sw.bb2483
  %add.ptr2494 = getelementptr inbounds i8* %d.0, i64 -1, !dbg !1345
  %cmp2495 = icmp eq i8* %add.ptr2494, %add.ptr138, !dbg !1345
  br i1 %cmp2495, label %cond.end2512, label %cond.false2499, !dbg !1345

cond.false2499:                                   ; preds = %land.lhs.true2493
  %cmp2502 = icmp eq i8* %d.0, %string2.string1, !dbg !1345
  %add.ptr2330.add.ptr2494 = select i1 %cmp2502, i8* %add.ptr2330, i8* %add.ptr2494, !dbg !1345
  br label %cond.end2512, !dbg !1345

cond.end2512:                                     ; preds = %cond.false2499, %land.lhs.true2493
  %.sink2827.sink.in = phi i8* [ %string2.string1, %land.lhs.true2493 ], [ %add.ptr2330.add.ptr2494, %cond.false2499 ]
  %.sink2827.sink = load i8* %.sink2827.sink.in, align 1, !dbg !1345
  %idxprom2514 = sext i8 %.sink2827.sink to i64, !dbg !1345
  %arrayidx2515 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2514, !dbg !1345
  %269 = load i8* %arrayidx2515, align 1, !dbg !1345, !tbaa !714
  %cmp2517 = icmp eq i8 %269, 1, !dbg !1345
  br i1 %cmp2517, label %land.lhs.true2519, label %fail.preheader, !dbg !1345

land.lhs.true2519:                                ; preds = %cond.end2512
  %cmp2520 = icmp eq i8* %d.0, %add.ptr138, !dbg !1345
  br i1 %cmp2520, label %cond.end2535, label %cond.false2524, !dbg !1345

cond.false2524:                                   ; preds = %land.lhs.true2519
  %cmp2526 = icmp eq i8* %d.0, %add.ptr2326, !dbg !1345
  %add.ptr2330.d.04298 = select i1 %cmp2526, i8* %add.ptr2330, i8* %d.0, !dbg !1345
  br label %cond.end2535, !dbg !1345

cond.end2535:                                     ; preds = %cond.false2524, %land.lhs.true2519
  %.sink2828.sink.in = phi i8* [ %string2.string1, %land.lhs.true2519 ], [ %add.ptr2330.d.04298, %cond.false2524 ]
  %.sink2828.sink = load i8* %.sink2828.sink.in, align 1, !dbg !1345
  %idxprom2537 = sext i8 %.sink2828.sink to i64, !dbg !1345
  %arrayidx2538 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2537, !dbg !1345
  %270 = load i8* %arrayidx2538, align 1, !dbg !1345, !tbaa !714
  %cmp2540 = icmp ne i8 %270, 1, !dbg !1345
  %cmp2543 = icmp eq i8* %d.0, %add.ptr140, !dbg !1345
  %or.cond3917 = or i1 %cmp2540, %cmp2543, !dbg !1345
  br i1 %or.cond3917, label %for.cond167, label %fail.preheader, !dbg !1345

while.cond2548:                                   ; preds = %if.end587, %while.body2551
  %dend.9 = phi i8* [ %end_match_2.0, %while.body2551 ], [ %dend.0, %if.end587 ]
  %d.9 = phi i8* [ %string2.string1, %while.body2551 ], [ %d.0, %if.end587 ]
  %cmp2549 = icmp eq i8* %d.9, %dend.9, !dbg !1346
  br i1 %cmp2549, label %while.body2551, label %while.end2556, !dbg !1346

while.body2551:                                   ; preds = %while.cond2548
  %cmp2552 = icmp eq i8* %dend.9, %end_match_2.0, !dbg !1347
  br i1 %cmp2552, label %fail.preheader, label %while.cond2548, !dbg !1347

while.end2556:                                    ; preds = %while.cond2548
  %cmp2557 = icmp eq i8* %d.9, %add.ptr138, !dbg !1349
  br i1 %cmp2557, label %cond.end2572, label %cond.false2561, !dbg !1349

cond.false2561:                                   ; preds = %while.end2556
  %cmp2563 = icmp eq i8* %d.9, %add.ptr2326, !dbg !1349
  %add.ptr2330.d.9 = select i1 %cmp2563, i8* %add.ptr2330, i8* %d.9, !dbg !1349
  br label %cond.end2572, !dbg !1349

cond.end2572:                                     ; preds = %cond.false2561, %while.end2556
  %.sink2829.sink.in = phi i8* [ %string2.string1, %while.end2556 ], [ %add.ptr2330.d.9, %cond.false2561 ]
  %.sink2829.sink = load i8* %.sink2829.sink.in, align 1, !dbg !1349
  %idxprom2574 = sext i8 %.sink2829.sink to i64, !dbg !1349
  %arrayidx2575 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2574, !dbg !1349
  %271 = load i8* %arrayidx2575, align 1, !dbg !1349, !tbaa !714
  %cmp2577 = icmp eq i8 %271, 1, !dbg !1349
  br i1 %cmp2577, label %do.body2581, label %fail.preheader, !dbg !1349

do.body2581:                                      ; preds = %cond.end2572
  %tobool2582 = icmp eq i32 %set_regs_matched_done.0, 0, !dbg !1350
  br i1 %tobool2582, label %for.cond2585.preheader, label %do.end2604, !dbg !1350

for.cond2585.preheader:                           ; preds = %do.body2581
  %cmp25863953 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1351
  br i1 %cmp25863953, label %do.end2604, label %for.body2588, !dbg !1351

for.body2588:                                     ; preds = %for.cond2585.preheader, %for.body2588
  %r2584.03954 = phi i64 [ %inc2600, %for.body2588 ], [ %lowest_active_reg.0, %for.cond2585.preheader ]
  %arrayidx2589 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r2584.03954, !dbg !1353
  %272 = bitcast %union.register_info_type* %arrayidx2589 to i8*, !dbg !1353
  %bf.load2591 = load i8* %272, align 4, !dbg !1353
  %bf.set2598 = or i8 %bf.load2591, 24, !dbg !1353
  store i8 %bf.set2598, i8* %272, align 4, !dbg !1353
  %inc2600 = add i64 %r2584.03954, 1, !dbg !1351
  call void @llvm.dbg.value(metadata !{i64 %inc2600}, i64 0, metadata !643), !dbg !1351
  %cmp2586 = icmp ugt i64 %inc2600, %highest_active_reg.0, !dbg !1351
  br i1 %cmp2586, label %do.end2604, label %for.body2588, !dbg !1351

do.end2604:                                       ; preds = %for.cond2585.preheader, %for.body2588, %do.body2581
  %set_regs_matched_done.5 = phi i32 [ %set_regs_matched_done.0, %do.body2581 ], [ 1, %for.body2588 ], [ 1, %for.cond2585.preheader ]
  %incdec.ptr2605 = getelementptr inbounds i8* %d.9, i64 1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2605}, i64 0, metadata !531), !dbg !1355
  br label %for.cond167, !dbg !1356

while.cond2607:                                   ; preds = %if.end587, %while.body2610
  %dend.10 = phi i8* [ %end_match_2.0, %while.body2610 ], [ %dend.0, %if.end587 ]
  %d.10 = phi i8* [ %string2.string1, %while.body2610 ], [ %d.0, %if.end587 ]
  %cmp2608 = icmp eq i8* %d.10, %dend.10, !dbg !1357
  br i1 %cmp2608, label %while.body2610, label %while.end2615, !dbg !1357

while.body2610:                                   ; preds = %while.cond2607
  %cmp2611 = icmp eq i8* %dend.10, %end_match_2.0, !dbg !1358
  br i1 %cmp2611, label %fail.preheader, label %while.cond2607, !dbg !1358

while.end2615:                                    ; preds = %while.cond2607
  %cmp2616 = icmp eq i8* %d.10, %add.ptr138, !dbg !1360
  br i1 %cmp2616, label %cond.end2631, label %cond.false2620, !dbg !1360

cond.false2620:                                   ; preds = %while.end2615
  %cmp2622 = icmp eq i8* %d.10, %add.ptr2326, !dbg !1360
  %add.ptr2330.d.10 = select i1 %cmp2622, i8* %add.ptr2330, i8* %d.10, !dbg !1360
  br label %cond.end2631, !dbg !1360

cond.end2631:                                     ; preds = %cond.false2620, %while.end2615
  %.sink2830.sink.in = phi i8* [ %string2.string1, %while.end2615 ], [ %add.ptr2330.d.10, %cond.false2620 ]
  %.sink2830.sink = load i8* %.sink2830.sink.in, align 1, !dbg !1360
  %idxprom2633 = sext i8 %.sink2830.sink to i64, !dbg !1360
  %arrayidx2634 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %idxprom2633, !dbg !1360
  %273 = load i8* %arrayidx2634, align 1, !dbg !1360, !tbaa !714
  %cmp2636 = icmp eq i8 %273, 1, !dbg !1360
  br i1 %cmp2636, label %fail.preheader, label %do.body2640, !dbg !1360

do.body2640:                                      ; preds = %cond.end2631
  %tobool2641 = icmp eq i32 %set_regs_matched_done.0, 0, !dbg !1361
  br i1 %tobool2641, label %for.cond2644.preheader, label %do.end2663, !dbg !1361

for.cond2644.preheader:                           ; preds = %do.body2640
  %cmp26453948 = icmp ugt i64 %lowest_active_reg.0, %highest_active_reg.0, !dbg !1362
  br i1 %cmp26453948, label %do.end2663, label %for.body2647, !dbg !1362

for.body2647:                                     ; preds = %for.cond2644.preheader, %for.body2647
  %r2643.03949 = phi i64 [ %inc2659, %for.body2647 ], [ %lowest_active_reg.0, %for.cond2644.preheader ]
  %arrayidx2648 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r2643.03949, !dbg !1364
  %274 = bitcast %union.register_info_type* %arrayidx2648 to i8*, !dbg !1364
  %bf.load2650 = load i8* %274, align 4, !dbg !1364
  %bf.set2657 = or i8 %bf.load2650, 24, !dbg !1364
  store i8 %bf.set2657, i8* %274, align 4, !dbg !1364
  %inc2659 = add i64 %r2643.03949, 1, !dbg !1362
  call void @llvm.dbg.value(metadata !{i64 %inc2659}, i64 0, metadata !646), !dbg !1362
  %cmp2645 = icmp ugt i64 %inc2659, %highest_active_reg.0, !dbg !1362
  br i1 %cmp2645, label %do.end2663, label %for.body2647, !dbg !1362

do.end2663:                                       ; preds = %for.cond2644.preheader, %for.body2647, %do.body2640
  %set_regs_matched_done.6 = phi i32 [ %set_regs_matched_done.0, %do.body2640 ], [ 1, %for.body2647 ], [ 1, %for.cond2644.preheader ]
  %incdec.ptr2664 = getelementptr inbounds i8* %d.10, i64 1, !dbg !1366
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2664}, i64 0, metadata !531), !dbg !1366
  br label %for.cond167, !dbg !1367

sw.default2665:                                   ; preds = %if.end587
  call void @abort() #8, !dbg !1368
  unreachable, !dbg !1368

fail.preheader:                                   ; preds = %for.cond206.preheader, %for.body210, %while.body619, %while.end624, %while.body, %while.end, %while.body665, %while.body736, %cond.false1255, %while.body.i, %while.body1229, %while.body2551, %while.body2610, %for.end1117, %cond.end696, %cond.end680, %lor.lhs.false1157, %sw.bb1150, %if.else1308, %land.lhs.true1313, %if.else1332, %land.lhs.true1343, %sw.bb1364, %cond.end2336, %sw.bb2350, %cond.end2408, %cond.end2474, %cond.end2438, %cond.end2512, %sw.bb2483, %cond.end2572, %cond.end2631, %if.then1324, %if.then1300, %if.end771, %if.then200, %sw.bb1352, %cond.end2535
  %fail_stack.sroa.0.9.ph = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %cond.end2535 ], [ %fail_stack.sroa.0.0, %sw.bb1352 ], [ %fail_stack.sroa.0.0, %if.then200 ], [ %fail_stack.sroa.0.0, %if.end771 ], [ %fail_stack.sroa.0.0, %if.then1300 ], [ %fail_stack.sroa.0.0, %if.then1324 ], [ %fail_stack.sroa.0.0, %cond.end2631 ], [ %fail_stack.sroa.0.0, %cond.end2572 ], [ %fail_stack.sroa.0.0, %sw.bb2483 ], [ %fail_stack.sroa.0.0, %cond.end2512 ], [ %fail_stack.sroa.0.0, %cond.end2438 ], [ %fail_stack.sroa.0.0, %cond.end2474 ], [ %fail_stack.sroa.0.0, %cond.end2408 ], [ %fail_stack.sroa.0.0, %sw.bb2350 ], [ %fail_stack.sroa.0.0, %cond.end2336 ], [ %fail_stack.sroa.0.0, %sw.bb1364 ], [ %fail_stack.sroa.0.0, %land.lhs.true1343 ], [ %fail_stack.sroa.0.0, %if.else1332 ], [ %fail_stack.sroa.0.0, %land.lhs.true1313 ], [ %fail_stack.sroa.0.0, %if.else1308 ], [ %fail_stack.sroa.0.0, %sw.bb1150 ], [ %fail_stack.sroa.0.0, %lor.lhs.false1157 ], [ %fail_stack.sroa.0.0, %cond.end680 ], [ %fail_stack.sroa.0.0, %cond.end696 ], [ %fail_stack.sroa.0.3, %for.end1117 ], [ %fail_stack.sroa.0.0, %while.body2610 ], [ %fail_stack.sroa.0.0, %while.body2551 ], [ %fail_stack.sroa.0.0, %while.body1229 ], [ %fail_stack.sroa.0.0, %while.body.i ], [ %fail_stack.sroa.0.0, %cond.false1255 ], [ %fail_stack.sroa.0.0, %while.body736 ], [ %fail_stack.sroa.0.0, %while.body665 ], [ %fail_stack.sroa.0.0, %while.end ], [ %fail_stack.sroa.0.0, %while.body ], [ %fail_stack.sroa.0.0, %while.end624 ], [ %fail_stack.sroa.0.0, %while.body619 ], [ %fail_stack.sroa.0.0, %for.body210 ], [ %fail_stack.sroa.0.0, %for.cond206.preheader ]
  %best_regs_set.1.ph = phi i32 [ %best_regs_set.0, %cond.end2535 ], [ %best_regs_set.0, %sw.bb1352 ], [ %best_regs_set.0, %if.then200 ], [ %best_regs_set.0, %if.end771 ], [ %best_regs_set.0, %if.then1300 ], [ %best_regs_set.0, %if.then1324 ], [ %best_regs_set.0, %cond.end2631 ], [ %best_regs_set.0, %cond.end2572 ], [ %best_regs_set.0, %sw.bb2483 ], [ %best_regs_set.0, %cond.end2512 ], [ %best_regs_set.0, %cond.end2438 ], [ %best_regs_set.0, %cond.end2474 ], [ %best_regs_set.0, %cond.end2408 ], [ %best_regs_set.0, %sw.bb2350 ], [ %best_regs_set.0, %cond.end2336 ], [ %best_regs_set.0, %sw.bb1364 ], [ %best_regs_set.0, %land.lhs.true1343 ], [ %best_regs_set.0, %if.else1332 ], [ %best_regs_set.0, %land.lhs.true1313 ], [ %best_regs_set.0, %if.else1308 ], [ %best_regs_set.0, %sw.bb1150 ], [ %best_regs_set.0, %lor.lhs.false1157 ], [ %best_regs_set.0, %cond.end680 ], [ %best_regs_set.0, %cond.end696 ], [ %best_regs_set.0, %for.end1117 ], [ %best_regs_set.0, %while.body2610 ], [ %best_regs_set.0, %while.body2551 ], [ %best_regs_set.0, %while.body1229 ], [ %best_regs_set.0, %while.body.i ], [ %best_regs_set.0, %cond.false1255 ], [ %best_regs_set.0, %while.body736 ], [ %best_regs_set.0, %while.body665 ], [ %best_regs_set.0, %while.end ], [ %best_regs_set.0, %while.body ], [ %best_regs_set.0, %while.end624 ], [ %best_regs_set.0, %while.body619 ], [ 1, %for.body210 ], [ 1, %for.cond206.preheader ]
  %match_end.2.ph = phi i8* [ %match_end.0, %cond.end2535 ], [ %match_end.0, %sw.bb1352 ], [ %match_end.0, %if.then200 ], [ %match_end.0, %if.end771 ], [ %match_end.0, %if.then1300 ], [ %match_end.0, %if.then1324 ], [ %match_end.0, %cond.end2631 ], [ %match_end.0, %cond.end2572 ], [ %match_end.0, %sw.bb2483 ], [ %match_end.0, %cond.end2512 ], [ %match_end.0, %cond.end2438 ], [ %match_end.0, %cond.end2474 ], [ %match_end.0, %cond.end2408 ], [ %match_end.0, %sw.bb2350 ], [ %match_end.0, %cond.end2336 ], [ %match_end.0, %sw.bb1364 ], [ %match_end.0, %land.lhs.true1343 ], [ %match_end.0, %if.else1332 ], [ %match_end.0, %land.lhs.true1313 ], [ %match_end.0, %if.else1308 ], [ %match_end.0, %sw.bb1150 ], [ %match_end.0, %lor.lhs.false1157 ], [ %match_end.0, %cond.end680 ], [ %match_end.0, %cond.end696 ], [ %match_end.0, %for.end1117 ], [ %match_end.0, %while.body2610 ], [ %match_end.0, %while.body2551 ], [ %match_end.0, %while.body1229 ], [ %match_end.0, %while.body.i ], [ %match_end.0, %cond.false1255 ], [ %match_end.0, %while.body736 ], [ %match_end.0, %while.body665 ], [ %match_end.0, %while.end ], [ %match_end.0, %while.body ], [ %match_end.0, %while.end624 ], [ %match_end.0, %while.body619 ], [ %d.0, %for.body210 ], [ %d.0, %for.cond206.preheader ]
  %fail_stack.sroa.1.12.ph = phi i32 [ %fail_stack.sroa.1.0, %cond.end2535 ], [ %fail_stack.sroa.1.0, %sw.bb1352 ], [ %fail_stack.sroa.1.0, %if.then200 ], [ %fail_stack.sroa.1.0, %if.end771 ], [ %fail_stack.sroa.1.0, %if.then1300 ], [ %fail_stack.sroa.1.0, %if.then1324 ], [ %fail_stack.sroa.1.0, %cond.end2631 ], [ %fail_stack.sroa.1.0, %cond.end2572 ], [ %fail_stack.sroa.1.0, %sw.bb2483 ], [ %fail_stack.sroa.1.0, %cond.end2512 ], [ %fail_stack.sroa.1.0, %cond.end2438 ], [ %fail_stack.sroa.1.0, %cond.end2474 ], [ %fail_stack.sroa.1.0, %cond.end2408 ], [ %fail_stack.sroa.1.0, %sw.bb2350 ], [ %fail_stack.sroa.1.0, %cond.end2336 ], [ %fail_stack.sroa.1.0, %sw.bb1364 ], [ %fail_stack.sroa.1.0, %land.lhs.true1343 ], [ %fail_stack.sroa.1.0, %if.else1332 ], [ %fail_stack.sroa.1.0, %land.lhs.true1313 ], [ %fail_stack.sroa.1.0, %if.else1308 ], [ %fail_stack.sroa.1.0, %sw.bb1150 ], [ %fail_stack.sroa.1.0, %lor.lhs.false1157 ], [ %fail_stack.sroa.1.0, %cond.end680 ], [ %fail_stack.sroa.1.0, %cond.end696 ], [ %fail_stack.sroa.1.1, %for.end1117 ], [ %fail_stack.sroa.1.0, %while.body2610 ], [ %fail_stack.sroa.1.0, %while.body2551 ], [ %fail_stack.sroa.1.0, %while.body1229 ], [ %fail_stack.sroa.1.0, %while.body.i ], [ %fail_stack.sroa.1.0, %cond.false1255 ], [ %fail_stack.sroa.1.0, %while.body736 ], [ %fail_stack.sroa.1.0, %while.body665 ], [ %fail_stack.sroa.1.0, %while.end ], [ %fail_stack.sroa.1.0, %while.body ], [ %fail_stack.sroa.1.0, %while.end624 ], [ %fail_stack.sroa.1.0, %while.body619 ], [ %fail_stack.sroa.1.0, %for.body210 ], [ %fail_stack.sroa.1.0, %for.cond206.preheader ]
  %fail_stack.sroa.2.8.ph = phi i32 [ %fail_stack.sroa.2.0, %cond.end2535 ], [ %fail_stack.sroa.2.0, %sw.bb1352 ], [ %fail_stack.sroa.2.0, %if.then200 ], [ %fail_stack.sroa.2.0, %if.end771 ], [ %fail_stack.sroa.2.0, %if.then1300 ], [ %fail_stack.sroa.2.0, %if.then1324 ], [ %fail_stack.sroa.2.0, %cond.end2631 ], [ %fail_stack.sroa.2.0, %cond.end2572 ], [ %fail_stack.sroa.2.0, %sw.bb2483 ], [ %fail_stack.sroa.2.0, %cond.end2512 ], [ %fail_stack.sroa.2.0, %cond.end2438 ], [ %fail_stack.sroa.2.0, %cond.end2474 ], [ %fail_stack.sroa.2.0, %cond.end2408 ], [ %fail_stack.sroa.2.0, %sw.bb2350 ], [ %fail_stack.sroa.2.0, %cond.end2336 ], [ %fail_stack.sroa.2.0, %sw.bb1364 ], [ %fail_stack.sroa.2.0, %land.lhs.true1343 ], [ %fail_stack.sroa.2.0, %if.else1332 ], [ %fail_stack.sroa.2.0, %land.lhs.true1313 ], [ %fail_stack.sroa.2.0, %if.else1308 ], [ %fail_stack.sroa.2.0, %sw.bb1150 ], [ %fail_stack.sroa.2.0, %lor.lhs.false1157 ], [ %fail_stack.sroa.2.0, %cond.end680 ], [ %fail_stack.sroa.2.0, %cond.end696 ], [ %inc1140, %for.end1117 ], [ %fail_stack.sroa.2.0, %while.body2610 ], [ %fail_stack.sroa.2.0, %while.body2551 ], [ %fail_stack.sroa.2.0, %while.body1229 ], [ %fail_stack.sroa.2.0, %while.body.i ], [ %fail_stack.sroa.2.0, %cond.false1255 ], [ %fail_stack.sroa.2.0, %while.body736 ], [ %fail_stack.sroa.2.0, %while.body665 ], [ %fail_stack.sroa.2.0, %while.end ], [ %fail_stack.sroa.2.0, %while.body ], [ %fail_stack.sroa.2.0, %while.end624 ], [ %fail_stack.sroa.2.0, %while.body619 ], [ %fail_stack.sroa.2.0, %for.body210 ], [ %fail_stack.sroa.2.0, %for.cond206.preheader ]
  %dend.11.ph = phi i8* [ %dend.0, %cond.end2535 ], [ %dend.0, %sw.bb1352 ], [ %dend.0, %if.then200 ], [ %dend.6, %if.end771 ], [ %dend.0, %if.then1300 ], [ %dend.0, %if.then1324 ], [ %dend.10, %cond.end2631 ], [ %dend.9, %cond.end2572 ], [ %dend.0, %sw.bb2483 ], [ %dend.0, %cond.end2512 ], [ %dend.0, %cond.end2438 ], [ %dend.0, %cond.end2474 ], [ %dend.0, %cond.end2408 ], [ %dend.0, %sw.bb2350 ], [ %dend.0, %cond.end2336 ], [ %dend.0, %sw.bb1364 ], [ %dend.0, %land.lhs.true1343 ], [ %dend.0, %if.else1332 ], [ %dend.0, %land.lhs.true1313 ], [ %dend.0, %if.else1308 ], [ %dend.0, %sw.bb1150 ], [ %dend.0, %lor.lhs.false1157 ], [ %dend.5, %cond.end680 ], [ %dend.5, %cond.end696 ], [ %dend.0, %for.end1117 ], [ %end_match_2.0, %while.body2610 ], [ %end_match_2.0, %while.body2551 ], [ %end_match_2.0, %while.body1229 ], [ %dend.8, %while.body.i ], [ %dend.8, %cond.false1255 ], [ %end_match_2.0, %while.body736 ], [ %end_match_2.0, %while.body665 ], [ %dend.2, %while.end ], [ %end_match_2.0, %while.body ], [ %dend.3, %while.end624 ], [ %end_match_2.0, %while.body619 ], [ %dend.0, %for.body210 ], [ %dend.0, %for.cond206.preheader ]
  %d.11.ph4075 = phi i8* [ %d.0, %cond.end2535 ], [ %d.0, %sw.bb1352 ], [ %d.0, %if.then200 ], [ %d.6, %if.end771 ], [ %d.0, %if.then1300 ], [ %add.ptr140, %if.then1324 ], [ %d.10, %cond.end2631 ], [ %d.9, %cond.end2572 ], [ %d.0, %sw.bb2483 ], [ %d.0, %cond.end2512 ], [ %d.0, %cond.end2438 ], [ %d.0, %cond.end2474 ], [ %d.0, %cond.end2408 ], [ %d.0, %sw.bb2350 ], [ %d.0, %cond.end2336 ], [ %d.0, %sw.bb1364 ], [ %d.0, %land.lhs.true1343 ], [ %d.0, %if.else1332 ], [ %d.0, %land.lhs.true1313 ], [ %d.0, %if.else1308 ], [ %d.0, %sw.bb1150 ], [ %d.0, %lor.lhs.false1157 ], [ %d.5, %cond.end680 ], [ %d.5, %cond.end696 ], [ %d.0, %for.end1117 ], [ %end_match_2.0, %while.body2610 ], [ %end_match_2.0, %while.body2551 ], [ %end_match_2.0, %while.body1229 ], [ %d.8, %while.body.i ], [ %d.8, %cond.false1255 ], [ %end_match_2.0, %while.body736 ], [ %end_match_2.0, %while.body665 ], [ %incdec.ptr602, %while.end ], [ %end_match_2.0, %while.body ], [ %incdec.ptr625, %while.end624 ], [ %end_match_2.0, %while.body619 ], [ %d.0, %for.body210 ], [ %d.0, %for.cond206.preheader ]
  %cmp26684077 = icmp eq i32 %fail_stack.sroa.2.8.ph, 0, !dbg !1369
  br i1 %cmp26684077, label %for.end2783, label %if.then2670, !dbg !1369

if.then2670:                                      ; preds = %fail.preheader, %fail.backedge
  %d.114079 = phi i8* [ %d.11., %fail.backedge ], [ %d.11.ph4075, %fail.preheader ]
  %fail_stack.sroa.2.84078 = phi i32 [ %fail_stack.sroa.2.9.lcssa, %fail.backedge ], [ %fail_stack.sroa.2.8.ph, %fail.preheader ]
  %dec2674 = add i32 %fail_stack.sroa.2.84078, -1, !dbg !1370
  %idxprom2675 = zext i32 %dec2674 to i64, !dbg !1370
  %pointer2678 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2675, i32 0, !dbg !1370
  %275 = load i8** %pointer2678, align 8, !dbg !1370, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8* %275}, i64 0, metadata !652), !dbg !1370
  %cmp2679 = icmp eq i8* %275, null, !dbg !1370
  call void @llvm.dbg.value(metadata !{i8* %275}, i64 0, metadata !531), !dbg !1370
  %d.11. = select i1 %cmp2679, i8* %d.114079, i8* %275, !dbg !1370
  %dec2684 = add i32 %fail_stack.sroa.2.84078, -2, !dbg !1370
  %idxprom2685 = zext i32 %dec2684 to i64, !dbg !1370
  %pointer2688 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2685, i32 0, !dbg !1370
  %276 = load i8** %pointer2688, align 8, !dbg !1370, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8* %276}, i64 0, metadata !533), !dbg !1370
  %dec2690 = add i32 %fail_stack.sroa.2.84078, -3, !dbg !1370
  %idxprom2691 = zext i32 %dec2690 to i64, !dbg !1370
  %arrayidx2693 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2691, !dbg !1370
  %integer2694 = bitcast %union.fail_stack_elt* %arrayidx2693 to i32*, !dbg !1370
  %277 = load i32* %integer2694, align 4, !dbg !1370, !tbaa !795
  %conv2695 = sext i32 %277 to i64, !dbg !1370
  call void @llvm.dbg.value(metadata !{i64 %conv2695}, i64 0, metadata !541), !dbg !1370
  %dec2697 = add i32 %fail_stack.sroa.2.84078, -4, !dbg !1370
  %idxprom2698 = zext i32 %dec2697 to i64, !dbg !1370
  %arrayidx2700 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2698, !dbg !1370
  %integer2701 = bitcast %union.fail_stack_elt* %arrayidx2700 to i32*, !dbg !1370
  %278 = load i32* %integer2701, align 4, !dbg !1370, !tbaa !795
  %conv2702 = sext i32 %278 to i64, !dbg !1370
  call void @llvm.dbg.value(metadata !{i64 %conv2702}, i64 0, metadata !539), !dbg !1370
  call void @llvm.dbg.value(metadata !{i64 %conv2695}, i64 0, metadata !649), !dbg !1371
  %cmp27044071 = icmp ult i32 %277, %278, !dbg !1371
  br i1 %cmp27044071, label %for.end2730, label %for.body2706, !dbg !1371

for.body2706:                                     ; preds = %if.then2670, %for.body2706
  %this_reg2671.04073 = phi i64 [ %dec2729, %for.body2706 ], [ %conv2695, %if.then2670 ]
  %fail_stack.sroa.2.94072 = phi i32 [ %dec2722, %for.body2706 ], [ %dec2697, %if.then2670 ]
  %dec2710 = add i32 %fail_stack.sroa.2.94072, -1, !dbg !1373
  %idxprom2711 = zext i32 %dec2710 to i64, !dbg !1373
  %279 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2711, i32 0, !dbg !1373
  %280 = load i8** %279, align 8, !dbg !1373
  %281 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg2671.04073, i32 0, i32 0, !dbg !1373
  store i8* %280, i8** %281, align 8, !dbg !1373
  %dec2715 = add i32 %fail_stack.sroa.2.94072, -2, !dbg !1373
  %idxprom2716 = zext i32 %dec2715 to i64, !dbg !1373
  %pointer2719 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2716, i32 0, !dbg !1373
  %282 = load i8** %pointer2719, align 8, !dbg !1373, !tbaa !722
  %arrayidx2720 = getelementptr inbounds i8** %regend.0, i64 %this_reg2671.04073, !dbg !1373
  store i8* %282, i8** %arrayidx2720, align 8, !dbg !1373, !tbaa !722
  %dec2722 = add i32 %fail_stack.sroa.2.94072, -3, !dbg !1373
  %idxprom2723 = zext i32 %dec2722 to i64, !dbg !1373
  %pointer2726 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph, i64 %idxprom2723, i32 0, !dbg !1373
  %283 = load i8** %pointer2726, align 8, !dbg !1373, !tbaa !722
  %arrayidx2727 = getelementptr inbounds i8** %regstart.0, i64 %this_reg2671.04073, !dbg !1373
  store i8* %283, i8** %arrayidx2727, align 8, !dbg !1373, !tbaa !722
  %dec2729 = add i64 %this_reg2671.04073, -1, !dbg !1371
  call void @llvm.dbg.value(metadata !{i64 %dec2729}, i64 0, metadata !649), !dbg !1371
  %cmp2704 = icmp ult i64 %dec2729, %conv2702, !dbg !1371
  br i1 %cmp2704, label %for.end2730, label %for.body2706, !dbg !1371

for.end2730:                                      ; preds = %for.body2706, %if.then2670
  %fail_stack.sroa.2.9.lcssa = phi i32 [ %dec2697, %if.then2670 ], [ %dec2722, %for.body2706 ]
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !563), !dbg !1370
  %tobool2731 = icmp eq i8* %276, null, !dbg !1375
  br i1 %tobool2731, label %fail.backedge, label %if.end2733, !dbg !1375

if.end2733:                                       ; preds = %for.end2730
  %cmp2734 = icmp ult i8* %276, %add.ptr, !dbg !1376
  br i1 %cmp2734, label %if.then2736, label %if.end2773, !dbg !1376

if.then2736:                                      ; preds = %if.end2733
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !653), !dbg !1377
  %284 = load i8* %276, align 1, !dbg !1378, !tbaa !714
  %conv2738 = zext i8 %284 to i32, !dbg !1378
  switch i32 %conv2738, label %if.end2773 [
    i32 22, label %sw.bb2739
    i32 18, label %sw.bb2740
    i32 17, label %sw.bb2740
    i32 13, label %sw.bb2740
  ], !dbg !1378

sw.bb2739:                                        ; preds = %if.then2736
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !653), !dbg !1379
  br label %sw.bb2740, !dbg !1379

sw.bb2740:                                        ; preds = %if.then2736, %if.then2736, %if.then2736, %sw.bb2739
  %is_a_jump_n2737.0 = phi i1 [ false, %if.then2736 ], [ false, %if.then2736 ], [ false, %if.then2736 ], [ true, %sw.bb2739 ]
  %add.ptr2741 = getelementptr inbounds i8* %276, i64 1, !dbg !1381
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2741}, i64 0, metadata !526), !dbg !1381
  %285 = load i8* %add.ptr2741, align 1, !dbg !1382, !tbaa !714
  %conv2744 = zext i8 %285 to i32, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32 %conv2744}, i64 0, metadata !525), !dbg !1382
  %add.ptr2746 = getelementptr inbounds i8* %276, i64 2, !dbg !1382
  %286 = load i8* %add.ptr2746, align 1, !dbg !1382, !tbaa !714
  %conv2747 = sext i8 %286 to i32, !dbg !1382
  %shl2748 = shl nsw i32 %conv2747, 8, !dbg !1382
  %add2749 = or i32 %shl2748, %conv2744, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32 %add2749}, i64 0, metadata !525), !dbg !1382
  %addconv = add nsw i32 %add2749, 3, !dbg !1385
  %add.ptr2752.sum = sext i32 %addconv to i64, !dbg !1385
  %add.ptr2756 = getelementptr inbounds i8* %276, i64 %add.ptr2752.sum, !dbg !1385
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2756}, i64 0, metadata !526), !dbg !1385
  store i8* %add.ptr2756, i8** %p1, align 8, !dbg !1385, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1386
  %287 = load i8* %add.ptr2756, align 1, !dbg !1386, !tbaa !714
  br i1 %is_a_jump_n2737.0, label %land.lhs.true2759, label %land.lhs.true2765, !dbg !1386

land.lhs.true2759:                                ; preds = %sw.bb2740
  %cmp2761 = icmp eq i8 %287, 21, !dbg !1386
  br i1 %cmp2761, label %fail.backedge, label %if.end2773, !dbg !1386

land.lhs.true2765:                                ; preds = %sw.bb2740
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !526), !dbg !1386
  %cmp2767 = icmp eq i8 %287, 15, !dbg !1386
  br i1 %cmp2767, label %fail.backedge, label %if.end2773, !dbg !1386

fail.backedge:                                    ; preds = %land.lhs.true2765, %land.lhs.true2759, %for.end2730
  %cmp2668 = icmp eq i32 %fail_stack.sroa.2.9.lcssa, 0, !dbg !1369
  br i1 %cmp2668, label %for.end2783, label %if.then2670, !dbg !1369

if.end2773:                                       ; preds = %land.lhs.true2759, %land.lhs.true2765, %if.then2736, %if.end2733
  %cmp2774 = icmp ult i8* %d.11., %string1., !dbg !1387
  %cmp2777 = icmp ugt i8* %d.11., %add.ptr138, !dbg !1387
  %or.cond3918 = or i1 %cmp2774, %cmp2777, !dbg !1387
  call void @llvm.dbg.value(metadata !{i8* %end_match_1.0}, i64 0, metadata !532), !dbg !1388
  %dend.11.end_match_1.0 = select i1 %or.cond3918, i8* %dend.11.ph, i8* %end_match_1.0, !dbg !1387
  br label %for.cond167, !dbg !1387

for.end2783:                                      ; preds = %fail.preheader, %fail.backedge
  %tobool2784 = icmp eq i32 %best_regs_set.1.ph, 0, !dbg !1389
  br i1 %tobool2784, label %do.body2787, label %restore_best_regs, !dbg !1389

do.body2787:                                      ; preds = %for.end2783
  %288 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.9.ph to i8*, !dbg !1390
  call void @free(i8* %288) #7, !dbg !1390
  %tobool2789 = icmp eq i8** %regstart.0, null, !dbg !1390
  br i1 %tobool2789, label %if.end2791, label %if.then2790, !dbg !1390

if.then2790:                                      ; preds = %do.body2787
  %289 = bitcast i8** %regstart.0 to i8*, !dbg !1390
  call void @free(i8* %289) #7, !dbg !1390
  br label %if.end2791, !dbg !1390

if.end2791:                                       ; preds = %do.body2787, %if.then2790
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !542), !dbg !1390
  %tobool2792 = icmp eq i8** %regend.0, null, !dbg !1390
  br i1 %tobool2792, label %if.end2794, label %if.then2793, !dbg !1390

if.then2793:                                      ; preds = %if.end2791
  %290 = bitcast i8** %regend.0 to i8*, !dbg !1390
  call void @free(i8* %290) #7, !dbg !1390
  br label %if.end2794, !dbg !1390

if.end2794:                                       ; preds = %if.end2791, %if.then2793
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !543), !dbg !1390
  %tobool2795 = icmp eq i8** %old_regstart.0, null, !dbg !1390
  br i1 %tobool2795, label %if.end2797, label %if.then2796, !dbg !1390

if.then2796:                                      ; preds = %if.end2794
  %291 = bitcast i8** %old_regstart.0 to i8*, !dbg !1390
  call void @free(i8* %291) #7, !dbg !1390
  br label %if.end2797, !dbg !1390

if.end2797:                                       ; preds = %if.end2794, %if.then2796
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !544), !dbg !1390
  %tobool2798 = icmp eq i8** %old_regend.0, null, !dbg !1390
  br i1 %tobool2798, label %if.end2800, label %if.then2799, !dbg !1390

if.then2799:                                      ; preds = %if.end2797
  %292 = bitcast i8** %old_regend.0 to i8*, !dbg !1390
  call void @free(i8* %292) #7, !dbg !1390
  br label %if.end2800, !dbg !1390

if.end2800:                                       ; preds = %if.end2797, %if.then2799
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !545), !dbg !1390
  %tobool2801 = icmp eq i8** %best_regstart.0, null, !dbg !1390
  br i1 %tobool2801, label %if.end2803, label %if.then2802, !dbg !1390

if.then2802:                                      ; preds = %if.end2800
  %293 = bitcast i8** %best_regstart.0 to i8*, !dbg !1390
  call void @free(i8* %293) #7, !dbg !1390
  br label %if.end2803, !dbg !1390

if.end2803:                                       ; preds = %if.end2800, %if.then2802
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !560), !dbg !1390
  %tobool2804 = icmp eq i8** %best_regend.0, null, !dbg !1390
  br i1 %tobool2804, label %if.end2806, label %if.then2805, !dbg !1390

if.then2805:                                      ; preds = %if.end2803
  %294 = bitcast i8** %best_regend.0 to i8*, !dbg !1390
  call void @free(i8* %294) #7, !dbg !1390
  br label %if.end2806, !dbg !1390

if.end2806:                                       ; preds = %if.end2803, %if.then2805
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !561), !dbg !1390
  %tobool2807 = icmp eq %union.register_info_type* %reg_info.0, null, !dbg !1390
  br i1 %tobool2807, label %if.end2809, label %if.then2808, !dbg !1390

if.then2808:                                      ; preds = %if.end2806
  %295 = bitcast %union.register_info_type* %reg_info.0 to i8*, !dbg !1390
  call void @free(i8* %295) #7, !dbg !1390
  br label %if.end2809, !dbg !1390

if.end2809:                                       ; preds = %if.end2806, %if.then2808
  call void @llvm.dbg.value(metadata !930, i64 0, metadata !546), !dbg !1390
  %tobool2810 = icmp eq i8** %reg_dummy.0, null, !dbg !1390
  br i1 %tobool2810, label %if.end2812, label %if.then2811, !dbg !1390

if.then2811:                                      ; preds = %if.end2809
  %296 = bitcast i8** %reg_dummy.0 to i8*, !dbg !1390
  call void @free(i8* %296) #7, !dbg !1390
  br label %if.end2812, !dbg !1390

if.end2812:                                       ; preds = %if.end2809, %if.then2811
  call void @llvm.dbg.value(metadata !929, i64 0, metadata !564), !dbg !1390
  %tobool2813 = icmp eq %union.register_info_type* %reg_info_dummy.0, null, !dbg !1390
  br i1 %tobool2813, label %return, label %if.then2814, !dbg !1390

if.then2814:                                      ; preds = %if.end2812
  %297 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*, !dbg !1390
  call void @free(i8* %297) #7, !dbg !1390
  br label %return, !dbg !1390

return:                                           ; preds = %cond.false1071, %while.body1065, %cond.false1403, %while.body1397, %cond.false1548, %while.body1542, %cond.false2001, %while.body1995, %cond.false2099, %while.body2093, %if.then2814, %if.end2812, %if.then584, %if.end582, %if.then391, %if.end389, %if.then318, %if.end316, %if.then102, %if.end100, %if.then66, %if.end64, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -2, %if.end64 ], [ -2, %if.then66 ], [ -1, %if.end100 ], [ -1, %if.then102 ], [ -2, %if.end316 ], [ -2, %if.then318 ], [ -2, %if.end389 ], [ -2, %if.then391 ], [ %conv556, %if.end582 ], [ %conv556, %if.then584 ], [ -1, %if.end2812 ], [ -1, %if.then2814 ], [ -2, %while.body2093 ], [ -2, %cond.false2099 ], [ -2, %while.body1995 ], [ -2, %cond.false2001 ], [ -2, %while.body1542 ], [ -2, %cond.false1548 ], [ -2, %while.body1397 ], [ -2, %cond.false1403 ], [ -2, %while.body1065 ], [ -2, %cond.false1071 ]
  ret i32 %retval.0, !dbg !1392
}

; Function Attrs: nounwind optsize uwtable
define i32 @re_match(%struct.re_pattern_buffer* nocapture %bufp, i8* %string, i32 %size, i32 %pos, %struct.re_registers* %regs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !197), !dbg !1393
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !198), !dbg !1394
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !199), !dbg !1395
  tail call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !200), !dbg !1395
  tail call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !201), !dbg !1396
  %call = tail call fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* null, i32 0, i8* %string, i32 %size, i32 %pos, %struct.re_registers* %regs, i32 %size) #9, !dbg !1397
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !202), !dbg !1397
  ret i32 %call, !dbg !1398
}

; Function Attrs: nounwind optsize uwtable
define i32 @re_match_2(%struct.re_pattern_buffer* nocapture %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !207), !dbg !1399
  tail call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !208), !dbg !1400
  tail call void @llvm.dbg.value(metadata !{i32 %size1}, i64 0, metadata !209), !dbg !1401
  tail call void @llvm.dbg.value(metadata !{i8* %string2}, i64 0, metadata !210), !dbg !1400
  tail call void @llvm.dbg.value(metadata !{i32 %size2}, i64 0, metadata !211), !dbg !1401
  tail call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !212), !dbg !1402
  tail call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !213), !dbg !1403
  tail call void @llvm.dbg.value(metadata !{i32 %stop}, i64 0, metadata !214), !dbg !1404
  %call = tail call fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #9, !dbg !1405
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !215), !dbg !1405
  ret i32 %call, !dbg !1406
}

; Function Attrs: nounwind optsize uwtable
define i8* @re_compile_pattern(i8* %pattern, i64 %length, %struct.re_pattern_buffer* nocapture %bufp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pattern}, i64 0, metadata !220), !dbg !1407
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !221), !dbg !1408
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !222), !dbg !1409
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !1410
  %bf.load = load i8* %regs_allocated, align 8, !dbg !1410
  %bf.clear4 = and i8 %bf.load, 105, !dbg !1411
  %bf.set = or i8 %bf.clear4, -128, !dbg !1411
  store i8 %bf.set, i8* %regs_allocated, align 8, !dbg !1411
  %0 = load i64* @re_syntax_options, align 8, !dbg !1412, !tbaa !713
  %call = tail call fastcc i32 @regex_compile(i8* %pattern, i64 %length, i64 %0, %struct.re_pattern_buffer* %bufp) #9, !dbg !1412
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !223), !dbg !1412
  %tobool = icmp eq i32 %call, 0, !dbg !1413
  br i1 %tobool, label %return, label %if.end, !dbg !1413

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %call to i64, !dbg !1414
  %arrayidx = getelementptr inbounds [17 x i64]* @re_error_msgid_idx, i64 0, i64 %idxprom, !dbg !1414
  %1 = load i64* %arrayidx, align 8, !dbg !1414, !tbaa !713
  %add.ptr = getelementptr inbounds [369 x i8]* @re_error_msgid, i64 0, i64 %1, !dbg !1414
  br label %return, !dbg !1414

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %add.ptr, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !1415
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @regex_compile(i8* %pattern, i64 %size, i64 %syntax, %struct.re_pattern_buffer* nocapture %bufp) #0 {
entry:
  %p = alloca i8*, align 8
  %str = alloca [7 x i8], align 1
  call void @llvm.dbg.value(metadata !{i8* %pattern}, i64 0, metadata !272), !dbg !1416
  call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !273), !dbg !1417
  call void @llvm.dbg.value(metadata !{i64 %syntax}, i64 0, metadata !274), !dbg !1418
  call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %bufp}, i64 0, metadata !275), !dbg !1419
  call void @llvm.dbg.declare(metadata !1420, metadata !280), !dbg !1421
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !299), !dbg !1422
  call void @llvm.dbg.value(metadata !{i8* %pattern}, i64 0, metadata !299), !dbg !1422
  store i8* %pattern, i8** %p, align 8, !dbg !1422, !tbaa !722
  %add.ptr = getelementptr inbounds i8* %pattern, i64 %size, !dbg !1423
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !300), !dbg !1423
  %translate1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 5, !dbg !1424
  %0 = load i8** %translate1, align 8, !dbg !1424, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !301), !dbg !1424
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !302), !dbg !1425
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !303), !dbg !1426
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !306), !dbg !1427
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !307), !dbg !1428
  %call = call noalias i8* @malloc(i64 1280) #7, !dbg !1429
  %1 = bitcast i8* %call to %struct.compile_stack_elt_t*, !dbg !1429
  %cmp = icmp eq i8* %call, null, !dbg !1430
  br i1 %cmp, label %return, label %if.end, !dbg !1430

if.end:                                           ; preds = %entry
  %syntax4 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 3, !dbg !1431
  store i64 %syntax, i64* %syntax4, align 8, !dbg !1431, !tbaa !713
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7, !dbg !1432
  %bf.load = load i8* %fastmap_accurate, align 8, !dbg !1432
  %bf.clear8 = and i8 %bf.load, -105, !dbg !1433
  store i8 %bf.clear8, i8* %fastmap_accurate, align 8, !dbg !1433
  %used = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2, !dbg !1434
  store i64 0, i64* %used, align 8, !dbg !1434, !tbaa !713
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 6, !dbg !1435
  store i64 0, i64* %re_nsub, align 8, !dbg !1435, !tbaa !713
  %.b.i = load i1* @init_syntax_once.done, align 1
  br i1 %.b.i, label %init_syntax_once.exit, label %if.end.i, !dbg !1436

if.end.i:                                         ; preds = %if.end
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false) #3, !dbg !1438
  call void @llvm.dbg.value(metadata !1439, i64 0, metadata !1440) #3, !dbg !1441
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 97), i8 1, i64 26, i32 1, i1 false) #3, !dbg !1443
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 65), i8 1, i64 26, i32 1, i1 false) #3, !dbg !1444
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 48), i8 1, i64 10, i32 16, i1 false) #3, !dbg !1446
  store i8 1, i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 95), align 1, !dbg !1448, !tbaa !714
  store i1 true, i1* @init_syntax_once.done, align 1
  br label %init_syntax_once.exit, !dbg !1449

init_syntax_once.exit:                            ; preds = %if.end, %if.end.i
  %allocated = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 1, !dbg !1450
  %2 = load i64* %allocated, align 8, !dbg !1450, !tbaa !713
  %cmp9 = icmp eq i64 %2, 0, !dbg !1450
  %buffer = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0, !dbg !1451
  %3 = load i8** %buffer, align 8, !dbg !1451, !tbaa !722
  br i1 %cmp9, label %if.then10, label %if.end24, !dbg !1450

if.then10:                                        ; preds = %init_syntax_once.exit
  %tobool = icmp eq i8* %3, null, !dbg !1451
  br i1 %tobool, label %if.else, label %if.then11, !dbg !1451

if.then11:                                        ; preds = %if.then10
  %call13 = call i8* @realloc(i8* %3, i64 32) #7, !dbg !1453
  br label %if.end17, !dbg !1455

if.else:                                          ; preds = %if.then10
  %call15 = call noalias i8* @malloc(i64 32) #7, !dbg !1456
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11
  %storemerge5150 = phi i8* [ %call15, %if.else ], [ %call13, %if.then11 ]
  store i8* %storemerge5150, i8** %buffer, align 8, !dbg !1453, !tbaa !722
  %tobool19 = icmp eq i8* %storemerge5150, null, !dbg !1458
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !1458

if.then20:                                        ; preds = %if.end17
  call void @free(i8* %call) #7, !dbg !1458
  br label %return, !dbg !1458

if.end22:                                         ; preds = %if.end17
  store i64 32, i64* %allocated, align 8, !dbg !1459, !tbaa !713
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1460
  %.pre = load i8** %p, align 8, !dbg !1460, !tbaa !722
  br label %if.end24, !dbg !1461

if.end24:                                         ; preds = %init_syntax_once.exit, %if.end22
  %4 = phi i8* [ %storemerge5150, %if.end22 ], [ %3, %init_syntax_once.exit ]
  %5 = phi i8* [ %.pre, %if.end22 ], [ %pattern, %init_syntax_once.exit ]
  %buffer25 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0, !dbg !1462
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !279), !dbg !1462
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !304), !dbg !1462
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1460
  %cmp266097 = icmp eq i8* %5, %add.ptr, !dbg !1460
  br i1 %cmp266097, label %if.end3654, label %if.end29.lr.ph, !dbg !1460

if.end29.lr.ph:                                   ; preds = %if.end24
  %tobool30 = icmp ne i8* %0, null, !dbg !1463
  %and3432 = and i64 %syntax, 2, !dbg !1465
  %tobool3433 = icmp eq i64 %and3432, 0, !dbg !1465
  %and3457 = and i64 %syntax, 512, !dbg !1465
  %tobool3458 = icmp eq i64 %and3457, 0, !dbg !1465
  %and3460 = and i64 %syntax, 4096, !dbg !1465
  %tobool3461 = icmp eq i64 %and3460, 0, !dbg !1465
  %and = and i64 %syntax, 8, !dbg !1466
  %tobool36 = icmp eq i64 %and, 0, !dbg !1466
  %and.i = and i64 %syntax, 8192, !dbg !1467
  %tobool.not.i = icmp ne i64 %and.i, 0, !dbg !1467
  %and13.i = and i64 %syntax, 32768, !dbg !1467
  %not.tobool14.i = icmp ne i64 %and13.i, 0, !dbg !1467
  %tobool.i = icmp eq i64 %and.i, 0, !dbg !1469
  %tobool19.i = icmp eq i64 %and13.i, 0, !dbg !1469
  %6 = and i64 %syntax, 1026, !dbg !1471
  %7 = icmp eq i64 %6, 0, !dbg !1471
  %and219 = and i64 %syntax, 32, !dbg !1472
  %tobool220 = icmp eq i64 %and219, 0, !dbg !1472
  %and224 = and i64 %syntax, 16, !dbg !1474
  %tobool225 = icmp eq i64 %and224, 0, !dbg !1474
  %arrayidx401 = getelementptr inbounds i8* %0, i64 46, !dbg !1475
  %arrayidx426 = getelementptr inbounds i8* %0, i64 10, !dbg !1475
  %and434 = and i64 %syntax, 64, !dbg !1475
  %and959 = and i64 %syntax, 256, !dbg !1476
  %tobool960 = icmp eq i64 %and959, 0, !dbg !1476
  %and985 = and i64 %syntax, 1, !dbg !1477
  %tobool986 = icmp ne i64 %and985, 0, !dbg !1477
  %and1108 = and i64 %syntax, 4, !dbg !1478
  %tobool1109 = icmp ne i64 %and1108, 0, !dbg !1478
  %arrayidx1168 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 0, !dbg !1479
  %and1878 = and i64 %syntax, 131072, !dbg !1482
  %tobool1879 = icmp eq i64 %and1878, 0, !dbg !1482
  %and1580 = and i64 %syntax, 2048, !dbg !1484
  %tobool1581 = icmp eq i64 %and1580, 0, !dbg !1484
  %and2028 = and i64 %syntax, 1024, !dbg !1485
  %tobool2029 = icmp eq i64 %and2028, 0, !dbg !1485
  %8 = and i64 %syntax, 4608, !dbg !1486
  %9 = icmp eq i64 %8, 4608, !dbg !1486
  %tobool2354 = icmp ne i64 %and3460, 0, !dbg !1487
  %10 = and i64 %syntax, 33792, !dbg !1488
  %11 = icmp eq i64 %10, 0, !dbg !1488
  %12 = icmp eq i64 %8, 512, !dbg !1489
  %and2625 = and i64 %syntax, 524288, !dbg !1490
  %tobool2626 = icmp eq i64 %and2625, 0, !dbg !1490
  %and3297 = and i64 %syntax, 16384, !dbg !1491
  %tobool3298 = icmp eq i64 %and3297, 0, !dbg !1491
  br label %if.end29, !dbg !1460

if.end29:                                         ; preds = %if.end29.lr.ph, %while.cond.backedge
  %13 = phi i8* [ %5, %if.end29.lr.ph ], [ %141, %while.cond.backedge ]
  %b.06123 = phi i8* [ %4, %if.end29.lr.ph ], [ %b.0.be, %while.cond.backedge ]
  %compile_stack.sroa.1.06119 = phi i64 [ 32, %if.end29.lr.ph ], [ %compile_stack.sroa.1.0.be, %while.cond.backedge ]
  %compile_stack.sroa.0.06113 = phi %struct.compile_stack_elt_t* [ %1, %if.end29.lr.ph ], [ %compile_stack.sroa.0.0.be, %while.cond.backedge ]
  %pending_exact.06110 = phi i8* [ null, %if.end29.lr.ph ], [ %pending_exact.0.be, %while.cond.backedge ]
  %laststart.06108 = phi i8* [ null, %if.end29.lr.ph ], [ %laststart.0.be, %while.cond.backedge ]
  %begalt.06105 = phi i8* [ %4, %if.end29.lr.ph ], [ %begalt.0.be, %while.cond.backedge ]
  %fixup_alt_jump.06102 = phi i8* [ null, %if.end29.lr.ph ], [ %fixup_alt_jump.0.be, %while.cond.backedge ]
  %regnum.06098 = phi i32 [ 0, %if.end29.lr.ph ], [ %regnum.0.be, %while.cond.backedge ]
  %incdec.ptr = getelementptr inbounds i8* %13, i64 1, !dbg !1463
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !299), !dbg !1463
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1463, !tbaa !722
  %14 = load i8* %13, align 1, !dbg !1463, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %14}, i64 0, metadata !276), !dbg !1463
  br i1 %tobool30, label %if.then31, label %do.end, !dbg !1463

if.then31:                                        ; preds = %if.end29
  %idxprom = zext i8 %14 to i64, !dbg !1463
  %arrayidx = getelementptr inbounds i8* %0, i64 %idxprom, !dbg !1463
  %15 = load i8* %arrayidx, align 1, !dbg !1463, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !276), !dbg !1463
  br label %do.end, !dbg !1463

do.end:                                           ; preds = %if.end29, %if.then31
  %c.0 = phi i8 [ %15, %if.then31 ], [ %14, %if.end29 ]
  %conv = zext i8 %c.0 to i32, !dbg !1492
  switch i32 %conv, label %normal_char [
    i32 94, label %sw.bb
    i32 36, label %sw.bb116
    i32 43, label %sw.bb208
    i32 63, label %sw.bb208
    i32 42, label %sw.bb216
    i32 46, label %while.cond625.preheader
    i32 91, label %sw.bb703
    i32 40, label %sw.bb1569
    i32 41, label %sw.bb1574
    i32 10, label %sw.bb1579
    i32 124, label %sw.bb1584
    i32 123, label %sw.bb1589
    i32 92, label %sw.bb1597
  ], !dbg !1492

while.cond625.preheader:                          ; preds = %do.end
  %.pre6492.pre = load i8** %buffer25, align 8, !dbg !1493, !tbaa !722
  br label %while.cond625.outer, !dbg !1493

sw.bb:                                            ; preds = %do.end
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1466
  %cmp34 = icmp eq i8* %13, %pattern, !dbg !1466
  %tobool36.not = xor i1 %tobool36, true, !dbg !1466
  %brmerge6536 = or i1 %cmp34, %tobool36.not, !dbg !1466
  br i1 %brmerge6536, label %while.cond43.preheader, label %lor.lhs.false37, !dbg !1466

lor.lhs.false37:                                  ; preds = %sw.bb
  tail call void @llvm.dbg.value(metadata !{i8* %pattern}, i64 0, metadata !1494), !dbg !1495
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1496), !dbg !1495
  tail call void @llvm.dbg.value(metadata !{i64 %syntax}, i64 0, metadata !1497), !dbg !1498
  %add.ptr.i5262 = getelementptr inbounds i8* %13, i64 -1, !dbg !1499
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr.i5262}, i64 0, metadata !1500), !dbg !1499
  %cmp.i5263 = icmp ugt i8* %add.ptr.i5262, %pattern, !dbg !1501
  br i1 %cmp.i5263, label %land.rhs.i, label %land.end.i, !dbg !1501

land.rhs.i:                                       ; preds = %lor.lhs.false37
  %arrayidx.i = getelementptr inbounds i8* %13, i64 -2, !dbg !1501
  %16 = load i8* %arrayidx.i, align 1, !dbg !1501, !tbaa !714
  %cmp1.i = icmp eq i8 %16, 92, !dbg !1501
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %lor.lhs.false37
  %17 = phi i1 [ false, %lor.lhs.false37 ], [ %cmp1.i, %land.rhs.i ]
  %18 = load i8* %add.ptr.i5262, align 1, !dbg !1467, !tbaa !714
  switch i8 %18, label %normal_char [
    i8 40, label %at_begline_loc_p.exit
    i8 124, label %land.rhs12.i
  ], !dbg !1467

land.rhs12.i:                                     ; preds = %land.end.i
  %..i = or i1 %17, %not.tobool14.i, !dbg !1467
  br i1 %..i, label %while.cond43.preheader, label %normal_char, !dbg !1468

at_begline_loc_p.exit:                            ; preds = %land.end.i
  %.28.i = or i1 %tobool.not.i, %17, !dbg !1467
  br i1 %.28.i, label %while.cond43.preheader, label %normal_char, !dbg !1468

while.cond43.preheader:                           ; preds = %sw.bb, %at_begline_loc_p.exit, %land.rhs12.i
  %.pre6470.pre = load i8** %buffer25, align 8, !dbg !1502, !tbaa !722
  br label %while.cond43.outer, !dbg !1502

while.cond43.outer:                               ; preds = %if.end101, %if.then103, %while.cond43.preheader
  %.pre6470 = phi i8* [ %.pre6470.pre, %while.cond43.preheader ], [ %call65, %if.then103 ], [ %call65, %if.end101 ]
  %fixup_alt_jump.1.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond43.preheader ], [ %fixup_alt_jump.2, %if.then103 ], [ %fixup_alt_jump.2, %if.end101 ]
  %begalt.1.ph = phi i8* [ %begalt.06105, %while.cond43.preheader ], [ %add.ptr85, %if.then103 ], [ %add.ptr85, %if.end101 ]
  %laststart.1.ph = phi i8* [ %laststart.06108, %while.cond43.preheader ], [ %laststart.2, %if.then103 ], [ %laststart.2, %if.end101 ]
  %pending_exact.1.ph = phi i8* [ %pending_exact.06110, %while.cond43.preheader ], [ %add.ptr108, %if.then103 ], [ null, %if.end101 ]
  %b.1.ph = phi i8* [ %b.06123, %while.cond43.preheader ], [ %add.ptr80, %if.then103 ], [ %add.ptr80, %if.end101 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %b.1.ph to i64, !dbg !1502
  br label %while.cond43

while.cond43:                                     ; preds = %if.end71, %while.cond43.outer
  %sub.ptr.rhs.cast = ptrtoint i8* %.pre6470 to i64, !dbg !1502
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1502
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !1502
  %19 = load i64* %allocated, align 8, !dbg !1502, !tbaa !713
  %cmp46 = icmp ugt i64 %add, %19, !dbg !1502
  br i1 %cmp46, label %do.body49, label %while.end, !dbg !1502

do.body49:                                        ; preds = %while.cond43
  call void @llvm.dbg.value(metadata !{i8* %.pre6470}, i64 0, metadata !308), !dbg !1503
  %cmp52 = icmp eq i64 %19, 65536, !dbg !1503
  br i1 %cmp52, label %return, label %if.end55, !dbg !1503

if.end55:                                         ; preds = %do.body49
  %shl = shl i64 %19, 1, !dbg !1503
  %cmp58 = icmp ugt i64 %shl, 65536, !dbg !1503
  %.shl = select i1 %cmp58, i64 65536, i64 %shl, !dbg !1503
  store i64 %.shl, i64* %allocated, align 8, !dbg !1503, !tbaa !713
  %call65 = call i8* @realloc(i8* %.pre6470, i64 %.shl) #7, !dbg !1503
  store i8* %call65, i8** %buffer25, align 8, !dbg !1503, !tbaa !722
  %cmp68 = icmp eq i8* %call65, null, !dbg !1503
  br i1 %cmp68, label %return, label %if.end71, !dbg !1503

if.end71:                                         ; preds = %if.end55
  %cmp73 = icmp eq i8* %.pre6470, %call65, !dbg !1503
  br i1 %cmp73, label %while.cond43, label %if.then75, !dbg !1503

if.then75:                                        ; preds = %if.end71
  %add.ptr80 = getelementptr inbounds i8* %call65, i64 %sub.ptr.sub, !dbg !1504
  call void @llvm.dbg.value(metadata !{i8* %add.ptr80}, i64 0, metadata !279), !dbg !1504
  %sub.ptr.lhs.cast81 = ptrtoint i8* %begalt.1.ph to i64, !dbg !1504
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast, !dbg !1504
  %add.ptr85 = getelementptr inbounds i8* %call65, i64 %sub.ptr.sub83, !dbg !1504
  call void @llvm.dbg.value(metadata !{i8* %add.ptr85}, i64 0, metadata !304), !dbg !1504
  %tobool86 = icmp eq i8* %fixup_alt_jump.1.ph, null, !dbg !1504
  br i1 %tobool86, label %if.end93, label %if.then87, !dbg !1504

if.then87:                                        ; preds = %if.then75
  %sub.ptr.lhs.cast88 = ptrtoint i8* %fixup_alt_jump.1.ph to i64, !dbg !1504
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast, !dbg !1504
  %add.ptr92 = getelementptr inbounds i8* %call65, i64 %sub.ptr.sub90, !dbg !1504
  call void @llvm.dbg.value(metadata !{i8* %add.ptr92}, i64 0, metadata !306), !dbg !1504
  br label %if.end93, !dbg !1504

if.end93:                                         ; preds = %if.then75, %if.then87
  %fixup_alt_jump.2 = phi i8* [ %add.ptr92, %if.then87 ], [ null, %if.then75 ]
  %tobool94 = icmp eq i8* %laststart.1.ph, null, !dbg !1504
  br i1 %tobool94, label %if.end101, label %if.then95, !dbg !1504

if.then95:                                        ; preds = %if.end93
  %sub.ptr.lhs.cast96 = ptrtoint i8* %laststart.1.ph to i64, !dbg !1504
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast, !dbg !1504
  %add.ptr100 = getelementptr inbounds i8* %call65, i64 %sub.ptr.sub98, !dbg !1504
  call void @llvm.dbg.value(metadata !{i8* %add.ptr100}, i64 0, metadata !303), !dbg !1504
  br label %if.end101, !dbg !1504

if.end101:                                        ; preds = %if.end93, %if.then95
  %laststart.2 = phi i8* [ %add.ptr100, %if.then95 ], [ null, %if.end93 ]
  %tobool102 = icmp eq i8* %pending_exact.1.ph, null, !dbg !1504
  br i1 %tobool102, label %while.cond43.outer, label %if.then103, !dbg !1504

if.then103:                                       ; preds = %if.end101
  %sub.ptr.lhs.cast104 = ptrtoint i8* %pending_exact.1.ph to i64, !dbg !1504
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast, !dbg !1504
  %add.ptr108 = getelementptr inbounds i8* %call65, i64 %sub.ptr.sub106, !dbg !1504
  call void @llvm.dbg.value(metadata !{i8* %add.ptr108}, i64 0, metadata !302), !dbg !1504
  br label %while.cond43.outer, !dbg !1504

while.end:                                        ; preds = %while.cond43
  %incdec.ptr112 = getelementptr inbounds i8* %b.1.ph, i64 1, !dbg !1502
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr112}, i64 0, metadata !279), !dbg !1502
  store i8 9, i8* %b.1.ph, align 1, !dbg !1502, !tbaa !714
  br label %while.cond.backedge, !dbg !1506

sw.bb116:                                         ; preds = %do.end
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1507
  %cmp117 = icmp eq i8* %incdec.ptr, %add.ptr, !dbg !1507
  %tobool36.not6537 = xor i1 %tobool36, true, !dbg !1507
  %brmerge6538 = or i1 %cmp117, %tobool36.not6537, !dbg !1507
  br i1 %brmerge6538, label %while.cond128.preheader, label %lor.lhs.false122, !dbg !1507

lor.lhs.false122:                                 ; preds = %sw.bb116
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1508), !dbg !1509
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1510), !dbg !1509
  tail call void @llvm.dbg.value(metadata !{i64 %syntax}, i64 0, metadata !1511), !dbg !1512
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1513), !dbg !1514
  %20 = load i8* %incdec.ptr, align 1, !dbg !1515, !tbaa !714
  %cmp.i5264 = icmp eq i8 %20, 92, !dbg !1515
  %add.ptr.i5265 = getelementptr inbounds i8* %13, i64 2, !dbg !1516
  %cmp3.i = icmp ult i8* %add.ptr.i5265, %add.ptr, !dbg !1516
  %add.ptr..i = select i1 %cmp3.i, i8* %add.ptr.i5265, i8* null, !dbg !1516
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr..i}, i64 0, metadata !1517), !dbg !1516
  br i1 %tobool.i, label %cond.false10.i, label %cond.true6.i, !dbg !1469

cond.true6.i:                                     ; preds = %lor.lhs.false122
  %cmp8.i = icmp eq i8 %20, 41, !dbg !1469
  br i1 %cmp8.i, label %while.cond128.preheader, label %lor.rhs.i, !dbg !1469

cond.false10.i:                                   ; preds = %lor.lhs.false122
  %cmp.not.i = xor i1 %cmp.i5264, true, !dbg !1469
  %tobool13.i = icmp eq i8* %add.ptr..i, null, !dbg !1469
  %or.cond.i = or i1 %tobool13.i, %cmp.not.i, !dbg !1469
  br i1 %or.cond.i, label %lor.rhs.i, label %land.lhs.true14.i, !dbg !1469

land.lhs.true14.i:                                ; preds = %cond.false10.i
  %21 = load i8* %add.ptr..i, align 1, !dbg !1469, !tbaa !714
  %cmp16.i = icmp eq i8 %21, 41, !dbg !1469
  br i1 %cmp16.i, label %while.cond128.preheader, label %lor.rhs.i, !dbg !1469

lor.rhs.i:                                        ; preds = %land.lhs.true14.i, %cond.false10.i, %cond.true6.i
  br i1 %tobool19.i, label %cond.false24.i, label %at_endline_loc_p.exit, !dbg !1469

cond.false24.i:                                   ; preds = %lor.rhs.i
  %cmp.not45.i = xor i1 %cmp.i5264, true, !dbg !1469
  %tobool28.i = icmp eq i8* %add.ptr..i, null, !dbg !1469
  %or.cond46.i = or i1 %tobool28.i, %cmp.not45.i, !dbg !1469
  br i1 %or.cond46.i, label %normal_char, label %land.rhs.i5267, !dbg !1469

land.rhs.i5267:                                   ; preds = %cond.false24.i
  %22 = load i8* %add.ptr..i, align 1, !dbg !1469, !tbaa !714
  br label %at_endline_loc_p.exit

at_endline_loc_p.exit:                            ; preds = %lor.rhs.i, %land.rhs.i5267
  %.sink = phi i8 [ %22, %land.rhs.i5267 ], [ %20, %lor.rhs.i ]
  %cmp22.i = icmp eq i8 %.sink, 124, !dbg !1469
  br i1 %cmp22.i, label %while.cond128.preheader, label %normal_char, !dbg !1470

while.cond128.preheader:                          ; preds = %sw.bb116, %at_endline_loc_p.exit, %land.lhs.true14.i, %cond.true6.i
  %.pre6471.pre = load i8** %buffer25, align 8, !dbg !1518, !tbaa !722
  br label %while.cond128.outer, !dbg !1518

while.cond128.outer:                              ; preds = %if.end192, %if.then194, %while.cond128.preheader
  %.pre6471 = phi i8* [ %.pre6471.pre, %while.cond128.preheader ], [ %call156, %if.then194 ], [ %call156, %if.end192 ]
  %fixup_alt_jump.3.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond128.preheader ], [ %fixup_alt_jump.4, %if.then194 ], [ %fixup_alt_jump.4, %if.end192 ]
  %begalt.2.ph = phi i8* [ %begalt.06105, %while.cond128.preheader ], [ %add.ptr176, %if.then194 ], [ %add.ptr176, %if.end192 ]
  %laststart.3.ph = phi i8* [ %laststart.06108, %while.cond128.preheader ], [ %laststart.4, %if.then194 ], [ %laststart.4, %if.end192 ]
  %pending_exact.2.ph = phi i8* [ %pending_exact.06110, %while.cond128.preheader ], [ %add.ptr199, %if.then194 ], [ null, %if.end192 ]
  %b.2.ph = phi i8* [ %b.06123, %while.cond128.preheader ], [ %add.ptr171, %if.then194 ], [ %add.ptr171, %if.end192 ]
  %sub.ptr.lhs.cast130 = ptrtoint i8* %b.2.ph to i64, !dbg !1518
  br label %while.cond128

while.cond128:                                    ; preds = %if.end162, %while.cond128.outer
  %sub.ptr.rhs.cast131 = ptrtoint i8* %.pre6471 to i64, !dbg !1518
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131, !dbg !1518
  %add133 = add nsw i64 %sub.ptr.sub132, 1, !dbg !1518
  %23 = load i64* %allocated, align 8, !dbg !1518, !tbaa !713
  %cmp135 = icmp ugt i64 %add133, %23, !dbg !1518
  br i1 %cmp135, label %do.body138, label %while.end203, !dbg !1518

do.body138:                                       ; preds = %while.cond128
  call void @llvm.dbg.value(metadata !{i8* %.pre6471}, i64 0, metadata !314), !dbg !1519
  %cmp142 = icmp eq i64 %23, 65536, !dbg !1519
  br i1 %cmp142, label %return, label %if.end145, !dbg !1519

if.end145:                                        ; preds = %do.body138
  %shl147 = shl i64 %23, 1, !dbg !1519
  %cmp149 = icmp ugt i64 %shl147, 65536, !dbg !1519
  %.shl147 = select i1 %cmp149, i64 65536, i64 %shl147, !dbg !1519
  store i64 %.shl147, i64* %allocated, align 8, !dbg !1519, !tbaa !713
  %call156 = call i8* @realloc(i8* %.pre6471, i64 %.shl147) #7, !dbg !1519
  store i8* %call156, i8** %buffer25, align 8, !dbg !1519, !tbaa !722
  %cmp159 = icmp eq i8* %call156, null, !dbg !1519
  br i1 %cmp159, label %return, label %if.end162, !dbg !1519

if.end162:                                        ; preds = %if.end145
  %cmp164 = icmp eq i8* %.pre6471, %call156, !dbg !1519
  br i1 %cmp164, label %while.cond128, label %if.then166, !dbg !1519

if.then166:                                       ; preds = %if.end162
  %add.ptr171 = getelementptr inbounds i8* %call156, i64 %sub.ptr.sub132, !dbg !1520
  call void @llvm.dbg.value(metadata !{i8* %add.ptr171}, i64 0, metadata !279), !dbg !1520
  %sub.ptr.lhs.cast172 = ptrtoint i8* %begalt.2.ph to i64, !dbg !1520
  %sub.ptr.sub174 = sub i64 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast131, !dbg !1520
  %add.ptr176 = getelementptr inbounds i8* %call156, i64 %sub.ptr.sub174, !dbg !1520
  call void @llvm.dbg.value(metadata !{i8* %add.ptr176}, i64 0, metadata !304), !dbg !1520
  %tobool177 = icmp eq i8* %fixup_alt_jump.3.ph, null, !dbg !1520
  br i1 %tobool177, label %if.end184, label %if.then178, !dbg !1520

if.then178:                                       ; preds = %if.then166
  %sub.ptr.lhs.cast179 = ptrtoint i8* %fixup_alt_jump.3.ph to i64, !dbg !1520
  %sub.ptr.sub181 = sub i64 %sub.ptr.lhs.cast179, %sub.ptr.rhs.cast131, !dbg !1520
  %add.ptr183 = getelementptr inbounds i8* %call156, i64 %sub.ptr.sub181, !dbg !1520
  call void @llvm.dbg.value(metadata !{i8* %add.ptr183}, i64 0, metadata !306), !dbg !1520
  br label %if.end184, !dbg !1520

if.end184:                                        ; preds = %if.then166, %if.then178
  %fixup_alt_jump.4 = phi i8* [ %add.ptr183, %if.then178 ], [ null, %if.then166 ]
  %tobool185 = icmp eq i8* %laststart.3.ph, null, !dbg !1520
  br i1 %tobool185, label %if.end192, label %if.then186, !dbg !1520

if.then186:                                       ; preds = %if.end184
  %sub.ptr.lhs.cast187 = ptrtoint i8* %laststart.3.ph to i64, !dbg !1520
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast131, !dbg !1520
  %add.ptr191 = getelementptr inbounds i8* %call156, i64 %sub.ptr.sub189, !dbg !1520
  call void @llvm.dbg.value(metadata !{i8* %add.ptr191}, i64 0, metadata !303), !dbg !1520
  br label %if.end192, !dbg !1520

if.end192:                                        ; preds = %if.end184, %if.then186
  %laststart.4 = phi i8* [ %add.ptr191, %if.then186 ], [ null, %if.end184 ]
  %tobool193 = icmp eq i8* %pending_exact.2.ph, null, !dbg !1520
  br i1 %tobool193, label %while.cond128.outer, label %if.then194, !dbg !1520

if.then194:                                       ; preds = %if.end192
  %sub.ptr.lhs.cast195 = ptrtoint i8* %pending_exact.2.ph to i64, !dbg !1520
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast131, !dbg !1520
  %add.ptr199 = getelementptr inbounds i8* %call156, i64 %sub.ptr.sub197, !dbg !1520
  call void @llvm.dbg.value(metadata !{i8* %add.ptr199}, i64 0, metadata !302), !dbg !1520
  br label %while.cond128.outer, !dbg !1520

while.end203:                                     ; preds = %while.cond128
  %incdec.ptr204 = getelementptr inbounds i8* %b.2.ph, i64 1, !dbg !1518
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr204}, i64 0, metadata !279), !dbg !1518
  store i8 10, i8* %b.2.ph, align 1, !dbg !1518, !tbaa !714
  br label %while.cond.backedge, !dbg !1522

sw.bb208:                                         ; preds = %do.end, %do.end
  br i1 %7, label %sw.bb216, label %normal_char, !dbg !1471

sw.bb216:                                         ; preds = %sw.bb208, %sw.bb3395, %do.end
  %24 = phi i8* [ %incdec.ptr1608, %sw.bb3395 ], [ %incdec.ptr, %do.end ], [ %incdec.ptr, %sw.bb208 ]
  %c.1 = phi i8 [ %134, %sw.bb3395 ], [ %c.0, %do.end ], [ %c.0, %sw.bb208 ]
  %tobool217 = icmp ne i8* %laststart.06108, null, !dbg !1523
  br i1 %tobool217, label %for.cond.preheader, label %if.then218, !dbg !1523

if.then218:                                       ; preds = %sw.bb216
  br i1 %tobool220, label %if.else223, label %if.then221, !dbg !1472

if.then221:                                       ; preds = %if.then218
  %25 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1524
  call void @free(i8* %25) #7, !dbg !1524
  br label %return, !dbg !1524

if.else223:                                       ; preds = %if.then218
  br i1 %tobool225, label %normal_char, label %for.cond.preheader, !dbg !1474

for.cond.preheader:                               ; preds = %if.else223, %sw.bb216
  %cmp2315511 = icmp ne i8 %c.1, 43, !dbg !1525
  %conv2325512 = zext i1 %cmp2315511 to i32, !dbg !1525
  %conv2345514 = zext i1 %cmp2315511 to i8, !dbg !1525
  call void @llvm.dbg.value(metadata !{i8 %conv2345506}, i64 0, metadata !320), !dbg !1525
  %cmp2365515 = icmp ne i8 %c.1, 63, !dbg !1528
  %conv2405518 = zext i1 %cmp2365515 to i8, !dbg !1528
  call void @llvm.dbg.value(metadata !{i8 %conv2405510}, i64 0, metadata !321), !dbg !1528
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1529
  %cmp2415519 = icmp eq i8* %24, %add.ptr, !dbg !1529
  br i1 %cmp2415519, label %for.end, label %if.end249.lr.ph, !dbg !1529

if.end249.lr.ph:                                  ; preds = %for.cond.preheader
  %conv2375516 = zext i1 %cmp2365515 to i32, !dbg !1528
  br label %if.end249, !dbg !1529

if.end249:                                        ; preds = %if.end249.lr.ph, %for.cond.backedge
  %26 = phi i8* [ %24, %if.end249.lr.ph ], [ %29, %for.cond.backedge ]
  %conv2405523 = phi i8 [ %conv2405518, %if.end249.lr.ph ], [ %conv240, %for.cond.backedge ]
  %or2395522 = phi i32 [ %conv2375516, %if.end249.lr.ph ], [ %or239, %for.cond.backedge ]
  %conv2345521 = phi i8 [ %conv2345514, %if.end249.lr.ph ], [ %conv234, %for.cond.backedge ]
  %or5520 = phi i32 [ %conv2325512, %if.end249.lr.ph ], [ %or, %for.cond.backedge ]
  %incdec.ptr250 = getelementptr inbounds i8* %26, i64 1, !dbg !1530
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr250}, i64 0, metadata !299), !dbg !1530
  store i8* %incdec.ptr250, i8** %p, align 8, !dbg !1530, !tbaa !722
  %27 = load i8* %26, align 1, !dbg !1530, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %27}, i64 0, metadata !276), !dbg !1530
  br i1 %tobool30, label %if.then252, label %do.end256, !dbg !1530

if.then252:                                       ; preds = %if.end249
  %idxprom253 = zext i8 %27 to i64, !dbg !1530
  %arrayidx254 = getelementptr inbounds i8* %0, i64 %idxprom253, !dbg !1530
  %28 = load i8* %arrayidx254, align 1, !dbg !1530, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %28}, i64 0, metadata !276), !dbg !1530
  br label %do.end256, !dbg !1530

do.end256:                                        ; preds = %if.end249, %if.then252
  %c.3 = phi i8 [ %28, %if.then252 ], [ %27, %if.end249 ]
  %cmp258 = icmp eq i8 %c.3, 42, !dbg !1532
  br i1 %cmp258, label %for.cond.backedge, label %lor.lhs.false260, !dbg !1532

for.cond.backedge:                                ; preds = %do.end256, %land.lhs.true, %land.lhs.true, %do.end295, %do.end295
  %29 = phi i8* [ %incdec.ptr250, %do.end256 ], [ %incdec.ptr250, %land.lhs.true ], [ %incdec.ptr250, %land.lhs.true ], [ %incdec.ptr289, %do.end295 ], [ %incdec.ptr289, %do.end295 ]
  %c.2.be = phi i8 [ 42, %do.end256 ], [ %c.3, %land.lhs.true ], [ %c.3, %land.lhs.true ], [ %c1.0, %do.end295 ], [ %c1.0, %do.end295 ]
  %cmp231 = icmp ne i8 %c.2.be, 43, !dbg !1525
  %conv232 = zext i1 %cmp231 to i32, !dbg !1525
  %or = or i32 %conv232, %or5520, !dbg !1525
  %conv234 = trunc i32 %or to i8, !dbg !1525
  call void @llvm.dbg.value(metadata !{i8 %conv2345506}, i64 0, metadata !320), !dbg !1525
  %cmp236 = icmp ne i8 %c.2.be, 63, !dbg !1528
  %conv237 = zext i1 %cmp236 to i32, !dbg !1528
  %or239 = or i32 %conv237, %or2395522, !dbg !1528
  %conv240 = trunc i32 %or239 to i8, !dbg !1528
  call void @llvm.dbg.value(metadata !{i8 %conv2405510}, i64 0, metadata !321), !dbg !1528
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1529
  %cmp241 = icmp eq i8* %29, %add.ptr, !dbg !1529
  br i1 %cmp241, label %for.end, label %if.end249, !dbg !1529

lor.lhs.false260:                                 ; preds = %do.end256
  br i1 %tobool3433, label %land.lhs.true, label %land.lhs.true274.critedge, !dbg !1532

land.lhs.true:                                    ; preds = %lor.lhs.false260
  switch i8 %c.3, label %if.else307 [
    i8 43, label %for.cond.backedge
    i8 63, label %for.cond.backedge
  ], !dbg !1532

land.lhs.true274.critedge:                        ; preds = %lor.lhs.false260
  %cmp276.old = icmp eq i8 %c.3, 92, !dbg !1533
  br i1 %cmp276.old, label %if.then278, label %if.else307, !dbg !1533

if.then278:                                       ; preds = %land.lhs.true274.critedge
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1534
  %cmp279 = icmp eq i8* %incdec.ptr250, %add.ptr, !dbg !1534
  br i1 %cmp279, label %if.then281, label %if.end288, !dbg !1534

if.then281:                                       ; preds = %if.then278
  %30 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1534
  call void @free(i8* %30) #7, !dbg !1534
  br label %return, !dbg !1534

if.end288:                                        ; preds = %if.then278
  %incdec.ptr289 = getelementptr inbounds i8* %26, i64 2, !dbg !1536
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr289}, i64 0, metadata !299), !dbg !1536
  store i8* %incdec.ptr289, i8** %p, align 8, !dbg !1536, !tbaa !722
  %31 = load i8* %incdec.ptr250, align 1, !dbg !1536, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %31}, i64 0, metadata !277), !dbg !1536
  br i1 %tobool30, label %if.then291, label %do.end295, !dbg !1536

if.then291:                                       ; preds = %if.end288
  %idxprom292 = zext i8 %31 to i64, !dbg !1536
  %arrayidx293 = getelementptr inbounds i8* %0, i64 %idxprom292, !dbg !1536
  %32 = load i8* %arrayidx293, align 1, !dbg !1536, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %32}, i64 0, metadata !277), !dbg !1536
  br label %do.end295, !dbg !1536

do.end295:                                        ; preds = %if.end288, %if.then291
  %c1.0 = phi i8 [ %32, %if.then291 ], [ %31, %if.end288 ]
  switch i8 %c1.0, label %if.then303 [
    i8 43, label %for.cond.backedge
    i8 63, label %for.cond.backedge
  ], !dbg !1538

if.then303:                                       ; preds = %do.end295
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1539
  call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !299), !dbg !1541
  store i8* %26, i8** %p, align 8, !dbg !1541, !tbaa !722
  br label %for.end, !dbg !1542

if.else307:                                       ; preds = %land.lhs.true, %land.lhs.true274.critedge
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1543
  call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !299), !dbg !1543
  store i8* %26, i8** %p, align 8, !dbg !1543, !tbaa !722
  br label %for.end, !dbg !1545

for.end:                                          ; preds = %for.cond.preheader, %for.cond.backedge, %if.else307, %if.then303
  %conv2405510 = phi i8 [ %conv2405523, %if.else307 ], [ %conv2405523, %if.then303 ], [ %conv2405518, %for.cond.preheader ], [ %conv240, %for.cond.backedge ]
  %conv2345506 = phi i8 [ %conv2345521, %if.else307 ], [ %conv2345521, %if.then303 ], [ %conv2345514, %for.cond.preheader ], [ %conv234, %for.cond.backedge ]
  %or5502 = phi i32 [ %or5520, %if.else307 ], [ %or5520, %if.then303 ], [ %conv2325512, %for.cond.preheader ], [ %or, %for.cond.backedge ]
  br i1 %tobool217, label %if.end313, label %while.cond.backedge, !dbg !1546

if.end313:                                        ; preds = %for.end
  %tobool314 = icmp eq i8 %conv2405510, 0, !dbg !1547
  br i1 %tobool314, label %while.cond451.preheader, label %while.cond316.preheader, !dbg !1547

while.cond316.preheader:                          ; preds = %if.end313
  %.pre6472.pre = load i8** %buffer25, align 8, !dbg !1548, !tbaa !722
  br label %while.cond316.outer, !dbg !1548

while.cond316.outer:                              ; preds = %if.end380, %if.then382, %while.cond316.preheader
  %.pre6472 = phi i8* [ %.pre6472.pre, %while.cond316.preheader ], [ %call344, %if.then382 ], [ %call344, %if.end380 ]
  %fixup_alt_jump.5.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond316.preheader ], [ %fixup_alt_jump.6, %if.then382 ], [ %fixup_alt_jump.6, %if.end380 ]
  %begalt.3.ph = phi i8* [ %begalt.06105, %while.cond316.preheader ], [ %add.ptr364, %if.then382 ], [ %add.ptr364, %if.end380 ]
  %laststart.5.ph = phi i8* [ %laststart.06108, %while.cond316.preheader ], [ %laststart.6, %if.then382 ], [ %laststart.6, %if.end380 ]
  %pending_exact.3.ph = phi i8* [ %pending_exact.06110, %while.cond316.preheader ], [ %add.ptr387, %if.then382 ], [ null, %if.end380 ]
  %b.3.ph = phi i8* [ %b.06123, %while.cond316.preheader ], [ %add.ptr359, %if.then382 ], [ %add.ptr359, %if.end380 ]
  %sub.ptr.lhs.cast318 = ptrtoint i8* %b.3.ph to i64, !dbg !1548
  br label %while.cond316

while.cond316:                                    ; preds = %if.end350, %while.cond316.outer
  %sub.ptr.rhs.cast319 = ptrtoint i8* %.pre6472 to i64, !dbg !1548
  %sub.ptr.sub320 = sub i64 %sub.ptr.lhs.cast318, %sub.ptr.rhs.cast319, !dbg !1548
  %add321 = add nsw i64 %sub.ptr.sub320, 3, !dbg !1548
  %33 = load i64* %allocated, align 8, !dbg !1548, !tbaa !713
  %cmp323 = icmp ugt i64 %add321, %33, !dbg !1548
  br i1 %cmp323, label %do.body326, label %while.end391, !dbg !1548

do.body326:                                       ; preds = %while.cond316
  call void @llvm.dbg.value(metadata !{i8* %.pre6472}, i64 0, metadata !322), !dbg !1549
  %cmp330 = icmp eq i64 %33, 65536, !dbg !1549
  br i1 %cmp330, label %return, label %if.end333, !dbg !1549

if.end333:                                        ; preds = %do.body326
  %shl335 = shl i64 %33, 1, !dbg !1549
  %cmp337 = icmp ugt i64 %shl335, 65536, !dbg !1549
  %.shl335 = select i1 %cmp337, i64 65536, i64 %shl335, !dbg !1549
  store i64 %.shl335, i64* %allocated, align 8, !dbg !1549, !tbaa !713
  %call344 = call i8* @realloc(i8* %.pre6472, i64 %.shl335) #7, !dbg !1549
  store i8* %call344, i8** %buffer25, align 8, !dbg !1549, !tbaa !722
  %cmp347 = icmp eq i8* %call344, null, !dbg !1549
  br i1 %cmp347, label %return, label %if.end350, !dbg !1549

if.end350:                                        ; preds = %if.end333
  %cmp352 = icmp eq i8* %.pre6472, %call344, !dbg !1549
  br i1 %cmp352, label %while.cond316, label %if.then354, !dbg !1549

if.then354:                                       ; preds = %if.end350
  %add.ptr359 = getelementptr inbounds i8* %call344, i64 %sub.ptr.sub320, !dbg !1550
  call void @llvm.dbg.value(metadata !{i8* %add.ptr359}, i64 0, metadata !279), !dbg !1550
  %sub.ptr.lhs.cast360 = ptrtoint i8* %begalt.3.ph to i64, !dbg !1550
  %sub.ptr.sub362 = sub i64 %sub.ptr.lhs.cast360, %sub.ptr.rhs.cast319, !dbg !1550
  %add.ptr364 = getelementptr inbounds i8* %call344, i64 %sub.ptr.sub362, !dbg !1550
  call void @llvm.dbg.value(metadata !{i8* %add.ptr364}, i64 0, metadata !304), !dbg !1550
  %tobool365 = icmp eq i8* %fixup_alt_jump.5.ph, null, !dbg !1550
  br i1 %tobool365, label %if.end372, label %if.then366, !dbg !1550

if.then366:                                       ; preds = %if.then354
  %sub.ptr.lhs.cast367 = ptrtoint i8* %fixup_alt_jump.5.ph to i64, !dbg !1550
  %sub.ptr.sub369 = sub i64 %sub.ptr.lhs.cast367, %sub.ptr.rhs.cast319, !dbg !1550
  %add.ptr371 = getelementptr inbounds i8* %call344, i64 %sub.ptr.sub369, !dbg !1550
  call void @llvm.dbg.value(metadata !{i8* %add.ptr371}, i64 0, metadata !306), !dbg !1550
  br label %if.end372, !dbg !1550

if.end372:                                        ; preds = %if.then354, %if.then366
  %fixup_alt_jump.6 = phi i8* [ %add.ptr371, %if.then366 ], [ null, %if.then354 ]
  %tobool373 = icmp eq i8* %laststart.5.ph, null, !dbg !1550
  br i1 %tobool373, label %if.end380, label %if.then374, !dbg !1550

if.then374:                                       ; preds = %if.end372
  %sub.ptr.lhs.cast375 = ptrtoint i8* %laststart.5.ph to i64, !dbg !1550
  %sub.ptr.sub377 = sub i64 %sub.ptr.lhs.cast375, %sub.ptr.rhs.cast319, !dbg !1550
  %add.ptr379 = getelementptr inbounds i8* %call344, i64 %sub.ptr.sub377, !dbg !1550
  call void @llvm.dbg.value(metadata !{i8* %add.ptr379}, i64 0, metadata !303), !dbg !1550
  br label %if.end380, !dbg !1550

if.end380:                                        ; preds = %if.end372, %if.then374
  %laststart.6 = phi i8* [ %add.ptr379, %if.then374 ], [ null, %if.end372 ]
  %tobool381 = icmp eq i8* %pending_exact.3.ph, null, !dbg !1550
  br i1 %tobool381, label %while.cond316.outer, label %if.then382, !dbg !1550

if.then382:                                       ; preds = %if.end380
  %sub.ptr.lhs.cast383 = ptrtoint i8* %pending_exact.3.ph to i64, !dbg !1550
  %sub.ptr.sub385 = sub i64 %sub.ptr.lhs.cast383, %sub.ptr.rhs.cast319, !dbg !1550
  %add.ptr387 = getelementptr inbounds i8* %call344, i64 %sub.ptr.sub385, !dbg !1550
  call void @llvm.dbg.value(metadata !{i8* %add.ptr387}, i64 0, metadata !302), !dbg !1550
  br label %while.cond316.outer, !dbg !1550

while.end391:                                     ; preds = %while.cond316
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1475
  %34 = load i8** %p, align 8, !dbg !1475, !tbaa !722
  %add.ptr393 = getelementptr inbounds i8* %34, i64 -2, !dbg !1475
  %35 = load i8* %add.ptr393, align 1, !dbg !1475, !tbaa !714
  br i1 %tobool30, label %cond.true400, label %cond.end404, !dbg !1475

cond.true400:                                     ; preds = %while.end391
  %idxprom394 = zext i8 %35 to i64, !dbg !1475
  %arrayidx395 = getelementptr inbounds i8* %0, i64 %idxprom394, !dbg !1475
  %36 = load i8* %arrayidx395, align 1, !dbg !1475, !tbaa !714
  %37 = load i8* %arrayidx401, align 1, !dbg !1475, !tbaa !714
  %conv402 = sext i8 %37 to i32, !dbg !1475
  br label %cond.end404, !dbg !1475

cond.end404:                                      ; preds = %while.end391, %cond.true400
  %conv3965308.in = phi i8 [ %36, %cond.true400 ], [ %35, %while.end391 ]
  %cond405 = phi i32 [ %conv402, %cond.true400 ], [ 46, %while.end391 ], !dbg !1475
  %conv3965308 = sext i8 %conv3965308.in to i32, !dbg !1475
  %notlhs = icmp eq i32 %conv3965308, %cond405, !dbg !1475
  %notrhs = icmp ne i32 %or5502, 0, !dbg !1475
  %or.cond5152.not = and i1 %notrhs, %notlhs, !dbg !1475
  %cmp412 = icmp ult i8* %34, %add.ptr, !dbg !1475
  %or.cond = and i1 %or.cond5152.not, %cmp412, !dbg !1475
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1475
  br i1 %or.cond, label %land.lhs.true414, label %if.else441, !dbg !1475

land.lhs.true414:                                 ; preds = %cond.end404
  %38 = load i8* %34, align 1, !dbg !1475, !tbaa !714
  br i1 %tobool30, label %cond.true425, label %cond.end429, !dbg !1475

cond.true425:                                     ; preds = %land.lhs.true414
  %idxprom417 = zext i8 %38 to i64, !dbg !1475
  %arrayidx418 = getelementptr inbounds i8* %0, i64 %idxprom417, !dbg !1475
  %39 = load i8* %arrayidx418, align 1, !dbg !1475, !tbaa !714
  %40 = load i8* %arrayidx426, align 1, !dbg !1475, !tbaa !714
  %conv427 = sext i8 %40 to i32, !dbg !1475
  br label %cond.end429, !dbg !1475

cond.end429:                                      ; preds = %land.lhs.true414, %cond.true425
  %conv4195311.in = phi i8 [ %39, %cond.true425 ], [ %38, %land.lhs.true414 ]
  %cond430 = phi i32 [ %conv427, %cond.true425 ], [ 10, %land.lhs.true414 ], !dbg !1475
  %conv4195311 = sext i8 %conv4195311.in to i32, !dbg !1475
  %cmp431.not = icmp ne i32 %conv4195311, %cond430, !dbg !1475
  %tobool435.not = icmp ne i64 %and434, 0, !dbg !1475
  %brmerge6539 = or i1 %cmp431.not, %tobool435.not, !dbg !1475
  br i1 %brmerge6539, label %if.else441, label %if.then436, !dbg !1475

if.then436:                                       ; preds = %cond.end429
  %sub.ptr.lhs.cast437 = ptrtoint i8* %laststart.5.ph to i64, !dbg !1552
  %sub.ptr.sub439 = sub i64 %sub.ptr.lhs.cast437, %sub.ptr.lhs.cast318, !dbg !1552
  %sub = add nsw i64 %sub.ptr.sub439, 4294967293, !dbg !1552
  %conv440 = trunc i64 %sub to i32, !dbg !1552
  tail call void @llvm.dbg.value(metadata !1554, i64 0, metadata !1555), !dbg !1556
  tail call void @llvm.dbg.value(metadata !{i8* %b.3.ph}, i64 0, metadata !1557), !dbg !1558
  tail call void @llvm.dbg.value(metadata !{i32 %conv440}, i64 0, metadata !1559), !dbg !1560
  store i8 13, i8* %b.3.ph, align 1, !dbg !1561, !tbaa !714
  %conv1.i5300 = trunc i64 %sub to i8, !dbg !1562
  %add.ptr.i5301 = getelementptr inbounds i8* %b.3.ph, i64 1, !dbg !1562
  store i8 %conv1.i5300, i8* %add.ptr.i5301, align 1, !dbg !1562, !tbaa !714
  %shr8.i5302 = lshr i32 %conv440, 8, !dbg !1562
  %conv2.i5303 = trunc i32 %shr8.i5302 to i8, !dbg !1562
  %arrayidx4.i5304 = getelementptr inbounds i8* %b.3.ph, i64 2, !dbg !1562
  store i8 %conv2.i5303, i8* %arrayidx4.i5304, align 1, !dbg !1562, !tbaa !714
  call void @llvm.dbg.value(metadata !726, i64 0, metadata !318), !dbg !1564
  br label %if.end448, !dbg !1565

if.else441:                                       ; preds = %cond.end429, %cond.end404
  %add.ptr442 = getelementptr inbounds i8* %laststart.5.ph, i64 -3, !dbg !1566
  %sub.ptr.lhs.cast443 = ptrtoint i8* %add.ptr442 to i64, !dbg !1566
  %sub.ptr.sub445 = sub i64 %sub.ptr.lhs.cast443, %sub.ptr.lhs.cast318, !dbg !1566
  %sub446 = add nsw i64 %sub.ptr.sub445, 4294967293, !dbg !1566
  %conv447 = trunc i64 %sub446 to i32, !dbg !1566
  tail call void @llvm.dbg.value(metadata !1567, i64 0, metadata !1568), !dbg !1569
  tail call void @llvm.dbg.value(metadata !{i8* %b.3.ph}, i64 0, metadata !1570), !dbg !1571
  tail call void @llvm.dbg.value(metadata !{i32 %conv447}, i64 0, metadata !1572), !dbg !1573
  store i8 18, i8* %b.3.ph, align 1, !dbg !1574, !tbaa !714
  %conv1.i5295 = trunc i64 %sub446 to i8, !dbg !1575
  %add.ptr.i5296 = getelementptr inbounds i8* %b.3.ph, i64 1, !dbg !1575
  store i8 %conv1.i5295, i8* %add.ptr.i5296, align 1, !dbg !1575, !tbaa !714
  %shr8.i5297 = lshr i32 %conv447, 8, !dbg !1575
  %conv2.i5298 = trunc i32 %shr8.i5297 to i8, !dbg !1575
  %arrayidx4.i5299 = getelementptr inbounds i8* %b.3.ph, i64 2, !dbg !1575
  store i8 %conv2.i5298, i8* %arrayidx4.i5299, align 1, !dbg !1575, !tbaa !714
  br label %if.end448

if.end448:                                        ; preds = %if.else441, %if.then436
  %keep_string_p.0 = phi i8 [ 0, %if.else441 ], [ 1, %if.then436 ]
  %add.ptr449 = getelementptr inbounds i8* %b.3.ph, i64 3, !dbg !1576
  call void @llvm.dbg.value(metadata !{i8* %add.ptr449}, i64 0, metadata !279), !dbg !1576
  br label %while.cond451.preheader, !dbg !1577

while.cond451.preheader:                          ; preds = %if.end313, %if.end448
  %keep_string_p.1.ph = phi i8 [ %keep_string_p.0, %if.end448 ], [ 0, %if.end313 ]
  %fixup_alt_jump.7.ph = phi i8* [ %fixup_alt_jump.5.ph, %if.end448 ], [ %fixup_alt_jump.06102, %if.end313 ]
  %begalt.4.ph = phi i8* [ %begalt.3.ph, %if.end448 ], [ %begalt.06105, %if.end313 ]
  %laststart.7.ph = phi i8* [ %laststart.5.ph, %if.end448 ], [ %laststart.06108, %if.end313 ]
  %pending_exact.4.ph = phi i8* [ %pending_exact.3.ph, %if.end448 ], [ %pending_exact.06110, %if.end313 ]
  %b.4.ph = phi i8* [ %add.ptr449, %if.end448 ], [ %b.06123, %if.end313 ]
  %.pre6473.pre = load i8** %buffer25, align 8, !dbg !1578, !tbaa !722
  br label %while.cond451.outer, !dbg !1578

while.cond451.outer:                              ; preds = %if.end515, %if.then517, %while.cond451.preheader
  %.pre6473 = phi i8* [ %.pre6473.pre, %while.cond451.preheader ], [ %call479, %if.then517 ], [ %call479, %if.end515 ]
  %fixup_alt_jump.7.ph5537 = phi i8* [ %fixup_alt_jump.7.ph, %while.cond451.preheader ], [ %fixup_alt_jump.8, %if.then517 ], [ %fixup_alt_jump.8, %if.end515 ]
  %begalt.4.ph5538 = phi i8* [ %begalt.4.ph, %while.cond451.preheader ], [ %add.ptr499, %if.then517 ], [ %add.ptr499, %if.end515 ]
  %laststart.7.ph5539 = phi i8* [ %laststart.7.ph, %while.cond451.preheader ], [ %laststart.8, %if.then517 ], [ %laststart.8, %if.end515 ]
  %pending_exact.4.ph5540 = phi i8* [ %pending_exact.4.ph, %while.cond451.preheader ], [ %add.ptr522, %if.then517 ], [ null, %if.end515 ]
  %b.4.ph5541 = phi i8* [ %b.4.ph, %while.cond451.preheader ], [ %add.ptr494, %if.then517 ], [ %add.ptr494, %if.end515 ]
  %sub.ptr.lhs.cast453 = ptrtoint i8* %b.4.ph5541 to i64, !dbg !1578
  br label %while.cond451

while.cond451:                                    ; preds = %if.end485, %while.cond451.outer
  %sub.ptr.rhs.cast454 = ptrtoint i8* %.pre6473 to i64, !dbg !1578
  %sub.ptr.sub455 = sub i64 %sub.ptr.lhs.cast453, %sub.ptr.rhs.cast454, !dbg !1578
  %add456 = add nsw i64 %sub.ptr.sub455, 3, !dbg !1578
  %41 = load i64* %allocated, align 8, !dbg !1578, !tbaa !713
  %cmp458 = icmp ugt i64 %add456, %41, !dbg !1578
  br i1 %cmp458, label %do.body461, label %while.end526, !dbg !1578

do.body461:                                       ; preds = %while.cond451
  call void @llvm.dbg.value(metadata !{i8* %.pre6473}, i64 0, metadata !325), !dbg !1579
  %cmp465 = icmp eq i64 %41, 65536, !dbg !1579
  br i1 %cmp465, label %return, label %if.end468, !dbg !1579

if.end468:                                        ; preds = %do.body461
  %shl470 = shl i64 %41, 1, !dbg !1579
  %cmp472 = icmp ugt i64 %shl470, 65536, !dbg !1579
  %.shl470 = select i1 %cmp472, i64 65536, i64 %shl470, !dbg !1579
  store i64 %.shl470, i64* %allocated, align 8, !dbg !1579, !tbaa !713
  %call479 = call i8* @realloc(i8* %.pre6473, i64 %.shl470) #7, !dbg !1579
  store i8* %call479, i8** %buffer25, align 8, !dbg !1579, !tbaa !722
  %cmp482 = icmp eq i8* %call479, null, !dbg !1579
  br i1 %cmp482, label %return, label %if.end485, !dbg !1579

if.end485:                                        ; preds = %if.end468
  %cmp487 = icmp eq i8* %.pre6473, %call479, !dbg !1579
  br i1 %cmp487, label %while.cond451, label %if.then489, !dbg !1579

if.then489:                                       ; preds = %if.end485
  %add.ptr494 = getelementptr inbounds i8* %call479, i64 %sub.ptr.sub455, !dbg !1580
  call void @llvm.dbg.value(metadata !{i8* %add.ptr494}, i64 0, metadata !279), !dbg !1580
  %sub.ptr.lhs.cast495 = ptrtoint i8* %begalt.4.ph5538 to i64, !dbg !1580
  %sub.ptr.sub497 = sub i64 %sub.ptr.lhs.cast495, %sub.ptr.rhs.cast454, !dbg !1580
  %add.ptr499 = getelementptr inbounds i8* %call479, i64 %sub.ptr.sub497, !dbg !1580
  call void @llvm.dbg.value(metadata !{i8* %add.ptr499}, i64 0, metadata !304), !dbg !1580
  %tobool500 = icmp eq i8* %fixup_alt_jump.7.ph5537, null, !dbg !1580
  br i1 %tobool500, label %if.end507, label %if.then501, !dbg !1580

if.then501:                                       ; preds = %if.then489
  %sub.ptr.lhs.cast502 = ptrtoint i8* %fixup_alt_jump.7.ph5537 to i64, !dbg !1580
  %sub.ptr.sub504 = sub i64 %sub.ptr.lhs.cast502, %sub.ptr.rhs.cast454, !dbg !1580
  %add.ptr506 = getelementptr inbounds i8* %call479, i64 %sub.ptr.sub504, !dbg !1580
  call void @llvm.dbg.value(metadata !{i8* %add.ptr506}, i64 0, metadata !306), !dbg !1580
  br label %if.end507, !dbg !1580

if.end507:                                        ; preds = %if.then489, %if.then501
  %fixup_alt_jump.8 = phi i8* [ %add.ptr506, %if.then501 ], [ null, %if.then489 ]
  %tobool508 = icmp eq i8* %laststart.7.ph5539, null, !dbg !1580
  br i1 %tobool508, label %if.end515, label %if.then509, !dbg !1580

if.then509:                                       ; preds = %if.end507
  %sub.ptr.lhs.cast510 = ptrtoint i8* %laststart.7.ph5539 to i64, !dbg !1580
  %sub.ptr.sub512 = sub i64 %sub.ptr.lhs.cast510, %sub.ptr.rhs.cast454, !dbg !1580
  %add.ptr514 = getelementptr inbounds i8* %call479, i64 %sub.ptr.sub512, !dbg !1580
  call void @llvm.dbg.value(metadata !{i8* %add.ptr514}, i64 0, metadata !303), !dbg !1580
  br label %if.end515, !dbg !1580

if.end515:                                        ; preds = %if.end507, %if.then509
  %laststart.8 = phi i8* [ %add.ptr514, %if.then509 ], [ null, %if.end507 ]
  %tobool516 = icmp eq i8* %pending_exact.4.ph5540, null, !dbg !1580
  br i1 %tobool516, label %while.cond451.outer, label %if.then517, !dbg !1580

if.then517:                                       ; preds = %if.end515
  %sub.ptr.lhs.cast518 = ptrtoint i8* %pending_exact.4.ph5540 to i64, !dbg !1580
  %sub.ptr.sub520 = sub i64 %sub.ptr.lhs.cast518, %sub.ptr.rhs.cast454, !dbg !1580
  %add.ptr522 = getelementptr inbounds i8* %call479, i64 %sub.ptr.sub520, !dbg !1580
  call void @llvm.dbg.value(metadata !{i8* %add.ptr522}, i64 0, metadata !302), !dbg !1580
  br label %while.cond451.outer, !dbg !1580

while.end526:                                     ; preds = %while.cond451
  %tobool528 = icmp ne i8 %keep_string_p.1.ph, 0, !dbg !1582
  %add.ptr530 = getelementptr inbounds i8* %b.4.ph5541, i64 3, !dbg !1582
  %sub.ptr.lhs.cast531 = ptrtoint i8* %add.ptr530 to i64, !dbg !1582
  %sub.ptr.rhs.cast532 = ptrtoint i8* %laststart.7.ph5539 to i64, !dbg !1582
  %sub.ptr.sub533 = sub i64 %sub.ptr.lhs.cast531, %sub.ptr.rhs.cast532, !dbg !1582
  %sub534 = add nsw i64 %sub.ptr.sub533, 4294967293, !dbg !1582
  %conv535 = trunc i64 %sub534 to i32, !dbg !1582
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.7.ph5539}, i64 0, metadata !1583), !dbg !1584
  tail call void @llvm.dbg.value(metadata !{i32 %conv535}, i64 0, metadata !1585), !dbg !1586
  tail call void @llvm.dbg.value(metadata !{i8* %b.4.ph5541}, i64 0, metadata !1587), !dbg !1588
  tail call void @llvm.dbg.value(metadata !{i8* %b.4.ph5541}, i64 0, metadata !1589), !dbg !1590
  %cmp5.i5280 = icmp eq i8* %b.4.ph5541, %laststart.7.ph5539, !dbg !1591
  br i1 %cmp5.i5280, label %insert_op1.exit5294, label %while.body.i5288, !dbg !1591

while.body.i5288:                                 ; preds = %while.end526, %while.body.i5288
  %pto.07.i5283 = phi i8* [ %incdec.ptr1.i5286, %while.body.i5288 ], [ %add.ptr530, %while.end526 ]
  %pfrom.06.i5284 = phi i8* [ %incdec.ptr.i5285, %while.body.i5288 ], [ %b.4.ph5541, %while.end526 ]
  %incdec.ptr.i5285 = getelementptr inbounds i8* %pfrom.06.i5284, i64 -1, !dbg !1592
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i5285}, i64 0, metadata !1589), !dbg !1592
  %42 = load i8* %incdec.ptr.i5285, align 1, !dbg !1592, !tbaa !714
  %incdec.ptr1.i5286 = getelementptr inbounds i8* %pto.07.i5283, i64 -1, !dbg !1592
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i5286}, i64 0, metadata !1593), !dbg !1592
  store i8 %42, i8* %incdec.ptr1.i5286, align 1, !dbg !1592, !tbaa !714
  %cmp.i5287 = icmp eq i8* %incdec.ptr.i5285, %laststart.7.ph5539, !dbg !1591
  br i1 %cmp.i5287, label %insert_op1.exit5294, label %while.body.i5288, !dbg !1591

insert_op1.exit5294:                              ; preds = %while.body.i5288, %while.end526
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.7.ph5539}, i64 0, metadata !1594), !dbg !1596
  tail call void @llvm.dbg.value(metadata !{i32 %conv535}, i64 0, metadata !1597), !dbg !1598
  %conv.i.i = select i1 %tobool528, i8 16, i8 15, !dbg !1599
  store i8 %conv.i.i, i8* %laststart.7.ph5539, align 1, !dbg !1599, !tbaa !714
  %conv1.i.i5289 = trunc i64 %sub534 to i8, !dbg !1600
  %add.ptr.i.i5290 = getelementptr inbounds i8* %laststart.7.ph5539, i64 1, !dbg !1600
  store i8 %conv1.i.i5289, i8* %add.ptr.i.i5290, align 1, !dbg !1600, !tbaa !714
  %shr8.i.i5291 = lshr i32 %conv535, 8, !dbg !1600
  %conv2.i.i5292 = trunc i32 %shr8.i.i5291 to i8, !dbg !1600
  %arrayidx4.i.i5293 = getelementptr inbounds i8* %laststart.7.ph5539, i64 2, !dbg !1600
  store i8 %conv2.i.i5292, i8* %arrayidx4.i.i5293, align 1, !dbg !1600, !tbaa !714
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !302), !dbg !1601
  call void @llvm.dbg.value(metadata !{i8* %add.ptr530}, i64 0, metadata !279), !dbg !1602
  %tobool537 = icmp eq i8 %conv2345506, 0, !dbg !1603
  br i1 %tobool537, label %while.cond539.preheader, label %while.cond.backedge, !dbg !1603

while.cond539.preheader:                          ; preds = %insert_op1.exit5294
  %.pre6474.pre = load i8** %buffer25, align 8, !dbg !1604, !tbaa !722
  br label %while.cond539.outer, !dbg !1604

while.cond539.outer:                              ; preds = %if.then597, %if.end595, %while.cond539.preheader
  %.pre6474 = phi i8* [ %.pre6474.pre, %while.cond539.preheader ], [ %call567, %if.end595 ], [ %call567, %if.then597 ]
  %fixup_alt_jump.9.ph = phi i8* [ %fixup_alt_jump.7.ph5537, %while.cond539.preheader ], [ %fixup_alt_jump.10, %if.end595 ], [ %fixup_alt_jump.10, %if.then597 ]
  %begalt.5.ph = phi i8* [ %begalt.4.ph5538, %while.cond539.preheader ], [ %add.ptr587, %if.end595 ], [ %add.ptr587, %if.then597 ]
  %laststart.9.ph = phi i8* [ %laststart.7.ph5539, %while.cond539.preheader ], [ null, %if.end595 ], [ %add.ptr602, %if.then597 ]
  %b.5.ph = phi i8* [ %add.ptr530, %while.cond539.preheader ], [ %add.ptr582, %if.end595 ], [ %add.ptr582, %if.then597 ]
  %sub.ptr.lhs.cast541 = ptrtoint i8* %b.5.ph to i64, !dbg !1604
  br label %while.cond539

while.cond539:                                    ; preds = %while.cond539.outer, %if.end573
  %sub.ptr.rhs.cast542 = ptrtoint i8* %.pre6474 to i64, !dbg !1604
  %sub.ptr.sub543 = sub i64 %sub.ptr.lhs.cast541, %sub.ptr.rhs.cast542, !dbg !1604
  %add544 = add nsw i64 %sub.ptr.sub543, 3, !dbg !1604
  %43 = load i64* %allocated, align 8, !dbg !1604, !tbaa !713
  %cmp546 = icmp ugt i64 %add544, %43, !dbg !1604
  br i1 %cmp546, label %do.body549, label %while.end614, !dbg !1604

do.body549:                                       ; preds = %while.cond539
  call void @llvm.dbg.value(metadata !{i8* %.pre6474}, i64 0, metadata !327), !dbg !1605
  %cmp553 = icmp eq i64 %43, 65536, !dbg !1605
  br i1 %cmp553, label %return, label %if.end556, !dbg !1605

if.end556:                                        ; preds = %do.body549
  %shl558 = shl i64 %43, 1, !dbg !1605
  %cmp560 = icmp ugt i64 %shl558, 65536, !dbg !1605
  %.shl558 = select i1 %cmp560, i64 65536, i64 %shl558, !dbg !1605
  store i64 %.shl558, i64* %allocated, align 8, !dbg !1605, !tbaa !713
  %call567 = call i8* @realloc(i8* %.pre6474, i64 %.shl558) #7, !dbg !1605
  store i8* %call567, i8** %buffer25, align 8, !dbg !1605, !tbaa !722
  %cmp570 = icmp eq i8* %call567, null, !dbg !1605
  br i1 %cmp570, label %return, label %if.end573, !dbg !1605

if.end573:                                        ; preds = %if.end556
  %cmp575 = icmp eq i8* %.pre6474, %call567, !dbg !1605
  br i1 %cmp575, label %while.cond539, label %if.then577, !dbg !1605

if.then577:                                       ; preds = %if.end573
  %add.ptr582 = getelementptr inbounds i8* %call567, i64 %sub.ptr.sub543, !dbg !1606
  call void @llvm.dbg.value(metadata !{i8* %add.ptr582}, i64 0, metadata !279), !dbg !1606
  %sub.ptr.lhs.cast583 = ptrtoint i8* %begalt.5.ph to i64, !dbg !1606
  %sub.ptr.sub585 = sub i64 %sub.ptr.lhs.cast583, %sub.ptr.rhs.cast542, !dbg !1606
  %add.ptr587 = getelementptr inbounds i8* %call567, i64 %sub.ptr.sub585, !dbg !1606
  call void @llvm.dbg.value(metadata !{i8* %add.ptr587}, i64 0, metadata !304), !dbg !1606
  %tobool588 = icmp eq i8* %fixup_alt_jump.9.ph, null, !dbg !1606
  br i1 %tobool588, label %if.end595, label %if.then589, !dbg !1606

if.then589:                                       ; preds = %if.then577
  %sub.ptr.lhs.cast590 = ptrtoint i8* %fixup_alt_jump.9.ph to i64, !dbg !1606
  %sub.ptr.sub592 = sub i64 %sub.ptr.lhs.cast590, %sub.ptr.rhs.cast542, !dbg !1606
  %add.ptr594 = getelementptr inbounds i8* %call567, i64 %sub.ptr.sub592, !dbg !1606
  call void @llvm.dbg.value(metadata !{i8* %add.ptr594}, i64 0, metadata !306), !dbg !1606
  br label %if.end595, !dbg !1606

if.end595:                                        ; preds = %if.then577, %if.then589
  %fixup_alt_jump.10 = phi i8* [ %add.ptr594, %if.then589 ], [ null, %if.then577 ]
  %tobool596 = icmp eq i8* %laststart.9.ph, null, !dbg !1606
  br i1 %tobool596, label %while.cond539.outer, label %if.then597, !dbg !1606

if.then597:                                       ; preds = %if.end595
  %sub.ptr.lhs.cast598 = ptrtoint i8* %laststart.9.ph to i64, !dbg !1606
  %sub.ptr.sub600 = sub i64 %sub.ptr.lhs.cast598, %sub.ptr.rhs.cast542, !dbg !1606
  %add.ptr602 = getelementptr inbounds i8* %call567, i64 %sub.ptr.sub600, !dbg !1606
  call void @llvm.dbg.value(metadata !{i8* %add.ptr602}, i64 0, metadata !303), !dbg !1606
  br label %while.cond539.outer, !dbg !1606

while.end614:                                     ; preds = %while.cond539
  tail call void @llvm.dbg.value(metadata !1608, i64 0, metadata !1609), !dbg !1611
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.9.ph}, i64 0, metadata !1612), !dbg !1613
  tail call void @llvm.dbg.value(metadata !1614, i64 0, metadata !1615), !dbg !1616
  tail call void @llvm.dbg.value(metadata !{i8* %b.5.ph}, i64 0, metadata !1617), !dbg !1618
  tail call void @llvm.dbg.value(metadata !{i8* %b.5.ph}, i64 0, metadata !1619), !dbg !1620
  %cmp5.i5268 = icmp eq i8* %b.5.ph, %laststart.9.ph, !dbg !1621
  %add.ptr621.pre = getelementptr inbounds i8* %b.5.ph, i64 3, !dbg !1622
  br i1 %cmp5.i5268, label %insert_op1.exit5279, label %while.body.i5276, !dbg !1621

while.body.i5276:                                 ; preds = %while.end614, %while.body.i5276
  %pto.07.i5271 = phi i8* [ %incdec.ptr1.i5274, %while.body.i5276 ], [ %add.ptr621.pre, %while.end614 ]
  %pfrom.06.i5272 = phi i8* [ %incdec.ptr.i5273, %while.body.i5276 ], [ %b.5.ph, %while.end614 ]
  %incdec.ptr.i5273 = getelementptr inbounds i8* %pfrom.06.i5272, i64 -1, !dbg !1623
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i5273}, i64 0, metadata !1619), !dbg !1623
  %44 = load i8* %incdec.ptr.i5273, align 1, !dbg !1623, !tbaa !714
  %incdec.ptr1.i5274 = getelementptr inbounds i8* %pto.07.i5271, i64 -1, !dbg !1623
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i5274}, i64 0, metadata !1624), !dbg !1623
  store i8 %44, i8* %incdec.ptr1.i5274, align 1, !dbg !1623, !tbaa !714
  %cmp.i5275 = icmp eq i8* %incdec.ptr.i5273, %laststart.9.ph, !dbg !1621
  br i1 %cmp.i5275, label %insert_op1.exit5279, label %while.body.i5276, !dbg !1621

insert_op1.exit5279:                              ; preds = %while.end614, %while.body.i5276
  tail call void @llvm.dbg.value(metadata !1608, i64 0, metadata !1625), !dbg !1627
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.9.ph}, i64 0, metadata !1628), !dbg !1629
  tail call void @llvm.dbg.value(metadata !1614, i64 0, metadata !1630), !dbg !1631
  store i8 19, i8* %laststart.9.ph, align 1, !dbg !1632, !tbaa !714
  %add.ptr.i.i5277 = getelementptr inbounds i8* %laststart.9.ph, i64 1, !dbg !1633
  store i8 3, i8* %add.ptr.i.i5277, align 1, !dbg !1633, !tbaa !714
  %arrayidx4.i.i5278 = getelementptr inbounds i8* %laststart.9.ph, i64 2, !dbg !1633
  store i8 0, i8* %arrayidx4.i.i5278, align 1, !dbg !1633, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %add.ptr621.pre}, i64 0, metadata !279), !dbg !1622
  br label %while.cond.backedge, !dbg !1634

while.cond625:                                    ; preds = %if.end659, %while.cond625.outer
  %sub.ptr.rhs.cast628 = ptrtoint i8* %.pre6492 to i64, !dbg !1493
  %sub.ptr.sub629 = sub i64 %sub.ptr.lhs.cast627, %sub.ptr.rhs.cast628, !dbg !1493
  %add630 = add nsw i64 %sub.ptr.sub629, 1, !dbg !1493
  %45 = load i64* %allocated, align 8, !dbg !1493, !tbaa !713
  %cmp632 = icmp ugt i64 %add630, %45, !dbg !1493
  br i1 %cmp632, label %do.body635, label %while.end700, !dbg !1493

do.body635:                                       ; preds = %while.cond625
  call void @llvm.dbg.value(metadata !{i8* %.pre6492}, i64 0, metadata !330), !dbg !1635
  %cmp639 = icmp eq i64 %45, 65536, !dbg !1635
  br i1 %cmp639, label %return, label %if.end642, !dbg !1635

if.end642:                                        ; preds = %do.body635
  %shl644 = shl i64 %45, 1, !dbg !1635
  %cmp646 = icmp ugt i64 %shl644, 65536, !dbg !1635
  %.shl644 = select i1 %cmp646, i64 65536, i64 %shl644, !dbg !1635
  store i64 %.shl644, i64* %allocated, align 8, !dbg !1635, !tbaa !713
  %call653 = call i8* @realloc(i8* %.pre6492, i64 %.shl644) #7, !dbg !1635
  store i8* %call653, i8** %buffer25, align 8, !dbg !1635, !tbaa !722
  %cmp656 = icmp eq i8* %call653, null, !dbg !1635
  br i1 %cmp656, label %return, label %if.end659, !dbg !1635

if.end659:                                        ; preds = %if.end642
  %cmp661 = icmp eq i8* %.pre6492, %call653, !dbg !1635
  br i1 %cmp661, label %while.cond625, label %if.then663, !dbg !1635

if.then663:                                       ; preds = %if.end659
  %add.ptr668 = getelementptr inbounds i8* %call653, i64 %sub.ptr.sub629, !dbg !1636
  call void @llvm.dbg.value(metadata !{i8* %add.ptr668}, i64 0, metadata !279), !dbg !1636
  %sub.ptr.lhs.cast669 = ptrtoint i8* %begalt.6.ph to i64, !dbg !1636
  %sub.ptr.sub671 = sub i64 %sub.ptr.lhs.cast669, %sub.ptr.rhs.cast628, !dbg !1636
  %add.ptr673 = getelementptr inbounds i8* %call653, i64 %sub.ptr.sub671, !dbg !1636
  call void @llvm.dbg.value(metadata !{i8* %add.ptr673}, i64 0, metadata !304), !dbg !1636
  %tobool674 = icmp eq i8* %fixup_alt_jump.11.ph, null, !dbg !1636
  br i1 %tobool674, label %if.end681, label %if.then675, !dbg !1636

if.then675:                                       ; preds = %if.then663
  %sub.ptr.lhs.cast676 = ptrtoint i8* %fixup_alt_jump.11.ph to i64, !dbg !1636
  %sub.ptr.sub678 = sub i64 %sub.ptr.lhs.cast676, %sub.ptr.rhs.cast628, !dbg !1636
  %add.ptr680 = getelementptr inbounds i8* %call653, i64 %sub.ptr.sub678, !dbg !1636
  call void @llvm.dbg.value(metadata !{i8* %add.ptr680}, i64 0, metadata !306), !dbg !1636
  br label %if.end681, !dbg !1636

if.end681:                                        ; preds = %if.then663, %if.then675
  %fixup_alt_jump.12 = phi i8* [ %add.ptr680, %if.then675 ], [ null, %if.then663 ]
  %tobool682 = icmp eq i8* %laststart.11.ph, null, !dbg !1636
  br i1 %tobool682, label %if.end689, label %if.then683, !dbg !1636

if.then683:                                       ; preds = %if.end681
  %sub.ptr.lhs.cast684 = ptrtoint i8* %laststart.11.ph to i64, !dbg !1636
  %sub.ptr.sub686 = sub i64 %sub.ptr.lhs.cast684, %sub.ptr.rhs.cast628, !dbg !1636
  %add.ptr688 = getelementptr inbounds i8* %call653, i64 %sub.ptr.sub686, !dbg !1636
  call void @llvm.dbg.value(metadata !{i8* %add.ptr688}, i64 0, metadata !303), !dbg !1636
  br label %if.end689, !dbg !1636

if.end689:                                        ; preds = %if.end681, %if.then683
  %laststart.12 = phi i8* [ %add.ptr688, %if.then683 ], [ null, %if.end681 ]
  %tobool690 = icmp eq i8* %pending_exact.6.ph, null, !dbg !1636
  br i1 %tobool690, label %while.cond625.outer, label %if.then691, !dbg !1636

while.cond625.outer:                              ; preds = %if.end689, %if.then691, %while.cond625.preheader
  %.pre6492 = phi i8* [ %.pre6492.pre, %while.cond625.preheader ], [ %call653, %if.then691 ], [ %call653, %if.end689 ]
  %fixup_alt_jump.11.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond625.preheader ], [ %fixup_alt_jump.12, %if.then691 ], [ %fixup_alt_jump.12, %if.end689 ]
  %begalt.6.ph = phi i8* [ %begalt.06105, %while.cond625.preheader ], [ %add.ptr673, %if.then691 ], [ %add.ptr673, %if.end689 ]
  %laststart.11.ph = phi i8* [ %b.06123, %while.cond625.preheader ], [ %laststart.12, %if.then691 ], [ %laststart.12, %if.end689 ]
  %pending_exact.6.ph = phi i8* [ %pending_exact.06110, %while.cond625.preheader ], [ %add.ptr696, %if.then691 ], [ null, %if.end689 ]
  %b.6.ph = phi i8* [ %b.06123, %while.cond625.preheader ], [ %add.ptr668, %if.then691 ], [ %add.ptr668, %if.end689 ]
  %sub.ptr.lhs.cast627 = ptrtoint i8* %b.6.ph to i64, !dbg !1493
  br label %while.cond625

if.then691:                                       ; preds = %if.end689
  %sub.ptr.lhs.cast692 = ptrtoint i8* %pending_exact.6.ph to i64, !dbg !1636
  %sub.ptr.sub694 = sub i64 %sub.ptr.lhs.cast692, %sub.ptr.rhs.cast628, !dbg !1636
  %add.ptr696 = getelementptr inbounds i8* %call653, i64 %sub.ptr.sub694, !dbg !1636
  call void @llvm.dbg.value(metadata !{i8* %add.ptr696}, i64 0, metadata !302), !dbg !1636
  br label %while.cond625.outer, !dbg !1636

while.end700:                                     ; preds = %while.cond625
  %incdec.ptr701 = getelementptr inbounds i8* %b.6.ph, i64 1, !dbg !1493
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr701}, i64 0, metadata !279), !dbg !1493
  store i8 3, i8* %b.6.ph, align 1, !dbg !1493, !tbaa !714
  br label %while.cond.backedge, !dbg !1638

sw.bb703:                                         ; preds = %do.end
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !333), !dbg !1639
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1640
  %cmp704 = icmp eq i8* %incdec.ptr, %add.ptr, !dbg !1640
  br i1 %cmp704, label %if.then706, label %while.cond709.preheader, !dbg !1640

while.cond709.preheader:                          ; preds = %sw.bb703
  %.pre6475.pre = load i8** %buffer25, align 8, !dbg !1641, !tbaa !722
  br label %while.cond709.outer, !dbg !1641

if.then706:                                       ; preds = %sw.bb703
  %46 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1640
  call void @free(i8* %46) #7, !dbg !1640
  br label %return, !dbg !1640

while.cond709:                                    ; preds = %if.end743, %while.cond709.outer
  %sub.ptr.rhs.cast712 = ptrtoint i8* %.pre6475 to i64, !dbg !1641
  %sub.ptr.sub713 = sub i64 %sub.ptr.lhs.cast711, %sub.ptr.rhs.cast712, !dbg !1641
  %add714 = add nsw i64 %sub.ptr.sub713, 34, !dbg !1641
  %47 = load i64* %allocated, align 8, !dbg !1641, !tbaa !713
  %cmp716 = icmp ugt i64 %add714, %47, !dbg !1641
  br i1 %cmp716, label %do.body719, label %while.cond786.outer, !dbg !1641

do.body719:                                       ; preds = %while.cond709
  call void @llvm.dbg.value(metadata !{i8* %.pre6475}, i64 0, metadata !335), !dbg !1642
  %cmp723 = icmp eq i64 %47, 65536, !dbg !1642
  br i1 %cmp723, label %return, label %if.end726, !dbg !1642

if.end726:                                        ; preds = %do.body719
  %shl728 = shl i64 %47, 1, !dbg !1642
  %cmp730 = icmp ugt i64 %shl728, 65536, !dbg !1642
  %.shl728 = select i1 %cmp730, i64 65536, i64 %shl728, !dbg !1642
  store i64 %.shl728, i64* %allocated, align 8, !dbg !1642, !tbaa !713
  %call737 = call i8* @realloc(i8* %.pre6475, i64 %.shl728) #7, !dbg !1642
  store i8* %call737, i8** %buffer25, align 8, !dbg !1642, !tbaa !722
  %cmp740 = icmp eq i8* %call737, null, !dbg !1642
  br i1 %cmp740, label %return, label %if.end743, !dbg !1642

if.end743:                                        ; preds = %if.end726
  %cmp745 = icmp eq i8* %.pre6475, %call737, !dbg !1642
  br i1 %cmp745, label %while.cond709, label %if.then747, !dbg !1642

if.then747:                                       ; preds = %if.end743
  %add.ptr752 = getelementptr inbounds i8* %call737, i64 %sub.ptr.sub713, !dbg !1643
  call void @llvm.dbg.value(metadata !{i8* %add.ptr752}, i64 0, metadata !279), !dbg !1643
  %sub.ptr.lhs.cast753 = ptrtoint i8* %begalt.7.ph to i64, !dbg !1643
  %sub.ptr.sub755 = sub i64 %sub.ptr.lhs.cast753, %sub.ptr.rhs.cast712, !dbg !1643
  %add.ptr757 = getelementptr inbounds i8* %call737, i64 %sub.ptr.sub755, !dbg !1643
  call void @llvm.dbg.value(metadata !{i8* %add.ptr757}, i64 0, metadata !304), !dbg !1643
  %tobool758 = icmp eq i8* %fixup_alt_jump.13.ph, null, !dbg !1643
  br i1 %tobool758, label %if.end765, label %if.then759, !dbg !1643

if.then759:                                       ; preds = %if.then747
  %sub.ptr.lhs.cast760 = ptrtoint i8* %fixup_alt_jump.13.ph to i64, !dbg !1643
  %sub.ptr.sub762 = sub i64 %sub.ptr.lhs.cast760, %sub.ptr.rhs.cast712, !dbg !1643
  %add.ptr764 = getelementptr inbounds i8* %call737, i64 %sub.ptr.sub762, !dbg !1643
  call void @llvm.dbg.value(metadata !{i8* %add.ptr764}, i64 0, metadata !306), !dbg !1643
  br label %if.end765, !dbg !1643

if.end765:                                        ; preds = %if.then747, %if.then759
  %fixup_alt_jump.14 = phi i8* [ %add.ptr764, %if.then759 ], [ null, %if.then747 ]
  %tobool766 = icmp eq i8* %laststart.13.ph, null, !dbg !1643
  br i1 %tobool766, label %if.end773, label %if.then767, !dbg !1643

if.then767:                                       ; preds = %if.end765
  %sub.ptr.lhs.cast768 = ptrtoint i8* %laststart.13.ph to i64, !dbg !1643
  %sub.ptr.sub770 = sub i64 %sub.ptr.lhs.cast768, %sub.ptr.rhs.cast712, !dbg !1643
  %add.ptr772 = getelementptr inbounds i8* %call737, i64 %sub.ptr.sub770, !dbg !1643
  call void @llvm.dbg.value(metadata !{i8* %add.ptr772}, i64 0, metadata !303), !dbg !1643
  br label %if.end773, !dbg !1643

if.end773:                                        ; preds = %if.end765, %if.then767
  %laststart.14 = phi i8* [ %add.ptr772, %if.then767 ], [ null, %if.end765 ]
  %tobool774 = icmp eq i8* %pending_exact.7.ph, null, !dbg !1643
  br i1 %tobool774, label %while.cond709.outer, label %if.then775, !dbg !1643

while.cond709.outer:                              ; preds = %if.end773, %if.then775, %while.cond709.preheader
  %.pre6475 = phi i8* [ %.pre6475.pre, %while.cond709.preheader ], [ %call737, %if.then775 ], [ %call737, %if.end773 ]
  %fixup_alt_jump.13.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond709.preheader ], [ %fixup_alt_jump.14, %if.then775 ], [ %fixup_alt_jump.14, %if.end773 ]
  %begalt.7.ph = phi i8* [ %begalt.06105, %while.cond709.preheader ], [ %add.ptr757, %if.then775 ], [ %add.ptr757, %if.end773 ]
  %laststart.13.ph = phi i8* [ %laststart.06108, %while.cond709.preheader ], [ %laststart.14, %if.then775 ], [ %laststart.14, %if.end773 ]
  %pending_exact.7.ph = phi i8* [ %pending_exact.06110, %while.cond709.preheader ], [ %add.ptr780, %if.then775 ], [ null, %if.end773 ]
  %b.7.ph = phi i8* [ %b.06123, %while.cond709.preheader ], [ %add.ptr752, %if.then775 ], [ %add.ptr752, %if.end773 ]
  %sub.ptr.lhs.cast711 = ptrtoint i8* %b.7.ph to i64, !dbg !1641
  br label %while.cond709

if.then775:                                       ; preds = %if.end773
  %sub.ptr.lhs.cast776 = ptrtoint i8* %pending_exact.7.ph to i64, !dbg !1643
  %sub.ptr.sub778 = sub i64 %sub.ptr.lhs.cast776, %sub.ptr.rhs.cast712, !dbg !1643
  %add.ptr780 = getelementptr inbounds i8* %call737, i64 %sub.ptr.sub778, !dbg !1643
  call void @llvm.dbg.value(metadata !{i8* %add.ptr780}, i64 0, metadata !302), !dbg !1643
  br label %while.cond709.outer, !dbg !1643

while.cond786.outer:                              ; preds = %if.end850, %if.then852, %while.cond709
  %48 = phi i8* [ %.pre6475, %while.cond709 ], [ %call814, %if.then852 ], [ %call814, %if.end850 ]
  %fixup_alt_jump.15.ph = phi i8* [ %fixup_alt_jump.13.ph, %while.cond709 ], [ %fixup_alt_jump.16, %if.then852 ], [ %fixup_alt_jump.16, %if.end850 ]
  %begalt.8.ph = phi i8* [ %begalt.7.ph, %while.cond709 ], [ %add.ptr834, %if.then852 ], [ %add.ptr834, %if.end850 ]
  %laststart.15.ph = phi i8* [ %b.7.ph, %while.cond709 ], [ %laststart.16, %if.then852 ], [ %laststart.16, %if.end850 ]
  %pending_exact.8.ph = phi i8* [ %pending_exact.7.ph, %while.cond709 ], [ %add.ptr857, %if.then852 ], [ null, %if.end850 ]
  %b.8.ph = phi i8* [ %b.7.ph, %while.cond709 ], [ %add.ptr829, %if.then852 ], [ %add.ptr829, %if.end850 ]
  %sub.ptr.lhs.cast788 = ptrtoint i8* %b.8.ph to i64, !dbg !1645
  br label %while.cond786

while.cond786:                                    ; preds = %if.end820, %while.cond786.outer
  %sub.ptr.rhs.cast789 = ptrtoint i8* %48 to i64, !dbg !1645
  %sub.ptr.sub790 = sub i64 %sub.ptr.lhs.cast788, %sub.ptr.rhs.cast789, !dbg !1645
  %add791 = add nsw i64 %sub.ptr.sub790, 1, !dbg !1645
  %49 = load i64* %allocated, align 8, !dbg !1645, !tbaa !713
  %cmp793 = icmp ugt i64 %add791, %49, !dbg !1645
  br i1 %cmp793, label %do.body796, label %while.end861, !dbg !1645

do.body796:                                       ; preds = %while.cond786
  call void @llvm.dbg.value(metadata !{i8* %48}, i64 0, metadata !337), !dbg !1646
  %cmp800 = icmp eq i64 %49, 65536, !dbg !1646
  br i1 %cmp800, label %return, label %if.end803, !dbg !1646

if.end803:                                        ; preds = %do.body796
  %shl805 = shl i64 %49, 1, !dbg !1646
  %cmp807 = icmp ugt i64 %shl805, 65536, !dbg !1646
  %.shl805 = select i1 %cmp807, i64 65536, i64 %shl805, !dbg !1646
  store i64 %.shl805, i64* %allocated, align 8, !dbg !1646, !tbaa !713
  %call814 = call i8* @realloc(i8* %48, i64 %.shl805) #7, !dbg !1646
  store i8* %call814, i8** %buffer25, align 8, !dbg !1646, !tbaa !722
  %cmp817 = icmp eq i8* %call814, null, !dbg !1646
  br i1 %cmp817, label %return, label %if.end820, !dbg !1646

if.end820:                                        ; preds = %if.end803
  %cmp822 = icmp eq i8* %48, %call814, !dbg !1646
  br i1 %cmp822, label %while.cond786, label %if.then824, !dbg !1646

if.then824:                                       ; preds = %if.end820
  %add.ptr829 = getelementptr inbounds i8* %call814, i64 %sub.ptr.sub790, !dbg !1647
  call void @llvm.dbg.value(metadata !{i8* %add.ptr829}, i64 0, metadata !279), !dbg !1647
  %sub.ptr.lhs.cast830 = ptrtoint i8* %begalt.8.ph to i64, !dbg !1647
  %sub.ptr.sub832 = sub i64 %sub.ptr.lhs.cast830, %sub.ptr.rhs.cast789, !dbg !1647
  %add.ptr834 = getelementptr inbounds i8* %call814, i64 %sub.ptr.sub832, !dbg !1647
  call void @llvm.dbg.value(metadata !{i8* %add.ptr834}, i64 0, metadata !304), !dbg !1647
  %tobool835 = icmp eq i8* %fixup_alt_jump.15.ph, null, !dbg !1647
  br i1 %tobool835, label %if.end842, label %if.then836, !dbg !1647

if.then836:                                       ; preds = %if.then824
  %sub.ptr.lhs.cast837 = ptrtoint i8* %fixup_alt_jump.15.ph to i64, !dbg !1647
  %sub.ptr.sub839 = sub i64 %sub.ptr.lhs.cast837, %sub.ptr.rhs.cast789, !dbg !1647
  %add.ptr841 = getelementptr inbounds i8* %call814, i64 %sub.ptr.sub839, !dbg !1647
  call void @llvm.dbg.value(metadata !{i8* %add.ptr841}, i64 0, metadata !306), !dbg !1647
  br label %if.end842, !dbg !1647

if.end842:                                        ; preds = %if.then824, %if.then836
  %fixup_alt_jump.16 = phi i8* [ %add.ptr841, %if.then836 ], [ null, %if.then824 ]
  %tobool843 = icmp eq i8* %laststart.15.ph, null, !dbg !1647
  br i1 %tobool843, label %if.end850, label %if.then844, !dbg !1647

if.then844:                                       ; preds = %if.end842
  %sub.ptr.lhs.cast845 = ptrtoint i8* %laststart.15.ph to i64, !dbg !1647
  %sub.ptr.sub847 = sub i64 %sub.ptr.lhs.cast845, %sub.ptr.rhs.cast789, !dbg !1647
  %add.ptr849 = getelementptr inbounds i8* %call814, i64 %sub.ptr.sub847, !dbg !1647
  call void @llvm.dbg.value(metadata !{i8* %add.ptr849}, i64 0, metadata !303), !dbg !1647
  br label %if.end850, !dbg !1647

if.end850:                                        ; preds = %if.end842, %if.then844
  %laststart.16 = phi i8* [ %add.ptr849, %if.then844 ], [ null, %if.end842 ]
  %tobool851 = icmp eq i8* %pending_exact.8.ph, null, !dbg !1647
  br i1 %tobool851, label %while.cond786.outer, label %if.then852, !dbg !1647

if.then852:                                       ; preds = %if.end850
  %sub.ptr.lhs.cast853 = ptrtoint i8* %pending_exact.8.ph to i64, !dbg !1647
  %sub.ptr.sub855 = sub i64 %sub.ptr.lhs.cast853, %sub.ptr.rhs.cast789, !dbg !1647
  %add.ptr857 = getelementptr inbounds i8* %call814, i64 %sub.ptr.sub855, !dbg !1647
  call void @llvm.dbg.value(metadata !{i8* %add.ptr857}, i64 0, metadata !302), !dbg !1647
  br label %while.cond786.outer, !dbg !1647

while.end861:                                     ; preds = %while.cond786
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1645
  %50 = load i8** %p, align 8, !dbg !1645, !tbaa !722
  %51 = load i8* %50, align 1, !dbg !1645, !tbaa !714
  %cmp863 = icmp eq i8 %51, 94, !dbg !1645
  %conv866 = select i1 %cmp863, i8 5, i8 4, !dbg !1645
  %incdec.ptr867 = getelementptr inbounds i8* %b.8.ph, i64 1, !dbg !1645
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr867}, i64 0, metadata !279), !dbg !1645
  store i8 %conv866, i8* %b.8.ph, align 1, !dbg !1645, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1649
  %52 = load i8** %p, align 8, !dbg !1649, !tbaa !722
  %53 = load i8* %52, align 1, !dbg !1649, !tbaa !714
  %cmp870 = icmp eq i8 %53, 94, !dbg !1649
  br i1 %cmp870, label %if.then872, label %if.end874, !dbg !1649

if.then872:                                       ; preds = %while.end861
  %incdec.ptr873 = getelementptr inbounds i8* %52, i64 1, !dbg !1650
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr873}, i64 0, metadata !299), !dbg !1650
  store i8* %incdec.ptr873, i8** %p, align 8, !dbg !1650, !tbaa !722
  br label %if.end874, !dbg !1650

if.end874:                                        ; preds = %if.then872, %while.end861
  %54 = phi i8* [ %incdec.ptr873, %if.then872 ], [ %52, %while.end861 ]
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1651
  call void @llvm.dbg.value(metadata !{i8* %54}, i64 0, metadata !278), !dbg !1651
  %.pre6476.pre = load i8** %buffer25, align 8, !dbg !1652, !tbaa !722
  br label %while.cond876.outer, !dbg !1652

while.cond876.outer:                              ; preds = %if.end940, %if.then942, %if.end874
  %.pre6476 = phi i8* [ %.pre6476.pre, %if.end874 ], [ %call904, %if.then942 ], [ %call904, %if.end940 ]
  %fixup_alt_jump.17.ph = phi i8* [ %fixup_alt_jump.15.ph, %if.end874 ], [ %fixup_alt_jump.18, %if.then942 ], [ %fixup_alt_jump.18, %if.end940 ]
  %begalt.9.ph = phi i8* [ %begalt.8.ph, %if.end874 ], [ %add.ptr924, %if.then942 ], [ %add.ptr924, %if.end940 ]
  %laststart.17.ph = phi i8* [ %laststart.15.ph, %if.end874 ], [ %laststart.18, %if.then942 ], [ %laststart.18, %if.end940 ]
  %pending_exact.9.ph = phi i8* [ %pending_exact.8.ph, %if.end874 ], [ %add.ptr947, %if.then942 ], [ null, %if.end940 ]
  %b.9.ph = phi i8* [ %incdec.ptr867, %if.end874 ], [ %add.ptr919, %if.then942 ], [ %add.ptr919, %if.end940 ]
  %sub.ptr.lhs.cast878 = ptrtoint i8* %b.9.ph to i64, !dbg !1652
  br label %while.cond876

while.cond876:                                    ; preds = %while.cond876.outer, %if.end910
  %sub.ptr.rhs.cast879 = ptrtoint i8* %.pre6476 to i64, !dbg !1652
  %sub.ptr.sub880 = sub i64 %sub.ptr.lhs.cast878, %sub.ptr.rhs.cast879, !dbg !1652
  %add881 = add nsw i64 %sub.ptr.sub880, 1, !dbg !1652
  %55 = load i64* %allocated, align 8, !dbg !1652, !tbaa !713
  %cmp883 = icmp ugt i64 %add881, %55, !dbg !1652
  br i1 %cmp883, label %do.body886, label %while.end951, !dbg !1652

do.body886:                                       ; preds = %while.cond876
  call void @llvm.dbg.value(metadata !{i8* %.pre6476}, i64 0, metadata !340), !dbg !1653
  %cmp890 = icmp eq i64 %55, 65536, !dbg !1653
  br i1 %cmp890, label %return, label %if.end893, !dbg !1653

if.end893:                                        ; preds = %do.body886
  %shl895 = shl i64 %55, 1, !dbg !1653
  %cmp897 = icmp ugt i64 %shl895, 65536, !dbg !1653
  %.shl895 = select i1 %cmp897, i64 65536, i64 %shl895, !dbg !1653
  store i64 %.shl895, i64* %allocated, align 8, !dbg !1653, !tbaa !713
  %call904 = call i8* @realloc(i8* %.pre6476, i64 %.shl895) #7, !dbg !1653
  store i8* %call904, i8** %buffer25, align 8, !dbg !1653, !tbaa !722
  %cmp907 = icmp eq i8* %call904, null, !dbg !1653
  br i1 %cmp907, label %return, label %if.end910, !dbg !1653

if.end910:                                        ; preds = %if.end893
  %cmp912 = icmp eq i8* %.pre6476, %call904, !dbg !1653
  br i1 %cmp912, label %while.cond876, label %if.then914, !dbg !1653

if.then914:                                       ; preds = %if.end910
  %add.ptr919 = getelementptr inbounds i8* %call904, i64 %sub.ptr.sub880, !dbg !1654
  call void @llvm.dbg.value(metadata !{i8* %add.ptr919}, i64 0, metadata !279), !dbg !1654
  %sub.ptr.lhs.cast920 = ptrtoint i8* %begalt.9.ph to i64, !dbg !1654
  %sub.ptr.sub922 = sub i64 %sub.ptr.lhs.cast920, %sub.ptr.rhs.cast879, !dbg !1654
  %add.ptr924 = getelementptr inbounds i8* %call904, i64 %sub.ptr.sub922, !dbg !1654
  call void @llvm.dbg.value(metadata !{i8* %add.ptr924}, i64 0, metadata !304), !dbg !1654
  %tobool925 = icmp eq i8* %fixup_alt_jump.17.ph, null, !dbg !1654
  br i1 %tobool925, label %if.end932, label %if.then926, !dbg !1654

if.then926:                                       ; preds = %if.then914
  %sub.ptr.lhs.cast927 = ptrtoint i8* %fixup_alt_jump.17.ph to i64, !dbg !1654
  %sub.ptr.sub929 = sub i64 %sub.ptr.lhs.cast927, %sub.ptr.rhs.cast879, !dbg !1654
  %add.ptr931 = getelementptr inbounds i8* %call904, i64 %sub.ptr.sub929, !dbg !1654
  call void @llvm.dbg.value(metadata !{i8* %add.ptr931}, i64 0, metadata !306), !dbg !1654
  br label %if.end932, !dbg !1654

if.end932:                                        ; preds = %if.then914, %if.then926
  %fixup_alt_jump.18 = phi i8* [ %add.ptr931, %if.then926 ], [ null, %if.then914 ]
  %tobool933 = icmp eq i8* %laststart.17.ph, null, !dbg !1654
  br i1 %tobool933, label %if.end940, label %if.then934, !dbg !1654

if.then934:                                       ; preds = %if.end932
  %sub.ptr.lhs.cast935 = ptrtoint i8* %laststart.17.ph to i64, !dbg !1654
  %sub.ptr.sub937 = sub i64 %sub.ptr.lhs.cast935, %sub.ptr.rhs.cast879, !dbg !1654
  %add.ptr939 = getelementptr inbounds i8* %call904, i64 %sub.ptr.sub937, !dbg !1654
  call void @llvm.dbg.value(metadata !{i8* %add.ptr939}, i64 0, metadata !303), !dbg !1654
  br label %if.end940, !dbg !1654

if.end940:                                        ; preds = %if.end932, %if.then934
  %laststart.18 = phi i8* [ %add.ptr939, %if.then934 ], [ null, %if.end932 ]
  %tobool941 = icmp eq i8* %pending_exact.9.ph, null, !dbg !1654
  br i1 %tobool941, label %while.cond876.outer, label %if.then942, !dbg !1654

if.then942:                                       ; preds = %if.end940
  %sub.ptr.lhs.cast943 = ptrtoint i8* %pending_exact.9.ph to i64, !dbg !1654
  %sub.ptr.sub945 = sub i64 %sub.ptr.lhs.cast943, %sub.ptr.rhs.cast879, !dbg !1654
  %add.ptr947 = getelementptr inbounds i8* %call904, i64 %sub.ptr.sub945, !dbg !1654
  call void @llvm.dbg.value(metadata !{i8* %add.ptr947}, i64 0, metadata !302), !dbg !1654
  br label %while.cond876.outer, !dbg !1654

while.end951:                                     ; preds = %while.cond876
  %incdec.ptr952 = getelementptr inbounds i8* %b.9.ph, i64 1, !dbg !1652
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr952}, i64 0, metadata !279), !dbg !1652
  store i8 32, i8* %b.9.ph, align 1, !dbg !1652, !tbaa !714
  call void @llvm.memset.p0i8.i64(i8* %incdec.ptr952, i8 0, i64 32, i32 1, i1 false), !dbg !1656
  %arrayidx954 = getelementptr inbounds i8* %b.9.ph, i64 -1, !dbg !1476
  %56 = load i8* %arrayidx954, align 1, !dbg !1476, !tbaa !714
  %cmp956.not = icmp ne i8 %56, 5, !dbg !1476
  %brmerge6540 = or i1 %cmp956.not, %tobool960, !dbg !1476
  br i1 %brmerge6540, label %for.cond967.preheader, label %if.then961, !dbg !1476

if.then961:                                       ; preds = %while.end951
  %arrayidx962 = getelementptr inbounds i8* %b.9.ph, i64 2, !dbg !1657
  store i8 4, i8* %arrayidx962, align 1, !dbg !1657, !tbaa !714
  br label %for.cond967.preheader, !dbg !1657

for.cond967.preheader:                            ; preds = %while.end951, %if.then961
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1658
  %57 = load i8** %p, align 8, !dbg !1658, !tbaa !722
  %cmp96854915669 = icmp eq i8* %57, %add.ptr, !dbg !1658
  br i1 %cmp96854915669, label %if.then970, label %if.end977.lr.ph.lr.ph, !dbg !1658

if.end977.lr.ph.lr.ph:                            ; preds = %for.cond967.preheader
  %add.ptr1022 = getelementptr inbounds i8* %54, i64 1, !dbg !1659
  %arrayidx1525 = getelementptr inbounds i8* %b.9.ph, i64 12, !dbg !1660
  %arrayidx1529 = getelementptr inbounds i8* %b.9.ph, i64 8, !dbg !1662
  br label %if.end977.lr.ph, !dbg !1658

if.end977.lr.ph:                                  ; preds = %if.end977.lr.ph.lr.ph, %for.cond967.outer.backedge
  %58 = phi i8* [ %57, %if.end977.lr.ph.lr.ph ], [ %128, %for.cond967.outer.backedge ]
  %had_char_class.0.ph5670 = phi i8 [ 0, %if.end977.lr.ph.lr.ph ], [ %had_char_class.0.ph.be, %for.cond967.outer.backedge ]
  %tobool1028 = icmp ne i8 %had_char_class.0.ph5670, 0, !dbg !1663
  br label %if.end977, !dbg !1658

if.then970:                                       ; preds = %for.cond967.outer.backedge, %for.cond967.preheader, %for.cond967.backedge
  %59 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1658
  call void @free(i8* %59) #7, !dbg !1658
  br label %return, !dbg !1658

if.end977:                                        ; preds = %if.end977.lr.ph, %for.cond967.backedge
  %60 = phi i8* [ %58, %if.end977.lr.ph ], [ %67, %for.cond967.backedge ]
  %incdec.ptr978 = getelementptr inbounds i8* %60, i64 1, !dbg !1664
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr978}, i64 0, metadata !299), !dbg !1664
  store i8* %incdec.ptr978, i8** %p, align 8, !dbg !1664, !tbaa !722
  %61 = load i8* %60, align 1, !dbg !1664, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %61}, i64 0, metadata !276), !dbg !1664
  br i1 %tobool30, label %if.then980, label %do.end984, !dbg !1664

if.then980:                                       ; preds = %if.end977
  %idxprom981 = zext i8 %61 to i64, !dbg !1664
  %arrayidx982 = getelementptr inbounds i8* %0, i64 %idxprom981, !dbg !1664
  %62 = load i8* %arrayidx982, align 1, !dbg !1664, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %62}, i64 0, metadata !276), !dbg !1664
  br label %do.end984, !dbg !1664

do.end984:                                        ; preds = %if.end977, %if.then980
  %c.4 = phi i8 [ %62, %if.then980 ], [ %61, %if.end977 ]
  %cmp989 = icmp eq i8 %c.4, 92, !dbg !1477
  %or.cond5153 = and i1 %tobool986, %cmp989, !dbg !1477
  br i1 %or.cond5153, label %if.then991, label %if.end1017, !dbg !1477

if.then991:                                       ; preds = %do.end984
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1666
  %cmp992 = icmp eq i8* %incdec.ptr978, %add.ptr, !dbg !1666
  br i1 %cmp992, label %if.then994, label %if.end1001, !dbg !1666

if.then994:                                       ; preds = %if.then991
  %63 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1666
  call void @free(i8* %63) #7, !dbg !1666
  br label %return, !dbg !1666

if.end1001:                                       ; preds = %if.then991
  %incdec.ptr1002 = getelementptr inbounds i8* %60, i64 2, !dbg !1668
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1002}, i64 0, metadata !299), !dbg !1668
  store i8* %incdec.ptr1002, i8** %p, align 8, !dbg !1668, !tbaa !722
  %64 = load i8* %incdec.ptr978, align 1, !dbg !1668, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %64}, i64 0, metadata !277), !dbg !1668
  br i1 %tobool30, label %if.then1004, label %do.end1008, !dbg !1668

if.then1004:                                      ; preds = %if.end1001
  %idxprom1005 = zext i8 %64 to i64, !dbg !1668
  %arrayidx1006 = getelementptr inbounds i8* %0, i64 %idxprom1005, !dbg !1668
  %65 = load i8* %arrayidx1006, align 1, !dbg !1668, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %65}, i64 0, metadata !277), !dbg !1668
  br label %do.end1008, !dbg !1668

do.end1008:                                       ; preds = %if.end1001, %if.then1004
  %c1.1 = phi i8 [ %65, %if.then1004 ], [ %64, %if.end1001 ]
  %conv1009 = zext i8 %c1.1 to i32, !dbg !1670
  %rem = and i32 %conv1009, 7, !dbg !1670
  %shl1010 = shl i32 1, %rem, !dbg !1670
  %div = lshr i32 %conv1009, 3, !dbg !1670
  %idxprom10125142 = zext i32 %div to i64, !dbg !1670
  %incdec.ptr952.sum5143 = add i64 %idxprom10125142, 1, !dbg !1670
  %arrayidx1013 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum5143, !dbg !1670
  %66 = load i8* %arrayidx1013, align 1, !dbg !1670, !tbaa !714
  %conv1014 = zext i8 %66 to i32, !dbg !1670
  %or1015 = or i32 %shl1010, %conv1014, !dbg !1670
  %conv1016 = trunc i32 %or1015 to i8, !dbg !1670
  store i8 %conv1016, i8* %arrayidx1013, align 1, !dbg !1670, !tbaa !714
  br label %for.cond967.backedge, !dbg !1671

for.cond967.backedge:                             ; preds = %do.end1008, %if.end1093, %if.then1070
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1658
  %67 = load i8** %p, align 8, !dbg !1658, !tbaa !722
  %cmp968 = icmp eq i8* %67, %add.ptr, !dbg !1658
  br i1 %cmp968, label %if.then970, label %if.end977, !dbg !1658

if.end1017:                                       ; preds = %do.end984
  %conv1018 = zext i8 %c.4 to i32, !dbg !1659
  %cmp1019 = icmp eq i8 %c.4, 93, !dbg !1659
  br i1 %cmp1019, label %land.lhs.true1021, label %if.end1026, !dbg !1659

land.lhs.true1021:                                ; preds = %if.end1017
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1659
  %cmp1023 = icmp eq i8* %60, %54, !dbg !1659
  br i1 %cmp1023, label %if.else1077, label %while.cond1549thread-pre-split, !dbg !1659

if.end1026:                                       ; preds = %if.end1017
  %cmp1031 = icmp eq i8 %c.4, 45, !dbg !1663
  %or.cond5154 = and i1 %tobool1028, %cmp1031, !dbg !1663
  br i1 %or.cond5154, label %land.lhs.true1033, label %if.end1039, !dbg !1663

land.lhs.true1033:                                ; preds = %if.end1026
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1663
  %68 = load i8* %incdec.ptr978, align 1, !dbg !1663, !tbaa !714
  %cmp1035 = icmp eq i8 %68, 93, !dbg !1663
  br i1 %cmp1035, label %if.end1039, label %if.then1037, !dbg !1663

if.then1037:                                      ; preds = %land.lhs.true1033
  %69 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1672
  call void @free(i8* %69) #7, !dbg !1672
  br label %return, !dbg !1672

if.end1039:                                       ; preds = %if.end1026, %land.lhs.true1033
  br i1 %cmp1031, label %land.lhs.true1043, label %if.else1077, !dbg !1673

land.lhs.true1043:                                ; preds = %if.end1039
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1673
  %add.ptr1044 = getelementptr inbounds i8* %60, i64 -1, !dbg !1673
  %cmp1045 = icmp ult i8* %add.ptr1044, %pattern, !dbg !1673
  br i1 %cmp1045, label %land.lhs.true1052, label %land.lhs.true1047, !dbg !1673

land.lhs.true1047:                                ; preds = %land.lhs.true1043
  %70 = load i8* %add.ptr1044, align 1, !dbg !1673, !tbaa !714
  %cmp1050 = icmp eq i8 %70, 91, !dbg !1673
  br i1 %cmp1050, label %if.else1077, label %land.lhs.true1052, !dbg !1673

land.lhs.true1052:                                ; preds = %land.lhs.true1043, %land.lhs.true1047
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1673
  %add.ptr1053 = getelementptr inbounds i8* %60, i64 -2, !dbg !1673
  %cmp1054 = icmp ult i8* %add.ptr1053, %pattern, !dbg !1673
  br i1 %cmp1054, label %land.lhs.true1066, label %land.lhs.true1056, !dbg !1673

land.lhs.true1056:                                ; preds = %land.lhs.true1052
  %71 = load i8* %add.ptr1053, align 1, !dbg !1673, !tbaa !714
  %cmp1059 = icmp eq i8 %71, 91, !dbg !1673
  br i1 %cmp1059, label %land.lhs.true1061, label %land.lhs.true1066, !dbg !1673

land.lhs.true1061:                                ; preds = %land.lhs.true1056
  %72 = load i8* %add.ptr1044, align 1, !dbg !1673, !tbaa !714
  %cmp1064 = icmp eq i8 %72, 94, !dbg !1673
  br i1 %cmp1064, label %if.else1077, label %land.lhs.true1066, !dbg !1673

land.lhs.true1066:                                ; preds = %land.lhs.true1061, %land.lhs.true1056, %land.lhs.true1052
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1673
  %73 = load i8* %incdec.ptr978, align 1, !dbg !1673, !tbaa !714
  %cmp1068 = icmp eq i8 %73, 93, !dbg !1673
  br i1 %cmp1068, label %if.else1077, label %if.then1070, !dbg !1673

if.then1070:                                      ; preds = %land.lhs.true1066
  %call1071 = call fastcc i32 @compile_range(i8** %p, i8* %add.ptr, i8* %0, i64 %syntax, i8* %incdec.ptr952) #9, !dbg !1674
  call void @llvm.dbg.value(metadata !{i32 %call1071}, i64 0, metadata !343), !dbg !1674
  %cmp1072 = icmp eq i32 %call1071, 0, !dbg !1675
  br i1 %cmp1072, label %for.cond967.backedge, label %if.then1074, !dbg !1675

if.then1074:                                      ; preds = %if.then1070
  %74 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1675
  call void @free(i8* %74) #7, !dbg !1675
  br label %return, !dbg !1675

if.else1077:                                      ; preds = %land.lhs.true1061, %land.lhs.true1047, %if.end1039, %land.lhs.true1021, %land.lhs.true1066
  %75 = phi i8* [ %incdec.ptr978, %land.lhs.true1066 ], [ %add.ptr1022, %land.lhs.true1021 ], [ %incdec.ptr978, %if.end1039 ], [ %incdec.ptr978, %land.lhs.true1047 ], [ %incdec.ptr978, %land.lhs.true1061 ]
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1676
  %76 = load i8* %75, align 1, !dbg !1676, !tbaa !714
  %cmp1080 = icmp eq i8 %76, 45, !dbg !1676
  br i1 %cmp1080, label %land.lhs.true1082, label %if.else1107, !dbg !1676

land.lhs.true1082:                                ; preds = %if.else1077
  %arrayidx1083 = getelementptr inbounds i8* %75, i64 1, !dbg !1676
  %77 = load i8* %arrayidx1083, align 1, !dbg !1676, !tbaa !714
  %cmp1085 = icmp eq i8 %77, 93, !dbg !1676
  br i1 %cmp1085, label %if.else1107, label %do.body1089, !dbg !1676

do.body1089:                                      ; preds = %land.lhs.true1082
  %cmp1090 = icmp eq i8* %75, %add.ptr, !dbg !1677
  br i1 %cmp1090, label %return, label %if.end1093, !dbg !1677

if.end1093:                                       ; preds = %do.body1089
  call void @llvm.dbg.value(metadata !{i8* %arrayidx1083}, i64 0, metadata !299), !dbg !1677
  store i8* %arrayidx1083, i8** %p, align 8, !dbg !1677, !tbaa !722
  %call1101 = call fastcc i32 @compile_range(i8** %p, i8* %add.ptr, i8* %0, i64 %syntax, i8* %incdec.ptr952) #9, !dbg !1679
  call void @llvm.dbg.value(metadata !{i32 %call1101}, i64 0, metadata !347), !dbg !1679
  %cmp1102 = icmp eq i32 %call1101, 0, !dbg !1680
  br i1 %cmp1102, label %for.cond967.backedge, label %if.then1104, !dbg !1680

if.then1104:                                      ; preds = %if.end1093
  %78 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1680
  call void @free(i8* %78) #7, !dbg !1680
  br label %return, !dbg !1680

if.else1107:                                      ; preds = %land.lhs.true1082, %if.else1077
  %cmp1112 = icmp eq i8 %c.4, 91, !dbg !1478
  %or.cond5155 = and i1 %tobool1109, %cmp1112, !dbg !1478
  %cmp1116 = icmp eq i8 %76, 58, !dbg !1478
  %or.cond6541 = and i1 %or.cond5155, %cmp1116, !dbg !1478
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1478
  br i1 %or.cond6541, label %do.body1119, label %if.else1534, !dbg !1478

do.body1119:                                      ; preds = %if.else1107
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %str}, metadata !349), !dbg !1681
  %cmp1120 = icmp eq i8* %75, %add.ptr, !dbg !1682
  br i1 %cmp1120, label %return, label %if.end1123, !dbg !1682

if.end1123:                                       ; preds = %do.body1119
  %incdec.ptr1124 = getelementptr inbounds i8* %75, i64 1, !dbg !1682
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1124}, i64 0, metadata !299), !dbg !1682
  store i8* %incdec.ptr1124, i8** %p, align 8, !dbg !1682, !tbaa !722
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !277), !dbg !1684
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1685
  %cmp1131 = icmp eq i8* %incdec.ptr1124, %add.ptr, !dbg !1685
  br i1 %cmp1131, label %if.then1133, label %if.end1141.lr.ph, !dbg !1685

if.then1133:                                      ; preds = %if.end1123
  %79 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1685
  call void @free(i8* %79) #7, !dbg !1685
  br label %return, !dbg !1685

if.end1141:                                       ; preds = %if.end1141.lr.ph, %if.else1167
  %80 = phi i8* [ %84, %if.end1141.lr.ph ], [ %incdec.ptr1142, %if.else1167 ]
  %incdec.ptr1142 = getelementptr inbounds i8* %80, i64 1, !dbg !1686
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1142}, i64 0, metadata !299), !dbg !1686
  store i8* %incdec.ptr1142, i8** %p, align 8, !dbg !1686, !tbaa !722
  %81 = load i8* %80, align 1, !dbg !1686, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %81}, i64 0, metadata !276), !dbg !1686
  br i1 %tobool30, label %if.then1144, label %do.end1148, !dbg !1686

if.then1144:                                      ; preds = %if.end1141
  %idxprom1145 = zext i8 %81 to i64, !dbg !1686
  %arrayidx1146 = getelementptr inbounds i8* %0, i64 %idxprom1145, !dbg !1686
  %82 = load i8* %arrayidx1146, align 1, !dbg !1686, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %82}, i64 0, metadata !276), !dbg !1686
  br label %do.end1148, !dbg !1686

do.end1148:                                       ; preds = %if.end1141, %if.then1144
  %c.5 = phi i8 [ %82, %if.then1144 ], [ %81, %if.end1141 ]
  %cmp1150 = icmp eq i8 %c.5, 58, !dbg !1688
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1688
  br i1 %cmp1150, label %land.lhs.true1152, label %lor.lhs.false1156, !dbg !1688

land.lhs.true1152:                                ; preds = %do.end1148
  %83 = load i8* %incdec.ptr1142, align 1, !dbg !1688, !tbaa !714
  %cmp1154 = icmp eq i8 %83, 93, !dbg !1688
  %cmp1157 = icmp eq i8* %incdec.ptr1142, %add.ptr, !dbg !1688
  %or.cond5156 = or i1 %cmp1154, %cmp1157, !dbg !1688
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1688
  br i1 %or.cond5156, label %land.lhs.true1176, label %if.end1160, !dbg !1688

lor.lhs.false1156:                                ; preds = %do.end1148
  %cmp1157.old = icmp eq i8* %incdec.ptr1142, %add.ptr, !dbg !1688
  br i1 %cmp1157.old, label %for.end1170.thread5319, label %if.end1160, !dbg !1688

for.end1170.thread5319:                           ; preds = %lor.lhs.false1156
  %idxprom11715320 = zext i8 %c1.2.ph5478 to i64, !dbg !1689
  %arrayidx11725321 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 %idxprom11715320, !dbg !1689
  store i8 0, i8* %arrayidx11725321, align 1, !dbg !1689, !tbaa !714
  br label %if.else1518, !dbg !1690

if.end1160:                                       ; preds = %land.lhs.true1152, %lor.lhs.false1156
  br i1 %cmp1162, label %if.then1164, label %if.else1167, !dbg !1691

if.then1164:                                      ; preds = %if.end1160
  %inc = add i8 %c1.2.ph5478, 1, !dbg !1692
  call void @llvm.dbg.value(metadata !{i8 %inc}, i64 0, metadata !277), !dbg !1692
  %idxprom1165 = zext i8 %c1.2.ph5478 to i64, !dbg !1692
  %arrayidx1166 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 %idxprom1165, !dbg !1692
  store i8 %c.5, i8* %arrayidx1166, align 1, !dbg !1692, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1686
  %cmp11385465 = icmp eq i8* %incdec.ptr1142, %add.ptr, !dbg !1686
  br i1 %cmp11385465, label %return, label %if.end1141.lr.ph, !dbg !1686

if.end1141.lr.ph:                                 ; preds = %if.end1123, %if.then1164
  %84 = phi i8* [ %incdec.ptr1142, %if.then1164 ], [ %incdec.ptr1124, %if.end1123 ]
  %c1.2.ph5478 = phi i8 [ %inc, %if.then1164 ], [ 0, %if.end1123 ]
  %cmp1162 = icmp ult i8 %c1.2.ph5478, 6, !dbg !1691
  br label %if.end1141, !dbg !1686

if.else1167:                                      ; preds = %if.end1160
  store i8 0, i8* %arrayidx1168, align 1, !dbg !1479, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1686
  %cmp1138 = icmp eq i8* %incdec.ptr1142, %add.ptr, !dbg !1686
  br i1 %cmp1138, label %return, label %if.end1141, !dbg !1686

land.lhs.true1176:                                ; preds = %land.lhs.true1152
  %idxprom11715317 = zext i8 %c1.2.ph5478 to i64, !dbg !1689
  %arrayidx11725318 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 %idxprom11715317, !dbg !1689
  store i8 0, i8* %arrayidx11725318, align 1, !dbg !1689, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1690
  %85 = load i8* %incdec.ptr1142, align 1, !dbg !1690, !tbaa !714
  %cmp1178 = icmp eq i8 %85, 93, !dbg !1690
  br i1 %cmp1178, label %if.then1180, label %if.else1518, !dbg !1690

if.then1180:                                      ; preds = %land.lhs.true1176
  %call1181 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) #10, !dbg !1693
  %cmp1182 = icmp eq i32 %call1181, 0, !dbg !1693
  %call1186 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #10, !dbg !1694
  %cmp1187 = icmp eq i32 %call1186, 0, !dbg !1694
  %call1191 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0)) #10, !dbg !1695
  %cmp1192 = icmp eq i32 %call1191, 0, !dbg !1695
  %call1196 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #10, !dbg !1696
  %cmp1197 = icmp eq i32 %call1196, 0, !dbg !1696
  %call1201 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #10, !dbg !1697
  %cmp1202 = icmp eq i32 %call1201, 0, !dbg !1697
  %call1206 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #10, !dbg !1698
  %cmp1207 = icmp eq i32 %call1206, 0, !dbg !1698
  %call1211 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #10, !dbg !1699
  %cmp1212 = icmp eq i32 %call1211, 0, !dbg !1699
  %call1216 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #10, !dbg !1700
  %cmp1217 = icmp eq i32 %call1216, 0, !dbg !1700
  %call1221 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) #10, !dbg !1701
  %cmp1222 = icmp eq i32 %call1221, 0, !dbg !1701
  %call1226 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0)) #10, !dbg !1702
  %cmp1227 = icmp eq i32 %call1226, 0, !dbg !1702
  %call1231 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)) #10, !dbg !1703
  %cmp1232 = icmp eq i32 %call1231, 0, !dbg !1703
  %call1236 = call i32 @strcmp(i8* %arrayidx1168, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #10, !dbg !1704
  %cmp1237 = icmp eq i32 %call1236, 0, !dbg !1704
  %brmerge = or i1 %cmp1187, %cmp1232, !dbg !1705
  %brmerge5157 = or i1 %brmerge, %cmp1212, !dbg !1705
  %brmerge5158 = or i1 %brmerge5157, %cmp1202, !dbg !1705
  %brmerge5159 = or i1 %brmerge5158, %cmp1182, !dbg !1705
  %brmerge5160 = or i1 %brmerge5159, %cmp1237, !dbg !1705
  %brmerge5161 = or i1 %brmerge5160, %cmp1227, !dbg !1705
  %brmerge5162 = or i1 %brmerge5161, %cmp1217, !dbg !1705
  %brmerge5163 = or i1 %brmerge5162, %cmp1222, !dbg !1705
  %brmerge5164 = or i1 %brmerge5163, %cmp1207, !dbg !1705
  %brmerge5165 = or i1 %brmerge5164, %cmp1197, !dbg !1705
  %brmerge5166 = or i1 %brmerge5165, %cmp1192, !dbg !1705
  br i1 %brmerge5166, label %do.body1302, label %if.then1299, !dbg !1705

if.then1299:                                      ; preds = %if.then1180
  %86 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1706
  call void @free(i8* %86) #7, !dbg !1706
  br label %return, !dbg !1706

do.body1302:                                      ; preds = %if.then1180
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1707
  br i1 %cmp1157, label %return, label %if.end1306, !dbg !1707

if.end1306:                                       ; preds = %do.body1302
  %incdec.ptr1307 = getelementptr inbounds i8* %80, i64 2, !dbg !1707
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1307}, i64 0, metadata !299), !dbg !1707
  store i8* %incdec.ptr1307, i8** %p, align 8, !dbg !1707, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1709
  %cmp1314 = icmp eq i8* %incdec.ptr1307, %add.ptr, !dbg !1709
  br i1 %cmp1314, label %if.then1316, label %for.cond1319.preheader, !dbg !1709

for.cond1319.preheader:                           ; preds = %if.end1306
  %brmerge5167 = or i1 %cmp1232, %cmp1212, !dbg !1710
  %or.cond5180 = and i1 %tobool30, %brmerge5167, !dbg !1710
  br label %for.body, !dbg !1713

if.then1316:                                      ; preds = %if.end1306
  %87 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1709
  call void @free(i8* %87) #7, !dbg !1709
  br label %return, !dbg !1709

for.body:                                         ; preds = %for.inc, %for.cond1319.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1319.preheader ], [ %indvars.iv.next, %for.inc ]
  br i1 %cmp1182, label %land.lhs.true1324, label %lor.lhs.false1331, !dbg !1714

land.lhs.true1324:                                ; preds = %for.body
  %call1326 = call i16** @__ctype_b_loc() #11, !dbg !1714
  %88 = load i16** %call1326, align 8, !dbg !1714, !tbaa !722
  %arrayidx1327 = getelementptr inbounds i16* %88, i64 %indvars.iv, !dbg !1714
  %89 = load i16* %arrayidx1327, align 2, !dbg !1714, !tbaa !1715
  %and1329 = and i16 %89, 8, !dbg !1714
  %tobool1330 = icmp eq i16 %and1329, 0, !dbg !1714
  br i1 %tobool1330, label %lor.lhs.false1331, label %if.then1361, !dbg !1714

lor.lhs.false1331:                                ; preds = %land.lhs.true1324, %for.body
  br i1 %cmp1187, label %land.lhs.true1334, label %lor.lhs.false1341, !dbg !1714

land.lhs.true1334:                                ; preds = %lor.lhs.false1331
  %call1336 = call i16** @__ctype_b_loc() #11, !dbg !1716
  %90 = load i16** %call1336, align 8, !dbg !1716, !tbaa !722
  %arrayidx1337 = getelementptr inbounds i16* %90, i64 %indvars.iv, !dbg !1716
  %91 = load i16* %arrayidx1337, align 2, !dbg !1716, !tbaa !1715
  %and1339 = and i16 %91, 1024, !dbg !1716
  %tobool1340 = icmp eq i16 %and1339, 0, !dbg !1716
  br i1 %tobool1340, label %lor.lhs.false1341, label %if.then1361, !dbg !1716

lor.lhs.false1341:                                ; preds = %land.lhs.true1334, %lor.lhs.false1331
  br i1 %cmp1192, label %land.lhs.true1344, label %lor.lhs.false1351, !dbg !1716

land.lhs.true1344:                                ; preds = %lor.lhs.false1341
  %call1346 = call i16** @__ctype_b_loc() #11, !dbg !1717
  %92 = load i16** %call1346, align 8, !dbg !1717, !tbaa !722
  %arrayidx1347 = getelementptr inbounds i16* %92, i64 %indvars.iv, !dbg !1717
  %93 = load i16* %arrayidx1347, align 2, !dbg !1717, !tbaa !1715
  %and1349 = and i16 %93, 1, !dbg !1717
  %tobool1350 = icmp eq i16 %and1349, 0, !dbg !1717
  br i1 %tobool1350, label %lor.lhs.false1351, label %if.then1361, !dbg !1717

lor.lhs.false1351:                                ; preds = %land.lhs.true1344, %lor.lhs.false1341
  br i1 %cmp1197, label %land.lhs.true1354, label %if.end1374, !dbg !1717

land.lhs.true1354:                                ; preds = %lor.lhs.false1351
  %call1356 = call i16** @__ctype_b_loc() #11, !dbg !1718
  %94 = load i16** %call1356, align 8, !dbg !1718, !tbaa !722
  %arrayidx1357 = getelementptr inbounds i16* %94, i64 %indvars.iv, !dbg !1718
  %95 = load i16* %arrayidx1357, align 2, !dbg !1718, !tbaa !1715
  %and1359 = and i16 %95, 2, !dbg !1718
  %tobool1360 = icmp eq i16 %and1359, 0, !dbg !1718
  br i1 %tobool1360, label %if.end1374, label %if.then1361, !dbg !1718

if.then1361:                                      ; preds = %land.lhs.true1324, %land.lhs.true1334, %land.lhs.true1344, %land.lhs.true1354
  %96 = trunc i64 %indvars.iv to i32, !dbg !1719
  %rem1364 = and i32 %96, 7, !dbg !1719
  %shl1365 = shl i32 1, %rem1364, !dbg !1719
  %conv1363 = lshr i64 %indvars.iv, 3, !dbg !1719
  %div1368 = and i64 %conv1363, 31, !dbg !1719
  %incdec.ptr952.sum5139 = add i64 %div1368, 1, !dbg !1719
  %arrayidx1370 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum5139, !dbg !1719
  %97 = load i8* %arrayidx1370, align 1, !dbg !1719, !tbaa !714
  %conv1371 = zext i8 %97 to i32, !dbg !1719
  %or1372 = or i32 %conv1371, %shl1365, !dbg !1719
  %conv1373 = trunc i32 %or1372 to i8, !dbg !1719
  store i8 %conv1373, i8* %arrayidx1370, align 1, !dbg !1719, !tbaa !714
  br label %if.end1374, !dbg !1719

if.end1374:                                       ; preds = %land.lhs.true1354, %if.then1361, %lor.lhs.false1351
  br i1 %cmp1202, label %land.lhs.true1377, label %lor.lhs.false1384, !dbg !1720

land.lhs.true1377:                                ; preds = %if.end1374
  %call1379 = call i16** @__ctype_b_loc() #11, !dbg !1720
  %98 = load i16** %call1379, align 8, !dbg !1720, !tbaa !722
  %arrayidx1380 = getelementptr inbounds i16* %98, i64 %indvars.iv, !dbg !1720
  %99 = load i16* %arrayidx1380, align 2, !dbg !1720, !tbaa !1715
  %and1382 = and i16 %99, 2048, !dbg !1720
  %tobool1383 = icmp eq i16 %and1382, 0, !dbg !1720
  br i1 %tobool1383, label %lor.lhs.false1384, label %if.then1414, !dbg !1720

lor.lhs.false1384:                                ; preds = %land.lhs.true1377, %if.end1374
  br i1 %cmp1207, label %land.lhs.true1387, label %lor.lhs.false1394, !dbg !1720

land.lhs.true1387:                                ; preds = %lor.lhs.false1384
  %call1389 = call i16** @__ctype_b_loc() #11, !dbg !1721
  %100 = load i16** %call1389, align 8, !dbg !1721, !tbaa !722
  %arrayidx1390 = getelementptr inbounds i16* %100, i64 %indvars.iv, !dbg !1721
  %101 = load i16* %arrayidx1390, align 2, !dbg !1721, !tbaa !1715
  %tobool1393 = icmp slt i16 %101, 0, !dbg !1721
  br i1 %tobool1393, label %if.then1414, label %lor.lhs.false1394, !dbg !1721

lor.lhs.false1394:                                ; preds = %land.lhs.true1387, %lor.lhs.false1384
  br i1 %cmp1212, label %land.lhs.true1397, label %lor.lhs.false1404, !dbg !1721

land.lhs.true1397:                                ; preds = %lor.lhs.false1394
  %call1399 = call i16** @__ctype_b_loc() #11, !dbg !1722
  %102 = load i16** %call1399, align 8, !dbg !1722, !tbaa !722
  %arrayidx1400 = getelementptr inbounds i16* %102, i64 %indvars.iv, !dbg !1722
  %103 = load i16* %arrayidx1400, align 2, !dbg !1722, !tbaa !1715
  %and1402 = and i16 %103, 512, !dbg !1722
  %tobool1403 = icmp eq i16 %and1402, 0, !dbg !1722
  br i1 %tobool1403, label %lor.lhs.false1404, label %if.then1414, !dbg !1722

lor.lhs.false1404:                                ; preds = %land.lhs.true1397, %lor.lhs.false1394
  br i1 %cmp1217, label %land.lhs.true1407, label %if.end1427, !dbg !1722

land.lhs.true1407:                                ; preds = %lor.lhs.false1404
  %call1409 = call i16** @__ctype_b_loc() #11, !dbg !1723
  %104 = load i16** %call1409, align 8, !dbg !1723, !tbaa !722
  %arrayidx1410 = getelementptr inbounds i16* %104, i64 %indvars.iv, !dbg !1723
  %105 = load i16* %arrayidx1410, align 2, !dbg !1723, !tbaa !1715
  %and1412 = and i16 %105, 16384, !dbg !1723
  %tobool1413 = icmp eq i16 %and1412, 0, !dbg !1723
  br i1 %tobool1413, label %if.end1427, label %if.then1414, !dbg !1723

if.then1414:                                      ; preds = %land.lhs.true1377, %land.lhs.true1397, %land.lhs.true1407, %land.lhs.true1387
  %106 = trunc i64 %indvars.iv to i32, !dbg !1724
  %rem1417 = and i32 %106, 7, !dbg !1724
  %shl1418 = shl i32 1, %rem1417, !dbg !1724
  %conv1416 = lshr i64 %indvars.iv, 3, !dbg !1724
  %div1421 = and i64 %conv1416, 31, !dbg !1724
  %incdec.ptr952.sum5137 = add i64 %div1421, 1, !dbg !1724
  %arrayidx1423 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum5137, !dbg !1724
  %107 = load i8* %arrayidx1423, align 1, !dbg !1724, !tbaa !714
  %conv1424 = zext i8 %107 to i32, !dbg !1724
  %or1425 = or i32 %conv1424, %shl1418, !dbg !1724
  %conv1426 = trunc i32 %or1425 to i8, !dbg !1724
  store i8 %conv1426, i8* %arrayidx1423, align 1, !dbg !1724, !tbaa !714
  br label %if.end1427, !dbg !1724

if.end1427:                                       ; preds = %land.lhs.true1407, %if.then1414, %lor.lhs.false1404
  br i1 %cmp1222, label %land.lhs.true1430, label %lor.lhs.false1437, !dbg !1725

land.lhs.true1430:                                ; preds = %if.end1427
  %call1432 = call i16** @__ctype_b_loc() #11, !dbg !1725
  %108 = load i16** %call1432, align 8, !dbg !1725, !tbaa !722
  %arrayidx1433 = getelementptr inbounds i16* %108, i64 %indvars.iv, !dbg !1725
  %109 = load i16* %arrayidx1433, align 2, !dbg !1725, !tbaa !1715
  %and1435 = and i16 %109, 4, !dbg !1725
  %tobool1436 = icmp eq i16 %and1435, 0, !dbg !1725
  br i1 %tobool1436, label %lor.lhs.false1437, label %if.then1467, !dbg !1725

lor.lhs.false1437:                                ; preds = %land.lhs.true1430, %if.end1427
  br i1 %cmp1227, label %land.lhs.true1440, label %lor.lhs.false1447, !dbg !1725

land.lhs.true1440:                                ; preds = %lor.lhs.false1437
  %call1442 = call i16** @__ctype_b_loc() #11, !dbg !1726
  %110 = load i16** %call1442, align 8, !dbg !1726, !tbaa !722
  %arrayidx1443 = getelementptr inbounds i16* %110, i64 %indvars.iv, !dbg !1726
  %111 = load i16* %arrayidx1443, align 2, !dbg !1726, !tbaa !1715
  %and1445 = and i16 %111, 8192, !dbg !1726
  %tobool1446 = icmp eq i16 %and1445, 0, !dbg !1726
  br i1 %tobool1446, label %lor.lhs.false1447, label %if.then1467, !dbg !1726

lor.lhs.false1447:                                ; preds = %land.lhs.true1440, %lor.lhs.false1437
  br i1 %cmp1232, label %land.lhs.true1450, label %lor.lhs.false1457, !dbg !1726

land.lhs.true1450:                                ; preds = %lor.lhs.false1447
  %call1452 = call i16** @__ctype_b_loc() #11, !dbg !1727
  %112 = load i16** %call1452, align 8, !dbg !1727, !tbaa !722
  %arrayidx1453 = getelementptr inbounds i16* %112, i64 %indvars.iv, !dbg !1727
  %113 = load i16* %arrayidx1453, align 2, !dbg !1727, !tbaa !1715
  %and1455 = and i16 %113, 256, !dbg !1727
  %tobool1456 = icmp eq i16 %and1455, 0, !dbg !1727
  br i1 %tobool1456, label %lor.lhs.false1457, label %if.then1467, !dbg !1727

lor.lhs.false1457:                                ; preds = %land.lhs.true1450, %lor.lhs.false1447
  br i1 %cmp1237, label %land.lhs.true1460, label %if.end1480, !dbg !1727

land.lhs.true1460:                                ; preds = %lor.lhs.false1457
  %call1462 = call i16** @__ctype_b_loc() #11, !dbg !1728
  %114 = load i16** %call1462, align 8, !dbg !1728, !tbaa !722
  %arrayidx1463 = getelementptr inbounds i16* %114, i64 %indvars.iv, !dbg !1728
  %115 = load i16* %arrayidx1463, align 2, !dbg !1728, !tbaa !1715
  %and1465 = and i16 %115, 4096, !dbg !1728
  %tobool1466 = icmp eq i16 %and1465, 0, !dbg !1728
  br i1 %tobool1466, label %if.end1480, label %if.then1467, !dbg !1728

if.then1467:                                      ; preds = %land.lhs.true1430, %land.lhs.true1440, %land.lhs.true1450, %land.lhs.true1460
  %116 = trunc i64 %indvars.iv to i32, !dbg !1729
  %rem1470 = and i32 %116, 7, !dbg !1729
  %shl1471 = shl i32 1, %rem1470, !dbg !1729
  %conv1469 = lshr i64 %indvars.iv, 3, !dbg !1729
  %div1474 = and i64 %conv1469, 31, !dbg !1729
  %incdec.ptr952.sum5135 = add i64 %div1474, 1, !dbg !1729
  %arrayidx1476 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum5135, !dbg !1729
  %117 = load i8* %arrayidx1476, align 1, !dbg !1729, !tbaa !714
  %conv1477 = zext i8 %117 to i32, !dbg !1729
  %or1478 = or i32 %conv1477, %shl1471, !dbg !1729
  %conv1479 = trunc i32 %or1478 to i8, !dbg !1729
  store i8 %conv1479, i8* %arrayidx1476, align 1, !dbg !1729, !tbaa !714
  br label %if.end1480, !dbg !1729

if.end1480:                                       ; preds = %land.lhs.true1460, %if.then1467, %lor.lhs.false1457
  br i1 %or.cond5180, label %land.lhs.true1488, label %for.inc, !dbg !1710

land.lhs.true1488:                                ; preds = %if.end1480
  %call1490 = call i16** @__ctype_b_loc() #11, !dbg !1730
  %118 = load i16** %call1490, align 8, !dbg !1730, !tbaa !722
  %arrayidx1491 = getelementptr inbounds i16* %118, i64 %indvars.iv, !dbg !1730
  %119 = load i16* %arrayidx1491, align 2, !dbg !1730, !tbaa !1715
  %120 = and i16 %119, 768, !dbg !1730
  %121 = icmp eq i16 %120, 0, !dbg !1730
  br i1 %121, label %for.inc, label %if.then1502, !dbg !1730

if.then1502:                                      ; preds = %land.lhs.true1488
  %122 = trunc i64 %indvars.iv to i32, !dbg !1731
  %rem1505 = and i32 %122, 7, !dbg !1731
  %shl1506 = shl i32 1, %rem1505, !dbg !1731
  %conv1504 = lshr i64 %indvars.iv, 3, !dbg !1731
  %div1509 = and i64 %conv1504, 31, !dbg !1731
  %incdec.ptr952.sum5133 = add i64 %div1509, 1, !dbg !1731
  %arrayidx1511 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum5133, !dbg !1731
  %123 = load i8* %arrayidx1511, align 1, !dbg !1731, !tbaa !714
  %conv1512 = zext i8 %123 to i32, !dbg !1731
  %or1513 = or i32 %conv1512, %shl1506, !dbg !1731
  %conv1514 = trunc i32 %or1513 to i8, !dbg !1731
  store i8 %conv1514, i8* %arrayidx1511, align 1, !dbg !1731, !tbaa !714
  br label %for.inc, !dbg !1731

for.inc:                                          ; preds = %land.lhs.true1488, %if.end1480, %if.then1502
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1713
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1713
  %exitcond = icmp eq i32 %lftr.wideiv, 256, !dbg !1713
  br i1 %exitcond, label %for.cond967.outer.backedge, label %for.body, !dbg !1713

if.else1518:                                      ; preds = %for.end1170.thread5319, %land.lhs.true1176
  %tobool15215466 = icmp eq i8 %c1.2.ph5478, -1, !dbg !1732
  br i1 %tobool15215466, label %while.end1524, label %while.body1522.lr.ph, !dbg !1732

while.body1522.lr.ph:                             ; preds = %if.else1518
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1733
  %124 = zext i8 %c1.2.ph5478 to i64
  %125 = sub i64 0, %124, !dbg !1732
  %scevgep6324 = getelementptr i8* %80, i64 %125
  call void @llvm.dbg.value(metadata !{i8* %scevgep6324}, i64 0, metadata !299), !dbg !1733
  store i8* %scevgep6324, i8** %p, align 8, !dbg !1733, !tbaa !722
  br label %while.end1524, !dbg !1732

while.end1524:                                    ; preds = %while.body1522.lr.ph, %if.else1518
  %126 = load i8* %arrayidx1525, align 1, !dbg !1660, !tbaa !714
  %or1527 = or i8 %126, 8, !dbg !1660
  store i8 %or1527, i8* %arrayidx1525, align 1, !dbg !1660, !tbaa !714
  %127 = load i8* %arrayidx1529, align 1, !dbg !1662, !tbaa !714
  %or1531 = or i8 %127, 4, !dbg !1662
  store i8 %or1531, i8* %arrayidx1529, align 1, !dbg !1662, !tbaa !714
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !333), !dbg !1734
  br label %for.cond967.outer.backedge

for.cond967.outer.backedge:                       ; preds = %for.inc, %while.end1524, %if.else1534
  %had_char_class.0.ph.be = phi i8 [ 0, %while.end1524 ], [ 0, %if.else1534 ], [ 1, %for.inc ]
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1658
  %128 = load i8** %p, align 8, !dbg !1658, !tbaa !722
  %cmp9685491 = icmp eq i8* %128, %add.ptr, !dbg !1658
  br i1 %cmp9685491, label %if.then970, label %if.end977.lr.ph, !dbg !1658

if.else1534:                                      ; preds = %if.else1107
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !333), !dbg !1735
  %rem1536 = and i32 %conv1018, 7, !dbg !1737
  %shl1537 = shl i32 1, %rem1536, !dbg !1737
  %div1539 = lshr i32 %conv1018, 3, !dbg !1737
  %idxprom15405131 = zext i32 %div1539 to i64, !dbg !1737
  %incdec.ptr952.sum = add i64 %idxprom15405131, 1, !dbg !1737
  %arrayidx1541 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum, !dbg !1737
  %129 = load i8* %arrayidx1541, align 1, !dbg !1737, !tbaa !714
  %conv1542 = zext i8 %129 to i32, !dbg !1737
  %or1543 = or i32 %conv1542, %shl1537, !dbg !1737
  %conv1544 = trunc i32 %or1543 to i8, !dbg !1737
  store i8 %conv1544, i8* %arrayidx1541, align 1, !dbg !1737, !tbaa !714
  br label %for.cond967.outer.backedge

while.cond1549thread-pre-split:                   ; preds = %land.lhs.true1021
  %.pr = load i8* %b.9.ph, align 1, !dbg !1738, !tbaa !714
  %cmp15525492 = icmp eq i8 %.pr, 0, !dbg !1738
  br i1 %cmp15525492, label %while.end1565, label %land.end, !dbg !1738

land.end:                                         ; preds = %while.cond1549thread-pre-split, %while.body1562
  %130 = phi i8 [ %dec1564, %while.body1562 ], [ %.pr, %while.cond1549thread-pre-split ]
  %conv1551 = zext i8 %130 to i64, !dbg !1738
  %arrayidx1558 = getelementptr inbounds i8* %b.9.ph, i64 %conv1551, !dbg !1738
  %131 = load i8* %arrayidx1558, align 1, !dbg !1738, !tbaa !714
  %cmp1560 = icmp eq i8 %131, 0, !dbg !1738
  br i1 %cmp1560, label %while.body1562, label %while.end1565

while.body1562:                                   ; preds = %land.end
  %dec1564 = add i8 %130, -1, !dbg !1739
  store i8 %dec1564, i8* %b.9.ph, align 1, !dbg !1739, !tbaa !714
  %cmp1552 = icmp eq i8 %dec1564, 0, !dbg !1738
  br i1 %cmp1552, label %while.end1565, label %land.end, !dbg !1738

while.end1565:                                    ; preds = %land.end, %while.cond1549thread-pre-split, %while.body1562
  %132 = phi i8 [ 0, %while.body1562 ], [ 0, %while.cond1549thread-pre-split ], [ %130, %land.end ]
  %idx.ext = zext i8 %132 to i64, !dbg !1740
  %incdec.ptr952.sum5140 = add i64 %idx.ext, 1, !dbg !1740
  %add.ptr1568 = getelementptr inbounds i8* %b.9.ph, i64 %incdec.ptr952.sum5140, !dbg !1740
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1568}, i64 0, metadata !279), !dbg !1740
  br label %while.cond.backedge, !dbg !1741

sw.bb1569:                                        ; preds = %do.end
  br i1 %tobool.i, label %normal_char, label %handle_open, !dbg !1742

sw.bb1574:                                        ; preds = %do.end
  br i1 %tobool.i, label %normal_char, label %handle_close, !dbg !1743

sw.bb1579:                                        ; preds = %do.end
  br i1 %tobool1581, label %normal_char, label %handle_alt, !dbg !1484

sw.bb1584:                                        ; preds = %do.end
  br i1 %tobool19.i, label %normal_char, label %handle_alt, !dbg !1744

sw.bb1589:                                        ; preds = %do.end
  br i1 %9, label %handle_interval, label %normal_char, !dbg !1486

sw.bb1597:                                        ; preds = %do.end
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1745
  %cmp1598 = icmp eq i8* %incdec.ptr, %add.ptr, !dbg !1745
  br i1 %cmp1598, label %if.then1600, label %if.end1607, !dbg !1745

if.then1600:                                      ; preds = %sw.bb1597
  %133 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1745
  call void @free(i8* %133) #7, !dbg !1745
  br label %return, !dbg !1745

if.end1607:                                       ; preds = %sw.bb1597
  %incdec.ptr1608 = getelementptr inbounds i8* %13, i64 2, !dbg !1746
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1608}, i64 0, metadata !299), !dbg !1746
  store i8* %incdec.ptr1608, i8** %p, align 8, !dbg !1746, !tbaa !722
  %134 = load i8* %incdec.ptr, align 1, !dbg !1746, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %134}, i64 0, metadata !276), !dbg !1746
  %conv1610 = zext i8 %134 to i32, !dbg !1748
  switch i32 %conv1610, label %normal_backslash [
    i32 40, label %sw.bb1611
    i32 41, label %sw.bb1771
    i32 124, label %sw.bb2020
    i32 123, label %sw.bb2200
    i32 119, label %sw.bb2624
    i32 87, label %sw.bb2708
    i32 60, label %sw.bb2792
    i32 62, label %sw.bb2876
    i32 98, label %sw.bb2960
    i32 66, label %sw.bb3044
    i32 96, label %sw.bb3128
    i32 39, label %sw.bb3212
    i32 49, label %sw.bb3296
    i32 50, label %sw.bb3296
    i32 51, label %sw.bb3296
    i32 52, label %sw.bb3296
    i32 53, label %sw.bb3296
    i32 54, label %sw.bb3296
    i32 55, label %sw.bb3296
    i32 56, label %sw.bb3296
    i32 57, label %sw.bb3296
    i32 43, label %sw.bb3395
    i32 63, label %sw.bb3395
  ], !dbg !1748

sw.bb1611:                                        ; preds = %if.end1607
  br i1 %tobool.i, label %handle_open, label %normal_backslash, !dbg !1749

handle_open:                                      ; preds = %sw.bb1611, %sw.bb1569
  %135 = load i64* %re_nsub, align 8, !dbg !1750, !tbaa !713
  %inc1617 = add i64 %135, 1, !dbg !1750
  store i64 %inc1617, i64* %re_nsub, align 8, !dbg !1750, !tbaa !713
  %inc1618 = add i32 %regnum.06098, 1, !dbg !1751
  call void @llvm.dbg.value(metadata !{i32 %inc1618}, i64 0, metadata !307), !dbg !1751
  %compile_stack.sroa.1.12.extract.shift = lshr i64 %compile_stack.sroa.1.06119, 32, !dbg !1752
  %compile_stack.sroa.1.12.extract.trunc = trunc i64 %compile_stack.sroa.1.12.extract.shift to i32, !dbg !1752
  %compile_stack.sroa.1.8.extract.trunc = trunc i64 %compile_stack.sroa.1.06119 to i32, !dbg !1752
  %cmp1621 = icmp eq i32 %compile_stack.sroa.1.12.extract.trunc, %compile_stack.sroa.1.8.extract.trunc, !dbg !1752
  br i1 %cmp1621, label %if.then1623, label %if.end1637, !dbg !1752

if.then1623:                                      ; preds = %handle_open
  %136 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1753
  %shl1626 = shl i64 %compile_stack.sroa.1.06119, 1, !dbg !1753
  %conv1627 = and i64 %shl1626, 4294967294, !dbg !1753
  %mul = mul i64 %conv1627, 40, !dbg !1753
  %call1628 = call i8* @realloc(i8* %136, i64 %mul) #7, !dbg !1753
  %cmp1631 = icmp eq i8* %call1628, null, !dbg !1755
  br i1 %cmp1631, label %return, label %if.end1634, !dbg !1755

if.end1634:                                       ; preds = %if.then1623
  %137 = bitcast i8* %call1628 to %struct.compile_stack_elt_t*, !dbg !1753
  %compile_stack.sroa.1.8.insert.mask4289 = and i64 %compile_stack.sroa.1.06119, -4294967296, !dbg !1756
  %compile_stack.sroa.1.8.insert.insert4290 = or i64 %conv1627, %compile_stack.sroa.1.8.insert.mask4289, !dbg !1756
  br label %if.end1637, !dbg !1757

if.end1637:                                       ; preds = %handle_open, %if.end1634
  %compile_stack.sroa.0.1 = phi %struct.compile_stack_elt_t* [ %137, %if.end1634 ], [ %compile_stack.sroa.0.06113, %handle_open ]
  %compile_stack.sroa.1.1 = phi i64 [ %compile_stack.sroa.1.8.insert.insert4290, %if.end1634 ], [ %compile_stack.sroa.1.06119, %handle_open ]
  %138 = load i8** %buffer25, align 8, !dbg !1758, !tbaa !722
  %sub.ptr.lhs.cast1639 = ptrtoint i8* %begalt.06105 to i64, !dbg !1758
  %sub.ptr.rhs.cast1640 = ptrtoint i8* %138 to i64, !dbg !1758
  %sub.ptr.sub1641 = sub i64 %sub.ptr.lhs.cast1639, %sub.ptr.rhs.cast1640, !dbg !1758
  %compile_stack.sroa.1.12.extract.shift4292 = lshr i64 %compile_stack.sroa.1.1, 32, !dbg !1758
  %begalt_offset = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %compile_stack.sroa.1.12.extract.shift4292, i32 0, !dbg !1758
  store i64 %sub.ptr.sub1641, i64* %begalt_offset, align 8, !dbg !1758, !tbaa !713
  %tobool1646 = icmp eq i8* %fixup_alt_jump.06102, null, !dbg !1759
  br i1 %tobool1646, label %cond.end1654, label %cond.true1647, !dbg !1759

cond.true1647:                                    ; preds = %if.end1637
  %sub.ptr.lhs.cast1649 = ptrtoint i8* %fixup_alt_jump.06102 to i64, !dbg !1759
  %sub.ptr.sub1651 = add i64 %sub.ptr.lhs.cast1649, 1, !dbg !1759
  %add1652 = sub i64 %sub.ptr.sub1651, %sub.ptr.rhs.cast1640, !dbg !1759
  br label %cond.end1654, !dbg !1759

cond.end1654:                                     ; preds = %if.end1637, %cond.true1647
  %cond1655 = phi i64 [ %add1652, %cond.true1647 ], [ 0, %if.end1637 ], !dbg !1759
  %fixup_alt_jump1660 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %compile_stack.sroa.1.12.extract.shift4292, i32 1, !dbg !1759
  store i64 %cond1655, i64* %fixup_alt_jump1660, align 8, !dbg !1759, !tbaa !713
  %sub.ptr.lhs.cast1662 = ptrtoint i8* %b.06123 to i64, !dbg !1760
  %sub.ptr.sub1664 = sub i64 %sub.ptr.lhs.cast1662, %sub.ptr.rhs.cast1640, !dbg !1760
  %laststart_offset = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %compile_stack.sroa.1.12.extract.shift4292, i32 3, !dbg !1760
  store i64 %sub.ptr.sub1664, i64* %laststart_offset, align 8, !dbg !1760, !tbaa !713
  %regnum1673 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %compile_stack.sroa.1.12.extract.shift4292, i32 4, !dbg !1761
  store i32 %inc1618, i32* %regnum1673, align 4, !dbg !1761, !tbaa !795
  %cmp1674 = icmp ult i32 %inc1618, 256, !dbg !1762
  br i1 %cmp1674, label %if.then1676, label %if.end1768, !dbg !1762

if.then1676:                                      ; preds = %cond.end1654
  %sub.ptr.sub1680 = add i64 %sub.ptr.lhs.cast1662, 2, !dbg !1763
  %add1681 = sub i64 %sub.ptr.sub1680, %sub.ptr.rhs.cast1640, !dbg !1763
  %inner_group_offset = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %compile_stack.sroa.1.12.extract.shift4292, i32 2, !dbg !1763
  store i64 %add1681, i64* %inner_group_offset, align 8, !dbg !1763, !tbaa !713
  br label %while.cond1687.outer, !dbg !1764

while.cond1687.outer:                             ; preds = %if.end1751, %if.then1753, %if.then1676
  %139 = phi i8* [ %138, %if.then1676 ], [ %call1715, %if.then1753 ], [ %call1715, %if.end1751 ]
  %fixup_alt_jump.19.ph = phi i8* [ %fixup_alt_jump.06102, %if.then1676 ], [ %fixup_alt_jump.20, %if.then1753 ], [ %fixup_alt_jump.20, %if.end1751 ]
  %laststart.19.ph = phi i8* [ %laststart.06108, %if.then1676 ], [ %laststart.20, %if.then1753 ], [ %laststart.20, %if.end1751 ]
  %pending_exact.10.ph = phi i8* [ %pending_exact.06110, %if.then1676 ], [ %add.ptr1758, %if.then1753 ], [ null, %if.end1751 ]
  %b.10.ph = phi i8* [ %b.06123, %if.then1676 ], [ %add.ptr1730, %if.then1753 ], [ %add.ptr1730, %if.end1751 ]
  %sub.ptr.lhs.cast1689 = ptrtoint i8* %b.10.ph to i64, !dbg !1764
  br label %while.cond1687

while.cond1687:                                   ; preds = %while.cond1687.outer, %if.end1721
  %sub.ptr.rhs.cast1690 = ptrtoint i8* %139 to i64, !dbg !1764
  %sub.ptr.sub1691 = sub i64 %sub.ptr.lhs.cast1689, %sub.ptr.rhs.cast1690, !dbg !1764
  %add1692 = add nsw i64 %sub.ptr.sub1691, 3, !dbg !1764
  %140 = load i64* %allocated, align 8, !dbg !1764, !tbaa !713
  %cmp1694 = icmp ugt i64 %add1692, %140, !dbg !1764
  br i1 %cmp1694, label %do.body1697, label %while.end1762, !dbg !1764

do.body1697:                                      ; preds = %while.cond1687
  call void @llvm.dbg.value(metadata !{i8* %139}, i64 0, metadata !368), !dbg !1765
  %cmp1701 = icmp eq i64 %140, 65536, !dbg !1765
  br i1 %cmp1701, label %return, label %if.end1704, !dbg !1765

if.end1704:                                       ; preds = %do.body1697
  %shl1706 = shl i64 %140, 1, !dbg !1765
  %cmp1708 = icmp ugt i64 %shl1706, 65536, !dbg !1765
  %.shl1706 = select i1 %cmp1708, i64 65536, i64 %shl1706, !dbg !1765
  store i64 %.shl1706, i64* %allocated, align 8, !dbg !1765, !tbaa !713
  %call1715 = call i8* @realloc(i8* %139, i64 %.shl1706) #7, !dbg !1765
  store i8* %call1715, i8** %buffer25, align 8, !dbg !1765, !tbaa !722
  %cmp1718 = icmp eq i8* %call1715, null, !dbg !1765
  br i1 %cmp1718, label %return, label %if.end1721, !dbg !1765

if.end1721:                                       ; preds = %if.end1704
  %cmp1723 = icmp eq i8* %139, %call1715, !dbg !1765
  br i1 %cmp1723, label %while.cond1687, label %if.then1725, !dbg !1765

if.then1725:                                      ; preds = %if.end1721
  %add.ptr1730 = getelementptr inbounds i8* %call1715, i64 %sub.ptr.sub1691, !dbg !1766
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1730}, i64 0, metadata !279), !dbg !1766
  %tobool1736 = icmp eq i8* %fixup_alt_jump.19.ph, null, !dbg !1766
  br i1 %tobool1736, label %if.end1743, label %if.then1737, !dbg !1766

if.then1737:                                      ; preds = %if.then1725
  %sub.ptr.lhs.cast1738 = ptrtoint i8* %fixup_alt_jump.19.ph to i64, !dbg !1766
  %sub.ptr.sub1740 = sub i64 %sub.ptr.lhs.cast1738, %sub.ptr.rhs.cast1690, !dbg !1766
  %add.ptr1742 = getelementptr inbounds i8* %call1715, i64 %sub.ptr.sub1740, !dbg !1766
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1742}, i64 0, metadata !306), !dbg !1766
  br label %if.end1743, !dbg !1766

if.end1743:                                       ; preds = %if.then1725, %if.then1737
  %fixup_alt_jump.20 = phi i8* [ %add.ptr1742, %if.then1737 ], [ null, %if.then1725 ]
  %tobool1744 = icmp eq i8* %laststart.19.ph, null, !dbg !1766
  br i1 %tobool1744, label %if.end1751, label %if.then1745, !dbg !1766

if.then1745:                                      ; preds = %if.end1743
  %sub.ptr.lhs.cast1746 = ptrtoint i8* %laststart.19.ph to i64, !dbg !1766
  %sub.ptr.sub1748 = sub i64 %sub.ptr.lhs.cast1746, %sub.ptr.rhs.cast1690, !dbg !1766
  %add.ptr1750 = getelementptr inbounds i8* %call1715, i64 %sub.ptr.sub1748, !dbg !1766
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1750}, i64 0, metadata !303), !dbg !1766
  br label %if.end1751, !dbg !1766

if.end1751:                                       ; preds = %if.end1743, %if.then1745
  %laststart.20 = phi i8* [ %add.ptr1750, %if.then1745 ], [ null, %if.end1743 ]
  %tobool1752 = icmp eq i8* %pending_exact.10.ph, null, !dbg !1766
  br i1 %tobool1752, label %while.cond1687.outer, label %if.then1753, !dbg !1766

if.then1753:                                      ; preds = %if.end1751
  %sub.ptr.lhs.cast1754 = ptrtoint i8* %pending_exact.10.ph to i64, !dbg !1766
  %sub.ptr.sub1756 = sub i64 %sub.ptr.lhs.cast1754, %sub.ptr.rhs.cast1690, !dbg !1766
  %add.ptr1758 = getelementptr inbounds i8* %call1715, i64 %sub.ptr.sub1756, !dbg !1766
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1758}, i64 0, metadata !302), !dbg !1766
  br label %while.cond1687.outer, !dbg !1766

while.end1762:                                    ; preds = %while.cond1687
  %incdec.ptr1763 = getelementptr inbounds i8* %b.10.ph, i64 1, !dbg !1764
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1763}, i64 0, metadata !279), !dbg !1764
  store i8 6, i8* %b.10.ph, align 1, !dbg !1764, !tbaa !714
  %conv1764 = trunc i32 %inc1618 to i8, !dbg !1764
  %incdec.ptr1765 = getelementptr inbounds i8* %b.10.ph, i64 2, !dbg !1764
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1765}, i64 0, metadata !279), !dbg !1764
  store i8 %conv1764, i8* %incdec.ptr1763, align 1, !dbg !1764, !tbaa !714
  %incdec.ptr1766 = getelementptr inbounds i8* %b.10.ph, i64 3, !dbg !1764
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1766}, i64 0, metadata !279), !dbg !1764
  store i8 0, i8* %incdec.ptr1765, align 1, !dbg !1764, !tbaa !714
  br label %if.end1768, !dbg !1768

if.end1768:                                       ; preds = %while.end1762, %cond.end1654
  %b.11 = phi i8* [ %incdec.ptr1766, %while.end1762 ], [ %b.06123, %cond.end1654 ]
  %inc1770 = shl nuw i64 %compile_stack.sroa.1.12.extract.shift4292, 32, !dbg !1769
  %compile_stack.sroa.1.12.insert.shift = add i64 %inc1770, 4294967296, !dbg !1769
  %compile_stack.sroa.1.12.insert.mask4310 = and i64 %compile_stack.sroa.1.1, 4294967295, !dbg !1769
  %compile_stack.sroa.1.12.insert.insert = or i64 %compile_stack.sroa.1.12.insert.shift, %compile_stack.sroa.1.12.insert.mask4310, !dbg !1769
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !306), !dbg !1770
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !303), !dbg !1771
  call void @llvm.dbg.value(metadata !{i8* %b.11}, i64 0, metadata !304), !dbg !1772
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !302), !dbg !1773
  br label %while.cond.backedge, !dbg !1774

while.cond.backedge:                              ; preds = %insert_op2.exit5203, %cond.end1909, %insert_op1.exit5294, %if.end1768, %while.end2198, %while.end2705, %while.end2789, %while.end2873, %while.end2957, %while.end3041, %while.end3125, %while.end3209, %while.end3293, %while.end3391, %while.end2011, %insert_op1.exit5279, %for.end, %while.end3635, %while.end1565, %while.end700, %while.end203, %while.end, %insert_op2.exit, %insert_op1.exit
  %regnum.0.be = phi i32 [ %regnum.06098, %while.end3635 ], [ %regnum.06098, %insert_op1.exit5279 ], [ %regnum.06098, %for.end ], [ %regnum.06098, %while.end3391 ], [ %regnum.06098, %while.end3293 ], [ %regnum.06098, %while.end3209 ], [ %regnum.06098, %while.end3125 ], [ %regnum.06098, %while.end3041 ], [ %regnum.06098, %while.end2957 ], [ %regnum.06098, %while.end2873 ], [ %regnum.06098, %while.end2789 ], [ %regnum.06098, %while.end2705 ], [ %regnum.06098, %while.end2198 ], [ %regnum.06098, %while.end2011 ], [ %inc1618, %if.end1768 ], [ %regnum.06098, %while.end1565 ], [ %regnum.06098, %while.end700 ], [ %regnum.06098, %while.end203 ], [ %regnum.06098, %while.end ], [ %regnum.06098, %insert_op2.exit ], [ %regnum.06098, %insert_op1.exit ], [ %regnum.06098, %insert_op1.exit5294 ], [ %regnum.06098, %cond.end1909 ], [ %regnum.06098, %insert_op2.exit5203 ]
  %fixup_alt_jump.0.be = phi i8* [ %fixup_alt_jump.56.ph5573, %while.end3635 ], [ %fixup_alt_jump.9.ph, %insert_op1.exit5279 ], [ %fixup_alt_jump.06102, %for.end ], [ %fixup_alt_jump.51.ph, %while.end3391 ], [ %fixup_alt_jump.49.ph, %while.end3293 ], [ %fixup_alt_jump.47.ph, %while.end3209 ], [ %fixup_alt_jump.45.ph, %while.end3125 ], [ %fixup_alt_jump.43.ph, %while.end3041 ], [ %fixup_alt_jump.41.ph, %while.end2957 ], [ %fixup_alt_jump.39.ph, %while.end2873 ], [ %fixup_alt_jump.37.ph, %while.end2789 ], [ %fixup_alt_jump.35.ph, %while.end2705 ], [ %fixup_alt_jump.28.ph, %while.end2198 ], [ %fixup_alt_jump.24.ph, %while.end2011 ], [ null, %if.end1768 ], [ %fixup_alt_jump.17.ph, %while.end1565 ], [ %fixup_alt_jump.11.ph, %while.end700 ], [ %fixup_alt_jump.3.ph, %while.end203 ], [ %fixup_alt_jump.1.ph, %while.end ], [ %fixup_alt_jump.32.ph, %insert_op2.exit ], [ %fixup_alt_jump.30.ph, %insert_op1.exit ], [ %fixup_alt_jump.7.ph5537, %insert_op1.exit5294 ], [ %cond1910, %cond.end1909 ], [ %fixup_alt_jump.32.ph, %insert_op2.exit5203 ]
  %begalt.0.be = phi i8* [ %begalt.30.ph5574, %while.end3635 ], [ %begalt.5.ph, %insert_op1.exit5279 ], [ %begalt.06105, %for.end ], [ %begalt.27.ph, %while.end3391 ], [ %begalt.26.ph, %while.end3293 ], [ %begalt.25.ph, %while.end3209 ], [ %begalt.24.ph, %while.end3125 ], [ %begalt.23.ph, %while.end3041 ], [ %begalt.22.ph, %while.end2957 ], [ %begalt.21.ph, %while.end2873 ], [ %begalt.20.ph, %while.end2789 ], [ %begalt.19.ph, %while.end2705 ], [ %add.ptr2199, %while.end2198 ], [ %begalt.13.ph, %while.end2011 ], [ %b.11, %if.end1768 ], [ %begalt.9.ph, %while.end1565 ], [ %begalt.6.ph, %while.end700 ], [ %begalt.2.ph, %while.end203 ], [ %begalt.1.ph, %while.end ], [ %begalt.17.ph, %insert_op2.exit ], [ %begalt.16.ph, %insert_op1.exit ], [ %begalt.4.ph5538, %insert_op1.exit5294 ], [ %add.ptr1892, %cond.end1909 ], [ %begalt.17.ph, %insert_op2.exit5203 ]
  %laststart.0.be = phi i8* [ %laststart.57.ph5575, %while.end3635 ], [ %laststart.9.ph, %insert_op1.exit5279 ], [ null, %for.end ], [ %laststart.52.ph, %while.end3391 ], [ %laststart.50.ph, %while.end3293 ], [ %laststart.48.ph, %while.end3209 ], [ %laststart.46.ph, %while.end3125 ], [ %laststart.44.ph, %while.end3041 ], [ %laststart.42.ph, %while.end2957 ], [ %laststart.40.ph, %while.end2873 ], [ %laststart.38.ph, %while.end2789 ], [ %laststart.36.ph, %while.end2705 ], [ null, %while.end2198 ], [ %laststart.24.ph, %while.end2011 ], [ null, %if.end1768 ], [ %laststart.17.ph, %while.end1565 ], [ %laststart.11.ph, %while.end700 ], [ %laststart.3.ph, %while.end203 ], [ %laststart.1.ph, %while.end ], [ %laststart.33.ph, %insert_op2.exit ], [ %laststart.31.ph, %insert_op1.exit ], [ %laststart.7.ph5539, %insert_op1.exit5294 ], [ %add.ptr1917, %cond.end1909 ], [ %laststart.33.ph, %insert_op2.exit5203 ]
  %pending_exact.0.be = phi i8* [ %pending_exact.29.ph5576, %while.end3635 ], [ null, %insert_op1.exit5279 ], [ %pending_exact.06110, %for.end ], [ %pending_exact.26.ph, %while.end3391 ], [ %pending_exact.25.ph, %while.end3293 ], [ %pending_exact.24.ph, %while.end3209 ], [ %pending_exact.23.ph, %while.end3125 ], [ %pending_exact.22.ph, %while.end3041 ], [ %pending_exact.21.ph, %while.end2957 ], [ %pending_exact.20.ph, %while.end2873 ], [ %pending_exact.19.ph, %while.end2789 ], [ %pending_exact.18.ph, %while.end2705 ], [ null, %while.end2198 ], [ null, %while.end2011 ], [ null, %if.end1768 ], [ %pending_exact.9.ph, %while.end1565 ], [ %pending_exact.6.ph, %while.end700 ], [ %pending_exact.2.ph, %while.end203 ], [ %pending_exact.1.ph, %while.end ], [ null, %insert_op2.exit ], [ null, %insert_op1.exit ], [ null, %insert_op1.exit5294 ], [ null, %cond.end1909 ], [ null, %insert_op2.exit5203 ]
  %compile_stack.sroa.0.0.be = phi %struct.compile_stack_elt_t* [ %compile_stack.sroa.0.06113, %while.end3635 ], [ %compile_stack.sroa.0.06113, %insert_op1.exit5279 ], [ %compile_stack.sroa.0.06113, %for.end ], [ %compile_stack.sroa.0.06113, %while.end3391 ], [ %compile_stack.sroa.0.06113, %while.end3293 ], [ %compile_stack.sroa.0.06113, %while.end3209 ], [ %compile_stack.sroa.0.06113, %while.end3125 ], [ %compile_stack.sroa.0.06113, %while.end3041 ], [ %compile_stack.sroa.0.06113, %while.end2957 ], [ %compile_stack.sroa.0.06113, %while.end2873 ], [ %compile_stack.sroa.0.06113, %while.end2789 ], [ %compile_stack.sroa.0.06113, %while.end2705 ], [ %compile_stack.sroa.0.06113, %while.end2198 ], [ %compile_stack.sroa.0.06113, %while.end2011 ], [ %compile_stack.sroa.0.1, %if.end1768 ], [ %compile_stack.sroa.0.06113, %while.end1565 ], [ %compile_stack.sroa.0.06113, %while.end700 ], [ %compile_stack.sroa.0.06113, %while.end203 ], [ %compile_stack.sroa.0.06113, %while.end ], [ %compile_stack.sroa.0.06113, %insert_op2.exit ], [ %compile_stack.sroa.0.06113, %insert_op1.exit ], [ %compile_stack.sroa.0.06113, %insert_op1.exit5294 ], [ %compile_stack.sroa.0.06113, %cond.end1909 ], [ %compile_stack.sroa.0.06113, %insert_op2.exit5203 ]
  %compile_stack.sroa.1.0.be = phi i64 [ %compile_stack.sroa.1.06119, %while.end3635 ], [ %compile_stack.sroa.1.06119, %insert_op1.exit5279 ], [ %compile_stack.sroa.1.06119, %for.end ], [ %compile_stack.sroa.1.06119, %while.end3391 ], [ %compile_stack.sroa.1.06119, %while.end3293 ], [ %compile_stack.sroa.1.06119, %while.end3209 ], [ %compile_stack.sroa.1.06119, %while.end3125 ], [ %compile_stack.sroa.1.06119, %while.end3041 ], [ %compile_stack.sroa.1.06119, %while.end2957 ], [ %compile_stack.sroa.1.06119, %while.end2873 ], [ %compile_stack.sroa.1.06119, %while.end2789 ], [ %compile_stack.sroa.1.06119, %while.end2705 ], [ %compile_stack.sroa.1.06119, %while.end2198 ], [ %compile_stack.sroa.1.12.insert.insert4324, %while.end2011 ], [ %compile_stack.sroa.1.12.insert.insert, %if.end1768 ], [ %compile_stack.sroa.1.06119, %while.end1565 ], [ %compile_stack.sroa.1.06119, %while.end700 ], [ %compile_stack.sroa.1.06119, %while.end203 ], [ %compile_stack.sroa.1.06119, %while.end ], [ %compile_stack.sroa.1.06119, %insert_op2.exit ], [ %compile_stack.sroa.1.06119, %insert_op1.exit ], [ %compile_stack.sroa.1.06119, %insert_op1.exit5294 ], [ %compile_stack.sroa.1.12.insert.insert4324, %cond.end1909 ], [ %compile_stack.sroa.1.06119, %insert_op2.exit5203 ]
  %b.0.be = phi i8* [ %incdec.ptr3636, %while.end3635 ], [ %add.ptr621.pre, %insert_op1.exit5279 ], [ %b.06123, %for.end ], [ %incdec.ptr3393, %while.end3391 ], [ %incdec.ptr3294, %while.end3293 ], [ %incdec.ptr3210, %while.end3209 ], [ %incdec.ptr3126, %while.end3125 ], [ %incdec.ptr3042, %while.end3041 ], [ %incdec.ptr2958, %while.end2957 ], [ %incdec.ptr2874, %while.end2873 ], [ %incdec.ptr2790, %while.end2789 ], [ %incdec.ptr2706, %while.end2705 ], [ %add.ptr2199, %while.end2198 ], [ %incdec.ptr2017, %while.end2011 ], [ %b.11, %if.end1768 ], [ %add.ptr1568, %while.end1565 ], [ %incdec.ptr701, %while.end700 ], [ %incdec.ptr204, %while.end203 ], [ %incdec.ptr112, %while.end ], [ %add.ptr2596.pre, %insert_op2.exit ], [ %add.ptr2478, %insert_op1.exit ], [ %add.ptr530, %insert_op1.exit5294 ], [ %b.13, %cond.end1909 ], [ %add.ptr2579.pre, %insert_op2.exit5203 ]
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1460
  %141 = load i8** %p, align 8, !dbg !1460, !tbaa !722
  %cmp26 = icmp eq i8* %141, %add.ptr, !dbg !1460
  br i1 %cmp26, label %while.end3640, label %if.end29, !dbg !1460

sw.bb1771:                                        ; preds = %if.end1607
  br i1 %tobool.i, label %if.end1775, label %normal_backslash, !dbg !1775

if.end1775:                                       ; preds = %sw.bb1771
  %cmp1777 = icmp ult i64 %compile_stack.sroa.1.06119, 4294967296, !dbg !1776
  br i1 %cmp1777, label %if.then1779, label %handle_close, !dbg !1776

if.then1779:                                      ; preds = %if.end1775
  br i1 %tobool1879, label %if.else1783, label %normal_backslash, !dbg !1777

if.else1783:                                      ; preds = %if.then1779
  %142 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1779
  call void @free(i8* %142) #7, !dbg !1779
  br label %return, !dbg !1779

handle_close:                                     ; preds = %sw.bb1574, %if.end1775
  %c.6 = phi i8 [ %134, %if.end1775 ], [ %c.0, %sw.bb1574 ]
  %tobool1786 = icmp eq i8* %fixup_alt_jump.06102, null, !dbg !1780
  br i1 %tobool1786, label %if.end1873, label %while.cond1789.preheader, !dbg !1780

while.cond1789.preheader:                         ; preds = %handle_close
  %.pre6478.pre = load i8** %buffer25, align 8, !dbg !1781, !tbaa !722
  br label %while.cond1789.outer, !dbg !1781

while.cond1789.outer:                             ; preds = %if.end1853, %if.then1855, %while.cond1789.preheader
  %.pre6478 = phi i8* [ %.pre6478.pre, %while.cond1789.preheader ], [ %call1817, %if.then1855 ], [ %call1817, %if.end1853 ]
  %fixup_alt_jump.21.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond1789.preheader ], [ %fixup_alt_jump.22, %if.then1855 ], [ %fixup_alt_jump.22, %if.end1853 ]
  %begalt.11.ph = phi i8* [ %begalt.06105, %while.cond1789.preheader ], [ %add.ptr1837, %if.then1855 ], [ %add.ptr1837, %if.end1853 ]
  %laststart.21.ph = phi i8* [ %laststart.06108, %while.cond1789.preheader ], [ %laststart.22, %if.then1855 ], [ %laststart.22, %if.end1853 ]
  %pending_exact.11.ph = phi i8* [ %pending_exact.06110, %while.cond1789.preheader ], [ %add.ptr1860, %if.then1855 ], [ null, %if.end1853 ]
  %b.12.ph = phi i8* [ %b.06123, %while.cond1789.preheader ], [ %add.ptr1832, %if.then1855 ], [ %add.ptr1832, %if.end1853 ]
  %sub.ptr.lhs.cast1791 = ptrtoint i8* %b.12.ph to i64, !dbg !1781
  br label %while.cond1789

while.cond1789:                                   ; preds = %if.end1823, %while.cond1789.outer
  %sub.ptr.rhs.cast1792 = ptrtoint i8* %.pre6478 to i64, !dbg !1781
  %sub.ptr.sub1793 = sub i64 %sub.ptr.lhs.cast1791, %sub.ptr.rhs.cast1792, !dbg !1781
  %add1794 = add nsw i64 %sub.ptr.sub1793, 1, !dbg !1781
  %143 = load i64* %allocated, align 8, !dbg !1781, !tbaa !713
  %cmp1796 = icmp ugt i64 %add1794, %143, !dbg !1781
  br i1 %cmp1796, label %do.body1799, label %while.end1864, !dbg !1781

do.body1799:                                      ; preds = %while.cond1789
  call void @llvm.dbg.value(metadata !{i8* %.pre6478}, i64 0, metadata !373), !dbg !1782
  %cmp1803 = icmp eq i64 %143, 65536, !dbg !1782
  br i1 %cmp1803, label %return, label %if.end1806, !dbg !1782

if.end1806:                                       ; preds = %do.body1799
  %shl1808 = shl i64 %143, 1, !dbg !1782
  %cmp1810 = icmp ugt i64 %shl1808, 65536, !dbg !1782
  %.shl1808 = select i1 %cmp1810, i64 65536, i64 %shl1808, !dbg !1782
  store i64 %.shl1808, i64* %allocated, align 8, !dbg !1782, !tbaa !713
  %call1817 = call i8* @realloc(i8* %.pre6478, i64 %.shl1808) #7, !dbg !1782
  store i8* %call1817, i8** %buffer25, align 8, !dbg !1782, !tbaa !722
  %cmp1820 = icmp eq i8* %call1817, null, !dbg !1782
  br i1 %cmp1820, label %return, label %if.end1823, !dbg !1782

if.end1823:                                       ; preds = %if.end1806
  %cmp1825 = icmp eq i8* %.pre6478, %call1817, !dbg !1782
  br i1 %cmp1825, label %while.cond1789, label %if.then1827, !dbg !1782

if.then1827:                                      ; preds = %if.end1823
  %add.ptr1832 = getelementptr inbounds i8* %call1817, i64 %sub.ptr.sub1793, !dbg !1783
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1832}, i64 0, metadata !279), !dbg !1783
  %sub.ptr.lhs.cast1833 = ptrtoint i8* %begalt.11.ph to i64, !dbg !1783
  %sub.ptr.sub1835 = sub i64 %sub.ptr.lhs.cast1833, %sub.ptr.rhs.cast1792, !dbg !1783
  %add.ptr1837 = getelementptr inbounds i8* %call1817, i64 %sub.ptr.sub1835, !dbg !1783
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1837}, i64 0, metadata !304), !dbg !1783
  %tobool1838 = icmp eq i8* %fixup_alt_jump.21.ph, null, !dbg !1783
  br i1 %tobool1838, label %if.end1845, label %if.then1839, !dbg !1783

if.then1839:                                      ; preds = %if.then1827
  %sub.ptr.lhs.cast1840 = ptrtoint i8* %fixup_alt_jump.21.ph to i64, !dbg !1783
  %sub.ptr.sub1842 = sub i64 %sub.ptr.lhs.cast1840, %sub.ptr.rhs.cast1792, !dbg !1783
  %add.ptr1844 = getelementptr inbounds i8* %call1817, i64 %sub.ptr.sub1842, !dbg !1783
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1844}, i64 0, metadata !306), !dbg !1783
  br label %if.end1845, !dbg !1783

if.end1845:                                       ; preds = %if.then1827, %if.then1839
  %fixup_alt_jump.22 = phi i8* [ %add.ptr1844, %if.then1839 ], [ null, %if.then1827 ]
  %tobool1846 = icmp eq i8* %laststart.21.ph, null, !dbg !1783
  br i1 %tobool1846, label %if.end1853, label %if.then1847, !dbg !1783

if.then1847:                                      ; preds = %if.end1845
  %sub.ptr.lhs.cast1848 = ptrtoint i8* %laststart.21.ph to i64, !dbg !1783
  %sub.ptr.sub1850 = sub i64 %sub.ptr.lhs.cast1848, %sub.ptr.rhs.cast1792, !dbg !1783
  %add.ptr1852 = getelementptr inbounds i8* %call1817, i64 %sub.ptr.sub1850, !dbg !1783
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1852}, i64 0, metadata !303), !dbg !1783
  br label %if.end1853, !dbg !1783

if.end1853:                                       ; preds = %if.end1845, %if.then1847
  %laststart.22 = phi i8* [ %add.ptr1852, %if.then1847 ], [ null, %if.end1845 ]
  %tobool1854 = icmp eq i8* %pending_exact.11.ph, null, !dbg !1783
  br i1 %tobool1854, label %while.cond1789.outer, label %if.then1855, !dbg !1783

if.then1855:                                      ; preds = %if.end1853
  %sub.ptr.lhs.cast1856 = ptrtoint i8* %pending_exact.11.ph to i64, !dbg !1783
  %sub.ptr.sub1858 = sub i64 %sub.ptr.lhs.cast1856, %sub.ptr.rhs.cast1792, !dbg !1783
  %add.ptr1860 = getelementptr inbounds i8* %call1817, i64 %sub.ptr.sub1858, !dbg !1783
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1860}, i64 0, metadata !302), !dbg !1783
  br label %while.cond1789.outer, !dbg !1783

while.end1864:                                    ; preds = %while.cond1789
  %incdec.ptr1865 = getelementptr inbounds i8* %b.12.ph, i64 1, !dbg !1781
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1865}, i64 0, metadata !279), !dbg !1781
  store i8 20, i8* %b.12.ph, align 1, !dbg !1781, !tbaa !714
  %sub.ptr.rhs.cast1869 = ptrtoint i8* %fixup_alt_jump.21.ph to i64, !dbg !1785
  %sub.ptr.sub1870 = sub i64 %sub.ptr.lhs.cast1791, %sub.ptr.rhs.cast1869, !dbg !1785
  %sub1871 = add nsw i64 %sub.ptr.sub1870, 4294967293, !dbg !1785
  %conv1872 = trunc i64 %sub1871 to i32, !dbg !1785
  tail call void @llvm.dbg.value(metadata !1786, i64 0, metadata !1787), !dbg !1788
  tail call void @llvm.dbg.value(metadata !{i8* %fixup_alt_jump.21.ph}, i64 0, metadata !1789), !dbg !1790
  tail call void @llvm.dbg.value(metadata !{i32 %conv1872}, i64 0, metadata !1791), !dbg !1792
  store i8 14, i8* %fixup_alt_jump.21.ph, align 1, !dbg !1793, !tbaa !714
  %conv1.i5257 = trunc i64 %sub1871 to i8, !dbg !1794
  %add.ptr.i5258 = getelementptr inbounds i8* %fixup_alt_jump.21.ph, i64 1, !dbg !1794
  store i8 %conv1.i5257, i8* %add.ptr.i5258, align 1, !dbg !1794, !tbaa !714
  %shr8.i5259 = lshr i32 %conv1872, 8, !dbg !1794
  %conv2.i5260 = trunc i32 %shr8.i5259 to i8, !dbg !1794
  %arrayidx4.i5261 = getelementptr inbounds i8* %fixup_alt_jump.21.ph, i64 2, !dbg !1794
  store i8 %conv2.i5260, i8* %arrayidx4.i5261, align 1, !dbg !1794, !tbaa !714
  br label %if.end1873, !dbg !1795

if.end1873:                                       ; preds = %handle_close, %while.end1864
  %fixup_alt_jump.23 = phi i8* [ %fixup_alt_jump.21.ph, %while.end1864 ], [ null, %handle_close ]
  %begalt.12 = phi i8* [ %begalt.11.ph, %while.end1864 ], [ %begalt.06105, %handle_close ]
  %laststart.23 = phi i8* [ %laststart.21.ph, %while.end1864 ], [ %laststart.06108, %handle_close ]
  %pending_exact.12 = phi i8* [ %pending_exact.11.ph, %while.end1864 ], [ %pending_exact.06110, %handle_close ]
  %b.13 = phi i8* [ %incdec.ptr1865, %while.end1864 ], [ %b.06123, %handle_close ]
  %compile_stack.sroa.1.12.extract.shift4315 = lshr i64 %compile_stack.sroa.1.06119, 32, !dbg !1796
  %cmp1875 = icmp eq i64 %compile_stack.sroa.1.12.extract.shift4315, 0, !dbg !1796
  br i1 %cmp1875, label %if.then1877, label %if.end1883, !dbg !1796

if.then1877:                                      ; preds = %if.end1873
  br i1 %tobool1879, label %if.else1881, label %normal_char, !dbg !1482

if.else1881:                                      ; preds = %if.then1877
  %144 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1797
  call void @free(i8* %144) #7, !dbg !1797
  br label %return, !dbg !1797

if.end1883:                                       ; preds = %if.end1873
  %dec1885 = add i64 %compile_stack.sroa.1.12.extract.shift4315, 4294967295, !dbg !1798
  %compile_stack.sroa.1.12.insert.shift4322 = shl i64 %dec1885, 32, !dbg !1798
  %compile_stack.sroa.1.12.insert.mask4323 = and i64 %compile_stack.sroa.1.06119, 4294967295, !dbg !1798
  %compile_stack.sroa.1.12.insert.insert4324 = or i64 %compile_stack.sroa.1.12.insert.shift4322, %compile_stack.sroa.1.12.insert.mask4323, !dbg !1798
  %145 = load i8** %buffer25, align 8, !dbg !1799, !tbaa !722
  %idxprom1888 = and i64 %dec1885, 4294967295, !dbg !1799
  %begalt_offset1891 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113, i64 %idxprom1888, i32 0, !dbg !1799
  %146 = load i64* %begalt_offset1891, align 8, !dbg !1799, !tbaa !713
  %add.ptr1892 = getelementptr inbounds i8* %145, i64 %146, !dbg !1799
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1892}, i64 0, metadata !304), !dbg !1799
  %fixup_alt_jump1897 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113, i64 %idxprom1888, i32 1, !dbg !1800
  %147 = load i64* %fixup_alt_jump1897, align 8, !dbg !1800, !tbaa !713
  %tobool1898 = icmp eq i64 %147, 0, !dbg !1800
  br i1 %tobool1898, label %cond.end1909, label %cond.true1899, !dbg !1800

cond.true1899:                                    ; preds = %if.end1883
  %add.ptr1906.sum = add i64 %147, -1, !dbg !1800
  %add.ptr1907 = getelementptr inbounds i8* %145, i64 %add.ptr1906.sum, !dbg !1800
  br label %cond.end1909, !dbg !1800

cond.end1909:                                     ; preds = %if.end1883, %cond.true1899
  %cond1910 = phi i8* [ %add.ptr1907, %cond.true1899 ], [ null, %if.end1883 ], !dbg !1800
  call void @llvm.dbg.value(metadata !{i8* %cond1910}, i64 0, metadata !306), !dbg !1800
  %laststart_offset1916 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113, i64 %idxprom1888, i32 3, !dbg !1801
  %148 = load i64* %laststart_offset1916, align 8, !dbg !1801, !tbaa !713
  %add.ptr1917 = getelementptr inbounds i8* %145, i64 %148, !dbg !1801
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1917}, i64 0, metadata !303), !dbg !1801
  %regnum1922 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113, i64 %idxprom1888, i32 4, !dbg !1802
  %149 = load i32* %regnum1922, align 4, !dbg !1802, !tbaa !795
  call void @llvm.dbg.value(metadata !{i32 %149}, i64 0, metadata !377), !dbg !1802
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !302), !dbg !1803
  %cmp1923 = icmp ult i32 %149, 256, !dbg !1804
  br i1 %cmp1923, label %if.then1925, label %while.cond.backedge, !dbg !1804

if.then1925:                                      ; preds = %cond.end1909
  %inner_group_offset1931 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113, i64 %idxprom1888, i32 2, !dbg !1805
  %150 = load i64* %inner_group_offset1931, align 8, !dbg !1805, !tbaa !713
  %add.ptr1932 = getelementptr inbounds i8* %145, i64 %150, !dbg !1805
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1932}, i64 0, metadata !379), !dbg !1805
  %sub1933 = sub i32 %regnum.06098, %149, !dbg !1806
  %conv1934 = trunc i32 %sub1933 to i8, !dbg !1806
  store i8 %conv1934, i8* %add.ptr1932, align 1, !dbg !1806, !tbaa !714
  %.pre6477.pre = load i8** %buffer25, align 8, !dbg !1807, !tbaa !722
  br label %while.cond1936.outer, !dbg !1807

while.cond1936.outer:                             ; preds = %if.then1994, %if.end1992, %if.then1925
  %.pre6477 = phi i8* [ %.pre6477.pre, %if.then1925 ], [ %call1964, %if.end1992 ], [ %call1964, %if.then1994 ]
  %fixup_alt_jump.24.ph = phi i8* [ %cond1910, %if.then1925 ], [ %fixup_alt_jump.25, %if.end1992 ], [ %fixup_alt_jump.25, %if.then1994 ]
  %begalt.13.ph = phi i8* [ %add.ptr1892, %if.then1925 ], [ %add.ptr1984, %if.end1992 ], [ %add.ptr1984, %if.then1994 ]
  %laststart.24.ph = phi i8* [ %add.ptr1917, %if.then1925 ], [ null, %if.end1992 ], [ %add.ptr1999, %if.then1994 ]
  %b.14.ph = phi i8* [ %b.13, %if.then1925 ], [ %add.ptr1979, %if.end1992 ], [ %add.ptr1979, %if.then1994 ]
  %sub.ptr.lhs.cast1938 = ptrtoint i8* %b.14.ph to i64, !dbg !1807
  br label %while.cond1936

while.cond1936:                                   ; preds = %while.cond1936.outer, %if.end1970
  %sub.ptr.rhs.cast1939 = ptrtoint i8* %.pre6477 to i64, !dbg !1807
  %sub.ptr.sub1940 = sub i64 %sub.ptr.lhs.cast1938, %sub.ptr.rhs.cast1939, !dbg !1807
  %add1941 = add nsw i64 %sub.ptr.sub1940, 3, !dbg !1807
  %151 = load i64* %allocated, align 8, !dbg !1807, !tbaa !713
  %cmp1943 = icmp ugt i64 %add1941, %151, !dbg !1807
  br i1 %cmp1943, label %do.body1946, label %while.end2011, !dbg !1807

do.body1946:                                      ; preds = %while.cond1936
  call void @llvm.dbg.value(metadata !{i8* %.pre6477}, i64 0, metadata !381), !dbg !1808
  %cmp1950 = icmp eq i64 %151, 65536, !dbg !1808
  br i1 %cmp1950, label %return, label %if.end1953, !dbg !1808

if.end1953:                                       ; preds = %do.body1946
  %shl1955 = shl i64 %151, 1, !dbg !1808
  %cmp1957 = icmp ugt i64 %shl1955, 65536, !dbg !1808
  %.shl1955 = select i1 %cmp1957, i64 65536, i64 %shl1955, !dbg !1808
  store i64 %.shl1955, i64* %allocated, align 8, !dbg !1808, !tbaa !713
  %call1964 = call i8* @realloc(i8* %.pre6477, i64 %.shl1955) #7, !dbg !1808
  store i8* %call1964, i8** %buffer25, align 8, !dbg !1808, !tbaa !722
  %cmp1967 = icmp eq i8* %call1964, null, !dbg !1808
  br i1 %cmp1967, label %return, label %if.end1970, !dbg !1808

if.end1970:                                       ; preds = %if.end1953
  %cmp1972 = icmp eq i8* %.pre6477, %call1964, !dbg !1808
  br i1 %cmp1972, label %while.cond1936, label %if.then1974, !dbg !1808

if.then1974:                                      ; preds = %if.end1970
  %add.ptr1979 = getelementptr inbounds i8* %call1964, i64 %sub.ptr.sub1940, !dbg !1809
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1979}, i64 0, metadata !279), !dbg !1809
  %sub.ptr.lhs.cast1980 = ptrtoint i8* %begalt.13.ph to i64, !dbg !1809
  %sub.ptr.sub1982 = sub i64 %sub.ptr.lhs.cast1980, %sub.ptr.rhs.cast1939, !dbg !1809
  %add.ptr1984 = getelementptr inbounds i8* %call1964, i64 %sub.ptr.sub1982, !dbg !1809
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1984}, i64 0, metadata !304), !dbg !1809
  %tobool1985 = icmp eq i8* %fixup_alt_jump.24.ph, null, !dbg !1809
  br i1 %tobool1985, label %if.end1992, label %if.then1986, !dbg !1809

if.then1986:                                      ; preds = %if.then1974
  %sub.ptr.lhs.cast1987 = ptrtoint i8* %fixup_alt_jump.24.ph to i64, !dbg !1809
  %sub.ptr.sub1989 = sub i64 %sub.ptr.lhs.cast1987, %sub.ptr.rhs.cast1939, !dbg !1809
  %add.ptr1991 = getelementptr inbounds i8* %call1964, i64 %sub.ptr.sub1989, !dbg !1809
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1991}, i64 0, metadata !306), !dbg !1809
  br label %if.end1992, !dbg !1809

if.end1992:                                       ; preds = %if.then1974, %if.then1986
  %fixup_alt_jump.25 = phi i8* [ %add.ptr1991, %if.then1986 ], [ null, %if.then1974 ]
  %tobool1993 = icmp eq i8* %laststart.24.ph, null, !dbg !1809
  br i1 %tobool1993, label %while.cond1936.outer, label %if.then1994, !dbg !1809

if.then1994:                                      ; preds = %if.end1992
  %sub.ptr.lhs.cast1995 = ptrtoint i8* %laststart.24.ph to i64, !dbg !1809
  %sub.ptr.sub1997 = sub i64 %sub.ptr.lhs.cast1995, %sub.ptr.rhs.cast1939, !dbg !1809
  %add.ptr1999 = getelementptr inbounds i8* %call1964, i64 %sub.ptr.sub1997, !dbg !1809
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1999}, i64 0, metadata !303), !dbg !1809
  br label %while.cond1936.outer, !dbg !1809

while.end2011:                                    ; preds = %while.cond1936
  %incdec.ptr2012 = getelementptr inbounds i8* %b.14.ph, i64 1, !dbg !1807
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2012}, i64 0, metadata !279), !dbg !1807
  store i8 7, i8* %b.14.ph, align 1, !dbg !1807, !tbaa !714
  %conv2013 = trunc i32 %149 to i8, !dbg !1807
  %incdec.ptr2014 = getelementptr inbounds i8* %b.14.ph, i64 2, !dbg !1807
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2014}, i64 0, metadata !279), !dbg !1807
  store i8 %conv2013, i8* %incdec.ptr2012, align 1, !dbg !1807, !tbaa !714
  %incdec.ptr2017 = getelementptr inbounds i8* %b.14.ph, i64 3, !dbg !1807
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2017}, i64 0, metadata !279), !dbg !1807
  store i8 %conv1934, i8* %incdec.ptr2014, align 1, !dbg !1807, !tbaa !714
  br label %while.cond.backedge, !dbg !1811

sw.bb2020:                                        ; preds = %if.end1607
  br i1 %11, label %handle_alt, label %normal_backslash, !dbg !1488

handle_alt:                                       ; preds = %sw.bb2020, %sw.bb1579, %sw.bb1584
  %c.7 = phi i8 [ %c.0, %sw.bb1584 ], [ %c.0, %sw.bb1579 ], [ %134, %sw.bb2020 ]
  br i1 %tobool2029, label %while.cond2032.preheader, label %normal_char, !dbg !1485

while.cond2032.preheader:                         ; preds = %handle_alt
  %.pre6479.pre = load i8** %buffer25, align 8, !dbg !1812, !tbaa !722
  br label %while.cond2032.outer, !dbg !1812

while.cond2032.outer:                             ; preds = %if.end2096, %if.then2098, %while.cond2032.preheader
  %.pre6479 = phi i8* [ %.pre6479.pre, %while.cond2032.preheader ], [ %call2060, %if.then2098 ], [ %call2060, %if.end2096 ]
  %fixup_alt_jump.26.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2032.preheader ], [ %fixup_alt_jump.27, %if.then2098 ], [ %fixup_alt_jump.27, %if.end2096 ]
  %begalt.14.ph = phi i8* [ %begalt.06105, %while.cond2032.preheader ], [ %add.ptr2080, %if.then2098 ], [ %add.ptr2080, %if.end2096 ]
  %laststart.26.ph = phi i8* [ %laststart.06108, %while.cond2032.preheader ], [ %laststart.27, %if.then2098 ], [ %laststart.27, %if.end2096 ]
  %pending_exact.14.ph = phi i8* [ %pending_exact.06110, %while.cond2032.preheader ], [ %add.ptr2103, %if.then2098 ], [ null, %if.end2096 ]
  %b.15.ph = phi i8* [ %b.06123, %while.cond2032.preheader ], [ %add.ptr2075, %if.then2098 ], [ %add.ptr2075, %if.end2096 ]
  %sub.ptr.lhs.cast2034 = ptrtoint i8* %b.15.ph to i64, !dbg !1812
  br label %while.cond2032

while.cond2032:                                   ; preds = %if.end2066, %while.cond2032.outer
  %sub.ptr.rhs.cast2035 = ptrtoint i8* %.pre6479 to i64, !dbg !1812
  %sub.ptr.sub2036 = sub i64 %sub.ptr.lhs.cast2034, %sub.ptr.rhs.cast2035, !dbg !1812
  %add2037 = add nsw i64 %sub.ptr.sub2036, 3, !dbg !1812
  %152 = load i64* %allocated, align 8, !dbg !1812, !tbaa !713
  %cmp2039 = icmp ugt i64 %add2037, %152, !dbg !1812
  br i1 %cmp2039, label %do.body2042, label %while.end2107, !dbg !1812

do.body2042:                                      ; preds = %while.cond2032
  call void @llvm.dbg.value(metadata !{i8* %.pre6479}, i64 0, metadata !384), !dbg !1813
  %cmp2046 = icmp eq i64 %152, 65536, !dbg !1813
  br i1 %cmp2046, label %return, label %if.end2049, !dbg !1813

if.end2049:                                       ; preds = %do.body2042
  %shl2051 = shl i64 %152, 1, !dbg !1813
  %cmp2053 = icmp ugt i64 %shl2051, 65536, !dbg !1813
  %.shl2051 = select i1 %cmp2053, i64 65536, i64 %shl2051, !dbg !1813
  store i64 %.shl2051, i64* %allocated, align 8, !dbg !1813, !tbaa !713
  %call2060 = call i8* @realloc(i8* %.pre6479, i64 %.shl2051) #7, !dbg !1813
  store i8* %call2060, i8** %buffer25, align 8, !dbg !1813, !tbaa !722
  %cmp2063 = icmp eq i8* %call2060, null, !dbg !1813
  br i1 %cmp2063, label %return, label %if.end2066, !dbg !1813

if.end2066:                                       ; preds = %if.end2049
  %cmp2068 = icmp eq i8* %.pre6479, %call2060, !dbg !1813
  br i1 %cmp2068, label %while.cond2032, label %if.then2070, !dbg !1813

if.then2070:                                      ; preds = %if.end2066
  %add.ptr2075 = getelementptr inbounds i8* %call2060, i64 %sub.ptr.sub2036, !dbg !1814
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2075}, i64 0, metadata !279), !dbg !1814
  %sub.ptr.lhs.cast2076 = ptrtoint i8* %begalt.14.ph to i64, !dbg !1814
  %sub.ptr.sub2078 = sub i64 %sub.ptr.lhs.cast2076, %sub.ptr.rhs.cast2035, !dbg !1814
  %add.ptr2080 = getelementptr inbounds i8* %call2060, i64 %sub.ptr.sub2078, !dbg !1814
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2080}, i64 0, metadata !304), !dbg !1814
  %tobool2081 = icmp eq i8* %fixup_alt_jump.26.ph, null, !dbg !1814
  br i1 %tobool2081, label %if.end2088, label %if.then2082, !dbg !1814

if.then2082:                                      ; preds = %if.then2070
  %sub.ptr.lhs.cast2083 = ptrtoint i8* %fixup_alt_jump.26.ph to i64, !dbg !1814
  %sub.ptr.sub2085 = sub i64 %sub.ptr.lhs.cast2083, %sub.ptr.rhs.cast2035, !dbg !1814
  %add.ptr2087 = getelementptr inbounds i8* %call2060, i64 %sub.ptr.sub2085, !dbg !1814
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2087}, i64 0, metadata !306), !dbg !1814
  br label %if.end2088, !dbg !1814

if.end2088:                                       ; preds = %if.then2070, %if.then2082
  %fixup_alt_jump.27 = phi i8* [ %add.ptr2087, %if.then2082 ], [ null, %if.then2070 ]
  %tobool2089 = icmp eq i8* %laststart.26.ph, null, !dbg !1814
  br i1 %tobool2089, label %if.end2096, label %if.then2090, !dbg !1814

if.then2090:                                      ; preds = %if.end2088
  %sub.ptr.lhs.cast2091 = ptrtoint i8* %laststart.26.ph to i64, !dbg !1814
  %sub.ptr.sub2093 = sub i64 %sub.ptr.lhs.cast2091, %sub.ptr.rhs.cast2035, !dbg !1814
  %add.ptr2095 = getelementptr inbounds i8* %call2060, i64 %sub.ptr.sub2093, !dbg !1814
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2095}, i64 0, metadata !303), !dbg !1814
  br label %if.end2096, !dbg !1814

if.end2096:                                       ; preds = %if.end2088, %if.then2090
  %laststart.27 = phi i8* [ %add.ptr2095, %if.then2090 ], [ null, %if.end2088 ]
  %tobool2097 = icmp eq i8* %pending_exact.14.ph, null, !dbg !1814
  br i1 %tobool2097, label %while.cond2032.outer, label %if.then2098, !dbg !1814

if.then2098:                                      ; preds = %if.end2096
  %sub.ptr.lhs.cast2099 = ptrtoint i8* %pending_exact.14.ph to i64, !dbg !1814
  %sub.ptr.sub2101 = sub i64 %sub.ptr.lhs.cast2099, %sub.ptr.rhs.cast2035, !dbg !1814
  %add.ptr2103 = getelementptr inbounds i8* %call2060, i64 %sub.ptr.sub2101, !dbg !1814
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2103}, i64 0, metadata !302), !dbg !1814
  br label %while.cond2032.outer, !dbg !1814

while.end2107:                                    ; preds = %while.cond2032
  %add.ptr2108 = getelementptr inbounds i8* %b.15.ph, i64 6, !dbg !1816
  %sub.ptr.lhs.cast2109 = ptrtoint i8* %add.ptr2108 to i64, !dbg !1816
  %sub.ptr.rhs.cast2110 = ptrtoint i8* %begalt.14.ph to i64, !dbg !1816
  %sub.ptr.sub2111 = sub i64 %sub.ptr.lhs.cast2109, %sub.ptr.rhs.cast2110, !dbg !1816
  %sub2112 = add nsw i64 %sub.ptr.sub2111, 4294967293, !dbg !1816
  %conv2113 = trunc i64 %sub2112 to i32, !dbg !1816
  tail call void @llvm.dbg.value(metadata !1817, i64 0, metadata !1818), !dbg !1819
  tail call void @llvm.dbg.value(metadata !{i8* %begalt.14.ph}, i64 0, metadata !1820), !dbg !1821
  tail call void @llvm.dbg.value(metadata !{i32 %conv2113}, i64 0, metadata !1822), !dbg !1823
  tail call void @llvm.dbg.value(metadata !{i8* %b.15.ph}, i64 0, metadata !1824), !dbg !1825
  tail call void @llvm.dbg.value(metadata !{i8* %b.15.ph}, i64 0, metadata !1826), !dbg !1827
  %cmp5.i5242 = icmp eq i8* %b.15.ph, %begalt.14.ph, !dbg !1828
  %add.ptr2114.pre = getelementptr inbounds i8* %b.15.ph, i64 3, !dbg !1829
  br i1 %cmp5.i5242, label %insert_op1.exit5256, label %while.body.i5250, !dbg !1828

while.body.i5250:                                 ; preds = %while.end2107, %while.body.i5250
  %pto.07.i5245 = phi i8* [ %incdec.ptr1.i5248, %while.body.i5250 ], [ %add.ptr2114.pre, %while.end2107 ]
  %pfrom.06.i5246 = phi i8* [ %incdec.ptr.i5247, %while.body.i5250 ], [ %b.15.ph, %while.end2107 ]
  %incdec.ptr.i5247 = getelementptr inbounds i8* %pfrom.06.i5246, i64 -1, !dbg !1830
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i5247}, i64 0, metadata !1826), !dbg !1830
  %153 = load i8* %incdec.ptr.i5247, align 1, !dbg !1830, !tbaa !714
  %incdec.ptr1.i5248 = getelementptr inbounds i8* %pto.07.i5245, i64 -1, !dbg !1830
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i5248}, i64 0, metadata !1831), !dbg !1830
  store i8 %153, i8* %incdec.ptr1.i5248, align 1, !dbg !1830, !tbaa !714
  %cmp.i5249 = icmp eq i8* %incdec.ptr.i5247, %begalt.14.ph, !dbg !1828
  br i1 %cmp.i5249, label %insert_op1.exit5256, label %while.body.i5250, !dbg !1828

insert_op1.exit5256:                              ; preds = %while.end2107, %while.body.i5250
  tail call void @llvm.dbg.value(metadata !1817, i64 0, metadata !1832), !dbg !1834
  tail call void @llvm.dbg.value(metadata !{i8* %begalt.14.ph}, i64 0, metadata !1835), !dbg !1836
  tail call void @llvm.dbg.value(metadata !{i32 %conv2113}, i64 0, metadata !1837), !dbg !1838
  store i8 15, i8* %begalt.14.ph, align 1, !dbg !1839, !tbaa !714
  %conv1.i.i5251 = trunc i64 %sub2112 to i8, !dbg !1840
  %add.ptr.i.i5252 = getelementptr inbounds i8* %begalt.14.ph, i64 1, !dbg !1840
  store i8 %conv1.i.i5251, i8* %add.ptr.i.i5252, align 1, !dbg !1840, !tbaa !714
  %shr8.i.i5253 = lshr i32 %conv2113, 8, !dbg !1840
  %conv2.i.i5254 = trunc i32 %shr8.i.i5253 to i8, !dbg !1840
  %arrayidx4.i.i5255 = getelementptr inbounds i8* %begalt.14.ph, i64 2, !dbg !1840
  store i8 %conv2.i.i5254, i8* %arrayidx4.i.i5255, align 1, !dbg !1840, !tbaa !714
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !302), !dbg !1841
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2114.pre}, i64 0, metadata !279), !dbg !1829
  %tobool2115 = icmp eq i8* %fixup_alt_jump.26.ph, null, !dbg !1842
  br i1 %tobool2115, label %while.cond2123.preheader, label %if.then2116, !dbg !1842

if.then2116:                                      ; preds = %insert_op1.exit5256
  %sub.ptr.lhs.cast2117 = ptrtoint i8* %add.ptr2114.pre to i64, !dbg !1843
  %sub.ptr.rhs.cast2118 = ptrtoint i8* %fixup_alt_jump.26.ph to i64, !dbg !1843
  %sub.ptr.sub2119 = sub i64 %sub.ptr.lhs.cast2117, %sub.ptr.rhs.cast2118, !dbg !1843
  %sub2120 = add nsw i64 %sub.ptr.sub2119, 4294967293, !dbg !1843
  %conv2121 = trunc i64 %sub2120 to i32, !dbg !1843
  tail call void @llvm.dbg.value(metadata !1786, i64 0, metadata !1844), !dbg !1845
  tail call void @llvm.dbg.value(metadata !{i8* %fixup_alt_jump.26.ph}, i64 0, metadata !1846), !dbg !1847
  tail call void @llvm.dbg.value(metadata !{i32 %conv2121}, i64 0, metadata !1848), !dbg !1849
  store i8 14, i8* %fixup_alt_jump.26.ph, align 1, !dbg !1850, !tbaa !714
  %conv1.i5237 = trunc i64 %sub2120 to i8, !dbg !1851
  %add.ptr.i5238 = getelementptr inbounds i8* %fixup_alt_jump.26.ph, i64 1, !dbg !1851
  store i8 %conv1.i5237, i8* %add.ptr.i5238, align 1, !dbg !1851, !tbaa !714
  %shr8.i5239 = lshr i32 %conv2121, 8, !dbg !1851
  %conv2.i5240 = trunc i32 %shr8.i5239 to i8, !dbg !1851
  %arrayidx4.i5241 = getelementptr inbounds i8* %fixup_alt_jump.26.ph, i64 2, !dbg !1851
  store i8 %conv2.i5240, i8* %arrayidx4.i5241, align 1, !dbg !1851, !tbaa !714
  br label %while.cond2123.preheader, !dbg !1843

while.cond2123.preheader:                         ; preds = %insert_op1.exit5256, %if.then2116
  %.pre6480.pre = load i8** %buffer25, align 8, !dbg !1852, !tbaa !722
  br label %while.cond2123.outer, !dbg !1852

while.cond2123.outer:                             ; preds = %if.then2181, %if.end2179, %while.cond2123.preheader
  %.pre6480 = phi i8* [ %.pre6480.pre, %while.cond2123.preheader ], [ %call2151, %if.end2179 ], [ %call2151, %if.then2181 ]
  %fixup_alt_jump.28.ph = phi i8* [ %add.ptr2114.pre, %while.cond2123.preheader ], [ %fixup_alt_jump.29, %if.end2179 ], [ %fixup_alt_jump.29, %if.then2181 ]
  %laststart.28.ph = phi i8* [ %laststart.26.ph, %while.cond2123.preheader ], [ null, %if.end2179 ], [ %add.ptr2186, %if.then2181 ]
  %b.16.ph = phi i8* [ %add.ptr2114.pre, %while.cond2123.preheader ], [ %add.ptr2166, %if.end2179 ], [ %add.ptr2166, %if.then2181 ]
  %sub.ptr.lhs.cast2125 = ptrtoint i8* %b.16.ph to i64, !dbg !1852
  br label %while.cond2123

while.cond2123:                                   ; preds = %while.cond2123.outer, %if.end2157
  %sub.ptr.rhs.cast2126 = ptrtoint i8* %.pre6480 to i64, !dbg !1852
  %sub.ptr.sub2127 = sub i64 %sub.ptr.lhs.cast2125, %sub.ptr.rhs.cast2126, !dbg !1852
  %add2128 = add nsw i64 %sub.ptr.sub2127, 3, !dbg !1852
  %154 = load i64* %allocated, align 8, !dbg !1852, !tbaa !713
  %cmp2130 = icmp ugt i64 %add2128, %154, !dbg !1852
  br i1 %cmp2130, label %do.body2133, label %while.end2198, !dbg !1852

do.body2133:                                      ; preds = %while.cond2123
  call void @llvm.dbg.value(metadata !{i8* %.pre6480}, i64 0, metadata !386), !dbg !1853
  %cmp2137 = icmp eq i64 %154, 65536, !dbg !1853
  br i1 %cmp2137, label %return, label %if.end2140, !dbg !1853

if.end2140:                                       ; preds = %do.body2133
  %shl2142 = shl i64 %154, 1, !dbg !1853
  %cmp2144 = icmp ugt i64 %shl2142, 65536, !dbg !1853
  %.shl2142 = select i1 %cmp2144, i64 65536, i64 %shl2142, !dbg !1853
  store i64 %.shl2142, i64* %allocated, align 8, !dbg !1853, !tbaa !713
  %call2151 = call i8* @realloc(i8* %.pre6480, i64 %.shl2142) #7, !dbg !1853
  store i8* %call2151, i8** %buffer25, align 8, !dbg !1853, !tbaa !722
  %cmp2154 = icmp eq i8* %call2151, null, !dbg !1853
  br i1 %cmp2154, label %return, label %if.end2157, !dbg !1853

if.end2157:                                       ; preds = %if.end2140
  %cmp2159 = icmp eq i8* %.pre6480, %call2151, !dbg !1853
  br i1 %cmp2159, label %while.cond2123, label %if.then2161, !dbg !1853

if.then2161:                                      ; preds = %if.end2157
  %add.ptr2166 = getelementptr inbounds i8* %call2151, i64 %sub.ptr.sub2127, !dbg !1854
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2166}, i64 0, metadata !279), !dbg !1854
  %tobool2172 = icmp eq i8* %fixup_alt_jump.28.ph, null, !dbg !1854
  br i1 %tobool2172, label %if.end2179, label %if.then2173, !dbg !1854

if.then2173:                                      ; preds = %if.then2161
  %sub.ptr.lhs.cast2174 = ptrtoint i8* %fixup_alt_jump.28.ph to i64, !dbg !1854
  %sub.ptr.sub2176 = sub i64 %sub.ptr.lhs.cast2174, %sub.ptr.rhs.cast2126, !dbg !1854
  %add.ptr2178 = getelementptr inbounds i8* %call2151, i64 %sub.ptr.sub2176, !dbg !1854
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2178}, i64 0, metadata !306), !dbg !1854
  br label %if.end2179, !dbg !1854

if.end2179:                                       ; preds = %if.then2161, %if.then2173
  %fixup_alt_jump.29 = phi i8* [ %add.ptr2178, %if.then2173 ], [ null, %if.then2161 ]
  %tobool2180 = icmp eq i8* %laststart.28.ph, null, !dbg !1854
  br i1 %tobool2180, label %while.cond2123.outer, label %if.then2181, !dbg !1854

if.then2181:                                      ; preds = %if.end2179
  %sub.ptr.lhs.cast2182 = ptrtoint i8* %laststart.28.ph to i64, !dbg !1854
  %sub.ptr.sub2184 = sub i64 %sub.ptr.lhs.cast2182, %sub.ptr.rhs.cast2126, !dbg !1854
  %add.ptr2186 = getelementptr inbounds i8* %call2151, i64 %sub.ptr.sub2184, !dbg !1854
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2186}, i64 0, metadata !303), !dbg !1854
  br label %while.cond2123.outer, !dbg !1854

while.end2198:                                    ; preds = %while.cond2123
  %add.ptr2199 = getelementptr inbounds i8* %b.16.ph, i64 3, !dbg !1856
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2199}, i64 0, metadata !279), !dbg !1856
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !303), !dbg !1857
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2199}, i64 0, metadata !304), !dbg !1858
  br label %while.cond.backedge, !dbg !1859

sw.bb2200:                                        ; preds = %if.end1607
  br i1 %12, label %lor.lhs.false2209, label %normal_backslash, !dbg !1489

lor.lhs.false2209:                                ; preds = %sw.bb2200
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1489
  %cmp2211 = icmp eq i8* %13, %pattern, !dbg !1489
  %cmp2214 = icmp eq i8* %incdec.ptr1608, %add.ptr, !dbg !1489
  %or.cond5176 = and i1 %cmp2211, %cmp2214, !dbg !1489
  br i1 %or.cond5176, label %normal_backslash, label %handle_interval, !dbg !1489

handle_interval:                                  ; preds = %sw.bb1589, %lor.lhs.false2209
  %155 = phi i8* [ %incdec.ptr, %sw.bb1589 ], [ %incdec.ptr1608, %lor.lhs.false2209 ]
  call void @llvm.dbg.value(metadata !1860, i64 0, metadata !388), !dbg !1861
  call void @llvm.dbg.value(metadata !1860, i64 0, metadata !390), !dbg !1861
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1862
  %add.ptr2218 = getelementptr inbounds i8* %155, i64 -1, !dbg !1862
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2218}, i64 0, metadata !305), !dbg !1862
  %cmp2219 = icmp eq i8* %155, %add.ptr, !dbg !1863
  br i1 %cmp2219, label %if.then2221, label %if.end2235, !dbg !1863

if.then2221:                                      ; preds = %handle_interval
  br i1 %tobool3461, label %if.else2225, label %unfetch_interval, !dbg !1864

if.else2225:                                      ; preds = %if.then2221
  %156 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1866
  call void @free(i8* %156) #7, !dbg !1866
  br label %return, !dbg !1866

if.end2235:                                       ; preds = %handle_interval
  %incdec.ptr2236 = getelementptr inbounds i8* %155, i64 1, !dbg !1867
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2236}, i64 0, metadata !299), !dbg !1867
  store i8* %incdec.ptr2236, i8** %p, align 8, !dbg !1867, !tbaa !722
  %157 = load i8* %155, align 1, !dbg !1867, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %157}, i64 0, metadata !276), !dbg !1867
  br i1 %tobool30, label %if.then2238, label %while.cond2243.preheader, !dbg !1867

if.then2238:                                      ; preds = %if.end2235
  %idxprom2239 = zext i8 %157 to i64, !dbg !1867
  %arrayidx2240 = getelementptr inbounds i8* %0, i64 %idxprom2239, !dbg !1867
  %158 = load i8* %arrayidx2240, align 1, !dbg !1867, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %158}, i64 0, metadata !276), !dbg !1867
  br label %while.cond2243.preheader, !dbg !1867

while.cond2243.preheader:                         ; preds = %if.end2235, %if.then2238
  %c.9.ph = phi i8 [ %158, %if.then2238 ], [ %157, %if.end2235 ]
  %idxprom22455385 = zext i8 %c.9.ph to i64, !dbg !1871
  %call2246 = call i16** @__ctype_b_loc() #11, !dbg !1871
  %159 = load i16** %call2246, align 8, !dbg !1871, !tbaa !722
  %arrayidx22475386 = getelementptr inbounds i16* %159, i64 %idxprom22455385, !dbg !1871
  %160 = load i16* %arrayidx22475386, align 2, !dbg !1871, !tbaa !1715
  %and22495387 = and i16 %160, 2048, !dbg !1871
  %tobool22505388 = icmp eq i16 %and22495387, 0, !dbg !1871
  br i1 %tobool22505388, label %if.end2277, label %while.body2251, !dbg !1871

while.body2251:                                   ; preds = %while.cond2243.preheader, %while.cond2243.backedge
  %161 = phi i8* [ %incdec.ptr2269, %while.cond2243.backedge ], [ %incdec.ptr2236, %while.cond2243.preheader ]
  %c.95390 = phi i8 [ %c.9.be, %while.cond2243.backedge ], [ %c.9.ph, %while.cond2243.preheader ]
  %lower_bound.05389 = phi i32 [ %sub2259, %while.cond2243.backedge ], [ -1, %while.cond2243.preheader ]
  %conv2244 = zext i8 %c.95390 to i32, !dbg !1871
  %cmp2252 = icmp slt i32 %lower_bound.05389, 0, !dbg !1872
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !388), !dbg !1872
  %lower_bound.0.op = mul i32 %lower_bound.05389, 10, !dbg !1872
  %mul2256 = select i1 %cmp2252, i32 0, i32 %lower_bound.0.op, !dbg !1872
  %add2258 = add i32 %conv2244, -48, !dbg !1872
  %sub2259 = add i32 %add2258, %mul2256, !dbg !1872
  call void @llvm.dbg.value(metadata !{i32 %sub2259}, i64 0, metadata !388), !dbg !1872
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1872
  %cmp2260 = icmp eq i8* %161, %add.ptr, !dbg !1872
  br i1 %cmp2260, label %if.end2277, label %if.end2268, !dbg !1872

if.end2268:                                       ; preds = %while.body2251
  %incdec.ptr2269 = getelementptr inbounds i8* %161, i64 1, !dbg !1874
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2269}, i64 0, metadata !299), !dbg !1874
  store i8* %incdec.ptr2269, i8** %p, align 8, !dbg !1874, !tbaa !722
  %162 = load i8* %161, align 1, !dbg !1874, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %162}, i64 0, metadata !276), !dbg !1874
  br i1 %tobool30, label %if.then2271, label %while.cond2243.backedge, !dbg !1874

while.cond2243.backedge:                          ; preds = %if.end2268, %if.then2271
  %c.9.be = phi i8 [ %165, %if.then2271 ], [ %162, %if.end2268 ]
  %idxprom2245 = zext i8 %c.9.be to i64, !dbg !1871
  %163 = load i16** %call2246, align 8, !dbg !1871, !tbaa !722
  %arrayidx2247 = getelementptr inbounds i16* %163, i64 %idxprom2245, !dbg !1871
  %164 = load i16* %arrayidx2247, align 2, !dbg !1871, !tbaa !1715
  %and2249 = and i16 %164, 2048, !dbg !1871
  %tobool2250 = icmp eq i16 %and2249, 0, !dbg !1871
  br i1 %tobool2250, label %if.end2277, label %while.body2251, !dbg !1871

if.then2271:                                      ; preds = %if.end2268
  %idxprom2272 = zext i8 %162 to i64, !dbg !1874
  %arrayidx2273 = getelementptr inbounds i8* %0, i64 %idxprom2272, !dbg !1874
  %165 = load i8* %arrayidx2273, align 1, !dbg !1874, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %165}, i64 0, metadata !276), !dbg !1874
  br label %while.cond2243.backedge, !dbg !1874

if.end2277:                                       ; preds = %while.cond2243.backedge, %while.body2251, %while.cond2243.preheader
  %166 = phi i8* [ %incdec.ptr2236, %while.cond2243.preheader ], [ %add.ptr, %while.body2251 ], [ %incdec.ptr2269, %while.cond2243.backedge ]
  %c.9.lcssa = phi i8 [ %c.9.ph, %while.cond2243.preheader ], [ %c.95390, %while.body2251 ], [ %c.9.be, %while.cond2243.backedge ]
  %lower_bound.2 = phi i32 [ -1, %while.cond2243.preheader ], [ %sub2259, %while.body2251 ], [ %sub2259, %while.cond2243.backedge ]
  %cmp2279 = icmp eq i8 %c.9.lcssa, 44, !dbg !1876
  br i1 %cmp2279, label %if.then2281, label %if.end2337, !dbg !1876

if.then2281:                                      ; preds = %if.end2277
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1877
  %cmp2282 = icmp eq i8* %166, %add.ptr, !dbg !1877
  br i1 %cmp2282, label %if.end2331, label %if.end2289, !dbg !1877

if.end2289:                                       ; preds = %if.then2281
  %incdec.ptr2290 = getelementptr inbounds i8* %166, i64 1, !dbg !1880
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2290}, i64 0, metadata !299), !dbg !1880
  store i8* %incdec.ptr2290, i8** %p, align 8, !dbg !1880, !tbaa !722
  %167 = load i8* %166, align 1, !dbg !1880, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %167}, i64 0, metadata !276), !dbg !1880
  br i1 %tobool30, label %if.then2292, label %while.cond2297.preheader, !dbg !1880

if.then2292:                                      ; preds = %if.end2289
  %idxprom2293 = zext i8 %167 to i64, !dbg !1880
  %arrayidx2294 = getelementptr inbounds i8* %0, i64 %idxprom2293, !dbg !1880
  %168 = load i8* %arrayidx2294, align 1, !dbg !1880, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %168}, i64 0, metadata !276), !dbg !1880
  br label %while.cond2297.preheader, !dbg !1880

while.cond2297.preheader:                         ; preds = %if.end2289, %if.then2292
  %c.11.ph = phi i8 [ %168, %if.then2292 ], [ %167, %if.end2289 ]
  %idxprom22995392 = zext i8 %c.11.ph to i64, !dbg !1883
  %169 = load i16** %call2246, align 8, !dbg !1883, !tbaa !722
  %arrayidx23015393 = getelementptr inbounds i16* %169, i64 %idxprom22995392, !dbg !1883
  %170 = load i16* %arrayidx23015393, align 2, !dbg !1883, !tbaa !1715
  %and23035394 = and i16 %170, 2048, !dbg !1883
  %tobool23045395 = icmp eq i16 %and23035394, 0, !dbg !1883
  br i1 %tobool23045395, label %if.end2331, label %while.body2305, !dbg !1883

while.body2305:                                   ; preds = %while.cond2297.preheader, %while.cond2297.backedge
  %171 = phi i8* [ %incdec.ptr2323, %while.cond2297.backedge ], [ %incdec.ptr2290, %while.cond2297.preheader ]
  %c.115397 = phi i8 [ %c.11.be, %while.cond2297.backedge ], [ %c.11.ph, %while.cond2297.preheader ]
  %upper_bound.05396 = phi i32 [ %sub2313, %while.cond2297.backedge ], [ -1, %while.cond2297.preheader ]
  %conv2298 = zext i8 %c.115397 to i32, !dbg !1883
  %cmp2306 = icmp slt i32 %upper_bound.05396, 0, !dbg !1884
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !390), !dbg !1884
  %upper_bound.0.op = mul i32 %upper_bound.05396, 10, !dbg !1884
  %mul2310 = select i1 %cmp2306, i32 0, i32 %upper_bound.0.op, !dbg !1884
  %add2312 = add i32 %conv2298, -48, !dbg !1884
  %sub2313 = add i32 %add2312, %mul2310, !dbg !1884
  call void @llvm.dbg.value(metadata !{i32 %sub2313}, i64 0, metadata !390), !dbg !1884
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1884
  %cmp2314 = icmp eq i8* %171, %add.ptr, !dbg !1884
  br i1 %cmp2314, label %if.end2331, label %if.end2322, !dbg !1884

if.end2322:                                       ; preds = %while.body2305
  %incdec.ptr2323 = getelementptr inbounds i8* %171, i64 1, !dbg !1886
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2323}, i64 0, metadata !299), !dbg !1886
  store i8* %incdec.ptr2323, i8** %p, align 8, !dbg !1886, !tbaa !722
  %172 = load i8* %171, align 1, !dbg !1886, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %172}, i64 0, metadata !276), !dbg !1886
  br i1 %tobool30, label %if.then2325, label %while.cond2297.backedge, !dbg !1886

while.cond2297.backedge:                          ; preds = %if.end2322, %if.then2325
  %c.11.be = phi i8 [ %175, %if.then2325 ], [ %172, %if.end2322 ]
  %idxprom2299 = zext i8 %c.11.be to i64, !dbg !1883
  %173 = load i16** %call2246, align 8, !dbg !1883, !tbaa !722
  %arrayidx2301 = getelementptr inbounds i16* %173, i64 %idxprom2299, !dbg !1883
  %174 = load i16* %arrayidx2301, align 2, !dbg !1883, !tbaa !1715
  %and2303 = and i16 %174, 2048, !dbg !1883
  %tobool2304 = icmp eq i16 %and2303, 0, !dbg !1883
  br i1 %tobool2304, label %if.end2331, label %while.body2305, !dbg !1883

if.then2325:                                      ; preds = %if.end2322
  %idxprom2326 = zext i8 %172 to i64, !dbg !1886
  %arrayidx2327 = getelementptr inbounds i8* %0, i64 %idxprom2326, !dbg !1886
  %175 = load i8* %arrayidx2327, align 1, !dbg !1886, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %175}, i64 0, metadata !276), !dbg !1886
  br label %while.cond2297.backedge, !dbg !1886

if.end2331:                                       ; preds = %while.cond2297.preheader, %while.body2305, %while.cond2297.backedge, %if.then2281
  %176 = phi i8* [ %add.ptr, %if.then2281 ], [ %incdec.ptr2290, %while.cond2297.preheader ], [ %add.ptr, %while.body2305 ], [ %incdec.ptr2323, %while.cond2297.backedge ]
  %upper_bound.2 = phi i32 [ -1, %if.then2281 ], [ -1, %while.cond2297.preheader ], [ %sub2313, %while.body2305 ], [ %sub2313, %while.cond2297.backedge ]
  %c.12 = phi i8 [ 44, %if.then2281 ], [ %c.11.ph, %while.cond2297.preheader ], [ %c.115397, %while.body2305 ], [ %c.11.be, %while.cond2297.backedge ]
  %cmp2332 = icmp slt i32 %upper_bound.2, 0, !dbg !1888
  call void @llvm.dbg.value(metadata !1889, i64 0, metadata !390), !dbg !1888
  %.upper_bound.2 = select i1 %cmp2332, i32 32767, i32 %upper_bound.2, !dbg !1888
  br label %if.end2337, !dbg !1888

if.end2337:                                       ; preds = %if.end2331, %if.end2277
  %177 = phi i8* [ %176, %if.end2331 ], [ %166, %if.end2277 ]
  %upper_bound.3 = phi i32 [ %.upper_bound.2, %if.end2331 ], [ %lower_bound.2, %if.end2277 ]
  %c.13 = phi i8 [ %c.12, %if.end2331 ], [ %c.9.lcssa, %if.end2277 ]
  %cmp2338 = icmp slt i32 %lower_bound.2, 0, !dbg !1890
  %cmp2341 = icmp sgt i32 %upper_bound.3, 32767, !dbg !1890
  %or.cond5177 = or i1 %cmp2338, %cmp2341, !dbg !1890
  %cmp2344 = icmp sgt i32 %lower_bound.2, %upper_bound.3, !dbg !1890
  %or.cond5178 = or i1 %or.cond5177, %cmp2344, !dbg !1890
  br i1 %or.cond5178, label %if.then2346, label %if.end2352, !dbg !1890

if.then2346:                                      ; preds = %if.end2337
  br i1 %tobool3461, label %if.else2350, label %unfetch_interval, !dbg !1891

if.else2350:                                      ; preds = %if.then2346
  %178 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1893
  call void @free(i8* %178) #7, !dbg !1893
  br label %return, !dbg !1893

if.end2352:                                       ; preds = %if.end2337
  br i1 %tobool2354, label %if.end2374, label %if.then2355, !dbg !1487

if.then2355:                                      ; preds = %if.end2352
  %cmp2357 = icmp eq i8 %c.13, 92, !dbg !1894
  br i1 %cmp2357, label %do.body2362, label %if.then2359, !dbg !1894

if.then2359:                                      ; preds = %if.then2355
  %179 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1894
  call void @free(i8* %179) #7, !dbg !1894
  br label %return, !dbg !1894

do.body2362:                                      ; preds = %if.then2355
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1896
  %cmp2363 = icmp eq i8* %177, %add.ptr, !dbg !1896
  br i1 %cmp2363, label %return, label %if.end2366, !dbg !1896

if.end2366:                                       ; preds = %do.body2362
  %incdec.ptr2367 = getelementptr inbounds i8* %177, i64 1, !dbg !1896
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2367}, i64 0, metadata !299), !dbg !1896
  store i8* %incdec.ptr2367, i8** %p, align 8, !dbg !1896, !tbaa !722
  %180 = load i8* %177, align 1, !dbg !1896, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %180}, i64 0, metadata !276), !dbg !1896
  br i1 %tobool30, label %if.then2369, label %if.end2374, !dbg !1896

if.then2369:                                      ; preds = %if.end2366
  %idxprom2370 = zext i8 %180 to i64, !dbg !1896
  %arrayidx2371 = getelementptr inbounds i8* %0, i64 %idxprom2370, !dbg !1896
  %181 = load i8* %arrayidx2371, align 1, !dbg !1896, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %181}, i64 0, metadata !276), !dbg !1896
  br label %if.end2374, !dbg !1896

if.end2374:                                       ; preds = %if.then2369, %if.end2366, %if.end2352
  %c.14 = phi i8 [ %c.13, %if.end2352 ], [ %181, %if.then2369 ], [ %180, %if.end2366 ]
  %cmp2376 = icmp eq i8 %c.14, 125, !dbg !1898
  br i1 %cmp2376, label %if.end2384, label %if.then2378, !dbg !1898

if.then2378:                                      ; preds = %if.end2374
  br i1 %tobool2354, label %unfetch_interval, label %if.else2382, !dbg !1899

if.else2382:                                      ; preds = %if.then2378
  %182 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1901
  call void @free(i8* %182) #7, !dbg !1901
  br label %return, !dbg !1901

if.end2384:                                       ; preds = %if.end2374
  %tobool2385 = icmp eq i8* %laststart.06108, null, !dbg !1902
  br i1 %tobool2385, label %if.then2386, label %if.end2398, !dbg !1902

if.then2386:                                      ; preds = %if.end2384
  br i1 %tobool220, label %if.else2391, label %if.then2389, !dbg !1903

if.then2389:                                      ; preds = %if.then2386
  %183 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !1905
  call void @free(i8* %183) #7, !dbg !1905
  br label %return, !dbg !1905

if.else2391:                                      ; preds = %if.then2386
  br i1 %tobool225, label %unfetch_interval, label %if.end2398, !dbg !1906

if.end2398:                                       ; preds = %if.else2391, %if.end2384
  %laststart.30 = phi i8* [ %laststart.06108, %if.end2384 ], [ %b.06123, %if.else2391 ]
  %cmp2399 = icmp eq i32 %upper_bound.3, 0, !dbg !1907
  br i1 %cmp2399, label %while.cond2402.preheader, label %if.else2485, !dbg !1907

while.cond2402.preheader:                         ; preds = %if.end2398
  %.pre6482.pre = load i8** %buffer25, align 8, !dbg !1908, !tbaa !722
  br label %while.cond2402.outer, !dbg !1908

while.cond2402.outer:                             ; preds = %if.end2466, %if.then2468, %while.cond2402.preheader
  %.pre6482 = phi i8* [ %.pre6482.pre, %while.cond2402.preheader ], [ %call2430, %if.then2468 ], [ %call2430, %if.end2466 ]
  %fixup_alt_jump.30.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2402.preheader ], [ %fixup_alt_jump.31, %if.then2468 ], [ %fixup_alt_jump.31, %if.end2466 ]
  %begalt.16.ph = phi i8* [ %begalt.06105, %while.cond2402.preheader ], [ %add.ptr2450, %if.then2468 ], [ %add.ptr2450, %if.end2466 ]
  %laststart.31.ph = phi i8* [ %laststart.30, %while.cond2402.preheader ], [ %laststart.32, %if.then2468 ], [ %laststart.32, %if.end2466 ]
  %pending_exact.16.ph = phi i8* [ %pending_exact.06110, %while.cond2402.preheader ], [ %add.ptr2473, %if.then2468 ], [ null, %if.end2466 ]
  %b.17.ph = phi i8* [ %b.06123, %while.cond2402.preheader ], [ %add.ptr2445, %if.then2468 ], [ %add.ptr2445, %if.end2466 ]
  %sub.ptr.lhs.cast2404 = ptrtoint i8* %b.17.ph to i64, !dbg !1908
  br label %while.cond2402

while.cond2402:                                   ; preds = %if.end2436, %while.cond2402.outer
  %sub.ptr.rhs.cast2405 = ptrtoint i8* %.pre6482 to i64, !dbg !1908
  %sub.ptr.sub2406 = sub i64 %sub.ptr.lhs.cast2404, %sub.ptr.rhs.cast2405, !dbg !1908
  %add2407 = add nsw i64 %sub.ptr.sub2406, 3, !dbg !1908
  %184 = load i64* %allocated, align 8, !dbg !1908, !tbaa !713
  %cmp2409 = icmp ugt i64 %add2407, %184, !dbg !1908
  br i1 %cmp2409, label %do.body2412, label %while.end2477, !dbg !1908

do.body2412:                                      ; preds = %while.cond2402
  call void @llvm.dbg.value(metadata !{i8* %.pre6482}, i64 0, metadata !391), !dbg !1909
  %cmp2416 = icmp eq i64 %184, 65536, !dbg !1909
  br i1 %cmp2416, label %return, label %if.end2419, !dbg !1909

if.end2419:                                       ; preds = %do.body2412
  %shl2421 = shl i64 %184, 1, !dbg !1909
  %cmp2423 = icmp ugt i64 %shl2421, 65536, !dbg !1909
  %.shl2421 = select i1 %cmp2423, i64 65536, i64 %shl2421, !dbg !1909
  store i64 %.shl2421, i64* %allocated, align 8, !dbg !1909, !tbaa !713
  %call2430 = call i8* @realloc(i8* %.pre6482, i64 %.shl2421) #7, !dbg !1909
  store i8* %call2430, i8** %buffer25, align 8, !dbg !1909, !tbaa !722
  %cmp2433 = icmp eq i8* %call2430, null, !dbg !1909
  br i1 %cmp2433, label %return, label %if.end2436, !dbg !1909

if.end2436:                                       ; preds = %if.end2419
  %cmp2438 = icmp eq i8* %.pre6482, %call2430, !dbg !1909
  br i1 %cmp2438, label %while.cond2402, label %if.then2440, !dbg !1909

if.then2440:                                      ; preds = %if.end2436
  %add.ptr2445 = getelementptr inbounds i8* %call2430, i64 %sub.ptr.sub2406, !dbg !1910
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2445}, i64 0, metadata !279), !dbg !1910
  %sub.ptr.lhs.cast2446 = ptrtoint i8* %begalt.16.ph to i64, !dbg !1910
  %sub.ptr.sub2448 = sub i64 %sub.ptr.lhs.cast2446, %sub.ptr.rhs.cast2405, !dbg !1910
  %add.ptr2450 = getelementptr inbounds i8* %call2430, i64 %sub.ptr.sub2448, !dbg !1910
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2450}, i64 0, metadata !304), !dbg !1910
  %tobool2451 = icmp eq i8* %fixup_alt_jump.30.ph, null, !dbg !1910
  br i1 %tobool2451, label %if.end2458, label %if.then2452, !dbg !1910

if.then2452:                                      ; preds = %if.then2440
  %sub.ptr.lhs.cast2453 = ptrtoint i8* %fixup_alt_jump.30.ph to i64, !dbg !1910
  %sub.ptr.sub2455 = sub i64 %sub.ptr.lhs.cast2453, %sub.ptr.rhs.cast2405, !dbg !1910
  %add.ptr2457 = getelementptr inbounds i8* %call2430, i64 %sub.ptr.sub2455, !dbg !1910
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2457}, i64 0, metadata !306), !dbg !1910
  br label %if.end2458, !dbg !1910

if.end2458:                                       ; preds = %if.then2440, %if.then2452
  %fixup_alt_jump.31 = phi i8* [ %add.ptr2457, %if.then2452 ], [ null, %if.then2440 ]
  %tobool2459 = icmp eq i8* %laststart.31.ph, null, !dbg !1910
  br i1 %tobool2459, label %if.end2466, label %if.then2460, !dbg !1910

if.then2460:                                      ; preds = %if.end2458
  %sub.ptr.lhs.cast2461 = ptrtoint i8* %laststart.31.ph to i64, !dbg !1910
  %sub.ptr.sub2463 = sub i64 %sub.ptr.lhs.cast2461, %sub.ptr.rhs.cast2405, !dbg !1910
  %add.ptr2465 = getelementptr inbounds i8* %call2430, i64 %sub.ptr.sub2463, !dbg !1910
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2465}, i64 0, metadata !303), !dbg !1910
  br label %if.end2466, !dbg !1910

if.end2466:                                       ; preds = %if.end2458, %if.then2460
  %laststart.32 = phi i8* [ %add.ptr2465, %if.then2460 ], [ null, %if.end2458 ]
  %tobool2467 = icmp eq i8* %pending_exact.16.ph, null, !dbg !1910
  br i1 %tobool2467, label %while.cond2402.outer, label %if.then2468, !dbg !1910

if.then2468:                                      ; preds = %if.end2466
  %sub.ptr.lhs.cast2469 = ptrtoint i8* %pending_exact.16.ph to i64, !dbg !1910
  %sub.ptr.sub2471 = sub i64 %sub.ptr.lhs.cast2469, %sub.ptr.rhs.cast2405, !dbg !1910
  %add.ptr2473 = getelementptr inbounds i8* %call2430, i64 %sub.ptr.sub2471, !dbg !1910
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2473}, i64 0, metadata !302), !dbg !1910
  br label %while.cond2402.outer, !dbg !1910

while.end2477:                                    ; preds = %while.cond2402
  %add.ptr2478 = getelementptr inbounds i8* %b.17.ph, i64 3, !dbg !1912
  %sub.ptr.lhs.cast2479 = ptrtoint i8* %add.ptr2478 to i64, !dbg !1912
  %sub.ptr.rhs.cast2480 = ptrtoint i8* %laststart.31.ph to i64, !dbg !1912
  %sub.ptr.sub2481 = sub i64 %sub.ptr.lhs.cast2479, %sub.ptr.rhs.cast2480, !dbg !1912
  %sub2482 = add nsw i64 %sub.ptr.sub2481, 4294967293, !dbg !1912
  %conv2483 = trunc i64 %sub2482 to i32, !dbg !1912
  tail call void @llvm.dbg.value(metadata !1554, i64 0, metadata !1913), !dbg !1914
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.31.ph}, i64 0, metadata !1915), !dbg !1916
  tail call void @llvm.dbg.value(metadata !{i32 %conv2483}, i64 0, metadata !1917), !dbg !1918
  tail call void @llvm.dbg.value(metadata !{i8* %b.17.ph}, i64 0, metadata !1919), !dbg !1920
  tail call void @llvm.dbg.value(metadata !{i8* %b.17.ph}, i64 0, metadata !1921), !dbg !1922
  %cmp5.i5224 = icmp eq i8* %b.17.ph, %laststart.31.ph, !dbg !1923
  br i1 %cmp5.i5224, label %insert_op1.exit, label %while.body.i5232, !dbg !1923

while.body.i5232:                                 ; preds = %while.end2477, %while.body.i5232
  %pto.07.i5227 = phi i8* [ %incdec.ptr1.i5230, %while.body.i5232 ], [ %add.ptr2478, %while.end2477 ]
  %pfrom.06.i5228 = phi i8* [ %incdec.ptr.i5229, %while.body.i5232 ], [ %b.17.ph, %while.end2477 ]
  %incdec.ptr.i5229 = getelementptr inbounds i8* %pfrom.06.i5228, i64 -1, !dbg !1924
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i5229}, i64 0, metadata !1921), !dbg !1924
  %185 = load i8* %incdec.ptr.i5229, align 1, !dbg !1924, !tbaa !714
  %incdec.ptr1.i5230 = getelementptr inbounds i8* %pto.07.i5227, i64 -1, !dbg !1924
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i5230}, i64 0, metadata !1925), !dbg !1924
  store i8 %185, i8* %incdec.ptr1.i5230, align 1, !dbg !1924, !tbaa !714
  %cmp.i5231 = icmp eq i8* %incdec.ptr.i5229, %laststart.31.ph, !dbg !1923
  br i1 %cmp.i5231, label %insert_op1.exit, label %while.body.i5232, !dbg !1923

insert_op1.exit:                                  ; preds = %while.body.i5232, %while.end2477
  tail call void @llvm.dbg.value(metadata !1554, i64 0, metadata !1926), !dbg !1928
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.31.ph}, i64 0, metadata !1929), !dbg !1930
  tail call void @llvm.dbg.value(metadata !{i32 %conv2483}, i64 0, metadata !1931), !dbg !1932
  store i8 13, i8* %laststart.31.ph, align 1, !dbg !1933, !tbaa !714
  %conv1.i.i5233 = trunc i64 %sub2482 to i8, !dbg !1934
  %add.ptr.i.i5234 = getelementptr inbounds i8* %laststart.31.ph, i64 1, !dbg !1934
  store i8 %conv1.i.i5233, i8* %add.ptr.i.i5234, align 1, !dbg !1934, !tbaa !714
  %shr8.i.i = lshr i32 %conv2483, 8, !dbg !1934
  %conv2.i.i5235 = trunc i32 %shr8.i.i to i8, !dbg !1934
  %arrayidx4.i.i5236 = getelementptr inbounds i8* %laststart.31.ph, i64 2, !dbg !1934
  store i8 %conv2.i.i5235, i8* %arrayidx4.i.i5236, align 1, !dbg !1934, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2478}, i64 0, metadata !279), !dbg !1935
  br label %while.cond.backedge, !dbg !1936

if.else2485:                                      ; preds = %if.end2398
  %cmp2486 = icmp sgt i32 %upper_bound.3, 1, !dbg !1937
  %conv2495 = select i1 %cmp2486, i64 20, i64 10, !dbg !1938
  %.pre6481.pre = load i8** %buffer25, align 8, !dbg !1938, !tbaa !722
  br label %while.cond2490.outer, !dbg !1938

while.cond2490.outer:                             ; preds = %if.end2555, %if.then2557, %if.else2485
  %.pre6481 = phi i8* [ %.pre6481.pre, %if.else2485 ], [ %call2519, %if.then2557 ], [ %call2519, %if.end2555 ]
  %fixup_alt_jump.32.ph = phi i8* [ %fixup_alt_jump.06102, %if.else2485 ], [ %fixup_alt_jump.33, %if.then2557 ], [ %fixup_alt_jump.33, %if.end2555 ]
  %begalt.17.ph = phi i8* [ %begalt.06105, %if.else2485 ], [ %add.ptr2539, %if.then2557 ], [ %add.ptr2539, %if.end2555 ]
  %laststart.33.ph = phi i8* [ %laststart.30, %if.else2485 ], [ %laststart.34, %if.then2557 ], [ %laststart.34, %if.end2555 ]
  %pending_exact.17.ph = phi i8* [ %pending_exact.06110, %if.else2485 ], [ %add.ptr2562, %if.then2557 ], [ null, %if.end2555 ]
  %b.18.ph = phi i8* [ %b.06123, %if.else2485 ], [ %add.ptr2534, %if.then2557 ], [ %add.ptr2534, %if.end2555 ]
  %sub.ptr.lhs.cast2492 = ptrtoint i8* %b.18.ph to i64, !dbg !1938
  br label %while.cond2490

while.cond2490:                                   ; preds = %if.end2525, %while.cond2490.outer
  %sub.ptr.rhs.cast2493 = ptrtoint i8* %.pre6481 to i64, !dbg !1938
  %sub.ptr.sub2494 = sub i64 %sub.ptr.lhs.cast2492, %sub.ptr.rhs.cast2493, !dbg !1938
  %add2496 = add nsw i64 %sub.ptr.sub2494, %conv2495, !dbg !1938
  %186 = load i64* %allocated, align 8, !dbg !1938, !tbaa !713
  %cmp2498 = icmp ugt i64 %add2496, %186, !dbg !1938
  br i1 %cmp2498, label %do.body2501, label %while.end2566, !dbg !1938

do.body2501:                                      ; preds = %while.cond2490
  call void @llvm.dbg.value(metadata !{i8* %.pre6481}, i64 0, metadata !396), !dbg !1939
  %cmp2505 = icmp eq i64 %186, 65536, !dbg !1939
  br i1 %cmp2505, label %return, label %if.end2508, !dbg !1939

if.end2508:                                       ; preds = %do.body2501
  %shl2510 = shl i64 %186, 1, !dbg !1939
  %cmp2512 = icmp ugt i64 %shl2510, 65536, !dbg !1939
  %.shl2510 = select i1 %cmp2512, i64 65536, i64 %shl2510, !dbg !1939
  store i64 %.shl2510, i64* %allocated, align 8, !dbg !1939, !tbaa !713
  %call2519 = call i8* @realloc(i8* %.pre6481, i64 %.shl2510) #7, !dbg !1939
  store i8* %call2519, i8** %buffer25, align 8, !dbg !1939, !tbaa !722
  %cmp2522 = icmp eq i8* %call2519, null, !dbg !1939
  br i1 %cmp2522, label %return, label %if.end2525, !dbg !1939

if.end2525:                                       ; preds = %if.end2508
  %cmp2527 = icmp eq i8* %.pre6481, %call2519, !dbg !1939
  br i1 %cmp2527, label %while.cond2490, label %if.then2529, !dbg !1939

if.then2529:                                      ; preds = %if.end2525
  %add.ptr2534 = getelementptr inbounds i8* %call2519, i64 %sub.ptr.sub2494, !dbg !1940
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2534}, i64 0, metadata !279), !dbg !1940
  %sub.ptr.lhs.cast2535 = ptrtoint i8* %begalt.17.ph to i64, !dbg !1940
  %sub.ptr.sub2537 = sub i64 %sub.ptr.lhs.cast2535, %sub.ptr.rhs.cast2493, !dbg !1940
  %add.ptr2539 = getelementptr inbounds i8* %call2519, i64 %sub.ptr.sub2537, !dbg !1940
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2539}, i64 0, metadata !304), !dbg !1940
  %tobool2540 = icmp eq i8* %fixup_alt_jump.32.ph, null, !dbg !1940
  br i1 %tobool2540, label %if.end2547, label %if.then2541, !dbg !1940

if.then2541:                                      ; preds = %if.then2529
  %sub.ptr.lhs.cast2542 = ptrtoint i8* %fixup_alt_jump.32.ph to i64, !dbg !1940
  %sub.ptr.sub2544 = sub i64 %sub.ptr.lhs.cast2542, %sub.ptr.rhs.cast2493, !dbg !1940
  %add.ptr2546 = getelementptr inbounds i8* %call2519, i64 %sub.ptr.sub2544, !dbg !1940
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2546}, i64 0, metadata !306), !dbg !1940
  br label %if.end2547, !dbg !1940

if.end2547:                                       ; preds = %if.then2529, %if.then2541
  %fixup_alt_jump.33 = phi i8* [ %add.ptr2546, %if.then2541 ], [ null, %if.then2529 ]
  %tobool2548 = icmp eq i8* %laststart.33.ph, null, !dbg !1940
  br i1 %tobool2548, label %if.end2555, label %if.then2549, !dbg !1940

if.then2549:                                      ; preds = %if.end2547
  %sub.ptr.lhs.cast2550 = ptrtoint i8* %laststart.33.ph to i64, !dbg !1940
  %sub.ptr.sub2552 = sub i64 %sub.ptr.lhs.cast2550, %sub.ptr.rhs.cast2493, !dbg !1940
  %add.ptr2554 = getelementptr inbounds i8* %call2519, i64 %sub.ptr.sub2552, !dbg !1940
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2554}, i64 0, metadata !303), !dbg !1940
  br label %if.end2555, !dbg !1940

if.end2555:                                       ; preds = %if.end2547, %if.then2549
  %laststart.34 = phi i8* [ %add.ptr2554, %if.then2549 ], [ null, %if.end2547 ]
  %tobool2556 = icmp eq i8* %pending_exact.17.ph, null, !dbg !1940
  br i1 %tobool2556, label %while.cond2490.outer, label %if.then2557, !dbg !1940

if.then2557:                                      ; preds = %if.end2555
  %sub.ptr.lhs.cast2558 = ptrtoint i8* %pending_exact.17.ph to i64, !dbg !1940
  %sub.ptr.sub2560 = sub i64 %sub.ptr.lhs.cast2558, %sub.ptr.rhs.cast2493, !dbg !1940
  %add.ptr2562 = getelementptr inbounds i8* %call2519, i64 %sub.ptr.sub2560, !dbg !1940
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2562}, i64 0, metadata !302), !dbg !1940
  br label %while.cond2490.outer, !dbg !1940

while.end2566:                                    ; preds = %while.cond2490
  %add.ptr2567 = getelementptr inbounds i8* %b.18.ph, i64 5, !dbg !1942
  %add.ptr2567.sum = select i1 %cmp2486, i64 10, i64 5, !dbg !1942
  %add.ptr2572 = getelementptr inbounds i8* %b.18.ph, i64 %add.ptr2567.sum, !dbg !1942
  %sub.ptr.lhs.cast2573 = ptrtoint i8* %add.ptr2572 to i64, !dbg !1942
  %sub.ptr.rhs.cast2574 = ptrtoint i8* %laststart.33.ph to i64, !dbg !1942
  %sub.ptr.sub2575 = sub i64 %sub.ptr.lhs.cast2573, %sub.ptr.rhs.cast2574, !dbg !1942
  %sub2576 = add nsw i64 %sub.ptr.sub2575, 4294967293, !dbg !1942
  %conv2577 = trunc i64 %sub2576 to i32, !dbg !1942
  tail call void @llvm.dbg.value(metadata !1943, i64 0, metadata !1944), !dbg !1945
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.33.ph}, i64 0, metadata !1946), !dbg !1947
  tail call void @llvm.dbg.value(metadata !{i32 %conv2577}, i64 0, metadata !1948), !dbg !1949
  tail call void @llvm.dbg.value(metadata !{i32 %lower_bound.2}, i64 0, metadata !1950), !dbg !1949
  tail call void @llvm.dbg.value(metadata !{i8* %b.18.ph}, i64 0, metadata !1951), !dbg !1952
  tail call void @llvm.dbg.value(metadata !{i8* %b.18.ph}, i64 0, metadata !1953), !dbg !1954
  %cmp5.i5204 = icmp eq i8* %b.18.ph, %laststart.33.ph, !dbg !1955
  br i1 %cmp5.i5204, label %insert_op2.exit5223, label %while.body.i5212, !dbg !1955

while.body.i5212:                                 ; preds = %while.end2566, %while.body.i5212
  %pto.07.i5207 = phi i8* [ %incdec.ptr1.i5210, %while.body.i5212 ], [ %add.ptr2567, %while.end2566 ]
  %pfrom.06.i5208 = phi i8* [ %incdec.ptr.i5209, %while.body.i5212 ], [ %b.18.ph, %while.end2566 ]
  %incdec.ptr.i5209 = getelementptr inbounds i8* %pfrom.06.i5208, i64 -1, !dbg !1956
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i5209}, i64 0, metadata !1953), !dbg !1956
  %187 = load i8* %incdec.ptr.i5209, align 1, !dbg !1956, !tbaa !714
  %incdec.ptr1.i5210 = getelementptr inbounds i8* %pto.07.i5207, i64 -1, !dbg !1956
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i5210}, i64 0, metadata !1957), !dbg !1956
  store i8 %187, i8* %incdec.ptr1.i5210, align 1, !dbg !1956, !tbaa !714
  %cmp.i5211 = icmp eq i8* %incdec.ptr.i5209, %laststart.33.ph, !dbg !1955
  br i1 %cmp.i5211, label %insert_op2.exit5223, label %while.body.i5212, !dbg !1955

insert_op2.exit5223:                              ; preds = %while.body.i5212, %while.end2566
  tail call void @llvm.dbg.value(metadata !1943, i64 0, metadata !1958), !dbg !1960
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.33.ph}, i64 0, metadata !1961), !dbg !1962
  tail call void @llvm.dbg.value(metadata !{i32 %conv2577}, i64 0, metadata !1963), !dbg !1964
  tail call void @llvm.dbg.value(metadata !{i32 %lower_bound.2}, i64 0, metadata !1965), !dbg !1964
  store i8 21, i8* %laststart.33.ph, align 1, !dbg !1966, !tbaa !714
  %conv1.i.i5213 = trunc i64 %sub2576 to i8, !dbg !1967
  %add.ptr.i.i5214 = getelementptr inbounds i8* %laststart.33.ph, i64 1, !dbg !1967
  store i8 %conv1.i.i5213, i8* %add.ptr.i.i5214, align 1, !dbg !1967, !tbaa !714
  %shr21.i.i5215 = lshr i32 %conv2577, 8, !dbg !1967
  %conv2.i.i5216 = trunc i32 %shr21.i.i5215 to i8, !dbg !1967
  %arrayidx4.i.i5217 = getelementptr inbounds i8* %laststart.33.ph, i64 2, !dbg !1967
  store i8 %conv2.i.i5216, i8* %arrayidx4.i.i5217, align 1, !dbg !1967, !tbaa !714
  %conv7.i.i5218 = trunc i32 %lower_bound.2 to i8, !dbg !1969
  %add.ptr8.i.i5219 = getelementptr inbounds i8* %laststart.33.ph, i64 3, !dbg !1969
  store i8 %conv7.i.i5218, i8* %add.ptr8.i.i5219, align 1, !dbg !1969, !tbaa !714
  %shr1022.i.i5220 = lshr i32 %lower_bound.2, 8, !dbg !1969
  %conv11.i.i5221 = trunc i32 %shr1022.i.i5220 to i8, !dbg !1969
  %arrayidx13.i.i5222 = getelementptr inbounds i8* %laststart.33.ph, i64 4, !dbg !1969
  store i8 %conv11.i.i5221, i8* %arrayidx13.i.i5222, align 1, !dbg !1969, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2567}, i64 0, metadata !279), !dbg !1971
  tail call void @llvm.dbg.value(metadata !1972, i64 0, metadata !1973), !dbg !1975
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.33.ph}, i64 0, metadata !1976), !dbg !1977
  tail call void @llvm.dbg.value(metadata !1978, i64 0, metadata !1979), !dbg !1980
  tail call void @llvm.dbg.value(metadata !{i32 %lower_bound.2}, i64 0, metadata !1981), !dbg !1980
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2567}, i64 0, metadata !1982), !dbg !1983
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2567}, i64 0, metadata !1984), !dbg !1985
  %cmp5.i5187 = icmp eq i8* %add.ptr2567, %laststart.33.ph, !dbg !1986
  %add.ptr2579.pre = getelementptr inbounds i8* %b.18.ph, i64 10, !dbg !1987
  br i1 %cmp5.i5187, label %insert_op2.exit5203, label %while.body.i5195, !dbg !1986

while.body.i5195:                                 ; preds = %insert_op2.exit5223, %while.body.i5195
  %pto.07.i5190 = phi i8* [ %incdec.ptr1.i5193, %while.body.i5195 ], [ %add.ptr2579.pre, %insert_op2.exit5223 ]
  %pfrom.06.i5191 = phi i8* [ %incdec.ptr.i5192, %while.body.i5195 ], [ %add.ptr2567, %insert_op2.exit5223 ]
  %incdec.ptr.i5192 = getelementptr inbounds i8* %pfrom.06.i5191, i64 -1, !dbg !1988
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i5192}, i64 0, metadata !1984), !dbg !1988
  %188 = load i8* %incdec.ptr.i5192, align 1, !dbg !1988, !tbaa !714
  %incdec.ptr1.i5193 = getelementptr inbounds i8* %pto.07.i5190, i64 -1, !dbg !1988
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i5193}, i64 0, metadata !1989), !dbg !1988
  store i8 %188, i8* %incdec.ptr1.i5193, align 1, !dbg !1988, !tbaa !714
  %cmp.i5194 = icmp eq i8* %incdec.ptr.i5192, %laststart.33.ph, !dbg !1986
  br i1 %cmp.i5194, label %insert_op2.exit5203, label %while.body.i5195, !dbg !1986

insert_op2.exit5203:                              ; preds = %insert_op2.exit5223, %while.body.i5195
  tail call void @llvm.dbg.value(metadata !1972, i64 0, metadata !1990), !dbg !1992
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.33.ph}, i64 0, metadata !1993), !dbg !1994
  tail call void @llvm.dbg.value(metadata !1978, i64 0, metadata !1995), !dbg !1996
  tail call void @llvm.dbg.value(metadata !{i32 %lower_bound.2}, i64 0, metadata !1997), !dbg !1996
  store i8 23, i8* %laststart.33.ph, align 1, !dbg !1998, !tbaa !714
  store i8 5, i8* %add.ptr.i.i5214, align 1, !dbg !1999, !tbaa !714
  store i8 0, i8* %arrayidx4.i.i5217, align 1, !dbg !1999, !tbaa !714
  store i8 %conv7.i.i5218, i8* %add.ptr8.i.i5219, align 1, !dbg !2000, !tbaa !714
  store i8 %conv11.i.i5221, i8* %arrayidx13.i.i5222, align 1, !dbg !2000, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2579.pre}, i64 0, metadata !279), !dbg !1987
  br i1 %cmp2486, label %if.then2582, label %while.cond.backedge, !dbg !2001

if.then2582:                                      ; preds = %insert_op2.exit5203
  %add.ptr2583 = getelementptr inbounds i8* %laststart.33.ph, i64 5, !dbg !2002
  %sub.ptr.lhs.cast2584 = ptrtoint i8* %add.ptr2583 to i64, !dbg !2002
  %sub.ptr.rhs.cast2585 = ptrtoint i8* %add.ptr2579.pre to i64, !dbg !2002
  %sub.ptr.sub2586 = sub i64 %sub.ptr.lhs.cast2584, %sub.ptr.rhs.cast2585, !dbg !2002
  %sub2587 = add nsw i64 %sub.ptr.sub2586, 4294967293, !dbg !2002
  %conv2588 = trunc i64 %sub2587 to i32, !dbg !2002
  %sub2589 = add nsw i32 %upper_bound.3, -1, !dbg !2002
  tail call void @llvm.dbg.value(metadata !2004, i64 0, metadata !2005), !dbg !2006
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2579.pre}, i64 0, metadata !2007), !dbg !2008
  tail call void @llvm.dbg.value(metadata !{i32 %conv2588}, i64 0, metadata !2009), !dbg !2010
  tail call void @llvm.dbg.value(metadata !{i32 %sub2589}, i64 0, metadata !2011), !dbg !2010
  store i8 22, i8* %add.ptr2579.pre, align 1, !dbg !2012, !tbaa !714
  %conv1.i5183 = trunc i64 %sub2587 to i8, !dbg !2013
  %add.ptr.i5184 = getelementptr inbounds i8* %b.18.ph, i64 11, !dbg !2013
  store i8 %conv1.i5183, i8* %add.ptr.i5184, align 1, !dbg !2013, !tbaa !714
  %shr21.i = lshr i32 %conv2588, 8, !dbg !2013
  %conv2.i5185 = trunc i32 %shr21.i to i8, !dbg !2013
  %arrayidx4.i5186 = getelementptr inbounds i8* %b.18.ph, i64 12, !dbg !2013
  store i8 %conv2.i5185, i8* %arrayidx4.i5186, align 1, !dbg !2013, !tbaa !714
  %conv7.i = trunc i32 %sub2589 to i8, !dbg !2014
  %add.ptr8.i = getelementptr inbounds i8* %b.18.ph, i64 13, !dbg !2014
  store i8 %conv7.i, i8* %add.ptr8.i, align 1, !dbg !2014, !tbaa !714
  %shr1022.i = lshr i32 %sub2589, 8, !dbg !2014
  %conv11.i = trunc i32 %shr1022.i to i8, !dbg !2014
  %arrayidx13.i = getelementptr inbounds i8* %b.18.ph, i64 14, !dbg !2014
  store i8 %conv11.i, i8* %arrayidx13.i, align 1, !dbg !2014, !tbaa !714
  %add.ptr2590 = getelementptr inbounds i8* %b.18.ph, i64 15, !dbg !2015
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2590}, i64 0, metadata !279), !dbg !2015
  %sub.ptr.lhs.cast2591 = ptrtoint i8* %add.ptr2590 to i64, !dbg !2016
  %sub.ptr.sub2593 = sub i64 %sub.ptr.lhs.cast2591, %sub.ptr.rhs.cast2574, !dbg !2016
  %conv2594 = trunc i64 %sub.ptr.sub2593 to i32, !dbg !2016
  tail call void @llvm.dbg.value(metadata !1972, i64 0, metadata !2017), !dbg !2018
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.33.ph}, i64 0, metadata !2019), !dbg !2020
  tail call void @llvm.dbg.value(metadata !{i32 %conv2594}, i64 0, metadata !2021), !dbg !2022
  tail call void @llvm.dbg.value(metadata !{i32 %sub2589}, i64 0, metadata !2023), !dbg !2022
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2590}, i64 0, metadata !2024), !dbg !2025
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2590}, i64 0, metadata !2026), !dbg !2027
  %cmp5.i = icmp eq i8* %add.ptr2590, %laststart.33.ph, !dbg !2028
  %add.ptr2596.pre = getelementptr inbounds i8* %b.18.ph, i64 20, !dbg !2029
  br i1 %cmp5.i, label %insert_op2.exit, label %while.body.i, !dbg !2028

while.body.i:                                     ; preds = %if.then2582, %while.body.i
  %pto.07.i = phi i8* [ %incdec.ptr1.i, %while.body.i ], [ %add.ptr2596.pre, %if.then2582 ]
  %pfrom.06.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %add.ptr2590, %if.then2582 ]
  %incdec.ptr.i = getelementptr inbounds i8* %pfrom.06.i, i64 -1, !dbg !2030
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !2026), !dbg !2030
  %189 = load i8* %incdec.ptr.i, align 1, !dbg !2030, !tbaa !714
  %incdec.ptr1.i = getelementptr inbounds i8* %pto.07.i, i64 -1, !dbg !2030
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1.i}, i64 0, metadata !2031), !dbg !2030
  store i8 %189, i8* %incdec.ptr1.i, align 1, !dbg !2030, !tbaa !714
  %cmp.i5182 = icmp eq i8* %incdec.ptr.i, %laststart.33.ph, !dbg !2028
  br i1 %cmp.i5182, label %insert_op2.exit, label %while.body.i, !dbg !2028

insert_op2.exit:                                  ; preds = %if.then2582, %while.body.i
  tail call void @llvm.dbg.value(metadata !1972, i64 0, metadata !2032), !dbg !2034
  tail call void @llvm.dbg.value(metadata !{i8* %laststart.33.ph}, i64 0, metadata !2035), !dbg !2036
  tail call void @llvm.dbg.value(metadata !{i32 %conv2594}, i64 0, metadata !2037), !dbg !2038
  tail call void @llvm.dbg.value(metadata !{i32 %sub2589}, i64 0, metadata !2039), !dbg !2038
  store i8 23, i8* %laststart.33.ph, align 1, !dbg !2040, !tbaa !714
  %conv1.i.i = trunc i64 %sub.ptr.sub2593 to i8, !dbg !2041
  store i8 %conv1.i.i, i8* %add.ptr.i.i5214, align 1, !dbg !2041, !tbaa !714
  %shr21.i.i = lshr i32 %conv2594, 8, !dbg !2041
  %conv2.i.i = trunc i32 %shr21.i.i to i8, !dbg !2041
  store i8 %conv2.i.i, i8* %arrayidx4.i.i5217, align 1, !dbg !2041, !tbaa !714
  store i8 %conv7.i, i8* %add.ptr8.i.i5219, align 1, !dbg !2042, !tbaa !714
  store i8 %conv11.i, i8* %arrayidx13.i.i5222, align 1, !dbg !2042, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2596.pre}, i64 0, metadata !279), !dbg !2029
  br label %while.cond.backedge, !dbg !2043

unfetch_interval:                                 ; preds = %if.then2221, %if.then2346, %if.else2391, %if.then2378
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2218}, i64 0, metadata !299), !dbg !2044
  store i8* %add.ptr2218, i8** %p, align 8, !dbg !2044, !tbaa !722
  call void @llvm.dbg.value(metadata !900, i64 0, metadata !305), !dbg !2045
  %cmp2600 = icmp eq i8* %add.ptr2218, %add.ptr, !dbg !2046
  br i1 %cmp2600, label %return, label %if.end2603, !dbg !2046

if.end2603:                                       ; preds = %unfetch_interval
  call void @llvm.dbg.value(metadata !{i8* %155}, i64 0, metadata !299), !dbg !2046
  store i8* %155, i8** %p, align 8, !dbg !2046, !tbaa !722
  %190 = load i8* %add.ptr2218, align 1, !dbg !2046, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %190}, i64 0, metadata !276), !dbg !2046
  br i1 %tobool30, label %if.then2606, label %do.end2610, !dbg !2046

if.then2606:                                      ; preds = %if.end2603
  %idxprom2607 = zext i8 %190 to i64, !dbg !2046
  %arrayidx2608 = getelementptr inbounds i8* %0, i64 %idxprom2607, !dbg !2046
  %191 = load i8* %arrayidx2608, align 1, !dbg !2046, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8 %191}, i64 0, metadata !276), !dbg !2046
  br label %do.end2610, !dbg !2046

do.end2610:                                       ; preds = %if.end2603, %if.then2606
  %c.15 = phi i8 [ %191, %if.then2606 ], [ %190, %if.end2603 ]
  %cmp2614 = icmp ugt i8* %155, %pattern, !dbg !2048
  %or.cond6542 = and i1 %tobool3461, %cmp2614, !dbg !2050
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !2048
  %cmp2619 = icmp eq i8 %190, 92, !dbg !2048
  %or.cond6543 = and i1 %or.cond6542, %cmp2619, !dbg !2050
  br i1 %or.cond6543, label %normal_backslash, label %normal_char, !dbg !2050

sw.bb2624:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond2630.preheader, label %normal_char, !dbg !1490

while.cond2630.preheader:                         ; preds = %sw.bb2624
  %.pre6483.pre = load i8** %buffer25, align 8, !dbg !2051, !tbaa !722
  br label %while.cond2630.outer, !dbg !2051

while.cond2630.outer:                             ; preds = %if.end2694, %if.then2696, %while.cond2630.preheader
  %.pre6483 = phi i8* [ %.pre6483.pre, %while.cond2630.preheader ], [ %call2658, %if.then2696 ], [ %call2658, %if.end2694 ]
  %fixup_alt_jump.35.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2630.preheader ], [ %fixup_alt_jump.36, %if.then2696 ], [ %fixup_alt_jump.36, %if.end2694 ]
  %begalt.19.ph = phi i8* [ %begalt.06105, %while.cond2630.preheader ], [ %add.ptr2678, %if.then2696 ], [ %add.ptr2678, %if.end2694 ]
  %laststart.36.ph = phi i8* [ %b.06123, %while.cond2630.preheader ], [ %laststart.37, %if.then2696 ], [ %laststart.37, %if.end2694 ]
  %pending_exact.18.ph = phi i8* [ %pending_exact.06110, %while.cond2630.preheader ], [ %add.ptr2701, %if.then2696 ], [ null, %if.end2694 ]
  %b.20.ph = phi i8* [ %b.06123, %while.cond2630.preheader ], [ %add.ptr2673, %if.then2696 ], [ %add.ptr2673, %if.end2694 ]
  %sub.ptr.lhs.cast2632 = ptrtoint i8* %b.20.ph to i64, !dbg !2051
  br label %while.cond2630

while.cond2630:                                   ; preds = %if.end2664, %while.cond2630.outer
  %sub.ptr.rhs.cast2633 = ptrtoint i8* %.pre6483 to i64, !dbg !2051
  %sub.ptr.sub2634 = sub i64 %sub.ptr.lhs.cast2632, %sub.ptr.rhs.cast2633, !dbg !2051
  %add2635 = add nsw i64 %sub.ptr.sub2634, 1, !dbg !2051
  %192 = load i64* %allocated, align 8, !dbg !2051, !tbaa !713
  %cmp2637 = icmp ugt i64 %add2635, %192, !dbg !2051
  br i1 %cmp2637, label %do.body2640, label %while.end2705, !dbg !2051

do.body2640:                                      ; preds = %while.cond2630
  call void @llvm.dbg.value(metadata !{i8* %.pre6483}, i64 0, metadata !398), !dbg !2052
  %cmp2644 = icmp eq i64 %192, 65536, !dbg !2052
  br i1 %cmp2644, label %return, label %if.end2647, !dbg !2052

if.end2647:                                       ; preds = %do.body2640
  %shl2649 = shl i64 %192, 1, !dbg !2052
  %cmp2651 = icmp ugt i64 %shl2649, 65536, !dbg !2052
  %.shl2649 = select i1 %cmp2651, i64 65536, i64 %shl2649, !dbg !2052
  store i64 %.shl2649, i64* %allocated, align 8, !dbg !2052, !tbaa !713
  %call2658 = call i8* @realloc(i8* %.pre6483, i64 %.shl2649) #7, !dbg !2052
  store i8* %call2658, i8** %buffer25, align 8, !dbg !2052, !tbaa !722
  %cmp2661 = icmp eq i8* %call2658, null, !dbg !2052
  br i1 %cmp2661, label %return, label %if.end2664, !dbg !2052

if.end2664:                                       ; preds = %if.end2647
  %cmp2666 = icmp eq i8* %.pre6483, %call2658, !dbg !2052
  br i1 %cmp2666, label %while.cond2630, label %if.then2668, !dbg !2052

if.then2668:                                      ; preds = %if.end2664
  %add.ptr2673 = getelementptr inbounds i8* %call2658, i64 %sub.ptr.sub2634, !dbg !2053
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2673}, i64 0, metadata !279), !dbg !2053
  %sub.ptr.lhs.cast2674 = ptrtoint i8* %begalt.19.ph to i64, !dbg !2053
  %sub.ptr.sub2676 = sub i64 %sub.ptr.lhs.cast2674, %sub.ptr.rhs.cast2633, !dbg !2053
  %add.ptr2678 = getelementptr inbounds i8* %call2658, i64 %sub.ptr.sub2676, !dbg !2053
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2678}, i64 0, metadata !304), !dbg !2053
  %tobool2679 = icmp eq i8* %fixup_alt_jump.35.ph, null, !dbg !2053
  br i1 %tobool2679, label %if.end2686, label %if.then2680, !dbg !2053

if.then2680:                                      ; preds = %if.then2668
  %sub.ptr.lhs.cast2681 = ptrtoint i8* %fixup_alt_jump.35.ph to i64, !dbg !2053
  %sub.ptr.sub2683 = sub i64 %sub.ptr.lhs.cast2681, %sub.ptr.rhs.cast2633, !dbg !2053
  %add.ptr2685 = getelementptr inbounds i8* %call2658, i64 %sub.ptr.sub2683, !dbg !2053
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2685}, i64 0, metadata !306), !dbg !2053
  br label %if.end2686, !dbg !2053

if.end2686:                                       ; preds = %if.then2668, %if.then2680
  %fixup_alt_jump.36 = phi i8* [ %add.ptr2685, %if.then2680 ], [ null, %if.then2668 ]
  %tobool2687 = icmp eq i8* %laststart.36.ph, null, !dbg !2053
  br i1 %tobool2687, label %if.end2694, label %if.then2688, !dbg !2053

if.then2688:                                      ; preds = %if.end2686
  %sub.ptr.lhs.cast2689 = ptrtoint i8* %laststart.36.ph to i64, !dbg !2053
  %sub.ptr.sub2691 = sub i64 %sub.ptr.lhs.cast2689, %sub.ptr.rhs.cast2633, !dbg !2053
  %add.ptr2693 = getelementptr inbounds i8* %call2658, i64 %sub.ptr.sub2691, !dbg !2053
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2693}, i64 0, metadata !303), !dbg !2053
  br label %if.end2694, !dbg !2053

if.end2694:                                       ; preds = %if.end2686, %if.then2688
  %laststart.37 = phi i8* [ %add.ptr2693, %if.then2688 ], [ null, %if.end2686 ]
  %tobool2695 = icmp eq i8* %pending_exact.18.ph, null, !dbg !2053
  br i1 %tobool2695, label %while.cond2630.outer, label %if.then2696, !dbg !2053

if.then2696:                                      ; preds = %if.end2694
  %sub.ptr.lhs.cast2697 = ptrtoint i8* %pending_exact.18.ph to i64, !dbg !2053
  %sub.ptr.sub2699 = sub i64 %sub.ptr.lhs.cast2697, %sub.ptr.rhs.cast2633, !dbg !2053
  %add.ptr2701 = getelementptr inbounds i8* %call2658, i64 %sub.ptr.sub2699, !dbg !2053
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2701}, i64 0, metadata !302), !dbg !2053
  br label %while.cond2630.outer, !dbg !2053

while.end2705:                                    ; preds = %while.cond2630
  %incdec.ptr2706 = getelementptr inbounds i8* %b.20.ph, i64 1, !dbg !2051
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2706}, i64 0, metadata !279), !dbg !2051
  store i8 24, i8* %b.20.ph, align 1, !dbg !2051, !tbaa !714
  br label %while.cond.backedge, !dbg !2055

sw.bb2708:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond2714.preheader, label %normal_char, !dbg !2056

while.cond2714.preheader:                         ; preds = %sw.bb2708
  %.pre6484.pre = load i8** %buffer25, align 8, !dbg !2057, !tbaa !722
  br label %while.cond2714.outer, !dbg !2057

while.cond2714.outer:                             ; preds = %if.end2778, %if.then2780, %while.cond2714.preheader
  %.pre6484 = phi i8* [ %.pre6484.pre, %while.cond2714.preheader ], [ %call2742, %if.then2780 ], [ %call2742, %if.end2778 ]
  %fixup_alt_jump.37.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2714.preheader ], [ %fixup_alt_jump.38, %if.then2780 ], [ %fixup_alt_jump.38, %if.end2778 ]
  %begalt.20.ph = phi i8* [ %begalt.06105, %while.cond2714.preheader ], [ %add.ptr2762, %if.then2780 ], [ %add.ptr2762, %if.end2778 ]
  %laststart.38.ph = phi i8* [ %b.06123, %while.cond2714.preheader ], [ %laststart.39, %if.then2780 ], [ %laststart.39, %if.end2778 ]
  %pending_exact.19.ph = phi i8* [ %pending_exact.06110, %while.cond2714.preheader ], [ %add.ptr2785, %if.then2780 ], [ null, %if.end2778 ]
  %b.21.ph = phi i8* [ %b.06123, %while.cond2714.preheader ], [ %add.ptr2757, %if.then2780 ], [ %add.ptr2757, %if.end2778 ]
  %sub.ptr.lhs.cast2716 = ptrtoint i8* %b.21.ph to i64, !dbg !2057
  br label %while.cond2714

while.cond2714:                                   ; preds = %if.end2748, %while.cond2714.outer
  %sub.ptr.rhs.cast2717 = ptrtoint i8* %.pre6484 to i64, !dbg !2057
  %sub.ptr.sub2718 = sub i64 %sub.ptr.lhs.cast2716, %sub.ptr.rhs.cast2717, !dbg !2057
  %add2719 = add nsw i64 %sub.ptr.sub2718, 1, !dbg !2057
  %193 = load i64* %allocated, align 8, !dbg !2057, !tbaa !713
  %cmp2721 = icmp ugt i64 %add2719, %193, !dbg !2057
  br i1 %cmp2721, label %do.body2724, label %while.end2789, !dbg !2057

do.body2724:                                      ; preds = %while.cond2714
  call void @llvm.dbg.value(metadata !{i8* %.pre6484}, i64 0, metadata !401), !dbg !2058
  %cmp2728 = icmp eq i64 %193, 65536, !dbg !2058
  br i1 %cmp2728, label %return, label %if.end2731, !dbg !2058

if.end2731:                                       ; preds = %do.body2724
  %shl2733 = shl i64 %193, 1, !dbg !2058
  %cmp2735 = icmp ugt i64 %shl2733, 65536, !dbg !2058
  %.shl2733 = select i1 %cmp2735, i64 65536, i64 %shl2733, !dbg !2058
  store i64 %.shl2733, i64* %allocated, align 8, !dbg !2058, !tbaa !713
  %call2742 = call i8* @realloc(i8* %.pre6484, i64 %.shl2733) #7, !dbg !2058
  store i8* %call2742, i8** %buffer25, align 8, !dbg !2058, !tbaa !722
  %cmp2745 = icmp eq i8* %call2742, null, !dbg !2058
  br i1 %cmp2745, label %return, label %if.end2748, !dbg !2058

if.end2748:                                       ; preds = %if.end2731
  %cmp2750 = icmp eq i8* %.pre6484, %call2742, !dbg !2058
  br i1 %cmp2750, label %while.cond2714, label %if.then2752, !dbg !2058

if.then2752:                                      ; preds = %if.end2748
  %add.ptr2757 = getelementptr inbounds i8* %call2742, i64 %sub.ptr.sub2718, !dbg !2059
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2757}, i64 0, metadata !279), !dbg !2059
  %sub.ptr.lhs.cast2758 = ptrtoint i8* %begalt.20.ph to i64, !dbg !2059
  %sub.ptr.sub2760 = sub i64 %sub.ptr.lhs.cast2758, %sub.ptr.rhs.cast2717, !dbg !2059
  %add.ptr2762 = getelementptr inbounds i8* %call2742, i64 %sub.ptr.sub2760, !dbg !2059
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2762}, i64 0, metadata !304), !dbg !2059
  %tobool2763 = icmp eq i8* %fixup_alt_jump.37.ph, null, !dbg !2059
  br i1 %tobool2763, label %if.end2770, label %if.then2764, !dbg !2059

if.then2764:                                      ; preds = %if.then2752
  %sub.ptr.lhs.cast2765 = ptrtoint i8* %fixup_alt_jump.37.ph to i64, !dbg !2059
  %sub.ptr.sub2767 = sub i64 %sub.ptr.lhs.cast2765, %sub.ptr.rhs.cast2717, !dbg !2059
  %add.ptr2769 = getelementptr inbounds i8* %call2742, i64 %sub.ptr.sub2767, !dbg !2059
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2769}, i64 0, metadata !306), !dbg !2059
  br label %if.end2770, !dbg !2059

if.end2770:                                       ; preds = %if.then2752, %if.then2764
  %fixup_alt_jump.38 = phi i8* [ %add.ptr2769, %if.then2764 ], [ null, %if.then2752 ]
  %tobool2771 = icmp eq i8* %laststart.38.ph, null, !dbg !2059
  br i1 %tobool2771, label %if.end2778, label %if.then2772, !dbg !2059

if.then2772:                                      ; preds = %if.end2770
  %sub.ptr.lhs.cast2773 = ptrtoint i8* %laststart.38.ph to i64, !dbg !2059
  %sub.ptr.sub2775 = sub i64 %sub.ptr.lhs.cast2773, %sub.ptr.rhs.cast2717, !dbg !2059
  %add.ptr2777 = getelementptr inbounds i8* %call2742, i64 %sub.ptr.sub2775, !dbg !2059
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2777}, i64 0, metadata !303), !dbg !2059
  br label %if.end2778, !dbg !2059

if.end2778:                                       ; preds = %if.end2770, %if.then2772
  %laststart.39 = phi i8* [ %add.ptr2777, %if.then2772 ], [ null, %if.end2770 ]
  %tobool2779 = icmp eq i8* %pending_exact.19.ph, null, !dbg !2059
  br i1 %tobool2779, label %while.cond2714.outer, label %if.then2780, !dbg !2059

if.then2780:                                      ; preds = %if.end2778
  %sub.ptr.lhs.cast2781 = ptrtoint i8* %pending_exact.19.ph to i64, !dbg !2059
  %sub.ptr.sub2783 = sub i64 %sub.ptr.lhs.cast2781, %sub.ptr.rhs.cast2717, !dbg !2059
  %add.ptr2785 = getelementptr inbounds i8* %call2742, i64 %sub.ptr.sub2783, !dbg !2059
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2785}, i64 0, metadata !302), !dbg !2059
  br label %while.cond2714.outer, !dbg !2059

while.end2789:                                    ; preds = %while.cond2714
  %incdec.ptr2790 = getelementptr inbounds i8* %b.21.ph, i64 1, !dbg !2057
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2790}, i64 0, metadata !279), !dbg !2057
  store i8 25, i8* %b.21.ph, align 1, !dbg !2057, !tbaa !714
  br label %while.cond.backedge, !dbg !2061

sw.bb2792:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond2798.preheader, label %normal_char, !dbg !2062

while.cond2798.preheader:                         ; preds = %sw.bb2792
  %.pre6485.pre = load i8** %buffer25, align 8, !dbg !2063, !tbaa !722
  br label %while.cond2798.outer, !dbg !2063

while.cond2798.outer:                             ; preds = %if.end2862, %if.then2864, %while.cond2798.preheader
  %.pre6485 = phi i8* [ %.pre6485.pre, %while.cond2798.preheader ], [ %call2826, %if.then2864 ], [ %call2826, %if.end2862 ]
  %fixup_alt_jump.39.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2798.preheader ], [ %fixup_alt_jump.40, %if.then2864 ], [ %fixup_alt_jump.40, %if.end2862 ]
  %begalt.21.ph = phi i8* [ %begalt.06105, %while.cond2798.preheader ], [ %add.ptr2846, %if.then2864 ], [ %add.ptr2846, %if.end2862 ]
  %laststart.40.ph = phi i8* [ %laststart.06108, %while.cond2798.preheader ], [ %laststart.41, %if.then2864 ], [ %laststart.41, %if.end2862 ]
  %pending_exact.20.ph = phi i8* [ %pending_exact.06110, %while.cond2798.preheader ], [ %add.ptr2869, %if.then2864 ], [ null, %if.end2862 ]
  %b.22.ph = phi i8* [ %b.06123, %while.cond2798.preheader ], [ %add.ptr2841, %if.then2864 ], [ %add.ptr2841, %if.end2862 ]
  %sub.ptr.lhs.cast2800 = ptrtoint i8* %b.22.ph to i64, !dbg !2063
  br label %while.cond2798

while.cond2798:                                   ; preds = %if.end2832, %while.cond2798.outer
  %sub.ptr.rhs.cast2801 = ptrtoint i8* %.pre6485 to i64, !dbg !2063
  %sub.ptr.sub2802 = sub i64 %sub.ptr.lhs.cast2800, %sub.ptr.rhs.cast2801, !dbg !2063
  %add2803 = add nsw i64 %sub.ptr.sub2802, 1, !dbg !2063
  %194 = load i64* %allocated, align 8, !dbg !2063, !tbaa !713
  %cmp2805 = icmp ugt i64 %add2803, %194, !dbg !2063
  br i1 %cmp2805, label %do.body2808, label %while.end2873, !dbg !2063

do.body2808:                                      ; preds = %while.cond2798
  call void @llvm.dbg.value(metadata !{i8* %.pre6485}, i64 0, metadata !404), !dbg !2064
  %cmp2812 = icmp eq i64 %194, 65536, !dbg !2064
  br i1 %cmp2812, label %return, label %if.end2815, !dbg !2064

if.end2815:                                       ; preds = %do.body2808
  %shl2817 = shl i64 %194, 1, !dbg !2064
  %cmp2819 = icmp ugt i64 %shl2817, 65536, !dbg !2064
  %.shl2817 = select i1 %cmp2819, i64 65536, i64 %shl2817, !dbg !2064
  store i64 %.shl2817, i64* %allocated, align 8, !dbg !2064, !tbaa !713
  %call2826 = call i8* @realloc(i8* %.pre6485, i64 %.shl2817) #7, !dbg !2064
  store i8* %call2826, i8** %buffer25, align 8, !dbg !2064, !tbaa !722
  %cmp2829 = icmp eq i8* %call2826, null, !dbg !2064
  br i1 %cmp2829, label %return, label %if.end2832, !dbg !2064

if.end2832:                                       ; preds = %if.end2815
  %cmp2834 = icmp eq i8* %.pre6485, %call2826, !dbg !2064
  br i1 %cmp2834, label %while.cond2798, label %if.then2836, !dbg !2064

if.then2836:                                      ; preds = %if.end2832
  %add.ptr2841 = getelementptr inbounds i8* %call2826, i64 %sub.ptr.sub2802, !dbg !2065
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2841}, i64 0, metadata !279), !dbg !2065
  %sub.ptr.lhs.cast2842 = ptrtoint i8* %begalt.21.ph to i64, !dbg !2065
  %sub.ptr.sub2844 = sub i64 %sub.ptr.lhs.cast2842, %sub.ptr.rhs.cast2801, !dbg !2065
  %add.ptr2846 = getelementptr inbounds i8* %call2826, i64 %sub.ptr.sub2844, !dbg !2065
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2846}, i64 0, metadata !304), !dbg !2065
  %tobool2847 = icmp eq i8* %fixup_alt_jump.39.ph, null, !dbg !2065
  br i1 %tobool2847, label %if.end2854, label %if.then2848, !dbg !2065

if.then2848:                                      ; preds = %if.then2836
  %sub.ptr.lhs.cast2849 = ptrtoint i8* %fixup_alt_jump.39.ph to i64, !dbg !2065
  %sub.ptr.sub2851 = sub i64 %sub.ptr.lhs.cast2849, %sub.ptr.rhs.cast2801, !dbg !2065
  %add.ptr2853 = getelementptr inbounds i8* %call2826, i64 %sub.ptr.sub2851, !dbg !2065
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2853}, i64 0, metadata !306), !dbg !2065
  br label %if.end2854, !dbg !2065

if.end2854:                                       ; preds = %if.then2836, %if.then2848
  %fixup_alt_jump.40 = phi i8* [ %add.ptr2853, %if.then2848 ], [ null, %if.then2836 ]
  %tobool2855 = icmp eq i8* %laststart.40.ph, null, !dbg !2065
  br i1 %tobool2855, label %if.end2862, label %if.then2856, !dbg !2065

if.then2856:                                      ; preds = %if.end2854
  %sub.ptr.lhs.cast2857 = ptrtoint i8* %laststart.40.ph to i64, !dbg !2065
  %sub.ptr.sub2859 = sub i64 %sub.ptr.lhs.cast2857, %sub.ptr.rhs.cast2801, !dbg !2065
  %add.ptr2861 = getelementptr inbounds i8* %call2826, i64 %sub.ptr.sub2859, !dbg !2065
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2861}, i64 0, metadata !303), !dbg !2065
  br label %if.end2862, !dbg !2065

if.end2862:                                       ; preds = %if.end2854, %if.then2856
  %laststart.41 = phi i8* [ %add.ptr2861, %if.then2856 ], [ null, %if.end2854 ]
  %tobool2863 = icmp eq i8* %pending_exact.20.ph, null, !dbg !2065
  br i1 %tobool2863, label %while.cond2798.outer, label %if.then2864, !dbg !2065

if.then2864:                                      ; preds = %if.end2862
  %sub.ptr.lhs.cast2865 = ptrtoint i8* %pending_exact.20.ph to i64, !dbg !2065
  %sub.ptr.sub2867 = sub i64 %sub.ptr.lhs.cast2865, %sub.ptr.rhs.cast2801, !dbg !2065
  %add.ptr2869 = getelementptr inbounds i8* %call2826, i64 %sub.ptr.sub2867, !dbg !2065
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2869}, i64 0, metadata !302), !dbg !2065
  br label %while.cond2798.outer, !dbg !2065

while.end2873:                                    ; preds = %while.cond2798
  %incdec.ptr2874 = getelementptr inbounds i8* %b.22.ph, i64 1, !dbg !2063
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2874}, i64 0, metadata !279), !dbg !2063
  store i8 26, i8* %b.22.ph, align 1, !dbg !2063, !tbaa !714
  br label %while.cond.backedge, !dbg !2067

sw.bb2876:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond2882.preheader, label %normal_char, !dbg !2068

while.cond2882.preheader:                         ; preds = %sw.bb2876
  %.pre6486.pre = load i8** %buffer25, align 8, !dbg !2069, !tbaa !722
  br label %while.cond2882.outer, !dbg !2069

while.cond2882.outer:                             ; preds = %if.end2946, %if.then2948, %while.cond2882.preheader
  %.pre6486 = phi i8* [ %.pre6486.pre, %while.cond2882.preheader ], [ %call2910, %if.then2948 ], [ %call2910, %if.end2946 ]
  %fixup_alt_jump.41.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2882.preheader ], [ %fixup_alt_jump.42, %if.then2948 ], [ %fixup_alt_jump.42, %if.end2946 ]
  %begalt.22.ph = phi i8* [ %begalt.06105, %while.cond2882.preheader ], [ %add.ptr2930, %if.then2948 ], [ %add.ptr2930, %if.end2946 ]
  %laststart.42.ph = phi i8* [ %laststart.06108, %while.cond2882.preheader ], [ %laststart.43, %if.then2948 ], [ %laststart.43, %if.end2946 ]
  %pending_exact.21.ph = phi i8* [ %pending_exact.06110, %while.cond2882.preheader ], [ %add.ptr2953, %if.then2948 ], [ null, %if.end2946 ]
  %b.23.ph = phi i8* [ %b.06123, %while.cond2882.preheader ], [ %add.ptr2925, %if.then2948 ], [ %add.ptr2925, %if.end2946 ]
  %sub.ptr.lhs.cast2884 = ptrtoint i8* %b.23.ph to i64, !dbg !2069
  br label %while.cond2882

while.cond2882:                                   ; preds = %if.end2916, %while.cond2882.outer
  %sub.ptr.rhs.cast2885 = ptrtoint i8* %.pre6486 to i64, !dbg !2069
  %sub.ptr.sub2886 = sub i64 %sub.ptr.lhs.cast2884, %sub.ptr.rhs.cast2885, !dbg !2069
  %add2887 = add nsw i64 %sub.ptr.sub2886, 1, !dbg !2069
  %195 = load i64* %allocated, align 8, !dbg !2069, !tbaa !713
  %cmp2889 = icmp ugt i64 %add2887, %195, !dbg !2069
  br i1 %cmp2889, label %do.body2892, label %while.end2957, !dbg !2069

do.body2892:                                      ; preds = %while.cond2882
  call void @llvm.dbg.value(metadata !{i8* %.pre6486}, i64 0, metadata !407), !dbg !2070
  %cmp2896 = icmp eq i64 %195, 65536, !dbg !2070
  br i1 %cmp2896, label %return, label %if.end2899, !dbg !2070

if.end2899:                                       ; preds = %do.body2892
  %shl2901 = shl i64 %195, 1, !dbg !2070
  %cmp2903 = icmp ugt i64 %shl2901, 65536, !dbg !2070
  %.shl2901 = select i1 %cmp2903, i64 65536, i64 %shl2901, !dbg !2070
  store i64 %.shl2901, i64* %allocated, align 8, !dbg !2070, !tbaa !713
  %call2910 = call i8* @realloc(i8* %.pre6486, i64 %.shl2901) #7, !dbg !2070
  store i8* %call2910, i8** %buffer25, align 8, !dbg !2070, !tbaa !722
  %cmp2913 = icmp eq i8* %call2910, null, !dbg !2070
  br i1 %cmp2913, label %return, label %if.end2916, !dbg !2070

if.end2916:                                       ; preds = %if.end2899
  %cmp2918 = icmp eq i8* %.pre6486, %call2910, !dbg !2070
  br i1 %cmp2918, label %while.cond2882, label %if.then2920, !dbg !2070

if.then2920:                                      ; preds = %if.end2916
  %add.ptr2925 = getelementptr inbounds i8* %call2910, i64 %sub.ptr.sub2886, !dbg !2071
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2925}, i64 0, metadata !279), !dbg !2071
  %sub.ptr.lhs.cast2926 = ptrtoint i8* %begalt.22.ph to i64, !dbg !2071
  %sub.ptr.sub2928 = sub i64 %sub.ptr.lhs.cast2926, %sub.ptr.rhs.cast2885, !dbg !2071
  %add.ptr2930 = getelementptr inbounds i8* %call2910, i64 %sub.ptr.sub2928, !dbg !2071
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2930}, i64 0, metadata !304), !dbg !2071
  %tobool2931 = icmp eq i8* %fixup_alt_jump.41.ph, null, !dbg !2071
  br i1 %tobool2931, label %if.end2938, label %if.then2932, !dbg !2071

if.then2932:                                      ; preds = %if.then2920
  %sub.ptr.lhs.cast2933 = ptrtoint i8* %fixup_alt_jump.41.ph to i64, !dbg !2071
  %sub.ptr.sub2935 = sub i64 %sub.ptr.lhs.cast2933, %sub.ptr.rhs.cast2885, !dbg !2071
  %add.ptr2937 = getelementptr inbounds i8* %call2910, i64 %sub.ptr.sub2935, !dbg !2071
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2937}, i64 0, metadata !306), !dbg !2071
  br label %if.end2938, !dbg !2071

if.end2938:                                       ; preds = %if.then2920, %if.then2932
  %fixup_alt_jump.42 = phi i8* [ %add.ptr2937, %if.then2932 ], [ null, %if.then2920 ]
  %tobool2939 = icmp eq i8* %laststart.42.ph, null, !dbg !2071
  br i1 %tobool2939, label %if.end2946, label %if.then2940, !dbg !2071

if.then2940:                                      ; preds = %if.end2938
  %sub.ptr.lhs.cast2941 = ptrtoint i8* %laststart.42.ph to i64, !dbg !2071
  %sub.ptr.sub2943 = sub i64 %sub.ptr.lhs.cast2941, %sub.ptr.rhs.cast2885, !dbg !2071
  %add.ptr2945 = getelementptr inbounds i8* %call2910, i64 %sub.ptr.sub2943, !dbg !2071
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2945}, i64 0, metadata !303), !dbg !2071
  br label %if.end2946, !dbg !2071

if.end2946:                                       ; preds = %if.end2938, %if.then2940
  %laststart.43 = phi i8* [ %add.ptr2945, %if.then2940 ], [ null, %if.end2938 ]
  %tobool2947 = icmp eq i8* %pending_exact.21.ph, null, !dbg !2071
  br i1 %tobool2947, label %while.cond2882.outer, label %if.then2948, !dbg !2071

if.then2948:                                      ; preds = %if.end2946
  %sub.ptr.lhs.cast2949 = ptrtoint i8* %pending_exact.21.ph to i64, !dbg !2071
  %sub.ptr.sub2951 = sub i64 %sub.ptr.lhs.cast2949, %sub.ptr.rhs.cast2885, !dbg !2071
  %add.ptr2953 = getelementptr inbounds i8* %call2910, i64 %sub.ptr.sub2951, !dbg !2071
  call void @llvm.dbg.value(metadata !{i8* %add.ptr2953}, i64 0, metadata !302), !dbg !2071
  br label %while.cond2882.outer, !dbg !2071

while.end2957:                                    ; preds = %while.cond2882
  %incdec.ptr2958 = getelementptr inbounds i8* %b.23.ph, i64 1, !dbg !2069
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2958}, i64 0, metadata !279), !dbg !2069
  store i8 27, i8* %b.23.ph, align 1, !dbg !2069, !tbaa !714
  br label %while.cond.backedge, !dbg !2073

sw.bb2960:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond2966.preheader, label %normal_char, !dbg !2074

while.cond2966.preheader:                         ; preds = %sw.bb2960
  %.pre6487.pre = load i8** %buffer25, align 8, !dbg !2075, !tbaa !722
  br label %while.cond2966.outer, !dbg !2075

while.cond2966.outer:                             ; preds = %if.end3030, %if.then3032, %while.cond2966.preheader
  %.pre6487 = phi i8* [ %.pre6487.pre, %while.cond2966.preheader ], [ %call2994, %if.then3032 ], [ %call2994, %if.end3030 ]
  %fixup_alt_jump.43.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond2966.preheader ], [ %fixup_alt_jump.44, %if.then3032 ], [ %fixup_alt_jump.44, %if.end3030 ]
  %begalt.23.ph = phi i8* [ %begalt.06105, %while.cond2966.preheader ], [ %add.ptr3014, %if.then3032 ], [ %add.ptr3014, %if.end3030 ]
  %laststart.44.ph = phi i8* [ %laststart.06108, %while.cond2966.preheader ], [ %laststart.45, %if.then3032 ], [ %laststart.45, %if.end3030 ]
  %pending_exact.22.ph = phi i8* [ %pending_exact.06110, %while.cond2966.preheader ], [ %add.ptr3037, %if.then3032 ], [ null, %if.end3030 ]
  %b.24.ph = phi i8* [ %b.06123, %while.cond2966.preheader ], [ %add.ptr3009, %if.then3032 ], [ %add.ptr3009, %if.end3030 ]
  %sub.ptr.lhs.cast2968 = ptrtoint i8* %b.24.ph to i64, !dbg !2075
  br label %while.cond2966

while.cond2966:                                   ; preds = %if.end3000, %while.cond2966.outer
  %sub.ptr.rhs.cast2969 = ptrtoint i8* %.pre6487 to i64, !dbg !2075
  %sub.ptr.sub2970 = sub i64 %sub.ptr.lhs.cast2968, %sub.ptr.rhs.cast2969, !dbg !2075
  %add2971 = add nsw i64 %sub.ptr.sub2970, 1, !dbg !2075
  %196 = load i64* %allocated, align 8, !dbg !2075, !tbaa !713
  %cmp2973 = icmp ugt i64 %add2971, %196, !dbg !2075
  br i1 %cmp2973, label %do.body2976, label %while.end3041, !dbg !2075

do.body2976:                                      ; preds = %while.cond2966
  call void @llvm.dbg.value(metadata !{i8* %.pre6487}, i64 0, metadata !410), !dbg !2076
  %cmp2980 = icmp eq i64 %196, 65536, !dbg !2076
  br i1 %cmp2980, label %return, label %if.end2983, !dbg !2076

if.end2983:                                       ; preds = %do.body2976
  %shl2985 = shl i64 %196, 1, !dbg !2076
  %cmp2987 = icmp ugt i64 %shl2985, 65536, !dbg !2076
  %.shl2985 = select i1 %cmp2987, i64 65536, i64 %shl2985, !dbg !2076
  store i64 %.shl2985, i64* %allocated, align 8, !dbg !2076, !tbaa !713
  %call2994 = call i8* @realloc(i8* %.pre6487, i64 %.shl2985) #7, !dbg !2076
  store i8* %call2994, i8** %buffer25, align 8, !dbg !2076, !tbaa !722
  %cmp2997 = icmp eq i8* %call2994, null, !dbg !2076
  br i1 %cmp2997, label %return, label %if.end3000, !dbg !2076

if.end3000:                                       ; preds = %if.end2983
  %cmp3002 = icmp eq i8* %.pre6487, %call2994, !dbg !2076
  br i1 %cmp3002, label %while.cond2966, label %if.then3004, !dbg !2076

if.then3004:                                      ; preds = %if.end3000
  %add.ptr3009 = getelementptr inbounds i8* %call2994, i64 %sub.ptr.sub2970, !dbg !2077
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3009}, i64 0, metadata !279), !dbg !2077
  %sub.ptr.lhs.cast3010 = ptrtoint i8* %begalt.23.ph to i64, !dbg !2077
  %sub.ptr.sub3012 = sub i64 %sub.ptr.lhs.cast3010, %sub.ptr.rhs.cast2969, !dbg !2077
  %add.ptr3014 = getelementptr inbounds i8* %call2994, i64 %sub.ptr.sub3012, !dbg !2077
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3014}, i64 0, metadata !304), !dbg !2077
  %tobool3015 = icmp eq i8* %fixup_alt_jump.43.ph, null, !dbg !2077
  br i1 %tobool3015, label %if.end3022, label %if.then3016, !dbg !2077

if.then3016:                                      ; preds = %if.then3004
  %sub.ptr.lhs.cast3017 = ptrtoint i8* %fixup_alt_jump.43.ph to i64, !dbg !2077
  %sub.ptr.sub3019 = sub i64 %sub.ptr.lhs.cast3017, %sub.ptr.rhs.cast2969, !dbg !2077
  %add.ptr3021 = getelementptr inbounds i8* %call2994, i64 %sub.ptr.sub3019, !dbg !2077
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3021}, i64 0, metadata !306), !dbg !2077
  br label %if.end3022, !dbg !2077

if.end3022:                                       ; preds = %if.then3004, %if.then3016
  %fixup_alt_jump.44 = phi i8* [ %add.ptr3021, %if.then3016 ], [ null, %if.then3004 ]
  %tobool3023 = icmp eq i8* %laststart.44.ph, null, !dbg !2077
  br i1 %tobool3023, label %if.end3030, label %if.then3024, !dbg !2077

if.then3024:                                      ; preds = %if.end3022
  %sub.ptr.lhs.cast3025 = ptrtoint i8* %laststart.44.ph to i64, !dbg !2077
  %sub.ptr.sub3027 = sub i64 %sub.ptr.lhs.cast3025, %sub.ptr.rhs.cast2969, !dbg !2077
  %add.ptr3029 = getelementptr inbounds i8* %call2994, i64 %sub.ptr.sub3027, !dbg !2077
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3029}, i64 0, metadata !303), !dbg !2077
  br label %if.end3030, !dbg !2077

if.end3030:                                       ; preds = %if.end3022, %if.then3024
  %laststart.45 = phi i8* [ %add.ptr3029, %if.then3024 ], [ null, %if.end3022 ]
  %tobool3031 = icmp eq i8* %pending_exact.22.ph, null, !dbg !2077
  br i1 %tobool3031, label %while.cond2966.outer, label %if.then3032, !dbg !2077

if.then3032:                                      ; preds = %if.end3030
  %sub.ptr.lhs.cast3033 = ptrtoint i8* %pending_exact.22.ph to i64, !dbg !2077
  %sub.ptr.sub3035 = sub i64 %sub.ptr.lhs.cast3033, %sub.ptr.rhs.cast2969, !dbg !2077
  %add.ptr3037 = getelementptr inbounds i8* %call2994, i64 %sub.ptr.sub3035, !dbg !2077
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3037}, i64 0, metadata !302), !dbg !2077
  br label %while.cond2966.outer, !dbg !2077

while.end3041:                                    ; preds = %while.cond2966
  %incdec.ptr3042 = getelementptr inbounds i8* %b.24.ph, i64 1, !dbg !2075
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3042}, i64 0, metadata !279), !dbg !2075
  store i8 28, i8* %b.24.ph, align 1, !dbg !2075, !tbaa !714
  br label %while.cond.backedge, !dbg !2079

sw.bb3044:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond3050.preheader, label %normal_char, !dbg !2080

while.cond3050.preheader:                         ; preds = %sw.bb3044
  %.pre6488.pre = load i8** %buffer25, align 8, !dbg !2081, !tbaa !722
  br label %while.cond3050.outer, !dbg !2081

while.cond3050.outer:                             ; preds = %if.end3114, %if.then3116, %while.cond3050.preheader
  %.pre6488 = phi i8* [ %.pre6488.pre, %while.cond3050.preheader ], [ %call3078, %if.then3116 ], [ %call3078, %if.end3114 ]
  %fixup_alt_jump.45.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond3050.preheader ], [ %fixup_alt_jump.46, %if.then3116 ], [ %fixup_alt_jump.46, %if.end3114 ]
  %begalt.24.ph = phi i8* [ %begalt.06105, %while.cond3050.preheader ], [ %add.ptr3098, %if.then3116 ], [ %add.ptr3098, %if.end3114 ]
  %laststart.46.ph = phi i8* [ %laststart.06108, %while.cond3050.preheader ], [ %laststart.47, %if.then3116 ], [ %laststart.47, %if.end3114 ]
  %pending_exact.23.ph = phi i8* [ %pending_exact.06110, %while.cond3050.preheader ], [ %add.ptr3121, %if.then3116 ], [ null, %if.end3114 ]
  %b.25.ph = phi i8* [ %b.06123, %while.cond3050.preheader ], [ %add.ptr3093, %if.then3116 ], [ %add.ptr3093, %if.end3114 ]
  %sub.ptr.lhs.cast3052 = ptrtoint i8* %b.25.ph to i64, !dbg !2081
  br label %while.cond3050

while.cond3050:                                   ; preds = %if.end3084, %while.cond3050.outer
  %sub.ptr.rhs.cast3053 = ptrtoint i8* %.pre6488 to i64, !dbg !2081
  %sub.ptr.sub3054 = sub i64 %sub.ptr.lhs.cast3052, %sub.ptr.rhs.cast3053, !dbg !2081
  %add3055 = add nsw i64 %sub.ptr.sub3054, 1, !dbg !2081
  %197 = load i64* %allocated, align 8, !dbg !2081, !tbaa !713
  %cmp3057 = icmp ugt i64 %add3055, %197, !dbg !2081
  br i1 %cmp3057, label %do.body3060, label %while.end3125, !dbg !2081

do.body3060:                                      ; preds = %while.cond3050
  call void @llvm.dbg.value(metadata !{i8* %.pre6488}, i64 0, metadata !413), !dbg !2082
  %cmp3064 = icmp eq i64 %197, 65536, !dbg !2082
  br i1 %cmp3064, label %return, label %if.end3067, !dbg !2082

if.end3067:                                       ; preds = %do.body3060
  %shl3069 = shl i64 %197, 1, !dbg !2082
  %cmp3071 = icmp ugt i64 %shl3069, 65536, !dbg !2082
  %.shl3069 = select i1 %cmp3071, i64 65536, i64 %shl3069, !dbg !2082
  store i64 %.shl3069, i64* %allocated, align 8, !dbg !2082, !tbaa !713
  %call3078 = call i8* @realloc(i8* %.pre6488, i64 %.shl3069) #7, !dbg !2082
  store i8* %call3078, i8** %buffer25, align 8, !dbg !2082, !tbaa !722
  %cmp3081 = icmp eq i8* %call3078, null, !dbg !2082
  br i1 %cmp3081, label %return, label %if.end3084, !dbg !2082

if.end3084:                                       ; preds = %if.end3067
  %cmp3086 = icmp eq i8* %.pre6488, %call3078, !dbg !2082
  br i1 %cmp3086, label %while.cond3050, label %if.then3088, !dbg !2082

if.then3088:                                      ; preds = %if.end3084
  %add.ptr3093 = getelementptr inbounds i8* %call3078, i64 %sub.ptr.sub3054, !dbg !2083
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3093}, i64 0, metadata !279), !dbg !2083
  %sub.ptr.lhs.cast3094 = ptrtoint i8* %begalt.24.ph to i64, !dbg !2083
  %sub.ptr.sub3096 = sub i64 %sub.ptr.lhs.cast3094, %sub.ptr.rhs.cast3053, !dbg !2083
  %add.ptr3098 = getelementptr inbounds i8* %call3078, i64 %sub.ptr.sub3096, !dbg !2083
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3098}, i64 0, metadata !304), !dbg !2083
  %tobool3099 = icmp eq i8* %fixup_alt_jump.45.ph, null, !dbg !2083
  br i1 %tobool3099, label %if.end3106, label %if.then3100, !dbg !2083

if.then3100:                                      ; preds = %if.then3088
  %sub.ptr.lhs.cast3101 = ptrtoint i8* %fixup_alt_jump.45.ph to i64, !dbg !2083
  %sub.ptr.sub3103 = sub i64 %sub.ptr.lhs.cast3101, %sub.ptr.rhs.cast3053, !dbg !2083
  %add.ptr3105 = getelementptr inbounds i8* %call3078, i64 %sub.ptr.sub3103, !dbg !2083
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3105}, i64 0, metadata !306), !dbg !2083
  br label %if.end3106, !dbg !2083

if.end3106:                                       ; preds = %if.then3088, %if.then3100
  %fixup_alt_jump.46 = phi i8* [ %add.ptr3105, %if.then3100 ], [ null, %if.then3088 ]
  %tobool3107 = icmp eq i8* %laststart.46.ph, null, !dbg !2083
  br i1 %tobool3107, label %if.end3114, label %if.then3108, !dbg !2083

if.then3108:                                      ; preds = %if.end3106
  %sub.ptr.lhs.cast3109 = ptrtoint i8* %laststart.46.ph to i64, !dbg !2083
  %sub.ptr.sub3111 = sub i64 %sub.ptr.lhs.cast3109, %sub.ptr.rhs.cast3053, !dbg !2083
  %add.ptr3113 = getelementptr inbounds i8* %call3078, i64 %sub.ptr.sub3111, !dbg !2083
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3113}, i64 0, metadata !303), !dbg !2083
  br label %if.end3114, !dbg !2083

if.end3114:                                       ; preds = %if.end3106, %if.then3108
  %laststart.47 = phi i8* [ %add.ptr3113, %if.then3108 ], [ null, %if.end3106 ]
  %tobool3115 = icmp eq i8* %pending_exact.23.ph, null, !dbg !2083
  br i1 %tobool3115, label %while.cond3050.outer, label %if.then3116, !dbg !2083

if.then3116:                                      ; preds = %if.end3114
  %sub.ptr.lhs.cast3117 = ptrtoint i8* %pending_exact.23.ph to i64, !dbg !2083
  %sub.ptr.sub3119 = sub i64 %sub.ptr.lhs.cast3117, %sub.ptr.rhs.cast3053, !dbg !2083
  %add.ptr3121 = getelementptr inbounds i8* %call3078, i64 %sub.ptr.sub3119, !dbg !2083
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3121}, i64 0, metadata !302), !dbg !2083
  br label %while.cond3050.outer, !dbg !2083

while.end3125:                                    ; preds = %while.cond3050
  %incdec.ptr3126 = getelementptr inbounds i8* %b.25.ph, i64 1, !dbg !2081
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3126}, i64 0, metadata !279), !dbg !2081
  store i8 29, i8* %b.25.ph, align 1, !dbg !2081, !tbaa !714
  br label %while.cond.backedge, !dbg !2085

sw.bb3128:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond3134.preheader, label %normal_char, !dbg !2086

while.cond3134.preheader:                         ; preds = %sw.bb3128
  %.pre6489.pre = load i8** %buffer25, align 8, !dbg !2087, !tbaa !722
  br label %while.cond3134.outer, !dbg !2087

while.cond3134.outer:                             ; preds = %if.end3198, %if.then3200, %while.cond3134.preheader
  %.pre6489 = phi i8* [ %.pre6489.pre, %while.cond3134.preheader ], [ %call3162, %if.then3200 ], [ %call3162, %if.end3198 ]
  %fixup_alt_jump.47.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond3134.preheader ], [ %fixup_alt_jump.48, %if.then3200 ], [ %fixup_alt_jump.48, %if.end3198 ]
  %begalt.25.ph = phi i8* [ %begalt.06105, %while.cond3134.preheader ], [ %add.ptr3182, %if.then3200 ], [ %add.ptr3182, %if.end3198 ]
  %laststart.48.ph = phi i8* [ %laststart.06108, %while.cond3134.preheader ], [ %laststart.49, %if.then3200 ], [ %laststart.49, %if.end3198 ]
  %pending_exact.24.ph = phi i8* [ %pending_exact.06110, %while.cond3134.preheader ], [ %add.ptr3205, %if.then3200 ], [ null, %if.end3198 ]
  %b.26.ph = phi i8* [ %b.06123, %while.cond3134.preheader ], [ %add.ptr3177, %if.then3200 ], [ %add.ptr3177, %if.end3198 ]
  %sub.ptr.lhs.cast3136 = ptrtoint i8* %b.26.ph to i64, !dbg !2087
  br label %while.cond3134

while.cond3134:                                   ; preds = %if.end3168, %while.cond3134.outer
  %sub.ptr.rhs.cast3137 = ptrtoint i8* %.pre6489 to i64, !dbg !2087
  %sub.ptr.sub3138 = sub i64 %sub.ptr.lhs.cast3136, %sub.ptr.rhs.cast3137, !dbg !2087
  %add3139 = add nsw i64 %sub.ptr.sub3138, 1, !dbg !2087
  %198 = load i64* %allocated, align 8, !dbg !2087, !tbaa !713
  %cmp3141 = icmp ugt i64 %add3139, %198, !dbg !2087
  br i1 %cmp3141, label %do.body3144, label %while.end3209, !dbg !2087

do.body3144:                                      ; preds = %while.cond3134
  call void @llvm.dbg.value(metadata !{i8* %.pre6489}, i64 0, metadata !416), !dbg !2088
  %cmp3148 = icmp eq i64 %198, 65536, !dbg !2088
  br i1 %cmp3148, label %return, label %if.end3151, !dbg !2088

if.end3151:                                       ; preds = %do.body3144
  %shl3153 = shl i64 %198, 1, !dbg !2088
  %cmp3155 = icmp ugt i64 %shl3153, 65536, !dbg !2088
  %.shl3153 = select i1 %cmp3155, i64 65536, i64 %shl3153, !dbg !2088
  store i64 %.shl3153, i64* %allocated, align 8, !dbg !2088, !tbaa !713
  %call3162 = call i8* @realloc(i8* %.pre6489, i64 %.shl3153) #7, !dbg !2088
  store i8* %call3162, i8** %buffer25, align 8, !dbg !2088, !tbaa !722
  %cmp3165 = icmp eq i8* %call3162, null, !dbg !2088
  br i1 %cmp3165, label %return, label %if.end3168, !dbg !2088

if.end3168:                                       ; preds = %if.end3151
  %cmp3170 = icmp eq i8* %.pre6489, %call3162, !dbg !2088
  br i1 %cmp3170, label %while.cond3134, label %if.then3172, !dbg !2088

if.then3172:                                      ; preds = %if.end3168
  %add.ptr3177 = getelementptr inbounds i8* %call3162, i64 %sub.ptr.sub3138, !dbg !2089
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3177}, i64 0, metadata !279), !dbg !2089
  %sub.ptr.lhs.cast3178 = ptrtoint i8* %begalt.25.ph to i64, !dbg !2089
  %sub.ptr.sub3180 = sub i64 %sub.ptr.lhs.cast3178, %sub.ptr.rhs.cast3137, !dbg !2089
  %add.ptr3182 = getelementptr inbounds i8* %call3162, i64 %sub.ptr.sub3180, !dbg !2089
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3182}, i64 0, metadata !304), !dbg !2089
  %tobool3183 = icmp eq i8* %fixup_alt_jump.47.ph, null, !dbg !2089
  br i1 %tobool3183, label %if.end3190, label %if.then3184, !dbg !2089

if.then3184:                                      ; preds = %if.then3172
  %sub.ptr.lhs.cast3185 = ptrtoint i8* %fixup_alt_jump.47.ph to i64, !dbg !2089
  %sub.ptr.sub3187 = sub i64 %sub.ptr.lhs.cast3185, %sub.ptr.rhs.cast3137, !dbg !2089
  %add.ptr3189 = getelementptr inbounds i8* %call3162, i64 %sub.ptr.sub3187, !dbg !2089
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3189}, i64 0, metadata !306), !dbg !2089
  br label %if.end3190, !dbg !2089

if.end3190:                                       ; preds = %if.then3172, %if.then3184
  %fixup_alt_jump.48 = phi i8* [ %add.ptr3189, %if.then3184 ], [ null, %if.then3172 ]
  %tobool3191 = icmp eq i8* %laststart.48.ph, null, !dbg !2089
  br i1 %tobool3191, label %if.end3198, label %if.then3192, !dbg !2089

if.then3192:                                      ; preds = %if.end3190
  %sub.ptr.lhs.cast3193 = ptrtoint i8* %laststart.48.ph to i64, !dbg !2089
  %sub.ptr.sub3195 = sub i64 %sub.ptr.lhs.cast3193, %sub.ptr.rhs.cast3137, !dbg !2089
  %add.ptr3197 = getelementptr inbounds i8* %call3162, i64 %sub.ptr.sub3195, !dbg !2089
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3197}, i64 0, metadata !303), !dbg !2089
  br label %if.end3198, !dbg !2089

if.end3198:                                       ; preds = %if.end3190, %if.then3192
  %laststart.49 = phi i8* [ %add.ptr3197, %if.then3192 ], [ null, %if.end3190 ]
  %tobool3199 = icmp eq i8* %pending_exact.24.ph, null, !dbg !2089
  br i1 %tobool3199, label %while.cond3134.outer, label %if.then3200, !dbg !2089

if.then3200:                                      ; preds = %if.end3198
  %sub.ptr.lhs.cast3201 = ptrtoint i8* %pending_exact.24.ph to i64, !dbg !2089
  %sub.ptr.sub3203 = sub i64 %sub.ptr.lhs.cast3201, %sub.ptr.rhs.cast3137, !dbg !2089
  %add.ptr3205 = getelementptr inbounds i8* %call3162, i64 %sub.ptr.sub3203, !dbg !2089
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3205}, i64 0, metadata !302), !dbg !2089
  br label %while.cond3134.outer, !dbg !2089

while.end3209:                                    ; preds = %while.cond3134
  %incdec.ptr3210 = getelementptr inbounds i8* %b.26.ph, i64 1, !dbg !2087
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3210}, i64 0, metadata !279), !dbg !2087
  store i8 11, i8* %b.26.ph, align 1, !dbg !2087, !tbaa !714
  br label %while.cond.backedge, !dbg !2091

sw.bb3212:                                        ; preds = %if.end1607
  br i1 %tobool2626, label %while.cond3218.preheader, label %normal_char, !dbg !2092

while.cond3218.preheader:                         ; preds = %sw.bb3212
  %.pre6490.pre = load i8** %buffer25, align 8, !dbg !2093, !tbaa !722
  br label %while.cond3218.outer, !dbg !2093

while.cond3218.outer:                             ; preds = %if.end3282, %if.then3284, %while.cond3218.preheader
  %.pre6490 = phi i8* [ %.pre6490.pre, %while.cond3218.preheader ], [ %call3246, %if.then3284 ], [ %call3246, %if.end3282 ]
  %fixup_alt_jump.49.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond3218.preheader ], [ %fixup_alt_jump.50, %if.then3284 ], [ %fixup_alt_jump.50, %if.end3282 ]
  %begalt.26.ph = phi i8* [ %begalt.06105, %while.cond3218.preheader ], [ %add.ptr3266, %if.then3284 ], [ %add.ptr3266, %if.end3282 ]
  %laststart.50.ph = phi i8* [ %laststart.06108, %while.cond3218.preheader ], [ %laststart.51, %if.then3284 ], [ %laststart.51, %if.end3282 ]
  %pending_exact.25.ph = phi i8* [ %pending_exact.06110, %while.cond3218.preheader ], [ %add.ptr3289, %if.then3284 ], [ null, %if.end3282 ]
  %b.27.ph = phi i8* [ %b.06123, %while.cond3218.preheader ], [ %add.ptr3261, %if.then3284 ], [ %add.ptr3261, %if.end3282 ]
  %sub.ptr.lhs.cast3220 = ptrtoint i8* %b.27.ph to i64, !dbg !2093
  br label %while.cond3218

while.cond3218:                                   ; preds = %if.end3252, %while.cond3218.outer
  %sub.ptr.rhs.cast3221 = ptrtoint i8* %.pre6490 to i64, !dbg !2093
  %sub.ptr.sub3222 = sub i64 %sub.ptr.lhs.cast3220, %sub.ptr.rhs.cast3221, !dbg !2093
  %add3223 = add nsw i64 %sub.ptr.sub3222, 1, !dbg !2093
  %199 = load i64* %allocated, align 8, !dbg !2093, !tbaa !713
  %cmp3225 = icmp ugt i64 %add3223, %199, !dbg !2093
  br i1 %cmp3225, label %do.body3228, label %while.end3293, !dbg !2093

do.body3228:                                      ; preds = %while.cond3218
  call void @llvm.dbg.value(metadata !{i8* %.pre6490}, i64 0, metadata !419), !dbg !2094
  %cmp3232 = icmp eq i64 %199, 65536, !dbg !2094
  br i1 %cmp3232, label %return, label %if.end3235, !dbg !2094

if.end3235:                                       ; preds = %do.body3228
  %shl3237 = shl i64 %199, 1, !dbg !2094
  %cmp3239 = icmp ugt i64 %shl3237, 65536, !dbg !2094
  %.shl3237 = select i1 %cmp3239, i64 65536, i64 %shl3237, !dbg !2094
  store i64 %.shl3237, i64* %allocated, align 8, !dbg !2094, !tbaa !713
  %call3246 = call i8* @realloc(i8* %.pre6490, i64 %.shl3237) #7, !dbg !2094
  store i8* %call3246, i8** %buffer25, align 8, !dbg !2094, !tbaa !722
  %cmp3249 = icmp eq i8* %call3246, null, !dbg !2094
  br i1 %cmp3249, label %return, label %if.end3252, !dbg !2094

if.end3252:                                       ; preds = %if.end3235
  %cmp3254 = icmp eq i8* %.pre6490, %call3246, !dbg !2094
  br i1 %cmp3254, label %while.cond3218, label %if.then3256, !dbg !2094

if.then3256:                                      ; preds = %if.end3252
  %add.ptr3261 = getelementptr inbounds i8* %call3246, i64 %sub.ptr.sub3222, !dbg !2095
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3261}, i64 0, metadata !279), !dbg !2095
  %sub.ptr.lhs.cast3262 = ptrtoint i8* %begalt.26.ph to i64, !dbg !2095
  %sub.ptr.sub3264 = sub i64 %sub.ptr.lhs.cast3262, %sub.ptr.rhs.cast3221, !dbg !2095
  %add.ptr3266 = getelementptr inbounds i8* %call3246, i64 %sub.ptr.sub3264, !dbg !2095
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3266}, i64 0, metadata !304), !dbg !2095
  %tobool3267 = icmp eq i8* %fixup_alt_jump.49.ph, null, !dbg !2095
  br i1 %tobool3267, label %if.end3274, label %if.then3268, !dbg !2095

if.then3268:                                      ; preds = %if.then3256
  %sub.ptr.lhs.cast3269 = ptrtoint i8* %fixup_alt_jump.49.ph to i64, !dbg !2095
  %sub.ptr.sub3271 = sub i64 %sub.ptr.lhs.cast3269, %sub.ptr.rhs.cast3221, !dbg !2095
  %add.ptr3273 = getelementptr inbounds i8* %call3246, i64 %sub.ptr.sub3271, !dbg !2095
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3273}, i64 0, metadata !306), !dbg !2095
  br label %if.end3274, !dbg !2095

if.end3274:                                       ; preds = %if.then3256, %if.then3268
  %fixup_alt_jump.50 = phi i8* [ %add.ptr3273, %if.then3268 ], [ null, %if.then3256 ]
  %tobool3275 = icmp eq i8* %laststart.50.ph, null, !dbg !2095
  br i1 %tobool3275, label %if.end3282, label %if.then3276, !dbg !2095

if.then3276:                                      ; preds = %if.end3274
  %sub.ptr.lhs.cast3277 = ptrtoint i8* %laststart.50.ph to i64, !dbg !2095
  %sub.ptr.sub3279 = sub i64 %sub.ptr.lhs.cast3277, %sub.ptr.rhs.cast3221, !dbg !2095
  %add.ptr3281 = getelementptr inbounds i8* %call3246, i64 %sub.ptr.sub3279, !dbg !2095
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3281}, i64 0, metadata !303), !dbg !2095
  br label %if.end3282, !dbg !2095

if.end3282:                                       ; preds = %if.end3274, %if.then3276
  %laststart.51 = phi i8* [ %add.ptr3281, %if.then3276 ], [ null, %if.end3274 ]
  %tobool3283 = icmp eq i8* %pending_exact.25.ph, null, !dbg !2095
  br i1 %tobool3283, label %while.cond3218.outer, label %if.then3284, !dbg !2095

if.then3284:                                      ; preds = %if.end3282
  %sub.ptr.lhs.cast3285 = ptrtoint i8* %pending_exact.25.ph to i64, !dbg !2095
  %sub.ptr.sub3287 = sub i64 %sub.ptr.lhs.cast3285, %sub.ptr.rhs.cast3221, !dbg !2095
  %add.ptr3289 = getelementptr inbounds i8* %call3246, i64 %sub.ptr.sub3287, !dbg !2095
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3289}, i64 0, metadata !302), !dbg !2095
  br label %while.cond3218.outer, !dbg !2095

while.end3293:                                    ; preds = %while.cond3218
  %incdec.ptr3294 = getelementptr inbounds i8* %b.27.ph, i64 1, !dbg !2093
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3294}, i64 0, metadata !279), !dbg !2093
  store i8 12, i8* %b.27.ph, align 1, !dbg !2093, !tbaa !714
  br label %while.cond.backedge, !dbg !2097

sw.bb3296:                                        ; preds = %if.end1607, %if.end1607, %if.end1607, %if.end1607, %if.end1607, %if.end1607, %if.end1607, %if.end1607, %if.end1607
  br i1 %tobool3298, label %if.end3300, label %normal_char, !dbg !1491

if.end3300:                                       ; preds = %sw.bb3296
  %sub3302 = add i8 %134, -48, !dbg !2098
  call void @llvm.dbg.value(metadata !{i8 %sub3302}, i64 0, metadata !277), !dbg !2098
  %conv3304 = zext i8 %sub3302 to i32, !dbg !2099
  %cmp3305 = icmp ugt i32 %conv3304, %regnum.06098, !dbg !2099
  br i1 %cmp3305, label %if.then3307, label %if.end3309, !dbg !2099

if.then3307:                                      ; preds = %if.end3300
  %200 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113 to i8*, !dbg !2100
  call void @free(i8* %200) #7, !dbg !2100
  br label %return, !dbg !2100

if.end3309:                                       ; preds = %if.end3300
  tail call void @llvm.dbg.declare(metadata !1420, metadata !439), !dbg !2101
  tail call void @llvm.dbg.value(metadata !{i32 %conv3304}, i64 0, metadata !2103), !dbg !2104
  %compile_stack.sroa.1.12.extract.shift.i = lshr i64 %compile_stack.sroa.1.06119, 32, !dbg !2105
  %compile_stack.sroa.1.12.extract.trunc.i = trunc i64 %compile_stack.sroa.1.12.extract.shift.i to i32, !dbg !2105
  br label %for.cond.i, !dbg !2105

for.cond.i:                                       ; preds = %for.body.i, %if.end3309
  %this_element.0.in.i = phi i32 [ %compile_stack.sroa.1.12.extract.trunc.i, %if.end3309 ], [ %this_element.0.i, %for.body.i ]
  %this_element.0.i = add i32 %this_element.0.in.i, -1, !dbg !2105
  %cmp.i = icmp sgt i32 %this_element.0.i, -1, !dbg !2105
  br i1 %cmp.i, label %for.body.i, label %while.cond3316.loopexit, !dbg !2105

for.body.i:                                       ; preds = %for.cond.i
  %idxprom.i = sext i32 %this_element.0.i to i64, !dbg !2107
  %regnum1.i = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.06113, i64 %idxprom.i, i32 4, !dbg !2107
  %201 = load i32* %regnum1.i, align 4, !dbg !2107, !tbaa !795
  %cmp2.i = icmp eq i32 %201, %conv3304, !dbg !2107
  br i1 %cmp2.i, label %normal_char, label %for.cond.i, !dbg !2107

while.cond3316.loopexit:                          ; preds = %for.cond.i
  %.pre6491.pre = load i8** %buffer25, align 8, !dbg !2108, !tbaa !722
  br label %while.cond3316.outer

while.cond3316.outer:                             ; preds = %if.end3380, %if.then3382, %while.cond3316.loopexit
  %.pre6491 = phi i8* [ %.pre6491.pre, %while.cond3316.loopexit ], [ %call3344, %if.then3382 ], [ %call3344, %if.end3380 ]
  %fixup_alt_jump.51.ph = phi i8* [ %fixup_alt_jump.06102, %while.cond3316.loopexit ], [ %fixup_alt_jump.52, %if.then3382 ], [ %fixup_alt_jump.52, %if.end3380 ]
  %begalt.27.ph = phi i8* [ %begalt.06105, %while.cond3316.loopexit ], [ %add.ptr3364, %if.then3382 ], [ %add.ptr3364, %if.end3380 ]
  %laststart.52.ph = phi i8* [ %b.06123, %while.cond3316.loopexit ], [ %laststart.53, %if.then3382 ], [ %laststart.53, %if.end3380 ]
  %pending_exact.26.ph = phi i8* [ %pending_exact.06110, %while.cond3316.loopexit ], [ %add.ptr3387, %if.then3382 ], [ null, %if.end3380 ]
  %b.28.ph = phi i8* [ %b.06123, %while.cond3316.loopexit ], [ %add.ptr3359, %if.then3382 ], [ %add.ptr3359, %if.end3380 ]
  %sub.ptr.lhs.cast3318 = ptrtoint i8* %b.28.ph to i64, !dbg !2108
  br label %while.cond3316

while.cond3316:                                   ; preds = %if.end3350, %while.cond3316.outer
  %sub.ptr.rhs.cast3319 = ptrtoint i8* %.pre6491 to i64, !dbg !2108
  %sub.ptr.sub3320 = sub i64 %sub.ptr.lhs.cast3318, %sub.ptr.rhs.cast3319, !dbg !2108
  %add3321 = add nsw i64 %sub.ptr.sub3320, 2, !dbg !2108
  %202 = load i64* %allocated, align 8, !dbg !2108, !tbaa !713
  %cmp3323 = icmp ugt i64 %add3321, %202, !dbg !2108
  br i1 %cmp3323, label %do.body3326, label %while.end3391, !dbg !2108

do.body3326:                                      ; preds = %while.cond3316
  call void @llvm.dbg.value(metadata !{i8* %.pre6491}, i64 0, metadata !422), !dbg !2109
  %cmp3330 = icmp eq i64 %202, 65536, !dbg !2109
  br i1 %cmp3330, label %return, label %if.end3333, !dbg !2109

if.end3333:                                       ; preds = %do.body3326
  %shl3335 = shl i64 %202, 1, !dbg !2109
  %cmp3337 = icmp ugt i64 %shl3335, 65536, !dbg !2109
  %.shl3335 = select i1 %cmp3337, i64 65536, i64 %shl3335, !dbg !2109
  store i64 %.shl3335, i64* %allocated, align 8, !dbg !2109, !tbaa !713
  %call3344 = call i8* @realloc(i8* %.pre6491, i64 %.shl3335) #7, !dbg !2109
  store i8* %call3344, i8** %buffer25, align 8, !dbg !2109, !tbaa !722
  %cmp3347 = icmp eq i8* %call3344, null, !dbg !2109
  br i1 %cmp3347, label %return, label %if.end3350, !dbg !2109

if.end3350:                                       ; preds = %if.end3333
  %cmp3352 = icmp eq i8* %.pre6491, %call3344, !dbg !2109
  br i1 %cmp3352, label %while.cond3316, label %if.then3354, !dbg !2109

if.then3354:                                      ; preds = %if.end3350
  %add.ptr3359 = getelementptr inbounds i8* %call3344, i64 %sub.ptr.sub3320, !dbg !2110
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3359}, i64 0, metadata !279), !dbg !2110
  %sub.ptr.lhs.cast3360 = ptrtoint i8* %begalt.27.ph to i64, !dbg !2110
  %sub.ptr.sub3362 = sub i64 %sub.ptr.lhs.cast3360, %sub.ptr.rhs.cast3319, !dbg !2110
  %add.ptr3364 = getelementptr inbounds i8* %call3344, i64 %sub.ptr.sub3362, !dbg !2110
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3364}, i64 0, metadata !304), !dbg !2110
  %tobool3365 = icmp eq i8* %fixup_alt_jump.51.ph, null, !dbg !2110
  br i1 %tobool3365, label %if.end3372, label %if.then3366, !dbg !2110

if.then3366:                                      ; preds = %if.then3354
  %sub.ptr.lhs.cast3367 = ptrtoint i8* %fixup_alt_jump.51.ph to i64, !dbg !2110
  %sub.ptr.sub3369 = sub i64 %sub.ptr.lhs.cast3367, %sub.ptr.rhs.cast3319, !dbg !2110
  %add.ptr3371 = getelementptr inbounds i8* %call3344, i64 %sub.ptr.sub3369, !dbg !2110
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3371}, i64 0, metadata !306), !dbg !2110
  br label %if.end3372, !dbg !2110

if.end3372:                                       ; preds = %if.then3354, %if.then3366
  %fixup_alt_jump.52 = phi i8* [ %add.ptr3371, %if.then3366 ], [ null, %if.then3354 ]
  %tobool3373 = icmp eq i8* %laststart.52.ph, null, !dbg !2110
  br i1 %tobool3373, label %if.end3380, label %if.then3374, !dbg !2110

if.then3374:                                      ; preds = %if.end3372
  %sub.ptr.lhs.cast3375 = ptrtoint i8* %laststart.52.ph to i64, !dbg !2110
  %sub.ptr.sub3377 = sub i64 %sub.ptr.lhs.cast3375, %sub.ptr.rhs.cast3319, !dbg !2110
  %add.ptr3379 = getelementptr inbounds i8* %call3344, i64 %sub.ptr.sub3377, !dbg !2110
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3379}, i64 0, metadata !303), !dbg !2110
  br label %if.end3380, !dbg !2110

if.end3380:                                       ; preds = %if.end3372, %if.then3374
  %laststart.53 = phi i8* [ %add.ptr3379, %if.then3374 ], [ null, %if.end3372 ]
  %tobool3381 = icmp eq i8* %pending_exact.26.ph, null, !dbg !2110
  br i1 %tobool3381, label %while.cond3316.outer, label %if.then3382, !dbg !2110

if.then3382:                                      ; preds = %if.end3380
  %sub.ptr.lhs.cast3383 = ptrtoint i8* %pending_exact.26.ph to i64, !dbg !2110
  %sub.ptr.sub3385 = sub i64 %sub.ptr.lhs.cast3383, %sub.ptr.rhs.cast3319, !dbg !2110
  %add.ptr3387 = getelementptr inbounds i8* %call3344, i64 %sub.ptr.sub3385, !dbg !2110
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3387}, i64 0, metadata !302), !dbg !2110
  br label %while.cond3316.outer, !dbg !2110

while.end3391:                                    ; preds = %while.cond3316
  %incdec.ptr3392 = getelementptr inbounds i8* %b.28.ph, i64 1, !dbg !2108
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3392}, i64 0, metadata !279), !dbg !2108
  store i8 8, i8* %b.28.ph, align 1, !dbg !2108, !tbaa !714
  %incdec.ptr3393 = getelementptr inbounds i8* %b.28.ph, i64 2, !dbg !2108
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3393}, i64 0, metadata !279), !dbg !2108
  store i8 %sub3302, i8* %incdec.ptr3392, align 1, !dbg !2108, !tbaa !714
  br label %while.cond.backedge, !dbg !2112

sw.bb3395:                                        ; preds = %if.end1607, %if.end1607
  br i1 %tobool3433, label %normal_backslash, label %sw.bb216, !dbg !2113

normal_backslash:                                 ; preds = %do.end2610, %lor.lhs.false2209, %sw.bb1611, %if.then1779, %sw.bb1771, %sw.bb2020, %sw.bb3395, %if.end1607, %sw.bb2200
  %c.16 = phi i8 [ %134, %if.end1607 ], [ %134, %sw.bb3395 ], [ %134, %sw.bb2200 ], [ %134, %sw.bb2020 ], [ %134, %sw.bb1771 ], [ %134, %if.then1779 ], [ %134, %sw.bb1611 ], [ %134, %lor.lhs.false2209 ], [ %c.15, %do.end2610 ]
  br i1 %tobool30, label %cond.true3401, label %normal_char, !dbg !2114

cond.true3401:                                    ; preds = %normal_backslash
  %idxprom3402 = zext i8 %c.16 to i64, !dbg !2114
  %arrayidx3403 = getelementptr inbounds i8* %0, i64 %idxprom3402, !dbg !2114
  %203 = load i8* %arrayidx3403, align 1, !dbg !2114, !tbaa !714
  br label %normal_char, !dbg !2114

normal_char:                                      ; preds = %for.body.i, %land.rhs12.i, %cond.false24.i, %land.end.i, %at_begline_loc_p.exit, %at_endline_loc_p.exit, %sw.bb1589, %cond.true3401, %normal_backslash, %sw.bb208, %sw.bb1569, %sw.bb1574, %sw.bb1579, %sw.bb1584, %if.then1877, %handle_alt, %do.end2610, %sw.bb2624, %sw.bb2708, %sw.bb2792, %sw.bb2876, %sw.bb2960, %sw.bb3044, %sw.bb3128, %sw.bb3212, %sw.bb3296, %if.else223, %do.end
  %fixup_alt_jump.53 = phi i8* [ %fixup_alt_jump.06102, %do.end ], [ %fixup_alt_jump.06102, %if.else223 ], [ %fixup_alt_jump.06102, %sw.bb3296 ], [ %fixup_alt_jump.06102, %sw.bb3212 ], [ %fixup_alt_jump.06102, %sw.bb3128 ], [ %fixup_alt_jump.06102, %sw.bb3044 ], [ %fixup_alt_jump.06102, %sw.bb2960 ], [ %fixup_alt_jump.06102, %sw.bb2876 ], [ %fixup_alt_jump.06102, %sw.bb2792 ], [ %fixup_alt_jump.06102, %sw.bb2708 ], [ %fixup_alt_jump.06102, %sw.bb2624 ], [ %fixup_alt_jump.06102, %do.end2610 ], [ %fixup_alt_jump.06102, %handle_alt ], [ %fixup_alt_jump.23, %if.then1877 ], [ %fixup_alt_jump.06102, %sw.bb1589 ], [ %fixup_alt_jump.06102, %sw.bb1584 ], [ %fixup_alt_jump.06102, %sw.bb1579 ], [ %fixup_alt_jump.06102, %sw.bb1574 ], [ %fixup_alt_jump.06102, %sw.bb1569 ], [ %fixup_alt_jump.06102, %sw.bb208 ], [ %fixup_alt_jump.06102, %at_endline_loc_p.exit ], [ %fixup_alt_jump.06102, %at_begline_loc_p.exit ], [ %fixup_alt_jump.06102, %normal_backslash ], [ %fixup_alt_jump.06102, %cond.true3401 ], [ %fixup_alt_jump.06102, %land.end.i ], [ %fixup_alt_jump.06102, %cond.false24.i ], [ %fixup_alt_jump.06102, %land.rhs12.i ], [ %fixup_alt_jump.06102, %for.body.i ]
  %begalt.28 = phi i8* [ %begalt.06105, %do.end ], [ %begalt.06105, %if.else223 ], [ %begalt.06105, %sw.bb3296 ], [ %begalt.06105, %sw.bb3212 ], [ %begalt.06105, %sw.bb3128 ], [ %begalt.06105, %sw.bb3044 ], [ %begalt.06105, %sw.bb2960 ], [ %begalt.06105, %sw.bb2876 ], [ %begalt.06105, %sw.bb2792 ], [ %begalt.06105, %sw.bb2708 ], [ %begalt.06105, %sw.bb2624 ], [ %begalt.06105, %do.end2610 ], [ %begalt.06105, %handle_alt ], [ %begalt.12, %if.then1877 ], [ %begalt.06105, %sw.bb1589 ], [ %begalt.06105, %sw.bb1584 ], [ %begalt.06105, %sw.bb1579 ], [ %begalt.06105, %sw.bb1574 ], [ %begalt.06105, %sw.bb1569 ], [ %begalt.06105, %sw.bb208 ], [ %begalt.06105, %at_endline_loc_p.exit ], [ %begalt.06105, %at_begline_loc_p.exit ], [ %begalt.06105, %normal_backslash ], [ %begalt.06105, %cond.true3401 ], [ %begalt.06105, %land.end.i ], [ %begalt.06105, %cond.false24.i ], [ %begalt.06105, %land.rhs12.i ], [ %begalt.06105, %for.body.i ]
  %laststart.54 = phi i8* [ %laststart.06108, %do.end ], [ null, %if.else223 ], [ %laststart.06108, %sw.bb3296 ], [ %laststart.06108, %sw.bb3212 ], [ %laststart.06108, %sw.bb3128 ], [ %laststart.06108, %sw.bb3044 ], [ %laststart.06108, %sw.bb2960 ], [ %laststart.06108, %sw.bb2876 ], [ %laststart.06108, %sw.bb2792 ], [ %laststart.06108, %sw.bb2708 ], [ %laststart.06108, %sw.bb2624 ], [ %laststart.06108, %do.end2610 ], [ %laststart.06108, %handle_alt ], [ %laststart.23, %if.then1877 ], [ %laststart.06108, %sw.bb1589 ], [ %laststart.06108, %sw.bb1584 ], [ %laststart.06108, %sw.bb1579 ], [ %laststart.06108, %sw.bb1574 ], [ %laststart.06108, %sw.bb1569 ], [ %laststart.06108, %sw.bb208 ], [ %laststart.06108, %at_endline_loc_p.exit ], [ %laststart.06108, %at_begline_loc_p.exit ], [ %laststart.06108, %normal_backslash ], [ %laststart.06108, %cond.true3401 ], [ %laststart.06108, %land.end.i ], [ %laststart.06108, %cond.false24.i ], [ %laststart.06108, %land.rhs12.i ], [ %laststart.06108, %for.body.i ]
  %pending_exact.27 = phi i8* [ %pending_exact.06110, %do.end ], [ %pending_exact.06110, %if.else223 ], [ %pending_exact.06110, %sw.bb3296 ], [ %pending_exact.06110, %sw.bb3212 ], [ %pending_exact.06110, %sw.bb3128 ], [ %pending_exact.06110, %sw.bb3044 ], [ %pending_exact.06110, %sw.bb2960 ], [ %pending_exact.06110, %sw.bb2876 ], [ %pending_exact.06110, %sw.bb2792 ], [ %pending_exact.06110, %sw.bb2708 ], [ %pending_exact.06110, %sw.bb2624 ], [ %pending_exact.06110, %do.end2610 ], [ %pending_exact.06110, %handle_alt ], [ %pending_exact.12, %if.then1877 ], [ %pending_exact.06110, %sw.bb1589 ], [ %pending_exact.06110, %sw.bb1584 ], [ %pending_exact.06110, %sw.bb1579 ], [ %pending_exact.06110, %sw.bb1574 ], [ %pending_exact.06110, %sw.bb1569 ], [ %pending_exact.06110, %sw.bb208 ], [ %pending_exact.06110, %at_endline_loc_p.exit ], [ %pending_exact.06110, %at_begline_loc_p.exit ], [ %pending_exact.06110, %normal_backslash ], [ %pending_exact.06110, %cond.true3401 ], [ %pending_exact.06110, %land.end.i ], [ %pending_exact.06110, %cond.false24.i ], [ %pending_exact.06110, %land.rhs12.i ], [ %pending_exact.06110, %for.body.i ]
  %b.29 = phi i8* [ %b.06123, %do.end ], [ %b.06123, %if.else223 ], [ %b.06123, %sw.bb3296 ], [ %b.06123, %sw.bb3212 ], [ %b.06123, %sw.bb3128 ], [ %b.06123, %sw.bb3044 ], [ %b.06123, %sw.bb2960 ], [ %b.06123, %sw.bb2876 ], [ %b.06123, %sw.bb2792 ], [ %b.06123, %sw.bb2708 ], [ %b.06123, %sw.bb2624 ], [ %b.06123, %do.end2610 ], [ %b.06123, %handle_alt ], [ %b.13, %if.then1877 ], [ %b.06123, %sw.bb1589 ], [ %b.06123, %sw.bb1584 ], [ %b.06123, %sw.bb1579 ], [ %b.06123, %sw.bb1574 ], [ %b.06123, %sw.bb1569 ], [ %b.06123, %sw.bb208 ], [ %b.06123, %at_endline_loc_p.exit ], [ %b.06123, %at_begline_loc_p.exit ], [ %b.06123, %normal_backslash ], [ %b.06123, %cond.true3401 ], [ %b.06123, %land.end.i ], [ %b.06123, %cond.false24.i ], [ %b.06123, %land.rhs12.i ], [ %b.06123, %for.body.i ]
  %c.17 = phi i8 [ %c.0, %do.end ], [ %c.1, %if.else223 ], [ %134, %sw.bb3296 ], [ %134, %sw.bb3212 ], [ %134, %sw.bb3128 ], [ %134, %sw.bb3044 ], [ %134, %sw.bb2960 ], [ %134, %sw.bb2876 ], [ %134, %sw.bb2792 ], [ %134, %sw.bb2708 ], [ %134, %sw.bb2624 ], [ %c.15, %do.end2610 ], [ %c.7, %handle_alt ], [ %c.6, %if.then1877 ], [ %c.0, %sw.bb1589 ], [ %c.0, %sw.bb1584 ], [ %c.0, %sw.bb1579 ], [ %c.0, %sw.bb1574 ], [ %c.0, %sw.bb1569 ], [ %c.0, %sw.bb208 ], [ %c.0, %at_endline_loc_p.exit ], [ %c.0, %at_begline_loc_p.exit ], [ %c.16, %normal_backslash ], [ %203, %cond.true3401 ], [ %c.0, %land.end.i ], [ %c.0, %cond.false24.i ], [ %c.0, %land.rhs12.i ], [ %134, %for.body.i ]
  %tobool3411 = icmp eq i8* %pending_exact.27, null, !dbg !1465
  br i1 %tobool3411, label %while.cond3478.preheader, label %lor.lhs.false3412, !dbg !1465

lor.lhs.false3412:                                ; preds = %normal_char
  %204 = load i8* %pending_exact.27, align 1, !dbg !1465, !tbaa !714
  %idx.ext3414 = zext i8 %204 to i64, !dbg !1465
  %add.ptr3415.sum = add i64 %idx.ext3414, 1, !dbg !1465
  %add.ptr3416 = getelementptr inbounds i8* %pending_exact.27, i64 %add.ptr3415.sum, !dbg !1465
  %cmp3417 = icmp ne i8* %add.ptr3416, %b.29, !dbg !1465
  %cmp3421 = icmp eq i8 %204, -1, !dbg !1465
  %or.cond5179 = or i1 %cmp3417, %cmp3421, !dbg !1465
  br i1 %or.cond5179, label %while.cond3478.preheader, label %lor.lhs.false3423, !dbg !1465

lor.lhs.false3423:                                ; preds = %lor.lhs.false3412
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1465
  %205 = load i8** %p, align 8, !dbg !1465, !tbaa !722
  %206 = load i8* %205, align 1, !dbg !1465, !tbaa !714
  switch i8 %206, label %lor.lhs.false3431 [
    i8 42, label %while.cond3478.preheader
    i8 94, label %while.cond3478.preheader
  ], !dbg !1465

lor.lhs.false3431:                                ; preds = %lor.lhs.false3423
  br i1 %tobool3433, label %cond.false3448, label %cond.true3434, !dbg !1465

cond.true3434:                                    ; preds = %lor.lhs.false3431
  %cmp3436 = icmp eq i8 %206, 92, !dbg !1465
  br i1 %cmp3436, label %land.lhs.true3438, label %lor.lhs.false3456, !dbg !1465

land.lhs.true3438:                                ; preds = %cond.true3434
  %arrayidx3439 = getelementptr inbounds i8* %205, i64 1, !dbg !1465
  %207 = load i8* %arrayidx3439, align 1, !dbg !1465, !tbaa !714
  switch i8 %207, label %lor.lhs.false3456 [
    i8 43, label %while.cond3478.preheader
    i8 63, label %while.cond3478.preheader
  ], !dbg !1465

cond.false3448:                                   ; preds = %lor.lhs.false3431
  switch i8 %206, label %lor.lhs.false3456 [
    i8 43, label %while.cond3478.preheader
    i8 63, label %while.cond3478.preheader
  ], !dbg !1465

lor.lhs.false3456:                                ; preds = %cond.false3448, %land.lhs.true3438, %cond.true3434
  br i1 %tobool3458, label %while.cond3560.preheader, label %land.lhs.true3459, !dbg !1465

land.lhs.true3459:                                ; preds = %lor.lhs.false3456
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !299), !dbg !1465
  br i1 %tobool3461, label %cond.false3466, label %cond.true3462, !dbg !1465

cond.true3462:                                    ; preds = %land.lhs.true3459
  %cmp3464 = icmp eq i8 %206, 123, !dbg !1465
  br i1 %cmp3464, label %while.cond3478.preheader, label %while.cond3560.preheader, !dbg !1465

cond.false3466:                                   ; preds = %land.lhs.true3459
  %cmp3469 = icmp eq i8 %206, 92, !dbg !1465
  br i1 %cmp3469, label %land.lhs.true3471, label %while.cond3560.preheader, !dbg !1465

land.lhs.true3471:                                ; preds = %cond.false3466
  %arrayidx3472 = getelementptr inbounds i8* %205, i64 1, !dbg !1465
  %208 = load i8* %arrayidx3472, align 1, !dbg !1465, !tbaa !714
  %cmp3474 = icmp eq i8 %208, 123, !dbg !1465
  br i1 %cmp3474, label %while.cond3478.preheader, label %while.cond3560.preheader, !dbg !1465

while.cond3478.preheader:                         ; preds = %land.lhs.true3471, %cond.true3462, %cond.false3448, %cond.false3448, %land.lhs.true3438, %land.lhs.true3438, %lor.lhs.false3423, %lor.lhs.false3423, %lor.lhs.false3412, %normal_char
  %pending_exact.28.ph = phi i8* [ null, %normal_char ], [ %pending_exact.27, %lor.lhs.false3412 ], [ %pending_exact.27, %lor.lhs.false3423 ], [ %pending_exact.27, %lor.lhs.false3423 ], [ %pending_exact.27, %land.lhs.true3438 ], [ %pending_exact.27, %land.lhs.true3438 ], [ %pending_exact.27, %cond.false3448 ], [ %pending_exact.27, %cond.false3448 ], [ %pending_exact.27, %cond.true3462 ], [ %pending_exact.27, %land.lhs.true3471 ]
  %.pre6468.pre = load i8** %buffer25, align 8, !dbg !2115, !tbaa !722
  br label %while.cond3478.outer, !dbg !2115

while.cond3478.outer:                             ; preds = %if.end3542, %if.then3544, %while.cond3478.preheader
  %.pre6468 = phi i8* [ %.pre6468.pre, %while.cond3478.preheader ], [ %call3506, %if.then3544 ], [ %call3506, %if.end3542 ]
  %fixup_alt_jump.54.ph = phi i8* [ %fixup_alt_jump.53, %while.cond3478.preheader ], [ %fixup_alt_jump.55, %if.then3544 ], [ %fixup_alt_jump.55, %if.end3542 ]
  %begalt.29.ph = phi i8* [ %begalt.28, %while.cond3478.preheader ], [ %add.ptr3526, %if.then3544 ], [ %add.ptr3526, %if.end3542 ]
  %laststart.55.ph = phi i8* [ %b.29, %while.cond3478.preheader ], [ %laststart.56, %if.then3544 ], [ %laststart.56, %if.end3542 ]
  %pending_exact.28.ph5566 = phi i8* [ %pending_exact.28.ph, %while.cond3478.preheader ], [ %add.ptr3549, %if.then3544 ], [ null, %if.end3542 ]
  %b.30.ph = phi i8* [ %b.29, %while.cond3478.preheader ], [ %add.ptr3521, %if.then3544 ], [ %add.ptr3521, %if.end3542 ]
  %sub.ptr.lhs.cast3480 = ptrtoint i8* %b.30.ph to i64, !dbg !2115
  br label %while.cond3478

while.cond3478:                                   ; preds = %if.end3512, %while.cond3478.outer
  %sub.ptr.rhs.cast3481 = ptrtoint i8* %.pre6468 to i64, !dbg !2115
  %sub.ptr.sub3482 = sub i64 %sub.ptr.lhs.cast3480, %sub.ptr.rhs.cast3481, !dbg !2115
  %add3483 = add nsw i64 %sub.ptr.sub3482, 2, !dbg !2115
  %209 = load i64* %allocated, align 8, !dbg !2115, !tbaa !713
  %cmp3485 = icmp ugt i64 %add3483, %209, !dbg !2115
  br i1 %cmp3485, label %do.body3488, label %while.end3553, !dbg !2115

do.body3488:                                      ; preds = %while.cond3478
  call void @llvm.dbg.value(metadata !{i8* %.pre6468}, i64 0, metadata !425), !dbg !2116
  %cmp3492 = icmp eq i64 %209, 65536, !dbg !2116
  br i1 %cmp3492, label %return, label %if.end3495, !dbg !2116

if.end3495:                                       ; preds = %do.body3488
  %shl3497 = shl i64 %209, 1, !dbg !2116
  %cmp3499 = icmp ugt i64 %shl3497, 65536, !dbg !2116
  %.shl3497 = select i1 %cmp3499, i64 65536, i64 %shl3497, !dbg !2116
  store i64 %.shl3497, i64* %allocated, align 8, !dbg !2116, !tbaa !713
  %call3506 = call i8* @realloc(i8* %.pre6468, i64 %.shl3497) #7, !dbg !2116
  store i8* %call3506, i8** %buffer25, align 8, !dbg !2116, !tbaa !722
  %cmp3509 = icmp eq i8* %call3506, null, !dbg !2116
  br i1 %cmp3509, label %return, label %if.end3512, !dbg !2116

if.end3512:                                       ; preds = %if.end3495
  %cmp3514 = icmp eq i8* %.pre6468, %call3506, !dbg !2116
  br i1 %cmp3514, label %while.cond3478, label %if.then3516, !dbg !2116

if.then3516:                                      ; preds = %if.end3512
  %add.ptr3521 = getelementptr inbounds i8* %call3506, i64 %sub.ptr.sub3482, !dbg !2117
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3521}, i64 0, metadata !279), !dbg !2117
  %sub.ptr.lhs.cast3522 = ptrtoint i8* %begalt.29.ph to i64, !dbg !2117
  %sub.ptr.sub3524 = sub i64 %sub.ptr.lhs.cast3522, %sub.ptr.rhs.cast3481, !dbg !2117
  %add.ptr3526 = getelementptr inbounds i8* %call3506, i64 %sub.ptr.sub3524, !dbg !2117
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3526}, i64 0, metadata !304), !dbg !2117
  %tobool3527 = icmp eq i8* %fixup_alt_jump.54.ph, null, !dbg !2117
  br i1 %tobool3527, label %if.end3534, label %if.then3528, !dbg !2117

if.then3528:                                      ; preds = %if.then3516
  %sub.ptr.lhs.cast3529 = ptrtoint i8* %fixup_alt_jump.54.ph to i64, !dbg !2117
  %sub.ptr.sub3531 = sub i64 %sub.ptr.lhs.cast3529, %sub.ptr.rhs.cast3481, !dbg !2117
  %add.ptr3533 = getelementptr inbounds i8* %call3506, i64 %sub.ptr.sub3531, !dbg !2117
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3533}, i64 0, metadata !306), !dbg !2117
  br label %if.end3534, !dbg !2117

if.end3534:                                       ; preds = %if.then3516, %if.then3528
  %fixup_alt_jump.55 = phi i8* [ %add.ptr3533, %if.then3528 ], [ null, %if.then3516 ]
  %tobool3535 = icmp eq i8* %laststart.55.ph, null, !dbg !2117
  br i1 %tobool3535, label %if.end3542, label %if.then3536, !dbg !2117

if.then3536:                                      ; preds = %if.end3534
  %sub.ptr.lhs.cast3537 = ptrtoint i8* %laststart.55.ph to i64, !dbg !2117
  %sub.ptr.sub3539 = sub i64 %sub.ptr.lhs.cast3537, %sub.ptr.rhs.cast3481, !dbg !2117
  %add.ptr3541 = getelementptr inbounds i8* %call3506, i64 %sub.ptr.sub3539, !dbg !2117
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3541}, i64 0, metadata !303), !dbg !2117
  br label %if.end3542, !dbg !2117

if.end3542:                                       ; preds = %if.end3534, %if.then3536
  %laststart.56 = phi i8* [ %add.ptr3541, %if.then3536 ], [ null, %if.end3534 ]
  %tobool3543 = icmp eq i8* %pending_exact.28.ph5566, null, !dbg !2117
  br i1 %tobool3543, label %while.cond3478.outer, label %if.then3544, !dbg !2117

if.then3544:                                      ; preds = %if.end3542
  %sub.ptr.lhs.cast3545 = ptrtoint i8* %pending_exact.28.ph5566 to i64, !dbg !2117
  %sub.ptr.sub3547 = sub i64 %sub.ptr.lhs.cast3545, %sub.ptr.rhs.cast3481, !dbg !2117
  %add.ptr3549 = getelementptr inbounds i8* %call3506, i64 %sub.ptr.sub3547, !dbg !2117
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3549}, i64 0, metadata !302), !dbg !2117
  br label %while.cond3478.outer, !dbg !2117

while.end3553:                                    ; preds = %while.cond3478
  %incdec.ptr3554 = getelementptr inbounds i8* %b.30.ph, i64 1, !dbg !2115
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3554}, i64 0, metadata !279), !dbg !2115
  store i8 2, i8* %b.30.ph, align 1, !dbg !2115, !tbaa !714
  %incdec.ptr3555 = getelementptr inbounds i8* %b.30.ph, i64 2, !dbg !2115
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3555}, i64 0, metadata !279), !dbg !2115
  store i8 0, i8* %incdec.ptr3554, align 1, !dbg !2115, !tbaa !714
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3554}, i64 0, metadata !302), !dbg !2119
  br label %while.cond3560.preheader, !dbg !2120

while.cond3560.preheader:                         ; preds = %land.lhs.true3471, %cond.false3466, %cond.true3462, %lor.lhs.false3456, %while.end3553
  %fixup_alt_jump.56.ph = phi i8* [ %fixup_alt_jump.54.ph, %while.end3553 ], [ %fixup_alt_jump.53, %lor.lhs.false3456 ], [ %fixup_alt_jump.53, %cond.true3462 ], [ %fixup_alt_jump.53, %cond.false3466 ], [ %fixup_alt_jump.53, %land.lhs.true3471 ]
  %begalt.30.ph = phi i8* [ %begalt.29.ph, %while.end3553 ], [ %begalt.28, %lor.lhs.false3456 ], [ %begalt.28, %cond.true3462 ], [ %begalt.28, %cond.false3466 ], [ %begalt.28, %land.lhs.true3471 ]
  %laststart.57.ph = phi i8* [ %laststart.55.ph, %while.end3553 ], [ %laststart.54, %lor.lhs.false3456 ], [ %laststart.54, %cond.true3462 ], [ %laststart.54, %cond.false3466 ], [ %laststart.54, %land.lhs.true3471 ]
  %pending_exact.29.ph = phi i8* [ %incdec.ptr3554, %while.end3553 ], [ %pending_exact.27, %lor.lhs.false3456 ], [ %pending_exact.27, %cond.true3462 ], [ %pending_exact.27, %cond.false3466 ], [ %pending_exact.27, %land.lhs.true3471 ]
  %b.31.ph = phi i8* [ %incdec.ptr3555, %while.end3553 ], [ %b.29, %lor.lhs.false3456 ], [ %b.29, %cond.true3462 ], [ %b.29, %cond.false3466 ], [ %b.29, %land.lhs.true3471 ]
  %.pre6469.pre = load i8** %buffer25, align 8, !dbg !2121, !tbaa !722
  br label %while.cond3560.outer, !dbg !2121

while.cond3560.outer:                             ; preds = %if.end3624, %if.then3626, %while.cond3560.preheader
  %.pre6469 = phi i8* [ %.pre6469.pre, %while.cond3560.preheader ], [ %call3588, %if.then3626 ], [ %call3588, %if.end3624 ]
  %fixup_alt_jump.56.ph5573 = phi i8* [ %fixup_alt_jump.56.ph, %while.cond3560.preheader ], [ %fixup_alt_jump.57, %if.then3626 ], [ %fixup_alt_jump.57, %if.end3624 ]
  %begalt.30.ph5574 = phi i8* [ %begalt.30.ph, %while.cond3560.preheader ], [ %add.ptr3608, %if.then3626 ], [ %add.ptr3608, %if.end3624 ]
  %laststart.57.ph5575 = phi i8* [ %laststart.57.ph, %while.cond3560.preheader ], [ %laststart.58, %if.then3626 ], [ %laststart.58, %if.end3624 ]
  %pending_exact.29.ph5576 = phi i8* [ %pending_exact.29.ph, %while.cond3560.preheader ], [ %add.ptr3631, %if.then3626 ], [ null, %if.end3624 ]
  %b.31.ph5577 = phi i8* [ %b.31.ph, %while.cond3560.preheader ], [ %add.ptr3603, %if.then3626 ], [ %add.ptr3603, %if.end3624 ]
  %sub.ptr.lhs.cast3562 = ptrtoint i8* %b.31.ph5577 to i64, !dbg !2121
  br label %while.cond3560

while.cond3560:                                   ; preds = %if.end3594, %while.cond3560.outer
  %sub.ptr.rhs.cast3563 = ptrtoint i8* %.pre6469 to i64, !dbg !2121
  %sub.ptr.sub3564 = sub i64 %sub.ptr.lhs.cast3562, %sub.ptr.rhs.cast3563, !dbg !2121
  %add3565 = add nsw i64 %sub.ptr.sub3564, 1, !dbg !2121
  %210 = load i64* %allocated, align 8, !dbg !2121, !tbaa !713
  %cmp3567 = icmp ugt i64 %add3565, %210, !dbg !2121
  br i1 %cmp3567, label %do.body3570, label %while.end3635, !dbg !2121

do.body3570:                                      ; preds = %while.cond3560
  call void @llvm.dbg.value(metadata !{i8* %.pre6469}, i64 0, metadata !429), !dbg !2122
  %cmp3574 = icmp eq i64 %210, 65536, !dbg !2122
  br i1 %cmp3574, label %return, label %if.end3577, !dbg !2122

if.end3577:                                       ; preds = %do.body3570
  %shl3579 = shl i64 %210, 1, !dbg !2122
  %cmp3581 = icmp ugt i64 %shl3579, 65536, !dbg !2122
  %.shl3579 = select i1 %cmp3581, i64 65536, i64 %shl3579, !dbg !2122
  store i64 %.shl3579, i64* %allocated, align 8, !dbg !2122, !tbaa !713
  %call3588 = call i8* @realloc(i8* %.pre6469, i64 %.shl3579) #7, !dbg !2122
  store i8* %call3588, i8** %buffer25, align 8, !dbg !2122, !tbaa !722
  %cmp3591 = icmp eq i8* %call3588, null, !dbg !2122
  br i1 %cmp3591, label %return, label %if.end3594, !dbg !2122

if.end3594:                                       ; preds = %if.end3577
  %cmp3596 = icmp eq i8* %.pre6469, %call3588, !dbg !2122
  br i1 %cmp3596, label %while.cond3560, label %if.then3598, !dbg !2122

if.then3598:                                      ; preds = %if.end3594
  %add.ptr3603 = getelementptr inbounds i8* %call3588, i64 %sub.ptr.sub3564, !dbg !2123
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3603}, i64 0, metadata !279), !dbg !2123
  %sub.ptr.lhs.cast3604 = ptrtoint i8* %begalt.30.ph5574 to i64, !dbg !2123
  %sub.ptr.sub3606 = sub i64 %sub.ptr.lhs.cast3604, %sub.ptr.rhs.cast3563, !dbg !2123
  %add.ptr3608 = getelementptr inbounds i8* %call3588, i64 %sub.ptr.sub3606, !dbg !2123
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3608}, i64 0, metadata !304), !dbg !2123
  %tobool3609 = icmp eq i8* %fixup_alt_jump.56.ph5573, null, !dbg !2123
  br i1 %tobool3609, label %if.end3616, label %if.then3610, !dbg !2123

if.then3610:                                      ; preds = %if.then3598
  %sub.ptr.lhs.cast3611 = ptrtoint i8* %fixup_alt_jump.56.ph5573 to i64, !dbg !2123
  %sub.ptr.sub3613 = sub i64 %sub.ptr.lhs.cast3611, %sub.ptr.rhs.cast3563, !dbg !2123
  %add.ptr3615 = getelementptr inbounds i8* %call3588, i64 %sub.ptr.sub3613, !dbg !2123
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3615}, i64 0, metadata !306), !dbg !2123
  br label %if.end3616, !dbg !2123

if.end3616:                                       ; preds = %if.then3598, %if.then3610
  %fixup_alt_jump.57 = phi i8* [ %add.ptr3615, %if.then3610 ], [ null, %if.then3598 ]
  %tobool3617 = icmp eq i8* %laststart.57.ph5575, null, !dbg !2123
  br i1 %tobool3617, label %if.end3624, label %if.then3618, !dbg !2123

if.then3618:                                      ; preds = %if.end3616
  %sub.ptr.lhs.cast3619 = ptrtoint i8* %laststart.57.ph5575 to i64, !dbg !2123
  %sub.ptr.sub3621 = sub i64 %sub.ptr.lhs.cast3619, %sub.ptr.rhs.cast3563, !dbg !2123
  %add.ptr3623 = getelementptr inbounds i8* %call3588, i64 %sub.ptr.sub3621, !dbg !2123
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3623}, i64 0, metadata !303), !dbg !2123
  br label %if.end3624, !dbg !2123

if.end3624:                                       ; preds = %if.end3616, %if.then3618
  %laststart.58 = phi i8* [ %add.ptr3623, %if.then3618 ], [ null, %if.end3616 ]
  %tobool3625 = icmp eq i8* %pending_exact.29.ph5576, null, !dbg !2123
  br i1 %tobool3625, label %while.cond3560.outer, label %if.then3626, !dbg !2123

if.then3626:                                      ; preds = %if.end3624
  %sub.ptr.lhs.cast3627 = ptrtoint i8* %pending_exact.29.ph5576 to i64, !dbg !2123
  %sub.ptr.sub3629 = sub i64 %sub.ptr.lhs.cast3627, %sub.ptr.rhs.cast3563, !dbg !2123
  %add.ptr3631 = getelementptr inbounds i8* %call3588, i64 %sub.ptr.sub3629, !dbg !2123
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3631}, i64 0, metadata !302), !dbg !2123
  br label %while.cond3560.outer, !dbg !2123

while.end3635:                                    ; preds = %while.cond3560
  %incdec.ptr3636 = getelementptr inbounds i8* %b.31.ph5577, i64 1, !dbg !2121
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3636}, i64 0, metadata !279), !dbg !2121
  store i8 %c.17, i8* %b.31.ph5577, align 1, !dbg !2121, !tbaa !714
  %211 = load i8* %pending_exact.29.ph5576, align 1, !dbg !2125, !tbaa !714
  %inc3638 = add i8 %211, 1, !dbg !2125
  store i8 %inc3638, i8* %pending_exact.29.ph5576, align 1, !dbg !2125, !tbaa !714
  br label %while.cond.backedge, !dbg !2126

while.end3640:                                    ; preds = %while.cond.backedge
  %tobool3641 = icmp eq i8* %fixup_alt_jump.0.be, null, !dbg !2127
  br i1 %tobool3641, label %if.end3648, label %if.then3642, !dbg !2127

if.then3642:                                      ; preds = %while.end3640
  %sub.ptr.lhs.cast3643 = ptrtoint i8* %b.0.be to i64, !dbg !2128
  %sub.ptr.rhs.cast3644 = ptrtoint i8* %fixup_alt_jump.0.be to i64, !dbg !2128
  %sub.ptr.sub3645 = sub i64 %sub.ptr.lhs.cast3643, %sub.ptr.rhs.cast3644, !dbg !2128
  %sub3646 = add nsw i64 %sub.ptr.sub3645, 4294967293, !dbg !2128
  %conv3647 = trunc i64 %sub3646 to i32, !dbg !2128
  tail call void @llvm.dbg.value(metadata !1786, i64 0, metadata !2129), !dbg !2130
  tail call void @llvm.dbg.value(metadata !{i8* %fixup_alt_jump.0.lcssa65296531}, i64 0, metadata !2131), !dbg !2132
  tail call void @llvm.dbg.value(metadata !{i32 %conv3647}, i64 0, metadata !2133), !dbg !2134
  store i8 14, i8* %fixup_alt_jump.0.be, align 1, !dbg !2135, !tbaa !714
  %conv1.i = trunc i64 %sub3646 to i8, !dbg !2136
  %add.ptr.i = getelementptr inbounds i8* %fixup_alt_jump.0.be, i64 1, !dbg !2136
  store i8 %conv1.i, i8* %add.ptr.i, align 1, !dbg !2136, !tbaa !714
  %shr8.i = lshr i32 %conv3647, 8, !dbg !2136
  %conv2.i = trunc i32 %shr8.i to i8, !dbg !2136
  %arrayidx4.i = getelementptr inbounds i8* %fixup_alt_jump.0.be, i64 2, !dbg !2136
  store i8 %conv2.i, i8* %arrayidx4.i, align 1, !dbg !2136, !tbaa !714
  br label %if.end3648, !dbg !2128

if.end3648:                                       ; preds = %while.end3640, %if.then3642
  %fixup_alt_jump.0.lcssa6529 = phi i8* [ null, %while.end3640 ], [ %fixup_alt_jump.0.be, %if.then3642 ]
  %cmp3650 = icmp ult i64 %compile_stack.sroa.1.0.be, 4294967296, !dbg !2137
  br i1 %cmp3650, label %if.end3654, label %if.then3652, !dbg !2137

if.then3652:                                      ; preds = %if.end3648
  %212 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.0.be to i8*, !dbg !2138
  call void @free(i8* %212) #7, !dbg !2138
  br label %return, !dbg !2138

if.end3654:                                       ; preds = %if.end24, %if.end3648
  %b.0.lcssa65246535 = phi i8* [ %b.0.be, %if.end3648 ], [ %4, %if.end24 ]
  %compile_stack.sroa.0.0.lcssa65266534 = phi %struct.compile_stack_elt_t* [ %compile_stack.sroa.0.0.be, %if.end3648 ], [ %1, %if.end24 ]
  %pending_exact.0.lcssa65276533 = phi i8* [ %pending_exact.0.be, %if.end3648 ], [ null, %if.end24 ]
  %laststart.0.lcssa65286532 = phi i8* [ %laststart.0.be, %if.end3648 ], [ null, %if.end24 ]
  %fixup_alt_jump.0.lcssa65296531 = phi i8* [ %fixup_alt_jump.0.lcssa6529, %if.end3648 ], [ null, %if.end24 ]
  %and3655 = and i64 %syntax, 262144, !dbg !2139
  %tobool3656 = icmp eq i64 %and3655, 0, !dbg !2139
  br i1 %tobool3656, label %if.end3737, label %while.cond3659.preheader, !dbg !2139

while.cond3659.preheader:                         ; preds = %if.end3654
  %.pre6467.pre = load i8** %buffer25, align 8, !dbg !2140, !tbaa !722
  br label %while.cond3659.outer, !dbg !2140

while.cond3659.outer:                             ; preds = %if.end3723, %if.then3725, %while.cond3659.preheader
  %.pre6467 = phi i8* [ %.pre6467.pre, %while.cond3659.preheader ], [ %call3687, %if.then3725 ], [ %call3687, %if.end3723 ]
  %fixup_alt_jump.58.ph = phi i8* [ %fixup_alt_jump.0.lcssa65296531, %while.cond3659.preheader ], [ %fixup_alt_jump.59, %if.then3725 ], [ %fixup_alt_jump.59, %if.end3723 ]
  %laststart.59.ph = phi i8* [ %laststart.0.lcssa65286532, %while.cond3659.preheader ], [ %laststart.60, %if.then3725 ], [ %laststart.60, %if.end3723 ]
  %pending_exact.30.ph = phi i8* [ %pending_exact.0.lcssa65276533, %while.cond3659.preheader ], [ %add.ptr3730, %if.then3725 ], [ null, %if.end3723 ]
  %b.32.ph = phi i8* [ %b.0.lcssa65246535, %while.cond3659.preheader ], [ %add.ptr3702, %if.then3725 ], [ %add.ptr3702, %if.end3723 ]
  %sub.ptr.lhs.cast3661 = ptrtoint i8* %b.32.ph to i64, !dbg !2140
  br label %while.cond3659

while.cond3659:                                   ; preds = %if.end3693, %while.cond3659.outer
  %sub.ptr.rhs.cast3662 = ptrtoint i8* %.pre6467 to i64, !dbg !2140
  %sub.ptr.sub3663 = sub i64 %sub.ptr.lhs.cast3661, %sub.ptr.rhs.cast3662, !dbg !2140
  %add3664 = add nsw i64 %sub.ptr.sub3663, 1, !dbg !2140
  %213 = load i64* %allocated, align 8, !dbg !2140, !tbaa !713
  %cmp3666 = icmp ugt i64 %add3664, %213, !dbg !2140
  br i1 %cmp3666, label %do.body3669, label %while.end3734, !dbg !2140

do.body3669:                                      ; preds = %while.cond3659
  call void @llvm.dbg.value(metadata !{i8* %.pre6467}, i64 0, metadata !432), !dbg !2141
  %cmp3673 = icmp eq i64 %213, 65536, !dbg !2141
  br i1 %cmp3673, label %return, label %if.end3676, !dbg !2141

if.end3676:                                       ; preds = %do.body3669
  %shl3678 = shl i64 %213, 1, !dbg !2141
  %cmp3680 = icmp ugt i64 %shl3678, 65536, !dbg !2141
  %.shl3678 = select i1 %cmp3680, i64 65536, i64 %shl3678, !dbg !2141
  store i64 %.shl3678, i64* %allocated, align 8, !dbg !2141, !tbaa !713
  %call3687 = call i8* @realloc(i8* %.pre6467, i64 %.shl3678) #7, !dbg !2141
  store i8* %call3687, i8** %buffer25, align 8, !dbg !2141, !tbaa !722
  %cmp3690 = icmp eq i8* %call3687, null, !dbg !2141
  br i1 %cmp3690, label %return, label %if.end3693, !dbg !2141

if.end3693:                                       ; preds = %if.end3676
  %cmp3695 = icmp eq i8* %.pre6467, %call3687, !dbg !2141
  br i1 %cmp3695, label %while.cond3659, label %if.then3697, !dbg !2141

if.then3697:                                      ; preds = %if.end3693
  %add.ptr3702 = getelementptr inbounds i8* %call3687, i64 %sub.ptr.sub3663, !dbg !2142
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3702}, i64 0, metadata !279), !dbg !2142
  %tobool3708 = icmp eq i8* %fixup_alt_jump.58.ph, null, !dbg !2142
  br i1 %tobool3708, label %if.end3715, label %if.then3709, !dbg !2142

if.then3709:                                      ; preds = %if.then3697
  %sub.ptr.lhs.cast3710 = ptrtoint i8* %fixup_alt_jump.58.ph to i64, !dbg !2142
  %sub.ptr.sub3712 = sub i64 %sub.ptr.lhs.cast3710, %sub.ptr.rhs.cast3662, !dbg !2142
  %add.ptr3714 = getelementptr inbounds i8* %call3687, i64 %sub.ptr.sub3712, !dbg !2142
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3714}, i64 0, metadata !306), !dbg !2142
  br label %if.end3715, !dbg !2142

if.end3715:                                       ; preds = %if.then3697, %if.then3709
  %fixup_alt_jump.59 = phi i8* [ %add.ptr3714, %if.then3709 ], [ null, %if.then3697 ]
  %tobool3716 = icmp eq i8* %laststart.59.ph, null, !dbg !2142
  br i1 %tobool3716, label %if.end3723, label %if.then3717, !dbg !2142

if.then3717:                                      ; preds = %if.end3715
  %sub.ptr.lhs.cast3718 = ptrtoint i8* %laststart.59.ph to i64, !dbg !2142
  %sub.ptr.sub3720 = sub i64 %sub.ptr.lhs.cast3718, %sub.ptr.rhs.cast3662, !dbg !2142
  %add.ptr3722 = getelementptr inbounds i8* %call3687, i64 %sub.ptr.sub3720, !dbg !2142
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3722}, i64 0, metadata !303), !dbg !2142
  br label %if.end3723, !dbg !2142

if.end3723:                                       ; preds = %if.end3715, %if.then3717
  %laststart.60 = phi i8* [ %add.ptr3722, %if.then3717 ], [ null, %if.end3715 ]
  %tobool3724 = icmp eq i8* %pending_exact.30.ph, null, !dbg !2142
  br i1 %tobool3724, label %while.cond3659.outer, label %if.then3725, !dbg !2142

if.then3725:                                      ; preds = %if.end3723
  %sub.ptr.lhs.cast3726 = ptrtoint i8* %pending_exact.30.ph to i64, !dbg !2142
  %sub.ptr.sub3728 = sub i64 %sub.ptr.lhs.cast3726, %sub.ptr.rhs.cast3662, !dbg !2142
  %add.ptr3730 = getelementptr inbounds i8* %call3687, i64 %sub.ptr.sub3728, !dbg !2142
  call void @llvm.dbg.value(metadata !{i8* %add.ptr3730}, i64 0, metadata !302), !dbg !2142
  br label %while.cond3659.outer, !dbg !2142

while.end3734:                                    ; preds = %while.cond3659
  %incdec.ptr3735 = getelementptr inbounds i8* %b.32.ph, i64 1, !dbg !2140
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3735}, i64 0, metadata !279), !dbg !2140
  store i8 1, i8* %b.32.ph, align 1, !dbg !2140, !tbaa !714
  br label %if.end3737, !dbg !2140

if.end3737:                                       ; preds = %if.end3654, %while.end3734
  %b.33 = phi i8* [ %incdec.ptr3735, %while.end3734 ], [ %b.0.lcssa65246535, %if.end3654 ]
  %214 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.0.lcssa65266534 to i8*, !dbg !2144
  call void @free(i8* %214) #7, !dbg !2144
  %215 = load i8** %buffer25, align 8, !dbg !2145, !tbaa !722
  %sub.ptr.lhs.cast3740 = ptrtoint i8* %b.33 to i64, !dbg !2145
  %sub.ptr.rhs.cast3741 = ptrtoint i8* %215 to i64, !dbg !2145
  %sub.ptr.sub3742 = sub i64 %sub.ptr.lhs.cast3740, %sub.ptr.rhs.cast3741, !dbg !2145
  store i64 %sub.ptr.sub3742, i64* %used, align 8, !dbg !2145, !tbaa !713
  br label %return, !dbg !2146

return:                                           ; preds = %unfetch_interval, %do.body2362, %if.then1623, %if.end3577, %do.body3570, %if.end3495, %do.body3488, %if.end55, %do.body49, %if.end145, %do.body138, %if.end556, %do.body549, %if.end468, %do.body461, %if.end333, %do.body326, %if.end642, %do.body635, %do.body1089, %do.body1302, %do.body1119, %if.else1167, %if.then1164, %if.end893, %do.body886, %if.end803, %do.body796, %if.end726, %do.body719, %if.end1704, %do.body1697, %if.end1953, %do.body1946, %if.end1806, %do.body1799, %if.end2140, %do.body2133, %if.end2049, %do.body2042, %if.end2419, %do.body2412, %if.end2508, %do.body2501, %if.end2647, %do.body2640, %if.end2731, %do.body2724, %if.end2815, %do.body2808, %if.end2899, %do.body2892, %if.end2983, %do.body2976, %if.end3067, %do.body3060, %if.end3151, %do.body3144, %if.end3235, %do.body3228, %if.end3333, %do.body3326, %if.end3676, %do.body3669, %entry, %if.end3737, %if.then3652, %if.then3307, %if.then2389, %if.else2382, %if.then2359, %if.else2350, %if.else2225, %if.else1881, %if.else1783, %if.then1600, %if.then1316, %if.then1299, %if.then1133, %if.then1104, %if.then1074, %if.then1037, %if.then994, %if.then970, %if.then706, %if.then281, %if.then221, %if.then20
  %retval.0 = phi i32 [ 5, %if.then1600 ], [ 5, %if.then281 ], [ 13, %if.then221 ], [ 6, %if.then3307 ], [ 9, %if.else2225 ], [ 10, %if.else2350 ], [ 10, %if.else2382 ], [ 13, %if.then2389 ], [ 9, %if.then2359 ], [ 16, %if.else1783 ], [ 16, %if.else1881 ], [ 7, %if.then706 ], [ 7, %if.then970 ], [ 5, %if.then994 ], [ 11, %if.then1037 ], [ %call1101, %if.then1104 ], [ 7, %if.then1133 ], [ 7, %if.then1316 ], [ 4, %if.then1299 ], [ %call1071, %if.then1074 ], [ 0, %if.end3737 ], [ 8, %if.then3652 ], [ 12, %if.then20 ], [ 12, %entry ], [ 12, %if.end3676 ], [ 15, %do.body3669 ], [ 12, %if.end3333 ], [ 15, %do.body3326 ], [ 12, %if.end3235 ], [ 15, %do.body3228 ], [ 12, %if.end3151 ], [ 15, %do.body3144 ], [ 12, %if.end3067 ], [ 15, %do.body3060 ], [ 12, %if.end2983 ], [ 15, %do.body2976 ], [ 12, %if.end2899 ], [ 15, %do.body2892 ], [ 12, %if.end2815 ], [ 15, %do.body2808 ], [ 12, %if.end2731 ], [ 15, %do.body2724 ], [ 12, %if.end2647 ], [ 15, %do.body2640 ], [ 12, %if.end2508 ], [ 15, %do.body2501 ], [ 12, %if.end2419 ], [ 15, %do.body2412 ], [ 12, %if.end2049 ], [ 15, %do.body2042 ], [ 12, %if.end2140 ], [ 15, %do.body2133 ], [ 12, %if.end1806 ], [ 15, %do.body1799 ], [ 12, %if.end1953 ], [ 15, %do.body1946 ], [ 12, %if.end1704 ], [ 15, %do.body1697 ], [ 12, %if.end726 ], [ 15, %do.body719 ], [ 12, %if.end803 ], [ 15, %do.body796 ], [ 12, %if.end893 ], [ 15, %do.body886 ], [ 14, %if.then1164 ], [ 14, %if.else1167 ], [ 14, %do.body1119 ], [ 14, %do.body1302 ], [ 14, %do.body1089 ], [ 12, %if.end642 ], [ 15, %do.body635 ], [ 12, %if.end333 ], [ 15, %do.body326 ], [ 12, %if.end468 ], [ 15, %do.body461 ], [ 12, %if.end556 ], [ 15, %do.body549 ], [ 12, %if.end145 ], [ 15, %do.body138 ], [ 12, %if.end55 ], [ 15, %do.body49 ], [ 12, %if.end3495 ], [ 15, %do.body3488 ], [ 12, %if.end3577 ], [ 15, %do.body3570 ], [ 14, %unfetch_interval ], [ 14, %do.body2362 ], [ 12, %if.then1623 ]
  ret i32 %retval.0, !dbg !2147
}

; Function Attrs: nounwind optsize uwtable
define i32 @regcomp(%struct.re_pattern_buffer* nocapture %preg, i8* %pattern, i32 %cflags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %preg}, i64 0, metadata !231), !dbg !2148
  tail call void @llvm.dbg.value(metadata !{i8* %pattern}, i64 0, metadata !232), !dbg !2149
  tail call void @llvm.dbg.value(metadata !{i32 %cflags}, i64 0, metadata !233), !dbg !2150
  %and = and i32 %cflags, 1, !dbg !2151
  %tobool = icmp ne i32 %and, 0, !dbg !2151
  %cond = select i1 %tobool, i64 242396, i64 66246, !dbg !2151
  tail call void @llvm.dbg.value(metadata !{i64 %cond}, i64 0, metadata !235), !dbg !2151
  %0 = bitcast %struct.re_pattern_buffer* %preg to i8*, !dbg !2152
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false), !dbg !2153
  %call = tail call noalias i8* @malloc(i64 256) #7, !dbg !2152
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 4, !dbg !2152
  store i8* %call, i8** %fastmap, align 8, !dbg !2152, !tbaa !722
  %and1 = and i32 %cflags, 2, !dbg !2154
  %tobool2 = icmp eq i32 %and1, 0, !dbg !2154
  br i1 %tobool2, label %if.else, label %if.then, !dbg !2154

if.then:                                          ; preds = %entry
  %call3 = tail call noalias i8* @malloc(i64 256) #7, !dbg !2155
  %translate = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 5, !dbg !2155
  store i8* %call3, i8** %translate, align 8, !dbg !2155, !tbaa !722
  %cmp = icmp eq i8* %call3, null, !dbg !2156
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !2156

for.cond.preheader:                               ; preds = %if.then
  %call7 = tail call i16** @__ctype_b_loc() #11, !dbg !2157
  br label %for.body, !dbg !2159

for.body:                                         ; preds = %cond.end, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %cond.end ]
  %sext = shl i64 %indvars.iv, 32, !dbg !2157
  %idxprom = ashr exact i64 %sext, 32, !dbg !2157
  %1 = load i16** %call7, align 8, !dbg !2157, !tbaa !722
  %arrayidx = getelementptr inbounds i16* %1, i64 %idxprom, !dbg !2157
  %2 = load i16* %arrayidx, align 2, !dbg !2157, !tbaa !1715
  %and8 = and i16 %2, 256, !dbg !2157
  %tobool9 = icmp eq i16 %and8, 0, !dbg !2157
  br i1 %tobool9, label %for.body.cond.end_crit_edge, label %cond.true, !dbg !2157

for.body.cond.end_crit_edge:                      ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32, !dbg !2157
  br label %cond.end, !dbg !2157

cond.true:                                        ; preds = %for.body
  %call11 = tail call i32** @__ctype_tolower_loc() #11, !dbg !2157
  %4 = load i32** %call11, align 8, !dbg !2157, !tbaa !722
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !2157
  %5 = load i32* %arrayidx12, align 4, !dbg !2157, !tbaa !795
  br label %cond.end, !dbg !2157

cond.end:                                         ; preds = %for.body.cond.end_crit_edge, %cond.true
  %cond13 = phi i32 [ %5, %cond.true ], [ %3, %for.body.cond.end_crit_edge ], !dbg !2157
  %conv14 = trunc i32 %cond13 to i8, !dbg !2157
  %6 = load i8** %translate, align 8, !dbg !2157, !tbaa !722
  %arrayidx17 = getelementptr inbounds i8* %6, i64 %indvars.iv, !dbg !2157
  store i8 %conv14, i8* %arrayidx17, align 1, !dbg !2157, !tbaa !714
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2159
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2159
  %exitcond = icmp eq i32 %lftr.wideiv, 256, !dbg !2159
  br i1 %exitcond, label %if.end19, label %for.body, !dbg !2159

if.else:                                          ; preds = %entry
  %translate18 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 5, !dbg !2160
  store i8* null, i8** %translate18, align 8, !dbg !2160, !tbaa !722
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %if.else
  %and20 = and i32 %cflags, 4, !dbg !2161
  %tobool21 = icmp eq i32 %and20, 0, !dbg !2161
  br i1 %tobool21, label %if.else24, label %if.then22, !dbg !2161

if.then22:                                        ; preds = %if.end19
  %and23 = and i64 %cond, 242334, !dbg !2162
  tail call void @llvm.dbg.value(metadata !{i64 %and23}, i64 0, metadata !235), !dbg !2162
  %or = or i64 %and23, 256, !dbg !2164
  tail call void @llvm.dbg.value(metadata !{i64 %or}, i64 0, metadata !235), !dbg !2164
  %newline_anchor = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7, !dbg !2165
  %bf.load = load i8* %newline_anchor, align 8, !dbg !2165
  %bf.set = or i8 %bf.load, -128, !dbg !2165
  store i8 %bf.set, i8* %newline_anchor, align 8, !dbg !2165
  br label %if.end28, !dbg !2166

if.else24:                                        ; preds = %if.end19
  %newline_anchor25 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7, !dbg !2167
  %bf.load26 = load i8* %newline_anchor25, align 8, !dbg !2167
  %bf.clear27 = and i8 %bf.load26, 127, !dbg !2167
  store i8 %bf.clear27, i8* %newline_anchor25, align 8, !dbg !2167
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then22
  %bf.load32 = phi i8 [ %bf.set, %if.then22 ], [ %bf.clear27, %if.else24 ]
  %syntax.0 = phi i64 [ %or, %if.then22 ], [ %cond, %if.else24 ]
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7, !dbg !2168
  %7 = shl i32 %cflags, 1, !dbg !2168
  %bf.value = trunc i32 %7 to i8, !dbg !2168
  %bf.shl = and i8 %bf.value, 16, !dbg !2168
  %bf.clear33 = and i8 %bf.load32, -17, !dbg !2168
  %bf.set34 = or i8 %bf.clear33, %bf.shl, !dbg !2168
  store i8 %bf.set34, i8* %no_sub, align 8, !dbg !2168
  %call35 = tail call i64 @strlen(i8* %pattern) #10, !dbg !2169
  %call36 = tail call fastcc i32 @regex_compile(i8* %pattern, i64 %call35, i64 %syntax.0, %struct.re_pattern_buffer* %preg) #9, !dbg !2169
  tail call void @llvm.dbg.value(metadata !{i32 %call36}, i64 0, metadata !234), !dbg !2169
  %cmp37 = icmp eq i32 %call36, 16, !dbg !2170
  %.call36 = select i1 %cmp37, i32 8, i32 %call36, !dbg !2170
  tail call void @llvm.dbg.value(metadata !{i32 %.call36}, i64 0, metadata !234), !dbg !2170
  %cmp41 = icmp eq i32 %.call36, 0, !dbg !2171
  br i1 %cmp41, label %land.lhs.true, label %return, !dbg !2171

land.lhs.true:                                    ; preds = %if.end28
  %8 = load i8** %fastmap, align 8, !dbg !2171, !tbaa !722
  %tobool44 = icmp eq i8* %8, null, !dbg !2171
  br i1 %tobool44, label %return, label %if.then45, !dbg !2171

if.then45:                                        ; preds = %land.lhs.true
  %call46 = tail call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %preg) #9, !dbg !2172
  %cmp47 = icmp eq i32 %call46, -2, !dbg !2172
  br i1 %cmp47, label %if.then49, label %return, !dbg !2172

if.then49:                                        ; preds = %if.then45
  %9 = load i8** %fastmap, align 8, !dbg !2174, !tbaa !722
  tail call void @free(i8* %9) #7, !dbg !2174
  store i8* null, i8** %fastmap, align 8, !dbg !2176, !tbaa !722
  br label %return, !dbg !2177

return:                                           ; preds = %if.end28, %if.then49, %if.then45, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 12, %if.then ], [ 0, %land.lhs.true ], [ 0, %if.then45 ], [ 0, %if.then49 ], [ %.call36, %if.end28 ]
  ret i32 %retval.0, !dbg !2178
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @regexec(%struct.re_pattern_buffer* nocapture %preg, i8* %string, i64 %nmatch, %struct.regmatch_t* nocapture %pmatch, i32 %eflags) #0 {
entry:
  %regs = alloca %struct.re_registers, align 8
  %private_preg = alloca %struct.re_pattern_buffer, align 8
  call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %preg}, i64 0, metadata !250), !dbg !2179
  call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !251), !dbg !2180
  call void @llvm.dbg.value(metadata !{i64 %nmatch}, i64 0, metadata !252), !dbg !2181
  call void @llvm.dbg.value(metadata !{%struct.regmatch_t* %pmatch}, i64 0, metadata !253), !dbg !2182
  call void @llvm.dbg.value(metadata !{i32 %eflags}, i64 0, metadata !254), !dbg !2183
  call void @llvm.dbg.declare(metadata !{%struct.re_registers* %regs}, metadata !256), !dbg !2184
  %0 = bitcast %struct.re_pattern_buffer* %private_preg to i8*, !dbg !2185
  call void @llvm.lifetime.start(i64 64, i8* %0) #3, !dbg !2185
  call void @llvm.dbg.declare(metadata !{%struct.re_pattern_buffer* %private_preg}, metadata !257), !dbg !2185
  %call = call i64 @strlen(i8* %string) #10, !dbg !2186
  %conv = trunc i64 %call to i32, !dbg !2186
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !258), !dbg !2186
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7, !dbg !2187
  %bf.load = load i8* %no_sub, align 8, !dbg !2187
  %bf.clear = and i8 %bf.load, 16, !dbg !2187
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2187
  %cmp = icmp ne i64 %nmatch, 0, !dbg !2187
  %cmp. = and i1 %tobool, %cmp, !dbg !2187
  %1 = bitcast %struct.re_pattern_buffer* %preg to i8*, !dbg !2188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 64, i32 8, i1 false), !dbg !2188, !tbaa.struct !2189
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer* %private_preg, i64 0, i32 7, !dbg !2190
  %eflags.tr = trunc i32 %eflags to i8, !dbg !2190
  %bf.load5 = load i8* %not_bol, align 8, !dbg !2190
  %bf.value = shl i8 %eflags.tr, 5, !dbg !2190
  %bf.shl = and i8 %bf.value, 32, !dbg !2190
  %bf.clear6 = and i8 %bf.load5, -103, !dbg !2190
  %2 = shl i32 %eflags, 5, !dbg !2191
  %bf.value14 = trunc i32 %2 to i8, !dbg !2191
  %bf.shl15 = and i8 %bf.value14, 64, !dbg !2191
  %bf.set = or i8 %bf.shl, %bf.shl15, !dbg !2191
  %bf.set17 = or i8 %bf.set, %bf.clear6, !dbg !2192
  %bf.set21 = or i8 %bf.set17, 4, !dbg !2192
  store i8 %bf.set21, i8* %not_bol, align 8, !dbg !2192
  br i1 %cmp., label %if.then, label %if.end31.thread, !dbg !2193

if.end31.thread:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %private_preg}, i64 0, metadata !2194) #3, !dbg !2196
  call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !2197) #3, !dbg !2198
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !2199) #3, !dbg !2200
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !2201) #3, !dbg !2200
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !2202) #3, !dbg !2200
  call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !2203) #3, !dbg !2204
  %call.i77 = call i32 @re_search_2(%struct.re_pattern_buffer* %private_preg, i8* null, i32 0, i8* %string, i32 %conv, i32 0, i32 %conv, %struct.re_registers* null, i32 %conv) #7, !dbg !2205
  call void @llvm.dbg.value(metadata !{i32 %call.i78}, i64 0, metadata !255), !dbg !2195
  br label %if.end53, !dbg !2206

if.then:                                          ; preds = %entry
  %conv23 = trunc i64 %nmatch to i32, !dbg !2207
  %num_regs = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0, !dbg !2207
  store i32 %conv23, i32* %num_regs, align 8, !dbg !2207, !tbaa !795
  %mul24 = shl i64 %nmatch, 3, !dbg !2209
  %call25 = call noalias i8* @malloc(i64 %mul24) #7, !dbg !2209
  %3 = bitcast i8* %call25 to i32*, !dbg !2209
  %start = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1, !dbg !2209
  store i32* %3, i32** %start, align 8, !dbg !2209, !tbaa !722
  %cmp27 = icmp eq i8* %call25, null, !dbg !2210
  br i1 %cmp27, label %cleanup, label %if.then36, !dbg !2210

if.then36:                                        ; preds = %if.then
  %add.ptr = getelementptr inbounds i32* %3, i64 %nmatch, !dbg !2211
  %end = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2, !dbg !2211
  store i32* %add.ptr, i32** %end, align 8, !dbg !2211, !tbaa !722
  call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %private_preg}, i64 0, metadata !2194) #3, !dbg !2196
  call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !2197) #3, !dbg !2198
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !2199) #3, !dbg !2200
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !2201) #3, !dbg !2200
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !2202) #3, !dbg !2200
  call void @llvm.dbg.value(metadata !{%struct.re_registers* %regs}, i64 0, metadata !2203) #3, !dbg !2204
  %call.i = call i32 @re_search_2(%struct.re_pattern_buffer* %private_preg, i8* null, i32 0, i8* %string, i32 %conv, i32 0, i32 %conv, %struct.re_registers* %regs, i32 %conv) #7, !dbg !2205
  call void @llvm.dbg.value(metadata !{i32 %call.i78}, i64 0, metadata !255), !dbg !2195
  %cmp37 = icmp sgt i32 %call.i, -1, !dbg !2212
  br i1 %cmp37, label %for.body.lr.ph, label %if.end51, !dbg !2212

for.body.lr.ph:                                   ; preds = %if.then36
  %4 = load i32** %start, align 8, !dbg !2213, !tbaa !722
  %5 = load i32** %end, align 8, !dbg !2216, !tbaa !722
  br label %for.body, !dbg !2217

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %conv4081 = phi i64 [ 0, %for.body.lr.ph ], [ %conv40, %for.body ]
  %r.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %conv4081, !dbg !2213
  %6 = load i32* %arrayidx, align 4, !dbg !2213, !tbaa !795
  %rm_so = getelementptr inbounds %struct.regmatch_t* %pmatch, i64 %conv4081, i32 0, !dbg !2213
  store i32 %6, i32* %rm_so, align 4, !dbg !2213, !tbaa !795
  %arrayidx48 = getelementptr inbounds i32* %5, i64 %conv4081, !dbg !2216
  %7 = load i32* %arrayidx48, align 4, !dbg !2216, !tbaa !795
  %rm_eo = getelementptr inbounds %struct.regmatch_t* %pmatch, i64 %conv4081, i32 1, !dbg !2216
  store i32 %7, i32* %rm_eo, align 4, !dbg !2216, !tbaa !795
  %inc = add i32 %r.080, 1, !dbg !2217
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !260), !dbg !2217
  %conv40 = zext i32 %inc to i64, !dbg !2217
  %cmp41 = icmp ult i64 %conv40, %nmatch, !dbg !2217
  br i1 %cmp41, label %for.body, label %if.end51, !dbg !2217

if.end51:                                         ; preds = %for.body, %if.then36
  %8 = load i32** %start, align 8, !dbg !2218, !tbaa !722
  %9 = bitcast i32* %8 to i8*, !dbg !2218
  call void @free(i8* %9) #7, !dbg !2218
  br label %if.end53, !dbg !2219

if.end53:                                         ; preds = %if.end31.thread, %if.end51
  %call.i78 = phi i32 [ %call.i77, %if.end31.thread ], [ %call.i, %if.end51 ]
  %call34.lobit = lshr i32 %call.i78, 31, !dbg !2220
  br label %cleanup, !dbg !2220

cleanup:                                          ; preds = %if.then, %if.end53
  %retval.0 = phi i32 [ %call34.lobit, %if.end53 ], [ 1, %if.then ]
  call void @llvm.lifetime.end(i64 64, i8* %0) #3, !dbg !2221
  ret i32 %retval.0, !dbg !2221
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @regfree(%struct.re_pattern_buffer* nocapture %preg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.re_pattern_buffer* %preg}, i64 0, metadata !267), !dbg !2222
  %buffer = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 0, !dbg !2223
  %0 = load i8** %buffer, align 8, !dbg !2223, !tbaa !722
  %cmp = icmp eq i8* %0, null, !dbg !2223
  br i1 %cmp, label %if.end, label %if.then, !dbg !2223

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7, !dbg !2224
  br label %if.end, !dbg !2224

if.end:                                           ; preds = %entry, %if.then
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 4, !dbg !2225
  %1 = bitcast %struct.re_pattern_buffer* %preg to i8*, !dbg !2225
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !2226
  %2 = load i8** %fastmap, align 8, !dbg !2225, !tbaa !722
  %cmp3 = icmp eq i8* %2, null, !dbg !2225
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !2225

if.then4:                                         ; preds = %if.end
  tail call void @free(i8* %2) #7, !dbg !2227
  br label %if.end6, !dbg !2227

if.end6:                                          ; preds = %if.end, %if.then4
  store i8* null, i8** %fastmap, align 8, !dbg !2228, !tbaa !722
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7, !dbg !2229
  %bf.load = load i8* %fastmap_accurate, align 8, !dbg !2229
  %bf.clear = and i8 %bf.load, -9, !dbg !2229
  store i8 %bf.clear, i8* %fastmap_accurate, align 8, !dbg !2229
  %translate = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 5, !dbg !2230
  %3 = load i8** %translate, align 8, !dbg !2230, !tbaa !722
  %cmp8 = icmp eq i8* %3, null, !dbg !2230
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !2230

if.then9:                                         ; preds = %if.end6
  tail call void @free(i8* %3) #7, !dbg !2231
  br label %if.end11, !dbg !2231

if.end11:                                         ; preds = %if.end6, %if.then9
  store i8* null, i8** %translate, align 8, !dbg !2232, !tbaa !722
  ret void, !dbg !2233
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @compile_range(i8** nocapture %p_ptr, i8* %pend, i8* %translate, i64 %syntax, i8* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %p_ptr}, i64 0, metadata !467), !dbg !2234
  tail call void @llvm.dbg.value(metadata !{i8* %pend}, i64 0, metadata !468), !dbg !2234
  tail call void @llvm.dbg.value(metadata !{i8* %translate}, i64 0, metadata !469), !dbg !2235
  tail call void @llvm.dbg.value(metadata !{i64 %syntax}, i64 0, metadata !470), !dbg !2236
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !471), !dbg !2237
  %0 = load i8** %p_ptr, align 8, !dbg !2238, !tbaa !722
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !473), !dbg !2238
  %cmp = icmp eq i8* %0, %pend, !dbg !2239
  br i1 %cmp, label %return, label %if.end, !dbg !2239

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %0, i64 -2, !dbg !2240
  %1 = load i8* %arrayidx, align 1, !dbg !2240, !tbaa !714
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !474), !dbg !2240
  %2 = load i8* %0, align 1, !dbg !2241, !tbaa !714
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1, !dbg !2242
  store i8* %incdec.ptr, i8** %p_ptr, align 8, !dbg !2242, !tbaa !722
  %cmp3 = icmp ugt i8 %1, %2, !dbg !2243
  br i1 %cmp3, label %if.then5, label %for.body.lr.ph, !dbg !2243

if.then5:                                         ; preds = %if.end
  %and = and i64 %syntax, 65536, !dbg !2244
  %tobool = icmp ne i64 %and, 0, !dbg !2244
  %cond = select i1 %tobool, i32 11, i32 0, !dbg !2244
  br label %return, !dbg !2244

for.body.lr.ph:                                   ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !472), !dbg !2245
  %conv = zext i8 %1 to i32, !dbg !2240
  %tobool9 = icmp eq i8* %translate, null, !dbg !2247
  %3 = zext i8 %1 to i64
  %4 = zext i8 %2 to i32, !dbg !2245
  br label %for.body, !dbg !2245

for.body:                                         ; preds = %for.body.lr.ph, %cond.end23
  %indvars.iv = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end23 ]
  %this_char.049 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %cond.end23 ]
  %5 = trunc i64 %indvars.iv to i32, !dbg !2247
  br i1 %tobool9, label %cond.end23, label %cond.true17, !dbg !2247

cond.true17:                                      ; preds = %for.body
  %idxprom = and i64 %indvars.iv, 255, !dbg !2247
  %arrayidx11 = getelementptr inbounds i8* %translate, i64 %idxprom, !dbg !2247
  %6 = load i8* %arrayidx11, align 1, !dbg !2247, !tbaa !714
  %conv1247 = zext i8 %6 to i32, !dbg !2247
  %conv21 = sext i8 %6 to i64, !dbg !2247
  br label %cond.end23, !dbg !2247

cond.end23:                                       ; preds = %for.body, %cond.true17
  %rem43.pn.in = phi i32 [ %conv1247, %cond.true17 ], [ %5, %for.body ]
  %cond24 = phi i64 [ %conv21, %cond.true17 ], [ %indvars.iv, %for.body ], !dbg !2247
  %rem43.pn = and i32 %rem43.pn.in, 7, !dbg !2247
  %shl45 = shl i32 1, %rem43.pn, !dbg !2247
  %conv26 = lshr i64 %cond24, 3, !dbg !2247
  %div = and i64 %conv26, 31, !dbg !2247
  %arrayidx28 = getelementptr inbounds i8* %b, i64 %div, !dbg !2247
  %7 = load i8* %arrayidx28, align 1, !dbg !2247, !tbaa !714
  %conv29 = zext i8 %7 to i32, !dbg !2247
  %or = or i32 %conv29, %shl45, !dbg !2247
  %conv30 = trunc i32 %or to i8, !dbg !2247
  store i8 %conv30, i8* %arrayidx28, align 1, !dbg !2247, !tbaa !714
  %inc = add i32 %this_char.049, 1, !dbg !2245
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !472), !dbg !2245
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2245
  %exitcond = icmp eq i32 %this_char.049, %4, !dbg !2245
  br i1 %exitcond, label %return, label %for.body, !dbg !2245

return:                                           ; preds = %cond.end23, %entry, %if.then5
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ 11, %entry ], [ 0, %cond.end23 ]
  ret i32 %retval.0, !dbg !2249
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc signext i8 @group_match_null_string_p(i8** nocapture %p, i8* %end, %union.register_info_type* nocapture %reg_info) #0 {
entry:
  %p1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !670), !dbg !2250
  call void @llvm.dbg.value(metadata !{i8* %end}, i64 0, metadata !671), !dbg !2250
  call void @llvm.dbg.value(metadata !{%union.register_info_type* %reg_info}, i64 0, metadata !672), !dbg !2251
  call void @llvm.dbg.declare(metadata !{i8** %p1}, metadata !674), !dbg !2252
  %0 = load i8** %p, align 8, !dbg !2252, !tbaa !722
  %add.ptr = getelementptr inbounds i8* %0, i64 2, !dbg !2252
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !674), !dbg !2252
  store i8* %add.ptr, i8** %p1, align 8, !dbg !2252, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2253
  %cmp89 = icmp ult i8* %add.ptr, %end, !dbg !2253
  br i1 %cmp89, label %while.body, label %return, !dbg !2253

while.body:                                       ; preds = %entry, %while.cond.backedge
  %1 = phi i8* [ %5, %while.cond.backedge ], [ %add.ptr, %entry ]
  %2 = load i8* %1, align 1, !dbg !2254, !tbaa !714
  %conv = zext i8 %2 to i32, !dbg !2254
  switch i32 %conv, label %sw.default [
    i32 15, label %sw.bb
    i32 7, label %sw.bb64
  ], !dbg !2254

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1, !dbg !2256
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !674), !dbg !2256
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !2256, !tbaa !722
  %3 = load i8* %incdec.ptr, align 1, !dbg !2258, !tbaa !714
  %conv2 = zext i8 %3 to i32, !dbg !2258
  call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !673), !dbg !2258
  %add.ptr3 = getelementptr inbounds i8* %1, i64 2, !dbg !2258
  %4 = load i8* %add.ptr3, align 1, !dbg !2258, !tbaa !714
  %conv4 = sext i8 %4 to i32, !dbg !2258
  %shl = shl nsw i32 %conv4, 8, !dbg !2258
  %add = or i32 %shl, %conv2, !dbg !2258
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !673), !dbg !2258
  %add.ptr5 = getelementptr inbounds i8* %1, i64 3, !dbg !2261
  call void @llvm.dbg.value(metadata !{i8* %add.ptr5}, i64 0, metadata !674), !dbg !2261
  store i8* %add.ptr5, i8** %p1, align 8, !dbg !2261, !tbaa !722
  %cmp7 = icmp sgt i32 %add, -1, !dbg !2262
  br i1 %cmp7, label %while.cond9, label %while.cond.backedge, !dbg !2262

while.cond.backedge:                              ; preds = %sw.default.while.cond.backedge_crit_edge, %sw.bb, %if.end60
  %5 = phi i8* [ %.pre, %sw.default.while.cond.backedge_crit_edge ], [ %add.ptr5, %sw.bb ], [ %add.ptr56, %if.end60 ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2253
  %cmp = icmp ult i8* %5, %end, !dbg !2253
  br i1 %cmp, label %while.body, label %return, !dbg !2253

while.cond9:                                      ; preds = %sw.bb, %if.end23
  %6 = phi i8* [ %add.ptr34, %if.end23 ], [ %add.ptr5, %sw.bb ]
  %mcnt.0 = phi i32 [ %add32, %if.end23 ], [ %add, %sw.bb ]
  %sub = add nsw i32 %mcnt.0, -3, !dbg !2263
  %idxprom = sext i32 %sub to i64, !dbg !2263
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2263
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom, !dbg !2263
  %7 = load i8* %arrayidx, align 1, !dbg !2263, !tbaa !714
  %cmp11 = icmp eq i8 %7, 14, !dbg !2263
  br i1 %cmp11, label %while.body13, label %do.body45, !dbg !2263

while.body13:                                     ; preds = %while.cond9
  %idx.ext = sext i32 %mcnt.0 to i64, !dbg !2265
  %add.ptr14.sum = add i64 %idx.ext, -3, !dbg !2265
  %add.ptr15 = getelementptr inbounds i8* %6, i64 %add.ptr14.sum, !dbg !2265
  %call = call fastcc signext i8 @alt_match_null_string_p(i8* %6, i8* %add.ptr15, %union.register_info_type* %reg_info) #9, !dbg !2265
  %tobool = icmp eq i8 %call, 0, !dbg !2265
  br i1 %tobool, label %return, label %if.end, !dbg !2265

if.end:                                           ; preds = %while.body13
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2267
  %add.ptr18 = getelementptr inbounds i8* %6, i64 %idx.ext, !dbg !2267
  call void @llvm.dbg.value(metadata !{i8* %add.ptr18}, i64 0, metadata !674), !dbg !2267
  call void @llvm.dbg.value(metadata !{i8* %add.ptr18}, i64 0, metadata !674), !dbg !2267
  store i8* %add.ptr18, i8** %p1, align 8, !dbg !2267, !tbaa !722
  %8 = load i8* %add.ptr18, align 1, !dbg !2268, !tbaa !714
  %cmp20 = icmp eq i8 %8, 15, !dbg !2268
  br i1 %cmp20, label %if.end23, label %do.body45, !dbg !2268

if.end23:                                         ; preds = %if.end
  %add.ptr18.sum = add i64 %idx.ext, 1, !dbg !2269
  %incdec.ptr24 = getelementptr inbounds i8* %6, i64 %add.ptr18.sum, !dbg !2269
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr24}, i64 0, metadata !674), !dbg !2269
  store i8* %incdec.ptr24, i8** %p1, align 8, !dbg !2269, !tbaa !722
  %9 = load i8* %incdec.ptr24, align 1, !dbg !2270, !tbaa !714
  %conv27 = zext i8 %9 to i32, !dbg !2270
  call void @llvm.dbg.value(metadata !{i32 %conv27}, i64 0, metadata !673), !dbg !2270
  %incdec.ptr24.sum = add i64 %idx.ext, 2, !dbg !2270
  %add.ptr29 = getelementptr inbounds i8* %6, i64 %incdec.ptr24.sum, !dbg !2270
  %10 = load i8* %add.ptr29, align 1, !dbg !2270, !tbaa !714
  %conv30 = sext i8 %10 to i32, !dbg !2270
  %shl31 = shl nsw i32 %conv30, 8, !dbg !2270
  %add32 = or i32 %shl31, %conv27, !dbg !2270
  call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !673), !dbg !2270
  %incdec.ptr24.sum84 = add i64 %idx.ext, 3, !dbg !2273
  %add.ptr34 = getelementptr inbounds i8* %6, i64 %incdec.ptr24.sum84, !dbg !2273
  call void @llvm.dbg.value(metadata !{i8* %add.ptr34}, i64 0, metadata !674), !dbg !2273
  store i8* %add.ptr34, i8** %p1, align 8, !dbg !2273, !tbaa !722
  %sub36 = add nsw i32 %add32, -3, !dbg !2274
  %idxprom37 = sext i32 %sub36 to i64, !dbg !2274
  %add.ptr34.sum = add i64 %idxprom37, %incdec.ptr24.sum84, !dbg !2274
  %arrayidx38 = getelementptr inbounds i8* %6, i64 %add.ptr34.sum, !dbg !2274
  %11 = load i8* %arrayidx38, align 1, !dbg !2274, !tbaa !714
  %cmp40 = icmp eq i8 %11, 14, !dbg !2274
  br i1 %cmp40, label %while.cond9, label %if.then42, !dbg !2274

if.then42:                                        ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i8* %add.ptr18}, i64 0, metadata !674), !dbg !2275
  store i8* %add.ptr18, i8** %p1, align 8, !dbg !2275, !tbaa !722
  br label %do.body45, !dbg !2277

do.body45:                                        ; preds = %if.end, %while.cond9, %if.then42
  %12 = phi i8* [ %add.ptr18, %if.then42 ], [ %6, %while.cond9 ], [ %add.ptr18, %if.end ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2278
  %add.ptr46 = getelementptr inbounds i8* %12, i64 -2, !dbg !2278
  %13 = load i8* %add.ptr46, align 1, !dbg !2278, !tbaa !714
  %conv47 = zext i8 %13 to i32, !dbg !2278
  call void @llvm.dbg.value(metadata !{i32 %conv47}, i64 0, metadata !673), !dbg !2278
  %add.ptr50 = getelementptr inbounds i8* %12, i64 -1, !dbg !2278
  %14 = load i8* %add.ptr50, align 1, !dbg !2278, !tbaa !714
  %conv51 = sext i8 %14 to i32, !dbg !2278
  %shl52 = shl nsw i32 %conv51, 8, !dbg !2278
  %add53 = or i32 %shl52, %conv47, !dbg !2278
  call void @llvm.dbg.value(metadata !{i32 %add53}, i64 0, metadata !673), !dbg !2278
  %idx.ext55 = sext i32 %add53 to i64, !dbg !2280
  %add.ptr56 = getelementptr inbounds i8* %12, i64 %idx.ext55, !dbg !2280
  %call57 = call fastcc signext i8 @alt_match_null_string_p(i8* %12, i8* %add.ptr56, %union.register_info_type* %reg_info) #9, !dbg !2280
  %tobool58 = icmp eq i8 %call57, 0, !dbg !2280
  br i1 %tobool58, label %return, label %if.end60, !dbg !2280

if.end60:                                         ; preds = %do.body45
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2281
  call void @llvm.dbg.value(metadata !{i8* %add.ptr56}, i64 0, metadata !674), !dbg !2281
  store i8* %add.ptr56, i8** %p1, align 8, !dbg !2281, !tbaa !722
  br label %while.cond.backedge, !dbg !2282

sw.bb64:                                          ; preds = %while.body
  %add.ptr65 = getelementptr inbounds i8* %1, i64 2, !dbg !2283
  store i8* %add.ptr65, i8** %p, align 8, !dbg !2283, !tbaa !722
  br label %return, !dbg !2284

sw.default:                                       ; preds = %while.body
  %call66 = call fastcc signext i8 @common_op_match_null_string_p(i8** %p1, i8* %end, %union.register_info_type* %reg_info) #9, !dbg !2285
  %tobool67 = icmp eq i8 %call66, 0, !dbg !2285
  br i1 %tobool67, label %return, label %sw.default.while.cond.backedge_crit_edge, !dbg !2285

sw.default.while.cond.backedge_crit_edge:         ; preds = %sw.default
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !674), !dbg !2253
  %.pre = load i8** %p1, align 8, !dbg !2253, !tbaa !722
  br label %while.cond.backedge, !dbg !2285

return:                                           ; preds = %entry, %sw.default, %do.body45, %while.cond.backedge, %while.body13, %sw.bb64
  %retval.0 = phi i8 [ 1, %sw.bb64 ], [ 0, %while.body13 ], [ 0, %while.cond.backedge ], [ 0, %do.body45 ], [ 0, %sw.default ], [ 0, %entry ]
  ret i8 %retval.0, !dbg !2286
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc signext i8 @alt_match_null_string_p(i8* %p, i8* %end, %union.register_info_type* nocapture %reg_info) #0 {
entry:
  %p1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !688), !dbg !2287
  call void @llvm.dbg.value(metadata !{i8* %end}, i64 0, metadata !689), !dbg !2287
  call void @llvm.dbg.value(metadata !{%union.register_info_type* %reg_info}, i64 0, metadata !690), !dbg !2288
  call void @llvm.dbg.declare(metadata !{i8** %p1}, metadata !692), !dbg !2289
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !692), !dbg !2289
  store i8* %p, i8** %p1, align 8, !dbg !2289, !tbaa !722
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !692), !dbg !2290
  %cmp9 = icmp ult i8* %p, %end, !dbg !2290
  br i1 %cmp9, label %while.body, label %return, !dbg !2290

while.body:                                       ; preds = %entry, %while.cond.backedge
  %0 = phi i8* [ %4, %while.cond.backedge ], [ %p, %entry ]
  %1 = load i8* %0, align 1, !dbg !2291, !tbaa !714
  %cond = icmp eq i8 %1, 15, !dbg !2291
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !2291

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1, !dbg !2293
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !692), !dbg !2293
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !2293, !tbaa !722
  %2 = load i8* %incdec.ptr, align 1, !dbg !2295, !tbaa !714
  %conv2 = zext i8 %2 to i32, !dbg !2295
  call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !691), !dbg !2295
  %add.ptr = getelementptr inbounds i8* %0, i64 2, !dbg !2295
  %3 = load i8* %add.ptr, align 1, !dbg !2295, !tbaa !714
  %conv3 = sext i8 %3 to i32, !dbg !2295
  %shl = shl nsw i32 %conv3, 8, !dbg !2295
  %add = or i32 %shl, %conv2, !dbg !2295
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !691), !dbg !2295
  %addconv = add nsw i32 %add, 3, !dbg !2298
  %add.ptr4.sum = sext i32 %addconv to i64, !dbg !2298
  %add.ptr6 = getelementptr inbounds i8* %0, i64 %add.ptr4.sum, !dbg !2298
  call void @llvm.dbg.value(metadata !{i8* %add.ptr6}, i64 0, metadata !692), !dbg !2298
  store i8* %add.ptr6, i8** %p1, align 8, !dbg !2298, !tbaa !722
  br label %while.cond.backedge, !dbg !2299

while.cond.backedge:                              ; preds = %sw.default.while.cond.backedge_crit_edge, %sw.bb
  %4 = phi i8* [ %.pre, %sw.default.while.cond.backedge_crit_edge ], [ %add.ptr6, %sw.bb ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !692), !dbg !2290
  %cmp = icmp ult i8* %4, %end, !dbg !2290
  br i1 %cmp, label %while.body, label %return, !dbg !2290

sw.default:                                       ; preds = %while.body
  %call = call fastcc signext i8 @common_op_match_null_string_p(i8** %p1, i8* %end, %union.register_info_type* %reg_info) #9, !dbg !2300
  %tobool = icmp eq i8 %call, 0, !dbg !2300
  br i1 %tobool, label %return, label %sw.default.while.cond.backedge_crit_edge, !dbg !2300

sw.default.while.cond.backedge_crit_edge:         ; preds = %sw.default
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !692), !dbg !2290
  %.pre = load i8** %p1, align 8, !dbg !2290, !tbaa !722
  br label %while.cond.backedge, !dbg !2300

return:                                           ; preds = %while.cond.backedge, %sw.default, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 0, %sw.default ], [ 1, %while.cond.backedge ]
  ret i8 %retval.0, !dbg !2301
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc signext i8 @common_op_match_null_string_p(i8** nocapture %p, i8* %end, %union.register_info_type* nocapture %reg_info) #0 {
entry:
  %p1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !677), !dbg !2302
  call void @llvm.dbg.value(metadata !{i8* %end}, i64 0, metadata !678), !dbg !2302
  call void @llvm.dbg.value(metadata !{%union.register_info_type* %reg_info}, i64 0, metadata !679), !dbg !2303
  call void @llvm.dbg.declare(metadata !{i8** %p1}, metadata !683), !dbg !2304
  %0 = load i8** %p, align 8, !dbg !2304, !tbaa !722
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1, !dbg !2305
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !683), !dbg !2305
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !2305, !tbaa !722
  %1 = load i8* %0, align 1, !dbg !2305, !tbaa !714
  %conv = zext i8 %1 to i32, !dbg !2305
  switch i32 %conv, label %return [
    i32 0, label %sw.epilog
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 11, label %sw.epilog
    i32 12, label %sw.epilog
    i32 26, label %sw.epilog
    i32 27, label %sw.epilog
    i32 28, label %sw.epilog
    i32 29, label %sw.epilog
    i32 6, label %sw.bb1
    i32 13, label %do.body13
    i32 21, label %sw.bb23
    i32 8, label %sw.bb55
    i32 23, label %sw.bb65
  ], !dbg !2305

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2306
  %2 = load i8* %incdec.ptr, align 1, !dbg !2306, !tbaa !714
  %call = call fastcc signext i8 @group_match_null_string_p(i8** %p1, i8* %end, %union.register_info_type* %reg_info) #9, !dbg !2308
  call void @llvm.dbg.value(metadata !{i8 %call}, i64 0, metadata !681), !dbg !2308
  %idxprom = zext i8 %2 to i64, !dbg !2309
  %arrayidx = getelementptr inbounds %union.register_info_type* %reg_info, i64 %idxprom, !dbg !2309
  %3 = bitcast %union.register_info_type* %arrayidx to i8*, !dbg !2309
  %bf.load = load i8* %3, align 4, !dbg !2309
  %bf.clear = and i8 %bf.load, 3, !dbg !2309
  %cmp = icmp eq i8 %bf.clear, 3, !dbg !2309
  br i1 %cmp, label %if.then, label %if.end, !dbg !2309

if.then:                                          ; preds = %sw.bb1
  %bf.value = and i8 %call, 3, !dbg !2310
  %bf.clear9 = and i8 %bf.load, -4, !dbg !2310
  %bf.set = or i8 %bf.clear9, %bf.value, !dbg !2310
  store i8 %bf.set, i8* %3, align 4, !dbg !2310
  br label %if.end, !dbg !2310

if.end:                                           ; preds = %if.then, %sw.bb1
  %tobool = icmp eq i8 %call, 0, !dbg !2311
  br i1 %tobool, label %return, label %if.end.sw.epilog_crit_edge, !dbg !2311

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2312
  %.pre = load i8** %p1, align 8, !dbg !2312, !tbaa !722
  br label %sw.epilog, !dbg !2311

do.body13:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2313
  %4 = load i8* %incdec.ptr, align 1, !dbg !2313, !tbaa !714
  %conv14 = zext i8 %4 to i32, !dbg !2313
  call void @llvm.dbg.value(metadata !{i32 %conv14}, i64 0, metadata !680), !dbg !2313
  %add.ptr = getelementptr inbounds i8* %0, i64 2, !dbg !2313
  %5 = load i8* %add.ptr, align 1, !dbg !2313, !tbaa !714
  %conv15 = sext i8 %5 to i32, !dbg !2313
  %shl = shl nsw i32 %conv15, 8, !dbg !2313
  %add = or i32 %shl, %conv14, !dbg !2313
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !680), !dbg !2313
  %add.ptr16 = getelementptr inbounds i8* %0, i64 3, !dbg !2316
  call void @llvm.dbg.value(metadata !{i8* %add.ptr16}, i64 0, metadata !683), !dbg !2316
  store i8* %add.ptr16, i8** %p1, align 8, !dbg !2316, !tbaa !722
  %cmp18 = icmp sgt i32 %add, -1, !dbg !2317
  br i1 %cmp18, label %if.then20, label %return, !dbg !2317

if.then20:                                        ; preds = %do.body13
  %addconv82 = add nsw i32 %add, 3, !dbg !2318
  %incdec.ptr.sum81 = sext i32 %addconv82 to i64, !dbg !2318
  %add.ptr21 = getelementptr inbounds i8* %0, i64 %incdec.ptr.sum81, !dbg !2318
  call void @llvm.dbg.value(metadata !{i8* %add.ptr21}, i64 0, metadata !683), !dbg !2318
  store i8* %add.ptr21, i8** %p1, align 8, !dbg !2318, !tbaa !722
  br label %sw.epilog, !dbg !2319

sw.bb23:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2320
  %add.ptr24 = getelementptr inbounds i8* %0, i64 3, !dbg !2320
  call void @llvm.dbg.value(metadata !{i8* %add.ptr24}, i64 0, metadata !683), !dbg !2320
  %6 = load i8* %add.ptr24, align 1, !dbg !2321, !tbaa !714
  %conv27 = zext i8 %6 to i32, !dbg !2321
  call void @llvm.dbg.value(metadata !{i32 %conv27}, i64 0, metadata !680), !dbg !2321
  %add.ptr29 = getelementptr inbounds i8* %0, i64 4, !dbg !2321
  %7 = load i8* %add.ptr29, align 1, !dbg !2321, !tbaa !714
  %conv30 = sext i8 %7 to i32, !dbg !2321
  %shl31 = shl nsw i32 %conv30, 8, !dbg !2321
  %add32 = or i32 %shl31, %conv27, !dbg !2321
  call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !680), !dbg !2321
  %add.ptr34 = getelementptr inbounds i8* %0, i64 5, !dbg !2324
  call void @llvm.dbg.value(metadata !{i8* %add.ptr34}, i64 0, metadata !683), !dbg !2324
  store i8* %add.ptr34, i8** %p1, align 8, !dbg !2324, !tbaa !722
  %cmp36 = icmp eq i32 %add32, 0, !dbg !2325
  br i1 %cmp36, label %if.then38, label %return, !dbg !2325

if.then38:                                        ; preds = %sw.bb23
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !683), !dbg !2326
  %8 = load i8* %incdec.ptr, align 1, !dbg !2328, !tbaa !714
  %conv42 = zext i8 %8 to i32, !dbg !2328
  call void @llvm.dbg.value(metadata !{i32 %conv42}, i64 0, metadata !680), !dbg !2328
  %add.ptr44 = getelementptr inbounds i8* %0, i64 2, !dbg !2328
  %9 = load i8* %add.ptr44, align 1, !dbg !2328, !tbaa !714
  %conv45 = sext i8 %9 to i32, !dbg !2328
  %shl46 = shl nsw i32 %conv45, 8, !dbg !2328
  %add47 = or i32 %shl46, %conv42, !dbg !2328
  call void @llvm.dbg.value(metadata !{i32 %add47}, i64 0, metadata !680), !dbg !2328
  %addconv80 = add nsw i32 %add47, 3, !dbg !2331
  %incdec.ptr.sum = sext i32 %addconv80 to i64, !dbg !2331
  %add.ptr52 = getelementptr inbounds i8* %0, i64 %incdec.ptr.sum, !dbg !2331
  call void @llvm.dbg.value(metadata !{i8* %add.ptr52}, i64 0, metadata !683), !dbg !2331
  store i8* %add.ptr52, i8** %p1, align 8, !dbg !2331, !tbaa !722
  br label %sw.epilog, !dbg !2332

sw.bb55:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2333
  %10 = load i8* %incdec.ptr, align 1, !dbg !2333, !tbaa !714
  %idxprom56 = zext i8 %10 to i64, !dbg !2333
  %arrayidx57 = getelementptr inbounds %union.register_info_type* %reg_info, i64 %idxprom56, !dbg !2333
  %11 = bitcast %union.register_info_type* %arrayidx57 to i8*, !dbg !2333
  %bf.load59 = load i8* %11, align 4, !dbg !2333
  %bf.clear60 = and i8 %bf.load59, 3, !dbg !2333
  %tobool62 = icmp eq i8 %bf.clear60, 0, !dbg !2333
  br i1 %tobool62, label %return, label %sw.epilog, !dbg !2333

sw.bb65:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2334
  %add.ptr66 = getelementptr inbounds i8* %0, i64 5, !dbg !2334
  call void @llvm.dbg.value(metadata !{i8* %add.ptr66}, i64 0, metadata !683), !dbg !2334
  store i8* %add.ptr66, i8** %p1, align 8, !dbg !2334, !tbaa !722
  br label %return, !dbg !2334

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %sw.bb55, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %if.then38, %if.then20
  %12 = phi i8* [ %.pre, %if.end.sw.epilog_crit_edge ], [ %incdec.ptr, %sw.bb55 ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %incdec.ptr, %entry ], [ %add.ptr52, %if.then38 ], [ %add.ptr21, %if.then20 ]
  call void @llvm.dbg.value(metadata !{i8** %p1}, i64 0, metadata !683), !dbg !2312
  store i8* %12, i8** %p, align 8, !dbg !2312, !tbaa !722
  br label %return, !dbg !2335

return:                                           ; preds = %sw.bb65, %entry, %sw.bb55, %sw.bb23, %do.body13, %if.end, %sw.epilog
  %retval.0 = phi i8 [ 1, %sw.epilog ], [ 0, %if.end ], [ 0, %do.body13 ], [ 0, %sw.bb23 ], [ 0, %sw.bb55 ], [ 0, %entry ], [ 0, %sw.bb65 ]
  ret i8 %retval.0, !dbg !2335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !71, metadata !72, metadata !693, metadata !71, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !35, metadata !56}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 405, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 405, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !5, metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!5 = metadata !{i32 786472, metadata !"no_op", i64 0} ; [ DW_TAG_enumerator ] [no_op :: 0]
!6 = metadata !{i32 786472, metadata !"succeed", i64 1} ; [ DW_TAG_enumerator ] [succeed :: 1]
!7 = metadata !{i32 786472, metadata !"exactn", i64 2} ; [ DW_TAG_enumerator ] [exactn :: 2]
!8 = metadata !{i32 786472, metadata !"anychar", i64 3} ; [ DW_TAG_enumerator ] [anychar :: 3]
!9 = metadata !{i32 786472, metadata !"charset", i64 4} ; [ DW_TAG_enumerator ] [charset :: 4]
!10 = metadata !{i32 786472, metadata !"charset_not", i64 5} ; [ DW_TAG_enumerator ] [charset_not :: 5]
!11 = metadata !{i32 786472, metadata !"start_memory", i64 6} ; [ DW_TAG_enumerator ] [start_memory :: 6]
!12 = metadata !{i32 786472, metadata !"stop_memory", i64 7} ; [ DW_TAG_enumerator ] [stop_memory :: 7]
!13 = metadata !{i32 786472, metadata !"duplicate", i64 8} ; [ DW_TAG_enumerator ] [duplicate :: 8]
!14 = metadata !{i32 786472, metadata !"begline", i64 9} ; [ DW_TAG_enumerator ] [begline :: 9]
!15 = metadata !{i32 786472, metadata !"endline", i64 10} ; [ DW_TAG_enumerator ] [endline :: 10]
!16 = metadata !{i32 786472, metadata !"begbuf", i64 11} ; [ DW_TAG_enumerator ] [begbuf :: 11]
!17 = metadata !{i32 786472, metadata !"endbuf", i64 12} ; [ DW_TAG_enumerator ] [endbuf :: 12]
!18 = metadata !{i32 786472, metadata !"jump", i64 13} ; [ DW_TAG_enumerator ] [jump :: 13]
!19 = metadata !{i32 786472, metadata !"jump_past_alt", i64 14} ; [ DW_TAG_enumerator ] [jump_past_alt :: 14]
!20 = metadata !{i32 786472, metadata !"on_failure_jump", i64 15} ; [ DW_TAG_enumerator ] [on_failure_jump :: 15]
!21 = metadata !{i32 786472, metadata !"on_failure_keep_string_jump", i64 16} ; [ DW_TAG_enumerator ] [on_failure_keep_string_jump :: 16]
!22 = metadata !{i32 786472, metadata !"pop_failure_jump", i64 17} ; [ DW_TAG_enumerator ] [pop_failure_jump :: 17]
!23 = metadata !{i32 786472, metadata !"maybe_pop_jump", i64 18} ; [ DW_TAG_enumerator ] [maybe_pop_jump :: 18]
!24 = metadata !{i32 786472, metadata !"dummy_failure_jump", i64 19} ; [ DW_TAG_enumerator ] [dummy_failure_jump :: 19]
!25 = metadata !{i32 786472, metadata !"push_dummy_failure", i64 20} ; [ DW_TAG_enumerator ] [push_dummy_failure :: 20]
!26 = metadata !{i32 786472, metadata !"succeed_n", i64 21} ; [ DW_TAG_enumerator ] [succeed_n :: 21]
!27 = metadata !{i32 786472, metadata !"jump_n", i64 22} ; [ DW_TAG_enumerator ] [jump_n :: 22]
!28 = metadata !{i32 786472, metadata !"set_number_at", i64 23} ; [ DW_TAG_enumerator ] [set_number_at :: 23]
!29 = metadata !{i32 786472, metadata !"wordchar", i64 24} ; [ DW_TAG_enumerator ] [wordchar :: 24]
!30 = metadata !{i32 786472, metadata !"notwordchar", i64 25} ; [ DW_TAG_enumerator ] [notwordchar :: 25]
!31 = metadata !{i32 786472, metadata !"wordbeg", i64 26} ; [ DW_TAG_enumerator ] [wordbeg :: 26]
!32 = metadata !{i32 786472, metadata !"wordend", i64 27} ; [ DW_TAG_enumerator ] [wordend :: 27]
!33 = metadata !{i32 786472, metadata !"wordbound", i64 28} ; [ DW_TAG_enumerator ] [wordbound :: 28]
!34 = metadata !{i32 786472, metadata !"notwordbound", i64 29} ; [ DW_TAG_enumerator ] [notwordbound :: 29]
!35 = metadata !{i32 786436, metadata !36, null, metadata !"", i32 283, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 283, size 32, align 32, offset 0] [from ]
!36 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/include/regex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!38 = metadata !{i32 786472, metadata !"REG_ENOSYS", i64 4294967295} ; [ DW_TAG_enumerator ] [REG_ENOSYS :: 4294967295]
!39 = metadata !{i32 786472, metadata !"REG_NOERROR", i64 0} ; [ DW_TAG_enumerator ] [REG_NOERROR :: 0]
!40 = metadata !{i32 786472, metadata !"REG_NOMATCH", i64 1} ; [ DW_TAG_enumerator ] [REG_NOMATCH :: 1]
!41 = metadata !{i32 786472, metadata !"REG_BADPAT", i64 2} ; [ DW_TAG_enumerator ] [REG_BADPAT :: 2]
!42 = metadata !{i32 786472, metadata !"REG_ECOLLATE", i64 3} ; [ DW_TAG_enumerator ] [REG_ECOLLATE :: 3]
!43 = metadata !{i32 786472, metadata !"REG_ECTYPE", i64 4} ; [ DW_TAG_enumerator ] [REG_ECTYPE :: 4]
!44 = metadata !{i32 786472, metadata !"REG_EESCAPE", i64 5} ; [ DW_TAG_enumerator ] [REG_EESCAPE :: 5]
!45 = metadata !{i32 786472, metadata !"REG_ESUBREG", i64 6} ; [ DW_TAG_enumerator ] [REG_ESUBREG :: 6]
!46 = metadata !{i32 786472, metadata !"REG_EBRACK", i64 7} ; [ DW_TAG_enumerator ] [REG_EBRACK :: 7]
!47 = metadata !{i32 786472, metadata !"REG_EPAREN", i64 8} ; [ DW_TAG_enumerator ] [REG_EPAREN :: 8]
!48 = metadata !{i32 786472, metadata !"REG_EBRACE", i64 9} ; [ DW_TAG_enumerator ] [REG_EBRACE :: 9]
!49 = metadata !{i32 786472, metadata !"REG_BADBR", i64 10} ; [ DW_TAG_enumerator ] [REG_BADBR :: 10]
!50 = metadata !{i32 786472, metadata !"REG_ERANGE", i64 11} ; [ DW_TAG_enumerator ] [REG_ERANGE :: 11]
!51 = metadata !{i32 786472, metadata !"REG_ESPACE", i64 12} ; [ DW_TAG_enumerator ] [REG_ESPACE :: 12]
!52 = metadata !{i32 786472, metadata !"REG_BADRPT", i64 13} ; [ DW_TAG_enumerator ] [REG_BADRPT :: 13]
!53 = metadata !{i32 786472, metadata !"REG_EEND", i64 14} ; [ DW_TAG_enumerator ] [REG_EEND :: 14]
!54 = metadata !{i32 786472, metadata !"REG_ESIZE", i64 15} ; [ DW_TAG_enumerator ] [REG_ESIZE :: 15]
!55 = metadata !{i32 786472, metadata !"REG_ERPAREN", i64 16} ; [ DW_TAG_enumerator ] [REG_ERPAREN :: 16]
!56 = metadata !{i32 786436, metadata !57, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!57 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!59 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!60 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!61 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!62 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!63 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!64 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!65 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!66 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!67 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!68 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!69 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!70 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!71 = metadata !{i32 0}
!72 = metadata !{metadata !73, metadata !82, metadata !137, metadata !154, metadata !166, metadata !193, metadata !203, metadata !216, metadata !225, metadata !238, metadata !263, metadata !268, metadata !435, metadata !442, metadata !451, metadata !462, metadata !476, metadata !486, metadata !493, metadata !503, metadata !510, metadata !515, metadata !655, metadata !665, metadata !675, metadata !684}
!73 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_set_syntax", metadata !"re_set_syntax", metadata !"", i32 1005, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i64 (i64)* @re_set_syntax, null, null, metadata !79, i32 1007} ; [ DW_TAG_subprogram ] [line 1005] [def] [scope 1007] [re_set_syntax]
!74 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !77}
!77 = metadata !{i32 786454, metadata !1, null, metadata !"reg_syntax_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [reg_syntax_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!78 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{metadata !80, metadata !81}
!80 = metadata !{i32 786689, metadata !73, metadata !"syntax", metadata !74, i32 16778222, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [syntax] [line 1006]
!81 = metadata !{i32 786688, metadata !73, metadata !"ret", metadata !74, i32 1008, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1008]
!82 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_compile_fastmap", metadata !"re_compile_fastmap", metadata !"", i32 3204, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*)* @re_compile_fastmap, null, null, metadata !109, i32 3206} ; [ DW_TAG_subprogram ] [line 3204] [def] [scope 3206] [re_compile_fastmap]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86}
!85 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from re_pattern_buffer]
!87 = metadata !{i32 786451, metadata !36, null, metadata !"re_pattern_buffer", i32 323, i64 512, i64 64, i32 0, i32 0, null, metadata !88, i32 0, null, null} ; [ DW_TAG_structure_type ] [re_pattern_buffer] [line 323, size 512, align 64, offset 0] [from ]
!88 = metadata !{metadata !89, metadata !92, metadata !93, metadata !94, metadata !95, metadata !98, metadata !99, metadata !101, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!89 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"buffer", i32 329, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [buffer] [line 329, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!91 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!92 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"allocated", i32 332, i64 64, i64 64, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [allocated] [line 332, size 64, align 64, offset 64] [from long unsigned int]
!93 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"used", i32 335, i64 64, i64 64, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ] [used] [line 335, size 64, align 64, offset 128] [from long unsigned int]
!94 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"syntax", i32 338, i64 64, i64 64, i64 192, i32 0, metadata !77} ; [ DW_TAG_member ] [syntax] [line 338, size 64, align 64, offset 192] [from reg_syntax_t]
!95 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"fastmap", i32 343, i64 64, i64 64, i64 256, i32 0, metadata !96} ; [ DW_TAG_member ] [fastmap] [line 343, size 64, align 64, offset 256] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!97 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!98 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"translate", i32 349, i64 64, i64 64, i64 320, i32 0, metadata !96} ; [ DW_TAG_member ] [translate] [line 349, size 64, align 64, offset 320] [from ]
!99 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"re_nsub", i32 352, i64 64, i64 64, i64 384, i32 0, metadata !100} ; [ DW_TAG_member ] [re_nsub] [line 352, size 64, align 64, offset 384] [from size_t]
!100 = metadata !{i32 786454, metadata !36, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!101 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"can_be_null", i32 359, i64 1, i64 32, i64 448, i32 0, metadata !102} ; [ DW_TAG_member ] [can_be_null] [line 359, size 1, align 32, offset 448] [from unsigned int]
!102 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"regs_allocated", i32 368, i64 2, i64 32, i64 449, i32 0, metadata !102} ; [ DW_TAG_member ] [regs_allocated] [line 368, size 2, align 32, offset 449] [from unsigned int]
!104 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"fastmap_accurate", i32 372, i64 1, i64 32, i64 451, i32 0, metadata !102} ; [ DW_TAG_member ] [fastmap_accurate] [line 372, size 1, align 32, offset 451] [from unsigned int]
!105 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"no_sub", i32 376, i64 1, i64 32, i64 452, i32 0, metadata !102} ; [ DW_TAG_member ] [no_sub] [line 376, size 1, align 32, offset 452] [from unsigned int]
!106 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"not_bol", i32 380, i64 1, i64 32, i64 453, i32 0, metadata !102} ; [ DW_TAG_member ] [not_bol] [line 380, size 1, align 32, offset 453] [from unsigned int]
!107 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"not_eol", i32 383, i64 1, i64 32, i64 454, i32 0, metadata !102} ; [ DW_TAG_member ] [not_eol] [line 383, size 1, align 32, offset 454] [from unsigned int]
!108 = metadata !{i32 786445, metadata !36, metadata !87, metadata !"newline_anchor", i32 386, i64 1, i64 32, i64 455, i32 0, metadata !102} ; [ DW_TAG_member ] [newline_anchor] [line 386, size 1, align 32, offset 455] [from unsigned int]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !132, metadata !133}
!110 = metadata !{i32 786689, metadata !82, metadata !"bufp", metadata !74, i32 16780421, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3205]
!111 = metadata !{i32 786688, metadata !82, metadata !"j", metadata !74, i32 3207, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 3207]
!112 = metadata !{i32 786688, metadata !82, metadata !"k", metadata !74, i32 3207, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 3207]
!113 = metadata !{i32 786688, metadata !82, metadata !"fail_stack", metadata !74, i32 3209, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fail_stack] [line 3209]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"fail_stack_type", i32 1206, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [fail_stack_type] [line 1206, size 0, align 0, offset 0] [from ]
!115 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 1201, i64 128, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1201, size 128, align 64, offset 0] [from ]
!116 = metadata !{metadata !117, metadata !124, metadata !125}
!117 = metadata !{i32 786445, metadata !1, metadata !115, metadata !"stack", i32 1203, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [stack] [line 1203, size 64, align 64, offset 0] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fail_stack_elt_t]
!119 = metadata !{i32 786454, metadata !1, null, metadata !"fail_stack_elt_t", i32 1199, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [fail_stack_elt_t] [line 1199, size 0, align 0, offset 0] [from fail_stack_elt]
!120 = metadata !{i32 786455, metadata !1, null, metadata !"fail_stack_elt", i32 1193, i64 64, i64 64, i64 0, i32 0, null, metadata !121, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [fail_stack_elt] [line 1193, size 64, align 64, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !123}
!122 = metadata !{i32 786445, metadata !1, metadata !120, metadata !"pointer", i32 1195, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [pointer] [line 1195, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !1, metadata !120, metadata !"integer", i32 1196, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [integer] [line 1196, size 32, align 32, offset 0] [from int]
!124 = metadata !{i32 786445, metadata !1, metadata !115, metadata !"size", i32 1204, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [size] [line 1204, size 32, align 32, offset 64] [from unsigned int]
!125 = metadata !{i32 786445, metadata !1, metadata !115, metadata !"avail", i32 1205, i64 32, i64 32, i64 96, i32 0, metadata !102} ; [ DW_TAG_member ] [avail] [line 1205, size 32, align 32, offset 96] [from unsigned int]
!126 = metadata !{i32 786688, metadata !82, metadata !"fastmap", metadata !74, i32 3215, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fastmap] [line 3215]
!127 = metadata !{i32 786688, metadata !82, metadata !"pattern", metadata !74, i32 3216, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pattern] [line 3216]
!128 = metadata !{i32 786688, metadata !82, metadata !"p", metadata !74, i32 3217, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 3217]
!129 = metadata !{i32 786688, metadata !82, metadata !"pend", metadata !74, i32 3218, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pend] [line 3218]
!130 = metadata !{i32 786688, metadata !82, metadata !"path_can_be_null", metadata !74, i32 3230, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path_can_be_null] [line 3230]
!131 = metadata !{i32 786454, metadata !1, null, metadata !"boolean", i32 389, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [boolean] [line 389, size 0, align 0, offset 0] [from char]
!132 = metadata !{i32 786688, metadata !82, metadata !"succeed_n_p", metadata !74, i32 3233, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [succeed_n_p] [line 3233]
!133 = metadata !{i32 786688, metadata !134, metadata !"fastmap_newline", metadata !74, i32 3320, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fastmap_newline] [line 3320]
!134 = metadata !{i32 786443, metadata !1, metadata !135, i32 3319, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!135 = metadata !{i32 786443, metadata !1, metadata !136, i32 3266, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!136 = metadata !{i32 786443, metadata !1, metadata !82, i32 3243, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!137 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_set_registers", metadata !"re_set_registers", metadata !"", i32 3510, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (%struct.re_pattern_buffer*, %struct.re_registers*, i32, i32*, i32*)* @re_set_registers, null, null, metadata !148, i32 3515} ; [ DW_TAG_subprogram ] [line 3510] [def] [scope 3515] [re_set_registers]
!138 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{null, metadata !86, metadata !140, metadata !102, metadata !145, metadata !145}
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from re_registers]
!141 = metadata !{i32 786451, metadata !36, null, metadata !"re_registers", i32 399, i64 192, i64 64, i32 0, i32 0, null, metadata !142, i32 0, null, null} ; [ DW_TAG_structure_type ] [re_registers] [line 399, size 192, align 64, offset 0] [from ]
!142 = metadata !{metadata !143, metadata !144, metadata !147}
!143 = metadata !{i32 786445, metadata !36, metadata !141, metadata !"num_regs", i32 401, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [num_regs] [line 401, size 32, align 32, offset 0] [from unsigned int]
!144 = metadata !{i32 786445, metadata !36, metadata !141, metadata !"start", i32 402, i64 64, i64 64, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [start] [line 402, size 64, align 64, offset 64] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from regoff_t]
!146 = metadata !{i32 786454, metadata !36, null, metadata !"regoff_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [regoff_t] [line 394, size 0, align 0, offset 0] [from int]
!147 = metadata !{i32 786445, metadata !36, metadata !141, metadata !"end", i32 403, i64 64, i64 64, i64 128, i32 0, metadata !145} ; [ DW_TAG_member ] [end] [line 403, size 64, align 64, offset 128] [from ]
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!149 = metadata !{i32 786689, metadata !137, metadata !"bufp", metadata !74, i32 16780727, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3511]
!150 = metadata !{i32 786689, metadata !137, metadata !"regs", metadata !74, i32 33557944, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regs] [line 3512]
!151 = metadata !{i32 786689, metadata !137, metadata !"num_regs", metadata !74, i32 50335161, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_regs] [line 3513]
!152 = metadata !{i32 786689, metadata !137, metadata !"starts", metadata !74, i32 67112378, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [starts] [line 3514]
!153 = metadata !{i32 786689, metadata !137, metadata !"ends", metadata !74, i32 83889594, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ends] [line 3514]
!154 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_search", metadata !"re_search", metadata !"", i32 3540, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*)* @re_search, null, null, metadata !159, i32 3545} ; [ DW_TAG_subprogram ] [line 3540] [def] [scope 3545] [re_search]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{metadata !85, metadata !86, metadata !157, metadata !85, metadata !85, metadata !85, metadata !140}
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165}
!160 = metadata !{i32 786689, metadata !154, metadata !"bufp", metadata !74, i32 16780757, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3541]
!161 = metadata !{i32 786689, metadata !154, metadata !"string", metadata !74, i32 33557974, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 3542]
!162 = metadata !{i32 786689, metadata !154, metadata !"size", metadata !74, i32 50335191, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 3543]
!163 = metadata !{i32 786689, metadata !154, metadata !"startpos", metadata !74, i32 67112407, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [startpos] [line 3543]
!164 = metadata !{i32 786689, metadata !154, metadata !"range", metadata !74, i32 83889623, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [range] [line 3543]
!165 = metadata !{i32 786689, metadata !154, metadata !"regs", metadata !74, i32 100666840, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regs] [line 3544]
!166 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_search_2", metadata !"re_search_2", metadata !"", i32 3576, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i32, i8*, i32, i32, i32, %struct.re_registers*, i32)* @re_search_2, null, null, metadata !169, i32 3584} ; [ DW_TAG_subprogram ] [line 3576] [def] [scope 3584] [re_search_2]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{metadata !85, metadata !86, metadata !157, metadata !85, metadata !157, metadata !85, metadata !85, metadata !85, metadata !140, metadata !85}
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !189, metadata !190, metadata !191}
!170 = metadata !{i32 786689, metadata !166, metadata !"bufp", metadata !74, i32 16780793, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3577]
!171 = metadata !{i32 786689, metadata !166, metadata !"string1", metadata !74, i32 33558010, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string1] [line 3578]
!172 = metadata !{i32 786689, metadata !166, metadata !"size1", metadata !74, i32 50335227, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size1] [line 3579]
!173 = metadata !{i32 786689, metadata !166, metadata !"string2", metadata !74, i32 67112442, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string2] [line 3578]
!174 = metadata !{i32 786689, metadata !166, metadata !"size2", metadata !74, i32 83889659, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size2] [line 3579]
!175 = metadata !{i32 786689, metadata !166, metadata !"startpos", metadata !74, i32 100666876, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [startpos] [line 3580]
!176 = metadata !{i32 786689, metadata !166, metadata !"range", metadata !74, i32 117444093, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [range] [line 3581]
!177 = metadata !{i32 786689, metadata !166, metadata !"regs", metadata !74, i32 134221310, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regs] [line 3582]
!178 = metadata !{i32 786689, metadata !166, metadata !"stop", metadata !74, i32 150998527, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stop] [line 3583]
!179 = metadata !{i32 786688, metadata !166, metadata !"val", metadata !74, i32 3585, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 3585]
!180 = metadata !{i32 786688, metadata !166, metadata !"fastmap", metadata !74, i32 3586, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fastmap] [line 3586]
!181 = metadata !{i32 786688, metadata !166, metadata !"translate", metadata !74, i32 3587, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [translate] [line 3587]
!182 = metadata !{i32 786688, metadata !166, metadata !"total_size", metadata !74, i32 3588, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_size] [line 3588]
!183 = metadata !{i32 786688, metadata !166, metadata !"endpos", metadata !74, i32 3589, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endpos] [line 3589]
!184 = metadata !{i32 786688, metadata !185, metadata !"d", metadata !74, i32 3644, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 3644]
!185 = metadata !{i32 786443, metadata !1, metadata !186, i32 3643, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!186 = metadata !{i32 786443, metadata !1, metadata !187, i32 3641, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 3635, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!188 = metadata !{i32 786443, metadata !1, metadata !166, i32 3634, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!189 = metadata !{i32 786688, metadata !185, metadata !"lim", metadata !74, i32 3645, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 3645]
!190 = metadata !{i32 786688, metadata !185, metadata !"irange", metadata !74, i32 3646, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irange] [line 3646]
!191 = metadata !{i32 786688, metadata !192, metadata !"c", metadata !74, i32 3668, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 3668]
!192 = metadata !{i32 786443, metadata !1, metadata !186, i32 3667, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!193 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_match", metadata !"re_match", metadata !"", i32 3801, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*)* @re_match, null, null, metadata !196, i32 3806} ; [ DW_TAG_subprogram ] [line 3801] [def] [scope 3806] [re_match]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{metadata !85, metadata !86, metadata !157, metadata !85, metadata !85, metadata !140}
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!197 = metadata !{i32 786689, metadata !193, metadata !"bufp", metadata !74, i32 16781018, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3802]
!198 = metadata !{i32 786689, metadata !193, metadata !"string", metadata !74, i32 33558235, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 3803]
!199 = metadata !{i32 786689, metadata !193, metadata !"size", metadata !74, i32 50335452, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 3804]
!200 = metadata !{i32 786689, metadata !193, metadata !"pos", metadata !74, i32 67112668, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 3804]
!201 = metadata !{i32 786689, metadata !193, metadata !"regs", metadata !74, i32 83889885, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regs] [line 3805]
!202 = metadata !{i32 786688, metadata !193, metadata !"result", metadata !74, i32 3807, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 3807]
!203 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_match_2", metadata !"re_match_2", metadata !"", i32 3847, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i32, i8*, i32, i32, %struct.re_registers*, i32)* @re_match_2, null, null, metadata !206, i32 3854} ; [ DW_TAG_subprogram ] [line 3847] [def] [scope 3854] [re_match_2]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !85, metadata !86, metadata !157, metadata !85, metadata !157, metadata !85, metadata !85, metadata !140, metadata !85}
!206 = metadata !{metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215}
!207 = metadata !{i32 786689, metadata !203, metadata !"bufp", metadata !74, i32 16781064, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3848]
!208 = metadata !{i32 786689, metadata !203, metadata !"string1", metadata !74, i32 33558281, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string1] [line 3849]
!209 = metadata !{i32 786689, metadata !203, metadata !"size1", metadata !74, i32 50335498, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size1] [line 3850]
!210 = metadata !{i32 786689, metadata !203, metadata !"string2", metadata !74, i32 67112713, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string2] [line 3849]
!211 = metadata !{i32 786689, metadata !203, metadata !"size2", metadata !74, i32 83889930, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size2] [line 3850]
!212 = metadata !{i32 786689, metadata !203, metadata !"pos", metadata !74, i32 100667147, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 3851]
!213 = metadata !{i32 786689, metadata !203, metadata !"regs", metadata !74, i32 117444364, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regs] [line 3852]
!214 = metadata !{i32 786689, metadata !203, metadata !"stop", metadata !74, i32 134221581, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stop] [line 3853]
!215 = metadata !{i32 786688, metadata !203, metadata !"result", metadata !74, i32 3855, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 3855]
!216 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_compile_pattern", metadata !"re_compile_pattern", metadata !"", i32 5524, metadata !217, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i8*, i64, %struct.re_pattern_buffer*)* @re_compile_pattern, null, null, metadata !219, i32 5528} ; [ DW_TAG_subprogram ] [line 5524] [def] [scope 5528] [re_compile_pattern]
!217 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!218 = metadata !{metadata !157, metadata !157, metadata !100, metadata !86}
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223}
!220 = metadata !{i32 786689, metadata !216, metadata !"pattern", metadata !74, i32 16782741, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pattern] [line 5525]
!221 = metadata !{i32 786689, metadata !216, metadata !"length", metadata !74, i32 33559958, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 5526]
!222 = metadata !{i32 786689, metadata !216, metadata !"bufp", metadata !74, i32 50337175, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 5527]
!223 = metadata !{i32 786688, metadata !216, metadata !"ret", metadata !74, i32 5529, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 5529]
!224 = metadata !{i32 786454, metadata !1, null, metadata !"reg_errcode_t", i32 311, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [reg_errcode_t] [line 311, size 0, align 0, offset 0] [from ]
!225 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"regcomp", metadata !"regcomp", metadata !"", i32 5664, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i32)* @regcomp, null, null, metadata !230, i32 5668} ; [ DW_TAG_subprogram ] [line 5664] [def] [scope 5668] [regcomp]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{metadata !85, metadata !228, metadata !157, metadata !85}
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from regex_t]
!229 = metadata !{i32 786454, metadata !1, null, metadata !"regex_t", i32 391, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [regex_t] [line 391, size 0, align 0, offset 0] [from re_pattern_buffer]
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236}
!231 = metadata !{i32 786689, metadata !225, metadata !"preg", metadata !74, i32 16782881, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [preg] [line 5665]
!232 = metadata !{i32 786689, metadata !225, metadata !"pattern", metadata !74, i32 33560098, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pattern] [line 5666]
!233 = metadata !{i32 786689, metadata !225, metadata !"cflags", metadata !74, i32 50337315, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cflags] [line 5667]
!234 = metadata !{i32 786688, metadata !225, metadata !"ret", metadata !74, i32 5669, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 5669]
!235 = metadata !{i32 786688, metadata !225, metadata !"syntax", metadata !74, i32 5670, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [syntax] [line 5670]
!236 = metadata !{i32 786688, metadata !237, metadata !"i", metadata !74, i32 5684, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 5684]
!237 = metadata !{i32 786443, metadata !1, metadata !225, i32 5683, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!238 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"regexec", metadata !"regexec", metadata !"", i32 5755, metadata !239, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32)* @regexec, null, null, metadata !249, i32 5761} ; [ DW_TAG_subprogram ] [line 5755] [def] [scope 5761] [regexec]
!239 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!240 = metadata !{metadata !85, metadata !241, metadata !157, metadata !100, metadata !243, metadata !85}
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!242 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from regex_t]
!243 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from regmatch_t]
!244 = metadata !{i32 786454, metadata !1, null, metadata !"regmatch_t", i32 422, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [regmatch_t] [line 422, size 0, align 0, offset 0] [from ]
!245 = metadata !{i32 786451, metadata !36, null, metadata !"", i32 418, i64 64, i64 32, i32 0, i32 0, null, metadata !246, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 418, size 64, align 32, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !248}
!247 = metadata !{i32 786445, metadata !36, metadata !245, metadata !"rm_so", i32 420, i64 32, i64 32, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ] [rm_so] [line 420, size 32, align 32, offset 0] [from regoff_t]
!248 = metadata !{i32 786445, metadata !36, metadata !245, metadata !"rm_eo", i32 421, i64 32, i64 32, i64 32, i32 0, metadata !146} ; [ DW_TAG_member ] [rm_eo] [line 421, size 32, align 32, offset 32] [from regoff_t]
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260}
!250 = metadata !{i32 786689, metadata !238, metadata !"preg", metadata !74, i32 16782972, metadata !241, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [preg] [line 5756]
!251 = metadata !{i32 786689, metadata !238, metadata !"string", metadata !74, i32 33560189, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 5757]
!252 = metadata !{i32 786689, metadata !238, metadata !"nmatch", metadata !74, i32 50337406, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmatch] [line 5758]
!253 = metadata !{i32 786689, metadata !238, metadata !"pmatch", metadata !74, i32 67114623, metadata !243, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmatch] [line 5759]
!254 = metadata !{i32 786689, metadata !238, metadata !"eflags", metadata !74, i32 83891840, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eflags] [line 5760]
!255 = metadata !{i32 786688, metadata !238, metadata !"ret", metadata !74, i32 5762, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 5762]
!256 = metadata !{i32 786688, metadata !238, metadata !"regs", metadata !74, i32 5763, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regs] [line 5763]
!257 = metadata !{i32 786688, metadata !238, metadata !"private_preg", metadata !74, i32 5764, metadata !229, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [private_preg] [line 5764]
!258 = metadata !{i32 786688, metadata !238, metadata !"len", metadata !74, i32 5765, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 5765]
!259 = metadata !{i32 786688, metadata !238, metadata !"want_reg_info", metadata !74, i32 5766, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [want_reg_info] [line 5766]
!260 = metadata !{i32 786688, metadata !261, metadata !"r", metadata !74, i32 5797, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 5797]
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 5796, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!262 = metadata !{i32 786443, metadata !1, metadata !238, i32 5794, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!263 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"regfree", metadata !"regfree", metadata !"", i32 5871, metadata !264, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (%struct.re_pattern_buffer*)* @regfree, null, null, metadata !266, i32 5873} ; [ DW_TAG_subprogram ] [line 5871] [def] [scope 5873] [regfree]
!264 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!265 = metadata !{null, metadata !228}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 786689, metadata !263, metadata !"preg", metadata !74, i32 16783088, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [preg] [line 5872]
!268 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"regex_compile", metadata !"regex_compile", metadata !"", i32 1896, metadata !269, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i8*, i64, i64, %struct.re_pattern_buffer*)* @regex_compile, null, null, metadata !271, i32 1901} ; [ DW_TAG_subprogram ] [line 1896] [local] [def] [scope 1901] [regex_compile]
!269 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !224, metadata !157, metadata !100, metadata !77, metadata !86}
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !314, metadata !318, metadata !320, metadata !321, metadata !322, metadata !325, metadata !327, metadata !330, metadata !333, metadata !335, metadata !337, metadata !340, metadata !343, metadata !347, metadata !349, metadata !354, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !373, metadata !377, metadata !379, metadata !381, metadata !384, metadata !386, metadata !388, metadata !390, metadata !391, metadata !394, metadata !396, metadata !398, metadata !401, metadata !404, metadata !407, metadata !410, metadata !413, metadata !416, metadata !419, metadata !422, metadata !425, metadata !429, metadata !432}
!272 = metadata !{i32 786689, metadata !268, metadata !"pattern", metadata !74, i32 16779113, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pattern] [line 1897]
!273 = metadata !{i32 786689, metadata !268, metadata !"size", metadata !74, i32 33556330, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1898]
!274 = metadata !{i32 786689, metadata !268, metadata !"syntax", metadata !74, i32 50333547, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [syntax] [line 1899]
!275 = metadata !{i32 786689, metadata !268, metadata !"bufp", metadata !74, i32 67110764, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 1900]
!276 = metadata !{i32 786688, metadata !268, metadata !"c", metadata !74, i32 1905, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1905]
!277 = metadata !{i32 786688, metadata !268, metadata !"c1", metadata !74, i32 1905, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 1905]
!278 = metadata !{i32 786688, metadata !268, metadata !"p1", metadata !74, i32 1908, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 1908]
!279 = metadata !{i32 786688, metadata !268, metadata !"b", metadata !74, i32 1911, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1911]
!280 = metadata !{i32 786688, metadata !268, metadata !"compile_stack", metadata !74, i32 1914, metadata !281, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [compile_stack] [line 1914]
!281 = metadata !{i32 786454, metadata !1, null, metadata !"compile_stack_type", i32 1758, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_typedef ] [compile_stack_type] [line 1758, size 0, align 0, offset 0] [from ]
!282 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 1753, i64 128, i64 64, i32 0, i32 0, null, metadata !283, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1753, size 128, align 64, offset 0] [from ]
!283 = metadata !{metadata !284, metadata !297, metadata !298}
!284 = metadata !{i32 786445, metadata !1, metadata !282, metadata !"stack", i32 1755, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_member ] [stack] [line 1755, size 64, align 64, offset 0] [from ]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from compile_stack_elt_t]
!286 = metadata !{i32 786454, metadata !1, null, metadata !"compile_stack_elt_t", i32 1750, i64 0, i64 0, i64 0, i32 0, metadata !287} ; [ DW_TAG_typedef ] [compile_stack_elt_t] [line 1750, size 0, align 0, offset 0] [from ]
!287 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 1743, i64 320, i64 64, i32 0, i32 0, null, metadata !288, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1743, size 320, align 64, offset 0] [from ]
!288 = metadata !{metadata !289, metadata !292, metadata !293, metadata !294, metadata !295}
!289 = metadata !{i32 786445, metadata !1, metadata !287, metadata !"begalt_offset", i32 1745, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ] [begalt_offset] [line 1745, size 64, align 64, offset 0] [from pattern_offset_t]
!290 = metadata !{i32 786454, metadata !1, null, metadata !"pattern_offset_t", i32 1741, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_typedef ] [pattern_offset_t] [line 1741, size 0, align 0, offset 0] [from long int]
!291 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!292 = metadata !{i32 786445, metadata !1, metadata !287, metadata !"fixup_alt_jump", i32 1746, i64 64, i64 64, i64 64, i32 0, metadata !290} ; [ DW_TAG_member ] [fixup_alt_jump] [line 1746, size 64, align 64, offset 64] [from pattern_offset_t]
!293 = metadata !{i32 786445, metadata !1, metadata !287, metadata !"inner_group_offset", i32 1747, i64 64, i64 64, i64 128, i32 0, metadata !290} ; [ DW_TAG_member ] [inner_group_offset] [line 1747, size 64, align 64, offset 128] [from pattern_offset_t]
!294 = metadata !{i32 786445, metadata !1, metadata !287, metadata !"laststart_offset", i32 1748, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [laststart_offset] [line 1748, size 64, align 64, offset 192] [from pattern_offset_t]
!295 = metadata !{i32 786445, metadata !1, metadata !287, metadata !"regnum", i32 1749, i64 32, i64 32, i64 256, i32 0, metadata !296} ; [ DW_TAG_member ] [regnum] [line 1749, size 32, align 32, offset 256] [from regnum_t]
!296 = metadata !{i32 786454, metadata !1, null, metadata !"regnum_t", i32 1733, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [regnum_t] [line 1733, size 0, align 0, offset 0] [from unsigned int]
!297 = metadata !{i32 786445, metadata !1, metadata !282, metadata !"size", i32 1756, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [size] [line 1756, size 32, align 32, offset 64] [from unsigned int]
!298 = metadata !{i32 786445, metadata !1, metadata !282, metadata !"avail", i32 1757, i64 32, i64 32, i64 96, i32 0, metadata !102} ; [ DW_TAG_member ] [avail] [line 1757, size 32, align 32, offset 96] [from unsigned int]
!299 = metadata !{i32 786688, metadata !268, metadata !"p", metadata !74, i32 1917, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1917]
!300 = metadata !{i32 786688, metadata !268, metadata !"pend", metadata !74, i32 1918, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pend] [line 1918]
!301 = metadata !{i32 786688, metadata !268, metadata !"translate", metadata !74, i32 1921, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [translate] [line 1921]
!302 = metadata !{i32 786688, metadata !268, metadata !"pending_exact", metadata !74, i32 1927, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pending_exact] [line 1927]
!303 = metadata !{i32 786688, metadata !268, metadata !"laststart", metadata !74, i32 1932, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [laststart] [line 1932]
!304 = metadata !{i32 786688, metadata !268, metadata !"begalt", metadata !74, i32 1935, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [begalt] [line 1935]
!305 = metadata !{i32 786688, metadata !268, metadata !"beg_interval", metadata !74, i32 1939, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beg_interval] [line 1939]
!306 = metadata !{i32 786688, metadata !268, metadata !"fixup_alt_jump", metadata !74, i32 1944, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fixup_alt_jump] [line 1944]
!307 = metadata !{i32 786688, metadata !268, metadata !"regnum", metadata !74, i32 1949, metadata !296, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regnum] [line 1949]
!308 = metadata !{i32 786688, metadata !309, metadata !"old_buffer", metadata !74, i32 2023, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2023]
!309 = metadata !{i32 786443, metadata !1, metadata !310, i32 2023, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!310 = metadata !{i32 786443, metadata !1, metadata !311, i32 2023, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!311 = metadata !{i32 786443, metadata !1, metadata !312, i32 2016, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!312 = metadata !{i32 786443, metadata !1, metadata !313, i32 2014, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!313 = metadata !{i32 786443, metadata !1, metadata !268, i32 2010, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!314 = metadata !{i32 786688, metadata !315, metadata !"old_buffer", metadata !74, i32 2038, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2038]
!315 = metadata !{i32 786443, metadata !1, metadata !316, i32 2038, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!316 = metadata !{i32 786443, metadata !1, metadata !317, i32 2038, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!317 = metadata !{i32 786443, metadata !1, metadata !312, i32 2031, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!318 = metadata !{i32 786688, metadata !319, metadata !"keep_string_p", metadata !74, i32 2063, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keep_string_p] [line 2063]
!319 = metadata !{i32 786443, metadata !1, metadata !312, i32 2061, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!320 = metadata !{i32 786688, metadata !319, metadata !"zero_times_ok", metadata !74, i32 2066, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zero_times_ok] [line 2066]
!321 = metadata !{i32 786688, metadata !319, metadata !"many_times_ok", metadata !74, i32 2066, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [many_times_ok] [line 2066]
!322 = metadata !{i32 786688, metadata !323, metadata !"old_buffer", metadata !74, i32 2131, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2131]
!323 = metadata !{i32 786443, metadata !1, metadata !324, i32 2131, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!324 = metadata !{i32 786443, metadata !1, metadata !319, i32 2118, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!325 = metadata !{i32 786688, metadata !326, metadata !"old_buffer", metadata !74, i32 2156, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2156]
!326 = metadata !{i32 786443, metadata !1, metadata !319, i32 2156, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!327 = metadata !{i32 786688, metadata !328, metadata !"old_buffer", metadata !74, i32 2170, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2170]
!328 = metadata !{i32 786443, metadata !1, metadata !329, i32 2170, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!329 = metadata !{i32 786443, metadata !1, metadata !319, i32 2164, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!330 = metadata !{i32 786688, metadata !331, metadata !"old_buffer", metadata !74, i32 2180, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2180]
!331 = metadata !{i32 786443, metadata !1, metadata !332, i32 2180, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!332 = metadata !{i32 786443, metadata !1, metadata !312, i32 2180, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!333 = metadata !{i32 786688, metadata !334, metadata !"had_char_class", metadata !74, i32 2186, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [had_char_class] [line 2186]
!334 = metadata !{i32 786443, metadata !1, metadata !312, i32 2185, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!335 = metadata !{i32 786688, metadata !336, metadata !"old_buffer", metadata !74, i32 2192, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2192]
!336 = metadata !{i32 786443, metadata !1, metadata !334, i32 2192, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!337 = metadata !{i32 786688, metadata !338, metadata !"old_buffer", metadata !74, i32 2198, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2198]
!338 = metadata !{i32 786443, metadata !1, metadata !339, i32 2198, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!339 = metadata !{i32 786443, metadata !1, metadata !334, i32 2198, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!340 = metadata !{i32 786688, metadata !341, metadata !"old_buffer", metadata !74, i32 2206, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2206]
!341 = metadata !{i32 786443, metadata !1, metadata !342, i32 2206, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!342 = metadata !{i32 786443, metadata !1, metadata !334, i32 2206, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!343 = metadata !{i32 786688, metadata !344, metadata !"ret", metadata !74, i32 2253, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 2253]
!344 = metadata !{i32 786443, metadata !1, metadata !345, i32 2252, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!345 = metadata !{i32 786443, metadata !1, metadata !346, i32 2218, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!346 = metadata !{i32 786443, metadata !1, metadata !334, i32 2217, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!347 = metadata !{i32 786688, metadata !348, metadata !"ret", metadata !74, i32 2260, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 2260]
!348 = metadata !{i32 786443, metadata !1, metadata !345, i32 2259, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!349 = metadata !{i32 786688, metadata !350, metadata !"str", metadata !74, i32 2274, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 2274]
!350 = metadata !{i32 786443, metadata !1, metadata !345, i32 2273, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !97, metadata !352, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!352 = metadata !{metadata !353}
!353 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!354 = metadata !{i32 786688, metadata !355, metadata !"ch", metadata !74, i32 2333, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 2333]
!355 = metadata !{i32 786443, metadata !1, metadata !350, i32 2299, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!356 = metadata !{i32 786688, metadata !355, metadata !"is_alnum", metadata !74, i32 2334, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_alnum] [line 2334]
!357 = metadata !{i32 786688, metadata !355, metadata !"is_alpha", metadata !74, i32 2335, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_alpha] [line 2335]
!358 = metadata !{i32 786688, metadata !355, metadata !"is_blank", metadata !74, i32 2336, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_blank] [line 2336]
!359 = metadata !{i32 786688, metadata !355, metadata !"is_cntrl", metadata !74, i32 2337, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_cntrl] [line 2337]
!360 = metadata !{i32 786688, metadata !355, metadata !"is_digit", metadata !74, i32 2338, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_digit] [line 2338]
!361 = metadata !{i32 786688, metadata !355, metadata !"is_graph", metadata !74, i32 2339, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_graph] [line 2339]
!362 = metadata !{i32 786688, metadata !355, metadata !"is_lower", metadata !74, i32 2340, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_lower] [line 2340]
!363 = metadata !{i32 786688, metadata !355, metadata !"is_print", metadata !74, i32 2341, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_print] [line 2341]
!364 = metadata !{i32 786688, metadata !355, metadata !"is_punct", metadata !74, i32 2342, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_punct] [line 2342]
!365 = metadata !{i32 786688, metadata !355, metadata !"is_space", metadata !74, i32 2343, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_space] [line 2343]
!366 = metadata !{i32 786688, metadata !355, metadata !"is_upper", metadata !74, i32 2344, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_upper] [line 2344]
!367 = metadata !{i32 786688, metadata !355, metadata !"is_xdigit", metadata !74, i32 2345, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_xdigit] [line 2345]
!368 = metadata !{i32 786688, metadata !369, metadata !"old_buffer", metadata !74, i32 2487, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2487]
!369 = metadata !{i32 786443, metadata !1, metadata !370, i32 2487, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!370 = metadata !{i32 786443, metadata !1, metadata !371, i32 2487, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!371 = metadata !{i32 786443, metadata !1, metadata !372, i32 2485, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!372 = metadata !{i32 786443, metadata !1, metadata !312, i32 2452, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!373 = metadata !{i32 786688, metadata !374, metadata !"old_buffer", metadata !74, i32 2519, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2519]
!374 = metadata !{i32 786443, metadata !1, metadata !375, i32 2519, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!375 = metadata !{i32 786443, metadata !1, metadata !376, i32 2519, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!376 = metadata !{i32 786443, metadata !1, metadata !372, i32 2515, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!377 = metadata !{i32 786688, metadata !378, metadata !"this_group_regnum", metadata !74, i32 2542, metadata !296, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_group_regnum] [line 2542]
!378 = metadata !{i32 786443, metadata !1, metadata !372, i32 2538, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!379 = metadata !{i32 786688, metadata !380, metadata !"inner_group_loc", metadata !74, i32 2561, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inner_group_loc] [line 2561]
!380 = metadata !{i32 786443, metadata !1, metadata !378, i32 2560, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!381 = metadata !{i32 786688, metadata !382, metadata !"old_buffer", metadata !74, i32 2565, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2565]
!382 = metadata !{i32 786443, metadata !1, metadata !383, i32 2565, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!383 = metadata !{i32 786443, metadata !1, metadata !380, i32 2565, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!384 = metadata !{i32 786688, metadata !385, metadata !"old_buffer", metadata !74, i32 2581, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2581]
!385 = metadata !{i32 786443, metadata !1, metadata !372, i32 2581, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!386 = metadata !{i32 786688, metadata !387, metadata !"old_buffer", metadata !74, i32 2609, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2609]
!387 = metadata !{i32 786443, metadata !1, metadata !372, i32 2609, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!388 = metadata !{i32 786688, metadata !389, metadata !"lower_bound", metadata !74, i32 2631, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lower_bound] [line 2631]
!389 = metadata !{i32 786443, metadata !1, metadata !372, i32 2627, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!390 = metadata !{i32 786688, metadata !389, metadata !"upper_bound", metadata !74, i32 2631, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upper_bound] [line 2631]
!391 = metadata !{i32 786688, metadata !392, metadata !"old_buffer", metadata !74, i32 2696, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2696]
!392 = metadata !{i32 786443, metadata !1, metadata !393, i32 2696, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!393 = metadata !{i32 786443, metadata !1, metadata !389, i32 2695, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!394 = metadata !{i32 786688, metadata !395, metadata !"nbytes", metadata !74, i32 2713, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 2713]
!395 = metadata !{i32 786443, metadata !1, metadata !389, i32 2711, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!396 = metadata !{i32 786688, metadata !397, metadata !"old_buffer", metadata !74, i32 2715, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2715]
!397 = metadata !{i32 786443, metadata !1, metadata !395, i32 2715, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!398 = metadata !{i32 786688, metadata !399, metadata !"old_buffer", metadata !74, i32 2811, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2811]
!399 = metadata !{i32 786443, metadata !1, metadata !400, i32 2811, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!400 = metadata !{i32 786443, metadata !1, metadata !372, i32 2811, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!401 = metadata !{i32 786688, metadata !402, metadata !"old_buffer", metadata !74, i32 2819, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2819]
!402 = metadata !{i32 786443, metadata !1, metadata !403, i32 2819, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!403 = metadata !{i32 786443, metadata !1, metadata !372, i32 2819, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!404 = metadata !{i32 786688, metadata !405, metadata !"old_buffer", metadata !74, i32 2826, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2826]
!405 = metadata !{i32 786443, metadata !1, metadata !406, i32 2826, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!406 = metadata !{i32 786443, metadata !1, metadata !372, i32 2826, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!407 = metadata !{i32 786688, metadata !408, metadata !"old_buffer", metadata !74, i32 2832, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2832]
!408 = metadata !{i32 786443, metadata !1, metadata !409, i32 2832, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!409 = metadata !{i32 786443, metadata !1, metadata !372, i32 2832, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!410 = metadata !{i32 786688, metadata !411, metadata !"old_buffer", metadata !74, i32 2838, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2838]
!411 = metadata !{i32 786443, metadata !1, metadata !412, i32 2838, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!412 = metadata !{i32 786443, metadata !1, metadata !372, i32 2838, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!413 = metadata !{i32 786688, metadata !414, metadata !"old_buffer", metadata !74, i32 2844, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2844]
!414 = metadata !{i32 786443, metadata !1, metadata !415, i32 2844, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!415 = metadata !{i32 786443, metadata !1, metadata !372, i32 2844, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!416 = metadata !{i32 786688, metadata !417, metadata !"old_buffer", metadata !74, i32 2850, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2850]
!417 = metadata !{i32 786443, metadata !1, metadata !418, i32 2850, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!418 = metadata !{i32 786443, metadata !1, metadata !372, i32 2850, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!419 = metadata !{i32 786688, metadata !420, metadata !"old_buffer", metadata !74, i32 2856, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2856]
!420 = metadata !{i32 786443, metadata !1, metadata !421, i32 2856, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!421 = metadata !{i32 786443, metadata !1, metadata !372, i32 2856, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!422 = metadata !{i32 786688, metadata !423, metadata !"old_buffer", metadata !74, i32 2874, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2874]
!423 = metadata !{i32 786443, metadata !1, metadata !424, i32 2874, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!424 = metadata !{i32 786443, metadata !1, metadata !372, i32 2874, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!425 = metadata !{i32 786688, metadata !426, metadata !"old_buffer", metadata !74, i32 2922, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2922]
!426 = metadata !{i32 786443, metadata !1, metadata !427, i32 2922, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!427 = metadata !{i32 786443, metadata !1, metadata !428, i32 2922, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!428 = metadata !{i32 786443, metadata !1, metadata !312, i32 2917, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!429 = metadata !{i32 786688, metadata !430, metadata !"old_buffer", metadata !74, i32 2926, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2926]
!430 = metadata !{i32 786443, metadata !1, metadata !431, i32 2926, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!431 = metadata !{i32 786443, metadata !1, metadata !312, i32 2926, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!432 = metadata !{i32 786688, metadata !433, metadata !"old_buffer", metadata !74, i32 2944, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_buffer] [line 2944]
!433 = metadata !{i32 786443, metadata !1, metadata !434, i32 2944, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!434 = metadata !{i32 786443, metadata !1, metadata !268, i32 2944, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!435 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"group_in_compile_stack", metadata !"group_in_compile_stack", metadata !"", i32 3117, metadata !436, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !438, i32 3120} ; [ DW_TAG_subprogram ] [line 3117] [local] [def] [scope 3120] [group_in_compile_stack]
!436 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!437 = metadata !{metadata !131, metadata !281, metadata !296}
!438 = metadata !{metadata !439, metadata !440, metadata !441}
!439 = metadata !{i32 786689, metadata !435, metadata !"compile_stack", metadata !74, i32 16780334, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [compile_stack] [line 3118]
!440 = metadata !{i32 786689, metadata !435, metadata !"regnum", metadata !74, i32 33557551, metadata !296, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regnum] [line 3119]
!441 = metadata !{i32 786688, metadata !435, metadata !"this_element", metadata !74, i32 3121, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_element] [line 3121]
!442 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"store_op2", metadata !"store_op2", metadata !"", i32 3021, metadata !443, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !446, i32 3025} ; [ DW_TAG_subprogram ] [line 3021] [local] [def] [scope 3025] [store_op2]
!443 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!444 = metadata !{null, metadata !445, metadata !90, metadata !85, metadata !85}
!445 = metadata !{i32 786454, metadata !1, null, metadata !"re_opcode_t", i32 537, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [re_opcode_t] [line 537, size 0, align 0, offset 0] [from ]
!446 = metadata !{metadata !447, metadata !448, metadata !449, metadata !450}
!447 = metadata !{i32 786689, metadata !442, metadata !"op", metadata !74, i32 16780238, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 3022]
!448 = metadata !{i32 786689, metadata !442, metadata !"loc", metadata !74, i32 33557455, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 3023]
!449 = metadata !{i32 786689, metadata !442, metadata !"arg1", metadata !74, i32 50334672, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg1] [line 3024]
!450 = metadata !{i32 786689, metadata !442, metadata !"arg2", metadata !74, i32 67111888, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg2] [line 3024]
!451 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"insert_op2", metadata !"insert_op2", metadata !"", i32 3055, metadata !452, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !454, i32 3060} ; [ DW_TAG_subprogram ] [line 3055] [local] [def] [scope 3060] [insert_op2]
!452 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!453 = metadata !{null, metadata !445, metadata !90, metadata !85, metadata !85, metadata !90}
!454 = metadata !{metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461}
!455 = metadata !{i32 786689, metadata !451, metadata !"op", metadata !74, i32 16780272, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 3056]
!456 = metadata !{i32 786689, metadata !451, metadata !"loc", metadata !74, i32 33557489, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 3057]
!457 = metadata !{i32 786689, metadata !451, metadata !"arg1", metadata !74, i32 50334706, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg1] [line 3058]
!458 = metadata !{i32 786689, metadata !451, metadata !"arg2", metadata !74, i32 67111922, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg2] [line 3058]
!459 = metadata !{i32 786689, metadata !451, metadata !"end", metadata !74, i32 83889139, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 3059]
!460 = metadata !{i32 786688, metadata !451, metadata !"pfrom", metadata !74, i32 3061, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pfrom] [line 3061]
!461 = metadata !{i32 786688, metadata !451, metadata !"pto", metadata !74, i32 3062, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pto] [line 3062]
!462 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"compile_range", metadata !"compile_range", metadata !"", i32 3145, metadata !463, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i8**, i8*, i8*, i64, i8*)* @compile_range, null, null, metadata !466, i32 3150} ; [ DW_TAG_subprogram ] [line 3145] [local] [def] [scope 3150] [compile_range]
!463 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!464 = metadata !{metadata !224, metadata !465, metadata !157, metadata !96, metadata !77, metadata !90}
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!466 = metadata !{metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475}
!467 = metadata !{i32 786689, metadata !462, metadata !"p_ptr", metadata !74, i32 16780362, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_ptr] [line 3146]
!468 = metadata !{i32 786689, metadata !462, metadata !"pend", metadata !74, i32 33557578, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pend] [line 3146]
!469 = metadata !{i32 786689, metadata !462, metadata !"translate", metadata !74, i32 50334795, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [translate] [line 3147]
!470 = metadata !{i32 786689, metadata !462, metadata !"syntax", metadata !74, i32 67112012, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [syntax] [line 3148]
!471 = metadata !{i32 786689, metadata !462, metadata !"b", metadata !74, i32 83889229, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 3149]
!472 = metadata !{i32 786688, metadata !462, metadata !"this_char", metadata !74, i32 3151, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_char] [line 3151]
!473 = metadata !{i32 786688, metadata !462, metadata !"p", metadata !74, i32 3153, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 3153]
!474 = metadata !{i32 786688, metadata !462, metadata !"range_start", metadata !74, i32 3154, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range_start] [line 3154]
!475 = metadata !{i32 786688, metadata !462, metadata !"range_end", metadata !74, i32 3154, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range_end] [line 3154]
!476 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"insert_op1", metadata !"insert_op1", metadata !"", i32 3036, metadata !477, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !479, i32 3041} ; [ DW_TAG_subprogram ] [line 3036] [local] [def] [scope 3041] [insert_op1]
!477 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!478 = metadata !{null, metadata !445, metadata !90, metadata !85, metadata !90}
!479 = metadata !{metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485}
!480 = metadata !{i32 786689, metadata !476, metadata !"op", metadata !74, i32 16780253, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 3037]
!481 = metadata !{i32 786689, metadata !476, metadata !"loc", metadata !74, i32 33557470, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 3038]
!482 = metadata !{i32 786689, metadata !476, metadata !"arg", metadata !74, i32 50334687, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 3039]
!483 = metadata !{i32 786689, metadata !476, metadata !"end", metadata !74, i32 67111904, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 3040]
!484 = metadata !{i32 786688, metadata !476, metadata !"pfrom", metadata !74, i32 3042, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pfrom] [line 3042]
!485 = metadata !{i32 786688, metadata !476, metadata !"pto", metadata !74, i32 3043, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pto] [line 3043]
!486 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"store_op1", metadata !"store_op1", metadata !"", i32 3008, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !489, i32 3012} ; [ DW_TAG_subprogram ] [line 3008] [local] [def] [scope 3012] [store_op1]
!487 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!488 = metadata !{null, metadata !445, metadata !90, metadata !85}
!489 = metadata !{metadata !490, metadata !491, metadata !492}
!490 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!491 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!492 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!493 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"at_endline_loc_p", metadata !"at_endline_loc_p", metadata !"", i32 3095, metadata !494, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !496, i32 3098} ; [ DW_TAG_subprogram ] [line 3095] [local] [def] [scope 3098] [at_endline_loc_p]
!494 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!495 = metadata !{metadata !131, metadata !157, metadata !157, metadata !77}
!496 = metadata !{metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502}
!497 = metadata !{i32 786689, metadata !493, metadata !"p", metadata !74, i32 16780312, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 3096]
!498 = metadata !{i32 786689, metadata !493, metadata !"pend", metadata !74, i32 33557528, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pend] [line 3096]
!499 = metadata !{i32 786689, metadata !493, metadata !"syntax", metadata !74, i32 50334745, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [syntax] [line 3097]
!500 = metadata !{i32 786688, metadata !493, metadata !"next", metadata !74, i32 3099, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 3099]
!501 = metadata !{i32 786688, metadata !493, metadata !"next_backslash", metadata !74, i32 3100, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next_backslash] [line 3100]
!502 = metadata !{i32 786688, metadata !493, metadata !"next_next", metadata !74, i32 3101, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next_next] [line 3101]
!503 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"at_begline_loc_p", metadata !"at_begline_loc_p", metadata !"", i32 3076, metadata !494, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !504, i32 3079} ; [ DW_TAG_subprogram ] [line 3076] [local] [def] [scope 3079] [at_begline_loc_p]
!504 = metadata !{metadata !505, metadata !506, metadata !507, metadata !508, metadata !509}
!505 = metadata !{i32 786689, metadata !503, metadata !"pattern", metadata !74, i32 16780293, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pattern] [line 3077]
!506 = metadata !{i32 786689, metadata !503, metadata !"p", metadata !74, i32 33557509, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 3077]
!507 = metadata !{i32 786689, metadata !503, metadata !"syntax", metadata !74, i32 50334726, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [syntax] [line 3078]
!508 = metadata !{i32 786688, metadata !503, metadata !"prev", metadata !74, i32 3080, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 3080]
!509 = metadata !{i32 786688, metadata !503, metadata !"prev_prev_backslash", metadata !74, i32 3081, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev_prev_backslash] [line 3081]
!510 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"init_syntax_once", metadata !"init_syntax_once", metadata !"", i32 191, metadata !511, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !513, i32 192} ; [ DW_TAG_subprogram ] [line 191] [local] [def] [scope 192] [init_syntax_once]
!511 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!512 = metadata !{null}
!513 = metadata !{metadata !514}
!514 = metadata !{i32 786688, metadata !510, metadata !"c", metadata !74, i32 193, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 193]
!515 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"re_match_2_internal", metadata !"re_match_2_internal", metadata !"", i32 3871, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.re_pattern_buffer*, i8*, i32, i8*, i32, i32, %struct.re_registers*, i32)* @re_match_2_internal, null, null, metadata !516, i32 3878} ; [ DW_TAG_subprogram ] [line 3871] [local] [def] [scope 3878] [re_match_2_internal]
!516 = metadata !{metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !571, metadata !572, metadata !576, metadata !579, metadata !581, metadata !582, metadata !585, metadata !587, metadata !589, metadata !592, metadata !594, metadata !595, metadata !597, metadata !598, metadata !599, metadata !604, metadata !606, metadata !607, metadata !609, metadata !610, metadata !612, metadata !614, metadata !616, metadata !619, metadata !621, metadata !623, metadata !624, metadata !625, metadata !626, metadata !628, metadata !631, metadata !633, metadata !634, metadata !636, metadata !637, metadata !639, metadata !640, metadata !642, metadata !643, metadata !646, metadata !649, metadata !652, metadata !653}
!517 = metadata !{i32 786689, metadata !515, metadata !"bufp", metadata !74, i32 16781088, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufp] [line 3872]
!518 = metadata !{i32 786689, metadata !515, metadata !"string1", metadata !74, i32 33558305, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string1] [line 3873]
!519 = metadata !{i32 786689, metadata !515, metadata !"size1", metadata !74, i32 50335522, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size1] [line 3874]
!520 = metadata !{i32 786689, metadata !515, metadata !"string2", metadata !74, i32 67112737, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string2] [line 3873]
!521 = metadata !{i32 786689, metadata !515, metadata !"size2", metadata !74, i32 83889954, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size2] [line 3874]
!522 = metadata !{i32 786689, metadata !515, metadata !"pos", metadata !74, i32 100667171, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 3875]
!523 = metadata !{i32 786689, metadata !515, metadata !"regs", metadata !74, i32 117444388, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regs] [line 3876]
!524 = metadata !{i32 786689, metadata !515, metadata !"stop", metadata !74, i32 134221605, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stop] [line 3877]
!525 = metadata !{i32 786688, metadata !515, metadata !"mcnt", metadata !74, i32 3880, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcnt] [line 3880]
!526 = metadata !{i32 786688, metadata !515, metadata !"p1", metadata !74, i32 3881, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 3881]
!527 = metadata !{i32 786688, metadata !515, metadata !"end1", metadata !74, i32 3884, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end1] [line 3884]
!528 = metadata !{i32 786688, metadata !515, metadata !"end2", metadata !74, i32 3884, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end2] [line 3884]
!529 = metadata !{i32 786688, metadata !515, metadata !"end_match_1", metadata !74, i32 3888, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end_match_1] [line 3888]
!530 = metadata !{i32 786688, metadata !515, metadata !"end_match_2", metadata !74, i32 3888, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end_match_2] [line 3888]
!531 = metadata !{i32 786688, metadata !515, metadata !"d", metadata !74, i32 3891, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 3891]
!532 = metadata !{i32 786688, metadata !515, metadata !"dend", metadata !74, i32 3891, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dend] [line 3891]
!533 = metadata !{i32 786688, metadata !515, metadata !"p", metadata !74, i32 3894, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 3894]
!534 = metadata !{i32 786688, metadata !515, metadata !"pend", metadata !74, i32 3895, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pend] [line 3895]
!535 = metadata !{i32 786688, metadata !515, metadata !"just_past_start_mem", metadata !74, i32 3899, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [just_past_start_mem] [line 3899]
!536 = metadata !{i32 786688, metadata !515, metadata !"translate", metadata !74, i32 3902, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [translate] [line 3902]
!537 = metadata !{i32 786688, metadata !515, metadata !"fail_stack", metadata !74, i32 3914, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fail_stack] [line 3914]
!538 = metadata !{i32 786688, metadata !515, metadata !"num_regs", metadata !74, i32 3930, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_regs] [line 3930]
!539 = metadata !{i32 786688, metadata !515, metadata !"lowest_active_reg", metadata !74, i32 3933, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowest_active_reg] [line 3933]
!540 = metadata !{i32 786454, metadata !1, null, metadata !"active_reg_t", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [active_reg_t] [line 45, size 0, align 0, offset 0] [from long unsigned int]
!541 = metadata !{i32 786688, metadata !515, metadata !"highest_active_reg", metadata !74, i32 3934, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [highest_active_reg] [line 3934]
!542 = metadata !{i32 786688, metadata !515, metadata !"regstart", metadata !74, i32 3944, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regstart] [line 3944]
!543 = metadata !{i32 786688, metadata !515, metadata !"regend", metadata !74, i32 3944, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regend] [line 3944]
!544 = metadata !{i32 786688, metadata !515, metadata !"old_regstart", metadata !74, i32 3953, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_regstart] [line 3953]
!545 = metadata !{i32 786688, metadata !515, metadata !"old_regend", metadata !74, i32 3953, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_regend] [line 3953]
!546 = metadata !{i32 786688, metadata !515, metadata !"reg_info", metadata !74, i32 3963, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg_info] [line 3963]
!547 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !548} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from register_info_type]
!548 = metadata !{i32 786454, metadata !1, null, metadata !"register_info_type", i32 1534, i64 0, i64 0, i64 0, i32 0, metadata !549} ; [ DW_TAG_typedef ] [register_info_type] [line 1534, size 0, align 0, offset 0] [from ]
!549 = metadata !{i32 786455, metadata !1, null, metadata !"", i32 1521, i64 64, i64 64, i64 0, i32 0, null, metadata !550, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 1521, size 64, align 64, offset 0] [from ]
!550 = metadata !{metadata !551, metadata !552}
!551 = metadata !{i32 786445, metadata !1, metadata !549, metadata !"word", i32 1523, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_member ] [word] [line 1523, size 64, align 64, offset 0] [from fail_stack_elt_t]
!552 = metadata !{i32 786445, metadata !1, metadata !549, metadata !"bits", i32 1533, i64 32, i64 32, i64 0, i32 0, metadata !553} ; [ DW_TAG_member ] [bits] [line 1533, size 32, align 32, offset 0] [from ]
!553 = metadata !{i32 786451, metadata !1, metadata !549, metadata !"", i32 1524, i64 32, i64 32, i32 0, i32 0, null, metadata !554, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1524, size 32, align 32, offset 0] [from ]
!554 = metadata !{metadata !555, metadata !556, metadata !557, metadata !558}
!555 = metadata !{i32 786445, metadata !1, metadata !553, metadata !"match_null_string_p", i32 1529, i64 2, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [match_null_string_p] [line 1529, size 2, align 32, offset 0] [from unsigned int]
!556 = metadata !{i32 786445, metadata !1, metadata !553, metadata !"is_active", i32 1530, i64 1, i64 32, i64 2, i32 0, metadata !102} ; [ DW_TAG_member ] [is_active] [line 1530, size 1, align 32, offset 2] [from unsigned int]
!557 = metadata !{i32 786445, metadata !1, metadata !553, metadata !"matched_something", i32 1531, i64 1, i64 32, i64 3, i32 0, metadata !102} ; [ DW_TAG_member ] [matched_something] [line 1531, size 1, align 32, offset 3] [from unsigned int]
!558 = metadata !{i32 786445, metadata !1, metadata !553, metadata !"ever_matched_something", i32 1532, i64 1, i64 32, i64 4, i32 0, metadata !102} ; [ DW_TAG_member ] [ever_matched_something] [line 1532, size 1, align 32, offset 4] [from unsigned int]
!559 = metadata !{i32 786688, metadata !515, metadata !"best_regs_set", metadata !74, i32 3970, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_regs_set] [line 3970]
!560 = metadata !{i32 786688, metadata !515, metadata !"best_regstart", metadata !74, i32 3972, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_regstart] [line 3972]
!561 = metadata !{i32 786688, metadata !515, metadata !"best_regend", metadata !74, i32 3972, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_regend] [line 3972]
!562 = metadata !{i32 786688, metadata !515, metadata !"match_end", metadata !74, i32 3983, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [match_end] [line 3983]
!563 = metadata !{i32 786688, metadata !515, metadata !"set_regs_matched_done", metadata !74, i32 3986, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [set_regs_matched_done] [line 3986]
!564 = metadata !{i32 786688, metadata !515, metadata !"reg_dummy", metadata !74, i32 3990, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg_dummy] [line 3990]
!565 = metadata !{i32 786688, metadata !515, metadata !"reg_info_dummy", metadata !74, i32 3991, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg_info_dummy] [line 3991]
!566 = metadata !{i32 786688, metadata !567, metadata !"same_str_p", metadata !74, i32 4127, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [same_str_p] [line 4127]
!567 = metadata !{i32 786443, metadata !1, metadata !568, i32 4124, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!568 = metadata !{i32 786443, metadata !1, metadata !569, i32 4118, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!569 = metadata !{i32 786443, metadata !1, metadata !570, i32 4110, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!570 = metadata !{i32 786443, metadata !1, metadata !515, i32 4109, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!571 = metadata !{i32 786688, metadata !567, metadata !"best_match_p", metadata !74, i32 4130, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_match_p] [line 4130]
!572 = metadata !{i32 786688, metadata !573, metadata !"r", metadata !74, i32 4323, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 4323]
!573 = metadata !{i32 786443, metadata !1, metadata !574, i32 4323, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!574 = metadata !{i32 786443, metadata !1, metadata !575, i32 4323, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!575 = metadata !{i32 786443, metadata !1, metadata !569, i32 4283, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!576 = metadata !{i32 786688, metadata !577, metadata !"r", metadata !74, i32 4337, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 4337]
!577 = metadata !{i32 786443, metadata !1, metadata !578, i32 4337, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!578 = metadata !{i32 786443, metadata !1, metadata !575, i32 4337, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!579 = metadata !{i32 786688, metadata !580, metadata !"c", metadata !74, i32 4346, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 4346]
!580 = metadata !{i32 786443, metadata !1, metadata !575, i32 4345, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!581 = metadata !{i32 786688, metadata !580, metadata !"not", metadata !74, i32 4347, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [not] [line 4347]
!582 = metadata !{i32 786688, metadata !583, metadata !"r", metadata !74, i32 4364, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 4364]
!583 = metadata !{i32 786443, metadata !1, metadata !584, i32 4364, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!584 = metadata !{i32 786443, metadata !1, metadata !580, i32 4364, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!585 = metadata !{i32 786688, metadata !586, metadata !"r", metadata !74, i32 4458, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 4458]
!586 = metadata !{i32 786443, metadata !1, metadata !575, i32 4454, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!587 = metadata !{i32 786688, metadata !588, metadata !"is_a_jump_n", metadata !74, i32 4487, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_a_jump_n] [line 4487]
!588 = metadata !{i32 786443, metadata !1, metadata !575, i32 4486, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!589 = metadata !{i32 786688, metadata !590, metadata !"r", metadata !74, i32 4529, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 4529]
!590 = metadata !{i32 786443, metadata !1, metadata !591, i32 4528, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!591 = metadata !{i32 786443, metadata !1, metadata !588, i32 4516, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!592 = metadata !{i32 786688, metadata !593, metadata !"destination", metadata !74, i32 4546, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [destination] [line 4546]
!593 = metadata !{i32 786443, metadata !1, metadata !591, i32 4546, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!594 = metadata !{i32 786688, metadata !593, metadata !"this_reg", metadata !74, i32 4546, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 4546]
!595 = metadata !{i32 786688, metadata !596, metadata !"d2", metadata !74, i32 4561, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2] [line 4561]
!596 = metadata !{i32 786443, metadata !1, metadata !575, i32 4560, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!597 = metadata !{i32 786688, metadata !596, metadata !"dend2", metadata !74, i32 4561, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dend2] [line 4561]
!598 = metadata !{i32 786688, metadata !596, metadata !"regno", metadata !74, i32 4562, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regno] [line 4562]
!599 = metadata !{i32 786688, metadata !600, metadata !"r", metadata !74, i32 4616, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 4616]
!600 = metadata !{i32 786443, metadata !1, metadata !601, i32 4616, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!601 = metadata !{i32 786443, metadata !1, metadata !602, i32 4616, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!602 = metadata !{i32 786443, metadata !1, metadata !603, i32 4581, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!603 = metadata !{i32 786443, metadata !1, metadata !596, i32 4580, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!604 = metadata !{i32 786688, metadata !605, metadata !"destination", metadata !74, i32 4700, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [destination] [line 4700]
!605 = metadata !{i32 786443, metadata !1, metadata !575, i32 4700, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!606 = metadata !{i32 786688, metadata !605, metadata !"this_reg", metadata !74, i32 4700, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 4700]
!607 = metadata !{i32 786688, metadata !608, metadata !"destination", metadata !74, i32 4757, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [destination] [line 4757]
!608 = metadata !{i32 786443, metadata !1, metadata !575, i32 4757, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!609 = metadata !{i32 786688, metadata !608, metadata !"this_reg", metadata !74, i32 4757, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 4757]
!610 = metadata !{i32 786688, metadata !611, metadata !"p2", metadata !74, i32 4767, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2] [line 4767]
!611 = metadata !{i32 786443, metadata !1, metadata !575, i32 4766, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!612 = metadata !{i32 786688, metadata !613, metadata !"c", metadata !74, i32 4818, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 4818]
!613 = metadata !{i32 786443, metadata !1, metadata !611, i32 4817, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!614 = metadata !{i32 786688, metadata !615, metadata !"not", metadata !74, i32 4831, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [not] [line 4831]
!615 = metadata !{i32 786443, metadata !1, metadata !613, i32 4830, i32 0, i32 316} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!616 = metadata !{i32 786688, metadata !617, metadata !"idx", metadata !74, i32 4861, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 4861]
!617 = metadata !{i32 786443, metadata !1, metadata !618, i32 4860, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!618 = metadata !{i32 786443, metadata !1, metadata !611, i32 4847, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!619 = metadata !{i32 786688, metadata !620, metadata !"idx", metadata !74, i32 4878, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 4878]
!620 = metadata !{i32 786443, metadata !1, metadata !618, i32 4877, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!621 = metadata !{i32 786688, metadata !622, metadata !"dummy_low_reg", metadata !74, i32 4918, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy_low_reg] [line 4918]
!622 = metadata !{i32 786443, metadata !1, metadata !575, i32 4912, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!623 = metadata !{i32 786688, metadata !622, metadata !"dummy_high_reg", metadata !74, i32 4918, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy_high_reg] [line 4918]
!624 = metadata !{i32 786688, metadata !622, metadata !"pdummy", metadata !74, i32 4919, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdummy] [line 4919]
!625 = metadata !{i32 786688, metadata !622, metadata !"sdummy", metadata !74, i32 4920, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sdummy] [line 4920]
!626 = metadata !{i32 786688, metadata !627, metadata !"this_reg", metadata !74, i32 4923, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 4923]
!627 = metadata !{i32 786443, metadata !1, metadata !622, i32 4923, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!628 = metadata !{i32 786688, metadata !627, metadata !"string_temp", metadata !74, i32 4923, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string_temp] [line 4923]
!629 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !630} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!630 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!631 = metadata !{i32 786688, metadata !632, metadata !"destination", metadata !74, i32 4966, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [destination] [line 4966]
!632 = metadata !{i32 786443, metadata !1, metadata !575, i32 4966, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!633 = metadata !{i32 786688, metadata !632, metadata !"this_reg", metadata !74, i32 4966, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 4966]
!634 = metadata !{i32 786688, metadata !635, metadata !"destination", metadata !74, i32 4979, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [destination] [line 4979]
!635 = metadata !{i32 786443, metadata !1, metadata !575, i32 4979, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!636 = metadata !{i32 786688, metadata !635, metadata !"this_reg", metadata !74, i32 4979, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 4979]
!637 = metadata !{i32 786688, metadata !638, metadata !"prevchar", metadata !74, i32 5071, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevchar] [line 5071]
!638 = metadata !{i32 786443, metadata !1, metadata !575, i32 5070, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!639 = metadata !{i32 786688, metadata !638, metadata !"thischar", metadata !74, i32 5071, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thischar] [line 5071]
!640 = metadata !{i32 786688, metadata !641, metadata !"prevchar", metadata !74, i32 5086, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevchar] [line 5086]
!641 = metadata !{i32 786443, metadata !1, metadata !575, i32 5085, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!642 = metadata !{i32 786688, metadata !641, metadata !"thischar", metadata !74, i32 5086, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thischar] [line 5086]
!643 = metadata !{i32 786688, metadata !644, metadata !"r", metadata !74, i32 5172, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 5172]
!644 = metadata !{i32 786443, metadata !1, metadata !645, i32 5172, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!645 = metadata !{i32 786443, metadata !1, metadata !575, i32 5172, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!646 = metadata !{i32 786688, metadata !647, metadata !"r", metadata !74, i32 5181, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 5181]
!647 = metadata !{i32 786443, metadata !1, metadata !648, i32 5181, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!648 = metadata !{i32 786443, metadata !1, metadata !575, i32 5181, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!649 = metadata !{i32 786688, metadata !650, metadata !"this_reg", metadata !74, i32 5197, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_reg] [line 5197]
!650 = metadata !{i32 786443, metadata !1, metadata !651, i32 5197, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!651 = metadata !{i32 786443, metadata !1, metadata !569, i32 5195, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!652 = metadata !{i32 786688, metadata !650, metadata !"string_temp", metadata !74, i32 5197, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string_temp] [line 5197]
!653 = metadata !{i32 786688, metadata !654, metadata !"is_a_jump_n", metadata !74, i32 5209, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_a_jump_n] [line 5209]
!654 = metadata !{i32 786443, metadata !1, metadata !651, i32 5208, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!655 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"bcmp_translate", metadata !"bcmp_translate", metadata !"", i32 5497, metadata !656, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !658, i32 5501} ; [ DW_TAG_subprogram ] [line 5497] [local] [def] [scope 5501] [bcmp_translate]
!656 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !657, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!657 = metadata !{metadata !85, metadata !157, metadata !157, metadata !85, metadata !96}
!658 = metadata !{metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664}
!659 = metadata !{i32 786689, metadata !655, metadata !"s1", metadata !74, i32 16782714, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 5498]
!660 = metadata !{i32 786689, metadata !655, metadata !"s2", metadata !74, i32 33559930, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 5498]
!661 = metadata !{i32 786689, metadata !655, metadata !"len", metadata !74, i32 50337147, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 5499]
!662 = metadata !{i32 786689, metadata !655, metadata !"translate", metadata !74, i32 67114364, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [translate] [line 5500]
!663 = metadata !{i32 786688, metadata !655, metadata !"p1", metadata !74, i32 5502, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 5502]
!664 = metadata !{i32 786688, metadata !655, metadata !"p2", metadata !74, i32 5503, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2] [line 5503]
!665 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"group_match_null_string_p", metadata !"group_match_null_string_p", metadata !"", i32 5263, metadata !666, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8 (i8**, i8*, %union.register_info_type*)* @group_match_null_string_p, null, null, metadata !669, i32 5266} ; [ DW_TAG_subprogram ] [line 5263] [local] [def] [scope 5266] [group_match_null_string_p]
!666 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !667, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!667 = metadata !{metadata !131, metadata !668, metadata !90, metadata !547}
!668 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!669 = metadata !{metadata !670, metadata !671, metadata !672, metadata !673, metadata !674}
!670 = metadata !{i32 786689, metadata !665, metadata !"p", metadata !74, i32 16782480, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 5264]
!671 = metadata !{i32 786689, metadata !665, metadata !"end", metadata !74, i32 33559696, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 5264]
!672 = metadata !{i32 786689, metadata !665, metadata !"reg_info", metadata !74, i32 50336913, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg_info] [line 5265]
!673 = metadata !{i32 786688, metadata !665, metadata !"mcnt", metadata !74, i32 5267, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcnt] [line 5267]
!674 = metadata !{i32 786688, metadata !665, metadata !"p1", metadata !74, i32 5269, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 5269]
!675 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"common_op_match_null_string_p", metadata !"common_op_match_null_string_p", metadata !"", i32 5409, metadata !666, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8 (i8**, i8*, %union.register_info_type*)* @common_op_match_null_string_p, null, null, metadata !676, i32 5412} ; [ DW_TAG_subprogram ] [line 5409] [local] [def] [scope 5412] [common_op_match_null_string_p]
!676 = metadata !{metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683}
!677 = metadata !{i32 786689, metadata !675, metadata !"p", metadata !74, i32 16782626, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 5410]
!678 = metadata !{i32 786689, metadata !675, metadata !"end", metadata !74, i32 33559842, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 5410]
!679 = metadata !{i32 786689, metadata !675, metadata !"reg_info", metadata !74, i32 50337059, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg_info] [line 5411]
!680 = metadata !{i32 786688, metadata !675, metadata !"mcnt", metadata !74, i32 5413, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcnt] [line 5413]
!681 = metadata !{i32 786688, metadata !675, metadata !"ret", metadata !74, i32 5414, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 5414]
!682 = metadata !{i32 786688, metadata !675, metadata !"reg_no", metadata !74, i32 5415, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg_no] [line 5415]
!683 = metadata !{i32 786688, metadata !675, metadata !"p1", metadata !74, i32 5416, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 5416]
!684 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"alt_match_null_string_p", metadata !"alt_match_null_string_p", metadata !"", i32 5372, metadata !685, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8 (i8*, i8*, %union.register_info_type*)* @alt_match_null_string_p, null, null, metadata !687, i32 5375} ; [ DW_TAG_subprogram ] [line 5372] [local] [def] [scope 5375] [alt_match_null_string_p]
!685 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!686 = metadata !{metadata !131, metadata !90, metadata !90, metadata !547}
!687 = metadata !{metadata !688, metadata !689, metadata !690, metadata !691, metadata !692}
!688 = metadata !{i32 786689, metadata !684, metadata !"p", metadata !74, i32 16782589, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 5373]
!689 = metadata !{i32 786689, metadata !684, metadata !"end", metadata !74, i32 33559805, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 5373]
!690 = metadata !{i32 786689, metadata !684, metadata !"reg_info", metadata !74, i32 50337022, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg_info] [line 5374]
!691 = metadata !{i32 786688, metadata !684, metadata !"mcnt", metadata !74, i32 5376, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcnt] [line 5376]
!692 = metadata !{i32 786688, metadata !684, metadata !"p1", metadata !74, i32 5377, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 5377]
!693 = metadata !{metadata !694, metadata !695, metadata !699, metadata !700, metadata !705, metadata !709, metadata !710}
!694 = metadata !{i32 786484, i32 0, null, metadata !"re_max_failures", metadata !"re_max_failures", metadata !"", metadata !74, i32 1188, metadata !85, i32 0, i32 1, i32* @re_max_failures, null} ; [ DW_TAG_variable ] [re_max_failures] [line 1188] [def]
!695 = metadata !{i32 786484, i32 0, null, metadata !"re_syntax_table", metadata !"re_syntax_table", metadata !"", metadata !74, i32 188, metadata !696, i32 1, i32 1, [256 x i8]* @re_syntax_table, null} ; [ DW_TAG_variable ] [re_syntax_table] [line 188] [local] [def]
!696 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !97, metadata !697, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!697 = metadata !{metadata !698}
!698 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!699 = metadata !{i32 786484, i32 0, null, metadata !"re_syntax_options", metadata !"re_syntax_options", metadata !"", metadata !74, i32 994, metadata !77, i32 0, i32 1, i64* @re_syntax_options, null} ; [ DW_TAG_variable ] [re_syntax_options] [line 994] [def]
!700 = metadata !{i32 786484, i32 0, null, metadata !"re_error_msgid_idx", metadata !"re_error_msgid_idx", metadata !"", metadata !74, i32 1082, metadata !701, i32 1, i32 1, [17 x i64]* @re_error_msgid_idx, null} ; [ DW_TAG_variable ] [re_error_msgid_idx] [line 1082] [local] [def]
!701 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1088, i64 64, i32 0, i32 0, metadata !702, metadata !703, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1088, align 64, offset 0] [from ]
!702 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from size_t]
!703 = metadata !{metadata !704}
!704 = metadata !{i32 786465, i64 0, i64 17}      ; [ DW_TAG_subrange_type ] [0, 16]
!705 = metadata !{i32 786484, i32 0, null, metadata !"re_error_msgid", metadata !"re_error_msgid", metadata !"", metadata !74, i32 1028, metadata !706, i32 1, i32 1, [369 x i8]* @re_error_msgid, null} ; [ DW_TAG_variable ] [re_error_msgid] [line 1028] [local] [def]
!706 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2952, i64 8, i32 0, i32 0, metadata !158, metadata !707, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2952, align 8, offset 0] [from ]
!707 = metadata !{metadata !708}
!708 = metadata !{i32 786465, i64 0, i64 369}     ; [ DW_TAG_subrange_type ] [0, 368]
!709 = metadata !{i32 786484, i32 0, metadata !510, metadata !"done", metadata !"done", metadata !"", metadata !74, i32 194, metadata !85, i32 1, i32 1, null, null}
!710 = metadata !{i32 786484, i32 0, null, metadata !"reg_unset_dummy", metadata !"reg_unset_dummy", metadata !"", metadata !74, i32 1563, metadata !97, i32 1, i32 1, i8* @reg_unset_dummy, null} ; [ DW_TAG_variable ] [reg_unset_dummy] [line 1563] [local] [def]
!711 = metadata !{i32 1006, i32 0, metadata !73, null}
!712 = metadata !{i32 1008, i32 0, metadata !73, null}
!713 = metadata !{metadata !"long", metadata !714}
!714 = metadata !{metadata !"omnipotent char", metadata !715}
!715 = metadata !{metadata !"Simple C/C++ TBAA"}
!716 = metadata !{i32 1010, i32 0, metadata !73, null}
!717 = metadata !{i32 1017, i32 0, metadata !73, null}
!718 = metadata !{i32 3205, i32 0, metadata !82, null}
!719 = metadata !{%struct.fail_stack_type* undef}
!720 = metadata !{i32 3209, i32 0, metadata !82, null}
!721 = metadata !{i32 3215, i32 0, metadata !82, null}
!722 = metadata !{metadata !"any pointer", metadata !714}
!723 = metadata !{i32 3216, i32 0, metadata !82, null}
!724 = metadata !{i32 3217, i32 0, metadata !82, null}
!725 = metadata !{i32 3218, i32 0, metadata !82, null}
!726 = metadata !{i8 1}
!727 = metadata !{i32 3230, i32 0, metadata !82, null}
!728 = metadata !{i8 0}
!729 = metadata !{i32 3233, i32 0, metadata !82, null}
!730 = metadata !{i32 3237, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !82, i32 3237, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!732 = metadata !{i32 3238, i32 0, metadata !82, null}
!733 = metadata !{i32 3239, i32 0, metadata !82, null}
!734 = metadata !{i32 3240, i32 0, metadata !82, null}
!735 = metadata !{i32 3320, i32 0, metadata !134, null}
!736 = metadata !{i32 3327, i32 0, metadata !134, null}
!737 = metadata !{i32 3242, i32 0, metadata !82, null}
!738 = metadata !{i32 3244, i32 0, metadata !136, null}
!739 = metadata !{i32 3247, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !136, i32 3245, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!741 = metadata !{i32 3486, i32 0, metadata !82, null}
!742 = metadata !{i32 3252, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !740, i32 3248, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!744 = metadata !{i32 3254, i32 0, metadata !743, null}
!745 = metadata !{i32 3256, i32 0, metadata !743, null}
!746 = metadata !{i32 3265, i32 0, metadata !136, null}
!747 = metadata !{i32 3274, i32 0, metadata !135, null}
!748 = metadata !{i32 3275, i32 0, metadata !135, null}
!749 = metadata !{i32 3282, i32 0, metadata !135, null}
!750 = metadata !{i32 3283, i32 0, metadata !135, null}
!751 = metadata !{i32 3287, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !135, i32 3287, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!753 = metadata !{i32 3288, i32 0, metadata !752, null}
!754 = metadata !{i32 3289, i32 0, metadata !752, null}
!755 = metadata !{i32 3295, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !135, i32 3295, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!757 = metadata !{i32 3296, i32 0, metadata !756, null}
!758 = metadata !{i32 3298, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !135, i32 3298, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!760 = metadata !{i32 3299, i32 0, metadata !759, null}
!761 = metadata !{i32 3300, i32 0, metadata !759, null}
!762 = metadata !{i32 3306, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !135, i32 3305, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!764 = metadata !{i32 3307, i32 0, metadata !763, null}
!765 = metadata !{i32 3305, i32 0, metadata !763, null}
!766 = metadata !{i32 3313, i32 0, metadata !767, null}
!767 = metadata !{i32 786443, metadata !1, metadata !135, i32 3312, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!768 = metadata !{i32 3314, i32 0, metadata !767, null}
!769 = metadata !{i32 3312, i32 0, metadata !767, null}
!770 = metadata !{i32 3323, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !134, i32 3323, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!772 = metadata !{i32 3324, i32 0, metadata !771, null}
!773 = metadata !{i32 3328, i32 0, metadata !134, null}
!774 = metadata !{i32 3332, i32 0, metadata !134, null}
!775 = metadata !{i32 3386, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !777, i32 3386, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!777 = metadata !{i32 786443, metadata !1, metadata !135, i32 3386, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!778 = metadata !{i32 3387, i32 0, metadata !135, null}
!779 = metadata !{i32 3388, i32 0, metadata !135, null}
!780 = metadata !{i32 3396, i32 0, metadata !135, null}
!781 = metadata !{i32 3400, i32 0, metadata !135, null}
!782 = metadata !{i32 3401, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !784, i32 3401, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!784 = metadata !{i32 786443, metadata !1, metadata !135, i32 3401, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!785 = metadata !{i32 3401, i32 0, metadata !784, null}
!786 = metadata !{i32 3402, i32 0, metadata !135, null}
!787 = metadata !{i32 3405, i32 0, metadata !135, null}
!788 = metadata !{i32 3415, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !790, i32 3415, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!790 = metadata !{i32 786443, metadata !1, metadata !135, i32 3415, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!791 = metadata !{i32 3415, i32 0, metadata !790, null}
!792 = metadata !{i32 3424, i32 0, metadata !135, null}
!793 = metadata !{i32 3426, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !135, i32 3425, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!795 = metadata !{metadata !"int", metadata !714}
!796 = metadata !{i32 3431, i32 0, metadata !794, null}
!797 = metadata !{i32 3428, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !794, i32 3427, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!799 = metadata !{i32 3429, i32 0, metadata !798, null}
!800 = metadata !{i32 3433, i32 0, metadata !135, null}
!801 = metadata !{i32 3435, i32 0, metadata !135, null}
!802 = metadata !{i32 3437, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !804, i32 3437, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!804 = metadata !{i32 786443, metadata !1, metadata !135, i32 3436, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!805 = metadata !{i32 3438, i32 0, metadata !804, null}
!806 = metadata !{i32 3446, i32 0, metadata !135, null}
!807 = metadata !{i32 3449, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !809, i32 3449, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!809 = metadata !{i32 786443, metadata !1, metadata !135, i32 3449, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!810 = metadata !{i32 3449, i32 0, metadata !809, null}
!811 = metadata !{i32 3450, i32 0, metadata !135, null}
!812 = metadata !{i32 3460, i32 0, metadata !135, null}
!813 = metadata !{i32 3461, i32 0, metadata !135, null}
!814 = metadata !{i32 3466, i32 0, metadata !135, null}
!815 = metadata !{i32 3467, i32 0, metadata !135, null}
!816 = metadata !{i32 3471, i32 0, metadata !135, null}
!817 = metadata !{i32 3489, i32 0, metadata !82, null}
!818 = metadata !{i32 3490, i32 0, metadata !82, null}
!819 = metadata !{i32 3511, i32 0, metadata !137, null}
!820 = metadata !{i32 3512, i32 0, metadata !137, null}
!821 = metadata !{i32 3513, i32 0, metadata !137, null}
!822 = metadata !{i32 3514, i32 0, metadata !137, null}
!823 = metadata !{i32 3516, i32 0, metadata !137, null}
!824 = metadata !{i32 3518, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !137, i32 3517, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!826 = metadata !{i32 3519, i32 0, metadata !825, null}
!827 = metadata !{i32 3520, i32 0, metadata !825, null}
!828 = metadata !{i32 3521, i32 0, metadata !825, null}
!829 = metadata !{i32 3522, i32 0, metadata !825, null}
!830 = metadata !{i32 3525, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !137, i32 3524, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!832 = metadata !{i32 3526, i32 0, metadata !831, null}
!833 = metadata !{i32 3527, i32 0, metadata !831, null}
!834 = metadata !{i32 3529, i32 0, metadata !137, null}
!835 = metadata !{i32 3541, i32 0, metadata !154, null}
!836 = metadata !{i32 3542, i32 0, metadata !154, null}
!837 = metadata !{i32 3543, i32 0, metadata !154, null}
!838 = metadata !{i32 3544, i32 0, metadata !154, null}
!839 = metadata !{i32 3546, i32 0, metadata !154, null}
!840 = metadata !{i32 3577, i32 0, metadata !166, null}
!841 = metadata !{i32 3578, i32 0, metadata !166, null}
!842 = metadata !{i32 3579, i32 0, metadata !166, null}
!843 = metadata !{i32 3580, i32 0, metadata !166, null}
!844 = metadata !{i32 3581, i32 0, metadata !166, null}
!845 = metadata !{i32 3582, i32 0, metadata !166, null}
!846 = metadata !{i32 3583, i32 0, metadata !166, null}
!847 = metadata !{i32 3586, i32 0, metadata !166, null}
!848 = metadata !{i32 3587, i32 0, metadata !166, null}
!849 = metadata !{i32 3588, i32 0, metadata !166, null}
!850 = metadata !{i32 3589, i32 0, metadata !166, null}
!851 = metadata !{i32 3592, i32 0, metadata !166, null}
!852 = metadata !{i32 3598, i32 0, metadata !166, null}
!853 = metadata !{i32 3599, i32 0, metadata !166, null}
!854 = metadata !{i32 3600, i32 0, metadata !166, null}
!855 = metadata !{i32 3601, i32 0, metadata !166, null}
!856 = metadata !{i32 3605, i32 0, metadata !166, null}
!857 = metadata !{i32 3611, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !166, i32 3610, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!859 = metadata !{i32 3629, i32 0, metadata !166, null}
!860 = metadata !{i32 3630, i32 0, metadata !166, null}
!861 = metadata !{i32 3655, i32 0, metadata !185, null}
!862 = metadata !{i32 3651, i32 0, metadata !185, null}
!863 = metadata !{i32 3670, i32 0, metadata !192, null}
!864 = metadata !{i32 3678, i32 0, metadata !187, null}
!865 = metadata !{i32 3640, i32 0, metadata !187, null}
!866 = metadata !{i32 3642, i32 0, metadata !186, null}
!867 = metadata !{i32 3648, i32 0, metadata !185, null}
!868 = metadata !{i32 3645, i32 0, metadata !185, null}
!869 = metadata !{i32 3646, i32 0, metadata !185, null}
!870 = metadata !{i32 3649, i32 0, metadata !185, null}
!871 = metadata !{i32 3661, i32 0, metadata !185, null}
!872 = metadata !{i32 3656, i32 0, metadata !185, null}
!873 = metadata !{i32 3659, i32 0, metadata !185, null}
!874 = metadata !{i32 3662, i32 0, metadata !185, null}
!875 = metadata !{i32 3664, i32 0, metadata !185, null}
!876 = metadata !{i32 3665, i32 0, metadata !185, null}
!877 = metadata !{i32 3672, i32 0, metadata !192, null}
!878 = metadata !{i32 3682, i32 0, metadata !187, null}
!879 = metadata !{i32 3690, i32 0, metadata !187, null}
!880 = metadata !{i32 3693, i32 0, metadata !187, null}
!881 = metadata !{i32 3697, i32 0, metadata !187, null}
!882 = metadata !{i32 3699, i32 0, metadata !187, null}
!883 = metadata !{i32 3701, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !187, i32 3700, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!885 = metadata !{i32 3702, i32 0, metadata !884, null}
!886 = metadata !{i32 3703, i32 0, metadata !884, null}
!887 = metadata !{i32 3706, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !187, i32 3705, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!889 = metadata !{i32 3707, i32 0, metadata !888, null}
!890 = metadata !{i32 3711, i32 0, metadata !166, null}
!891 = metadata !{i32 3872, i32 0, metadata !515, null}
!892 = metadata !{i32 3873, i32 0, metadata !515, null}
!893 = metadata !{i32 3874, i32 0, metadata !515, null}
!894 = metadata !{i32 3875, i32 0, metadata !515, null}
!895 = metadata !{i32 3876, i32 0, metadata !515, null}
!896 = metadata !{i32 3877, i32 0, metadata !515, null}
!897 = metadata !{i32 3881, i32 0, metadata !515, null}
!898 = metadata !{i32 3894, i32 0, metadata !515, null}
!899 = metadata !{i32 3895, i32 0, metadata !515, null}
!900 = metadata !{i8* null}
!901 = metadata !{i32 3899, i32 0, metadata !515, null}
!902 = metadata !{i32 3902, i32 0, metadata !515, null}
!903 = metadata !{i32 3914, i32 0, metadata !515, null}
!904 = metadata !{i32 3930, i32 0, metadata !515, null}
!905 = metadata !{i64 257}
!906 = metadata !{i32 3933, i32 0, metadata !515, null}
!907 = metadata !{i64 256}
!908 = metadata !{i32 3934, i32 0, metadata !515, null}
!909 = metadata !{i32 3970, i32 0, metadata !515, null}
!910 = metadata !{i32 3983, i32 0, metadata !515, null}
!911 = metadata !{i32 3986, i32 0, metadata !515, null}
!912 = metadata !{i32 4001, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !515, i32 4001, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!914 = metadata !{i32 4009, i32 0, metadata !515, null}
!915 = metadata !{i32 4011, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !515, i32 4010, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!917 = metadata !{i32 4012, i32 0, metadata !916, null}
!918 = metadata !{i32 4013, i32 0, metadata !916, null}
!919 = metadata !{i32 4014, i32 0, metadata !916, null}
!920 = metadata !{i32 4015, i32 0, metadata !916, null}
!921 = metadata !{i32 4016, i32 0, metadata !916, null}
!922 = metadata !{i32 4017, i32 0, metadata !916, null}
!923 = metadata !{i32 4018, i32 0, metadata !916, null}
!924 = metadata !{i32 4019, i32 0, metadata !916, null}
!925 = metadata !{i32 4021, i32 0, metadata !916, null}
!926 = metadata !{i32 4024, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !928, i32 4024, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!928 = metadata !{i32 786443, metadata !1, metadata !916, i32 4023, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!929 = metadata !{i8** null}
!930 = metadata !{%union.register_info_type* null}
!931 = metadata !{i32 4039, i32 0, metadata !515, null}
!932 = metadata !{i32 4048, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !515, i32 4048, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!934 = metadata !{i32 4041, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !936, i32 4041, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!936 = metadata !{i32 786443, metadata !1, metadata !515, i32 4040, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!937 = metadata !{i32 4050, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !933, i32 4049, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!939 = metadata !{i32 4053, i32 0, metadata !938, null}
!940 = metadata !{i32 4056, i32 0, metadata !938, null}
!941 = metadata !{i32 4061, i32 0, metadata !515, null}
!942 = metadata !{i32 4063, i32 0, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !515, i32 4062, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!944 = metadata !{i32 4064, i32 0, metadata !943, null}
!945 = metadata !{i32 4065, i32 0, metadata !943, null}
!946 = metadata !{i32 4066, i32 0, metadata !943, null}
!947 = metadata !{i32 4068, i32 0, metadata !515, null}
!948 = metadata !{i32 4069, i32 0, metadata !515, null}
!949 = metadata !{i32 4072, i32 0, metadata !515, null}
!950 = metadata !{i32 4080, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !515, i32 4078, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!952 = metadata !{i32 4074, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !1, metadata !515, i32 4073, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!954 = metadata !{i32 4075, i32 0, metadata !953, null}
!955 = metadata !{i32 4076, i32 0, metadata !953, null}
!956 = metadata !{i32 4079, i32 0, metadata !951, null}
!957 = metadata !{i32 4089, i32 0, metadata !515, null}
!958 = metadata !{i32 4096, i32 0, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !515, i32 4095, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!960 = metadata !{i32 4091, i32 0, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !515, i32 4090, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!962 = metadata !{i32 4092, i32 0, metadata !961, null}
!963 = metadata !{i32 4093, i32 0, metadata !961, null}
!964 = metadata !{i32 4097, i32 0, metadata !959, null}
!965 = metadata !{i32 4128, i32 0, metadata !567, null}
!966 = metadata !{i32 4303, i32 0, metadata !575, null}
!967 = metadata !{i32 4628, i32 0, metadata !575, null}
!968 = metadata !{i32 4630, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !575, i32 4629, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!970 = metadata !{i32 5078, i32 0, metadata !638, null}
!971 = metadata !{i32 4333, i32 0, metadata !575, null}
!972 = metadata !{i32 4117, i32 0, metadata !569, null}
!973 = metadata !{i32 4123, i32 0, metadata !568, null}
!974 = metadata !{i32 4134, i32 0, metadata !567, null}
!975 = metadata !{i32 4135, i32 0, metadata !567, null}
!976 = metadata !{i32 4137, i32 0, metadata !567, null}
!977 = metadata !{i32 4141, i32 0, metadata !567, null}
!978 = metadata !{i32 4164, i32 0, metadata !567, null}
!979 = metadata !{i32 4145, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !567, i32 4142, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!981 = metadata !{i32 4152, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !983, i32 4152, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!983 = metadata !{i32 786443, metadata !1, metadata !980, i32 4146, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!984 = metadata !{i32 4154, i32 0, metadata !985, null}
!985 = metadata !{i32 786443, metadata !1, metadata !982, i32 4153, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!986 = metadata !{i32 4155, i32 0, metadata !985, null}
!987 = metadata !{i32 4174, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !567, i32 4165, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!989 = metadata !{i32 4175, i32 0, metadata !988, null}
!990 = metadata !{i32 4178, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !988, i32 4178, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!992 = metadata !{i32 4180, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !991, i32 4179, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!994 = metadata !{i32 4181, i32 0, metadata !993, null}
!995 = metadata !{i32 4190, i32 0, metadata !568, null}
!996 = metadata !{i32 4193, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !568, i32 4191, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!998 = metadata !{i32 4233, i32 0, metadata !997, null}
!999 = metadata !{i32 4197, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !997, i32 4194, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1001 = metadata !{i32 4198, i32 0, metadata !1000, null}
!1002 = metadata !{i32 4199, i32 0, metadata !1000, null}
!1003 = metadata !{i32 4200, i32 0, metadata !1000, null}
!1004 = metadata !{i32 4202, i32 0, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !1, metadata !1006, i32 4202, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1006 = metadata !{i32 786443, metadata !1, metadata !1000, i32 4201, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1007 = metadata !{i32 4205, i32 0, metadata !1000, null}
!1008 = metadata !{i32 4206, i32 0, metadata !1000, null}
!1009 = metadata !{i32 4211, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !997, i32 4208, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1011 = metadata !{i32 4213, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !1010, i32 4212, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1013 = metadata !{i32 4214, i32 0, metadata !1012, null}
!1014 = metadata !{i32 4215, i32 0, metadata !1012, null}
!1015 = metadata !{i32 4216, i32 0, metadata !1012, null}
!1016 = metadata !{i32 4218, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1018, i32 4218, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1018 = metadata !{i32 786443, metadata !1, metadata !1012, i32 4217, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1019 = metadata !{i32 4235, i32 0, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !1, metadata !997, i32 4234, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1021 = metadata !{i32 4236, i32 0, metadata !1020, null}
!1022 = metadata !{i32 4243, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !997, i32 4243, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1024 = metadata !{i32 4239, i32 0, metadata !1020, null}
!1025 = metadata !{i32 4247, i32 0, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1, metadata !1023, i32 4245, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1027 = metadata !{i32 4250, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !1026, i32 4249, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1029 = metadata !{i32 4252, i32 0, metadata !1028, null}
!1030 = metadata !{i32 4246, i32 0, metadata !1026, null}
!1031 = metadata !{i32 4262, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !997, i32 4262, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1033 = metadata !{i32 4263, i32 0, metadata !1032, null}
!1034 = metadata !{i32 4271, i32 0, metadata !568, null}
!1035 = metadata !{i32 4277, i32 0, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !1, metadata !568, i32 4277, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1037 = metadata !{i32 4282, i32 0, metadata !569, null}
!1038 = metadata !{i32 4720, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !575, i32 4720, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1040 = metadata !{i32 4966, i32 0, metadata !632, null}
!1041 = metadata !{i32 4979, i32 0, metadata !635, null}
!1042 = metadata !{i32 4298, i32 0, metadata !575, null}
!1043 = metadata !{i32 4307, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1, metadata !1045, i32 4306, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1045 = metadata !{i32 786443, metadata !1, metadata !575, i32 4304, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1046 = metadata !{i32 4307, i32 0, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !1, metadata !1044, i32 4307, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1048 = metadata !{i32 4308, i32 0, metadata !1044, null}
!1049 = metadata !{i32 4311, i32 0, metadata !1044, null}
!1050 = metadata !{i32 4318, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1052, i32 4317, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1052 = metadata !{i32 786443, metadata !1, metadata !575, i32 4315, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1053 = metadata !{i32 4318, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1051, i32 4318, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1055 = metadata !{i32 4319, i32 0, metadata !1051, null}
!1056 = metadata !{i32 4320, i32 0, metadata !1051, null}
!1057 = metadata !{i32 4323, i32 0, metadata !574, null}
!1058 = metadata !{i32 4323, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !573, i32 4323, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1060 = metadata !{i32 4323, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !1059, i32 4323, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1062 = metadata !{i32 4331, i32 0, metadata !575, null}
!1063 = metadata !{i32 4331, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !1, metadata !575, i32 4331, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1065 = metadata !{i32 4337, i32 0, metadata !578, null}
!1066 = metadata !{i32 4337, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !577, i32 4337, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1068 = metadata !{i32 4337, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1067, i32 4337, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1070 = metadata !{i32 4339, i32 0, metadata !575, null}
!1071 = metadata !{i32 4340, i32 0, metadata !575, null}
!1072 = metadata !{i32 4347, i32 0, metadata !580, null}
!1073 = metadata !{i32 4351, i32 0, metadata !580, null}
!1074 = metadata !{i32 4351, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !580, i32 4351, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1076 = metadata !{i32 4352, i32 0, metadata !580, null}
!1077 = metadata !{i32 4356, i32 0, metadata !580, null}
!1078 = metadata !{i32 4360, i32 0, metadata !580, null}
!1079 = metadata !{i32 4362, i32 0, metadata !580, null}
!1080 = metadata !{i32 4364, i32 0, metadata !584, null}
!1081 = metadata !{i32 4364, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1, metadata !583, i32 4364, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1083 = metadata !{i32 4364, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1082, i32 4364, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1085 = metadata !{i32 4365, i32 0, metadata !580, null}
!1086 = metadata !{i32 4366, i32 0, metadata !580, null}
!1087 = metadata !{i32 4379, i32 0, metadata !575, null}
!1088 = metadata !{i32 4381, i32 0, metadata !575, null}
!1089 = metadata !{i32 4383, i32 0, metadata !575, null}
!1090 = metadata !{i32 4390, i32 0, metadata !575, null}
!1091 = metadata !{i32 4396, i32 0, metadata !575, null}
!1092 = metadata !{i32 4399, i32 0, metadata !575, null}
!1093 = metadata !{i32 4400, i32 0, metadata !575, null}
!1094 = metadata !{i32 4403, i32 0, metadata !575, null}
!1095 = metadata !{i32 4406, i32 0, metadata !575, null}
!1096 = metadata !{i32 4410, i32 0, metadata !575, null}
!1097 = metadata !{i32 4411, i32 0, metadata !575, null}
!1098 = metadata !{i32 4414, i32 0, metadata !575, null}
!1099 = metadata !{i32 4415, i32 0, metadata !575, null}
!1100 = metadata !{i32 4417, i32 0, metadata !575, null}
!1101 = metadata !{i32 4431, i32 0, metadata !575, null}
!1102 = metadata !{i32 4437, i32 0, metadata !575, null}
!1103 = metadata !{i32 4441, i32 0, metadata !575, null}
!1104 = metadata !{i32 4444, i32 0, metadata !575, null}
!1105 = metadata !{i32 4448, i32 0, metadata !575, null}
!1106 = metadata !{i32 4483, i32 0, metadata !575, null}
!1107 = metadata !{i32 4458, i32 0, metadata !586, null}
!1108 = metadata !{i32 4459, i32 0, metadata !586, null}
!1109 = metadata !{i32 4487, i32 0, metadata !588, null}
!1110 = metadata !{i32 4490, i32 0, metadata !588, null}
!1111 = metadata !{i32 4491, i32 0, metadata !588, null}
!1112 = metadata !{i32 4494, i32 0, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !1, metadata !588, i32 4492, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1114 = metadata !{i32 4499, i32 0, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !1, metadata !1116, i32 4499, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1116 = metadata !{i32 786443, metadata !1, metadata !1113, i32 4499, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1117 = metadata !{i32 4499, i32 0, metadata !1116, null}
!1118 = metadata !{i32 4501, i32 0, metadata !1113, null}
!1119 = metadata !{i32 4500, i32 0, metadata !1113, null}
!1120 = metadata !{i32 4507, i32 0, metadata !588, null}
!1121 = metadata !{i32 4514, i32 0, metadata !588, null}
!1122 = metadata !{i32 4527, i32 0, metadata !591, null}
!1123 = metadata !{i32 4531, i32 0, metadata !590, null}
!1124 = metadata !{i32 4534, i32 0, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !590, i32 4534, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1126 = metadata !{i32 4537, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !1125, i32 4536, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1128 = metadata !{i32 4540, i32 0, metadata !1127, null}
!1129 = metadata !{i32 4541, i32 0, metadata !1127, null}
!1130 = metadata !{i32 4535, i32 0, metadata !1125, null}
!1131 = metadata !{i32 4544, i32 0, metadata !591, null}
!1132 = metadata !{i32 4545, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1134, i32 4545, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1134 = metadata !{i32 786443, metadata !1, metadata !591, i32 4545, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1135 = metadata !{i32 4545, i32 0, metadata !1134, null}
!1136 = metadata !{i32 4546, i32 0, metadata !593, null}
!1137 = metadata !{i32 4546, i32 0, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !1, metadata !593, i32 4546, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1139 = metadata !{i32 4546, i32 0, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !1, metadata !593, i32 4546, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1141 = metadata !{i32 4546, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1, metadata !1140, i32 4546, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1143 = metadata !{i32 4548, i32 0, metadata !591, null}
!1144 = metadata !{i32 4562, i32 0, metadata !596, null}
!1145 = metadata !{i32 4566, i32 0, metadata !596, null}
!1146 = metadata !{i32 4570, i32 0, metadata !596, null}
!1147 = metadata !{i32 4577, i32 0, metadata !596, null}
!1148 = metadata !{i32 4616, i32 0, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !1, metadata !600, i32 4616, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1150 = metadata !{i32 4584, i32 0, metadata !602, null}
!1151 = metadata !{i32 4616, i32 0, metadata !601, null}
!1152 = metadata !{i32 4586, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !602, i32 4585, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1154 = metadata !{i32 4604, i32 0, metadata !602, null}
!1155 = metadata !{i32 4587, i32 0, metadata !1153, null}
!1156 = metadata !{i32 4594, i32 0, metadata !602, null}
!1157 = metadata !{i32 4597, i32 0, metadata !602, null}
!1158 = metadata !{i32 4597, i32 0, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !1, metadata !602, i32 4597, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1160 = metadata !{i32 4600, i32 0, metadata !602, null}
!1161 = metadata !{i32 4609, i32 0, metadata !602, null}
!1162 = metadata !{i32 4605, i32 0, metadata !602, null}
!1163 = metadata !{i32 786689, metadata !655, metadata !"s1", metadata !74, i32 16782714, metadata !157, i32 0, metadata !1164} ; [ DW_TAG_arg_variable ] [s1] [line 5498]
!1164 = metadata !{i32 4610, i32 0, metadata !602, null}
!1165 = metadata !{i32 5498, i32 0, metadata !655, metadata !1164}
!1166 = metadata !{i32 786689, metadata !655, metadata !"s2", metadata !74, i32 33559930, metadata !157, i32 0, metadata !1164} ; [ DW_TAG_arg_variable ] [s2] [line 5498]
!1167 = metadata !{i32 786689, metadata !655, metadata !"len", metadata !74, i32 50337147, metadata !85, i32 0, metadata !1164} ; [ DW_TAG_arg_variable ] [len] [line 5499]
!1168 = metadata !{i32 5499, i32 0, metadata !655, metadata !1164}
!1169 = metadata !{i32 786689, metadata !655, metadata !"translate", metadata !74, i32 67114364, metadata !96, i32 0, metadata !1164} ; [ DW_TAG_arg_variable ] [translate] [line 5500]
!1170 = metadata !{i32 5500, i32 0, metadata !655, metadata !1164}
!1171 = metadata !{i32 786688, metadata !655, metadata !"p1", metadata !74, i32 5502, metadata !629, i32 0, metadata !1164} ; [ DW_TAG_auto_variable ] [p1] [line 5502]
!1172 = metadata !{i32 5502, i32 0, metadata !655, metadata !1164}
!1173 = metadata !{i32 786688, metadata !655, metadata !"p2", metadata !74, i32 5503, metadata !629, i32 0, metadata !1164} ; [ DW_TAG_auto_variable ] [p2] [line 5503]
!1174 = metadata !{i32 5503, i32 0, metadata !655, metadata !1164}
!1175 = metadata !{i32 5504, i32 0, metadata !655, metadata !1164}
!1176 = metadata !{i32 5506, i32 0, metadata !1177, metadata !1164}
!1177 = metadata !{i32 786443, metadata !1, metadata !655, i32 5505, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1178 = metadata !{i32 5507, i32 0, metadata !1177, metadata !1164}
!1179 = metadata !{i32 4611, i32 0, metadata !602, null}
!1180 = metadata !{i32 4613, i32 0, metadata !602, null}
!1181 = metadata !{i32 4616, i32 0, metadata !1182, null}
!1182 = metadata !{i32 786443, metadata !1, metadata !1149, i32 4616, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1183 = metadata !{i32 4632, i32 0, metadata !575, null}
!1184 = metadata !{i32 4644, i32 0, metadata !575, null}
!1185 = metadata !{i32 4646, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !575, i32 4645, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1187 = metadata !{i32 4650, i32 0, metadata !575, null}
!1188 = metadata !{i32 4661, i32 0, metadata !575, null}
!1189 = metadata !{i32 4669, i32 0, metadata !575, null}
!1190 = metadata !{i32 4693, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1192, i32 4693, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1192 = metadata !{i32 786443, metadata !1, metadata !575, i32 4693, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1193 = metadata !{i32 4693, i32 0, metadata !1192, null}
!1194 = metadata !{i32 4700, i32 0, metadata !605, null}
!1195 = metadata !{i32 4700, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !605, i32 4700, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1197 = metadata !{i32 4700, i32 0, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !1, metadata !605, i32 4700, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1199 = metadata !{i32 4700, i32 0, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !1, metadata !1198, i32 4700, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1201 = metadata !{i32 4701, i32 0, metadata !575, null}
!1202 = metadata !{i32 4720, i32 0, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !1, metadata !1039, i32 4720, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1204 = metadata !{i32 4736, i32 0, metadata !575, null}
!1205 = metadata !{i32 4743, i32 0, metadata !575, null}
!1206 = metadata !{i32 4742, i32 0, metadata !575, null}
!1207 = metadata !{i32 4745, i32 0, metadata !575, null}
!1208 = metadata !{i32 4751, i32 0, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !1, metadata !575, i32 4746, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1210 = metadata !{i32 4752, i32 0, metadata !1209, null}
!1211 = metadata !{i32 4753, i32 0, metadata !1209, null}
!1212 = metadata !{i32 4757, i32 0, metadata !608, null}
!1213 = metadata !{i32 4757, i32 0, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !1, metadata !608, i32 4757, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1215 = metadata !{i32 4757, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !608, i32 4757, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1217 = metadata !{i32 4757, i32 0, metadata !1218, null}
!1218 = metadata !{i32 786443, metadata !1, metadata !1216, i32 4757, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1219 = metadata !{i32 4758, i32 0, metadata !575, null}
!1220 = metadata !{i32 4764, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !1222, i32 4764, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1222 = metadata !{i32 786443, metadata !1, metadata !575, i32 4764, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1223 = metadata !{i32 4764, i32 0, metadata !1222, null}
!1224 = metadata !{i32 4767, i32 0, metadata !611, null}
!1225 = metadata !{i32 4786, i32 0, metadata !611, null}
!1226 = metadata !{i32 4788, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !1, metadata !611, i32 4787, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1228 = metadata !{i32 4791, i32 0, metadata !1227, null}
!1229 = metadata !{i32 4792, i32 0, metadata !1227, null}
!1230 = metadata !{i32 4799, i32 0, metadata !611, null}
!1231 = metadata !{i32 4805, i32 0, metadata !611, null}
!1232 = metadata !{i32 4810, i32 0, metadata !1233, null}
!1233 = metadata !{i32 786443, metadata !1, metadata !611, i32 4806, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1234 = metadata !{i32 4813, i32 0, metadata !1233, null}
!1235 = metadata !{i32 4815, i32 0, metadata !611, null}
!1236 = metadata !{i32 4819, i32 0, metadata !613, null}
!1237 = metadata !{i32 4821, i32 0, metadata !613, null}
!1238 = metadata !{i32 4823, i32 0, metadata !1239, null}
!1239 = metadata !{i32 786443, metadata !1, metadata !613, i32 4822, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1240 = metadata !{i32 4826, i32 0, metadata !1239, null}
!1241 = metadata !{i32 4828, i32 0, metadata !613, null}
!1242 = metadata !{i32 4831, i32 0, metadata !615, null}
!1243 = metadata !{i32 4833, i32 0, metadata !615, null}
!1244 = metadata !{i32 4839, i32 0, metadata !615, null}
!1245 = metadata !{i32 4841, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !615, i32 4840, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1247 = metadata !{i32 4843, i32 0, metadata !1246, null}
!1248 = metadata !{i32 4846, i32 0, metadata !611, null}
!1249 = metadata !{i32 4850, i32 0, metadata !618, null}
!1250 = metadata !{i32 4855, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1, metadata !618, i32 4854, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1252 = metadata !{i32 4857, i32 0, metadata !1251, null}
!1253 = metadata !{i32 4859, i32 0, metadata !618, null}
!1254 = metadata !{i32 4864, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !617, i32 4864, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1256 = metadata !{i32 4865, i32 0, metadata !1255, null}
!1257 = metadata !{i32 4881, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1, metadata !620, i32 4881, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1259 = metadata !{i32 4870, i32 0, metadata !617, null}
!1260 = metadata !{i32 4872, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !1, metadata !617, i32 4871, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1262 = metadata !{i32 4874, i32 0, metadata !1261, null}
!1263 = metadata !{i32 4884, i32 0, metadata !1258, null}
!1264 = metadata !{i32 4883, i32 0, metadata !1258, null}
!1265 = metadata !{i32 4887, i32 0, metadata !620, null}
!1266 = metadata !{i32 4889, i32 0, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !1, metadata !620, i32 4888, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1268 = metadata !{i32 4891, i32 0, metadata !1267, null}
!1269 = metadata !{i32 4896, i32 0, metadata !575, null}
!1270 = metadata !{i32 4895, i32 0, metadata !575, null}
!1271 = metadata !{i32 4898, i32 0, metadata !1272, null}
!1272 = metadata !{i32 786443, metadata !1, metadata !575, i32 4897, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1273 = metadata !{i32 4900, i32 0, metadata !1272, null}
!1274 = metadata !{i32 4923, i32 0, metadata !627, null}
!1275 = metadata !{i32 4923, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1, metadata !627, i32 4923, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1277 = metadata !{i32 4923, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !1, metadata !1276, i32 4923, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1279 = metadata !{i32 4939, i32 0, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !1, metadata !1281, i32 4939, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1281 = metadata !{i32 786443, metadata !1, metadata !575, i32 4939, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1282 = metadata !{i32 4941, i32 0, metadata !575, null}
!1283 = metadata !{i32 4947, i32 0, metadata !575, null}
!1284 = metadata !{i32 4966, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !632, i32 4966, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1286 = metadata !{i32 4966, i32 0, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !1, metadata !632, i32 4966, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1288 = metadata !{i32 4966, i32 0, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !1, metadata !1287, i32 4966, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1290 = metadata !{i32 4967, i32 0, metadata !575, null}
!1291 = metadata !{i32 4979, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !635, i32 4979, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1293 = metadata !{i32 4979, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1, metadata !635, i32 4979, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1295 = metadata !{i32 4979, i32 0, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !1, metadata !1294, i32 4979, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1297 = metadata !{i32 4980, i32 0, metadata !575, null}
!1298 = metadata !{i32 4985, i32 0, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !1, metadata !575, i32 4985, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1300 = metadata !{i32 4990, i32 0, metadata !575, null}
!1301 = metadata !{i32 4992, i32 0, metadata !1302, null}
!1302 = metadata !{i32 786443, metadata !1, metadata !575, i32 4991, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1303 = metadata !{i32 4993, i32 0, metadata !1302, null}
!1304 = metadata !{i32 4994, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1306, i32 4994, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1306 = metadata !{i32 786443, metadata !1, metadata !1302, i32 4994, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1307 = metadata !{i32 4994, i32 0, metadata !1306, null}
!1308 = metadata !{i32 5000, i32 0, metadata !1302, null}
!1309 = metadata !{i32 5001, i32 0, metadata !575, null}
!1310 = metadata !{i32 5008, i32 0, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !1, metadata !575, i32 5002, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1312 = metadata !{i32 5009, i32 0, metadata !1311, null}
!1313 = metadata !{i32 5010, i32 0, metadata !1311, null}
!1314 = metadata !{i32 5015, i32 0, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !1, metadata !575, i32 5015, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1316 = metadata !{i32 5019, i32 0, metadata !575, null}
!1317 = metadata !{i32 5021, i32 0, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !1, metadata !575, i32 5020, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1319 = metadata !{i32 5022, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1, metadata !1318, i32 5022, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1321 = metadata !{i32 5028, i32 0, metadata !1318, null}
!1322 = metadata !{i32 5032, i32 0, metadata !575, null}
!1323 = metadata !{i32 5033, i32 0, metadata !575, null}
!1324 = metadata !{i32 5039, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1326, i32 5039, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1326 = metadata !{i32 786443, metadata !1, metadata !1327, i32 5039, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1327 = metadata !{i32 786443, metadata !1, metadata !575, i32 5036, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1328 = metadata !{i32 5039, i32 0, metadata !1326, null}
!1329 = metadata !{i32 5040, i32 0, metadata !1327, null}
!1330 = metadata !{i32 5041, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1332, i32 5041, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1332 = metadata !{i32 786443, metadata !1, metadata !1327, i32 5041, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1333 = metadata !{i32 5041, i32 0, metadata !1332, null}
!1334 = metadata !{i32 5047, i32 0, metadata !1335, null}
!1335 = metadata !{i32 786443, metadata !1, metadata !1327, i32 5047, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1336 = metadata !{i32 5048, i32 0, metadata !1327, null}
!1337 = metadata !{i32 5074, i32 0, metadata !638, null}
!1338 = metadata !{i32 5077, i32 0, metadata !638, null}
!1339 = metadata !{i32 5079, i32 0, metadata !638, null}
!1340 = metadata !{i32 5089, i32 0, metadata !641, null}
!1341 = metadata !{i32 5092, i32 0, metadata !641, null}
!1342 = metadata !{i32 5093, i32 0, metadata !641, null}
!1343 = metadata !{i32 5094, i32 0, metadata !641, null}
!1344 = metadata !{i32 5102, i32 0, metadata !575, null}
!1345 = metadata !{i32 5108, i32 0, metadata !575, null}
!1346 = metadata !{i32 5169, i32 0, metadata !575, null}
!1347 = metadata !{i32 5169, i32 0, metadata !1348, null}
!1348 = metadata !{i32 786443, metadata !1, metadata !575, i32 5169, i32 0, i32 357} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1349 = metadata !{i32 5170, i32 0, metadata !575, null}
!1350 = metadata !{i32 5172, i32 0, metadata !645, null}
!1351 = metadata !{i32 5172, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !644, i32 5172, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1353 = metadata !{i32 5172, i32 0, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !1, metadata !1352, i32 5172, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1355 = metadata !{i32 5173, i32 0, metadata !575, null}
!1356 = metadata !{i32 5174, i32 0, metadata !575, null}
!1357 = metadata !{i32 5178, i32 0, metadata !575, null}
!1358 = metadata !{i32 5178, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !1, metadata !575, i32 5178, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1360 = metadata !{i32 5179, i32 0, metadata !575, null}
!1361 = metadata !{i32 5181, i32 0, metadata !648, null}
!1362 = metadata !{i32 5181, i32 0, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !1, metadata !647, i32 5181, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1364 = metadata !{i32 5181, i32 0, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !1, metadata !1363, i32 5181, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1366 = metadata !{i32 5182, i32 0, metadata !575, null}
!1367 = metadata !{i32 5183, i32 0, metadata !575, null}
!1368 = metadata !{i32 5187, i32 0, metadata !575, null}
!1369 = metadata !{i32 5194, i32 0, metadata !569, null}
!1370 = metadata !{i32 5197, i32 0, metadata !650, null}
!1371 = metadata !{i32 5197, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1, metadata !650, i32 5197, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1373 = metadata !{i32 5197, i32 0, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !1, metadata !1372, i32 5197, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1375 = metadata !{i32 5202, i32 0, metadata !651, null}
!1376 = metadata !{i32 5207, i32 0, metadata !651, null}
!1377 = metadata !{i32 5209, i32 0, metadata !654, null}
!1378 = metadata !{i32 5213, i32 0, metadata !654, null}
!1379 = metadata !{i32 5216, i32 0, metadata !1380, null}
!1380 = metadata !{i32 786443, metadata !1, metadata !654, i32 5214, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1381 = metadata !{i32 5220, i32 0, metadata !1380, null}
!1382 = metadata !{i32 5221, i32 0, metadata !1383, null}
!1383 = metadata !{i32 786443, metadata !1, metadata !1384, i32 5221, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1384 = metadata !{i32 786443, metadata !1, metadata !1380, i32 5221, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1385 = metadata !{i32 5222, i32 0, metadata !1380, null}
!1386 = metadata !{i32 5224, i32 0, metadata !1380, null}
!1387 = metadata !{i32 5234, i32 0, metadata !651, null}
!1388 = metadata !{i32 5235, i32 0, metadata !651, null}
!1389 = metadata !{i32 5241, i32 0, metadata !515, null}
!1390 = metadata !{i32 5244, i32 0, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !1, metadata !515, i32 5244, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1392 = metadata !{i32 5247, i32 0, metadata !515, null}
!1393 = metadata !{i32 3802, i32 0, metadata !193, null}
!1394 = metadata !{i32 3803, i32 0, metadata !193, null}
!1395 = metadata !{i32 3804, i32 0, metadata !193, null}
!1396 = metadata !{i32 3805, i32 0, metadata !193, null}
!1397 = metadata !{i32 3807, i32 0, metadata !193, null}
!1398 = metadata !{i32 3814, i32 0, metadata !193, null}
!1399 = metadata !{i32 3848, i32 0, metadata !203, null}
!1400 = metadata !{i32 3849, i32 0, metadata !203, null}
!1401 = metadata !{i32 3850, i32 0, metadata !203, null}
!1402 = metadata !{i32 3851, i32 0, metadata !203, null}
!1403 = metadata !{i32 3852, i32 0, metadata !203, null}
!1404 = metadata !{i32 3853, i32 0, metadata !203, null}
!1405 = metadata !{i32 3855, i32 0, metadata !203, null}
!1406 = metadata !{i32 3862, i32 0, metadata !203, null}
!1407 = metadata !{i32 5525, i32 0, metadata !216, null}
!1408 = metadata !{i32 5526, i32 0, metadata !216, null}
!1409 = metadata !{i32 5527, i32 0, metadata !216, null}
!1410 = metadata !{i32 5533, i32 0, metadata !216, null}
!1411 = metadata !{i32 5541, i32 0, metadata !216, null}
!1412 = metadata !{i32 5543, i32 0, metadata !216, null}
!1413 = metadata !{i32 5545, i32 0, metadata !216, null}
!1414 = metadata !{i32 5547, i32 0, metadata !216, null}
!1415 = metadata !{i32 5548, i32 0, metadata !216, null}
!1416 = metadata !{i32 1897, i32 0, metadata !268, null}
!1417 = metadata !{i32 1898, i32 0, metadata !268, null}
!1418 = metadata !{i32 1899, i32 0, metadata !268, null}
!1419 = metadata !{i32 1900, i32 0, metadata !268, null}
!1420 = metadata !{%struct.compile_stack_type* undef}
!1421 = metadata !{i32 1914, i32 0, metadata !268, null}
!1422 = metadata !{i32 1917, i32 0, metadata !268, null}
!1423 = metadata !{i32 1918, i32 0, metadata !268, null}
!1424 = metadata !{i32 1921, i32 0, metadata !268, null}
!1425 = metadata !{i32 1927, i32 0, metadata !268, null}
!1426 = metadata !{i32 1932, i32 0, metadata !268, null}
!1427 = metadata !{i32 1944, i32 0, metadata !268, null}
!1428 = metadata !{i32 1949, i32 0, metadata !268, null}
!1429 = metadata !{i32 1964, i32 0, metadata !268, null}
!1430 = metadata !{i32 1965, i32 0, metadata !268, null}
!1431 = metadata !{i32 1972, i32 0, metadata !268, null}
!1432 = metadata !{i32 1973, i32 0, metadata !268, null}
!1433 = metadata !{i32 1974, i32 0, metadata !268, null}
!1434 = metadata !{i32 1979, i32 0, metadata !268, null}
!1435 = metadata !{i32 1982, i32 0, metadata !268, null}
!1436 = metadata !{i32 196, i32 0, metadata !510, metadata !1437}
!1437 = metadata !{i32 1986, i32 0, metadata !268, null}
!1438 = metadata !{i32 199, i32 0, metadata !510, metadata !1437}
!1439 = metadata !{i32 97}
!1440 = metadata !{i32 786688, metadata !510, metadata !"c", metadata !74, i32 193, metadata !85, i32 0, metadata !1437} ; [ DW_TAG_auto_variable ] [c] [line 193]
!1441 = metadata !{i32 201, i32 0, metadata !1442, metadata !1437}
!1442 = metadata !{i32 786443, metadata !1, metadata !510, i32 201, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1443 = metadata !{i32 202, i32 0, metadata !1442, metadata !1437}
!1444 = metadata !{i32 205, i32 0, metadata !1445, metadata !1437}
!1445 = metadata !{i32 786443, metadata !1, metadata !510, i32 204, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1446 = metadata !{i32 208, i32 0, metadata !1447, metadata !1437}
!1447 = metadata !{i32 786443, metadata !1, metadata !510, i32 207, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1448 = metadata !{i32 210, i32 0, metadata !510, metadata !1437}
!1449 = metadata !{i32 212, i32 0, metadata !510, metadata !1437}
!1450 = metadata !{i32 1989, i32 0, metadata !268, null}
!1451 = metadata !{i32 1991, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1, metadata !268, i32 1990, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1453 = metadata !{i32 1995, i32 0, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1, metadata !1452, i32 1992, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1455 = metadata !{i32 1996, i32 0, metadata !1454, null}
!1456 = metadata !{i32 1999, i32 0, metadata !1457, null}
!1457 = metadata !{i32 786443, metadata !1, metadata !1452, i32 1998, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1458 = metadata !{i32 2001, i32 0, metadata !1452, null}
!1459 = metadata !{i32 2003, i32 0, metadata !1452, null}
!1460 = metadata !{i32 2009, i32 0, metadata !268, null}
!1461 = metadata !{i32 2004, i32 0, metadata !1452, null}
!1462 = metadata !{i32 2006, i32 0, metadata !268, null}
!1463 = metadata !{i32 2011, i32 0, metadata !1464, null}
!1464 = metadata !{i32 786443, metadata !1, metadata !313, i32 2011, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1465 = metadata !{i32 2900, i32 0, metadata !312, null}
!1466 = metadata !{i32 2017, i32 0, metadata !311, null}
!1467 = metadata !{i32 3083, i32 0, metadata !503, metadata !1468}
!1468 = metadata !{i32 2022, i32 0, metadata !311, null}
!1469 = metadata !{i32 3103, i32 0, metadata !493, metadata !1470}
!1470 = metadata !{i32 2037, i32 0, metadata !317, null}
!1471 = metadata !{i32 2047, i32 0, metadata !312, null}
!1472 = metadata !{i32 2055, i32 0, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !1, metadata !312, i32 2054, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1474 = metadata !{i32 2057, i32 0, metadata !1473, null}
!1475 = metadata !{i32 2138, i32 0, metadata !324, null}
!1476 = metadata !{i32 2212, i32 0, metadata !334, null}
!1477 = metadata !{i32 2224, i32 0, metadata !345, null}
!1478 = metadata !{i32 2272, i32 0, metadata !345, null}
!1479 = metadata !{i32 2291, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !1, metadata !1481, i32 2283, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1481 = metadata !{i32 786443, metadata !1, metadata !350, i32 2282, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1482 = metadata !{i32 2529, i32 0, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !1, metadata !372, i32 2528, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1484 = metadata !{i32 2423, i32 0, metadata !312, null}
!1485 = metadata !{i32 2576, i32 0, metadata !372, null}
!1486 = metadata !{i32 2437, i32 0, metadata !312, null}
!1487 = metadata !{i32 2663, i32 0, metadata !389, null}
!1488 = metadata !{i32 2573, i32 0, metadata !372, null}
!1489 = metadata !{i32 2619, i32 0, metadata !372, null}
!1490 = metadata !{i32 2808, i32 0, metadata !372, null}
!1491 = metadata !{i32 2861, i32 0, metadata !372, null}
!1492 = metadata !{i32 2013, i32 0, metadata !313, null}
!1493 = metadata !{i32 2180, i32 0, metadata !332, null}
!1494 = metadata !{i32 786689, metadata !503, metadata !"pattern", metadata !74, i32 16780293, metadata !157, i32 0, metadata !1468} ; [ DW_TAG_arg_variable ] [pattern] [line 3077]
!1495 = metadata !{i32 3077, i32 0, metadata !503, metadata !1468}
!1496 = metadata !{i32 786689, metadata !503, metadata !"p", metadata !74, i32 33557509, metadata !157, i32 0, metadata !1468} ; [ DW_TAG_arg_variable ] [p] [line 3077]
!1497 = metadata !{i32 786689, metadata !503, metadata !"syntax", metadata !74, i32 50334726, metadata !77, i32 0, metadata !1468} ; [ DW_TAG_arg_variable ] [syntax] [line 3078]
!1498 = metadata !{i32 3078, i32 0, metadata !503, metadata !1468}
!1499 = metadata !{i32 3080, i32 0, metadata !503, metadata !1468}
!1500 = metadata !{i32 786688, metadata !503, metadata !"prev", metadata !74, i32 3080, metadata !157, i32 0, metadata !1468} ; [ DW_TAG_auto_variable ] [prev] [line 3080]
!1501 = metadata !{i32 3081, i32 0, metadata !503, metadata !1468}
!1502 = metadata !{i32 2023, i32 0, metadata !310, null}
!1503 = metadata !{i32 2023, i32 0, metadata !309, null}
!1504 = metadata !{i32 2023, i32 0, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !1, metadata !309, i32 2023, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1506 = metadata !{i32 2027, i32 0, metadata !312, null}
!1507 = metadata !{i32 2032, i32 0, metadata !317, null}
!1508 = metadata !{i32 786689, metadata !493, metadata !"p", metadata !74, i32 16780312, metadata !157, i32 0, metadata !1470} ; [ DW_TAG_arg_variable ] [p] [line 3096]
!1509 = metadata !{i32 3096, i32 0, metadata !493, metadata !1470}
!1510 = metadata !{i32 786689, metadata !493, metadata !"pend", metadata !74, i32 33557528, metadata !157, i32 0, metadata !1470} ; [ DW_TAG_arg_variable ] [pend] [line 3096]
!1511 = metadata !{i32 786689, metadata !493, metadata !"syntax", metadata !74, i32 50334745, metadata !77, i32 0, metadata !1470} ; [ DW_TAG_arg_variable ] [syntax] [line 3097]
!1512 = metadata !{i32 3097, i32 0, metadata !493, metadata !1470}
!1513 = metadata !{i32 786688, metadata !493, metadata !"next", metadata !74, i32 3099, metadata !157, i32 0, metadata !1470} ; [ DW_TAG_auto_variable ] [next] [line 3099]
!1514 = metadata !{i32 3099, i32 0, metadata !493, metadata !1470}
!1515 = metadata !{i32 3100, i32 0, metadata !493, metadata !1470}
!1516 = metadata !{i32 3101, i32 0, metadata !493, metadata !1470}
!1517 = metadata !{i32 786688, metadata !493, metadata !"next_next", metadata !74, i32 3101, metadata !157, i32 0, metadata !1470} ; [ DW_TAG_auto_variable ] [next_next] [line 3101]
!1518 = metadata !{i32 2038, i32 0, metadata !316, null}
!1519 = metadata !{i32 2038, i32 0, metadata !315, null}
!1520 = metadata !{i32 2038, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !1, metadata !315, i32 2038, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1522 = metadata !{i32 2042, i32 0, metadata !312, null}
!1523 = metadata !{i32 2053, i32 0, metadata !312, null}
!1524 = metadata !{i32 2056, i32 0, metadata !1473, null}
!1525 = metadata !{i32 2075, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !1, metadata !1527, i32 2074, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1527 = metadata !{i32 786443, metadata !1, metadata !319, i32 2073, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1528 = metadata !{i32 2076, i32 0, metadata !1526, null}
!1529 = metadata !{i32 2078, i32 0, metadata !1526, null}
!1530 = metadata !{i32 2081, i32 0, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !1, metadata !1526, i32 2081, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1532 = metadata !{i32 2083, i32 0, metadata !1526, null}
!1533 = metadata !{i32 2087, i32 0, metadata !1526, null}
!1534 = metadata !{i32 2089, i32 0, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !1, metadata !1526, i32 2088, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1536 = metadata !{i32 2091, i32 0, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !1, metadata !1535, i32 2091, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1538 = metadata !{i32 2092, i32 0, metadata !1535, null}
!1539 = metadata !{i32 2094, i32 0, metadata !1540, null}
!1540 = metadata !{i32 786443, metadata !1, metadata !1535, i32 2093, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1541 = metadata !{i32 2095, i32 0, metadata !1540, null}
!1542 = metadata !{i32 2096, i32 0, metadata !1540, null}
!1543 = metadata !{i32 2103, i32 0, metadata !1544, null}
!1544 = metadata !{i32 786443, metadata !1, metadata !1526, i32 2102, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1545 = metadata !{i32 2104, i32 0, metadata !1544, null}
!1546 = metadata !{i32 2112, i32 0, metadata !319, null}
!1547 = metadata !{i32 2117, i32 0, metadata !319, null}
!1548 = metadata !{i32 2131, i32 0, metadata !324, null}
!1549 = metadata !{i32 2131, i32 0, metadata !323, null}
!1550 = metadata !{i32 2131, i32 0, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !1, metadata !323, i32 2131, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1552 = metadata !{i32 2143, i32 0, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !1, metadata !324, i32 2142, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1554 = metadata !{i32 13}
!1555 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1552} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1556 = metadata !{i32 3009, i32 0, metadata !486, metadata !1552}
!1557 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1552} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1558 = metadata !{i32 3010, i32 0, metadata !486, metadata !1552}
!1559 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1552} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1560 = metadata !{i32 3011, i32 0, metadata !486, metadata !1552}
!1561 = metadata !{i32 3013, i32 0, metadata !486, metadata !1552}
!1562 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1552}
!1563 = metadata !{i32 786443, metadata !1, metadata !486, i32 3014, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1564 = metadata !{i32 2144, i32 0, metadata !1553, null}
!1565 = metadata !{i32 2145, i32 0, metadata !1553, null}
!1566 = metadata !{i32 2148, i32 0, metadata !324, null}
!1567 = metadata !{i32 18}
!1568 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1566} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1569 = metadata !{i32 3009, i32 0, metadata !486, metadata !1566}
!1570 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1566} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1571 = metadata !{i32 3010, i32 0, metadata !486, metadata !1566}
!1572 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1566} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1573 = metadata !{i32 3011, i32 0, metadata !486, metadata !1566}
!1574 = metadata !{i32 3013, i32 0, metadata !486, metadata !1566}
!1575 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1566}
!1576 = metadata !{i32 2151, i32 0, metadata !324, null}
!1577 = metadata !{i32 2152, i32 0, metadata !324, null}
!1578 = metadata !{i32 2156, i32 0, metadata !319, null}
!1579 = metadata !{i32 2156, i32 0, metadata !326, null}
!1580 = metadata !{i32 2156, i32 0, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !1, metadata !326, i32 2156, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1582 = metadata !{i32 2157, i32 0, metadata !319, null}
!1583 = metadata !{i32 786689, metadata !476, metadata !"loc", metadata !74, i32 33557470, metadata !90, i32 0, metadata !1582} ; [ DW_TAG_arg_variable ] [loc] [line 3038]
!1584 = metadata !{i32 3038, i32 0, metadata !476, metadata !1582}
!1585 = metadata !{i32 786689, metadata !476, metadata !"arg", metadata !74, i32 50334687, metadata !85, i32 0, metadata !1582} ; [ DW_TAG_arg_variable ] [arg] [line 3039]
!1586 = metadata !{i32 3039, i32 0, metadata !476, metadata !1582}
!1587 = metadata !{i32 786689, metadata !476, metadata !"end", metadata !74, i32 67111904, metadata !90, i32 0, metadata !1582} ; [ DW_TAG_arg_variable ] [end] [line 3040]
!1588 = metadata !{i32 3040, i32 0, metadata !476, metadata !1582}
!1589 = metadata !{i32 786688, metadata !476, metadata !"pfrom", metadata !74, i32 3042, metadata !90, i32 0, metadata !1582} ; [ DW_TAG_auto_variable ] [pfrom] [line 3042]
!1590 = metadata !{i32 3042, i32 0, metadata !476, metadata !1582}
!1591 = metadata !{i32 3045, i32 0, metadata !476, metadata !1582}
!1592 = metadata !{i32 3046, i32 0, metadata !476, metadata !1582}
!1593 = metadata !{i32 786688, metadata !476, metadata !"pto", metadata !74, i32 3043, metadata !90, i32 0, metadata !1582} ; [ DW_TAG_auto_variable ] [pto] [line 3043]
!1594 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1595} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1595 = metadata !{i32 3048, i32 0, metadata !476, metadata !1582}
!1596 = metadata !{i32 3010, i32 0, metadata !486, metadata !1595}
!1597 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1595} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1598 = metadata !{i32 3011, i32 0, metadata !486, metadata !1595}
!1599 = metadata !{i32 3013, i32 0, metadata !486, metadata !1595}
!1600 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1595}
!1601 = metadata !{i32 2160, i32 0, metadata !319, null}
!1602 = metadata !{i32 2161, i32 0, metadata !319, null}
!1603 = metadata !{i32 2163, i32 0, metadata !319, null}
!1604 = metadata !{i32 2170, i32 0, metadata !329, null}
!1605 = metadata !{i32 2170, i32 0, metadata !328, null}
!1606 = metadata !{i32 2170, i32 0, metadata !1607, null}
!1607 = metadata !{i32 786443, metadata !1, metadata !328, i32 2170, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1608 = metadata !{i32 19}
!1609 = metadata !{i32 786689, metadata !476, metadata !"op", metadata !74, i32 16780253, metadata !445, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [op] [line 3037]
!1610 = metadata !{i32 2171, i32 0, metadata !329, null}
!1611 = metadata !{i32 3037, i32 0, metadata !476, metadata !1610}
!1612 = metadata !{i32 786689, metadata !476, metadata !"loc", metadata !74, i32 33557470, metadata !90, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [loc] [line 3038]
!1613 = metadata !{i32 3038, i32 0, metadata !476, metadata !1610}
!1614 = metadata !{i32 3}
!1615 = metadata !{i32 786689, metadata !476, metadata !"arg", metadata !74, i32 50334687, metadata !85, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [arg] [line 3039]
!1616 = metadata !{i32 3039, i32 0, metadata !476, metadata !1610}
!1617 = metadata !{i32 786689, metadata !476, metadata !"end", metadata !74, i32 67111904, metadata !90, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [end] [line 3040]
!1618 = metadata !{i32 3040, i32 0, metadata !476, metadata !1610}
!1619 = metadata !{i32 786688, metadata !476, metadata !"pfrom", metadata !74, i32 3042, metadata !90, i32 0, metadata !1610} ; [ DW_TAG_auto_variable ] [pfrom] [line 3042]
!1620 = metadata !{i32 3042, i32 0, metadata !476, metadata !1610}
!1621 = metadata !{i32 3045, i32 0, metadata !476, metadata !1610}
!1622 = metadata !{i32 2172, i32 0, metadata !329, null}
!1623 = metadata !{i32 3046, i32 0, metadata !476, metadata !1610}
!1624 = metadata !{i32 786688, metadata !476, metadata !"pto", metadata !74, i32 3043, metadata !90, i32 0, metadata !1610} ; [ DW_TAG_auto_variable ] [pto] [line 3043]
!1625 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1626} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1626 = metadata !{i32 3048, i32 0, metadata !476, metadata !1610}
!1627 = metadata !{i32 3009, i32 0, metadata !486, metadata !1626}
!1628 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1626} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1629 = metadata !{i32 3010, i32 0, metadata !486, metadata !1626}
!1630 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1626} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1631 = metadata !{i32 3011, i32 0, metadata !486, metadata !1626}
!1632 = metadata !{i32 3013, i32 0, metadata !486, metadata !1626}
!1633 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1626}
!1634 = metadata !{i32 2173, i32 0, metadata !329, null}
!1635 = metadata !{i32 2180, i32 0, metadata !331, null}
!1636 = metadata !{i32 2180, i32 0, metadata !1637, null}
!1637 = metadata !{i32 786443, metadata !1, metadata !331, i32 2180, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1638 = metadata !{i32 2181, i32 0, metadata !312, null}
!1639 = metadata !{i32 2186, i32 0, metadata !334, null}
!1640 = metadata !{i32 2188, i32 0, metadata !334, null}
!1641 = metadata !{i32 2192, i32 0, metadata !334, null}
!1642 = metadata !{i32 2192, i32 0, metadata !336, null}
!1643 = metadata !{i32 2192, i32 0, metadata !1644, null}
!1644 = metadata !{i32 786443, metadata !1, metadata !336, i32 2192, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1645 = metadata !{i32 2198, i32 0, metadata !339, null}
!1646 = metadata !{i32 2198, i32 0, metadata !338, null}
!1647 = metadata !{i32 2198, i32 0, metadata !1648, null}
!1648 = metadata !{i32 786443, metadata !1, metadata !338, i32 2198, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1649 = metadata !{i32 2199, i32 0, metadata !334, null}
!1650 = metadata !{i32 2200, i32 0, metadata !334, null}
!1651 = metadata !{i32 2203, i32 0, metadata !334, null}
!1652 = metadata !{i32 2206, i32 0, metadata !342, null}
!1653 = metadata !{i32 2206, i32 0, metadata !341, null}
!1654 = metadata !{i32 2206, i32 0, metadata !1655, null}
!1655 = metadata !{i32 786443, metadata !1, metadata !341, i32 2206, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1656 = metadata !{i32 2209, i32 0, metadata !334, null}
!1657 = metadata !{i32 2214, i32 0, metadata !334, null}
!1658 = metadata !{i32 2219, i32 0, metadata !345, null}
!1659 = metadata !{i32 2236, i32 0, metadata !345, null}
!1660 = metadata !{i32 2387, i32 0, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !1, metadata !350, i32 2383, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1662 = metadata !{i32 2388, i32 0, metadata !1661, null}
!1663 = metadata !{i32 2241, i32 0, metadata !345, null}
!1664 = metadata !{i32 2221, i32 0, metadata !1665, null}
!1665 = metadata !{i32 786443, metadata !1, metadata !345, i32 2221, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1666 = metadata !{i32 2226, i32 0, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !1, metadata !345, i32 2225, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1668 = metadata !{i32 2228, i32 0, metadata !1669, null}
!1669 = metadata !{i32 786443, metadata !1, metadata !1667, i32 2228, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1670 = metadata !{i32 2229, i32 0, metadata !1667, null}
!1671 = metadata !{i32 2230, i32 0, metadata !1667, null}
!1672 = metadata !{i32 2242, i32 0, metadata !345, null}
!1673 = metadata !{i32 2248, i32 0, metadata !345, null}
!1674 = metadata !{i32 2254, i32 0, metadata !344, null}
!1675 = metadata !{i32 2255, i32 0, metadata !344, null}
!1676 = metadata !{i32 2258, i32 0, metadata !345, null}
!1677 = metadata !{i32 2263, i32 0, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !1, metadata !348, i32 2263, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1679 = metadata !{i32 2265, i32 0, metadata !348, null}
!1680 = metadata !{i32 2266, i32 0, metadata !348, null}
!1681 = metadata !{i32 2274, i32 0, metadata !350, null}
!1682 = metadata !{i32 2276, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !350, i32 2276, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1684 = metadata !{i32 2277, i32 0, metadata !350, null}
!1685 = metadata !{i32 2280, i32 0, metadata !350, null}
!1686 = metadata !{i32 2284, i32 0, metadata !1687, null}
!1687 = metadata !{i32 786443, metadata !1, metadata !1480, i32 2284, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1688 = metadata !{i32 2285, i32 0, metadata !1480, null}
!1689 = metadata !{i32 2293, i32 0, metadata !350, null}
!1690 = metadata !{i32 2298, i32 0, metadata !350, null}
!1691 = metadata !{i32 2287, i32 0, metadata !1480, null}
!1692 = metadata !{i32 2288, i32 0, metadata !1480, null}
!1693 = metadata !{i32 2334, i32 0, metadata !355, null}
!1694 = metadata !{i32 2335, i32 0, metadata !355, null}
!1695 = metadata !{i32 2336, i32 0, metadata !355, null}
!1696 = metadata !{i32 2337, i32 0, metadata !355, null}
!1697 = metadata !{i32 2338, i32 0, metadata !355, null}
!1698 = metadata !{i32 2339, i32 0, metadata !355, null}
!1699 = metadata !{i32 2340, i32 0, metadata !355, null}
!1700 = metadata !{i32 2341, i32 0, metadata !355, null}
!1701 = metadata !{i32 2342, i32 0, metadata !355, null}
!1702 = metadata !{i32 2343, i32 0, metadata !355, null}
!1703 = metadata !{i32 2344, i32 0, metadata !355, null}
!1704 = metadata !{i32 2345, i32 0, metadata !355, null}
!1705 = metadata !{i32 2347, i32 0, metadata !355, null}
!1706 = metadata !{i32 2348, i32 0, metadata !355, null}
!1707 = metadata !{i32 2352, i32 0, metadata !1708, null}
!1708 = metadata !{i32 786443, metadata !1, metadata !355, i32 2352, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1709 = metadata !{i32 2354, i32 0, metadata !355, null}
!1710 = metadata !{i32 2375, i32 0, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !1, metadata !1712, i32 2357, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1712 = metadata !{i32 786443, metadata !1, metadata !355, i32 2356, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1713 = metadata !{i32 2356, i32 0, metadata !1712, null}
!1714 = metadata !{i32 2360, i32 0, metadata !1711, null}
!1715 = metadata !{metadata !"short", metadata !714}
!1716 = metadata !{i32 2361, i32 0, metadata !1711, null}
!1717 = metadata !{i32 2362, i32 0, metadata !1711, null}
!1718 = metadata !{i32 2363, i32 0, metadata !1711, null}
!1719 = metadata !{i32 2364, i32 0, metadata !1711, null}
!1720 = metadata !{i32 2365, i32 0, metadata !1711, null}
!1721 = metadata !{i32 2366, i32 0, metadata !1711, null}
!1722 = metadata !{i32 2367, i32 0, metadata !1711, null}
!1723 = metadata !{i32 2368, i32 0, metadata !1711, null}
!1724 = metadata !{i32 2369, i32 0, metadata !1711, null}
!1725 = metadata !{i32 2370, i32 0, metadata !1711, null}
!1726 = metadata !{i32 2371, i32 0, metadata !1711, null}
!1727 = metadata !{i32 2372, i32 0, metadata !1711, null}
!1728 = metadata !{i32 2373, i32 0, metadata !1711, null}
!1729 = metadata !{i32 2374, i32 0, metadata !1711, null}
!1730 = metadata !{i32 2376, i32 0, metadata !1711, null}
!1731 = metadata !{i32 2377, i32 0, metadata !1711, null}
!1732 = metadata !{i32 2385, i32 0, metadata !1661, null}
!1733 = metadata !{i32 2386, i32 0, metadata !1661, null}
!1734 = metadata !{i32 2389, i32 0, metadata !1661, null}
!1735 = metadata !{i32 2394, i32 0, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !1, metadata !345, i32 2393, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1737 = metadata !{i32 2395, i32 0, metadata !1736, null}
!1738 = metadata !{i32 2401, i32 0, metadata !334, null}
!1739 = metadata !{i32 2402, i32 0, metadata !334, null}
!1740 = metadata !{i32 2403, i32 0, metadata !334, null}
!1741 = metadata !{i32 2405, i32 0, metadata !312, null}
!1742 = metadata !{i32 2409, i32 0, metadata !312, null}
!1743 = metadata !{i32 2416, i32 0, metadata !312, null}
!1744 = metadata !{i32 2430, i32 0, metadata !312, null}
!1745 = metadata !{i32 2444, i32 0, metadata !312, null}
!1746 = metadata !{i32 2449, i32 0, metadata !1747, null}
!1747 = metadata !{i32 786443, metadata !1, metadata !312, i32 2449, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1748 = metadata !{i32 2451, i32 0, metadata !312, null}
!1749 = metadata !{i32 2454, i32 0, metadata !372, null}
!1750 = metadata !{i32 2458, i32 0, metadata !372, null}
!1751 = metadata !{i32 2459, i32 0, metadata !372, null}
!1752 = metadata !{i32 2461, i32 0, metadata !372, null}
!1753 = metadata !{i32 2463, i32 0, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !1, metadata !372, i32 2462, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1755 = metadata !{i32 2465, i32 0, metadata !1754, null}
!1756 = metadata !{i32 2467, i32 0, metadata !1754, null}
!1757 = metadata !{i32 2468, i32 0, metadata !1754, null}
!1758 = metadata !{i32 2474, i32 0, metadata !372, null}
!1759 = metadata !{i32 2475, i32 0, metadata !372, null}
!1760 = metadata !{i32 2477, i32 0, metadata !372, null}
!1761 = metadata !{i32 2478, i32 0, metadata !372, null}
!1762 = metadata !{i32 2484, i32 0, metadata !372, null}
!1763 = metadata !{i32 2486, i32 0, metadata !371, null}
!1764 = metadata !{i32 2487, i32 0, metadata !370, null}
!1765 = metadata !{i32 2487, i32 0, metadata !369, null}
!1766 = metadata !{i32 2487, i32 0, metadata !1767, null}
!1767 = metadata !{i32 786443, metadata !1, metadata !369, i32 2487, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1768 = metadata !{i32 2488, i32 0, metadata !371, null}
!1769 = metadata !{i32 2490, i32 0, metadata !372, null}
!1770 = metadata !{i32 2492, i32 0, metadata !372, null}
!1771 = metadata !{i32 2493, i32 0, metadata !372, null}
!1772 = metadata !{i32 2494, i32 0, metadata !372, null}
!1773 = metadata !{i32 2498, i32 0, metadata !372, null}
!1774 = metadata !{i32 2499, i32 0, metadata !372, null}
!1775 = metadata !{i32 2503, i32 0, metadata !372, null}
!1776 = metadata !{i32 2505, i32 0, metadata !372, null}
!1777 = metadata !{i32 2507, i32 0, metadata !1778, null}
!1778 = metadata !{i32 786443, metadata !1, metadata !372, i32 2506, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1779 = metadata !{i32 2510, i32 0, metadata !1778, null}
!1780 = metadata !{i32 2514, i32 0, metadata !372, null}
!1781 = metadata !{i32 2519, i32 0, metadata !375, null}
!1782 = metadata !{i32 2519, i32 0, metadata !374, null}
!1783 = metadata !{i32 2519, i32 0, metadata !1784, null}
!1784 = metadata !{i32 786443, metadata !1, metadata !374, i32 2519, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1785 = metadata !{i32 2523, i32 0, metadata !376, null}
!1786 = metadata !{i32 14}
!1787 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1785} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1788 = metadata !{i32 3009, i32 0, metadata !486, metadata !1785}
!1789 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1785} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1790 = metadata !{i32 3010, i32 0, metadata !486, metadata !1785}
!1791 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1785} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1792 = metadata !{i32 3011, i32 0, metadata !486, metadata !1785}
!1793 = metadata !{i32 3013, i32 0, metadata !486, metadata !1785}
!1794 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1785}
!1795 = metadata !{i32 2524, i32 0, metadata !376, null}
!1796 = metadata !{i32 2527, i32 0, metadata !372, null}
!1797 = metadata !{i32 2532, i32 0, metadata !1483, null}
!1798 = metadata !{i32 2544, i32 0, metadata !378, null}
!1799 = metadata !{i32 2545, i32 0, metadata !378, null}
!1800 = metadata !{i32 2546, i32 0, metadata !378, null}
!1801 = metadata !{i32 2550, i32 0, metadata !378, null}
!1802 = metadata !{i32 2551, i32 0, metadata !378, null}
!1803 = metadata !{i32 2555, i32 0, metadata !378, null}
!1804 = metadata !{i32 2559, i32 0, metadata !378, null}
!1805 = metadata !{i32 2562, i32 0, metadata !380, null}
!1806 = metadata !{i32 2564, i32 0, metadata !380, null}
!1807 = metadata !{i32 2565, i32 0, metadata !383, null}
!1808 = metadata !{i32 2565, i32 0, metadata !382, null}
!1809 = metadata !{i32 2565, i32 0, metadata !1810, null}
!1810 = metadata !{i32 786443, metadata !1, metadata !382, i32 2565, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1811 = metadata !{i32 2567, i32 0, metadata !380, null}
!1812 = metadata !{i32 2581, i32 0, metadata !372, null}
!1813 = metadata !{i32 2581, i32 0, metadata !385, null}
!1814 = metadata !{i32 2581, i32 0, metadata !1815, null}
!1815 = metadata !{i32 786443, metadata !1, metadata !385, i32 2581, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1816 = metadata !{i32 2582, i32 0, metadata !372, null}
!1817 = metadata !{i32 15}
!1818 = metadata !{i32 786689, metadata !476, metadata !"op", metadata !74, i32 16780253, metadata !445, i32 0, metadata !1816} ; [ DW_TAG_arg_variable ] [op] [line 3037]
!1819 = metadata !{i32 3037, i32 0, metadata !476, metadata !1816}
!1820 = metadata !{i32 786689, metadata !476, metadata !"loc", metadata !74, i32 33557470, metadata !90, i32 0, metadata !1816} ; [ DW_TAG_arg_variable ] [loc] [line 3038]
!1821 = metadata !{i32 3038, i32 0, metadata !476, metadata !1816}
!1822 = metadata !{i32 786689, metadata !476, metadata !"arg", metadata !74, i32 50334687, metadata !85, i32 0, metadata !1816} ; [ DW_TAG_arg_variable ] [arg] [line 3039]
!1823 = metadata !{i32 3039, i32 0, metadata !476, metadata !1816}
!1824 = metadata !{i32 786689, metadata !476, metadata !"end", metadata !74, i32 67111904, metadata !90, i32 0, metadata !1816} ; [ DW_TAG_arg_variable ] [end] [line 3040]
!1825 = metadata !{i32 3040, i32 0, metadata !476, metadata !1816}
!1826 = metadata !{i32 786688, metadata !476, metadata !"pfrom", metadata !74, i32 3042, metadata !90, i32 0, metadata !1816} ; [ DW_TAG_auto_variable ] [pfrom] [line 3042]
!1827 = metadata !{i32 3042, i32 0, metadata !476, metadata !1816}
!1828 = metadata !{i32 3045, i32 0, metadata !476, metadata !1816}
!1829 = metadata !{i32 2584, i32 0, metadata !372, null}
!1830 = metadata !{i32 3046, i32 0, metadata !476, metadata !1816}
!1831 = metadata !{i32 786688, metadata !476, metadata !"pto", metadata !74, i32 3043, metadata !90, i32 0, metadata !1816} ; [ DW_TAG_auto_variable ] [pto] [line 3043]
!1832 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1833} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1833 = metadata !{i32 3048, i32 0, metadata !476, metadata !1816}
!1834 = metadata !{i32 3009, i32 0, metadata !486, metadata !1833}
!1835 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1833} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1836 = metadata !{i32 3010, i32 0, metadata !486, metadata !1833}
!1837 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1833} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1838 = metadata !{i32 3011, i32 0, metadata !486, metadata !1833}
!1839 = metadata !{i32 3013, i32 0, metadata !486, metadata !1833}
!1840 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1833}
!1841 = metadata !{i32 2583, i32 0, metadata !372, null}
!1842 = metadata !{i32 2602, i32 0, metadata !372, null}
!1843 = metadata !{i32 2603, i32 0, metadata !372, null}
!1844 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1843} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1845 = metadata !{i32 3009, i32 0, metadata !486, metadata !1843}
!1846 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1843} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1847 = metadata !{i32 3010, i32 0, metadata !486, metadata !1843}
!1848 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1843} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1849 = metadata !{i32 3011, i32 0, metadata !486, metadata !1843}
!1850 = metadata !{i32 3013, i32 0, metadata !486, metadata !1843}
!1851 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1843}
!1852 = metadata !{i32 2609, i32 0, metadata !372, null}
!1853 = metadata !{i32 2609, i32 0, metadata !387, null}
!1854 = metadata !{i32 2609, i32 0, metadata !1855, null}
!1855 = metadata !{i32 786443, metadata !1, metadata !387, i32 2609, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1856 = metadata !{i32 2610, i32 0, metadata !372, null}
!1857 = metadata !{i32 2612, i32 0, metadata !372, null}
!1858 = metadata !{i32 2613, i32 0, metadata !372, null}
!1859 = metadata !{i32 2614, i32 0, metadata !372, null}
!1860 = metadata !{i32 -1}
!1861 = metadata !{i32 2631, i32 0, metadata !389, null}
!1862 = metadata !{i32 2633, i32 0, metadata !389, null}
!1863 = metadata !{i32 2635, i32 0, metadata !389, null}
!1864 = metadata !{i32 2637, i32 0, metadata !1865, null}
!1865 = metadata !{i32 786443, metadata !1, metadata !389, i32 2636, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1866 = metadata !{i32 2640, i32 0, metadata !1865, null}
!1867 = metadata !{i32 2643, i32 0, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !1, metadata !1869, i32 2643, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1869 = metadata !{i32 786443, metadata !1, metadata !1870, i32 2643, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1870 = metadata !{i32 786443, metadata !1, metadata !389, i32 2643, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1871 = metadata !{i32 2643, i32 0, metadata !1869, null}
!1872 = metadata !{i32 2643, i32 0, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !1, metadata !1869, i32 2643, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1874 = metadata !{i32 2643, i32 0, metadata !1875, null}
!1875 = metadata !{i32 786443, metadata !1, metadata !1873, i32 2643, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1876 = metadata !{i32 2645, i32 0, metadata !389, null}
!1877 = metadata !{i32 2647, i32 0, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !1, metadata !1879, i32 2647, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1879 = metadata !{i32 786443, metadata !1, metadata !389, i32 2646, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1880 = metadata !{i32 2647, i32 0, metadata !1881, null}
!1881 = metadata !{i32 786443, metadata !1, metadata !1882, i32 2647, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1882 = metadata !{i32 786443, metadata !1, metadata !1878, i32 2647, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1883 = metadata !{i32 2647, i32 0, metadata !1882, null}
!1884 = metadata !{i32 2647, i32 0, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !1, metadata !1882, i32 2647, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1886 = metadata !{i32 2647, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !1, metadata !1885, i32 2647, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1888 = metadata !{i32 2648, i32 0, metadata !1879, null}
!1889 = metadata !{i32 32767}
!1890 = metadata !{i32 2654, i32 0, metadata !389, null}
!1891 = metadata !{i32 2657, i32 0, metadata !1892, null}
!1892 = metadata !{i32 786443, metadata !1, metadata !389, i32 2656, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1893 = metadata !{i32 2660, i32 0, metadata !1892, null}
!1894 = metadata !{i32 2665, i32 0, metadata !1895, null}
!1895 = metadata !{i32 786443, metadata !1, metadata !389, i32 2664, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1896 = metadata !{i32 2667, i32 0, metadata !1897, null}
!1897 = metadata !{i32 786443, metadata !1, metadata !1895, i32 2667, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1898 = metadata !{i32 2670, i32 0, metadata !389, null}
!1899 = metadata !{i32 2672, i32 0, metadata !1900, null}
!1900 = metadata !{i32 786443, metadata !1, metadata !389, i32 2671, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1901 = metadata !{i32 2675, i32 0, metadata !1900, null}
!1902 = metadata !{i32 2681, i32 0, metadata !389, null}
!1903 = metadata !{i32 2683, i32 0, metadata !1904, null}
!1904 = metadata !{i32 786443, metadata !1, metadata !389, i32 2682, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1905 = metadata !{i32 2684, i32 0, metadata !1904, null}
!1906 = metadata !{i32 2685, i32 0, metadata !1904, null}
!1907 = metadata !{i32 2694, i32 0, metadata !389, null}
!1908 = metadata !{i32 2696, i32 0, metadata !393, null}
!1909 = metadata !{i32 2696, i32 0, metadata !392, null}
!1910 = metadata !{i32 2696, i32 0, metadata !1911, null}
!1911 = metadata !{i32 786443, metadata !1, metadata !392, i32 2696, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1912 = metadata !{i32 2697, i32 0, metadata !393, null}
!1913 = metadata !{i32 786689, metadata !476, metadata !"op", metadata !74, i32 16780253, metadata !445, i32 0, metadata !1912} ; [ DW_TAG_arg_variable ] [op] [line 3037]
!1914 = metadata !{i32 3037, i32 0, metadata !476, metadata !1912}
!1915 = metadata !{i32 786689, metadata !476, metadata !"loc", metadata !74, i32 33557470, metadata !90, i32 0, metadata !1912} ; [ DW_TAG_arg_variable ] [loc] [line 3038]
!1916 = metadata !{i32 3038, i32 0, metadata !476, metadata !1912}
!1917 = metadata !{i32 786689, metadata !476, metadata !"arg", metadata !74, i32 50334687, metadata !85, i32 0, metadata !1912} ; [ DW_TAG_arg_variable ] [arg] [line 3039]
!1918 = metadata !{i32 3039, i32 0, metadata !476, metadata !1912}
!1919 = metadata !{i32 786689, metadata !476, metadata !"end", metadata !74, i32 67111904, metadata !90, i32 0, metadata !1912} ; [ DW_TAG_arg_variable ] [end] [line 3040]
!1920 = metadata !{i32 3040, i32 0, metadata !476, metadata !1912}
!1921 = metadata !{i32 786688, metadata !476, metadata !"pfrom", metadata !74, i32 3042, metadata !90, i32 0, metadata !1912} ; [ DW_TAG_auto_variable ] [pfrom] [line 3042]
!1922 = metadata !{i32 3042, i32 0, metadata !476, metadata !1912}
!1923 = metadata !{i32 3045, i32 0, metadata !476, metadata !1912}
!1924 = metadata !{i32 3046, i32 0, metadata !476, metadata !1912}
!1925 = metadata !{i32 786688, metadata !476, metadata !"pto", metadata !74, i32 3043, metadata !90, i32 0, metadata !1912} ; [ DW_TAG_auto_variable ] [pto] [line 3043]
!1926 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !1927} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!1927 = metadata !{i32 3048, i32 0, metadata !476, metadata !1912}
!1928 = metadata !{i32 3009, i32 0, metadata !486, metadata !1927}
!1929 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !1927} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!1930 = metadata !{i32 3010, i32 0, metadata !486, metadata !1927}
!1931 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !1927} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!1932 = metadata !{i32 3011, i32 0, metadata !486, metadata !1927}
!1933 = metadata !{i32 3013, i32 0, metadata !486, metadata !1927}
!1934 = metadata !{i32 3014, i32 0, metadata !1563, metadata !1927}
!1935 = metadata !{i32 2698, i32 0, metadata !393, null}
!1936 = metadata !{i32 2699, i32 0, metadata !393, null}
!1937 = metadata !{i32 2713, i32 0, metadata !395, null}
!1938 = metadata !{i32 2715, i32 0, metadata !395, null}
!1939 = metadata !{i32 2715, i32 0, metadata !397, null}
!1940 = metadata !{i32 2715, i32 0, metadata !1941, null}
!1941 = metadata !{i32 786443, metadata !1, metadata !397, i32 2715, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1942 = metadata !{i32 2722, i32 0, metadata !395, null}
!1943 = metadata !{i32 21}
!1944 = metadata !{i32 786689, metadata !451, metadata !"op", metadata !74, i32 16780272, metadata !445, i32 0, metadata !1942} ; [ DW_TAG_arg_variable ] [op] [line 3056]
!1945 = metadata !{i32 3056, i32 0, metadata !451, metadata !1942}
!1946 = metadata !{i32 786689, metadata !451, metadata !"loc", metadata !74, i32 33557489, metadata !90, i32 0, metadata !1942} ; [ DW_TAG_arg_variable ] [loc] [line 3057]
!1947 = metadata !{i32 3057, i32 0, metadata !451, metadata !1942}
!1948 = metadata !{i32 786689, metadata !451, metadata !"arg1", metadata !74, i32 50334706, metadata !85, i32 0, metadata !1942} ; [ DW_TAG_arg_variable ] [arg1] [line 3058]
!1949 = metadata !{i32 3058, i32 0, metadata !451, metadata !1942}
!1950 = metadata !{i32 786689, metadata !451, metadata !"arg2", metadata !74, i32 67111922, metadata !85, i32 0, metadata !1942} ; [ DW_TAG_arg_variable ] [arg2] [line 3058]
!1951 = metadata !{i32 786689, metadata !451, metadata !"end", metadata !74, i32 83889139, metadata !90, i32 0, metadata !1942} ; [ DW_TAG_arg_variable ] [end] [line 3059]
!1952 = metadata !{i32 3059, i32 0, metadata !451, metadata !1942}
!1953 = metadata !{i32 786688, metadata !451, metadata !"pfrom", metadata !74, i32 3061, metadata !90, i32 0, metadata !1942} ; [ DW_TAG_auto_variable ] [pfrom] [line 3061]
!1954 = metadata !{i32 3061, i32 0, metadata !451, metadata !1942}
!1955 = metadata !{i32 3064, i32 0, metadata !451, metadata !1942}
!1956 = metadata !{i32 3065, i32 0, metadata !451, metadata !1942}
!1957 = metadata !{i32 786688, metadata !451, metadata !"pto", metadata !74, i32 3062, metadata !90, i32 0, metadata !1942} ; [ DW_TAG_auto_variable ] [pto] [line 3062]
!1958 = metadata !{i32 786689, metadata !442, metadata !"op", metadata !74, i32 16780238, metadata !445, i32 0, metadata !1959} ; [ DW_TAG_arg_variable ] [op] [line 3022]
!1959 = metadata !{i32 3067, i32 0, metadata !451, metadata !1942}
!1960 = metadata !{i32 3022, i32 0, metadata !442, metadata !1959}
!1961 = metadata !{i32 786689, metadata !442, metadata !"loc", metadata !74, i32 33557455, metadata !90, i32 0, metadata !1959} ; [ DW_TAG_arg_variable ] [loc] [line 3023]
!1962 = metadata !{i32 3023, i32 0, metadata !442, metadata !1959}
!1963 = metadata !{i32 786689, metadata !442, metadata !"arg1", metadata !74, i32 50334672, metadata !85, i32 0, metadata !1959} ; [ DW_TAG_arg_variable ] [arg1] [line 3024]
!1964 = metadata !{i32 3024, i32 0, metadata !442, metadata !1959}
!1965 = metadata !{i32 786689, metadata !442, metadata !"arg2", metadata !74, i32 67111888, metadata !85, i32 0, metadata !1959} ; [ DW_TAG_arg_variable ] [arg2] [line 3024]
!1966 = metadata !{i32 3026, i32 0, metadata !442, metadata !1959}
!1967 = metadata !{i32 3027, i32 0, metadata !1968, metadata !1959}
!1968 = metadata !{i32 786443, metadata !1, metadata !442, i32 3027, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1969 = metadata !{i32 3028, i32 0, metadata !1970, metadata !1959}
!1970 = metadata !{i32 786443, metadata !1, metadata !442, i32 3028, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!1971 = metadata !{i32 2725, i32 0, metadata !395, null}
!1972 = metadata !{i32 23}
!1973 = metadata !{i32 786689, metadata !451, metadata !"op", metadata !74, i32 16780272, metadata !445, i32 0, metadata !1974} ; [ DW_TAG_arg_variable ] [op] [line 3056]
!1974 = metadata !{i32 2731, i32 0, metadata !395, null}
!1975 = metadata !{i32 3056, i32 0, metadata !451, metadata !1974}
!1976 = metadata !{i32 786689, metadata !451, metadata !"loc", metadata !74, i32 33557489, metadata !90, i32 0, metadata !1974} ; [ DW_TAG_arg_variable ] [loc] [line 3057]
!1977 = metadata !{i32 3057, i32 0, metadata !451, metadata !1974}
!1978 = metadata !{i32 5}
!1979 = metadata !{i32 786689, metadata !451, metadata !"arg1", metadata !74, i32 50334706, metadata !85, i32 0, metadata !1974} ; [ DW_TAG_arg_variable ] [arg1] [line 3058]
!1980 = metadata !{i32 3058, i32 0, metadata !451, metadata !1974}
!1981 = metadata !{i32 786689, metadata !451, metadata !"arg2", metadata !74, i32 67111922, metadata !85, i32 0, metadata !1974} ; [ DW_TAG_arg_variable ] [arg2] [line 3058]
!1982 = metadata !{i32 786689, metadata !451, metadata !"end", metadata !74, i32 83889139, metadata !90, i32 0, metadata !1974} ; [ DW_TAG_arg_variable ] [end] [line 3059]
!1983 = metadata !{i32 3059, i32 0, metadata !451, metadata !1974}
!1984 = metadata !{i32 786688, metadata !451, metadata !"pfrom", metadata !74, i32 3061, metadata !90, i32 0, metadata !1974} ; [ DW_TAG_auto_variable ] [pfrom] [line 3061]
!1985 = metadata !{i32 3061, i32 0, metadata !451, metadata !1974}
!1986 = metadata !{i32 3064, i32 0, metadata !451, metadata !1974}
!1987 = metadata !{i32 2732, i32 0, metadata !395, null}
!1988 = metadata !{i32 3065, i32 0, metadata !451, metadata !1974}
!1989 = metadata !{i32 786688, metadata !451, metadata !"pto", metadata !74, i32 3062, metadata !90, i32 0, metadata !1974} ; [ DW_TAG_auto_variable ] [pto] [line 3062]
!1990 = metadata !{i32 786689, metadata !442, metadata !"op", metadata !74, i32 16780238, metadata !445, i32 0, metadata !1991} ; [ DW_TAG_arg_variable ] [op] [line 3022]
!1991 = metadata !{i32 3067, i32 0, metadata !451, metadata !1974}
!1992 = metadata !{i32 3022, i32 0, metadata !442, metadata !1991}
!1993 = metadata !{i32 786689, metadata !442, metadata !"loc", metadata !74, i32 33557455, metadata !90, i32 0, metadata !1991} ; [ DW_TAG_arg_variable ] [loc] [line 3023]
!1994 = metadata !{i32 3023, i32 0, metadata !442, metadata !1991}
!1995 = metadata !{i32 786689, metadata !442, metadata !"arg1", metadata !74, i32 50334672, metadata !85, i32 0, metadata !1991} ; [ DW_TAG_arg_variable ] [arg1] [line 3024]
!1996 = metadata !{i32 3024, i32 0, metadata !442, metadata !1991}
!1997 = metadata !{i32 786689, metadata !442, metadata !"arg2", metadata !74, i32 67111888, metadata !85, i32 0, metadata !1991} ; [ DW_TAG_arg_variable ] [arg2] [line 3024]
!1998 = metadata !{i32 3026, i32 0, metadata !442, metadata !1991}
!1999 = metadata !{i32 3027, i32 0, metadata !1968, metadata !1991}
!2000 = metadata !{i32 3028, i32 0, metadata !1970, metadata !1991}
!2001 = metadata !{i32 2734, i32 0, metadata !395, null}
!2002 = metadata !{i32 2742, i32 0, metadata !2003, null}
!2003 = metadata !{i32 786443, metadata !1, metadata !395, i32 2735, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2004 = metadata !{i32 22}
!2005 = metadata !{i32 786689, metadata !442, metadata !"op", metadata !74, i32 16780238, metadata !445, i32 0, metadata !2002} ; [ DW_TAG_arg_variable ] [op] [line 3022]
!2006 = metadata !{i32 3022, i32 0, metadata !442, metadata !2002}
!2007 = metadata !{i32 786689, metadata !442, metadata !"loc", metadata !74, i32 33557455, metadata !90, i32 0, metadata !2002} ; [ DW_TAG_arg_variable ] [loc] [line 3023]
!2008 = metadata !{i32 3023, i32 0, metadata !442, metadata !2002}
!2009 = metadata !{i32 786689, metadata !442, metadata !"arg1", metadata !74, i32 50334672, metadata !85, i32 0, metadata !2002} ; [ DW_TAG_arg_variable ] [arg1] [line 3024]
!2010 = metadata !{i32 3024, i32 0, metadata !442, metadata !2002}
!2011 = metadata !{i32 786689, metadata !442, metadata !"arg2", metadata !74, i32 67111888, metadata !85, i32 0, metadata !2002} ; [ DW_TAG_arg_variable ] [arg2] [line 3024]
!2012 = metadata !{i32 3026, i32 0, metadata !442, metadata !2002}
!2013 = metadata !{i32 3027, i32 0, metadata !1968, metadata !2002}
!2014 = metadata !{i32 3028, i32 0, metadata !1970, metadata !2002}
!2015 = metadata !{i32 2744, i32 0, metadata !2003, null}
!2016 = metadata !{i32 2760, i32 0, metadata !2003, null}
!2017 = metadata !{i32 786689, metadata !451, metadata !"op", metadata !74, i32 16780272, metadata !445, i32 0, metadata !2016} ; [ DW_TAG_arg_variable ] [op] [line 3056]
!2018 = metadata !{i32 3056, i32 0, metadata !451, metadata !2016}
!2019 = metadata !{i32 786689, metadata !451, metadata !"loc", metadata !74, i32 33557489, metadata !90, i32 0, metadata !2016} ; [ DW_TAG_arg_variable ] [loc] [line 3057]
!2020 = metadata !{i32 3057, i32 0, metadata !451, metadata !2016}
!2021 = metadata !{i32 786689, metadata !451, metadata !"arg1", metadata !74, i32 50334706, metadata !85, i32 0, metadata !2016} ; [ DW_TAG_arg_variable ] [arg1] [line 3058]
!2022 = metadata !{i32 3058, i32 0, metadata !451, metadata !2016}
!2023 = metadata !{i32 786689, metadata !451, metadata !"arg2", metadata !74, i32 67111922, metadata !85, i32 0, metadata !2016} ; [ DW_TAG_arg_variable ] [arg2] [line 3058]
!2024 = metadata !{i32 786689, metadata !451, metadata !"end", metadata !74, i32 83889139, metadata !90, i32 0, metadata !2016} ; [ DW_TAG_arg_variable ] [end] [line 3059]
!2025 = metadata !{i32 3059, i32 0, metadata !451, metadata !2016}
!2026 = metadata !{i32 786688, metadata !451, metadata !"pfrom", metadata !74, i32 3061, metadata !90, i32 0, metadata !2016} ; [ DW_TAG_auto_variable ] [pfrom] [line 3061]
!2027 = metadata !{i32 3061, i32 0, metadata !451, metadata !2016}
!2028 = metadata !{i32 3064, i32 0, metadata !451, metadata !2016}
!2029 = metadata !{i32 2762, i32 0, metadata !2003, null}
!2030 = metadata !{i32 3065, i32 0, metadata !451, metadata !2016}
!2031 = metadata !{i32 786688, metadata !451, metadata !"pto", metadata !74, i32 3062, metadata !90, i32 0, metadata !2016} ; [ DW_TAG_auto_variable ] [pto] [line 3062]
!2032 = metadata !{i32 786689, metadata !442, metadata !"op", metadata !74, i32 16780238, metadata !445, i32 0, metadata !2033} ; [ DW_TAG_arg_variable ] [op] [line 3022]
!2033 = metadata !{i32 3067, i32 0, metadata !451, metadata !2016}
!2034 = metadata !{i32 3022, i32 0, metadata !442, metadata !2033}
!2035 = metadata !{i32 786689, metadata !442, metadata !"loc", metadata !74, i32 33557455, metadata !90, i32 0, metadata !2033} ; [ DW_TAG_arg_variable ] [loc] [line 3023]
!2036 = metadata !{i32 3023, i32 0, metadata !442, metadata !2033}
!2037 = metadata !{i32 786689, metadata !442, metadata !"arg1", metadata !74, i32 50334672, metadata !85, i32 0, metadata !2033} ; [ DW_TAG_arg_variable ] [arg1] [line 3024]
!2038 = metadata !{i32 3024, i32 0, metadata !442, metadata !2033}
!2039 = metadata !{i32 786689, metadata !442, metadata !"arg2", metadata !74, i32 67111888, metadata !85, i32 0, metadata !2033} ; [ DW_TAG_arg_variable ] [arg2] [line 3024]
!2040 = metadata !{i32 3026, i32 0, metadata !442, metadata !2033}
!2041 = metadata !{i32 3027, i32 0, metadata !1968, metadata !2033}
!2042 = metadata !{i32 3028, i32 0, metadata !1970, metadata !2033}
!2043 = metadata !{i32 2763, i32 0, metadata !2003, null}
!2044 = metadata !{i32 2773, i32 0, metadata !372, null}
!2045 = metadata !{i32 2774, i32 0, metadata !372, null}
!2046 = metadata !{i32 2777, i32 0, metadata !2047, null}
!2047 = metadata !{i32 786443, metadata !1, metadata !372, i32 2777, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2048 = metadata !{i32 2781, i32 0, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !1, metadata !372, i32 2780, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2050 = metadata !{i32 2779, i32 0, metadata !372, null}
!2051 = metadata !{i32 2811, i32 0, metadata !400, null}
!2052 = metadata !{i32 2811, i32 0, metadata !399, null}
!2053 = metadata !{i32 2811, i32 0, metadata !2054, null}
!2054 = metadata !{i32 786443, metadata !1, metadata !399, i32 2811, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2055 = metadata !{i32 2812, i32 0, metadata !372, null}
!2056 = metadata !{i32 2816, i32 0, metadata !372, null}
!2057 = metadata !{i32 2819, i32 0, metadata !403, null}
!2058 = metadata !{i32 2819, i32 0, metadata !402, null}
!2059 = metadata !{i32 2819, i32 0, metadata !2060, null}
!2060 = metadata !{i32 786443, metadata !1, metadata !402, i32 2819, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2061 = metadata !{i32 2820, i32 0, metadata !372, null}
!2062 = metadata !{i32 2824, i32 0, metadata !372, null}
!2063 = metadata !{i32 2826, i32 0, metadata !406, null}
!2064 = metadata !{i32 2826, i32 0, metadata !405, null}
!2065 = metadata !{i32 2826, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !1, metadata !405, i32 2826, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2067 = metadata !{i32 2827, i32 0, metadata !372, null}
!2068 = metadata !{i32 2830, i32 0, metadata !372, null}
!2069 = metadata !{i32 2832, i32 0, metadata !409, null}
!2070 = metadata !{i32 2832, i32 0, metadata !408, null}
!2071 = metadata !{i32 2832, i32 0, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !1, metadata !408, i32 2832, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2073 = metadata !{i32 2833, i32 0, metadata !372, null}
!2074 = metadata !{i32 2836, i32 0, metadata !372, null}
!2075 = metadata !{i32 2838, i32 0, metadata !412, null}
!2076 = metadata !{i32 2838, i32 0, metadata !411, null}
!2077 = metadata !{i32 2838, i32 0, metadata !2078, null}
!2078 = metadata !{i32 786443, metadata !1, metadata !411, i32 2838, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2079 = metadata !{i32 2839, i32 0, metadata !372, null}
!2080 = metadata !{i32 2842, i32 0, metadata !372, null}
!2081 = metadata !{i32 2844, i32 0, metadata !415, null}
!2082 = metadata !{i32 2844, i32 0, metadata !414, null}
!2083 = metadata !{i32 2844, i32 0, metadata !2084, null}
!2084 = metadata !{i32 786443, metadata !1, metadata !414, i32 2844, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2085 = metadata !{i32 2845, i32 0, metadata !372, null}
!2086 = metadata !{i32 2848, i32 0, metadata !372, null}
!2087 = metadata !{i32 2850, i32 0, metadata !418, null}
!2088 = metadata !{i32 2850, i32 0, metadata !417, null}
!2089 = metadata !{i32 2850, i32 0, metadata !2090, null}
!2090 = metadata !{i32 786443, metadata !1, metadata !417, i32 2850, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2091 = metadata !{i32 2851, i32 0, metadata !372, null}
!2092 = metadata !{i32 2854, i32 0, metadata !372, null}
!2093 = metadata !{i32 2856, i32 0, metadata !421, null}
!2094 = metadata !{i32 2856, i32 0, metadata !420, null}
!2095 = metadata !{i32 2856, i32 0, metadata !2096, null}
!2096 = metadata !{i32 786443, metadata !1, metadata !420, i32 2856, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2097 = metadata !{i32 2857, i32 0, metadata !372, null}
!2098 = metadata !{i32 2864, i32 0, metadata !372, null}
!2099 = metadata !{i32 2866, i32 0, metadata !372, null}
!2100 = metadata !{i32 2867, i32 0, metadata !372, null}
!2101 = metadata !{i32 3118, i32 0, metadata !435, metadata !2102}
!2102 = metadata !{i32 2870, i32 0, metadata !372, null}
!2103 = metadata !{i32 786689, metadata !435, metadata !"regnum", metadata !74, i32 33557551, metadata !296, i32 0, metadata !2102} ; [ DW_TAG_arg_variable ] [regnum] [line 3119]
!2104 = metadata !{i32 3119, i32 0, metadata !435, metadata !2102}
!2105 = metadata !{i32 3123, i32 0, metadata !2106, metadata !2102}
!2106 = metadata !{i32 786443, metadata !1, metadata !435, i32 3123, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2107 = metadata !{i32 3126, i32 0, metadata !2106, metadata !2102}
!2108 = metadata !{i32 2874, i32 0, metadata !424, null}
!2109 = metadata !{i32 2874, i32 0, metadata !423, null}
!2110 = metadata !{i32 2874, i32 0, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !1, metadata !423, i32 2874, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2112 = metadata !{i32 2875, i32 0, metadata !372, null}
!2113 = metadata !{i32 2880, i32 0, metadata !372, null}
!2114 = metadata !{i32 2890, i32 0, metadata !372, null}
!2115 = metadata !{i32 2922, i32 0, metadata !427, null}
!2116 = metadata !{i32 2922, i32 0, metadata !426, null}
!2117 = metadata !{i32 2922, i32 0, metadata !2118, null}
!2118 = metadata !{i32 786443, metadata !1, metadata !426, i32 2922, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2119 = metadata !{i32 2923, i32 0, metadata !428, null}
!2120 = metadata !{i32 2924, i32 0, metadata !428, null}
!2121 = metadata !{i32 2926, i32 0, metadata !431, null}
!2122 = metadata !{i32 2926, i32 0, metadata !430, null}
!2123 = metadata !{i32 2926, i32 0, metadata !2124, null}
!2124 = metadata !{i32 786443, metadata !1, metadata !430, i32 2926, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2125 = metadata !{i32 2927, i32 0, metadata !312, null}
!2126 = metadata !{i32 2928, i32 0, metadata !312, null}
!2127 = metadata !{i32 2935, i32 0, metadata !268, null}
!2128 = metadata !{i32 2936, i32 0, metadata !268, null}
!2129 = metadata !{i32 786689, metadata !486, metadata !"op", metadata !74, i32 16780225, metadata !445, i32 0, metadata !2128} ; [ DW_TAG_arg_variable ] [op] [line 3009]
!2130 = metadata !{i32 3009, i32 0, metadata !486, metadata !2128}
!2131 = metadata !{i32 786689, metadata !486, metadata !"loc", metadata !74, i32 33557442, metadata !90, i32 0, metadata !2128} ; [ DW_TAG_arg_variable ] [loc] [line 3010]
!2132 = metadata !{i32 3010, i32 0, metadata !486, metadata !2128}
!2133 = metadata !{i32 786689, metadata !486, metadata !"arg", metadata !74, i32 50334659, metadata !85, i32 0, metadata !2128} ; [ DW_TAG_arg_variable ] [arg] [line 3011]
!2134 = metadata !{i32 3011, i32 0, metadata !486, metadata !2128}
!2135 = metadata !{i32 3013, i32 0, metadata !486, metadata !2128}
!2136 = metadata !{i32 3014, i32 0, metadata !1563, metadata !2128}
!2137 = metadata !{i32 2938, i32 0, metadata !268, null}
!2138 = metadata !{i32 2939, i32 0, metadata !268, null}
!2139 = metadata !{i32 2943, i32 0, metadata !268, null}
!2140 = metadata !{i32 2944, i32 0, metadata !434, null}
!2141 = metadata !{i32 2944, i32 0, metadata !433, null}
!2142 = metadata !{i32 2944, i32 0, metadata !2143, null}
!2143 = metadata !{i32 786443, metadata !1, metadata !433, i32 2944, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2144 = metadata !{i32 2946, i32 0, metadata !268, null}
!2145 = metadata !{i32 2949, i32 0, metadata !268, null}
!2146 = metadata !{i32 3000, i32 0, metadata !268, null}
!2147 = metadata !{i32 3001, i32 0, metadata !268, null}
!2148 = metadata !{i32 5665, i32 0, metadata !225, null}
!2149 = metadata !{i32 5666, i32 0, metadata !225, null}
!2150 = metadata !{i32 5667, i32 0, metadata !225, null}
!2151 = metadata !{i32 5672, i32 0, metadata !225, null}
!2152 = metadata !{i32 5680, i32 0, metadata !225, null}
!2153 = metadata !{i32 5676, i32 0, metadata !225, null}
!2154 = metadata !{i32 5682, i32 0, metadata !225, null}
!2155 = metadata !{i32 5687, i32 0, metadata !237, null}
!2156 = metadata !{i32 5689, i32 0, metadata !237, null}
!2157 = metadata !{i32 5694, i32 0, metadata !2158, null}
!2158 = metadata !{i32 786443, metadata !1, metadata !237, i32 5693, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2159 = metadata !{i32 5693, i32 0, metadata !2158, null}
!2160 = metadata !{i32 5697, i32 0, metadata !225, null}
!2161 = metadata !{i32 5700, i32 0, metadata !225, null}
!2162 = metadata !{i32 5702, i32 0, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !1, metadata !225, i32 5701, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2164 = metadata !{i32 5703, i32 0, metadata !2163, null}
!2165 = metadata !{i32 5705, i32 0, metadata !2163, null}
!2166 = metadata !{i32 5706, i32 0, metadata !2163, null}
!2167 = metadata !{i32 5708, i32 0, metadata !225, null}
!2168 = metadata !{i32 5710, i32 0, metadata !225, null}
!2169 = metadata !{i32 5714, i32 0, metadata !225, null}
!2170 = metadata !{i32 5718, i32 0, metadata !225, null}
!2171 = metadata !{i32 5720, i32 0, metadata !225, null}
!2172 = metadata !{i32 5724, i32 0, metadata !2173, null}
!2173 = metadata !{i32 786443, metadata !1, metadata !225, i32 5721, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2174 = metadata !{i32 5728, i32 0, metadata !2175, null}
!2175 = metadata !{i32 786443, metadata !1, metadata !2173, i32 5725, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2176 = metadata !{i32 5729, i32 0, metadata !2175, null}
!2177 = metadata !{i32 5730, i32 0, metadata !2175, null}
!2178 = metadata !{i32 5734, i32 0, metadata !225, null}
!2179 = metadata !{i32 5756, i32 0, metadata !238, null}
!2180 = metadata !{i32 5757, i32 0, metadata !238, null}
!2181 = metadata !{i32 5758, i32 0, metadata !238, null}
!2182 = metadata !{i32 5759, i32 0, metadata !238, null}
!2183 = metadata !{i32 5760, i32 0, metadata !238, null}
!2184 = metadata !{i32 5763, i32 0, metadata !238, null}
!2185 = metadata !{i32 5764, i32 0, metadata !238, null}
!2186 = metadata !{i32 5765, i32 0, metadata !238, null}
!2187 = metadata !{i32 5766, i32 0, metadata !238, null}
!2188 = metadata !{i32 5768, i32 0, metadata !238, null}
!2189 = metadata !{i64 0, i64 8, metadata !722, i64 8, i64 8, metadata !713, i64 16, i64 8, metadata !713, i64 24, i64 8, metadata !713, i64 32, i64 8, metadata !722, i64 40, i64 8, metadata !722, i64 48, i64 8, metadata !713, i64 56, i64 4, metadata !795, i64 56, i64 4, metadata !795, i64 56, i64 4, metadata !795, i64 56, i64 4, metadata !795, i64 56, i64 4, metadata !795, i64 56, i64 4, metadata !795, i64 56, i64 4, metadata !795}
!2190 = metadata !{i32 5770, i32 0, metadata !238, null}
!2191 = metadata !{i32 5771, i32 0, metadata !238, null}
!2192 = metadata !{i32 5776, i32 0, metadata !238, null}
!2193 = metadata !{i32 5778, i32 0, metadata !238, null}
!2194 = metadata !{i32 786689, metadata !154, metadata !"bufp", metadata !74, i32 16780757, metadata !86, i32 0, metadata !2195} ; [ DW_TAG_arg_variable ] [bufp] [line 3541]
!2195 = metadata !{i32 5788, i32 0, metadata !238, null}
!2196 = metadata !{i32 3541, i32 0, metadata !154, metadata !2195}
!2197 = metadata !{i32 786689, metadata !154, metadata !"string", metadata !74, i32 33557974, metadata !157, i32 0, metadata !2195} ; [ DW_TAG_arg_variable ] [string] [line 3542]
!2198 = metadata !{i32 3542, i32 0, metadata !154, metadata !2195}
!2199 = metadata !{i32 786689, metadata !154, metadata !"size", metadata !74, i32 50335191, metadata !85, i32 0, metadata !2195} ; [ DW_TAG_arg_variable ] [size] [line 3543]
!2200 = metadata !{i32 3543, i32 0, metadata !154, metadata !2195}
!2201 = metadata !{i32 786689, metadata !154, metadata !"startpos", metadata !74, i32 67112407, metadata !85, i32 0, metadata !2195} ; [ DW_TAG_arg_variable ] [startpos] [line 3543]
!2202 = metadata !{i32 786689, metadata !154, metadata !"range", metadata !74, i32 83889623, metadata !85, i32 0, metadata !2195} ; [ DW_TAG_arg_variable ] [range] [line 3543]
!2203 = metadata !{i32 786689, metadata !154, metadata !"regs", metadata !74, i32 100666840, metadata !140, i32 0, metadata !2195} ; [ DW_TAG_arg_variable ] [regs] [line 3544]
!2204 = metadata !{i32 3544, i32 0, metadata !154, metadata !2195}
!2205 = metadata !{i32 3546, i32 0, metadata !154, metadata !2195}
!2206 = metadata !{i32 5793, i32 0, metadata !238, null}
!2207 = metadata !{i32 5780, i32 0, metadata !2208, null}
!2208 = metadata !{i32 786443, metadata !1, metadata !238, i32 5779, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2209 = metadata !{i32 5781, i32 0, metadata !2208, null}
!2210 = metadata !{i32 5782, i32 0, metadata !2208, null}
!2211 = metadata !{i32 5784, i32 0, metadata !2208, null}
!2212 = metadata !{i32 5795, i32 0, metadata !262, null}
!2213 = metadata !{i32 5801, i32 0, metadata !2214, null}
!2214 = metadata !{i32 786443, metadata !1, metadata !2215, i32 5800, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2215 = metadata !{i32 786443, metadata !1, metadata !261, i32 5799, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2216 = metadata !{i32 5802, i32 0, metadata !2214, null}
!2217 = metadata !{i32 5799, i32 0, metadata !2215, null}
!2218 = metadata !{i32 5807, i32 0, metadata !262, null}
!2219 = metadata !{i32 5808, i32 0, metadata !262, null}
!2220 = metadata !{i32 5811, i32 0, metadata !238, null}
!2221 = metadata !{i32 5812, i32 0, metadata !238, null}
!2222 = metadata !{i32 5872, i32 0, metadata !263, null}
!2223 = metadata !{i32 5874, i32 0, metadata !263, null}
!2224 = metadata !{i32 5875, i32 0, metadata !263, null}
!2225 = metadata !{i32 5881, i32 0, metadata !263, null}
!2226 = metadata !{i32 5878, i32 0, metadata !263, null}
!2227 = metadata !{i32 5882, i32 0, metadata !263, null}
!2228 = metadata !{i32 5883, i32 0, metadata !263, null}
!2229 = metadata !{i32 5884, i32 0, metadata !263, null}
!2230 = metadata !{i32 5886, i32 0, metadata !263, null}
!2231 = metadata !{i32 5887, i32 0, metadata !263, null}
!2232 = metadata !{i32 5888, i32 0, metadata !263, null}
!2233 = metadata !{i32 5889, i32 0, metadata !263, null}
!2234 = metadata !{i32 3146, i32 0, metadata !462, null}
!2235 = metadata !{i32 3147, i32 0, metadata !462, null}
!2236 = metadata !{i32 3148, i32 0, metadata !462, null}
!2237 = metadata !{i32 3149, i32 0, metadata !462, null}
!2238 = metadata !{i32 3153, i32 0, metadata !462, null}
!2239 = metadata !{i32 3156, i32 0, metadata !462, null}
!2240 = metadata !{i32 3167, i32 0, metadata !462, null}
!2241 = metadata !{i32 3168, i32 0, metadata !462, null}
!2242 = metadata !{i32 3172, i32 0, metadata !462, null}
!2243 = metadata !{i32 3175, i32 0, metadata !462, null}
!2244 = metadata !{i32 3176, i32 0, metadata !462, null}
!2245 = metadata !{i32 3182, i32 0, metadata !2246, null}
!2246 = metadata !{i32 786443, metadata !1, metadata !462, i32 3182, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2247 = metadata !{i32 3184, i32 0, metadata !2248, null}
!2248 = metadata !{i32 786443, metadata !1, metadata !2246, i32 3183, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2249 = metadata !{i32 3188, i32 0, metadata !462, null}
!2250 = metadata !{i32 5264, i32 0, metadata !665, null}
!2251 = metadata !{i32 5265, i32 0, metadata !665, null}
!2252 = metadata !{i32 5269, i32 0, metadata !665, null}
!2253 = metadata !{i32 5271, i32 0, metadata !665, null}
!2254 = metadata !{i32 5277, i32 0, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !1, metadata !665, i32 5272, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2256 = metadata !{i32 5281, i32 0, metadata !2257, null}
!2257 = metadata !{i32 786443, metadata !1, metadata !2255, i32 5278, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2258 = metadata !{i32 5282, i32 0, metadata !2259, null}
!2259 = metadata !{i32 786443, metadata !1, metadata !2260, i32 5282, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2260 = metadata !{i32 786443, metadata !1, metadata !2257, i32 5282, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2261 = metadata !{i32 5282, i32 0, metadata !2260, null}
!2262 = metadata !{i32 5287, i32 0, metadata !2257, null}
!2263 = metadata !{i32 5307, i32 0, metadata !2264, null}
!2264 = metadata !{i32 786443, metadata !1, metadata !2257, i32 5288, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2265 = metadata !{i32 5313, i32 0, metadata !2266, null}
!2266 = metadata !{i32 786443, metadata !1, metadata !2264, i32 5308, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2267 = metadata !{i32 5319, i32 0, metadata !2266, null}
!2268 = metadata !{i32 5323, i32 0, metadata !2266, null}
!2269 = metadata !{i32 5328, i32 0, metadata !2266, null}
!2270 = metadata !{i32 5329, i32 0, metadata !2271, null}
!2271 = metadata !{i32 786443, metadata !1, metadata !2272, i32 5329, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2272 = metadata !{i32 786443, metadata !1, metadata !2266, i32 5329, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2273 = metadata !{i32 5329, i32 0, metadata !2272, null}
!2274 = metadata !{i32 5330, i32 0, metadata !2266, null}
!2275 = metadata !{i32 5333, i32 0, metadata !2276, null}
!2276 = metadata !{i32 786443, metadata !1, metadata !2266, i32 5331, i32 0, i32 385} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2277 = metadata !{i32 5334, i32 0, metadata !2276, null}
!2278 = metadata !{i32 5341, i32 0, metadata !2279, null}
!2279 = metadata !{i32 786443, metadata !1, metadata !2264, i32 5341, i32 0, i32 386} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2280 = metadata !{i32 5343, i32 0, metadata !2264, null}
!2281 = metadata !{i32 5346, i32 0, metadata !2264, null}
!2282 = metadata !{i32 5347, i32 0, metadata !2264, null}
!2283 = metadata !{i32 5353, i32 0, metadata !2257, null}
!2284 = metadata !{i32 5354, i32 0, metadata !2257, null}
!2285 = metadata !{i32 5358, i32 0, metadata !2257, null}
!2286 = metadata !{i32 5363, i32 0, metadata !665, null}
!2287 = metadata !{i32 5373, i32 0, metadata !684, null}
!2288 = metadata !{i32 5374, i32 0, metadata !684, null}
!2289 = metadata !{i32 5377, i32 0, metadata !684, null}
!2290 = metadata !{i32 5379, i32 0, metadata !684, null}
!2291 = metadata !{i32 5384, i32 0, metadata !2292, null}
!2292 = metadata !{i32 786443, metadata !1, metadata !684, i32 5380, i32 0, i32 395} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2293 = metadata !{i32 5388, i32 0, metadata !2294, null}
!2294 = metadata !{i32 786443, metadata !1, metadata !2292, i32 5385, i32 0, i32 396} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2295 = metadata !{i32 5389, i32 0, metadata !2296, null}
!2296 = metadata !{i32 786443, metadata !1, metadata !2297, i32 5389, i32 0, i32 398} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2297 = metadata !{i32 786443, metadata !1, metadata !2294, i32 5389, i32 0, i32 397} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2298 = metadata !{i32 5390, i32 0, metadata !2294, null}
!2299 = metadata !{i32 5391, i32 0, metadata !2294, null}
!2300 = metadata !{i32 5394, i32 0, metadata !2294, null}
!2301 = metadata !{i32 5399, i32 0, metadata !684, null}
!2302 = metadata !{i32 5410, i32 0, metadata !675, null}
!2303 = metadata !{i32 5411, i32 0, metadata !675, null}
!2304 = metadata !{i32 5416, i32 0, metadata !675, null}
!2305 = metadata !{i32 5418, i32 0, metadata !675, null}
!2306 = metadata !{i32 5437, i32 0, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !1, metadata !675, i32 5419, i32 0, i32 387} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2308 = metadata !{i32 5439, i32 0, metadata !2307, null}
!2309 = metadata !{i32 5444, i32 0, metadata !2307, null}
!2310 = metadata !{i32 5445, i32 0, metadata !2307, null}
!2311 = metadata !{i32 5447, i32 0, metadata !2307, null}
!2312 = metadata !{i32 5488, i32 0, metadata !675, null}
!2313 = metadata !{i32 5453, i32 0, metadata !2314, null}
!2314 = metadata !{i32 786443, metadata !1, metadata !2315, i32 5453, i32 0, i32 389} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2315 = metadata !{i32 786443, metadata !1, metadata !2307, i32 5453, i32 0, i32 388} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2316 = metadata !{i32 5453, i32 0, metadata !2315, null}
!2317 = metadata !{i32 5454, i32 0, metadata !2307, null}
!2318 = metadata !{i32 5455, i32 0, metadata !2307, null}
!2319 = metadata !{i32 5458, i32 0, metadata !2307, null}
!2320 = metadata !{i32 5462, i32 0, metadata !2307, null}
!2321 = metadata !{i32 5463, i32 0, metadata !2322, null}
!2322 = metadata !{i32 786443, metadata !1, metadata !2323, i32 5463, i32 0, i32 391} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2323 = metadata !{i32 786443, metadata !1, metadata !2307, i32 5463, i32 0, i32 390} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2324 = metadata !{i32 5463, i32 0, metadata !2323, null}
!2325 = metadata !{i32 5465, i32 0, metadata !2307, null}
!2326 = metadata !{i32 5467, i32 0, metadata !2327, null}
!2327 = metadata !{i32 786443, metadata !1, metadata !2307, i32 5466, i32 0, i32 392} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2328 = metadata !{i32 5468, i32 0, metadata !2329, null}
!2329 = metadata !{i32 786443, metadata !1, metadata !2330, i32 5468, i32 0, i32 394} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2330 = metadata !{i32 786443, metadata !1, metadata !2327, i32 5468, i32 0, i32 393} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/regex.c]
!2331 = metadata !{i32 5469, i32 0, metadata !2327, null}
!2332 = metadata !{i32 5473, i32 0, metadata !2307, null}
!2333 = metadata !{i32 5476, i32 0, metadata !2307, null}
!2334 = metadata !{i32 5481, i32 0, metadata !2307, null}
!2335 = metadata !{i32 5489, i32 0, metadata !675, null}
