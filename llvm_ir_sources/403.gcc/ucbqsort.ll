; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qsz = internal unnamed_addr global i32 0, align 4
@qcmp = internal unnamed_addr global i32 (...)* null, align 8
@thresh = internal unnamed_addr global i32 0, align 4
@mthresh = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @specqsort(i8* %base, i32 %n, i32 %size, i32 (...)* %compar) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !16), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !17), !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !18), !dbg !49
  tail call void @llvm.dbg.value(metadata !{i32 (...)* %compar}, i64 0, metadata !19), !dbg !50
  %cmp = icmp slt i32 %n, 2, !dbg !51
  br i1 %cmp, label %for.end53, label %if.end, !dbg !51

if.end:                                           ; preds = %entry
  store i32 %size, i32* @qsz, align 4, !dbg !52, !tbaa !53
  store i32 (...)* %compar, i32 (...)** @qcmp, align 8, !dbg !56, !tbaa !57
  %mul = shl nsw i32 %size, 2, !dbg !58
  store i32 %mul, i32* @thresh, align 4, !dbg !58, !tbaa !53
  %mul1 = mul nsw i32 %size, 6, !dbg !59
  store i32 %mul1, i32* @mthresh, align 4, !dbg !59, !tbaa !53
  %mul2 = mul nsw i32 %size, %n, !dbg !60
  %idx.ext = sext i32 %mul2 to i64, !dbg !60
  %add.ptr = getelementptr inbounds i8* %base, i64 %idx.ext, !dbg !60
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !26), !dbg !60
  %cmp3 = icmp sgt i32 %n, 3, !dbg !61
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !61

if.then4:                                         ; preds = %if.end
  tail call fastcc void @qst(i8* %base, i8* %add.ptr) #2, !dbg !62
  %0 = load i32* @thresh, align 4, !dbg !64, !tbaa !53
  %idx.ext5 = sext i32 %0 to i64, !dbg !64
  %add.ptr6 = getelementptr inbounds i8* %base, i64 %idx.ext5, !dbg !64
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr6}, i64 0, metadata !24), !dbg !64
  %.pre = load i32* @qsz, align 4, !dbg !65, !tbaa !53
  br label %if.end7, !dbg !67

if.end7:                                          ; preds = %if.end, %if.then4
  %1 = phi i32 [ %.pre, %if.then4 ], [ %size, %if.end ]
  %hi.0 = phi i8* [ %add.ptr6, %if.then4 ], [ %add.ptr, %if.end ]
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !23), !dbg !65
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !22), !dbg !65
  %idx.ext8107 = sext i32 %1 to i64, !dbg !65
  %add.ptr9108 = getelementptr inbounds i8* %base, i64 %idx.ext8107, !dbg !65
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr9108}, i64 0, metadata !23), !dbg !65
  %cmp10109 = icmp ult i8* %add.ptr9108, %hi.0, !dbg !65
  br i1 %cmp10109, label %for.body, label %for.cond24.preheader, !dbg !65

for.body:                                         ; preds = %for.body, %if.end7
  %add.ptr9111 = phi i8* [ %add.ptr9108, %if.end7 ], [ %add.ptr9, %for.body ]
  %j.0110 = phi i8* [ %base, %if.end7 ], [ %add.ptr9.j.0, %for.body ]
  %2 = load i32 (...)** @qcmp, align 8, !dbg !68, !tbaa !57
  %callee.knr.cast = bitcast i32 (...)* %2 to i32 (i8*, i8*, ...)*, !dbg !68
  %call = tail call i32 (i8*, i8*, ...)* %callee.knr.cast(i8* %j.0110, i8* %add.ptr9111) #3, !dbg !68
  %cmp11 = icmp sgt i32 %call, 0, !dbg !68
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr9111}, i64 0, metadata !22), !dbg !69
  %add.ptr9.j.0 = select i1 %cmp11, i8* %add.ptr9111, i8* %j.0110, !dbg !68
  %3 = load i32* @qsz, align 4, !dbg !65, !tbaa !53
  %idx.ext8 = sext i32 %3 to i64, !dbg !65
  %add.ptr9 = getelementptr inbounds i8* %add.ptr9111, i64 %idx.ext8, !dbg !65
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr9111}, i64 0, metadata !23), !dbg !65
  %cmp10 = icmp ult i8* %add.ptr9, %hi.0, !dbg !65
  br i1 %cmp10, label %for.body, label %for.end, !dbg !65

for.end:                                          ; preds = %for.body
  %cmp14 = icmp eq i8* %add.ptr9.j.0, %base, !dbg !70
  br i1 %cmp14, label %for.cond24.preheader, label %if.then15, !dbg !70

if.then15:                                        ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !21), !dbg !71
  %add.ptr17 = getelementptr inbounds i8* %base, i64 %idx.ext8, !dbg !71
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr17}, i64 0, metadata !24), !dbg !71
  %cmp19104 = icmp sgt i32 %3, 0, !dbg !71
  br i1 %cmp19104, label %for.body20, label %for.cond24.preheader, !dbg !71

for.cond18.for.cond24.preheader.loopexit_crit_edge: ; preds = %for.body20
  %.pre115.pre = load i32* @qsz, align 4, !dbg !74, !tbaa !53
  br label %for.cond24.preheader, !dbg !71

for.cond24.preheader:                             ; preds = %if.end7, %if.then15, %for.cond18.for.cond24.preheader.loopexit_crit_edge, %for.end
  %4 = phi i32 [ %3, %for.end ], [ %.pre115.pre, %for.cond18.for.cond24.preheader.loopexit_crit_edge ], [ %3, %if.then15 ], [ %1, %if.end7 ]
  %idx.ext2598 = sext i32 %4 to i64, !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2699}, i64 0, metadata !25), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2699}, i64 0, metadata !24), !dbg !74
  %cmp27100 = icmp slt i32 %4, %mul2, !dbg !74
  br i1 %cmp27100, label %while.cond.preheader.lr.ph, label %for.end53, !dbg !74

while.cond.preheader.lr.ph:                       ; preds = %for.cond24.preheader
  %add.ptr2699 = getelementptr inbounds i8* %base, i64 %idx.ext2598, !dbg !74
  br label %while.cond.preheader, !dbg !74

for.body20:                                       ; preds = %if.then15, %for.body20
  %j.1106 = phi i8* [ %incdec.ptr, %for.body20 ], [ %add.ptr9.j.0, %if.then15 ]
  %i.0105 = phi i8* [ %incdec.ptr21, %for.body20 ], [ %base, %if.then15 ]
  %5 = load i8* %j.1106, align 1, !dbg !76, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i8 %5}, i64 0, metadata !20), !dbg !76
  %6 = load i8* %i.0105, align 1, !dbg !78, !tbaa !54
  %incdec.ptr = getelementptr inbounds i8* %j.1106, i64 1, !dbg !78
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !22), !dbg !78
  store i8 %6, i8* %j.1106, align 1, !dbg !78, !tbaa !54
  %incdec.ptr21 = getelementptr inbounds i8* %i.0105, i64 1, !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr21}, i64 0, metadata !21), !dbg !79
  store i8 %5, i8* %i.0105, align 1, !dbg !79, !tbaa !54
  %cmp19 = icmp ult i8* %incdec.ptr21, %add.ptr17, !dbg !71
  br i1 %cmp19, label %for.body20, label %for.cond18.for.cond24.preheader.loopexit_crit_edge, !dbg !71

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond24.backedge
  %7 = phi i32 [ %4, %while.cond.preheader.lr.ph ], [ %10, %for.cond24.backedge ]
  %add.ptr26103 = phi i8* [ %add.ptr2699, %while.cond.preheader.lr.ph ], [ %add.ptr26, %for.cond24.backedge ]
  %idx.ext25102 = phi i64 [ %idx.ext2598, %while.cond.preheader.lr.ph ], [ %idx.ext25, %for.cond24.backedge ]
  %min.0101 = phi i8* [ %base, %while.cond.preheader.lr.ph ], [ %add.ptr26103, %for.cond24.backedge ]
  br label %while.cond, !dbg !80

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %8 = phi i32 [ %7, %while.cond.preheader ], [ %.pre118, %while.cond ]
  %hi.1 = phi i8* [ %add.ptr26103, %while.cond.preheader ], [ %add.ptr30, %while.cond ]
  %9 = load i32 (...)** @qcmp, align 8, !dbg !80, !tbaa !57
  %idx.ext29 = sext i32 %8 to i64, !dbg !80
  %idx.neg = sub i64 0, %idx.ext29, !dbg !80
  %add.ptr30 = getelementptr inbounds i8* %hi.1, i64 %idx.neg, !dbg !80
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr30}, i64 0, metadata !24), !dbg !80
  %callee.knr.cast31 = bitcast i32 (...)* %9 to i32 (i8*, i8*, ...)*, !dbg !80
  %call32 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast31(i8* %add.ptr30, i8* %add.ptr26103) #3, !dbg !80
  %cmp33 = icmp sgt i32 %call32, 0, !dbg !80
  %.pre118 = load i32* @qsz, align 4, !dbg !80, !tbaa !53
  br i1 %cmp33, label %while.cond, label %while.end, !dbg !80

while.end:                                        ; preds = %while.cond
  %idx.ext34 = sext i32 %.pre118 to i64, !dbg !82
  %add.ptr30.sum = sub i64 %idx.ext34, %idx.ext29, !dbg !82
  %add.ptr35 = getelementptr inbounds i8* %hi.1, i64 %add.ptr30.sum, !dbg !82
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr35}, i64 0, metadata !24), !dbg !82
  %cmp36 = icmp eq i8* %add.ptr35, %add.ptr26103, !dbg !82
  br i1 %cmp36, label %for.cond24.backedge, label %if.then37, !dbg !82

for.cond24.backedge:                              ; preds = %for.end50, %if.then37, %while.end
  %10 = phi i32 [ %.pre118, %while.end ], [ %.pre118, %if.then37 ], [ %.pre116.pre, %for.end50 ]
  %idx.ext25 = sext i32 %10 to i64, !dbg !74
  %add.ptr26 = getelementptr inbounds i8* %add.ptr26103, i64 %idx.ext25, !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr26103}, i64 0, metadata !25), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr26103}, i64 0, metadata !24), !dbg !74
  %cmp27 = icmp ult i8* %add.ptr26, %add.ptr, !dbg !74
  br i1 %cmp27, label %while.cond.preheader, label %for.end53, !dbg !74

if.then37:                                        ; preds = %while.end
  %add.ptr26.sum = add i64 %idx.ext34, %idx.ext25102, !dbg !83
  %add.ptr39.sum = add i64 %add.ptr26.sum, -1, !dbg !83
  %incdec.ptr4195 = getelementptr inbounds i8* %min.0101, i64 %add.ptr39.sum, !dbg !83
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4195}, i64 0, metadata !23), !dbg !83
  %cmp4296 = icmp ult i8* %incdec.ptr4195, %add.ptr26103, !dbg !83
  br i1 %cmp4296, label %for.cond24.backedge, label %for.body43, !dbg !83

for.body43:                                       ; preds = %for.end50, %if.then37
  %11 = phi i32 [ %.pre118, %if.then37 ], [ %.pre116.pre, %for.end50 ]
  %incdec.ptr4197 = phi i8* [ %incdec.ptr4195, %if.then37 ], [ %incdec.ptr41, %for.end50 ]
  %12 = load i8* %incdec.ptr4197, align 1, !dbg !86, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i8 %12}, i64 0, metadata !20), !dbg !86
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4197}, i64 0, metadata !22), !dbg !88
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4197}, i64 0, metadata !21), !dbg !88
  %idx.ext4589 = sext i32 %11 to i64, !dbg !88
  %idx.neg4690 = sub i64 0, %idx.ext4589, !dbg !88
  %add.ptr4791 = getelementptr inbounds i8* %incdec.ptr4197, i64 %idx.neg4690, !dbg !88
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr4791}, i64 0, metadata !22), !dbg !88
  %cmp4892 = icmp ult i8* %add.ptr4791, %add.ptr35, !dbg !88
  br i1 %cmp4892, label %for.end50, label %for.body49, !dbg !88

for.body49:                                       ; preds = %for.body43, %for.body49
  %add.ptr4794 = phi i8* [ %add.ptr47, %for.body49 ], [ %add.ptr4791, %for.body43 ]
  %i.193 = phi i8* [ %add.ptr4794, %for.body49 ], [ %incdec.ptr4197, %for.body43 ]
  %13 = load i8* %add.ptr4794, align 1, !dbg !90, !tbaa !54
  store i8 %13, i8* %i.193, align 1, !dbg !90, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr4794}, i64 0, metadata !21), !dbg !88
  %14 = load i32* @qsz, align 4, !dbg !88, !tbaa !53
  %idx.ext45 = sext i32 %14 to i64, !dbg !88
  %idx.neg46 = sub i64 0, %idx.ext45, !dbg !88
  %add.ptr47 = getelementptr inbounds i8* %add.ptr4794, i64 %idx.neg46, !dbg !88
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr4794}, i64 0, metadata !22), !dbg !88
  %cmp48 = icmp ult i8* %add.ptr47, %add.ptr35, !dbg !88
  br i1 %cmp48, label %for.end50, label %for.body49, !dbg !88

for.end50:                                        ; preds = %for.body49, %for.body43
  %i.1.lcssa = phi i8* [ %incdec.ptr4197, %for.body43 ], [ %add.ptr4794, %for.body49 ]
  store i8 %12, i8* %i.1.lcssa, align 1, !dbg !91, !tbaa !54
  %incdec.ptr41 = getelementptr inbounds i8* %incdec.ptr4197, i64 -1, !dbg !83
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4197}, i64 0, metadata !23), !dbg !83
  %cmp42 = icmp ult i8* %incdec.ptr41, %add.ptr26103, !dbg !83
  %.pre116.pre = load i32* @qsz, align 4, !dbg !74, !tbaa !53
  br i1 %cmp42, label %for.cond24.backedge, label %for.body43, !dbg !83

for.end53:                                        ; preds = %for.cond24.preheader, %for.cond24.backedge, %entry
  ret void, !dbg !92
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @qst(i8* %base, i8* %max) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !31), !dbg !93
  tail call void @llvm.dbg.value(metadata !{i8* %max}, i64 0, metadata !32), !dbg !93
  %sub.ptr.lhs.cast = ptrtoint i8* %max to i64, !dbg !94
  %sub.ptr.rhs.cast = ptrtoint i8* %base to i64, !dbg !94
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !94
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !40), !dbg !94
  br label %do.body, !dbg !95

do.body:                                          ; preds = %do.cond104, %entry
  %max.addr.0 = phi i8* [ %max, %entry ], [ %max.addr.1, %do.cond104 ]
  %lo.0 = phi i32 [ %conv, %entry ], [ %lo.1, %do.cond104 ]
  %base.addr.0 = phi i8* [ %base, %entry ], [ %base.addr.1, %do.cond104 ]
  %0 = load i32* @qsz, align 4, !dbg !96, !tbaa !53
  %div = sdiv i32 %lo.0, %0, !dbg !96
  %shr = ashr i32 %div, 1, !dbg !96
  %mul = mul nsw i32 %shr, %0, !dbg !96
  %idx.ext = sext i32 %mul to i64, !dbg !96
  %add.ptr = getelementptr inbounds i8* %base.addr.0, i64 %idx.ext, !dbg !96
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !34), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !38), !dbg !96
  %1 = load i32* @mthresh, align 4, !dbg !98, !tbaa !53
  %cmp = icmp slt i32 %lo.0, %1, !dbg !98
  br i1 %cmp, label %if.end31, label %if.then, !dbg !98

if.then:                                          ; preds = %do.body
  %2 = load i32 (...)** @qcmp, align 8, !dbg !99, !tbaa !57
  tail call void @llvm.dbg.value(metadata !{i8* %base.addr.0}, i64 0, metadata !36), !dbg !99
  %callee.knr.cast = bitcast i32 (...)* %2 to i32 (i8*, i8*, ...)*, !dbg !99
  %call = tail call i32 (i8*, i8*, ...)* %callee.knr.cast(i8* %base.addr.0, i8* %add.ptr) #3, !dbg !99
  %cmp4 = icmp sgt i32 %call, 0, !dbg !99
  %cond = select i1 %cmp4, i8* %base.addr.0, i8* %add.ptr, !dbg !99
  tail call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !35), !dbg !99
  %3 = load i32 (...)** @qcmp, align 8, !dbg !101, !tbaa !57
  %4 = load i32* @qsz, align 4, !dbg !101, !tbaa !53
  %idx.ext6 = sext i32 %4 to i64, !dbg !101
  %idx.neg = sub i64 0, %idx.ext6, !dbg !101
  %add.ptr7 = getelementptr inbounds i8* %max.addr.0, i64 %idx.neg, !dbg !101
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr7}, i64 0, metadata !39), !dbg !101
  %callee.knr.cast8 = bitcast i32 (...)* %3 to i32 (i8*, i8*, ...)*, !dbg !101
  %call9 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast8(i8* %cond, i8* %add.ptr7) #3, !dbg !101
  %cmp10 = icmp sgt i32 %call9, 0, !dbg !101
  br i1 %cmp10, label %if.then12, label %if.end24, !dbg !101

if.then12:                                        ; preds = %if.then
  %cmp13 = icmp eq i8* %cond, %base.addr.0, !dbg !102
  %cond18 = select i1 %cmp13, i8* %add.ptr, i8* %base.addr.0, !dbg !102
  tail call void @llvm.dbg.value(metadata !{i8* %cond18}, i64 0, metadata !35), !dbg !102
  %5 = load i32 (...)** @qcmp, align 8, !dbg !104, !tbaa !57
  %callee.knr.cast19 = bitcast i32 (...)* %5 to i32 (i8*, i8*, ...)*, !dbg !104
  %call20 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast19(i8* %cond18, i8* %add.ptr7) #3, !dbg !104
  %cmp21 = icmp slt i32 %call20, 0, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr7}, i64 0, metadata !35), !dbg !105
  %add.ptr7.cond18 = select i1 %cmp21, i8* %add.ptr7, i8* %cond18, !dbg !104
  br label %if.end24, !dbg !104

if.end24:                                         ; preds = %if.then12, %if.then
  %j.0 = phi i8* [ %cond, %if.then ], [ %add.ptr7.cond18, %if.then12 ]
  %cmp25 = icmp eq i8* %j.0, %add.ptr, !dbg !106
  br i1 %cmp25, label %if.end31, label %if.then27, !dbg !106

if.then27:                                        ; preds = %if.end24
  %6 = load i32* @qsz, align 4, !dbg !107, !tbaa !53
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !37), !dbg !107
  br label %do.body28, !dbg !109

do.body28:                                        ; preds = %do.body28, %if.then27
  %i.0 = phi i8* [ %add.ptr, %if.then27 ], [ %incdec.ptr, %do.body28 ]
  %j.1 = phi i8* [ %j.0, %if.then27 ], [ %incdec.ptr29, %do.body28 ]
  %ii.0 = phi i32 [ %6, %if.then27 ], [ %dec, %do.body28 ]
  %7 = load i8* %i.0, align 1, !dbg !110, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i8 %7}, i64 0, metadata !33), !dbg !110
  %8 = load i8* %j.1, align 1, !dbg !112, !tbaa !54
  %incdec.ptr = getelementptr inbounds i8* %i.0, i64 1, !dbg !112
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !34), !dbg !112
  store i8 %8, i8* %i.0, align 1, !dbg !112, !tbaa !54
  %incdec.ptr29 = getelementptr inbounds i8* %j.1, i64 1, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr29}, i64 0, metadata !35), !dbg !113
  store i8 %7, i8* %j.1, align 1, !dbg !113, !tbaa !54
  %dec = add nsw i32 %ii.0, -1, !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !37), !dbg !114
  %tobool = icmp eq i32 %dec, 0, !dbg !114
  br i1 %tobool, label %if.end31, label %do.body28, !dbg !114

if.end31:                                         ; preds = %do.body28, %if.end24, %do.body
  tail call void @llvm.dbg.value(metadata !{i8* %base.addr.0}, i64 0, metadata !34), !dbg !115
  %9 = load i32* @qsz, align 4, !dbg !115, !tbaa !53
  %idx.ext32 = sext i32 %9 to i64, !dbg !115
  %idx.neg33 = sub i64 0, %idx.ext32, !dbg !115
  %add.ptr34 = getelementptr inbounds i8* %max.addr.0, i64 %idx.neg33, !dbg !115
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr34}, i64 0, metadata !35), !dbg !115
  br label %while.cond.outer, !dbg !115

while.cond.outer:                                 ; preds = %do.body74, %if.end31
  %i.1.ph = phi i8* [ %base.addr.0, %if.end31 ], [ %tmp.0, %do.body74 ]
  %j.2.ph = phi i8* [ %add.ptr34, %if.end31 ], [ %j.4, %do.body74 ]
  %mid.0.ph = phi i8* [ %add.ptr, %if.end31 ], [ %mid.1, %do.body74 ]
  %cmp35170 = icmp ult i8* %i.1.ph, %mid.0.ph, !dbg !117
  br i1 %cmp35170, label %land.rhs, label %while.cond43.preheader, !dbg !117

land.rhs:                                         ; preds = %while.cond.outer, %while.body
  %i.1171 = phi i8* [ %add.ptr42, %while.body ], [ %i.1.ph, %while.cond.outer ]
  %10 = load i32 (...)** @qcmp, align 8, !dbg !117, !tbaa !57
  %callee.knr.cast37 = bitcast i32 (...)* %10 to i32 (i8*, i8*, ...)*, !dbg !117
  %call38 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast37(i8* %i.1171, i8* %mid.0.ph) #3, !dbg !117
  %cmp39 = icmp slt i32 %call38, 1, !dbg !117
  br i1 %cmp39, label %while.body, label %while.cond43.preheader

while.cond43.preheader:                           ; preds = %while.body, %land.rhs, %while.cond.outer
  %i.1.lcssa = phi i8* [ %i.1.ph, %while.cond.outer ], [ %i.1171, %land.rhs ], [ %add.ptr42, %while.body ]
  %cmp44167 = icmp ugt i8* %j.2.ph, %mid.0.ph, !dbg !119
  br i1 %cmp44167, label %while.body46, label %while.cond43.preheader.while.end65_crit_edge, !dbg !119

while.cond43.preheader.while.end65_crit_edge:     ; preds = %while.cond43.preheader
  %.pre = load i32* @qsz, align 4, !dbg !120, !tbaa !53
  br label %while.end65, !dbg !119

while.body:                                       ; preds = %land.rhs
  %11 = load i32* @qsz, align 4, !dbg !121, !tbaa !53
  %idx.ext41 = sext i32 %11 to i64, !dbg !121
  %add.ptr42 = getelementptr inbounds i8* %i.1171, i64 %idx.ext41, !dbg !121
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr42}, i64 0, metadata !34), !dbg !121
  %cmp35 = icmp ult i8* %add.ptr42, %mid.0.ph, !dbg !117
  br i1 %cmp35, label %land.rhs, label %while.cond43.preheader, !dbg !117

while.body46:                                     ; preds = %while.cond43.preheader, %if.then51
  %j.3168 = phi i8* [ %add.ptr54, %if.then51 ], [ %j.2.ph, %while.cond43.preheader ]
  %12 = load i32 (...)** @qcmp, align 8, !dbg !122, !tbaa !57
  %callee.knr.cast47 = bitcast i32 (...)* %12 to i32 (i8*, i8*, ...)*, !dbg !122
  %call48 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast47(i8* %mid.0.ph, i8* %j.3168) #3, !dbg !122
  %cmp49 = icmp slt i32 %call48, 1, !dbg !122
  %13 = load i32* @qsz, align 4, !dbg !124, !tbaa !53
  %idx.ext52 = sext i32 %13 to i64, !dbg !124
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !122

if.then51:                                        ; preds = %while.body46
  %idx.neg53 = sub i64 0, %idx.ext52, !dbg !124
  %add.ptr54 = getelementptr inbounds i8* %j.3168, i64 %idx.neg53, !dbg !124
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr54}, i64 0, metadata !35), !dbg !124
  %cmp44 = icmp ugt i8* %add.ptr54, %mid.0.ph, !dbg !119
  br i1 %cmp44, label %while.body46, label %while.end65, !dbg !119

if.end55:                                         ; preds = %while.body46
  %add.ptr57 = getelementptr inbounds i8* %i.1.lcssa, i64 %idx.ext52, !dbg !126
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr57}, i64 0, metadata !39), !dbg !126
  %cmp58 = icmp eq i8* %i.1.lcssa, %mid.0.ph, !dbg !127
  tail call void @llvm.dbg.value(metadata !{i8* %j.3168}, i64 0, metadata !36), !dbg !128
  br i1 %cmp58, label %swap, label %if.else, !dbg !127

if.else:                                          ; preds = %if.end55
  %idx.neg62 = sub i64 0, %idx.ext52, !dbg !130
  %add.ptr63 = getelementptr inbounds i8* %j.3168, i64 %idx.neg62, !dbg !130
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr63}, i64 0, metadata !35), !dbg !130
  br label %swap

while.end65:                                      ; preds = %if.then51, %while.cond43.preheader.while.end65_crit_edge
  %14 = phi i32 [ %.pre, %while.cond43.preheader.while.end65_crit_edge ], [ %13, %if.then51 ]
  %j.3.lcssa = phi i8* [ %j.2.ph, %while.cond43.preheader.while.end65_crit_edge ], [ %add.ptr54, %if.then51 ]
  %cmp66 = icmp eq i8* %i.1.lcssa, %mid.0.ph, !dbg !132
  %idx.ext81 = sext i32 %14 to i64, !dbg !120
  br i1 %cmp66, label %for.end, label %if.else69, !dbg !132

if.else69:                                        ; preds = %while.end65
  tail call void @llvm.dbg.value(metadata !{i8* %mid.0.ph}, i64 0, metadata !36), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i8* %i.1.lcssa}, i64 0, metadata !38), !dbg !135
  tail call void @llvm.dbg.value(metadata !{i8* %i.1.lcssa}, i64 0, metadata !39), !dbg !135
  %idx.neg71 = sub i64 0, %idx.ext81, !dbg !136
  %add.ptr72 = getelementptr inbounds i8* %j.3.lcssa, i64 %idx.neg71, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr72}, i64 0, metadata !35), !dbg !136
  br label %swap

swap:                                             ; preds = %if.end55, %if.else, %if.else69
  %15 = phi i32 [ %13, %if.else ], [ %14, %if.else69 ], [ %13, %if.end55 ]
  %j.4 = phi i8* [ %add.ptr63, %if.else ], [ %add.ptr72, %if.else69 ], [ %j.3168, %if.end55 ]
  %jj.0 = phi i8* [ %j.3168, %if.else ], [ %mid.0.ph, %if.else69 ], [ %j.3168, %if.end55 ]
  %mid.1 = phi i8* [ %mid.0.ph, %if.else ], [ %i.1.lcssa, %if.else69 ], [ %j.3168, %if.end55 ]
  %tmp.0 = phi i8* [ %add.ptr57, %if.else ], [ %i.1.lcssa, %if.else69 ], [ %add.ptr57, %if.end55 ]
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !37), !dbg !137
  br label %do.body74, !dbg !138

do.body74:                                        ; preds = %do.body74, %swap
  %i.2 = phi i8* [ %i.1.lcssa, %swap ], [ %incdec.ptr75, %do.body74 ]
  %jj.1 = phi i8* [ %jj.0, %swap ], [ %incdec.ptr76, %do.body74 ]
  %ii.1 = phi i32 [ %15, %swap ], [ %dec78, %do.body74 ]
  %16 = load i8* %i.2, align 1, !dbg !139, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i8 %16}, i64 0, metadata !33), !dbg !139
  %17 = load i8* %jj.1, align 1, !dbg !141, !tbaa !54
  %incdec.ptr75 = getelementptr inbounds i8* %i.2, i64 1, !dbg !141
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr75}, i64 0, metadata !34), !dbg !141
  store i8 %17, i8* %i.2, align 1, !dbg !141, !tbaa !54
  %incdec.ptr76 = getelementptr inbounds i8* %jj.1, i64 1, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr76}, i64 0, metadata !36), !dbg !142
  store i8 %16, i8* %jj.1, align 1, !dbg !142, !tbaa !54
  %dec78 = add nsw i32 %ii.1, -1, !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %dec78}, i64 0, metadata !37), !dbg !143
  %tobool79 = icmp eq i32 %dec78, 0, !dbg !143
  br i1 %tobool79, label %while.cond.outer, label %do.body74, !dbg !143

for.end:                                          ; preds = %while.end65
  tail call void @llvm.dbg.value(metadata !{i8* %mid.0.ph}, i64 0, metadata !35), !dbg !120
  %add.ptr82 = getelementptr inbounds i8* %mid.0.ph, i64 %idx.ext81, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr82}, i64 0, metadata !34), !dbg !120
  %sub.ptr.lhs.cast83 = ptrtoint i8* %mid.0.ph to i64, !dbg !144
  %sub.ptr.rhs.cast84 = ptrtoint i8* %base.addr.0 to i64, !dbg !144
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84, !dbg !144
  %conv86 = trunc i64 %sub.ptr.sub85 to i32, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %conv86}, i64 0, metadata !40), !dbg !144
  %sub.ptr.lhs.cast87 = ptrtoint i8* %max.addr.0 to i64, !dbg !144
  %sub.ptr.rhs.cast88 = ptrtoint i8* %add.ptr82 to i64, !dbg !144
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88, !dbg !144
  %conv90 = trunc i64 %sub.ptr.sub89 to i32, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %conv90}, i64 0, metadata !41), !dbg !144
  %cmp91 = icmp sgt i32 %conv86, %conv90, !dbg !144
  %18 = load i32* @thresh, align 4, !dbg !145, !tbaa !53
  br i1 %cmp91, label %if.else98, label %if.then93, !dbg !144

if.then93:                                        ; preds = %for.end
  %cmp94 = icmp slt i32 %conv86, %18, !dbg !147
  br i1 %cmp94, label %do.cond104, label %if.then96, !dbg !147

if.then96:                                        ; preds = %if.then93
  tail call fastcc void @qst(i8* %base.addr.0, i8* %mid.0.ph) #2, !dbg !149
  br label %do.cond104, !dbg !149

if.else98:                                        ; preds = %for.end
  %cmp99 = icmp slt i32 %conv90, %18, !dbg !145
  br i1 %cmp99, label %do.cond104, label %if.then101, !dbg !145

if.then101:                                       ; preds = %if.else98
  tail call fastcc void @qst(i8* %add.ptr82, i8* %max.addr.0) #2, !dbg !150
  br label %do.cond104, !dbg !150

do.cond104:                                       ; preds = %if.then101, %if.else98, %if.then96, %if.then93
  %max.addr.1 = phi i8* [ %max.addr.0, %if.then93 ], [ %max.addr.0, %if.then96 ], [ %mid.0.ph, %if.else98 ], [ %mid.0.ph, %if.then101 ]
  %lo.1 = phi i32 [ %conv90, %if.then93 ], [ %conv90, %if.then96 ], [ %conv86, %if.else98 ], [ %conv86, %if.then101 ]
  %base.addr.1 = phi i8* [ %add.ptr82, %if.then93 ], [ %add.ptr82, %if.then96 ], [ %base.addr.0, %if.else98 ], [ %base.addr.0, %if.then101 ]
  %19 = load i32* @thresh, align 4, !dbg !151, !tbaa !53
  %cmp105 = icmp slt i32 %lo.1, %19, !dbg !151
  br i1 %cmp105, label %do.end107, label %do.body, !dbg !151

do.end107:                                        ; preds = %do.cond104
  ret void, !dbg !152
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !42, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !27}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"specqsort", metadata !"specqsort", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (i8*, i32, i32, i32 (...)*)* @specqsort, null, null, metadata !15, i32 36} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 36] [specqsort]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !10, metadata !11}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !10, metadata !14}
!14 = metadata !{i32 786456}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!16 = metadata !{i32 786689, metadata !4, metadata !"base", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 32]
!17 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 33554465, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 33]
!18 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 50331682, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 34]
!19 = metadata !{i32 786689, metadata !4, metadata !"compar", metadata !5, i32 67108899, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [compar] [line 35]
!20 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 37, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 37]
!21 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 37]
!22 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 37]
!23 = metadata !{i32 786688, metadata !4, metadata !"lo", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lo] [line 37]
!24 = metadata !{i32 786688, metadata !4, metadata !"hi", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hi] [line 37]
!25 = metadata !{i32 786688, metadata !4, metadata !"min", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 38]
!26 = metadata !{i32 786688, metadata !4, metadata !"max", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 38]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"qst", metadata !"qst", metadata !"", i32 108, metadata !28, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*)* @qst, null, null, metadata !30, i32 109} ; [ DW_TAG_subprogram ] [line 108] [local] [def] [scope 109] [qst]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !8, metadata !8}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41}
!31 = metadata !{i32 786689, metadata !27, metadata !"base", metadata !5, i32 16777324, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 108]
!32 = metadata !{i32 786689, metadata !27, metadata !"max", metadata !5, i32 33554540, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 108]
!33 = metadata !{i32 786688, metadata !27, metadata !"c", metadata !5, i32 110, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 110]
!34 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !5, i32 110, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 110]
!35 = metadata !{i32 786688, metadata !27, metadata !"j", metadata !5, i32 110, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 110]
!36 = metadata !{i32 786688, metadata !27, metadata !"jj", metadata !5, i32 110, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 110]
!37 = metadata !{i32 786688, metadata !27, metadata !"ii", metadata !5, i32 111, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 111]
!38 = metadata !{i32 786688, metadata !27, metadata !"mid", metadata !5, i32 112, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mid] [line 112]
!39 = metadata !{i32 786688, metadata !27, metadata !"tmp", metadata !5, i32 112, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 112]
!40 = metadata !{i32 786688, metadata !27, metadata !"lo", metadata !5, i32 113, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lo] [line 113]
!41 = metadata !{i32 786688, metadata !27, metadata !"hi", metadata !5, i32 113, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hi] [line 113]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46}
!43 = metadata !{i32 786484, i32 0, null, metadata !"qcmp", metadata !"qcmp", metadata !"", metadata !5, i32 16, metadata !11, i32 1, i32 1, i32 (...)** @qcmp, null} ; [ DW_TAG_variable ] [qcmp] [line 16] [local] [def]
!44 = metadata !{i32 786484, i32 0, null, metadata !"qsz", metadata !"qsz", metadata !"", metadata !5, i32 17, metadata !10, i32 1, i32 1, i32* @qsz, null} ; [ DW_TAG_variable ] [qsz] [line 17] [local] [def]
!45 = metadata !{i32 786484, i32 0, null, metadata !"thresh", metadata !"thresh", metadata !"", metadata !5, i32 18, metadata !10, i32 1, i32 1, i32* @thresh, null} ; [ DW_TAG_variable ] [thresh] [line 18] [local] [def]
!46 = metadata !{i32 786484, i32 0, null, metadata !"mthresh", metadata !"mthresh", metadata !"", metadata !5, i32 19, metadata !10, i32 1, i32 1, i32* @mthresh, null} ; [ DW_TAG_variable ] [mthresh] [line 19] [local] [def]
!47 = metadata !{i32 32, i32 0, metadata !4, null}
!48 = metadata !{i32 33, i32 0, metadata !4, null}
!49 = metadata !{i32 34, i32 0, metadata !4, null}
!50 = metadata !{i32 35, i32 0, metadata !4, null}
!51 = metadata !{i32 40, i32 0, metadata !4, null}
!52 = metadata !{i32 42, i32 0, metadata !4, null}
!53 = metadata !{metadata !"int", metadata !54}
!54 = metadata !{metadata !"omnipotent char", metadata !55}
!55 = metadata !{metadata !"Simple C/C++ TBAA"}
!56 = metadata !{i32 43, i32 0, metadata !4, null}
!57 = metadata !{metadata !"any pointer", metadata !54}
!58 = metadata !{i32 44, i32 0, metadata !4, null}
!59 = metadata !{i32 45, i32 0, metadata !4, null}
!60 = metadata !{i32 46, i32 0, metadata !4, null}
!61 = metadata !{i32 47, i32 0, metadata !4, null}
!62 = metadata !{i32 48, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!64 = metadata !{i32 49, i32 0, metadata !63, null}
!65 = metadata !{i32 59, i32 0, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!67 = metadata !{i32 50, i32 0, metadata !63, null}
!68 = metadata !{i32 60, i32 0, metadata !66, null}
!69 = metadata !{i32 61, i32 0, metadata !66, null}
!70 = metadata !{i32 62, i32 0, metadata !4, null}
!71 = metadata !{i32 64, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 64, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!73 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!74 = metadata !{i32 77, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !4, i32 77, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!76 = metadata !{i32 65, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !72, i32 64, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!78 = metadata !{i32 66, i32 0, metadata !77, null}
!79 = metadata !{i32 67, i32 0, metadata !77, null}
!80 = metadata !{i32 78, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !75, i32 77, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!82 = metadata !{i32 80, i32 0, metadata !81, null}
!83 = metadata !{i32 81, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 81, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!85 = metadata !{i32 786443, metadata !1, metadata !81, i32 80, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!86 = metadata !{i32 82, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !84, i32 81, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!88 = metadata !{i32 83, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !87, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!90 = metadata !{i32 84, i32 0, metadata !89, null}
!91 = metadata !{i32 85, i32 0, metadata !87, null}
!92 = metadata !{i32 85, i32 0, metadata !4, null}
!93 = metadata !{i32 108, i32 0, metadata !27, null}
!94 = metadata !{i32 124, i32 0, metadata !27, null}
!95 = metadata !{i32 125, i32 0, metadata !27, null}
!96 = metadata !{i32 126, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !27, i32 125, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!98 = metadata !{i32 127, i32 0, metadata !97, null}
!99 = metadata !{i32 128, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !97, i32 127, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!101 = metadata !{i32 129, i32 0, metadata !100, null}
!102 = metadata !{i32 131, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !100, i32 129, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!104 = metadata !{i32 132, i32 0, metadata !103, null}
!105 = metadata !{i32 133, i32 0, metadata !103, null}
!106 = metadata !{i32 135, i32 0, metadata !100, null}
!107 = metadata !{i32 136, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !100, i32 135, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!109 = metadata !{i32 137, i32 0, metadata !108, null}
!110 = metadata !{i32 138, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !108, i32 137, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!112 = metadata !{i32 139, i32 0, metadata !111, null}
!113 = metadata !{i32 140, i32 0, metadata !111, null}
!114 = metadata !{i32 141, i32 0, metadata !111, null}
!115 = metadata !{i32 147, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !97, i32 147, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!117 = metadata !{i32 148, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !116, i32 147, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!119 = metadata !{i32 150, i32 0, metadata !118, null}
!120 = metadata !{i32 191, i32 0, metadata !97, null}
!121 = metadata !{i32 149, i32 0, metadata !118, null}
!122 = metadata !{i32 151, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !118, i32 150, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!124 = metadata !{i32 152, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !123, i32 151, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!126 = metadata !{i32 155, i32 0, metadata !123, null}
!127 = metadata !{i32 156, i32 0, metadata !123, null}
!128 = metadata !{i32 158, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !123, i32 156, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!130 = metadata !{i32 162, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !123, i32 159, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!132 = metadata !{i32 166, i32 0, metadata !118, null}
!133 = metadata !{i32 170, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !118, i32 168, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!135 = metadata !{i32 171, i32 0, metadata !134, null}
!136 = metadata !{i32 172, i32 0, metadata !134, null}
!137 = metadata !{i32 175, i32 0, metadata !118, null}
!138 = metadata !{i32 176, i32 0, metadata !118, null}
!139 = metadata !{i32 177, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !118, i32 176, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!141 = metadata !{i32 178, i32 0, metadata !140, null}
!142 = metadata !{i32 179, i32 0, metadata !140, null}
!143 = metadata !{i32 180, i32 0, metadata !140, null}
!144 = metadata !{i32 192, i32 0, metadata !97, null}
!145 = metadata !{i32 198, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !97, i32 197, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!147 = metadata !{i32 193, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !97, i32 192, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/ucbqsort.c]
!149 = metadata !{i32 194, i32 0, metadata !148, null}
!150 = metadata !{i32 199, i32 0, metadata !146, null}
!151 = metadata !{i32 202, i32 0, metadata !97, null}
!152 = metadata !{i32 203, i32 0, metadata !27, null}
