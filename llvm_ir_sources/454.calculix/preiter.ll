; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"error condition (0=good, 1=bad) = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"# of iterations = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @preiter(double* nocapture %ad, double** nocapture %aup, double* %b, i32** nocapture %icolp, i32** nocapture %irowp, i32* %neq, i32* nocapture %nzs, i32* nocapture %isolver, i32* nocapture %iperturb) #0 {
entry:
  %ad229 = bitcast double* %ad to i8*
  %niter = alloca i32, align 4
  %ndim = alloca i32, align 4
  %eps = alloca double, align 8
  call void @llvm.dbg.value(metadata !{double* %ad}, i64 0, metadata !15), !dbg !38
  call void @llvm.dbg.value(metadata !{double** %aup}, i64 0, metadata !16), !dbg !38
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !17), !dbg !38
  call void @llvm.dbg.value(metadata !{i32** %icolp}, i64 0, metadata !18), !dbg !38
  call void @llvm.dbg.value(metadata !{i32** %irowp}, i64 0, metadata !19), !dbg !38
  call void @llvm.dbg.value(metadata !{i32* %neq}, i64 0, metadata !20), !dbg !39
  call void @llvm.dbg.value(metadata !{i32* %nzs}, i64 0, metadata !21), !dbg !39
  call void @llvm.dbg.value(metadata !{i32* %isolver}, i64 0, metadata !22), !dbg !39
  call void @llvm.dbg.value(metadata !{i32* %iperturb}, i64 0, metadata !23), !dbg !39
  call void @llvm.dbg.declare(metadata !{i32* %niter}, metadata !25), !dbg !40
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !25), !dbg !42
  store i32 5000000, i32* %niter, align 4, !dbg !42, !tbaa !43
  call void @llvm.dbg.declare(metadata !{i32* %ndim}, metadata !26), !dbg !40
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !31), !dbg !42
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !32), !dbg !42
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !33), !dbg !42
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !34), !dbg !42
  call void @llvm.dbg.declare(metadata !{double* %eps}, metadata !35), !dbg !47
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !35), !dbg !47
  store double 1.000000e-04, double* %eps, align 8, !dbg !47, !tbaa !49
  call void @llvm.dbg.value(metadata !50, i64 0, metadata !36), !dbg !47
  call void @llvm.dbg.value(metadata !50, i64 0, metadata !37), !dbg !47
  %0 = load double** %aup, align 8, !dbg !51, !tbaa !52
  call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !37), !dbg !51
  %1 = load i32** %irowp, align 8, !dbg !53, !tbaa !52
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !32), !dbg !53
  %2 = load i32** %icolp, align 8, !dbg !54, !tbaa !52
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !31), !dbg !54
  %3 = load i32* %iperturb, align 4, !dbg !55, !tbaa !43
  %cmp = icmp sgt i32 %3, 1, !dbg !55
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !55

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32* %neq, align 4, !dbg !56, !tbaa !43
  br label %if.end, !dbg !55

if.then:                                          ; preds = %entry
  %4 = load i32* %nzs, align 4, !dbg !57, !tbaa !43
  %conv = sext i32 %4 to i64, !dbg !57
  %call = call i8* @u_calloc(i64 %conv, i64 4) #5, !dbg !57
  %5 = bitcast i8* %call to i32*, !dbg !57
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !33), !dbg !57
  %6 = load i32* %neq, align 4, !dbg !59, !tbaa !43
  %conv1 = sext i32 %6 to i64, !dbg !59
  %call2 = call i8* @u_calloc(i64 %conv1, i64 4) #5, !dbg !59
  %7 = bitcast i8* %call2 to i32*, !dbg !59
  call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !34), !dbg !59
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !60
  %8 = load i32* %nzs, align 4, !dbg !60, !tbaa !43
  %cmp3218 = icmp sgt i32 %8, 0, !dbg !60
  br i1 %cmp3218, label %for.body, label %for.cond7.preheader, !dbg !60

for.cond7.preheader:                              ; preds = %for.body, %if.then
  %9 = load i32* %neq, align 4, !dbg !62, !tbaa !43
  %cmp8216 = icmp sgt i32 %9, 0, !dbg !62
  br i1 %cmp8216, label %for.body10, label %if.end, !dbg !62

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv236, !dbg !64
  %10 = load i32* %arrayidx, align 4, !dbg !64, !tbaa !43
  %arrayidx6 = getelementptr inbounds i32* %5, i64 %indvars.iv236, !dbg !64
  store i32 %10, i32* %arrayidx6, align 4, !dbg !64, !tbaa !43
  %indvars.iv.next237 = add i64 %indvars.iv236, 1, !dbg !60
  %11 = load i32* %nzs, align 4, !dbg !60, !tbaa !43
  %12 = trunc i64 %indvars.iv.next237 to i32, !dbg !60
  %cmp3 = icmp slt i32 %12, %11, !dbg !60
  br i1 %cmp3, label %for.body, label %for.cond7.preheader, !dbg !60

for.body10:                                       ; preds = %for.cond7.preheader, %for.body10
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.body10 ], [ 0, %for.cond7.preheader ]
  %arrayidx12 = getelementptr inbounds i32* %2, i64 %indvars.iv234, !dbg !66
  %13 = load i32* %arrayidx12, align 4, !dbg !66, !tbaa !43
  %arrayidx14 = getelementptr inbounds i32* %7, i64 %indvars.iv234, !dbg !66
  store i32 %13, i32* %arrayidx14, align 4, !dbg !66, !tbaa !43
  %indvars.iv.next235 = add i64 %indvars.iv234, 1, !dbg !62
  %14 = load i32* %neq, align 4, !dbg !62, !tbaa !43
  %15 = trunc i64 %indvars.iv.next235 to i32, !dbg !62
  %cmp8 = icmp slt i32 %15, %14, !dbg !62
  br i1 %cmp8, label %for.body10, label %if.end, !dbg !62

if.end:                                           ; preds = %for.cond7.preheader, %for.body10, %entry.if.end_crit_edge
  %16 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %9, %for.cond7.preheader ], [ %14, %for.body10 ]
  %irow_save.0 = phi i32* [ null, %entry.if.end_crit_edge ], [ %5, %for.cond7.preheader ], [ %5, %for.body10 ]
  %icol_save.0 = phi i32* [ null, %entry.if.end_crit_edge ], [ %7, %for.cond7.preheader ], [ %7, %for.body10 ]
  %17 = load i32* %isolver, align 4, !dbg !68, !tbaa !43
  %cmp18 = icmp eq i32 %17, 2, !dbg !68
  %. = select i1 %cmp18, i32 0, i32 3, !dbg !69
  %18 = load i32* %nzs, align 4, !dbg !56, !tbaa !43
  %add = add nsw i32 %18, %16, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !26), !dbg !56
  store i32 %add, i32* %ndim, align 4, !dbg !56, !tbaa !43
  %19 = bitcast double* %0 to i8*, !dbg !71
  %conv22 = sext i32 %add to i64, !dbg !71
  %mul = shl nsw i64 %conv22, 3, !dbg !71
  %call23 = call i8* @realloc(i8* %19, i64 %mul) #5, !dbg !71
  %20 = bitcast i8* %call23 to double*, !dbg !71
  call void @llvm.dbg.value(metadata !{double* %20}, i64 0, metadata !37), !dbg !71
  %21 = bitcast i32* %1 to i8*, !dbg !72
  call void @llvm.dbg.value(metadata !{i32* %ndim}, i64 0, metadata !26), !dbg !72
  %22 = load i32* %ndim, align 4, !dbg !72, !tbaa !43
  %conv24 = sext i32 %22 to i64, !dbg !72
  %mul25 = shl nsw i64 %conv24, 2, !dbg !72
  %call26 = call i8* @realloc(i8* %21, i64 %mul25) #5, !dbg !72
  %23 = bitcast i8* %call26 to i32*, !dbg !72
  call void @llvm.dbg.value(metadata !{i32* %23}, i64 0, metadata !32), !dbg !72
  %24 = bitcast i32* %2 to i8*, !dbg !73
  call void @llvm.dbg.value(metadata !{i32* %ndim}, i64 0, metadata !26), !dbg !73
  %25 = load i32* %ndim, align 4, !dbg !73, !tbaa !43
  %conv27 = sext i32 %25 to i64, !dbg !73
  %mul28 = shl nsw i64 %conv27, 2, !dbg !73
  %call29 = call i8* @realloc(i8* %24, i64 %mul28) #5, !dbg !73
  %26 = bitcast i8* %call29 to i32*, !dbg !73
  call void @llvm.dbg.value(metadata !{i32* %26}, i64 0, metadata !31), !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !29), !dbg !74
  %27 = load i32* %neq, align 4, !dbg !75, !tbaa !43
  %cmp31212 = icmp sgt i32 %27, 0, !dbg !75
  br i1 %cmp31212, label %for.cond34.preheader.lr.ph, label %for.end65, !dbg !75

for.cond34.preheader.lr.ph:                       ; preds = %if.end
  %28 = load i32* %nzs, align 4, !dbg !74, !tbaa !43
  %29 = sext i32 %27 to i64
  br label %for.cond34.preheader, !dbg !75

for.cond30.loopexit:                              ; preds = %for.body39, %for.cond34.preheader
  %k.1.lcssa = phi i32 [ %k.0214, %for.cond34.preheader ], [ %dec, %for.body39 ]
  %30 = trunc i64 %indvars.iv.next233 to i32, !dbg !75
  %cmp31 = icmp sgt i32 %30, 0, !dbg !75
  br i1 %cmp31, label %for.cond34.preheader, label %for.end48, !dbg !75

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.cond30.loopexit
  %indvars.iv232 = phi i64 [ %29, %for.cond34.preheader.lr.ph ], [ %indvars.iv.next233, %for.cond30.loopexit ]
  %i.2215.in = phi i32 [ %27, %for.cond34.preheader.lr.ph ], [ %i.2215, %for.cond30.loopexit ]
  %k.0214 = phi i32 [ %28, %for.cond34.preheader.lr.ph ], [ %k.1.lcssa, %for.cond30.loopexit ]
  %indvars.iv.next233 = add i64 %indvars.iv232, -1, !dbg !75
  %i.2215 = add nsw i32 %i.2215.in, -1, !dbg !75
  %arrayidx36 = getelementptr inbounds i32* %26, i64 %indvars.iv.next233, !dbg !77
  %31 = load i32* %arrayidx36, align 4, !dbg !77, !tbaa !43
  %cmp37208 = icmp sgt i32 %31, 0, !dbg !77
  br i1 %cmp37208, label %for.body39.lr.ph, label %for.cond30.loopexit, !dbg !77

for.body39.lr.ph:                                 ; preds = %for.cond34.preheader
  %32 = sext i32 %k.0214 to i64
  br label %for.body39, !dbg !77

for.body39:                                       ; preds = %for.body39.lr.ph, %for.body39
  %indvars.iv230 = phi i64 [ %32, %for.body39.lr.ph ], [ %indvars.iv.next231, %for.body39 ]
  %k.1210 = phi i32 [ %k.0214, %for.body39.lr.ph ], [ %dec, %for.body39 ]
  %j.0209 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc44, %for.body39 ]
  %indvars.iv.next231 = add i64 %indvars.iv230, -1, !dbg !77
  %dec = add nsw i32 %k.1210, -1, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !29), !dbg !80
  %arrayidx42 = getelementptr inbounds i32* %26, i64 %indvars.iv.next231, !dbg !80
  store i32 %i.2215.in, i32* %arrayidx42, align 4, !dbg !80, !tbaa !43
  %inc44 = add nsw i32 %j.0209, 1, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !28), !dbg !77
  %33 = load i32* %arrayidx36, align 4, !dbg !77, !tbaa !43
  %cmp37 = icmp slt i32 %inc44, %33, !dbg !77
  br i1 %cmp37, label %for.body39, label %for.cond30.loopexit, !dbg !77

for.end48:                                        ; preds = %for.cond30.loopexit
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !29), !dbg !82
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !28), !dbg !83
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !84
  br i1 %cmp31212, label %for.body52.lr.ph, label %for.end65, !dbg !84

for.body52.lr.ph:                                 ; preds = %for.end48
  %34 = load i32* %nzs, align 4, !dbg !82, !tbaa !43
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3, !dbg !84
  %scevgep = getelementptr i8* %call23, i64 %36
  %37 = icmp sgt i32 %27, 1
  %.op = add i32 %27, -1, !dbg !84
  %38 = zext i32 %.op to i64
  %.op238 = shl nuw nsw i64 %38, 3, !dbg !84
  %.op238.op = add i64 %.op238, 8, !dbg !84
  %39 = select i1 %37, i64 %.op238.op, i64 8, !dbg !84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep, i8* %ad229, i64 %39, i32 8, i1 false), !dbg !86
  br label %for.body52, !dbg !84

for.body52:                                       ; preds = %for.body52.lr.ph, %for.body52
  %indvars.iv227 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next228, %for.body52 ], !dbg !84
  %indvars.iv225 = phi i64 [ %35, %for.body52.lr.ph ], [ %indvars.iv.next226, %for.body52 ]
  %j.1206 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc57, %for.body52 ]
  %inc57 = add nsw i32 %j.1206, 1, !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !28), !dbg !88
  %arrayidx59 = getelementptr inbounds i32* %23, i64 %indvars.iv225, !dbg !88
  store i32 %inc57, i32* %arrayidx59, align 4, !dbg !88, !tbaa !43
  %arrayidx61 = getelementptr inbounds i32* %26, i64 %indvars.iv225, !dbg !89
  store i32 %inc57, i32* %arrayidx61, align 4, !dbg !89, !tbaa !43
  %indvars.iv.next226 = add i64 %indvars.iv225, 1, !dbg !84
  %indvars.iv.next228 = add i64 %indvars.iv227, 1, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !27), !dbg !84
  %40 = trunc i64 %indvars.iv.next228 to i32, !dbg !84
  %cmp50 = icmp slt i32 %40, %27, !dbg !84
  br i1 %cmp50, label %for.body52, label %for.end65, !dbg !84

for.end65:                                        ; preds = %if.end, %for.body52, %for.end48
  call void @rearrange_(double* %20, i32* %23, i32* %26, i32* %ndim, i32* %neq) #5, !dbg !90
  %41 = load i32* %neq, align 4, !dbg !91, !tbaa !43
  %conv66 = sext i32 %41 to i64, !dbg !91
  %mul67 = shl nsw i64 %conv66, 2, !dbg !91
  %call68 = call i8* @realloc(i8* %call26, i64 %mul67) #5, !dbg !91
  %42 = bitcast i8* %call68 to i32*, !dbg !91
  call void @llvm.dbg.value(metadata !{i32* %42}, i64 0, metadata !32), !dbg !91
  %43 = load i32* %neq, align 4, !dbg !92, !tbaa !43
  %conv69 = sext i32 %43 to i64, !dbg !92
  %call70 = call i8* @u_calloc(i64 %conv69, i64 8) #5, !dbg !92
  %44 = bitcast i8* %call70 to double*, !dbg !92
  call void @llvm.dbg.value(metadata !{double* %44}, i64 0, metadata !36), !dbg !92
  %45 = load i32* %neq, align 4, !dbg !93, !tbaa !43
  call void @llvm.dbg.value(metadata !{i32* %ndim}, i64 0, metadata !26), !dbg !93
  %46 = load i32* %ndim, align 4, !dbg !93, !tbaa !43
  %call71 = call i32 @cgsolver(double* %20, double* %44, double* %b, i32 %45, i32 %46, i32* %26, i32* %42, double* %eps, i32* %niter, i32 %.) #5, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %call71}, i64 0, metadata !30), !dbg !93
  %call72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %call71) #5, !dbg !94
  call void @llvm.dbg.value(metadata !{i32* %niter}, i64 0, metadata !25), !dbg !95
  %47 = load i32* %niter, align 4, !dbg !95, !tbaa !43
  %call73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i32 %47) #5, !dbg !95
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !96
  %48 = load i32* %neq, align 4, !dbg !96, !tbaa !43
  %cmp75202 = icmp sgt i32 %48, 0, !dbg !96
  br i1 %cmp75202, label %for.body77, label %for.end84, !dbg !96

for.body77:                                       ; preds = %for.end65, %for.body77
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.body77 ], [ 0, %for.end65 ]
  %arrayidx79 = getelementptr inbounds double* %44, i64 %indvars.iv222, !dbg !98
  %49 = load double* %arrayidx79, align 8, !dbg !98, !tbaa !49
  %arrayidx81 = getelementptr inbounds double* %b, i64 %indvars.iv222, !dbg !98
  store double %49, double* %arrayidx81, align 8, !dbg !98, !tbaa !49
  %indvars.iv.next223 = add i64 %indvars.iv222, 1, !dbg !96
  %50 = trunc i64 %indvars.iv.next223 to i32, !dbg !96
  %cmp75 = icmp slt i32 %50, %48, !dbg !96
  br i1 %cmp75, label %for.body77, label %for.end84, !dbg !96

for.end84:                                        ; preds = %for.body77, %for.end65
  call void @free(i8* %call70) #5, !dbg !100
  %51 = load i32* %iperturb, align 4, !dbg !101, !tbaa !43
  %cmp85 = icmp sgt i32 %51, 1, !dbg !101
  br i1 %cmp85, label %if.then87, label %if.end116, !dbg !101

if.then87:                                        ; preds = %for.end84
  %52 = load i32* %nzs, align 4, !dbg !102, !tbaa !43
  %conv88 = sext i32 %52 to i64, !dbg !102
  %mul89 = shl nsw i64 %conv88, 2, !dbg !102
  %call90 = call i8* @realloc(i8* %call68, i64 %mul89) #5, !dbg !102
  %53 = bitcast i8* %call90 to i32*, !dbg !102
  call void @llvm.dbg.value(metadata !{i32* %53}, i64 0, metadata !32), !dbg !102
  %54 = load i32* %neq, align 4, !dbg !104, !tbaa !43
  %conv91 = sext i32 %54 to i64, !dbg !104
  %mul92 = shl nsw i64 %conv91, 2, !dbg !104
  %call93 = call i8* @realloc(i8* %call29, i64 %mul92) #5, !dbg !104
  %55 = bitcast i8* %call93 to i32*, !dbg !104
  call void @llvm.dbg.value(metadata !{i32* %55}, i64 0, metadata !31), !dbg !104
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !105
  %56 = load i32* %nzs, align 4, !dbg !105, !tbaa !43
  %cmp95200 = icmp sgt i32 %56, 0, !dbg !105
  br i1 %cmp95200, label %for.body97, label %for.cond105.preheader, !dbg !105

for.cond105.preheader:                            ; preds = %for.body97, %if.then87
  %57 = load i32* %neq, align 4, !dbg !107, !tbaa !43
  %cmp106198 = icmp sgt i32 %57, 0, !dbg !107
  br i1 %cmp106198, label %for.body108, label %for.end115, !dbg !107

for.body97:                                       ; preds = %if.then87, %for.body97
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %for.body97 ], [ 0, %if.then87 ]
  %arrayidx99 = getelementptr inbounds i32* %irow_save.0, i64 %indvars.iv220, !dbg !109
  %58 = load i32* %arrayidx99, align 4, !dbg !109, !tbaa !43
  %arrayidx101 = getelementptr inbounds i32* %53, i64 %indvars.iv220, !dbg !109
  store i32 %58, i32* %arrayidx101, align 4, !dbg !109, !tbaa !43
  %indvars.iv.next221 = add i64 %indvars.iv220, 1, !dbg !105
  %59 = trunc i64 %indvars.iv.next221 to i32, !dbg !105
  %cmp95 = icmp slt i32 %59, %56, !dbg !105
  br i1 %cmp95, label %for.body97, label %for.cond105.preheader, !dbg !105

for.body108:                                      ; preds = %for.cond105.preheader, %for.body108
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body108 ], [ 0, %for.cond105.preheader ]
  %arrayidx110 = getelementptr inbounds i32* %icol_save.0, i64 %indvars.iv, !dbg !111
  %60 = load i32* %arrayidx110, align 4, !dbg !111, !tbaa !43
  %arrayidx112 = getelementptr inbounds i32* %55, i64 %indvars.iv, !dbg !111
  store i32 %60, i32* %arrayidx112, align 4, !dbg !111, !tbaa !43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !107
  %61 = trunc i64 %indvars.iv.next to i32, !dbg !107
  %cmp106 = icmp slt i32 %61, %57, !dbg !107
  br i1 %cmp106, label %for.body108, label %for.end115, !dbg !107

for.end115:                                       ; preds = %for.body108, %for.cond105.preheader
  %62 = bitcast i32* %irow_save.0 to i8*, !dbg !113
  call void @free(i8* %62) #5, !dbg !113
  %63 = bitcast i32* %icol_save.0 to i8*, !dbg !113
  call void @free(i8* %63) #5, !dbg !113
  br label %if.end116, !dbg !114

if.end116:                                        ; preds = %for.end115, %for.end84
  %icol.0 = phi i32* [ %55, %for.end115 ], [ %26, %for.end84 ]
  %irow.0 = phi i32* [ %53, %for.end115 ], [ %42, %for.end84 ]
  store double* %20, double** %aup, align 8, !dbg !115, !tbaa !52
  store i32* %irow.0, i32** %irowp, align 8, !dbg !116, !tbaa !52
  store i32* %icol.0, i32** %icolp, align 8, !dbg !117, !tbaa !52
  ret void, !dbg !118
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @rearrange_(double*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @cgsolver(double*, double*, double*, i32, i32, i32*, i32*, double*, i32*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"preiter", metadata !"preiter", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double**, double*, i32**, i32**, i32*, i32*, i32*, i32*)* @preiter, null, null, metadata !14, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [preiter]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !8, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!15 = metadata !{i32 786689, metadata !4, metadata !"ad", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ad] [line 23]
!16 = metadata !{i32 786689, metadata !4, metadata !"aup", metadata !5, i32 33554455, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aup] [line 23]
!17 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 50331671, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 23]
!18 = metadata !{i32 786689, metadata !4, metadata !"icolp", metadata !5, i32 67108887, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icolp] [line 23]
!19 = metadata !{i32 786689, metadata !4, metadata !"irowp", metadata !5, i32 83886103, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowp] [line 23]
!20 = metadata !{i32 786689, metadata !4, metadata !"neq", metadata !5, i32 100663320, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 24]
!21 = metadata !{i32 786689, metadata !4, metadata !"nzs", metadata !5, i32 117440536, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzs] [line 24]
!22 = metadata !{i32 786689, metadata !4, metadata !"isolver", metadata !5, i32 134217752, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isolver] [line 24]
!23 = metadata !{i32 786689, metadata !4, metadata !"iperturb", metadata !5, i32 150994968, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iperturb] [line 24]
!24 = metadata !{i32 786688, metadata !4, metadata !"precFlg", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [precFlg] [line 26]
!25 = metadata !{i32 786688, metadata !4, metadata !"niter", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [niter] [line 26]
!26 = metadata !{i32 786688, metadata !4, metadata !"ndim", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndim] [line 26]
!27 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 26]
!28 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 26]
!29 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 26]
!30 = metadata !{i32 786688, metadata !4, metadata !"ier", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ier] [line 26]
!31 = metadata !{i32 786688, metadata !4, metadata !"icol", metadata !5, i32 26, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icol] [line 26]
!32 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 26, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 26]
!33 = metadata !{i32 786688, metadata !4, metadata !"irow_save", metadata !5, i32 27, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow_save] [line 27]
!34 = metadata !{i32 786688, metadata !4, metadata !"icol_save", metadata !5, i32 27, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icol_save] [line 27]
!35 = metadata !{i32 786688, metadata !4, metadata !"eps", metadata !5, i32 28, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eps] [line 28]
!36 = metadata !{i32 786688, metadata !4, metadata !"u", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 28]
!37 = metadata !{i32 786688, metadata !4, metadata !"au", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [au] [line 28]
!38 = metadata !{i32 23, i32 0, metadata !4, null}
!39 = metadata !{i32 24, i32 0, metadata !4, null}
!40 = metadata !{i32 26, i32 0, metadata !4, null}
!41 = metadata !{i32 5000000}
!42 = metadata !{i32 27, i32 0, metadata !4, null}
!43 = metadata !{metadata !"int", metadata !44}
!44 = metadata !{metadata !"omnipotent char", metadata !45}
!45 = metadata !{metadata !"Simple C/C++ TBAA"}
!46 = metadata !{i32* null}
!47 = metadata !{i32 28, i32 0, metadata !4, null}
!48 = metadata !{double 1.000000e-04}
!49 = metadata !{metadata !"double", metadata !44}
!50 = metadata !{double* null}
!51 = metadata !{i32 36, i32 0, metadata !4, null}
!52 = metadata !{metadata !"any pointer", metadata !44}
!53 = metadata !{i32 37, i32 0, metadata !4, null}
!54 = metadata !{i32 38, i32 0, metadata !4, null}
!55 = metadata !{i32 40, i32 0, metadata !4, null}
!56 = metadata !{i32 54, i32 0, metadata !4, null}
!57 = metadata !{i32 41, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!59 = metadata !{i32 42, i32 0, metadata !58, null}
!60 = metadata !{i32 43, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!62 = metadata !{i32 46, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !58, i32 46, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!64 = metadata !{i32 44, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !61, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!66 = metadata !{i32 47, i32 0, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !63, i32 46, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!68 = metadata !{i32 51, i32 0, metadata !4, null}
!69 = metadata !{i32 51, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!71 = metadata !{i32 56, i32 0, metadata !4, null}
!72 = metadata !{i32 57, i32 0, metadata !4, null}
!73 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!74 = metadata !{i32 60, i32 0, metadata !4, null}
!75 = metadata !{i32 61, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!77 = metadata !{i32 62, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 62, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!79 = metadata !{i32 786443, metadata !1, metadata !76, i32 61, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!80 = metadata !{i32 63, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !78, i32 62, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!82 = metadata !{i32 67, i32 0, metadata !4, null}
!83 = metadata !{i32 68, i32 0, metadata !4, null}
!84 = metadata !{i32 69, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!86 = metadata !{i32 70, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 69, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!88 = metadata !{i32 71, i32 0, metadata !87, null}
!89 = metadata !{i32 72, i32 0, metadata !87, null}
!90 = metadata !{i32 78, i32 0, metadata !4, null}
!91 = metadata !{i32 80, i32 0, metadata !4, null}
!92 = metadata !{i32 82, i32 0, metadata !4, null}
!93 = metadata !{i32 84, i32 0, metadata !4, null}
!94 = metadata !{i32 86, i32 0, metadata !4, null}
!95 = metadata !{i32 87, i32 0, metadata !4, null}
!96 = metadata !{i32 89, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 89, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!98 = metadata !{i32 90, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !97, i32 89, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!100 = metadata !{i32 93, i32 0, metadata !4, null}
!101 = metadata !{i32 95, i32 0, metadata !4, null}
!102 = metadata !{i32 96, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !4, i32 95, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!104 = metadata !{i32 97, i32 0, metadata !103, null}
!105 = metadata !{i32 98, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !103, i32 98, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!107 = metadata !{i32 101, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !103, i32 101, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!109 = metadata !{i32 99, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !106, i32 98, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!111 = metadata !{i32 102, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !108, i32 101, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c]
!113 = metadata !{i32 104, i32 0, metadata !103, null}
!114 = metadata !{i32 105, i32 0, metadata !103, null}
!115 = metadata !{i32 107, i32 0, metadata !4, null}
!116 = metadata !{i32 108, i32 0, metadata !4, null}
!117 = metadata !{i32 109, i32 0, metadata !4, null}
!118 = metadata !{i32 111, i32 0, metadata !4, null}
