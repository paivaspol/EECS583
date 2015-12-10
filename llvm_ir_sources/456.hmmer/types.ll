; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/types.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@squid_errno = external global i32
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IsInt(i8* readonly %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !13, metadata !94), !dbg !95
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !14, metadata !94), !dbg !96
  %1 = icmp eq i8* %s, null, !dbg !97
  br i1 %1, label %2, label %.preheader, !dbg !99

; <label>:2                                       ; preds = %0
  store i32 6, i32* @squid_errno, align 4, !dbg !100, !tbaa !102
  br label %isxdigit.exit.thread, !dbg !106

.preheader:                                       ; preds = %0, %isspace.exit
  %.0 = phi i8* [ %12, %isspace.exit ], [ %s, %0 ]
  %3 = load i8* %.0, align 1, !dbg !107, !tbaa !108
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !65, metadata !94) #5, !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !73, metadata !94) #5, !dbg !111
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !74, metadata !94) #5, !dbg !113
  %isascii.i.i2 = icmp sgt i8 %3, -1, !dbg !114
  br i1 %isascii.i.i2, label %4, label %9, !dbg !114

; <label>:4                                       ; preds = %.preheader
  %5 = sext i8 %3 to i64, !dbg !115
  %6 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %5, !dbg !115
  %7 = load i32* %6, align 4, !dbg !115, !tbaa !102
  %8 = and i32 %7, 16384, !dbg !116
  br label %isspace.exit, !dbg !114

; <label>:9                                       ; preds = %.preheader
  %10 = sext i8 %3 to i32, !dbg !117
  %11 = tail call i32 @__maskrune(i32 %10, i64 16384) #6, !dbg !118
  br label %isspace.exit, !dbg !114

isspace.exit:                                     ; preds = %4, %9
  %.sink.i.in.i = phi i32 [ %8, %4 ], [ %11, %9 ], !dbg !119
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !120
  %12 = getelementptr inbounds i8* %.0, i64 1, !dbg !121
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !13, metadata !94), !dbg !95
  br i1 %.sink.i.i, label %13, label %.preheader, !dbg !122

; <label>:13                                      ; preds = %isspace.exit
  %14 = load i8* %.0, align 1, !dbg !123, !tbaa !108
  switch i8 %14, label %16 [
    i8 45, label %15
    i8 43, label %15
  ], !dbg !125

; <label>:15                                      ; preds = %13, %13
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !13, metadata !94), !dbg !95
  br label %16, !dbg !126

; <label>:16                                      ; preds = %13, %15
  %.1 = phi i8* [ %12, %15 ], [ %.0, %13 ]
  %17 = tail call i32 @strncmp(i8* %.1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !127
  %18 = icmp eq i32 %17, 0, !dbg !129
  br i1 %18, label %19, label %23, !dbg !130

; <label>:19                                      ; preds = %16
  %20 = tail call i64 @strlen(i8* %.1) #6, !dbg !131
  %21 = trunc i64 %20 to i32, !dbg !132
  %22 = icmp sgt i32 %21, 2, !dbg !133
  br i1 %22, label %40, label %23, !dbg !134

; <label>:23                                      ; preds = %19, %16
  %24 = tail call i32 @strncmp(i8* %.1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i64 2) #6, !dbg !135
  %25 = icmp eq i32 %24, 0, !dbg !136
  br i1 %25, label %26, label %30, !dbg !137

; <label>:26                                      ; preds = %23
  %27 = tail call i64 @strlen(i8* %.1) #6, !dbg !138
  %28 = trunc i64 %27 to i32, !dbg !139
  %29 = icmp sgt i32 %28, 2, !dbg !140
  br i1 %29, label %40, label %30, !dbg !141

; <label>:30                                      ; preds = %26, %23
  %31 = load i8* %.1, align 1, !dbg !142, !tbaa !108
  %32 = icmp eq i8 %31, 48, !dbg !144
  br i1 %32, label %33, label %.thread.preheader, !dbg !145

; <label>:33                                      ; preds = %30
  %34 = tail call i64 @strlen(i8* %.1) #6, !dbg !146
  %35 = trunc i64 %34 to i32, !dbg !147
  %36 = icmp sgt i32 %35, 1, !dbg !148
  %37 = getelementptr inbounds i8* %.1, i64 1, !dbg !149
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !13, metadata !94), !dbg !95
  %..1 = select i1 %36, i8* %37, i8* %.1, !dbg !150
  %.pre = load i8* %..1, align 1, !dbg !151, !tbaa !108
  br label %.thread.preheader, !dbg !150

.thread.preheader:                                ; preds = %30, %33
  %38 = phi i8 [ %31, %30 ], [ %.pre, %33 ]
  %.3.ph = phi i8* [ %.1, %30 ], [ %..1, %33 ]
  %39 = icmp eq i8 %38, 0, !dbg !153
  br i1 %39, label %isxdigit.exit.thread, label %.lr.ph10, !dbg !154

; <label>:40                                      ; preds = %19, %26
  %41 = getelementptr inbounds i8* %.1, i64 2, !dbg !155
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !13, metadata !94), !dbg !95
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !14, metadata !94), !dbg !96
  %42 = load i8* %41, align 1, !dbg !157, !tbaa !108
  %43 = icmp eq i8 %42, 0, !dbg !158
  br i1 %43, label %isxdigit.exit.thread, label %.lr.ph, !dbg !159

.thread:                                          ; preds = %.lr.ph10
  %44 = load i8* %48, align 1, !dbg !151, !tbaa !108
  %45 = icmp eq i8 %44, 0, !dbg !153
  br i1 %45, label %isxdigit.exit.thread, label %.lr.ph10, !dbg !154

.lr.ph10:                                         ; preds = %.thread.preheader, %.thread
  %46 = phi i8 [ %44, %.thread ], [ %38, %.thread.preheader ]
  %.39 = phi i8* [ %48, %.thread ], [ %.3.ph, %.thread.preheader ]
  %47 = sext i8 %46 to i32, !dbg !151
  %isdigittmp = add nsw i32 %47, -48, !dbg !160
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !160
  %48 = getelementptr inbounds i8* %.39, i64 1, !dbg !163
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !13, metadata !94), !dbg !95
  br i1 %isdigit, label %.thread, label %isxdigit.exit.thread, !dbg !164

; <label>:49                                      ; preds = %isxdigit.exit
  %50 = load i8* %58, align 1, !dbg !157, !tbaa !108
  %51 = icmp eq i8 %50, 0, !dbg !158
  br i1 %51, label %isxdigit.exit.thread, label %.lr.ph, !dbg !159

.lr.ph:                                           ; preds = %40, %49
  %52 = phi i8 [ %50, %49 ], [ %42, %40 ]
  %.45 = phi i8* [ %58, %49 ], [ %41, %40 ]
  tail call void @llvm.dbg.value(metadata i64 65536, i64 0, metadata !86, metadata !94), !dbg !165
  %53 = icmp slt i8 %52, 0, !dbg !170
  br i1 %53, label %isxdigit.exit.thread, label %isxdigit.exit, !dbg !170

isxdigit.exit:                                    ; preds = %.lr.ph
  %54 = sext i8 %52 to i64, !dbg !171
  %55 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %54, !dbg !171
  %56 = load i32* %55, align 4, !dbg !171, !tbaa !102
  %.lobit.i = and i32 %56, 65536, !dbg !172
  %57 = icmp eq i32 %.lobit.i, 0, !dbg !173
  %58 = getelementptr inbounds i8* %.45, i64 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !13, metadata !94), !dbg !95
  br i1 %57, label %isxdigit.exit.thread, label %49, !dbg !175

isxdigit.exit.thread:                             ; preds = %.lr.ph10, %.thread, %isxdigit.exit, %49, %.lr.ph, %.thread.preheader, %40, %2
  %.01 = phi i32 [ 0, %2 ], [ 1, %40 ], [ 1, %.thread.preheader ], [ 0, %.lr.ph ], [ 1, %49 ], [ 0, %isxdigit.exit ], [ 1, %.thread ], [ 0, %.lr.ph10 ]
  ret i32 %.01, !dbg !176
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IsReal(i8* readonly %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !17, metadata !94), !dbg !177
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !94), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !19, metadata !94), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !94), !dbg !180
  %1 = icmp eq i8* %s, null, !dbg !181
  br i1 %1, label %.loopexit, label %.preheader16, !dbg !183

.preheader16:                                     ; preds = %0, %isspace.exit
  %.0 = phi i8* [ %11, %isspace.exit ], [ %s, %0 ]
  %2 = load i8* %.0, align 1, !dbg !184, !tbaa !108
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !65, metadata !94) #5, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !73, metadata !94) #5, !dbg !187
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !74, metadata !94) #5, !dbg !189
  %isascii.i.i12 = icmp sgt i8 %2, -1, !dbg !190
  br i1 %isascii.i.i12, label %3, label %8, !dbg !190

; <label>:3                                       ; preds = %.preheader16
  %4 = sext i8 %2 to i64, !dbg !191
  %5 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %4, !dbg !191
  %6 = load i32* %5, align 4, !dbg !191, !tbaa !102
  %7 = and i32 %6, 16384, !dbg !192
  br label %isspace.exit, !dbg !190

; <label>:8                                       ; preds = %.preheader16
  %9 = sext i8 %2 to i32, !dbg !193
  %10 = tail call i32 @__maskrune(i32 %9, i64 16384) #6, !dbg !194
  br label %isspace.exit, !dbg !190

isspace.exit:                                     ; preds = %3, %8
  %.sink.i.in.i = phi i32 [ %7, %3 ], [ %10, %8 ], !dbg !195
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !196
  %11 = getelementptr inbounds i8* %.0, i64 1, !dbg !197
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !17, metadata !94), !dbg !177
  br i1 %.sink.i.i, label %12, label %.preheader16, !dbg !198

; <label>:12                                      ; preds = %isspace.exit
  %13 = load i8* %.0, align 1, !dbg !199, !tbaa !108
  switch i8 %13, label %.preheader15 [
    i8 45, label %14
    i8 43, label %14
  ], !dbg !201

; <label>:14                                      ; preds = %12, %12
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !17, metadata !94), !dbg !177
  %.pre = load i8* %11, align 1, !dbg !202, !tbaa !108
  br label %.preheader15, !dbg !203

.preheader15:                                     ; preds = %14, %12
  %15 = phi i8 [ %13, %12 ], [ %.pre, %14 ]
  %.1.ph = phi i8* [ %.0, %12 ], [ %11, %14 ]
  %16 = icmp eq i8 %15, 0, !dbg !204
  br i1 %16, label %.preheader, label %.lr.ph, !dbg !205

.lr.ph:                                           ; preds = %.preheader15, %37
  %17 = phi i8 [ %39, %37 ], [ %15, %.preheader15 ]
  %gotreal.023 = phi i32 [ %gotreal.1, %37 ], [ 0, %.preheader15 ]
  %gotexp.022 = phi i32 [ %gotexp.1, %37 ], [ 0, %.preheader15 ]
  %gotdecimal.021 = phi i32 [ %gotdecimal.1, %37 ], [ 0, %.preheader15 ]
  %.119 = phi i8* [ %38, %37 ], [ %.1.ph, %.preheader15 ]
  %18 = sext i8 %17 to i32, !dbg !202
  %isdigittmp = add nsw i32 %18, -48, !dbg !206
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !206
  br i1 %isdigit, label %19, label %21, !dbg !209

; <label>:19                                      ; preds = %.lr.ph
  %20 = add nsw i32 %gotreal.023, 1, !dbg !210
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !20, metadata !94), !dbg !180
  br label %37, !dbg !211

; <label>:21                                      ; preds = %.lr.ph
  switch i8 %17, label %29 [
    i8 46, label %22
    i8 101, label %27
    i8 69, label %27
  ], !dbg !212

; <label>:22                                      ; preds = %21
  %23 = or i32 %gotexp.022, %gotdecimal.021, !dbg !213
  %24 = icmp eq i32 %23, 0, !dbg !213
  br i1 %24, label %25, label %.loopexit, !dbg !213

; <label>:25                                      ; preds = %22
  %26 = add nsw i32 %gotdecimal.021, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !18, metadata !94), !dbg !178
  br label %37, !dbg !218

; <label>:27                                      ; preds = %21, %21
  %28 = icmp eq i32 %gotexp.022, 0, !dbg !219
  br i1 %28, label %37, label %.loopexit, !dbg !223

; <label>:29                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !65, metadata !94) #5, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !73, metadata !94) #5, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !74, metadata !94) #5, !dbg !229
  %isascii.i.i413 = icmp sgt i8 %17, -1, !dbg !230
  br i1 %isascii.i.i413, label %30, label %35, !dbg !230

; <label>:30                                      ; preds = %29
  %31 = sext i8 %17 to i64, !dbg !231
  %32 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %31, !dbg !231
  %33 = load i32* %32, align 4, !dbg !231, !tbaa !102
  %34 = and i32 %33, 16384, !dbg !232
  br label %isspace.exit7, !dbg !230

; <label>:35                                      ; preds = %29
  %36 = tail call i32 @__maskrune(i32 %18, i64 16384) #6, !dbg !233
  br label %isspace.exit7, !dbg !230

isspace.exit7:                                    ; preds = %30, %35
  %.sink.i.in.i5 = phi i32 [ %34, %30 ], [ %36, %35 ], !dbg !234
  %.sink.i.i6 = icmp eq i32 %.sink.i.in.i5, 0, !dbg !235
  br i1 %.sink.i.i6, label %37, label %.preheader, !dbg !236

.preheader:                                       ; preds = %isspace.exit7, %37, %.preheader15
  %gotreal.0.lcssa = phi i32 [ 0, %.preheader15 ], [ %gotreal.023, %isspace.exit7 ], [ %gotreal.1, %37 ]
  %.1.lcssa = phi i8* [ %.1.ph, %.preheader15 ], [ %.119, %isspace.exit7 ], [ %38, %37 ]
  br label %41, !dbg !237

; <label>:37                                      ; preds = %27, %isspace.exit7, %25, %19
  %gotdecimal.1 = phi i32 [ %gotdecimal.021, %19 ], [ %26, %25 ], [ %gotdecimal.021, %isspace.exit7 ], [ %gotdecimal.021, %27 ]
  %gotexp.1 = phi i32 [ %gotexp.022, %19 ], [ %gotexp.022, %25 ], [ %gotexp.022, %isspace.exit7 ], [ 1, %27 ]
  %gotreal.1 = phi i32 [ %20, %19 ], [ %gotreal.023, %25 ], [ %gotreal.023, %isspace.exit7 ], [ %gotreal.023, %27 ]
  %38 = getelementptr inbounds i8* %.119, i64 1, !dbg !238
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !17, metadata !94), !dbg !177
  %39 = load i8* %38, align 1, !dbg !202, !tbaa !108
  %40 = icmp eq i8 %39, 0, !dbg !204
  br i1 %40, label %.preheader, label %.lr.ph, !dbg !205

; <label>:41                                      ; preds = %isspace.exit11, %.preheader
  %.2 = phi i8* [ %51, %isspace.exit11 ], [ %.1.lcssa, %.preheader ]
  %42 = load i8* %.2, align 1, !dbg !237, !tbaa !108
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !65, metadata !94) #5, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !73, metadata !94) #5, !dbg !241
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !74, metadata !94) #5, !dbg !243
  %isascii.i.i814 = icmp sgt i8 %42, -1, !dbg !244
  br i1 %isascii.i.i814, label %43, label %48, !dbg !244

; <label>:43                                      ; preds = %41
  %44 = sext i8 %42 to i64, !dbg !245
  %45 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %44, !dbg !245
  %46 = load i32* %45, align 4, !dbg !245, !tbaa !102
  %47 = and i32 %46, 16384, !dbg !246
  br label %isspace.exit11, !dbg !244

; <label>:48                                      ; preds = %41
  %49 = sext i8 %42 to i32, !dbg !247
  %50 = tail call i32 @__maskrune(i32 %49, i64 16384) #6, !dbg !248
  br label %isspace.exit11, !dbg !244

isspace.exit11:                                   ; preds = %43, %48
  %.sink.i.in.i9 = phi i32 [ %47, %43 ], [ %50, %48 ], !dbg !249
  %.sink.i.i10 = icmp eq i32 %.sink.i.in.i9, 0, !dbg !250
  %51 = getelementptr inbounds i8* %.2, i64 1, !dbg !251
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !17, metadata !94), !dbg !177
  br i1 %.sink.i.i10, label %52, label %41, !dbg !252

; <label>:52                                      ; preds = %isspace.exit11
  %53 = load i8* %.2, align 1, !dbg !253, !tbaa !108
  %54 = icmp eq i8 %53, 0, !dbg !255
  %55 = icmp ne i32 %gotreal.0.lcssa, 0, !dbg !256
  %or.cond = and i1 %55, %54, !dbg !257
  %. = zext i1 %or.cond to i32, !dbg !258
  br label %.loopexit, !dbg !258

.loopexit:                                        ; preds = %27, %22, %52, %0
  %.02 = phi i32 [ 0, %0 ], [ %., %52 ], [ 0, %22 ], [ 0, %27 ]
  ret i32 %.02, !dbg !259
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Byteswap(i8* nocapture %swap, i32 %nbytes) #0 {
  tail call void @llvm.dbg.value(metadata i8* %swap, i64 0, metadata !25, metadata !94), !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %nbytes, i64 0, metadata !26, metadata !94), !dbg !261
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !94), !dbg !262
  %1 = icmp sgt i32 %nbytes, 1, !dbg !263
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !266

.lr.ph:                                           ; preds = %0
  %2 = sdiv i32 %nbytes, 2, !dbg !267
  %3 = add i32 %nbytes, -1, !dbg !268
  %4 = sext i32 %2 to i64, !dbg !266
  br label %5, !dbg !266

; <label>:5                                       ; preds = %.lr.ph, %5
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %6 = trunc i64 %indvars.iv to i32, !dbg !270
  %7 = sub i32 %3, %6, !dbg !270
  %8 = sext i32 %7 to i64, !dbg !271
  %9 = getelementptr inbounds i8* %swap, i64 %8, !dbg !271
  %10 = load i8* %9, align 1, !dbg !271, !tbaa !108
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !28, metadata !94), !dbg !272
  %11 = getelementptr inbounds i8* %swap, i64 %indvars.iv, !dbg !273
  %12 = load i8* %11, align 1, !dbg !273, !tbaa !108
  store i8 %12, i8* %9, align 1, !dbg !274, !tbaa !108
  store i8 %10, i8* %11, align 1, !dbg !275, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !266
  %13 = icmp slt i64 %indvars.iv.next, %4, !dbg !263
  br i1 %13, label %5, label %._crit_edge, !dbg !266

._crit_edge:                                      ; preds = %5, %0
  ret void, !dbg !276
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define zeroext i16 @sre_ntoh16(i16 zeroext %netshort) #2 {
  tail call void @llvm.dbg.value(metadata i16 %netshort, i64 0, metadata !36, metadata !94), !dbg !277
  ret i16 %netshort, !dbg !278
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @sre_ntoh32(i32 %netlong) #2 {
  tail call void @llvm.dbg.value(metadata i32 %netlong, i64 0, metadata !43, metadata !94), !dbg !279
  ret i32 %netlong, !dbg !280
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define zeroext i16 @sre_hton16(i16 zeroext %hostshort) #2 {
  tail call void @llvm.dbg.value(metadata i16 %hostshort, i64 0, metadata !46, metadata !94), !dbg !281
  ret i16 %hostshort, !dbg !282
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @sre_hton32(i32 %hostlong) #2 {
  tail call void @llvm.dbg.value(metadata i32 %hostlong, i64 0, metadata !49, metadata !94), !dbg !283
  ret i32 %hostlong, !dbg !284
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i64 @sre_ntoh64(i64 %net_int64) #2 {
  tail call void @llvm.dbg.value(metadata i64 %net_int64, i64 0, metadata !56, metadata !94), !dbg !285
  ret i64 %net_int64, !dbg !286
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i64 @sre_hton64(i64 %host_int64) #2 {
  tail call void @llvm.dbg.value(metadata i64 %host_int64, i64 0, metadata !59, metadata !94), !dbg !287
  ret i64 %host_int64, !dbg !288
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91, !92}
!llvm.ident = !{!93}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/types.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !15, !21, !29, !37, !44, !47, !50, !57, !60, !66, !75, !78, !81, !87}
!7 = !DISubprogram(name: "IsInt", scope: !1, file: !1, line: 31, type: !8, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @IsInt, variables: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!5, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13, !14}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !7, file: !1, line: 31, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hex", scope: !7, file: !1, line: 33, type: !5)
!15 = !DISubprogram(name: "IsReal", scope: !1, file: !1, line: 74, type: !8, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @IsReal, variables: !16)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !15, file: !1, line: 74, type: !10)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gotdecimal", scope: !15, file: !1, line: 76, type: !5)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gotexp", scope: !15, file: !1, line: 77, type: !5)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gotreal", scope: !15, file: !1, line: 78, type: !5)
!21 = !DISubprogram(name: "Byteswap", scope: !1, file: !1, line: 133, type: !22, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @Byteswap, variables: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !10, !5}
!24 = !{!25, !26, !27, !28}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "swap", arg: 1, scope: !21, file: !1, line: 133, type: !10)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 2, scope: !21, file: !1, line: 133, type: !5)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !21, file: !1, line: 135, type: !5)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byte", scope: !21, file: !1, line: 136, type: !11)
!29 = !DISubprogram(name: "sre_ntoh16", scope: !1, file: !1, line: 166, type: !30, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i16)* @sre_ntoh16, variables: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !33, line: 40, baseType: !34)
!33 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!34 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "netshort", arg: 1, scope: !29, file: !1, line: 166, type: !32)
!37 = !DISubprogram(name: "sre_ntoh32", scope: !1, file: !1, line: 176, type: !38, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @sre_ntoh32, variables: !42)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !40}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !33, line: 41, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "netlong", arg: 1, scope: !37, file: !1, line: 176, type: !40)
!44 = !DISubprogram(name: "sre_hton16", scope: !1, file: !1, line: 186, type: !30, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i16)* @sre_hton16, variables: !45)
!45 = !{!46}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hostshort", arg: 1, scope: !44, file: !1, line: 186, type: !32)
!47 = !DISubprogram(name: "sre_hton32", scope: !1, file: !1, line: 196, type: !38, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @sre_hton32, variables: !48)
!48 = !{!49}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hostlong", arg: 1, scope: !47, file: !1, line: 196, type: !40)
!50 = !DISubprogram(name: "sre_ntoh64", scope: !1, file: !1, line: 208, type: !51, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @sre_ntoh64, variables: !55)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !53}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !33, line: 42, baseType: !54)
!54 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!55 = !{!56}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net_int64", arg: 1, scope: !50, file: !1, line: 208, type: !53)
!57 = !DISubprogram(name: "sre_hton64", scope: !1, file: !1, line: 218, type: !51, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @sre_hton64, variables: !58)
!58 = !{!59}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "host_int64", arg: 1, scope: !57, file: !1, line: 218, type: !53)
!60 = !DISubprogram(name: "isspace", scope: !61, file: !61, line: 267, type: !62, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !64)
!61 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DISubroutineType(types: !63)
!63 = !{!5, !5}
!64 = !{!65}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !60, file: !61, line: 267, type: !5)
!66 = !DISubprogram(name: "__istype", scope: !61, file: !61, line: 153, type: !67, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !72)
!67 = !DISubroutineType(types: !68)
!68 = !{!5, !69, !71}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !70, line: 70, baseType: !5)
!70 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!71 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !66, file: !61, line: 153, type: !69)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !66, file: !61, line: 153, type: !71)
!75 = !DISubprogram(name: "isascii", scope: !61, file: !61, line: 135, type: !62, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !76)
!76 = !{!77}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !75, file: !61, line: 135, type: !5)
!78 = !DISubprogram(name: "isdigit", scope: !61, file: !61, line: 237, type: !62, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !79)
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !78, file: !61, line: 237, type: !5)
!81 = !DISubprogram(name: "__isctype", scope: !61, file: !61, line: 164, type: !82, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!69, !69, !71}
!84 = !{!85, !86}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !81, file: !61, line: 164, type: !69)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !81, file: !61, line: 164, type: !71)
!87 = !DISubprogram(name: "isxdigit", scope: !61, file: !61, line: 280, type: !62, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, variables: !88)
!88 = !{!89}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !87, file: !61, line: 280, type: !5)
!90 = !{i32 2, !"Dwarf Version", i32 2}
!91 = !{i32 2, !"Debug Info Version", i32 700000003}
!92 = !{i32 1, !"PIC Level", i32 2}
!93 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!94 = !DIExpression()
!95 = !DILocation(line: 31, column: 13, scope: !7)
!96 = !DILocation(line: 33, column: 7, scope: !7)
!97 = !DILocation(line: 35, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 7)
!99 = !DILocation(line: 35, column: 7, scope: !7)
!100 = !DILocation(line: 35, column: 31, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 35, column: 18)
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !DILocation(line: 35, column: 50, scope: !101)
!107 = !DILocation(line: 38, column: 25, scope: !7)
!108 = !{!104, !104, i64 0}
!109 = !DILocation(line: 267, column: 13, scope: !60, inlinedAt: !110)
!110 = distinct !DILocation(line: 38, column: 10, scope: !7)
!111 = !DILocation(line: 153, column: 29, scope: !66, inlinedAt: !112)
!112 = distinct !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !110)
!113 = !DILocation(line: 153, column: 47, scope: !66, inlinedAt: !112)
!114 = !DILocation(line: 158, column: 10, scope: !66, inlinedAt: !112)
!115 = !DILocation(line: 158, column: 27, scope: !66, inlinedAt: !112)
!116 = !DILocation(line: 158, column: 25, scope: !66, inlinedAt: !112)
!117 = !DILocation(line: 38, column: 18, scope: !7)
!118 = !DILocation(line: 159, column: 7, scope: !66, inlinedAt: !112)
!119 = !DILocation(line: 38, column: 10, scope: !7)
!120 = !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !110)
!121 = !DILocation(line: 38, column: 32, scope: !7)
!122 = !DILocation(line: 38, column: 3, scope: !7)
!123 = !DILocation(line: 40, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !7, file: !1, line: 40, column: 7)
!125 = !DILocation(line: 40, column: 17, scope: !124)
!126 = !DILocation(line: 40, column: 31, scope: !124)
!127 = !DILocation(line: 42, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 7)
!129 = !DILocation(line: 42, column: 28, scope: !128)
!130 = !DILocation(line: 42, column: 33, scope: !128)
!131 = !DILocation(line: 42, column: 42, scope: !128)
!132 = !DILocation(line: 42, column: 36, scope: !128)
!133 = !DILocation(line: 42, column: 52, scope: !128)
!134 = !DILocation(line: 42, column: 57, scope: !128)
!135 = !DILocation(line: 43, column: 8, scope: !128)
!136 = !DILocation(line: 43, column: 28, scope: !128)
!137 = !DILocation(line: 43, column: 33, scope: !128)
!138 = !DILocation(line: 43, column: 42, scope: !128)
!139 = !DILocation(line: 43, column: 36, scope: !128)
!140 = !DILocation(line: 43, column: 52, scope: !128)
!141 = !DILocation(line: 42, column: 7, scope: !7)
!142 = !DILocation(line: 48, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !128, file: !1, line: 48, column: 12)
!144 = !DILocation(line: 48, column: 15, scope: !143)
!145 = !DILocation(line: 48, column: 22, scope: !143)
!146 = !DILocation(line: 48, column: 31, scope: !143)
!147 = !DILocation(line: 48, column: 25, scope: !143)
!148 = !DILocation(line: 48, column: 41, scope: !143)
!149 = !DILocation(line: 49, column: 6, scope: !143)
!150 = !DILocation(line: 48, column: 12, scope: !128)
!151 = !DILocation(line: 52, column: 12, scope: !152)
!152 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 7)
!153 = !DILocation(line: 52, column: 15, scope: !152)
!154 = !DILocation(line: 52, column: 5, scope: !152)
!155 = !DILocation(line: 45, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !128, file: !1, line: 44, column: 5)
!157 = !DILocation(line: 58, column: 12, scope: !152)
!158 = !DILocation(line: 58, column: 15, scope: !152)
!159 = !DILocation(line: 58, column: 5, scope: !152)
!160 = !DILocation(line: 54, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 54, column: 6)
!162 = distinct !DILexicalBlock(scope: !152, file: !1, line: 53, column: 7)
!163 = !DILocation(line: 55, column: 3, scope: !162)
!164 = !DILocation(line: 54, column: 6, scope: !162)
!165 = !DILocation(line: 164, column: 48, scope: !81, inlinedAt: !166)
!166 = distinct !DILocation(line: 282, column: 10, scope: !87, inlinedAt: !167)
!167 = distinct !DILocation(line: 60, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 60, column: 6)
!169 = distinct !DILexicalBlock(scope: !152, file: !1, line: 59, column: 7)
!170 = !DILocation(line: 169, column: 17, scope: !81, inlinedAt: !166)
!171 = !DILocation(line: 170, column: 6, scope: !81, inlinedAt: !166)
!172 = !DILocation(line: 170, column: 3, scope: !81, inlinedAt: !166)
!173 = !DILocation(line: 60, column: 7, scope: !168)
!174 = !DILocation(line: 61, column: 3, scope: !169)
!175 = !DILocation(line: 60, column: 6, scope: !169)
!176 = !DILocation(line: 65, column: 1, scope: !7)
!177 = !DILocation(line: 74, column: 14, scope: !15)
!178 = !DILocation(line: 76, column: 7, scope: !15)
!179 = !DILocation(line: 77, column: 7, scope: !15)
!180 = !DILocation(line: 78, column: 7, scope: !15)
!181 = !DILocation(line: 80, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !15, file: !1, line: 80, column: 7)
!183 = !DILocation(line: 80, column: 7, scope: !15)
!184 = !DILocation(line: 82, column: 25, scope: !15)
!185 = !DILocation(line: 267, column: 13, scope: !60, inlinedAt: !186)
!186 = distinct !DILocation(line: 82, column: 10, scope: !15)
!187 = !DILocation(line: 153, column: 29, scope: !66, inlinedAt: !188)
!188 = distinct !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !186)
!189 = !DILocation(line: 153, column: 47, scope: !66, inlinedAt: !188)
!190 = !DILocation(line: 158, column: 10, scope: !66, inlinedAt: !188)
!191 = !DILocation(line: 158, column: 27, scope: !66, inlinedAt: !188)
!192 = !DILocation(line: 158, column: 25, scope: !66, inlinedAt: !188)
!193 = !DILocation(line: 82, column: 18, scope: !15)
!194 = !DILocation(line: 159, column: 7, scope: !66, inlinedAt: !188)
!195 = !DILocation(line: 82, column: 10, scope: !15)
!196 = !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !186)
!197 = !DILocation(line: 82, column: 32, scope: !15)
!198 = !DILocation(line: 82, column: 3, scope: !15)
!199 = !DILocation(line: 83, column: 7, scope: !200)
!200 = distinct !DILexicalBlock(scope: !15, file: !1, line: 83, column: 7)
!201 = !DILocation(line: 83, column: 17, scope: !200)
!202 = !DILocation(line: 89, column: 10, scope: !15)
!203 = !DILocation(line: 83, column: 31, scope: !200)
!204 = !DILocation(line: 89, column: 13, scope: !15)
!205 = !DILocation(line: 89, column: 3, scope: !15)
!206 = !DILocation(line: 91, column: 11, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 91, column: 11)
!208 = distinct !DILexicalBlock(scope: !15, file: !1, line: 90, column: 5)
!209 = !DILocation(line: 91, column: 11, scope: !208)
!210 = !DILocation(line: 92, column: 9, scope: !207)
!211 = !DILocation(line: 92, column: 2, scope: !207)
!212 = !DILocation(line: 93, column: 16, scope: !207)
!213 = !DILocation(line: 95, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 94, column: 2)
!215 = distinct !DILexicalBlock(scope: !207, file: !1, line: 93, column: 16)
!216 = !DILocation(line: 97, column: 19, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 96, column: 8)
!218 = !DILocation(line: 98, column: 2, scope: !214)
!219 = !DILocation(line: 101, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 101, column: 8)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 100, column: 2)
!222 = distinct !DILexicalBlock(scope: !215, file: !1, line: 99, column: 16)
!223 = !DILocation(line: 101, column: 8, scope: !221)
!224 = !DILocation(line: 267, column: 13, scope: !60, inlinedAt: !225)
!225 = distinct !DILocation(line: 104, column: 16, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 104, column: 16)
!227 = !DILocation(line: 153, column: 29, scope: !66, inlinedAt: !228)
!228 = distinct !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !225)
!229 = !DILocation(line: 153, column: 47, scope: !66, inlinedAt: !228)
!230 = !DILocation(line: 158, column: 10, scope: !66, inlinedAt: !228)
!231 = !DILocation(line: 158, column: 27, scope: !66, inlinedAt: !228)
!232 = !DILocation(line: 158, column: 25, scope: !66, inlinedAt: !228)
!233 = !DILocation(line: 159, column: 7, scope: !66, inlinedAt: !228)
!234 = !DILocation(line: 104, column: 16, scope: !226)
!235 = !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !225)
!236 = !DILocation(line: 104, column: 16, scope: !222)
!237 = !DILocation(line: 110, column: 25, scope: !15)
!238 = !DILocation(line: 107, column: 8, scope: !208)
!239 = !DILocation(line: 267, column: 13, scope: !60, inlinedAt: !240)
!240 = distinct !DILocation(line: 110, column: 10, scope: !15)
!241 = !DILocation(line: 153, column: 29, scope: !66, inlinedAt: !242)
!242 = distinct !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !240)
!243 = !DILocation(line: 153, column: 47, scope: !66, inlinedAt: !242)
!244 = !DILocation(line: 158, column: 10, scope: !66, inlinedAt: !242)
!245 = !DILocation(line: 158, column: 27, scope: !66, inlinedAt: !242)
!246 = !DILocation(line: 158, column: 25, scope: !66, inlinedAt: !242)
!247 = !DILocation(line: 110, column: 18, scope: !15)
!248 = !DILocation(line: 159, column: 7, scope: !66, inlinedAt: !242)
!249 = !DILocation(line: 110, column: 10, scope: !15)
!250 = !DILocation(line: 269, column: 10, scope: !60, inlinedAt: !240)
!251 = !DILocation(line: 110, column: 32, scope: !15)
!252 = !DILocation(line: 110, column: 3, scope: !15)
!253 = !DILocation(line: 111, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !15, file: !1, line: 111, column: 7)
!255 = !DILocation(line: 111, column: 10, scope: !254)
!256 = !DILocation(line: 111, column: 21, scope: !254)
!257 = !DILocation(line: 111, column: 18, scope: !254)
!258 = !DILocation(line: 111, column: 30, scope: !254)
!259 = !DILocation(line: 113, column: 1, scope: !15)
!260 = !DILocation(line: 133, column: 16, scope: !21)
!261 = !DILocation(line: 133, column: 26, scope: !21)
!262 = !DILocation(line: 135, column: 8, scope: !21)
!263 = !DILocation(line: 138, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 138, column: 3)
!265 = distinct !DILexicalBlock(scope: !21, file: !1, line: 138, column: 3)
!266 = !DILocation(line: 138, column: 3, scope: !265)
!267 = !DILocation(line: 138, column: 26, scope: !264)
!268 = !DILocation(line: 140, column: 26, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !1, line: 139, column: 5)
!270 = !DILocation(line: 140, column: 30, scope: !269)
!271 = !DILocation(line: 140, column: 14, scope: !269)
!272 = !DILocation(line: 136, column: 8, scope: !21)
!273 = !DILocation(line: 141, column: 30, scope: !269)
!274 = !DILocation(line: 141, column: 28, scope: !269)
!275 = !DILocation(line: 142, column: 15, scope: !269)
!276 = !DILocation(line: 144, column: 1, scope: !21)
!277 = !DILocation(line: 166, column: 23, scope: !29)
!278 = !DILocation(line: 169, column: 3, scope: !29)
!279 = !DILocation(line: 176, column: 23, scope: !37)
!280 = !DILocation(line: 179, column: 3, scope: !37)
!281 = !DILocation(line: 186, column: 23, scope: !44)
!282 = !DILocation(line: 189, column: 3, scope: !44)
!283 = !DILocation(line: 196, column: 23, scope: !47)
!284 = !DILocation(line: 199, column: 3, scope: !47)
!285 = !DILocation(line: 208, column: 23, scope: !50)
!286 = !DILocation(line: 211, column: 3, scope: !50)
!287 = !DILocation(line: 218, column: 23, scope: !57)
!288 = !DILocation(line: 221, column: 3, scope: !57)
