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
  %cmp = icmp slt i32 %n, 2
  br i1 %cmp, label %for.end53, label %if.end

if.end:                                           ; preds = %entry
  store i32 %size, i32* @qsz, align 4, !tbaa !0
  store i32 (...)* %compar, i32 (...)** @qcmp, align 8, !tbaa !3
  %mul = shl nsw i32 %size, 2
  store i32 %mul, i32* @thresh, align 4, !tbaa !0
  %mul1 = mul nsw i32 %size, 6
  store i32 %mul1, i32* @mthresh, align 4, !tbaa !0
  %mul2 = mul nsw i32 %size, %n
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8* %base, i64 %idx.ext
  %cmp3 = icmp sgt i32 %n, 3
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  tail call fastcc void @qst(i8* %base, i8* %add.ptr) #1
  %0 = load i32* @thresh, align 4, !tbaa !0
  %idx.ext5 = sext i32 %0 to i64
  %add.ptr6 = getelementptr inbounds i8* %base, i64 %idx.ext5
  %.pre = load i32* @qsz, align 4, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then4
  %1 = phi i32 [ %.pre, %if.then4 ], [ %size, %if.end ]
  %hi.0 = phi i8* [ %add.ptr6, %if.then4 ], [ %add.ptr, %if.end ]
  %idx.ext8107 = sext i32 %1 to i64
  %add.ptr9108 = getelementptr inbounds i8* %base, i64 %idx.ext8107
  %cmp10109 = icmp ult i8* %add.ptr9108, %hi.0
  br i1 %cmp10109, label %for.body, label %for.cond24.preheader

for.body:                                         ; preds = %for.body, %if.end7
  %add.ptr9111 = phi i8* [ %add.ptr9108, %if.end7 ], [ %add.ptr9, %for.body ]
  %j.0110 = phi i8* [ %base, %if.end7 ], [ %add.ptr9.j.0, %for.body ]
  %2 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %callee.knr.cast = bitcast i32 (...)* %2 to i32 (i8*, i8*, ...)*
  %call = tail call i32 (i8*, i8*, ...)* %callee.knr.cast(i8* %j.0110, i8* %add.ptr9111) #2
  %cmp11 = icmp sgt i32 %call, 0
  %add.ptr9.j.0 = select i1 %cmp11, i8* %add.ptr9111, i8* %j.0110
  %3 = load i32* @qsz, align 4, !tbaa !0
  %idx.ext8 = sext i32 %3 to i64
  %add.ptr9 = getelementptr inbounds i8* %add.ptr9111, i64 %idx.ext8
  %cmp10 = icmp ult i8* %add.ptr9, %hi.0
  br i1 %cmp10, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp14 = icmp eq i8* %add.ptr9.j.0, %base
  br i1 %cmp14, label %for.cond24.preheader, label %if.then15

if.then15:                                        ; preds = %for.end
  %add.ptr17 = getelementptr inbounds i8* %base, i64 %idx.ext8
  %cmp19104 = icmp sgt i32 %3, 0
  br i1 %cmp19104, label %for.body20, label %for.cond24.preheader

for.cond18.for.cond24.preheader.loopexit_crit_edge: ; preds = %for.body20
  %.pre115.pre = load i32* @qsz, align 4, !tbaa !0
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %if.end7, %if.then15, %for.cond18.for.cond24.preheader.loopexit_crit_edge, %for.end
  %4 = phi i32 [ %3, %for.end ], [ %.pre115.pre, %for.cond18.for.cond24.preheader.loopexit_crit_edge ], [ %3, %if.then15 ], [ %1, %if.end7 ]
  %idx.ext2598 = sext i32 %4 to i64
  %cmp27100 = icmp slt i32 %4, %mul2
  br i1 %cmp27100, label %while.cond.preheader.lr.ph, label %for.end53

while.cond.preheader.lr.ph:                       ; preds = %for.cond24.preheader
  %add.ptr2699 = getelementptr inbounds i8* %base, i64 %idx.ext2598
  br label %while.cond.preheader

for.body20:                                       ; preds = %if.then15, %for.body20
  %j.1106 = phi i8* [ %incdec.ptr, %for.body20 ], [ %add.ptr9.j.0, %if.then15 ]
  %i.0105 = phi i8* [ %incdec.ptr21, %for.body20 ], [ %base, %if.then15 ]
  %5 = load i8* %j.1106, align 1, !tbaa !1
  %6 = load i8* %i.0105, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %j.1106, i64 1
  store i8 %6, i8* %j.1106, align 1, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8* %i.0105, i64 1
  store i8 %5, i8* %i.0105, align 1, !tbaa !1
  %cmp19 = icmp ult i8* %incdec.ptr21, %add.ptr17
  br i1 %cmp19, label %for.body20, label %for.cond18.for.cond24.preheader.loopexit_crit_edge

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond24.backedge
  %7 = phi i32 [ %4, %while.cond.preheader.lr.ph ], [ %10, %for.cond24.backedge ]
  %add.ptr26103 = phi i8* [ %add.ptr2699, %while.cond.preheader.lr.ph ], [ %add.ptr26, %for.cond24.backedge ]
  %idx.ext25102 = phi i64 [ %idx.ext2598, %while.cond.preheader.lr.ph ], [ %idx.ext25, %for.cond24.backedge ]
  %min.0101 = phi i8* [ %base, %while.cond.preheader.lr.ph ], [ %add.ptr26103, %for.cond24.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %8 = phi i32 [ %7, %while.cond.preheader ], [ %.pre118, %while.cond ]
  %hi.1 = phi i8* [ %add.ptr26103, %while.cond.preheader ], [ %add.ptr30, %while.cond ]
  %9 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %idx.ext29 = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext29
  %add.ptr30 = getelementptr inbounds i8* %hi.1, i64 %idx.neg
  %callee.knr.cast31 = bitcast i32 (...)* %9 to i32 (i8*, i8*, ...)*
  %call32 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast31(i8* %add.ptr30, i8* %add.ptr26103) #2
  %cmp33 = icmp sgt i32 %call32, 0
  %.pre118 = load i32* @qsz, align 4, !tbaa !0
  br i1 %cmp33, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %idx.ext34 = sext i32 %.pre118 to i64
  %add.ptr30.sum = sub i64 %idx.ext34, %idx.ext29
  %add.ptr35 = getelementptr inbounds i8* %hi.1, i64 %add.ptr30.sum
  %cmp36 = icmp eq i8* %add.ptr35, %add.ptr26103
  br i1 %cmp36, label %for.cond24.backedge, label %if.then37

for.cond24.backedge:                              ; preds = %for.end50, %if.then37, %while.end
  %10 = phi i32 [ %.pre118, %while.end ], [ %.pre118, %if.then37 ], [ %.pre116.pre, %for.end50 ]
  %idx.ext25 = sext i32 %10 to i64
  %add.ptr26 = getelementptr inbounds i8* %add.ptr26103, i64 %idx.ext25
  %cmp27 = icmp ult i8* %add.ptr26, %add.ptr
  br i1 %cmp27, label %while.cond.preheader, label %for.end53

if.then37:                                        ; preds = %while.end
  %add.ptr26.sum = add i64 %idx.ext34, %idx.ext25102
  %add.ptr39.sum = add i64 %add.ptr26.sum, -1
  %incdec.ptr4195 = getelementptr inbounds i8* %min.0101, i64 %add.ptr39.sum
  %cmp4296 = icmp ult i8* %incdec.ptr4195, %add.ptr26103
  br i1 %cmp4296, label %for.cond24.backedge, label %for.body43

for.body43:                                       ; preds = %for.end50, %if.then37
  %11 = phi i32 [ %.pre118, %if.then37 ], [ %.pre116.pre, %for.end50 ]
  %incdec.ptr4197 = phi i8* [ %incdec.ptr4195, %if.then37 ], [ %incdec.ptr41, %for.end50 ]
  %12 = load i8* %incdec.ptr4197, align 1, !tbaa !1
  %idx.ext4589 = sext i32 %11 to i64
  %idx.neg4690 = sub i64 0, %idx.ext4589
  %add.ptr4791 = getelementptr inbounds i8* %incdec.ptr4197, i64 %idx.neg4690
  %cmp4892 = icmp ult i8* %add.ptr4791, %add.ptr35
  br i1 %cmp4892, label %for.end50, label %for.body49

for.body49:                                       ; preds = %for.body43, %for.body49
  %add.ptr4794 = phi i8* [ %add.ptr47, %for.body49 ], [ %add.ptr4791, %for.body43 ]
  %i.193 = phi i8* [ %add.ptr4794, %for.body49 ], [ %incdec.ptr4197, %for.body43 ]
  %13 = load i8* %add.ptr4794, align 1, !tbaa !1
  store i8 %13, i8* %i.193, align 1, !tbaa !1
  %14 = load i32* @qsz, align 4, !tbaa !0
  %idx.ext45 = sext i32 %14 to i64
  %idx.neg46 = sub i64 0, %idx.ext45
  %add.ptr47 = getelementptr inbounds i8* %add.ptr4794, i64 %idx.neg46
  %cmp48 = icmp ult i8* %add.ptr47, %add.ptr35
  br i1 %cmp48, label %for.end50, label %for.body49

for.end50:                                        ; preds = %for.body49, %for.body43
  %i.1.lcssa = phi i8* [ %incdec.ptr4197, %for.body43 ], [ %add.ptr4794, %for.body49 ]
  store i8 %12, i8* %i.1.lcssa, align 1, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8* %incdec.ptr4197, i64 -1
  %cmp42 = icmp ult i8* %incdec.ptr41, %add.ptr26103
  %.pre116.pre = load i32* @qsz, align 4, !tbaa !0
  br i1 %cmp42, label %for.cond24.backedge, label %for.body43

for.end53:                                        ; preds = %for.cond24.preheader, %for.cond24.backedge, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @qst(i8* %base, i8* %max) #0 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %max to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %base to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  br label %do.body

do.body:                                          ; preds = %do.cond104, %entry
  %max.addr.0 = phi i8* [ %max, %entry ], [ %max.addr.1, %do.cond104 ]
  %lo.0 = phi i32 [ %conv, %entry ], [ %lo.1, %do.cond104 ]
  %base.addr.0 = phi i8* [ %base, %entry ], [ %base.addr.1, %do.cond104 ]
  %0 = load i32* @qsz, align 4, !tbaa !0
  %div = sdiv i32 %lo.0, %0
  %shr = ashr i32 %div, 1
  %mul = mul nsw i32 %shr, %0
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8* %base.addr.0, i64 %idx.ext
  %1 = load i32* @mthresh, align 4, !tbaa !0
  %cmp = icmp slt i32 %lo.0, %1
  br i1 %cmp, label %if.end31, label %if.then

if.then:                                          ; preds = %do.body
  %2 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %callee.knr.cast = bitcast i32 (...)* %2 to i32 (i8*, i8*, ...)*
  %call = tail call i32 (i8*, i8*, ...)* %callee.knr.cast(i8* %base.addr.0, i8* %add.ptr) #2
  %cmp4 = icmp sgt i32 %call, 0
  %cond = select i1 %cmp4, i8* %base.addr.0, i8* %add.ptr
  %3 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %4 = load i32* @qsz, align 4, !tbaa !0
  %idx.ext6 = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds i8* %max.addr.0, i64 %idx.neg
  %callee.knr.cast8 = bitcast i32 (...)* %3 to i32 (i8*, i8*, ...)*
  %call9 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast8(i8* %cond, i8* %add.ptr7) #2
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.then
  %cmp13 = icmp eq i8* %cond, %base.addr.0
  %cond18 = select i1 %cmp13, i8* %add.ptr, i8* %base.addr.0
  %5 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %callee.knr.cast19 = bitcast i32 (...)* %5 to i32 (i8*, i8*, ...)*
  %call20 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast19(i8* %cond18, i8* %add.ptr7) #2
  %cmp21 = icmp slt i32 %call20, 0
  %add.ptr7.cond18 = select i1 %cmp21, i8* %add.ptr7, i8* %cond18
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.then
  %j.0 = phi i8* [ %cond, %if.then ], [ %add.ptr7.cond18, %if.then12 ]
  %cmp25 = icmp eq i8* %j.0, %add.ptr
  br i1 %cmp25, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end24
  %6 = load i32* @qsz, align 4, !tbaa !0
  br label %do.body28

do.body28:                                        ; preds = %do.body28, %if.then27
  %i.0 = phi i8* [ %add.ptr, %if.then27 ], [ %incdec.ptr, %do.body28 ]
  %j.1 = phi i8* [ %j.0, %if.then27 ], [ %incdec.ptr29, %do.body28 ]
  %ii.0 = phi i32 [ %6, %if.then27 ], [ %dec, %do.body28 ]
  %7 = load i8* %i.0, align 1, !tbaa !1
  %8 = load i8* %j.1, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %i.0, i64 1
  store i8 %8, i8* %i.0, align 1, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8* %j.1, i64 1
  store i8 %7, i8* %j.1, align 1, !tbaa !1
  %dec = add nsw i32 %ii.0, -1
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %if.end31, label %do.body28

if.end31:                                         ; preds = %do.body28, %if.end24, %do.body
  %9 = load i32* @qsz, align 4, !tbaa !0
  %idx.ext32 = sext i32 %9 to i64
  %idx.neg33 = sub i64 0, %idx.ext32
  %add.ptr34 = getelementptr inbounds i8* %max.addr.0, i64 %idx.neg33
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %do.body74, %if.end31
  %i.1.ph = phi i8* [ %base.addr.0, %if.end31 ], [ %tmp.0, %do.body74 ]
  %j.2.ph = phi i8* [ %add.ptr34, %if.end31 ], [ %j.4, %do.body74 ]
  %mid.0.ph = phi i8* [ %add.ptr, %if.end31 ], [ %mid.1, %do.body74 ]
  %cmp35170 = icmp ult i8* %i.1.ph, %mid.0.ph
  br i1 %cmp35170, label %land.rhs, label %while.cond43.preheader

land.rhs:                                         ; preds = %while.cond.outer, %while.body
  %i.1171 = phi i8* [ %add.ptr42, %while.body ], [ %i.1.ph, %while.cond.outer ]
  %10 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %callee.knr.cast37 = bitcast i32 (...)* %10 to i32 (i8*, i8*, ...)*
  %call38 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast37(i8* %i.1171, i8* %mid.0.ph) #2
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %while.body, label %while.cond43.preheader

while.cond43.preheader:                           ; preds = %while.body, %land.rhs, %while.cond.outer
  %i.1.lcssa = phi i8* [ %i.1.ph, %while.cond.outer ], [ %i.1171, %land.rhs ], [ %add.ptr42, %while.body ]
  %cmp44167 = icmp ugt i8* %j.2.ph, %mid.0.ph
  br i1 %cmp44167, label %while.body46, label %while.cond43.preheader.while.end65_crit_edge

while.cond43.preheader.while.end65_crit_edge:     ; preds = %while.cond43.preheader
  %.pre = load i32* @qsz, align 4, !tbaa !0
  br label %while.end65

while.body:                                       ; preds = %land.rhs
  %11 = load i32* @qsz, align 4, !tbaa !0
  %idx.ext41 = sext i32 %11 to i64
  %add.ptr42 = getelementptr inbounds i8* %i.1171, i64 %idx.ext41
  %cmp35 = icmp ult i8* %add.ptr42, %mid.0.ph
  br i1 %cmp35, label %land.rhs, label %while.cond43.preheader

while.body46:                                     ; preds = %while.cond43.preheader, %if.then51
  %j.3168 = phi i8* [ %add.ptr54, %if.then51 ], [ %j.2.ph, %while.cond43.preheader ]
  %12 = load i32 (...)** @qcmp, align 8, !tbaa !3
  %callee.knr.cast47 = bitcast i32 (...)* %12 to i32 (i8*, i8*, ...)*
  %call48 = tail call i32 (i8*, i8*, ...)* %callee.knr.cast47(i8* %mid.0.ph, i8* %j.3168) #2
  %cmp49 = icmp slt i32 %call48, 1
  %13 = load i32* @qsz, align 4, !tbaa !0
  %idx.ext52 = sext i32 %13 to i64
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %while.body46
  %idx.neg53 = sub i64 0, %idx.ext52
  %add.ptr54 = getelementptr inbounds i8* %j.3168, i64 %idx.neg53
  %cmp44 = icmp ugt i8* %add.ptr54, %mid.0.ph
  br i1 %cmp44, label %while.body46, label %while.end65

if.end55:                                         ; preds = %while.body46
  %add.ptr57 = getelementptr inbounds i8* %i.1.lcssa, i64 %idx.ext52
  %cmp58 = icmp eq i8* %i.1.lcssa, %mid.0.ph
  br i1 %cmp58, label %swap, label %if.else

if.else:                                          ; preds = %if.end55
  %idx.neg62 = sub i64 0, %idx.ext52
  %add.ptr63 = getelementptr inbounds i8* %j.3168, i64 %idx.neg62
  br label %swap

while.end65:                                      ; preds = %if.then51, %while.cond43.preheader.while.end65_crit_edge
  %14 = phi i32 [ %.pre, %while.cond43.preheader.while.end65_crit_edge ], [ %13, %if.then51 ]
  %j.3.lcssa = phi i8* [ %j.2.ph, %while.cond43.preheader.while.end65_crit_edge ], [ %add.ptr54, %if.then51 ]
  %cmp66 = icmp eq i8* %i.1.lcssa, %mid.0.ph
  %idx.ext81 = sext i32 %14 to i64
  br i1 %cmp66, label %for.end, label %if.else69

if.else69:                                        ; preds = %while.end65
  %idx.neg71 = sub i64 0, %idx.ext81
  %add.ptr72 = getelementptr inbounds i8* %j.3.lcssa, i64 %idx.neg71
  br label %swap

swap:                                             ; preds = %if.end55, %if.else, %if.else69
  %15 = phi i32 [ %13, %if.else ], [ %14, %if.else69 ], [ %13, %if.end55 ]
  %j.4 = phi i8* [ %add.ptr63, %if.else ], [ %add.ptr72, %if.else69 ], [ %j.3168, %if.end55 ]
  %jj.0 = phi i8* [ %j.3168, %if.else ], [ %mid.0.ph, %if.else69 ], [ %j.3168, %if.end55 ]
  %mid.1 = phi i8* [ %mid.0.ph, %if.else ], [ %i.1.lcssa, %if.else69 ], [ %j.3168, %if.end55 ]
  %tmp.0 = phi i8* [ %add.ptr57, %if.else ], [ %i.1.lcssa, %if.else69 ], [ %add.ptr57, %if.end55 ]
  br label %do.body74

do.body74:                                        ; preds = %do.body74, %swap
  %i.2 = phi i8* [ %i.1.lcssa, %swap ], [ %incdec.ptr75, %do.body74 ]
  %jj.1 = phi i8* [ %jj.0, %swap ], [ %incdec.ptr76, %do.body74 ]
  %ii.1 = phi i32 [ %15, %swap ], [ %dec78, %do.body74 ]
  %16 = load i8* %i.2, align 1, !tbaa !1
  %17 = load i8* %jj.1, align 1, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8* %i.2, i64 1
  store i8 %17, i8* %i.2, align 1, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8* %jj.1, i64 1
  store i8 %16, i8* %jj.1, align 1, !tbaa !1
  %dec78 = add nsw i32 %ii.1, -1
  %tobool79 = icmp eq i32 %dec78, 0
  br i1 %tobool79, label %while.cond.outer, label %do.body74

for.end:                                          ; preds = %while.end65
  %add.ptr82 = getelementptr inbounds i8* %mid.0.ph, i64 %idx.ext81
  %sub.ptr.lhs.cast83 = ptrtoint i8* %mid.0.ph to i64
  %sub.ptr.rhs.cast84 = ptrtoint i8* %base.addr.0 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i64 %sub.ptr.sub85 to i32
  %sub.ptr.lhs.cast87 = ptrtoint i8* %max.addr.0 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %add.ptr82 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  %cmp91 = icmp sgt i32 %conv86, %conv90
  %18 = load i32* @thresh, align 4, !tbaa !0
  br i1 %cmp91, label %if.else98, label %if.then93

if.then93:                                        ; preds = %for.end
  %cmp94 = icmp slt i32 %conv86, %18
  br i1 %cmp94, label %do.cond104, label %if.then96

if.then96:                                        ; preds = %if.then93
  tail call fastcc void @qst(i8* %base.addr.0, i8* %mid.0.ph) #1
  br label %do.cond104

if.else98:                                        ; preds = %for.end
  %cmp99 = icmp slt i32 %conv90, %18
  br i1 %cmp99, label %do.cond104, label %if.then101

if.then101:                                       ; preds = %if.else98
  tail call fastcc void @qst(i8* %add.ptr82, i8* %max.addr.0) #1
  br label %do.cond104

do.cond104:                                       ; preds = %if.then101, %if.else98, %if.then96, %if.then93
  %max.addr.1 = phi i8* [ %max.addr.0, %if.then93 ], [ %max.addr.0, %if.then96 ], [ %mid.0.ph, %if.else98 ], [ %mid.0.ph, %if.then101 ]
  %lo.1 = phi i32 [ %conv90, %if.then93 ], [ %conv90, %if.then96 ], [ %conv86, %if.else98 ], [ %conv86, %if.then101 ]
  %base.addr.1 = phi i8* [ %add.ptr82, %if.then93 ], [ %add.ptr82, %if.then96 ], [ %base.addr.0, %if.else98 ], [ %base.addr.0, %if.then101 ]
  %19 = load i32* @thresh, align 4, !tbaa !0
  %cmp105 = icmp slt i32 %lo.1, %19
  br i1 %cmp105, label %do.end107, label %do.body

do.end107:                                        ; preds = %do.cond104
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
