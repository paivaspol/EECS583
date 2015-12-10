; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/replace.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/replace.c\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !131), !dbg !132
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !131), !dbg !133
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !134
  %2 = load i32* %1, align 4, !dbg !136, !tbaa !137
  %3 = add nsw i32 %2, -1, !dbg !136
  store i32 %3, i32* %1, align 4, !dbg !136, !tbaa !137
  %4 = icmp sgt i32 %2, 0, !dbg !146
  br i1 %4, label %._crit_edge, label %5, !dbg !147

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !148
  br label %10, !dbg !147

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !149
  %7 = load i32* %6, align 4, !dbg !149, !tbaa !150
  %8 = icmp sle i32 %2, %7, !dbg !151
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !152
  %or.cond = or i1 %9, %8, !dbg !153
  br i1 %or.cond, label %15, label %10, !dbg !153

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !148
  %11 = trunc i32 %_c to i8, !dbg !154
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !155
  %13 = load i8** %12, align 8, !dbg !156, !tbaa !157
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !156
  store i8* %14, i8** %12, align 8, !dbg !156, !tbaa !157
  store i8 %11, i8* %13, align 1, !dbg !158, !tbaa !159
  br label %17, !dbg !160

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !161
  br label %17, !dbg !162

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !163
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !131), !dbg !164
  %1 = icmp sgt i32 %__signo, 32, !dbg !165
  br i1 %1, label %5, label %2, !dbg !166

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !167
  %4 = shl i32 1, %3, !dbg !168
  br label %5, !dbg !166

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !166
  ret i32 %6, !dbg !169
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @replace(i8* %string, i8* nocapture readonly %search, i8* nocapture readonly %replace) #3 {
  tail call void @llvm.dbg.value(metadata i8* %string, i64 0, metadata !85, metadata !131), !dbg !170
  tail call void @llvm.dbg.value(metadata i8* %search, i64 0, metadata !86, metadata !131), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* %replace, i64 0, metadata !87, metadata !131), !dbg !172
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !88, metadata !131), !dbg !173
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !89, metadata !131), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !90, metadata !131), !dbg !175
  %1 = tail call i64 @strlen(i8* %search) #7, !dbg !176
  %2 = trunc i64 %1 to i32, !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !93, metadata !131), !dbg !177
  %3 = tail call i64 @strlen(i8* %string) #7, !dbg !178
  %4 = trunc i64 %3 to i32, !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !92, metadata !131), !dbg !179
  %5 = icmp eq i8* %string, null, !dbg !180
  %6 = icmp eq i32 %2, 0, !dbg !182
  %or.cond = or i1 %5, %6, !dbg !183
  %7 = icmp eq i32 %4, 0, !dbg !184
  %or.cond3 = or i1 %or.cond, %7, !dbg !183
  br i1 %or.cond3, label %8, label %11, !dbg !183

; <label>:8                                       ; preds = %0
  br i1 %5, label %.loopexit7, label %9, !dbg !185

; <label>:9                                       ; preds = %8
  %10 = tail call i8* @strdup(i8* %string) #7, !dbg !187
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !88, metadata !131), !dbg !173
  br label %.loopexit7, !dbg !189

; <label>:11                                      ; preds = %0
  %12 = tail call i64 @strlen(i8* %replace) #7, !dbg !190
  %13 = trunc i64 %12 to i32, !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !94, metadata !131), !dbg !191
  %14 = mul nsw i32 %13, %4, !dbg !192
  %15 = sdiv i32 %14, %2, !dbg !192
  %16 = icmp sgt i32 %4, %15, !dbg !192
  %. = select i1 %16, i32 %4, i32 %15, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !91, metadata !131), !dbg !193
  %17 = add nsw i32 %., 1, !dbg !194
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %17, i32 1) #7, !dbg !194
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !88, metadata !131), !dbg !173
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false), !dbg !195
  %20 = tail call i8* @__strcpy_chk(i8* %18, i8* %string, i64 %19) #7, !dbg !195
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !90, metadata !131), !dbg !175
  %21 = tail call i8* @strstr(i8* %18, i8* %search) #7, !dbg !196
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !89, metadata !131), !dbg !174
  %22 = icmp eq i8* %21, null, !dbg !197
  br i1 %22, label %.loopexit7, label %.lr.ph19, !dbg !198

.lr.ph19:                                         ; preds = %11
  %23 = icmp slt i32 %2, %13, !dbg !199
  %24 = icmp sgt i32 %13, 0, !dbg !202
  %25 = sub i64 %12, %1, !dbg !206
  %sext = shl i64 %12, 32, !dbg !209
  %26 = ashr exact i64 %sext, 32, !dbg !209
  %27 = icmp sgt i32 %2, %13, !dbg !210
  %28 = sub i32 %2, %13, !dbg !213
  %29 = add i32 %13, -1, !dbg !198
  %sext30 = shl i64 %25, 32, !dbg !198
  %30 = ashr exact i64 %sext30, 32, !dbg !198
  %sext31 = shl i64 %1, 32, !dbg !198
  %31 = ashr exact i64 %sext31, 32, !dbg !198
  br label %32, !dbg !198

; <label>:32                                      ; preds = %.lr.ph19, %.loopexit
  %33 = phi i8* [ %21, %.lr.ph19 ], [ %68, %.loopexit ]
  br i1 %23, label %53, label %.preheader6, !dbg !215

.preheader6:                                      ; preds = %32
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !216

.lr.ph:                                           ; preds = %.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader6 ]
  %34 = getelementptr inbounds i8* %replace, i64 %indvars.iv, !dbg !218
  %35 = load i8* %34, align 1, !dbg !218, !tbaa !159
  %36 = getelementptr inbounds i8* %33, i64 %indvars.iv, !dbg !220
  store i8 %35, i8* %36, align 1, !dbg !221, !tbaa !159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !216
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !216
  %exitcond = icmp eq i32 %lftr.wideiv, %29, !dbg !216
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !216

._crit_edge:                                      ; preds = %.lr.ph, %.preheader6
  %i.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %13, %.lr.ph ]
  br i1 %27, label %.preheader5, label %.loopexit, !dbg !222

.preheader5:                                      ; preds = %._crit_edge
  %37 = add i32 %28, %i.0.lcssa, !dbg !223
  %38 = sext i32 %37 to i64, !dbg !224
  %39 = getelementptr inbounds i8* %33, i64 %38, !dbg !224
  %40 = load i8* %39, align 1, !dbg !224, !tbaa !159
  %41 = icmp eq i8 %40, 0, !dbg !225
  %42 = sext i32 %i.0.lcssa to i64, !dbg !226
  %43 = getelementptr inbounds i8* %33, i64 %42, !dbg !226
  br i1 %41, label %._crit_edge11, label %.lr.ph10, !dbg !227

.lr.ph10:                                         ; preds = %.preheader5, %.lr.ph10
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph10 ], [ %42, %.preheader5 ]
  %44 = phi i8* [ %52, %.lr.ph10 ], [ %43, %.preheader5 ]
  %45 = phi i8 [ %50, %.lr.ph10 ], [ %40, %.preheader5 ]
  store i8 %45, i8* %44, align 1, !dbg !228, !tbaa !159
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1, !dbg !227
  %46 = trunc i64 %indvars.iv.next23 to i32, !dbg !223
  %47 = add i32 %28, %46, !dbg !223
  %48 = sext i32 %47 to i64, !dbg !224
  %49 = getelementptr inbounds i8* %33, i64 %48, !dbg !224
  %50 = load i8* %49, align 1, !dbg !224, !tbaa !159
  %51 = icmp eq i8 %50, 0, !dbg !225
  %52 = getelementptr inbounds i8* %33, i64 %indvars.iv.next23, !dbg !226
  br i1 %51, label %._crit_edge11, label %.lr.ph10, !dbg !227

._crit_edge11:                                    ; preds = %.lr.ph10, %.preheader5
  %.lcssa = phi i8* [ %43, %.preheader5 ], [ %52, %.lr.ph10 ]
  store i8 0, i8* %.lcssa, align 1, !dbg !230, !tbaa !159
  br label %.loopexit, !dbg !231

; <label>:53                                      ; preds = %32
  %54 = tail call i64 @strlen(i8* %33) #7, !dbg !232
  %55 = trunc i64 %54 to i32, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !97, metadata !131), !dbg !233
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !96, metadata !131), !dbg !234
  %56 = icmp slt i32 %55, %2, !dbg !235
  br i1 %56, label %.preheader, label %.lr.ph15, !dbg !236

.lr.ph15:                                         ; preds = %53
  %sext32 = shl i64 %54, 32
  %57 = ashr exact i64 %sext32, 32
  br label %58, !dbg !236

.preheader:                                       ; preds = %58, %53
  br i1 %24, label %.lr.ph17, label %.loopexit, !dbg !237

; <label>:58                                      ; preds = %58, %.lr.ph15
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %58 ], [ %57, %.lr.ph15 ]
  %59 = getelementptr inbounds i8* %33, i64 %indvars.iv24, !dbg !238
  %60 = load i8* %59, align 1, !dbg !238, !tbaa !159
  %61 = add nsw i64 %30, %indvars.iv24, !dbg !239
  %62 = getelementptr inbounds i8* %33, i64 %61, !dbg !240
  store i8 %60, i8* %62, align 1, !dbg !241, !tbaa !159
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1, !dbg !236
  %63 = icmp sgt i64 %indvars.iv24, %31, !dbg !235
  br i1 %63, label %58, label %.preheader, !dbg !236

.lr.ph17:                                         ; preds = %.preheader, %.lr.ph17
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph17 ], [ 0, %.preheader ]
  %64 = getelementptr inbounds i8* %replace, i64 %indvars.iv26, !dbg !242
  %65 = load i8* %64, align 1, !dbg !242, !tbaa !159
  %66 = getelementptr inbounds i8* %33, i64 %indvars.iv26, !dbg !243
  store i8 %65, i8* %66, align 1, !dbg !244, !tbaa !159
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !237
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32, !dbg !237
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %29, !dbg !237
  br i1 %exitcond29, label %.loopexit, label %.lr.ph17, !dbg !237

.loopexit:                                        ; preds = %.lr.ph17, %.preheader, %._crit_edge, %._crit_edge11
  %67 = getelementptr inbounds i8* %33, i64 %26, !dbg !209
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !90, metadata !131), !dbg !175
  %68 = tail call i8* @strstr(i8* %67, i8* %search) #7, !dbg !196
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !89, metadata !131), !dbg !174
  %69 = icmp eq i8* %68, null, !dbg !197
  br i1 %69, label %.loopexit7, label %32, !dbg !198

.loopexit7:                                       ; preds = %.loopexit, %11, %9, %8
  %.0 = phi i8* [ %10, %9 ], [ null, %8 ], [ %18, %11 ], [ %18, %.loopexit ]
  ret i8* %.0, !dbg !245
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @replaceww(i8* %string, i8* nocapture readonly %search, i8* nocapture readonly %replace) #3 {
  tail call void @llvm.dbg.value(metadata i8* %string, i64 0, metadata !100, metadata !131), !dbg !246
  tail call void @llvm.dbg.value(metadata i8* %search, i64 0, metadata !101, metadata !131), !dbg !247
  tail call void @llvm.dbg.value(metadata i8* %replace, i64 0, metadata !102, metadata !131), !dbg !248
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !103, metadata !131), !dbg !249
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !104, metadata !131), !dbg !250
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !105, metadata !131), !dbg !251
  %1 = tail call i64 @strlen(i8* %search) #7, !dbg !252
  %2 = trunc i64 %1 to i32, !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !108, metadata !131), !dbg !253
  %3 = tail call i64 @strlen(i8* %string) #7, !dbg !254
  %4 = trunc i64 %3 to i32, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !107, metadata !131), !dbg !255
  %5 = icmp eq i8* %string, null, !dbg !256
  %6 = icmp eq i32 %2, 0, !dbg !258
  %or.cond = or i1 %5, %6, !dbg !259
  %7 = icmp eq i32 %4, 0, !dbg !260
  %or.cond3 = or i1 %or.cond, %7, !dbg !259
  br i1 %or.cond3, label %8, label %11, !dbg !259

; <label>:8                                       ; preds = %0
  br i1 %5, label %.loopexit15, label %9, !dbg !261

; <label>:9                                       ; preds = %8
  %10 = tail call i8* @strdup(i8* %string) #7, !dbg !263
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !103, metadata !131), !dbg !249
  br label %.loopexit15, !dbg !265

; <label>:11                                      ; preds = %0
  %12 = tail call i64 @strlen(i8* %replace) #7, !dbg !266
  %13 = trunc i64 %12 to i32, !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !109, metadata !131), !dbg !267
  %14 = mul nsw i32 %13, %4, !dbg !268
  %15 = sdiv i32 %14, %2, !dbg !268
  %16 = icmp sgt i32 %4, %15, !dbg !268
  %. = select i1 %16, i32 %4, i32 %15, !dbg !268
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !106, metadata !131), !dbg !269
  %17 = add nsw i32 %., 1, !dbg !270
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 98, i32 %17, i32 1) #7, !dbg !270
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !103, metadata !131), !dbg !249
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false), !dbg !271
  %20 = tail call i8* @__strcpy_chk(i8* %18, i8* %string, i64 %19) #7, !dbg !271
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !105, metadata !131), !dbg !251
  %21 = tail call i8* @strstr(i8* %18, i8* %search) #7, !dbg !272
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !104, metadata !131), !dbg !250
  %22 = icmp eq i8* %21, null, !dbg !273
  br i1 %22, label %.loopexit15, label %.lr.ph28, !dbg !274

.lr.ph28:                                         ; preds = %11
  %sext = shl i64 %1, 32, !dbg !275
  %23 = ashr exact i64 %sext, 32, !dbg !275
  %24 = icmp slt i32 %2, %13, !dbg !278
  %25 = icmp sgt i32 %13, 0, !dbg !281
  %26 = sub i64 %12, %1, !dbg !285
  %27 = icmp sgt i32 %2, %13, !dbg !288
  %28 = sub i32 %2, %13, !dbg !291
  %29 = add i32 %13, -1, !dbg !274
  %sext39 = shl i64 %26, 32, !dbg !274
  %30 = ashr exact i64 %sext39, 32, !dbg !274
  %sext40 = shl i64 %1, 32, !dbg !274
  %31 = ashr exact i64 %sext40, 32, !dbg !274
  br label %32, !dbg !274

; <label>:32                                      ; preds = %.lr.ph28, %.backedge
  %33 = phi i8* [ %21, %.lr.ph28 ], [ %91, %.backedge ]
  %bufptr.026 = phi i8* [ %18, %.lr.ph28 ], [ %bufptr.0.be, %.backedge ]
  %34 = icmp eq i8* %33, %bufptr.026, !dbg !293
  br i1 %34, label %46, label %35, !dbg !294

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds i8* %33, i64 -1, !dbg !295
  %37 = load i8* %36, align 1, !dbg !295, !tbaa !159
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !115, metadata !131) #8, !dbg !296
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !122, metadata !131) #8, !dbg !298
  tail call void @llvm.dbg.value(metadata i64 1280, i64 0, metadata !123, metadata !131) #8, !dbg !300
  %isascii.i.i10 = icmp sgt i8 %37, -1, !dbg !301
  br i1 %isascii.i.i10, label %38, label %43, !dbg !301

; <label>:38                                      ; preds = %35
  %39 = sext i8 %37 to i64, !dbg !302
  %40 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %39, !dbg !302
  %41 = load i32* %40, align 4, !dbg !302, !tbaa !303
  %42 = and i32 %41, 1280, !dbg !304
  br label %isalnum.exit, !dbg !301

; <label>:43                                      ; preds = %35
  %44 = sext i8 %37 to i32, !dbg !295
  %45 = tail call i32 @__maskrune(i32 %44, i64 1280) #7, !dbg !305
  br label %isalnum.exit, !dbg !301

isalnum.exit:                                     ; preds = %38, %43
  %.sink.i.in.i = phi i32 [ %42, %38 ], [ %45, %43 ], !dbg !306
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !307
  br i1 %.sink.i.i, label %46, label %.backedge, !dbg !308

; <label>:46                                      ; preds = %isalnum.exit, %32
  %47 = getelementptr inbounds i8* %33, i64 %23, !dbg !275
  %48 = load i8* %47, align 1, !dbg !275, !tbaa !159
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !115, metadata !131) #8, !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !122, metadata !131) #8, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 1280, i64 0, metadata !123, metadata !131) #8, !dbg !313
  %isascii.i.i611 = icmp sgt i8 %48, -1, !dbg !314
  br i1 %isascii.i.i611, label %49, label %54, !dbg !314

; <label>:49                                      ; preds = %46
  %50 = sext i8 %48 to i64, !dbg !315
  %51 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %50, !dbg !315
  %52 = load i32* %51, align 4, !dbg !315, !tbaa !303
  %53 = and i32 %52, 1280, !dbg !316
  br label %isalnum.exit9, !dbg !314

; <label>:54                                      ; preds = %46
  %55 = sext i8 %48 to i32, !dbg !275
  %56 = tail call i32 @__maskrune(i32 %55, i64 1280) #7, !dbg !317
  br label %isalnum.exit9, !dbg !314

isalnum.exit9:                                    ; preds = %49, %54
  %.sink.i.in.i7 = phi i32 [ %53, %49 ], [ %56, %54 ], !dbg !318
  %.sink.i.i8 = icmp eq i32 %.sink.i.in.i7, 0, !dbg !319
  br i1 %.sink.i.i8, label %57, label %.backedge, !dbg !320

; <label>:57                                      ; preds = %isalnum.exit9
  br i1 %24, label %77, label %.preheader14, !dbg !321

.preheader14:                                     ; preds = %57
  br i1 %25, label %.lr.ph, label %._crit_edge, !dbg !322

.lr.ph:                                           ; preds = %.preheader14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader14 ]
  %58 = getelementptr inbounds i8* %replace, i64 %indvars.iv, !dbg !324
  %59 = load i8* %58, align 1, !dbg !324, !tbaa !159
  %60 = getelementptr inbounds i8* %33, i64 %indvars.iv, !dbg !326
  store i8 %59, i8* %60, align 1, !dbg !327, !tbaa !159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !322
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !322
  %exitcond = icmp eq i32 %lftr.wideiv, %29, !dbg !322
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !322

._crit_edge:                                      ; preds = %.lr.ph, %.preheader14
  %i.0.lcssa = phi i32 [ 0, %.preheader14 ], [ %13, %.lr.ph ]
  br i1 %27, label %.preheader13, label %.backedge, !dbg !328

.preheader13:                                     ; preds = %._crit_edge
  %61 = add i32 %28, %i.0.lcssa, !dbg !329
  %62 = sext i32 %61 to i64, !dbg !330
  %63 = getelementptr inbounds i8* %33, i64 %62, !dbg !330
  %64 = load i8* %63, align 1, !dbg !330, !tbaa !159
  %65 = icmp eq i8 %64, 0, !dbg !331
  %66 = sext i32 %i.0.lcssa to i64, !dbg !332
  %67 = getelementptr inbounds i8* %33, i64 %66, !dbg !332
  br i1 %65, label %._crit_edge19, label %.lr.ph18, !dbg !333

.lr.ph18:                                         ; preds = %.preheader13, %.lr.ph18
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph18 ], [ %66, %.preheader13 ]
  %68 = phi i8* [ %76, %.lr.ph18 ], [ %67, %.preheader13 ]
  %69 = phi i8 [ %74, %.lr.ph18 ], [ %64, %.preheader13 ]
  store i8 %69, i8* %68, align 1, !dbg !334, !tbaa !159
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1, !dbg !333
  %70 = trunc i64 %indvars.iv.next32 to i32, !dbg !329
  %71 = add i32 %28, %70, !dbg !329
  %72 = sext i32 %71 to i64, !dbg !330
  %73 = getelementptr inbounds i8* %33, i64 %72, !dbg !330
  %74 = load i8* %73, align 1, !dbg !330, !tbaa !159
  %75 = icmp eq i8 %74, 0, !dbg !331
  %76 = getelementptr inbounds i8* %33, i64 %indvars.iv.next32, !dbg !332
  br i1 %75, label %._crit_edge19, label %.lr.ph18, !dbg !333

._crit_edge19:                                    ; preds = %.lr.ph18, %.preheader13
  %.lcssa = phi i8* [ %67, %.preheader13 ], [ %76, %.lr.ph18 ]
  store i8 0, i8* %.lcssa, align 1, !dbg !336, !tbaa !159
  br label %.backedge, !dbg !337

; <label>:77                                      ; preds = %57
  %78 = tail call i64 @strlen(i8* %33) #7, !dbg !338
  %79 = trunc i64 %78 to i32, !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !111, metadata !131), !dbg !339
  %80 = icmp slt i32 %79, %2, !dbg !340
  br i1 %80, label %.preheader, label %.lr.ph23, !dbg !341

.lr.ph23:                                         ; preds = %77
  %sext41 = shl i64 %78, 32
  %81 = ashr exact i64 %sext41, 32
  br label %82, !dbg !341

.preheader:                                       ; preds = %82, %77
  br i1 %25, label %.lr.ph25, label %.backedge, !dbg !342

; <label>:82                                      ; preds = %82, %.lr.ph23
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %82 ], [ %81, %.lr.ph23 ]
  %83 = getelementptr inbounds i8* %33, i64 %indvars.iv33, !dbg !343
  %84 = load i8* %83, align 1, !dbg !343, !tbaa !159
  %85 = add nsw i64 %30, %indvars.iv33, !dbg !344
  %86 = getelementptr inbounds i8* %33, i64 %85, !dbg !345
  store i8 %84, i8* %86, align 1, !dbg !346, !tbaa !159
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1, !dbg !341
  %87 = icmp sgt i64 %indvars.iv33, %31, !dbg !340
  br i1 %87, label %82, label %.preheader, !dbg !341

.lr.ph25:                                         ; preds = %.preheader, %.lr.ph25
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph25 ], [ 0, %.preheader ]
  %88 = getelementptr inbounds i8* %replace, i64 %indvars.iv35, !dbg !347
  %89 = load i8* %88, align 1, !dbg !347, !tbaa !159
  %90 = getelementptr inbounds i8* %33, i64 %indvars.iv35, !dbg !348
  store i8 %89, i8* %90, align 1, !dbg !349, !tbaa !159
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !342
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32, !dbg !342
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %29, !dbg !342
  br i1 %exitcond38, label %.backedge, label %.lr.ph25, !dbg !342

.backedge:                                        ; preds = %.lr.ph25, %isalnum.exit, %isalnum.exit9, %._crit_edge19, %._crit_edge, %.preheader
  %.pn.in.in = phi i64 [ %12, %.preheader ], [ %12, %._crit_edge ], [ %12, %._crit_edge19 ], [ %1, %isalnum.exit9 ], [ %1, %isalnum.exit ], [ %12, %.lr.ph25 ]
  %.pn.in = shl i64 %.pn.in.in, 32, !dbg !350
  %.pn = ashr exact i64 %.pn.in, 32, !dbg !350
  %bufptr.0.be = getelementptr inbounds i8* %33, i64 %.pn, !dbg !350
  %91 = tail call i8* @strstr(i8* %bufptr.0.be, i8* %search) #7, !dbg !272
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !104, metadata !131), !dbg !250
  %92 = icmp eq i8* %91, null, !dbg !273
  br i1 %92, label %.loopexit15, label %32, !dbg !274

.loopexit15:                                      ; preds = %.backedge, %11, %9, %8
  %.0 = phi i8* [ %10, %9 ], [ null, %8 ], [ %18, %11 ], [ %18, %.backedge ]
  ret i8* %.0, !dbg !351
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!127, !128, !129}
!llvm.ident = !{!130}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/replace.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !{!7, !75, !81, !98, !112, !116, !124}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !14, file: !8, line: 123, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !14, file: !8, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !14, file: !8, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !8, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !14, file: !8, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !14, file: !8, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !8, line: 89, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !8, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !14, file: !8, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !8, line: 132, baseType: !5, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !8, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!11, !5}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !8, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!11, !5, !39, !11}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !8, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !44, !11}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !8, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!11, !5, !54, !11}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !8, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !8, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !8, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !8, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !8, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !8, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !8, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !8, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !11)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !12)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!11, !11}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !11)
!81 = !DISubprogram(name: "replace", scope: !1, file: !1, line: 39, type: !82, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i8*)* @replace, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!39, !39, !39, !39}
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 1, scope: !81, file: !1, line: 39, type: !39)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search", arg: 2, scope: !81, file: !1, line: 39, type: !39)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "replace", arg: 3, scope: !81, file: !1, line: 39, type: !39)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !81, file: !1, line: 41, type: !39)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !81, file: !1, line: 41, type: !39)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufptr", scope: !81, file: !1, line: 41, type: !39)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blen", scope: !81, file: !1, line: 42, type: !11)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stringlen", scope: !81, file: !1, line: 42, type: !11)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !81, file: !1, line: 42, type: !11)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rlen", scope: !81, file: !1, line: 42, type: !11)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 43, type: !11)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !81, file: !1, line: 43, type: !11)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !81, file: !1, line: 43, type: !11)
!98 = !DISubprogram(name: "replaceww", scope: !1, file: !1, line: 83, type: !82, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i8*)* @replaceww, variables: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 1, scope: !98, file: !1, line: 83, type: !39)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search", arg: 2, scope: !98, file: !1, line: 83, type: !39)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "replace", arg: 3, scope: !98, file: !1, line: 83, type: !39)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !98, file: !1, line: 85, type: !39)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !98, file: !1, line: 85, type: !39)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufptr", scope: !98, file: !1, line: 85, type: !39)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !98, file: !1, line: 86, type: !11)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stringlen", scope: !98, file: !1, line: 86, type: !11)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "searchlen", scope: !98, file: !1, line: 86, type: !11)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "replacelen", scope: !98, file: !1, line: 86, type: !11)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !98, file: !1, line: 87, type: !11)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !98, file: !1, line: 87, type: !11)
!112 = !DISubprogram(name: "isalnum", scope: !113, file: !113, line: 212, type: !77, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, variables: !114)
!113 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!114 = !{!115}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !112, file: !113, line: 212, type: !11)
!116 = !DISubprogram(name: "__istype", scope: !113, file: !113, line: 153, type: !117, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !121)
!117 = !DISubroutineType(types: !118)
!118 = !{!11, !119, !120}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !48, line: 70, baseType: !11)
!120 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!121 = !{!122, !123}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !116, file: !113, line: 153, type: !119)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !116, file: !113, line: 153, type: !120)
!124 = !DISubprogram(name: "isascii", scope: !113, file: !113, line: 135, type: !77, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !125)
!125 = !{!126}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !124, file: !113, line: 135, type: !11)
!127 = !{i32 2, !"Dwarf Version", i32 2}
!128 = !{i32 2, !"Debug Info Version", i32 700000003}
!129 = !{i32 1, !"PIC Level", i32 2}
!130 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!131 = !DIExpression()
!132 = !DILocation(line: 348, column: 40, scope: !7)
!133 = !DILocation(line: 348, column: 50, scope: !7)
!134 = !DILocation(line: 349, column: 12, scope: !135)
!135 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!136 = !DILocation(line: 349, column: 6, scope: !135)
!137 = !{!138, !142, i64 12}
!138 = !{!"__sFILE", !139, i64 0, !142, i64 8, !142, i64 12, !143, i64 16, !143, i64 18, !144, i64 24, !142, i64 40, !139, i64 48, !139, i64 56, !139, i64 64, !139, i64 72, !139, i64 80, !144, i64 88, !139, i64 104, !142, i64 112, !140, i64 116, !140, i64 119, !144, i64 120, !142, i64 136, !145, i64 144}
!139 = !{!"any pointer", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !{!"int", !140, i64 0}
!143 = !{!"short", !140, i64 0}
!144 = !{!"__sbuf", !139, i64 0, !142, i64 8}
!145 = !{!"long long", !140, i64 0}
!146 = !DILocation(line: 349, column: 15, scope: !135)
!147 = !DILocation(line: 349, column: 20, scope: !135)
!148 = !DILocation(line: 350, column: 10, scope: !135)
!149 = !DILocation(line: 349, column: 38, scope: !135)
!150 = !{!138, !142, i64 40}
!151 = !DILocation(line: 349, column: 31, scope: !135)
!152 = !DILocation(line: 349, column: 59, scope: !135)
!153 = !DILocation(line: 349, column: 47, scope: !135)
!154 = !DILocation(line: 350, column: 23, scope: !135)
!155 = !DILocation(line: 350, column: 16, scope: !135)
!156 = !DILocation(line: 350, column: 18, scope: !135)
!157 = !{!138, !139, i64 0}
!158 = !DILocation(line: 350, column: 21, scope: !135)
!159 = !{!140, !140, i64 0}
!160 = !DILocation(line: 350, column: 3, scope: !135)
!161 = !DILocation(line: 352, column: 11, scope: !135)
!162 = !DILocation(line: 352, column: 3, scope: !135)
!163 = !DILocation(line: 353, column: 1, scope: !7)
!164 = !DILocation(line: 114, column: 15, scope: !75)
!165 = !DILocation(line: 116, column: 20, scope: !75)
!166 = !DILocation(line: 116, column: 12, scope: !75)
!167 = !DILocation(line: 116, column: 57, scope: !75)
!168 = !DILocation(line: 116, column: 45, scope: !75)
!169 = !DILocation(line: 116, column: 5, scope: !75)
!170 = !DILocation(line: 39, column: 21, scope: !81)
!171 = !DILocation(line: 39, column: 34, scope: !81)
!172 = !DILocation(line: 39, column: 47, scope: !81)
!173 = !DILocation(line: 41, column: 9, scope: !81)
!174 = !DILocation(line: 41, column: 19, scope: !81)
!175 = !DILocation(line: 41, column: 29, scope: !81)
!176 = !DILocation(line: 45, column: 8, scope: !81)
!177 = !DILocation(line: 42, column: 23, scope: !81)
!178 = !DILocation(line: 46, column: 13, scope: !81)
!179 = !DILocation(line: 42, column: 13, scope: !81)
!180 = !DILocation(line: 47, column: 15, scope: !181)
!181 = distinct !DILexicalBlock(scope: !81, file: !1, line: 47, column: 7)
!182 = !DILocation(line: 47, column: 33, scope: !181)
!183 = !DILocation(line: 47, column: 24, scope: !181)
!184 = !DILocation(line: 47, column: 53, scope: !181)
!185 = !DILocation(line: 48, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 47, column: 60)
!187 = !DILocation(line: 49, column: 11, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !1, line: 48, column: 9)
!189 = !DILocation(line: 49, column: 7, scope: !188)
!190 = !DILocation(line: 52, column: 8, scope: !81)
!191 = !DILocation(line: 42, column: 28, scope: !81)
!192 = !DILocation(line: 53, column: 8, scope: !81)
!193 = !DILocation(line: 42, column: 8, scope: !81)
!194 = !DILocation(line: 54, column: 3, scope: !81)
!195 = !DILocation(line: 55, column: 3, scope: !81)
!196 = !DILocation(line: 58, column: 15, scope: !81)
!197 = !DILocation(line: 58, column: 38, scope: !81)
!198 = !DILocation(line: 58, column: 3, scope: !81)
!199 = !DILocation(line: 59, column: 14, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 59, column: 9)
!201 = distinct !DILexicalBlock(scope: !81, file: !1, line: 58, column: 47)
!202 = !DILocation(line: 74, column: 18, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 74, column: 7)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 74, column: 7)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 70, column: 10)
!206 = !DILocation(line: 73, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 72, column: 7)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 72, column: 7)
!209 = !DILocation(line: 77, column: 15, scope: !201)
!210 = !DILocation(line: 62, column: 16, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 62, column: 11)
!212 = distinct !DILexicalBlock(scope: !200, file: !1, line: 59, column: 23)
!213 = !DILocation(line: 63, column: 14, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 62, column: 24)
!215 = !DILocation(line: 59, column: 9, scope: !201)
!216 = !DILocation(line: 60, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 60, column: 7)
!218 = !DILocation(line: 61, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !1, line: 60, column: 7)
!220 = !DILocation(line: 61, column: 2, scope: !219)
!221 = !DILocation(line: 61, column: 8, scope: !219)
!222 = !DILocation(line: 62, column: 11, scope: !212)
!223 = !DILocation(line: 63, column: 19, scope: !214)
!224 = !DILocation(line: 63, column: 9, scope: !214)
!225 = !DILocation(line: 63, column: 26, scope: !214)
!226 = !DILocation(line: 67, column: 2, scope: !214)
!227 = !DILocation(line: 63, column: 2, scope: !214)
!228 = !DILocation(line: 64, column: 10, scope: !229)
!229 = distinct !DILexicalBlock(scope: !214, file: !1, line: 63, column: 35)
!230 = !DILocation(line: 67, column: 8, scope: !214)
!231 = !DILocation(line: 68, column: 7, scope: !214)
!232 = !DILocation(line: 71, column: 11, scope: !205)
!233 = !DILocation(line: 43, column: 12, scope: !81)
!234 = !DILocation(line: 43, column: 10, scope: !81)
!235 = !DILocation(line: 72, column: 20, scope: !207)
!236 = !DILocation(line: 72, column: 7, scope: !208)
!237 = !DILocation(line: 74, column: 7, scope: !204)
!238 = !DILocation(line: 73, column: 19, scope: !207)
!239 = !DILocation(line: 73, column: 15, scope: !207)
!240 = !DILocation(line: 73, column: 2, scope: !207)
!241 = !DILocation(line: 73, column: 18, scope: !207)
!242 = !DILocation(line: 75, column: 9, scope: !203)
!243 = !DILocation(line: 75, column: 2, scope: !203)
!244 = !DILocation(line: 75, column: 8, scope: !203)
!245 = !DILocation(line: 81, column: 1, scope: !81)
!246 = !DILocation(line: 83, column: 23, scope: !98)
!247 = !DILocation(line: 83, column: 36, scope: !98)
!248 = !DILocation(line: 83, column: 49, scope: !98)
!249 = !DILocation(line: 85, column: 9, scope: !98)
!250 = !DILocation(line: 85, column: 19, scope: !98)
!251 = !DILocation(line: 85, column: 29, scope: !98)
!252 = !DILocation(line: 89, column: 13, scope: !98)
!253 = !DILocation(line: 86, column: 25, scope: !98)
!254 = !DILocation(line: 90, column: 13, scope: !98)
!255 = !DILocation(line: 86, column: 15, scope: !98)
!256 = !DILocation(line: 91, column: 15, scope: !257)
!257 = distinct !DILexicalBlock(scope: !98, file: !1, line: 91, column: 7)
!258 = !DILocation(line: 91, column: 38, scope: !257)
!259 = !DILocation(line: 91, column: 24, scope: !257)
!260 = !DILocation(line: 91, column: 58, scope: !257)
!261 = !DILocation(line: 92, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !1, line: 91, column: 65)
!263 = !DILocation(line: 93, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !1, line: 92, column: 9)
!265 = !DILocation(line: 93, column: 7, scope: !264)
!266 = !DILocation(line: 96, column: 14, scope: !98)
!267 = !DILocation(line: 86, column: 35, scope: !98)
!268 = !DILocation(line: 97, column: 10, scope: !98)
!269 = !DILocation(line: 86, column: 8, scope: !98)
!270 = !DILocation(line: 98, column: 3, scope: !98)
!271 = !DILocation(line: 99, column: 3, scope: !98)
!272 = !DILocation(line: 102, column: 15, scope: !98)
!273 = !DILocation(line: 102, column: 38, scope: !98)
!274 = !DILocation(line: 102, column: 3, scope: !98)
!275 = !DILocation(line: 103, column: 58, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 103, column: 9)
!277 = distinct !DILexicalBlock(scope: !98, file: !1, line: 102, column: 47)
!278 = !DILocation(line: 104, column: 22, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 104, column: 11)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 103, column: 75)
!281 = !DILocation(line: 118, column: 13, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 118, column: 2)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 118, column: 2)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 115, column: 12)
!285 = !DILocation(line: 117, column: 18, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 116, column: 2)
!287 = distinct !DILexicalBlock(scope: !284, file: !1, line: 116, column: 2)
!288 = !DILocation(line: 107, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 107, column: 6)
!290 = distinct !DILexicalBlock(scope: !279, file: !1, line: 104, column: 36)
!291 = !DILocation(line: 108, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 107, column: 30)
!293 = !DILocation(line: 103, column: 14, scope: !276)
!294 = !DILocation(line: 103, column: 24, scope: !276)
!295 = !DILocation(line: 103, column: 36, scope: !276)
!296 = !DILocation(line: 212, column: 13, scope: !112, inlinedAt: !297)
!297 = distinct !DILocation(line: 103, column: 28, scope: !276)
!298 = !DILocation(line: 153, column: 29, scope: !116, inlinedAt: !299)
!299 = distinct !DILocation(line: 214, column: 10, scope: !112, inlinedAt: !297)
!300 = !DILocation(line: 153, column: 47, scope: !116, inlinedAt: !299)
!301 = !DILocation(line: 158, column: 10, scope: !116, inlinedAt: !299)
!302 = !DILocation(line: 158, column: 27, scope: !116, inlinedAt: !299)
!303 = !{!142, !142, i64 0}
!304 = !DILocation(line: 158, column: 25, scope: !116, inlinedAt: !299)
!305 = !DILocation(line: 159, column: 7, scope: !116, inlinedAt: !299)
!306 = !DILocation(line: 103, column: 28, scope: !276)
!307 = !DILocation(line: 214, column: 10, scope: !112, inlinedAt: !297)
!308 = !DILocation(line: 103, column: 46, scope: !276)
!309 = !DILocation(line: 212, column: 13, scope: !112, inlinedAt: !310)
!310 = distinct !DILocation(line: 103, column: 50, scope: !276)
!311 = !DILocation(line: 153, column: 29, scope: !116, inlinedAt: !312)
!312 = distinct !DILocation(line: 214, column: 10, scope: !112, inlinedAt: !310)
!313 = !DILocation(line: 153, column: 47, scope: !116, inlinedAt: !312)
!314 = !DILocation(line: 158, column: 10, scope: !116, inlinedAt: !312)
!315 = !DILocation(line: 158, column: 27, scope: !116, inlinedAt: !312)
!316 = !DILocation(line: 158, column: 25, scope: !116, inlinedAt: !312)
!317 = !DILocation(line: 159, column: 7, scope: !116, inlinedAt: !312)
!318 = !DILocation(line: 103, column: 50, scope: !276)
!319 = !DILocation(line: 214, column: 10, scope: !112, inlinedAt: !310)
!320 = !DILocation(line: 103, column: 9, scope: !277)
!321 = !DILocation(line: 104, column: 11, scope: !280)
!322 = !DILocation(line: 105, column: 2, scope: !323)
!323 = distinct !DILexicalBlock(scope: !290, file: !1, line: 105, column: 2)
!324 = !DILocation(line: 106, column: 11, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !1, line: 105, column: 2)
!326 = !DILocation(line: 106, column: 4, scope: !325)
!327 = !DILocation(line: 106, column: 10, scope: !325)
!328 = !DILocation(line: 107, column: 6, scope: !290)
!329 = !DILocation(line: 108, column: 26, scope: !292)
!330 = !DILocation(line: 108, column: 11, scope: !292)
!331 = !DILocation(line: 108, column: 39, scope: !292)
!332 = !DILocation(line: 112, column: 4, scope: !292)
!333 = !DILocation(line: 108, column: 4, scope: !292)
!334 = !DILocation(line: 109, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !292, file: !1, line: 108, column: 48)
!336 = !DILocation(line: 112, column: 10, scope: !292)
!337 = !DILocation(line: 113, column: 2, scope: !292)
!338 = !DILocation(line: 116, column: 8, scope: !287)
!339 = !DILocation(line: 87, column: 10, scope: !98)
!340 = !DILocation(line: 116, column: 23, scope: !286)
!341 = !DILocation(line: 116, column: 2, scope: !287)
!342 = !DILocation(line: 118, column: 2, scope: !283)
!343 = !DILocation(line: 117, column: 32, scope: !286)
!344 = !DILocation(line: 117, column: 28, scope: !286)
!345 = !DILocation(line: 117, column: 4, scope: !286)
!346 = !DILocation(line: 117, column: 31, scope: !286)
!347 = !DILocation(line: 119, column: 11, scope: !282)
!348 = !DILocation(line: 119, column: 4, scope: !282)
!349 = !DILocation(line: 119, column: 10, scope: !282)
!350 = !DILocation(line: 123, column: 17, scope: !276)
!351 = !DILocation(line: 127, column: 1, scope: !98)
