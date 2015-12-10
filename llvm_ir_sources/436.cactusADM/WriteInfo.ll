; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%union.anon = type { %struct.cGH* }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }

@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"IOBasic_WriteInfo: No info output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"IOBasic_WriteInfo: Unsupported data type\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"IOBasic_WriteInfo: Internal error in reduction '%s'\00", align 1
@.str5 = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/WriteInfo.c,v 1.16 2001/12/28 21:22:52 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_WriteInfo_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str5, i64 0, i64 0), !dbg !127
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_WriteInfo(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !108, metadata !128), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !109, metadata !128), !dbg !130
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !115, metadata !128), !dbg !131
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !115, metadata !128), !dbg !131
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !132
  %2 = sext i32 %vindex to i64, !dbg !133
  %3 = getelementptr inbounds i8* %1, i64 48, !dbg !134
  %4 = bitcast i8* %3 to %struct.IOBASIC_REDUCTIONLIST**, !dbg !134
  %5 = load %struct.IOBASIC_REDUCTIONLIST** %4, align 8, !dbg !134, !tbaa !135
  %6 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %5, i64 %2, i32 1, !dbg !141
  %7 = load %struct.IOBASIC_REDUCTION** %6, align 8, !dbg !141, !tbaa !142
  tail call void @llvm.dbg.value(metadata %struct.IOBASIC_REDUCTION* %7, i64 0, metadata !114, metadata !128), !dbg !144
  %8 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #5, !dbg !145
  %9 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %8) #5, !dbg !147
  %10 = icmp eq i32 %9, 0, !dbg !147
  br i1 %10, label %11, label %19, !dbg !148

; <label>:11                                      ; preds = %0
  %12 = tail call i8* @CCTK_FullName(i32 %vindex) #5, !dbg !149
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !111, metadata !128), !dbg !151
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 85, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i8* %12) #5, !dbg !152
  tail call void @free(i8* %12) #6, !dbg !153
  %14 = icmp eq %struct.IOBASIC_REDUCTION* %7, null, !dbg !154
  br i1 %14, label %.loopexit, label %.lr.ph, !dbg !154

.lr.ph:                                           ; preds = %11, %.lr.ph
  %reduction.02 = phi %struct.IOBASIC_REDUCTION* [ %17, %.lr.ph ], [ %7, %11 ]
  %15 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.02, i64 0, i32 2, !dbg !155
  store i8 0, i8* %15, align 1, !dbg !157, !tbaa !158
  %16 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.02, i64 0, i32 4, !dbg !161
  %17 = load %struct.IOBASIC_REDUCTION** %16, align 8, !dbg !161, !tbaa !162
  tail call void @llvm.dbg.value(metadata %struct.IOBASIC_REDUCTION* %17, i64 0, metadata !114, metadata !128), !dbg !144
  %18 = icmp eq %struct.IOBASIC_REDUCTION* %17, null, !dbg !154
  br i1 %18, label %.loopexit, label %.lr.ph, !dbg !154

; <label>:19                                      ; preds = %0
  %20 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #5, !dbg !163
  %21 = icmp eq i32 %20, 1, !dbg !165
  br i1 %21, label %23, label %.preheader, !dbg !166

.preheader:                                       ; preds = %19
  %22 = icmp eq %struct.IOBASIC_REDUCTION* %7, null, !dbg !167
  br i1 %22, label %.loopexit, label %.lr.ph4, !dbg !167

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 2, !dbg !169
  store i8 1, i8* %24, align 1, !dbg !171, !tbaa !158
  %25 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %vindex) #5, !dbg !172
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !113, metadata !128), !dbg !173
  %26 = tail call i32 @CCTK_VarTypeI(i32 %vindex) #5, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !110, metadata !128), !dbg !175
  switch i32 %26, label %123 [
    i32 1, label %27
    i32 2, label %31
    i32 6, label %36
    i32 10, label %41
    i32 3, label %54
    i32 4, label %59
    i32 5, label %64
    i32 7, label %69
    i32 11, label %74
    i32 8, label %87
    i32 12, label %92
    i32 9, label %105
    i32 13, label %110
  ], !dbg !176

; <label>:27                                      ; preds = %23
  %28 = load i8* %25, align 1, !dbg !177, !tbaa !180
  %29 = uitofp i8 %28 to double, !dbg !181
  %30 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !182
  store double %29, double* %30, align 8, !dbg !183, !tbaa !184
  br label %.loopexit, !dbg !185

; <label>:31                                      ; preds = %23
  %32 = bitcast i8* %25 to i32*, !dbg !186
  %33 = load i32* %32, align 4, !dbg !189, !tbaa !190
  %34 = sitofp i32 %33 to double, !dbg !191
  %35 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !192
  store double %34, double* %35, align 8, !dbg !193, !tbaa !184
  br label %.loopexit, !dbg !194

; <label>:36                                      ; preds = %23
  %37 = bitcast i8* %25 to i64*, !dbg !195
  %38 = load i64* %37, align 8, !dbg !195, !tbaa !198
  %39 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !199
  %40 = bitcast double* %39 to i64*, !dbg !200
  store i64 %38, i64* %40, align 8, !dbg !200, !tbaa !184
  br label %.loopexit, !dbg !201

; <label>:41                                      ; preds = %23
  %42 = bitcast i8* %25 to i64*, !dbg !202
  %43 = load i64* %42, align 8, !dbg !202, !tbaa !198
  %44 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !205
  %45 = bitcast double* %44 to i64*, !dbg !206
  store i64 %43, i64* %45, align 8, !dbg !206, !tbaa !184
  %46 = getelementptr inbounds i8* %25, i64 8, !dbg !207
  %47 = bitcast i8* %46 to i64*, !dbg !207
  %48 = load i64* %47, align 8, !dbg !207, !tbaa !198
  %49 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4, !dbg !208
  %50 = load %struct.IOBASIC_REDUCTION** %49, align 8, !dbg !208, !tbaa !162
  %51 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %50, i64 0, i32 3, !dbg !209
  %52 = bitcast double* %51 to i64*, !dbg !210
  store i64 %48, i64* %52, align 8, !dbg !210, !tbaa !184
  %53 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %50, i64 0, i32 2, !dbg !211
  store i8 1, i8* %53, align 1, !dbg !212, !tbaa !158
  br label %.loopexit, !dbg !213

; <label>:54                                      ; preds = %23
  %55 = bitcast i8* %25 to i16*, !dbg !214
  %56 = load i16* %55, align 2, !dbg !217, !tbaa !218
  %57 = sitofp i16 %56 to double, !dbg !220
  %58 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !221
  store double %57, double* %58, align 8, !dbg !222, !tbaa !184
  br label %.loopexit, !dbg !223

; <label>:59                                      ; preds = %23
  %60 = bitcast i8* %25 to i32*, !dbg !224
  %61 = load i32* %60, align 4, !dbg !227, !tbaa !190
  %62 = sitofp i32 %61 to double, !dbg !228
  %63 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !229
  store double %62, double* %63, align 8, !dbg !230, !tbaa !184
  br label %.loopexit, !dbg !231

; <label>:64                                      ; preds = %23
  %65 = bitcast i8* %25 to i64*, !dbg !232
  %66 = load i64* %65, align 8, !dbg !235, !tbaa !236
  %67 = sitofp i64 %66 to double, !dbg !238
  %68 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !239
  store double %67, double* %68, align 8, !dbg !240, !tbaa !184
  br label %.loopexit, !dbg !241

; <label>:69                                      ; preds = %23
  %70 = bitcast i8* %25 to float*, !dbg !242
  %71 = load float* %70, align 4, !dbg !245, !tbaa !246
  %72 = fpext float %71 to double, !dbg !248
  %73 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !249
  store double %72, double* %73, align 8, !dbg !250, !tbaa !184
  br label %.loopexit, !dbg !251

; <label>:74                                      ; preds = %23
  %75 = bitcast i8* %25 to float*, !dbg !252
  %76 = load float* %75, align 4, !dbg !255, !tbaa !246
  %77 = fpext float %76 to double, !dbg !256
  %78 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !257
  store double %77, double* %78, align 8, !dbg !258, !tbaa !184
  %79 = getelementptr inbounds i8* %25, i64 4, !dbg !259
  %80 = bitcast i8* %79 to float*, !dbg !259
  %81 = load float* %80, align 4, !dbg !259, !tbaa !246
  %82 = fpext float %81 to double, !dbg !260
  %83 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4, !dbg !261
  %84 = load %struct.IOBASIC_REDUCTION** %83, align 8, !dbg !261, !tbaa !162
  %85 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %84, i64 0, i32 3, !dbg !262
  store double %82, double* %85, align 8, !dbg !263, !tbaa !184
  %86 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %84, i64 0, i32 2, !dbg !264
  store i8 1, i8* %86, align 1, !dbg !265, !tbaa !158
  br label %.loopexit, !dbg !266

; <label>:87                                      ; preds = %23
  %88 = bitcast i8* %25 to i64*, !dbg !267
  %89 = load i64* %88, align 8, !dbg !267, !tbaa !198
  %90 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !270
  %91 = bitcast double* %90 to i64*, !dbg !271
  store i64 %89, i64* %91, align 8, !dbg !271, !tbaa !184
  br label %.loopexit, !dbg !272

; <label>:92                                      ; preds = %23
  %93 = bitcast i8* %25 to i64*, !dbg !273
  %94 = load i64* %93, align 8, !dbg !273, !tbaa !198
  %95 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !276
  %96 = bitcast double* %95 to i64*, !dbg !277
  store i64 %94, i64* %96, align 8, !dbg !277, !tbaa !184
  %97 = getelementptr inbounds i8* %25, i64 8, !dbg !278
  %98 = bitcast i8* %97 to i64*, !dbg !278
  %99 = load i64* %98, align 8, !dbg !278, !tbaa !198
  %100 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4, !dbg !279
  %101 = load %struct.IOBASIC_REDUCTION** %100, align 8, !dbg !279, !tbaa !162
  %102 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %101, i64 0, i32 3, !dbg !280
  %103 = bitcast double* %102 to i64*, !dbg !281
  store i64 %99, i64* %103, align 8, !dbg !281, !tbaa !184
  %104 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %101, i64 0, i32 2, !dbg !282
  store i8 1, i8* %104, align 1, !dbg !283, !tbaa !158
  br label %.loopexit, !dbg !284

; <label>:105                                     ; preds = %23
  %106 = bitcast i8* %25 to x86_fp80*, !dbg !285
  %107 = load x86_fp80* %106, align 16, !dbg !288, !tbaa !289
  %108 = fptrunc x86_fp80 %107 to double, !dbg !291
  %109 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !292
  store double %108, double* %109, align 8, !dbg !293, !tbaa !184
  br label %.loopexit, !dbg !294

; <label>:110                                     ; preds = %23
  %111 = bitcast i8* %25 to x86_fp80*, !dbg !295
  %112 = load x86_fp80* %111, align 16, !dbg !298, !tbaa !289
  %113 = fptrunc x86_fp80 %112 to double, !dbg !299
  %114 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3, !dbg !300
  store double %113, double* %114, align 8, !dbg !301, !tbaa !184
  %115 = getelementptr inbounds i8* %25, i64 16, !dbg !302
  %116 = bitcast i8* %115 to x86_fp80*, !dbg !302
  %117 = load x86_fp80* %116, align 16, !dbg !302, !tbaa !289
  %118 = fptrunc x86_fp80 %117 to double, !dbg !303
  %119 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4, !dbg !304
  %120 = load %struct.IOBASIC_REDUCTION** %119, align 8, !dbg !304, !tbaa !162
  %121 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %120, i64 0, i32 3, !dbg !305
  store double %118, double* %121, align 8, !dbg !306, !tbaa !184
  %122 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %120, i64 0, i32 2, !dbg !307
  store i8 1, i8* %122, align 1, !dbg !308, !tbaa !158
  br label %.loopexit, !dbg !309

; <label>:123                                     ; preds = %23
  %124 = tail call i32 @CCTK_Warn(i32 3, i32 180, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !310
  store i8 0, i8* %24, align 1, !dbg !312, !tbaa !158
  br label %.loopexit

.lr.ph4:                                          ; preds = %.preheader, %137
  %reduction.13 = phi %struct.IOBASIC_REDUCTION* [ %139, %137 ], [ %7, %.preheader ]
  %125 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 0, !dbg !313
  %126 = load i32* %125, align 4, !dbg !313, !tbaa !315
  %127 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 3, !dbg !316
  %128 = bitcast double* %127 to i8*, !dbg !317
  %129 = tail call i32 (%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...)* @CCTK_Reduce(%struct.cGH* %GH, i32 0, i32 %126, i32 1, i32 6, i8* %128, i32 1, i32 %vindex) #5, !dbg !318
  %130 = icmp eq i32 %129, 0, !dbg !319
  %131 = zext i1 %130 to i8, !dbg !318
  %132 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 2, !dbg !320
  store i8 %131, i8* %132, align 1, !dbg !321, !tbaa !158
  br i1 %130, label %137, label %133, !dbg !322

; <label>:133                                     ; preds = %.lr.ph4
  %134 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 1, !dbg !323
  %135 = load i8** %134, align 8, !dbg !323, !tbaa !326
  %136 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 195, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i8* %135) #5, !dbg !327
  br label %137, !dbg !328

; <label>:137                                     ; preds = %133, %.lr.ph4
  %138 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 4, !dbg !329
  %139 = load %struct.IOBASIC_REDUCTION** %138, align 8, !dbg !329, !tbaa !162
  tail call void @llvm.dbg.value(metadata %struct.IOBASIC_REDUCTION* %139, i64 0, metadata !114, metadata !128), !dbg !144
  %140 = icmp eq %struct.IOBASIC_REDUCTION* %139, null, !dbg !167
  br i1 %140, label %.loopexit, label %.lr.ph4, !dbg !167

.loopexit:                                        ; preds = %137, %.lr.ph, %.preheader, %11, %31, %41, %59, %69, %87, %105, %123, %110, %92, %74, %64, %54, %36, %27
  %.0 = phi i32 [ 0, %27 ], [ 0, %36 ], [ 0, %54 ], [ 0, %64 ], [ 0, %74 ], [ 0, %92 ], [ 0, %110 ], [ 0, %123 ], [ 0, %105 ], [ 0, %87 ], [ 0, %69 ], [ 0, %59 ], [ 0, %41 ], [ 0, %31 ], [ -1, %11 ], [ 0, %.preheader ], [ -1, %.lr.ph ], [ 0, %137 ]
  ret i32 %.0, !dbg !330
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Reduce(%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!123, !124, !125}
!llvm.ident = !{!126}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !64, globals: !121, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !36, !51, !18, !55, !56, !58, !60, !62}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasicGH", file: !6, line: 52, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/iobasicGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_GH", file: !6, line: 29, size: 512, align: 64, elements: !8)
!8 = !{!9, !11, !12, !14, !16, !17, !19, !20, !39}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_every", scope: !7, file: !6, line: 32, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_every", scope: !7, file: !6, line: 33, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "info_reductions_changed", scope: !7, file: !6, line: 34, baseType: !13, size: 8, align: 8, offset: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "do_outScalar", scope: !7, file: !6, line: 37, baseType: !15, size: 64, align: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "outdirScalar", scope: !7, file: !6, line: 40, baseType: !15, size: 64, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_last", scope: !7, file: !6, line: 43, baseType: !18, size: 64, align: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_last", scope: !7, file: !6, line: 44, baseType: !18, size: 64, align: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "info_reductions", scope: !7, file: !6, line: 47, baseType: !21, size: 64, align: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasic_reductionlist_t", file: !6, line: 27, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_REDUCTIONLIST", file: !6, line: 23, size: 128, align: 64, elements: !24)
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "num_reductions", scope: !23, file: !6, line: 25, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reductions", scope: !23, file: !6, line: 26, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasic_reduction_t", file: !6, line: 21, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_REDUCTION", file: !6, line: 14, size: 320, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35, !37}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !30, file: !6, line: 16, baseType: !10, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !6, line: 17, baseType: !15, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !30, file: !6, line: 18, baseType: !13, size: 8, align: 8, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !30, file: !6, line: 19, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !6, line: 20, baseType: !38, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "filenameListScalar", scope: !7, file: !6, line: 50, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !42, line: 26, baseType: !43)
!42 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !42, line: 18, size: 256, align: 64, elements: !44)
!44 = !{!45, !47, !48, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !43, file: !42, line: 20, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !42, line: 21, baseType: !46, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !42, line: 23, baseType: !15, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !42, line: 25, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_CHAR", file: !53, line: 57, baseType: !54)
!53 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cctk_Types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!64 = !{!65, !70}
!65 = !DISubprogram(name: "CCTKi_version_CactusBase_IOBasic_WriteInfo_c", scope: !1, file: !1, line: 21, type: !66, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_IOBasic_WriteInfo_c, variables: !2)
!66 = !DISubroutineType(types: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!70 = !DISubprogram(name: "IOBasic_WriteInfo", scope: !1, file: !1, line: 60, type: !71, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOBasic_WriteInfo, variables: !107)
!71 = !DISubroutineType(types: !72)
!72 = !{!10, !73, !10}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !76, line: 75, baseType: !77)
!76 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 24, size: 1216, align: 64, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !99, !100}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !77, file: !76, line: 26, baseType: !10, size: 32, align: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !77, file: !76, line: 27, baseType: !10, size: 32, align: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !77, file: !76, line: 30, baseType: !18, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !77, file: !76, line: 31, baseType: !18, size: 64, align: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !77, file: !76, line: 32, baseType: !18, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !77, file: !76, line: 33, baseType: !18, size: 64, align: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !77, file: !76, line: 36, baseType: !18, size: 64, align: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !77, file: !76, line: 39, baseType: !18, size: 64, align: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !77, file: !76, line: 40, baseType: !18, size: 64, align: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !77, file: !76, line: 43, baseType: !36, size: 64, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !77, file: !76, line: 44, baseType: !55, size: 64, align: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !77, file: !76, line: 47, baseType: !55, size: 64, align: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !77, file: !76, line: 51, baseType: !18, size: 64, align: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !77, file: !76, line: 54, baseType: !18, size: 64, align: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !77, file: !76, line: 57, baseType: !10, size: 32, align: 32, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !77, file: !76, line: 60, baseType: !18, size: 64, align: 64, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !77, file: !76, line: 63, baseType: !36, size: 64, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !77, file: !76, line: 67, baseType: !97, size: 64, align: 64, offset: 1024)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !77, file: !76, line: 70, baseType: !98, size: 64, align: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !77, file: !76, line: 73, baseType: !101, size: 64, align: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !76, line: 22, baseType: !103)
!103 = !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 18, size: 16, align: 8, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !103, file: !76, line: 20, baseType: !13, size: 8, align: 8)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !103, file: !76, line: 21, baseType: !13, size: 8, align: 8, offset: 8)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !70, file: !1, line: 60, type: !73)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !70, file: !1, line: 60, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtype", scope: !70, file: !1, line: 62, type: !10)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !70, file: !1, line: 63, type: !15)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !70, file: !1, line: 64, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !70, file: !1, line: 65, type: !50)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reduction", scope: !70, file: !1, line: 66, type: !28)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GH_fake_const", scope: !70, file: !1, line: 72, type: !116)
!116 = !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !1, line: 68, size: 64, align: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "const_ptr", scope: !116, file: !1, line: 70, baseType: !73, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "non_const_ptr", scope: !116, file: !1, line: 71, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!121 = !{!122}
!122 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !68, isLocal: true, isDefinition: true)
!123 = !{i32 2, !"Dwarf Version", i32 2}
!124 = !{i32 2, !"Debug Info Version", i32 700000003}
!125 = !{i32 1, !"PIC Level", i32 2}
!126 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!127 = !DILocation(line: 21, column: 1, scope: !65)
!128 = !DIExpression()
!129 = !DILocation(line: 60, column: 35, scope: !70)
!130 = !DILocation(line: 60, column: 43, scope: !70)
!131 = !DILocation(line: 72, column: 5, scope: !70)
!132 = !DILocation(line: 78, column: 24, scope: !70)
!133 = !DILocation(line: 79, column: 15, scope: !70)
!134 = !DILocation(line: 79, column: 21, scope: !70)
!135 = !{!136, !140, i64 48}
!136 = !{!"IOBASIC_GH", !137, i64 0, !137, i64 4, !138, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56}
!137 = !{!"int", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !{!"any pointer", !138, i64 0}
!141 = !DILocation(line: 79, column: 45, scope: !70)
!142 = !{!143, !140, i64 8}
!143 = !{!"IOBASIC_REDUCTIONLIST", !137, i64 0, !140, i64 8}
!144 = !DILocation(line: 66, column: 24, scope: !70)
!145 = !DILocation(line: 82, column: 38, scope: !146)
!146 = distinct !DILexicalBlock(scope: !70, file: !1, line: 82, column: 7)
!147 = !DILocation(line: 82, column: 9, scope: !146)
!148 = !DILocation(line: 82, column: 7, scope: !70)
!149 = !DILocation(line: 84, column: 16, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 83, column: 3)
!151 = !DILocation(line: 63, column: 9, scope: !70)
!152 = !DILocation(line: 85, column: 5, scope: !150)
!153 = !DILocation(line: 88, column: 5, scope: !150)
!154 = !DILocation(line: 90, column: 5, scope: !150)
!155 = !DILocation(line: 92, column: 18, scope: !156)
!156 = distinct !DILexicalBlock(scope: !150, file: !1, line: 91, column: 5)
!157 = !DILocation(line: 92, column: 27, scope: !156)
!158 = !{!159, !138, i64 16}
!159 = !{!"IOBASIC_REDUCTION", !137, i64 0, !140, i64 8, !138, i64 16, !160, i64 24, !140, i64 32}
!160 = !{!"double", !138, i64 0}
!161 = !DILocation(line: 93, column: 30, scope: !156)
!162 = !{!159, !140, i64 32}
!163 = !DILocation(line: 99, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !70, file: !1, line: 99, column: 7)
!165 = !DILocation(line: 99, column: 39, scope: !164)
!166 = !DILocation(line: 99, column: 7, scope: !70)
!167 = !DILocation(line: 187, column: 5, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 185, column: 3)
!169 = !DILocation(line: 101, column: 16, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !1, line: 100, column: 3)
!171 = !DILocation(line: 101, column: 25, scope: !170)
!172 = !DILocation(line: 104, column: 11, scope: !170)
!173 = !DILocation(line: 65, column: 9, scope: !70)
!174 = !DILocation(line: 105, column: 13, scope: !170)
!175 = !DILocation(line: 62, column: 7, scope: !70)
!176 = !DILocation(line: 106, column: 9, scope: !170)
!177 = !DILocation(line: 108, column: 35, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 107, column: 5)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 106, column: 9)
!180 = !{!138, !138, i64 0}
!181 = !DILocation(line: 108, column: 26, scope: !178)
!182 = !DILocation(line: 108, column: 18, scope: !178)
!183 = !DILocation(line: 108, column: 24, scope: !178)
!184 = !{!159, !160, i64 24}
!185 = !DILocation(line: 109, column: 5, scope: !178)
!186 = !DILocation(line: 112, column: 36, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 111, column: 5)
!188 = distinct !DILexicalBlock(scope: !179, file: !1, line: 110, column: 14)
!189 = !DILocation(line: 112, column: 35, scope: !187)
!190 = !{!137, !137, i64 0}
!191 = !DILocation(line: 112, column: 26, scope: !187)
!192 = !DILocation(line: 112, column: 18, scope: !187)
!193 = !DILocation(line: 112, column: 24, scope: !187)
!194 = !DILocation(line: 113, column: 5, scope: !187)
!195 = !DILocation(line: 116, column: 35, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 115, column: 5)
!197 = distinct !DILexicalBlock(scope: !188, file: !1, line: 114, column: 14)
!198 = !{!160, !160, i64 0}
!199 = !DILocation(line: 116, column: 18, scope: !196)
!200 = !DILocation(line: 116, column: 24, scope: !196)
!201 = !DILocation(line: 117, column: 5, scope: !196)
!202 = !DILocation(line: 120, column: 35, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 119, column: 5)
!204 = distinct !DILexicalBlock(scope: !197, file: !1, line: 118, column: 14)
!205 = !DILocation(line: 120, column: 18, scope: !203)
!206 = !DILocation(line: 120, column: 24, scope: !203)
!207 = !DILocation(line: 121, column: 41, scope: !203)
!208 = !DILocation(line: 121, column: 18, scope: !203)
!209 = !DILocation(line: 121, column: 24, scope: !203)
!210 = !DILocation(line: 121, column: 30, scope: !203)
!211 = !DILocation(line: 122, column: 24, scope: !203)
!212 = !DILocation(line: 122, column: 33, scope: !203)
!213 = !DILocation(line: 123, column: 5, scope: !203)
!214 = !DILocation(line: 127, column: 36, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 126, column: 5)
!216 = distinct !DILexicalBlock(scope: !204, file: !1, line: 125, column: 14)
!217 = !DILocation(line: 127, column: 35, scope: !215)
!218 = !{!219, !219, i64 0}
!219 = !{!"short", !138, i64 0}
!220 = !DILocation(line: 127, column: 26, scope: !215)
!221 = !DILocation(line: 127, column: 18, scope: !215)
!222 = !DILocation(line: 127, column: 24, scope: !215)
!223 = !DILocation(line: 128, column: 5, scope: !215)
!224 = !DILocation(line: 133, column: 36, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 132, column: 5)
!226 = distinct !DILexicalBlock(scope: !216, file: !1, line: 131, column: 14)
!227 = !DILocation(line: 133, column: 35, scope: !225)
!228 = !DILocation(line: 133, column: 26, scope: !225)
!229 = !DILocation(line: 133, column: 18, scope: !225)
!230 = !DILocation(line: 133, column: 24, scope: !225)
!231 = !DILocation(line: 134, column: 5, scope: !225)
!232 = !DILocation(line: 139, column: 36, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 138, column: 5)
!234 = distinct !DILexicalBlock(scope: !226, file: !1, line: 137, column: 14)
!235 = !DILocation(line: 139, column: 35, scope: !233)
!236 = !{!237, !237, i64 0}
!237 = !{!"long", !138, i64 0}
!238 = !DILocation(line: 139, column: 26, scope: !233)
!239 = !DILocation(line: 139, column: 18, scope: !233)
!240 = !DILocation(line: 139, column: 24, scope: !233)
!241 = !DILocation(line: 140, column: 5, scope: !233)
!242 = !DILocation(line: 145, column: 36, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 144, column: 5)
!244 = distinct !DILexicalBlock(scope: !234, file: !1, line: 143, column: 14)
!245 = !DILocation(line: 145, column: 35, scope: !243)
!246 = !{!247, !247, i64 0}
!247 = !{!"float", !138, i64 0}
!248 = !DILocation(line: 145, column: 26, scope: !243)
!249 = !DILocation(line: 145, column: 18, scope: !243)
!250 = !DILocation(line: 145, column: 24, scope: !243)
!251 = !DILocation(line: 146, column: 5, scope: !243)
!252 = !DILocation(line: 149, column: 36, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 148, column: 5)
!254 = distinct !DILexicalBlock(scope: !244, file: !1, line: 147, column: 14)
!255 = !DILocation(line: 149, column: 35, scope: !253)
!256 = !DILocation(line: 149, column: 26, scope: !253)
!257 = !DILocation(line: 149, column: 18, scope: !253)
!258 = !DILocation(line: 149, column: 24, scope: !253)
!259 = !DILocation(line: 150, column: 41, scope: !253)
!260 = !DILocation(line: 150, column: 32, scope: !253)
!261 = !DILocation(line: 150, column: 18, scope: !253)
!262 = !DILocation(line: 150, column: 24, scope: !253)
!263 = !DILocation(line: 150, column: 30, scope: !253)
!264 = !DILocation(line: 151, column: 24, scope: !253)
!265 = !DILocation(line: 151, column: 33, scope: !253)
!266 = !DILocation(line: 152, column: 5, scope: !253)
!267 = !DILocation(line: 157, column: 35, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 156, column: 5)
!269 = distinct !DILexicalBlock(scope: !254, file: !1, line: 155, column: 14)
!270 = !DILocation(line: 157, column: 18, scope: !268)
!271 = !DILocation(line: 157, column: 24, scope: !268)
!272 = !DILocation(line: 158, column: 5, scope: !268)
!273 = !DILocation(line: 161, column: 35, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 160, column: 5)
!275 = distinct !DILexicalBlock(scope: !269, file: !1, line: 159, column: 14)
!276 = !DILocation(line: 161, column: 18, scope: !274)
!277 = !DILocation(line: 161, column: 24, scope: !274)
!278 = !DILocation(line: 162, column: 41, scope: !274)
!279 = !DILocation(line: 162, column: 18, scope: !274)
!280 = !DILocation(line: 162, column: 24, scope: !274)
!281 = !DILocation(line: 162, column: 30, scope: !274)
!282 = !DILocation(line: 163, column: 24, scope: !274)
!283 = !DILocation(line: 163, column: 33, scope: !274)
!284 = !DILocation(line: 164, column: 5, scope: !274)
!285 = !DILocation(line: 169, column: 36, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 168, column: 5)
!287 = distinct !DILexicalBlock(scope: !275, file: !1, line: 167, column: 14)
!288 = !DILocation(line: 169, column: 35, scope: !286)
!289 = !{!290, !290, i64 0}
!290 = !{!"long double", !138, i64 0}
!291 = !DILocation(line: 169, column: 26, scope: !286)
!292 = !DILocation(line: 169, column: 18, scope: !286)
!293 = !DILocation(line: 169, column: 24, scope: !286)
!294 = !DILocation(line: 170, column: 5, scope: !286)
!295 = !DILocation(line: 173, column: 36, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 172, column: 5)
!297 = distinct !DILexicalBlock(scope: !287, file: !1, line: 171, column: 14)
!298 = !DILocation(line: 173, column: 35, scope: !296)
!299 = !DILocation(line: 173, column: 26, scope: !296)
!300 = !DILocation(line: 173, column: 18, scope: !296)
!301 = !DILocation(line: 173, column: 24, scope: !296)
!302 = !DILocation(line: 174, column: 41, scope: !296)
!303 = !DILocation(line: 174, column: 32, scope: !296)
!304 = !DILocation(line: 174, column: 18, scope: !296)
!305 = !DILocation(line: 174, column: 24, scope: !296)
!306 = !DILocation(line: 174, column: 30, scope: !296)
!307 = !DILocation(line: 175, column: 24, scope: !296)
!308 = !DILocation(line: 175, column: 33, scope: !296)
!309 = !DILocation(line: 176, column: 5, scope: !296)
!310 = !DILocation(line: 180, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !297, file: !1, line: 179, column: 5)
!312 = !DILocation(line: 181, column: 27, scope: !311)
!313 = !DILocation(line: 190, column: 53, scope: !314)
!314 = distinct !DILexicalBlock(scope: !168, file: !1, line: 188, column: 5)
!315 = !{!159, !137, i64 0}
!316 = !DILocation(line: 192, column: 54, scope: !314)
!317 = !DILocation(line: 192, column: 42, scope: !314)
!318 = !DILocation(line: 189, column: 29, scope: !314)
!319 = !DILocation(line: 192, column: 72, scope: !314)
!320 = !DILocation(line: 189, column: 18, scope: !314)
!321 = !DILocation(line: 189, column: 27, scope: !314)
!322 = !DILocation(line: 193, column: 11, scope: !314)
!323 = !DILocation(line: 197, column: 32, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 194, column: 7)
!325 = distinct !DILexicalBlock(scope: !314, file: !1, line: 193, column: 11)
!326 = !{!159, !140, i64 8}
!327 = !DILocation(line: 195, column: 9, scope: !324)
!328 = !DILocation(line: 198, column: 7, scope: !324)
!329 = !DILocation(line: 200, column: 30, scope: !314)
!330 = !DILocation(line: 205, column: 1, scope: !70)
