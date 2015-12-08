; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/path_product.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@sites_on_node = external global i32
@lattice = external global %struct.site*
@gen_pt = external global [16 x i8**]

; Function Attrs: nounwind optsize uwtable
define void @path_product(i32* nocapture %dir, i32 %length) #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 144) #3
  %1 = bitcast i8* %call to %struct.su3_matrix*
  %call2 = tail call noalias i8* @calloc(i64 %conv, i64 144) #3
  %2 = bitcast i8* %call2 to %struct.su3_matrix*
  %3 = load i32* %dir, align 4, !tbaa !0
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx6.idx = mul i32 %3, 144
  %arrayidx6.offs = add i32 %arrayidx6.idx, 112
  %sub = sub nsw i32 7, %3
  %4 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call10 = tail call %struct.msg_tag* @start_gather(i32 %arrayidx6.offs, i32 144, i32 %sub, i32 3, i8** %4) #3
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.else, %for.body, %if.then
  %mtag0.1.ph = phi %struct.msg_tag* [ %call10, %if.then ], [ undef, %for.body ], [ undef, %if.else ]
  %cmp19485 = icmp sgt i32 %length, 1
  br i1 %cmp19485, label %for.body21, label %for.end245

if.else:                                          ; preds = %entry
  %cmp11488 = icmp sgt i32 %0, 0
  br i1 %cmp11488, label %for.body.lr.ph, label %for.cond18.preheader

for.body.lr.ph:                                   ; preds = %if.else
  %5 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %i.0490 = phi i32 [ 1, %for.body.lr.ph ], [ %phitmp, %for.body.for.body_crit_edge ]
  %s.0489 = phi %struct.site* [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %sub14 = sub nsw i32 7, %6
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx17 = getelementptr inbounds %struct.site* %s.0489, i64 0, i32 8, i64 %idxprom15
  %tempmat1 = getelementptr inbounds %struct.site* %s.0489, i64 0, i32 18
  tail call void @su3_adjoint(%struct.su3_matrix* %arrayidx17, %struct.su3_matrix* %tempmat1) #3
  %exitcond540 = icmp eq i32 %i.0490, %0
  br i1 %exitcond540, label %for.cond18.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0489, i64 1
  %.pre = load i32* %dir, align 4, !tbaa !0
  %phitmp = add i32 %i.0490, 1
  br label %for.body

for.body21:                                       ; preds = %for.inc243, %for.cond18.preheader
  %indvars.iv535 = phi i64 [ 1, %for.cond18.preheader ], [ %indvars.iv.next536, %for.inc243 ]
  %mtag0.1487 = phi %struct.msg_tag* [ %mtag0.1.ph, %for.cond18.preheader ], [ %mtag0.4, %for.inc243 ]
  %7 = trunc i64 %indvars.iv535 to i32
  %rem = srem i32 %7, 2
  %cmp22 = icmp eq i32 %rem, 1
  %arrayidx26 = getelementptr inbounds i32* %dir, i64 %indvars.iv535
  %8 = load i32* %arrayidx26, align 4, !tbaa !0
  %cmp27 = icmp slt i32 %8, 4
  %9 = add nsw i64 %indvars.iv535, -1
  %arrayidx32 = getelementptr inbounds i32* %dir, i64 %9
  %10 = load i32* %arrayidx32, align 4, !tbaa !0
  %cmp33 = icmp slt i32 %10, 4
  br i1 %cmp22, label %if.then24, label %if.else134

if.then24:                                        ; preds = %for.body21
  br i1 %cmp27, label %if.then29, label %if.else77

if.then29:                                        ; preds = %if.then24
  br i1 %cmp33, label %if.then35, label %if.else54

if.then35:                                        ; preds = %if.then29
  tail call void @wait_gather(%struct.msg_tag* %mtag0.1487) #3
  %11 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp38482 = icmp sgt i32 %11, 0
  br i1 %cmp38482, label %for.body40.lr.ph, label %for.end53

for.body40.lr.ph:                                 ; preds = %if.then35
  %12 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body40

for.body40:                                       ; preds = %for.body40, %for.body40.lr.ph
  %indvars.iv531 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next532, %for.body40 ]
  %s.1483 = phi %struct.site* [ %12, %for.body40.lr.ph ], [ %incdec.ptr52, %for.body40 ]
  %13 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds i8** %13, i64 %indvars.iv531
  %14 = load i8** %arrayidx42, align 8, !tbaa !3
  %15 = bitcast i8* %14 to %struct.su3_matrix*
  %16 = load i32* %arrayidx26, align 4, !tbaa !0
  %idxprom45 = sext i32 %16 to i64
  %arrayidx47 = getelementptr inbounds %struct.site* %s.1483, i64 0, i32 8, i64 %idxprom45
  %arrayidx49 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv531
  tail call void @mult_su3_nn(%struct.su3_matrix* %15, %struct.su3_matrix* %arrayidx47, %struct.su3_matrix* %arrayidx49) #3
  %indvars.iv.next532 = add i64 %indvars.iv531, 1
  %incdec.ptr52 = getelementptr inbounds %struct.site* %s.1483, i64 1
  %lftr.wideiv533 = trunc i64 %indvars.iv.next532 to i32
  %exitcond534 = icmp eq i32 %lftr.wideiv533, %11
  br i1 %exitcond534, label %for.end53, label %for.body40

for.end53:                                        ; preds = %for.body40, %if.then35
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.1487) #3
  br label %if.end72

if.else54:                                        ; preds = %if.then29
  %17 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp57479 = icmp sgt i32 %17, 0
  br i1 %cmp57479, label %for.body59.lr.ph, label %if.end72

for.body59.lr.ph:                                 ; preds = %if.else54
  %18 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body59

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.body59.lr.ph
  %19 = phi i32 [ %8, %for.body59.lr.ph ], [ %.pre541, %for.body59.for.body59_crit_edge ]
  %indvars.iv527 = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next528, %for.body59.for.body59_crit_edge ]
  %s.2480 = phi %struct.site* [ %18, %for.body59.lr.ph ], [ %incdec.ptr70, %for.body59.for.body59_crit_edge ]
  %tempmat160 = getelementptr inbounds %struct.site* %s.2480, i64 0, i32 18
  %idxprom63 = sext i32 %19 to i64
  %arrayidx65 = getelementptr inbounds %struct.site* %s.2480, i64 0, i32 8, i64 %idxprom63
  %arrayidx67 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv527
  tail call void @mult_su3_nn(%struct.su3_matrix* %tempmat160, %struct.su3_matrix* %arrayidx65, %struct.su3_matrix* %arrayidx67) #3
  %indvars.iv.next528 = add i64 %indvars.iv527, 1
  %lftr.wideiv529 = trunc i64 %indvars.iv.next528 to i32
  %exitcond530 = icmp eq i32 %lftr.wideiv529, %17
  br i1 %exitcond530, label %if.end72, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  %incdec.ptr70 = getelementptr inbounds %struct.site* %s.2480, i64 1
  %.pre541 = load i32* %arrayidx26, align 4, !tbaa !0
  br label %for.body59

if.end72:                                         ; preds = %if.else54, %for.body59, %for.end53
  %20 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub75 = sub nsw i32 7, %20
  %21 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call76 = tail call %struct.msg_tag* @start_gather_from_temp(i8* %call2, i32 144, i32 %sub75, i32 3, i8** %21) #3
  br label %for.inc243

if.else77:                                        ; preds = %if.then24
  br i1 %cmp33, label %if.then83, label %if.else101

if.then83:                                        ; preds = %if.else77
  tail call void @wait_gather(%struct.msg_tag* %mtag0.1487) #3
  %22 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp86474 = icmp sgt i32 %22, 0
  br i1 %cmp86474, label %for.body88, label %for.end96

for.body88:                                       ; preds = %if.then83, %for.body88
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %for.body88 ], [ 0, %if.then83 ]
  %23 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx90 = getelementptr inbounds i8** %23, i64 %indvars.iv519
  %24 = load i8** %arrayidx90, align 8, !tbaa !3
  %25 = bitcast i8* %24 to %struct.su3_matrix*
  %arrayidx92 = getelementptr inbounds %struct.su3_matrix* %1, i64 %indvars.iv519
  tail call void @su3mat_copy(%struct.su3_matrix* %25, %struct.su3_matrix* %arrayidx92) #3
  %indvars.iv.next520 = add i64 %indvars.iv519, 1
  %lftr.wideiv521 = trunc i64 %indvars.iv.next520 to i32
  %exitcond522 = icmp eq i32 %lftr.wideiv521, %22
  br i1 %exitcond522, label %for.end96, label %for.body88

for.end96:                                        ; preds = %for.body88, %if.then83
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.1487) #3
  %26 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub99 = sub nsw i32 7, %26
  %27 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call100 = tail call %struct.msg_tag* @start_gather_from_temp(i8* %call, i32 144, i32 %sub99, i32 3, i8** %27) #3
  br label %if.end113

if.else101:                                       ; preds = %if.else77
  %sub111 = sub nsw i32 7, %8
  %28 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call112 = tail call %struct.msg_tag* @start_gather(i32 1520, i32 144, i32 %sub111, i32 3, i8** %28) #3
  br label %if.end113

if.end113:                                        ; preds = %if.else101, %for.end96
  %mtag0.2 = phi %struct.msg_tag* [ %call100, %for.end96 ], [ %call112, %if.else101 ]
  tail call void @wait_gather(%struct.msg_tag* %mtag0.2) #3
  %29 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp116476 = icmp sgt i32 %29, 0
  br i1 %cmp116476, label %for.body118.lr.ph, label %for.end132

for.body118.lr.ph:                                ; preds = %if.end113
  %30 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body118

for.body118:                                      ; preds = %for.body118, %for.body118.lr.ph
  %indvars.iv523 = phi i64 [ 0, %for.body118.lr.ph ], [ %indvars.iv.next524, %for.body118 ]
  %s.4477 = phi %struct.site* [ %30, %for.body118.lr.ph ], [ %incdec.ptr131, %for.body118 ]
  %31 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds i8** %31, i64 %indvars.iv523
  %32 = load i8** %arrayidx120, align 8, !tbaa !3
  %33 = bitcast i8* %32 to %struct.su3_matrix*
  %34 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub123 = sub nsw i32 7, %34
  %idxprom124 = sext i32 %sub123 to i64
  %arrayidx126 = getelementptr inbounds %struct.site* %s.4477, i64 0, i32 8, i64 %idxprom124
  %arrayidx128 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv523
  tail call void @mult_su3_na(%struct.su3_matrix* %33, %struct.su3_matrix* %arrayidx126, %struct.su3_matrix* %arrayidx128) #3
  %indvars.iv.next524 = add i64 %indvars.iv523, 1
  %incdec.ptr131 = getelementptr inbounds %struct.site* %s.4477, i64 1
  %lftr.wideiv525 = trunc i64 %indvars.iv.next524 to i32
  %exitcond526 = icmp eq i32 %lftr.wideiv525, %29
  br i1 %exitcond526, label %for.end132, label %for.body118

for.end132:                                       ; preds = %for.body118, %if.end113
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.2) #3
  br label %for.inc243

if.else134:                                       ; preds = %for.body21
  br i1 %cmp27, label %if.then139, label %if.else193

if.then139:                                       ; preds = %if.else134
  br i1 %cmp33, label %if.then145, label %if.else163

if.then145:                                       ; preds = %if.then139
  tail call void @wait_gather(%struct.msg_tag* %mtag0.1487) #3
  %35 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp148471 = icmp sgt i32 %35, 0
  br i1 %cmp148471, label %for.body150.lr.ph, label %for.end162

for.body150.lr.ph:                                ; preds = %if.then145
  %36 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body150

for.body150:                                      ; preds = %for.body150, %for.body150.lr.ph
  %indvars.iv515 = phi i64 [ 0, %for.body150.lr.ph ], [ %indvars.iv.next516, %for.body150 ]
  %s.5472 = phi %struct.site* [ %36, %for.body150.lr.ph ], [ %incdec.ptr161, %for.body150 ]
  %37 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx152 = getelementptr inbounds i8** %37, i64 %indvars.iv515
  %38 = load i8** %arrayidx152, align 8, !tbaa !3
  %39 = bitcast i8* %38 to %struct.su3_matrix*
  %40 = load i32* %arrayidx26, align 4, !tbaa !0
  %idxprom155 = sext i32 %40 to i64
  %arrayidx157 = getelementptr inbounds %struct.site* %s.5472, i64 0, i32 8, i64 %idxprom155
  %tempmat1158 = getelementptr inbounds %struct.site* %s.5472, i64 0, i32 18
  tail call void @mult_su3_nn(%struct.su3_matrix* %39, %struct.su3_matrix* %arrayidx157, %struct.su3_matrix* %tempmat1158) #3
  %indvars.iv.next516 = add i64 %indvars.iv515, 1
  %incdec.ptr161 = getelementptr inbounds %struct.site* %s.5472, i64 1
  %lftr.wideiv517 = trunc i64 %indvars.iv.next516 to i32
  %exitcond518 = icmp eq i32 %lftr.wideiv517, %35
  br i1 %exitcond518, label %for.end162, label %for.body150

for.end162:                                       ; preds = %for.body150, %if.then145
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.1487) #3
  br label %if.end181

if.else163:                                       ; preds = %if.then139
  %41 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp166468 = icmp sgt i32 %41, 0
  br i1 %cmp166468, label %for.body168.lr.ph, label %if.end181

for.body168.lr.ph:                                ; preds = %if.else163
  %42 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body168

for.body168:                                      ; preds = %for.body168.for.body168_crit_edge, %for.body168.lr.ph
  %43 = phi i32 [ %8, %for.body168.lr.ph ], [ %.pre542, %for.body168.for.body168_crit_edge ]
  %indvars.iv511 = phi i64 [ 0, %for.body168.lr.ph ], [ %indvars.iv.next512, %for.body168.for.body168_crit_edge ]
  %s.6469 = phi %struct.site* [ %42, %for.body168.lr.ph ], [ %incdec.ptr179, %for.body168.for.body168_crit_edge ]
  %arrayidx170 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv511
  %idxprom173 = sext i32 %43 to i64
  %arrayidx175 = getelementptr inbounds %struct.site* %s.6469, i64 0, i32 8, i64 %idxprom173
  %tempmat1176 = getelementptr inbounds %struct.site* %s.6469, i64 0, i32 18
  tail call void @mult_su3_nn(%struct.su3_matrix* %arrayidx170, %struct.su3_matrix* %arrayidx175, %struct.su3_matrix* %tempmat1176) #3
  %indvars.iv.next512 = add i64 %indvars.iv511, 1
  %lftr.wideiv513 = trunc i64 %indvars.iv.next512 to i32
  %exitcond514 = icmp eq i32 %lftr.wideiv513, %41
  br i1 %exitcond514, label %if.end181, label %for.body168.for.body168_crit_edge

for.body168.for.body168_crit_edge:                ; preds = %for.body168
  %incdec.ptr179 = getelementptr inbounds %struct.site* %s.6469, i64 1
  %.pre542 = load i32* %arrayidx26, align 4, !tbaa !0
  br label %for.body168

if.end181:                                        ; preds = %if.else163, %for.body168, %for.end162
  %44 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub191 = sub nsw i32 7, %44
  %45 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call192 = tail call %struct.msg_tag* @start_gather(i32 1520, i32 144, i32 %sub191, i32 3, i8** %45) #3
  br label %for.inc243

if.else193:                                       ; preds = %if.else134
  br i1 %cmp33, label %if.then199, label %if.else217

if.then199:                                       ; preds = %if.else193
  tail call void @wait_gather(%struct.msg_tag* %mtag0.1487) #3
  %46 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp202463 = icmp sgt i32 %46, 0
  br i1 %cmp202463, label %for.body204, label %for.end212

for.body204:                                      ; preds = %if.then199, %for.body204
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %for.body204 ], [ 0, %if.then199 ]
  %47 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx206 = getelementptr inbounds i8** %47, i64 %indvars.iv503
  %48 = load i8** %arrayidx206, align 8, !tbaa !3
  %49 = bitcast i8* %48 to %struct.su3_matrix*
  %arrayidx208 = getelementptr inbounds %struct.su3_matrix* %1, i64 %indvars.iv503
  tail call void @su3mat_copy(%struct.su3_matrix* %49, %struct.su3_matrix* %arrayidx208) #3
  %indvars.iv.next504 = add i64 %indvars.iv503, 1
  %lftr.wideiv505 = trunc i64 %indvars.iv.next504 to i32
  %exitcond506 = icmp eq i32 %lftr.wideiv505, %46
  br i1 %exitcond506, label %for.end212, label %for.body204

for.end212:                                       ; preds = %for.body204, %if.then199
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.1487) #3
  %50 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub215 = sub nsw i32 7, %50
  %51 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call216 = tail call %struct.msg_tag* @start_gather_from_temp(i8* %call, i32 144, i32 %sub215, i32 3, i8** %51) #3
  br label %if.end222

if.else217:                                       ; preds = %if.else193
  %sub220 = sub nsw i32 7, %8
  %52 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call221 = tail call %struct.msg_tag* @start_gather_from_temp(i8* %call2, i32 144, i32 %sub220, i32 3, i8** %52) #3
  br label %if.end222

if.end222:                                        ; preds = %if.else217, %for.end212
  %mtag0.3 = phi %struct.msg_tag* [ %call216, %for.end212 ], [ %call221, %if.else217 ]
  tail call void @wait_gather(%struct.msg_tag* %mtag0.3) #3
  %53 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp225465 = icmp sgt i32 %53, 0
  br i1 %cmp225465, label %for.body227.lr.ph, label %for.end240

for.body227.lr.ph:                                ; preds = %if.end222
  %54 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body227

for.body227:                                      ; preds = %for.body227, %for.body227.lr.ph
  %indvars.iv507 = phi i64 [ 0, %for.body227.lr.ph ], [ %indvars.iv.next508, %for.body227 ]
  %s.8466 = phi %struct.site* [ %54, %for.body227.lr.ph ], [ %incdec.ptr239, %for.body227 ]
  %55 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx229 = getelementptr inbounds i8** %55, i64 %indvars.iv507
  %56 = load i8** %arrayidx229, align 8, !tbaa !3
  %57 = bitcast i8* %56 to %struct.su3_matrix*
  %58 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub232 = sub nsw i32 7, %58
  %idxprom233 = sext i32 %sub232 to i64
  %arrayidx235 = getelementptr inbounds %struct.site* %s.8466, i64 0, i32 8, i64 %idxprom233
  %tempmat1236 = getelementptr inbounds %struct.site* %s.8466, i64 0, i32 18
  tail call void @mult_su3_na(%struct.su3_matrix* %57, %struct.su3_matrix* %arrayidx235, %struct.su3_matrix* %tempmat1236) #3
  %indvars.iv.next508 = add i64 %indvars.iv507, 1
  %incdec.ptr239 = getelementptr inbounds %struct.site* %s.8466, i64 1
  %lftr.wideiv509 = trunc i64 %indvars.iv.next508 to i32
  %exitcond510 = icmp eq i32 %lftr.wideiv509, %53
  br i1 %exitcond510, label %for.end240, label %for.body227

for.end240:                                       ; preds = %for.body227, %if.end222
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.3) #3
  br label %for.inc243

for.inc243:                                       ; preds = %for.end132, %if.end72, %for.end240, %if.end181
  %mtag0.4 = phi %struct.msg_tag* [ %call76, %if.end72 ], [ %mtag0.2, %for.end132 ], [ %call192, %if.end181 ], [ %mtag0.3, %for.end240 ]
  %indvars.iv.next536 = add i64 %indvars.iv535, 1
  %lftr.wideiv538 = trunc i64 %indvars.iv.next536 to i32
  %exitcond539 = icmp eq i32 %lftr.wideiv538, %length
  br i1 %exitcond539, label %for.end245, label %for.body21

for.end245:                                       ; preds = %for.inc243, %for.cond18.preheader
  %mtag0.1.lcssa = phi %struct.msg_tag* [ %mtag0.1.ph, %for.cond18.preheader ], [ %mtag0.4, %for.inc243 ]
  %rem246450 = and i32 %length, 1
  %cmp247 = icmp eq i32 %rem246450, 0
  %sub250 = add nsw i32 %length, -1
  %idxprom251 = sext i32 %sub250 to i64
  %arrayidx252 = getelementptr inbounds i32* %dir, i64 %idxprom251
  %59 = load i32* %arrayidx252, align 4, !tbaa !0
  %cmp253 = icmp slt i32 %59, 4
  br i1 %cmp247, label %if.then249, label %if.else282

if.then249:                                       ; preds = %for.end245
  br i1 %cmp253, label %if.then255, label %if.else268

if.then255:                                       ; preds = %if.then249
  tail call void @wait_gather(%struct.msg_tag* %mtag0.1.lcssa) #3
  %60 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp258451 = icmp sgt i32 %60, 0
  br i1 %cmp258451, label %for.body260.lr.ph, label %for.end267

for.body260.lr.ph:                                ; preds = %if.then255
  %61 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body260

for.body260:                                      ; preds = %for.body260, %for.body260.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body260.lr.ph ], [ %indvars.iv.next, %for.body260 ]
  %s.9452 = phi %struct.site* [ %61, %for.body260.lr.ph ], [ %incdec.ptr266, %for.body260 ]
  %62 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx262 = getelementptr inbounds i8** %62, i64 %indvars.iv
  %63 = load i8** %arrayidx262, align 8, !tbaa !3
  %64 = bitcast i8* %63 to %struct.su3_matrix*
  %tempmat1263 = getelementptr inbounds %struct.site* %s.9452, i64 0, i32 18
  tail call void @su3mat_copy(%struct.su3_matrix* %64, %struct.su3_matrix* %tempmat1263) #3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr266 = getelementptr inbounds %struct.site* %s.9452, i64 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %60
  br i1 %exitcond, label %for.end267, label %for.body260

for.end267:                                       ; preds = %for.body260, %if.then255
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.1.lcssa) #3
  br label %if.end316

if.else268:                                       ; preds = %if.then249
  %65 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp271454 = icmp sgt i32 %65, 0
  br i1 %cmp271454, label %for.body273.lr.ph, label %if.end316

for.body273.lr.ph:                                ; preds = %if.else268
  %66 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body273

for.body273:                                      ; preds = %for.body273, %for.body273.lr.ph
  %indvars.iv491 = phi i64 [ 0, %for.body273.lr.ph ], [ %indvars.iv.next492, %for.body273 ]
  %s.10455 = phi %struct.site* [ %66, %for.body273.lr.ph ], [ %incdec.ptr279, %for.body273 ]
  %arrayidx275 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv491
  %tempmat1276 = getelementptr inbounds %struct.site* %s.10455, i64 0, i32 18
  tail call void @su3mat_copy(%struct.su3_matrix* %arrayidx275, %struct.su3_matrix* %tempmat1276) #3
  %indvars.iv.next492 = add i64 %indvars.iv491, 1
  %incdec.ptr279 = getelementptr inbounds %struct.site* %s.10455, i64 1
  %lftr.wideiv493 = trunc i64 %indvars.iv.next492 to i32
  %exitcond494 = icmp eq i32 %lftr.wideiv493, %65
  br i1 %exitcond494, label %if.end316, label %for.body273

if.else282:                                       ; preds = %for.end245
  br i1 %cmp253, label %if.then288, label %if.end316

if.then288:                                       ; preds = %if.else282
  tail call void @wait_gather(%struct.msg_tag* %mtag0.1.lcssa) #3
  %67 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp291461 = icmp sgt i32 %67, 0
  br i1 %cmp291461, label %for.body293, label %for.end301

for.body293:                                      ; preds = %if.then288, %for.body293
  %indvars.iv499 = phi i64 [ %indvars.iv.next500, %for.body293 ], [ 0, %if.then288 ]
  %68 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx295 = getelementptr inbounds i8** %68, i64 %indvars.iv499
  %69 = load i8** %arrayidx295, align 8, !tbaa !3
  %70 = bitcast i8* %69 to %struct.su3_matrix*
  %arrayidx297 = getelementptr inbounds %struct.su3_matrix* %1, i64 %indvars.iv499
  tail call void @su3mat_copy(%struct.su3_matrix* %70, %struct.su3_matrix* %arrayidx297) #3
  %indvars.iv.next500 = add i64 %indvars.iv499, 1
  %lftr.wideiv501 = trunc i64 %indvars.iv.next500 to i32
  %exitcond502 = icmp eq i32 %lftr.wideiv501, %67
  br i1 %exitcond502, label %for.end301, label %for.body293

for.end301:                                       ; preds = %for.body293, %if.then288
  tail call void @cleanup_gather(%struct.msg_tag* %mtag0.1.lcssa) #3
  %71 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp304458 = icmp sgt i32 %71, 0
  br i1 %cmp304458, label %for.body306.lr.ph, label %if.end316

for.body306.lr.ph:                                ; preds = %for.end301
  %72 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body306

for.body306:                                      ; preds = %for.body306, %for.body306.lr.ph
  %indvars.iv495 = phi i64 [ 0, %for.body306.lr.ph ], [ %indvars.iv.next496, %for.body306 ]
  %s.12459 = phi %struct.site* [ %72, %for.body306.lr.ph ], [ %incdec.ptr312, %for.body306 ]
  %arrayidx308 = getelementptr inbounds %struct.su3_matrix* %1, i64 %indvars.iv495
  %tempmat1309 = getelementptr inbounds %struct.site* %s.12459, i64 0, i32 18
  tail call void @su3mat_copy(%struct.su3_matrix* %arrayidx308, %struct.su3_matrix* %tempmat1309) #3
  %indvars.iv.next496 = add i64 %indvars.iv495, 1
  %incdec.ptr312 = getelementptr inbounds %struct.site* %s.12459, i64 1
  %lftr.wideiv497 = trunc i64 %indvars.iv.next496 to i32
  %exitcond498 = icmp eq i32 %lftr.wideiv497, %71
  br i1 %exitcond498, label %if.end316, label %for.body306

if.end316:                                        ; preds = %for.end301, %for.body306, %if.else268, %for.body273, %if.else282, %for.end267
  tail call void @free(i8* %call) #3
  tail call void @free(i8* %call2) #3
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #2

; Function Attrs: optsize
declare void @su3_adjoint(%struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @wait_gather(%struct.msg_tag*) #2

; Function Attrs: optsize
declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @cleanup_gather(%struct.msg_tag*) #2

; Function Attrs: optsize
declare %struct.msg_tag* @start_gather_from_temp(i8*, i32, i32, i32, i8**) #2

; Function Attrs: optsize
declare void @su3mat_copy(%struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @mult_su3_na(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
