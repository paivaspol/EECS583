; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/preiter.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [38 x i8] c"error condition (0=good, 1=bad) = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"# of iterations = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @preiter(double* nocapture readonly %ad, double** nocapture %aup, double* %b, i32** nocapture %icolp, i32** nocapture %irowp, i32* %neq, i32* nocapture readonly %nzs, i32* nocapture readonly %isolver, i32* nocapture readonly %iperturb) #0 {
  %ad40 = bitcast double* %ad to i8*
  %niter = alloca i32, align 4
  %ndim = alloca i32, align 4
  %eps = alloca double, align 8
  tail call void @llvm.dbg.value(metadata double* %ad, i64 0, metadata !15, metadata !42), !dbg !43
  tail call void @llvm.dbg.value(metadata double** %aup, i64 0, metadata !16, metadata !42), !dbg !44
  tail call void @llvm.dbg.value(metadata double* %b, i64 0, metadata !17, metadata !42), !dbg !45
  tail call void @llvm.dbg.value(metadata i32** %icolp, i64 0, metadata !18, metadata !42), !dbg !46
  tail call void @llvm.dbg.value(metadata i32** %irowp, i64 0, metadata !19, metadata !42), !dbg !47
  tail call void @llvm.dbg.value(metadata i32* %neq, i64 0, metadata !20, metadata !42), !dbg !48
  tail call void @llvm.dbg.value(metadata i32* %nzs, i64 0, metadata !21, metadata !42), !dbg !49
  tail call void @llvm.dbg.value(metadata i32* %isolver, i64 0, metadata !22, metadata !42), !dbg !50
  tail call void @llvm.dbg.value(metadata i32* %iperturb, i64 0, metadata !23, metadata !42), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 5000000, i64 0, metadata !25, metadata !42), !dbg !52
  store i32 5000000, i32* %niter, align 4, !dbg !52, !tbaa !53
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !31, metadata !42), !dbg !57
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !32, metadata !42), !dbg !58
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !33, metadata !42), !dbg !59
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !34, metadata !42), !dbg !60
  tail call void @llvm.dbg.value(metadata double 1.000000e-04, i64 0, metadata !35, metadata !42), !dbg !61
  store double 1.000000e-04, double* %eps, align 8, !dbg !61, !tbaa !62
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !36, metadata !42), !dbg !64
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !37, metadata !42), !dbg !65
  %1 = bitcast double** %aup to i8**, !dbg !66
  %2 = load i8** %1, align 8, !dbg !66, !tbaa !67
  %3 = load i32** %irowp, align 8, !dbg !69, !tbaa !67
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !32, metadata !42), !dbg !58
  %4 = load i32** %icolp, align 8, !dbg !70, !tbaa !67
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !31, metadata !42), !dbg !57
  %5 = load i32* %iperturb, align 4, !dbg !71, !tbaa !53
  %6 = icmp sgt i32 %5, 1, !dbg !73
  br i1 %6, label %7, label %._crit_edge49, !dbg !74

._crit_edge49:                                    ; preds = %0
  %.pre = load i32* %neq, align 4, !dbg !75, !tbaa !53
  br label %.loopexit3, !dbg !74

; <label>:7                                       ; preds = %0
  %8 = load i32* %nzs, align 4, !dbg !76, !tbaa !53
  %9 = sext i32 %8 to i64, !dbg !76
  %10 = tail call i8* @u_calloc(i64 %9, i64 4) #5, !dbg !76
  %11 = bitcast i8* %10 to i32*, !dbg !76
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !33, metadata !42), !dbg !59
  %12 = load i32* %neq, align 4, !dbg !78, !tbaa !53
  %13 = sext i32 %12 to i64, !dbg !78
  %14 = tail call i8* @u_calloc(i64 %13, i64 4) #5, !dbg !78
  %15 = bitcast i8* %14 to i32*, !dbg !78
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !34, metadata !42), !dbg !60
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !42), !dbg !79
  %16 = load i32* %nzs, align 4, !dbg !80, !tbaa !53
  %17 = icmp sgt i32 %16, 0, !dbg !83
  br i1 %17, label %.lr.ph30, label %.preheader2, !dbg !84

.preheader2:                                      ; preds = %.lr.ph30, %7
  %18 = load i32* %neq, align 4, !dbg !85, !tbaa !53
  %19 = icmp sgt i32 %18, 0, !dbg !88
  br i1 %19, label %.lr.ph27, label %.loopexit3, !dbg !89

.lr.ph30:                                         ; preds = %7, %.lr.ph30
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph30 ], [ 0, %7 ]
  %20 = getelementptr inbounds i32* %3, i64 %indvars.iv47, !dbg !90
  %21 = load i32* %20, align 4, !dbg !90, !tbaa !53
  %22 = getelementptr inbounds i32* %11, i64 %indvars.iv47, !dbg !92
  store i32 %21, i32* %22, align 4, !dbg !93, !tbaa !53
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !84
  %23 = load i32* %nzs, align 4, !dbg !80, !tbaa !53
  %24 = sext i32 %23 to i64, !dbg !83
  %25 = icmp slt i64 %indvars.iv.next48, %24, !dbg !83
  br i1 %25, label %.lr.ph30, label %.preheader2, !dbg !84

.lr.ph27:                                         ; preds = %.preheader2, %.lr.ph27
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph27 ], [ 0, %.preheader2 ]
  %26 = getelementptr inbounds i32* %4, i64 %indvars.iv45, !dbg !94
  %27 = load i32* %26, align 4, !dbg !94, !tbaa !53
  %28 = getelementptr inbounds i32* %15, i64 %indvars.iv45, !dbg !96
  store i32 %27, i32* %28, align 4, !dbg !97, !tbaa !53
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !89
  %29 = load i32* %neq, align 4, !dbg !85, !tbaa !53
  %30 = sext i32 %29 to i64, !dbg !88
  %31 = icmp slt i64 %indvars.iv.next46, %30, !dbg !88
  br i1 %31, label %.lr.ph27, label %.loopexit3, !dbg !89

.loopexit3:                                       ; preds = %.lr.ph27, %.preheader2, %._crit_edge49
  %32 = phi i32 [ %.pre, %._crit_edge49 ], [ %18, %.preheader2 ], [ %29, %.lr.ph27 ]
  %irow_save.0 = phi i32* [ null, %._crit_edge49 ], [ %11, %.preheader2 ], [ %11, %.lr.ph27 ]
  %icol_save.0 = phi i32* [ null, %._crit_edge49 ], [ %15, %.preheader2 ], [ %15, %.lr.ph27 ]
  %33 = load i32* %isolver, align 4, !dbg !98, !tbaa !53
  %34 = icmp eq i32 %33, 2, !dbg !100
  %. = select i1 %34, i32 0, i32 3, !dbg !101
  %35 = load i32* %nzs, align 4, !dbg !103, !tbaa !53
  %36 = add nsw i32 %35, %32, !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !26, metadata !42), !dbg !105
  store i32 %36, i32* %ndim, align 4, !dbg !106, !tbaa !53
  %37 = sext i32 %36 to i64, !dbg !107
  %38 = shl nsw i64 %37, 3, !dbg !107
  %39 = tail call i8* @realloc(i8* %2, i64 %38) #5, !dbg !107
  %40 = bitcast i8* %39 to double*, !dbg !107
  tail call void @llvm.dbg.value(metadata double* %40, i64 0, metadata !37, metadata !42), !dbg !65
  %41 = bitcast i32* %3 to i8*, !dbg !108
  tail call void @llvm.dbg.value(metadata i32* %ndim, i64 0, metadata !26, metadata !42), !dbg !105
  %42 = shl nsw i64 %37, 2, !dbg !108
  %43 = tail call i8* @realloc(i8* %41, i64 %42) #5, !dbg !108
  %44 = bitcast i8* %43 to i32*, !dbg !108
  tail call void @llvm.dbg.value(metadata i32* %44, i64 0, metadata !32, metadata !42), !dbg !58
  %45 = bitcast i32* %4 to i8*, !dbg !109
  tail call void @llvm.dbg.value(metadata i32* %ndim, i64 0, metadata !26, metadata !42), !dbg !105
  %46 = tail call i8* @realloc(i8* %45, i64 %42) #5, !dbg !109
  %47 = bitcast i8* %46 to i32*, !dbg !109
  tail call void @llvm.dbg.value(metadata i32* %47, i64 0, metadata !31, metadata !42), !dbg !57
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !29, metadata !42), !dbg !110
  %48 = load i32* %neq, align 4, !dbg !111, !tbaa !53
  %49 = icmp sgt i32 %48, 0, !dbg !113
  br i1 %49, label %.preheader1.lr.ph, label %._crit_edge17, !dbg !115

.preheader1.lr.ph:                                ; preds = %.loopexit3
  %50 = load i32* %nzs, align 4, !dbg !116, !tbaa !53
  %51 = sext i32 %48 to i64
  br label %.preheader1, !dbg !115

..loopexit_crit_edge:                             ; preds = %58
  %52 = trunc i64 %indvars.iv.next42 to i32, !dbg !117
  br label %.loopexit, !dbg !117

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader1
  %k.1.lcssa = phi i32 [ %52, %..loopexit_crit_edge ], [ %k.023, %.preheader1 ]
  %53 = icmp sgt i64 %indvars.iv43, 1, !dbg !113
  br i1 %53, label %.preheader1, label %._crit_edge25, !dbg !115

.preheader1:                                      ; preds = %.preheader1.lr.ph, %.loopexit
  %indvars.iv43 = phi i64 [ %51, %.preheader1.lr.ph ], [ %indvars.iv.next44, %.loopexit ]
  %i.224.in = phi i32 [ %48, %.preheader1.lr.ph ], [ %i.224, %.loopexit ]
  %k.023 = phi i32 [ %50, %.preheader1.lr.ph ], [ %k.1.lcssa, %.loopexit ]
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1, !dbg !115
  %i.224 = add nsw i32 %i.224.in, -1, !dbg !120
  %54 = getelementptr inbounds i32* %47, i64 %indvars.iv.next44, !dbg !121
  %55 = load i32* %54, align 4, !dbg !121, !tbaa !53
  %56 = icmp sgt i32 %55, 0, !dbg !123
  br i1 %56, label %.lr.ph20, label %.loopexit, !dbg !117

.lr.ph20:                                         ; preds = %.preheader1
  %57 = sext i32 %k.023 to i64
  br label %58, !dbg !117

; <label>:58                                      ; preds = %.lr.ph20, %58
  %indvars.iv41 = phi i64 [ %57, %.lr.ph20 ], [ %indvars.iv.next42, %58 ]
  %j.018 = phi i32 [ 0, %.lr.ph20 ], [ %60, %58 ]
  %indvars.iv.next42 = add i64 %indvars.iv41, -1, !dbg !117
  %59 = getelementptr inbounds i32* %47, i64 %indvars.iv.next42, !dbg !124
  store i32 %i.224.in, i32* %59, align 4, !dbg !126, !tbaa !53
  %60 = add nuw nsw i32 %j.018, 1, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !28, metadata !42), !dbg !128
  %61 = load i32* %54, align 4, !dbg !121, !tbaa !53
  %62 = icmp slt i32 %60, %61, !dbg !123
  br i1 %62, label %58, label %..loopexit_crit_edge, !dbg !117

._crit_edge25:                                    ; preds = %.loopexit
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !29, metadata !42), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !28, metadata !42), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !42), !dbg !79
  br i1 %49, label %.lr.ph16, label %._crit_edge17, !dbg !129

.lr.ph16:                                         ; preds = %._crit_edge25
  %63 = load i32* %nzs, align 4, !dbg !131, !tbaa !53
  %64 = sext i32 %63 to i64
  %65 = sext i32 %48 to i64, !dbg !129
  %66 = shl nsw i64 %64, 3, !dbg !129
  %scevgep = getelementptr i8* %39, i64 %66
  %67 = icmp sgt i32 %48, 1
  %.op = add i32 %48, -1, !dbg !129
  %68 = zext i32 %.op to i64
  %.op50 = shl nuw nsw i64 %68, 3, !dbg !129
  %.op50.op = add nuw nsw i64 %.op50, 8, !dbg !129
  %69 = select i1 %67, i64 %.op50.op, i64 8, !dbg !129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep, i8* %ad40, i64 %69, i32 8, i1 false), !dbg !132
  br label %70, !dbg !129

; <label>:70                                      ; preds = %.lr.ph16, %70
  %indvars.iv38 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next39, %70 ]
  %indvars.iv36 = phi i64 [ %64, %.lr.ph16 ], [ %indvars.iv.next37, %70 ]
  %j.113 = phi i32 [ 0, %.lr.ph16 ], [ %71, %70 ]
  %71 = add nuw nsw i32 %j.113, 1, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !28, metadata !42), !dbg !128
  %72 = getelementptr inbounds i32* %44, i64 %indvars.iv36, !dbg !136
  store i32 %71, i32* %72, align 4, !dbg !137, !tbaa !53
  %73 = getelementptr inbounds i32* %47, i64 %indvars.iv36, !dbg !138
  store i32 %71, i32* %73, align 4, !dbg !139, !tbaa !53
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1, !dbg !129
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !27, metadata !42), !dbg !79
  %74 = icmp slt i64 %indvars.iv.next39, %65, !dbg !140
  br i1 %74, label %70, label %._crit_edge17, !dbg !129

._crit_edge17:                                    ; preds = %70, %.loopexit3, %._crit_edge25
  tail call void @llvm.dbg.value(metadata i32* %ndim, i64 0, metadata !26, metadata !42), !dbg !105
  call void @rearrange_(double* %40, i32* %44, i32* %47, i32* %ndim, i32* %neq) #5, !dbg !141
  %75 = load i32* %neq, align 4, !dbg !142, !tbaa !53
  %76 = sext i32 %75 to i64, !dbg !142
  %77 = shl nsw i64 %76, 2, !dbg !142
  %78 = call i8* @realloc(i8* %43, i64 %77) #5, !dbg !142
  %79 = bitcast i8* %78 to i32*, !dbg !142
  call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !32, metadata !42), !dbg !58
  %80 = load i32* %neq, align 4, !dbg !143, !tbaa !53
  %81 = sext i32 %80 to i64, !dbg !143
  %82 = call i8* @u_calloc(i64 %81, i64 8) #5, !dbg !143
  %83 = bitcast i8* %82 to double*, !dbg !143
  call void @llvm.dbg.value(metadata double* %83, i64 0, metadata !36, metadata !42), !dbg !64
  %84 = load i32* %neq, align 4, !dbg !144, !tbaa !53
  call void @llvm.dbg.value(metadata i32* %ndim, i64 0, metadata !26, metadata !42), !dbg !105
  %85 = load i32* %ndim, align 4, !dbg !145, !tbaa !53
  call void @llvm.dbg.value(metadata i32* %niter, i64 0, metadata !25, metadata !42), !dbg !52
  call void @llvm.dbg.value(metadata double* %eps, i64 0, metadata !35, metadata !42), !dbg !61
  %86 = call i32 @cgsolver(double* %40, double* %83, double* %b, i32 %84, i32 %85, i32* %47, i32* %79, double* %eps, i32* %niter, i32 %.) #5, !dbg !146
  call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !30, metadata !42), !dbg !147
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %86) #5, !dbg !148
  call void @llvm.dbg.value(metadata i32* %niter, i64 0, metadata !25, metadata !42), !dbg !52
  %88 = load i32* %niter, align 4, !dbg !149, !tbaa !53
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i32 %88) #5, !dbg !150
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !42), !dbg !79
  %90 = load i32* %neq, align 4, !dbg !151, !tbaa !53
  %91 = icmp sgt i32 %90, 0, !dbg !154
  br i1 %91, label %.lr.ph10, label %._crit_edge11, !dbg !155

.lr.ph10:                                         ; preds = %._crit_edge17
  %92 = sext i32 %90 to i64, !dbg !155
  br label %93, !dbg !155

; <label>:93                                      ; preds = %.lr.ph10, %93
  %indvars.iv33 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next34, %93 ]
  %94 = getelementptr inbounds double* %83, i64 %indvars.iv33, !dbg !156
  %95 = bitcast double* %94 to i64*, !dbg !156
  %96 = load i64* %95, align 8, !dbg !156, !tbaa !62
  %97 = getelementptr inbounds double* %b, i64 %indvars.iv33, !dbg !158
  %98 = bitcast double* %97 to i64*, !dbg !159
  store i64 %96, i64* %98, align 8, !dbg !159, !tbaa !62
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !155
  %99 = icmp slt i64 %indvars.iv.next34, %92, !dbg !154
  br i1 %99, label %93, label %._crit_edge11, !dbg !155

._crit_edge11:                                    ; preds = %93, %._crit_edge17
  call void @free(i8* %82) #6, !dbg !160
  %100 = load i32* %iperturb, align 4, !dbg !161, !tbaa !53
  %101 = icmp sgt i32 %100, 1, !dbg !163
  br i1 %101, label %102, label %129, !dbg !164

; <label>:102                                     ; preds = %._crit_edge11
  %103 = load i32* %nzs, align 4, !dbg !165, !tbaa !53
  %104 = sext i32 %103 to i64, !dbg !165
  %105 = shl nsw i64 %104, 2, !dbg !165
  %106 = call i8* @realloc(i8* %78, i64 %105) #5, !dbg !165
  %107 = bitcast i8* %106 to i32*, !dbg !165
  call void @llvm.dbg.value(metadata i32* %107, i64 0, metadata !32, metadata !42), !dbg !58
  %108 = load i32* %neq, align 4, !dbg !167, !tbaa !53
  %109 = sext i32 %108 to i64, !dbg !167
  %110 = shl nsw i64 %109, 2, !dbg !167
  %111 = call i8* @realloc(i8* %46, i64 %110) #5, !dbg !167
  %112 = bitcast i8* %111 to i32*, !dbg !167
  call void @llvm.dbg.value(metadata i32* %112, i64 0, metadata !31, metadata !42), !dbg !57
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !42), !dbg !79
  %113 = load i32* %nzs, align 4, !dbg !168, !tbaa !53
  %114 = icmp sgt i32 %113, 0, !dbg !171
  br i1 %114, label %.lr.ph7, label %.preheader, !dbg !172

.preheader:                                       ; preds = %.lr.ph7, %102
  %115 = load i32* %neq, align 4, !dbg !173, !tbaa !53
  %116 = icmp sgt i32 %115, 0, !dbg !176
  br i1 %116, label %.lr.ph, label %._crit_edge, !dbg !177

.lr.ph7:                                          ; preds = %102, %.lr.ph7
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph7 ], [ 0, %102 ]
  %117 = getelementptr inbounds i32* %irow_save.0, i64 %indvars.iv31, !dbg !178
  %118 = load i32* %117, align 4, !dbg !178, !tbaa !53
  %119 = getelementptr inbounds i32* %107, i64 %indvars.iv31, !dbg !180
  store i32 %118, i32* %119, align 4, !dbg !181, !tbaa !53
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !172
  %120 = sext i32 %113 to i64, !dbg !171
  %121 = icmp slt i64 %indvars.iv.next32, %120, !dbg !171
  br i1 %121, label %.lr.ph7, label %.preheader, !dbg !172

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %122 = getelementptr inbounds i32* %icol_save.0, i64 %indvars.iv, !dbg !182
  %123 = load i32* %122, align 4, !dbg !182, !tbaa !53
  %124 = getelementptr inbounds i32* %112, i64 %indvars.iv, !dbg !184
  store i32 %123, i32* %124, align 4, !dbg !185, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !177
  %125 = sext i32 %115 to i64, !dbg !176
  %126 = icmp slt i64 %indvars.iv.next, %125, !dbg !176
  br i1 %126, label %.lr.ph, label %._crit_edge, !dbg !177

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %127 = bitcast i32* %irow_save.0 to i8*, !dbg !186
  call void @free(i8* %127) #6, !dbg !187
  %128 = bitcast i32* %icol_save.0 to i8*, !dbg !188
  call void @free(i8* %128) #6, !dbg !189
  br label %129, !dbg !190

; <label>:129                                     ; preds = %._crit_edge, %._crit_edge11
  %icol.0 = phi i32* [ %112, %._crit_edge ], [ %47, %._crit_edge11 ]
  %irow.0 = phi i32* [ %107, %._crit_edge ], [ %79, %._crit_edge11 ]
  store i8* %39, i8** %1, align 8, !dbg !191, !tbaa !67
  store i32* %irow.0, i32** %irowp, align 8, !dbg !192, !tbaa !67
  store i32* %icol.0, i32** %icolp, align 8, !dbg !193, !tbaa !67
  ret void, !dbg !194
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: optsize
declare void @rearrange_(double*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @cgsolver(double*, double*, double*, i32, i32, i32*, i32*, double*, i32*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/preiter.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !{!9}
!9 = !DISubprogram(name: "preiter", scope: !1, file: !1, line: 23, type: !10, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (double*, double**, double*, i32**, i32**, i32*, i32*, i32*, i32*)* @preiter, variables: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !6, !12, !6, !13, !13, !4, !4, !4, !4}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ad", arg: 1, scope: !9, file: !1, line: 23, type: !6)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aup", arg: 2, scope: !9, file: !1, line: 23, type: !12)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 3, scope: !9, file: !1, line: 23, type: !6)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "icolp", arg: 4, scope: !9, file: !1, line: 23, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowp", arg: 5, scope: !9, file: !1, line: 23, type: !13)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "neq", arg: 6, scope: !9, file: !1, line: 24, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nzs", arg: 7, scope: !9, file: !1, line: 24, type: !4)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isolver", arg: 8, scope: !9, file: !1, line: 24, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iperturb", arg: 9, scope: !9, file: !1, line: 24, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "precFlg", scope: !9, file: !1, line: 26, type: !5)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "niter", scope: !9, file: !1, line: 26, type: !5)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndim", scope: !9, file: !1, line: 26, type: !5)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 26, type: !5)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !9, file: !1, line: 26, type: !5)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !9, file: !1, line: 26, type: !5)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ier", scope: !9, file: !1, line: 26, type: !5)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icol", scope: !9, file: !1, line: 26, type: !4)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !9, file: !1, line: 26, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow_save", scope: !9, file: !1, line: 27, type: !4)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icol_save", scope: !9, file: !1, line: 27, type: !4)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eps", scope: !9, file: !1, line: 28, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !9, file: !1, line: 28, type: !6)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "au", scope: !9, file: !1, line: 28, type: !6)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 23, column: 22, scope: !9)
!44 = !DILocation(line: 23, column: 35, scope: !9)
!45 = !DILocation(line: 23, column: 48, scope: !9)
!46 = !DILocation(line: 23, column: 57, scope: !9)
!47 = !DILocation(line: 23, column: 70, scope: !9)
!48 = !DILocation(line: 24, column: 12, scope: !9)
!49 = !DILocation(line: 24, column: 22, scope: !9)
!50 = !DILocation(line: 24, column: 32, scope: !9)
!51 = !DILocation(line: 24, column: 46, scope: !9)
!52 = !DILocation(line: 26, column: 15, scope: !9)
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 26, column: 45, scope: !9)
!58 = !DILocation(line: 26, column: 56, scope: !9)
!59 = !DILocation(line: 27, column: 6, scope: !9)
!60 = !DILocation(line: 27, column: 22, scope: !9)
!61 = !DILocation(line: 28, column: 10, scope: !9)
!62 = !{!63, !63, i64 0}
!63 = !{!"double", !55, i64 0}
!64 = !DILocation(line: 28, column: 21, scope: !9)
!65 = !DILocation(line: 28, column: 29, scope: !9)
!66 = !DILocation(line: 36, column: 6, scope: !9)
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !55, i64 0}
!69 = !DILocation(line: 37, column: 8, scope: !9)
!70 = !DILocation(line: 38, column: 8, scope: !9)
!71 = !DILocation(line: 40, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 6)
!73 = !DILocation(line: 40, column: 15, scope: !72)
!74 = !DILocation(line: 40, column: 6, scope: !9)
!75 = !DILocation(line: 54, column: 8, scope: !9)
!76 = !DILocation(line: 41, column: 15, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 40, column: 18)
!78 = !DILocation(line: 42, column: 15, scope: !77)
!79 = !DILocation(line: 26, column: 34, scope: !9)
!80 = !DILocation(line: 43, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 43, column: 5)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 43, column: 5)
!83 = !DILocation(line: 43, column: 14, scope: !81)
!84 = !DILocation(line: 43, column: 5, scope: !82)
!85 = !DILocation(line: 46, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 46, column: 5)
!87 = distinct !DILexicalBlock(scope: !77, file: !1, line: 46, column: 5)
!88 = !DILocation(line: 46, column: 14, scope: !86)
!89 = !DILocation(line: 46, column: 5, scope: !87)
!90 = !DILocation(line: 44, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !81, file: !1, line: 43, column: 24)
!92 = !DILocation(line: 44, column: 7, scope: !91)
!93 = !DILocation(line: 44, column: 19, scope: !91)
!94 = !DILocation(line: 47, column: 20, scope: !95)
!95 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 24)
!96 = !DILocation(line: 47, column: 7, scope: !95)
!97 = !DILocation(line: 47, column: 19, scope: !95)
!98 = !DILocation(line: 51, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !9, file: !1, line: 51, column: 6)
!100 = !DILocation(line: 51, column: 14, scope: !99)
!101 = !DILocation(line: 51, column: 30, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 51, column: 19)
!103 = !DILocation(line: 54, column: 13, scope: !9)
!104 = !DILocation(line: 54, column: 12, scope: !9)
!105 = !DILocation(line: 26, column: 29, scope: !9)
!106 = !DILocation(line: 54, column: 7, scope: !9)
!107 = !DILocation(line: 56, column: 3, scope: !9)
!108 = !DILocation(line: 57, column: 3, scope: !9)
!109 = !DILocation(line: 58, column: 3, scope: !9)
!110 = !DILocation(line: 26, column: 38, scope: !9)
!111 = !DILocation(line: 61, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 3)
!113 = !DILocation(line: 61, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !112, file: !1, line: 61, column: 3)
!115 = !DILocation(line: 61, column: 3, scope: !112)
!116 = !DILocation(line: 60, column: 5, scope: !9)
!117 = !DILocation(line: 62, column: 5, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 62, column: 5)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 61, column: 25)
!120 = !DILocation(line: 61, column: 13, scope: !112)
!121 = !DILocation(line: 62, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 62, column: 5)
!123 = !DILocation(line: 62, column: 14, scope: !122)
!124 = !DILocation(line: 63, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 62, column: 27)
!126 = !DILocation(line: 63, column: 16, scope: !125)
!127 = !DILocation(line: 62, column: 23, scope: !122)
!128 = !DILocation(line: 26, column: 36, scope: !9)
!129 = !DILocation(line: 69, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !9, file: !1, line: 69, column: 3)
!131 = !DILocation(line: 67, column: 5, scope: !9)
!132 = !DILocation(line: 70, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 69, column: 22)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 69, column: 3)
!135 = !DILocation(line: 71, column: 13, scope: !133)
!136 = !DILocation(line: 71, column: 5, scope: !133)
!137 = !DILocation(line: 71, column: 12, scope: !133)
!138 = !DILocation(line: 72, column: 5, scope: !133)
!139 = !DILocation(line: 72, column: 12, scope: !133)
!140 = !DILocation(line: 69, column: 12, scope: !134)
!141 = !DILocation(line: 78, column: 3, scope: !9)
!142 = !DILocation(line: 80, column: 3, scope: !9)
!143 = !DILocation(line: 82, column: 5, scope: !9)
!144 = !DILocation(line: 84, column: 23, scope: !9)
!145 = !DILocation(line: 84, column: 28, scope: !9)
!146 = !DILocation(line: 84, column: 7, scope: !9)
!147 = !DILocation(line: 26, column: 40, scope: !9)
!148 = !DILocation(line: 86, column: 3, scope: !9)
!149 = !DILocation(line: 87, column: 35, scope: !9)
!150 = !DILocation(line: 87, column: 3, scope: !9)
!151 = !DILocation(line: 89, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 89, column: 3)
!153 = distinct !DILexicalBlock(scope: !9, file: !1, line: 89, column: 3)
!154 = !DILocation(line: 89, column: 12, scope: !152)
!155 = !DILocation(line: 89, column: 3, scope: !153)
!156 = !DILocation(line: 90, column: 10, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 89, column: 22)
!158 = !DILocation(line: 90, column: 5, scope: !157)
!159 = !DILocation(line: 90, column: 9, scope: !157)
!160 = !DILocation(line: 93, column: 3, scope: !9)
!161 = !DILocation(line: 95, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !9, file: !1, line: 95, column: 6)
!163 = !DILocation(line: 95, column: 15, scope: !162)
!164 = !DILocation(line: 95, column: 6, scope: !9)
!165 = !DILocation(line: 96, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 95, column: 18)
!167 = !DILocation(line: 97, column: 5, scope: !166)
!168 = !DILocation(line: 98, column: 15, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 98, column: 5)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 98, column: 5)
!171 = !DILocation(line: 98, column: 14, scope: !169)
!172 = !DILocation(line: 98, column: 5, scope: !170)
!173 = !DILocation(line: 101, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 101, column: 5)
!175 = distinct !DILexicalBlock(scope: !166, file: !1, line: 101, column: 5)
!176 = !DILocation(line: 101, column: 14, scope: !174)
!177 = !DILocation(line: 101, column: 5, scope: !175)
!178 = !DILocation(line: 99, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !169, file: !1, line: 98, column: 24)
!180 = !DILocation(line: 99, column: 7, scope: !179)
!181 = !DILocation(line: 99, column: 14, scope: !179)
!182 = !DILocation(line: 102, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !174, file: !1, line: 101, column: 24)
!184 = !DILocation(line: 102, column: 7, scope: !183)
!185 = !DILocation(line: 102, column: 14, scope: !183)
!186 = !DILocation(line: 104, column: 10, scope: !166)
!187 = !DILocation(line: 104, column: 5, scope: !166)
!188 = !DILocation(line: 104, column: 26, scope: !166)
!189 = !DILocation(line: 104, column: 21, scope: !166)
!190 = !DILocation(line: 105, column: 3, scope: !166)
!191 = !DILocation(line: 107, column: 7, scope: !9)
!192 = !DILocation(line: 108, column: 9, scope: !9)
!193 = !DILocation(line: 109, column: 9, scope: !9)
!194 = !DILocation(line: 111, column: 3, scope: !9)
