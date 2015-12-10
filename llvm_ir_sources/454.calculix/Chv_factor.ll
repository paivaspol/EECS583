; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in Chv_factorWithNoPivoting()\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_factorWithNoPivoting()\0A patch-and-go info != NULL, strategy = %d\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A workDV is NULL \0A\00", align 1
@.str4 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A tau = %f is invalid \0A\00", align 1
@.str5 = private unnamed_addr constant [105 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A real symmetric front\0A pivoting enabled, pivotsizesIV is NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [121 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A complex symmetric or hermitian front\0A pivoting enabled, pivotsizesIV is NULL\0A\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Chv_r1upd(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_r1upd(%p)\0A symflag = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Chv_r2upd(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_r2upd(%p)\0A symflag = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [107 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A chv is real, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str13 = private unnamed_addr constant [110 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A chv is complex, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str14 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A chv->type = %d, must be real or complex\0A\00", align 1
@.str15 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [116 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A chv is real, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str17 = private unnamed_addr constant [119 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A chv is complex, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str18 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A chv->type = %d, must be real or complex\0A\00", align 1
@.str19 = private unnamed_addr constant [67 x i8] c"\0A fatal error in Chv_symmetric2x2\0A chevron must be real or complex\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_factorWithNoPivoting(%struct._Chv* %chv, %struct._PatchAndGoInfo* %info) #0 {
entry:
  %wrkChv = alloca %struct._Chv, align 8
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %colmaxabs = alloca double, align 8
  %diagabs = alloca double, align 8
  %rowmaxabs = alloca double, align 8
  %colmaxabs38 = alloca double, align 8
  %diagabs39 = alloca double, align 8
  %rowmaxabs41 = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !59), !dbg !223
  call void @llvm.dbg.value(metadata !{%struct._PatchAndGoInfo* %info}, i64 0, metadata !60), !dbg !224
  %0 = bitcast %struct._Chv* %wrkChv to i8*, !dbg !225
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !225
  call void @llvm.dbg.declare(metadata !{%struct._Chv* %wrkChv}, metadata !61), !dbg !225
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !62), !dbg !226
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !65), !dbg !226
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !66), !dbg !227
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !67), !dbg !227
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !228
  br i1 %cmp, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !231
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %1), !dbg !229
  call void @exit(i32 -1) #7, !dbg !234
  unreachable, !dbg !234

if.end:                                           ; preds = %entry
  %nD1 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !235
  %3 = load i32* %nD1, align 4, !dbg !235, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !63), !dbg !235
  call void @Chv_setDefaultFields(%struct._Chv* %wrkChv) #8, !dbg !237
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #8, !dbg !238
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #8, !dbg !239
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !240
  %4 = load i32* %id, align 4, !dbg !240, !tbaa !236
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !240
  %5 = load i32* %nL, align 4, !dbg !240, !tbaa !236
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !240
  %6 = load i32* %nU, align 4, !dbg !240, !tbaa !236
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !240
  %7 = load i32* %type, align 4, !dbg !240, !tbaa !236
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !240
  %8 = load i32* %symflag, align 4, !dbg !240, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !67), !dbg !240
  %9 = load i32** %rowind, align 8, !dbg !240, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !66), !dbg !240
  %10 = load i32** %colind, align 8, !dbg !240, !tbaa !231
  %call2 = call double* @Chv_entries(%struct._Chv* %chv) #8, !dbg !241
  call void @Chv_initWithPointers(%struct._Chv* %wrkChv, i32 %4, i32 %3, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, double* %call2) #8, !dbg !241
  %cmp3 = icmp eq %struct._PatchAndGoInfo* %info, null, !dbg !242
  br i1 %cmp3, label %while.cond.preheader, label %if.else, !dbg !242

while.cond.preheader:                             ; preds = %if.end
  %cmp5129 = icmp sgt i32 %3, 0, !dbg !243
  br i1 %cmp5129, label %while.body, label %if.end92, !dbg !243

while.body:                                       ; preds = %while.cond.preheader, %if.end9
  %nelim.0130 = phi i32 [ %inc, %if.end9 ], [ 0, %while.cond.preheader ]
  %call6 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #9, !dbg !245
  %cmp7 = icmp eq i32 %call6, 0, !dbg !245
  br i1 %cmp7, label %if.end92, label %if.end9, !dbg !245

if.end9:                                          ; preds = %while.body
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #8, !dbg !247
  %inc = add nsw i32 %nelim.0130, 1, !dbg !248
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !64), !dbg !248
  %cmp5 = icmp slt i32 %inc, %3, !dbg !243
  br i1 %cmp5, label %while.body, label %if.end92, !dbg !243

if.else:                                          ; preds = %if.end
  %strategy = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 0, !dbg !249
  %11 = load i32* %strategy, align 4, !dbg !249, !tbaa !236
  switch i32 %11, label %if.else87 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond42.preheader
  ], !dbg !249

for.cond42.preheader:                             ; preds = %if.else
  %cmp43136 = icmp sgt i32 %3, 0, !dbg !250
  br i1 %cmp43136, label %for.body44.lr.ph, label %if.end92, !dbg !250

for.body44.lr.ph:                                 ; preds = %for.cond42.preheader
  %fudge = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 2, !dbg !252
  %entries60 = getelementptr inbounds %struct._Chv* %wrkChv, i64 0, i32 8, !dbg !254
  %fudgeIV70 = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 3, !dbg !257
  %fudgeDV = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 4, !dbg !258
  %colind74 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !259
  br label %for.body44, !dbg !250

for.cond.preheader:                               ; preds = %if.else
  %cmp12132 = icmp sgt i32 %3, 0, !dbg !261
  br i1 %cmp12132, label %for.body.lr.ph, label %if.end92, !dbg !261

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %toosmall = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 1, !dbg !263
  %entries = getelementptr inbounds %struct._Chv* %wrkChv, i64 0, i32 8, !dbg !265
  %fudgeIV = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 3, !dbg !268
  %colind28 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !269
  br label %for.body, !dbg !261

for.body:                                         ; preds = %if.end31, %for.body.lr.ph
  %nelim.1133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %if.end31 ]
  call void @Chv_maxabsInChevron(%struct._Chv* %wrkChv, i32 0, double* %diagabs, double* %rowmaxabs, double* %colmaxabs) #9, !dbg !271
  call void @llvm.dbg.value(metadata !{double* %rowmaxabs}, i64 0, metadata !72), !dbg !272
  %12 = load double* %rowmaxabs, align 8, !dbg !272, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %colmaxabs}, i64 0, metadata !68), !dbg !272
  %13 = load double* %colmaxabs, align 8, !dbg !272, !tbaa !273
  %cmp13 = fcmp oge double %12, %13, !dbg !272
  %cond = select i1 %cmp13, double %12, double %13, !dbg !272
  call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !71), !dbg !272
  call void @llvm.dbg.value(metadata !{double* %diagabs}, i64 0, metadata !70), !dbg !263
  %14 = load double* %diagabs, align 8, !dbg !263, !tbaa !273
  %15 = load double* %toosmall, align 8, !dbg !263, !tbaa !273
  %mul = fmul double %15, %cond, !dbg !263
  %cmp14 = fcmp ugt double %14, %mul, !dbg !263
  br i1 %cmp14, label %if.end31, label %if.then15, !dbg !263

if.then15:                                        ; preds = %for.body
  %16 = load i32* %type, align 4, !dbg !274, !tbaa !236
  %cmp17 = icmp eq i32 %16, 1, !dbg !274
  %17 = load double** %entries, align 8, !dbg !265, !tbaa !231
  store double 1.000000e+00, double* %17, align 8, !dbg !265, !tbaa !273
  br i1 %cmp17, label %if.end24, label %if.else19, !dbg !274

if.else19:                                        ; preds = %if.then15
  %arrayidx23 = getelementptr inbounds double* %17, i64 1, !dbg !275
  store double 0.000000e+00, double* %arrayidx23, align 8, !dbg !275, !tbaa !273
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %if.else19
  call void @Chv_zeroOffdiagonalOfChevron(%struct._Chv* %chv, i32 0) #9, !dbg !277
  %18 = load %struct._IV** %fudgeIV, align 8, !dbg !268, !tbaa !231
  %cmp25 = icmp eq %struct._IV* %18, null, !dbg !268
  br i1 %cmp25, label %if.end31, label %if.then26, !dbg !268

if.then26:                                        ; preds = %if.end24
  %19 = load i32** %colind28, align 8, !dbg !269, !tbaa !231
  %20 = load i32* %19, align 4, !dbg !269, !tbaa !236
  call void @IV_push(%struct._IV* %18, i32 %20) #8, !dbg !269
  br label %if.end31, !dbg !278

if.end31:                                         ; preds = %if.end24, %for.body, %if.then26
  %call32 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #9, !dbg !279
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #8, !dbg !280
  %inc33 = add nsw i32 %nelim.1133, 1, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !64), !dbg !261
  %exitcond = icmp eq i32 %inc33, %3, !dbg !261
  br i1 %exitcond, label %if.end92, label %for.body, !dbg !261

for.body44:                                       ; preds = %if.end82, %for.body44.lr.ph
  %nelim.2137 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc85, %if.end82 ]
  call void @Chv_maxabsInChevron(%struct._Chv* %wrkChv, i32 0, double* %diagabs39, double* %rowmaxabs41, double* %colmaxabs38) #9, !dbg !281
  call void @llvm.dbg.value(metadata !{double* %rowmaxabs41}, i64 0, metadata !79), !dbg !282
  %21 = load double* %rowmaxabs41, align 8, !dbg !282, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %colmaxabs38}, i64 0, metadata !73), !dbg !282
  %22 = load double* %colmaxabs38, align 8, !dbg !282, !tbaa !273
  %cmp45 = fcmp oge double %21, %22, !dbg !282
  %cond49 = select i1 %cmp45, double %21, double %22, !dbg !282
  call void @llvm.dbg.value(metadata !{double %cond49}, i64 0, metadata !78), !dbg !282
  call void @llvm.dbg.value(metadata !{double* %diagabs39}, i64 0, metadata !75), !dbg !252
  %23 = load double* %diagabs39, align 8, !dbg !252, !tbaa !273
  %24 = load double* %fudge, align 8, !dbg !252, !tbaa !273
  %cmp50 = fcmp ugt double %23, %24, !dbg !252
  br i1 %cmp50, label %if.end82, label %if.then51, !dbg !252

if.then51:                                        ; preds = %for.body44
  call void @llvm.dbg.value(metadata !{double %23}, i64 0, metadata !76), !dbg !283
  %cmp52 = fcmp olt double %cond49, 1.000000e+00, !dbg !284
  call void @llvm.dbg.value(metadata !285, i64 0, metadata !78), !dbg !286
  %offmaxabs40.0 = select i1 %cmp52, double 1.000000e+00, double %cond49, !dbg !284
  %25 = load i32* %type, align 4, !dbg !288, !tbaa !236
  %cmp56 = icmp eq i32 %25, 1, !dbg !288
  %mul59 = fmul double %24, %offmaxabs40.0, !dbg !254
  call void @llvm.dbg.value(metadata !{double %mul59}, i64 0, metadata !77), !dbg !254
  %26 = load double** %entries60, align 8, !dbg !254, !tbaa !231
  store double %mul59, double* %26, align 8, !dbg !254, !tbaa !273
  br i1 %cmp56, label %if.end69, label %if.else62, !dbg !288

if.else62:                                        ; preds = %if.then51
  %arrayidx68 = getelementptr inbounds double* %26, i64 1, !dbg !289
  store double 0.000000e+00, double* %arrayidx68, align 8, !dbg !289, !tbaa !273
  br label %if.end69

if.end69:                                         ; preds = %if.then51, %if.else62
  %27 = load %struct._IV** %fudgeIV70, align 8, !dbg !257, !tbaa !231
  %cmp71 = icmp eq %struct._IV* %27, null, !dbg !257
  br i1 %cmp71, label %if.end76, label %if.then72, !dbg !257

if.then72:                                        ; preds = %if.end69
  %28 = load i32** %colind74, align 8, !dbg !259, !tbaa !231
  %29 = load i32* %28, align 4, !dbg !259, !tbaa !236
  call void @IV_push(%struct._IV* %27, i32 %29) #8, !dbg !259
  br label %if.end76, !dbg !291

if.end76:                                         ; preds = %if.end69, %if.then72
  %30 = load %struct._DV** %fudgeDV, align 8, !dbg !258, !tbaa !231
  %cmp77 = icmp eq %struct._DV* %30, null, !dbg !258
  br i1 %cmp77, label %if.end82, label %if.then78, !dbg !258

if.then78:                                        ; preds = %if.end76
  %sub = fsub double %23, %mul59, !dbg !292
  %call80 = call double @fabs(double %sub) #10, !dbg !292
  call void @DV_push(%struct._DV* %30, double %call80) #8, !dbg !292
  br label %if.end82, !dbg !294

if.end82:                                         ; preds = %if.end76, %for.body44, %if.then78
  %call83 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #9, !dbg !295
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #8, !dbg !296
  %inc85 = add nsw i32 %nelim.2137, 1, !dbg !250
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !64), !dbg !250
  %exitcond140 = icmp eq i32 %inc85, %3, !dbg !250
  br i1 %exitcond140, label %if.end92, label %for.body44, !dbg !250

if.else87:                                        ; preds = %if.else
  %31 = load %struct._IO_FILE** @stderr, align 8, !dbg !297, !tbaa !231
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([86 x i8]* @.str1, i64 0, i64 0), i32 %11) #8, !dbg !297
  call void @exit(i32 -1) #7, !dbg !299
  unreachable, !dbg !299

if.end92:                                         ; preds = %for.cond42.preheader, %if.end82, %for.cond.preheader, %if.end31, %while.cond.preheader, %while.body, %if.end9
  %nelim.3 = phi i32 [ 0, %while.cond.preheader ], [ %nelim.0130, %while.body ], [ %inc, %if.end9 ], [ 0, %for.cond.preheader ], [ %3, %if.end31 ], [ 0, %for.cond42.preheader ], [ %3, %if.end82 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !300
  ret i32 %nelim.3, !dbg !300
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare void @Chv_setDefaultFields(%struct._Chv*) #5

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #5

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #5

; Function Attrs: optsize
declare void @Chv_initWithPointers(%struct._Chv*, i32, i32, i32, i32, i32, i32, i32*, i32*, double*) #5

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_r1upd(%struct._Chv* %chv) #0 {
entry:
  %fac1.i22 = alloca double, align 8
  %fac2.i23 = alloca double, align 8
  %nD.i24 = alloca i32, align 4
  %nL.i25 = alloca i32, align 4
  %nU.i26 = alloca i32, align 4
  %fac1.i = alloca double, align 8
  %fac2.i = alloca double, align 8
  %nD.i = alloca i32, align 4
  %nL.i = alloca i32, align 4
  %nU.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !109), !dbg !301
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !110), !dbg !302
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !303
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !304, !tbaa !231
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0), %struct._Chv* null) #8, !dbg !304
  call void @exit(i32 -1) #7, !dbg !306
  unreachable, !dbg !306

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !307
  %1 = load i32* %symflag, align 4, !dbg !307, !tbaa !236
  switch i32 %1, label %if.else10 [
    i32 2, label %if.then2
    i32 0, label %if.then8
    i32 1, label %if.then8
  ], !dbg !307

if.then2:                                         ; preds = %if.end
  %2 = bitcast double* %fac1.i to i8*, !dbg !308
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !308
  %3 = bitcast double* %fac2.i to i8*, !dbg !308
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !308
  %4 = bitcast i32* %nD.i to i8*, !dbg !308
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !308
  %5 = bitcast i32* %nL.i to i8*, !dbg !308
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !308
  %6 = bitcast i32* %nU.i to i8*, !dbg !308
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !308
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !311) #2, !dbg !308
  call void @llvm.dbg.declare(metadata !{double* %fac1.i}, metadata !183) #2, !dbg !312
  call void @llvm.dbg.declare(metadata !{double* %fac2.i}, metadata !184) #2, !dbg !312
  call void @llvm.dbg.declare(metadata !{i32* %nD.i}, metadata !196) #2, !dbg !313
  call void @llvm.dbg.declare(metadata !{i32* %nL.i}, metadata !197) #2, !dbg !313
  call void @llvm.dbg.declare(metadata !{i32* %nU.i}, metadata !198) #2, !dbg !313
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD.i, i32* %nL.i, i32* %nU.i) #8, !dbg !314
  %call.i = call double* @Chv_entries(%struct._Chv* %chv) #8, !dbg !315
  call void @llvm.dbg.value(metadata !{double* %call.i}, i64 0, metadata !316) #2, !dbg !315
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !317) #2, !dbg !318
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !196), !dbg !318
  %7 = load i32* %nD.i, align 4, !dbg !318, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nL.i}, i64 0, metadata !319) #2, !dbg !318
  call void @llvm.dbg.value(metadata !{i32* %nL.i}, i64 0, metadata !197), !dbg !318
  %8 = load i32* %nL.i, align 4, !dbg !318, !tbaa !236
  %add.i = add i32 %8, %7, !dbg !318
  %sub.i = add nsw i32 %add.i, -1, !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !320) #2, !dbg !318
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !321) #2, !dbg !322
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !198), !dbg !322
  %9 = load i32* %nU.i, align 4, !dbg !322, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !323) #2, !dbg !324
  %add6.i = add i32 %7, -1, !dbg !325
  %sub7.i = add i32 %add6.i, %9, !dbg !325
  call void @llvm.dbg.value(metadata !{i32 %sub7.i}, i64 0, metadata !326) #2, !dbg !325
  %type.i = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !327
  %10 = load i32* %type.i, align 4, !dbg !327, !tbaa !236
  switch i32 %10, label %if.end35.i [
    i32 1, label %if.then.i
    i32 2, label %if.then12.i
  ], !dbg !327

if.then.i:                                        ; preds = %if.then2
  %idxprom.i = sext i32 %sub.i to i64, !dbg !328
  %arrayidx.i = getelementptr inbounds double* %call.i, i64 %idxprom.i, !dbg !328
  %11 = load double* %arrayidx.i, align 8, !dbg !328, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !330) #2, !dbg !328
  %cmp8.i = fcmp oeq double %11, 0.000000e+00, !dbg !331
  br i1 %cmp8.i, label %if.end14, label %if.end35.thread.i, !dbg !331

if.then12.i:                                      ; preds = %if.then2
  %mul13.i = shl nsw i32 %sub.i, 1, !dbg !332
  %idxprom14.i = sext i32 %mul13.i to i64, !dbg !332
  %arrayidx15.i = getelementptr inbounds double* %call.i, i64 %idxprom14.i, !dbg !332
  %12 = load double* %arrayidx15.i, align 8, !dbg !332, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %12}, i64 0, metadata !330) #2, !dbg !332
  %add17259.i = or i32 %mul13.i, 1, !dbg !334
  %idxprom18.i = sext i32 %add17259.i to i64, !dbg !334
  %arrayidx19.i = getelementptr inbounds double* %call.i, i64 %idxprom18.i, !dbg !334
  %13 = load double* %arrayidx19.i, align 8, !dbg !334, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %13}, i64 0, metadata !335) #2, !dbg !334
  %cmp20.i = fcmp oeq double %12, 0.000000e+00, !dbg !336
  %cmp21.i = fcmp oeq double %13, 0.000000e+00, !dbg !336
  %or.cond.i = and i1 %cmp20.i, %cmp21.i, !dbg !336
  br i1 %or.cond.i, label %if.end14, label %if.then32.i, !dbg !336

if.end35.thread.i:                                ; preds = %if.then.i
  %div.i = fdiv double 1.000000e+00, %11, !dbg !337
  call void @llvm.dbg.value(metadata !{double %div.i}, i64 0, metadata !339) #2, !dbg !337
  call void @llvm.dbg.value(metadata !{double %div.i}, i64 0, metadata !183), !dbg !337
  store double %div.i, double* %fac1.i, align 8, !dbg !337, !tbaa !273
  br label %if.then38.i, !dbg !340

if.then32.i:                                      ; preds = %if.then12.i
  %call33.i = call i32 @Zrecip(double %12, double %13, double* %fac1.i, double* %fac2.i) #8, !dbg !341
  %.pre.i = load i32* %type.i, align 4, !dbg !340, !tbaa !236
  br label %if.end35.i, !dbg !343

if.end35.i:                                       ; preds = %if.then32.i, %if.then2
  %14 = phi i32 [ %.pre.i, %if.then32.i ], [ %10, %if.then2 ]
  switch i32 %14, label %if.end44.i [
    i32 1, label %if.end35.i.if.then38.i_crit_edge
    i32 2, label %if.then42.i
  ], !dbg !340

if.end35.i.if.then38.i_crit_edge:                 ; preds = %if.end35.i
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !183), !dbg !344
  %.pre = load double* %fac1.i, align 8, !dbg !344, !tbaa !273
  br label %if.then38.i, !dbg !340

if.then38.i:                                      ; preds = %if.end35.i.if.then38.i_crit_edge, %if.end35.thread.i
  %15 = phi double [ %.pre, %if.end35.i.if.then38.i_crit_edge ], [ %div.i, %if.end35.thread.i ]
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !339) #2, !dbg !344
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !183), !dbg !344
  call void @DVscale(i32 %sub.i, double* %call.i, double %15) #8, !dbg !344
  br label %if.end44.i, !dbg !346

if.then42.i:                                      ; preds = %if.end35.i
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !339) #2, !dbg !347
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !183), !dbg !347
  %16 = load double* %fac1.i, align 8, !dbg !347, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %fac2.i}, i64 0, metadata !349) #2, !dbg !347
  call void @llvm.dbg.value(metadata !{double* %fac2.i}, i64 0, metadata !184), !dbg !347
  %17 = load double* %fac2.i, align 8, !dbg !347, !tbaa !273
  call void @ZVscale(i32 %sub.i, double* %call.i, double %16, double %17) #8, !dbg !347
  br label %if.end44.i, !dbg !350

if.end44.i:                                       ; preds = %if.end35.i, %if.then42.i, %if.then38.i
  call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !351) #2, !dbg !352
  call void @llvm.dbg.value(metadata !353, i64 0, metadata !354) #2, !dbg !355
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !317) #2, !dbg !355
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !196), !dbg !355
  %18 = load i32* %nD.i, align 4, !dbg !355, !tbaa !236
  %cmp47263.i = icmp sgt i32 %18, 1, !dbg !355
  br i1 %cmp47263.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !355

for.body.lr.ph.i:                                 ; preds = %if.end44.i
  %19 = shl i32 %7, 1, !dbg !355
  %20 = add i32 %19, %8, !dbg !355
  %21 = add i32 %20, %9, !dbg !355
  %22 = sext i32 %21 to i64
  %23 = sext i32 %add.i to i64, !dbg !355
  %24 = add i32 %add.i, -2, !dbg !355
  %25 = sext i32 %24 to i64, !dbg !355
  br label %for.body.i, !dbg !355

for.body.i:                                       ; preds = %if.end147.for.body_crit_edge.i, %for.body.lr.ph.i
  %indvars.iv282.i = phi i64 [ %25, %for.body.lr.ph.i ], [ %indvars.iv.next283.i, %if.end147.for.body_crit_edge.i ], !dbg !355
  %indvars.iv276.i = phi i64 [ %23, %for.body.lr.ph.i ], [ %indvars.iv.next277.i, %if.end147.for.body_crit_edge.i ], !dbg !355
  %indvars.iv.i = phi i64 [ %22, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end147.for.body_crit_edge.i ]
  %usize.0273.i = phi i32 [ %sub7.i, %for.body.lr.ph.i ], [ %dec49.i, %if.end147.for.body_crit_edge.i ]
  %lsize.0271.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %if.end147.for.body_crit_edge.i ]
  %kchv.0269.i = phi i32 [ 2, %for.body.lr.ph.i ], [ %phitmp.i, %if.end147.for.body_crit_edge.i ]
  %dloc.0268.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %add48.i, %if.end147.for.body_crit_edge.i ]
  %ureal.0267.i = phi double [ undef, %for.body.lr.ph.i ], [ %ureal.1.i, %if.end147.for.body_crit_edge.i ]
  %uimag.0266.i = phi double [ undef, %for.body.lr.ph.i ], [ %uimag.1.i, %if.end147.for.body_crit_edge.i ]
  %lreal.0265.i = phi double [ undef, %for.body.lr.ph.i ], [ %lreal.1.i, %if.end147.for.body_crit_edge.i ]
  %limag.0264.i = phi double [ undef, %for.body.lr.ph.i ], [ %limag.1.i, %if.end147.for.body_crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -2, !dbg !355
  %26 = trunc i64 %indvars.iv.next.i to i32, !dbg !357
  %add48.i = add nsw i32 %dloc.0268.i, %26, !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %add48.i}, i64 0, metadata !320) #2, !dbg !357
  %dec.i = add nsw i32 %lsize.0271.i, -1, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %dec.i}, i64 0, metadata !323) #2, !dbg !359
  %dec49.i = add nsw i32 %usize.0273.i, -1, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %dec49.i}, i64 0, metadata !326) #2, !dbg !360
  %sub50.i = sub nsw i32 %add48.i, %dec.i, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %sub50.i}, i64 0, metadata !362) #2, !dbg !361
  %add51.i = add nsw i32 %add48.i, 1, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %add51.i}, i64 0, metadata !364) #2, !dbg !363
  %27 = load i32* %type.i, align 4, !dbg !365, !tbaa !236
  %28 = trunc i64 %indvars.iv276.i to i32, !dbg !365
  %29 = trunc i64 %indvars.iv282.i to i32, !dbg !365
  switch i32 %27, label %if.end78.i [
    i32 1, label %if.end78thread-pre-split.i
    i32 2, label %if.then62.i
  ], !dbg !365

if.then62.i:                                      ; preds = %for.body.i
  %mul63.i = shl nsw i32 %29, 1, !dbg !366
  %add67257.i = or i32 %mul63.i, 1, !dbg !368
  %idxprom68.i = sext i32 %add67257.i to i64, !dbg !368
  %arrayidx69.i = getelementptr inbounds double* %call.i, i64 %idxprom68.i, !dbg !368
  %30 = load double* %arrayidx69.i, align 8, !dbg !368, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %30}, i64 0, metadata !369) #2, !dbg !368
  %mul70.i = shl nsw i32 %28, 1, !dbg !370
  %add74258.i = or i32 %mul70.i, 1, !dbg !371
  %idxprom75.i = sext i32 %add74258.i to i64, !dbg !371
  %arrayidx76.i = getelementptr inbounds double* %call.i, i64 %idxprom75.i, !dbg !371
  %31 = load double* %arrayidx76.i, align 8, !dbg !371, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %31}, i64 0, metadata !372) #2, !dbg !371
  br label %if.end78thread-pre-split.i, !dbg !373

if.end78thread-pre-split.i:                       ; preds = %if.then62.i, %for.body.i
  %limag.1.ph.i = phi double [ %30, %if.then62.i ], [ %limag.0264.i, %for.body.i ]
  %idxprom64.pn.in.i = phi i32 [ %mul63.i, %if.then62.i ], [ %29, %for.body.i ]
  %uimag.1.ph.i = phi double [ %31, %if.then62.i ], [ %uimag.0266.i, %for.body.i ]
  %idxprom71.pn.in.i = phi i32 [ %mul70.i, %if.then62.i ], [ %28, %for.body.i ]
  %idxprom71.pn.i = sext i32 %idxprom71.pn.in.i to i64, !dbg !370
  %idxprom64.pn.i = sext i32 %idxprom64.pn.in.i to i64, !dbg !366
  %ureal.1.ph.in.i = getelementptr inbounds double* %call.i, i64 %idxprom71.pn.i, !dbg !370
  %lreal.1.ph.in.i = getelementptr inbounds double* %call.i, i64 %idxprom64.pn.i, !dbg !366
  %ureal.1.ph.i = load double* %ureal.1.ph.in.i, align 8, !dbg !370
  %lreal.1.ph.i = load double* %lreal.1.ph.in.i, align 8, !dbg !366
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78thread-pre-split.i, %for.body.i
  %limag.1.i = phi double [ %limag.1.ph.i, %if.end78thread-pre-split.i ], [ %limag.0264.i, %for.body.i ]
  %lreal.1.i = phi double [ %lreal.1.ph.i, %if.end78thread-pre-split.i ], [ %lreal.0265.i, %for.body.i ]
  %uimag.1.i = phi double [ %uimag.1.ph.i, %if.end78thread-pre-split.i ], [ %uimag.0266.i, %for.body.i ]
  %ureal.1.i = phi double [ %ureal.1.ph.i, %if.end78thread-pre-split.i ], [ %ureal.0267.i, %for.body.i ]
  switch i32 %27, label %if.end123.i [
    i32 1, label %if.end106.thread.i
    i32 2, label %if.end106.thread289.i
  ], !dbg !374

if.end106.thread.i:                               ; preds = %if.end78.i
  %mul82.i = fmul double %lreal.1.i, %ureal.1.i, !dbg !375
  %idxprom83.i = sext i32 %add48.i to i64, !dbg !375
  %arrayidx84.i = getelementptr inbounds double* %call.i, i64 %idxprom83.i, !dbg !375
  %32 = load double* %arrayidx84.i, align 8, !dbg !375, !tbaa !273
  %sub85.i = fsub double %32, %mul82.i, !dbg !375
  store double %sub85.i, double* %arrayidx84.i, align 8, !dbg !375, !tbaa !273
  %idxprom110.i = sext i32 %sub50.i to i64, !dbg !377
  %arrayidx111.i = getelementptr inbounds double* %call.i, i64 %idxprom110.i, !dbg !377
  %sub112.i = fsub double -0.000000e+00, %ureal.1.i, !dbg !377
  call void @DVaxpy(i32 %dec.i, double* %arrayidx111.i, double %sub112.i, double* %call.i) #8, !dbg !377
  br label %if.end123thread-pre-split.i, !dbg !379

if.end106.thread289.i:                            ; preds = %if.end78.i
  %mul90.i = fmul double %lreal.1.i, %ureal.1.i, !dbg !380
  %mul91.i = fmul double %limag.1.i, %uimag.1.i, !dbg !380
  %sub92.i = fsub double %mul90.i, %mul91.i, !dbg !380
  %mul93.i = shl nsw i32 %add48.i, 1, !dbg !380
  %idxprom94.i = sext i32 %mul93.i to i64, !dbg !380
  %arrayidx95.i = getelementptr inbounds double* %call.i, i64 %idxprom94.i, !dbg !380
  %33 = load double* %arrayidx95.i, align 8, !dbg !380, !tbaa !273
  %sub96.i = fsub double %33, %sub92.i, !dbg !380
  store double %sub96.i, double* %arrayidx95.i, align 8, !dbg !380, !tbaa !273
  %mul97.i = fmul double %lreal.1.i, %uimag.1.i, !dbg !382
  %mul98.i = fmul double %limag.1.i, %ureal.1.i, !dbg !382
  %add99.i = fadd double %mul97.i, %mul98.i, !dbg !382
  %add101256.i = or i32 %mul93.i, 1, !dbg !382
  %idxprom102.i = sext i32 %add101256.i to i64, !dbg !382
  %arrayidx103.i = getelementptr inbounds double* %call.i, i64 %idxprom102.i, !dbg !382
  %34 = load double* %arrayidx103.i, align 8, !dbg !382, !tbaa !273
  %sub104.i = fsub double %34, %add99.i, !dbg !382
  store double %sub104.i, double* %arrayidx103.i, align 8, !dbg !382, !tbaa !273
  %mul117.i = shl nsw i32 %sub50.i, 1, !dbg !383
  %idxprom118.i = sext i32 %mul117.i to i64, !dbg !383
  %arrayidx119.i = getelementptr inbounds double* %call.i, i64 %idxprom118.i, !dbg !383
  %sub120.i = fsub double -0.000000e+00, %ureal.1.i, !dbg !383
  %sub121.i = fsub double -0.000000e+00, %uimag.1.i, !dbg !383
  call void @ZVaxpy(i32 %dec.i, double* %arrayidx119.i, double %sub120.i, double %sub121.i, double* %call.i) #8, !dbg !383
  br label %if.end123thread-pre-split.i, !dbg !385

if.end123thread-pre-split.i:                      ; preds = %if.end106.thread289.i, %if.end106.thread.i
  %.pr261.i = load i32* %type.i, align 4, !dbg !386, !tbaa !236
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end123thread-pre-split.i, %if.end78.i
  %35 = phi i32 [ %.pr261.i, %if.end123thread-pre-split.i ], [ %27, %if.end78.i ], !dbg !386
  switch i32 %35, label %if.end147.i [
    i32 1, label %if.then126.i
    i32 2, label %if.then136.i
  ], !dbg !386

if.then126.i:                                     ; preds = %if.end123.i
  %idxprom127.i = sext i32 %add51.i to i64, !dbg !387
  %arrayidx128.i = getelementptr inbounds double* %call.i, i64 %idxprom127.i, !dbg !387
  %sub129.i = fsub double -0.000000e+00, %lreal.1.i, !dbg !387
  %36 = add nsw i64 %indvars.iv276.i, 1, !dbg !387
  %arrayidx132.i = getelementptr inbounds double* %call.i, i64 %36, !dbg !387
  call void @DVaxpy(i32 %dec49.i, double* %arrayidx128.i, double %sub129.i, double* %arrayidx132.i) #8, !dbg !387
  br label %if.end147.i, !dbg !389

if.then136.i:                                     ; preds = %if.end123.i
  %mul137.i = shl nsw i32 %add51.i, 1, !dbg !390
  %idxprom138.i = sext i32 %mul137.i to i64, !dbg !390
  %arrayidx139.i = getelementptr inbounds double* %call.i, i64 %idxprom138.i, !dbg !390
  %sub140.i = fsub double -0.000000e+00, %lreal.1.i, !dbg !390
  %sub141.i = fsub double -0.000000e+00, %limag.1.i, !dbg !390
  %mul142.i = shl i32 %28, 1, !dbg !390
  %add143.i = add nsw i32 %mul142.i, 2, !dbg !390
  %idxprom144.i = sext i32 %add143.i to i64, !dbg !390
  %arrayidx145.i = getelementptr inbounds double* %call.i, i64 %idxprom144.i, !dbg !390
  call void @ZVaxpy(i32 %dec49.i, double* %arrayidx139.i, double %sub140.i, double %sub141.i, double* %arrayidx145.i) #8, !dbg !390
  br label %if.end147.i, !dbg !392

if.end147.i:                                      ; preds = %if.end123.i, %if.then136.i, %if.then126.i
  call void @llvm.dbg.value(metadata !{i32 %kchv.0269.i}, i64 0, metadata !354) #2, !dbg !355
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !317) #2, !dbg !355
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !196), !dbg !355
  %37 = load i32* %nD.i, align 4, !dbg !355, !tbaa !236
  %cmp47.i = icmp slt i32 %kchv.0269.i, %37, !dbg !355
  br i1 %cmp47.i, label %if.end147.for.body_crit_edge.i, label %for.end.i, !dbg !355

if.end147.for.body_crit_edge.i:                   ; preds = %if.end147.i
  %indvars.iv.next283.i = add i64 %indvars.iv282.i, -1, !dbg !355
  %indvars.iv.next277.i = add i64 %indvars.iv276.i, 1, !dbg !355
  %phitmp.i = add i32 %kchv.0269.i, 1, !dbg !355
  br label %for.body.i, !dbg !355

for.end.i:                                        ; preds = %if.end147.i, %if.end44.i
  %.lcssa.i = phi i32 [ %18, %if.end44.i ], [ %37, %if.end147.i ]
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !321) #2, !dbg !393
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !198), !dbg !393
  %38 = load i32* %nU.i, align 4, !dbg !393, !tbaa !236
  %add151.i = add i32 %.lcssa.i, -1, !dbg !393
  %sub152.i = add i32 %add151.i, %38, !dbg !393
  call void @llvm.dbg.value(metadata !{i32 %sub152.i}, i64 0, metadata !326) #2, !dbg !393
  %39 = load i32* %type.i, align 4, !dbg !394, !tbaa !236
  switch i32 %39, label %if.end14 [
    i32 1, label %if.then155.i
    i32 2, label %if.then162.i
  ], !dbg !394

if.then155.i:                                     ; preds = %for.end.i
  call void @llvm.dbg.value(metadata !{i32* %nL.i}, i64 0, metadata !319) #2, !dbg !395
  call void @llvm.dbg.value(metadata !{i32* %nL.i}, i64 0, metadata !197), !dbg !395
  %40 = load i32* %nL.i, align 4, !dbg !395, !tbaa !236
  %add156.i = add nsw i32 %40, %.lcssa.i, !dbg !395
  %idxprom157.i = sext i32 %add156.i to i64, !dbg !395
  %arrayidx158.i = getelementptr inbounds double* %call.i, i64 %idxprom157.i, !dbg !395
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !339) #2, !dbg !395
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !183), !dbg !395
  %41 = load double* %fac1.i, align 8, !dbg !395, !tbaa !273
  call void @DVscale(i32 %sub152.i, double* %arrayidx158.i, double %41) #8, !dbg !395
  br label %if.end14, !dbg !397

if.then162.i:                                     ; preds = %for.end.i
  call void @llvm.dbg.value(metadata !{i32* %nL.i}, i64 0, metadata !319) #2, !dbg !398
  call void @llvm.dbg.value(metadata !{i32* %nL.i}, i64 0, metadata !197), !dbg !398
  %42 = load i32* %nL.i, align 4, !dbg !398, !tbaa !236
  %add163.i = add nsw i32 %42, %.lcssa.i, !dbg !398
  %mul164.i = shl nsw i32 %add163.i, 1, !dbg !398
  %idxprom165.i = sext i32 %mul164.i to i64, !dbg !398
  %arrayidx166.i = getelementptr inbounds double* %call.i, i64 %idxprom165.i, !dbg !398
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !339) #2, !dbg !398
  call void @llvm.dbg.value(metadata !{double* %fac1.i}, i64 0, metadata !183), !dbg !398
  %43 = load double* %fac1.i, align 8, !dbg !398, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %fac2.i}, i64 0, metadata !349) #2, !dbg !398
  call void @llvm.dbg.value(metadata !{double* %fac2.i}, i64 0, metadata !184), !dbg !398
  %44 = load double* %fac2.i, align 8, !dbg !398, !tbaa !273
  call void @ZVscale(i32 %sub152.i, double* %arrayidx166.i, double %43, double %44) #8, !dbg !398
  br label %if.end14, !dbg !400

if.then8:                                         ; preds = %if.end, %if.end
  %45 = bitcast double* %fac1.i22 to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !401
  %46 = bitcast double* %fac2.i23 to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !401
  %47 = bitcast i32* %nD.i24 to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 4, i8* %47) #2, !dbg !401
  %48 = bitcast i32* %nL.i25 to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 4, i8* %48) #2, !dbg !401
  %49 = bitcast i32* %nU.i26 to i8*, !dbg !401
  call void @llvm.lifetime.start(i64 4, i8* %49) #2, !dbg !401
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !404) #2, !dbg !401
  call void @llvm.dbg.declare(metadata !{double* %fac1.i22}, metadata !207) #2, !dbg !405
  call void @llvm.dbg.declare(metadata !{double* %fac2.i23}, metadata !208) #2, !dbg !405
  call void @llvm.dbg.declare(metadata !{i32* %nD.i24}, metadata !217) #2, !dbg !406
  call void @llvm.dbg.declare(metadata !{i32* %nL.i25}, metadata !218) #2, !dbg !406
  call void @llvm.dbg.declare(metadata !{i32* %nU.i26}, metadata !219) #2, !dbg !406
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD.i24, i32* %nL.i25, i32* %nU.i26) #8, !dbg !407
  %call.i27 = call double* @Chv_entries(%struct._Chv* %chv) #8, !dbg !408
  call void @llvm.dbg.value(metadata !{double* %call.i27}, i64 0, metadata !409) #2, !dbg !408
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !410) #2, !dbg !411
  call void @llvm.dbg.value(metadata !{i32* %nD.i24}, i64 0, metadata !412) #2, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %nD.i24}, i64 0, metadata !217), !dbg !413
  %50 = load i32* %nD.i24, align 4, !dbg !413, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU.i26}, i64 0, metadata !414) #2, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %nU.i26}, i64 0, metadata !219), !dbg !413
  %51 = load i32* %nU.i26, align 4, !dbg !413, !tbaa !236
  %add.i28 = add i32 %51, %50, !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %add.i28}, i64 0, metadata !415) #2, !dbg !413
  %sub.i29 = add nsw i32 %add.i28, -1, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %sub.i29}, i64 0, metadata !417) #2, !dbg !416
  %type.i30 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !418
  %52 = load i32* %type.i30, align 4, !dbg !418, !tbaa !236
  switch i32 %52, label %if.else33.i [
    i32 1, label %if.then.i31
    i32 2, label %if.then6.i
  ], !dbg !418

if.then.i31:                                      ; preds = %if.then8
  %53 = load double* %call.i27, align 8, !dbg !419, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %53}, i64 0, metadata !421) #2, !dbg !419
  %cmp2.i = fcmp oeq double %53, 0.000000e+00, !dbg !422
  br i1 %cmp2.i, label %if.end14, label %if.end28.thread.i, !dbg !422

if.end28.thread.i:                                ; preds = %if.then.i31
  %div.i32 = fdiv double 1.000000e+00, %53, !dbg !423
  call void @llvm.dbg.value(metadata !{double %div.i32}, i64 0, metadata !424) #2, !dbg !423
  call void @llvm.dbg.value(metadata !{double %div.i32}, i64 0, metadata !207), !dbg !423
  store double %div.i32, double* %fac1.i22, align 8, !dbg !423, !tbaa !273
  %arrayidx32.i.pre = getelementptr inbounds double* %call.i27, i64 1, !dbg !425
  br label %if.then31.i, !dbg !427

if.then6.i:                                       ; preds = %if.then8
  %54 = load double* %call.i27, align 8, !dbg !428, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %54}, i64 0, metadata !421) #2, !dbg !428
  %arrayidx12.i = getelementptr inbounds double* %call.i27, i64 1, !dbg !430
  %55 = load double* %arrayidx12.i, align 8, !dbg !430, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %55}, i64 0, metadata !431) #2, !dbg !430
  %cmp13.i = fcmp oeq double %54, 0.000000e+00, !dbg !432
  %cmp14.i = fcmp oeq double %55, 0.000000e+00, !dbg !432
  %or.cond.i33 = and i1 %cmp13.i, %cmp14.i, !dbg !432
  br i1 %or.cond.i33, label %if.end14, label %if.end16.i, !dbg !432

if.end16.i:                                       ; preds = %if.then6.i
  %56 = load i32* %symflag, align 4, !dbg !433, !tbaa !236
  %cmp17.i = icmp eq i32 %56, 1, !dbg !433
  br i1 %cmp17.i, label %if.end28.thread183.i, label %if.end28.i, !dbg !433

if.end28.thread183.i:                             ; preds = %if.end16.i
  %div19.i = fdiv double 1.000000e+00, %54, !dbg !434
  call void @llvm.dbg.value(metadata !{double %div19.i}, i64 0, metadata !424) #2, !dbg !434
  call void @llvm.dbg.value(metadata !{double %div19.i}, i64 0, metadata !207), !dbg !434
  store double %div19.i, double* %fac1.i22, align 8, !dbg !434, !tbaa !273
  call void @llvm.dbg.value(metadata !436, i64 0, metadata !437) #2, !dbg !434
  call void @llvm.dbg.value(metadata !436, i64 0, metadata !208), !dbg !434
  store double 0.000000e+00, double* %fac2.i23, align 8, !dbg !434, !tbaa !273
  store double 0.000000e+00, double* %arrayidx12.i, align 8, !dbg !438, !tbaa !273
  br label %if.else33.i, !dbg !427

if.end28.i:                                       ; preds = %if.end16.i
  %call25.i = call i32 @Zrecip(double %54, double %55, double* %fac1.i22, double* %fac2.i23) #8, !dbg !439
  %.pr.pre.i = load i32* %type.i30, align 4, !dbg !427, !tbaa !236
  %phitmp.i34 = icmp eq i32 %.pr.pre.i, 1
  br i1 %phitmp.i34, label %if.end28.i.if.then31.i_crit_edge, label %if.else33.i, !dbg !427

if.end28.i.if.then31.i_crit_edge:                 ; preds = %if.end28.i
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !207), !dbg !425
  %.pre48 = load double* %fac1.i22, align 8, !dbg !425, !tbaa !273
  br label %if.then31.i, !dbg !427

if.then31.i:                                      ; preds = %if.end28.i.if.then31.i_crit_edge, %if.end28.thread.i
  %arrayidx32.i.pre-phi = phi double* [ %arrayidx12.i, %if.end28.i.if.then31.i_crit_edge ], [ %arrayidx32.i.pre, %if.end28.thread.i ], !dbg !425
  %57 = phi double [ %.pre48, %if.end28.i.if.then31.i_crit_edge ], [ %div.i32, %if.end28.thread.i ]
  %dimag.0.ph182.i = phi double [ %55, %if.end28.i.if.then31.i_crit_edge ], [ undef, %if.end28.thread.i ]
  %dreal.0.ph181.i = phi double [ %54, %if.end28.i.if.then31.i_crit_edge ], [ %53, %if.end28.thread.i ]
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !424) #2, !dbg !425
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !207), !dbg !425
  call void @DVscale(i32 %sub.i29, double* %arrayidx32.i.pre-phi, double %57) #8, !dbg !425
  br label %for.cond.preheader.i, !dbg !441

if.else33.i:                                      ; preds = %if.end28.i, %if.then8, %if.end28.thread183.i
  %dimag.0167.i = phi double [ %55, %if.end28.thread183.i ], [ undef, %if.then8 ], [ %55, %if.end28.i ]
  %dreal.0165.i = phi double [ %54, %if.end28.thread183.i ], [ undef, %if.then8 ], [ %54, %if.end28.i ]
  %58 = load i32* %symflag, align 4, !dbg !442, !tbaa !236
  %cmp35.i = icmp eq i32 %58, 1, !dbg !442
  br i1 %cmp35.i, label %if.then36.i, label %if.else39.i, !dbg !442

if.then36.i:                                      ; preds = %if.else33.i
  %mul37.i = shl nsw i32 %sub.i29, 1, !dbg !443
  %arrayidx38.i = getelementptr inbounds double* %call.i27, i64 2, !dbg !443
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !424) #2, !dbg !443
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !207), !dbg !443
  %59 = load double* %fac1.i22, align 8, !dbg !443, !tbaa !273
  call void @DVscale(i32 %mul37.i, double* %arrayidx38.i, double %59) #8, !dbg !443
  br label %for.cond.preheader.i, !dbg !445

if.else39.i:                                      ; preds = %if.else33.i
  %arrayidx40.i = getelementptr inbounds double* %call.i27, i64 2, !dbg !446
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !424) #2, !dbg !446
  call void @llvm.dbg.value(metadata !{double* %fac1.i22}, i64 0, metadata !207), !dbg !446
  %60 = load double* %fac1.i22, align 8, !dbg !446, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %fac2.i23}, i64 0, metadata !437) #2, !dbg !446
  call void @llvm.dbg.value(metadata !{double* %fac2.i23}, i64 0, metadata !208), !dbg !446
  %61 = load double* %fac2.i23, align 8, !dbg !446, !tbaa !273
  call void @ZVscale(i32 %sub.i29, double* %arrayidx40.i, double %60, double %61) #8, !dbg !446
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else39.i, %if.then36.i, %if.then31.i
  %dimag.0166.ph.i = phi double [ %dimag.0.ph182.i, %if.then31.i ], [ %dimag.0167.i, %if.else39.i ], [ %dimag.0167.i, %if.then36.i ]
  %dreal.0164.ph.i = phi double [ %dreal.0.ph181.i, %if.then31.i ], [ %dreal.0165.i, %if.else39.i ], [ %dreal.0165.i, %if.then36.i ]
  call void @llvm.dbg.value(metadata !{i32* %nD.i24}, i64 0, metadata !412) #2, !dbg !448
  call void @llvm.dbg.value(metadata !{i32* %nD.i24}, i64 0, metadata !217), !dbg !448
  %62 = load i32* %nD.i24, align 4, !dbg !448, !tbaa !236
  %cmp44169.i = icmp sgt i32 %62, 1, !dbg !448
  br i1 %cmp44169.i, label %for.body.lr.ph.i35, label %if.end14, !dbg !448

for.body.lr.ph.i35:                               ; preds = %for.cond.preheader.i
  %63 = sext i32 %add.i28 to i64, !dbg !448
  br label %for.body.i37, !dbg !448

for.body.i37:                                     ; preds = %if.end101.for.body_crit_edge.i, %for.body.lr.ph.i35
  %indvars.iv177.i = phi i64 [ %63, %for.body.lr.ph.i35 ], [ %indvars.iv.next178.i, %if.end101.for.body_crit_edge.i ], !dbg !448
  %indvars.iv.i36 = phi i64 [ 1, %for.body.lr.ph.i35 ], [ %indvars.iv.next.i45, %if.end101.for.body_crit_edge.i ]
  %usize.0176.i = phi i32 [ %sub.i29, %for.body.lr.ph.i35 ], [ %dec102.i, %if.end101.for.body_crit_edge.i ]
  %uijloc.0175.i = phi i32 [ 2, %for.body.lr.ph.i35 ], [ %phitmp180.i, %if.end101.for.body_crit_edge.i ]
  %dloc.0172.i = phi i32 [ 0, %for.body.lr.ph.i35 ], [ %add45.i, %if.end101.for.body_crit_edge.i ]
  %lreal.0171.i = phi double [ undef, %for.body.lr.ph.i35 ], [ %lreal.1189.i, %if.end101.for.body_crit_edge.i ]
  %limag.0170.i = phi double [ undef, %for.body.lr.ph.i35 ], [ %limag.1187.i, %if.end101.for.body_crit_edge.i ]
  %64 = trunc i64 %indvars.iv177.i to i32, !dbg !450
  %add45.i = add nsw i32 %dloc.0172.i, %64, !dbg !450
  call void @llvm.dbg.value(metadata !{i32 %add45.i}, i64 0, metadata !410) #2, !dbg !450
  %65 = load i32* %type.i30, align 4, !dbg !452, !tbaa !236
  switch i32 %65, label %if.end79.i [
    i32 1, label %if.end79.thread.i
    i32 2, label %if.then56.i
  ], !dbg !452

if.end79.thread.i:                                ; preds = %for.body.i37
  %arrayidx51.i = getelementptr inbounds double* %call.i27, i64 %indvars.iv.i36, !dbg !453
  %66 = load double* %arrayidx51.i, align 8, !dbg !453, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %66}, i64 0, metadata !455) #2, !dbg !453
  %mul52.i = fmul double %dreal.0164.ph.i, %66, !dbg !456
  call void @llvm.dbg.value(metadata !{double %mul52.i}, i64 0, metadata !457) #2, !dbg !456
  br label %if.then82.i, !dbg !458

if.then56.i:                                      ; preds = %for.body.i37
  %67 = trunc i64 %indvars.iv.i36 to i32, !dbg !459
  %mul57.i = shl nsw i32 %67, 1, !dbg !459
  %idxprom58.i = sext i32 %mul57.i to i64, !dbg !459
  %arrayidx59.i = getelementptr inbounds double* %call.i27, i64 %idxprom58.i, !dbg !459
  %68 = load double* %arrayidx59.i, align 8, !dbg !459, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %68}, i64 0, metadata !455) #2, !dbg !459
  %add61162.i = or i32 %mul57.i, 1, !dbg !461
  %idxprom62.i = sext i32 %add61162.i to i64, !dbg !461
  %arrayidx63.i = getelementptr inbounds double* %call.i27, i64 %idxprom62.i, !dbg !461
  %69 = load double* %arrayidx63.i, align 8, !dbg !461, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %69}, i64 0, metadata !462) #2, !dbg !461
  %70 = load i32* %symflag, align 4, !dbg !463, !tbaa !236
  %cmp65.i = icmp eq i32 %70, 1, !dbg !463
  %mul67.i = fmul double %dreal.0164.ph.i, %68, !dbg !464
  br i1 %cmp65.i, label %if.end79.thread190.i, label %if.else70.i, !dbg !463

if.end79.thread190.i:                             ; preds = %if.then56.i
  call void @llvm.dbg.value(metadata !{double %mul67.i}, i64 0, metadata !457) #2, !dbg !464
  %71 = fmul double %dreal.0164.ph.i, %69, !dbg !466
  %mul69.i = fsub double -0.000000e+00, %71, !dbg !466
  call void @llvm.dbg.value(metadata !{double %mul69.i}, i64 0, metadata !467) #2, !dbg !466
  br label %if.then91.i, !dbg !458

if.else70.i:                                      ; preds = %if.then56.i
  %mul72.i = fmul double %dimag.0166.ph.i, %69, !dbg !468
  %sub73.i = fsub double %mul67.i, %mul72.i, !dbg !468
  call void @llvm.dbg.value(metadata !{double %sub73.i}, i64 0, metadata !457) #2, !dbg !468
  %mul74.i = fmul double %dreal.0164.ph.i, %69, !dbg !470
  %mul75.i = fmul double %dimag.0166.ph.i, %68, !dbg !470
  %add76.i = fadd double %mul75.i, %mul74.i, !dbg !470
  call void @llvm.dbg.value(metadata !{double %add76.i}, i64 0, metadata !467) #2, !dbg !470
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else70.i, %for.body.i37
  %limag.1.i38 = phi double [ %limag.0170.i, %for.body.i37 ], [ %add76.i, %if.else70.i ]
  %lreal.1.i39 = phi double [ %lreal.0171.i, %for.body.i37 ], [ %sub73.i, %if.else70.i ]
  switch i32 %65, label %if.end101.i [
    i32 1, label %if.end79.i.if.then82.i_crit_edge
    i32 2, label %if.end79.i.if.then91.i_crit_edge
  ], !dbg !458

if.end79.i.if.then82.i_crit_edge:                 ; preds = %if.end79.i
  %arrayidx87.i.pre = getelementptr inbounds double* %call.i27, i64 %indvars.iv.i36, !dbg !471
  br label %if.then82.i, !dbg !458

if.end79.i.if.then91.i_crit_edge:                 ; preds = %if.end79.i
  %.pre49 = trunc i64 %indvars.iv.i36 to i32, !dbg !473
  %mul97.i44.pre = shl nsw i32 %.pre49, 1, !dbg !473
  %idxprom98.i.pre = sext i32 %mul97.i44.pre to i64, !dbg !473
  %arrayidx99.i.pre = getelementptr inbounds double* %call.i27, i64 %idxprom98.i.pre, !dbg !473
  br label %if.then91.i, !dbg !458

if.then82.i:                                      ; preds = %if.end79.i.if.then82.i_crit_edge, %if.end79.thread.i
  %arrayidx87.i.pre-phi = phi double* [ %arrayidx87.i.pre, %if.end79.i.if.then82.i_crit_edge ], [ %arrayidx51.i, %if.end79.thread.i ], !dbg !471
  %lreal.1188.i = phi double [ %lreal.1.i39, %if.end79.i.if.then82.i_crit_edge ], [ %mul52.i, %if.end79.thread.i ]
  %limag.1186.i = phi double [ %limag.1.i38, %if.end79.i.if.then82.i_crit_edge ], [ %limag.0170.i, %if.end79.thread.i ]
  %idxprom83.i40 = sext i32 %add45.i to i64, !dbg !471
  %arrayidx84.i41 = getelementptr inbounds double* %call.i27, i64 %idxprom83.i40, !dbg !471
  %sub85.i42 = fsub double -0.000000e+00, %lreal.1188.i, !dbg !471
  call void @DVaxpy(i32 %usize.0176.i, double* %arrayidx84.i41, double %sub85.i42, double* %arrayidx87.i.pre-phi) #8, !dbg !471
  br label %if.end101.i, !dbg !475

if.then91.i:                                      ; preds = %if.end79.i.if.then91.i_crit_edge, %if.end79.thread190.i
  %arrayidx99.i.pre-phi = phi double* [ %arrayidx99.i.pre, %if.end79.i.if.then91.i_crit_edge ], [ %arrayidx59.i, %if.end79.thread190.i ], !dbg !473
  %lreal.1192.i = phi double [ %lreal.1.i39, %if.end79.i.if.then91.i_crit_edge ], [ %mul67.i, %if.end79.thread190.i ]
  %limag.1191.i = phi double [ %limag.1.i38, %if.end79.i.if.then91.i_crit_edge ], [ %mul69.i, %if.end79.thread190.i ]
  %mul92.i = shl nsw i32 %add45.i, 1, !dbg !473
  %idxprom93.i = sext i32 %mul92.i to i64, !dbg !473
  %arrayidx94.i = getelementptr inbounds double* %call.i27, i64 %idxprom93.i, !dbg !473
  %sub95.i = fsub double -0.000000e+00, %lreal.1192.i, !dbg !473
  %sub96.i43 = fsub double -0.000000e+00, %limag.1191.i, !dbg !473
  call void @ZVaxpy(i32 %usize.0176.i, double* %arrayidx94.i, double %sub95.i, double %sub96.i43, double* %arrayidx99.i.pre-phi) #8, !dbg !473
  br label %if.end101.i, !dbg !476

if.end101.i:                                      ; preds = %if.then91.i, %if.then82.i, %if.end79.i
  %lreal.1189.i = phi double [ %lreal.1.i39, %if.end79.i ], [ %lreal.1192.i, %if.then91.i ], [ %lreal.1188.i, %if.then82.i ]
  %limag.1187.i = phi double [ %limag.1.i38, %if.end79.i ], [ %limag.1191.i, %if.then91.i ], [ %limag.1186.i, %if.then82.i ]
  call void @llvm.dbg.value(metadata !{i32 %uijloc.0175.i}, i64 0, metadata !477) #2, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %uijloc.0175.i}, i64 0, metadata !479) #2, !dbg !448
  call void @llvm.dbg.value(metadata !{i32* %nD.i24}, i64 0, metadata !412) #2, !dbg !448
  call void @llvm.dbg.value(metadata !{i32* %nD.i24}, i64 0, metadata !217), !dbg !448
  %72 = load i32* %nD.i24, align 4, !dbg !448, !tbaa !236
  %cmp44.i = icmp slt i32 %uijloc.0175.i, %72, !dbg !448
  br i1 %cmp44.i, label %if.end101.for.body_crit_edge.i, label %if.end14, !dbg !448

if.end101.for.body_crit_edge.i:                   ; preds = %if.end101.i
  %dec102.i = add nsw i32 %usize.0176.i, -1, !dbg !478
  %indvars.iv.next178.i = add i64 %indvars.iv177.i, -1, !dbg !448
  %indvars.iv.next.i45 = add i64 %indvars.iv.i36, 1, !dbg !448
  %phitmp180.i = add i32 %uijloc.0175.i, 1, !dbg !448
  br label %for.body.i37, !dbg !448

if.else10:                                        ; preds = %if.end
  %73 = load %struct._IO_FILE** @stderr, align 8, !dbg !480, !tbaa !231
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #8, !dbg !480
  call void @exit(i32 -1) #7, !dbg !482
  unreachable, !dbg !482

if.end14:                                         ; preds = %if.end101.i, %for.cond.preheader.i, %if.then6.i, %if.then.i31, %if.then162.i, %if.then155.i, %for.end.i, %if.then12.i, %if.then.i
  %rc.0 = phi i32 [ 0, %if.then.i ], [ 0, %if.then12.i ], [ 1, %for.end.i ], [ 1, %if.then162.i ], [ 1, %if.then155.i ], [ 0, %if.then.i31 ], [ 0, %if.then6.i ], [ 1, %for.cond.preheader.i ], [ 1, %if.end101.i ]
  ret i32 %rc.0, !dbg !483
}

; Function Attrs: optsize
declare void @Chv_shift(%struct._Chv*, i32) #5

; Function Attrs: nounwind optsize uwtable
define void @Chv_maxabsInChevron(%struct._Chv* %chv, i32 %ichv, double* %pdiagmaxabs, double* %prowmaxabs, double* %pcolmaxabs) #0 {
entry:
  %loc = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !119), !dbg !484
  call void @llvm.dbg.value(metadata !{i32 %ichv}, i64 0, metadata !120), !dbg !485
  call void @llvm.dbg.value(metadata !{double* %pdiagmaxabs}, i64 0, metadata !121), !dbg !486
  call void @llvm.dbg.value(metadata !{double* %prowmaxabs}, i64 0, metadata !122), !dbg !487
  call void @llvm.dbg.value(metadata !{double* %pcolmaxabs}, i64 0, metadata !123), !dbg !488
  call void @llvm.dbg.declare(metadata !{i32* %loc}, metadata !126), !dbg !489
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !127), !dbg !489
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !128), !dbg !489
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !129), !dbg !489
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !490
  %cmp1 = icmp slt i32 %ichv, 0, !dbg !490
  %or.cond = or i1 %cmp, %cmp1, !dbg !490
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !490

lor.lhs.false2:                                   ; preds = %entry
  %nD3 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !490
  %0 = load i32* %nD3, align 4, !dbg !490, !tbaa !236
  %cmp4 = icmp sle i32 %0, %ichv, !dbg !490
  %cmp6 = icmp eq double* %pdiagmaxabs, null, !dbg !490
  %or.cond115 = or i1 %cmp4, %cmp6, !dbg !490
  %cmp8 = icmp eq double* %prowmaxabs, null, !dbg !490
  %or.cond116 = or i1 %or.cond115, %cmp8, !dbg !490
  %cmp10 = icmp eq double* %pcolmaxabs, null, !dbg !490
  %or.cond117 = or i1 %or.cond116, %cmp10, !dbg !490
  br i1 %or.cond117, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !491, !tbaa !231
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str11, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %1), !dbg !491
  call void @exit(i32 -1) #7, !dbg !493
  unreachable, !dbg !493

if.end:                                           ; preds = %lor.lhs.false2
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #8, !dbg !494
  %call11 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %ichv) #8, !dbg !495
  call void @llvm.dbg.value(metadata !{double* %call11}, i64 0, metadata !124), !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !127), !dbg !496
  %3 = load i32* %nD, align 4, !dbg !496, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !129), !dbg !496
  %4 = load i32* %nU, align 4, !dbg !496, !tbaa !236
  %sub = xor i32 %ichv, -1, !dbg !496
  %sub12 = add i32 %3, %sub, !dbg !496
  %add = add i32 %sub12, %4, !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !125), !dbg !496
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !497
  %5 = load i32* %type, align 4, !dbg !497, !tbaa !236
  switch i32 %5, label %if.else63 [
    i32 1, label %if.then14
    i32 2, label %if.then35
  ], !dbg !497

if.then14:                                        ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !498
  %6 = load i32* %symflag, align 4, !dbg !498, !tbaa !236
  switch i32 %6, label %if.else27 [
    i32 0, label %if.then16
    i32 2, label %if.then21
  ], !dbg !498

if.then16:                                        ; preds = %if.then14
  %7 = load double* %call11, align 8, !dbg !500, !tbaa !273
  %call17 = call double @fabs(double %7) #10, !dbg !500
  store double %call17, double* %pdiagmaxabs, align 8, !dbg !500, !tbaa !273
  %add.ptr = getelementptr inbounds double* %call11, i64 1, !dbg !502
  %call18 = call double @DVmaxabs(i32 %add, double* %add.ptr, i32* %loc) #8, !dbg !502
  store double %call18, double* %prowmaxabs, align 8, !dbg !502, !tbaa !273
  store double %call18, double* %pcolmaxabs, align 8, !dbg !503, !tbaa !273
  br label %if.end67, !dbg !504

if.then21:                                        ; preds = %if.then14
  %8 = load double* %call11, align 8, !dbg !505, !tbaa !273
  %call22 = call double @fabs(double %8) #10, !dbg !505
  store double %call22, double* %pdiagmaxabs, align 8, !dbg !505, !tbaa !273
  %add.ptr23 = getelementptr inbounds double* %call11, i64 1, !dbg !507
  %call24 = call double @DVmaxabs(i32 %add, double* %add.ptr23, i32* %loc) #8, !dbg !507
  store double %call24, double* %prowmaxabs, align 8, !dbg !507, !tbaa !273
  %idx.ext = sext i32 %add to i64, !dbg !508
  %idx.neg = sub i64 0, %idx.ext, !dbg !508
  %add.ptr25 = getelementptr inbounds double* %call11, i64 %idx.neg, !dbg !508
  %call26 = call double @DVmaxabs(i32 %add, double* %add.ptr25, i32* %loc) #8, !dbg !508
  store double %call26, double* %pcolmaxabs, align 8, !dbg !508, !tbaa !273
  br label %if.end67

if.else27:                                        ; preds = %if.then14
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !509, !tbaa !231
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([107 x i8]* @.str12, i64 0, i64 0), i32 %6) #8, !dbg !509
  call void @exit(i32 -1) #7, !dbg !511
  unreachable, !dbg !511

if.then35:                                        ; preds = %if.end
  %symflag36 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !512
  %10 = load i32* %symflag36, align 4, !dbg !512, !tbaa !236
  switch i32 %10, label %if.else58 [
    i32 0, label %if.then41
    i32 1, label %if.then41
    i32 2, label %if.then49
  ], !dbg !512

if.then41:                                        ; preds = %if.then35, %if.then35
  %11 = load double* %call11, align 8, !dbg !514, !tbaa !273
  %add.ptr42 = getelementptr inbounds double* %call11, i64 1, !dbg !514
  %12 = load double* %add.ptr42, align 8, !dbg !514, !tbaa !273
  %call43 = call double @Zabs(double %11, double %12) #8, !dbg !514
  store double %call43, double* %pdiagmaxabs, align 8, !dbg !514, !tbaa !273
  %add.ptr44 = getelementptr inbounds double* %call11, i64 2, !dbg !516
  %call45 = call double @ZVmaxabs(i32 %add, double* %add.ptr44) #8, !dbg !516
  store double %call45, double* %prowmaxabs, align 8, !dbg !516, !tbaa !273
  store double %call45, double* %pcolmaxabs, align 8, !dbg !517, !tbaa !273
  br label %if.end67, !dbg !518

if.then49:                                        ; preds = %if.then35
  %13 = load double* %call11, align 8, !dbg !519, !tbaa !273
  %add.ptr50 = getelementptr inbounds double* %call11, i64 1, !dbg !519
  %14 = load double* %add.ptr50, align 8, !dbg !519, !tbaa !273
  %call51 = call double @Zabs(double %13, double %14) #8, !dbg !519
  store double %call51, double* %pdiagmaxabs, align 8, !dbg !519, !tbaa !273
  %add.ptr52 = getelementptr inbounds double* %call11, i64 2, !dbg !521
  %call53 = call double @ZVmaxabs(i32 %add, double* %add.ptr52) #8, !dbg !521
  store double %call53, double* %prowmaxabs, align 8, !dbg !521, !tbaa !273
  %mul = shl nsw i32 %add, 1, !dbg !522
  %idx.ext54 = sext i32 %mul to i64, !dbg !522
  %idx.neg55 = sub i64 0, %idx.ext54, !dbg !522
  %add.ptr56 = getelementptr inbounds double* %call11, i64 %idx.neg55, !dbg !522
  %call57 = call double @ZVmaxabs(i32 %add, double* %add.ptr56) #8, !dbg !522
  store double %call57, double* %pcolmaxabs, align 8, !dbg !522, !tbaa !273
  br label %if.end67

if.else58:                                        ; preds = %if.then35
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !523, !tbaa !231
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([110 x i8]* @.str13, i64 0, i64 0), i32 %10) #8, !dbg !523
  call void @exit(i32 -1) #7, !dbg !525
  unreachable, !dbg !525

if.else63:                                        ; preds = %if.end
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !526, !tbaa !231
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0), i32 %5) #8, !dbg !526
  call void @exit(i32 -1) #7, !dbg !528
  unreachable, !dbg !528

if.end67:                                         ; preds = %if.then49, %if.then41, %if.then16, %if.then21
  ret void, !dbg !529
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_zeroOffdiagonalOfChevron(%struct._Chv* %chv, i32 %ichv) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !134), !dbg !530
  call void @llvm.dbg.value(metadata !{i32 %ichv}, i64 0, metadata !135), !dbg !531
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !138), !dbg !532
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !139), !dbg !532
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !140), !dbg !532
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !533
  %cmp1 = icmp slt i32 %ichv, 0, !dbg !533
  %or.cond = or i1 %cmp, %cmp1, !dbg !533
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !533

lor.lhs.false2:                                   ; preds = %entry
  %nD3 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !533
  %0 = load i32* %nD3, align 4, !dbg !533, !tbaa !236
  %cmp4 = icmp sgt i32 %0, %ichv, !dbg !533
  br i1 %cmp4, label %if.end, label %if.then, !dbg !533

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !534, !tbaa !231
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str15, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %1), !dbg !534
  call void @exit(i32 -1) #7, !dbg !536
  unreachable, !dbg !536

if.end:                                           ; preds = %lor.lhs.false2
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #8, !dbg !537
  %call5 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %ichv) #8, !dbg !538
  call void @llvm.dbg.value(metadata !{double* %call5}, i64 0, metadata !136), !dbg !538
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !138), !dbg !539
  %3 = load i32* %nD, align 4, !dbg !539, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !140), !dbg !539
  %4 = load i32* %nU, align 4, !dbg !539, !tbaa !236
  %sub = xor i32 %ichv, -1, !dbg !539
  %sub6 = add i32 %3, %sub, !dbg !539
  %add = add i32 %sub6, %4, !dbg !539
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !137), !dbg !539
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !540
  %5 = load i32* %type, align 4, !dbg !540, !tbaa !236
  switch i32 %5, label %if.else45 [
    i32 1, label %if.then8
    i32 2, label %if.then24
  ], !dbg !540

if.then8:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !541
  %6 = load i32* %symflag, align 4, !dbg !541, !tbaa !236
  switch i32 %6, label %if.else16 [
    i32 0, label %if.then10
    i32 2, label %if.then13
  ], !dbg !541

if.then10:                                        ; preds = %if.then8
  %add.ptr = getelementptr inbounds double* %call5, i64 1, !dbg !543
  call void @DVzero(i32 %add, double* %add.ptr) #8, !dbg !543
  br label %if.end49, !dbg !545

if.then13:                                        ; preds = %if.then8
  %add.ptr14 = getelementptr inbounds double* %call5, i64 1, !dbg !546
  call void @DVzero(i32 %add, double* %add.ptr14) #8, !dbg !546
  %idx.ext = sext i32 %add to i64, !dbg !548
  %idx.neg = sub i64 0, %idx.ext, !dbg !548
  %add.ptr15 = getelementptr inbounds double* %call5, i64 %idx.neg, !dbg !548
  call void @DVzero(i32 %add, double* %add.ptr15) #8, !dbg !548
  br label %if.end49

if.else16:                                        ; preds = %if.then8
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !549, !tbaa !231
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([116 x i8]* @.str16, i64 0, i64 0), i32 %6) #8, !dbg !549
  call void @exit(i32 -1) #7, !dbg !551
  unreachable, !dbg !551

if.then24:                                        ; preds = %if.end
  %symflag25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !552
  %8 = load i32* %symflag25, align 4, !dbg !552, !tbaa !236
  switch i32 %8, label %if.else40 [
    i32 0, label %if.then30
    i32 1, label %if.then30
    i32 2, label %if.then35
  ], !dbg !552

if.then30:                                        ; preds = %if.then24, %if.then24
  %add.ptr31 = getelementptr inbounds double* %call5, i64 2, !dbg !554
  call void @ZVzero(i32 %add, double* %add.ptr31) #8, !dbg !554
  br label %if.end49, !dbg !556

if.then35:                                        ; preds = %if.then24
  %add.ptr36 = getelementptr inbounds double* %call5, i64 2, !dbg !557
  call void @ZVzero(i32 %add, double* %add.ptr36) #8, !dbg !557
  %mul = shl nsw i32 %add, 1, !dbg !559
  %idx.ext37 = sext i32 %mul to i64, !dbg !559
  %idx.neg38 = sub i64 0, %idx.ext37, !dbg !559
  %add.ptr39 = getelementptr inbounds double* %call5, i64 %idx.neg38, !dbg !559
  call void @ZVzero(i32 %add, double* %add.ptr39) #8, !dbg !559
  br label %if.end49

if.else40:                                        ; preds = %if.then24
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !560, !tbaa !231
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([119 x i8]* @.str17, i64 0, i64 0), i32 %8) #8, !dbg !560
  call void @exit(i32 -1) #7, !dbg !562
  unreachable, !dbg !562

if.else45:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !563, !tbaa !231
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([90 x i8]* @.str18, i64 0, i64 0), i32 %5) #8, !dbg !563
  call void @exit(i32 -1) #7, !dbg !565
  unreachable, !dbg !565

if.end49:                                         ; preds = %if.then35, %if.then30, %if.then10, %if.then13
  ret void, !dbg !566
}

; Function Attrs: optsize
declare void @IV_push(%struct._IV*, i32) #5

; Function Attrs: optsize
declare void @DV_push(%struct._DV*, double) #5

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_factorWithPivoting(%struct._Chv* %chv, i32 %ndelay, i32 %pivotflag, %struct._IV* %pivotsizesIV, %struct._DV* %workDV, double %tau, i32* %pntest) #0 {
entry:
  %wrkChv = alloca %struct._Chv, align 8
  %irow = alloca i32, align 4
  %jcol = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !84), !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %ndelay}, i64 0, metadata !85), !dbg !568
  call void @llvm.dbg.value(metadata !{i32 %pivotflag}, i64 0, metadata !86), !dbg !569
  call void @llvm.dbg.value(metadata !{%struct._IV* %pivotsizesIV}, i64 0, metadata !87), !dbg !570
  call void @llvm.dbg.value(metadata !{%struct._DV* %workDV}, i64 0, metadata !88), !dbg !571
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !89), !dbg !572
  call void @llvm.dbg.value(metadata !{i32* %pntest}, i64 0, metadata !90), !dbg !573
  %0 = bitcast %struct._Chv* %wrkChv to i8*, !dbg !574
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !574
  call void @llvm.dbg.declare(metadata !{%struct._Chv* %wrkChv}, metadata !91), !dbg !574
  call void @llvm.dbg.declare(metadata !{i32* %irow}, metadata !92), !dbg !575
  call void @llvm.dbg.declare(metadata !{i32* %jcol}, metadata !93), !dbg !575
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !94), !dbg !575
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !97), !dbg !575
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !99), !dbg !576
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !100), !dbg !576
  %notlhs = icmp eq %struct._Chv* %chv, null, !dbg !577
  %notrhs = icmp ne i32 %pivotflag, 1, !dbg !577
  %or.cond.not = or i1 %notrhs, %notlhs, !dbg !577
  %cmp3 = icmp slt i32 %ndelay, 0, !dbg !577
  %or.cond131 = or i1 %or.cond.not, %cmp3, !dbg !577
  br i1 %or.cond131, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !578, !tbaa !231
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %1), !dbg !578
  call void @exit(i32 -1) #7, !dbg !580
  unreachable, !dbg !580

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq %struct._DV* %workDV, null, !dbg !581
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !581

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !582, !tbaa !231
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %3), !dbg !582
  call void @exit(i32 -1) #7, !dbg !584
  unreachable, !dbg !584

if.end7:                                          ; preds = %if.end
  %cmp8 = fcmp olt double %tau, 1.000000e+00, !dbg !585
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !585

if.then9:                                         ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !586, !tbaa !231
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([65 x i8]* @.str4, i64 0, i64 0), double %tau) #8, !dbg !586
  call void @exit(i32 -1) #7, !dbg !588
  unreachable, !dbg !588

if.end11:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !589
  %6 = load i32* %type, align 4, !dbg !589, !tbaa !236
  switch i32 %6, label %if.end18.if.end31_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true21
  ], !dbg !589

land.lhs.true:                                    ; preds = %if.end11
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !589
  %7 = load i32* %symflag, align 4, !dbg !589, !tbaa !236
  %cmp13 = icmp eq i32 %7, 0, !dbg !589
  %cmp15 = icmp eq %struct._IV* %pivotsizesIV, null, !dbg !589
  %or.cond132 = and i1 %cmp13, %cmp15, !dbg !589
  br i1 %or.cond132, label %if.then16, label %if.end18.if.end31_crit_edge, !dbg !589

if.then16:                                        ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !590, !tbaa !231
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([105 x i8]* @.str5, i64 0, i64 0), i64 104, i64 1, %struct._IO_FILE* %8), !dbg !590
  call void @exit(i32 -1) #7, !dbg !592
  unreachable, !dbg !592

if.end18.if.end31_crit_edge:                      ; preds = %if.end11, %land.lhs.true
  %symflag34.pre = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !593
  br label %if.end31, !dbg !594

land.lhs.true21:                                  ; preds = %if.end11
  %symflag22 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !594
  %10 = load i32* %symflag22, align 4, !dbg !594, !tbaa !236
  %switch = icmp ult i32 %10, 2, !dbg !594
  %cmp28 = icmp eq %struct._IV* %pivotsizesIV, null, !dbg !594
  %or.cond133 = and i1 %switch, %cmp28, !dbg !594
  br i1 %or.cond133, label %if.then29, label %if.end31, !dbg !594

if.then29:                                        ; preds = %land.lhs.true21
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !595, !tbaa !231
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([121 x i8]* @.str6, i64 0, i64 0), i64 120, i64 1, %struct._IO_FILE* %11), !dbg !595
  call void @exit(i32 -1) #7, !dbg !597
  unreachable, !dbg !597

if.end31:                                         ; preds = %if.end18.if.end31_crit_edge, %land.lhs.true21
  %symflag34.pre-phi = phi i32* [ %symflag34.pre, %if.end18.if.end31_crit_edge ], [ %symflag22, %land.lhs.true21 ], !dbg !593
  %nD32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !598
  %13 = load i32* %nD32, align 4, !dbg !598, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !95), !dbg !598
  call void @Chv_setDefaultFields(%struct._Chv* %wrkChv) #8, !dbg !599
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #8, !dbg !600
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #8, !dbg !601
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !593
  %14 = load i32* %id, align 4, !dbg !593, !tbaa !236
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !593
  %15 = load i32* %nL, align 4, !dbg !593, !tbaa !236
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !593
  %16 = load i32* %nU, align 4, !dbg !593, !tbaa !236
  %17 = load i32* %type, align 4, !dbg !593, !tbaa !236
  %18 = load i32* %symflag34.pre-phi, align 4, !dbg !593, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !100), !dbg !593
  %19 = load i32** %rowind, align 8, !dbg !593, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !99), !dbg !593
  %20 = load i32** %colind, align 8, !dbg !593, !tbaa !231
  %call35 = call double* @Chv_entries(%struct._Chv* %chv) #8, !dbg !602
  call void @Chv_initWithPointers(%struct._Chv* %wrkChv, i32 %14, i32 %13, i32 %15, i32 %16, i32 %17, i32 %18, i32* %19, i32* %20, double* %call35) #8, !dbg !602
  %21 = load i32* %symflag34.pre-phi, align 4, !dbg !603, !tbaa !236
  %switch134 = icmp ult i32 %21, 2, !dbg !603
  br i1 %switch134, label %if.then41, label %while.cond66.preheader, !dbg !603

while.cond66.preheader:                           ; preds = %if.end31
  %cmp67139 = icmp sgt i32 %13, 0, !dbg !604
  br i1 %cmp67139, label %while.body68, label %if.end82, !dbg !604

if.then41:                                        ; preds = %if.end31
  call void @IV_setSize(%struct._IV* %pivotsizesIV, i32 0) #8, !dbg !606
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !96), !dbg !607
  %cmp42135 = icmp sgt i32 %13, 0, !dbg !608
  br i1 %cmp42135, label %while.body, label %if.end82, !dbg !608

while.body:                                       ; preds = %if.then41, %while.cond.backedge
  %ndelay.addr.0137 = phi i32 [ 0, %while.cond.backedge ], [ %ndelay, %if.then41 ]
  %nelim.0136 = phi i32 [ %nelim.0.be, %while.cond.backedge ], [ 0, %if.then41 ]
  %call43 = call i32 @Chv_findPivot(%struct._Chv* %wrkChv, %struct._DV* %workDV, double %tau, i32 %ndelay.addr.0137, i32* %irow, i32* %jcol, i32* %pntest) #8, !dbg !609
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !98), !dbg !609
  call void @llvm.dbg.value(metadata !{i32* %irow}, i64 0, metadata !92), !dbg !610
  %22 = load i32* %irow, align 4, !dbg !610, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %jcol}, i64 0, metadata !93), !dbg !610
  %23 = load i32* %jcol, align 4, !dbg !610, !tbaa !236
  %cmp44 = icmp sgt i32 %22, %23, !dbg !610
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !610

if.then45:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !101), !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !92), !dbg !612
  store i32 %23, i32* %irow, align 4, !dbg !612, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !93), !dbg !613
  store i32 %22, i32* %jcol, align 4, !dbg !613, !tbaa !236
  br label %if.end46, !dbg !614

if.end46:                                         ; preds = %if.then45, %while.body
  %24 = phi i32 [ %22, %if.then45 ], [ %23, %while.body ]
  %25 = phi i32 [ %23, %if.then45 ], [ %22, %while.body ]
  call void @llvm.dbg.value(metadata !{i32* %irow}, i64 0, metadata !92), !dbg !615
  %add = add nsw i32 %25, %nelim.0136, !dbg !615
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !92), !dbg !615
  store i32 %add, i32* %irow, align 4, !dbg !615, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %jcol}, i64 0, metadata !93), !dbg !616
  %add47 = add nsw i32 %24, %nelim.0136, !dbg !616
  call void @llvm.dbg.value(metadata !{i32 %add47}, i64 0, metadata !93), !dbg !616
  store i32 %add47, i32* %jcol, align 4, !dbg !616, !tbaa !236
  %cmp48 = icmp eq i32 %call43, 0, !dbg !617
  br i1 %cmp48, label %if.end82, label %if.else, !dbg !617

if.else:                                          ; preds = %if.end46
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %irow}, i64 0, metadata !92), !dbg !620
  %cmp50 = icmp eq i32 %add, %add47, !dbg !620
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %nelim.0136, i32 %add) #8, !dbg !621
  br i1 %cmp50, label %if.then51, label %if.else56, !dbg !620

if.then51:                                        ; preds = %if.else
  %call52 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #9, !dbg !623
  %cmp53 = icmp eq i32 %call52, 0, !dbg !623
  br i1 %cmp53, label %if.end82, label %if.end55, !dbg !623

if.end55:                                         ; preds = %if.then51
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #8, !dbg !624
  %inc = add nsw i32 %nelim.0136, 1, !dbg !625
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !96), !dbg !625
  call void @IV_push(%struct._IV* %pivotsizesIV, i32 1) #8, !dbg !626
  br label %while.cond.backedge, !dbg !627

while.cond.backedge:                              ; preds = %if.end55, %if.end61
  %nelim.0.be = phi i32 [ %inc, %if.end55 ], [ %add62, %if.end61 ]
  %cmp42 = icmp slt i32 %nelim.0.be, %13, !dbg !608
  br i1 %cmp42, label %while.body, label %if.end82, !dbg !608

if.else56:                                        ; preds = %if.else
  %add57 = add nsw i32 %nelim.0136, 1, !dbg !628
  call void @llvm.dbg.value(metadata !{i32* %jcol}, i64 0, metadata !93), !dbg !628
  %26 = load i32* %jcol, align 4, !dbg !628, !tbaa !236
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %add57, i32 %26) #8, !dbg !628
  %call58 = call i32 @Chv_r2upd(%struct._Chv* %wrkChv) #9, !dbg !630
  %cmp59 = icmp eq i32 %call58, 0, !dbg !630
  br i1 %cmp59, label %if.end82, label %if.end61, !dbg !630

if.end61:                                         ; preds = %if.else56
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 2) #8, !dbg !631
  %add62 = add nsw i32 %nelim.0136, 2, !dbg !632
  call void @llvm.dbg.value(metadata !{i32 %add62}, i64 0, metadata !96), !dbg !632
  call void @IV_push(%struct._IV* %pivotsizesIV, i32 2) #8, !dbg !633
  br label %while.cond.backedge

while.body68:                                     ; preds = %while.cond66.preheader, %if.end78
  %ndelay.addr.1141 = phi i32 [ 0, %if.end78 ], [ %ndelay, %while.cond66.preheader ]
  %nelim.1140 = phi i32 [ %inc79, %if.end78 ], [ 0, %while.cond66.preheader ]
  %call69 = call i32 @Chv_findPivot(%struct._Chv* %wrkChv, %struct._DV* %workDV, double %tau, i32 %ndelay.addr.1141, i32* %irow, i32* %jcol, i32* %pntest) #8, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %call69}, i64 0, metadata !98), !dbg !634
  call void @llvm.dbg.value(metadata !{i32* %irow}, i64 0, metadata !92), !dbg !636
  %27 = load i32* %irow, align 4, !dbg !636, !tbaa !236
  %add70 = add nsw i32 %27, %nelim.1140, !dbg !636
  call void @llvm.dbg.value(metadata !{i32 %add70}, i64 0, metadata !92), !dbg !636
  store i32 %add70, i32* %irow, align 4, !dbg !636, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %jcol}, i64 0, metadata !93), !dbg !637
  %28 = load i32* %jcol, align 4, !dbg !637, !tbaa !236
  %add71 = add nsw i32 %28, %nelim.1140, !dbg !637
  call void @llvm.dbg.value(metadata !{i32 %add71}, i64 0, metadata !93), !dbg !637
  store i32 %add71, i32* %jcol, align 4, !dbg !637, !tbaa !236
  %cmp72 = icmp eq i32 %call69, 0, !dbg !638
  br i1 %cmp72, label %if.end82, label %if.else74, !dbg !638

if.else74:                                        ; preds = %while.body68
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !639
  call void @llvm.dbg.value(metadata !{i32* %irow}, i64 0, metadata !92), !dbg !641
  call void @Chv_swapRows(%struct._Chv* %chv, i32 %nelim.1140, i32 %add70) #8, !dbg !641
  call void @llvm.dbg.value(metadata !{i32* %jcol}, i64 0, metadata !93), !dbg !642
  %29 = load i32* %jcol, align 4, !dbg !642, !tbaa !236
  call void @Chv_swapColumns(%struct._Chv* %chv, i32 %nelim.1140, i32 %29) #8, !dbg !642
  %call75 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #9, !dbg !643
  %cmp76 = icmp eq i32 %call75, 0, !dbg !643
  br i1 %cmp76, label %if.end82, label %if.end78, !dbg !643

if.end78:                                         ; preds = %if.else74
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #8, !dbg !644
  %inc79 = add nsw i32 %nelim.1140, 1, !dbg !645
  call void @llvm.dbg.value(metadata !{i32 %inc79}, i64 0, metadata !96), !dbg !645
  %cmp67 = icmp slt i32 %inc79, %13, !dbg !604
  br i1 %cmp67, label %while.body68, label %if.end82, !dbg !604

if.end82:                                         ; preds = %while.cond66.preheader, %while.body68, %if.else74, %if.end78, %if.then41, %if.end46, %if.then51, %if.else56, %while.cond.backedge
  %nelim.2 = phi i32 [ 0, %if.then41 ], [ %nelim.0136, %if.end46 ], [ %nelim.0136, %if.then51 ], [ %nelim.0136, %if.else56 ], [ %nelim.0.be, %while.cond.backedge ], [ 0, %while.cond66.preheader ], [ %nelim.1140, %while.body68 ], [ %nelim.1140, %if.else74 ], [ %inc79, %if.end78 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !646
  ret i32 %nelim.2, !dbg !646
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #5

; Function Attrs: optsize
declare i32 @Chv_findPivot(%struct._Chv*, %struct._DV*, double, i32, i32*, i32*, i32*) #5

; Function Attrs: optsize
declare void @Chv_swapRowsAndColumns(%struct._Chv*, i32, i32) #5

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_r2upd(%struct._Chv* %chv) #0 {
entry:
  %ereal.i = alloca double, align 8
  %eimag.i = alloca double, align 8
  %freal.i = alloca double, align 8
  %fimag.i = alloca double, align 8
  %greal.i = alloca double, align 8
  %gimag.i = alloca double, align 8
  %nD.i = alloca i32, align 4
  %nL.i = alloca i32, align 4
  %nU.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !113), !dbg !647
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !648
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !649
  br i1 %cmp, label %if.then, label %if.end, !dbg !649

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !650, !tbaa !231
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0), %struct._Chv* null) #8, !dbg !650
  call void @exit(i32 -1) #7, !dbg !652
  unreachable, !dbg !652

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !653
  %1 = load i32* %symflag, align 4, !dbg !653, !tbaa !236
  %switch = icmp ult i32 %1, 2, !dbg !653
  br i1 %switch, label %if.end7, label %if.then4, !dbg !653

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !654, !tbaa !231
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #8, !dbg !654
  call void @exit(i32 -1) #7, !dbg !656
  unreachable, !dbg !656

if.end7:                                          ; preds = %if.end
  %3 = bitcast double* %ereal.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !657
  %4 = bitcast double* %eimag.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !657
  %5 = bitcast double* %freal.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !657
  %6 = bitcast double* %fimag.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !657
  %7 = bitcast double* %greal.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !657
  %8 = bitcast double* %gimag.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !657
  %9 = bitcast i32* %nD.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !657
  %10 = bitcast i32* %nL.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !657
  %11 = bitcast i32* %nU.i to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !657
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !659) #2, !dbg !657
  call void @llvm.dbg.declare(metadata !{double* %ereal.i}, metadata !150) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{double* %eimag.i}, metadata !151) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{double* %freal.i}, metadata !152) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{double* %fimag.i}, metadata !153) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{double* %greal.i}, metadata !154) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{double* %gimag.i}, metadata !155) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{i32* %nD.i}, metadata !168) #2, !dbg !661
  call void @llvm.dbg.declare(metadata !{i32* %nL.i}, metadata !169) #2, !dbg !661
  call void @llvm.dbg.declare(metadata !{i32* %nU.i}, metadata !170) #2, !dbg !661
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD.i, i32* %nL.i, i32* %nU.i) #8, !dbg !662
  %call.i = call double* @Chv_entries(%struct._Chv* %chv) #8, !dbg !663
  call void @llvm.dbg.value(metadata !{double* %call.i}, i64 0, metadata !664) #2, !dbg !663
  %type.i = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !665
  %12 = load i32* %type.i, align 4, !dbg !665, !tbaa !236
  switch i32 %12, label %if.else34.i [
    i32 1, label %if.then.i
    i32 2, label %if.then13.i
  ], !dbg !665

if.then.i:                                        ; preds = %if.end7
  %13 = load double* %call.i, align 8, !dbg !666, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %13}, i64 0, metadata !667) #2, !dbg !666
  %arrayidx1.i = getelementptr inbounds double* %call.i, i64 1, !dbg !668
  %14 = load double* %arrayidx1.i, align 8, !dbg !668, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %14}, i64 0, metadata !669) #2, !dbg !668
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !671
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !168), !dbg !671
  %15 = load i32* %nD.i, align 4, !dbg !671, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !672) #2, !dbg !671
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !170), !dbg !671
  %16 = load i32* %nU.i, align 4, !dbg !671, !tbaa !236
  %add.i = add i32 %16, %15, !dbg !671
  %idxprom.i = sext i32 %add.i to i64, !dbg !671
  %arrayidx2.i = getelementptr inbounds double* %call.i, i64 %idxprom.i, !dbg !671
  %17 = load double* %arrayidx2.i, align 8, !dbg !671, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %17}, i64 0, metadata !673) #2, !dbg !671
  %mul.i = fmul double %13, %17, !dbg !674
  %mul3.i = fmul double %14, %14, !dbg !674
  %sub.i = fsub double %mul.i, %mul3.i, !dbg !674
  call void @llvm.dbg.value(metadata !{double %sub.i}, i64 0, metadata !675) #2, !dbg !674
  %cmp4.i = fcmp oeq double %sub.i, 0.000000e+00, !dbg !674
  br i1 %cmp4.i, label %symmetric2x2.exit, label %if.end40.thread.i, !dbg !674

if.end40.thread.i:                                ; preds = %if.then.i
  call void @llvm.dbg.value(metadata !353, i64 0, metadata !676) #2, !dbg !677
  %div.i = fdiv double 1.000000e+00, %sub.i, !dbg !679
  call void @llvm.dbg.value(metadata !{double %div.i}, i64 0, metadata !675) #2, !dbg !679
  %mul6.i = fmul double %17, %div.i, !dbg !680
  call void @llvm.dbg.value(metadata !{double %mul6.i}, i64 0, metadata !681) #2, !dbg !680
  call void @llvm.dbg.value(metadata !{double %mul6.i}, i64 0, metadata !150), !dbg !680
  store double %mul6.i, double* %ereal.i, align 8, !dbg !680, !tbaa !273
  %18 = fmul double %14, %div.i, !dbg !682
  %mul8.i = fsub double -0.000000e+00, %18, !dbg !682
  call void @llvm.dbg.value(metadata !{double %mul8.i}, i64 0, metadata !683) #2, !dbg !682
  call void @llvm.dbg.value(metadata !{double %mul8.i}, i64 0, metadata !152), !dbg !682
  store double %mul8.i, double* %freal.i, align 8, !dbg !682, !tbaa !273
  %mul9.i = fmul double %13, %div.i, !dbg !684
  call void @llvm.dbg.value(metadata !{double %mul9.i}, i64 0, metadata !685) #2, !dbg !684
  call void @llvm.dbg.value(metadata !{double %mul9.i}, i64 0, metadata !154), !dbg !684
  store double %mul9.i, double* %greal.i, align 8, !dbg !684, !tbaa !273
  call void @llvm.dbg.value(metadata !686, i64 0, metadata !687) #2, !dbg !688
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !672) #2, !dbg !689
  %add42368.i = add i32 %add.i, 1, !dbg !689
  %sub44369.i = add nsw i32 %add.i, -2, !dbg !690
  %arrayidx49.i.pre = getelementptr inbounds double* %call.i, i64 2, !dbg !691
  br label %if.then47.i, !dbg !693

if.then13.i:                                      ; preds = %if.end7
  %19 = load double* %call.i, align 8, !dbg !694, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %19}, i64 0, metadata !667) #2, !dbg !694
  %arrayidx15.i = getelementptr inbounds double* %call.i, i64 1, !dbg !696
  %20 = load double* %arrayidx15.i, align 8, !dbg !696, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %20}, i64 0, metadata !697) #2, !dbg !696
  %arrayidx16.i = getelementptr inbounds double* %call.i, i64 2, !dbg !698
  %21 = load double* %arrayidx16.i, align 8, !dbg !698, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %21}, i64 0, metadata !669) #2, !dbg !698
  %arrayidx17.i = getelementptr inbounds double* %call.i, i64 3, !dbg !699
  %22 = load double* %arrayidx17.i, align 8, !dbg !699, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %22}, i64 0, metadata !700) #2, !dbg !699
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !701
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !168), !dbg !701
  %23 = load i32* %nD.i, align 4, !dbg !701, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !672) #2, !dbg !701
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !170), !dbg !701
  %24 = load i32* %nU.i, align 4, !dbg !701, !tbaa !236
  %add18.i = add nsw i32 %24, %23, !dbg !701
  %mul19.i = shl nsw i32 %add18.i, 1, !dbg !701
  %idxprom20.i = sext i32 %mul19.i to i64, !dbg !701
  %arrayidx21.i = getelementptr inbounds double* %call.i, i64 %idxprom20.i, !dbg !701
  %25 = load double* %arrayidx21.i, align 8, !dbg !701, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %25}, i64 0, metadata !673) #2, !dbg !701
  %add24335.i = or i32 %mul19.i, 1, !dbg !702
  %idxprom25.i = sext i32 %add24335.i to i64, !dbg !702
  %arrayidx26.i = getelementptr inbounds double* %call.i, i64 %idxprom25.i, !dbg !702
  %26 = load double* %arrayidx26.i, align 8, !dbg !702, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %26}, i64 0, metadata !703) #2, !dbg !702
  %27 = load i32* %symflag, align 4, !dbg !704, !tbaa !236
  %cmp27.i = icmp eq i32 %27, 1, !dbg !704
  br i1 %cmp27.i, label %if.then28.i, label %if.else31.i, !dbg !704

if.then28.i:                                      ; preds = %if.then13.i
  %sub29.i = fsub double -0.000000e+00, %22, !dbg !705
  %call30.i = call i32 @Zrecip2(double %19, double 0.000000e+00, double %21, double %22, double %21, double %sub29.i, double %25, double 0.000000e+00, double* %ereal.i, double* null, double* %freal.i, double* %fimag.i, double* null, double* null, double* %greal.i, double* null) #8, !dbg !705
  call void @llvm.dbg.value(metadata !{i32 %call30.i}, i64 0, metadata !676) #2, !dbg !705
  call void @llvm.dbg.value(metadata !436, i64 0, metadata !707) #2, !dbg !708
  call void @llvm.dbg.value(metadata !436, i64 0, metadata !155), !dbg !708
  store double 0.000000e+00, double* %gimag.i, align 8, !dbg !708, !tbaa !273
  call void @llvm.dbg.value(metadata !436, i64 0, metadata !709) #2, !dbg !708
  call void @llvm.dbg.value(metadata !436, i64 0, metadata !151), !dbg !708
  store double 0.000000e+00, double* %eimag.i, align 8, !dbg !708, !tbaa !273
  br label %if.end37.i, !dbg !710

if.else31.i:                                      ; preds = %if.then13.i
  %call32.i = call i32 @Zrecip2(double %19, double %20, double %21, double %22, double %21, double %22, double %25, double %26, double* %ereal.i, double* %eimag.i, double* %freal.i, double* %fimag.i, double* null, double* null, double* %greal.i, double* %gimag.i) #8, !dbg !711
  call void @llvm.dbg.value(metadata !{i32 %call32.i}, i64 0, metadata !676) #2, !dbg !711
  br label %if.end37.i

if.else34.i:                                      ; preds = %if.end7
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !713, !tbaa !231
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8]* @.str19, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %28) #2, !dbg !713
  call void @exit(i32 -1) #7, !dbg !715
  unreachable, !dbg !715

if.end37.i:                                       ; preds = %if.else31.i, %if.then28.i
  %rc.0.i = phi i32 [ %call30.i, %if.then28.i ], [ %call32.i, %if.else31.i ]
  %cmp38.i = icmp eq i32 %rc.0.i, 0, !dbg !716
  br i1 %cmp38.i, label %symmetric2x2.exit, label %if.end40.i, !dbg !716

if.end40.i:                                       ; preds = %if.end37.i
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !168), !dbg !689
  %.pre.i = load i32* %nD.i, align 4, !dbg !689, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !672) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !170), !dbg !689
  %.pre364.i = load i32* %nU.i, align 4, !dbg !689, !tbaa !236
  %.pre365.i = load i32* %type.i, align 4, !dbg !693, !tbaa !236
  %phitmp.i = icmp eq i32 %.pre365.i, 1, !dbg !716
  call void @llvm.dbg.value(metadata !686, i64 0, metadata !687) #2, !dbg !688
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !672) #2, !dbg !689
  %add41.i = add i32 %.pre364.i, %.pre.i, !dbg !689
  %add42.i = add i32 %add41.i, 1, !dbg !689
  %sub44.i = add nsw i32 %add41.i, -2, !dbg !690
  br i1 %phitmp.i, label %if.end40.i.if.then47.i_crit_edge, label %if.else52.i, !dbg !693

if.end40.i.if.then47.i_crit_edge:                 ; preds = %if.end40.i
  call void @llvm.dbg.value(metadata !{double* %ereal.i}, i64 0, metadata !150), !dbg !691
  %.pre = load double* %ereal.i, align 8, !dbg !691, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !152), !dbg !691
  %.pre15 = load double* %freal.i, align 8, !dbg !691, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !154), !dbg !691
  %.pre16 = load double* %greal.i, align 8, !dbg !691, !tbaa !273
  br label %if.then47.i, !dbg !693

if.then47.i:                                      ; preds = %if.end40.i.if.then47.i_crit_edge, %if.end40.thread.i
  %arrayidx49.i.pre-phi = phi double* [ %arrayidx16.i, %if.end40.i.if.then47.i_crit_edge ], [ %arrayidx49.i.pre, %if.end40.thread.i ], !dbg !691
  %30 = phi double [ %.pre16, %if.end40.i.if.then47.i_crit_edge ], [ %mul9.i, %if.end40.thread.i ]
  %31 = phi double [ %.pre15, %if.end40.i.if.then47.i_crit_edge ], [ %mul8.i, %if.end40.thread.i ]
  %32 = phi double [ %.pre, %if.end40.i.if.then47.i_crit_edge ], [ %mul6.i, %if.end40.thread.i ]
  %sub44384.i = phi i32 [ %sub44.i, %if.end40.i.if.then47.i_crit_edge ], [ %sub44369.i, %if.end40.thread.i ]
  %add42382.i = phi i32 [ %add42.i, %if.end40.i.if.then47.i_crit_edge ], [ %add42368.i, %if.end40.thread.i ]
  %bimag.0341381.i = phi double [ %22, %if.end40.i.if.then47.i_crit_edge ], [ undef, %if.end40.thread.i ]
  %creal.0342379.i = phi double [ %25, %if.end40.i.if.then47.i_crit_edge ], [ %17, %if.end40.thread.i ]
  %cimag.0343377.i = phi double [ %26, %if.end40.i.if.then47.i_crit_edge ], [ undef, %if.end40.thread.i ]
  %breal.0344375.i = phi double [ %21, %if.end40.i.if.then47.i_crit_edge ], [ %14, %if.end40.thread.i ]
  %aimag.0345373.i = phi double [ %20, %if.end40.i.if.then47.i_crit_edge ], [ undef, %if.end40.thread.i ]
  %areal.0346371.i = phi double [ %19, %if.end40.i.if.then47.i_crit_edge ], [ %13, %if.end40.thread.i ]
  %idxprom50.i = sext i32 %add42382.i to i64, !dbg !691
  %arrayidx51.i = getelementptr inbounds double* %call.i, i64 %idxprom50.i, !dbg !691
  call void @llvm.dbg.value(metadata !{double* %ereal.i}, i64 0, metadata !681) #2, !dbg !691
  call void @llvm.dbg.value(metadata !{double* %ereal.i}, i64 0, metadata !150), !dbg !691
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !683) #2, !dbg !691
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !152), !dbg !691
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !685) #2, !dbg !691
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !154), !dbg !691
  call void @DVscale2(i32 %sub44384.i, double* %arrayidx49.i.pre-phi, double* %arrayidx51.i, double %32, double %31, double %31, double %30) #8, !dbg !691
  br label %if.end71.i, !dbg !717

if.else52.i:                                      ; preds = %if.end40.i
  %33 = load i32* %symflag, align 4, !dbg !718, !tbaa !236
  %cmp54.i = icmp eq i32 %33, 1, !dbg !718
  %arrayidx58.i = getelementptr inbounds double* %call.i, i64 4, !dbg !719
  %mul59.i = shl nsw i32 %add42.i, 1, !dbg !719
  %idxprom60.i = sext i32 %mul59.i to i64, !dbg !719
  %arrayidx61.i = getelementptr inbounds double* %call.i, i64 %idxprom60.i, !dbg !719
  call void @llvm.dbg.value(metadata !{double* %ereal.i}, i64 0, metadata !681) #2, !dbg !719
  call void @llvm.dbg.value(metadata !{double* %ereal.i}, i64 0, metadata !150), !dbg !719
  %34 = load double* %ereal.i, align 8, !dbg !719, !tbaa !273
  br i1 %cmp54.i, label %if.then55.i, label %if.else63.i, !dbg !718

if.then55.i:                                      ; preds = %if.else52.i
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !683) #2, !dbg !719
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !152), !dbg !719
  %35 = load double* %freal.i, align 8, !dbg !719, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %fimag.i}, i64 0, metadata !721) #2, !dbg !719
  call void @llvm.dbg.value(metadata !{double* %fimag.i}, i64 0, metadata !153), !dbg !719
  %36 = load double* %fimag.i, align 8, !dbg !719, !tbaa !273
  %sub62.i = fsub double -0.000000e+00, %36, !dbg !719
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !685) #2, !dbg !719
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !154), !dbg !719
  %37 = load double* %greal.i, align 8, !dbg !719, !tbaa !273
  call void @ZVscale2(i32 %sub44.i, double* %arrayidx58.i, double* %arrayidx61.i, double %34, double 0.000000e+00, double %35, double %36, double %35, double %sub62.i, double %37, double 0.000000e+00) #8, !dbg !719
  br label %if.end71.i, !dbg !722

if.else63.i:                                      ; preds = %if.else52.i
  call void @llvm.dbg.value(metadata !{double* %eimag.i}, i64 0, metadata !709) #2, !dbg !723
  call void @llvm.dbg.value(metadata !{double* %eimag.i}, i64 0, metadata !151), !dbg !723
  %38 = load double* %eimag.i, align 8, !dbg !723, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !683) #2, !dbg !723
  call void @llvm.dbg.value(metadata !{double* %freal.i}, i64 0, metadata !152), !dbg !723
  %39 = load double* %freal.i, align 8, !dbg !723, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %fimag.i}, i64 0, metadata !721) #2, !dbg !723
  call void @llvm.dbg.value(metadata !{double* %fimag.i}, i64 0, metadata !153), !dbg !723
  %40 = load double* %fimag.i, align 8, !dbg !723, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !685) #2, !dbg !723
  call void @llvm.dbg.value(metadata !{double* %greal.i}, i64 0, metadata !154), !dbg !723
  %41 = load double* %greal.i, align 8, !dbg !723, !tbaa !273
  call void @llvm.dbg.value(metadata !{double* %gimag.i}, i64 0, metadata !707) #2, !dbg !723
  call void @llvm.dbg.value(metadata !{double* %gimag.i}, i64 0, metadata !155), !dbg !723
  %42 = load double* %gimag.i, align 8, !dbg !723, !tbaa !273
  call void @ZVscale2(i32 %sub44.i, double* %arrayidx58.i, double* %arrayidx61.i, double %34, double %38, double %39, double %40, double %39, double %40, double %41, double %42) #8, !dbg !723
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else63.i, %if.then55.i, %if.then47.i
  %add42383.i = phi i32 [ %add42.i, %if.then55.i ], [ %add42.i, %if.else63.i ], [ %add42382.i, %if.then47.i ]
  %bimag.0341380.i = phi double [ %22, %if.then55.i ], [ %22, %if.else63.i ], [ %bimag.0341381.i, %if.then47.i ]
  %creal.0342378.i = phi double [ %25, %if.then55.i ], [ %25, %if.else63.i ], [ %creal.0342379.i, %if.then47.i ]
  %cimag.0343376.i = phi double [ %26, %if.then55.i ], [ %26, %if.else63.i ], [ %cimag.0343377.i, %if.then47.i ]
  %breal.0344374.i = phi double [ %21, %if.then55.i ], [ %21, %if.else63.i ], [ %breal.0344375.i, %if.then47.i ]
  %aimag.0345372.i = phi double [ %20, %if.then55.i ], [ %20, %if.else63.i ], [ %aimag.0345373.i, %if.then47.i ]
  %areal.0346370.i = phi double [ %19, %if.then55.i ], [ %19, %if.else63.i ], [ %areal.0346371.i, %if.then47.i ]
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !725
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !168), !dbg !725
  %43 = load i32* %nD.i, align 4, !dbg !725, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !672) #2, !dbg !725
  call void @llvm.dbg.value(metadata !{i32* %nU.i}, i64 0, metadata !170), !dbg !725
  %44 = load i32* %nU.i, align 4, !dbg !725, !tbaa !236
  %add72.i = add i32 %44, %43, !dbg !725
  call void @llvm.dbg.value(metadata !{i32 %add72.i}, i64 0, metadata !726) #2, !dbg !727
  call void @llvm.dbg.value(metadata !686, i64 0, metadata !728) #2, !dbg !729
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !729
  %cmp77348.i = icmp sgt i32 %43, 2, !dbg !729
  br i1 %cmp77348.i, label %for.body.lr.ph.i, label %symmetric2x2.exit, !dbg !729

for.body.lr.ph.i:                                 ; preds = %if.end71.i
  %sub73.i = add nsw i32 %add72.i, -2, !dbg !725
  %45 = sext i32 %add72.i to i64
  %46 = sext i32 %add42383.i to i64, !dbg !729
  br label %for.body.i, !dbg !729

for.body.i:                                       ; preds = %if.end196.for.body_crit_edge.i, %for.body.lr.ph.i
  %indvars.iv362.i = phi i64 [ 2, %for.body.lr.ph.i ], [ %indvars.iv.next363.i, %if.end196.for.body_crit_edge.i ], !dbg !729
  %indvars.iv359.i = phi i64 [ %46, %for.body.lr.ph.i ], [ %indvars.iv.next360.i, %if.end196.for.body_crit_edge.i ], !dbg !729
  %indvars.iv.i = phi i64 [ %45, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end196.for.body_crit_edge.i ]
  %usize.0357.i = phi i32 [ %sub73.i, %for.body.lr.ph.i ], [ %dec198.i, %if.end196.for.body_crit_edge.i ]
  %u0jloc.0355.i = phi i32 [ 3, %for.body.lr.ph.i ], [ %phitmp366.i, %if.end196.for.body_crit_edge.i ]
  %dloc.0353.i = phi i32 [ %add72.i, %for.body.lr.ph.i ], [ %add78.i, %if.end196.for.body_crit_edge.i ]
  %l1real.0352.i = phi double [ undef, %for.body.lr.ph.i ], [ %l1real.1392.i, %if.end196.for.body_crit_edge.i ]
  %l0real.0351.i = phi double [ undef, %for.body.lr.ph.i ], [ %l0real.1390.i, %if.end196.for.body_crit_edge.i ]
  %l1imag.0350.i = phi double [ undef, %for.body.lr.ph.i ], [ %l1imag.1388.i, %if.end196.for.body_crit_edge.i ]
  %l0imag.0349.i = phi double [ undef, %for.body.lr.ph.i ], [ %l0imag.1386.i, %if.end196.for.body_crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !729
  %47 = trunc i64 %indvars.iv.next.i to i32, !dbg !731
  %add78.i = add nsw i32 %dloc.0353.i, %47, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %add78.i}, i64 0, metadata !726) #2, !dbg !731
  %48 = load i32* %type.i, align 4, !dbg !733, !tbaa !236
  switch i32 %48, label %if.end166.i [
    i32 1, label %if.end166.thread.i
    i32 2, label %if.then96.i
  ], !dbg !733

if.end166.thread.i:                               ; preds = %for.body.i
  %arrayidx84.i = getelementptr inbounds double* %call.i, i64 %indvars.iv362.i, !dbg !734
  %49 = load double* %arrayidx84.i, align 8, !dbg !734, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %49}, i64 0, metadata !736) #2, !dbg !734
  %arrayidx86.i = getelementptr inbounds double* %call.i, i64 %indvars.iv359.i, !dbg !737
  %50 = load double* %arrayidx86.i, align 8, !dbg !737, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %50}, i64 0, metadata !738) #2, !dbg !737
  %mul87.i = fmul double %areal.0346370.i, %49, !dbg !739
  %mul88.i = fmul double %breal.0344374.i, %50, !dbg !739
  %add89.i = fadd double %mul87.i, %mul88.i, !dbg !739
  call void @llvm.dbg.value(metadata !{double %add89.i}, i64 0, metadata !740) #2, !dbg !739
  %mul90.i = fmul double %breal.0344374.i, %49, !dbg !741
  %mul91.i = fmul double %creal.0342378.i, %50, !dbg !741
  %add92.i = fadd double %mul90.i, %mul91.i, !dbg !741
  call void @llvm.dbg.value(metadata !{double %add92.i}, i64 0, metadata !742) #2, !dbg !741
  br label %if.then169.i, !dbg !743

if.then96.i:                                      ; preds = %for.body.i
  %51 = trunc i64 %indvars.iv362.i to i32, !dbg !744
  %mul97.i = shl nsw i32 %51, 1, !dbg !744
  %idxprom98.i = sext i32 %mul97.i to i64, !dbg !744
  %arrayidx99.i = getelementptr inbounds double* %call.i, i64 %idxprom98.i, !dbg !744
  %52 = load double* %arrayidx99.i, align 8, !dbg !744, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %52}, i64 0, metadata !736) #2, !dbg !744
  %add101336.i = or i32 %mul97.i, 1, !dbg !746
  %idxprom102.i = sext i32 %add101336.i to i64, !dbg !746
  %arrayidx103.i = getelementptr inbounds double* %call.i, i64 %idxprom102.i, !dbg !746
  %53 = load double* %arrayidx103.i, align 8, !dbg !746, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %53}, i64 0, metadata !747) #2, !dbg !746
  %54 = trunc i64 %indvars.iv359.i to i32, !dbg !748
  %mul104.i = shl nsw i32 %54, 1, !dbg !748
  %idxprom105.i = sext i32 %mul104.i to i64, !dbg !748
  %arrayidx106.i = getelementptr inbounds double* %call.i, i64 %idxprom105.i, !dbg !748
  %55 = load double* %arrayidx106.i, align 8, !dbg !748, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %55}, i64 0, metadata !738) #2, !dbg !748
  %add108337.i = or i32 %mul104.i, 1, !dbg !749
  %idxprom109.i = sext i32 %add108337.i to i64, !dbg !749
  %arrayidx110.i = getelementptr inbounds double* %call.i, i64 %idxprom109.i, !dbg !749
  %56 = load double* %arrayidx110.i, align 8, !dbg !749, !tbaa !273
  call void @llvm.dbg.value(metadata !{double %56}, i64 0, metadata !750) #2, !dbg !749
  %57 = load i32* %symflag, align 4, !dbg !751, !tbaa !236
  %cmp112.i = icmp eq i32 %57, 1, !dbg !751
  %mul114.i = fmul double %areal.0346370.i, %52, !dbg !752
  br i1 %cmp112.i, label %if.end166.thread393.i, label %if.else135.i, !dbg !751

if.end166.thread393.i:                            ; preds = %if.then96.i
  %mul115.i = fmul double %breal.0344374.i, %55, !dbg !752
  %add116.i = fadd double %mul114.i, %mul115.i, !dbg !752
  %mul117.i = fmul double %bimag.0341380.i, %56, !dbg !752
  %sub118.i = fsub double %add116.i, %mul117.i, !dbg !752
  call void @llvm.dbg.value(metadata !{double %sub118.i}, i64 0, metadata !740) #2, !dbg !752
  %58 = fmul double %areal.0346370.i, %53, !dbg !754
  %mul120.i = fsub double -0.000000e+00, %58, !dbg !754
  %mul121.i = fmul double %bimag.0341380.i, %55, !dbg !754
  %sub122.i = fsub double %mul120.i, %mul121.i, !dbg !754
  %mul123.i = fmul double %breal.0344374.i, %56, !dbg !754
  %sub124.i = fsub double %sub122.i, %mul123.i, !dbg !754
  call void @llvm.dbg.value(metadata !{double %sub124.i}, i64 0, metadata !755) #2, !dbg !754
  %mul125.i = fmul double %breal.0344374.i, %52, !dbg !756
  %mul126.i = fmul double %bimag.0341380.i, %53, !dbg !756
  %add127.i = fadd double %mul125.i, %mul126.i, !dbg !756
  %mul128.i = fmul double %creal.0342378.i, %55, !dbg !756
  %add129.i = fadd double %add127.i, %mul128.i, !dbg !756
  call void @llvm.dbg.value(metadata !{double %add129.i}, i64 0, metadata !742) #2, !dbg !756
  %mul130.i = fmul double %bimag.0341380.i, %52, !dbg !757
  %mul131.i = fmul double %breal.0344374.i, %53, !dbg !757
  %sub132.i = fsub double %mul130.i, %mul131.i, !dbg !757
  %mul133.i = fmul double %creal.0342378.i, %56, !dbg !757
  %sub134.i = fsub double %sub132.i, %mul133.i, !dbg !757
  call void @llvm.dbg.value(metadata !{double %sub134.i}, i64 0, metadata !758) #2, !dbg !757
  br label %if.then181.i, !dbg !743

if.else135.i:                                     ; preds = %if.then96.i
  %mul137.i = fmul double %aimag.0345372.i, %53, !dbg !759
  %sub138.i = fsub double %mul114.i, %mul137.i, !dbg !759
  %mul139.i = fmul double %breal.0344374.i, %55, !dbg !759
  %add140.i = fadd double %sub138.i, %mul139.i, !dbg !759
  %mul141.i = fmul double %bimag.0341380.i, %56, !dbg !759
  %sub142.i = fsub double %add140.i, %mul141.i, !dbg !759
  call void @llvm.dbg.value(metadata !{double %sub142.i}, i64 0, metadata !740) #2, !dbg !759
  %mul143.i = fmul double %aimag.0345372.i, %52, !dbg !761
  %mul144.i = fmul double %areal.0346370.i, %53, !dbg !761
  %add145.i = fadd double %mul143.i, %mul144.i, !dbg !761
  %mul146.i = fmul double %bimag.0341380.i, %55, !dbg !761
  %add147.i = fadd double %add145.i, %mul146.i, !dbg !761
  %mul148.i = fmul double %breal.0344374.i, %56, !dbg !761
  %add149.i = fadd double %add147.i, %mul148.i, !dbg !761
  call void @llvm.dbg.value(metadata !{double %add149.i}, i64 0, metadata !755) #2, !dbg !761
  %mul150.i = fmul double %breal.0344374.i, %52, !dbg !762
  %mul151.i = fmul double %bimag.0341380.i, %53, !dbg !762
  %sub152.i = fsub double %mul150.i, %mul151.i, !dbg !762
  %mul153.i = fmul double %creal.0342378.i, %55, !dbg !762
  %add154.i = fadd double %sub152.i, %mul153.i, !dbg !762
  %mul155.i = fmul double %cimag.0343376.i, %56, !dbg !762
  %sub156.i = fsub double %add154.i, %mul155.i, !dbg !762
  call void @llvm.dbg.value(metadata !{double %sub156.i}, i64 0, metadata !742) #2, !dbg !762
  %mul157.i = fmul double %bimag.0341380.i, %52, !dbg !763
  %mul158.i = fmul double %breal.0344374.i, %53, !dbg !763
  %add159.i = fadd double %mul157.i, %mul158.i, !dbg !763
  %mul160.i = fmul double %cimag.0343376.i, %55, !dbg !763
  %add161.i = fadd double %add159.i, %mul160.i, !dbg !763
  %mul162.i = fmul double %creal.0342378.i, %56, !dbg !763
  %add163.i = fadd double %add161.i, %mul162.i, !dbg !763
  call void @llvm.dbg.value(metadata !{double %add163.i}, i64 0, metadata !758) #2, !dbg !763
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.else135.i, %for.body.i
  %l0imag.1.i = phi double [ %l0imag.0349.i, %for.body.i ], [ %add149.i, %if.else135.i ]
  %l1imag.1.i = phi double [ %l1imag.0350.i, %for.body.i ], [ %add163.i, %if.else135.i ]
  %l0real.1.i = phi double [ %l0real.0351.i, %for.body.i ], [ %sub142.i, %if.else135.i ]
  %l1real.1.i = phi double [ %l1real.0352.i, %for.body.i ], [ %sub156.i, %if.else135.i ]
  switch i32 %48, label %if.end196.i [
    i32 1, label %if.end166.i.if.then169.i_crit_edge
    i32 2, label %if.end166.i.if.then181.i_crit_edge
  ], !dbg !743

if.end166.i.if.then169.i_crit_edge:               ; preds = %if.end166.i
  %arrayidx174.i.pre = getelementptr inbounds double* %call.i, i64 %indvars.iv362.i, !dbg !764
  %arrayidx177.i.pre = getelementptr inbounds double* %call.i, i64 %indvars.iv359.i, !dbg !764
  br label %if.then169.i, !dbg !743

if.end166.i.if.then181.i_crit_edge:               ; preds = %if.end166.i
  %.pre17 = trunc i64 %indvars.iv362.i to i32, !dbg !766
  %mul187.i.pre = shl nsw i32 %.pre17, 1, !dbg !766
  %idxprom188.i.pre = sext i32 %mul187.i.pre to i64, !dbg !766
  %arrayidx189.i.pre = getelementptr inbounds double* %call.i, i64 %idxprom188.i.pre, !dbg !766
  %.pre18 = trunc i64 %indvars.iv359.i to i32, !dbg !766
  %mul192.i.pre = shl nsw i32 %.pre18, 1, !dbg !766
  %idxprom193.i.pre = sext i32 %mul192.i.pre to i64, !dbg !766
  %arrayidx194.i.pre = getelementptr inbounds double* %call.i, i64 %idxprom193.i.pre, !dbg !766
  br label %if.then181.i, !dbg !743

if.then169.i:                                     ; preds = %if.end166.i.if.then169.i_crit_edge, %if.end166.thread.i
  %arrayidx177.i.pre-phi = phi double* [ %arrayidx177.i.pre, %if.end166.i.if.then169.i_crit_edge ], [ %arrayidx86.i, %if.end166.thread.i ], !dbg !764
  %arrayidx174.i.pre-phi = phi double* [ %arrayidx174.i.pre, %if.end166.i.if.then169.i_crit_edge ], [ %arrayidx84.i, %if.end166.thread.i ], !dbg !764
  %l1real.1391.i = phi double [ %l1real.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %add92.i, %if.end166.thread.i ]
  %l0real.1389.i = phi double [ %l0real.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %add89.i, %if.end166.thread.i ]
  %l1imag.1387.i = phi double [ %l1imag.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %l1imag.0350.i, %if.end166.thread.i ]
  %l0imag.1385.i = phi double [ %l0imag.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %l0imag.0349.i, %if.end166.thread.i ]
  %idxprom170.i = sext i32 %add78.i to i64, !dbg !764
  %arrayidx171.i = getelementptr inbounds double* %call.i, i64 %idxprom170.i, !dbg !764
  %sub172.i = fsub double -0.000000e+00, %l0real.1389.i, !dbg !764
  %sub175.i = fsub double -0.000000e+00, %l1real.1391.i, !dbg !764
  call void @DVaxpy2(i32 %usize.0357.i, double* %arrayidx171.i, double %sub172.i, double* %arrayidx174.i.pre-phi, double %sub175.i, double* %arrayidx177.i.pre-phi) #8, !dbg !764
  br label %if.end196.i, !dbg !768

if.then181.i:                                     ; preds = %if.end166.i.if.then181.i_crit_edge, %if.end166.thread393.i
  %arrayidx194.i.pre-phi = phi double* [ %arrayidx194.i.pre, %if.end166.i.if.then181.i_crit_edge ], [ %arrayidx106.i, %if.end166.thread393.i ], !dbg !766
  %arrayidx189.i.pre-phi = phi double* [ %arrayidx189.i.pre, %if.end166.i.if.then181.i_crit_edge ], [ %arrayidx99.i, %if.end166.thread393.i ], !dbg !766
  %l1real.1397.i = phi double [ %l1real.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %add129.i, %if.end166.thread393.i ]
  %l0real.1396.i = phi double [ %l0real.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %sub118.i, %if.end166.thread393.i ]
  %l1imag.1395.i = phi double [ %l1imag.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %sub134.i, %if.end166.thread393.i ]
  %l0imag.1394.i = phi double [ %l0imag.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %sub124.i, %if.end166.thread393.i ]
  %mul182.i = shl nsw i32 %add78.i, 1, !dbg !766
  %idxprom183.i = sext i32 %mul182.i to i64, !dbg !766
  %arrayidx184.i = getelementptr inbounds double* %call.i, i64 %idxprom183.i, !dbg !766
  %sub185.i = fsub double -0.000000e+00, %l0real.1396.i, !dbg !766
  %sub186.i = fsub double -0.000000e+00, %l0imag.1394.i, !dbg !766
  %sub190.i = fsub double -0.000000e+00, %l1real.1397.i, !dbg !766
  %sub191.i = fsub double -0.000000e+00, %l1imag.1395.i, !dbg !766
  call void @ZVaxpy2(i32 %usize.0357.i, double* %arrayidx184.i, double %sub185.i, double %sub186.i, double* %arrayidx189.i.pre-phi, double %sub190.i, double %sub191.i, double* %arrayidx194.i.pre-phi) #8, !dbg !766
  br label %if.end196.i, !dbg !769

if.end196.i:                                      ; preds = %if.then181.i, %if.then169.i, %if.end166.i
  %l1real.1392.i = phi double [ %l1real.1.i, %if.end166.i ], [ %l1real.1397.i, %if.then181.i ], [ %l1real.1391.i, %if.then169.i ]
  %l0real.1390.i = phi double [ %l0real.1.i, %if.end166.i ], [ %l0real.1396.i, %if.then181.i ], [ %l0real.1389.i, %if.then169.i ]
  %l1imag.1388.i = phi double [ %l1imag.1.i, %if.end166.i ], [ %l1imag.1395.i, %if.then181.i ], [ %l1imag.1387.i, %if.then169.i ]
  %l0imag.1386.i = phi double [ %l0imag.1.i, %if.end166.i ], [ %l0imag.1394.i, %if.then181.i ], [ %l0imag.1385.i, %if.then169.i ]
  call void @llvm.dbg.value(metadata !{i32 %u0jloc.0355.i}, i64 0, metadata !687) #2, !dbg !770
  call void @llvm.dbg.value(metadata !{i32 %u0jloc.0355.i}, i64 0, metadata !728) #2, !dbg !729
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !670) #2, !dbg !729
  call void @llvm.dbg.value(metadata !{i32* %nD.i}, i64 0, metadata !168), !dbg !729
  %59 = load i32* %nD.i, align 4, !dbg !729, !tbaa !236
  %cmp77.i = icmp slt i32 %u0jloc.0355.i, %59, !dbg !729
  br i1 %cmp77.i, label %if.end196.for.body_crit_edge.i, label %symmetric2x2.exit, !dbg !729

if.end196.for.body_crit_edge.i:                   ; preds = %if.end196.i
  %indvars.iv.next360.i = add i64 %indvars.iv359.i, 1, !dbg !729
  %dec198.i = add nsw i32 %usize.0357.i, -1, !dbg !770
  %indvars.iv.next363.i = add i64 %indvars.iv362.i, 1, !dbg !729
  %phitmp366.i = add i32 %u0jloc.0355.i, 1, !dbg !729
  br label %for.body.i, !dbg !729

symmetric2x2.exit:                                ; preds = %if.end196.i, %if.then.i, %if.end37.i, %if.end71.i
  %retval.0.i = phi i32 [ 0, %if.end37.i ], [ 0, %if.then.i ], [ 1, %if.end71.i ], [ 1, %if.end196.i ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !771
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !771
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !771
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !771
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !771
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !771
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !771
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !771
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !771
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !114), !dbg !658
  ret i32 %retval.0.i, !dbg !772
}

; Function Attrs: optsize
declare void @Chv_swapRows(%struct._Chv*, i32, i32) #5

; Function Attrs: optsize
declare void @Chv_swapColumns(%struct._Chv*, i32, i32) #5

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #5

; Function Attrs: optsize
declare double* @Chv_diagLocation(%struct._Chv*, i32) #5

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #5

; Function Attrs: optsize
declare double @Zabs(double, double) #5

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #5

; Function Attrs: optsize
declare void @DVzero(i32, double*) #5

; Function Attrs: optsize
declare void @ZVzero(i32, double*) #5

; Function Attrs: optsize
declare i32 @Zrecip2(double, double, double, double, double, double, double, double, double*, double*, double*, double*, double*, double*, double*, double*) #5

; Function Attrs: optsize
declare void @DVscale2(i32, double*, double*, double, double, double, double) #5

; Function Attrs: optsize
declare void @ZVscale2(i32, double*, double*, double, double, double, double, double, double, double, double) #5

; Function Attrs: optsize
declare void @DVaxpy2(i32, double*, double, double*, double, double*) #5

; Function Attrs: optsize
declare void @ZVaxpy2(i32, double*, double, double, double*, double, double, double*) #5

; Function Attrs: optsize
declare i32 @Zrecip(double, double, double*, double*) #5

; Function Attrs: optsize
declare void @DVscale(i32, double*, double) #5

; Function Attrs: optsize
declare void @ZVscale(i32, double*, double, double) #5

; Function Attrs: optsize
declare void @DVaxpy(i32, double*, double, double*) #5

; Function Attrs: optsize
declare void @ZVaxpy(i32, double*, double, double, double*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !80, metadata !105, metadata !111, metadata !115, metadata !130, metadata !141, metadata !178, metadata !202}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_factorWithNoPivoting", metadata !"Chv_factorWithNoPivoting", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, %struct._PatchAndGoInfo*)* @Chv_factorWithNoPivoting, null, null, metadata !58, i32 22} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 22] [Chv_factorWithNoPivoting]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !38}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !12, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PatchAndGoInfo]
!39 = metadata !{i32 786454, metadata !1, null, metadata !"PatchAndGoInfo", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [PatchAndGoInfo] [line 31, size 0, align 0, offset 0] [from _PatchAndGoInfo]
!40 = metadata !{i32 786451, metadata !41, null, metadata !"_PatchAndGoInfo", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [_PatchAndGoInfo] [line 32, size 320, align 64, offset 0] [from ]
!41 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../PatchAndGoInfo/PatchAndGoInfo.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !56}
!43 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"strategy", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [strategy] [line 33, size 32, align 32, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"toosmall", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [toosmall] [line 34, size 64, align 64, offset 64] [from double]
!45 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"fudge", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fudge] [line 35, size 64, align 64, offset 128] [from double]
!46 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"fudgeIV", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [fudgeIV] [line 36, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!48 = metadata !{i32 786454, metadata !41, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!49 = metadata !{i32 786451, metadata !50, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !51, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!50 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55}
!52 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!53 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!54 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!55 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!56 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"fudgeDV", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !57} ; [ DW_TAG_member ] [fudgeDV] [line 37, size 64, align 64, offset 256] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!59 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777236, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 20]
!60 = metadata !{i32 786689, metadata !4, metadata !"info", metadata !5, i32 33554453, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 21]
!61 = metadata !{i32 786688, metadata !4, metadata !"wrkChv", metadata !5, i32 23, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wrkChv] [line 23]
!62 = metadata !{i32 786688, metadata !4, metadata !"ncol", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 24]
!63 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 24]
!64 = metadata !{i32 786688, metadata !4, metadata !"nelim", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nelim] [line 24]
!65 = metadata !{i32 786688, metadata !4, metadata !"nrow", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 24]
!66 = metadata !{i32 786688, metadata !4, metadata !"colind", metadata !5, i32 25, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 25]
!67 = metadata !{i32 786688, metadata !4, metadata !"rowind", metadata !5, i32 25, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 25]
!68 = metadata !{i32 786688, metadata !69, metadata !"colmaxabs", metadata !5, i32 67, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colmaxabs] [line 67]
!69 = metadata !{i32 786443, metadata !1, metadata !4, i32 66, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!70 = metadata !{i32 786688, metadata !69, metadata !"diagabs", metadata !5, i32 67, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diagabs] [line 67]
!71 = metadata !{i32 786688, metadata !69, metadata !"offmaxabs", metadata !5, i32 67, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offmaxabs] [line 67]
!72 = metadata !{i32 786688, metadata !69, metadata !"rowmaxabs", metadata !5, i32 67, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmaxabs] [line 67]
!73 = metadata !{i32 786688, metadata !74, metadata !"colmaxabs", metadata !5, i32 96, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colmaxabs] [line 96]
!74 = metadata !{i32 786443, metadata !1, metadata !4, i32 95, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!75 = metadata !{i32 786688, metadata !74, metadata !"diagabs", metadata !5, i32 96, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diagabs] [line 96]
!76 = metadata !{i32 786688, metadata !74, metadata !"olddiag", metadata !5, i32 96, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [olddiag] [line 96]
!77 = metadata !{i32 786688, metadata !74, metadata !"newdiag", metadata !5, i32 96, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newdiag] [line 96]
!78 = metadata !{i32 786688, metadata !74, metadata !"offmaxabs", metadata !5, i32 96, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offmaxabs] [line 96]
!79 = metadata !{i32 786688, metadata !74, metadata !"rowmaxabs", metadata !5, i32 96, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmaxabs] [line 96]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_factorWithPivoting", metadata !"Chv_factorWithPivoting", metadata !"", i32 160, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, i32, %struct._IV*, %struct._DV*, double, i32*)* @Chv_factorWithPivoting, null, null, metadata !83, i32 168} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 168] [Chv_factorWithPivoting]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !8, metadata !9, metadata !8, metadata !8, metadata !47, metadata !57, metadata !25, metadata !21}
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!84 = metadata !{i32 786689, metadata !80, metadata !"chv", metadata !5, i32 16777377, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 161]
!85 = metadata !{i32 786689, metadata !80, metadata !"ndelay", metadata !5, i32 33554594, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndelay] [line 162]
!86 = metadata !{i32 786689, metadata !80, metadata !"pivotflag", metadata !5, i32 50331811, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pivotflag] [line 163]
!87 = metadata !{i32 786689, metadata !80, metadata !"pivotsizesIV", metadata !5, i32 67109028, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pivotsizesIV] [line 164]
!88 = metadata !{i32 786689, metadata !80, metadata !"workDV", metadata !5, i32 83886245, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workDV] [line 165]
!89 = metadata !{i32 786689, metadata !80, metadata !"tau", metadata !5, i32 100663462, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 166]
!90 = metadata !{i32 786689, metadata !80, metadata !"pntest", metadata !5, i32 117440679, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pntest] [line 167]
!91 = metadata !{i32 786688, metadata !80, metadata !"wrkChv", metadata !5, i32 169, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wrkChv] [line 169]
!92 = metadata !{i32 786688, metadata !80, metadata !"irow", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 170]
!93 = metadata !{i32 786688, metadata !80, metadata !"jcol", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 170]
!94 = metadata !{i32 786688, metadata !80, metadata !"ncol", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 170]
!95 = metadata !{i32 786688, metadata !80, metadata !"nD", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 170]
!96 = metadata !{i32 786688, metadata !80, metadata !"nelim", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nelim] [line 170]
!97 = metadata !{i32 786688, metadata !80, metadata !"nrow", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 170]
!98 = metadata !{i32 786688, metadata !80, metadata !"pivotsize", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsize] [line 170]
!99 = metadata !{i32 786688, metadata !80, metadata !"colind", metadata !5, i32 171, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 171]
!100 = metadata !{i32 786688, metadata !80, metadata !"rowind", metadata !5, i32 171, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 171]
!101 = metadata !{i32 786688, metadata !102, metadata !"itemp", metadata !5, i32 256, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 256]
!102 = metadata !{i32 786443, metadata !1, metadata !103, i32 255, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!103 = metadata !{i32 786443, metadata !1, metadata !104, i32 241, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!104 = metadata !{i32 786443, metadata !1, metadata !80, i32 228, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_r1upd", metadata !"Chv_r1upd", metadata !"", i32 444, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_r1upd, null, null, metadata !108, i32 446} ; [ DW_TAG_subprogram ] [line 444] [def] [scope 446] [Chv_r1upd]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{metadata !8, metadata !9}
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786689, metadata !105, metadata !"chv", metadata !5, i32 16777661, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 445]
!110 = metadata !{i32 786688, metadata !105, metadata !"rc", metadata !5, i32 447, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 447]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_r2upd", metadata !"Chv_r2upd", metadata !"", i32 479, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_r2upd, null, null, metadata !112, i32 481} ; [ DW_TAG_subprogram ] [line 479] [def] [scope 481] [Chv_r2upd]
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786689, metadata !111, metadata !"chv", metadata !5, i32 16777696, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 480]
!114 = metadata !{i32 786688, metadata !111, metadata !"rc", metadata !5, i32 482, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 482]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabsInChevron", metadata !"Chv_maxabsInChevron", metadata !"", i32 1121, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, double*, double*, double*)* @Chv_maxabsInChevron, null, null, metadata !118, i32 1127} ; [ DW_TAG_subprogram ] [line 1121] [def] [scope 1127] [Chv_maxabsInChevron]
!116 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !9, metadata !8, metadata !24, metadata !24, metadata !24}
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129}
!119 = metadata !{i32 786689, metadata !115, metadata !"chv", metadata !5, i32 16778338, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 1122]
!120 = metadata !{i32 786689, metadata !115, metadata !"ichv", metadata !5, i32 33555555, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ichv] [line 1123]
!121 = metadata !{i32 786689, metadata !115, metadata !"pdiagmaxabs", metadata !5, i32 50332772, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pdiagmaxabs] [line 1124]
!122 = metadata !{i32 786689, metadata !115, metadata !"prowmaxabs", metadata !5, i32 67109989, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowmaxabs] [line 1125]
!123 = metadata !{i32 786689, metadata !115, metadata !"pcolmaxabs", metadata !5, i32 83887206, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolmaxabs] [line 1126]
!124 = metadata !{i32 786688, metadata !115, metadata !"pdiag", metadata !5, i32 1128, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdiag] [line 1128]
!125 = metadata !{i32 786688, metadata !115, metadata !"length", metadata !5, i32 1129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 1129]
!126 = metadata !{i32 786688, metadata !115, metadata !"loc", metadata !5, i32 1129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 1129]
!127 = metadata !{i32 786688, metadata !115, metadata !"nD", metadata !5, i32 1129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 1129]
!128 = metadata !{i32 786688, metadata !115, metadata !"nL", metadata !5, i32 1129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 1129]
!129 = metadata !{i32 786688, metadata !115, metadata !"nU", metadata !5, i32 1129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 1129]
!130 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_zeroOffdiagonalOfChevron", metadata !"Chv_zeroOffdiagonalOfChevron", metadata !"", i32 1190, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32)* @Chv_zeroOffdiagonalOfChevron, null, null, metadata !133, i32 1193} ; [ DW_TAG_subprogram ] [line 1190] [def] [scope 1193] [Chv_zeroOffdiagonalOfChevron]
!131 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{null, metadata !9, metadata !8}
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!134 = metadata !{i32 786689, metadata !130, metadata !"chv", metadata !5, i32 16778407, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 1191]
!135 = metadata !{i32 786689, metadata !130, metadata !"ichv", metadata !5, i32 33555624, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ichv] [line 1192]
!136 = metadata !{i32 786688, metadata !130, metadata !"pdiag", metadata !5, i32 1194, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdiag] [line 1194]
!137 = metadata !{i32 786688, metadata !130, metadata !"length", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 1195]
!138 = metadata !{i32 786688, metadata !130, metadata !"nD", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 1195]
!139 = metadata !{i32 786688, metadata !130, metadata !"nL", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 1195]
!140 = metadata !{i32 786688, metadata !130, metadata !"nU", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 1195]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"symmetric2x2", metadata !"symmetric2x2", metadata !"", i32 883, metadata !106, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !142, i32 885} ; [ DW_TAG_subprogram ] [line 883] [local] [def] [scope 885] [symmetric2x2]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176}
!143 = metadata !{i32 786689, metadata !141, metadata !"chv", metadata !5, i32 16778100, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 884]
!144 = metadata !{i32 786688, metadata !141, metadata !"areal", metadata !5, i32 886, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [areal] [line 886]
!145 = metadata !{i32 786688, metadata !141, metadata !"aimag", metadata !5, i32 886, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aimag] [line 886]
!146 = metadata !{i32 786688, metadata !141, metadata !"breal", metadata !5, i32 886, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [breal] [line 886]
!147 = metadata !{i32 786688, metadata !141, metadata !"bimag", metadata !5, i32 886, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bimag] [line 886]
!148 = metadata !{i32 786688, metadata !141, metadata !"creal", metadata !5, i32 886, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [creal] [line 886]
!149 = metadata !{i32 786688, metadata !141, metadata !"cimag", metadata !5, i32 886, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cimag] [line 886]
!150 = metadata !{i32 786688, metadata !141, metadata !"ereal", metadata !5, i32 887, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ereal] [line 887]
!151 = metadata !{i32 786688, metadata !141, metadata !"eimag", metadata !5, i32 887, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eimag] [line 887]
!152 = metadata !{i32 786688, metadata !141, metadata !"freal", metadata !5, i32 887, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [freal] [line 887]
!153 = metadata !{i32 786688, metadata !141, metadata !"fimag", metadata !5, i32 887, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fimag] [line 887]
!154 = metadata !{i32 786688, metadata !141, metadata !"greal", metadata !5, i32 887, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [greal] [line 887]
!155 = metadata !{i32 786688, metadata !141, metadata !"gimag", metadata !5, i32 887, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gimag] [line 887]
!156 = metadata !{i32 786688, metadata !141, metadata !"l0imag", metadata !5, i32 888, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l0imag] [line 888]
!157 = metadata !{i32 786688, metadata !141, metadata !"l1imag", metadata !5, i32 888, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l1imag] [line 888]
!158 = metadata !{i32 786688, metadata !141, metadata !"l0real", metadata !5, i32 888, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l0real] [line 888]
!159 = metadata !{i32 786688, metadata !141, metadata !"l1real", metadata !5, i32 888, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l1real] [line 888]
!160 = metadata !{i32 786688, metadata !141, metadata !"u0imag", metadata !5, i32 889, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u0imag] [line 889]
!161 = metadata !{i32 786688, metadata !141, metadata !"u1imag", metadata !5, i32 889, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u1imag] [line 889]
!162 = metadata !{i32 786688, metadata !141, metadata !"u0real", metadata !5, i32 889, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u0real] [line 889]
!163 = metadata !{i32 786688, metadata !141, metadata !"u1real", metadata !5, i32 889, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u1real] [line 889]
!164 = metadata !{i32 786688, metadata !141, metadata !"entries", metadata !5, i32 890, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 890]
!165 = metadata !{i32 786688, metadata !141, metadata !"dloc", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dloc] [line 891]
!166 = metadata !{i32 786688, metadata !141, metadata !"dstride", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstride] [line 891]
!167 = metadata !{i32 786688, metadata !141, metadata !"kchv", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kchv] [line 891]
!168 = metadata !{i32 786688, metadata !141, metadata !"nD", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 891]
!169 = metadata !{i32 786688, metadata !141, metadata !"nL", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 891]
!170 = metadata !{i32 786688, metadata !141, metadata !"nU", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 891]
!171 = metadata !{i32 786688, metadata !141, metadata !"rc", metadata !5, i32 891, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 891]
!172 = metadata !{i32 786688, metadata !141, metadata !"u0jloc", metadata !5, i32 892, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u0jloc] [line 892]
!173 = metadata !{i32 786688, metadata !141, metadata !"u1jloc", metadata !5, i32 892, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u1jloc] [line 892]
!174 = metadata !{i32 786688, metadata !141, metadata !"ukbeg", metadata !5, i32 892, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ukbeg] [line 892]
!175 = metadata !{i32 786688, metadata !141, metadata !"usize", metadata !5, i32 892, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize] [line 892]
!176 = metadata !{i32 786688, metadata !177, metadata !"denom", metadata !5, i32 919, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [denom] [line 919]
!177 = metadata !{i32 786443, metadata !1, metadata !141, i32 918, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!178 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"nonsym1x1", metadata !"nonsym1x1", metadata !"", i32 672, metadata !106, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !179, i32 674} ; [ DW_TAG_subprogram ] [line 672] [local] [def] [scope 674] [nonsym1x1]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!180 = metadata !{i32 786689, metadata !178, metadata !"chv", metadata !5, i32 16777889, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 673]
!181 = metadata !{i32 786688, metadata !178, metadata !"dimag", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dimag] [line 675]
!182 = metadata !{i32 786688, metadata !178, metadata !"dreal", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dreal] [line 675]
!183 = metadata !{i32 786688, metadata !178, metadata !"fac1", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac1] [line 675]
!184 = metadata !{i32 786688, metadata !178, metadata !"fac2", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac2] [line 675]
!185 = metadata !{i32 786688, metadata !178, metadata !"limag", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limag] [line 675]
!186 = metadata !{i32 786688, metadata !178, metadata !"lreal", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lreal] [line 675]
!187 = metadata !{i32 786688, metadata !178, metadata !"uimag", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uimag] [line 675]
!188 = metadata !{i32 786688, metadata !178, metadata !"ureal", metadata !5, i32 675, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ureal] [line 675]
!189 = metadata !{i32 786688, metadata !178, metadata !"entries", metadata !5, i32 676, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 676]
!190 = metadata !{i32 786688, metadata !178, metadata !"dloc", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dloc] [line 677]
!191 = metadata !{i32 786688, metadata !178, metadata !"dstride", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstride] [line 677]
!192 = metadata !{i32 786688, metadata !178, metadata !"kchv", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kchv] [line 677]
!193 = metadata !{i32 786688, metadata !178, metadata !"ljiloc", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ljiloc] [line 677]
!194 = metadata !{i32 786688, metadata !178, metadata !"lkbeg", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lkbeg] [line 677]
!195 = metadata !{i32 786688, metadata !178, metadata !"lsize", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsize] [line 677]
!196 = metadata !{i32 786688, metadata !178, metadata !"nD", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 677]
!197 = metadata !{i32 786688, metadata !178, metadata !"nL", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 677]
!198 = metadata !{i32 786688, metadata !178, metadata !"nU", metadata !5, i32 677, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 677]
!199 = metadata !{i32 786688, metadata !178, metadata !"uijloc", metadata !5, i32 678, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uijloc] [line 678]
!200 = metadata !{i32 786688, metadata !178, metadata !"ukbeg", metadata !5, i32 678, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ukbeg] [line 678]
!201 = metadata !{i32 786688, metadata !178, metadata !"usize", metadata !5, i32 678, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize] [line 678]
!202 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"symmetric1x1", metadata !"symmetric1x1", metadata !"", i32 511, metadata !106, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !203, i32 513} ; [ DW_TAG_subprogram ] [line 511] [local] [def] [scope 513] [symmetric1x1]
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222}
!204 = metadata !{i32 786689, metadata !202, metadata !"chv", metadata !5, i32 16777728, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 512]
!205 = metadata !{i32 786688, metadata !202, metadata !"dimag", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dimag] [line 514]
!206 = metadata !{i32 786688, metadata !202, metadata !"dreal", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dreal] [line 514]
!207 = metadata !{i32 786688, metadata !202, metadata !"fac1", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac1] [line 514]
!208 = metadata !{i32 786688, metadata !202, metadata !"fac2", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac2] [line 514]
!209 = metadata !{i32 786688, metadata !202, metadata !"limag", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limag] [line 514]
!210 = metadata !{i32 786688, metadata !202, metadata !"lreal", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lreal] [line 514]
!211 = metadata !{i32 786688, metadata !202, metadata !"uimag", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uimag] [line 514]
!212 = metadata !{i32 786688, metadata !202, metadata !"ureal", metadata !5, i32 514, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ureal] [line 514]
!213 = metadata !{i32 786688, metadata !202, metadata !"entries", metadata !5, i32 515, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 515]
!214 = metadata !{i32 786688, metadata !202, metadata !"dloc", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dloc] [line 516]
!215 = metadata !{i32 786688, metadata !202, metadata !"dstride", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstride] [line 516]
!216 = metadata !{i32 786688, metadata !202, metadata !"kchv", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kchv] [line 516]
!217 = metadata !{i32 786688, metadata !202, metadata !"nD", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 516]
!218 = metadata !{i32 786688, metadata !202, metadata !"nL", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 516]
!219 = metadata !{i32 786688, metadata !202, metadata !"nU", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 516]
!220 = metadata !{i32 786688, metadata !202, metadata !"uijloc", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uijloc] [line 516]
!221 = metadata !{i32 786688, metadata !202, metadata !"ukbeg", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ukbeg] [line 516]
!222 = metadata !{i32 786688, metadata !202, metadata !"usize", metadata !5, i32 516, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize] [line 516]
!223 = metadata !{i32 20, i32 0, metadata !4, null}
!224 = metadata !{i32 21, i32 0, metadata !4, null}
!225 = metadata !{i32 23, i32 0, metadata !4, null}
!226 = metadata !{i32 24, i32 0, metadata !4, null}
!227 = metadata !{i32 25, i32 0, metadata !4, null}
!228 = metadata !{i32 31, i32 0, metadata !4, null}
!229 = metadata !{i32 32, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!231 = metadata !{metadata !"any pointer", metadata !232}
!232 = metadata !{metadata !"omnipotent char", metadata !233}
!233 = metadata !{metadata !"Simple C/C++ TBAA"}
!234 = metadata !{i32 34, i32 0, metadata !230, null}
!235 = metadata !{i32 36, i32 0, metadata !4, null}
!236 = metadata !{metadata !"int", metadata !232}
!237 = metadata !{i32 42, i32 0, metadata !4, null}
!238 = metadata !{i32 43, i32 0, metadata !4, null}
!239 = metadata !{i32 44, i32 0, metadata !4, null}
!240 = metadata !{i32 45, i32 0, metadata !4, null}
!241 = metadata !{i32 46, i32 0, metadata !4, null}
!242 = metadata !{i32 52, i32 0, metadata !4, null}
!243 = metadata !{i32 59, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!245 = metadata !{i32 60, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !244, i32 59, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!247 = metadata !{i32 63, i32 0, metadata !246, null}
!248 = metadata !{i32 64, i32 0, metadata !246, null}
!249 = metadata !{i32 66, i32 0, metadata !4, null}
!250 = metadata !{i32 105, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !74, i32 105, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!252 = metadata !{i32 108, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !251, i32 105, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!254 = metadata !{i32 114, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !256, i32 113, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!256 = metadata !{i32 786443, metadata !1, metadata !253, i32 108, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!257 = metadata !{i32 119, i32 0, metadata !256, null}
!258 = metadata !{i32 122, i32 0, metadata !256, null}
!259 = metadata !{i32 120, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !256, i32 119, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!261 = metadata !{i32 77, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !69, i32 77, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!263 = metadata !{i32 80, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !262, i32 77, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!265 = metadata !{i32 82, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !267, i32 81, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!267 = metadata !{i32 786443, metadata !1, metadata !264, i32 80, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!268 = metadata !{i32 88, i32 0, metadata !267, null}
!269 = metadata !{i32 89, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !267, i32 88, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!271 = metadata !{i32 78, i32 0, metadata !264, null}
!272 = metadata !{i32 79, i32 0, metadata !264, null}
!273 = metadata !{metadata !"double", metadata !232}
!274 = metadata !{i32 81, i32 0, metadata !267, null}
!275 = metadata !{i32 85, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !267, i32 83, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!277 = metadata !{i32 87, i32 0, metadata !267, null}
!278 = metadata !{i32 90, i32 0, metadata !270, null}
!279 = metadata !{i32 92, i32 0, metadata !264, null}
!280 = metadata !{i32 93, i32 0, metadata !264, null}
!281 = metadata !{i32 106, i32 0, metadata !253, null}
!282 = metadata !{i32 107, i32 0, metadata !253, null}
!283 = metadata !{i32 109, i32 0, metadata !256, null}
!284 = metadata !{i32 110, i32 0, metadata !256, null}
!285 = metadata !{double 1.000000e+00}
!286 = metadata !{i32 111, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !256, i32 110, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!288 = metadata !{i32 113, i32 0, metadata !256, null}
!289 = metadata !{i32 117, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !256, i32 115, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!291 = metadata !{i32 121, i32 0, metadata !260, null}
!292 = metadata !{i32 123, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !256, i32 122, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!294 = metadata !{i32 124, i32 0, metadata !293, null}
!295 = metadata !{i32 126, i32 0, metadata !253, null}
!296 = metadata !{i32 127, i32 0, metadata !253, null}
!297 = metadata !{i32 130, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !4, i32 129, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!299 = metadata !{i32 133, i32 0, metadata !298, null}
!300 = metadata !{i32 135, i32 0, metadata !4, null}
!301 = metadata !{i32 445, i32 0, metadata !105, null}
!302 = metadata !{i32 447, i32 0, metadata !105, null}
!303 = metadata !{i32 449, i32 0, metadata !105, null}
!304 = metadata !{i32 450, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !105, i32 449, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!306 = metadata !{i32 452, i32 0, metadata !305, null}
!307 = metadata !{i32 454, i32 0, metadata !105, null}
!308 = metadata !{i32 673, i32 0, metadata !178, metadata !309}
!309 = metadata !{i32 455, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !105, i32 454, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!311 = metadata !{i32 786689, metadata !178, metadata !"chv", metadata !5, i32 16777889, metadata !9, i32 0, metadata !309} ; [ DW_TAG_arg_variable ] [chv] [line 673]
!312 = metadata !{i32 675, i32 0, metadata !178, metadata !309}
!313 = metadata !{i32 677, i32 0, metadata !178, metadata !309}
!314 = metadata !{i32 684, i32 0, metadata !178, metadata !309}
!315 = metadata !{i32 685, i32 0, metadata !178, metadata !309}
!316 = metadata !{i32 786688, metadata !178, metadata !"entries", metadata !5, i32 676, metadata !24, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [entries] [line 676]
!317 = metadata !{i32 786688, metadata !178, metadata !"nD", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [nD] [line 677]
!318 = metadata !{i32 698, i32 0, metadata !178, metadata !309}
!319 = metadata !{i32 786688, metadata !178, metadata !"nL", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [nL] [line 677]
!320 = metadata !{i32 786688, metadata !178, metadata !"dloc", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [dloc] [line 677]
!321 = metadata !{i32 786688, metadata !178, metadata !"nU", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [nU] [line 677]
!322 = metadata !{i32 699, i32 0, metadata !178, metadata !309}
!323 = metadata !{i32 786688, metadata !178, metadata !"lsize", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [lsize] [line 677]
!324 = metadata !{i32 700, i32 0, metadata !178, metadata !309}
!325 = metadata !{i32 701, i32 0, metadata !178, metadata !309}
!326 = metadata !{i32 786688, metadata !178, metadata !"usize", metadata !5, i32 678, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [usize] [line 678]
!327 = metadata !{i32 711, i32 0, metadata !178, metadata !309}
!328 = metadata !{i32 712, i32 0, metadata !329, metadata !309}
!329 = metadata !{i32 786443, metadata !1, metadata !178, i32 711, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!330 = metadata !{i32 786688, metadata !178, metadata !"dreal", metadata !5, i32 675, metadata !25, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [dreal] [line 675]
!331 = metadata !{i32 713, i32 0, metadata !329, metadata !309}
!332 = metadata !{i32 717, i32 0, metadata !333, metadata !309}
!333 = metadata !{i32 786443, metadata !1, metadata !178, i32 716, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!334 = metadata !{i32 718, i32 0, metadata !333, metadata !309}
!335 = metadata !{i32 786688, metadata !178, metadata !"dimag", metadata !5, i32 675, metadata !25, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [dimag] [line 675]
!336 = metadata !{i32 719, i32 0, metadata !333, metadata !309}
!337 = metadata !{i32 735, i32 0, metadata !338, metadata !309}
!338 = metadata !{i32 786443, metadata !1, metadata !178, i32 734, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!339 = metadata !{i32 786688, metadata !178, metadata !"fac1", metadata !5, i32 675, metadata !25, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [fac1] [line 675]
!340 = metadata !{i32 749, i32 0, metadata !178, metadata !309}
!341 = metadata !{i32 737, i32 0, metadata !342, metadata !309}
!342 = metadata !{i32 786443, metadata !1, metadata !178, i32 736, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!343 = metadata !{i32 742, i32 0, metadata !342, metadata !309}
!344 = metadata !{i32 750, i32 0, metadata !345, metadata !309}
!345 = metadata !{i32 786443, metadata !1, metadata !178, i32 749, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!346 = metadata !{i32 751, i32 0, metadata !345, metadata !309}
!347 = metadata !{i32 752, i32 0, metadata !348, metadata !309}
!348 = metadata !{i32 786443, metadata !1, metadata !178, i32 751, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!349 = metadata !{i32 786688, metadata !178, metadata !"fac2", metadata !5, i32 675, metadata !25, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [fac2] [line 675]
!350 = metadata !{i32 764, i32 0, metadata !348, metadata !309}
!351 = metadata !{i32 786688, metadata !178, metadata !"uijloc", metadata !5, i32 678, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [uijloc] [line 678]
!352 = metadata !{i32 773, i32 0, metadata !178, metadata !309}
!353 = metadata !{i32 1}
!354 = metadata !{i32 786688, metadata !178, metadata !"kchv", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [kchv] [line 677]
!355 = metadata !{i32 774, i32 0, metadata !356, metadata !309}
!356 = metadata !{i32 786443, metadata !1, metadata !178, i32 774, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!357 = metadata !{i32 783, i32 0, metadata !358, metadata !309}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 774, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!359 = metadata !{i32 784, i32 0, metadata !358, metadata !309}
!360 = metadata !{i32 785, i32 0, metadata !358, metadata !309}
!361 = metadata !{i32 786, i32 0, metadata !358, metadata !309}
!362 = metadata !{i32 786688, metadata !178, metadata !"lkbeg", metadata !5, i32 677, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [lkbeg] [line 677]
!363 = metadata !{i32 787, i32 0, metadata !358, metadata !309}
!364 = metadata !{i32 786688, metadata !178, metadata !"ukbeg", metadata !5, i32 678, metadata !8, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [ukbeg] [line 678]
!365 = metadata !{i32 801, i32 0, metadata !358, metadata !309}
!366 = metadata !{i32 805, i32 0, metadata !367, metadata !309}
!367 = metadata !{i32 786443, metadata !1, metadata !358, i32 804, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!368 = metadata !{i32 806, i32 0, metadata !367, metadata !309}
!369 = metadata !{i32 786688, metadata !178, metadata !"limag", metadata !5, i32 675, metadata !25, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [limag] [line 675]
!370 = metadata !{i32 807, i32 0, metadata !367, metadata !309}
!371 = metadata !{i32 808, i32 0, metadata !367, metadata !309}
!372 = metadata !{i32 786688, metadata !178, metadata !"uimag", metadata !5, i32 675, metadata !25, i32 0, metadata !309} ; [ DW_TAG_auto_variable ] [uimag] [line 675]
!373 = metadata !{i32 815, i32 0, metadata !367, metadata !309}
!374 = metadata !{i32 821, i32 0, metadata !358, metadata !309}
!375 = metadata !{i32 822, i32 0, metadata !376, metadata !309}
!376 = metadata !{i32 786443, metadata !1, metadata !358, i32 821, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!377 = metadata !{i32 833, i32 0, metadata !378, metadata !309}
!378 = metadata !{i32 786443, metadata !1, metadata !358, i32 832, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!379 = metadata !{i32 834, i32 0, metadata !378, metadata !309}
!380 = metadata !{i32 824, i32 0, metadata !381, metadata !309}
!381 = metadata !{i32 786443, metadata !1, metadata !358, i32 823, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!382 = metadata !{i32 825, i32 0, metadata !381, metadata !309}
!383 = metadata !{i32 835, i32 0, metadata !384, metadata !309}
!384 = metadata !{i32 786443, metadata !1, metadata !358, i32 834, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!385 = metadata !{i32 836, i32 0, metadata !384, metadata !309}
!386 = metadata !{i32 842, i32 0, metadata !358, metadata !309}
!387 = metadata !{i32 843, i32 0, metadata !388, metadata !309}
!388 = metadata !{i32 786443, metadata !1, metadata !358, i32 842, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!389 = metadata !{i32 844, i32 0, metadata !388, metadata !309}
!390 = metadata !{i32 845, i32 0, metadata !391, metadata !309}
!391 = metadata !{i32 786443, metadata !1, metadata !358, i32 844, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!392 = metadata !{i32 847, i32 0, metadata !391, metadata !309}
!393 = metadata !{i32 860, i32 0, metadata !178, metadata !309}
!394 = metadata !{i32 861, i32 0, metadata !178, metadata !309}
!395 = metadata !{i32 862, i32 0, metadata !396, metadata !309}
!396 = metadata !{i32 786443, metadata !1, metadata !178, i32 861, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!397 = metadata !{i32 863, i32 0, metadata !396, metadata !309}
!398 = metadata !{i32 864, i32 0, metadata !399, metadata !309}
!399 = metadata !{i32 786443, metadata !1, metadata !178, i32 863, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!400 = metadata !{i32 865, i32 0, metadata !399, metadata !309}
!401 = metadata !{i32 512, i32 0, metadata !202, metadata !402}
!402 = metadata !{i32 457, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !105, i32 456, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!404 = metadata !{i32 786689, metadata !202, metadata !"chv", metadata !5, i32 16777728, metadata !9, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [chv] [line 512]
!405 = metadata !{i32 514, i32 0, metadata !202, metadata !402}
!406 = metadata !{i32 516, i32 0, metadata !202, metadata !402}
!407 = metadata !{i32 522, i32 0, metadata !202, metadata !402}
!408 = metadata !{i32 523, i32 0, metadata !202, metadata !402}
!409 = metadata !{i32 786688, metadata !202, metadata !"entries", metadata !5, i32 515, metadata !24, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [entries] [line 515]
!410 = metadata !{i32 786688, metadata !202, metadata !"dloc", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [dloc] [line 516]
!411 = metadata !{i32 535, i32 0, metadata !202, metadata !402}
!412 = metadata !{i32 786688, metadata !202, metadata !"nD", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [nD] [line 516]
!413 = metadata !{i32 536, i32 0, metadata !202, metadata !402}
!414 = metadata !{i32 786688, metadata !202, metadata !"nU", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [nU] [line 516]
!415 = metadata !{i32 786688, metadata !202, metadata !"dstride", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [dstride] [line 516]
!416 = metadata !{i32 537, i32 0, metadata !202, metadata !402}
!417 = metadata !{i32 786688, metadata !202, metadata !"usize", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [usize] [line 516]
!418 = metadata !{i32 547, i32 0, metadata !202, metadata !402}
!419 = metadata !{i32 548, i32 0, metadata !420, metadata !402}
!420 = metadata !{i32 786443, metadata !1, metadata !202, i32 547, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!421 = metadata !{i32 786688, metadata !202, metadata !"dreal", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [dreal] [line 514]
!422 = metadata !{i32 549, i32 0, metadata !420, metadata !402}
!423 = metadata !{i32 552, i32 0, metadata !420, metadata !402}
!424 = metadata !{i32 786688, metadata !202, metadata !"fac1", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [fac1] [line 514]
!425 = metadata !{i32 587, i32 0, metadata !426, metadata !402}
!426 = metadata !{i32 786443, metadata !1, metadata !202, i32 586, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!427 = metadata !{i32 586, i32 0, metadata !202, metadata !402}
!428 = metadata !{i32 554, i32 0, metadata !429, metadata !402}
!429 = metadata !{i32 786443, metadata !1, metadata !202, i32 553, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!430 = metadata !{i32 555, i32 0, metadata !429, metadata !402}
!431 = metadata !{i32 786688, metadata !202, metadata !"dimag", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [dimag] [line 514]
!432 = metadata !{i32 556, i32 0, metadata !429, metadata !402}
!433 = metadata !{i32 570, i32 0, metadata !429, metadata !402}
!434 = metadata !{i32 571, i32 0, metadata !435, metadata !402}
!435 = metadata !{i32 786443, metadata !1, metadata !429, i32 570, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!436 = metadata !{double 0.000000e+00}
!437 = metadata !{i32 786688, metadata !202, metadata !"fac2", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [fac2] [line 514]
!438 = metadata !{i32 572, i32 0, metadata !435, metadata !402}
!439 = metadata !{i32 574, i32 0, metadata !440, metadata !402}
!440 = metadata !{i32 786443, metadata !1, metadata !429, i32 573, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!441 = metadata !{i32 588, i32 0, metadata !426, metadata !402}
!442 = metadata !{i32 588, i32 0, metadata !202, metadata !402}
!443 = metadata !{i32 589, i32 0, metadata !444, metadata !402}
!444 = metadata !{i32 786443, metadata !1, metadata !202, i32 588, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!445 = metadata !{i32 590, i32 0, metadata !444, metadata !402}
!446 = metadata !{i32 591, i32 0, metadata !447, metadata !402}
!447 = metadata !{i32 786443, metadata !1, metadata !202, i32 590, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!448 = metadata !{i32 600, i32 0, metadata !449, metadata !402}
!449 = metadata !{i32 786443, metadata !1, metadata !202, i32 600, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!450 = metadata !{i32 607, i32 0, metadata !451, metadata !402}
!451 = metadata !{i32 786443, metadata !1, metadata !449, i32 600, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!452 = metadata !{i32 619, i32 0, metadata !451, metadata !402}
!453 = metadata !{i32 620, i32 0, metadata !454, metadata !402}
!454 = metadata !{i32 786443, metadata !1, metadata !451, i32 619, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!455 = metadata !{i32 786688, metadata !202, metadata !"ureal", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [ureal] [line 514]
!456 = metadata !{i32 621, i32 0, metadata !454, metadata !402}
!457 = metadata !{i32 786688, metadata !202, metadata !"lreal", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [lreal] [line 514]
!458 = metadata !{i32 644, i32 0, metadata !451, metadata !402}
!459 = metadata !{i32 623, i32 0, metadata !460, metadata !402}
!460 = metadata !{i32 786443, metadata !1, metadata !451, i32 622, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!461 = metadata !{i32 624, i32 0, metadata !460, metadata !402}
!462 = metadata !{i32 786688, metadata !202, metadata !"uimag", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [uimag] [line 514]
!463 = metadata !{i32 625, i32 0, metadata !460, metadata !402}
!464 = metadata !{i32 626, i32 0, metadata !465, metadata !402}
!465 = metadata !{i32 786443, metadata !1, metadata !460, i32 625, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!466 = metadata !{i32 627, i32 0, metadata !465, metadata !402}
!467 = metadata !{i32 786688, metadata !202, metadata !"limag", metadata !5, i32 514, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [limag] [line 514]
!468 = metadata !{i32 629, i32 0, metadata !469, metadata !402}
!469 = metadata !{i32 786443, metadata !1, metadata !460, i32 628, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!470 = metadata !{i32 630, i32 0, metadata !469, metadata !402}
!471 = metadata !{i32 645, i32 0, metadata !472, metadata !402}
!472 = metadata !{i32 786443, metadata !1, metadata !451, i32 644, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!473 = metadata !{i32 647, i32 0, metadata !474, metadata !402}
!474 = metadata !{i32 786443, metadata !1, metadata !451, i32 646, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!475 = metadata !{i32 646, i32 0, metadata !472, metadata !402}
!476 = metadata !{i32 649, i32 0, metadata !474, metadata !402}
!477 = metadata !{i32 786688, metadata !202, metadata !"uijloc", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [uijloc] [line 516]
!478 = metadata !{i32 655, i32 0, metadata !451, metadata !402}
!479 = metadata !{i32 786688, metadata !202, metadata !"kchv", metadata !5, i32 516, metadata !8, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [kchv] [line 516]
!480 = metadata !{i32 459, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !105, i32 458, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!482 = metadata !{i32 461, i32 0, metadata !481, null}
!483 = metadata !{i32 463, i32 0, metadata !105, null}
!484 = metadata !{i32 1122, i32 0, metadata !115, null}
!485 = metadata !{i32 1123, i32 0, metadata !115, null}
!486 = metadata !{i32 1124, i32 0, metadata !115, null}
!487 = metadata !{i32 1125, i32 0, metadata !115, null}
!488 = metadata !{i32 1126, i32 0, metadata !115, null}
!489 = metadata !{i32 1129, i32 0, metadata !115, null}
!490 = metadata !{i32 1135, i32 0, metadata !115, null}
!491 = metadata !{i32 1137, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !115, i32 1136, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!493 = metadata !{i32 1139, i32 0, metadata !492, null}
!494 = metadata !{i32 1141, i32 0, metadata !115, null}
!495 = metadata !{i32 1142, i32 0, metadata !115, null}
!496 = metadata !{i32 1143, i32 0, metadata !115, null}
!497 = metadata !{i32 1144, i32 0, metadata !115, null}
!498 = metadata !{i32 1145, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !115, i32 1144, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!500 = metadata !{i32 1146, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !499, i32 1145, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!502 = metadata !{i32 1147, i32 0, metadata !501, null}
!503 = metadata !{i32 1148, i32 0, metadata !501, null}
!504 = metadata !{i32 1149, i32 0, metadata !501, null}
!505 = metadata !{i32 1150, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !499, i32 1149, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!507 = metadata !{i32 1151, i32 0, metadata !506, null}
!508 = metadata !{i32 1152, i32 0, metadata !506, null}
!509 = metadata !{i32 1154, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !499, i32 1153, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!511 = metadata !{i32 1157, i32 0, metadata !510, null}
!512 = metadata !{i32 1160, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !115, i32 1159, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!514 = metadata !{i32 1161, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !513, i32 1160, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!516 = metadata !{i32 1162, i32 0, metadata !515, null}
!517 = metadata !{i32 1163, i32 0, metadata !515, null}
!518 = metadata !{i32 1164, i32 0, metadata !515, null}
!519 = metadata !{i32 1165, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !513, i32 1164, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!521 = metadata !{i32 1166, i32 0, metadata !520, null}
!522 = metadata !{i32 1167, i32 0, metadata !520, null}
!523 = metadata !{i32 1169, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !513, i32 1168, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!525 = metadata !{i32 1172, i32 0, metadata !524, null}
!526 = metadata !{i32 1175, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !115, i32 1174, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!528 = metadata !{i32 1177, i32 0, metadata !527, null}
!529 = metadata !{i32 1179, i32 0, metadata !115, null}
!530 = metadata !{i32 1191, i32 0, metadata !130, null}
!531 = metadata !{i32 1192, i32 0, metadata !130, null}
!532 = metadata !{i32 1195, i32 0, metadata !130, null}
!533 = metadata !{i32 1201, i32 0, metadata !130, null}
!534 = metadata !{i32 1202, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !130, i32 1201, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!536 = metadata !{i32 1204, i32 0, metadata !535, null}
!537 = metadata !{i32 1206, i32 0, metadata !130, null}
!538 = metadata !{i32 1207, i32 0, metadata !130, null}
!539 = metadata !{i32 1208, i32 0, metadata !130, null}
!540 = metadata !{i32 1209, i32 0, metadata !130, null}
!541 = metadata !{i32 1210, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !130, i32 1209, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!543 = metadata !{i32 1211, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !542, i32 1210, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!545 = metadata !{i32 1212, i32 0, metadata !544, null}
!546 = metadata !{i32 1213, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !542, i32 1212, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!548 = metadata !{i32 1214, i32 0, metadata !547, null}
!549 = metadata !{i32 1216, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !542, i32 1215, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!551 = metadata !{i32 1220, i32 0, metadata !550, null}
!552 = metadata !{i32 1223, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !130, i32 1222, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!554 = metadata !{i32 1224, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !553, i32 1223, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!556 = metadata !{i32 1225, i32 0, metadata !555, null}
!557 = metadata !{i32 1226, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !553, i32 1225, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!559 = metadata !{i32 1227, i32 0, metadata !558, null}
!560 = metadata !{i32 1229, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !553, i32 1228, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!562 = metadata !{i32 1233, i32 0, metadata !561, null}
!563 = metadata !{i32 1236, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !130, i32 1235, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!565 = metadata !{i32 1238, i32 0, metadata !564, null}
!566 = metadata !{i32 1240, i32 0, metadata !130, null}
!567 = metadata !{i32 161, i32 0, metadata !80, null}
!568 = metadata !{i32 162, i32 0, metadata !80, null}
!569 = metadata !{i32 163, i32 0, metadata !80, null}
!570 = metadata !{i32 164, i32 0, metadata !80, null}
!571 = metadata !{i32 165, i32 0, metadata !80, null}
!572 = metadata !{i32 166, i32 0, metadata !80, null}
!573 = metadata !{i32 167, i32 0, metadata !80, null}
!574 = metadata !{i32 169, i32 0, metadata !80, null}
!575 = metadata !{i32 170, i32 0, metadata !80, null}
!576 = metadata !{i32 171, i32 0, metadata !80, null}
!577 = metadata !{i32 177, i32 0, metadata !80, null}
!578 = metadata !{i32 178, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !80, i32 177, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!580 = metadata !{i32 180, i32 0, metadata !579, null}
!581 = metadata !{i32 182, i32 0, metadata !80, null}
!582 = metadata !{i32 183, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !80, i32 182, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!584 = metadata !{i32 185, i32 0, metadata !583, null}
!585 = metadata !{i32 187, i32 0, metadata !80, null}
!586 = metadata !{i32 188, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !80, i32 187, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!588 = metadata !{i32 190, i32 0, metadata !587, null}
!589 = metadata !{i32 192, i32 0, metadata !80, null}
!590 = metadata !{i32 194, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !80, i32 193, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!592 = metadata !{i32 197, i32 0, metadata !591, null}
!593 = metadata !{i32 216, i32 0, metadata !80, null}
!594 = metadata !{i32 199, i32 0, metadata !80, null}
!595 = metadata !{i32 202, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !80, i32 201, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!597 = metadata !{i32 205, i32 0, metadata !596, null}
!598 = metadata !{i32 207, i32 0, metadata !80, null}
!599 = metadata !{i32 213, i32 0, metadata !80, null}
!600 = metadata !{i32 214, i32 0, metadata !80, null}
!601 = metadata !{i32 215, i32 0, metadata !80, null}
!602 = metadata !{i32 217, i32 0, metadata !80, null}
!603 = metadata !{i32 228, i32 0, metadata !80, null}
!604 = metadata !{i32 361, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !80, i32 354, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!606 = metadata !{i32 239, i32 0, metadata !104, null}
!607 = metadata !{i32 240, i32 0, metadata !104, null}
!608 = metadata !{i32 241, i32 0, metadata !104, null}
!609 = metadata !{i32 253, i32 0, metadata !103, null}
!610 = metadata !{i32 255, i32 0, metadata !103, null}
!611 = metadata !{i32 256, i32 0, metadata !102, null}
!612 = metadata !{i32 257, i32 0, metadata !102, null}
!613 = metadata !{i32 258, i32 0, metadata !102, null}
!614 = metadata !{i32 259, i32 0, metadata !102, null}
!615 = metadata !{i32 266, i32 0, metadata !103, null}
!616 = metadata !{i32 267, i32 0, metadata !103, null}
!617 = metadata !{i32 268, i32 0, metadata !103, null}
!618 = metadata !{i32 276, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !103, i32 275, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!620 = metadata !{i32 277, i32 0, metadata !619, null}
!621 = metadata !{i32 288, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !619, i32 277, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!623 = metadata !{i32 299, i32 0, metadata !622, null}
!624 = metadata !{i32 307, i32 0, metadata !622, null}
!625 = metadata !{i32 308, i32 0, metadata !622, null}
!626 = metadata !{i32 309, i32 0, metadata !622, null}
!627 = metadata !{i32 310, i32 0, metadata !622, null}
!628 = metadata !{i32 322, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !619, i32 310, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!630 = metadata !{i32 336, i32 0, metadata !629, null}
!631 = metadata !{i32 344, i32 0, metadata !629, null}
!632 = metadata !{i32 345, i32 0, metadata !629, null}
!633 = metadata !{i32 346, i32 0, metadata !629, null}
!634 = metadata !{i32 367, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !605, i32 361, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!636 = metadata !{i32 369, i32 0, metadata !635, null}
!637 = metadata !{i32 370, i32 0, metadata !635, null}
!638 = metadata !{i32 375, i32 0, metadata !635, null}
!639 = metadata !{i32 383, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !635, i32 382, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!641 = metadata !{i32 394, i32 0, metadata !640, null}
!642 = metadata !{i32 395, i32 0, metadata !640, null}
!643 = metadata !{i32 409, i32 0, metadata !640, null}
!644 = metadata !{i32 419, i32 0, metadata !640, null}
!645 = metadata !{i32 420, i32 0, metadata !640, null}
!646 = metadata !{i32 424, i32 0, metadata !80, null}
!647 = metadata !{i32 480, i32 0, metadata !111, null}
!648 = metadata !{i32 482, i32 0, metadata !111, null}
!649 = metadata !{i32 484, i32 0, metadata !111, null}
!650 = metadata !{i32 485, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !111, i32 484, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!652 = metadata !{i32 487, i32 0, metadata !651, null}
!653 = metadata !{i32 489, i32 0, metadata !111, null}
!654 = metadata !{i32 490, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !111, i32 489, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!656 = metadata !{i32 492, i32 0, metadata !655, null}
!657 = metadata !{i32 884, i32 0, metadata !141, metadata !658}
!658 = metadata !{i32 494, i32 0, metadata !111, null}
!659 = metadata !{i32 786689, metadata !141, metadata !"chv", metadata !5, i32 16778100, metadata !9, i32 0, metadata !658} ; [ DW_TAG_arg_variable ] [chv] [line 884]
!660 = metadata !{i32 887, i32 0, metadata !141, metadata !658}
!661 = metadata !{i32 891, i32 0, metadata !141, metadata !658}
!662 = metadata !{i32 898, i32 0, metadata !141, metadata !658}
!663 = metadata !{i32 899, i32 0, metadata !141, metadata !658}
!664 = metadata !{i32 786688, metadata !141, metadata !"entries", metadata !5, i32 890, metadata !24, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [entries] [line 890]
!665 = metadata !{i32 918, i32 0, metadata !141, metadata !658}
!666 = metadata !{i32 921, i32 0, metadata !177, metadata !658}
!667 = metadata !{i32 786688, metadata !141, metadata !"areal", metadata !5, i32 886, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [areal] [line 886]
!668 = metadata !{i32 922, i32 0, metadata !177, metadata !658}
!669 = metadata !{i32 786688, metadata !141, metadata !"breal", metadata !5, i32 886, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [breal] [line 886]
!670 = metadata !{i32 786688, metadata !141, metadata !"nD", metadata !5, i32 891, metadata !8, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [nD] [line 891]
!671 = metadata !{i32 923, i32 0, metadata !177, metadata !658}
!672 = metadata !{i32 786688, metadata !141, metadata !"nU", metadata !5, i32 891, metadata !8, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [nU] [line 891]
!673 = metadata !{i32 786688, metadata !141, metadata !"creal", metadata !5, i32 886, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [creal] [line 886]
!674 = metadata !{i32 924, i32 0, metadata !177, metadata !658}
!675 = metadata !{i32 786688, metadata !177, metadata !"denom", metadata !5, i32 919, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [denom] [line 919]
!676 = metadata !{i32 786688, metadata !141, metadata !"rc", metadata !5, i32 891, metadata !8, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [rc] [line 891]
!677 = metadata !{i32 927, i32 0, metadata !678, metadata !658}
!678 = metadata !{i32 786443, metadata !1, metadata !177, i32 926, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!679 = metadata !{i32 928, i32 0, metadata !678, metadata !658}
!680 = metadata !{i32 929, i32 0, metadata !678, metadata !658}
!681 = metadata !{i32 786688, metadata !141, metadata !"ereal", metadata !5, i32 887, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [ereal] [line 887]
!682 = metadata !{i32 930, i32 0, metadata !678, metadata !658}
!683 = metadata !{i32 786688, metadata !141, metadata !"freal", metadata !5, i32 887, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [freal] [line 887]
!684 = metadata !{i32 931, i32 0, metadata !678, metadata !658}
!685 = metadata !{i32 786688, metadata !141, metadata !"greal", metadata !5, i32 887, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [greal] [line 887]
!686 = metadata !{i32 2}
!687 = metadata !{i32 786688, metadata !141, metadata !"u0jloc", metadata !5, i32 892, metadata !8, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [u0jloc] [line 892]
!688 = metadata !{i32 1000, i32 0, metadata !141, metadata !658}
!689 = metadata !{i32 1001, i32 0, metadata !141, metadata !658}
!690 = metadata !{i32 1002, i32 0, metadata !141, metadata !658}
!691 = metadata !{i32 1004, i32 0, metadata !692, metadata !658}
!692 = metadata !{i32 786443, metadata !1, metadata !141, i32 1003, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!693 = metadata !{i32 1003, i32 0, metadata !141, metadata !658}
!694 = metadata !{i32 934, i32 0, metadata !695, metadata !658}
!695 = metadata !{i32 786443, metadata !1, metadata !141, i32 933, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!696 = metadata !{i32 935, i32 0, metadata !695, metadata !658}
!697 = metadata !{i32 786688, metadata !141, metadata !"aimag", metadata !5, i32 886, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [aimag] [line 886]
!698 = metadata !{i32 936, i32 0, metadata !695, metadata !658}
!699 = metadata !{i32 937, i32 0, metadata !695, metadata !658}
!700 = metadata !{i32 786688, metadata !141, metadata !"bimag", metadata !5, i32 886, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [bimag] [line 886]
!701 = metadata !{i32 938, i32 0, metadata !695, metadata !658}
!702 = metadata !{i32 939, i32 0, metadata !695, metadata !658}
!703 = metadata !{i32 786688, metadata !141, metadata !"cimag", metadata !5, i32 886, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [cimag] [line 886]
!704 = metadata !{i32 955, i32 0, metadata !695, metadata !658}
!705 = metadata !{i32 956, i32 0, metadata !706, metadata !658}
!706 = metadata !{i32 786443, metadata !1, metadata !695, i32 955, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!707 = metadata !{i32 786688, metadata !141, metadata !"gimag", metadata !5, i32 887, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [gimag] [line 887]
!708 = metadata !{i32 960, i32 0, metadata !706, metadata !658}
!709 = metadata !{i32 786688, metadata !141, metadata !"eimag", metadata !5, i32 887, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [eimag] [line 887]
!710 = metadata !{i32 961, i32 0, metadata !706, metadata !658}
!711 = metadata !{i32 962, i32 0, metadata !712, metadata !658}
!712 = metadata !{i32 786443, metadata !1, metadata !695, i32 961, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!713 = metadata !{i32 968, i32 0, metadata !714, metadata !658}
!714 = metadata !{i32 786443, metadata !1, metadata !141, i32 967, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!715 = metadata !{i32 970, i32 0, metadata !714, metadata !658}
!716 = metadata !{i32 972, i32 0, metadata !141, metadata !658}
!717 = metadata !{i32 1006, i32 0, metadata !692, metadata !658}
!718 = metadata !{i32 1006, i32 0, metadata !141, metadata !658}
!719 = metadata !{i32 1007, i32 0, metadata !720, metadata !658}
!720 = metadata !{i32 786443, metadata !1, metadata !141, i32 1006, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!721 = metadata !{i32 786688, metadata !141, metadata !"fimag", metadata !5, i32 887, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [fimag] [line 887]
!722 = metadata !{i32 1009, i32 0, metadata !720, metadata !658}
!723 = metadata !{i32 1010, i32 0, metadata !724, metadata !658}
!724 = metadata !{i32 786443, metadata !1, metadata !141, i32 1009, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!725 = metadata !{i32 1033, i32 0, metadata !141, metadata !658}
!726 = metadata !{i32 786688, metadata !141, metadata !"dloc", metadata !5, i32 891, metadata !8, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [dloc] [line 891]
!727 = metadata !{i32 1034, i32 0, metadata !141, metadata !658}
!728 = metadata !{i32 786688, metadata !141, metadata !"kchv", metadata !5, i32 891, metadata !8, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [kchv] [line 891]
!729 = metadata !{i32 1036, i32 0, metadata !730, metadata !658}
!730 = metadata !{i32 786443, metadata !1, metadata !141, i32 1036, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!731 = metadata !{i32 1043, i32 0, metadata !732, metadata !658}
!732 = metadata !{i32 786443, metadata !1, metadata !730, i32 1036, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!733 = metadata !{i32 1055, i32 0, metadata !732, metadata !658}
!734 = metadata !{i32 1056, i32 0, metadata !735, metadata !658}
!735 = metadata !{i32 786443, metadata !1, metadata !732, i32 1055, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!736 = metadata !{i32 786688, metadata !141, metadata !"u0real", metadata !5, i32 889, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [u0real] [line 889]
!737 = metadata !{i32 1057, i32 0, metadata !735, metadata !658}
!738 = metadata !{i32 786688, metadata !141, metadata !"u1real", metadata !5, i32 889, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [u1real] [line 889]
!739 = metadata !{i32 1058, i32 0, metadata !735, metadata !658}
!740 = metadata !{i32 786688, metadata !141, metadata !"l0real", metadata !5, i32 888, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [l0real] [line 888]
!741 = metadata !{i32 1059, i32 0, metadata !735, metadata !658}
!742 = metadata !{i32 786688, metadata !141, metadata !"l1real", metadata !5, i32 888, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [l1real] [line 888]
!743 = metadata !{i32 1092, i32 0, metadata !732, metadata !658}
!744 = metadata !{i32 1061, i32 0, metadata !745, metadata !658}
!745 = metadata !{i32 786443, metadata !1, metadata !732, i32 1060, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!746 = metadata !{i32 1062, i32 0, metadata !745, metadata !658}
!747 = metadata !{i32 786688, metadata !141, metadata !"u0imag", metadata !5, i32 889, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [u0imag] [line 889]
!748 = metadata !{i32 1063, i32 0, metadata !745, metadata !658}
!749 = metadata !{i32 1064, i32 0, metadata !745, metadata !658}
!750 = metadata !{i32 786688, metadata !141, metadata !"u1imag", metadata !5, i32 889, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [u1imag] [line 889]
!751 = metadata !{i32 1065, i32 0, metadata !745, metadata !658}
!752 = metadata !{i32 1066, i32 0, metadata !753, metadata !658}
!753 = metadata !{i32 786443, metadata !1, metadata !745, i32 1065, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!754 = metadata !{i32 1067, i32 0, metadata !753, metadata !658}
!755 = metadata !{i32 786688, metadata !141, metadata !"l0imag", metadata !5, i32 888, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [l0imag] [line 888]
!756 = metadata !{i32 1068, i32 0, metadata !753, metadata !658}
!757 = metadata !{i32 1069, i32 0, metadata !753, metadata !658}
!758 = metadata !{i32 786688, metadata !141, metadata !"l1imag", metadata !5, i32 888, metadata !25, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [l1imag] [line 888]
!759 = metadata !{i32 1071, i32 0, metadata !760, metadata !658}
!760 = metadata !{i32 786443, metadata !1, metadata !745, i32 1070, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!761 = metadata !{i32 1073, i32 0, metadata !760, metadata !658}
!762 = metadata !{i32 1075, i32 0, metadata !760, metadata !658}
!763 = metadata !{i32 1077, i32 0, metadata !760, metadata !658}
!764 = metadata !{i32 1093, i32 0, metadata !765, metadata !658}
!765 = metadata !{i32 786443, metadata !1, metadata !732, i32 1092, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!766 = metadata !{i32 1096, i32 0, metadata !767, metadata !658}
!767 = metadata !{i32 786443, metadata !1, metadata !732, i32 1095, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c]
!768 = metadata !{i32 1095, i32 0, metadata !765, metadata !658}
!769 = metadata !{i32 1099, i32 0, metadata !767, metadata !658}
!770 = metadata !{i32 1105, i32 0, metadata !732, metadata !658}
!771 = metadata !{i32 1107, i32 0, metadata !141, metadata !658}
!772 = metadata !{i32 496, i32 0, metadata !111, null}
