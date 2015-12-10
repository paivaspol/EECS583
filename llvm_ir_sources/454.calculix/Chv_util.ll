; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_shift(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [122 x i8] c"\0A fatal error in Chv_shift(%p,%d)\0A type is SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [145 x i8] c"\0A fatal error in Chv_shift(%p,%d)\0A type is SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Chv_maxabs(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_maxabs(%p)\0A type is %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_frobNorm(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Chv_frobNorm(%p)\0A type is %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A dimensions do not match\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A entriesJ = %p, entriesI = %p\0A\00", align 1
@.str10 = private unnamed_addr constant [102 x i8] c"\0A fatal error in Chv_sub(%p,%p)\0A typeJ = %d, typeI = %d\0A both must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str11 = private unnamed_addr constant [42 x i8] c"\0A fatal error in Chv_zero(%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_zero(%p)\0A type = %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_fill11block(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Chv_fill11block(%p,%p)\0A type = %d, must be real or complex\0A\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_fill12block(%p,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Chv_fill12block(%p,%p)\0A type = %d, must be real or complex\0A\00", align 1
@.str17 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Chv_fillReal21block(%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Chv_fill21block(%p,%p)\0A type = %d, must be real or complex\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_shift(%struct._Chv* %chv, i32 %shift) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !39), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !40), !dbg !190
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !191

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !192, !tbaa !194
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._Chv* null, i32 %shift) #5, !dbg !192
  tail call void @exit(i32 -1) #6, !dbg !197
  unreachable, !dbg !197

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %shift, 0, !dbg !198
  br i1 %cmp1, label %return, label %if.end3, !dbg !198

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !199
  %1 = load i32* %type, align 4, !dbg !199, !tbaa !200
  switch i32 %1, label %return [
    i32 1, label %if.then5
    i32 2, label %if.then85
  ], !dbg !199

if.then5:                                         ; preds = %if.end3
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !201
  %2 = load i32* %symflag, align 4, !dbg !201, !tbaa !200
  switch i32 %2, label %if.else77 [
    i32 0, label %if.then7
    i32 2, label %if.then32
  ], !dbg !201

if.then7:                                         ; preds = %if.then5
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !203
  %3 = load i32** %colind, align 8, !dbg !203, !tbaa !194
  %idx.ext = sext i32 %shift to i64, !dbg !203
  %add.ptr = getelementptr inbounds i32* %3, i64 %idx.ext, !dbg !203
  store i32* %add.ptr, i32** %colind, align 8, !dbg !203, !tbaa !194
  %cmp8 = icmp slt i32 %shift, 0, !dbg !205
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !206
  %4 = load i32* %nD, align 4, !dbg !206, !tbaa !200
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !206
  %5 = load i32* %nU, align 4, !dbg !206, !tbaa !200
  br i1 %cmp8, label %if.end27.loopexit, label %for.cond18.preheader, !dbg !205

for.cond18.preheader:                             ; preds = %if.then7
  %cmp19290 = icmp sgt i32 %shift, 0, !dbg !208
  br i1 %cmp19290, label %for.body20.lr.ph, label %if.end27, !dbg !208

for.body20.lr.ph:                                 ; preds = %for.cond18.preheader
  %entries21 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !211
  %entries21.promoted = load double** %entries21, align 8, !dbg !211, !tbaa !194
  %6 = add i32 %5, %4, !dbg !208
  %7 = sext i32 %6 to i64
  %8 = add i32 %shift, -1, !dbg !208
  %9 = zext i32 %8 to i64, !dbg !208
  %10 = add i32 %shift, -2, !dbg !208
  %11 = zext i32 %10 to i64, !dbg !208
  %12 = mul i64 %9, %11, !dbg !208
  %13 = lshr i64 %12, 1, !dbg !208
  %14 = sub i64 %7, %13, !dbg !208
  %scevgep324 = getelementptr double* %entries21.promoted, i64 %14, !dbg !208
  %scevgep324325 = bitcast double* %scevgep324 to i8*
  %15 = shl nsw i64 %7, 3, !dbg !208
  %16 = add i64 %15, -8, !dbg !208
  %17 = zext i32 %8 to i64, !dbg !208
  %18 = mul i64 %16, %17, !dbg !208
  %uglygep326 = getelementptr i8* %scevgep324325, i64 %18, !dbg !208
  %uglygep326327 = bitcast i8* %uglygep326 to double*
  store double* %uglygep326327, double** %entries21, align 8, !dbg !211, !tbaa !194
  br label %if.end27, !dbg !208

if.end27.loopexit:                                ; preds = %if.then7
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !213
  %entries.promoted = load double** %entries, align 8, !dbg !213, !tbaa !194
  %19 = add i32 %5, %4, !dbg !216
  %20 = sext i32 %19 to i64
  %21 = xor i64 %20, -1, !dbg !216
  %22 = xor i32 %shift, -1, !dbg !216
  %23 = zext i32 %22 to i64, !dbg !216
  %24 = sub i32 -2, %shift, !dbg !216
  %25 = zext i32 %24 to i64, !dbg !216
  %26 = mul i64 %23, %25, !dbg !216
  %27 = lshr i64 %26, 1, !dbg !216
  %28 = sub i64 %21, %27, !dbg !216
  %scevgep = getelementptr double* %entries.promoted, i64 %28, !dbg !216
  %scevgep322 = bitcast double* %scevgep to i8*
  %29 = shl nsw i64 %20, 3, !dbg !216
  %30 = sub i64 -16, %29, !dbg !216
  %31 = zext i32 %22 to i64, !dbg !216
  %32 = mul i64 %30, %31, !dbg !216
  %uglygep = getelementptr i8* %scevgep322, i64 %32, !dbg !216
  %uglygep323 = bitcast i8* %uglygep to double*
  store double* %uglygep323, double** %entries, align 8, !dbg !213, !tbaa !194
  br label %if.end27

if.end27:                                         ; preds = %for.cond18.preheader, %for.body20.lr.ph, %if.end27.loopexit
  %sub = sub nsw i32 %4, %shift, !dbg !217
  store i32 %sub, i32* %nD, align 4, !dbg !217, !tbaa !200
  br label %return, !dbg !218

if.then32:                                        ; preds = %if.then5
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !219
  %33 = load i32** %rowind, align 8, !dbg !219, !tbaa !194
  %idx.ext33 = sext i32 %shift to i64, !dbg !219
  %add.ptr34 = getelementptr inbounds i32* %33, i64 %idx.ext33, !dbg !219
  store i32* %add.ptr34, i32** %rowind, align 8, !dbg !219, !tbaa !194
  %colind35 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !221
  %34 = load i32** %colind35, align 8, !dbg !221, !tbaa !194
  %add.ptr37 = getelementptr inbounds i32* %34, i64 %idx.ext33, !dbg !221
  store i32* %add.ptr37, i32** %colind35, align 8, !dbg !221, !tbaa !194
  %cmp38 = icmp slt i32 %shift, 0, !dbg !222
  %nD40 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !223
  %35 = load i32* %nD40, align 4, !dbg !223, !tbaa !200
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !223
  %36 = load i32* %nL, align 4, !dbg !223, !tbaa !200
  %nU42 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !223
  %37 = load i32* %nU42, align 4, !dbg !223, !tbaa !200
  br i1 %cmp38, label %if.end74.loopexit, label %if.else56, !dbg !222

if.else56:                                        ; preds = %if.then32
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !41), !dbg !225
  %cmp65299 = icmp sgt i32 %shift, 0, !dbg !225
  br i1 %cmp65299, label %for.body66.lr.ph, label %if.end74, !dbg !225

for.body66.lr.ph:                                 ; preds = %if.else56
  %entries67 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !228
  %entries67.promoted = load double** %entries67, align 8, !dbg !228, !tbaa !194
  %38 = add i32 %36, %37, !dbg !225
  %39 = shl i32 %35, 1, !dbg !225
  %40 = add i32 %38, %39, !dbg !225
  %41 = add i32 %40, -1, !dbg !225
  %42 = sext i32 %41 to i64
  %43 = add i32 %shift, -1, !dbg !225
  %44 = zext i32 %43 to i64, !dbg !225
  %45 = add i32 %shift, -2, !dbg !225
  %46 = zext i32 %45 to i64, !dbg !225
  %47 = mul i64 %44, %46, !dbg !225
  %48 = and i64 %47, -2, !dbg !225
  %49 = sub i64 %42, %48, !dbg !225
  %scevgep334 = getelementptr double* %entries67.promoted, i64 %49, !dbg !225
  %scevgep334335 = bitcast double* %scevgep334 to i8*
  %50 = shl nsw i64 %42, 3, !dbg !225
  %51 = add i64 %50, -16, !dbg !225
  %52 = zext i32 %43 to i64, !dbg !225
  %53 = mul i64 %51, %52, !dbg !225
  %uglygep336 = getelementptr i8* %scevgep334335, i64 %53, !dbg !225
  %uglygep336337 = bitcast i8* %uglygep336 to double*
  store double* %uglygep336337, double** %entries67, align 8, !dbg !228, !tbaa !194
  br label %if.end74, !dbg !225

if.end74.loopexit:                                ; preds = %if.then32
  tail call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !41), !dbg !230
  %entries48 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !232
  %entries48.promoted = load double** %entries48, align 8, !dbg !232, !tbaa !194
  %54 = add i32 %36, %37, !dbg !230
  %55 = shl i32 %35, 1, !dbg !230
  %56 = add i32 %54, %55, !dbg !230
  %57 = add i32 %56, 1, !dbg !230
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58, !dbg !230
  %60 = xor i32 %shift, -1, !dbg !230
  %61 = zext i32 %60 to i64, !dbg !230
  %62 = sub i32 -2, %shift, !dbg !230
  %63 = zext i32 %62 to i64, !dbg !230
  %64 = mul i64 %61, %63, !dbg !230
  %65 = and i64 %64, -2, !dbg !230
  %66 = sub i64 %59, %65, !dbg !230
  %scevgep329 = getelementptr double* %entries48.promoted, i64 %66, !dbg !230
  %scevgep329330 = bitcast double* %scevgep329 to i8*
  %67 = shl nsw i64 %58, 3, !dbg !230
  %68 = sub i64 -16, %67, !dbg !230
  %69 = zext i32 %60 to i64, !dbg !230
  %70 = mul i64 %68, %69, !dbg !230
  %uglygep331 = getelementptr i8* %scevgep329330, i64 %70, !dbg !230
  %uglygep331332 = bitcast i8* %uglygep331 to double*
  store double* %uglygep331332, double** %entries48, align 8, !dbg !232, !tbaa !194
  br label %if.end74

if.end74:                                         ; preds = %if.else56, %for.body66.lr.ph, %if.end74.loopexit
  %sub76 = sub nsw i32 %35, %shift, !dbg !234
  store i32 %sub76, i32* %nD40, align 4, !dbg !234, !tbaa !200
  br label %return

if.else77:                                        ; preds = %if.then5
  %71 = load %struct._IO_FILE** @stderr, align 8, !dbg !235, !tbaa !194
  %call79 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([122 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %shift, i32 %2) #5, !dbg !235
  tail call void @exit(i32 -1) #6, !dbg !237
  unreachable, !dbg !237

if.then85:                                        ; preds = %if.end3
  %symflag86 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !238
  %72 = load i32* %symflag86, align 4, !dbg !238, !tbaa !200
  switch i32 %72, label %if.else183 [
    i32 0, label %if.then90
    i32 1, label %if.then90
    i32 2, label %if.then133
  ], !dbg !238

if.then90:                                        ; preds = %if.then85, %if.then85
  %colind91 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !240
  %73 = load i32** %colind91, align 8, !dbg !240, !tbaa !194
  %idx.ext92 = sext i32 %shift to i64, !dbg !240
  %add.ptr93 = getelementptr inbounds i32* %73, i64 %idx.ext92, !dbg !240
  store i32* %add.ptr93, i32** %colind91, align 8, !dbg !240, !tbaa !194
  %cmp94 = icmp slt i32 %shift, 0, !dbg !242
  %nD96 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !243
  %74 = load i32* %nD96, align 4, !dbg !243, !tbaa !200
  %nU97 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !243
  %75 = load i32* %nU97, align 4, !dbg !243, !tbaa !200
  br i1 %cmp94, label %for.body102.lr.ph, label %for.cond116.preheader, !dbg !242

for.cond116.preheader:                            ; preds = %if.then90
  %cmp117309 = icmp sgt i32 %shift, 0, !dbg !245
  br i1 %cmp117309, label %for.body118.lr.ph, label %if.end127, !dbg !245

for.body118.lr.ph:                                ; preds = %for.cond116.preheader
  %entries120 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !248
  %entries120.promoted = load double** %entries120, align 8, !dbg !248, !tbaa !194
  %76 = add i32 %75, %74, !dbg !245
  %77 = sext i32 %76 to i64
  br label %for.body118, !dbg !245

for.body102.lr.ph:                                ; preds = %if.then90
  %entries104 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !250
  %entries104.promoted = load double** %entries104, align 8, !dbg !250, !tbaa !194
  %78 = add i32 %75, %74, !dbg !253
  %79 = sext i32 %78 to i64
  br label %for.body102, !dbg !253

for.body102:                                      ; preds = %for.body102, %for.body102.lr.ph
  %indvars.iv = phi i64 [ %79, %for.body102.lr.ph ], [ %indvars.iv.next, %for.body102 ]
  %add.ptr107307 = phi double* [ %entries104.promoted, %for.body102.lr.ph ], [ %add.ptr107, %for.body102 ], !dbg !250
  %ii.4305 = phi i32 [ %shift, %for.body102.lr.ph ], [ %inc110, %for.body102 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !253
  %80 = trunc i64 %indvars.iv.next to i32, !dbg !250
  %mul103 = shl nsw i32 %80, 1, !dbg !250
  %idx.ext105 = sext i32 %mul103 to i64, !dbg !250
  %idx.neg106 = sub i64 0, %idx.ext105, !dbg !250
  %add.ptr107 = getelementptr inbounds double* %add.ptr107307, i64 %idx.neg106, !dbg !250
  %inc110 = add nsw i32 %ii.4305, 1, !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32 %inc110}, i64 0, metadata !41), !dbg !253
  %exitcond = icmp eq i32 %inc110, 0, !dbg !253
  br i1 %exitcond, label %if.end127.loopexit, label %for.body102, !dbg !253

for.body118:                                      ; preds = %for.body118, %for.body118.lr.ph
  %indvars.iv338 = phi i64 [ %77, %for.body118.lr.ph ], [ %indvars.iv.next339, %for.body118 ]
  %add.ptr122312 = phi double* [ %entries120.promoted, %for.body118.lr.ph ], [ %add.ptr122, %for.body118 ], !dbg !248
  %ii.5310 = phi i32 [ 0, %for.body118.lr.ph ], [ %inc125, %for.body118 ]
  %81 = trunc i64 %indvars.iv338 to i32, !dbg !248
  %mul119 = shl nsw i32 %81, 1, !dbg !248
  %idx.ext121 = sext i32 %mul119 to i64, !dbg !248
  %add.ptr122 = getelementptr inbounds double* %add.ptr122312, i64 %idx.ext121, !dbg !248
  %indvars.iv.next339 = add i64 %indvars.iv338, -1, !dbg !245
  %inc125 = add nsw i32 %ii.5310, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32 %inc125}, i64 0, metadata !41), !dbg !245
  %exitcond340 = icmp eq i32 %inc125, %shift, !dbg !245
  br i1 %exitcond340, label %for.cond116.if.end127.loopexit308_crit_edge, label %for.body118, !dbg !245

if.end127.loopexit:                               ; preds = %for.body102
  store double* %add.ptr107, double** %entries104, align 8, !dbg !250, !tbaa !194
  br label %if.end127

for.cond116.if.end127.loopexit308_crit_edge:      ; preds = %for.body118
  store double* %add.ptr122, double** %entries120, align 8, !dbg !248, !tbaa !194
  br label %if.end127, !dbg !245

if.end127:                                        ; preds = %for.cond116.preheader, %for.cond116.if.end127.loopexit308_crit_edge, %if.end127.loopexit
  %sub129 = sub nsw i32 %74, %shift, !dbg !254
  store i32 %sub129, i32* %nD96, align 4, !dbg !254, !tbaa !200
  br label %return, !dbg !255

if.then133:                                       ; preds = %if.then85
  %rowind134 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !256
  %82 = load i32** %rowind134, align 8, !dbg !256, !tbaa !194
  %idx.ext135 = sext i32 %shift to i64, !dbg !256
  %add.ptr136 = getelementptr inbounds i32* %82, i64 %idx.ext135, !dbg !256
  store i32* %add.ptr136, i32** %rowind134, align 8, !dbg !256, !tbaa !194
  %colind137 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !258
  %83 = load i32** %colind137, align 8, !dbg !258, !tbaa !194
  %add.ptr139 = getelementptr inbounds i32* %83, i64 %idx.ext135, !dbg !258
  store i32* %add.ptr139, i32** %colind137, align 8, !dbg !258, !tbaa !194
  %cmp140 = icmp slt i32 %shift, 0, !dbg !259
  %nD142 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !260
  %84 = load i32* %nD142, align 4, !dbg !260, !tbaa !200
  %nL144 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !260
  %85 = load i32* %nL144, align 4, !dbg !260, !tbaa !200
  %nU146 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !260
  %86 = load i32* %nU146, align 4, !dbg !260, !tbaa !200
  br i1 %cmp140, label %for.body151.lr.ph, label %if.else161, !dbg !259

for.body151.lr.ph:                                ; preds = %if.then133
  tail call void @llvm.dbg.value(metadata !{i32 %shift}, i64 0, metadata !41), !dbg !262
  %entries153 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !264
  %entries153.promoted = load double** %entries153, align 8, !dbg !264, !tbaa !194
  %87 = add i32 %85, %86, !dbg !262
  %88 = shl i32 %84, 1, !dbg !262
  %89 = add i32 %87, %88, !dbg !262
  %90 = add i32 %89, 1, !dbg !262
  %91 = sext i32 %90 to i64
  br label %for.body151, !dbg !262

for.body151:                                      ; preds = %for.body151, %for.body151.lr.ph
  %indvars.iv341 = phi i64 [ %91, %for.body151.lr.ph ], [ %indvars.iv.next342, %for.body151 ]
  %add.ptr156316 = phi double* [ %entries153.promoted, %for.body151.lr.ph ], [ %add.ptr156, %for.body151 ], !dbg !264
  %ii.6314 = phi i32 [ %shift, %for.body151.lr.ph ], [ %inc159, %for.body151 ]
  %92 = trunc i64 %indvars.iv341 to i32, !dbg !264
  %mul152 = shl nsw i32 %92, 1, !dbg !264
  %idx.ext154 = sext i32 %mul152 to i64, !dbg !264
  %idx.neg155 = sub i64 0, %idx.ext154, !dbg !264
  %add.ptr156 = getelementptr inbounds double* %add.ptr156316, i64 %idx.neg155, !dbg !264
  %inc159 = add nsw i32 %ii.6314, 1, !dbg !262
  tail call void @llvm.dbg.value(metadata !{i32 %inc159}, i64 0, metadata !41), !dbg !262
  %indvars.iv.next342 = add i64 %indvars.iv341, 2, !dbg !262
  %exitcond344 = icmp eq i32 %inc159, 0, !dbg !262
  br i1 %exitcond344, label %if.end180.loopexit, label %for.body151, !dbg !262

if.else161:                                       ; preds = %if.then133
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !41), !dbg !266
  %cmp170318 = icmp sgt i32 %shift, 0, !dbg !266
  br i1 %cmp170318, label %for.body171.lr.ph, label %if.end180, !dbg !266

for.body171.lr.ph:                                ; preds = %if.else161
  %entries173 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !269
  %entries173.promoted = load double** %entries173, align 8, !dbg !269, !tbaa !194
  %93 = add i32 %85, %86, !dbg !266
  %94 = shl i32 %84, 1, !dbg !266
  %95 = add i32 %93, %94, !dbg !266
  %96 = add i32 %95, -1, !dbg !266
  %97 = sext i32 %96 to i64
  br label %for.body171, !dbg !266

for.body171:                                      ; preds = %for.body171, %for.body171.lr.ph
  %indvars.iv345 = phi i64 [ %97, %for.body171.lr.ph ], [ %indvars.iv.next346, %for.body171 ]
  %add.ptr175321 = phi double* [ %entries173.promoted, %for.body171.lr.ph ], [ %add.ptr175, %for.body171 ], !dbg !269
  %ii.7319 = phi i32 [ 0, %for.body171.lr.ph ], [ %inc178, %for.body171 ]
  %98 = trunc i64 %indvars.iv345 to i32, !dbg !269
  %mul172 = shl nsw i32 %98, 1, !dbg !269
  %idx.ext174 = sext i32 %mul172 to i64, !dbg !269
  %add.ptr175 = getelementptr inbounds double* %add.ptr175321, i64 %idx.ext174, !dbg !269
  %inc178 = add nsw i32 %ii.7319, 1, !dbg !266
  tail call void @llvm.dbg.value(metadata !{i32 %inc178}, i64 0, metadata !41), !dbg !266
  %indvars.iv.next346 = add i64 %indvars.iv345, -2, !dbg !266
  %exitcond348 = icmp eq i32 %inc178, %shift, !dbg !266
  br i1 %exitcond348, label %for.cond169.if.end180.loopexit317_crit_edge, label %for.body171, !dbg !266

if.end180.loopexit:                               ; preds = %for.body151
  store double* %add.ptr156, double** %entries153, align 8, !dbg !264, !tbaa !194
  br label %if.end180

for.cond169.if.end180.loopexit317_crit_edge:      ; preds = %for.body171
  store double* %add.ptr175, double** %entries173, align 8, !dbg !269, !tbaa !194
  br label %if.end180, !dbg !266

if.end180:                                        ; preds = %if.else161, %for.cond169.if.end180.loopexit317_crit_edge, %if.end180.loopexit
  %sub182 = sub nsw i32 %84, %shift, !dbg !271
  store i32 %sub182, i32* %nD142, align 4, !dbg !271, !tbaa !200
  br label %return

if.else183:                                       ; preds = %if.then85
  %99 = load %struct._IO_FILE** @stderr, align 8, !dbg !272, !tbaa !194
  %call185 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([145 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32 %shift, i32 %72) #5, !dbg !272
  tail call void @exit(i32 -1) #6, !dbg !274
  unreachable, !dbg !274

return:                                           ; preds = %if.end3, %if.end74, %if.end27, %if.end127, %if.end180, %if.end
  ret void, !dbg !275
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define double @Chv_maxabs(%struct._Chv* %chv) #0 {
entry:
  %loc = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !47), !dbg !276
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !278, !tbaa !194
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._Chv* null) #5, !dbg !278
  call void @exit(i32 -1) #6, !dbg !280
  unreachable, !dbg !280

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !281, i64 0, metadata !48), !dbg !282
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !283
  %1 = load i32* %type, align 4, !dbg !283, !tbaa !200
  switch i32 %1, label %if.else12 [
    i32 1, label %if.then2
    i32 2, label %if.then8
  ], !dbg !283

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{i32* %loc}, metadata !49), !dbg !284
  %call3 = call i32 @Chv_nent(%struct._Chv* %chv) #5, !dbg !285
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !285
  %call5 = call double @DVmaxabs(i32 %call3, double* %call4, i32* %loc) #5, !dbg !285
  call void @llvm.dbg.value(metadata !{double %call5}, i64 0, metadata !48), !dbg !285
  br label %if.end16, !dbg !286

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @Chv_nent(%struct._Chv* %chv) #5, !dbg !287
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !287
  %call11 = call double @ZVmaxabs(i32 %call9, double* %call10) #5, !dbg !287
  call void @llvm.dbg.value(metadata !{double %call11}, i64 0, metadata !48), !dbg !287
  br label %if.end16

if.else12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !289, !tbaa !194
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #5, !dbg !289
  call void @exit(i32 -1) #6, !dbg !291
  unreachable, !dbg !291

if.end16:                                         ; preds = %if.then8, %if.then2
  %maxabs.0 = phi double [ %call5, %if.then2 ], [ %call11, %if.then8 ]
  ret double %maxabs.0, !dbg !292
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #4

; Function Attrs: optsize
declare i32 @Chv_nent(%struct._Chv*) #4

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #4

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define double @Chv_frobNorm(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !53), !dbg !293
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !295, !tbaa !194
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), %struct._Chv* null) #5, !dbg !295
  tail call void @exit(i32 -1) #6, !dbg !297
  unreachable, !dbg !297

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !298
  %1 = load i32* %type, align 4, !dbg !298, !tbaa !200
  switch i32 %1, label %if.else31 [
    i32 1, label %if.then2
    i32 2, label %if.then8
  ], !dbg !298

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Chv_nent(%struct._Chv* %chv) #5, !dbg !299
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !59), !dbg !299
  %call4 = tail call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !300
  tail call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !57), !dbg !300
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !301
  tail call void @llvm.dbg.value(metadata !281, i64 0, metadata !54), !dbg !301
  %cmp557 = icmp sgt i32 %call3, 0, !dbg !301
  br i1 %cmp557, label %for.body, label %if.end35, !dbg !301

for.body:                                         ; preds = %if.then2, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then2 ]
  %sum.059 = phi double [ %add, %for.body ], [ 0.000000e+00, %if.then2 ]
  %arrayidx = getelementptr inbounds double* %call4, i64 %indvars.iv, !dbg !303
  %2 = load double* %arrayidx, align 8, !dbg !303, !tbaa !305
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !55), !dbg !303
  %mul = fmul double %2, %2, !dbg !306
  %add = fadd double %sum.059, %mul, !dbg !306
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !54), !dbg !306
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !301
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !301
  %exitcond = icmp eq i32 %lftr.wideiv, %call3, !dbg !301
  br i1 %exitcond, label %if.end35, label %for.body, !dbg !301

if.then8:                                         ; preds = %if.end
  %call12 = tail call i32 @Chv_nent(%struct._Chv* %chv) #5, !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !65), !dbg !307
  %call13 = tail call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !308
  tail call void @llvm.dbg.value(metadata !{double* %call13}, i64 0, metadata !63), !dbg !308
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !309
  tail call void @llvm.dbg.value(metadata !281, i64 0, metadata !54), !dbg !309
  %cmp1561 = icmp sgt i32 %call12, 0, !dbg !309
  br i1 %cmp1561, label %for.body16, label %if.end35, !dbg !309

for.body16:                                       ; preds = %if.then8, %for.body16
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body16 ], [ 0, %if.then8 ]
  %sum.163 = phi double [ %add27, %for.body16 ], [ 0.000000e+00, %if.then8 ]
  %3 = trunc i64 %indvars.iv65 to i32, !dbg !311
  %mul17 = shl nsw i32 %3, 1, !dbg !311
  %idxprom18 = sext i32 %mul17 to i64, !dbg !311
  %arrayidx19 = getelementptr inbounds double* %call13, i64 %idxprom18, !dbg !311
  %4 = load double* %arrayidx19, align 8, !dbg !311, !tbaa !305
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !62), !dbg !311
  %add2156 = or i32 %mul17, 1, !dbg !313
  %idxprom22 = sext i32 %add2156 to i64, !dbg !313
  %arrayidx23 = getelementptr inbounds double* %call13, i64 %idxprom22, !dbg !313
  %5 = load double* %arrayidx23, align 8, !dbg !313, !tbaa !305
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !60), !dbg !313
  %mul24 = fmul double %4, %4, !dbg !314
  %mul25 = fmul double %5, %5, !dbg !314
  %add26 = fadd double %mul24, %mul25, !dbg !314
  %add27 = fadd double %sum.163, %add26, !dbg !314
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !54), !dbg !314
  %indvars.iv.next66 = add i64 %indvars.iv65, 1, !dbg !309
  %lftr.wideiv67 = trunc i64 %indvars.iv.next66 to i32, !dbg !309
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %call12, !dbg !309
  br i1 %exitcond68, label %if.end35, label %for.body16, !dbg !309

if.else31:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !315, !tbaa !194
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([88 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #5, !dbg !315
  tail call void @exit(i32 -1) #6, !dbg !317
  unreachable, !dbg !317

if.end35:                                         ; preds = %if.then8, %for.body16, %if.then2, %for.body
  %sum.2 = phi double [ 0.000000e+00, %if.then2 ], [ %add, %for.body ], [ 0.000000e+00, %if.then8 ], [ %add27, %for.body16 ]
  %call36 = tail call double @sqrt(double %sum.2) #5, !dbg !318
  ret double %call36, !dbg !318
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define void @Chv_sub(%struct._Chv* %chvJ, %struct._Chv* %chvI) #0 {
entry:
  %nDI = alloca i32, align 4
  %nDJ = alloca i32, align 4
  %nLI = alloca i32, align 4
  %nLJ = alloca i32, align 4
  %nUI = alloca i32, align 4
  %nUJ = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvJ}, i64 0, metadata !70), !dbg !319
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvI}, i64 0, metadata !71), !dbg !320
  call void @llvm.dbg.declare(metadata !{i32* %nDI}, metadata !75), !dbg !321
  call void @llvm.dbg.declare(metadata !{i32* %nDJ}, metadata !76), !dbg !321
  call void @llvm.dbg.declare(metadata !{i32* %nLI}, metadata !78), !dbg !321
  call void @llvm.dbg.declare(metadata !{i32* %nLJ}, metadata !79), !dbg !321
  call void @llvm.dbg.declare(metadata !{i32* %nUI}, metadata !80), !dbg !321
  call void @llvm.dbg.declare(metadata !{i32* %nUJ}, metadata !81), !dbg !321
  %cmp = icmp eq %struct._Chv* %chvI, null, !dbg !322
  %cmp1 = icmp eq %struct._Chv* %chvJ, null, !dbg !322
  %or.cond = or i1 %cmp, %cmp1, !dbg !322
  br i1 %or.cond, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !194
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chvI, %struct._Chv* %chvJ) #5, !dbg !323
  call void @exit(i32 -1) #6, !dbg !325
  unreachable, !dbg !325

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chvJ, i32* %nDJ, i32* %nLJ, i32* %nUJ) #5, !dbg !326
  call void @Chv_dimensions(%struct._Chv* %chvI, i32* %nDI, i32* %nLI, i32* %nUI) #5, !dbg !327
  call void @llvm.dbg.value(metadata !{i32* %nDJ}, i64 0, metadata !76), !dbg !328
  %1 = load i32* %nDJ, align 4, !dbg !328, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nDI}, i64 0, metadata !75), !dbg !328
  %2 = load i32* %nDI, align 4, !dbg !328, !tbaa !200
  %cmp2 = icmp eq i32 %1, %2, !dbg !328
  br i1 %cmp2, label %lor.lhs.false3, label %if.then7, !dbg !328

lor.lhs.false3:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nLJ}, i64 0, metadata !79), !dbg !328
  %3 = load i32* %nLJ, align 4, !dbg !328, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nLI}, i64 0, metadata !78), !dbg !328
  %4 = load i32* %nLI, align 4, !dbg !328, !tbaa !200
  %cmp4 = icmp eq i32 %3, %4, !dbg !328
  br i1 %cmp4, label %lor.lhs.false5, label %if.then7, !dbg !328

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  call void @llvm.dbg.value(metadata !{i32* %nUJ}, i64 0, metadata !81), !dbg !328
  %5 = load i32* %nUJ, align 4, !dbg !328, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nUI}, i64 0, metadata !80), !dbg !328
  %6 = load i32* %nUI, align 4, !dbg !328, !tbaa !200
  %cmp6 = icmp eq i32 %5, %6, !dbg !328
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !328

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !329, !tbaa !194
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([58 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #5, !dbg !329
  call void @exit(i32 -1) #6, !dbg !331
  unreachable, !dbg !331

if.end9:                                          ; preds = %lor.lhs.false5
  %call10 = call double* @Chv_entries(%struct._Chv* %chvJ) #5, !dbg !332
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !73), !dbg !332
  %call11 = call double* @Chv_entries(%struct._Chv* %chvI) #5, !dbg !333
  call void @llvm.dbg.value(metadata !{double* %call11}, i64 0, metadata !72), !dbg !333
  %cmp12 = icmp eq double* %call10, null, !dbg !334
  %cmp14 = icmp eq double* %call11, null, !dbg !334
  %or.cond98 = or i1 %cmp12, %cmp14, !dbg !334
  br i1 %or.cond98, label %if.then15, label %if.end17, !dbg !334

if.then15:                                        ; preds = %if.end9
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !335, !tbaa !194
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, double* %call10, double* %call11) #5, !dbg !335
  call void @exit(i32 -1) #6, !dbg !337
  unreachable, !dbg !337

if.end17:                                         ; preds = %if.end9
  %type = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4, !dbg !338
  %9 = load i32* %type, align 4, !dbg !338, !tbaa !200
  switch i32 %9, label %if.else.if.else53_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true28
  ], !dbg !338

land.lhs.true:                                    ; preds = %if.end17
  %type19 = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 4, !dbg !338
  %10 = load i32* %type19, align 4, !dbg !338, !tbaa !200
  %cmp20 = icmp eq i32 %10, 1, !dbg !338
  br i1 %cmp20, label %if.then21, label %if.else.if.else53_crit_edge, !dbg !338

if.then21:                                        ; preds = %land.lhs.true
  %call22 = call i32 @Chv_nent(%struct._Chv* %chvJ) #5, !dbg !339
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !77), !dbg !339
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !341
  %cmp2399 = icmp sgt i32 %call22, 0, !dbg !341
  br i1 %cmp2399, label %for.body, label %if.end58, !dbg !341

for.body:                                         ; preds = %if.then21, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then21 ]
  %arrayidx = getelementptr inbounds double* %call11, i64 %indvars.iv, !dbg !343
  %11 = load double* %arrayidx, align 8, !dbg !343, !tbaa !305
  %arrayidx25 = getelementptr inbounds double* %call10, i64 %indvars.iv, !dbg !343
  %12 = load double* %arrayidx25, align 8, !dbg !343, !tbaa !305
  %sub = fsub double %12, %11, !dbg !343
  store double %sub, double* %arrayidx25, align 8, !dbg !343, !tbaa !305
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !341
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !341
  %exitcond = icmp eq i32 %lftr.wideiv, %call22, !dbg !341
  br i1 %exitcond, label %if.end58, label %for.body, !dbg !341

if.else.if.else53_crit_edge:                      ; preds = %if.end17, %land.lhs.true
  %type55.phi.trans.insert = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 4
  %.pre = load i32* %type55.phi.trans.insert, align 4, !dbg !345, !tbaa !200
  br label %if.else53, !dbg !347

land.lhs.true28:                                  ; preds = %if.end17
  %type29 = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 4, !dbg !347
  %13 = load i32* %type29, align 4, !dbg !347, !tbaa !200
  %cmp30 = icmp eq i32 %13, 2, !dbg !347
  br i1 %cmp30, label %if.then31, label %if.else53, !dbg !347

if.then31:                                        ; preds = %land.lhs.true28
  %call32 = call i32 @Chv_nent(%struct._Chv* %chvJ) #5, !dbg !348
  call void @llvm.dbg.value(metadata !{i32 %call32}, i64 0, metadata !77), !dbg !348
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !350
  %cmp34102 = icmp sgt i32 %call32, 0, !dbg !350
  br i1 %cmp34102, label %for.body35, label %if.end58, !dbg !350

for.body35:                                       ; preds = %if.then31, %for.body35
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.body35 ], [ 0, %if.then31 ]
  %14 = trunc i64 %indvars.iv104 to i32, !dbg !352
  %mul = shl nsw i32 %14, 1, !dbg !352
  %idxprom36 = sext i32 %mul to i64, !dbg !352
  %arrayidx37 = getelementptr inbounds double* %call11, i64 %idxprom36, !dbg !352
  %15 = load double* %arrayidx37, align 8, !dbg !352, !tbaa !305
  %arrayidx40 = getelementptr inbounds double* %call10, i64 %idxprom36, !dbg !352
  %16 = load double* %arrayidx40, align 8, !dbg !352, !tbaa !305
  %sub41 = fsub double %16, %15, !dbg !352
  store double %sub41, double* %arrayidx40, align 8, !dbg !352, !tbaa !305
  %add97 = or i32 %mul, 1, !dbg !354
  %idxprom43 = sext i32 %add97 to i64, !dbg !354
  %arrayidx44 = getelementptr inbounds double* %call11, i64 %idxprom43, !dbg !354
  %17 = load double* %arrayidx44, align 8, !dbg !354, !tbaa !305
  %arrayidx48 = getelementptr inbounds double* %call10, i64 %idxprom43, !dbg !354
  %18 = load double* %arrayidx48, align 8, !dbg !354, !tbaa !305
  %sub49 = fsub double %18, %17, !dbg !354
  store double %sub49, double* %arrayidx48, align 8, !dbg !354, !tbaa !305
  %indvars.iv.next105 = add i64 %indvars.iv104, 1, !dbg !350
  %lftr.wideiv106 = trunc i64 %indvars.iv.next105 to i32, !dbg !350
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %call32, !dbg !350
  br i1 %exitcond107, label %if.end58, label %for.body35, !dbg !350

if.else53:                                        ; preds = %if.else.if.else53_crit_edge, %land.lhs.true28
  %19 = phi i32 [ %.pre, %if.else.if.else53_crit_edge ], [ %13, %land.lhs.true28 ]
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !345, !tbaa !194
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([102 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %9, i32 %19) #5, !dbg !345
  call void @exit(i32 -1) #6, !dbg !355
  unreachable, !dbg !355

if.end58:                                         ; preds = %if.then31, %for.body35, %if.then21, %for.body
  ret void, !dbg !356
}

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_zero(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !86), !dbg !357
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !358
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !359, !tbaa !194
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), %struct._Chv* null) #5, !dbg !359
  tail call void @exit(i32 -1) #6, !dbg !361
  unreachable, !dbg !361

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !362
  %1 = load i32* %type, align 4, !dbg !362, !tbaa !200
  switch i32 %1, label %if.else10 [
    i32 1, label %if.then2
    i32 2, label %if.then7
  ], !dbg !362

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @Chv_nent(%struct._Chv* %chv) #5, !dbg !363
  %call4 = tail call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !363
  tail call void @DVzero(i32 %call3, double* %call4) #5, !dbg !363
  br label %if.end14, !dbg !365

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @Chv_nent(%struct._Chv* %chv) #5, !dbg !366
  %call9 = tail call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !366
  tail call void @ZVzero(i32 %call8, double* %call9) #5, !dbg !366
  br label %if.end14

if.else10:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !368, !tbaa !194
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #5, !dbg !368
  tail call void @exit(i32 -1) #6, !dbg !370
  unreachable, !dbg !370

if.end14:                                         ; preds = %if.then7, %if.then2
  ret void, !dbg !371
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: optsize
declare void @ZVzero(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_fill11block(%struct._Chv* %chv, %struct._A2* %mtx) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !103), !dbg !372
  call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !104), !dbg !373
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !106), !dbg !374
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !107), !dbg !374
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !108), !dbg !374
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !375
  %cmp1 = icmp eq %struct._A2* %mtx, null, !dbg !375
  %or.cond = or i1 %cmp, %cmp1, !dbg !375
  br i1 %or.cond, label %if.then, label %if.end, !dbg !375

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !376, !tbaa !194
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx) #5, !dbg !376
  call void @exit(i32 -1) #6, !dbg !378
  unreachable, !dbg !378

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !379
  %1 = load i32* %type, align 4, !dbg !379, !tbaa !200
  %.off = add i32 %1, -1, !dbg !379
  %switch = icmp ult i32 %.off, 2, !dbg !379
  br i1 %switch, label %if.end9, label %if.then6, !dbg !379

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !380, !tbaa !194
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([77 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx, i32 %1) #5, !dbg !380
  call void @exit(i32 -1) #6, !dbg !382
  unreachable, !dbg !382

if.end9:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !383
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !384
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !105), !dbg !384
  %3 = load i32* %type, align 4, !dbg !385, !tbaa !200
  switch i32 %3, label %if.end187 [
    i32 1, label %if.then13
    i32 2, label %if.then78
  ], !dbg !385

if.then13:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !386
  %4 = load i32* %nD, align 4, !dbg !386, !tbaa !200
  call void @A2_init(%struct._A2* %mtx, i32 1, i32 %4, i32 %4, i32 1, i32 %4, double* null) #5, !dbg !386
  call void @A2_zero(%struct._A2* %mtx) #5, !dbg !387
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !388
  %5 = load i32* %symflag, align 4, !dbg !388, !tbaa !200
  switch i32 %5, label %if.end187 [
    i32 0, label %if.then15
    i32 2, label %if.then31
  ], !dbg !388

if.then15:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !113), !dbg !389
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !390
  %6 = load i32* %nD, align 4, !dbg !390, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !114), !dbg !390
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !391
  %cmp16312 = icmp sgt i32 %6, 0, !dbg !391
  br i1 %cmp16312, label %for.body.lr.ph, label %if.end187, !dbg !391

for.body.lr.ph:                                   ; preds = %if.then15
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !390
  %7 = load i32* %nU, align 4, !dbg !390, !tbaa !200
  %add = add nsw i32 %7, %6, !dbg !390
  %8 = sext i32 %add to i64
  br label %for.body, !dbg !391

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %ioff.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %add25, %for.end ]
  %ii.0313 = phi i32 [ 0, %for.body.lr.ph ], [ %add17, %for.end ]
  %idxprom = sext i32 %ioff.0314 to i64, !dbg !393
  %arrayidx = getelementptr inbounds double* %call10, i64 %idxprom, !dbg !393
  %9 = load double* %arrayidx, align 8, !dbg !393, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii.0313, i32 %ii.0313, double %9) #5, !dbg !393
  %add17 = add nsw i32 %ii.0313, 1, !dbg !395
  call void @llvm.dbg.value(metadata !{i32 %add17}, i64 0, metadata !115), !dbg !395
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !395
  %10 = load i32* %nD, align 4, !dbg !395, !tbaa !200
  %cmp20309 = icmp slt i32 %add17, %10, !dbg !395
  br i1 %cmp20309, label %for.body21, label %for.end, !dbg !395

for.body21:                                       ; preds = %for.body, %for.body21
  %iioff.0311.in = phi i32 [ %iioff.0311, %for.body21 ], [ %ioff.0314, %for.body ]
  %jj.0310 = phi i32 [ %inc, %for.body21 ], [ %add17, %for.body ]
  %iioff.0311 = add nsw i32 %iioff.0311.in, 1, !dbg !395
  %idxprom22 = sext i32 %iioff.0311 to i64, !dbg !397
  %arrayidx23 = getelementptr inbounds double* %call10, i64 %idxprom22, !dbg !397
  %11 = load double* %arrayidx23, align 8, !dbg !397, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii.0313, i32 %jj.0310, double %11) #5, !dbg !397
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %jj.0310, i32 %ii.0313, double 0.000000e+00) #5, !dbg !399
  %inc = add nsw i32 %jj.0310, 1, !dbg !400
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !115), !dbg !400
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !395
  %12 = load i32* %nD, align 4, !dbg !395, !tbaa !200
  %cmp20 = icmp slt i32 %inc, %12, !dbg !395
  br i1 %cmp20, label %for.body21, label %for.end, !dbg !395

for.end:                                          ; preds = %for.body21, %for.body
  %13 = phi i32 [ %10, %for.body ], [ %12, %for.body21 ]
  %14 = trunc i64 %indvars.iv to i32, !dbg !401
  %add25 = add nsw i32 %14, %ioff.0314, !dbg !401
  call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !113), !dbg !401
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %add17}, i64 0, metadata !109), !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !391
  %cmp16 = icmp slt i32 %add17, %13, !dbg !391
  br i1 %cmp16, label %for.body, label %if.end187, !dbg !391

if.then31:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !402
  %15 = load i32* %nD, align 4, !dbg !402, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !107), !dbg !402
  %16 = load i32* %nL, align 4, !dbg !402, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !119), !dbg !402
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !403
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !404
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !404
  %cmp42326 = icmp sgt i32 %15, 0, !dbg !404
  br i1 %cmp42326, label %for.body43.lr.ph, label %if.end187, !dbg !404

for.body43.lr.ph:                                 ; preds = %if.then31
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !403
  %17 = load i32* %nU, align 4, !dbg !403, !tbaa !200
  %add37 = add i32 %15, -1, !dbg !402
  %sub = add i32 %add37, %16, !dbg !402
  %18 = add i32 %16, %17, !dbg !404
  %19 = shl i32 %15, 1, !dbg !404
  %20 = add i32 %18, %19, !dbg !404
  %21 = sext i32 %20 to i64
  br label %for.body43, !dbg !404

for.body43:                                       ; preds = %for.body43.lr.ph, %for.end67
  %indvars.iv360 = phi i64 [ %21, %for.body43.lr.ph ], [ %indvars.iv.next361, %for.end67 ]
  %ioff34.0328 = phi i32 [ %sub, %for.body43.lr.ph ], [ %add68, %for.end67 ]
  %ii32.0327 = phi i32 [ 0, %for.body43.lr.ph ], [ %add46, %for.end67 ]
  %indvars.iv.next361 = add i64 %indvars.iv360, -2, !dbg !404
  %idxprom44 = sext i32 %ioff34.0328 to i64, !dbg !406
  %arrayidx45 = getelementptr inbounds double* %call10, i64 %idxprom44, !dbg !406
  %22 = load double* %arrayidx45, align 8, !dbg !406, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii32.0327, i32 %ii32.0327, double %22) #5, !dbg !406
  %add46 = add nsw i32 %ii32.0327, 1, !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %add46}, i64 0, metadata !121), !dbg !408
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !408
  %23 = load i32* %nD, align 4, !dbg !408, !tbaa !200
  %cmp49317 = icmp slt i32 %add46, %23, !dbg !408
  br i1 %cmp49317, label %for.body50, label %for.cond59.loopexit, !dbg !408

for.body50:                                       ; preds = %for.body43, %for.body50
  %iioff33.0319.in = phi i32 [ %iioff33.0319, %for.body50 ], [ %ioff34.0328, %for.body43 ]
  %jj36.0318 = phi i32 [ %inc54, %for.body50 ], [ %add46, %for.body43 ]
  %iioff33.0319 = add nsw i32 %iioff33.0319.in, 1, !dbg !408
  %idxprom51 = sext i32 %iioff33.0319 to i64, !dbg !410
  %arrayidx52 = getelementptr inbounds double* %call10, i64 %idxprom51, !dbg !410
  %24 = load double* %arrayidx52, align 8, !dbg !410, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii32.0327, i32 %jj36.0318, double %24) #5, !dbg !410
  %inc54 = add nsw i32 %jj36.0318, 1, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %inc54}, i64 0, metadata !121), !dbg !412
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !408
  %25 = load i32* %nD, align 4, !dbg !408, !tbaa !200
  %cmp49 = icmp slt i32 %inc54, %25, !dbg !408
  br i1 %cmp49, label %for.body50, label %for.cond59.loopexit, !dbg !408

for.cond59.loopexit:                              ; preds = %for.body50, %for.body43
  %26 = phi i32 [ %23, %for.body43 ], [ %25, %for.body50 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !413
  %cmp60321 = icmp slt i32 %add46, %26, !dbg !413
  br i1 %cmp60321, label %for.body61, label %for.end67, !dbg !413

for.body61:                                       ; preds = %for.cond59.loopexit, %for.body61
  %iioff33.1323.in = phi i32 [ %iioff33.1323, %for.body61 ], [ %ioff34.0328, %for.cond59.loopexit ]
  %jj36.1322 = phi i32 [ %inc65, %for.body61 ], [ %add46, %for.cond59.loopexit ]
  %iioff33.1323 = add nsw i32 %iioff33.1323.in, -1, !dbg !413
  %idxprom62 = sext i32 %iioff33.1323 to i64, !dbg !415
  %arrayidx63 = getelementptr inbounds double* %call10, i64 %idxprom62, !dbg !415
  %27 = load double* %arrayidx63, align 8, !dbg !415, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %jj36.1322, i32 %ii32.0327, double %27) #5, !dbg !415
  %inc65 = add nsw i32 %jj36.1322, 1, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !121), !dbg !417
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !413
  %28 = load i32* %nD, align 4, !dbg !413, !tbaa !200
  %cmp60 = icmp slt i32 %inc65, %28, !dbg !413
  br i1 %cmp60, label %for.body61, label %for.end67, !dbg !413

for.end67:                                        ; preds = %for.body61, %for.cond59.loopexit
  %29 = phi i32 [ %26, %for.cond59.loopexit ], [ %28, %for.body61 ]
  %30 = trunc i64 %indvars.iv.next361 to i32, !dbg !418
  %add68 = add nsw i32 %30, %ioff34.0328, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %add68}, i64 0, metadata !119), !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %add46}, i64 0, metadata !116), !dbg !404
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !404
  %cmp42 = icmp slt i32 %add46, %29, !dbg !404
  br i1 %cmp42, label %for.body43, label %if.end187, !dbg !404

if.then78:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !419
  %31 = load i32* %nD, align 4, !dbg !419, !tbaa !200
  call void @A2_init(%struct._A2* %mtx, i32 2, i32 %31, i32 %31, i32 1, i32 %31, double* null) #5, !dbg !419
  call void @A2_zero(%struct._A2* %mtx) #5, !dbg !420
  %symflag79 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !421
  %32 = load i32* %symflag79, align 4, !dbg !421, !tbaa !200
  switch i32 %32, label %if.end187 [
    i32 0, label %if.then84
    i32 1, label %if.then84
    i32 2, label %if.then125
  ], !dbg !421

if.then84:                                        ; preds = %if.then78, %if.then78
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !422
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !423
  %33 = load i32* %nD, align 4, !dbg !423, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %add90}, i64 0, metadata !127), !dbg !423
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !424
  %cmp92335 = icmp sgt i32 %33, 0, !dbg !424
  br i1 %cmp92335, label %for.body93.lr.ph, label %if.end187, !dbg !424

for.body93.lr.ph:                                 ; preds = %if.then84
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !423
  %34 = load i32* %nU, align 4, !dbg !423, !tbaa !200
  %add90 = add nsw i32 %34, %33, !dbg !423
  %35 = sext i32 %add90 to i64
  br label %for.body93, !dbg !424

for.body93:                                       ; preds = %for.body93.lr.ph, %for.end116
  %indvars.iv365 = phi i64 [ %35, %for.body93.lr.ph ], [ %indvars.iv.next366, %for.end116 ]
  %ioff87.0337 = phi i32 [ 0, %for.body93.lr.ph ], [ %add117, %for.end116 ]
  %ii85.0336 = phi i32 [ 0, %for.body93.lr.ph ], [ %add101, %for.end116 ]
  %mul94 = shl nsw i32 %ioff87.0337, 1, !dbg !426
  %idxprom95 = sext i32 %mul94 to i64, !dbg !426
  %arrayidx96 = getelementptr inbounds double* %call10, i64 %idxprom95, !dbg !426
  %36 = load double* %arrayidx96, align 8, !dbg !426, !tbaa !305
  %add98306 = or i32 %mul94, 1, !dbg !426
  %idxprom99 = sext i32 %add98306 to i64, !dbg !426
  %arrayidx100 = getelementptr inbounds double* %call10, i64 %idxprom99, !dbg !426
  %37 = load double* %arrayidx100, align 8, !dbg !426, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii85.0336, i32 %ii85.0336, double %36, double %37) #5, !dbg !426
  %add101 = add nsw i32 %ii85.0336, 1, !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %add101}, i64 0, metadata !128), !dbg !428
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !428
  %38 = load i32* %nD, align 4, !dbg !428, !tbaa !200
  %cmp104331 = icmp slt i32 %add101, %38, !dbg !428
  br i1 %cmp104331, label %for.body105, label %for.end116, !dbg !428

for.body105:                                      ; preds = %for.body93, %for.body105
  %iioff86.0333.in = phi i32 [ %iioff86.0333, %for.body105 ], [ %ioff87.0337, %for.body93 ]
  %jj89.0332 = phi i32 [ %inc114, %for.body105 ], [ %add101, %for.body93 ]
  %iioff86.0333 = add nsw i32 %iioff86.0333.in, 1, !dbg !428
  %mul106 = shl nsw i32 %iioff86.0333, 1, !dbg !430
  %idxprom107 = sext i32 %mul106 to i64, !dbg !430
  %arrayidx108 = getelementptr inbounds double* %call10, i64 %idxprom107, !dbg !430
  %39 = load double* %arrayidx108, align 8, !dbg !430, !tbaa !305
  %add110307 = or i32 %mul106, 1, !dbg !430
  %idxprom111 = sext i32 %add110307 to i64, !dbg !430
  %arrayidx112 = getelementptr inbounds double* %call10, i64 %idxprom111, !dbg !430
  %40 = load double* %arrayidx112, align 8, !dbg !430, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii85.0336, i32 %jj89.0332, double %39, double %40) #5, !dbg !430
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %jj89.0332, i32 %ii85.0336, double 0.000000e+00, double 0.000000e+00) #5, !dbg !432
  %inc114 = add nsw i32 %jj89.0332, 1, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %inc114}, i64 0, metadata !128), !dbg !433
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !428
  %41 = load i32* %nD, align 4, !dbg !428, !tbaa !200
  %cmp104 = icmp slt i32 %inc114, %41, !dbg !428
  br i1 %cmp104, label %for.body105, label %for.end116, !dbg !428

for.end116:                                       ; preds = %for.body105, %for.body93
  %42 = phi i32 [ %38, %for.body93 ], [ %41, %for.body105 ]
  %43 = trunc i64 %indvars.iv365 to i32, !dbg !434
  %add117 = add nsw i32 %43, %ioff87.0337, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %add117}, i64 0, metadata !126), !dbg !434
  %indvars.iv.next366 = add i64 %indvars.iv365, -1, !dbg !424
  call void @llvm.dbg.value(metadata !{i32 %add101}, i64 0, metadata !122), !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !424
  %cmp92 = icmp slt i32 %add101, %42, !dbg !424
  br i1 %cmp92, label %for.body93, label %if.end187, !dbg !424

if.then125:                                       ; preds = %if.then78
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !435
  %44 = load i32* %nD, align 4, !dbg !435, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !107), !dbg !435
  %45 = load i32* %nL, align 4, !dbg !435, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32 %sub132}, i64 0, metadata !132), !dbg !435
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !436
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !129), !dbg !437
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !437
  %cmp138349 = icmp sgt i32 %44, 0, !dbg !437
  br i1 %cmp138349, label %for.body139.lr.ph, label %if.end187, !dbg !437

for.body139.lr.ph:                                ; preds = %if.then125
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !108), !dbg !436
  %46 = load i32* %nU, align 4, !dbg !436, !tbaa !200
  %add131 = add i32 %44, -1, !dbg !435
  %sub132 = add i32 %add131, %45, !dbg !435
  %47 = add i32 %45, %46, !dbg !437
  %48 = shl i32 %44, 1, !dbg !437
  %49 = add i32 %47, %48, !dbg !437
  %50 = sext i32 %49 to i64
  br label %for.body139, !dbg !437

for.body139:                                      ; preds = %for.body139.lr.ph, %for.end178
  %indvars.iv373 = phi i64 [ %50, %for.body139.lr.ph ], [ %indvars.iv.next374, %for.end178 ]
  %ioff128.0351 = phi i32 [ %sub132, %for.body139.lr.ph ], [ %add179, %for.end178 ]
  %ii126.0350 = phi i32 [ 0, %for.body139.lr.ph ], [ %add147, %for.end178 ]
  %indvars.iv.next374 = add i64 %indvars.iv373, -2, !dbg !437
  %mul140 = shl nsw i32 %ioff128.0351, 1, !dbg !439
  %idxprom141 = sext i32 %mul140 to i64, !dbg !439
  %arrayidx142 = getelementptr inbounds double* %call10, i64 %idxprom141, !dbg !439
  %51 = load double* %arrayidx142, align 8, !dbg !439, !tbaa !305
  %add144303 = or i32 %mul140, 1, !dbg !439
  %idxprom145 = sext i32 %add144303 to i64, !dbg !439
  %arrayidx146 = getelementptr inbounds double* %call10, i64 %idxprom145, !dbg !439
  %52 = load double* %arrayidx146, align 8, !dbg !439, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii126.0350, i32 %ii126.0350, double %51, double %52) #5, !dbg !439
  %add147 = add nsw i32 %ii126.0350, 1, !dbg !441
  call void @llvm.dbg.value(metadata !{i32 %add147}, i64 0, metadata !134), !dbg !441
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !441
  %53 = load i32* %nD, align 4, !dbg !441, !tbaa !200
  %cmp150340 = icmp slt i32 %add147, %53, !dbg !441
  br i1 %cmp150340, label %for.body151, label %for.cond165.loopexit, !dbg !441

for.body151:                                      ; preds = %for.body139, %for.body151
  %iioff127.0342.in = phi i32 [ %iioff127.0342, %for.body151 ], [ %ioff128.0351, %for.body139 ]
  %jj130.0341 = phi i32 [ %inc160, %for.body151 ], [ %add147, %for.body139 ]
  %iioff127.0342 = add nsw i32 %iioff127.0342.in, 1, !dbg !441
  %mul152 = shl nsw i32 %iioff127.0342, 1, !dbg !443
  %idxprom153 = sext i32 %mul152 to i64, !dbg !443
  %arrayidx154 = getelementptr inbounds double* %call10, i64 %idxprom153, !dbg !443
  %54 = load double* %arrayidx154, align 8, !dbg !443, !tbaa !305
  %add156305 = or i32 %mul152, 1, !dbg !443
  %idxprom157 = sext i32 %add156305 to i64, !dbg !443
  %arrayidx158 = getelementptr inbounds double* %call10, i64 %idxprom157, !dbg !443
  %55 = load double* %arrayidx158, align 8, !dbg !443, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii126.0350, i32 %jj130.0341, double %54, double %55) #5, !dbg !443
  %inc160 = add nsw i32 %jj130.0341, 1, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %inc160}, i64 0, metadata !134), !dbg !445
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !441
  %56 = load i32* %nD, align 4, !dbg !441, !tbaa !200
  %cmp150 = icmp slt i32 %inc160, %56, !dbg !441
  br i1 %cmp150, label %for.body151, label %for.cond165.loopexit, !dbg !441

for.cond165.loopexit:                             ; preds = %for.body151, %for.body139
  %57 = phi i32 [ %53, %for.body139 ], [ %56, %for.body151 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !446
  %cmp166344 = icmp slt i32 %add147, %57, !dbg !446
  br i1 %cmp166344, label %for.body167, label %for.end178, !dbg !446

for.body167:                                      ; preds = %for.cond165.loopexit, %for.body167
  %iioff127.1346.in = phi i32 [ %iioff127.1346, %for.body167 ], [ %ioff128.0351, %for.cond165.loopexit ]
  %jj130.1345 = phi i32 [ %inc176, %for.body167 ], [ %add147, %for.cond165.loopexit ]
  %iioff127.1346 = add nsw i32 %iioff127.1346.in, -1, !dbg !446
  %mul168 = shl nsw i32 %iioff127.1346, 1, !dbg !448
  %idxprom169 = sext i32 %mul168 to i64, !dbg !448
  %arrayidx170 = getelementptr inbounds double* %call10, i64 %idxprom169, !dbg !448
  %58 = load double* %arrayidx170, align 8, !dbg !448, !tbaa !305
  %add172304 = or i32 %mul168, 1, !dbg !448
  %idxprom173 = sext i32 %add172304 to i64, !dbg !448
  %arrayidx174 = getelementptr inbounds double* %call10, i64 %idxprom173, !dbg !448
  %59 = load double* %arrayidx174, align 8, !dbg !448, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %jj130.1345, i32 %ii126.0350, double %58, double %59) #5, !dbg !448
  %inc176 = add nsw i32 %jj130.1345, 1, !dbg !450
  call void @llvm.dbg.value(metadata !{i32 %inc176}, i64 0, metadata !134), !dbg !450
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !446
  %60 = load i32* %nD, align 4, !dbg !446, !tbaa !200
  %cmp166 = icmp slt i32 %inc176, %60, !dbg !446
  br i1 %cmp166, label %for.body167, label %for.end178, !dbg !446

for.end178:                                       ; preds = %for.body167, %for.cond165.loopexit
  %61 = phi i32 [ %57, %for.cond165.loopexit ], [ %60, %for.body167 ]
  %62 = trunc i64 %indvars.iv.next374 to i32, !dbg !451
  %add179 = add nsw i32 %62, %ioff128.0351, !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %add179}, i64 0, metadata !132), !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %add147}, i64 0, metadata !129), !dbg !437
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !106), !dbg !437
  %cmp138 = icmp slt i32 %add147, %61, !dbg !437
  br i1 %cmp138, label %for.body139, label %if.end187, !dbg !437

if.end187:                                        ; preds = %if.then125, %for.end178, %if.then84, %for.end116, %if.then31, %for.end67, %if.then15, %for.end, %if.then78, %if.end9, %if.then13
  ret void, !dbg !452
}

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #4

; Function Attrs: optsize
declare void @A2_zero(%struct._A2*) #4

; Function Attrs: optsize
declare void @A2_setRealEntry(%struct._A2*, i32, i32, double) #4

; Function Attrs: optsize
declare void @A2_setComplexEntry(%struct._A2*, i32, i32, double, double) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_fill12block(%struct._Chv* %chv, %struct._A2* %mtx) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !137), !dbg !453
  call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !138), !dbg !454
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !140), !dbg !455
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !141), !dbg !455
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !142), !dbg !455
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !456
  %cmp1 = icmp eq %struct._A2* %mtx, null, !dbg !456
  %or.cond = or i1 %cmp, %cmp1, !dbg !456
  br i1 %or.cond, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !457, !tbaa !194
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx) #5, !dbg !457
  call void @exit(i32 -1) #6, !dbg !459
  unreachable, !dbg !459

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !460
  %1 = load i32* %type, align 4, !dbg !460, !tbaa !200
  %.off = add i32 %1, -1, !dbg !460
  %switch = icmp ult i32 %.off, 2, !dbg !460
  br i1 %switch, label %if.end9, label %if.then6, !dbg !460

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !194
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([77 x i8]* @.str16, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx, i32 %1) #5, !dbg !461
  call void @exit(i32 -1) #6, !dbg !463
  unreachable, !dbg !463

if.end9:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !464
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !465
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !139), !dbg !465
  %3 = load i32* %type, align 4, !dbg !466, !tbaa !200
  switch i32 %3, label %if.end142 [
    i32 1, label %if.then13
    i32 2, label %if.then63
  ], !dbg !466

if.then13:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !467
  %4 = load i32* %nD, align 4, !dbg !467, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !467
  %5 = load i32* %nU, align 4, !dbg !467, !tbaa !200
  call void @A2_init(%struct._A2* %mtx, i32 1, i32 %4, i32 %5, i32 1, i32 %4, double* null) #5, !dbg !467
  call void @A2_zero(%struct._A2* %mtx) #5, !dbg !468
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !469
  %6 = load i32* %symflag, align 4, !dbg !469, !tbaa !200
  switch i32 %6, label %if.end142 [
    i32 0, label %if.then15
    i32 2, label %if.then28
  ], !dbg !469

if.then15:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !470
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !471
  %7 = load i32* %nD, align 4, !dbg !471, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !471
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !148), !dbg !471
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !143), !dbg !472
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !472
  %cmp16211 = icmp sgt i32 %7, 0, !dbg !472
  br i1 %cmp16211, label %for.body.lr.ph, label %if.end142, !dbg !472

for.body.lr.ph:                                   ; preds = %if.then15
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !471
  %8 = load i32* %nU, align 4, !dbg !471, !tbaa !200
  %add = add nsw i32 %8, %7, !dbg !471
  br label %for.body, !dbg !472

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %9 = phi i32 [ %8, %for.body.lr.ph ], [ %16, %for.end ], !dbg !474
  %indvars.iv241 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next242, %for.end ], !dbg !472
  %indvars.iv.in = phi i32 [ %add, %for.body.lr.ph ], [ %indvars.iv, %for.end ]
  %10 = phi i32 [ %7, %for.body.lr.ph ], [ %15, %for.end ]
  %ii.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.end ]
  %indvars.iv = add i32 %indvars.iv.in, -1, !dbg !472
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !149), !dbg !474
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !474
  %cmp19208 = icmp sgt i32 %9, 0, !dbg !474
  br i1 %cmp19208, label %for.body20.lr.ph, label %for.end, !dbg !474

for.body20.lr.ph:                                 ; preds = %for.body
  %11 = add i32 %10, %indvars.iv241, !dbg !474
  %12 = sext i32 %11 to i64, !dbg !472
  br label %for.body20, !dbg !474

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %indvars.iv243 = phi i64 [ %12, %for.body20.lr.ph ], [ %indvars.iv.next244, %for.body20 ], !dbg !472
  %jj.0210 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.body20 ]
  %arrayidx = getelementptr inbounds double* %call10, i64 %indvars.iv243, !dbg !477
  %13 = load double* %arrayidx, align 8, !dbg !477, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii.0212, i32 %jj.0210, double %13) #5, !dbg !477
  %inc = add nsw i32 %jj.0210, 1, !dbg !479
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !149), !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !474
  %14 = load i32* %nU, align 4, !dbg !474, !tbaa !200
  %cmp19 = icmp slt i32 %inc, %14, !dbg !474
  %indvars.iv.next244 = add i64 %indvars.iv243, 1, !dbg !474
  br i1 %cmp19, label %for.body20, label %for.cond18.for.end_crit_edge, !dbg !474

for.cond18.for.end_crit_edge:                     ; preds = %for.body20
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !472
  %.pre = load i32* %nD, align 4, !dbg !472, !tbaa !200
  br label %for.end, !dbg !474

for.end:                                          ; preds = %for.cond18.for.end_crit_edge, %for.body
  %15 = phi i32 [ %.pre, %for.cond18.for.end_crit_edge ], [ %10, %for.body ], !dbg !480
  %16 = phi i32 [ %14, %for.cond18.for.end_crit_edge ], [ %9, %for.body ]
  %inc24 = add nsw i32 %ii.0212, 1, !dbg !472
  call void @llvm.dbg.value(metadata !{i32 %inc24}, i64 0, metadata !143), !dbg !472
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !472
  %cmp16 = icmp slt i32 %inc24, %15, !dbg !472
  %indvars.iv.next242 = add i32 %indvars.iv241, %indvars.iv, !dbg !472
  br i1 %cmp16, label %for.body, label %if.end142, !dbg !472

if.then28:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !481
  %17 = load i32* %nD, align 4, !dbg !481, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !141), !dbg !481
  %18 = load i32* %nL, align 4, !dbg !481, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !482
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !150), !dbg !483
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !483
  %cmp40220 = icmp sgt i32 %17, 0, !dbg !483
  br i1 %cmp40220, label %for.body41.lr.ph, label %if.end142, !dbg !483

for.body41.lr.ph:                                 ; preds = %if.then28
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !482
  %19 = load i32* %nU, align 4, !dbg !482, !tbaa !200
  %20 = add i32 %17, %18, !dbg !483
  %21 = add i32 %20, -1, !dbg !483
  %22 = add i32 %18, %19, !dbg !483
  %23 = shl i32 %17, 1, !dbg !483
  %24 = add i32 %22, %23, !dbg !483
  %25 = add i32 %24, -3, !dbg !483
  br label %for.body41, !dbg !483

for.body41:                                       ; preds = %for.body41.lr.ph, %for.end52
  %26 = phi i32 [ %19, %for.body41.lr.ph ], [ %33, %for.end52 ], !dbg !482
  %indvars.iv248 = phi i32 [ %21, %for.body41.lr.ph ], [ %indvars.iv.next249, %for.end52 ], !dbg !483
  %indvars.iv246 = phi i32 [ %25, %for.body41.lr.ph ], [ %indvars.iv.next247, %for.end52 ]
  %27 = phi i32 [ %17, %for.body41.lr.ph ], [ %32, %for.end52 ]
  %ii29.0221 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc56, %for.end52 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !485
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !485
  %cmp45215 = icmp sgt i32 %26, 0, !dbg !485
  br i1 %cmp45215, label %for.body46.lr.ph, label %for.end52, !dbg !485

for.body46.lr.ph:                                 ; preds = %for.body41
  %28 = add i32 %27, %indvars.iv248, !dbg !485
  %29 = sext i32 %28 to i64, !dbg !483
  br label %for.body46, !dbg !485

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv250 = phi i64 [ %29, %for.body46.lr.ph ], [ %indvars.iv.next251, %for.body46 ], !dbg !483
  %jj33.0217 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc50, %for.body46 ]
  %arrayidx48 = getelementptr inbounds double* %call10, i64 %indvars.iv250, !dbg !488
  %30 = load double* %arrayidx48, align 8, !dbg !488, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %ii29.0221, i32 %jj33.0217, double %30) #5, !dbg !488
  %inc50 = add nsw i32 %jj33.0217, 1, !dbg !490
  call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !155), !dbg !490
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !485
  %31 = load i32* %nU, align 4, !dbg !485, !tbaa !200
  %cmp45 = icmp slt i32 %inc50, %31, !dbg !485
  %indvars.iv.next251 = add i64 %indvars.iv250, 1, !dbg !485
  br i1 %cmp45, label %for.body46, label %for.cond44.for.end52_crit_edge, !dbg !485

for.cond44.for.end52_crit_edge:                   ; preds = %for.body46
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !483
  %.pre267 = load i32* %nD, align 4, !dbg !483, !tbaa !200
  br label %for.end52, !dbg !485

for.end52:                                        ; preds = %for.cond44.for.end52_crit_edge, %for.body41
  %32 = phi i32 [ %.pre267, %for.cond44.for.end52_crit_edge ], [ %27, %for.body41 ], !dbg !491
  %33 = phi i32 [ %31, %for.cond44.for.end52_crit_edge ], [ %26, %for.body41 ]
  %inc56 = add nsw i32 %ii29.0221, 1, !dbg !483
  call void @llvm.dbg.value(metadata !{i32 %inc56}, i64 0, metadata !150), !dbg !483
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !483
  %cmp40 = icmp slt i32 %inc56, %32, !dbg !483
  %indvars.iv.next247 = add i32 %indvars.iv246, -2, !dbg !483
  %indvars.iv.next249 = add i32 %indvars.iv248, %indvars.iv246, !dbg !483
  br i1 %cmp40, label %for.body41, label %if.end142, !dbg !483

if.then63:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !492
  %34 = load i32* %nD, align 4, !dbg !492, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !492
  %35 = load i32* %nU, align 4, !dbg !492, !tbaa !200
  call void @A2_init(%struct._A2* %mtx, i32 2, i32 %34, i32 %35, i32 1, i32 %34, double* null) #5, !dbg !492
  call void @A2_zero(%struct._A2* %mtx) #5, !dbg !493
  %symflag64 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !494
  %36 = load i32* %symflag64, align 4, !dbg !494, !tbaa !200
  switch i32 %36, label %if.end142 [
    i32 0, label %if.then69
    i32 1, label %if.then69
    i32 2, label %if.then103
  ], !dbg !494

if.then69:                                        ; preds = %if.then63, %if.then63
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !160), !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !496
  %37 = load i32* %nD, align 4, !dbg !496, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %add75}, i64 0, metadata !161), !dbg !496
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !497
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !497
  %cmp77228 = icmp sgt i32 %37, 0, !dbg !497
  br i1 %cmp77228, label %for.body78.lr.ph, label %if.end142, !dbg !497

for.body78.lr.ph:                                 ; preds = %if.then69
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !496
  %38 = load i32* %nU, align 4, !dbg !496, !tbaa !200
  %add75 = add nsw i32 %38, %37, !dbg !496
  br label %for.body78, !dbg !497

for.body78:                                       ; preds = %for.body78.lr.ph, %for.end94
  %39 = phi i32 [ %38, %for.body78.lr.ph ], [ %48, %for.end94 ], !dbg !499
  %indvars.iv255 = phi i32 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next256, %for.end94 ], !dbg !497
  %indvars.iv253.in = phi i32 [ %add75, %for.body78.lr.ph ], [ %indvars.iv253, %for.end94 ]
  %40 = phi i32 [ %37, %for.body78.lr.ph ], [ %47, %for.end94 ]
  %ii70.0229 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc98, %for.end94 ]
  %indvars.iv253 = add i32 %indvars.iv253.in, -1, !dbg !497
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !499
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !499
  %cmp82224 = icmp sgt i32 %39, 0, !dbg !499
  br i1 %cmp82224, label %for.body83.lr.ph, label %for.end94, !dbg !499

for.body83.lr.ph:                                 ; preds = %for.body78
  %41 = add i32 %40, %indvars.iv255, !dbg !499
  %42 = sext i32 %41 to i64, !dbg !497
  br label %for.body83, !dbg !499

for.body83:                                       ; preds = %for.body83.lr.ph, %for.body83
  %indvars.iv257 = phi i64 [ %42, %for.body83.lr.ph ], [ %indvars.iv.next258, %for.body83 ], !dbg !497
  %jj74.0226 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc92, %for.body83 ]
  %43 = trunc i64 %indvars.iv257 to i32, !dbg !502
  %mul84 = shl nsw i32 %43, 1, !dbg !502
  %idxprom85 = sext i32 %mul84 to i64, !dbg !502
  %arrayidx86 = getelementptr inbounds double* %call10, i64 %idxprom85, !dbg !502
  %44 = load double* %arrayidx86, align 8, !dbg !502, !tbaa !305
  %add88207 = or i32 %mul84, 1, !dbg !502
  %idxprom89 = sext i32 %add88207 to i64, !dbg !502
  %arrayidx90 = getelementptr inbounds double* %call10, i64 %idxprom89, !dbg !502
  %45 = load double* %arrayidx90, align 8, !dbg !502, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii70.0229, i32 %jj74.0226, double %44, double %45) #5, !dbg !502
  %inc92 = add nsw i32 %jj74.0226, 1, !dbg !504
  call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !162), !dbg !504
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !499
  %46 = load i32* %nU, align 4, !dbg !499, !tbaa !200
  %cmp82 = icmp slt i32 %inc92, %46, !dbg !499
  %indvars.iv.next258 = add i64 %indvars.iv257, 1, !dbg !499
  br i1 %cmp82, label %for.body83, label %for.cond81.for.end94_crit_edge, !dbg !499

for.cond81.for.end94_crit_edge:                   ; preds = %for.body83
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !497
  %.pre268 = load i32* %nD, align 4, !dbg !497, !tbaa !200
  br label %for.end94, !dbg !499

for.end94:                                        ; preds = %for.cond81.for.end94_crit_edge, %for.body78
  %47 = phi i32 [ %.pre268, %for.cond81.for.end94_crit_edge ], [ %40, %for.body78 ], !dbg !505
  %48 = phi i32 [ %46, %for.cond81.for.end94_crit_edge ], [ %39, %for.body78 ]
  %inc98 = add nsw i32 %ii70.0229, 1, !dbg !497
  call void @llvm.dbg.value(metadata !{i32 %inc98}, i64 0, metadata !156), !dbg !497
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !497
  %cmp77 = icmp slt i32 %inc98, %47, !dbg !497
  %indvars.iv.next256 = add i32 %indvars.iv255, %indvars.iv253, !dbg !497
  br i1 %cmp77, label %for.body78, label %if.end142, !dbg !497

if.then103:                                       ; preds = %if.then63
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !506
  %49 = load i32* %nD, align 4, !dbg !506, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !141), !dbg !506
  %50 = load i32* %nL, align 4, !dbg !506, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !507
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !163), !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !508
  %cmp116237 = icmp sgt i32 %49, 0, !dbg !508
  br i1 %cmp116237, label %for.body117.lr.ph, label %if.end142, !dbg !508

for.body117.lr.ph:                                ; preds = %if.then103
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !507
  %51 = load i32* %nU, align 4, !dbg !507, !tbaa !200
  %52 = add i32 %49, %50, !dbg !508
  %53 = add i32 %52, -1, !dbg !508
  %54 = add i32 %50, %51, !dbg !508
  %55 = shl i32 %49, 1, !dbg !508
  %56 = add i32 %54, %55, !dbg !508
  %57 = add i32 %56, -3, !dbg !508
  br label %for.body117, !dbg !508

for.body117:                                      ; preds = %for.body117.lr.ph, %for.end133
  %58 = phi i32 [ %51, %for.body117.lr.ph ], [ %67, %for.end133 ], !dbg !507
  %indvars.iv262 = phi i32 [ %53, %for.body117.lr.ph ], [ %indvars.iv.next263, %for.end133 ], !dbg !508
  %indvars.iv260 = phi i32 [ %57, %for.body117.lr.ph ], [ %indvars.iv.next261, %for.end133 ]
  %59 = phi i32 [ %49, %for.body117.lr.ph ], [ %66, %for.end133 ]
  %ii104.0238 = phi i32 [ 0, %for.body117.lr.ph ], [ %inc137, %for.end133 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !168), !dbg !510
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !510
  %cmp121232 = icmp sgt i32 %58, 0, !dbg !510
  br i1 %cmp121232, label %for.body122.lr.ph, label %for.end133, !dbg !510

for.body122.lr.ph:                                ; preds = %for.body117
  %60 = add i32 %59, %indvars.iv262, !dbg !510
  %61 = sext i32 %60 to i64, !dbg !508
  br label %for.body122, !dbg !510

for.body122:                                      ; preds = %for.body122.lr.ph, %for.body122
  %indvars.iv264 = phi i64 [ %61, %for.body122.lr.ph ], [ %indvars.iv.next265, %for.body122 ], !dbg !508
  %jj108.0234 = phi i32 [ 0, %for.body122.lr.ph ], [ %inc131, %for.body122 ]
  %62 = trunc i64 %indvars.iv264 to i32, !dbg !513
  %mul123 = shl nsw i32 %62, 1, !dbg !513
  %idxprom124 = sext i32 %mul123 to i64, !dbg !513
  %arrayidx125 = getelementptr inbounds double* %call10, i64 %idxprom124, !dbg !513
  %63 = load double* %arrayidx125, align 8, !dbg !513, !tbaa !305
  %add127206 = or i32 %mul123, 1, !dbg !513
  %idxprom128 = sext i32 %add127206 to i64, !dbg !513
  %arrayidx129 = getelementptr inbounds double* %call10, i64 %idxprom128, !dbg !513
  %64 = load double* %arrayidx129, align 8, !dbg !513, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %ii104.0238, i32 %jj108.0234, double %63, double %64) #5, !dbg !513
  %inc131 = add nsw i32 %jj108.0234, 1, !dbg !515
  call void @llvm.dbg.value(metadata !{i32 %inc131}, i64 0, metadata !168), !dbg !515
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !142), !dbg !510
  %65 = load i32* %nU, align 4, !dbg !510, !tbaa !200
  %cmp121 = icmp slt i32 %inc131, %65, !dbg !510
  %indvars.iv.next265 = add i64 %indvars.iv264, 1, !dbg !510
  br i1 %cmp121, label %for.body122, label %for.cond120.for.end133_crit_edge, !dbg !510

for.cond120.for.end133_crit_edge:                 ; preds = %for.body122
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !508
  %.pre269 = load i32* %nD, align 4, !dbg !508, !tbaa !200
  br label %for.end133, !dbg !510

for.end133:                                       ; preds = %for.cond120.for.end133_crit_edge, %for.body117
  %66 = phi i32 [ %.pre269, %for.cond120.for.end133_crit_edge ], [ %59, %for.body117 ], !dbg !516
  %67 = phi i32 [ %65, %for.cond120.for.end133_crit_edge ], [ %58, %for.body117 ]
  %inc137 = add nsw i32 %ii104.0238, 1, !dbg !508
  call void @llvm.dbg.value(metadata !{i32 %inc137}, i64 0, metadata !163), !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !140), !dbg !508
  %cmp116 = icmp slt i32 %inc137, %66, !dbg !508
  %indvars.iv.next261 = add i32 %indvars.iv260, -2, !dbg !508
  %indvars.iv.next263 = add i32 %indvars.iv262, %indvars.iv260, !dbg !508
  br i1 %cmp116, label %for.body117, label %if.end142, !dbg !508

if.end142:                                        ; preds = %if.then103, %for.end133, %if.then69, %for.end94, %if.then28, %for.end52, %if.then15, %for.end, %if.then63, %if.end9, %if.then13
  ret void, !dbg !517
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_fill21block(%struct._Chv* %chv, %struct._A2* %mtx) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !171), !dbg !518
  call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !172), !dbg !519
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !174), !dbg !520
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !175), !dbg !520
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !176), !dbg !520
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !521
  %cmp1 = icmp eq %struct._A2* %mtx, null, !dbg !521
  %or.cond = or i1 %cmp, %cmp1, !dbg !521
  br i1 %or.cond, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !522, !tbaa !194
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str17, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx) #5, !dbg !522
  call void @exit(i32 -1) #6, !dbg !524
  unreachable, !dbg !524

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !525
  %1 = load i32* %type, align 4, !dbg !525, !tbaa !200
  %.off = add i32 %1, -1, !dbg !525
  %switch = icmp ult i32 %.off, 2, !dbg !525
  br i1 %switch, label %if.end9, label %if.then6, !dbg !525

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !526, !tbaa !194
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([77 x i8]* @.str18, i64 0, i64 0), %struct._Chv* %chv, %struct._A2* %mtx, i32 %1) #5, !dbg !526
  call void @exit(i32 -1) #6, !dbg !528
  unreachable, !dbg !528

if.end9:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !529
  %call10 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !530
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !173), !dbg !530
  %3 = load i32* %type, align 4, !dbg !531, !tbaa !200
  switch i32 %3, label %if.end67 [
    i32 1, label %if.then13
    i32 2, label %if.then30
  ], !dbg !531

if.then13:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !532
  %4 = load i32* %nL, align 4, !dbg !532, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !532
  %5 = load i32* %nD, align 4, !dbg !532, !tbaa !200
  call void @A2_init(%struct._A2* %mtx, i32 1, i32 %4, i32 %5, i32 %5, i32 1, double* null) #5, !dbg !532
  call void @A2_zero(%struct._A2* %mtx) #5, !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !534
  %6 = load i32* %nD, align 4, !dbg !534, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !534
  %7 = load i32* %nL, align 4, !dbg !534, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !176), !dbg !535
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !177), !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !536
  %cmp17110 = icmp sgt i32 %6, 0, !dbg !536
  br i1 %cmp17110, label %for.body.lr.ph, label %if.end67, !dbg !536

for.body.lr.ph:                                   ; preds = %if.then13
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !176), !dbg !535
  %8 = load i32* %nU, align 4, !dbg !535, !tbaa !200
  %9 = add i32 %6, %7, !dbg !536
  %10 = add i32 %9, -1, !dbg !536
  %11 = add i32 %7, %8, !dbg !536
  %12 = shl i32 %6, 1, !dbg !536
  %13 = add i32 %11, %12, !dbg !536
  %14 = add i32 %13, -1, !dbg !536
  br label %for.body, !dbg !536

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %15 = phi i32 [ %7, %for.body.lr.ph ], [ %22, %for.end ], !dbg !535
  %indvars.iv123 = phi i32 [ %10, %for.body.lr.ph ], [ %indvars.iv.next124, %for.end ], !dbg !536
  %indvars.iv = phi i32 [ %14, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %16 = phi i32 [ %6, %for.body.lr.ph ], [ %21, %for.end ]
  %ii.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !182), !dbg !538
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !538
  %cmp21106 = icmp sgt i32 %15, 0, !dbg !538
  br i1 %cmp21106, label %for.body22.lr.ph, label %for.end, !dbg !538

for.body22.lr.ph:                                 ; preds = %for.body
  %17 = sub i32 %indvars.iv123, %16, !dbg !538
  %18 = sext i32 %17 to i64, !dbg !536
  br label %for.body22, !dbg !538

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv125 = phi i64 [ %18, %for.body22.lr.ph ], [ %indvars.iv.next126, %for.body22 ], !dbg !536
  %jj.0108 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc, %for.body22 ]
  %arrayidx = getelementptr inbounds double* %call10, i64 %indvars.iv125, !dbg !541
  %19 = load double* %arrayidx, align 8, !dbg !541, !tbaa !305
  call void @A2_setRealEntry(%struct._A2* %mtx, i32 %jj.0108, i32 %ii.0111, double %19) #5, !dbg !541
  %inc = add nsw i32 %jj.0108, 1, !dbg !543
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !182), !dbg !543
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !538
  %20 = load i32* %nL, align 4, !dbg !538, !tbaa !200
  %cmp21 = icmp slt i32 %inc, %20, !dbg !538
  %indvars.iv.next126 = add i64 %indvars.iv125, -1, !dbg !538
  br i1 %cmp21, label %for.body22, label %for.cond20.for.end_crit_edge, !dbg !538

for.cond20.for.end_crit_edge:                     ; preds = %for.body22
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !536
  %.pre = load i32* %nD, align 4, !dbg !536, !tbaa !200
  br label %for.end, !dbg !538

for.end:                                          ; preds = %for.cond20.for.end_crit_edge, %for.body
  %21 = phi i32 [ %.pre, %for.cond20.for.end_crit_edge ], [ %16, %for.body ], !dbg !544
  %22 = phi i32 [ %20, %for.cond20.for.end_crit_edge ], [ %15, %for.body ]
  %inc26 = add nsw i32 %ii.0111, 1, !dbg !536
  call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !177), !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !536
  %cmp17 = icmp slt i32 %inc26, %21, !dbg !536
  %indvars.iv.next = add i32 %indvars.iv, -2, !dbg !536
  %indvars.iv.next124 = add i32 %indvars.iv123, %indvars.iv, !dbg !536
  br i1 %cmp17, label %for.body, label %if.end67, !dbg !536

if.then30:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !545
  %23 = load i32* %nL, align 4, !dbg !545, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !545
  %24 = load i32* %nD, align 4, !dbg !545, !tbaa !200
  call void @A2_init(%struct._A2* %mtx, i32 2, i32 %23, i32 %24, i32 %24, i32 1, double* null) #5, !dbg !545
  call void @A2_zero(%struct._A2* %mtx) #5, !dbg !546
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !547
  %25 = load i32* %nD, align 4, !dbg !547, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !547
  %26 = load i32* %nL, align 4, !dbg !547, !tbaa !200
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !176), !dbg !548
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !549
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !549
  %cmp43119 = icmp sgt i32 %25, 0, !dbg !549
  br i1 %cmp43119, label %for.body44.lr.ph, label %if.end67, !dbg !549

for.body44.lr.ph:                                 ; preds = %if.then30
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !176), !dbg !548
  %27 = load i32* %nU, align 4, !dbg !548, !tbaa !200
  %28 = add i32 %25, %26, !dbg !549
  %29 = add i32 %28, -1, !dbg !549
  %30 = add i32 %26, %27, !dbg !549
  %31 = shl i32 %25, 1, !dbg !549
  %32 = add i32 %30, %31, !dbg !549
  %33 = add i32 %32, -1, !dbg !549
  br label %for.body44, !dbg !549

for.body44:                                       ; preds = %for.body44.lr.ph, %for.end60
  %34 = phi i32 [ %26, %for.body44.lr.ph ], [ %43, %for.end60 ], !dbg !548
  %indvars.iv130 = phi i32 [ %29, %for.body44.lr.ph ], [ %indvars.iv.next131, %for.end60 ], !dbg !549
  %indvars.iv128 = phi i32 [ %33, %for.body44.lr.ph ], [ %indvars.iv.next129, %for.end60 ]
  %35 = phi i32 [ %25, %for.body44.lr.ph ], [ %42, %for.end60 ]
  %ii31.0120 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc64, %for.end60 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !188), !dbg !551
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !551
  %cmp48114 = icmp sgt i32 %34, 0, !dbg !551
  br i1 %cmp48114, label %for.body49.lr.ph, label %for.end60, !dbg !551

for.body49.lr.ph:                                 ; preds = %for.body44
  %36 = sub i32 %indvars.iv130, %35, !dbg !551
  %37 = sext i32 %36 to i64, !dbg !549
  br label %for.body49, !dbg !551

for.body49:                                       ; preds = %for.body49.lr.ph, %for.body49
  %indvars.iv132 = phi i64 [ %37, %for.body49.lr.ph ], [ %indvars.iv.next133, %for.body49 ], !dbg !549
  %jj35.0116 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc58, %for.body49 ]
  %38 = trunc i64 %indvars.iv132 to i32, !dbg !554
  %mul50 = shl nsw i32 %38, 1, !dbg !554
  %idxprom51 = sext i32 %mul50 to i64, !dbg !554
  %arrayidx52 = getelementptr inbounds double* %call10, i64 %idxprom51, !dbg !554
  %39 = load double* %arrayidx52, align 8, !dbg !554, !tbaa !305
  %add54104 = or i32 %mul50, 1, !dbg !554
  %idxprom55 = sext i32 %add54104 to i64, !dbg !554
  %arrayidx56 = getelementptr inbounds double* %call10, i64 %idxprom55, !dbg !554
  %40 = load double* %arrayidx56, align 8, !dbg !554, !tbaa !305
  call void @A2_setComplexEntry(%struct._A2* %mtx, i32 %jj35.0116, i32 %ii31.0120, double %39, double %40) #5, !dbg !554
  %inc58 = add nsw i32 %jj35.0116, 1, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %inc58}, i64 0, metadata !188), !dbg !556
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !175), !dbg !551
  %41 = load i32* %nL, align 4, !dbg !551, !tbaa !200
  %cmp48 = icmp slt i32 %inc58, %41, !dbg !551
  %indvars.iv.next133 = add i64 %indvars.iv132, -1, !dbg !551
  br i1 %cmp48, label %for.body49, label %for.cond47.for.end60_crit_edge, !dbg !551

for.cond47.for.end60_crit_edge:                   ; preds = %for.body49
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !549
  %.pre135 = load i32* %nD, align 4, !dbg !549, !tbaa !200
  br label %for.end60, !dbg !551

for.end60:                                        ; preds = %for.cond47.for.end60_crit_edge, %for.body44
  %42 = phi i32 [ %.pre135, %for.cond47.for.end60_crit_edge ], [ %35, %for.body44 ], !dbg !557
  %43 = phi i32 [ %41, %for.cond47.for.end60_crit_edge ], [ %34, %for.body44 ]
  %inc64 = add nsw i32 %ii31.0120, 1, !dbg !549
  call void @llvm.dbg.value(metadata !{i32 %inc64}, i64 0, metadata !183), !dbg !549
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !174), !dbg !549
  %cmp43 = icmp slt i32 %inc64, %42, !dbg !549
  %indvars.iv.next129 = add i32 %indvars.iv128, -2, !dbg !549
  %indvars.iv.next131 = add i32 %indvars.iv130, %indvars.iv128, !dbg !549
  br i1 %cmp43, label %for.body44, label %if.end67, !dbg !549

if.end67:                                         ; preds = %if.then30, %for.end60, %if.then13, %for.end, %if.end9
  ret void, !dbg !558
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !43, metadata !51, metadata !66, metadata !82, metadata !87, metadata !135, metadata !169}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_shift", metadata !"Chv_shift", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32)* @Chv_shift, null, null, metadata !38, i32 20} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 20] [Chv_shift]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42}
!39 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 18]
!40 = metadata !{i32 786689, metadata !4, metadata !"shift", metadata !5, i32 33554451, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 19]
!41 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 21]
!42 = metadata !{i32 786688, metadata !4, metadata !"stride", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 21]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabs", metadata !"Chv_maxabs", metadata !"", i32 150, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._Chv*)* @Chv_maxabs, null, null, metadata !46, i32 152} ; [ DW_TAG_subprogram ] [line 150] [def] [scope 152] [Chv_maxabs]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !25, metadata !8}
!46 = metadata !{metadata !47, metadata !48, metadata !49}
!47 = metadata !{i32 786689, metadata !43, metadata !"chv", metadata !5, i32 16777367, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 151]
!48 = metadata !{i32 786688, metadata !43, metadata !"maxabs", metadata !5, i32 153, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxabs] [line 153]
!49 = metadata !{i32 786688, metadata !50, metadata !"loc", metadata !5, i32 166, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 166]
!50 = metadata !{i32 786443, metadata !1, metadata !43, i32 165, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_frobNorm", metadata !"Chv_frobNorm", metadata !"", i32 187, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._Chv*)* @Chv_frobNorm, null, null, metadata !52, i32 189} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 189] [Chv_frobNorm]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !57, metadata !58, metadata !59, metadata !60, metadata !62, metadata !63, metadata !64, metadata !65}
!53 = metadata !{i32 786689, metadata !51, metadata !"chv", metadata !5, i32 16777404, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 188]
!54 = metadata !{i32 786688, metadata !51, metadata !"sum", metadata !5, i32 190, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 190]
!55 = metadata !{i32 786688, metadata !56, metadata !"value", metadata !5, i32 202, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 202]
!56 = metadata !{i32 786443, metadata !1, metadata !51, i32 201, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!57 = metadata !{i32 786688, metadata !56, metadata !"entries", metadata !5, i32 202, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 202]
!58 = metadata !{i32 786688, metadata !56, metadata !"ii", metadata !5, i32 203, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 203]
!59 = metadata !{i32 786688, metadata !56, metadata !"nent", metadata !5, i32 203, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 203]
!60 = metadata !{i32 786688, metadata !61, metadata !"imag", metadata !5, i32 212, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 212]
!61 = metadata !{i32 786443, metadata !1, metadata !51, i32 211, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!62 = metadata !{i32 786688, metadata !61, metadata !"real", metadata !5, i32 212, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 212]
!63 = metadata !{i32 786688, metadata !61, metadata !"entries", metadata !5, i32 212, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 212]
!64 = metadata !{i32 786688, metadata !61, metadata !"ii", metadata !5, i32 213, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 213]
!65 = metadata !{i32 786688, metadata !61, metadata !"nent", metadata !5, i32 213, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 213]
!66 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_sub", metadata !"Chv_sub", metadata !"", i32 239, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._Chv*)* @Chv_sub, null, null, metadata !69, i32 242} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 242] [Chv_sub]
!67 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{null, metadata !8, metadata !8}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!70 = metadata !{i32 786689, metadata !66, metadata !"chvJ", metadata !5, i32 16777456, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvJ] [line 240]
!71 = metadata !{i32 786689, metadata !66, metadata !"chvI", metadata !5, i32 33554673, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvI] [line 241]
!72 = metadata !{i32 786688, metadata !66, metadata !"entriesI", metadata !5, i32 243, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesI] [line 243]
!73 = metadata !{i32 786688, metadata !66, metadata !"entriesJ", metadata !5, i32 243, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesJ] [line 243]
!74 = metadata !{i32 786688, metadata !66, metadata !"ii", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 244]
!75 = metadata !{i32 786688, metadata !66, metadata !"nDI", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nDI] [line 244]
!76 = metadata !{i32 786688, metadata !66, metadata !"nDJ", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nDJ] [line 244]
!77 = metadata !{i32 786688, metadata !66, metadata !"nent", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 244]
!78 = metadata !{i32 786688, metadata !66, metadata !"nLI", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nLI] [line 244]
!79 = metadata !{i32 786688, metadata !66, metadata !"nLJ", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nLJ] [line 244]
!80 = metadata !{i32 786688, metadata !66, metadata !"nUI", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUI] [line 244]
!81 = metadata !{i32 786688, metadata !66, metadata !"nUJ", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUJ] [line 244]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_zero", metadata !"Chv_zero", metadata !"", i32 299, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*)* @Chv_zero, null, null, metadata !85, i32 301} ; [ DW_TAG_subprogram ] [line 299] [def] [scope 301] [Chv_zero]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !8}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786689, metadata !82, metadata !"chv", metadata !5, i32 16777516, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 300]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_fill11block", metadata !"Chv_fill11block", metadata !"", i32 333, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._A2*)* @Chv_fill11block, null, null, metadata !102, i32 336} ; [ DW_TAG_subprogram ] [line 333] [def] [scope 336] [Chv_fill11block]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !8, metadata !90}
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!91 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!92 = metadata !{i32 786451, metadata !93, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!93 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!95 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!96 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!97 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!98 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!99 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!100 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!101 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !131, metadata !132, metadata !133, metadata !134}
!103 = metadata !{i32 786689, metadata !87, metadata !"chv", metadata !5, i32 16777550, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 334]
!104 = metadata !{i32 786689, metadata !87, metadata !"mtx", metadata !5, i32 33554767, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 335]
!105 = metadata !{i32 786688, metadata !87, metadata !"entries", metadata !5, i32 337, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 337]
!106 = metadata !{i32 786688, metadata !87, metadata !"nD", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 338]
!107 = metadata !{i32 786688, metadata !87, metadata !"nL", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 338]
!108 = metadata !{i32 786688, metadata !87, metadata !"nU", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 338]
!109 = metadata !{i32 786688, metadata !110, metadata !"ii", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 361]
!110 = metadata !{i32 786443, metadata !1, metadata !111, i32 360, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!111 = metadata !{i32 786443, metadata !1, metadata !87, i32 357, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!112 = metadata !{i32 786688, metadata !110, metadata !"iioff", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 361]
!113 = metadata !{i32 786688, metadata !110, metadata !"ioff", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 361]
!114 = metadata !{i32 786688, metadata !110, metadata !"istride", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 361]
!115 = metadata !{i32 786688, metadata !110, metadata !"jj", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 361]
!116 = metadata !{i32 786688, metadata !117, metadata !"ii", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 381]
!117 = metadata !{i32 786443, metadata !1, metadata !111, i32 380, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!118 = metadata !{i32 786688, metadata !117, metadata !"iioff", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 381]
!119 = metadata !{i32 786688, metadata !117, metadata !"ioff", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 381]
!120 = metadata !{i32 786688, metadata !117, metadata !"istride", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 381]
!121 = metadata !{i32 786688, metadata !117, metadata !"jj", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 381]
!122 = metadata !{i32 786688, metadata !123, metadata !"ii", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 409]
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 408, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!124 = metadata !{i32 786443, metadata !1, metadata !87, i32 405, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!125 = metadata !{i32 786688, metadata !123, metadata !"iioff", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 409]
!126 = metadata !{i32 786688, metadata !123, metadata !"ioff", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 409]
!127 = metadata !{i32 786688, metadata !123, metadata !"istride", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 409]
!128 = metadata !{i32 786688, metadata !123, metadata !"jj", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 409]
!129 = metadata !{i32 786688, metadata !130, metadata !"ii", metadata !5, i32 431, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 431]
!130 = metadata !{i32 786443, metadata !1, metadata !124, i32 430, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!131 = metadata !{i32 786688, metadata !130, metadata !"iioff", metadata !5, i32 431, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 431]
!132 = metadata !{i32 786688, metadata !130, metadata !"ioff", metadata !5, i32 431, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 431]
!133 = metadata !{i32 786688, metadata !130, metadata !"istride", metadata !5, i32 431, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 431]
!134 = metadata !{i32 786688, metadata !130, metadata !"jj", metadata !5, i32 431, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 431]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_fill12block", metadata !"Chv_fill12block", metadata !"", i32 485, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._A2*)* @Chv_fill12block, null, null, metadata !136, i32 488} ; [ DW_TAG_subprogram ] [line 485] [def] [scope 488] [Chv_fill12block]
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !165, metadata !166, metadata !167, metadata !168}
!137 = metadata !{i32 786689, metadata !135, metadata !"chv", metadata !5, i32 16777702, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 486]
!138 = metadata !{i32 786689, metadata !135, metadata !"mtx", metadata !5, i32 33554919, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 487]
!139 = metadata !{i32 786688, metadata !135, metadata !"entries", metadata !5, i32 489, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 489]
!140 = metadata !{i32 786688, metadata !135, metadata !"nD", metadata !5, i32 490, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 490]
!141 = metadata !{i32 786688, metadata !135, metadata !"nL", metadata !5, i32 490, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 490]
!142 = metadata !{i32 786688, metadata !135, metadata !"nU", metadata !5, i32 490, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 490]
!143 = metadata !{i32 786688, metadata !144, metadata !"ii", metadata !5, i32 518, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 518]
!144 = metadata !{i32 786443, metadata !1, metadata !145, i32 517, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!145 = metadata !{i32 786443, metadata !1, metadata !135, i32 514, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!146 = metadata !{i32 786688, metadata !144, metadata !"iioff", metadata !5, i32 518, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 518]
!147 = metadata !{i32 786688, metadata !144, metadata !"ioff", metadata !5, i32 518, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 518]
!148 = metadata !{i32 786688, metadata !144, metadata !"istride", metadata !5, i32 518, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 518]
!149 = metadata !{i32 786688, metadata !144, metadata !"jj", metadata !5, i32 518, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 518]
!150 = metadata !{i32 786688, metadata !151, metadata !"ii", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 536]
!151 = metadata !{i32 786443, metadata !1, metadata !145, i32 535, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!152 = metadata !{i32 786688, metadata !151, metadata !"iioff", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 536]
!153 = metadata !{i32 786688, metadata !151, metadata !"ioff", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 536]
!154 = metadata !{i32 786688, metadata !151, metadata !"istride", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 536]
!155 = metadata !{i32 786688, metadata !151, metadata !"jj", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 536]
!156 = metadata !{i32 786688, metadata !157, metadata !"ii", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 558]
!157 = metadata !{i32 786443, metadata !1, metadata !158, i32 557, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!158 = metadata !{i32 786443, metadata !1, metadata !135, i32 554, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!159 = metadata !{i32 786688, metadata !157, metadata !"iioff", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 558]
!160 = metadata !{i32 786688, metadata !157, metadata !"ioff", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 558]
!161 = metadata !{i32 786688, metadata !157, metadata !"istride", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 558]
!162 = metadata !{i32 786688, metadata !157, metadata !"jj", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 558]
!163 = metadata !{i32 786688, metadata !164, metadata !"ii", metadata !5, i32 582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 582]
!164 = metadata !{i32 786443, metadata !1, metadata !158, i32 581, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!165 = metadata !{i32 786688, metadata !164, metadata !"iioff", metadata !5, i32 582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 582]
!166 = metadata !{i32 786688, metadata !164, metadata !"ioff", metadata !5, i32 582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 582]
!167 = metadata !{i32 786688, metadata !164, metadata !"istride", metadata !5, i32 582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 582]
!168 = metadata !{i32 786688, metadata !164, metadata !"jj", metadata !5, i32 582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 582]
!169 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_fill21block", metadata !"Chv_fill21block", metadata !"", i32 618, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._A2*)* @Chv_fill21block, null, null, metadata !170, i32 621} ; [ DW_TAG_subprogram ] [line 618] [def] [scope 621] [Chv_fill21block]
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !185, metadata !186, metadata !187, metadata !188}
!171 = metadata !{i32 786689, metadata !169, metadata !"chv", metadata !5, i32 16777835, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 619]
!172 = metadata !{i32 786689, metadata !169, metadata !"mtx", metadata !5, i32 33555052, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 620]
!173 = metadata !{i32 786688, metadata !169, metadata !"entries", metadata !5, i32 622, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 622]
!174 = metadata !{i32 786688, metadata !169, metadata !"nD", metadata !5, i32 623, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 623]
!175 = metadata !{i32 786688, metadata !169, metadata !"nL", metadata !5, i32 623, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 623]
!176 = metadata !{i32 786688, metadata !169, metadata !"nU", metadata !5, i32 623, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 623]
!177 = metadata !{i32 786688, metadata !178, metadata !"ii", metadata !5, i32 643, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 643]
!178 = metadata !{i32 786443, metadata !1, metadata !169, i32 642, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!179 = metadata !{i32 786688, metadata !178, metadata !"iioff", metadata !5, i32 643, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 643]
!180 = metadata !{i32 786688, metadata !178, metadata !"ioff", metadata !5, i32 643, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 643]
!181 = metadata !{i32 786688, metadata !178, metadata !"istride", metadata !5, i32 643, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 643]
!182 = metadata !{i32 786688, metadata !178, metadata !"jj", metadata !5, i32 643, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 643]
!183 = metadata !{i32 786688, metadata !184, metadata !"ii", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 659]
!184 = metadata !{i32 786443, metadata !1, metadata !169, i32 658, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!185 = metadata !{i32 786688, metadata !184, metadata !"iioff", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iioff] [line 659]
!186 = metadata !{i32 786688, metadata !184, metadata !"ioff", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 659]
!187 = metadata !{i32 786688, metadata !184, metadata !"istride", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istride] [line 659]
!188 = metadata !{i32 786688, metadata !184, metadata !"jj", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 659]
!189 = metadata !{i32 18, i32 0, metadata !4, null}
!190 = metadata !{i32 19, i32 0, metadata !4, null}
!191 = metadata !{i32 27, i32 0, metadata !4, null}
!192 = metadata !{i32 28, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!194 = metadata !{metadata !"any pointer", metadata !195}
!195 = metadata !{metadata !"omnipotent char", metadata !196}
!196 = metadata !{metadata !"Simple C/C++ TBAA"}
!197 = metadata !{i32 30, i32 0, metadata !193, null}
!198 = metadata !{i32 32, i32 0, metadata !4, null}
!199 = metadata !{i32 35, i32 0, metadata !4, null}
!200 = metadata !{metadata !"int", metadata !195}
!201 = metadata !{i32 36, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!203 = metadata !{i32 42, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !202, i32 36, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!205 = metadata !{i32 43, i32 0, metadata !204, null}
!206 = metadata !{i32 44, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 43, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!208 = metadata !{i32 51, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !210, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!210 = metadata !{i32 786443, metadata !1, metadata !204, i32 49, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!211 = metadata !{i32 52, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !209, i32 51, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!213 = metadata !{i32 46, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !215, i32 45, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!215 = metadata !{i32 786443, metadata !1, metadata !207, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!216 = metadata !{i32 45, i32 0, metadata !215, null}
!217 = metadata !{i32 56, i32 0, metadata !204, null}
!218 = metadata !{i32 57, i32 0, metadata !204, null}
!219 = metadata !{i32 63, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !202, i32 57, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!221 = metadata !{i32 64, i32 0, metadata !220, null}
!222 = metadata !{i32 65, i32 0, metadata !220, null}
!223 = metadata !{i32 66, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !220, i32 65, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!225 = metadata !{i32 73, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 73, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!227 = metadata !{i32 786443, metadata !1, metadata !220, i32 71, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!228 = metadata !{i32 74, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !226, i32 73, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!230 = metadata !{i32 67, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !224, i32 67, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!232 = metadata !{i32 68, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !231, i32 67, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!234 = metadata !{i32 78, i32 0, metadata !220, null}
!235 = metadata !{i32 80, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !202, i32 79, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!237 = metadata !{i32 84, i32 0, metadata !236, null}
!238 = metadata !{i32 87, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !4, i32 86, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!240 = metadata !{i32 93, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !239, i32 87, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!242 = metadata !{i32 94, i32 0, metadata !241, null}
!243 = metadata !{i32 95, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !241, i32 94, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!245 = metadata !{i32 102, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !247, i32 102, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!247 = metadata !{i32 786443, metadata !1, metadata !241, i32 100, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!248 = metadata !{i32 103, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !246, i32 102, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!250 = metadata !{i32 97, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !252, i32 96, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!252 = metadata !{i32 786443, metadata !1, metadata !244, i32 96, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!253 = metadata !{i32 96, i32 0, metadata !252, null}
!254 = metadata !{i32 107, i32 0, metadata !241, null}
!255 = metadata !{i32 108, i32 0, metadata !241, null}
!256 = metadata !{i32 114, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !239, i32 108, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!258 = metadata !{i32 115, i32 0, metadata !257, null}
!259 = metadata !{i32 116, i32 0, metadata !257, null}
!260 = metadata !{i32 117, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !257, i32 116, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!262 = metadata !{i32 118, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !261, i32 118, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!264 = metadata !{i32 119, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 118, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!266 = metadata !{i32 124, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !268, i32 124, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!268 = metadata !{i32 786443, metadata !1, metadata !257, i32 122, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!269 = metadata !{i32 125, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !267, i32 124, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!271 = metadata !{i32 129, i32 0, metadata !257, null}
!272 = metadata !{i32 131, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !239, i32 130, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!274 = metadata !{i32 136, i32 0, metadata !273, null}
!275 = metadata !{i32 139, i32 0, metadata !4, null}
!276 = metadata !{i32 151, i32 0, metadata !43, null}
!277 = metadata !{i32 159, i32 0, metadata !43, null}
!278 = metadata !{i32 160, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !43, i32 159, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!280 = metadata !{i32 162, i32 0, metadata !279, null}
!281 = metadata !{double 0.000000e+00}
!282 = metadata !{i32 164, i32 0, metadata !43, null}
!283 = metadata !{i32 165, i32 0, metadata !43, null}
!284 = metadata !{i32 166, i32 0, metadata !50, null}
!285 = metadata !{i32 167, i32 0, metadata !50, null}
!286 = metadata !{i32 168, i32 0, metadata !50, null}
!287 = metadata !{i32 169, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !43, i32 168, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!289 = metadata !{i32 171, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !43, i32 170, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!291 = metadata !{i32 174, i32 0, metadata !290, null}
!292 = metadata !{i32 176, i32 0, metadata !43, null}
!293 = metadata !{i32 188, i32 0, metadata !51, null}
!294 = metadata !{i32 196, i32 0, metadata !51, null}
!295 = metadata !{i32 197, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !51, i32 196, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!297 = metadata !{i32 199, i32 0, metadata !296, null}
!298 = metadata !{i32 201, i32 0, metadata !51, null}
!299 = metadata !{i32 205, i32 0, metadata !56, null}
!300 = metadata !{i32 206, i32 0, metadata !56, null}
!301 = metadata !{i32 207, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !56, i32 207, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!303 = metadata !{i32 208, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !302, i32 207, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!305 = metadata !{metadata !"double", metadata !195}
!306 = metadata !{i32 209, i32 0, metadata !304, null}
!307 = metadata !{i32 215, i32 0, metadata !61, null}
!308 = metadata !{i32 216, i32 0, metadata !61, null}
!309 = metadata !{i32 217, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !61, i32 217, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!311 = metadata !{i32 218, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !310, i32 217, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!313 = metadata !{i32 219, i32 0, metadata !312, null}
!314 = metadata !{i32 220, i32 0, metadata !312, null}
!315 = metadata !{i32 223, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !51, i32 222, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!317 = metadata !{i32 226, i32 0, metadata !316, null}
!318 = metadata !{i32 228, i32 0, metadata !51, null}
!319 = metadata !{i32 240, i32 0, metadata !66, null}
!320 = metadata !{i32 241, i32 0, metadata !66, null}
!321 = metadata !{i32 244, i32 0, metadata !66, null}
!322 = metadata !{i32 250, i32 0, metadata !66, null}
!323 = metadata !{i32 251, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !66, i32 250, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!325 = metadata !{i32 253, i32 0, metadata !324, null}
!326 = metadata !{i32 255, i32 0, metadata !66, null}
!327 = metadata !{i32 256, i32 0, metadata !66, null}
!328 = metadata !{i32 257, i32 0, metadata !66, null}
!329 = metadata !{i32 258, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !66, i32 257, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!331 = metadata !{i32 260, i32 0, metadata !330, null}
!332 = metadata !{i32 262, i32 0, metadata !66, null}
!333 = metadata !{i32 263, i32 0, metadata !66, null}
!334 = metadata !{i32 264, i32 0, metadata !66, null}
!335 = metadata !{i32 265, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !66, i32 264, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!337 = metadata !{i32 268, i32 0, metadata !336, null}
!338 = metadata !{i32 270, i32 0, metadata !66, null}
!339 = metadata !{i32 271, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !66, i32 270, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!341 = metadata !{i32 272, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !340, i32 272, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!343 = metadata !{i32 273, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !342, i32 272, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!345 = metadata !{i32 282, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !66, i32 281, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!347 = metadata !{i32 275, i32 0, metadata !66, null}
!348 = metadata !{i32 276, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !66, i32 275, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!350 = metadata !{i32 277, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 277, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!352 = metadata !{i32 278, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !351, i32 277, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!354 = metadata !{i32 279, i32 0, metadata !353, null}
!355 = metadata !{i32 286, i32 0, metadata !346, null}
!356 = metadata !{i32 288, i32 0, metadata !66, null}
!357 = metadata !{i32 300, i32 0, metadata !82, null}
!358 = metadata !{i32 307, i32 0, metadata !82, null}
!359 = metadata !{i32 308, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !82, i32 307, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!361 = metadata !{i32 310, i32 0, metadata !360, null}
!362 = metadata !{i32 312, i32 0, metadata !82, null}
!363 = metadata !{i32 313, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !82, i32 312, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!365 = metadata !{i32 314, i32 0, metadata !364, null}
!366 = metadata !{i32 315, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !82, i32 314, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!368 = metadata !{i32 317, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !82, i32 316, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!370 = metadata !{i32 320, i32 0, metadata !369, null}
!371 = metadata !{i32 322, i32 0, metadata !82, null}
!372 = metadata !{i32 334, i32 0, metadata !87, null}
!373 = metadata !{i32 335, i32 0, metadata !87, null}
!374 = metadata !{i32 338, i32 0, metadata !87, null}
!375 = metadata !{i32 344, i32 0, metadata !87, null}
!376 = metadata !{i32 345, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !87, i32 344, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!378 = metadata !{i32 347, i32 0, metadata !377, null}
!379 = metadata !{i32 349, i32 0, metadata !87, null}
!380 = metadata !{i32 350, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !87, i32 349, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!382 = metadata !{i32 353, i32 0, metadata !381, null}
!383 = metadata !{i32 355, i32 0, metadata !87, null}
!384 = metadata !{i32 356, i32 0, metadata !87, null}
!385 = metadata !{i32 357, i32 0, metadata !87, null}
!386 = metadata !{i32 358, i32 0, metadata !111, null}
!387 = metadata !{i32 359, i32 0, metadata !111, null}
!388 = metadata !{i32 360, i32 0, metadata !111, null}
!389 = metadata !{i32 367, i32 0, metadata !110, null}
!390 = metadata !{i32 368, i32 0, metadata !110, null}
!391 = metadata !{i32 369, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !110, i32 369, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!393 = metadata !{i32 370, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 369, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!395 = metadata !{i32 371, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 371, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!397 = metadata !{i32 374, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !396, i32 373, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!399 = metadata !{i32 375, i32 0, metadata !398, null}
!400 = metadata !{i32 373, i32 0, metadata !396, null}
!401 = metadata !{i32 377, i32 0, metadata !394, null}
!402 = metadata !{i32 387, i32 0, metadata !117, null}
!403 = metadata !{i32 388, i32 0, metadata !117, null}
!404 = metadata !{i32 389, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !117, i32 389, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!406 = metadata !{i32 390, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !405, i32 389, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!408 = metadata !{i32 391, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !407, i32 391, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!410 = metadata !{i32 394, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 393, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!412 = metadata !{i32 393, i32 0, metadata !409, null}
!413 = metadata !{i32 396, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !407, i32 396, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!415 = metadata !{i32 399, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !414, i32 398, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!417 = metadata !{i32 398, i32 0, metadata !414, null}
!418 = metadata !{i32 401, i32 0, metadata !407, null}
!419 = metadata !{i32 406, i32 0, metadata !124, null}
!420 = metadata !{i32 407, i32 0, metadata !124, null}
!421 = metadata !{i32 408, i32 0, metadata !124, null}
!422 = metadata !{i32 415, i32 0, metadata !123, null}
!423 = metadata !{i32 416, i32 0, metadata !123, null}
!424 = metadata !{i32 417, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !123, i32 417, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!426 = metadata !{i32 418, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !425, i32 417, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!428 = metadata !{i32 420, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !427, i32 420, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!430 = metadata !{i32 423, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !429, i32 422, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!432 = metadata !{i32 425, i32 0, metadata !431, null}
!433 = metadata !{i32 422, i32 0, metadata !429, null}
!434 = metadata !{i32 427, i32 0, metadata !427, null}
!435 = metadata !{i32 437, i32 0, metadata !130, null}
!436 = metadata !{i32 438, i32 0, metadata !130, null}
!437 = metadata !{i32 439, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !130, i32 439, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!439 = metadata !{i32 445, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !438, i32 439, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!441 = metadata !{i32 447, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !440, i32 447, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!443 = metadata !{i32 455, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !442, i32 449, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!445 = metadata !{i32 449, i32 0, metadata !442, null}
!446 = metadata !{i32 458, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !440, i32 458, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!448 = metadata !{i32 466, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !447, i32 460, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!450 = metadata !{i32 460, i32 0, metadata !447, null}
!451 = metadata !{i32 469, i32 0, metadata !440, null}
!452 = metadata !{i32 474, i32 0, metadata !87, null}
!453 = metadata !{i32 486, i32 0, metadata !135, null}
!454 = metadata !{i32 487, i32 0, metadata !135, null}
!455 = metadata !{i32 490, i32 0, metadata !135, null}
!456 = metadata !{i32 496, i32 0, metadata !135, null}
!457 = metadata !{i32 497, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !135, i32 496, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!459 = metadata !{i32 499, i32 0, metadata !458, null}
!460 = metadata !{i32 501, i32 0, metadata !135, null}
!461 = metadata !{i32 502, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !135, i32 501, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!463 = metadata !{i32 505, i32 0, metadata !462, null}
!464 = metadata !{i32 507, i32 0, metadata !135, null}
!465 = metadata !{i32 508, i32 0, metadata !135, null}
!466 = metadata !{i32 514, i32 0, metadata !135, null}
!467 = metadata !{i32 515, i32 0, metadata !145, null}
!468 = metadata !{i32 516, i32 0, metadata !145, null}
!469 = metadata !{i32 517, i32 0, metadata !145, null}
!470 = metadata !{i32 524, i32 0, metadata !144, null}
!471 = metadata !{i32 525, i32 0, metadata !144, null}
!472 = metadata !{i32 526, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !144, i32 526, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!474 = metadata !{i32 527, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !476, i32 527, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!476 = metadata !{i32 786443, metadata !1, metadata !473, i32 526, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!477 = metadata !{i32 530, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !475, i32 529, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!479 = metadata !{i32 529, i32 0, metadata !475, null}
!480 = metadata !{i32 532, i32 0, metadata !476, null}
!481 = metadata !{i32 542, i32 0, metadata !151, null}
!482 = metadata !{i32 543, i32 0, metadata !151, null}
!483 = metadata !{i32 544, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !151, i32 544, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!485 = metadata !{i32 545, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !487, i32 545, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!487 = metadata !{i32 786443, metadata !1, metadata !484, i32 544, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!488 = metadata !{i32 548, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !486, i32 547, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!490 = metadata !{i32 547, i32 0, metadata !486, null}
!491 = metadata !{i32 550, i32 0, metadata !487, null}
!492 = metadata !{i32 555, i32 0, metadata !158, null}
!493 = metadata !{i32 556, i32 0, metadata !158, null}
!494 = metadata !{i32 557, i32 0, metadata !158, null}
!495 = metadata !{i32 564, i32 0, metadata !157, null}
!496 = metadata !{i32 565, i32 0, metadata !157, null}
!497 = metadata !{i32 566, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !157, i32 566, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!499 = metadata !{i32 567, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !501, i32 567, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!501 = metadata !{i32 786443, metadata !1, metadata !498, i32 566, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!502 = metadata !{i32 570, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !500, i32 569, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!504 = metadata !{i32 569, i32 0, metadata !500, null}
!505 = metadata !{i32 578, i32 0, metadata !501, null}
!506 = metadata !{i32 588, i32 0, metadata !164, null}
!507 = metadata !{i32 589, i32 0, metadata !164, null}
!508 = metadata !{i32 590, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !164, i32 590, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!510 = metadata !{i32 591, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !512, i32 591, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!512 = metadata !{i32 786443, metadata !1, metadata !509, i32 590, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!513 = metadata !{i32 599, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !511, i32 593, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!515 = metadata !{i32 593, i32 0, metadata !511, null}
!516 = metadata !{i32 602, i32 0, metadata !512, null}
!517 = metadata !{i32 607, i32 0, metadata !135, null}
!518 = metadata !{i32 619, i32 0, metadata !169, null}
!519 = metadata !{i32 620, i32 0, metadata !169, null}
!520 = metadata !{i32 623, i32 0, metadata !169, null}
!521 = metadata !{i32 629, i32 0, metadata !169, null}
!522 = metadata !{i32 630, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !169, i32 629, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!524 = metadata !{i32 632, i32 0, metadata !523, null}
!525 = metadata !{i32 634, i32 0, metadata !169, null}
!526 = metadata !{i32 635, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !169, i32 634, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!528 = metadata !{i32 638, i32 0, metadata !527, null}
!529 = metadata !{i32 640, i32 0, metadata !169, null}
!530 = metadata !{i32 641, i32 0, metadata !169, null}
!531 = metadata !{i32 642, i32 0, metadata !169, null}
!532 = metadata !{i32 645, i32 0, metadata !178, null}
!533 = metadata !{i32 646, i32 0, metadata !178, null}
!534 = metadata !{i32 647, i32 0, metadata !178, null}
!535 = metadata !{i32 648, i32 0, metadata !178, null}
!536 = metadata !{i32 649, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !178, i32 649, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!538 = metadata !{i32 650, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !540, i32 650, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!540 = metadata !{i32 786443, metadata !1, metadata !537, i32 649, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!541 = metadata !{i32 653, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !539, i32 652, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!543 = metadata !{i32 652, i32 0, metadata !539, null}
!544 = metadata !{i32 655, i32 0, metadata !540, null}
!545 = metadata !{i32 661, i32 0, metadata !184, null}
!546 = metadata !{i32 662, i32 0, metadata !184, null}
!547 = metadata !{i32 663, i32 0, metadata !184, null}
!548 = metadata !{i32 664, i32 0, metadata !184, null}
!549 = metadata !{i32 665, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !184, i32 665, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!551 = metadata !{i32 666, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !553, i32 666, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!553 = metadata !{i32 786443, metadata !1, metadata !550, i32 665, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!554 = metadata !{i32 674, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !552, i32 668, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_util.c]
!556 = metadata !{i32 668, i32 0, metadata !552, null}
!557 = metadata !{i32 677, i32 0, metadata !553, null}
!558 = metadata !{i32 681, i32 0, metadata !169, null}
