; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/d_congrad5_fn.c'
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
%struct.msg_tag = type { i32, i32, i8*, i32 }

@valid_longlinks = external global i32
@valid_fatlinks = external global i32
@lattice = external global %struct.site*
@even_sites_on_node = external global i32
@sites_on_node = external global i32
@total_iters = external global i32
@this_node = external global i32
@.str = private unnamed_addr constant [59 x i8] c"CG not converged after %d iterations, res. = %e wanted %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define i32 @ks_congrad(i32 %src, i32 %dest, double %mass, i32 %niter, double %rsqmin, i32 %parity, double* nocapture %final_rsq_ptr) #0 {
entry:
  %rsq = alloca double, align 8
  %pkp = alloca double, align 8
  %source_norm = alloca double, align 8
  %tags1 = alloca [16 x %struct.msg_tag*], align 16
  %tags2 = alloca [16 x %struct.msg_tag*], align 16
  %0 = bitcast [16 x %struct.msg_tag*]* %tags1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [16 x %struct.msg_tag*]* %tags2 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  switch i32 %parity, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  %l_parity.0 = phi i32 [ undef, %entry ], [ 2, %sw.bb2 ], [ %parity, %sw.bb1 ], [ %parity, %sw.bb ]
  %l_otherparity.0 = phi i32 [ undef, %entry ], [ 1, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %sw.bb ]
  %mul3 = fmul double %mass, 4.000000e+00
  %mul4 = fmul double %mul3, %mass
  %2 = load i32* @valid_longlinks, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %sw.epilog
  call void (...)* @load_longlinks() #4
  br label %if.end6

if.end6:                                          ; preds = %sw.epilog, %if.then5
  %3 = load i32* @valid_fatlinks, align 4, !tbaa !0
  %tobool7 = icmp eq i32 %3, 0
  br i1 %tobool7, label %if.then8, label %start.preheader

if.then8:                                         ; preds = %if.end6
  call void (...)* @load_fatlinks() #4
  br label %start.preheader

start.preheader:                                  ; preds = %if.then8, %if.end6
  %arraydecay = getelementptr inbounds [16 x %struct.msg_tag*]* %tags1, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [16 x %struct.msg_tag*]* %tags2, i64 0, i64 0
  %idx.ext179 = sext i32 %dest to i64
  %sub147 = fsub double -0.000000e+00, %mul4
  %mul232 = mul nsw i32 %niter, 5
  %idx.ext42 = sext i32 %src to i64
  br label %start.outer

start.outer:                                      ; preds = %if.end236, %if.then196, %if.then56, %start.preheader
  %l_parity.1.ph = phi i32 [ %l_parity.0, %start.preheader ], [ 1, %if.then56 ], [ 1, %if.then196 ], [ 1, %if.end236 ]
  %l_otherparity.1.ph = phi i32 [ %l_otherparity.0, %start.preheader ], [ 2, %if.then56 ], [ 2, %if.then196 ], [ 2, %if.end236 ]
  %special_started.0.ph = phi i32 [ 0, %start.preheader ], [ %special_started.1, %if.then56 ], [ %special_started.3, %if.then196 ], [ %special_started.3, %if.end236 ]
  %parity.addr.0.ph = phi i32 [ %parity, %start.preheader ], [ 2, %if.then56 ], [ 2, %if.then196 ], [ 2, %if.end236 ]
  %cmp29 = icmp eq i32 %l_parity.1.ph, 2
  %cmp31 = icmp eq i32 %l_parity.1.ph, 1
  br label %start

start:                                            ; preds = %start.outer, %do.end
  %iteration.0 = phi i32 [ %inc157, %do.end ], [ 0, %start.outer ]
  %special_started.0 = phi i32 [ %special_started.3, %do.end ], [ %special_started.0.ph, %start.outer ]
  %cmp10 = icmp eq i32 %special_started.0, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %start
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay, %struct.msg_tag** %arraydecay12) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %start
  %special_started.1 = phi i32 [ 0, %if.then11 ], [ %special_started.0, %start ]
  store double 0.000000e+00, double* %source_norm, align 8, !tbaa !3
  store double 0.000000e+00, double* %rsq, align 8, !tbaa !3
  call void @dslash_fn(i32 %dest, i32 1232, i32 %l_otherparity.1.ph) #4
  call void @dslash_fn(i32 1232, i32 1232, i32 %l_parity.1.ph) #4
  %4 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %5 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp29, i32 %4, i32 %5
  %cond36 = select i1 %cmp31, i32 %4, i32 0
  %cmp38322 = icmp slt i32 %cond36, %cond
  br i1 %cmp38322, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %6 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom = sext i32 %cond36 to i64
  %arrayidx37 = getelementptr inbounds %struct.site* %6, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %i.0324 = phi i32 [ %cond36, %for.body.lr.ph ], [ %inc, %for.body ]
  %s.0323 = phi %struct.site* [ %arrayidx37, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %ttt40 = getelementptr inbounds %struct.site* %s.0323, i64 0, i32 15
  %7 = bitcast %struct.site* %s.0323 to i8*
  %add.ptr = getelementptr inbounds i8* %7, i64 %idx.ext179
  %8 = bitcast i8* %add.ptr to %struct.su3_vector*
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %ttt40, %struct.su3_vector* %8, double %sub147, %struct.su3_vector* %ttt40) #4
  %add.ptr43 = getelementptr inbounds i8* %7, i64 %idx.ext42
  %9 = bitcast i8* %add.ptr43 to %struct.su3_vector*
  %resid = getelementptr inbounds %struct.site* %s.0323, i64 0, i32 12
  call void @add_su3_vector(%struct.su3_vector* %9, %struct.su3_vector* %ttt40, %struct.su3_vector* %resid) #4
  %cg_p = getelementptr inbounds %struct.site* %s.0323, i64 0, i32 13
  %10 = bitcast %struct.su3_vector* %cg_p to i8*
  %11 = bitcast %struct.su3_vector* %resid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 48, i32 8, i1 false), !tbaa.struct !5
  %call = call double @magsq_su3vec(%struct.su3_vector* %9) #4
  %12 = load double* %source_norm, align 8, !tbaa !3
  %add = fadd double %call, %12
  store double %add, double* %source_norm, align 8, !tbaa !3
  %call49 = call double @magsq_su3vec(%struct.su3_vector* %resid) #4
  %13 = load double* %rsq, align 8, !tbaa !3
  %add50 = fadd double %call49, %13
  store double %add50, double* %rsq, align 8, !tbaa !3
  %inc = add nsw i32 %i.0324, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0323, i64 1
  %exitcond = icmp eq i32 %inc, %cond
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end13
  call void @g_doublesum(double* %source_norm) #4
  call void @g_doublesum(double* %rsq) #4
  %inc51 = add nsw i32 %iteration.0, 1
  %14 = load i32* @total_iters, align 4, !tbaa !0
  %inc52 = add nsw i32 %14, 1
  store i32 %inc52, i32* @total_iters, align 4, !tbaa !0
  %15 = load double* %source_norm, align 8, !tbaa !3
  %mul53 = fmul double %15, %rsqmin
  %16 = load double* %rsq, align 8, !tbaa !3
  %cmp54 = fcmp ugt double %16, %mul53
  br i1 %cmp54, label %do.body, label %if.then56

if.then56:                                        ; preds = %for.end
  %cmp57 = icmp eq i32 %parity.addr.0.ph, 3
  br i1 %cmp57, label %start.outer, label %if.end60

if.end60:                                         ; preds = %if.then56
  store double %16, double* %final_rsq_ptr, align 8, !tbaa !3
  br label %cleanup

do.body:                                          ; preds = %for.end, %if.end207.do.body_crit_edge
  %17 = phi double [ %.pre, %if.end207.do.body_crit_edge ], [ %16, %for.end ]
  %iteration.1 = phi i32 [ %inc157, %if.end207.do.body_crit_edge ], [ %inc51, %for.end ]
  %special_started.2 = phi i32 [ %special_started.3, %if.end207.do.body_crit_edge ], [ %special_started.1, %for.end ]
  store double 0.000000e+00, double* %pkp, align 8, !tbaa !3
  %cmp62 = icmp eq i32 %special_started.2, 0
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %do.body
  call void @dslash_fn_special(i32 1136, i32 1232, i32 %l_otherparity.1.ph, %struct.msg_tag** %arraydecay12, i32 1) #4
  call void @dslash_fn_special(i32 1232, i32 1232, i32 %l_parity.1.ph, %struct.msg_tag** %arraydecay, i32 1) #4
  br label %if.end125

if.else:                                          ; preds = %do.body
  call void @dslash_fn_special(i32 1136, i32 1232, i32 %l_otherparity.1.ph, %struct.msg_tag** %arraydecay12, i32 0) #4
  call void @dslash_fn_special(i32 1232, i32 1232, i32 %l_parity.1.ph, %struct.msg_tag** %arraydecay, i32 0) #4
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then64
  %special_started.3 = phi i32 [ 1, %if.then64 ], [ %special_started.2, %if.else ]
  store double 0.000000e+00, double* %pkp, align 8, !tbaa !3
  %18 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %19 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond132 = select i1 %cmp29, i32 %18, i32 %19
  %cond138 = select i1 %cmp31, i32 %18, i32 0
  %cmp142325 = icmp slt i32 %cond138, %cond132
  br i1 %cmp142325, label %for.body144.lr.ph, label %for.end156

for.body144.lr.ph:                                ; preds = %if.end125
  %20 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom139 = sext i32 %cond138 to i64
  %arrayidx140 = getelementptr inbounds %struct.site* %20, i64 %idxprom139
  br label %for.body144

for.body144:                                      ; preds = %for.body144, %for.body144.lr.ph
  %i.1327 = phi i32 [ %cond138, %for.body144.lr.ph ], [ %inc154, %for.body144 ]
  %s.1326 = phi %struct.site* [ %arrayidx140, %for.body144.lr.ph ], [ %incdec.ptr155, %for.body144 ]
  %ttt145 = getelementptr inbounds %struct.site* %s.1326, i64 0, i32 15
  %cg_p146 = getelementptr inbounds %struct.site* %s.1326, i64 0, i32 13
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %ttt145, %struct.su3_vector* %cg_p146, double %sub147, %struct.su3_vector* %ttt145) #4
  %call151 = call double @su3_rdot(%struct.su3_vector* %cg_p146, %struct.su3_vector* %ttt145) #4
  %21 = load double* %pkp, align 8, !tbaa !3
  %add152 = fadd double %call151, %21
  store double %add152, double* %pkp, align 8, !tbaa !3
  %inc154 = add nsw i32 %i.1327, 1
  %incdec.ptr155 = getelementptr inbounds %struct.site* %s.1326, i64 1
  %exitcond344 = icmp eq i32 %inc154, %cond132
  br i1 %exitcond344, label %for.end156, label %for.body144

for.end156:                                       ; preds = %for.body144, %if.end125
  call void @g_doublesum(double* %pkp) #4
  %inc157 = add nsw i32 %iteration.1, 1
  %22 = load i32* @total_iters, align 4, !tbaa !0
  %inc158 = add nsw i32 %22, 1
  store i32 %inc158, i32* @total_iters, align 4, !tbaa !0
  %23 = load double* %rsq, align 8, !tbaa !3
  %sub159 = fsub double -0.000000e+00, %23
  %24 = load double* %pkp, align 8, !tbaa !3
  %div = fdiv double %sub159, %24
  store double 0.000000e+00, double* %rsq, align 8, !tbaa !3
  %25 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %26 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond166 = select i1 %cmp29, i32 %25, i32 %26
  %cond172 = select i1 %cmp31, i32 %25, i32 0
  %cmp176328 = icmp slt i32 %cond172, %cond166
  br i1 %cmp176328, label %for.body178.lr.ph, label %for.end193

for.body178.lr.ph:                                ; preds = %for.end156
  %27 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom173 = sext i32 %cond172 to i64
  %arrayidx174 = getelementptr inbounds %struct.site* %27, i64 %idxprom173
  br label %for.body178

for.body178:                                      ; preds = %for.body178, %for.body178.lr.ph
  %i.2330 = phi i32 [ %cond172, %for.body178.lr.ph ], [ %inc191, %for.body178 ]
  %s.2329 = phi %struct.site* [ %arrayidx174, %for.body178.lr.ph ], [ %incdec.ptr192, %for.body178 ]
  %28 = bitcast %struct.site* %s.2329 to i8*
  %add.ptr180 = getelementptr inbounds i8* %28, i64 %idx.ext179
  %29 = bitcast i8* %add.ptr180 to %struct.su3_vector*
  %cg_p181 = getelementptr inbounds %struct.site* %s.2329, i64 0, i32 13
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %29, %struct.su3_vector* %cg_p181, double %div, %struct.su3_vector* %29) #4
  %resid184 = getelementptr inbounds %struct.site* %s.2329, i64 0, i32 12
  %ttt185 = getelementptr inbounds %struct.site* %s.2329, i64 0, i32 15
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %resid184, %struct.su3_vector* %ttt185, double %div, %struct.su3_vector* %resid184) #4
  %call188 = call double @magsq_su3vec(%struct.su3_vector* %resid184) #4
  %30 = load double* %rsq, align 8, !tbaa !3
  %add189 = fadd double %call188, %30
  store double %add189, double* %rsq, align 8, !tbaa !3
  %inc191 = add nsw i32 %i.2330, 1
  %incdec.ptr192 = getelementptr inbounds %struct.site* %s.2329, i64 1
  %exitcond345 = icmp eq i32 %inc191, %cond166
  br i1 %exitcond345, label %for.end193, label %for.body178

for.end193:                                       ; preds = %for.body178, %for.end156
  call void @g_doublesum(double* %rsq) #4
  %31 = load double* %rsq, align 8, !tbaa !3
  %cmp194 = fcmp ugt double %31, %mul53
  br i1 %cmp194, label %if.end207, label %if.then196

if.then196:                                       ; preds = %for.end193
  %cmp197 = icmp eq i32 %parity.addr.0.ph, 3
  br i1 %cmp197, label %start.outer, label %if.end200

if.end200:                                        ; preds = %if.then196
  store double %31, double* %final_rsq_ptr, align 8, !tbaa !3
  %cmp201 = icmp eq i32 %special_started.3, 1
  br i1 %cmp201, label %if.then203, label %cleanup

if.then203:                                       ; preds = %if.end200
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay, %struct.msg_tag** %arraydecay12) #4
  br label %cleanup

if.end207:                                        ; preds = %for.end193
  %div208 = fdiv double %31, %17
  call void @scalar_mult_add_latvec(i32 1088, i32 1136, double %div208, i32 1136, i32 %l_parity.1.ph) #5
  %rem = srem i32 %inc157, %niter
  %cmp230 = icmp eq i32 %rem, 0
  br i1 %cmp230, label %do.end, label %if.end207.do.body_crit_edge

if.end207.do.body_crit_edge:                      ; preds = %if.end207
  %.pre = load double* %rsq, align 8, !tbaa !3
  br label %do.body

do.end:                                           ; preds = %if.end207
  %cmp233 = icmp slt i32 %inc157, %mul232
  br i1 %cmp233, label %start, label %if.end236

if.end236:                                        ; preds = %do.end
  %cmp237 = icmp eq i32 %parity.addr.0.ph, 3
  br i1 %cmp237, label %start.outer, label %if.end240

if.end240:                                        ; preds = %if.end236
  %32 = load double* %rsq, align 8, !tbaa !3
  store double %32, double* %final_rsq_ptr, align 8, !tbaa !3
  %cmp241 = icmp eq i32 %special_started.3, 1
  br i1 %cmp241, label %if.then243, label %if.end246

if.then243:                                       ; preds = %if.end240
  call void @cleanup_gathers(%struct.msg_tag** %arraydecay, %struct.msg_tag** %arraydecay12) #4
  br label %if.end246

if.end246:                                        ; preds = %if.then243, %if.end240
  %33 = load i32* @this_node, align 4, !tbaa !0
  %cmp247 = icmp eq i32 %33, 0
  br i1 %cmp247, label %if.then249, label %if.end251

if.then249:                                       ; preds = %if.end246
  %34 = load double* %rsq, align 8, !tbaa !3
  %call250 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i32 %inc157, double %34, double %mul53) #4
  br label %if.end251

if.end251:                                        ; preds = %if.then249, %if.end246
  %35 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call252 = call i32 @fflush(%struct._IO_FILE* %35) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.then203, %if.end251, %if.end60
  %retval.0 = phi i32 [ %inc51, %if.end60 ], [ %inc157, %if.end251 ], [ %inc157, %if.then203 ], [ %inc157, %if.end200 ]
  call void @llvm.lifetime.end(i64 128, i8* %1) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @load_longlinks(...) #2

; Function Attrs: optsize
declare void @load_fatlinks(...) #2

; Function Attrs: optsize
declare void @cleanup_gathers(%struct.msg_tag**, %struct.msg_tag**) #2

; Function Attrs: optsize
declare void @dslash_fn(i32, i32, i32) #2

; Function Attrs: optsize
declare void @scalar_mult_add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, double, %struct.su3_vector*) #2

; Function Attrs: optsize
declare void @add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare double @magsq_su3vec(%struct.su3_vector*) #2

; Function Attrs: optsize
declare void @g_doublesum(double*) #2

; Function Attrs: optsize
declare void @dslash_fn_special(i32, i32, i32, %struct.msg_tag**, i32) #2

; Function Attrs: optsize
declare double @su3_rdot(%struct.su3_vector*, %struct.su3_vector*) #2

; Function Attrs: nounwind optsize uwtable
define void @scalar_mult_add_latvec(i32 %src1, i32 %src2, double %scalar, i32 %dest, i32 %parity) #0 {
entry:
  %cmp = icmp eq i32 %parity, 2
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %1 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp, i32 %0, i32 %1
  %cmp1 = icmp eq i32 %parity, 1
  %cond5 = select i1 %cmp1, i32 %0, i32 0
  %cmp617 = icmp slt i32 %cond5, %cond
  br i1 %cmp617, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom = sext i32 %cond5 to i64
  %arrayidx = getelementptr inbounds %struct.site* %2, i64 %idxprom
  %idx.ext = sext i32 %src1 to i64
  %idx.ext7 = sext i32 %src2 to i64
  %idx.ext9 = sext i32 %dest to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %i.019 = phi i32 [ %cond5, %for.body.lr.ph ], [ %inc, %for.body ]
  %s.018 = phi %struct.site* [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %3 = bitcast %struct.site* %s.018 to i8*
  %add.ptr = getelementptr inbounds i8* %3, i64 %idx.ext
  %4 = bitcast i8* %add.ptr to %struct.su3_vector*
  %add.ptr8 = getelementptr inbounds i8* %3, i64 %idx.ext7
  %5 = bitcast i8* %add.ptr8 to %struct.su3_vector*
  %add.ptr10 = getelementptr inbounds i8* %3, i64 %idx.ext9
  %6 = bitcast i8* %add.ptr10 to %struct.su3_vector*
  tail call void @scalar_mult_add_su3_vector(%struct.su3_vector* %4, %struct.su3_vector* %5, double %scalar, %struct.su3_vector* %6) #4
  %inc = add nsw i32 %i.019, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.018, i64 1
  %exitcond = icmp eq i32 %inc, %cond
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_latvec(i32 %v, i32 %parity) #0 {
entry:
  switch i32 %parity, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb36
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp90 = icmp sgt i32 %0, 0
  br i1 %cmp90, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %1 = load %struct.site** @lattice, align 8, !tbaa !4
  %idx.ext = sext i32 %v to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc7
  %s.092 = phi %struct.site* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc7 ]
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc7 ]
  %2 = bitcast %struct.site* %s.092 to i8*
  %add.ptr = getelementptr inbounds i8* %2, i64 %idx.ext
  %c = bitcast i8* %add.ptr to [3 x %struct.complex]*
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %real = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %indvars.iv, i32 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  %3 = bitcast double* %real to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  br i1 %exitcond, label %for.inc7, label %for.body3

for.inc7:                                         ; preds = %for.body3
  %inc8 = add nsw i32 %i.091, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.092, i64 1
  %cmp = icmp slt i32 %inc8, %0
  br i1 %cmp, label %for.body, label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %4 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %5 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp1495 = icmp slt i32 %4, %5
  br i1 %cmp1495, label %for.body15.lr.ph, label %sw.epilog

for.body15.lr.ph:                                 ; preds = %sw.bb10
  %6 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds %struct.site* %6, i64 %idxprom11
  %idx.ext16 = sext i32 %v to i64
  br label %for.body15

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc32
  %s.197 = phi %struct.site* [ %arrayidx12, %for.body15.lr.ph ], [ %incdec.ptr34, %for.inc32 ]
  %i.196 = phi i32 [ %4, %for.body15.lr.ph ], [ %inc33, %for.inc32 ]
  %7 = bitcast %struct.site* %s.197 to i8*
  %add.ptr17 = getelementptr inbounds i8* %7, i64 %idx.ext16
  %c22 = bitcast i8* %add.ptr17 to [3 x %struct.complex]*
  br label %for.body20

for.body20:                                       ; preds = %for.body20, %for.body15
  %indvars.iv103 = phi i64 [ 0, %for.body15 ], [ %indvars.iv.next104, %for.body20 ]
  %real28 = getelementptr inbounds [3 x %struct.complex]* %c22, i64 0, i64 %indvars.iv103, i32 0
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %lftr.wideiv105 = trunc i64 %indvars.iv.next104 to i32
  %exitcond106 = icmp eq i32 %lftr.wideiv105, 3
  %8 = bitcast double* %real28 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false)
  br i1 %exitcond106, label %for.inc32, label %for.body20

for.inc32:                                        ; preds = %for.body20
  %inc33 = add nsw i32 %i.196, 1
  %incdec.ptr34 = getelementptr inbounds %struct.site* %s.197, i64 1
  %cmp14 = icmp slt i32 %inc33, %5
  br i1 %cmp14, label %for.body15, label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %9 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp38100 = icmp sgt i32 %9, 0
  br i1 %cmp38100, label %for.body39.lr.ph, label %sw.epilog

for.body39.lr.ph:                                 ; preds = %sw.bb36
  %10 = load %struct.site** @lattice, align 8, !tbaa !4
  %idx.ext40 = sext i32 %v to i64
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc56
  %s.2102 = phi %struct.site* [ %10, %for.body39.lr.ph ], [ %incdec.ptr58, %for.inc56 ]
  %i.2101 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc57, %for.inc56 ]
  %11 = bitcast %struct.site* %s.2102 to i8*
  %add.ptr41 = getelementptr inbounds i8* %11, i64 %idx.ext40
  %c46 = bitcast i8* %add.ptr41 to [3 x %struct.complex]*
  br label %for.body44

for.body44:                                       ; preds = %for.body44, %for.body39
  %indvars.iv107 = phi i64 [ 0, %for.body39 ], [ %indvars.iv.next108, %for.body44 ]
  %real52 = getelementptr inbounds [3 x %struct.complex]* %c46, i64 0, i64 %indvars.iv107, i32 0
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %lftr.wideiv109 = trunc i64 %indvars.iv.next108 to i32
  %exitcond110 = icmp eq i32 %lftr.wideiv109, 3
  %12 = bitcast double* %real52 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 8, i1 false)
  br i1 %exitcond110, label %for.inc56, label %for.body44

for.inc56:                                        ; preds = %for.body44
  %inc57 = add nsw i32 %i.2101, 1
  %incdec.ptr58 = getelementptr inbounds %struct.site* %s.2102, i64 1
  %cmp38 = icmp slt i32 %inc57, %9
  br i1 %cmp38, label %for.body39, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %for.inc56, %sw.bb10, %for.inc32, %sw.bb, %for.inc7, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @copy_latvec(i32 %src, i32 %dest, i32 %parity) #0 {
entry:
  switch i32 %parity, label %sw.epilog [
    i32 2, label %for.cond.preheader
    i32 1, label %sw.bb3
    i32 3, label %for.cond20.preheader
  ]

for.cond20.preheader:                             ; preds = %entry
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp2164 = icmp sgt i32 %0, 0
  br i1 %cmp2164, label %for.body22.lr.ph, label %sw.epilog

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %idx.ext25 = sext i32 %src to i64
  %idx.ext27 = sext i32 %dest to i64
  br label %for.body22

for.cond.preheader:                               ; preds = %entry
  %1 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp58 = icmp sgt i32 %1, 0
  br i1 %cmp58, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext = sext i32 %src to i64
  %idx.ext1 = sext i32 %dest to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load %struct.site** @lattice, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.site* %2, i64 %indvars.iv
  %3 = bitcast %struct.site* %arrayidx to i8*
  %add.ptr = getelementptr inbounds i8* %3, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8* %3, i64 %idx.ext1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr2, i8* %add.ptr, i64 48, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %4
  br i1 %cmp, label %for.body, label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %7 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp761 = icmp slt i32 %6, %7
  br i1 %cmp761, label %for.body8.lr.ph, label %sw.epilog

for.body8.lr.ph:                                  ; preds = %sw.bb3
  %idx.ext11 = sext i32 %src to i64
  %idx.ext13 = sext i32 %dest to i64
  %8 = sext i32 %6 to i64
  br label %for.body8

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %indvars.iv66 = phi i64 [ %8, %for.body8.lr.ph ], [ %indvars.iv.next67, %for.body8 ]
  %9 = load %struct.site** @lattice, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds %struct.site* %9, i64 %indvars.iv66
  %10 = bitcast %struct.site* %arrayidx10 to i8*
  %add.ptr12 = getelementptr inbounds i8* %10, i64 %idx.ext11
  %add.ptr14 = getelementptr inbounds i8* %10, i64 %idx.ext13
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr14, i8* %add.ptr12, i64 48, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next67 = add i64 %indvars.iv66, 1
  %11 = load i32* @sites_on_node, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv.next67 to i32
  %cmp7 = icmp slt i32 %12, %11
  br i1 %cmp7, label %for.body8, label %sw.epilog

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv68 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next69, %for.body22 ]
  %13 = load %struct.site** @lattice, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds %struct.site* %13, i64 %indvars.iv68
  %14 = bitcast %struct.site* %arrayidx24 to i8*
  %add.ptr26 = getelementptr inbounds i8* %14, i64 %idx.ext25
  %add.ptr28 = getelementptr inbounds i8* %14, i64 %idx.ext27
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr28, i8* %add.ptr26, i64 48, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %15 = load i32* @sites_on_node, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv.next69 to i32
  %cmp21 = icmp slt i32 %16, %15
  br i1 %cmp21, label %for.body22, label %sw.epilog

sw.epilog:                                        ; preds = %for.cond20.preheader, %for.body22, %sw.bb3, %for.body8, %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @scalar2_mult_add_su3_vector(%struct.su3_vector* nocapture %a, double %s1, %struct.su3_vector* nocapture %b, double %s2, %struct.su3_vector* nocapture %c) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 0
  %0 = load double* %real, align 8, !tbaa !3
  %mul = fmul double %0, %s1
  %real5 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0
  %1 = load double* %real5, align 8, !tbaa !3
  %mul6 = fmul double %1, %s2
  %add = fadd double %mul, %mul6
  %real10 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv, i32 0
  store double %add, double* %real10, align 8, !tbaa !3
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 1
  %2 = load double* %imag, align 8, !tbaa !3
  %mul14 = fmul double %2, %s1
  %imag18 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1
  %3 = load double* %imag18, align 8, !tbaa !3
  %mul19 = fmul double %3, %s2
  %add20 = fadd double %mul14, %mul19
  %imag24 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv, i32 1
  store double %add20, double* %imag24, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @scalar2_mult_add_latvec(i32 %src1, double %scalar1, i32 %src2, double %scalar2, i32 %dest, i32 %parity) #0 {
entry:
  %cmp = icmp eq i32 %parity, 2
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %1 = load i32* @sites_on_node, align 4, !tbaa !0
  %cond = select i1 %cmp, i32 %0, i32 %1
  %cmp1 = icmp eq i32 %parity, 1
  %cond5 = select i1 %cmp1, i32 %0, i32 0
  %cmp617 = icmp slt i32 %cond5, %cond
  br i1 %cmp617, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom = sext i32 %cond5 to i64
  %arrayidx = getelementptr inbounds %struct.site* %2, i64 %idxprom
  %idx.ext = sext i32 %src1 to i64
  %idx.ext7 = sext i32 %src2 to i64
  %idx.ext9 = sext i32 %dest to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %i.019 = phi i32 [ %cond5, %for.body.lr.ph ], [ %inc, %for.body ]
  %s.018 = phi %struct.site* [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %3 = bitcast %struct.site* %s.018 to i8*
  %add.ptr = getelementptr inbounds i8* %3, i64 %idx.ext
  %4 = bitcast i8* %add.ptr to %struct.su3_vector*
  %add.ptr8 = getelementptr inbounds i8* %3, i64 %idx.ext7
  %5 = bitcast i8* %add.ptr8 to %struct.su3_vector*
  %add.ptr10 = getelementptr inbounds i8* %3, i64 %idx.ext9
  %6 = bitcast i8* %add.ptr10 to %struct.su3_vector*
  tail call void @scalar2_mult_add_su3_vector(%struct.su3_vector* %4, double %scalar1, %struct.su3_vector* %5, double %scalar2, %struct.su3_vector* %6) #5
  %inc = add nsw i32 %i.019, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.018, i64 1
  %exitcond = icmp eq i32 %inc, %cond
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @scalar_mult_latvec(i32 %src, double %scalar, i32 %dest, i32 %parity) #0 {
entry:
  switch i32 %parity, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp51 = icmp sgt i32 %0, 0
  br i1 %cmp51, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %1 = load %struct.site** @lattice, align 8, !tbaa !4
  %idx.ext = sext i32 %src to i64
  %idx.ext1 = sext i32 %dest to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %s.053 = phi %struct.site* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %2 = bitcast %struct.site* %s.053 to i8*
  %add.ptr = getelementptr inbounds i8* %2, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.su3_vector*
  %add.ptr2 = getelementptr inbounds i8* %2, i64 %idx.ext1
  %4 = bitcast i8* %add.ptr2 to %struct.su3_vector*
  tail call void @scalar_mult_su3_vector(%struct.su3_vector* %3, double %scalar, %struct.su3_vector* %4) #4
  %inc = add nsw i32 %i.052, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.053, i64 1
  %5 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body, label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %7 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp555 = icmp slt i32 %6, %7
  br i1 %cmp555, label %for.body6.lr.ph, label %sw.epilog

for.body6.lr.ph:                                  ; preds = %sw.bb3
  %8 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.site* %8, i64 %idxprom
  %idx.ext7 = sext i32 %src to i64
  %idx.ext9 = sext i32 %dest to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %s.157 = phi %struct.site* [ %arrayidx, %for.body6.lr.ph ], [ %incdec.ptr13, %for.body6 ]
  %i.156 = phi i32 [ %6, %for.body6.lr.ph ], [ %inc12, %for.body6 ]
  %9 = bitcast %struct.site* %s.157 to i8*
  %add.ptr8 = getelementptr inbounds i8* %9, i64 %idx.ext7
  %10 = bitcast i8* %add.ptr8 to %struct.su3_vector*
  %add.ptr10 = getelementptr inbounds i8* %9, i64 %idx.ext9
  %11 = bitcast i8* %add.ptr10 to %struct.su3_vector*
  tail call void @scalar_mult_su3_vector(%struct.su3_vector* %10, double %scalar, %struct.su3_vector* %11) #4
  %inc12 = add nsw i32 %i.156, 1
  %incdec.ptr13 = getelementptr inbounds %struct.site* %s.157, i64 1
  %12 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %inc12, %12
  br i1 %cmp5, label %for.body6, label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %13 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp1759 = icmp sgt i32 %13, 0
  br i1 %cmp1759, label %for.body18.lr.ph, label %sw.epilog

for.body18.lr.ph:                                 ; preds = %sw.bb15
  %14 = load %struct.site** @lattice, align 8, !tbaa !4
  %idx.ext19 = sext i32 %src to i64
  %idx.ext21 = sext i32 %dest to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.body18
  %s.261 = phi %struct.site* [ %14, %for.body18.lr.ph ], [ %incdec.ptr25, %for.body18 ]
  %i.260 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc24, %for.body18 ]
  %15 = bitcast %struct.site* %s.261 to i8*
  %add.ptr20 = getelementptr inbounds i8* %15, i64 %idx.ext19
  %16 = bitcast i8* %add.ptr20 to %struct.su3_vector*
  %add.ptr22 = getelementptr inbounds i8* %15, i64 %idx.ext21
  %17 = bitcast i8* %add.ptr22 to %struct.su3_vector*
  tail call void @scalar_mult_su3_vector(%struct.su3_vector* %16, double %scalar, %struct.su3_vector* %17) #4
  %inc24 = add nsw i32 %i.260, 1
  %incdec.ptr25 = getelementptr inbounds %struct.site* %s.261, i64 1
  %18 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp17 = icmp slt i32 %inc24, %18
  br i1 %cmp17, label %for.body18, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %for.body18, %sw.bb3, %for.body6, %sw.bb, %for.body, %entry
  ret void
}

; Function Attrs: optsize
declare void @scalar_mult_su3_vector(%struct.su3_vector*, double, %struct.su3_vector*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{i64 0, i64 48, metadata !1}
