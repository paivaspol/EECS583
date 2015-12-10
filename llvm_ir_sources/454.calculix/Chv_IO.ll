; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [88 x i8] c"\0A Chv object at address %p\0A id = %d, nD = %d, nL = %d, nU = %d, type = %d, symflag = %d\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"\0A chv is real and symmetric\00", align 1
@.str3 = private unnamed_addr constant [31 x i8] c"\0A chv is real and nonsymmetric\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A chv has unknown symmetry type %d\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"\0A chv is complex and symmetric\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"\0A chv is complex and hermitian\00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"\0A chv is complex and nonsymmetric\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"\0A chv has unknown type %d\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"\0A chv's row indices at %p\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"\0A chv's column indices at %p\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"\0A (1,1) block\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"\0A (1,2) block\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"\0A (2,1) block\00", align 1
@.str14 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Chv_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [101 x i8] c"\0A fatal error in Chv_writeForMatlab(%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %20.12e ;\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"\0A %s(%d,%d) = %20.12e + %20.12e*i;\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_writeForHumanEye(%struct._Chv* %chv, %struct.__sFILE* %fp) #0 {
  %mtx = alloca %struct._A2, align 8
  %ierr = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !100, metadata !149), !dbg !150
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !101, metadata !149), !dbg !151
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !152
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !154
  %or.cond = or i1 %1, %2, !dbg !155
  br i1 %or.cond, label %3, label %6, !dbg !155

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !156, !tbaa !158
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, %struct.__sFILE* %fp) #6, !dbg !162
  tail call void @exit(i32 -1) #7, !dbg !163
  unreachable, !dbg !163

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !116, metadata !149), !dbg !164
  tail call void @llvm.dbg.value(metadata i32* %nL, i64 0, metadata !117, metadata !149), !dbg !165
  tail call void @llvm.dbg.value(metadata i32* %nU, i64 0, metadata !119, metadata !149), !dbg !166
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !167
  %7 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !168
  %8 = load i32* %7, align 4, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !116, metadata !149), !dbg !164
  %9 = load i32* %nD, align 4, !dbg !173, !tbaa !174
  call void @llvm.dbg.value(metadata i32* %nL, i64 0, metadata !117, metadata !149), !dbg !165
  %10 = load i32* %nL, align 4, !dbg !175, !tbaa !174
  call void @llvm.dbg.value(metadata i32* %nU, i64 0, metadata !119, metadata !149), !dbg !166
  %11 = load i32* %nU, align 4, !dbg !176, !tbaa !174
  %12 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !177
  %13 = load i32* %12, align 4, !dbg !177, !tbaa !178
  %14 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !179
  %15 = load i32* %14, align 4, !dbg !179, !tbaa !180
  %16 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %8, i32 %9, i32 %10, i32 %11, i32 %13, i32 %15) #6, !dbg !181
  %17 = load i32* %12, align 4, !dbg !182, !tbaa !178
  switch i32 %17, label %36 [
    i32 1, label %18
    i32 2, label %26
  ], !dbg !184

; <label>:18                                      ; preds = %6
  %19 = load i32* %14, align 4, !dbg !185, !tbaa !180
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 2, label %22
  ], !dbg !188

; <label>:20                                      ; preds = %18
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %fp), !dbg !189
  br label %38, !dbg !191

; <label>:22                                      ; preds = %18
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str3, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %fp), !dbg !192
  br label %38, !dbg !195

; <label>:24                                      ; preds = %18
  %25 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %19) #6, !dbg !196
  br label %38

; <label>:26                                      ; preds = %6
  %27 = load i32* %14, align 4, !dbg !198, !tbaa !180
  switch i32 %27, label %34 [
    i32 0, label %28
    i32 1, label %30
    i32 2, label %32
  ], !dbg !202

; <label>:28                                      ; preds = %26
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %fp), !dbg !203
  br label %38, !dbg !205

; <label>:30                                      ; preds = %26
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %fp), !dbg !206
  br label %38, !dbg !209

; <label>:32                                      ; preds = %26
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str7, i64 0, i64 0), i64 33, i64 1, %struct.__sFILE* %fp), !dbg !210
  br label %38, !dbg !213

; <label>:34                                      ; preds = %26
  %35 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %27) #6, !dbg !214
  br label %38

; <label>:36                                      ; preds = %6
  %37 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i32 %17) #6, !dbg !216
  br label %38

; <label>:38                                      ; preds = %36, %30, %34, %32, %28, %20, %24, %22
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !118, metadata !149), !dbg !218
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !121, metadata !149), !dbg !219
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #6, !dbg !220
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !118, metadata !149), !dbg !218
  %39 = load i32* %nrow, align 4, !dbg !221, !tbaa !174
  %40 = icmp sgt i32 %39, 0, !dbg !223
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !121, metadata !149), !dbg !219
  %41 = load i32** %rowind, align 8
  %42 = icmp ne i32* %41, null, !dbg !224
  %or.cond3 = and i1 %40, %42, !dbg !225
  br i1 %or.cond3, label %43, label %48, !dbg !225

; <label>:43                                      ; preds = %38
  %44 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i32* %41) #6, !dbg !226
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !118, metadata !149), !dbg !218
  %45 = load i32* %nrow, align 4, !dbg !228, !tbaa !174
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !121, metadata !149), !dbg !219
  %46 = load i32** %rowind, align 8, !dbg !229, !tbaa !158
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !114, metadata !149), !dbg !230
  %47 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %45, i32* %46, i32 80, i32* %ierr) #6, !dbg !231
  br label %48, !dbg !232

; <label>:48                                      ; preds = %43, %38
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !115, metadata !149), !dbg !233
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !120, metadata !149), !dbg !234
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #6, !dbg !235
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !115, metadata !149), !dbg !233
  %49 = load i32* %ncol, align 4, !dbg !236, !tbaa !174
  %50 = icmp sgt i32 %49, 0, !dbg !238
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !120, metadata !149), !dbg !234
  %51 = load i32** %colind, align 8
  %52 = icmp ne i32* %51, null, !dbg !239
  %or.cond5 = and i1 %50, %52, !dbg !240
  br i1 %or.cond5, label %53, label %58, !dbg !240

; <label>:53                                      ; preds = %48
  %54 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0), i32* %51) #6, !dbg !241
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !115, metadata !149), !dbg !233
  %55 = load i32* %ncol, align 4, !dbg !243, !tbaa !174
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !120, metadata !149), !dbg !234
  %56 = load i32** %colind, align 8, !dbg !244, !tbaa !158
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !114, metadata !149), !dbg !230
  %57 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %55, i32* %56, i32 80, i32* %ierr) #6, !dbg !245
  br label %58, !dbg !246

; <label>:58                                      ; preds = %53, %48
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @A2_setDefaultFields(%struct._A2* %mtx) #6, !dbg !248
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @Chv_fill11block(%struct._Chv* %chv, %struct._A2* %mtx) #6, !dbg !249
  %59 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !250
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct.__sFILE* %fp) #6, !dbg !251
  call void @llvm.dbg.value(metadata i32* %nU, i64 0, metadata !119, metadata !149), !dbg !166
  %60 = load i32* %nU, align 4, !dbg !252, !tbaa !174
  %61 = icmp sgt i32 %60, 0, !dbg !254
  br i1 %61, label %62, label %64, !dbg !255

; <label>:62                                      ; preds = %58
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @Chv_fill12block(%struct._Chv* %chv, %struct._A2* %mtx) #6, !dbg !256
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !258
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct.__sFILE* %fp) #6, !dbg !259
  br label %64, !dbg !260

; <label>:64                                      ; preds = %62, %58
  call void @llvm.dbg.value(metadata i32* %nL, i64 0, metadata !117, metadata !149), !dbg !165
  %65 = load i32* %nL, align 4, !dbg !261, !tbaa !174
  %66 = icmp sgt i32 %65, 0, !dbg !263
  br i1 %66, label %67, label %72, !dbg !264

; <label>:67                                      ; preds = %64
  %68 = load i32* %14, align 4, !dbg !265, !tbaa !180
  %69 = icmp eq i32 %68, 2, !dbg !265
  br i1 %69, label %70, label %72, !dbg !266

; <label>:70                                      ; preds = %67
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @Chv_fill21block(%struct._Chv* %chv, %struct._A2* %mtx) #6, !dbg !267
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !269
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct.__sFILE* %fp) #6, !dbg !270
  br label %72, !dbg !271

; <label>:72                                      ; preds = %70, %67, %64
  call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !102, metadata !149), !dbg !247
  call void @A2_clearData(%struct._A2* %mtx) #6, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @Chv_fill11block(%struct._Chv*, %struct._A2*) #3

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct.__sFILE*) #3

; Function Attrs: optsize
declare void @Chv_fill12block(%struct._Chv*, %struct._A2*) #3

; Function Attrs: optsize
declare void @Chv_fill21block(%struct._Chv*, %struct._A2*) #3

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_writeForMatlab(%struct._Chv* %chv, i8* %chvname, %struct.__sFILE* %fp) #0 {
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !126, metadata !149), !dbg !274
  tail call void @llvm.dbg.value(metadata i8* %chvname, i64 0, metadata !127, metadata !149), !dbg !275
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !128, metadata !149), !dbg !276
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !277
  %2 = icmp eq i8* %chvname, null, !dbg !279
  %or.cond = or i1 %1, %2, !dbg !280
  %3 = icmp eq %struct.__sFILE* %fp, null, !dbg !281
  %or.cond3 = or i1 %or.cond, %3, !dbg !280
  br i1 %or.cond3, label %4, label %7, !dbg !280

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !282, !tbaa !158
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([58 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i8* %chvname, %struct.__sFILE* %fp) #6, !dbg !284
  tail call void @exit(i32 -1) #7, !dbg !285
  unreachable, !dbg !285

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !286
  %9 = load i32* %8, align 4, !dbg !286, !tbaa !178
  %.off = add i32 %9, -1, !dbg !288
  %switch = icmp ult i32 %.off, 2, !dbg !288
  br i1 %switch, label %13, label %10, !dbg !288

; <label>:10                                      ; preds = %7
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !289, !tbaa !158
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([101 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, i8* %chvname, %struct.__sFILE* %fp, i32 %9) #6, !dbg !291
  tail call void @exit(i32 -1) #7, !dbg !292
  unreachable, !dbg !292

; <label>:13                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  tail call void @llvm.dbg.value(metadata i32* %nL, i64 0, metadata !133, metadata !149), !dbg !294
  tail call void @llvm.dbg.value(metadata i32* %nU, i64 0, metadata !135, metadata !149), !dbg !295
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !296
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !134, metadata !149), !dbg !297
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #6, !dbg !299
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !131, metadata !149), !dbg !300
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #6, !dbg !302
  %14 = load i32* %8, align 4, !dbg !303, !tbaa !178
  switch i32 %14, label %.loopexit [
    i32 1, label %.preheader8
    i32 2, label %.preheader15
  ], !dbg !304

.preheader15:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %15 = load i32* %nD, align 4, !dbg !305, !tbaa !174
  %16 = icmp sgt i32 %15, 0, !dbg !308
  br i1 %16, label %.preheader14, label %.preheader10, !dbg !309

.preheader8:                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %17 = load i32* %nD, align 4, !dbg !310, !tbaa !174
  %18 = icmp sgt i32 %17, 0, !dbg !313
  br i1 %18, label %.preheader7, label %.preheader4, !dbg !314

.preheader7:                                      ; preds = %.preheader8, %._crit_edge25
  %19 = phi i32 [ %37, %._crit_edge25 ], [ %17, %.preheader8 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %._crit_edge25 ], [ 0, %.preheader8 ]
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %20 = icmp sgt i32 %19, 0, !dbg !315
  br i1 %20, label %.lr.ph24, label %._crit_edge25, !dbg !319

.preheader6:                                      ; preds = %._crit_edge25
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %21 = icmp sgt i32 %37, 0, !dbg !320
  br i1 %21, label %.preheader5.lr.ph, label %.preheader4, !dbg !323

.preheader5.lr.ph:                                ; preds = %.preheader6
  %.pre66 = load i32* %ncol, align 4, !dbg !324, !tbaa !174
  br label %.preheader5, !dbg !323

.lr.ph24:                                         ; preds = %.preheader7, %.lr.ph24
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph24 ], [ 0, %.preheader7 ]
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !138, metadata !149), !dbg !328
  %22 = trunc i64 %indvars.iv48 to i32, !dbg !329
  %23 = trunc i64 %indvars.iv50 to i32, !dbg !329
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %23, i32 %22, double* %value) #6, !dbg !329
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  %24 = load i32** %rowind, align 8, !dbg !331, !tbaa !158
  %25 = getelementptr inbounds i32* %24, i64 %indvars.iv50, !dbg !331
  %26 = load i32* %25, align 4, !dbg !331, !tbaa !174
  %27 = add nsw i32 %26, 1, !dbg !332
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  %28 = load i32** %colind, align 8, !dbg !333, !tbaa !158
  %29 = getelementptr inbounds i32* %28, i64 %indvars.iv48, !dbg !333
  %30 = load i32* %29, align 4, !dbg !333, !tbaa !174
  %31 = add nsw i32 %30, 1, !dbg !334
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !138, metadata !149), !dbg !328
  %32 = load double* %value, align 8, !dbg !335, !tbaa !336
  %33 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %chvname, i32 %27, i32 %31, double %32) #6, !dbg !338
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !319
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %34 = load i32* %nD, align 4, !dbg !339, !tbaa !174
  %35 = sext i32 %34 to i64, !dbg !315
  %36 = icmp slt i64 %indvars.iv.next49, %35, !dbg !315
  br i1 %36, label %.lr.ph24, label %._crit_edge25, !dbg !319

._crit_edge25:                                    ; preds = %.lr.ph24, %.preheader7
  %37 = phi i32 [ %19, %.preheader7 ], [ %34, %.lr.ph24 ], !dbg !314
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !314
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %38 = sext i32 %37 to i64, !dbg !313
  %39 = icmp slt i64 %indvars.iv.next51, %38, !dbg !313
  br i1 %39, label %.preheader7, label %.preheader6, !dbg !314

.preheader5:                                      ; preds = %.preheader5.lr.ph, %63
  %40 = phi i32 [ %.pre66, %.preheader5.lr.ph ], [ %65, %63 ], !dbg !300
  %indvars.iv46 = phi i64 [ 0, %.preheader5.lr.ph ], [ %indvars.iv.next47, %63 ]
  %41 = phi i32 [ %37, %.preheader5.lr.ph ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !131, metadata !149), !dbg !300
  %42 = icmp slt i32 %41, %40, !dbg !340
  br i1 %42, label %.lr.ph20, label %63, !dbg !341

.lr.ph20:                                         ; preds = %.preheader5
  %43 = sext i32 %41 to i64
  br label %47, !dbg !341

.preheader4:                                      ; preds = %63, %.preheader8, %.preheader6
  %.lcssa = phi i32 [ %37, %.preheader6 ], [ %17, %.preheader8 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !134, metadata !149), !dbg !297
  %44 = load i32* %nrow, align 4, !dbg !342, !tbaa !174
  %45 = icmp slt i32 %.lcssa, %44, !dbg !345
  br i1 %45, label %.preheader.lr.ph, label %.loopexit, !dbg !346

.preheader.lr.ph:                                 ; preds = %.preheader4
  %46 = sext i32 %.lcssa to i64
  br label %.preheader, !dbg !346

; <label>:47                                      ; preds = %.lr.ph20, %47
  %indvars.iv44 = phi i64 [ %43, %.lr.ph20 ], [ %indvars.iv.next45, %47 ]
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !138, metadata !149), !dbg !328
  %48 = trunc i64 %indvars.iv44 to i32, !dbg !347
  %49 = trunc i64 %indvars.iv46 to i32, !dbg !347
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %49, i32 %48, double* %value) #6, !dbg !347
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  %50 = load i32** %rowind, align 8, !dbg !349, !tbaa !158
  %51 = getelementptr inbounds i32* %50, i64 %indvars.iv46, !dbg !349
  %52 = load i32* %51, align 4, !dbg !349, !tbaa !174
  %53 = add nsw i32 %52, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  %54 = load i32** %colind, align 8, !dbg !351, !tbaa !158
  %55 = getelementptr inbounds i32* %54, i64 %indvars.iv44, !dbg !351
  %56 = load i32* %55, align 4, !dbg !351, !tbaa !174
  %57 = add nsw i32 %56, 1, !dbg !352
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !138, metadata !149), !dbg !328
  %58 = load double* %value, align 8, !dbg !353, !tbaa !336
  %59 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %chvname, i32 %53, i32 %57, double %58) #6, !dbg !354
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1, !dbg !341
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !131, metadata !149), !dbg !300
  %60 = load i32* %ncol, align 4, !dbg !324, !tbaa !174
  %61 = sext i32 %60 to i64, !dbg !340
  %62 = icmp slt i64 %indvars.iv.next45, %61, !dbg !340
  br i1 %62, label %47, label %._crit_edge21, !dbg !341

._crit_edge21:                                    ; preds = %47
  %.pre67 = load i32* %nD, align 4, !dbg !355, !tbaa !174
  br label %63, !dbg !341

; <label>:63                                      ; preds = %._crit_edge21, %.preheader5
  %64 = phi i32 [ %.pre67, %._crit_edge21 ], [ %41, %.preheader5 ], !dbg !323
  %65 = phi i32 [ %60, %._crit_edge21 ], [ %40, %.preheader5 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !323
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %66 = sext i32 %64 to i64, !dbg !320
  %67 = icmp slt i64 %indvars.iv.next47, %66, !dbg !320
  br i1 %67, label %.preheader5, label %.preheader4, !dbg !323

.preheader:                                       ; preds = %.preheader.lr.ph, %86
  %68 = phi i32 [ %44, %.preheader.lr.ph ], [ %87, %86 ]
  %69 = phi i32 [ %.lcssa, %.preheader.lr.ph ], [ %88, %86 ], !dbg !293
  %indvars.iv42 = phi i64 [ %46, %.preheader.lr.ph ], [ %indvars.iv.next43, %86 ]
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %70 = icmp sgt i32 %69, 0, !dbg !356
  br i1 %70, label %.lr.ph, label %86, !dbg !360

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !138, metadata !149), !dbg !328
  %71 = trunc i64 %indvars.iv to i32, !dbg !361
  %72 = trunc i64 %indvars.iv42 to i32, !dbg !361
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %72, i32 %71, double* %value) #6, !dbg !361
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  %73 = load i32** %rowind, align 8, !dbg !363, !tbaa !158
  %74 = getelementptr inbounds i32* %73, i64 %indvars.iv42, !dbg !363
  %75 = load i32* %74, align 4, !dbg !363, !tbaa !174
  %76 = add nsw i32 %75, 1, !dbg !364
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  %77 = load i32** %colind, align 8, !dbg !365, !tbaa !158
  %78 = getelementptr inbounds i32* %77, i64 %indvars.iv, !dbg !365
  %79 = load i32* %78, align 4, !dbg !365, !tbaa !174
  %80 = add nsw i32 %79, 1, !dbg !366
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !138, metadata !149), !dbg !328
  %81 = load double* %value, align 8, !dbg !367, !tbaa !336
  %82 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %chvname, i32 %76, i32 %80, double %81) #6, !dbg !368
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !360
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %83 = load i32* %nD, align 4, !dbg !369, !tbaa !174
  %84 = sext i32 %83 to i64, !dbg !356
  %85 = icmp slt i64 %indvars.iv.next, %84, !dbg !356
  br i1 %85, label %.lr.ph, label %._crit_edge, !dbg !360

._crit_edge:                                      ; preds = %.lr.ph
  %.pre68 = load i32* %nrow, align 4, !dbg !342, !tbaa !174
  br label %86, !dbg !360

; <label>:86                                      ; preds = %._crit_edge, %.preheader
  %87 = phi i32 [ %.pre68, %._crit_edge ], [ %68, %.preheader ], !dbg !346
  %88 = phi i32 [ %83, %._crit_edge ], [ %69, %.preheader ]
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !134, metadata !149), !dbg !297
  %89 = sext i32 %87 to i64, !dbg !345
  %90 = icmp slt i64 %indvars.iv.next43, %89, !dbg !345
  br i1 %90, label %.preheader, label %.loopexit, !dbg !346

.preheader14:                                     ; preds = %.preheader15, %._crit_edge38
  %91 = phi i32 [ %110, %._crit_edge38 ], [ %15, %.preheader15 ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge38 ], [ 0, %.preheader15 ]
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %92 = icmp sgt i32 %91, 0, !dbg !370
  br i1 %92, label %.lr.ph37, label %._crit_edge38, !dbg !374

.preheader13:                                     ; preds = %._crit_edge38
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %93 = icmp sgt i32 %110, 0, !dbg !375
  br i1 %93, label %.preheader12.lr.ph, label %.preheader10, !dbg !378

.preheader12.lr.ph:                               ; preds = %.preheader13
  %.pre = load i32* %ncol, align 4, !dbg !379, !tbaa !174
  br label %.preheader12, !dbg !378

.lr.ph37:                                         ; preds = %.preheader14, %.lr.ph37
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.lr.ph37 ], [ 0, %.preheader14 ]
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !141, metadata !149), !dbg !383
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !144, metadata !149), !dbg !384
  %94 = trunc i64 %indvars.iv60 to i32, !dbg !385
  %95 = trunc i64 %indvars.iv62 to i32, !dbg !385
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %95, i32 %94, double* %real, double* %imag) #6, !dbg !385
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  %96 = load i32** %rowind, align 8, !dbg !387, !tbaa !158
  %97 = getelementptr inbounds i32* %96, i64 %indvars.iv62, !dbg !387
  %98 = load i32* %97, align 4, !dbg !387, !tbaa !174
  %99 = add nsw i32 %98, 1, !dbg !388
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  %100 = load i32** %colind, align 8, !dbg !389, !tbaa !158
  %101 = getelementptr inbounds i32* %100, i64 %indvars.iv60, !dbg !389
  %102 = load i32* %101, align 4, !dbg !389, !tbaa !174
  %103 = add nsw i32 %102, 1, !dbg !390
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !144, metadata !149), !dbg !384
  %104 = load double* %real, align 8, !dbg !391, !tbaa !336
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !141, metadata !149), !dbg !383
  %105 = load double* %imag, align 8, !dbg !392, !tbaa !336
  %106 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %chvname, i32 %99, i32 %103, double %104, double %105) #6, !dbg !393
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1, !dbg !374
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %107 = load i32* %nD, align 4, !dbg !394, !tbaa !174
  %108 = sext i32 %107 to i64, !dbg !370
  %109 = icmp slt i64 %indvars.iv.next61, %108, !dbg !370
  br i1 %109, label %.lr.ph37, label %._crit_edge38, !dbg !374

._crit_edge38:                                    ; preds = %.lr.ph37, %.preheader14
  %110 = phi i32 [ %91, %.preheader14 ], [ %107, %.lr.ph37 ], !dbg !309
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1, !dbg !309
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %111 = sext i32 %110 to i64, !dbg !308
  %112 = icmp slt i64 %indvars.iv.next63, %111, !dbg !308
  br i1 %112, label %.preheader14, label %.preheader13, !dbg !309

.preheader12:                                     ; preds = %.preheader12.lr.ph, %137
  %113 = phi i32 [ %.pre, %.preheader12.lr.ph ], [ %139, %137 ], !dbg !300
  %indvars.iv58 = phi i64 [ 0, %.preheader12.lr.ph ], [ %indvars.iv.next59, %137 ]
  %114 = phi i32 [ %110, %.preheader12.lr.ph ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !131, metadata !149), !dbg !300
  %115 = icmp slt i32 %114, %113, !dbg !395
  br i1 %115, label %.lr.ph32, label %137, !dbg !396

.lr.ph32:                                         ; preds = %.preheader12
  %116 = sext i32 %114 to i64
  br label %120, !dbg !396

.preheader10:                                     ; preds = %137, %.preheader15, %.preheader13
  %.lcssa16 = phi i32 [ %110, %.preheader13 ], [ %15, %.preheader15 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !134, metadata !149), !dbg !297
  %117 = load i32* %nrow, align 4, !dbg !397, !tbaa !174
  %118 = icmp slt i32 %.lcssa16, %117, !dbg !400
  br i1 %118, label %.preheader9.lr.ph, label %.loopexit, !dbg !401

.preheader9.lr.ph:                                ; preds = %.preheader10
  %119 = sext i32 %.lcssa16 to i64
  br label %.preheader9, !dbg !401

; <label>:120                                     ; preds = %.lr.ph32, %120
  %indvars.iv56 = phi i64 [ %116, %.lr.ph32 ], [ %indvars.iv.next57, %120 ]
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !141, metadata !149), !dbg !383
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !144, metadata !149), !dbg !384
  %121 = trunc i64 %indvars.iv56 to i32, !dbg !402
  %122 = trunc i64 %indvars.iv58 to i32, !dbg !402
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %122, i32 %121, double* %real, double* %imag) #6, !dbg !402
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  %123 = load i32** %rowind, align 8, !dbg !404, !tbaa !158
  %124 = getelementptr inbounds i32* %123, i64 %indvars.iv58, !dbg !404
  %125 = load i32* %124, align 4, !dbg !404, !tbaa !174
  %126 = add nsw i32 %125, 1, !dbg !405
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  %127 = load i32** %colind, align 8, !dbg !406, !tbaa !158
  %128 = getelementptr inbounds i32* %127, i64 %indvars.iv56, !dbg !406
  %129 = load i32* %128, align 4, !dbg !406, !tbaa !174
  %130 = add nsw i32 %129, 1, !dbg !407
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !144, metadata !149), !dbg !384
  %131 = load double* %real, align 8, !dbg !408, !tbaa !336
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !141, metadata !149), !dbg !383
  %132 = load double* %imag, align 8, !dbg !409, !tbaa !336
  %133 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %chvname, i32 %126, i32 %130, double %131, double %132) #6, !dbg !410
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1, !dbg !396
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !131, metadata !149), !dbg !300
  %134 = load i32* %ncol, align 4, !dbg !379, !tbaa !174
  %135 = sext i32 %134 to i64, !dbg !395
  %136 = icmp slt i64 %indvars.iv.next57, %135, !dbg !395
  br i1 %136, label %120, label %._crit_edge33, !dbg !396

._crit_edge33:                                    ; preds = %120
  %.pre64 = load i32* %nD, align 4, !dbg !411, !tbaa !174
  br label %137, !dbg !396

; <label>:137                                     ; preds = %._crit_edge33, %.preheader12
  %138 = phi i32 [ %.pre64, %._crit_edge33 ], [ %114, %.preheader12 ], !dbg !378
  %139 = phi i32 [ %134, %._crit_edge33 ], [ %113, %.preheader12 ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !378
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %140 = sext i32 %138 to i64, !dbg !375
  %141 = icmp slt i64 %indvars.iv.next59, %140, !dbg !375
  br i1 %141, label %.preheader12, label %.preheader10, !dbg !378

.preheader9:                                      ; preds = %.preheader9.lr.ph, %161
  %142 = phi i32 [ %117, %.preheader9.lr.ph ], [ %162, %161 ]
  %143 = phi i32 [ %.lcssa16, %.preheader9.lr.ph ], [ %163, %161 ], !dbg !293
  %indvars.iv54 = phi i64 [ %119, %.preheader9.lr.ph ], [ %indvars.iv.next55, %161 ]
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %144 = icmp sgt i32 %143, 0, !dbg !412
  br i1 %144, label %.lr.ph28, label %161, !dbg !416

.lr.ph28:                                         ; preds = %.preheader9, %.lr.ph28
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.lr.ph28 ], [ 0, %.preheader9 ]
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !141, metadata !149), !dbg !383
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !144, metadata !149), !dbg !384
  %145 = trunc i64 %indvars.iv52 to i32, !dbg !417
  %146 = trunc i64 %indvars.iv54 to i32, !dbg !417
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %146, i32 %145, double* %real, double* %imag) #6, !dbg !417
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !137, metadata !149), !dbg !298
  %147 = load i32** %rowind, align 8, !dbg !419, !tbaa !158
  %148 = getelementptr inbounds i32* %147, i64 %indvars.iv54, !dbg !419
  %149 = load i32* %148, align 4, !dbg !419, !tbaa !174
  %150 = add nsw i32 %149, 1, !dbg !420
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !136, metadata !149), !dbg !301
  %151 = load i32** %colind, align 8, !dbg !421, !tbaa !158
  %152 = getelementptr inbounds i32* %151, i64 %indvars.iv52, !dbg !421
  %153 = load i32* %152, align 4, !dbg !421, !tbaa !174
  %154 = add nsw i32 %153, 1, !dbg !422
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !144, metadata !149), !dbg !384
  %155 = load double* %real, align 8, !dbg !423, !tbaa !336
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !141, metadata !149), !dbg !383
  %156 = load double* %imag, align 8, !dbg !424, !tbaa !336
  %157 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %chvname, i32 %150, i32 %154, double %155, double %156) #6, !dbg !425
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !dbg !416
  call void @llvm.dbg.value(metadata i32* %nD, i64 0, metadata !132, metadata !149), !dbg !293
  %158 = load i32* %nD, align 4, !dbg !426, !tbaa !174
  %159 = sext i32 %158 to i64, !dbg !412
  %160 = icmp slt i64 %indvars.iv.next53, %159, !dbg !412
  br i1 %160, label %.lr.ph28, label %._crit_edge29, !dbg !416

._crit_edge29:                                    ; preds = %.lr.ph28
  %.pre65 = load i32* %nrow, align 4, !dbg !397, !tbaa !174
  br label %161, !dbg !416

; <label>:161                                     ; preds = %._crit_edge29, %.preheader9
  %162 = phi i32 [ %.pre65, %._crit_edge29 ], [ %142, %.preheader9 ], !dbg !401
  %163 = phi i32 [ %158, %._crit_edge29 ], [ %143, %.preheader9 ]
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1, !dbg !401
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !134, metadata !149), !dbg !297
  %164 = sext i32 %162 to i64, !dbg !400
  %165 = icmp slt i64 %indvars.iv.next55, %164, !dbg !400
  br i1 %165, label %.preheader9, label %.loopexit, !dbg !401

.loopexit:                                        ; preds = %161, %86, %.preheader10, %.preheader4, %13
  ret void, !dbg !427
}

; Function Attrs: optsize
declare void @Chv_realEntry(%struct._Chv*, i32, i32, double*) #3

; Function Attrs: optsize
declare void @Chv_complexEntry(%struct._Chv*, i32, i32, double*, double*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !122}
!6 = !DISubprogram(name: "Chv_writeForHumanEye", scope: !1, file: !1, line: 15, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*, %struct.__sFILE*)* @Chv_writeForHumanEye, variables: !99)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !37}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !11, line: 30, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !11, line: 31, size: 640, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !23, !24, !27, !36}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 32, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !12, file: !11, line: 33, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !12, file: !11, line: 34, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !12, file: !11, line: 37, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !12, file: !11, line: 38, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !12, file: !11, line: 39, baseType: !22, size: 64, align: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 40, baseType: !25, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 41, baseType: !28, size: 192, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !29, line: 20, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !29, line: 21, size: 192, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 22, baseType: !15, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !30, file: !29, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !30, file: !29, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !30, file: !29, line: 25, baseType: !25, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 42, baseType: !9, size: 64, align: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 153, baseType: !40)
!39 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 122, size: 1216, align: 64, elements: !41)
!41 = !{!42, !45, !46, !47, !49, !50, !55, !56, !57, !61, !67, !77, !83, !84, !87, !88, !92, !96, !97, !98}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !40, file: !39, line: 123, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !40, file: !39, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !40, file: !39, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !39, line: 126, baseType: !48, size: 16, align: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !40, file: !39, line: 127, baseType: !48, size: 16, align: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !40, file: !39, line: 128, baseType: !51, size: 128, align: 64, offset: 192)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 88, size: 128, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !39, line: 89, baseType: !43, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !39, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !40, file: !39, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !40, file: !39, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !40, file: !39, line: 133, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!15, !4}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !40, file: !39, line: 134, baseType: !62, size: 64, align: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!15, !4, !65, !15}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !40, file: !39, line: 135, baseType: !68, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !4, !71, !15}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !39, line: 77, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !73, line: 71, baseType: !74)
!73 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !40, file: !39, line: 136, baseType: !78, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!15, !4, !81, !15}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !40, file: !39, line: 139, baseType: !51, size: 128, align: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !40, file: !39, line: 140, baseType: !85, size: 64, align: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !39, line: 94, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !40, file: !39, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !40, file: !39, line: 144, baseType: !89, size: 24, align: 8, offset: 928)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, align: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !40, file: !39, line: 145, baseType: !93, size: 8, align: 8, offset: 952)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !40, file: !39, line: 148, baseType: !51, size: 128, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !40, file: !39, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !39, line: 152, baseType: !71, size: 64, align: 64, offset: 1152)
!99 = !{!100, !101, !102, !114, !115, !116, !117, !118, !119, !120, !121}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !6, file: !1, line: 16, type: !9)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !6, file: !1, line: 17, type: !37)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !6, file: !1, line: 19, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !104, line: 49, baseType: !105)
!104 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../A2/A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !104, line: 41, size: 256, align: 64, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !104, line: 42, baseType: !15, size: 32, align: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !105, file: !104, line: 43, baseType: !15, size: 32, align: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !105, file: !104, line: 44, baseType: !15, size: 32, align: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !105, file: !104, line: 45, baseType: !15, size: 32, align: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !105, file: !104, line: 46, baseType: !15, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !105, file: !104, line: 47, baseType: !15, size: 32, align: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !105, file: !104, line: 48, baseType: !25, size: 64, align: 64, offset: 192)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 20, type: !15)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !6, file: !1, line: 20, type: !15)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nD", scope: !6, file: !1, line: 20, type: !15)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nL", scope: !6, file: !1, line: 20, type: !15)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !6, file: !1, line: 20, type: !15)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nU", scope: !6, file: !1, line: 20, type: !15)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !6, file: !1, line: 21, type: !22)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !6, file: !1, line: 21, type: !22)
!122 = !DISubprogram(name: "Chv_writeForMatlab", scope: !1, file: !1, line: 110, type: !123, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*, i8*, %struct.__sFILE*)* @Chv_writeForMatlab, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !9, !65, !37}
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !141, !144}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !122, file: !1, line: 111, type: !9)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chvname", arg: 2, scope: !122, file: !1, line: 112, type: !65)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !122, file: !1, line: 113, type: !37)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !122, file: !1, line: 115, type: !15)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !122, file: !1, line: 115, type: !15)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !122, file: !1, line: 115, type: !15)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nD", scope: !122, file: !1, line: 115, type: !15)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nL", scope: !122, file: !1, line: 115, type: !15)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !122, file: !1, line: 115, type: !15)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nU", scope: !122, file: !1, line: 115, type: !15)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !122, file: !1, line: 116, type: !22)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !122, file: !1, line: 116, type: !22)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !139, file: !1, line: 137, type: !26)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 136, column: 25)
!140 = distinct !DILexicalBlock(scope: !122, file: !1, line: 136, column: 6)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imag", scope: !142, file: !1, line: 175, type: !26)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 174, column: 35)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 174, column: 13)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "real", scope: !142, file: !1, line: 175, type: !26)
!145 = !{i32 2, !"Dwarf Version", i32 2}
!146 = !{i32 2, !"Debug Info Version", i32 700000003}
!147 = !{i32 1, !"PIC Level", i32 2}
!148 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!149 = !DIExpression()
!150 = !DILocation(line: 16, column: 12, scope: !6)
!151 = !DILocation(line: 17, column: 12, scope: !6)
!152 = !DILocation(line: 27, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !6, file: !1, line: 27, column: 6)
!154 = !DILocation(line: 27, column: 24, scope: !153)
!155 = !DILocation(line: 27, column: 18, scope: !153)
!156 = !DILocation(line: 28, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 27, column: 34)
!158 = !{!159, !159, i64 0}
!159 = !{!"any pointer", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !DILocation(line: 28, column: 4, scope: !157)
!163 = !DILocation(line: 30, column: 4, scope: !157)
!164 = !DILocation(line: 20, column: 19, scope: !6)
!165 = !DILocation(line: 20, column: 23, scope: !6)
!166 = !DILocation(line: 20, column: 33, scope: !6)
!167 = !DILocation(line: 32, column: 1, scope: !6)
!168 = !DILocation(line: 36, column: 18, scope: !6)
!169 = !{!170, !171, i64 0}
!170 = !{!"_Chv", !171, i64 0, !171, i64 4, !171, i64 8, !171, i64 12, !171, i64 16, !171, i64 20, !159, i64 24, !159, i64 32, !159, i64 40, !172, i64 48, !159, i64 72}
!171 = !{!"int", !160, i64 0}
!172 = !{!"_DV", !171, i64 0, !171, i64 4, !171, i64 8, !159, i64 16}
!173 = !DILocation(line: 36, column: 22, scope: !6)
!174 = !{!171, !171, i64 0}
!175 = !DILocation(line: 36, column: 26, scope: !6)
!176 = !DILocation(line: 36, column: 30, scope: !6)
!177 = !DILocation(line: 36, column: 39, scope: !6)
!178 = !{!170, !171, i64 16}
!179 = !DILocation(line: 36, column: 50, scope: !6)
!180 = !{!170, !171, i64 20}
!181 = !DILocation(line: 33, column: 1, scope: !6)
!182 = !DILocation(line: 37, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !6, file: !1, line: 37, column: 6)
!184 = !DILocation(line: 37, column: 6, scope: !6)
!185 = !DILocation(line: 38, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 38, column: 9)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 37, column: 25)
!188 = !DILocation(line: 38, column: 9, scope: !187)
!189 = !DILocation(line: 39, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 38, column: 33)
!191 = !DILocation(line: 40, column: 4, scope: !190)
!192 = !DILocation(line: 41, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 40, column: 43)
!194 = distinct !DILexicalBlock(scope: !186, file: !1, line: 40, column: 16)
!195 = !DILocation(line: 42, column: 4, scope: !193)
!196 = !DILocation(line: 43, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 42, column: 11)
!198 = !DILocation(line: 46, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 46, column: 9)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 45, column: 35)
!201 = distinct !DILexicalBlock(scope: !183, file: !1, line: 45, column: 13)
!202 = !DILocation(line: 46, column: 9, scope: !200)
!203 = !DILocation(line: 47, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 46, column: 33)
!205 = !DILocation(line: 48, column: 4, scope: !204)
!206 = !DILocation(line: 49, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 48, column: 40)
!208 = distinct !DILexicalBlock(scope: !199, file: !1, line: 48, column: 16)
!209 = !DILocation(line: 50, column: 4, scope: !207)
!210 = !DILocation(line: 51, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 50, column: 43)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 50, column: 16)
!213 = !DILocation(line: 52, column: 4, scope: !211)
!214 = !DILocation(line: 53, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 52, column: 11)
!216 = !DILocation(line: 56, column: 4, scope: !217)
!217 = distinct !DILexicalBlock(scope: !201, file: !1, line: 55, column: 8)
!218 = !DILocation(line: 20, column: 27, scope: !6)
!219 = !DILocation(line: 21, column: 17, scope: !6)
!220 = !DILocation(line: 58, column: 1, scope: !6)
!221 = !DILocation(line: 59, column: 6, scope: !222)
!222 = distinct !DILexicalBlock(scope: !6, file: !1, line: 59, column: 6)
!223 = !DILocation(line: 59, column: 11, scope: !222)
!224 = !DILocation(line: 59, column: 25, scope: !222)
!225 = !DILocation(line: 59, column: 15, scope: !222)
!226 = !DILocation(line: 60, column: 4, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !1, line: 59, column: 35)
!228 = !DILocation(line: 61, column: 15, scope: !227)
!229 = !DILocation(line: 61, column: 21, scope: !227)
!230 = !DILocation(line: 20, column: 7, scope: !6)
!231 = !DILocation(line: 61, column: 4, scope: !227)
!232 = !DILocation(line: 62, column: 1, scope: !227)
!233 = !DILocation(line: 20, column: 13, scope: !6)
!234 = !DILocation(line: 21, column: 8, scope: !6)
!235 = !DILocation(line: 63, column: 1, scope: !6)
!236 = !DILocation(line: 64, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !6, file: !1, line: 64, column: 6)
!238 = !DILocation(line: 64, column: 11, scope: !237)
!239 = !DILocation(line: 64, column: 25, scope: !237)
!240 = !DILocation(line: 64, column: 15, scope: !237)
!241 = !DILocation(line: 65, column: 4, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 64, column: 35)
!243 = !DILocation(line: 66, column: 15, scope: !242)
!244 = !DILocation(line: 66, column: 21, scope: !242)
!245 = !DILocation(line: 66, column: 4, scope: !242)
!246 = !DILocation(line: 67, column: 1, scope: !242)
!247 = !DILocation(line: 19, column: 7, scope: !6)
!248 = !DILocation(line: 73, column: 1, scope: !6)
!249 = !DILocation(line: 74, column: 1, scope: !6)
!250 = !DILocation(line: 75, column: 1, scope: !6)
!251 = !DILocation(line: 76, column: 1, scope: !6)
!252 = !DILocation(line: 77, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !6, file: !1, line: 77, column: 6)
!254 = !DILocation(line: 77, column: 9, scope: !253)
!255 = !DILocation(line: 77, column: 6, scope: !6)
!256 = !DILocation(line: 83, column: 4, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 77, column: 15)
!258 = !DILocation(line: 84, column: 4, scope: !257)
!259 = !DILocation(line: 85, column: 4, scope: !257)
!260 = !DILocation(line: 86, column: 1, scope: !257)
!261 = !DILocation(line: 87, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !6, file: !1, line: 87, column: 6)
!263 = !DILocation(line: 87, column: 9, scope: !262)
!264 = !DILocation(line: 87, column: 13, scope: !262)
!265 = !DILocation(line: 87, column: 16, scope: !262)
!266 = !DILocation(line: 87, column: 6, scope: !6)
!267 = !DILocation(line: 93, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !1, line: 87, column: 48)
!269 = !DILocation(line: 94, column: 4, scope: !268)
!270 = !DILocation(line: 95, column: 4, scope: !268)
!271 = !DILocation(line: 96, column: 1, scope: !268)
!272 = !DILocation(line: 97, column: 1, scope: !6)
!273 = !DILocation(line: 99, column: 1, scope: !6)
!274 = !DILocation(line: 111, column: 12, scope: !122)
!275 = !DILocation(line: 112, column: 12, scope: !122)
!276 = !DILocation(line: 113, column: 12, scope: !122)
!277 = !DILocation(line: 122, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !122, file: !1, line: 122, column: 6)
!279 = !DILocation(line: 122, column: 29, scope: !278)
!280 = !DILocation(line: 122, column: 18, scope: !278)
!281 = !DILocation(line: 122, column: 43, scope: !278)
!282 = !DILocation(line: 123, column: 12, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !1, line: 122, column: 53)
!284 = !DILocation(line: 123, column: 4, scope: !283)
!285 = !DILocation(line: 125, column: 4, scope: !283)
!286 = !DILocation(line: 127, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !122, file: !1, line: 127, column: 6)
!288 = !DILocation(line: 127, column: 26, scope: !287)
!289 = !DILocation(line: 128, column: 12, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !1, line: 127, column: 52)
!291 = !DILocation(line: 128, column: 4, scope: !290)
!292 = !DILocation(line: 131, column: 4, scope: !290)
!293 = !DILocation(line: 115, column: 28, scope: !122)
!294 = !DILocation(line: 115, column: 32, scope: !122)
!295 = !DILocation(line: 115, column: 42, scope: !122)
!296 = !DILocation(line: 133, column: 1, scope: !122)
!297 = !DILocation(line: 115, column: 36, scope: !122)
!298 = !DILocation(line: 116, column: 20, scope: !122)
!299 = !DILocation(line: 134, column: 1, scope: !122)
!300 = !DILocation(line: 115, column: 22, scope: !122)
!301 = !DILocation(line: 116, column: 11, scope: !122)
!302 = !DILocation(line: 135, column: 1, scope: !122)
!303 = !DILocation(line: 136, column: 6, scope: !140)
!304 = !DILocation(line: 136, column: 6, scope: !122)
!305 = !DILocation(line: 181, column: 28, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 181, column: 4)
!307 = distinct !DILexicalBlock(scope: !142, file: !1, line: 181, column: 4)
!308 = !DILocation(line: 181, column: 26, scope: !306)
!309 = !DILocation(line: 181, column: 4, scope: !307)
!310 = !DILocation(line: 143, column: 28, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 143, column: 4)
!312 = distinct !DILexicalBlock(scope: !139, file: !1, line: 143, column: 4)
!313 = !DILocation(line: 143, column: 26, scope: !311)
!314 = !DILocation(line: 143, column: 4, scope: !312)
!315 = !DILocation(line: 144, column: 29, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 144, column: 7)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 144, column: 7)
!318 = distinct !DILexicalBlock(scope: !311, file: !1, line: 143, column: 42)
!319 = !DILocation(line: 144, column: 7, scope: !317)
!320 = !DILocation(line: 155, column: 26, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 155, column: 4)
!322 = distinct !DILexicalBlock(scope: !139, file: !1, line: 155, column: 4)
!323 = !DILocation(line: 155, column: 4, scope: !322)
!324 = !DILocation(line: 156, column: 32, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 156, column: 7)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 156, column: 7)
!327 = distinct !DILexicalBlock(scope: !321, file: !1, line: 155, column: 42)
!328 = !DILocation(line: 137, column: 13, scope: !139)
!329 = !DILocation(line: 145, column: 10, scope: !330)
!330 = distinct !DILexicalBlock(scope: !316, file: !1, line: 144, column: 45)
!331 = !DILocation(line: 147, column: 29, scope: !330)
!332 = !DILocation(line: 147, column: 28, scope: !330)
!333 = !DILocation(line: 147, column: 45, scope: !330)
!334 = !DILocation(line: 147, column: 44, scope: !330)
!335 = !DILocation(line: 147, column: 59, scope: !330)
!336 = !{!337, !337, i64 0}
!337 = !{!"double", !160, i64 0}
!338 = !DILocation(line: 146, column: 10, scope: !330)
!339 = !DILocation(line: 144, column: 31, scope: !316)
!340 = !DILocation(line: 156, column: 30, scope: !325)
!341 = !DILocation(line: 156, column: 7, scope: !326)
!342 = !DILocation(line: 167, column: 29, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 167, column: 4)
!344 = distinct !DILexicalBlock(scope: !139, file: !1, line: 167, column: 4)
!345 = !DILocation(line: 167, column: 27, scope: !343)
!346 = !DILocation(line: 167, column: 4, scope: !344)
!347 = !DILocation(line: 157, column: 10, scope: !348)
!348 = distinct !DILexicalBlock(scope: !325, file: !1, line: 156, column: 48)
!349 = !DILocation(line: 159, column: 29, scope: !348)
!350 = !DILocation(line: 159, column: 28, scope: !348)
!351 = !DILocation(line: 159, column: 45, scope: !348)
!352 = !DILocation(line: 159, column: 44, scope: !348)
!353 = !DILocation(line: 159, column: 59, scope: !348)
!354 = !DILocation(line: 158, column: 10, scope: !348)
!355 = !DILocation(line: 155, column: 28, scope: !321)
!356 = !DILocation(line: 168, column: 29, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 168, column: 7)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 168, column: 7)
!359 = distinct !DILexicalBlock(scope: !343, file: !1, line: 167, column: 45)
!360 = !DILocation(line: 168, column: 7, scope: !358)
!361 = !DILocation(line: 169, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !1, line: 168, column: 45)
!363 = !DILocation(line: 171, column: 29, scope: !362)
!364 = !DILocation(line: 171, column: 28, scope: !362)
!365 = !DILocation(line: 171, column: 45, scope: !362)
!366 = !DILocation(line: 171, column: 44, scope: !362)
!367 = !DILocation(line: 171, column: 59, scope: !362)
!368 = !DILocation(line: 170, column: 10, scope: !362)
!369 = !DILocation(line: 168, column: 31, scope: !357)
!370 = !DILocation(line: 182, column: 29, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 182, column: 7)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 182, column: 7)
!373 = distinct !DILexicalBlock(scope: !306, file: !1, line: 181, column: 42)
!374 = !DILocation(line: 182, column: 7, scope: !372)
!375 = !DILocation(line: 194, column: 26, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 194, column: 4)
!377 = distinct !DILexicalBlock(scope: !142, file: !1, line: 194, column: 4)
!378 = !DILocation(line: 194, column: 4, scope: !377)
!379 = !DILocation(line: 195, column: 32, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 195, column: 7)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 195, column: 7)
!382 = distinct !DILexicalBlock(scope: !376, file: !1, line: 194, column: 42)
!383 = !DILocation(line: 175, column: 13, scope: !142)
!384 = !DILocation(line: 175, column: 19, scope: !142)
!385 = !DILocation(line: 183, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !371, file: !1, line: 182, column: 45)
!387 = !DILocation(line: 185, column: 29, scope: !386)
!388 = !DILocation(line: 185, column: 28, scope: !386)
!389 = !DILocation(line: 185, column: 45, scope: !386)
!390 = !DILocation(line: 185, column: 44, scope: !386)
!391 = !DILocation(line: 186, column: 18, scope: !386)
!392 = !DILocation(line: 186, column: 24, scope: !386)
!393 = !DILocation(line: 184, column: 10, scope: !386)
!394 = !DILocation(line: 182, column: 31, scope: !371)
!395 = !DILocation(line: 195, column: 30, scope: !380)
!396 = !DILocation(line: 195, column: 7, scope: !381)
!397 = !DILocation(line: 207, column: 29, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 207, column: 4)
!399 = distinct !DILexicalBlock(scope: !142, file: !1, line: 207, column: 4)
!400 = !DILocation(line: 207, column: 27, scope: !398)
!401 = !DILocation(line: 207, column: 4, scope: !399)
!402 = !DILocation(line: 196, column: 10, scope: !403)
!403 = distinct !DILexicalBlock(scope: !380, file: !1, line: 195, column: 48)
!404 = !DILocation(line: 198, column: 29, scope: !403)
!405 = !DILocation(line: 198, column: 28, scope: !403)
!406 = !DILocation(line: 198, column: 45, scope: !403)
!407 = !DILocation(line: 198, column: 44, scope: !403)
!408 = !DILocation(line: 199, column: 18, scope: !403)
!409 = !DILocation(line: 199, column: 24, scope: !403)
!410 = !DILocation(line: 197, column: 10, scope: !403)
!411 = !DILocation(line: 194, column: 28, scope: !376)
!412 = !DILocation(line: 208, column: 29, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 208, column: 7)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 208, column: 7)
!415 = distinct !DILexicalBlock(scope: !398, file: !1, line: 207, column: 45)
!416 = !DILocation(line: 208, column: 7, scope: !414)
!417 = !DILocation(line: 209, column: 10, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !1, line: 208, column: 45)
!419 = !DILocation(line: 211, column: 29, scope: !418)
!420 = !DILocation(line: 211, column: 28, scope: !418)
!421 = !DILocation(line: 211, column: 45, scope: !418)
!422 = !DILocation(line: 211, column: 44, scope: !418)
!423 = !DILocation(line: 212, column: 18, scope: !418)
!424 = !DILocation(line: 212, column: 24, scope: !418)
!425 = !DILocation(line: 210, column: 10, scope: !418)
!426 = !DILocation(line: 208, column: 31, scope: !413)
!427 = !DILocation(line: 216, column: 1, scope: !122)
