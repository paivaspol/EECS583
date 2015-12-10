; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/shuffle.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/shuffle.c\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"hey, you didn't end on s_f.\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"hey, pos (%d) != len (%d).\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StrShuffle(i8* %s1, i8* %s2) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !14, metadata !145), !dbg !146
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !15, metadata !145), !dbg !147
  %1 = icmp eq i8* %s1, %s2, !dbg !148
  br i1 %1, label %5, label %2, !dbg !150

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %s1, i1 false), !dbg !151
  %4 = tail call i8* @__strcpy_chk(i8* %s1, i8* %s2, i64 %3) #6, !dbg !151
  br label %5, !dbg !151

; <label>:5                                       ; preds = %0, %2
  %6 = tail call i64 @strlen(i8* %s1) #6, !dbg !152
  %7 = trunc i64 %6 to i32, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !16, metadata !145), !dbg !154
  %8 = icmp sgt i32 %7, 1, !dbg !155
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !157

.lr.ph:                                           ; preds = %5
  %sext = shl i64 %6, 32
  %9 = ashr exact i64 %sext, 32
  br label %10, !dbg !157

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ %9, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %11 = tail call double @sre_random() #6, !dbg !158
  %12 = trunc i64 %indvars.iv to i32, !dbg !158
  %13 = sitofp i32 %12 to double, !dbg !158
  %14 = fmul double %13, %11, !dbg !158
  %15 = fptosi double %14 to i32, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !17, metadata !145), !dbg !160
  %16 = sext i32 %15 to i64, !dbg !161
  %17 = getelementptr inbounds i8* %s1, i64 %16, !dbg !161
  %18 = load i8* %17, align 1, !dbg !161, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !18, metadata !145), !dbg !165
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !157
  %19 = getelementptr inbounds i8* %s1, i64 %indvars.iv.next, !dbg !166
  %20 = load i8* %19, align 1, !dbg !166, !tbaa !162
  store i8 %20, i8* %17, align 1, !dbg !167, !tbaa !162
  store i8 %18, i8* %19, align 1, !dbg !168, !tbaa !162
  %21 = icmp sgt i64 %indvars.iv.next, 1, !dbg !155
  br i1 %21, label %10, label %._crit_edge, !dbg !157

._crit_edge:                                      ; preds = %10, %5
  ret i32 1, !dbg !169
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare double @sre_random() #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StrDPShuffle(i8* nocapture %s1, i8* nocapture readonly %s2) #0 {
  %Z = alloca [26 x i8], align 16
  %Z42 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 0
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !21, metadata !145), !dbg !170
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !22, metadata !145), !dbg !171
  tail call void @llvm.dbg.declare(metadata [26 x i8]* %Z, metadata !34, metadata !145), !dbg !172
  %1 = tail call i64 @strlen(i8* %s2) #6, !dbg !173
  %2 = trunc i64 %1 to i32, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !23, metadata !145), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !145), !dbg !175
  %3 = icmp sgt i32 %2, 0, !dbg !176
  br i1 %3, label %.lr.ph29, label %._crit_edge30, !dbg !179

.lr.ph29:                                         ; preds = %0
  %sext56 = shl i64 %1, 32, !dbg !179
  %4 = ashr exact i64 %sext56, 32, !dbg !179
  br label %7, !dbg !179

; <label>:5                                       ; preds = %isalpha.exit
  %6 = icmp slt i64 %indvars.iv.next55, %4, !dbg !176
  br i1 %6, label %7, label %._crit_edge30, !dbg !179

; <label>:7                                       ; preds = %.lr.ph29, %5
  %indvars.iv54 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next55, %5 ]
  %8 = getelementptr inbounds i8* %s2, i64 %indvars.iv54, !dbg !180
  %9 = load i8* %8, align 1, !dbg !180, !tbaa !162
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !125, metadata !145) #5, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !133, metadata !145) #5, !dbg !184
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !134, metadata !145) #5, !dbg !186
  %isascii.i.i6 = icmp sgt i8 %9, -1, !dbg !187
  br i1 %isascii.i.i6, label %10, label %15, !dbg !187

; <label>:10                                      ; preds = %7
  %11 = sext i8 %9 to i64, !dbg !188
  %12 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %11, !dbg !188
  %13 = load i32* %12, align 4, !dbg !188, !tbaa !189
  %14 = and i32 %13, 256, !dbg !191
  br label %isalpha.exit, !dbg !187

; <label>:15                                      ; preds = %7
  %16 = sext i8 %9 to i32, !dbg !192
  %17 = tail call i32 @__maskrune(i32 %16, i64 256) #6, !dbg !193
  br label %isalpha.exit, !dbg !187

isalpha.exit:                                     ; preds = %10, %15
  %.sink.i.in.i = phi i32 [ %14, %10 ], [ %17, %15 ], !dbg !194
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !195
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !179
  br i1 %.sink.i.i, label %.loopexit10, label %5, !dbg !196

._crit_edge30:                                    ; preds = %5, %0
  %18 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 127, i64 208) #6, !dbg !197
  %19 = bitcast i8* %18 to i8**, !dbg !197
  tail call void @llvm.dbg.value(metadata i8** %19, i64 0, metadata !27, metadata !145), !dbg !198
  %20 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 128, i64 104) #6, !dbg !199
  %21 = bitcast i8* %20 to i32*, !dbg !199
  tail call void @llvm.dbg.value(metadata i32* %21, i64 0, metadata !29, metadata !145), !dbg !200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !145), !dbg !201
  %22 = shl i64 %1, 32, !dbg !202
  %sext4 = add i64 %22, -4294967296, !dbg !202
  %23 = ashr exact i64 %sext4, 32, !dbg !202
  br label %24, !dbg !206

; <label>:24                                      ; preds = %24, %._crit_edge30
  %indvars.iv51 = phi i64 [ 0, %._crit_edge30 ], [ %indvars.iv.next52, %24 ]
  %25 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 131, i64 %23) #6, !dbg !202
  %26 = getelementptr inbounds i8** %19, i64 %indvars.iv51, !dbg !207
  store i8* %25, i8** %26, align 8, !dbg !208, !tbaa !209
  %27 = getelementptr inbounds i32* %21, i64 %indvars.iv51, !dbg !211
  store i32 0, i32* %27, align 4, !dbg !212, !tbaa !189
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !206
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 26, !dbg !206
  br i1 %exitcond53, label %28, label %24, !dbg !206

; <label>:28                                      ; preds = %24
  %29 = load i8* %s2, align 1, !dbg !213, !tbaa !162
  %30 = sext i8 %29 to i32, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !140, metadata !145) #5, !dbg !215
  %31 = tail call i32 @__toupper(i32 %30) #6, !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !25, metadata !145), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !24, metadata !145), !dbg !175
  %32 = icmp sgt i32 %2, 1, !dbg !218
  br i1 %32, label %.lr.ph25, label %.critedge, !dbg !221

.lr.ph25:                                         ; preds = %28
  %33 = add nsw i32 %31, -65, !dbg !222
  %34 = add i32 %2, -1, !dbg !221
  br label %35, !dbg !221

; <label>:35                                      ; preds = %35, %.lr.ph25
  %indvars.iv48 = phi i64 [ 1, %.lr.ph25 ], [ %indvars.iv.next49, %35 ]
  %x.122 = phi i32 [ %33, %.lr.ph25 ], [ %40, %35 ]
  %36 = getelementptr inbounds i8* %s2, i64 %indvars.iv48, !dbg !223
  %37 = load i8* %36, align 1, !dbg !223, !tbaa !162
  %38 = sext i8 %37 to i32, !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !140, metadata !145) #5, !dbg !226
  %39 = tail call i32 @__toupper(i32 %38) #6, !dbg !228
  %40 = add nsw i32 %39, -65, !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !26, metadata !145), !dbg !230
  %41 = trunc i32 %40 to i8, !dbg !231
  %42 = sext i32 %x.122 to i64, !dbg !232
  %43 = getelementptr inbounds i32* %21, i64 %42, !dbg !232
  %44 = load i32* %43, align 4, !dbg !232, !tbaa !189
  %45 = sext i32 %44 to i64, !dbg !233
  %46 = getelementptr inbounds i8** %19, i64 %42, !dbg !233
  %47 = load i8** %46, align 8, !dbg !233, !tbaa !209
  %48 = getelementptr inbounds i8* %47, i64 %45, !dbg !233
  store i8 %41, i8* %48, align 1, !dbg !234, !tbaa !162
  %49 = load i32* %43, align 4, !dbg !235, !tbaa !189
  %50 = add nsw i32 %49, 1, !dbg !235
  store i32 %50, i32* %43, align 4, !dbg !235, !tbaa !189
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !25, metadata !145), !dbg !201
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !221
  %lftr.wideiv = trunc i64 %indvars.iv48 to i32, !dbg !221
  %exitcond50 = icmp eq i32 %lftr.wideiv, %34, !dbg !221
  br i1 %exitcond50, label %.critedge, label %35, !dbg !221

.critedge:                                        ; preds = %35, %28
  %51 = getelementptr inbounds i8* %s2, i64 %23, !dbg !236
  %52 = load i8* %51, align 1, !dbg !236, !tbaa !162
  %53 = sext i8 %52 to i32, !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !140, metadata !145) #5, !dbg !238
  %54 = tail call i32 @__toupper(i32 %53) #6, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !39, metadata !145), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !145), !dbg !201
  %55 = shl i32 %54, 24, !dbg !242
  %sext3 = add i32 %55, -1090519040, !dbg !242
  %56 = ashr exact i32 %sext3, 24, !dbg !242
  %57 = sext i32 %56 to i64, !dbg !248
  %58 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %57, !dbg !248
  br label %.critedge5

.critedge5:                                       ; preds = %86, %112, %.critedge
  %x.2 = phi i32 [ 0, %.critedge ], [ %87, %86 ], [ 0, %112 ]
  %59 = icmp slt i32 %x.2, 26, !dbg !249
  br i1 %59, label %60, label %.preheader9, !dbg !250

.preheader9:                                      ; preds = %.critedge5
  call void @llvm.memset.p0i8.i64(i8* %Z42, i8 0, i64 26, i32 16, i1 false), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !145), !dbg !254
  store i8 1, i8* %58, align 1, !dbg !255, !tbaa !162
  br label %.preheader7, !dbg !256

; <label>:60                                      ; preds = %.critedge5
  %61 = sext i32 %x.2 to i64, !dbg !257
  %62 = getelementptr inbounds i32* %21, i64 %61, !dbg !257
  %63 = load i32* %62, align 4, !dbg !257, !tbaa !189
  %64 = icmp eq i32 %63, 0, !dbg !258
  %65 = icmp eq i32 %x.2, %56, !dbg !259
  %or.cond57 = or i1 %64, %65, !dbg !260
  br i1 %or.cond57, label %86, label %66, !dbg !260

; <label>:66                                      ; preds = %60
  %67 = tail call double @sre_random() #6, !dbg !261
  %68 = load i32* %62, align 4, !dbg !261, !tbaa !189
  %69 = sitofp i32 %68 to double, !dbg !261
  %70 = fmul double %67, %69, !dbg !261
  %71 = fptosi double %70 to i32, !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !24, metadata !145), !dbg !175
  %72 = sext i32 %71 to i64, !dbg !262
  %73 = getelementptr inbounds i8** %19, i64 %61, !dbg !262
  %74 = load i8** %73, align 8, !dbg !262, !tbaa !209
  %75 = getelementptr inbounds i8* %74, i64 %72, !dbg !262
  %76 = load i8* %75, align 1, !dbg !262, !tbaa !162
  %77 = add nsw i32 %68, -1, !dbg !263
  %78 = sext i32 %77 to i64, !dbg !264
  %79 = getelementptr inbounds i8* %74, i64 %78, !dbg !264
  %80 = load i8* %79, align 1, !dbg !264, !tbaa !162
  store i8 %80, i8* %75, align 1, !dbg !265, !tbaa !162
  %81 = load i32* %62, align 4, !dbg !266, !tbaa !189
  %82 = add nsw i32 %81, -1, !dbg !267
  %83 = sext i32 %82 to i64, !dbg !268
  %84 = load i8** %73, align 8, !dbg !268, !tbaa !209
  %85 = getelementptr inbounds i8* %84, i64 %83, !dbg !268
  store i8 %76, i8* %85, align 1, !dbg !269, !tbaa !162
  br label %86, !dbg !270

; <label>:86                                      ; preds = %60, %66
  %87 = add nsw i32 %x.2, 1, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !25, metadata !145), !dbg !201
  br label %.critedge5, !dbg !272

.loopexit:                                        ; preds = %106
  %88 = icmp eq i32 %keep_connecting.2, 0, !dbg !256
  br i1 %88, label %.preheader8, label %.preheader7, !dbg !256

.preheader7:                                      ; preds = %.loopexit, %106, %.preheader9
  %indvars.iv43 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next44, %106 ], [ 0, %.loopexit ]
  %keep_connecting.120 = phi i32 [ 0, %.preheader9 ], [ %keep_connecting.2, %106 ], [ 0, %.loopexit ]
  %89 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %indvars.iv43, !dbg !273
  %90 = load i8* %89, align 1, !dbg !273, !tbaa !162
  %91 = icmp eq i8 %90, 0, !dbg !279
  br i1 %91, label %92, label %106, !dbg !280

; <label>:92                                      ; preds = %.preheader7
  %93 = getelementptr inbounds i8** %19, i64 %indvars.iv43, !dbg !281
  %94 = load i8** %93, align 8, !dbg !281, !tbaa !209
  %95 = getelementptr inbounds i32* %21, i64 %indvars.iv43, !dbg !282
  %96 = load i32* %95, align 4, !dbg !282, !tbaa !189
  %97 = add nsw i32 %96, -1, !dbg !283
  %98 = sext i32 %97 to i64, !dbg !281
  %99 = getelementptr inbounds i8* %94, i64 %98, !dbg !281
  %100 = load i8* %99, align 1, !dbg !281, !tbaa !162
  %101 = sext i8 %100 to i64, !dbg !284
  %102 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %101, !dbg !284
  %103 = load i8* %102, align 1, !dbg !284, !tbaa !162
  %104 = icmp eq i8 %103, 1, !dbg !285
  br i1 %104, label %105, label %106, !dbg !286

; <label>:105                                     ; preds = %92
  store i8 1, i8* %89, align 1, !dbg !287, !tbaa !162
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !145), !dbg !254
  br label %106, !dbg !289

; <label>:106                                     ; preds = %.preheader7, %92, %105
  %keep_connecting.2 = phi i32 [ 1, %105 ], [ %keep_connecting.120, %92 ], [ %keep_connecting.120, %.preheader7 ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !290
  %exitcond45 = icmp eq i64 %indvars.iv.next44, 26, !dbg !290
  br i1 %exitcond45, label %.loopexit, label %.preheader7, !dbg !290

.preheader8:                                      ; preds = %.loopexit, %116
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %116 ], [ 0, %.loopexit ]
  %107 = getelementptr inbounds i32* %21, i64 %indvars.iv46, !dbg !291
  %108 = load i32* %107, align 4, !dbg !291, !tbaa !189
  %109 = icmp eq i32 %108, 0, !dbg !296
  %110 = trunc i64 %indvars.iv46 to i32, !dbg !297
  %111 = icmp eq i32 %110, %56, !dbg !297
  %or.cond = or i1 %111, %109, !dbg !298
  br i1 %or.cond, label %116, label %112, !dbg !298

; <label>:112                                     ; preds = %.preheader8
  %113 = getelementptr inbounds [26 x i8]* %Z, i64 0, i64 %indvars.iv46, !dbg !299
  %114 = load i8* %113, align 1, !dbg !299, !tbaa !162
  %115 = icmp eq i8 %114, 0, !dbg !301
  br i1 %115, label %.critedge5, label %116, !dbg !302

; <label>:116                                     ; preds = %112, %.preheader8
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !303
  %117 = icmp slt i64 %indvars.iv.next47, 26, !dbg !304
  br i1 %117, label %.preheader8, label %.preheader, !dbg !303

.preheader:                                       ; preds = %116, %._crit_edge
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge ], [ 0, %116 ]
  %118 = getelementptr inbounds i32* %21, i64 %indvars.iv37, !dbg !305
  %119 = load i32* %118, align 4, !dbg !305, !tbaa !189
  %n.014 = add i32 %119, -1, !dbg !309
  %120 = icmp sgt i32 %n.014, 1, !dbg !310
  br i1 %120, label %.lr.ph, label %._crit_edge, !dbg !312

.lr.ph:                                           ; preds = %.preheader
  %121 = getelementptr inbounds i8** %19, i64 %indvars.iv37, !dbg !313
  %122 = sext i32 %n.014 to i64
  br label %123, !dbg !312

; <label>:123                                     ; preds = %.lr.ph, %123
  %indvars.iv34 = phi i64 [ %122, %.lr.ph ], [ %indvars.iv.next35, %123 ]
  %n.016 = phi i32 [ %n.014, %.lr.ph ], [ %n.0, %123 ]
  %n.0.in15 = phi i32 [ %119, %.lr.ph ], [ %125, %123 ]
  %124 = tail call double @sre_random() #6, !dbg !315
  %125 = trunc i64 %indvars.iv34 to i32, !dbg !315
  %126 = sitofp i32 %125 to double, !dbg !315
  %127 = fmul double %126, %124, !dbg !315
  %128 = fptosi double %127 to i32, !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !24, metadata !145), !dbg !175
  %129 = sext i32 %128 to i64, !dbg !313
  %130 = load i8** %121, align 8, !dbg !313, !tbaa !209
  %131 = getelementptr inbounds i8* %130, i64 %129, !dbg !313
  %132 = load i8* %131, align 1, !dbg !313, !tbaa !162
  %133 = add nsw i32 %n.0.in15, -2, !dbg !316
  %134 = sext i32 %133 to i64, !dbg !317
  %135 = getelementptr inbounds i8* %130, i64 %134, !dbg !317
  %136 = load i8* %135, align 1, !dbg !317, !tbaa !162
  store i8 %136, i8* %131, align 1, !dbg !318, !tbaa !162
  %137 = load i8** %121, align 8, !dbg !319, !tbaa !209
  %138 = getelementptr inbounds i8* %137, i64 %134, !dbg !319
  store i8 %132, i8* %138, align 1, !dbg !320, !tbaa !162
  %n.0 = add nsw i32 %n.016, -1, !dbg !309
  %139 = icmp sgt i32 %n.0, 1, !dbg !310
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, -1, !dbg !312
  br i1 %139, label %123, label %._crit_edge, !dbg !312

._crit_edge:                                      ; preds = %123, %.preheader
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !321
  %exitcond = icmp eq i64 %indvars.iv.next38, 26, !dbg !321
  br i1 %exitcond, label %140, label %.preheader, !dbg !321

; <label>:140                                     ; preds = %._crit_edge
  %141 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 240, i64 104) #6, !dbg !322
  %142 = bitcast i8* %141 to i32*, !dbg !322
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !31, metadata !145), !dbg !323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !145), !dbg !201
  call void @llvm.memset.p0i8.i64(i8* %141, i8 0, i64 104, i32 4, i1 false), !dbg !324
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !145), !dbg !175
  %143 = load i8* %s2, align 1, !dbg !327, !tbaa !162
  %144 = sext i8 %143 to i32, !dbg !328
  tail call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !140, metadata !145) #5, !dbg !329
  %145 = tail call i32 @__toupper(i32 %144) #6, !dbg !331
  %146 = add nsw i32 %145, -65, !dbg !332
  tail call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !25, metadata !145), !dbg !201
  br label %147, !dbg !333

; <label>:147                                     ; preds = %147, %140
  %indvars.iv = phi i64 [ %indvars.iv.next, %147 ], [ 0, %140 ]
  %x.8 = phi i32 [ %159, %147 ], [ %146, %140 ]
  %148 = add nsw i32 %x.8, 65, !dbg !334
  %149 = trunc i32 %148 to i8, !dbg !336
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !337
  %150 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !338
  store i8 %149, i8* %150, align 1, !dbg !339, !tbaa !162
  %151 = sext i32 %x.8 to i64, !dbg !340
  %152 = getelementptr inbounds i32* %142, i64 %151, !dbg !340
  %153 = load i32* %152, align 4, !dbg !340, !tbaa !189
  %154 = sext i32 %153 to i64, !dbg !341
  %155 = getelementptr inbounds i8** %19, i64 %151, !dbg !341
  %156 = load i8** %155, align 8, !dbg !341, !tbaa !209
  %157 = getelementptr inbounds i8* %156, i64 %154, !dbg !341
  %158 = load i8* %157, align 1, !dbg !341, !tbaa !162
  %159 = sext i8 %158 to i32, !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !26, metadata !145), !dbg !230
  %160 = add nsw i32 %153, 1, !dbg !342
  store i32 %160, i32* %152, align 4, !dbg !342, !tbaa !189
  tail call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !25, metadata !145), !dbg !201
  %161 = sext i8 %158 to i64, !dbg !343
  %162 = getelementptr inbounds i32* %142, i64 %161, !dbg !343
  %163 = load i32* %162, align 4, !dbg !343, !tbaa !189
  %164 = getelementptr inbounds i32* %21, i64 %161, !dbg !345
  %165 = load i32* %164, align 4, !dbg !345, !tbaa !189
  %166 = icmp eq i32 %163, %165, !dbg !346
  br i1 %166, label %167, label %147, !dbg !337

; <label>:167                                     ; preds = %147
  %168 = trunc i64 %indvars.iv to i32, !dbg !347
  %169 = add nsw i32 %56, 65, !dbg !347
  %170 = trunc i32 %169 to i8, !dbg !348
  %171 = add nsw i32 %168, 2, !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !24, metadata !145), !dbg !175
  %sext = shl i64 %indvars.iv.next, 32, !dbg !350
  %172 = ashr exact i64 %sext, 32, !dbg !350
  %173 = getelementptr inbounds i8* %s1, i64 %172, !dbg !350
  store i8 %170, i8* %173, align 1, !dbg !351, !tbaa !162
  %174 = sext i32 %171 to i64, !dbg !352
  %175 = getelementptr inbounds i8* %s1, i64 %174, !dbg !352
  store i8 0, i8* %175, align 1, !dbg !353, !tbaa !162
  %176 = icmp eq i32 %159, %56, !dbg !354
  br i1 %176, label %178, label %177, !dbg !356

; <label>:177                                     ; preds = %167
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !357
  br label %178, !dbg !357

; <label>:178                                     ; preds = %167, %177
  %179 = icmp eq i32 %171, %2, !dbg !358
  br i1 %179, label %181, label %180, !dbg !360

; <label>:180                                     ; preds = %178
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0), i32 %171, i32 %2) #6, !dbg !361
  br label %181, !dbg !361

; <label>:181                                     ; preds = %178, %180
  tail call void @Free2DArray(i8** %19, i32 26) #6, !dbg !362
  tail call void @free(i8* %20) #7, !dbg !363
  tail call void @free(i8* %141) #7, !dbg !364
  br label %.loopexit10, !dbg !365

.loopexit10:                                      ; preds = %isalpha.exit, %181
  %.0 = phi i32 [ 1, %181 ], [ 0, %isalpha.exit ]
  ret i32 %.0, !dbg !366
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #4

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StrMarkov0(i8* nocapture %s1, i8* nocapture readonly %s2) #0 {
  %p = alloca [26 x float], align 16
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !42, metadata !145), !dbg !367
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !43, metadata !145), !dbg !368
  %1 = bitcast [26 x float]* %p to i8*, !dbg !369
  call void @llvm.lifetime.start(i64 104, i8* %1) #5, !dbg !369
  tail call void @llvm.dbg.declare(metadata [26 x float]* %p, metadata !46, metadata !145), !dbg !370
  %2 = tail call i64 @strlen(i8* %s2) #6, !dbg !371
  %3 = trunc i64 %2 to i32, !dbg !371
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !44, metadata !145), !dbg !372
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !145), !dbg !373
  %4 = icmp sgt i32 %3, 0, !dbg !374
  br i1 %4, label %.lr.ph9, label %._crit_edge10.thread, !dbg !377

._crit_edge10.thread:                             ; preds = %0
  %5 = getelementptr inbounds [26 x float]* %p, i64 0, i64 0, !dbg !378
  call void @FSet(float* %5, i32 26, float 0.000000e+00) #6, !dbg !379
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !145), !dbg !373
  br label %._crit_edge6.thread, !dbg !380

.lr.ph9:                                          ; preds = %0
  %sext17 = shl i64 %2, 32, !dbg !377
  %6 = ashr exact i64 %sext17, 32, !dbg !377
  br label %9, !dbg !377

; <label>:7                                       ; preds = %isalpha.exit
  %8 = icmp slt i64 %indvars.iv.next16, %6, !dbg !374
  br i1 %8, label %9, label %._crit_edge10, !dbg !377

; <label>:9                                       ; preds = %.lr.ph9, %7
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %7 ]
  %10 = getelementptr inbounds i8* %s2, i64 %indvars.iv15, !dbg !382
  %11 = load i8* %10, align 1, !dbg !382, !tbaa !162
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !125, metadata !145) #5, !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !133, metadata !145) #5, !dbg !386
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !134, metadata !145) #5, !dbg !388
  %isascii.i.i1 = icmp sgt i8 %11, -1, !dbg !389
  br i1 %isascii.i.i1, label %12, label %17, !dbg !389

; <label>:12                                      ; preds = %9
  %13 = sext i8 %11 to i64, !dbg !390
  %14 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %13, !dbg !390
  %15 = load i32* %14, align 4, !dbg !390, !tbaa !189
  %16 = and i32 %15, 256, !dbg !391
  br label %isalpha.exit, !dbg !389

; <label>:17                                      ; preds = %9
  %18 = sext i8 %11 to i32, !dbg !392
  %19 = tail call i32 @__maskrune(i32 %18, i64 256) #6, !dbg !393
  br label %isalpha.exit, !dbg !389

isalpha.exit:                                     ; preds = %12, %17
  %.sink.i.in.i = phi i32 [ %16, %12 ], [ %19, %17 ], !dbg !394
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !395
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !377
  br i1 %.sink.i.i, label %.loopexit, label %7, !dbg !396

._crit_edge10:                                    ; preds = %7
  %20 = getelementptr inbounds [26 x float]* %p, i64 0, i64 0, !dbg !378
  call void @FSet(float* %20, i32 26, float 0.000000e+00) #6, !dbg !379
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !145), !dbg !373
  br i1 %4, label %.lr.ph5, label %._crit_edge6.thread, !dbg !380

.lr.ph5:                                          ; preds = %._crit_edge10
  %21 = add i32 %3, -1, !dbg !380
  br label %22, !dbg !380

; <label>:22                                      ; preds = %22, %.lr.ph5
  %indvars.iv11 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next12, %22 ]
  %23 = getelementptr inbounds i8* %s2, i64 %indvars.iv11, !dbg !397
  %24 = load i8* %23, align 1, !dbg !397, !tbaa !162
  %25 = sext i8 %24 to i32, !dbg !399
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !140, metadata !145) #5, !dbg !400
  %26 = call i32 @__toupper(i32 %25) #6, !dbg !402
  %27 = add nsw i32 %26, -65, !dbg !403
  %28 = sext i32 %27 to i64, !dbg !404
  %29 = getelementptr inbounds [26 x float]* %p, i64 0, i64 %28, !dbg !404
  %30 = load float* %29, align 4, !dbg !405, !tbaa !406
  %31 = fadd float %30, 1.000000e+00, !dbg !405
  store float %31, float* %29, align 4, !dbg !405, !tbaa !406
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !380
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32, !dbg !380
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %21, !dbg !380
  br i1 %exitcond14, label %._crit_edge6, label %22, !dbg !380

._crit_edge6.thread:                              ; preds = %._crit_edge10.thread, %._crit_edge10
  %.ph = phi float* [ %20, %._crit_edge10 ], [ %5, %._crit_edge10.thread ]
  call void @FNorm(float* %.ph, i32 26) #6, !dbg !408
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !145), !dbg !373
  br label %38, !dbg !409

._crit_edge6:                                     ; preds = %22
  call void @FNorm(float* %20, i32 26) #6, !dbg !408
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !145), !dbg !373
  br i1 %4, label %.lr.ph, label %38, !dbg !409

.lr.ph:                                           ; preds = %._crit_edge6
  %32 = add i32 %3, -1, !dbg !409
  br label %33, !dbg !409

; <label>:33                                      ; preds = %33, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  %34 = call i32 @FChoose(float* %20, i32 26) #6, !dbg !411
  %35 = add nsw i32 %34, 65, !dbg !413
  %36 = trunc i32 %35 to i8, !dbg !411
  %37 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !414
  store i8 %36, i8* %37, align 1, !dbg !415, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !409
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !409
  %exitcond = icmp eq i32 %lftr.wideiv, %32, !dbg !409
  br i1 %exitcond, label %._crit_edge, label %33, !dbg !409

._crit_edge:                                      ; preds = %33
  %sext = shl i64 %2, 32, !dbg !409
  %phitmp = ashr exact i64 %sext, 32, !dbg !409
  br label %38, !dbg !409

; <label>:38                                      ; preds = %._crit_edge6.thread, %._crit_edge, %._crit_edge6
  %pos.2.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %._crit_edge6 ], [ 0, %._crit_edge6.thread ]
  %39 = getelementptr inbounds i8* %s1, i64 %pos.2.lcssa, !dbg !416
  store i8 0, i8* %39, align 1, !dbg !417, !tbaa !162
  br label %.loopexit, !dbg !418

.loopexit:                                        ; preds = %isalpha.exit, %38
  %.0 = phi i32 [ 1, %38 ], [ 0, %isalpha.exit ]
  call void @llvm.lifetime.end(i64 104, i8* %1) #5, !dbg !419
  ret i32 %.0, !dbg !419
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #4

; Function Attrs: optsize
declare void @FNorm(float*, i32) #4

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StrMarkov1(i8* nocapture %s1, i8* nocapture readonly %s2) #0 {
  %p = alloca [26 x [26 x float]], align 16
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !51, metadata !145), !dbg !420
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !52, metadata !145), !dbg !421
  %1 = bitcast [26 x [26 x float]]* %p to i8*, !dbg !422
  call void @llvm.lifetime.start(i64 2704, i8* %1) #5, !dbg !422
  tail call void @llvm.dbg.declare(metadata [26 x [26 x float]]* %p, metadata !58, metadata !145), !dbg !423
  %2 = tail call i64 @strlen(i8* %s2) #6, !dbg !424
  %3 = trunc i64 %2 to i32, !dbg !424
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !53, metadata !145), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !54, metadata !145), !dbg !426
  %4 = icmp sgt i32 %3, 0, !dbg !427
  br i1 %4, label %.lr.ph13, label %.preheader2, !dbg !430

.lr.ph13:                                         ; preds = %0
  %sext = shl i64 %2, 32, !dbg !430
  %5 = ashr exact i64 %sext, 32, !dbg !430
  br label %8, !dbg !430

; <label>:6                                       ; preds = %isalpha.exit
  %7 = icmp slt i64 %indvars.iv.next25, %5, !dbg !427
  br i1 %7, label %8, label %.preheader2, !dbg !430

; <label>:8                                       ; preds = %.lr.ph13, %6
  %indvars.iv24 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next25, %6 ]
  %9 = getelementptr inbounds i8* %s2, i64 %indvars.iv24, !dbg !431
  %10 = load i8* %9, align 1, !dbg !431, !tbaa !162
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !125, metadata !145) #5, !dbg !433
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !133, metadata !145) #5, !dbg !435
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !134, metadata !145) #5, !dbg !437
  %isascii.i.i1 = icmp sgt i8 %10, -1, !dbg !438
  br i1 %isascii.i.i1, label %11, label %16, !dbg !438

; <label>:11                                      ; preds = %8
  %12 = sext i8 %10 to i64, !dbg !439
  %13 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %12, !dbg !439
  %14 = load i32* %13, align 4, !dbg !439, !tbaa !189
  %15 = and i32 %14, 256, !dbg !440
  br label %isalpha.exit, !dbg !438

; <label>:16                                      ; preds = %8
  %17 = sext i8 %10 to i32, !dbg !441
  %18 = tail call i32 @__maskrune(i32 %17, i64 256) #6, !dbg !442
  br label %isalpha.exit, !dbg !438

isalpha.exit:                                     ; preds = %11, %16
  %.sink.i.in.i = phi i32 [ %15, %11 ], [ %18, %16 ], !dbg !443
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !444
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !430
  br i1 %.sink.i.i, label %.loopexit, label %6, !dbg !445

.preheader2:                                      ; preds = %0, %6, %.preheader2
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.preheader2 ], [ 0, %6 ], [ 0, %0 ]
  %19 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %indvars.iv21, i64 0, !dbg !446
  call void @FSet(float* %19, i32 26, float 0.000000e+00) #6, !dbg !449
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !450
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 26, !dbg !450
  br i1 %exitcond23, label %20, label %.preheader2, !dbg !450

; <label>:20                                      ; preds = %.preheader2
  %21 = load i8* %s2, align 1, !dbg !451, !tbaa !162
  %22 = sext i8 %21 to i32, !dbg !452
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !140, metadata !145) #5, !dbg !453
  %23 = call i32 @__toupper(i32 %22) #6, !dbg !455
  %24 = add nsw i32 %23, -65, !dbg !456
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !55, metadata !145), !dbg !457
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !57, metadata !145), !dbg !458
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !54, metadata !145), !dbg !426
  %25 = icmp sgt i32 %3, 1, !dbg !459
  br i1 %25, label %.lr.ph9, label %.preheader, !dbg !462

.lr.ph9:                                          ; preds = %20
  %26 = add i32 %3, -1, !dbg !462
  br label %27, !dbg !462

; <label>:27                                      ; preds = %27, %.lr.ph9
  %indvars.iv17 = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next18, %27 ]
  %x.17 = phi i32 [ %24, %.lr.ph9 ], [ %32, %27 ]
  %28 = getelementptr inbounds i8* %s2, i64 %indvars.iv17, !dbg !463
  %29 = load i8* %28, align 1, !dbg !463, !tbaa !162
  %30 = sext i8 %29 to i32, !dbg !465
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !140, metadata !145) #5, !dbg !466
  %31 = call i32 @__toupper(i32 %30) #6, !dbg !468
  %32 = add nsw i32 %31, -65, !dbg !469
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !56, metadata !145), !dbg !470
  %33 = sext i32 %32 to i64, !dbg !471
  %34 = sext i32 %x.17 to i64, !dbg !471
  %35 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %34, i64 %33, !dbg !471
  %36 = load float* %35, align 4, !dbg !472, !tbaa !406
  %37 = fadd float %36, 1.000000e+00, !dbg !472
  store float %37, float* %35, align 4, !dbg !472, !tbaa !406
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !55, metadata !145), !dbg !457
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !462
  %lftr.wideiv19 = trunc i64 %indvars.iv17 to i32, !dbg !462
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %26, !dbg !462
  br i1 %exitcond20, label %.preheader, label %27, !dbg !462

.preheader:                                       ; preds = %20, %27, %.preheader
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %.preheader ], [ 0, %27 ], [ 0, %20 ]
  %38 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %indvars.iv14, i64 0, !dbg !473
  call void @FNorm(float* %38, i32 26) #6, !dbg !476
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !477
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 26, !dbg !477
  br i1 %exitcond16, label %39, label %.preheader, !dbg !477

; <label>:39                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !55, metadata !145), !dbg !457
  %40 = trunc i32 %23 to i8, !dbg !478
  store i8 %40, i8* %s1, align 1, !dbg !479, !tbaa !162
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !54, metadata !145), !dbg !426
  br i1 %25, label %.lr.ph, label %50, !dbg !480

.lr.ph:                                           ; preds = %39
  %41 = add i32 %3, -1, !dbg !480
  br label %42, !dbg !480

; <label>:42                                      ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %42 ]
  %x.34 = phi i32 [ %24, %.lr.ph ], [ %45, %42 ]
  %43 = sext i32 %x.34 to i64, !dbg !482
  %44 = getelementptr inbounds [26 x [26 x float]]* %p, i64 0, i64 %43, i64 0, !dbg !482
  %45 = call i32 @FChoose(float* %44, i32 26) #6, !dbg !485
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !56, metadata !145), !dbg !470
  %46 = add nsw i32 %45, 65, !dbg !486
  %47 = trunc i32 %46 to i8, !dbg !487
  %48 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !488
  store i8 %47, i8* %48, align 1, !dbg !489, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !55, metadata !145), !dbg !457
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !480
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !480
  %exitcond = icmp eq i32 %lftr.wideiv, %41, !dbg !480
  br i1 %exitcond, label %._crit_edge, label %42, !dbg !480

._crit_edge:                                      ; preds = %42
  %49 = shl i64 %2, 32, !dbg !480
  %phitmp = ashr exact i64 %49, 32, !dbg !480
  br label %50, !dbg !480

; <label>:50                                      ; preds = %._crit_edge, %39
  %pos.2.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 1, %39 ]
  %51 = getelementptr inbounds i8* %s1, i64 %pos.2.lcssa, !dbg !490
  store i8 0, i8* %51, align 1, !dbg !491, !tbaa !162
  br label %.loopexit, !dbg !492

.loopexit:                                        ; preds = %isalpha.exit, %50
  %.0 = phi i32 [ 1, %50 ], [ 0, %isalpha.exit ]
  call void @llvm.lifetime.end(i64 2704, i8* %1) #5, !dbg !493
  ret i32 %.0, !dbg !493
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StrReverse(i8* nocapture %s1, i8* nocapture readonly %s2) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !63, metadata !145), !dbg !494
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !64, metadata !145), !dbg !495
  %1 = tail call i64 @strlen(i8* %s2) #6, !dbg !496
  %2 = trunc i64 %1 to i32, !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !65, metadata !145), !dbg !497
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !145), !dbg !498
  %3 = sdiv i32 %2, 2, !dbg !499
  %4 = icmp sgt i32 %2, 1, !dbg !502
  br i1 %4, label %.lr.ph, label %19, !dbg !503

.lr.ph:                                           ; preds = %0
  %5 = add i64 %1, 4294967295, !dbg !504
  %6 = sext i32 %3 to i64, !dbg !503
  %7 = icmp sgt i32 %2, 3
  br label %8, !dbg !503

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %9 = sub i64 %5, %indvars.iv, !dbg !506
  %sext2 = shl i64 %9, 32, !dbg !507
  %10 = ashr exact i64 %sext2, 32, !dbg !507
  %11 = getelementptr inbounds i8* %s2, i64 %10, !dbg !507
  %12 = load i8* %11, align 1, !dbg !507, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !67, metadata !145), !dbg !508
  %13 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !509
  %14 = load i8* %13, align 1, !dbg !509, !tbaa !162
  %15 = getelementptr inbounds i8* %s1, i64 %10, !dbg !510
  store i8 %14, i8* %15, align 1, !dbg !511, !tbaa !162
  %16 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !512
  store i8 %12, i8* %16, align 1, !dbg !513, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !503
  %17 = icmp slt i64 %indvars.iv.next, %6, !dbg !502
  br i1 %17, label %8, label %._crit_edge, !dbg !503

._crit_edge:                                      ; preds = %8
  %18 = sext i32 %3 to i64, !dbg !503
  %phitmp = select i1 %7, i64 %18, i64 1, !dbg !503
  br label %19, !dbg !503

; <label>:19                                      ; preds = %._crit_edge, %0
  %pos.0.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %0 ]
  %20 = and i32 %2, 1, !dbg !514
  %21 = icmp eq i32 %20, 0, !dbg !514
  br i1 %21, label %26, label %22, !dbg !516

; <label>:22                                      ; preds = %19
  %23 = getelementptr inbounds i8* %s2, i64 %pos.0.lcssa, !dbg !517
  %24 = load i8* %23, align 1, !dbg !517, !tbaa !162
  %25 = getelementptr inbounds i8* %s1, i64 %pos.0.lcssa, !dbg !519
  store i8 %24, i8* %25, align 1, !dbg !520, !tbaa !162
  br label %26, !dbg !521

; <label>:26                                      ; preds = %19, %22
  %sext = shl i64 %1, 32, !dbg !522
  %27 = ashr exact i64 %sext, 32, !dbg !522
  %28 = getelementptr inbounds i8* %s1, i64 %27, !dbg !522
  store i8 0, i8* %28, align 1, !dbg !523, !tbaa !162
  ret i32 1, !dbg !524
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StrRegionalShuffle(i8* %s1, i8* %s2, i32 %w) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !72, metadata !145), !dbg !525
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !73, metadata !145), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %w, i64 0, metadata !74, metadata !145), !dbg !527
  %1 = icmp eq i8* %s1, %s2, !dbg !528
  br i1 %1, label %5, label %2, !dbg !530

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %s1, i1 false), !dbg !531
  %4 = tail call i8* @__strcpy_chk(i8* %s1, i8* %s2, i64 %3) #6, !dbg !531
  br label %5, !dbg !531

; <label>:5                                       ; preds = %0, %2
  %6 = tail call i64 @strlen(i8* %s1) #6, !dbg !532
  %7 = trunc i64 %6 to i32, !dbg !532
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !75, metadata !145), !dbg !533
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !78, metadata !145), !dbg !534
  %8 = icmp sgt i32 %7, 0, !dbg !535
  br i1 %8, label %.lr.ph4, label %._crit_edge, !dbg !538

.lr.ph4:                                          ; preds = %5
  %9 = xor i32 %w, -1, !dbg !538
  %10 = xor i32 %7, -1, !dbg !538
  %11 = sext i32 %w to i64
  %sext = shl i64 %6, 32, !dbg !538
  %12 = ashr exact i64 %sext, 32, !dbg !538
  br label %14, !dbg !538

.loopexit:                                        ; preds = %22, %14
  %13 = icmp slt i64 %indvars.iv.next9, %12, !dbg !535
  %indvars.iv.next = sub i32 %indvars.iv, %w, !dbg !538
  br i1 %13, label %14, label %._crit_edge, !dbg !538

; <label>:14                                      ; preds = %.lr.ph4, %.loopexit
  %indvars.iv8 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next9, %.loopexit ]
  %indvars.iv = phi i32 [ %9, %.lr.ph4 ], [ %indvars.iv.next, %.loopexit ]
  %indvars.iv.next9 = add i64 %indvars.iv8, %11, !dbg !538
  %15 = icmp slt i64 %12, %indvars.iv.next9, !dbg !539
  %16 = trunc i64 %indvars.iv.next9 to i32, !dbg !539
  %. = select i1 %15, i32 %7, i32 %16, !dbg !539
  %j.01 = add nsw i32 %., -1, !dbg !539
  %17 = sext i32 %j.01 to i64, !dbg !541
  %18 = icmp sgt i64 %17, %indvars.iv8, !dbg !541
  br i1 %18, label %.lr.ph, label %.loopexit, !dbg !543

.lr.ph:                                           ; preds = %14
  %19 = icmp sgt i32 %indvars.iv, %10
  %smax = select i1 %19, i32 %indvars.iv, i32 %10
  %20 = sub i32 -2, %smax, !dbg !539
  %21 = sext i32 %20 to i64
  br label %22, !dbg !543

; <label>:22                                      ; preds = %.lr.ph, %22
  %indvars.iv5 = phi i64 [ %21, %.lr.ph ], [ %indvars.iv.next6, %22 ]
  %j.02 = phi i32 [ %j.01, %.lr.ph ], [ %j.0, %22 ]
  %23 = tail call double @sre_random() #6, !dbg !544
  %24 = sub nsw i64 %indvars.iv5, %indvars.iv8, !dbg !544
  %25 = trunc i64 %24 to i32, !dbg !544
  %26 = sitofp i32 %25 to double, !dbg !544
  %27 = fmul double %26, %23, !dbg !544
  %28 = fptosi double %27 to i32, !dbg !544
  %29 = trunc i64 %indvars.iv8 to i32, !dbg !546
  %30 = add nsw i32 %28, %29, !dbg !546
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !77, metadata !145), !dbg !547
  %31 = sext i32 %30 to i64, !dbg !548
  %32 = getelementptr inbounds i8* %s1, i64 %31, !dbg !548
  %33 = load i8* %32, align 1, !dbg !548, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !76, metadata !145), !dbg !549
  %34 = getelementptr inbounds i8* %s1, i64 %indvars.iv5, !dbg !550
  %35 = load i8* %34, align 1, !dbg !550, !tbaa !162
  store i8 %35, i8* %32, align 1, !dbg !551, !tbaa !162
  store i8 %33, i8* %34, align 1, !dbg !552, !tbaa !162
  %j.0 = add nsw i32 %j.02, -1, !dbg !539
  %36 = sext i32 %j.0 to i64, !dbg !541
  %37 = icmp sgt i64 %36, %indvars.iv8, !dbg !541
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1, !dbg !543
  br i1 %37, label %22, label %.loopexit, !dbg !543

._crit_edge:                                      ; preds = %.loopexit, %5
  ret i32 1, !dbg !553
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @AlignmentShuffle(i8** readonly %ali1, i8** readonly %ali2, i32 %nseq, i32 %alen) #0 {
  tail call void @llvm.dbg.value(metadata i8** %ali1, i64 0, metadata !84, metadata !145), !dbg !554
  tail call void @llvm.dbg.value(metadata i8** %ali2, i64 0, metadata !85, metadata !145), !dbg !555
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !86, metadata !145), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !87, metadata !145), !dbg !557
  %1 = icmp eq i8** %ali1, %ali2, !dbg !558
  br i1 %1, label %.preheader1, label %.preheader2, !dbg !560

.preheader2:                                      ; preds = %0
  %2 = icmp sgt i32 %nseq, 0, !dbg !561
  br i1 %2, label %.lr.ph10, label %.preheader, !dbg !565

.lr.ph10:                                         ; preds = %.preheader2
  %3 = add i32 %nseq, -1, !dbg !565
  br label %7, !dbg !565

.preheader1:                                      ; preds = %7, %0
  %4 = icmp sgt i32 %nseq, 0, !dbg !566
  br i1 %4, label %.lr.ph8, label %.preheader, !dbg !569

.lr.ph8:                                          ; preds = %.preheader1
  %5 = sext i32 %alen to i64, !dbg !570
  %6 = add i32 %nseq, -1, !dbg !569
  br label %18, !dbg !569

; <label>:7                                       ; preds = %7, %.lr.ph10
  %indvars.iv17 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next18, %7 ]
  %8 = getelementptr inbounds i8** %ali1, i64 %indvars.iv17, !dbg !571
  %9 = load i8** %8, align 8, !dbg !571, !tbaa !209
  %10 = getelementptr inbounds i8** %ali2, i64 %indvars.iv17, !dbg !571
  %11 = load i8** %10, align 8, !dbg !571, !tbaa !209
  %12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false), !dbg !571
  %13 = tail call i8* @__strcpy_chk(i8* %9, i8* %11, i64 %12) #6, !dbg !571
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !565
  %lftr.wideiv19 = trunc i64 %indvars.iv17 to i32, !dbg !565
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %3, !dbg !565
  br i1 %exitcond20, label %.preheader1, label %7, !dbg !565

.preheader:                                       ; preds = %18, %.preheader2, %.preheader1
  %14 = phi i1 [ false, %.preheader1 ], [ false, %.preheader2 ], [ %4, %18 ]
  %15 = icmp sgt i32 %alen, 1, !dbg !572
  br i1 %15, label %.lr.ph5, label %._crit_edge6, !dbg !575

.lr.ph5:                                          ; preds = %.preheader
  %16 = add i32 %nseq, -1, !dbg !575
  %17 = sext i32 %alen to i64
  br label %22, !dbg !575

; <label>:18                                      ; preds = %18, %.lr.ph8
  %indvars.iv13 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next14, %18 ]
  %19 = getelementptr inbounds i8** %ali1, i64 %indvars.iv13, !dbg !570
  %20 = load i8** %19, align 8, !dbg !570, !tbaa !209
  %21 = getelementptr inbounds i8* %20, i64 %5, !dbg !570
  store i8 0, i8* %21, align 1, !dbg !576, !tbaa !162
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !569
  %lftr.wideiv15 = trunc i64 %indvars.iv13 to i32, !dbg !569
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %6, !dbg !569
  br i1 %exitcond16, label %.preheader, label %18, !dbg !569

; <label>:22                                      ; preds = %.lr.ph5, %._crit_edge
  %indvars.iv11 = phi i64 [ %17, %.lr.ph5 ], [ %indvars.iv.next12.pre-phi, %._crit_edge ]
  %23 = tail call double @sre_random() #6, !dbg !577
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !89, metadata !145), !dbg !579
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !145), !dbg !580
  br i1 %14, label %.lr.ph, label %._crit_edge21, !dbg !581

._crit_edge21:                                    ; preds = %22
  %.pre = add nsw i64 %indvars.iv11, -1, !dbg !575
  br label %._crit_edge, !dbg !581

.lr.ph:                                           ; preds = %22
  %24 = trunc i64 %indvars.iv11 to i32, !dbg !577
  %25 = sitofp i32 %24 to double, !dbg !577
  %26 = fmul double %25, %23, !dbg !577
  %27 = fptosi double %26 to i32, !dbg !577
  %28 = sext i32 %27 to i64, !dbg !583
  %29 = add nsw i64 %indvars.iv11, -1, !dbg !586
  br label %30, !dbg !581

; <label>:30                                      ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %31 = getelementptr inbounds i8** %ali1, i64 %indvars.iv, !dbg !583
  %32 = load i8** %31, align 8, !dbg !583, !tbaa !209
  %33 = getelementptr inbounds i8* %32, i64 %28, !dbg !583
  %34 = load i8* %33, align 1, !dbg !583, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !90, metadata !145), !dbg !587
  %35 = getelementptr inbounds i8* %32, i64 %29, !dbg !588
  %36 = load i8* %35, align 1, !dbg !588, !tbaa !162
  store i8 %36, i8* %33, align 1, !dbg !589, !tbaa !162
  %37 = load i8** %31, align 8, !dbg !590, !tbaa !209
  %38 = getelementptr inbounds i8* %37, i64 %29, !dbg !590
  store i8 %34, i8* %38, align 1, !dbg !591, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !581
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !581
  %exitcond = icmp eq i32 %lftr.wideiv, %16, !dbg !581
  br i1 %exitcond, label %._crit_edge, label %30, !dbg !581

._crit_edge:                                      ; preds = %30, %._crit_edge21
  %indvars.iv.next12.pre-phi = phi i64 [ %.pre, %._crit_edge21 ], [ %29, %30 ], !dbg !575
  %39 = icmp sgt i64 %indvars.iv.next12.pre-phi, 1, !dbg !572
  br i1 %39, label %22, label %._crit_edge6, !dbg !575

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader
  ret i32 1, !dbg !592
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @AlignmentBootstrap(i8** nocapture readonly %ali1, i8** nocapture readonly %ali2, i32 %nseq, i32 %alen) #0 {
  tail call void @llvm.dbg.value(metadata i8** %ali1, i64 0, metadata !93, metadata !145), !dbg !593
  tail call void @llvm.dbg.value(metadata i8** %ali2, i64 0, metadata !94, metadata !145), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !95, metadata !145), !dbg !595
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !96, metadata !145), !dbg !596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !97, metadata !145), !dbg !597
  %1 = icmp sgt i32 %alen, 0, !dbg !598
  br i1 %1, label %.lr.ph8, label %.preheader, !dbg !601

.lr.ph8:                                          ; preds = %0
  %2 = sitofp i32 %alen to double, !dbg !602
  %3 = icmp sgt i32 %nseq, 0, !dbg !604
  %4 = add i32 %nseq, -1, !dbg !601
  %5 = add i32 %alen, -1, !dbg !601
  br label %9, !dbg !601

.preheader:                                       ; preds = %._crit_edge5, %0
  %6 = icmp sgt i32 %nseq, 0, !dbg !607
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !610

.lr.ph:                                           ; preds = %.preheader
  %7 = sext i32 %alen to i64, !dbg !611
  %8 = add i32 %nseq, -1, !dbg !610
  br label %22, !dbg !610

; <label>:9                                       ; preds = %._crit_edge5, %.lr.ph8
  %indvars.iv13 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next14, %._crit_edge5 ]
  %10 = tail call double @sre_random() #6, !dbg !602
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !98, metadata !145), !dbg !612
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !99, metadata !145), !dbg !613
  br i1 %3, label %.lr.ph4, label %._crit_edge5, !dbg !614

.lr.ph4:                                          ; preds = %9
  %11 = fmul double %2, %10, !dbg !602
  %12 = fptosi double %11 to i32, !dbg !602
  %13 = sext i32 %12 to i64, !dbg !615
  br label %14, !dbg !614

; <label>:14                                      ; preds = %14, %.lr.ph4
  %indvars.iv9 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next10, %14 ]
  %15 = getelementptr inbounds i8** %ali2, i64 %indvars.iv9, !dbg !615
  %16 = load i8** %15, align 8, !dbg !615, !tbaa !209
  %17 = getelementptr inbounds i8* %16, i64 %13, !dbg !615
  %18 = load i8* %17, align 1, !dbg !615, !tbaa !162
  %19 = getelementptr inbounds i8** %ali1, i64 %indvars.iv9, !dbg !616
  %20 = load i8** %19, align 8, !dbg !616, !tbaa !209
  %21 = getelementptr inbounds i8* %20, i64 %indvars.iv13, !dbg !616
  store i8 %18, i8* %21, align 1, !dbg !617, !tbaa !162
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !614
  %lftr.wideiv11 = trunc i64 %indvars.iv9 to i32, !dbg !614
  %exitcond12 = icmp eq i32 %lftr.wideiv11, %4, !dbg !614
  br i1 %exitcond12, label %._crit_edge5, label %14, !dbg !614

._crit_edge5:                                     ; preds = %14, %9
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !601
  %lftr.wideiv15 = trunc i64 %indvars.iv13 to i32, !dbg !601
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %5, !dbg !601
  br i1 %exitcond16, label %.preheader, label %9, !dbg !601

; <label>:22                                      ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  %23 = getelementptr inbounds i8** %ali1, i64 %indvars.iv, !dbg !611
  %24 = load i8** %23, align 8, !dbg !611, !tbaa !209
  %25 = getelementptr inbounds i8* %24, i64 %7, !dbg !611
  store i8 0, i8* %25, align 1, !dbg !618, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !610
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !610
  %exitcond = icmp eq i32 %lftr.wideiv, %8, !dbg !610
  br i1 %exitcond, label %._crit_edge, label %22, !dbg !610

._crit_edge:                                      ; preds = %22, %.preheader
  ret i32 1, !dbg !619
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @QRNAShuffle(i8* %xs, i8* %ys, i8* %x, i8* %y) #0 {
  tail call void @llvm.dbg.value(metadata i8* %xs, i64 0, metadata !104, metadata !145), !dbg !620
  tail call void @llvm.dbg.value(metadata i8* %ys, i64 0, metadata !105, metadata !145), !dbg !621
  tail call void @llvm.dbg.value(metadata i8* %x, i64 0, metadata !106, metadata !145), !dbg !622
  tail call void @llvm.dbg.value(metadata i8* %y, i64 0, metadata !107, metadata !145), !dbg !623
  %1 = icmp eq i8* %xs, %x, !dbg !624
  br i1 %1, label %5, label %2, !dbg !626

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %xs, i1 false), !dbg !627
  %4 = tail call i8* @__strcpy_chk(i8* %xs, i8* %x, i64 %3) #6, !dbg !627
  br label %5, !dbg !627

; <label>:5                                       ; preds = %0, %2
  %6 = icmp eq i8* %ys, %y, !dbg !628
  br i1 %6, label %10, label %7, !dbg !630

; <label>:7                                       ; preds = %5
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %ys, i1 false), !dbg !631
  %9 = tail call i8* @__strcpy_chk(i8* %ys, i8* %y, i64 %8) #6, !dbg !631
  br label %10, !dbg !631

; <label>:10                                      ; preds = %5, %7
  %11 = tail call i64 @strlen(i8* %x) #6, !dbg !632
  %12 = trunc i64 %11 to i32, !dbg !632
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !108, metadata !145), !dbg !633
  %sext = shl i64 %11, 32, !dbg !634
  %13 = ashr exact i64 %sext, 30, !dbg !634
  %14 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 572, i64 %13) #6, !dbg !634
  %15 = bitcast i8* %14 to i32*, !dbg !634
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !109, metadata !145), !dbg !635
  %16 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 573, i64 %13) #6, !dbg !636
  %17 = bitcast i8* %16 to i32*, !dbg !636
  tail call void @llvm.dbg.value(metadata i32* %17, i64 0, metadata !110, metadata !145), !dbg !637
  %18 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 574, i64 %13) #6, !dbg !638
  %19 = bitcast i8* %18 to i32*, !dbg !638
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !111, metadata !145), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !114, metadata !145), !dbg !640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !145), !dbg !641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !112, metadata !145), !dbg !642
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !115, metadata !145), !dbg !643
  %20 = icmp sgt i32 %12, 0, !dbg !644
  br i1 %20, label %.lr.ph14, label %._crit_edge, !dbg !647

.lr.ph14:                                         ; preds = %10
  %21 = add i32 %12, -1, !dbg !647
  br label %24, !dbg !647

.preheader2:                                      ; preds = %52
  %22 = icmp sgt i32 %nxy.1, 1, !dbg !648
  br i1 %22, label %.lr.ph7, label %.preheader1, !dbg !651

.lr.ph7:                                          ; preds = %.preheader2
  %23 = sext i32 %nxy.1 to i64
  br label %55, !dbg !651

; <label>:24                                      ; preds = %52, %.lr.ph14
  %indvars.iv21 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next22, %52 ]
  %ny.010 = phi i32 [ 0, %.lr.ph14 ], [ %ny.1, %52 ]
  %nx.09 = phi i32 [ 0, %.lr.ph14 ], [ %nx.1, %52 ]
  %nxy.08 = phi i32 [ 0, %.lr.ph14 ], [ %nxy.1, %52 ]
  %25 = getelementptr inbounds i8* %x, i64 %indvars.iv21, !dbg !652
  %26 = load i8* %25, align 1, !dbg !652, !tbaa !162
  switch i8 %26, label %30 [
    i8 32, label %27
    i8 46, label %27
    i8 95, label %27
    i8 45, label %27
    i8 126, label %27
  ], !dbg !652

; <label>:27                                      ; preds = %24, %24, %24, %24, %24
  %28 = getelementptr inbounds i8* %y, i64 %indvars.iv21, !dbg !655
  %29 = load i8* %28, align 1, !dbg !655, !tbaa !162
  switch i8 %29, label %thread-pre-split [
    i8 32, label %52
    i8 46, label %52
    i8 95, label %52
    i8 45, label %52
    i8 126, label %52
  ], !dbg !655

thread-pre-split:                                 ; preds = %27
  switch i8 %26, label %30 [
    i8 32, label %39
    i8 46, label %39
    i8 95, label %39
    i8 45, label %39
    i8 126, label %39
  ], !dbg !656

; <label>:30                                      ; preds = %thread-pre-split, %24
  %31 = getelementptr inbounds i8* %y, i64 %indvars.iv21, !dbg !658
  %32 = load i8* %31, align 1, !dbg !658, !tbaa !162
  switch i8 %32, label %33 [
    i8 32, label %38
    i8 46, label %38
    i8 95, label %38
    i8 45, label %38
    i8 126, label %38
  ], !dbg !658

; <label>:33                                      ; preds = %30
  %34 = sext i32 %nxy.08 to i64, !dbg !659
  %35 = getelementptr inbounds i32* %15, i64 %34, !dbg !659
  %36 = trunc i64 %indvars.iv21 to i32, !dbg !661
  store i32 %36, i32* %35, align 4, !dbg !661, !tbaa !189
  %37 = add nsw i32 %nxy.08, 1, !dbg !662
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !112, metadata !145), !dbg !642
  br label %52, !dbg !663

; <label>:38                                      ; preds = %30, %30, %30, %30, %30
  switch i8 %26, label %44 [
    i8 32, label %39
    i8 46, label %39
    i8 95, label %39
    i8 45, label %39
    i8 126, label %39
  ], !dbg !664

; <label>:39                                      ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %38, %38, %38, %38, %38
  %40 = sext i32 %ny.010 to i64, !dbg !666
  %41 = getelementptr inbounds i32* %19, i64 %40, !dbg !666
  %42 = trunc i64 %indvars.iv21 to i32, !dbg !668
  store i32 %42, i32* %41, align 4, !dbg !668, !tbaa !189
  %43 = add nsw i32 %ny.010, 1, !dbg !669
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !114, metadata !145), !dbg !640
  br label %52, !dbg !670

; <label>:44                                      ; preds = %38
  %45 = getelementptr inbounds i8* %y, i64 %indvars.iv21, !dbg !671
  %46 = load i8* %45, align 1, !dbg !671, !tbaa !162
  switch i8 %46, label %52 [
    i8 32, label %47
    i8 46, label %47
    i8 95, label %47
    i8 45, label %47
    i8 126, label %47
  ], !dbg !671

; <label>:47                                      ; preds = %44, %44, %44, %44, %44
  %48 = sext i32 %nx.09 to i64, !dbg !673
  %49 = getelementptr inbounds i32* %17, i64 %48, !dbg !673
  %50 = trunc i64 %indvars.iv21 to i32, !dbg !675
  store i32 %50, i32* %49, align 4, !dbg !675, !tbaa !189
  %51 = add nsw i32 %nx.09, 1, !dbg !676
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !113, metadata !145), !dbg !641
  br label %52, !dbg !677

; <label>:52                                      ; preds = %44, %27, %27, %27, %27, %27, %39, %47, %33
  %nxy.1 = phi i32 [ %nxy.08, %27 ], [ %nxy.08, %39 ], [ %nxy.08, %47 ], [ %37, %33 ], [ %nxy.08, %27 ], [ %nxy.08, %27 ], [ %nxy.08, %27 ], [ %nxy.08, %27 ], [ %nxy.08, %44 ]
  %nx.1 = phi i32 [ %nx.09, %27 ], [ %nx.09, %39 ], [ %51, %47 ], [ %nx.09, %33 ], [ %nx.09, %27 ], [ %nx.09, %27 ], [ %nx.09, %27 ], [ %nx.09, %27 ], [ %nx.09, %44 ]
  %ny.1 = phi i32 [ %ny.010, %27 ], [ %43, %39 ], [ %ny.010, %47 ], [ %ny.010, %33 ], [ %ny.010, %27 ], [ %ny.010, %27 ], [ %ny.010, %27 ], [ %ny.010, %27 ], [ %ny.010, %44 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !647
  %lftr.wideiv = trunc i64 %indvars.iv21 to i32, !dbg !647
  %exitcond = icmp eq i32 %lftr.wideiv, %21, !dbg !647
  br i1 %exitcond, label %.preheader2, label %24, !dbg !647

.preheader1:                                      ; preds = %55, %.preheader2
  %53 = icmp sgt i32 %nx.1, 1, !dbg !678
  br i1 %53, label %.lr.ph5, label %.preheader, !dbg !681

.lr.ph5:                                          ; preds = %.preheader1
  %54 = sext i32 %nx.1 to i64
  br label %92, !dbg !681

; <label>:55                                      ; preds = %.lr.ph7, %55
  %indvars.iv19 = phi i64 [ %23, %.lr.ph7 ], [ %indvars.iv.next20, %55 ]
  %56 = tail call double @sre_random() #6, !dbg !682
  %57 = trunc i64 %indvars.iv19 to i32, !dbg !682
  %58 = sitofp i32 %57 to double, !dbg !682
  %59 = fmul double %58, %56, !dbg !682
  %60 = fptosi double %59 to i32, !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !116, metadata !145), !dbg !684
  %61 = sext i32 %60 to i64, !dbg !685
  %62 = getelementptr inbounds i32* %15, i64 %61, !dbg !685
  %63 = load i32* %62, align 4, !dbg !685, !tbaa !189
  %64 = sext i32 %63 to i64, !dbg !686
  %65 = getelementptr inbounds i8* %xs, i64 %64, !dbg !686
  %66 = load i8* %65, align 1, !dbg !686, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !118, metadata !145), !dbg !687
  %67 = getelementptr inbounds i8* %ys, i64 %64, !dbg !688
  %68 = load i8* %67, align 1, !dbg !688, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %68, i64 0, metadata !119, metadata !145), !dbg !689
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1, !dbg !651
  %69 = getelementptr inbounds i32* %15, i64 %indvars.iv.next20, !dbg !690
  %70 = load i32* %69, align 4, !dbg !690, !tbaa !189
  %71 = sext i32 %70 to i64, !dbg !691
  %72 = getelementptr inbounds i8* %xs, i64 %71, !dbg !691
  %73 = load i8* %72, align 1, !dbg !691, !tbaa !162
  store i8 %73, i8* %65, align 1, !dbg !692, !tbaa !162
  %74 = load i32* %69, align 4, !dbg !693, !tbaa !189
  %75 = sext i32 %74 to i64, !dbg !694
  %76 = getelementptr inbounds i8* %ys, i64 %75, !dbg !694
  %77 = load i8* %76, align 1, !dbg !694, !tbaa !162
  %78 = load i32* %62, align 4, !dbg !695, !tbaa !189
  %79 = sext i32 %78 to i64, !dbg !696
  %80 = getelementptr inbounds i8* %ys, i64 %79, !dbg !696
  store i8 %77, i8* %80, align 1, !dbg !697, !tbaa !162
  %81 = load i32* %69, align 4, !dbg !698, !tbaa !189
  store i32 %81, i32* %62, align 4, !dbg !699, !tbaa !189
  %82 = load i32* %69, align 4, !dbg !700, !tbaa !189
  %83 = sext i32 %82 to i64, !dbg !701
  %84 = getelementptr inbounds i8* %xs, i64 %83, !dbg !701
  store i8 %66, i8* %84, align 1, !dbg !702, !tbaa !162
  %85 = load i32* %69, align 4, !dbg !703, !tbaa !189
  %86 = sext i32 %85 to i64, !dbg !704
  %87 = getelementptr inbounds i8* %ys, i64 %86, !dbg !704
  store i8 %68, i8* %87, align 1, !dbg !705, !tbaa !162
  %88 = load i32* %69, align 4, !dbg !706, !tbaa !189
  store i32 %88, i32* %62, align 4, !dbg !707, !tbaa !189
  %89 = icmp sgt i64 %indvars.iv.next20, 1, !dbg !648
  br i1 %89, label %55, label %.preheader1, !dbg !651

.preheader:                                       ; preds = %92, %.preheader1
  %90 = icmp sgt i32 %ny.1, 1, !dbg !708
  br i1 %90, label %.lr.ph, label %._crit_edge, !dbg !711

.lr.ph:                                           ; preds = %.preheader
  %91 = sext i32 %ny.1 to i64
  br label %126, !dbg !711

; <label>:92                                      ; preds = %.lr.ph5, %92
  %indvars.iv17 = phi i64 [ %54, %.lr.ph5 ], [ %indvars.iv.next18, %92 ]
  %93 = tail call double @sre_random() #6, !dbg !712
  %94 = trunc i64 %indvars.iv17 to i32, !dbg !712
  %95 = sitofp i32 %94 to double, !dbg !712
  %96 = fmul double %95, %93, !dbg !712
  %97 = fptosi double %96 to i32, !dbg !712
  tail call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !116, metadata !145), !dbg !684
  %98 = sext i32 %97 to i64, !dbg !714
  %99 = getelementptr inbounds i32* %17, i64 %98, !dbg !714
  %100 = load i32* %99, align 4, !dbg !714, !tbaa !189
  %101 = sext i32 %100 to i64, !dbg !715
  %102 = getelementptr inbounds i8* %xs, i64 %101, !dbg !715
  %103 = load i8* %102, align 1, !dbg !715, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !118, metadata !145), !dbg !687
  %104 = getelementptr inbounds i8* %ys, i64 %101, !dbg !716
  %105 = load i8* %104, align 1, !dbg !716, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %105, i64 0, metadata !119, metadata !145), !dbg !689
  tail call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !117, metadata !145), !dbg !717
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, -1, !dbg !681
  %106 = getelementptr inbounds i32* %17, i64 %indvars.iv.next18, !dbg !718
  %107 = load i32* %106, align 4, !dbg !718, !tbaa !189
  %108 = sext i32 %107 to i64, !dbg !719
  %109 = getelementptr inbounds i8* %xs, i64 %108, !dbg !719
  %110 = load i8* %109, align 1, !dbg !719, !tbaa !162
  store i8 %110, i8* %102, align 1, !dbg !720, !tbaa !162
  %111 = load i32* %106, align 4, !dbg !721, !tbaa !189
  %112 = sext i32 %111 to i64, !dbg !722
  %113 = getelementptr inbounds i8* %ys, i64 %112, !dbg !722
  %114 = load i8* %113, align 1, !dbg !722, !tbaa !162
  %115 = load i32* %99, align 4, !dbg !723, !tbaa !189
  %116 = sext i32 %115 to i64, !dbg !724
  %117 = getelementptr inbounds i8* %ys, i64 %116, !dbg !724
  store i8 %114, i8* %117, align 1, !dbg !725, !tbaa !162
  %118 = load i32* %106, align 4, !dbg !726, !tbaa !189
  store i32 %118, i32* %99, align 4, !dbg !727, !tbaa !189
  %119 = load i32* %106, align 4, !dbg !728, !tbaa !189
  %120 = sext i32 %119 to i64, !dbg !729
  %121 = getelementptr inbounds i8* %xs, i64 %120, !dbg !729
  store i8 %103, i8* %121, align 1, !dbg !730, !tbaa !162
  %122 = load i32* %106, align 4, !dbg !731, !tbaa !189
  %123 = sext i32 %122 to i64, !dbg !732
  %124 = getelementptr inbounds i8* %ys, i64 %123, !dbg !732
  store i8 %105, i8* %124, align 1, !dbg !733, !tbaa !162
  store i32 %100, i32* %106, align 4, !dbg !734, !tbaa !189
  %125 = icmp sgt i64 %indvars.iv.next18, 1, !dbg !678
  br i1 %125, label %92, label %.preheader, !dbg !681

; <label>:126                                     ; preds = %.lr.ph, %126
  %indvars.iv = phi i64 [ %91, %.lr.ph ], [ %indvars.iv.next, %126 ]
  %127 = tail call double @sre_random() #6, !dbg !735
  %128 = trunc i64 %indvars.iv to i32, !dbg !735
  %129 = sitofp i32 %128 to double, !dbg !735
  %130 = fmul double %129, %127, !dbg !735
  %131 = fptosi double %130 to i32, !dbg !735
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !116, metadata !145), !dbg !684
  %132 = sext i32 %131 to i64, !dbg !737
  %133 = getelementptr inbounds i32* %19, i64 %132, !dbg !737
  %134 = load i32* %133, align 4, !dbg !737, !tbaa !189
  %135 = sext i32 %134 to i64, !dbg !738
  %136 = getelementptr inbounds i8* %xs, i64 %135, !dbg !738
  %137 = load i8* %136, align 1, !dbg !738, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !118, metadata !145), !dbg !687
  %138 = getelementptr inbounds i8* %ys, i64 %135, !dbg !739
  %139 = load i8* %138, align 1, !dbg !739, !tbaa !162
  tail call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !119, metadata !145), !dbg !689
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !117, metadata !145), !dbg !717
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !711
  %140 = getelementptr inbounds i32* %19, i64 %indvars.iv.next, !dbg !740
  %141 = load i32* %140, align 4, !dbg !740, !tbaa !189
  %142 = sext i32 %141 to i64, !dbg !741
  %143 = getelementptr inbounds i8* %xs, i64 %142, !dbg !741
  %144 = load i8* %143, align 1, !dbg !741, !tbaa !162
  store i8 %144, i8* %136, align 1, !dbg !742, !tbaa !162
  %145 = load i32* %140, align 4, !dbg !743, !tbaa !189
  %146 = sext i32 %145 to i64, !dbg !744
  %147 = getelementptr inbounds i8* %ys, i64 %146, !dbg !744
  %148 = load i8* %147, align 1, !dbg !744, !tbaa !162
  %149 = load i32* %133, align 4, !dbg !745, !tbaa !189
  %150 = sext i32 %149 to i64, !dbg !746
  %151 = getelementptr inbounds i8* %ys, i64 %150, !dbg !746
  store i8 %148, i8* %151, align 1, !dbg !747, !tbaa !162
  %152 = load i32* %140, align 4, !dbg !748, !tbaa !189
  store i32 %152, i32* %133, align 4, !dbg !749, !tbaa !189
  %153 = load i32* %140, align 4, !dbg !750, !tbaa !189
  %154 = sext i32 %153 to i64, !dbg !751
  %155 = getelementptr inbounds i8* %xs, i64 %154, !dbg !751
  store i8 %137, i8* %155, align 1, !dbg !752, !tbaa !162
  %156 = load i32* %140, align 4, !dbg !753, !tbaa !189
  %157 = sext i32 %156 to i64, !dbg !754
  %158 = getelementptr inbounds i8* %ys, i64 %157, !dbg !754
  store i8 %139, i8* %158, align 1, !dbg !755, !tbaa !162
  store i32 %134, i32* %140, align 4, !dbg !756, !tbaa !189
  %159 = icmp sgt i64 %indvars.iv.next, 1, !dbg !708
  br i1 %159, label %126, label %._crit_edge, !dbg !711

._crit_edge:                                      ; preds = %126, %10, %.preheader
  tail call void @free(i8* %14) #7, !dbg !757
  tail call void @free(i8* %16) #7, !dbg !758
  tail call void @free(i8* %18) #7, !dbg !759
  ret i32 1, !dbg !760
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #4

; Function Attrs: optsize
declare i32 @__toupper(i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!141, !142, !143}
!llvm.ident = !{!144}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/shuffle.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !19, !40, !49, !61, !68, !80, !91, !100, !120, !126, !135, !138}
!8 = !DISubprogram(name: "StrShuffle", scope: !1, file: !1, line: 59, type: !9, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @StrShuffle, variables: !13)
!9 = !DISubroutineType(types: !10)
!10 = !{!4, !11, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !8, file: !1, line: 59, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !8, file: !1, line: 59, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !8, file: !1, line: 61, type: !4)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !8, file: !1, line: 62, type: !4)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !8, file: !1, line: 63, type: !12)
!19 = !DISubprogram(name: "StrDPShuffle", scope: !1, file: !1, line: 100, type: !9, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @StrDPShuffle, variables: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !38, !39}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !19, file: !1, line: 100, type: !11)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !19, file: !1, line: 100, type: !11)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !19, file: !1, line: 102, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !19, file: !1, line: 103, type: !4)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !19, file: !1, line: 104, type: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !19, file: !1, line: 104, type: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "E", scope: !19, file: !1, line: 105, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nE", scope: !19, file: !1, line: 106, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iE", scope: !19, file: !1, line: 107, type: !30)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !19, file: !1, line: 108, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sf", scope: !19, file: !1, line: 109, type: !12)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Z", scope: !19, file: !1, line: 110, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 208, align: 8, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 26)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keep_connecting", scope: !19, file: !1, line: 111, type: !4)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_eulerian", scope: !19, file: !1, line: 112, type: !4)
!40 = !DISubprogram(name: "StrMarkov0", scope: !1, file: !1, line: 290, type: !9, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @StrMarkov0, variables: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !40, file: !1, line: 290, type: !11)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !40, file: !1, line: 290, type: !11)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !40, file: !1, line: 292, type: !4)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !40, file: !1, line: 293, type: !4)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !40, file: !1, line: 294, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 832, align: 32, elements: !36)
!48 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!49 = !DISubprogram(name: "StrMarkov1", scope: !1, file: !1, line: 335, type: !9, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @StrMarkov1, variables: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !49, file: !1, line: 335, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !49, file: !1, line: 335, type: !11)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !49, file: !1, line: 337, type: !4)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !49, file: !1, line: 338, type: !4)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !49, file: !1, line: 339, type: !4)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !49, file: !1, line: 339, type: !4)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !49, file: !1, line: 340, type: !4)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !49, file: !1, line: 341, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 21632, align: 32, elements: !60)
!60 = !{!37, !37}
!61 = !DISubprogram(name: "StrReverse", scope: !1, file: !1, line: 392, type: !9, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @StrReverse, variables: !62)
!62 = !{!63, !64, !65, !66, !67}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !61, file: !1, line: 392, type: !11)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !61, file: !1, line: 392, type: !11)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !61, file: !1, line: 394, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !61, file: !1, line: 395, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !61, file: !1, line: 396, type: !12)
!68 = !DISubprogram(name: "StrRegionalShuffle", scope: !1, file: !1, line: 424, type: !69, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @StrRegionalShuffle, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{!4, !11, !11, !4}
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !68, file: !1, line: 424, type: !11)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !68, file: !1, line: 424, type: !11)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !68, file: !1, line: 424, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !68, file: !1, line: 426, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !68, file: !1, line: 427, type: !12)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !68, file: !1, line: 428, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !68, file: !1, line: 429, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !68, file: !1, line: 429, type: !4)
!80 = !DISubprogram(name: "AlignmentShuffle", scope: !1, file: !1, line: 463, type: !81, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8**, i32, i32)* @AlignmentShuffle, variables: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!4, !28, !28, !4, !4}
!83 = !{!84, !85, !86, !87, !88, !89, !90}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ali1", arg: 1, scope: !80, file: !1, line: 463, type: !28)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ali2", arg: 2, scope: !80, file: !1, line: 463, type: !28)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 3, scope: !80, file: !1, line: 463, type: !4)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 4, scope: !80, file: !1, line: 463, type: !4)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !80, file: !1, line: 465, type: !4)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !80, file: !1, line: 466, type: !4)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !80, file: !1, line: 467, type: !12)
!91 = !DISubprogram(name: "AlignmentBootstrap", scope: !1, file: !1, line: 512, type: !81, isLocal: false, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8**, i32, i32)* @AlignmentBootstrap, variables: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ali1", arg: 1, scope: !91, file: !1, line: 512, type: !28)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ali2", arg: 2, scope: !91, file: !1, line: 512, type: !28)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 3, scope: !91, file: !1, line: 512, type: !4)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 4, scope: !91, file: !1, line: 512, type: !4)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !91, file: !1, line: 514, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !91, file: !1, line: 515, type: !4)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !91, file: !1, line: 516, type: !4)
!100 = !DISubprogram(name: "QRNAShuffle", scope: !1, file: !1, line: 555, type: !101, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i8*, i8*)* @QRNAShuffle, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!4, !11, !11, !11, !11}
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xs", arg: 1, scope: !100, file: !1, line: 555, type: !11)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ys", arg: 2, scope: !100, file: !1, line: 555, type: !11)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !100, file: !1, line: 555, type: !11)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 4, scope: !100, file: !1, line: 555, type: !11)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "L", scope: !100, file: !1, line: 557, type: !4)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xycol", scope: !100, file: !1, line: 558, type: !30)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xcol", scope: !100, file: !1, line: 558, type: !30)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ycol", scope: !100, file: !1, line: 558, type: !30)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nxy", scope: !100, file: !1, line: 559, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !100, file: !1, line: 559, type: !4)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !100, file: !1, line: 559, type: !4)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !100, file: !1, line: 560, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !100, file: !1, line: 561, type: !4)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !100, file: !1, line: 561, type: !4)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xsym", scope: !100, file: !1, line: 562, type: !12)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ysym", scope: !100, file: !1, line: 562, type: !12)
!120 = !DISubprogram(name: "isalpha", scope: !121, file: !121, line: 218, type: !122, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, variables: !124)
!121 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!122 = !DISubroutineType(types: !123)
!123 = !{!4, !4}
!124 = !{!125}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !120, file: !121, line: 218, type: !4)
!126 = !DISubprogram(name: "__istype", scope: !121, file: !121, line: 153, type: !127, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !132)
!127 = !DISubroutineType(types: !128)
!128 = !{!4, !129, !131}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !130, line: 70, baseType: !4)
!130 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!131 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!132 = !{!133, !134}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !126, file: !121, line: 153, type: !129)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !126, file: !121, line: 153, type: !131)
!135 = !DISubprogram(name: "isascii", scope: !121, file: !121, line: 135, type: !122, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !136)
!136 = !{!137}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !135, file: !121, line: 135, type: !4)
!138 = !DISubprogram(name: "toupper", scope: !121, file: !121, line: 298, type: !122, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !139)
!139 = !{!140}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !138, file: !121, line: 298, type: !4)
!141 = !{i32 2, !"Dwarf Version", i32 2}
!142 = !{i32 2, !"Debug Info Version", i32 700000003}
!143 = !{i32 1, !"PIC Level", i32 2}
!144 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!145 = !DIExpression()
!146 = !DILocation(line: 59, column: 18, scope: !8)
!147 = !DILocation(line: 59, column: 28, scope: !8)
!148 = !DILocation(line: 65, column: 10, scope: !149)
!149 = distinct !DILexicalBlock(scope: !8, file: !1, line: 65, column: 7)
!150 = !DILocation(line: 65, column: 7, scope: !8)
!151 = !DILocation(line: 65, column: 17, scope: !149)
!152 = !DILocation(line: 66, column: 14, scope: !153)
!153 = distinct !DILexicalBlock(scope: !8, file: !1, line: 66, column: 3)
!154 = !DILocation(line: 61, column: 8, scope: !8)
!155 = !DILocation(line: 66, column: 30, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 66, column: 3)
!157 = !DILocation(line: 66, column: 3, scope: !153)
!158 = !DILocation(line: 68, column: 19, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !1, line: 67, column: 5)
!160 = !DILocation(line: 62, column: 8, scope: !8)
!161 = !DILocation(line: 69, column: 19, scope: !159)
!162 = !{!163, !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 63, column: 8, scope: !8)
!166 = !DILocation(line: 70, column: 19, scope: !159)
!167 = !DILocation(line: 70, column: 17, scope: !159)
!168 = !DILocation(line: 71, column: 17, scope: !159)
!169 = !DILocation(line: 73, column: 3, scope: !8)
!170 = !DILocation(line: 100, column: 20, scope: !19)
!171 = !DILocation(line: 100, column: 30, scope: !19)
!172 = !DILocation(line: 110, column: 10, scope: !19)
!173 = !DILocation(line: 116, column: 9, scope: !19)
!174 = !DILocation(line: 102, column: 10, scope: !19)
!175 = !DILocation(line: 103, column: 10, scope: !19)
!176 = !DILocation(line: 117, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 117, column: 3)
!178 = distinct !DILexicalBlock(scope: !19, file: !1, line: 117, column: 3)
!179 = !DILocation(line: 117, column: 3, scope: !178)
!180 = !DILocation(line: 118, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 118, column: 9)
!182 = !DILocation(line: 218, column: 13, scope: !120, inlinedAt: !183)
!183 = distinct !DILocation(line: 118, column: 11, scope: !181)
!184 = !DILocation(line: 153, column: 29, scope: !126, inlinedAt: !185)
!185 = distinct !DILocation(line: 220, column: 10, scope: !120, inlinedAt: !183)
!186 = !DILocation(line: 153, column: 47, scope: !126, inlinedAt: !185)
!187 = !DILocation(line: 158, column: 10, scope: !126, inlinedAt: !185)
!188 = !DILocation(line: 158, column: 27, scope: !126, inlinedAt: !185)
!189 = !{!190, !190, i64 0}
!190 = !{!"int", !163, i64 0}
!191 = !DILocation(line: 158, column: 25, scope: !126, inlinedAt: !185)
!192 = !DILocation(line: 118, column: 19, scope: !181)
!193 = !DILocation(line: 159, column: 7, scope: !126, inlinedAt: !185)
!194 = !DILocation(line: 118, column: 11, scope: !181)
!195 = !DILocation(line: 220, column: 10, scope: !120, inlinedAt: !183)
!196 = !DILocation(line: 118, column: 9, scope: !177)
!197 = !DILocation(line: 127, column: 8, scope: !19)
!198 = !DILocation(line: 105, column: 10, scope: !19)
!199 = !DILocation(line: 128, column: 8, scope: !19)
!200 = !DILocation(line: 106, column: 10, scope: !19)
!201 = !DILocation(line: 104, column: 10, scope: !19)
!202 = !DILocation(line: 131, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 130, column: 5)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 129, column: 3)
!205 = distinct !DILexicalBlock(scope: !19, file: !1, line: 129, column: 3)
!206 = !DILocation(line: 129, column: 3, scope: !205)
!207 = !DILocation(line: 131, column: 7, scope: !203)
!208 = !DILocation(line: 131, column: 13, scope: !203)
!209 = !{!210, !210, i64 0}
!210 = !{!"any pointer", !163, i64 0}
!211 = !DILocation(line: 132, column: 7, scope: !203)
!212 = !DILocation(line: 132, column: 13, scope: !203)
!213 = !DILocation(line: 135, column: 21, scope: !19)
!214 = !DILocation(line: 135, column: 15, scope: !19)
!215 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !216)
!216 = distinct !DILocation(line: 135, column: 7, scope: !19)
!217 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !216)
!218 = !DILocation(line: 136, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 136, column: 3)
!220 = distinct !DILexicalBlock(scope: !19, file: !1, line: 136, column: 3)
!221 = !DILocation(line: 136, column: 3, scope: !220)
!222 = !DILocation(line: 135, column: 28, scope: !19)
!223 = !DILocation(line: 138, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 137, column: 5)
!225 = !DILocation(line: 138, column: 19, scope: !224)
!226 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !227)
!227 = distinct !DILocation(line: 138, column: 11, scope: !224)
!228 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !227)
!229 = !DILocation(line: 138, column: 34, scope: !224)
!230 = !DILocation(line: 104, column: 12, scope: !19)
!231 = !DILocation(line: 139, column: 21, scope: !224)
!232 = !DILocation(line: 139, column: 12, scope: !224)
!233 = !DILocation(line: 139, column: 7, scope: !224)
!234 = !DILocation(line: 139, column: 19, scope: !224)
!235 = !DILocation(line: 140, column: 12, scope: !224)
!236 = !DILocation(line: 146, column: 22, scope: !19)
!237 = !DILocation(line: 146, column: 16, scope: !19)
!238 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !239)
!239 = distinct !DILocation(line: 146, column: 8, scope: !19)
!240 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !239)
!241 = !DILocation(line: 112, column: 10, scope: !19)
!242 = !DILocation(line: 159, column: 27, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 159, column: 8)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 158, column: 2)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 157, column: 7)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 157, column: 7)
!247 = distinct !DILexicalBlock(scope: !19, file: !1, line: 149, column: 5)
!248 = !DILocation(line: 177, column: 7, scope: !247)
!249 = !DILocation(line: 157, column: 21, scope: !245)
!250 = !DILocation(line: 157, column: 7, scope: !246)
!251 = !DILocation(line: 176, column: 37, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 176, column: 7)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 176, column: 7)
!254 = !DILocation(line: 111, column: 10, scope: !19)
!255 = !DILocation(line: 177, column: 19, scope: !247)
!256 = !DILocation(line: 179, column: 7, scope: !247)
!257 = !DILocation(line: 159, column: 8, scope: !243)
!258 = !DILocation(line: 159, column: 14, scope: !243)
!259 = !DILocation(line: 159, column: 24, scope: !243)
!260 = !DILocation(line: 159, column: 19, scope: !243)
!261 = !DILocation(line: 161, column: 20, scope: !244)
!262 = !DILocation(line: 162, column: 20, scope: !244)
!263 = !DILocation(line: 163, column: 30, scope: !244)
!264 = !DILocation(line: 163, column: 20, scope: !244)
!265 = !DILocation(line: 163, column: 18, scope: !244)
!266 = !DILocation(line: 164, column: 9, scope: !244)
!267 = !DILocation(line: 164, column: 14, scope: !244)
!268 = !DILocation(line: 164, column: 4, scope: !244)
!269 = !DILocation(line: 164, column: 18, scope: !244)
!270 = !DILocation(line: 165, column: 2, scope: !244)
!271 = !DILocation(line: 157, column: 28, scope: !245)
!272 = !DILocation(line: 157, column: 7, scope: !245)
!273 = !DILocation(line: 184, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 184, column: 10)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 182, column: 4)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 181, column: 2)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 181, column: 2)
!278 = distinct !DILexicalBlock(scope: !247, file: !1, line: 179, column: 31)
!279 = !DILocation(line: 184, column: 15, scope: !274)
!280 = !DILocation(line: 184, column: 20, scope: !274)
!281 = !DILocation(line: 183, column: 10, scope: !275)
!282 = !DILocation(line: 183, column: 15, scope: !275)
!283 = !DILocation(line: 183, column: 20, scope: !275)
!284 = !DILocation(line: 184, column: 23, scope: !274)
!285 = !DILocation(line: 184, column: 28, scope: !274)
!286 = !DILocation(line: 184, column: 10, scope: !275)
!287 = !DILocation(line: 186, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !274, file: !1, line: 185, column: 8)
!289 = !DILocation(line: 188, column: 8, scope: !288)
!290 = !DILocation(line: 181, column: 2, scope: !277)
!291 = !DILocation(line: 199, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 199, column: 8)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 198, column: 2)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 197, column: 7)
!295 = distinct !DILexicalBlock(scope: !247, file: !1, line: 197, column: 7)
!296 = !DILocation(line: 199, column: 14, scope: !292)
!297 = !DILocation(line: 199, column: 24, scope: !292)
!298 = !DILocation(line: 199, column: 19, scope: !292)
!299 = !DILocation(line: 200, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !1, line: 200, column: 8)
!301 = !DILocation(line: 200, column: 13, scope: !300)
!302 = !DILocation(line: 200, column: 8, scope: !293)
!303 = !DILocation(line: 197, column: 7, scope: !295)
!304 = !DILocation(line: 197, column: 21, scope: !294)
!305 = !DILocation(line: 225, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 225, column: 5)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 224, column: 3)
!308 = distinct !DILexicalBlock(scope: !19, file: !1, line: 224, column: 3)
!309 = !DILocation(line: 225, column: 20, scope: !306)
!310 = !DILocation(line: 225, column: 27, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !1, line: 225, column: 5)
!312 = !DILocation(line: 225, column: 5, scope: !306)
!313 = !DILocation(line: 228, column: 14, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 226, column: 7)
!315 = !DILocation(line: 227, column: 14, scope: !314)
!316 = !DILocation(line: 229, column: 20, scope: !314)
!317 = !DILocation(line: 229, column: 14, scope: !314)
!318 = !DILocation(line: 229, column: 12, scope: !314)
!319 = !DILocation(line: 230, column: 2, scope: !314)
!320 = !DILocation(line: 230, column: 12, scope: !314)
!321 = !DILocation(line: 224, column: 3, scope: !308)
!322 = !DILocation(line: 240, column: 8, scope: !19)
!323 = !DILocation(line: 107, column: 10, scope: !19)
!324 = !DILocation(line: 241, column: 34, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 241, column: 3)
!326 = distinct !DILexicalBlock(scope: !19, file: !1, line: 241, column: 3)
!327 = !DILocation(line: 244, column: 21, scope: !19)
!328 = !DILocation(line: 244, column: 15, scope: !19)
!329 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !330)
!330 = distinct !DILocation(line: 244, column: 7, scope: !19)
!331 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !330)
!332 = !DILocation(line: 244, column: 28, scope: !19)
!333 = !DILocation(line: 245, column: 3, scope: !19)
!334 = !DILocation(line: 247, column: 23, scope: !335)
!335 = distinct !DILexicalBlock(scope: !19, file: !1, line: 246, column: 5)
!336 = !DILocation(line: 247, column: 19, scope: !335)
!337 = !DILocation(line: 254, column: 11, scope: !335)
!338 = !DILocation(line: 247, column: 7, scope: !335)
!339 = !DILocation(line: 247, column: 17, scope: !335)
!340 = !DILocation(line: 249, column: 16, scope: !335)
!341 = !DILocation(line: 249, column: 11, scope: !335)
!342 = !DILocation(line: 250, column: 12, scope: !335)
!343 = !DILocation(line: 254, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !335, file: !1, line: 254, column: 11)
!345 = !DILocation(line: 254, column: 20, scope: !344)
!346 = !DILocation(line: 254, column: 17, scope: !344)
!347 = !DILocation(line: 257, column: 19, scope: !19)
!348 = !DILocation(line: 257, column: 15, scope: !19)
!349 = !DILocation(line: 257, column: 9, scope: !19)
!350 = !DILocation(line: 257, column: 3, scope: !19)
!351 = !DILocation(line: 257, column: 13, scope: !19)
!352 = !DILocation(line: 258, column: 3, scope: !19)
!353 = !DILocation(line: 258, column: 13, scope: !19)
!354 = !DILocation(line: 262, column: 11, scope: !355)
!355 = distinct !DILexicalBlock(scope: !19, file: !1, line: 262, column: 7)
!356 = !DILocation(line: 262, column: 7, scope: !19)
!357 = !DILocation(line: 262, column: 19, scope: !355)
!358 = !DILocation(line: 263, column: 11, scope: !359)
!359 = distinct !DILexicalBlock(scope: !19, file: !1, line: 263, column: 7)
!360 = !DILocation(line: 263, column: 7, scope: !19)
!361 = !DILocation(line: 263, column: 19, scope: !359)
!362 = !DILocation(line: 267, column: 3, scope: !19)
!363 = !DILocation(line: 268, column: 3, scope: !19)
!364 = !DILocation(line: 269, column: 3, scope: !19)
!365 = !DILocation(line: 270, column: 3, scope: !19)
!366 = !DILocation(line: 271, column: 1, scope: !19)
!367 = !DILocation(line: 290, column: 18, scope: !40)
!368 = !DILocation(line: 290, column: 28, scope: !40)
!369 = !DILocation(line: 294, column: 3, scope: !40)
!370 = !DILocation(line: 294, column: 9, scope: !40)
!371 = !DILocation(line: 298, column: 9, scope: !40)
!372 = !DILocation(line: 292, column: 9, scope: !40)
!373 = !DILocation(line: 293, column: 9, scope: !40)
!374 = !DILocation(line: 299, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 299, column: 3)
!376 = distinct !DILexicalBlock(scope: !40, file: !1, line: 299, column: 3)
!377 = !DILocation(line: 299, column: 3, scope: !376)
!378 = !DILocation(line: 304, column: 8, scope: !40)
!379 = !DILocation(line: 304, column: 3, scope: !40)
!380 = !DILocation(line: 305, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !40, file: !1, line: 305, column: 3)
!382 = !DILocation(line: 300, column: 25, scope: !383)
!383 = distinct !DILexicalBlock(scope: !375, file: !1, line: 300, column: 9)
!384 = !DILocation(line: 218, column: 13, scope: !120, inlinedAt: !385)
!385 = distinct !DILocation(line: 300, column: 11, scope: !383)
!386 = !DILocation(line: 153, column: 29, scope: !126, inlinedAt: !387)
!387 = distinct !DILocation(line: 220, column: 10, scope: !120, inlinedAt: !385)
!388 = !DILocation(line: 153, column: 47, scope: !126, inlinedAt: !387)
!389 = !DILocation(line: 158, column: 10, scope: !126, inlinedAt: !387)
!390 = !DILocation(line: 158, column: 27, scope: !126, inlinedAt: !387)
!391 = !DILocation(line: 158, column: 25, scope: !126, inlinedAt: !387)
!392 = !DILocation(line: 300, column: 19, scope: !383)
!393 = !DILocation(line: 159, column: 7, scope: !126, inlinedAt: !387)
!394 = !DILocation(line: 300, column: 11, scope: !383)
!395 = !DILocation(line: 220, column: 10, scope: !120, inlinedAt: !385)
!396 = !DILocation(line: 300, column: 9, scope: !375)
!397 = !DILocation(line: 306, column: 27, scope: !398)
!398 = distinct !DILexicalBlock(scope: !381, file: !1, line: 305, column: 3)
!399 = !DILocation(line: 306, column: 21, scope: !398)
!400 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !401)
!401 = distinct !DILocation(line: 306, column: 13, scope: !398)
!402 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !401)
!403 = !DILocation(line: 306, column: 36, scope: !398)
!404 = !DILocation(line: 306, column: 5, scope: !398)
!405 = !DILocation(line: 306, column: 44, scope: !398)
!406 = !{!407, !407, i64 0}
!407 = !{!"float", !163, i64 0}
!408 = !DILocation(line: 307, column: 3, scope: !40)
!409 = !DILocation(line: 311, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !40, file: !1, line: 311, column: 3)
!411 = !DILocation(line: 312, column: 15, scope: !412)
!412 = distinct !DILexicalBlock(scope: !410, file: !1, line: 311, column: 3)
!413 = !DILocation(line: 312, column: 30, scope: !412)
!414 = !DILocation(line: 312, column: 5, scope: !412)
!415 = !DILocation(line: 312, column: 13, scope: !412)
!416 = !DILocation(line: 313, column: 3, scope: !40)
!417 = !DILocation(line: 313, column: 11, scope: !40)
!418 = !DILocation(line: 315, column: 3, scope: !40)
!419 = !DILocation(line: 316, column: 1, scope: !40)
!420 = !DILocation(line: 335, column: 18, scope: !49)
!421 = !DILocation(line: 335, column: 28, scope: !49)
!422 = !DILocation(line: 341, column: 3, scope: !49)
!423 = !DILocation(line: 341, column: 9, scope: !49)
!424 = !DILocation(line: 345, column: 9, scope: !49)
!425 = !DILocation(line: 337, column: 9, scope: !49)
!426 = !DILocation(line: 338, column: 9, scope: !49)
!427 = !DILocation(line: 346, column: 21, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 346, column: 3)
!429 = distinct !DILexicalBlock(scope: !49, file: !1, line: 346, column: 3)
!430 = !DILocation(line: 346, column: 3, scope: !429)
!431 = !DILocation(line: 347, column: 25, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !1, line: 347, column: 9)
!433 = !DILocation(line: 218, column: 13, scope: !120, inlinedAt: !434)
!434 = distinct !DILocation(line: 347, column: 11, scope: !432)
!435 = !DILocation(line: 153, column: 29, scope: !126, inlinedAt: !436)
!436 = distinct !DILocation(line: 220, column: 10, scope: !120, inlinedAt: !434)
!437 = !DILocation(line: 153, column: 47, scope: !126, inlinedAt: !436)
!438 = !DILocation(line: 158, column: 10, scope: !126, inlinedAt: !436)
!439 = !DILocation(line: 158, column: 27, scope: !126, inlinedAt: !436)
!440 = !DILocation(line: 158, column: 25, scope: !126, inlinedAt: !436)
!441 = !DILocation(line: 347, column: 19, scope: !432)
!442 = !DILocation(line: 159, column: 7, scope: !126, inlinedAt: !436)
!443 = !DILocation(line: 347, column: 11, scope: !432)
!444 = !DILocation(line: 220, column: 10, scope: !120, inlinedAt: !434)
!445 = !DILocation(line: 347, column: 9, scope: !428)
!446 = !DILocation(line: 351, column: 33, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 351, column: 3)
!448 = distinct !DILexicalBlock(scope: !49, file: !1, line: 351, column: 3)
!449 = !DILocation(line: 351, column: 28, scope: !447)
!450 = !DILocation(line: 351, column: 3, scope: !448)
!451 = !DILocation(line: 353, column: 25, scope: !49)
!452 = !DILocation(line: 353, column: 19, scope: !49)
!453 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !454)
!454 = distinct !DILocation(line: 353, column: 11, scope: !49)
!455 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !454)
!456 = !DILocation(line: 353, column: 32, scope: !49)
!457 = !DILocation(line: 339, column: 9, scope: !49)
!458 = !DILocation(line: 340, column: 9, scope: !49)
!459 = !DILocation(line: 354, column: 21, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 354, column: 3)
!461 = distinct !DILexicalBlock(scope: !49, file: !1, line: 354, column: 3)
!462 = !DILocation(line: 354, column: 3, scope: !461)
!463 = !DILocation(line: 356, column: 25, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !1, line: 355, column: 5)
!465 = !DILocation(line: 356, column: 19, scope: !464)
!466 = !DILocation(line: 298, column: 13, scope: !138, inlinedAt: !467)
!467 = distinct !DILocation(line: 356, column: 11, scope: !464)
!468 = !DILocation(line: 300, column: 17, scope: !138, inlinedAt: !467)
!469 = !DILocation(line: 356, column: 34, scope: !464)
!470 = !DILocation(line: 339, column: 11, scope: !49)
!471 = !DILocation(line: 357, column: 7, scope: !464)
!472 = !DILocation(line: 357, column: 15, scope: !464)
!473 = !DILocation(line: 361, column: 11, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 360, column: 3)
!475 = distinct !DILexicalBlock(scope: !49, file: !1, line: 360, column: 3)
!476 = !DILocation(line: 361, column: 5, scope: !474)
!477 = !DILocation(line: 360, column: 3, scope: !475)
!478 = !DILocation(line: 366, column: 11, scope: !49)
!479 = !DILocation(line: 366, column: 9, scope: !49)
!480 = !DILocation(line: 367, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !49, file: !1, line: 367, column: 3)
!482 = !DILocation(line: 369, column: 19, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 368, column: 5)
!484 = distinct !DILexicalBlock(scope: !481, file: !1, line: 367, column: 3)
!485 = !DILocation(line: 369, column: 11, scope: !483)
!486 = !DILocation(line: 370, column: 19, scope: !483)
!487 = !DILocation(line: 370, column: 17, scope: !483)
!488 = !DILocation(line: 370, column: 7, scope: !483)
!489 = !DILocation(line: 370, column: 15, scope: !483)
!490 = !DILocation(line: 373, column: 3, scope: !49)
!491 = !DILocation(line: 373, column: 11, scope: !49)
!492 = !DILocation(line: 375, column: 3, scope: !49)
!493 = !DILocation(line: 376, column: 1, scope: !49)
!494 = !DILocation(line: 392, column: 18, scope: !61)
!495 = !DILocation(line: 392, column: 28, scope: !61)
!496 = !DILocation(line: 398, column: 9, scope: !61)
!497 = !DILocation(line: 394, column: 8, scope: !61)
!498 = !DILocation(line: 395, column: 8, scope: !61)
!499 = !DILocation(line: 399, column: 26, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 399, column: 3)
!501 = distinct !DILexicalBlock(scope: !61, file: !1, line: 399, column: 3)
!502 = !DILocation(line: 399, column: 21, scope: !500)
!503 = !DILocation(line: 399, column: 3, scope: !501)
!504 = !DILocation(line: 401, column: 29, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !1, line: 400, column: 5)
!506 = !DILocation(line: 401, column: 33, scope: !505)
!507 = !DILocation(line: 401, column: 23, scope: !505)
!508 = !DILocation(line: 396, column: 8, scope: !61)
!509 = !DILocation(line: 402, column: 23, scope: !505)
!510 = !DILocation(line: 402, column: 7, scope: !505)
!511 = !DILocation(line: 402, column: 21, scope: !505)
!512 = !DILocation(line: 403, column: 7, scope: !505)
!513 = !DILocation(line: 403, column: 21, scope: !505)
!514 = !DILocation(line: 405, column: 10, scope: !515)
!515 = distinct !DILexicalBlock(scope: !61, file: !1, line: 405, column: 7)
!516 = !DILocation(line: 405, column: 7, scope: !61)
!517 = !DILocation(line: 405, column: 26, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !1, line: 405, column: 14)
!519 = !DILocation(line: 405, column: 16, scope: !518)
!520 = !DILocation(line: 405, column: 24, scope: !518)
!521 = !DILocation(line: 405, column: 35, scope: !518)
!522 = !DILocation(line: 406, column: 3, scope: !61)
!523 = !DILocation(line: 406, column: 11, scope: !61)
!524 = !DILocation(line: 407, column: 3, scope: !61)
!525 = !DILocation(line: 424, column: 26, scope: !68)
!526 = !DILocation(line: 424, column: 36, scope: !68)
!527 = !DILocation(line: 424, column: 44, scope: !68)
!528 = !DILocation(line: 431, column: 10, scope: !529)
!529 = distinct !DILexicalBlock(scope: !68, file: !1, line: 431, column: 7)
!530 = !DILocation(line: 431, column: 7, scope: !68)
!531 = !DILocation(line: 431, column: 17, scope: !529)
!532 = !DILocation(line: 432, column: 9, scope: !68)
!533 = !DILocation(line: 426, column: 8, scope: !68)
!534 = !DILocation(line: 429, column: 8, scope: !68)
!535 = !DILocation(line: 434, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 434, column: 3)
!537 = distinct !DILexicalBlock(scope: !68, file: !1, line: 434, column: 3)
!538 = !DILocation(line: 434, column: 3, scope: !537)
!539 = !DILocation(line: 435, column: 14, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !1, line: 435, column: 5)
!541 = !DILocation(line: 435, column: 35, scope: !542)
!542 = distinct !DILexicalBlock(scope: !540, file: !1, line: 435, column: 5)
!543 = !DILocation(line: 435, column: 5, scope: !540)
!544 = !DILocation(line: 437, column: 16, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !1, line: 436, column: 7)
!546 = !DILocation(line: 437, column: 14, scope: !545)
!547 = !DILocation(line: 428, column: 8, scope: !68)
!548 = !DILocation(line: 438, column: 12, scope: !545)
!549 = !DILocation(line: 427, column: 8, scope: !68)
!550 = !DILocation(line: 439, column: 12, scope: !545)
!551 = !DILocation(line: 439, column: 10, scope: !545)
!552 = !DILocation(line: 440, column: 10, scope: !545)
!553 = !DILocation(line: 442, column: 3, scope: !68)
!554 = !DILocation(line: 463, column: 25, scope: !80)
!555 = !DILocation(line: 463, column: 38, scope: !80)
!556 = !DILocation(line: 463, column: 48, scope: !80)
!557 = !DILocation(line: 463, column: 58, scope: !80)
!558 = !DILocation(line: 469, column: 12, scope: !559)
!559 = distinct !DILexicalBlock(scope: !80, file: !1, line: 469, column: 7)
!560 = !DILocation(line: 469, column: 7, scope: !80)
!561 = !DILocation(line: 471, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 471, column: 7)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 471, column: 7)
!564 = distinct !DILexicalBlock(scope: !559, file: !1, line: 470, column: 5)
!565 = !DILocation(line: 471, column: 7, scope: !563)
!566 = !DILocation(line: 474, column: 17, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 474, column: 3)
!568 = distinct !DILexicalBlock(scope: !80, file: !1, line: 474, column: 3)
!569 = !DILocation(line: 474, column: 3, scope: !568)
!570 = !DILocation(line: 475, column: 5, scope: !567)
!571 = !DILocation(line: 471, column: 34, scope: !562)
!572 = !DILocation(line: 477, column: 15, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 477, column: 3)
!574 = distinct !DILexicalBlock(scope: !80, file: !1, line: 477, column: 3)
!575 = !DILocation(line: 477, column: 3, scope: !574)
!576 = !DILocation(line: 475, column: 19, scope: !567)
!577 = !DILocation(line: 479, column: 13, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !1, line: 478, column: 5)
!579 = !DILocation(line: 466, column: 8, scope: !80)
!580 = !DILocation(line: 465, column: 8, scope: !80)
!581 = !DILocation(line: 480, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !1, line: 480, column: 7)
!583 = !DILocation(line: 482, column: 22, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 481, column: 2)
!585 = distinct !DILexicalBlock(scope: !582, file: !1, line: 480, column: 7)
!586 = !DILocation(line: 483, column: 34, scope: !584)
!587 = !DILocation(line: 467, column: 8, scope: !80)
!588 = !DILocation(line: 483, column: 22, scope: !584)
!589 = !DILocation(line: 483, column: 20, scope: !584)
!590 = !DILocation(line: 484, column: 4, scope: !584)
!591 = !DILocation(line: 484, column: 20, scope: !584)
!592 = !DILocation(line: 488, column: 3, scope: !80)
!593 = !DILocation(line: 512, column: 27, scope: !91)
!594 = !DILocation(line: 512, column: 40, scope: !91)
!595 = !DILocation(line: 512, column: 50, scope: !91)
!596 = !DILocation(line: 512, column: 60, scope: !91)
!597 = !DILocation(line: 514, column: 8, scope: !91)
!598 = !DILocation(line: 518, column: 21, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 518, column: 3)
!600 = distinct !DILexicalBlock(scope: !91, file: !1, line: 518, column: 3)
!601 = !DILocation(line: 518, column: 3, scope: !600)
!602 = !DILocation(line: 520, column: 13, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !1, line: 519, column: 5)
!604 = !DILocation(line: 521, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 521, column: 7)
!606 = distinct !DILexicalBlock(scope: !603, file: !1, line: 521, column: 7)
!607 = !DILocation(line: 524, column: 17, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 524, column: 3)
!609 = distinct !DILexicalBlock(scope: !91, file: !1, line: 524, column: 3)
!610 = !DILocation(line: 524, column: 3, scope: !609)
!611 = !DILocation(line: 525, column: 5, scope: !608)
!612 = !DILocation(line: 515, column: 8, scope: !91)
!613 = !DILocation(line: 516, column: 8, scope: !91)
!614 = !DILocation(line: 521, column: 7, scope: !606)
!615 = !DILocation(line: 522, column: 17, scope: !605)
!616 = !DILocation(line: 522, column: 2, scope: !605)
!617 = !DILocation(line: 522, column: 15, scope: !605)
!618 = !DILocation(line: 525, column: 19, scope: !608)
!619 = !DILocation(line: 527, column: 3, scope: !91)
!620 = !DILocation(line: 555, column: 19, scope: !100)
!621 = !DILocation(line: 555, column: 29, scope: !100)
!622 = !DILocation(line: 555, column: 39, scope: !100)
!623 = !DILocation(line: 555, column: 48, scope: !100)
!624 = !DILocation(line: 564, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !100, file: !1, line: 564, column: 7)
!626 = !DILocation(line: 564, column: 7, scope: !100)
!627 = !DILocation(line: 564, column: 16, scope: !625)
!628 = !DILocation(line: 565, column: 10, scope: !629)
!629 = distinct !DILexicalBlock(scope: !100, file: !1, line: 565, column: 7)
!630 = !DILocation(line: 565, column: 7, scope: !100)
!631 = !DILocation(line: 565, column: 16, scope: !629)
!632 = !DILocation(line: 571, column: 7, scope: !100)
!633 = !DILocation(line: 557, column: 8, scope: !100)
!634 = !DILocation(line: 572, column: 11, scope: !100)
!635 = !DILocation(line: 558, column: 8, scope: !100)
!636 = !DILocation(line: 573, column: 11, scope: !100)
!637 = !DILocation(line: 558, column: 16, scope: !100)
!638 = !DILocation(line: 574, column: 11, scope: !100)
!639 = !DILocation(line: 558, column: 23, scope: !100)
!640 = !DILocation(line: 559, column: 17, scope: !100)
!641 = !DILocation(line: 559, column: 13, scope: !100)
!642 = !DILocation(line: 559, column: 8, scope: !100)
!643 = !DILocation(line: 560, column: 8, scope: !100)
!644 = !DILocation(line: 577, column: 17, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 577, column: 3)
!646 = distinct !DILexicalBlock(scope: !100, file: !1, line: 577, column: 3)
!647 = !DILocation(line: 577, column: 3, scope: !646)
!648 = !DILocation(line: 588, column: 14, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 588, column: 3)
!650 = distinct !DILexicalBlock(scope: !100, file: !1, line: 588, column: 3)
!651 = !DILocation(line: 588, column: 3, scope: !650)
!652 = !DILocation(line: 579, column: 16, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 579, column: 16)
!654 = distinct !DILexicalBlock(scope: !645, file: !1, line: 578, column: 5)
!655 = !DILocation(line: 579, column: 31, scope: !653)
!656 = !DILocation(line: 580, column: 18, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !1, line: 580, column: 16)
!658 = !DILocation(line: 580, column: 35, scope: !657)
!659 = !DILocation(line: 580, column: 50, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !1, line: 580, column: 48)
!661 = !DILocation(line: 580, column: 61, scope: !660)
!662 = !DILocation(line: 580, column: 69, scope: !660)
!663 = !DILocation(line: 580, column: 73, scope: !660)
!664 = !DILocation(line: 581, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !657, file: !1, line: 581, column: 16)
!666 = !DILocation(line: 581, column: 50, scope: !667)
!667 = distinct !DILexicalBlock(scope: !665, file: !1, line: 581, column: 48)
!668 = !DILocation(line: 581, column: 59, scope: !667)
!669 = !DILocation(line: 581, column: 68, scope: !667)
!670 = !DILocation(line: 581, column: 73, scope: !667)
!671 = !DILocation(line: 582, column: 16, scope: !672)
!672 = distinct !DILexicalBlock(scope: !665, file: !1, line: 582, column: 16)
!673 = !DILocation(line: 582, column: 50, scope: !674)
!674 = distinct !DILexicalBlock(scope: !672, file: !1, line: 582, column: 48)
!675 = !DILocation(line: 582, column: 59, scope: !674)
!676 = !DILocation(line: 582, column: 68, scope: !674)
!677 = !DILocation(line: 582, column: 73, scope: !674)
!678 = !DILocation(line: 594, column: 13, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 594, column: 3)
!680 = distinct !DILexicalBlock(scope: !100, file: !1, line: 594, column: 3)
!681 = !DILocation(line: 594, column: 3, scope: !680)
!682 = !DILocation(line: 589, column: 20, scope: !683)
!683 = distinct !DILexicalBlock(scope: !649, file: !1, line: 588, column: 26)
!684 = !DILocation(line: 561, column: 8, scope: !100)
!685 = !DILocation(line: 590, column: 27, scope: !683)
!686 = !DILocation(line: 590, column: 24, scope: !683)
!687 = !DILocation(line: 562, column: 8, scope: !100)
!688 = !DILocation(line: 590, column: 61, scope: !683)
!689 = !DILocation(line: 562, column: 14, scope: !100)
!690 = !DILocation(line: 591, column: 27, scope: !683)
!691 = !DILocation(line: 591, column: 24, scope: !683)
!692 = !DILocation(line: 591, column: 22, scope: !683)
!693 = !DILocation(line: 591, column: 64, scope: !683)
!694 = !DILocation(line: 591, column: 61, scope: !683)
!695 = !DILocation(line: 591, column: 45, scope: !683)
!696 = !DILocation(line: 591, column: 42, scope: !683)
!697 = !DILocation(line: 591, column: 59, scope: !683)
!698 = !DILocation(line: 591, column: 95, scope: !683)
!699 = !DILocation(line: 591, column: 93, scope: !683)
!700 = !DILocation(line: 592, column: 8, scope: !683)
!701 = !DILocation(line: 592, column: 5, scope: !683)
!702 = !DILocation(line: 592, column: 22, scope: !683)
!703 = !DILocation(line: 592, column: 45, scope: !683)
!704 = !DILocation(line: 592, column: 42, scope: !683)
!705 = !DILocation(line: 592, column: 59, scope: !683)
!706 = !DILocation(line: 592, column: 95, scope: !683)
!707 = !DILocation(line: 592, column: 93, scope: !683)
!708 = !DILocation(line: 600, column: 13, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !1, line: 600, column: 3)
!710 = distinct !DILexicalBlock(scope: !100, file: !1, line: 600, column: 3)
!711 = !DILocation(line: 600, column: 3, scope: !710)
!712 = !DILocation(line: 595, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !679, file: !1, line: 594, column: 24)
!714 = !DILocation(line: 596, column: 25, scope: !713)
!715 = !DILocation(line: 596, column: 22, scope: !713)
!716 = !DILocation(line: 596, column: 55, scope: !713)
!717 = !DILocation(line: 561, column: 13, scope: !100)
!718 = !DILocation(line: 597, column: 25, scope: !713)
!719 = !DILocation(line: 597, column: 22, scope: !713)
!720 = !DILocation(line: 597, column: 20, scope: !713)
!721 = !DILocation(line: 597, column: 58, scope: !713)
!722 = !DILocation(line: 597, column: 55, scope: !713)
!723 = !DILocation(line: 597, column: 41, scope: !713)
!724 = !DILocation(line: 597, column: 38, scope: !713)
!725 = !DILocation(line: 597, column: 53, scope: !713)
!726 = !DILocation(line: 597, column: 84, scope: !713)
!727 = !DILocation(line: 597, column: 82, scope: !713)
!728 = !DILocation(line: 598, column: 8, scope: !713)
!729 = !DILocation(line: 598, column: 5, scope: !713)
!730 = !DILocation(line: 598, column: 20, scope: !713)
!731 = !DILocation(line: 598, column: 41, scope: !713)
!732 = !DILocation(line: 598, column: 38, scope: !713)
!733 = !DILocation(line: 598, column: 53, scope: !713)
!734 = !DILocation(line: 598, column: 82, scope: !713)
!735 = !DILocation(line: 601, column: 18, scope: !736)
!736 = distinct !DILexicalBlock(scope: !709, file: !1, line: 600, column: 24)
!737 = !DILocation(line: 602, column: 25, scope: !736)
!738 = !DILocation(line: 602, column: 22, scope: !736)
!739 = !DILocation(line: 602, column: 55, scope: !736)
!740 = !DILocation(line: 603, column: 25, scope: !736)
!741 = !DILocation(line: 603, column: 22, scope: !736)
!742 = !DILocation(line: 603, column: 20, scope: !736)
!743 = !DILocation(line: 603, column: 58, scope: !736)
!744 = !DILocation(line: 603, column: 55, scope: !736)
!745 = !DILocation(line: 603, column: 41, scope: !736)
!746 = !DILocation(line: 603, column: 38, scope: !736)
!747 = !DILocation(line: 603, column: 53, scope: !736)
!748 = !DILocation(line: 603, column: 84, scope: !736)
!749 = !DILocation(line: 603, column: 82, scope: !736)
!750 = !DILocation(line: 604, column: 8, scope: !736)
!751 = !DILocation(line: 604, column: 5, scope: !736)
!752 = !DILocation(line: 604, column: 20, scope: !736)
!753 = !DILocation(line: 604, column: 41, scope: !736)
!754 = !DILocation(line: 604, column: 38, scope: !736)
!755 = !DILocation(line: 604, column: 53, scope: !736)
!756 = !DILocation(line: 604, column: 82, scope: !736)
!757 = !DILocation(line: 607, column: 3, scope: !100)
!758 = !DILocation(line: 607, column: 16, scope: !100)
!759 = !DILocation(line: 607, column: 28, scope: !100)
!760 = !DILocation(line: 608, column: 3, scope: !100)
