; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/emit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [62 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/emit.c\00", align 1
@Alphabet_iupac = external global i32
@.str1 = private unnamed_addr constant [14 x i8] c"never happens\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"can't happen.\00", align 1
@Alphabet_size = external global i32
@Alphabet_type = external global i32
@Alphabet = external global [25 x i8]

; Function Attrs: nounwind optsize ssp uwtable
define void @EmitSequence(%struct.plan7_s* %hmm, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
  %tr = alloca %struct.p7trace_s*, align 8
  %t = alloca [4 x float], align 16
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !87, metadata !148), !dbg !149
  tail call void @llvm.dbg.value(metadata i8** %ret_dsq, i64 0, metadata !88, metadata !148), !dbg !150
  tail call void @llvm.dbg.value(metadata i32* %ret_L, i64 0, metadata !89, metadata !148), !dbg !151
  tail call void @llvm.dbg.value(metadata %struct.p7trace_s** %ret_tr, i64 0, metadata !90, metadata !148), !dbg !152
  tail call void @llvm.dbg.declare(metadata [4 x float]* %t, metadata !100, metadata !148), !dbg !153
  tail call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  call void @P7AllocTrace(i32 64, %struct.p7trace_s** %tr) #4, !dbg !155
  call void @llvm.dbg.value(metadata i32 64, i64 0, metadata !96, metadata !148), !dbg !156
  %1 = call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 59, i64 64) #4, !dbg !157
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !94, metadata !148), !dbg !158
  call void @llvm.dbg.value(metadata i32 64, i64 0, metadata !97, metadata !148), !dbg !159
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %2 = load %struct.p7trace_s** %tr, align 8, !dbg !160, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %2, i32 0, i8 signext 4, i32 0, i32 0) #4, !dbg !165
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %3 = load %struct.p7trace_s** %tr, align 8, !dbg !166, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %3, i32 1, i8 signext 5, i32 0, i32 0) #4, !dbg !167
  %4 = load i32* @Alphabet_iupac, align 4, !dbg !168, !tbaa !169
  %5 = trunc i32 %4 to i8, !dbg !171
  store i8 %5, i8* %1, align 1, !dbg !172, !tbaa !173
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !95, metadata !148), !dbg !174
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !148), !dbg !175
  call void @llvm.dbg.value(metadata i8 5, i64 0, metadata !92, metadata !148), !dbg !176
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !98, metadata !148), !dbg !177
  %6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !178
  %7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !183
  %8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !184
  %9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !185
  %10 = bitcast float* %9 to i32*, !dbg !185
  %11 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !187
  %12 = bitcast float** %11 to i32**, !dbg !187
  %13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !188
  %14 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !189
  %15 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !190
  %16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !191
  %17 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !192
  %18 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !193
  %19 = getelementptr inbounds [4 x float]* %t, i64 0, i64 0, !dbg !194
  %20 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !197
  %21 = getelementptr inbounds [4 x float]* %t, i64 0, i64 3, !dbg !198
  %22 = bitcast float* %21 to i32*, !dbg !199
  br label %.outer, !dbg !200

.outer:                                           ; preds = %154, %0
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %154 ], [ 64, %0 ]
  %type.0.ph = phi i8 [ %type.12, %154 ], [ 5, %0 ]
  %k.0.ph = phi i32 [ %k.13, %154 ], [ 0, %0 ]
  %dsq.0.ph = phi i8* [ %155, %154 ], [ %1, %0 ]
  %L.0.ph = phi i32 [ %149, %154 ], [ 1, %0 ]
  %alloc_tlen.0.ph = phi i32 [ %alloc_tlen.1, %154 ], [ 64, %0 ]
  %tpos.0.ph = phi i32 [ %140, %154 ], [ 2, %0 ]
  %23 = sext i32 %L.0.ph to i64
  br label %.outer11

.outer11:                                         ; preds = %.outer, %146
  %indvars.iv24 = phi i64 [ %23, %.outer ], [ %indvars.iv.next25, %146 ]
  %type.0.ph12 = phi i8 [ %type.0.ph, %.outer ], [ %type.12, %146 ]
  %k.0.ph13 = phi i32 [ %k.0.ph, %.outer ], [ %k.13, %146 ]
  %L.0.ph14 = phi i32 [ %L.0.ph, %.outer ], [ %149, %146 ]
  %alloc_tlen.0.ph15 = phi i32 [ %alloc_tlen.0.ph, %.outer ], [ %alloc_tlen.1, %146 ]
  %tpos.0.ph17 = phi i32 [ %tpos.0.ph, %.outer ], [ %140, %146 ]
  %24 = sext i32 %tpos.0.ph17 to i64
  br label %25

; <label>:25                                      ; preds = %.outer11, %145
  %indvars.iv = phi i64 [ %24, %.outer11 ], [ %indvars.iv.next, %145 ]
  %type.0 = phi i8 [ %type.0.ph12, %.outer11 ], [ %type.12, %145 ]
  %k.0 = phi i32 [ %k.0.ph13, %.outer11 ], [ %k.13, %145 ]
  %alloc_tlen.0 = phi i32 [ %alloc_tlen.0.ph15, %.outer11 ], [ %alloc_tlen.1, %145 ]
  %tpos.0 = phi i32 [ %tpos.0.ph17, %.outer11 ], [ %140, %145 ]
  %26 = icmp eq i8 %type.0, 9, !dbg !201
  br i1 %26, label %156, label %27, !dbg !200

; <label>:27                                      ; preds = %25
  %28 = sext i8 %type.0 to i32, !dbg !202
  switch i32 %28, label %93 [
    i32 6, label %29
    i32 3, label %37
    i32 5, label %47
    i32 7, label %51
    i32 8, label %55
    i32 10, label %59
    i32 2, label %63
    i32 1, label %76
  ], !dbg !203

; <label>:29                                      ; preds = %27
  %30 = load i32* %10, align 4, !dbg !185, !tbaa !204
  %31 = load i32** %12, align 8, !dbg !187, !tbaa !207
  store i32 %30, i32* %31, align 4, !dbg !208, !tbaa !209
  %32 = bitcast i32* %31 to float*
  %33 = load i32* %13, align 4, !dbg !188, !tbaa !210
  %34 = add nsw i32 %33, 1, !dbg !211
  %35 = call i32 @FChoose(float* %32, i32 %34) #4, !dbg !212
  call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !93, metadata !148), !dbg !175
  %36 = icmp eq i32 %35, 0, !dbg !213
  %. = select i1 %36, i8 2, i8 1, !dbg !215
  %.1 = select i1 %36, i32 1, i32 %35, !dbg !215
  br label %94, !dbg !215

; <label>:37                                      ; preds = %27
  %38 = sext i32 %k.0 to i64, !dbg !217
  %39 = load float*** %14, align 8, !dbg !189, !tbaa !218
  %40 = getelementptr inbounds float** %39, i64 %38, !dbg !217
  %41 = load float** %40, align 8, !dbg !217, !tbaa !161
  %42 = getelementptr inbounds float* %41, i64 3, !dbg !219
  %43 = call i32 @FChoose(float* %42, i32 2) #4, !dbg !220
  %44 = icmp eq i32 %43, 0, !dbg !221
  %45 = select i1 %44, i8 1, i8 3, !dbg !222
  call void @llvm.dbg.value(metadata i8 %45, i64 0, metadata !92, metadata !148), !dbg !176
  %46 = zext i1 %44 to i32, !dbg !223
  %.k.0 = add nsw i32 %46, %k.0, !dbg !223
  br label %94, !dbg !223

; <label>:47                                      ; preds = %27
  %48 = call i32 @FChoose(float* %15, i32 2) #4, !dbg !224
  %49 = icmp eq i32 %48, 1, !dbg !225
  %50 = select i1 %49, i8 5, i8 6, !dbg !226
  call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !92, metadata !148), !dbg !176
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !148), !dbg !175
  br label %94, !dbg !227

; <label>:51                                      ; preds = %27
  %52 = call i32 @FChoose(float* %16, i32 2) #4, !dbg !228
  %53 = icmp eq i32 %52, 1, !dbg !229
  %54 = select i1 %53, i8 10, i8 8, !dbg !230
  call void @llvm.dbg.value(metadata i8 %54, i64 0, metadata !92, metadata !148), !dbg !176
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !148), !dbg !175
  br label %94, !dbg !231

; <label>:55                                      ; preds = %27
  %56 = call i32 @FChoose(float* %17, i32 2) #4, !dbg !232
  %57 = icmp eq i32 %56, 1, !dbg !233
  %58 = select i1 %57, i8 8, i8 9, !dbg !234
  call void @llvm.dbg.value(metadata i8 %58, i64 0, metadata !92, metadata !148), !dbg !176
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !148), !dbg !175
  br label %94, !dbg !235

; <label>:59                                      ; preds = %27
  %60 = call i32 @FChoose(float* %18, i32 2) #4, !dbg !236
  %61 = icmp eq i32 %60, 1, !dbg !237
  %62 = select i1 %61, i8 10, i8 6, !dbg !238
  call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !92, metadata !148), !dbg !176
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !148), !dbg !175
  br label %94, !dbg !239

; <label>:63                                      ; preds = %27
  %64 = load i32* %13, align 4, !dbg !240, !tbaa !210
  %65 = icmp slt i32 %k.0, %64, !dbg !242
  br i1 %65, label %66, label %.thread, !dbg !243

; <label>:66                                      ; preds = %63
  %67 = sext i32 %k.0 to i64, !dbg !244
  %68 = load float*** %14, align 8, !dbg !246, !tbaa !218
  %69 = getelementptr inbounds float** %68, i64 %67, !dbg !244
  %70 = load float** %69, align 8, !dbg !244, !tbaa !161
  %71 = getelementptr inbounds float* %70, i64 5, !dbg !247
  %72 = call i32 @FChoose(float* %71, i32 2) #4, !dbg !248
  %73 = icmp eq i32 %72, 0, !dbg !249
  %74 = select i1 %73, i8 1, i8 2, !dbg !250
  call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !92, metadata !148), !dbg !176
  %75 = add nsw i32 %k.0, 1, !dbg !251
  call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !93, metadata !148), !dbg !175
  br label %94, !dbg !252

; <label>:76                                      ; preds = %27
  %77 = load i32* %13, align 4, !dbg !253, !tbaa !210
  %78 = icmp slt i32 %k.0, %77, !dbg !254
  br i1 %78, label %79, label %.thread, !dbg !255

; <label>:79                                      ; preds = %76
  %80 = sext i32 %k.0 to i64, !dbg !256
  %81 = load float*** %14, align 8, !dbg !257, !tbaa !218
  %82 = getelementptr inbounds float** %81, i64 %80, !dbg !256
  %83 = load float** %82, align 8, !dbg !256, !tbaa !161
  call void @FCopy(float* %19, float* %83, i32 3) #4, !dbg !258
  %84 = load float** %20, align 8, !dbg !197, !tbaa !259
  %85 = getelementptr inbounds float* %84, i64 %80, !dbg !260
  %86 = bitcast float* %85 to i32*, !dbg !260
  %87 = load i32* %86, align 4, !dbg !260, !tbaa !209
  store i32 %87, i32* %22, align 4, !dbg !199, !tbaa !209
  %88 = call i32 @FChoose(float* %19, i32 4) #4, !dbg !261
  switch i32 %88, label %92 [
    i32 0, label %.thread4
    i32 1, label %.thread7
    i32 2, label %90
    i32 3, label %.thread
  ], !dbg !262

.thread4:                                         ; preds = %79
  %89 = add nsw i32 %k.0, 1, !dbg !263
  call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !93, metadata !148), !dbg !175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !92, metadata !148), !dbg !176
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !99, metadata !148), !dbg !265
  br label %95, !dbg !266

; <label>:90                                      ; preds = %79
  %91 = add nsw i32 %k.0, 1, !dbg !267
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !93, metadata !148), !dbg !175
  call void @llvm.dbg.value(metadata i8 2, i64 0, metadata !92, metadata !148), !dbg !176
  br label %.thread, !dbg !268

; <label>:92                                      ; preds = %79
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !269
  br label %94, !dbg !270

; <label>:93                                      ; preds = %27
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !271
  br label %94, !dbg !272

; <label>:94                                      ; preds = %37, %29, %92, %66, %93, %59, %55, %51, %47
  %type.1 = phi i8 [ %type.0, %93 ], [ %type.0, %92 ], [ %74, %66 ], [ %62, %59 ], [ %58, %55 ], [ %54, %51 ], [ %50, %47 ], [ %., %29 ], [ %45, %37 ]
  %k.1 = phi i32 [ %k.0, %93 ], [ %k.0, %92 ], [ %75, %66 ], [ 0, %59 ], [ 0, %55 ], [ 0, %51 ], [ 0, %47 ], [ %.1, %29 ], [ %.k.0, %37 ]
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !99, metadata !148), !dbg !265
  switch i8 %type.1, label %.thread [
    i8 1, label %95
    i8 3, label %.thread7
    i8 5, label %108
    i8 8, label %116
    i8 10, label %124
  ], !dbg !266

; <label>:95                                      ; preds = %.thread4, %94
  %k.16 = phi i32 [ %89, %.thread4 ], [ %k.1, %94 ]
  %96 = sext i32 %k.16 to i64, !dbg !273
  %97 = load float*** %7, align 8, !dbg !183, !tbaa !274
  %98 = getelementptr inbounds float** %97, i64 %96, !dbg !273
  %99 = load float** %98, align 8, !dbg !273, !tbaa !161
  %100 = load i32* @Alphabet_size, align 4, !dbg !275, !tbaa !169
  %101 = call i32 @FChoose(float* %99, i32 %100) #4, !dbg !276
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !99, metadata !148), !dbg !265
  br label %.thread, !dbg !277

.thread7:                                         ; preds = %79, %94
  %k.19 = phi i32 [ %k.1, %94 ], [ %k.0, %79 ]
  %102 = sext i32 %k.19 to i64, !dbg !278
  %103 = load float*** %8, align 8, !dbg !184, !tbaa !279
  %104 = getelementptr inbounds float** %103, i64 %102, !dbg !278
  %105 = load float** %104, align 8, !dbg !278, !tbaa !161
  %106 = load i32* @Alphabet_size, align 4, !dbg !280, !tbaa !169
  %107 = call i32 @FChoose(float* %105, i32 %106) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !99, metadata !148), !dbg !265
  br label %.thread, !dbg !282

; <label>:108                                     ; preds = %94
  %109 = add nsw i64 %indvars.iv, -1, !dbg !283
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %110 = load %struct.p7trace_s** %tr, align 8, !dbg !284, !tbaa !161
  %111 = getelementptr inbounds %struct.p7trace_s* %110, i64 0, i32 1, !dbg !285
  %112 = load i8** %111, align 8, !dbg !285, !tbaa !286
  %113 = getelementptr inbounds i8* %112, i64 %109, !dbg !284
  %114 = load i8* %113, align 1, !dbg !284, !tbaa !173
  %115 = icmp eq i8 %114, 5, !dbg !288
  br i1 %115, label %132, label %.thread, !dbg !289

; <label>:116                                     ; preds = %94
  %117 = add nsw i64 %indvars.iv, -1, !dbg !290
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %118 = load %struct.p7trace_s** %tr, align 8, !dbg !291, !tbaa !161
  %119 = getelementptr inbounds %struct.p7trace_s* %118, i64 0, i32 1, !dbg !292
  %120 = load i8** %119, align 8, !dbg !292, !tbaa !286
  %121 = getelementptr inbounds i8* %120, i64 %117, !dbg !291
  %122 = load i8* %121, align 1, !dbg !291, !tbaa !173
  %123 = icmp eq i8 %122, 8, !dbg !293
  br i1 %123, label %132, label %.thread, !dbg !294

; <label>:124                                     ; preds = %94
  %125 = add nsw i64 %indvars.iv, -1, !dbg !295
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %126 = load %struct.p7trace_s** %tr, align 8, !dbg !296, !tbaa !161
  %127 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 1, !dbg !297
  %128 = load i8** %127, align 8, !dbg !297, !tbaa !286
  %129 = getelementptr inbounds i8* %128, i64 %125, !dbg !296
  %130 = load i8* %129, align 1, !dbg !296, !tbaa !173
  %131 = icmp eq i8 %130, 10, !dbg !298
  br i1 %131, label %132, label %.thread, !dbg !299

; <label>:132                                     ; preds = %124, %116, %108
  %133 = load i32* @Alphabet_size, align 4, !dbg !300, !tbaa !169
  %134 = call i32 @FChoose(float* %6, i32 %133) #4, !dbg !301
  call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !99, metadata !148), !dbg !265
  br label %.thread, !dbg !302

.thread:                                          ; preds = %116, %108, %79, %76, %63, %90, %94, %.thread7, %132, %124, %95
  %k.13 = phi i32 [ %k.16, %95 ], [ %k.19, %.thread7 ], [ %k.1, %132 ], [ %k.1, %124 ], [ %k.1, %94 ], [ 0, %76 ], [ 0, %63 ], [ %91, %90 ], [ 0, %79 ], [ %k.1, %108 ], [ %k.1, %116 ]
  %type.12 = phi i8 [ 1, %95 ], [ 3, %.thread7 ], [ %type.1, %132 ], [ 10, %124 ], [ %type.1, %94 ], [ 7, %76 ], [ 7, %63 ], [ 2, %90 ], [ 7, %79 ], [ 5, %108 ], [ 8, %116 ]
  %sym.0 = phi i32 [ %101, %95 ], [ %107, %.thread7 ], [ %134, %132 ], [ -1, %124 ], [ -1, %94 ], [ -1, %76 ], [ -1, %63 ], [ -1, %90 ], [ -1, %79 ], [ -1, %108 ], [ -1, %116 ]
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %135 = load %struct.p7trace_s** %tr, align 8, !dbg !303, !tbaa !161
  %136 = icmp ne i32 %sym.0, -1, !dbg !304
  %137 = trunc i64 %indvars.iv24 to i32, !dbg !305
  %138 = select i1 %136, i32 %137, i32 0, !dbg !305
  %139 = trunc i64 %indvars.iv to i32, !dbg !306
  call void @TraceSet(%struct.p7trace_s* %135, i32 %139, i8 signext %type.12, i32 %k.13, i32 %138) #4, !dbg !306
  %140 = add nsw i32 %tpos.0, 1, !dbg !307
  call void @llvm.dbg.value(metadata i32 %140, i64 0, metadata !98, metadata !148), !dbg !177
  %141 = icmp eq i32 %140, %alloc_tlen.0, !dbg !308
  br i1 %141, label %142, label %145, !dbg !310

; <label>:142                                     ; preds = %.thread
  %143 = add nsw i32 %alloc_tlen.0, 64, !dbg !311
  call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !96, metadata !148), !dbg !156
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %144 = load %struct.p7trace_s** %tr, align 8, !dbg !313, !tbaa !161
  call void @P7ReallocTrace(%struct.p7trace_s* %144, i32 %143) #4, !dbg !314
  br label %145, !dbg !315

; <label>:145                                     ; preds = %142, %.thread
  %alloc_tlen.1 = phi i32 [ %143, %142 ], [ %alloc_tlen.0, %.thread ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !316
  br i1 %136, label %146, label %25, !dbg !316

; <label>:146                                     ; preds = %145
  %147 = trunc i32 %sym.0 to i8, !dbg !317
  %148 = getelementptr inbounds i8* %dsq.0.ph, i64 %indvars.iv24, !dbg !320
  store i8 %147, i8* %148, align 1, !dbg !321, !tbaa !173
  %149 = add nsw i32 %L.0.ph14, 1, !dbg !322
  call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !95, metadata !148), !dbg !174
  %150 = add nsw i64 %indvars.iv24, 2, !dbg !323
  %151 = trunc i64 %150 to i32, !dbg !325
  %152 = trunc i64 %indvars.iv26 to i32, !dbg !325
  %153 = icmp eq i32 %151, %152, !dbg !325
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1, !dbg !326
  br i1 %153, label %154, label %.outer11, !dbg !326

; <label>:154                                     ; preds = %146
  %indvars.iv.next27 = add i64 %indvars.iv26, 64, !dbg !327
  %155 = call i8* @sre_realloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 146, i8* %dsq.0.ph, i64 %indvars.iv.next27) #4, !dbg !329
  call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !94, metadata !148), !dbg !158
  br label %.outer, !dbg !327

; <label>:156                                     ; preds = %25
  %157 = trunc i64 %indvars.iv24 to i32, !dbg !154
  %158 = trunc i64 %indvars.iv to i32, !dbg !154
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %159 = load %struct.p7trace_s** %tr, align 8, !dbg !330, !tbaa !161
  %160 = getelementptr inbounds %struct.p7trace_s* %159, i64 0, i32 0, !dbg !331
  store i32 %158, i32* %160, align 4, !dbg !332, !tbaa !333
  %161 = load i32* @Alphabet_iupac, align 4, !dbg !334, !tbaa !169
  %162 = trunc i32 %161 to i8, !dbg !335
  %sext = shl i64 %indvars.iv24, 32, !dbg !336
  %163 = ashr exact i64 %sext, 32, !dbg !336
  %164 = getelementptr inbounds i8* %dsq.0.ph, i64 %163, !dbg !336
  store i8 %162, i8* %164, align 1, !dbg !337, !tbaa !173
  %165 = shl i64 %indvars.iv24, 32, !dbg !338
  %sext28 = add i64 %165, 4294967296, !dbg !338
  %166 = ashr exact i64 %sext28, 32, !dbg !338
  %167 = getelementptr inbounds i8* %dsq.0.ph, i64 %166, !dbg !338
  store i8 0, i8* %167, align 1, !dbg !339, !tbaa !173
  %168 = add nsw i32 %157, -1, !dbg !340
  call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !95, metadata !148), !dbg !174
  %169 = icmp eq i8** %ret_dsq, null, !dbg !341
  br i1 %169, label %171, label %170, !dbg !343

; <label>:170                                     ; preds = %156
  store i8* %dsq.0.ph, i8** %ret_dsq, align 8, !dbg !344, !tbaa !161
  br label %172, !dbg !345

; <label>:171                                     ; preds = %156
  call void @free(i8* %dsq.0.ph) #5, !dbg !346
  br label %172

; <label>:172                                     ; preds = %171, %170
  %173 = icmp eq i32* %ret_L, null, !dbg !347
  br i1 %173, label %175, label %174, !dbg !349

; <label>:174                                     ; preds = %172
  store i32 %168, i32* %ret_L, align 4, !dbg !350, !tbaa !169
  br label %175, !dbg !351

; <label>:175                                     ; preds = %172, %174
  %176 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !352
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !91, metadata !148), !dbg !154
  %177 = load %struct.p7trace_s** %tr, align 8, !dbg !354, !tbaa !161
  br i1 %176, label %179, label %178, !dbg !355

; <label>:178                                     ; preds = %175
  store %struct.p7trace_s* %177, %struct.p7trace_s** %ret_tr, align 8, !dbg !356, !tbaa !161
  br label %180, !dbg !357

; <label>:179                                     ; preds = %175
  call void @P7FreeTrace(%struct.p7trace_s* %177) #4, !dbg !358
  br label %180

; <label>:180                                     ; preds = %179, %178
  ret void, !dbg !359
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare void @TraceSet(%struct.p7trace_s*, i32, i8 signext, i32, i32) #2

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #2

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @EmitConsensusSequence(%struct.plan7_s* nocapture readonly %hmm, i8** %ret_seq, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
  %tr = alloca %struct.p7trace_s*, align 8
  %mp = alloca float*, align 8
  %ip = alloca float*, align 8
  %dp = alloca float*, align 8
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !107, metadata !148), !dbg !360
  tail call void @llvm.dbg.value(metadata i8** %ret_seq, i64 0, metadata !108, metadata !148), !dbg !361
  tail call void @llvm.dbg.value(metadata i8** %ret_dsq, i64 0, metadata !109, metadata !148), !dbg !362
  tail call void @llvm.dbg.value(metadata i32* %ret_L, i64 0, metadata !110, metadata !148), !dbg !363
  tail call void @llvm.dbg.value(metadata %struct.p7trace_s** %ret_tr, i64 0, metadata !111, metadata !148), !dbg !364
  %1 = load i32* @Alphabet_type, align 4, !dbg !365, !tbaa !169
  %2 = icmp eq i32 %1, 3, !dbg !367
  %. = select i1 %2, float 5.000000e-01, float 0x3FECCCCCC0000000, !dbg !368
  tail call void @llvm.dbg.value(metadata float** %mp, i64 0, metadata !115, metadata !148), !dbg !369
  tail call void @llvm.dbg.value(metadata float** %ip, i64 0, metadata !116, metadata !148), !dbg !370
  tail call void @llvm.dbg.value(metadata float** %dp, i64 0, metadata !117, metadata !148), !dbg !371
  call void @StateOccupancy(%struct.plan7_s* %hmm, float** %mp, float** %ip, float** %dp) #5, !dbg !372
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !120, metadata !148), !dbg !373
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !148), !dbg !374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !148), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !121, metadata !148), !dbg !376
  %3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !377
  %4 = load i32* %3, align 4, !dbg !377, !tbaa !210
  %5 = icmp slt i32 %4, 1, !dbg !380
  br i1 %5, label %._crit_edge17, label %.lr.ph16, !dbg !381

.lr.ph16:                                         ; preds = %0
  %6 = load float** %mp, align 8, !dbg !382, !tbaa !161
  %7 = load float** %ip, align 8, !dbg !385, !tbaa !161
  %8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !387
  %9 = sext i32 %4 to i64, !dbg !381
  tail call void @llvm.dbg.value(metadata float** %mp, i64 0, metadata !115, metadata !148), !dbg !369
  %10 = getelementptr inbounds float* %6, i64 1, !dbg !382
  %11 = load float* %10, align 4, !dbg !382, !tbaa !209
  %12 = fcmp ult float %11, 5.000000e-01, !dbg !388
  %13 = zext i1 %12 to i32, !dbg !389
  %14 = xor i32 %13, 1, !dbg !389
  %15 = icmp sgt i32 %4, 1, !dbg !390
  br i1 %15, label %.lr.ph39, label %._crit_edge17, !dbg !391

.lr.ph39:                                         ; preds = %.lr.ph16, %.thread
  %ndel.138 = phi i32 [ %ndel.1, %.thread ], [ %13, %.lr.ph16 ]
  %nmat.137 = phi i32 [ %nmat.1, %.thread ], [ %14, %.lr.ph16 ]
  %nins.01336 = phi i32 [ %nins.1.ph, %.thread ], [ 0, %.lr.ph16 ]
  %indvars.iv2535 = phi i64 [ %indvars.iv.next2631, %.thread ], [ 1, %.lr.ph16 ]
  tail call void @llvm.dbg.value(metadata float** %ip, i64 0, metadata !116, metadata !148), !dbg !370
  %16 = getelementptr inbounds float* %7, i64 %indvars.iv2535, !dbg !385
  %17 = load float* %16, align 4, !dbg !385, !tbaa !209
  %18 = fcmp ult float %17, 5.000000e-01, !dbg !392
  br i1 %18, label %.thread, label %19, !dbg !393

; <label>:19                                      ; preds = %.lr.ph39
  %20 = load float*** %8, align 8, !dbg !387, !tbaa !218
  %21 = getelementptr inbounds float** %20, i64 %indvars.iv2535, !dbg !394
  %22 = load float** %21, align 8, !dbg !394, !tbaa !161
  %23 = getelementptr inbounds float* %22, i64 4, !dbg !394
  %24 = load float* %23, align 4, !dbg !394, !tbaa !209
  %25 = fsub float 1.000000e+00, %24, !dbg !395
  %26 = fdiv float 1.000000e+00, %25, !dbg !396
  %27 = fptosi float %26 to i32, !dbg !397
  %28 = add nsw i32 %27, %nins.01336, !dbg !398
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !120, metadata !148), !dbg !373
  br label %.thread, !dbg !399

.thread:                                          ; preds = %.lr.ph39, %19
  %nins.1.ph = phi i32 [ %nins.01336, %.lr.ph39 ], [ %28, %19 ]
  %indvars.iv.next2631 = add nuw nsw i64 %indvars.iv2535, 1, !dbg !381
  tail call void @llvm.dbg.value(metadata float** %mp, i64 0, metadata !115, metadata !148), !dbg !369
  %29 = getelementptr inbounds float* %6, i64 %indvars.iv.next2631, !dbg !382
  %30 = load float* %29, align 4, !dbg !382, !tbaa !209
  %31 = fcmp ult float %30, 5.000000e-01, !dbg !388
  %32 = zext i1 %31 to i32, !dbg !389
  %33 = xor i32 %32, 1, !dbg !389
  %nmat.1 = add nsw i32 %33, %nmat.137, !dbg !389
  %ndel.1 = add nsw i32 %32, %ndel.138, !dbg !389
  %34 = icmp slt i64 %indvars.iv.next2631, %9, !dbg !390
  br i1 %34, label %.lr.ph39, label %._crit_edge17, !dbg !391

._crit_edge17:                                    ; preds = %.lr.ph16, %.thread, %0
  %nins.0.lcssa = phi i32 [ 0, %0 ], [ 0, %.lr.ph16 ], [ %nins.1.ph, %.thread ]
  %ndel.0.lcssa = phi i32 [ 0, %0 ], [ %13, %.lr.ph16 ], [ %ndel.1, %.thread ]
  %nmat.0.lcssa = phi i32 [ 0, %0 ], [ %14, %.lr.ph16 ], [ %nmat.1, %.thread ]
  %35 = add nsw i32 %nmat.0.lcssa, 6, !dbg !400
  %36 = add nsw i32 %35, %ndel.0.lcssa, !dbg !401
  %37 = add nsw i32 %36, %nins.0.lcssa, !dbg !402
  tail call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  call void @P7AllocTrace(i32 %37, %struct.p7trace_s** %tr) #4, !dbg !404
  %38 = add nsw i32 %nins.0.lcssa, %nmat.0.lcssa, !dbg !405
  %39 = add nsw i32 %38, 3, !dbg !405
  %40 = sext i32 %39 to i64, !dbg !405
  %41 = call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 327, i64 %40) #4, !dbg !405
  call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !113, metadata !148), !dbg !406
  %42 = add nsw i32 %38, 1, !dbg !407
  %43 = sext i32 %42 to i64, !dbg !407
  %44 = call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 328, i64 %43) #4, !dbg !407
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !114, metadata !148), !dbg !408
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %45 = load %struct.p7trace_s** %tr, align 8, !dbg !409, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %45, i32 0, i8 signext 4, i32 0, i32 0) #4, !dbg !410
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %46 = load %struct.p7trace_s** %tr, align 8, !dbg !411, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %46, i32 1, i8 signext 5, i32 0, i32 0) #4, !dbg !412
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %47 = load %struct.p7trace_s** %tr, align 8, !dbg !413, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %47, i32 2, i8 signext 6, i32 0, i32 0) #4, !dbg !414
  %48 = load i32* @Alphabet_iupac, align 4, !dbg !415, !tbaa !169
  %49 = trunc i32 %48 to i8, !dbg !415
  store i8 %49, i8* %41, align 1, !dbg !416, !tbaa !173
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !122, metadata !148), !dbg !417
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !123, metadata !148), !dbg !418
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !121, metadata !148), !dbg !376
  %50 = load i32* %3, align 4, !dbg !419, !tbaa !210
  %51 = icmp slt i32 %50, 1, !dbg !422
  br i1 %51, label %._crit_edge27, label %.lr.ph8, !dbg !423

._crit_edge27:                                    ; preds = %._crit_edge17
  %.phi.trans.insert = bitcast float** %mp to i8**
  %.pre28 = load i8** %.phi.trans.insert, align 8, !dbg !424, !tbaa !161
  br label %._crit_edge, !dbg !423

.lr.ph8:                                          ; preds = %._crit_edge17
  %52 = load float** %mp, align 8, !dbg !425, !tbaa !161
  %53 = load float** %ip, align 8, !dbg !428, !tbaa !161
  %54 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !430
  %55 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !432
  %56 = bitcast float* %52 to i8*
  br label %57, !dbg !423

; <label>:57                                      ; preds = %.loopexit, %.lr.ph8
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.loopexit ], [ 1, %.lr.ph8 ]
  %i.07 = phi i32 [ %i.3, %.loopexit ], [ 0, %.lr.ph8 ]
  %tpos.06 = phi i32 [ %tpos.3, %.loopexit ], [ 3, %.lr.ph8 ]
  call void @llvm.dbg.value(metadata float** %mp, i64 0, metadata !115, metadata !148), !dbg !369
  %58 = getelementptr inbounds float* %52, i64 %indvars.iv23, !dbg !425
  %59 = load float* %58, align 4, !dbg !425, !tbaa !209
  %60 = fcmp ult float %59, 5.000000e-01, !dbg !434
  br i1 %60, label %89, label %61, !dbg !435

; <label>:61                                      ; preds = %57
  %62 = load float*** %55, align 8, !dbg !432, !tbaa !274
  %63 = getelementptr inbounds float** %62, i64 %indvars.iv23, !dbg !436
  %64 = load float** %63, align 8, !dbg !436, !tbaa !161
  %65 = load i32* @Alphabet_size, align 4, !dbg !437, !tbaa !169
  %66 = call i32 @FArgMax(float* %64, i32 %65) #4, !dbg !438
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !124, metadata !148), !dbg !439
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %67 = load %struct.p7trace_s** %tr, align 8, !dbg !440, !tbaa !161
  %68 = add nsw i32 %i.07, 1, !dbg !441
  %69 = trunc i64 %indvars.iv23 to i32, !dbg !442
  call void @TraceSet(%struct.p7trace_s* %67, i32 %tpos.06, i8 signext 1, i32 %69, i32 %68) #4, !dbg !442
  %70 = sext i32 %66 to i64, !dbg !443
  %71 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %70, !dbg !443
  %72 = load i8* %71, align 1, !dbg !443, !tbaa !173
  %73 = sext i32 %i.07 to i64, !dbg !444
  %74 = getelementptr inbounds i8* %44, i64 %73, !dbg !444
  store i8 %72, i8* %74, align 1, !dbg !445, !tbaa !173
  %75 = trunc i32 %66 to i8, !dbg !446
  %76 = sext i32 %68 to i64, !dbg !447
  %77 = getelementptr inbounds i8* %41, i64 %76, !dbg !447
  store i8 %75, i8* %77, align 1, !dbg !448, !tbaa !173
  %78 = load float*** %55, align 8, !dbg !449, !tbaa !274
  %79 = getelementptr inbounds float** %78, i64 %indvars.iv23, !dbg !451
  %80 = load float** %79, align 8, !dbg !451, !tbaa !161
  %81 = getelementptr inbounds float* %80, i64 %70, !dbg !451
  %82 = load float* %81, align 4, !dbg !451, !tbaa !209
  %83 = fcmp olt float %82, %., !dbg !452
  br i1 %83, label %84, label %92, !dbg !453

; <label>:84                                      ; preds = %61
  %85 = load i8* %74, align 1, !dbg !454, !tbaa !173
  %86 = sext i8 %85 to i32, !dbg !455
  call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !143, metadata !148) #6, !dbg !456
  %87 = call i32 @__tolower(i32 %86) #4, !dbg !458
  %88 = trunc i32 %87 to i8, !dbg !459
  store i8 %88, i8* %74, align 1, !dbg !460, !tbaa !173
  br label %92, !dbg !461

; <label>:89                                      ; preds = %57
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %90 = load %struct.p7trace_s** %tr, align 8, !dbg !462, !tbaa !161
  %91 = trunc i64 %indvars.iv23 to i32, !dbg !464
  call void @TraceSet(%struct.p7trace_s* %90, i32 %tpos.06, i8 signext 2, i32 %91, i32 0) #4, !dbg !464
  br label %92

; <label>:92                                      ; preds = %61, %84, %89
  %i.1 = phi i32 [ %i.07, %89 ], [ %68, %84 ], [ %68, %61 ]
  %tpos.1 = add i32 %tpos.06, 1, !dbg !465
  %93 = load i32* %3, align 4, !dbg !466, !tbaa !210
  %94 = sext i32 %93 to i64, !dbg !467
  %95 = icmp slt i64 %indvars.iv23, %94, !dbg !467
  br i1 %95, label %96, label %.loopexit, !dbg !468

; <label>:96                                      ; preds = %92
  call void @llvm.dbg.value(metadata float** %ip, i64 0, metadata !116, metadata !148), !dbg !370
  %97 = getelementptr inbounds float* %53, i64 %indvars.iv23, !dbg !428
  %98 = load float* %97, align 4, !dbg !428, !tbaa !209
  %99 = fcmp ult float %98, 5.000000e-01, !dbg !469
  br i1 %99, label %.loopexit, label %100, !dbg !470

; <label>:100                                     ; preds = %96
  %101 = load float*** %54, align 8, !dbg !430, !tbaa !218
  %102 = getelementptr inbounds float** %101, i64 %indvars.iv23, !dbg !471
  %103 = load float** %102, align 8, !dbg !471, !tbaa !161
  %104 = getelementptr inbounds float* %103, i64 4, !dbg !471
  %105 = load float* %104, align 4, !dbg !471, !tbaa !209
  %106 = fsub float 1.000000e+00, %105, !dbg !472
  %107 = fdiv float 1.000000e+00, %106, !dbg !473
  %108 = fptosi float %107 to i32, !dbg !474
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !124, metadata !148), !dbg !439
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !124, metadata !148), !dbg !439
  %109 = icmp eq i32 %108, 0, !dbg !475
  br i1 %109, label %.loopexit, label %.lr.ph, !dbg !475

.lr.ph:                                           ; preds = %100
  %110 = sext i32 %i.1 to i64
  %111 = add i32 %tpos.1, %108, !dbg !475
  br label %112, !dbg !475

; <label>:112                                     ; preds = %.lr.ph, %112
  %indvars.iv = phi i64 [ %110, %.lr.ph ], [ %indvars.iv.next, %112 ]
  %x.03 = phi i32 [ %108, %.lr.ph ], [ %113, %112 ]
  %tpos.21 = phi i32 [ %tpos.1, %.lr.ph ], [ %122, %112 ]
  %113 = add nsw i32 %x.03, -1, !dbg !476
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %114 = load %struct.p7trace_s** %tr, align 8, !dbg !477, !tbaa !161
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !475
  %115 = trunc i64 %indvars.iv.next to i32, !dbg !479
  %116 = trunc i64 %indvars.iv23 to i32, !dbg !479
  call void @TraceSet(%struct.p7trace_s* %114, i32 %tpos.21, i8 signext 3, i32 %116, i32 %115) #4, !dbg !479
  %117 = getelementptr inbounds i8* %44, i64 %indvars.iv, !dbg !480
  store i8 120, i8* %117, align 1, !dbg !481, !tbaa !173
  %118 = load i32* @Alphabet_iupac, align 4, !dbg !482, !tbaa !169
  %119 = add i32 %118, 255, !dbg !483
  %120 = trunc i32 %119 to i8, !dbg !482
  %121 = getelementptr inbounds i8* %41, i64 %indvars.iv.next, !dbg !484
  store i8 %120, i8* %121, align 1, !dbg !485, !tbaa !173
  %122 = add nsw i32 %tpos.21, 1, !dbg !486
  call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !122, metadata !148), !dbg !417
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !124, metadata !148), !dbg !439
  %123 = icmp eq i32 %113, 0, !dbg !475
  br i1 %123, label %..loopexit_crit_edge, label %112, !dbg !475

..loopexit_crit_edge:                             ; preds = %112
  %124 = add i32 %i.1, %108, !dbg !475
  %.pre.pre = load i32* %3, align 4, !dbg !419, !tbaa !210
  br label %.loopexit, !dbg !475

.loopexit:                                        ; preds = %100, %..loopexit_crit_edge, %96, %92
  %125 = phi i32 [ %93, %96 ], [ %93, %92 ], [ %.pre.pre, %..loopexit_crit_edge ], [ %93, %100 ]
  %tpos.3 = phi i32 [ %tpos.1, %96 ], [ %tpos.1, %92 ], [ %111, %..loopexit_crit_edge ], [ %tpos.1, %100 ]
  %i.3 = phi i32 [ %i.1, %96 ], [ %i.1, %92 ], [ %124, %..loopexit_crit_edge ], [ %i.1, %100 ]
  %indvars.iv.next24 = add nuw i64 %indvars.iv23, 1, !dbg !423
  %126 = sext i32 %125 to i64, !dbg !422
  %127 = icmp slt i64 %indvars.iv23, %126, !dbg !422
  br i1 %127, label %57, label %._crit_edge, !dbg !423

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge27
  %128 = phi i8* [ %.pre28, %._crit_edge27 ], [ %56, %.loopexit ]
  %i.0.lcssa = phi i32 [ 0, %._crit_edge27 ], [ %i.3, %.loopexit ]
  %tpos.0.lcssa = phi i32 [ 3, %._crit_edge27 ], [ %tpos.3, %.loopexit ]
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %129 = load %struct.p7trace_s** %tr, align 8, !dbg !487, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %129, i32 %tpos.0.lcssa, i8 signext 7, i32 0, i32 0) #4, !dbg !488
  %130 = add nsw i32 %tpos.0.lcssa, 1, !dbg !489
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !122, metadata !148), !dbg !417
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %131 = load %struct.p7trace_s** %tr, align 8, !dbg !490, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %131, i32 %130, i8 signext 8, i32 0, i32 0) #4, !dbg !491
  %132 = add nsw i32 %tpos.0.lcssa, 2, !dbg !492
  call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !122, metadata !148), !dbg !417
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %133 = load %struct.p7trace_s** %tr, align 8, !dbg !493, !tbaa !161
  call void @TraceSet(%struct.p7trace_s* %133, i32 %132, i8 signext 9, i32 0, i32 0) #4, !dbg !494
  %134 = load i32* @Alphabet_iupac, align 4, !dbg !495, !tbaa !169
  %135 = trunc i32 %134 to i8, !dbg !495
  %136 = add nsw i32 %i.0.lcssa, 1, !dbg !496
  %137 = sext i32 %136 to i64, !dbg !497
  %138 = getelementptr inbounds i8* %41, i64 %137, !dbg !497
  store i8 %135, i8* %138, align 1, !dbg !498, !tbaa !173
  call void @llvm.dbg.value(metadata float** %mp, i64 0, metadata !115, metadata !148), !dbg !369
  call void @free(i8* %128) #5, !dbg !499
  call void @llvm.dbg.value(metadata float** %ip, i64 0, metadata !116, metadata !148), !dbg !370
  %139 = bitcast float** %ip to i8**, !dbg !500
  %140 = load i8** %139, align 8, !dbg !500, !tbaa !161
  call void @free(i8* %140) #5, !dbg !501
  call void @llvm.dbg.value(metadata float** %dp, i64 0, metadata !117, metadata !148), !dbg !371
  %141 = bitcast float** %dp to i8**, !dbg !502
  %142 = load i8** %141, align 8, !dbg !502, !tbaa !161
  call void @free(i8* %142) #5, !dbg !503
  %143 = icmp eq i8** %ret_seq, null, !dbg !504
  br i1 %143, label %145, label %144, !dbg !506

; <label>:144                                     ; preds = %._crit_edge
  store i8* %44, i8** %ret_seq, align 8, !dbg !507, !tbaa !161
  br label %146, !dbg !508

; <label>:145                                     ; preds = %._crit_edge
  call void @free(i8* %44) #5, !dbg !509
  br label %146

; <label>:146                                     ; preds = %145, %144
  %147 = icmp eq i8** %ret_dsq, null, !dbg !510
  br i1 %147, label %149, label %148, !dbg !512

; <label>:148                                     ; preds = %146
  store i8* %41, i8** %ret_dsq, align 8, !dbg !513, !tbaa !161
  br label %150, !dbg !514

; <label>:149                                     ; preds = %146
  call void @free(i8* %41) #5, !dbg !515
  br label %150

; <label>:150                                     ; preds = %149, %148
  %151 = icmp eq i32* %ret_L, null, !dbg !516
  br i1 %151, label %153, label %152, !dbg !518

; <label>:152                                     ; preds = %150
  store i32 %i.0.lcssa, i32* %ret_L, align 4, !dbg !519, !tbaa !169
  br label %153, !dbg !520

; <label>:153                                     ; preds = %150, %152
  %154 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !521
  call void @llvm.dbg.value(metadata %struct.p7trace_s** %tr, i64 0, metadata !112, metadata !148), !dbg !403
  %155 = load %struct.p7trace_s** %tr, align 8, !dbg !523, !tbaa !161
  br i1 %154, label %157, label %156, !dbg !524

; <label>:156                                     ; preds = %153
  store %struct.p7trace_s* %155, %struct.p7trace_s** %ret_tr, align 8, !dbg !525, !tbaa !161
  br label %158, !dbg !526

; <label>:157                                     ; preds = %153
  call void @P7FreeTrace(%struct.p7trace_s* %155) #4, !dbg !527
  br label %158

; <label>:158                                     ; preds = %157, %156
  ret void, !dbg !528
}

; Function Attrs: nounwind optsize ssp uwtable
define void @StateOccupancy(%struct.plan7_s* nocapture readonly %hmm, float** nocapture %ret_mp, float** nocapture %ret_ip, float** nocapture %ret_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !130, metadata !148), !dbg !529
  tail call void @llvm.dbg.value(metadata float** %ret_mp, i64 0, metadata !131, metadata !148), !dbg !530
  tail call void @llvm.dbg.value(metadata float** %ret_ip, i64 0, metadata !132, metadata !148), !dbg !531
  tail call void @llvm.dbg.value(metadata float** %ret_dp, i64 0, metadata !133, metadata !148), !dbg !532
  %1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !533
  %2 = load i32* %1, align 4, !dbg !533, !tbaa !210
  %3 = add nsw i32 %2, 1, !dbg !533
  %4 = sext i32 %3 to i64, !dbg !533
  %5 = shl nsw i64 %4, 2, !dbg !533
  %6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 414, i64 %5) #4, !dbg !533
  %7 = bitcast i8* %6 to float*, !dbg !533
  tail call void @llvm.dbg.value(metadata float* %7, i64 0, metadata !134, metadata !148), !dbg !534
  %8 = load i32* %1, align 4, !dbg !535, !tbaa !210
  %9 = sext i32 %8 to i64, !dbg !535
  %10 = shl nsw i64 %9, 2, !dbg !535
  %11 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 415, i64 %10) #4, !dbg !535
  %12 = bitcast i8* %11 to float*, !dbg !535
  tail call void @llvm.dbg.value(metadata float* %12, i64 0, metadata !135, metadata !148), !dbg !536
  %13 = load i32* %1, align 4, !dbg !537, !tbaa !210
  %14 = add nsw i32 %13, 1, !dbg !537
  %15 = sext i32 %14 to i64, !dbg !537
  %16 = shl nsw i64 %15, 2, !dbg !537
  %17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 416, i64 %16) #4, !dbg !537
  %18 = bitcast i8* %17 to float*, !dbg !537
  tail call void @llvm.dbg.value(metadata float* %18, i64 0, metadata !136, metadata !148), !dbg !538
  %19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !539
  %20 = bitcast float* %19 to i32*, !dbg !539
  %21 = load i32* %20, align 4, !dbg !539, !tbaa !204
  %22 = getelementptr inbounds i8* %17, i64 4, !dbg !540
  %23 = bitcast i8* %22 to i32*, !dbg !540
  store i32 %21, i32* %23, align 4, !dbg !540, !tbaa !209
  %24 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !541
  %25 = load float** %24, align 8, !dbg !541, !tbaa !207
  %26 = getelementptr inbounds float* %25, i64 1, !dbg !542
  %27 = load float* %26, align 4, !dbg !542, !tbaa !209
  %28 = getelementptr inbounds i8* %6, i64 4, !dbg !543
  %29 = bitcast i8* %28 to float*, !dbg !543
  store float %27, float* %29, align 4, !dbg !544, !tbaa !209
  %30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !545
  %31 = load float*** %30, align 8, !dbg !545, !tbaa !218
  %32 = getelementptr inbounds float** %31, i64 1, !dbg !546
  %33 = load float** %32, align 8, !dbg !546, !tbaa !161
  %34 = getelementptr inbounds float* %33, i64 1, !dbg !546
  %35 = load float* %34, align 4, !dbg !546, !tbaa !209
  %36 = fmul float %27, %35, !dbg !547
  %37 = getelementptr inbounds i8* %11, i64 4, !dbg !548
  %38 = bitcast i8* %37 to float*, !dbg !548
  store float %36, float* %38, align 4, !dbg !549, !tbaa !209
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !137, metadata !148), !dbg !550
  %39 = load i32* %1, align 4, !dbg !551, !tbaa !210
  %40 = icmp slt i32 %39, 2, !dbg !554
  br i1 %40, label %._crit_edge, label %.lr.ph, !dbg !555

.lr.ph:                                           ; preds = %0
  %41 = sext i32 %39 to i64, !dbg !555
  %.phi.trans.insert3 = getelementptr inbounds i8* %17, i64 4
  %42 = bitcast i8* %.phi.trans.insert3 to float*
  %.pre4 = load float* %42, align 4, !dbg !556, !tbaa !209
  br label %43, !dbg !555

; <label>:43                                      ; preds = %._crit_edge2, %.lr.ph
  %44 = phi float [ %88, %._crit_edge2 ], [ %.pre4, %.lr.ph ]
  %45 = phi float* [ %.pre, %._crit_edge2 ], [ %33, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge2 ], [ 2, %.lr.ph ]
  %46 = add nsw i64 %indvars.iv, -1, !dbg !558
  %47 = getelementptr inbounds float* %7, i64 %46, !dbg !559
  %48 = load float* %47, align 4, !dbg !559, !tbaa !209
  %49 = load float* %45, align 4, !dbg !560, !tbaa !209
  %50 = fmul float %48, %49, !dbg !561
  %51 = getelementptr inbounds float* %12, i64 %46, !dbg !562
  %52 = load float* %51, align 4, !dbg !562, !tbaa !209
  %53 = fadd float %50, %52, !dbg !563
  %54 = getelementptr inbounds float* %18, i64 %46, !dbg !556
  %55 = getelementptr inbounds float* %45, i64 5, !dbg !564
  %56 = load float* %55, align 4, !dbg !564, !tbaa !209
  %57 = fmul float %44, %56, !dbg !565
  %58 = fadd float %53, %57, !dbg !566
  %59 = getelementptr inbounds float* %25, i64 %indvars.iv, !dbg !567
  %60 = load float* %59, align 4, !dbg !567, !tbaa !209
  %61 = fadd float %58, %60, !dbg !568
  %62 = getelementptr inbounds float* %7, i64 %indvars.iv, !dbg !569
  store float %61, float* %62, align 4, !dbg !570, !tbaa !209
  %63 = getelementptr inbounds float* %45, i64 2, !dbg !571
  %64 = load float* %63, align 4, !dbg !571, !tbaa !209
  %65 = fmul float %48, %64, !dbg !572
  %66 = load float* %54, align 4, !dbg !573, !tbaa !209
  %67 = getelementptr inbounds float* %45, i64 6, !dbg !574
  %68 = load float* %67, align 4, !dbg !574, !tbaa !209
  %69 = fmul float %66, %68, !dbg !575
  %70 = fadd float %65, %69, !dbg !576
  %71 = getelementptr inbounds float* %18, i64 %indvars.iv, !dbg !577
  store float %70, float* %71, align 4, !dbg !578, !tbaa !209
  %72 = icmp slt i64 %indvars.iv, %41, !dbg !579
  br i1 %72, label %73, label %81, !dbg !581

; <label>:73                                      ; preds = %43
  %74 = load float* %62, align 4, !dbg !582, !tbaa !209
  %75 = getelementptr inbounds float** %31, i64 %indvars.iv, !dbg !584
  %76 = load float** %75, align 8, !dbg !584, !tbaa !161
  %77 = getelementptr inbounds float* %76, i64 1, !dbg !584
  %78 = load float* %77, align 4, !dbg !584, !tbaa !209
  %79 = fmul float %74, %78, !dbg !585
  %80 = getelementptr inbounds float* %12, i64 %indvars.iv, !dbg !586
  store float %79, float* %80, align 4, !dbg !587, !tbaa !209
  %.pre5 = load float* %71, align 4, !dbg !588, !tbaa !209
  br label %81, !dbg !589

; <label>:81                                      ; preds = %73, %43
  %82 = phi float [ %.pre5, %73 ], [ %70, %43 ]
  %83 = load float* %62, align 4, !dbg !590, !tbaa !209
  %84 = fadd float %83, %82, !dbg !591
  %85 = fdiv float %83, %84, !dbg !592
  store float %85, float* %62, align 4, !dbg !592, !tbaa !209
  %86 = load float* %71, align 4, !dbg !593, !tbaa !209
  %87 = fadd float %85, %86, !dbg !594
  %88 = fdiv float %86, %87, !dbg !595
  store float %88, float* %71, align 4, !dbg !595, !tbaa !209
  br i1 %72, label %._crit_edge2, label %._crit_edge, !dbg !555

._crit_edge2:                                     ; preds = %81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !555
  %.phi.trans.insert = getelementptr inbounds float** %31, i64 %indvars.iv
  %.pre = load float** %.phi.trans.insert, align 8, !dbg !560, !tbaa !161
  br label %43, !dbg !555

._crit_edge:                                      ; preds = %81, %0
  %89 = bitcast float** %ret_mp to i8**, !dbg !596
  store i8* %6, i8** %89, align 8, !dbg !596, !tbaa !161
  %90 = bitcast float** %ret_dp to i8**, !dbg !597
  store i8* %17, i8** %90, align 8, !dbg !597, !tbaa !161
  %91 = bitcast float** %ret_ip to i8**, !dbg !598
  store i8* %11, i8** %91, align 8, !dbg !598, !tbaa !161
  ret void, !dbg !599
}

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #2

; Function Attrs: optsize
declare i32 @__tolower(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!144, !145, !146}
!llvm.ident = !{!147}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/emit.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8, !103, !126, !138}
!8 = !DISubprogram(name: "EmitSequence", scope: !1, file: !1, line: 42, type: !9, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.plan7_s*, i8**, i32*, %struct.p7trace_s**)* @EmitSequence, variables: !86)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !77, !26, !78}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !13, line: 101, size: 3712, align: 64, elements: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !{!15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !42, !43, !44, !45, !50, !51, !52, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !13, line: 113, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !12, file: !13, line: 114, baseType: !16, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !12, file: !13, line: 115, baseType: !16, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !12, file: !13, line: 116, baseType: !16, size: 64, align: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !12, file: !13, line: 117, baseType: !16, size: 64, align: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !12, file: !13, line: 118, baseType: !16, size: 64, align: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !12, file: !13, line: 119, baseType: !16, size: 64, align: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !12, file: !13, line: 120, baseType: !6, size: 32, align: 32, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !12, file: !13, line: 121, baseType: !16, size: 64, align: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !12, file: !13, line: 122, baseType: !26, size: 64, align: 64, offset: 576)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !12, file: !13, line: 123, baseType: !6, size: 32, align: 32, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !12, file: !13, line: 134, baseType: !26, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !12, file: !13, line: 135, baseType: !26, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !12, file: !13, line: 136, baseType: !26, size: 64, align: 64, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !12, file: !13, line: 144, baseType: !32, size: 32, align: 32, offset: 896)
!32 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !12, file: !13, line: 144, baseType: !32, size: 32, align: 32, offset: 928)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !12, file: !13, line: 145, baseType: !32, size: 32, align: 32, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !12, file: !13, line: 145, baseType: !32, size: 32, align: 32, offset: 992)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !12, file: !13, line: 146, baseType: !32, size: 32, align: 32, offset: 1024)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !12, file: !13, line: 146, baseType: !32, size: 32, align: 32, offset: 1056)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !12, file: !13, line: 155, baseType: !6, size: 32, align: 32, offset: 1088)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !12, file: !13, line: 156, baseType: !40, size: 64, align: 64, offset: 1152)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !12, file: !13, line: 157, baseType: !40, size: 64, align: 64, offset: 1216)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !12, file: !13, line: 158, baseType: !40, size: 64, align: 64, offset: 1280)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !12, file: !13, line: 159, baseType: !32, size: 32, align: 32, offset: 1344)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !12, file: !13, line: 168, baseType: !46, size: 256, align: 32, offset: 1376)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, align: 32, elements: !47)
!47 = !{!48, !49}
!48 = !DISubrange(count: 4)
!49 = !DISubrange(count: 2)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !12, file: !13, line: 169, baseType: !41, size: 64, align: 64, offset: 1664)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !12, file: !13, line: 170, baseType: !41, size: 64, align: 64, offset: 1728)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !12, file: !13, line: 174, baseType: !53, size: 640, align: 32, offset: 1792)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 640, align: 32, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 20)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !12, file: !13, line: 175, baseType: !32, size: 32, align: 32, offset: 2432)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !12, file: !13, line: 197, baseType: !58, size: 64, align: 64, offset: 2496)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !12, file: !13, line: 198, baseType: !58, size: 64, align: 64, offset: 2560)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !12, file: !13, line: 199, baseType: !58, size: 64, align: 64, offset: 2624)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !12, file: !13, line: 200, baseType: !62, size: 256, align: 32, offset: 2688)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, align: 32, elements: !47)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !12, file: !13, line: 201, baseType: !26, size: 64, align: 64, offset: 2944)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !12, file: !13, line: 202, baseType: !26, size: 64, align: 64, offset: 3008)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !12, file: !13, line: 203, baseType: !26, size: 64, align: 64, offset: 3072)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !12, file: !13, line: 203, baseType: !26, size: 64, align: 64, offset: 3136)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !12, file: !13, line: 203, baseType: !26, size: 64, align: 64, offset: 3200)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !12, file: !13, line: 203, baseType: !26, size: 64, align: 64, offset: 3264)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !12, file: !13, line: 203, baseType: !26, size: 64, align: 64, offset: 3328)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !12, file: !13, line: 214, baseType: !58, size: 64, align: 64, offset: 3392)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !12, file: !13, line: 215, baseType: !58, size: 64, align: 64, offset: 3456)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !12, file: !13, line: 216, baseType: !6, size: 32, align: 32, offset: 3520)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !12, file: !13, line: 217, baseType: !6, size: 32, align: 32, offset: 3552)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !12, file: !13, line: 222, baseType: !32, size: 32, align: 32, offset: 3584)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !12, file: !13, line: 223, baseType: !32, size: 32, align: 32, offset: 3616)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !13, line: 225, baseType: !6, size: 32, align: 32, offset: 3648)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "p7trace_s", file: !13, line: 374, size: 256, align: 64, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tlen", scope: !80, file: !13, line: 375, baseType: !6, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "statetype", scope: !80, file: !13, line: 376, baseType: !16, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "nodeidx", scope: !80, file: !13, line: 377, baseType: !26, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !80, file: !13, line: 378, baseType: !26, size: 64, align: 64, offset: 192)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !8, file: !1, line: 42, type: !11)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dsq", arg: 2, scope: !8, file: !1, line: 42, type: !77)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_L", arg: 3, scope: !8, file: !1, line: 42, type: !26)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_tr", arg: 4, scope: !8, file: !1, line: 42, type: !78)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tr", scope: !8, file: !1, line: 44, type: !79)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !8, file: !1, line: 45, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 46, type: !6)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsq", scope: !8, file: !1, line: 47, type: !16)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "L", scope: !8, file: !1, line: 48, type: !6)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc_tlen", scope: !8, file: !1, line: 49, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc_L", scope: !8, file: !1, line: 50, type: !6)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tpos", scope: !8, file: !1, line: 51, type: !6)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !8, file: !1, line: 52, type: !6)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !8, file: !1, line: 53, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, align: 32, elements: !102)
!102 = !{!48}
!103 = !DISubprogram(name: "EmitConsensusSequence", scope: !1, file: !1, line: 296, type: !104, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.plan7_s*, i8**, i8**, i32*, %struct.p7trace_s**)* @EmitConsensusSequence, variables: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !11, !77, !77, !26, !78}
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !103, file: !1, line: 296, type: !11)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_seq", arg: 2, scope: !103, file: !1, line: 296, type: !77)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dsq", arg: 3, scope: !103, file: !1, line: 296, type: !77)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_L", arg: 4, scope: !103, file: !1, line: 296, type: !26)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_tr", arg: 5, scope: !103, file: !1, line: 296, type: !78)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tr", scope: !103, file: !1, line: 298, type: !79)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsq", scope: !103, file: !1, line: 299, type: !16)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !103, file: !1, line: 299, type: !16)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mp", scope: !103, file: !1, line: 300, type: !41)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ip", scope: !103, file: !1, line: 300, type: !41)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dp", scope: !103, file: !1, line: 300, type: !41)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmat", scope: !103, file: !1, line: 301, type: !6)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndel", scope: !103, file: !1, line: 301, type: !6)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nins", scope: !103, file: !1, line: 301, type: !6)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !103, file: !1, line: 302, type: !6)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tpos", scope: !103, file: !1, line: 303, type: !6)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !103, file: !1, line: 304, type: !6)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !103, file: !1, line: 305, type: !6)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mthresh", scope: !103, file: !1, line: 306, type: !32)
!126 = !DISubprogram(name: "StateOccupancy", scope: !1, file: !1, line: 407, type: !127, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.plan7_s*, float**, float**, float**)* @StateOccupancy, variables: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !11, !40, !40, !40}
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !126, file: !1, line: 407, type: !11)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_mp", arg: 2, scope: !126, file: !1, line: 407, type: !40)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_ip", arg: 3, scope: !126, file: !1, line: 407, type: !40)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dp", arg: 4, scope: !126, file: !1, line: 407, type: !40)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmp", scope: !126, file: !1, line: 409, type: !41)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fip", scope: !126, file: !1, line: 409, type: !41)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdp", scope: !126, file: !1, line: 409, type: !41)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !126, file: !1, line: 410, type: !6)
!138 = !DISubprogram(name: "tolower", scope: !139, file: !139, line: 292, type: !140, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, variables: !142)
!139 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!140 = !DISubroutineType(types: !141)
!141 = !{!6, !6}
!142 = !{!143}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !138, file: !139, line: 292, type: !6)
!144 = !{i32 2, !"Dwarf Version", i32 2}
!145 = !{i32 2, !"Debug Info Version", i32 700000003}
!146 = !{i32 1, !"PIC Level", i32 2}
!147 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!148 = !DIExpression()
!149 = !DILocation(line: 42, column: 30, scope: !8)
!150 = !DILocation(line: 42, column: 42, scope: !8)
!151 = !DILocation(line: 42, column: 56, scope: !8)
!152 = !DILocation(line: 42, column: 82, scope: !8)
!153 = !DILocation(line: 53, column: 9, scope: !8)
!154 = !DILocation(line: 44, column: 21, scope: !8)
!155 = !DILocation(line: 57, column: 3, scope: !8)
!156 = !DILocation(line: 49, column: 9, scope: !8)
!157 = !DILocation(line: 59, column: 9, scope: !8)
!158 = !DILocation(line: 47, column: 9, scope: !8)
!159 = !DILocation(line: 50, column: 9, scope: !8)
!160 = !DILocation(line: 62, column: 12, scope: !8)
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 62, column: 3, scope: !8)
!166 = !DILocation(line: 63, column: 12, scope: !8)
!167 = !DILocation(line: 63, column: 3, scope: !8)
!168 = !DILocation(line: 64, column: 19, scope: !8)
!169 = !{!170, !170, i64 0}
!170 = !{!"int", !163, i64 0}
!171 = !DILocation(line: 64, column: 12, scope: !8)
!172 = !DILocation(line: 64, column: 10, scope: !8)
!173 = !{!163, !163, i64 0}
!174 = !DILocation(line: 48, column: 9, scope: !8)
!175 = !DILocation(line: 46, column: 9, scope: !8)
!176 = !DILocation(line: 45, column: 9, scope: !8)
!177 = !DILocation(line: 51, column: 9, scope: !8)
!178 = !DILocation(line: 128, column: 16, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 125, column: 16)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 124, column: 16)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 123, column: 16)
!182 = distinct !DILexicalBlock(scope: !8, file: !1, line: 71, column: 5)
!183 = !DILocation(line: 123, column: 48, scope: !181)
!184 = !DILocation(line: 124, column: 48, scope: !180)
!185 = !DILocation(line: 76, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 74, column: 21)
!187 = !DILocation(line: 76, column: 7, scope: !186)
!188 = !DILocation(line: 77, column: 31, scope: !186)
!189 = !DILocation(line: 81, column: 38, scope: !186)
!190 = !DILocation(line: 82, column: 33, scope: !186)
!191 = !DILocation(line: 83, column: 33, scope: !186)
!192 = !DILocation(line: 84, column: 33, scope: !186)
!193 = !DILocation(line: 85, column: 33, scope: !186)
!194 = !DILocation(line: 99, column: 10, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 98, column: 18)
!196 = distinct !DILexicalBlock(scope: !186, file: !1, line: 98, column: 6)
!197 = !DILocation(line: 100, column: 16, scope: !195)
!198 = !DILocation(line: 100, column: 4, scope: !195)
!199 = !DILocation(line: 100, column: 9, scope: !195)
!200 = !DILocation(line: 70, column: 3, scope: !8)
!201 = !DILocation(line: 70, column: 15, scope: !8)
!202 = !DILocation(line: 70, column: 10, scope: !8)
!203 = !DILocation(line: 74, column: 7, scope: !182)
!204 = !{!205, !206, i64 168}
!205 = !{!"plan7_s", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !170, i64 56, !162, i64 64, !162, i64 72, !170, i64 80, !162, i64 88, !162, i64 96, !162, i64 104, !206, i64 112, !206, i64 116, !206, i64 120, !206, i64 124, !206, i64 128, !206, i64 132, !170, i64 136, !162, i64 144, !162, i64 152, !162, i64 160, !206, i64 168, !163, i64 172, !162, i64 208, !162, i64 216, !163, i64 224, !206, i64 304, !162, i64 312, !162, i64 320, !162, i64 328, !163, i64 336, !162, i64 368, !162, i64 376, !162, i64 384, !162, i64 392, !162, i64 400, !162, i64 408, !162, i64 416, !162, i64 424, !162, i64 432, !170, i64 440, !170, i64 444, !206, i64 448, !206, i64 452, !170, i64 456}
!206 = !{!"float", !163, i64 0}
!207 = !{!205, !162, i64 208}
!208 = !DILocation(line: 76, column: 16, scope: !186)
!209 = !{!206, !206, i64 0}
!210 = !{!205, !170, i64 136}
!211 = !DILocation(line: 77, column: 32, scope: !186)
!212 = !DILocation(line: 77, column: 6, scope: !186)
!213 = !DILocation(line: 78, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !186, file: !1, line: 78, column: 6)
!215 = !DILocation(line: 78, column: 35, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !1, line: 78, column: 14)
!217 = !DILocation(line: 81, column: 33, scope: !186)
!218 = !{!205, !162, i64 144}
!219 = !DILocation(line: 81, column: 42, scope: !186)
!220 = !DILocation(line: 81, column: 25, scope: !186)
!221 = !DILocation(line: 81, column: 51, scope: !186)
!222 = !DILocation(line: 81, column: 24, scope: !186)
!223 = !DILocation(line: 81, column: 77, scope: !186)
!224 = !DILocation(line: 82, column: 25, scope: !186)
!225 = !DILocation(line: 82, column: 51, scope: !186)
!226 = !DILocation(line: 82, column: 24, scope: !186)
!227 = !DILocation(line: 82, column: 80, scope: !186)
!228 = !DILocation(line: 83, column: 25, scope: !186)
!229 = !DILocation(line: 83, column: 51, scope: !186)
!230 = !DILocation(line: 83, column: 24, scope: !186)
!231 = !DILocation(line: 83, column: 80, scope: !186)
!232 = !DILocation(line: 84, column: 25, scope: !186)
!233 = !DILocation(line: 84, column: 51, scope: !186)
!234 = !DILocation(line: 84, column: 24, scope: !186)
!235 = !DILocation(line: 84, column: 80, scope: !186)
!236 = !DILocation(line: 85, column: 25, scope: !186)
!237 = !DILocation(line: 85, column: 51, scope: !186)
!238 = !DILocation(line: 85, column: 24, scope: !186)
!239 = !DILocation(line: 85, column: 80, scope: !186)
!240 = !DILocation(line: 88, column: 15, scope: !241)
!241 = distinct !DILexicalBlock(scope: !186, file: !1, line: 88, column: 6)
!242 = !DILocation(line: 88, column: 8, scope: !241)
!243 = !DILocation(line: 88, column: 6, scope: !186)
!244 = !DILocation(line: 89, column: 20, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 88, column: 18)
!246 = !DILocation(line: 89, column: 25, scope: !245)
!247 = !DILocation(line: 89, column: 29, scope: !245)
!248 = !DILocation(line: 89, column: 12, scope: !245)
!249 = !DILocation(line: 89, column: 38, scope: !245)
!250 = !DILocation(line: 89, column: 11, scope: !245)
!251 = !DILocation(line: 90, column: 5, scope: !245)
!252 = !DILocation(line: 91, column: 2, scope: !245)
!253 = !DILocation(line: 98, column: 15, scope: !196)
!254 = !DILocation(line: 98, column: 8, scope: !196)
!255 = !DILocation(line: 98, column: 6, scope: !186)
!256 = !DILocation(line: 99, column: 13, scope: !195)
!257 = !DILocation(line: 99, column: 18, scope: !195)
!258 = !DILocation(line: 99, column: 4, scope: !195)
!259 = !{!205, !162, i64 216}
!260 = !DILocation(line: 100, column: 11, scope: !195)
!261 = !DILocation(line: 101, column: 12, scope: !195)
!262 = !DILocation(line: 101, column: 4, scope: !195)
!263 = !DILocation(line: 102, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !195, file: !1, line: 101, column: 26)
!265 = !DILocation(line: 52, column: 9, scope: !8)
!266 = !DILocation(line: 123, column: 16, scope: !182)
!267 = !DILocation(line: 104, column: 13, scope: !264)
!268 = !DILocation(line: 104, column: 30, scope: !264)
!269 = !DILocation(line: 106, column: 13, scope: !264)
!270 = !DILocation(line: 107, column: 4, scope: !264)
!271 = !DILocation(line: 117, column: 2, scope: !186)
!272 = !DILocation(line: 118, column: 7, scope: !186)
!273 = !DILocation(line: 123, column: 43, scope: !181)
!274 = !{!205, !162, i64 152}
!275 = !DILocation(line: 123, column: 56, scope: !181)
!276 = !DILocation(line: 123, column: 35, scope: !181)
!277 = !DILocation(line: 123, column: 29, scope: !181)
!278 = !DILocation(line: 124, column: 43, scope: !180)
!279 = !{!205, !162, i64 160}
!280 = !DILocation(line: 124, column: 56, scope: !180)
!281 = !DILocation(line: 124, column: 35, scope: !180)
!282 = !DILocation(line: 124, column: 29, scope: !180)
!283 = !DILocation(line: 125, column: 50, scope: !179)
!284 = !DILocation(line: 125, column: 32, scope: !179)
!285 = !DILocation(line: 125, column: 36, scope: !179)
!286 = !{!287, !162, i64 8}
!287 = !{!"p7trace_s", !170, i64 0, !162, i64 8, !162, i64 16, !162, i64 24}
!288 = !DILocation(line: 125, column: 54, scope: !179)
!289 = !DILocation(line: 125, column: 62, scope: !179)
!290 = !DILocation(line: 126, column: 43, scope: !179)
!291 = !DILocation(line: 126, column: 25, scope: !179)
!292 = !DILocation(line: 126, column: 29, scope: !179)
!293 = !DILocation(line: 126, column: 47, scope: !179)
!294 = !DILocation(line: 126, column: 55, scope: !179)
!295 = !DILocation(line: 127, column: 43, scope: !179)
!296 = !DILocation(line: 127, column: 25, scope: !179)
!297 = !DILocation(line: 127, column: 29, scope: !179)
!298 = !DILocation(line: 127, column: 47, scope: !179)
!299 = !DILocation(line: 125, column: 16, scope: !180)
!300 = !DILocation(line: 128, column: 27, scope: !179)
!301 = !DILocation(line: 128, column: 8, scope: !179)
!302 = !DILocation(line: 128, column: 2, scope: !179)
!303 = !DILocation(line: 132, column: 16, scope: !182)
!304 = !DILocation(line: 132, column: 40, scope: !182)
!305 = !DILocation(line: 132, column: 35, scope: !182)
!306 = !DILocation(line: 132, column: 7, scope: !182)
!307 = !DILocation(line: 133, column: 11, scope: !182)
!308 = !DILocation(line: 134, column: 16, scope: !309)
!309 = distinct !DILexicalBlock(scope: !182, file: !1, line: 134, column: 11)
!310 = !DILocation(line: 134, column: 11, scope: !182)
!311 = !DILocation(line: 135, column: 13, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 134, column: 31)
!313 = !DILocation(line: 136, column: 17, scope: !312)
!314 = !DILocation(line: 136, column: 2, scope: !312)
!315 = !DILocation(line: 137, column: 7, scope: !312)
!316 = !DILocation(line: 141, column: 11, scope: !182)
!317 = !DILocation(line: 142, column: 11, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 141, column: 22)
!319 = distinct !DILexicalBlock(scope: !182, file: !1, line: 141, column: 11)
!320 = !DILocation(line: 142, column: 2, scope: !318)
!321 = !DILocation(line: 142, column: 9, scope: !318)
!322 = !DILocation(line: 143, column: 3, scope: !318)
!323 = !DILocation(line: 144, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !1, line: 144, column: 6)
!325 = !DILocation(line: 144, column: 10, scope: !324)
!326 = !DILocation(line: 144, column: 6, scope: !318)
!327 = !DILocation(line: 147, column: 2, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 144, column: 22)
!329 = !DILocation(line: 146, column: 10, scope: !328)
!330 = !DILocation(line: 153, column: 3, scope: !8)
!331 = !DILocation(line: 153, column: 7, scope: !8)
!332 = !DILocation(line: 153, column: 12, scope: !8)
!333 = !{!287, !170, i64 0}
!334 = !DILocation(line: 158, column: 21, scope: !8)
!335 = !DILocation(line: 158, column: 14, scope: !8)
!336 = !DILocation(line: 158, column: 3, scope: !8)
!337 = !DILocation(line: 158, column: 12, scope: !8)
!338 = !DILocation(line: 159, column: 3, scope: !8)
!339 = !DILocation(line: 159, column: 12, scope: !8)
!340 = !DILocation(line: 160, column: 4, scope: !8)
!341 = !DILocation(line: 164, column: 15, scope: !342)
!342 = distinct !DILexicalBlock(scope: !8, file: !1, line: 164, column: 7)
!343 = !DILocation(line: 164, column: 7, scope: !8)
!344 = !DILocation(line: 164, column: 33, scope: !342)
!345 = !DILocation(line: 164, column: 24, scope: !342)
!346 = !DILocation(line: 164, column: 45, scope: !342)
!347 = !DILocation(line: 165, column: 15, scope: !348)
!348 = distinct !DILexicalBlock(scope: !8, file: !1, line: 165, column: 7)
!349 = !DILocation(line: 165, column: 7, scope: !8)
!350 = !DILocation(line: 165, column: 33, scope: !348)
!351 = !DILocation(line: 165, column: 24, scope: !348)
!352 = !DILocation(line: 166, column: 15, scope: !353)
!353 = distinct !DILexicalBlock(scope: !8, file: !1, line: 166, column: 7)
!354 = !DILocation(line: 166, column: 35, scope: !353)
!355 = !DILocation(line: 166, column: 7, scope: !8)
!356 = !DILocation(line: 166, column: 33, scope: !353)
!357 = !DILocation(line: 166, column: 24, scope: !353)
!358 = !DILocation(line: 166, column: 45, scope: !353)
!359 = !DILocation(line: 167, column: 3, scope: !8)
!360 = !DILocation(line: 296, column: 39, scope: !103)
!361 = !DILocation(line: 296, column: 51, scope: !103)
!362 = !DILocation(line: 296, column: 67, scope: !103)
!363 = !DILocation(line: 296, column: 81, scope: !103)
!364 = !DILocation(line: 296, column: 107, scope: !103)
!365 = !DILocation(line: 308, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !103, file: !1, line: 308, column: 7)
!367 = !DILocation(line: 308, column: 21, scope: !366)
!368 = !DILocation(line: 308, column: 34, scope: !366)
!369 = !DILocation(line: 300, column: 10, scope: !103)
!370 = !DILocation(line: 300, column: 15, scope: !103)
!371 = !DILocation(line: 300, column: 20, scope: !103)
!372 = !DILocation(line: 311, column: 3, scope: !103)
!373 = !DILocation(line: 301, column: 22, scope: !103)
!374 = !DILocation(line: 301, column: 16, scope: !103)
!375 = !DILocation(line: 301, column: 10, scope: !103)
!376 = !DILocation(line: 302, column: 10, scope: !103)
!377 = !DILocation(line: 317, column: 25, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 317, column: 3)
!379 = distinct !DILexicalBlock(scope: !103, file: !1, line: 317, column: 3)
!380 = !DILocation(line: 317, column: 17, scope: !378)
!381 = !DILocation(line: 317, column: 3, scope: !379)
!382 = !DILocation(line: 319, column: 11, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 319, column: 11)
!384 = distinct !DILexicalBlock(scope: !378, file: !1, line: 318, column: 5)
!385 = !DILocation(line: 320, column: 25, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !1, line: 320, column: 11)
!387 = !DILocation(line: 321, column: 35, scope: !386)
!388 = !DILocation(line: 319, column: 17, scope: !383)
!389 = !DILocation(line: 319, column: 11, scope: !384)
!390 = !DILocation(line: 320, column: 13, scope: !386)
!391 = !DILocation(line: 320, column: 22, scope: !386)
!392 = !DILocation(line: 320, column: 31, scope: !386)
!393 = !DILocation(line: 320, column: 11, scope: !384)
!394 = !DILocation(line: 321, column: 30, scope: !386)
!395 = !DILocation(line: 321, column: 28, scope: !386)
!396 = !DILocation(line: 321, column: 21, scope: !386)
!397 = !DILocation(line: 321, column: 10, scope: !386)
!398 = !DILocation(line: 321, column: 7, scope: !386)
!399 = !DILocation(line: 321, column: 2, scope: !386)
!400 = !DILocation(line: 326, column: 18, scope: !103)
!401 = !DILocation(line: 326, column: 25, scope: !103)
!402 = !DILocation(line: 326, column: 32, scope: !103)
!403 = !DILocation(line: 298, column: 21, scope: !103)
!404 = !DILocation(line: 326, column: 3, scope: !103)
!405 = !DILocation(line: 327, column: 9, scope: !103)
!406 = !DILocation(line: 299, column: 9, scope: !103)
!407 = !DILocation(line: 328, column: 9, scope: !103)
!408 = !DILocation(line: 299, column: 15, scope: !103)
!409 = !DILocation(line: 333, column: 12, scope: !103)
!410 = !DILocation(line: 333, column: 3, scope: !103)
!411 = !DILocation(line: 334, column: 12, scope: !103)
!412 = !DILocation(line: 334, column: 3, scope: !103)
!413 = !DILocation(line: 335, column: 12, scope: !103)
!414 = !DILocation(line: 335, column: 3, scope: !103)
!415 = !DILocation(line: 336, column: 12, scope: !103)
!416 = !DILocation(line: 336, column: 10, scope: !103)
!417 = !DILocation(line: 303, column: 10, scope: !103)
!418 = !DILocation(line: 304, column: 10, scope: !103)
!419 = !DILocation(line: 339, column: 25, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 339, column: 3)
!421 = distinct !DILexicalBlock(scope: !103, file: !1, line: 339, column: 3)
!422 = !DILocation(line: 339, column: 17, scope: !420)
!423 = !DILocation(line: 339, column: 3, scope: !421)
!424 = !DILocation(line: 376, column: 8, scope: !103)
!425 = !DILocation(line: 341, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 341, column: 11)
!427 = distinct !DILexicalBlock(scope: !420, file: !1, line: 340, column: 5)
!428 = !DILocation(line: 358, column: 25, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !1, line: 358, column: 11)
!430 = !DILocation(line: 360, column: 33, scope: !431)
!431 = distinct !DILexicalBlock(scope: !429, file: !1, line: 359, column: 2)
!432 = !DILocation(line: 343, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !1, line: 342, column: 2)
!434 = !DILocation(line: 341, column: 17, scope: !426)
!435 = !DILocation(line: 341, column: 11, scope: !427)
!436 = !DILocation(line: 343, column: 16, scope: !433)
!437 = !DILocation(line: 343, column: 29, scope: !433)
!438 = !DILocation(line: 343, column: 8, scope: !433)
!439 = !DILocation(line: 305, column: 10, scope: !103)
!440 = !DILocation(line: 344, column: 13, scope: !433)
!441 = !DILocation(line: 344, column: 32, scope: !433)
!442 = !DILocation(line: 344, column: 4, scope: !433)
!443 = !DILocation(line: 345, column: 15, scope: !433)
!444 = !DILocation(line: 345, column: 4, scope: !433)
!445 = !DILocation(line: 345, column: 13, scope: !433)
!446 = !DILocation(line: 346, column: 15, scope: !433)
!447 = !DILocation(line: 346, column: 4, scope: !433)
!448 = !DILocation(line: 346, column: 13, scope: !433)
!449 = !DILocation(line: 347, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !433, file: !1, line: 347, column: 8)
!451 = !DILocation(line: 347, column: 8, scope: !450)
!452 = !DILocation(line: 347, column: 23, scope: !450)
!453 = !DILocation(line: 347, column: 8, scope: !433)
!454 = !DILocation(line: 348, column: 29, scope: !450)
!455 = !DILocation(line: 348, column: 23, scope: !450)
!456 = !DILocation(line: 292, column: 13, scope: !138, inlinedAt: !457)
!457 = distinct !DILocation(line: 348, column: 15, scope: !450)
!458 = !DILocation(line: 294, column: 17, scope: !138, inlinedAt: !457)
!459 = !DILocation(line: 348, column: 15, scope: !450)
!460 = !DILocation(line: 348, column: 13, scope: !450)
!461 = !DILocation(line: 348, column: 6, scope: !450)
!462 = !DILocation(line: 354, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !426, file: !1, line: 353, column: 2)
!464 = !DILocation(line: 354, column: 4, scope: !463)
!465 = !DILocation(line: 350, column: 8, scope: !433)
!466 = !DILocation(line: 358, column: 20, scope: !429)
!467 = !DILocation(line: 358, column: 13, scope: !429)
!468 = !DILocation(line: 358, column: 22, scope: !429)
!469 = !DILocation(line: 358, column: 31, scope: !429)
!470 = !DILocation(line: 358, column: 11, scope: !427)
!471 = !DILocation(line: 360, column: 28, scope: !431)
!472 = !DILocation(line: 360, column: 26, scope: !431)
!473 = !DILocation(line: 360, column: 19, scope: !431)
!474 = !DILocation(line: 360, column: 8, scope: !431)
!475 = !DILocation(line: 361, column: 4, scope: !431)
!476 = !DILocation(line: 361, column: 12, scope: !431)
!477 = !DILocation(line: 363, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !431, file: !1, line: 362, column: 6)
!479 = !DILocation(line: 363, column: 8, scope: !478)
!480 = !DILocation(line: 364, column: 8, scope: !478)
!481 = !DILocation(line: 364, column: 17, scope: !478)
!482 = !DILocation(line: 365, column: 19, scope: !478)
!483 = !DILocation(line: 365, column: 34, scope: !478)
!484 = !DILocation(line: 365, column: 8, scope: !478)
!485 = !DILocation(line: 365, column: 17, scope: !478)
!486 = !DILocation(line: 367, column: 12, scope: !478)
!487 = !DILocation(line: 371, column: 12, scope: !103)
!488 = !DILocation(line: 371, column: 3, scope: !103)
!489 = !DILocation(line: 371, column: 38, scope: !103)
!490 = !DILocation(line: 372, column: 12, scope: !103)
!491 = !DILocation(line: 372, column: 3, scope: !103)
!492 = !DILocation(line: 372, column: 38, scope: !103)
!493 = !DILocation(line: 373, column: 12, scope: !103)
!494 = !DILocation(line: 373, column: 3, scope: !103)
!495 = !DILocation(line: 374, column: 14, scope: !103)
!496 = !DILocation(line: 374, column: 8, scope: !103)
!497 = !DILocation(line: 374, column: 3, scope: !103)
!498 = !DILocation(line: 374, column: 12, scope: !103)
!499 = !DILocation(line: 376, column: 3, scope: !103)
!500 = !DILocation(line: 377, column: 8, scope: !103)
!501 = !DILocation(line: 377, column: 3, scope: !103)
!502 = !DILocation(line: 378, column: 8, scope: !103)
!503 = !DILocation(line: 378, column: 3, scope: !103)
!504 = !DILocation(line: 379, column: 15, scope: !505)
!505 = distinct !DILexicalBlock(scope: !103, file: !1, line: 379, column: 7)
!506 = !DILocation(line: 379, column: 7, scope: !103)
!507 = !DILocation(line: 379, column: 33, scope: !505)
!508 = !DILocation(line: 379, column: 24, scope: !505)
!509 = !DILocation(line: 379, column: 45, scope: !505)
!510 = !DILocation(line: 380, column: 15, scope: !511)
!511 = distinct !DILexicalBlock(scope: !103, file: !1, line: 380, column: 7)
!512 = !DILocation(line: 380, column: 7, scope: !103)
!513 = !DILocation(line: 380, column: 33, scope: !511)
!514 = !DILocation(line: 380, column: 24, scope: !511)
!515 = !DILocation(line: 380, column: 45, scope: !511)
!516 = !DILocation(line: 381, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !103, file: !1, line: 381, column: 7)
!518 = !DILocation(line: 381, column: 7, scope: !103)
!519 = !DILocation(line: 381, column: 33, scope: !517)
!520 = !DILocation(line: 381, column: 24, scope: !517)
!521 = !DILocation(line: 382, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !103, file: !1, line: 382, column: 7)
!523 = !DILocation(line: 382, column: 35, scope: !522)
!524 = !DILocation(line: 382, column: 7, scope: !103)
!525 = !DILocation(line: 382, column: 33, scope: !522)
!526 = !DILocation(line: 382, column: 24, scope: !522)
!527 = !DILocation(line: 382, column: 45, scope: !522)
!528 = !DILocation(line: 383, column: 1, scope: !103)
!529 = !DILocation(line: 407, column: 32, scope: !126)
!530 = !DILocation(line: 407, column: 45, scope: !126)
!531 = !DILocation(line: 407, column: 61, scope: !126)
!532 = !DILocation(line: 407, column: 77, scope: !126)
!533 = !DILocation(line: 414, column: 9, scope: !126)
!534 = !DILocation(line: 409, column: 10, scope: !126)
!535 = !DILocation(line: 415, column: 9, scope: !126)
!536 = !DILocation(line: 409, column: 16, scope: !126)
!537 = !DILocation(line: 416, column: 9, scope: !126)
!538 = !DILocation(line: 409, column: 22, scope: !126)
!539 = !DILocation(line: 420, column: 17, scope: !126)
!540 = !DILocation(line: 420, column: 10, scope: !126)
!541 = !DILocation(line: 421, column: 17, scope: !126)
!542 = !DILocation(line: 421, column: 12, scope: !126)
!543 = !DILocation(line: 421, column: 3, scope: !126)
!544 = !DILocation(line: 421, column: 10, scope: !126)
!545 = !DILocation(line: 422, column: 26, scope: !126)
!546 = !DILocation(line: 422, column: 21, scope: !126)
!547 = !DILocation(line: 422, column: 19, scope: !126)
!548 = !DILocation(line: 422, column: 3, scope: !126)
!549 = !DILocation(line: 422, column: 10, scope: !126)
!550 = !DILocation(line: 410, column: 7, scope: !126)
!551 = !DILocation(line: 423, column: 25, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !1, line: 423, column: 3)
!553 = distinct !DILexicalBlock(scope: !126, file: !1, line: 423, column: 3)
!554 = !DILocation(line: 423, column: 17, scope: !552)
!555 = !DILocation(line: 423, column: 3, scope: !553)
!556 = !DILocation(line: 428, column: 16, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !1, line: 424, column: 5)
!558 = !DILocation(line: 426, column: 21, scope: !557)
!559 = !DILocation(line: 426, column: 16, scope: !557)
!560 = !DILocation(line: 426, column: 27, scope: !557)
!561 = !DILocation(line: 426, column: 25, scope: !557)
!562 = !DILocation(line: 427, column: 9, scope: !557)
!563 = !DILocation(line: 426, column: 44, scope: !557)
!564 = !DILocation(line: 428, column: 27, scope: !557)
!565 = !DILocation(line: 428, column: 25, scope: !557)
!566 = !DILocation(line: 427, column: 18, scope: !557)
!567 = !DILocation(line: 429, column: 9, scope: !557)
!568 = !DILocation(line: 428, column: 44, scope: !557)
!569 = !DILocation(line: 426, column: 7, scope: !557)
!570 = !DILocation(line: 426, column: 14, scope: !557)
!571 = !DILocation(line: 431, column: 27, scope: !557)
!572 = !DILocation(line: 431, column: 25, scope: !557)
!573 = !DILocation(line: 432, column: 9, scope: !557)
!574 = !DILocation(line: 432, column: 20, scope: !557)
!575 = !DILocation(line: 432, column: 18, scope: !557)
!576 = !DILocation(line: 431, column: 44, scope: !557)
!577 = !DILocation(line: 431, column: 7, scope: !557)
!578 = !DILocation(line: 431, column: 14, scope: !557)
!579 = !DILocation(line: 434, column: 13, scope: !580)
!580 = distinct !DILexicalBlock(scope: !557, file: !1, line: 434, column: 11)
!581 = !DILocation(line: 434, column: 11, scope: !557)
!582 = !DILocation(line: 435, column: 11, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 434, column: 23)
!584 = !DILocation(line: 435, column: 20, scope: !583)
!585 = !DILocation(line: 435, column: 18, scope: !583)
!586 = !DILocation(line: 435, column: 2, scope: !583)
!587 = !DILocation(line: 435, column: 9, scope: !583)
!588 = !DILocation(line: 439, column: 24, scope: !557)
!589 = !DILocation(line: 436, column: 7, scope: !583)
!590 = !DILocation(line: 439, column: 17, scope: !557)
!591 = !DILocation(line: 439, column: 23, scope: !557)
!592 = !DILocation(line: 439, column: 14, scope: !557)
!593 = !DILocation(line: 440, column: 24, scope: !557)
!594 = !DILocation(line: 440, column: 23, scope: !557)
!595 = !DILocation(line: 440, column: 14, scope: !557)
!596 = !DILocation(line: 454, column: 11, scope: !126)
!597 = !DILocation(line: 455, column: 11, scope: !126)
!598 = !DILocation(line: 456, column: 11, scope: !126)
!599 = !DILocation(line: 457, column: 1, scope: !126)
