; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/emulation.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [81 x i8] c"Profile %s will have more than 1000 positions. GCG won't read it; Compugen will.\00", align 1
@Alphabet_type = external global i32
@.str1 = private unnamed_addr constant [18 x i8] c"!!AA_PROFILE 1.0\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"!!NA_PROFILE 1.0\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"No support for profiles with non-biological alphabets\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"(Peptide) \00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"(Nucleotide) \00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"HMMCONVERT v%s Length: %d %s|%s|%s\0A\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [68 x i8] c"   Profile converted from a profile HMM using HMMER v%s emulation.\0A\00", align 1
@.str10 = private unnamed_addr constant [42 x i8] c"   Compugen XSW extended profile format.\0A\00", align 1
@.str11 = private unnamed_addr constant [81 x i8] c"   Use -model=xsw.model -nonor -noave -gapop=10 -gapext=1 -qgapop=10 -qgapext=1\0A\00", align 1
@.str12 = private unnamed_addr constant [89 x i8] c"      with om on the Compugen BIC to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str13 = private unnamed_addr constant [64 x i8] c"   WARNING: There is a loss of information in this conversion.\0A\00", align 1
@.str14 = private unnamed_addr constant [76 x i8] c"      Neither the scores nor even the rank order of hits will be precisely\0A\00", align 1
@.str15 = private unnamed_addr constant [74 x i8] c"      preserved in a comparison of HMMER hmmsearch to GCG profilesearch.\0A\00", align 1
@.str16 = private unnamed_addr constant [79 x i8] c"      The profile score is an approximation of the (single-hit) HMMER score.\0A\0A\00", align 1
@.str17 = private unnamed_addr constant [68 x i8] c"   Use -nonor -noave -gap=10 -len=1 with profilesearch and friends\0A\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c"      to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"Cons\00", align 1
@Alphabet_iupac = external global i32
@.str20 = private unnamed_addr constant [8 x i8] c"    %c \00", align 1
@Alphabet = external global [25 x i8]
@.str21 = private unnamed_addr constant [28 x i8] c"  Gap   Len  QGap  Qlen ..\0A\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"  Gap   Len ..\0A\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"! %d\0A\00", align 1
@Alphabet_size = external global i32
@.str24 = private unnamed_addr constant [6 x i8] c" %c  \00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"%5d %5d %5d %5d\0A\00", align 1
@.str27 = private unnamed_addr constant [9 x i8] c"%5d %5d\0A\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c" *  \00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteProfile(%struct.__sFILE* %fp, %struct.plan7_s* %hmm, i32 %do_xsw) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !138, metadata !153), !dbg !154
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !139, metadata !153), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %do_xsw, i64 0, metadata !140, metadata !153), !dbg !156
  tail call void @P7Logoddsify(%struct.plan7_s* %hmm, i32 1) #5, !dbg !157
  %1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !158
  %2 = load i32* %1, align 4, !dbg !158, !tbaa !160
  %3 = icmp slt i32 %2, 1001, !dbg !167
  %4 = icmp ne i32 %do_xsw, 0, !dbg !168
  %or.cond = or i1 %4, %3, !dbg !169
  br i1 %or.cond, label %8, label %5, !dbg !169

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !170
  %7 = load i8** %6, align 8, !dbg !170, !tbaa !171
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* %7) #5, !dbg !172
  br label %8, !dbg !172

; <label>:8                                       ; preds = %0, %5
  %9 = load i32* @Alphabet_type, align 4, !dbg !173, !tbaa !175
  switch i32 %9, label %14 [
    i32 3, label %10
    i32 2, label %12
  ], !dbg !176

; <label>:10                                      ; preds = %8
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %fp), !dbg !177
  br label %15, !dbg !177

; <label>:12                                      ; preds = %8
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %fp), !dbg !178
  br label %15, !dbg !178

; <label>:14                                      ; preds = %8
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !180
  br label %15

; <label>:15                                      ; preds = %12, %14, %10
  %16 = load i32* @Alphabet_type, align 4, !dbg !181, !tbaa !175
  switch i32 %16, label %21 [
    i32 3, label %17
    i32 2, label %19
  ], !dbg !183

; <label>:17                                      ; preds = %15
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %fp), !dbg !184
  br label %21, !dbg !184

; <label>:19                                      ; preds = %15
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !185
  br label %21, !dbg !185

; <label>:21                                      ; preds = %15, %19, %17
  %22 = load i32* %1, align 4, !dbg !187, !tbaa !160
  %23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !188
  %24 = load i8** %23, align 8, !dbg !188, !tbaa !171
  %25 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !189
  %26 = load i32* %25, align 4, !dbg !189, !tbaa !190
  %27 = and i32 %26, 512, !dbg !191
  %28 = icmp eq i32 %27, 0, !dbg !191
  br i1 %28, label %32, label %29, !dbg !192

; <label>:29                                      ; preds = %21
  %30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !193
  %31 = load i8** %30, align 8, !dbg !193, !tbaa !194
  br label %32, !dbg !192

; <label>:32                                      ; preds = %21, %29
  %33 = phi i8* [ %31, %29 ], [ getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), %21 ], !dbg !192
  %34 = and i32 %26, 2, !dbg !195
  %35 = icmp eq i32 %34, 0, !dbg !195
  br i1 %35, label %39, label %36, !dbg !196

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !197
  %38 = load i8** %37, align 8, !dbg !197, !tbaa !198
  br label %39, !dbg !196

; <label>:39                                      ; preds = %32, %36
  %40 = phi i8* [ %38, %36 ], [ getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), %32 ], !dbg !196
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %22, i8* %24, i8* %33, i8* %40) #5, !dbg !199
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !200
  br i1 %4, label %43, label %51, !dbg !203

; <label>:43                                      ; preds = %39
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str10, i64 0, i64 0), i64 41, i64 1, %struct.__sFILE* %fp), !dbg !204
  %45 = tail call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str11, i64 0, i64 0), i64 80, i64 1, %struct.__sFILE* %fp), !dbg !205
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([89 x i8]* @.str12, i64 0, i64 0), i64 88, i64 1, %struct.__sFILE* %fp), !dbg !206
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %fp), !dbg !207
  %48 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str14, i64 0, i64 0), i64 75, i64 1, %struct.__sFILE* %fp), !dbg !208
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str15, i64 0, i64 0), i64 73, i64 1, %struct.__sFILE* %fp), !dbg !209
  %50 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i64 78, i64 1, %struct.__sFILE* %fp), !dbg !210
  br label %58, !dbg !211

; <label>:51                                      ; preds = %39
  %52 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str17, i64 0, i64 0), i64 67, i64 1, %struct.__sFILE* %fp), !dbg !212
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), i64 60, i64 1, %struct.__sFILE* %fp), !dbg !214
  %54 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %fp), !dbg !215
  %55 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str14, i64 0, i64 0), i64 75, i64 1, %struct.__sFILE* %fp), !dbg !216
  %56 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str15, i64 0, i64 0), i64 73, i64 1, %struct.__sFILE* %fp), !dbg !217
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i64 78, i64 1, %struct.__sFILE* %fp), !dbg !218
  br label %58

; <label>:58                                      ; preds = %51, %43
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %fp), !dbg !219
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !142, metadata !153), !dbg !220
  %60 = load i32* @Alphabet_iupac, align 4, !dbg !221, !tbaa !175
  %61 = icmp sgt i32 %60, 0, !dbg !224
  br i1 %61, label %.lr.ph39, label %._crit_edge40, !dbg !225

.lr.ph39:                                         ; preds = %58, %.lr.ph39
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.lr.ph39 ], [ 0, %58 ]
  %62 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv49, !dbg !226
  %63 = load i8* %62, align 1, !dbg !226, !tbaa !227
  %64 = sext i8 %63 to i32, !dbg !226
  %65 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i32 %64) #5, !dbg !228
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !225
  %66 = load i32* @Alphabet_iupac, align 4, !dbg !221, !tbaa !175
  %67 = sext i32 %66 to i64, !dbg !224
  %68 = icmp slt i64 %indvars.iv.next50, %67, !dbg !224
  br i1 %68, label %.lr.ph39, label %._crit_edge40, !dbg !225

._crit_edge40:                                    ; preds = %.lr.ph39, %58
  br i1 %4, label %69, label %71, !dbg !229

; <label>:69                                      ; preds = %._crit_edge40
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str21, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %fp), !dbg !230
  br label %.preheader22, !dbg !230

; <label>:71                                      ; preds = %._crit_edge40
  %72 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %fp), !dbg !232
  br label %.preheader22

.preheader22:                                     ; preds = %71, %69
  %73 = load i32* %1, align 4, !dbg !233, !tbaa !160
  %74 = icmp slt i32 %73, 1, !dbg !236
  br i1 %74, label %._crit_edge36, label %.lr.ph35, !dbg !237

.lr.ph35:                                         ; preds = %.preheader22
  %75 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !238
  %76 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !240
  %77 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !243
  br label %78, !dbg !237

; <label>:78                                      ; preds = %178, %.lr.ph35
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %178 ], [ 1, %.lr.ph35 ]
  %79 = add nsw i64 %indvars.iv47, -1, !dbg !247
  %80 = trunc i64 %79 to i32, !dbg !249
  %81 = srem i32 %80, 10, !dbg !249
  %82 = icmp eq i32 %81, 0, !dbg !250
  %83 = icmp sgt i64 %indvars.iv47, 10, !dbg !251
  %or.cond3 = and i1 %83, %82, !dbg !252
  br i1 %or.cond3, label %84, label %87, !dbg !252

; <label>:84                                      ; preds = %78
  %85 = trunc i64 %indvars.iv47 to i32, !dbg !253
  %86 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i32 %85) #5, !dbg !253
  br label %87, !dbg !253

; <label>:87                                      ; preds = %84, %78
  %88 = load float*** %75, align 8, !dbg !238, !tbaa !254
  %89 = getelementptr inbounds float** %88, i64 %indvars.iv47, !dbg !255
  %90 = load float** %89, align 8, !dbg !255, !tbaa !256
  %91 = load i32* @Alphabet_size, align 4, !dbg !257, !tbaa !175
  %92 = tail call i32 @FArgMax(float* %90, i32 %91) #5, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !142, metadata !153), !dbg !220
  %93 = sext i32 %92 to i64, !dbg !259
  %94 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %93, !dbg !259
  %95 = load i8* %94, align 1, !dbg !259, !tbaa !227
  %96 = sext i8 %95 to i32, !dbg !259
  %97 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %96) #5, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !142, metadata !153), !dbg !220
  %98 = load i32* @Alphabet_iupac, align 4, !dbg !261, !tbaa !175
  %99 = icmp sgt i32 %98, 0, !dbg !262
  br i1 %99, label %.lr.ph32, label %._crit_edge33, !dbg !263

.lr.ph32:                                         ; preds = %87, %114
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %114 ], [ 0, %87 ]
  %100 = load i32*** %77, align 8, !dbg !243, !tbaa !264
  %101 = getelementptr inbounds i32** %100, i64 %indvars.iv45, !dbg !265
  %102 = load i32** %101, align 8, !dbg !265, !tbaa !256
  %103 = getelementptr inbounds i32* %102, i64 %indvars.iv47, !dbg !265
  %104 = load i32* %103, align 4, !dbg !265, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !143, metadata !153), !dbg !266
  %105 = load i32* %1, align 4, !dbg !267, !tbaa !160
  %106 = sext i32 %105 to i64, !dbg !269
  %107 = icmp slt i64 %indvars.iv47, %106, !dbg !269
  br i1 %107, label %108, label %114, !dbg !270

; <label>:108                                     ; preds = %.lr.ph32
  %109 = load i32*** %76, align 8, !dbg !271, !tbaa !272
  %110 = load i32** %109, align 8, !dbg !273, !tbaa !256
  %111 = getelementptr inbounds i32* %110, i64 %indvars.iv47, !dbg !273
  %112 = load i32* %111, align 4, !dbg !273, !tbaa !175
  %113 = add nsw i32 %112, %104, !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !143, metadata !153), !dbg !266
  br label %114, !dbg !275

; <label>:114                                     ; preds = %108, %.lr.ph32
  %sc.0 = phi i32 [ %113, %108 ], [ %104, %.lr.ph32 ]
  %115 = mul nsw i32 %sc.0, 100, !dbg !276
  %116 = sitofp i32 %115 to double, !dbg !277
  %117 = fdiv double %116, 1.000000e+03, !dbg !278
  %118 = fptosi double %117 to i32, !dbg !277
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !143, metadata !153), !dbg !266
  %119 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %118) #5, !dbg !279
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !263
  %120 = load i32* @Alphabet_iupac, align 4, !dbg !261, !tbaa !175
  %121 = sext i32 %120 to i64, !dbg !262
  %122 = icmp slt i64 %indvars.iv.next46, %121, !dbg !262
  br i1 %122, label %.lr.ph32, label %._crit_edge33, !dbg !263

._crit_edge33:                                    ; preds = %114, %87
  %123 = icmp sgt i64 %indvars.iv47, 1, !dbg !280
  br i1 %123, label %124, label %173, !dbg !281

; <label>:124                                     ; preds = %._crit_edge33
  %125 = load i32*** %76, align 8, !dbg !240, !tbaa !272
  %126 = getelementptr inbounds i32** %125, i64 1, !dbg !282
  %127 = load i32** %126, align 8, !dbg !282, !tbaa !256
  %128 = getelementptr inbounds i32* %127, i64 %79, !dbg !282
  %129 = load i32* %128, align 4, !dbg !282, !tbaa !175
  %130 = getelementptr inbounds i32** %125, i64 3, !dbg !283
  %131 = load i32** %130, align 8, !dbg !283, !tbaa !256
  %132 = getelementptr inbounds i32* %131, i64 %79, !dbg !283
  %133 = load i32* %132, align 4, !dbg !283, !tbaa !175
  %134 = load i32** %125, align 8, !dbg !284, !tbaa !256
  %135 = getelementptr inbounds i32* %134, i64 %79, !dbg !284
  %136 = load i32* %135, align 4, !dbg !284, !tbaa !175
  %137 = getelementptr inbounds i32** %125, i64 4, !dbg !285
  %138 = load i32** %137, align 8, !dbg !285, !tbaa !256
  %139 = getelementptr inbounds i32* %138, i64 %79, !dbg !285
  %140 = load i32* %139, align 4, !dbg !285, !tbaa !175
  %sum = add i32 %133, %129, !dbg !286
  %141 = sub i32 %136, %sum, !dbg !287
  %142 = add i32 %141, %140, !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !145, metadata !153), !dbg !288
  %143 = mul nsw i32 %142, 100, !dbg !289
  %144 = sitofp i32 %143 to double, !dbg !290
  %145 = fdiv double %144, 1.000000e+04, !dbg !291
  %146 = fptosi double %145 to i32, !dbg !290
  tail call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !145, metadata !153), !dbg !288
  %147 = mul i32 %140, -100, !dbg !292
  %148 = sitofp i32 %147 to double, !dbg !295
  %149 = fdiv double %148, 1.000000e+03, !dbg !296
  %150 = fptosi double %149 to i32, !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !146, metadata !153), !dbg !297
  %151 = getelementptr inbounds i32** %125, i64 5, !dbg !298
  %152 = load i32** %151, align 8, !dbg !298, !tbaa !256
  %153 = getelementptr inbounds i32* %152, i64 %79, !dbg !298
  %154 = load i32* %153, align 4, !dbg !298, !tbaa !175
  %155 = getelementptr inbounds i32** %125, i64 2, !dbg !301
  %156 = load i32** %155, align 8, !dbg !301, !tbaa !256
  %157 = getelementptr inbounds i32* %156, i64 %79, !dbg !301
  %158 = load i32* %157, align 4, !dbg !301, !tbaa !175
  %159 = getelementptr inbounds i32** %125, i64 6, !dbg !302
  %160 = load i32** %159, align 8, !dbg !302, !tbaa !256
  %161 = getelementptr inbounds i32* %160, i64 %79, !dbg !302
  %162 = load i32* %161, align 4, !dbg !302, !tbaa !175
  %sum41 = add i32 %158, %154, !dbg !303
  %163 = sub i32 %136, %sum41, !dbg !304
  %164 = add i32 %163, %162, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %164, i64 0, metadata !147, metadata !153), !dbg !305
  %165 = mul nsw i32 %164, 100, !dbg !306
  %166 = sitofp i32 %165 to double, !dbg !307
  %167 = fdiv double %166, 1.000000e+04, !dbg !308
  %168 = fptosi double %167 to i32, !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !147, metadata !153), !dbg !305
  %169 = mul i32 %162, -100, !dbg !309
  %170 = sitofp i32 %169 to double, !dbg !312
  %171 = fdiv double %170, 1.000000e+03, !dbg !313
  %172 = fptosi double %171 to i32, !dbg !312
  tail call void @llvm.dbg.value(metadata i32 %172, i64 0, metadata !148, metadata !153), !dbg !314
  br label %173, !dbg !315

; <label>:173                                     ; preds = %._crit_edge33, %124
  %qgap.014 = phi i32 [ %168, %124 ], [ 100, %._crit_edge33 ]
  %gap.04612 = phi i32 [ %146, %124 ], [ 100, %._crit_edge33 ]
  %len.0810 = phi i32 [ %150, %124 ], [ 100, %._crit_edge33 ]
  %qlen.0 = phi i32 [ %172, %124 ], [ 100, %._crit_edge33 ]
  br i1 %4, label %174, label %176, !dbg !316

; <label>:174                                     ; preds = %173
  %175 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i32 %gap.04612, i32 %len.0810, i32 %qgap.014, i32 %qlen.0) #5, !dbg !317
  br label %178, !dbg !317

; <label>:176                                     ; preds = %173
  %177 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i32 %gap.04612, i32 %len.0810) #5, !dbg !319
  br label %178

; <label>:178                                     ; preds = %174, %176
  %indvars.iv.next48 = add nuw i64 %indvars.iv47, 1, !dbg !237
  %179 = load i32* %1, align 4, !dbg !233, !tbaa !160
  %180 = sext i32 %179 to i64, !dbg !236
  %181 = icmp slt i64 %indvars.iv47, %180, !dbg !236
  br i1 %181, label %78, label %._crit_edge36, !dbg !237

._crit_edge36:                                    ; preds = %178, %.preheader22
  %182 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %fp), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !142, metadata !153), !dbg !220
  %183 = load i32* @Alphabet_size, align 4, !dbg !321, !tbaa !175
  %184 = icmp sgt i32 %183, 0, !dbg !324
  br i1 %184, label %.preheader21.lr.ph, label %.preheader, !dbg !325

.preheader21.lr.ph:                               ; preds = %._crit_edge36
  %185 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7, !dbg !326
  %186 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !328
  br label %.preheader21, !dbg !325

.preheader21:                                     ; preds = %.preheader21.lr.ph, %._crit_edge27
  %indvars.iv43 = phi i64 [ 0, %.preheader21.lr.ph ], [ %indvars.iv.next44, %._crit_edge27 ]
  %187 = load i32* %1, align 4, !dbg !331, !tbaa !160
  %188 = icmp slt i32 %187, 1, !dbg !332
  br i1 %188, label %._crit_edge27, label %.lr.ph26, !dbg !333

.lr.ph26:                                         ; preds = %.preheader21
  %189 = load float*** %186, align 8, !dbg !328, !tbaa !254
  %190 = sext i32 %187 to i64, !dbg !333
  br label %194, !dbg !333

..preheader_crit_edge:                            ; preds = %._crit_edge27
  %191 = trunc i64 %indvars.iv.next44 to i32, !dbg !325
  br label %.preheader, !dbg !325

.preheader:                                       ; preds = %..preheader_crit_edge, %._crit_edge36
  %x.2.lcssa = phi i32 [ %191, %..preheader_crit_edge ], [ 0, %._crit_edge36 ]
  %192 = load i32* @Alphabet_iupac, align 4, !dbg !334, !tbaa !175
  %193 = icmp slt i32 %x.2.lcssa, %192, !dbg !337
  br i1 %193, label %.lr.ph, label %._crit_edge, !dbg !338

; <label>:194                                     ; preds = %194, %.lr.ph26
  %indvars.iv = phi i64 [ %indvars.iv.next, %194 ], [ 1, %.lr.ph26 ]
  %nx.025 = phi float [ %199, %194 ], [ 0.000000e+00, %.lr.ph26 ]
  %195 = getelementptr inbounds float** %189, i64 %indvars.iv, !dbg !339
  %196 = load float** %195, align 8, !dbg !339, !tbaa !256
  %197 = getelementptr inbounds float* %196, i64 %indvars.iv43, !dbg !339
  %198 = load float* %197, align 4, !dbg !339, !tbaa !340
  %199 = fadd float %nx.025, %198, !dbg !341
  tail call void @llvm.dbg.value(metadata float %199, i64 0, metadata !144, metadata !153), !dbg !342
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !333
  %200 = icmp slt i64 %indvars.iv, %190, !dbg !332
  br i1 %200, label %194, label %._crit_edge27, !dbg !333

._crit_edge27:                                    ; preds = %194, %.preheader21
  %nx.0.lcssa = phi float [ 0.000000e+00, %.preheader21 ], [ %199, %194 ]
  %201 = load i32* %185, align 4, !dbg !326, !tbaa !343
  %202 = sitofp i32 %201 to float, !dbg !344
  %203 = fmul float %nx.0.lcssa, %202, !dbg !345
  tail call void @llvm.dbg.value(metadata float %203, i64 0, metadata !144, metadata !153), !dbg !342
  %204 = fptosi float %203 to i32, !dbg !346
  %205 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %204) #5, !dbg !347
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !325
  %206 = load i32* @Alphabet_size, align 4, !dbg !321, !tbaa !175
  %207 = sext i32 %206 to i64, !dbg !324
  %208 = icmp slt i64 %indvars.iv.next44, %207, !dbg !324
  br i1 %208, label %.preheader21, label %..preheader_crit_edge, !dbg !325

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %x.323 = phi i32 [ %210, %.lr.ph ], [ %x.2.lcssa, %.preheader ]
  %209 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 0) #5, !dbg !348
  %210 = add nsw i32 %x.323, 1, !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !142, metadata !153), !dbg !220
  %211 = load i32* @Alphabet_iupac, align 4, !dbg !334, !tbaa !175
  %212 = icmp slt i32 %210, %211, !dbg !337
  br i1 %212, label %.lr.ph, label %._crit_edge, !dbg !338

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: optsize
declare void @P7Logoddsify(%struct.plan7_s*, i32) #1

; Function Attrs: optsize
declare void @Warn(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!149, !150, !151}
!llvm.ident = !{!152}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/emulation.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DISubprogram(name: "WriteProfile", scope: !1, file: !1, line: 91, type: !7, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.plan7_s*, i32)* @WriteProfile, variables: !137)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !72, !4}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !11, line: 153, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !11, line: 122, size: 1216, align: 64, elements: !13)
!13 = !{!14, !17, !18, !19, !21, !22, !27, !28, !30, !34, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !12, file: !11, line: 123, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !12, file: !11, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !12, file: !11, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !12, file: !11, line: 126, baseType: !20, size: 16, align: 16, offset: 128)
!20 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !12, file: !11, line: 127, baseType: !20, size: 16, align: 16, offset: 144)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !12, file: !11, line: 128, baseType: !23, size: 128, align: 64, offset: 192)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !11, line: 88, size: 128, align: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !23, file: !11, line: 89, baseType: !15, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !23, file: !11, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !12, file: !11, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !12, file: !11, line: 132, baseType: !29, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !12, file: !11, line: 133, baseType: !31, size: 64, align: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!4, !29}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !12, file: !11, line: 134, baseType: !35, size: 64, align: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!4, !29, !38, !4}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !12, file: !11, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !29, !44, !4}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !11, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !12, file: !11, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!4, !29, !54, !4}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !12, file: !11, line: 139, baseType: !23, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !12, file: !11, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !11, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !12, file: !11, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !12, file: !11, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !12, file: !11, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !12, file: !11, line: 148, baseType: !23, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !12, file: !11, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !12, file: !11, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !74, line: 101, size: 3712, align: 64, elements: !75)
!74 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !102, !103, !104, !105, !110, !111, !112, !116, !117, !119, !120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 113, baseType: !38, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !73, file: !74, line: 114, baseType: !38, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !73, file: !74, line: 115, baseType: !38, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !73, file: !74, line: 116, baseType: !38, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !73, file: !74, line: 117, baseType: !38, size: 64, align: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !73, file: !74, line: 118, baseType: !38, size: 64, align: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !73, file: !74, line: 119, baseType: !38, size: 64, align: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !73, file: !74, line: 120, baseType: !4, size: 32, align: 32, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !73, file: !74, line: 121, baseType: !38, size: 64, align: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !73, file: !74, line: 122, baseType: !86, size: 64, align: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !73, file: !74, line: 123, baseType: !4, size: 32, align: 32, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !73, file: !74, line: 134, baseType: !86, size: 64, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !73, file: !74, line: 135, baseType: !86, size: 64, align: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !73, file: !74, line: 136, baseType: !86, size: 64, align: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !73, file: !74, line: 144, baseType: !92, size: 32, align: 32, offset: 896)
!92 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !73, file: !74, line: 144, baseType: !92, size: 32, align: 32, offset: 928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !73, file: !74, line: 145, baseType: !92, size: 32, align: 32, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !73, file: !74, line: 145, baseType: !92, size: 32, align: 32, offset: 992)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !73, file: !74, line: 146, baseType: !92, size: 32, align: 32, offset: 1024)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !73, file: !74, line: 146, baseType: !92, size: 32, align: 32, offset: 1056)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !73, file: !74, line: 155, baseType: !4, size: 32, align: 32, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !73, file: !74, line: 156, baseType: !100, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !73, file: !74, line: 157, baseType: !100, size: 64, align: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !73, file: !74, line: 158, baseType: !100, size: 64, align: 64, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !73, file: !74, line: 159, baseType: !92, size: 32, align: 32, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !73, file: !74, line: 168, baseType: !106, size: 256, align: 32, offset: 1376)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, align: 32, elements: !107)
!107 = !{!108, !109}
!108 = !DISubrange(count: 4)
!109 = !DISubrange(count: 2)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !73, file: !74, line: 169, baseType: !101, size: 64, align: 64, offset: 1664)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !73, file: !74, line: 170, baseType: !101, size: 64, align: 64, offset: 1728)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !73, file: !74, line: 174, baseType: !113, size: 640, align: 32, offset: 1792)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 640, align: 32, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !73, file: !74, line: 175, baseType: !92, size: 32, align: 32, offset: 2432)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !73, file: !74, line: 197, baseType: !118, size: 64, align: 64, offset: 2496)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !73, file: !74, line: 198, baseType: !118, size: 64, align: 64, offset: 2560)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !73, file: !74, line: 199, baseType: !118, size: 64, align: 64, offset: 2624)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !73, file: !74, line: 200, baseType: !122, size: 256, align: 32, offset: 2688)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 32, elements: !107)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !73, file: !74, line: 201, baseType: !86, size: 64, align: 64, offset: 2944)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !73, file: !74, line: 202, baseType: !86, size: 64, align: 64, offset: 3008)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !73, file: !74, line: 203, baseType: !86, size: 64, align: 64, offset: 3072)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !73, file: !74, line: 203, baseType: !86, size: 64, align: 64, offset: 3136)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !73, file: !74, line: 203, baseType: !86, size: 64, align: 64, offset: 3200)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !73, file: !74, line: 203, baseType: !86, size: 64, align: 64, offset: 3264)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !73, file: !74, line: 203, baseType: !86, size: 64, align: 64, offset: 3328)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !73, file: !74, line: 214, baseType: !118, size: 64, align: 64, offset: 3392)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !73, file: !74, line: 215, baseType: !118, size: 64, align: 64, offset: 3456)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !73, file: !74, line: 216, baseType: !4, size: 32, align: 32, offset: 3520)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !73, file: !74, line: 217, baseType: !4, size: 32, align: 32, offset: 3552)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !73, file: !74, line: 222, baseType: !92, size: 32, align: 32, offset: 3584)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !73, file: !74, line: 223, baseType: !92, size: 32, align: 32, offset: 3616)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 225, baseType: !4, size: 32, align: 32, offset: 3648)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !6, file: !1, line: 91, type: !9)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 2, scope: !6, file: !1, line: 91, type: !72)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "do_xsw", arg: 3, scope: !6, file: !1, line: 91, type: !4)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !6, file: !1, line: 93, type: !4)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !6, file: !1, line: 94, type: !4)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sc", scope: !6, file: !1, line: 95, type: !4)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !6, file: !1, line: 96, type: !92)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gap", scope: !6, file: !1, line: 97, type: !4)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !6, file: !1, line: 97, type: !4)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qgap", scope: !6, file: !1, line: 97, type: !4)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qlen", scope: !6, file: !1, line: 97, type: !4)
!149 = !{i32 2, !"Dwarf Version", i32 2}
!150 = !{i32 2, !"Debug Info Version", i32 700000003}
!151 = !{i32 1, !"PIC Level", i32 2}
!152 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!153 = !DIExpression()
!154 = !DILocation(line: 91, column: 20, scope: !6)
!155 = !DILocation(line: 91, column: 40, scope: !6)
!156 = !DILocation(line: 91, column: 49, scope: !6)
!157 = !DILocation(line: 99, column: 3, scope: !6)
!158 = !DILocation(line: 105, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !6, file: !1, line: 105, column: 7)
!160 = !{!161, !165, i64 136}
!161 = !{!"plan7_s", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !165, i64 56, !162, i64 64, !162, i64 72, !165, i64 80, !162, i64 88, !162, i64 96, !162, i64 104, !166, i64 112, !166, i64 116, !166, i64 120, !166, i64 124, !166, i64 128, !166, i64 132, !165, i64 136, !162, i64 144, !162, i64 152, !162, i64 160, !166, i64 168, !163, i64 172, !162, i64 208, !162, i64 216, !163, i64 224, !166, i64 304, !162, i64 312, !162, i64 320, !162, i64 328, !163, i64 336, !162, i64 368, !162, i64 376, !162, i64 384, !162, i64 392, !162, i64 400, !162, i64 408, !162, i64 416, !162, i64 424, !162, i64 432, !165, i64 440, !165, i64 444, !166, i64 448, !166, i64 452, !165, i64 456}
!162 = !{!"any pointer", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !{!"int", !163, i64 0}
!166 = !{!"float", !163, i64 0}
!167 = !DILocation(line: 105, column: 14, scope: !159)
!168 = !DILocation(line: 105, column: 25, scope: !159)
!169 = !DILocation(line: 105, column: 21, scope: !159)
!170 = !DILocation(line: 107, column: 8, scope: !159)
!171 = !{!161, !162, i64 0}
!172 = !DILocation(line: 106, column: 5, scope: !159)
!173 = !DILocation(line: 115, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !6, file: !1, line: 115, column: 7)
!175 = !{!165, !165, i64 0}
!176 = !DILocation(line: 115, column: 7, scope: !6)
!177 = !DILocation(line: 115, column: 41, scope: !174)
!178 = !DILocation(line: 116, column: 41, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 116, column: 12)
!180 = !DILocation(line: 117, column: 8, scope: !179)
!181 = !DILocation(line: 119, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !6, file: !1, line: 119, column: 7)
!183 = !DILocation(line: 119, column: 7, scope: !6)
!184 = !DILocation(line: 119, column: 41, scope: !182)
!185 = !DILocation(line: 120, column: 41, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 120, column: 12)
!187 = !DILocation(line: 122, column: 26, scope: !6)
!188 = !DILocation(line: 122, column: 34, scope: !6)
!189 = !DILocation(line: 123, column: 9, scope: !6)
!190 = !{!161, !165, i64 456}
!191 = !DILocation(line: 123, column: 15, scope: !6)
!192 = !DILocation(line: 123, column: 4, scope: !6)
!193 = !DILocation(line: 123, column: 34, scope: !6)
!194 = !{!161, !162, i64 8}
!195 = !DILocation(line: 124, column: 15, scope: !6)
!196 = !DILocation(line: 124, column: 4, scope: !6)
!197 = !DILocation(line: 124, column: 35, scope: !6)
!198 = !{!161, !162, i64 16}
!199 = !DILocation(line: 121, column: 3, scope: !6)
!200 = !DILocation(line: 130, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 129, column: 5)
!202 = distinct !DILexicalBlock(scope: !6, file: !1, line: 128, column: 7)
!203 = !DILocation(line: 128, column: 7, scope: !6)
!204 = !DILocation(line: 131, column: 7, scope: !201)
!205 = !DILocation(line: 132, column: 7, scope: !201)
!206 = !DILocation(line: 133, column: 7, scope: !201)
!207 = !DILocation(line: 134, column: 7, scope: !201)
!208 = !DILocation(line: 135, column: 7, scope: !201)
!209 = !DILocation(line: 136, column: 7, scope: !201)
!210 = !DILocation(line: 137, column: 7, scope: !201)
!211 = !DILocation(line: 138, column: 5, scope: !201)
!212 = !DILocation(line: 142, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !202, file: !1, line: 140, column: 5)
!214 = !DILocation(line: 143, column: 7, scope: !213)
!215 = !DILocation(line: 144, column: 7, scope: !213)
!216 = !DILocation(line: 145, column: 7, scope: !213)
!217 = !DILocation(line: 146, column: 7, scope: !213)
!218 = !DILocation(line: 147, column: 7, scope: !213)
!219 = !DILocation(line: 153, column: 3, scope: !6)
!220 = !DILocation(line: 94, column: 7, scope: !6)
!221 = !DILocation(line: 154, column: 19, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 154, column: 3)
!223 = distinct !DILexicalBlock(scope: !6, file: !1, line: 154, column: 3)
!224 = !DILocation(line: 154, column: 17, scope: !222)
!225 = !DILocation(line: 154, column: 3, scope: !223)
!226 = !DILocation(line: 155, column: 28, scope: !222)
!227 = !{!163, !163, i64 0}
!228 = !DILocation(line: 155, column: 5, scope: !222)
!229 = !DILocation(line: 156, column: 7, scope: !6)
!230 = !DILocation(line: 157, column: 5, scope: !231)
!231 = distinct !DILexicalBlock(scope: !6, file: !1, line: 156, column: 7)
!232 = !DILocation(line: 159, column: 5, scope: !231)
!233 = !DILocation(line: 163, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 163, column: 3)
!235 = distinct !DILexicalBlock(scope: !6, file: !1, line: 163, column: 3)
!236 = !DILocation(line: 163, column: 17, scope: !234)
!237 = !DILocation(line: 163, column: 3, scope: !235)
!238 = !DILocation(line: 170, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 164, column: 5)
!240 = !DILocation(line: 189, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 188, column: 2)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 187, column: 11)
!243 = !DILocation(line: 177, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 176, column: 2)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 175, column: 7)
!246 = distinct !DILexicalBlock(scope: !239, file: !1, line: 175, column: 7)
!247 = !DILocation(line: 166, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !239, file: !1, line: 166, column: 11)
!249 = !DILocation(line: 166, column: 16, scope: !248)
!250 = !DILocation(line: 166, column: 20, scope: !248)
!251 = !DILocation(line: 166, column: 30, scope: !248)
!252 = !DILocation(line: 166, column: 25, scope: !248)
!253 = !DILocation(line: 167, column: 2, scope: !248)
!254 = !{!161, !162, i64 152}
!255 = !DILocation(line: 170, column: 19, scope: !239)
!256 = !{!162, !162, i64 0}
!257 = !DILocation(line: 170, column: 32, scope: !239)
!258 = !DILocation(line: 170, column: 11, scope: !239)
!259 = !DILocation(line: 171, column: 28, scope: !239)
!260 = !DILocation(line: 171, column: 7, scope: !239)
!261 = !DILocation(line: 175, column: 23, scope: !245)
!262 = !DILocation(line: 175, column: 21, scope: !245)
!263 = !DILocation(line: 175, column: 7, scope: !246)
!264 = !{!161, !162, i64 320}
!265 = !DILocation(line: 177, column: 9, scope: !244)
!266 = !DILocation(line: 95, column: 7, scope: !6)
!267 = !DILocation(line: 178, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !244, file: !1, line: 178, column: 8)
!269 = !DILocation(line: 178, column: 10, scope: !268)
!270 = !DILocation(line: 178, column: 8, scope: !244)
!271 = !DILocation(line: 178, column: 31, scope: !268)
!272 = !{!161, !162, i64 312}
!273 = !DILocation(line: 178, column: 26, scope: !268)
!274 = !DILocation(line: 178, column: 23, scope: !268)
!275 = !DILocation(line: 178, column: 20, scope: !268)
!276 = !DILocation(line: 179, column: 12, scope: !244)
!277 = !DILocation(line: 179, column: 9, scope: !244)
!278 = !DILocation(line: 179, column: 18, scope: !244)
!279 = !DILocation(line: 180, column: 4, scope: !244)
!280 = !DILocation(line: 187, column: 13, scope: !242)
!281 = !DILocation(line: 187, column: 11, scope: !239)
!282 = !DILocation(line: 189, column: 16, scope: !241)
!283 = !DILocation(line: 189, column: 37, scope: !241)
!284 = !DILocation(line: 189, column: 58, scope: !241)
!285 = !DILocation(line: 189, column: 79, scope: !241)
!286 = !DILocation(line: 189, column: 35, scope: !241)
!287 = !DILocation(line: 189, column: 13, scope: !241)
!288 = !DILocation(line: 97, column: 7, scope: !6)
!289 = !DILocation(line: 190, column: 14, scope: !241)
!290 = !DILocation(line: 190, column: 10, scope: !241)
!291 = !DILocation(line: 190, column: 20, scope: !241)
!292 = !DILocation(line: 198, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 196, column: 2)
!294 = distinct !DILexicalBlock(scope: !239, file: !1, line: 195, column: 11)
!295 = !DILocation(line: 198, column: 10, scope: !293)
!296 = !DILocation(line: 198, column: 20, scope: !293)
!297 = !DILocation(line: 97, column: 12, scope: !6)
!298 = !DILocation(line: 205, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 204, column: 2)
!300 = distinct !DILexicalBlock(scope: !239, file: !1, line: 203, column: 11)
!301 = !DILocation(line: 205, column: 38, scope: !299)
!302 = !DILocation(line: 205, column: 80, scope: !299)
!303 = !DILocation(line: 205, column: 36, scope: !299)
!304 = !DILocation(line: 205, column: 14, scope: !299)
!305 = !DILocation(line: 97, column: 17, scope: !6)
!306 = !DILocation(line: 206, column: 16, scope: !299)
!307 = !DILocation(line: 206, column: 11, scope: !299)
!308 = !DILocation(line: 206, column: 22, scope: !299)
!309 = !DILocation(line: 213, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 211, column: 2)
!311 = distinct !DILexicalBlock(scope: !239, file: !1, line: 210, column: 11)
!312 = !DILocation(line: 213, column: 11, scope: !310)
!313 = !DILocation(line: 213, column: 22, scope: !310)
!314 = !DILocation(line: 97, column: 23, scope: !6)
!315 = !DILocation(line: 214, column: 2, scope: !310)
!316 = !DILocation(line: 218, column: 11, scope: !239)
!317 = !DILocation(line: 219, column: 2, scope: !318)
!318 = distinct !DILexicalBlock(scope: !239, file: !1, line: 218, column: 11)
!319 = !DILocation(line: 221, column: 2, scope: !318)
!320 = !DILocation(line: 229, column: 3, scope: !6)
!321 = !DILocation(line: 230, column: 19, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 230, column: 3)
!323 = distinct !DILexicalBlock(scope: !6, file: !1, line: 230, column: 3)
!324 = !DILocation(line: 230, column: 17, scope: !322)
!325 = !DILocation(line: 230, column: 3, scope: !323)
!326 = !DILocation(line: 235, column: 18, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 231, column: 5)
!328 = !DILocation(line: 234, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 233, column: 7)
!330 = distinct !DILexicalBlock(scope: !327, file: !1, line: 233, column: 7)
!331 = !DILocation(line: 233, column: 29, scope: !329)
!332 = !DILocation(line: 233, column: 21, scope: !329)
!333 = !DILocation(line: 233, column: 7, scope: !330)
!334 = !DILocation(line: 238, column: 14, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 238, column: 3)
!336 = distinct !DILexicalBlock(scope: !6, file: !1, line: 238, column: 3)
!337 = !DILocation(line: 238, column: 12, scope: !335)
!338 = !DILocation(line: 238, column: 3, scope: !336)
!339 = !DILocation(line: 234, column: 8, scope: !329)
!340 = !{!166, !166, i64 0}
!341 = !DILocation(line: 234, column: 5, scope: !329)
!342 = !DILocation(line: 96, column: 9, scope: !6)
!343 = !{!161, !165, i64 56}
!344 = !DILocation(line: 235, column: 13, scope: !327)
!345 = !DILocation(line: 235, column: 10, scope: !327)
!346 = !DILocation(line: 236, column: 27, scope: !327)
!347 = !DILocation(line: 236, column: 7, scope: !327)
!348 = !DILocation(line: 239, column: 7, scope: !335)
!349 = !DILocation(line: 238, column: 31, scope: !335)
!350 = !DILocation(line: 240, column: 3, scope: !6)
!351 = !DILocation(line: 241, column: 3, scope: !6)
