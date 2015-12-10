; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/cluster.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/cluster.c\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"AllocPhylo() failed\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"%s:%.5f\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"):%.5f\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"Interior node %d (code %d)\0A\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"\09Parent: %d (code %d)\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"\09Left:   %d (%s) %f\0A\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str12 = private unnamed_addr constant [22 x i8] c"\09Right:   %d (%s) %f\0A\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"\09Height:  %f\0A\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"\09Includes:%d seqs\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Cluster(float** nocapture readonly %dmx, i32 %N, i32 %mode, %struct.phylo_s** nocapture %ret_tree) #0 {
  tail call void @llvm.dbg.value(metadata float** %dmx, i64 0, metadata !35, metadata !220), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !36, metadata !220), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !37, metadata !220), !dbg !223
  tail call void @llvm.dbg.value(metadata %struct.phylo_s** %ret_tree, i64 0, metadata !38, metadata !220), !dbg !224
  %1 = sext i32 %N to i64, !dbg !225
  %2 = shl nsw i64 %1, 3, !dbg !225
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 168, i64 %2) #5, !dbg !225
  %4 = bitcast i8* %3 to float**, !dbg !225
  tail call void @llvm.dbg.value(metadata float** %4, i64 0, metadata !40, metadata !220), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !220), !dbg !227
  %5 = icmp sgt i32 %N, 0, !dbg !228
  %6 = shl nsw i64 %1, 2, !dbg !231
  %7 = add i32 %N, -1, !dbg !233
  br i1 %5, label %.lr.ph54, label %._crit_edge59, !dbg !233

.lr.ph54:                                         ; preds = %0, %._crit_edge55
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %._crit_edge55 ], [ 0, %0 ]
  %8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 171, i64 %6) #5, !dbg !231
  %9 = getelementptr inbounds float** %4, i64 %indvars.iv116, !dbg !234
  %10 = bitcast float** %9 to i8**, !dbg !235
  store i8* %8, i8** %10, align 8, !dbg !235, !tbaa !236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !44, metadata !220), !dbg !240
  %11 = bitcast i8* %8 to float*
  %12 = getelementptr inbounds float** %dmx, i64 %indvars.iv116, !dbg !241
  %13 = load float** %12, align 8, !dbg !241, !tbaa !236
  br label %14, !dbg !244

; <label>:14                                      ; preds = %14, %.lr.ph54
  %indvars.iv112 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next113, %14 ]
  %15 = getelementptr inbounds float* %13, i64 %indvars.iv112, !dbg !241
  %16 = bitcast float* %15 to i32*, !dbg !241
  %17 = load i32* %16, align 4, !dbg !241, !tbaa !245
  %18 = getelementptr inbounds float* %11, i64 %indvars.iv112, !dbg !247
  %19 = bitcast float* %18 to i32*, !dbg !248
  store i32 %17, i32* %19, align 4, !dbg !248, !tbaa !245
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1, !dbg !244
  %lftr.wideiv114 = trunc i64 %indvars.iv112 to i32, !dbg !244
  %exitcond115 = icmp eq i32 %lftr.wideiv114, %7, !dbg !244
  br i1 %exitcond115, label %._crit_edge55, label %14, !dbg !244

._crit_edge55:                                    ; preds = %14
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1, !dbg !233
  %lftr.wideiv118 = trunc i64 %indvars.iv116 to i32, !dbg !233
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %7, !dbg !233
  br i1 %exitcond119, label %._crit_edge59, label %.lr.ph54, !dbg !233

._crit_edge59:                                    ; preds = %._crit_edge55, %0
  %20 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 176, i64 %6) #5, !dbg !249
  %21 = bitcast i8* %20 to i32*, !dbg !249
  tail call void @llvm.dbg.value(metadata i32* %21, i64 0, metadata !41, metadata !220), !dbg !250
  %22 = sext i32 %7 to i64, !dbg !251
  %23 = shl nsw i64 %22, 2, !dbg !251
  %24 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 177, i64 %23) #5, !dbg !251
  %25 = bitcast i8* %24 to float*, !dbg !251
  tail call void @llvm.dbg.value(metadata float* %25, i64 0, metadata !52, metadata !220), !dbg !252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !48, metadata !220), !dbg !253
  br i1 %5, label %.lr.ph51, label %.preheader7.thread, !dbg !254

.preheader7:                                      ; preds = %.lr.ph51
  %26 = icmp sgt i32 %N, 1, !dbg !256
  br i1 %26, label %.lr.ph46, label %.preheader7.thread, !dbg !259

.lr.ph46:                                         ; preds = %.preheader7
  %27 = icmp sgt i32 %7, 1
  %.pre-phi.op = add i32 %N, -2, !dbg !259
  %28 = zext i32 %.pre-phi.op to i64
  %29 = select i1 %27, i64 %28, i64 0
  %30 = shl nuw nsw i64 %29, 2, !dbg !259
  %31 = add nuw nsw i64 %30, 4, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %31, i32 4, i1 false), !dbg !260
  %32 = add nuw nsw i64 %29, 1, !dbg !259
  %33 = trunc i64 %32 to i32, !dbg !259
  br label %.preheader7.thread, !dbg !259

.lr.ph51:                                         ; preds = %._crit_edge59, %.lr.ph51
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.lr.ph51 ], [ 0, %._crit_edge59 ]
  %34 = getelementptr inbounds i32* %21, i64 %indvars.iv108, !dbg !261
  %35 = trunc i64 %indvars.iv108 to i32, !dbg !263
  store i32 %35, i32* %34, align 4, !dbg !263, !tbaa !264
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1, !dbg !254
  %exitcond111 = icmp eq i32 %35, %7, !dbg !254
  br i1 %exitcond111, label %.preheader7, label %.lr.ph51, !dbg !254

.preheader7.thread:                               ; preds = %._crit_edge59, %.lr.ph46, %.preheader7
  %36 = phi i1 [ true, %.lr.ph46 ], [ false, %.preheader7 ], [ false, %._crit_edge59 ]
  %i.1.lcssa = phi i32 [ %33, %.lr.ph46 ], [ 0, %.preheader7 ], [ 0, %._crit_edge59 ]
  %37 = tail call %struct.phylo_s* @AllocPhylo(i32 %N) #6, !dbg !266
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %37, i64 0, metadata !39, metadata !220), !dbg !268
  %38 = icmp eq %struct.phylo_s* %37, null, !dbg !269
  br i1 %38, label %39, label %.preheader6, !dbg !270

; <label>:39                                      ; preds = %.preheader7.thread
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !271
  br label %.preheader6, !dbg !271

.preheader6:                                      ; preds = %39, %.preheader7.thread
  br i1 %36, label %.preheader5.lr.ph, label %._crit_edge44, !dbg !272

.preheader5.lr.ph:                                ; preds = %.preheader6
  %40 = add i32 %N, -2, !dbg !274
  br label %.lr.ph18, !dbg !272

.lr.ph18:                                         ; preds = %._crit_edge40, %.preheader5.lr.ph
  %indvars.iv103 = phi i64 [ %1, %.preheader5.lr.ph ], [ %indvars.iv.next104, %._crit_edge40 ]
  %indvars.iv99 = phi i32 [ %7, %.preheader5.lr.ph ], [ %indvars.iv.next100, %._crit_edge40 ]
  %i.243 = phi i32 [ %i.1.lcssa, %.preheader5.lr.ph ], [ %164, %._crit_edge40 ]
  %j.141 = phi i32 [ 0, %.preheader5.lr.ph ], [ %162, %._crit_edge40 ]
  br label %41, !dbg !277

.loopexit:                                        ; preds = %45, %..loopexit_crit_edge123
  %lftr.wideiv69.pre-phi = phi i32 [ %.pre125, %..loopexit_crit_edge123 ], [ %50, %45 ], !dbg !277
  %i.4.lcssa = phi i32 [ %i.317, %..loopexit_crit_edge123 ], [ %i.5, %45 ]
  %min.1.lcssa = phi float [ %min.016, %..loopexit_crit_edge123 ], [ %min.2, %45 ]
  %j.3.lcssa = phi i32 [ %j.214, %..loopexit_crit_edge123 ], [ %j.4, %45 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !277
  %exitcond70 = icmp eq i32 %lftr.wideiv69.pre-phi, %indvars.iv99, !dbg !277
  br i1 %exitcond70, label %._crit_edge, label %41, !dbg !277

; <label>:41                                      ; preds = %.loopexit, %.lr.ph18
  %indvars.iv65 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next66, %.loopexit ]
  %indvars.iv = phi i64 [ 1, %.lr.ph18 ], [ %indvars.iv.next, %.loopexit ]
  %i.317 = phi i32 [ %i.243, %.lr.ph18 ], [ %i.4.lcssa, %.loopexit ]
  %min.016 = phi float [ 9.999990e+05, %.lr.ph18 ], [ %min.1.lcssa, %.loopexit ]
  %j.214 = phi i32 [ %j.141, %.lr.ph18 ], [ %j.3.lcssa, %.loopexit ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1, !dbg !277
  %42 = icmp slt i64 %indvars.iv.next66, %indvars.iv103, !dbg !279
  br i1 %42, label %.lr.ph, label %..loopexit_crit_edge123, !dbg !283

..loopexit_crit_edge123:                          ; preds = %41
  %.pre125 = trunc i64 %indvars.iv65 to i32, !dbg !277
  br label %.loopexit, !dbg !283

.lr.ph:                                           ; preds = %41
  %43 = getelementptr inbounds float** %4, i64 %indvars.iv65, !dbg !284
  %44 = load float** %43, align 8, !dbg !284, !tbaa !236
  br label %45, !dbg !283

; <label>:45                                      ; preds = %45, %.lr.ph
  %indvars.iv61 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next62, %45 ]
  %i.411 = phi i32 [ %i.317, %.lr.ph ], [ %i.5, %45 ]
  %min.110 = phi float [ %min.016, %.lr.ph ], [ %min.2, %45 ]
  %j.38 = phi i32 [ %j.214, %.lr.ph ], [ %j.4, %45 ]
  %46 = getelementptr inbounds float* %44, i64 %indvars.iv61, !dbg !284
  %47 = load float* %46, align 4, !dbg !284, !tbaa !245
  %48 = fcmp olt float %47, %min.110, !dbg !286
  tail call void @llvm.dbg.value(metadata float %47, i64 0, metadata !49, metadata !220), !dbg !287
  %49 = trunc i64 %indvars.iv61 to i32, !dbg !288
  %j.4 = select i1 %48, i32 %49, i32 %j.38, !dbg !288
  %min.2 = select i1 %48, float %47, float %min.110, !dbg !288
  %50 = trunc i64 %indvars.iv65 to i32, !dbg !288
  %i.5 = select i1 %48, i32 %50, i32 %i.411, !dbg !288
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !283
  %exitcond = icmp eq i32 %49, %indvars.iv99, !dbg !283
  br i1 %exitcond, label %.loopexit, label %45, !dbg !283

._crit_edge:                                      ; preds = %.loopexit
  %51 = sext i32 %i.4.lcssa to i64, !dbg !289
  %52 = getelementptr inbounds i32* %21, i64 %51, !dbg !289
  %53 = load i32* %52, align 4, !dbg !289, !tbaa !264
  %54 = add nsw i64 %indvars.iv103, -2, !dbg !290
  %55 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 1, !dbg !291
  store i32 %53, i32* %55, align 4, !dbg !292, !tbaa !293
  %56 = sext i32 %j.3.lcssa to i64, !dbg !295
  %57 = getelementptr inbounds i32* %21, i64 %56, !dbg !295
  %58 = load i32* %57, align 4, !dbg !295, !tbaa !264
  %59 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 2, !dbg !296
  store i32 %58, i32* %59, align 4, !dbg !297, !tbaa !298
  %60 = load i32* %52, align 4, !dbg !299, !tbaa !264
  %61 = icmp slt i32 %60, %N, !dbg !301
  br i1 %61, label %68, label %62, !dbg !302

; <label>:62                                      ; preds = %._crit_edge
  %63 = trunc i64 %indvars.iv103 to i32, !dbg !303
  %64 = add i32 %40, %63, !dbg !303
  %65 = sub nsw i32 %60, %N, !dbg !304
  %66 = sext i32 %65 to i64, !dbg !305
  %67 = getelementptr inbounds %struct.phylo_s* %37, i64 %66, i32 0, !dbg !306
  store i32 %64, i32* %67, align 4, !dbg !307, !tbaa !308
  br label %68, !dbg !305

; <label>:68                                      ; preds = %._crit_edge, %62
  %69 = load i32* %57, align 4, !dbg !309, !tbaa !264
  %70 = icmp slt i32 %69, %N, !dbg !311
  br i1 %70, label %77, label %71, !dbg !312

; <label>:71                                      ; preds = %68
  %72 = trunc i64 %indvars.iv103 to i32, !dbg !313
  %73 = add i32 %40, %72, !dbg !313
  %74 = sub nsw i32 %69, %N, !dbg !314
  %75 = sext i32 %74 to i64, !dbg !315
  %76 = getelementptr inbounds %struct.phylo_s* %37, i64 %75, i32 0, !dbg !316
  store i32 %73, i32* %76, align 4, !dbg !317, !tbaa !308
  br label %77, !dbg !315

; <label>:77                                      ; preds = %68, %71
  %78 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 3, !dbg !318
  store float %min.1.lcssa, float* %78, align 4, !dbg !319, !tbaa !320
  %79 = getelementptr inbounds float* %25, i64 %54, !dbg !321
  store float %min.1.lcssa, float* %79, align 4, !dbg !322, !tbaa !245
  %80 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 5, !dbg !323
  store float %min.1.lcssa, float* %80, align 4, !dbg !324, !tbaa !325
  %81 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 4, !dbg !326
  store float %min.1.lcssa, float* %81, align 4, !dbg !327, !tbaa !328
  %82 = load i32* %52, align 4, !dbg !329, !tbaa !264
  %83 = icmp slt i32 %82, %N, !dbg !331
  br i1 %83, label %90, label %84, !dbg !332

; <label>:84                                      ; preds = %77
  %85 = sub nsw i32 %82, %N, !dbg !333
  %86 = sext i32 %85 to i64, !dbg !334
  %87 = getelementptr inbounds float* %25, i64 %86, !dbg !334
  %88 = load float* %87, align 4, !dbg !334, !tbaa !245
  %89 = fsub float %min.1.lcssa, %88, !dbg !335
  store float %89, float* %81, align 4, !dbg !335, !tbaa !328
  br label %90, !dbg !336

; <label>:90                                      ; preds = %77, %84
  %91 = load i32* %57, align 4, !dbg !337, !tbaa !264
  %92 = icmp slt i32 %91, %N, !dbg !339
  br i1 %92, label %99, label %93, !dbg !340

; <label>:93                                      ; preds = %90
  %94 = sub nsw i32 %91, %N, !dbg !341
  %95 = sext i32 %94 to i64, !dbg !342
  %96 = getelementptr inbounds float* %25, i64 %95, !dbg !342
  %97 = load float* %96, align 4, !dbg !342, !tbaa !245
  %98 = fsub float %min.1.lcssa, %97, !dbg !343
  store float %98, float* %80, align 4, !dbg !343, !tbaa !325
  br label %99, !dbg !344

; <label>:99                                      ; preds = %90, %93
  br i1 %83, label %100, label %109, !dbg !345

; <label>:100                                     ; preds = %99
  %101 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 7, !dbg !346
  %102 = load i32* %101, align 4, !dbg !349, !tbaa !350
  %103 = add nsw i32 %102, 1, !dbg !349
  store i32 %103, i32* %101, align 4, !dbg !349, !tbaa !350
  %104 = load i32* %52, align 4, !dbg !351, !tbaa !264
  %105 = sext i32 %104 to i64, !dbg !352
  %106 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 6, !dbg !353
  %107 = load i8** %106, align 8, !dbg !353, !tbaa !354
  %108 = getelementptr inbounds i8* %107, i64 %105, !dbg !352
  store i8 1, i8* %108, align 1, !dbg !355, !tbaa !356
  br label %.loopexit4, !dbg !357

; <label>:109                                     ; preds = %99
  %110 = sub nsw i32 %82, %N, !dbg !358
  %111 = sext i32 %110 to i64, !dbg !360
  %112 = getelementptr inbounds %struct.phylo_s* %37, i64 %111, i32 7, !dbg !361
  %113 = load i32* %112, align 4, !dbg !361, !tbaa !350
  %114 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 7, !dbg !362
  %115 = load i32* %114, align 4, !dbg !363, !tbaa !350
  %116 = add nsw i32 %115, %113, !dbg !363
  store i32 %116, i32* %114, align 4, !dbg !363, !tbaa !350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !220), !dbg !364
  br i1 %5, label %.lr.ph24, label %.loopexit4, !dbg !365

.lr.ph24:                                         ; preds = %109
  %117 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 6, !dbg !367
  br label %118, !dbg !365

; <label>:118                                     ; preds = %118, %.lr.ph24
  %indvars.iv71 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next72, %118 ]
  %119 = load i32* %52, align 4, !dbg !369, !tbaa !264
  %120 = sub nsw i32 %119, %N, !dbg !370
  %121 = sext i32 %120 to i64, !dbg !371
  %122 = getelementptr inbounds %struct.phylo_s* %37, i64 %121, i32 6, !dbg !372
  %123 = load i8** %122, align 8, !dbg !372, !tbaa !354
  %124 = getelementptr inbounds i8* %123, i64 %indvars.iv71, !dbg !371
  %125 = load i8* %124, align 1, !dbg !371, !tbaa !356
  %126 = load i8** %117, align 8, !dbg !367, !tbaa !354
  %127 = getelementptr inbounds i8* %126, i64 %indvars.iv71, !dbg !373
  %128 = load i8* %127, align 1, !dbg !374, !tbaa !356
  %129 = or i8 %128, %125, !dbg !374
  store i8 %129, i8* %127, align 1, !dbg !374, !tbaa !356
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1, !dbg !365
  %lftr.wideiv73 = trunc i64 %indvars.iv71 to i32, !dbg !365
  %exitcond74 = icmp eq i32 %lftr.wideiv73, %7, !dbg !365
  br i1 %exitcond74, label %.loopexit4, label %118, !dbg !365

.loopexit4:                                       ; preds = %118, %109, %100
  %130 = load i32* %57, align 4, !dbg !375, !tbaa !264
  %131 = icmp slt i32 %130, %N, !dbg !377
  br i1 %131, label %132, label %141, !dbg !378

; <label>:132                                     ; preds = %.loopexit4
  %133 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 7, !dbg !379
  %134 = load i32* %133, align 4, !dbg !381, !tbaa !350
  %135 = add nsw i32 %134, 1, !dbg !381
  store i32 %135, i32* %133, align 4, !dbg !381, !tbaa !350
  %136 = load i32* %57, align 4, !dbg !382, !tbaa !264
  %137 = sext i32 %136 to i64, !dbg !383
  %138 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 6, !dbg !384
  %139 = load i8** %138, align 8, !dbg !384, !tbaa !354
  %140 = getelementptr inbounds i8* %139, i64 %137, !dbg !383
  store i8 1, i8* %140, align 1, !dbg !385, !tbaa !356
  br label %.loopexit3, !dbg !386

; <label>:141                                     ; preds = %.loopexit4
  %142 = sub nsw i32 %130, %N, !dbg !387
  %143 = sext i32 %142 to i64, !dbg !389
  %144 = getelementptr inbounds %struct.phylo_s* %37, i64 %143, i32 7, !dbg !390
  %145 = load i32* %144, align 4, !dbg !390, !tbaa !350
  %146 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 7, !dbg !391
  %147 = load i32* %146, align 4, !dbg !392, !tbaa !350
  %148 = add nsw i32 %147, %145, !dbg !392
  store i32 %148, i32* %146, align 4, !dbg !392, !tbaa !350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !220), !dbg !364
  br i1 %5, label %.lr.ph27, label %.loopexit3, !dbg !393

.lr.ph27:                                         ; preds = %141
  %149 = getelementptr inbounds %struct.phylo_s* %37, i64 %54, i32 6, !dbg !395
  br label %150, !dbg !393

; <label>:150                                     ; preds = %150, %.lr.ph27
  %indvars.iv75 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next76, %150 ]
  %151 = load i32* %57, align 4, !dbg !397, !tbaa !264
  %152 = sub nsw i32 %151, %N, !dbg !398
  %153 = sext i32 %152 to i64, !dbg !399
  %154 = getelementptr inbounds %struct.phylo_s* %37, i64 %153, i32 6, !dbg !400
  %155 = load i8** %154, align 8, !dbg !400, !tbaa !354
  %156 = getelementptr inbounds i8* %155, i64 %indvars.iv75, !dbg !399
  %157 = load i8* %156, align 1, !dbg !399, !tbaa !356
  %158 = load i8** %149, align 8, !dbg !395, !tbaa !354
  %159 = getelementptr inbounds i8* %158, i64 %indvars.iv75, !dbg !401
  %160 = load i8* %159, align 1, !dbg !402, !tbaa !356
  %161 = or i8 %160, %157, !dbg !402
  store i8 %161, i8* %159, align 1, !dbg !402, !tbaa !356
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1, !dbg !393
  %lftr.wideiv77 = trunc i64 %indvars.iv75 to i32, !dbg !393
  %exitcond78 = icmp eq i32 %lftr.wideiv77, %7, !dbg !393
  br i1 %exitcond78, label %.loopexit3, label %150, !dbg !393

.loopexit3:                                       ; preds = %150, %141, %132
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1, !dbg !272
  %162 = trunc i64 %indvars.iv.next104 to i32, !dbg !403
  %163 = icmp eq i32 %i.4.lcssa, %162, !dbg !403
  %164 = trunc i64 %54 to i32, !dbg !405
  %165 = icmp eq i32 %j.3.lcssa, %164, !dbg !405
  %or.cond = or i1 %165, %163, !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %j.3.lcssa, i64 0, metadata !53, metadata !220), !dbg !407
  tail call void @llvm.dbg.value(metadata i32 %i.4.lcssa, i64 0, metadata !44, metadata !220), !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %j.3.lcssa, i64 0, metadata !43, metadata !220), !dbg !227
  %j.5 = select i1 %or.cond, i32 %i.4.lcssa, i32 %j.3.lcssa, !dbg !406
  %i.6 = select i1 %or.cond, i32 %j.3.lcssa, i32 %i.4.lcssa, !dbg !406
  %166 = icmp eq i32 %i.6, %164, !dbg !408
  br i1 %166, label %187, label %.lr.ph30, !dbg !410

.lr.ph30:                                         ; preds = %.loopexit3
  %167 = getelementptr inbounds float** %4, i64 %54, !dbg !411
  %168 = bitcast float** %167 to i64*, !dbg !411
  %169 = load i64* %168, align 8, !dbg !411, !tbaa !236
  %170 = sext i32 %i.6 to i64, !dbg !413
  %171 = getelementptr inbounds float** %4, i64 %170, !dbg !413
  %172 = bitcast float** %171 to i64*, !dbg !413
  %173 = load i64* %172, align 8, !dbg !413, !tbaa !236
  store i64 %173, i64* %168, align 8, !dbg !414, !tbaa !236
  store i64 %169, i64* %172, align 8, !dbg !415, !tbaa !236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !220), !dbg !416
  br label %174, !dbg !417

; <label>:174                                     ; preds = %174, %.lr.ph30
  %indvars.iv79 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next80, %174 ]
  %175 = getelementptr inbounds float** %4, i64 %indvars.iv79, !dbg !419
  %176 = load float** %175, align 8, !dbg !419, !tbaa !236
  %177 = getelementptr inbounds float* %176, i64 %54, !dbg !419
  %178 = bitcast float* %177 to i32*, !dbg !419
  %179 = load i32* %178, align 4, !dbg !419, !tbaa !245
  %180 = getelementptr inbounds float* %176, i64 %170, !dbg !422
  %181 = bitcast float* %180 to i32*, !dbg !422
  %182 = load i32* %181, align 4, !dbg !422, !tbaa !245
  store i32 %182, i32* %178, align 4, !dbg !423, !tbaa !245
  store i32 %179, i32* %181, align 4, !dbg !424, !tbaa !245
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1, !dbg !417
  %lftr.wideiv83 = trunc i64 %indvars.iv79 to i32, !dbg !417
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %indvars.iv99, !dbg !417
  br i1 %exitcond84, label %._crit_edge31, label %174, !dbg !417

._crit_edge31:                                    ; preds = %174
  %183 = getelementptr inbounds i32* %21, i64 %54, !dbg !425
  %184 = load i32* %183, align 4, !dbg !425, !tbaa !264
  tail call void @llvm.dbg.value(metadata i32 %184, i64 0, metadata !53, metadata !220), !dbg !407
  %185 = getelementptr inbounds i32* %21, i64 %170, !dbg !425
  %186 = load i32* %185, align 4, !dbg !425, !tbaa !264
  store i32 %186, i32* %183, align 4, !dbg !425, !tbaa !264
  store i32 %184, i32* %185, align 4, !dbg !425, !tbaa !264
  br label %187, !dbg !427

; <label>:187                                     ; preds = %.loopexit3, %._crit_edge31
  %188 = icmp eq i32 %j.5, %162, !dbg !428
  br i1 %188, label %.lr.ph37, label %.lr.ph34, !dbg !430

.lr.ph34:                                         ; preds = %187
  %189 = getelementptr inbounds float** %4, i64 %indvars.iv.next104, !dbg !431
  %190 = bitcast float** %189 to i64*, !dbg !431
  %191 = load i64* %190, align 8, !dbg !431, !tbaa !236
  %192 = sext i32 %j.5 to i64, !dbg !433
  %193 = getelementptr inbounds float** %4, i64 %192, !dbg !433
  %194 = bitcast float** %193 to i64*, !dbg !433
  %195 = load i64* %194, align 8, !dbg !433, !tbaa !236
  store i64 %195, i64* %190, align 8, !dbg !434, !tbaa !236
  store i64 %191, i64* %194, align 8, !dbg !435, !tbaa !236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !220), !dbg !416
  br label %196, !dbg !436

; <label>:196                                     ; preds = %196, %.lr.ph34
  %indvars.iv85 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next86, %196 ]
  %197 = getelementptr inbounds float** %4, i64 %indvars.iv85, !dbg !438
  %198 = load float** %197, align 8, !dbg !438, !tbaa !236
  %199 = getelementptr inbounds float* %198, i64 %indvars.iv.next104, !dbg !438
  %200 = bitcast float* %199 to i32*, !dbg !438
  %201 = load i32* %200, align 4, !dbg !438, !tbaa !245
  %202 = getelementptr inbounds float* %198, i64 %192, !dbg !441
  %203 = bitcast float* %202 to i32*, !dbg !441
  %204 = load i32* %203, align 4, !dbg !441, !tbaa !245
  store i32 %204, i32* %200, align 4, !dbg !442, !tbaa !245
  store i32 %201, i32* %203, align 4, !dbg !443, !tbaa !245
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1, !dbg !436
  %lftr.wideiv89 = trunc i64 %indvars.iv85 to i32, !dbg !436
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %indvars.iv99, !dbg !436
  br i1 %exitcond90, label %._crit_edge35, label %196, !dbg !436

._crit_edge35:                                    ; preds = %196
  %205 = getelementptr inbounds i32* %21, i64 %indvars.iv.next104, !dbg !444
  %206 = load i32* %205, align 4, !dbg !444, !tbaa !264
  tail call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !53, metadata !220), !dbg !407
  %207 = getelementptr inbounds i32* %21, i64 %192, !dbg !444
  %208 = load i32* %207, align 4, !dbg !444, !tbaa !264
  store i32 %208, i32* %205, align 4, !dbg !444, !tbaa !264
  store i32 %206, i32* %207, align 4, !dbg !444, !tbaa !264
  br label %.lr.ph37, !dbg !446

.lr.ph37:                                         ; preds = %._crit_edge35, %187
  %209 = getelementptr inbounds float** %4, i64 %54, !dbg !447
  %210 = getelementptr inbounds float** %4, i64 %indvars.iv.next104, !dbg !452
  br label %213, !dbg !453

.lr.ph39:                                         ; preds = %248
  %211 = getelementptr inbounds float** %4, i64 %54, !dbg !454
  %212 = load float** %211, align 8, !dbg !454, !tbaa !236
  br label %249, !dbg !457

; <label>:213                                     ; preds = %248, %.lr.ph37
  %indvars.iv91 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next92, %248 ]
  switch i32 %mode, label %239 [
    i32 0, label %214
    i32 2, label %223
    i32 1, label %231
  ], !dbg !458

; <label>:214                                     ; preds = %213
  %215 = load float** %209, align 8, !dbg !459, !tbaa !236
  %216 = getelementptr inbounds float* %215, i64 %indvars.iv91, !dbg !459
  %217 = load float* %216, align 4, !dbg !459, !tbaa !245
  %218 = load float** %210, align 8, !dbg !460, !tbaa !236
  %219 = getelementptr inbounds float* %218, i64 %indvars.iv91, !dbg !460
  %220 = load float* %219, align 4, !dbg !460, !tbaa !245
  %221 = fadd float %217, %220, !dbg !461
  %222 = fmul float %221, 5.000000e-01, !dbg !462
  store float %222, float* %216, align 4, !dbg !463, !tbaa !245
  br label %248, !dbg !464

; <label>:223                                     ; preds = %213
  %224 = load float** %209, align 8, !dbg !465, !tbaa !236
  %225 = getelementptr inbounds float* %224, i64 %indvars.iv91, !dbg !465
  %226 = load float* %225, align 4, !dbg !465, !tbaa !245
  %227 = load float** %210, align 8, !dbg !465, !tbaa !236
  %228 = getelementptr inbounds float* %227, i64 %indvars.iv91, !dbg !465
  %229 = load float* %228, align 4, !dbg !465, !tbaa !245
  %230 = fcmp olt float %226, %229, !dbg !465
  %. = select i1 %230, float %226, float %229, !dbg !465
  store float %., float* %225, align 4, !dbg !466, !tbaa !245
  br label %248, !dbg !467

; <label>:231                                     ; preds = %213
  %232 = load float** %209, align 8, !dbg !468, !tbaa !236
  %233 = getelementptr inbounds float* %232, i64 %indvars.iv91, !dbg !468
  %234 = load float* %233, align 4, !dbg !468, !tbaa !245
  %235 = load float** %210, align 8, !dbg !468, !tbaa !236
  %236 = getelementptr inbounds float* %235, i64 %indvars.iv91, !dbg !468
  %237 = load float* %236, align 4, !dbg !468, !tbaa !245
  %238 = fcmp ogt float %234, %237, !dbg !468
  %.1 = select i1 %238, float %234, float %237, !dbg !468
  store float %.1, float* %233, align 4, !dbg !469, !tbaa !245
  br label %248, !dbg !470

; <label>:239                                     ; preds = %213
  %240 = load float** %209, align 8, !dbg !447, !tbaa !236
  %241 = getelementptr inbounds float* %240, i64 %indvars.iv91, !dbg !447
  %242 = load float* %241, align 4, !dbg !447, !tbaa !245
  %243 = load float** %210, align 8, !dbg !452, !tbaa !236
  %244 = getelementptr inbounds float* %243, i64 %indvars.iv91, !dbg !452
  %245 = load float* %244, align 4, !dbg !452, !tbaa !245
  %246 = fadd float %242, %245, !dbg !471
  %247 = fmul float %246, 5.000000e-01, !dbg !472
  store float %247, float* %241, align 4, !dbg !473, !tbaa !245
  br label %248, !dbg !474

; <label>:248                                     ; preds = %214, %223, %231, %239
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !453
  %lftr.wideiv95 = trunc i64 %indvars.iv91 to i32, !dbg !453
  %exitcond96 = icmp eq i32 %lftr.wideiv95, %indvars.iv99, !dbg !453
  br i1 %exitcond96, label %.lr.ph39, label %213, !dbg !453

; <label>:249                                     ; preds = %249, %.lr.ph39
  %indvars.iv97 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next98, %249 ]
  %250 = getelementptr inbounds float* %212, i64 %indvars.iv97, !dbg !454
  %251 = bitcast float* %250 to i32*, !dbg !454
  %252 = load i32* %251, align 4, !dbg !454, !tbaa !245
  %253 = getelementptr inbounds float** %4, i64 %indvars.iv97, !dbg !475
  %254 = load float** %253, align 8, !dbg !475, !tbaa !236
  %255 = getelementptr inbounds float* %254, i64 %54, !dbg !475
  %256 = bitcast float* %255 to i32*, !dbg !476
  store i32 %252, i32* %256, align 4, !dbg !476, !tbaa !245
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1, !dbg !457
  %lftr.wideiv101 = trunc i64 %indvars.iv97 to i32, !dbg !457
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %indvars.iv99, !dbg !457
  br i1 %exitcond102, label %._crit_edge40, label %249, !dbg !457

._crit_edge40:                                    ; preds = %249
  %257 = trunc i64 %indvars.iv103 to i32, !dbg !477
  %258 = add i32 %40, %257, !dbg !477
  %259 = getelementptr inbounds i32* %21, i64 %54, !dbg !478
  store i32 %258, i32* %259, align 4, !dbg !479, !tbaa !264
  %260 = icmp sgt i64 %indvars.iv.next104, 1, !dbg !480
  %indvars.iv.next100 = add i32 %indvars.iv99, -1, !dbg !272
  br i1 %260, label %.lr.ph18, label %._crit_edge44, !dbg !272

._crit_edge44:                                    ; preds = %._crit_edge40, %.preheader6
  %261 = bitcast i8* %3 to i8**, !dbg !481
  tail call void @Free2DArray(i8** %261, i32 %N) #5, !dbg !482
  tail call void @free(i8* %20) #6, !dbg !483
  tail call void @free(i8* %24) #6, !dbg !484
  store %struct.phylo_s* %37, %struct.phylo_s** %ret_tree, align 8, !dbg !485, !tbaa !236
  ret i32 1, !dbg !486
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.phylo_s* @AllocPhylo(i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !58, metadata !220), !dbg !487
  %1 = add nsw i32 %N, -1, !dbg !488
  %2 = sext i32 %1 to i64, !dbg !490
  %3 = mul nsw i64 %2, 40, !dbg !491
  %4 = tail call i8* @malloc(i64 %3) #5, !dbg !492
  %5 = bitcast i8* %4 to %struct.phylo_s*, !dbg !493
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %5, i64 0, metadata !59, metadata !220), !dbg !494
  %6 = icmp eq i8* %4, null, !dbg !495
  br i1 %6, label %.loopexit, label %.preheader, !dbg !496

.preheader:                                       ; preds = %0
  %7 = icmp sgt i32 %N, 1, !dbg !497
  br i1 %7, label %.lr.ph, label %.loopexit, !dbg !500

.lr.ph:                                           ; preds = %.preheader
  %8 = sext i32 %N to i64, !dbg !501
  br label %11, !dbg !500

; <label>:9                                       ; preds = %11
  %10 = icmp slt i64 %indvars.iv.next, %2, !dbg !497
  br i1 %10, label %11, label %.loopexit, !dbg !500

; <label>:11                                      ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %12 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 3, !dbg !504
  store float 0.000000e+00, float* %12, align 4, !dbg !505, !tbaa !320
  %13 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 5, !dbg !506
  store float 0.000000e+00, float* %13, align 4, !dbg !507, !tbaa !325
  %14 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 4, !dbg !508
  store float 0.000000e+00, float* %14, align 4, !dbg !509, !tbaa !328
  %15 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 0, !dbg !510
  store i32 -1, i32* %15, align 4, !dbg !511, !tbaa !308
  %16 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 2, !dbg !512
  store i32 -1, i32* %16, align 4, !dbg !513, !tbaa !298
  %17 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 1, !dbg !514
  store i32 -1, i32* %17, align 4, !dbg !515, !tbaa !293
  %18 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 7, !dbg !516
  store i32 0, i32* %18, align 4, !dbg !517, !tbaa !350
  %19 = tail call i8* @calloc(i64 %8, i64 1) #5, !dbg !518
  %20 = getelementptr inbounds %struct.phylo_s* %5, i64 %indvars.iv, i32 6, !dbg !519
  store i8* %19, i8** %20, align 8, !dbg !520, !tbaa !354
  %21 = icmp eq i8* %19, null, !dbg !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !500
  br i1 %21, label %.loopexit, label %9, !dbg !522

.loopexit:                                        ; preds = %11, %9, %.preheader, %0
  %.0 = phi %struct.phylo_s* [ null, %0 ], [ %5, %.preheader ], [ %5, %9 ], [ null, %11 ]
  ret %struct.phylo_s* %.0, !dbg !523
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @FreePhylo(%struct.phylo_s* nocapture %tree, i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %tree, i64 0, metadata !65, metadata !220), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !66, metadata !220), !dbg !525
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !220), !dbg !526
  %1 = icmp sgt i32 %N, 1, !dbg !527
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !530

.lr.ph:                                           ; preds = %0
  %2 = add nsw i32 %N, -1, !dbg !531
  %3 = sext i32 %2 to i64, !dbg !530
  br label %4, !dbg !530

; <label>:4                                       ; preds = %.lr.ph, %4
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 6, !dbg !532
  %6 = load i8** %5, align 8, !dbg !532, !tbaa !354
  tail call void @free(i8* %6) #6, !dbg !533
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !530
  %7 = icmp slt i64 %indvars.iv.next, %3, !dbg !527
  br i1 %7, label %4, label %._crit_edge, !dbg !530

._crit_edge:                                      ; preds = %4, %0
  %8 = bitcast %struct.phylo_s* %tree to i8*, !dbg !534
  tail call void @free(i8* %8) #6, !dbg !535
  ret void, !dbg !536
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MakeDiffMx(i8** nocapture readonly %aseqs, i32 %num, float*** nocapture %ret_dmx) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseqs, i64 0, metadata !74, metadata !220), !dbg !537
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !75, metadata !220), !dbg !538
  tail call void @llvm.dbg.value(metadata float*** %ret_dmx, i64 0, metadata !76, metadata !220), !dbg !539
  %1 = tail call float** @FMX2Alloc(i32 %num, i32 %num) #5, !dbg !540
  tail call void @llvm.dbg.value(metadata float** %1, i64 0, metadata !77, metadata !220), !dbg !541
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !78, metadata !220), !dbg !542
  %2 = icmp sgt i32 %num, 0, !dbg !543
  br i1 %2, label %.preheader.lr.ph, label %._crit_edge3, !dbg !546

.preheader.lr.ph:                                 ; preds = %0
  %3 = add i32 %num, -1, !dbg !546
  br label %.lr.ph, !dbg !546

.lr.ph:                                           ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %._crit_edge ]
  %4 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv6, !dbg !547
  %5 = getelementptr inbounds float** %1, i64 %indvars.iv6, !dbg !550
  br label %6, !dbg !551

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv6, %.lr.ph ], [ %indvars.iv.next5, %6 ]
  %7 = load i8** %4, align 8, !dbg !547, !tbaa !236
  %8 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv4, !dbg !552
  %9 = load i8** %8, align 8, !dbg !552, !tbaa !236
  %10 = tail call float @PairwiseIdentity(i8* %7, i8* %9) #5, !dbg !553
  %11 = fsub float 1.000000e+00, %10, !dbg !554
  %12 = getelementptr inbounds float** %1, i64 %indvars.iv4, !dbg !555
  %13 = load float** %12, align 8, !dbg !555, !tbaa !236
  %14 = getelementptr inbounds float* %13, i64 %indvars.iv6, !dbg !555
  store float %11, float* %14, align 4, !dbg !556, !tbaa !245
  %15 = load float** %5, align 8, !dbg !550, !tbaa !236
  %16 = getelementptr inbounds float* %15, i64 %indvars.iv4, !dbg !550
  store float %11, float* %16, align 4, !dbg !557, !tbaa !245
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !551
  %lftr.wideiv = trunc i64 %indvars.iv4 to i32, !dbg !551
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !551
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !551

._crit_edge:                                      ; preds = %6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !546
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32, !dbg !546
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %3, !dbg !546
  br i1 %exitcond9, label %._crit_edge3, label %.lr.ph, !dbg !546

._crit_edge3:                                     ; preds = %._crit_edge, %0
  store float** %1, float*** %ret_dmx, align 8, !dbg !558, !tbaa !236
  ret void, !dbg !559
}

; Function Attrs: optsize
declare float** @FMX2Alloc(i32, i32) #1

; Function Attrs: optsize
declare float @PairwiseIdentity(i8*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @MakeIdentityMx(i8** nocapture readonly %aseqs, i32 %num, float*** nocapture %ret_imx) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseqs, i64 0, metadata !82, metadata !220), !dbg !560
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !83, metadata !220), !dbg !561
  tail call void @llvm.dbg.value(metadata float*** %ret_imx, i64 0, metadata !84, metadata !220), !dbg !562
  %1 = tail call float** @FMX2Alloc(i32 %num, i32 %num) #5, !dbg !563
  tail call void @llvm.dbg.value(metadata float** %1, i64 0, metadata !85, metadata !220), !dbg !564
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !86, metadata !220), !dbg !565
  %2 = icmp sgt i32 %num, 0, !dbg !566
  br i1 %2, label %.preheader.lr.ph, label %._crit_edge3, !dbg !569

.preheader.lr.ph:                                 ; preds = %0
  %3 = add i32 %num, -1, !dbg !569
  br label %.lr.ph, !dbg !569

.lr.ph:                                           ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %._crit_edge ]
  %4 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv6, !dbg !570
  %5 = getelementptr inbounds float** %1, i64 %indvars.iv6, !dbg !573
  br label %6, !dbg !574

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv6, %.lr.ph ], [ %indvars.iv.next5, %6 ]
  %7 = load i8** %4, align 8, !dbg !570, !tbaa !236
  %8 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv4, !dbg !575
  %9 = load i8** %8, align 8, !dbg !575, !tbaa !236
  %10 = tail call float @PairwiseIdentity(i8* %7, i8* %9) #5, !dbg !576
  %11 = getelementptr inbounds float** %1, i64 %indvars.iv4, !dbg !577
  %12 = load float** %11, align 8, !dbg !577, !tbaa !236
  %13 = getelementptr inbounds float* %12, i64 %indvars.iv6, !dbg !577
  store float %10, float* %13, align 4, !dbg !578, !tbaa !245
  %14 = load float** %5, align 8, !dbg !573, !tbaa !236
  %15 = getelementptr inbounds float* %14, i64 %indvars.iv4, !dbg !573
  store float %10, float* %15, align 4, !dbg !579, !tbaa !245
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !574
  %lftr.wideiv = trunc i64 %indvars.iv4 to i32, !dbg !574
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !574
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !574

._crit_edge:                                      ; preds = %6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !569
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32, !dbg !569
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %3, !dbg !569
  br i1 %exitcond9, label %._crit_edge3, label %.lr.ph, !dbg !569

._crit_edge3:                                     ; preds = %._crit_edge, %0
  store float** %1, float*** %ret_imx, align 8, !dbg !580, !tbaa !236
  ret void, !dbg !581
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PrintNewHampshireTree(%struct.__sFILE* %fp, %struct.aliinfo_s* nocapture readonly %ainfo, %struct.phylo_s* nocapture readonly %tree, i32 %N) #0 {
  %code = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !195, metadata !220), !dbg !582
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !196, metadata !220), !dbg !583
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %tree, i64 0, metadata !197, metadata !220), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !198, metadata !220), !dbg !585
  %1 = shl nsw i32 %N, 1, !dbg !586
  %2 = add nsw i32 %1, -1, !dbg !586
  %3 = sext i32 %2 to i64, !dbg !586
  %4 = shl nsw i64 %3, 2, !dbg !586
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 464, i64 %4) #5, !dbg !586
  %6 = bitcast i8* %5 to float*, !dbg !587
  tail call void @llvm.dbg.value(metadata float* %6, i64 0, metadata !206, metadata !220), !dbg !588
  %7 = tail call %struct.intstack_s* @InitIntStack() #5, !dbg !589
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %7, i64 0, metadata !199, metadata !220), !dbg !590
  tail call void @PushIntStack(%struct.intstack_s* %7, i32 %N) #5, !dbg !591
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !207, metadata !220), !dbg !592
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %8 = call i32 @PopIntStack(%struct.intstack_s* %7, i32* %code) #5, !dbg !594
  %9 = icmp eq i32 %8, 0, !dbg !595
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !595

.lr.ph:                                           ; preds = %0
  %10 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !596
  br label %11, !dbg !595

; <label>:11                                      ; preds = %.lr.ph, %.backedge
  %docomma.01 = phi i32 [ 0, %.lr.ph ], [ %docomma.0.be, %.backedge ]
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %12 = load i32* %code, align 4, !dbg !600, !tbaa !264
  %13 = icmp slt i32 %12, %N, !dbg !601
  br i1 %13, label %14, label %27, !dbg !602

; <label>:14                                      ; preds = %11
  %15 = icmp eq i32 %docomma.01, 0, !dbg !603
  br i1 %15, label %18, label %16, !dbg !605

; <label>:16                                      ; preds = %14
  %17 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), %struct.__sFILE* %fp) #5, !dbg !606
  %.pre = load i32* %code, align 4, !dbg !607, !tbaa !264
  br label %18, !dbg !606

; <label>:18                                      ; preds = %14, %16
  %19 = phi i32 [ %12, %14 ], [ %.pre, %16 ]
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %20 = sext i32 %19 to i64, !dbg !608
  %21 = load %struct.seqinfo_s** %10, align 8, !dbg !596, !tbaa !609
  %22 = getelementptr inbounds %struct.seqinfo_s* %21, i64 %20, i32 1, i64 0, !dbg !608
  %23 = getelementptr inbounds float* %6, i64 %20, !dbg !611
  %24 = load float* %23, align 4, !dbg !611, !tbaa !245
  %25 = fpext float %24 to double, !dbg !611
  %26 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* %22, double %25) #5, !dbg !612
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !207, metadata !220), !dbg !592
  br label %.backedge, !dbg !613

; <label>:27                                      ; preds = %11
  %28 = icmp slt i32 %12, %1, !dbg !614
  br i1 %28, label %29, label %68, !dbg !616

; <label>:29                                      ; preds = %27
  %30 = icmp eq i32 %docomma.01, 0, !dbg !617
  br i1 %30, label %33, label %31, !dbg !620

; <label>:31                                      ; preds = %29
  %32 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), %struct.__sFILE* %fp) #5, !dbg !621
  br label %33, !dbg !621

; <label>:33                                      ; preds = %29, %31
  %34 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), %struct.__sFILE* %fp) #5, !dbg !622
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %35 = load i32* %code, align 4, !dbg !623, !tbaa !264
  %36 = add nsw i32 %35, %N, !dbg !624
  call void @PushIntStack(%struct.intstack_s* %7, i32 %36) #5, !dbg !625
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %37 = load i32* %code, align 4, !dbg !626, !tbaa !264
  %38 = sub nsw i32 %37, %N, !dbg !627
  %39 = sext i32 %38 to i64, !dbg !628
  %40 = getelementptr inbounds %struct.phylo_s* %tree, i64 %39, i32 2, !dbg !629
  %41 = load i32* %40, align 4, !dbg !629, !tbaa !298
  call void @PushIntStack(%struct.intstack_s* %7, i32 %41) #5, !dbg !630
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %42 = load i32* %code, align 4, !dbg !631, !tbaa !264
  %43 = sub nsw i32 %42, %N, !dbg !632
  %44 = sext i32 %43 to i64, !dbg !633
  %45 = getelementptr inbounds %struct.phylo_s* %tree, i64 %44, i32 1, !dbg !634
  %46 = load i32* %45, align 4, !dbg !634, !tbaa !293
  call void @PushIntStack(%struct.intstack_s* %7, i32 %46) #5, !dbg !635
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %47 = load i32* %code, align 4, !dbg !636, !tbaa !264
  %48 = sub nsw i32 %47, %N, !dbg !637
  %49 = sext i32 %48 to i64, !dbg !638
  %50 = getelementptr inbounds %struct.phylo_s* %tree, i64 %49, i32 5, !dbg !639
  %51 = bitcast float* %50 to i32*, !dbg !639
  %52 = load i32* %51, align 4, !dbg !639, !tbaa !325
  %53 = getelementptr inbounds %struct.phylo_s* %tree, i64 %49, i32 2, !dbg !640
  %54 = load i32* %53, align 4, !dbg !640, !tbaa !298
  %55 = sext i32 %54 to i64, !dbg !641
  %56 = getelementptr inbounds float* %6, i64 %55, !dbg !641
  %57 = bitcast float* %56 to i32*, !dbg !642
  store i32 %52, i32* %57, align 4, !dbg !642, !tbaa !245
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %58 = getelementptr inbounds %struct.phylo_s* %tree, i64 %49, i32 4, !dbg !643
  %59 = bitcast float* %58 to i32*, !dbg !643
  %60 = load i32* %59, align 4, !dbg !643, !tbaa !328
  %61 = getelementptr inbounds %struct.phylo_s* %tree, i64 %49, i32 1, !dbg !644
  %62 = load i32* %61, align 4, !dbg !644, !tbaa !293
  %63 = sext i32 %62 to i64, !dbg !645
  %64 = getelementptr inbounds float* %6, i64 %63, !dbg !645
  %65 = bitcast float* %64 to i32*, !dbg !646
  store i32 %60, i32* %65, align 4, !dbg !646, !tbaa !245
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !207, metadata !220), !dbg !592
  br label %.backedge, !dbg !647

.backedge:                                        ; preds = %33, %18, %72, %70
  %docomma.0.be = phi i32 [ 1, %18 ], [ 0, %33 ], [ 1, %72 ], [ 1, %70 ]
  call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !205, metadata !220), !dbg !593
  %66 = call i32 @PopIntStack(%struct.intstack_s* %7, i32* %code) #5, !dbg !594
  %67 = icmp eq i32 %66, 0, !dbg !595
  br i1 %67, label %._crit_edge, label %11, !dbg !595

; <label>:68                                      ; preds = %27
  %69 = icmp eq i32 %12, %1, !dbg !648
  br i1 %69, label %70, label %72, !dbg !651

; <label>:70                                      ; preds = %68
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp), !dbg !652
  br label %.backedge, !dbg !652

; <label>:72                                      ; preds = %68
  %73 = sub nsw i32 %12, %N, !dbg !653
  %74 = sext i32 %73 to i64, !dbg !654
  %75 = getelementptr inbounds float* %6, i64 %74, !dbg !654
  %76 = load float* %75, align 4, !dbg !654, !tbaa !245
  %77 = fpext float %76 to double, !dbg !654
  %78 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), double %77) #5, !dbg !655
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %0
  %79 = call i32 @FreeIntStack(%struct.intstack_s* %7) #5, !dbg !656
  call void @free(i8* %5) #6, !dbg !657
  ret void, !dbg !658
}

; Function Attrs: optsize
declare %struct.intstack_s* @InitIntStack() #1

; Function Attrs: optsize
declare void @PushIntStack(%struct.intstack_s*, i32) #1

; Function Attrs: optsize
declare i32 @PopIntStack(%struct.intstack_s*, i32*) #1

; Function Attrs: optsize
declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: optsize
declare i32 @FreeIntStack(%struct.intstack_s*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @PrintPhylo(%struct.__sFILE* nocapture %fp, %struct.aliinfo_s* nocapture readonly %ainfo, %struct.phylo_s* nocapture readonly %tree, i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !210, metadata !220), !dbg !659
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !211, metadata !220), !dbg !660
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %tree, i64 0, metadata !212, metadata !220), !dbg !661
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !213, metadata !220), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !220), !dbg !663
  %1 = icmp sgt i32 %N, 1, !dbg !664
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !667

.lr.ph:                                           ; preds = %0
  %2 = add nsw i32 %N, -1, !dbg !668
  %3 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !669
  %4 = sext i32 %2 to i64, !dbg !667
  br label %5, !dbg !667

; <label>:5                                       ; preds = %.lr.ph, %35
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %35 ]
  %idx.02 = phi i32 [ 0, %.lr.ph ], [ %48, %35 ]
  %6 = add nsw i32 %idx.02, %N, !dbg !671
  %7 = trunc i64 %indvars.iv to i32, !dbg !672
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str8, i64 0, i64 0), i32 %7, i32 %6) #5, !dbg !672
  %9 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 0, !dbg !673
  %10 = load i32* %9, align 4, !dbg !673, !tbaa !308
  %11 = sub nsw i32 %10, %N, !dbg !674
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i32 %11, i32 %10) #5, !dbg !675
  %13 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 1, !dbg !676
  %14 = load i32* %13, align 4, !dbg !676, !tbaa !293
  %15 = icmp slt i32 %14, %N, !dbg !677
  %16 = select i1 %15, i32 %N, i32 0, !dbg !678
  %. = sub nsw i32 %14, %16, !dbg !678
  br i1 %15, label %17, label %21, !dbg !679

; <label>:17                                      ; preds = %5
  %18 = sext i32 %14 to i64, !dbg !680
  %19 = load %struct.seqinfo_s** %3, align 8, !dbg !669, !tbaa !609
  %20 = getelementptr inbounds %struct.seqinfo_s* %19, i64 %18, i32 1, i64 0, !dbg !680
  br label %21, !dbg !679

; <label>:21                                      ; preds = %5, %17
  %22 = phi i8* [ %20, %17 ], [ getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), %5 ], !dbg !679
  %23 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 4, !dbg !681
  %24 = load float* %23, align 4, !dbg !681, !tbaa !328
  %25 = fpext float %24 to double, !dbg !682
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), i32 %., i8* %22, double %25) #5, !dbg !683
  %27 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 2, !dbg !684
  %28 = load i32* %27, align 4, !dbg !684, !tbaa !298
  %29 = icmp slt i32 %28, %N, !dbg !685
  %30 = select i1 %29, i32 %N, i32 0, !dbg !686
  %.1 = sub nsw i32 %28, %30, !dbg !686
  br i1 %29, label %31, label %35, !dbg !687

; <label>:31                                      ; preds = %21
  %32 = sext i32 %28 to i64, !dbg !688
  %33 = load %struct.seqinfo_s** %3, align 8, !dbg !689, !tbaa !609
  %34 = getelementptr inbounds %struct.seqinfo_s* %33, i64 %32, i32 1, i64 0, !dbg !688
  br label %35, !dbg !687

; <label>:35                                      ; preds = %21, %31
  %36 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), %21 ], !dbg !687
  %37 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 5, !dbg !690
  %38 = load float* %37, align 4, !dbg !690, !tbaa !325
  %39 = fpext float %38 to double, !dbg !691
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), i32 %.1, i8* %36, double %39) #5, !dbg !692
  %41 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 3, !dbg !693
  %42 = load float* %41, align 4, !dbg !693, !tbaa !320
  %43 = fpext float %42 to double, !dbg !694
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), double %43) #5, !dbg !695
  %45 = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 7, !dbg !696
  %46 = load i32* %45, align 4, !dbg !696, !tbaa !350
  %47 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i32 %46) #5, !dbg !697
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !667
  %48 = add nuw nsw i32 %idx.02, 1, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !214, metadata !220), !dbg !663
  %49 = icmp slt i64 %indvars.iv.next, %4, !dbg !664
  br i1 %49, label %5, label %._crit_edge, !dbg !667

._crit_edge:                                      ; preds = %35, %0
  ret void, !dbg !699
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!216, !217, !218}
!llvm.ident = !{!219}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !28, globals: !215, imports: !215)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/cluster.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clust_strategy", file: !4, line: 273, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "CLUSTER_MEAN", value: 0)
!7 = !DIEnumerator(name: "CLUSTER_MAX", value: 1)
!8 = !DIEnumerator(name: "CLUSTER_MIN", value: 2)
!9 = !{!10, !11, !12, !24, !27}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "phylo_s", file: !4, line: 258, size: 320, align: 64, elements: !14)
!14 = !{!15, !17, !18, !19, !21, !22, !23, !26}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !13, file: !4, line: 259, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !13, file: !4, line: 260, baseType: !16, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !13, file: !4, line: 261, baseType: !16, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "diff", scope: !13, file: !4, line: 262, baseType: !20, size: 32, align: 32, offset: 96)
!20 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "lblen", scope: !13, file: !4, line: 263, baseType: !20, size: 32, align: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "rblen", scope: !13, file: !4, line: 264, baseType: !20, size: 32, align: 32, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "is_in", scope: !13, file: !4, line: 265, baseType: !24, size: 64, align: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "incnum", scope: !13, file: !4, line: 266, baseType: !16, size: 32, align: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!28 = !{!29, !54, !61, !68, !80, !88, !208}
!29 = !DISubprogram(name: "Cluster", scope: !1, file: !1, line: 148, type: !30, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float**, i32, i32, %struct.phylo_s**)* @Cluster, variables: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{!16, !32, !16, !3, !33}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dmx", arg: 1, scope: !29, file: !1, line: 148, type: !32)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 2, scope: !29, file: !1, line: 148, type: !16)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !29, file: !1, line: 148, type: !3)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_tree", arg: 4, scope: !29, file: !1, line: 148, type: !33)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !29, file: !1, line: 150, type: !12)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mx", scope: !29, file: !1, line: 151, type: !32)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord", scope: !29, file: !1, line: 152, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !29, file: !1, line: 153, type: !16)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !29, file: !1, line: 153, type: !16)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !29, file: !1, line: 154, type: !16)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Np", scope: !29, file: !1, line: 155, type: !16)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !29, file: !1, line: 156, type: !16)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !29, file: !1, line: 156, type: !16)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !29, file: !1, line: 157, type: !20)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trow", scope: !29, file: !1, line: 158, type: !27)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tcol", scope: !29, file: !1, line: 159, type: !20)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !29, file: !1, line: 160, type: !27)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "swapfoo", scope: !29, file: !1, line: 161, type: !16)
!54 = !DISubprogram(name: "AllocPhylo", scope: !1, file: !1, line: 329, type: !55, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: %struct.phylo_s* (i32)* @AllocPhylo, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!12, !16}
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 1, scope: !54, file: !1, line: 329, type: !16)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !54, file: !1, line: 331, type: !12)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !54, file: !1, line: 332, type: !16)
!61 = !DISubprogram(name: "FreePhylo", scope: !1, file: !1, line: 360, type: !62, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.phylo_s*, i32)* @FreePhylo, variables: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !12, !16}
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !61, file: !1, line: 360, type: !12)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 2, scope: !61, file: !1, line: 360, type: !16)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !61, file: !1, line: 362, type: !16)
!68 = !DISubprogram(name: "MakeDiffMx", scope: !1, file: !1, line: 384, type: !69, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, float***)* @MakeDiffMx, variables: !73)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !16, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!73 = !{!74, !75, !76, !77, !78, !79}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !68, file: !1, line: 384, type: !71)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 2, scope: !68, file: !1, line: 384, type: !16)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dmx", arg: 3, scope: !68, file: !1, line: 384, type: !72)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmx", scope: !68, file: !1, line: 386, type: !32)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !68, file: !1, line: 387, type: !16)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !68, file: !1, line: 387, type: !16)
!80 = !DISubprogram(name: "MakeIdentityMx", scope: !1, file: !1, line: 420, type: !69, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, float***)* @MakeIdentityMx, variables: !81)
!81 = !{!82, !83, !84, !85, !86, !87}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !80, file: !1, line: 420, type: !71)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 2, scope: !80, file: !1, line: 420, type: !16)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_imx", arg: 3, scope: !80, file: !1, line: 420, type: !72)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imx", scope: !80, file: !1, line: 422, type: !32)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !80, file: !1, line: 423, type: !16)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !80, file: !1, line: 423, type: !16)
!88 = !DISubprogram(name: "PrintNewHampshireTree", scope: !1, file: !1, line: 457, type: !89, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.aliinfo_s*, %struct.phylo_s*, i32)* @PrintNewHampshireTree, variables: !194)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !151, !12, !16}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 153, baseType: !94)
!93 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !93, line: 122, size: 1216, align: 64, elements: !95)
!95 = !{!96, !99, !100, !101, !103, !104, !109, !110, !111, !115, !119, !129, !135, !136, !139, !140, !144, !148, !149, !150}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !94, file: !93, line: 123, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !94, file: !93, line: 124, baseType: !16, size: 32, align: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !94, file: !93, line: 125, baseType: !16, size: 32, align: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !94, file: !93, line: 126, baseType: !102, size: 16, align: 16, offset: 128)
!102 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !94, file: !93, line: 127, baseType: !102, size: 16, align: 16, offset: 144)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !94, file: !93, line: 128, baseType: !105, size: 128, align: 64, offset: 192)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !93, line: 88, size: 128, align: 64, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !105, file: !93, line: 89, baseType: !97, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !105, file: !93, line: 90, baseType: !16, size: 32, align: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !94, file: !93, line: 129, baseType: !16, size: 32, align: 32, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !94, file: !93, line: 132, baseType: !10, size: 64, align: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !94, file: !93, line: 133, baseType: !112, size: 64, align: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!16, !10}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !94, file: !93, line: 134, baseType: !116, size: 64, align: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!16, !10, !24, !16}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !94, file: !93, line: 135, baseType: !120, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !10, !123, !16}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !93, line: 77, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !125, line: 71, baseType: !126)
!125 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !127, line: 46, baseType: !128)
!127 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!128 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !94, file: !93, line: 136, baseType: !130, size: 64, align: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!16, !10, !133, !16}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !94, file: !93, line: 139, baseType: !105, size: 128, align: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !94, file: !93, line: 140, baseType: !137, size: 64, align: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !93, line: 94, flags: DIFlagFwdDecl)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !94, file: !93, line: 141, baseType: !16, size: 32, align: 32, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !94, file: !93, line: 144, baseType: !141, size: 24, align: 8, offset: 928)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, align: 8, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 3)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !94, file: !93, line: 145, baseType: !145, size: 8, align: 8, offset: 952)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8, align: 8, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 1)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !94, file: !93, line: 148, baseType: !105, size: 128, align: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !94, file: !93, line: 151, baseType: !16, size: 32, align: 32, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !94, file: !93, line: 152, baseType: !123, size: 64, align: 64, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "AINFO", file: !153, line: 83, baseType: !154)
!153 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "aliinfo_s", file: !153, line: 65, size: 832, align: 64, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !153, line: 66, baseType: !16, size: 32, align: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !154, file: !153, line: 67, baseType: !16, size: 32, align: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !154, file: !153, line: 68, baseType: !16, size: 32, align: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !154, file: !153, line: 69, baseType: !27, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !154, file: !153, line: 70, baseType: !24, size: 64, align: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !154, file: !153, line: 71, baseType: !24, size: 64, align: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sqinfo", scope: !154, file: !153, line: 72, baseType: !163, size: 64, align: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "seqinfo_s", file: !4, line: 84, size: 2880, align: 64, elements: !165)
!165 = !{!166, !167, !171, !172, !173, !177, !178, !179, !180, !181, !182, !183}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !4, line: 85, baseType: !16, size: 32, align: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !4, line: 86, baseType: !168, size: 512, align: 8, offset: 32)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, align: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !164, file: !4, line: 87, baseType: !168, size: 512, align: 8, offset: 544)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !164, file: !4, line: 88, baseType: !168, size: 512, align: 8, offset: 1056)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !164, file: !4, line: 89, baseType: !174, size: 1024, align: 8, offset: 1568)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1024, align: 8, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !164, file: !4, line: 90, baseType: !16, size: 32, align: 32, offset: 2592)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !164, file: !4, line: 91, baseType: !16, size: 32, align: 32, offset: 2624)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !164, file: !4, line: 92, baseType: !16, size: 32, align: 32, offset: 2656)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "olen", scope: !164, file: !4, line: 93, baseType: !16, size: 32, align: 32, offset: 2688)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !4, line: 94, baseType: !16, size: 32, align: 32, offset: 2720)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !164, file: !4, line: 95, baseType: !24, size: 64, align: 64, offset: 2752)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !164, file: !4, line: 96, baseType: !24, size: 64, align: 64, offset: 2816)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !153, line: 75, baseType: !24, size: 64, align: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !154, file: !153, line: 76, baseType: !24, size: 64, align: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !154, file: !153, line: 77, baseType: !24, size: 64, align: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !154, file: !153, line: 78, baseType: !24, size: 64, align: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !154, file: !153, line: 79, baseType: !20, size: 32, align: 32, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !154, file: !153, line: 79, baseType: !20, size: 32, align: 32, offset: 672)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !154, file: !153, line: 80, baseType: !20, size: 32, align: 32, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !154, file: !153, line: 80, baseType: !20, size: 32, align: 32, offset: 736)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !154, file: !153, line: 81, baseType: !20, size: 32, align: 32, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !154, file: !153, line: 81, baseType: !20, size: 32, align: 32, offset: 800)
!194 = !{!195, !196, !197, !198, !199, !205, !206, !207}
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !88, file: !1, line: 457, type: !91)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 2, scope: !88, file: !1, line: 457, type: !151)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 3, scope: !88, file: !1, line: 457, type: !12)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 4, scope: !88, file: !1, line: 457, type: !16)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stack", scope: !88, file: !1, line: 459, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "intstack_s", file: !4, line: 282, size: 128, align: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !201, file: !4, line: 283, baseType: !16, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !201, file: !4, line: 284, baseType: !200, size: 64, align: 64, offset: 64)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !88, file: !1, line: 460, type: !16)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blen", scope: !88, file: !1, line: 461, type: !27)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "docomma", scope: !88, file: !1, line: 462, type: !16)
!208 = !DISubprogram(name: "PrintPhylo", scope: !1, file: !1, line: 520, type: !89, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.aliinfo_s*, %struct.phylo_s*, i32)* @PrintPhylo, variables: !209)
!209 = !{!210, !211, !212, !213, !214}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !208, file: !1, line: 520, type: !91)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 2, scope: !208, file: !1, line: 520, type: !151)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 3, scope: !208, file: !1, line: 520, type: !12)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 4, scope: !208, file: !1, line: 520, type: !16)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !208, file: !1, line: 522, type: !16)
!215 = !{}
!216 = !{i32 2, !"Dwarf Version", i32 2}
!217 = !{i32 2, !"Debug Info Version", i32 700000003}
!218 = !{i32 1, !"PIC Level", i32 2}
!219 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!220 = !DIExpression()
!221 = !DILocation(line: 148, column: 17, scope: !29)
!222 = !DILocation(line: 148, column: 26, scope: !29)
!223 = !DILocation(line: 148, column: 49, scope: !29)
!224 = !DILocation(line: 148, column: 72, scope: !29)
!225 = !DILocation(line: 168, column: 8, scope: !29)
!226 = !DILocation(line: 151, column: 14, scope: !29)
!227 = !DILocation(line: 153, column: 14, scope: !29)
!228 = !DILocation(line: 169, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 169, column: 3)
!230 = distinct !DILexicalBlock(scope: !29, file: !1, line: 169, column: 3)
!231 = !DILocation(line: 171, column: 15, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 170, column: 5)
!233 = !DILocation(line: 169, column: 3, scope: !230)
!234 = !DILocation(line: 171, column: 7, scope: !232)
!235 = !DILocation(line: 171, column: 13, scope: !232)
!236 = !{!237, !237, i64 0}
!237 = !{!"any pointer", !238, i64 0}
!238 = !{!"omnipotent char", !239, i64 0}
!239 = !{!"Simple C/C++ TBAA"}
!240 = !DILocation(line: 153, column: 17, scope: !29)
!241 = !DILocation(line: 173, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 172, column: 7)
!243 = distinct !DILexicalBlock(scope: !232, file: !1, line: 172, column: 7)
!244 = !DILocation(line: 172, column: 7, scope: !243)
!245 = !{!246, !246, i64 0}
!246 = !{!"float", !238, i64 0}
!247 = !DILocation(line: 173, column: 2, scope: !242)
!248 = !DILocation(line: 173, column: 11, scope: !242)
!249 = !DILocation(line: 176, column: 11, scope: !29)
!250 = !DILocation(line: 152, column: 14, scope: !29)
!251 = !DILocation(line: 177, column: 11, scope: !29)
!252 = !DILocation(line: 160, column: 14, scope: !29)
!253 = !DILocation(line: 156, column: 19, scope: !29)
!254 = !DILocation(line: 179, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !29, file: !1, line: 179, column: 3)
!256 = !DILocation(line: 180, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 180, column: 3)
!258 = distinct !DILexicalBlock(scope: !29, file: !1, line: 180, column: 3)
!259 = !DILocation(line: 180, column: 3, scope: !258)
!260 = !DILocation(line: 180, column: 42, scope: !257)
!261 = !DILocation(line: 179, column: 34, scope: !262)
!262 = distinct !DILexicalBlock(scope: !255, file: !1, line: 179, column: 3)
!263 = !DILocation(line: 179, column: 45, scope: !262)
!264 = !{!265, !265, i64 0}
!265 = !{!"int", !238, i64 0}
!266 = !DILocation(line: 183, column: 15, scope: !267)
!267 = distinct !DILexicalBlock(scope: !29, file: !1, line: 183, column: 7)
!268 = !DILocation(line: 150, column: 19, scope: !29)
!269 = !DILocation(line: 183, column: 30, scope: !267)
!270 = !DILocation(line: 183, column: 7, scope: !29)
!271 = !DILocation(line: 183, column: 40, scope: !267)
!272 = !DILocation(line: 191, column: 3, scope: !273)
!273 = distinct !DILexicalBlock(scope: !29, file: !1, line: 191, column: 3)
!274 = !DILocation(line: 303, column: 23, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 192, column: 5)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 191, column: 3)
!277 = !DILocation(line: 195, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 195, column: 7)
!279 = !DILocation(line: 196, column: 24, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 196, column: 2)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 196, column: 2)
!282 = distinct !DILexicalBlock(scope: !278, file: !1, line: 195, column: 7)
!283 = !DILocation(line: 196, column: 2, scope: !281)
!284 = !DILocation(line: 197, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 197, column: 8)
!286 = !DILocation(line: 197, column: 21, scope: !285)
!287 = !DILocation(line: 157, column: 14, scope: !29)
!288 = !DILocation(line: 197, column: 8, scope: !280)
!289 = !DILocation(line: 208, column: 26, scope: !275)
!290 = !DILocation(line: 208, column: 14, scope: !275)
!291 = !DILocation(line: 208, column: 18, scope: !275)
!292 = !DILocation(line: 208, column: 24, scope: !275)
!293 = !{!294, !265, i64 4}
!294 = !{!"phylo_s", !265, i64 0, !265, i64 4, !265, i64 8, !246, i64 12, !246, i64 16, !246, i64 20, !237, i64 24, !265, i64 32}
!295 = !DILocation(line: 209, column: 26, scope: !275)
!296 = !DILocation(line: 209, column: 18, scope: !275)
!297 = !DILocation(line: 209, column: 24, scope: !275)
!298 = !{!294, !265, i64 8}
!299 = !DILocation(line: 210, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !275, file: !1, line: 210, column: 11)
!301 = !DILocation(line: 210, column: 20, scope: !300)
!302 = !DILocation(line: 210, column: 11, scope: !275)
!303 = !DILocation(line: 210, column: 59, scope: !300)
!304 = !DILocation(line: 210, column: 39, scope: !300)
!305 = !DILocation(line: 210, column: 26, scope: !300)
!306 = !DILocation(line: 210, column: 43, scope: !300)
!307 = !DILocation(line: 210, column: 50, scope: !300)
!308 = !{!294, !265, i64 0}
!309 = !DILocation(line: 211, column: 11, scope: !310)
!310 = distinct !DILexicalBlock(scope: !275, file: !1, line: 211, column: 11)
!311 = !DILocation(line: 211, column: 20, scope: !310)
!312 = !DILocation(line: 211, column: 11, scope: !275)
!313 = !DILocation(line: 211, column: 59, scope: !310)
!314 = !DILocation(line: 211, column: 39, scope: !310)
!315 = !DILocation(line: 211, column: 26, scope: !310)
!316 = !DILocation(line: 211, column: 43, scope: !310)
!317 = !DILocation(line: 211, column: 50, scope: !310)
!318 = !DILocation(line: 214, column: 31, scope: !275)
!319 = !DILocation(line: 214, column: 36, scope: !275)
!320 = !{!294, !246, i64 12}
!321 = !DILocation(line: 214, column: 7, scope: !275)
!322 = !DILocation(line: 214, column: 18, scope: !275)
!323 = !DILocation(line: 217, column: 37, scope: !275)
!324 = !DILocation(line: 217, column: 43, scope: !275)
!325 = !{!294, !246, i64 20}
!326 = !DILocation(line: 217, column: 18, scope: !275)
!327 = !DILocation(line: 217, column: 24, scope: !275)
!328 = !{!294, !246, i64 16}
!329 = !DILocation(line: 218, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !275, file: !1, line: 218, column: 11)
!331 = !DILocation(line: 218, column: 20, scope: !330)
!332 = !DILocation(line: 218, column: 11, scope: !275)
!333 = !DILocation(line: 218, column: 59, scope: !330)
!334 = !DILocation(line: 218, column: 46, scope: !330)
!335 = !DILocation(line: 218, column: 43, scope: !330)
!336 = !DILocation(line: 218, column: 26, scope: !330)
!337 = !DILocation(line: 219, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !275, file: !1, line: 219, column: 11)
!339 = !DILocation(line: 219, column: 20, scope: !338)
!340 = !DILocation(line: 219, column: 11, scope: !275)
!341 = !DILocation(line: 219, column: 59, scope: !338)
!342 = !DILocation(line: 219, column: 46, scope: !338)
!343 = !DILocation(line: 219, column: 43, scope: !338)
!344 = !DILocation(line: 219, column: 26, scope: !338)
!345 = !DILocation(line: 222, column: 11, scope: !275)
!346 = !DILocation(line: 224, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 223, column: 2)
!348 = distinct !DILexicalBlock(scope: !275, file: !1, line: 222, column: 11)
!349 = !DILocation(line: 224, column: 22, scope: !347)
!350 = !{!294, !265, i64 32}
!351 = !DILocation(line: 225, column: 21, scope: !347)
!352 = !DILocation(line: 225, column: 4, scope: !347)
!353 = !DILocation(line: 225, column: 15, scope: !347)
!354 = !{!294, !237, i64 24}
!355 = !DILocation(line: 225, column: 31, scope: !347)
!356 = !{!238, !238, i64 0}
!357 = !DILocation(line: 226, column: 2, scope: !347)
!358 = !DILocation(line: 229, column: 38, scope: !359)
!359 = distinct !DILexicalBlock(scope: !348, file: !1, line: 228, column: 2)
!360 = !DILocation(line: 229, column: 25, scope: !359)
!361 = !DILocation(line: 229, column: 42, scope: !359)
!362 = !DILocation(line: 229, column: 15, scope: !359)
!363 = !DILocation(line: 229, column: 22, scope: !359)
!364 = !DILocation(line: 154, column: 14, scope: !29)
!365 = !DILocation(line: 230, column: 4, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !1, line: 230, column: 4)
!367 = !DILocation(line: 231, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !1, line: 230, column: 4)
!369 = !DILocation(line: 231, column: 36, scope: !368)
!370 = !DILocation(line: 231, column: 44, scope: !368)
!371 = !DILocation(line: 231, column: 31, scope: !368)
!372 = !DILocation(line: 231, column: 48, scope: !368)
!373 = !DILocation(line: 231, column: 6, scope: !368)
!374 = !DILocation(line: 231, column: 28, scope: !368)
!375 = !DILocation(line: 234, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !275, file: !1, line: 234, column: 11)
!377 = !DILocation(line: 234, column: 20, scope: !376)
!378 = !DILocation(line: 234, column: 11, scope: !275)
!379 = !DILocation(line: 236, column: 15, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !1, line: 235, column: 2)
!381 = !DILocation(line: 236, column: 22, scope: !380)
!382 = !DILocation(line: 237, column: 21, scope: !380)
!383 = !DILocation(line: 237, column: 4, scope: !380)
!384 = !DILocation(line: 237, column: 15, scope: !380)
!385 = !DILocation(line: 237, column: 31, scope: !380)
!386 = !DILocation(line: 238, column: 2, scope: !380)
!387 = !DILocation(line: 241, column: 38, scope: !388)
!388 = distinct !DILexicalBlock(scope: !376, file: !1, line: 240, column: 2)
!389 = !DILocation(line: 241, column: 25, scope: !388)
!390 = !DILocation(line: 241, column: 42, scope: !388)
!391 = !DILocation(line: 241, column: 15, scope: !388)
!392 = !DILocation(line: 241, column: 22, scope: !388)
!393 = !DILocation(line: 242, column: 4, scope: !394)
!394 = distinct !DILexicalBlock(scope: !388, file: !1, line: 242, column: 4)
!395 = !DILocation(line: 243, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !394, file: !1, line: 242, column: 4)
!397 = !DILocation(line: 243, column: 36, scope: !396)
!398 = !DILocation(line: 243, column: 44, scope: !396)
!399 = !DILocation(line: 243, column: 31, scope: !396)
!400 = !DILocation(line: 243, column: 48, scope: !396)
!401 = !DILocation(line: 243, column: 6, scope: !396)
!402 = !DILocation(line: 243, column: 28, scope: !396)
!403 = !DILocation(line: 252, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !275, file: !1, line: 252, column: 11)
!405 = !DILocation(line: 252, column: 26, scope: !404)
!406 = !DILocation(line: 252, column: 21, scope: !404)
!407 = !DILocation(line: 161, column: 14, scope: !29)
!408 = !DILocation(line: 255, column: 13, scope: !409)
!409 = distinct !DILexicalBlock(scope: !275, file: !1, line: 255, column: 11)
!410 = !DILocation(line: 255, column: 11, scope: !275)
!411 = !DILocation(line: 258, column: 11, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !1, line: 256, column: 2)
!413 = !DILocation(line: 258, column: 32, scope: !412)
!414 = !DILocation(line: 258, column: 30, scope: !412)
!415 = !DILocation(line: 258, column: 45, scope: !412)
!416 = !DILocation(line: 156, column: 14, scope: !29)
!417 = !DILocation(line: 260, column: 4, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !1, line: 260, column: 4)
!419 = !DILocation(line: 262, column: 15, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 261, column: 6)
!421 = distinct !DILexicalBlock(scope: !418, file: !1, line: 260, column: 4)
!422 = !DILocation(line: 263, column: 24, scope: !420)
!423 = !DILocation(line: 263, column: 22, scope: !420)
!424 = !DILocation(line: 264, column: 19, scope: !420)
!425 = !DILocation(line: 267, column: 4, scope: !426)
!426 = distinct !DILexicalBlock(scope: !412, file: !1, line: 267, column: 4)
!427 = !DILocation(line: 268, column: 2, scope: !412)
!428 = !DILocation(line: 270, column: 13, scope: !429)
!429 = distinct !DILexicalBlock(scope: !275, file: !1, line: 270, column: 11)
!430 = !DILocation(line: 270, column: 11, scope: !275)
!431 = !DILocation(line: 273, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !1, line: 271, column: 2)
!433 = !DILocation(line: 273, column: 32, scope: !432)
!434 = !DILocation(line: 273, column: 30, scope: !432)
!435 = !DILocation(line: 273, column: 45, scope: !432)
!436 = !DILocation(line: 275, column: 4, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !1, line: 275, column: 4)
!438 = !DILocation(line: 277, column: 15, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 276, column: 6)
!440 = distinct !DILexicalBlock(scope: !437, file: !1, line: 275, column: 4)
!441 = !DILocation(line: 278, column: 24, scope: !439)
!442 = !DILocation(line: 278, column: 22, scope: !439)
!443 = !DILocation(line: 279, column: 19, scope: !439)
!444 = !DILocation(line: 282, column: 4, scope: !445)
!445 = distinct !DILexicalBlock(scope: !432, file: !1, line: 282, column: 4)
!446 = !DILocation(line: 283, column: 2, scope: !432)
!447 = !DILocation(line: 296, column: 37, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 292, column: 18)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 291, column: 2)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 290, column: 7)
!451 = distinct !DILexicalBlock(scope: !275, file: !1, line: 290, column: 7)
!452 = !DILocation(line: 296, column: 49, scope: !448)
!453 = !DILocation(line: 290, column: 7, scope: !451)
!454 = !DILocation(line: 301, column: 15, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 300, column: 7)
!456 = distinct !DILexicalBlock(scope: !275, file: !1, line: 300, column: 7)
!457 = !DILocation(line: 300, column: 7, scope: !456)
!458 = !DILocation(line: 292, column: 4, scope: !449)
!459 = !DILocation(line: 293, column: 37, scope: !448)
!460 = !DILocation(line: 293, column: 49, scope: !448)
!461 = !DILocation(line: 293, column: 47, scope: !448)
!462 = !DILocation(line: 293, column: 36, scope: !448)
!463 = !DILocation(line: 293, column: 35, scope: !448)
!464 = !DILocation(line: 293, column: 68, scope: !448)
!465 = !DILocation(line: 294, column: 37, scope: !448)
!466 = !DILocation(line: 294, column: 35, scope: !448)
!467 = !DILocation(line: 294, column: 68, scope: !448)
!468 = !DILocation(line: 295, column: 37, scope: !448)
!469 = !DILocation(line: 295, column: 35, scope: !448)
!470 = !DILocation(line: 295, column: 68, scope: !448)
!471 = !DILocation(line: 296, column: 47, scope: !448)
!472 = !DILocation(line: 296, column: 36, scope: !448)
!473 = !DILocation(line: 296, column: 35, scope: !448)
!474 = !DILocation(line: 296, column: 68, scope: !448)
!475 = !DILocation(line: 301, column: 2, scope: !455)
!476 = !DILocation(line: 301, column: 13, scope: !455)
!477 = !DILocation(line: 303, column: 25, scope: !275)
!478 = !DILocation(line: 303, column: 7, scope: !275)
!479 = !DILocation(line: 303, column: 19, scope: !275)
!480 = !DILocation(line: 191, column: 19, scope: !276)
!481 = !DILocation(line: 309, column: 15, scope: !29)
!482 = !DILocation(line: 309, column: 3, scope: !29)
!483 = !DILocation(line: 310, column: 3, scope: !29)
!484 = !DILocation(line: 311, column: 3, scope: !29)
!485 = !DILocation(line: 312, column: 13, scope: !29)
!486 = !DILocation(line: 313, column: 3, scope: !29)
!487 = !DILocation(line: 329, column: 16, scope: !54)
!488 = !DILocation(line: 334, column: 44, scope: !489)
!489 = distinct !DILexicalBlock(scope: !54, file: !1, line: 334, column: 7)
!490 = !DILocation(line: 334, column: 42, scope: !489)
!491 = !DILocation(line: 334, column: 48, scope: !489)
!492 = !DILocation(line: 334, column: 34, scope: !489)
!493 = !DILocation(line: 334, column: 15, scope: !489)
!494 = !DILocation(line: 331, column: 19, scope: !54)
!495 = !DILocation(line: 334, column: 75, scope: !489)
!496 = !DILocation(line: 334, column: 7, scope: !54)
!497 = !DILocation(line: 337, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 337, column: 3)
!499 = distinct !DILexicalBlock(scope: !54, file: !1, line: 337, column: 3)
!500 = !DILocation(line: 337, column: 3, scope: !499)
!501 = !DILocation(line: 343, column: 45, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 343, column: 11)
!503 = distinct !DILexicalBlock(scope: !498, file: !1, line: 338, column: 5)
!504 = !DILocation(line: 339, column: 15, scope: !503)
!505 = !DILocation(line: 339, column: 22, scope: !503)
!506 = !DILocation(line: 340, column: 32, scope: !503)
!507 = !DILocation(line: 340, column: 38, scope: !503)
!508 = !DILocation(line: 340, column: 15, scope: !503)
!509 = !DILocation(line: 340, column: 22, scope: !503)
!510 = !DILocation(line: 341, column: 48, scope: !503)
!511 = !DILocation(line: 341, column: 55, scope: !503)
!512 = !DILocation(line: 341, column: 32, scope: !503)
!513 = !DILocation(line: 341, column: 38, scope: !503)
!514 = !DILocation(line: 341, column: 15, scope: !503)
!515 = !DILocation(line: 341, column: 22, scope: !503)
!516 = !DILocation(line: 342, column: 15, scope: !503)
!517 = !DILocation(line: 342, column: 22, scope: !503)
!518 = !DILocation(line: 343, column: 37, scope: !502)
!519 = !DILocation(line: 343, column: 20, scope: !502)
!520 = !DILocation(line: 343, column: 26, scope: !502)
!521 = !DILocation(line: 343, column: 63, scope: !502)
!522 = !DILocation(line: 343, column: 11, scope: !503)
!523 = !DILocation(line: 347, column: 1, scope: !54)
!524 = !DILocation(line: 360, column: 27, scope: !61)
!525 = !DILocation(line: 360, column: 37, scope: !61)
!526 = !DILocation(line: 362, column: 7, scope: !61)
!527 = !DILocation(line: 364, column: 21, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 364, column: 3)
!529 = distinct !DILexicalBlock(scope: !61, file: !1, line: 364, column: 3)
!530 = !DILocation(line: 364, column: 3, scope: !529)
!531 = !DILocation(line: 364, column: 24, scope: !528)
!532 = !DILocation(line: 365, column: 20, scope: !528)
!533 = !DILocation(line: 365, column: 5, scope: !528)
!534 = !DILocation(line: 366, column: 8, scope: !61)
!535 = !DILocation(line: 366, column: 3, scope: !61)
!536 = !DILocation(line: 367, column: 1, scope: !61)
!537 = !DILocation(line: 384, column: 19, scope: !68)
!538 = !DILocation(line: 384, column: 30, scope: !68)
!539 = !DILocation(line: 384, column: 44, scope: !68)
!540 = !DILocation(line: 391, column: 9, scope: !68)
!541 = !DILocation(line: 386, column: 11, scope: !68)
!542 = !DILocation(line: 387, column: 12, scope: !68)
!543 = !DILocation(line: 396, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 396, column: 3)
!545 = distinct !DILexicalBlock(scope: !68, file: !1, line: 396, column: 3)
!546 = !DILocation(line: 396, column: 3, scope: !545)
!547 = !DILocation(line: 398, column: 54, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 397, column: 5)
!549 = distinct !DILexicalBlock(scope: !544, file: !1, line: 397, column: 5)
!550 = !DILocation(line: 398, column: 7, scope: !548)
!551 = !DILocation(line: 397, column: 5, scope: !549)
!552 = !DILocation(line: 398, column: 64, scope: !548)
!553 = !DILocation(line: 398, column: 37, scope: !548)
!554 = !DILocation(line: 398, column: 31, scope: !548)
!555 = !DILocation(line: 398, column: 19, scope: !548)
!556 = !DILocation(line: 398, column: 29, scope: !548)
!557 = !DILocation(line: 398, column: 17, scope: !548)
!558 = !DILocation(line: 400, column: 12, scope: !68)
!559 = !DILocation(line: 401, column: 3, scope: !68)
!560 = !DILocation(line: 420, column: 23, scope: !80)
!561 = !DILocation(line: 420, column: 34, scope: !80)
!562 = !DILocation(line: 420, column: 48, scope: !80)
!563 = !DILocation(line: 427, column: 9, scope: !80)
!564 = !DILocation(line: 422, column: 11, scope: !80)
!565 = !DILocation(line: 423, column: 11, scope: !80)
!566 = !DILocation(line: 431, column: 17, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 431, column: 3)
!568 = distinct !DILexicalBlock(scope: !80, file: !1, line: 431, column: 3)
!569 = !DILocation(line: 431, column: 3, scope: !568)
!570 = !DILocation(line: 433, column: 48, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 432, column: 5)
!572 = distinct !DILexicalBlock(scope: !567, file: !1, line: 432, column: 5)
!573 = !DILocation(line: 433, column: 7, scope: !571)
!574 = !DILocation(line: 432, column: 5, scope: !572)
!575 = !DILocation(line: 433, column: 58, scope: !571)
!576 = !DILocation(line: 433, column: 31, scope: !571)
!577 = !DILocation(line: 433, column: 19, scope: !571)
!578 = !DILocation(line: 433, column: 29, scope: !571)
!579 = !DILocation(line: 433, column: 17, scope: !571)
!580 = !DILocation(line: 435, column: 12, scope: !80)
!581 = !DILocation(line: 436, column: 3, scope: !80)
!582 = !DILocation(line: 457, column: 29, scope: !88)
!583 = !DILocation(line: 457, column: 40, scope: !88)
!584 = !DILocation(line: 457, column: 63, scope: !88)
!585 = !DILocation(line: 457, column: 73, scope: !88)
!586 = !DILocation(line: 464, column: 21, scope: !88)
!587 = !DILocation(line: 464, column: 11, scope: !88)
!588 = !DILocation(line: 461, column: 10, scope: !88)
!589 = !DILocation(line: 465, column: 11, scope: !88)
!590 = !DILocation(line: 459, column: 22, scope: !88)
!591 = !DILocation(line: 466, column: 3, scope: !88)
!592 = !DILocation(line: 462, column: 10, scope: !88)
!593 = !DILocation(line: 460, column: 10, scope: !88)
!594 = !DILocation(line: 475, column: 10, scope: !88)
!595 = !DILocation(line: 475, column: 3, scope: !88)
!596 = !DILocation(line: 481, column: 34, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 478, column: 2)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 477, column: 11)
!599 = distinct !DILexicalBlock(scope: !88, file: !1, line: 476, column: 5)
!600 = !DILocation(line: 477, column: 11, scope: !598)
!601 = !DILocation(line: 477, column: 16, scope: !598)
!602 = !DILocation(line: 477, column: 11, scope: !599)
!603 = !DILocation(line: 480, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !597, file: !1, line: 480, column: 8)
!605 = !DILocation(line: 480, column: 8, scope: !597)
!606 = !DILocation(line: 480, column: 17, scope: !604)
!607 = !DILocation(line: 481, column: 41, scope: !597)
!608 = !DILocation(line: 481, column: 27, scope: !597)
!609 = !{!610, !237, i64 40}
!610 = !{!"aliinfo_s", !265, i64 0, !265, i64 4, !265, i64 8, !237, i64 16, !237, i64 24, !237, i64 32, !237, i64 40, !237, i64 48, !237, i64 56, !237, i64 64, !237, i64 72, !246, i64 80, !246, i64 84, !246, i64 88, !246, i64 92, !246, i64 96, !246, i64 100}
!611 = !DILocation(line: 481, column: 53, scope: !597)
!612 = !DILocation(line: 481, column: 4, scope: !597)
!613 = !DILocation(line: 483, column: 2, scope: !597)
!614 = !DILocation(line: 485, column: 21, scope: !615)
!615 = distinct !DILexicalBlock(scope: !598, file: !1, line: 485, column: 16)
!616 = !DILocation(line: 485, column: 16, scope: !598)
!617 = !DILocation(line: 488, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 488, column: 8)
!619 = distinct !DILexicalBlock(scope: !615, file: !1, line: 486, column: 2)
!620 = !DILocation(line: 488, column: 8, scope: !619)
!621 = !DILocation(line: 488, column: 17, scope: !618)
!622 = !DILocation(line: 489, column: 4, scope: !619)
!623 = !DILocation(line: 491, column: 24, scope: !619)
!624 = !DILocation(line: 491, column: 28, scope: !619)
!625 = !DILocation(line: 491, column: 4, scope: !619)
!626 = !DILocation(line: 492, column: 29, scope: !619)
!627 = !DILocation(line: 492, column: 33, scope: !619)
!628 = !DILocation(line: 492, column: 24, scope: !619)
!629 = !DILocation(line: 492, column: 37, scope: !619)
!630 = !DILocation(line: 492, column: 4, scope: !619)
!631 = !DILocation(line: 493, column: 29, scope: !619)
!632 = !DILocation(line: 493, column: 33, scope: !619)
!633 = !DILocation(line: 493, column: 24, scope: !619)
!634 = !DILocation(line: 493, column: 37, scope: !619)
!635 = !DILocation(line: 493, column: 4, scope: !619)
!636 = !DILocation(line: 495, column: 36, scope: !619)
!637 = !DILocation(line: 495, column: 40, scope: !619)
!638 = !DILocation(line: 495, column: 31, scope: !619)
!639 = !DILocation(line: 495, column: 44, scope: !619)
!640 = !DILocation(line: 495, column: 22, scope: !619)
!641 = !DILocation(line: 495, column: 4, scope: !619)
!642 = !DILocation(line: 495, column: 29, scope: !619)
!643 = !DILocation(line: 496, column: 44, scope: !619)
!644 = !DILocation(line: 496, column: 22, scope: !619)
!645 = !DILocation(line: 496, column: 4, scope: !619)
!646 = !DILocation(line: 496, column: 29, scope: !619)
!647 = !DILocation(line: 498, column: 2, scope: !619)
!648 = !DILocation(line: 503, column: 13, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 503, column: 8)
!650 = distinct !DILexicalBlock(scope: !615, file: !1, line: 501, column: 2)
!651 = !DILocation(line: 503, column: 8, scope: !650)
!652 = !DILocation(line: 503, column: 21, scope: !649)
!653 = !DILocation(line: 504, column: 52, scope: !649)
!654 = !DILocation(line: 504, column: 43, scope: !649)
!655 = !DILocation(line: 504, column: 21, scope: !649)
!656 = !DILocation(line: 509, column: 3, scope: !88)
!657 = !DILocation(line: 510, column: 3, scope: !88)
!658 = !DILocation(line: 511, column: 3, scope: !88)
!659 = !DILocation(line: 520, column: 18, scope: !208)
!660 = !DILocation(line: 520, column: 29, scope: !208)
!661 = !DILocation(line: 520, column: 52, scope: !208)
!662 = !DILocation(line: 520, column: 62, scope: !208)
!663 = !DILocation(line: 522, column: 7, scope: !208)
!664 = !DILocation(line: 524, column: 21, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 524, column: 3)
!666 = distinct !DILexicalBlock(scope: !208, file: !1, line: 524, column: 3)
!667 = !DILocation(line: 524, column: 3, scope: !666)
!668 = !DILocation(line: 524, column: 24, scope: !665)
!669 = !DILocation(line: 530, column: 36, scope: !670)
!670 = distinct !DILexicalBlock(scope: !665, file: !1, line: 525, column: 5)
!671 = !DILocation(line: 526, column: 59, scope: !670)
!672 = !DILocation(line: 526, column: 7, scope: !670)
!673 = !DILocation(line: 527, column: 57, scope: !670)
!674 = !DILocation(line: 527, column: 63, scope: !670)
!675 = !DILocation(line: 527, column: 7, scope: !670)
!676 = !DILocation(line: 529, column: 18, scope: !670)
!677 = !DILocation(line: 529, column: 23, scope: !670)
!678 = !DILocation(line: 529, column: 8, scope: !670)
!679 = !DILocation(line: 530, column: 8, scope: !670)
!680 = !DILocation(line: 530, column: 29, scope: !670)
!681 = !DILocation(line: 531, column: 18, scope: !670)
!682 = !DILocation(line: 531, column: 8, scope: !670)
!683 = !DILocation(line: 528, column: 7, scope: !670)
!684 = !DILocation(line: 533, column: 18, scope: !670)
!685 = !DILocation(line: 533, column: 24, scope: !670)
!686 = !DILocation(line: 533, column: 8, scope: !670)
!687 = !DILocation(line: 534, column: 8, scope: !670)
!688 = !DILocation(line: 534, column: 30, scope: !670)
!689 = !DILocation(line: 534, column: 37, scope: !670)
!690 = !DILocation(line: 535, column: 18, scope: !670)
!691 = !DILocation(line: 535, column: 8, scope: !670)
!692 = !DILocation(line: 532, column: 7, scope: !670)
!693 = !DILocation(line: 536, column: 48, scope: !670)
!694 = !DILocation(line: 536, column: 38, scope: !670)
!695 = !DILocation(line: 536, column: 7, scope: !670)
!696 = !DILocation(line: 537, column: 53, scope: !670)
!697 = !DILocation(line: 537, column: 7, scope: !670)
!698 = !DILocation(line: 524, column: 31, scope: !665)
!699 = !DILocation(line: 539, column: 1, scope: !208)
