; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/gaugefix2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@even_sites_on_node = external global i32
@lattice = external global %struct.site*
@sites_on_node = external global i32
@diffmat_offset = common global i32 0, align 4
@diffmatp = common global %struct.su3_matrix* null, align 8
@sumvec_offset = common global i32 0, align 4
@sumvecp = common global %struct.su3_vector* null, align 8
@gen_pt = external global [16 x i8**]
@nx = external global i32
@ny = external global i32
@nz = external global i32
@nt = external global i32
@stdout = external global %struct._IO_FILE*
@this_node = external global i32
@.str2 = private unnamed_addr constant [55 x i8] c"GFIX: Ended at step %d. Av gf action %.8e, delta %.3e\0A\00", align 1
@str = private unnamed_addr constant [30 x i8] c"gaugefix: Can't malloc sumvec\00"
@str3 = private unnamed_addr constant [31 x i8] c"gaugefix: Can't malloc diffmat\00"

; Function Attrs: nounwind optsize uwtable
define void @accum_gauge_hit(i32 %gauge_dir, i32 %parity) #0 {
entry:
  %cmp = icmp eq i32 %parity, 1
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp, i32 %0, i32 0
  %cmp1 = icmp eq i32 %parity, 2
  %1 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond5338 = select i1 %cmp1, i32 %0, i32 %1
  %cmp6339 = icmp slt i32 %cond, %cond5338
  br i1 %cmp6339, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds %struct.site* %2, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv370 = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next371, %for.inc ]
  %s.0341 = phi %struct.site* [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %3 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp7 = icmp sgt i32 %3, -1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = bitcast %struct.site* %s.0341 to i8*
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8* %4, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to %struct.su3_matrix*
  tail call void @clear_su3mat(%struct.su3_matrix* %5) #5
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.su3_matrix* %6, i64 %indvars.iv370
  tail call void @clear_su3mat(%struct.su3_matrix* %arrayidx9) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32* @sumvec_offset, align 4, !tbaa !0
  %cmp10 = icmp sgt i32 %7, -1
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.end
  %8 = bitcast %struct.site* %s.0341 to i8*
  %idx.ext12 = sext i32 %7 to i64
  %add.ptr13 = getelementptr inbounds i8* %8, i64 %idx.ext12
  %9 = bitcast i8* %add.ptr13 to %struct.su3_vector*
  tail call void @clearvec(%struct.su3_vector* %9) #5
  br label %for.inc

if.else14:                                        ; preds = %if.end
  %10 = load %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.su3_vector* %10, i64 %indvars.iv370
  tail call void @clearvec(%struct.su3_vector* %arrayidx16) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else14
  %indvars.iv.next371 = add i64 %indvars.iv370, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0341, i64 1
  %11 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %12 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond5 = select i1 %cmp1, i32 %11, i32 %12
  %13 = trunc i64 %indvars.iv.next371 to i32
  %cmp6 = icmp slt i32 %13, %cond5
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %14 = phi i32 [ %1, %entry ], [ %12, %for.inc ]
  %15 = phi i32 [ %0, %entry ], [ %11, %for.inc ]
  %cond22 = select i1 %cmp, i32 %15, i32 0
  %cond30333 = select i1 %cmp1, i32 %15, i32 %14
  %cmp31334 = icmp slt i32 %cond22, %cond30333
  br i1 %cmp31334, label %for.cond33.preheader.lr.ph, label %for.end122

for.cond33.preheader.lr.ph:                       ; preds = %for.end
  %16 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom23 = sext i32 %cond22 to i64
  %arrayidx24 = getelementptr inbounds %struct.site* %16, i64 %idxprom23
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond33.preheader.lr.ph, %for.inc119
  %indvars.iv367 = phi i64 [ %idxprom23, %for.cond33.preheader.lr.ph ], [ %indvars.iv.next368, %for.inc119 ]
  %s.1336 = phi %struct.site* [ %arrayidx24, %for.cond33.preheader.lr.ph ], [ %incdec.ptr121, %for.inc119 ]
  %17 = bitcast %struct.site* %s.1336 to i8*
  br label %for.body35

for.body35:                                       ; preds = %for.inc116, %for.cond33.preheader
  %indvars.iv362 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next363, %for.inc116 ]
  %18 = trunc i64 %indvars.iv362 to i32
  %cmp36 = icmp eq i32 %18, %gauge_dir
  br i1 %cmp36, label %for.inc116, label %if.then37

if.then37:                                        ; preds = %for.body35
  %arrayidx39 = getelementptr inbounds %struct.site* %s.1336, i64 0, i32 8, i64 %indvars.iv362
  %19 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp40 = icmp sgt i32 %19, -1
  br i1 %cmp40, label %if.then41, label %if.else46

if.then41:                                        ; preds = %if.then37
  %idx.ext42 = sext i32 %19 to i64
  %add.ptr43 = getelementptr inbounds i8* %17, i64 %idx.ext42
  %20 = bitcast i8* %add.ptr43 to %struct.su3_matrix*
  tail call void @sub_su3_matrix(%struct.su3_matrix* %20, %struct.su3_matrix* %arrayidx39, %struct.su3_matrix* %20) #5
  br label %if.end51

if.else46:                                        ; preds = %if.then37
  %21 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds %struct.su3_matrix* %21, i64 %indvars.iv367
  tail call void @sub_su3_matrix(%struct.su3_matrix* %arrayidx48, %struct.su3_matrix* %arrayidx39, %struct.su3_matrix* %arrayidx48) #5
  br label %if.end51

if.end51:                                         ; preds = %if.else46, %if.then41
  %22 = load i32* @sumvec_offset, align 4, !tbaa !0
  %cmp52 = icmp sgt i32 %22, -1
  br i1 %cmp52, label %for.cond54.preheader, label %for.cond82.preheader

for.cond54.preheader:                             ; preds = %if.end51
  %idx.ext62 = sext i32 %22 to i64
  %add.ptr63 = getelementptr inbounds i8* %17, i64 %idx.ext62
  %c = bitcast i8* %add.ptr63 to [3 x %struct.complex]*
  br label %for.body56

for.cond82.preheader:                             ; preds = %if.end51
  %23 = load %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  br label %for.body84

for.body56:                                       ; preds = %for.body56, %for.cond54.preheader
  %indvars.iv358 = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next359, %for.body56 ]
  %real = getelementptr inbounds %struct.site* %s.1336, i64 0, i32 8, i64 %indvars.iv362, i32 0, i64 %indvars.iv358, i64 %indvars.iv358, i32 0
  %24 = load double* %real, align 8, !tbaa !4
  %real65 = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %indvars.iv358, i32 0
  %25 = load double* %real65, align 8, !tbaa !4
  %add = fadd double %24, %25
  store double %add, double* %real65, align 8, !tbaa !4
  %imag = getelementptr inbounds %struct.site* %s.1336, i64 0, i32 8, i64 %indvars.iv362, i32 0, i64 %indvars.iv358, i64 %indvars.iv358, i32 1
  %26 = load double* %imag, align 8, !tbaa !4
  %imag76 = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %indvars.iv358, i32 1
  %27 = load double* %imag76, align 8, !tbaa !4
  %add77 = fadd double %26, %27
  store double %add77, double* %imag76, align 8, !tbaa !4
  %indvars.iv.next359 = add i64 %indvars.iv358, 1
  %lftr.wideiv360 = trunc i64 %indvars.iv.next359 to i32
  %exitcond361 = icmp eq i32 %lftr.wideiv360, 3
  br i1 %exitcond361, label %for.inc116, label %for.body56

for.body84:                                       ; preds = %for.body84, %for.cond82.preheader
  %indvars.iv354 = phi i64 [ 0, %for.cond82.preheader ], [ %indvars.iv.next355, %for.body84 ]
  %real90 = getelementptr inbounds %struct.site* %s.1336, i64 0, i32 8, i64 %indvars.iv362, i32 0, i64 %indvars.iv354, i64 %indvars.iv354, i32 0
  %28 = load double* %real90, align 8, !tbaa !4
  %real96 = getelementptr inbounds %struct.su3_vector* %23, i64 %indvars.iv367, i32 0, i64 %indvars.iv354, i32 0
  %29 = load double* %real96, align 8, !tbaa !4
  %add97 = fadd double %28, %29
  store double %add97, double* %real96, align 8, !tbaa !4
  %imag103 = getelementptr inbounds %struct.site* %s.1336, i64 0, i32 8, i64 %indvars.iv362, i32 0, i64 %indvars.iv354, i64 %indvars.iv354, i32 1
  %30 = load double* %imag103, align 8, !tbaa !4
  %imag109 = getelementptr inbounds %struct.su3_vector* %23, i64 %indvars.iv367, i32 0, i64 %indvars.iv354, i32 1
  %31 = load double* %imag109, align 8, !tbaa !4
  %add110 = fadd double %30, %31
  store double %add110, double* %imag109, align 8, !tbaa !4
  %indvars.iv.next355 = add i64 %indvars.iv354, 1
  %lftr.wideiv356 = trunc i64 %indvars.iv.next355 to i32
  %exitcond357 = icmp eq i32 %lftr.wideiv356, 3
  br i1 %exitcond357, label %for.inc116, label %for.body84

for.inc116:                                       ; preds = %for.body56, %for.body84, %for.body35
  %indvars.iv.next363 = add i64 %indvars.iv362, 1
  %lftr.wideiv364 = trunc i64 %indvars.iv.next363 to i32
  %exitcond365 = icmp eq i32 %lftr.wideiv364, 4
  br i1 %exitcond365, label %for.inc119, label %for.body35

for.inc119:                                       ; preds = %for.inc116
  %indvars.iv.next368 = add i64 %indvars.iv367, 1
  %incdec.ptr121 = getelementptr inbounds %struct.site* %s.1336, i64 1
  %32 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %33 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond30 = select i1 %cmp1, i32 %32, i32 %33
  %34 = trunc i64 %indvars.iv.next368 to i32
  %cmp31 = icmp slt i32 %34, %cond30
  br i1 %cmp31, label %for.cond33.preheader, label %for.end122

for.end122:                                       ; preds = %for.inc119, %for.end
  %35 = phi i32 [ %14, %for.end ], [ %33, %for.inc119 ]
  %36 = phi i32 [ %15, %for.end ], [ %32, %for.inc119 ]
  %cond127 = select i1 %cmp, i32 %36, i32 0
  %cond135325 = select i1 %cmp1, i32 %36, i32 %35
  %cmp136326 = icmp slt i32 %cond127, %cond135325
  br i1 %cmp136326, label %for.cond138.preheader.lr.ph, label %for.end234

for.cond138.preheader.lr.ph:                      ; preds = %for.end122
  %37 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom128 = sext i32 %cond127 to i64
  %arrayidx129 = getelementptr inbounds %struct.site* %37, i64 %idxprom128
  br label %for.cond138.preheader

for.cond138.preheader:                            ; preds = %for.cond138.preheader.lr.ph, %for.inc231
  %indvars.iv352 = phi i64 [ %idxprom128, %for.cond138.preheader.lr.ph ], [ %indvars.iv.next353, %for.inc231 ]
  %s.2328 = phi %struct.site* [ %arrayidx129, %for.cond138.preheader.lr.ph ], [ %incdec.ptr233, %for.inc231 ]
  %38 = bitcast %struct.site* %s.2328 to i8*
  br label %for.body140

for.body140:                                      ; preds = %for.inc228, %for.cond138.preheader
  %indvars.iv348 = phi i64 [ 0, %for.cond138.preheader ], [ %indvars.iv.next349, %for.inc228 ]
  %39 = trunc i64 %indvars.iv348 to i32
  %cmp141 = icmp eq i32 %39, %gauge_dir
  br i1 %cmp141, label %for.inc228, label %if.then142

if.then142:                                       ; preds = %for.body140
  %arrayidx145 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv348
  %40 = load i8*** %arrayidx145, align 8, !tbaa !3
  %arrayidx146 = getelementptr inbounds i8** %40, i64 %indvars.iv352
  %41 = load i8** %arrayidx146, align 8, !tbaa !3
  %42 = bitcast i8* %41 to %struct.su3_matrix*
  %43 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp147 = icmp sgt i32 %43, -1
  br i1 %cmp147, label %if.then148, label %if.else153

if.then148:                                       ; preds = %if.then142
  %idx.ext149 = sext i32 %43 to i64
  %add.ptr150 = getelementptr inbounds i8* %38, i64 %idx.ext149
  %44 = bitcast i8* %add.ptr150 to %struct.su3_matrix*
  tail call void @add_su3_matrix(%struct.su3_matrix* %44, %struct.su3_matrix* %42, %struct.su3_matrix* %44) #5
  br label %if.end158

if.else153:                                       ; preds = %if.then142
  %45 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %arrayidx155 = getelementptr inbounds %struct.su3_matrix* %45, i64 %indvars.iv352
  tail call void @add_su3_matrix(%struct.su3_matrix* %arrayidx155, %struct.su3_matrix* %42, %struct.su3_matrix* %arrayidx155) #5
  br label %if.end158

if.end158:                                        ; preds = %if.else153, %if.then148
  %46 = load i32* @sumvec_offset, align 4, !tbaa !0
  %cmp159 = icmp sgt i32 %46, -1
  %e166 = bitcast i8* %41 to [3 x [3 x %struct.complex]]*
  br i1 %cmp159, label %for.cond161.preheader, label %for.cond194.preheader

for.cond161.preheader:                            ; preds = %if.end158
  %idx.ext171 = sext i32 %46 to i64
  %add.ptr172 = getelementptr inbounds i8* %38, i64 %idx.ext171
  %c173 = bitcast i8* %add.ptr172 to [3 x %struct.complex]*
  br label %for.body163

for.cond194.preheader:                            ; preds = %if.end158
  %47 = load %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  br label %for.body196

for.body163:                                      ; preds = %for.body163, %for.cond161.preheader
  %indvars.iv344 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next345, %for.body163 ]
  %real169 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e166, i64 0, i64 %indvars.iv344, i64 %indvars.iv344, i32 0
  %48 = load double* %real169, align 8, !tbaa !4
  %real175 = getelementptr inbounds [3 x %struct.complex]* %c173, i64 0, i64 %indvars.iv344, i32 0
  %49 = load double* %real175, align 8, !tbaa !4
  %add176 = fadd double %48, %49
  store double %add176, double* %real175, align 8, !tbaa !4
  %imag182 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e166, i64 0, i64 %indvars.iv344, i64 %indvars.iv344, i32 1
  %50 = load double* %imag182, align 8, !tbaa !4
  %imag188 = getelementptr inbounds [3 x %struct.complex]* %c173, i64 0, i64 %indvars.iv344, i32 1
  %51 = load double* %imag188, align 8, !tbaa !4
  %add189 = fadd double %50, %51
  store double %add189, double* %imag188, align 8, !tbaa !4
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %lftr.wideiv346 = trunc i64 %indvars.iv.next345 to i32
  %exitcond347 = icmp eq i32 %lftr.wideiv346, 3
  br i1 %exitcond347, label %for.inc228, label %for.body163

for.body196:                                      ; preds = %for.body196, %for.cond194.preheader
  %indvars.iv = phi i64 [ 0, %for.cond194.preheader ], [ %indvars.iv.next, %for.body196 ]
  %real202 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e166, i64 0, i64 %indvars.iv, i64 %indvars.iv, i32 0
  %52 = load double* %real202, align 8, !tbaa !4
  %real208 = getelementptr inbounds %struct.su3_vector* %47, i64 %indvars.iv352, i32 0, i64 %indvars.iv, i32 0
  %53 = load double* %real208, align 8, !tbaa !4
  %add209 = fadd double %52, %53
  store double %add209, double* %real208, align 8, !tbaa !4
  %imag215 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e166, i64 0, i64 %indvars.iv, i64 %indvars.iv, i32 1
  %54 = load double* %imag215, align 8, !tbaa !4
  %imag221 = getelementptr inbounds %struct.su3_vector* %47, i64 %indvars.iv352, i32 0, i64 %indvars.iv, i32 1
  %55 = load double* %imag221, align 8, !tbaa !4
  %add222 = fadd double %54, %55
  store double %add222, double* %imag221, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc228, label %for.body196

for.inc228:                                       ; preds = %for.body163, %for.body196, %for.body140
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %lftr.wideiv350 = trunc i64 %indvars.iv.next349 to i32
  %exitcond351 = icmp eq i32 %lftr.wideiv350, 4
  br i1 %exitcond351, label %for.inc231, label %for.body140

for.inc231:                                       ; preds = %for.inc228
  %indvars.iv.next353 = add i64 %indvars.iv352, 1
  %incdec.ptr233 = getelementptr inbounds %struct.site* %s.2328, i64 1
  %56 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %57 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond135 = select i1 %cmp1, i32 %56, i32 %57
  %58 = trunc i64 %indvars.iv.next353 to i32
  %cmp136 = icmp slt i32 %58, %cond135
  br i1 %cmp136, label %for.cond138.preheader, label %for.end234

for.end234:                                       ; preds = %for.inc231, %for.end122
  ret void
}

; Function Attrs: optsize
declare void @clear_su3mat(%struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @clearvec(%struct.su3_vector*) #1

; Function Attrs: optsize
declare void @sub_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

; Function Attrs: nounwind optsize uwtable
define void @do_hit(i32 %gauge_dir, i32 %parity, i32 %p, i32 %q, double %relax_boost, i32 %nvector, i32* nocapture %vector_offset, i32* nocapture %vector_parity, i32 %nantiherm, i32* nocapture %antiherm_offset, i32* nocapture %antiherm_parity) #0 {
entry:
  %u = alloca %struct.su2_matrix, align 8
  %htemp = alloca %struct.su3_matrix, align 8
  %0 = bitcast %struct.su2_matrix* %u to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #2
  %1 = bitcast %struct.su3_matrix* %htemp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #2
  call void @accum_gauge_hit(i32 %gauge_dir, i32 %parity) #6
  %cmp = icmp eq i32 %parity, 1
  %2 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp, i32 %2, i32 0
  %cmp1 = icmp eq i32 %parity, 2
  %3 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond5357 = select i1 %cmp1, i32 %2, i32 %3
  %cmp6358 = icmp slt i32 %cond, %cond5357
  br i1 %cmp6358, label %for.body.lr.ph, label %for.end239

for.body.lr.ph:                                   ; preds = %entry
  %4 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds %struct.site* %4, i64 %idxprom
  %idxprom8 = sext i32 %p to i64
  %idxprom10 = sext i32 %q to i64
  %coerce.sroa.0.0.idx = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 0
  %coerce.sroa.1.8.idx243 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 1
  %coerce158.sroa.0.0.idx = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 0
  %coerce158.sroa.1.8.idx242 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 1
  %coerce164.sroa.0.0.idx = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 0
  %coerce164.sroa.1.8.idx241 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 1
  %coerce170.sroa.0.0.idx = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 0
  %coerce170.sroa.1.8.idx240 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 1
  %cmp187353 = icmp sgt i32 %nvector, 0
  %cmp215355 = icmp sgt i32 %nantiherm, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc237
  %indvars.iv373 = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next374, %for.inc237 ]
  %s.0359 = phi %struct.site* [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.inc237 ]
  %5 = load i32* @sumvec_offset, align 4, !tbaa !0
  %cmp7 = icmp sgt i32 %5, -1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = bitcast %struct.site* %s.0359 to i8*
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8* %6, i64 %idx.ext
  %c = bitcast i8* %add.ptr to [3 x %struct.complex]*
  %real = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %idxprom8, i32 0
  %7 = load double* %real, align 8, !tbaa !4
  %real15 = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %idxprom10, i32 0
  %8 = load double* %real15, align 8, !tbaa !4
  %add = fadd double %7, %8
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  %real21 = getelementptr inbounds %struct.su3_vector* %9, i64 %indvars.iv373, i32 0, i64 %idxprom8, i32 0
  %10 = load double* %real21, align 8, !tbaa !4
  %real27 = getelementptr inbounds %struct.su3_vector* %9, i64 %indvars.iv373, i32 0, i64 %idxprom10, i32 0
  %11 = load double* %real27, align 8, !tbaa !4
  %add28 = fadd double %10, %11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %a0.0 = phi double [ %add, %if.then ], [ %add28, %if.else ]
  %12 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp29 = icmp sgt i32 %12, -1
  br i1 %cmp29, label %if.then30, label %if.else80

if.then30:                                        ; preds = %if.end
  %13 = bitcast %struct.site* %s.0359 to i8*
  %idx.ext33 = sext i32 %12 to i64
  %add.ptr34 = getelementptr inbounds i8* %13, i64 %idx.ext33
  %e = bitcast i8* %add.ptr34 to [3 x [3 x %struct.complex]]*
  %imag = getelementptr inbounds [3 x [3 x %struct.complex]]* %e, i64 0, i64 %idxprom10, i64 %idxprom8, i32 1
  %14 = load double* %imag, align 8, !tbaa !4
  %imag44 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e, i64 0, i64 %idxprom8, i64 %idxprom10, i32 1
  %15 = load double* %imag44, align 8, !tbaa !4
  %add45 = fadd double %14, %15
  %real53 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e, i64 0, i64 %idxprom10, i64 %idxprom8, i32 0
  %16 = load double* %real53, align 8, !tbaa !4
  %real61 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e, i64 0, i64 %idxprom8, i64 %idxprom10, i32 0
  %17 = load double* %real61, align 8, !tbaa !4
  %add62 = fsub double %17, %16
  %imag70 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e, i64 0, i64 %idxprom8, i64 %idxprom8, i32 1
  %18 = load double* %imag70, align 8, !tbaa !4
  %imag78 = getelementptr inbounds [3 x [3 x %struct.complex]]* %e, i64 0, i64 %idxprom10, i64 %idxprom10, i32 1
  %19 = load double* %imag78, align 8, !tbaa !4
  %sub79 = fsub double %18, %19
  br label %if.end133

if.else80:                                        ; preds = %if.end
  %20 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %imag88 = getelementptr inbounds %struct.su3_matrix* %20, i64 %indvars.iv373, i32 0, i64 %idxprom10, i64 %idxprom8, i32 1
  %21 = load double* %imag88, align 8, !tbaa !4
  %imag96 = getelementptr inbounds %struct.su3_matrix* %20, i64 %indvars.iv373, i32 0, i64 %idxprom8, i64 %idxprom10, i32 1
  %22 = load double* %imag96, align 8, !tbaa !4
  %add97 = fadd double %21, %22
  %real105 = getelementptr inbounds %struct.su3_matrix* %20, i64 %indvars.iv373, i32 0, i64 %idxprom10, i64 %idxprom8, i32 0
  %23 = load double* %real105, align 8, !tbaa !4
  %real114 = getelementptr inbounds %struct.su3_matrix* %20, i64 %indvars.iv373, i32 0, i64 %idxprom8, i64 %idxprom10, i32 0
  %24 = load double* %real114, align 8, !tbaa !4
  %add115 = fsub double %24, %23
  %imag123 = getelementptr inbounds %struct.su3_matrix* %20, i64 %indvars.iv373, i32 0, i64 %idxprom8, i64 %idxprom8, i32 1
  %25 = load double* %imag123, align 8, !tbaa !4
  %imag131 = getelementptr inbounds %struct.su3_matrix* %20, i64 %indvars.iv373, i32 0, i64 %idxprom10, i64 %idxprom10, i32 1
  %26 = load double* %imag131, align 8, !tbaa !4
  %sub132 = fsub double %25, %26
  br label %if.end133

if.end133:                                        ; preds = %if.else80, %if.then30
  %a3.0 = phi double [ %sub79, %if.then30 ], [ %sub132, %if.else80 ]
  %a2.0 = phi double [ %add62, %if.then30 ], [ %add115, %if.else80 ]
  %a1.0 = phi double [ %add45, %if.then30 ], [ %add97, %if.else80 ]
  %mul = fmul double %a1.0, %a1.0
  %mul134 = fmul double %a2.0, %a2.0
  %add135 = fadd double %mul134, %mul
  %mul136 = fmul double %a3.0, %a3.0
  %add137 = fadd double %mul136, %add135
  %mul138 = fmul double %a0.0, %a0.0
  %mul139 = fmul double %mul138, %relax_boost
  %add140 = fadd double %mul139, %add137
  %add141 = fadd double %mul138, %add137
  %div = fdiv double %add140, %add141
  %mul142 = fmul double %div, %div
  %mul143 = fmul double %mul142, %add137
  %add144 = fadd double %mul138, %mul143
  %call = call double @sqrt(double %add144) #5
  %div145 = fdiv double %div, %call
  %div146 = fdiv double %a0.0, %call
  %mul147 = fmul double %a1.0, %div145
  %mul148 = fmul double %a2.0, %div145
  %mul149 = fmul double %a3.0, %div145
  %call153 = call { double, double } @cmplx(double %div146, double %mul149) #5
  %27 = extractvalue { double, double } %call153, 0
  %28 = extractvalue { double, double } %call153, 1
  store double %27, double* %coerce.sroa.0.0.idx, align 8
  store double %28, double* %coerce.sroa.1.8.idx243, align 8
  %call157 = call { double, double } @cmplx(double %mul148, double %mul147) #5
  %29 = extractvalue { double, double } %call157, 0
  %30 = extractvalue { double, double } %call157, 1
  store double %29, double* %coerce158.sroa.0.0.idx, align 8
  store double %30, double* %coerce158.sroa.1.8.idx242, align 8
  %sub162 = fsub double -0.000000e+00, %mul148
  %call163 = call { double, double } @cmplx(double %sub162, double %mul147) #5
  %31 = extractvalue { double, double } %call163, 0
  %32 = extractvalue { double, double } %call163, 1
  store double %31, double* %coerce164.sroa.0.0.idx, align 8
  store double %32, double* %coerce164.sroa.1.8.idx241, align 8
  %sub168 = fsub double -0.000000e+00, %mul149
  %call169 = call { double, double } @cmplx(double %div146, double %sub168) #5
  %33 = extractvalue { double, double } %call169, 0
  %34 = extractvalue { double, double } %call169, 1
  store double %33, double* %coerce170.sroa.0.0.idx, align 8
  store double %34, double* %coerce170.sroa.1.8.idx240, align 8
  br label %for.body173

for.body173:                                      ; preds = %for.body173, %if.end133
  %indvars.iv = phi i64 [ 0, %if.end133 ], [ %indvars.iv.next, %for.body173 ]
  %arrayidx175 = getelementptr inbounds %struct.site* %s.0359, i64 0, i32 8, i64 %indvars.iv
  call void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %arrayidx175) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.body178, label %for.body173

for.body178:                                      ; preds = %for.body173, %for.body178
  %indvars.iv361 = phi i64 [ %indvars.iv.next362, %for.body178 ], [ 0, %for.body173 ]
  %arrayidx181 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv361
  %35 = load i8*** %arrayidx181, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds i8** %35, i64 %indvars.iv373
  %36 = load i8** %arrayidx182, align 8, !tbaa !3
  %37 = bitcast i8* %36 to %struct.su3_matrix*
  call void @right_su2_hit_a(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %37) #5
  %indvars.iv.next362 = add i64 %indvars.iv361, 1
  %lftr.wideiv363 = trunc i64 %indvars.iv.next362 to i32
  %exitcond364 = icmp eq i32 %lftr.wideiv363, 4
  br i1 %exitcond364, label %for.cond186.loopexit, label %for.body178

for.cond186.loopexit:                             ; preds = %for.body178
  br i1 %cmp187353, label %for.body188.lr.ph, label %for.cond214.loopexit

for.body188.lr.ph:                                ; preds = %for.cond186.loopexit
  %38 = bitcast %struct.site* %s.0359 to i8*
  br label %for.body188

for.body188:                                      ; preds = %for.inc211, %for.body188.lr.ph
  %indvars.iv365 = phi i64 [ 0, %for.body188.lr.ph ], [ %indvars.iv.next366, %for.inc211 ]
  %arrayidx190 = getelementptr inbounds i32* %vector_parity, i64 %indvars.iv365
  %39 = load i32* %arrayidx190, align 4, !tbaa !0
  %cmp191 = icmp eq i32 %39, 3
  %cmp194 = icmp eq i32 %39, %parity
  %or.cond = or i1 %cmp191, %cmp194
  br i1 %or.cond, label %if.then195, label %for.inc211

if.then195:                                       ; preds = %for.body188
  %arrayidx198 = getelementptr inbounds i32* %vector_offset, i64 %indvars.iv365
  %40 = load i32* %arrayidx198, align 4, !tbaa !0
  %idx.ext199 = sext i32 %40 to i64
  %add.ptr200 = getelementptr inbounds i8* %38, i64 %idx.ext199
  %c201 = bitcast i8* %add.ptr200 to [3 x %struct.complex]*
  %arrayidx202 = getelementptr inbounds [3 x %struct.complex]* %c201, i64 0, i64 %idxprom8
  %arrayidx209 = getelementptr inbounds [3 x %struct.complex]* %c201, i64 0, i64 %idxprom10
  call void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* %u, %struct.complex* %arrayidx202, %struct.complex* %arrayidx209) #5
  br label %for.inc211

for.inc211:                                       ; preds = %for.body188, %if.then195
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %lftr.wideiv367 = trunc i64 %indvars.iv.next366 to i32
  %exitcond368 = icmp eq i32 %lftr.wideiv367, %nvector
  br i1 %exitcond368, label %for.cond214.loopexit, label %for.body188

for.cond214.loopexit:                             ; preds = %for.inc211, %for.cond186.loopexit
  br i1 %cmp215355, label %for.body216.lr.ph, label %for.inc237

for.body216.lr.ph:                                ; preds = %for.cond214.loopexit
  %41 = bitcast %struct.site* %s.0359 to i8*
  br label %for.body216

for.body216:                                      ; preds = %for.inc234, %for.body216.lr.ph
  %indvars.iv369 = phi i64 [ 0, %for.body216.lr.ph ], [ %indvars.iv.next370, %for.inc234 ]
  %arrayidx218 = getelementptr inbounds i32* %antiherm_parity, i64 %indvars.iv369
  %42 = load i32* %arrayidx218, align 4, !tbaa !0
  %cmp219 = icmp eq i32 %42, 3
  %cmp223 = icmp eq i32 %42, %parity
  %or.cond350 = or i1 %cmp219, %cmp223
  br i1 %or.cond350, label %if.then224, label %for.inc234

if.then224:                                       ; preds = %for.body216
  %arrayidx226 = getelementptr inbounds i32* %antiherm_offset, i64 %indvars.iv369
  %43 = load i32* %arrayidx226, align 4, !tbaa !0
  %idx.ext227 = sext i32 %43 to i64
  %add.ptr228 = getelementptr inbounds i8* %41, i64 %idx.ext227
  %44 = bitcast i8* %add.ptr228 to %struct.anti_hermitmat*
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %44, %struct.su3_matrix* %htemp) #5
  call void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %htemp) #5
  call void @right_su2_hit_a(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %htemp) #5
  %45 = load i32* %arrayidx226, align 4, !tbaa !0
  %idx.ext231 = sext i32 %45 to i64
  %add.ptr232 = getelementptr inbounds i8* %41, i64 %idx.ext231
  %46 = bitcast i8* %add.ptr232 to %struct.anti_hermitmat*
  call void @make_anti_hermitian(%struct.su3_matrix* %htemp, %struct.anti_hermitmat* %46) #5
  br label %for.inc234

for.inc234:                                       ; preds = %for.body216, %if.then224
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %lftr.wideiv371 = trunc i64 %indvars.iv.next370 to i32
  %exitcond372 = icmp eq i32 %lftr.wideiv371, %nantiherm
  br i1 %exitcond372, label %for.inc237, label %for.body216

for.inc237:                                       ; preds = %for.inc234, %for.cond214.loopexit
  %indvars.iv.next374 = add i64 %indvars.iv373, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0359, i64 1
  %47 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %48 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond5 = select i1 %cmp1, i32 %47, i32 %48
  %49 = trunc i64 %indvars.iv.next374 to i32
  %cmp6 = icmp slt i32 %49, %cond5
  br i1 %cmp6, label %for.body, label %for.end239

for.end239:                                       ; preds = %for.inc237, %entry
  call void @llvm.lifetime.end(i64 144, i8* %1) #2
  call void @llvm.lifetime.end(i64 64, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: optsize
declare { double, double } @cmplx(double, double) #1

; Function Attrs: optsize
declare void @left_su2_hit_n(%struct.su2_matrix*, i32, i32, %struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @right_su2_hit_a(%struct.su2_matrix*, i32, i32, %struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @mult_su2_mat_vec_elem_n(%struct.su2_matrix*, %struct.complex*, %struct.complex*) #1

; Function Attrs: optsize
declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @make_anti_hermitian(%struct.su3_matrix*, %struct.anti_hermitmat*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define double @get_gauge_fix_action(i32 %gauge_dir, i32 %parity) #0 {
entry:
  %gauge_fix_action = alloca double, align 8
  store double 0.000000e+00, double* %gauge_fix_action, align 8, !tbaa !4
  %cmp = icmp eq i32 %parity, 1
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp, i32 %0, i32 0
  %cmp1 = icmp eq i32 %parity, 2
  %1 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond558 = select i1 %cmp1, i32 %0, i32 %1
  %cmp659 = icmp slt i32 %cond, %cond558
  br i1 %cmp659, label %for.cond7.preheader.lr.ph, label %for.body26

for.cond7.preheader.lr.ph:                        ; preds = %entry
  %2 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds %struct.site* %2, i64 %idxprom
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.inc21
  %indvars.iv63 = phi i64 [ %idxprom, %for.cond7.preheader.lr.ph ], [ %indvars.iv.next64, %for.inc21 ]
  %s.060 = phi %struct.site* [ %arrayidx, %for.cond7.preheader.lr.ph ], [ %incdec.ptr, %for.inc21 ]
  br label %for.body9

for.body9:                                        ; preds = %for.inc, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = trunc i64 %indvars.iv to i32
  %cmp10 = icmp eq i32 %3, %gauge_dir
  br i1 %cmp10, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body9
  %arrayidx12 = getelementptr inbounds %struct.site* %s.060, i64 0, i32 8, i64 %indvars.iv
  %arrayidx15 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv
  %4 = load i8*** %arrayidx15, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i8** %4, i64 %indvars.iv63
  %5 = load i8** %arrayidx16, align 8, !tbaa !3
  %6 = bitcast i8* %5 to %struct.su3_matrix*
  %call = call { double, double } @trace_su3(%struct.su3_matrix* %arrayidx12) #5
  %7 = extractvalue { double, double } %call, 0
  %8 = load double* %gauge_fix_action, align 8, !tbaa !4
  %add = fadd double %8, %7
  store double %add, double* %gauge_fix_action, align 8, !tbaa !4
  %call17 = call { double, double } @trace_su3(%struct.su3_matrix* %6) #5
  %9 = extractvalue { double, double } %call17, 0
  %10 = load double* %gauge_fix_action, align 8, !tbaa !4
  %add20 = fadd double %10, %9
  store double %add20, double* %gauge_fix_action, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond62 = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond62, label %for.inc21, label %for.body9

for.inc21:                                        ; preds = %for.inc
  %indvars.iv.next64 = add i64 %indvars.iv63, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.060, i64 1
  %11 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %12 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond5 = select i1 %cmp1, i32 %11, i32 %12
  %13 = trunc i64 %indvars.iv.next64 to i32
  %cmp6 = icmp slt i32 %13, %cond5
  br i1 %cmp6, label %for.cond7.preheader, label %for.body26

for.body26:                                       ; preds = %entry, %for.inc21, %for.body26
  %dir.156 = phi i32 [ %inc32, %for.body26 ], [ 0, %for.inc21 ], [ 0, %entry ]
  %ndir.055 = phi i32 [ %ndir.0.inc29, %for.body26 ], [ 0, %for.inc21 ], [ 0, %entry ]
  %not.cmp27 = icmp ne i32 %dir.156, %gauge_dir
  %inc29 = zext i1 %not.cmp27 to i32
  %ndir.0.inc29 = add nsw i32 %inc29, %ndir.055
  %inc32 = add nsw i32 %dir.156, 1
  %exitcond = icmp eq i32 %inc32, 4
  br i1 %exitcond, label %for.end33, label %for.body26

for.end33:                                        ; preds = %for.body26
  call void @g_doublesum(double* %gauge_fix_action) #5
  %14 = load double* %gauge_fix_action, align 8, !tbaa !4
  %mul = mul nsw i32 %ndir.0.inc29, 6
  %15 = load i32* @nx, align 4, !tbaa !0
  %mul34 = mul nsw i32 %mul, %15
  %16 = load i32* @ny, align 4, !tbaa !0
  %mul35 = mul nsw i32 %mul34, %16
  %17 = load i32* @nz, align 4, !tbaa !0
  %mul36 = mul nsw i32 %mul35, %17
  %18 = load i32* @nt, align 4, !tbaa !0
  %mul37 = mul nsw i32 %mul36, %18
  %conv = sitofp i32 %mul37 to double
  %div = fdiv double %14, %conv
  ret double %div
}

; Function Attrs: optsize
declare { double, double } @trace_su3(%struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @g_doublesum(double*) #1

; Function Attrs: nounwind optsize uwtable
define void @gaugefixstep(i32 %gauge_dir, double* nocapture %av_gauge_fix_action, double %relax_boost, i32 %nvector, i32* nocapture %vector_offset, i32* nocapture %vector_parity, i32 %nantiherm, i32* nocapture %antiherm_offset, i32* nocapture %antiherm_parity) #0 {
entry:
  %mtag = alloca [8 x %struct.msg_tag*], align 16
  %0 = bitcast [8 x %struct.msg_tag*]* %mtag to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #2
  store double 0.000000e+00, double* %av_gauge_fix_action, align 8, !tbaa !4
  call void (...)* @g_sync() #5
  %1 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call = call i32 @fflush(%struct._IO_FILE* %1) #5
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc111, %entry
  %parity.0190 = phi i32 [ 1, %entry ], [ %inc112, %for.inc111 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %dir.0179 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %2 = mul i64 %indvars.iv, 144
  %3 = add i64 %2, 112
  %sub = sub nsw i32 7, %dir.0179
  %arrayidx7 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv
  %4 = load i8*** %arrayidx7, align 8, !tbaa !3
  %5 = trunc i64 %3 to i32
  %call8 = call %struct.msg_tag* @start_gather(i32 %5, i32 144, i32 %sub, i32 %parity.0190, i8** %4) #5
  %arrayidx10 = getelementptr inbounds [8 x %struct.msg_tag*]* %mtag, i64 0, i64 %indvars.iv
  store %struct.msg_tag* %call8, %struct.msg_tag** %arrayidx10, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %dir.0179, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.body14, label %for.body3

for.body14:                                       ; preds = %for.body3, %for.body14
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body14 ], [ 0, %for.body3 ]
  %arrayidx16 = getelementptr inbounds [8 x %struct.msg_tag*]* %mtag, i64 0, i64 %indvars.iv194
  %6 = load %struct.msg_tag** %arrayidx16, align 8, !tbaa !3
  call void @wait_gather(%struct.msg_tag* %6) #5
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, 4
  br i1 %exitcond197, label %for.end19, label %for.body14

for.end19:                                        ; preds = %for.body14
  %call20 = call double @get_gauge_fix_action(i32 %gauge_dir, i32 %parity.0190) #6
  call void @do_hit(i32 %gauge_dir, i32 %parity.0190, i32 0, i32 1, double %relax_boost, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #6
  call void @do_hit(i32 %gauge_dir, i32 %parity.0190, i32 1, i32 2, double %relax_boost, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #6
  call void @do_hit(i32 %gauge_dir, i32 %parity.0190, i32 2, i32 0, double %relax_boost, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #6
  %call21 = call double @get_gauge_fix_action(i32 %gauge_dir, i32 %parity.0190) #6
  %7 = load double* %av_gauge_fix_action, align 8, !tbaa !4
  %add = fadd double %call21, %7
  store double %add, double* %av_gauge_fix_action, align 8, !tbaa !4
  %cmp26 = icmp eq i32 %parity.0190, 1
  %cmp31 = icmp eq i32 %parity.0190, 2
  %xor = xor i32 %parity.0190, 3
  br label %for.body25

for.body25:                                       ; preds = %for.end105, %for.end19
  %indvars.iv202 = phi i64 [ 0, %for.end19 ], [ %indvars.iv.next203, %for.end105 ]
  call void (...)* @g_sync() #5
  %8 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp26, i32 %8, i32 0
  %9 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond36181 = select i1 %cmp31, i32 %8, i32 %9
  %cmp37182 = icmp slt i32 %cond, %cond36181
  br i1 %cmp37182, label %for.body39.lr.ph, label %for.end54

for.body39.lr.ph:                                 ; preds = %for.body25
  %10 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom28 = sext i32 %cond to i64
  %arrayidx29 = getelementptr inbounds %struct.site* %10, i64 %idxprom28
  %arrayidx44 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv202
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc52
  %indvars.iv198 = phi i64 [ %idxprom28, %for.body39.lr.ph ], [ %indvars.iv.next199, %for.inc52 ]
  %s.0184 = phi %struct.site* [ %arrayidx29, %for.body39.lr.ph ], [ %incdec.ptr, %for.inc52 ]
  %11 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp40 = icmp sgt i32 %11, -1
  %12 = load i8*** %arrayidx44, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds i8** %12, i64 %indvars.iv198
  %13 = load i8** %arrayidx45, align 8, !tbaa !3
  %14 = bitcast i8* %13 to %struct.su3_matrix*
  br i1 %cmp40, label %if.then, label %if.else

if.then:                                          ; preds = %for.body39
  %15 = bitcast %struct.site* %s.0184 to i8*
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8* %15, i64 %idx.ext
  %16 = bitcast i8* %add.ptr to %struct.su3_matrix*
  call void @su3mat_copy(%struct.su3_matrix* %14, %struct.su3_matrix* %16) #5
  br label %for.inc52

if.else:                                          ; preds = %for.body39
  %17 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %arrayidx51 = getelementptr inbounds %struct.su3_matrix* %17, i64 %indvars.iv198
  call void @su3mat_copy(%struct.su3_matrix* %14, %struct.su3_matrix* %arrayidx51) #5
  br label %for.inc52

for.inc52:                                        ; preds = %if.then, %if.else
  %indvars.iv.next199 = add i64 %indvars.iv198, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0184, i64 1
  %18 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %19 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond36 = select i1 %cmp31, i32 %18, i32 %19
  %20 = trunc i64 %indvars.iv.next199 to i32
  %cmp37 = icmp slt i32 %20, %cond36
  br i1 %cmp37, label %for.body39, label %for.end54

for.end54:                                        ; preds = %for.inc52, %for.body25
  %arrayidx56 = getelementptr inbounds [8 x %struct.msg_tag*]* %mtag, i64 0, i64 %indvars.iv202
  %21 = load %struct.msg_tag** %arrayidx56, align 8, !tbaa !3
  call void @cleanup_gather(%struct.msg_tag* %21) #5
  call void (...)* @g_sync() #5
  %22 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp57 = icmp sgt i32 %22, -1
  br i1 %cmp57, label %if.then59, label %if.else65

if.then59:                                        ; preds = %for.end54
  %arrayidx61 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv202
  %23 = load i8*** %arrayidx61, align 8, !tbaa !3
  %24 = trunc i64 %indvars.iv202 to i32
  %call62 = call %struct.msg_tag* @start_gather(i32 %22, i32 144, i32 %24, i32 %xor, i8** %23) #5
  br label %if.end72

if.else65:                                        ; preds = %for.end54
  %25 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %26 = bitcast %struct.su3_matrix* %25 to i8*
  %arrayidx68 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv202
  %27 = load i8*** %arrayidx68, align 8, !tbaa !3
  %28 = trunc i64 %indvars.iv202 to i32
  %call69 = call %struct.msg_tag* @start_gather_from_temp(i8* %26, i32 144, i32 %28, i32 %xor, i8** %27) #5
  br label %if.end72

if.end72:                                         ; preds = %if.else65, %if.then59
  %29 = phi %struct.msg_tag* [ %call69, %if.else65 ], [ %call62, %if.then59 ]
  store %struct.msg_tag* %29, %struct.msg_tag** %arrayidx56, align 8, !tbaa !3
  call void @wait_gather(%struct.msg_tag* %29) #5
  %30 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cond81 = select i1 %cmp31, i32 %30, i32 0
  %31 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond91185 = select i1 %cmp26, i32 %30, i32 %31
  %cmp92186 = icmp slt i32 %cond81, %cond91185
  br i1 %cmp92186, label %for.body94.lr.ph, label %for.end105

for.body94.lr.ph:                                 ; preds = %if.end72
  %32 = load %struct.site** @lattice, align 8, !tbaa !3
  %idxprom82 = sext i32 %cond81 to i64
  %arrayidx83 = getelementptr inbounds %struct.site* %32, i64 %idxprom82
  %arrayidx97 = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv202
  br label %for.body94

for.body94:                                       ; preds = %for.body94.lr.ph, %for.body94
  %indvars.iv200 = phi i64 [ %idxprom82, %for.body94.lr.ph ], [ %indvars.iv.next201, %for.body94 ]
  %s.1188 = phi %struct.site* [ %arrayidx83, %for.body94.lr.ph ], [ %incdec.ptr104, %for.body94 ]
  %33 = load i8*** %arrayidx97, align 8, !tbaa !3
  %arrayidx98 = getelementptr inbounds i8** %33, i64 %indvars.iv200
  %34 = load i8** %arrayidx98, align 8, !tbaa !3
  %35 = bitcast i8* %34 to %struct.su3_matrix*
  %arrayidx101 = getelementptr inbounds %struct.site* %s.1188, i64 0, i32 8, i64 %indvars.iv202
  call void @su3mat_copy(%struct.su3_matrix* %35, %struct.su3_matrix* %arrayidx101) #5
  %indvars.iv.next201 = add i64 %indvars.iv200, 1
  %incdec.ptr104 = getelementptr inbounds %struct.site* %s.1188, i64 1
  %36 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %37 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond91 = select i1 %cmp26, i32 %36, i32 %37
  %38 = trunc i64 %indvars.iv.next201 to i32
  %cmp92 = icmp slt i32 %38, %cond91
  br i1 %cmp92, label %for.body94, label %for.end105

for.end105:                                       ; preds = %for.body94, %if.end72
  call void @cleanup_gather(%struct.msg_tag* %29) #5
  %indvars.iv.next203 = add i64 %indvars.iv202, 1
  %lftr.wideiv204 = trunc i64 %indvars.iv.next203 to i32
  %exitcond205 = icmp eq i32 %lftr.wideiv204, 4
  br i1 %exitcond205, label %for.inc111, label %for.body25

for.inc111:                                       ; preds = %for.end105
  %inc112 = add nsw i32 %parity.0190, 1
  %exitcond206 = icmp eq i32 %inc112, 3
  br i1 %exitcond206, label %for.end113, label %for.cond1.preheader

for.end113:                                       ; preds = %for.inc111
  call void @llvm.lifetime.end(i64 64, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare void @g_sync(...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #1

; Function Attrs: optsize
declare void @wait_gather(%struct.msg_tag*) #1

; Function Attrs: optsize
declare void @su3mat_copy(%struct.su3_matrix*, %struct.su3_matrix*) #1

; Function Attrs: optsize
declare void @cleanup_gather(%struct.msg_tag*) #1

; Function Attrs: optsize
declare %struct.msg_tag* @start_gather_from_temp(i8*, i32, i32, i32, i8**) #1

; Function Attrs: nounwind optsize uwtable
define void @gaugefixscratch(i32 %diffmat, i32 %sumvec) #0 {
entry:
  store i32 %diffmat, i32* @diffmat_offset, align 4, !tbaa !0
  store %struct.su3_matrix* null, %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %cmp = icmp slt i32 %diffmat, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 144) #5
  %1 = bitcast i8* %call to %struct.su3_matrix*
  store %struct.su3_matrix* %1, %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.then
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %puts27 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call8 = tail call i32 @fflush(%struct._IO_FILE* %3) #5
  tail call void @terminate(i32 1) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.end, %entry
  store i32 %sumvec, i32* @sumvec_offset, align 4, !tbaa !0
  store %struct.su3_vector* null, %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  %cmp11 = icmp slt i32 %sumvec, 0
  br i1 %cmp11, label %if.then13, label %if.end26

if.then13:                                        ; preds = %if.end10
  %4 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv14 = sext i32 %4 to i64
  %call15 = tail call noalias i8* @calloc(i64 %conv14, i64 48) #5
  %5 = bitcast i8* %call15 to %struct.su3_vector*
  store %struct.su3_vector* %5, %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end26

if.then18:                                        ; preds = %if.then13
  %6 = load i32* @this_node, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %6, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then18
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call24 = tail call i32 @fflush(%struct._IO_FILE* %7) #5
  tail call void @terminate(i32 1) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then13, %if.end23, %if.end10
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @terminate(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @gaugefix(i32 %gauge_dir, double %relax_boost, i32 %max_gauge_iter, double %gauge_fix_tol, i32 %diffmat, i32 %sumvec, i32 %nvector, i32* nocapture %vector_offset, i32* nocapture %vector_parity, i32 %nantiherm, i32* nocapture %antiherm_offset, i32* nocapture %antiherm_parity) #0 {
entry:
  %current_av = alloca double, align 8
  call void @gaugefixscratch(i32 %diffmat, i32 %sumvec) #6
  %cmp31 = icmp sgt i32 %max_gauge_iter, 0
  br i1 %cmp31, label %for.body, label %if.end11

for.body:                                         ; preds = %entry, %for.inc
  %del_av.034 = phi double [ %del_av.130, %for.inc ], [ undef, %entry ]
  %old_av.033 = phi double [ %0, %for.inc ], [ undef, %entry ]
  %gauge_iter.032 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  call void @gaugefixstep(i32 %gauge_dir, double* %current_av, double %relax_boost, i32 %nvector, i32* %vector_offset, i32* %vector_parity, i32 %nantiherm, i32* %antiherm_offset, i32* %antiherm_parity) #6
  %cmp1 = icmp eq i32 %gauge_iter.032, 0
  %0 = load double* %current_av, align 8, !tbaa !4
  br i1 %cmp1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %sub = fsub double %0, %old_av.033
  %call = call double @fabs(double %sub) #7
  %cmp2 = fcmp olt double %call, %gauge_fix_tol
  br i1 %cmp2, label %for.end, label %if.end4

if.end4:                                          ; preds = %if.then
  %rem = srem i32 %gauge_iter.032, 20
  %cmp5 = icmp eq i32 %rem, 19
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.end4
  call void @reunitarize() #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end4, %if.then6
  %del_av.130 = phi double [ %sub, %if.end4 ], [ %sub, %if.then6 ], [ %del_av.034, %for.body ]
  %inc = add nsw i32 %gauge_iter.032, 1
  %cmp = icmp slt i32 %inc, %max_gauge_iter
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then
  %gauge_iter.0.lcssa = phi i32 [ %gauge_iter.032, %if.then ], [ %inc, %for.inc ]
  %del_av.2 = phi double [ %sub, %if.then ], [ %del_av.130, %for.inc ]
  %rem8 = srem i32 %gauge_iter.0.lcssa, 20
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  call void @reunitarize() #5
  br label %if.end11

if.end11:                                         ; preds = %entry, %for.end, %if.then10
  %del_av.240 = phi double [ %del_av.2, %for.end ], [ %del_av.2, %if.then10 ], [ undef, %entry ]
  %gauge_iter.0.lcssa39 = phi i32 [ %gauge_iter.0.lcssa, %for.end ], [ %gauge_iter.0.lcssa, %if.then10 ], [ 0, %entry ]
  %1 = phi double [ %0, %for.end ], [ %0, %if.then10 ], [ undef, %entry ]
  %2 = load i32* @diffmat_offset, align 4, !tbaa !0
  %cmp12 = icmp slt i32 %2, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %3 = load %struct.su3_matrix** @diffmatp, align 8, !tbaa !3
  %4 = bitcast %struct.su3_matrix* %3 to i8*
  call void @free(i8* %4) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %5 = load i32* @sumvec_offset, align 4, !tbaa !0
  %cmp15 = icmp slt i32 %5, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %6 = load %struct.su3_vector** @sumvecp, align 8, !tbaa !3
  %7 = bitcast %struct.su3_vector* %6 to i8*
  call void @free(i8* %7) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %8 = load i32* @this_node, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %8, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 %gauge_iter.0.lcssa39, double %1, double %del_av.240) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare void @reunitarize() #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
