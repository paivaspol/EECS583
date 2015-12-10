; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/plan9.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/plan9.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@Alphabet_size = external global i32
@Alphabet_type = external global i32
@aafq = external global [0 x float]
@.str2 = private unnamed_addr constant [56 x i8] c"No support for non-protein, non-nucleic acid alphabets.\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x float] [float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01], align 16

; Function Attrs: nounwind optsize ssp uwtable
define %struct.plan9_s* @P9AllocHMM(i32 %M) #0 {
  tail call void @llvm.dbg.value(metadata i32 %M, i64 0, metadata !40, metadata !69), !dbg !70
  %1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 35, i64 152) #4, !dbg !71
  %2 = bitcast i8* %1 to %struct.plan9_s*, !dbg !72
  tail call void @llvm.dbg.value(metadata %struct.plan9_s* %2, i64 0, metadata !41, metadata !69), !dbg !73
  %3 = add nsw i32 %M, 2, !dbg !74
  %4 = sext i32 %3 to i64, !dbg !74
  %5 = mul nsw i64 %4, 92, !dbg !74
  %6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 36, i64 %5) #4, !dbg !74
  %7 = getelementptr inbounds i8* %1, i64 8, !dbg !75
  %8 = bitcast i8* %7 to i8**, !dbg !76
  store i8* %6, i8** %8, align 8, !dbg !76, !tbaa !77
  %9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 37, i64 %5) #4, !dbg !83
  %10 = getelementptr inbounds i8* %1, i64 24, !dbg !84
  %11 = bitcast i8* %10 to i8**, !dbg !85
  store i8* %9, i8** %11, align 8, !dbg !85, !tbaa !86
  %12 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 38, i64 %5) #4, !dbg !87
  %13 = getelementptr inbounds i8* %1, i64 16, !dbg !88
  %14 = bitcast i8* %13 to i8**, !dbg !89
  store i8* %12, i8** %14, align 8, !dbg !89, !tbaa !90
  %15 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 39, i64 %4) #4, !dbg !91
  %16 = getelementptr inbounds i8* %1, i64 120, !dbg !92
  %17 = bitcast i8* %16 to i8**, !dbg !92
  store i8* %15, i8** %17, align 8, !dbg !93, !tbaa !94
  %18 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 40, i64 %4) #4, !dbg !95
  %19 = getelementptr inbounds i8* %1, i64 128, !dbg !96
  %20 = bitcast i8* %19 to i8**, !dbg !96
  store i8* %18, i8** %20, align 8, !dbg !97, !tbaa !98
  %21 = shl nsw i64 %4, 4, !dbg !99
  %22 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 41, i64 %21) #4, !dbg !99
  %23 = getelementptr inbounds i8* %1, i64 136, !dbg !100
  %24 = bitcast i8* %23 to i8**, !dbg !101
  store i8* %22, i8** %24, align 8, !dbg !101, !tbaa !102
  %25 = bitcast i8* %1 to i32*, !dbg !103
  store i32 %M, i32* %25, align 4, !dbg !104, !tbaa !105
  %26 = tail call i8* @Strdup(i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !106
  %27 = getelementptr inbounds i8* %1, i64 112, !dbg !107
  %28 = bitcast i8* %27 to i8**, !dbg !107
  store i8* %26, i8** %28, align 8, !dbg !108, !tbaa !109
  %29 = getelementptr inbounds i8* %1, i64 144, !dbg !110
  %30 = bitcast i8* %29 to i32*, !dbg !110
  store i32 0, i32* %30, align 4, !dbg !111, !tbaa !112
  tail call void @P9ZeroHMM(%struct.plan9_s* %2) #5, !dbg !113
  ret %struct.plan9_s* %2, !dbg !114
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @P9ZeroHMM(%struct.plan9_s* nocapture readonly %hmm) #0 {
  tail call void @llvm.dbg.value(metadata %struct.plan9_s* %hmm, i64 0, metadata !51, metadata !69), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !52, metadata !69), !dbg !116
  %1 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0, !dbg !117
  %2 = load i32* %1, align 4, !dbg !117, !tbaa !105
  %3 = icmp slt i32 %2, -1, !dbg !120
  br i1 %3, label %._crit_edge5, label %.preheader1.lr.ph, !dbg !121

.preheader1.lr.ph:                                ; preds = %0
  %4 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !122
  %5 = load %struct.basic_state** %4, align 8, !dbg !122, !tbaa !90
  %6 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !127
  %7 = load %struct.basic_state** %6, align 8, !dbg !127, !tbaa !77
  %8 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !128
  %9 = load %struct.basic_state** %8, align 8, !dbg !128, !tbaa !86
  %10 = load i32* @Alphabet_size, align 4, !dbg !129, !tbaa !132
  %11 = icmp sgt i32 %10, 0, !dbg !133
  %12 = add nsw i32 %2, 1, !dbg !134
  %13 = sext i32 %10 to i64, !dbg !121
  %14 = sext i32 %12 to i64, !dbg !121
  br label %.preheader1, !dbg !121

.preheader1:                                      ; preds = %._crit_edge, %.preheader1.lr.ph
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %._crit_edge ], [ 0, %.preheader1.lr.ph ]
  br label %15, !dbg !135

.preheader:                                       ; preds = %15
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !136

; <label>:15                                      ; preds = %15, %.preheader1
  %indvars.iv = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next, %15 ]
  %16 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv14, i32 0, i64 %indvars.iv, !dbg !137
  store float 0.000000e+00, float* %16, align 4, !dbg !138, !tbaa !139
  %17 = getelementptr inbounds %struct.basic_state* %7, i64 %indvars.iv14, i32 0, i64 %indvars.iv, !dbg !141
  store float 0.000000e+00, float* %17, align 4, !dbg !142, !tbaa !139
  %18 = getelementptr inbounds %struct.basic_state* %9, i64 %indvars.iv14, i32 0, i64 %indvars.iv, !dbg !143
  store float 0.000000e+00, float* %18, align 4, !dbg !144, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !135
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !135
  br i1 %exitcond, label %.preheader, label %15, !dbg !135

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.lr.ph ], [ 0, %.preheader ]
  %19 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv14, i32 1, i64 %indvars.iv9, !dbg !145
  store float 0.000000e+00, float* %19, align 4, !dbg !147, !tbaa !139
  %20 = getelementptr inbounds %struct.basic_state* %7, i64 %indvars.iv14, i32 1, i64 %indvars.iv9, !dbg !148
  store float 0.000000e+00, float* %20, align 4, !dbg !149, !tbaa !139
  %21 = getelementptr inbounds %struct.basic_state* %9, i64 %indvars.iv14, i32 1, i64 %indvars.iv9, !dbg !150
  store float 0.000000e+00, float* %21, align 4, !dbg !151, !tbaa !139
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !136
  %22 = icmp slt i64 %indvars.iv.next10, %13, !dbg !133
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !136

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !121
  %23 = icmp slt i64 %indvars.iv14, %14, !dbg !120
  br i1 %23, label %.preheader1, label %._crit_edge5, !dbg !121

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void, !dbg !152
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @P9FreeHMM(%struct.plan9_s* %hmm) #0 {
  tail call void @llvm.dbg.value(metadata %struct.plan9_s* %hmm, i64 0, metadata !46, metadata !69), !dbg !153
  %1 = icmp eq %struct.plan9_s* %hmm, null, !dbg !154
  br i1 %1, label %31, label %2, !dbg !156

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 6, !dbg !157
  %4 = load i8** %3, align 8, !dbg !157, !tbaa !94
  tail call void @free(i8* %4) #5, !dbg !158
  %5 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 7, !dbg !159
  %6 = load i8** %5, align 8, !dbg !159, !tbaa !98
  tail call void @free(i8* %6) #5, !dbg !160
  %7 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 8, !dbg !161
  %8 = bitcast float** %7 to i8**, !dbg !161
  %9 = load i8** %8, align 8, !dbg !161, !tbaa !102
  tail call void @free(i8* %9) #5, !dbg !162
  %10 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 5, !dbg !163
  %11 = load i8** %10, align 8, !dbg !163, !tbaa !109
  tail call void @free(i8* %11) #5, !dbg !164
  %12 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !165
  %13 = load %struct.basic_state** %12, align 8, !dbg !165, !tbaa !90
  %14 = icmp eq %struct.basic_state* %13, null, !dbg !167
  br i1 %14, label %17, label %15, !dbg !168

; <label>:15                                      ; preds = %2
  %16 = bitcast %struct.basic_state* %13 to i8*, !dbg !169
  tail call void @free(i8* %16) #5, !dbg !170
  br label %17, !dbg !170

; <label>:17                                      ; preds = %2, %15
  %18 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !171
  %19 = load %struct.basic_state** %18, align 8, !dbg !171, !tbaa !77
  %20 = icmp eq %struct.basic_state* %19, null, !dbg !173
  br i1 %20, label %23, label %21, !dbg !174

; <label>:21                                      ; preds = %17
  %22 = bitcast %struct.basic_state* %19 to i8*, !dbg !175
  tail call void @free(i8* %22) #5, !dbg !176
  br label %23, !dbg !176

; <label>:23                                      ; preds = %17, %21
  %24 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !177
  %25 = load %struct.basic_state** %24, align 8, !dbg !177, !tbaa !86
  %26 = icmp eq %struct.basic_state* %25, null, !dbg !179
  br i1 %26, label %29, label %27, !dbg !180

; <label>:27                                      ; preds = %23
  %28 = bitcast %struct.basic_state* %25 to i8*, !dbg !181
  tail call void @free(i8* %28) #5, !dbg !182
  br label %29, !dbg !182

; <label>:29                                      ; preds = %23, %27
  %30 = bitcast %struct.plan9_s* %hmm to i8*, !dbg !183
  tail call void @free(i8* %30) #5, !dbg !184
  br label %31, !dbg !185

; <label>:31                                      ; preds = %0, %29
  %.0 = phi i32 [ 1, %29 ], [ 0, %0 ]
  ret i32 %.0, !dbg !186
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @P9Renormalize(%struct.plan9_s* nocapture readonly %hmm) #0 {
  tail call void @llvm.dbg.value(metadata %struct.plan9_s* %hmm, i64 0, metadata !57, metadata !69), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !69), !dbg !188
  %1 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0, !dbg !189
  %2 = load i32* %1, align 4, !dbg !189, !tbaa !105
  %3 = icmp slt i32 %2, 0, !dbg !192
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !193

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !194
  %5 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !196
  %6 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !197
  br label %7, !dbg !193

; <label>:7                                       ; preds = %.critedge, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %.lr.ph ]
  %8 = load %struct.basic_state** %4, align 8, !dbg !194, !tbaa !90
  %9 = getelementptr inbounds %struct.basic_state* %8, i64 %indvars.iv, i32 0, i64 0, !dbg !199
  tail call void @FNorm(float* %9, i32 3) #4, !dbg !200
  %10 = load %struct.basic_state** %5, align 8, !dbg !196, !tbaa !77
  %11 = getelementptr inbounds %struct.basic_state* %10, i64 %indvars.iv, i32 0, i64 0, !dbg !201
  tail call void @FNorm(float* %11, i32 3) #4, !dbg !202
  %12 = icmp sgt i64 %indvars.iv, 0, !dbg !203
  br i1 %12, label %13, label %.critedge, !dbg !204

; <label>:13                                      ; preds = %7
  %14 = load %struct.basic_state** %6, align 8, !dbg !197, !tbaa !86
  %15 = getelementptr inbounds %struct.basic_state* %14, i64 %indvars.iv, i32 0, i64 0, !dbg !205
  tail call void @FNorm(float* %15, i32 3) #4, !dbg !206
  %16 = load %struct.basic_state** %4, align 8, !dbg !207, !tbaa !90
  %17 = getelementptr inbounds %struct.basic_state* %16, i64 %indvars.iv, i32 1, i64 0, !dbg !209
  %18 = load i32* @Alphabet_size, align 4, !dbg !210, !tbaa !132
  tail call void @FNorm(float* %17, i32 %18) #4, !dbg !211
  br label %.critedge, !dbg !211

.critedge:                                        ; preds = %7, %13
  %19 = load %struct.basic_state** %5, align 8, !dbg !212, !tbaa !77
  %20 = getelementptr inbounds %struct.basic_state* %19, i64 %indvars.iv, i32 1, i64 0, !dbg !213
  %21 = load i32* @Alphabet_size, align 4, !dbg !214, !tbaa !132
  tail call void @FNorm(float* %20, i32 %21) #4, !dbg !215
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !193
  %22 = load i32* %1, align 4, !dbg !189, !tbaa !105
  %23 = sext i32 %22 to i64, !dbg !192
  %24 = icmp slt i64 %indvars.iv, %23, !dbg !192
  br i1 %24, label %7, label %._crit_edge, !dbg !193

._crit_edge:                                      ; preds = %.critedge, %0
  ret void, !dbg !216
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @P9DefaultNullModel(float* nocapture %null) #0 {
  tail call void @llvm.dbg.value(metadata float* %null, i64 0, metadata !63, metadata !69), !dbg !217
  %null9 = bitcast float* %null to i8*
  %1 = load i32* @Alphabet_type, align 4, !dbg !218, !tbaa !132
  switch i32 %1, label %17 [
    i32 3, label %.preheader
    i32 2, label %.preheader1
  ], !dbg !220

.preheader1:                                      ; preds = %0
  %2 = load i32* @Alphabet_size, align 4, !dbg !221, !tbaa !132
  %3 = icmp sgt i32 %2, 0, !dbg !225
  br i1 %3, label %.lr.ph5, label %.loopexit, !dbg !226

.lr.ph5:                                          ; preds = %.preheader1
  %4 = icmp sgt i32 %2, 1
  %.op = add i32 %2, -1, !dbg !226
  %5 = zext i32 %.op to i64
  %.op10 = shl nuw nsw i64 %5, 2, !dbg !226
  %.op10.op = add nuw nsw i64 %.op10, 4, !dbg !226
  %6 = select i1 %4, i64 %.op10.op, i64 4, !dbg !226
  call void @memset_pattern16(i8* %null9, i8* bitcast ([4 x float]* @.memset_pattern to i8*), i64 %6) #6, !dbg !227
  br label %.loopexit, !dbg !226

.preheader:                                       ; preds = %0
  %7 = load i32* @Alphabet_size, align 4, !dbg !228, !tbaa !132
  %8 = icmp sgt i32 %7, 0, !dbg !231
  br i1 %8, label %.lr.ph, label %.loopexit, !dbg !232

.lr.ph:                                           ; preds = %.preheader
  %9 = sext i32 %7 to i64, !dbg !232
  br label %10, !dbg !232

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %11 = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv, !dbg !233
  %12 = bitcast float* %11 to i32*, !dbg !233
  %13 = load i32* %12, align 4, !dbg !233, !tbaa !139
  %14 = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !234
  %15 = bitcast float* %14 to i32*, !dbg !235
  store i32 %13, i32* %15, align 4, !dbg !235, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !232
  %16 = icmp slt i64 %indvars.iv.next, %9, !dbg !231
  br i1 %16, label %10, label %.loopexit, !dbg !232

; <label>:17                                      ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !236
  br label %.loopexit

.loopexit:                                        ; preds = %10, %.preheader1, %.lr.ph5, %.preheader, %17
  ret void, !dbg !237
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !35, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/plan9.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !11, !27, !32, !34}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan9_s", file: !6, line: 567, size: 1216, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !23, !24, !25, !26, !29, !30, !31, !33}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !5, file: !6, line: 568, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !5, file: !6, line: 569, baseType: !11, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_state", file: !6, line: 560, size: 736, align: 32, elements: !13)
!13 = !{!14, !19}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !12, file: !6, line: 561, baseType: !15, size: 96, align: 32)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 96, align: 32, elements: !17)
!16 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !12, file: !6, line: 562, baseType: !20, size: 640, align: 32, offset: 96)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 640, align: 32, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 20)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !5, file: !6, line: 570, baseType: !11, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !5, file: !6, line: 571, baseType: !11, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !5, file: !6, line: 573, baseType: !20, size: 640, align: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !6, line: 577, baseType: !27, size: 64, align: 64, offset: 896)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5, file: !6, line: 578, baseType: !27, size: 64, align: 64, offset: 960)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5, file: !6, line: 579, baseType: !27, size: 64, align: 64, offset: 1024)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "xray", scope: !5, file: !6, line: 580, baseType: !32, size: 64, align: 64, offset: 1088)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5, file: !6, line: 582, baseType: !9, size: 32, align: 32, offset: 1152)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !{!36, !42, !47, !55, !59}
!36 = !DISubprogram(name: "P9AllocHMM", scope: !1, file: !1, line: 31, type: !37, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: %struct.plan9_s* (i32)* @P9AllocHMM, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!4, !9}
!39 = !{!40, !41}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "M", arg: 1, scope: !36, file: !1, line: 31, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hmm", scope: !36, file: !1, line: 33, type: !4)
!42 = !DISubprogram(name: "P9FreeHMM", scope: !1, file: !1, line: 50, type: !43, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.plan9_s*)* @P9FreeHMM, variables: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{!9, !4}
!45 = !{!46}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !42, file: !1, line: 50, type: !4)
!47 = !DISubprogram(name: "P9ZeroHMM", scope: !1, file: !1, line: 70, type: !48, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.plan9_s*)* @P9ZeroHMM, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !4}
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !47, file: !1, line: 70, type: !4)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !47, file: !1, line: 72, type: !9)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ts", scope: !47, file: !1, line: 72, type: !9)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !47, file: !1, line: 72, type: !9)
!55 = !DISubprogram(name: "P9Renormalize", scope: !1, file: !1, line: 104, type: !48, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.plan9_s*)* @P9Renormalize, variables: !56)
!56 = !{!57, !58}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !55, file: !1, line: 104, type: !4)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !55, file: !1, line: 106, type: !9)
!59 = !DISubprogram(name: "P9DefaultNullModel", scope: !1, file: !1, line: 128, type: !60, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: void (float*)* @P9DefaultNullModel, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !32}
!62 = !{!63, !64}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "null", arg: 1, scope: !59, file: !1, line: 128, type: !32)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !59, file: !1, line: 130, type: !9)
!65 = !{i32 2, !"Dwarf Version", i32 2}
!66 = !{i32 2, !"Debug Info Version", i32 700000003}
!67 = !{i32 1, !"PIC Level", i32 2}
!68 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!69 = !DIExpression()
!70 = !DILocation(line: 31, column: 16, scope: !36)
!71 = !DILocation(line: 35, column: 39, scope: !36)
!72 = !DILocation(line: 35, column: 16, scope: !36)
!73 = !DILocation(line: 33, column: 19, scope: !36)
!74 = !DILocation(line: 36, column: 39, scope: !36)
!75 = !DILocation(line: 36, column: 8, scope: !36)
!76 = !DILocation(line: 36, column: 14, scope: !36)
!77 = !{!78, !82, i64 8}
!78 = !{!"plan9_s", !79, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !80, i64 32, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !79, i64 144}
!79 = !{!"int", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!"any pointer", !80, i64 0}
!83 = !DILocation(line: 37, column: 39, scope: !36)
!84 = !DILocation(line: 37, column: 8, scope: !36)
!85 = !DILocation(line: 37, column: 14, scope: !36)
!86 = !{!78, !82, i64 24}
!87 = !DILocation(line: 38, column: 39, scope: !36)
!88 = !DILocation(line: 38, column: 8, scope: !36)
!89 = !DILocation(line: 38, column: 14, scope: !36)
!90 = !{!78, !82, i64 16}
!91 = !DILocation(line: 39, column: 26, scope: !36)
!92 = !DILocation(line: 39, column: 8, scope: !36)
!93 = !DILocation(line: 39, column: 14, scope: !36)
!94 = !{!78, !82, i64 120}
!95 = !DILocation(line: 40, column: 26, scope: !36)
!96 = !DILocation(line: 40, column: 8, scope: !36)
!97 = !DILocation(line: 40, column: 14, scope: !36)
!98 = !{!78, !82, i64 128}
!99 = !DILocation(line: 41, column: 26, scope: !36)
!100 = !DILocation(line: 41, column: 8, scope: !36)
!101 = !DILocation(line: 41, column: 14, scope: !36)
!102 = !{!78, !82, i64 136}
!103 = !DILocation(line: 42, column: 8, scope: !36)
!104 = !DILocation(line: 42, column: 14, scope: !36)
!105 = !{!78, !79, i64 0}
!106 = !DILocation(line: 43, column: 16, scope: !36)
!107 = !DILocation(line: 43, column: 8, scope: !36)
!108 = !DILocation(line: 43, column: 14, scope: !36)
!109 = !{!78, !82, i64 112}
!110 = !DILocation(line: 45, column: 8, scope: !36)
!111 = !DILocation(line: 45, column: 14, scope: !36)
!112 = !{!78, !79, i64 144}
!113 = !DILocation(line: 46, column: 3, scope: !36)
!114 = !DILocation(line: 47, column: 3, scope: !36)
!115 = !DILocation(line: 70, column: 27, scope: !47)
!116 = !DILocation(line: 72, column: 7, scope: !47)
!117 = !DILocation(line: 74, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 74, column: 3)
!119 = distinct !DILexicalBlock(scope: !47, file: !1, line: 74, column: 3)
!120 = !DILocation(line: 74, column: 17, scope: !118)
!121 = !DILocation(line: 74, column: 3, scope: !119)
!122 = !DILocation(line: 78, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 77, column: 2)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 76, column: 7)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 76, column: 7)
!126 = distinct !DILexicalBlock(scope: !118, file: !1, line: 75, column: 5)
!127 = !DILocation(line: 79, column: 9, scope: !123)
!128 = !DILocation(line: 80, column: 9, scope: !123)
!129 = !DILocation(line: 82, column: 27, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 82, column: 7)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 82, column: 7)
!132 = !{!79, !79, i64 0}
!133 = !DILocation(line: 82, column: 25, scope: !130)
!134 = !DILocation(line: 74, column: 26, scope: !118)
!135 = !DILocation(line: 76, column: 7, scope: !125)
!136 = !DILocation(line: 82, column: 7, scope: !131)
!137 = !DILocation(line: 78, column: 4, scope: !123)
!138 = !DILocation(line: 78, column: 22, scope: !123)
!139 = !{!140, !140, i64 0}
!140 = !{!"float", !80, i64 0}
!141 = !DILocation(line: 79, column: 4, scope: !123)
!142 = !DILocation(line: 79, column: 22, scope: !123)
!143 = !DILocation(line: 80, column: 4, scope: !123)
!144 = !DILocation(line: 80, column: 22, scope: !123)
!145 = !DILocation(line: 84, column: 4, scope: !146)
!146 = distinct !DILexicalBlock(scope: !130, file: !1, line: 83, column: 2)
!147 = !DILocation(line: 84, column: 25, scope: !146)
!148 = !DILocation(line: 85, column: 4, scope: !146)
!149 = !DILocation(line: 85, column: 25, scope: !146)
!150 = !DILocation(line: 86, column: 4, scope: !146)
!151 = !DILocation(line: 86, column: 25, scope: !146)
!152 = !DILocation(line: 89, column: 1, scope: !47)
!153 = !DILocation(line: 50, column: 27, scope: !42)
!154 = !DILocation(line: 52, column: 11, scope: !155)
!155 = distinct !DILexicalBlock(scope: !42, file: !1, line: 52, column: 7)
!156 = !DILocation(line: 52, column: 7, scope: !42)
!157 = !DILocation(line: 53, column: 13, scope: !42)
!158 = !DILocation(line: 53, column: 3, scope: !42)
!159 = !DILocation(line: 54, column: 13, scope: !42)
!160 = !DILocation(line: 54, column: 3, scope: !42)
!161 = !DILocation(line: 55, column: 13, scope: !42)
!162 = !DILocation(line: 55, column: 3, scope: !42)
!163 = !DILocation(line: 56, column: 13, scope: !42)
!164 = !DILocation(line: 56, column: 3, scope: !42)
!165 = !DILocation(line: 57, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !42, file: !1, line: 57, column: 7)
!167 = !DILocation(line: 57, column: 16, scope: !166)
!168 = !DILocation(line: 57, column: 7, scope: !42)
!169 = !DILocation(line: 57, column: 32, scope: !166)
!170 = !DILocation(line: 57, column: 26, scope: !166)
!171 = !DILocation(line: 58, column: 12, scope: !172)
!172 = distinct !DILexicalBlock(scope: !42, file: !1, line: 58, column: 7)
!173 = !DILocation(line: 58, column: 16, scope: !172)
!174 = !DILocation(line: 58, column: 7, scope: !42)
!175 = !DILocation(line: 58, column: 32, scope: !172)
!176 = !DILocation(line: 58, column: 26, scope: !172)
!177 = !DILocation(line: 59, column: 12, scope: !178)
!178 = distinct !DILexicalBlock(scope: !42, file: !1, line: 59, column: 7)
!179 = !DILocation(line: 59, column: 16, scope: !178)
!180 = !DILocation(line: 59, column: 7, scope: !42)
!181 = !DILocation(line: 59, column: 32, scope: !178)
!182 = !DILocation(line: 59, column: 26, scope: !178)
!183 = !DILocation(line: 60, column: 8, scope: !42)
!184 = !DILocation(line: 60, column: 3, scope: !42)
!185 = !DILocation(line: 61, column: 3, scope: !42)
!186 = !DILocation(line: 62, column: 1, scope: !42)
!187 = !DILocation(line: 104, column: 31, scope: !55)
!188 = !DILocation(line: 106, column: 10, scope: !55)
!189 = !DILocation(line: 108, column: 25, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 108, column: 3)
!191 = distinct !DILexicalBlock(scope: !55, file: !1, line: 108, column: 3)
!192 = !DILocation(line: 108, column: 17, scope: !190)
!193 = !DILocation(line: 108, column: 3, scope: !191)
!194 = !DILocation(line: 111, column: 18, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 109, column: 5)
!196 = !DILocation(line: 112, column: 18, scope: !195)
!197 = !DILocation(line: 113, column: 29, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 113, column: 11)
!199 = !DILocation(line: 111, column: 13, scope: !195)
!200 = !DILocation(line: 111, column: 7, scope: !195)
!201 = !DILocation(line: 112, column: 13, scope: !195)
!202 = !DILocation(line: 112, column: 7, scope: !195)
!203 = !DILocation(line: 113, column: 13, scope: !198)
!204 = !DILocation(line: 113, column: 11, scope: !195)
!205 = !DILocation(line: 113, column: 24, scope: !198)
!206 = !DILocation(line: 113, column: 18, scope: !198)
!207 = !DILocation(line: 115, column: 29, scope: !208)
!208 = distinct !DILexicalBlock(scope: !195, file: !1, line: 115, column: 11)
!209 = !DILocation(line: 115, column: 24, scope: !208)
!210 = !DILocation(line: 115, column: 39, scope: !208)
!211 = !DILocation(line: 115, column: 18, scope: !208)
!212 = !DILocation(line: 116, column: 18, scope: !195)
!213 = !DILocation(line: 116, column: 13, scope: !195)
!214 = !DILocation(line: 116, column: 28, scope: !195)
!215 = !DILocation(line: 116, column: 7, scope: !195)
!216 = !DILocation(line: 118, column: 1, scope: !55)
!217 = !DILocation(line: 128, column: 27, scope: !59)
!218 = !DILocation(line: 131, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !59, file: !1, line: 131, column: 7)
!220 = !DILocation(line: 131, column: 7, scope: !59)
!221 = !DILocation(line: 135, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 135, column: 5)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 135, column: 5)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 134, column: 12)
!225 = !DILocation(line: 135, column: 19, scope: !222)
!226 = !DILocation(line: 135, column: 5, scope: !223)
!227 = !DILocation(line: 136, column: 15, scope: !222)
!228 = !DILocation(line: 132, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 132, column: 5)
!230 = distinct !DILexicalBlock(scope: !219, file: !1, line: 132, column: 5)
!231 = !DILocation(line: 132, column: 19, scope: !229)
!232 = !DILocation(line: 132, column: 5, scope: !230)
!233 = !DILocation(line: 133, column: 17, scope: !229)
!234 = !DILocation(line: 133, column: 7, scope: !229)
!235 = !DILocation(line: 133, column: 15, scope: !229)
!236 = !DILocation(line: 138, column: 5, scope: !224)
!237 = !DILocation(line: 139, column: 1, scope: !59)
